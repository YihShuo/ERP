unit main1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, jpeg, ExtCtrls, StdCtrls, ComCtrls, DB, DBTables,ShellApi,
  DBGridS, DBGridEh, Grids, IniFiles;
{
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls , Forms,
  Dialogs, Menus, jpeg, ExtCtrls, StdCtrls, Buttons,ShellApi, DB, DBTables;}

type
  Tmain = class(TForm)
    MainMenu1: TMainMenu;
    SN1: TMenuItem;          
    SN2: TMenuItem;
    SN3: TMenuItem;
    SN4: TMenuItem;
    Exit: TMenuItem;
    N1: TMenuItem;
    SN21: TMenuItem;
    SN22: TMenuItem;
    SN31: TMenuItem;
    SN32: TMenuItem;
    SN41: TMenuItem;
    SN42: TMenuItem;
    SN11: TMenuItem;
    Image1: TImage;
    Edit1: TEdit;
    StatusBar1: TStatusBar;
    SN12: TMenuItem;
    SN33: TMenuItem;
    SN34: TMenuItem;
    SN35: TMenuItem;
    SN36: TMenuItem;
    SN37: TMenuItem;
    Query1: TQuery;
    SN23: TMenuItem;
    SN38: TMenuItem;
    SN6: TMenuItem;
    SN61: TMenuItem;
    SN7X: TMenuItem;
    SN71X: TMenuItem;
    SN72X: TMenuItem;
    SN73X: TMenuItem;
    SN74X: TMenuItem;
    SN75: TMenuItem;
    SN76: TMenuItem;
    SN43: TMenuItem;
    SN13: TMenuItem;
    SN14: TMenuItem;
    SN141: TMenuItem;
    SN142: TMenuItem;
    SN77: TMenuItem;
    SN78: TMenuItem;
    SN771: TMenuItem;
    SN772: TMenuItem;
    SN79: TMenuItem;
    SN8: TMenuItem;
    SN81: TMenuItem;
    SN82: TMenuItem;
    SN741: TMenuItem;
    SN742: TMenuItem;
    SN781: TMenuItem;
    SN782: TMenuItem;
    SN743: TMenuItem;
    SN44: TMenuItem;
    SN83: TMenuItem;
    SN15: TMenuItem;
    SN84: TMenuItem;
    SN85: TMenuItem;
    SN790: TMenuItem;
    Edit2: TEdit;
    SN211: TMenuItem;
    SN212: TMenuItem;
    SN16: TMenuItem;
    SN39: TMenuItem;
    SN17: TMenuItem;
    SN45: TMenuItem;
    SN24: TMenuItem;
    SN46: TMenuItem;
    SN86: TMenuItem;
    SN47: TMenuItem;
    SN48: TMenuItem;
    SN18: TMenuItem;
    SN19: TMenuItem;
    SN1A: TMenuItem;
    SNA: TMenuItem;
    SN49: TMenuItem;
    SN25: TMenuItem;
    SN26: TMenuItem;
    SN1B: TMenuItem;
    SN27: TMenuItem;
    SN9: TMenuItem;
    SN91: TMenuItem;
    SN911: TMenuItem;
    SN916: TMenuItem;
    SN92: TMenuItem;
    SN93: TMenuItem;
    SN94: TMenuItem;
    SN95: TMenuItem;
    SN87: TMenuItem;
    SN88: TMenuItem;
    SN89: TMenuItem;
    SN8A: TMenuItem;
    SN8B: TMenuItem;
    SN8C: TMenuItem;
    SNA1: TMenuItem;
    SNA11: TMenuItem;
    SNA12: TMenuItem;
    SNA2: TMenuItem;
    SNA3: TMenuItem;
    SNA5: TMenuItem;
    SNA4: TMenuItem;
    SNA41: TMenuItem;
    SNA42: TMenuItem;
    SNA51: TMenuItem;
    SNA52: TMenuItem;
    BLimitHideQry: TQuery;
    SN213: TMenuItem;
    N3A1: TMenuItem;
    SNB: TMenuItem;
    SNB1: TMenuItem;
    SN214: TMenuItem;
    SN2141: TMenuItem;
    SN2142: TMenuItem;
    SN2143: TMenuItem;
    SN74: TMenuItem;
    SN96: TMenuItem;
    SN7: TMenuItem;
    SN71: TMenuItem;
    SN72: TMenuItem;
    SN73: TMenuItem;
    SN912: TMenuItem;
    SN913: TMenuItem;
    SN914: TMenuItem;
    SN921: TMenuItem;
    SN922: TMenuItem;
    SN923: TMenuItem;
    SN924: TMenuItem;
    SN931: TMenuItem;
    SN932: TMenuItem;
    SN933: TMenuItem;
    SN934: TMenuItem;
    SN8D: TMenuItem;
    SN9161: TMenuItem;
    SN9162: TMenuItem;
    SN9163: TMenuItem;
    SN9164: TMenuItem;
    SN3B: TMenuItem;
    SN3C: TMenuItem;
    SN8E: TMenuItem;
    SN3D: TMenuItem;
    SN3E: TMenuItem;
    SN3D1: TMenuItem;
    SN3D2: TMenuItem;
    SN1C: TMenuItem;
    SN1D: TMenuItem;
    SN3F: TMenuItem;
    SN3F1: TMenuItem;
    SN3F2: TMenuItem;
    SN3G: TMenuItem;
    SN3G2: TMenuItem;
    SN3G1: TMenuItem;
    SNC: TMenuItem;
    SNC1: TMenuItem;
    SNC2: TMenuItem;
    SNC21: TMenuItem;
    SNC22: TMenuItem;
    SNC3: TMenuItem;
    SNC4: TMenuItem;
    SN917: TMenuItem;
    SN9171: TMenuItem;
    SNC5: TMenuItem;
    SN915: TMenuItem;
    SN925: TMenuItem;
    SN9165: TMenuItem;
    SN935: TMenuItem;
    SN3H: TMenuItem;
    SN37A: TMenuItem;
    SN28: TMenuItem;
    SNC6: TMenuItem;
    SN3I: TMenuItem;
    SN3J: TMenuItem;
    SN62: TMenuItem;
    SN29: TMenuItem;
    SN3K: TMenuItem;
    procedure ExitClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure SN34Click(Sender: TObject);
    procedure SN35Click(Sender: TObject);
    procedure SN36Click(Sender: TObject);
    procedure SN11Click(Sender: TObject);
    procedure SN22Click(Sender: TObject);
    procedure SN12Click(Sender: TObject);
    procedure SN32Click(Sender: TObject);
    procedure SN33Click(Sender: TObject);
    procedure SN37Click(Sender: TObject);
    procedure SN23Click(Sender: TObject);
    procedure SN38Click(Sender: TObject);
    procedure SN61Click(Sender: TObject);
    procedure SN72XClick(Sender: TObject);
    procedure SN73XClick(Sender: TObject);
    procedure SN75Click(Sender: TObject);
    procedure SN76Click(Sender: TObject);
    procedure SN43Click(Sender: TObject);
    procedure SN13Click(Sender: TObject);
    procedure SN141Click(Sender: TObject);
    procedure SN142Click(Sender: TObject);
    procedure SN71XClick(Sender: TObject);
    procedure SN772Click(Sender: TObject);
    procedure SN771Click(Sender: TObject);
    procedure SN79Click(Sender: TObject);
    procedure SN81Click(Sender: TObject);
    procedure SN741Click(Sender: TObject);
    procedure SN742Click(Sender: TObject);
    procedure SN781Click(Sender: TObject);
    procedure SN782Click(Sender: TObject);
    procedure SN743Click(Sender: TObject);
    procedure SN44Click(Sender: TObject);
    procedure SN82Click(Sender: TObject);
    procedure SN83Click(Sender: TObject);
    procedure SN15Click(Sender: TObject);
    procedure SN84Click(Sender: TObject);
    procedure SN85Click(Sender: TObject);
    procedure SN790Click(Sender: TObject);
    procedure SN211Click(Sender: TObject);
    procedure SN212Click(Sender: TObject);
    procedure SN16Click(Sender: TObject);
    procedure SN39Click(Sender: TObject);
    procedure SN17Click(Sender: TObject);
    procedure SN45Click(Sender: TObject);
    procedure SN24Click(Sender: TObject);
    procedure SN46Click(Sender: TObject);
    procedure SN86Click(Sender: TObject);
    procedure SN47Click(Sender: TObject);
    procedure SN48Click(Sender: TObject);
    procedure SN18Click(Sender: TObject);
    procedure SN19Click(Sender: TObject);
    procedure SN1AClick(Sender: TObject);
    procedure SN49Click(Sender: TObject);
    procedure SN25Click(Sender: TObject);
    procedure SN26Click(Sender: TObject);
    procedure SN1BClick(Sender: TObject);
    procedure SN27Click(Sender: TObject);
    procedure SN911Click(Sender: TObject);
    procedure SN94Click(Sender: TObject);
    procedure SN95Click(Sender: TObject);
    procedure SN87Click(Sender: TObject);
    procedure SN88Click(Sender: TObject);
    procedure SN89Click(Sender: TObject);
    procedure SN8AClick(Sender: TObject);
    procedure SN8BClick(Sender: TObject);
    procedure SN8CClick(Sender: TObject);
    procedure SNA11Click(Sender: TObject);
    procedure SNA12Click(Sender: TObject);
    procedure SNA2Click(Sender: TObject);
    procedure SNA3Click(Sender: TObject);
    procedure SNA51Click(Sender: TObject);
    procedure SNA41Click(Sender: TObject);
    procedure SNA42Click(Sender: TObject);
    procedure SNA52Click(Sender: TObject);
    procedure SN213Click(Sender: TObject);
    procedure N3A1Click(Sender: TObject);
    procedure Image1DblClick(Sender: TObject);
    procedure SNB1Click(Sender: TObject);
    procedure SN2141Click(Sender: TObject);
    procedure SN2142Click(Sender: TObject);
    procedure SN2143Click(Sender: TObject);
    procedure SN711Click(Sender: TObject);
    procedure SN721Click(Sender: TObject);
    procedure SN722Click(Sender: TObject);
    procedure SN73Click(Sender: TObject);
    procedure SN74Click(Sender: TObject);
    procedure SN96Click(Sender: TObject);
    procedure SN912Click(Sender: TObject);
    procedure SN913Click(Sender: TObject);
    procedure SN914Click(Sender: TObject);
    procedure SN921Click(Sender: TObject);
    procedure SN922Click(Sender: TObject);
    procedure SN923Click(Sender: TObject);
    procedure SN924Click(Sender: TObject);
    procedure SN932Click(Sender: TObject);
    procedure SN931Click(Sender: TObject);
    procedure SN933Click(Sender: TObject);
    procedure SN934Click(Sender: TObject);
    procedure SN8DClick(Sender: TObject);
    procedure SN9161Click(Sender: TObject);
    procedure SN9162Click(Sender: TObject);
    procedure SN9163Click(Sender: TObject);
    procedure SN9164Click(Sender: TObject);
    procedure SN3BClick(Sender: TObject);
    procedure SN3CClick(Sender: TObject);
    procedure SN8EClick(Sender: TObject);
    procedure SN3EClick(Sender: TObject);
    procedure SN3D1Click(Sender: TObject);
    procedure SN1CClick(Sender: TObject);
    procedure SN3D2Click(Sender: TObject);
    procedure SN1DClick(Sender: TObject);
    procedure SN3F1Click(Sender: TObject);
    procedure SN3F2Click(Sender: TObject);
    procedure SN3G1Click(Sender: TObject);
    procedure SN3G2Click(Sender: TObject);
    procedure SNC1Click(Sender: TObject);
    procedure SNC21Click(Sender: TObject);
    procedure SNC22Click(Sender: TObject);
    procedure SNC3Click(Sender: TObject);
    procedure SNC4Click(Sender: TObject);
    procedure SN9171Click(Sender: TObject);
    procedure SNC5Click(Sender: TObject);
    procedure SN925Click(Sender: TObject);
    procedure SN935Click(Sender: TObject);
    procedure SN915Click(Sender: TObject);
    procedure SN9165Click(Sender: TObject);
    procedure SN3HClick(Sender: TObject);
    procedure SN37AClick(Sender: TObject);
    procedure SN28Click(Sender: TObject);
    procedure SNC6Click(Sender: TObject);
    procedure SN3IClick(Sender: TObject);
    procedure SN3JClick(Sender: TObject);
    procedure SN62Click(Sender: TObject);
    procedure SN29Click(Sender: TObject);
    procedure SN3KClick(Sender: TObject);
  private
    MKID:String;
    LanguageID:String;
    { Private declarations }
     //---20150817 Projoe 補上由 Nick 所提供的function log 程式
    //用法: SaveProLog(GetMKID(),TMenuItem(Sender).Name,GetUserID());
    procedure SaveProLog(AMKID: string; AFORMID: string; AUSERID: string);
    //---20150817 Projoe 修改 Menu 上面的按鈕呼叫方式
    procedure showFm(var fm: Pointer; parentClass: TPersistentClass; miname: string);
    procedure ReadIni();
  public
    ServerIP:string;
    LIY_ERP,LIY_DD:String;
    { Public declarations }
    procedure Language();
    procedure FormLanguage(var formObj:Pointer;mainForm:string);
    procedure FormDBGridLanguage(var formObj:Pointer ;mainForm:string);
    procedure EnableFORMID();
  end;

