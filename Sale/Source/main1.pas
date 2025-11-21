unit main1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, jpeg, ExtCtrls, StdCtrls, DB, DBTables, ComCtrls,
  DBGridS,DBGridEh, Grids;
type
  Tmain = class(TForm)
    Image1: TImage;
    Edit1: TEdit;
    Query1: TQuery;
    MainMenu1: TMainMenu;
    SN1: TMenuItem;
    SN12: TMenuItem;
    SN11: TMenuItem;
    SN2: TMenuItem;
    SN21: TMenuItem;
    SN22: TMenuItem;
    SN23: TMenuItem;
    SN3: TMenuItem;
    SN31: TMenuItem;
    SN5: TMenuItem;
    StatusBar1: TStatusBar;
    SN13: TMenuItem;
    Edit2: TEdit;
    SN14: TMenuItem;
    SN15: TMenuItem;
    SN4: TMenuItem;
    SN41: TMenuItem;
    SN32: TMenuItem;
    SN33: TMenuItem;
    SN42: TMenuItem;
    SN16: TMenuItem;
    SN51: TMenuItem;
    SN24: TMenuItem;
    SN25: TMenuItem;
    SN26: TMenuItem;
    SN17: TMenuItem;
    SN18: TMenuItem;
    SN52: TMenuItem;
    SN53: TMenuItem;
    SN43: TMenuItem;
    SN54: TMenuItem;
    SN521: TMenuItem;
    SN522: TMenuItem;
    SN27: TMenuItem;
    SN28: TMenuItem;
    BLimitHideQry: TQuery;
    SN29: TMenuItem;
    SN19: TMenuItem;
    SN34: TMenuItem;
    SN35: TMenuItem;
    SN1A: TMenuItem;
    SN1B: TMenuItem;
    SN44: TMenuItem;
    procedure SN14Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure SN12Click(Sender: TObject);
    procedure SN21Click(Sender: TObject);
    procedure SN11Click(Sender: TObject);
    procedure SN22Click(Sender: TObject);
    procedure SN13Click(Sender: TObject);
    procedure SN23Click(Sender: TObject);
    procedure N14Click(Sender: TObject);
    procedure SN15Click(Sender: TObject);
    procedure SN41Click(Sender: TObject);
    procedure SN31Click(Sender: TObject);
    procedure SN32Click(Sender: TObject);
    procedure SN33Click(Sender: TObject);
    procedure SN42Click(Sender: TObject);
    procedure SN16Click(Sender: TObject);
    procedure SN51Click(Sender: TObject);
    procedure SN24Click(Sender: TObject);
    procedure SN25Click(Sender: TObject);
    procedure SN26Click(Sender: TObject);
    procedure SN17Click(Sender: TObject);
    procedure SN18Click(Sender: TObject);
    procedure SN53Click(Sender: TObject);
    procedure SN43Click(Sender: TObject);
    procedure SN54Click(Sender: TObject);
    procedure SN521Click(Sender: TObject);
    procedure SN522Click(Sender: TObject);
    procedure SN27Click(Sender: TObject);
    procedure SN28Click(Sender: TObject);
    procedure SN29Click(Sender: TObject);
    procedure SN19Click(Sender: TObject);
    procedure SN34Click(Sender: TObject);
    procedure SN35Click(Sender: TObject);
    procedure SN1AClick(Sender: TObject);
    procedure SN1BClick(Sender: TObject);
    procedure SN44Click(Sender: TObject);
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
    procedure Language();
    procedure FormLanguage(var formObj:Pointer;mainForm:string);
    procedure FormDBGridLanguage(var formObj:Pointer ;mainForm:string);
    procedure EnableFORMID();
  end;

var
  main: Tmain;
  suser,spwd:string;      

implementation

uses OrderList1, OrderPO1, CarttonModel1, OrderSale1, ModelBasic1,
  CartonMark1, CartonOrder1, MaterialNew1, MemoNew1, BarPrint1, PackShip1,
  ExecInvoice1, ExecShort1,SaleReport, CustomsComfirmp, OrderAnalysisp,
  TraceCarton1, ModelTolerP,CopyModelTolerP,ExcelImportp,ExcelUploadp,FunUnit,
  forecastorder1, ExcelBuylist1, ScanOutbox1, SKUMOQ1, forecastpurchase1, CartonXXZL1,
  DetailSideMark_PackingMemo1, YWXXBox1, OrderInformation1,
  DestinationPackingBox_Label1, OrderCalculateSpecialBOM1, RTOVData1,
  Import_Label_Usage1, UccLabel1;


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
        FuncObj.Free;
      end;
end;

procedure Tmain.FormCreate(Sender: TObject);
var y,m,d:word;
    sline:string;
    textvar:textfile;
begin
  //20131005 weston
  FuncObj:=TFuncObj.Create;
  FuncObj.setParameter(true,ExtractFilePath(Application.ExeName));
  //
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
      ParamByName('mkid').Value := '11';  MKID:='11';
      ParamByName('GSBH').Value := edit2.text;
      Active:=true;      //根據用戶名稱確定權限
      //
      BLimitHideQry.ParamByName('mkid').Value := '11';
      BLimitHideQry.Active:=true;
      EnableFORMID();    //20211009 功能選單
      BLimitHideQry.Active:=false;
      //
      active:=false;
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
    tmpGroupBox:TGroupBox;
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
            tmpGroupBox := (Obj as TGroupBox);
            tmpGroupBox.Caption:=Query1.FieldByName('Langeuage').AsString;
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

procedure Tmain.SN12Click(Sender: TObject);
begin
  showFm(Pointer(OrderList), TOrderList, TMenuItem(Sender).Name);
end;

