/*
 * PRU Ethernet Driver
 *
 * Copyright (C) 2018 Texas Instruments Incorporated - http://www.ti.com
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License version 2 as
 * published by the Free Software Foundation.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 */

#include <linux/debugfs.h>
#include <linux/etherdevice.h>
#include "prueth_node_tbl.h"
#include "hsr_prp_firmware.h"

#if IS_ENABLED(CONFIG_DEBUG_FS)
/* prueth_queue_stats_show - Formats and print prueth queue stats
 */
static int
prueth_queue_stats_show(struct seq_file *sfp, void *data)
{
	struct prueth_emac *emac = (struct prueth_emac *)sfp->private;

	seq_printf(sfp,
		   "   TxQ-0    TxQ-1    TxQ-2    TxQ-3    ");
	if (emac->port_id == PRUETH_PORT_MII0)
		seq_printf(sfp,
			   "RxQ-0    RxQ-1\n");
	else
		seq_printf(sfp,
			   "RxQ-2    RxQ-3\n");
	seq_printf(sfp,
		   "=====================================================\n");

	seq_printf(sfp, "%8d %8d %8d %8d %8d %8d\n",
		   emac->tx_packet_counts[PRUETH_QUEUE1],
		   emac->tx_packet_counts[PRUETH_QUEUE2],
		   emac->tx_packet_counts[PRUETH_QUEUE3],
		   emac->tx_packet_counts[PRUETH_QUEUE4],
		   emac->rx_packet_counts[PRUETH_QUEUE1],
		   emac->rx_packet_counts[PRUETH_QUEUE2]);

	return 0;
}

/* prueth_queue_stats_fops - Open the prueth queue stats file
 *
 * Description:
 * This routine opens a debugfs file for prueth queue stats
 */
static int
prueth_queue_stats_open(struct inode *inode, struct file *filp)
{
	return single_open(filp, prueth_queue_stats_show,
			   inode->i_private);
}

static const struct file_operations prueth_emac_stats_fops = {
	.owner	= THIS_MODULE,
	.open	= prueth_queue_stats_open,
	.read	= seq_read,
	.llseek = seq_lseek,
	.release = single_release,
};

/* prueth_prp_emac_mode_write - write the user provided value to
 * prp emac_mode debugfs file
 */
static ssize_t
prueth_prp_emac_mode_write(struct file *file, const char __user *user_buf,
			   size_t count, loff_t *ppos)
{
	struct prueth_emac *emac =
			((struct seq_file *)(file->private_data))->private;
	unsigned long emac_mode;
	int err;

	err = kstrtoul_from_user(user_buf, count, 0, &emac_mode);
	if (err)
		return err;

	if (emac_mode > PRUETH_TX_PRP_EMAC_MODE)
		return -EINVAL;

	emac->prp_emac_mode = emac_mode;

	return count;
}

/* prueth_prp_emac_mode_show - print the current emac mode flag
 * in firmware. Applicable only for PRP device.
 */
static int
prueth_prp_emac_mode_show(struct seq_file *sfp, void *data)
{
	struct prueth_emac *emac = (struct prueth_emac *)sfp->private;

	seq_printf(sfp, "%u\n", emac->prp_emac_mode);

	return 0;
}

/* prueth_prp_emac_mode_open:- Open the PRP emac mode file
 *
 * Description:
 * This routine opens a debugfs file.prp_emac_mode file to
 * configure PRP firmware in emac mode. This is used when PTP
 * SAN is to be configured. User set the mode to 1 to indicate
 * EMAC mode
 */
static int
prueth_prp_emac_mode_open(struct inode *inode, struct file *filp)
{
	return single_open(filp, prueth_prp_emac_mode_show,
			   inode->i_private);
}

static const struct file_operations prueth_prp_emac_mode_fops = {
	.owner	= THIS_MODULE,
	.open	= prueth_prp_emac_mode_open,
	.read	= seq_read,
	.write	= prueth_prp_emac_mode_write,
	.llseek = seq_lseek,
	.release = single_release,
};

