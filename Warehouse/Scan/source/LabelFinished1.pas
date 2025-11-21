unit LabelFinished1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, DBTables, Buttons, Grids, DBGrids, ExtCtrls,dateutils;

type
  TLabelFinished = class(TForm)     
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    Panel3: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
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
    bbt6: TBitBtn;
    DDZL: TQuery;
    DS1: TDataSource;
    Label1: TLabel;
    CBX2: TComboBox;
    Label7: TLabel;
    CBX3: TComboBox;
    TDDXXZL: TTable;
    QDDXXZL: TQuery;
    QSCSMRKS: TQuery;
    TSCLH: TTable;
    QSCLH: TQuery;
    QSCSMRK: TQuery;
    UpSCSMRK: TUpdateSQL;
    TSCSMRK: TTable;
    DataSource1: TDataSource;
    BBT7: TBitBtn;
    DDZLDDBH: TStringField;
    DDZLXieXing: TStringField;
    DDZLSheHao: TStringField;
    DDZLArticle: TStringField;
    DDZLPairs: TIntegerField;
    DDZLShipDate: TStringField;
    DDZLDDCC: TStringField;
    DDZLKHBH: TStringField;
    DDZLKHPO: TStringField;
    DDZLXieMing: TStringField;
    DDZLXXCC: TStringField;
    Panel4: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    TSCSMRKDDBH: TStringField;
    TSCSMRKCTNO: TStringField;
    TSCSMRKQty: TIntegerField;
    TSCSMRKUSERDate: TDateTimeField;
    TSCSMRKUSERID: TStringField;
    TSCSMRKYN: TStringField;
    QSCSMRKDDBH: TStringField;
    QSCSMRKCTNO: TStringField;
    QSCSMRKQty: TFloatField;
    QSCSMRKUSERDate: TDateTimeField;
    QSCSMRKUSERID: TStringField;
    QSCSMRKYN: TStringField;
    TSCSMRKS: TQuery;
    QSCSMRKRKCS: TIntegerField;
    QSCSMRKSDDBH: TStringField;
    QSCSMRKSCTNO: TStringField;
    QSCSMRKSXXCC: TStringField;
    QSCSMRKSLHLabel: TStringField;
    QSCSMRKSQty: TFloatField;
    UpSCSMRKS: TUpdateSQL;
    RKSDel: TTable;
    QSCSMRK2: TQuery;
    QSCSMCK: TQuery;
    TSCSMCK: TTable;
    DataSource2: TDataSource;
    UpSCSMRK2: TUpdateSQL;
    UpSCSMCK: TUpdateSQL;
    QSCSMRK2DDBH: TStringField;
    QSCSMRK2CTNO: TStringField;
    QSCSMRK2Qty: TFloatField;
    QSCSMRK2USERDate: TDateTimeField;
    QSCSMRK2USERID: TStringField;
    QSCSMRK2YN: TStringField;
    QSCSMRK2RKCS: TIntegerField;
    QSCSMCKDDBH: TStringField;
    QSCSMCKCTNO: TStringField;
    QSCSMCKUSERDate: TDateTimeField;
    QSCSMCKUSERID: TStringField;
    QSCSMCKYN: TStringField;
    QSCSMCKCKCS: TIntegerField;
    procedure Button1Click(Sender: TObject);
    procedure BB7Click(Sender: TObject);
    procedure BBT1Click(Sender: TObject);
    procedure BBT2Click(Sender: TObject);
    procedure BBT3Click(Sender: TObject);
    procedure BBT4Click(Sender: TObject);
    procedure bbt6Click(Sender: TObject);
    procedure BBT7Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  LabelFinished: TLabelFinished;
  sdate,edate:Tdate;
  LastTime:Ttime;

implementation

uses LabelFinished_Scan1, DM1, LabelFinished_Out1;


{$R *.dfm}

procedure TLabelFinished.Button1Click(Sender: TObject);
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
edate:=endofthemonth(sdate);

