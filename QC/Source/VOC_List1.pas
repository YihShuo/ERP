unit VOC_List1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Buttons, DBTables, StdCtrls, Grids, DBGrids, ExtCtrls,comobj,
  ComCtrls, GridsEh, DBGridEh,dateutils,math;

type
  TVOC_List = class(TForm)
    Panel2: TPanel;
    Panel3: TPanel;
    Button1: TButton;
    DS1: TDataSource;
    Query1: TQuery;
    UpSQL1: TUpdateSQL;
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
    DBGridEh1: TDBGridEh;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    Query2: TQuery;
    Label1: TLabel;
    Label2: TLabel;
    bbt7: TBitBtn;
    Query3: TQuery;
    Query4: TQuery;
    Query5: TQuery;
    Query6: TQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BB1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BB2Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure BB7Click(Sender: TObject);
    procedure BBT1Click(Sender: TObject);
    procedure BBT2Click(Sender: TObject);
    procedure BBT3Click(Sender: TObject);
    procedure BBT4Click(Sender: TObject);
    procedure bbt6Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure BB3Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure bbt7Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  VOC_List: TVOC_List;
  sdate,edate,ndate:TDate;

implementation

uses main1, VOC_Input_Dep1, VOC_Chart1;

{$R *.dfm}

procedure TVOC_List.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if query1.requestlive then
    begin
      messagedlg('You have to save data first.',mtwarning,[mbyes],0);
      action:=canone;
    end
  else
    with query2 do
      begin
        active:=false;
        sql.Clear;
        sql.add('if object_id(N'+''''+'tempdb..#QIPVOC'+''''+',N''U'') is not null');
        sql.add(' begin drop table #QIPVOC end;');
        ExecSQL;
      end;
   action:=Cafree;
end;

procedure TVOC_List.BB1Click(Sender: TObject);
begin
panel3.Visible:=true;
end;

procedure TVOC_List.FormCreate(Sender: TObject);
begin
  query1.Active:=false;
  //DateTimePicker1.DateTime := now;

  with query2 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select getdate() as NDate ');
    active:=true;
    NDate:= query2.fieldbyname('NDate').Value;

    //-------------------------------
    //----------------

    //-------------------------------
  end;
 
end;

procedure TVOC_List.BB2Click(Sender: TObject);
begin
with query1 do
  begin
    cachedupdates:=true;
    requestlive:=true;
    Insert;
  end;
bb5.enabled:=true;
bb6.enabled:=true;
end;

procedure TVOC_List.BB4Click(Sender: TObject);
begin
with query1 do
  begin
    cachedupdates:=true;
    requestlive:=true;
    query1.edit;
  end;
bb5.enabled:=true;
bb6.enabled:=true;
end;

procedure TVOC_List.BB5Click(Sender: TObject);
var i:integer;
begin
try
    query1.first;
    for i:=1 to query1.RecordCount do
      begin
        case query1.updatestatus of
          usinserted:
            begin
              //if query1.fieldbyname('DepNo').isnull then
              //  begin
              //    query1.delete;
              //  end
              //else
              //  begin
                  query1.edit;
                  //query1.FieldByName('YYBH').Value:=Uppercase(query1.FieldByName('YYBH').Value);
                  //query1.FieldByName('YWSM').Value:=Uppercase(query1.FieldByName('YWSM').Value);
                  //query1.FieldByName('GSBH').Value :=main.Edit2.text;
                  //query1.FieldByName('DepNo').Value:=Edit1.Text;
                  //query1.FieldByName('ProdDate').Value:=DateTimePicker1.DateTime;
                  //query1.FieldByName('ProdDate').Value:=formatdatetime('yyyy/MM/dd',DateTimePicker1.Date);
                  query1.FieldByName('USERDATE').Value:=date;
                  query1.FieldByName('USERID').Value:=main.edit1.text;
                  Query1.FieldByName('YN').Value:='2';
                  upsql1.apply(ukinsert);
              //  end;
            end;
          usmodified:
             begin
               if query1.fieldbyname('YN').value='0' then
                 begin
                   //if  query1.fieldbyname('USERDATE').value>=(date-3) then
                   //  begin
                       upsql1.Apply(ukdelete);
                   //  end
                   //else
                   //  begin
                   //    showmessage(query1.FieldByName('YWSM').Value+' >3 days,can not delete.');
                   //  end;
                 end
               else
                 begin
                   //if query1.fieldbyname('USERDATE').value>=(date-10) then
                   //  begin
                       query1.edit;
                   //    query1.FieldByName('YWSM').Value:=Uppercase(query1.FieldByName('YWSM').Value);
                       // query1.FieldByName('ZWSM').Value:=Uppercase(query1.FieldByName('ZWSM').Value);
                       query1.FieldByName('USERDATE').Value:=date;
                       query1.FieldByName('USERID').Value:=main.edit1.text;
                       upsql1.apply(ukmodify);
                   //  end
                   //else
                   //  begin
                   //    showmessage(query1.FieldByName('YWSM').Value+' >10 days,can not modify.');
                   //  end;
                 end;
             end;
        end;
        query1.next;
      end;
    query1.active:=false;
    query1.cachedupdates:=false;
    query1.requestlive:=false;
    query1.active:=true;
    bb5.enabled:=false;
    bb6.enabled:=false;
except
  Messagedlg('Have wrong, can not save!',mtwarning,[mbyes],0);
end;

end;

//[query] ======================================================================
procedure TVOC_List.Button1Click(Sender: TObject);
var y,m:word;
i,j,k,l:integer;
a,b,c,d:real;
tPrimer297:real;
tNCwhitetransparent:real;
tLatex:real;
tABwhitetransparent:real;
tMWaterbase:real;
tP311FT_6primer:real;
tA102:real;
tPU45311NT1:real;
tT6127T:real;
tA05W1A:real;
tWPL01:real;
tWH03:real;

tHotmelt1438A,tHotmelt3173H,tRB13F:real;
tC237F, tAD752S, tA5, tA3, tAD5500, tHM401hotmelt, tA722, tA8602:real;

aa,bb,cc:string;

begin

//取日期範圍 -------------------------------------------------------------------
if (ComboBox1.text='')or (ComboBox2.text='')  then
  begin
    showmessage('You have to select the year and month first.');
    abort;
  end;
y:=strtoint(ComboBox1.Text);
m:=strtoint(ComboBox2.Text);

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

