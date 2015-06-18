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
*    _PWM8_BL_WritePulseWidth size 0,0 offset 27
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
     _Timer16ISR size 0,2 offset 25
         _PWM8_BL_WritePulseWidth size 0,0 offset 27
*    _SensorUART size 0,3 offset 25
*        _UART_Sensor_bReadRxData size 0,0 offset 28

Estimated maximum call depth: 2


                Name          Link     Load   Length Selector Space Scale
output\startup.obj
                vectors          0        0        3       0     0
                init          3F6D     3F6D       30    3F13     0
                SSCParmBl       F8       F8        8       0     1
                TOP              4        4       61       0     0
output\LCD_display.obj
                ramdata0        61       61        7       0     1
                romdata0        65       65        7      65     0
                maintext      3CA7     3CA7      159    3CA7     0
                text          306F     306F      C38    306F     0
                bss0             0        0       61       0     1
                cdata         3E00     3E00       1C      3E     0
                strings       3F00     3F00       13      3F     0
./obj/boot.obj  PD_startu     3F13     3F13       5A    3F13     0
                TOP              4        4       61       0     0

lib/libpsoc.lib
lib/obj/psocconfig.obj
                psoc_conf     2ACF     2ACF       64    2ACF     0
lib/obj/psocconfigtbl.obj
                lit           2B33     2B33      132    2B33     0
                psoc_conf     3E1C     3E1C       A5      3E     0
lib/obj/pwm8_bl.obj
                UserModul     2C65     2C65       48    2C65     0
lib/obj/pwm8_blint.obj
                UserModul     2CAD     2CAD        1    2C65     0
lib/obj/sar10.obj
                UserModul     2CAE     2CAE       BE    2C65     0
lib/obj/sar10int.obj
                UserModul     2D6C     2D6C        1    2C65     0
lib/obj/timer16.obj
                UserModul     2D6D     2D6D       62    2C65     0
lib/obj/uart_board.obj
                UserModul     2DCF     2DCF      14E    2C65     0
lib/obj/uart_boardint.obj
                UserModul     2F1D     2F1D        2    2C65     0
lib/obj/uart_sensor.obj
                UserModul     2F1F     2F1F      14E    2C65     0
lib/obj/uart_sensorint.obj
                UserModul     306D     306D        2    2C65     0

D:/Cypress/PSOCDE~1/5.4/Common/CY110F~1/tools/lib/CY8C22045/cms.lib

COMMON          fnauto          68       68       1C       0     1

TOTAL           Name          Link     Load   Length  Space
        CLASS   CODE           
                vectors          0        0        3     0
                maintext      3CA7     3CA7      159     0
                text          306F     306F      C38     0
                PD_startu     3F13     3F13       5A     0
                init          3F6D     3F6D       30     0

        CLASS   BANKROM        
                romdata0        65       65        7     0

        CLASS   ROM            
                cdata         3E00     3E00       1C     0
                strings       3F00     3F00       13     0
                UserModul     2C65     2C65      40A     0
                TOP              4        4       61     0
                psoc_conf     2ACF     2ACF       64     0
                lit           2B33     2B33      132     0
                psoc_conf     3E1C     3E1C       A5     0

        CLASS   RAM            
                ramdata0        61       61        7     1
                fnauto          68       68       1C     1
                SSCParmBl       F8       F8        8     1
                bss0             0        0       61     1



SEGMENTS        Name           Load    Length   Top     Selector    Space Class

                bss0            000000  000084  000084         0       1  RAM     
                vectors         000000  000003  000003         0       0  CODE    
                romdata0        000065  000007  00006C        65       0  BANKROM 
                psoc_config     002ACF  000064  002B33      2ACF       0  ROM     
                lit             002B33  000132  002C65      2B33       0  ROM     
                UserModules     002C65  00040A  00306F      2C65       0  CODE    
                text            00306F  000C38  003CA7      306F       0  CODE    
                maintext        003CA7  000159  003E00      3CA7       0  CODE    
                cdata           003E00  0000C1  003EC1        3E       0  ROM     
                strings         003F00  000013  003F13        3F       0  ROM     
                PD_startup      003F13  00008A  003F9D      3F13       0  CODE    


