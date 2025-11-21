unit main1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, jpeg, ExtCtrls, StdCtrls, DB, DBTables, DBGrids, DBGridEh,
  Grids,ComCtrls;

type
  Tmain = class(TForm)
    MainMenu1: TMainMenu;
    SN6: TMenuItem;
    Image1: TImage;
    Query1: TQuery;
    Edit1: TEdit;
    Edit2: TEdit;
    SN61: TMenuItem;
    SN3: TMenuItem;
    SN34: TMenuItem;
    SN62: TMenuItem;
    SN1: TMenuItem;
    SN11: TMenuItem;
    SN12: TMenuItem;
    SN2: TMenuItem;
    SN21: TMenuItem;
    SN63: TMenuItem;
    SN22: TMenuItem;
    SN32: TMenuItem;
    SN13: TMenuItem;
    SN5: TMenuItem;
    SN51: TMenuItem;
    SN52: TMenuItem;
    SN53: TMenuItem;
    SN54: TMenuItem;
    SN541: TMenuItem;
    SN542: TMenuItem;
    SN55: TMenuItem;
    SN551: TMenuItem;
    SN552: TMenuItem;
    SN64: TMenuItem;
    SN65: TMenuItem;
    SN31: TMenuItem;
    SN312: TMenuItem;
    SN14: TMenuItem;
    SN553: TMenuItem;
    SN66: TMenuItem;
    SN56: TMenuItem;
    SN57: TMenuItem;
    SN311: TMenuItem;
    BLimitHideQry: TQuery;
    SN23: TMenuItem;
    SN35: TMenuItem;
    SN67: TMenuItem;
    SN7: TMenuItem;
    SN71: TMenuItem;
    SN72: TMenuItem;
    SN73: TMenuItem;
    SN74: TMenuItem;
    SN15: TMenuItem;
    SN75: TMenuItem;
    SN76: TMenuItem;
    SN58: TMenuItem;
    SN59: TMenuItem;
    SN591: TMenuItem;
    N5921: TMenuItem;
    SN581: TMenuItem;
    SN582: TMenuItem;
    SN583: TMenuItem;
    SN93: TMenuItem;
    N60LabelInfo: TMenuItem;
    SN601: TMenuItem;
    SN8: TMenuItem;
    SN81: TMenuItem;
    SN82: TMenuItem;
    SN584: TMenuItem;
    SN594: TMenuItem;
    SN603: TMenuItem;
    SN585: TMenuItem;
    SN595: TMenuItem;
    SN5A: TMenuItem;
    N5BColmod1: TMenuItem;
    SN5B1: TMenuItem;
    SN5B2: TMenuItem;
    SN5A1: TMenuItem;
    SN5A2: TMenuItem;
    N5B2ScanInQR1: TMenuItem;
    N5B3ReportQR1: TMenuItem;
    N5BScanCheck1: TMenuItem;
    N5B5ScnaCheckOut1: TMenuItem;
    N5B61: TMenuItem;
    N586Report1: TMenuItem;
    N596RBReport1: TMenuItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure SN61Click(Sender: TObject);
    procedure SN34Click(Sender: TObject);
    procedure SN62Click(Sender: TObject);
    procedure SN11Click(Sender: TObject);
    procedure SN12Click(Sender: TObject);
    procedure SN21Click(Sender: TObject);
    procedure SN63Click(Sender: TObject);
    procedure SN22Click(Sender: TObject);
    procedure SN32Click(Sender: TObject);
    procedure SN13Click(Sender: TObject);
    procedure SN51Click(Sender: TObject);
    procedure SN52Click(Sender: TObject);
    procedure SN53Click(Sender: TObject);
    procedure SN541Click(Sender: TObject);
    procedure SN542Click(Sender: TObject);
    procedure SN551Click(Sender: TObject);
    procedure SN552Click(Sender: TObject);
    procedure SN64Click(Sender: TObject);
    procedure SN65Click(Sender: TObject);
    procedure SN312Click(Sender: TObject);
    procedure SN14Click(Sender: TObject);
    procedure SN553Click(Sender: TObject);
    procedure SN66Click(Sender: TObject);
    procedure SN56Click(Sender: TObject);
    procedure SN57Click(Sender: TObject);
    procedure SN311Click(Sender: TObject);
    procedure SN23Click(Sender: TObject);
    procedure SN35Click(Sender: TObject);
    procedure SN67Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SN71Click(Sender: TObject);
    procedure SN72Click(Sender: TObject);
    procedure SN73Click(Sender: TObject);
    procedure SN74Click(Sender: TObject);
    procedure SN15Click(Sender: TObject);
    procedure SN75Click(Sender: TObject);
    procedure SN76Click(Sender: TObject);
    procedure SN591Click(Sender: TObject);
    procedure SN581Click(Sender: TObject);
    procedure SN582Click(Sender: TObject);
    procedure SN583Click(Sender: TObject);
    procedure N5921Click(Sender: TObject);
    procedure SN93Click(Sender: TObject);
    procedure SN601Click(Sender: TObject);
    procedure SN81Click(Sender: TObject);
    procedure SN584Click(Sender: TObject);
    procedure SN594Click(Sender: TObject);
    procedure SN603Click(Sender: TObject);
    procedure SN602Click(Sender: TObject);
    procedure SN82Click(Sender: TObject);
    procedure SN585Click(Sender: TObject);
    procedure SN595Click(Sender: TObject);
    procedure N554Click(Sender: TObject);
    procedure SN5A1Click(Sender: TObject);
    procedure SN5B1Click(Sender: TObject);
    procedure SN5A2Click(Sender: TObject);
    procedure SN5B2Click(Sender: TObject);
    procedure N5B2ScanInQR1Click(Sender: TObject);
    procedure N5B3ReportQR1Click(Sender: TObject);
    procedure N5BScanCheck1Click(Sender: TObject);
    procedure N5B5ScnaCheckOut1Click(Sender: TObject);
    procedure N5B61Click(Sender: TObject);
    procedure N586Report1Click(Sender: TObject);
    procedure N596RBReport1Click(Sender: TObject);

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
    { Public declarations }
    ServerIP:string;
    LIY_ERP,LIY_DD:String;
    procedure Language();
    procedure FormLanguage(var formObj:Pointer;mainForm:string);
    procedure FormDBGridLanguage(var formObj:Pointer ;mainForm:string);
    procedure EnableFORMID();
  end;

