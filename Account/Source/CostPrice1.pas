unit CostPrice1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBTables, DB, ComCtrls, StdCtrls, DBCtrls, Grids, DBGrids, Mask,
  Buttons, ExtCtrls,math, GridsEh, DBGridEh;

type
  TCostPrice = class(TForm)
    Panel1: TPanel;
    Label18: TLabel;
    BB2: TBitBtn;
    BB3: TBitBtn;
    BB4: TBitBtn;
    BB5: TBitBtn;
    BB6: TBitBtn;
    BB7: TBitBtn;
    BB1: TBitBtn;
    BBT1: TBitBtn;
    BBT2: TBitBtn;
    BBT3: TBitBtn;
    BBT4: TBitBtn;
    bbt6: TBitBtn;
    Panel6: TPanel;
    Label17: TLabel;
    BD2: TBitBtn;
    BD3: TBitBtn;
    BD4: TBitBtn;
    BD5: TBitBtn;
    BD6: TBitBtn;
    BD7: TBitBtn;
    BDT1: TBitBtn;
    BDT2: TBitBtn;
    BDT3: TBitBtn;
    BDT4: TBitBtn;
    BDT5: TBitBtn;
    BDT6: TBitBtn;
    PC1: TPageControl;
    TS3: TTabSheet;
    Panel4: TPanel;
    Label11: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit7: TDBEdit;
    BBTT1: TBitBtn;
    DBEdit1: TDBEdit;
    TS4: TTabSheet;
    Panel2: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    DS4: TDataSource;
    RevDet: TQuery;
    UPDet: TUpdateSQL;
    DS3: TDataSource;
    RevMas: TQuery;
    UpMas: TUpdateSQL;
    Query1: TQuery;
    RevMasSKBH: TStringField;
    RevMasUSACC: TCurrencyField;
    RevMasCWHL: TFloatField;
    RevMasVNACC: TFloatField;
    RevMasZHBH: TStringField;
    RevMasSKDate: TDateTimeField;
    RevMasUSERDATE: TDateTimeField;
    RevMasUSERID: TStringField;
    RevMasYN: TStringField;
    RevMasBankNo: TStringField;
    RevMasZHJC: TStringField;
    RevMasQty: TFloatField;
    Panel3: TPanel;
    Panel7: TPanel;
    Label7: TLabel;
    Label8: TLabel;
    Label19: TLabel;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit13: TDBEdit;
    BBTT2: TBitBtn;
    RevDetSKBH: TStringField;
    RevDetZLBH: TStringField;
    RevDetPairs: TFloatField;
    RevDetUSACC: TCurrencyField;
    RevDetVNACC: TFloatField;
    RevDetUSERDate: TDateTimeField;
    RevDetUSERID: TStringField;
    RevDetYN: TStringField;
    RevDetXieMing: TStringField;
    RevDetArticle: TStringField;
    DBGridEh1: TDBGridEh;
    DBGridEh2: TDBGridEh;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BB1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BB7Click(Sender: TObject);
    procedure BD7Click(Sender: TObject);
    procedure BB2Click(Sender: TObject);
    procedure BB3Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure BD2Click(Sender: TObject);
    procedure BD3Click(Sender: TObject);
    procedure BD4Click(Sender: TObject);
    procedure BD5Click(Sender: TObject);
    procedure BD6Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure BBT1Click(Sender: TObject);
    procedure BBT2Click(Sender: TObject);
    procedure BBT3Click(Sender: TObject);
    procedure BBT4Click(Sender: TObject);
    procedure BDT1Click(Sender: TObject);
    procedure BDT2Click(Sender: TObject);
    procedure BDT3Click(Sender: TObject);
    procedure BDT4Click(Sender: TObject);
    procedure RevDetAfterOpen(DataSet: TDataSet);
    procedure PC1Change(Sender: TObject);
    procedure RevMasAfterOpen(DataSet: TDataSet);
    procedure BBTT1Click(Sender: TObject);
    procedure BBTT2Click(Sender: TObject);
    procedure BO1Click(Sender: TObject);
    procedure BO2Click(Sender: TObject);
    procedure BO5Click(Sender: TObject);
    procedure BO4Click(Sender: TObject);
    procedure BO3Click(Sender: TObject);
    procedure DBGrid1ColExit(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure DBGridEh1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure DBGridEh2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure DBGridEh2EditButtonClick(Sender: TObject);
    procedure DBGridEh2ColEnter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CostPrice: TCostPrice;

implementation

uses main1, CostPrice_ZH1, CostPrice_DD1;

{$R *.dfm}

procedure TCostPrice.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if BB5.enabled  then
  begin
    messagedlg('You have to save data Record of report first.',mtwarning,[mbyes],0);
    PC1.ActivePage:=TS3;
    panel1.Visible:=true;
    panel6.Visible:=false;
    action:=canone;
  end
  else
    begin
      if BD5.enabled then
        begin
          messagedlg('You have to save data Report first.',mtwarning,[mbyes],0);
          PC1.ActivePage:=TS4;
          panel6.Visible:=true;
          panel1.Visible:=false;
          action:=canone;
        end
          else
            begin
              action:=Cafree;
            end;
    end;
end;

procedure TCostPrice.BB1Click(Sender: TObject);
begin
panel2.Visible:=true;
end;

procedure TCostPrice.Button1Click(Sender: TObject);
begin
with RevMas do
  begin
    active:=false;
    sql.Clear;
    sql.add('select CWSK.*,CWZH.BankNo,CWZH.ZHJC');
    sql.add('from CWSK ');
    sql.add('left join CWZH on CWZH.ZHBH=CWSK.ZHBH  ');
    sql.add('where convert(smalldatetime,convert(varchar,CWSK.SKDate,111)) between ');
    sql.add(''''+formatdatetime('yyyy/MM/dd',DTP1.Date)+'''');
    sql.add(' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
    sql.add(' and CWSK.SKBH like '+''''+edit1.Text+'%'+'''');
    sql.add('order by CWSK.SKBH DESC');
    active:=true;
  end;
panel2.Visible:=false;
BB2.Enabled:=true;
BB3.Enabled:=true;
BB4.Enabled:=true;
BBT1.Enabled:=true;
BBT2.Enabled:=true;
BBT3.Enabled:=true;
BBT4.Enabled:=true;
BBT6.Enabled:=true;
RevDet.Active:=true;
end;

procedure TCostPrice.FormCreate(Sender: TObject);
begin

PC1.ActivePage:=TS3;
DTP1.Date:=date-15;
DTP2.date:=date;
end;

procedure TCostPrice.BB7Click(Sender: TObject);
begin
close;
end;

procedure TCostPrice.BD7Click(Sender: TObject);
begin
close;
end;

procedure TCostPrice.BB2Click(Sender: TObject);
begin
with RevMas do
  begin
    requestlive:=true;
    cachedupdates:=true;
    insert;
  end;
BBTT1.Visible:=true;
BB5.Enabled:=true;
BB6.Enabled:=true;
DBGridEh1.columns[2].ButtonStyle:=cbsEllipsis;
end;

procedure TCostPrice.BB3Click(Sender: TObject);
begin
if RevDet.recordcount=0 then
  begin
    with RevMas do
      begin
        requestlive:=true;
        cachedupdates:=true;
        edit;
        fieldbyname('YN').Value:='0';
      end;
  end
    else
      begin
        showmessage('Pls delete the Deliver Detail first.')
      end;
BBTT1.Visible:=true;
BB5.Enabled:=true;
BB6.Enabled:=true;
DBGridEh1.columns[2].ButtonStyle:=cbsEllipsis;
end;

procedure TCostPrice.BB4Click(Sender: TObject);
begin
with RevMas do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
BBTT1.Visible:=true;
BB5.Enabled:=true;
BB6.Enabled:=true;
DBGridEh1.columns[2].ButtonStyle:=cbsEllipsis;
end;

procedure TCostPrice.BB5Click(Sender: TObject);
var y,m,a:string;
i:integer;
begin
with query1 do          //取服務器的年月值
  begin
    active:=false;
    sql.Clear;
    sql.Add('select year(getdate()) as FY,month(getdate()) as FM ');
    active:=true;
    y:=fieldbyname('FY').asstring;
    m:=fieldbyname('FM').asstring;
    active:=false;
  end;
if length(m)<2 then
  m:='0'+m;  

try
    RevMas.first;
    for i:=1 to RevMas.RecordCount do
      begin
        case RevMas.updatestatus of
          usinserted:
            begin
              if RevMas.fieldbyname('ZHBH').isnull then
                begin
                  RevMas.delete;
                end
                 else
                   begin
                     with query1 do    //計算領料單流水號
                       begin
                         active:=false;
                         sql.Clear;
                         sql.Add('select SKBH from CWSK where SKBH like '+''''+y+m+'%'+'''');
                         sql.add('order by SKBH');
                         active:=true;
                         if recordcount >0 then
                           begin
                             last;
                             a:=fieldbyname('SKBH').AsString;
                             a:=copy(a,7,5);
                             a:=inttostr(strtoint(a)+1);
                             while length(a)<4 do
                               begin
                                 a:='0'+a;
                               end;
                           end
                             else
                               begin
                                 a:='0001';
                               end;
                         a :=y+m+a;
                         active:=false;
                       end;
                     RevMas.edit;
                     RevMas.fieldbyname('SKBH').Value:=a;
                     RevMas.FieldByName('userID').Value:=main.edit1.text;
                     RevMas.FieldByName('userdate').Value:=date;
                     RevMas.FieldByName('USACC').Value:=0;
                     RevMas.FieldByName('SKDate').Value:=date;
                     RevMas.FieldByName('VNACC').Value:=0;
                     RevMas.FieldByName('Qty').Value:=0;
                     RevMas.FieldByName('YN').Value:='1';
                     upMas.apply(ukinsert);
                   end;
            end;
          usmodified:
             begin
              if (RevMas.fieldbyname('YN').value='0')  then
                begin
                  upMas.apply(ukdelete);
                end
                else
                  begin
                    RevMas.edit;
                    RevMas.FieldByName('userID').Value:=main.edit1.text;
                    RevMas.FieldByName('userdate').Value:=date;
                    upMas.apply(ukmodify);
                  end;
             end;
        end;
        RevMas.next;
      end;
RevMas.active:=false;
RevMas.cachedupdates:=false;
RevMas.requestlive:=false;
RevMas.active:=true;
bb5.enabled:=false;
bb6.enabled:=false;
BBTT1.Visible:=false;
DBGridEh1.columns[2].ButtonStyle:=cbsEllipsis;
except
  Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
end;

end;

procedure TCostPrice.BD2Click(Sender: TObject);
begin
if RevMas.RequestLive then
  begin
    showmessage('Pls save Master data first.');
    PC1.ActivePage:=TS3;
    panel6.visible:=false;
    panel1.visible:=true;
    abort;
  end;

with RevDet do
  begin
    requestlive:=true;
    cachedupdates:=true;
    insert;
  end;
BBTT2.Visible:=true;
BD5.Enabled:=true;
BD6.Enabled:=true;
DBGridEh2.columns[0].ButtonStyle:=cbsEllipsis;
end;

procedure TCostPrice.BD3Click(Sender: TObject);
begin
if RevMas.RequestLive then
  begin
    showmessage('Pls save Master data first.');
    PC1.ActivePage:=TS3;
    panel6.visible:=false;
    panel1.visible:=true;
    abort;
  end;

with RevDet do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
    fieldbyname('YN').Value:='0';
  end;
BBTT2.Visible:=true;
BD5.Enabled:=true;
BD6.Enabled:=true;
DBGridEh2.columns[0].ButtonStyle:=cbsEllipsis;
end;

procedure TCostPrice.BD4Click(Sender: TObject);
begin
if RevMas.RequestLive then
  begin
    showmessage('Pls save Master data first.');
    PC1.ActivePage:=TS3;
    panel6.visible:=false;
    panel1.visible:=true;
    abort;
  end;

with RevDet do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
BBTT2.Visible:=true;
BD5.Enabled:=true;
BD6.Enabled:=true;
DBGridEh2.columns[0].ButtonStyle:=cbsEllipsis;
end;

procedure TCostPrice.BD5Click(Sender: TObject);
var n:integer;
a,b,c,d:string;
begin
try
    RevDet.first;
    while not RevDet.eof do
      begin
        case RevDet.updatestatus of
          usinserted:
            begin
               RevDet.edit;
               RevDet.fieldbyname('SKBH').Value:=RevMas.fieldbyname('SKBH').value;
               upDet.apply(ukinsert);
            end;
          usmodified:
             begin
               if RevDet.fieldbyname('YN').value='0' then
                 begin
                   upDet.apply(ukDelete);
                 end
                 else
                   begin
                     upDet.apply(ukmodify);
                   end;
             end;
        end;
        RevDet.next;
      end;
RevDet.active:=false;
RevDet.RequestLive:=false;
RevDet.CachedUpdates:=false;
RevDet.active:=true;
bb6.enabled:=false;  
BBTT2.Visible:=false;
BD5.Enabled:=false;
BD6.Enabled:=false;
DBGridEh2.columns[0].ButtonStyle:=cbsNone;
except
  Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
end;

end;

procedure TCostPrice.BD6Click(Sender: TObject);
begin

with RevDet do
  begin
    active:=false;
    requestlive:=false;
    cachedupdates:=false;
    active:=true;
  end;
BBTT2.Visible:=false;
BD5.Enabled:=false;
BD6.Enabled:=false;
DBGridEh2.columns[0].ButtonStyle:=cbsNone;
end;

procedure TCostPrice.BB6Click(Sender: TObject);
begin
with RevMas do
  begin
    active:=false;
    requestlive:=false;
    cachedupdates:=false;
    active:=true;
  end;
bb5.enabled:=false;
bb6.enabled:=false;
BBTT1.Visible:=false;
DBGridEh1.columns[2].ButtonStyle:=cbsnone;
end;

procedure TCostPrice.BBT1Click(Sender: TObject);
begin
RevMas.First;
end;

procedure TCostPrice.BBT2Click(Sender: TObject);
begin
RevMas.prior;
end;

procedure TCostPrice.BBT3Click(Sender: TObject);
begin
RevMas.next;
end;

procedure TCostPrice.BBT4Click(Sender: TObject);
begin
RevMas.last;
end;

procedure TCostPrice.BDT1Click(Sender: TObject);
begin
RevDet.first;
end;

procedure TCostPrice.BDT2Click(Sender: TObject);
begin
RevDet.prior;
end;

procedure TCostPrice.BDT3Click(Sender: TObject);
begin
RevDet.next;
end;

procedure TCostPrice.BDT4Click(Sender: TObject);
begin
RevDet.last;
end;

procedure TCostPrice.RevDetAfterOpen(DataSet: TDataSet);
begin
BD2.Enabled:=true;
BD3.Enabled:=true; 
BD4.Enabled:=true;
BDT1.Enabled:=true;
BDT2.Enabled:=true;
BDT3.Enabled:=true;
BDT4.Enabled:=true; 
BDT5.Enabled:=true;
BDT6.Enabled:=true;
BD5.Enabled:=false;
BD6.Enabled:=false;

{if RevDet.recordcount>0 then
  begin
    BO1.Enabled:=true;
    BO2.Enabled:=true;
    BO5.Enabled:=true;
    BO3.Enabled:=false;
    BO4.Enabled:=false;
    CWSKSS.Active:=true;
  end
  else
    begin
      BO1.Enabled:=false;
      BO2.Enabled:=false;
      BO5.Enabled:=false;
      BO3.Enabled:=false;
      BO4.Enabled:=false;
      CWSKSS.Active:=false;
    end ;}
end;

procedure TCostPrice.PC1Change(Sender: TObject);
begin
if PC1.ActivePage=TS4 then
  begin
    panel6.visible:=true;
    panel1.visible:=false;
  end
    else
      begin
        panel6.visible:=false;
        panel1.visible:=true;
      end;
end;

procedure TCostPrice.RevMasAfterOpen(DataSet: TDataSet);
begin
BB5.Enabled:=false;
BB6.Enabled:=false;
BD5.Enabled:=false;
BD6.Enabled:=false;
end;

procedure TCostPrice.BBTT1Click(Sender: TObject);
begin
CostPrice_ZH:=TCostPrice_ZH.create(self);
CostPrice_ZH.show;
end;

procedure TCostPrice.BBTT2Click(Sender: TObject);
begin
CostPrice_DD:=TCostPrice_DD.create(self);
CostPrice_DD.show;
end;

procedure TCostPrice.BO1Click(Sender: TObject);
begin
{with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select CWDD.DDBH,CWDD.IPrice,CWDD.XieMing,SUM(CWDD.Qty)');
    sql.add('from CWDD ');
    sql.add('where CWDD.DDBH='+''''+RevDet.fieldbyname('ZLBH').Value+'''');
    sql.add('group by CWDD.DDBH,CWDD.IPrice,CWDD.XieMing');
    sql.add('order by CWDD.DDBH ');
    active:=true;
    CWSKSS.RequestLive:=true;
    CWSKSS.CachedUpdates:=true;
    while not eof do
      begin
        CWSKSS.insert;
        CWSKSS.FieldByName('SKBH').value:=RevDet.fieldbyname('SKBH').Value;
        CWSKSS.FieldByName('ZLBH').value:=RevDet.fieldbyname('ZLBH').Value;
        CWSKSS.FieldByName('Qty').value:=fieldbyname('Qty').value;
        CWSKSS.FieldByName('USPrice').value:=fieldbyname('IPrice').value;
        CWSKSS.FieldByName('USACC').value:=roundto(CWSKSS.fieldbyname('Qty').value*CWSKSS.fieldbyname('USPrice').value,-2);
        CWSKSS.FieldByName('USERDate').value:=date;
        CWSKSS.FieldByName('USERID').value:=main.Edit1.text;
        CWSKSS.FieldByName('YN').value:='1';
        next;
      end;
    BO3.Enabled:=true;
    BO4.Enabled:=true;
    active:=false;
  end; }

end;

procedure TCostPrice.BO2Click(Sender: TObject);
begin
{if CWSKSS.recordcount>0 then
  begin
    with CWSKSS do
      begin
        cachedupdates:=true;;
        requestlive:=true;
        edit;
        fieldbyname('Pairs').Value:=0;
      end;
  end;
    BO3.Enabled:=true;
    BO4.Enabled:=true; }
end;

procedure TCostPrice.BO5Click(Sender: TObject);
begin
{if CWSKSS.recordcount>0 then
  begin
    with CWSKSS do
      begin
        cachedupdates:=true;;
        requestlive:=true;
        edit;
      end;
  end; 
    BO3.Enabled:=true;
    BO4.Enabled:=true;  }
end;

procedure TCostPrice.BO4Click(Sender: TObject);
begin
{    with CWSKSS do
      begin
        active:=false;
        cachedupdates:=false;;
        requestlive:=false;
        active:=true;
      end;
    BO3.Enabled:=false;
    BO4.Enabled:=false;  }
end;

procedure TCostPrice.BO3Click(Sender: TObject);
var i:integer;
Pairs,USACC:real;
begin
{with CWSKSS do
  begin
    first;
    while not eof do
      begin
        if (fieldbyname('USPrice').isnull or fieldbyname('Qty').isnull) then
          begin
            showmessage('USPrice and Pairs can not be empty.');
            abort;
          end
          else
            begin
              edit;
              fieldbyname('USACC').Value:=roundto(fieldbyname('USPrice').Value*fieldbyname('Qty').Value,-2);
            end;
          next;
      end;
  end;  
if CWSKSS.recordcount=0 then
  begin
    abort;
  end;
try
    CWSKSS.first;
    while not CWSKSS.eof do
      begin
        case CWSKSS.updatestatus of
          usinserted:
            begin
              if CWSKSS.fieldbyname('Qty').value=0 then
                begin
                  CWSKSS.delete;
                end
                 else
                   begin
                     UpSS.apply(ukinsert);
                   end;
            end;
          usmodified:
             begin
              if CWSKSS.fieldbyname('Qty').value='0'then
                begin
                  UpSS.apply(ukdelete);
                end
                else
                  begin
                    CWSKSS.edit;
                    CWSKSS.FieldByName('userID').Value:=main.edit1.text;
                    CWSKSS.FieldByName('userdate').Value:=date;
                    UpSS.apply(ukmodify);
                  end;
             end;
        end;
        CWSKSS.next;
      end;
CWSKSS.active:=false;
CWSKSS.cachedupdates:=false;
CWSKSS.requestlive:=false;
CWSKSS.active:=true;
CWSKSS.First;
Pairs:=0;
USACC:=0;
while not CWSKSS.eof do
  begin
    Pairs:=Pairs+CWSKSS.fieldbyname('Pairs').Value;
    USACC:=USACC+CWSKSS.fieldbyname('USACC').Value;
    CWSKSS.next;
  end;
CWSKSS.Active:=false;
with RevDet do
  begin
    RequestLive:=true;
    CachedUpdates:=true;
    Edit;
    FieldByName('Pairs').Value:=Pairs;
    FieldByName('USACC').Value:=USACC;
    FieldByName('VNACC').Value:=FieldByName('USACC').Value*RevMas.FieldByName('CWHL').value;
    UpDet.Apply(ukmodify);
    active:=false;
    RequestLive:=false;
    CachedUpdates:=false;
    active:=true;
  end;

USACC:=0;
while not RevDet.eof do
  begin
    USACC:=USACC+RevDet.fieldbyname('USACC').Value;
    RevDet.next;
  end;
with RevMas do
  begin
    RequestLive:=true;
    CachedUpdates:=true;
    Edit;
    FieldByName('USACC').Value:=USACC;
    FieldByName('VNACC').Value:=FieldByName('USACC').Value*FieldByName('CWHL').value;
    UpMas.Apply(ukmodify);
    active:=false;
    RequestLive:=false;
    CachedUpdates:=false;
    active:=true;
  end;
//CWSKSS.active:=true;
BO3.enabled:=false;
BO4.enabled:=false;
except
  Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
end;  }

end;

procedure TCostPrice.DBGrid1ColExit(Sender: TObject);
begin
{if CWSKSS.Active then
  begin
    if   CWSKSS.CachedUpdates then
      begin
        if dbgrid1.Selectedindex=2  then
          begin
            CWSKSS.Edit;
            CWSKSS.FieldByName('USACC').Value:=CWSKSS.FieldByName('USPrice').Value*CWSKSS.FieldByName('Pairs').Value;
          end;
      end;
  end; }
end;

procedure TCostPrice.FormDestroy(Sender: TObject);
begin
costprice:=nil;
end;

procedure TCostPrice.DBGridEh1DblClick(Sender: TObject);
begin
  if  RevMas.Active then
  begin
    if  (RevMas.recordcount>0) then
      begin
        PC1.ActivePage:=TS4;
        panel1.Visible:=false;
        panel6.Visible:=true;
      end;
  end;
end;

procedure TCostPrice.DBGridEh1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    DBGridEh1dblclick(nil);
end;

procedure TCostPrice.DBGridEh1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if RevMas.FieldByName('YN').value='0' then
  begin
    DBGridEh1.canvas.font.color:=clred;
    DBGridEh1.defaultdrawcolumncell(rect,datacol,column,state);
  end;
end;

procedure TCostPrice.DBGridEh2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if RevDet.FieldByName('YN').value='0' then
  begin
    DBGridEh2.canvas.font.color:=clred;
    DBGridEh2.defaultdrawcolumncell(rect,datacol,column,state);
  end;
 if RevDet.FieldByName('SKBH').isnull then
  begin
    DBGridEh2.canvas.font.color:=clLime;
    DBGridEh2.defaultdrawcolumncell(rect,datacol,column,state);
  end;
end;

procedure TCostPrice.DBGridEh2EditButtonClick(Sender: TObject);
begin
  if DBGridEh2.selectedfield.fieldname='ZLBH' then
  begin
    BBTT2click(nil);
  end;
end;

procedure TCostPrice.DBGridEh2ColEnter(Sender: TObject);
begin
  if RevDet.CachedUpdates then
  begin
    if  DBGridEh2.Selectedindex=5  then
      begin
        if (not RevDet.FieldByName('USACC').isnull) and RevDet.FieldByName('VNACC').isnull then
          begin
            RevDet.edit;
            RevDet.FieldByName('VNACC').Value:= RevDet.FieldByName('USACC').value*RevMas.FieldByName('CWHL').value ;
          end;
      end
  end;
end;

end.