/* prueth_debugfs_init - create  debugfs file for displaying queue stats
 *
 * Description:
 * When debugfs is configured this routine dump the rx_packet_counts and
 * tx_packet_counts in the emac structures
 */

int prueth_debugfs_init(struct prueth_emac *emac)
{
	int rc = -1;
	struct dentry *de;
	char name[32];

	memset(name, 0, sizeof(name));
	sprintf(name, "prueth-");
	strncat(name, emac->ndev->name, sizeof(name) - 1);
	de = debugfs_create_dir(name, NULL);

	if (!de) {
		netdev_err(emac->ndev,
			   "Cannot create debugfs dir name %s\n",
			   name);
		return rc;
	}

	emac->root_dir = de;
	de = debugfs_create_file("stats", S_IFREG | 0444,
				 emac->root_dir, emac,
				 &prueth_emac_stats_fops);
	if (!de) {
		netdev_err(emac->ndev, "Cannot create emac stats file\n");
		return rc;
	}

	emac->stats_file = de;

	if (PRUETH_HAS_PRP(emac->prueth)) {
		de = debugfs_create_file("prp_emac_mode", 0644,
					 emac->root_dir, emac,
					 &prueth_prp_emac_mode_fops);

		if (!de) {
			netdev_err(emac->ndev,
				   "Cannot create prp emac mode file\n");
			return rc;
		}
		emac->prp_emac_mode_file = de;
	}

	return 0;
}

static void prueth_hsr_prp_node_show(struct seq_file *sfp,
				     struct prueth *prueth, int index)
{
	struct node_tbl *nt = prueth->nt;
	struct bin_tbl_t *bin = &nt->bin_tbl[index];
	struct node_tbl_t *node;
	u8 val, is_hsr;

	BUG_ON(bin->node_tbl_offset >= NODE_TBL_MAX_ENTRIES);

	node = &nt->node_tbl[bin->node_tbl_offset];

	seq_printf(sfp, "\nNode[%u]:\n", index);
	seq_printf(sfp, "MAC ADDR: %02x:%02x:%02x:%02x:%02x:%02x\n",
		   bin->src_mac_id[3], bin->src_mac_id[2],
		   bin->src_mac_id[1], bin->src_mac_id[0],
		   bin->src_mac_id[5], bin->src_mac_id[4]);
	seq_printf(sfp, "state: %s\n",
		   ((node->entry_state & 0x1) ? "valid" : "invalid"));

	if (PRUETH_HAS_PRP(prueth)) {
		val = (node->status & NT_REM_NODE_DUP_MASK);
		switch (val) {
		case NT_REM_NODE_DUP_DISCARD:
			seq_printf(sfp, "DupDiscard (0x%02x)\n", val);
			break;
		case NT_REM_NODE_DUP_ACCEPT:
			seq_printf(sfp, "DupAccept (0x%02x)\n", val);
			break;
		default:
			seq_printf(sfp, "Unknown Dup type (0x%02x)\n", val);
			break;
		}
	}

	is_hsr = node->status & NT_REM_NODE_HSR_BIT;
	val = (node->status & NT_REM_NODE_TYPE_MASK) >> NT_REM_NODE_TYPE_SHIFT;
	switch (val) {
	case NT_REM_NODE_TYPE_SANA:
		seq_puts(sfp, "SAN A\n");
		break;
	case NT_REM_NODE_TYPE_SANB:
		seq_puts(sfp, "SAN B\n");
		break;
	case NT_REM_NODE_TYPE_SANAB:
		seq_puts(sfp, "SAN AB\n");
		break;
	case NT_REM_NODE_TYPE_DAN:
		if (is_hsr)
			seq_puts(sfp, "DANH\n");
		else
			seq_puts(sfp, "DANP\n");
		break;
	case NT_REM_NODE_TYPE_REDBOX:
		if (is_hsr)
			seq_puts(sfp, "REDBOXH\n");
		else
			seq_puts(sfp, "REDBOXP\n");
		break;
	case NT_REM_NODE_TYPE_VDAN:
		if (is_hsr)
			seq_puts(sfp, "VDANH\n");
		else
			seq_puts(sfp, "VDANP\n");
		break;
	default:
		seq_printf(sfp, "unknown node type %u\n", val);
		break;
	}