var
  main: Tmain;
  suser,spwd:string;
implementation
  uses RubberFlowChart1,PlanOrderSRubber1,DeliveryRubber1,FunUnit,
  Chemical_Rubber1, StaffData1, ModelData1, DataInput1, Salary1,
  EntryRubber1,OrderRubber1, RWeight1, colorsetup1, Modesetup1,
  ProductionPlan1, Keyin1, ScanIn1, KeyOut1, ScanOut1, Stornow1,
  DailyScanInStock1, BOMVN1, Foxing1, ScanOutRubber1, AnytimeRStock1,
  ScanInRevise1, RStock_Month1, RBOMM1, HokaRubberWeight1, HokaRubberProdWeight1,
  HokaRubberWeightRpt1, DM1, OutsoleInWarehouse1, OutsoleOutWarehouse1,
  OutsoleStockMonth1, OutsoleInternalFormulaList1, CheckMaterial1,
  scandata1, OutsolePrice1, Scanlabel1, FScanIn1, EVAScanIn1, EVAscanout1,
  RBLabel1, RBScanIn1, RBscanout1, LabelCompare1, RDispatch1, WorkReport1,
  RBWorkReport1, DDHMReport1, ProductionOut1, Dispatch_Report1,
  EVAWorkReport21, RBWorkReport21,ScnaOutWarehouse1,RubberLabel1,
  RubberScanOut1, RubberReport1, ScanInQR, QRReport1, ScanCheck,ScanCheckOut,
  Detailb6, EVAReport_1, RB_Report_1;


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
        if not Prepared then
          Prepare;
        ExecSQL;
      end;
  finally
    FreeAndNil(MyQuery);
  end;
end;
//
procedure Tmain.FormClose(Sender: TObject; var Action: TCloseAction);
var MDIChildIsExists:boolean;
    i:Integer;
begin
  //20141105 檢查子Form是否全部關閉和自動關閉流程Form
  MDIChildIsExists:=false;
  for i:=0 to main.MDIChildCount-1 do
  begin
    if main.MDIChildren[i]<>nil then
    begin
      if main.MDIChildren[i].Name='RubberFlowChart' then
      begin
        TRubberFlowChart(main.MDIChildren[i]).willClose:=true;
      end else
      begin
        MDIChildIsExists:=true;
        break;
      end;
    end;
  end;
  //
  if MDIChildIsExists=true then //20141105 修改if main.ActiveMDIChild<>nil  then
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
        FuncObj.Free;
  end;

end;

procedure Tmain.FormCreate(Sender: TObject);
  var sline:string;
    textvar:textfile;
