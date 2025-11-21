unit MaterialCode1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Mask, DBCtrls, StdCtrls, Grids, DBGrids, ComCtrls, Menus,
  DBTables, Buttons, ExtCtrls,dateutils;

type
  TMaterialCode = class(TForm)
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
    BBT7: TBitBtn;
    Query1: TQuery;
    Pop1: TPopupMenu;
    Divide1: TMenuItem;
    PC1: TPageControl;
    TS1: TTabSheet;
    DBGrid1: TDBGrid;
    TS2: TTabSheet;
    DS1: TDataSource;
    SpecMas: TQuery;
    SpecMasSCBH: TStringField;
    SpecMasZLBH: TStringField;
    SpecMasXieXing: TStringField;
    SpecMasSheHao: TStringField;
    SpecMasArticle: TStringField;
    SpecMasXieMing: TStringField;
    SpecMasQty: TFloatField;
    SpecMasCCGB: TStringField;
    SpecMasShipDate: TDateTimeField;
    SpecMasDDZT: TStringField;
    SpecDet: TQuery;
    DS2: TDataSource;
    DBGrid2: TDBGrid;
    Panel5: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DBNavigator1: TDBNavigator;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    SpecDetZLBH: TStringField;
    SpecDetCLBH: TStringField;
    SpecDetUsage: TFloatField;
    SpecDetCLSL: TFloatField;
    SpecDetDFL: TStringField;
    SpecDetYWPM: TStringField;
    SpecDetDWBH: TStringField;
    SpecDetLYCC: TStringField;
    SpecDetArticle: TStringField;
    SpecDetXieMing: TStringField;
    SpecDetXieXing: TStringField;
    SpecDetSheHao: TStringField;
    Panel2: TPanel;
    Label5: TLabel;
    DBEdit1: TDBEdit;
    Label6: TLabel;
    DBEdit2: TDBEdit;
    Label8: TLabel;
    DBEdit3: TDBEdit;
    Panel3: TPanel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    E1: TEdit;
    E2: TEdit;
    E3: TEdit;
    E4: TEdit;
    E5: TEdit;
    E6: TEdit;
    Button2: TButton;
    DBGrid3: TDBGrid;
    KCSMPRINT: TQuery;
    KCSMPRINTZLBH: TStringField;
    KCSMPRINTCLBH: TStringField;
    KCSMPRINTQty: TCurrencyField;
    DS3: TDataSource;
    KCSMPRINTXH: TStringField;
    KCSMCL: TQuery;
    KCSMCLZLBH: TStringField;
    KCSMCLCLBH: TStringField;
    KCSMCLDFL: TStringField;
    KCSMCLXH: TStringField;
    KCSMCLQty: TCurrencyField;
    KCSMCLUSERDATE: TDateTimeField;
    KCSMCLUSERID: TStringField;
    KCSMCLYN: TStringField;
    SpecDetScan: TStringField;
    Label15: TLabel;
    E7: TEdit;
    H: TLabel;
    E8: TEdit;
    I: TLabel;
    E9: TEdit;
    J: TLabel;
    E10: TEdit;
    K: TLabel;
    E11: TEdit;
    Label20: TLabel;
    E12: TEdit;
    Label16: TLabel;
    E13: TEdit;
    Label17: TLabel;
    E14: TEdit;
    Label18: TLabel;
    E15: TEdit;
    Label19: TLabel;
    E16: TEdit;
    Label21: TLabel;
    E17: TEdit;
    Label22: TLabel;
    E18: TEdit;
    SpecDetKCQty: TFloatField;
    SpecDetZBQty: TFloatField;
    SpecDetNQty: TFloatField;
    SpecDetLLQty: TFloatField;
    Edit3: TEdit;
    Label4: TLabel;
    DTP1: TDateTimePicker;
    Label7: TLabel;
    DTP2: TDateTimePicker;
    SpecMasGSBH: TStringField;
    SpecMasKFJC: TStringField;
    KCSMPRINTDFL: TStringField;
    KCSMPRINTMATCODE: TStringField;
  //  procedure Button2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BB1Click(Sender: TObject);
    procedure BB7Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure Button1Click(Sender: TObject);
    procedure SpecMasAfterScroll(DataSet: TDataSet);
    procedure SpecDetAfterOpen(DataSet: TDataSet);
    procedure bbt5Click(Sender: TObject);
    procedure Divide1Click(Sender: TObject);
    procedure E1Exit(Sender: TObject);
    procedure E2Exit(Sender: TObject);
    procedure E3Exit(Sender: TObject);
    procedure E4Exit(Sender: TObject);
    procedure E5Exit(Sender: TObject);
    procedure E6Exit(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure E1KeyPress(Sender: TObject; var Key: Char);
    procedure E2KeyPress(Sender: TObject; var Key: Char);
    procedure E3KeyPress(Sender: TObject; var Key: Char);
    procedure E4KeyPress(Sender: TObject; var Key: Char);
    procedure E5KeyPress(Sender: TObject; var Key: Char);
    procedure E6KeyPress(Sender: TObject; var Key: Char);
    procedure E7Exit(Sender: TObject);
    procedure E8Exit(Sender: TObject);
    procedure E9Exit(Sender: TObject);
    procedure E10Exit(Sender: TObject);
    procedure E11Exit(Sender: TObject);
    procedure E12Exit(Sender: TObject);
    procedure E13Exit(Sender: TObject);
    procedure E14Exit(Sender: TObject);
    procedure E15Exit(Sender: TObject);
    procedure E16Exit(Sender: TObject);
    procedure E17Exit(Sender: TObject);
    procedure E18Exit(Sender: TObject);
    procedure E7KeyPress(Sender: TObject; var Key: Char);
    procedure E8KeyPress(Sender: TObject; var Key: Char);
    procedure E9KeyPress(Sender: TObject; var Key: Char);
    procedure E10KeyPress(Sender: TObject; var Key: Char);
    procedure E11KeyPress(Sender: TObject; var Key: Char);
    procedure E12KeyPress(Sender: TObject; var Key: Char);
    procedure E13KeyPress(Sender: TObject; var Key: Char);
    procedure E14KeyPress(Sender: TObject; var Key: Char);
    procedure E15KeyPress(Sender: TObject; var Key: Char);
    procedure E16KeyPress(Sender: TObject; var Key: Char);
    procedure E17KeyPress(Sender: TObject; var Key: Char);
    procedure E18KeyPress(Sender: TObject; var Key: Char);
    procedure SpecDetCalcFields(DataSet: TDataSet);
    procedure FormDestroy(Sender: TObject);
    procedure BBT7Click(Sender: TObject);
  //  procedure Divide1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MaterialCode: TMaterialCode;
  NDate,sdate,edate:TDate;

implementation

uses main1, MaterialCode_Print1;

{$R *.dfm}


procedure TMaterialCode.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
with query1 do
  begin
    active:=false;
    sql.Clear;
    //sql.add('  if object_id('+''''+'tempdb..#CLZLKC'+''''+') is not null  ');
    //sql.add('begin   drop table #CLZLKC end   ');
    sql.add('  if object_id('+''''+'tempdb..#TEMPCL'+''''+') is not null  ');
    sql.add('begin   drop table #TEMPCL end   ');
    execsql;
  end;  
action:=cafree;
end;

procedure TMaterialCode.BB1Click(Sender: TObject);
begin
panel5.Visible:=true;
end;

procedure TMaterialCode.BB7Click(Sender: TObject);
begin
Close;
end;

procedure TMaterialCode.FormCreate(Sender: TObject);
var i:integer;var 
   year,month,day:word;
   ayear,amonth:string;
begin



with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select getdate() as NDate ');
    active:=true;
    NDate:=fieldbyname('NDate').value;
    decodedate(NDate,Year,Month,Day);   //找庫存相關的數據
    incAMonth(Year,Month,Day,-1);
    ayear:=floattostr(year);
    amonth:=floattostr(month);
    if length(amonth)=1 then
      amonth:='0'+amonth;
    active:=false;
    sql.Clear;
    sql.add('  if object_id('+''''+'tempdb..#CLTEMP'+''''+') is not null  ');
    sql.add('begin   drop table #CLTEMP end   ');

    
    sql.add('select CLZLKC.CLDH,isnull(CLZLKC.LastRem,0)+isnull(CLZLKC.RKQty,0)-isnull(CLZLKC.LLQty,0)+isnull(CLZLKC.JGRK,0)-isnull(CLZLKC.JGCK,0) as Qty');
    sql.add('into #TEMPCL from ( ') ;
    sql.Add('     select CLZL.CLDH,LastKC.LastRem,RK.RKQty,LL.LLQty,JGRK.JGRK,JGCK.JGCK');
    sql.add('     from CLZL  ');

    sql.add('left join (select KCCLMONTH.CLBH,sum(KCCLMONTH.Qty) as LastRem ');
    sql.add('           from KCCLMONTH  ');
    sql.add('           left join KCCK on KCCK.CKBH=KCCLMONTH.CKBH ');
    sql.add('            where KCCLMONTH.KCYEAR='+''''+ayear+'''');
    sql.add('                  and KCMONTH='+''''+amonth+'''');
    sql.add('                  and KCCK.GSBH='+''''+main.edit2.Text+'''');
    sql.add('           group by KCCLMONTH.CLBH ) LastKC on LastKC.CLBH=CLZL.CLDH ');

    sql.add('left join (select KCRKS.CLBH,sum(KCRKS.Qty) as RKQty from KCRKS');
    sql.add('           left join KCRK on KCRK.RKNO=KCRKS.RKNO ');
    sql.add('           left join KCCK on KCCK.CKBH=KCRK.CKBH ');
    sql.add('           where convert(smalldatetime,convert(varchar,KCRK.USERDATE,111)) between ') ;
    sql.add('                 '''+formatdatetime('yyyy/MM/dd',startofthemonth(Ndate))+'''' +'and '+''''+formatdatetime('yyyy/MM/dd',Ndate)+''''  );
    sql.add('                 and KCCK.GSBH='+''''+main.edit2.Text+'''');
    sql.add('           group by KCRKS.CLBH) RK on RK.CLBH=CLZL.CLDH ');

    sql.add('left join (select KCLLS.CLBH,sum(KCLLS.Qty) as LLQty from KCLLS ');
    sql.add('           left join KCLL on KCLL.LLNO=KCLLS.LLNO ');
    sql.add('           left join KCCK on KCCK.CKBH=KCLL.CKBH ');
    sql.add('           where convert(smalldatetime,convert(varchar,KCLL.CFMDATE,111)) between ')   ;
    sql.add('                 '''+formatdatetime('yyyy/MM/dd',startofthemonth(Ndate))+'''' +'and '+''''+formatdatetime('yyyy/MM/dd',Ndate)+''''  );
    sql.add('                 and KCLL.CFMID<>'+''''+'NO'+'''');
    sql.add('                 and KCCK.GSBH='+''''+main.edit2.Text+'''');
    sql.add('           group by KCLLS.CLBH) LL on LL.CLBH=CLZL.CLDH');

    sql.add('left join (select JGZLS.CLBH,sum(JGZLS.Qty) as JGRK from JGZLS');
    sql.add('           left join JGZL on JGZL.JGNO=JGZLS.JGNO ');
    sql.add('           left join KCCK on KCCK.CKBH=JGZL.CKBH ');
    sql.add('           where convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111)) between ');
    sql.add('                 '''+formatdatetime('yyyy/MM/dd',startofthemonth(Ndate))+''''+' and '+''''+formatdatetime('yyyy/MM/dd',Ndate)+''''  );
    sql.add('                 and JGZL.CFMID1 <>'+''''+'NO'+'''');
    sql.add('                 and JGZLS.ZMLB='+''''+'ZZZZZZZZZZ'+'''');
    sql.add('                 and KCCK.GSBH='+''''+main.edit2.Text+'''');
    sql.add('           group by JGZLS.CLBH ) JGRK on JGRK.CLBH=CLZL.CLDH');

    sql.add('left join (select JGZLS.ZMLB,sum(round(JGZLS.Qty*JGZLM.Qty,2)) as JGCK from JGZLS');
    sql.add('           left join JGZL on JGZL.JGNO=JGZLS.JGNO  ');
    sql.add('           left join KCCK on KCCK.CKBH=JGZL.CKBH ');
    sql.add('           left join (select JGZLS.JGNO,JGZLS.CLBH,JGZLS.Qty from JGZLS ');
    sql.add('                      left join JGZL on JGZL.JGNO=JGZLS.JGNO '); 
    sql.add('                      left join KCCK on KCCK.CKBH=JGZL.CKBH ');
    sql.add('                      where convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111)) between ');
    sql.add('                            '''+formatdatetime('yyyy/MM/dd',startofthemonth(Ndate))+''''+' and '+''''+formatdatetime('yyyy/MM/dd',Ndate)+''''  );
    sql.add('                            and JGZL.CFMID1 <>'+''''+'NO'+'''');
    sql.add('                            and JGZLS.ZMLB='+''''+'ZZZZZZZZZZ'+''''); 
    sql.add('                            and KCCK.GSBH='+''''+main.edit2.Text+'''');
    sql.add('                      ) JGZLM on JGZLM.JGNO=JGZLS.JGNO and JGZLM.CLBH=JGZLS.CLBH');
    sql.add('           where convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111)) between ');
    sql.add('                 '''+formatdatetime('yyyy/MM/dd',startofthemonth(Ndate))+''''+' and '+''''+formatdatetime('yyyy/MM/dd',Ndate)+''''  );
    sql.add('                 and JGZL.CFMID1 <>'+''''+'NO'+'''');
    sql.add('                 and JGZLS.ZMLB<>'+''''+'ZZZZZZZZZZ'+''''); 
    sql.add('                 and KCCK.GSBH='+''''+main.edit2.Text+'''');
    sql.add('           group by JGZLS.ZMLB ) JGCK on JGCK.ZMLB=CLZL.CLDH ');

    sql.add(' )CLZLKC ')   ;
    sql.add('order by   CLZLKC.CLDH ');

    execsql;
  end;
PC1.activepage:=TS1;    
DTP1.date:=startofthemonth(NDate)+5;
DTP2.date:=startofthemonth(incmonth(NDate,1))+4;

end;

procedure TMaterialCode.DBGrid1DblClick(Sender: TObject);
begin 
if SpecMas.recordcount>0 then
  begin
    PC1.ActivePage:=TS2;
  end;
end;

procedure TMaterialCode.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin

if not SpecDet.FieldByName('SCAN').isnull then
  begin
    dbgrid2.canvas.font.color:=clred;  
    dbgrid2.defaultdrawcolumncell(rect,datacol,column,state);
  end;
end;

procedure TMaterialCode.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
  dbgrid1dblclick(nil);
end;

procedure TMaterialCode.Button1Click(Sender: TObject);
//var y,m:word;
begin
{if (CBX2.text='')or (CBX3.text='')  then
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
edate:=endofthemonth(sdate);  }
sdate:=DTP1.Date;
edate:=DTP2.Date;

with SpecMas do
  begin
    active:=false;
    sql.Clear;
    sql.add('select distinct DDZL.GSBH,SCZL.SCBH, SCZL.ZLBH,DDZL.XieXing,DDZL.SheHao,DDZL.DDZT,');
    sql.add('       SCZL.Qty as Qty,DDZL.Article,DDZL.ShipDate,XXZL.CCGB,XXZL.XieMing,KFZL.KFJC');
    sql.add('from SCZL');
    sql.add('left join ZLZL on ZLZL.ZLBH=SCZL.ZLBH');
    sql.add('left join DDZL  on ZLZL.DDBH=DDZL.DDBH');
    sql.add('left join KFZL on KFZL.KFDH=DDZL.KHBH ');
    sql.add('left join XXZL  on DDZL.XieXing=XXZL.XieXing and DDZL.SheHao=XXZL.SheHao');
    sql.Add('where SCZL.SCBH like '+''''+edit1.Text+'%'+'''');
    sql.add('      and KFZL.KFJC like'+''''+'%'+edit3.text+'%'+'''');
    sql.add('      and SCZL.SCBH=SCZL.ZLBH');
    sql.add('      and XXZL.Article like '+''''+edit2.text+'%'+'''');
    sql.add('      and DDZL.GSBH='+''''+main.edit2.text+'''');
    sql.add('      and convert(smalldatetime,convert(varchar,DDZL.ShipDate,111)) between ');
    sql.add('      '''+formatdatetime('yyyy/MM/dd',sdate)+''''+'and '+''''+formatdatetime('yyyy/MM/dd',edate)+'''');
    sql.add('order by SCZL.ZLBH');
    active:=true;
  end;
SpecDet.active:=true;
KCSMPRINT.active:=true;

end;

procedure TMaterialCode.SpecMasAfterScroll(DataSet: TDataSet);
begin
if SpecMas.recordcount>0 then
  E1.text:=inttostr(SpecMas.fieldbyname('Qty').Value)  ;
end;

procedure TMaterialCode.SpecDetAfterOpen(DataSet: TDataSet);
begin
if SpecDet.recordcount>0 then
  begin
    bbt5.Enabled:=true;
    BBt7.Enabled:=true;
   // bbt6.Enabled:=true;
  end
  else
    begin
      bbt5.Enabled:=false;
      BBt7.Enabled:=false;
     // bbt6.Enabled:=true;
    end;
end;

procedure TMaterialCode.bbt5Click(Sender: TObject);
var bm:Tbookmark;
i:integer;
a,b,c,d:string;
bookmarklist:tbookmarklist;
begin
if Panel3.Visible then
  begin
    if SpecMas.FieldByName('Qty').value<>(strtoint(E1.Text)+strtoint(E2.Text)+strtoint(E3.Text)
                                                +strtoint(E4.Text)+strtoint(E5.Text)+strtoint(E6.Text)
                                                +strtoint(E7.Text)+strtoint(E8.Text)+strtoint(E9.Text)
                                                +strtoint(E10.Text)+strtoint(E11.Text)+strtoint(E12.Text)
                                                +strtoint(E13.Text)+strtoint(E14.Text)+strtoint(E15.Text)
                                                +strtoint(E16.Text)+strtoint(E17.Text)+strtoint(E18.Text) ) then
      begin
        showmessage('Qty is not right. Pls check again.');
        abort;
      end;
  end;
SpecDet.disablecontrols;
bm:=SpecDet.getbookmark;
bookmarklist:=dbgrid2.selectedrows;
if bookmarklist.count>0 then
  begin
    try
      for i:=0 to bookmarklist.count-1 do
      begin
        SpecDet.gotobookmark(pointer(bookmarklist[i]));
        with KCSMCL do
          begin  
            active:=false;
            sql.Clear;
            sql.add('select * from KCSMCL '); 
            sql.add('where ZLBH='+''''+SpecDet.fieldbyname('ZLBH').Value+'''');
            sql.Add('      and CLBH='+ ''''+SpecDet.fieldbyname('CLBH').Value+'''');
            sql.add('      and DFL='+''''+SpecDet.fieldbyname('DFL').Value+'''');
            sql.add('      and YN<>'+''''+'1'+'''');
            active:=true;
            if recordcount>0 then
              begin
                showmessage('Already deliver, can not produce new barcode. ');
                SpecDet.gotobookmark(bm);
                SpecDet.freebookmark(bm);
                SpecDet.enablecontrols;
                abort;
              end;
            active:=false;
            sql.Clear;
            sql.add('delete KCSMCL ');
            sql.add('where ZLBH='+''''+SpecDet.fieldbyname('ZLBH').Value+'''');
            sql.Add('      and CLBH='+ ''''+SpecDet.fieldbyname('CLBH').Value+'''');
            sql.add('      and DFL='+''''+SpecDet.fieldbyname('DFL').Value+'''');
            sql.add('      and YN='+''''+'1'+'''');
            execsql;
          end;
        if not panel3.Visible then
          begin
            with query1 do
              begin
                active:=false;
                sql.Clear;
                a:=SpecDet.fieldbyname('ZLBH').Value;
                b:=SpecDet.fieldbyname('CLBH').Value;
                c:=SpecDet.fieldbyname('DFL').Value;
                d:=floattostr(SpecDet.fieldbyname('CLSL').Value);
                sql.add('insert into KCSMCL ');
                sql.add('values( '+''''+a+''''+','+''''+b+''''+','+''''+c+''''+','+''''+'1'+''''+','+d);
                sql.add(','+''''+a+' '+b+'&'+c+'1/'+d+'''' );
                sql.add(',null,getdate(),'+''''+main.edit1.Text+''''+',null,null,'+''''+'1'+''''+')');
                execsql;
              end;
          end
          else
            begin
              with query1 do
                begin
                  if E1.text<>'0' then
                    begin
                      active:=false;
                      sql.Clear;
                      a:=SpecDet.fieldbyname('ZLBH').Value;
                      b:=SpecDet.fieldbyname('CLBH').Value;
                      c:=SpecDet.fieldbyname('DFL').Value;
                      d:=floattostr(trunc(SpecDet.fieldbyname('CLSL').Value*strtoint(E1.text)/SpecMas.fieldbyname('Qty').Value*10+0.9)/10);
                      sql.add('insert into KCSMCL ');
                      sql.add('values( '+''''+a+''''+','+''''+b+''''+','+''''+c+''''+','+''''+'1'+''''+','+d);
                      sql.add(','+''''+a+' '+b+'&'+c+'1/'+d+'''');
                      sql.add(',null,getdate(),'+''''+main.edit1.Text+''''+',null,null,'+''''+'1'+''''+')');
                      execsql;
                    end;
                  if E2.text<>'0' then
                    begin
                      active:=false;
                      sql.Clear;
                      a:=SpecDet.fieldbyname('ZLBH').Value;
                      b:=SpecDet.fieldbyname('CLBH').Value;
                      c:=SpecDet.fieldbyname('DFL').Value;
                      d:=floattostr(trunc(SpecDet.fieldbyname('CLSL').Value*strtoint(E2.text)/SpecMas.fieldbyname('Qty').Value*10+0.9)/10);
                      sql.add('insert into KCSMCL ');
                      sql.add('values( '+''''+a+''''+','+''''+b+''''+','+''''+c+''''+','+''''+'2'+''''+','+d);
                      sql.add(','+''''+a+' '+b+'&'+c+'2/'+d+'''' );
                      sql.add(',null,getdate(),'+''''+main.edit1.Text+''''+',null,null,'+''''+'1'+''''+')');
                      execsql;
                    end;
                  if E3.text<>'0' then
                    begin
                      active:=false;
                      sql.Clear;
                      a:=SpecDet.fieldbyname('ZLBH').Value;
                      b:=SpecDet.fieldbyname('CLBH').Value;
                      c:=SpecDet.fieldbyname('DFL').Value;
                      d:=floattostr(trunc(SpecDet.fieldbyname('CLSL').Value*strtoint(E3.text)/SpecMas.fieldbyname('Qty').Value*10+0.9)/10);
                      sql.add('insert into KCSMCL ');
                      sql.add('values( '+''''+a+''''+','+''''+b+''''+','+''''+c+''''+','+''''+'3'+''''+','+d);
                      sql.add(','+''''+a+' '+b+'&'+c+'3/'+d+'''');
                      sql.add(',null,getdate(),'+''''+main.edit1.Text+''''+',null,null,'+''''+'1'+''''+')');
                      execsql;
                    end;
                  if E4.text<>'0' then
                    begin
                      active:=false;
                      sql.Clear;
                      a:=SpecDet.fieldbyname('ZLBH').Value;
                      b:=SpecDet.fieldbyname('CLBH').Value;
                      c:=SpecDet.fieldbyname('DFL').Value;
                      d:=floattostr(trunc(SpecDet.fieldbyname('CLSL').Value*strtoint(E4.text)/SpecMas.fieldbyname('Qty').Value*10+0.9)/10);
                      sql.add('insert into KCSMCL ');
                      sql.add('values( '+''''+a+''''+','+''''+b+''''+','+''''+c+''''+','+''''+'4'+''''+','+d);
                      sql.add(','+''''+a+' '+b+'&'+c+'4/'+d+'''');
                      sql.add(',null,getdate(),'+''''+main.edit1.Text+''''+',null,null,'+''''+'1'+''''+')');
                      execsql;
                    end;
                  if E5.text<>'0' then
                    begin
                      active:=false;
                      sql.Clear;
                      a:=SpecDet.fieldbyname('ZLBH').Value;
                      b:=SpecDet.fieldbyname('CLBH').Value;
                      c:=SpecDet.fieldbyname('DFL').Value;
                      d:=floattostr(trunc(SpecDet.fieldbyname('CLSL').Value*strtoint(E5.text)/SpecMas.fieldbyname('Qty').Value*10+0.9)/10);
                      sql.add('insert into KCSMCL ');
                      sql.add('values( '+''''+a+''''+','+''''+b+''''+','+''''+c+''''+','+''''+'5'+''''+','+d);
                      sql.add(','+''''+a+' '+b+'&'+c+'5/'+d+'''');
                      sql.add(',null,getdate(),'+''''+main.edit1.Text+''''+',null,null,'+''''+'1'+''''+')');
                      execsql;
                    end;
                  if E6.text<>'0' then
                    begin
                      active:=false;
                      sql.Clear;
                      a:=SpecDet.fieldbyname('ZLBH').Value;
                      b:=SpecDet.fieldbyname('CLBH').Value;
                      c:=SpecDet.fieldbyname('DFL').Value;
                      d:=floattostr(trunc(SpecDet.fieldbyname('CLSL').Value*strtoint(E6.text)/SpecMas.fieldbyname('Qty').Value*10+0.9)/10);
                      sql.add('insert into KCSMCL ');
                      sql.add('values( '+''''+a+''''+','+''''+b+''''+','+''''+c+''''+','+''''+'6'+''''+','+d);
                      sql.add(','+''''+a+' '+b+'&'+c+'6/'+d+'''' );
                      sql.add(',null,getdate(),'+''''+main.edit1.Text+''''+',null,null,'+''''+'1'+''''+')');
                      execsql;
                    end;
                  if E7.text<>'0' then
                    begin
                      active:=false;
                      sql.Clear;
                      a:=SpecDet.fieldbyname('ZLBH').Value;
                      b:=SpecDet.fieldbyname('CLBH').Value;
                      c:=SpecDet.fieldbyname('DFL').Value;
                      d:=floattostr(trunc(SpecDet.fieldbyname('CLSL').Value*strtoint(E7.text)/SpecMas.fieldbyname('Qty').Value*10+0.9)/10);
                      sql.add('insert into KCSMCL ');
                      sql.add('values( '+''''+a+''''+','+''''+b+''''+','+''''+c+''''+','+''''+'7'+''''+','+d);
                      sql.add(','+''''+a+' '+b+'&'+c+'7/'+d+'''' );
                      sql.add(',null,getdate(),'+''''+main.edit1.Text+''''+',null,null,'+''''+'1'+''''+')');
                      execsql;
                    end;
                  if E8.text<>'0' then
                    begin
                      active:=false;
                      sql.Clear;
                      a:=SpecDet.fieldbyname('ZLBH').Value;
                      b:=SpecDet.fieldbyname('CLBH').Value;
                      c:=SpecDet.fieldbyname('DFL').Value;
                      d:=floattostr(trunc(SpecDet.fieldbyname('CLSL').Value*strtoint(E8.text)/SpecMas.fieldbyname('Qty').Value*10+0.9)/10);
                      sql.add('insert into KCSMCL ');
                      sql.add('values( '+''''+a+''''+','+''''+b+''''+','+''''+c+''''+','+''''+'8'+''''+','+d);
                      sql.add(','+''''+a+' '+b+'&'+c+'8/'+d+'''' );
                      sql.add(',null,getdate(),'+''''+main.edit1.Text+''''+',null,null,'+''''+'1'+''''+')');
                      execsql;
                    end;  
                  if E9.text<>'0' then
                    begin
                      active:=false;
                      sql.Clear;
                      a:=SpecDet.fieldbyname('ZLBH').Value;
                      b:=SpecDet.fieldbyname('CLBH').Value;
                      c:=SpecDet.fieldbyname('DFL').Value;
                      d:=floattostr(trunc(SpecDet.fieldbyname('CLSL').Value*strtoint(E9.text)/SpecMas.fieldbyname('Qty').Value*10+0.9)/10);
                      sql.add('insert into KCSMCL ');
                      sql.add('values( '+''''+a+''''+','+''''+b+''''+','+''''+c+''''+','+''''+'9'+''''+','+d);
                      sql.add(','+''''+a+' '+b+'&'+c+'9/'+d+'''' );
                      sql.add(',null,getdate(),'+''''+main.edit1.Text+''''+',null,null,'+''''+'1'+''''+')');
                      execsql;
                    end; 
                  if E10.text<>'0' then
                    begin
                      active:=false;
                      sql.Clear;
                      a:=SpecDet.fieldbyname('ZLBH').Value;
                      b:=SpecDet.fieldbyname('CLBH').Value;
                      c:=SpecDet.fieldbyname('DFL').Value;
                      d:=floattostr(trunc(SpecDet.fieldbyname('CLSL').Value*strtoint(E10.text)/SpecMas.fieldbyname('Qty').Value*10+0.9)/10);
                      sql.add('insert into KCSMCL ');
                      sql.add('values( '+''''+a+''''+','+''''+b+''''+','+''''+c+''''+','+''''+'10'+''''+','+d);
                      sql.add(','+''''+a+' '+b+'&'+c+'10/'+d+'''' );
                      sql.add(',null,getdate(),'+''''+main.edit1.Text+''''+',null,null,'+''''+'1'+''''+')');
                      execsql;
                    end;
                  if E11.text<>'0' then
                    begin
                      active:=false;
                      sql.Clear;
                      a:=SpecDet.fieldbyname('ZLBH').Value;
                      b:=SpecDet.fieldbyname('CLBH').Value;
                      c:=SpecDet.fieldbyname('DFL').Value;
                      d:=floattostr(trunc(SpecDet.fieldbyname('CLSL').Value*strtoint(E11.text)/SpecMas.fieldbyname('Qty').Value*10+0.9)/10);
                      sql.add('insert into KCSMCL ');
                      sql.add('values( '+''''+a+''''+','+''''+b+''''+','+''''+c+''''+','+''''+'11'+''''+','+d);
                      sql.add(','+''''+a+' '+b+'&'+c+'11/'+d+'''' );
                      sql.add(',null,getdate(),'+''''+main.edit1.Text+''''+',null,null,'+''''+'1'+''''+')');
                      execsql;
                    end;
                  if E12.text<>'0' then
                    begin
                      active:=false;
                      sql.Clear;
                      a:=SpecDet.fieldbyname('ZLBH').Value;
                      b:=SpecDet.fieldbyname('CLBH').Value;
                      c:=SpecDet.fieldbyname('DFL').Value;
                      d:=floattostr(trunc(SpecDet.fieldbyname('CLSL').Value*strtoint(E12.text)/SpecMas.fieldbyname('Qty').Value*10+0.9)/10);
                      sql.add('insert into KCSMCL ');
                      sql.add('values( '+''''+a+''''+','+''''+b+''''+','+''''+c+''''+','+''''+'12'+''''+','+d);
                      sql.add(','+''''+a+' '+b+'&'+c+'12/'+d+'''' );
                      sql.add(',null,getdate(),'+''''+main.edit1.Text+''''+',null,null,'+''''+'1'+''''+')');
                      execsql;
                    end; 
                  if E13.text<>'0' then
                    begin
                      active:=false;
                      sql.Clear;
                      a:=SpecDet.fieldbyname('ZLBH').Value;
                      b:=SpecDet.fieldbyname('CLBH').Value;
                      c:=SpecDet.fieldbyname('DFL').Value;
                      d:=floattostr(trunc(SpecDet.fieldbyname('CLSL').Value*strtoint(E13.text)/SpecMas.fieldbyname('Qty').Value*10+0.9)/10);
                      sql.add('insert into KCSMCL ');
                      sql.add('values( '+''''+a+''''+','+''''+b+''''+','+''''+c+''''+','+''''+'13'+''''+','+d);
                      sql.add(','+''''+a+' '+b+'&'+c+'13/'+d+'''' );
                      sql.add(',null,getdate(),'+''''+main.edit1.Text+''''+',null,null,'+''''+'1'+''''+')');
                      execsql;
                    end; 
                  if E14.text<>'0' then
                    begin
                      active:=false;
                      sql.Clear;
                      a:=SpecDet.fieldbyname('ZLBH').Value;
                      b:=SpecDet.fieldbyname('CLBH').Value;
                      c:=SpecDet.fieldbyname('DFL').Value;
                      d:=floattostr(trunc(SpecDet.fieldbyname('CLSL').Value*strtoint(E14.text)/SpecMas.fieldbyname('Qty').Value*10+0.9)/10);
                      sql.add('insert into KCSMCL ');
                      sql.add('values( '+''''+a+''''+','+''''+b+''''+','+''''+c+''''+','+''''+'14'+''''+','+d);
                      sql.add(','+''''+a+' '+b+'&'+c+'14/'+d+'''' );
                      sql.add(',null,getdate(),'+''''+main.edit1.Text+''''+',null,null,'+''''+'1'+''''+')');
                      execsql;
                    end; 
                  if E15.text<>'0' then
                    begin
                      active:=false;
                      sql.Clear;
                      a:=SpecDet.fieldbyname('ZLBH').Value;
                      b:=SpecDet.fieldbyname('CLBH').Value;
                      c:=SpecDet.fieldbyname('DFL').Value;
                      d:=floattostr(trunc(SpecDet.fieldbyname('CLSL').Value*strtoint(E15.text)/SpecMas.fieldbyname('Qty').Value*10+0.9)/10);
                      sql.add('insert into KCSMCL ');
                      sql.add('values( '+''''+a+''''+','+''''+b+''''+','+''''+c+''''+','+''''+'15'+''''+','+d);
                      sql.add(','+''''+a+' '+b+'&'+c+'15/'+d+'''' );
                      sql.add(',null,getdate(),'+''''+main.edit1.Text+''''+',null,null,'+''''+'1'+''''+')');
                      execsql;
                    end;
                  if E16.text<>'0' then
                    begin
                      active:=false;
                      sql.Clear;
                      a:=SpecDet.fieldbyname('ZLBH').Value;
                      b:=SpecDet.fieldbyname('CLBH').Value;
                      c:=SpecDet.fieldbyname('DFL').Value;
                      d:=floattostr(trunc(SpecDet.fieldbyname('CLSL').Value*strtoint(E16.text)/SpecMas.fieldbyname('Qty').Value*10+0.9)/10);
                      sql.add('insert into KCSMCL ');
                      sql.add('values( '+''''+a+''''+','+''''+b+''''+','+''''+c+''''+','+''''+'16'+''''+','+d);
                      sql.add(','+''''+a+' '+b+'&'+c+'16/'+d+'''' );
                      sql.add(',null,getdate(),'+''''+main.edit1.Text+''''+',null,null,'+''''+'1'+''''+')');
                      execsql;
                    end; 
                  if E17.text<>'0' then
                    begin
                      active:=false;
                      sql.Clear;
                      a:=SpecDet.fieldbyname('ZLBH').Value;
                      b:=SpecDet.fieldbyname('CLBH').Value;
                      c:=SpecDet.fieldbyname('DFL').Value;
                      d:=floattostr(trunc(SpecDet.fieldbyname('CLSL').Value*strtoint(E17.text)/SpecMas.fieldbyname('Qty').Value*10+0.9)/10);
                      sql.add('insert into KCSMCL ');
                      sql.add('values( '+''''+a+''''+','+''''+b+''''+','+''''+c+''''+','+''''+'17'+''''+','+d);
                      sql.add(','+''''+a+' '+b+'&'+c+'17/'+d+'''' );
                      sql.add(',null,getdate(),'+''''+main.edit1.Text+''''+',null,null,'+''''+'1'+''''+')');
                      execsql;
                    end;
                  if E18.text<>'0' then
                    begin
                      active:=false;
                      sql.Clear;
                      a:=SpecDet.fieldbyname('ZLBH').Value;
                      b:=SpecDet.fieldbyname('CLBH').Value;
                      c:=SpecDet.fieldbyname('DFL').Value;
                      d:=floattostr(trunc(SpecDet.fieldbyname('CLSL').Value*strtoint(E18.text)/SpecMas.fieldbyname('Qty').Value*10+0.9)/10);
                      sql.add('insert into KCSMCL ');
                      sql.add('values( '+''''+a+''''+','+''''+b+''''+','+''''+c+''''+','+''''+'18'+''''+','+d);
                      sql.add(','+''''+a+' '+b+'&'+c+'18/'+d+'''' );
                      sql.add(',null,getdate(),'+''''+main.edit1.Text+''''+',null,null,'+''''+'1'+''''+')');
                      execsql;
                    end;
                end;
            end;
      end;
        KCSMPRINT.Active:=false;
        KCSMPRINT.Active:=true;
    except
      showmessage('Already deliver the order material,can not do it.');
    end;
  end;
SpecDet.gotobookmark(bm);
SpecDet.freebookmark(bm);
SpecDet.enablecontrols;
end;

procedure TMaterialCode.Divide1Click(Sender: TObject);
begin
panel3.Visible:=true;
E1.Text:='0';
E2.Text:='0';
E3.Text:='0';
E4.Text:='0';
E5.Text:='0';
E6.Text:='0';
E7.Text:='0';
E8.Text:='0';
E9.Text:='0';
E10.Text:='0';
E11.Text:='0';
E12.Text:='0';
E13.Text:='0';
E14.Text:='0';
E15.Text:='0';
E16.Text:='0';
E17.Text:='0';
E18.Text:='0';
end;

procedure TMaterialCode.E1Exit(Sender: TObject);
begin

if E1.text='' then
E1.setfocus;
end;

procedure TMaterialCode.E2Exit(Sender: TObject);
begin

if E2.text='' then
E2.setfocus;
end;

procedure TMaterialCode.E3Exit(Sender: TObject);
begin

if E3.text='' then
E3.setfocus;
end;

procedure TMaterialCode.E4Exit(Sender: TObject);
begin

if E4.text='' then
E4.setfocus;
end;

procedure TMaterialCode.E5Exit(Sender: TObject);
begin

if E5.text='' then
E5.setfocus;
end;

procedure TMaterialCode.E6Exit(Sender: TObject);
begin
if E6.text='' then
E6.setfocus;
end;

procedure TMaterialCode.Button2Click(Sender: TObject);
begin
Panel3.visible:=false;
end;

procedure TMaterialCode.E1KeyPress(Sender: TObject; var Key: Char);
begin

if  not (Key in ['0'..'9',#8,#13]) then
   Key := #0;
end;

procedure TMaterialCode.E2KeyPress(Sender: TObject; var Key: Char);
begin

if  not (Key in ['0'..'9',#8,#13]) then
   Key := #0;
if E1.text='0' then
  begin
    Key:=#0;
    E1.SetFocus;
  end;
end;

procedure TMaterialCode.E3KeyPress(Sender: TObject; var Key: Char);
begin

if  not (Key in ['0'..'9',#8,#13]) then
   Key := #0;
if E2.text='0' then
  begin
    Key:=#0;
    E2.SetFocus;
  end;
end;

procedure TMaterialCode.E4KeyPress(Sender: TObject; var Key: Char);
begin
if  not (Key in ['0'..'9',#8,#13]) then
   Key := #0;
if E3.text='0' then
  begin
    Key:=#0;
    E3.SetFocus;
  end;
end;

procedure TMaterialCode.E5KeyPress(Sender: TObject; var Key: Char);
begin
if  not (Key in ['0'..'9',#8,#13]) then
   Key := #0;
if E4.text='0' then
  begin
    Key:=#0;
    E4.SetFocus;
  end;
end;

procedure TMaterialCode.E6KeyPress(Sender: TObject; var Key: Char);
begin
if  not (Key in ['0'..'9',#8,#13]) then
   Key := #0;
if E5.text='0' then
  begin
    Key:=#0;
    E5.SetFocus;
  end;
end;

procedure TMaterialCode.E7Exit(Sender: TObject);
begin
if E7.text='' then
E7.setfocus;
end;

procedure TMaterialCode.E8Exit(Sender: TObject);
begin
if E8.text='' then
E8.setfocus;
end;

procedure TMaterialCode.E9Exit(Sender: TObject);
begin
if E9.text='' then
E9.setfocus;
end;

procedure TMaterialCode.E10Exit(Sender: TObject);
begin
if E10.text='' then
E10.setfocus;
end;

procedure TMaterialCode.E11Exit(Sender: TObject);
begin
if E11.text='' then
E11.setfocus;
end;

procedure TMaterialCode.E12Exit(Sender: TObject);
begin
if E12.text='' then
E12.setfocus;
end;

procedure TMaterialCode.E13Exit(Sender: TObject);
begin
if E13.text='' then
E13.setfocus;
end;

procedure TMaterialCode.E14Exit(Sender: TObject);
begin
if E14.text='' then
E14.setfocus;
end;

procedure TMaterialCode.E15Exit(Sender: TObject);
begin

if E15.text='' then
E15.setfocus;
end;

procedure TMaterialCode.E16Exit(Sender: TObject);
begin

if E16.text='' then
E16.setfocus;
end;

procedure TMaterialCode.E17Exit(Sender: TObject);
begin

if E17.text='' then
E17.setfocus;
end;

procedure TMaterialCode.E18Exit(Sender: TObject);
begin

if E18.text='' then
E18.setfocus;
end;

procedure TMaterialCode.E7KeyPress(Sender: TObject; var Key: Char);
begin
if  not (Key in ['0'..'9',#8,#13]) then
   Key := #0;  
if E6.text='0' then
  begin
    Key:=#0;
    E6.SetFocus;
  end;
end;

procedure TMaterialCode.E8KeyPress(Sender: TObject; var Key: Char);
begin
if  not (Key in ['0'..'9',#8,#13]) then
   Key := #0; 
if E7.text='0' then
  begin
    Key:=#0;
    E7.SetFocus;
  end;
end;

procedure TMaterialCode.E9KeyPress(Sender: TObject; var Key: Char);
begin
if  not (Key in ['0'..'9',#8,#13]) then
   Key := #0;  
if E8.text='0' then
  begin
    Key:=#0;
    E8.SetFocus;
  end;
end;

procedure TMaterialCode.E10KeyPress(Sender: TObject; var Key: Char);
begin
if  not (Key in ['0'..'9',#8,#13]) then
   Key := #0;
if E9.text='0' then
  begin
    Key:=#0;
    E9.SetFocus;
  end;
end;

procedure TMaterialCode.E11KeyPress(Sender: TObject; var Key: Char);
begin
if  not (Key in ['0'..'9',#8,#13]) then
   Key := #0; 
if E10.text='0' then
  begin
    Key:=#0;
    E10.SetFocus;
  end;
end;

procedure TMaterialCode.E12KeyPress(Sender: TObject; var Key: Char);
begin
if  not (Key in ['0'..'9',#8,#13]) then
   Key := #0; 
if E11.text='0' then
  begin
    Key:=#0;
    E11.SetFocus;
  end;
end;

procedure TMaterialCode.E13KeyPress(Sender: TObject; var Key: Char);
begin
if  not (Key in ['0'..'9',#8,#13]) then
   Key := #0; 
if E12.text='0' then
  begin
    Key:=#0;
    E12.SetFocus;
  end;
end;

procedure TMaterialCode.E14KeyPress(Sender: TObject; var Key: Char);
begin
if  not (Key in ['0'..'9',#8,#13]) then
   Key := #0;
if E13.text='0' then
  begin
    Key:=#0;
    E13.SetFocus;
  end;
end;

procedure TMaterialCode.E15KeyPress(Sender: TObject; var Key: Char);
begin
if  not (Key in ['0'..'9',#8,#13]) then
   Key := #0; 
if E14.text='0' then
  begin
    Key:=#0;
    E13.SetFocus;
  end;
end;

procedure TMaterialCode.E16KeyPress(Sender: TObject; var Key: Char);
begin
if  not (Key in ['0'..'9',#8,#13]) then
   Key := #0;  
if E15.text='0' then
  begin
    Key:=#0;
    E15.SetFocus;
  end;
end;

procedure TMaterialCode.E17KeyPress(Sender: TObject; var Key: Char);
begin
if  not (Key in ['0'..'9',#8,#13]) then
   Key := #0; 
if E16.text='0' then
  begin
    Key:=#0;
    E16.SetFocus;
  end;
end;

procedure TMaterialCode.E18KeyPress(Sender: TObject; var Key: Char);
begin
if  not (Key in ['0'..'9',#8,#13]) then
   Key := #0;  
if E17.text='0' then
  begin
    Key:=#0;
    E17.SetFocus;
  end;
end;

procedure TMaterialCode.SpecDetCalcFields(DataSet: TDataSet);
begin
with SpecDet do
  begin
    fieldbyname('NQty').Value:=fieldbyname('KCQty').Value-fieldbyname('ZBQty').Value ;
  end;
end;

procedure TMaterialCode.FormDestroy(Sender: TObject);
begin
MaterialCode:=nil;
end;

procedure TMaterialCode.BBT7Click(Sender: TObject);
begin
MaterialCode_Print:=TMaterialCode_Print.create(self);
MaterialCode_Print.show;
end;

end.
