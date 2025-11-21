unit main1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, jpeg, ExtCtrls, StdCtrls, DB, DBTables, ComCtrls, ProductionOrder1,DBGridS,DBGridEh, Grids;

type
  Tmain = class(TForm)
    MainMenu1: TMainMenu;
    Image1: TImage;                 
    Edit1: TEdit;
    Query1: TQuery;
    SN1: TMenuItem;
    SN11: TMenuItem;
    SN12: TMenuItem;
    SN2: TMenuItem;
    SN21: TMenuItem;
    SN3: TMenuItem;
    SN31: TMenuItem;
    SN32: TMenuItem;
    SN22: TMenuItem;
    SN23: TMenuItem;
    SN4: TMenuItem;
    SN41: TMenuItem;
    SN42: TMenuItem;
    SN43: TMenuItem;
    SN33: TMenuItem;
    SN34: TMenuItem;
    SN35: TMenuItem;
    SN36: TMenuItem;
    StatusBar1: TStatusBar;
    SN5: TMenuItem;
    SN51: TMenuItem;
    SN52: TMenuItem;
    SN53: TMenuItem;
    SN54: TMenuItem;
    SN55: TMenuItem;
    SN56: TMenuItem;
    SN57: TMenuItem;
    SN7: TMenuItem;
    SN71: TMenuItem;
    SN72: TMenuItem;
    SN73: TMenuItem;
    SN74: TMenuItem;
    SN75: TMenuItem;
    SN76: TMenuItem;
    Edit2: TEdit;
    SN37: TMenuItem;
    SN24: TMenuItem;
    SN25: TMenuItem;
    SN26: TMenuItem;
    SN58: TMenuItem;
    SN13: TMenuItem;
    SN14: TMenuItem;
    SN15: TMenuItem;
    SN28: TMenuItem;
    SN531: TMenuItem;
    SN532: TMenuItem;
    SN533: TMenuItem;
    SN534: TMenuItem;
    SN542: TMenuItem;
    SN543: TMenuItem;
    SN551: TMenuItem;
    SN552: TMenuItem;
    SN553: TMenuItem;
    SN554: TMenuItem;
    SN555: TMenuItem;
    SN556: TMenuItem;
    SN6: TMenuItem;
    SN601: TMenuItem;
    SN602: TMenuItem;
    SN603: TMenuItem;
    SN604: TMenuItem;
    SN605: TMenuItem;
    SN606: TMenuItem;
    SN607: TMenuItem;
    SN608: TMenuItem;
    SN541: TMenuItem;
    SN27: TMenuItem;
    SN38: TMenuItem;
    SN29: TMenuItem;
    SN77: TMenuItem;
    SN78: TMenuItem;
    SN7801: TMenuItem;
    SN7802: TMenuItem;
    SN8: TMenuItem;
    SN81: TMenuItem;
    SN7803: TMenuItem;
    SN59: TMenuItem;
    SN609: TMenuItem;
    SN39: TMenuItem;
    SN391: TMenuItem;
    SN392: TMenuItem;
    SN3A: TMenuItem;
    SN6031: TMenuItem;
    SN6032: TMenuItem;
    SN544: TMenuItem;
    SN535: TMenuItem;
    SN331: TMenuItem;
    SN332: TMenuItem;
    SN333: TMenuItem;
    SN545: TMenuItem;
    SN546: TMenuItem;
    SN3B: TMenuItem;
    SN3C: TMenuItem;
    SN2A: TMenuItem;
    SN2A1: TMenuItem;
    SN2A2: TMenuItem;
    SN547: TMenuItem;
    SN3D: TMenuItem;
    SN610: TMenuItem;
    SN6101: TMenuItem;
    SN6102: TMenuItem;
    SN6103: TMenuItem;
    SN7804: TMenuItem;
    SN6104: TMenuItem;
    SN7805: TMenuItem;
    SN7806: TMenuItem;
    SN721: TMenuItem;
    SN722: TMenuItem;
    SN611: TMenuItem;
    SN723: TMenuItem;
    SN5A: TMenuItem;
    SN5A2: TMenuItem;
    SN5A3: TMenuItem;
    SN5A4: TMenuItem;
    SN5A1: TMenuItem;
    SN5A5: TMenuItem;
    SN724: TMenuItem;
    SN5A6: TMenuItem;
    SN5A7: TMenuItem;
    SN2A3: TMenuItem;
    SN548: TMenuItem;
    SN7807: TMenuItem;
    SN2A4: TMenuItem;
    SN562: TMenuItem;
    SN561: TMenuItem;
    BLimitHideQry: TQuery;
    SN6033: TMenuItem;
    SN6105: TMenuItem;
    SN3D2: TMenuItem;
    SN3D1: TMenuItem;
    SN612: TMenuItem;
    SN725: TMenuItem;
    SN613: TMenuItem;
    SN2B: TMenuItem;
    SN3E: TMenuItem;
    SN5A8: TMenuItem;
    SN9: TMenuItem;
    SN91: TMenuItem;
    SN3F: TMenuItem;
    SN3G: TMenuItem;
    SN93: TMenuItem;
    SN3H: TMenuItem;
    SN3H1: TMenuItem;
    SN3H2: TMenuItem;
    SN3H3: TMenuItem;
    SN3H4: TMenuItem;
    SN3H5: TMenuItem;
    SN3H6: TMenuItem;
    N72SanProduction1: TMenuItem;
    SN922: TMenuItem;
    SN921: TMenuItem;
    SN726: TMenuItem;
    SN727: TMenuItem;
    SN728: TMenuItem;
    SN729: TMenuItem;
    SN72A: TMenuItem;
    SN72B: TMenuItem;
    procedure SN14Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure SN11Click(Sender: TObject);
    procedure SN22Click(Sender: TObject);
    procedure SN23Click(Sender: TObject);
    procedure SN41Click(Sender: TObject);
    procedure SN42Click(Sender: TObject);
    procedure SN43Click(Sender: TObject);
    procedure SN21Click(Sender: TObject);
    procedure SN51Click(Sender: TObject);
    procedure SN53Click(Sender: TObject);
    procedure SN35Click(Sender: TObject);
    procedure SN36Click(Sender: TObject);
    procedure SN12Click(Sender: TObject);
    procedure SN52Click(Sender: TObject);
    procedure SN57Click(Sender: TObject);
    procedure SN54Click(Sender: TObject);
    procedure SN71Click(Sender: TObject);
    procedure SN73Click(Sender: TObject);
    procedure SN75Click(Sender: TObject);
    procedure SN76Click(Sender: TObject);
    procedure SN74Click(Sender: TObject);
    procedure SN37Click(Sender: TObject);
    procedure SN24Click(Sender: TObject);
    procedure SN25Click(Sender: TObject);
    procedure SN26Click(Sender: TObject);
    procedure SN58Click(Sender: TObject);
    procedure SN13Click(Sender: TObject);
    procedure SN15Click(Sender: TObject);
    procedure SN28Click(Sender: TObject);
    procedure SN531Click(Sender: TObject);
    procedure SN601Click(Sender: TObject);
    procedure SN602Click(Sender: TObject);
    procedure SN604Click(Sender: TObject);
    procedure SN532Click(Sender: TObject);
    procedure SN534Click(Sender: TObject);
    procedure SN533Click(Sender: TObject);
    procedure SN542Click(Sender: TObject);
    procedure SN541Click(Sender: TObject);
    procedure SN543Click(Sender: TObject);
    procedure SN551Click(Sender: TObject);
    procedure SN552Click(Sender: TObject);
    procedure SN553Click(Sender: TObject);
    procedure SN554Click(Sender: TObject);
    procedure SN555Click(Sender: TObject);
    procedure SN556Click(Sender: TObject);
    procedure SN27Click(Sender: TObject);
    procedure SN38Click(Sender: TObject);
    procedure SN29Click(Sender: TObject);
    procedure SN77Click(Sender: TObject);
    procedure SN7801Click(Sender: TObject);
    procedure SN81Click(Sender: TObject);
    procedure SN32Click(Sender: TObject);
    procedure SN7802Click(Sender: TObject);
    procedure SN31Click(Sender: TObject);
    procedure SN7803Click(Sender: TObject);
    procedure SN59Click(Sender: TObject);
    procedure SN607Click(Sender: TObject);
    procedure SN605Click(Sender: TObject);
    procedure SN606Click(Sender: TObject);
    procedure SN608Click(Sender: TObject);
    procedure SN609Click(Sender: TObject);
    procedure SN391Click(Sender: TObject);
    procedure SN392Click(Sender: TObject);
    procedure SN3AClick(Sender: TObject);
    procedure SN6031Click(Sender: TObject);
    procedure SN6032Click(Sender: TObject);
    procedure SN544Click(Sender: TObject);
    procedure SN535Click(Sender: TObject);
    procedure SN331Click(Sender: TObject);
    procedure SN332Click(Sender: TObject);
    procedure SN333Click(Sender: TObject);
    procedure SN545Click(Sender: TObject);
    procedure SN546Click(Sender: TObject);
    procedure SN3BClick(Sender: TObject);
    procedure SN3CClick(Sender: TObject);
    procedure SN2A1Click(Sender: TObject);
    procedure SN2A2Click(Sender: TObject);
    procedure SN547Click(Sender: TObject);
    procedure SN6101Click(Sender: TObject);
    procedure SN6102Click(Sender: TObject);
    procedure SN6103Click(Sender: TObject);
    procedure SN7804Click(Sender: TObject);
    procedure SN6104Click(Sender: TObject);
    procedure SN7805Click(Sender: TObject);
    procedure SN7806Click(Sender: TObject);
    procedure SN722Click(Sender: TObject);
    procedure SN721Click(Sender: TObject);
    procedure SN611Click(Sender: TObject);
    procedure SN723Click(Sender: TObject);
    procedure SN5A2Click(Sender: TObject);
    procedure SN5A3Click(Sender: TObject);
    procedure SN5A4Click(Sender: TObject);
    procedure SN5A1Click(Sender: TObject);
    procedure SN5A5Click(Sender: TObject);
    procedure SN724Click(Sender: TObject);
    procedure SN5A6Click(Sender: TObject);
    procedure SN5A7Click(Sender: TObject);
    procedure SN2A3Click(Sender: TObject);
    procedure SN548Click(Sender: TObject);
    procedure SN7807Click(Sender: TObject);
    procedure SN2A4Click(Sender: TObject);
    procedure SN562Click(Sender: TObject);
    procedure SN561Click(Sender: TObject);
    procedure SN6033Click(Sender: TObject);
    procedure SN6105Click(Sender: TObject);
    procedure SN3D2Click(Sender: TObject);
    procedure SN3D1Click(Sender: TObject);
    procedure SN612Click(Sender: TObject);
    procedure SN725Click(Sender: TObject);
    procedure SN613Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SN2BClick(Sender: TObject);
    procedure SN3EClick(Sender: TObject);
    procedure SN5A8Click(Sender: TObject);
    procedure SN91Click(Sender: TObject);
    procedure SN3FClick(Sender: TObject);
    procedure SN3GClick(Sender: TObject);
    procedure SN93Click(Sender: TObject);
    procedure SN3H1Click(Sender: TObject);
    procedure SN3H2Click(Sender: TObject);
    procedure SN3H3Click(Sender: TObject);
    procedure SN3H4Click(Sender: TObject);
    procedure SN3H5Click(Sender: TObject);
    procedure SN3H6Click(Sender: TObject);
    procedure SN921Click(Sender: TObject);
    procedure SN922Click(Sender: TObject);
    procedure SN728Click(Sender: TObject);
    procedure SN726Click(Sender: TObject);
    procedure SN727Click(Sender: TObject);
    procedure SN729Click(Sender: TObject);
    procedure SN72AClick(Sender: TObject);
    procedure SN72BClick(Sender: TObject);
 
  private
     MKID:String;
     LanguageID:String;
    { Private declarations }
     //---20150817 Projoe 補上由 Nick 所提供的function log 程式
    //用法: SaveProLog(GetMKID(),TMenuItem(Sender).Name,GetUserID());
    procedure SaveProLog(AMKID: string; AFORMID: string; AUSERID: string);
    //---20150817 Projoe 修改 Menu 上面的按鈕呼叫方式
    procedure showFm(var fm: Pointer; parentClass: TPersistentClass; miname: string);
  public
    ServerIP:string;
    LIY_ERP,LIY_DD:String;
    Today: TDate;
    procedure Language();
    procedure FormLanguage(var formObj:Pointer;mainForm:string);
    procedure FormDBGridLanguage(var formObj:Pointer ;mainForm:string);
    procedure EnableFORMID();
    { Public declarations }
  end;