	seq_printf(sfp, "RxA=%u SupRxA=%u\n", node->cnt_ra, node->cnt_rx_sup_a);
	seq_printf(sfp, "RxB=%u SupRxB=%u\n", node->cnt_rb, node->cnt_rx_sup_b);

	seq_printf(sfp, "Time Last Seen: Sup=%u RxA=%u RxB=%u\n",
		   node->time_last_seen_s, node->time_last_seen_a,
		   node->time_last_seen_b);

	if (prueth->eth_type == PRUSS_ETHTYPE_PRP)
		seq_printf(sfp, "PRP LineID Err: A=%u B=%u\n",
			   node->err_wla, node->err_wlb);
}

/* prueth_hsr_prp_node_table_show - Formats and prints node_table entries
 */
static int
prueth_hsr_prp_node_table_show(struct seq_file *sfp, void *data)
{
	struct prueth *prueth = (struct prueth *)sfp->private;
	struct node_tbl *nt = prueth->nt;
	int j;
	u32 nodes;

	nodes = nt->lre_cnt;
	seq_printf(sfp, "\nRemote nodes in network: %u\n", nt->lre_cnt);

	for (j = 0; j < BIN_TBL_MAX_ENTRIES; j++) {
		if (nt->bin_tbl[j].node_tbl_offset < NODE_TBL_MAX_ENTRIES)
			prueth_hsr_prp_node_show(sfp, prueth, j);
	}

	seq_puts(sfp, "\n");
	return 0;
}

/* prueth_hsr_prp_node_table_open - Open the node_table file
 *
 * Description:
 * This routine opens a debugfs file node_table of specific hsr
 * or prp device
 */
static int
prueth_hsr_prp_node_table_open(struct inode *inode, struct file *filp)
{
	return single_open(filp, prueth_hsr_prp_node_table_show,
			   inode->i_private);
}

static const struct file_operations prueth_hsr_prp_node_table_fops = {
	.owner	= THIS_MODULE,
	.open	= prueth_hsr_prp_node_table_open,
	.read	= seq_read,
	.llseek = seq_lseek,
	.release = single_release,
};

/* prueth_hsr_prp_vlan_filter_show - Formats and prints vlan_filter entries
 */
static int
prueth_hsr_prp_vlan_filter_show(struct seq_file *sfp, void *data)
{
	struct prueth *prueth = (struct prueth *)sfp->private;
	void __iomem *sram = prueth->mem[PRUETH_MEM_SHARED_RAM].va;
	u8 val, mask;
	int i, j;

	val = readb(sram + VLAN_FLTR_CTRL_BYTE);
	seq_printf(sfp, "VLAN Filter : %s",
		   val & BIT(VLAN_FLTR_CTRL_SHIFT) ?
			 "enabled\n" : "disabled\n");
	if (val) {
		for (i = 0; i < VLAN_FLTR_TBL_SIZE; i++) {
			val = readb(sram + VLAN_FLTR_TBL_BASE_ADDR + i);
			if (!(i % 8))
				seq_printf(sfp, "\n%5d: ", i * 8);

			for (j = 0; j < 8; j++) {
				mask = BIT(j);
				if (mask & val)
					seq_printf(sfp, "%1x", 1);
				else
					seq_printf(sfp, "%1x", 0);
			}
		}
	}
	seq_puts(sfp, "\n");

	return 0;
}

/* prueth_hsr_prp_vlan_filter_open - Open the vlan_filter file
 *
 * Description:
 * This routine opens a debugfs file vlan_filter of specific hsr
 * or prp device
 */
static int
prueth_hsr_prp_vlan_filter_open(struct inode *inode, struct file *filp)
{
	return single_open(filp, prueth_hsr_prp_vlan_filter_show,
			   inode->i_private);
}

