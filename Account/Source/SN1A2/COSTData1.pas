unit COSTData1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, StdCtrls, ComCtrls, GridsEh, DBGridEh, ExtCtrls,comobj,ShellApi,
  Menus,IniFiles;

type
  TCOSTData = class(TForm)
    qry_Cost: TQuery;
    qry_CostTK_Ketoan: TStringField;
    qry_CostTen_TK: TStringField;
    qry_CostTen_tat_TK: TStringField;
    qry_CostNgay_CT: TDateTimeField;
    qry_CostMa_CT: TStringField;
    qry_CostMaso_TK_doi_ung: TStringField;
    qry_CostTen_TK_doi_ung: TStringField;
    qry_CostTenkhac_TK_doi_ung: TStringField;
    qry_CostMa_bo_phan: TStringField;
    qry_CostTen_bo_phan: TStringField;
    qry_CostMa_theo_doi_no1: TStringField;
    qry_CostTen_theo_doi_no1: TStringField;
    qry_CostMa_theo_doi_no2: TStringField;
    qry_CostTen_theo_doi_no2: TStringField;
    qry_CostMS_TK_theo_doi_no1: TStringField;
    qry_CostTen_TK_theo_doi_no1: TStringField;
    qry_CostMS_TK_theo_doi_no2: TStringField;
    qry_CostTen_TK_theo_doi_no2: TStringField;
    qry_CostDien_giai: TStringField;
    qry_CostDien_giai_TK_doi_ung: TStringField;
    qry_CostGhi_chu: TStringField;
    qry_CostSotien_ben_no_Noi_te: TCurrencyField;
    qry_CostSotien_ben_co_Noi_te: TCurrencyField;
    qry_CostSodu_Noi_te: TCurrencyField;
    qry_CostSodu_no_OR_co: TStringField;
    qry_CostSodu_Noi_te_No: TCurrencyField;
    qry_CostSodu_Noi_te_Co: TCurrencyField;
    qry_CostImportUser: TStringField;
    qry_CostImportDate: TDateTimeField;
    qry_CostYN: TStringField;
    DS_Cost: TDataSource;
    Panel1: TPanel;
    lbl_Year: TLabel;
    lbl_Month: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    DBGridEh1: TDBGridEh;
    qry_temp: TQuery;
    DTP2: TDateTimePicker;
    Label16: TLabel;
    DTP1: TDateTimePicker;
    edt_TK_Ketoan: TEdit;
    edt_MaBP: TEdit;
    edt_TenBP: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    SQL_LinkServer,AccountN233_CheckLinkServer:string;
    { Private declarations }
    sign: boolean;
    procedure ReadIni();
  public
    { Public declarations }
  end;

var
  COSTData: TCOSTData;
  NDate:Tdate;

implementation

uses main1,fununit;

{$R *.dfm}

procedure TCOSTData.ReadIni();
var MyIni :Tinifile;
    AppDir:string;
begin
  AppDir:=ExtractFilePath(Application.ExeName);
  AccountN233_CheckLinkServer:='Y';
  SQL_LinkServer:='';
  if FileExists(AppDir+'\ComName.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ComName.ini');
      AccountN233_CheckLinkServer:=MyIni.ReadString('ERP','AccountN233_CheckLinkServer','');
    finally
      MyIni.Free;
    end;
  end;

  If AccountN233_CheckLinkServer='Y' then
  begin
    SQL_LinkServer:='LacTyDB.LIY_ERP.dbo';
  end else
  begin
    SQL_LinkServer:='dbo';
  end;

end;

procedure TCOSTData.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TCOSTData.FormDestroy(Sender: TObject);
begin
  COSTData:=nil;
end;

procedure TCOSTData.FormCreate(Sender: TObject);
var i:integer;   
begin
  with qry_temp do
  begin
    active:=false;
    sql.Clear;
    sql.add('select getdate() as NDate');
    active:=true;
    NDate:=fieldbyname('NDate').Value;
    DTP1.Date:=encodedate(StrToInt(FormatDateTime('yyyy',NDate)),StrToInt(FormatDateTime('MM',NDate)),1);
    DTP2.Date:=NDate;
    active:=false;
  end;

  with Qry_Temp do
  begin
    Active:=false;
    sql.Clear;
    sql.Add('SELECT name FROM sys.objects WHERE name=''fSignsToNoSigns''');
    Active:=true;
    if Qry_Temp.RecordCount>0 then sign:=true else sign:=false;
  end;
  ReadIni();

end;

