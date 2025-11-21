unit QRReport1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, ComObj,
  Dialogs, GridsEh, DBGridEh, StdCtrls, ExtCtrls, DB, DBTables,Buttons,
  DBCtrls, TntDBCtrls, TntStdCtrls, Menus, ComCtrls,DateUtils;

type
  TQRReport = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Button1: TButton;
    DBGridEh1: TDBGridEh;
    Panel1: TPanel;
    DS1: TDataSource;
    Query1: TQuery;
    CKBHEdit: TEdit;
    KVBHEdit: TEdit;
    Query1BUYNO: TStringField;
    Query1Article: TStringField;
    Query1XieMing: TStringField;
    Query1YSSM: TStringField;
    Query1MDMH: TStringField;
    Query1Qty: TIntegerField;
    Query1InQTy: TIntegerField;
    Query1OutQty: TIntegerField;
    Button2: TButton;
    Label4: TLabel;
    PopupMenu1: TPopupMenu;
    Detail1: TMenuItem;
    Query1LastOutQty: TIntegerField;
    Query1LastInQty: TIntegerField;
    Query1YSBH: TStringField;
    DTPKK: TDateTimePicker;
    Button3: TButton;
    Query2: TQuery;
    DS2: TDataSource;
    Query2YSBH: TStringField;
    Query2Article: TStringField;
    Query2Qty: TIntegerField;
    Query2Customer: TStringField;
    Query2ModelName: TStringField;
    Button4: TButton;
    CheckBox1: TCheckBox;
    Query1Win: TIntegerField;
    Query2STT: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure Button2Click(Sender: TObject);
    procedure Detail1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  QRReport: TQRReport;

implementation

uses main1,DetailOutsole, FunUnit, Detail1, QRReport_Print1;

{$R *.dfm}
procedure TQRReport.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=CaFree;
  QRReport:=nil;
end;

procedure TQRReport.FormCreate(Sender: TObject);
begin
  DTPKK.Date:=Now();
end;


procedure TQRReport.Button1Click(Sender: TObject);
begin
 with Query1 do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select BUYNO, YSBH, SMDDScanOut.Article, XieMing, YSSM, MDMH, sum(Qty) Qty, Sum(Win) as Win, (sum(WIn)-sum(ROut)) InQTy,(sum(Qty)-(sum(WIn)-sum(ROut))-sum(ROut)) as LastInQty,  '+
    ' sum(ROut) OutQty, (sum(Qty)-sum(ROut)) as LastOutQty  from TB_DD.dbo.SMDDScanOut SMDDScanOut  ' +
            'left join TB_ERP.dbo.DDZL DDZL on DDZL.ZLBH=SMDDScanOut.YSBH ' +
            'where YSBH like '''+Edit1.Text+'%''  ' +
            //if ComboBox1.Text='ALL' then

            'group by BUYNO, YSBH, SMDDScanOut.Article, XieMing, YSSM, MDMH  ');
          if CheckBox1.Checked then
             begin
                SQL.Add('HAVING SUM(ROut) = SUM(Qty) AND SUM(Win) <> 0');
            end
             else
               begin
                SQL.Add('HAVING SUM(ROut) < SUM(Qty) AND SUM(Win) <> 0 ');
             end;
             Open;
            //funcObj.WriteErrorLog(SQL.Text);
            //showmessage(Query1.SQL.text) ;
             Active:=true;
  end;
end;

procedure TQRReport.DBGridEh1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if (query1.FieldByName('OutQTy').value=query1.FieldByName('QTy').value) then
  begin
    dbgrideh1.canvas.font.color:=clBlue;
  end;
  if (query1.FieldByName('InQTy').value=query1.FieldByName('QTy').value) and (query1.FieldByName('OutQTy').value<>query1.FieldByName('QTy').value) then
  begin
    dbgrideh1.canvas.font.color:=clGreen;
  end;

  if ((query1.FieldByName('LastInQty').AsFloat > 0) or (query1.FieldByName('LastOutQty').AsFloat > 0)) and
     ((Column.FieldName = 'LastInQty') or (Column.FieldName = 'LastOutQty')) then
  begin
    dbgrideh1.Canvas.Font.Color := clRed;

  end;
  if (query1.FieldByName('OutQty').AsFloat > 0) and (query1.FieldByName('LastOutQty').AsFloat > 0)  then
  begin
    dbgrideh1.Canvas.Font.Color := clPurple;
  end;
end;

procedure TQRReport.Button2Click(Sender: TObject);
var
  eclApp, WorkBook, WorkSheet: OleVariant;
  i, j: Integer;
begin
  if not Query1.Active or (Query1.RecordCount = 0) then
  begin
    ShowMessage('No record.');
    Exit;
  end;

  try
    eclApp := CreateOleObject('Excel.Application');
  except
    Application.MessageBox('Microsoft Excel is not installed.', 'Error', MB_OK + MB_ICONWARNING);
    Exit;
  end;

  try
    WorkBook := eclApp.Workbooks.Add;
    WorkSheet := WorkBook.Worksheets[1];

    // Ghi tieu ?? c?t
    for i := 0 to DBGridEh1.Columns.Count - 1 do
    begin
      WorkSheet.Cells[1, i + 1] := DBGridEh1.Columns[i].Title.Caption;
      WorkSheet.Cells[1, i + 1].Font.Name := 'Calibri';
      WorkSheet.Cells[1, i + 1].Font.Size := 10;
    end;

    // Ghi d? li?u
    Query1.First;
    j := 2;
    while not Query1.Eof do
    begin
      for i := 0 to DBGridEh1.Columns.Count - 1 do
      begin
        WorkSheet.Cells[j, i + 1] := Query1.Fields[i].AsString;
        WorkSheet.Cells[j, i + 1].Font.Name := 'Calibri';
        WorkSheet.Cells[j, i + 1].Font.Size := 10;
      end;
      Query1.Next;
      Inc(j);
    end;

    // T? ??ng ?i?u ch?nh ?? r?ng c?t
    WorkSheet.Columns.AutoFit;

    ShowMessage('Export successful.');
    eclApp.Visible := True;
  except                                                                                            
    on E: Exception do
      ShowMessage('Error: ' + E.Message);
  end;
end;


procedure TQRReport.Detail1Click(Sender: TObject);
begin
  Outsole:=TOutsole.create(self);
  Outsole.show;
end;


procedure TQRReport.Button3Click(Sender: TObject);
begin
  if ((CKBHEdit.Text = '') or (KVBHEdit.Text = '')) then
  begin
    showmessage('Vui long nhap xuong && so khu');
    abort;
  end;
  Detail:=TDetail.Create(self);
  Detail.Quickrep1.prepare;
  Detail.PageN.caption:=inttostr(Detail.quickrep1.QRPrinter.pagecount);
  Detail.Quickrep1.preview;
  Detail.Free;
end;
procedure TQRReport.Button4Click(Sender: TObject);
begin
  if ((CKBHEdit.Text = '') or (KVBHEdit.Text = '')) then
  begin
    showmessage('Vui long nhap xuong && so khu');
    abort;
  end;
  QRReport_Print:=TQRReport_Print.Create(self);
  QRReport_Print.Quickrep1.prepare;
  //MassPro_PrintCard.PageN.caption:=inttostr(StockShoeMonth_Print.quickrep1.QRPrinter.pagecount);
  QRReport_Print.Quickrep1.preview;
  QRReport_Print.Free;
end;

end.