var
  main: Tmain;
  suser,spwd:string;

implementation

uses Sitearea1, Firststock1, MaterialArea1, DeliverList1, EntryList1,
   DeliverCon1, MonthStock1, MaterialTrace1, AnyStock1, SuppNew1,
  MatConsumption1, EntryCon1, SafeMaterial1, LabelInbox1, WarehouseTrace1,
  WarehouseRep1, ReplenishAmount1, DeliverAccount1, DeliverTrace1,
  DeliverTraceS1, LabelCarton1, ShippingImport1, ShippingRep1,
  CarttonMove1, StockRep1, MaterialCode1,  Inspector1,
  InspectorRep1, CarttonMoveLack1, InspectorLack1, InventoryStock1,
  MatCodeList1, ScanToDeliver1, Deliverdet1, MaterialSet1, MaterialNoDel1,
  AccountRep1, EntryTotal1, MaterialList1, MatInOut1, Purtrace1, MatStock1,
  EntryReport1, EntryConfirm1, MaterialScan1, MaterialInvType1,
  MatStockuse1, nousematerialp, cfmr3p,DeliverMatDTp, TransferClassify1, FunUnit,
  Containerlist1,AnyStock2, MaterialNGColor1, ChemicalMaterial1,
  Reality_Remain_Quantity1, LYV_Lastborrow1,
  LYV_Lastreturn1, LastSTOCK_new1, LastTrackRpt1, LastSizeRange1,
  EntryMatBarcode1, DeliveryMatBarcode1, DeliveryMatConBarcode1, EntryMatRFIDCode1,
  DeliveryMatRFIDCode1, MatRFIDCodeRtp1,Outsoleborrow1,
  OutsoleborrowCFM1, Outsolereturn1, OutsoleSTOCK_new1, OutsoleSizeRange1,
  OutsoleDDZLRtp1, OutsoleSCBZCL1, OutsolePlanOrderRpt1, DM3,
  ReturnMaterial1, AnyStockUltra1, TWAuditReport1, RKNOConfirm1, RKNOConfirm21, RKNOConfirm31,
  EntryTPM1, DelTPM1, DeliverConfirmTPM1, TPMStockReport1, MaterialReviewList1, LastArea1,
  LYV_RAPborrow1, LYV_DAOborrow1, LYV_KUNborrow1, LYV_RAPreturn1, LYV_DAOreturn1, LYV_KUNreturn1,
  RAPSTOCK_new1, DAOstock_new1, KUNstock_new1, ScanQR1 ,
  LYV_LastborrowCFM1, LYV_RAPborrowCFM1, LYV_DAOborrowCFM1, DeliveryNoList1,
  LYV_KUNborrowCFM1, WarehouseKeyInStock1, AccountKeyInStock1, AnyStockScan1,
  Traceability_Warehouse1, WareStock1, MaterialReleasedRecords1, MaterialReleasedCofirm1,
  Traceability_Warehouse_Chemical1, ChemicalReleasedRecords1,
  Detail_Rubber_In1, Detail_Rubber_Out1, EntryFOC1, DelFOC1,
  DeliverConfirmFOC1, FOCStockReport1, MaterialDiscardReport1,
  LYV_LastborrowCFM_TL1, FOCList1, LYV_TLreturn1, TLSTOCK_new1,
  LYV_TLborrow1, LYV_TLborrowCFM1, RequestCheckStock1, MonthlyStockReport1,
  Declaretion_Check1, FOCMaterialTrace1, AnyStock_R1, Deliverdet_R1,
  Scrap_Material1, EntryDayOff1, LockQtyMaterial1;


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

