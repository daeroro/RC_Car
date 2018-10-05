#include <stdio.h>
#include <linux/i2c.h>
#include <linux/i2c-dev.h>
#include <sys/ioctl.h>
#include <fcntl.h>
#include <unistd.h>
#include <errno.h>
#include <string.h>
#include <stdlib.h>
#include <sys/types.h>
#include <sys/stat.h>

#define I2C_FILE_NAME_0		"/dev/i2c-0" //i2c0번과 1번핀 사용
#define I2C_FILE_NAME_1		"/dev/i2c-1"
#define LIDAR_SLAVE_ADDR	0x62

#define ACQ_COMMAND		0x00
#define STATUS			0x01
#define SIG_COUNT_VAL		0x02
#define ACQ_CONFIG_REG		0x04
#define THRESHOLD_BYPASS	0x1C
#define READ_FROM		0x89 //원래는 0x8f임
//레지스터들 주소


#define NO_CORRECTION		0
#define CORRECTION		1

#define AR_VELOCITY		0
#define AR_PEAK_CORR		1
#define AR_NOISE_PEAK		2
#define AR_SIGNAL_STRENGTH	3
#define AR_FULL_DELAY_HIGH	4
#define AR_FULL_DELAY_LOW	5

#define OUTPUT_OF_ALL		0
#define DISTANCE_ONLY		1
#define DISTANCE_WITH_VELO	2
#define VELOCITY_ONLY		3


unsigned get_status();
void i_read(unsigned char, unsigned, unsigned char *);
void i_write(unsigned char reg, unsigned char value);
void measurement(unsigned char, unsigned char, unsigned char*);
void display(unsigned char, unsigned char*);

int fd = 0;

int main(int argc, char *argv[])
{
	unsigned char receives[8] = {AR_VELOCITY, 0, 0, AR_PEAK_CORR, AR_NOISE_PEAK
			,AR_SIGNAL_STRENGTH, AR_FULL_DELAY_HIGH, AR_FULL_DELAY_LOW};
			//받을 수 있는 신호들
	unsigned char i, options;
	
	options = 1;//옵션으로 i2c_2에 1들어옴

	if((fd = open("/dev/i2c-0", O_RDWR)) < 0) 
	{ //송수신이 되려면 read,write해야함, master
		perror("---OPEN DEVICE ERROR ");
		return -1;
	}
	
	if(ioctl(fd, I2C_SLAVE, LIDAR_SLAVE_ADDR) < 0) { //slave
		perror("---SLAVE ADDR CONNECT ERROR " );
		return -1;
	}

	/*
	#include <sys/ioctl.h>
	int ioctl(int fd, unsigned long request, ...);
	on success zero is returned.
	*/

	i_write(SIG_COUNT_VAL, 0x80);
	i_write(ACQ_CONFIG_REG, 0X08);
	i_write(THRESHOLD_BYPASS, 0x00);//데이터시트에서 초기값을 주는 중

	while(1){
		measurement(CORRECTION, options, receives);
		for(i=0; i<99; i++) measurement(NO_CORRECTION, options, receives);
	}

	close(fd);

	return 0;
}

unsigned get_status() {
	unsigned char buf[1] = {STATUS};
	
	if(write(fd, buf, 1) != 1) {
		perror("---WRITE REGISTER ERROR " );
			return -1;
	}

	if(read(fd, buf, 1) != 1) {
		perror("---WRITE REGISTER ERROR " );
		return -1;
	}

	return buf[0] & 0x01;
}

void i_read(unsigned char reg, unsigned read_size, unsigned char *receives) {
	unsigned char buf[1] = {reg};
	unsigned busy_flag = 1, busy_counter = 0;

	while(busy_flag) {
		busy_flag = get_status();
		busy_counter ++;
		if(busy_counter > 9999) {
			printf("BUSY COUNT TIME_OUT ! \n");
			return ;
		}
	}

	if(!busy_flag) {
		if(write(fd, buf, 1) != 1) {
			perror("---WRITE REGISTER ERROR ");
			return ;
		}
	
		if(read(fd, receives, read_size) != read_size) {
			perror("---WRITE REGISTER ERROR ");
			return ;
		}
	}
}

void i_write(unsigned char reg, unsigned char value) {
	unsigned char buf[2] = {reg, value};

	if(write(fd, buf, 2) != 2) {
		perror("---WRITE REGISTER ERROR ");
		return ;
	}
	usleep(1000);
}

void measurement(unsigned char is_correction, unsigned char options, unsigned char *buf) {
	unsigned char i;
	if(is_correction) i_write(ACQ_COMMAND, 0X04);//보정o
	else i_write(ACQ_COMMAND, 0x03);//보정x

	i_read(READ_FROM, 8, buf);

	for(i=1; i<6; i++) buf[i] = buf[i +2];

	display(options, buf);

}

void display(unsigned char options, unsigned char *buf)
{
        unsigned char i;
        char *strings[5] = {"Velocity", "Peak value in correlation record", "Correlation record noise floor", "Received signal strength", "Distance"};

        buf[AR_FULL_DELAY_HIGH] = buf[AR_FULL_DELAY_HIGH] << 8 | buf[AR_FULL_DELAY_LOW];
	//총 16비트니까 8비트 밀고 해서 사용.

        /*
                AR_VELOCITY     0
                AR_PEAK_CORR    1
                AR_NOISE_PEAK   2
                AR_SIGNAL_STRENGTH      3
                AR_FULL_DELAY_HIGH      4
                AR_FULL_DELAY_LOW       5
        */

        switch(options)
        {
                case OUTPUT_OF_ALL :
                        for(i=0; i<5; i++)
                        printf("%s \t\t\t\t = %d\n", strings[i], buf[i]);
                        break;
                case DISTANCE_ONLY :
                        printf("%s \t\t\t\t = %d\n", strings[4], buf[AR_FULL_DELAY_HIGH]);
                        break;
                case DISTANCE_WITH_VELO :
                        printf("%s \t\t\t\t = %d\n", strings[0], buf[AR_VELOCITY]);
                        printf("%s \t\t\t\t = %d\n", strings[4], buf[AR_FULL_DELAY_HIGH]);
                        break;
                case VELOCITY_ONLY :
                        printf("%s \t\t\t\t = %d\n", strings[0], buf[AR_VELOCITY]);
                        break;
        }

        printf("\n");
}
