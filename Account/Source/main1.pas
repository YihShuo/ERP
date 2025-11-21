unit main1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, jpeg, ExtCtrls, StdCtrls, ComCtrls, DB, DBTables,DBGridS,DBGridEh, Grids;

type
  Tmain = class(TForm)
    MainMenu1: TMainMenu;
    Image1: TImage;
    Edit1: TEdit;
    StatusBar1: TStatusBar;
    Query1: TQuery;
    SN1: TMenuItem;
    SN11: TMenuItem;
    SN12: TMenuItem;
    SN13: TMenuItem;
    SN14: TMenuItem;
    SN15: TMenuItem;
    SN2: TMenuItem;
    SN21: TMenuItem;
    SN23: TMenuItem;
    SN24: TMenuItem;
    SN3: TMenuItem;
    SN32: TMenuItem;
    SN31: TMenuItem;
    SN4: TMenuItem;
    FeeQuery1: TMenuItem;
    SN41: TMenuItem;
    SN42: TMenuItem;
    SN43: TMenuItem;
    SN44: TMenuItem;
    SN16: TMenuItem;
    SN17: TMenuItem;
    SN18: TMenuItem;
    N1: TMenuItem;
    Exit1: TMenuItem;
    SN5: TMenuItem;
    SN181: TMenuItem;
    SN182: TMenuItem;
    SN183: TMenuItem;
    SN172: TMenuItem;
    SN173: TMenuItem;
    SN174: TMenuItem;
    SN175: TMenuItem;
    SN171: TMenuItem;
    SN176: TMenuItem;
    SN45: TMenuItem;
    SN177: TMenuItem;
    SN22: TMenuItem;
    SN25: TMenuItem;
    SN46: TMenuItem;
    SN47: TMenuItem;
    SN462: TMenuItem;
    SN461: TMenuItem;
    SN471: TMenuItem;
    SN472: TMenuItem;
    SN48: TMenuItem;
    SN49: TMenuItem;
    SN491: TMenuItem;
    SN492: TMenuItem;
    SN493: TMenuItem;
    SN26: TMenuItem;
    SN412: TMenuItem;
    SN411: TMenuItem;
    SN19: TMenuItem;
    SN27: TMenuItem;
    Edit2: TEdit;
    SN184: TMenuItem;
    SN185: TMenuItem;
    SN34: TMenuItem;
    SN341: TMenuItem;
    SN342: TMenuItem;
    SN421: TMenuItem;
    SN423: TMenuItem;
    SN422: TMenuItem;
    SN35: TMenuItem;
    SN4221: TMenuItem;
    SN4222: TMenuItem;
    SN178: TMenuItem;
    SN231: TMenuItem;
    SN232: TMenuItem;
    SN1741: TMenuItem;
    SN1742: TMenuItem;
    SN189: TMenuItem;
    SN1743: TMenuItem;
    SN6: TMenuItem;
    SN61: TMenuItem;
    SN611: TMenuItem;
    BLimitHideQry: TQuery;
    N8Consumer1: TMenuItem;
    SN81: TMenuItem;
    SN62: TMenuItem;
    SN63: TMenuItem;
    SN1A: TMenuItem;
    SN179: TMenuItem;
    SN233: TMenuItem;
    SN1B: TMenuItem;
    SN1791: TMenuItem;
    SN1792: TMenuItem;
    SN1793: TMenuItem;
    SN18B: TMenuItem;
    SN18C: TMenuItem;
    SN17921: TMenuItem;
    SN17922: TMenuItem;
    SN17923: TMenuItem;
    SN18D: TMenuItem;
    SN234: TMenuItem;
    SN2341: TMenuItem;
    SN2342: TMenuItem;
    SN2343: TMenuItem;
    SN17A: TMenuItem;
    SN179221: TMenuItem;
    SN179222: TMenuItem;
    SN179223: TMenuItem;
    SN64: TMenuItem;
    SN179224: TMenuItem;
    SN1C: TMenuItem;
    SN18E: TMenuItem;
    SN1A1: TMenuItem;
    SN1A2: TMenuItem;
    SN17924: TMenuItem;
    SN179241: TMenuItem;
    SN179242: TMenuItem;
    SN179243: TMenuItem;
    procedure SN14Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure SN5Click(Sender: TObject);
    procedure SN13Click(Sender: TObject);
    procedure SN12Click(Sender: TObject);
    procedure SN11Click(Sender: TObject);
    procedure Deliverlist1Click(Sender: TObject);
    procedure SN15Click(Sender: TObject);
    procedure Exit1Click(Sender: TObject);
    procedure SN16Click(Sender: TObject);
    procedure SN181Click(Sender: TObject);
    procedure SN182Click(Sender: TObject);
    procedure SN183Click(Sender: TObject);
    procedure SN171Click(Sender: TObject);
    procedure SN172Click(Sender: TObject);
    procedure SN173Click(Sender: TObject);
    procedure SN175Click(Sender: TObject);
    procedure SN176Click(Sender: TObject);
    procedure SN45Click(Sender: TObject);
    procedure SN177Click(Sender: TObject);
    procedure SN21Click(Sender: TObject);
    procedure SN22Click(Sender: TObject);
    procedure SN25Click(Sender: TObject);
    procedure SN24Click(Sender: TObject);
    procedure SN461Click(Sender: TObject);
    procedure SN462Click(Sender: TObject);
    procedure SN48Click(Sender: TObject);
    procedure SN471Click(Sender: TObject);
    procedure SN472Click(Sender: TObject);
    procedure SN491Click(Sender: TObject);
    procedure SN492Click(Sender: TObject);
    procedure SN493Click(Sender: TObject);
    procedure SN26Click(Sender: TObject);
    procedure SN412Click(Sender: TObject);
    procedure SN411Click(Sender: TObject);
    procedure SN31Click(Sender: TObject);
    procedure SN32Click(Sender: TObject);
    procedure SN19Click(Sender: TObject);
    procedure SN27Click(Sender: TObject);
    procedure SN184Click(Sender: TObject);
    procedure SN185Click(Sender: TObject);
    procedure SN341Click(Sender: TObject);
    procedure SN342Click(Sender: TObject);
    procedure SN421Click(Sender: TObject);
    procedure SN423Click(Sender: TObject);
    procedure SN35Click(Sender: TObject);
    procedure SN4222Click(Sender: TObject);
    procedure SN4221Click(Sender: TObject);
    procedure SN178Click(Sender: TObject);
    procedure SN231Click(Sender: TObject);
    procedure SN232Click(Sender: TObject);
    procedure SN1741Click(Sender: TObject);
    procedure SN1742Click(Sender: TObject);
    procedure SN189Click(Sender: TObject);
    procedure SN1743Click(Sender: TObject);
    procedure SN611Click(Sender: TObject);
    procedure SN81Click(Sender: TObject);
    procedure SN62Click(Sender: TObject);
    procedure SN63Click(Sender: TObject);
    procedure SN233Click(Sender: TObject);
    procedure SN1BClick(Sender: TObject);
    procedure SN1791Click(Sender: TObject);
    procedure SN1793Click(Sender: TObject);
    procedure SN18BClick(Sender: TObject);
    procedure SN18CClick(Sender: TObject);
    procedure SN17921Click(Sender: TObject);
    procedure SN17922Click(Sender: TObject);
    procedure SN17923Click(Sender: TObject);
    procedure SN18DClick(Sender: TObject);
    procedure SN2341Click(Sender: TObject);
    procedure SN2342Click(Sender: TObject);
    procedure SN2343Click(Sender: TObject);
    procedure SN17AClick(Sender: TObject);
    procedure SN179221Click(Sender: TObject);
    procedure SN179222Click(Sender: TObject);
    procedure SN179223Click(Sender: TObject);
    procedure SN64Click(Sender: TObject);
    procedure SN179224Click(Sender: TObject);
    procedure SN1CClick(Sender: TObject);
    procedure SN18EClick(Sender: TObject);
    procedure SN1A1Click(Sender: TObject);
    procedure SN1A2Click(Sender: TObject);
    procedure SN179241Click(Sender: TObject);
    procedure SN179242Click(Sender: TObject);
    procedure SN179243Click(Sender: TObject);
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

