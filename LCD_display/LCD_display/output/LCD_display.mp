HI-TECH Software C Compiler 

Linker command line:

\
  --edf=C:\Program Files (x86)\HI-TECH Software\HCPSOC\PRO\9.61\dat\en_msgs.txt \
  -cs -h+output\LCD_display.sym -z -QCY8C22345 -ol.obj \
  -Moutput/LCD_display.mp -E1 -ACODE=00h-03h,065h-03FFFh \
  -ABANKROM=00h-03h,065h-0FFh,0100h-01FFhx63 -AROM=00h-03h,065h-03FFFh \
  -ARAM=00h-0F7h,0100h-01FFhx3 -pvectors=0x0 -pstrings=ROM -pcdata=ROM \
  -pPD_startup=CODE,powerup,init,end_init -pintrtext=CODE -pmaintext=CODE \
  -ptext=CODE -pUserModules=CODE \
  -pbss0=00h,rbit0,ramdata0,nvram0,nvbit0,fnauto -promdata0=BANKROM \
  -pbss1=0100h,rbit1,ramdata1,nvram1,nvbit1 -promdata1=BANKROM \
  -pbss2=0200h,rbit2,ramdata2,nvram2,nvbit2 -promdata2=BANKROM \
  -pbss3=0300h,rbit3,ramdata3,nvram3,nvbit3 -promdata3=BANKROM \
  -pstackps=0300h/0300h output\startup.obj output\LCD_display.obj \
  ./obj/boot.obj lib/libpsoc.lib \
  D:/Cypress/PSOCDE~1/5.4/Common/CY110F~1/tools/lib/CY8C22045/cms.lib 

Object code version is 3.10

Machine type is CY8C22345

Call graph: (short form)

*_main size 0,2 offset 0
     _Init_IIC size 0,0 offset 2
     _delay_us size 0,2 offset 13
     _HT1621B_Init size 0,0 offset 2
         _SendCmd size 0,1 offset 2
             _SendBit_1621 size 0,3 offset 7
                 _delay_us size 0,2 offset 13
             _delay_us size 0,2 offset 13
     _PWM8_BL_WritePeriod size 0,0 offset 2
     _PWM8_BL_WritePulseWidth size 0,0 offset 2
     _PWM8_BL_Start size 0,0 offset 2
     _UART_Board_Start size 0,0 offset 2
     _UART_Sensor_Start size 0,0 offset 2
     _UART_Sensor_IntCntl size 0,0 offset 2
     _Timer16_WritePeriod size 0,0 offset 2
     _Timer16_WriteCompareValue size 0,0 offset 2
     _Timer16_EnableInt size 0,0 offset 2
     _Timer16_Start size 0,0 offset 2
     _UART_Board_CPutString size 0,0 offset 2
     _SAR10_SetClk size 0,0 offset 2
     _SAR10_SetRunMode size 0,0 offset 2
     _SAR10_SetADCChannel size 0,0 offset 2
     _SAR10_DisableInt size 0,0 offset 2
     _SAR10_Start size 0,0 offset 2
     _Si7020Init size 0,2 offset 2
     _LCD_Init size 0,0 offset 2
     _FrameCheck size 0,6 offset 2
     _UART_Board_PutSHexInt size 0,0 offset 2
     _UART_Board_PutCRLF size 0,0 offset 2
     _SAR10_Trigger size 0,0 offset 2
     _SAR10_fIsDataAvailable size 0,0 offset 2
     _SAR10_iGetData size 0,0 offset 2
     _LightRank size 0,5 offset 2
     _Si7020SendCommand size 0,1 offset 4
         _ISendByte size 0,2 offset 5
             _Start_I2c size 0,0 offset 10
                 _delay_us size 0,2 offset 13
             _SendByte size 0,3 offset 10
                 _delay_us size 0,2 offset 13
                 _ChangeToRead size 0,0 offset 13
                     _delay_us size 0,2 offset 13
                 _ChangeToOD size 0,0 offset 13
                     _delay_us size 0,2 offset 13
             _Stop_I2c size 0,0 offset 10
                 _delay_us size 0,2 offset 13
     _Si7020Read_RH_NHM size 0,2 offset 2
         _IRcvBytes size 1,5 offset 4
             _Start_I2c size 0,0 offset 10
             _SendByte size 0,3 offset 10
             _Stop_I2c size 0,0 offset 10
             _RcvByte size 0,2 offset 10
                 _ChangeToRead size 0,0 offset 13
                 _delay_us size 0,2 offset 13
                 _ChangeToOD size 0,0 offset 13
             _Ack_I2c size 0,1 offset 10
                 _delay_us size 0,2 offset 13
     _CRC8Check size 0,0 offset 2
         _LeftRotate size 0,2 offset 2
     _Si7020CalcRH size 0,7 offset 2
         ___lmul size 8,4 offset 13
     _UART_Board_PutSHexByte size 0,0 offset 2
     _Si7020Read_Temp_after_RHM size 0,2 offset 2
         _Si7020SendCommand size 0,1 offset 4
         _IRcvBytes size 1,5 offset 4
