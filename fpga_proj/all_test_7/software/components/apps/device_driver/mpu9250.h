#ifndef INCLUDE_MPU9250_H
#define INCLUDE_MPU9250_H

#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <unistd.h>
#include <math.h>
#include <time.h>
#include <stdbool.h>
#include <string.h>
#include <errno.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <sys/ioctl.h>
#include <linux/i2c.h>
#include <linux/i2c-dev.h>
#include <sys/time.h>


#define I2C_FILE_NAME        "/dev/i2c-0"

//Magnetometer Registers
#define AK8963_ADDRESS   0x0C
#define WHO_AM_I_AK8963  0x00 // should return 0x48
#define INFO             0x01
#define AK8963_ST1       0x02  // data ready status bit 0
#define AK8963_XOUT_L    0x03  // data
#define AK8963_XOUT_H    0x04
#define AK8963_YOUT_L    0x05
#define AK8963_YOUT_H    0x06
#define AK8963_ZOUT_L    0x07
#define AK8963_ZOUT_H    0x08
#define AK8963_ST2       0x09  // Data overflow bit 3 and data read error status bit 2
#define AK8963_CNTL      0x0A  // Power down (0000), single-measurement (0001), self-test (1000) and Fuse ROM (1111) modes on bits 3:0
#define AK8963_ASTC      0x0C  // Self test control
#define AK8963_I2CDIS    0x0F  // I2C disable
#define AK8963_ASAX      0x10  // Fuse ROM x-axis sensitivity adjustment value
#define AK8963_ASAY      0x11  // Fuse ROM y-axis sensitivity adjustment value
#define AK8963_ASAZ      0x12  // Fuse ROM z-axis sensitivity adjustment value

#define SELF_TEST_X_GYRO 0x00
#define SELF_TEST_Y_GYRO 0x01
#define SELF_TEST_Z_GYRO 0x02


/*
#define X_FINE_GAIN      0x03 // [7:0] fine gain
#define Y_FINE_GAIN      0x04
#define Z_FINE_GAIN      0x05
#define XA_OFFSET_H      0x06 // User-defined trim values for accelerometer
#define XA_OFFSET_L_TC   0x07
#define YA_OFFSET_H      0x08
#define YA_OFFSET_L_TC   0x09
#define ZA_OFFSET_H      0x0A
#define ZA_OFFSET_L_TC   0x0B 
 */

#define SELF_TEST_X_ACCEL 0x0D
#define SELF_TEST_Y_ACCEL 0x0E
#define SELF_TEST_Z_ACCEL 0x0F

#define SELF_TEST_A      0x10

#define XG_OFFSET_H      0x13  // User-defined trim values for gyroscope
#define XG_OFFSET_L      0x14
#define YG_OFFSET_H      0x15
#define YG_OFFSET_L      0x16
#define ZG_OFFSET_H      0x17
#define ZG_OFFSET_L      0x18
#define SMPLRT_DIV       0x19
#define CONFIG           0x1A
#define GYRO_CONFIG      0x1B
#define ACCEL_CONFIG     0x1C
#define ACCEL_CONFIG2    0x1D
#define LP_ACCEL_ODR     0x1E
#define WOM_THR          0x1F

#define MOT_DUR          0x20  // Duration counter threshold for motion interrupt generation, 1 kHz rate, LSB = 1 ms
#define ZMOT_THR         0x21  // Zero-motion detection threshold bits [7:0]
#define ZRMOT_DUR        0x22  // Duration counter threshold for zero motion interrupt generation, 16 Hz rate, LSB = 64 ms