uses DM3,FirstStock1, ExtraCon1, EntryConfirm1, EntryPur1, DeliverList1,
  DeliverCon1, AccountCal1, StockList1, AdjustDeliver1, AdjustEntry1,
  AdjustExtra1, EntryCheck1, ExtraInCheck1, DeliverCheck1, ExtraOutCheck1,
  MaterialMonth1, OrderreplenishCost1, MaterialNoQty1, PayableMaterial1,
  EmbroiderPay1, PayableLit1, AccountBank1, DebitNote1, CostMaterial1,
  CostPrice1, CostFee1, CostFeeDep1, OrderKeyList1, ReplenishFee1,
  ReplenishFeeDep1, AccountDel1, AccountEntry1, AccountFix1,
  MaterialEntryList1, CostOrderList1, FeeNo1, FeeMonth1, DailyExchange1,
  PayMentCon1, Payable_Det1, AdjustDelPrice1, AdjustEntryACC1,
  FeeMaterialOrd1, FeeMaterialOth1, CostmaterialIn1, CostmaterialNo1,
  MatType1, CostmaterialAcc1, FunUnit, Scandata1, EntryCheckPay1,
  DeliverCheckOrder1,KiemtraKCRKCX1, Semifinished1, AccMonthStock1,
  Consumer1, Report_NXT1, Report_SCT1, VATNOData1, StockShoeMonth1, SemiMaterialMonth1,
  SetupSCBHGT1, PaymentVATNO1, CBY_ExtraCon1, AdjustCBYExtraCon1, CBY_SemiMaterialMonth1,
  Deliver_Account1, SemiChemicalMonth1, Entry_Account1,
  PaymentConfirmCancel3311, PaymentConfirmCancel1121, VATNODataTracking1,
  EntryCheck_CCDC1, SemiMaterialMonth_Sample1, SemiMaterialMonth_CBY1,
  Supplier_KPI1, SemiMaterialMonth_Skechers1, CBY_DeliverCon1,
  CBY_AdjustDeliver1, COSTData1, SemiMonthTotal1, SemiImportPrice1,
  MonthSemiFinishProduct1;

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

