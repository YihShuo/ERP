unit MatArea_KC1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls;

type
  TMatArea_KC = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    Edit2: TEdit;
    EDIT1: TEdit;
    DBGrid1: TDBGrid;
    DS1: TDataSource;
    Query1: TQuery;
    Query1KCBH: TStringField;
    Query1KCMC: TStringField;
    Query1USERDATE: TDateTimeField;
    Query1USERID: TStringField;
    Query1YN: TStringField;
    Query1CKBH: TStringField;
    procedure Button1Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure EDIT1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MatArea_KC: TMatArea_KC;

implementation

uses MaterialArea1, main1;

{$R *.dfm}

procedure TMatArea_KC.Button1Click(Sender: TObject);
begin
with query1 do
  begin       
    active:=false;
    sql.Clear;
    sql.add('select KCZL.* from KCZL ');
    sql.add('left join KCCK on KCCK.CKBH=KCZL.CKBH ');
    sql.add('where KCZL.KCBH like ');
    sql.add(''''+edit1.text+'%'+'''');
    sql.add('and KCZL.KCMC like '+''''+'%'+edit2.text+'%'+'''');
    sql.add('and KCCK.GSBH='+''''+main.edit2.Text+'''');
    sql.Add('and KCZL.CKBH='''+MaterialArea.CBX1.Text+'''');
    sql.add('order by KCZL.CKBH,KCZL.KCBH');
    active:=true;
  end;
end;

procedure TMatArea_KC.DBGrid1DblClick(Sender: TObject);
begin
if query1.recordcount>0 then
  begin
    with MaterialArea.MatArea do
      begin
        edit;
        fieldbyname('KCBH').value:=query1.fieldbyname('KCBH').value;
        fieldbyname('KCMC').value:=query1.fieldbyname('KCMC').value;
        fieldbyname('CKBH').value:=query1.fieldbyname('CKBH').value;
      end;
    query1.Active:=false;
    close;
  end;
end;

procedure TMatArea_KC.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
   DBGrid1DblClick(nil);
end;

procedure TMatArea_KC.EDIT1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
  edit2.SetFocus;
end;

procedure TMatArea_KC.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
  button1click(nil);
end;

procedure TMatArea_KC.FormDestroy(Sender: TObject);
begin
MatArea_KC:=nil;
end;

procedure TMatArea_KC.FormClose(Sender: TObject; var Action: TCloseAction);
begin
action:=Cafree;
end;

end.
