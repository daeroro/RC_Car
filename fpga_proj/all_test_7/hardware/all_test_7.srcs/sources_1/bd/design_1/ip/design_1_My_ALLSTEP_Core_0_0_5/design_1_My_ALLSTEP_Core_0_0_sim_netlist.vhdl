-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (lin64) Build 2086221 Fri Dec 15 20:54:30 MST 2017
-- Date        : Thu Sep 13 15:40:45 2018
-- Host        : siyun-CR62-6M running 64-bit Ubuntu 16.04.3 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/siyun/vivado_workspace/all_test_7/hardware/all_test_7.srcs/sources_1/bd/design_1/ip/design_1_My_ALLSTEP_Core_0_0_5/design_1_My_ALLSTEP_Core_0_0_sim_netlist.vhdl
-- Design      : design_1_My_ALLSTEP_Core_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_My_ALLSTEP_Core_0_0_My_ALLSTEP_Core_v1_0_S00_AXI is
  port (
    S_AXI_AWREADY : out STD_LOGIC;
    S_AXI_WREADY : out STD_LOGIC;
    S_AXI_ARREADY : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    PWM0 : out STD_LOGIC;
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    PWM_SIG : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Z_SIG : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_My_ALLSTEP_Core_0_0_My_ALLSTEP_Core_v1_0_S00_AXI : entity is "My_ALLSTEP_Core_v1_0_S00_AXI";
end design_1_My_ALLSTEP_Core_0_0_My_ALLSTEP_Core_v1_0_S00_AXI;

architecture STRUCTURE of design_1_My_ALLSTEP_Core_0_0_My_ALLSTEP_Core_v1_0_S00_AXI is
  signal O_counter : STD_LOGIC;
  signal PAST_PWM_SIG : STD_LOGIC;
  signal PWM01 : STD_LOGIC;
  signal \PWM01_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \PWM01_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \PWM01_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \PWM01_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \PWM01_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \PWM01_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \PWM01_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \PWM01_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \PWM01_carry__0_n_0\ : STD_LOGIC;
  signal \PWM01_carry__0_n_1\ : STD_LOGIC;
  signal \PWM01_carry__0_n_2\ : STD_LOGIC;
  signal \PWM01_carry__0_n_3\ : STD_LOGIC;
  signal \PWM01_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \PWM01_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \PWM01_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \PWM01_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \PWM01_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \PWM01_carry__1_i_6_n_0\ : STD_LOGIC;
  signal \PWM01_carry__1_i_7_n_0\ : STD_LOGIC;
  signal \PWM01_carry__1_i_8_n_0\ : STD_LOGIC;
  signal \PWM01_carry__1_n_0\ : STD_LOGIC;
  signal \PWM01_carry__1_n_1\ : STD_LOGIC;
  signal \PWM01_carry__1_n_2\ : STD_LOGIC;
  signal \PWM01_carry__1_n_3\ : STD_LOGIC;
  signal \PWM01_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \PWM01_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \PWM01_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \PWM01_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \PWM01_carry__2_i_5_n_0\ : STD_LOGIC;
  signal \PWM01_carry__2_i_6_n_0\ : STD_LOGIC;
  signal \PWM01_carry__2_i_7_n_0\ : STD_LOGIC;
  signal \PWM01_carry__2_i_8_n_0\ : STD_LOGIC;
  signal \PWM01_carry__2_n_1\ : STD_LOGIC;
  signal \PWM01_carry__2_n_2\ : STD_LOGIC;
  signal \PWM01_carry__2_n_3\ : STD_LOGIC;
  signal PWM01_carry_i_1_n_0 : STD_LOGIC;
  signal PWM01_carry_i_2_n_0 : STD_LOGIC;
  signal PWM01_carry_i_3_n_0 : STD_LOGIC;
  signal PWM01_carry_i_4_n_0 : STD_LOGIC;
  signal PWM01_carry_i_5_n_0 : STD_LOGIC;
  signal PWM01_carry_i_6_n_0 : STD_LOGIC;
  signal PWM01_carry_i_7_n_0 : STD_LOGIC;
  signal PWM01_carry_i_8_n_0 : STD_LOGIC;
  signal PWM01_carry_n_0 : STD_LOGIC;
  signal PWM01_carry_n_1 : STD_LOGIC;
  signal PWM01_carry_n_2 : STD_LOGIC;
  signal PWM01_carry_n_3 : STD_LOGIC;
  signal \^s_axi_arready\ : STD_LOGIC;
  signal \^s_axi_awready\ : STD_LOGIC;
  signal \^s_axi_wready\ : STD_LOGIC;
  signal aw_en_i_1_n_0 : STD_LOGIC;
  signal aw_en_reg_n_0 : STD_LOGIC;
  signal \axi_araddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[3]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[4]_i_1_n_0\ : STD_LOGIC;
  signal axi_arready_i_1_n_0 : STD_LOGIC;
  signal \axi_awaddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awaddr[3]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awaddr[4]_i_1_n_0\ : STD_LOGIC;
  signal axi_awready_i_1_n_0 : STD_LOGIC;
  signal axi_awready_i_2_n_0 : STD_LOGIC;
  signal axi_bvalid_i_1_n_0 : STD_LOGIC;
  signal \axi_rdata[0]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[0]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[10]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[11]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[12]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[12]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[13]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[13]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[14]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[14]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[15]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[16]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[17]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[18]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[19]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[1]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[20]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[21]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[22]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[23]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[24]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[25]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[26]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[27]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[28]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[29]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[2]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[30]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[31]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[3]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[4]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[5]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[6]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[7]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[8]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[9]_i_2_n_0\ : STD_LOGIC;
  signal axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal axi_wready_i_1_n_0 : STD_LOGIC;
  signal clear : STD_LOGIC;
  signal counter : STD_LOGIC;
  signal counter0 : STD_LOGIC;
  signal \counter[0]_i_10_n_0\ : STD_LOGIC;
  signal \counter[0]_i_11_n_0\ : STD_LOGIC;
  signal \counter[0]_i_12_n_0\ : STD_LOGIC;
  signal \counter[0]_i_4_n_0\ : STD_LOGIC;
  signal \counter[0]_i_5_n_0\ : STD_LOGIC;
  signal \counter[0]_i_6_n_0\ : STD_LOGIC;
  signal \counter[0]_i_7_n_0\ : STD_LOGIC;
  signal \counter[0]_i_8_n_0\ : STD_LOGIC;
  signal \counter[0]_i_9_n_0\ : STD_LOGIC;
  signal counter_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \counter_reg[0]_i_3_n_0\ : STD_LOGIC;
  signal \counter_reg[0]_i_3_n_1\ : STD_LOGIC;
  signal \counter_reg[0]_i_3_n_2\ : STD_LOGIC;
  signal \counter_reg[0]_i_3_n_3\ : STD_LOGIC;
  signal \counter_reg[0]_i_3_n_4\ : STD_LOGIC;
  signal \counter_reg[0]_i_3_n_5\ : STD_LOGIC;
  signal \counter_reg[0]_i_3_n_6\ : STD_LOGIC;
  signal \counter_reg[0]_i_3_n_7\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \counter_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \counter_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \counter_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \counter_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \counter_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \counter_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \counter_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \counter_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \counter_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \counter_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \counter_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \counter_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \counter_reg[28]_i_1_n_1\ : STD_LOGIC;
  signal \counter_reg[28]_i_1_n_2\ : STD_LOGIC;
  signal \counter_reg[28]_i_1_n_3\ : STD_LOGIC;
  signal \counter_reg[28]_i_1_n_4\ : STD_LOGIC;
  signal \counter_reg[28]_i_1_n_5\ : STD_LOGIC;
  signal \counter_reg[28]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg[28]_i_1_n_7\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \duty[14]_i_1_n_0\ : STD_LOGIC;
  signal \duty_reg_n_0_[14]\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal p_1_in : STD_LOGIC_VECTOR ( 24 downto 1 );
  signal \period[0]_i_1_n_0\ : STD_LOGIC;
  signal \period[15]_i_10_n_0\ : STD_LOGIC;
  signal \period[15]_i_11_n_0\ : STD_LOGIC;
  signal \period[15]_i_12_n_0\ : STD_LOGIC;
  signal \period[15]_i_13_n_0\ : STD_LOGIC;
  signal \period[15]_i_14_n_0\ : STD_LOGIC;
  signal \period[15]_i_15_n_0\ : STD_LOGIC;
  signal \period[15]_i_16_n_0\ : STD_LOGIC;
  signal \period[15]_i_17_n_0\ : STD_LOGIC;
  signal \period[15]_i_18_n_0\ : STD_LOGIC;
  signal \period[15]_i_19_n_0\ : STD_LOGIC;
  signal \period[15]_i_1_n_0\ : STD_LOGIC;
  signal \period[15]_i_20_n_0\ : STD_LOGIC;
  signal \period[15]_i_21_n_0\ : STD_LOGIC;
  signal \period[15]_i_22_n_0\ : STD_LOGIC;
  signal \period[15]_i_23_n_0\ : STD_LOGIC;
  signal \period[15]_i_2_n_0\ : STD_LOGIC;
  signal \period[15]_i_3_n_0\ : STD_LOGIC;
  signal \period[15]_i_4_n_0\ : STD_LOGIC;
  signal \period[15]_i_5_n_0\ : STD_LOGIC;
  signal \period[15]_i_6_n_0\ : STD_LOGIC;
  signal \period[15]_i_7_n_0\ : STD_LOGIC;
  signal \period[15]_i_8_n_0\ : STD_LOGIC;
  signal \period[15]_i_9_n_0\ : STD_LOGIC;
  signal \period_reg_n_0_[0]\ : STD_LOGIC;
  signal \period_reg_n_0_[15]\ : STD_LOGIC;
  signal pwm_counter1 : STD_LOGIC;
  signal \pwm_counter1_carry__0_i_10_n_0\ : STD_LOGIC;
  signal \pwm_counter1_carry__0_i_10_n_1\ : STD_LOGIC;
  signal \pwm_counter1_carry__0_i_10_n_2\ : STD_LOGIC;
  signal \pwm_counter1_carry__0_i_10_n_3\ : STD_LOGIC;
  signal \pwm_counter1_carry__0_i_11_n_1\ : STD_LOGIC;
  signal \pwm_counter1_carry__0_i_11_n_3\ : STD_LOGIC;
  signal \pwm_counter1_carry__0_i_12_n_0\ : STD_LOGIC;
  signal \pwm_counter1_carry__0_i_13_n_0\ : STD_LOGIC;
  signal \pwm_counter1_carry__0_i_14_n_0\ : STD_LOGIC;
  signal \pwm_counter1_carry__0_i_15_n_0\ : STD_LOGIC;
  signal \pwm_counter1_carry__0_i_16_n_0\ : STD_LOGIC;
  signal \pwm_counter1_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \pwm_counter1_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \pwm_counter1_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \pwm_counter1_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \pwm_counter1_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \pwm_counter1_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \pwm_counter1_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \pwm_counter1_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \pwm_counter1_carry__0_i_9_n_2\ : STD_LOGIC;
  signal \pwm_counter1_carry__0_n_0\ : STD_LOGIC;
  signal \pwm_counter1_carry__0_n_1\ : STD_LOGIC;
  signal \pwm_counter1_carry__0_n_2\ : STD_LOGIC;
  signal \pwm_counter1_carry__0_n_3\ : STD_LOGIC;
  signal \pwm_counter1_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \pwm_counter1_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \pwm_counter1_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \pwm_counter1_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \pwm_counter1_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \pwm_counter1_carry__1_i_6_n_0\ : STD_LOGIC;
  signal \pwm_counter1_carry__1_i_7_n_0\ : STD_LOGIC;
  signal \pwm_counter1_carry__1_i_8_n_0\ : STD_LOGIC;
  signal \pwm_counter1_carry__1_n_0\ : STD_LOGIC;
  signal \pwm_counter1_carry__1_n_1\ : STD_LOGIC;
  signal \pwm_counter1_carry__1_n_2\ : STD_LOGIC;
  signal \pwm_counter1_carry__1_n_3\ : STD_LOGIC;
  signal \pwm_counter1_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \pwm_counter1_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \pwm_counter1_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \pwm_counter1_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \pwm_counter1_carry__2_i_5_n_0\ : STD_LOGIC;
  signal \pwm_counter1_carry__2_i_6_n_0\ : STD_LOGIC;
  signal \pwm_counter1_carry__2_i_7_n_0\ : STD_LOGIC;
  signal \pwm_counter1_carry__2_i_8_n_0\ : STD_LOGIC;
  signal \pwm_counter1_carry__2_n_1\ : STD_LOGIC;
  signal \pwm_counter1_carry__2_n_2\ : STD_LOGIC;
  signal \pwm_counter1_carry__2_n_3\ : STD_LOGIC;
  signal pwm_counter1_carry_i_10_n_0 : STD_LOGIC;
  signal pwm_counter1_carry_i_11_n_0 : STD_LOGIC;
  signal pwm_counter1_carry_i_1_n_0 : STD_LOGIC;
  signal pwm_counter1_carry_i_2_n_0 : STD_LOGIC;
  signal pwm_counter1_carry_i_3_n_0 : STD_LOGIC;
  signal pwm_counter1_carry_i_4_n_0 : STD_LOGIC;
  signal pwm_counter1_carry_i_5_n_0 : STD_LOGIC;
  signal pwm_counter1_carry_i_6_n_0 : STD_LOGIC;
  signal pwm_counter1_carry_i_7_n_0 : STD_LOGIC;
  signal pwm_counter1_carry_i_8_n_0 : STD_LOGIC;
  signal pwm_counter1_carry_i_9_n_1 : STD_LOGIC;
  signal pwm_counter1_carry_i_9_n_3 : STD_LOGIC;
  signal pwm_counter1_carry_n_0 : STD_LOGIC;
  signal pwm_counter1_carry_n_1 : STD_LOGIC;
  signal pwm_counter1_carry_n_2 : STD_LOGIC;
  signal pwm_counter1_carry_n_3 : STD_LOGIC;
  signal pwm_counter2 : STD_LOGIC_VECTOR ( 15 downto 5 );
  signal \pwm_counter[0]_i_2_n_0\ : STD_LOGIC;
  signal pwm_counter_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \pwm_counter_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \pwm_counter_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \pwm_counter_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \pwm_counter_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \pwm_counter_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \pwm_counter_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \pwm_counter_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \pwm_counter_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \pwm_counter_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \pwm_counter_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \pwm_counter_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \pwm_counter_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \pwm_counter_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \pwm_counter_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \pwm_counter_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \pwm_counter_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \pwm_counter_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \pwm_counter_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \pwm_counter_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \pwm_counter_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \pwm_counter_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \pwm_counter_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \pwm_counter_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \pwm_counter_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \pwm_counter_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \pwm_counter_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \pwm_counter_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \pwm_counter_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \pwm_counter_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \pwm_counter_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \pwm_counter_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \pwm_counter_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \pwm_counter_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \pwm_counter_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \pwm_counter_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \pwm_counter_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \pwm_counter_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \pwm_counter_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \pwm_counter_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \pwm_counter_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \pwm_counter_reg[28]_i_1_n_1\ : STD_LOGIC;
  signal \pwm_counter_reg[28]_i_1_n_2\ : STD_LOGIC;
  signal \pwm_counter_reg[28]_i_1_n_3\ : STD_LOGIC;
  signal \pwm_counter_reg[28]_i_1_n_4\ : STD_LOGIC;
  signal \pwm_counter_reg[28]_i_1_n_5\ : STD_LOGIC;
  signal \pwm_counter_reg[28]_i_1_n_6\ : STD_LOGIC;
  signal \pwm_counter_reg[28]_i_1_n_7\ : STD_LOGIC;
  signal \pwm_counter_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \pwm_counter_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \pwm_counter_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \pwm_counter_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \pwm_counter_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \pwm_counter_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \pwm_counter_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \pwm_counter_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \pwm_counter_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \pwm_counter_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \pwm_counter_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \pwm_counter_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \pwm_counter_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \pwm_counter_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \pwm_counter_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \pwm_counter_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal reg_data_out : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^s00_axi_bvalid\ : STD_LOGIC;
  signal \^s00_axi_rvalid\ : STD_LOGIC;
  signal sel0 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal slv_reg1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg1[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[7]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg4 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal slv_reg5 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg5[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg5[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg5[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg5[7]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg6 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg6[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg6[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg6[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg6[7]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg7 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg7[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg7[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg7[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg7[7]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_rden__0\ : STD_LOGIC;
  signal \slv_reg_wren__2\ : STD_LOGIC;
  signal NLW_PWM01_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_PWM01_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_PWM01_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_PWM01_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_PWM01_carry__3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_PWM01_carry__3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_counter_reg[28]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_pwm_counter1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_pwm_counter1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_pwm_counter1_carry__0_i_10_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_pwm_counter1_carry__0_i_11_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_pwm_counter1_carry__0_i_11_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_pwm_counter1_carry__0_i_9_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_pwm_counter1_carry__0_i_9_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_pwm_counter1_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_pwm_counter1_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_pwm_counter1_carry__3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_pwm_counter1_carry__3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_pwm_counter1_carry_i_9_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_pwm_counter1_carry_i_9_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_pwm_counter_reg[28]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \axi_araddr[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of axi_arready_i_1 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of axi_awready_i_2 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \slv_reg4[31]_i_2\ : label is "soft_lutpair0";
begin
  S_AXI_ARREADY <= \^s_axi_arready\;
  S_AXI_AWREADY <= \^s_axi_awready\;
  S_AXI_WREADY <= \^s_axi_wready\;
  s00_axi_bvalid <= \^s00_axi_bvalid\;
  s00_axi_rvalid <= \^s00_axi_rvalid\;
\O_counter_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => Z_SIG,
      Q => O_counter,
      R => '0'
    );
PAST_PWM_SIG_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => PWM_SIG,
      Q => PAST_PWM_SIG,
      R => '0'
    );
PWM01_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => PWM01_carry_n_0,
      CO(2) => PWM01_carry_n_1,
      CO(1) => PWM01_carry_n_2,
      CO(0) => PWM01_carry_n_3,
      CYINIT => '0',
      DI(3) => PWM01_carry_i_1_n_0,
      DI(2) => PWM01_carry_i_2_n_0,
      DI(1) => PWM01_carry_i_3_n_0,
      DI(0) => PWM01_carry_i_4_n_0,
      O(3 downto 0) => NLW_PWM01_carry_O_UNCONNECTED(3 downto 0),
      S(3) => PWM01_carry_i_5_n_0,
      S(2) => PWM01_carry_i_6_n_0,
      S(1) => PWM01_carry_i_7_n_0,
      S(0) => PWM01_carry_i_8_n_0
    );
\PWM01_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => PWM01_carry_n_0,
      CO(3) => \PWM01_carry__0_n_0\,
      CO(2) => \PWM01_carry__0_n_1\,
      CO(1) => \PWM01_carry__0_n_2\,
      CO(0) => \PWM01_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \PWM01_carry__0_i_1_n_0\,
      DI(2) => \PWM01_carry__0_i_2_n_0\,
      DI(1) => \PWM01_carry__0_i_3_n_0\,
      DI(0) => \PWM01_carry__0_i_4_n_0\,
      O(3 downto 0) => \NLW_PWM01_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \PWM01_carry__0_i_5_n_0\,
      S(2) => \PWM01_carry__0_i_6_n_0\,
      S(1) => \PWM01_carry__0_i_7_n_0\,
      S(0) => \PWM01_carry__0_i_8_n_0\
    );
\PWM01_carry__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => pwm_counter_reg(15),
      I1 => \duty_reg_n_0_[14]\,
      I2 => pwm_counter_reg(14),
      O => \PWM01_carry__0_i_1_n_0\
    );
\PWM01_carry__0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => pwm_counter_reg(13),
      I1 => pwm_counter_reg(12),
      I2 => \duty_reg_n_0_[14]\,
      O => \PWM01_carry__0_i_2_n_0\
    );
\PWM01_carry__0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => \duty_reg_n_0_[14]\,
      I1 => pwm_counter_reg(11),
      I2 => pwm_counter_reg(10),
      O => \PWM01_carry__0_i_3_n_0\
    );
\PWM01_carry__0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => \duty_reg_n_0_[14]\,
      I1 => pwm_counter_reg(9),
      I2 => pwm_counter_reg(8),
      O => \PWM01_carry__0_i_4_n_0\
    );
\PWM01_carry__0_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"41"
    )
        port map (
      I0 => pwm_counter_reg(15),
      I1 => pwm_counter_reg(14),
      I2 => \duty_reg_n_0_[14]\,
      O => \PWM01_carry__0_i_5_n_0\
    );
\PWM01_carry__0_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"81"
    )
        port map (
      I0 => pwm_counter_reg(13),
      I1 => pwm_counter_reg(12),
      I2 => \duty_reg_n_0_[14]\,
      O => \PWM01_carry__0_i_6_n_0\
    );
\PWM01_carry__0_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"41"
    )
        port map (
      I0 => pwm_counter_reg(10),
      I1 => pwm_counter_reg(11),
      I2 => \duty_reg_n_0_[14]\,
      O => \PWM01_carry__0_i_7_n_0\
    );
\PWM01_carry__0_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"41"
    )
        port map (
      I0 => pwm_counter_reg(8),
      I1 => pwm_counter_reg(9),
      I2 => \duty_reg_n_0_[14]\,
      O => \PWM01_carry__0_i_8_n_0\
    );
