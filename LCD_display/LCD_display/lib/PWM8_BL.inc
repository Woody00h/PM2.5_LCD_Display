;;*****************************************************************************
;;*****************************************************************************
;;  FILENAME: PWM8_BL.inc
;;   Version: 2.60, Updated on 2013/5/19 at 10:44:7
;;  Generated by PSoC Designer 5.4.2946
;;
;;  DESCRIPTION: Assembler declarations for the PWM8 user module interface
;;-----------------------------------------------------------------------------
;;  Copyright (c) Cypress Semiconductor 2013. All Rights Reserved.
;;*****************************************************************************
;;*****************************************************************************

include "m8c.inc"


;--------------------------------------------------
; Constants for PWM8_BL API's.
;--------------------------------------------------

PWM8_BL_CONTROL_REG_START_BIT:             equ 0x01    ; Control register start bit
PWM8_BL_INT_REG:                           equ 0x0e1
PWM8_BL_INT_MASK:                          equ 0x10


;--------------------------------------------------
; Constants for PWM8_BL user defined values
;--------------------------------------------------

PWM8_BL_PERIOD:                            equ 0x00
PWM8_BL_PULSE_WIDTH:                       equ 0x00


;--------------------------------------------------
; Register Address Constants for PWM8_BL
;--------------------------------------------------

PWM8_BL_COUNTER_REG:                   equ 0x30   ; DR0 Count register
PWM8_BL_PERIOD_REG:                    equ 0x31   ; DR1 Period register
PWM8_BL_COMPARE_REG:                   equ 0x32   ; DR2 Compare register
PWM8_BL_CONTROL_REG:                   equ 0x33   ; Control register
PWM8_BL_FUNC_REG:                      equ 0x30   ; Function register
PWM8_BL_INPUT_REG:                     equ 0x31   ; Input register
PWM8_BL_OUTPUT_REG:                    equ 0x32   ; Output register


;--------------------------------------------------
; PWM8_BL Macro 'Functions'
;--------------------------------------------------

   macro PWM8_BL_Start_M
   or    reg[PWM8_BL_CONTROL_REG],  PWM8_BL_CONTROL_REG_START_BIT
   endm

   macro PWM8_BL_Stop_M
   and   reg[PWM8_BL_CONTROL_REG], ~PWM8_BL_CONTROL_REG_START_BIT
   endm

   macro PWM8_BL_EnableInt_M
   M8C_EnableIntMask PWM8_BL_INT_REG, PWM8_BL_INT_MASK
   endm

   macro PWM8_BL_DisableInt_M
   M8C_DisableIntMask PWM8_BL_INT_REG, PWM8_BL_INT_MASK
   endm


; end of file PWM8_BL.inc
