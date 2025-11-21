unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ExtCtrls, Mask, DateUtils, EREdit, DBCtrlsEh,
  Buttons, SyncObjs, Unit2, Math;

type
  PSubInfo=^TSubInfo;
  TSubInfo=record
    ID:Integer;
    clock_id: Integer;
    DoorName:string;
    KeepOpenTime,
    OpenTimeOut,
    DelayTime,
    WarnDelayTime,
    OpenWay,
    MultCount:Integer;
    InReader: Integer;
    InArea:string;
    OutReader:Integer;
    OutArea:string;
    OpenPwd,
    SupperPwd,
    IntimidatePwd,
    PreventPwd,
    DismantlePwd:string;
    AlwaysOpen,
    PreventReturn,
    AutoChangeMode,
    Attend:Boolean;
    AutoPrvent:Boolean;
    InOutPut:string;
    RemoteDelayTime: Integer;
    Sec1Valid: Boolean;
    in1: string;
    out1: string;
    Sec2Valid: Boolean;
    in2: string;
    out2: string;
    Sec3Valid: Boolean;
    in3: string;
    out3: string;
    Sec4Valid: Boolean;
    in4: string;
    out4: string;
    Sec5Valid: Boolean;
    in5: string;
    out5: string;
  end;
  
  TForm1 = class(TForm)
    stat1: TStatusBar;
    pnl1: TPanel;
    lv1: TListView;
    pnl2: TPanel;
    btnSearch: TButton;
    btnConnect: TButton;
    pgc1: TPageControl;
    ts1: TTabSheet;
    ts2: TTabSheet;
    btnReadTime: TButton;
    btnSetTime: TButton;
    btnInitialDevice: TButton;
    btnSetClockID: TButton;
    btnSetCommParameter: TButton;
    pnl4: TPanel;
    pgc2: TPageControl;
    ts3: TTabSheet;
    ts4: TTabSheet;
    ts5: TTabSheet;
    lbl1: TLabel;
    edt1: TEdit;
    lbl2: TLabel;
    lbl3: TLabel;
    chk1: TCheckBox;
    chk2: TCheckBox;
    chk3: TCheckBox;
    chk4: TCheckBox;
    chk5: TCheckBox;
    chk6: TCheckBox;
    chk7: TCheckBox;
    chk8: TCheckBox;
    lbl4: TLabel;
    medt1: TMaskEdit;
    lbl5: TLabel;
    medt2: TMaskEdit;
    lbl6: TLabel;
    medt3: TMaskEdit;
    lbl7: TLabel;
    medt4: TMaskEdit;
    lbl8: TLabel;
    medt5: TMaskEdit;
    lbl9: TLabel;
    medt6: TMaskEdit;
    bvl1: TBevel;
    bvl2: TBevel;
    dtp1: TDateTimePicker;
    dtp2: TDateTimePicker;
    lbl10: TLabel;
    medt7: TMaskEdit;
    lbl11: TLabel;
    medt8: TMaskEdit;
    lbl12: TLabel;
    medt9: TMaskEdit;
    lbl13: TLabel;
    medt10: TMaskEdit;
    lbl14: TLabel;
    edt2: TEdit;
    lbl15: TLabel;
    dtp3: TDateTimePicker;
    lbl16: TLabel;
    dtp4: TDateTimePicker;
    bvl3: TBevel;
    chk9: TCheckBox;
    chk10: TCheckBox;
    chk11: TCheckBox;
    chk12: TCheckBox;
    chk13: TCheckBox;
    chk14: TCheckBox;
    chk15: TCheckBox;
    chk16: TCheckBox;
    bvl4: TBevel;
    lbl17: TLabel;
    medt13: TMaskEdit;
    lbl18: TLabel;
    medt14: TMaskEdit;
    medt15: TMaskEdit;
    medt16: TMaskEdit;
    lbl19: TLabel;
    lbl20: TLabel;
    medt17: TMaskEdit;
    lbl21: TLabel;
    medt18: TMaskEdit;
    medt19: TMaskEdit;
    lbl22: TLabel;
    medt20: TMaskEdit;
    lbl23: TLabel;
    lbl24: TLabel;
    medt21: TMaskEdit;
    lbl25: TLabel;
    medt22: TMaskEdit;
    lbl26: TLabel;
    lbl27: TLabel;
    edt3: TEdit;
    lbl28: TLabel;
    edt4: TEdit;
    lbl29: TLabel;
    lbl30: TLabel;
    cbb1: TComboBox;
    lbl31: TLabel;
    dtp5: TDateTimePicker;
    lbl32: TLabel;
    edt5: TEdit;
    btnSetTimeGroupEx: TButton;
    btnSetHolidayGroupEx: TButton;
    Button3: TButton;
    Button4: TButton;
    CheckBox1: TCheckBox;
    ts6: TTabSheet;
    btnOpenDoor: TButton;
    btnCloseDoor: TButton;
    btnReadMSubDeviceCtrl: TButton;
    lbl34: TLabel;
    cbb2: TComboBox;
    lbl33: TLabel;
    grp1: TGroupBox;
    lbl35: TLabel;
    edtKeepOpenTime: TEdit;
    lbl37: TLabel;
    edtOpenTimeOut: TEdit;
    lbl38: TLabel;
    edtWarnDelayTime: TEdit;
    grp2: TGroupBox;
    lbl41: TLabel;
    lbl42: TLabel;
    edtAuxiliary1Ctrl: TEdit;
    edtAuxiliary2Ctrl: TEdit;
    grp3: TGroupBox;
    edtDoorCtrl: TEdit;
    edtAlarmCtrl: TEdit;
    lbl47: TLabel;
    edtAuxiliary3Ctrl: TEdit;
    lbl48: TLabel;
    edtAuxiliary4Ctrl: TEdit;
    btnSetMSubDeviceCtrl: TButton;
    grp4: TGroupBox;
    lbl45: TLabel;
    lbl46: TLabel;
    edtMagneticCtrl: TEdit;
    edtSwitchCtrl: TEdit;
    btnSetMDoorPassTime: TButton;
    lbl52: TLabel;
    medt23: TMaskEdit;
    lbl53: TLabel;
    medt24: TMaskEdit;
    lbl54: TLabel;
    medt11: TMaskEdit;
    lbl55: TLabel;
    medt12: TMaskEdit;
    btnSetMDoorHoliday: TButton;
    btnReadMDoorHoliday: TButton;
    btnReadMDoorPassTime: TButton;
    Button1: TButton;
    Edit1: TEdit;
    lbl57: TLabel;
    cbb3: TComboBox;
    lbl58: TLabel;
    ts7: TTabSheet;
    Button2: TButton;
    mmo1: TMemo;
    Button5: TButton;
    Button6: TButton;
    Label1: TLabel;
    edtOpenPwd: TEREdit;
    Label2: TLabel;
    edtSupperPwd: TEREdit;
    Label3: TLabel;
    edtIntimidatePwd: TEREdit;
    edtInReader: TComboBox;
    edtOutReader: TComboBox;
    chkAlwaysOpen: TCheckBox;
    Label4: TLabel;
    rgWorkMode: TRadioGroup;
    cbMagneticCtrl: TCheckBox;
    chkSwitchCtrl: TCheckBox;
    chkDoorCtrl: TCheckBox;
    chkAlarmCtrl: TCheckBox;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    mmo2: TMemo;
    lbl39: TLabel;
    edtMode: TComboBox;
    lbl40: TLabel;
    edtOpenWay: TComboBox;
    lbl56: TLabel;
    cbbMultCount: TComboBox;
    Button7: TButton;
    Button8: TButton;
    lbl36: TLabel;
    edt6: TEdit;
    lbl43: TLabel;
    edt7: TEdit;
    btn1: TButton;
    btn2: TButton;
    btnStart: TBitBtn;
    lbl44: TLabel;
    edtPort: TEdit;
    btnStop: TBitBtn;
    lvClock: TListView;
    ts8: TTabSheet;
    mmo3: TMemo;
    procedure btnSearchClick(Sender: TObject);
    procedure btnConnectClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnReadMSubDeviceCtrlClick(Sender: TObject);
    procedure btnInitialDeviceClick(Sender: TObject);
    procedure btnReadTimeClick(Sender: TObject);
    procedure btnSetTimeClick(Sender: TObject);
    procedure btnSetClockIDClick(Sender: TObject);
    procedure btnSetCommParameterClick(Sender: TObject);
    procedure btnOpenDoorClick(Sender: TObject);
    procedure btnCloseDoorClick(Sender: TObject);
    procedure btnSetTimeGroupExClick(Sender: TObject);
    procedure btnSetHolidayGroupExClick(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure chk8Click(Sender: TObject);
    procedure chk16Click(Sender: TObject);
    procedure chk1Click(Sender: TObject);
    procedure chk9Click(Sender: TObject);
    procedure btnSetMSubDeviceCtrlClick(Sender: TObject);
    procedure btnSetMDoorPassTimeClick(Sender: TObject);
    procedure btnSetMDoorHolidayClick(Sender: TObject);
    procedure btnReadMDoorHolidayClick(Sender: TObject);
    procedure btnReadMDoorPassTimeClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btnStartClick(Sender: TObject);
    procedure btnStopClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    FClockList:TList;
    hPort: THandle;
    cs:TCriticalsection;
    iclockId: Integer;
    checking: Boolean;
    function CheckHandle(hPort: THandle): Boolean;
    procedure ChangeCnnInfo(AClock_id:Integer;AIP: string; APort: Integer);
    procedure AddCnnInfo(AClock_id: Integer; AIP: string; APort: Integer);
    procedure ClosePort(pif: PCnnInfo);
  public
    { Public declarations }
  end;
  procedure OnRefreshDeviceStateBySerial(Dev_id: integer;Serial:TSerialType; State: integer; RecordCount: integer); stdcall;

  procedure OnDeviceLogin(Dev_id:integer;Serial:TSerialType;ip:PChar;port:integer; var Heartbeat:integer);  stdcall;

  procedure OnRecieveBatchRecordBySerial(Dev_id: integer;Serial:TSerialType;index:integer;RecordCount:integer;
    Records: DeviceDataArray;var bReturnOK:boolean);stdcall;

var
  Form1: TForm1;

implementation

uses Unit3;

{$R *.dfm}

function TForm1.CheckHandle(hPort: THandle): Boolean;
begin
  Result := (hPort <> 0) and (hPort <> INVALID_HANDLE_VALUE);
end;

procedure TForm1.btnSearchClick(Sender: TObject);
var
  PCLK:PMDoorInfo;
  i,j,lCount,Len,lStep:Integer;
  Dev_List: TDeviceList;
  ip:string;
  dev_id: Integer;
  size1,size2: Integer;
begin
  if CheckHandle(hPort) then
  begin
    UnCallClock(hPort);
    ClosePortHandle(hPort);
    hPort := 0;
    stat1.Panels[0].Text := '脱机成功！';
  end;
  lv1.Items.Clear;
  if SearchLanDevice(Dev_list,lCount) then
  begin
    if lCount>0 then
      lStep:=100 div lCount
    else
      lStep:=0;
    for j :=0 to lCount - 1 do
    begin
      if (Dev_List[j].DevType.DevModel = 1000) or (Dev_List[j].DevType.DevModel = 2000) or (Dev_List[j].DevType.DevModel = 4000) then
      begin
        ip:=Format('%s',[StrPas(Dev_list[j].pConnParam.IPAddress)]);
        dev_id := Dev_list[j].pConnParam.dev_id;
        if lv1.FindCaption(0, IntToStr(dev_id), False, True, False)=nil then
        begin
          New(PCLK);
          PCLK.Clock_id:=StrToIntDef('$' + intToStr(Dev_list[j].pConnParam.dev_id),0);
          PCLK.IpAddr:=ip;
          PCLK.CommStyle := Dev_list[j].pConnParam.CommType;
          PCLK.IPPort :=Dev_list[j].pConnParam.IPPort;
          PCLK.SerialNo:=string(Dev_List[j].DevType.Serial_Num);
          PCLK.model:=Dev_List[j].DevType.DevModel;
          if PCLK.model = 1000 then
            PCLK.DoorType := 1
          else if PCLK.model = 2000 then
            PCLK.DoorType := 2
          else if PCLK.model = 4000 then
            PCLK.DoorType := 0;
          lv1.AddItem(Format('%.2x',[PCLK.Clock_id]), lv1);
          lv1.Items[lv1.Items.Count - 1].SubItems.Add(PCLK.IpAddr);
          lv1.Items[lv1.Items.Count - 1].SubItems.Add(IntToStr(PCLK.IPPort));
          lv1.Items[lv1.Items.Count - 1].SubItems.Add(string(Dev_List[j].DevType.Serial_Num));
          lv1.Items[lv1.Items.Count - 1].SubItems.Add(string(Dev_List[j].DevType.MAC));
          lv1.Items[lv1.Items.Count - 1].SubItems.Add(IntToStr(PCLK.model));
          lv1.Items[lv1.Items.Count - 1].Data := PCLK;
        end;
      end;
      Application.ProcessMessages;
      Sleep(100);
    end;
  end;
end;

procedure TForm1.btnConnectClick(Sender: TObject);
var
  i: Integer;
  bFlag: Boolean;
  lTime: Double;
  IPAddress: string;
  Port, clockId: Integer;
begin
  if CheckHandle(hPort) then
  begin
    UnCallClock(hPort);
    ClosePortHandle(hPort);
    hPort := 0;
    btnConnect.Caption := '联机';
    stat1.Panels[0].Text := '脱机成功！';
  end else
  begin
    if (lv1.Items.Count > 0) then
    begin
      bFlag := False;
      for i := 0 to lv1.Items.Count - 1 do
      begin
        if lv1.Items[i].Checked then
        begin
          bFlag := True;
          clockId := StrToInt(lv1.Items[i].Caption);
          IPAddress := lv1.Items[i].SubItems[0];
          Port := StrToIntDef(lv1.Items[i].SubItems[1], 0);
          Break;
        end;
      end;

      if bFlag then
      begin
        hPort := OpenClientSocket(PCHar(IPAddress), Port);
        if not CheckHandle(hPort) then
        begin
          hPort := 0;
          btnConnect.Caption := '联机';
          stat1.Panels[0].Text := '联机失败！';
          Windows.Beep(2500, 1000);
          Exit;
        end;
        if CallClock(hPort, clockId) then
        begin
          btnConnect.Caption := '脱机';
          stat1.Panels[0].Text := '联机成功！';
          Windows.Beep(2500, 100);
          iclockId := clockId;
        end
        else
        begin
          hPort := 0;
          btnConnect.Caption := '联机';
          stat1.Panels[0].Text := '联机失败！';
          Windows.Beep(2500, 1000);
        end;
      end;
    end;
  end;
end;

procedure TForm1.FormCreate(Sender: TObject);
var
  i: Integer;
begin
  cs:=TCriticalSection.Create;
  FClockList:=TList.Create;
  hPort := 0;
  pgc1.ActivePageIndex := 0;
  pgc2.ActivePageIndex := 0;
  dtp1.Date := Now;
  dtp2.Date := Now + 300;
  dtp3.Date := Now;
  dtp4.Date := Now + 300;
  dtp5.Date := Now + 300;
  for i := 1 to 7 do
  begin
    TCheckBox(FindComponent('chk' + IntToStr(i))).Checked := True;
  end;
  for i := 9 to 15 do
  begin
    TCheckBox(FindComponent('chk' + IntToStr(i))).Checked := True;
  end;
end;

procedure TForm1.btnReadMSubDeviceCtrlClick(Sender: TObject);
var
  ret: Integer;
  AID,akind: Integer;
  InReadNo, OutReadNo, WarnCtrl: Integer;
  MDoorTimeCtrl: TMDoorTimeCtrl;
  OutCtrl: TMDoorOutputDotCtrl;
  InCtrl: TMDoorInputDotCtrl;
  ReaderMode: TMDoorReaderMode;
  WorkCtrl:Integer;
begin
  if hPort <> 0 then
  begin
    AID := cbb2.ItemIndex;
    InReadNo := 0;
    OutReadNo := 0;
    WarnCtrl := 0;
    FillChar(MDoorTimeCtrl, SizeOf(TMDoorTimeCtrl), 0);
    FillChar(OutCtrl, SizeOf(TMDoorOutputDotCtrl), 0);
    FillChar(InCtrl, SizeOf(TMDoorInputDotCtrl), 0);
    ret := ReadMSubDeviceCtrl(hPort, AID, InReadNo, OutReadNo, WarnCtrl, MDoorTimeCtrl, OutCtrl, InCtrl);
    if ret = 0 then
    begin
      edtKeepOpenTime.Text := IntToStr(MDoorTimeCtrl.KeepOpenTime);
      edtOpenTimeOut.Text := IntToStr(MDoorTimeCtrl.OpenTimeOut);
      //edt8.Text := IntToStr(MDoorTimeCtrl.DelayTime);
      edtWarnDelayTime.Text := IntToStr(MDoorTimeCtrl.WarnDelayTime);

      if (InCtrl.MagneticCtrl >= 128) and (InCtrl.MagneticCtrl < 240) then
        edtMagneticCtrl.Text := IntToStr(InCtrl.MagneticCtrl xor 128)
      else
        edtMagneticCtrl.Text := IntToStr(InCtrl.MagneticCtrl);//IntToStr(InCtrl.MagneticCtrl xor 128);
      if (InCtrl.SwitchCtrl >= 128) and (InCtrl.SwitchCtrl < 240) then
        edtSwitchCtrl.Text := IntToStr(InCtrl.SwitchCtrl xor 128)
      else
        edtSwitchCtrl.Text := IntToStr(InCtrl.SwitchCtrl);//IntToStr(InCtrl.SwitchCtrl xor 128);
      if (InCtrl.Auxiliary1Ctrl >= 128) and (InCtrl.Auxiliary1Ctrl < 240) then
        edtAuxiliary1Ctrl.Text := IntToStr(InCtrl.Auxiliary1Ctrl xor 128)
      else
        edtAuxiliary1Ctrl.Text := IntToStr(InCtrl.Auxiliary1Ctrl);//IntToStr(InCtrl.Auxiliary1Ctrl xor 128);
      if (InCtrl.Auxiliary2Ctrl >= 128) and (InCtrl.Auxiliary2Ctrl < 240) then
        edtAuxiliary2Ctrl.Text := IntToStr(InCtrl.Auxiliary2Ctrl xor 128)
      else
        edtAuxiliary2Ctrl.Text := IntToStr(InCtrl.Auxiliary2Ctrl);//IntToStr(InCtrl.Auxiliary2Ctrl xor 128);
      if (InCtrl.Auxiliary3Ctrl >= 128) and (InCtrl.Auxiliary3Ctrl < 240) then
        edtAuxiliary3Ctrl.Text := IntToStr(InCtrl.Auxiliary3Ctrl xor 128)
      else
        edtAuxiliary3Ctrl.Text := IntToStr(InCtrl.Auxiliary3Ctrl);//IntToStr(InCtrl.Auxiliary3Ctrl xor 128);
      if (InCtrl.Auxiliary4Ctrl >= 128) and (InCtrl.Auxiliary4Ctrl < 240) then
        edtAuxiliary4Ctrl.Text := IntToStr(InCtrl.Auxiliary4Ctrl xor 128)
      else
        edtAuxiliary4Ctrl.Text := IntToStr(InCtrl.Auxiliary4Ctrl);//IntToStr(InCtrl.Auxiliary4Ctrl xor 128);

      if (OutCtrl.DoorCtrl >= 128) and (OutCtrl.DoorCtrl < 240) then
        edtDoorCtrl.Text := IntToStr(OutCtrl.DoorCtrl xor 128)
      else
        edtDoorCtrl.Text := IntToStr(OutCtrl.DoorCtrl);
      if (OutCtrl.AlarmCtrl >= 128) and (OutCtrl.AlarmCtrl < 240) then
        edtAlarmCtrl.Text := IntToStr(OutCtrl.AlarmCtrl xor 128)
      else
        edtAlarmCtrl.Text := IntToStr(OutCtrl.AlarmCtrl);

      edtInReader.Text := IntToStr(InReadNo);
      edtOutReader.Text := IntToStr(OutReadNo);
      ReadMDoorReaderCtrl(hPort, AID, ReaderMode, WorkCtrl);
      edtOpenWay.Text := IntToStr((ReaderMode.OpenWay and 15));
      edtMode.Text := IntToStr((ReaderMode.OpenWay shr 4) and 7);
      self.stat1.Panels[0].Text := '获取设备门信息成功！';
    end else
    begin
      self.stat1.Panels[0].Text := '获取设备门信息失败！';
    end;
  end else
  begin
    self.stat1.Panels[0].Text := '请先联机！';
  end;
end;

procedure TForm1.btnInitialDeviceClick(Sender: TObject);
var
  bflag: Boolean;
begin
  if hPort <> 0 then
  begin
    if Application.MessageBox(PChar('确定要初始化选中的设备吗？'), PChar('询问'), MB_YESNO + MB_ICONQUESTION) = mrYes then
    begin
      bflag := False;
      if ClearAllReadCard(hPort) then
      begin
        if ClearAllCard(hPort) = 0 then
        begin
          if InitDevice(hPort, 61) = 0 then
          begin
            bflag := True;
          end;
        end;
      end;
      if bflag then
        self.stat1.Panels[0].Text := '初始化成功！'
      else
        self.stat1.Panels[0].Text := '初始化失败！';
    end;
  end else
  begin
    self.stat1.Panels[0].Text := '请先联机！';
  end;
end;

procedure TForm1.btnReadTimeClick(Sender: TObject);
var
  t: double;
begin
  if hPort <> 0 then
  begin
    if ReadClockTime(hPort, t) then
    begin
      self.stat1.Panels[0].Text := FormatDateTime('yyyy-MM-dd hh:nn:ss', t);
      Windows.Beep(2500, 100);
    end else
    begin
      self.stat1.Panels[0].Text := '读取时间失败！';
      Windows.Beep(2500, 1000);
    end;
  end else
  begin
    self.stat1.Panels[0].Text := '请先联机!';
  end;
end;

procedure TForm1.btnSetTimeClick(Sender: TObject);
begin
  if hPort <> 0 then
  begin
    if SetClockTime(hPort, Now) then
    begin
      self.stat1.Panels[0].Text := '设置时间成功！';
      Windows.Beep(2500, 100);
    end else
    begin
      self.stat1.Panels[0].Text := '设置时间失败！';
      Windows.Beep(2500, 1000);
    end;
  end else
  begin
    self.stat1.Panels[0].Text := '请先联机！';
  end;
end;

procedure TForm1.btnSetClockIDClick(Sender: TObject);
var
  sclockid: string;
begin
  if hPort <> 0 then
  begin
    if InputQuery('更改机号', '请输入新的机号', sclockid) then
    begin
      if sclockid <> '' then
      begin
        if SetClockID(hPort, StrToInt(sclockid)) then
          self.stat1.Panels[0].Text := '设置时间成功！'
        else
          self.stat1.Panels[0].Text := '设置时间失败！';
      end else
      begin
        ShowMessage('机号不能为空！');
      end;
    end;
  end else
  begin
    self.stat1.Panels[0].Text := '请先联机！';
  end;
end;

procedure TForm1.btnSetCommParameterClick(Sender: TObject);
var
  IPAddress, Mask, Gateway2: PChar;
  Gateway: string;
  Port, i, j: Integer;
  strlist: TStringList;
  SourceIP: PChar;
  SourcePort: integer;
  Serial: int64;
  DevId: integer;
  IPAddr: PChar;
  Maskaddr: Pchar;
  IPPort: integer;
  DHCP: integer;
begin
//  if hPort <> 0 then
//  begin
    try
      if not Assigned(Form3) then
        Form3 := TForm3.Create(Application);
      for i := 0 to lv1.Items.Count - 1 do
      begin
        if lv1.Items[i].Checked then
        begin
          Form3.edtIPAddress.Text := lv1.Items[i].SubItems[0];
          Form3.edtMask.Text := '255.255.255.0';
          strlist := TStringList.Create;
          strlist.Delimiter := '.';
          strlist.DelimitedText := Form3.edtIPAddress.Text;
          for j := 0 to strlist.Count - 2 do
          begin
            Gateway := Gateway + PChar('.' + strlist[j]);
          end;
          Delete(Gateway, 1, 1);
          Form3.edtGateway.Text := Gateway + '.254';
          Form3.edtPort.Text := lv1.Items[i].SubItems[1];
          Break;
        end;
      end;

      if Form3.ShowModal = mrok then
      begin
        for i := 0 to lv1.Items.Count - 1 do
        begin
          if lv1.Items[i].Checked then
          begin
            SourceIP := PChar(lv1.Items[i].SubItems[0]);
            SourcePort := StrToInt(lv1.Items[i].SubItems[1]);
            Serial := StrToInt64(lv1.Items[i].SubItems[2]);
            DevId := StrToInt(lv1.Items[i].Caption);;
            IPAddr := PChar(Form3.edtIPAddress.Text);
            Maskaddr := PChar(Form3.edtMask.Text);
            Gateway2 := PChar(Form3.edtGateway.Text);
            IPPort := StrToInt(Form3.edtPort.Text);
            DHCP := 0;
            if QuickSetDeviceIP(SourceIP, SourcePort, Serial, DevId, IPAddr, Maskaddr, Gateway2, IPPort, DHCP) = 0 then
              self.stat1.Panels[0].Text := '设置通讯参数成功！'
            else
              self.stat1.Panels[0].Text := '设置通讯参数失败！';
            Break;
          end
        end;
      end;
    finally
      FreeAndNil(form3);
    end;
//  end else
//  begin
//    self.stat1.Panels[0].Text := '请先联机！';
//  end;
end;

procedure TForm1.btnOpenDoorClick(Sender: TObject);
begin
  if hPort <> 0 then
  begin
    if cbb2.ItemIndex = -1 then
    begin
      ShowMessage('请选择门编号');
      Exit;
    end;
    if SetDoorAction(hPort, cbb2.ItemIndex, 1) = 0 then
      self.stat1.Panels[0].Text := Format('开门%d成功！', [cbb2.ItemIndex])
    else
      self.stat1.Panels[0].Text := Format('开门%d失败！', [cbb2.ItemIndex]);
  end else
  begin
    self.stat1.Panels[0].Text := '请先联机！';
  end;
end;

procedure TForm1.btnCloseDoorClick(Sender: TObject);
begin
  if hPort <> 0 then
  begin
    if cbb2.ItemIndex = -1 then
    begin
      ShowMessage('请选择门编号');
      Exit;
    end;
    if SetDoorAction(hPort, cbb2.ItemIndex, 0) = 0 then
      self.stat1.Panels[0].Text := Format('关门%d成功！', [cbb2.ItemIndex])
    else
      self.stat1.Panels[0].Text := Format('关门%d失败！', [cbb2.ItemIndex]);
  end else
  begin
    self.stat1.Panels[0].Text := '请先联机！';
  end;
end;

function BinToInt(value: string): LongInt;
var
  i, size: Integer;
begin
  Result := 0;
  size := Length(value);
  for i := size downto 1 do
  begin
    if Copy(value, i, 1) = '1' then
    begin
      Result := Result + (1 shl (size - i));
    end;
  end;
end;

function IntToBin(Value: Integer; Count: Integer=32): string;
var
  iTemp: Integer;
begin
  Result := '';
  while Count>0 do
  begin
    iTemp := Value shr (Count-1) and 1;
    case iTemp of
      1: Result := Result+'1';
      0: Result := Result+'0';
    end;
    Dec(Count);
  end;
end;

procedure TForm1.btnSetTimeGroupExClick(Sender: TObject);
var
  ID, i: Integer;
  BeginDate, EndDate: PChar;
  WeekCtrl: Byte;
  pt1: PChar;
  pt2: PChar;
  pt3: PChar;
  et1: PChar;
  et2: PChar;
  et3: PChar;
  bin: string;
begin
  if hPort <> 0 then
  begin
    ID := StrToInt(edt2.Text);
    BeginDate := PChar(formatdatetime('yyyymmdd', dtp3.Date));
    EndDate := PChar(formatdatetime('yyyymmdd', dtp4.Date));
    bin := '0000000';
    for i := 15 downto 9 do
    begin
      if TCheckBox(FindComponent('chk' + IntToStr(i))).Checked then
        bin[16 - i] := '1';
    end;                    
    WeekCtrl := BinToInt(bin);
    pt1 := PChar(StringReplace(medt13.Text, ':', '', []));
    pt2 := PChar(StringReplace(medt15.Text, ':', '', []));
    pt3 := PChar(StringReplace(medt17.Text, ':', '', []));
    et1 := PChar(StringReplace(medt14.Text, ':', '', []));
    et2 := PChar(StringReplace(medt16.Text, ':', '', []));
    et3 := PChar(StringReplace(medt18.Text, ':', '', []));
    if SetTimeGroupEx(hPort, ID, BeginDate, EndDate, WeekCtrl, pt1, pt2, pt3, et1, et2, et3) = 0 then
      self.stat1.Panels[0].Text := '设置时间组成功！'
    else
      self.stat1.Panels[0].Text := '设置时间组失败！';
  end else
  begin
    self.stat1.Panels[0].Text := '请先联机！';
  end;
end;

procedure TForm1.btnSetHolidayGroupExClick(Sender: TObject);
var
  ReaderCtrl: Byte;
  ID, i: Integer;
  BeginDate, EndDate: PChar;
  WeekCtrl: Byte;
  pt1: PChar;
  pt2: PChar;
  pt3: PChar;
  et1: PChar;
  et2: PChar;
  et3: PChar;
  bin: string;
begin
  if hPort <> 0 then
  begin
    if cbb2.ItemIndex = - 1 then
    begin
      ShowMessage('请到门操作页面选择门编号');
      Exit;
    end;
    ReaderCtrl := cbb2.ItemIndex;
    ID := StrToInt(edt1.Text);
    BeginDate := PChar(formatdatetime('yyyymmdd', dtp1.Date));
    EndDate := PChar(formatdatetime('yyyymmdd', dtp2.Date));
    //ReaderCtrl := 0;
    bin := '0000000';
    for i := 7 downto 1 do
    begin
      if TCheckBox(FindComponent('chk' + IntToStr(i))).Checked then
        bin[8 - i] := '1';
    end; 
    WeekCtrl := BinToInt(bin);
    pt1 := PChar(StringReplace(medt1.Text, ':', '', []));
    pt2 := PChar(StringReplace(medt3.Text, ':', '', []));
    pt3 := PChar(StringReplace(medt5.Text, ':', '', []));
    et1 := PChar(StringReplace(medt2.Text, ':', '', []));
    et2 := PChar(StringReplace(medt4.Text, ':', '', []));
    et3 := PChar(StringReplace(medt6.Text, ':', '', []));
    if SetHolidayGroupEx(hPort, ReaderCtrl, ID, BeginDate, EndDate, WeekCtrl, pt1, pt2, pt3, et1, et2, et3) = 0 then
      self.stat1.Panels[0].Text := '设置节假日成功！'
    else
      self.stat1.Panels[0].Text := '设置节假日失败！';
  end else
  begin
    self.stat1.Panels[0].Text := '请先联机！';
  end;
end;

procedure TForm1.Button3Click(Sender: TObject);
var
  p: Integer;
  CardNo: PChar;
  Group: Integer;
  Password: PChar;
  expirationDate: PChar;
  HolidayPassed: Integer;
  ReaderCtrl: Byte;
  TimeGroupCtrl: Integer;
begin
  if hPort <> 0 then
  begin
    if cbb3.ItemIndex = - 1 then
    begin
      ShowMessage('请到门操作页面选择门编号');
      Exit;
    end;
    CardNo := PChar(edt3.Text);
    p := Pos('|', cbb1.Text);
    Password := PChar(edt4.Text);
    Group := StrToInt(Copy(cbb1.Text, p + 1, Length(cbb1.Text) - p));
    expirationDate := PChar(FormatDateTime('yyyymmddhhnnss', dtp5.DateTime));
    if CheckBox1.Checked then
      HolidayPassed := 1
    else
      HolidayPassed := 0;
    ReaderCtrl := cbb3.ItemIndex + 1;
    TimeGroupCtrl := Trunc(Power(2, StrToInt(edt5.Text)));
    if AddCardHolder(hPort, CardNo, Group, Password, expirationDate, HolidayPassed, ReaderCtrl, TimeGroupCtrl) = 0 then
      self.stat1.Panels[0].Text := '下载权限成功！'
    else
      self.stat1.Panels[0].Text := '下载权限失败！';
  end else
  begin
    self.stat1.Panels[0].Text := '请先联机！';
  end;
end;

procedure TForm1.Button4Click(Sender: TObject);
var
  CardNo: PChar;
begin
  if hPort <> 0 then
  begin
    CardNo := PChar(edt3.Text);
    if DeleteCardHolder(hPort, CardNo) = 0 then
      self.stat1.Panels[0].Text := '删除权限成功！'
    else
      self.stat1.Panels[0].Text := '删除权限失败！';
  end else
  begin
    self.stat1.Panels[0].Text := '请先联机！';
  end;
end;

procedure TForm1.chk8Click(Sender: TObject);
var
  i: Integer;
begin
  if checking then Exit;
  if chk8.Checked then
  begin
    for i := 1 to 7 do
    begin
      TCheckBox(FindComponent('chk' + IntToStr(i))).Checked := True;
    end;
  end else
  begin
    for i := 1 to 7 do
    begin
      TCheckBox(FindComponent('chk' + IntToStr(i))).Checked := False;
    end;
  end;
end;

procedure TForm1.chk16Click(Sender: TObject);
var
  i: Integer;
begin
  if checking then Exit;
  if chk16.Checked then
  begin
    for i := 9 to 15 do
    begin
      TCheckBox(FindComponent('chk' + IntToStr(i))).Checked := True;
    end;
  end else
  begin
    for i := 9 to 15 do
    begin
      TCheckBox(FindComponent('chk' + IntToStr(i))).Checked := False;
    end;
  end;
end;

procedure TForm1.chk1Click(Sender: TObject);
var
  i, j: Integer;
begin
  checking := True;
  if TCheckBox(sender).Checked then
  begin
    j := 0;
    for i := 1 to 7 do
    begin
      if TCheckBox(FindComponent('chk' + IntToStr(i))).Checked then
        Inc(j);
    end;
    if j = 7 then
      chk8.Checked := True
  end else
  begin
    chk8.Checked := False;
  end;
  checking := False;
end;

procedure TForm1.chk9Click(Sender: TObject);
var
  i, j: Integer;
begin
  checking := True;
  if TCheckBox(sender).Checked then
  begin
    j := 0;
    for i := 9 to 15 do
    begin
      if TCheckBox(FindComponent('chk' + IntToStr(i))).Checked then
        Inc(j);
    end;
    if j = 7 then
      chk16.Checked := True
  end else
  begin
    chk16.Checked := False;
  end;
  checking := False;
end;

procedure TForm1.btnSetMSubDeviceCtrlClick(Sender: TObject);
var
  ret, AID,lAddr: Integer;
  InReadNo, OutReadNo, WarnCtrl: Integer;
  MDoorTimeCtrl: TMDoorTimeCtrl;
  OutCtrl: TMDoorOutputDotCtrl;
  InCtrl: TMDoorInputDotCtrl;
  ReaderMode:TMDoorReaderMode;
  psub: TSubInfo;
  PwdCtrl,WorkCtrl: Integer;
begin
  if hPort <> 0 then
  begin
    FillChar(psub, SizeOf(TSubInfo), 0);
    psub.ID := cbb2.ItemIndex;
    pSub.KeepOpenTime:=StrToInt(edtKeepOpenTime.Text);
    pSub.OpenTimeOut :=StrToInt(edtOpenTimeOut.Text);
    pSub.WarnDelayTime:=StrToInt(edtWarnDelayTime.Text);
    {工作模式：
    1-常规模式
    2-电锁常闭
    3-电锁常开
    4-APB模式
    开门方式：
    1刷卡开门
    2刷卡或密码
    3密码开门
    4刷卡+个人密码
    5多卡开门
    6指定卡组
    7刷卡+开门密码}
    if edtMode.ItemIndex>=0 then
    begin
      pSub.OpenWay :=edtMode.ItemIndex + 1;
    end
    else begin
      pSub.OpenWay:=1;
    end;
    if edtOpenWay.ItemIndex>=0 then
    begin
      pSub.OpenWay :=(pSub.OpenWay shl 4) or (edtOpenWay.ItemIndex + 1);
    end else
    begin
      pSub.OpenWay:=(pSub.OpenWay shl 4) or 1;
    end;
    pSub.MultCount :=StrToIntDef(cbbMultCount.Text,0);
    pSub.InReader:=StrToInt(edtInReader.Text);
    pSub.OutReader:=StrToInt(edtOutReader.Text);
    //pSub.OutArea :=edtOutArea.KeyItems[edtOutArea.ItemIndex];
    pSub.OpenPwd :=edtOpenPwd.Text;
    pSub.SupperPwd :=edtSupperPwd.Text;
    pSub.IntimidatePwd :=edtIntimidatePwd.Text;

    pSub.AlwaysOpen :=chkAlwaysOpen.Checked;
    //pSub.PreventReturn :=cbPreventReturn .Checked;
    //pSub.AutoChangeMode:=rgWorkMode.ItemIndex=1;//cbAutoChangeMode.ItemIndex=1;
    //pSub.Attend :=cbAttend .Checked;

    if ReadMSubDeviceCtrl(hPort, psub.ID,InReadNo,OutReadNo,WarnCtrl,MDoorTimeCtrl,OutCtrl,InCtrl)<>0 then
    begin
      Exit;
    end;
    MDoorTimeCtrl.KeepOpenTime:=psub.KeepOpenTime;
    MDoorTimeCtrl.OpenTimeOut:=psub.OpenTimeOut;
    MDoorTimeCtrl.WarnDelayTime:=psub.WarnDelayTime;
    if chkAlwaysOpen.Checked then
      WarnCtrl:= WarnCtrl or (1 shl 7)
    else
      WarnCtrl:= WarnCtrl and (not (1 shl 7));

    //门磁输入0-3,开门按钮4-7，无输入控制：15
    if cbMagneticCtrl.Checked then
    begin
      InCtrl.MagneticCtrl:=128;
      lAddr:=StrToInt(edtMagneticCtrl.Text);
      InCtrl.MagneticCtrl:=InCtrl.MagneticCtrl or lAddr;
    end else
    begin
      InCtrl.MagneticCtrl:=InCtrl.MagneticCtrl;
    end;


    //门磁输入0-3,开门按钮4-7，无输入控制：15
    if chkSwitchCtrl.Checked then
    begin
      InCtrl.SwitchCtrl:=128;
      lAddr:=StrToInt(edtSwitchCtrl.Text);
      InCtrl.SwitchCtrl:=InCtrl.SwitchCtrl or lAddr; 
    end else
    begin
      InCtrl.SwitchCtrl:=InCtrl.SwitchCtrl;
    end;  

    //电锁输出:0-3,辅助输出:4-7，无输出控制:15
    if chkDoorCtrl.Checked then
    begin
      OutCtrl.DoorCtrl:=128;
      lAddr:=StrToInt(edtDoorCtrl.Text);
      OutCtrl.DoorCtrl:=OutCtrl.DoorCtrl or lAddr;
    end else
    begin
      OutCtrl.DoorCtrl:=OutCtrl.DoorCtrl;
    end;
    
    //电锁输出:0-3,辅助输出:4-7，无输出控制:15
    if chkAlarmCtrl.Checked then
    begin
      OutCtrl.AlarmCtrl:=128;
      lAddr:=StrToInt(edtAlarmCtrl.Text);
      OutCtrl.AlarmCtrl:=OutCtrl.AlarmCtrl or lAddr;
    end else
    begin
      OutCtrl.AlarmCtrl:=OutCtrl.AlarmCtrl;
    end;

    if SetMSubDeviceCtrl(hPort,psub.ID,psub.InReader,psub.OutReader,WarnCtrl,MDoorTimeCtrl,OutCtrl,InCtrl)<>0 then
    begin 
      Exit;
    end;

    //开门密码
    if SetMDoorPwd(hPort,5*psub.ID,5,PChar(edtOpenPwd.Text))<>0 then
    begin
      Exit;
    end;

    //超级密码
    if SetMDoorPwd(hPort,5*psub.ID+1,1,PChar(edtSupperPwd.Text))<>0 then
    begin
      Exit;
    end;
    //胁迫密码
    if SetMDoorPwd(hPort,5*psub.ID+2,2,PChar(edtIntimidatePwd.Text))<>0 then
    begin
      Exit;
    end;
    PwdCtrl := 31 shl (5 * psub.ID);
    if pSub.InReader<>255 then
    begin
      if ReadMDoorReaderCtrl(hPort,pSub.InReader,ReaderMode,WorkCtrl)<>0 then
      begin
        Exit;
      end;
      ReaderMode.OpenWay:=(ReaderMode.OpenWay and 128) or pSub.OpenWay;
      ReaderMode.MultCount:=pSub.MultCount;
      ReaderMode.PwdCtrl:=PwdCtrl;    //255
      if rgWorkMode.ItemIndex=1 then
        WorkCtrl:= WorkCtrl or (1 shl 7)
      else
        WorkCtrl:= WorkCtrl and (not (1 shl 7));
      if SetMDoorReaderCtrl(hPort,pSub.InReader,ReaderMode,WorkCtrl)<>0 then
      begin
        //ShowCtrlHint(Self,MDoorSubFail);
        Exit;
      end;
    end;
    if pSub.OutReader<>255 then
    begin
      if ReadMDoorReaderCtrl(hPort,pSub.OutReader,ReaderMode,WorkCtrl)<>0 then
      begin
        //ShowCtrlHint(Self,MDoorSubFail);
        Exit;
      end;
      ReaderMode.OpenWay:=(ReaderMode.OpenWay and 128) or pSub.OpenWay;
      ReaderMode.MultCount:=pSub.MultCount;
      ReaderMode.PwdCtrl:=PwdCtrl;   //255
      if rgWorkMode.ItemIndex=1 then
        WorkCtrl:= WorkCtrl or (1 shl 7)
      else
        WorkCtrl:= WorkCtrl and (not (1 shl 7));
      if SetMDoorReaderCtrl(hPort,pSub.OutReader,ReaderMode,WorkCtrl)<>0 then
      begin
        //ShowCtrlHint(Self,MDoorSubFail);
        Exit;
      end;
    end;
    self.stat1.Panels[0].Text := '设置设备门信息成功！';

    //ShowCtrlHint(Self,MDoorSubSuc);        
  end else
  begin
    self.stat1.Panels[0].Text := '请先联机！';
  end;
end;

procedure TForm1.btnSetMDoorPassTimeClick(Sender: TObject);
var
  i: Integer;
  AID: Byte;
  BeginDate,EndDate: TMdoorYMD;
  WeekCtrl: Byte;
  MDoorHMSPeriods: TMDoorHMSPeriods;
  bin: string;
begin
  if hPort <> 0 then
  begin
    {if cbb2.ItemIndex = - 1 then
    begin
      ShowMessage('请到门操作页面选择门编号');
      Exit;
    end;}
    AID := StrToInt(edt2.Text);
    BeginDate.Year := YearOf(dtp3.Date);
    BeginDate.Month := MonthOf(dtp3.Date);
    BeginDate.Day := DayOf(dtp3.Date);
    EndDate.Year := YearOf(dtp4.Date);
    EndDate.Month := MonthOf(dtp4.Date);
    EndDate.Day := DayOf(dtp4.Date);
    bin := '0000000';
    for i := 15 downto 9 do
    begin
      if TCheckBox(FindComponent('chk' + IntToStr(i))).Checked then
        bin[16 - i] := '1';
    end;                    
    WeekCtrl := BinToInt(bin);
    FillChar(MDoorHMSPeriods, SizeOf(TMDoorHMSPeriods), 0);
    for i := 0 to 5 do
    begin
      MDoorHMSPeriods[i].BeginHMS.Hour := StrToInt(Copy(TMaskEdit(FindComponent('medt' + IntToStr(2 * i + 13))).Text, 1, 2));
      MDoorHMSPeriods[i].BeginHMS.Minute := StrToInt(Copy(TMaskEdit(FindComponent('medt' + IntToStr(2 * i + 13))).Text, 4, 2));
      MDoorHMSPeriods[i].EndHMS.Hour := StrToInt(Copy(TMaskEdit(FindComponent('medt' + IntToStr(2 * i + 14))).Text, 1, 2));
      MDoorHMSPeriods[i].EndHMS.Minute := StrToInt(Copy(TMaskEdit(FindComponent('medt' + IntToStr(2 * i + 14))).Text, 4, 2));
    end;
    if SetMDoorPassTime(hPort, AID, BeginDate, EndDate, WeekCtrl, MDoorHMSPeriods) = 0 then
      self.stat1.Panels[0].Text := '设置时间组成功！'
    else
      self.stat1.Panels[0].Text := '设置时间组失败！';
  end else
  begin
    self.stat1.Panels[0].Text := '请先联机！';
  end;
end;

procedure TForm1.btnSetMDoorHolidayClick(Sender: TObject);
var
  i: Integer;
  AID: Byte;
  BeginDate,EndDate: TMdoorYMD;
  WeekCtrl: Byte;
  ReaderCtrl: Byte;
  MDoorHMSPeriods: TMDoorHMSPeriods;
  bin: string;
begin
  if hPort <> 0 then
  begin
    if cbb2.ItemIndex = - 1 then
    begin
      ShowMessage('请到门操作页面选择门编号');
      Exit;
    end;
    AID := StrToInt(edt1.Text);
    BeginDate.Year := YearOf(dtp1.Date);
    BeginDate.Month := MonthOf(dtp1.Date);
    BeginDate.Day := DayOf(dtp1.Date);
    EndDate.Year := YearOf(dtp2.Date);
    EndDate.Month := MonthOf(dtp2.Date);
    EndDate.Day := DayOf(dtp2.Date);
    ReaderCtrl := cbb2.ItemIndex;
    bin := '0000000';
    for i := 7 downto 1 do
    begin
      if TCheckBox(FindComponent('chk' + IntToStr(i))).Checked then
        bin[8 - i] := '1';
    end; 
    WeekCtrl := BinToInt(bin);
    for i := 0 to 5 do
    begin
      MDoorHMSPeriods[i].BeginHMS.Hour := StrToInt(Copy(TMaskEdit(FindComponent('medt' + IntToStr(2 * i + 1))).Text, 1, 2));
      MDoorHMSPeriods[i].BeginHMS.Minute := StrToInt(Copy(TMaskEdit(FindComponent('medt' + IntToStr(2 * i + 1))).Text, 4, 2));
      MDoorHMSPeriods[i].EndHMS.Hour := StrToInt(Copy(TMaskEdit(FindComponent('medt' + IntToStr(2 * i + 2))).Text, 1, 2));
      MDoorHMSPeriods[i].EndHMS.Minute := StrToInt(Copy(TMaskEdit(FindComponent('medt' + IntToStr(2 * i + 2))).Text, 4, 2));
    end;
    if SetMDoorHoliday(hPort, AID, BeginDate, EndDate, WeekCtrl, ReaderCtrl, MDoorHMSPeriods) = 0 then
      self.stat1.Panels[0].Text := '设置节假日成功！'
    else
      self.stat1.Panels[0].Text := '设置节假日失败！';
  end else
  begin
    self.stat1.Panels[0].Text := '请先联机！';
  end;
end;

procedure TForm1.btnReadMDoorHolidayClick(Sender: TObject);
var
  i: Integer;
  AID: Byte;
  BeginDate,EndDate: TMdoorYMD;
  WeekCtrl: Byte;
  ReaderCtrl: Byte;
  MDoorHMSPeriods: TMDoorHMSPeriods;
  bin, buf: string;
begin
  if hPort <> 0 then
  begin
    {if cbb2.ItemIndex = - 1 then
    begin
      ShowMessage('请到门操作页面选择门编号');
      Exit;
    end;}
    AID := StrToInt(edt1.Text);
    if ReadMDoorHoliday(hPort, AID, BeginDate, EndDate, WeekCtrl, ReaderCtrl, MDoorHMSPeriods) = 0 then
    begin
      dtp1.Date := EncodeDate(BeginDate.Year, BeginDate.Month, BeginDate.Day);
      dtp2.Date := EncodeDate(EndDate.Year, EndDate.Month, EndDate.Day);
      //ReaderCtrl := 0;
      bin := IntToBin(WeekCtrl, 7);
      for i := 7 downto 1 do
      begin
        if bin[8 - i] = '1' then
          TCheckBox(FindComponent('chk' + IntToStr(i))).Checked := True
        else
          TCheckBox(FindComponent('chk' + IntToStr(i))).Checked := False;
      end;

      for i := 0 to 5 do
      begin
        TMaskEdit(FindComponent('medt' + IntToStr(2 * i + 1))).Text := Format('%.2d', [MDoorHMSPeriods[i].BeginHMS.Hour]) + ':' + Format('%.2d', [MDoorHMSPeriods[i].BeginHMS.Minute]);
        TMaskEdit(FindComponent('medt' + IntToStr(2 * i + 2))).Text := Format('%.2d', [MDoorHMSPeriods[i].EndHMS.Hour]) + ':' + Format('%.2d', [MDoorHMSPeriods[i].EndHMS.Minute]);
      end;
      self.stat1.Panels[0].Text := '获取节假日成功！'
    end else
    begin
      self.stat1.Panels[0].Text := '获取节假日失败！';
    end;
  end else
  begin
    self.stat1.Panels[0].Text := '请先联机！';
  end;
end;

procedure TForm1.btnReadMDoorPassTimeClick(Sender: TObject);
var
  i: Integer;
  AID: Byte;
  BeginDate,EndDate: TMdoorYMD;
  WeekCtrl: Byte;
  ReaderCtrl: Byte;
  MDoorHMSPeriods: TMDoorHMSPeriods;
  bin, buf: string;
begin
  if hPort <> 0 then
  begin
    {if cbb2.ItemIndex = - 1 then
    begin
      ShowMessage('请到门操作页面选择门编号');
      Exit;
    end;}
    AID := StrToInt(edt2.Text);
    if ReadMDoorPassTime(hPort, AID, BeginDate, EndDate, WeekCtrl, MDoorHMSPeriods) = 0 then
    begin
      IF (BeginDate.Year = 0) and (BeginDate.Month = 0) and (BeginDate.Day = 0) then
      begin
        ShowMessage('莫有该时间组');
        Exit;
      end;
      dtp3.Date := EncodeDate(BeginDate.Year, BeginDate.Month, BeginDate.Day);
      dtp4.Date := EncodeDate(EndDate.Year, EndDate.Month, EndDate.Day);
      ReaderCtrl := 0;
      bin := IntToBin(WeekCtrl, 7);
      for i := 15 downto 9 do
      begin
        if bin[16 - i] = '1' then
          TCheckBox(FindComponent('chk' + IntToStr(i))).Checked := True
        else
          TCheckBox(FindComponent('chk' + IntToStr(i))).Checked := False;
      end;

      for i := 0 to 5 do
      begin
        TMaskEdit(FindComponent('medt' + IntToStr(2 * i + 13))).Text := Format('%.2d', [MDoorHMSPeriods[i].BeginHMS.Hour]) + ':' + Format('%.2d', [MDoorHMSPeriods[i].BeginHMS.Minute]);
        TMaskEdit(FindComponent('medt' + IntToStr(2 * i + 14))).Text := Format('%.2d', [MDoorHMSPeriods[i].EndHMS.Hour]) + ':' + Format('%.2d', [MDoorHMSPeriods[i].EndHMS.Minute]);
      end;
      self.stat1.Panels[0].Text := '获取时间组成功！'
    end else
    begin
      self.stat1.Panels[0].Text := '获取时间组失败！';
    end;
  end else
  begin
    self.stat1.Panels[0].Text := '请先联机！';
  end;
end;

procedure TForm1.Button1Click(Sender: TObject);
var
  iResult: Integer;
  PortAddr: PChar;
  SubNet: PChar;
  MaskAddr: PChar;
  TCPPort: Integer;
  UDPPort: Integer;
  AutoIP: Integer;
  MacAddr: PChar;
begin
  iResult := PrivateReadLanIPAndMac(PortAddr, SubNet, MaskAddr, TCPPort, UDPPort, AutoIP, MacAddr);
  if (iResult)<>0 then
  begin
     Showmessage('读取IP失败,');
  end
  else
  begin
    Edit1.Text := MacAddr;
  end;
end;

procedure WaitProc(p: Pointer; dwMilliseconds: Integer);
begin

end;

function StringToDateTime(DateTimeStr: string): TDateTime;
var
  Year, Month, Day, Hour, Min, Sec, MSec: Word;
  S: string;
begin
  Result := 0;
  //DecodeDateTime(Now, Year, Month, Day, Hour, Min, Sec, MSec);
  try
    if (Pos('-', DateTimeStr) > 0) then //有年月日时分秒
    begin
      S := Copy(DateTimeStr, 1, Pos('-', DateTimeStr) - 1);
      if Length(S) = 2 then
        Year := StrToInt('20' + S)
      else
        Year := StrToInt(S);
      Delete(DateTimeStr, 1, Pos('-', DateTimeStr));
      S := Copy(DateTimeStr, 1, Pos('-', DateTimeStr) - 1);
      Month := StrToInt(S);
      Delete(DateTimeStr, 1, Pos('-', DateTimeStr));
      if Pos(':', DateTimeStr) > 0 then
      begin
        Day := StrToInt(Trim(Copy(DateTimeStr, 1, Pos(' ', DateTimeStr) - 1)));
        Delete(DateTimeStr, 1, Pos(' ', DateTimeStr));
        Hour := StrToInt(Copy(DateTimeStr, 1, Pos(':', DateTimeStr) - 1));
        Delete(DateTimeStr, 1, Pos(':', DateTimeStr));
        if Pos(':', DateTimeStr) > 0 then
        begin
          Min := StrToInt(Copy(DateTimeStr, 1, Pos(':', DateTimeStr) - 1));
          Delete(DateTimeStr, 1, Pos(':', DateTimeStr));
          Sec := StrToInt(Trim(DateTimeStr));
          MSec := 0;
        end else
        begin
          Min := StrToInt(Trim(DateTimeStr));
          Sec := 0;
          MSec := 0;
        end;
      end else
      begin
        Day := StrToInt(Trim(DateTimeStr));
        Hour := 0;
        Min := 0;
        Sec := 0;
        MSec := 0;
      end;
    end
    else if (Pos('-', DateTimeStr) = 0) and (Pos(':', DateTimeStr) > 0) then //没有年月日，只有时分秒
    begin
      Year := 1899;
      Month := 12;
      Day := 30;
      Hour := StrToInt(Copy(DateTimeStr, 1, Pos(':', DateTimeStr) - 1));
      Delete(DateTimeStr, 1, Pos(':', DateTimeStr));
      if Pos(':', DateTimeStr) > 0 then
      begin
        Min := StrToInt(Copy(DateTimeStr, 1, Pos(':', DateTimeStr) - 1));
        Delete(DateTimeStr, 1, Pos(':', DateTimeStr));
        Sec := StrToInt(Trim(DateTimeStr));
        MSec := 0;
      end else
      begin
        Min := StrToInt(Trim(DateTimeStr));
        Sec := 0;
        MSec := 0;
      end;
    end else
    begin
      if Length(DateTimeStr) = 12 then
        DateTimeStr := '20' + DateTimeStr;
      if (Length(DateTimeStr) = 14) and (Copy(DateTimeStr, 1, 2) = '00') then
        DateTimeStr := '20' + Copy(DateTimeStr, 3, Length(DateTimeStr));
      Year := StrToInt(Copy(DateTimeStr, 1, 4));
      Month := StrToInt(Copy(DateTimeStr, 5, 2));
      Day := StrToInt(Copy(DateTimeStr, 7, 2));
      Hour := StrToInt(Copy(DateTimeStr, 9, 2));
      Min := StrToInt(Copy(DateTimeStr, 11, 2));
      Sec := StrToInt(Copy(DateTimeStr, 13, 2));
      MSec := 0;
    end;
    if Day>DaysInAMonth(Year,Month) then
      Day:=DaysInAMonth(Year,Month);
    Result := EncodeDateTime(Year, Month, Day, Hour, Min, Sec, MSec);
  except
    Result:=0;
  end;
end;

function DataProgressProc(p: Pointer; lpReadData: PReadData): Boolean; stdcall;
var
  MealRecord:TMealRecord;
  lDinDate,lDinMonth:Integer;
  lTabStr:string;
begin
  Result:=False;

  FillChar(MealRecord,SizeOf(MealRecord),0);
  if lpReadData^.Verify_Error then  //如果校验错，保存原始文本
  begin
    //SaveExceptionRecord(clk,string(lpReadData^.reserved4));
    //Result:=Config.IgnoreException;
    Exit;
  end;
  Move(lpReadData^.CardNo,MealRecord.Card_id,SizeOf(lpReadData^.CardNo));
  MealRecord.clock_id:=lpReadData^.Clock_ID;
  try
    MealRecord.sign_time:=StringToDateTime(string(lpReadData^.TimeString));
  except
    MealRecord.sign_time:=Now;
  end;

  if MealRecord.sign_time=0 then
  begin
    //SaveExceptionRecord(clk,string(lpReadData^.reserved4));
    //Result:=Config.IgnoreException;
    Exit;
  end;
  try
    //Flag 0正常卡 14黑名单卡 11非法卡
    //卡号全0表示开门关门等事件，只有有实际卡号时才表示刷卡开门
    MealRecord.EvenFlag:=lpReadData^.RecordType;
    MealRecord.Flag := lpReadData^.flag and 15;
    //门编号
    MealRecord.SubDeviceID:=lpReadData^.oper_id;
    //读头编号
    MealRecord.ReaderNo := lpReadData^.ReaderNo;
    //输入输出通道
    MealRecord.Channel:=lpReadData^.InOutFlag;
    //门动作状态
    MealRecord.BusiType :=lpReadData^.retranType;
    //门磁检测状态
    MealRecord.PushResult :=lpReadData^.retransta;
    //输入密码
    Move(lpReadData^.Op_CardNo,MealRecord.Op_Pwd,SizeOf(MealRecord.Op_Pwd));
    MealRecord.PwdKind:= lpReadData^.dev_ver;    //密码类型
    Case MealRecord.flag of
      15:MealRecord.flag:=0;
      4: MealRecord.flag:=14;
      3: MealRecord.flag:=11;
      2: MealRecord.flag:=11;
      1: MealRecord.flag:=11;
    end;
    form1.mmo1.Lines.Add(Format('%s,%d,%s,%d,%d,%d,%d,%d,%d,%d,%s,%d', [MealRecord.card_id, MealRecord.clock_id,
    FormatDateTime('yyyy-mm-dd hh:nn:ss',MealRecord.sign_time),MealRecord.EvenFlag,MealRecord.Flag,MealRecord.ReaderNo,
    MealRecord.SubDeviceID,MealRecord.Channel,MealRecord.BusiType,MealRecord.PushResult,MealRecord.Op_Pwd,MealRecord.PwdKind]));
    Result := True;
  except
    on e: Exception do
    begin
      //SaveExceptionRecord(clk,string(lpReadData^.reserved4));
      //WriteError(e.Message, clk.Clock_id);
      //Result:=Config.IgnoreException;
      Exit;
    end;
  end;
  //if Assigned(FCollectCallBack) then
  //  Result:=FCollectCallBack(PCollectParam(P)^.PQuery,clk,@MealRecord);
end;

procedure TForm1.Button5Click(Sender: TObject);
var
  buf:array[0..1024] of char;
  Count : Integer;
  pck: TClockInfo;
begin
  if hPort > 0 then
  begin
    if ReadClockRecordTotal(hPort,Count) then
      Mmo1.Lines.Add('当前共存在' + IntToStr(Count) + '条记录！')
    else
      Exit;
    pck.hPort := hPort;

    Count := ReadAllRecord(hPort,@pck,@DataProgressProc,@WaitProc);
    if Count>=0 then
      Mmo1.Lines.Add('采集成功，共采集数据' + IntToStr(Count) + '条！')
    else
      Mmo1.Lines.Add('采集失败！');
  end else
  begin
    self.stat1.Panels[0].Text := '请先联机！';
  end;
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  ss:string;
  pwd: string;
  count,i,total,isize :Integer;
  Records: array[0..15] of TICRecord;
begin
  if not CheckHandle(hPort) then
  begin
    ShowMessage('请先进行联机！');
    Exit;
  end;
  total :=0;
  repeat
    count:=BatchReadRecord(hPort,records); 
    for i:=0 to count-1 do
    begin
      Inc(total);
      //Flag 0正常卡 14黑名单卡 11非法卡
      //卡号全0表示开门关门等事件，只有有实际卡号时才表示刷卡开门
      Case Records[i].flag of
        15:Records[i].flag:=0;
        4: Records[i].flag:=14;
        3: Records[i].flag:=11;
        2: Records[i].flag:=11;
        1: Records[i].flag:=11;
      end;
      pwd := string(Records[i].MDoorPassword);
      ss:=Format('%s,%d,%s,%d,%d,%d,%d,%d,%d,%d,%s,%d;',[Records[i].Card,Records[i].Clock_id,Records[i].timeString,
            Records[i].EventFlag,Records[i].Flag,Records[i].ReaderNo,Records[i].SubDeviceID,Records[i].Channel,Records[i].DoorState,
            Records[i].MagneticState, pwd, Records[i].pwdkind]);
      Mmo1.Lines.Add(ss);
    end;
  until count <= 0;
  Mmo1.Lines.Add('共采集数据' + IntToStr(total) + '条！');
end;

procedure TForm1.Button6Click(Sender: TObject);
var
  buf:array[0..1024] of char;
  Count : Integer;
begin
  if not CheckHandle(hPort) then
  begin
    ShowMessage('请先进行联机！');
    Exit;
  end;
  if ReadClockRecordTotal(hPort,Count) then
    Mmo1.Lines.Add('当前共存在' + IntToStr(Count) + '条记录！')
  else
    Exit;
  while 1=1 do
  begin
    Count:=BatchReadRecordAsString(hPort,buf);                     //这个每次只能取16条数据。
    if Count>0 then
      Mmo1.Lines.Add(string(buf))
    else
      Break;
  end;
end;

procedure TForm1.Button7Click(Sender: TObject);
begin
  if hPort <> 0 then
  begin
    if cbb2.ItemIndex = -1 then
    begin
      ShowMessage('请选择门编号');
      Exit;
    end;

    if MDoorRemoteAction(hPort, 3, cbb2.ItemIndex, 3) = 0 then
      self.stat1.Panels[0].Text := Format('远程开门%d成功！', [cbb2.ItemIndex])
    else
      self.stat1.Panels[0].Text := Format('远程开门%d失败！', [cbb2.ItemIndex]);
  end else
  begin
    self.stat1.Panels[0].Text := '请先联机！';
  end;
end;

procedure TForm1.Button8Click(Sender: TObject);
begin
  if hPort <> 0 then
  begin
    if cbb2.ItemIndex = -1 then
    begin
      ShowMessage('请选择门编号');
      Exit;
    end;
    if MDoorRemoteAction(hPort, 4, cbb2.ItemIndex, 3) = 0 then
      self.stat1.Panels[0].Text := Format('远程关门%d成功！', [cbb2.ItemIndex])
    else
      self.stat1.Panels[0].Text := Format('远程关门%d失败！', [cbb2.ItemIndex]);
  end else
  begin
    self.stat1.Panels[0].Text := '请先联机！';
  end;
end;

procedure TForm1.btn1Click(Sender: TObject);
var
  PRemoteIP,PRemoteParam: Tbuf;
  RemoteType,RemotePort,RemoteParamLen:Integer;
begin
  if not CheckHandle(hPort) then
  begin
    ShowMessage('请先进行联机！');
    Exit;
  end;
  if ReadRemoteIP(hPort,PRemoteIP,RemotePort,RemoteType,PRemoteParam,RemoteParamLen)=0  then
  begin
     edt6.Text:=string(PRemoteIP);
     edt7.Text:=IntToStr(RemotePort);
     stat1.Panels[0].text:='读取成功';
  end
  else
     stat1.Panels[0].text:='读取失败';
end;

procedure TForm1.btn2Click(Sender: TObject);
var
  RemoteIP:string;
  RemotePort:Integer;
begin
  if not CheckHandle(hPort) then
  begin
    ShowMessage('请先进行联机！');
    Exit;
  end;
  RemoteIP:=Trim(edt6.Text);
  RemotePort:=StrToInt(edt7.Text);
  if SetRemoteIP(hPort,PChar(RemoteIP),RemotePort,3,'',0)=0  then      //第四个参数 传3 是启用主动上传，传0是关闭主动上传
     stat1.Panels[0].text:='设置成功'
  else
     stat1.Panels[0].text:='设置失败';
end;

procedure OnRefreshDeviceStateBySerial(Dev_id: integer;Serial:TSerialType; State: integer; RecordCount: integer);
var
  strtmp:string;
  i:integer;
  strSerial:string;
  it:TListItem; 
begin
  strSerial:=Format('%s',[Serial]);

  for i:=0 to Form1.lvClock.Items.Count-1 do
  begin
     it:=Form1.lvClock.Items[i];
     if it.SubItems.Strings[0]=strSerial then
     begin
        it.Caption:=IntToStr(Dev_id);
        if State=0 then
        begin
          it.SubItems.Strings[3]:='脱机';
        end
        else
        begin
          it.SubItems.Strings[3]:='联机';
        end;
        break;
     end;
  end;
end;

procedure TForm1.ClosePort(pif: PCnnInfo);
begin
  if CheckHandle(pif^.CnnHandle) then
  begin
    UnCallClock(pif^.CnnHandle);
    ClosePortHandle(pif^.CnnHandle);
    pif^.CnnHandle:=0;
  end;
end;

procedure TForm1.ChangeCnnInfo(AClock_id:Integer;AIP: string; APort: Integer);
var
  i:integer;
begin
  cs.Enter;
  try
    for i:=0 to FClockList.Count-1 do
    begin
      if PCnnInfo(FClockList[i])^.Clock_id=AClock_id then
      begin
        ClosePort(PCnnInfo(FClockList[i]));
        StrCopy(PCnnInfo(FClockList[i])^.Ip,PChar(AIP));
        PCnnInfo(FClockList[i])^.Port:=APort;
      end;
    end;
  finally
    cs.Leave;
  end;
end;

procedure TForm1.AddCnnInfo(AClock_id: Integer; AIP: string;
  APort: Integer);
var
  pif:PCnnInfo;
begin
  cs.Enter;
  try
    New(pif);
    pif^.CnnHandle:=0;
    pif^.Clock_id:=AClock_id;
    StrCopy(pif^.Ip,PChar(AIp));
    pif^.Port:=Aport;
    form1.FClockList.Add(pif);
  finally
    cs.Leave;
  end;
end;

procedure OnDeviceLogin(Dev_id:integer;Serial:TSerialType;ip:PChar;port:integer;
                 var Heartbeat:integer);
var
  strSerial:string;
  i:integer;
  it:TListItem;
  hasDevice:boolean;
begin
  strSerial:=Format('%s',[Serial]);
  hasDevice:=false;
  for i:=0 to Form1.lvClock.Items.Count-1 do
  begin
     it:=Form1.lvClock.Items[i];
     if it.SubItems.Strings[0]=strSerial then
     begin
        hasDevice:=true;
        it.Caption:=IntToStr(Dev_id);
        it.SubItems.Strings[1]:=IP;
        it.SubItems.Strings[2]:=IntToStr(port);
        Form1.ChangeCnnInfo(Dev_id,ip,port);
        break;
     end;
  end;
  if not hasDevice then
  begin
    it:=Form1.lvClock.Items.Add;
    it.Caption:=IntToStr(Dev_id);
    it.SubItems.Add(strSerial);
    it.SubItems.Add(IP);
    it.SubItems.Add(IntToStr(port));
    it.SubItems.Add('登录');
    Form1.AddCnnInfo(Dev_id,ip,Port);
  end;

  Heartbeat:=2;

end;

procedure OnRecieveBatchRecordBySerial(Dev_id: integer;Serial:TSerialType;index:integer;RecordCount:integer;
  Records: DeviceDataArray;var bReturnOK:boolean);
var
  strtmp:string;
  i:integer;
  cnnHandle:THandle;
  ActionCount:Integer;
begin
  for i:=0 to RecordCount-1 do
  begin
    { MealRecord.Flag:=records[i].flag;
      if MealRecord.Flag=15 then
        MealRecord.Flag:=0;
      MealRecord.Mark:=0;
      MealRecord.ReaderNo:=Records[i].Reader;
      MealRecord.EvenFlag:=Records[i].RecordType;
      MealRecord.pos_sequ:=Records[i].POS_Sequ;
      MealRecord.SubDeviceID:=Records[i].SubDeviceID+1;
      MealRecord.Channel:=Records[i].InOutFlag;
      MealRecord.BusiType :=Records[i].DoorState;
      MealRecord.PushResult :=Records[i].MagneticState;
    }
    strtmp:=Format('机号：%d;收到记录,卡号:%s,序列号:%s,时间:%s,门号:%d,门磁状态:%d,门状态:%d,读头:%d,事件:%d',
    [Records[i].dev_id,Records[i].cardno,Records[i].CSN,Records[i].card_time,Records[i].SubDeviceID,Records[i].MagneticState,Records[i].DoorState,Records[i].Reader,Records[i].RecordType]);
    form1.mmo1.Lines.Add(strtmp);
  end;
  bReturnOK:=true;
end;

procedure TForm1.btnStartClick(Sender: TObject);
begin
  BtnStart.Enabled:= not StartUpLoad(StrToInt(edtPort.Text));
  BtnStop.Enabled:=not BtnStart.Enabled;
  if not BtnStart.Enabled then
  begin
     SetUpLoadProc(OnDeviceLogin,OnRefreshDeviceStateBySerial,OnRecieveBatchRecordBySerial);
  end;
end;

procedure TForm1.btnStopClick(Sender: TObject);
begin
  StopUpLoad;
  BtnStart.Enabled:=True;
  btnStop.Enabled:=False;
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
var
  i:integer;
begin
  cs.Enter;
  try
    for i:=FClockList.Count-1 downto 0 do
    begin
      ClosePort(PCnnInfo(FClockList[i]));
      Dispose(PCnnInfo(FClockList[i]));
    end;
    FClockList.Free;
  finally
    cs.Leave;
  end;
  cs.Free;
end;

end.