#define FIFO_EN          0x23
#define I2C_MST_CTRL     0x24
#define I2C_SLV0_ADDR    0x25
#define I2C_SLV0_REG     0x26
#define I2C_SLV0_CTRL    0x27
#define I2C_SLV1_ADDR    0x28
#define I2C_SLV1_REG     0x29
#define I2C_SLV1_CTRL    0x2A
#define I2C_SLV2_ADDR    0x2B
#define I2C_SLV2_REG     0x2C
#define I2C_SLV2_CTRL    0x2D
#define I2C_SLV3_ADDR    0x2E
#define I2C_SLV3_REG     0x2F
#define I2C_SLV3_CTRL    0x30
#define I2C_SLV4_ADDR    0x31
#define I2C_SLV4_REG     0x32
#define I2C_SLV4_DO      0x33
#define I2C_SLV4_CTRL    0x34
#define I2C_SLV4_DI      0x35
#define I2C_MST_STATUS   0x36
#define INT_PIN_CFG      0x37
#define INT_ENABLE       0x38
#define DMP_INT_STATUS   0x39  // Check DMP interrupt
#define INT_STATUS       0x3A
#define ACCEL_XOUT_H     0x3B
#define ACCEL_XOUT_L     0x3C
#define ACCEL_YOUT_H     0x3D
#define ACCEL_YOUT_L     0x3E
#define ACCEL_ZOUT_H     0x3F
#define ACCEL_ZOUT_L     0x40
#define TEMP_OUT_H       0x41
#define TEMP_OUT_L       0x42
#define GYRO_XOUT_H      0x43
#define GYRO_XOUT_L      0x44
#define GYRO_YOUT_H      0x45
#define GYRO_YOUT_L      0x46
#define GYRO_ZOUT_H      0x47
#define GYRO_ZOUT_L      0x48
#define EXT_SENS_DATA_00 0x49
#define EXT_SENS_DATA_01 0x4A
#define EXT_SENS_DATA_02 0x4B
#define EXT_SENS_DATA_03 0x4C
#define EXT_SENS_DATA_04 0x4D
#define EXT_SENS_DATA_05 0x4E
#define EXT_SENS_DATA_06 0x4F
#define EXT_SENS_DATA_07 0x50
#define EXT_SENS_DATA_08 0x51
#define EXT_SENS_DATA_09 0x52
#define EXT_SENS_DATA_10 0x53
#define EXT_SENS_DATA_11 0x54
#define EXT_SENS_DATA_12 0x55
#define EXT_SENS_DATA_13 0x56
#define EXT_SENS_DATA_14 0x57
#define EXT_SENS_DATA_15 0x58
#define EXT_SENS_DATA_16 0x59
#define EXT_SENS_DATA_17 0x5A
#define EXT_SENS_DATA_18 0x5B
#define EXT_SENS_DATA_19 0x5C
#define EXT_SENS_DATA_20 0x5D
#define EXT_SENS_DATA_21 0x5E
#define EXT_SENS_DATA_22 0x5F
#define EXT_SENS_DATA_23 0x60
#define MOT_DETECT_STATUS 0x61
#define I2C_SLV0_DO      0x63
#define I2C_SLV1_DO      0x64
#define I2C_SLV2_DO      0x65
#define I2C_SLV3_DO      0x6g6
#define I2C_MST_DELAY_CTRL 0x67
#define SIGNAL_PATH_RESET  0x68
#define MOT_DETECT_CTRL  0x69
#define USER_CTRL        0x6A  // Bit 7 enable DMP, bit 3 reset DMP
#define PWR_MGMT_1       0x6B // Device defaults to the SLEEP mode
#define PWR_MGMT_2       0x6C
#define DMP_BANK         0x6D  // Activates a specific bank in the DMP
#define DMP_RW_PNT       0x6E  // Set read/write pointer to a specific start address in specified DMP bank
#define DMP_REG          0x6F  // Register in DMP from which to read or to which to write
#define DMP_REG_1        0x70
#define DMP_REG_2        0x71
#define FIFO_COUNTH      0x72
#define FIFO_COUNTL      0x73
#define FIFO_R_W         0x74
#define WHO_AM_I_MPU9250 0x75 // Should return 0x71
#define XA_OFFSET_H      0x77
#define XA_OFFSET_L      0x78
#define YA_OFFSET_H      0x7A
#define YA_OFFSET_L      0x7B
#define ZA_OFFSET_H      0x7D
#define ZA_OFFSET_L      0x7E


