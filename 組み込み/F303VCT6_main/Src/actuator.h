/*
 * actuator.h
 *
 *  Created on: 2017/11/05
 *      Author: okada_tech
 */

#ifndef ACTUATOR_H_
#define ACTUATOR_H_
#include "management.h"


#define SERVO_MIN 3500 // サーボ最小動作角(-135度)
#define SERVO_CENTER 7500 // サーボ中心角(0度)
#define SERVO_MAX 11500 // サーボ最大動作角(+135度)
#define SERVO_LOW 380
#define SERVO_HIGH 1120

TIM_MasterConfigTypeDef sMasterConfig;
TIM_OC_InitTypeDef sConfigOC;
TIM_BreakDeadTimeConfigTypeDef sBreakDeadTimeConfig;

void servo(uint8_t a,uint8_t b,uint8_t c,uint8_t d);

void motor1(int m1b,int m1a);
void motor2(int m2b,int m2a);
void motor3(int m3b,int m3a);

int Synchronize1(uint8_t *txBuff, size_t txLength, uint8_t *rxBuff, size_t rxLength);
int ics_set_pos1(uint8_t id,unsigned short pos);
int ics_set_st1(uint8_t id,uint8_t stData);
int ics_set_sp1(uint8_t id,uint8_t spData);

long map_a(long x, long in_min, long in_max, long out_min, long out_max);
#endif /* ACTUATOR_H_ */
