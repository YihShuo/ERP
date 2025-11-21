unit main1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, jpeg, ExtCtrls, StdCtrls, DB, DBTables, ComCtrls,DBGridS,DBGridEh, Grids;
  {  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;}

type
  Tmain = class(TForm)
    MainMenu1: TMainMenu;
    SN1: TMenuItem;
    SN2: TMenuItem;
    SN3: TMenuItem;
    SN6: TMenuItem;
    SN21: TMenuItem;
    SN22: TMenuItem;
    SN31: TMenuItem;
    SN11: TMenuItem;
    Image1: TImage;
    Edit1: TEdit;
    Query1: TQuery;
    SN12: TMenuItem;
    StatusBar1: TStatusBar;
    SN24: TMenuItem;
    SN23: TMenuItem;
    SN13: TMenuItem;
    Edit2: TEdit;
    SN32: TMenuItem;
    SN14: TMenuItem;
    SN121: TMenuItem;
    SN122: TMenuItem;
    SN4: TMenuItem;
    SN41: TMenuItem;
    SN42: TMenuItem;
    SN43: TMenuItem;
    SN15: TMenuItem;
    SN123: TMenuItem;
    SN124: TMenuItem;
    BLimitHideQry: TQuery;
    SN16: TMenuItem;
    SN33: TMenuItem;
    SN25: TMenuItem;
    SN125: TMenuItem;
    SN1251: TMenuItem;
    SN1252: TMenuItem;
    N1253: TMenuItem;
    SN34: TMenuItem;
    SN35: TMenuItem;
    SN17: TMenuItem;
    procedure SN17Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure SN11Click(Sender: TObject);
    procedure SN21Click(Sender: TObject);
    procedure SN22Click(Sender: TObject);
    procedure SN24Click(Sender: TObject);
    procedure SN23Click(Sender: TObject);
    procedure SN31Click(Sender: TObject);
    procedure SN13Click(Sender: TObject);
    procedure SN32Click(Sender: TObject);
    procedure SN14Click(Sender: TObject);
    procedure SN121Click(Sender: TObject);
    procedure SN122Click(Sender: TObject);
    procedure SN41Click(Sender: TObject);
    procedure SN42Click(Sender: TObject);
    procedure SN43Click(Sender: TObject);
    procedure SN15Click(Sender: TObject);
    procedure SN123Click(Sender: TObject);
    procedure SN124Click(Sender: TObject);
    procedure SN16Click(Sender: TObject);
    procedure SN33Click(Sender: TObject);
    procedure SN25Click(Sender: TObject);
    procedure SN1251Click(Sender: TObject);
    procedure SN1252Click(Sender: TObject);
    procedure N1253Click(Sender: TObject);
    procedure SN34Click(Sender: TObject);
    procedure SN35Click(Sender: TObject);
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

uses DM3,OrderList1, ExtraMaterial1, ExtraCon1, ExtraPur1, Quotation1,
  ExtraList1, ExtraPreview1, ExtraOrdList1, MaterialList1, MatMoSon1,
  ExtraTotal1, ExtraMatList1, ExtraPartList1, ProSchedule1, MatMoSonQuery1,
  ExtraPairs_Material1,FunUnit, ExtraDel1, ExtraMaterialQuickStep1,
  ExtraSampleOrdList1, CBY_ExtraPur1, JGNOConfirm1, JGNOConfirm21, JGNOConfirm31,
  Traceability_Extra1, ExtraNoList1, ExtraAccount1;


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
        funcObj.free;
      end;
end;

procedure Tmain.FormCreate(Sender: TObject);
var y,m,d:word;
    sline:string;
    textvar:textfile;
begin
  //20140524 函數庫
  funcObj:=TFuncObj.Create;
  funcObj.setParameter(true,ExtractFilePath(Application.ExeName));
  ServerIP:=FuncObj.GetBDE_SERVERIP(DM2.DBshipping.AliasName);
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
    //---20150815 Projoe 將Params 改為 ParamByName 來增加可讀性
    ParamByName('userid').Value := suser;
    ParamByName('mkid').Value := '06';  MKID:='06';
    ParamByName('GSBH').Value := edit2.text;
    Active := true; //根據用戶名稱確定權限
    //
    BLimitHideQry.ParamByName('mkid').Value := '06';
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

procedure Tmain.SN11Click(Sender: TObject);
begin
  showFm(Pointer(OrderList), TOrderList, TMenuItem(Sender).Name);

end;

