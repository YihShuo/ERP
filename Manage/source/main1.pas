unit main1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, jpeg, ExtCtrls, StdCtrls, DB, DBTables, ComCtrls,DBGridS, DBGridEh, Grids;


type
  Tmain = class(TForm)
    MainMenu1: TMainMenu;
    SN1: TMenuItem;
    SN2: TMenuItem;
    SN4: TMenuItem;
    SN17: TMenuItem;
    N1: TMenuItem;
    SN21: TMenuItem;
    SN11: TMenuItem;
    Image1: TImage;
    Edit1: TEdit;
    Query1: TQuery;
    SN12: TMenuItem;
    StatusBar1: TStatusBar;
    SN22: TMenuItem;
    SN23: TMenuItem;
    SN24: TMenuItem;
    Edit2: TEdit;
    SN13: TMenuItem;
    SN14: TMenuItem;
    SN25: TMenuItem;
    SN3: TMenuItem;
    SN31: TMenuItem;
    SN221: TMenuItem;
    SN222: TMenuItem;
    SN2311: TMenuItem;
    N2321: TMenuItem;
    SN2331: TMenuItem;
    SN241: TMenuItem;
    SN242: TMenuItem;
    SN223: TMenuItem;
    SN251: TMenuItem;
    SN252: TMenuItem;
    SN253: TMenuItem;
    SN224: TMenuItem;
    SN211: TMenuItem;
    SN212: TMenuItem;
    SN225: TMenuItem;
    SN15: TMenuItem;
    SN32: TMenuItem;
    SN16: TMenuItem;
    SN213: TMenuItem;
    SN41: TMenuItem;
    SN42: TMenuItem;
    SN43: TMenuItem;
    SN44: TMenuItem;
    SN5: TMenuItem;
    SN51: TMenuItem;
    SN226: TMenuItem;
    SN52: TMenuItem;
    SN18: TMenuItem;
    SN53: TMenuItem;
    SN19: TMenuItem;
    SN54: TMenuItem;
    SN55: TMenuItem;
    SN541: TMenuItem;
    SN542: TMenuItem;
    SN543: TMenuItem;
    SN544: TMenuItem;
    SN545: TMenuItem;
    SN546: TMenuItem;
    SN553: TMenuItem;
    SN554: TMenuItem;
    SN555: TMenuItem;
    SN56: TMenuItem;
    SN35: TMenuItem;
    SN26: TMenuItem;
    SN1A: TMenuItem;
    BLimitHideQry: TQuery;
    N214: TMenuItem;
    SN6: TMenuItem;
    SN61: TMenuItem;
    procedure SN17Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure SN11Click(Sender: TObject);
    procedure SN12Click(Sender: TObject);
    procedure SN13Click(Sender: TObject);
    procedure SN14Click(Sender: TObject);
    procedure SN31Click(Sender: TObject);
    procedure SN221Click(Sender: TObject);
    procedure SN241Click(Sender: TObject);
    procedure SN222Click(Sender: TObject);
    procedure SN242Click(Sender: TObject);
    procedure SN251Click(Sender: TObject);
    procedure SN252Click(Sender: TObject);
    procedure SN223Click(Sender: TObject);
    procedure SN224Click(Sender: TObject);
    procedure SN253Click(Sender: TObject);
    procedure SN211Click(Sender: TObject);
    procedure SN212Click(Sender: TObject);
    procedure SN225Click(Sender: TObject);
    procedure SN15Click(Sender: TObject);
    procedure SN32Click(Sender: TObject);
    procedure SN16Click(Sender: TObject);
    procedure SN213Click(Sender: TObject);
    procedure SN41Click(Sender: TObject);
    procedure SN42Click(Sender: TObject);
    procedure SN43Click(Sender: TObject);
    procedure SN44Click(Sender: TObject);
    procedure SN51Click(Sender: TObject);
    procedure SN226Click(Sender: TObject);
    procedure SN52Click(Sender: TObject);
    procedure SN18Click(Sender: TObject);
    procedure SN53Click(Sender: TObject);
    procedure SN19Click(Sender: TObject);
    procedure SN541Click(Sender: TObject);
    procedure SN543Click(Sender: TObject);
    procedure SN544Click(Sender: TObject);
    procedure SN545Click(Sender: TObject);
    procedure SN542Click(Sender: TObject);
    procedure SN546Click(Sender: TObject);
    procedure SN555Click(Sender: TObject);
    procedure SN554Click(Sender: TObject);
    procedure SN553Click(Sender: TObject);
    procedure SN56Click(Sender: TObject);
    procedure SN35Click(Sender: TObject);
    procedure SN26Click(Sender: TObject);
    procedure SN1AClick(Sender: TObject);
    procedure N214Click(Sender: TObject);
    procedure SN61Click(Sender: TObject);
  private
     MKID:String;
     LanguageID:String;
    { Private declarations }
     //---20150817 Projoe 補上由 Nick 所提供的function log 程式
    //用法: SaveProLog(GetMKID(),TMenuItem(Sender).Name,GetUserID());
    procedure SaveProLog(AMKID: string; AFORMID: string; AUSERID: string);
    //---20150817 Projoe 修改 Menu 上面的按鈕呼叫方式
    procedure showFm(var fm: Pointer; parentClass: TPersistentClass; miname: string);
    { Public declarations }
  Public
    sUser:string;
    sPW:string;
    sGSBH:string;
    ServerIP:string;
    LIY_DD,LIY_ERP:String;

    procedure Language();
    procedure FormLanguage(var formObj:Pointer;mainForm:string);
    procedure FormDBGridLanguage(var formObj:Pointer ;mainForm:string);
    procedure EnableFORMID();
  end;