var
  main: Tmain;
  suser,spwd:string;

implementation

uses OrderList1, Prodsend1, PlanDate1, EmbroiderRep1, EmbroiderSend1,
  EmbroiderTrace1 , Departmenttype1, DailyRep1,
  MonthCalendar1, CapacityPer1, ModelCapacity1, OrderSpec1, Ontime1,
  Produceset1, OutputAdjust1, MonthReport1, Planoutput1,
  ProdTime1, ArticleType1, OrderCheck1, ProModel1, CalendarPre1, DailyPro1,
  Purtrace1, SafeMaterial1, MaterialSet1, MaterialSetP1, DailyActionPlan1,
  Report6011, Report6021, Report6031, Report6041,Report6081, DailyActionStardard1,
  DailyActionPlanP1, DailyActionWork1, MonthOutPutDep1, MonthOutPut1,
  OrderCheckOrd1, OrderCheckSKU1, OrderCheckCut1, OrderCheckCus1,
  OrderCheckCSD1, OrderCheckETD1, OrderImport1, ScanPrintBar1, OrderPlan1,
  ScankeyIn1, PlanDatediff1, ScanIn1, ScanScreen1, ScanScreenDep1,
  ScanCheck1, ScanAdjust3, ScanPerHour1, ScanImport1, ProdSendR1,
  ScanDailyOrd1, PayableLit_Check1, ScanRubStock1, BarcodeCheck1,
  OrderAnalysisp, Unit1, Report609p, editplanP, checkplanP, SMDDLOCKP,
  Report6032P,FunUnit,ConverseProductionSchedule1, DailyReportDetail1,
  ModelDepartment1, ModelProduction1 , MonthOutPutPOH1, FactMonthOutPutPOH1,
  PreArrange, ScheduleGantt, DailyActualHour1, ActualWord1, DepartmentDailyPPH1,
  BuyNoPPH1, RyPPH1, InWarePPH1, ScanPerHourPPH1, PlanPPHWeight1,HourArticlePPH1,
  ArticleHourPPH1, ScanInBox1, ArticlePPH1, DM3, CDScan1, CutDispatchRpt1,
  StitchingSend1, Cutting_Output_Report1, CutMaterialRpt1, CutProcessRpt1,
  ProcessingListConfirm1, PartsTracking1, CuttingMachineLoading1,
  InputOrderABC1, MonthIEOutPlan1, IEPerHour1, IEPlanOutput1, TabletReport1,
  MatchingForm1, OrderPlanReport1, PlanPOHMonth1, SMDDDispatch1, SMDDArrange1,
  InnerBoxScanTick1, InnerBoxScanTickRpt1, GBTest1, ScheduleUpload1,
  StitchingAssemblyTracking1, Article_Data1, Attendance1, ProductionPlanTracking1,
  ShoeUpperInventory1, Article_List1, SP_ModelSetup1, SP_RYTracking1,
  SP_Printing_A51, SP_Printing_C91, SP_HeatPressing_A51, SP_Embroidery1,
  Worker_Attendance1, QRScanTotal1, QRScanIn1, QRScanOut1, QRScanIsHours1,
  PrintQR1, ScanoutO1;