procedure Tmain.SN14Click(Sender: TObject);
begin
  close;
end;

procedure Tmain.FormClose(Sender: TObject; var Action: TCloseAction);
var
  sline: string;
  textvar: textfile;
begin
  if main.ActiveMDIChild <> nil then
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
          sql.add('where USERID= :USERID ;');
          ParamByName('USERID').Value := edit1.Text;
          execsql;
        end;
      action := cafree;
      { assignfile(textvar,extractfilepath(application.ExeName)+'user.txt');
       rewrite(textvar);
       closefile(textvar);   }
      FuncObj.Free;
    end;
end;

procedure Tmain.FormCreate(Sender: TObject);
var
  y, m, d: word;
  sline: string;
  textvar: textfile;
begin
  //
  FuncObj := TFuncObj.Create;
  FuncObj.setParameter(true, ExtractFilePath(Application.ExeName));
  ServerIP:=FuncObj.GetBDE_SERVERIP(DM2.DBshipping.AliasName);
  FuncObj.GetBDE_DATABASENAME(DM2.DBshipping.AliasName,LIY_ERP,LIY_DD);
  shortdateformat := 'yyyy/MM/dd';
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
  //showmessage(sline);
  assignfile(textvar, extractfilepath(application.ExeName) + 'Company.txt');
  reset(textvar);
  readln(textvar, sline);
  edit2.Text := sline;
  readln(textvar,sline);//20200424第二行語言
  LanguageID:=sline;
  closefile(textvar);
  with Query1 do
  begin
      //---20150815 Projoe 將Params 改為 ParamByName 來增加可讀性
      ParamByName('userid').Value := suser;
      ParamByName('mkid').Value := '10'; MKID:='10';
      ParamByName('GSBH').Value := edit2.text;
      Active := true; //根據用戶名稱確定權限
      //
      BLimitHideQry.ParamByName('mkid').Value := '10';
      BLimitHideQry.Active:=true;
      EnableFORMID();    //20211009 功能選單
      BLimitHideQry.Active:=false;
      //
      Active := false;
  end;
  Language(); //20200424 UI語言
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