UNUSED ADDRESS RANGES

        BANKROM          0003-0003
                         006C-2ACE
                         3EC1-3EFF
                         3F9D-3FFF
        CODE             0003-0003
                         006C-2ACE
                         3EC1-3EFF
                         3F9D-3FFF
        RAM              0084-00F7
                         0100-03FF
        ROM              0003-0003
                         006C-2ACE
                         3EC1-3EFF
                         3F9D-3FFF

                                  Symbol Table

??_Ack_I2c                         fnauto          0072
??_BoardUART                       fnauto          0081
??_DisplayPMxx                     fnauto          006B
??_FrameCheck                      fnauto          006A
??_IRcvBytes                       fnauto          006D
??_ISendByte                       fnauto          006D
??_LCDOuputAll                     fnauto          006A
??_LeftRotate                      fnauto          006A
??_LightRank                       fnauto          006A
??_RcvByte                         fnauto          0072
??_SendBit_1621                    fnauto          006F
??_SendByte                        fnauto          0072
??_SendCmd                         fnauto          006A
??_SendDataBit_1621                fnauto          006F
??_SensorUART                      fnauto          0081
??_ShowHumiTemp                    fnauto          006B
??_ShowLife                        fnauto          006B
??_Si7020CalcRH                    fnauto          006A
??_Si7020CalcTemp                  fnauto          006A
??_Si7020Init                      fnauto          006A
??_Si7020Read_RH_NHM               fnauto          006A
??_Si7020Read_Temp_after_RHM       fnauto          006A
??_Si7020SendCommand               fnauto          006C
??_Timer16ISR                      fnauto          0081
??_WriteAll_1621                   fnauto          006C
??___awdiv                         fnauto          0072
??___awmod                         fnauto          0072
??___lbdiv                         fnauto          006E
??___lbmod                         fnauto          006E
??___lmul                          fnauto          007D
??___lwdiv                         fnauto          0074
??___lwmod                         fnauto          0074
??___wmul                          fnauto          0077
??_abs                             fnauto          0070
??_delay_us                        fnauto          0075
??_main                            fnauto          0068
?_IRcvBytes                        fnauto          006C
?_WriteAll_1621                    fnauto          006B
?___awdiv                          fnauto          0070
?___awmod                          fnauto          0070
?___lmul                           fnauto          0075
?___lwdiv                          fnauto          0072
?___lwmod                          fnauto          0072
?___wmul                           fnauto          0075
Ack_I2c@a                          fnauto          0072
BoardUART@rxdata                   fnauto          0081
DisplayPMxx@index                  fnauto          006F
DisplayPMxx@k                      fnauto          0071
DisplayPMxx@pm                     fnauto          006B
DisplayPMxx@temp                   fnauto          006D
FrameCheck@checksum                fnauto          006A
FrameCheck@i                       fnauto          006C
IRcvBytes@i                        fnauto          006F
IRcvBytes@no                       fnauto          006C
IRcvBytes@s                        fnauto          006D
IRcvBytes@sla                      fnauto          006E
ISendByte@c                        fnauto          006D
ISendByte@sla                      fnauto          006E
LCDOuputAll@k                      fnauto          006A
LeftRotate@k                       fnauto          006A
LightRank@duty                     fnauto          006D
LightRank@i                        fnauto          006C
LightRank@light                    fnauto          006A
LoadConfigInit                     psoc_config     2ACF
LoadConfigTBL_led_display_Bank0    lit             2B33
LoadConfigTBL_led_display_Bank1    lit             2BCA
LoadConfigTBL_led_display_Ordered  psoc_config     3E1C
LoadConfig_led_display             psoc_config     2AD6
NO_SHADOW                          InterruptRAM    0084
PWM8_BL_DisableInt                 UserModules     2C69
PWM8_BL_EnableInt                  UserModules     2C65
PWM8_BL_Start                      UserModules     2C6D
PWM8_BL_Stop                       UserModules     2C71
PWM8_BL_WritePeriod                UserModules     2C75
PWM8_BL_WritePulseWidth            UserModules     2C78
PWM8_BL_bReadCounter               UserModules     2C7E
PWM8_BL_bReadPulseWidth            UserModules     2C7B
RcvByte@BitCnt                     fnauto          0073
RcvByte@retc                       fnauto          0072
SAR10_DisableInt                   UserModules     2CB2
SAR10_EnableAutoTrigger            UserModules     2D24
SAR10_EnableInt                    UserModules     2CAE
SAR10_SetADCChannel                UserModules     2CF4
SAR10_SetClk                       UserModules     2D3C
SAR10_SetRunMode                   UserModules     2D54
SAR10_SetTriggerSrc                UserModules     2D0C
SAR10_Start                        UserModules     2CB6
SAR10_Stop                         UserModules     2CBE
SAR10_Trigger                      UserModules     2CC6
SAR10_bGetData                     UserModules     2CF1
SAR10_fIsDataAvailable             UserModules     2CCE
SAR10_iGetData                     UserModules     2CD7
SendBit_1621@cnt                   fnauto          006F
SendBit_1621@data                  fnauto          0070
SendBit_1621@i                     fnauto          0071
SendByte@BitCnt                    fnauto          0073
SendByte@c                         fnauto          0072
SendCmd@command                    fnauto          006A
SendDataBit_1621@cnt               fnauto          006F
SendDataBit_1621@data              fnauto          0070
SendDataBit_1621@i                 fnauto          0071
SensorUART@rxdata                  fnauto          0081
ShowHumiTemp@index                 fnauto          006D
ShowHumiTemp@temp                  fnauto          006C
ShowHumiTemp@value                 fnauto          006B
ShowLife@index                     fnauto          006C
ShowLife@life                      fnauto          006B
ShowLife@temp                      fnauto          006D
Si7020CalcRH@data                  fnauto          006A
Si7020CalcRH@result                fnauto          0070
Si7020CalcRH@temp                  fnauto          006C
Si7020CalcTemp@data                fnauto          006A
Si7020CalcTemp@result              fnauto          0070
Si7020CalcTemp@temp                fnauto          006C
Si7020Init@my_data                 fnauto          006A
Si7020Read_RH_NHM@buffer           fnauto          006A
Si7020Read_RH_NHM@ret              fnauto          006B
Si7020Read_Temp_after_RHM@buffer   fnauto          006A
Si7020Read_Temp_after_RHM@ret      fnauto          006B
Si7020SendCommand@cmd              fnauto          006C
Timer16_DisableInt                 UserModules     2D71
Timer16_EnableInt                  UserModules     2D6D
Timer16_Start                      UserModules     2D75
Timer16_Stop                       UserModules     2D79
Timer16_WriteCompareValue          UserModules     2D83
Timer16_WritePeriod                UserModules     2D7D
Timer16_wReadCompareValue          UserModules     2D89
Timer16_wReadTimer                 UserModules     2DC7
Timer16_wReadTimerSaveCV           UserModules     2D8F
UART_Board_CPutString              UserModules     2F02
UART_Board_CWrite                  UserModules     2ED4
UART_Board_DisableInt              UserModules     2DD6
UART_Board_EnableInt               UserModules     2DCF
UART_Board_IntCntl                 UserModules     2E1C
UART_Board_PutCRLF                 UserModules     2F14
UART_Board_PutChar                 UserModules     2E61
UART_Board_PutSHexByte             UserModules     2E47
UART_Board_PutSHexInt              UserModules     2E5A
UART_Board_PutString               UserModules     2E9E
UART_Board_SendData                UserModules     2DFD
UART_Board_SetTxIntMode            UserModules     2DDD
UART_Board_Start                   UserModules     2DEF
UART_Board_Stop                    UserModules     2DF6
UART_Board_TxIntMode               UserModules     2E09
UART_Board_Write                   UserModules     2EAE
UART_Board_bReadRxData             UserModules     2E03
UART_Board_bReadRxStatus           UserModules     2E06
UART_Board_bReadTxStatus           UserModules     2E00
UART_Board_cGetChar                UserModules     2E69
UART_Board_cReadChar               UserModules     2E71
UART_Board_iReadChar               UserModules     2E88
UART_Sensor_CPutString             UserModules     3052
UART_Sensor_CWrite                 UserModules     3024
UART_Sensor_DisableInt             UserModules     2F26
UART_Sensor_EnableInt              UserModules     2F1F
UART_Sensor_IntCntl                UserModules     2F6C
UART_Sensor_PutCRLF                UserModules     3064
UART_Sensor_PutChar                UserModules     2FB1
UART_Sensor_PutSHexByte            UserModules     2F97
UART_Sensor_PutSHexInt             UserModules     2FAA
UART_Sensor_PutString              UserModules     2FEE
UART_Sensor_SendData               UserModules     2F4D
UART_Sensor_SetTxIntMode           UserModules     2F2D
UART_Sensor_Start                  UserModules     2F3F
UART_Sensor_Stop                   UserModules     2F46
UART_Sensor_TxIntMode              UserModules     2F59
UART_Sensor_Write                  UserModules     2FFE
UART_Sensor_bReadRxData            UserModules     2F53
UART_Sensor_bReadRxStatus          UserModules     2F56
UART_Sensor_bReadTxStatus          UserModules     2F50
UART_Sensor_cGetChar               UserModules     2FB9
UART_Sensor_cReadChar              UserModules     2FC1
UART_Sensor_iReadChar              UserModules     2FD8
WriteAll_1621@addr                 fnauto          006D
WriteAll_1621@cnt                  fnauto          006B
WriteAll_1621@i                    fnauto          006E
WriteAll_1621@p                    fnauto          006C
_Ack_I2c                           text            39A6
_BoardUART                         text            3B98
_CRC8Check                         text            319C
_CarbonLife                        bss0            0037
_ChangeToOD                        text            3B6B
_ChangeToRead                      text            3B5A
_CurrentBackLight                  bss0            002B
_DataPtr                           bss0            0038
_DigitSeg                          cdata           3E00
_DigitSegSwap                      cdata           3E0A
_DisplayBuf                        bss0            0050
_DisplayNum                        bss0            0028
_DisplayPMxx                       text            356B
_DstBackLight                      bss0            002D
_FanFlag                           bss0            0039
_FanUpdateTimeReload               bss0            003A
_FanUpdateTimer                    ramdata0        0061
_FrameCheck                        text            309E
_HT1621B_Init                      text            3477
_HeadFlag                          bss0            003B
_HeapLife                          bss0            003C
_Humidity                          bss0            003D
_IICTimeOutTimer                   bss0            003E
_IRcvBytes                         text            3724
_ISendByte                         text            3A64
_Init_IIC                          text            3466
_LCDOuputAll                       text            32B3
_LCD_Init                          text            306F
_LcdUpdateTimer                    ramdata0        0062
_LeftRotate                        text            34CD
_LeftRotate$3972                   fnauto          006B
_LifeFlag                          bss0            003F
_LightADCValue                     bss0            002F
_LightDuty                         bss0            0040
_LightRank                         text            31E2
_LoadConfigInit                    psoc_config     2ACF
_LoadConfig_led_display            psoc_config     2AD6
_LockStatus                        bss0            0041
_MyPMSUnion                        bss0            0000
_NO_SHADOW                         InterruptRAM    0084
_Odor                              bss0            0042
_PMSFrameFlag                      bss0            0043
_PM_Flag                           bss0            0044
_PWM8_BL_DisableInt                UserModules     2C69
_PWM8_BL_EnableInt                 UserModules     2C65
_PWM8_BL_ISR                       UserModules     2CAD
_PWM8_BL_Start                     UserModules     2C6D
_PWM8_BL_Stop                      UserModules     2C71
_PWM8_BL_WritePeriod               UserModules     2C75
_PWM8_BL_WritePulseWidth           UserModules     2C78
_PWM8_BL_bReadCounter              UserModules     2C7E
_PWM8_BL_bReadPulseWidth           UserModules     2C7B
_Plasma                            bss0            0045
_PlasmaFlag                        bss0            0046
_PlasmaTimer                       ramdata0        0063
_RHSampleStep                      bss0            0047
_RH_T_Flag                         bss0            0048
_RankLevel                         cdata           3E14
_RcvByte                           text            39D2
_RecBuf                            bss0            005C
_RecTimeoutTimer                   bss0            0049
_SAR10_DisableInt                  UserModules     2CB2
_SAR10_EnableAutoTrigger           UserModules     2D24
_SAR10_EnableInt                   UserModules     2CAE
_SAR10_ISR                         UserModules     2D6C
_SAR10_SetADCChannel               UserModules     2CF4
_SAR10_SetClk                      UserModules     2D3C
_SAR10_SetRunMode                  UserModules     2D54
_SAR10_SetTriggerSrc               UserModules     2D0C
_SAR10_Start                       UserModules     2CB6
_SAR10_Stop                        UserModules     2CBE
_SAR10_Trigger                     UserModules     2CC6
_SAR10_bGetData                    UserModules     2CF1
_SAR10_fIsDataAvailable            UserModules     2CCE
_SAR10_iGetData                    UserModules     2CD7
_SendBit_1621                      text            3794
_SendByte                          text            3AE0
_SendCmd                           text            36FA
_SendDataBit_1621                  text            383B
_SensorUART                        text            3C29
_ShowHumiTemp                      text            3622
_ShowLife                          text            36BA
_Si7020CalcRH                      text            30EB
_Si7020CalcTemp                    text            320F
_Si7020Data                        bss0            0031
_Si7020Init                        text            3091
_Si7020Read_RH_NHM                 text            31C6
_Si7020Read_Temp_after_RHM         text            317E
_Si7020SendCommand                 text            371B
_SpeedLvl                          bss0            004A
_Start_I2c                         text            3ABB
_Stop_I2c                          text            3A99
_Temperature                       bss0            004B
_Timer                             bss0            004C
_Timer16ISR                        text            3BB1
_Timer16_DisableInt                UserModules     2D71
_Timer16_EnableInt                 UserModules     2D6D
_Timer16_Start                     UserModules     2D75
_Timer16_Stop                      UserModules     2D79
_Timer16_WriteCompareValue         UserModules     2D83
_Timer16_WritePeriod               UserModules     2D7D
_Timer16_wReadCompareValue         UserModules     2D89
_Timer16_wReadTimer                UserModules     2DC7
_Timer16_wReadTimerSaveCV          UserModules     2D8F
_UART_Board_CPutString             UserModules     2F02
_UART_Board_CWrite                 UserModules     2ED4
_UART_Board_DisableInt             UserModules     2DD6
_UART_Board_EnableInt              UserModules     2DCF
_UART_Board_IntCntl                UserModules     2E1C
_UART_Board_PutCRLF                UserModules     2F14
_UART_Board_PutChar                UserModules     2E61
_UART_Board_PutSHexByte            UserModules     2E47
_UART_Board_PutSHexInt             UserModules     2E5A
_UART_Board_PutString              UserModules     2E9E
_UART_Board_RX_ISR                 UserModules     2F1E
_UART_Board_SendData               UserModules     2DFD
_UART_Board_SetTxIntMode           UserModules     2DDD
_UART_Board_Start                  UserModules     2DEF
_UART_Board_Stop                   UserModules     2DF6
_UART_Board_TX_ISR                 UserModules     2F1D
_UART_Board_TxIntMode              UserModules     2E09
_UART_Board_Write                  UserModules     2EAE
_UART_Board_bReadRxData            UserModules     2E03
_UART_Board_bReadRxStatus          UserModules     2E06
_UART_Board_bReadTxStatus          UserModules     2E00
_UART_Board_cGetChar               UserModules     2E69
_UART_Board_cReadChar              UserModules     2E71
_UART_Board_iReadChar              UserModules     2E88
_UART_Sensor_CPutString            UserModules     3052
_UART_Sensor_CWrite                UserModules     3024
_UART_Sensor_DisableInt            UserModules     2F26
_UART_Sensor_EnableInt             UserModules     2F1F
_UART_Sensor_IntCntl               UserModules     2F6C
_UART_Sensor_PutCRLF               UserModules     3064
_UART_Sensor_PutChar               UserModules     2FB1
_UART_Sensor_PutSHexByte           UserModules     2F97
_UART_Sensor_PutSHexInt            UserModules     2FAA
_UART_Sensor_PutString             UserModules     2FEE
_UART_Sensor_RX_ISR                UserModules     306E
_UART_Sensor_SendData              UserModules     2F4D
_UART_Sensor_SetTxIntMode          UserModules     2F2D
_UART_Sensor_Start                 UserModules     2F3F
_UART_Sensor_Stop                  UserModules     2F46
_UART_Sensor_TX_ISR                UserModules     306D
_UART_Sensor_TxIntMode             UserModules     2F59
_UART_Sensor_Write                 UserModules     2FFE
_UART_Sensor_bReadRxData           UserModules     2F53
_UART_Sensor_bReadRxStatus         UserModules     2F56
_UART_Sensor_bReadTxStatus         UserModules     2F50
_UART_Sensor_cGetChar              UserModules     2FB9
_UART_Sensor_cReadChar             UserModules     2FC1
_UART_Sensor_iReadChar             UserModules     2FD8
_WriteAll_1621                     text            348A
__Bnvbit0                          nvbit0          0068
__Bnvbit1                          nvbit1          0100
__Bnvbit2                          nvbit2          0200
__Bnvbit3                          nvbit3          0300
__Brbit0                           rbit0           0061
__Brbit1                           rbit1           0100
__Brbit2                           rbit2           0200
__Brbit3                           rbit3           0300
__Bstackps                         stackps         0300
__HInterruptRAM                    InterruptRAM    0300
__HPD_startup                      PD_startup      3F6D
__HSSCParmBlk                      SSCParmBlk      0100
__HTOP                             TOP             0065
__HUserModules                     UserModules     306F
__Hbss                             bss             0300
__Hbss0                            bss0            0061
__Hbss1                            bss1            0100
__Hbss2                            bss2            0200
__Hbss3                            bss3            0300
__Hcdata                           cdata           3E1C
__Hend_init                        end_init        0003
__Hfnauto                          fnauto          0084
__Hinit                            init            3F9D
__Hintrtext                        intrtext        0003
__Hled_display_RAM                 led_display_RAM 0300
__Hlit                             lit             0300
__Hmaintext                        maintext        3E00
__Hnvbit0                          nvbit0          0340
__Hnvbit1                          nvbit1          0800
__Hnvbit2                          nvbit2          1000
__Hnvbit3                          nvbit3          1800
__Hnvram0                          nvram0          0068
__Hnvram1                          nvram1          0100
__Hnvram2                          nvram2          0200
__Hnvram3                          nvram3          0300
__Hpowerup                         powerup         0003
__Hpsoc_config                     psoc_config     0300
__Hramdata0                        ramdata0        0068
__Hramdata1                        ramdata1        0100
__Hramdata2                        ramdata2        0200
__Hramdata3                        ramdata3        0300
__Hrbit0                           rbit0           0308
__Hrbit1                           rbit1           0800
__Hrbit2                           rbit2           1000
__Hrbit3                           rbit3           1800
__Hromdata0                        romdata0        006C
__Hromdata1                        romdata1        0003
__Hromdata2                        romdata2        0003
__Hromdata3                        romdata3        0003
__Hstackps                         stackps         0300
__Hstrings                         strings         3F13
__Htext                            text            3CA7
__Hvectors                         vectors         0003
__LInterruptRAM                    InterruptRAM    0300
__LPD_startup                      PD_startup      3F13
__LSSCParmBlk                      SSCParmBlk      0000
__LTOP                             TOP             0000
__LUserModules                     UserModules     2C65
__Lbss                             bss             0300
__Lbss0                            bss0            0000
__Lbss1                            bss1            0100
__Lbss2                            bss2            0200
__Lbss3                            bss3            0300
__Lcdata                           cdata           3E00
__Lend_init                        end_init        0003
__Lfnauto                          fnauto          0068
__Linit                            init            3F6D
__Lintrtext                        intrtext        0003
__Lled_display_RAM                 led_display_RAM 0300
__Llit                             lit             0300
__Lmaintext                        maintext        3CA7
__Lnvbit0                          nvbit0          0340
__Lnvbit1                          nvbit1          0800
__Lnvbit2                          nvbit2          1000
__Lnvbit3                          nvbit3          1800
__Lnvram0                          nvram0          0068
__Lnvram1                          nvram1          0100
__Lnvram2                          nvram2          0200
__Lnvram3                          nvram3          0300
__Lpowerup                         powerup         0003
__Lpsoc_config                     psoc_config     0300
__Lramdata0                        ramdata0        0061
__Lramdata1                        ramdata1        0100
__Lramdata2                        ramdata2        0200
__Lramdata3                        ramdata3        0300
__Lrbit0                           rbit0           0308
__Lrbit1                           rbit1           0800
__Lrbit2                           rbit2           1000
__Lrbit3                           rbit3           1800
__Lromdata0                        romdata0        0065
__Lromdata1                        romdata1        0003
__Lromdata2                        romdata2        0003
__Lromdata3                        romdata3        0003
__Lstackps                         stackps         0300
__Lstrings                         strings         3F00
__Ltext                            text            306F
__Lvectors                         vectors         0000
__S0                               (abs)           3F9D
__S1                               (abs)           0084
__Start                            PD_startup      3F13
___awdiv                           text            3891
___awdiv@counter                   fnauto          0077
___awdiv@dividend                  fnauto          0072
___awdiv@divisor                   fnauto          0070
___awdiv@quotient                  fnauto          0074
___awdiv@sign                      fnauto          0076
___awmod                           text            3933
___awmod@counter                   fnauto          0075
___awmod@dividend                  fnauto          0072
___awmod@divisor                   fnauto          0070
___awmod@sign                      fnauto          0074
___end_of_c_program_code           text            3CA7
___lbdiv                           text            37CF
___lbdiv@counter                   fnauto          0071
___lbdiv@dividend                  fnauto          006F
___lbdiv@divisor                   fnauto          006E
___lbdiv@quotient                  fnauto          0070
___lbmod                           text            390F
___lbmod@counter                   fnauto          0071
___lbmod@dividend                  fnauto          006F
___lbmod@divisor                   fnauto          006E
___lbmod@rem                       fnauto          0070
___lmul                            text            34F7
___lmul@multiplicand               fnauto          0079
___lmul@multiplier                 fnauto          0075
___lmul@product                    fnauto          007D
___lwdiv                           text            3A1A
___lwdiv@counter                   fnauto          0078
___lwdiv@dividend                  fnauto          0074
___lwdiv@divisor                   fnauto          0072
___lwdiv@quotient                  fnauto          0076
___lwmod                           text            37FF
___lwmod@counter                   fnauto          0076
___lwmod@dividend                  fnauto          0074
___lwmod@divisor                   fnauto          0072
___start_of_c_program_code         text            306F
___wmul                            text            353F
___wmul@multiplicand               fnauto          0075
___wmul@multiplier                 fnauto          0077
___wmul@product                    fnauto          0079
__end_of_Ack_I2c                   text            39D2
__end_of_BoardUART                 text            3BB1
__end_of_CRC8Check                 text            31C6
__end_of_ChangeToOD                text            3B7A
__end_of_ChangeToRead              text            3B6B
__end_of_DisplayPMxx               text            3622
__end_of_FrameCheck                text            30EB
__end_of_HT1621B_Init              text            348A
__end_of_IRcvBytes                 text            3794
__end_of_ISendByte                 text            3A99
__end_of_Init_IIC                  text            3477
__end_of_LCDOuputAll               text            3466
__end_of_LCD_Init                  text            3091
__end_of_LeftRotate                text            34F7
__end_of_LightRank                 text            320F
__end_of_RcvByte                   text            3A1A
__end_of_SendBit_1621              text            37CF
__end_of_SendByte                  text            3B5A
__end_of_SendCmd                   text            371B
__end_of_SendDataBit_1621          text            3878
__end_of_SensorUART                text            3CA7
__end_of_ShowHumiTemp              text            36BA
__end_of_ShowLife                  text            36FA
__end_of_Si7020CalcRH              text            317E
__end_of_Si7020CalcTemp            text            32B3
__end_of_Si7020Init                text            309E
__end_of_Si7020Read_RH_NHM         text            31E2
__end_of_Si7020Read_Temp_after_RHM text            319C
__end_of_Si7020SendCommand         text            3724
__end_of_Start_I2c                 text            3AE0
__end_of_Stop_I2c                  text            3ABB
__end_of_Timer16ISR                text            3C29
__end_of_WriteAll_1621             text            34CD
__end_of___awdiv                   text            390F
__end_of___awmod                   text            39A6
__end_of___lbdiv                   text            37FF
__end_of___lbmod                   text            3933
__end_of___lmul                    text            353F
__end_of___lwdiv                   text            3A64
__end_of___lwmod                   text            383B
__end_of___wmul                    text            356B
__end_of_abs                       text            3891
__end_of_delay_us                  text            3B98
__end_of_main                      maintext        3E00
__stack_start__                    stackps         0300
_abs                               text            3878
_ack                               bss0            004D
_bGetPowerSetting                  PD_startup      3F6A
_bPWM8_BL_ReadCounter              UserModules     2C7E
_bPWM8_BL_ReadPulseWidth           UserModules     2C7B
_bUART_Board_ReadRxData            UserModules     2E03
_bUART_Board_ReadRxStatus          UserModules     2E06
_bUART_Board_ReadTxStatus          UserModules     2E00
_bUART_Sensor_ReadRxData           UserModules     2F53
_bUART_Sensor_ReadRxStatus         UserModules     2F56
_bUART_Sensor_ReadTxStatus         UserModules     2F50
_data_length                       bss0            004E
_data_pm1_0                        bss0            0033
_data_pm2_5                        bss0            0035
_delay_us                          text            3B7A
_main                              maintext        3CA7
_mode                              bss0            004F
_one_sec_timer                     ramdata0        0064
_poly_h                            ramdata0        0065
_poly_l                            ramdata0        0066
_rh_sample_timer                   ramdata0        0067
_wTimer16_CaptureCounter           UserModules     2DC7
_wTimer16_ReadCompareValue         UserModules     2D89
_wTimer16_ReadCounter              UserModules     2D8F
_wTimer16_ReadTimer                UserModules     2DC7
_wTimer16_ReadTimerSaveCV          UserModules     2D8F
abs@a                              fnauto          0070
bGetPowerSetting                   PD_startup      3F6A
bPWM8_BL_ReadCounter               UserModules     2C7E
bPWM8_BL_ReadPulseWidth            UserModules     2C7B
bUART_Board_ReadRxData             UserModules     2E03
bUART_Board_ReadRxStatus           UserModules     2E06
bUART_Board_ReadTxStatus           UserModules     2E00
bUART_Sensor_ReadRxData            UserModules     2F53
bUART_Sensor_ReadRxStatus          UserModules     2F56
bUART_Sensor_ReadTxStatus          UserModules     2F50
delay_us@us                        fnauto          0075
intlevel0                          romdata3        0003
intlevel1                          romdata3        0003
intlevel2                          romdata3        0003
main@ret                           fnauto          0068
reset_vec                          vectors         0000
start                              vectors         0000
startup                            init            3F6D
wTimer16_CaptureCounter            UserModules     2DC7
wTimer16_ReadCompareValue          UserModules     2D89
wTimer16_ReadCounter               UserModules     2D8F
wTimer16_ReadTimer                 UserModules     2DC7
wTimer16_ReadTimerSaveCV           UserModules     2D8F
