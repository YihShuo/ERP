unit Prodsend1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBTables, DB, Buttons, StdCtrls, Grids, DBGrids, ExtCtrls, Math,
  dateutils,ehlibBDE, GridsEh, DBGridEh;

type
  TProdsend = class(TForm)
    Panel2: TPanel;
    DBGrid3: TDBGridEh;
    DBGrid1: TDBGridEh;
    Panel3: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    CBX2: TComboBox;
    CBX3: TComboBox;
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
    Query1: TQuery;
    DS1: TDataSource;
    SpecMas: TQuery;
    UpSpecMas: TUpdateSQL;
    DS3: TDataSource;
    OrdSize: TQuery;
    Prodsendmas: TQuery;
    DSMas: TDataSource;
    UpdateSQL1: TUpdateSQL;
    DBGrid2: TDBGridEh;
    ProdDetail: TQuery;
    DSDetail: TDataSource;
    UpdateSQL2: TUpdateSQL;
    Edit3: TEdit;
    OrdSizeDDBH: TStringField;
    OrdSizeCC: TStringField;
    OrdSizeDDCC: TStringField;
    OrdSizeBOMCC: TStringField;
    OrdSizeGJCC: TStringField;
    OrdSizequantity: TIntegerField;
    OrdSizeCUTCC: TStringField;
    Edit2: TEdit;
    SpecMasZLBH: TStringField;
    SpecMasDDBH: TStringField;
    SpecMasQty: TIntegerField;
    SpecMasXieXing: TStringField;
    SpecMasKFJC: TStringField;
    SpecMasSheHao: TStringField;
    SpecMasArticle: TStringField;
    SpecMasShipDate: TDateTimeField;
    SpecMasXXGB: TStringField;
    SpecMasXieMing: TStringField;
    SpecMasDDGB: TStringField;
    SpecMasXTMH: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure BB1Click(Sender: TObject);
    procedure BB7Click(Sender: TObject);
    procedure bbt6Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpecMasAfterScroll(DataSet: TDataSet);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  a,b,c,d:string;
  Prodsend: TProdsend;
  sdate,edate:Tdate;
  Q,R:integer;

implementation

uses ProdSend_Print1, ProdSend_LeanP1, main1;

{$R *.dfm}

procedure TProdsend.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if SpecMas.requestlive  then
  begin
    messagedlg('You have to save data  first.',mtwarning,[mbyes],0);
    action:=canone;
  end
  else
    action:=cafree;
end;

procedure TProdsend.Button1Click(Sender: TObject);
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