\PWM01_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \PWM01_carry__0_n_0\,
      CO(3) => \PWM01_carry__1_n_0\,
      CO(2) => \PWM01_carry__1_n_1\,
      CO(1) => \PWM01_carry__1_n_2\,
      CO(0) => \PWM01_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \PWM01_carry__1_i_1_n_0\,
      DI(2) => \PWM01_carry__1_i_2_n_0\,
      DI(1) => \PWM01_carry__1_i_3_n_0\,
      DI(0) => \PWM01_carry__1_i_4_n_0\,
      O(3 downto 0) => \NLW_PWM01_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \PWM01_carry__1_i_5_n_0\,
      S(2) => \PWM01_carry__1_i_6_n_0\,
      S(1) => \PWM01_carry__1_i_7_n_0\,
      S(0) => \PWM01_carry__1_i_8_n_0\
    );
\PWM01_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => pwm_counter_reg(23),
      I1 => pwm_counter_reg(22),
      O => \PWM01_carry__1_i_1_n_0\
    );
\PWM01_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => pwm_counter_reg(21),
      I1 => pwm_counter_reg(20),
      O => \PWM01_carry__1_i_2_n_0\
    );
\PWM01_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => pwm_counter_reg(19),
      I1 => pwm_counter_reg(18),
      O => \PWM01_carry__1_i_3_n_0\
    );
\PWM01_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => pwm_counter_reg(17),
      I1 => pwm_counter_reg(16),
      O => \PWM01_carry__1_i_4_n_0\
    );
\PWM01_carry__1_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pwm_counter_reg(22),
      I1 => pwm_counter_reg(23),
      O => \PWM01_carry__1_i_5_n_0\
    );
\PWM01_carry__1_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pwm_counter_reg(20),
      I1 => pwm_counter_reg(21),
      O => \PWM01_carry__1_i_6_n_0\
    );
\PWM01_carry__1_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pwm_counter_reg(18),
      I1 => pwm_counter_reg(19),
      O => \PWM01_carry__1_i_7_n_0\
    );
\PWM01_carry__1_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pwm_counter_reg(16),
      I1 => pwm_counter_reg(17),
      O => \PWM01_carry__1_i_8_n_0\
    );
\PWM01_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \PWM01_carry__1_n_0\,
      CO(3) => PWM01,
      CO(2) => \PWM01_carry__2_n_1\,
      CO(1) => \PWM01_carry__2_n_2\,
      CO(0) => \PWM01_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => \PWM01_carry__2_i_1_n_0\,
      DI(2) => \PWM01_carry__2_i_2_n_0\,
      DI(1) => \PWM01_carry__2_i_3_n_0\,
      DI(0) => \PWM01_carry__2_i_4_n_0\,
      O(3 downto 0) => \NLW_PWM01_carry__2_O_UNCONNECTED\(3 downto 0),
      S(3) => \PWM01_carry__2_i_5_n_0\,
      S(2) => \PWM01_carry__2_i_6_n_0\,
      S(1) => \PWM01_carry__2_i_7_n_0\,
      S(0) => \PWM01_carry__2_i_8_n_0\
    );
\PWM01_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => pwm_counter_reg(31),
      I1 => pwm_counter_reg(30),
      O => \PWM01_carry__2_i_1_n_0\
    );
\PWM01_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => pwm_counter_reg(29),
      I1 => pwm_counter_reg(28),
      O => \PWM01_carry__2_i_2_n_0\
    );
\PWM01_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => pwm_counter_reg(27),
      I1 => pwm_counter_reg(26),
      O => \PWM01_carry__2_i_3_n_0\
    );
\PWM01_carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => pwm_counter_reg(25),
      I1 => pwm_counter_reg(24),
      O => \PWM01_carry__2_i_4_n_0\
    );
\PWM01_carry__2_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pwm_counter_reg(30),
      I1 => pwm_counter_reg(31),
      O => \PWM01_carry__2_i_5_n_0\
    );
\PWM01_carry__2_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pwm_counter_reg(28),
      I1 => pwm_counter_reg(29),
      O => \PWM01_carry__2_i_6_n_0\
    );
\PWM01_carry__2_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pwm_counter_reg(26),
      I1 => pwm_counter_reg(27),
      O => \PWM01_carry__2_i_7_n_0\
    );
\PWM01_carry__2_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pwm_counter_reg(24),
      I1 => pwm_counter_reg(25),
      O => \PWM01_carry__2_i_8_n_0\
    );
\PWM01_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => PWM01,
      CO(3 downto 0) => \NLW_PWM01_carry__3_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_PWM01_carry__3_O_UNCONNECTED\(3 downto 1),
      O(0) => PWM0,
      S(3 downto 0) => B"0001"
    );
PWM01_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => pwm_counter_reg(7),
      I1 => pwm_counter_reg(6),
      O => PWM01_carry_i_1_n_0
    );
PWM01_carry_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => pwm_counter_reg(5),
      I1 => \duty_reg_n_0_[14]\,
      I2 => pwm_counter_reg(4),
      O => PWM01_carry_i_2_n_0
    );
PWM01_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => pwm_counter_reg(3),
      I1 => pwm_counter_reg(2),
      O => PWM01_carry_i_3_n_0
    );
PWM01_carry_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => pwm_counter_reg(1),
      I1 => \duty_reg_n_0_[14]\,
      I2 => pwm_counter_reg(0),
      O => PWM01_carry_i_4_n_0
    );
PWM01_carry_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pwm_counter_reg(6),
      I1 => pwm_counter_reg(7),
      O => PWM01_carry_i_5_n_0
    );
PWM01_carry_i_6: unisim.vcomponents.LUT3
    generic map(
      INIT => X"41"
    )
        port map (
      I0 => pwm_counter_reg(5),
      I1 => pwm_counter_reg(4),
      I2 => \duty_reg_n_0_[14]\,
      O => PWM01_carry_i_6_n_0
    );
PWM01_carry_i_7: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pwm_counter_reg(2),
      I1 => pwm_counter_reg(3),
      O => PWM01_carry_i_7_n_0
    );
PWM01_carry_i_8: unisim.vcomponents.LUT3
    generic map(
      INIT => X"41"
    )
        port map (
      I0 => pwm_counter_reg(0),
      I1 => \duty_reg_n_0_[14]\,
      I2 => pwm_counter_reg(1),
      O => PWM01_carry_i_8_n_0
    );
aw_en_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFB0F0B0F0B0F0"
    )
        port map (
      I0 => \^s_axi_awready\,
      I1 => s00_axi_awvalid,
      I2 => aw_en_reg_n_0,
      I3 => s00_axi_wvalid,
      I4 => s00_axi_bready,
      I5 => \^s00_axi_bvalid\,
      O => aw_en_i_1_n_0
    );
aw_en_reg: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => aw_en_i_1_n_0,
      Q => aw_en_reg_n_0,
      S => axi_awready_i_1_n_0
    );
\axi_araddr[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s00_axi_araddr(0),
      I1 => s00_axi_arvalid,
      I2 => \^s_axi_arready\,
      I3 => sel0(0),
      O => \axi_araddr[2]_i_1_n_0\
    );
\axi_araddr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s00_axi_araddr(1),
      I1 => s00_axi_arvalid,
      I2 => \^s_axi_arready\,
      I3 => sel0(1),
      O => \axi_araddr[3]_i_1_n_0\
    );
\axi_araddr[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s00_axi_araddr(2),
      I1 => s00_axi_arvalid,
      I2 => \^s_axi_arready\,
      I3 => sel0(2),
      O => \axi_araddr[4]_i_1_n_0\
    );
\axi_araddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_araddr[2]_i_1_n_0\,
      Q => sel0(0),
      R => axi_awready_i_1_n_0
    );
\axi_araddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_araddr[3]_i_1_n_0\,
      Q => sel0(1),
      R => axi_awready_i_1_n_0
    );
\axi_araddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_araddr[4]_i_1_n_0\,
      Q => sel0(2),
      R => axi_awready_i_1_n_0
    );
axi_arready_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => \^s_axi_arready\,
      O => axi_arready_i_1_n_0
    );
axi_arready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_arready_i_1_n_0,
      Q => \^s_axi_arready\,
      R => axi_awready_i_1_n_0
    );
\axi_awaddr[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFBFFF00008000"
    )
        port map (
      I0 => s00_axi_awaddr(0),
      I1 => s00_axi_wvalid,
      I2 => aw_en_reg_n_0,
      I3 => s00_axi_awvalid,
      I4 => \^s_axi_awready\,
      I5 => p_0_in(0),
      O => \axi_awaddr[2]_i_1_n_0\
    );
\axi_awaddr[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFBFFF00008000"
    )
        port map (
      I0 => s00_axi_awaddr(1),
      I1 => s00_axi_wvalid,
      I2 => aw_en_reg_n_0,
      I3 => s00_axi_awvalid,
      I4 => \^s_axi_awready\,
      I5 => p_0_in(1),
      O => \axi_awaddr[3]_i_1_n_0\
    );
\axi_awaddr[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFBFFF00008000"
    )
        port map (
      I0 => s00_axi_awaddr(2),
      I1 => s00_axi_wvalid,
      I2 => aw_en_reg_n_0,
      I3 => s00_axi_awvalid,
      I4 => \^s_axi_awready\,
      I5 => p_0_in(2),
      O => \axi_awaddr[4]_i_1_n_0\
    );