procedure Tmain.ExitClick(Sender: TObject);
begin
close;
end;

procedure Tmain.FormClose(Sender: TObject; var Action: TCloseAction);
var sline:string;
    textvar:textfile;
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
        funcObj.free;
      end;
end;

procedure Tmain.ReadIni();
var MyIni :Tinifile;
    AppDir, UserIDList:string;
    tmpUserIDList:TStringlist;
    index:integer;
begin
  AppDir:=ExtractFilePath(Application.ExeName);
  if FileExists(AppDir+'\ComName.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ComName.ini');
      UserIDList:=MyIni.ReadString('ERP','Warehouse_N3K_CheckUserID','');
    finally
      MyIni.Free;
    end;
  end;

  if  UserIDList <> '' then
  begin
    tmpUserIDList:=FuncObj.SplitString(UserIDList,',');
    index:=tmpUserIDList.IndexOf(main.Edit1.Text);
    if index>=0 then
    begin
      SN3K.Visible:=true;
    end else begin
      SN3K.Visible:=false;
    end;
    tmpUserIDList.Free;
  end else
  begin
    SN3K.Visible:=false;
  end;
end;

procedure Tmain.FormCreate(Sender: TObject);
var y,m,d:word;
    sline:string;
    textvar:textfile;
begin
  //20130910 weston update
  funcObj:=TFuncObj.create;
  funcObj.setParameter(true,ExtractFilePath(Application.ExeName));
  ServerIP:=FuncObj.GetBDE_SERVERIP(DM2.DBshipping.AliasName);
  FuncObj.GetBDE_DATABASENAME(DM2.DBshipping.AliasName,LIY_ERP,LIY_DD);
  shortdateformat:='yyyy/MM/dd';

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
      ParamByName('userid').Value := suser;
      ParamByName('mkid').Value := '05';  MKID:='05';
      ParamByName('GSBH').Value := edit2.text;
      Active:=true;      //根據用戶名稱確定權限
      //
      BLimitHideQry.ParamByName('mkid').Value := '05';
      BLimitHideQry.Active:=true;
      EnableFORMID();    //20211009 功能選單
      BLimitHideQry.Active:=false;
      //
      Active:=false;
  end;
  Language();
  ReadIni();
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
//
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

