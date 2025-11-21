unit EntryList_Declaration1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GridsEh, DBGridEh, ComCtrls, StdCtrls, ExtCtrls, DB, DBTables,IniFiles;

type
  TEntryList_Declaration = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label3: TLabel;
    Button1: TButton;
    EDIT1: TEdit;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    Edit2: TEdit;
    DBGridEh1: TDBGridEh;
    Query1: TQuery;
    DataSource1: TDataSource;
    Query1Declaration: TStringField;
    Query1Docno: TStringField;
    Query1DeclarationDate: TDateTimeField;
    Query1MaLoaiHinh: TStringField;
    Query1TenDoiTac: TStringField;
    Label5: TLabel;
    Edit3: TEdit;
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
  EntryList_Declaration: TEntryList_Declaration;
  Kind:string;

implementation

uses EntryList1, EntryTotal1, EntryList_InvoiceModify1;

{$R *.dfm}
procedure TEntryList_Declaration.ReadIni();
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

procedure TEntryList_Declaration.Button1Click(Sender: TObject);
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
    SQL.Add('select distinct Declaration,NGAYTHONGQUAN as DeclarationDate,Docno,MaLoaiHinh,TenDoiTac   ');
    SQL.Add('from '+SQL_LinkServer+'.CGZL_Declaration CGZL_Declaration  ');
    SQL.Add('where convert(varchar,NGAYTHONGQUAN,111) between'''+formatdatetime('yyyy/MM/dd', DTP1.Date)+''' and '''+formatdatetime('yyyy/MM/dd', DTP2.Date)+''' ');
      if Edit2.Text<>'' then
        SQL.Add('     and Docno like ''%'+Edit2.Text+'%'' ');
      if Edit1.Text<>'' then
        SQL.Add('     and Declaration like ''%'+Edit1.Text+'%'' ');
      if Edit3.Text<>'' then
        SQL.Add('     and TenDoiTac like ''%'+Edit3.Text+'%'' ');
    Active:=true;
  end;

end;

procedure TEntryList_Declaration.FormCreate(Sender: TObject);
begin
  DTP1.Date:=Now-30;
  DTP2.Date:=Now;
  ReadIni();
end;

procedure TEntryList_Declaration.DBGridEh1DblClick(Sender: TObject);
begin
  if Kind='EntryList' then
  begin
    if Query1.recordcount>0 then
    begin
      with EntryList.EnMas do
      begin
        edit;
        fieldbyname('DOCNO').value:=Query1.fieldbyname('Docno').value;
        fieldbyname('DOCDate').value:=Query1.fieldbyname('DeclarationDate').value;
        fieldbyname('UserDate').value:=Query1.fieldbyname('DeclarationDate').value;
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
          fieldbyname('DOCNO').value:=Query1.fieldbyname('Docno').value;
          fieldbyname('DOCDate').value:=Query1.fieldbyname('DeclarationDate').value;
          fieldbyname('UserDate').value:=Query1.fieldbyname('DeclarationDate').value;
        end;
        Query1.Active:=false;
       close;
    end;
  end else
  if Kind='EntryInvoiceModify' then
  begin
    if Query1.recordcount>0 then
    begin
      with EntryList_InvoiceModify.Enmas do
      begin
        edit;
        fieldbyname('DOCNO').value:=Query1.fieldbyname('Docno').value;
        fieldbyname('DOCDate').value:=Query1.fieldbyname('DeclarationDate').value;
        fieldbyname('UserDate').value:=Query1.fieldbyname('DeclarationDate').value;
      end;
      Query1.Active:=false;
      close;
    end;
  end;
end;

end.
