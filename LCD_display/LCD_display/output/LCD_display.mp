Project:      output/LCD_display
Build Number: 0
Date:         Fri Jun 05 15:57:45 2015
Compiler:     ICCM8C
Version:      7.05.00


Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                             lit   0170   014D =    333. bytes (rel,con,rom,lit)

       Addr  Global Symbol
      -----  --------------------------------
       0170  _DigitSeg
       017A  _DigitSegSwap
       018B  LoadConfigTBL_led_display_Bank0
       0222  LoadConfigTBL_led_display_Bank1
       02BD  __lit_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                        func_lit   02BD   0002 =      2. bytes (rel,con,rom,proclab)

       Addr  Global Symbol
      -----  --------------------------------
       02BD  __func_lit_start
       02BF  __func_lit_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                     psoc_config   02BF   0107 =    263. bytes (rel,con,rom,code)

       Addr  Global Symbol
      -----  --------------------------------
       02BF  LoadConfigTBL_led_display_Ordered
       0364  _LoadConfigInit
       0364  LoadConfigInit
       036B  _LoadConfig_led_display
       036B  LoadConfig_led_display
       03C6  __psoc_config_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                     UserModules   03C6   03FE =   1022. bytes (rel,con,rom,code)

       Addr  Global Symbol
      -----  --------------------------------
       03C6  _UART_Sensor_TX_ISR
       03C7  _UART_Sensor_RX_ISR
       03C8  UART_Sensor_EnableInt
       03C8  _UART_Sensor_EnableInt
       03CF  UART_Sensor_DisableInt
       03CF  _UART_Sensor_DisableInt
       03D6  _UART_Sensor_SetTxIntMode
       03D6  UART_Sensor_SetTxIntMode
       03E8  UART_Sensor_Start
       03E8  _UART_Sensor_Start
       03EF  _UART_Sensor_Stop
       03EF  UART_Sensor_Stop
       03F6  _UART_Sensor_SendData
       03F6  UART_Sensor_SendData
       03F9  bUART_Sensor_ReadTxStatus
       03F9  UART_Sensor_bReadTxStatus
       03F9  _UART_Sensor_bReadTxStatus
       03F9  _bUART_Sensor_ReadTxStatus
       03FC  _bUART_Sensor_ReadRxData
       03FC  UART_Sensor_bReadRxData
       03FC  _UART_Sensor_bReadRxData
       03FC  bUART_Sensor_ReadRxData
       03FF  bUART_Sensor_ReadRxStatus
       03FF  _UART_Sensor_bReadRxStatus
       03FF  UART_Sensor_bReadRxStatus
       03FF  _bUART_Sensor_ReadRxStatus
       0402  _UART_Sensor_TxIntMode
       0402  UART_Sensor_TxIntMode
       0415  UART_Sensor_IntCntl
       0415  _UART_Sensor_IntCntl
       0440  UART_Sensor_PutSHexByte
       0440  _UART_Sensor_PutSHexByte
       0453  _UART_Sensor_PutSHexInt
       0453  UART_Sensor_PutSHexInt
       045A  UART_Sensor_PutChar
       045A  _UART_Sensor_PutChar
       0462  UART_Sensor_cGetChar
       0462  _UART_Sensor_cGetChar
       046A  UART_Sensor_cReadChar
       046A  _UART_Sensor_cReadChar
       0481  _UART_Sensor_iReadChar
       0481  UART_Sensor_iReadChar
       0497  _UART_Sensor_PutString
       0497  UART_Sensor_PutString
       04A9  UART_Sensor_Write
       04A9  _UART_Sensor_Write
       04D1  UART_Sensor_CWrite
       04D1  _UART_Sensor_CWrite
       04FD  UART_Sensor_CPutString
       04FD  _UART_Sensor_CPutString
       050F  UART_Sensor_PutCRLF
       050F  _UART_Sensor_PutCRLF
       0518  _UART_Board_TX_ISR
       0519  _UART_Board_RX_ISR
       051A  _UART_Board_EnableInt
       051A  UART_Board_EnableInt
       0521  UART_Board_DisableInt
       0521  _UART_Board_DisableInt
       0528  _UART_Board_SetTxIntMode
       0528  UART_Board_SetTxIntMode
       053A  _UART_Board_Start
       053A  UART_Board_Start
       0541  UART_Board_Stop
       0541  _UART_Board_Stop
       0548  _UART_Board_SendData
       0548  UART_Board_SendData
       054B  _bUART_Board_ReadTxStatus
       054B  UART_Board_bReadTxStatus
       054B  _UART_Board_bReadTxStatus
       054B  bUART_Board_ReadTxStatus
       054E  bUART_Board_ReadRxData
       054E  _bUART_Board_ReadRxData
       054E  _UART_Board_bReadRxData
       054E  UART_Board_bReadRxData
       0551  _UART_Board_bReadRxStatus
       0551  _bUART_Board_ReadRxStatus
       0551  UART_Board_bReadRxStatus
       0551  bUART_Board_ReadRxStatus
       0554  UART_Board_TxIntMode
       0554  _UART_Board_TxIntMode
       0567  UART_Board_IntCntl
       0567  _UART_Board_IntCntl
       0592  UART_Board_PutSHexByte
       0592  _UART_Board_PutSHexByte
       05A5  UART_Board_PutSHexInt
       05A5  _UART_Board_PutSHexInt
       05AC  _UART_Board_PutChar
       05AC  UART_Board_PutChar
       05B4  _UART_Board_cGetChar
       05B4  UART_Board_cGetChar
       05BC  UART_Board_cReadChar
       05BC  _UART_Board_cReadChar
       05D3  _UART_Board_iReadChar
       05D3  UART_Board_iReadChar
       05E9  UART_Board_PutString
       05E9  _UART_Board_PutString
       05FB  UART_Board_Write
       05FB  _UART_Board_Write
       0623  UART_Board_CWrite
       0623  _UART_Board_CWrite
       064F  _UART_Board_CPutString
       064F  UART_Board_CPutString
       0661  _UART_Board_PutCRLF
       0661  UART_Board_PutCRLF
       066A  Timer16_EnableInt
       066A  _Timer16_EnableInt
       066E  Timer16_DisableInt
       066E  _Timer16_DisableInt
       0672  Timer16_Start
       0672  _Timer16_Start
       0676  _Timer16_Stop
       0676  Timer16_Stop
       067A  Timer16_WritePeriod
       067A  _Timer16_WritePeriod
       0680  Timer16_WriteCompareValue
       0680  _Timer16_WriteCompareValue
       0686  Timer16_wReadCompareValue
       0686  wTimer16_ReadCompareValue
       0686  _wTimer16_ReadCompareValue
       0686  _Timer16_wReadCompareValue
       068C  _wTimer16_ReadCounter
       068C  wTimer16_ReadCounter
       068C  _Timer16_wReadTimerSaveCV
       068C  _wTimer16_ReadTimerSaveCV
       068C  wTimer16_ReadTimerSaveCV
       068C  Timer16_wReadTimerSaveCV
       06C2  wTimer16_ReadTimer
       06C2  _wTimer16_CaptureCounter
       06C2  _Timer16_wReadTimer
       06C2  _wTimer16_ReadTimer
       06C2  Timer16_wReadTimer
       06C2  wTimer16_CaptureCounter
       06CA  _SAR10_ISR
       06CB  SAR10_EnableInt
       06CB  _SAR10_EnableInt
       06CF  SAR10_DisableInt
       06CF  _SAR10_DisableInt
       06D3  SAR10_Start
       06D3  _SAR10_Start
       06DB  _SAR10_Stop
       06DB  SAR10_Stop
       06E3  _SAR10_Trigger
       06E3  SAR10_Trigger
       06EB  SAR10_fIsDataAvailable
       06EB  _SAR10_fIsDataAvailable
       06F4  SAR10_iGetData
       06F4  _SAR10_iGetData
       070C  SAR10_bGetData
       070C  _SAR10_bGetData
       070F  _SAR10_SetADCChannel
       070F  SAR10_SetADCChannel
       0725  SAR10_SetTriggerSrc
       0725  _SAR10_SetTriggerSrc
       073B  _SAR10_EnableAutoTrigger
       073B  SAR10_EnableAutoTrigger
       0751  _SAR10_SetClk
       0751  SAR10_SetClk
       0767  SAR10_SetRunMode
       0767  _SAR10_SetRunMode
       077D  _PWM8_BL_ISR
       077E  _PWM8_BL_EnableInt
       077E  PWM8_BL_EnableInt
       0782  _PWM8_BL_DisableInt
       0782  PWM8_BL_DisableInt
       0786  PWM8_BL_Start
       0786  _PWM8_BL_Start
       078A  _PWM8_BL_Stop
       078A  PWM8_BL_Stop
       078E  PWM8_BL_WritePeriod
       078E  _PWM8_BL_WritePeriod
       0791  PWM8_BL_WritePulseWidth
       0791  _PWM8_BL_WritePulseWidth
       0794  _bPWM8_BL_ReadPulseWidth
       0794  bPWM8_BL_ReadPulseWidth
       0794  PWM8_BL_bReadPulseWidth
       0794  _PWM8_BL_bReadPulseWidth
       0797  bPWM8_BL_ReadCounter
       0797  PWM8_BL_bReadCounter
       0797  _PWM8_BL_bReadCounter
       0797  _bPWM8_BL_ReadCounter
       07C4  __UserModules_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            text   07C4   120B =   4619. bytes (rel,con,rom,code)

       Addr  Global Symbol
      -----  --------------------------------
       07C4  _BoardUART
       07C4  __text_start
       07EC  _delay_us
       0807  _delay_ms
       081F  _SendBit_1621
       085B  _SendDataBit_1621
       0899  _SendCmd
       08BF  _Write_1621
       08F8  _WriteAll_1621
       0954  _HT1621B_Init
       0968  _DisplayPMxx
       0ACB  _ShowLife
       0B41  _ShowHumiTemp
       0C2E  _LCDOuputAll
       0EDA  _Timer16ISR
       0F17  _main
       1078  _SensorUART
       11CB  _FrameCheck
       1249  _Si7020SendCommand
       125B  _Si7020Read_RH_NHM
       128F  _Si7020Read_Temp_after_RHM
       12D0  _Si7020CalcTemp
       13B8  _Si7020CalcRH
       147D  _Init_IIC
       148E  _ChangeToRead
       14A4  _ChangeToOD
       14BA  _Start_I2c
       14E6  _Stop_I2c
       150F  _SendByte
       15A5  _RcvByte
       1600  _Ack_I2c
       1636  _ISendByte
       1673  _ISendStr
       16F0  _IRcvByte
       1734  _IRcvStr
       17EA  _IRcvBytes
       1998  _abs
       19CF  __text_end
       19CF  __xidata_start
       1A08  __xidata_end

