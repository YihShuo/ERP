unit PurSample_ZS1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls, GridsEh,
  DBGridEh;

type
  TPurSample_ZS = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    EDIT1: TEdit;
    Edit2: TEdit;
    DS1: TDataSource;
    Query1: TQuery;
    Query1ZSDH: TStringField;
    Query1ZSYWJC: TStringField;
    Query1ZSQM: TStringField;
    Query1SamplePurchaser_Name: TStringField;
    SupplierOP: TRadioGroup;
    mineCK: TCheckBox;
    DBGridEh1: TDBGridEh;
    procedure Button1Click(Sender: TObject);
    procedure EDIT1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure DBGridEh1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PurSample_ZS: TPurSample_ZS;

implementation

uses main1,PurNoSize1, SuppNew1, PurSample1, FunUnit;

{$R *.dfm}

procedure TPurSample_ZS.Button1Click(Sender: TObject);
begin
  with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select ZSZL.ZSDH,ZSZL.ZSYWJC,ZSZL.ZSQM,BUSERS.USERNAME as SamplePurchaser_Name from ZSZL ');
    sql.add('left join ZSZL_DEV on ZSZL_DEV.ZSDH=ZSZL.ZSDH and ZSZL_DEV.GSBH='''+main.Edit2.Text+''' ');
    sql.add('left join BUSERS  on BUSERS.USERID=ZSZL_DEV.SamplePurchaser  ');
    sql.add('where 1=1  ');
    if  edit1.Text<>'' then
        sql.add(' and ZSZL.ZSDH like'+''''+edit1.Text+'%'+'''');
    if  edit2.Text<>'' then
        sql.add(' and ZSZL.ZSYWJC like'+''''+'%'+edit2.Text+'%'+'''');
    if mineCK.Checked=true then
          sql.add(' and ZSZL_DEV.SamplePurchaser='+''''+main.edit1.text+'''');
    if SupplierOP.ItemIndex=0 then
    begin
      sql.add('and ZSZL_DEV.SamplePurchaser is not null ');
      sql.add('and ZSZL_DEV.SamplePurchaser<>'''' ');
      sql.add('and ZSZL.YN='+''''+'1'+'''');
    end else  if SupplierOP.ItemIndex=1 then
    begin
      sql.add('and ZSZL.YN='+''''+'2'+'''');
    end else  if SupplierOP.ItemIndex=2 then
    begin
    end;
    sql.add('order by ZSZL.ZSYWJC');
    active:=true;
  end;
end;

procedure TPurSample_ZS.EDIT1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
  edit2.setfocus
end;

procedure TPurSample_ZS.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
  button1click(nil);
end;

procedure TPurSample_ZS.FormDestroy(Sender: TObject);
begin
  PurSample_ZS:=nil;
end;

procedure TPurSample_ZS.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TPurSample_ZS.DBGridEh1DblClick(Sender: TObject);
begin
  if query1.recordcount>0 then
  begin
    with PurSample.CGMas do
      begin
        edit;
        fieldbyname('ZSBH').value:=query1.fieldbyname('ZSDH').value;
        fieldbyname('ZSYWJC').value:=query1.fieldbyname('ZSYWJC').value;
      //  showmessage('Succeed.');
      end;
    query1.Active:=false;
    close;
  end;
end;

procedure TPurSample_ZS.DBGridEh1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
  DBGridEh1Dblclick(nil);
end;

end.
