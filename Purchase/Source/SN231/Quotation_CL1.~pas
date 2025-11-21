unit Quotation_CL1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls, GridsEh,
  DBGridEh;

type
  TQuotation_CL = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    Edit2: TEdit;
    EDIT1: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    DS1: TDataSource;
    Query1: TQuery;
    Query1cldh: TStringField;
    Query1cllb: TStringField;
    Query1ywpm: TStringField;
    Query1dwbh: TStringField;
    DBGridEh1: TDBGridEh;
    Qtemp: TQuery;
    procedure EDIT1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure Edit4KeyPress(Sender: TObject; var Key: Char);
    procedure Button1Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure DBGridEh1KeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Quotation_CL: TQuotation_CL;

implementation

uses Quotation1, main1;

{$R *.dfm}

procedure TQuotation_CL.EDIT1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
edit2.SetFocus;
end;

procedure TQuotation_CL.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
edit3.SetFocus;
end;

procedure TQuotation_CL.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
edit4.SetFocus;
end;

procedure TQuotation_CL.Edit4KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
button1click(nil);
end;

procedure TQuotation_CL.Button1Click(Sender: TObject);
begin
with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select CLZL.*  ');
    sql.add('from clzl');
    sql.add(' where CLZL.CLDH like');
    sql.add(''''+edit1.Text+'%'+'''');
    sql.add('and CLZL.YWPM like ');
    sql.add(''''+'%'+edit2.Text+'%'+'''');
    sql.add('and CLZL.YWPM like ');
    sql.add(''''+'%'+edit3.Text+'%'+'''');
    sql.add('and CLZL.YWPM like ');
    sql.add(''''+'%'+edit4.Text+'%'+'''');
   // sql.add('and (TYJH is null or TYJH in ('+''''+'N'+''''+','+''''+''+''''+'))');
    sql.add('order by CLZL.CLDH');
    active:=true;
  end;
end;

procedure TQuotation_CL.FormDestroy(Sender: TObject);
begin
  Quotation_CL:=nil;
end;

procedure TQuotation_CL.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  query1.active:=false;
  Action:=CaFree;
end;

procedure TQuotation_CL.DBGridEh1DblClick(Sender: TObject);
begin
  if (not query1.Active) then
  begin
    abort;
  end;
  if (Query1.recordcount<1) then
  begin
    abort;
  end;
  with Qtemp do
      begin
          active:=false;
          sql.Clear;
          sql.add('select IsNull((select top 1 CWHL from CWHLS  where HLYEAR=Year(GetDate()) and HLMONTH=Month(GetDate()) and HLDay=Day(GetDate())-1),0)as CWHL,');
          sql.add('(case when month(GETDATE())<07 then ''FH''+SUBSTRING(CAST(YEAR(GETDATE()) as VARCHAR),3,2) ');
          sql.add('else ''S''+SUBSTRING(CAST(YEAR(GETDATE())+1 as VARCHAR),3,2) end )as season');
          active:=true;
      end;
  with Quotation.BJDet do
  begin
    insert;
    fieldbyname('CLBH').value:=query1.fieldbyname('CLDH').value;
    fieldbyname('YWPM').value:=query1.fieldbyname('YWPM').value;
    fieldbyname('DWBH').value:=query1.fieldbyname('DWBH').value;
    fieldbyname('Season').value:= Qtemp.fieldbyname('Season').value;
    fieldbyname('ErpEx').value:= Qtemp.fieldbyname('CWHL').value;
    fieldbyname('Discount').Value:='1';
    post;
  end;
  Qtemp.active:=false;
  showmessage('Succeed.');
  //Query1.active:=false;
  //close;
end;

procedure TQuotation_CL.DBGridEh1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
   DBGridEh1DblClick(nil);
end;

procedure TQuotation_CL.FormShow(Sender: TObject);
begin
  main.FormLanguage(Pointer(self),self.Name);
end;

end.
