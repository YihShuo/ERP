unit OriginVATNo1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, ComCtrls, StdCtrls, Buttons,
  ExtCtrls, ShellApi, IniFiles, comobj, Menus,fununit;

type
  TOriginVATNo = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Label1: TLabel;
    edt_VATNO: TEdit;
    Label2: TLabel;
    edt_Country: TEdit;
    chk_UserDate_VATNO: TCheckBox;
    DTP3_VATNO: TDateTimePicker;
    query_VATNO: TButton;
    ex_VATNO: TButton;
    Label5: TLabel;
    DTP4_VATNO: TDateTimePicker;
    Label3: TLabel;
    edt_SuppID: TEdit;
    Label6: TLabel;
    edt_TK: TEdit;
    Label7: TLabel;
    edt_DOCNO: TEdit;
    query_TK: TButton;
    excel_TK: TButton;
    chk_UserDate_TK: TCheckBox;
    DTP3_TK: TDateTimePicker;
    Label9: TLabel;
    DTP4_TK: TDateTimePicker;
    Label10: TLabel;
    edt_SuppID_TK: TEdit;
    CheckMine_VAT: TCheckBox;
    CheckMine_TK: TCheckBox;
    Qry_VATNO: TQuery;
    DS_VATNO: TDataSource;
    Up_VATNO: TUpdateSQL;
    Qry_TK: TQuery;
    DS_TK: TDataSource;
    Up_TK: TUpdateSQL;
    PopupMenu1: TPopupMenu;
    Modify1: TMenuItem;
    Save1: TMenuItem;
    Cancel1: TMenuItem;
    PopupMenu2: TPopupMenu;
    Modify2: TMenuItem;
    Save2: TMenuItem;
    Cancel2: TMenuItem;
    OpenDialog1: TOpenDialog;
    Qtemp: TQuery;
    DBGridEh1: TDBGridEh;
    DBGridEh2: TDBGridEh;
    Label11: TLabel;
    Label12: TLabel;
    Label4: TLabel;
    edt_supplier: TEdit;
    Qry_VATNODOCNO: TStringField;
    Qry_VATNOVATNO: TStringField;
    Qry_VATNOVATDATE: TDateTimeField;
    Qry_VATNOZSBH_MST: TStringField;
    Qry_VATNOTEN_NGUOIBAN: TStringField;
    Qry_VATNOCountry: TStringField;
    Qry_VATNOVATFile: TStringField;
    Qry_VATNOUSERID_PUR: TStringField;
    Qry_VATNOUSERDATE_PUR: TDateTimeField;
    Qry_VATNOZSYWJC: TStringField;
    Qry_TKDeclaretion: TStringField;
    Qry_TKDECLARATION: TStringField;
    Qry_TKNGAYDANGKY: TDateTimeField;
    Qry_TKDOCNO: TStringField;
    Qry_TKTENDOITAC: TStringField;
    Qry_TKCountry: TStringField;
    Qry_TKDeclarationFile: TStringField;
    Qry_TKUSERID_PUR: TStringField;
    Qry_TKUSERDATE_PUR: TDateTimeField;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    Label8: TLabel;
    edt_Country_TK: TEdit;
    Label13: TLabel;
    edt_Supplier_TK: TEdit;
    Label14: TLabel;
    Label15: TLabel;
    Qry_TKZSBH: TStringField;
    Qry_TKZSYWJC: TStringField;
    Qry_VATNOZSBH: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure query_VATNOClick(Sender: TObject);
    procedure Modify1Click(Sender: TObject);
    procedure Save1Click(Sender: TObject);
    procedure Cancel1Click(Sender: TObject);
    procedure ex_VATNOClick(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure DBGridEh1Columns4EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure query_TKClick(Sender: TObject);
    procedure Modify2Click(Sender: TObject);
    procedure Save2Click(Sender: TObject);
    procedure Cancel2Click(Sender: TObject);
    procedure excel_TKClick(Sender: TObject);
    procedure DBGridEh2DblClick(Sender: TObject);
    procedure DBGridEh2Columns4EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh1EditButtonClick(Sender: TObject);
    procedure DBGridEh2EditButtonClick(Sender: TObject);


  private
    { Private declarations }
    sign: boolean;
    DCTFilePath: string;
    procedure ReadIni();
    procedure ExportExcel(Query:TQuery;DBGridEh:TDBGridEh);
    procedure SetCountry(Query:TQuery;DBGridEh:TDBGridEh);
  public
    { Public declarations }
  end;

var
  OriginVATNo: TOriginVATNo;

implementation

uses main1;

{$R *.dfm}

procedure TOriginVATNo.ReadIni();
var MyIni :Tinifile;
    AppDir:string;
begin
  DCTFilePath := '\\192.168.123.112\origin\';
  AppDir:=ExtractFilePath(Application.ExeName);
  if FileExists(AppDir+'\ComName.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ComName.ini');
      DCTFilePath:=MyIni.ReadString('DCT','Purchase_N29_DCTFilePath','');
    finally
      MyIni.Free;
    end;
  end;
end;

procedure TOriginVATNo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TOriginVATNo.FormDestroy(Sender: TObject);
begin
  OriginVATNo:=nil;
end;

procedure TOriginVATNo.FormCreate(Sender: TObject);
begin
  with Qtemp do
  begin
    active:=false;
    sql.Clear;
    sql.Add('SELECT name FROM sys.objects WHERE name=''fSignsToNoSigns''');
    active:=true;
    if Qtemp.RecordCount>0 then sign:=true else sign:=false;
  end;
  DTP3_VATNO.Date:=Date;
  DTP4_VATNO.Date:=Date;
  DTP3_TK.Date:=Date;
  DTP4_TK.Date:=Date;
  ReadIni();
end;

procedure TOriginVATNo.query_VATNOClick(Sender: TObject);
begin
  if (edt_VATNO.Text='') and (edt_country.Text='') and (edt_suppid.Text='') and (edt_supplier.Text='') and (chk_UserDate_VATNO.Checked=false) and (CheckMine_VAT.Checked=false) then
  begin
    ShowMessage('Pls enter at least one condition.');
    Abort;
  end;
  //
  with Qry_VATNO do
  begin
    active:=false;
    SQL.Clear;
    SQL.Add('SELECT KCRK.DOCNO,VATNO,VATDATE,ZSBH_MST');
    if not sign then
      SQL.Add(' ,TEN_NGUOIBAN')
    else
      SQL.Add(' ,CAST(dbo.fSignsToNoSigns(TEN_NGUOIBAN) AS VARCHAR(200)) AS TEN_NGUOIBAN');
    SQL.Add(' ,Country,VATFile,USERID_PUR,USERDATE_PUR,ZSZL.ZSDH as ZSBH,ZSZL.ZSYWJC ');
    SQL.Add('FROM KCRK   ');
    SQL.Add('left join CGZL_VATNO on KCRK.DOCNO = CGZL_VATNO.VATNO ');
    SQL.Add('left join ZSZL on ZSZL.TYBH = CGZL_VATNO.ZSBH_MST  ');
    SQL.Add('left join CGZL on KCRK.ZSNO = CGZL.CGNO ');
    SQL.Add('where  1=1 and KCRK.HGLB = ''HD'' and isnull(KCRK.DOCNO,'''')<>'''' ');
    if chk_UserDate_VATNO.Checked=true then
    begin
      SQL.add('and convert(varchar,USERDATE_PUR,111) between ');
      SQL.add(''''+formatdatetime('yyyy/MM/dd',DTP3_VATNO.date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP4_VATNO.date)+'''');
    end;
    if edt_VATNO.Text <> '' then
      SQL.Add('  and  DOCNO like '''+trim(edt_VATNO.Text)+'%''  ');
    if edt_country.Text <> '' then
      SQL.Add('  and  Country like ''%'+trim(edt_country.Text)+'%''  ');
    if edt_suppID.Text <> '' then
      SQL.Add('  and  ZSZL.ZSDH like ''%'+trim(edt_suppID.Text)+'%''  ');
    if edt_supplier.Text <> '' then
      SQL.Add('  and  ZSZL.ZSYWJC like ''%'+trim(edt_supplier.Text)+'%''  ');
    if CheckBox1.Checked=true then
      SQL.Add('  and VATNO is not null ');
    if CheckMine_VAT.Checked=true then
      SQL.Add('  and  CGZL.USERID = '''+main.Edit1.Text+'''  ');
    SQL.Add(' group by DOCNO,VATNO,VATDATE,ZSBH_MST,TEN_NGUOIBAN,Country,VATFile,USERID_PUR,USERDATE_PUR,ZSZL.ZSDH,ZSZL.ZSYWJC ');
    SQL.Add(' order by KCRK.DOCNO,ZSBH_MST ');
    //funcobj.WriteErrorLog(sql.Text);
    active:=true;
  end;
  if Qry_VATNO.recordcount>0 then Modify1.Enabled:=true;
  
end;

procedure TOriginVATNo.Modify1Click(Sender: TObject);
begin
  with Qry_VATNO do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
  Save1.Enabled:=true;
  Cancel1.Enabled:=true;
  DBGridEh1.columns[3].ButtonStyle:=cbsEllipsis;
  DBGridEh1.columns[4].ButtonStyle:=cbsEllipsis;
end;

procedure TOriginVATNo.Save1Click(Sender: TObject);
var i:integer;
begin
  try
    Qry_VATNO.first;
    for i:=1 to Qry_VATNO.RecordCount do
    begin
      case Qry_VATNO.updatestatus of
        usmodified:
          begin
            if (Qry_VATNO.FieldByName('USERID_PUR').Value=NULL) or ((Qry_VATNO.FieldByName('USERID_PUR').Value<>NULL) and (Qry_VATNO.FieldByName('USERID_PUR').Value=main.Edit1.Text)) then
            begin
              if not (Qry_VATNO.FieldByName('VATNO').IsNull) then
              begin
                Qry_VATNO.edit;
                Qry_VATNO.FieldByName('USERID_PUR').Value:=main.Edit1.text;
                Up_VATNO.Apply(ukmodify);
              end else
              begin
                ShowMessage('VATNO does not exist, can not modify.');
              end;
            end else
            begin
              ShowMessage('It is not yours, can not modify.');
            end;
          end;
      end;
      Qry_VATNO.next;
    end;
    Qry_VATNO.active:=false;
    Qry_VATNO.cachedupdates:=false;
    Qry_VATNO.requestlive:=false;
    Qry_VATNO.active:=true;
    Modify1.Enabled:=true;
    Save1.Enabled:=false;
    Cancel1.Enabled:=false;
    DBGridEh1.columns[3].ButtonStyle:=cbsNone;
    DBGridEh1.columns[4].ButtonStyle:=cbsNone;
  except
    Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
  end;
end;

procedure TOriginVATNo.Cancel1Click(Sender: TObject);
begin
  with Qry_VATNO do
  begin
    active:=false;
    requestlive:=false;
    cachedupdates:=false;
    active:=true;
  end;
  Modify1.Enabled:=true;
  Save1.Enabled:=false;
  Cancel1.Enabled:=false;
  DBGridEh1.columns[3].ButtonStyle:=cbsNone;
  DBGridEh1.columns[4].ButtonStyle:=cbsNone;
end;

procedure TOriginVATNo.ExportExcel(Query:TQuery;DBGridEh:TDBGridEh);
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin
  if  Query.active  then
  begin
    try
      eclApp:=CreateOleObject('Excel.Application');
      WorkBook:=CreateOleObject('Excel.Sheet');
    except
      Application.MessageBox('No Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
      Exit;
    end;
    try
      WorkBook:=eclApp.workbooks.Add;
      eclapp.Cells.NumberFormatLocal:='@';
      for   i:=0   to   DBGridEh.Columns.Count-1   do
        begin
          eclApp.Cells(1,i+1):=DBGridEh.Columns[i].Title.Caption;
        end;
      //
      Query.First;
      j:=2;
      while   not   Query.Eof   do
        begin
          for   i:=0   to  Query.fieldcount-1  do
            begin
              eclApp.Cells(j,i+1):=Query.Fields[i].Value;
            end;
          Query.Next;
          inc(j);
        end;
      eclapp.columns.autofit;
      showmessage('Succeed');
      eclApp.Visible:=True;
    except
      on   F:Exception   do
        showmessage(F.Message);
    end;
  end;
end;

procedure TOriginVATNo.ex_VATNOClick(Sender: TObject);
begin
  ExportExcel(Qry_VATNO,DBGridEh1);
end;

procedure TOriginVATNo.DBGridEh1DblClick(Sender: TObject);
begin
  if (DBGridEh1.SelectedField.FieldName = 'VATFile') and (Qry_VATNO.FieldByName('VATFile').AsString <> '') and (Save1.Enabled = false) then
    ShellExecute(0, 'open', PChar(DCTFilePath + Qry_VATNO.FieldByName('VATFile').AsString), nil, nil, SW_Normal);
end;

procedure TOriginVATNo.DBGridEh1Columns4EditButtonClick(Sender: TObject;
  var Handled: Boolean);
var DCTFileName: string;
begin
  if (OpenDialog1.Execute) then
  begin
    DCTFileName := ExtractFileName(OpenDialog1.FileName);
    if (FileExists(DCTFilePath + DCTFileName) = false) then
    begin
      Qry_VATNO.FieldByName('VATFile').Value := ExtractFileName(OpenDialog1.FileName);
      CopyFile(PChar(OpenDialog1.FileName), PChar(DCTFilePath + DCTFileName), true);
    end else
    begin
      if (MessageDlg('File ''' + DCTFileName + ''' already exists. Do you want to replace it?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
      begin
        Qry_VATNO.FieldByName('VATFile').Value := ExtractFileName(OpenDialog1.FileName);
        CopyFile(PChar(OpenDialog1.FileName), PChar(DCTFilePath + DCTFileName), false);
      end
    end;
  end;
end;

procedure TOriginVATNo.query_TKClick(Sender: TObject);
begin
  if (edt_TK.Text='') and (edt_DOCNO.Text='') and (edt_country_TK.Text='') and (edt_SuppID_TK.Text='') and (edt_Supplier_TK.Text='') and (chk_UserDate_TK.Checked=false) and (CheckMine_TK.Checked=false) then
  begin
    ShowMessage('Pls enter at least one condition.');
    Abort;
  end;
  //
  with Qry_TK do
  begin
    active:=false;
    SQL.Clear;
    SQL.Add('  SELECT KCPK.Declaretion,DECLARATION,NGAYDANGKY,CGZL_Declaration.DOCNO,TENDOITAC,Country,DeclarationFile,USERID_PUR,USERDATE_PUR,KCRK.ZSBH,ZSYWJC   ');
    SQL.Add('  FROM KCRK   ');
    SQL.Add('  left join KCPK on KCRK.RKNO = KCPK.PKNO ');
    SQL.Add('  left join CGZL_Declaration on KCPK.Declaretion = CGZL_Declaration.Declaration ');
    SQL.Add('  left join CGZL on KCRK.ZSNO = CGZL.CGNO ');
    SQL.Add('  left join ZSZL on KCRK.ZSBH=ZSZL.ZSDH ');
    SQL.Add('  where  1=1 and KCRK.HGLB in (''NK'',''TC'',''KD'') and isnull(KCPK.Declaretion,'''')<>'''' ');
    if chk_UserDate_TK.checked=true then
    begin
      SQL.add(' and convert(varchar,USERDATE_PUR,111) between ');
      SQL.add(''''+formatdatetime('yyyy/MM/dd',DTP3_TK.date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP4_TK.date)+'''');
    end;
    if (trim(edt_TK.Text)<>'') then
      SQL.Add('  and  KCPK.Declaretion like '''+trim(edt_TK.Text)+'%''  ');
    if (trim(edt_DOCNO.Text)<>'') then
      SQL.Add('  and  KCRK.DOCNO like ''%'+trim(edt_DOCNO.Text)+'%''  ');
    if edt_country_TK.Text <> '' then
      SQL.Add('  and  Country like ''%'+trim(edt_country_TK.Text)+'%''  ');
    if edt_SuppID_TK.Text <> '' then
      SQL.Add('  and  KCRK.ZSBH like ''%'+trim(edt_SuppID_TK.Text)+'%''  ');
    if edt_supplier_TK.Text <> '' then
      SQL.Add('  and  ZSZL.ZSYWJC like ''%'+trim(edt_supplier_TK.Text)+'%''  ');
    if CheckBox2.Checked=true then
      SQL.Add('  and DECLARATION is not null ');
    if CheckMine_TK.Checked=true then
      SQL.Add('  and  CGZL.USERID ='''+main.Edit1.Text+'''  ');
    SQL.Add('   group by KCPK.Declaretion,Declaration,NGAYDANGKY,CGZL_Declaration.DOCNO,TENDOITAC,Country,DeclarationFile,USERID_PUR,USERDATE_PUR,KCRK.ZSBH,ZSYWJC  ');
    SQL.Add(' order by KCPK.Declaretion ');
    //funcobj.WriteErrorLog(sql.Text);
    active:=true;
  end;
  if Qry_TK.recordcount>0 then Modify2.Enabled:=true;
  
end;

procedure TOriginVATNo.Modify2Click(Sender: TObject);
begin
  with Qry_TK do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
  Save2.Enabled:=true;
  Cancel2.Enabled:=true;
  DBGridEh2.columns[3].ButtonStyle:=cbsEllipsis;
  DBGridEh2.columns[4].ButtonStyle:=cbsEllipsis;
end;

procedure TOriginVATNo.Save2Click(Sender: TObject);
var i:integer;
begin
  try
    Qry_TK.first;
    for i:=1 to Qry_TK.RecordCount do
    begin
      case Qry_TK.updatestatus of
        usmodified:
          begin
            if (Qry_TK.FieldByName('USERID_PUR').Value=NULL) or ((Qry_TK.FieldByName('USERID_PUR').Value<>NULL) and (Qry_TK.FieldByName('USERID_PUR').Value=main.Edit1.Text)) then
            begin
              if not (Qry_TK.FieldByName('DECLARATION').IsNull) then
              begin
                Qry_TK.edit;
                Qry_TK.FieldByName('USERID_PUR').Value:=main.Edit1.text;
                Up_TK.Apply(ukmodify);
              end else      
              begin
                ShowMessage('Declaration does not exist, can not modify.');
              end;
            end else
            begin
              ShowMessage('It is not yours, can not modify.');
            end;
          end;
      end;
      Qry_TK.next;
    end;
    Qry_TK.active:=false;
    Qry_TK.cachedupdates:=false;
    Qry_TK.requestlive:=false;
    Qry_TK.active:=true;
    Modify2.Enabled:=true;
    Save2.Enabled:=false;
    Cancel2.Enabled:=false;
    DBGridEh2.columns[3].ButtonStyle:=cbsNone;
    DBGridEh2.columns[4].ButtonStyle:=cbsNone;
  except
    Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
  end;
end;

procedure TOriginVATNo.Cancel2Click(Sender: TObject);
begin
  with Qry_TK do
  begin
    active:=false;
    requestlive:=false;
    cachedupdates:=false;
    active:=true;
  end;
  Modify2.Enabled:=true;
  Save2.Enabled:=false;
  Cancel2.Enabled:=false;
  DBGridEh2.columns[3].ButtonStyle:=cbsNone;
  DBGridEh2.columns[4].ButtonStyle:=cbsNone;
end;

procedure TOriginVATNo.excel_TKClick(Sender: TObject);
begin
  ExportExcel(Qry_TK,DBGridEh2);
end;

procedure TOriginVATNo.DBGridEh2DblClick(Sender: TObject);
begin
  if (DBGridEh2.SelectedField.FieldName = 'DeclarationFile') and (Qry_TK.FieldByName('DeclarationFile').AsString <> '') and (Save2.Enabled = false) then
    ShellExecute(0, 'open', PChar(DCTFilePath + Qry_TK.FieldByName('DeclarationFile').AsString), nil, nil, SW_Normal);
end;

procedure TOriginVATNo.DBGridEh2Columns4EditButtonClick(Sender: TObject;
  var Handled: Boolean);
var DCTFileName: string;
begin
  if (OpenDialog1.Execute) then
  begin
    DCTFileName := ExtractFileName(OpenDialog1.FileName);
    if (FileExists(DCTFilePath + DCTFileName) = false) then
    begin
      Qry_TK.FieldByName('DeclarationFile').Value := ExtractFileName(OpenDialog1.FileName);
      CopyFile(PChar(OpenDialog1.FileName), PChar(DCTFilePath + DCTFileName), true);
    end else
    begin
      if (MessageDlg('File ''' + DCTFileName + ''' already exists. Do you want to replace it?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
      begin
        Qry_TK.FieldByName('DeclarationFile').Value := ExtractFileName(OpenDialog1.FileName);
        CopyFile(PChar(OpenDialog1.FileName), PChar(DCTFilePath + DCTFileName), false);
      end
    end;
  end;
end;

procedure TOriginVATNo.SetCountry(Query:TQuery;DBGridEh:TDBGridEh);
var Country, SuppID:String;
    i:integer;
begin
  if DBGridEh.SelectedField.FieldName='Country' then Country:=inputbox('Please Input Country','Country:','');
  if Country <>'' then
    begin
      with Query do
      begin
        SuppID:=FieldByName('ZSBH').AsString;
        Query.First;
        while not Eof do
        begin
          Edit;
          if SuppID=FieldByName('ZSBH').AsString then
          begin
            if DBGridEh.SelectedField.FieldName='Country' then FieldByName('Country').Value:=Country;
          end;
          Next;
        end;
      end;
    end;
end;

procedure TOriginVATNo.DBGridEh1EditButtonClick(Sender: TObject);
begin
  SetCountry(Qry_VATNO,DBGridEh1);
end;

procedure TOriginVATNo.DBGridEh2EditButtonClick(Sender: TObject);
begin
  SetCountry(Qry_TK,DBGridEh2);
end;

end.