static const struct file_operations prueth_hsr_prp_vlan_filter_fops = {
	.owner	= THIS_MODULE,
	.open	= prueth_hsr_prp_vlan_filter_open,
	.read	= seq_read,
	.llseek = seq_lseek,
	.release = single_release,
};

/* prueth_hsr_prp_mc_filter_show - Formats and prints mc_filter entries
 */
static int
prueth_hsr_prp_mc_filter_show(struct seq_file *sfp, void *data)
{
	struct prueth *prueth = (struct prueth *)sfp->private;
	void __iomem *dram1 = prueth->mem[PRUETH_MEM_DRAM1].va;
	u8 val;
	int i;

	val = readb(dram1 + M_MULTICAST_TABLE_SEARCH_OP_CONTROL_BIT);

	seq_printf(sfp, "MC Filter : %s", val ? "enabled\n" : "disabled\n");
	seq_puts(sfp, "MC Mask : ");
	for (i = 0; i < 6; i++) {
		val = readb(dram1 + MULTICAST_FILTER_MASK + i);
		if (i == 5)
			seq_printf(sfp, "%x", val);
		else
			seq_printf(sfp, "%x:", val);
	}
	seq_puts(sfp, "\n");

	val = readb(dram1 + M_MULTICAST_TABLE_SEARCH_OP_CONTROL_BIT);
	seq_puts(sfp, "MC Filter table below 1 - Allowed, 0 - Dropped\n");

	if (val) {
		for (i = 0; i < MULTICAST_TABLE_SIZE; i++) {
			val = readb(dram1 + MULTICAST_FILTER_TABLE + i);
			if (!(i % 16))
				seq_printf(sfp, "\n%3x: ", i);
			seq_printf(sfp, "%d ", val);
		}
	}
	seq_puts(sfp, "\n");

	return 0;
}

/* prueth_hsr_prp_mc_filter_open - Open the mc_filter file
 *
 * Description:
 * This routine opens a debugfs file mc_filter of specific hsr
 * or prp device
 */
static int
prueth_hsr_prp_mc_filter_open(struct inode *inode, struct file *filp)
{
	return single_open(filp, prueth_hsr_prp_mc_filter_show,
			   inode->i_private);
}

static const struct file_operations prueth_hsr_prp_mc_filter_fops = {
	.owner	= THIS_MODULE,
	.open	= prueth_hsr_prp_mc_filter_open,
	.read	= seq_read,
	.llseek = seq_lseek,
	.release = single_release,
};

/* prueth_hsr_prp_nt_clear_write - write the user provided value to
 * node_table_clear debugfs file
 */
static ssize_t
prueth_hsr_prp_nt_clear_write(struct file *file, const char __user *user_buf,
			      size_t count, loff_t *ppos)
{
	struct prueth *prueth =
		((struct seq_file *)(file->private_data))->private;
	unsigned long clear;
	int err;

	err = kstrtoul_from_user(user_buf, count, 0, &clear);
	if (err)
		return err;

	if (clear)
		prueth->node_table_clear = 1;
	else
		prueth->node_table_clear = 0;

	return count;
}

/* prueth_hsr_prp_nt_clear_show - print the value of node_table_clear
 * debugfs file
 */
static int
prueth_hsr_prp_nt_clear_show(struct seq_file *sfp, void *data)
{
	struct prueth *prueth = (struct prueth *)sfp->private;
	void __iomem *dram1 = prueth->mem[PRUETH_MEM_DRAM1].va;
	u32 check = readl(dram1 + HOST_TIMER_CHECK_FLAGS);

	seq_printf(sfp, "%lu\n",
		   check & HOST_TIMER_NODE_TABLE_CLEAR_BIT);

	return 0;
}

/* prueth_hsr_prp_nt_clear_open - Open the node_table clear debugfs file
 *
 * Description:
 * This routine opens a debugfs file node_table of specific hsr
 * or prp device
 */
static int
prueth_hsr_prp_nt_clear_open(struct inode *inode, struct file *filp)
{
	return single_open(filp, prueth_hsr_prp_nt_clear_show,
			   inode->i_private);
}