#define ADO 0
#if ADO
#define MPU9250_ADDRESS 0x69  // Device address when ADO = 1
#else
#define MPU9250_ADDRESS 0x68  // Device address when ADO = 0
#define AK8963_ADDRESS 0x0C   //  Address of magnetometer
#endif

#define AHRS true         // set to false for basic data read
#define SerialDebug true  // set to true to get Serial output for debugging

typedef struct timeval tv; 


enum Ascale {
		AFS_2G = 0,
		AFS_4G,
		AFS_8G,
		AFS_16G
};

enum Gscale {
		GFS_250DPS = 0,
		GFS_500DPS,
		GFS_1000DPS,
		GFS_2000DPS
};

enum Mscale {
		MFS_14BITS = 0, // 0.6 mG per LSB
		MFS_16BITS      // 0.15 mG per LSB
};

int8_t Gscale = GFS_500DPS;
int8_t Ascale = AFS_2G;
int8_t Mscale = MFS_16BITS; // Choose either 14-bit or 16-bit magnetometer resolution
int8_t Mmode = 0x02;        // 2 for 8 Hz, 6 for 100 Hz continuous magnetometer data read

float aRes, gRes, mRes;      // scale resolutions per LSB for the sensors


//Declaring some global variables for roll, pitch
int16_t g_xyz[3];
long gyro_x_cal, gyro_y_cal, gyro_z_cal;
bool set_gyro_angles;

int16_t a_xyz[3];
long acc_total_vector;
float angle_roll_acc, angle_pitch_acc;
float yaw;

float angle_pitch, angle_roll;
float angle_pitch_output, angle_roll_output;


//fucntion
void writeByte(int fd, uint8_t regAddr, uint8_t data);
void readBytes(int fd, uint8_t regAddr, int length, uint8_t *data);
uint8_t readByte(int fd, uint8_t regAddr);

void initAK8963(int fd, float * destination);
void initMPU9250(int fd);
void calibrateMPU9250(float *dest1, float *dest2, int fd);

void getAres(void);
void getGres(void);
void getMres(void);

void readAccelData(int fd, int16_t *destination);
void readGyroData(int fd, int16_t * destination);
void readMagData(int fd, int16_t *destination);

void get_roll_pitch(int fd);
void get_offset_value(int fd);

int ioctl_mpu9250(int fd);
int ioctl_ak8963(int fd);

void get_mili_runtime(tv start, tv end);