Area                               Start  End    Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                             TOP   0000   012E =    302. bytes (abs,ovr,rom,code)

       Addr  Global Symbol
      -----  --------------------------------
       0068  __Start
       012B  _bGetPowerSetting
       012B  bGetPowerSetting

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
               virtual_registers   0034   0007 =      7. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       0034  __rZ
       0035  __rY
       0036  __rX
       0037  __r3
       0038  __r2
       0039  __r1
       003A  __r0

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            data   0000   005B =     91. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       0000  _MyPMSUnion
       0000  __data_start
       0028  _DisplayBuf
       003B  _RecBuf
       0040  _DisplayNum
       0043  _LightADCValue
       0045  _rh_sample_timer
       0046  _PlasmaTimer
       0047  _LcdUpdateTimer
       0048  _one_sec_timer
       0049  _RH_T_Flag
       004A  _mode
       004B  _LockStatus
       004C  _Plasma
       004D  _LifeFlag
       004E  _SpeedLvl
       004F  _PM_Flag
       0050  _HeapLife
       0051  _ack
       0052  _FanUpdateTimeReload
       0053  _Timer
       0054  _RHSampleStep
       0055  _Temperature
       0056  _Humidity
       0057  _FanFlag
       0058  _PlasmaFlag
       0059  _IICTimeOutTimer
       005A  _FanUpdateTimer
       005B  _Odor
       005C  _CarbonLife
       005D  _PMSFrameFlag
       005E  _DataPtr
       005F  _HeadPointer
       0060  _HeadFlag
       0061  _eepromtype

