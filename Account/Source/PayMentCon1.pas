unit PayMentCon1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, StdCtrls, ComCtrls, ExtCtrls, Grids, DBGrids,
  Menus, GridsEh, DBGridEh;

type
  TPayMentCon = class(TForm)
    DBGrid1: TDBGridEh;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    Edit1: TEdit;
    PayMas: TQuery;
    UpMas: TUpdateSQL;
    DS3: TDataSource;
    PayMasFKBH: TStringField;
    PayMasUSACC: TCurrencyField;
    PayMasVNACC: TFloatField;
    PayMasUSQty: TCurrencyField;
    PayMasVNQty: TFloatField;
    PayMasZHBH: TStringField;
    PayMasZSBH: TStringField;
    PayMasFKDate: TDateTimeField;
    PayMasUSERDATE: TDateTimeField;
    PayMasUSERID: TStringField;
    PayMasYN: TStringField;
    PayMasBankNo: TStringField;
    PayMasZHJC: TStringField;
    PayMasZSYWJC: TStringField;
    PayDet: TQuery;
    PayDetZSBH: TStringField;
    PayDetDJLX: TStringField;
    PayDetDJNO: TStringField;
    PayDetCGBH: TStringField;
    PayDetCLBH: TStringField;
    PayDetDJDATE: TDateTimeField;
    PayDetQty: TCurrencyField;
    PayDetUSPrice: TCurrencyField;
    PayDetUSACC: TCurrencyField;
    PayDetCWHL: TIntegerField;
    PayDetVNPrice: TFloatField;
    PayDetVNACC: TFloatField;
    PayDetCostID: TStringField;
    PayDetFKBH: TStringField;
    PayDetUSERDATE: TDateTimeField;
    PayDetUSERID: TStringField;
    PayDetYN: TStringField;
    PayDetYWPM: TStringField;
    PayDetDWBH: TStringField;
    UPDet: TUpdateSQL;
    DS4: TDataSource;
    DBGrid4: TDBGridEh;
    CB1: TCheckBox;
    Pop1: TPopupMenu;
    N1: TMenuItem;
    PayMasCWHL: TFloatField;
    PayDetUSQty: TCurrencyField;
    PayDetVNQty: TFloatField;
    QPrice: TQuery;
    QPriceBJNO: TStringField;
    QPriceCLBH: TStringField;
    QPriceUSPrice: TCurrencyField;
    QPriceVNPrice: TCurrencyField;
    QPriceUSERDate: TDateTimeField;
    QPriceUSERID: TStringField;
    QPriceBJLX: TStringField;
    QPriceMemo: TStringField;
    QPriceYN: TStringField;
    PopupMenu1: TPopupMenu;
    N21: TMenuItem;
    PayMasCMdate: TDateTimeField;
    Panel3: TPanel;
    E2A: TQuery;
    PayMasGSBH: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure PayMasAfterOpen(DataSet: TDataSet);
    procedure PayMasAfterScroll(DataSet: TDataSet);
    procedure DBGrid1EditButtonClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure DBGrid4GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure DBGrid1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure PayMasNewRecord(DataSet: TDataSet);
    procedure PayDetNewRecord(DataSet: TDataSet);
    procedure N21Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PayMentCon: TPayMentCon;

implementation

uses  Payable_ZH1, PayMentCon_Price1, DM3;

{$R *.dfm}

procedure TPayMentCon.FormClose(Sender: TObject; var Action: TCloseAction);
begin
action:=cafree;
end;

