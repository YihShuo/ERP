unit QRFormatScan1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBTables, DB, ScktComp, Menus, GridsEh, DBGridEh, ExtCtrls,
  StdCtrls, Mask, DBCtrls, Buttons, ComCtrls, comobj;

type
  TQRFormatScan = class(TForm)
    PC1: TPageControl;
    TS1: TTabSheet;
    TS2: TTabSheet;
    Panel2: TPanel;
    Label5: TLabel;
    LLBarCodeEdit: TEdit;
    BitBtn2: TBitBtn;
    Panel1: TPanel;
    DBGridEh1: TDBGridEh;
    Move: TQuery;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    IntegerField1: TIntegerField;
    MoveName: TStringField;
    MoveID: TStringField;
    MoveDept: TStringField;
    MovePurpose: TStringField;
    StringField6: TStringField;
    DateTimeField1: TDateTimeField;
    DS1: TDataSource;
    Re: TQuery;
    StringField10: TStringField;
    StringField11: TStringField;
    StringField12: TStringField;
    IntegerField2: TIntegerField;
    StringField13: TStringField;
    StringField14: TStringField;
    StringField15: TStringField;
    StringField16: TStringField;
    StringField17: TStringField;
    BooleanField3: TBooleanField;
    BooleanField4: TBooleanField;
    StringField19: TStringField;
    StringField20: TStringField;
    DateTimeField5: TDateTimeField;
    DS2: TDataSource;
    BT1: TBitBtn;
    Button1: TButton;
    CB1: TCheckBox;
    DTP2: TDateTimePicker;
    Label4: TLabel;
    DTP1: TDateTimePicker;
    Label3: TLabel;
    Edit3: TEdit;
    Label9: TLabel;
    Edit2: TEdit;
    Label2: TLabel;
    Edit1: TEdit;
    Label1: TLabel;
    UpTemp: TQuery;
    Query1: TQuery;
    Movebarcode: TStringField;
    Panel3: TPanel;
    Label6: TLabel;
    RRBarCodeEdit: TEdit;
    BitBtn1: TBitBtn;
    BitBtn3: TBitBtn;
    Panel4: TPanel;
    Label7: TLabel;
    Label8: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Button2: TButton;
    CB2: TCheckBox;
    DTP4: TDateTimePicker;
    DTP3: TDateTimePicker;
    Edit6: TEdit;
    Edit5: TEdit;
    Edit4: TEdit;
    DBGridEh2: TDBGridEh;
    Label13: TLabel;
    Label14: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure LLBarCodeEditKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure RRBarCodeEditKeyPress(Sender: TObject; var Key: Char);
    procedure PC1Change(Sender: TObject);
    procedure BT1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  QRFormatScan: TQRFormatScan;
  Ndate:Tdate;

implementation

uses main1, FunUnit;

{$R *.dfm}

procedure TQRFormatScan.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=Cafree;
end;

procedure TQRFormatScan.FormDestroy(Sender: TObject);
begin
  QRFormatScan:=nil;
end;

