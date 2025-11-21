unit UseStock_CL1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls;

type
  TUseStock_CL = class(TForm)
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
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure EDIT1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure Edit4KeyPress(Sender: TObject; var Key: Char);
    procedure Button1Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  UseStock_CL: TUseStock_CL;

implementation

uses UseStock1;

{$R *.dfm}

procedure TUseStock_CL.FormDestroy(Sender: TObject);
begin
UseStock_CL:=nil;
end;

procedure TUseStock_CL.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
query1.active:=false;
end;

procedure TUseStock_CL.EDIT1KeyPress(Sender: TObject; var Key: Char);
begin

if key=#13 then
edit2.SetFocus;
end;

procedure TUseStock_CL.Edit2KeyPress(Sender: TObject; var Key: Char);
begin

if key=#13 then
edit3.SetFocus;
end;

procedure TUseStock_CL.Edit3KeyPress(Sender: TObject; var Key: Char);
begin

if key=#13 then
edit4.SetFocus;
end;

procedure TUseStock_CL.Edit4KeyPress(Sender: TObject; var Key: Char);
begin

if key=#13 then
button1Click(nil);
end;

procedure TUseStock_CL.Button1Click(Sender: TObject);
begin

with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select CLDH,CLLB,YWPM,DWBH from CLZL ');
    sql.add('where CLDH like'+''''+edit1.Text+'%'+'''');
    sql.add('      and YWPM like '+''''+'%'+edit2.Text+'%'+'''');
    sql.add('      and YWPM like '+''''+'%'+edit3.Text+'%'+'''');
    sql.add('      and YWPM like '+''''+'%'+edit4.Text+'%'+'''');
    sql.add('      and YN<>'+''''+'2'+'''');
    sql.add('order by CLDH');
    active:=true;
  end;
end;

procedure TUseStock_CL.DBGrid1DblClick(Sender: TObject);
begin
if (not query1.Active) then
    begin
      abort;
    end;
  if (Query1.recordcount<1) then
    begin
      abort;
    end;
 if UseStock.UseStockPage.ActivePageIndex=0 then
 begin
  with UseStock.query1 do
    begin
      if FieldByName('CLSL').value-0.05>
             FieldByName('CGQty').value+FieldByName('UseStock').value then
        begin
          edit;
          fieldbyname('CLBHYS').value:=query1.fieldbyname('CLDH').value;
          FieldByName('UseStock').Value:=
          FieldByName('CLSL').Value-FieldByName('CGQty').Value;
          post;
        end;
    end;
  end
  else if UseStock.UseStockPage.ActivePageIndex=1 then
  begin
  with UseStock.query2 do
    begin
      if FieldByName('CLSL').value-0.05>
             FieldByName('CGQty').value+FieldByName('UseStock').value then
        begin
          edit;
          fieldbyname('CLBHYS').value:=query1.fieldbyname('CLDH').value;
          FieldByName('UseStock').Value:=
          FieldByName('CLSL').Value-FieldByName('CGQty').Value;
          post;
        end;
    end;
  end;
 showmessage('Succeed');
end;

procedure TUseStock_CL.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin

 if key=#13 then
   DBGrid1DblClick(nil);
end;

end.
