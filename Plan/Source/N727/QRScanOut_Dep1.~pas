unit QRScanOut_Dep1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, StdCtrls, ExtCtrls, GridsEh, DBGridEh;

type
  TQRScanOut_Dep = class(TForm)
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
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  QRScanOut_Dep: TQRScanOut_Dep;

implementation
  uses QRScanOut1, main1, QRScanIn_Dep1, QRScanIn1;
{$R *.dfm}

procedure TQRScanOut_Dep.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TQRScanOut_Dep.FormDestroy(Sender: TObject);
begin
  QRScanOut_Dep := nil;
end;

procedure TQRScanOut_Dep.Button1Click(Sender: TObject);
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
    if not Checkbox1.Checked then
    begin
      sql.add(' and GSBH='+''''+main.edit2.Text+'''');
    end;
    sql.add('order by ID');
    active:=true;
  end;
end;
procedure TQRScanOut_Dep.DBGridEh1DblClick(Sender: TObject);
begin
  if query1.recordcount>0 then
  begin
    //±a¤JDepNO
    QRScanOut.DepNo.active:=true;
    if QRScanOut.DepNo.Locate('ID',copy(query1.FieldByName('ID').AsString,0,10),[]) then
    begin
      QRScanOut.edit4.Text:=query1.fieldbyname('ID').Value;
      QRScanOut.edit2.Text:=query1.fieldbyname('DepName').Value;
    end;
    //
    close;
  end;
end;

procedure TQRScanOut_Dep.FormShow(Sender: TObject);
begin
  main.FormLanguage(Pointer(self),self.Name);
end;
end.
