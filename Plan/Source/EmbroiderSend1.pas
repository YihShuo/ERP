unit EmbroiderSend1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Buttons, DB, DBTables, Grids, DBGrids,
  ExtCtrls, GridsEh, DBGridEh;

type
  TEmbroiderSend = class(TForm)
    Panel2: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    DS1: TDataSource;
    Query2: TQuery;
    DXBW: TQuery;
    DXBWXieXing: TStringField;
    DXBWBWBH: TStringField;
    DXBWYWSM: TStringField;
    DS2: TDataSource;
    DXXX: TQuery;
    DS3: TDataSource;
    Panel1: TPanel;
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
    bbt5: TBitBtn;
    bbt6: TBitBtn;
    Panel3: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label7: TLabel;
    DBNavigator1: TDBNavigator;
    Edit1: TEdit;
    Edit2: TEdit;
    CBX1: TComboBox;
    CBX2: TComboBox;
    CBX3: TComboBox;
    Button1: TButton;
    SpecMas: TQuery;
    SpecMasSCBH: TStringField;
    SpecMasZLBH: TStringField;
    SpecMasXieXing: TStringField;
    SpecMasSheHao: TStringField;
    SpecMasArticle: TStringField;
    SpecMasXieMing: TStringField;
    SpecMasQty: TFloatField;
    SpecMasShipDate: TDateTimeField;
    SpecMasDDZT: TStringField;
    SpecMasXXCC: TStringField;
    SpecMasDDCC: TStringField;
    DXXXDDBH: TStringField;
    DXXXDDCC: TStringField;
    DXXXXXCC: TStringField;
    DXXXQty: TIntegerField;
    DXXXDXBH: TStringField;
    SpecMasZSYWJC: TStringField;
    SpecMasZSBH: TStringField;
    UpSQL1: TUpdateSQL;
    TDXDD: TTable;
    DBGridEh1: TDBGridEh;
    DBGridEh2: TDBGridEh;
    DBGridEh3: TDBGridEh;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DXBWAfterOpen(DataSet: TDataSet);
    procedure BB7Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure bbt5Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure DBGridEh1EditButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  EmbroiderSend: TEmbroiderSend;
  NDate,sdate,edate:TDate;
  a,b,c,d:string;

implementation

uses EmbroiderSend_Print1, main1, EmbroiderSend_ZS1, Prodsend1;

{$R *.dfm}

procedure TEmbroiderSend.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 if BB5.enabled  then
  begin
    messagedlg('You have to save data  first.',mtwarning,[mbyes],0);
    action:=canone;
  end
  else
    begin
      action:=cafree;
    end ;
end;

procedure TEmbroiderSend.FormCreate(Sender: TObject);
var i:integer;
begin
with query2 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select kfdh from kfzl order by kfdh');
    active:=true;
    CBX1.Items.Clear;
    for i:=1 to recordcount do
      begin
        CBX1.Items.Add(fieldbyname('kfdh').asstring);
        next;
      end;
    CBX1.Text:='P';
    active:=false;
    sql.Clear;
    sql.add('select getdate() as NDate ');
    active:=true;
    NDate:=fieldbyname('NDate').Value;
  end;
end;

procedure TEmbroiderSend.Button1Click(Sender: TObject);
var y,m:word;
begin
if (CBX2.text='')or (CBX3.text='')  then
  begin
    showmessage('You have to select the year and month first.');
    abort;
  end;
y:=strtoint(CBX2.Text);
m:=strtoint(CBX3.Text);
if (y>2999) or (y<1900) then
  begin
    showmessage('Pls key in right year');
    abort;
  end;
if (m=0) or (m>12) then
  begin
    showmessage('Pls key in right month');
    abort;
  end;
sdate:=encodedate(y,m,1);
if m=12 then
  begin
    y:=y+1;
    m:=1;
  end
  else
    begin
      m:=m+1;
    end;
edate:=encodedate(y,m,1)-1;

