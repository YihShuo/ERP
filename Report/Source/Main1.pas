unit Main1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ExtCtrls, DB, DBTables,jpeg,Strutils, StdCtrls;

type
  TMain = class(TForm)
    mmMain: TMainMenu;
    SN1: TMenuItem;
    SN2: TMenuItem;
    SN3: TMenuItem;
    SN4: TMenuItem;
    SN5: TMenuItem;
    SN6: TMenuItem;
    SN7: TMenuItem;
    SN8: TMenuItem;
    imBackground: TImage;
    qrMain: TQuery;
    SN51: TMenuItem;
    SN52: TMenuItem;
    SN71: TMenuItem;
    SN72: TMenuItem;
    SN73: TMenuItem;
    SN31: TMenuItem;
    SN81: TMenuItem;
    SN82: TMenuItem;
    SN74: TMenuItem;
    SN75: TMenuItem;
    SN83: TMenuItem;
    SN53: TMenuItem;
    SN54: TMenuItem;
    SN32: TMenuItem;
    SN21: TMenuItem;
    SN22: TMenuItem;
    SN84: TMenuItem;
    SN841: TMenuItem;
    SN76: TMenuItem;
    SN842: TMenuItem;
    SN843: TMenuItem;
    SN77: TMenuItem;
    SN731: TMenuItem;
    SN732: TMenuItem;
    SN9: TMenuItem;
    SN91: TMenuItem;
    SN733: TMenuItem;
    SN92: TMenuItem;
    SN93: TMenuItem;
    Edit1: TEdit;
    Edit2: TEdit;
    SN23: TMenuItem;
    SN94: TMenuItem;
    SN24: TMenuItem;
    SN25: TMenuItem;
    SN734: TMenuItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure SN51Click(Sender: TObject);
    procedure SN52Click(Sender: TObject);
    procedure SN71Click(Sender: TObject);
    procedure SN72Click(Sender: TObject);
    procedure SN31Click(Sender: TObject);
    procedure SN81Click(Sender: TObject);
    procedure SN82Click(Sender: TObject);
    procedure SN74Click(Sender: TObject);
    procedure SN75Click(Sender: TObject);
    procedure SN83Click(Sender: TObject);
    procedure SN53Click(Sender: TObject);
    procedure SN54Click(Sender: TObject);
    procedure SN32Click(Sender: TObject);
    procedure SN21Click(Sender: TObject);
    procedure SN22Click(Sender: TObject);
    procedure SN841Click(Sender: TObject);
    procedure SN76Click(Sender: TObject);
    procedure SN842Click(Sender: TObject);
    procedure SN843Click(Sender: TObject);
    procedure SN77Click(Sender: TObject);
    procedure SN731Click(Sender: TObject);
    procedure SN732Click(Sender: TObject);
    procedure SN91Click(Sender: TObject);
    procedure SN733Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SN92Click(Sender: TObject);
    procedure SN93Click(Sender: TObject);
    procedure SN23Click(Sender: TObject);
    procedure SN94Click(Sender: TObject);
    procedure SN24Click(Sender: TObject);
    procedure SN25Click(Sender: TObject);
    procedure SN734Click(Sender: TObject);

  private
    MKID:String;
    { Private declarations }
     //---20150817 Projoe 補上由 Nick 所提供的function log 程式
    //用法: SaveProLog(GetMKID(),TMenuItem(Sender).Name,GetUserID());
    procedure SaveProLog(AMKID: string; AFORMID: string; AUSERID: string);
    //---20150817 Projoe 修改 Menu 上面的按鈕呼叫方式
    procedure showFm(var fm: Pointer; parentClass: TPersistentClass; miname: string);
  public
    sUser:string;
    sPW:string;
    sGSBH:string;
    ServerIP:string;
  end;

var
  Main: TMain;

implementation