var
  main: Tmain;
  suser,spwd:string;

implementation

uses DM3,OrderSpec1, OrderPrice1, DeliverAccount1, ReplenishAcc1, DeliverCost1,
  MaterialCost1, PartClass1, MatType1, MatTotal1, MatStock1, ReplenishDep1,
  ReplenishOrd1, MaterialCostRea1, MatTotalDep1, ReplenishRea1,
  ReplenishDaily1, MatTotalIn1, DeliverAccFin1, ReplenishDayRate1,
  MatPrice1, MatStockuse1, ModelCost1, monthcost1, FeeMaterialOrd1,
  OrderAnalysisp, Report6041, ReplenishAnlysisP, StockAnlysisp,
  MonthProductionReportP, ReplenishDayRatebyorderp, CGVendorCompareP,
  VendorMapSetP, InStockPriceP, CostingBOM1, MonthOutPut1, ExportQuantity1,
  BrandProduction1, MonthOutPutPOH1, FactMonthOutPutPOH1 ,HRMDepartmentAttend1 ,FunUnit,
  MQRShoeBC1, ExtraCost ,MaterialCBDPrice1, ACKTMONTH1, TWDDZL_Y1, CostSheet1,
  Kpi_Factory1;


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

procedure Tmain.SN17Click(Sender: TObject);
begin
  Close;
end;

procedure Tmain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if main.ActiveMDIChild<>nil  then
  begin
    Messagedlg('Pls close all child form first.',mtwarning,[mbOK],0);
    action:=canone;
  end else
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
    funcObj.Free;
  end;
end;

procedure Tmain.FormCreate(Sender: TObject);
var y,m,d:word;
    sline:string;
    textvar:textfile;
begin
  shortdateformat:='yyyy/MM/dd';
  funcObj:=TFuncObj.Create;
  funcObj.setParameter(true,ExtractFilePath(Application.ExeName));
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
  end else
  begin
      suser:=copy(sline,0,pos('=',sline)-1);
      spwd:=copy(sline,pos('=',sline)+1,maxint);
      image1.Picture.LoadFromFile(extractfilepath(application.ExeName)+'factory.jpg');
  end;
  closefile(textvar);
  edit1.Text:=suser;

  assignfile(textvar,extractfilepath(application.ExeName)+'Company.txt');
  reset(textvar);
  readln(textvar,sline);
  edit2.Text:=sline;
  readln(textvar,sline);//20200424第二行語言
  LanguageID:=sline;
  closefile(textvar);
   with Query1 do
    begin
    ParamByName('userid').Value :=suser;
    ParamByName('mkid').Value :='12' ; MKID:='12';
    ParamByName('GSBH').Value :=edit2.text ;
    Active:=true;      //根據用戶名稱確定權限
    //
    BLimitHideQry.ParamByName('mkid').Value := '12';
    BLimitHideQry.Active:=true;
    EnableFORMID();    //20211009 功能選單
    BLimitHideQry.Active:=false;
    //
    Active:=false;
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