procedure Tmain.SN21Click(Sender: TObject);
begin
  showFm(Pointer(CarttonModel), TCarttonModel, TMenuItem(Sender).Name);
end;

procedure Tmain.SN11Click(Sender: TObject);
begin
  showFm(Pointer(OrderSale), TOrderSale, TMenuItem(Sender).Name);
end;

procedure Tmain.SN22Click(Sender: TObject);
begin
  showFm(Pointer(ModelBasic), TModelBasic, TMenuItem(Sender).Name);
end;

procedure Tmain.SN13Click(Sender: TObject);
begin
  showFm(Pointer(CartonMark), TCartonMark, TMenuItem(Sender).Name);
end;

procedure Tmain.SN23Click(Sender: TObject);
begin
  showFm(Pointer(CartonOrder), TCartonOrder, TMenuItem(Sender).Name);
end;

procedure Tmain.N14Click(Sender: TObject);
begin
  showFm(Pointer(MaterialNew), TMaterialNew, TMenuItem(Sender).Name);
end;

procedure Tmain.SN15Click(Sender: TObject);
begin
  showFm(Pointer(MemoNew), TMemoNew, TMenuItem(Sender).Name);
end;

procedure Tmain.SN41Click(Sender: TObject);
begin
  showFm(Pointer(BarPrint), TBarPrint, TMenuItem(Sender).Name);
end;

procedure Tmain.SN31Click(Sender: TObject);
begin
  showFm(Pointer(PackShip), TPackShip, TMenuItem(Sender).Name);
end;

procedure Tmain.SN32Click(Sender: TObject);
begin
  showFm(Pointer(ExecInvoice), TExecInvoice, TMenuItem(Sender).Name);
end;

procedure Tmain.SN33Click(Sender: TObject);
begin
  showFm(Pointer(ExecShort), TExecShort, TMenuItem(Sender).Name);
end;

procedure Tmain.SN42Click(Sender: TObject);
begin
  showFm(Pointer(SaleReportf), TSaleReportf, TMenuItem(Sender).Name);
end;

procedure Tmain.SN16Click(Sender: TObject);
begin
  showFm(Pointer(CustomsComfirm), TCustomsComfirm, TMenuItem(Sender).Name);
end;

procedure Tmain.SN51Click(Sender: TObject);
begin
  showFm(Pointer(OrderAnalysis), TOrderAnalysis, TMenuItem(Sender).Name);
end;

procedure Tmain.SN24Click(Sender: TObject);
begin
  showFm(Pointer(TraceCarton), TTraceCarton, TMenuItem(Sender).Name);
end;

procedure Tmain.SN25Click(Sender: TObject);
begin
  showFm(Pointer(ModelToler), TModelToler, TMenuItem(Sender).Name);
end;

procedure Tmain.SN26Click(Sender: TObject);
begin
  showFm(Pointer(CopyModelToler), TCopyModelToler, TMenuItem(Sender).Name);
end;

procedure Tmain.SN17Click(Sender: TObject);
begin
  showFm(Pointer(ExcelImport), TExcelImport, TMenuItem(Sender).Name);
end;

procedure Tmain.SN18Click(Sender: TObject);
begin
  showFm(Pointer(ExcelUpload), TExcelUpload, TMenuItem(Sender).Name);
end;

procedure Tmain.SN53Click(Sender: TObject);
begin
  showFm(Pointer(ExcelBuylist), TExcelBuylist, TMenuItem(Sender).Name);
end;

procedure Tmain.SN43Click(Sender: TObject);
begin
  showFm(Pointer(ScanOutbox), TScanOutbox, TMenuItem(Sender).Name);
end;

procedure Tmain.SN54Click(Sender: TObject);
begin
  showFm(Pointer(SKUMOQ), TSKUMOQ, TMenuItem(Sender).Name);
end;

procedure Tmain.SN521Click(Sender: TObject);
begin
  showFm(Pointer(forecastorder), Tforecastorder, TMenuItem(Sender).Name);
end;

procedure Tmain.SN522Click(Sender: TObject);
begin
  showFm(Pointer(forecastpurchase), Tforecastpurchase, TMenuItem(Sender).Name);
end;

procedure Tmain.SN27Click(Sender: TObject);
begin
  showFm(Pointer(CartonXXZL), TCartonXXZL, TMenuItem(Sender).Name);
end;

procedure Tmain.SN28Click(Sender: TObject);
begin
  showFm(Pointer(DetailSideMark_PackingMemo), TDetailSideMark_PackingMemo, TMenuItem(Sender).Name);
end;

procedure Tmain.SN29Click(Sender: TObject);
begin
  showFm(Pointer(YWXXBox), TYWXXBox, TMenuItem(Sender).Name);
end;

procedure Tmain.SN19Click(Sender: TObject);
begin
  showFm(Pointer(OrderInformation), TOrderInformation, TMenuItem(Sender).Name);
end;

procedure Tmain.SN34Click(Sender: TObject);
begin
  showFm(Pointer(DestinationPackingBox_Label), TDestinationPackingBox_Label, TMenuItem(Sender).Name);
end;

procedure Tmain.SN35Click(Sender: TObject);
begin
  showFm(Pointer(OrderCalculateSpecialBOM), TOrderCalculateSpecialBOM, TMenuItem(Sender).Name);
end;

procedure Tmain.SN1AClick(Sender: TObject);
begin
  showFm(Pointer(RTOVData), TRTOVData, TMenuItem(Sender).Name);
end;

procedure Tmain.SN1BClick(Sender: TObject);
begin
  showFm(Pointer(Import_Label_Usage), TImport_Label_Usage, TMenuItem(Sender).Name);
end;

procedure Tmain.SN44Click(Sender: TObject);
begin
    showFm(Pointer(UccLabel),TUccLabel, TMenuItem(Sender).Name);
end;

end.