begin
    //20140106
    FuncObj:=TFuncObj.Create;
    FuncObj.setParameter(true,ExtractFilePath(Application.ExeName));
    ServerIP:=FuncObj.GetBDE_SERVERIP(DM.DB1.AliasName);
    FuncObj.GetBDE_DATABASENAME(DM.DB1.AliasName,LIY_ERP,LIY_DD);
//    LIY_DD := 'TB_DD_TEST';
    //
    shortdateformat:='yyyy/MM/dd';
    {decodedate(date,y,m,d);
    if y>2020 then
    begin
      showmessage('Wrong!!!!!Contact with computer designer');
      application.terminate;
    end;}
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
    Closefile(textvar);


    with Query1 do
    begin
      //---20150817 Projoe 將Params 改為 ParamByName 來增加可讀性
      ParamByName('userid').Value := suser;
      ParamByName('mkid').Value := '17';  MKID:='17';
      ParamByName('GSBH').Value := edit2.text;
      Active := true;

//mirror temp
(*active:=false;
sql.Clear;
sql.Add('SELECT [MKID],[FORMID],''VA12'' [GSBH] ,''51308'' [USERID],''51308'' [SUSERID],');
sql.Add('''2019-04-18'' [USERDATE] FROM [BLimit] where MKID=''17''');
Active := true;*)
//
      //
      BLimitHideQry.ParamByName('mkid').Value := '17';
      BLimitHideQry.Active:=true;
      EnableFORMID();    //20211009 功能選單
      BLimitHideQry.Active:=false;
      //
      Active := false;
    end;
    Language();
end;
//20211009 功能選單啟用或停用
procedure Tmain.EnableFORMID();
var i:integer;
    MenuName:String;
    tmpMenuItem:TMenuItem;
begin
  try
   for i:=0 to  main.ComponentCount-1 do
   begin
     if main.Components[i] is TMenuItem then
     begin
        MenuName:=TMenuItem(main.Components[i]).Name;
        MenuName:=trim(Copy(MenuName,1,6));
        tmpMenuItem:=TMenuItem(FindComponent(MenuName));
        if (tmpMenuItem<>nil)  then
        begin
          if BLimitHideQry.Locate('FORMID', MenuName, []) then
          begin
             tmpMenuItem.enabled:=Query1.Locate('FORMID', MenuName, []);
             if BLimitHideQry.FieldByName('YN').AsString='2' then //Hide
             tmpMenuItem.visible:=false;
          end;
        end;
     end;
   end;
  except
    on E:Exception do
    begin
      Showmessage(E.Message+' '+MenuName);
    end;
  end;
end;

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

procedure Tmain.SN61Click(Sender: TObject);
begin
    showFm(Pointer(PlanOrderSRubber), TPlanOrderSRubber, TMenuItem(Sender).Name);
end;

procedure Tmain.SN34Click(Sender: TObject);
begin
  showFm(Pointer(DeliveryRubber), TDeliveryRubber, TMenuItem(Sender).Name);
end;

procedure Tmain.SN62Click(Sender: TObject);
begin
  showFm(Pointer(Chemical_Rubber), TChemical_Rubber, TMenuItem(Sender).Name);
end;

procedure Tmain.SN11Click(Sender: TObject);
begin
  showFm(Pointer(StaffData), TStaffData, TMenuItem(Sender).Name);
end;

procedure Tmain.SN12Click(Sender: TObject);
begin
  showFm(Pointer(ModelData), TModelData, TMenuItem(Sender).Name);
end;

procedure Tmain.SN21Click(Sender: TObject);
begin
  showFm(Pointer(DataInput), TDataInput, TMenuItem(Sender).Name)
end;

procedure Tmain.SN63Click(Sender: TObject);
begin
  showFm(Pointer(Salary), TSalary, TMenuItem(Sender).Name)
end;

procedure Tmain.SN22Click(Sender: TObject);
begin
  showFm(Pointer(EntryRubber), TEntryRubber, TMenuItem(Sender).Name)
end;

procedure Tmain.SN32Click(Sender: TObject);
begin
  showFm(Pointer(OrderRubber), TOrderRubber, TMenuItem(Sender).Name);
end;

procedure Tmain.SN13Click(Sender: TObject);
begin
  showFm(Pointer(RWeight), TRWeight, TMenuItem(Sender).Name);
end;

procedure Tmain.SN51Click(Sender: TObject);
begin
  showFm(Pointer(colorsetup), Tcolorsetup, TMenuItem(Sender).Name);
end;

procedure Tmain.SN52Click(Sender: TObject);
begin
  showFm(Pointer(modesetup), Tmodesetup, TMenuItem(Sender).Name);
end;