void calibrateMPU9250(float *dest1, float *dest2, int fd)
{
		int a;
		printf("start calibrate\n");
		uint8_t data[12];
		int16_t ii, packet_count, fifo_count;
		int32_t gyro_bias[3] = {0,0,0};
		int32_t accel_bias[3] = {0,0,0};

		writeByte(fd, PWR_MGMT_1, 0x80);
		usleep(100000);

		writeByte(fd, PWR_MGMT_1, 0x01);
		writeByte(fd, PWR_MGMT_2, 0x00);
		usleep(100000);

		// Configure device for bias calculation
		writeByte(fd, INT_ENABLE, 0x00);   // Disable all interrupts
		writeByte(fd, FIFO_EN, 0x00);      // Disable FIFO
		writeByte(fd, PWR_MGMT_1, 0x00);   // Turn on internal clock source
		writeByte(fd, I2C_MST_CTRL, 0x00); // Disable I2C master
		writeByte(fd, USER_CTRL, 0x00);    // Disable FIFO and I2C master modes
		writeByte(fd, USER_CTRL, 0x0C);    // Reset FIFO and DMP
		usleep(100000);

		// Configure MPU6050 gyro and accelerometer for bias calculation
		writeByte(fd, CONFIG, 0x01);      // Set low-pass filter to 188 Hz
		writeByte(fd, SMPLRT_DIV, 0x00);  // Set sample rate to 1 kHz
		writeByte(fd, GYRO_CONFIG, 0x00);  // Set gyro full-scale to 250 degrees per second, maximum sensitivity
		writeByte(fd, ACCEL_CONFIG, 0x00); // Set accelerometer full-scale to 2 g, maximum sensitivity

		uint16_t  gyrosensitivity  = 131;   // = 131 LSB/degrees/sec
		uint16_t  accelsensitivity = 16384;  // = 16384 LSB/g

		// Configure FIFO to capture accelerometer and gyro data for bias calculation
		writeByte(fd, USER_CTRL, 0x40);   // Enable FIFO
		writeByte(fd, FIFO_EN, 0x78);     // Enable gyro and accelerometer sensors for FIFO  (max size 512 bytes in MPU-9150)
		usleep(40000); // accumulate 40 samples in 40 milliseconds = 480 bytes

		// At end of sample accumulation, turn off FIFO sensor read
		writeByte(fd, FIFO_EN, 0x00);        // Disable gyro and accelerometer sensors for FIFO


		readBytes(fd, FIFO_COUNTH, 2, &data[0]); // read FIFO sample count
		fifo_count = ((uint16_t)data[0] << 8) | data[1];
		packet_count = fifo_count/12;// How many sets of full gyro and accelerometer data for averaging
		printf("fifo count : 0x%x, packet_count : 0x%x\n", fifo_count, packet_count);

		for(a=0; a<12; a++)
		{
			printf("%x",data[a]);
		}

		
		for(ii = 0; ii < packet_count; ii++)
		{
				
				int16_t accel_temp[3] = {0, 0, 0}, gyro_temp[3] = {0, 0, 0};
				readBytes(fd, FIFO_R_W, 12, &data[0]); // read data for averaging
				
				accel_temp[0] = (int16_t) (((int16_t)data[0] << 8)  | data[1] ) ;  // Form signed 16-bit integer for each sample in FIFO
				accel_temp[1] = (int16_t) (((int16_t)data[2] << 8)  | data[3] ) ;
				accel_temp[2] = (int16_t) (((int16_t)data[4] << 8)  | data[5] ) ;
				gyro_temp[0]  = (int16_t) (((int16_t)data[6] << 8)  | data[7] ) ;
				gyro_temp[1]  = (int16_t) (((int16_t)data[8] << 8)  | data[9] ) ;
				gyro_temp[2]  = (int16_t) (((int16_t)data[10] << 8) | data[11]) ;

				accel_bias[0] += (int32_t) accel_temp[0]; // Sum individual signed 16-bit biases to get accumulated signed 32-bit biases
				accel_bias[1] += (int32_t) accel_temp[1];
				accel_bias[2] += (int32_t) accel_temp[2];
				gyro_bias[0]  += (int32_t) gyro_temp[0];
				gyro_bias[1]  += (int32_t) gyro_temp[1];
				gyro_bias[2]  += (int32_t) gyro_temp[2];

		}

	
		accel_bias[0] /= (int32_t) packet_count; // Normalize sums to get average count biases
		accel_bias[1] /= (int32_t) packet_count;
		accel_bias[2] /= (int32_t) packet_count;
		gyro_bias[0]  /= (int32_t) packet_count;
		gyro_bias[1]  /= (int32_t) packet_count;
		gyro_bias[2]  /= (int32_t) packet_count;
		
		if(accel_bias[2] > 0L) {
				accel_bias[2] -= (int32_t) accelsensitivity;
		}  // Remove gravity from the z-axis accelerometer bias calculation
		else {
				accel_bias[2] += (int32_t) accelsensitivity;
		}

		// Construct the gyro biases for push to the hardware gyro bias registers, which are reset to zero upon device startup
		data[0] = ((-gyro_bias[0]/4)  >> 8) & 0xFF; // Divide by 4 to get 32.9 LSB per deg/s to conform to expected bias input format
		data[1] = (-gyro_bias[0]/4)       & 0xFF; // Biases are additive, so change sign on calculated average gyro biases
		data[2] = ((-gyro_bias[1]/4)  >> 8) & 0xFF;
		data[3] = ((-gyro_bias[1]/4))       & 0xFF;
		data[4] = ((-gyro_bias[2]/4)  >> 8) & 0xFF;
		data[5] = (-gyro_bias[2]/4)       & 0xFF;

		// Push gyro biases to hardware registers
		writeByte(fd, XG_OFFSET_H, data[0]);
		writeByte(fd, XG_OFFSET_L, data[1]);
		writeByte(fd, YG_OFFSET_H, data[2]);
		writeByte(fd, YG_OFFSET_L, data[3]);
		writeByte(fd, ZG_OFFSET_H, data[4]);
		writeByte(fd, ZG_OFFSET_L, data[5]);

		dest1[0] = (float) gyro_bias[0]/(float) gyrosensitivity;
		dest1[1] = (float) gyro_bias[1]/(float) gyrosensitivity;
		dest1[2] = (float) gyro_bias[2]/(float) gyrosensitivity;

		int32_t accel_bias_reg[3] = {0, 0, 0}; // A place to hold the factory accelerometer trim biases
		readBytes(fd, XA_OFFSET_H, 2, &data[0]); // Read factory accelerometer trim values
		accel_bias_reg[0] = (int32_t) (((int16_t)data[0] << 8) | data[1]);
		readBytes(fd, YA_OFFSET_H, 2, &data[0]);
		accel_bias_reg[1] = (int32_t) (((int16_t)data[0] << 8) | data[1]);
		readBytes(fd, ZA_OFFSET_H, 2, &data[0]);
		accel_bias_reg[2] = (int32_t) (((int16_t)data[0] << 8) | data[1]);

		uint32_t mask = 1uL; // Define mask for temperature compensation bit 0 of lower byte of accelerometer bias registers
		uint8_t mask_bit[3] = {0, 0, 0}; // Define array to hold mask bit for each accelerometer bias axis

		for(ii = 0; ii < 3; ii++) {
				if((accel_bias_reg[ii] & mask)) mask_bit[ii] = 0x01; // If temperature compensation bit is set, record that fact in mask_bit
		}

		// Construct total accelerometer bias, including calculated average accelerometer bias from above
		accel_bias_reg[0] -= (accel_bias[0]/8); // Subtract calculated averaged accelerometer bias scaled to 2048 LSB/g (16 g full scale)
		accel_bias_reg[1] -= (accel_bias[1]/8);
		accel_bias_reg[2] -= (accel_bias[2]/8);

		data[0] = (accel_bias_reg[0] >> 8) & 0xFF;
		data[1] = (accel_bias_reg[0])      & 0xFF;
		data[1] = data[1] | mask_bit[0]; // preserve temperature compensation bit when writing back to accelerometer bias registers
		data[2] = (accel_bias_reg[1] >> 8) & 0xFF;
		data[3] = (accel_bias_reg[1])      & 0xFF;
		data[3] = data[3] | mask_bit[1]; // preserve temperature compensation bit when writing back to accelerometer bias registers
		data[4] = (accel_bias_reg[2] >> 8) & 0xFF;
		data[5] = (accel_bias_reg[2])      & 0xFF;
		data[5] = data[5] | mask_bit[2]; // preserve temperature compensation bit when writing back to accelerometer bias registers

		writeByte(fd, XA_OFFSET_H, data[0]);
		writeByte(fd, XA_OFFSET_L, data[1]);
		writeByte(fd, YA_OFFSET_H, data[2]);
		writeByte(fd, YA_OFFSET_L, data[3]);
		writeByte(fd, ZA_OFFSET_H, data[4]);
		writeByte(fd, ZA_OFFSET_L, data[5]);

		// Output scaled accelerometer biases for display in the main program
		dest2[0] = (float)accel_bias[0]/(float)accelsensitivity;
		dest2[1] = (float)accel_bias[1]/(float)accelsensitivity;
		dest2[2] = (float)accel_bias[2]/(float)accelsensitivity;

}

