unit OutsolePurchase_CL1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ExtCtrls;

type
  TOutsolePurchase_CL = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    lbl2: TLabel;
    Button1: TButton;
    MatNoEdit: TEdit;
    MatNMEdit: TEdit;
    RKNOEdit: TEdit;
    dbgrdh1: TDBGridEh;
    DS1: TDataSource;
    Query1: TQuery;
    Query1RKNO: TStringField;
    Query1GSBH: TStringField;
    Query1CLBH: TStringField;
    Query1ywpm: TStringField;
    Query1dwbh: TStringField;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure dbgrdh1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  OutsolePurchase_CL: TOutsolePurchase_CL;

implementation
  uses main1, Outsolereturn1;
{$R *.dfm}

procedure TOutsolePurchase_CL.FormDestroy(Sender: TObject);
begin
  OutsolePurchase_CL:=nil;
end;

procedure TOutsolePurchase_CL.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TOutsolePurchase_CL.Button1Click(Sender: TObject);
begin
  if ((RKNOEdit.Text='') and (MatNoEdit.Text='') ) then
  begin
    Showmessage('no net can 1 ma Vat tu hay ma nhap kho');
    exit;
  end;
  
  with Query1 do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select IsNull(KCRK.RKNO,''ZZZZZZZZZZ'') as RKNO,KCRK.GSBH,CLZL.cldh as CLBH,CLZL.ywpm,CLZL.dwbh from CLZL ');
    SQL.Add('left join KCRKS on KCRKS.CLBH=CLZL.CLDH ');
    SQL.Add('left join KCRK on KCRK.RKNO=KCRKS.RKNO ');
    SQL.Add('where 1=1 ');
    if RKNOEdit.Text<>'' then
      SQL.Add('and KCRK.RKNO like '''+RKNOEdit.Text+'%'' and KCRK.GSBH='''+main.Edit2.Text+''' ');
    if MatNoEdit.Text<>'' then
      SQL.Add('and CLZL.CLDH like '''+MatNoEdit.Text+'%'' ');
    if MatNMEdit.Text<>'' then
      SQL.Add('and CLZL.YWPM like '''+MatNMEdit.Text+'%'' ');
    Active:=true;  
  end;

end;

procedure TOutsolePurchase_CL.dbgrdh1DblClick(Sender: TObject);
begin
    with Outsolereturn.DelDet do
    begin
        fieldbyname('CLBH').value:=query1.fieldbyname('CLBH').value;
        fieldbyname('YWPM').value:=query1.fieldbyname('YWPM').value;
        fieldbyname('DWBH').value:=query1.fieldbyname('DWBH').value;
        fieldbyname('ZLBH').value:=query1.fieldbyname('RKNO').value;
        insert;
    end;
    showmessage('Succeed');
end;

end.