procedure Tmain.SN53Click(Sender: TObject);
begin
  showFm(Pointer(ProductionPlan), TProductionPlan, TMenuItem(Sender).Name);
end;

procedure Tmain.SN541Click(Sender: TObject);
begin
   showFm(Pointer(Keyin), TKeyin, TMenuItem(Sender).Name);
end;

procedure Tmain.SN542Click(Sender: TObject);
begin
   showFm(Pointer(ScanIn), TScanIn, TMenuItem(Sender).Name);
end;

procedure Tmain.SN551Click(Sender: TObject);
begin
   showFm(Pointer(KeyOut), TKeyOut, TMenuItem(Sender).Name);
end;

procedure Tmain.SN552Click(Sender: TObject);
begin
   showFm(Pointer(ScanOut), TScanOut, TMenuItem(Sender).Name);
end;

procedure Tmain.SN64Click(Sender: TObject);
begin
   showFm(Pointer(Stornow), TStornow, TMenuItem(Sender).Name);
end;

procedure Tmain.SN65Click(Sender: TObject);
begin
   showFm(Pointer(DailyScanInStock), TDailyScanInStock, TMenuItem(Sender).Name);
end;

procedure Tmain.SN312Click(Sender: TObject);
begin
   showFm(Pointer(BOMVN), TBOMVN, TMenuItem(Sender).Name);
end;

procedure Tmain.SN14Click(Sender: TObject);
begin
   showFm(Pointer(Foxing), TFoxing, TMenuItem(Sender).Name);
end;

procedure Tmain.SN553Click(Sender: TObject);
begin
   showFm(Pointer(ScanOutRubber), TScanOutRubber, TMenuItem(Sender).Name);
end;

procedure Tmain.SN66Click(Sender: TObject);
begin
   showFm(Pointer(AnytimeRStock), TAnytimeRStock, TMenuItem(Sender).Name);
end;

procedure Tmain.SN56Click(Sender: TObject);
begin
   showFm(Pointer(ScanInRevise), TScanInRevise, TMenuItem(Sender).Name);
end;

procedure Tmain.SN57Click(Sender: TObject);
begin
   showFm(Pointer(RStock_Month), TRStock_Month, TMenuItem(Sender).Name);
end;

procedure Tmain.SN311Click(Sender: TObject);
begin
   showFm(Pointer(RBOMM), TRBOMM, TMenuItem(Sender).Name);
end;

procedure Tmain.SN23Click(Sender: TObject);
begin
   showFm(Pointer(HokaRubberWeight), THokaRubberWeight, TMenuItem(Sender).Name)
end;

procedure Tmain.SN35Click(Sender: TObject);
begin
   showFm(Pointer(HokaRubberProdWeight), THokaRubberProdWeight, TMenuItem(Sender).Name)
end;

procedure Tmain.SN67Click(Sender: TObject);
begin
   showFm(Pointer(HokaRubberWeightRpt), THokaRubberWeightRpt, TMenuItem(Sender).Name)
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

procedure Tmain.SN71Click(Sender: TObject);
begin
   showFm(Pointer(OutsoleInWarehouse), TOutsoleInWarehouse, TMenuItem(Sender).Name);
end;

procedure Tmain.SN72Click(Sender: TObject);
begin
   showFm(Pointer(OutsoleOutWarehouse), TOutsoleOutWarehouse, TMenuItem(Sender).Name);
end;

procedure Tmain.SN73Click(Sender: TObject);
begin
   showFm(Pointer(OutsoleStockMonth), TOutsoleStockMonth, TMenuItem(Sender).Name);
end;

procedure Tmain.SN74Click(Sender: TObject);
begin
   showFm(Pointer(OutsoleInternalFormulaList), TOutsoleInternalFormulaList, TMenuItem(Sender).Name);
end;

procedure Tmain.SN15Click(Sender: TObject);
begin
  showFm(Pointer(CheckMaterial), TCheckMaterial, TMenuItem(Sender).Name);
end;

procedure Tmain.SN75Click(Sender: TObject);
begin
  showFm(Pointer(Scandata), TScandata, TMenuItem(Sender).Name);
end;

procedure Tmain.SN76Click(Sender: TObject);
begin
  showFm(Pointer(OutsolePrice), TOutsolePrice, TMenuItem(Sender).Name);
end;

procedure Tmain.SN591Click(Sender: TObject);
begin
  showFm(Pointer(RBLabel), TRBLabel, TMenuItem(Sender).Name);
end;

procedure Tmain.SN581Click(Sender: TObject);
begin
   showFm(Pointer(ScanLabel), TScanLabel, TMenuItem(Sender).Name);