void initMPU9250(int fd)
{

		writeByte(fd, PWR_MGMT_1, 0x00);
		usleep(1000);

		writeByte(fd, PWR_MGMT_1, 0x01);
		usleep(1000);

		writeByte(fd, CONFIG, 0x03);

		writeByte(fd, SMPLRT_DIV, 0x04);

		uint8_t c = readByte(fd, GYRO_CONFIG);

		writeByte(fd, GYRO_CONFIG, (c & ~(0x02 | 0x18)) | Gscale << 3);

		c = readByte(fd, ACCEL_CONFIG);

		writeByte(fd, ACCEL_CONFIG, (c & ~0x18) | Ascale << 3);

		c = readByte(fd, ACCEL_CONFIG2);

		writeByte(fd, ACCEL_CONFIG2, (c & ~0x0F));

		writeByte(fd, INT_PIN_CFG, 0x22);
		writeByte(fd, INT_ENABLE, 0x01);
		usleep(1000);
}

void initAK8963(int fd, float * destination)
{
		uint8_t rawData[3];

		writeByte(fd, AK8963_CNTL, 0x00);
		usleep(1000);
		writeByte(fd, AK8963_CNTL, 0x0F);
		usleep(1000);
		readBytes(fd, AK8963_ASAX, 3, &rawData[0]);
		destination[0] =  (((float)(rawData[0] - 128))/256.0) + 1.0;   // Return x-axis sensitivity adjustment values, etc.
		destination[1] =  (((float)(rawData[1] - 128))/256.0) + 1.0;
		destination[2] =  (((float)(rawData[2] - 128))/256.0) + 1.0;
		writeByte(fd, AK8963_CNTL, 0x00); // Power down magnetometer
		usleep(1000);
		writeByte(fd, AK8963_CNTL, Mscale << 4 | Mmode); // Set magnetometer data resolution and sample ODR
		usleep(1000);

}