\axi_awaddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_awaddr[2]_i_1_n_0\,
      Q => p_0_in(0),
      R => axi_awready_i_1_n_0
    );
\axi_awaddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_awaddr[3]_i_1_n_0\,
      Q => p_0_in(1),
      R => axi_awready_i_1_n_0
    );
\axi_awaddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_awaddr[4]_i_1_n_0\,
      Q => p_0_in(2),
      R => axi_awready_i_1_n_0
    );
axi_awready_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s00_axi_aresetn,
      O => axi_awready_i_1_n_0
    );
axi_awready_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => aw_en_reg_n_0,
      I2 => s00_axi_awvalid,
      I3 => \^s_axi_awready\,
      O => axi_awready_i_2_n_0
    );
axi_awready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_awready_i_2_n_0,
      Q => \^s_axi_awready\,
      R => axi_awready_i_1_n_0
    );
axi_bvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFF80008000"
    )
        port map (
      I0 => \^s_axi_awready\,
      I1 => s00_axi_wvalid,
      I2 => \^s_axi_wready\,
      I3 => s00_axi_awvalid,
      I4 => s00_axi_bready,
      I5 => \^s00_axi_bvalid\,
      O => axi_bvalid_i_1_n_0
    );
axi_bvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_bvalid_i_1_n_0,
      Q => \^s00_axi_bvalid\,
      R => axi_awready_i_1_n_0
    );
\axi_rdata[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => \period_reg_n_0_[0]\,
      I1 => sel0(1),
      I2 => O_counter,
      I3 => sel0(0),
      I4 => counter_reg(0),
      O => \axi_rdata[0]_i_2_n_0\
    );
\axi_rdata[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(0),
      I1 => slv_reg6(0),
      I2 => sel0(1),
      I3 => slv_reg5(0),
      I4 => sel0(0),
      I5 => slv_reg4(0),
      O => \axi_rdata[0]_i_3_n_0\
    );
\axi_rdata[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B88888BBB8888888"
    )
        port map (
      I0 => \axi_rdata[10]_i_2_n_0\,
      I1 => sel0(2),
      I2 => \period_reg_n_0_[15]\,
      I3 => sel0(1),
      I4 => sel0(0),
      I5 => counter_reg(10),
      O => reg_data_out(10)
    );
\axi_rdata[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(10),
      I1 => slv_reg6(10),
      I2 => sel0(1),
      I3 => slv_reg5(10),
      I4 => sel0(0),
      I5 => slv_reg4(10),
      O => \axi_rdata[10]_i_2_n_0\
    );
\axi_rdata[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888B8BB8888B888"
    )
        port map (
      I0 => \axi_rdata[11]_i_2_n_0\,
      I1 => sel0(2),
      I2 => \duty_reg_n_0_[14]\,
      I3 => sel0(1),
      I4 => sel0(0),
      I5 => counter_reg(11),
      O => reg_data_out(11)
    );
\axi_rdata[11]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(11),
      I1 => slv_reg6(11),
      I2 => sel0(1),
      I3 => slv_reg5(11),
      I4 => sel0(0),
      I5 => slv_reg4(11),
      O => \axi_rdata[11]_i_2_n_0\
    );
\axi_rdata[12]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C0AFC0A0"
    )
        port map (
      I0 => \duty_reg_n_0_[14]\,
      I1 => \period_reg_n_0_[15]\,
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => counter_reg(12),
      O => \axi_rdata[12]_i_2_n_0\
    );
\axi_rdata[12]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(12),
      I1 => slv_reg6(12),
      I2 => sel0(1),
      I3 => slv_reg5(12),
      I4 => sel0(0),
      I5 => slv_reg4(12),
      O => \axi_rdata[12]_i_3_n_0\
    );
\axi_rdata[13]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C0AFC0A0"
    )
        port map (
      I0 => \duty_reg_n_0_[14]\,
      I1 => \period_reg_n_0_[15]\,
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => counter_reg(13),
      O => \axi_rdata[13]_i_2_n_0\
    );
\axi_rdata[13]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(13),
      I1 => slv_reg6(13),
      I2 => sel0(1),
      I3 => slv_reg5(13),
      I4 => sel0(0),
      I5 => slv_reg4(13),
      O => \axi_rdata[13]_i_3_n_0\
    );
\axi_rdata[14]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FC223022"
    )
        port map (
      I0 => counter_reg(14),
      I1 => sel0(0),
      I2 => \duty_reg_n_0_[14]\,
      I3 => sel0(1),
      I4 => \period_reg_n_0_[15]\,
      O => \axi_rdata[14]_i_2_n_0\
    );
\axi_rdata[14]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(14),
      I1 => slv_reg6(14),
      I2 => sel0(1),
      I3 => slv_reg5(14),
      I4 => sel0(0),
      I5 => slv_reg4(14),
      O => \axi_rdata[14]_i_3_n_0\
    );
\axi_rdata[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BB8888B8888888B8"
    )
        port map (
      I0 => \axi_rdata[15]_i_2_n_0\,
      I1 => sel0(2),
      I2 => counter_reg(15),
      I3 => sel0(1),
      I4 => sel0(0),
      I5 => \period_reg_n_0_[15]\,
      O => reg_data_out(15)
    );
\axi_rdata[15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(15),
      I1 => slv_reg6(15),
      I2 => sel0(1),
      I3 => slv_reg5(15),
      I4 => sel0(0),
      I5 => slv_reg4(15),
      O => \axi_rdata[15]_i_2_n_0\
    );
\axi_rdata[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88888B88"
    )
        port map (
      I0 => \axi_rdata[16]_i_2_n_0\,
      I1 => sel0(2),
      I2 => sel0(1),
      I3 => counter_reg(16),
      I4 => sel0(0),
      O => reg_data_out(16)
    );
\axi_rdata[16]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(16),
      I1 => slv_reg6(16),
      I2 => sel0(1),
      I3 => slv_reg5(16),
      I4 => sel0(0),
      I5 => slv_reg4(16),
      O => \axi_rdata[16]_i_2_n_0\
    );
\axi_rdata[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88888B88"
    )
        port map (
      I0 => \axi_rdata[17]_i_2_n_0\,
      I1 => sel0(2),
      I2 => sel0(1),
      I3 => counter_reg(17),
      I4 => sel0(0),
      O => reg_data_out(17)
    );
\axi_rdata[17]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(17),
      I1 => slv_reg6(17),
      I2 => sel0(1),
      I3 => slv_reg5(17),
      I4 => sel0(0),
      I5 => slv_reg4(17),
      O => \axi_rdata[17]_i_2_n_0\
    );
\axi_rdata[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88888B88"
    )
        port map (
      I0 => \axi_rdata[18]_i_2_n_0\,
      I1 => sel0(2),
      I2 => sel0(1),
      I3 => counter_reg(18),
      I4 => sel0(0),
      O => reg_data_out(18)
    );
\axi_rdata[18]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(18),
      I1 => slv_reg6(18),
      I2 => sel0(1),
      I3 => slv_reg5(18),
      I4 => sel0(0),
      I5 => slv_reg4(18),
      O => \axi_rdata[18]_i_2_n_0\
    );
\axi_rdata[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88888B88"
    )
        port map (
      I0 => \axi_rdata[19]_i_2_n_0\,
      I1 => sel0(2),
      I2 => sel0(1),
      I3 => counter_reg(19),
      I4 => sel0(0),
      O => reg_data_out(19)
    );
\axi_rdata[19]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(19),
      I1 => slv_reg6(19),
      I2 => sel0(1),
      I3 => slv_reg5(19),
      I4 => sel0(0),
      I5 => slv_reg4(19),
      O => \axi_rdata[19]_i_2_n_0\
    );
\axi_rdata[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888B8BB8888B888"
    )
        port map (
      I0 => \axi_rdata[1]_i_2_n_0\,
      I1 => sel0(2),
      I2 => \duty_reg_n_0_[14]\,
      I3 => sel0(1),
      I4 => sel0(0),
      I5 => counter_reg(1),
      O => reg_data_out(1)
    );
\axi_rdata[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(1),
      I1 => slv_reg6(1),
      I2 => sel0(1),
      I3 => slv_reg5(1),
      I4 => sel0(0),
      I5 => slv_reg4(1),
      O => \axi_rdata[1]_i_2_n_0\
    );
\axi_rdata[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88888B88"
    )
        port map (
      I0 => \axi_rdata[20]_i_2_n_0\,
      I1 => sel0(2),
      I2 => sel0(1),
      I3 => counter_reg(20),
      I4 => sel0(0),
      O => reg_data_out(20)
    );
\axi_rdata[20]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(20),
      I1 => slv_reg6(20),
      I2 => sel0(1),
      I3 => slv_reg5(20),
      I4 => sel0(0),
      I5 => slv_reg4(20),
      O => \axi_rdata[20]_i_2_n_0\
    );
\axi_rdata[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88888B88"
    )
        port map (
      I0 => \axi_rdata[21]_i_2_n_0\,
      I1 => sel0(2),
      I2 => sel0(1),
      I3 => counter_reg(21),
      I4 => sel0(0),
      O => reg_data_out(21)
    );
\axi_rdata[21]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(21),
      I1 => slv_reg6(21),
      I2 => sel0(1),
      I3 => slv_reg5(21),
      I4 => sel0(0),
      I5 => slv_reg4(21),
      O => \axi_rdata[21]_i_2_n_0\
    );
\axi_rdata[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88888B88"
    )
        port map (
      I0 => \axi_rdata[22]_i_2_n_0\,
      I1 => sel0(2),
      I2 => sel0(1),
      I3 => counter_reg(22),
      I4 => sel0(0),
      O => reg_data_out(22)
    );
\axi_rdata[22]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(22),
      I1 => slv_reg6(22),
      I2 => sel0(1),
      I3 => slv_reg5(22),
      I4 => sel0(0),
      I5 => slv_reg4(22),
      O => \axi_rdata[22]_i_2_n_0\
    );
\axi_rdata[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88888B88"
    )
        port map (
      I0 => \axi_rdata[23]_i_2_n_0\,
      I1 => sel0(2),
      I2 => sel0(1),
      I3 => counter_reg(23),
      I4 => sel0(0),
      O => reg_data_out(23)
    );
\axi_rdata[23]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(23),
      I1 => slv_reg6(23),
      I2 => sel0(1),
      I3 => slv_reg5(23),
      I4 => sel0(0),
      I5 => slv_reg4(23),
      O => \axi_rdata[23]_i_2_n_0\
    );
\axi_rdata[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88888B88"
    )
        port map (
      I0 => \axi_rdata[24]_i_2_n_0\,
      I1 => sel0(2),
      I2 => sel0(1),
      I3 => counter_reg(24),
      I4 => sel0(0),
      O => reg_data_out(24)
    );
\axi_rdata[24]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(24),
      I1 => slv_reg6(24),
      I2 => sel0(1),
      I3 => slv_reg5(24),
      I4 => sel0(0),
      I5 => slv_reg4(24),
      O => \axi_rdata[24]_i_2_n_0\
    );
\axi_rdata[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88888B88"
    )
        port map (
      I0 => \axi_rdata[25]_i_2_n_0\,
      I1 => sel0(2),
      I2 => sel0(1),
      I3 => counter_reg(25),
      I4 => sel0(0),
      O => reg_data_out(25)
    );
\axi_rdata[25]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(25),
      I1 => slv_reg6(25),
      I2 => sel0(1),
      I3 => slv_reg5(25),
      I4 => sel0(0),
      I5 => slv_reg4(25),
      O => \axi_rdata[25]_i_2_n_0\
    );
\axi_rdata[26]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88888B88"
    )
        port map (
      I0 => \axi_rdata[26]_i_2_n_0\,
      I1 => sel0(2),
      I2 => sel0(1),
      I3 => counter_reg(26),
      I4 => sel0(0),
      O => reg_data_out(26)
    );
\axi_rdata[26]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(26),
      I1 => slv_reg6(26),
      I2 => sel0(1),
      I3 => slv_reg5(26),
      I4 => sel0(0),
      I5 => slv_reg4(26),
      O => \axi_rdata[26]_i_2_n_0\
    );
\axi_rdata[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88888B88"
    )
        port map (
      I0 => \axi_rdata[27]_i_2_n_0\,
      I1 => sel0(2),
      I2 => sel0(1),
      I3 => counter_reg(27),
      I4 => sel0(0),
      O => reg_data_out(27)
    );
\axi_rdata[27]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(27),
      I1 => slv_reg6(27),
      I2 => sel0(1),
      I3 => slv_reg5(27),
      I4 => sel0(0),
      I5 => slv_reg4(27),
      O => \axi_rdata[27]_i_2_n_0\
    );
\axi_rdata[28]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88888B88"
    )
        port map (
      I0 => \axi_rdata[28]_i_2_n_0\,
      I1 => sel0(2),
      I2 => sel0(1),
      I3 => counter_reg(28),
      I4 => sel0(0),
      O => reg_data_out(28)
    );
\axi_rdata[28]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(28),
      I1 => slv_reg6(28),
      I2 => sel0(1),
      I3 => slv_reg5(28),
      I4 => sel0(0),
      I5 => slv_reg4(28),
      O => \axi_rdata[28]_i_2_n_0\
    );
\axi_rdata[29]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88888B88"
    )
        port map (
      I0 => \axi_rdata[29]_i_2_n_0\,
      I1 => sel0(2),
      I2 => sel0(1),
      I3 => counter_reg(29),
      I4 => sel0(0),
      O => reg_data_out(29)
    );
\axi_rdata[29]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(29),
      I1 => slv_reg6(29),
      I2 => sel0(1),
      I3 => slv_reg5(29),
      I4 => sel0(0),
      I5 => slv_reg4(29),
      O => \axi_rdata[29]_i_2_n_0\
    );
\axi_rdata[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B88888BBB8888888"
    )
        port map (
      I0 => \axi_rdata[2]_i_2_n_0\,
      I1 => sel0(2),
      I2 => \period_reg_n_0_[15]\,
      I3 => sel0(1),
      I4 => sel0(0),
      I5 => counter_reg(2),
      O => reg_data_out(2)
    );
\axi_rdata[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(2),
      I1 => slv_reg6(2),
      I2 => sel0(1),
      I3 => slv_reg5(2),
      I4 => sel0(0),
      I5 => slv_reg4(2),
      O => \axi_rdata[2]_i_2_n_0\
    );
\axi_rdata[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88888B88"
    )
        port map (
      I0 => \axi_rdata[30]_i_2_n_0\,
      I1 => sel0(2),
      I2 => sel0(1),
      I3 => counter_reg(30),
      I4 => sel0(0),
      O => reg_data_out(30)
    );
\axi_rdata[30]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(30),
      I1 => slv_reg6(30),
      I2 => sel0(1),
      I3 => slv_reg5(30),
      I4 => sel0(0),
      I5 => slv_reg4(30),
      O => \axi_rdata[30]_i_2_n_0\
    );
\axi_rdata[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88888B88"
    )
        port map (
      I0 => \axi_rdata[31]_i_2_n_0\,
      I1 => sel0(2),
      I2 => sel0(1),
      I3 => counter_reg(31),
      I4 => sel0(0),
      O => reg_data_out(31)
    );
\axi_rdata[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(31),
      I1 => slv_reg6(31),
      I2 => sel0(1),
      I3 => slv_reg5(31),
      I4 => sel0(0),
      I5 => slv_reg4(31),
      O => \axi_rdata[31]_i_2_n_0\
    );