procedure Tmain.SN21Click(Sender: TObject);
begin
  showFm(Pointer(ExtraCon), TExtraCon, TMenuItem(Sender).Name);
end;

procedure Tmain.SN22Click(Sender: TObject);
begin
  showFm(Pointer(ExtraPur), TExtraPur, TMenuItem(Sender).Name);
end;

procedure Tmain.SN24Click(Sender: TObject);
begin
  showFm(Pointer(Quotation), TQuotation, TMenuItem(Sender).Name);
end;

procedure Tmain.SN23Click(Sender: TObject);
begin
  showFm(Pointer(ExtraList), TExtraList, TMenuItem(Sender).Name);

end;

procedure Tmain.SN31Click(Sender: TObject);
begin
  showFm(Pointer(ExtraPreview), TExtraPreview, TMenuItem(Sender).Name);
end;

procedure Tmain.SN13Click(Sender: TObject);
begin
  showFm(Pointer(ExtraOrdList), TExtraOrdList, TMenuItem(Sender).Name);
end;

procedure Tmain.SN32Click(Sender: TObject);
begin
  showFm(Pointer(MaterialList), TMaterialList, TMenuItem(Sender).Name);
end;

procedure Tmain.SN14Click(Sender: TObject);
begin
  showFm(Pointer(MatMoSon), TMatMoSon, TMenuItem(Sender).Name);
end;

procedure Tmain.SN121Click(Sender: TObject);
begin
  showFm(Pointer(ExtraMaterial), TExtraMaterial, TMenuItem(Sender).Name);
end;

procedure Tmain.SN122Click(Sender: TObject);
begin
  showFm(Pointer(ExtraTotal), TExtraTotal, TMenuItem(Sender).Name);
end;

procedure Tmain.SN41Click(Sender: TObject);
begin
  showFm(Pointer(ExtraMatList), TExtraMatList, TMenuItem(Sender).Name);
end;

procedure Tmain.SN42Click(Sender: TObject);
begin
  showFm(Pointer(ExtraPartList), TExtraPartList, TMenuItem(Sender).Name);
end;

procedure Tmain.SN43Click(Sender: TObject);
begin
  showFm(Pointer(ProSchedule), TProSchedule, TMenuItem(Sender).Name);
end;

procedure Tmain.SN15Click(Sender: TObject);
begin
  showFm(Pointer(MatMoSonQuery), TMatMoSonQuery, TMenuItem(Sender).Name);
end;

procedure Tmain.SN123Click(Sender: TObject);
begin
  showFm(Pointer(ExtraPairs_Material), TExtraPairs_Material, TMenuItem(Sender).Name);
end;

procedure Tmain.SN124Click(Sender: TObject);
begin
  showFm(Pointer(ExtraDel), TExtraDel, TMenuItem(Sender).Name);
end;

procedure Tmain.SN16Click(Sender: TObject);
begin
  showFm(Pointer(ExtraMaterialQuickStep), TExtraMaterialQuickStep, TMenuItem(Sender).Name);
end;

procedure Tmain.SN33Click(Sender: TObject);
begin
  showFm(Pointer(ExtraSampleOrdList), TExtraSampleOrdList, TMenuItem(Sender).Name);
end;

procedure Tmain.SN25Click(Sender: TObject);
begin
  showFm(Pointer(CBY_ExtraPur), TCBY_ExtraPur, TMenuItem(Sender).Name);
end;

procedure Tmain.SN1251Click(Sender: TObject);
begin
  showFm(Pointer(JGNOConfirm), TJGNOConfirm, TMenuItem(Sender).Name);
end;

procedure Tmain.SN1252Click(Sender: TObject);
begin
  showFm(Pointer(JGNOConfirm2), TJGNOConfirm2, TMenuItem(Sender).Name);
end;

procedure Tmain.N1253Click(Sender: TObject);
begin
  showFm(Pointer(JGNOConfirm3), TJGNOConfirm3, TMenuItem(Sender).Name);
end;

procedure Tmain.SN34Click(Sender: TObject);
begin
  showFm(Pointer(Traceability_Extra), TTraceability_Extra, TMenuItem(Sender).Name);
end;

procedure Tmain.SN35Click(Sender: TObject);
begin
  showFm(Pointer(ExtraNoList), TExtraNoList, TMenuItem(Sender).Name);
end;
procedure Tmain.SN17Click(Sender: TObject);
begin
  showFm(Pointer(ExtraAccount), TExtraAccount, TMenuItem(Sender).Name);
end;


end.

