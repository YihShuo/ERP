unit main1;

interface

uses

  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, jpeg, ExtCtrls, StdCtrls, DB, DBTables, ComCtrls, DBGridEh, DBGridS;

type
  Tmain = class(TForm)
    MainMenu1: TMainMenu;
    SN1: TMenuItem;
    SN2: TMenuItem;
    SN3: TMenuItem;
    SN21: TMenuItem;
    SN23: TMenuItem;
    SN11: TMenuItem;
    Image1: TImage;
    Edit1: TEdit;
    Query1: TQuery;
    Edit2: TEdit;
    N12DeffCode1: TMenuItem;
    N13SPCSetup1: TMenuItem;
    SN31: TMenuItem;
    SN32: TMenuItem;
    N14DeffCodeCollate1: TMenuItem;
    N15ComupteSetup1: TMenuItem;
    SN5: TMenuItem;
    SN6: TMenuItem;
    SN61: TMenuItem;
    SN62: TMenuItem;
    SN63: TMenuItem;
    SN4: TMenuItem;
    SN41: TMenuItem;
    SN42: TMenuItem;
    SN33: TMenuItem;
    SN34: TMenuItem;
    SN51: TMenuItem;
    SN52: TMenuItem;
    SN53: TMenuItem;
    SN54: TMenuItem;
    SN55: TMenuItem;
    SN57: TMenuItem;
    SN58: TMenuItem;
    SN59: TMenuItem;
    SN56: TMenuItem;
    SN5A: TMenuItem;
    SN5B: TMenuItem;
    SN7: TMenuItem;
    SN71: TMenuItem;
    SN711: TMenuItem;
    SN72: TMenuItem;
    SN5C: TMenuItem;
    SN712: TMenuItem;
    SN16: TMenuItem;
    SN721: TMenuItem;
    SN722: TMenuItem;
    SN723: TMenuItem;
    SN724: TMenuItem;
    SN73: TMenuItem;
    SN75: TMenuItem;
    BLimitHideQry: TQuery;
    SN5D: TMenuItem;
    SN5E: TMenuItem;
    SN36: TMenuItem;
    SN37: TMenuItem;
    SN35: TMenuItem;
    SN38: TMenuItem;
    SN76: TMenuItem;
    SN77: TMenuItem;
    SN5F: TMenuItem;
    SN78: TMenuItem;
    SN79: TMenuItem;
    SN7A: TMenuItem;
    SN8: TMenuItem;
    SN811: TMenuItem;
    SN43: TMenuItem;
    SN44: TMenuItem;
    SN45: TMenuItem;
    SN46: TMenuItem;
    SN39: TMenuItem;
    SN391: TMenuItem;
    SN392: TMenuItem;
    SN74: TMenuItem;
    SN5G: TMenuItem;
    SN5G1: TMenuItem;
    SN5G2: TMenuItem;
    SN5H: TMenuItem;
    SN82: TMenuItem;
    SN5I: TMenuItem;
    SN5I1: TMenuItem;
    SN5I2: TMenuItem;
    SN5I3: TMenuItem;
    SN5I4: TMenuItem;
    SN5J: TMenuItem;
    SN5J1: TMenuItem;
    SN83: TMenuItem;
    SN5J2: TMenuItem;
    SN48: TMenuItem;
    SN47: TMenuItem;
    SN472: TMenuItem;
    SN471: TMenuItem;
    SN5K: TMenuItem;
    SN49: TMenuItem;
    SN4A: TMenuItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure SN11Click(Sender: TObject);
    procedure SN51Click(Sender: TObject);
    procedure SN52Click(Sender: TObject);
    procedure SN53Click(Sender: TObject);
    procedure SN54Click(Sender: TObject);
    procedure SN55Click(Sender: TObject);
    procedure SN56Click(Sender: TObject);
    procedure SN57Click(Sender: TObject);
    procedure SN58Click(Sender: TObject);
    procedure SN59Click(Sender: TObject);
    procedure SN61Click(Sender: TObject);
    procedure SN62Click(Sender: TObject);
    procedure SN63Click(Sender: TObject);
    procedure SN41Click(Sender: TObject);
    procedure SN42Click(Sender: TObject);
    procedure SN31Click(Sender: TObject);
    procedure SN33Click(Sender: TObject);
    procedure SN32Click(Sender: TObject);
    procedure SN5AClick(Sender: TObject);
    procedure SN5BClick(Sender: TObject);
    procedure SN711Click(Sender: TObject);
    procedure SN5CClick(Sender: TObject);
    procedure SN712Click(Sender: TObject);
    procedure SN723Click(Sender: TObject);
    procedure SN721Click(Sender: TObject);
    procedure SN722Click(Sender: TObject);
    procedure SN724Click(Sender: TObject);
    procedure SN73Click(Sender: TObject);
    procedure SN74Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SN75Click(Sender: TObject);
    procedure SN5DClick(Sender: TObject);
    procedure SN5EClick(Sender: TObject);
    procedure SN36Click(Sender: TObject);
    procedure SN37Click(Sender: TObject);
    procedure SN35Click(Sender: TObject);
    procedure SN38Click(Sender: TObject);
    procedure SN76Click(Sender: TObject);
    procedure SN77Click(Sender: TObject);
    procedure SN5FClick(Sender: TObject);
    procedure SN78Click(Sender: TObject);
    procedure SN79Click(Sender: TObject);
    procedure SN7AClick(Sender: TObject);
    procedure SN811Click(Sender: TObject);
    procedure SN43Click(Sender: TObject);
    procedure SN44Click(Sender: TObject);
    procedure SN45Click(Sender: TObject);
    procedure SN46Click(Sender: TObject);
    procedure SN391Click(Sender: TObject);
    procedure SN392Click(Sender: TObject);
    procedure SN5G1Click(Sender: TObject);
    procedure SN5G2Click(Sender: TObject);
    procedure SN5HClick(Sender: TObject);
    procedure SN82Click(Sender: TObject);
    procedure SN5I1Click(Sender: TObject);
    procedure SN5I2Click(Sender: TObject);
    procedure SN5I3Click(Sender: TObject);
    procedure SN5I4Click(Sender: TObject);
    procedure SN5J1Click(Sender: TObject);
    procedure SN83Click(Sender: TObject);
    procedure SN5J2Click(Sender: TObject);
    procedure SN48Click(Sender: TObject);
    procedure SN471Click(Sender: TObject);
    procedure SN472Click(Sender: TObject);
    procedure SN5KClick(Sender: TObject);
    procedure SN49Click(Sender: TObject);
    procedure SN4AClick(Sender: TObject);

  private
    MKID: string;
    LanguageID: string;
    { Private declarations }
     //---20150817 Projoe 補上由 Nick 所提供的function log 程式
    //用法: SaveProLog(GetMKID(),TMenuItem(Sender).Name,GetUserID());
    procedure SaveProLog(AMKID: string; AFORMID: string; AUSERID: string);
    //---20150817 Projoe 修改 Menu 上面的按鈕呼叫方式
    procedure showFm(var fm: Pointer; parentClass: TPersistentClass; miname: string);
  public
    ServerIP: string;
    ImagePath: string;
    { Public declarations }
    procedure Language();
    procedure FormLanguage(var formObj: Pointer; mainForm: string);
    procedure FormDBGridLanguage(var formObj: Pointer; mainForm: string);
    procedure EnableFORMID();
  end;

