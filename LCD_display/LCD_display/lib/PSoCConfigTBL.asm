;  Generated by PSoC Designer 5.4.2946
;
; =============================================================================
; FILENAME: PSoCConfigTBL.asm
;  
; Copyright (c) Cypress Semiconductor 2013. All Rights Reserved.
;  
; NOTES:
; Do not modify this file. It is generated by PSoC Designer each time the
; generate application function is run. The values of the parameters in this
; file can be modified by changing the values of the global parameters in the
; device editor.
;  
; =============================================================================
 
include "m8c.inc"
;  Personalization tables 
export LoadConfigTBL_led_display_Bank1
export LoadConfigTBL_led_display_Bank0
export LoadConfigTBL_led_display_Ordered
AREA lit(rom, rel)
LoadConfigTBL_led_display_Bank0:
;  Instance name PWM8_BL, User Module PWM8
;       Instance name PWM8_BL, Block Name PWM8(DBC10)
	db		33h, 00h		;PWM8_BL_CONTROL_REG(DBC10CR0)
	db		31h, 00h		;PWM8_BL_PERIOD_REG(DBC10DR1)
	db		32h, 00h		;PWM8_BL_COMPARE_REG(DBC10DR2)
;  Instance name SAR10, User Module SAR10
;  Instance name Timer16, User Module Timer16
;       Instance name Timer16, Block Name TIMER16_LSB(DBC00)
	db		23h, 00h		;Timer16_CONTROL_LSB_REG(DBC00CR0)
	db		21h, 80h		;Timer16_PERIOD_LSB_REG(DBC00DR1)
	db		22h, 28h		;Timer16_COMPARE_LSB_REG(DBC00DR2)
;       Instance name Timer16, Block Name TIMER16_MSB(DBC01)
	db		27h, 04h		;Timer16_CONTROL_MSB_REG(DBC01CR0)
	db		25h, 25h		;Timer16_PERIOD_MSB_REG(DBC01DR1)
	db		26h, 23h		;Timer16_COMPARE_MSB_REG(DBC01DR2)
;  Instance name UART_Board, User Module UART
;       Instance name UART_Board, Block Name RX(DCC13)
	db		3fh, 00h		;UART_Board_RX_CONTROL_REG(DCC13CR0)
	db		3dh, 00h		;UART_Board_(DCC13DR1)
	db		3eh, 00h		;UART_Board_RX_BUFFER_REG (DCC13DR2)
;       Instance name UART_Board, Block Name TX(DCC12)
	db		3bh, 00h		;UART_Board_TX_CONTROL_REG(DCC12CR0)
	db		39h, 00h		;UART_Board_TX_BUFFER_REG (DCC12DR1)
	db		3ah, 00h		;UART_Board_(DCC12DR2)
;  Instance name UART_Sensor, User Module UART
;       Instance name UART_Sensor, Block Name RX(DCC03)
	db		2fh, 00h		;UART_Sensor_RX_CONTROL_REG(DCC03CR0)
	db		2dh, 00h		;UART_Sensor_(DCC03DR1)
	db		2eh, 00h		;UART_Sensor_RX_BUFFER_REG (DCC03DR2)
;       Instance name UART_Sensor, Block Name TX(DCC02)
	db		2bh, 00h		;UART_Sensor_TX_CONTROL_REG(DCC02CR0)
	db		29h, 00h		;UART_Sensor_TX_BUFFER_REG (DCC02DR1)
	db		2ah, 00h		;UART_Sensor_(DCC02DR2)