procedure TCOSTData.Button1Click(Sender: TObject);
begin
  with qry_Cost do
  begin
    active:=false;
    //Close;
    sql.Clear;
    SQL.Add('  SELECT ');
    SQL.Add('     TK_Ketoan,  ');
    if not sign then
        sql.Add('   Ten_TK,')
    else
        sql.Add('   CAST(dbo.fSignsToNoSigns(Ten_TK) AS VARCHAR(200)) AS Ten_TK,');
    SQL.Add('    	Ten_tat_TK,Ngay_CT,Ma_CT,Maso_TK_doi_ung,  ');
    if not sign then
        sql.Add('   Ten_TK_doi_ung,')
    else
        sql.Add('   CAST(dbo.fSignsToNoSigns(Ten_TK_doi_ung) AS VARCHAR(200)) AS Ten_TK_doi_ung,');
    SQL.Add('    	Tenkhac_TK_doi_ung,Ma_bo_phan,Ten_bo_phan,Ma_theo_doi_no1,  ');
    if not sign then
        sql.Add('   Ten_theo_doi_no1,')
    else
        sql.Add('   CAST(dbo.fSignsToNoSigns(Ten_theo_doi_no1) AS VARCHAR(200)) AS Ten_theo_doi_no1,');
    SQL.Add('    	Ma_theo_doi_no2,  ');
    if not sign then
        sql.Add('   Ten_theo_doi_no2,')
    else
        sql.Add('   CAST(dbo.fSignsToNoSigns(Ten_theo_doi_no2) AS VARCHAR(200)) AS Ten_theo_doi_no2,');
    SQL.Add('    	MS_TK_theo_doi_no1,Ten_TK_theo_doi_no1,MS_TK_theo_doi_no2,	Ten_TK_theo_doi_no2,  ');
    if not sign then
        sql.Add('   Dien_giai,')
    else
        sql.Add('   CAST(dbo.fSignsToNoSigns(Dien_giai) AS VARCHAR(200)) AS Dien_giai,');
    if not sign then
        sql.Add('   Dien_giai_TK_doi_ung,')
    else
        sql.Add('   CAST(dbo.fSignsToNoSigns(Dien_giai_TK_doi_ung) AS VARCHAR(200)) AS Dien_giai_TK_doi_ung,');
    if not sign then
        sql.Add('   Ghi_chu,')
    else
        sql.Add('   CAST(dbo.fSignsToNoSigns(Ghi_chu) AS VARCHAR(200)) AS Ghi_chu,');
    SQL.Add('    	Sotien_ben_no_Noi_te,Sotien_ben_co_Noi_te,Sodu_Noi_te,  ');
    if not sign then
        sql.Add('   Sodu_no_OR_co,')
    else
        sql.Add('   CAST(dbo.fSignsToNoSigns(Sodu_no_OR_co) AS VARCHAR(200)) AS Sodu_no_OR_co,');
    SQL.Add('    	Sodu_Noi_te_No,Sodu_Noi_te_Co,ImportUser,ImportDate,YN  ');
    SQL.Add('    FROM GP_Import_Cost   ');
    SQL.Add('  WHERE  convert(varchar,Ngay_CT,111) between  ');
    SQL.Add(' '''+formatdatetime('yyyy/MM/dd',DTP1.date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.date)+''' ');
    if (trim(edt_TK_Ketoan.Text)<>'') then
      sql.Add('  and  TK_Ketoan like ''%'+trim(edt_TK_Ketoan.Text)+'%''  ');
    if (edt_MaBP.Text<>'') then
      sql.Add('  and  Ma_bo_phan like ''%'+edt_MaBP.Text+'%''  ');
    if (edt_TenBP.Text<>'') then
      sql.Add('  and  Ten_bo_phan like ''%'+edt_TenBP.Text+'%''  ');
    //funcobj.WriteErrorLog(sql.Text);
    active:=true;
  end;
end;

procedure TCOSTData.Button2Click(Sender: TObject);
var i,j,k:integer;
    eclApp,WorkBook:olevariant;
begin
  if qry_Cost.Active then
  begin
    if qry_Cost.recordcount=0 then
    begin
      showmessage('No record.');
      abort;
    end;
  end else
  begin
    showmessage('No record.');
    abort;
  end;
  try
    eclApp:=CreateOleObject('Excel.Application');
    WorkBook:=CreateOleObject('Excel.Sheet');
  except
    Application.MessageBox('NO Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
    Exit;
  end;
  try
    WorkBook:=eclApp.workbooks.Add;
    eclApp.Cells(1,1):='NO';
    for   i:=1   to   qry_Cost.fieldcount   do
    begin
      eclApp.Cells(1,i+1):=qry_Cost.fields[i-1].FieldName;
    end;
    qry_Cost.First;
    j:=2;
    while   not  qry_Cost.Eof   do
    begin
        eclApp.Cells(j,1):=j-1;
        for   i:=1   to   qry_Cost.fieldcount   do
          begin
            eclApp.Cells(j,i+1):=qry_Cost.Fields[i-1].Value;
            eclApp.Cells.Cells.item[j,i+1].font.size:='8';
          end;
        qry_Cost.Next;
        inc(j);
    end;
    eclapp.columns.autofit;   
    showmessage('Succeed.');
    eclApp.Visible:=True;
  except
    on   F:Exception   do
      showmessage(F.Message);
  end;

end;

procedure TCOSTData.Button3Click(Sender: TObject);
begin
  if (qry_Cost.RequestLive) then
  begin
    showmessage('Pls. Save data first !');
    abort;
  end;
  if fileexists(extractfilepath(application.ExeName)+'import_VATNO.exe') then
  begin
    ShellExecute(Handle,'open',PChar(ExtractFilePath(Application.ExeName)+'import_VATNO.exe'),'3',pchar(ExtractFilePath(Application.ExeName)),SW_SHOW);
  end else
  begin
    showmessage('Pls setup the program first. Abort');
  end;
end;

end.