static const struct file_operations prueth_hsr_prp_nt_clear_fops = {
	.owner	= THIS_MODULE,
	.open	= prueth_hsr_prp_nt_clear_open,
	.read	= seq_read,
	.write	= prueth_hsr_prp_nt_clear_write,
	.llseek = seq_lseek,
	.release = single_release,
};

/* prueth_hsr_mode_show - print the value of hsr_mode debugfs file
 * for hsr device
 */
static int
prueth_hsr_mode_show(struct seq_file *sfp, void *data)
{
	struct prueth *prueth = (struct prueth *)sfp->private;
	void __iomem *dram0 = prueth->mem[PRUETH_MEM_DRAM0].va;
	u32 mode = readl(dram0 + LRE_HSR_MODE);

	seq_printf(sfp, "%u\n", mode);

	return 0;
}

/* prueth_hsr_mode_write - write the user provided value to
 * hsr_mode debugfs file
 */
static ssize_t
prueth_hsr_mode_write(struct file *file, const char __user *user_buf,
		      size_t count, loff_t *ppos)
{
	struct prueth *prueth =
			((struct seq_file *)(file->private_data))->private;
	void __iomem *dram0 = prueth->mem[PRUETH_MEM_DRAM0].va;
	unsigned long mode;
	int err;

	err = kstrtoul_from_user(user_buf, count, 0, &mode);
	if (err)
		return err;

	if ((mode < MODEH) || (mode > MODEM))
		return -EINVAL;

	prueth->hsr_mode = mode;
	writel(mode, dram0 + LRE_HSR_MODE);

	return count;
}

/* prueth_hsr_mode_open - Open the prueth_hsr_mode_open debugfs file
 *
 * Description:
 * This routine opens a debugfs file hsr_mode for hsr device
 */
static int
prueth_hsr_mode_open(struct inode *inode, struct file *filp)
{
	return single_open(filp, prueth_hsr_mode_show,
			   inode->i_private);
}

static const struct file_operations prueth_hsr_mode_fops = {
	.owner	= THIS_MODULE,
	.open	= prueth_hsr_mode_open,
	.read	= seq_read,
	.write	= prueth_hsr_mode_write,
	.llseek = seq_lseek,
	.release = single_release,
};

/* prueth_hsr_prp_dlrmt_write - write the user provided value to
 * dup_list_reside_max_time debugfs file
 */
static ssize_t
prueth_hsr_prp_dlrmt_write(struct file *file, const char __user *user_buf,
			   size_t count, loff_t *ppos)
{
	struct prueth *prueth =
			((struct seq_file *)(file->private_data))->private;
	void __iomem *dram1 = prueth->mem[PRUETH_MEM_DRAM1].va;
	unsigned int forget_time;
	int err;

	err = kstrtouint_from_user(user_buf, count, 0, &forget_time);
	if (err)
		return err;

	/* input time is in msec. Firmware expects in unit of 10 msec */
	forget_time /= 10;
	writel(forget_time, dram1 + DUPLI_FORGET_TIME);

	return count;
}

/* prueth_hsr_prp_nt_clear_show - Formats and prints node_table entries
 */
static int
prueth_hsr_prp_dlrmt_show(struct seq_file *sfp, void *data)
{
	struct prueth *prueth = (struct prueth *)sfp->private;
	void __iomem *dram1 = prueth->mem[PRUETH_MEM_DRAM1].va;
	u32 forget_time = readl(dram1 + DUPLI_FORGET_TIME);

	/* input time is in msec. Firmware expects in unit of 10 msec */
	forget_time *= 10;
	seq_printf(sfp, "%u\n", forget_time);

	return 0;
}

/* prueth_hsr_prp_nt_clear_open - Open the node_table clear file
 *
 * Description:
 * This routine opens a debugfs file node_table of specific hsr
 * or prp device
 */
static int
prueth_hsr_prp_dlrmt_open(struct inode *inode, struct file *filp)
{
	return single_open(filp, prueth_hsr_prp_dlrmt_show,
			   inode->i_private);
}

