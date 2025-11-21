unit QuotationS_CL1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls;

type
  TQuotationS_CL = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    Edit2: TEdit;
    EDIT1: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    DBGrid1: TDBGrid;
    DS1: TDataSource;
    Query1: TQuery;
    Query1cldh: TStringField;
    Query1cllb: TStringField;
    Query1ywpm: TStringField;
    Query1dwbh: TStringField;
    Button3: TButton;
    procedure EDIT1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure Edit4KeyPress(Sender: TObject; var Key: Char);
    procedure Button1Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  QuotationS_CL: TQuotationS_CL;

implementation

uses QuotationS1;

{$R *.dfm}

procedure TQuotationS_CL.EDIT1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
edit2.SetFocus;
end;

procedure TQuotationS_CL.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
edit3.SetFocus;
end;

procedure TQuotationS_CL.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
edit4.SetFocus;
end;

procedure TQuotationS_CL.Edit4KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
button1click(nil);
end;

procedure TQuotationS_CL.Button1Click(Sender: TObject);
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
    sql.add('and (TYJH is null or TYJH=''''  or TYJH='+''''+'N'+''''+')');
    sql.add('order by CLZL.CLDH');
    active:=true;
  end;
end;

procedure TQuotationS_CL.DBGrid1DblClick(Sender: TObject);
begin
if (not query1.Active) then
  begin
    abort;
  end;
if (Query1.recordcount<1) then
  begin
    abort;
  end;
with QuotationS.BJDet do
  begin
    insert;
    fieldbyname('CLBH').value:=query1.fieldbyname('CLDH').value;
    fieldbyname('YWPM').value:=query1.fieldbyname('YWPM').value;
    fieldbyname('DWBH').value:=query1.fieldbyname('DWBH').value;
    post;
  end;
showmessage('Succeed.');
end;

procedure TQuotationS_CL.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
   DBGrid1DblClick(nil);
end;

procedure TQuotationS_CL.FormDestroy(Sender: TObject);
begin
QuotationS_CL:=nil;
end;

procedure TQuotationS_CL.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

action:=cafree;
end;

procedure TQuotationS_CL.Button3Click(Sender: TObject);
var bm:Tbookmark;
i:integer;
Qty:real;
bookmarklist:tbookmarklist;
begin
if messagedlg('Do you really want to copy these record?',mtconfirmation,[mbYes,mbNo],0)=mrYes then
begin
Qty:=0;
  if (not query1.Active) then
    begin
      abort;
    end;
  if (Query1.recordcount<1) then
    begin
      abort;
    end;
query1.disablecontrols;
bm:=query1.getbookmark;
bookmarklist:=dbgrid1.selectedrows;
  if bookmarklist.count>0 then
    begin
      try
        for i:=0 to bookmarklist.count-1 do
        begin
          query1.gotobookmark(pointer(bookmarklist[i]));
          with QuotationS.BJDet do
            begin
              insert;
              fieldbyname('CLBH').value:=query1.fieldbyname('CLDH').value;
              fieldbyname('YWPM').value:=query1.fieldbyname('YWPM').value;
              fieldbyname('DWBH').value:=query1.fieldbyname('DWBH').value;
              post;

           end;
        end;
      finally
        begin
          query1.gotobookmark(bm);
          query1.freebookmark(bm);
          query1.enablecontrols;
          showmessage('You have finish copy!');
        end;
      end;
    end;
end;
end;
end.