uses BrandProduction1, DTProductionReport1,MQRBDP,MQRBDefP,DQRBHP,StuffCost1,
     SampleMergeRptP,DCMatQtyRptp,FFTInfoP,FFT_Panelp,DCMatExpP,FunUnit,
     DailyProductionDepOrd1, DailyProductionDep1, Supp2Matp,MonthOrderQtyp,
     ConOrderQty1,SampleTrackingRpt1,MQRShoeBC1,SampleTrackingStatistics1,
     SampleTrackingReason1,MonthlyReportShoeB1, DailyQCRpt1 , MASSHRM1,
     QCRptTV1, ShoeTracking1, MassHRMEffection1, HRMDepartmentAttend1,YearOrderQty1,
     DM1, POHAnalysis1, Detail_POHAnalysis1, QCRptDailyFFT1;

{$R *.dfm}
//
procedure Tmain.showFm(var fm: Pointer; parentClass: TPersistentClass; miname: string);  //
begin
   //Create Form and Show Form
   if parentClass<>nil then
   begin
     if fm <> nil then
     begin
        TForm(fm).show;
        TForm(fm).windowstate := wsmaximized;
     end else
     begin
        fm := TControlClass(parentClass).create(self);
        SaveProLog(MKID, miname, suser);
        TForm(fm).show;
     end;
   end;
end;

procedure Tmain.SaveProLog(AMKID: string; AFORMID: string; AUSERID: string);
//---20150817 Projoe 補上由 Nick 所提供之追蹤function log 的程式
//用法: SaveProLog(GetMKID(),TMenuItem(Sender).Name,GetUserID());
var
  MyQuery: TQuery;
begin
  try
    with MyQuery do
      begin
        MyQuery := TQuery.Create(application);
        DatabaseName := 'DB';

        Close;
        SQL.Clear;
        SQL.Add('insert into PROGLOG (MKID,FORMID,USERID,USERDATE)');
        SQL.Add('values (:MKID,:FORMID,:USERID,:USERDATE)');
        ParamByName('MKID').Value := AMKID;
        ParamByName('FORMID').Value := AFORMID;
        ParamByName('USERID').Value := AUSERID;
        ParamByName('USERDATE').Value := now;
        if not Prepared then
          Prepare;
        ExecSQL;
      end;
  finally
    FreeAndNil(MyQuery);
  end;
end;