procedure Tmain.SN34Click(Sender: TObject);
begin
  showFm(Pointer(Sitearea), TSitearea, TMenuItem(Sender).Name);
end;

procedure Tmain.SN35Click(Sender: TObject);
begin
  showFm(Pointer(Firststock), TFirststock, TMenuItem(Sender).Name);
end;

procedure Tmain.SN36Click(Sender: TObject);
begin
  showFm(Pointer(MaterialArea), TMaterialArea, TMenuItem(Sender).Name);
end;

procedure Tmain.SN11Click(Sender: TObject);
begin
  showFm(Pointer(DeliverList), TDeliverList, TMenuItem(Sender).Name);
end;

procedure Tmain.SN22Click(Sender: TObject);
begin
  showFm(Pointer(EntryConfirm), TEntryConfirm, TMenuItem(Sender).Name);
end;

procedure Tmain.SN12Click(Sender: TObject);
begin
  showFm(Pointer(DeliverCon), TDeliverCon, TMenuItem(Sender).Name);
end;

procedure Tmain.SN32Click(Sender: TObject);
begin
  showFm(Pointer(MonthStock), TMonthStock, TMenuItem(Sender).Name);
end;

procedure Tmain.SN33Click(Sender: TObject);
begin
  showFm(Pointer(MaterialTrace), TMaterialTrace, TMenuItem(Sender).Name);
end;

procedure Tmain.SN37Click(Sender: TObject);
begin
  showFm(Pointer(AnyStock), TAnyStock, TMenuItem(Sender).Name);
end;

procedure Tmain.SN23Click(Sender: TObject);
begin
  showFm(Pointer(SuppNew), TSuppNew, TMenuItem(Sender).Name);
end;

procedure Tmain.SN38Click(Sender: TObject);
begin
  showFm(Pointer(MatConsumption), TMatConsumption, TMenuItem(Sender).Name);
end;

procedure Tmain.SN61Click(Sender: TObject);
begin
  showFm(Pointer(SafeMaterial), TSafeMaterial, TMenuItem(Sender).Name);
end;

procedure Tmain.SN72XClick(Sender: TObject);
begin
  showFm(Pointer(LabelInbox), TLabelInbox, TMenuItem(Sender).Name);
end;

