unit DelOther_C_Mat1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls;

type
  TDelOther_C_Mat = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    Edit2: TEdit;
    EDIT1: TEdit;
    Edit3: TEdit;
    DBGrid1: TDBGrid;
    DS1: TDataSource;
    Query1: TQuery;
    Query1ywpm: TStringField;
    Query1dwbh: TStringField;
    Label3: TLabel;
    Edit4: TEdit;
    Query1zwpm: TStringField;
    Query1CLBH: TStringField;
    Query1CLSL: TFloatField;
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
  DelOther_C_Mat: TDelOther_C_Mat;

implementation

uses DelOther_C1;

{$R *.dfm}

procedure TDelOther_C_Mat.FormDestroy(Sender: TObject);
begin
DelOther_C_Mat:=nil;
end;

procedure TDelOther_C_Mat.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
query1.active:=false;
end;

procedure TDelOther_C_Mat.EDIT1KeyPress(Sender: TObject; var Key: Char);
begin

if key=#13 then
edit2.SetFocus;
end;

procedure TDelOther_C_Mat.Edit2KeyPress(Sender: TObject; var Key: Char);
begin

if key=#13 then
edit3.SetFocus;
end;

procedure TDelOther_C_Mat.Edit3KeyPress(Sender: TObject; var Key: Char);
begin

if key=#13 then
edit4.SetFocus;
end;

procedure TDelOther_C_Mat.Edit4KeyPress(Sender: TObject; var Key: Char);
begin

if key=#13 then
button1Click(nil);
end;

procedure TDelOther_C_Mat.Button1Click(Sender: TObject);
begin

with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select CLZL.CLDH as CLBH,CLZL.YWPM,CLZL.ZWPM,CLZL.DWBH,sum(ZLZLS2.CLSL) as CLSL ');
    sql.add('from CLZL ');
    sql.add('left join ZLZLS2 on CLZL.CLDH=ZLZLS2.CLBH');
    sql.add('where CLZL.CLDH like'+''''+edit1.Text+'%'+'''');
    sql.add('      and CLZL.YWPM like '+''''+'%'+edit2.Text+'%'+'''');
    sql.add('      and CLZL.YWPM like '+''''+'%'+edit3.Text+'%'+'''');  
    {if edit4.text='' then
      begin
        sql.add('      and (CLZL.TYJH is null or CLZL.TYJH='+''''+'N'+''''+')');
      end;   }
    if edit4.text<>'' then
      begin
        sql.add('      and ZLZLS2.ZLBH like '+''''+edit4.Text+'%'+'''');
      end;
    sql.add('      and CLZL.CLDH like '+''''+'W%'+'''');
    sql.add('group by CLZL.CLDH,CLZL.YWPM,CLZL.ZWPM,CLZL.DWBH ');
    sql.add('order by CLZL.CLDH');
    active:=true;
  end;
end;

procedure TDelOther_C_Mat.DBGrid1DblClick(Sender: TObject);
begin

if (not query1.Active) then
  begin
    abort;
  end;
if (Query1.recordcount<1) then
  begin
    abort;
  end;
with DelOther_C.DelDet do
  begin
    fieldbyname('CLBH').value:=query1.fieldbyname('CLBH').value;
    fieldbyname('YWPM').value:=query1.fieldbyname('YWPM').value; 
    fieldbyname('ZWPM').value:=query1.fieldbyname('ZWPM').value;
    fieldbyname('DWBH').value:=query1.fieldbyname('DWBH').value;
    //fieldbyname('SCBH').value:=query1.fieldbyname('DDBH').value;
   // fieldbyname('tempQty').value:=0;   
    fieldbyname('CostID').value:='621' ;
    //fieldbyname('BLSB').value:='Y';
    fieldbyname('CLSL').value:=0;
    insert;
  end;
showmessage('Succeed');
end;

procedure TDelOther_C_Mat.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin

 if key=#13 then
   DBGrid1DblClick(nil);
end;

end.