procedure Tmain.SN5Click(Sender: TObject);
begin
  showFm(Pointer(FirstStock), TFirstStock, TMenuItem(Sender).Name);
end;

procedure Tmain.SN13Click(Sender: TObject);
begin
  showFm(Pointer(ExtraCon), TExtraCon, TMenuItem(Sender).Name);
end;

procedure Tmain.SN12Click(Sender: TObject);
begin
  showFm(Pointer(EntryConfirm), TEntryConfirm, TMenuItem(Sender).Name);
end;

procedure Tmain.SN11Click(Sender: TObject);
begin
  showFm(Pointer(EntryPur), TEntryPur, TMenuItem(Sender).Name);
end;

procedure Tmain.Deliverlist1Click(Sender: TObject);
begin
  showFm(Pointer(DeliverList), TDeliverList, TMenuItem(Sender).Name);
end;

procedure Tmain.SN15Click(Sender: TObject);
begin
  showFm(Pointer(DeliverCon), TDeliverCon, TMenuItem(Sender).Name);
end;

procedure Tmain.Exit1Click(Sender: TObject);
begin
  close;
end;

procedure Tmain.SN16Click(Sender: TObject);
begin
  showFm(Pointer(AccountCal), TAccountCal, TMenuItem(Sender).Name);
end;

procedure Tmain.SN181Click(Sender: TObject);
begin
  showFm(Pointer(AdjustDeliver), TAdjustDeliver, TMenuItem(Sender).Name);
end;

procedure Tmain.SN182Click(Sender: TObject);
begin
  showFm(Pointer(AdjustEntry), TAdjustEntry, TMenuItem(Sender).Name);
end;

procedure Tmain.SN183Click(Sender: TObject);
begin
  showFm(Pointer(AdjustExtra), TAdjustExtra, TMenuItem(Sender).Name);
end;

procedure Tmain.SN171Click(Sender: TObject);
begin
  showFm(Pointer(StockList), TStockList, TMenuItem(Sender).Name);
end;

procedure Tmain.SN172Click(Sender: TObject);
begin
  showFm(Pointer(EntryCheck), TEntryCheck, TMenuItem(Sender).Name);
end;

procedure Tmain.SN173Click(Sender: TObject);
begin
  showFm(Pointer(ExtraInCheck), TExtraInCheck, TMenuItem(Sender).Name);
end;

procedure Tmain.SN175Click(Sender: TObject);
begin
  showFm(Pointer(ExtraOutCheck), TExtraOutCheck, TMenuItem(Sender).Name);
end;

procedure Tmain.SN176Click(Sender: TObject);
begin
  showFm(Pointer(MaterialMonth), TMaterialMonth, TMenuItem(Sender).Name);
end;

procedure Tmain.SN177Click(Sender: TObject);
begin
  showFm(Pointer(MaterialNoQty), TMaterialNoQty, TMenuItem(Sender).Name);
end;

procedure Tmain.SN45Click(Sender: TObject);
begin
  showFm(Pointer(OrderreplenishCost), TOrderreplenishCost, TMenuItem(Sender).Name);
end;

procedure Tmain.SN21Click(Sender: TObject);
begin
  showFm(Pointer(PayableMaterial), TPayableMaterial, TMenuItem(Sender).Name);
end;