with SpecMas do
  begin
    active:=false;
    sql.Clear;
    sql.add('select distinct SCZL.SCBH, SCZL.ZLBH,DDZL.XieXing,DDZL.SheHao, DDZL.XieXing,DDZL.DDZT,ZSZL.ZSYWJC,DXDD.ZSBH,');
    sql.add('SCZL.Qty as Qty,DDZL.Article,DDZL.ShipDate,XXZL.CCGB as XXCC,DDZL.CCGB as DDCC,XXZL.XieMing');
    sql.add('from SCZL');
    sql.add('left join ZLZL on ZLZL.ZLBH=SCZL.ZLBH');
    sql.add('left join DDZL  on ZLZL.DDBH=DDZL.DDBH');
    sql.add('left join XXZL  on DDZL.XieXing=XXZL.XieXing and DDZL.SheHao=XXZL.SheHao');
    sql.add('left join DXDD on DXDD.ZLBH=ZLZL.ZLBH');
    sql.add('left join ZSZL on ZSZL.ZSDH=DXDD.ZSBH');
    sql.Add('where SCZL.SCBH like ');
    sql.add(''''+edit1.Text+'%'+'''');
    sql.add('and DDZL.KHBH like');
    sql.add(''''+CBX1.Text+'%'+'''');
    sql.add('and SCZL.SCBH=SCZL.ZLBH');
    sql.add('and XXZL.XieMing like ');
    sql.add(''''+'%'+edit2.text+'%'+'''');
    sql.add('and DDZL.ShipDate>=');
    sql.add(''''+formatdatetime('yyyy/MM/dd',sdate)+'''');
    sql.add('and DDZL.shipdate<='+''''+formatdatetime('yyyy/MM/dd',edate)+'''');
    sql.add('order by SCZL.ZLBH');
    active:=true;
  end;
DXBW.active:=true;
BB4.Enabled:=true;
BBT5.Enabled:=true;

end;

procedure TEmbroiderSend.DXBWAfterOpen(DataSet: TDataSet);
begin
DXXX.active:=false;
if DXBW.RecordCount>0 then
  begin
    with SpecMas do
      begin
           //找出訂單尺寸及斬刀尺寸的對應關係
        a:=SpecMas.fieldbyname('DDCC').value  ;
        b:=SpecMas.fieldbyname('XXCC').value;
         //找出所有國別尺寸的對應關係
          //找出訂單鞋型國別尺寸的對應關係
        if a='K' then
          begin
            a:='XXZLS3.UK_Size as DDCC,';
            c:='XXZLS3.UK_Size';
          end;
        if a='J' then
          begin
            a:='XXZLS3.JPN_Size as DDCC,';
            c:='XXZLS3.JPN_Size';
          end;
        if a='E' then
          begin
            a:='XXZLS3.EUR_Size as DDCC,';
            c:='XXZLS3.EUR_Size';
          end;
        if a='F' then
          begin
            a:='XXZLS3.FRN_Size as DDCC,';
            c:='XXZLS3.FRN_Size';
          end;
        if a='M' then
          begin
            a:='XXZLS3.MX_Size as DDCC,';
            c:='XXZLS3.MX_Size';
          end;
        if a='U' then
          begin
            a:='XXZLS3.US_Size as DDCC,';
            c:='US';
          end;
        if a='O' then
          begin
            a:='XXZLS3.OTH_Size as DDCC,';
            C:='XXZLS3.OTH_Size';
          end;
        if b='K' then
          begin
            b:='XXZLS3.UK_Size as XXCC,';
            d:='XXZLS3.UK_Size';
          end;
        if b='J' then
          begin
            b:='XXZLS3.JPN_Size as XXCC,';
            d:='XXZLS3.JPN_Size';
          end;
        if b='E' then
          begin
            b:='XXZLS3.EUR_Size as XXCC,';
            d:='XXZLS3.EUR_Size';
          end;
        if b='F' then
          begin
            b:='XXZLS3.FRN_Size as XXCC,';
            d:='XXZLS3.FRN_Size';
          end;
        if b='M' then
          begin
            b:='XXZLS3.MX_Size as XXCC,';
            d:='XXZLS3.MX_Size';
          end;
        if b='U' then
          begin
            b:='XXZLS3.US_Size as XXCC,';
            d:='XXZLS3.US_Size';
          end;
        if b='O' then
          begin
            b:=' XXZLS3.OTH_Size as XXCC,';
            d:='XXZLS3.OTH_Size';
          end;
        with DXXX do
          begin
            active:=false;
            sql.clear;
            sql.add('select DDZLS.DDBH,'+a+b+'DDZLS.Quantity as Qty,DXXX.DXBH');
            sql.add('  from DDZLS');
            sql.add('left join XXZLS3  on  XXZLS3.XieXing=:XieXing and DDZLS.CC='+c);
            sql.add('left join DXXX on DXXX.lineNum=XXZLS3.LineNum and DXXX.XieXing=XXZLS3.XieXing');
            sql.add('where  DDZLS.quantity <>0');
            sql.add('and DDZLS.DDBH=:ZLBH');
            active:=true;
          end;
      end;
  end;

end;

procedure TEmbroiderSend.BB7Click(Sender: TObject);
begin
close;
end;

procedure TEmbroiderSend.BB4Click(Sender: TObject);
begin
DBGridEh1.Columns[6].buttonstyle:=cbsEllipsis;
BB5.Enabled:=true;
BB6.Enabled:=true;
TDXDD.Active:=true;
with SpecMas do
  begin
    cachedupdates:=true;
    requestlive:=true;
  end;
end;

procedure TEmbroiderSend.BB5Click(Sender: TObject);
begin
try
with SpecMas do
  begin
    first;
    while not eof do
      begin
        if updatestatus=usmodified then
          begin
            if  fieldbyname('ZSYWJC').isnull then
              begin
                if TDXDD.locate('ZLBH',fieldbyname('ZLBH').Value,[]) then
                  begin
          //  showmessage('A');
                    TDXDD.Delete;
                  end;
              end
              else
                begin
                  if TDXDD.locate('ZLBH',fieldbyname('ZLBH').Value,[]) then
                    begin  
           // showmessage('B');
                      TDXDD.Edit;
                      TDXDD.FieldByName('ZSBH').Value:=fieldbyname('ZSBH').Value;
                      TDXDD.Post;
                    end
                    else
                      begin    
           // showmessage('C');
                        TDXDD.Insert;
                        TDXDD.FieldByName('ZLBH').Value:=fieldbyname('ZLBH').value;
                        TDXDD.FieldByName('ZSBH').Value:=fieldbyname('ZSBH').Value;
                        TDXDD.FieldByName('USERDATE').Value:=date;
                        TDXDD.FieldByName('USERID').Value:=main.edit1.text;
                        TDXDD.FieldByName('YN').Value:='1';
                        TDXDD.Post;
                      end;
                end;
          end;
        next;
      end;
  end;
BB5.Enabled:=false;
BB6.Enabled:=false;
TDXDD.Active:=false;
with SpecMas do
  begin
    active:=false;
    cachedupdates:=false;
    requestlive:=false;
    active:=true;
  end;
DBGridEh1.Columns[6].buttonstyle:=cbsnone;
showmessage('Succeed.');
except
  showmessage('Have wrong.')
end;
end;

procedure TEmbroiderSend.BB6Click(Sender: TObject);
begin
BB5.Enabled:=false;
BB6.Enabled:=false;
TDXDD.Active:=false;
  with SpecMas do
  begin
    active:=false;
    cachedupdates:=false;
    requestlive:=false;
    active:=true;
  end;
  DBGridEh1.Columns[6].buttonstyle:=cbsnone;
end;

procedure TEmbroiderSend.bbt5Click(Sender: TObject);
begin
if SpecMas.FieldByName('ZSYWJC').IsNull then
  begin
    showmessage('Pls select supplier first.');
    abort;
  end;
if SpecMas.RequestLive then
  begin
    showmessage('Pls save data first.');
    abort;
  end;
if DXBW.recordcount=0 then
  begin
    showmessage('No embroider part.');
  end;
    begin
      DXBW.First;
      while not DXBW.Eof do
        begin
          with query2 do
            begin
              DXXX.First;
              active:=false;
              sql.clear;
              sql.add('select ZLZL.ZLBH');
              while not DXXX.Eof do
                begin
                  sql.add(',max(case when DDZLS.CC='+''''+DXXX.fieldbyname('DDCC').Value+'''');
                  sql.add(' then DDZLS.quantity else 0 end) as '+''''+DXXX.fieldbyname('XXCC').Value+'''');
                  DXXX.Next;
                end;
              sql.add(' from DDZLS');
              sql.add('left join DDZL on DDZl.DDBH=DDZLS.DDBH');
              sql.add('left join ZLZL on ZLZL.ZLBH=DDZl.ZLBH');
              sql.add('where DDZLS.quantity<>0');
              sql.add('and ZLZL.ZLBH='+''''+SpecMas.fieldbyname('ZLBH').Value+'''');
              sql.add('group by ZLZL.ZLBH');
              active:=true;
            end;
          EmbroiderSend_Print:=TEmbroiderSend_Print.Create(self);
          with query2 do
            begin
              if  query2.Fieldcount>1 then
                begin
                  EmbroiderSend_print.s1.caption:=Fields[1].fieldname;
                  EmbroiderSend_print.Q1.datafield:=Fields[1].fieldname;
                end;  
              if  query2.Fieldcount>2 then
                begin
                  EmbroiderSend_print.s2.caption:=Fields[2].fieldname;
                  EmbroiderSend_print.Q2.datafield:=Fields[2].fieldname;
                end;
              if  query2.Fieldcount>3 then
                begin
                  EmbroiderSend_print.s3.caption:=Fields[3].fieldname;
                  EmbroiderSend_print.Q3.datafield:=Fields[3].fieldname;
                end;
              if  query2.Fieldcount>4 then
                begin
                  EmbroiderSend_print.s4.caption:=Fields[4].fieldname;
                  EmbroiderSend_print.Q4.datafield:=Fields[4].fieldname;
                end;
              if  query2.Fieldcount>5 then
                begin
                  EmbroiderSend_print.s5.caption:=Fields[5].fieldname;
                  EmbroiderSend_print.Q5.datafield:=Fields[5].fieldname;
                end;
              if  query2.Fieldcount>6 then
                begin
                  EmbroiderSend_print.s6.caption:=Fields[6].fieldname;
                  EmbroiderSend_print.Q6.datafield:=Fields[6].fieldname;
                end;
              if  query2.Fieldcount>7 then
                begin
                  EmbroiderSend_print.s7.caption:=Fields[7].fieldname;
                  EmbroiderSend_print.Q7.datafield:=Fields[7].fieldname;
                end;
              if  query2.Fieldcount>8 then
                begin
                  EmbroiderSend_print.s8.caption:=Fields[8].fieldname;
                  EmbroiderSend_print.Q8.datafield:=Fields[8].fieldname;
                end;
              if  query2.Fieldcount>9 then
                begin
                  EmbroiderSend_print.s9.caption:=Fields[9].fieldname;
                  EmbroiderSend_print.Q9.datafield:=Fields[9].fieldname;
                end;
              if  query2.Fieldcount>10 then
                begin
                  EmbroiderSend_print.s10.caption:=Fields[10].fieldname;
                  EmbroiderSend_print.Q10.datafield:=Fields[10].fieldname;
                end;
              if  query2.Fieldcount>11 then
                begin
                  EmbroiderSend_print.s11.caption:=Fields[11].fieldname;
                  EmbroiderSend_print.Q11.datafield:=Fields[11].fieldname;
                end;
              if  query2.Fieldcount>12 then
                begin
                  EmbroiderSend_print.s12.caption:=Fields[12].fieldname;
                  EmbroiderSend_print.Q12.datafield:=Fields[12].fieldname;
                end;
              if  query2.Fieldcount>13 then
                begin
                  EmbroiderSend_print.s13.caption:=Fields[13].fieldname;
                  EmbroiderSend_print.Q13.datafield:=Fields[13].fieldname;
                end;
              if  query2.Fieldcount>14 then
                begin
                  EmbroiderSend_print.s14.caption:=Fields[14].fieldname;
                  EmbroiderSend_print.Q14.datafield:=Fields[14].fieldname;
                end;
              if query2.Fieldcount>15 then
                begin
                  EmbroiderSend_print.s15.caption:=Fields[15].fieldname;
                  EmbroiderSend_print.Q15.datafield:=Fields[15].fieldname;
                end;
              if  query2.Fieldcount>16 then
                begin
                  EmbroiderSend_print.s16.caption:=Fields[16].fieldname;
                  EmbroiderSend_print.Q16.datafield:=Fields[16].fieldname;
                end;
              if  query2.Fieldcount>17 then
                begin
                  EmbroiderSend_print.s17.caption:=Fields[17].fieldname;
                  EmbroiderSend_print.Q17.datafield:=Fields[17].fieldname;
                end;
              if  query2.Fieldcount>18 then
                begin
                  EmbroiderSend_print.s18.caption:=Fields[18].fieldname;
                  EmbroiderSend_print.Q18.datafield:=Fields[18].fieldname;
                end;
              if  query2.Fieldcount>19 then
                begin
                  EmbroiderSend_print.s19.caption:=Fields[19].fieldname;
                  EmbroiderSend_print.Q19.datafield:=Fields[19].fieldname;
                end;  
              if  query2.Fieldcount>20 then
                begin
                  EmbroiderSend_print.s20.caption:=Fields[20].fieldname;
                  EmbroiderSend_print.Q20.datafield:=Fields[20].fieldname;
                end;
            END;
          EmbroiderSend_Print.quickrep1.preview;
          EmbroiderSend_Print.free;
          DXBW.Next;
        end;
    end;
end;

procedure TEmbroiderSend.FormDestroy(Sender: TObject);
begin
EmbroiderSend:=nil;
end;

procedure TEmbroiderSend.DBGridEh1EditButtonClick(Sender: TObject);
begin
  if DXBW.recordcount>0 then
  begin
    EmbroiderSend_ZS:=TEmbroiderSend_ZS.create(self);
    EmbroiderSend_ZS.show;
  end;
end;

end.
