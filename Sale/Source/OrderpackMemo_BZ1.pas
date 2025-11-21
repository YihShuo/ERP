unit OrderpackMemo_BZ1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GridsEh, DBGridEh, StdCtrls, ExtCtrls, DB, DBTables, Menus;

type
  TOrderpackMemo_BZ = class(TForm)
    Panel3: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    DBGrideh1: TDBGridEh;
    YWBZZL: TQuery;
    DataSource1: TDataSource;
    YWBZZLKHBH: TStringField;
    YWBZZLMENO: TStringField;
    YWBZZLZWSM: TStringField;
    YWBZZLVNSM: TStringField;
    YWBZZLUSERID: TStringField;
    YWBZZLUSERDate: TDateTimeField;
    YWBZZLYN: TStringField;
    YWBZZLKFJC: TStringField;
    QTemp: TQuery;
    PopupMenu1: TPopupMenu;
    Shipping1: TMenuItem;
    Production1: TMenuItem;
    Label5: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure DBGrideh1DblClick(Sender: TObject);
    procedure DBGrideh1KeyPress(Sender: TObject; var Key: Char);
    procedure FormDestroy(Sender: TObject);
    procedure Shipping1Click(Sender: TObject);
    procedure Production1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  OrderpackMemo_BZ: TOrderpackMemo_BZ;

implementation

uses OrderList1, OrderpackMemo1, main1;

{$R *.dfm}

procedure TOrderpackMemo_BZ.FormCreate(Sender: TObject);
begin
if OrderpackMemo.production.Checked then
  Label5.Caption :=  'Production';
if OrderpackMemo.shipping.Checked then
  Label5.Caption :=  'Shipping';
end;


procedure TOrderpackMemo_BZ.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

action:=cafree;
end;

procedure TOrderpackMemo_BZ.Button1Click(Sender: TObject);
begin

with YWBZZL do
  begin
    active:=false;
    sql.Clear;
    sql.add('select YWBZZL.*,KFZL.KFJC from YWBZZL');
    sql.Add('left join KFZL on KFZl.KFDH=YWBZZL.KHBH ');
    sql.add('where YWBZZL.MENO like '+''''+edit1.Text+'%'+'''');
    sql.add('      and YWBZZL.VNSM like '+''''+'%'+edit2.Text+'%'+'''');
    sql.add('      and KFZL.KFJC='+''''+OrderList.SpecMas.fieldbyname('KFJC').Value+'''');
    // fix
    if OrderpackMemo.shipping.Checked then
      sql.add('      and YWBZZL.YN = ''2''');
    if OrderpackMemo.production.Checked then
      sql.add('      and YWBZZL.YN = ''1''');
    sql.add('order by YWBZZL.MENO');
    active:=true;
  end;
end;

procedure TOrderpackMemo_BZ.DBGrideh1DblClick(Sender: TObject);
begin

if YWBZZL.recordcount>0 then
begin
  if  not OrderpackMemo.YWDDBZ.locate('MENO', YWBZZL.fieldbyname('MENO').value,[]) then
  begin
    with OrderPackMemo.YWDDBZ do
    begin
      edit;
      fieldbyname('MENO').value:=YWBZZL.fieldbyname('MENO').value;
      fieldbyname('ZWSM').value:=YWBZZL.fieldbyname('ZWSM').value;
      fieldbyname('VNSM').value:=YWBZZL.fieldbyname('VNSM').value;
        // fix »Ý¥[¤J YWBZZL.YN
      fieldbyname('YN').value:=YWBZZL.fieldbyname('YN').value;
      post;
      showmessage('Succeed');
    end;
  end;
end;
close;
end;

procedure TOrderpackMemo_BZ.DBGrideh1KeyPress(Sender: TObject;
  var Key: Char);
begin

if key=#13 then
  Dbgrideh1dblclick(nil);
end;

procedure TOrderpackMemo_BZ.FormDestroy(Sender: TObject);
begin
orderpackmemo_BZ:=nil;
end;

procedure TOrderpackMemo_BZ.Shipping1Click(Sender: TObject);
begin
if messagedlg('change to shipping ???',mtconfirmation,[mbYes,mbNo],0)=mrYes then
begin

  with QTemp do
  begin

    active:=false;
    sql.clear;
    sql.add('update YWBZZL');
    sql.Add('set');
    sql.Add('yn = 2');
    sql.Add('where meno = ''' + YWBZZL.FieldByName('MENO').Value +'''');
    ExecSQL;

    active:=false;
    sql.clear;
    sql.add('update YWDDBZ');
    sql.Add('set');
    sql.Add('yn = 2');
    sql.Add('where meno = ''' + YWBZZL.FieldByName('MENO').Value +'''');
    ExecSQL;

  end;

  YWBZZL.Active:=false;
  YWBZZL.Active:=true;
  ShowMessage('sucessed');
end;   // end of  messagedlg
end;



procedure TOrderpackMemo_BZ.Production1Click(Sender: TObject);
begin
if messagedlg('change to production ???',mtconfirmation,[mbYes,mbNo],0)=mrYes then
begin

  with QTemp do
  begin

    active:=false;
    sql.clear;
    sql.add('update YWBZZL');
    sql.Add('set');
    sql.Add('yn = 1');
    sql.Add('where meno = ''' + YWBZZL.FieldByName('MENO').Value +'''');
    ExecSQL;

    active:=false;
    sql.clear;
    sql.add('update YWDDBZ');
    sql.Add('set');
    sql.Add('yn = 1');
    sql.Add('where meno = ''' + YWBZZL.FieldByName('MENO').Value +'''');
    ExecSQL;
  end;

  YWBZZL.Active:=false;
  YWBZZL.Active:=true;
  ShowMessage('sucessed');
end;   // end of  messagedlg
end;

procedure TOrderpackMemo_BZ.FormShow(Sender: TObject);
begin
  main.FormLanguage(Pointer(self),self.Name);
end;

end.
