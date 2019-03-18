/*
 * management.h
 *
 *  Created on: 2019/02/28
 *      Author: okada_tech
 */

#ifndef MANAGEMENT_H_
#define MANAGEMENT_H_

#include "main.h"
#include "stm32f3xx_hal.h"
#include "dma.h"
#include "i2c.h"
#include "tim.h"
#include "usart.h"
#include "gpio.h"
#include <math.h>
#include <stdlib.h>
#include "xprintf.h"
#include "i2c_lcd.h"
#include "JY901.h"
#include "DFPlayer_Mini_mp3.h"
#include "actuator.h"
#include <stdbool.h>
#include <string.h>
#include "microsectimer.h"
#include "myatan2.h"
#include "omni_wheelThree-wheeled.h"
#include "sensor.h"
int temp1,temp2,y;
int power1,power2,power3,power4,digree,power;
uint16_t HOUI,HOUI_def;
uint8_t motorL,motorR;
uint32_t counttime;
int digtemp;
uint8_t Line_data_temp;
uint8_t marker_count_data;
uint8_t marker_count_data_;


ADC_ChannelConfTypeDef sConfig_adc;

TIM_MasterConfigTypeDef sMasterConfig;
TIM_OC_InitTypeDef sConfigOC;
TIM_BreakDeadTimeConfigTypeDef sBreakDeadTimeConfig;
TIM_Encoder_InitTypeDef sConfig;

uint16_t   ADCdata1[9];
uint16_t   ADCdata2[5];
uint16_t   ADCdata3[11];
uint16_t   ADCdata4[5];

uint16_t   Linedata[24];
uint16_t   Linedata_R[3];
uint16_t   Linedata_L[3];
uint16_t   Linedata_temp0[3];
uint16_t   Linedata_temp1[3];
uint16_t   Linedata_temp2[3];
uint16_t   Linedata_temp3[3];
uint16_t   Linedata_temp4[3];
uint16_t   Linedata_temp5[3];
uint16_t   Linedata_temp6[3];
uint16_t   Linedata_temp7[3];
uint16_t   Linedata_temp8[3];
uint16_t   Linedata_temp9[3];
uint16_t   Linedata_temp10[3];
uint16_t   Linedata_temp11[3];
uint16_t   Linedata_temp12[3];
uint16_t   Linedata_temp13[3];
uint16_t   Linedata_temp14[3];
uint16_t   Linedata_temp15[3];
uint16_t   Linedata_temp16[3];
uint16_t   Linedata_temp17[3];
uint16_t   Linedata_temp18[3];
uint16_t   Linedata_temp19[3];
uint16_t   Linedata_temp20[3];
uint16_t   Linedata_temp21[3];
uint16_t   Linedata_temp22[3];
uint16_t   Linedata_temp23[3];
uint16_t   Linedata_R_temp0[3];
uint16_t   Linedata_L_temp0[3];
uint16_t   Linedata_R_temp1[3];
uint16_t   Linedata_L_temp1[3];
uint16_t   Linedata_R_temp2[3];
uint16_t   Linedata_L_temp2[3];


uint8_t cnt;
uint8_t Rxbuf[3];
uint8_t data[2];
uint8_t Txbuf[1];

uint8_t Flug_Rxdata;


#endif /* MANAGEMENT_H_ */