with SpecMas do
  begin
    active:=false;
    sql.Clear;
    sql.add('select distinct ZLZL.ZLBH,ZLZL.DDBH,DDZL.Pairs as Qty,DDZL.XieXing,KFZL.KFJC,');
    sql.add('DDZL.SheHao,DDZL.Article,DDZL.ShipDate,XXZL.CCGB as XXGB,XXZL.XieMing, DDZL.CCGB as DDGB,XXZL.XTMH');
    sql.add('from SCZL');
    sql.add('left join zlzl  on ZLZL.ZLBH=SCZL.SCBH');
    sql.add('left join DDZL  on ZLZL.DDBH=DDZL.DDBH ');
    sql.add('left join KFZL on KFZl.KFDH=DDZl.KHBH ') ;
    sql.add('left join XXZL  on DDZL.XieXing=XXZL.XieXing and DDZL.SheHao=XXZL.SheHao');
    sql.Add('where ZLZL.ZLBH like ');
    sql.add(''''+edit1.Text+'%'+'''');
    sql.add('and SCZL.SCBH=SCZl.ZLBH ');
    sql.add('and  KFZL.KFJC like');
    sql.add(''''+edit2.Text+'%'+'''');
    sql.add('and DDZL.ShipDate>=');
    sql.add(''''+formatdatetime('yyyy/MM/dd',sdate)+'''');
    sql.add('and DDZL.shipdate<='+''''+formatdatetime('yyyy/MM/dd',edate)+'''');
    //sql.add('and DDZL.DDZT='+''''+'Y'+'''');
    sql.add('and DDZL.GSBH='+''''+main.edit2.Text+'''');
    sql.add('order by ZLZL.ZLBH');
    active:=true;
  end;    

panel3.Visible:=false;
end;

procedure TProdsend.BB1Click(Sender: TObject);
begin
panel3.Visible:=true;
edit1.SetFocus;

end;

procedure TProdsend.BB7Click(Sender: TObject);
begin
close;
end;

procedure TProdsend.bbt6Click(Sender: TObject);
var
s,e,f,p :string;
i,j:integer;
k,l,m,n:word;

begin

p:=inputbox('Key in Pairs.','Pairs:','12');
try
  Q:=strtoint(p);
except
  messagedlg('Pairs is not right.',mterror,[mbOK],0);
  abort;
end;   
p:=inputbox('Key in order number.','Number:','1');
try
  R:=strtoint(p);
except
  messagedlg('Order is not right.',mterror,[mbOK],0);
  abort;
end;

edit3.Text:=inttostr(SpecMas.fieldbyname('Qty').Value);
if r=1 then
  begin
    with ProdDetail do   //直接取訂單值
      begin
        active:=false;
        OrdSize.First;
        active:=false;
        sql.Clear;
        sql.add('select ZLZL.ZLBH,ZLZL.ZLBH as PZLBH,XXZL.YSSM,XXZL.XieMing,XXZL.DAOMH,DDZL.Pairs as Qty');
        while not OrdSize.Eof do
          begin
           // s:=OrdSize.fieldbyname('DDCC').Value;
            e:=Ordsize.fieldbyname('DDCC').Value;
            f:=e+'/'+Ordsize.fieldbyname('CUTCC').Value;
            sql.add(',max(case  when DDZLS.CC='+''''+e+'''');
            sql.add(' and DDZLS.Quantity<>'+''''+'0'+''''+' then DDZLS.Quantity else '+''''+''+''''+' end) as '+''''+f+'''');
            Ordsize.Next;
          end;
        sql.add('from DDZLS ');
        sql.Add('left join DDZL on DDZL.DDBH=DDZLS.DDBH');
        sql.add('left join ZLZL on ZLZL.DDBH=DDZL.DDBH');
        sql.add('left join XXZL on XXZL.XieXing=DDZL.XieXing and XXZL.SheHao=DDZL.SheHao');
        sql.add('left join XXZLS3  on  XXZLS3.XieXing=:XieXing and DDZLS.CC='+c);
        sql.add('left join XXGJS on XXGJS.XieXing=:XieXing and GJLB='+''''+'100'+'''');
        sql.add(' and XXGJS.XXCC='+d);
        sql.add('where DDZLS.DDBH=:DDBH');
        sql.add('and DDZLS.quantity<>0');
        sql.add('group by ZLZL.ZLBH,XXZL.YSSM,XXZL.XieMing,XXZL.DAOMH,DDZL.Pairs');
        active:=true;
      end;
  end
    else
      begin
        with ProdSendMas do        //取訂單值
          begin
            OrdSize.First;
            active:=false;
            sql.Clear;
            sql.add('select ZLZL.ZLBH,ZLZL.ZLBH as PZLBH,XXZL.YSSM,XXZL.XieMing,XXZL.DAOMH,DDZL.Pairs as Qty');
            while not OrdSize.Eof do
              begin
               e:=Ordsize.fieldbyname('DDCC').Value;
               f:=e+'/'+Ordsize.fieldbyname('CUTCC').Value;
               sql.add(',Max(case  when DDZLS.CC='+''''+e+'''');
               sql.add(' and DDZLS.Quantity<>'+''''+'0'+''''+' then DDZLS.Quantity else '+''''+''+''''+' end) as '+''''+f+'''');
               Ordsize.Next;
              end;
            sql.add('from DDZLS ');
            sql.Add('left join DDZL on DDZL.DDBH=DDZLS.DDBH');
            sql.add('left join ZLZL on ZLZL.DDBH=DDZL.DDBH');
            sql.add('left join XXZL on XXZL.XieXing=DDZL.XieXing and XXZL.SheHao=DDZL.SheHao');
            sql.add('left join XXZLS3  on  XXZLS3.XieXing=:XieXing and DDZLS.CC='+c);
            sql.add('left join XXGJS on XXGJS.XieXing=:XieXing and GJLB='+''''+'100'+'''');
            sql.add(' and XXGJS.XXCC='+d);
            sql.add('where DDZLS.DDBH=:DDBH');
            sql.add('group by ZLZL.ZLBH,XXZL.YSSM,XXZL.XieMing,XXZL.DAOMH,DDZL.Pairs');
            active:=true;
          end;
        with ProdDetail do       //做好取訂單值的載體 ,並計算每個分單的數量
          begin
            OrdSize.First;
            active:=false;
            sql.Clear;
            sql.add('select ZLZL.ZLBH,ZLZL.ZLBH as PZLBH,XXZL.YSSM,XXZL.XieMing,XXZL.DAOMH,DDZL.Pairs as Qty');
            while not OrdSize.Eof do
              begin
               e:=Ordsize.fieldbyname('DDCC').Value;
               f:=e+'/'+Ordsize.fieldbyname('CUTCC').Value;
               sql.add(',Max(case  when DDZLS.CC='+''''+e+'''');
               sql.add(' and DDZLS.Quantity<>'+''''+'0'+''''+' then DDZLS.Quantity else '+''''+''+''''+' end) as '+''''+f+'''');
               Ordsize.Next;
              end;
            sql.add('from DDZLS ');
            sql.Add('left join DDZL on DDZL.DDBH=DDZLS.DDBH');
            sql.add('left join ZLZL on ZLZL.DDBH=DDZL.DDBH');
            sql.add('left join XXZL on XXZL.XieXing=DDZL.XieXing and XXZL.SheHao=DDZL.SheHao');
            sql.add('left join XXZLS3  on  XXZLS3.XieXing=:XieXing and DDZLS.CC='+c);
            sql.add('left join XXGJS on XXGJS.XieXing=:XieXing and GJLB='+''''+'100'+'''');
            sql.add(' and XXGJS.XXCC='+d);                                
            sql.add('where DDZLS.DDBH=:DDBH');
            sql.add('group by ZLZL.ZLBH,XXZL.YSSM,XXZL.XieMing,XXZL.DAOMH,DDZL.Pairs');
            active:=true;
            //分單寫入表中
            delete;           {
            insert;
            fields[0].Value:=prodsendMas.Fields[0].Value;
            fields[1].Value:=prodsendMas.Fields[1].Value+'&1';
            fields[2].Value:=prodsendMas.Fields[2].Value;
            fields[3].Value:=prodsendMas.Fields[3].Value;
            fields[4].Value:=prodsendMas.Fields[4].Value;
            fields[5].Value:=0;
              for i:=6 to ProdsendMas.fieldcount-1 do
                begin
                  DivMod(ProdsendMas.Fields[i].Value,strtoint(edit2.Text)*10,m,n);
                  DivMod(n,10,k,l);

                  fields[i].value:=m+n;
                  fields[5].Value:=fields[5].value+m+n;
                end;             }
            for j:=1 to R do
              begin
                append;
                fields[0].Value:=prodsendMas.Fields[0].Value;
                fields[1].Value:=prodsendMas.Fields[1].Value+'&'+inttostr(j);
                fields[2].Value:=prodsendMas.Fields[2].Value;
                fields[3].Value:=prodsendMas.Fields[3].Value;
                fields[4].Value:=prodsendMas.Fields[4].Value;
                fields[5].Value:=0;
                  for i:=6 to ProdsendMas.fieldcount-1 do
                    begin
                      DivMod(ProdsendMas.Fields[i].Value,R*Q,m,n);
                      DivMod(n,Q,k,l);
                      if  j<=k then
                        begin
                          fields[i].value:=m*Q+Q;
                          fields[5].Value:=fields[5].value+fields[i].value;
                        end;
                      if j=(k+1) then
                        begin
                          fields[i].value:=m*Q+l;
                          fields[5].Value:=fields[5].value+fields[i].value;
                        end;
                      if j>(k+1) then
                        begin
                          fields[i].value:=m*Q;
                          fields[5].Value:=fields[5].value+fields[i].value;
                        end;
                    end;
              end;
          end;
      end;
DBGrid2.columns[0].width:=60;
DBGrid2.columns[1].width:=70;
DBGrid2.columns[2].width:=120;
DBGrid2.columns[3].width:=100;
DBGrid2.columns[4].width:=80;
DBGrid2.columns[5].width:=40;
for j:=7 to ProdDetail.fieldcount do
  begin
    DBGrid2.columns[j-1].width:=35;
  end;
try
ProdDetail.First;

if messagedlg('Cutting or Lean ?',mtinformation,[mbYes,mbNo],0)=mrYes then
  begin
    while not ProdDetail.Eof do
      begin
        ProdSend_Print:=TProdSend_Print.create(self);
        ProdSend_Print.quickrep1.prepare;
        ProdSend_Print.Qpage1.caption:=inttostr(ProdSend_Print.quickrep1.QRPrinter.pagecount-1);
        ProdSend_Print.quickrep1.preview;
        ProdSend_Print.free;
        ProdDetail.Next;
      end;
  end
  else
    begin
      ProdSend_LeanP:=TProdSend_LeanP.create(self);
      //ProdSend_LeanP.quickrep1.prepare;
      ProdSend_LeanP.quickrep1.preview;
      ProdSend_LeanP.free;
    end;
except
  showmessage('Have wrong.');
end;


end;

procedure TProdsend.FormCreate(Sender: TObject);
var i:integer;
begin{
with query1 do
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
  end;  }
end;

procedure TProdsend.SpecMasAfterScroll(DataSet: TDataSet);
begin
if SpecMas.RecordCount>0 then
  begin
    bbt6.enabled:=true;

    //找出訂單尺寸及斬刀尺寸的對應關係
    a:=SpecMas.fieldbyname('DDGB').value  ;
    b:=SpecMas.fieldbyname('XXGB').value;
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
      c:='XXZLS3.US_Size';
    end;
    if a='O' then
    begin
      a:='XXZLS3.OTH_Size as DDCC,';
      C:='XXZLS3.OTH_Size';
    end;
    if b='K' then
      b:='XXZLS3.UK_Size as BOMCC,';
      d:='XXZLS3.UK_Size';
    if b='J' then
    begin
      b:='XXZLS3.JPN_Size as BOMCC,';
      d:='XXZLS3.JPN_Size';
    end;
    if b='E' then
    begin
      b:='XXZLS3.EUR_Size as BOMCC,';
      d:='XXZLS3.EUR_Size';
    end;
    if b='F' then
    begin
      b:='XXZLS3.FRN_Size as BOMCC,';
      d:='XXZLS3.FRN_Size';
    end;
    if b='M' then
    begin
      b:='XXZLS3.MX_Size as BOMCC,';
      d:='XXZLS3.MX_Size';
    end;
    if b='U' then
    begin
      b:='XXZLS3.US_Size as BOMCC,';
      d:='XXZLS3.US_Size';
    end;
    if b='O' then
    begin
      b:='XXZLS3.OTH_Size as BOMCC,';
      d:='XXZLS3.OTH_Size';
    end;

   //尺寸明細
   with OrdSize do
     begin
       active:=false;
       sql.Clear;{//  判斷臨時表是否存在,否則刪除
       sql.add('  if object_id('+''''+'tempdb..#OrderSize'+''''+') is not null  ');
       sql.add('begin   drop table #OrderSize end   ');   }
       //訂單及工具尺寸
       sql.add('select DDZLs.DDBH,DDZLS.CC,DDZLs.Quantity, ');
       sql.add(a+b+'XXGJS.GJCC,case when GJCUT.GJCC is not null then  GJCUT.GJCC else ');
       sql.add('       (case when XXGJS.XXCC is not null then XXGJS.XXCC else '+d+' end) end as CUTCC');
       sql.add('from DDZLs ');
       sql.add('left join XXZLS3  on  XXZLS3.XieXing=:XieXing and DDZLS.CC='+c);
       sql.add('left join XXGJS on XXGJS.XieXing=:XieXing and GJLB='+''''+'100'+'''');
       sql.add(' and XXGJS.XXCC='+d);
       sql.add('left join (select * from XXGJS where XXGJS.XieXing=:XieXing and GJLB='+''''+'200'+'''');
       sql.add(') GJCUT on GJCUT.XXCC='+d);
       sql.add('where DDZLs.DDBH=:DDBH');
       sql.add('and DDZLs.Quantity<>0  ');
       {sql.add('update #OrderSize ');     //將斬刀尺寸轉入
       sql.add('set CUTCC=GJCC where CUTCC is null');
       sql.add('select * from #OrderSize');   }
       active:=true;
     end;
  end
  else
    bbt6.Enabled:=false;
end;

procedure TProdsend.FormDestroy(Sender: TObject);
begin
Prodsend:=nil;
end;

end.