procedure Tmain.SN22Click(Sender: TObject);
begin
  showFm(Pointer(EmbroiderPay), TEmbroiderPay, TMenuItem(Sender).Name);
end;

procedure Tmain.SN25Click(Sender: TObject);
begin
  showFm(Pointer(AccountBank), TAccountBank, TMenuItem(Sender).Name);
end;

procedure Tmain.SN24Click(Sender: TObject);
begin
  showFm(Pointer(DebitNote), TDebitNote, TMenuItem(Sender).Name);
end;

procedure Tmain.SN461Click(Sender: TObject);
begin
  showFm(Pointer(CostFee), TCostFee, TMenuItem(Sender).Name);
end;

procedure Tmain.SN462Click(Sender: TObject);
begin
  showFm(Pointer(CostFeeDep), TCostFeeDep, TMenuItem(Sender).Name);
end;

procedure Tmain.SN48Click(Sender: TObject);
begin
  showFm(Pointer(OrderKeyList), TOrderKeyList, TMenuItem(Sender).Name);

end;

procedure Tmain.SN471Click(Sender: TObject);
begin
  showFm(Pointer(ReplenishFee), TReplenishFee, TMenuItem(Sender).Name);
end;

procedure Tmain.SN472Click(Sender: TObject);
begin
  showFm(Pointer(ReplenishFeeDep), TReplenishFeeDep, TMenuItem(Sender).Name);
end;

procedure Tmain.SN491Click(Sender: TObject);
begin
  showFm(Pointer(AccountDel), TAccountDel, TMenuItem(Sender).Name);
end;

procedure Tmain.SN492Click(Sender: TObject);
begin
  showFm(Pointer(AccountEntry), TAccountEntry, TMenuItem(Sender).Name);

end;

procedure Tmain.SN493Click(Sender: TObject);
begin
  showFm(Pointer(AccountFix), TAccountFix, TMenuItem(Sender).Name);
end;

procedure Tmain.SN26Click(Sender: TObject);
begin
  showFm(Pointer(MaterialEntryList), TMaterialEntryList, TMenuItem(Sender).Name);
end;

procedure Tmain.SN412Click(Sender: TObject);
begin
  showFm(Pointer(CostPrice), TCostPrice, TMenuItem(Sender).Name);
end;

procedure Tmain.SN411Click(Sender: TObject);
begin
  showFm(Pointer(CostOrderList), TCostOrderList, TMenuItem(Sender).Name);
end;

procedure Tmain.SN31Click(Sender: TObject);
begin
  showFm(Pointer(FeeNo), TFeeNo, TMenuItem(Sender).Name);
end;

procedure Tmain.SN32Click(Sender: TObject);
begin
  showFm(Pointer(FeeMonth), TFeeMonth, TMenuItem(Sender).Name);
end;

procedure Tmain.SN19Click(Sender: TObject);
begin
  showFm(Pointer(DailyExchange), TDailyExchange, TMenuItem(Sender).Name);
end;

procedure Tmain.SN27Click(Sender: TObject);
begin
  showFm(Pointer(PayMentCon), TPayMentCon, TMenuItem(Sender).Name);
end;

procedure Tmain.SN184Click(Sender: TObject);
begin
  showFm(Pointer(AdjustDelPrice), TAdjustDelPrice, TMenuItem(Sender).Name);
end;

procedure Tmain.SN185Click(Sender: TObject);
begin
  showFm(Pointer(AdjustEntryACC), TAdjustEntryACC, TMenuItem(Sender).Name);
end;

procedure Tmain.SN341Click(Sender: TObject);
begin
  showFm(Pointer(FeeMaterialOrd), TFeeMaterialOrd, TMenuItem(Sender).Name);
end;

procedure Tmain.SN342Click(Sender: TObject);
begin
  showFm(Pointer(FeeMaterialOth), TFeeMaterialOth, TMenuItem(Sender).Name);
end;