static const struct file_operations prueth_hsr_prp_dlrmt_fops = {
	.owner	= THIS_MODULE,
	.open	= prueth_hsr_prp_dlrmt_open,
	.read	= seq_read,
	.write	= prueth_hsr_prp_dlrmt_write,
	.llseek = seq_lseek,
	.release = single_release,
};

/* prueth_hsr_prp_dd_write - write the user provided value to
 * duplicate_discard debugfs file
 */
static ssize_t
prueth_hsr_prp_dd_write(struct file *file, const char __user *user_buf,
			size_t count, loff_t *ppos)
{
	struct prueth *prueth =
			((struct seq_file *)(file->private_data))->private;
	void __iomem *sram = prueth->mem[PRUETH_MEM_SHARED_RAM].va;
	unsigned long dd;
	int err;

	err = kstrtoul_from_user(user_buf, count, 0, &dd);
	if (err)
		return err;

	if ((dd != IEC62439_CONST_DUPLICATE_DISCARD) &&
	    (dd != IEC62439_CONST_DUPLICATE_ACCEPT))
		return -EINVAL;

	writel(dd, sram + LRE_DUPLICATE_DISCARD);

	return count;
}

/* prueth_hsr_prp_dd_show - prints duplicate_discard debugfs file value
 */
static int
prueth_hsr_prp_dd_show(struct seq_file *sfp, void *data)
{
	struct prueth *prueth = (struct prueth *)sfp->private;
	void __iomem *sram = prueth->mem[PRUETH_MEM_SHARED_RAM].va;
	u32 dd = readl(sram + LRE_DUPLICATE_DISCARD);

	seq_printf(sfp, "%u\n", dd);

	return 0;
}

/* prueth_hsr_prp_dd_open - Open the duplicate_discard debugfs file
 *
 * Description:
 * This routine opens a debugfs file duplicate_discard for hsr or
 * prp device
 */
static int
prueth_hsr_prp_dd_open(struct inode *inode, struct file *filp)
{
	return single_open(filp, prueth_hsr_prp_dd_show,
			   inode->i_private);
}

static const struct file_operations prueth_hsr_prp_dd_fops = {
	.owner	= THIS_MODULE,
	.open	= prueth_hsr_prp_dd_open,
	.read	= seq_read,
	.write	= prueth_hsr_prp_dd_write,
	.llseek = seq_lseek,
	.release = single_release,
};

/* prueth_prp_tr_write - write the user provided value to
 * transparent_reception debugfs file
 */
static ssize_t
prueth_prp_tr_write(struct file *file, const char __user *user_buf,
		    size_t count, loff_t *ppos)
{
	struct prueth *prueth =
			((struct seq_file *)(file->private_data))->private;
	void __iomem *sram = prueth->mem[PRUETH_MEM_SHARED_RAM].va;
	unsigned long tr;
	int err;

	err = kstrtoul_from_user(user_buf, count, 0, &tr);
	if (err)
		return err;

	if ((tr != IEC62439_CONST_TRANSPARENT_RECEPTION_REMOVE_RCT) &&
	    (tr != IEC62439_CONST_TRANSPARENT_RECEPTION_PASS_RCT))
		return -EINVAL;

	writel(tr, sram + LRE_TRANSPARENT_RECEPTION);

	return count;
}

/* prueth_prp_tr_show - print the current transparent_reception
 * file value for prp device.
 */
static int
prueth_prp_tr_show(struct seq_file *sfp, void *data)
{
	struct prueth *prueth = (struct prueth *)sfp->private;
	void __iomem *sram = prueth->mem[PRUETH_MEM_SHARED_RAM].va;
	u32 tr = readl(sram + LRE_TRANSPARENT_RECEPTION);

	seq_printf(sfp, "%u\n", tr);

	return 0;
}

/* prueth_prp_tr_open:- Open the transparent reception file
 *
 * Description:
 * This routine opens a debugfs file. transparent_reception
 * for prp device
 */