\axi_rdata[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88888B88"
    )
        port map (
      I0 => \axi_rdata[3]_i_2_n_0\,
      I1 => sel0(2),
      I2 => sel0(1),
      I3 => counter_reg(3),
      I4 => sel0(0),
      O => reg_data_out(3)
    );
\axi_rdata[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(3),
      I1 => slv_reg6(3),
      I2 => sel0(1),
      I3 => slv_reg5(3),
      I4 => sel0(0),
      I5 => slv_reg4(3),
      O => \axi_rdata[3]_i_2_n_0\
    );
\axi_rdata[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888B8BB8888B888"
    )
        port map (
      I0 => \axi_rdata[4]_i_2_n_0\,
      I1 => sel0(2),
      I2 => \duty_reg_n_0_[14]\,
      I3 => sel0(1),
      I4 => sel0(0),
      I5 => counter_reg(4),
      O => reg_data_out(4)
    );
\axi_rdata[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(4),
      I1 => slv_reg6(4),
      I2 => sel0(1),
      I3 => slv_reg5(4),
      I4 => sel0(0),
      I5 => slv_reg4(4),
      O => \axi_rdata[4]_i_2_n_0\
    );
\axi_rdata[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B88888BBB8888888"
    )
        port map (
      I0 => \axi_rdata[5]_i_2_n_0\,
      I1 => sel0(2),
      I2 => \period_reg_n_0_[15]\,
      I3 => sel0(1),
      I4 => sel0(0),
      I5 => counter_reg(5),
      O => reg_data_out(5)
    );
\axi_rdata[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(5),
      I1 => slv_reg6(5),
      I2 => sel0(1),
      I3 => slv_reg5(5),
      I4 => sel0(0),
      I5 => slv_reg4(5),
      O => \axi_rdata[5]_i_2_n_0\
    );
\axi_rdata[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88888B88"
    )
        port map (
      I0 => \axi_rdata[6]_i_2_n_0\,
      I1 => sel0(2),
      I2 => sel0(1),
      I3 => counter_reg(6),
      I4 => sel0(0),
      O => reg_data_out(6)
    );
\axi_rdata[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(6),
      I1 => slv_reg6(6),
      I2 => sel0(1),
      I3 => slv_reg5(6),
      I4 => sel0(0),
      I5 => slv_reg4(6),
      O => \axi_rdata[6]_i_2_n_0\
    );
\axi_rdata[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88888B88"
    )
        port map (
      I0 => \axi_rdata[7]_i_2_n_0\,
      I1 => sel0(2),
      I2 => sel0(1),
      I3 => counter_reg(7),
      I4 => sel0(0),
      O => reg_data_out(7)
    );
\axi_rdata[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(7),
      I1 => slv_reg6(7),
      I2 => sel0(1),
      I3 => slv_reg5(7),
      I4 => sel0(0),
      I5 => slv_reg4(7),
      O => \axi_rdata[7]_i_2_n_0\
    );
\axi_rdata[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88888B88"
    )
        port map (
      I0 => \axi_rdata[8]_i_2_n_0\,
      I1 => sel0(2),
      I2 => sel0(1),
      I3 => counter_reg(8),
      I4 => sel0(0),
      O => reg_data_out(8)
    );
\axi_rdata[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(8),
      I1 => slv_reg6(8),
      I2 => sel0(1),
      I3 => slv_reg5(8),
      I4 => sel0(0),
      I5 => slv_reg4(8),
      O => \axi_rdata[8]_i_2_n_0\
    );
\axi_rdata[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888B8BB8888B888"
    )
        port map (
      I0 => \axi_rdata[9]_i_2_n_0\,
      I1 => sel0(2),
      I2 => \duty_reg_n_0_[14]\,
      I3 => sel0(1),
      I4 => sel0(0),
      I5 => counter_reg(9),
      O => reg_data_out(9)
    );
\axi_rdata[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(9),
      I1 => slv_reg6(9),
      I2 => sel0(1),
      I3 => slv_reg5(9),
      I4 => sel0(0),
      I5 => slv_reg4(9),
      O => \axi_rdata[9]_i_2_n_0\
    );
\axi_rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(0),
      Q => s00_axi_rdata(0),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[0]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[0]_i_2_n_0\,
      I1 => \axi_rdata[0]_i_3_n_0\,
      O => reg_data_out(0),
      S => sel0(2)
    );
\axi_rdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(10),
      Q => s00_axi_rdata(10),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(11),
      Q => s00_axi_rdata(11),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(12),
      Q => s00_axi_rdata(12),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[12]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[12]_i_2_n_0\,
      I1 => \axi_rdata[12]_i_3_n_0\,
      O => reg_data_out(12),
      S => sel0(2)
    );
\axi_rdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(13),
      Q => s00_axi_rdata(13),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[13]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[13]_i_2_n_0\,
      I1 => \axi_rdata[13]_i_3_n_0\,
      O => reg_data_out(13),
      S => sel0(2)
    );
\axi_rdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(14),
      Q => s00_axi_rdata(14),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[14]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[14]_i_2_n_0\,
      I1 => \axi_rdata[14]_i_3_n_0\,
      O => reg_data_out(14),
      S => sel0(2)
    );
\axi_rdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(15),
      Q => s00_axi_rdata(15),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(16),
      Q => s00_axi_rdata(16),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(17),
      Q => s00_axi_rdata(17),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(18),
      Q => s00_axi_rdata(18),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(19),
      Q => s00_axi_rdata(19),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(1),
      Q => s00_axi_rdata(1),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(20),
      Q => s00_axi_rdata(20),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(21),
      Q => s00_axi_rdata(21),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(22),
      Q => s00_axi_rdata(22),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(23),
      Q => s00_axi_rdata(23),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(24),
      Q => s00_axi_rdata(24),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(25),
      Q => s00_axi_rdata(25),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(26),
      Q => s00_axi_rdata(26),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(27),
      Q => s00_axi_rdata(27),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(28),
      Q => s00_axi_rdata(28),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(29),
      Q => s00_axi_rdata(29),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(2),
      Q => s00_axi_rdata(2),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(30),
      Q => s00_axi_rdata(30),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(31),
      Q => s00_axi_rdata(31),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(3),
      Q => s00_axi_rdata(3),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(4),
      Q => s00_axi_rdata(4),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(5),
      Q => s00_axi_rdata(5),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(6),
      Q => s00_axi_rdata(6),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(7),
      Q => s00_axi_rdata(7),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(8),
      Q => s00_axi_rdata(8),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(9),
      Q => s00_axi_rdata(9),
      R => axi_awready_i_1_n_0
    );
axi_rvalid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08F8"
    )
        port map (
      I0 => \^s_axi_arready\,
      I1 => s00_axi_arvalid,
      I2 => \^s00_axi_rvalid\,
      I3 => s00_axi_rready,
      O => axi_rvalid_i_1_n_0
    );
axi_rvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_rvalid_i_1_n_0,
      Q => \^s00_axi_rvalid\,
      R => axi_awready_i_1_n_0
    );
axi_wready_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => aw_en_reg_n_0,
      I2 => s00_axi_awvalid,
      I3 => \^s_axi_wready\,
      O => axi_wready_i_1_n_0
    );
axi_wready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_wready_i_1_n_0,
      Q => \^s_axi_wready\,
      R => axi_awready_i_1_n_0
    );
\counter[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA0080AAAA"
    )
        port map (
      I0 => counter0,
      I1 => counter_reg(8),
      I2 => counter_reg(7),
      I3 => \counter[0]_i_4_n_0\,
      I4 => \counter[0]_i_5_n_0\,
      I5 => \counter[0]_i_6_n_0\,
      O => counter
    );
\counter[0]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => counter_reg(19),
      I1 => counter_reg(18),
      I2 => counter_reg(21),
      I3 => counter_reg(20),
      O => \counter[0]_i_10_n_0\
    );
\counter[0]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => counter_reg(17),
      I1 => counter_reg(16),
      I2 => counter_reg(23),
      I3 => counter_reg(22),
      O => \counter[0]_i_11_n_0\
    );
\counter[0]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => counter_reg(11),
      I1 => counter_reg(10),
      I2 => counter_reg(15),
      I3 => counter_reg(9),
      O => \counter[0]_i_12_n_0\
    );
\counter[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => PWM_SIG,
      I1 => PAST_PWM_SIG,
      O => counter0
    );
\counter[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000001011111111"
    )
        port map (
      I0 => counter_reg(6),
      I1 => counter_reg(5),
      I2 => \counter[0]_i_8_n_0\,
      I3 => counter_reg(3),
      I4 => counter_reg(2),
      I5 => counter_reg(4),
      O => \counter[0]_i_4_n_0\
    );
\counter[0]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => counter_reg(30),
      I1 => counter_reg(31),
      I2 => counter_reg(28),
      I3 => counter_reg(29),
      I4 => \counter[0]_i_9_n_0\,
      O => \counter[0]_i_5_n_0\
    );
\counter[0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \counter[0]_i_10_n_0\,
      I1 => \counter[0]_i_11_n_0\,
      I2 => \counter[0]_i_12_n_0\,
      I3 => counter_reg(14),
      I4 => counter_reg(13),
      I5 => counter_reg(12),
      O => \counter[0]_i_6_n_0\
    );
\counter[0]_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter_reg(0),
      O => \counter[0]_i_7_n_0\
    );
\counter[0]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter_reg(0),
      I1 => counter_reg(1),
      O => \counter[0]_i_8_n_0\
    );
\counter[0]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => counter_reg(25),
      I1 => counter_reg(24),
      I2 => counter_reg(27),
      I3 => counter_reg(26),
      O => \counter[0]_i_9_n_0\
    );
\counter_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => counter0,
      D => \counter_reg[0]_i_3_n_7\,
      Q => counter_reg(0),
      R => counter
    );
\counter_reg[0]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \counter_reg[0]_i_3_n_0\,
      CO(2) => \counter_reg[0]_i_3_n_1\,
      CO(1) => \counter_reg[0]_i_3_n_2\,
      CO(0) => \counter_reg[0]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \counter_reg[0]_i_3_n_4\,
      O(2) => \counter_reg[0]_i_3_n_5\,
      O(1) => \counter_reg[0]_i_3_n_6\,
      O(0) => \counter_reg[0]_i_3_n_7\,
      S(3 downto 1) => counter_reg(3 downto 1),
      S(0) => \counter[0]_i_7_n_0\
    );
\counter_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => counter0,
      D => \counter_reg[8]_i_1_n_5\,
      Q => counter_reg(10),
      R => counter
    );
\counter_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => counter0,
      D => \counter_reg[8]_i_1_n_4\,
      Q => counter_reg(11),
      R => counter
    );
\counter_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => counter0,
      D => \counter_reg[12]_i_1_n_7\,
      Q => counter_reg(12),
      R => counter
    );
\counter_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[8]_i_1_n_0\,
      CO(3) => \counter_reg[12]_i_1_n_0\,
      CO(2) => \counter_reg[12]_i_1_n_1\,
      CO(1) => \counter_reg[12]_i_1_n_2\,
      CO(0) => \counter_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_reg[12]_i_1_n_4\,
      O(2) => \counter_reg[12]_i_1_n_5\,
      O(1) => \counter_reg[12]_i_1_n_6\,
      O(0) => \counter_reg[12]_i_1_n_7\,
      S(3 downto 0) => counter_reg(15 downto 12)
    );
\counter_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => counter0,
      D => \counter_reg[12]_i_1_n_6\,
      Q => counter_reg(13),
      R => counter
    );
\counter_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => counter0,
      D => \counter_reg[12]_i_1_n_5\,
      Q => counter_reg(14),
      R => counter
    );
\counter_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => counter0,
      D => \counter_reg[12]_i_1_n_4\,
      Q => counter_reg(15),
      R => counter
    );
\counter_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => counter0,
      D => \counter_reg[16]_i_1_n_7\,
      Q => counter_reg(16),
      R => counter
    );
\counter_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[12]_i_1_n_0\,
      CO(3) => \counter_reg[16]_i_1_n_0\,
      CO(2) => \counter_reg[16]_i_1_n_1\,
      CO(1) => \counter_reg[16]_i_1_n_2\,
      CO(0) => \counter_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_reg[16]_i_1_n_4\,
      O(2) => \counter_reg[16]_i_1_n_5\,
      O(1) => \counter_reg[16]_i_1_n_6\,
      O(0) => \counter_reg[16]_i_1_n_7\,
      S(3 downto 0) => counter_reg(19 downto 16)
    );
\counter_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => counter0,
      D => \counter_reg[16]_i_1_n_6\,
      Q => counter_reg(17),
      R => counter
    );
\counter_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => counter0,
      D => \counter_reg[16]_i_1_n_5\,
      Q => counter_reg(18),
      R => counter
    );
\counter_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => counter0,
      D => \counter_reg[16]_i_1_n_4\,
      Q => counter_reg(19),
      R => counter
    );
\counter_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => counter0,
      D => \counter_reg[0]_i_3_n_6\,
      Q => counter_reg(1),
      R => counter
    );
\counter_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => counter0,
      D => \counter_reg[20]_i_1_n_7\,
      Q => counter_reg(20),
      R => counter
    );
\counter_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[16]_i_1_n_0\,
      CO(3) => \counter_reg[20]_i_1_n_0\,
      CO(2) => \counter_reg[20]_i_1_n_1\,
      CO(1) => \counter_reg[20]_i_1_n_2\,
      CO(0) => \counter_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_reg[20]_i_1_n_4\,
      O(2) => \counter_reg[20]_i_1_n_5\,
      O(1) => \counter_reg[20]_i_1_n_6\,
      O(0) => \counter_reg[20]_i_1_n_7\,
      S(3 downto 0) => counter_reg(23 downto 20)
    );
\counter_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => counter0,
      D => \counter_reg[20]_i_1_n_6\,
      Q => counter_reg(21),
      R => counter
    );
\counter_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => counter0,
      D => \counter_reg[20]_i_1_n_5\,
      Q => counter_reg(22),
      R => counter
    );
\counter_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => counter0,
      D => \counter_reg[20]_i_1_n_4\,
      Q => counter_reg(23),
      R => counter
    );
\counter_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => counter0,
      D => \counter_reg[24]_i_1_n_7\,
      Q => counter_reg(24),
      R => counter
    );
\counter_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[20]_i_1_n_0\,
      CO(3) => \counter_reg[24]_i_1_n_0\,
      CO(2) => \counter_reg[24]_i_1_n_1\,
      CO(1) => \counter_reg[24]_i_1_n_2\,
      CO(0) => \counter_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_reg[24]_i_1_n_4\,
      O(2) => \counter_reg[24]_i_1_n_5\,
      O(1) => \counter_reg[24]_i_1_n_6\,
      O(0) => \counter_reg[24]_i_1_n_7\,
      S(3 downto 0) => counter_reg(27 downto 24)
    );
\counter_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => counter0,
      D => \counter_reg[24]_i_1_n_6\,
      Q => counter_reg(25),
      R => counter
    );
\counter_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => counter0,
      D => \counter_reg[24]_i_1_n_5\,
      Q => counter_reg(26),
      R => counter
    );
\counter_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => counter0,
      D => \counter_reg[24]_i_1_n_4\,
      Q => counter_reg(27),
      R => counter
    );
\counter_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => counter0,
      D => \counter_reg[28]_i_1_n_7\,
      Q => counter_reg(28),
      R => counter
    );