procedure Tmain.SN11Click(Sender: TObject);
begin
  showFm(Pointer(OrderSpec), TOrderSpec, TMenuItem(Sender).Name);
end;

procedure Tmain.SN12Click(Sender: TObject);
begin
  showFm(Pointer(OrderPrice), TOrderPrice, TMenuItem(Sender).Name);
end;

procedure Tmain.SN13Click(Sender: TObject);
begin
  showFm(Pointer(PartClass), TPartClass, TMenuItem(Sender).Name);
end;

procedure Tmain.SN14Click(Sender: TObject);
begin
  showFm(Pointer(MatType), TMatType, TMenuItem(Sender).Name);
end;

procedure Tmain.SN31Click(Sender: TObject);
begin
  showFm(Pointer(MatStock), TMatStock, TMenuItem(Sender).Name);
end;

procedure Tmain.SN221Click(Sender: TObject);
begin
  showFm(Pointer(ReplenishDep), TReplenishDep, TMenuItem(Sender).Name);
end;

procedure Tmain.SN241Click(Sender: TObject);
begin
  showFm(Pointer(MaterialCost), TMaterialCost, TMenuItem(Sender).Name);
end;

procedure Tmain.SN222Click(Sender: TObject);
begin
  showFm(Pointer(ReplenishOrd), TReplenishOrd, TMenuItem(Sender).Name);
end;

procedure Tmain.SN242Click(Sender: TObject);
begin
  showFm(Pointer(MaterialCostRea), TMaterialCostRea, TMenuItem(Sender).Name);
end;
     
procedure Tmain.SN223Click(Sender: TObject);
begin
  showFm(Pointer(ReplenishRea), TReplenishRea, TMenuItem(Sender).Name);
end;

procedure Tmain.SN251Click(Sender: TObject);
begin
  showFm(Pointer(MatTotal), TMatTotal, TMenuItem(Sender).Name);
end;

procedure Tmain.SN252Click(Sender: TObject);
begin
  showFm(Pointer(MatTotalDep), TMatTotalDep, TMenuItem(Sender).Name);
end;


procedure Tmain.SN224Click(Sender: TObject);
begin
  showFm(Pointer(ReplenishDaily), TReplenishDaily, TMenuItem(Sender).Name);
end;

procedure Tmain.SN253Click(Sender: TObject);
begin
  showFm(Pointer(MatTotalIn), TMatTotalIn, TMenuItem(Sender).Name);
end;

procedure Tmain.SN211Click(Sender: TObject);
begin
  showFm(Pointer(DeliverAccount), TDeliverAccount, TMenuItem(Sender).Name);
end;

procedure Tmain.SN212Click(Sender: TObject);
begin
  showFm(Pointer(DeliverAccFin), TDeliverAccFin, TMenuItem(Sender).Name);
end;

procedure Tmain.SN225Click(Sender: TObject);
begin
  showFm(Pointer(ReplenishDayRate), TReplenishDayRate, TMenuItem(Sender).Name);
end;

procedure Tmain.SN15Click(Sender: TObject);
begin
  showFm(Pointer(MatPrice), TMatPrice, TMenuItem(Sender).Name);
end;

procedure Tmain.SN32Click(Sender: TObject);
begin
  showFm(Pointer(MatStockuse), TMatStockuse, TMenuItem(Sender).Name);
end;

procedure Tmain.SN16Click(Sender: TObject);
begin
  showFm(Pointer(ModelCost), TModelCost, TMenuItem(Sender).Name);
end;

procedure Tmain.SN213Click(Sender: TObject);
begin
  showFm(Pointer(monthcost), Tmonthcost, TMenuItem(Sender).Name);
end;

procedure Tmain.SN41Click(Sender: TObject);
begin
  showFm(Pointer(OrderAnalySis), TOrderAnalySis, TMenuItem(Sender).Name);
end;

procedure Tmain.SN42Click(Sender: TObject);
begin
  showFm(Pointer(Report604), TReport604, TMenuItem(Sender).Name);
end;