procedure Tmain.SN73XClick(Sender: TObject);
var getdir:string;
begin
   Getdir:= PChar(ExtractFilePath(Application.ExeName)+'Scan\');
   if fileexists(getdir+'Scan.exe') then
   begin
     ShellExecute(Handle,'open',PChar(getdir+'Scan.exe'),nil,pchar(getdir),SW_SHOW);
     close;
   end else
   begin
     showmessage('Pls setup the program first. Abort');
   end;
end;

procedure Tmain.SN75Click(Sender: TObject);
begin
  showFm(Pointer(WarehouseTrace), TWarehouseTrace, TMenuItem(Sender).Name);
end;

procedure Tmain.SN76Click(Sender: TObject);
begin
  showFm(Pointer(WarehouseRep), TWarehouseRep, TMenuItem(Sender).Name);
end;

procedure Tmain.SN43Click(Sender: TObject);
begin
  showFm(Pointer(ReplenishAmount), TReplenishAmount, TMenuItem(Sender).Name);
end;

procedure Tmain.SN13Click(Sender: TObject);
begin
  showFm(Pointer(DeliverAccount), TDeliverAccount, TMenuItem(Sender).Name);
end;

procedure Tmain.SN141Click(Sender: TObject);
begin
  showFm(Pointer(DeliverTrace), TDeliverTrace, TMenuItem(Sender).Name);
end;

procedure Tmain.SN142Click(Sender: TObject);
begin
  showFm(Pointer(DeliverTraceS), TDeliverTraceS, TMenuItem(Sender).Name);
end;

procedure Tmain.SN71XClick(Sender: TObject);
begin
  showFm(Pointer(LabelCarton), TLabelCarton, TMenuItem(Sender).Name);
end;

procedure Tmain.SN772Click(Sender: TObject);
begin
  showFm(Pointer(ShippingRep), TShippingRep, TMenuItem(Sender).Name);
end;

procedure Tmain.SN771Click(Sender: TObject);
begin
  showFm(Pointer(ShippingImport), TShippingImport, TMenuItem(Sender).Name);
end;

procedure Tmain.SN79Click(Sender: TObject);
begin
  showFm(Pointer(StockRep), TStockRep, TMenuItem(Sender).Name);
end;

procedure Tmain.SN81Click(Sender: TObject);
begin
  showFm(Pointer(MaterialCode), TMaterialCode, TMenuItem(Sender).Name);
end;

procedure Tmain.SN741Click(Sender: TObject);
begin
  showFm(Pointer(Inspector), TInspector, TMenuItem(Sender).Name);
end;

procedure Tmain.SN742Click(Sender: TObject);
begin
  showFm(Pointer(InspectorRep), TInspectorRep, TMenuItem(Sender).Name);
end;

procedure Tmain.SN781Click(Sender: TObject);
begin
  showFm(Pointer(CarttonMove), TCarttonMove, TMenuItem(Sender).Name);
end;

procedure Tmain.SN782Click(Sender: TObject);
begin
  showFm(Pointer(CarttonMoveLack), TCarttonMoveLack, TMenuItem(Sender).Name);
end;

procedure Tmain.SN743Click(Sender: TObject);
begin
  showFm(Pointer(InspectorLack), TInspectorLack, TMenuItem(Sender).Name);
end;

procedure Tmain.SN44Click(Sender: TObject);
begin
  showFm(Pointer(InventoryStock), TInventoryStock, TMenuItem(Sender).Name);
end;

procedure Tmain.SN82Click(Sender: TObject);
begin
  showFm(Pointer(MatCodeList), TMatCodeList, TMenuItem(Sender).Name);
end;

procedure Tmain.SN83Click(Sender: TObject);
begin
  showFm(Pointer(ScanToDeliver), TScanToDeliver, TMenuItem(Sender).Name);
end;

procedure Tmain.SN15Click(Sender: TObject);
begin
  showFm(Pointer(Deliverdet), TDeliverdet, TMenuItem(Sender).Name);
end;

procedure Tmain.SN84Click(Sender: TObject);
begin
  showFm(Pointer(MaterialSet), TMaterialSet, TMenuItem(Sender).Name);
end;

procedure Tmain.SN85Click(Sender: TObject);
begin
  showFm(Pointer(MaterialNoDel), TMaterialNoDel, TMenuItem(Sender).Name);
end;

procedure Tmain.SN790Click(Sender: TObject);
begin
  showFm(Pointer(AccountRep), TAccountRep, TMenuItem(Sender).Name) ;
end;

procedure Tmain.SN211Click(Sender: TObject);
begin
  showFm(Pointer(EntryList), TEntryList, TMenuItem(Sender).Name)  ;
end;

procedure Tmain.SN212Click(Sender: TObject);
begin
  showFm(Pointer(EntryTotal), TEntryTotal, TMenuItem(Sender).Name) ;
end;

procedure Tmain.SN16Click(Sender: TObject);
begin
  showFm(Pointer(MaterialList), TMaterialList, TMenuItem(Sender).Name);
end;

procedure Tmain.SN39Click(Sender: TObject);
begin
  showFm(Pointer(MatInOut), TMatInOut, TMenuItem(Sender).Name);
end;

procedure Tmain.SN17Click(Sender: TObject);
begin
  showFm(Pointer(Purtrace), TPurtrace, TMenuItem(Sender).Name);
end;

procedure Tmain.SN45Click(Sender: TObject);
begin
  showFm(Pointer(MatStock), TMatStock, TMenuItem(Sender).Name);
end;

procedure Tmain.SN24Click(Sender: TObject);
begin
  showFm(Pointer(EntryReport), TEntryReport, TMenuItem(Sender).Name);
end;

procedure Tmain.SN46Click(Sender: TObject);
begin
  showFm(Pointer(AnyStockF), TAnyStockF, TMenuItem(Sender).Name);
end;

procedure Tmain.SN86Click(Sender: TObject);
begin
  showFm(Pointer(MaterialScan), TMaterialScan, TMenuItem(Sender).Name);
end;

procedure Tmain.SN47Click(Sender: TObject);
begin
  showFm(Pointer(MaterialInvType), TMaterialInvType, TMenuItem(Sender).Name);
end;

procedure Tmain.SN48Click(Sender: TObject);
begin
  showFm(Pointer(MatStockuse), TMatStockuse, TMenuItem(Sender).Name);
end;

procedure Tmain.SN18Click(Sender: TObject);
begin
  showFm(Pointer(NoUseMaterial), TNoUseMaterial, TMenuItem(Sender).Name);
end;

procedure Tmain.SN19Click(Sender: TObject);
begin
  showFm(Pointer(CFMR3), TCFMR3, TMenuItem(Sender).Name);
end;

procedure Tmain.SN1AClick(Sender: TObject);
begin
  showFm(Pointer(DeliverMatDT), TDeliverMatDT, TMenuItem(Sender).Name);
end;

procedure Tmain.SN49Click(Sender: TObject);
begin
  showFm(Pointer(TransferClassify), TTransferClassify, TMenuItem(Sender).Name);
end;
procedure Tmain.SN25Click(Sender: TObject);
begin
  showFm(Pointer(Containerlist), TContainerlist, TMenuItem(Sender).Name)  ;
end;

procedure Tmain.SN26Click(Sender: TObject);
begin
  showFm(Pointer(MaterialNGColor), TMaterialNGColor, TMenuItem(Sender).Name);
end;

procedure Tmain.SN1BClick(Sender: TObject);
begin
  showFm(Pointer(ChemicalMaterial), TChemicalMaterial, TMenuItem(Sender).Name);
end;

procedure Tmain.SN27Click(Sender: TObject);
begin
  showFm(Pointer(Reality_Remain_Quantity), TReality_Remain_Quantity, TMenuItem(Sender).Name);
end;

procedure Tmain.SN911Click(Sender: TObject);
begin
 showFm(Pointer(LYV_LastBorrow), TLYV_LastBorrow, TMenuItem(Sender).Name);
end;

procedure Tmain.SN94Click(Sender: TObject);
begin
  showFm(Pointer(LastTrackRpt), TLastTrackRpt, TMenuItem(Sender).Name);
end;

procedure Tmain.SN95Click(Sender: TObject);
begin
  showFm(Pointer(LastSizeRange), TLastSizeRange, TMenuItem(Sender).Name);
end;

procedure Tmain.SN87Click(Sender: TObject);
begin
  showFm(Pointer(EntryMatBarcode), TEntryMatBarcode, TMenuItem(Sender).Name);
end;

procedure Tmain.SN88Click(Sender: TObject);
begin
  showFm(Pointer(DeliveryMatBarcode), TDeliveryMatBarcode, TMenuItem(Sender).Name);
end;

procedure Tmain.SN89Click(Sender: TObject);
begin
  showFm(Pointer(DeliveryMatConBarcode), TDeliveryMatConBarcode, TMenuItem(Sender).Name);
end;

procedure Tmain.SN8AClick(Sender: TObject);
begin
  showFm(Pointer(EntryMatRFIDCode), TEntryMatRFIDCode, TMenuItem(Sender).Name);
end;

procedure Tmain.SN8BClick(Sender: TObject);
begin
  showFm(Pointer(DeliveryMatRFIDCode), TDeliveryMatRFIDCode, TMenuItem(Sender).Name);
end;

procedure Tmain.SN8CClick(Sender: TObject);
begin
  showFm(Pointer(MatRFIDCodeRtp), TMatRFIDCodeRtp, TMenuItem(Sender).Name);
end;

procedure Tmain.SNA11Click(Sender: TObject);
begin
  showFm(Pointer(Outsoleborrow), TOutsoleborrow, TMenuItem(Sender).Name);
end;

procedure Tmain.SNA12Click(Sender: TObject);
begin
  showFm(Pointer(OutsoleborrowCFM), TOutsoleborrowCFM, TMenuItem(Sender).Name);
end;

procedure Tmain.SNA2Click(Sender: TObject);
begin
  showFm(Pointer(Outsolereturn), TOutsolereturn, TMenuItem(Sender).Name);
end;

procedure Tmain.SNA3Click(Sender: TObject);
begin
  showFm(Pointer(OutsoleSTOCK), TOutsoleSTOCK, TMenuItem(Sender).Name);
end;

procedure Tmain.SNA51Click(Sender: TObject);
begin
  showFm(Pointer(OutsoleSizeRange), TOutsoleSizeRange, TMenuItem(Sender).Name);
end;

procedure Tmain.SNA41Click(Sender: TObject);
begin
  showFm(Pointer(OutsoleDDZLRtp), TOutsoleDDZLRtp, TMenuItem(Sender).Name);
end;

procedure Tmain.SNA42Click(Sender: TObject);
begin
  showFm(Pointer(OutsolePlanOrderRpt), TOutsolePlanOrderRpt, TMenuItem(Sender).Name);
end;

procedure Tmain.SNA52Click(Sender: TObject);
begin
  showFm(Pointer(OutsoleSCBZCL), TOutsoleSCBZCL, TMenuItem(Sender).Name);
end;

procedure Tmain.SN213Click(Sender: TObject);
begin
  showFm(Pointer(ReturnMaterial), TReturnMaterial, TMenuItem(Sender).Name)  ;
end;

procedure Tmain.N3A1Click(Sender: TObject);
begin
  showFm(Pointer(AnyStockUltra), TAnyStockUltra, TMenuItem(Sender).Name);
end;

procedure Tmain.Image1DblClick(Sender: TObject);
begin
  Edit1.Visible := not Edit1.Visible;
  Edit2.Visible := not Edit2.Visible;
end;

procedure Tmain.SNB1Click(Sender: TObject);
begin
  showFm(Pointer(TWAuditReport), TTWAuditReport, TMenuItem(Sender).Name);
end;

procedure Tmain.SN2141Click(Sender: TObject);
begin
  showFm(Pointer(RKNOConfirm), TRKNOConfirm, TMenuItem(Sender).Name);
end;

procedure Tmain.SN2142Click(Sender: TObject);
begin
  showFm(Pointer(RKNOConfirm2), TRKNOConfirm2, TMenuItem(Sender).Name);
end;

procedure Tmain.SN2143Click(Sender: TObject);
begin
  showFm(Pointer(RKNOConfirm3), TRKNOConfirm3, TMenuItem(Sender).Name);
end;

procedure Tmain.SN711Click(Sender: TObject);
begin
  showFm(Pointer(EntryTPM), TEntryTPM, TMenuItem(Sender).Name);
end;

procedure Tmain.SN721Click(Sender: TObject);
begin
  showFm(Pointer(DelTPM), TDelTPM, TMenuItem(Sender).Name);
end;

procedure Tmain.SN722Click(Sender: TObject);
begin
  showFm(Pointer(DeliverConfirmTPM), TDeliverConfirmTPM, TMenuItem(Sender).Name);
end;

procedure Tmain.SN73Click(Sender: TObject);
begin
  showFm(Pointer(TPMStockReport), TTPMStockReport, TMenuItem(Sender).Name);
end;

procedure Tmain.SN74Click(Sender: TObject);
begin
  showFm(Pointer(MaterialReviewList), TMaterialReviewList, TMenuItem(Sender).Name);
end;

procedure Tmain.SN96Click(Sender: TObject);
begin
  showFm(Pointer(LastArea), TLastArea, TMenuItem(Sender).Name);
end;

procedure Tmain.SN912Click(Sender: TObject);
begin
  showFm(Pointer(LYV_RAPborrow), TLYV_RAPborrow, TMenuItem(Sender).Name);
end;

procedure Tmain.SN913Click(Sender: TObject);
begin
  showFm(Pointer(LYV_DAOborrow), TLYV_DAOborrow, TMenuItem(Sender).Name);
end;

procedure Tmain.SN914Click(Sender: TObject);
begin
  showFm(Pointer(LYV_KUNborrow), TLYV_KUNborrow, TMenuItem(Sender).Name);
end;

procedure Tmain.SN921Click(Sender: TObject);
begin
  showFm(Pointer(LYV_LastReturn), TLYV_LastReturn, TMenuItem(Sender).Name);
end;

procedure Tmain.SN922Click(Sender: TObject);
begin
  showFm(Pointer(LYV_RAPreturn), TLYV_RAPreturn, TMenuItem(Sender).Name);
end;

procedure Tmain.SN923Click(Sender: TObject);
begin
  showFm(Pointer(LYV_DAOreturn), TLYV_DAOreturn, TMenuItem(Sender).Name);
end;

procedure Tmain.SN924Click(Sender: TObject);
begin
  showFm(Pointer(LYV_KUNreturn), TLYV_KUNreturn, TMenuItem(Sender).Name);
end;

procedure Tmain.SN932Click(Sender: TObject);
begin
  showFm(Pointer(RAPSTOCK), TRAPSTOCK, TMenuItem(Sender).Name);
end;

procedure Tmain.SN931Click(Sender: TObject);
begin
  showFm(Pointer(LastSTOCK), TLastSTOCK, TMenuItem(Sender).Name);
end;

procedure Tmain.SN933Click(Sender: TObject);
begin
  showFm(Pointer(DAOstock), TDAOstock, TMenuItem(Sender).Name);
end;

procedure Tmain.SN934Click(Sender: TObject);
begin
  showFm(Pointer(KUNstock), TKUNstock, TMenuItem(Sender).Name);
end;

procedure Tmain.SN8DClick(Sender: TObject);
begin
  showFm(Pointer(ScanQR), TScanQR, TMenuItem(Sender).Name);
end;

procedure Tmain.SN9161Click(Sender: TObject);
begin
  showFm(Pointer(LYV_LastborrowCFM), TLYV_LastborrowCFM, TMenuItem(Sender).Name);
end;

procedure Tmain.SN9162Click(Sender: TObject);
begin
  showFm(Pointer(LYV_RAPborrowCFM), TLYV_RAPborrowCFM, TMenuItem(Sender).Name);
end;

procedure Tmain.SN9163Click(Sender: TObject);
begin
  showFm(Pointer(LYV_DAOborrowCFM), TLYV_DAOborrowCFM, TMenuItem(Sender).Name);
end;

procedure Tmain.SN9164Click(Sender: TObject);
begin
  showFm(Pointer(LYV_KUNborrowCFM), TLYV_KUNborrowCFM, TMenuItem(Sender).Name);
end;

procedure Tmain.SN3BClick(Sender: TObject);
begin
  showFm(Pointer(WarehouseKeyInStock), TWarehouseKeyInStock, TMenuItem(Sender).Name);
end;

procedure Tmain.SN3CClick(Sender: TObject);
begin
  showFm(Pointer(AccountKeyInStock), TAccountKeyInStock, TMenuItem(Sender).Name);
end;

procedure Tmain.SN8EClick(Sender: TObject);
begin
  showFm(Pointer(AnyStockScan), TAnyStockScan, TMenuItem(Sender).Name);
end;

procedure Tmain.SN3EClick(Sender: TObject);
begin
  showFm(Pointer(WareStock), TWareStock, TMenuItem(Sender).Name);
end;

procedure Tmain.SN3D1Click(Sender: TObject);
begin
  showFm(Pointer(Traceability_Warehouse), TTraceability_Warehouse, TMenuItem(Sender).Name);
end;

procedure Tmain.SN1CClick(Sender: TObject);
begin
  showFm(Pointer(MaterialReleasedCofirm), TMaterialReleasedCofirm, TMenuItem(Sender).Name);
end;

procedure Tmain.SN3D2Click(Sender: TObject);
begin
  showFm(Pointer(MaterialReleasedRecords), TMaterialReleasedRecords, TMenuItem(Sender).Name);
end;

procedure Tmain.SN1DClick(Sender: TObject);
begin
  showFm(Pointer(DeliveryNoList), TDeliveryNoList, TMenuItem(Sender).Name);
end;

procedure Tmain.SN3F1Click(Sender: TObject);
begin
  showFm(Pointer(Traceability_Warehouse_Chemical), TTraceability_Warehouse_Chemical, TMenuItem(Sender).Name);
end;

procedure Tmain.SN3F2Click(Sender: TObject);
begin
  showFm(Pointer(ChemicalReleasedRecords), TChemicalReleasedRecords, TMenuItem(Sender).Name);
end;

procedure Tmain.SN3G1Click(Sender: TObject);
begin
  showFm(Pointer(Detail_Rubber_In), TDetail_Rubber_In, TMenuItem(Sender).Name);
end;

procedure Tmain.SN3G2Click(Sender: TObject);
begin
  showFm(Pointer(Detail_Rubber_Out), TDetail_Rubber_Out, TMenuItem(Sender).Name);
end;

procedure Tmain.SNC1Click(Sender: TObject);
begin
  showFm(Pointer(EntryFoc), TEntryFoc, TMenuItem(Sender).Name);
end;

procedure Tmain.SNC21Click(Sender: TObject);
begin
  showFm(Pointer(DelFOC), TDelFOC, TMenuItem(Sender).Name);
end;

procedure Tmain.SNC22Click(Sender: TObject);
begin
  showFm(Pointer(DeliverConfirmFOC), TDeliverConfirmFOC, TMenuItem(Sender).Name);
end;

procedure Tmain.SNC3Click(Sender: TObject);
begin
  showFm(Pointer(FOCStockReport), TFOCStockReport, TMenuItem(Sender).Name);
end;

procedure Tmain.SNC4Click(Sender: TObject);
begin
  showFm(Pointer(MaterialDiscardReport), TMaterialDiscardReport, TMenuItem(Sender).Name);
end;

procedure Tmain.SN9171Click(Sender: TObject);
begin
  showFm(Pointer(LYV_LastborrowCFM_TL), TLYV_LastborrowCFM_TL, TMenuItem(Sender).Name);
end;

procedure Tmain.SNC5Click(Sender: TObject);
begin
  showFm(Pointer(FOCList), TFOCList, TMenuItem(Sender).Name);
end;

procedure Tmain.SN925Click(Sender: TObject);
begin
  showFm(Pointer(LYV_TLreturn), TLYV_TLreturn, TMenuItem(Sender).Name);
end;

procedure Tmain.SN935Click(Sender: TObject);
begin
  showFm(Pointer(TLstock), TTLstock, TMenuItem(Sender).Name);
end;

procedure Tmain.SN915Click(Sender: TObject);
begin
  showFm(Pointer(LYV_TLborrow), TLYV_TLborrow, TMenuItem(Sender).Name);
end;

procedure Tmain.SN9165Click(Sender: TObject);
begin
  showFm(Pointer(LYV_TLborrowCFM), TLYV_TLborrowCFM, TMenuItem(Sender).Name);
end;

procedure Tmain.SN3HClick(Sender: TObject);
begin
  showFm(Pointer(RequestCheckStock), TRequestCheckStock, TMenuItem(Sender).Name);
end;

procedure Tmain.SN37AClick(Sender: TObject);
begin
  showFm(Pointer(MonthlyStockReport), TMonthlyStockReport, TMenuItem(Sender).Name);
end;

procedure Tmain.SN28Click(Sender: TObject);
begin
  showFm(Pointer(Declaretion_Check), TDeclaretion_Check, TMenuItem(Sender).Name);
end;

procedure Tmain.SNC6Click(Sender: TObject);
begin
  showFm(Pointer(FOCMaterialTrace), TFOCMaterialTrace, TMenuItem(Sender).Name);
end;

procedure Tmain.SN3IClick(Sender: TObject);
begin
  showFm(Pointer(AnyStock_R), TAnyStock_R, TMenuItem(Sender).Name);
end;

procedure Tmain.SN3JClick(Sender: TObject);
begin
  showFm(Pointer(Deliverdet_R), TDeliverdet_R, TMenuItem(Sender).Name);
end;

procedure Tmain.SN62Click(Sender: TObject);
begin
    showFm(Pointer(Scrap_Material), TScrap_Material, TMenuItem(Sender).Name);
end;

procedure Tmain.SN29Click(Sender: TObject);
begin
  showFm(Pointer(EntryDayOff), TEntryDayOff, TMenuItem(Sender).Name);
end;

procedure Tmain.SN3KClick(Sender: TObject);
begin
  showFm(Pointer(LockQtyMaterial), TLockQtyMaterial, TMenuItem(Sender).Name);
end;

end.
