/*
 * actuator.c
 *
 *  Created on: 2017/11/05
 *      Author: okada_tech
 */
#include "actuator.h"


const uint8_t ICS_POS_CMD= 0x80;
const uint8_t ICS_PARA_WRITE_COMMND= 0xC0;
const uint8_t SUB_ST_COMMND= 0x01;
const uint8_t SUB_SP_COMMND= 0x02;



void servo(uint8_t a,uint8_t b,uint8_t c,uint8_t d){

	sConfigOC.Pulse = map_a(a,0,180,SERVO_LOW,SERVO_HIGH);
	if (HAL_TIM_PWM_ConfigChannel(&htim15, &sConfigOC, TIM_CHANNEL_1) != HAL_OK)
	{
		Error_Handler();
	}
	if (HAL_TIM_PWM_Start(&htim15, TIM_CHANNEL_1) != HAL_OK)
	{
		Error_Handler();
	}
	sConfigOC.Pulse = map_a(b,0,180,SERVO_LOW,SERVO_HIGH);
	if (HAL_TIM_PWM_ConfigChannel(&htim15, &sConfigOC, TIM_CHANNEL_2) != HAL_OK)
	{
		Error_Handler();
	}
	if (HAL_TIM_PWM_Start(&htim15, TIM_CHANNEL_2) != HAL_OK)
	{
		Error_Handler();
	}
	sConfigOC.Pulse = map_a(c,0,180,SERVO_LOW,SERVO_HIGH);
	if (HAL_TIM_PWM_ConfigChannel(&htim16, &sConfigOC, TIM_CHANNEL_1) != HAL_OK)
	{
		Error_Handler();
	}
	if (HAL_TIM_PWM_Start(&htim16, TIM_CHANNEL_1) != HAL_OK)
	{
		Error_Handler();
	}
	sConfigOC.Pulse = map_a(d,0,180,SERVO_LOW,SERVO_HIGH);
	if (HAL_TIM_PWM_ConfigChannel(&htim17, &sConfigOC, TIM_CHANNEL_1) != HAL_OK)
	{
		Error_Handler();
	}
	if (HAL_TIM_PWM_Start(&htim17, TIM_CHANNEL_1) != HAL_OK)
	{
		Error_Handler();
	}

}

int Synchronize1(uint8_t *txBuff, size_t txLength, uint8_t *rxBuff, size_t rxLength)
{
  int size=0; //受信したbyte数
  HAL_GPIO_WritePin(GPIOB,GPIO_PIN_3,1);
  HAL_UART_Transmit(&huart3,(uint8_t*)txBuff, txLength,0xf);
  while(HAL_UART_GetState(&huart3)==HAL_UART_STATE_BUSY_TX){}
  HAL_GPIO_WritePin(GPIOB,GPIO_PIN_3,0);
  size= HAL_UART_Receive(&huart3,(uint8_t*)rxBuff, rxLength,0xF);
  while(HAL_UART_GetState(&huart3)==HAL_UART_STATE_BUSY_RX){}
  if (size != HAL_OK) //指定した受信数かどうか確認
  {
    return 0;
  }
  return 1;
}

int ics_set_pos1(uint8_t id,unsigned short pos)
{
  uint8_t tx_data[3];
  uint8_t rx_data[3];
  int flag;
  int rAngle;   //受信した角度データ
  /// 送信コマンドを作成
  tx_data[0] = ICS_POS_CMD + id;
  tx_data[1] = (uint8_t)((pos & 0x3F80) >> 7);
  tx_data[2] = (uint8_t)(pos & 0x007F);

  //送受信を行う
  flag = Synchronize1(tx_data,3,rx_data,3);

  if(flag == 0) //失敗した場合は-1を返す
  {
    return -1;
  }

  rAngle = ((rx_data[1] << 7) & 0x3F80) + (rx_data[2] & 0x007F);

  return rAngle;
}
int ics_set_st1(uint8_t id,uint8_t stData)
{
  uint8_t tx_data[3];
  uint8_t rx_data[3];
  int flag;
  /// 送信コマンドを作成
  tx_data[0] = ICS_PARA_WRITE_COMMND + id;
  tx_data[1] = SUB_ST_COMMND;
  tx_data[2] = stData;

  //送受信を行う
  flag = Synchronize1(tx_data,3,rx_data,3);

  if(flag == 0) //失敗した場合は-1を返す
   {
     return -1;
   }

  return flag;
}

int ics_set_sp1(uint8_t id,uint8_t spData)
{
  uint8_t tx_data[3];
  uint8_t rx_data[3];
  int flag;
  /// 送信コマンドを作成
  tx_data[0] = ICS_PARA_WRITE_COMMND + id;
  tx_data[1] = SUB_SP_COMMND;
  tx_data[2] = spData;

  //送受信を行う
  flag = Synchronize1(tx_data,3,rx_data,3);

  if(flag == 0) //失敗した場合は-1を返す
    {
      return -1;
    }

  return flag;
}


void motor1(int m1b,int m1a){
	sConfigOC.Pulse = m1a;
	if (HAL_TIM_PWM_ConfigChannel(&htim1, &sConfigOC, TIM_CHANNEL_1) != HAL_OK)
	{
		Error_Handler();
	}
	if (HAL_TIM_PWM_Start(&htim1, TIM_CHANNEL_1) != HAL_OK)
	{
		Error_Handler();
	}
	sConfigOC.Pulse = m1b;
	if (HAL_TIM_PWM_ConfigChannel(&htim1, &sConfigOC, TIM_CHANNEL_2) != HAL_OK)
	{
		Error_Handler();
	}
	if (HAL_TIM_PWM_Start(&htim1, TIM_CHANNEL_2) != HAL_OK)
	{
		Error_Handler();
	}
}

void motor2(int m2b,int m2a){

	sConfigOC.Pulse = m2a;
	if (HAL_TIM_PWM_ConfigChannel(&htim1, &sConfigOC, TIM_CHANNEL_3) != HAL_OK)
	{
		Error_Handler();
	}
	if (HAL_TIM_PWM_Start(&htim1, TIM_CHANNEL_3) != HAL_OK)
	{
		Error_Handler();
	}
	sConfigOC.Pulse = m2b;
	if (HAL_TIM_PWM_ConfigChannel(&htim1, &sConfigOC, TIM_CHANNEL_4) != HAL_OK)
	{
		Error_Handler();
	}
	if (HAL_TIM_PWM_Start(&htim1, TIM_CHANNEL_4) != HAL_OK)
	{
		Error_Handler();
	}
}

void motor3(int m3b,int m3a){
	sConfigOC.Pulse = m3a;
	if (HAL_TIM_PWM_ConfigChannel(&htim2, &sConfigOC, TIM_CHANNEL_1) != HAL_OK)
	{
		Error_Handler();
	}
	if (HAL_TIM_PWM_Start(&htim2, TIM_CHANNEL_1) != HAL_OK)
	{
		Error_Handler();
	}
	sConfigOC.Pulse = m3b;
	if (HAL_TIM_PWM_ConfigChannel(&htim2, &sConfigOC, TIM_CHANNEL_2) != HAL_OK)
	{
		Error_Handler();
	}
	if (HAL_TIM_PWM_Start(&htim2, TIM_CHANNEL_2) != HAL_OK)
	{
		Error_Handler();
	}

}



long map_a(long x, long in_min, long in_max, long out_min, long out_max) {
	  return (x - in_min) * (out_max - out_min) / (in_max - in_min) + out_min;
	}