procedure Tmain.SN43Click(Sender: TObject);
begin
  showFm(Pointer(ReplenishAnlysis), TReplenishAnlysis, TMenuItem(Sender).Name);
end;

procedure Tmain.SN44Click(Sender: TObject);
begin
  showFm(Pointer(StockAnlysis), TStockAnlysis, TMenuItem(Sender).Name);
end;

procedure Tmain.SN51Click(Sender: TObject);
begin
  showFm(Pointer(MonthProductionReport), TMonthProductionReport, TMenuItem(Sender).Name);
end;

procedure Tmain.SN226Click(Sender: TObject);
begin
  showFm(Pointer(ReplenishDayRatebyorder), TReplenishDayRatebyorder, TMenuItem(Sender).Name);
end;

procedure Tmain.SN52Click(Sender: TObject);
begin
  showFm(Pointer(CGVendorCompare), TCGVendorCompare, TMenuItem(Sender).Name);
end;

procedure Tmain.SN18Click(Sender: TObject);
begin
  showFm(Pointer(VendorMapSet), TVendorMapSet, TMenuItem(Sender).Name);
end;

procedure Tmain.SN53Click(Sender: TObject);
begin
  showFm(Pointer(InStockPrice), TInStockPrice, TMenuItem(Sender).Name);
end;

procedure Tmain.SN19Click(Sender: TObject);
begin
   showFm(Pointer(CostingBOM), TCostingBOM , TMenuItem(Sender).Name);
end;


procedure Tmain.SN541Click(Sender: TObject);
begin
    showFm(Pointer(MonthOutPut), TMonthOutPut, TMenuItem(Sender).Name);
end;

procedure Tmain.SN543Click(Sender: TObject);
begin
  showFm(Pointer(ExportQuantity), TExportQuantity, TMenuItem(Sender).Name);
end;

procedure Tmain.SN544Click(Sender: TObject);
begin
  showFm(Pointer(MonthOutPutPOH), TMonthOutPutPOH, TMenuItem(Sender).Name);
end;

procedure Tmain.SN545Click(Sender: TObject);
begin
  showFm(Pointer(FactMonthOutPutPOH), TFactMonthOutPutPOH, TMenuItem(Sender).Name);
end;

procedure Tmain.SN542Click(Sender: TObject);
begin
  showFm(Pointer(BrandProduction), TBrandProduction, TMenuItem(Sender).Name);
end;

procedure Tmain.SN546Click(Sender: TObject);
begin
  showFm(Pointer(HRMDepartmentAttend), THRMDepartmentAttend, TMenuItem(Sender).Name);   
end;

procedure Tmain.SN555Click(Sender: TObject);
begin
  showFm(Pointer(ReplenishDayRate), TReplenishDayRate, TMenuItem(Sender).Name);
end;

procedure Tmain.SN554Click(Sender: TObject);
begin
    showFm(Pointer(MQRShoeBC), TMQRShoeBC, TMenuItem(Sender).Name);
end;

procedure Tmain.SN553Click(Sender: TObject);
begin
  showFm(Pointer(ExportQuantity), TExportQuantity, TMenuItem(Sender).Name);
end;

procedure Tmain.SN56Click(Sender: TObject);
begin
  showFm(Pointer(ExtraCost1), TExtraCost1, TMenuItem(Sender).Name);
end;

procedure Tmain.SN35Click(Sender: TObject);
begin
  showFm(Pointer(MaterialCBDPrice), TMaterialCBDPrice, TMenuItem(Sender).Name);
end;

procedure Tmain.SN26Click(Sender: TObject);
begin
  showFm(Pointer(ACKTMONTH), TACKTMONTH, TMenuItem(Sender).Name);
end;

procedure Tmain.SN1AClick(Sender: TObject);
begin
  showFm(Pointer(TWDDZL_Y), TTWDDZL_Y, TMenuItem(Sender).Name);
end;

procedure Tmain.N214Click(Sender: TObject);
begin
  showFm(Pointer(CostSheet), TCostSheet, TMenuItem(Sender).Name);
end;

procedure Tmain.SN61Click(Sender: TObject);
begin
  showFm(Pointer(KPI_Factory), TKPI_Factory, TMenuItem(Sender).Name);
end;

end.

