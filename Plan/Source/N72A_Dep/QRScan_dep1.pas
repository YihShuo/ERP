unit QRScan_dep1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, StdCtrls, ExtCtrls, GridsEh, DBGridEh;

type
  TQRScan_Dep = class(TForm)
    DBGridEh1: TDBGridEh;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Edit2: TEdit;
    CheckBox1: TCheckBox;
    DS1: TDataSource;
    Query1: TQuery;
    Query1ID: TStringField;
    Query1DepName: TStringField;
    Query1DepMemo: TStringField;
    Query1GXLB: TStringField;
    Query1YN: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  QRScan_Dep: TQRScan_Dep;

implementation
  uses PrintQR1, main1;
{$R *.dfm}

procedure TQRScan_Dep.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    Action := caFree;
end;

procedure TQRScan_Dep.FormDestroy(Sender: TObject);
begin
   QRScan_Dep := nil;
end;

procedure TQRScan_Dep.Button1Click(Sender: TObject);
begin
 with query1 do
  begin
    active:=false;
    sql.clear;
    sql.Add('select * from BDepartment');
    sql.add('where ID like '+''''+edit1.Text+'%'+'''');
    sql.add('      and Depname like '+''''+'%'+edit2.Text+'%'+'''');
    sql.add('      and ProYN='+''''+'1'+'''');
    sql.add('      and IsNull(GXLB,'''')<>'''' ');
    sql.add('      and gxlb=''C'' ');
    if not Checkbox1.Checked then
    begin
      sql.add(' and GSBH='+''''+main.edit2.Text+'''');
    end;
    sql.add('order by ID');
    active:=true;
  end;
end;

procedure TQRScan_Dep.DBGridEh1DblClick(Sender: TObject);
begin
  if query1.recordcount>0 then
  begin
    //±a¤JDepNO
    PrintQR.DepNo.active:=true;
    if PrintQR.DepNo.Locate('ID',copy(query1.FieldByName('ID').AsString,0,10),[]) then
    begin
      PrintQR.edit3.Text:=query1.fieldbyname('ID').Value;
      PrintQR.edit2.Text:=query1.fieldbyname('DepName').Value;
    end;
    //
    close;
  end;
end;

end.