{$R *.dfm}
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
        SaveProLog(MKID, miname, main.Edit1.Text);
        TForm(fm).show;
        main.FormLanguage(fm,TForm(fm).Name);
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
        if not Prepared then Prepare;
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
        with query1 do
          begin
            active:=false;
            sql.Clear;
            sql.Add('update Busers set LASTDATETIME=getdate()' ) ;
            sql.add('where USERID='+''''+edit1.Text+'''' );
            execsql;
          end;
        action:=cafree;
       { assignfile(textvar,extractfilepath(application.ExeName)+'user.txt');
        rewrite(textvar);
        closefile(textvar);   }
        FuncObj.Free;
      end;
end;

procedure Tmain.FormCreate(Sender: TObject);
var sline:string;
    textvar:textfile;
begin
  //20130226 weston
  FuncObj:=TFuncObj.Create;
  FuncObj.setParameter(true,ExtractFilePath(Application.ExeName));
  ServerIP:=FuncObj.GetBDE_SERVERIP(DM2.DBshipping.AliasName);
  FuncObj.GetBDE_DATABASENAME(DM2.DBshipping.AliasName,LIY_ERP,LIY_DD);
  //指定BDE路徑
  Session.NetFileDir := ExtractFileDir(Application.ExeName);
  assignfile(textvar,extractfilepath(application.ExeName)+'user.txt');
  reset(textvar);
  readln(textvar,sline);
  if length(sline)<2 then
    begin
      showmessage('Wrong program. Pls run the main program first.');
      closefile(textvar);
      application.Terminate;
    end
    else
      begin
        suser:=copy(sline,0,pos('=',sline)-1);
        spwd:=copy(sline,pos('=',sline)+1,maxint);
        image1.Picture.LoadFromFile(extractfilepath(application.ExeName)+'factory.jpg');
      end;
  closefile(textvar);
  edit1.Text:=suser;
  //showmessage(sline);

  assignfile(textvar,extractfilepath(application.ExeName)+'Company.txt');
  reset(textvar);
  readln(textvar,sline);
  edit2.Text:=sline;
  readln(textvar,sline);//20200424第二行語言
  LanguageID:=sline;
  closefile(textvar);

  with Query1 do
  begin
    //---20150815 Projoe 將Params 改為 ParamByName 來增加可讀性
    ParamByName('userid').Value := suser;
    ParamByName('mkid').Value := '09';  MKID:='09';
    ParamByName('GSBH').Value := edit2.text;
    Active := true; //根據用戶名稱確定權限
    //
    BLimitHideQry.ParamByName('mkid').Value := '09';
    BLimitHideQry.Active:=true;
    EnableFORMID();    //20211009 功能選單
    BLimitHideQry.Active:=false;
    //
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT CONVERT(SmallDateTime, CONVERT(VARCHAR, GETDATE(), 111)) AS Date');
    Active := true;
    Today := FieldByName('Date').AsDateTime;
    Active := false;
  end;
  Language(); //20200424 UI語言
end;

//20211009 功能選單啟用或停用
procedure Tmain.EnableFORMID();
var
  i: integer;
  MenuName: String;
  tmpMenuItem: TMenuItem;
begin
  try
    for i:=0 to  main.ComponentCount-1 do
    begin
      if (main.Components[i] is TMenuItem) then
      begin
        MenuName := TMenuItem(main.Components[i]).Name;
        MenuName := Trim(Copy(MenuName, 1, 6));
        tmpMenuItem := TMenuItem(FindComponent(MenuName));
        if (tmpMenuItem <> nil) then
        begin
          if (BLimitHideQry.Locate('FORMID', MenuName, [])) then
          begin
            tmpMenuItem.Enabled := Query1.Locate('FORMID', MenuName, []);
            if (BLimitHideQry.FieldByName('YN').AsString = '2') then //Hide
              tmpMenuItem.Visible := false;
          end;
        end;
      end;
    end;
  except on E:Exception do
    begin
      ShowMessage(E.Message + ' ' + MenuName);
    end;
  end;
end;

//主功能介面語言
procedure Tmain.Language();
var i:integer;
    FieldLangeuage:String;
    tmpMenuItem:TMenuItem;
begin
  if trim(LanguageID)<>'' then
  begin
    FieldLangeuage:='VCLName_'+LanguageID;
    with Query1 do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('Select ForMID,'+FieldLangeuage+' as Langeuage from BLimit WHERE  MKID = '''+MKID+'''  ');
      Active:=true;
    end;
    for i:=0 to Query1.RecordCount-1 do
    begin
      tmpMenuItem:=TMenuItem(FindComponent(Query1.FieldByName('ForMID').AsString));
      if tmpMenuItem<>nil then
      begin
        if Query1.FieldByName('Langeuage').AsString<>'' then
        tmpMenuItem.Caption:=Query1.FieldByName('Langeuage').AsString;
      end;
      Query1.Next;
    end;
  end;
end;

//子Form功能介面語言
procedure Tmain.FormLanguage(var formObj:Pointer ;mainForm:string);
var i:integer;
    FieldLangeuage:String;
    //
    tmpLabel:TLabel;
    tmpButton:TButton;
    tmpMenuItem:TMenuItem;
    tmpCheckBox:TCheckBox;
    tmpRadioButton:TRadioButton;
    tmpTabSheet:TTabSheet;
    tmpTGroupBox:TGroupBox;     
    Obj:TObject;
begin
  if trim(LanguageID)<>'' then                                  
  begin
    FieldLangeuage:='VCLName_'+LanguageID;
    with Query1 do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('Select VCLID,'+FieldLangeuage+' as Langeuage from BLanguage WHERE  MKID = '''+MKID+''' and mainForm='''+mainForm+''' ');
      Active:=true;
    end;
    for i:=0 to Query1.RecordCount-1 do
    begin
      if Query1.FieldByName('Langeuage').AsString<>'' then
      begin
        Obj:=TForm(formObj).FindComponent(Query1.FieldByName('VCLID').AsString);
        if Obj<>nil then
        begin
          if Obj is TLabel then
          begin
             tmpLabel := (Obj as TLabel);
             tmpLabel.Caption:=Query1.FieldByName('Langeuage').AsString;
          end;
          if Obj is TButton then
          begin
             tmpButton := (Obj as TButton);
             tmpButton.Caption:=Query1.FieldByName('Langeuage').AsString;
          end;
          if Obj is TMenuItem then
          begin
            tmpMenuItem := (Obj as TMenuItem);
            tmpMenuItem.Caption:=Query1.FieldByName('Langeuage').AsString;
          end;
          if Obj is TCheckBox then
          begin
            tmpCheckBox := (Obj as TCheckBox);
            tmpCheckBox.Caption:=Query1.FieldByName('Langeuage').AsString;
          end;
          if Obj is TRadioButton then
          begin
            tmpRadioButton := (Obj as TRadioButton);
            tmpRadioButton.Caption:=Query1.FieldByName('Langeuage').AsString;
          end;
          if Obj is TTabSheet then
          begin
            tmpTabSheet := (Obj as TTabSheet);
            tmpTabSheet.Caption:=Query1.FieldByName('Langeuage').AsString;
          end;
          if Obj is TGroupBox then
          begin
            tmpTGroupBox:= (Obj as TGroupBox);
            tmpTGroupBox.Caption:=Query1.FieldByName('Langeuage').AsString;
          end;
        end;
      end;
      Query1.Next;
    end;
    //
    Query1.Active:=false;
    FormDBGridLanguage(formObj,mainForm);
  end;
end;

//子Form功能DBGrid 或 DGBridEh 介面語言
procedure Tmain.FormDBGridLanguage(var formObj:Pointer ;mainForm:string);
var i,j:integer;
    FieldLangeuage:String;
    //
    tmpDBGrid:TDBGrid;
    tmpDBridEh:TDBGridEh;
    Obj:TObject;
begin
  if trim(LanguageID)<>'' then
  begin
    FieldLangeuage:='VCLName_'+LanguageID;
    with Query1 do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('Select VCLID,FieldName,'+FieldLangeuage+' as Langeuage from BLanguage_DBGrid WHERE  MKID = '''+MKID+''' and mainForm='''+mainForm+''' order by VCLID ');
      Active:=true;
    end;
    for i:=0 to Query1.RecordCount-1 do
    begin
      if Query1.FieldByName('Langeuage').AsString<>'' then
      begin
        Obj:=TForm(formObj).FindComponent(Query1.FieldByName('VCLID').AsString);
        if Obj<>nil then
        begin
          if Obj is TDBGrid then
          begin
             tmpDBGrid := (Obj as TDBGrid);
             for j:=0 to tmpDBGrid.Columns.Count-1 do
             begin
               if tmpDBGrid.Columns[j].FieldName=Query1.FieldByName('FieldName').AsString then
               begin
                  tmpDBGrid.Columns[j].Title.Caption:=Query1.FieldByName('Langeuage').AsString;
                  break;
               end;
             end;
          end;
          if Obj is TDBGridEh then
          begin
             tmpDBridEh := (Obj as TDBGridEh);
             for j:=0 to tmpDBridEh.Columns.Count-1 do
             begin
               if tmpDBridEh.Columns[j].FieldName=Query1.FieldByName('FieldName').AsString then
               begin
                  tmpDBridEh.Columns[j].Title.Caption:=Query1.FieldByName('Langeuage').AsString;
                  break;
               end;
             end;
          end;
        end;
      end;
      Query1.Next;
    end;
    //
    Query1.Active:=false;
  end;
end;

procedure Tmain.SN11Click(Sender: TObject);
begin
  showFm(Pointer(OrderList), TOrderList, TMenuItem(Sender).Name);
end;

procedure Tmain.SN14Click(Sender: TObject);
begin
  showFm(Pointer(SafeMaterial), TSafeMaterial, TMenuItem(Sender).Name);
end;

procedure Tmain.SN22Click(Sender: TObject);
begin
  showFm(Pointer(ProdSend), TProdSend, TMenuItem(Sender).Name);
end;

procedure Tmain.SN23Click(Sender: TObject);
begin
  showFm(Pointer(PlanDate), TPlanDate, TMenuItem(Sender).Name);
end;

procedure Tmain.SN41Click(Sender: TObject);
begin
  showFm(Pointer(EmbroiderRep), TEmbroiderRep, TMenuItem(Sender).Name);
end;

procedure Tmain.SN42Click(Sender: TObject);
begin
  showFm(Pointer(EmbroiderSend), TEmbroiderSend, TMenuItem(Sender).Name);
end;

procedure Tmain.SN43Click(Sender: TObject);
begin
  showFm(Pointer(EmbroiderTrace), TEmbroiderTrace, TMenuItem(Sender).Name);
end;

procedure Tmain.SN21Click(Sender: TObject);
begin
 showFm(Pointer(ProductionOrder), TProductionOrder, TMenuItem(Sender).Name);
end;

procedure Tmain.SN51Click(Sender: TObject);
begin
  showFm(Pointer(CalendarPre), TCalendarPre, TMenuItem(Sender).Name);
  {if Departmenttype<>nil then
  begin
    Departmenttype.show;
    Departmenttype.windowstate:=wsmaximized;
  end
  else begin
    Departmenttype:=TDepartmenttype.create(self);
    Departmenttype.show;
  end;}
end;

procedure Tmain.SN53Click(Sender: TObject);
begin
  {if DailyRep<>nil then
  begin
    DailyRep.show;
    DailyRep.windowstate:=wsmaximized;
  end
  else begin
    DailyRep:=TDailyRep.create(self);
    DailyRep.show;
  end;}
end;

procedure Tmain.SN35Click(Sender: TObject);
begin
  showFm(Pointer(MonthCalendar), TMonthCalendar, TMenuItem(Sender).Name);
end;

procedure Tmain.SN36Click(Sender: TObject);
begin
  showFm(Pointer(CapacityPer), TCapacityPer, TMenuItem(Sender).Name);
end;
procedure Tmain.SN12Click(Sender: TObject);
begin
  showFm(Pointer(OrderSpec), TOrderSpec, TMenuItem(Sender).Name);
end;

procedure Tmain.SN52Click(Sender: TObject);
begin
  showFm(Pointer(OnTime), TOnTime, TMenuItem(Sender).Name);
end;

procedure Tmain.SN57Click(Sender: TObject);
begin
  showFm(Pointer(OutputAdjust), TOutputAdjust, TMenuItem(Sender).Name);
end;

procedure Tmain.SN54Click(Sender: TObject);
begin
//  showFm(Pointer(MonthReport), TMonthReport, TMenuItem(Sender).Name);
end;

procedure Tmain.SN71Click(Sender: TObject);
begin
  showFm(Pointer(ScanPrintBar), TScanPrintBar, TMenuItem(Sender).Name);
end;

procedure Tmain.SN73Click(Sender: TObject);
begin
  showFm(Pointer(ScanAdjust2), TScanAdjust2, TMenuItem(Sender).Name);
end;

procedure Tmain.SN75Click(Sender: TObject);
begin
  showFm(Pointer(ScanScreen), TScanScreen, TMenuItem(Sender).Name);
end;

procedure Tmain.SN76Click(Sender: TObject);
begin
  showFm(Pointer(ScanScreenDep), TScanScreenDep, TMenuItem(Sender).Name);
end;

procedure Tmain.SN74Click(Sender: TObject);
begin
  showFm(Pointer(ScankeyIn), TScankeyIn, TMenuItem(Sender).Name);
end;

procedure Tmain.SN37Click(Sender: TObject);
begin
  showFm(Pointer(PlanOutPut), TPlanOutPut, TMenuItem(Sender).Name);
end;

procedure Tmain.SN24Click(Sender: TObject);
begin
  showFm(Pointer(ProdTime), TProdTime, TMenuItem(Sender).Name);
end;

procedure Tmain.SN25Click(Sender: TObject);
begin
  showFm(Pointer(ArticleType), TArticleType, TMenuItem(Sender).Name);
end;

procedure Tmain.SN26Click(Sender: TObject);
begin  
  showFm(Pointer(Outputadjust), TOutputadjust, TMenuItem(Sender).Name);
end;

procedure Tmain.SN58Click(Sender: TObject);
begin
  showFm(Pointer(DailyPro), TDailyPro, TMenuItem(Sender).Name);
end;

procedure Tmain.SN13Click(Sender: TObject);
begin
  showFm(Pointer(Purtrace), TPurtrace, TMenuItem(Sender).Name);
end;

procedure Tmain.SN15Click(Sender: TObject);
begin
  showFm(Pointer(MaterialSet), TMaterialSet, TMenuItem(Sender).Name);
end;

procedure Tmain.SN28Click(Sender: TObject);
begin
  showFm(Pointer(MaterialSetP), TMaterialSetP, TMenuItem(Sender).Name);
end;

procedure Tmain.SN531Click(Sender: TObject);
begin
  showFm(Pointer(DailyActionPlan), TDailyActionPlan, TMenuItem(Sender).Name);
end;

procedure Tmain.SN601Click(Sender: TObject);
begin
  showFm(Pointer(Report601), TReport601, TMenuItem(Sender).Name);
end;

procedure Tmain.SN602Click(Sender: TObject);             
begin
  showFm(Pointer(Report602), TReport602, TMenuItem(Sender).Name);
end;

procedure Tmain.SN604Click(Sender: TObject);
begin
  if Report604<>nil then
  begin
    Report604.show;
    Report604.windowstate:=wsmaximized;
    report604.Label1.Caption:='After This Year';
    report604.datamode.itemindex:=0;
  end
  else
    begin
      Report604:=TReport604.create(self);
      Report604.show;
      report604.Label1.Caption:='After This Year';
      report604.datamode.itemindex:=0;
    end;
end;

procedure Tmain.SN532Click(Sender: TObject);
begin
  showFm(Pointer(DailyActionStardard), TDailyActionStardard, TMenuItem(Sender).Name);
end;

procedure Tmain.SN534Click(Sender: TObject);
begin
  showFm(Pointer(DailyActionPlanP), TDailyActionPlanP, TMenuItem(Sender).Name);
end;

procedure Tmain.SN533Click(Sender: TObject);
begin
  showFm(Pointer(DailyActionWork), TDailyActionWork, TMenuItem(Sender).Name);
end;

procedure Tmain.SN542Click(Sender: TObject);
begin
  showFm(Pointer(MonthOutPutDep), TMonthOutPutDep, TMenuItem(Sender).Name);
end;

procedure Tmain.SN541Click(Sender: TObject);
begin
  showFm(Pointer(MonthOutPut), TMonthOutPut, TMenuItem(Sender).Name);
end;

procedure Tmain.SN543Click(Sender: TObject);
begin
  showFm(Pointer(Report601), TReport601, TMenuItem(Sender).Name);
end;

procedure Tmain.SN551Click(Sender: TObject);
begin
  showFm(Pointer(OrderCheckOrd), TOrderCheckOrd, TMenuItem(Sender).Name);
end;

procedure Tmain.SN552Click(Sender: TObject);
begin
  showFm(Pointer(OrderCheckSKU), TOrderCheckSKU, TMenuItem(Sender).Name);

end;

procedure Tmain.SN553Click(Sender: TObject);
begin
  showFm(Pointer(OrderCheckCut), TOrderCheckCut, TMenuItem(Sender).Name);
end;

procedure Tmain.SN554Click(Sender: TObject);
begin
  showFm(Pointer(OrderCheckCus), TOrderCheckCus, TMenuItem(Sender).Name);
end;

procedure Tmain.SN555Click(Sender: TObject);
begin
  showFm(Pointer(OrderCheckCSD), TOrderCheckCSD, TMenuItem(Sender).Name);
end;

procedure Tmain.SN556Click(Sender: TObject);
begin
  showFm(Pointer(OrderCheckETD), TOrderCheckETD, TMenuItem(Sender).Name);
end;

procedure Tmain.SN27Click(Sender: TObject);
begin
  showFm(Pointer(OrderImport), TOrderImport, TMenuItem(Sender).Name);
end;

procedure Tmain.SN38Click(Sender: TObject);
begin
  showFm(Pointer(OrderPlan), TOrderPlan, TMenuItem(Sender).Name);
end;

procedure Tmain.SN29Click(Sender: TObject);
begin
  showFm(Pointer(PlanDatediff), TPlanDatediff, TMenuItem(Sender).Name);
end;

procedure Tmain.SN77Click(Sender: TObject);
begin
  showFm(Pointer(ScanCheck), TScanCheck, TMenuItem(Sender).Name);
end;

procedure Tmain.SN7801Click(Sender: TObject);
begin
  showFm(Pointer(ScanPerHour), TScanPerHour, TMenuItem(Sender).Name);
end;

procedure Tmain.SN81Click(Sender: TObject);
begin
  showFm(Pointer(ScanImport), TScanImport, TMenuItem(Sender).Name);
end;

procedure Tmain.SN32Click(Sender: TObject);
begin
  showFm(Pointer(ProdSendR), TProdSendR, TMenuItem(Sender).Name);
end;

procedure Tmain.SN7802Click(Sender: TObject);
begin
  showFm(Pointer(ScanDailyOrd), TScanDailyOrd, TMenuItem(Sender).Name);
end;

procedure Tmain.SN31Click(Sender: TObject);
begin
  showFm(Pointer(PayableLit_Check), TPayableLit_Check, TMenuItem(Sender).Name);
end;

procedure Tmain.SN391Click(Sender: TObject);
begin
  showFm(Pointer(editplan), Teditplan, TMenuItem(Sender).Name);
end;

procedure Tmain.SN7803Click(Sender: TObject);
begin
  showFm(Pointer(ScanRubStock), TScanRubStock, TMenuItem(Sender).Name);
end;

procedure Tmain.SN59Click(Sender: TObject);
begin
  showFm(Pointer(BarcodeCheck), TBarcodeCheck, TMenuItem(Sender).Name);
end;

procedure Tmain.SN607Click(Sender: TObject);
begin
  showFm(Pointer(orderanalysis), Torderanalysis, TMenuItem(Sender).Name);
end;

procedure Tmain.SN605Click(Sender: TObject);
begin
  if Report604<>nil then
  begin
    Report604.show;
    Report604.windowstate:=wsmaximized;
    report604.Label1.Caption:='In This Year';
    report604.datamode.itemindex:=1;
  end
  else
    begin
      Report604:=TReport604.create(self);
      Report604.show;
      report604.Label1.Caption:='In This Year';
      report604.datamode.itemindex:=1;
    end;
end;

procedure Tmain.SN606Click(Sender: TObject);
begin
  if Report604<>nil then
  begin
    Report604.show;
    Report604.windowstate:=wsmaximized;
    report604.Label1.Caption:='In This Month';
    report604.datamode.itemindex:=2;
  end
  else
    begin
      Report604:=TReport604.create(self);
      Report604.show;
      report604.Label1.Caption:='In This Month';
      report604.datamode.itemindex:=2;
    end;
end;

procedure Tmain.SN608Click(Sender: TObject);
begin
  showFm(Pointer(Report608), TReport608, TMenuItem(Sender).Name);
end;

procedure Tmain.SN609Click(Sender: TObject);
begin
  showFm(Pointer(Report609), TReport609, TMenuItem(Sender).Name);
end;


procedure Tmain.SN392Click(Sender: TObject);
begin
  showFm(Pointer(checkplan), Tcheckplan, TMenuItem(Sender).Name);
end;

procedure Tmain.SN3AClick(Sender: TObject);
begin
  showFm(Pointer(SMDDLOCK), TSMDDLOCK, TMenuItem(Sender).Name);
end;

procedure Tmain.SN6031Click(Sender: TObject);
begin
  showFm(Pointer(Report603), TReport603, TMenuItem(Sender).Name);
end;

procedure Tmain.SN6032Click(Sender: TObject);
begin
  showFm(Pointer(Report6032), TReport6032, TMenuItem(Sender).Name);
end;

procedure Tmain.SN544Click(Sender: TObject);
begin
  showFm(Pointer(ConverseProductionSchedule), TConverseProductionSchedule, TMenuItem(Sender).Name);
end;

procedure Tmain.SN535Click(Sender: TObject);
begin
  showFm(Pointer(DailyReportDetail), TDailyReportDetail, TMenuItem(Sender).Name);
end;

procedure Tmain.SN331Click(Sender: TObject);
begin
   showFm(Pointer(ModelCapacity), TModelCapacity, TMenuItem(Sender).Name);
end;

procedure Tmain.SN332Click(Sender: TObject);
begin
  showFm(Pointer(ModelDepartment), TModelDepartment, TMenuItem(Sender).Name);
end;

procedure Tmain.SN333Click(Sender: TObject);
begin
 showFm(Pointer(ModelProduction), TModelProduction, TMenuItem(Sender).Name)
end;

procedure Tmain.SN545Click(Sender: TObject);
begin
  showFm(Pointer(MonthOutPutPOH), TMonthOutPutPOH, TMenuItem(Sender).Name)
end;

procedure Tmain.SN546Click(Sender: TObject);
begin
  showFm(Pointer(FactMonthOutPutPOH), TFactMonthOutPutPOH, TMenuItem(Sender).Name)
end;

procedure Tmain.SN3BClick(Sender: TObject);
begin
  showFm(Pointer(F_PreArrange), TF_PreArrange, TMenuItem(Sender).Name)
end;

procedure Tmain.SN3CClick(Sender: TObject);
begin
  showFm(Pointer(F_ScheduleGantt), TF_ScheduleGantt, TMenuItem(Sender).Name)
end;

procedure Tmain.SN2A1Click(Sender: TObject);
begin
  showFm(Pointer(DailyActualHour), TDailyActualHour, TMenuItem(Sender).Name)
end;

procedure Tmain.SN2A2Click(Sender: TObject);
begin
  showFm(Pointer(ActualWord), TActualWord, TMenuItem(Sender).Name)
end;

procedure Tmain.SN547Click(Sender: TObject);
begin
  showFm(Pointer(DepartmentDailyPPH), TDepartmentDailyPPH, TMenuItem(Sender).Name)
end;

procedure Tmain.SN6101Click(Sender: TObject);
begin
  showFm(Pointer(BuyNoPPH), TBuyNoPPH, TMenuItem(Sender).Name)
end;

procedure Tmain.SN6102Click(Sender: TObject);
begin
  showFm(Pointer(RyPPH), TRyPPH, TMenuItem(Sender).Name)
end;

procedure Tmain.SN6103Click(Sender: TObject);
begin
  showFm(Pointer(InWarePPH), TInWarePPH, TMenuItem(Sender).Name)
end;

procedure Tmain.SN7804Click(Sender: TObject);
begin
  showFm(Pointer(ScanPerHourPPH), TScanPerHourPPH, TMenuItem(Sender).Name)
end;

procedure Tmain.SN6104Click(Sender: TObject);
begin
  showFm(Pointer(PlanPPHWeight), TPlanPPHWeight, TMenuItem(Sender).Name)
end;

procedure Tmain.SN7805Click(Sender: TObject);
begin
  showFm(Pointer(HourArticlePPH), THourArticlePPH, TMenuItem(Sender).Name)
end;

procedure Tmain.SN7806Click(Sender: TObject);
begin
  showFm(Pointer(ArticleHourPPH), TArticleHourPPH, TMenuItem(Sender).Name)
end;

procedure Tmain.SN722Click(Sender: TObject);
begin
  showFm(Pointer(ScanInBox), TScanInBox, TMenuItem(Sender).Name)
end;

procedure Tmain.SN721Click(Sender: TObject);
begin
  showFm(Pointer(ScanIn), TScanIn, TMenuItem(Sender).Name);
end;

procedure Tmain.SN611Click(Sender: TObject);
begin
   showFm(Pointer(ArticlePPH), TArticlePPH, TMenuItem(Sender).Name);
end;

procedure Tmain.SN723Click(Sender: TObject);
begin
  showFm(Pointer(CDScan), TCDScan, TMenuItem(Sender).Name);
end;

procedure Tmain.SN5A2Click(Sender: TObject);
begin
  showFm(Pointer(CutDispatchRpt), TCutDispatchRpt, TMenuItem(Sender).Name);
end;

procedure Tmain.SN5A3Click(Sender: TObject);
begin
  showFm(Pointer(StitchingSend), TStitchingSend, TMenuItem(Sender).Name);
end;

procedure Tmain.SN5A4Click(Sender: TObject);
begin
  showFm(Pointer(Cutting_Output_Report), TCutting_Output_Report, TMenuItem(Sender).Name);
end;

procedure Tmain.SN5A1Click(Sender: TObject);
begin
  showFm(Pointer(CutMaterialRpt), TCutMaterialRpt, TMenuItem(Sender).Name);
end;

procedure Tmain.SN5A5Click(Sender: TObject);
begin
  showFm(Pointer(CutProcessRpt), TCutProcessRpt, TMenuItem(Sender).Name);
end;

procedure Tmain.SN724Click(Sender: TObject);
begin
  showFm(Pointer(ProcessingListConfirm), TProcessingListConfirm, TMenuItem(Sender).Name);
end;

procedure Tmain.SN5A6Click(Sender: TObject);
begin
  showFm(Pointer(PartsTracking), TPartsTracking, TMenuItem(Sender).Name);
end;

procedure Tmain.SN5A7Click(Sender: TObject);
begin
  showFm(Pointer(CuttingMachineLoading), TCuttingMachineLoading, TMenuItem(Sender).Name);
end;

procedure Tmain.SN2A3Click(Sender: TObject);
begin
  showFm(Pointer(InputOrderABC), TInputOrderABC, TMenuItem(Sender).Name);
end;

procedure Tmain.SN548Click(Sender: TObject);
begin
  showFm(Pointer(MonthIEOutPlan), TMonthIEOutPlan, TMenuItem(Sender).Name);
end;

procedure Tmain.SN7807Click(Sender: TObject);
begin
  showFm(Pointer(IEPerHour), TIEPerHour, TMenuItem(Sender).Name);
end;

procedure Tmain.SN2A4Click(Sender: TObject);
begin
  showFm(Pointer(IEPlanOutput), TIEPlanOutput, TMenuItem(Sender).Name);
end;

procedure Tmain.SN562Click(Sender: TObject);
begin
  showFm(Pointer(MatchingForm), TMatchingForm, TMenuItem(Sender).Name);
end;

procedure Tmain.SN561Click(Sender: TObject);
begin
  showFm(Pointer(Produceset), TProduceset, TMenuItem(Sender).Name);
end;

procedure Tmain.SN6033Click(Sender: TObject);
begin
  showFm(Pointer(OrderPlanReport), TOrderPlanReport, TMenuItem(Sender).Name);
end;

procedure Tmain.SN6105Click(Sender: TObject);
begin
  showFm(Pointer(PlanPOHMonth), TPlanPOHMonth, TMenuItem(Sender).Name);
end;

procedure Tmain.SN3D2Click(Sender: TObject);
begin
  showFm(Pointer(SMDDDispatch), TSMDDDispatch, TMenuItem(Sender).Name);

end;

procedure Tmain.SN3D1Click(Sender: TObject);
begin
   showFm(Pointer(SMDDArrange), TSMDDArrange, TMenuItem(Sender).Name);
end;

procedure Tmain.SN612Click(Sender: TObject);
begin
   showFm(Pointer(TabletReport), TTabletReport, TMenuItem(Sender).Name);
end;

procedure Tmain.SN725Click(Sender: TObject);
begin
   showFm(Pointer(InnerBoxScanTick), TInnerBoxScanTick, TMenuItem(Sender).Name);
end;

procedure Tmain.SN613Click(Sender: TObject);
begin
   showFm(Pointer(InnerBoxScanTickRpt), TInnerBoxScanTickRpt, TMenuItem(Sender).Name);
end;

procedure Tmain.FormShow(Sender: TObject);
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

procedure Tmain.SN2BClick(Sender: TObject);
begin
   showFm(Pointer(GBTest), TGBTest, TMenuItem(Sender).Name);
end;

procedure Tmain.SN3EClick(Sender: TObject);
begin
  showFm(Pointer(ScheduleUpload), TScheduleUpload, TMenuItem(Sender).Name);
end;

procedure Tmain.SN5A8Click(Sender: TObject);
begin
  showFm(Pointer(StitchingAssemblyTracking), TStitchingAssemblyTracking, TMenuItem(Sender).Name);
end;

procedure Tmain.SN91Click(Sender: TObject);
begin
  showFm(Pointer(Article_Data), TArticle_Data, TMenuItem(Sender).Name);
end;

procedure Tmain.SN3FClick(Sender: TObject);
begin
  showFm(Pointer(ProductionPlanTracking), TProductionPlanTracking, TMenuItem(Sender).Name);
end;

procedure Tmain.SN3GClick(Sender: TObject);
begin
  showFm(Pointer(ShoeUpperInventory), TShoeUpperInventory, TMenuItem(Sender).Name);
end;

procedure Tmain.SN93Click(Sender: TObject);
begin
  showFm(Pointer(Article_List), TArticle_List, TMenuItem(Sender).Name);
end;

procedure Tmain.SN3H1Click(Sender: TObject);
begin
  showFm(Pointer(SP_ModelSetup), TSP_ModelSetup, TMenuItem(Sender).Name);
end;

procedure Tmain.SN3H2Click(Sender: TObject);
begin
  showFm(Pointer(SP_RYTracking), TSP_RYTracking, TMenuItem(Sender).Name);
end;

procedure Tmain.SN3H3Click(Sender: TObject);
begin
  showFm(Pointer(SP_Printing_A5), TSP_Printing_A5, TMenuItem(Sender).Name);
end;

procedure Tmain.SN3H4Click(Sender: TObject);
begin
  showFm(Pointer(SP_Printing_C9), TSP_Printing_C9, TMenuItem(Sender).Name);
end;

procedure Tmain.SN3H5Click(Sender: TObject);
begin
  showFm(Pointer(SP_HeatPressing_A5), TSP_HeatPressing_A5, TMenuItem(Sender).Name);
end;

procedure Tmain.SN3H6Click(Sender: TObject);
begin
  showFm(Pointer(SP_Embroidery), TSP_Embroidery, TMenuItem(Sender).Name);
end;

procedure Tmain.SN921Click(Sender: TObject);
begin
  showFm(Pointer(Attendance), TAttendance, TMenuItem(Sender).Name);
end;

procedure Tmain.SN922Click(Sender: TObject);
begin
  showFm(Pointer(Worker_Attendance), TWorker_Attendance, TMenuItem(Sender).Name);
end;
procedure Tmain.SN728Click(Sender: TObject);
begin
  showFm(Pointer(QRScanTotal), TQRScanTotal, TMenuItem(Sender).Name);
end;

procedure Tmain.SN726Click(Sender: TObject);
begin
  showFm(Pointer(QRScanIn), TQRScanIn, TMenuItem(Sender).Name);
end;
procedure Tmain.SN727Click(Sender: TObject);
begin
  showFm(Pointer(QRScanOut), TQRScanOut, TMenuItem(Sender).Name);
end;

procedure Tmain.SN729Click(Sender: TObject);
begin
   showFm(Pointer(QRScanIsHours), TQRScanIsHours, TMenuItem(Sender).Name);
end;

procedure Tmain.SN72AClick(Sender: TObject);
begin
   showFm(Pointer(PrintQR), TPrintQR, TMenuItem(Sender).Name);
end;

procedure Tmain.SN72BClick(Sender: TObject);
begin
  showFm(Pointer(ScanoutO), TScanoutO, TMenuItem(Sender).Name);
end;

end.