\counter_reg[28]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[24]_i_1_n_0\,
      CO(3) => \NLW_counter_reg[28]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \counter_reg[28]_i_1_n_1\,
      CO(1) => \counter_reg[28]_i_1_n_2\,
      CO(0) => \counter_reg[28]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_reg[28]_i_1_n_4\,
      O(2) => \counter_reg[28]_i_1_n_5\,
      O(1) => \counter_reg[28]_i_1_n_6\,
      O(0) => \counter_reg[28]_i_1_n_7\,
      S(3 downto 0) => counter_reg(31 downto 28)
    );
\counter_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => counter0,
      D => \counter_reg[28]_i_1_n_6\,
      Q => counter_reg(29),
      R => counter
    );
\counter_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => counter0,
      D => \counter_reg[0]_i_3_n_5\,
      Q => counter_reg(2),
      R => counter
    );
\counter_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => counter0,
      D => \counter_reg[28]_i_1_n_5\,
      Q => counter_reg(30),
      R => counter
    );
\counter_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => counter0,
      D => \counter_reg[28]_i_1_n_4\,
      Q => counter_reg(31),
      R => counter
    );
\counter_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => counter0,
      D => \counter_reg[0]_i_3_n_4\,
      Q => counter_reg(3),
      R => counter
    );
\counter_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => counter0,
      D => \counter_reg[4]_i_1_n_7\,
      Q => counter_reg(4),
      R => counter
    );
\counter_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[0]_i_3_n_0\,
      CO(3) => \counter_reg[4]_i_1_n_0\,
      CO(2) => \counter_reg[4]_i_1_n_1\,
      CO(1) => \counter_reg[4]_i_1_n_2\,
      CO(0) => \counter_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_reg[4]_i_1_n_4\,
      O(2) => \counter_reg[4]_i_1_n_5\,
      O(1) => \counter_reg[4]_i_1_n_6\,
      O(0) => \counter_reg[4]_i_1_n_7\,
      S(3 downto 0) => counter_reg(7 downto 4)
    );
\counter_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => counter0,
      D => \counter_reg[4]_i_1_n_6\,
      Q => counter_reg(5),
      R => counter
    );
\counter_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => counter0,
      D => \counter_reg[4]_i_1_n_5\,
      Q => counter_reg(6),
      R => counter
    );
\counter_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => counter0,
      D => \counter_reg[4]_i_1_n_4\,
      Q => counter_reg(7),
      R => counter
    );
\counter_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => counter0,
      D => \counter_reg[8]_i_1_n_7\,
      Q => counter_reg(8),
      R => counter
    );
\counter_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[4]_i_1_n_0\,
      CO(3) => \counter_reg[8]_i_1_n_0\,
      CO(2) => \counter_reg[8]_i_1_n_1\,
      CO(1) => \counter_reg[8]_i_1_n_2\,
      CO(0) => \counter_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_reg[8]_i_1_n_4\,
      O(2) => \counter_reg[8]_i_1_n_5\,
      O(1) => \counter_reg[8]_i_1_n_6\,
      O(0) => \counter_reg[8]_i_1_n_7\,
      S(3 downto 0) => counter_reg(11 downto 8)
    );
\counter_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => counter0,
      D => \counter_reg[8]_i_1_n_6\,
      Q => counter_reg(9),
      R => counter
    );
\duty[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFEFEFEFEF0FEFE"
    )
        port map (
      I0 => \duty_reg_n_0_[14]\,
      I1 => \period[15]_i_2_n_0\,
      I2 => \period[15]_i_3_n_0\,
      I3 => \period[15]_i_4_n_0\,
      I4 => \period[15]_i_5_n_0\,
      I5 => \period[15]_i_6_n_0\,
      O => \duty[14]_i_1_n_0\
    );
\duty_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \duty[14]_i_1_n_0\,
      Q => \duty_reg_n_0_[14]\,
      R => '0'
    );
\period[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"02020202020F0202"
    )
        port map (
      I0 => \period_reg_n_0_[0]\,
      I1 => \period[15]_i_2_n_0\,
      I2 => \period[15]_i_3_n_0\,
      I3 => \period[15]_i_4_n_0\,
      I4 => \period[15]_i_5_n_0\,
      I5 => \period[15]_i_6_n_0\,
      O => \period[0]_i_1_n_0\
    );
\period[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFEFEFEFEF0FEFE"
    )
        port map (
      I0 => \period_reg_n_0_[15]\,
      I1 => \period[15]_i_2_n_0\,
      I2 => \period[15]_i_3_n_0\,
      I3 => \period[15]_i_4_n_0\,
      I4 => \period[15]_i_5_n_0\,
      I5 => \period[15]_i_6_n_0\,
      O => \period[15]_i_1_n_0\
    );
\period[15]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => slv_reg4(27),
      I1 => slv_reg4(26),
      I2 => slv_reg4(21),
      I3 => slv_reg4(13),
      O => \period[15]_i_10_n_0\
    );
\period[15]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => slv_reg4(28),
      I1 => slv_reg4(17),
      I2 => slv_reg4(25),
      I3 => slv_reg4(20),
      O => \period[15]_i_11_n_0\
    );
\period[15]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => slv_reg4(23),
      I1 => slv_reg4(2),
      I2 => slv_reg4(22),
      I3 => slv_reg4(3),
      O => \period[15]_i_12_n_0\
    );
\period[15]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => slv_reg4(12),
      I1 => slv_reg4(6),
      I2 => slv_reg4(9),
      I3 => slv_reg4(7),
      O => \period[15]_i_13_n_0\
    );
\period[15]_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => slv_reg4(31),
      I1 => slv_reg4(29),
      I2 => slv_reg4(1),
      I3 => slv_reg4(30),
      O => \period[15]_i_14_n_0\
    );
\period[15]_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => slv_reg1(19),
      I1 => slv_reg1(6),
      I2 => slv_reg1(16),
      I3 => slv_reg1(11),
      O => \period[15]_i_15_n_0\
    );
\period[15]_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFFF"
    )
        port map (
      I0 => slv_reg1(28),
      I1 => slv_reg4(24),
      I2 => slv_reg1(0),
      I3 => slv_reg4(0),
      O => \period[15]_i_16_n_0\
    );
\period[15]_i_17\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => slv_reg1(27),
      I1 => slv_reg1(9),
      I2 => slv_reg1(14),
      I3 => slv_reg1(13),
      O => \period[15]_i_17_n_0\
    );
\period[15]_i_18\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => slv_reg1(24),
      I1 => slv_reg1(17),
      I2 => slv_reg1(12),
      I3 => slv_reg4(16),
      O => \period[15]_i_18_n_0\
    );
\period[15]_i_19\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => slv_reg1(23),
      I1 => slv_reg1(5),
      I2 => slv_reg1(31),
      I3 => slv_reg1(3),
      O => \period[15]_i_19_n_0\
    );
\period[15]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \period[15]_i_7_n_0\,
      I1 => \period[15]_i_8_n_0\,
      I2 => \period[15]_i_9_n_0\,
      I3 => \period[15]_i_10_n_0\,
      O => \period[15]_i_2_n_0\
    );
\period[15]_i_20\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => slv_reg1(22),
      I1 => slv_reg1(1),
      I2 => slv_reg1(18),
      I3 => slv_reg1(15),
      O => \period[15]_i_20_n_0\
    );
\period[15]_i_21\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => slv_reg1(29),
      I1 => slv_reg1(4),
      I2 => slv_reg1(25),
      I3 => slv_reg1(2),
      O => \period[15]_i_21_n_0\
    );
\period[15]_i_22\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => slv_reg1(8),
      I1 => slv_reg1(7),
      I2 => slv_reg1(26),
      I3 => slv_reg1(21),
      O => \period[15]_i_22_n_0\
    );
\period[15]_i_23\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => slv_reg1(20),
      I1 => slv_reg1(10),
      I2 => slv_reg1(30),
      I3 => slv_reg4(5),
      O => \period[15]_i_23_n_0\
    );
\period[15]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \period[15]_i_11_n_0\,
      I1 => \period[15]_i_12_n_0\,
      I2 => \period[15]_i_13_n_0\,
      I3 => \period[15]_i_14_n_0\,
      O => \period[15]_i_3_n_0\
    );
\period[15]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \period[15]_i_15_n_0\,
      I1 => \period[15]_i_16_n_0\,
      I2 => \period[15]_i_17_n_0\,
      I3 => \period[15]_i_10_n_0\,
      O => \period[15]_i_4_n_0\
    );
\period[15]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => \period[15]_i_18_n_0\,
      I1 => \period[15]_i_19_n_0\,
      I2 => \period[15]_i_20_n_0\,
      I3 => \period[15]_i_21_n_0\,
      O => \period[15]_i_5_n_0\
    );
\period[15]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \period[15]_i_7_n_0\,
      I1 => \period[15]_i_8_n_0\,
      I2 => \period[15]_i_22_n_0\,
      I3 => \period[15]_i_23_n_0\,
      O => \period[15]_i_6_n_0\
    );
\period[15]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => slv_reg4(15),
      I1 => slv_reg4(14),
      I2 => slv_reg4(8),
      I3 => slv_reg4(4),
      O => \period[15]_i_7_n_0\
    );
\period[15]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => slv_reg4(19),
      I1 => slv_reg4(10),
      I2 => slv_reg4(18),
      I3 => slv_reg4(11),
      O => \period[15]_i_8_n_0\
    );
\period[15]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => slv_reg4(24),
      I1 => slv_reg4(5),
      I2 => slv_reg4(0),
      I3 => slv_reg4(16),
      O => \period[15]_i_9_n_0\
    );
\period_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \period[0]_i_1_n_0\,
      Q => \period_reg_n_0_[0]\,
      R => '0'
    );
\period_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \period[15]_i_1_n_0\,
      Q => \period_reg_n_0_[15]\,
      R => '0'
    );
pwm_counter1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => pwm_counter1_carry_n_0,
      CO(2) => pwm_counter1_carry_n_1,
      CO(1) => pwm_counter1_carry_n_2,
      CO(0) => pwm_counter1_carry_n_3,
      CYINIT => '0',
      DI(3) => pwm_counter1_carry_i_1_n_0,
      DI(2) => pwm_counter1_carry_i_2_n_0,
      DI(1) => pwm_counter1_carry_i_3_n_0,
      DI(0) => pwm_counter1_carry_i_4_n_0,
      O(3 downto 0) => NLW_pwm_counter1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => pwm_counter1_carry_i_5_n_0,
      S(2) => pwm_counter1_carry_i_6_n_0,
      S(1) => pwm_counter1_carry_i_7_n_0,
      S(0) => pwm_counter1_carry_i_8_n_0
    );
\pwm_counter1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => pwm_counter1_carry_n_0,
      CO(3) => \pwm_counter1_carry__0_n_0\,
      CO(2) => \pwm_counter1_carry__0_n_1\,
      CO(1) => \pwm_counter1_carry__0_n_2\,
      CO(0) => \pwm_counter1_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \pwm_counter1_carry__0_i_1_n_0\,
      DI(2) => \pwm_counter1_carry__0_i_2_n_0\,
      DI(1) => \pwm_counter1_carry__0_i_3_n_0\,
      DI(0) => \pwm_counter1_carry__0_i_4_n_0\,
      O(3 downto 0) => \NLW_pwm_counter1_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \pwm_counter1_carry__0_i_5_n_0\,
      S(2) => \pwm_counter1_carry__0_i_6_n_0\,
      S(1) => \pwm_counter1_carry__0_i_7_n_0\,
      S(0) => \pwm_counter1_carry__0_i_8_n_0\
    );
\pwm_counter1_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => pwm_counter2(15),
      I1 => counter_reg(15),
      I2 => pwm_counter2(14),
      I3 => counter_reg(14),
      O => \pwm_counter1_carry__0_i_1_n_0\
    );
\pwm_counter1_carry__0_i_10\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \pwm_counter1_carry__0_i_10_n_0\,
      CO(2) => \pwm_counter1_carry__0_i_10_n_1\,
      CO(1) => \pwm_counter1_carry__0_i_10_n_2\,
      CO(0) => \pwm_counter1_carry__0_i_10_n_3\,
      CYINIT => \pwm_counter1_carry__0_i_11_n_1\,
      DI(3) => \period_reg_n_0_[15]\,
      DI(2) => \period_reg_n_0_[15]\,
      DI(1) => \period_reg_n_0_[15]\,
      DI(0) => '0',
      O(3 downto 1) => pwm_counter2(14 downto 12),
      O(0) => \NLW_pwm_counter1_carry__0_i_10_O_UNCONNECTED\(0),
      S(3) => \pwm_counter1_carry__0_i_13_n_0\,
      S(2) => \pwm_counter1_carry__0_i_14_n_0\,
      S(1) => \pwm_counter1_carry__0_i_15_n_0\,
      S(0) => '1'
    );
\pwm_counter1_carry__0_i_11\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \NLW_pwm_counter1_carry__0_i_11_CO_UNCONNECTED\(3),
      CO(2) => \pwm_counter1_carry__0_i_11_n_1\,
      CO(1) => \NLW_pwm_counter1_carry__0_i_11_CO_UNCONNECTED\(1),
      CO(0) => \pwm_counter1_carry__0_i_11_n_3\,
      CYINIT => pwm_counter1_carry_i_9_n_1,
      DI(3 downto 2) => B"00",
      DI(1) => \period_reg_n_0_[15]\,
      DI(0) => '0',
      O(3 downto 2) => \NLW_pwm_counter1_carry__0_i_11_O_UNCONNECTED\(3 downto 2),
      O(1) => pwm_counter2(10),
      O(0) => \NLW_pwm_counter1_carry__0_i_11_O_UNCONNECTED\(0),
      S(3 downto 2) => B"01",
      S(1) => \pwm_counter1_carry__0_i_16_n_0\,
      S(0) => '1'
    );
\pwm_counter1_carry__0_i_12\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \period_reg_n_0_[15]\,
      O => \pwm_counter1_carry__0_i_12_n_0\
    );
\pwm_counter1_carry__0_i_13\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \period_reg_n_0_[15]\,
      O => \pwm_counter1_carry__0_i_13_n_0\
    );
\pwm_counter1_carry__0_i_14\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \period_reg_n_0_[15]\,
      O => \pwm_counter1_carry__0_i_14_n_0\
    );
\pwm_counter1_carry__0_i_15\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \period_reg_n_0_[15]\,
      O => \pwm_counter1_carry__0_i_15_n_0\
    );
\pwm_counter1_carry__0_i_16\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \period_reg_n_0_[15]\,
      O => \pwm_counter1_carry__0_i_16_n_0\
    );
\pwm_counter1_carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => pwm_counter2(13),
      I1 => counter_reg(13),
      I2 => pwm_counter2(12),
      I3 => counter_reg(12),
      O => \pwm_counter1_carry__0_i_2_n_0\
    );
\pwm_counter1_carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1171"
    )
        port map (
      I0 => \pwm_counter1_carry__0_i_11_n_1\,
      I1 => counter_reg(11),
      I2 => pwm_counter2(10),
      I3 => counter_reg(10),
      O => \pwm_counter1_carry__0_i_3_n_0\
    );
\pwm_counter1_carry__0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"15"
    )
        port map (
      I0 => pwm_counter1_carry_i_9_n_1,
      I1 => counter_reg(9),
      I2 => counter_reg(8),
      O => \pwm_counter1_carry__0_i_4_n_0\
    );