var
  main: Tmain;
  suser, spwd: string;

implementation

uses DM3, QAStationP, Ontime1, QCIssue1, QCOntime1, QCDailyReport1, FeedbackWastrelOnSite,
  QCMonthlyReport1, QcDailyData1, DailyTotal1, QCQueryList1, VOC_Input1, VOC_List1, Cement1,
  Inspectp, ShoesIOP, BCSHOESP, BCSSOP, QCXXCJP, QC_BatchInputp, QC_DailyBonding1,
  FunUnit, QCFlowChart1, QC_FinishShoe_Standard_Input1, QC_FinishShoeStandard1,
  AndonInputRev1, MatQcCheck1, LeatherSummary1, DailyReport1, MatLabCheck1,
  TestItem1, Shoetest1, MaterialTest1, QCConfirmShoes1, AndonAlarmSetting1,
  Inventory_BC1, StockIn_BC1, StockOut_BC1, BGradeOrders1, RejectMaterial1,
  Claim_Report1, OutsoleInspection1, OutsoleInspectionReport1, PIList1, RCA1, MA_Inspection1,
  MA_Repacking1, MA_ActionPlan1, Stock_In_Report1, Stock_Out_Report1,
  CBY_QC1, CBYQCREPORT1, Ma_Cartons1, AndonInputRev_AE1, QC_Report1,
  QCScanReport1, QCDefectReport1, QCMonthDfect1, QCSpecialDefect1,
  R_Factory_QC1, CheckingReport1, R_Factory_QCReport1, MA_Box1,
  Inspection_report1, Single_inspection_report1, QCParamtConfig,
  RY_Inspection_Status1, Failed_Cartons_Input1;

