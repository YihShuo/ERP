unit Unit2;

interface

uses
  Windows;

type
  PCnnInfo=^TCnnInfo;
  TCnnInfo=packed record
    CnnHandle:THandle;
    Clock_id:Integer;
    Ip:array[0..14] of char;
    Port:Integer;
  end;
  TSerialType=Array [0..16] of Char;
  TBuf=array [0..1023] of Char;
  PClockInfo=^TClockInfo;
  TClockInfo=record
    hPort: THandle;
    clock_id: Integer;
    port, baudrate: DWORD;        //通讯端口和速率
    Fireware: Double;             //模具版本
    clock_type,                   //运行模式    卡钟类型(0=考勤机，1=考勤门禁机，2=门禁机，3=消费机，4=补贴机，5=发卡机，6=数据服务器，7=会议签到)
    VerOrd,                       //版本系列
    model,                        //机具型号
    cls,                          //读头类型(0: ID卡, 1:IC卡, 2: 混合)
    CardFormat,                   //卡格式 1=原依时利卡格式 2=山东电信卡格式 3=移动卡格式 4=内蒙卡格式
    run_mode,                     //工作模式(0:考勤机, 1:考勤门禁 2:门禁机 3:消费机 4:发卡机 5:其它)
    Mode, SystemMode, ExtraMode,RingMode,  //运行参数
    Block,                        //使用IC卡块号
    DispCardLen, CardLen,         //显示卡号长度, 存储卡号长度
    GroupStation: Integer;        //分组字节位置
    GroupCheck,                   //是否打卡分组
    Connected,                    //是否已联机
    CmdVerify, RWOnly: Boolean;   //是否专用发卡器
    mark: Char;                   //刷卡标识
    CommStyle: Integer;           //通讯类型，0串口通讯 1TCP/IP通讯
    IPAddr: String;                //TCP/IP模块IP地址
    IPPort: Integer;              //TCP/IP模块端口
    Vendor: Integer;              //模块编号 0:=依时利 1=周立功 2=宇泰或其它
    IPPwd: String;                //模块的密码
    IPworkmode:string;            //TCP/IP转换器的工作模式
    Decimal: Integer;             //小数位
    IsU: Boolean;                 //是否带U盘
    IsSimCard: Boolean;           //是否可以刷手机卡
  end;
  
  PICRecord = ^TICRecord;
  TICRecord = packed record
    Card: array[0..19] of AnsiChar; // 卡号字符串
    timeString: array[0..19] of AnsiChar; // 14位刷卡时间字符串, 格式为yyyymmddhhnnss
    EmpId: array[0..09] of AnsiChar;
    mark: Integer; // 读卡机标识字符
    flag: Integer; // 存储卡的结果