\pwm_counter1_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => counter_reg(15),
      I1 => pwm_counter2(15),
      I2 => counter_reg(14),
      I3 => pwm_counter2(14),
      O => \pwm_counter1_carry__0_i_5_n_0\
    );
\pwm_counter1_carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => counter_reg(13),
      I1 => pwm_counter2(13),
      I2 => counter_reg(12),
      I3 => pwm_counter2(12),
      O => \pwm_counter1_carry__0_i_6_n_0\
    );
\pwm_counter1_carry__0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6006"
    )
        port map (
      I0 => counter_reg(11),
      I1 => \pwm_counter1_carry__0_i_11_n_1\,
      I2 => counter_reg(10),
      I3 => pwm_counter2(10),
      O => \pwm_counter1_carry__0_i_7_n_0\
    );
\pwm_counter1_carry__0_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"18"
    )
        port map (
      I0 => counter_reg(9),
      I1 => counter_reg(8),
      I2 => pwm_counter1_carry_i_9_n_1,
      O => \pwm_counter1_carry__0_i_8_n_0\
    );
\pwm_counter1_carry__0_i_9\: unisim.vcomponents.CARRY4
     port map (
      CI => \pwm_counter1_carry__0_i_10_n_0\,
      CO(3 downto 2) => \NLW_pwm_counter1_carry__0_i_9_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \pwm_counter1_carry__0_i_9_n_2\,
      CO(0) => \NLW_pwm_counter1_carry__0_i_9_CO_UNCONNECTED\(0),
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \period_reg_n_0_[15]\,
      O(3 downto 1) => \NLW_pwm_counter1_carry__0_i_9_O_UNCONNECTED\(3 downto 1),
      O(0) => pwm_counter2(15),
      S(3 downto 1) => B"001",
      S(0) => \pwm_counter1_carry__0_i_12_n_0\
    );
\pwm_counter1_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \pwm_counter1_carry__0_n_0\,
      CO(3) => \pwm_counter1_carry__1_n_0\,
      CO(2) => \pwm_counter1_carry__1_n_1\,
      CO(1) => \pwm_counter1_carry__1_n_2\,
      CO(0) => \pwm_counter1_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \pwm_counter1_carry__1_i_1_n_0\,
      DI(2) => \pwm_counter1_carry__1_i_2_n_0\,
      DI(1) => \pwm_counter1_carry__1_i_3_n_0\,
      DI(0) => \pwm_counter1_carry__1_i_4_n_0\,
      O(3 downto 0) => \NLW_pwm_counter1_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \pwm_counter1_carry__1_i_5_n_0\,
      S(2) => \pwm_counter1_carry__1_i_6_n_0\,
      S(1) => \pwm_counter1_carry__1_i_7_n_0\,
      S(0) => \pwm_counter1_carry__1_i_8_n_0\
    );
\pwm_counter1_carry__1_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"15"
    )
        port map (
      I0 => \pwm_counter1_carry__0_i_9_n_2\,
      I1 => counter_reg(23),
      I2 => counter_reg(22),
      O => \pwm_counter1_carry__1_i_1_n_0\
    );
\pwm_counter1_carry__1_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"15"
    )
        port map (
      I0 => \pwm_counter1_carry__0_i_9_n_2\,
      I1 => counter_reg(21),
      I2 => counter_reg(20),
      O => \pwm_counter1_carry__1_i_2_n_0\
    );
\pwm_counter1_carry__1_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"15"
    )
        port map (
      I0 => \pwm_counter1_carry__0_i_9_n_2\,
      I1 => counter_reg(19),
      I2 => counter_reg(18),
      O => \pwm_counter1_carry__1_i_3_n_0\
    );
\pwm_counter1_carry__1_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"15"
    )
        port map (
      I0 => \pwm_counter1_carry__0_i_9_n_2\,
      I1 => counter_reg(17),
      I2 => counter_reg(16),
      O => \pwm_counter1_carry__1_i_4_n_0\
    );
\pwm_counter1_carry__1_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"18"
    )
        port map (
      I0 => counter_reg(22),
      I1 => counter_reg(23),
      I2 => \pwm_counter1_carry__0_i_9_n_2\,
      O => \pwm_counter1_carry__1_i_5_n_0\
    );
\pwm_counter1_carry__1_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"18"
    )
        port map (
      I0 => counter_reg(20),
      I1 => counter_reg(21),
      I2 => \pwm_counter1_carry__0_i_9_n_2\,
      O => \pwm_counter1_carry__1_i_6_n_0\
    );
\pwm_counter1_carry__1_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"18"
    )
        port map (
      I0 => counter_reg(18),
      I1 => counter_reg(19),
      I2 => \pwm_counter1_carry__0_i_9_n_2\,
      O => \pwm_counter1_carry__1_i_7_n_0\
    );
\pwm_counter1_carry__1_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"18"
    )
        port map (
      I0 => counter_reg(16),
      I1 => counter_reg(17),
      I2 => \pwm_counter1_carry__0_i_9_n_2\,
      O => \pwm_counter1_carry__1_i_8_n_0\
    );
\pwm_counter1_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \pwm_counter1_carry__1_n_0\,
      CO(3) => pwm_counter1,
      CO(2) => \pwm_counter1_carry__2_n_1\,
      CO(1) => \pwm_counter1_carry__2_n_2\,
      CO(0) => \pwm_counter1_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => \pwm_counter1_carry__2_i_1_n_0\,
      DI(2) => \pwm_counter1_carry__2_i_2_n_0\,
      DI(1) => \pwm_counter1_carry__2_i_3_n_0\,
      DI(0) => \pwm_counter1_carry__2_i_4_n_0\,
      O(3 downto 0) => \NLW_pwm_counter1_carry__2_O_UNCONNECTED\(3 downto 0),
      S(3) => \pwm_counter1_carry__2_i_5_n_0\,
      S(2) => \pwm_counter1_carry__2_i_6_n_0\,
      S(1) => \pwm_counter1_carry__2_i_7_n_0\,
      S(0) => \pwm_counter1_carry__2_i_8_n_0\
    );
\pwm_counter1_carry__2_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"15"
    )
        port map (
      I0 => \pwm_counter1_carry__0_i_9_n_2\,
      I1 => counter_reg(31),
      I2 => counter_reg(30),
      O => \pwm_counter1_carry__2_i_1_n_0\
    );
\pwm_counter1_carry__2_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"15"
    )
        port map (
      I0 => \pwm_counter1_carry__0_i_9_n_2\,
      I1 => counter_reg(29),
      I2 => counter_reg(28),
      O => \pwm_counter1_carry__2_i_2_n_0\
    );
\pwm_counter1_carry__2_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"15"
    )
        port map (
      I0 => \pwm_counter1_carry__0_i_9_n_2\,
      I1 => counter_reg(27),
      I2 => counter_reg(26),
      O => \pwm_counter1_carry__2_i_3_n_0\
    );
\pwm_counter1_carry__2_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"15"
    )
        port map (
      I0 => \pwm_counter1_carry__0_i_9_n_2\,
      I1 => counter_reg(25),
      I2 => counter_reg(24),
      O => \pwm_counter1_carry__2_i_4_n_0\
    );
\pwm_counter1_carry__2_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"18"
    )
        port map (
      I0 => counter_reg(30),
      I1 => counter_reg(31),
      I2 => \pwm_counter1_carry__0_i_9_n_2\,
      O => \pwm_counter1_carry__2_i_5_n_0\
    );
\pwm_counter1_carry__2_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"42"
    )
        port map (
      I0 => \pwm_counter1_carry__0_i_9_n_2\,
      I1 => counter_reg(28),
      I2 => counter_reg(29),
      O => \pwm_counter1_carry__2_i_6_n_0\
    );
\pwm_counter1_carry__2_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"18"
    )
        port map (
      I0 => counter_reg(26),
      I1 => counter_reg(27),
      I2 => \pwm_counter1_carry__0_i_9_n_2\,
      O => \pwm_counter1_carry__2_i_7_n_0\
    );
\pwm_counter1_carry__2_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"18"
    )
        port map (
      I0 => counter_reg(24),
      I1 => counter_reg(25),
      I2 => \pwm_counter1_carry__0_i_9_n_2\,
      O => \pwm_counter1_carry__2_i_8_n_0\
    );
\pwm_counter1_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => pwm_counter1,
      CO(3 downto 0) => \NLW_pwm_counter1_carry__3_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_pwm_counter1_carry__3_O_UNCONNECTED\(3 downto 1),
      O(0) => clear,
      S(3 downto 0) => B"0001"
    );
pwm_counter1_carry_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"15"
    )
        port map (
      I0 => pwm_counter1_carry_i_9_n_1,
      I1 => counter_reg(7),
      I2 => counter_reg(6),
      O => pwm_counter1_carry_i_1_n_0
    );
pwm_counter1_carry_i_10: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \period_reg_n_0_[15]\,
      I1 => \period_reg_n_0_[0]\,
      O => pwm_counter1_carry_i_10_n_0
    );
pwm_counter1_carry_i_11: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \period_reg_n_0_[15]\,
      O => pwm_counter1_carry_i_11_n_0
    );
pwm_counter1_carry_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2222222B"
    )
        port map (
      I0 => pwm_counter2(5),
      I1 => counter_reg(5),
      I2 => \period_reg_n_0_[0]\,
      I3 => \period_reg_n_0_[15]\,
      I4 => counter_reg(4),
      O => pwm_counter1_carry_i_2_n_0
    );
pwm_counter1_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0119"
    )
        port map (
      I0 => \period_reg_n_0_[0]\,
      I1 => \period_reg_n_0_[15]\,
      I2 => counter_reg(3),
      I3 => counter_reg(2),
      O => pwm_counter1_carry_i_3_n_0
    );
pwm_counter1_carry_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"07"
    )
        port map (
      I0 => counter_reg(1),
      I1 => counter_reg(0),
      I2 => \period_reg_n_0_[0]\,
      O => pwm_counter1_carry_i_4_n_0
    );
pwm_counter1_carry_i_5: unisim.vcomponents.LUT3
    generic map(
      INIT => X"18"
    )
        port map (
      I0 => counter_reg(7),
      I1 => counter_reg(6),
      I2 => pwm_counter1_carry_i_9_n_1,
      O => pwm_counter1_carry_i_5_n_0
    );
pwm_counter1_carry_i_6: unisim.vcomponents.LUT5
    generic map(
      INIT => X"56000056"
    )
        port map (
      I0 => counter_reg(4),
      I1 => \period_reg_n_0_[15]\,
      I2 => \period_reg_n_0_[0]\,
      I3 => counter_reg(5),
      I4 => pwm_counter2(5),
      O => pwm_counter1_carry_i_6_n_0
    );
pwm_counter1_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4118"
    )
        port map (
      I0 => counter_reg(3),
      I1 => counter_reg(2),
      I2 => \period_reg_n_0_[0]\,
      I3 => \period_reg_n_0_[15]\,
      O => pwm_counter1_carry_i_7_n_0
    );
pwm_counter1_carry_i_8: unisim.vcomponents.LUT3
    generic map(
      INIT => X"42"
    )
        port map (
      I0 => \period_reg_n_0_[0]\,
      I1 => counter_reg(0),
      I2 => counter_reg(1),
      O => pwm_counter1_carry_i_8_n_0
    );
pwm_counter1_carry_i_9: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => NLW_pwm_counter1_carry_i_9_CO_UNCONNECTED(3),
      CO(2) => pwm_counter1_carry_i_9_n_1,
      CO(1) => NLW_pwm_counter1_carry_i_9_CO_UNCONNECTED(1),
      CO(0) => pwm_counter1_carry_i_9_n_3,
      CYINIT => pwm_counter1_carry_i_10_n_0,
      DI(3 downto 2) => B"00",
      DI(1) => \period_reg_n_0_[15]\,
      DI(0) => '0',
      O(3 downto 2) => NLW_pwm_counter1_carry_i_9_O_UNCONNECTED(3 downto 2),
      O(1) => pwm_counter2(5),
      O(0) => NLW_pwm_counter1_carry_i_9_O_UNCONNECTED(0),
      S(3 downto 2) => B"01",
      S(1) => pwm_counter1_carry_i_11_n_0,
      S(0) => '1'
    );
\pwm_counter[0]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pwm_counter_reg(0),
      O => \pwm_counter[0]_i_2_n_0\
    );
\pwm_counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \pwm_counter_reg[0]_i_1_n_7\,
      Q => pwm_counter_reg(0),
      R => clear
    );
\pwm_counter_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \pwm_counter_reg[0]_i_1_n_0\,
      CO(2) => \pwm_counter_reg[0]_i_1_n_1\,
      CO(1) => \pwm_counter_reg[0]_i_1_n_2\,
      CO(0) => \pwm_counter_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \pwm_counter_reg[0]_i_1_n_4\,
      O(2) => \pwm_counter_reg[0]_i_1_n_5\,
      O(1) => \pwm_counter_reg[0]_i_1_n_6\,
      O(0) => \pwm_counter_reg[0]_i_1_n_7\,
      S(3 downto 1) => pwm_counter_reg(3 downto 1),
      S(0) => \pwm_counter[0]_i_2_n_0\
    );
\pwm_counter_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \pwm_counter_reg[8]_i_1_n_5\,
      Q => pwm_counter_reg(10),
      R => clear
    );
\pwm_counter_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \pwm_counter_reg[8]_i_1_n_4\,
      Q => pwm_counter_reg(11),
      R => clear
    );
\pwm_counter_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \pwm_counter_reg[12]_i_1_n_7\,
      Q => pwm_counter_reg(12),
      R => clear
    );
\pwm_counter_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \pwm_counter_reg[8]_i_1_n_0\,
      CO(3) => \pwm_counter_reg[12]_i_1_n_0\,
      CO(2) => \pwm_counter_reg[12]_i_1_n_1\,
      CO(1) => \pwm_counter_reg[12]_i_1_n_2\,
      CO(0) => \pwm_counter_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \pwm_counter_reg[12]_i_1_n_4\,
      O(2) => \pwm_counter_reg[12]_i_1_n_5\,
      O(1) => \pwm_counter_reg[12]_i_1_n_6\,
      O(0) => \pwm_counter_reg[12]_i_1_n_7\,
      S(3 downto 0) => pwm_counter_reg(15 downto 12)
    );
\pwm_counter_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \pwm_counter_reg[12]_i_1_n_6\,
      Q => pwm_counter_reg(13),
      R => clear
    );
\pwm_counter_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \pwm_counter_reg[12]_i_1_n_5\,
      Q => pwm_counter_reg(14),
      R => clear
    );
\pwm_counter_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \pwm_counter_reg[12]_i_1_n_4\,
      Q => pwm_counter_reg(15),
      R => clear
    );
\pwm_counter_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \pwm_counter_reg[16]_i_1_n_7\,
      Q => pwm_counter_reg(16),
      R => clear
    );
\pwm_counter_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \pwm_counter_reg[12]_i_1_n_0\,
      CO(3) => \pwm_counter_reg[16]_i_1_n_0\,
      CO(2) => \pwm_counter_reg[16]_i_1_n_1\,
      CO(1) => \pwm_counter_reg[16]_i_1_n_2\,
      CO(0) => \pwm_counter_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \pwm_counter_reg[16]_i_1_n_4\,
      O(2) => \pwm_counter_reg[16]_i_1_n_5\,
      O(1) => \pwm_counter_reg[16]_i_1_n_6\,
      O(0) => \pwm_counter_reg[16]_i_1_n_7\,
      S(3 downto 0) => pwm_counter_reg(19 downto 16)
    );
