unit ScanInQR;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ComCtrls, ExtCtrls,
  GridsEh, DBGridEh, Buttons,dateutils ,IniFiles,comobj, Menus;

type
  TScanQR = class(TForm)
    Panel1: TPanel;
    LB2: TLabel;
    DBEdit1: TEdit;
    LB3: TLabel;
    DBEdit2: TEdit;
    BBTT1: TBitBtn;
    DBGridEh1: TDBGridEh;
    Query: TQuery;
    DS2: TDataSource;
    QueryBUYNO: TStringField;
    QueryDDBH: TStringField;
    QueryARTICLE: TStringField;
    QueryXieMing: TStringField;
    QueryMDMH: TStringField;
    QuerySheHao: TStringField;
    QueryCC: TStringField;
    QueryQty: TIntegerField;
    QueryQRCODE: TStringField;
    BitBtn1: TBitBtn;
    Query1: TQuery;
    PopupMenu1: TPopupMenu;
    Delete1: TMenuItem;
    QueryInDate: TDateTimeField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BBTT1Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);

    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
    procedure Delete1Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ScanQR: TScanQR;
  NDate:TDate;

implementation

{$R *.dfm}
uses main1,ScanIn_Dep;

procedure TScanQR.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=CaFree;
  ScanQR:=nil;
end;



procedure TScanQR.BBTT1Click(Sender: TObject);
begin
  Scan_Dep:=TScan_Dep.Create(self);
  Scan_Dep.Show;
end;

procedure TScanQR.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
  DBEdit1.setfocus
end;

procedure TScanQR.FormShow(Sender: TObject);
begin
  main.FormLanguage(Pointer(self),self.Name);
  try
     Query.Close;

        // 2. SELECT d? hi?n th? k?t qu?
        Query.SQL.Clear;
        Query.SQL.Add('SELECT BUYNO, ddzl.DDBH, SMDDScanOut_Test.Article, SMDDScanOut_Test.XieMing, ' +
                      'MDMH, ddzl.SheHao, SCCX AS CC, Qty, QRCode, INDate ' +
                      'FROM TB_DD.dbo.SMDDScanOut_Test SMDDScanOut_Test ' +
                      'LEFT JOIN TB_ERP.dbo.ddzl ddzl ON SMDDScanOut_Test.YSBH = ddzl.DDBH ' +
                      'WHERE SMDDScanOut_Test.YSBH IN ' +
                      '(SELECT YSBH FROM TB_DD.dbo.SMDDScanOut_Test WHERE  cast(cast(indate as DATE) as datetime )=cast(cast(GETDATE() as DATE) as datetime ))'  +
                      'AND WIn > 0 '+
                      //'AND CAST(Indate AS DATE) = CAST(GETDATE() AS DATE)'+
                      ' order by Indate desc ');
        //Query.ParamByName('QRCode').AsString := DBEdit2.Text;
        Query.Open;

        DBEdit2.Text := '';


    except
      on E: Exception do
      begin
        // Handle any exception that may occur (e.g., database connection errors)
        ShowMessage('Error: ' + E.Message);
      end;
    end;
end;