*    _Si7020CalcTemp size 0,11 offset 2
*        ___lmul size 8,4 offset 13
         ___wmul size 2,4 offset 13
     _LCDOuputAll size 0,1 offset 2
         _DisplayPMxx size 0,7 offset 3
             ___lwdiv size 2,5 offset 10
             ___lwmod size 2,3 offset 10
         _ShowLife size 0,3 offset 3
             ___lbdiv size 0,4 offset 6
             ___lbmod size 0,4 offset 6
         _ShowHumiTemp size 0,5 offset 3
             _abs size 0,2 offset 8
             ___awdiv size 2,6 offset 8
             ___awmod size 2,4 offset 8
         _WriteAll_1621 size 1,3 offset 3
             _SendBit_1621 size 0,3 offset 7
             _SendDataBit_1621 size 0,3 offset 7
                 _delay_us size 0,2 offset 13
             _delay_us size 0,2 offset 13

Estimated maximum call depth: 5

*intlevel2 size 0,0 offset 25
     _BoardUART size 0,1 offset 25
         _UART_Board_bReadRxData size 0,0 offset 26
         _UART_Board_bReadTxStatus size 0,0 offset 26
         _UART_Board_SendData size 0,0 offset 26
     _Timer16ISR size 0,0 offset 25
*    _SensorUART size 0,3 offset 25
*        _UART_Sensor_bReadRxData size 0,0 offset 28

Estimated maximum call depth: 2


                Name          Link     Load   Length Selector Space Scale
output\startup.obj
                vectors          0        0        3       0     0
                init          3F9D     3F9D       30    3F43     0
                SSCParmBl       F8       F8        8       0     1
                TOP              4        4       61       0     0
output\LCD_display.obj
                ramdata0        5C       5C        7       0     1
                romdata0        65       65        7      65     0
                maintext      3C41     3C41      1BF    3C41     0
                text          3051     3051      BF0    3051     0
                bss0             0        0       5C       0     1
                cdata         3E00     3E00       1C      3E     0
                strings       3F00     3F00       43      3F     0
./obj/boot.obj  PD_startu     3F43     3F43       5A    3F43     0
                TOP              4        4       61       0     0

lib/libpsoc.lib
lib/obj/psocconfig.obj
                psoc_conf     2AB1     2AB1       64    2AB1     0
lib/obj/psocconfigtbl.obj
                lit           2B15     2B15      132    2B15     0
                psoc_conf     3E1C     3E1C       A5      3E     0
lib/obj/pwm8_bl.obj
                UserModul     2C47     2C47       48    2C47     0
lib/obj/pwm8_blint.obj
                UserModul     2C8F     2C8F        1    2C47     0
lib/obj/sar10.obj
                UserModul     2C90     2C90       BE    2C47     0
lib/obj/sar10int.obj
                UserModul     2D4E     2D4E        1    2C47     0
lib/obj/timer16.obj
                UserModul     2D4F     2D4F       62    2C47     0
lib/obj/uart_board.obj
                UserModul     2DB1     2DB1      14E    2C47     0
lib/obj/uart_boardint.obj
                UserModul     2EFF     2EFF        2    2C47     0
lib/obj/uart_sensor.obj
                UserModul     2F01     2F01      14E    2C47     0
lib/obj/uart_sensorint.obj
                UserModul     304F     304F        2    2C47     0

D:/Cypress/PSOCDE~1/5.4/Common/CY110F~1/tools/lib/CY8C22045/cms.lib

COMMON          fnauto          63       63       1C       0     1

TOTAL           Name          Link     Load   Length  Space
        CLASS   CODE           
                vectors          0        0        3     0
                maintext      3C41     3C41      1BF     0
                text          3051     3051      BF0     0
                PD_startu     3F43     3F43       5A     0
                init          3F9D     3F9D       30     0

        CLASS   BANKROM        
                romdata0        65       65        7     0

        CLASS   ROM            
                cdata         3E00     3E00       1C     0
                strings       3F00     3F00       43     0
                UserModul     2C47     2C47      40A     0
                TOP              4        4       61     0
                psoc_conf     2AB1     2AB1       64     0
                lit           2B15     2B15      132     0
                psoc_conf     3E1C     3E1C       A5     0

        CLASS   RAM            
                ramdata0        5C       5C        7     1
                fnauto          63       63       1C     1
                SSCParmBl       F8       F8        8     1
                bss0             0        0       5C     1