;  Global Register values Bank 0
	db		6ah, 00h		; ADCDataHigh register (ADC_DH)
	db		6bh, 00h		; ADCDataLow register (ADC_DL)
	db		60h, 09h		; AnalogColumnInputSelect register (AMX_IN)
	db		66h, 00h		; AnalogComparatorControl1 register (CMP_CR1)
	db		61h, 00h		; AnalogMuxBusConfig register (AMUX_CFG)
	db		fch, 00h		; AnalogMuxDACData:0 register (IDACR_D)
	db		fdh, 00h		; AnalogMuxDACData:1 register (IDACL_D)
	db		65h, 00h		; AnalogSynchronizationControl register (ASY_CR)
	db		53h, 00h		; CSD0Control0 register (CSD0_CR0)
	db		57h, 00h		; CSD0Control1 register (CSD0_CR1)
	db		56h, 00h		; CSD0CounterHigh register (CSD0_CNT_H)
	db		52h, 00h		; CSD0CounterLow register (CSD0_CNT_L)
	db		54h, 00h		; CSD0Data0High register (CSD0_DR0_H)
	db		50h, 00h		; CSD0Data0Low register (CSD0_DR0_L)
	db		55h, 00h		; CSD0Data1High register (CSD0_DR1_H)
	db		51h, 00h		; CSD0Data1Low register (CSD0_DR1_L)
	db		5bh, 00h		; CSD1Control0 register (CSD1_CR0)
	db		5fh, 00h		; CSD1Control1 register (CSD1_CR1)
	db		5eh, 00h		; CSD1CounterHigh register (CSD1_CNT_H)
	db		5ah, 00h		; CSD1CounterLow register (CSD1_CNT_L)
	db		5ch, 00h		; CSD1Data0High register (CSD1_DR0_H)
	db		58h, 00h		; CSD1Data0Low register (CSD1_DR0_L)
	db		5dh, 00h		; CSD1Data1High register (CSD1_DR1_H)
	db		59h, 00h		; CSD1Data1Low register (CSD1_DR1_L)
	db		e6h, 00h		; DecimatorControl_0 register (DEC_CR0)
	db		e7h, 00h		; DecimatorControl_1 register (DEC_CR1)
	db		e4h, 00h		; DecimatorDataHigh register (DEC_DH)
	db		e5h, 00h		; DecimatorDataLow register (DEC_DL)
	db		d6h, 00h		; I2CConfig register (I2CCFG)
	db		cah, 00h		; IDACMode register (IDACMODE)
	db		cbh, 00h		; PWMSource register (PWMSRC)
	db		c8h, 00h		; PWMVoltageReference_0 register (PWMVREF0)
	db		c9h, 00h		; PWMVoltageReference_1 register (PWMVREF1)
	db		62h, 00h		; PWM_Control register (PWM_CR)
	db		b7h, 00h		; RowDigitalInterconnectInputSelect:0 register (RDI0DSM)
	db		bfh, 00h		; RowDigitalInterconnectInputSelect:1 register (RDI1DSM)
	db		b0h, 00h		; Row_0_InputMux register (RDI0RI)
	db		b1h, 00h		; Row_0_InputSync register (RDI0SYN)
	db		b2h, 00h		; Row_0_LogicInputAMux register (RDI0IS)
	db		b3h, 33h		; Row_0_LogicSelect_0 register (RDI0LT0)
	db		b4h, 33h		; Row_0_LogicSelect_1 register (RDI0LT1)
	db		b5h, 01h		; Row_0_OutputDrive_0 register (RDI0SRO0)
	db		b6h, 00h		; Row_0_OutputDrive_1 register (RDI0SRO1)
	db		b8h, 55h		; Row_1_InputMux register (RDI1RI)
	db		b9h, 00h		; Row_1_InputSync register (RDI1SYN)
	db		bah, 10h		; Row_1_LogicInputAMux register (RDI1IS)
	db		bbh, 33h		; Row_1_LogicSelect_0 register (RDI1LT0)
	db		bch, 33h		; Row_1_LogicSelect_1 register (RDI1LT1)
	db		bdh, 02h		; Row_1_OutputDrive_0 register (RDI1SRO0)
	db		beh, 10h		; Row_1_OutputDrive_1 register (RDI1SRO1)
	db		cdh, 00h		; TSCMPHigh register (TSCMPH)
	db		ceh, 00h		; TSCMPLow register (TSCMPL)
	db		cch, 00h		; TSource:0 register (TSCR0)
	db		cfh, 00h		; TSource:1 register (TSCR1)
	db		ffh