procedure TScanQR.DBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  // Check if the length of the text in DBEdit2 is 12 characters (QR code length)
  if (DBEdit1.Text<>'') then
  begin
  if (key=#13) then
  begin
    try
        Query1.Close;
        Query1.SQL.Clear;
        Query1.SQL.Add(' select 1 from TB_DD.dbo.SMDDScanOut_test WHERE QRCode = :QRCode and isnull(checked,0)=1 ' );
        Query1.ParamByName('QRCode').AsString := DBEdit2.Text;
        Query1.Open;
        if Query1.recordcount>0 then
        begin
          showmessage('Ma QR da Scan OK');
           DBEdit2.Text := '';
           DBEdit2.SetFocus;
        end
        else
        begin
        Query.Close;
        Query.SQL.Clear;
        Query.SQL.Add('insert into TB_DD.dbo.SMDDScanOut_Test(WIn,YSBH,QRCode,inuser,indate,Article,XieMing,MDMH,SCCX,Qty,checked) ' +
                      'select WIn = Qty,YSBH,QRCode, InUser = :UserName, Indate = GETDATE(),Article,XieMing,MDMH,SCCX,Qty,checked =1 ' +
                      'FROM TB_DD.dbo.SMDDScanOut WHERE QRCode = :QRCode ');
        Query.ParamByName('QRCode').AsString := DBEdit2.Text;
        Query.ParamByName('UserName').AsString := main.edit1.Text;
        Query.ExecSQL;

        // 2. SELECT d? hi?n th? k?t qu?
        Query.SQL.Clear;
        Query.SQL.Add('SELECT BUYNO, ddzl.DDBH, SMDDScanOut_Test.Article, SMDDScanOut_Test.XieMing, ' +
                      'MDMH, ddzl.SheHao, SCCX AS CC, Qty, QRCode, InDate ' +
                      'FROM TB_DD.dbo.SMDDScanOut_Test SMDDScanOut_Test ' +
                      'LEFT JOIN TB_ERP.dbo.ddzl ddzl ON SMDDScanOut_Test.YSBH = ddzl.DDBH ' +
                      'WHERE SMDDScanOut_Test.YSBH IN ' +
                      '(SELECT YSBH FROM TB_DD.dbo.SMDDScanOut_Test WHERE  cast(cast(indate as DATE) as datetime )=cast(cast(GETDATE() as DATE) as datetime ))'  +
                      'AND WIn > 0 '+
                      //'AND CAST(Indate AS DATE) = CAST(GETDATE() AS DATE)'+
                      ' order by Indate desc ');
        //Query.ParamByName('QRCode').AsString := DBEdit2.Text;
        Query.Open;

        DBEdit2.Text := '';

        end
   
    except
      on E: Exception do
      begin
        // Handle any exception that may occur (e.g., database connection errors)
        ShowMessage('Error: ' + E.Message);
      end;
    end;
  end

  end
  else
  begin
    ShowMessage('Please Key DepName!!!');
  end;
end;


procedure TScanQR.BitBtn1Click(Sender: TObject);
begin
     try
     Query.Close;
        Query.SQL.Clear;
        Query.SQL.Add('exec TB_DD.dbo.U_SMDDScanOut');
        Query.ExecSQL;

        DBEdit2.Text := '';


    except
      on E: Exception do
      begin
        // Handle any exception that may occur (e.g., database connection errors)
        ShowMessage('Error: ' + E.Message);
      end;
    end;
end;

procedure TScanQR.Delete1Click(Sender: TObject);
//begin
     //ShowMessage('Deleting QRCode: ' + Query.FieldByName('QRCode').AsString);
     //Query.Delete
//end;

var
  qrCodeToDelete: string;
begin
  // L?y QRCode hi?n t?i trên d?ng ðý?c ch?n
  if not Query.Active or Query.IsEmpty then
  begin
    ShowMessage('Khong co ban ghi nao de xoa.');
    Exit;
  end;

  qrCodeToDelete := Query.FieldByName('QRCode').AsString;

  // xac nhan
  if MessageDlg('Ban co chac muon xoa QRCode: ' + qrCodeToDelete + '?',
     mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    try
      // Ðóng dataset hien tai su dung
      Query.Close;

      // Go cau lenh DELETE
      Query.SQL.Clear;
      Query.SQL.Add('DELETE FROM TB_DD.dbo.SMDDScanOut_Test WHERE QRCode = :QRCode');
      Query.ParamByName('QRCode').AsString := qrCodeToDelete;

      // Th?c thi xóa
      Query.ExecSQL;

      // Load l?i d? li?u (n?u c?n)
      Query.SQL.Clear;
      Query.SQL.Add('SELECT BUYNO, ddzl.DDBH, SMDDScanOut_Test.Article, SMDDScanOut_Test.XieMing, ' +
                    'MDMH, ddzl.SheHao, SCCX AS CC, Qty, QRCode, InDate ' +
                    'FROM TB_DD.dbo.SMDDScanOut_Test SMDDScanOut_Test ' +
                    'LEFT JOIN TB_ERP.dbo.ddzl ddzl ON SMDDScanOut_Test.YSBH = ddzl.DDBH ' +
                    'WHERE SMDDScanOut_Test.YSBH IN ' +
                    '(SELECT YSBH FROM TB_DD.dbo.SMDDScanOut_Test WHERE CAST(CAST(indate AS DATE) AS datetime) = CAST(CAST(GETDATE() AS DATE) AS datetime)) ' +
                    'AND WIn > 0 ' +
                    'ORDER BY Indate DESC');
      Query.Open;

      ShowMessage('Da xoa QRCode thanh cong.');

    except
      on E: Exception do
        ShowMessage('Loi khi xoa: ' + E.Message);
    end;
  end;
end;



end.