//            flag = 0   : 表示为正常卡
//            flag.0 = 1 : 表示为非法门禁卡
//            flag.1 = 1 : 表示为非法考勤卡
//            flag.2 = 1 : 表示为黑名单卡
    cardTimes: Integer; // 发卡次数, 0-15
    consume: Integer; // 消费额
    balance: Integer; // 消费后余额
    pos_sequ: Integer; //消费流水号
    order_id: Integer; //卡重复使用序号
       //090708陈润峰
      //订餐扩展
    OrderMonth: Integer; //订餐月
    OrderDay: Integer; //订餐日
    Dins1: Integer; //订餐1
    Dins2: Integer; //订餐2
    Month1: Integer; //月份1
    Month2: Integer; //月份2
  //090708陈润峰
    reserved1: DWORD; // 保留
    reserved2: DWORD; // 保留
    reserved3: array[0..19] of AnsiChar; // 用作姓名
    retranType:Integer;
    SubDeviceID:Byte;
    ReaderNo:Byte;
    EventFlag:Byte;
    MDoorPassword:array [0..6] of AnsiChar;
    MagneticState,
    Channel,
    pwdkind,
    DoorState:Byte;
    LowFloorCtrl:DWORD;
    HighFloorCtrl:DWORD;
    LiftState:Byte;
    reserved4: array[0..69] of AnsiChar; // 保留
    Clock_id: Integer;
  end;
  
  //ER-690消费记录结构(大小和ER-980记录一致)
  P690ReadData=^T690ReadData;
  T690ReadData=packed record
    Verify_Error: Boolean;                                  //此记录校验是否正确, 由用户处理,
    //如果记录校验错误且需继续读返回一条记录则需重置为False
    CardNo: array[0..19] of char;                           //卡号(20个字节,以0结束字符串)
    TimeString: array[0..19] of char;                       //时间(20个字节,以0结束字符串)
    flag: Integer;                                          //打卡结果
    //          flag = 0     : 表示正常记录
    //          flag = 1     : 补贴充值记录
    //          flag = 2     : 出纳机充值记录
    //          flag = 3     : 退还了误收金额的消费记录
    //          flag = 7     : 表示此记录的卡片在写入金额时由于过早离开了感应区，有可能金额没有正常写入
    //          新增标志
    //          flag = 5     :透支消费
    Consume: Integer;                                       //消费金额,单位分
    Balance: Integer;                                       //消费后余额,单位分
    Times: Integer;                                         //充值次数
    Record_Total: Integer;                                  //采集数据的总记录数
    Record_Index: Integer;                                  //当前记录是第几条记录

    //新增成员

    Clock_ver: Integer;                                     //消费记录版本号
    Clock_ID: Integer;                                      //机号
    POS_Sequ: Integer;                                      //POS交易流水号
    Card_Sequ: Integer;                                     //卡交易流水号
    Order_ID: Integer;                                      //卡重用顺序号
    Op_CardNo: array[0..19] of Char;                        //POS机操作员卡号
    Date_ver: array[0..19] of Char;                         //时间版本号
    OverPwd: array[0..9] of char;                           // 超额消费密码
    reserved1: DWORD;                                       //983返回的是状态
    reserved2: DWORD;
    reserved3: array[0..19] of Char;                        // 保留
    reserved4: array[0..95] of Char;                       // 保留
    InOutFlag:Integer;                                   //进出标志
    ReaderNo:Byte;   //读头号

    //订餐扩展
    OrderMonth   : Integer;  //订餐月
    OrderDay     : Integer;  //订餐日
    OrderDinings : array[0..100] of char; //订餐表
    Dins         : Integer;

    //消费机新增
    transcount:integer;                                     //交易前金额 分  返回交易额(4字节)
    retransta: integer;                                     //返回交易状态(1字节)
    retranType: integer;                                    //返回交易类型
    Enterp_ID:  array[0..11] of char;                        //返回企业ID (6字节)
    Car_type : integer;                                     //返回卡类型标识（1字节）（0x00：普通IC卡，0x01：(U)SIM卡）
    emp_flowid: integer;                                   //返回   移动卡：企业员工流水号（4字节）
    pocket_index: integer;                                  //返回钱包子应用索引号(1字节)
    pocket_applytype:  integer;                             //返回应用类型标识（1 字节）  0x01：全国钱包；0x04：省钱包；0x08：企业钱包
    pocket_remainType:  integer;                           //返回钱包余额类型（1字节）  0x00：企业补贴；0x01：个人充值；退费、消费定为0xFF
    allowance_method: integer;                            //返回补贴方式（1字节） 移动卡：0x00覆盖, 0x01累加，当钱包余额类型为企业补贴时有效。无效时为0xFF
                                                          //电信卡： 0x00表示消费;	0x01表示标准出纳模式; 0x02表示清零补贴模式;   0x03表示累加补贴模式; 0x04 表示消费撤销
    allowance_time:integer;                              //	返回电信卡，自动补贴批次（2字节）    非自动补贴暂时为0，大端格式，高字节在前，低字节在后
    pocket_type: integer;                                //  返回钱包类型(1字节)   0x01：有限余额；0x02：不限余额  0x11：有限次；0x12：不限次
    Car_TAC    :array [0..7]of char;                     //返回电信卡，TAC(4字节)
    oper_id : integer;                                    //返回操作员编码（2字节），01-98相当于0x0001-0x0098
    dev_ver: integer;                                     //消费记录版本号  记录版本(1字节)    电信卡：0x01；移动卡：0x02
    AllowanceBalance:integer;                             ///补贴余额
    CargoResult:integer;                                  ///出货结果,0表示正常出货，1表示出货故障，255表示出货中
    RecordType:integer;                                   ///记录类型
  end;

  PReadData=P690ReadData;//按需要更改声明
  TReadData=T690ReadData;//按需要更改声明

  PMealRecord=^TMealRecord;
  TMealRecord = packed record
    Ver_id: array [0..19] of Char;
    pos_sequ, card_sequ: integer;
    opcard_id: array [0..19] of Char;
    clock_id: integer;
    emp_id, card_id: array [0..19] of Char;
    sign_time: TDatetime;
    mark, flag, card_times: integer;
    card_consume, card_balance, card_oldbalance,AllowanceBalance: double;
    kind: Integer;
    MealType: integer;
    passed: Boolean;
    Userid: array [0..19] of Char;
    CardTypeCode, CityCode, AppCardSN, TACCheck: array [0..19] of Char;
    AppType, BusiType: Integer;
    CompanyID, CommonEmpID, CompanyEmpID: array [0..19] of Char;
    BusiStyle, WalletBalType, AllowanceType,dev_ver: Integer;
    ReaderNo:Integer;
    PushResult:Integer;  //用于自动售卖机，出货结果
    EvenFlag:Integer;  //记录门禁事件标志

    DinType:Integer;   //用于订餐  0按天,1按月
    DinDate:TDateTime;      //订餐起始日期
    SubDeviceID:Integer;  //多门门禁门编号
    Channel:Integer;  //多门门禁输入输出通道
    Op_Pwd:array[0..5] of Char; //多门门禁事件密码
    PwdKind:Integer;  //事件密码类型
    DinTab:array [0..99] of Char;     //用于订餐
    LowFloorCtrl:DWORD;
    HighFloorCtrl:DWORD;
    LiftState:Byte;
  end;

  pDeviceData = ^DeviceData;
  DeviceData =packed record                                       // 设备刷卡数据
    cardno: array[0..15] of char;                           //卡号
    emp_no: array[0..16] of char;                           //工号
    emp_name: array[0..16] of char;                         //员工姓名
    dev_id: integer;                                        //机号
    mark: Integer;                                          //标识
    card_time: array[0..18] of char;                        //打卡时间
    consume: integer;                                       //金额单位分 返回交易前余额(4字节)

    blanace: integer;                                       //余额单位分
    times: integer;                                         //充值次数
    flag: integer;                                          // 打卡标识
    //15：正常卡
    //14：黑名单卡
    //13：有效白名单卡但不在有效打卡时间
    //7：未在名单上(灰名单)


    POS_Sequ: integer;                                      //POS交易流水号    返回终端机交易流水号(4字节)
    Card_Sequ: integer;                                     //卡交易流水号      返回卡交易序号(4字节)
    Op_CardNo: array[0..9] of char;                         //操作员卡号
    OverPwd: array[0..9] of char;                           //超额消费密码
    reserved1: array[0..19] of char;                        // 保留
    reserved2: Cardinal;                                    // 用做班次标识
    POS_id:array [0..11] of Char;                             //终端机编号(6字节)
    reserved3:array[0..7] of Char;                            //保留
    reserved4: array[0..100] of Char;                       // 保留

    ////考勤机扩展

    CustomInfo1:array [0..15] of char;                   //自定义信息1
    CustomInfo2:array [0..15] of char;                   //自定义信息1
    CustomInfo3:array [0..15] of char;                   //自定义信息1
    CustomInfo4:array [0..15] of char;                   //自定义信息1

    Input1:integer;
    Input2:integer;
    Input3:integer;


    //订餐扩展
    OrderMonth   : Integer;  //订餐月
    OrderDay     : Integer;  //订餐日
    OrderDinings : array[0..100] of char; //订餐表
    Dins         : Integer;

    //消费机新增
    transcount:integer;                                     //交易前金额 分  返回交易额(4字节)
    retransta: integer;                                     //返回交易状态(1字节)
    //移动卡：交易状态（0x00=成功；0xXX=失败（错误代码））
    //电信卡：交易状态（是否为灰记录），0x13代表是灰记录。 此字节=0x13--0x17，或者0x00。
    //0x00表示正常刷卡记录
    //0x13表示执行到交易的步骤3出错（此步骤更新S1B0钱包余额）
    //0x14表示执行到交易的步骤4出错（此步骤更新交易明细信息）
    //0x15表示执行到交易的步骤5出错（此步骤更新S9B0交易完成）
    //0x16表示执行到交易的步骤6出错（此步骤复制S9B0到S9B1）
    //0x17表示执行到交易的步骤7出错（此步骤复制S1B0到S1B1）


    retranType: integer;                                    //返回交易类型
    Enterp_ID:  array[0..11] of char;                        //返回企业ID (6字节)
    Car_type : integer;                                     //返回卡类型标识（1字节）（0x00：普通IC卡，0x01：(U)SIM卡）
    emp_flowid: integer;                                   //返回   移动卡：企业员工流水号（4字节）
    pocket_index: integer;                                  //返回钱包子应用索引号(1字节)
    pocket_applytype:  integer;                             //返回应用类型标识（1 字节）  0x01：全国钱包；0x04：省钱包；0x08：企业钱包
    pocket_remainType:  integer;                           //返回钱包余额类型（1字节）  0x00：企业补贴；0x01：个人充值；退费、消费定为0xFF
    allowance_method: integer;                            //返回补贴方式（1字节） 移动卡：0x00覆盖, 0x01累加，当钱包余额类型为企业补贴时有效。无效时为0xFF
                                                          //电信卡： 0x00表示消费;	0x01表示标准出纳模式; 0x02表示清零补贴模式;   0x03表示累加补贴模式; 0x04 表示消费撤销
    allowance_time:integer;                              //	返回电信卡，自动补贴批次（2字节）    非自动补贴暂时为0，大端格式，高字节在前，低字节在后
    pocket_type: integer;                                //  返回钱包类型(1字节)   0x01：有限余额；0x02：不限余额  0x11：有限次；0x12：不限次
    Car_TAC    :array [0..7]of char;                     //返回电信卡，TAC(4字节)
    //Car_TAC:Int64;                                         //返回电信卡，TAC, 输出数值
    oper_id : integer;                                    //返回操作员编码（2字节），01-98相当于0x0001-0x0098
    dev_ver: integer;                                     //消费记录版本号  记录版本(1字节)    电信卡：0x01；移动卡：0x02

    CSN:array [0..15] of Char;                             //物理卡号
    CSNtype:integer;                                      //物理卡类型.0:13.56M卡（包括M1，SIMPASS）	1:CPU卡，2:电信卡,3:移动卡

    /////门禁机新增
    RecordType:integer;                                   ///记录类型,大于等于128($80)的为事件，小于128($80)的为记录
                                                          //0x00：普通记录（门禁一体机，例如：门禁考勤卡刷卡记录）；
                                                          //0x01：门禁卡刷卡记录（门禁一体机）；
                                                          //0x02：考勤卡刷卡记录（门禁一体机）；
                                                          //0x03：黑名单卡记录（门禁一体机）；
                                                          //0x04：非法卡记录（门禁一体机）；

                                                         //1）报警事件
                                                         // （1）非法入侵事件：0x81
                                                         // （2）防撬报警事件：0x82
                                                         // （3）内部胁迫报警事件：0x83
                                                         // （4）外部胁迫报警事件：0x84
                                                         // （5）门开超时事件：0x85
                                                         // （6）门关超时事件：0x86
                                                         // （7）黑名单卡事件：0x87
                                                         // （8）非法卡事件：0x88
                                                         // （9）复位事件：0x91
                                                         // 2）正常事件
                                                         // （1）布防事件：0xA1
                                                         // （2）撤防事件：0xA2
                                                         // （3）门开事件：0xA3
                                                         // （4）门关事件：0xA4
                                                         // （5）出门按钮事件：0xA5
                                                         // （6）刷卡事件：0xA6
                                                         // （7）刷卡+密码事件：0xA7
                                                         // （8）第2读头刷卡事件：0xA8
                                                         // （9）第2读头刷卡+密码事件：0xA9
                                                         // （10）管理软件开门：0xAA
                                                         // （11）管理软件关门：0xAB
                                                         // （12）普通密码事件：0xAC
                                                         // （13）超级密码事件：0xAD
                                                         // 3）其他事件
                                                         // （1）辅助输入1有效事件：0xC1
                                                         // （2）辅助输入1无效事件：0xC2
                                                         // （3）电锁打开事件：0xD1
                                                         // （4）电锁关闭事件：0xD2
                                                         // （5）辅助电锁打开事件：0xD3
                                                         // （6）辅助电锁关闭事件：0xD4
                                                         // （7）辅助输出1有效事件：0xD5
                                                         //（8）辅助输出1无效事件：0xD6
                                                         // （9）管理员卡事件：0xE1
                                                         // （10）管理员密码事件：0xE2
                                                         // （11）改变参数事件：0xF1

    Reader:integer;                                      //读卡器编号,
                                                          //0x01：内部读卡器第1读头；
                                                          //0x02：内部读卡器第2读头；
                                                          //0x81：外接第1读头。
                                                          //0x82：外接第2读头。
    
    AuthCode:array  [0..8] of Char;                       //卡认证码（4个字节，BCD）
    AllowanceBalance:integer;                             ///补贴余额

    CardNOEx:array [0..20] of Char;                     ///扩展卡号,当卡号超过15个字节,将使用该卡号
    CargoResult:integer;                                 ///出货结果,0表示正常出货，1表示出货故障，255表示出货中

    Service:integer;                           ///服务评价值,，0x01：满意，0x02:基本满意 0x03:不满意
    InOutFlag:integer;                           ///手执机进出标志，0x00 进,0x01出
    SubDeviceID:Byte;
    MDoorPassword:array [0..5] of Char;
    MagneticState,
    DoorState:Byte;
    LowFloorCtrl:DWORD;
    HighFloorCtrl:DWORD;
    LiftState:Byte;
    ///////保留字段，填充空内容
    KeepField:array [0..38] of char;
  end;

  DeviceDataArray = array[0..15] of DeviceData;

   FunOnRefreshDeviceStateBySerial = procedure(Dev_id: integer;Serial:TSerialType; State: integer; RecordCount: integer);stdcall;
  FunOnDeviceLogin=procedure(Dev_id:integer;Serial:TSerialType;ip:PChar;port:integer;
                   var Heartbeat:integer);stdcall;
  FunOnRecieveBatchRecordBySerial=procedure(Dev_id: integer;Serial:TSerialType;index:integer;RecordCount:integer;Records: DeviceDataArray;var bReturnOK:boolean);stdcall;
  FunOnRecievePhotoBySerial=procedure(Dev_id: integer;Serial:TSerialType;UpLoadIndex:integer;PhotoIndex:integer;PhotoDataLen:integer;PhotoPos:integer;PerPhotoDataLen:integer;PhotoData:TBuf;var bReturnOK:boolean);stdcall;

  //      数据处理回调函数
  TDataProcess = function(lpData: Pointer; lpReadData: PReadData): Boolean;stdcall;
  // lpData       : 自定义变量, 对应ReadAllRecord()的第二个参数
  // lpReadData   : 记录结构指针
  //返回值:
  //如果需要返回下一条记录则返回True, 如果需要中止数据读取可返回False,

  TTimeLapse = procedure(lpData: Pointer; microsecond: Integer);stdcall;
  //延时回调
  //参数说明:
  // lpData       : 自定义变量, 对应ReadAllRecord()的第二个参数
  // microsecond  : 如果使用此函数则应在microsecond 微秒内按时返回
  //无返回值

  //TBuf=array  [0..1023] of char;
  TMDoorTimeCtrl=packed record
     KeepOpenTime:Word;
     OpenTimeOut:Word;
     DelayTime :Word;
     WarnDelayTime :Word;
     Reserved1:Byte;
     Reserved2:Byte;
  end;
  TMDoorInputDotCtrl=packed record
     MagneticCtrl:Byte;
     SwitchCtrl:Byte;
     Auxiliary1Ctrl:Byte;
     Auxiliary2Ctrl:Byte;
     Auxiliary3Ctrl :Byte;
     Auxiliary4Ctrl :Byte;
     Reserved1:Byte;
     Reserved2:Byte;
  end;
  TMDoorOutputDotCtrl=packed record
     DoorCtrl:Byte;
     AlarmCtrl:Byte;
     Reserved1 :Byte;
     Reserved2 :Byte;
  end;

  TMDoorReaderMode=packed record
    OpenWay:Byte;
    MultCount:Byte;
    MultGroupCtrl:Word;
    PwdCtrl:DWORD;
    ManagerCardCtrl:Byte;
    Reserved:Byte;
  end;

  TMDoorReaderTime=packed record
    DateCtrl:Word;
    WeekCtrl:Byte;
    Reserved:Byte;
  end;

  TAtomProperty=Byte;
  {  TimeID:Byte;
    Kind:Byte;
    Reserved:Byte;
    Valid:Byte;
  end;  }

  PMDoorInfo=^TMDoorInfo;
  TMDoorInfo=record
    hPort: THandle;
    clock_id: Integer;
    clock_name:string;
    model,                        //机具型号
    clock_type,                   //运行模式
    DoorType:Integer;
    CommStyle: Integer;           //通讯类型，0串口通讯 1TCP/IP通讯
    port, baudrate: DWORD;        //通讯端口和速率
    IPAddr: String;                //TCP/IP模块IP地址
    IPPort: Integer;              //TCP/IP模块端口
    SerialNo:string;
    Area_id:string;
  end;

  TMDoorWeekProperty=packed record
    SunProperty:TAtomProperty;
    MonProperty:TAtomProperty;
    TuesProperty:TAtomProperty;
    WedProperty:TAtomProperty;
    ThurProperty:TAtomProperty;
    FriProperty:TAtomProperty;
    SatProperty:TAtomProperty;
  end;

  TMDoorWeeks=array[0..7] of TMDoorWeekProperty;

  TMDoorDateProperty=packed record
    BMonth:Byte;
    BDay:Byte;
    EMonth,
    EDay:Byte;
    DateProperty:TAtomProperty;
    Reserved:Byte;
  end;
  TMDoorDates=array[0..15] of TMDoorDateProperty;

  TMDoorTimePeriod=packed record
    BHour,
    BMinute,
    EHour,
    EMinute:Byte;
    Valid:Byte;
    WorkCtrl:Byte;
  end;

  TMDoorTimePeriods=array[0..31] of TMDoorTimePeriod;

  TMDoorTimeGroup=packed record
    TimeCtrl1,
    TimeCtrl2,
    TimeCtrl3,
    TimeCtrl4,
    TimeCtrl5,
    TimeCtrl6,
    TimeCtrl7,
    TimeCtrl8:Byte
  end;

  TMDoorTimeGroups=array[0..31] of TMDoorTimeGroup;

  PMDoorUniteAction=^TMDoorUniteAction;
  TMDoorUniteAction=packed record
    Kind,
    Action,
    Output,
    Keeptime:Byte;
  end;
  TMDoorUniteActions=array[0..3] of TMDoorUniteAction;

  TMdoorYMD=record
    Year:Word;
    Month:Byte;
    Day:Byte;
  end;

  TMDoorHMS=record
    Hour:Byte;
    Minute:Byte;
  end;

  TMDoorHMSPeriod=record
    BeginHMS:TMDoorHMS;
    EndHMS:TMDoorHMS;
  end;

  TMDoorHMSPeriods=array[0..5] of TMDoorHMSPeriod;

  TMDoorHMSWorkPeriod=record
    BeginHMS:TMDoorHMS;
    EndHMS:TMDoorHMS;
    WorkCtrl:Byte;
  end;

  TMDoorHMSWorkPeriods=array[0..5] of TMDoorHMSWorkPeriod;

  PDevInfor = ^DevInfor;
  DevInfor = packed record
    DevID: Integer;
    IPAddress: array[0..15] of Char;
    Port: Integer;
    SerialNo: array[0..15] of char;
    MAC: array[0..20] of char;
  end;

  PConnParam = ^ConnParam;                                  ///连接参数
  ConnParam = packed record
    dev_id: Integer;                                        ///机号
    ComPort: Integer;                                       ///Com口
    ComBaudRate: integer;                                   //串行波特率
    IPAddress: array[0..15] of char;                        ///IP地址
    IPPort: Integer;                                        ///IP端口
    USBPath: array[0..99] of char;                          ///USB设备路径
    CommType: Integer;                                    ///通讯方式, 0:RS232,1:TCP/IP,2:UDP,3:USB
  end;
  
  PDeviceType = ^DeviceType;                                //设备类型
  DeviceType =packed record
    Version: double;                                        ///设备软件版本
    VerOrd:integer;                                         ///第几代协议
    DevType: integer;                                       ///设备型号
    Serial_Num: array[0..16] of char;                       ///设备序列号
    DevModel: Integer;                                      ///设备型号
    Cls: Integer;                                           ///读头类型, 0:ID, 1:IC,2:混合,3:CPU
    clocktype: integer;                                     //设备用途  考勤机 1:门禁机 2:消费机
    Devname: array[0..20] of char;                          //设备别名
    MAC:array[0..20] of char;                               //设备MAC地址
      //////SRich 2011.07.15 新增
    CardFormat:integer;
    IsSimCard:boolean;
  end;

  pDeviceRec = ^DeviceRec;                                  //
  DeviceRec =packed record                                        //设备对象结构
    DevType: DeviceType;                                    //设备类型
    pConnParam: ConnParam;                                  //设备连接参数
  end;

 TDeviceList = array[0..255] of DeviceRec;