SEGMENTS        Name           Load    Length   Top     Selector    Space Class

                bss0            000000  00007F  00007F         0       1  RAM     
                vectors         000000  000003  000003         0       0  CODE    
                romdata0        000065  000007  00006C        65       0  BANKROM 
                psoc_config     002AB1  000064  002B15      2AB1       0  ROM     
                lit             002B15  000132  002C47      2B15       0  ROM     
                UserModules     002C47  00040A  003051      2C47       0  CODE    
                text            003051  000BF0  003C41      3051       0  CODE    
                maintext        003C41  0001BF  003E00      3C41       0  CODE    
                cdata           003E00  0000C1  003EC1        3E       0  ROM     
                strings         003F00  000043  003F43        3F       0  ROM     
                PD_startup      003F43  00008A  003FCD      3F43       0  CODE    


UNUSED ADDRESS RANGES

        BANKROM          0003-0003
                         006C-2AB0
                         3EC1-3EFF
                         3FCD-3FFF
        CODE             0003-0003
                         006C-2AB0
                         3EC1-3EFF
                         3FCD-3FFF
        RAM              007F-00F7
                         0100-03FF
        ROM              0003-0003
                         006C-2AB0
                         3EC1-3EFF
                         3FCD-3FFF

                                  Symbol Table

