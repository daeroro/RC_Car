#include "mpu9250.h"
#include <pthread.h>
#include <sys/mman.h>
#include <signal.h>
#include <sys/types.h>

#include <fcntl.h>
#include <unistd.h>
#include <string.h>
#include <sys/socket.h>
#include <arpa/inet.h>
#include <sys/wait.h>
#include <sys/stat.h>

typedef struct sockaddr_in		si;
typedef struct sockaddr *		sp;

#define BUF_SIZE			32

int serv_sock;
si serv_addr;
si clnt_addr;
socklen_t addr_size;

char sock_buf[BUF_SIZE] = {0};

unsigned char receives[8] = {0};
int lidar_data;
//uint16_t lidar_data;

pthread_mutex_t mtx;

#define GPIO_MAP_SIZE 0x10000

#define GPIO_DATA_OFFSET 0x00
#define GPIO_TRI_OFFSET 0x04

#define PWM_MAP_SIZE	0x10000
#define ECAP_MAP_SIZE	0x10000

#define PWM_DATA_OFFSET1	0
#define PWM_DATA_OFFSET2	4
#define PWM_DATA_OFFSET3	8
#define PWM_DATA_OFFSET4	12

#define ECAP_PERIOD_OFFSET	0x0
#define ECAP_DUTY_OFFSET	0x1

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

#define USAGE			"i2c_LiDAR_fn <OUTPUT_OPTIONS> <I2C_DEVICE_NUMBER>\n"\
				"<OUTPUT_OPTIONS>\n"\
				"0 : output of all\n"\
				"1 : distance only\n"\
				"2 : distance with velocity\n"\
				"3 : velocity only\n"
unsigned get_status();
void i_read(unsigned char, unsigned, unsigned char *);
void i_write(unsigned char reg, unsigned char value);
void measurement(unsigned char, unsigned char, unsigned char*);
void display(unsigned char, unsigned char*);

#define    MPU9250_ADDRESS            0x68
#define    MAG_ADDRESS                0x0C

#define    GYRO_FULL_SCALE_250_DPS    0x00
#define    GYRO_FULL_SCALE_500_DPS    0x08
#define    GYRO_FULL_SCALE_1000_DPS   0x10
#define    GYRO_FULL_SCALE_2000_DPS   0x18

#define    ACC_FULL_SCALE_2_G        0x00
#define    ACC_FULL_SCALE_4_G        0x08
#define    ACC_FULL_SCALE_8_G        0x10
#define    ACC_FULL_SCALE_16_G       0x18

#define R2D  180 / M_PI
#define GYRO2DEGREE_PER_SEC  65.5

#define R2D  180 / M_PI
#define GYRO2DEGREE_PER_SEC  65.5



#define STEP_MAP_SIZE	0x10000
#define STEP_DATA_OFFSET1	0
#define STEP_DATA_OFFSET2	1

uint32_t rx_data = 0;
uint32_t tmp = 0;
uint32_t value = 0;

volatile char acc_data[6];
volatile char gyro_data[6];
volatile char mag_data[8];

#define IDX     2

int32_t duty_arr[IDX] = {1000, 2000};

//Declaring some global variables
float ax, ay, az, gx, gy, gz, mx, my, mz; // variables to hold latest sensor data values

double pitch;
double roll;

int16_t accelCount[3];  // Stores the 16-bit signed accelerometer sensor output
int16_t gyroCount[3];   // Stores the 16-bit signed gyro sensor output
int16_t magCount[3];    // Stores the 16-bit signed magnetometer sensor output

float magCalibration[3] = {0, 0, 0} , magbias[3] = {0, 0, 0};  // Factory mag calibration and mag bias
float gyroBias[3] = {0, 0, 0}, accelBias[3] = {0, 0, 0};// Bias corrections for gyro and accelerometer

clock_t start, end;

int duty;
int fd5 = 0;//lidar_system
void *ptr;//Step
void *ptr2;//ecap
/******************************************************************************************************************
	User IP File description

	uio0 = STEP MOTOR CONTROLLERa ---	fd_buf[2]
	uio1 = SERVO MOTOR CONTROLLER ---	fd_buf[1]

	i2c-0 = MPU9250				  --- 	fd_buf[0]
	i2c-1 = Lidar				  --- 	fd_buf[3]
********************************************************************************************************************/

void err_handler(char *msg)
{
	fputs(msg, stderr);
	fputc('\n', stderr);
	exit(1);
}

void read_cproc(int sig)
{
	pid_t pid;
	int status;
	pid = waitpid(-1, &status, WNOHANG);
	printf("Removed proc id: %d\n", pid);
}

void term_status(int status)
{
	if(WIFEXITED(status))
		printf("(exit)status: 0x%x\n", WEXITSTATUS(status));
	else if(WTERMSIG(status))
		;
		//printf("(signal)status: 0x%x\n", status & 0x7f, WCOREDUMP(status) ? "core dumped" : "");
}

