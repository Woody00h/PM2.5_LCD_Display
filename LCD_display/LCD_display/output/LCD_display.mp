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
     _UART_Board_IntCntl size 0,0 offset 2
     _UART_Sensor_Start size 0,0 offset 2
     _UART_Sensor_IntCntl size 0,0 offset 2
     _Timer16_WritePeriod size 0,0 offset 2
     _Timer16_WriteCompareValue size 0,0 offset 2
     _Timer16_EnableInt size 0,0 offset 2
     _Timer16_Start size 0,0 offset 2
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
     _B2BSendData size 0,5 offset 2
         _UART_Board_Write size 0,0 offset 7
     _B2BFrameCheck size 0,5 offset 2

Estimated maximum call depth: 5

*intlevel2 size 0,0 offset 25
*    _BoardUART size 0,3 offset 25
*        _UART_Board_bReadRxData size 0,0 offset 28
     _Timer16ISR size 0,2 offset 25
         _PWM8_BL_WritePulseWidth size 0,0 offset 27
*    _SensorUART size 0,3 offset 25
*        _UART_Sensor_bReadRxData size 0,0 offset 28

Estimated maximum call depth: 2


                Name          Link     Load   Length Selector Space Scale
output\startup.obj
                vectors          0        0        3       0     0
                init          3F76     3F76       30    3F1C     0
                SSCParmBl       F8       F8        8       0     1
                TOP              4        4       61       0     0
output\LCD_display.obj
                ramdata0        83       83        8       0     1
                romdata0        65       65        8      65     0
                maintext      3D73     3D73      18D    3D73     0
                text          300A     300A      D69    300A     0
                bss0             0        0       83       0     1
                cdata         3F00     3F00       1C      3F     0
./obj/boot.obj  PD_startu     3F1C     3F1C       5A    3F1C     0
                TOP              4        4       61       0     0

lib/libpsoc.lib
lib/obj/psocconfig.obj
                psoc_conf     29C5     29C5       64    29C5     0
lib/obj/psocconfigtbl.obj
                lit           2ACE     2ACE      132    2ACE     0
                psoc_conf     2A29     2A29       A5    2A29     0
lib/obj/pwm8_bl.obj
                UserModul     2C00     2C00       48    2C00     0
lib/obj/pwm8_blint.obj
                UserModul     2C48     2C48        1    2C00     0
lib/obj/sar10.obj
                UserModul     2C49     2C49       BE    2C00     0
lib/obj/sar10int.obj
                UserModul     2D07     2D07        1    2C00     0
lib/obj/timer16.obj
                UserModul     2D08     2D08       62    2C00     0
lib/obj/uart_board.obj
                UserModul     2D6A     2D6A      14E    2C00     0
lib/obj/uart_boardint.obj
                UserModul     2EB8     2EB8        2    2C00     0
lib/obj/uart_sensor.obj
                UserModul     2EBA     2EBA      14E    2C00     0
lib/obj/uart_sensorint.obj
                UserModul     3008     3008        2    2C00     0

D:/Cypress/PSOCDE~1/5.4/Common/CY110F~1/tools/lib/CY8C22045/cms.lib

COMMON          fnauto          8B       8B       1C       0     1

TOTAL           Name          Link     Load   Length  Space
        CLASS   CODE           
                vectors          0        0        3     0
                maintext      3D73     3D73      18D     0
                text          300A     300A      D69     0
                PD_startu     3F1C     3F1C       5A     0
                init          3F76     3F76       30     0

        CLASS   BANKROM        
                romdata0        65       65        8     0

        CLASS   ROM            
                cdata         3F00     3F00       1C     0
                UserModul     2C00     2C00      40A     0
                TOP              4        4       61     0
                psoc_conf     29C5     29C5       64     0
                lit           2ACE     2ACE      132     0
                psoc_conf     2A29     2A29       A5     0

        CLASS   RAM            
                ramdata0        83       83        8     1
                fnauto          8B       8B       1C     1
                SSCParmBl       F8       F8        8     1
                bss0             0        0       83     1



