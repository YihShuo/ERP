unit EntryList_VATNO1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GridsEh, DBGridEh, StdCtrls, ExtCtrls, ComCtrls, DB, DBTables,IniFiles;

type
  TEntryList_VATNO = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    EDIT1: TEdit;
    DBGridEh1: TDBGridEh;
    DTP1: TDateTimePicker;
    Label4: TLabel;
    DTP2: TDateTimePicker;
    Label3: TLabel;
    Edit2: TEdit;
    Query1: TQuery;
    DataSource1: TDataSource;
    Query1VATNO: TStringField;
    Query1VATDATE: TDateTimeField;
    Query1ZSBH_MST: TStringField;
    Query1USERID: TStringField;
    Query1USERDATE: TDateTimeField;
    Query1YN: TStringField;
    Query1zsdh: TStringField;
    Query1zsywjc: TStringField;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
  private
    AccountN233_CheckLinkServer, SQL_LinkServer: string;
    { Private declarations }
    procedure ReadIni();
  public
    { Public declarations }
  end;

var
  EntryList_VATNO: TEntryList_VATNO;
  Kind:string;

implementation

uses EntryList1, EntryTotal1, EntryList_InvoiceModify1;

{$R *.dfm}
procedure TEntryList_VATNO.ReadIni();
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

procedure TEntryList_VATNO.Button1Click(Sender: TObject);
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
    SQL.Add('select CGZL_VATNO.*,zszl.zsdh,zszl.zsywjc   ');
    SQL.Add('from '+SQL_LinkServer+'.CGZL_VATNO CGZL_VATNO ');
    SQL.Add('left join zszl on zszl.tybh=CGZL_VATNO.ZSBH_MST  ');
    SQL.Add('where convert(varchar,VATDate,111) between'''+formatdatetime('yyyy/MM/dd', DTP1.Date)+''' and '''+formatdatetime('yyyy/MM/dd', DTP2.Date)+''' ');
    if Edit2.Text<>'' then
      SQL.Add('    and zszl.zsdh like '''+Edit2.Text+'%'' ');
    if Edit1.Text<>'' then
      SQL.Add('    and VATNO like '''+Edit1.Text+'%'' ');
    Active:=true;
  end;
end;

procedure TEntryList_VATNO.FormCreate(Sender: TObject);
begin
  DTP1.Date:=Now-30;
  DTP2.Date:=Now;
  ReadIni();
end;

procedure TEntryList_VATNO.DBGridEh1DblClick(Sender: TObject);
begin
  if Kind='EntryList' then
  begin
    if Query1.recordcount>0 then
    begin
      with EntryList.EnMas do
      begin
        edit;
        fieldbyname('DOCNO').value:=Query1.fieldbyname('VATNO').value;
        fieldbyname('DOCDATE').value:=Query1.fieldbyname('VATDate').value;
        fieldbyname('UserDate').value:=Query1.fieldbyname('VATDate').value;
      end;
      Query1.Active:=false;
      close;
    end;
  end else
  if Kind='EntryTotal' then
  begin
    if Query1.recordcount>0 then
    begin
      with EntryTotal.EnMas do
      begin
        edit;
        fieldbyname('DOCNO').value:=Query1.fieldbyname('VATNO').value;
        fieldbyname('DOCDATE').value:=Query1.fieldbyname('VATDate').value;
        fieldbyname('UserDate').value:=Query1.fieldbyname('VATDate').value;
      end;
      Query1.Active:=false;
      close;
    end;
  end else
  if Kind='EntryInvoiceModify' then
  begin
    if Query1.recordcount>0 then
    begin
      with EntryList_InvoiceModify.EnMas do
      begin
        edit;
        fieldbyname('DOCNO').value:=Query1.fieldbyname('VATNO').value;
        fieldbyname('DOCDATE').value:=Query1.fieldbyname('VATDate').value;
      end;
      Query1.Active:=false;
      close;
    end;
  end;
end;

end.