void check_status(int signo)
{
	int status;
	while(waitpid(-1, &status, WNOHANG) > 0)
		term_status(status);
}

void *thread_0(void *data)
{
	int len;
	char msg[BUF_SIZE] = "Success\n";

	len = strlen(msg);

	for(;;)
	{
		int clnt_sock = accept(serv_sock, (sp)&clnt_addr, &addr_size);

		if(clnt_sock == -1)
			continue;

		for(;;)
		{
			pthread_mutex_lock(&mtx);

			if((write(clnt_sock, (int *)&lidar_data, sizeof(lidar_data))) != 0)
				read(clnt_sock, (char *)&sock_buf, BUF_SIZE);

		//	printf("lidar_data = %d\n", lidar_data);

			pthread_mutex_unlock(&mtx);

			usleep(3700);
		}
	}
}

void *thread_1(void *data)
{
    //child1 logic
        //mpu9250 logic

		int fd;

		fd = *((int *)data+0);

		
		if( (fd = open(I2C_FILE_NAME, O_RDWR)) <0)
		{
			perror("Open Device Error! \n");
		}

		ioctl_mpu9250(fd);
		
		usleep(1000000);

		uint8_t c = readByte(fd, WHO_AM_I_MPU9250 );
		printf("I AM = %x \n\r", c);
		
		usleep(1000000);
		if(c == 0x71)
		{
				calibrateMPU9250(gyroBias, accelBias, fd);
				printf("MPU9250 calibration Success!!!!!!\n\r");

				initMPU9250(fd);
				printf("MPU9250 Init Success!!!!!!\n\r");

				ioctl_ak8963(fd);
				initAK8963(fd, magCalibration);
				printf("MPU9250 AK8963 Init Success!!!!!!\n\r");

				ioctl_mpu9250(fd);
				get_offset_value(fd);
				printf("gyro_offset_setting Success!!\n");
		}
		else
		{
				printf("MPU9250 doesn't work!\n");
				while(1);
		}

		for(;;)
		{	
	

				//gettimeofday(&start,NULL);				

				start = clock();   /// start clock
				ioctl_mpu9250(fd);
				if(readByte(fd, INT_STATUS) & 0x01)
				{
				        get_roll_pitch(fd);
					    printf("roll = %d \t pitch = %d yaw = %d \n",(int)angle_roll_acc, (int)angle_pitch_acc, (int)(yaw));

						// end = clock();
						//printf("millis : %f \t\n", (end - start)/(double)(1000));
					//	sleep(1);

				}

				
		
		}

		return 0;


}

void *thread_2(void *data)
{
	int fd;
	
	/*
		======================================================================
						STEP MOTOR CONTROLLER REGISTER MAP
		======================================================================
		PULSE COUNTER 		= slv_reg0 -- *((unsigned int*)ptr + 0)		RDONLY
		CUR DUTY	  		= slv_reg2 -- *((unsigned int*)ptr + 2)		RDONLY
		CUR PERIOD	  		= slv_reg3 -- *((unsigned int*)ptr + 3)		RDONLY
		PWM RUN/STOP FLAG	= slv_reg4 -- *((unsigned int*)ptr + 4)		WRONLY

  		DEGREE				= slv_reg0 x 0.9
		
		IF YOU SELECT RUN MODE    --- slv_reg4 <= 0	(write 0)
		IF YOU SELECT STOP MODE   --- slv_reg4 <= 1	(write 1)
	*/
	unsigned int degree = 0;
	unsigned int cur_duty =0;
	unsigned int cur_period = 0;
	int Run_flag;
	int i;
	fd = *((int *)data +2);
	ptr = mmap(NULL, STEP_MAP_SIZE, PROT_READ|PROT_WRITE, MAP_SHARED, fd, 0);

		*((unsigned int*)ptr +4) = 0;
		while(1){	

		degree = *((unsigned int*)ptr +0) * 0.9;
			
		usleep(3700);
		//printf("degree = %d \n ",degree);
	}
}

void *thread_3(void *data)
{
	int i =0;

						unsigned char  options;
						char *file_name = NULL;
						file_name = "/dev/i2c-1";

						options = 1;//atoi(argv[1]);//옵션으로 i2c_2에 1들어옴

						fd5 = *((int *)data+3);


						if(ioctl(fd5, I2C_SLAVE, LIDAR_SLAVE_ADDR) < 0) { //slave
								//perror("---SLAVE ADDR CONNECT ERROR " );
						}

						i_write(SIG_COUNT_VAL, 0x80);
						i_write(ACQ_CONFIG_REG, 0X08);
						i_write(THRESHOLD_BYPASS, 0x00);//데이터시트에서 초기값을 주는 중

						while(1){
							pthread_mutex_lock(&mtx);
							
							measurement(CORRECTION, options, receives);
							for(i=0; i<99; i++)
								measurement(NO_CORRECTION, options, receives);

							pthread_mutex_unlock(&mtx);

							usleep(3700);
						
						}

						close(fd5);

						return 0;
}


