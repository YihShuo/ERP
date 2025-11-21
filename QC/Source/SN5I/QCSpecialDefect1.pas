unit QCSpecialDefect1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ComCtrls, ExtCtrls;

type
  TQCSpecialDefect = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    LabSKU: TLabel;
    Label3: TLabel;
    Button1: TButton;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    LbLines: TListBox;
    CbSku: TComboBox;
    LbSku: TListBox;
    CbArticle: TComboBox;
    LbArticle: TListBox;
    BtExcel: TButton;
    EtArticle: TEdit;
    EtSKU: TEdit;
    DBGridEh1: TDBGridEh;
    DS1: TDataSource;
    QReport: TQuery;
    QReportYYBH: TStringField;
    QReportYWSM: TStringField;
    QReportQty: TIntegerField;
    Query1: TQuery;
    QReportSCDate: TStringField;
    QReportGSBH: TStringField;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  QCSpecialDefect: TQCSpecialDefect;

implementation

uses QCDefectReport1;

{$R *.dfm}

procedure TQCSpecialDefect.Button1Click(Sender: TObject);
var param:string;
begin
  //param:=ResultSQLParamt(); //¬d¸ß±ø¥ó
  with QReport Do
  begin
    Active:=false;

    SQL.Clear;
    SQL.Add('SELECT YYBH,Qty,SCDate,GSBH,DepNo,GXLB,SCBH ');
    SQL.Add('(SELECT YWSM FROM QCBLYYS where YYBH=a.YYBH and DFL=a.GXLB and GSBH=a.GSBH ) YWSM ');
    SQL.Add('FROM QCRDS a ');
    SQL.Add('where SCDate between :ST AND :ED ');//AND DepNo= :DepNo AND GXLB= :GXLB AND SCBH= :SCBH');
    SQL.Add('order by SCDate');
    //ParamByName('GXLB').Value := GXLB;
    ParamByName('ST').Value := FormatDateTime('yyyy/MM/dd', DTP1.Date);
    ParamByName('ED').Value := FormatDateTime('yyyy/MM/dd', DTP2.Date);
    //showmessage(SQL.Text);
    Active:=true;
  end;
end;

procedure TQCSpecialDefect.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  QCDefectReport:=nil;
  Action:=Cafree;
end;

procedure TQCSpecialDefect.FormCreate(Sender: TObject);
begin
 //DTP1.Date:=StrToDateTime('2023/07/13');
  DTP2.Date:=Date;
  DTP1.Date:=IncMonth(Date,-1);
end;

end.