\pwm_counter_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \pwm_counter_reg[16]_i_1_n_6\,
      Q => pwm_counter_reg(17),
      R => clear
    );
\pwm_counter_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \pwm_counter_reg[16]_i_1_n_5\,
      Q => pwm_counter_reg(18),
      R => clear
    );
\pwm_counter_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \pwm_counter_reg[16]_i_1_n_4\,
      Q => pwm_counter_reg(19),
      R => clear
    );
\pwm_counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \pwm_counter_reg[0]_i_1_n_6\,
      Q => pwm_counter_reg(1),
      R => clear
    );
\pwm_counter_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \pwm_counter_reg[20]_i_1_n_7\,
      Q => pwm_counter_reg(20),
      R => clear
    );
\pwm_counter_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \pwm_counter_reg[16]_i_1_n_0\,
      CO(3) => \pwm_counter_reg[20]_i_1_n_0\,
      CO(2) => \pwm_counter_reg[20]_i_1_n_1\,
      CO(1) => \pwm_counter_reg[20]_i_1_n_2\,
      CO(0) => \pwm_counter_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \pwm_counter_reg[20]_i_1_n_4\,
      O(2) => \pwm_counter_reg[20]_i_1_n_5\,
      O(1) => \pwm_counter_reg[20]_i_1_n_6\,
      O(0) => \pwm_counter_reg[20]_i_1_n_7\,
      S(3 downto 0) => pwm_counter_reg(23 downto 20)
    );
\pwm_counter_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \pwm_counter_reg[20]_i_1_n_6\,
      Q => pwm_counter_reg(21),
      R => clear
    );
\pwm_counter_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \pwm_counter_reg[20]_i_1_n_5\,
      Q => pwm_counter_reg(22),
      R => clear
    );
\pwm_counter_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \pwm_counter_reg[20]_i_1_n_4\,
      Q => pwm_counter_reg(23),
      R => clear
    );
\pwm_counter_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \pwm_counter_reg[24]_i_1_n_7\,
      Q => pwm_counter_reg(24),
      R => clear
    );
\pwm_counter_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \pwm_counter_reg[20]_i_1_n_0\,
      CO(3) => \pwm_counter_reg[24]_i_1_n_0\,
      CO(2) => \pwm_counter_reg[24]_i_1_n_1\,
      CO(1) => \pwm_counter_reg[24]_i_1_n_2\,
      CO(0) => \pwm_counter_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \pwm_counter_reg[24]_i_1_n_4\,
      O(2) => \pwm_counter_reg[24]_i_1_n_5\,
      O(1) => \pwm_counter_reg[24]_i_1_n_6\,
      O(0) => \pwm_counter_reg[24]_i_1_n_7\,
      S(3 downto 0) => pwm_counter_reg(27 downto 24)
    );
\pwm_counter_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \pwm_counter_reg[24]_i_1_n_6\,
      Q => pwm_counter_reg(25),
      R => clear
    );
\pwm_counter_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \pwm_counter_reg[24]_i_1_n_5\,
      Q => pwm_counter_reg(26),
      R => clear
    );
\pwm_counter_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \pwm_counter_reg[24]_i_1_n_4\,
      Q => pwm_counter_reg(27),
      R => clear
    );
\pwm_counter_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \pwm_counter_reg[28]_i_1_n_7\,
      Q => pwm_counter_reg(28),
      R => clear
    );
\pwm_counter_reg[28]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \pwm_counter_reg[24]_i_1_n_0\,
      CO(3) => \NLW_pwm_counter_reg[28]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \pwm_counter_reg[28]_i_1_n_1\,
      CO(1) => \pwm_counter_reg[28]_i_1_n_2\,
      CO(0) => \pwm_counter_reg[28]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \pwm_counter_reg[28]_i_1_n_4\,
      O(2) => \pwm_counter_reg[28]_i_1_n_5\,
      O(1) => \pwm_counter_reg[28]_i_1_n_6\,
      O(0) => \pwm_counter_reg[28]_i_1_n_7\,
      S(3 downto 0) => pwm_counter_reg(31 downto 28)
    );
\pwm_counter_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \pwm_counter_reg[28]_i_1_n_6\,
      Q => pwm_counter_reg(29),
      R => clear
    );
\pwm_counter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \pwm_counter_reg[0]_i_1_n_5\,
      Q => pwm_counter_reg(2),
      R => clear
    );
\pwm_counter_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \pwm_counter_reg[28]_i_1_n_5\,
      Q => pwm_counter_reg(30),
      R => clear
    );
\pwm_counter_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \pwm_counter_reg[28]_i_1_n_4\,
      Q => pwm_counter_reg(31),
      R => clear
    );
\pwm_counter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \pwm_counter_reg[0]_i_1_n_4\,
      Q => pwm_counter_reg(3),
      R => clear
    );
\pwm_counter_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \pwm_counter_reg[4]_i_1_n_7\,
      Q => pwm_counter_reg(4),
      R => clear
    );
\pwm_counter_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \pwm_counter_reg[0]_i_1_n_0\,
      CO(3) => \pwm_counter_reg[4]_i_1_n_0\,
      CO(2) => \pwm_counter_reg[4]_i_1_n_1\,
      CO(1) => \pwm_counter_reg[4]_i_1_n_2\,
      CO(0) => \pwm_counter_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \pwm_counter_reg[4]_i_1_n_4\,
      O(2) => \pwm_counter_reg[4]_i_1_n_5\,
      O(1) => \pwm_counter_reg[4]_i_1_n_6\,
      O(0) => \pwm_counter_reg[4]_i_1_n_7\,
      S(3 downto 0) => pwm_counter_reg(7 downto 4)
    );
\pwm_counter_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \pwm_counter_reg[4]_i_1_n_6\,
      Q => pwm_counter_reg(5),
      R => clear
    );
\pwm_counter_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \pwm_counter_reg[4]_i_1_n_5\,
      Q => pwm_counter_reg(6),
      R => clear
    );
\pwm_counter_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \pwm_counter_reg[4]_i_1_n_4\,
      Q => pwm_counter_reg(7),
      R => clear
    );
\pwm_counter_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \pwm_counter_reg[8]_i_1_n_7\,
      Q => pwm_counter_reg(8),
      R => clear
    );
\pwm_counter_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \pwm_counter_reg[4]_i_1_n_0\,
      CO(3) => \pwm_counter_reg[8]_i_1_n_0\,
      CO(2) => \pwm_counter_reg[8]_i_1_n_1\,
      CO(1) => \pwm_counter_reg[8]_i_1_n_2\,
      CO(0) => \pwm_counter_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \pwm_counter_reg[8]_i_1_n_4\,
      O(2) => \pwm_counter_reg[8]_i_1_n_5\,
      O(1) => \pwm_counter_reg[8]_i_1_n_6\,
      O(0) => \pwm_counter_reg[8]_i_1_n_7\,
      S(3 downto 0) => pwm_counter_reg(11 downto 8)
    );
\pwm_counter_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \pwm_counter_reg[8]_i_1_n_6\,
      Q => pwm_counter_reg(9),
      R => clear
    );
\slv_reg1[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000000"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => p_0_in(2),
      I2 => p_0_in(1),
      I3 => s00_axi_wstrb(1),
      I4 => p_0_in(0),
      O => \slv_reg1[15]_i_1_n_0\
    );
\slv_reg1[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000000"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => p_0_in(2),
      I2 => p_0_in(1),
      I3 => s00_axi_wstrb(2),
      I4 => p_0_in(0),
      O => \slv_reg1[23]_i_1_n_0\
    );
\slv_reg1[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000000"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => p_0_in(2),
      I2 => p_0_in(1),
      I3 => s00_axi_wstrb(3),
      I4 => p_0_in(0),
      O => \slv_reg1[31]_i_1_n_0\
    );
\slv_reg1[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000000"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => p_0_in(2),
      I2 => p_0_in(1),
      I3 => s00_axi_wstrb(0),
      I4 => p_0_in(0),
      O => \slv_reg1[7]_i_1_n_0\
    );
\slv_reg1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg1(0),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg1(10),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg1(11),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg1(12),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg1(13),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg1(14),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg1(15),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg1(16),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg1(17),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg1(18),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg1(19),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg1(1),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg1(20),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg1(21),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg1(22),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg1(23),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg1(24),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg1(25),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg1(26),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg1(27),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg1(28),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg1(29),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg1(2),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg1(30),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg1(31),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg1(3),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg1(4),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg1(5),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg1(6),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg1(7),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg1(8),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg1(9),
      R => axi_awready_i_1_n_0
    );
\slv_reg4[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000000"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => p_0_in(2),
      I4 => s00_axi_wstrb(1),
      O => p_1_in(8)
    );
\slv_reg4[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000000"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => p_0_in(2),
      I4 => s00_axi_wstrb(2),
      O => p_1_in(16)
    );
\slv_reg4[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000000"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => p_0_in(2),
      I4 => s00_axi_wstrb(3),
      O => p_1_in(24)
    );
\slv_reg4[31]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \^s_axi_awready\,
      I1 => s00_axi_wvalid,
      I2 => \^s_axi_wready\,
      I3 => s00_axi_awvalid,
      O => \slv_reg_wren__2\
    );
\slv_reg4[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000000"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => p_0_in(2),
      I4 => s00_axi_wstrb(0),
      O => p_1_in(1)
    );
\slv_reg4_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(1),
      D => s00_axi_wdata(0),
      Q => slv_reg4(0),
      R => axi_awready_i_1_n_0
    );
\slv_reg4_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(8),
      D => s00_axi_wdata(10),
      Q => slv_reg4(10),
      R => axi_awready_i_1_n_0
    );
\slv_reg4_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(8),
      D => s00_axi_wdata(11),
      Q => slv_reg4(11),
      R => axi_awready_i_1_n_0
    );
\slv_reg4_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(8),
      D => s00_axi_wdata(12),
      Q => slv_reg4(12),
      R => axi_awready_i_1_n_0
    );
\slv_reg4_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(8),
      D => s00_axi_wdata(13),
      Q => slv_reg4(13),
      R => axi_awready_i_1_n_0
    );
\slv_reg4_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(8),
      D => s00_axi_wdata(14),
      Q => slv_reg4(14),
      R => axi_awready_i_1_n_0
    );
\slv_reg4_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(8),
      D => s00_axi_wdata(15),
      Q => slv_reg4(15),
      R => axi_awready_i_1_n_0
    );
\slv_reg4_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(16),
      D => s00_axi_wdata(16),
      Q => slv_reg4(16),
      R => axi_awready_i_1_n_0
    );
\slv_reg4_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(16),
      D => s00_axi_wdata(17),
      Q => slv_reg4(17),
      R => axi_awready_i_1_n_0
    );
\slv_reg4_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(16),
      D => s00_axi_wdata(18),
      Q => slv_reg4(18),
      R => axi_awready_i_1_n_0
    );
\slv_reg4_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(16),
      D => s00_axi_wdata(19),
      Q => slv_reg4(19),
      R => axi_awready_i_1_n_0
    );
\slv_reg4_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(1),
      D => s00_axi_wdata(1),
      Q => slv_reg4(1),
      R => axi_awready_i_1_n_0
    );
\slv_reg4_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(16),
      D => s00_axi_wdata(20),
      Q => slv_reg4(20),
      R => axi_awready_i_1_n_0
    );
\slv_reg4_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(16),
      D => s00_axi_wdata(21),
      Q => slv_reg4(21),
      R => axi_awready_i_1_n_0
    );
\slv_reg4_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(16),
      D => s00_axi_wdata(22),
      Q => slv_reg4(22),
      R => axi_awready_i_1_n_0
    );
\slv_reg4_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(16),
      D => s00_axi_wdata(23),
      Q => slv_reg4(23),
      R => axi_awready_i_1_n_0
    );
\slv_reg4_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(24),
      D => s00_axi_wdata(24),
      Q => slv_reg4(24),
      R => axi_awready_i_1_n_0
    );
\slv_reg4_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(24),
      D => s00_axi_wdata(25),
      Q => slv_reg4(25),
      R => axi_awready_i_1_n_0
    );
\slv_reg4_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(24),
      D => s00_axi_wdata(26),
      Q => slv_reg4(26),
      R => axi_awready_i_1_n_0
    );
\slv_reg4_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(24),
      D => s00_axi_wdata(27),
      Q => slv_reg4(27),
      R => axi_awready_i_1_n_0
    );
\slv_reg4_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(24),
      D => s00_axi_wdata(28),
      Q => slv_reg4(28),
      R => axi_awready_i_1_n_0
    );
\slv_reg4_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(24),
      D => s00_axi_wdata(29),
      Q => slv_reg4(29),
      R => axi_awready_i_1_n_0
    );
\slv_reg4_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(1),
      D => s00_axi_wdata(2),
      Q => slv_reg4(2),
      R => axi_awready_i_1_n_0
    );
\slv_reg4_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(24),
      D => s00_axi_wdata(30),
      Q => slv_reg4(30),
      R => axi_awready_i_1_n_0
    );
\slv_reg4_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(24),
      D => s00_axi_wdata(31),
      Q => slv_reg4(31),
      R => axi_awready_i_1_n_0
    );
\slv_reg4_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(1),
      D => s00_axi_wdata(3),
      Q => slv_reg4(3),
      R => axi_awready_i_1_n_0
    );
\slv_reg4_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(1),
      D => s00_axi_wdata(4),
      Q => slv_reg4(4),
      R => axi_awready_i_1_n_0
    );
\slv_reg4_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(1),
      D => s00_axi_wdata(5),
      Q => slv_reg4(5),
      R => axi_awready_i_1_n_0
    );
\slv_reg4_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(1),
      D => s00_axi_wdata(6),
      Q => slv_reg4(6),
      R => axi_awready_i_1_n_0
    );
\slv_reg4_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(1),
      D => s00_axi_wdata(7),
      Q => slv_reg4(7),
      R => axi_awready_i_1_n_0
    );
\slv_reg4_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(8),
      D => s00_axi_wdata(8),
      Q => slv_reg4(8),
      R => axi_awready_i_1_n_0
    );
\slv_reg4_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(8),
      D => s00_axi_wdata(9),
      Q => slv_reg4(9),
      R => axi_awready_i_1_n_0
    );
\slv_reg5[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20000000"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => p_0_in(1),
      I2 => s00_axi_wstrb(1),
      I3 => p_0_in(0),
      I4 => p_0_in(2),
      O => \slv_reg5[15]_i_1_n_0\
    );
\slv_reg5[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20000000"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => p_0_in(1),
      I2 => s00_axi_wstrb(2),
      I3 => p_0_in(0),
      I4 => p_0_in(2),
      O => \slv_reg5[23]_i_1_n_0\
    );
\slv_reg5[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20000000"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => p_0_in(1),
      I2 => s00_axi_wstrb(3),
      I3 => p_0_in(0),
      I4 => p_0_in(2),
      O => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg5[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20000000"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => p_0_in(1),
      I2 => s00_axi_wstrb(0),
      I3 => p_0_in(0),
      I4 => p_0_in(2),
      O => \slv_reg5[7]_i_1_n_0\
    );
\slv_reg5_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg5(0),
      R => axi_awready_i_1_n_0
    );
\slv_reg5_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg5(10),
      R => axi_awready_i_1_n_0
    );
\slv_reg5_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg5(11),
      R => axi_awready_i_1_n_0
    );