static int
prueth_prp_tr_open(struct inode *inode, struct file *filp)
{
	return single_open(filp, prueth_prp_tr_show,
			   inode->i_private);
}

static const struct file_operations prueth_prp_tr_fops = {
	.owner	= THIS_MODULE,
	.open	= prueth_prp_tr_open,
	.read	= seq_read,
	.write	= prueth_prp_tr_write,
	.llseek = seq_lseek,
	.release = single_release,
};

/* prueth_error_stats_show - print the error stats
 */
static int
prueth_error_stats_show(struct seq_file *sfp, void *data)
{
	struct prueth *prueth = (struct prueth *)sfp->private;

	seq_printf(sfp, "tx_collisions: %u\n",
		   prueth->emac[PRUETH_PORT_MII0]->tx_collisions);
	seq_printf(sfp, "tx_collision_drops: %u\n",
		   prueth->emac[PRUETH_PORT_MII0]->tx_collision_drops);
	seq_printf(sfp, "rx_overflows: %u\n",
		   prueth->emac[PRUETH_PORT_MII0]->rx_overflows);

	return 0;
}

/* prueth_prp_erro_stats_open:- Open the error stats file
 *
 * Description:
 * This routine opens a debugfs file error_stats
 */
static int
prueth_error_stats_open(struct inode *inode, struct file *filp)
{
	return single_open(filp, prueth_error_stats_show,
			   inode->i_private);
}

static const struct file_operations prueth_error_stats_fops = {
	.owner	= THIS_MODULE,
	.open	= prueth_error_stats_open,
	.read	= seq_read,
	.llseek = seq_lseek,
	.release = single_release,
};

/* prueth_hsr_prp_debugfs_init - create hsr-prp node_table file for dumping
 * the node table
 *
 * Description:
 * When debugfs is configured this routine sets up the node_table file per
 * hsr/prp device for dumping the node_table entries
 */