{$R *.dfm}
//

procedure Tmain.showFm(var fm: Pointer; parentClass: TPersistentClass; miname: string); //
begin
  //Create Form and Show Form
  if parentClass <> nil then
  begin
    if fm <> nil then
    begin
      TForm(fm).windowstate := wsmaximized;
      TForm(fm).show;

    end
    else
    begin
      fm := TControlClass(parentClass).create(self);
      SaveProLog(MKID, miname, main.Edit1.Text);
      TForm(fm).windowstate := wsmaximized;
      main.FormLanguage(fm, TForm(fm).Name);
      if TForm(fm) is TAndonInputRev then
      begin
        TForm(fm).ShowModal;
        TForm(fm) := nil;
      end
      else
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
var
  sline: string;
  textvar: textfile;
  MDIChildIsExists: boolean;
  i: Integer;
begin
  //20141105 檢查子Form是否全部關閉和自動關閉流程Form
  MDIChildIsExists := false;
  for i := 0 to main.MDIChildCount - 1 do
  begin
    if main.MDIChildren[i] <> nil then
    begin
      if main.MDIChildren[i].Name = 'QCFlowChart' then
      begin
        TQCFlowChart(main.MDIChildren[i]).willClose := true;
      end
      else
      begin
        MDIChildIsExists := true;
        break;
      end;
    end;
  end;
  //
  if MDIChildIsExists = true then //20141105 修改if main.ActiveMDIChild<>nil  then
  begin
    Messagedlg('Pls close all child form first.', mtwarning, [mbOK], 0);
    action := canone;
  end
  else
  begin
    with query1 do
    begin
      active := false;
      sql.Clear;
      sql.Add('update Busers set LASTDATETIME=getdate()');
      sql.add('where USERID=' + '''' + edit1.Text + '''');
      execsql;
    end;
    action := cafree;
    FuncObj.Free;
  end;
end;

procedure Tmain.FormCreate(Sender: TObject);
var
  y, m, d: word;
  sline: string;
  textvar: textfile;
begin
  //weston 20140226
  ImagePath := '\\192.168.123.111\Develop Team\Cons+JP Team\CBY\CBY Order\CBY Orders Acceptance\';
  FuncObj := TFuncObj.Create;
  FuncObj.setParameter(true, ExtractFilePath(Application.ExeName));
  ServerIP := FuncObj.GetBDE_SERVERIP(DM2.DBshipping.AliasName);
  //
  shortdateformat := 'yyyy/MM/dd';
  decodedate(date, y, m, d);

  //指定BDE路徑
  Session.NetFileDir := ExtractFileDir(Application.ExeName);
  assignfile(textvar, extractfilepath(application.ExeName) + 'user.txt');
  reset(textvar);
  readln(textvar, sline);
  if length(sline) < 2 then
  begin
    showmessage('Wrong program. Pls run the main program first.');
    closefile(textvar);
    application.Terminate;
  end
  else
  begin
    suser := copy(sline, 0, pos('=', sline) - 1);
    spwd := copy(sline, pos('=', sline) + 1, maxint);
    image1.Picture.LoadFromFile(extractfilepath(application.ExeName) + 'factory.jpg');
  end;
  closefile(textvar);
  edit1.Text := suser;

  assignfile(textvar, extractfilepath(application.ExeName) + 'Company.txt');
  reset(textvar);
  readln(textvar, sline);
  edit2.Text := sline;
  readln(textvar, sline); //20200424第二行語言
  LanguageID := sline;
  closefile(textvar);
  with Query1 do
  begin
    ParamByName('userid').Value := suser;
    ParamByName('mkid').Value := '13';
    MKID := '13';
    ParamByName('GSBH').Value := edit2.text;
    Active := true; //根據用戶名稱確定權限
    //
    BLimitHideQry.ParamByName('mkid').Value := '13';
    BLimitHideQry.Active := true;
    EnableFORMID(); //20211009 功能選單
    BLimitHideQry.Active := false;
    //
    Active := false;
  end;
  Language();
end;

//20211009 功能選單啟用或停用
procedure Tmain.EnableFORMID();
var
  i: integer;
  MenuName: string;
  tmpMenuItem: TMenuItem;
begin
  try
    for i := 0 to main.ComponentCount - 1 do
    begin
      if main.Components[i] is TMenuItem then
      begin
        MenuName := TMenuItem(main.Components[i]).Name;
        MenuName := trim(Copy(MenuName, 1, 6));
        tmpMenuItem := TMenuItem(FindComponent(MenuName));
        if (tmpMenuItem <> nil) then
        begin
          if BLimitHideQry.Locate('FORMID', MenuName, []) then
          begin
            tmpMenuItem.enabled := Query1.Locate('FORMID', MenuName, []);
            if BLimitHideQry.FieldByName('YN').AsString = '2' then //Hide
              tmpMenuItem.visible := false;
          end;
        end;
      end;
    end;
  except
    on E: Exception do
    begin
      Showmessage(E.Message + ' ' + MenuName);
    end;
  end;
end;

procedure Tmain.Language();
var
  i: integer;
  FieldLangeuage: string;
  tmpMenuItem: TMenuItem;
begin
  if trim(LanguageID) <> '' then
  begin
    FieldLangeuage := 'VCLName_' + LanguageID;
    with Query1 do
    begin
      Active := false;
      SQL.Clear;
      SQL.Add('Select ForMID,' + FieldLangeuage + ' as Langeuage from BLimit WHERE  MKID = ''' + MKID + '''  ');
      Active := true;
    end;
    for i := 0 to Query1.RecordCount - 1 do
    begin
      tmpMenuItem := TMenuItem(FindComponent(Query1.FieldByName('ForMID').AsString));
      if tmpMenuItem <> nil then
      begin
        if Query1.FieldByName('Langeuage').AsString <> '' then
          tmpMenuItem.Caption := Query1.FieldByName('Langeuage').AsString;
      end;
      Query1.Next;
    end;
  end;
end;

//子Form功能介面語言
procedure Tmain.FormLanguage(var formObj: Pointer; mainForm: string);
var
  i: integer;
  FieldLangeuage: string;
  //
  tmpLabel: TLabel;
  tmpButton: TButton;
  tmpMenuItem: TMenuItem;
  tmpCheckBox: TCheckBox;
  tmpRadioButton: TRadioButton;
  tmpTabSheet: TTabSheet;
  Obj: TObject;
begin
  if trim(LanguageID) <> '' then
  begin
    FieldLangeuage := 'VCLName_' + LanguageID;
    with Query1 do
    begin
      Active := false;
      SQL.Clear;
      SQL.Add('Select VCLID,' + FieldLangeuage + ' as Langeuage from BLanguage WHERE  MKID = ''' + MKID + ''' and mainForm=''' +
        mainForm + ''' ');
      Active := true;
    end;
    for i := 0 to Query1.RecordCount - 1 do
    begin
      if Query1.FieldByName('Langeuage').AsString <> '' then
      begin
        Obj := TForm(formObj).FindComponent(Query1.FieldByName('VCLID').AsString);
        if Obj <> nil then
        begin
          if Obj is TLabel then
          begin
            tmpLabel := (Obj as TLabel);
            tmpLabel.Caption := Query1.FieldByName('Langeuage').AsString;
          end;
          if Obj is TButton then
          begin
            tmpButton := (Obj as TButton);
            tmpButton.Caption := Query1.FieldByName('Langeuage').AsString;
          end;
          if Obj is TMenuItem then
          begin
            tmpMenuItem := (Obj as TMenuItem);
            tmpMenuItem.Caption := Query1.FieldByName('Langeuage').AsString;
          end;
          if Obj is TCheckBox then
          begin
            tmpCheckBox := (Obj as TCheckBox);
            tmpCheckBox.Caption := Query1.FieldByName('Langeuage').AsString;
          end;
          if Obj is TRadioButton then
          begin
            tmpRadioButton := (Obj as TRadioButton);
            tmpRadioButton.Caption := Query1.FieldByName('Langeuage').AsString;
          end;
          if Obj is TTabSheet then
          begin
            tmpTabSheet := (Obj as TTabSheet);
            tmpTabSheet.Caption := Query1.FieldByName('Langeuage').AsString;
          end;
        end;
      end;
      Query1.Next;
    end;
    //
    Query1.Active := false;
    FormDBGridLanguage(formObj, mainForm);
  end;
end;

//子Form功能DBGrid 或 DGBridEh 介面語言
procedure Tmain.FormDBGridLanguage(var formObj: Pointer; mainForm: string);
var
  i, j: integer;
  FieldLangeuage: string;
  //
  tmpDBGrid: TDBGrid;
  tmpDBridEh: TDBGridEh;
  Obj: TObject;
begin
  if trim(LanguageID) <> '' then
  begin
    FieldLangeuage := 'VCLName_' + LanguageID;
    with Query1 do
    begin
      Active := false;
      SQL.Clear;
      SQL.Add('Select VCLID,FieldName,' + FieldLangeuage + ' as Langeuage from BLanguage_DBGrid WHERE  MKID = ''' + MKID +
        ''' and mainForm=''' + mainForm + ''' order by VCLID ');
      Active := true;
    end;
    for i := 0 to Query1.RecordCount - 1 do
    begin
      if Query1.FieldByName('Langeuage').AsString <> '' then
      begin
        Obj := TForm(formObj).FindComponent(Query1.FieldByName('VCLID').AsString);
        if Obj <> nil then
        begin
          if Obj is TDBGrid then
          begin
            tmpDBGrid := (Obj as TDBGrid);
            for j := 0 to tmpDBGrid.Columns.Count - 1 do
            begin
              if tmpDBGrid.Columns[j].FieldName = Query1.FieldByName('FieldName').AsString then
              begin
                tmpDBGrid.Columns[j].Title.Caption := Query1.FieldByName('Langeuage').AsString;
                break;
              end;
            end;
          end;
          if Obj is TDBGridEh then
          begin
            tmpDBridEh := (Obj as TDBGridEh);
            for j := 0 to tmpDBridEh.Columns.Count - 1 do
            begin
              if tmpDBridEh.Columns[j].FieldName = Query1.FieldByName('FieldName').AsString then
              begin
                tmpDBridEh.Columns[j].Title.Caption := Query1.FieldByName('Langeuage').AsString;
                break;
              end;
            end;
          end;
        end;
      end;
      Query1.Next;
    end;
    //
    Query1.Active := false;
  end;
end;

procedure Tmain.SN11Click(Sender: TObject);
begin
  showFm(Pointer(QAStation), TQAStation, TMenuItem(Sender).Name);
end;

procedure Tmain.SN51Click(Sender: TObject);
begin
  showFm(Pointer(QCIssue), TQCIssue, TMenuItem(Sender).Name);
end;

procedure Tmain.SN52Click(Sender: TObject);
begin
  showFm(Pointer(QCOntime), TQCOntime, TMenuItem(Sender).Name);
end;

procedure Tmain.SN53Click(Sender: TObject);
begin
  showFm(Pointer(QCDailyReport), TQCDailyReport, TMenuItem(Sender).Name);
end;

procedure Tmain.SN54Click(Sender: TObject);
begin
  showFm(Pointer(FMFeedbackWastrelOnSite), TFMFeedbackWastrelOnSite, TMenuItem(Sender).Name);
end;

procedure Tmain.SN55Click(Sender: TObject);
begin
  showFm(Pointer(QCMonthlyReport), TQCMonthlyReport, TMenuItem(Sender).Name);
end;

procedure Tmain.SN56Click(Sender: TObject);
begin
  showFm(Pointer(AndonInputRev), TAndonInputRev, TMenuItem(Sender).Name);
end;

procedure Tmain.SN57Click(Sender: TObject);
begin
  showFm(Pointer(QCDailyData), TQCDailyData, TMenuItem(Sender).Name);
end;

procedure Tmain.SN58Click(Sender: TObject);
begin
  showFm(Pointer(DailyTotal), TDailyTotal, TMenuItem(Sender).Name);
end;

procedure Tmain.SN59Click(Sender: TObject);
begin
  showFm(Pointer(QCQueryList), TQCQueryList, TMenuItem(Sender).Name);
end;

procedure Tmain.SN61Click(Sender: TObject);
begin
  showFm(Pointer(VOC_Input), TVOC_Input, TMenuItem(Sender).Name);
end;

procedure Tmain.SN62Click(Sender: TObject);
begin
  showFm(Pointer(VOC_List), TVOC_List, TMenuItem(Sender).Name);
end;

procedure Tmain.SN63Click(Sender: TObject);
begin
  showFm(Pointer(Cement), TCement, TMenuItem(Sender).Name);
end;

procedure Tmain.SN41Click(Sender: TObject);
begin
  showFm(Pointer(Inspect), TInspect, TMenuItem(Sender).Name);
  Inspect.edit1.Text := 'NO';
  sn42.Enabled := false;
end;

procedure Tmain.SN42Click(Sender: TObject);
begin
  showFm(Pointer(Inspect), TInspect, TMenuItem(Sender).Name);
  Inspect.edit1.Text := 'OK';
  sn41.Enabled := false;
end;

procedure Tmain.SN31Click(Sender: TObject);
begin
  showFm(Pointer(ShoesIO), TShoesIO, TMenuItem(Sender).Name);
end;

procedure Tmain.SN33Click(Sender: TObject);
begin
  showFm(Pointer(BCSHOES), TBCSHOES, TMenuItem(Sender).Name);
end;

procedure Tmain.SN32Click(Sender: TObject);
begin
  showFm(Pointer(BCSSO), TBCSSO, TMenuItem(Sender).Name);
end;

procedure Tmain.SN5AClick(Sender: TObject);
begin
  showFm(Pointer(QCXXCJ), TQCXXCJ, TMenuItem(Sender).Name);
end;

procedure Tmain.SN5BClick(Sender: TObject);
begin
  showFm(Pointer(QC_BatchInput), TQC_BatchInput, TMenuItem(Sender).Name);
end;

procedure Tmain.SN711Click(Sender: TObject);
begin
  showFm(Pointer(QC_DailyBonding), TQC_DailyBonding, TMenuItem(Sender).Name);
end;

procedure Tmain.SN5CClick(Sender: TObject);
begin
  showFm(Pointer(QC_FinishShoe_Standard_Input), TQC_FinishShoe_Standard_Input, TMenuItem(Sender).Name);
end;

procedure Tmain.SN712Click(Sender: TObject);
begin
  showFm(Pointer(QC_FinishShoeStandard), TQC_FinishShoeStandard, TMenuItem(Sender).Name);
end;

procedure Tmain.SN723Click(Sender: TObject);
begin
  showFm(Pointer(DailyReport), TDailyReport, TMenuItem(Sender).Name);
end;

procedure Tmain.SN721Click(Sender: TObject);
begin
  showFm(Pointer(MatQcCheck), TMatQcCheck, TMenuItem(Sender).Name);
end;                                            

procedure Tmain.SN722Click(Sender: TObject);
begin
  showFm(Pointer(LeatherSummary), TLeatherSummary, TMenuItem(Sender).Name);
end;

procedure Tmain.SN724Click(Sender: TObject);
begin
  showFm(Pointer(MatLabCheck), TMatLabCheck, TMenuItem(Sender).Name);
end;

procedure Tmain.SN73Click(Sender: TObject);
begin
  showFm(Pointer(TestItem), TTestItem, TMenuItem(Sender).Name);
end;

procedure Tmain.SN74Click(Sender: TObject);
begin
  showFm(Pointer(Shoetest), TShoetest, TMenuItem(Sender).Name);
end;

procedure Tmain.FormShow(Sender: TObject);
var
  tmpMenuItem: TMenuItem;
begin
  //自動檢查往前第三天
  if ParamCount = 2 then
  begin
    if ParamStr(1) = 'TVPanel' then
    begin
      tmpMenuItem := TMenuItem(FindComponent(ParamStr(2)));
      if tmpMenuItem <> nil then
        tmpMenuItem.Click;
    end;
  end;
end;

procedure Tmain.SN75Click(Sender: TObject);
begin
  ShowFm(Pointer(MaterialTest), TMaterialTest, TMenuItem(Sender).Name);
end;

procedure Tmain.SN5DClick(Sender: TObject);
begin
  ShowFm(Pointer(QCConfirmShoes), TQCConfirmShoes, TMenuItem(Sender).Name);
end;

procedure Tmain.SN5EClick(Sender: TObject);
begin
  ShowFm(Pointer(AndonAlarmSetting), TAndonAlarmSetting, TMenuItem(Sender).Name);
end;

procedure Tmain.SN35Click(Sender: TObject);
begin
  ShowFm(Pointer(Inventory_BC), TInventory_BC, TMenuItem(Sender).Name);
end;

procedure Tmain.SN36Click(Sender: TObject);
begin
  ShowFm(Pointer(StockIn_BC), TStockIn_BC, TMenuItem(Sender).Name);
end;

procedure Tmain.SN37Click(Sender: TObject);
begin
  ShowFm(Pointer(StockOut_BC), TStockOut_BC, TMenuItem(Sender).Name);
end;

procedure Tmain.SN38Click(Sender: TObject);
begin
  ShowFm(Pointer(BGradeOrders), TBGradeOrders, TMenuItem(Sender).Name);
end;

procedure Tmain.SN76Click(Sender: TObject);
begin
  ShowFm(Pointer(RejectMaterial), TRejectMaterial, TMenuItem(Sender).Name);
end;

procedure Tmain.SN77Click(Sender: TObject);
begin
  ShowFm(Pointer(Claim_Report), TClaim_Report, TMenuItem(Sender).Name);
end;

procedure Tmain.SN5FClick(Sender: TObject);
begin
  ShowFm(Pointer(OutsoleInspection), TOutsoleInspection, TMenuItem(Sender).Name);
end;

procedure Tmain.SN78Click(Sender: TObject);
begin
  ShowFm(Pointer(OutsoleInspectionReport), TOutsoleInspectionReport, TMenuItem(Sender).Name);
end;

procedure Tmain.SN79Click(Sender: TObject);
begin
  ShowFm(Pointer(PIList), TPIList, TMenuItem(Sender).Name);
end;

procedure Tmain.SN7AClick(Sender: TObject);
begin                                                                               
  ShowFm(Pointer(RCA), TRCA, TMenuItem(Sender).Name);
end;

procedure Tmain.SN811Click(Sender: TObject);
begin
  ShowFm(Pointer(OutsoleInspectionReport), TOutsoleInspectionReport, TMenuItem(Sender).Name);
end;

procedure Tmain.SN43Click(Sender: TObject);
begin
  ShowFm(Pointer(OutsoleInspection), TOutsoleInspection, TMenuItem(Sender).Name);
end;

procedure Tmain.SN44Click(Sender: TObject);
begin
  ShowFm(Pointer(MA_Inspection), TMA_Inspection, TMenuItem(Sender).Name);
end;

procedure Tmain.SN45Click(Sender: TObject);
begin
  ShowFm(Pointer(MA_Repacking), TMA_Repacking, TMenuItem(Sender).Name);
end;

procedure Tmain.SN46Click(Sender: TObject);
begin
  ShowFm(Pointer(MA_ActionPlan), TMA_ActionPlan, TMenuItem(Sender).Name);
end;

procedure Tmain.SN391Click(Sender: TObject);
begin
  ShowFm(Pointer(Stock_In_Report), TStock_In_Report, TMenuItem(Sender).Name);
end;

procedure Tmain.SN392Click(Sender: TObject);
begin
  ShowFm(Pointer(StockOut_BC_Report), TStockOut_BC_Report, TMenuItem(Sender).Name);
end;

procedure Tmain.SN5G1Click(Sender: TObject);
begin
  ShowFm(Pointer(CBY_QC), TCBY_QC, TMenuItem(Sender).Name);
end;

procedure Tmain.SN5G2Click(Sender: TObject);
begin
  ShowFm(Pointer(CBYQCReport), TCBYQCReport, TMenuItem(Sender).Name);
end;

procedure Tmain.SN5HClick(Sender: TObject);
begin
  ShowFm(Pointer(AndonInputRev_AE), TAndonInputRev_AE, TMenuItem(Sender).Name);
end;

procedure Tmain.SN82Click(Sender: TObject);
begin
  ShowFm(Pointer(QC_Report), TQC_Report, TMenuItem(Sender).Name);
end;

procedure Tmain.SN5I1Click(Sender: TObject);
begin
ShowFm(Pointer(QCScanReport), TQCScanReport, TMenuItem(Sender).Name);
end;

procedure Tmain.SN5I2Click(Sender: TObject);
begin
 Showfm(Pointer(QCDefectReport),TQCDefectReport,TMenuItem(Sender).Name);
end;

procedure Tmain.SN5I3Click(Sender: TObject);
begin      
Showfm(Pointer(QCMonthDefect),TQCMonthDefect,TMenuItem(Sender).Name);
end;

procedure Tmain.SN5I4Click(Sender: TObject);
begin
 Showfm(Pointer(QCSpecialDefect),TQCSpecialDefect,TMenuItem(Sender).Name);
end;

procedure Tmain.SN5J1Click(Sender: TObject);
begin
  ShowFm(Pointer(R_Factory_QC), TR_Factory_QC, TMenuItem(Sender).Name);
end;

procedure Tmain.SN83Click(Sender: TObject);
begin
  ShowFm(Pointer(CheckingReport), TCheckingReport, TMenuItem(Sender).Name);
end;

procedure Tmain.SN5J2Click(Sender: TObject);
begin
  ShowFm(Pointer(R_Factory_QCReport), TR_Factory_QCReport, TMenuItem(Sender).Name);
end;

procedure Tmain.SN48Click(Sender: TObject);
begin
  ShowFm(Pointer(MA_Box), TMA_Box, TMenuItem(Sender).Name);   
end;

procedure Tmain.SN471Click(Sender: TObject);
begin
  ShowFm(Pointer(Inspection_report), TInspection_report, TMenuItem(Sender).Name);
end;

procedure Tmain.SN472Click(Sender: TObject);
begin
  ShowFm(Pointer(Single_inspection_report), TSingle_inspection_report, TMenuItem(Sender).Name);
end;

procedure Tmain.SN5KClick(Sender: TObject);
begin
  ShowFm(Pointer(QC_Parmat_Config), TQC_Parmat_Config, TMenuItem(Sender).Name);
end;

procedure Tmain.SN49Click(Sender: TObject);
begin
  ShowFm(Pointer(RY_Inspection_Status), TRY_Inspection_Status, TMenuItem(Sender).Name);
end;

procedure Tmain.SN4AClick(Sender: TObject);
begin
  ShowFm(Pointer(Failed_Cartons_Input), TFailed_Cartons_Input, TMenuItem(Sender).Name);
end;


end.