//------------- 檢查 pairs 沒輸入
with Query2 do
  begin
    //-------------------------
    active:=false;
    sql.clear;
    sql.add('select top 1');
    sql.add('       qipvoc.*,bdepartment.depname');
    sql.add('from QIPVOC');
    sql.add('left join bdepartment on bdepartment.id = qipvoc.depno');
    sql.add('where (QIPVOC.ProdDate is not null )');
    sql.add('       and');
    sql.add('       convert(smalldatetime,convert(varchar,QIPVOC.ProdDate,111)) between ');
    sql.add('      '''+formatdatetime('yyyy/MM/dd',sdate)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',edate)+'''');
    sql.add('order by qipvoc.pairs') ;
    //MEMO1.TEXT:=SQL.TEXT;
    active:=true;
  end;

if query2.RecordCount = 0 then
begin
  Showmessage('No Data');
  abort;
end;
if Query2.FieldByName('Pairs').IsNull then
   begin
     aa:= Query2.FieldByName('DepNo').value;
     bb:= formatdatetime('yyyy/MM/dd',Query2.FieldByName('Proddate').Value);
     cc:= Query2.FieldByName('depName').Value;
     showmessage('    [Message]:Data Worng!.....'+#13+#13+'    [DepNo]=>'+aa+#13+'    [ProdDate]=>'+bb+#13+'    [DepName]=>'+cc+#13+#13+'    [Pairs]=> empty ==>wrong !!'+#13+#13+'Please info production people kin-in Pairs data!!');
     // showmessage('DepNo=>'+Query2.FieldByName('DepNo')+#13+'ProdDate=>'+formatdatetime('yyyy/MM/dd',)+Query2.FieldByName('Proddate')+#13+'Production people kin-in data wrong:Pairs is empty.!!');
      abort
   end;

if Query2.FieldByName('Pairs').value=0 then
   begin
     aa:= Query2.FieldByName('DepNo').value;
     bb:= formatdatetime('yyyy/MM/dd',Query2.FieldByName('Proddate').Value);
     cc:= Query2.FieldByName('depName').Value;
     showmessage('    [Message]:Data Worng!.....'+#13+#13+'    [DepNo]=>'+aa+#13+'    [ProdDate]=>'+bb+#13+'    [DepName]=>'+cc+#13+#13+'    [Pairs]=> 0 ==>wrong !!'+#13+#13+'Please info production people kin-in Pairs data!!');
     // showmessage('DepNo=>'+Query2.FieldByName('DepNo')+#13+'ProdDate=>'+formatdatetime('yyyy/MM/dd',)+Query2.FieldByName('Proddate')+#13+'Production people kin-in data wrong:Pairs is empty.!!');
      abort
   end;

//[將user每日建立的膠水用量.依BOM表.轉數量至暫存檔]-----------------------------
with Query2 do
  begin
    //-------------------------
    active:=false;
    sql.clear;
    sql.add('if object_id(N'+''''+'tempdb..#QIPVOC'+''''+',N''U'') is not null');
    sql.add(' begin drop table #QIPVOC end;');
    sql.add(' create table #QIPVOC  ');
    sql.add('(');
	  sql.add('[DepNo] [varchar](14) COLLATE Chinese_Taiwan_Stroke_CI_AS NULL,');
	  sql.add('[ProdDate] [smalldatetime] NULL,');
	  sql.add('[Pairs] [numeric](10, 0) NULL,');
	  sql.add('[PU45311NT1] [numeric](6, 3) NULL,');
	  sql.add('[WPL01] [numeric](6, 3) NULL,');
	  sql.add('[WH03] [numeric](6, 3) NULL,');
	  sql.add('[T6127T] [numeric](6, 3) NULL,');
	  sql.add('[Primer297] [numeric](6, 3) NULL,');
	  sql.add('[P311FT_6primer] [numeric](6, 3) NULL,');
	  sql.add('[Hotmelt1438A] [numeric](6, 3) NULL,');
	  sql.add('[Hotmelt3173H] [numeric](6, 3) NULL,');
	  sql.add('[NCwhitetransparent] [numeric](6, 3) NULL,');
	  sql.add('[MWaterbase] [numeric](6, 3) NULL,');
	  sql.add('[Latex] [numeric](6, 3) NULL,');
	  sql.add('[A102] [numeric](6, 3) NULL,');
	  sql.add('[ABwhitetransparent] [numeric](6, 3) NULL,');
	  sql.add('[RB13F] [numeric](6, 3) NULL,');
	  sql.add('[C237F] [numeric](6, 3) NULL,');
	  sql.add('[AD752S] [numeric](6, 3) NULL,');
	  sql.add('[A5] [numeric](6, 3) NULL,');
	  sql.add('[A3] [numeric](6, 3) NULL,');
	  sql.add('[AD5500] [numeric](6, 3) NULL,');
	  sql.add('[A05W1A] [numeric](6, 3) NULL,');
	  sql.add('[HM401hotmelt] [numeric](6, 3) NULL,');
	  sql.add('[A722] [numeric](6, 3) NULL,');
    sql.add('[A8602] [numeric](6, 3) NULL,');
	  sql.add('[USERID] [varchar](20) COLLATE Chinese_Taiwan_Stroke_CI_AS NULL,');
	  sql.add('[USERDATE] [smalldatetime] NULL,');
	  sql.add('[YN] [varchar](1) COLLATE Chinese_Taiwan_Stroke_CI_AS NULL');
    sql.add(') ON [PRIMARY]');

    ExecSQL;

    //-------------------------
    active:=false;
    sql.clear;
    sql.Add('select ');
    sql.add('        DepNo');
    sql.add('       , ProdDate');
    sql.add('       , sum(Pairs) Pairs ');
    //Compound
    sql.add('       , sum(HoanBao_C) HoanBao_C ');
    sql.add('       , sum(TalonThan_C) TalonThan_C ');
    sql.add('       , sum(LatexTrang_C) LatexTrang_C ');
    sql.add('       , sum(LatexTrong_C) LatexTrong_C ');
    sql.add('       , sum(A311FT6_C) A311FT6_C ');
    sql.add('       , sum(PU45_C)  PU45_C      ');
    sql.add('       , sum(A6127T_C) A6127T_C   ');
    sql.add('       , sum(WPL01_C) WPL01_C     ');
    sql.add('       , sum(KeoXang_C) KeoXang_C     ');
    //Single
    sql.add('       , sum(PU45311NT1) PU45311NT1    ');
    sql.add('       , sum(WPL01) WPL01   ');
    sql.add('       , sum(WH03) WH03   ');
    sql.add('       , sum(T6127T) T6127T   ');
    sql.add('       , sum(Primer297) Primer297  ');
    sql.add('       , sum(P311FT_6primer) P311FT_6primer ');
    sql.add('       , sum(Hotmelt1438A) Hotmelt1438A  ');
    sql.add('       , sum(Hotmelt3173H) Hotmelt3173H  ');
    sql.add('       , sum(NCwhitetransparent) NCwhitetransparent   ');
    sql.add('       , sum(MWaterbase) MWaterbase   ');
    sql.add('       , sum(Latex) Latex   ');
    sql.add('       , sum(A102) A102   ');
    sql.add('       , sum(ABwhitetransparent) ABwhitetransparent  ');
    sql.add('       , sum(RB13F) RB13F   ');
    sql.add('       , sum(C237F) C237F   ');
    sql.add('       , sum(AD752S) AD752S  ');
    sql.add('       , sum(A5) A5 ');
    sql.add('       , sum(A3) A3   ');
    sql.add('       , sum(AD5500) AD5500   ');
    sql.add('       , sum(A05W1A) A05W1A   ');
    sql.add('       , sum(HM401hotmelt) HM401hotmelt  ');
    sql.add('       , sum(A722) A722  ');
    sql.add('       , sum(A8602) A8602  ');

    sql.add('from QIPVOC');
    sql.add('where ');
    sql.add('      QIPVOC.ProdDate is not null');
    sql.add('      and');
    sql.add('       convert(smalldatetime,convert(varchar,QIPVOC.ProdDate,111)) between ');
    sql.add('      '''+formatdatetime('yyyy/MM/dd',sdate)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',edate)+'''');
    
    sql.add('group by DepNo,ProdDate');
    active:=true;
  end;


if Query2.recordcount>0 then
   begin
     Query2.first;
     for i:=1 to Query2.RecordCount do
       begin
         tPrimer297:=0;
         tNCwhitetransparent:=0;
         tLatex:=0;
         tABwhitetransparent:=0;
         tP311FT_6primer:=0;
         tA102:=0;
         tT6127T:=0;
         tA05W1A:=0;
         tWPL01:=0;
         tWH03:=0;

         tPU45311NT1:=0;
         tMWaterbase:=0;
         tHotmelt1438A:=0;
         tHotmelt3173H:=0;
         tRB13F:=0;
         tC237F:=0;
         tAD752S:=0;
         tA5:=0;
         tA3:=0;
         tAD5500:=0;
         tHM401hotmelt:=0;
         tA722:=0;
         tA8602:=0;

         a:=0;
         //Compound ------------------------------------------------------------
         //---- HoanBao_C
         if query2.FieldByName('HoanBao_C').Value > 0 then
           begin
             a:=query2.FieldByName('HoanBao_C').Value;
             //取voc含量比例
             with Query3 do
               begin
                 active:=false;
                 sql.clear;
                 sql.add('select ');
                 sql.add('       cmzls.CementC ');
                 sql.add('       ,cmzls.Cements');
                 sql.add('       ,(cmzls.ZhPercent/pp.tot) Zhpercent');
                 sql.add('       ,VOC');
                 sql.add('from cmzls');
                 sql.add('left join ( ');
                 sql.add('select cementc,sum(zhpercent) as tot');
                 sql.add('from cmzls');
                 sql.add('where cementc ='+''''+'Hoan Bao'+'''');
                 sql.add('group by cementc ) pp on pp.cementc=cmzls.cementc');
                 sql.add('where cmzls.cementc ='+''''+'Hoan Bao'+''''+' and VOC='+''''+'1'+'''');
                 active:=true;
               end;
             if Query3.recordcount>0 then
               begin
                 Query3.first;
                 for j:=1 to Query3.RecordCount do
                   begin
                     b:=0;
                     if query3.FieldByName('Cements').Value ='297' then
                       begin
                         //將有含voc的膠水數量資料寫入暫存檔
                         b:=query3.FieldByName('Zhpercent').Value;
                         tPrimer297:= tPrimer297 +  (a*b);

                       end;
                     Query3.next;
                   end;
               end
           end;

         //---TalonThan_C
         if query2.FieldByName('TalonThan_C').Value > 0 then
           begin
             //取膠水數量
             a:=query2.FieldByName('TalonThan_C').Value;
             //取voc膠水數量比例
             with Query3 do
               begin
                 active:=false;
                 sql.clear;
                 sql.add('select ');
                 sql.add('       cmzls.CementC ');
                 sql.add('       ,cmzls.Cements');
                 sql.add('       ,(cmzls.ZhPercent/pp.tot) Zhpercent');
                 sql.add('       ,VOC');
                 sql.add('from cmzls');
                 sql.add('left join ( ');
                 sql.add('     select cementc,sum(zhpercent) as tot');
                 sql.add('     from cmzls');
                 sql.add('     where cementc ='+''''+'Talon Than'+'''');
                 sql.add('     group by cementc ) pp on pp.cementc=cmzls.cementc');
                 sql.add('where cmzls.cementc ='+''''+'Talon Than'+''''+' and VOC='+''''+'1'+'''');
                 active:=true;
               end;

             if Query3.recordcount>0 then
               begin
                 Query3.first;
                 for j:=1 to Query3.RecordCount do
                   begin
                     b:=0;
                     if query3.FieldByName('Cements').Value ='NC' then
                       begin
                         //將有含voc的膠水數量資料寫入暫存檔=膠水數量*含VOC膠水百分比
                         b:=query3.FieldByName('Zhpercent').Value;
                         tNCwhitetransparent:= tNCwhitetransparent + (a*b);
                       end;

                     //還有第2階BOM //------------------------------------------
                     if query3.FieldByName('Cements').Value ='Hoan Bao' then
                       begin
                         b:= query3.FieldByName('Zhpercent').Value;
                         with Query5 do
                           begin
                             active:=false;
                             sql.clear;
                             sql.add('select ');
                             sql.add('       cmzls.CementC ');
                             sql.add('       ,cmzls.Cements');
                             sql.add('       ,(cmzls.ZhPercent/pp.tot) Zhpercent');
                             sql.add('       ,VOC');
                             sql.add('from cmzls');
                             sql.add('left join ( ');
                             sql.add('select cementc,sum(zhpercent) as tot');
                             sql.add('from cmzls');
                             sql.add('where cementc ='+''''+'Hoan Bao'+'''');
                             sql.add('group by cementc ) pp on pp.cementc=cmzls.cementc');
                             sql.add('where cmzls.cementc ='+''''+'Hoan Bao'+''''+' and VOC='+''''+'1'+'''');
                             active:=true;
                           end;

                         if Query5.recordcount>0 then
                           begin
                             Query5.first;
                             for k:=1 to Query5.RecordCount do
                               begin
                                 c:=0;
                                 if query5.FieldByName('Cements').Value ='297' then
                                   begin
                                     //將有含voc的膠水數量資料寫入暫存檔
                                     c:=query5.FieldByName('Zhpercent').Value;
                                     tPrimer297:= tPrimer297 +  (a*b*c);
                                   end;
                                 Query5.next;
                               end;
                           end;   
                       end;
                     //-------------------------------------------------------
                     Query3.next;
                   end;
               end

           end;

         //---LatexTrang_C
         if query2.FieldByName('LatexTrang_C').Value > 0 then
           begin
             a:=query2.FieldByName('LatexTrang_C').Value;
             //取voc含量比例
             with Query3 do
               begin
                 active:=false;
                 sql.clear;
                 sql.add('select ');
                 sql.add('       cmzls.CementC ');
                 sql.add('       ,cmzls.Cements');
                 sql.add('       ,(cmzls.ZhPercent/pp.tot) Zhpercent');
                 sql.add('       ,VOC');
                 sql.add('from cmzls');
                 sql.add('left join ( ');
                 sql.add('select cementc,sum(zhpercent) as tot');
                 sql.add('from cmzls');
                 sql.add('where cementc ='+''''+'Latex Trang'+'''');
                 sql.add('group by cementc ) pp on pp.cementc=cmzls.cementc');
                 sql.add('where cmzls.cementc ='+''''+'Latex Trang'+''''+' and VOC='+''''+'1'+'''');
                 active:=true;
               end;
             if Query3.recordcount>0 then
               begin
                 Query3.first;
                 for j:=1 to Query3.RecordCount do
                   begin
                     b:=0;
                     if query3.FieldByName('Cements').Value ='Latex Trang' then
                       begin
                         //將有含voc的膠水數量資料寫入暫存檔
                         b:=query3.FieldByName('Zhpercent').Value;
                         tLatex:= tLatex +  (a*b);
                       end;
                     b:=0;
                     if query3.FieldByName('Cements').Value ='AB' then
                       begin
                         //將有含voc的膠水數量資料寫入暫存檔
                         b:=query3.FieldByName('Zhpercent').Value;
                         tABwhitetransparent:= tABwhitetransparent +  (a*b);
                       end;
                     Query3.next;
                   end;
               end

           end;

         //--- LatexTrong_C
         if query2.FieldByName('LatexTrong_C').Value > 0 then
           begin
             a:=query2.FieldByName('LatexTrong_C').Value;
             //取voc含量比例
             with Query3 do
               begin
                 active:=false;
                 sql.clear;
                 sql.add('select ');
                 sql.add('       cmzls.CementC ');
                 sql.add('       ,cmzls.Cements');
                 sql.add('       ,(cmzls.ZhPercent/pp.tot) Zhpercent');
                 sql.add('       ,VOC');
                 sql.add('from cmzls');
                 sql.add('left join ( ');
                 sql.add('select cementc,sum(zhpercent) as tot');
                 sql.add('from cmzls');
                 sql.add('where cementc ='+''''+'Latex Trong'+'''');
                 sql.add('group by cementc ) pp on pp.cementc=cmzls.cementc');
                 sql.add('where cmzls.cementc ='+''''+'Latex Trong'+''''+' and VOC='+''''+'1'+'''');
                 active:=true;
               end;
             if Query3.recordcount>0 then
               begin
                 Query3.first;
                 for j:=1 to Query3.RecordCount do
                   begin
                     b:=0;
                     if query3.FieldByName('Cements').Value ='Latex Trong' then
                       begin
                         //將有含voc的膠水數量資料寫入暫存檔
                         b:=query3.FieldByName('Zhpercent').Value;
                         tLatex:= tLatex +  (a*b);
                       end;
                     b:=0;
                     if query3.FieldByName('Cements').Value ='AB trong' then
                       begin
                         //將有含voc的膠水數量資料寫入暫存檔
                         b:=query3.FieldByName('Zhpercent').Value;
                         tABwhitetransparent:= tABwhitetransparent +  (a*b);
                       end;
                     b:=0;
                     if query3.FieldByName('Cements').Value ='M' then
                       begin
                         //將有含voc的膠水數量資料寫入暫存檔
                         b:=query3.FieldByName('Zhpercent').Value;
                         tMWaterbase:= tMWaterbase +  (a*b);
                       end;
                     Query3.next;
                   end;
               end

           end;
         //-- A311FT6_C
         if query2.FieldByName('A311FT6_C').Value > 0 then
           begin
             a:=query2.FieldByName('A311FT6_C').Value;
             //取voc含量比例
             with Query3 do
               begin
                 active:=false;
                 sql.clear;
                 sql.add('select ');
                 sql.add('       cmzls.CementC ');
                 sql.add('       ,cmzls.Cements');
                 sql.add('       ,(cmzls.ZhPercent/pp.tot) Zhpercent');
                 sql.add('       ,VOC');
                 sql.add('from cmzls');
                 sql.add('left join ( ');
                 sql.add('select cementc,sum(zhpercent) as tot');
                 sql.add('from cmzls');
                 sql.add('where cementc ='+''''+'311FT6'+'''');
                 sql.add('group by cementc ) pp on pp.cementc=cmzls.cementc');
                 sql.add('where cmzls.cementc ='+''''+'311FT6'+''''+' and VOC='+''''+'1'+'''');
                 active:=true;
               end;
             if Query3.recordcount>0 then
               begin
                 Query3.first;
                 for j:=1 to Query3.RecordCount do
                   begin
                     b:=0;
                     if query3.FieldByName('Cements').Value ='311FT6' then
                       begin
                         //將有含voc的膠水數量資料寫入暫存檔
                         b:=query3.FieldByName('Zhpercent').Value;
                         tP311FT_6primer:= tP311FT_6primer +  (a*b);
                       end;
                     b:=0;
                     if query3.FieldByName('Cements').Value ='Keo 102' then
                       begin
                         //將有含voc的膠水數量資料寫入暫存檔
                         b:=query3.FieldByName('Zhpercent').Value;
                         tA102:= tA102 +  (a*b);
                       end;

                     Query3.next;
                   end;
               end

           end;
         //--- PU45_C
          if query2.FieldByName('PU45_C').Value > 0 then
           begin
             a:=query2.FieldByName('PU45_C').Value;
             //取voc含量比例
             with Query3 do
               begin
                 active:=false;
                 sql.clear;
                 sql.add('select ');
                 sql.add('       cmzls.CementC ');
                 sql.add('       ,cmzls.Cements');
                 sql.add('       ,(cmzls.ZhPercent/pp.tot) Zhpercent');
                 sql.add('       ,VOC');
                 sql.add('from cmzls');
                 sql.add('left join ( ');
                 sql.add('select cementc,sum(zhpercent) as tot');
                 sql.add('from cmzls');
                 sql.add('where cementc ='+''''+'PU-45'+'''');
                 sql.add('group by cementc ) pp on pp.cementc=cmzls.cementc');
                 sql.add('where cmzls.cementc ='+''''+'PU-45'+''''+' and VOC='+''''+'1'+'''');
                 active:=true;
               end;
             if Query3.recordcount>0 then
               begin
                 Query3.first;
                 for j:=1 to Query3.RecordCount do
                   begin
                     b:=0;
                     if query3.FieldByName('Cements').Value ='PU-45' then
                       begin
                         //將有含voc的膠水數量資料寫入暫存檔
                         b:=query3.FieldByName('Zhpercent').Value;
                         tPU45311NT1:= tPU45311NT1 +  (a*b);
                       end;
                     b:=0;
                     if query3.FieldByName('Cements').Value ='Keo 102' then
                       begin
                         //將有含voc的膠水數量資料寫入暫存檔
                         b:=query3.FieldByName('Zhpercent').Value;
                         tA102:= tA102 +  (a*b);
                       end;

                     Query3.next;
                   end;
               end

           end;
         //--- A6127T_C
         if query2.FieldByName('A6127T_C').Value > 0 then
           begin
             a:=query2.FieldByName('A6127T_C').Value;
             //取voc含量比例
             with Query3 do
               begin
                 active:=false;
                 sql.clear;
                 sql.add('select ');
                 sql.add('       cmzls.CementC ');
                 sql.add('       ,cmzls.Cements');
                 sql.add('       ,(cmzls.ZhPercent/pp.tot) Zhpercent');
                 sql.add('       ,VOC');
                 sql.add('from cmzls');
                 sql.add('left join ( ');
                 sql.add('select cementc,sum(zhpercent) as tot');
                 sql.add('from cmzls');
                 sql.add('where cementc ='+''''+'6127T'+'''');
                 sql.add('group by cementc ) pp on pp.cementc=cmzls.cementc');
                 sql.add('where cmzls.cementc ='+''''+'6127T'+''''+' and VOC='+''''+'1'+'''');
                 active:=true;
               end;
             if Query3.recordcount>0 then
               begin
                 Query3.first;
                 for j:=1 to Query3.RecordCount do
                   begin
                     b:=0;
                     if query3.FieldByName('Cements').Value ='6127T' then
                       begin
                         //將有含voc的膠水數量資料寫入暫存檔
                         b:=query3.FieldByName('Zhpercent').Value;
                         tT6127T:= tT6127T +  (a*b);
                       end;
                     b:=0;
                     if query3.FieldByName('Cements').Value ='05-W1A' then
                       begin
                         //將有含voc的膠水數量資料寫入暫存檔
                         b:=query3.FieldByName('Zhpercent').Value;
                         tA05W1A:= tA05W1A +  (a*b);
                       end;

                     Query3.next;
                   end;
               end

           end;
         //-- WPL01_C
         if query2.FieldByName('WPL01_C').Value > 0 then
           begin
             a:=query2.FieldByName('WPL01_C').Value;
             //取voc含量比例
             with Query3 do
               begin
                 active:=false;
                 sql.clear;
                 sql.add('select ');
                 sql.add('       cmzls.CementC ');
                 sql.add('       ,cmzls.Cements');
                 sql.add('       ,(cmzls.ZhPercent/pp.tot) Zhpercent');
                 sql.add('       ,VOC');
                 sql.add('from cmzls');
                 sql.add('left join ( ');
                 sql.add('select cementc,sum(zhpercent) as tot');
                 sql.add('from cmzls');
                 sql.add('where cementc ='+''''+'WPL-01'+'''');
                 sql.add('group by cementc ) pp on pp.cementc=cmzls.cementc');
                 sql.add('where cmzls.cementc ='+''''+'WPL-01'+''''+' and VOC='+''''+'1'+'''');
                 active:=true;
               end;
             if Query3.recordcount>0 then
               begin
                 Query3.first;
                 for j:=1 to Query3.RecordCount do
                   begin
                     b:=0;
                     if query3.FieldByName('Cements').Value ='WPL-01' then
                       begin
                         //將有含voc的膠水數量資料寫入暫存檔
                         b:=query3.FieldByName('Zhpercent').Value;
                         tWPL01:= tWPL01 +  (a*b);
                       end;
                     b:=0;
                     if query3.FieldByName('Cements').Value ='WH-03' then
                       begin
                         //將有含voc的膠水數量資料寫入暫存檔
                         b:=query3.FieldByName('Zhpercent').Value;
                         tWH03:= tWH03 +  (a*b);
                       end;

                     Query3.next;
                   end;
               end

           end;

          //-- KeoXang_C
         if query2.FieldByName('KeoXang_C').Value > 0 then
           begin
             //取膠水數量
             a:=query2.FieldByName('KeoXang_C').Value;
             //取voc膠水數量比例
             with Query3 do
               begin
                 active:=false;
                 sql.clear;
                 sql.add('select ');
                 sql.add('       cmzls.CementC ');
                 sql.add('       ,cmzls.Cements');
                 sql.add('       ,(cmzls.ZhPercent/pp.tot) Zhpercent');
                 sql.add('       ,VOC');
                 sql.add('from cmzls');
                 sql.add('left join ( ');
                 sql.add('     select cementc,sum(zhpercent) as tot');
                 sql.add('     from cmzls');
                 sql.add('     where cementc ='+''''+'Keo Xang'+'''');
                 sql.add('     group by cementc ) pp on pp.cementc=cmzls.cementc');
                 sql.add('where cmzls.cementc ='+''''+'Keo Xang'+''''+' and VOC='+''''+'1'+'''');
                 active:=true;
               end;

             if Query3.recordcount>0 then
               begin
                 Query3.first;
                 for j:=1 to Query3.RecordCount do
                   begin
                     b:=0;
                     if query3.FieldByName('Cements').Value ='297' then
                       begin
                         //將有含voc的膠水數量資料寫入暫存檔=膠水數量*含VOC膠水百分比
                         b:=query3.FieldByName('Zhpercent').Value;
                         tPrimer297:= tPrimer297 + (a*b);
                       end;

                     //還有第2階BOM //------------------------------------------
                     if query3.FieldByName('Cements').Value ='Talon Than' then
                       begin
                         b:= query3.FieldByName('Zhpercent').Value;
                         with Query5 do
                           begin
                             active:=false;
                             sql.clear;
                             sql.add('select ');
                             sql.add('       cmzls.CementC ');
                             sql.add('       ,cmzls.Cements');
                             sql.add('       ,(cmzls.ZhPercent/pp.tot) Zhpercent');
                             sql.add('       ,VOC');
                             sql.add('from cmzls');
                             sql.add('left join ( ');
                             sql.add('select cementc,sum(zhpercent) as tot');
                             sql.add('from cmzls');
                             sql.add('where cementc ='+''''+'Talon Than'+'''');
                             sql.add('group by cementc ) pp on pp.cementc=cmzls.cementc');
                             sql.add('where cmzls.cementc ='+''''+'Talon Than'+''''+' and VOC='+''''+'1'+'''');
                             active:=true;
                           end;

                         if Query5.recordcount>0 then
                           begin
                             Query5.first;
                             for k:=1 to Query5.RecordCount do
                               begin
                                 c:=0;
                                 if query5.FieldByName('Cements').Value ='NC' then
                                   begin
                                     //將有含voc的膠水數量資料寫入暫存檔
                                     c:=query5.FieldByName('Zhpercent').Value;
                                     tNCwhitetransparent:= tNCwhitetransparent +  (a*b*c);
                                   end;

                                 //還有第3階BOM //------------------------------
                                 c:=0;
                                 if query5.FieldByName('Cements').Value ='Hoan Bao' then
                                   begin;
                                     c:=query5.FieldByName('Zhpercent').Value;
                                     with Query6 do
                                       begin
                                         active:=false;
                                         sql.clear;
                                         sql.add('select ');
                                         sql.add('       cmzls.CementC ');
                                         sql.add('       ,cmzls.Cements');
                                         sql.add('       ,(cmzls.ZhPercent/pp.tot) Zhpercent');
                                         sql.add('       ,VOC');
                                         sql.add('from cmzls');
                                         sql.add('left join ( ');
                                         sql.add('select cementc,sum(zhpercent) as tot');
                                         sql.add('from cmzls');

                                         sql.add('where cementc ='+''''+'Hoan Bao'+'''');
                                         sql.add('group by cementc ) pp on pp.cementc=cmzls.cementc');
                                         sql.add('where cmzls.cementc ='+''''+'Hoan Bao'+''''+' and VOC='+''''+'1'+'''');
                                         active:=true;
                                       end;

                                     if Query6.recordcount>0 then
                                       begin
                                         Query6.first;
                                         for l:=1 to Query6.RecordCount do
                                           begin
                                             d:=0;
                                             if query6.FieldByName('Cements').Value ='297' then
                                               begin
                                                 //將有含voc的膠水數量資料寫入暫存檔
                                                 d:=query6.FieldByName('Zhpercent').Value;
                                                 //showmessage(floattostr(a));
                                                 //showmessage(floattostr(b));
                                                 //showmessage(floattostr(c));
                                                 //showmessage(floattostr(d));
                                                 //showmessage(floattostr(a*b*c*d));
                                                 tPrimer297:= tPrimer297 +  (a*b*c*d);
                                               end;
                                             Query6.next;
                                           end;
                                       end;
                                   end;
                                 //---------------------------------------------
                                 Query5.next;
                               end;
                           end;
                       end;
                     //-------------------------------------------------------
                     Query3.next;
                   end;
               end;
           end;

         //Single---------------------------------------------------------------
         if query2.FieldByName('PU45311NT1').Value > 0 then
           begin
             a:=query2.FieldByName('PU45311NT1').Value;
             tPU45311NT1:= tPU45311NT1 +  (a);
           end;

         if query2.FieldByName('WPL01').Value > 0 then
           begin
             a:=query2.FieldByName('WPL01').Value;
             tWPL01:= tWPL01 +  (a);
           end;

         if query2.FieldByName('WH03').Value > 0 then
           begin
             a:=query2.FieldByName('WH03').Value;
             tWH03:= tWH03 +  (a);
           end;

         if query2.FieldByName('T6127T').Value > 0 then
           begin
             a:=query2.FieldByName('T6127T').Value;
             tT6127T:= tT6127T +  (a);
           end;

         if query2.FieldByName('Primer297').Value > 0 then
           begin
             a:=query2.FieldByName('Primer297').Value;
             tPrimer297:= tPrimer297 +  (a);
           end;

         if query2.FieldByName('P311FT_6primer').Value > 0 then
           begin
             a:=query2.FieldByName('P311FT_6primer').Value;
             tP311FT_6primer:= tP311FT_6primer +  (a);
           end;

         if query2.FieldByName('Hotmelt1438A').Value > 0 then
           begin
             a:=query2.FieldByName('Hotmelt1438A').Value;
             tHotmelt1438A:= tHotmelt1438A +  (a);
           end;

         if query2.FieldByName('Hotmelt3173H').Value > 0 then
           begin
             a:=query2.FieldByName('Hotmelt3173H').Value;
             tHotmelt3173H:= tHotmelt3173H +  (a);
           end;

         if query2.FieldByName('NCwhitetransparent').Value > 0 then
           begin
             a:=query2.FieldByName('NCwhitetransparent').Value;
             tNCwhitetransparent:= tNCwhitetransparent +  (a);
           end;

         if query2.FieldByName('MWaterbase').Value > 0 then
           begin
             a:=query2.FieldByName('MWaterbase').Value;
             tMWaterbase:= tMWaterbase +  (a);
           end;

         if query2.FieldByName('Latex').Value > 0 then
           begin
             a:=query2.FieldByName('Latex').Value;
             tLatex:= tLatex +  (a);
           end;

         if query2.FieldByName('A102').Value > 0 then
           begin
             a:=query2.FieldByName('A102').Value;
             tA102:= tA102 +  (a);
           end;

         if query2.FieldByName('ABwhitetransparent').Value > 0 then
           begin
             a:=query2.FieldByName('ABwhitetransparent').Value;
             tABwhitetransparent:= tABwhitetransparent +  (a);
           end;

         if query2.FieldByName('RB13F').Value > 0 then
           begin
             a:=query2.FieldByName('RB13F').Value;
             tRB13F:= tRB13F +  (a);
           end;

         if query2.FieldByName('C237F').Value > 0 then
           begin
             a:=query2.FieldByName('C237F').Value;
             tC237F:= tC237F +  (a);
           end;

         if query2.FieldByName('AD752S').Value > 0 then
           begin
             a:=query2.FieldByName('AD752S').Value;
             tAD752S:= tAD752S +  (a);
           end;

         if query2.FieldByName('A5').Value > 0 then
           begin
             a:=query2.FieldByName('A5').Value;
             tA5:= tA5 +  (a);
           end;

         if query2.FieldByName('A3').Value > 0 then
           begin
             a:=query2.FieldByName('A3').Value;
             tA3:= tA3 +  (a);
           end;

          if query2.FieldByName('AD5500').Value > 0 then
           begin
             a:=query2.FieldByName('AD5500').Value;
             tAD5500:= tAD5500 +  (a);
           end;

          if query2.FieldByName('A05W1A').Value > 0 then
           begin
             a:=query2.FieldByName('A05W1A').Value;
             tA05W1A:= tA05W1A +  (a);
           end;

          if query2.FieldByName('HM401hotmelt').Value > 0 then
            begin
              a:=query2.FieldByName('HM401hotmelt').Value;
              tHM401hotmelt:= tHM401hotmelt +  (a);
            end;

          if query2.FieldByName('A722').Value > 0 then
            begin
              a:=query2.FieldByName('A722').Value;
              tA722:= tA722 +  (a);
            end;

          if query2.FieldByName('A8602').Value > 0 then
            begin
              a:=query2.FieldByName('A8602').Value;
              tA8602:= tA8602 +  (a);
            end;

         //--------------------------------------
         ////將有含voc的膠水數量資料寫入暫存檔 --
         with Query4 do
           begin
             active:=false;
             sql.clear;
             sql.add('insert into #QIPVOC');
             sql.add('(DepNo,ProdDate,Pairs,Primer297,NCwhitetransparent,Latex,ABwhitetransparent,MWaterbase,P311FT_6primer,A102,PU45311NT1,T6127T,A05W1A,WPL01,WH03,Hotmelt1438A,Hotmelt3173H,RB13F,C237F,AD752S,A5,A3,AD5500,HM401hotmelt,A722,A8602)');
             sql.add('values  ('+''''+query2.FieldByName('DepNo').Value+'''');
             sql.add('        ,'+''''+formatdatetime('yyyy/mm/dd',query2.FieldByName('ProdDate').Value)+'''');
             //sql.add('        ,'+''''+inttostr(query2.FieldByName('Pairs').value)+'''');
             sql.add('        ,'+''''+floattostr(query2.FieldByName('Pairs').value)+'''');
             sql.add('        ,'+''''+floattostr(roundto(tPrimer297,-3))+'''');
             sql.add('        ,'+''''+floattostr(roundto(tNCwhitetransparent,-3))+'''');
             sql.add('        ,'+''''+floattostr(roundto(tLatex,-3))+'''');
             sql.add('        ,'+''''+floattostr(roundto(tABwhitetransparent,-3))+'''');
             sql.add('        ,'+''''+floattostr(roundto(tMWaterbase,-3))+'''');
             sql.add('        ,'+''''+floattostr(roundto(tP311FT_6primer,-3))+'''');
             sql.add('        ,'+''''+floattostr(roundto(tA102,-3))+'''');
             sql.add('        ,'+''''+floattostr(roundto(tPU45311NT1,-3))+'''');
             sql.add('        ,'+''''+floattostr(roundto(tT6127T,-3))+'''');
             sql.add('        ,'+''''+floattostr(roundto(tA05W1A,-3))+'''');
             sql.add('        ,'+''''+floattostr(roundto(tWPL01,-3))+'''');
             sql.add('        ,'+''''+floattostr(roundto(tWH03,-3))+'''');
             sql.add('        ,'+''''+floattostr(roundto(tHotmelt1438A,-3))+'''');
             sql.add('        ,'+''''+floattostr(roundto(tHotmelt3173H,-3))+'''');
             sql.add('        ,'+''''+floattostr(roundto(tRB13F,-3))+'''');
             sql.add('        ,'+''''+floattostr(roundto(tC237F,-3))+'''');
             sql.add('        ,'+''''+floattostr(roundto(tAD752S,-3))+'''');
             sql.add('        ,'+''''+floattostr(roundto(tA5,-3))+'''');
             sql.add('        ,'+''''+floattostr(roundto(tA3,-3))+'''');
             sql.add('        ,'+''''+floattostr(roundto(tAD5500,-3))+'''');
             sql.add('        ,'+''''+floattostr(roundto(tHM401hotmelt,-3))+'''');
             sql.add('        ,'+''''+floattostr(roundto(tA722,-3))+'''');
             sql.add('        ,'+''''+floattostr(roundto(tA8602,-3))+'''');

             sql.add('        )');
             execsql;
           end;
         //--------------------------------------

         Query2.next;
       end;

   end;



//------------------------------------------------------------------------------

with Query1 do
  begin
    active:=false;
    sql.clear;
    sql.add(' if object_id('+''''+'tempdb..#aa'+''''+') is not null ');
    sql.add(' begin   drop table #aa end ');

    sql.add('select proddate');
    sql.add('       ,sum(PU45311NT1) as PU45311NT1');
    sql.add('       ,sum(WPL01) as WPL01');
    sql.add('       ,sum(wh03) as wh03');
    sql.add('       ,sum(T6127T) as T6127T');
    sql.add('       ,sum(Primer297) as Primer297');
    sql.add('       ,sum(P311FT_6primer) as P311FT_6primer');
    sql.add('       ,sum(Hotmelt1438A) as Hotmelt1438A');
    sql.add('       ,sum(Hotmelt3173H) as Hotmelt3173H');
    sql.add('       ,sum(NCwhitetransparent) as NCwhitetransparent');
    sql.add('       ,sum(MWaterbase) as MWaterbase');
    sql.add('       ,sum(Latex) as Latex');
    sql.add('       ,sum(A102) as A102');
    sql.add('       ,sum(ABwhitetransparent) as ABwhitetransparent');
    sql.add('       ,sum(RB13F) as RB13F');
    sql.add('       ,sum(C237F) as C237F');
    sql.add('       ,sum(AD752S) as AD752S');
    sql.add('       ,sum(A5) as A5');
    sql.add('       ,sum(A3) as A3');
    sql.add('       ,sum(AD5500) as AD5500');
    sql.add('       ,sum(A05W1A) as A05W1A');
    sql.add('       ,sum(HM401hotmelt) as HM401hotmelt');
    sql.add('       ,sum(A722) as A722');
    sql.add('       ,sum(A8602) as A8602');

    sql.add('into #aa');
    sql.add('from #QIPVOC');
    sql.add('where convert(smalldatetime,convert(varchar,#QIPVOC.ProdDate,111)) between ');
    sql.add('      '''+formatdatetime('yyyy/MM/dd',sdate)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',edate)+'''');
    sql.add('group by proddate');
    {
    sql.add('       ,PU45311NT1,WPL01,WH03,T6127T,Primer297,P311FT_6primer');
    sql.add('       ,Hotmelt1438A');
    sql.add('       ,Hotmelt3173H');
    sql.add('       ,NCwhitetransparent');
    sql.add('       ,MWaterbase');
    sql.add('       ,Latex');
    sql.add('       ,A102');
    sql.add('       ,ABwhitetransparent');
    sql.add('       ,RB13F');
    sql.add('       ,C237F');
    sql.add('       ,AD752S');
    sql.add('       ,A5');
    sql.add('       ,A3');
    sql.add('       ,AD5500');
    sql.add('       ,A05W1A');
    sql.add('       ,HM401hotmelt');
    sql.add('       ,A722');
    sql.add('       ,A8602');
    }
    execsql;
  end;

//註:SNO:為了排序用
//註:SNO1==>為了GROUP用

with Query1 do
  begin
    active:=false;
    sql.clear;
    sql.add(' if object_id('+''''+'tempdb..#bb'+''''+') is not null ');
    sql.add(' begin   drop table #bb end ');
    sql.add('select ddd.* ');
    sql.add('into #bb     ');
    sql.add('from (       ');

    sql.add('select ');
    sql.add('       1 as SNO');
    sql.add('       ,1 as SNO1');
    sql.add('       ,'+''''+'PU45311NT1'+''''+' as '+''''+'TFA Products'+'''');
    sql.add('       ,'+''''+'DAI DONG'+''''+' as '+''''+'Supplier Name'+'''');
    sql.add('       ,'+''''+'SBP'+''''+'   as '+''''+'Types'+'''');
    sql.add('       ,'+''''+'95'+''''+' as '+''''+'VOC Content %'+'''');
    for i:=1 to 31 do
    sql.add('       ,max(case datepart(day,proddate) when '+''''+inttostr(i)+''''+'  then PU45311NT1   end)   as '+''''+inttostr(i)+'''');
    //sql.add('       ,max(case datepart(day,proddate) when '+''''+inttostr(i)+''''+'  then 616.85  end)   as '+''''+inttostr(i)+'''');

    sql.add('from #aa');
    sql.add('union');
    sql.add('select ');
    sql.add('       2 as SNO');
    sql.add('       ,1 as SNO1');
    sql.add('       ,'+''''+'WPL01'+''''+' as '+''''+'TFA Products'+'''');
    sql.add('       ,'+''''+'DAI DONG'+''''+' as '+''''+'Supplier Name'+'''');
    sql.add('       ,'+''''+'SBP'+''''+'   as '+''''+'Types'+'''');
    sql.add('       ,'+''''+'0'+''''+' as '+''''+'VOC Content %'+'''');
    for i:=1 to 31 do
    sql.add('       ,max(case datepart(day,proddate) when '+''''+inttostr(i)+''''+'  then WPL01   end)   as '+''''+inttostr(i)+'''');
    sql.add('from #aa');
    sql.add('union');
    sql.add('select ');
    sql.add('       3 as SNO');
    sql.add('       ,1 as SNO1');
    sql.add('       ,'+''''+'WH-03'    +''''+' as '+''''+'TFA Products'+'''');
    sql.add('       ,'+''''+'DAI DONG'+''''+' as '+''''+'Supplier Name'+'''');
    sql.add('       ,'+''''+'WBH'+''''+'      as '+''''+'Types'+'''');
    sql.add('       ,'+''''+'15'+''''+'      as '+''''+'VOC Content %'+'''');
    for i:=1 to 31 do
    sql.add('       ,max(case datepart(day,proddate) when '+''''+inttostr(i)+''''+'  then WH03  end)   as '+''''+inttostr(i)+'''');
    sql.add('from #aa');
    sql.add('union');
    sql.add('select ');
    sql.add('       4 as SNO');
    sql.add('       ,1 as SNO1');
    sql.add('       ,'+''''+'6127T'    +''''+' as '+''''+'TFA Products'+'''');
    sql.add('       ,'+''''+'DAI DONG'+''''+' as '+''''+'Supplier Name'+'''');
    sql.add('       ,'+''''+'WBA'+''''+'      as '+''''+'Types'+'''');
    sql.add('       ,'+''''+'0'+''''+'      as '+''''+'VOC Content %'+'''');
    for i:=1 to 31 do
    sql.add('       ,max(case datepart(day,proddate) when '+''''+inttostr(i)+''''+'  then T6127T  end)   as '+''''+inttostr(i)+'''');
    sql.add('from #aa');
    sql.add('union');
    sql.add('select ');
    sql.add('       5 as SNO');
    sql.add('       ,1 as SNO1');
    sql.add('       ,'+''''+'Primer 297'    +''''+' as '+''''+'TFA Products'+'''');
    sql.add('       ,'+''''+'DAI DONG'+''''+' as '+''''+'Supplier Name'+'''');
    sql.add('       ,'+''''+'SBP'+''''+'      as '+''''+'Types'+'''');
    sql.add('       ,'+''''+'99'+''''+'      as '+''''+'VOC Content %'+'''');
    for i:=1 to 31 do
    sql.add('       ,max(case datepart(day,proddate) when '+''''+inttostr(i)+''''+'  then Primer297  end)   as '+''''+inttostr(i)+'''');
    sql.add('from #aa');
    sql.add('union');
    sql.add('select ');
    sql.add('       6 as SNO');
    sql.add('       ,1 as SNO1');
    sql.add('       ,'+''''+'311FT_6 (primer)'    +''''+' as '+''''+'TFA Products'+'''');
    sql.add('       ,'+''''+'DAI DONG'+''''+' as '+''''+'Supplier Name'+'''');
    sql.add('       ,'+''''+'SBP'+''''+'      as '+''''+'Types'+'''');
    sql.add('       ,'+''''+'70'+''''+'      as '+''''+'VOC Content %'+'''');
    for i:=1 to 31 do
    sql.add('       ,max(case datepart(day,proddate) when '+''''+inttostr(i)+''''+'  then P311FT_6primer  end)   as '+''''+inttostr(i)+'''');
    sql.add('from #aa');
    sql.add('union');
    sql.add('select ');
    sql.add('       7 as SNO');
    sql.add('       ,1 as SNO1');
    sql.add('       ,'+''''+'Hot melt (1438A)'    +''''+' as '+''''+'TFA Products'+'''');
    sql.add('       ,'+''''+'CHI YOWA'+''''+' as '+''''+'Supplier Name'+'''');
    sql.add('       ,'+''''+'HMA'+''''+'      as '+''''+'Types'+'''');
    sql.add('       ,'+''''+'0'+''''+'      as '+''''+'VOC Content %'+'''');
    for i:=1 to 31 do
    sql.add('       ,max(case datepart(day,proddate) when '+''''+inttostr(i)+''''+'  then Hotmelt1438A  end)   as '+''''+inttostr(i)+'''');
    sql.add('from #aa');
    sql.add('union');
    sql.add('select ');
    sql.add('       8 as SNO');
    sql.add('       ,1 as SNO1');
    sql.add('       ,'+''''+'Hot melt (3173H)'    +''''+' as '+''''+'TFA Products'+'''');
    sql.add('       ,'+''''+'CHI YOWA'+''''+' as '+''''+'Supplier Name'+'''');
    sql.add('       ,'+''''+'HMA'+''''+'      as '+''''+'Types'+'''');
    sql.add('       ,'+''''+'0'+''''+'      as '+''''+'VOC Content %'+'''');
    for i:=1 to 31 do
    sql.add('       ,max(case datepart(day,proddate) when '+''''+inttostr(i)+''''+'  then Hotmelt3173H  end)   as '+''''+inttostr(i)+'''');
    sql.add('from #aa');
    sql.add('union');
    sql.add('select ');
    sql.add('       9 as SNO');
    sql.add('       ,1 as SNO1');
    sql.add('       ,'+''''+'NC (white/transparent)'    +''''+' as '+''''+'TFA Products'+'''');
    sql.add('       ,'+''''+'YONG SHUNG'+''''+' as '+''''+'Supplier Name'+'''');
    sql.add('       ,'+''''+'SBP'+''''+'      as '+''''+'Types'+'''');
    sql.add('       ,'+''''+'90'+''''+'      as '+''''+'VOC Content %'+'''');
    for i:=1 to 31 do
    sql.add('       ,max(case datepart(day,proddate) when '+''''+inttostr(i)+''''+'  then NCwhitetransparent  end)   as '+''''+inttostr(i)+'''');
    sql.add('from #aa');
    sql.add('union');
    sql.add('select ');
    sql.add('       10 as SNO');
    sql.add('       ,1 as SNO1');
    sql.add('       ,'+''''+'M (Waterbase)'    +''''+' as '+''''+'TFA Products'+'''');
    sql.add('       ,'+''''+'YONG CHYUAN'+''''+' as '+''''+'Supplier Name'+'''');
    sql.add('       ,'+''''+'WBA'+''''+'      as '+''''+'Types'+'''');
    sql.add('       ,'+''''+'0'+''''+'      as '+''''+'VOC Content %'+'''');
    for i:=1 to 31 do
    sql.add('       ,max(case datepart(day,proddate) when '+''''+inttostr(i)+''''+'  then MWaterbase  end)   as '+''''+inttostr(i)+'''');
    sql.add('from #aa');
    sql.add('union');
    sql.add('select ');
    sql.add('       11 as SNO');
    sql.add('       ,1 as SNO1');
    sql.add('       ,'+''''+'Latex'    +''''+' as '+''''+'TFA Products'+'''');
    sql.add('       ,'+''''+'SUNGEI'+''''+' as '+''''+'Supplier Name'+'''');
    sql.add('       ,'+''''+'WBA'+''''+'      as '+''''+'Types'+'''');
    sql.add('       ,'+''''+'0'+''''+'      as '+''''+'VOC Content %'+'''');
    for i:=1 to 31 do
    sql.add('       ,max(case datepart(day,proddate) when '+''''+inttostr(i)+''''+'  then Latex  end)   as '+''''+inttostr(i)+'''');
    sql.add('from #aa');
    sql.add('union');
    sql.add('select ');
    sql.add('       12 as SNO');
    sql.add('       ,1 as SNO1');
    sql.add('       ,'+''''+'102'    +''''+' as '+''''+'TFA Products'+'''');
    sql.add('       ,'+''''+'YONG CHYUAN'+''''+' as '+''''+'Supplier Name'+'''');
    sql.add('       ,'+''''+'WBA'+''''+'      as '+''''+'Types'+'''');
    sql.add('       ,'+''''+'0'+''''+'      as '+''''+'VOC Content %'+'''');
    for i:=1 to 31 do
    sql.add('       ,max(case datepart(day,proddate) when '+''''+inttostr(i)+''''+'  then A102  end)   as '+''''+inttostr(i)+'''');
    sql.add('from #aa');
    sql.add('union');
    sql.add('select ');
    sql.add('       13 as SNO');
    sql.add('       ,1 as SNO1');
    sql.add('       ,'+''''+'AB (white/transparent)'    +''''+' as '+''''+'TFA Products'+'''');
    sql.add('       ,'+''''+'YONG CHYUAN'+''''+' as '+''''+'Supplier Name'+'''');
    sql.add('       ,'+''''+'WBH'+''''+'      as '+''''+'Types'+'''');
    sql.add('       ,'+''''+'10'+''''+'      as '+''''+'VOC Content %'+'''');
    for i:=1 to 31 do
    sql.add('       ,max(case datepart(day,proddate) when '+''''+inttostr(i)+''''+'  then ABwhitetransparent end)   as '+''''+inttostr(i)+'''');
    sql.add('from #aa');
    sql.add('union');
    sql.add('select ');
    sql.add('       14 as SNO');
    sql.add('       ,1 as SNO1');
    sql.add('       ,'+''''+'RB - 13F'    +''''+' as '+''''+'TFA Products'+'''');
    sql.add('       ,'+''''+'BANG DUC'+''''+' as '+''''+'Supplier Name'+'''');
    sql.add('       ,'+''''+'SBP'+''''+'      as '+''''+'Types'+'''');
    sql.add('       ,'+''''+'86'+''''+'      as '+''''+'VOC Content %'+'''');
    for i:=1 to 31 do
    sql.add('       ,max(case datepart(day,proddate) when '+''''+inttostr(i)+''''+'  then RB13F end)   as '+''''+inttostr(i)+'''');
    sql.add('from #aa');
    sql.add('union');
    sql.add('select ');
    sql.add('       15 as SNO');
    sql.add('       ,1 as SNO1');
    sql.add('       ,'+''''+'C-237F'    +''''+' as '+''''+'TFA Products'+'''');
    sql.add('       ,'+''''+'DAI DONG'+''''+' as '+''''+'Supplier Name'+'''');
    sql.add('       ,'+''''+'SBP'+''''+'      as '+''''+'Types'+'''');
    sql.add('       ,'+''''+'86'+''''+'      as '+''''+'VOC Content %'+'''');
    for i:=1 to 31 do
    sql.add('       ,max(case datepart(day,proddate) when '+''''+inttostr(i)+''''+'  then C237F end)   as '+''''+inttostr(i)+'''');
    sql.add('from #aa');
    sql.add('union');
    sql.add('select ');
    sql.add('       16 as SNO');
    sql.add('       ,1 as SNO1');
    sql.add('       ,'+''''+'AD 752 S'    +''''+' as '+''''+'TFA Products'+'''');
    sql.add('       ,'+''''+'BET SOUTH'+''''+' as '+''''+'Supplier Name'+'''');
    sql.add('       ,'+''''+'SBC'+''''+'      as '+''''+'Types'+'''');
    sql.add('       ,'+''''+'60'+''''+'      as '+''''+'VOC Content %'+'''');
    for i:=1 to 31 do
    sql.add('       ,max(case datepart(day,proddate) when '+''''+inttostr(i)+''''+'  then AD752S end)   as '+''''+inttostr(i)+'''');
    sql.add('from #aa');
    sql.add('union');
    sql.add('select ');
    sql.add('       17 as SNO');
    sql.add('       ,1 as SNO1');
    sql.add('       ,'+''''+'A5'    +''''+' as '+''''+'TFA Products'+'''');
    sql.add('       ,'+''''+'PHUONG ANH'+''''+' as '+''''+'Supplier Name'+'''');
    sql.add('       ,'+''''+'WBA'+''''+'      as '+''''+'Types'+'''');
    sql.add('       ,'+''''+'0'+''''+'      as '+''''+'VOC Content %'+'''');
    for i:=1 to 31 do
    sql.add('       ,max(case datepart(day,proddate) when '+''''+inttostr(i)+''''+'  then A5 end)   as '+''''+inttostr(i)+'''');
    sql.add('from #aa');
    sql.add('union');
    sql.add('select ');
    sql.add('       18 as SNO');
    sql.add('       ,1 as SNO1');
    sql.add('       ,'+''''+'A3'    +''''+' as '+''''+'TFA Products'+'''');
    sql.add('       ,'+''''+'PHUONG ANH'+''''+' as '+''''+'Supplier Name'+'''');
    sql.add('       ,'+''''+'Ink'+''''+'      as '+''''+'Types'+'''');
    sql.add('       ,'+''''+'0'+''''+'      as '+''''+'VOC Content %'+'''');
    for i:=1 to 31 do
    sql.add('       ,max(case datepart(day,proddate) when '+''''+inttostr(i)+''''+'  then A3 end)   as '+''''+inttostr(i)+'''');
    sql.add('from #aa');
    sql.add('union');
    sql.add('select ');
    sql.add('       19 as SNO');
    sql.add('       ,1 as SNO1');
    sql.add('       ,'+''''+'AD 5500'    +''''+' as '+''''+'TFA Products'+'''');
    sql.add('       ,'+''''+'BET SOUTH'+''''+' as '+''''+'Supplier Name'+'''');
    sql.add('       ,'+''''+'Ink'+''''+'      as '+''''+'Types'+'''');
    sql.add('       ,'+''''+'0'+''''+'      as '+''''+'VOC Content %'+'''');
    for i:=1 to 31 do
    sql.add('       ,max(case datepart(day,proddate) when '+''''+inttostr(i)+''''+'  then AD5500 end)   as '+''''+inttostr(i)+'''');
    sql.add('from #aa');
    sql.add('union');
    sql.add('select ');
    sql.add('       20 as SNO');
    sql.add('       ,1 as SNO1');
    sql.add('       ,'+''''+'05-W1A'    +''''+' as '+''''+'TFA Products'+'''');
    sql.add('       ,'+''''+'DAI DONG'+''''+' as '+''''+'Supplier Name'+'''');
    sql.add('       ,'+''''+'Ink'+''''+'      as '+''''+'Types'+'''');
    sql.add('       ,'+''''+'0'+''''+'      as '+''''+'VOC Content %'+'''');
    for i:=1 to 31 do
    sql.add('       ,max(case datepart(day,proddate) when '+''''+inttostr(i)+''''+'  then A05W1A end)   as '+''''+inttostr(i)+'''');
    sql.add('from #aa');

    sql.add('union');

    sql.add('select ');
    sql.add('       21 as SNO');
    sql.add('       ,1 as SNO1');
    sql.add('       ,'+''''+'HM-401 (hotmelt)'    +''''+' as '+''''+'TFA Products'+'''');
    sql.add('       ,'+''''+'CHI YOWA'+''''+' as '+''''+'Supplier Name'+'''');
    sql.add('       ,'+''''+'HMA'     +''''+' as '+''''+'Types'+'''');
    sql.add('       ,'+''''+'0'      +''''+' as '+''''+'VOC Content %'+'''');
    for i:=1 to 31 do
    sql.add('       ,max(case datepart(day,proddate) when '+''''+inttostr(i)+''''+'  then HM401hotmelt end)   as '+''''+inttostr(i)+'''');
    sql.add('from #aa');

    sql.add('union');

    sql.add('select ');
    sql.add('       22 as SNO');
    sql.add('       ,1 as SNO1');
    sql.add('       ,'+''''+'722'    +''''+' as '+''''+'TFA Products'+'''');
    sql.add('       ,'+''''+'HENKEL'+''''+' as '+''''+'Supplier Name'+'''');
    sql.add('       ,'+''''+'HMA'+''''+'      as '+''''+'Types'+'''');
    sql.add('       ,'+''''+'0'+''''+'      as '+''''+'VOC Content %'+'''');
    for i:=1 to 31 do
    sql.add('       ,max(case datepart(day,proddate) when '+''''+inttostr(i)+''''+'  then A722 end)   as '+''''+inttostr(i)+'''');
    sql.add('from #aa');

    sql.add('union');

    sql.add('select ');
    sql.add('       23 as SNO');
    sql.add('       ,1 as SNO1');
    sql.add('       ,'+''''+'8602'    +''''+' as '+''''+'TFA Products'+'''');
    sql.add('       ,'+''''+'      '+''''+' as '+''''+'Supplier Name'+'''');
    sql.add('       ,'+''''+'   '+''''+'      as '+''''+'Types'+'''');
    sql.add('       ,'+''''+'0'+''''+'      as '+''''+'VOC Content %'+'''');
    for i:=1 to 31 do
    sql.add('       ,max(case datepart(day,proddate) when '+''''+inttostr(i)+''''+'  then A8602 end)   as '+''''+inttostr(i)+'''');
    sql.add('from #aa');

    sql.add(') ddd');
    execsql;
  end;

with Query1 do
  begin
    active:=false;
    sql.clear;
    sql.add(' if object_id('+''''+'tempdb..#cc'+''''+') is not null ');
    sql.add(' begin   drop table #cc end ');
    sql.add('select cc.*');
    sql.add('into #cc');
    sql.add('from ( ');
    sql.add('select 24 AS sno');
    sql.add('      ,sno1');
    sql.add('      ,'+''''+'Total TFA consumed(kg)'+''''+' as '+''''+'TFA Products'+'''');
    sql.add('      ,'+''''+' '+''''+' as '+''''+'Supplier Name'+'''');
    sql.add('      ,'+''''+' '+''''+' as '+''''+'Types'+'''');
    sql.add('      ,'+''''+''+''''+' as '+''''+'VOC Content %'+'''');
    sql.add('       ,sum([1]) '+''''+'1'+'''');
    sql.add('       ,sum([2]) '+''''+'2'+'''');
    sql.add('       ,sum([3]) '+''''+'3'+'''');
    sql.add('       ,sum([4]) '+''''+'4'+'''');
    sql.add('       ,sum([5]) '+''''+'5'+'''');
    sql.add('       ,sum([6]) '+''''+'6'+'''');
    sql.add('       ,sum([7]) '+''''+'7'+'''');
    sql.add('       ,sum([8]) '+''''+'8'+'''');
    sql.add('       ,sum([9]) '+''''+'9'+'''');
    sql.add('       ,sum([10]) '+''''+'10'+'''');
    sql.add('       ,sum([11]) '+''''+'11'+'''');
    sql.add('       ,sum([12]) '+''''+'12'+'''');
    sql.add('       ,sum([13]) '+''''+'13'+'''');
    sql.add('       ,sum([14]) '+''''+'14'+'''');
    sql.add('       ,sum([15]) '+''''+'15'+'''');
    sql.add('       ,sum([16]) '+''''+'16'+'''');
    sql.add('       ,sum([17]) '+''''+'17'+'''');
    sql.add('       ,sum([18]) '+''''+'18'+'''');
    sql.add('       ,sum([19]) '+''''+'19'+'''');
    sql.add('       ,sum([20]) '+''''+'20'+'''');
    sql.add('       ,sum([21]) '+''''+'21'+'''');
    sql.add('       ,sum([22]) '+''''+'22'+'''');
    sql.add('       ,sum([23]) '+''''+'23'+'''');
    sql.add('       ,sum([24]) '+''''+'24'+'''');
    sql.add('       ,sum([25]) '+''''+'25'+'''');
    sql.add('       ,sum([26]) '+''''+'26'+'''');
    sql.add('       ,sum([27]) '+''''+'27'+'''');
    sql.add('       ,sum([28]) '+''''+'28'+'''');
    sql.add('       ,sum([29]) '+''''+'29'+'''');
    sql.add('       ,sum([30]) '+''''+'30'+'''');
    sql.add('       ,sum([31]) '+''''+'31'+'''');
    sql.add('from #bb');
    sql.add('group by sno1 ) cc');
    execsql;
  end;

with Query1 do
  begin
    active:=false;
    sql.clear;
    sql.add(' if object_id('+''''+'tempdb..#dd'+''''+') is not null ');
    sql.add(' begin   drop table #dd end ');
    sql.add('select 25 AS sno  ');
    sql.add('      ,dd.sno1');
    sql.add('      ,'+''''+'Total VOC consumed(kg)'+''''+' as '+''''+'TFA Products'+'''');
    sql.add('      ,'+''''+' '+''''+' as '+''''+'Supplier Name'+'''');
    sql.add('      ,'+''''+' '+''''+' as '+''''+'Types'+'''');
    sql.add('      ,'+''''+''+''''+' as '+''''+'VOC Content %'+'''');
    sql.add('       ,sum([1]) '+''''+'1'+'''');
    sql.add('       ,sum([2]) '+''''+'2'+'''');
    sql.add('       ,sum([3]) '+''''+'3'+'''');
    sql.add('       ,sum([4]) '+''''+'4'+'''');
    sql.add('       ,sum([5]) '+''''+'5'+'''');
    sql.add('       ,sum([6]) '+''''+'6'+'''');
    sql.add('       ,sum([7]) '+''''+'7'+'''');
    sql.add('       ,sum([8]) '+''''+'8'+'''');
    sql.add('       ,sum([9]) '+''''+'9'+'''');
    sql.add('       ,sum([10]) '+''''+'10'+'''');
    sql.add('       ,sum([11]) '+''''+'11'+'''');
    sql.add('       ,sum([12]) '+''''+'12'+'''');
    sql.add('       ,sum([13]) '+''''+'13'+'''');
    sql.add('       ,sum([14]) '+''''+'14'+'''');
    sql.add('       ,sum([15]) '+''''+'15'+'''');
    sql.add('       ,sum([16]) '+''''+'16'+'''');
    sql.add('       ,sum([17]) '+''''+'17'+'''');
    sql.add('       ,sum([18]) '+''''+'18'+'''');
    sql.add('       ,sum([19]) '+''''+'19'+'''');
    sql.add('       ,sum([20]) '+''''+'20'+'''');
    sql.add('       ,sum([21]) '+''''+'21'+'''');
    sql.add('       ,sum([22]) '+''''+'22'+'''');
    sql.add('       ,sum([23]) '+''''+'23'+'''');
    sql.add('       ,sum([24]) '+''''+'24'+'''');
    sql.add('       ,sum([25]) '+''''+'25'+'''');
    sql.add('       ,sum([26]) '+''''+'26'+'''');
    sql.add('       ,sum([27]) '+''''+'27'+'''');
    sql.add('       ,sum([28]) '+''''+'28'+'''');
    sql.add('       ,sum([29]) '+''''+'29'+'''');
    sql.add('       ,sum([30]) '+''''+'30'+'''');
    sql.add('       ,sum([31]) '+''''+'31'+'''');
    sql.add('into #dd');
    sql.add('from ( ');
    sql.add('select SNO');
    sql.add('       ,SNO1');
    sql.add('       ,[TFA Products]');
    sql.add('       ,[Supplier Name]');
    sql.add('       ,[Types]');
    sql.add('       ,[VOC Content %]');
    sql.add('       ,[VOC Content %]*[1]*0.01 as '+''''+'1'+'''');
    sql.add('       ,[VOC Content %]*[2]*0.01 as '+''''+'2'+'''');
    sql.add('       ,[VOC Content %]*[3]*0.01 as '+''''+'3'+'''');
    sql.add('       ,[VOC Content %]*[4]*0.01 as '+''''+'4'+'''');
    sql.add('       ,[VOC Content %]*[5]*0.01 as '+''''+'5'+'''');
    sql.add('       ,[VOC Content %]*[6]*0.01 as '+''''+'6'+'''');
    sql.add('       ,[VOC Content %]*[7]*0.01 as '+''''+'7'+'''');
    sql.add('       ,[VOC Content %]*[8]*0.01 as '+''''+'8'+'''');
    sql.add('       ,[VOC Content %]*[9]*0.01 as '+''''+'9'+'''');
    sql.add('       ,[VOC Content %]*[10]*0.01 as '+''''+'10'+'''');
    sql.add('       ,[VOC Content %]*[11]*0.01 as '+''''+'11'+'''');
    sql.add('       ,[VOC Content %]*[12]*0.01 as '+''''+'12'+'''');
    sql.add('       ,[VOC Content %]*[13]*0.01 as '+''''+'13'+'''');
    sql.add('       ,[VOC Content %]*[14]*0.01 as '+''''+'14'+'''');
    sql.add('       ,[VOC Content %]*[15]*0.01 as '+''''+'15'+'''');
    sql.add('       ,[VOC Content %]*[16]*0.01 as '+''''+'16'+'''');
    sql.add('       ,[VOC Content %]*[17]*0.01 as '+''''+'17'+'''');
    sql.add('       ,[VOC Content %]*[18]*0.01 as '+''''+'18'+'''');
    sql.add('       ,[VOC Content %]*[19]*0.01 as '+''''+'19'+'''');
    sql.add('       ,[VOC Content %]*[20]*0.01 as '+''''+'20'+'''');
    sql.add('       ,[VOC Content %]*[21]*0.01 as '+''''+'21'+'''');
    sql.add('       ,[VOC Content %]*[22]*0.01 as '+''''+'22'+'''');
    sql.add('       ,[VOC Content %]*[23]*0.01 as '+''''+'23'+'''');
    sql.add('       ,[VOC Content %]*[24]*0.01 as '+''''+'24'+'''');
    sql.add('       ,[VOC Content %]*[25]*0.01 as '+''''+'25'+'''');
    sql.add('       ,[VOC Content %]*[26]*0.01 as '+''''+'26'+'''');
    sql.add('       ,[VOC Content %]*[27]*0.01 as '+''''+'27'+'''');
    sql.add('       ,[VOC Content %]*[28]*0.01 as '+''''+'28'+'''');
    sql.add('       ,[VOC Content %]*[29]*0.01 as '+''''+'29'+'''');
    sql.add('       ,[VOC Content %]*[30]*0.01 as '+''''+'30'+'''');
    sql.add('       ,[VOC Content %]*[31]*0.01 as '+''''+'31'+'''');
    sql.add('from #bb   ') ;
    sql.add(') dd');
    sql.add('group by dd.sno1 ');
    execsql;
 end;

with Query1 do
  begin
    active:=false;
    sql.clear;
    sql.add(' if object_id('+''''+'tempdb..#ee'+''''+') is not null ');
    sql.add(' begin   drop table #ee end ');
    sql.add('select 26 as sno  ');
    sql.add('      , 1 as sno1');
    sql.add('      ,'+''''+'Total Pairs'+''''+' as '+''''+'TFA Products'+'''');
    sql.add('      ,'+''''+' '+''''+' as '+''''+'Supplier Name'+'''');
    sql.add('      ,'+''''+' '+''''+' as '+''''+'Types'+'''');
    sql.add('      ,'+''''+''+''''+' as '+''''+'VOC Content %'+'''');
    sql.add('      ,'+'max(case datepart(day,pp.proddate) when '+''''+'1'+''''+'  then pp.Pairs  end )  as '+''''+'1'+'''');
    sql.add('      ,'+'max(case datepart(day,pp.proddate) when '+''''+'2'+''''+'  then pp.Pairs   end )  as '+''''+'2'+'''');
    sql.add('      ,'+'max(case datepart(day,pp.proddate) when '+''''+'3'+''''+'  then pp.Pairs   end )  as '+''''+'3'+'''');
    sql.add('      ,'+'max(case datepart(day,pp.proddate) when '+''''+'4'+''''+'  then pp.Pairs   end )  as '+''''+'4'+'''');
    sql.add('      ,'+'max(case datepart(day,pp.proddate) when '+''''+'5'+''''+'  then pp.Pairs   end )  as '+''''+'5'+'''');
    sql.add('      ,'+'max(case datepart(day,pp.proddate) when '+''''+'6'+''''+'  then pp.Pairs   end )  as '+''''+'6'+'''');
    sql.add('      ,'+'max(case datepart(day,pp.proddate) when '+''''+'7'+''''+'  then pp.Pairs  end )  as '+''''+'7'+'''');
    sql.add('      ,'+'max(case datepart(day,pp.proddate) when '+''''+'8'+''''+'  then pp.Pairs  end )  as '+''''+'8'+'''');
    sql.add('      ,'+'max(case datepart(day,pp.proddate) when '+''''+'9'+''''+'  then pp.Pairs  end )  as '+''''+'9'+'''');
    sql.add('      ,'+'max(case datepart(day,pp.proddate) when '+''''+'10'+''''+'  then pp.Pairs  end )  as '+''''+'10'+'''');
    sql.add('      ,'+'max(case datepart(day,pp.proddate) when '+''''+'11'+''''+'  then pp.Pairs  end )  as '+''''+'11'+'''');
    sql.add('      ,'+'max(case datepart(day,pp.proddate) when '+''''+'12'+''''+'  then pp.Pairs  end )  as '+''''+'12'+'''');
    sql.add('      ,'+'max(case datepart(day,pp.proddate) when '+''''+'13'+''''+'  then pp.Pairs  end )  as '+''''+'13'+'''');
    sql.add('      ,'+'max(case datepart(day,pp.proddate) when '+''''+'14'+''''+'  then pp.Pairs  end )  as '+''''+'14'+'''');
    sql.add('      ,'+'max(case datepart(day,pp.proddate) when '+''''+'15'+''''+'  then pp.Pairs  end )  as '+''''+'15'+'''');
    sql.add('      ,'+'max(case datepart(day,pp.proddate) when '+''''+'16'+''''+'  then pp.Pairs  end )  as '+''''+'16'+'''');
    sql.add('      ,'+'max(case datepart(day,pp.proddate) when '+''''+'17'+''''+'  then pp.Pairs  end )  as '+''''+'17'+'''');
    sql.add('      ,'+'max(case datepart(day,pp.proddate) when '+''''+'18'+''''+'  then pp.Pairs  end )  as '+''''+'18'+'''');
    sql.add('      ,'+'max(case datepart(day,pp.proddate) when '+''''+'19'+''''+'  then pp.Pairs  end )  as '+''''+'19'+'''');
    sql.add('      ,'+'max(case datepart(day,pp.proddate) when '+''''+'20'+''''+'  then pp.Pairs  end )  as '+''''+'20'+'''');
    sql.add('      ,'+'max(case datepart(day,pp.proddate) when '+''''+'21'+''''+'  then pp.Pairs  end )  as '+''''+'21'+'''');
    sql.add('      ,'+'max(case datepart(day,pp.proddate) when '+''''+'22'+''''+'  then pp.Pairs  end )  as '+''''+'22'+'''');
    sql.add('      ,'+'max(case datepart(day,pp.proddate) when '+''''+'23'+''''+'  then pp.Pairs  end )  as '+''''+'23'+'''');
    sql.add('      ,'+'max(case datepart(day,pp.proddate) when '+''''+'24'+''''+'  then pp.Pairs  end )  as '+''''+'24'+'''');
    sql.add('      ,'+'max(case datepart(day,pp.proddate) when '+''''+'25'+''''+'  then pp.Pairs  end )  as '+''''+'25'+'''');
    sql.add('      ,'+'max(case datepart(day,pp.proddate) when '+''''+'26'+''''+'  then pp.Pairs  end )  as '+''''+'26'+'''');
    sql.add('      ,'+'max(case datepart(day,pp.proddate) when '+''''+'27'+''''+'  then pp.Pairs  end )  as '+''''+'27'+'''');
    sql.add('      ,'+'max(case datepart(day,pp.proddate) when '+''''+'28'+''''+'  then pp.Pairs  end )  as '+''''+'28'+'''');
    sql.add('      ,'+'max(case datepart(day,pp.proddate) when '+''''+'29'+''''+'  then pp.Pairs  end )  as '+''''+'29'+'''');
    sql.add('      ,'+'max(case datepart(day,pp.proddate) when '+''''+'30'+''''+'  then pp.Pairs  end )  as '+''''+'30'+'''');
    sql.add('      ,'+'max(case datepart(day,pp.proddate) when '+''''+'31'+''''+'  then pp.Pairs  end )  as '+''''+'31'+'''');
    sql.add('into #ee');
    sql.add('from  ');
    sql.add('(select proddate,cast(sum(pairs) as numeric(10,2) ) as pairs');
    sql.add('from ');
    sql.add('     (');
    sql.add('       select #QIPVOC.*');
    sql.add('       from #QIPVOC');
    sql.add('       left join bdepartment on bdepartment.id=#QIPVOC.depno');
    sql.add('       where left(bdepartment.depname,4)='+''''+'LY_G'+'''');
    sql.add('             and   convert(smalldatetime,convert(varchar,#QIPVOC.ProdDate,111)) between');
    sql.add('      '''+formatdatetime('yyyy/MM/dd',sdate)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',edate)+'''');
    sql.add('    )');
    sql.add('#QIPVOC');
    sql.add('group by proddate');
    sql.add(') pp ');
    execsql;
 end;

with Query1 do
  begin
    active:=false;
    sql.clear;
    sql.add(' if object_id('+''''+'tempdb..#ff'+''''+') is not null ');
    sql.add(' begin   drop table #ff end ');
    sql.add('select 27 as sno  ');
    sql.add('      , 1 as sno1');
    //sql.add('      ,'+''''+'Shoe Production (pairs)'+''''+' as '+''''+'TFA Products'+'''');
    sql.add('      ,'+''''+'VOC (g/pr)'+''''+' as '+''''+'TFA Products'+'''');
    sql.add('      ,'+''''+' '+''''+' as '+''''+'Supplier Name'+'''');
    sql.add('      ,'+''''+' '+''''+' as '+''''+'Types'+'''');
    sql.add('      ,'+''''+''+''''+' as '+''''+'VOC Content %'+'''');
    sql.add('      ,1000*#dd.[1]/#ee.[1] as '+''''+'1'+'''');
    sql.add('      ,1000*#dd.[2]/#ee.[2] as '+''''+'2'+'''');
    sql.add('      ,1000*#dd.[3]/#ee.[3] as '+''''+'3'+'''');
    sql.add('      ,1000*#dd.[4]/#ee.[4] as '+''''+'4'+'''');
    sql.add('      ,1000*#dd.[5]/#ee.[5] as '+''''+'5'+'''');
    sql.add('      ,1000*#dd.[6]/#ee.[6] as '+''''+'6'+'''');
    sql.add('      ,1000*#dd.[7]/#ee.[7] as '+''''+'7'+'''');
    sql.add('      ,1000*#dd.[8]/#ee.[8] as '+''''+'8'+'''');
    sql.add('      ,1000*#dd.[9]/#ee.[9] as '+''''+'9'+'''');
    sql.add('      ,1000*#dd.[10]/#ee.[10] as '+''''+'10'+'''');
    sql.add('      ,1000*#dd.[11]/#ee.[11] as '+''''+'11'+'''');
    sql.add('      ,1000*#dd.[12]/#ee.[12] as '+''''+'12'+'''');
    sql.add('      ,1000*#dd.[13]/#ee.[13] as '+''''+'13'+'''');
    sql.add('      ,1000*#dd.[14]/#ee.[14] as '+''''+'14'+'''');
    sql.add('      ,1000*#dd.[15]/#ee.[15] as '+''''+'15'+'''');
    sql.add('      ,1000*#dd.[16]/#ee.[16] as '+''''+'16'+'''');
    sql.add('      ,1000*#dd.[17]/#ee.[17] as '+''''+'17'+'''');
    sql.add('      ,1000*#dd.[18]/#ee.[18] as '+''''+'18'+'''');
    sql.add('      ,1000*#dd.[19]/#ee.[19] as '+''''+'19'+'''');
    sql.add('      ,1000*#dd.[20]/#ee.[20] as '+''''+'20'+'''');
    sql.add('      ,1000*#dd.[21]/#ee.[21] as '+''''+'21'+'''');
    sql.add('      ,1000*#dd.[22]/#ee.[22] as '+''''+'22'+'''');
    sql.add('      ,1000*#dd.[23]/#ee.[23] as '+''''+'23'+'''');
    sql.add('      ,1000*#dd.[24]/#ee.[24] as '+''''+'24'+'''');
    sql.add('      ,1000*#dd.[25]/#ee.[25] as '+''''+'25'+'''');
    sql.add('      ,1000*#dd.[26]/#ee.[26] as '+''''+'26'+'''');
    sql.add('      ,1000*#dd.[27]/#ee.[27] as '+''''+'27'+'''');
    sql.add('      ,1000*#dd.[28]/#ee.[28] as '+''''+'28'+'''');
    sql.add('      ,1000*#dd.[29]/#ee.[29] as '+''''+'29'+'''');
    sql.add('      ,1000*#dd.[30]/#ee.[30] as '+''''+'30'+'''');
    sql.add('      ,1000*#dd.[31]/#ee.[31] as '+''''+'31'+'''');
    sql.add('into #ff');
    sql.add('from #dd');
    sql.add('left join #ee on #ee.sno1=#dd.sno1  ');

    execsql;
 end;




with Query1 do
  begin
    active:=false;
    sql.clear;
    sql.add('select * ');
    sql.add('from #bb ');

    sql.add('union');
    sql.add('select * ');
    sql.add('from #cc ');

    sql.add('union');
    sql.add('select * ');
    sql.add('from #dd ');

    sql.add('union');
    sql.add('select * ');
    sql.add('from #ee ');

    sql.add('union');
    sql.add('select * ');
    sql.add('from #ff ');

    active:=true;
  end;

   for i:=0 to Query1.FieldCount-1 do
        begin
          DBGridEh1.columns[i].width:=50;
          //DBGrid3.Columns[i].Title.TitleButton:=true;
        end;

   DBGridEh1.FixedColor:= clActiveCaption;
   DBGridEh1.TitleFont.Color:=clWindow;
   //DBGridEh1.Font.Size:=10;
   DBGridEh1.columns[0].width:=0;
   DBGridEh1.columns[1].width:=0;
   DBGridEh1.columns[2].width:=135;
   DBGridEh1.columns[3].width:=110;
   DBGridEh1.columns[4].width:=50;
   DBGridEh1.columns[5].width:=115;

   DBGridEh1.FrozenCols:=6;
   for i:=6 to Query1.FieldCount-1 do
        begin
          DBGridEh1.columns[i].color:=$00B5FFFF ;
          DBGridEh1.columns[i].DisplayFormat:='#####.#0';
        end;


//panel3.visible:=false;
//bb2.enabled:=true;
//bb3.enabled:=true;
//bb4.enabled:=true;
bb5.enabled:=false;
bb6.enabled:=false;
bb7.enabled:=true;
bbt1.enabled:=true;
bbt2.enabled:=true;
bbt3.enabled:=true;
bbt4.enabled:=true;
//bbt5.enabled:=true;
bbt6.enabled:=true;
end;

procedure TVOC_List.BB6Click(Sender: TObject);
begin
with query1 do
  begin
    active:=false;
    cachedupdates:=false;
    requestlive:=false;
    active:=true;
  end;
bb5.enabled:=false;
bb6.enabled:=false;
end;

procedure TVOC_List.BB7Click(Sender: TObject);
begin
  close;
end;

procedure TVOC_List.BBT1Click(Sender: TObject);
begin
query1.First;
end;

procedure TVOC_List.BBT2Click(Sender: TObject);
begin
query1.prior;
end;

procedure TVOC_List.BBT3Click(Sender: TObject);
begin
query1.next;
end;

procedure TVOC_List.BBT4Click(Sender: TObject);
begin
query1.last;
end;

procedure TVOC_List.bbt6Click(Sender: TObject);
//--------------------
var
      eclApp,WorkBook:olevariant;
 //     xlsFileName:string;
      i,j:integer;
begin
  if  query1.active  then
    begin
    try
      eclApp:=CreateOleObject('Excel.Application');
      WorkBook:=CreateOleObject('Excel.Sheet');
    except
      Application.MessageBox('No Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
      Exit;
    end;
    try
        WorkBook:=eclApp.workbooks.Add;
        for   i:=0   to   query1.fieldcount-1   do
          begin
              eclApp.Cells(1,i+1):=query1.fields[i].FieldName;
          end;

        query1.First;
        j:=2;
        while   not   query1.Eof   do
          begin
            for   i:=0   to  query1.fieldcount-1  do
            begin
              eclApp.Cells(j,i+1):=query1.Fields[i].Value;
            end;
          query1.Next;
          inc(j);
          end;
      eclapp.columns.autofit;
      showmessage('Succeed.');
      eclApp.Visible:=True;

      except
        on   F:Exception   do
          showmessage(F.Message);
      end;
    end;
end;
//--------------------



procedure TVOC_List.FormDestroy(Sender: TObject);
begin
  VOC_List:=nil;
end;

procedure TVOC_List.BB3Click(Sender: TObject);
begin
  //if messagedlg('Delete ??',mtconfirmation,[mbYes,mbNo],0)=mrYes then
  //begin
    if Query1.recordcount>0 then
      begin
        with Query1 do
          begin
            requestlive:=true;
            cachedupdates:=true;
            edit;
            fieldbyname('YN').Value:='0';
          end;
        BB5.Enabled:=true;
        BB6.Enabled:=true;  
      end;
  //end;

end;

procedure TVOC_List.BitBtn2Click(Sender: TObject);
begin
  VOC_Input_Dep:=TVOC_Input_Dep.create(self);
  VOC_Input_Dep.Label3.Caption := 'SN601';
  VOC_Input_Dep.show;
end;

procedure TVOC_List.DBGridEh1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  //如果是'ALL'則以淡藍色.顯示
  if (Query1.FieldByName('SNO').Value>='24')
      or (Query1.FieldByName('SNO').Value>='25')
      or (Query1.FieldByName('SNO').Value>='26')  then
    begin
      DBGridEh1.canvas.brush.Color:=clMoneyGreen;
      DBGridEh1.canvas.font.color:=clBlack;
      DBGridEh1.DefaultDrawColumnCell(Rect,DataCol,Column, State);
    end;

  if (Query1.FieldByName('SNO').Value>='27')  then
    begin
      DBGridEh1.canvas.brush.Color:=$00FFBBFF;
      DBGridEh1.canvas.font.color:=clBlack;
      DBGridEh1.canvas.font.Style:=[fsbold];
      DBGridEh1.DefaultDrawColumnCell(Rect,DataCol,Column, State);
    end;

end;

procedure TVOC_List.bbt7Click(Sender: TObject);
begin
  if VOC_Chart<>nil then
    begin
      VOC_Chart.button1click(nil);
      VOC_Chart.show;
      //VOC_Chart.windowstate:=wsmaximized;
    end
  else
    begin
      //KeepLog('SN601');
      VOC_Chart:=TVOC_Chart.create(self);
      VOC_Chart.button1click(nil);
      VOC_Chart.show;
    end;
end;

end.