void socket_config(char *port)
{
	serv_sock = socket(PF_INET, SOCK_STREAM, 0);

	if(serv_sock == -1)
		err_handler("socket() error");

	memset(&serv_addr, 0, sizeof(serv_addr));
	serv_addr.sin_family = AF_INET;
	serv_addr.sin_addr.s_addr = htonl(INADDR_ANY);
	serv_addr.sin_port = htons(atoi(port));

	if(bind(serv_sock, (sp)&serv_addr, sizeof(serv_addr)) == -1)
		err_handler("bind() error");

	if(listen(serv_sock, 1) == -1)
		err_handler("listen() error");

	addr_size = sizeof(clnt_addr);

	pthread_mutex_init(&mtx, NULL);
}

int main(void)
{
	pthread_t p_thread[7];
	int thr_id;
	int status;
	int fd_buf[7];
	int fd;

	fd = open("/dev/uio0",O_RDWR);

	
	/****************************************************************************
		Open Device files if Open Error print perror else Open Success 
		print Open Complete mesaege Use Debuging this print
	*****************************************************************************/

	system("ifconfig eth0 192.168.7.33");
	sleep(10);

	if((fd_buf[0] = open("/dev/i2c-0", O_RDWR)) <0) 
	{
		perror("Open Device Error! \n");
		return -1; 
	}
	printf("fd_buf0(i2c-0) Open complete!\n");

	
	if((fd_buf[1] = open("/dev/uio1",O_RDWR))<0)
	{
		printf("Invalid UIO Device File uio0\n");
	return -1;
	}
	printf("fd_buf1(uio0) Open complete!\n");


	
	if((fd_buf[2] = open("/dev/uio0",O_RDWR)) <0)
	{
		printf("Invalid UIO Device File uio1\n");			
		return -1;
	}

	printf("fd_buf2(uio1) Open complete!\n");

	if((fd_buf[3] = open("/dev/i2c-1", O_RDWR)) < 0) 
	{ 
		perror("---OPEN DEVICE ERROR ");
		return -1;
	}
	printf("fd_buf3(i2c-1) Open complete!\n");

	

	socket_config("3333");
	/********************************************************************
		Thread Create Under Code
	*********************************************************************/

	thr_id = pthread_create(&p_thread[0], NULL, thread_0,(void *)fd_buf);
	if(thr_id <0)
	{
		perror("thread create error :");
		exit(0);
	}


	//thr_id = pthread_create(&p_thread[1], NULL, thread_1,(void *)fd_buf);
/*	if(thr_id <0)
	{
		perror("thread create error :");
		exit(0);
	}
*/
	thr_id = pthread_create(&p_thread[2], NULL, thread_2,(void *)fd_buf);
	    if(thr_id <0)
    {
        perror("thread create error :");
        exit(0);
    }

    thr_id = pthread_create(&p_thread[3], NULL, thread_3,(void *)fd_buf);
        if(thr_id <0)
    {
        perror("thread create error :");
        exit(0);
    }
	
	/***********************************************************
		Wait thread until turnoff
	************************************************************/
	
    	pthread_join(p_thread[0], (void **)&status);
//		pthread_join(p_thread[1], (void **)&status);
    	pthread_join(p_thread[2], (void **)&status);
    	pthread_join(p_thread[3], (void **)&status);
	return 0;
}


unsigned get_status() {
	unsigned char buf[1] = {STATUS};
	
	if(write(fd5, buf, 1) != 1) {
		//perror("---WRITE REGISTER ERROR " );
			return -1;
	}

	if(read(fd5, buf, 1) != 1) {
		//perror("---WRITE REGISTER ERROR " );
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
		if(write(fd5, buf, 1) != 1) {
		//	perror("---WRITE REGISTER ERROR ");
			
		}
	
		if(read(fd5, receives, read_size) != read_size) {
		//	perror("---WRITE REGISTER ERROR ");
		
		}
	}
}

void i_write(unsigned char reg, unsigned char value) {
	unsigned char buf[2] = {reg, value};

	if(write(fd5, buf, 2) != 2) {
		//perror("---WRITE REGISTER ERROR ");
		
	}
	//usleep(1000);
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

        //buf[AR_FULL_DELAY_HIGH] = buf[AR_FULL_DELAY_HIGH] << 8 | buf[AR_FULL_DELAY_LOW];
         lidar_data= buf[AR_FULL_DELAY_HIGH] << 8 | buf[AR_FULL_DELAY_LOW];
		
        switch(options)
        {
                case OUTPUT_OF_ALL :
                        for(i=0; i<5; i++)
                        printf("%s \t\t\t\t = %d\n", strings[i], buf[i]);
                        break;
                case DISTANCE_ONLY :
                       // printf("%s \t\t\t\t = %d\n", strings[4], buf[AR_FULL_DELAY_HIGH]);
                        printf("%s \t\t\t\t = %d\n", strings[4], lidar_data);
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