LoadConfigTBL_led_display_Bank1:
;  Instance name PWM8_BL, User Module PWM8
;       Instance name PWM8_BL, Block Name PWM8(DBC10)
	db		33h, 00h		;PWM8_BL_(DBC10CR1)
	db		30h, 21h		;PWM8_BL_FUNC_REG(DBC10FN)
	db		31h, 11h		;PWM8_BL_INPUT_REG(DBC10IN)
	db		32h, 07h		;PWM8_BL_OUTPUT_REG(DBC10OU)
;  Instance name SAR10, User Module SAR10
;  Instance name Timer16, User Module Timer16
;       Instance name Timer16, Block Name TIMER16_LSB(DBC00)
	db		23h, 00h		;Timer16_(DBC00CR1)
	db		20h, 00h		;Timer16_FUNC_LSB_REG(DBC00FN)
	db		21h, 01h		;Timer16_INPUT_LSB_REG(DBC00IN)
	db		22h, 40h		;Timer16_OUTPUT_LSB_REG(DBC00OU)
;       Instance name Timer16, Block Name TIMER16_MSB(DBC01)
	db		27h, 00h		;Timer16_(DBC01CR1)
	db		24h, 20h		;Timer16_FUNC_MSB_REG(DBC01FN)
	db		25h, 31h		;Timer16_INPUT_MSB_REG(DBC01IN)
	db		26h, 40h		;Timer16_OUTPUT_MSB_REG(DBC01OU)
;  Instance name UART_Board, User Module UART
;       Instance name UART_Board, Block Name RX(DCC13)
	db		3fh, 00h		;UART_Board_(DCC13CR1)
	db		3ch, 05h		;UART_Board_RX_FUNC_REG   (DCC13FN)
	db		3dh, c1h		;UART_Board_RX_INPUT_REG  (DCC13IN)
	db		3eh, 40h		;UART_Board_RX_OUTPUT_REG (DCC13OU)
;       Instance name UART_Board, Block Name TX(DCC12)
	db		3bh, 00h		;UART_Board_(DCC12CR1)
	db		38h, 1dh		;UART_Board_TX_FUNC_REG   (DCC12FN)
	db		39h, 01h		;UART_Board_TX_INPUT_REG  (DCC12IN)
	db		3ah, 44h		;UART_Board_TX_OUTPUT_REG (DCC12OU)
;  Instance name UART_Sensor, User Module UART
;       Instance name UART_Sensor, Block Name RX(DCC03)
	db		2fh, 00h		;UART_Sensor_(DCC03CR1)
	db		2ch, 05h		;UART_Sensor_RX_FUNC_REG   (DCC03FN)
	db		2dh, c1h		;UART_Sensor_RX_INPUT_REG  (DCC03IN)
	db		2eh, 40h		;UART_Sensor_RX_OUTPUT_REG (DCC03OU)
;       Instance name UART_Sensor, Block Name TX(DCC02)
	db		2bh, 00h		;UART_Sensor_(DCC02CR1)
	db		28h, 1dh		;UART_Sensor_TX_FUNC_REG   (DCC02FN)
	db		29h, 01h		;UART_Sensor_TX_INPUT_REG  (DCC02IN)
	db		2ah, 44h		;UART_Sensor_TX_OUTPUT_REG (DCC02OU)
