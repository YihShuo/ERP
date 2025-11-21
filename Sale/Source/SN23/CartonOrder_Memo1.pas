unit CartonOrder_Memo1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, QRCtrls, QuickRpt, ExtCtrls;

type
  TCartonOrder_Memo = class(TForm)
    QuickRep3: TQuickRep;
    DetailBand3: TQRBand;
    QRSysData1: TQRSysData;
    QRDBText18: TQRDBText;
    QRDBText19: TQRDBText;
    PageFooterBand2: TQRBand;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    ColumnHeaderBand1: TQRBand;
    L1: TQRLabel;
    QRLabel1: TQRLabel;
    QRDBText5: TQRDBText;
    QRLabel4: TQRLabel;
    StrDate: TQRLabel;
    QRLabel18: TQRLabel;
    QRDBText8: TQRDBText;
    QRLabel19: TQRLabel;
    QRDBText14: TQRDBText;
    QRLabel20: TQRLabel;
    QRDBText15: TQRDBText;
    QRLabel21: TQRLabel;
    QRDBText16: TQRDBText;
    QRLabel22: TQRLabel;
    QRDBText17: TQRDBText;
    QRLabel26: TQRLabel;
    QRDBText20: TQRDBText;
    YWDDBZ: TQuery;
    YWDDBZXH: TStringField;
    YWDDBZMENO: TStringField;
    YWDDBZZWSM: TStringField;
    YWDDBZVNSM: TStringField;
    YWDDBZUSERID: TStringField;
    YWDDBZUSERDate: TDateTimeField;
    YWDDBZYN: TStringField;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CartonOrder_Memo: TCartonOrder_Memo;

implementation

{$R *.dfm}

procedure TCartonOrder_Memo.FormCreate(Sender: TObject);
begin
YWDDBZ.Active:=true;
end;

end.
