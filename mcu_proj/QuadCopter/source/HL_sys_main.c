#include "MPU9250.h"
#include <FreeRTOS.h>
#include "FreeRTOSConfig.h"
#include "os_mpu_wrappers.h"
#include "os_task.h"
#include "os_projdefs.h"
#include "os_semphr.h"
#include "os_task.h"

xTaskHandle task_MPU6050_handle;  // MPU6050 ���� �� �ٷ�� �׽�ũ
xTaskHandle task_MPU9250_handle;  // MPU9250
xTaskHandle task_CALATT_handle; // �ڼ� ���� �׽�ũ
xTaskHandle task_CALALT_handle; // �� ���� �׽�ũ
xTaskHandle task_CONTROLLER_handle; // ������ �׽�ũ

QueueHandle_t mutex;

uint8 start, end;

void send_data(sciBASE_t *sci, uint8* msg, int length);

void itoa(int num, char *c){
    int radix = 10;
    int count = 0, degree = 1;
    int i;
    while(true){
        if(num/degree > 0 ) count++;
        else break;
        degree *= radix;
    }

    degree/=radix;

    for( i=0;i<count;i++){
        *(c+i) = (num/degree) + '0';
        num -=(num/degree) * degree;
        degree /=radix;
    }

    *(c+count) = '\0';
}

void MPU6050_TASK(void *pbParameters){


    char msg[32] = {'T', 'a','\r', '\n'};

    char aa[256];

    for(;;){

        xSemaphoreTake(mutex, portMAX_DELAY);
       send_data(sciREG1, msg, strlen(msg));
        end = clock();
        itoa( (end - start), aa);


        send_data(sciREG1, aa, strlen(aa));
        xSemaphoreGive(mutex);
        vTaskDelay(10);


    }

    // vTaskDelay(10);
}


int main(void)
{
    sciInit();
    vSemaphoreCreateBinary(mutex) // ��ũ��

    start = clock();

    if(xTaskCreate(MPU6050_TASK, "Task1",configMINIMAL_STACK_SIZE, NULL, 1, &task_MPU6050_handle) != pdTRUE){
        while(1);
    }

    vTaskStartScheduler();

    while(1);
}

void send_data(sciBASE_t *sci, uint8* msg, int length){
    int i;
    for(i=0;i<length;i++) sciSendByte(sci, msg[i]);
}