procedure Tmain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if main.ActiveMDIChild<>nil  then
    begin
      Messagedlg('Pls close all child form first.',mtwarning,[mbOK],0);
      action:=canone;
    end
  else
    begin
      with qrMain do
        begin
          active:=false;
          sql.clear;
          sql.add('update Busers set LASTDATETIME=getdate()');
          sql.add('where USERID='''+sUser+'''' );
          execsql;
        end;
        funcObj.Free;
        action:=cafree;
      end;
end;


procedure TMain.FormCreate(Sender: TObject);
var
  tfTemp:textfile;
  sTemp:string;

begin
  funcObj:=TFuncObj.Create;
  funcObj.setParameter(true,ExtractFilePath(Application.ExeName));
  ServerIP:=FuncObj.GetBDE_SERVERIP(DM.dbMain.AliasName);
  //
  assignfile(tfTemp,'user.txt');
  reset(tfTemp);
  readln(tfTemp,sTemp);
  if length(sTemp)<2 then
  begin
      showmessage('Wrong program. Pls run the main program first.');
      application.Terminate;
  end else
  begin
      sUser:=copy(sTemp,0,pos('=',sTemp)-1);
      Edit1.Text:=sUser;
      sPW:=copy(sTemp,pos('=',sTemp)+1,maxint);
      imBackground.Picture.loadFromFile('factory.jpg');
  end;
  closefile(tfTemp);
  assignfile(tfTemp,'company.txt');
  reset(tfTemp);
  readln(tfTemp,sGSBH);
  Edit2.Text:=sGSBH;
  closefile(tfTemp);
  with qrMain do
  begin
    ParamByName('userid').Value := suser;
    ParamByName('mkid').Value := '15';  MKID:='15';
    Active:=true;
//加入權限設定 star 2014.1.22
    SN1.Enabled:= Locate('FORMID','SN1',[]);
    SN2.Enabled:= Locate('FORMID','SN2',[]);
    SN3.Enabled:= Locate('FORMID','SN3',[]);
    SN4.Enabled:= Locate('FORMID','SN4',[]);
    SN5.Enabled:= Locate('FORMID','SN5',[]);
    SN6.Enabled:= Locate('FORMID','SN6',[]);
    SN7.Enabled:= Locate('FORMID','SN7',[]);
    SN8.Enabled:= Locate('FORMID','SN8',[]);
    SN9.Enabled:= Locate('FORMID','SN9',[]);
    //20171020  增加權限
    SN21.Enabled:= Locate('FORMID','SN21',[]);
    SN22.Enabled:= Locate('FORMID','SN22',[]);
    SN23.Enabled:= Locate('FORMID','SN23',[]);
    SN31.Enabled:= Locate('FORMID','SN31',[]);
    SN32.Enabled:= Locate('FORMID','SN32',[]);
    SN51.Enabled:= Locate('FORMID','SN51',[]);
    SN52.Enabled:= Locate('FORMID','SN52',[]);
    SN53.Enabled:= Locate('FORMID','SN53',[]);
    SN54.Enabled:= Locate('FORMID','SN54',[]);
    SN71.Enabled:= Locate('FORMID','SN71',[]);
    SN72.Enabled:= Locate('FORMID','SN72',[]);
    SN731.Enabled:= Locate('FORMID','SN731',[]);
    SN732.Enabled:= Locate('FORMID','SN732',[]);
    SN733.Enabled:= Locate('FORMID','SN733',[]);
    SN74.Enabled:= Locate('FORMID','SN74',[]);
    SN75.Enabled:= Locate('FORMID','SN75',[]);
    SN76.Enabled:= Locate('FORMID','SN76',[]);
    SN77.Enabled:= Locate('FORMID','SN77',[]);
    SN81.Enabled:= Locate('FORMID','SN81',[]);
    SN841.Enabled:= Locate('FORMID','SN841',[]);
    SN842.Enabled:= Locate('FORMID','SN842',[]);
    SN843.Enabled:= Locate('FORMID','SN843',[]);
    SN91.Enabled:= Locate('FORMID','SN91',[]);
    SN92.Enabled:= Locate('FORMID','SN92',[]);
    SN93.Enabled:= Locate('FORMID','SN93',[]);
    SN94.Enabled:= Locate('FORMID','SN94',[]);
    SN24.Enabled:= Locate('FORMID','SN24',[]);
    SN25.Enabled:= Locate('FORMID','SN25',[]);
    Active:=false;
  end;

end;

procedure TMain.SN51Click(Sender: TObject); //N51品牌接單生產報表
begin
  showFm(Pointer(BrandProduction), TBrandProduction, TMenuItem(Sender).Name);
end;

procedure TMain.SN52Click(Sender: TObject); //N52同塔廠請款明細表
begin
  showFm(Pointer(DTProductionReport), TDTProductionReport, TMenuItem(Sender).Name);
end;

procedure TMain.SN71Click(Sender: TObject);
begin
  showFm(Pointer(MQRBD), TMQRBD, TMenuItem(Sender).Name);
end;

procedure TMain.SN72Click(Sender: TObject);
begin
  showFm(Pointer(MQRBDef), TMQRBDef, TMenuItem(Sender).Name);
end;

procedure TMain.SN31Click(Sender: TObject);
begin
  showFm(Pointer(StuffCost), TStuffCost, TMenuItem(Sender).Name);
end;

procedure TMain.SN81Click(Sender: TObject);
begin
  showFm(Pointer(SampleMergeRpt), TSampleMergeRpt, TMenuItem(Sender).Name);
end;

procedure TMain.SN82Click(Sender: TObject);
begin
  showFm(Pointer(DCMatQtyRpt), TDCMatQtyRpt, TMenuItem(Sender).Name);
end;

procedure TMain.SN74Click(Sender: TObject);
begin
  showFm(Pointer(FFTInfo), TFFTInfo, TMenuItem(Sender).Name);
end;

procedure TMain.SN75Click(Sender: TObject);
begin
  showFm(Pointer(FFTPanel), TFFTPanel, TMenuItem(Sender).Name);
end;

procedure TMain.SN83Click(Sender: TObject);
begin
  showFm(Pointer(DCMatExp), TDCMatExp, TMenuItem(Sender).Name);
end;

procedure TMain.SN53Click(Sender: TObject);
begin
  showFm(Pointer(DailyProductionDepOrd), TDailyProductionDepOrd, TMenuItem(Sender).Name);
end;

procedure TMain.SN54Click(Sender: TObject);
begin
  showFm(Pointer(DailyProductionDep), TDailyProductionDep, TMenuItem(Sender).Name);
end;

procedure TMain.SN32Click(Sender: TObject);
begin
  showFm(Pointer(Supp2Mat), TSupp2Mat, TMenuItem(Sender).Name);
end;


procedure TMain.SN21Click(Sender: TObject);
begin
  showFm(Pointer(MonthOrderQty), TMonthOrderQty, TMenuItem(Sender).Name);
end;

procedure TMain.SN22Click(Sender: TObject);
begin
  showFm(Pointer(ConOrderQty), TConOrderQty, TMenuItem(Sender).Name);
end;

procedure TMain.SN841Click(Sender: TObject);
begin
  showFm(Pointer(SampleTrackingRpt), TSampleTrackingRpt, TMenuItem(Sender).Name);
end;

procedure TMain.SN76Click(Sender: TObject);
begin
  showFm(Pointer(MQRShoeBC), TMQRShoeBC, TMenuItem(Sender).Name);
end;

procedure TMain.SN842Click(Sender: TObject);
begin
  showFm(Pointer(SampleTrackingStatistics), TSampleTrackingStatistics, TMenuItem(Sender).Name);
end;

procedure TMain.SN843Click(Sender: TObject);
begin
  showFm(Pointer(SampleTrackingReason), TSampleTrackingReason, TMenuItem(Sender).Name);
end;

procedure TMain.SN77Click(Sender: TObject);
begin
  showFm(Pointer(MonthlyReportShoeB), TMonthlyReportShoeB, TMenuItem(Sender).Name);
end;


procedure TMain.SN731Click(Sender: TObject);
begin
  showFm(Pointer(DQRBH), TDQRBH, TMenuItem(Sender).Name);
end;

procedure TMain.SN732Click(Sender: TObject);
begin
  showFm(Pointer(DailyQCRpt), TDailyQCRpt, TMenuItem(Sender).Name);
end;

procedure TMain.SN91Click(Sender: TObject);
begin
    showFm(Pointer(MASSHRM), TMASSHRM, TMenuItem(Sender).Name);
end;

procedure TMain.SN733Click(Sender: TObject);
begin
   showFm(Pointer(QCRptTV), TQCRptTV, TMenuItem(Sender).Name);
end;

procedure TMain.FormShow(Sender: TObject);
var tmpMenuItem:TMenuItem;
begin
  //自動檢查往前第三天
  if ParamCount=2 then
  begin
    if ParamStr(1)='TVPanel' then
    begin
       tmpMenuItem:=TMenuItem(FindComponent(ParamStr(2)));
       if tmpMenuItem<>nil then tmpMenuItem.Click;
    end;
  end;
end;

procedure TMain.SN92Click(Sender: TObject);
begin
  showFm(Pointer(ShoeTracking), TShoeTracking, TMenuItem(Sender).Name);
end;

procedure TMain.SN93Click(Sender: TObject);
begin
  showFm(Pointer(MassHRMEffection), TMassHRMEffection, TMenuItem(Sender).Name);
end;

procedure TMain.SN23Click(Sender: TObject);
begin
  showFm(Pointer(YearOrderQty), TYearOrderQty, TMenuItem(Sender).Name);
end;

procedure TMain.SN94Click(Sender: TObject);
begin
  showFm(Pointer(HRMDepartmentAttend), THRMDepartmentAttend, TMenuItem(Sender).Name);
end;

procedure TMain.SN24Click(Sender: TObject);
begin
  showFm(Pointer(POHAnalysis), TPOHAnalysis, TMenuItem(Sender).Name);
end;

procedure TMain.SN25Click(Sender: TObject);
begin
  showFm(Pointer(Detail_POHAnalysis), TDetail_POHAnalysis, TMenuItem(Sender).Name);
end;

procedure TMain.SN734Click(Sender: TObject);
begin
  showFm(Pointer(QCRptDailyFFT), TQCRptDailyFFT, TMenuItem(Sender).Name);
end;

end.