end;

procedure Tmain.SN582Click(Sender: TObject);
begin
  showFm(Pointer(EVAScanIn), TEVAScanIn, TMenuItem(Sender).Name);
end;

procedure Tmain.SN583Click(Sender: TObject);
begin
  showFm(Pointer(EVAscanout), TEVAscanout, TMenuItem(Sender).Name);
end;

procedure Tmain.N5921Click(Sender: TObject);
begin
  showFm(Pointer(RBScanIn), TRBScanIn, TMenuItem(Sender).Name);
end;

procedure Tmain.SN93Click(Sender: TObject);
begin
showFm(Pointer(RBscanout), TRBscanout, TMenuItem(Sender).Name);
end;

procedure Tmain.SN601Click(Sender: TObject);
begin
 showFm(Pointer(LabelCompare), TLabelCompare, TMenuItem(Sender).Name);
end;

procedure Tmain.SN81Click(Sender: TObject);
begin
  showFm(Pointer(RDispatch), TRDispatch, TMenuItem(Sender).Name);
end;

procedure Tmain.SN584Click(Sender: TObject);
begin
  showFm(Pointer(EVAWorkReport), TEVAWorkReport, TMenuItem(Sender).Name);
end;

procedure Tmain.SN594Click(Sender: TObject);
begin
   showFm(Pointer(RBWorkReport), TRBWorkReport, TMenuItem(Sender).Name);
end;

procedure Tmain.SN603Click(Sender: TObject);
begin
    showFm(Pointer(DDHMReport), TDDHMReport, TMenuItem(Sender).Name);
end;

procedure Tmain.SN602Click(Sender: TObject);
begin
  showFm(Pointer(ProductionOut), TProductionOut, TMenuItem(Sender).Name);
end;

procedure Tmain.SN82Click(Sender: TObject);
begin
  showFm(Pointer(Dispatch_Report), TDispatch_Report, TMenuItem(Sender).Name);
end;

procedure Tmain.SN585Click(Sender: TObject);
begin
  showFm(Pointer(EVAWorkReport2), TEVAWorkReport2, TMenuItem(Sender).Name);
end;

procedure Tmain.SN595Click(Sender: TObject);
begin
  showFm(Pointer(RBWorkReport2), TRBWorkReport2, TMenuItem(Sender).Name);
end;

procedure Tmain.N554Click(Sender: TObject);
begin
  showFm(Pointer(ScnaOutWarehouse), TScnaOutWarehouse, TMenuItem(Sender).Name);
end;

procedure Tmain.SN5A1Click(Sender: TObject);
begin
  showFm(Pointer(RubberScanOut), TRubberScanOut, TMenuItem(Sender).Name);
end;

procedure Tmain.SN5B1Click(Sender: TObject);
begin
  showFm(Pointer(RubberLabel), TRubberLabel, TMenuItem(Sender).Name);
end;

procedure Tmain.SN5A2Click(Sender: TObject);
begin
  showFm(Pointer(RubberReport), TRubberReport, TMenuItem(Sender).Name);
end;

procedure Tmain.SN5B2Click(Sender: TObject);
begin
  showFm(Pointer(ScnaOutWarehouse), TScnaOutWarehouse, TMenuItem(Sender).Name);
end;

procedure Tmain.N5B2ScanInQR1Click(Sender: TObject);
begin
   showFm(Pointer(ScanQR), TScanQR, TMenuItem(Sender).Name);
end;

procedure Tmain.N5B3ReportQR1Click(Sender: TObject);
begin
   showFm(Pointer(QRReport), TQRReport, TMenuItem(Sender).Name);
end;

procedure Tmain.N5BScanCheck1Click(Sender: TObject);
begin
   showFm(Pointer(ScanCheck1), TScanCheck1, TMenuItem(Sender).Name);
end;

procedure Tmain.N5B5ScnaCheckOut1Click(Sender: TObject);
begin
   showFm(Pointer(ScanCheckOut1), TScanCheckOut1, TMenuItem(Sender).Name);
end;

procedure Tmain.N5B61Click(Sender: TObject);
begin
    showFm(Pointer(DetailB61), TDetailB61, TMenuItem(Sender).Name);
end;

procedure Tmain.N586Report1Click(Sender: TObject);
begin
   showFm(Pointer(EVAReport), TEVAReport, TMenuItem(Sender).Name);
end;

procedure Tmain.N596RBReport1Click(Sender: TObject);
begin
   showFm(Pointer(RBReport_1), TRBReport_1, TMenuItem(Sender).Name);
end;

end.