int prueth_hsr_prp_debugfs_init(struct prueth *prueth)
{
	struct device *dev = prueth->dev;
	int rc = -1;
	struct dentry *de = NULL;
	int id = prueth->pruss_id;
	char dir[32];

	memset(dir, 0, sizeof(dir));
	if (prueth->fw_data->driver_data == PRUSS_AM57XX)
		id -= 1;

	if (PRUETH_HAS_HSR(prueth)) {
		if (id == 1)
			sprintf(dir, "prueth-hsr");
		else
			sprintf(dir, "prueth-hsr%d", id);
	} else if (PRUETH_HAS_PRP(prueth)) {
		if (id == 1)
			sprintf(dir, "prueth-prp");
		else
			sprintf(dir, "prueth-prp%d", id);
	} else {
		dev_err(dev, "unknown eth_type: %u\n", prueth->eth_type);
		return -EINVAL;
	}

	de = debugfs_create_dir(dir, NULL);
	if (!de) {
		dev_err(dev, "Cannot create %s debugfs root\n", dir);
		return rc;
	}

	prueth->root_dir = de;

	de = debugfs_create_file("node_table", S_IFREG | 0444,
				 prueth->root_dir, prueth,
				 &prueth_hsr_prp_node_table_fops);
	if (!de) {
		dev_err(dev, "Cannot create hsr-prp node_table file\n");
		return rc;
	}
	prueth->node_tbl_file = de;

	de = debugfs_create_file("mc_filter", S_IFREG | 0444,
				 prueth->root_dir, prueth,
				 &prueth_hsr_prp_mc_filter_fops);
	if (!de) {
		dev_err(dev, "Cannot create hsr-prp mc_filter file\n");
		return rc;
	}
	prueth->mc_filter_file = de;

	de = debugfs_create_file("vlan_filter", S_IFREG | 0444,
				 prueth->root_dir, prueth,
				 &prueth_hsr_prp_vlan_filter_fops);
	if (!de) {
		dev_err(dev, "Cannot create hsr-prp vlan_filter file\n");
		return rc;
	}
	prueth->vlan_filter_file = de;

	de = debugfs_create_file("node_table_clear", 0644,
				 prueth->root_dir, prueth,
				 &prueth_hsr_prp_nt_clear_fops);
	if (!de) {
		dev_err(dev, "Cannot create hsr-prp node table clear file\n");
		return rc;
	}
	prueth->nt_clear_file = de;

	if (PRUETH_HAS_HSR(prueth)) {
		de = debugfs_create_file("hsr_mode", 0644,
					 prueth->root_dir, prueth,
					 &prueth_hsr_mode_fops);
		if (!de) {
			dev_err(dev, "Cannot create hsr mode file\n");
			return rc;
		}
		prueth->hsr_mode_file = de;
	}

	de = debugfs_create_file("dup_list_reside_max_time", 0644,
				 prueth->root_dir, prueth,
				 &prueth_hsr_prp_dlrmt_fops);
	if (!de) {
		dev_err(dev, "Cannot create dup_list_reside_max_time file\n");
		return rc;
	}
	prueth->dlrmt_file = de;

	de = debugfs_create_file("duplicate_discard", 0644,
				 prueth->root_dir, prueth,
				 &prueth_hsr_prp_dd_fops);
	if (!de) {
		dev_err(dev, "Cannot create duplicate_discard file\n");
		return rc;
	}
	prueth->dd_file = de;

	if (PRUETH_HAS_PRP(prueth)) {
		de = debugfs_create_file("transparent_reception", 0644,
					 prueth->root_dir, prueth,
					 &prueth_prp_tr_fops);

		if (!de) {
			dev_err(dev, "Cannot create duplicate_discard file\n");
			return rc;
		}
		prueth->tr_file = de;
	}
	de = debugfs_create_file("error_stats", 0644,
				 prueth->root_dir, prueth,
				 &prueth_error_stats_fops);
	if (!de) {
		dev_err(dev, "Cannot create error_stats file\n");
		return rc;
	}
	prueth->error_stats_file = de;

	de = debugfs_create_file("nt_index", S_IFREG | 0444,
				 prueth->root_dir, prueth->nt,
				 &prueth_nt_index_fops);
	if (!de) {
		dev_err(dev, "Cannot create nt_index file\n");
		return rc;
	}
	prueth->nt_index = de;

	de = debugfs_create_file("nt_bins", S_IFREG | 0444,
				 prueth->root_dir, prueth->nt,
				 &prueth_nt_bins_fops);
	if (!de) {
		dev_err(dev, "Cannot create nt_indexes file\n");
		return rc;
	}
	prueth->nt_bins = de;

	return 0;
}

/* prueth_debugfs_term - Tear down debugfs intrastructure for emac stats
 *
 * Description:
 * When Debufs is configured this routine removes debugfs file system
 * elements that are specific to prueth queue stats
 */
void
prueth_debugfs_term(struct prueth_emac *emac)
{
	debugfs_remove_recursive(emac->root_dir);
	emac->stats_file = NULL;
	emac->prp_emac_mode_file = NULL;
	emac->root_dir = NULL;
}

/* prueth_hsr_prp_debugfs_term - Tear down debugfs intrastructure
 *
 * Description:
 * When Debufs is configured this routine removes debugfs file system
 * elements that are specific to hsr-prp
 */
void
prueth_hsr_prp_debugfs_term(struct prueth *prueth)
{
	/* Only case when this will return without doing anything
	 * happens if this is called from emac_ndo_open for the
	 * second device
	 */
	if (prueth->emac_configured)
		return;

	debugfs_remove_recursive(prueth->root_dir);
	prueth->node_tbl_file = NULL;
	prueth->nt_clear_file = NULL;
	prueth->mc_filter_file = NULL;
	prueth->vlan_filter_file = NULL;
	prueth->hsr_mode_file = NULL;
	prueth->dlrmt_file = NULL;
	prueth->dd_file = NULL;
	prueth->tr_file = NULL;
	prueth->error_stats_file = NULL;
	prueth->root_dir = NULL;
	prueth->nt_index = NULL;
	prueth->nt_bins = NULL;
}
#endif