procedure Tmain.SN421Click(Sender: TObject);
begin
  showFm(Pointer(Costmaterial), TCostmaterial, TMenuItem(Sender).Name);
end;

procedure Tmain.SN423Click(Sender: TObject);
begin
  showFm(Pointer(CostmaterialIn), TCostmaterialIn, TMenuItem(Sender).Name);
end;

procedure Tmain.SN35Click(Sender: TObject);
begin
  showFm(Pointer(MatType), TMatType, TMenuItem(Sender).Name);
end;

procedure Tmain.SN4222Click(Sender: TObject);
begin
  showFm(Pointer(CostmaterialNo), TCostmaterialNo, TMenuItem(Sender).Name);
end;

procedure Tmain.SN4221Click(Sender: TObject);
begin
  showFm(Pointer(CostmaterialAcc), TCostmaterialAcc, TMenuItem(Sender).Name);
end;

procedure Tmain.SN178Click(Sender: TObject);
begin
  showFm(Pointer(scandata), Tscandata, TMenuItem(Sender).Name);
end;

procedure Tmain.SN231Click(Sender: TObject);
begin
  showFm(Pointer(PayableLit), TPayableLit, TMenuItem(Sender).Name);
end;

procedure Tmain.SN232Click(Sender: TObject);
begin
  showFm(Pointer(EntryCheckPay), TEntryCheckPay, TMenuItem(Sender).Name);
end;

procedure Tmain.SN1741Click(Sender: TObject);
begin
  showFm(Pointer(DeliverCheck), TDeliverCheck, TMenuItem(Sender).Name);
end;

procedure Tmain.SN1742Click(Sender: TObject);
begin
  showFm(Pointer(DeliverCheckOrder), TDeliverCheckOrder, TMenuItem(Sender).Name);
end;

procedure Tmain.SN189Click(Sender: TObject);
begin
  showFm(Pointer(KiemtraKCRKCX), TKiemtraKCRKCX, TMenuItem(Sender).Name);
end;

procedure Tmain.SN1743Click(Sender: TObject);
begin
  showFm(Pointer(Semifinished), TSemifinished, TMenuItem(Sender).Name);
end;

procedure Tmain.SN611Click(Sender: TObject);
begin
  showFm(Pointer(AccMonthStock), TAccMonthStock, TMenuItem(Sender).Name);
end;

procedure Tmain.SN81Click(Sender: TObject);
begin
  showFm(Pointer(Consumer), TConsumer, TMenuItem(Sender).Name);
end;

procedure Tmain.SN62Click(Sender: TObject);
begin
  showFm(Pointer(Report_NXT), TReport_NXT, TMenuItem(Sender).Name);
end;

procedure Tmain.SN63Click(Sender: TObject);
begin
  showFm(Pointer(Report_SCT), TReport_SCT, TMenuItem(Sender).Name);
end;

procedure Tmain.SN233Click(Sender: TObject);
begin
  showFm(Pointer(PaymentVATNO), TPaymentVATNO, TMenuItem(Sender).Name);
end;

procedure Tmain.SN1BClick(Sender: TObject);
begin
  showFm(Pointer(CBY_ExtraCon), TCBY_ExtraCon, TMenuItem(Sender).Name);
end;

procedure Tmain.SN1791Click(Sender: TObject);
begin
  showFm(Pointer(SetupSCBHGT), TSetupSCBHGT, TMenuItem(Sender).Name);
end;

procedure Tmain.SN1793Click(Sender: TObject);
begin
  showFm(Pointer(StockShoeMonth), TStockShoeMonth, TMenuItem(Sender).Name);
end;

procedure Tmain.SN18BClick(Sender: TObject);
begin
  showFm(Pointer(Adjust_CBY_Extra_Con), TAdjust_CBY_Extra_Con, TMenuItem(Sender).Name);
end;

procedure Tmain.SN18CClick(Sender: TObject);
begin
  showFm(Pointer(Deliver_Account), TDeliver_Account, TMenuItem(Sender).Name);
end;


