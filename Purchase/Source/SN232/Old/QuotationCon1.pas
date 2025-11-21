unit QuotationCon1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, ComCtrls, StdCtrls, ExtCtrls, Grids,dateUtils, DBGrids;

type
  TQuotationCon = class(TForm)
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    Label1: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    DBGrid2: TDBGrid;
    QuoMas: TQuery;
    UpMas: TUpdateSQL;
    DS3: TDataSource;
    QuoDet: TQuery;
    UPDet: TUpdateSQL;
    DS4: TDataSource;
    QuoMasBJNO: TStringField;
    QuoMasZSBH: TStringField;
    QuoMasUSERDATE: TDateTimeField;
    QuoMasUSERID: TStringField;
    QuoMasCFMDate: TDateTimeField;
    QuoMasCFMID: TStringField;
    QuoMasYN: TStringField;
    QuoMasZSYWJC: TStringField;
    QuoDetBJNO: TStringField;
    QuoDetCLBH: TStringField;
    QuoDetUSPrice: TCurrencyField;
    QuoDetVNPrice: TCurrencyField;
    QuoDetUSERDate: TDateTimeField;
    QuoDetUSERID: TStringField;
    QuoDetMemo: TStringField;
    QuoDetYN: TStringField;
    QuoDetYWPM: TStringField;
    QuoDetDWBH: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  QuotationCon: TQuotationCon;

implementation

uses main1;

{$R *.dfm}

procedure TQuotationCon.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=cafree;
end;

procedure TQuotationCon.Button1Click(Sender: TObject);
begin
with QuoMas do
  begin
    Active:=false;
    sql.Clear;
    sql.add('select CGBJ.*,ZSZL.ZSYWJC ');
    sql.add('from CGBJ');
    sql.add('left join ZSZL on CGBJ.ZSBH=ZSZL.ZSDH ');
    sql.add('where CGBJ.CFMID='+''''+'NO'+'''');
    sql.add('and CGBJ.USERDATE>='+''''+formatdatetime('yyyy/MM/dd',DTP1.date )+'''');
    sql.add('and CGBJ.USERDATE<='+''''+formatdatetime('yyyy/MM/dd',DTP2.date )+'''');
    sql.add('order by CGBJ.BJNO  ');
    active:=true;
  end;
QuoDet.Active:=true;
end;

procedure TQuotationCon.Button3Click(Sender: TObject);
begin
QuoDet.Active:=false;
QuoMas.Active:=false;
QuoMas.Active:=true; 
QuoDet.Active:=true;
end;

procedure TQuotationCon.Button2Click(Sender: TObject);
var y1,m1,d1,y2,m2,d2:word;
begin
decodedate(QuoMas.fieldbyname('USERDATE').value,y1,m1,d1);
decodedate(date,y2,m2,d2);
if  daysbetween(date,QuoMas.fieldbyname('USERDATE').Value)>20  then
  begin
    showmessage('Pls contect with data maintainer.');
    abort;
  end;

QuoDet.first; //檢查材料庫位是否輸入，沒有則要先輸入庫位

try  //更新真正庫存
  with QuoDet do
    begin
      first;
      while not eof do
        begin
          if updatestatus=usmodified then
            begin
              if not (fieldbyname('USPrice').isnull and fieldbyname('VNPrice').isnull) then
                begin
                  UPdet.apply(ukmodify);
                end
                else
                  begin
                    showmessage('Price can not be empty.');
                    abort;
                  end;
            end;
          next;
        end;
    end;
  with QuoMas do
    begin
      edit;
      fieldbyname('CFMID').Value:=main.edit1.text;
      fieldbyname('CFMDATE').Value:=date;
      UPMas.Apply(ukmodify);
      active:=false;
      active:=true;
    end;
showmessage('Succeed.');
except
  showmessage('Have wrong.');
end;

end;

procedure TQuotationCon.FormCreate(Sender: TObject);
begin
DTP1.Date:=date-7;
DTP2.Date:=date;
end;

procedure TQuotationCon.FormDestroy(Sender: TObject);
begin
QuotationCon:=nil;
end;

end.