\slv_reg5_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg5(12),
      R => axi_awready_i_1_n_0
    );
\slv_reg5_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg5(13),
      R => axi_awready_i_1_n_0
    );
\slv_reg5_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg5(14),
      R => axi_awready_i_1_n_0
    );
\slv_reg5_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg5(15),
      R => axi_awready_i_1_n_0
    );
\slv_reg5_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg5(16),
      R => axi_awready_i_1_n_0
    );
\slv_reg5_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg5(17),
      R => axi_awready_i_1_n_0
    );
\slv_reg5_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg5(18),
      R => axi_awready_i_1_n_0
    );
\slv_reg5_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg5(19),
      R => axi_awready_i_1_n_0
    );
\slv_reg5_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg5(1),
      R => axi_awready_i_1_n_0
    );
\slv_reg5_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg5(20),
      R => axi_awready_i_1_n_0
    );
\slv_reg5_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg5(21),
      R => axi_awready_i_1_n_0
    );
\slv_reg5_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg5(22),
      R => axi_awready_i_1_n_0
    );
\slv_reg5_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg5(23),
      R => axi_awready_i_1_n_0
    );
\slv_reg5_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg5(24),
      R => axi_awready_i_1_n_0
    );
\slv_reg5_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg5(25),
      R => axi_awready_i_1_n_0
    );
\slv_reg5_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg5(26),
      R => axi_awready_i_1_n_0
    );
\slv_reg5_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg5(27),
      R => axi_awready_i_1_n_0
    );
\slv_reg5_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg5(28),
      R => axi_awready_i_1_n_0
    );
\slv_reg5_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg5(29),
      R => axi_awready_i_1_n_0
    );
\slv_reg5_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg5(2),
      R => axi_awready_i_1_n_0
    );
\slv_reg5_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg5(30),
      R => axi_awready_i_1_n_0
    );
\slv_reg5_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg5(31),
      R => axi_awready_i_1_n_0
    );
\slv_reg5_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg5(3),
      R => axi_awready_i_1_n_0
    );
\slv_reg5_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg5(4),
      R => axi_awready_i_1_n_0
    );
\slv_reg5_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg5(5),
      R => axi_awready_i_1_n_0
    );
\slv_reg5_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg5(6),
      R => axi_awready_i_1_n_0
    );
\slv_reg5_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg5(7),
      R => axi_awready_i_1_n_0
    );
\slv_reg5_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg5(8),
      R => axi_awready_i_1_n_0
    );
\slv_reg5_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg5(9),
      R => axi_awready_i_1_n_0
    );
\slv_reg6[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20000000"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => p_0_in(0),
      I2 => p_0_in(1),
      I3 => s00_axi_wstrb(1),
      I4 => p_0_in(2),
      O => \slv_reg6[15]_i_1_n_0\
    );
\slv_reg6[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20000000"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => p_0_in(0),
      I2 => p_0_in(1),
      I3 => s00_axi_wstrb(2),
      I4 => p_0_in(2),
      O => \slv_reg6[23]_i_1_n_0\
    );
\slv_reg6[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20000000"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => p_0_in(0),
      I2 => p_0_in(1),
      I3 => s00_axi_wstrb(3),
      I4 => p_0_in(2),
      O => \slv_reg6[31]_i_1_n_0\
    );
\slv_reg6[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20000000"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => p_0_in(0),
      I2 => p_0_in(1),
      I3 => s00_axi_wstrb(0),
      I4 => p_0_in(2),
      O => \slv_reg6[7]_i_1_n_0\
    );
\slv_reg6_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg6(0),
      R => axi_awready_i_1_n_0
    );
\slv_reg6_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg6(10),
      R => axi_awready_i_1_n_0
    );
\slv_reg6_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg6(11),
      R => axi_awready_i_1_n_0
    );
\slv_reg6_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg6(12),
      R => axi_awready_i_1_n_0
    );
\slv_reg6_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg6(13),
      R => axi_awready_i_1_n_0
    );
\slv_reg6_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg6(14),
      R => axi_awready_i_1_n_0
    );
\slv_reg6_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg6(15),
      R => axi_awready_i_1_n_0
    );
\slv_reg6_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg6(16),
      R => axi_awready_i_1_n_0
    );
\slv_reg6_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg6(17),
      R => axi_awready_i_1_n_0
    );
\slv_reg6_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg6(18),
      R => axi_awready_i_1_n_0
    );
\slv_reg6_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg6(19),
      R => axi_awready_i_1_n_0
    );
\slv_reg6_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg6(1),
      R => axi_awready_i_1_n_0
    );
\slv_reg6_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg6(20),
      R => axi_awready_i_1_n_0
    );
\slv_reg6_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg6(21),
      R => axi_awready_i_1_n_0
    );
\slv_reg6_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg6(22),
      R => axi_awready_i_1_n_0
    );
\slv_reg6_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg6(23),
      R => axi_awready_i_1_n_0
    );
\slv_reg6_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg6(24),
      R => axi_awready_i_1_n_0
    );
\slv_reg6_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg6(25),
      R => axi_awready_i_1_n_0
    );
\slv_reg6_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg6(26),
      R => axi_awready_i_1_n_0
    );
\slv_reg6_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg6(27),
      R => axi_awready_i_1_n_0
    );
\slv_reg6_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg6(28),
      R => axi_awready_i_1_n_0
    );
\slv_reg6_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg6(29),
      R => axi_awready_i_1_n_0
    );
\slv_reg6_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg6(2),
      R => axi_awready_i_1_n_0
    );
\slv_reg6_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg6(30),
      R => axi_awready_i_1_n_0
    );
\slv_reg6_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg6(31),
      R => axi_awready_i_1_n_0
    );
\slv_reg6_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg6(3),
      R => axi_awready_i_1_n_0
    );
\slv_reg6_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg6(4),
      R => axi_awready_i_1_n_0
    );
\slv_reg6_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg6(5),
      R => axi_awready_i_1_n_0
    );
\slv_reg6_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg6(6),
      R => axi_awready_i_1_n_0
    );
\slv_reg6_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg6(7),
      R => axi_awready_i_1_n_0
    );
\slv_reg6_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg6(8),
      R => axi_awready_i_1_n_0
    );
\slv_reg6_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg6(9),
      R => axi_awready_i_1_n_0
    );
\slv_reg7[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => p_0_in(2),
      I4 => s00_axi_wstrb(1),
      O => \slv_reg7[15]_i_1_n_0\
    );
\slv_reg7[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => p_0_in(2),
      I4 => s00_axi_wstrb(2),
      O => \slv_reg7[23]_i_1_n_0\
    );
\slv_reg7[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => p_0_in(2),
      I4 => s00_axi_wstrb(3),
      O => \slv_reg7[31]_i_1_n_0\
    );
\slv_reg7[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => p_0_in(2),
      I4 => s00_axi_wstrb(0),
      O => \slv_reg7[7]_i_1_n_0\
    );
\slv_reg7_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg7(0),
      R => axi_awready_i_1_n_0
    );
\slv_reg7_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg7(10),
      R => axi_awready_i_1_n_0
    );
\slv_reg7_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg7(11),
      R => axi_awready_i_1_n_0
    );
\slv_reg7_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg7(12),
      R => axi_awready_i_1_n_0
    );
\slv_reg7_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg7(13),
      R => axi_awready_i_1_n_0
    );
\slv_reg7_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg7(14),
      R => axi_awready_i_1_n_0
    );
\slv_reg7_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg7(15),
      R => axi_awready_i_1_n_0
    );
\slv_reg7_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg7(16),
      R => axi_awready_i_1_n_0
    );
\slv_reg7_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg7(17),
      R => axi_awready_i_1_n_0
    );
\slv_reg7_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg7(18),
      R => axi_awready_i_1_n_0
    );
\slv_reg7_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg7(19),
      R => axi_awready_i_1_n_0
    );
\slv_reg7_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg7(1),
      R => axi_awready_i_1_n_0
    );
\slv_reg7_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg7(20),
      R => axi_awready_i_1_n_0
    );
\slv_reg7_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg7(21),
      R => axi_awready_i_1_n_0
    );
\slv_reg7_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg7(22),
      R => axi_awready_i_1_n_0
    );
\slv_reg7_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg7(23),
      R => axi_awready_i_1_n_0
    );
\slv_reg7_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg7(24),
      R => axi_awready_i_1_n_0
    );
\slv_reg7_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg7(25),
      R => axi_awready_i_1_n_0
    );
\slv_reg7_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg7(26),
      R => axi_awready_i_1_n_0
    );
\slv_reg7_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg7(27),
      R => axi_awready_i_1_n_0
    );
\slv_reg7_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg7(28),
      R => axi_awready_i_1_n_0
    );
\slv_reg7_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg7(29),
      R => axi_awready_i_1_n_0
    );
\slv_reg7_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg7(2),
      R => axi_awready_i_1_n_0
    );
\slv_reg7_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg7(30),
      R => axi_awready_i_1_n_0
    );
\slv_reg7_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg7(31),
      R => axi_awready_i_1_n_0
    );
\slv_reg7_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg7(3),
      R => axi_awready_i_1_n_0
    );
\slv_reg7_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg7(4),
      R => axi_awready_i_1_n_0
    );
\slv_reg7_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg7(5),
      R => axi_awready_i_1_n_0
    );
\slv_reg7_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg7(6),
      R => axi_awready_i_1_n_0
    );
\slv_reg7_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg7(7),
      R => axi_awready_i_1_n_0
    );
\slv_reg7_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg7(8),
      R => axi_awready_i_1_n_0
    );
\slv_reg7_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg7(9),
      R => axi_awready_i_1_n_0
    );
slv_reg_rden: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \^s00_axi_rvalid\,
      I1 => s00_axi_arvalid,
      I2 => \^s_axi_arready\,
      O => \slv_reg_rden__0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_My_ALLSTEP_Core_0_0_My_ALLSTEP_Core_v1_0 is
  port (
    S_AXI_AWREADY : out STD_LOGIC;
    S_AXI_WREADY : out STD_LOGIC;
    S_AXI_ARREADY : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    PWM0 : out STD_LOGIC;
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    PWM_SIG : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Z_SIG : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_My_ALLSTEP_Core_0_0_My_ALLSTEP_Core_v1_0 : entity is "My_ALLSTEP_Core_v1_0";
end design_1_My_ALLSTEP_Core_0_0_My_ALLSTEP_Core_v1_0;

architecture STRUCTURE of design_1_My_ALLSTEP_Core_0_0_My_ALLSTEP_Core_v1_0 is
begin
My_ALLSTEP_Core_v1_0_S00_AXI_inst: entity work.design_1_My_ALLSTEP_Core_0_0_My_ALLSTEP_Core_v1_0_S00_AXI
     port map (
      PWM0 => PWM0,
      PWM_SIG => PWM_SIG,
      S_AXI_ARREADY => S_AXI_ARREADY,
      S_AXI_AWREADY => S_AXI_AWREADY,
      S_AXI_WREADY => S_AXI_WREADY,
      Z_SIG => Z_SIG,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(2 downto 0) => s00_axi_araddr(2 downto 0),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(2 downto 0) => s00_axi_awaddr(2 downto 0),
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_rdata(31 downto 0) => s00_axi_rdata(31 downto 0),
      s00_axi_rready => s00_axi_rready,
      s00_axi_rvalid => s00_axi_rvalid,
      s00_axi_wdata(31 downto 0) => s00_axi_wdata(31 downto 0),
      s00_axi_wstrb(3 downto 0) => s00_axi_wstrb(3 downto 0),
      s00_axi_wvalid => s00_axi_wvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_My_ALLSTEP_Core_0_0 is
  port (
    PWM_SIG : in STD_LOGIC;
    Z_SIG : in STD_LOGIC;
    PWM0 : out STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s00_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_awready : out STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s00_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_My_ALLSTEP_Core_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_My_ALLSTEP_Core_0_0 : entity is "design_1_My_ALLSTEP_Core_0_0,My_ALLSTEP_Core_v1_0,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_My_ALLSTEP_Core_0_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_My_ALLSTEP_Core_0_0 : entity is "My_ALLSTEP_Core_v1_0,Vivado 2017.4";
end design_1_My_ALLSTEP_Core_0_0;

architecture STRUCTURE of design_1_My_ALLSTEP_Core_0_0 is
  signal \<const0>\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of s00_axi_aclk : signal is "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of s00_axi_aclk : signal is "XIL_INTERFACENAME S00_AXI_CLK, ASSOCIATED_BUSIF S00_AXI, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0";
  attribute X_INTERFACE_INFO of s00_axi_aresetn : signal is "xilinx.com:signal:reset:1.0 S00_AXI_RST RST";
  attribute X_INTERFACE_PARAMETER of s00_axi_aresetn : signal is "XIL_INTERFACENAME S00_AXI_RST, POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of s00_axi_arready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY";
  attribute X_INTERFACE_INFO of s00_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID";
  attribute X_INTERFACE_INFO of s00_axi_awready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY";
  attribute X_INTERFACE_INFO of s00_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID";
  attribute X_INTERFACE_INFO of s00_axi_bready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BREADY";
  attribute X_INTERFACE_INFO of s00_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BVALID";
  attribute X_INTERFACE_INFO of s00_axi_rready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RREADY";
  attribute X_INTERFACE_PARAMETER of s00_axi_rready : signal is "XIL_INTERFACENAME S00_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 8, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 5, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 8, NUM_WRITE_OUTSTANDING 8, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 4, NUM_WRITE_THREADS 4, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0";
  attribute X_INTERFACE_INFO of s00_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RVALID";
  attribute X_INTERFACE_INFO of s00_axi_wready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WREADY";
  attribute X_INTERFACE_INFO of s00_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WVALID";
  attribute X_INTERFACE_INFO of s00_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR";
  attribute X_INTERFACE_INFO of s00_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT";
  attribute X_INTERFACE_INFO of s00_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR";
  attribute X_INTERFACE_INFO of s00_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT";
  attribute X_INTERFACE_INFO of s00_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BRESP";
  attribute X_INTERFACE_INFO of s00_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RDATA";
  attribute X_INTERFACE_INFO of s00_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RRESP";
  attribute X_INTERFACE_INFO of s00_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WDATA";
  attribute X_INTERFACE_INFO of s00_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB";
begin
  s00_axi_bresp(1) <= \<const0>\;
  s00_axi_bresp(0) <= \<const0>\;
  s00_axi_rresp(1) <= \<const0>\;
  s00_axi_rresp(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.design_1_My_ALLSTEP_Core_0_0_My_ALLSTEP_Core_v1_0
     port map (
      PWM0 => PWM0,
      PWM_SIG => PWM_SIG,
      S_AXI_ARREADY => s00_axi_arready,
      S_AXI_AWREADY => s00_axi_awready,
      S_AXI_WREADY => s00_axi_wready,
      Z_SIG => Z_SIG,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(2 downto 0) => s00_axi_araddr(4 downto 2),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(2 downto 0) => s00_axi_awaddr(4 downto 2),
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_rdata(31 downto 0) => s00_axi_rdata(31 downto 0),
      s00_axi_rready => s00_axi_rready,
      s00_axi_rvalid => s00_axi_rvalid,
      s00_axi_wdata(31 downto 0) => s00_axi_wdata(31 downto 0),
      s00_axi_wstrb(3 downto 0) => s00_axi_wstrb(3 downto 0),
      s00_axi_wvalid => s00_axi_wvalid
    );
end STRUCTURE;