with DDZL do
  begin
    active:=false;
    sql.clear;
    sql.add('select * ');
    sql.add('from DDXXZL');
    sql.add('where DDBH like '+''''+edit1.text+'%'+'''');
    sql.add(' and XieMing like '+''''+'%'+edit2.Text+'%'+'''');
    sql.add(' and KHBH like '+''''+edit3.Text+'%'+'''');
    sql.add('and ShipDate between ');
    sql.add(''''+formatdatetime('yyyy/mm/dd',sdate)+'''');
    sql.add(' and '+''''+formatdatetime('yyyy/mm/dd',edate)+'''');  
    sql.add('order by DDBH');
    active:=true;
  end;
BBt1.Enabled:=true;
BBt2.Enabled:=true;
BBt3.Enabled:=true;
BBt4.Enabled:=true;

end;

procedure TLabelFinished.BB7Click(Sender: TObject);
begin
close;
end;

procedure TLabelFinished.BBT1Click(Sender: TObject);
begin
DDZL.First;
end;

procedure TLabelFinished.BBT2Click(Sender: TObject);
begin
DDZl.Prior;
end;

procedure TLabelFinished.BBT3Click(Sender: TObject);
begin
DDZL.Next;
end;

procedure TLabelFinished.BBT4Click(Sender: TObject);
begin
DDZL.Last;
end;

procedure TLabelFinished.bbt6Click(Sender: TObject);
begin
try
DDZL.Active:=false;
DM.DB.connected:=true;
if DM.DB.connected then
  begin
    with QDDXXZL do   //轉訂單表
      begin
        active:=false;
        sql.clear;
        sql.add('select DDZL.DDBH,DDZL.XieXing,DDZl.SheHao,DDZL.Article,');
        sql.add('DDZL.Pairs,convert(varchar,DDZL.shipdate,111) as ShipDate,');
        sql.add('DDZL.CCGB as DDCC,DDZL.KHBH,DDZL.KHPO,XXZl.XieMing,XXZl.CCGB as XXCC ');
        sql.add('from DDZL');
        sql.add('left join XXZL on XXZl.XieXing=DDZl.XieXing');
        sql.add(' and XXZL.SheHao=DDZl.SheHao');
        sql.add('left join ZLZL on ZLZL.ZLBH=DDZL.ZLBH ');
        sql.add('where  Convert(smalldatetime,convert(varchar,DDZL.ShipDate)) >= ');
        sql.add(''''+formatdatetime('yyyy/mm/dd',date-90)+'''');
        sql.add('order by DDZL.DDBH');
        active:=true;
      end;
    with TDDXXZL do
      begin
        active:=true;
        first;
        while not eof do
          begin
            delete;
           // next;
          end;
        while not QDDXXZL.Eof do
          begin
            insert;
            FieldByName('DDBH').value:=QDDXXZL.FieldByName('DDBH').value;
            FieldByName('XieXing').value:=QDDXXZL.FieldByName('XieXing').value;
            FieldByName('SheHao').value:=QDDXXZL.FieldByName('SheHao').value;
            FieldByName('Article').value:=QDDXXZL.FieldByName('Article').value;
            FieldByName('Pairs').value:=QDDXXZL.FieldByName('Pairs').value;
            FieldByName('ShipDate').value:=QDDXXZL.FieldByName('ShipDate').value;
            FieldByName('DDCC').value:=QDDXXZL.FieldByName('DDCC').value;
            FieldByName('KHBH').value:=QDDXXZL.FieldByName('KHBH').value;
            FieldByName('KHPO').value:=QDDXXZL.FieldByName('KHPO').value;
            FieldByName('XieMing').value:=QDDXXZL.FieldByName('XieMing').value;
            FieldByName('XXCC').value:=QDDXXZL.FieldByName('XXCC').value;
            post;
            QDDXXZL.Next;
          end;
      end;

    with QSCLH do   //轉SCLH表
      begin
        active:=false;
        sql.clear;
        sql.add('select SCLH.* from SCLH ');
        sql.add('left join DDZL on DDZL.DDBh=SCLH.DDBH ');
        sql.add('where Convert(smalldatetime,convert(varchar,DDZL.ShipDate)) >= ');
        sql.add(''''+formatdatetime('yyyy/mm/dd',date-90)+'''');
        sql.add('order by SCLH.DDBH');
        active:=true;
      end;
    with TSCLH do
      begin
        active:=true;
        first;
        while not eof do
          begin
            delete;
           // next;
          end;
        while not QSCLH.Eof do
          begin
            insert;
            FieldByName('DDBH').value:=QSCLH.FieldByName('DDBH').value;
            FieldByName('XXCC').value:=QSCLH.FieldByName('XXCC').value;
            FieldByName('LHLabel').value:=QSCLH.FieldByName('LHLabel').value;
            post;
            QSCLH.Next;
          end;
      end;
  end;
  DM.DB.connected:=false;
  showmessage('Succeed.');
except
  showmessage('Can not do it, try later.');
end;
end;

procedure TLabelFinished.BBT7Click(Sender: TObject);
var i:integer;
begin
try
DM.DB.connected:=true;
if DM.DB.connected then
  begin
    TSCSMRK.active:=true;   //掃描結果上傳
    TSCSMRK.first;
    QSCSMRK.active:=true;
    QSCSMRKS.active:=true;
    while not TSCSMRK.eof do       //轉入庫外箱資料
      begin
        if QSCSMRK.recordcount>0 then
          begin
            i:=QSCSMRK.fieldbyname('RKCS').Value;
            i:=i+1;
            QSCSMRK.Edit;
            QSCSMRK.FieldByName('RKCS').Value:=i;
            QSCSMRK.FieldByName('Qty').Value:=TSCSMRk.fieldbyname('Qty').value;
            QSCSMRK.FieldByName('YN').Value:='1';
            UpSCSMRK.Apply(ukmodify);
          end
          else
            begin
              i:=1;
              QSCSMRK.insert;
              QSCSMRK.FieldByName('DDBH').Value:=TSCSMRK.FieldByName('DDBH').Value;
              QSCSMRK.FieldByName('CTNO').Value:=TSCSMRK.FieldByName('CTNO').Value;
              QSCSMRK.FieldByName('Qty').Value:=TSCSMRK.FieldByName('Qty').Value;
              QSCSMRK.FieldByName('USERDate').Value:=TSCSMRK.FieldByName('USERDate').Value;
              QSCSMRK.FieldByName('YN').Value:='1';
              QSCSMRK.FieldByName('RKCS').Value:=i;
              UpSCSMRK.Apply(ukinsert);
            end;
        if QSCSMRKS.recordcount>0 then
          begin
            while not QSCSMRKS.Eof do
              begin
                UpSCSMRKS.Apply(ukdelete);
                QSCSMRKS.Delete;
                QSCSMRKS.first;
              end;
          end;
        TSCSMRKS.active:=true;
        if ((TSCSMRKS.recordcount>0) and (not TSCSMRKS.FieldByName('DDBH').IsNull)) then
          begin
            while not TSCSMRKS.eof do             //將外箱內的內盒標資料轉入數據庫
              begin
                QSCSMRKS.append;
                QSCSMRKS.FieldByName('DDBH').Value:=TSCSMRKS.FieldByName('DDBH').Value;
                QSCSMRKS.FieldByName('CTNO').Value:=TSCSMRKS.FieldByName('CTNO').Value;
                QSCSMRKS.FieldByName('XXCC').Value:=TSCSMRKS.FieldByName('XXCC').Value;
                QSCSMRKS.FieldByName('LHLabel').Value:=TSCSMRKS.FieldByName('LHLabel').Value;
                QSCSMRKS.FieldByName('Qty').Value:=TSCSMRKS.FieldByName('Qty').Value;
                UpSCSMRKS.Apply(ukinsert);
                TSCSMRKS.next;
              end;
          end;
        TSCSMRK.delete;
        TSCSMRK.First;
      end;
    RKSDel.Active:=true;
    RKSDel.First;
    while not RKSDel.eof do
      begin
        RKSDel.first;
        RKSDel.Delete;
      end;
  end;
  RKSDel.active:=false;
  QSCSMRKS.active:=false;
  TSCSMRKS.active:=false; 
  TSCSMRK.active:=false; 
  QSCSMRK.active:=false;

   //轉翻箱外箱資料入數據庫
   TSCSMCK.Active:=true;
   QSCSMRK2.Active:=true;
   QSCSMCK.Active:=true;
   if TSCSMCK.recordcount>0 then
     begin
       with TSCSMCK do
         begin
           while not eof do
             begin
               first;
               if QSCSMCK.recordcount=0 then
                 begin
                   QSCSMCK.insert;
                   QSCSMCK.fieldbyname('DDBH').Value:=fieldbyname('DDBH').Value;
                   QSCSMCK.fieldbyname('CTNO').Value:=fieldbyname('CTNO').Value;
                   QSCSMCK.fieldbyname('USERDate').Value:=fieldbyname('USERDate').Value;
                   QSCSMCK.fieldbyname('USERID').Value:=fieldbyname('USERID').Value;
                   QSCSMCK.fieldbyname('YN').Value:='1';
                   QSCSMCK.fieldbyname('CKCS').Value:=1;
                   QSCSMCK.post;
                   UpSCSMCK.Apply(ukinsert);
                 end
                 else
                   begin
                     QSCSMCK.Edit;
                     i:=QSCSMCK.fieldbyname('CKCS').Value;
                     i:=i+1;
                     QSCSMCK.fieldbyname('CKCS').Value:=i;
                     QSCSMCK.fieldbyname('USERDate').Value:=fieldbyname('USERDate').Value;
                     QSCSMCK.post;
                     UpSCSMCK.apply(ukmodify);
                   end;
               if QSCSMRK2.recordcount<>0 then
                 begin
                   QSCSMRK2.edit;
                   QSCSMRK2.fieldbyname('YN').Value:='2';
                   QSCSMRK2.post;
                   UpSCSMRK2.apply(ukmodify);
                 end;
               delete;
             end;
         end;
     end;
   TSCSMCK.Active:=false;
   QSCSMRK2.Active:=false;
   QSCSMCK.Active:=false;


  DM.DB.connected:=false;
  showmessage('Succeed.');
except
  showmessage('Can not do it, try later.');
end;

end;

procedure TLabelFinished.BitBtn1Click(Sender: TObject);
begin
    LabelFinished_Scan:=TLabelFinished_Scan.create(self);
    LabelFinished_Scan.show;
end;

procedure TLabelFinished.BitBtn2Click(Sender: TObject);
begin
    LabelFinished_Out:=TLabelFinished_Out.create(self);
    LabelFinished_Out.show;
end;

end.