const
  EastRiver_API = 'EastRiver.dll';

  function SearchLanDevice(var Devices:TDeviceList;var DeviceCount:integer):boolean;stdcall; external EastRiver_API;
  function OpenClientSocket(RemoteAddr: PChar; Port: Integer): THandle; stdcall; external EastRiver_API; //打开TCP/IP通讯端口
  function ClosePortHandle(hPort: THandle): Boolean; stdcall; external EastRiver_API; //关闭端口句柄
  function CallClock(hPort: THandle; clock_id: Integer): Boolean; stdcall; external EastRiver_API; //联机函数
  function UnCallClock(hPort: THandle): Boolean; stdcall; external EastRiver_API; //脱机函数
  function ReadClockTime(hPort: THandle; var CurTime: Double): Boolean; stdcall; external EastRiver_API; //读取时间
  function ReadMSubDeviceCtrl(hPort: THandle; AID: Integer;var InReadNo,OutReadNo,WarnCtrl:Integer;
      var MDoorTimeCtrl:TMDoorTimeCtrl;var OutCtrl:TMDoorOutputDotCtrl;var InCtrl:TMDoorInputDotCtrl): Integer;
    stdcall; external EastRiver_API;//多门门禁读取门控参数
  function SetMSubDeviceCtrl(hPort: THandle;AID:Integer;InReadNo,OutReadNo,WarnCtrl:Integer;
  MDoorTimeCtrl:TMDoorTimeCtrl;OutCtrl:TMDoorOutputDotCtrl;InCtrl:TMDoorInputDotCtrl):Integer;stdcall; external EastRiver_API;//多门门禁设置门控参数
  function InitDevice(hPort: THandle; Opctrl: Integer): integer;stdcall; external EastRiver_API;
  function ClearAllReadCard(hPort: THandle): Boolean; stdcall; external EastRiver_API;
  function ClearAllCard(hPort:THandle):integer;stdcall; external EastRiver_API;
  function SetClockTime(hPort: THandle; SetTime: Double): Boolean;stdcall; external EastRiver_API;
  function SetClockID(hPort: THandle; new_id: Integer): Boolean;stdcall; external EastRiver_API;
  function SetControllerIP(hPort: THandle; IPAddr, subnetMask, gateway:PChar; UDPPort,AutoIP:integer):integer;stdcall; external EastRiver_API;
  function SetDoorAction(hPort: THandle; DoorNo:Integer;Action:Integer):integer;stdcall; external EastRiver_API;
  function SetHolidayGroupEx(hPort: THandle;ReaderCtrl: Byte;ID:Integer;BeginDate,EndDate:PChar;WeekCtrl:Byte;pt1:PChar; pt2:PChar; pt3:PChar; et1:PChar; et2:PChar; et3:PChar): integer;stdcall; external EastRiver_API;
  function AddCardHolder(hPort:THandle;CardNo:PChar;Group:Integer;Password:PChar; expirationDate:PChar;HolidayPassed:Integer;ReaderCtrl:Byte;TimeGroupCtrl:Integer):integer;stdcall;external EastRiver_API;
  function DeleteCardHolder(hPort: THandle;CardNo:PChar):integer;stdcall;external EastRiver_API;
  function SetTimeGroupEx(hPort: THandle;ID:Integer;BeginDate,EndDate:PChar; WeekCtrl:Byte;pt1:PChar; pt2:PChar; pt3:PChar; et1:PChar; et2:PChar; et3:PChar): integer;stdcall;external EastRiver_API;
  //门禁通行时间设置（用于名单,可为每个读头指定通行时间)
  function SetMDoorPassTime(hPort: THandle;AID:Byte;BeginDate,EndDate:TMdoorYMD;WeekCtrl:Byte;MDoorHMSPeriods:TMDoorHMSPeriods):Integer; stdcall;external EastRiver_API;
  function ReadMDoorPassTime(hPort: THandle;AID:Byte;var BeginDate,EndDate:TMdoorYMD;var WeekCtrl:Byte;var MDoorHMSPeriods:TMDoorHMSPeriods):Integer; stdcall;external EastRiver_API;
  //多门门禁远程操作
  function MDoorRemoteAction(hPort: THandle;Action: Byte;AID:Byte;AParam: Integer): Integer;stdcall;external Eastriver_API

  //门禁节假日设置
  function SetMDoorHoliday(hPort: THandle;AID:Byte;BeginDate,EndDate:TMdoorYMD;WeekCtrl:Byte;ReaderCtrl:Byte;MDoorHMSPeriods:TMDoorHMSPeriods):Integer; stdcall;external EastRiver_API;
  function ReadMDoorHoliday(hPort: THandle;AID:Byte;var BeginDate,EndDate:TMdoorYMD;var WeekCtrl:Byte;var ReaderCtrl:Byte;var MDoorHMSPeriods:TMDoorHMSPeriods):Integer; stdcall;external EastRiver_API;

  //多门门禁设置读头参数
  function SetMDoorReaderCtrl(hPort: THandle;AID:Integer;ReaderMode:TMDoorReaderMode;WorkCtrl:Integer):Integer;stdcall;external EastRiver_API;
  //多门门禁读取读头参数
  function ReadMDoorReaderCtrl(hPort: THandle;AID:Integer;var ReaderMode:TMDoorReaderMode;var WorkCtrl:Integer):Integer;stdcall;external EastRiver_API;
  function PrivateReadLanIPAndMac(var PortAddr: PChar; var SubNet: PChar; var MaskAddr: PChar; var TCPPort: Integer; var UDPPort: Integer; var AutoIP: Integer; var MacAddr: PChar): Integer;stdcall;external EastRiver_API;
  //3.读记录返回格式(>4G),输出为机内码
  function ReadRecordReturnFormat(hPort: THandle;var RecordLen: Integer; var RecordFmt: TBuf): Integer; stdcall;  external EastRiver_API;
  //		  读设备已经存储的考勤记录数
  function ReadClockRecordTotal(hPort: THandle; var data: Integer): Boolean;stdcall; external EASTRIVER_API;
  //      按帧(一帧400条)读取机具所有记录
  function ReadAllRecord(hPort: THandle; lpData: Pointer; DataProcess: TDataProcess; Wait:TTimeLapse=nil): Integer;stdcall; external EASTRIVER_API;
  function BatchReadRecord(hPort: THandle; var Records: array of TICRecord): Integer; stdcall; external EASTRIVER_API;
  function BatchReadRecordAsString(hPort: THandle;PRec:PChar): Integer; stdcall; external EASTRIVER_API;
  //设置设备IP,不需要联机
  function QuickSetDeviceIP(SourceIP: PChar; SourcePort: integer; Serial: int64; DevId: integer;
  IPAddr: PChar; Maskaddr: Pchar; Gateway: PChar; IPPort: integer; DHCP: integer): Integer; stdcall; external EastRiver_API;
  //设置多门门禁密码
  function SetMDoorPwd(hPort: THandle;AID:Integer;AKind:Integer;APwd:PChar):Integer;stdcall;external Eastriver_API     //可设置16组密码
  //读取多门门禁密码
  function ReadMDoorPwd(hPort: THandle;AID:Integer;var AKind:Integer):Integer;stdcall;external Eastriver_API
  function ReadRemoteIP(hPort: THandle; var chRemoteIP:Tbuf;var RemotePort:integer;var RemoteType:Integer;var RemoteParam:TBuf;var RemoteParamLen:integer):integer;  stdcall; external 'EastRiver.dll';
  function SetRemoteIP(hPort: THandle; chRemoteIP:PChar;RemotePort:integer;RemoteType:Integer;RemoteParam:PChar;RemoteParamLen:integer):integer; stdcall; external 'EastRiver.dll';
  procedure SetUpLoadProc(vOnDeviceLogin:FunOnDeviceLogin;
                vOnRefreshDeviceState: FunOnRefreshDeviceStateBySerial;
                  vOnRecieveBatchRecord: FunOnRecieveBatchRecordBySerial);  stdcall;   external 'EastRiver.dll';
  procedure StopUpLoad(); stdcall;  external 'EastRiver.dll';
  function StartUpLoad(vListenPort:Integer):boolean; stdcall;   external 'EastRiver.dll';
  
implementation

end.
 