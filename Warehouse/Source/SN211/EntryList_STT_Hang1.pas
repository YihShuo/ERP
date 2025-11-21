unit EntryList_STT_Hang1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GridsEh, DBGridEh, StdCtrls, ExtCtrls, ComCtrls, DB, DBTables,IniFiles;

type
  TEntryList_STT_Hang = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Button1: TButton;
    EDIT1: TEdit;
    DBGridEh1: TDBGridEh;
    Label3: TLabel;
    Edit2: TEdit;
    Query1: TQuery;
    DataSource1: TDataSource;
    Query1DECLARATION: TStringField;
    Query1DOCNO: TStringField;
    Query1SOTT: TIntegerField;
    Query1NGAYTHONGQUAN: TDateTimeField;
    Query1MALOAIHINH: TStringField;
    Query1MANPL_SP: TStringField;
    Query1TONGSOLUONG: TCurrencyField;
    Query1TRIGIANT: TCurrencyField;
    Query1TENDOITAC: TStringField;
    Query1XUATXU: TStringField;
    Query1DONGIA: TFloatField;
    Query1HSCODE: TStringField;
    Query1TENHANGHOA: TStringField;
    qry_temp: TQuery;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    AccountN233_CheckLinkServer, SQL_LinkServer: string;
    sign: boolean;
    { Private declarations }

    procedure ReadIni();
  public
    { Public declarations }
  end;

var
  EntryList_STT_Hang: TEntryList_STT_Hang;
  Kind:string;

implementation

uses EntryList1, EntryTotal1, EntryList_InvoiceModify1;

{$R *.dfm}
procedure TEntryList_STT_Hang.ReadIni();
var MyIni :Tinifile;
    AppDir:string;
begin

  AccountN233_CheckLinkServer:='Y';
  SQL_LinkServer:='';
  AppDir:=ExtractFilePath(Application.ExeName);
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

procedure TEntryList_STT_Hang.Button1Click(Sender: TObject);
begin
  With Query1 do
  begin 
    Active:=false;
    SQL.Clear;
    SQL.Add('SET ANSI_NULLS ON ');
    SQL.Add('SET ANSI_WARNINGS ON ');
    ExecSQL();
    Active := false;
    SQL.Clear;
    SQL.Add('Select DeclarationS.DECLARATION,DeclarationS.DOCNO,DeclarationS.SOTT,Declaration.NGAYTHONGQUAN,DeclarationS.MALOAIHINH  ');
    SQL.Add('       ,DeclarationS.MANPL_SP,DeclarationS.TONGSOLUONG,DeclarationS.Y_DonGia as DONGIA,DeclarationS.TRIGIANT,DeclarationS.TENDOITAC,DeclarationS.XUATXU,V_HSCode as HSCODE ');
    if not sign then
        sql.Add('   ,W_TenHangHoa as TENHANGHOA')
    else
        sql.Add('   ,CAST(dbo.fSignsToNoSigns(W_TenHangHoa) AS VARCHAR(800)) AS TENHANGHOA');
    SQL.Add('From '+SQL_LinkServer+'.CGZL_DeclarationS DeclarationS ');
    SQL.Add('Left join '+SQL_LinkServer+'.CGZL_Declaration Declaration  ');
    SQL.Add('on DeclarationS.DECLARATION=Declaration.DECLARATION and DeclarationS.DOCNO=Declaration.DOCNO ');
    SQL.Add('Where 1=1 ');
    if Edit1.Text<>'' then
      SQL.Add('    and DeclarationS.DOCNO = '''+Edit1.Text+''' ');
    if Edit2.Text<>'' then
      SQL.Add('    and DeclarationS.DECLARATION = '''+Edit2.Text+''' ');
    Active:=true;
  end;
end;

procedure TEntryList_STT_Hang.FormCreate(Sender: TObject);
begin
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

procedure TEntryList_STT_Hang.DBGridEh1DblClick(Sender: TObject);
begin
  if Kind='EntryList' then
  begin
    if Query1.recordcount>0 then
    begin
      with EntryList.EnDet do
      begin
        edit;
        fieldbyname('SOTT').value:=Query1.fieldbyname('SOTT').value;
      end;
      //Query1.Active:=false;
      //close;
    end;
  end else
  if Kind='EntryTotal' then
  begin
    if Query1.recordcount>0 then
    begin
      with EntryTotal.EnDet do
      begin
        edit;
        fieldbyname('SOTT').value:=Query1.fieldbyname('SOTT').value;
      end;
      //Query1.Active:=false;
      //close;
    end;
  end;

end;

procedure TEntryList_STT_Hang.FormDestroy(Sender: TObject);
begin
  EntryList_STT_Hang:=nil;
end;

end.