void get_offset_value(int fd)
{
		int cnt;
		for (cnt = 0; cnt < 1000; cnt++)
		{
				readGyroData(fd, g_xyz);
				gyro_x_cal += g_xyz[0];
				gyro_y_cal += g_xyz[1];
				gyro_z_cal += g_xyz[2];
				usleep(100);
		}

		gyro_x_cal /= 1000; //Divide the gyro_x_cal variable by 2000 to get the avarage offset
		gyro_y_cal /= 1000; //Divide the gyro_y_cal variable by 2000 to get the avarage offset
		gyro_z_cal /= 1000;


}

void get_roll_pitch(int fd)
{
	readAccelData(fd, a_xyz);
	readGyroData(fd, g_xyz);

   	g_xyz[0] -= gyro_x_cal;
   	g_xyz[1] -= gyro_y_cal;
  	g_xyz[2] -= gyro_z_cal;
	
	angle_pitch += g_xyz[0] * 0.0000611;
	angle_roll += g_xyz[1] * 0.0000611;
  	angle_pitch += angle_roll * sin( ((float)g_xyz[2]) * 0.000001066);//If the IMU has yawed transfer the roll angle to the pitch angel
  	angle_roll -= angle_pitch * sin( ((float)g_xyz[2]) * 0.000001066);//If the IMU has yawed transfer the pitch angle to the roll angel

  	acc_total_vector = sqrt( pow(a_xyz[0],2)+pow(a_xyz[1],2)+pow(a_xyz[2],2) );//Calculate the total accelerometer vector
  	  //57.296 = 1 / (3.142 / 180) The Arduino asin function is in radians
 	angle_pitch_acc = asin( (float)a_xyz[1]/acc_total_vector) * 57.296;//Calculate the pitch angle
 	angle_roll_acc = asin( (float)a_xyz[0]/acc_total_vector) * -57.296;//Calculate the roll angle
	yaw += g_xyz[2] * 0.000075;

}

void readGyroData(int fd, int16_t * destination)
{
		uint8_t rawData[6];
		readBytes(fd, GYRO_XOUT_H, 6, &rawData[0]);
		destination[0] = ((int16_t)rawData[0] << 8) | rawData[1] ;  // Turn the MSB and LSB into a signed 16-bit value
		destination[1] = ((int16_t)rawData[2] << 8) | rawData[3] ;
		destination[2] = ((int16_t)rawData[4] << 8) | rawData[5] ;
}