procedure TQRFormatScan.FormCreate(Sender: TObject);
begin
  with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select getdate() as NDate ');
    active:=true;
    NDate:=fieldbyname('NDate').Value;
  end;
  PC1.ActivePage:=TS1;
  DTP1.Date:=date-15;
  DTP2.date:=date;
  DTP3.Date:=date-15;
  DTP4.date:=date;
  with Move do
  begin
    active:=false;
    sql.Clear;
    sql.add('SELECT ShoeTestScanS.SCNO, SKU, SR, Qty, Name, ID, Dept, Purpose, IDScanMove, ScanMoveDate, barcode ');
    sql.add('FROM ShoeTestScanS LEFT JOIN ShoeTestScan ON ShoeTestScanS.SCNO=ShoeTestScan.SCNO ');
    sql.add('where ScanMoveDate >= dateadd(dd, datediff(dd, 0, getdate()), 0) ');
    sql.add('      and ScanMoveDate < dateadd(dd, datediff(dd, 0, getdate()), +1) ');
    sql.Add('      and GSBH='+''''+main.edit2.Text+'''');
    sql.Add('ORDER BY ScanMoveDate desc');
    active:=true;
  end;
  with Re do
  begin
    active:=false;
    sql.Clear;
    sql.add('SELECT ShoeTestScanS.SCNO, SKU, SR, Qty, Name, ID, Dept, Purpose, RON, Returnn, IDScanMove, IDScanRe, ScanReDate, barcode ');
    sql.add('FROM ShoeTestScanS LEFT JOIN ShoeTestScan ON ShoeTestScanS.SCNO=ShoeTestScan.SCNO ');
    sql.add('where ScanReDate >= dateadd(dd, datediff(dd, 0, getdate()), 0) ');
    sql.add('      and ScanReDate < dateadd(dd, datediff(dd, 0, getdate()), +1) ');
    sql.Add('      and GSBH='+''''+main.edit2.Text+'''');
    sql.Add('ORDER BY ScanReDate desc');
    active:=true;
  end;
end;

procedure TQRFormatScan.BitBtn2Click(Sender: TObject);
begin
  panel1.Visible:=true;
end;

procedure TQRFormatScan.Button1Click(Sender: TObject);
begin
  with Move do
  begin
    active:=false;
    sql.Clear;
    sql.add('SELECT ShoeTestScanS.SCNO, SKU, SR, Qty, Name, ID, Dept, Purpose, IDScanMove, ScanMoveDate, barcode ');
    sql.add('FROM ShoeTestScanS LEFT JOIN ShoeTestScan ON ShoeTestScanS.SCNO=ShoeTestScan.SCNO ');
    sql.add('where convert(smalldatetime,convert(varchar,ScanMoveDate,111)) between ');
    sql.add('      '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+'''');
    sql.add('      and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
    sql.Add('      and GSBH='+''''+main.edit2.Text+'''');
    if edit1.Text<>'' then
    begin
      sql.add('    and ShoeTestScanS.SCNO like '+''''+edit1.Text+'%'+'''');
    end;
    if edit2.Text<>'' then
    begin
      sql.add('    and Dept like '+''''+'%'+edit2.text+'%'+'''');
    end;
    if edit3.Text<>'' then
    begin
      sql.add('    and ID like '+''''+'%'+edit3.text+'%'+'''');
    end;
    if CB1.Checked then
    begin
      sql.add('    and IDScanMove='+''''+main.Edit1.Text+'''');
    end;
    sql.add('order by ShoeTestScanS.SCNO DESC');
    //memo1.text:=sql.text;
    active:=true;
  end;
  panel1.Visible:=false;
end;

procedure TQRFormatScan.LLBarCodeEditKeyPress(Sender: TObject;
  var Key: Char);
  var IDScanMove, barcode: string;
begin
  if (key='.') or (key=#13) then
  begin
    if (key='.') then barcode:=LLBarCodeEdit.Text+'.'
    else barcode:=LLBarCodeEdit.Text;
    with query1 do
    begin
      active:=false;
      sql.Clear;
      sql.add('select IDScanMove FROM ShoeTestScanS Where barcode='''+barcode+''' ');
      active:=true;
      IDScanMove:=fieldbyname('IDScanMove').AsString;
    end;
    if IDScanMove = '' then
    begin
      with UpTemp do
      begin
       Active:=false;
       SQL.Clear;
       sql.Add('Update ShoeTestScanS set IDScanMove='''+main.Edit1.Text+''', ScanMoveDate=getdate() ');
       SQL.Add('Where barcode='''+barcode+''' ');
       ExecSQL;
      end;
    end;
    with Move do
    begin
      active:=false;
      sql.Clear;
      sql.add('SELECT ShoeTestScanS.SCNO, SKU, SR, Qty, Name, ID, Dept, Purpose, IDScanMove, ScanMoveDate, barcode ');
      sql.add('FROM ShoeTestScanS LEFT JOIN ShoeTestScan ON ShoeTestScanS.SCNO=ShoeTestScan.SCNO ');
      sql.add('where ScanMoveDate >= dateadd(dd, datediff(dd, 0, getdate()), 0) ');
      sql.add('      and ScanMoveDate < dateadd(dd, datediff(dd, 0, getdate()), +1) ');
      sql.Add('      and GSBH='+''''+main.edit2.Text+'''');
      sql.Add('ORDER BY ScanMoveDate desc');
      active:=true;
    end;
    LLBarCodeEdit.Text:='';
    key:=#13;
  end;
end;

procedure TQRFormatScan.BitBtn1Click(Sender: TObject);
begin
  panel4.Visible:=true;
end;

procedure TQRFormatScan.Button2Click(Sender: TObject);
begin
  with Re do
  begin
    active:=false;
    sql.Clear;
    sql.add('SELECT ShoeTestScanS.SCNO, SKU, SR, Qty, Name, ID, Dept, Purpose, RON, Returnn, IDScanMove, IDScanRe, ScanReDate, barcode ');
    sql.add('FROM ShoeTestScanS LEFT JOIN ShoeTestScan ON ShoeTestScanS.SCNO=ShoeTestScan.SCNO ');
    sql.add('where convert(smalldatetime,convert(varchar,ScanReDate,111)) between ');
    sql.add('      '''+formatdatetime('yyyy/MM/dd',DTP3.Date)+'''');
    sql.add('      and '+''''+formatdatetime('yyyy/MM/dd',DTP4.Date)+'''');
    sql.Add('      and GSBH='+''''+main.edit2.Text+'''');
    if edit4.Text<>'' then
    begin
      sql.add('    and ShoeTestScanS.SCNO like '+''''+edit4.Text+'%'+'''');
    end;
    if edit5.Text<>'' then
    begin
      sql.add('    and Dept like '+''''+'%'+edit5.text+'%'+'''');
    end;
    if edit6.Text<>'' then
    begin
      sql.add('    and ID like '+''''+'%'+edit6.text+'%'+'''');
    end;
    if CB2.Checked then
    begin
      sql.add('    and IDScanRe='+''''+main.Edit1.Text+'''');
    end;
    sql.add('order by ShoeTestScanS.SCNO DESC');
    //memo1.text:=sql.text;
    active:=true;
  end;
  panel4.Visible:=false;
end;

procedure TQRFormatScan.RRBarCodeEditKeyPress(Sender: TObject;
  var Key: Char);
  var IDScanMove,IDScanRe,barcode: string;
begin
  if (key='.') or (key=#13) then
  begin
    if (key='.') then barcode:=RRBarCodeEdit.Text+'.'
    else barcode:=RRBarCodeEdit.Text;
    with query1 do
    begin
      active:=false;
      sql.Clear;
      sql.add('select IDScanMove,IDScanRe FROM ShoeTestScanS Where barcode='''+barcode+''' ');
      active:=true;
      IDScanMove:=fieldbyname('IDScanMove').AsString;
      IDScanRe:=fieldbyname('IDScanRe').AsString;
    end;
    if (IDScanMove <> '') and (IDScanRe = '') then
    begin
      with query1 do
      begin
        active:=false;
        sql.Clear;
        sql.add('select RON FROM ShoeTestScanS Where barcode='''+barcode+''' ');
        active:=true;
        if fieldbyname('RON').Value=true then
        begin
          with UpTemp do
          begin
           Active:=false;
           SQL.Clear;
           sql.Add('Update ShoeTestScanS set IDScanRe='''+main.Edit1.Text+''', ScanReDate=getdate() ');
           SQL.Add('Where barcode='''+barcode+''' ');
           ExecSQL;
          end;
        end else begin
          with UpTemp do
          begin
           Active:=false;
           SQL.Clear;
           sql.Add('Update ShoeTestScanS set IDScanRe='''+main.Edit1.Text+''', ScanReDate=getdate(), Returnn=1 ');
           SQL.Add('Where barcode='''+barcode+''' ');
           ExecSQL;
          end;
        end;
      end;
    end;
    with Re do
    begin
      active:=false;
      sql.Clear;
      sql.add('SELECT ShoeTestScanS.SCNO, SKU, SR, Qty, Name, ID, Dept, Purpose, RON, Returnn, IDScanMove, IDScanRe, ScanReDate, barcode ');
      sql.add('FROM ShoeTestScanS LEFT JOIN ShoeTestScan ON ShoeTestScanS.SCNO=ShoeTestScan.SCNO ');
      sql.add('where ScanReDate >= dateadd(dd, datediff(dd, 0, getdate()), 0) ');
      sql.add('      and ScanReDate < dateadd(dd, datediff(dd, 0, getdate()), +1) ');
      sql.Add('      and GSBH='+''''+main.edit2.Text+'''');
      sql.Add('ORDER BY ScanReDate desc');
      active:=true;
    end;
    RRBarCodeEdit.Text:='';
    key:=#13;
  end;
end;

procedure TQRFormatScan.PC1Change(Sender: TObject);
begin
  with Move do
  begin
    active:=false;
    sql.Clear;
    sql.add('SELECT ShoeTestScanS.SCNO, SKU, SR, Qty, Name, ID, Dept, Purpose, IDScanMove, ScanMoveDate, barcode ');
    sql.add('FROM ShoeTestScanS LEFT JOIN ShoeTestScan ON ShoeTestScanS.SCNO=ShoeTestScan.SCNO ');
    sql.add('where ScanMoveDate >= dateadd(dd, datediff(dd, 0, getdate()), 0) ');
    sql.add('      and ScanMoveDate < dateadd(dd, datediff(dd, 0, getdate()), +1) ');
    sql.Add('      and GSBH='+''''+main.edit2.Text+'''');
    sql.Add('ORDER BY ScanMoveDate desc');
    active:=true;
  end;
  LLBarCodeEdit.Text:='';
  with Re do
  begin
    active:=false;
    sql.Clear;
    sql.add('SELECT ShoeTestScanS.SCNO, SKU, SR, Qty, Name, ID, Dept, Purpose, RON, Returnn, IDScanMove, IDScanRe, ScanReDate, barcode ');
    sql.add('FROM ShoeTestScanS LEFT JOIN ShoeTestScan ON ShoeTestScanS.SCNO=ShoeTestScan.SCNO ');
    sql.add('where ScanReDate >= dateadd(dd, datediff(dd, 0, getdate()), 0) ');
    sql.add('      and ScanReDate < dateadd(dd, datediff(dd, 0, getdate()), +1) ');
    sql.Add('      and GSBH='+''''+main.edit2.Text+'''');
    sql.Add('ORDER BY ScanReDate desc');
    active:=true;
  end;
  RRBarCodeEdit.Text:='';
end;

procedure TQRFormatScan.BT1Click(Sender: TObject);
  var IDScanRe: string;
begin
  with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select IDScanRe FROM ShoeTestScanS Where barcode='''+Move.fieldbyname('barcode').Value+''' ');
    active:=true;
    IDScanRe:=fieldbyname('IDScanRe').AsString;
  end;
  if (IDScanRe = '') then
  begin
    with UpTemp do
    begin
      Active:=false;
      SQL.Clear;
      sql.Add('Update ShoeTestScanS set IDScanMove='''', ScanMoveDate=null ');
      SQL.Add('Where barcode='''+Move.fieldbyname('barcode').Value+''' ');
      ExecSQL;
    end;
    with Move do
    begin
      active:=false;
      sql.Clear;
      sql.add('SELECT ShoeTestScanS.SCNO, SKU, SR, Qty, Name, ID, Dept, Purpose, IDScanMove, ScanMoveDate, barcode ');
      sql.add('FROM ShoeTestScanS LEFT JOIN ShoeTestScan ON ShoeTestScanS.SCNO=ShoeTestScan.SCNO ');
      sql.add('where ScanMoveDate >= dateadd(dd, datediff(dd, 0, getdate()), 0) ');
      sql.add('      and ScanMoveDate < dateadd(dd, datediff(dd, 0, getdate()), +1) ');
      sql.Add('      and GSBH='+''''+main.edit2.Text+'''');
      sql.Add('ORDER BY ScanMoveDate desc');
      active:=true;
    end;
  end else showmessage('Shoe had scan receive, can not delete!!!');
end;

procedure TQRFormatScan.BitBtn3Click(Sender: TObject);
begin
  with UpTemp do
  begin
    Active:=false;
    SQL.Clear;
    sql.Add('Update ShoeTestScanS set IDScanRe='''', ScanReDate=null, Returnn=0 ');
    SQL.Add('Where barcode='''+Re.fieldbyname('barcode').Value+''' ');
    ExecSQL;
  end;
  with Re do
  begin
    active:=false;
    sql.Clear;
    sql.add('SELECT ShoeTestScanS.SCNO, SKU, SR, Qty, Name, ID, Dept, Purpose, RON, Returnn, IDScanMove, IDScanRe, ScanReDate, barcode ');
    sql.add('FROM ShoeTestScanS LEFT JOIN ShoeTestScan ON ShoeTestScanS.SCNO=ShoeTestScan.SCNO ');
    sql.add('where ScanReDate >= dateadd(dd, datediff(dd, 0, getdate()), 0) ');
    sql.add('      and ScanReDate < dateadd(dd, datediff(dd, 0, getdate()), +1) ');
    sql.Add('      and GSBH='+''''+main.edit2.Text+'''');
    sql.Add('ORDER BY ScanReDate desc');
    active:=true;
  end;
end;

end.