procedure TPayMentCon.Button1Click(Sender: TObject);
begin
with PayMas do
  begin
    active:=false;
    sql.Clear;
    sql.add('select CWFK.*,CWZH.BankNo,CWZH.ZHJC,ZSZL.ZSYWJC');
    sql.add('from CWFK');
    sql.add('left join CWZH on CWZH.ZHBH=CWFK.ZHBH ');
    sql.add('left join ZSZL on ZSZL.ZSDH=CWFK.ZSBH ');
    sql.add('where convert(smalldatetime,convert(varchar,CWFK.FKDate,111)) between ');
    sql.add('       '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
    sql.add('     and cwfk.fkbh like '+''''+edit1.Text+'%'+'''');
    if CB1.Checked then
      begin
        sql.add(' and CWFK.ZHBH is null ');
      end;
    sql.add('order by CWFK.FKBH');
    active:=true;
  end;
PayDet.Active:=true;
QPrice.Active:=true;
end;

procedure TPayMentCon.FormCreate(Sender: TObject);
begin
  DTP1.Date:=date-7;
  DTP2.Date:=date;
  try
    dm2.erp2acc.Connected:=true;
  except
    showmessage('You Can not Do It!!!');
    PayMentCon.Close;
  end;
end;

procedure TPayMentCon.PayMasAfterOpen(DataSet: TDataSet);
begin
if PayMas.recordcount>0 then
  begin
    N1.enabled:=true;
  end
  else
    N1.enabled:=false;
end;

procedure TPayMentCon.PayMasAfterScroll(DataSet: TDataSet);
begin
if PayMas.FieldByName('ZHBH').IsNull then
    N1.Enabled:=false
    else
      N1.Enabled:=true;
end;

procedure TPayMentCon.DBGrid1EditButtonClick(Sender: TObject);
begin
if PayMas.recordcount>0 then
  begin
    Payable_ZH:=TPayable_ZH.create(self);
    Payable_ZH.show;
  end;
end;

procedure TPayMentCon.Button2Click(Sender: TObject);
var sno:string;
    i:integer;
begin
UpMas.Apply(ukmodify);
//轉入會計系統
with e2a do
begin
  sql.Clear;
//單頭寫入
  sql.add('insert into ACPTA');
  sql.add('(COMPANY,CREATOR,USR_GROUP,CREATE_DATE,FLAG,TA001,TA002,TA003,TA004,TA005,TA008,TA009)');
  sql.add('VALUES ('+''''+'TYXUAN(NEW)'+'''');
  sql.add('		      ,'+''''+'DT'+'''');
  sql.add('		      ,'+''''+'0001'+'''');
  sql.add('		      ,CONVERT(nchar(8),getdate(),12)');
  sql.add('         ,1');
  sql.add('         ,'+''''+PayMas.FieldByName('zhbh').Value+'''');
  sql.add('         ,'+''''+PayMas.FieldByName('FKBH').Value+'''');
  sql.add('		      ,CONVERT(nchar(8),CONVERT(datetime,'+''''+PayMas.FieldByName('fkdate').AsString+''''+',111),12)');
  sql.add('         ,'+''''+PayMas.FieldByName('zsBH').Value+'''');
  sql.add('         ,'+''''+PayMas.FieldByName('gsbh').Value+'''');
  sql.add('		      ,'+''''+'VND'+'''');
  sql.add('         ,1)');

//單身寫入
  PayDet.First;
  i:=0;
  while not PayDet.Eof do
  begin
    sql.add('insert into ACPTB');
    sql.add('(COMPANY,CREATOR,USR_GROUP,CREATE_DATE,FLAG,TB001,TB002,TB003,TB004');
    sql.add(',TB009,TB010,TB012,TB013,TB014,TB015,TB016,TB017,TB018)');

    sql.add('VALUES ('+''''+'TYXUAN(NEW)'+'''');
    sql.add('		      ,'+''''+'DT'+'''');
    sql.add('		      ,'+''''+'0001'+'''');
    sql.add('		      ,CONVERT(nchar(8),getdate(),12)');
    sql.add('         ,1');
    sql.add('         ,'+''''+PayMas.FieldByName('zhbh').Value+'''');
    sql.add('         ,'+''''+PayMas.FieldByName('FKBH').Value+'''');    
    //算序號
    i:=i+1;
    sno:=inttostr(i);
    while length(sno)<4 do
    begin
      sno:='0'+sno;
    end;
    sql.add('		      ,'+''''+sno+'''');

    sql.add('		      ,'+''''+'9'+'''');
    sql.add('         ,'+PayDet.FieldByName('vnqty').AsString);
    sql.add('         ,0');
    sql.add('		      ,'+''''+'N'+'''');
    sql.add('         ,'+''''+PayMas.FieldByName('bankno').Value+'''');
    sql.add('         ,'+''''+PayMas.FieldByName('gsbh').Value+'''');
    sql.add('         ,'+PayDet.FieldByName('vnqty').AsString);
    sql.add('         ,0');
    sql.add('         ,'+PayDet.FieldByName('vnqty').AsString);
    sql.add('         ,0)');
    PayDet.next;
  end;
  //memo1.text:=sql.text;
end;
PayMas.Active:=false;
PayMas.Active:=true;
end;

procedure TPayMentCon.Button3Click(Sender: TObject);
begin
PayMas.Active:=false;
PayMas.Active:=true;
end;

procedure TPayMentCon.N1Click(Sender: TObject);
begin
with PayMas do
  begin
    edit;
    fieldbyname('ZHBH').Value:=null;
    fieldbyname('BankNo').Value:=null;
    fieldbyname('ZHJC').Value:=null;
    Upmas.Apply(ukmodify);
    active:=false;
    active:=true;
  end;

end;

procedure TPayMentCon.DBGrid4GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
with PayDet do
  begin
    if fieldbyname('USACC').value<>fieldbyname('USQty').value  then
      begin
        DBGRid4.canvas.Font.Color:=clred;
      end;
    if fieldbyname('VNACC').value<>fieldbyname('VNQty').value  then
      begin
        DBGRid4.canvas.Font.Color:=clred;
      end;
  end;
end;

procedure TPayMentCon.DBGrid1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin

with PayMas do
  begin
    if fieldbyname('USACC').value<>fieldbyname('USQty').value  then
      begin
        DBGRid1.canvas.Font.Color:=clred;
      end;
    if fieldbyname('VNACC').value<>fieldbyname('VNQty').value  then
      begin
        DBGRid1.canvas.Font.Color:=clred;
      end;
  end;
end;

procedure TPayMentCon.PayMasNewRecord(DataSet: TDataSet);
begin
abort;
end;

procedure TPayMentCon.PayDetNewRecord(DataSet: TDataSet);
begin
abort;
end;

procedure TPayMentCon.N21Click(Sender: TObject);
begin
if PayDet.recordcount>0 then
  begin
    PayMentCon_Price:=TPayMentCon_Price.create(self);
    PayMentCon_Price.show;
  end;
end;

procedure TPayMentCon.FormDestroy(Sender: TObject);
begin
PayMentCon:=nil;
end;

end.