??_Ack_I2c                         fnauto          006D
??_BoardUART                       fnauto          007C
??_DisplayPMxx                     fnauto          0066
??_FrameCheck                      fnauto          0065
??_IRcvBytes                       fnauto          0068
??_ISendByte                       fnauto          0068
??_LCDOuputAll                     fnauto          0065
??_LeftRotate                      fnauto          0065
??_LightRank                       fnauto          0065
??_RcvByte                         fnauto          006D
??_SendBit_1621                    fnauto          006A
??_SendByte                        fnauto          006D
??_SendCmd                         fnauto          0065
??_SendDataBit_1621                fnauto          006A
??_SensorUART                      fnauto          007C
??_ShowHumiTemp                    fnauto          0066
??_ShowLife                        fnauto          0066
??_Si7020CalcRH                    fnauto          0065
??_Si7020CalcTemp                  fnauto          0065
??_Si7020Init                      fnauto          0065
??_Si7020Read_RH_NHM               fnauto          0065
??_Si7020Read_Temp_after_RHM       fnauto          0065
??_Si7020SendCommand               fnauto          0067
??_WriteAll_1621                   fnauto          0067
??___awdiv                         fnauto          006D
??___awmod                         fnauto          006D
??___lbdiv                         fnauto          0069
??___lbmod                         fnauto          0069
??___lmul                          fnauto          0078
??___lwdiv                         fnauto          006F
??___lwmod                         fnauto          006F
??___wmul                          fnauto          0072
??_abs                             fnauto          006B
??_delay_us                        fnauto          0070
??_main                            fnauto          0063
?_IRcvBytes                        fnauto          0067
?_WriteAll_1621                    fnauto          0066
?___awdiv                          fnauto          006B
?___awmod                          fnauto          006B
?___lmul                           fnauto          0070
?___lwdiv                          fnauto          006D
?___lwmod                          fnauto          006D
?___wmul                           fnauto          0070
Ack_I2c@a                          fnauto          006D
BoardUART@rxdata                   fnauto          007C
DisplayPMxx@index                  fnauto          006A
DisplayPMxx@k                      fnauto          006C
DisplayPMxx@pm                     fnauto          0066
DisplayPMxx@temp                   fnauto          0068
FrameCheck@checksum                fnauto          0065
FrameCheck@i                       fnauto          0067
IRcvBytes@i                        fnauto          006A
IRcvBytes@no                       fnauto          0067
IRcvBytes@s                        fnauto          0068
IRcvBytes@sla                      fnauto          0069
ISendByte@c                        fnauto          0068
ISendByte@sla                      fnauto          0069
LCDOuputAll@k                      fnauto          0065
LeftRotate@k                       fnauto          0065
LightRank@duty                     fnauto          0068
LightRank@i                        fnauto          0067
LightRank@light                    fnauto          0065
LoadConfigInit                     psoc_config     2AB1
LoadConfigTBL_led_display_Bank0    lit             2B15
LoadConfigTBL_led_display_Bank1    lit             2BAC
LoadConfigTBL_led_display_Ordered  psoc_config     3E1C
LoadConfig_led_display             psoc_config     2AB8
NO_SHADOW                          InterruptRAM    007F
PWM8_BL_DisableInt                 UserModules     2C4B
PWM8_BL_EnableInt                  UserModules     2C47
PWM8_BL_Start                      UserModules     2C4F
PWM8_BL_Stop                       UserModules     2C53
PWM8_BL_WritePeriod                UserModules     2C57
PWM8_BL_WritePulseWidth            UserModules     2C5A
PWM8_BL_bReadCounter               UserModules     2C60
PWM8_BL_bReadPulseWidth            UserModules     2C5D
RcvByte@BitCnt                     fnauto          006E
RcvByte@retc                       fnauto          006D
SAR10_DisableInt                   UserModules     2C94
SAR10_EnableAutoTrigger            UserModules     2D06
SAR10_EnableInt                    UserModules     2C90
SAR10_SetADCChannel                UserModules     2CD6
SAR10_SetClk                       UserModules     2D1E
SAR10_SetRunMode                   UserModules     2D36
SAR10_SetTriggerSrc                UserModules     2CEE
SAR10_Start                        UserModules     2C98
SAR10_Stop                         UserModules     2CA0
SAR10_Trigger                      UserModules     2CA8
SAR10_bGetData                     UserModules     2CD3
SAR10_fIsDataAvailable             UserModules     2CB0
SAR10_iGetData                     UserModules     2CB9
SendBit_1621@cnt                   fnauto          006A
SendBit_1621@data                  fnauto          006B
SendBit_1621@i                     fnauto          006C
SendByte@BitCnt                    fnauto          006E
SendByte@c                         fnauto          006D
SendCmd@command                    fnauto          0065
SendDataBit_1621@cnt               fnauto          006A
SendDataBit_1621@data              fnauto          006B
SendDataBit_1621@i                 fnauto          006C
SensorUART@rxdata                  fnauto          007C
ShowHumiTemp@index                 fnauto          0068
ShowHumiTemp@temp                  fnauto          0067
ShowHumiTemp@value                 fnauto          0066
ShowLife@index                     fnauto          0067
ShowLife@life                      fnauto          0066
ShowLife@temp                      fnauto          0068
Si7020CalcRH@data                  fnauto          0065
Si7020CalcRH@result                fnauto          006B
Si7020CalcRH@temp                  fnauto          0067
Si7020CalcTemp@data                fnauto          0065
Si7020CalcTemp@result              fnauto          006B
Si7020CalcTemp@temp                fnauto          0067
Si7020Init@my_data                 fnauto          0065
Si7020Read_RH_NHM@buffer           fnauto          0065
Si7020Read_RH_NHM@ret              fnauto          0066
Si7020Read_Temp_after_RHM@buffer   fnauto          0065
Si7020Read_Temp_after_RHM@ret      fnauto          0066
Si7020SendCommand@cmd              fnauto          0067
Timer16_DisableInt                 UserModules     2D53
Timer16_EnableInt                  UserModules     2D4F
Timer16_Start                      UserModules     2D57
Timer16_Stop                       UserModules     2D5B
Timer16_WriteCompareValue          UserModules     2D65
Timer16_WritePeriod                UserModules     2D5F
Timer16_wReadCompareValue          UserModules     2D6B
Timer16_wReadTimer                 UserModules     2DA9
Timer16_wReadTimerSaveCV           UserModules     2D71
UART_Board_CPutString              UserModules     2EE4
UART_Board_CWrite                  UserModules     2EB6
UART_Board_DisableInt              UserModules     2DB8
UART_Board_EnableInt               UserModules     2DB1
UART_Board_IntCntl                 UserModules     2DFE
UART_Board_PutCRLF                 UserModules     2EF6
UART_Board_PutChar                 UserModules     2E43
UART_Board_PutSHexByte             UserModules     2E29
UART_Board_PutSHexInt              UserModules     2E3C
UART_Board_PutString               UserModules     2E80
UART_Board_SendData                UserModules     2DDF
UART_Board_SetTxIntMode            UserModules     2DBF
UART_Board_Start                   UserModules     2DD1
UART_Board_Stop                    UserModules     2DD8
UART_Board_TxIntMode               UserModules     2DEB
UART_Board_Write                   UserModules     2E90
UART_Board_bReadRxData             UserModules     2DE5
UART_Board_bReadRxStatus           UserModules     2DE8
UART_Board_bReadTxStatus           UserModules     2DE2
UART_Board_cGetChar                UserModules     2E4B
UART_Board_cReadChar               UserModules     2E53
UART_Board_iReadChar               UserModules     2E6A
UART_Sensor_CPutString             UserModules     3034
UART_Sensor_CWrite                 UserModules     3006
UART_Sensor_DisableInt             UserModules     2F08
UART_Sensor_EnableInt              UserModules     2F01
UART_Sensor_IntCntl                UserModules     2F4E
UART_Sensor_PutCRLF                UserModules     3046
UART_Sensor_PutChar                UserModules     2F93
UART_Sensor_PutSHexByte            UserModules     2F79
UART_Sensor_PutSHexInt             UserModules     2F8C
UART_Sensor_PutString              UserModules     2FD0
UART_Sensor_SendData               UserModules     2F2F
UART_Sensor_SetTxIntMode           UserModules     2F0F
UART_Sensor_Start                  UserModules     2F21
UART_Sensor_Stop                   UserModules     2F28
UART_Sensor_TxIntMode              UserModules     2F3B
UART_Sensor_Write                  UserModules     2FE0
UART_Sensor_bReadRxData            UserModules     2F35
UART_Sensor_bReadRxStatus          UserModules     2F38
UART_Sensor_bReadTxStatus          UserModules     2F32
UART_Sensor_cGetChar               UserModules     2F9B
UART_Sensor_cReadChar              UserModules     2FA3
UART_Sensor_iReadChar              UserModules     2FBA
WriteAll_1621@addr                 fnauto          0068
WriteAll_1621@cnt                  fnauto          0066
WriteAll_1621@i                    fnauto          0069
WriteAll_1621@p                    fnauto          0067
_Ack_I2c                           text            3988
_BoardUART                         text            3B7A
_CRC8Check                         text            30E6
_CarbonLife                        bss0            0033
_ChangeToOD                        text            3B4D
_ChangeToRead                      text            3B3C
_DataPtr                           bss0            0034
_DigitSeg                          cdata           3E00
_DigitSegSwap                      cdata           3E0A
_DisplayBuf                        bss0            004B
_DisplayNum                        bss0            0028
_DisplayPMxx                       text            354D
_FanFlag                           bss0            0035
_FanUpdateTimeReload               bss0            0036
_FanUpdateTimer                    ramdata0        005C
_FrameCheck                        text            3051
_HT1621B_Init                      text            3457
_HeadFlag                          bss0            0037
_HeapLife                          bss0            0038
_Humidity                          bss0            0039
_IICTimeOutTimer                   bss0            003A
_IRcvBytes                         text            3706
_ISendByte                         text            3A46
_Init_IIC                          text            3446
_LCDOuputAll                       text            3293
_LCD_Init                          text            309E
_LcdUpdateTimer                    ramdata0        005D
_LeftRotate                        text            34AD
_LeftRotate$3395                   fnauto          0066
_LifeFlag                          bss0            003B
_LightADCValue                     bss0            002B
_LightRank                         text            31C4
_LoadConfigInit                    psoc_config     2AB1
_LoadConfig_led_display            psoc_config     2AB8
_LockStatus                        bss0            003C
_MyPMSUnion                        bss0            0000
_NO_SHADOW                         InterruptRAM    007F
_Odor                              bss0            003D
_PMSFrameFlag                      bss0            003E
_PM_Flag                           bss0            003F
_PWM8_BL_DisableInt                UserModules     2C4B
_PWM8_BL_EnableInt                 UserModules     2C47
_PWM8_BL_ISR                       UserModules     2C8F
_PWM8_BL_Start                     UserModules     2C4F
_PWM8_BL_Stop                      UserModules     2C53
_PWM8_BL_WritePeriod               UserModules     2C57
_PWM8_BL_WritePulseWidth           UserModules     2C5A
_PWM8_BL_bReadCounter              UserModules     2C60
_PWM8_BL_bReadPulseWidth           UserModules     2C5D
_Plasma                            bss0            0040
_PlasmaFlag                        bss0            0041
_PlasmaTimer                       ramdata0        005E
_RHSampleStep                      bss0            0042
_RH_T_Flag                         bss0            0043
_RankLevel                         cdata           3E14
_RcvByte                           text            39B4
_RecBuf                            bss0            0057
_RecTimeoutTimer                   bss0            0044
_SAR10_DisableInt                  UserModules     2C94
_SAR10_EnableAutoTrigger           UserModules     2D06
_SAR10_EnableInt                   UserModules     2C90
_SAR10_ISR                         UserModules     2D4E
_SAR10_SetADCChannel               UserModules     2CD6
_SAR10_SetClk                      UserModules     2D1E
_SAR10_SetRunMode                  UserModules     2D36
_SAR10_SetTriggerSrc               UserModules     2CEE
_SAR10_Start                       UserModules     2C98
_SAR10_Stop                        UserModules     2CA0
_SAR10_Trigger                     UserModules     2CA8
_SAR10_bGetData                    UserModules     2CD3
_SAR10_fIsDataAvailable            UserModules     2CB0
_SAR10_iGetData                    UserModules     2CB9
_SendBit_1621                      text            3776
_SendByte                          text            3AC2
_SendCmd                           text            36DC
_SendDataBit_1621                  text            381D
_SensorUART                        text            3BC3
_ShowHumiTemp                      text            3604
_ShowLife                          text            369C
_Si7020CalcRH                      text            3110
_Si7020CalcTemp                    text            31EF
_Si7020Data                        bss0            002D
_Si7020Init                        text            30BD
_Si7020Read_RH_NHM                 text            30CA
_Si7020Read_Temp_after_RHM         text            31A3
_Si7020SendCommand                 text            36FD
_SpeedLvl                          bss0            0045
_Start_I2c                         text            3A9D
_Stop_I2c                          text            3A7B
_Temperature                       bss0            0046
_Timer                             bss0            0047
_Timer16ISR                        text            3B93
_Timer16_DisableInt                UserModules     2D53
_Timer16_EnableInt                 UserModules     2D4F
_Timer16_Start                     UserModules     2D57
_Timer16_Stop                      UserModules     2D5B
_Timer16_WriteCompareValue         UserModules     2D65
_Timer16_WritePeriod               UserModules     2D5F
_Timer16_wReadCompareValue         UserModules     2D6B
_Timer16_wReadTimer                UserModules     2DA9
_Timer16_wReadTimerSaveCV          UserModules     2D71
_UART_Board_CPutString             UserModules     2EE4
_UART_Board_CWrite                 UserModules     2EB6
_UART_Board_DisableInt             UserModules     2DB8
_UART_Board_EnableInt              UserModules     2DB1
_UART_Board_IntCntl                UserModules     2DFE
_UART_Board_PutCRLF                UserModules     2EF6
_UART_Board_PutChar                UserModules     2E43
_UART_Board_PutSHexByte            UserModules     2E29
_UART_Board_PutSHexInt             UserModules     2E3C
_UART_Board_PutString              UserModules     2E80
_UART_Board_RX_ISR                 UserModules     2F00
_UART_Board_SendData               UserModules     2DDF
_UART_Board_SetTxIntMode           UserModules     2DBF
_UART_Board_Start                  UserModules     2DD1
_UART_Board_Stop                   UserModules     2DD8
_UART_Board_TX_ISR                 UserModules     2EFF
_UART_Board_TxIntMode              UserModules     2DEB
_UART_Board_Write                  UserModules     2E90
_UART_Board_bReadRxData            UserModules     2DE5
_UART_Board_bReadRxStatus          UserModules     2DE8
_UART_Board_bReadTxStatus          UserModules     2DE2
_UART_Board_cGetChar               UserModules     2E4B
_UART_Board_cReadChar              UserModules     2E53
_UART_Board_iReadChar              UserModules     2E6A
_UART_Sensor_CPutString            UserModules     3034
_UART_Sensor_CWrite                UserModules     3006
_UART_Sensor_DisableInt            UserModules     2F08
_UART_Sensor_EnableInt             UserModules     2F01
_UART_Sensor_IntCntl               UserModules     2F4E
_UART_Sensor_PutCRLF               UserModules     3046
_UART_Sensor_PutChar               UserModules     2F93
_UART_Sensor_PutSHexByte           UserModules     2F79
_UART_Sensor_PutSHexInt            UserModules     2F8C
_UART_Sensor_PutString             UserModules     2FD0
_UART_Sensor_RX_ISR                UserModules     3050
_UART_Sensor_SendData              UserModules     2F2F
_UART_Sensor_SetTxIntMode          UserModules     2F0F
_UART_Sensor_Start                 UserModules     2F21
_UART_Sensor_Stop                  UserModules     2F28
_UART_Sensor_TX_ISR                UserModules     304F
_UART_Sensor_TxIntMode             UserModules     2F3B
_UART_Sensor_Write                 UserModules     2FE0
_UART_Sensor_bReadRxData           UserModules     2F35
_UART_Sensor_bReadRxStatus         UserModules     2F38
_UART_Sensor_bReadTxStatus         UserModules     2F32
_UART_Sensor_cGetChar              UserModules     2F9B
_UART_Sensor_cReadChar             UserModules     2FA3
_UART_Sensor_iReadChar             UserModules     2FBA
_WriteAll_1621                     text            346A
__Bnvbit0                          nvbit0          0063
__Bnvbit1                          nvbit1          0100
__Bnvbit2                          nvbit2          0200
__Bnvbit3                          nvbit3          0300
__Brbit0                           rbit0           005C
__Brbit1                           rbit1           0100
__Brbit2                           rbit2           0200
__Brbit3                           rbit3           0300
__Bstackps                         stackps         0300
__HInterruptRAM                    InterruptRAM    0300
__HPD_startup                      PD_startup      3F9D
__HSSCParmBlk                      SSCParmBlk      0100
__HTOP                             TOP             0065
__HUserModules                     UserModules     3051
__Hbss                             bss             0300
__Hbss0                            bss0            005C
__Hbss1                            bss1            0100
__Hbss2                            bss2            0200
__Hbss3                            bss3            0300
__Hcdata                           cdata           3E1C
__Hend_init                        end_init        0003
__Hfnauto                          fnauto          007F
__Hinit                            init            3FCD
__Hintrtext                        intrtext        0003
__Hled_display_RAM                 led_display_RAM 0300
__Hlit                             lit             0300
__Hmaintext                        maintext        3E00
__Hnvbit0                          nvbit0          0318
__Hnvbit1                          nvbit1          0800
__Hnvbit2                          nvbit2          1000
__Hnvbit3                          nvbit3          1800
__Hnvram0                          nvram0          0063
__Hnvram1                          nvram1          0100
__Hnvram2                          nvram2          0200
__Hnvram3                          nvram3          0300
__Hpowerup                         powerup         0003
__Hpsoc_config                     psoc_config     0300
__Hramdata0                        ramdata0        0063
__Hramdata1                        ramdata1        0100
__Hramdata2                        ramdata2        0200
__Hramdata3                        ramdata3        0300
__Hrbit0                           rbit0           02E0
__Hrbit1                           rbit1           0800
__Hrbit2                           rbit2           1000
__Hrbit3                           rbit3           1800
__Hromdata0                        romdata0        006C
__Hromdata1                        romdata1        0003
__Hromdata2                        romdata2        0003
__Hromdata3                        romdata3        0003
__Hstackps                         stackps         0300
__Hstrings                         strings         3F43
__Htext                            text            3C41
__Hvectors                         vectors         0003
__LInterruptRAM                    InterruptRAM    0300
__LPD_startup                      PD_startup      3F43
__LSSCParmBlk                      SSCParmBlk      0000
__LTOP                             TOP             0000
__LUserModules                     UserModules     2C47
__Lbss                             bss             0300
__Lbss0                            bss0            0000
__Lbss1                            bss1            0100
__Lbss2                            bss2            0200
__Lbss3                            bss3            0300
__Lcdata                           cdata           3E00
__Lend_init                        end_init        0003
__Lfnauto                          fnauto          0063
__Linit                            init            3F9D
__Lintrtext                        intrtext        0003
__Lled_display_RAM                 led_display_RAM 0300
__Llit                             lit             0300
__Lmaintext                        maintext        3C41
__Lnvbit0                          nvbit0          0318
__Lnvbit1                          nvbit1          0800
__Lnvbit2                          nvbit2          1000
__Lnvbit3                          nvbit3          1800
__Lnvram0                          nvram0          0063
__Lnvram1                          nvram1          0100
__Lnvram2                          nvram2          0200
__Lnvram3                          nvram3          0300
__Lpowerup                         powerup         0003
__Lpsoc_config                     psoc_config     0300
__Lramdata0                        ramdata0        005C
__Lramdata1                        ramdata1        0100
__Lramdata2                        ramdata2        0200
__Lramdata3                        ramdata3        0300
__Lrbit0                           rbit0           02E0
__Lrbit1                           rbit1           0800
__Lrbit2                           rbit2           1000
__Lrbit3                           rbit3           1800
__Lromdata0                        romdata0        0065
__Lromdata1                        romdata1        0003
__Lromdata2                        romdata2        0003
__Lromdata3                        romdata3        0003
__Lstackps                         stackps         0300
__Lstrings                         strings         3F00
__Ltext                            text            3051
__Lvectors                         vectors         0000
__S0                               (abs)           3FCD
__S1                               (abs)           007F
__Start                            PD_startup      3F43
___awdiv                           text            3873
___awdiv@counter                   fnauto          0072
___awdiv@dividend                  fnauto          006D
___awdiv@divisor                   fnauto          006B
___awdiv@quotient                  fnauto          006F
___awdiv@sign                      fnauto          0071
___awmod                           text            3915
___awmod@counter                   fnauto          0070
___awmod@dividend                  fnauto          006D
___awmod@divisor                   fnauto          006B
___awmod@sign                      fnauto          006F
___end_of_c_program_code           text            3C41
___lbdiv                           text            37B1
___lbdiv@counter                   fnauto          006C
___lbdiv@dividend                  fnauto          006A
___lbdiv@divisor                   fnauto          0069
___lbdiv@quotient                  fnauto          006B
___lbmod                           text            38F1
___lbmod@counter                   fnauto          006C
___lbmod@dividend                  fnauto          006A
___lbmod@divisor                   fnauto          0069
___lbmod@rem                       fnauto          006B
___lmul                            text            34D9
___lmul@multiplicand               fnauto          0074
___lmul@multiplier                 fnauto          0070
___lmul@product                    fnauto          0078
___lwdiv                           text            39FC
___lwdiv@counter                   fnauto          0073
___lwdiv@dividend                  fnauto          006F
___lwdiv@divisor                   fnauto          006D
___lwdiv@quotient                  fnauto          0071
___lwmod                           text            37E1
___lwmod@counter                   fnauto          0071
___lwmod@dividend                  fnauto          006F
___lwmod@divisor                   fnauto          006D
___start_of_c_program_code         text            3051
___wmul                            text            3521
___wmul@multiplicand               fnauto          0070
___wmul@multiplier                 fnauto          0072
___wmul@product                    fnauto          0074
__end_of_Ack_I2c                   text            39B4
__end_of_BoardUART                 text            3B93
__end_of_CRC8Check                 text            3110
__end_of_ChangeToOD                text            3B5C
__end_of_ChangeToRead              text            3B4D
__end_of_DisplayPMxx               text            3604
__end_of_FrameCheck                text            309E
__end_of_HT1621B_Init              text            346A
__end_of_IRcvBytes                 text            3776
__end_of_ISendByte                 text            3A7B
__end_of_Init_IIC                  text            3457
__end_of_LCDOuputAll               text            3446
__end_of_LCD_Init                  text            30BD
__end_of_LeftRotate                text            34D9
__end_of_LightRank                 text            31EF
__end_of_RcvByte                   text            39FC
__end_of_SendBit_1621              text            37B1
__end_of_SendByte                  text            3B3C
__end_of_SendCmd                   text            36FD
__end_of_SendDataBit_1621          text            385A
__end_of_SensorUART                text            3C41
__end_of_ShowHumiTemp              text            369C
__end_of_ShowLife                  text            36DC
__end_of_Si7020CalcRH              text            31A3
__end_of_Si7020CalcTemp            text            3293
__end_of_Si7020Init                text            30CA
__end_of_Si7020Read_RH_NHM         text            30E6
__end_of_Si7020Read_Temp_after_RHM text            31C4
__end_of_Si7020SendCommand         text            3706
__end_of_Start_I2c                 text            3AC2
__end_of_Stop_I2c                  text            3A9D
__end_of_Timer16ISR                text            3BC3
__end_of_WriteAll_1621             text            34AD
__end_of___awdiv                   text            38F1
__end_of___awmod                   text            3988
__end_of___lbdiv                   text            37E1
__end_of___lbmod                   text            3915
__end_of___lmul                    text            3521
__end_of___lwdiv                   text            3A46
__end_of___lwmod                   text            381D
__end_of___wmul                    text            354D
__end_of_abs                       text            3873
__end_of_delay_us                  text            3B7A
__end_of_main                      maintext        3E00
__stack_start__                    stackps         0300
_abs                               text            385A
_ack                               bss0            0048
_bGetPowerSetting                  PD_startup      3F9A
_bPWM8_BL_ReadCounter              UserModules     2C60
_bPWM8_BL_ReadPulseWidth           UserModules     2C5D
_bUART_Board_ReadRxData            UserModules     2DE5
_bUART_Board_ReadRxStatus          UserModules     2DE8
_bUART_Board_ReadTxStatus          UserModules     2DE2
_bUART_Sensor_ReadRxData           UserModules     2F35
_bUART_Sensor_ReadRxStatus         UserModules     2F38
_bUART_Sensor_ReadTxStatus         UserModules     2F32
_data_length                       bss0            0049
_data_pm1_0                        bss0            002F
_data_pm2_5                        bss0            0031
_delay_us                          text            3B5C
_main                              maintext        3C41
_mode                              bss0            004A
_one_sec_timer                     ramdata0        005F
_poly_h                            ramdata0        0060
_poly_l                            ramdata0        0061
_rh_sample_timer                   ramdata0        0062
_wTimer16_CaptureCounter           UserModules     2DA9
_wTimer16_ReadCompareValue         UserModules     2D6B
_wTimer16_ReadCounter              UserModules     2D71
_wTimer16_ReadTimer                UserModules     2DA9
_wTimer16_ReadTimerSaveCV          UserModules     2D71
abs@a                              fnauto          006B
bGetPowerSetting                   PD_startup      3F9A
bPWM8_BL_ReadCounter               UserModules     2C60
bPWM8_BL_ReadPulseWidth            UserModules     2C5D
bUART_Board_ReadRxData             UserModules     2DE5
bUART_Board_ReadRxStatus           UserModules     2DE8
bUART_Board_ReadTxStatus           UserModules     2DE2
bUART_Sensor_ReadRxData            UserModules     2F35
bUART_Sensor_ReadRxStatus          UserModules     2F38
bUART_Sensor_ReadTxStatus          UserModules     2F32
delay_us@us                        fnauto          0070
intlevel0                          romdata3        0003
intlevel1                          romdata3        0003
intlevel2                          romdata3        0003
main@ret                           fnauto          0063
reset_vec                          vectors         0000
start                              vectors         0000
startup                            init            3F9D
wTimer16_CaptureCounter            UserModules     2DA9
wTimer16_ReadCompareValue          UserModules     2D6B
wTimer16_ReadCounter               UserModules     2D71
wTimer16_ReadTimer                 UserModules     2DA9
wTimer16_ReadTimerSaveCV           UserModules     2D71