procedure Tmain.SN17921Click(Sender: TObject);
begin
  showFm(Pointer(SemiMaterialMonth), TSemiMaterialMonth, TMenuItem(Sender).Name);
end;

procedure Tmain.SN17922Click(Sender: TObject);
begin
  //showFm(Pointer(CBY_SemiMaterialMonth), TCBY_SemiMaterialMonth, TMenuItem(Sender).Name);
end;

procedure Tmain.SN17923Click(Sender: TObject);
begin
  showFm(Pointer(SemiChemicalMonth), TSemiChemicalMonth, TMenuItem(Sender).Name);
end;

procedure Tmain.SN18DClick(Sender: TObject);
begin
  showFm(Pointer(Entry_Account), TEntry_Account, TMenuItem(Sender).Name);
end;

procedure Tmain.SN2341Click(Sender: TObject);
begin
  showFm(Pointer(PaymentConfirmCancel331), TPaymentConfirmCancel331, TMenuItem(Sender).Name);
end;

procedure Tmain.SN2342Click(Sender: TObject);
begin
  showFm(Pointer(PaymentConfirmCancel112), TPaymentConfirmCancel112, TMenuItem(Sender).Name);
end;

procedure Tmain.SN2343Click(Sender: TObject);
begin
  showFm(Pointer(VATNODataTracking), TVATNODataTracking, TMenuItem(Sender).Name);
end;

procedure Tmain.SN17AClick(Sender: TObject);
begin
 showFm(Pointer(EntryCheck_CCDC), TEntryCheck_CCDC, TMenuItem(Sender).Name); 
end;

procedure Tmain.SN179221Click(Sender: TObject);
begin
  showFm(Pointer(CBY_SemiMaterialMonth), TCBY_SemiMaterialMonth, TMenuItem(Sender).Name);
end;

procedure Tmain.SN179222Click(Sender: TObject);
begin
  showFm(Pointer(SemiMaterialMonth_Sample), TSemiMaterialMonth_Sample, TMenuItem(Sender).Name);
end;

procedure Tmain.SN179223Click(Sender: TObject);
begin
  showFm(Pointer(SemiMaterialMonth_CBY), TSemiMaterialMonth_CBY, TMenuItem(Sender).Name);
end;

procedure Tmain.SN64Click(Sender: TObject);
begin
  showFm(Pointer(Supplier_KPI), TSupplier_KPI, TMenuItem(Sender).Name);
end;

procedure Tmain.SN179224Click(Sender: TObject);
begin
  showFm(Pointer(SemiMaterialMonth_Skechers), TSemiMaterialMonth_Skechers, TMenuItem(Sender).Name);
end;

procedure Tmain.SN1CClick(Sender: TObject);
begin
  showFm(Pointer(CBY_DeliverCon), TCBY_DeliverCon, TMenuItem(Sender).Name);
end;

procedure Tmain.SN18EClick(Sender: TObject);
begin
  showFm(Pointer(CBY_AdjustDeliver), TCBY_AdjustDeliver, TMenuItem(Sender).Name);
end;

procedure Tmain.SN1A1Click(Sender: TObject);
begin
  showFm(Pointer(VATNOData), TVATNOData, TMenuItem(Sender).Name);
end;

procedure Tmain.SN1A2Click(Sender: TObject);
begin
  showFm(Pointer(COSTData), TCOSTData, TMenuItem(Sender).Name);
end;
procedure Tmain.SN179241Click(Sender: TObject);
begin
  showFm(Pointer(SemiImportPrice), TSemiImportPrice, TMenuItem(Sender).Name);
end;

procedure Tmain.SN179242Click(Sender: TObject);
begin
  showFm(Pointer(SemiMonthTotal), TSemiMonthTotal, TMenuItem(Sender).Name);
end;

procedure Tmain.SN179243Click(Sender: TObject);
begin
  showFm(Pointer(MonthSemiFinishProduct), TMonthSemiFinishProduct, TMenuItem(Sender).Name);
end;

end.