void readAccelData(int fd, int16_t *destination)
{
		uint8_t rawData[6];
		readBytes(fd, ACCEL_XOUT_H, 6, &rawData[0]);
		destination[0] = ((int16_t)rawData[0] << 8) | rawData[1];  // Turn the MSB and LSB into a signed 16-bit value
		destination[1] = ((int16_t)rawData[2] << 8) | rawData[3];
		destination[2] = ((int16_t)rawData[4] << 8) | rawData[5];
}

void readMagData(int fd, int16_t *destination)
{
		uint8_t rawData[7];
		if(readByte(fd, AK8963_ST1) & 0x01)
		{
				readBytes(fd, AK8963_XOUT_L, 7, &rawData[0]);
				uint8_t c = rawData[6];
				if(!(c & 0x08))
				{
						destination[0] = ((int16_t)rawData[1] << 8) | rawData[0] ;  // Turn the MSB and LSB into a signed 16-bit value
						destination[1] = ((int16_t)rawData[3] << 8) | rawData[2] ;  // Data stored as little Endian
						destination[2] = ((int16_t)rawData[5] << 8) | rawData[4] ;
				}
		}
}

void getMres(void)
{
		switch (Mscale)
		{
				case MFS_14BITS:
						mRes = 10.0 * 4219.0/ 8190.0; // Proper scale to return milliGauss
						break;
				case MFS_16BITS:
						mRes = 10.0 * 4219.0/ 32760.0; // Proper scale to return milliGauss
						break;
		}
}

void getAres(void)
{
		switch(Ascale)
		{
				case AFS_2G:
						aRes = 2.0/32768.0;
						break;
				case AFS_4G:
						aRes = 4.0/32768.0;
						break;
				case AFS_8G:
						aRes = 8.0/32768.0;
						break;
				case AFS_16G:
						aRes = 16.0/32768.0;
						break;
		}
}

void getGres(void)
{
		switch (Gscale)
		{
				case GFS_250DPS:
						gRes = 250.0/32768.0;
						break;
				case GFS_500DPS:
						gRes = 500.0/32768.0;
						break;
				case GFS_1000DPS:
						gRes = 1000.0/32768.0;
						break;
				case GFS_2000DPS:
						gRes = 2000.0/32768.0;
						break;
		}
}

void writeByte(int fd, uint8_t regAddr, uint8_t data)
{
		int8_t buf[2] = {regAddr,data};

		if(write(fd, buf ,sizeof(buf)) != sizeof(buf))
		{
				printf("write register error - writeByte\n");
		}
}

void readBytes(int fd, uint8_t regAddr, int length, uint8_t *data)
{
		uint8_t buf[1] = {regAddr};
		if(write(fd, buf, 1) != 1)
		{
				perror("read register error - readBytes\n");
		}
		if(read(fd, data, length) != length)
		{
				printf("recieve data error - readBytes\n");
		}
}

uint8_t readByte(int fd, uint8_t regAddr) 
{
		uint8_t buf[1] = {regAddr};
		uint8_t data[1] = {0};
		if(write(fd,buf,1) != 1)
		{
				perror("read register error -w \n");
				return -1; 
		}
		if(read(fd, data, 1) != 1)
		{
				perror("read register error -r \n");
				return -1; 
		}

		return data[0];

}

int ioctl_mpu9250(int fd)
{
		if(ioctl(fd,I2C_SLAVE_FORCE, MPU9250_ADDRESS) < 0)
		{
			perror("slave address connect error - ioctl_mpu9250\n");
		}
}

int ioctl_ak8963(int fd)
{
		if(ioctl(fd, I2C_SLAVE_FORCE, AK8963_ADDRESS) < 0)
		{
			perror("slave address connect error - ioctl_ak8963\n");
		}
}

void get_mili_runtime(tv start, tv end)
{
    double start_ms, end_ms;
    
    start_ms = (double)start.tv_sec *1000000 + (double) start.tv_usec;
    end_ms = (double)end.tv_sec * 1000000 + (double)end.tv_usec;

    printf("milisec = %lf ms \n",((double)end_ms - (double)start_ms)/1000);
}


#endif