;  Global Register values Bank 1
	db		a8h, 60h		; ADCControl0 register (ADC_CR0)
	db		a9h, 0ah		; ADCControl1 register (ADC_CR1)
	db		aah, 00h		; ADCControl2 register (ADC_CR2)
	db		abh, 00h		; ADCControl3 register (ADC_CR3TRIM)
	db		ach, 00h		; ADCControl4 register (ADC_CR4)
	db		61h, 00h		; AnalogClockSelect1 register (CLK_CR1)
	db		69h, 00h		; AnalogClockSelect2 register (CLK_CR2)
	db		60h, 00h		; AnalogColumnClockSelect register (CLK_CR0)
	db		62h, 00h		; AnalogIOControl_0 register (ABF_CR0)
	db		67h, 33h		; AnalogLUTControl0 register (ALT_CR0)
	db		68h, 00h		; AnalogLUTControl1 register (ALT_CR1)
	db		5fh, 00h		; CMPClock:0 register (CMPCLK0)
	db		5eh, 00h		; CMPClock:1 register (CMPCLK1)
	db		5bh, 02h		; CMPColumnMux register (CMPCOLMUX)
	db		5dh, 00h		; CMPFilterControl register (CMPFLTCR)
	db		5ch, 00h		; CMPPWMControl register (CMPPWMCR)
	db		59h, 00h		; CSCMOGlobalOutEnable register (CSCMPGOEN)
	db		58h, 00h		; CSCMPControl:0 register (CSCMPCR0)
	db		5ah, 33h		; CSLUTControl register (CSLUTCR0)
	db		64h, 00h		; ComparatorGlobalOutEn register (CMP_GO_EN)
	db		65h, 00h		; ComparatorGlobalOutEn1 register (CMP_GO_EN1)
	db		fdh, 00h		; DAC_Control register (DAC_CR0)
	db		dch, 00h		; DAC_Control_1 register (DAC_CR1)
	db		d1h, 00h		; GlobalDigitalInterconnect_Drive_Even_Input register (GDI_E_IN)
	db		a1h, 00h		; GlobalDigitalInterconnect_Drive_Even_Input_Control register (GDI_E_IN_CR)
	db		d3h, 00h		; GlobalDigitalInterconnect_Drive_Even_Output register (GDI_E_OU)
	db		a3h, 00h		; GlobalDigitalInterconnect_Drive_Even_Output_Control register (GDI_E_OU_CR)
	db		d0h, 00h		; GlobalDigitalInterconnect_Drive_Odd_Input register (GDI_O_IN)
	db		a0h, 00h		; GlobalDigitalInterconnect_Drive_Odd_Input_Control register (GDI_O_IN_CR)
	db		d2h, 00h		; GlobalDigitalInterconnect_Drive_Odd_Output register (GDI_O_OU)
	db		a2h, 00h		; GlobalDigitalInterconnect_Drive_Odd_Output_Control register (GDI_O_OU_CR)
	db		adh, 00h		; I2CAddress register (I2C_ADDR)
	db		e1h, 7fh		; OscillatorControl_1 register (OSC_CR1)
	db		e2h, 00h		; OscillatorControl_2 register (OSC_CR2)
	db		dfh, 26h		; OscillatorControl_3 register (OSC_CR3)
	db		deh, 01h		; OscillatorControl_4 register (OSC_CR4)
	db		ddh, 00h		; OscillatorGlobalBusEnableControl register (OSC_GO_EN)
	db		d8h, 00h		; Port_0_MUXBusCtrl register (MUX_CR0)
	db		d9h, 00h		; Port_1_MUXBusCtrl register (MUX_CR1)
	db		dah, 00h		; Port_2_MUXBusCtrl register (MUX_CR2)
	db		dbh, 00h		; Port_3_MUXBusCtrl register (MUX_CR3)
	db		ech, 00h		; Port_4_MUXBusCtrl register (MUX_CR4)
	db		a7h, 00h		; RTClockControl register (RTCCR)
	db		a4h, 00h		; RTCurrentHour register (RTCH)
	db		a5h, 00h		; RTCurrentMinute register (RTCM)
	db		a6h, 00h		; RTCurrentSecond register (RTCS)
	db		53h, 00h		; VDAC5Control0:0 register (VDAC50CR0)
	db		57h, 00h		; VDAC5Control0:1 register (VDAC51CR0)
	db		e7h, 00h		; VDACTrim register (VDAC_TRIM)
	db		ffh