SEGMENTS        Name           Load    Length   Top     Selector    Space Class

                bss0            000000  0000A7  0000A7         0       1  RAM     
                vectors         000000  000003  000003         0       0  CODE    
                romdata0        000065  000008  00006D        65       0  BANKROM 
                psoc_config     0029C5  000064  002A29      29C5       0  ROM     
                psoc_config     002A29  0000A5  002ACE      2A29       0  ROM     
                lit             002ACE  000132  002C00      2ACE       0  ROM     
                UserModules     002C00  00040A  00300A      2C00       0  CODE    
                text            00300A  000D69  003D73      300A       0  CODE    
                maintext        003D73  00018D  003F00      3D73       0  CODE    
                cdata           003F00  00001C  003F1C        3F       0  ROM     
                PD_startup      003F1C  00008A  003FA6      3F1C       0  CODE    


UNUSED ADDRESS RANGES

        BANKROM          0003-0003
                         006D-29C4
                         3FA6-3FFF
        CODE             0003-0003
                         006D-29C4
                         3FA6-3FFF
        RAM              00A7-00F7
                         0100-03FF
        ROM              0003-0003
                         006D-29C4
                         3FA6-3FFF

                                  Symbol Table

??_Ack_I2c                         fnauto          0095
??_B2BFrameCheck                   fnauto          008D
??_B2BSendData                     fnauto          008D
??_BoardUART                       fnauto          00A4
??_DisplayPMxx                     fnauto          008E
??_FrameCheck                      fnauto          008D
??_IRcvBytes                       fnauto          0090
??_ISendByte                       fnauto          0090
??_LCDOuputAll                     fnauto          008D
??_LeftRotate                      fnauto          008D
??_LightRank                       fnauto          008D
??_RcvByte                         fnauto          0095
??_SendBit_1621                    fnauto          0092
??_SendByte                        fnauto          0095
??_SendCmd                         fnauto          008D
??_SendDataBit_1621                fnauto          0092
??_SensorUART                      fnauto          00A4
??_ShowHumiTemp                    fnauto          008E
??_ShowLife                        fnauto          008E
??_Si7020CalcRH                    fnauto          008D
??_Si7020CalcTemp                  fnauto          008D
??_Si7020Init                      fnauto          008D
??_Si7020Read_RH_NHM               fnauto          008D
??_Si7020Read_Temp_after_RHM       fnauto          008D
??_Si7020SendCommand               fnauto          008F
??_Timer16ISR                      fnauto          00A4
??_WriteAll_1621                   fnauto          008F
??___awdiv                         fnauto          0095
??___awmod                         fnauto          0095
??___lbdiv                         fnauto          0091
??___lbmod                         fnauto          0091
??___lmul                          fnauto          00A0
??___lwdiv                         fnauto          0097
??___lwmod                         fnauto          0097
??___wmul                          fnauto          009A
??_abs                             fnauto          0093
??_delay_us                        fnauto          0098
??_main                            fnauto          008B
?_IRcvBytes                        fnauto          008F
?_WriteAll_1621                    fnauto          008E
?___awdiv                          fnauto          0093
?___awmod                          fnauto          0093
?___lmul                           fnauto          0098
?___lwdiv                          fnauto          0095
?___lwmod                          fnauto          0095
?___wmul                           fnauto          0098
Ack_I2c@a                          fnauto          0095
B2BFrameCheck@checksum             fnauto          008E
B2BFrameCheck@i                    fnauto          008D
B2BSendData@i                      fnauto          008D
B2BSendData@sum                    fnauto          008E
BoardUART@rxdata                   fnauto          00A4
DisplayPMxx@index                  fnauto          0092
DisplayPMxx@k                      fnauto          0094
DisplayPMxx@pm                     fnauto          008E
DisplayPMxx@temp                   fnauto          0090
FrameCheck@checksum                fnauto          008D
FrameCheck@i                       fnauto          008F
IRcvBytes@i                        fnauto          0092
IRcvBytes@no                       fnauto          008F
IRcvBytes@s                        fnauto          0090
IRcvBytes@sla                      fnauto          0091
ISendByte@c                        fnauto          0090
ISendByte@sla                      fnauto          0091
LCDOuputAll@k                      fnauto          008D
LeftRotate@k                       fnauto          008D
LightRank@duty                     fnauto          0090
LightRank@i                        fnauto          008F
LightRank@light                    fnauto          008D
LoadConfigInit                     psoc_config     29C5
LoadConfigTBL_led_display_Bank0    lit             2ACE
LoadConfigTBL_led_display_Bank1    lit             2B65
LoadConfigTBL_led_display_Ordered  psoc_config     2A29
LoadConfig_led_display             psoc_config     29CC
NO_SHADOW                          InterruptRAM    00A7
PWM8_BL_DisableInt                 UserModules     2C04
PWM8_BL_EnableInt                  UserModules     2C00
PWM8_BL_Start                      UserModules     2C08
PWM8_BL_Stop                       UserModules     2C0C
PWM8_BL_WritePeriod                UserModules     2C10
PWM8_BL_WritePulseWidth            UserModules     2C13
PWM8_BL_bReadCounter               UserModules     2C19
PWM8_BL_bReadPulseWidth            UserModules     2C16
RcvByte@BitCnt                     fnauto          0096
RcvByte@retc                       fnauto          0095
SAR10_DisableInt                   UserModules     2C4D
SAR10_EnableAutoTrigger            UserModules     2CBF
SAR10_EnableInt                    UserModules     2C49
SAR10_SetADCChannel                UserModules     2C8F
SAR10_SetClk                       UserModules     2CD7
SAR10_SetRunMode                   UserModules     2CEF
SAR10_SetTriggerSrc                UserModules     2CA7
SAR10_Start                        UserModules     2C51
SAR10_Stop                         UserModules     2C59
SAR10_Trigger                      UserModules     2C61
SAR10_bGetData                     UserModules     2C8C
SAR10_fIsDataAvailable             UserModules     2C69
SAR10_iGetData                     UserModules     2C72
SendBit_1621@cnt                   fnauto          0092
SendBit_1621@data                  fnauto          0093
SendBit_1621@i                     fnauto          0094
SendByte@BitCnt                    fnauto          0096
SendByte@c                         fnauto          0095
SendCmd@command                    fnauto          008D
SendDataBit_1621@cnt               fnauto          0092
SendDataBit_1621@data              fnauto          0093
SendDataBit_1621@i                 fnauto          0094
SensorUART@rxdata                  fnauto          00A4
ShowHumiTemp@index                 fnauto          0090
ShowHumiTemp@temp                  fnauto          008F
ShowHumiTemp@value                 fnauto          008E
ShowLife@index                     fnauto          008F
ShowLife@life                      fnauto          008E
ShowLife@temp                      fnauto          0090
Si7020CalcRH@data                  fnauto          008D
Si7020CalcRH@result                fnauto          0093
Si7020CalcRH@temp                  fnauto          008F
Si7020CalcTemp@data                fnauto          008D
Si7020CalcTemp@result              fnauto          0093
Si7020CalcTemp@temp                fnauto          008F
Si7020Init@my_data                 fnauto          008D
Si7020Read_RH_NHM@buffer           fnauto          008D
Si7020Read_RH_NHM@ret              fnauto          008E
Si7020Read_Temp_after_RHM@buffer   fnauto          008D
Si7020Read_Temp_after_RHM@ret      fnauto          008E
Si7020SendCommand@cmd              fnauto          008F
Timer16_DisableInt                 UserModules     2D0C
Timer16_EnableInt                  UserModules     2D08
Timer16_Start                      UserModules     2D10
Timer16_Stop                       UserModules     2D14
Timer16_WriteCompareValue          UserModules     2D1E
Timer16_WritePeriod                UserModules     2D18
Timer16_wReadCompareValue          UserModules     2D24
Timer16_wReadTimer                 UserModules     2D62
Timer16_wReadTimerSaveCV           UserModules     2D2A
UART_Board_CPutString              UserModules     2E9D
UART_Board_CWrite                  UserModules     2E6F
UART_Board_DisableInt              UserModules     2D71
UART_Board_EnableInt               UserModules     2D6A
UART_Board_IntCntl                 UserModules     2DB7
UART_Board_PutCRLF                 UserModules     2EAF
UART_Board_PutChar                 UserModules     2DFC
UART_Board_PutSHexByte             UserModules     2DE2
UART_Board_PutSHexInt              UserModules     2DF5
UART_Board_PutString               UserModules     2E39
UART_Board_SendData                UserModules     2D98
UART_Board_SetTxIntMode            UserModules     2D78
UART_Board_Start                   UserModules     2D8A
UART_Board_Stop                    UserModules     2D91
UART_Board_TxIntMode               UserModules     2DA4
UART_Board_Write                   UserModules     2E49
UART_Board_bReadRxData             UserModules     2D9E
UART_Board_bReadRxStatus           UserModules     2DA1
UART_Board_bReadTxStatus           UserModules     2D9B
UART_Board_cGetChar                UserModules     2E04
UART_Board_cReadChar               UserModules     2E0C
UART_Board_iReadChar               UserModules     2E23
UART_Sensor_CPutString             UserModules     2FED
UART_Sensor_CWrite                 UserModules     2FBF
UART_Sensor_DisableInt             UserModules     2EC1
UART_Sensor_EnableInt              UserModules     2EBA
UART_Sensor_IntCntl                UserModules     2F07
UART_Sensor_PutCRLF                UserModules     2FFF
UART_Sensor_PutChar                UserModules     2F4C
UART_Sensor_PutSHexByte            UserModules     2F32
UART_Sensor_PutSHexInt             UserModules     2F45
UART_Sensor_PutString              UserModules     2F89
UART_Sensor_SendData               UserModules     2EE8
UART_Sensor_SetTxIntMode           UserModules     2EC8
UART_Sensor_Start                  UserModules     2EDA
UART_Sensor_Stop                   UserModules     2EE1
UART_Sensor_TxIntMode              UserModules     2EF4
UART_Sensor_Write                  UserModules     2F99
UART_Sensor_bReadRxData            UserModules     2EEE
UART_Sensor_bReadRxStatus          UserModules     2EF1
UART_Sensor_bReadTxStatus          UserModules     2EEB
UART_Sensor_cGetChar               UserModules     2F54
UART_Sensor_cReadChar              UserModules     2F5C
UART_Sensor_iReadChar              UserModules     2F73
WriteAll_1621@addr                 fnauto          0090
WriteAll_1621@cnt                  fnauto          008E
WriteAll_1621@i                    fnauto          0091
WriteAll_1621@p                    fnauto          008F
_Ack_I2c                           text            3AB6
_B2BDataPtr                        bss0            0055
_B2BFrameCheck                     text            347C
_B2BFrameFlag                      bss0            0056
_B2BHeadFlag                       bss0            0057
_B2BSendData                       text            33B2
_BoardUART                         text            3BE1
_CRC8Check                         text            3425
_CarbonLife                        bss0            0058
_ChangeToOD                        text            3BA3
_ChangeToRead                      text            3BB2
_CurrentBackLight                  bss0            0049
_DataPtr                           bss0            0059
_DataUploadTimer                   ramdata0        0083
_DigitSeg                          cdata           3F00
_DigitSegSwap                      cdata           3F0A
_DisplayBuf                        bss0            0072
_DisplayNum                        bss0            0046
_DisplayPMxx                       text            366A
_DstBackLight                      bss0            004B
_FanFlag                           bss0            005A
_FanUpdateTimeReload               bss0            005B
_FanUpdateTimer                    ramdata0        0084
_FrameCheck                        text            300A
_HT1621B_Init                      text            34C0
_HeadFlag                          bss0            005C
_HeapLife                          bss0            005D
_Humidity                          bss0            005E
_IICTimeOutTimer                   bss0            005F
_IRcvBytes                         text            376D
_ISendByte                         text            3831
_Init_IIC                          text            346B
_LCDOuputAll                       text            3141
_LCD_Init                          text            3057
_LcdUpdateTimer                    ramdata0        0085
_LeftRotate                        text            34D3
_LeftRotate$5259                   fnauto          008E
_LifeFlag                          bss0            0060
_LightADCValue                     bss0            004D
_LightDuty                         bss0            0061
_LightLevel                        bss0            0062
_LightRank                         text            33F3
_LoadConfigInit                    psoc_config     29C5
_LoadConfig_led_display            psoc_config     29CC
_LockStatus                        bss0            0063
_MyPMSUnion                        bss0            0000
_NO_SHADOW                         InterruptRAM    00A7
_Odor                              bss0            0064
_PMSFrameFlag                      bss0            0065
_PM_Flag                           bss0            0066
_PWM8_BL_DisableInt                UserModules     2C04
_PWM8_BL_EnableInt                 UserModules     2C00
_PWM8_BL_ISR                       UserModules     2C48
_PWM8_BL_Start                     UserModules     2C08
_PWM8_BL_Stop                      UserModules     2C0C
_PWM8_BL_WritePeriod               UserModules     2C10
_PWM8_BL_WritePulseWidth           UserModules     2C13
_PWM8_BL_bReadCounter              UserModules     2C19
_PWM8_BL_bReadPulseWidth           UserModules     2C16
_Plasma                            bss0            0067
_PlasmaFlag                        bss0            0068
_PlasmaTimer                       ramdata0        0086
_RHSampleStep                      bss0            0069
_RH_T_Flag                         bss0            006A
_RankLevel                         cdata           3F14
_RcvByte                           text            3975
_RecBuf                            bss0            007E
_RecTimeoutTimer                   bss0            006B
_SAR10_DisableInt                  UserModules     2C4D
_SAR10_EnableAutoTrigger           UserModules     2CBF
_SAR10_EnableInt                   UserModules     2C49
_SAR10_ISR                         UserModules     2D07
_SAR10_SetADCChannel               UserModules     2C8F
_SAR10_SetClk                      UserModules     2CD7
_SAR10_SetRunMode                  UserModules     2CEF
_SAR10_SetTriggerSrc               UserModules     2CA7
_SAR10_Start                       UserModules     2C51
_SAR10_Stop                        UserModules     2C59
_SAR10_Trigger                     UserModules     2C61
_SAR10_bGetData                    UserModules     2C8C
_SAR10_fIsDataAvailable            UserModules     2C69
_SAR10_iGetData                    UserModules     2C72
_SendBit_1621                      text            38FD
_SendByte                          text            3AE2
_SendCmd                           text            34FD
_SendDataBit_1621                  text            3938
_SensorUART                        text            3CE6
_ShowHumiTemp                      text            35A6
_ShowLife                          text            3566
_Si7020CalcRH                      text            30A4
_Si7020CalcTemp                    text            3304
_Si7020Data                        bss0            004F
_Si7020Init                        text            3079
_Si7020Read_RH_NHM                 text            344F
_Si7020Read_Temp_after_RHM         text            3086
_Si7020SendCommand                 text            3764
_SpeedLvl                          bss0            006C
_Start_I2c                         text            3B5C
_Stop_I2c                          text            3B81
_Temperature                       bss0            006D
_Timer                             bss0            006E
_Timer16ISR                        text            3C68
_Timer16_DisableInt                UserModules     2D0C
_Timer16_EnableInt                 UserModules     2D08
_Timer16_Start                     UserModules     2D10
_Timer16_Stop                      UserModules     2D14
_Timer16_WriteCompareValue         UserModules     2D1E
_Timer16_WritePeriod               UserModules     2D18
_Timer16_wReadCompareValue         UserModules     2D24
_Timer16_wReadTimer                UserModules     2D62
_Timer16_wReadTimerSaveCV          UserModules     2D2A
_UART_Board_CPutString             UserModules     2E9D
_UART_Board_CWrite                 UserModules     2E6F
_UART_Board_DisableInt             UserModules     2D71
_UART_Board_EnableInt              UserModules     2D6A
_UART_Board_IntCntl                UserModules     2DB7
_UART_Board_PutCRLF                UserModules     2EAF
_UART_Board_PutChar                UserModules     2DFC
_UART_Board_PutSHexByte            UserModules     2DE2
_UART_Board_PutSHexInt             UserModules     2DF5
_UART_Board_PutString              UserModules     2E39
_UART_Board_RX_ISR                 UserModules     2EB9
_UART_Board_SendData               UserModules     2D98
_UART_Board_SetTxIntMode           UserModules     2D78
_UART_Board_Start                  UserModules     2D8A
_UART_Board_Stop                   UserModules     2D91
_UART_Board_TX_ISR                 UserModules     2EB8
_UART_Board_TxIntMode              UserModules     2DA4
_UART_Board_Write                  UserModules     2E49
_UART_Board_bReadRxData            UserModules     2D9E
_UART_Board_bReadRxStatus          UserModules     2DA1
_UART_Board_bReadTxStatus          UserModules     2D9B
_UART_Board_cGetChar               UserModules     2E04
_UART_Board_cReadChar              UserModules     2E0C
_UART_Board_iReadChar              UserModules     2E23
_UART_Sensor_CPutString            UserModules     2FED
_UART_Sensor_CWrite                UserModules     2FBF
_UART_Sensor_DisableInt            UserModules     2EC1
_UART_Sensor_EnableInt             UserModules     2EBA
_UART_Sensor_IntCntl               UserModules     2F07
_UART_Sensor_PutCRLF               UserModules     2FFF
_UART_Sensor_PutChar               UserModules     2F4C
_UART_Sensor_PutSHexByte           UserModules     2F32
_UART_Sensor_PutSHexInt            UserModules     2F45
_UART_Sensor_PutString             UserModules     2F89
_UART_Sensor_RX_ISR                UserModules     3009
_UART_Sensor_SendData              UserModules     2EE8
_UART_Sensor_SetTxIntMode          UserModules     2EC8
_UART_Sensor_Start                 UserModules     2EDA
_UART_Sensor_Stop                  UserModules     2EE1
_UART_Sensor_TX_ISR                UserModules     3008
_UART_Sensor_TxIntMode             UserModules     2EF4
_UART_Sensor_Write                 UserModules     2F99
_UART_Sensor_bReadRxData           UserModules     2EEE
_UART_Sensor_bReadRxStatus         UserModules     2EF1
_UART_Sensor_bReadTxStatus         UserModules     2EEB
_UART_Sensor_cGetChar              UserModules     2F54
_UART_Sensor_cReadChar             UserModules     2F5C
_UART_Sensor_iReadChar             UserModules     2F73
_WriteAll_1621                     text            3721
__Bnvbit0                          nvbit0          008B
__Bnvbit1                          nvbit1          0100
__Bnvbit2                          nvbit2          0200
__Bnvbit3                          nvbit3          0300
__Brbit0                           rbit0           0083
__Brbit1                           rbit1           0100
__Brbit2                           rbit2           0200
__Brbit3                           rbit3           0300
__Bstackps                         stackps         0300
__HInterruptRAM                    InterruptRAM    0300
__HPD_startup                      PD_startup      3F76
__HSSCParmBlk                      SSCParmBlk      0100
__HTOP                             TOP             0065
__HUserModules                     UserModules     300A
__Hbss                             bss             0300
__Hbss0                            bss0            0083
__Hbss1                            bss1            0100
__Hbss2                            bss2            0200
__Hbss3                            bss3            0300
__Hcdata                           cdata           3F1C
__Hend_init                        end_init        0003
__Hfnauto                          fnauto          00A7
__Hinit                            init            3FA6
__Hintrtext                        intrtext        0003
__Hled_display_RAM                 led_display_RAM 0300
__Hlit                             lit             0300
__Hmaintext                        maintext        3F00
__Hnvbit0                          nvbit0          0458
__Hnvbit1                          nvbit1          0800
__Hnvbit2                          nvbit2          1000
__Hnvbit3                          nvbit3          1800
__Hnvram0                          nvram0          008B
__Hnvram1                          nvram1          0100
__Hnvram2                          nvram2          0200
__Hnvram3                          nvram3          0300
__Hpowerup                         powerup         0003
__Hpsoc_config                     psoc_config     0300
__Hramdata0                        ramdata0        008B
__Hramdata1                        ramdata1        0100
__Hramdata2                        ramdata2        0200
__Hramdata3                        ramdata3        0300
__Hrbit0                           rbit0           0418
__Hrbit1                           rbit1           0800
__Hrbit2                           rbit2           1000
__Hrbit3                           rbit3           1800
__Hromdata0                        romdata0        006D
__Hromdata1                        romdata1        0003
__Hromdata2                        romdata2        0003
__Hromdata3                        romdata3        0003
__Hstackps                         stackps         0300
__Hstrings                         strings         0003
__Htext                            text            3D73
__Hvectors                         vectors         0003
__LInterruptRAM                    InterruptRAM    0300
__LPD_startup                      PD_startup      3F1C
__LSSCParmBlk                      SSCParmBlk      0000
__LTOP                             TOP             0000
__LUserModules                     UserModules     2C00
__Lbss                             bss             0300
__Lbss0                            bss0            0000
__Lbss1                            bss1            0100
__Lbss2                            bss2            0200
__Lbss3                            bss3            0300
__Lcdata                           cdata           3F00
__Lend_init                        end_init        0003
__Lfnauto                          fnauto          008B
__Linit                            init            3F76
__Lintrtext                        intrtext        0003
__Lled_display_RAM                 led_display_RAM 0300
__Llit                             lit             0300
__Lmaintext                        maintext        3D73
__Lnvbit0                          nvbit0          0458
__Lnvbit1                          nvbit1          0800
__Lnvbit2                          nvbit2          1000
__Lnvbit3                          nvbit3          1800
__Lnvram0                          nvram0          008B
__Lnvram1                          nvram1          0100
__Lnvram2                          nvram2          0200
__Lnvram3                          nvram3          0300
__Lpowerup                         powerup         0003
__Lpsoc_config                     psoc_config     0300
__Lramdata0                        ramdata0        0083
__Lramdata1                        ramdata1        0100
__Lramdata2                        ramdata2        0200
__Lramdata3                        ramdata3        0300
__Lrbit0                           rbit0           0418
__Lrbit1                           rbit1           0800
__Lrbit2                           rbit2           1000
__Lrbit3                           rbit3           1800
__Lromdata0                        romdata0        0065
__Lromdata1                        romdata1        0003
__Lromdata2                        romdata2        0003
__Lromdata3                        romdata3        0003
__Lstackps                         stackps         0300
__Lstrings                         strings         0003
__Ltext                            text            300A
__Lvectors                         vectors         0000
__S0                               (abs)           3FA6
__S1                               (abs)           00A7
__Start                            PD_startup      3F1C
___awdiv                           text            3866
___awdiv@counter                   fnauto          009A
___awdiv@dividend                  fnauto          0095
___awdiv@divisor                   fnauto          0093
___awdiv@quotient                  fnauto          0097
___awdiv@sign                      fnauto          0099
___awmod                           text            39BD
___awmod@counter                   fnauto          0098
___awmod@dividend                  fnauto          0095
___awmod@divisor                   fnauto          0093
___awmod@sign                      fnauto          0097
___end_of_c_program_code           text            3D73
___lbdiv                           text            3801
___lbdiv@counter                   fnauto          0094
___lbdiv@dividend                  fnauto          0092
___lbdiv@divisor                   fnauto          0091
___lbdiv@quotient                  fnauto          0093
___lbmod                           text            37DD
___lbmod@counter                   fnauto          0094
___lbmod@dividend                  fnauto          0092
___lbmod@divisor                   fnauto          0091
___lbmod@rem                       fnauto          0093
___lmul                            text            351E
___lmul@multiplicand               fnauto          009C
___lmul@multiplier                 fnauto          0098
___lmul@product                    fnauto          00A0
___lwdiv                           text            3A6C
___lwdiv@counter                   fnauto          009B
___lwdiv@dividend                  fnauto          0097
___lwdiv@divisor                   fnauto          0095
___lwdiv@quotient                  fnauto          0099
___lwmod                           text            3A30
___lwmod@counter                   fnauto          0099
___lwmod@dividend                  fnauto          0097
___lwmod@divisor                   fnauto          0095
___start_of_c_program_code         text            300A
___wmul                            text            363E
___wmul@multiplicand               fnauto          0098
___wmul@multiplier                 fnauto          009A
___wmul@product                    fnauto          009C
__end_of_Ack_I2c                   text            3AE2
__end_of_B2BFrameCheck             text            34C0
__end_of_B2BSendData               text            33F3
__end_of_BoardUART                 text            3C68
__end_of_CRC8Check                 text            344F
__end_of_ChangeToOD                text            3BB2
__end_of_ChangeToRead              text            3BC3
__end_of_DisplayPMxx               text            3721
__end_of_FrameCheck                text            3057
__end_of_HT1621B_Init              text            34D3
__end_of_IRcvBytes                 text            37DD
__end_of_ISendByte                 text            3866
__end_of_Init_IIC                  text            347C
__end_of_LCDOuputAll               text            3304
__end_of_LCD_Init                  text            3079
__end_of_LeftRotate                text            34FD
__end_of_LightRank                 text            3425
__end_of_RcvByte                   text            39BD
__end_of_SendBit_1621              text            3938
__end_of_SendByte                  text            3B5C
__end_of_SendCmd                   text            351E
__end_of_SendDataBit_1621          text            3975
__end_of_SensorUART                text            3D73
__end_of_ShowHumiTemp              text            363E
__end_of_ShowLife                  text            35A6
__end_of_Si7020CalcRH              text            3141
__end_of_Si7020CalcTemp            text            33B2
__end_of_Si7020Init                text            3086
__end_of_Si7020Read_RH_NHM         text            346B
__end_of_Si7020Read_Temp_after_RHM text            30A4
__end_of_Si7020SendCommand         text            376D
__end_of_Start_I2c                 text            3B81
__end_of_Stop_I2c                  text            3BA3
__end_of_Timer16ISR                text            3CE6
__end_of_WriteAll_1621             text            3764
__end_of___awdiv                   text            38E4
__end_of___awmod                   text            3A30
__end_of___lbdiv                   text            3831
__end_of___lbmod                   text            3801
__end_of___lmul                    text            3566
__end_of___lwdiv                   text            3AB6
__end_of___lwmod                   text            3A6C
__end_of___wmul                    text            366A
__end_of_abs                       text            38FD
__end_of_delay_us                  text            3BE1
__end_of_main                      maintext        3F00
__stack_start__                    stackps         0300
_abs                               text            38E4
_ack                               bss0            006F
_bGetPowerSetting                  PD_startup      3F73
_bPWM8_BL_ReadCounter              UserModules     2C19
_bPWM8_BL_ReadPulseWidth           UserModules     2C16
_bUART_Board_ReadRxData            UserModules     2D9E
_bUART_Board_ReadRxStatus          UserModules     2DA1
_bUART_Board_ReadTxStatus          UserModules     2D9B
_bUART_Sensor_ReadRxData           UserModules     2EEE
_bUART_Sensor_ReadRxStatus         UserModules     2EF1
_bUART_Sensor_ReadTxStatus         UserModules     2EEB
_data_length                       bss0            0070
_data_pm1_0                        bss0            0051
_data_pm2_5                        bss0            0053
_delay_us                          text            3BC3
_main                              maintext        3D73
_mode                              bss0            0071
_myRxUnion                         bss0            0028
_myTxUnion                         bss0            0037
_one_sec_timer                     ramdata0        0087
_poly_h                            ramdata0        0088
_poly_l                            ramdata0        0089
_rh_sample_timer                   ramdata0        008A
_wTimer16_CaptureCounter           UserModules     2D62
_wTimer16_ReadCompareValue         UserModules     2D24
_wTimer16_ReadCounter              UserModules     2D2A
_wTimer16_ReadTimer                UserModules     2D62
_wTimer16_ReadTimerSaveCV          UserModules     2D2A
abs@a                              fnauto          0093
bGetPowerSetting                   PD_startup      3F73
bPWM8_BL_ReadCounter               UserModules     2C19
bPWM8_BL_ReadPulseWidth            UserModules     2C16
bUART_Board_ReadRxData             UserModules     2D9E
bUART_Board_ReadRxStatus           UserModules     2DA1
bUART_Board_ReadTxStatus           UserModules     2D9B
bUART_Sensor_ReadRxData            UserModules     2EEE
bUART_Sensor_ReadRxStatus          UserModules     2EF1
bUART_Sensor_ReadTxStatus          UserModules     2EEB
delay_us@us                        fnauto          0098
intlevel0                          romdata3        0003
intlevel1                          romdata3        0003
intlevel2                          romdata3        0003
main@ret                           fnauto          008B
reset_vec                          vectors         0000
start                              vectors         0000
startup                            init            3F76
wTimer16_CaptureCounter            UserModules     2D62
wTimer16_ReadCompareValue          UserModules     2D24
wTimer16_ReadCounter               UserModules     2D2A
wTimer16_ReadTimer                 UserModules     2D62
wTimer16_ReadTimerSaveCV           UserModules     2D2A
