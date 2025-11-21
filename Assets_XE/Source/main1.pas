unit main1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, jpeg, ExtCtrls, StdCtrls, ComCtrls, DB, DBTables,FunUnit,
  DBGridS,DBGridEh, Grids, Buttons;


type
  Tmain = class(TForm)
    MainMenu1: TMainMenu;
    SN1: TMenuItem;
    SN2: TMenuItem;
    SN3: TMenuItem;
    SN21: TMenuItem;
    SN22: TMenuItem;
    SN11: TMenuItem;
    Image1: TImage;
    SN13: TMenuItem;
    Edit1: TEdit;
    StatusBar1: TStatusBar;
    Query1: TQuery;
    Edit2: TEdit;
    SN211: TMenuItem;
    SN212: TMenuItem;
    SN213: TMenuItem;
    SN214: TMenuItem;
    SN23: TMenuItem;
    SN215: TMenuItem;
    SN31: TMenuItem;
    SN216: TMenuItem;
    SN36: TMenuItem;
    SN37: TMenuItem;
    SN38: TMenuItem;
    SN217: TMenuItem;
    SN24: TMenuItem;
    SN12: TMenuItem;
    SN218: TMenuItem;
    SN219: TMenuItem;
    SN25: TMenuItem;
    BLimitHideQry: TQuery;
    SN14: TMenuItem;
    SN15: TMenuItem;
    SN32: TMenuItem;
    SN33: TMenuItem;
    SN34: TMenuItem;
    SN35: TMenuItem;
    SN341: TMenuItem;
    SN351: TMenuItem;
    SN352: TMenuItem;
    SN342: TMenuItem;
    SN26: TMenuItem;
    SN21A: TMenuItem;
    SN21A1: TMenuItem;
    SN21A2: TMenuItem;
    SN2141: TMenuItem;
    SN2142: TMenuItem;
    SN21B: TMenuItem;
    SN16: TMenuItem;
    SN4: TMenuItem;
    SN41: TMenuItem;
    SN231: TMenuItem;
    SN232: TMenuItem;
    SN233: TMenuItem;
    SN234: TMenuItem;
    SN235: TMenuItem;
    SN236: TMenuItem;
    SN237: TMenuItem;
    SN238: TMenuItem;
    SN239: TMenuItem;
    SN23A: TMenuItem;
    SN42: TMenuItem;
    SN5: TMenuItem;
    SN51: TMenuItem;
    SN43: TMenuItem;
    SN44: TMenuItem;
    SN45: TMenuItem;
    SN27: TMenuItem;
    SN46: TMenuItem;
    ITchecklist1: TMenuItem;
    procedure SN16Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure SN11Click(Sender: TObject);
    procedure SN13Click(Sender: TObject);
    procedure SN22Click(Sender: TObject);
    procedure SN23Click(Sender: TObject);
    procedure SN211Click(Sender: TObject);
    procedure SN212Click(Sender: TObject);
    procedure SN213Click(Sender: TObject);
    procedure SN215Click(Sender: TObject);
    procedure SN216Click(Sender: TObject);
    procedure SN32Click(Sender: TObject);
    procedure SN31Click(Sender: TObject);
    procedure SN36Click(Sender: TObject);
    procedure SN37Click(Sender: TObject);
    procedure SN38Click(Sender: TObject);
    procedure SN217Click(Sender: TObject);
    procedure SN24Click(Sender: TObject);
    procedure SN12Click(Sender: TObject);
    procedure SN218Click(Sender: TObject);
    procedure SN219Click(Sender: TObject);
    procedure SN25Click(Sender: TObject);
    procedure SN14Click(Sender: TObject);
    procedure SN15Click(Sender: TObject);
    procedure SN351Click(Sender: TObject);
    procedure SN352Click(Sender: TObject);
    procedure SN341Click(Sender: TObject);
    procedure SN33Click(Sender: TObject);
    procedure SN342Click(Sender: TObject);
    procedure SN26Click(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure SN21A1Click(Sender: TObject);
    procedure SN21A2Click(Sender: TObject);
    procedure SN2141Click(Sender: TObject);
    procedure SN2142Click(Sender: TObject);
    procedure SN21BClick(Sender: TObject);
    procedure SN41Click(Sender: TObject);
    procedure SN231Click(Sender: TObject);
    procedure SN232Click(Sender: TObject);
    procedure SN233Click(Sender: TObject);
    procedure SN234Click(Sender: TObject);
    procedure SN235Click(Sender: TObject);
    procedure SN236Click(Sender: TObject);
    procedure SN237Click(Sender: TObject);
    procedure SN238Click(Sender: TObject);
    procedure SN239Click(Sender: TObject);
    procedure SN23AClick(Sender: TObject);
    procedure SN42Click(Sender: TObject);
    procedure SN51Click(Sender: TObject);
    procedure SN43Click(Sender: TObject);
    procedure SN44Click(Sender: TObject);
    procedure SN45Click(Sender: TObject);
    procedure SN27Click(Sender: TObject);
    procedure SN46Click(Sender: TObject);
    procedure ITchecklist1Click(Sender: TObject);

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
    LIY_ERP,LIY_DD:string;
    LanguageName:String;
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

uses DM1,EquipmentClassification1, EquipmentSupplier1, EquipmentEntryConfirm1,
  EquipmentConfirm1, EntryEquipment1, Deliver_Equipment1, EquipmentList1,
  AssetFlowChart1, EquipmentAccountConfirm1, EquipmentCal1, EquipmentAssetRpt1,
  EquipmentMonthS1, PurEquipment1, EquipmentCode1, ApplyEquipment1, Deliver_EquipmentB1,
  Deliver_EquipmentM1, Deliver_EquipmentS1, Deliver_EquipmentR1, Deliver_EquipmentD1, Deliver_EquipmentF1,
  Deliver_EquipmentT1, Deliver_EquipmentH1,
  DelAsset_TSCD1 , NewEquipment1, NewDepartment1, AdjustDelivery1, AdjustEntry1,
  AccountConfirm1, MonthMaterialEntry1, DeliveryConfirm1, MonthDeliverCheck1,
  Deliver_Detail1, ChangeEquipment1, EquipmentPrice1, Maintenance_item1,
  EquipmentConfirm_BB1, EquipmentConfirm_MM1, EquipmentConfirm_HH1,
  EquipmentConfirm_SS1, EquipmentConfirm_RR1, EquipmentConfirm_DD1,
  EquipmentConfirm_TT1, EquipmentConfirm_CC1, EquipmentConfirm_FF1,
  ElectricalEquipment1, ProductionToolRepair1, MaintainanceWorks1,
  FillInMaintainance1, RepairItems1, RepairDevice1, Fault_item1,
  EquipmentPurchasePutrace1,OilManage1,ITchecklist1;

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
        TForm(fm).Hint:=miname;
        TForm(fm).show;
        //20200424 介面語言   Ex .main.FormLanguage(Pointer(Equipment_Classification),Equipment_Classification.Name);
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
          if main.MDIChildren[i].Name = 'AssetFlowChart' then
            begin
              TAssetFlowChart(main.MDIChildren[i]).willClose := true;
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
var y,m,d:word;
    sline:string;
    textvar:textfile;
begin
  //
  FuncObj := TFuncObj.Create;
  FuncObj.setParameter(true, ExtractFilePath(Application.ExeName));
  ServerIP:=FuncObj.GetBDE_SERVERIP(DM.DB1.AliasName);
  FuncObj.GetBDE_DATABASENAME(DM.DB1.AliasName,LIY_ERP,LIY_DD);
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
  end else
  begin
      suser:=copy(sline,0,pos('=',sline)-1);
      spwd:=copy(sline,pos('=',sline)+1,maxint);
      image1.Picture.LoadFromFile(extractfilepath(application.ExeName)+'factory.jpg');
  end;
  closefile(textvar);
  edit1.Text:=suser;
  //showmessage(suser+spwd);
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
    ParamByName('mkid').Value := '18';  MKID:='18';
    ParamByName('GSBH').Value := edit2.text;
    Active:=true;      //根據用戶名稱確定權限
    //
    //mirror temp
    (*active:=false;
    sql.Clear;
    sql.Add('SELECT [MKID],[FORMID],''VA12'' [GSBH] ,''51308'' [USERID],''51308'' [SUSERID],');
    sql.Add('''2019-04-18'' [USERDATE] FROM [BLimit] where MKID=''18''');
    Active := true;*)
    //

    //
    BLimitHideQry.ParamByName('mkid').Value := '18';
    BLimitHideQry.Active:=true;
    EnableFORMID();    //20211009 功能選單
    BLimitHideQry.Active:=false;
    //
    Active:=false;
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
    LanguageName:= FieldLangeuage;
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



procedure Tmain.SN238Click(Sender: TObject);
begin
  showFm(Pointer(EquipmentConfirm_FF), TEquipmentConfirm_FF, TMenuItem(Sender).Name);
end;

//子Form功能介面語言
procedure Tmain.FormLanguage(var formObj:Pointer ;mainForm:string);
var i:integer;
    FieldLangeuage:String;
    //
    tmpLabel:TLabel;
    tmpButton:TButton;
    tmpBitBtn:TBitBtn;
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
          if Obj is TBitBtn then
          begin
             tmpBitBtn := (Obj as TBitBtn);
             tmpBitBtn.Caption:=Query1.FieldByName('Langeuage').AsString;
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

procedure Tmain.Image1Click(Sender: TObject);
begin

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
  showFm(Pointer(EquipmentCode), TEquipmentCode, TMenuItem(Sender).Name);
  //main.FormLanguage(Pointer(EquipmentCode),EquipmentCode.Name);
end;

procedure Tmain.SN13Click(Sender: TObject);
begin
  showFm(Pointer(EquipmentSupplier), TEquipmentSupplier, TMenuItem(Sender).Name);
end;

procedure Tmain.SN14Click(Sender: TObject);
begin
  showFm(Pointer(NewEquipment), TNewEquipment, TMenuItem(Sender).Name);
end;

procedure Tmain.SN15Click(Sender: TObject);
begin
  showFm(Pointer(NewDepartment), TNewDepartment, TMenuItem(Sender).Name);
end;

procedure Tmain.SN22Click(Sender: TObject);
begin
  showFm(Pointer(EquipmentEntryConfirm), TEquipmentEntryConfirm, TMenuItem(Sender).Name);
end;

procedure Tmain.SN231Click(Sender: TObject);
begin
   showFm(Pointer(EquipmentConfirm), TEquipmentConfirm, TMenuItem(Sender).Name);
end;

procedure Tmain.SN232Click(Sender: TObject);
begin
   showFm(Pointer(EquipmentConfirm_BB), TEquipmentConfirm_BB, TMenuItem(Sender).Name);
end;

procedure Tmain.SN233Click(Sender: TObject);
begin
  showFm(Pointer(EquipmentConfirm_MM), TEquipmentConfirm_MM, TMenuItem(Sender).Name);
end;

procedure Tmain.SN234Click(Sender: TObject);
begin
  showFm(Pointer(EquipmentConfirm_HH), TEquipmentConfirm_HH, TMenuItem(Sender).Name);
end;

procedure Tmain.SN235Click(Sender: TObject);
begin
  showFm(Pointer(EquipmentConfirm_SS), TEquipmentConfirm_SS, TMenuItem(Sender).Name);
end;

procedure Tmain.SN236Click(Sender: TObject);
begin
  showFm(Pointer(EquipmentConfirm_RR), TEquipmentConfirm_RR, TMenuItem(Sender).Name);
end;

procedure Tmain.SN237Click(Sender: TObject);
begin
  showFm(Pointer(EquipmentConfirm_DD), TEquipmentConfirm_DD, TMenuItem(Sender).Name);
end;

procedure Tmain.SN239Click(Sender: TObject);
begin
  showFm(Pointer(EquipmentConfirm_TT), TEquipmentConfirm_TT, TMenuItem(Sender).Name);
end;

procedure Tmain.SN23AClick(Sender: TObject);
begin
  showFm(Pointer(EquipmentConfirm_CC), TEquipmentConfirm_CC, TMenuItem(Sender).Name);
end;

procedure Tmain.SN23Click(Sender: TObject);
begin
  //showFm(Pointer(EquipmentConfirm), TEquipmentConfirm, TMenuItem(Sender).Name);
end;

procedure Tmain.SN211Click(Sender: TObject);
begin
  showFm(Pointer(EntryEquipment), TEntryEquipment, TMenuItem(Sender).Name);
end;

procedure Tmain.SN212Click(Sender: TObject);
begin
  showFm(Pointer(Deliver_Equipment), TDeliver_Equipment, TMenuItem(Sender).Name);
end;

procedure Tmain.SN213Click(Sender: TObject);
begin
  showFm(Pointer(Deliver_EquipmentB), TDeliver_EquipmentB, TMenuItem(Sender).Name);
end;

procedure Tmain.SN2141Click(Sender: TObject);
begin
  showFm(Pointer(Deliver_EquipmentM), TDeliver_EquipmentM, TMenuItem(Sender).Name);
end;

procedure Tmain.SN2142Click(Sender: TObject);
begin
  showFm(Pointer(Deliver_EquipmentH), TDeliver_EquipmentH, TMenuItem(Sender).Name);
end;

procedure Tmain.SN215Click(Sender: TObject);
begin
  showFm(Pointer(Deliver_EquipmentS), TDeliver_EquipmentS, TMenuItem(Sender).Name);
end;

procedure Tmain.SN216Click(Sender: TObject);
begin
  showFm(Pointer(Deliver_EquipmentR), TDeliver_EquipmentR, TMenuItem(Sender).Name);
end;

procedure Tmain.SN32Click(Sender: TObject);
begin
  showFm(Pointer(AccountConfirm), TAccountConfirm, TMenuItem(Sender).Name);
end;

procedure Tmain.SN33Click(Sender: TObject);
begin
  ShowFm(Pointer(DeliveryConfirm), TDeliveryConfirm, TMenuItem(Sender).Name);
end;

procedure Tmain.SN341Click(Sender: TObject);
begin
  showFm(Pointer(MonthMaterialEntry), TMonthMaterialEntry, TMenuItem(Sender).Name);
end;

procedure Tmain.SN342Click(Sender: TObject);
begin
   showFm(Pointer(MonthDeliverCheck), TMonthDeliverCheck, TMenuItem(Sender).Name);
end;

procedure Tmain.SN351Click(Sender: TObject);
begin
  showFm(Pointer(AdjustDelivery), TAdjustDelivery, TMenuItem(Sender).Name);
end;

procedure Tmain.SN352Click(Sender: TObject);
begin
  showFm(Pointer(AdjustEntry), TAdjustEntry, TMenuItem(Sender).Name);
end;

procedure Tmain.SN31Click(Sender: TObject);
begin
  showFm(Pointer(EquipmentAccountConfirm), TEquipmentAccountConfirm, TMenuItem(Sender).Name);
end;

procedure Tmain.SN36Click(Sender: TObject);
begin
  showFm(Pointer(EquipmentCal), TEquipmentCal, TMenuItem(Sender).Name);
end;

procedure Tmain.SN37Click(Sender: TObject);
begin
  showFm(Pointer(EquipmentAssetRpt), TEquipmentAssetRpt, TMenuItem(Sender).Name);
end;

procedure Tmain.SN38Click(Sender: TObject);
begin
  showFm(Pointer(EquipmentMonthS), TEquipmentMonthS, TMenuItem(Sender).Name);
end;

procedure Tmain.SN41Click(Sender: TObject);
begin
  showFm(Pointer(Maintenance_item), TMaintenance_item, TMenuItem(Sender).Name);
end;

procedure Tmain.SN42Click(Sender: TObject);
begin
  showFm(Pointer(ElectricalEquipment), TElectricalEquipment, TMenuItem(Sender).Name);
end;

procedure Tmain.SN43Click(Sender: TObject);
begin
   showFm(Pointer(MaintainanceWorks), TMaintainanceWorks, TMenuItem(Sender).Name);
end;

procedure Tmain.SN44Click(Sender: TObject);
begin
showFm(Pointer(FillInMaintainance), TFillInMaintainance, TMenuItem(Sender).Name);
end;

procedure Tmain.SN45Click(Sender: TObject);
begin
   showFm(Pointer(RepairDevice), TRepairDevice, TMenuItem(Sender).Name);
end;

procedure Tmain.SN46Click(Sender: TObject);
begin
    showFm(Pointer(OilManage), TOilManage, TMenuItem(Sender).Name);
end;

procedure Tmain.SN51Click(Sender: TObject);
begin
   showFm(Pointer(ProductionToolRepair), TProductionToolRepair, TMenuItem(Sender).Name);
end;

procedure Tmain.SN217Click(Sender: TObject);
begin
  showFm(Pointer(PurEquipment), TPurEquipment, TMenuItem(Sender).Name);
end;

procedure Tmain.SN24Click(Sender: TObject);
begin
  showFm(Pointer(EquipmentList), TEquipmentList, TMenuItem(Sender).Name);
end;

procedure Tmain.SN25Click(Sender: TObject);
begin
  showFm(Pointer(DelAsset_TSCD), TDelAsset_TSCD, TMenuItem(Sender).Name);
end;

procedure Tmain.SN26Click(Sender: TObject);
begin
  showFm(Pointer(Deliver_Detail), TDeliver_Detail, TMenuItem(Sender).Name);
end;

procedure Tmain.SN27Click(Sender: TObject);
begin
  showFm(Pointer(EquipmentPurchasePutrace), TEquipmentPurchasePutrace, TMenuItem(Sender).Name);
end;

procedure Tmain.SN12Click(Sender: TObject);
begin
  showFm(Pointer(Equipment_Classification), TEquipment_Classification, TMenuItem(Sender).Name);
end;

procedure Tmain.SN218Click(Sender: TObject);
begin
  showFm(Pointer(ApplyEquipment), TApplyEquipment, TMenuItem(Sender).Name);
end;

procedure Tmain.SN219Click(Sender: TObject);
begin
  showFm(Pointer(Deliver_EquipmentD), TDeliver_EquipmentD, TMenuItem(Sender).Name);
end;

procedure Tmain.SN21A1Click(Sender: TObject);
begin
  showFm(Pointer(Deliver_EquipmentF), TDeliver_EquipmentF, TMenuItem(Sender).Name);
end;

procedure Tmain.SN21A2Click(Sender: TObject);
begin
  showFm(Pointer(Deliver_EquipmentT), TDeliver_EquipmentT, TMenuItem(Sender).Name);
end;

procedure Tmain.SN21BClick(Sender: TObject);
begin
  showFm(Pointer(ChangeEquipmentC), TChangeEquipmentC, TMenuItem(Sender).Name);
end;

procedure Tmain.SN16Click(Sender: TObject);
begin
  showFm(Pointer(EquipmentPrice), TEquipmentPrice, TMenuItem(Sender).Name);
end;

procedure Tmain.ITchecklist1Click(Sender: TObject);
begin
  showFm(Pointer(ITchecklist), TITchecklist, TMenuItem(Sender).Name);
end;
end.