AREA psoc_config(rom, rel)
LoadConfigTBL_led_display_Ordered:
;  Ordered Global Register values
	M8C_SetBank0
	mov	reg[00h], eeh		; Port_0_Data register (PRT0DR)
	M8C_SetBank1
	mov	reg[00h], feh		; Port_0_DriveMode_0 register (PRT0DM0)
	mov	reg[01h], 01h		; Port_0_DriveMode_1 register (PRT0DM1)
	M8C_SetBank0
	mov	reg[03h], 00h		; Port_0_DriveMode_2 register (PRT0DM2)
	mov	reg[02h], 11h		; Port_0_GlobalSelect register (PRT0GS)
	M8C_SetBank1
	mov	reg[02h], 00h		; Port_0_IntCtrl_0 register (PRT0IC0)
	mov	reg[03h], 00h		; Port_0_IntCtrl_1 register (PRT0IC1)
	M8C_SetBank0
	mov	reg[01h], 00h		; Port_0_IntEn register (PRT0IE)
	mov	reg[04h], a0h		; Port_1_Data register (PRT1DR)
	M8C_SetBank1
	mov	reg[04h], a0h		; Port_1_DriveMode_0 register (PRT1DM0)
	mov	reg[05h], ffh		; Port_1_DriveMode_1 register (PRT1DM1)
	M8C_SetBank0
	mov	reg[07h], efh		; Port_1_DriveMode_2 register (PRT1DM2)
	mov	reg[06h], 00h		; Port_1_GlobalSelect register (PRT1GS)
	M8C_SetBank1
	mov	reg[06h], 00h		; Port_1_IntCtrl_0 register (PRT1IC0)
	mov	reg[07h], 00h		; Port_1_IntCtrl_1 register (PRT1IC1)
	M8C_SetBank0
	mov	reg[05h], 00h		; Port_1_IntEn register (PRT1IE)
	mov	reg[08h], 00h		; Port_2_Data register (PRT2DR)
	M8C_SetBank1
	mov	reg[08h], 29h		; Port_2_DriveMode_0 register (PRT2DM0)
	mov	reg[09h], d6h		; Port_2_DriveMode_1 register (PRT2DM1)
	M8C_SetBank0
	mov	reg[0bh], c6h		; Port_2_DriveMode_2 register (PRT2DM2)
	mov	reg[0ah], 19h		; Port_2_GlobalSelect register (PRT2GS)
	M8C_SetBank1
	mov	reg[0ah], 00h		; Port_2_IntCtrl_0 register (PRT2IC0)
	mov	reg[0bh], 00h		; Port_2_IntCtrl_1 register (PRT2IC1)
	M8C_SetBank0
	mov	reg[09h], 00h		; Port_2_IntEn register (PRT2IE)
	mov	reg[0ch], 00h		; Port_3_Data register (PRT3DR)
	M8C_SetBank1
	mov	reg[0ch], 00h		; Port_3_DriveMode_0 register (PRT3DM0)
	mov	reg[0dh], 00h		; Port_3_DriveMode_1 register (PRT3DM1)
	M8C_SetBank0
	mov	reg[0fh], 00h		; Port_3_DriveMode_2 register (PRT3DM2)
	mov	reg[0eh], 00h		; Port_3_GlobalSelect register (PRT3GS)
	M8C_SetBank1
	mov	reg[0eh], 00h		; Port_3_IntCtrl_0 register (PRT3IC0)
	mov	reg[0fh], 00h		; Port_3_IntCtrl_1 register (PRT3IC1)
	M8C_SetBank0
	mov	reg[0dh], 00h		; Port_3_IntEn register (PRT3IE)
	mov	reg[10h], 00h		; Port_4_Data register (PRT4DR)
	M8C_SetBank1
	mov	reg[10h], 00h		; Port_4_DriveMode_0 register (PRT4DM0)
	mov	reg[11h], 00h		; Port_4_DriveMode_1 register (PRT4DM1)
	M8C_SetBank0
	mov	reg[13h], 00h		; Port_4_DriveMode_2 register (PRT4DM2)
	mov	reg[12h], 00h		; Port_4_GlobalSelect register (PRT4GS)
	M8C_SetBank1
	mov	reg[12h], 00h		; Port_4_IntCtrl_0 register (PRT4IC0)
	mov	reg[13h], 00h		; Port_4_IntCtrl_1 register (PRT4IC1)
	M8C_SetBank0
	mov	reg[11h], 00h		; Port_4_IntEn register (PRT4IE)
	M8C_SetBank0
	ret


; PSoC Configuration file trailer PsocConfig.asm