Files Linked      [ module(s) ]

./obj/boot.o	[ boot.asm ]
obj/boardcommunication.o	[ boardcommunication.c ]
obj/ht1621b.o	[ ht1621b.c ]
obj/lcd.o	[ lcd.c ]
obj/main.o	[ main.c ]
obj/particlesensor.o	[ particlesensor.c ]
obj/si7020.o	[ si7020.c ]
obj/software_iic.o	[ software_iic.c ]
<library>	[ uart_sensorint.asm, uart_sensor.asm, uart_boardint.asm, uart_board.asm, timer16.asm, sar10int.asm ]
[ sar10.asm, pwm8_blint.asm, pwm8_bl.asm, psocconfigtbl.asm, psocconfig.asm, rZ.asm, rY.asm, rX.asm ]
[ r3.asm, r2.asm, r1.asm, r0.asm, divmod_8x8_8_util.asm, divmodu_16x16_16_util.asm, divmodu_8x8_8_util.asm ]
[ i_div16_block_util.asm, i_div8_block_util.asm, mul16_util.asm, mul32_util.asm, abs.s ]

Area Definitions

-blit:0x170.0x3fff
-bdata:0.0x2ff
-BInterruptRAM:0	allocated at: 0
-Bvirtual_registers	allocated at: 0x34
-Bled_display_RAM	allocated at: 0
-rwh:SSCParmBlk:0xf7.0xff

