unit DelMaterial1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, DB, DBTables, Grids, DBGrids,comobj,
  DBCtrls, ComCtrls, Menus, Mask,dateutils;

type
  TDelMaterial = class(TForm)
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
    SpecMas: TQuery;
    DS1: TDataSource;
    PC1: TPageControl;
    TS1: TTabSheet;
    TS2: TTabSheet;
    DBGrid1: TDBGrid;
    Panel5: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Query1: TQuery;
    PopupMenu1: TPopupMenu;
    DeliverMaterial1: TMenuItem;
    SpecDet: TQuery;
    DS2: TDataSource;
    DBGrid2: TDBGrid;
    Panel2: TPanel;
    SpecMasSCBH: TStringField;
    SpecMasZLBH: TStringField;
    SpecMasXieXing: TStringField;
    SpecMasSheHao: TStringField;
    SpecMasQty: TFloatField;
    SpecMasArticle: TStringField;
    SpecMasShipDate: TDateTimeField;
    SpecMasCCGB: TStringField;
    SpecMasXieMing: TStringField;
    SpecDetbwbh: TStringField;
    SpecDetclbh: TStringField;
    SpecDetclsl: TFloatField;
    SpecDetUSAGE: TFloatField;
    SpecDetBWMCY: TStringField;
    SpecDetCLMCY: TStringField;
    SpecDetdwbh: TStringField;
    SpecDetLOSS: TFloatField;
    SpecDetDFL: TStringField;
    SpecDetXFL: TStringField;
    SpecDetYN: TStringField;
    SpecDetLYCC: TStringField;
    Label5: TLabel;
    DBEdit1: TDBEdit;
    Label6: TLabel;
    DBEdit2: TDBEdit;
    TS3: TTabSheet;
    TS4: TTabSheet;
    Panel3: TPanel;
    Panel4: TPanel;
    DBGrid3: TDBGrid;
    DelMas: TQuery;
    DS3: TDataSource;
    Label9: TLabel;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    Label10: TLabel;
    Label11: TLabel;
    DBEdit5: TDBEdit;
    Label12: TLabel;
    Label13: TLabel;
    DBNavigator2: TDBNavigator;
    DBEdit6: TDBEdit;
    UpMas: TUpdateSQL;
    Label14: TLabel;
    DBEdit8: TDBEdit;
    DBEdit7: TDBEdit;
    BBTT1: TBitBtn;
    DelDet: TQuery;
    DelMasLLNO: TStringField;
    DelMasSCBH: TStringField;
    DelMasDepID: TStringField;
    DelMasUSERDATE: TDateTimeField;
    DelMasUSERID: TStringField;
    DelMasCFMDate: TDateTimeField;
    DelMasCFMID: TStringField;
    DelMasYN: TStringField;
    DelMasDepName: TStringField;
    Label7: TLabel;
    Label8: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBGrid4: TDBGrid;
    DS4: TDataSource;
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
    UPDet: TUpdateSQL;
    DelDetLLNO: TStringField;
    DelDetCLBH: TStringField;
    DelDetTempQty: TCurrencyField;
    DelDetQty: TCurrencyField;
    DelDetUSPrice: TCurrencyField;
    DelDetCostID: TStringField;
    DelDetUSERDATE: TDateTimeField;
    DelDetUSERID: TStringField;
    DelDetYN: TStringField;
    DelDetYWPM: TStringField;
    DelDetDWBH: TStringField;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    DBMemo1: TDBMemo;
    DBEdit13: TDBEdit;
    BBTT2: TBitBtn;
    DelDetSCBH: TStringField;
    DelDetCWHL: TIntegerField;
    DelDetDFL: TStringField;
    Label21: TLabel;
    DBEdit14: TDBEdit;
    Button2: TButton;
    DelDetCLSL: TCurrencyField;
    DelDetperson: TFloatField;
    SpecMasDDZT: TStringField;
    DelDetVNPrice: TFloatField;
    SpecMasYN: TStringField;
    Edit2: TEdit;
    DelMasGSBH: TStringField;
    DelMasCKBH: TStringField;
    DBX2: TDBComboBox;
    SpecMasGSBH: TStringField;
    BDelRec: TQuery;
    DelMasPMark: TIntegerField;
    CheckBox1: TCheckBox;
    SpecMasSB: TStringField;
    Label3: TLabel;
    DTP1: TDateTimePicker;
    Label4: TLabel;
    DTP2: TDateTimePicker;
    qryCGNO: TQuery;
    qryCGNOCGNO: TStringField;
    CB2: TCheckBox;
    Label22: TLabel;
    Edit3: TEdit;
    DelDetHGLB: TStringField;
    DelDetCNO: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure BB1Click(Sender: TObject);
    procedure BB7Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DeliverMaterial1Click(Sender: TObject);
    procedure BBT1Click(Sender: TObject);
    procedure BBT2Click(Sender: TObject);
    procedure BBT3Click(Sender: TObject);
    procedure BBT4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DelMasAfterOpen(DataSet: TDataSet);
    procedure SpecDetAfterOpen(DataSet: TDataSet);
    procedure BB2Click(Sender: TObject);
    procedure BB3Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure BBTT1Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure DBGrid3DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid3EditButtonClick(Sender: TObject);
    procedure DelDetAfterOpen(DataSet: TDataSet);
    procedure PC1Change(Sender: TObject);
    procedure BD7Click(Sender: TObject);
    procedure BD2Click(Sender: TObject);
    procedure BD3Click(Sender: TObject);
    procedure BD5Click(Sender: TObject);
    procedure BD4Click(Sender: TObject);
    procedure BD6Click(Sender: TObject);
    procedure BBTT2Click(Sender: TObject);
    procedure DBGrid4EditButtonClick(Sender: TObject);
    procedure DBGrid4DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure BDT1Click(Sender: TObject);
    procedure BDT2Click(Sender: TObject);
    procedure BDT3Click(Sender: TObject);
    procedure BDT4Click(Sender: TObject);
    procedure BDT5Click(Sender: TObject);
    procedure DBGrid3DblClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure DelDetCalcFields(DataSet: TDataSet);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DelMaterial: TDelMaterial;
  sdate,edate,NDate:Tdate;

implementation

uses DelMaterial_Dep1, main1, DelMaterial_CL1, DelMaterial_Print1,
  DelMaterial_CT1;

{$R *.dfm}

procedure TDelMaterial.FormClose(Sender: TObject;
  var Action: TCloseAction);
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
          panel1.Visible:=false;
          panel6.Visible:=true;
          action:=canone;
        end
          else
            begin
              action:=Cafree;
            end;
    end;
end;

procedure TDelMaterial.Button1Click(Sender: TObject);
begin

  sdate:=DTP1.Date;
  edate:=DTP2.Date;

  with SpecMas do
  begin
    active:=false;
    sql.Clear;
    sql.add('select distinct SCZL.SCBH, SCZL.ZLBH,DDZL.XieXing,DDZL.SheHao, DDZL.XieXing,DDZL.GSBH,');
    sql.add('       convert(numeric,DDZL.Pairs) as Qty,DDZL.Article,DDZL.ShipDate,XXZL.CCGB,XXZL.XieMing,');
    sql.add('       DDZL.DDZT,DDZL.YN,DDZL.YN as SB');
    sql.add('from SCZL');
    sql.add('left join ZLZL on ZLZL.ZLBH=SCZL.ZLBH');
    sql.add('left join DDZL  on ZLZL.DDBH=DDZL.DDBH');
    sql.add('left join KFZL on KFZL.KFDH=DDZL.KHBH ');
    sql.add('left join XXZL  on DDZL.XieXing=XXZL.XieXing and DDZL.SheHao=XXZL.SheHao');
    sql.add('left join SCZLDate on SCZLDate.ZLBH=ZLZL.ZLBH ');
    sql.Add('where SCZL.SCBH like '+''''+edit1.Text+'%'+'''');
    sql.add('      and KFZL.KFJC like'+''''+'%'+edit2.Text+'%'+'''');
    if not checkbox1.Checked then
    begin
        sql.add('      and DDZL.GSBH='+''''+main.Edit2.Text+'''');
    end else
    begin
          sql.add('and SCZLDate.GSBH='+''''+ main.Edit2.Text+'''');
    end;
    sql.add('      and SCZL.SCBH=SCZL.ZLBH');
    sql.add('      and convert(smalldatetime,convert(varchar,DDZL.ShipDate,111)) between ');
    sql.add('      '''+formatdatetime('yyyy/MM/dd',sdate)+''''+'and '+''''+formatdatetime('yyyy/MM/dd',edate)+'''');
    sql.add('order by SCZL.ZLBH');
    active:=true;
  end;
  with SpecDet do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('SELECT ZLZLS2.bwbh ,zlzls2.clbh AS clbh  ,sum(zlzls2.clsl) AS clsl ,MAX(ZLZLS2.USAGE) AS USAGE,max(BWZL.ywsm) AS BWMCY ,');
    SQL.Add('       max(CLZL.ywpm) AS CLMCY ,max(CLZL.dwbh) AS dwbh,XXZLS.LOSS, XXBWFLS.DFL,XXBWFLS.XFL,ZLZLS2.YN,CLZL.LYCC');
    if CB2.Checked=true then
      SQL.Add('FROM (select * from ZLZLS2 UNION ALL select * from ZLZLS2_2014 ) AS ZLZLS2 ')
    else
      SQL.Add('FROM ZLZLS2 AS ZLZLS2 ');
    SQL.Add('LEFT JOIN BWZL AS BWZL ON ZLZLS2.BWBH = BWZL.bwdh ');
    SQL.Add('LEFT JOIN CLZL AS CLZL ON ZLZLS2.CLBH = CLZL.cldh ');
    SQL.Add('left join (select distinct  SCZL.SCBH,SCZL.ZLBH from SCZL where SCZL.ZLBH=:ZLBH) SCZL on SCZL.SCBH=ZLZLS2.ZLBH');
    SQL.Add('LEFT JOIN DDZL AS DDZL ON SCZL.ZLBH = DDZL.ZLBH ');
    SQL.Add('LEFT JOIN XXZLS AS XXZLS ON DDZL.XIEXING = XXZLS.XIEXING ');
    SQL.Add('        AND DDZL.SHEHAO = XXZLS.SHEHAO AND ZLZLS2.BWBH = XXZLS.BWBH AND ZLZLS2.CLBH = XXZLS.CLBH ');
    SQL.Add('left join XXBWFL on XXBWFL.XieXing=DDZL.XieXing  and  XXBWFL.BWBH=ZLZLS2.BWBH ');
    SQL.Add('left join XXBWFLS on XXBWFLS.FLBH=XXBWFL.FLBH');
    SQL.Add(' ');
    SQL.Add('where  ZLZLS2.ZLBH=:SCBH and ZLZLS2.MJBH=''ZZZZZZZZZZ''');
    SQL.Add('GROUP BY zlzls2.zlbh,zlzls2.bwbh,zlzls2.clbh,XXZLS.CLSL,CLZL.CQDH,XXZLS.LOSS,XXBWFLS.DFL,XXBWFLS.XFL,ZLZLS2.YN,CLZL.LYCC');
    SQL.Add('ORDER BY zlzls2.zlbh , zlzls2.bwbh ASC');
  end;
  with DelMas do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select KCLL.*,BDepartment.DepName ');
    if CB2.Checked=true then
      SQL.Add('from (select * from KCLL union all select * from KCLL_2014) KCLL ')
    else
      SQL.Add('from KCLL ');
    SQL.Add('left join BDepartment on KCLL.DepID=BDepartment.ID ');
    SQL.Add('where SCBH=:SCBH ');
    if Edit3.Text<>'' then
    SQL.Add(' and KCLL.LLNO like '''+Edit3.Text+'%'' ');
    SQL.Add('order by LLNO DESC ');
  end;
  with DelDet do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select KCLLS.*,CLZL.YWPM,CLZL.DWBH ');
    if CB2.Checked=true then
      SQL.Add('from (select * from KCLLS Union All select * from KCLLS_2014 ) KCLLS ')
    else
      SQL.Add('from KCLLS ');
    SQL.Add('left join CLZL on CLZL.CLDH=KCLLS.CLBH ');
    SQL.Add('where KCLLS.LLNO=:LLNO ');
    SQL.Add('order by KCLLS.DFL ,KCLLS.CLBH ');
  end;
  //
  SpecDet.active:=true;
  DelMas.Active:=true;
end;

procedure TDelMaterial.BB1Click(Sender: TObject);
begin
PC1.ActivePage:=TS1;
panel5.Visible:=true;
edit1.SetFocus;
end;

procedure TDelMaterial.BB7Click(Sender: TObject);
begin
close;
end;

procedure TDelMaterial.DBGrid1DblClick(Sender: TObject);
begin
if SpecMas.recordcount>0 then
  begin
    PC1.ActivePage:=TS2;
  end;
end;

procedure TDelMaterial.DeliverMaterial1Click(Sender: TObject);
begin
DBGrid1DblClick(nil);
end;

procedure TDelMaterial.BBT1Click(Sender: TObject);
begin
DelMas.First;
end;

procedure TDelMaterial.BBT2Click(Sender: TObject);
begin
DelMas.Prior;
end;

procedure TDelMaterial.BBT3Click(Sender: TObject);
begin
DelMas.Next;
end;

procedure TDelMaterial.BBT4Click(Sender: TObject);
begin
DelMas.Last;
end;

procedure TDelMaterial.FormCreate(Sender: TObject);
var i:integer;  
 {y,m,d:word;
ayear,amonth:string;  }
begin
with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select CKBH from KCCK order by CKBH');
    active:=true;
    DBX2.Items.Clear;
    for i:=1 to recordcount do
      begin
        DBX2.Items.Add(fieldbyname('CKBH').asstring);
        next;
      end;
    active:=false;
    sql.Clear;
    sql.add('select getdate() as NDate ');
    active:=true;
    NDate:=fieldbyname('NDate').Value;
    active:=false;
  end;

 {
try
decodedate(NDate,y,m,d);
sdate:=startofthemonth(NDate);
edate:=endofthemonth(NDate);
decodedate(incmonth(NDate,-1),y,m,d);
ayear:=inttostr(y);
amonth:=inttostr(m);
if  length(amonth)<2  then
  begin
    amonth:='0'+amonth;
  end;

with Query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('  if object_id('+''''+'tempdb..#CLZLKC1'+''''+') is not null  ');
    sql.add('begin   drop table #CLZLKC1 end   ');

    sql.Add('select KCZLS.CLBH,LastKC.LastRem,RK.RKQty,LL.LLQty,JGRK.JGRK,JGCK.JGCK,KCZLS.CKBH');
    sql.add(' into #CLZLKC1 from KCZLS ');

    sql.add('left join (select KCCLMONTH.CKBH,KCCLMONTH.CLBH,KCCLMONTH.Qty as LastRem ');
    sql.add('           from KCCLMONTH  where KCCLMONTH.KCYEAR='+''''+ayear+'''');
    sql.add('                                 and KCMONTH='+''''+amonth+'''');
    sql.add('           ) LastKC on LastKC.CLBH=KCZLS.CLBH and LastKC.CKBH=KCZLS.CKBH');

    sql.add('left join (select KCRK.CKBH,KCRKS.CLBH,sum(KCRKS.Qty) as RKQty from KCRKS');
    sql.add('           left join KCRK on KCRK.RKNO=KCRKS.RKNO ');
    sql.add('           where convert(smalldatetime,convert(varchar,KCRK.USERDATE,111)) between ') ;
    sql.add('                 '''+formatdatetime('yyyy/MM/dd',sdate)+''''+'and '+''''+formatdatetime('yyyy/MM/dd',edate)+''''  );
    sql.add('           group by KCRK.CKBH,KCRKS.CLBH) RK on RK.CLBH=KCZLS.CLBH and RK.CKBH=KCZLS.CKBH ');

    sql.add('left join (select KCLL.CKBH,KCLLS.CLBH,sum(KCLLS.Qty) as LLQty from KCLLS ');
    sql.add('           left join KCLL on KCLL.LLNO=KCLLS.LLNO ');
    sql.add('           where convert(smalldatetime,convert(varchar,KCLL.CFMDATE,111)) between ')   ;
    sql.add('                 '''+formatdatetime('yyyy/MM/dd',sdate)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',edate)+''''  );
    sql.add('                 and KCLL.CFMID<>'+''''+'NO'+'''');
    sql.add('           group by KCLL.CKBH,KCLLS.CLBH) LL on LL.CLBH=KCZLS.CLBH and LL.CKBH=KCZLS.CKBH');

    sql.add('left join (select JGZL.CKBH,JGZLS.CLBH,sum(JGZLS.Qty) as JGRK from JGZLS');
    sql.add('           left join JGZL on JGZL.JGNO=JGZLS.JGNO ');
    sql.add('          where convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111)) between ');
    sql.add('                 '''+formatdatetime('yyyy/MM/dd',sdate)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',edate)+''''  );
    sql.add('                 and JGZL.CFMID1<>'+''''+'NO'+'''');
    sql.add('                 and JGZLS.ZMLB='+''''+'ZZZZZZZZZZ'+'''');
    sql.add('           group by JGZL.CKBH,JGZLS.CLBH ) JGRK on JGRK.CLBH=KCZLS.CLBH and JGRK.CKBH=KCZLS.CKBH');

    sql.add('left join (select JGZl.CKBH,JGZLS.ZMLB,sum(JGZLS.Qty*JGZLM.Qty) as JGCK from JGZLS');
    sql.add('           left join JGZL on JGZL.JGNO=JGZLS.JGNO  ');
    sql.add('           left join (select JGZLS.JGNO,JGZLS.CLBH,JGZLS.Qty from JGZLS ');
    sql.add('                      left join JGZL on JGZL.JGNO=JGZLS.JGNO ');
    sql.add('                      where convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111)) between ');
    sql.add('                            '''+formatdatetime('yyyy/MM/dd',sdate)+'''' +' and '+''''+formatdatetime('yyyy/MM/dd',edate)+''''  );
    sql.add('                            and JGZL.CFMID1<>'+''''+'NO'+'''');
    sql.add('                            and JGZLS.ZMLB='+''''+'ZZZZZZZZZZ'+'''');
    sql.add('                      )JGZLM on JGZLM.JGNO=JGZLS.JGNO and JGZLM.CLBH=JGZLS.CLBH');
    sql.add('           where convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111)) between ');
    sql.add('                 '''+formatdatetime('yyyy/MM/dd',sdate)+'''' +' and '+''''+formatdatetime('yyyy/MM/dd',edate)+''''  );
    sql.add('                 and JGZL.CFMID1<>'+''''+'NO'+'''');
    sql.add('                 and JGZLS.ZMLB<>'+''''+'ZZZZZZZZZZ'+'''');
    sql.add('           group by JGZL.CKBH,JGZLS.ZMLB ) JGCK on JGCK.ZMLB=KCZLS.CLBH and JGCK.CKBH=KCZLS.CKBH');


    sql.add('select #CLZLKC1.CLBH,isnull(#CLZLKC1.LastRem,0)+isnull(#CLZLKC1.RKQty,0)-isnull(#CLZLKC1.LLQty,0)+isnull(#CLZLKC1.JGRK,0)-isnull(#CLZLKC1.JGCK,0) as KCQty,#CLZLKC1.CKBH ');
    sql.add('into #KC1 from #CLZLKC1 ');
    sql.add('where not (#CLZLKC1.LastRem is null  and #CLZLKC1.RKQty is null and #CLZLKC1.LLQty is null and #CLZLKC1.JGRK is null and #CLZLKC1.JGCK is null)');
    sql.add('order by #CLZLKC1.CKBH,#CLZLKC1.CLBH  ');
    sql.add('drop table #CLZLKC1 ');
    execsql;
  end;
except
 showmessage('Have wrong.');
end;   }


DTP1.date:=startofthemonth(NDate)+5;
DTP2.date:=startofthemonth(incmonth(NDate,1))+4;
PC1.ActivePage:=TS1;
end;

procedure TDelMaterial.DelMasAfterOpen(DataSet: TDataSet);
begin
  BB2.Enabled:=true;
  BB3.Enabled:=true;
  BB4.Enabled:=true;
  BBT1.Enabled:=true;
  BBT2.Enabled:=true;
  BBT3.Enabled:=true;
  BBT4.Enabled:=true;
  BBT6.Enabled:=true;
  DelDet.Active:=true;
  BB5.Enabled:=false;
  BB6.Enabled:=false;
  BD5.Enabled:=false;
  BD6.Enabled:=false;

  if  SpecMas.fieldbyname('SB').value<>'1'  then
  begin
    BB2.Enabled:=false;
    BB3.Enabled:=false;
    BB4.Enabled:=false;
  end;

end;

procedure TDelMaterial.SpecDetAfterOpen(DataSet: TDataSet);
begin
with SpecDet do
  begin
    first;
    while not eof do
      begin
        if fieldbyname('DFL').IsNull then
          begin
            showmessage('Pls request BOM department to setup part type first.');
            last;
          end;
        next;
      end;
    first;
  end;
if DelMaterial_CL<>nil then
    DelMaterial_CL.close;
end;

procedure TDelMaterial.BB2Click(Sender: TObject);
begin
with DelMas do
  begin
    requestlive:=true;
    cachedupdates:=true;
    insert;
  end;
BBTT1.Visible:=true;
BB5.Enabled:=true;
BB6.Enabled:=true;
dbgrid3.columns[2].ButtonStyle:=cbsEllipsis;
end;

procedure TDelMaterial.BB3Click(Sender: TObject);
begin

if (DelDet.recordcount=0) and (delmas.FieldByName('pmark').Value=Null)  then
  begin
    with DelMas do
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
dbgrid3.columns[2].ButtonStyle:=cbsEllipsis;
end;

procedure TDelMaterial.BB4Click(Sender: TObject);
begin
with DelMas do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
BBTT1.Visible:=true;
BB5.Enabled:=true;
BB6.Enabled:=true;
dbgrid3.columns[2].ButtonStyle:=cbsEllipsis;
end;

procedure TDelMaterial.BB5Click(Sender: TObject);
var y,m,a:string;
i:integer;
begin

    //出貨鎖定，不得再開領料單
if DelMas.FieldByName('YN').value='5' then
  begin
    showmessage('Already finished. Pls checked accont first.' );
    abort;
  end;

with query1 do          //取服務器的年月值
  begin
    active:=false;
    sql.Clear;
    sql.Add('select year(getdate()) as FY,month(getdate()) as FM,getdate() as NDate ');
    active:=true;
    NDate:=fieldbyname('NDate').value;
    y:=fieldbyname('FY').asstring;
    m:=fieldbyname('FM').asstring;
    active:=false;
  end;
if length(m)<2 then
  m:='0'+m;  

try
    DelDet.Active:=false;
    DelMas.first;
    for i:=1 to DelMas.RecordCount do
      begin
        case DelMas.updatestatus of
          usinserted:
            begin
                    if DelMas.fieldbyname('DepID').isnull then
                      begin
                        DelMas.delete;
                      end
                      else
                        begin
                          with query1 do    //計算領料單流水號
                            begin
                              active:=false;
                              sql.Clear;
                              sql.Add('select LLNO from KCLL where LLNO like '+''''+y+m+'%'+'''');
                              sql.add('order by LLNO');
                              active:=true;
                              if recordcount >0 then
                                begin
                                  last;
                                  a:=fieldbyname('LLNO').AsString;
                                  a:=copy(a,7,5);
                                  a:=inttostr(strtoint(a)+1);
                                  while length(a)<5 do
                                    begin
                                      a:='0'+a;
                                    end;
                                end
                                  else
                                    begin
                                      a:='00001';
                                    end;
                              a :=y+m+a;
                              active:=false;
                            end;
                          DelMas.edit;
                          DelMas.fieldbyname('LLNO').Value:=a;
                          DelMas.fieldbyname('GSBH').Value:=main.Edit2.text;
                          DelMas.fieldbyname('SCBH').Value:=SpecMas.fieldbyname('SCBH').value;
                          DelMas.FieldByName('userID').Value:=main.edit1.text;
                          DelMas.FieldByName('userdate').Value:=Ndate;
                          DelMas.FieldByName('CFMID').Value:='NO';
                          DelMas.FieldByName('YN').Value:='1';
                          upMas.apply(ukinsert);
                        end;
            end;
          usmodified:
             begin
               if DelMas.FieldByName('USERID').value<>main.Edit1.Text then
                 begin
                   showmessage('不是你的，不要亂動。khong phai ban khong duoc tu sua');
                 end
                 else
                   begin
                     if DelMas.fieldbyname('YN').value='0'then
                       begin  
                         with BDelRec do
                           begin
                             active:=false;
                             sql.Clear;
                             sql.add('insert into BDelRec ');
                             sql.add('(TableName ,TNO,CLBH,OldID,DelID,DelDate)');
                             sql.add('values ('+''''+'KCLL'+''''+','+''''+DelMas.fieldbyname('LLNO').Value+'''');
                             sql.add(','+''''+' '+''''+','+''''+DelMas.fieldbyname('USERID').Value+''''+',');
                             sql.add(''''+main.Edit1.Text+''''+',getdate())');
                             execsql;
                             active:=false;
                           end;
                         upMas.apply(ukdelete);
                       end
                       else
                         begin
                           if (DelMas.FieldByName('CFMID').value='NO')   then
                             begin
                               if (NDate-DelMas.FieldByName('USERDATE').value)<=3  then
                                 begin
                                   DelMas.edit;
                                   DelMas.FieldByName('userID').Value:=main.edit1.text;
                                   DelMas.FieldByName('userdate').Value:=Ndate;
                                   upMas.apply(ukmodify);
                                 end
                                 else
                                   begin
                                     showmessage('Date>7, can not modify.');
                                   end;
                             end
                             else
                               begin
                                 showmessage('Already confirmed, can not modify.');
                               end;
                         end;
                  end;
             end;
        end;
       DelMas.next;
      end;
DelMas.active:=false;
DelMas.cachedupdates:=false;
DelMas.requestlive:=false;
DelMas.active:=true;
DelDet.Active:=true;
bb5.enabled:=false;
bb6.enabled:=false;
BBTT1.Visible:=false;
dbgrid3.columns[2].ButtonStyle:=cbsnone;
except
  Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
end;
end;

procedure TDelMaterial.BBTT1Click(Sender: TObject);
begin
DelMaterial_Dep:=TDelMaterial_Dep.Create(self);
DelMaterial_Dep.Show;
end;

procedure TDelMaterial.BB6Click(Sender: TObject);
begin
with DelMas do
  begin
    active:=false;
    requestlive:=false;
    cachedupdates:=false;
    active:=true;
  end;
bb5.enabled:=false;
bb6.enabled:=false;  
BBTT1.Visible:=false;
dbgrid3.columns[2].ButtonStyle:=cbsnone;
end;

procedure TDelMaterial.DBGrid3DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin

if DelMas.cachedupdates then
  begin
    DBX2.BringToFront;
    if (gdfocused in state) then
      begin
        if (dbgrid3.SelectedField.fieldname=DBX2.datafield) then
          begin
            DBX2.left:=rect.left+dbgrid3.left;
            DBX2.top:=rect.top+dbgrid3.Top;
            DBX2.width:=rect.right-rect.left+10;
            DBX2.height:=rect.bottom-rect.top;
            DBX2.visible:=true;
          end
          else
            DBX2.Visible:=false;
      end;
  end
  else
    DBX2.Visible:=false;

    
if DelMas.FieldByName('YN').value='0' then
  begin
    dbgrid3.canvas.font.color:=clred;
    dbgrid3.defaultdrawcolumncell(rect,datacol,column,state);
  end;

end;

procedure TDelMaterial.DBGrid3EditButtonClick(Sender: TObject);
begin
DelMaterial_Dep:=TDelMaterial_Dep.Create(self);
DelMaterial_Dep.Show;
end;

procedure TDelMaterial.DelDetAfterOpen(DataSet: TDataSet);
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
if (NDate-DelMas.FieldByName('USERDATE').value)>3  then
  begin
    BD2.Enabled:=false;
    BD3.Enabled:=false;
    BD4.Enabled:=false;
  end;
if DelMas.FieldByName('CFMID').value<>'NO'  then
  begin
    BD2.Enabled:=false;
    BD3.Enabled:=false;
    BD4.Enabled:=false;
  end;
if DelMas.FieldByName('USERID').value<>main.edit1.text  then
  begin
    BD2.Enabled:=false;
    BD3.Enabled:=false;
    BD4.Enabled:=false;
  end;
  {
if  ((SpecMas.fieldbyname('SB').value='2') and ((SpecMas.fieldbyname('LastInDate').value+2)<NDate))  then
  begin
    BD2.Enabled:=false;
    BD3.Enabled:=false;
    BD4.Enabled:=false;
  end;  }
if  SpecMas.fieldbyname('SB').value<>'1'  then
  begin
    BD2.Enabled:=false;
    BD3.Enabled:=false;
    BD4.Enabled:=false;
  end;
if DelMas.cachedupdates  then
  begin
    BD2.Enabled:=false;
    BD3.Enabled:=false;
    BD4.Enabled:=false;
  end;  
if not DelMas.FieldByName('PMARK').isnull  then
  begin
    BD2.Enabled:=false;
    BD3.Enabled:=false;
    BD4.Enabled:=false;
  end;
{if (DelMas.FieldByName('DepName').value>'LEAN') and (DelMas.FieldByName('DepName').value<'LEAO') then
  begin
    DBGrid4.Columns[3].readonly:=false;
  end
  else
    begin
      DBGrid4.Columns[3].readonly:=true;
    end;  }
BD5.Enabled:=false;
BD6.Enabled:=false;
end;

procedure TDelMaterial.PC1Change(Sender: TObject);
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

procedure TDelMaterial.BD7Click(Sender: TObject);
begin
close;
end;

procedure TDelMaterial.BD2Click(Sender: TObject);
begin

if DelMas.RequestLive then
  begin
    showmessage('Pls save Master data first.');
    PC1.ActivePage:=TS3;
    panel6.visible:=false;
    panel1.visible:=true;
    abort;
  end;

with DelDet do
  begin
    requestlive:=true;
    cachedupdates:=true;
    insert;
  end;
BBTT2.Visible:=true;
BD5.Enabled:=true;
BD6.Enabled:=true;
dbgrid4.columns[0].ButtonStyle:=cbsEllipsis;
end;

procedure TDelMaterial.BD3Click(Sender: TObject);
begin
if DelMas.RequestLive then
  begin
    showmessage('Pls save Master data first.');
    PC1.ActivePage:=TS3;
    panel6.visible:=false;
    panel1.visible:=true;
    abort;
  end;

with DelDet do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
    fieldbyname('YN').Value:='0';
  end;
BBTT2.Visible:=true;
BD5.Enabled:=true;
BD6.Enabled:=true;
dbgrid4.columns[0].ButtonStyle:=cbsEllipsis;
end;

procedure TDelMaterial.BD5Click(Sender: TObject);
var i:integer;
begin
// check more than 100%
  with DelDet do
  begin
    first;
    while not DelDet.Eof do
    begin
        if DelDet.FieldByName('Person').Value>100 then
        begin
          showmessage('Can not more than 100%.');
          abort;
        end;
      next;
    end;
  end;
try
    DelDet.first;
    for i:=1 to DelDet.RecordCount do
      begin
        case DelDet.updatestatus of
          usinserted:
            begin 
              if DelMas.FieldByName('USERID').value<>main.Edit1.Text then
                begin
                  showmessage('不是你的，不要亂動。khong phai ban khong duoc tu sua');
                end
                else
                  begin
                    if DelDet.fieldbyname('CLBH').isnull then
                      begin
                        DelDet.delete;
                      end
                      else
                        begin
                          DelDet.edit;
                          DelDet.fieldbyname('SCBH').Value:=DelMas.fieldbyname('SCBH').Value;
                          DelDet.fieldbyname('LLNO').Value:=DelMas.fieldbyname('LLNO').Value;
                          DelDet.fieldbyname('TempQty').Value:=formatfloat('#,##0.##',Deldet.fieldbyname('TempQty').AsFloat); //20141023 四捨五入到小數第二位
                          DelDet.fieldbyname('Qty').value:=DelDet.fieldbyname('TempQty').value;
                          DelDet.FieldByName('userID').Value:=main.edit1.text;
                          DelDet.FieldByName('userdate').Value:=Ndate;
                          DelDet.FieldByName('YN').Value:='1';
                          upDet.apply(ukinsert);
                        end;
                  end;
            end;
          usmodified:
             begin
               if DelDet.FieldByName('USERID').value<>main.Edit1.Text then
                 begin
                   showmessage('不是你的，不要亂動。khong phai ban khong duoc tu sua');
                 end
                 else
                   begin
                     if DelDet.fieldbyname('YN').value='0'then
                       begin
                         with BDelRec do
                           begin
                             active:=false;
                             sql.Clear;
                             sql.add('insert into BDelRec ');
                             sql.add('(TableName ,TNO,CLBH,OldID,DelID,DelDate)');
                             sql.add('values ('+''''+'KCLLS'+''''+','+''''+DelDet.fieldbyname('LLNO').Value+'''');
                             sql.add(','+''''+DelDet.fieldbyname('CLBH').Value+''''+','+''''+DelDet.fieldbyname('USERID').Value+''''+',');
                             sql.add(''''+main.Edit1.Text+''''+',getdate())');
                             execsql;
                             active:=false;
                           end;
                         UpDet.apply(ukdelete);
                       end
                       else
                         begin
                           DelDet.edit;
                           DelDet.fieldbyname('TempQty').Value:=formatfloat('#,##0.##',Deldet.fieldbyname('TempQty').AsFloat); //20141023 四捨五入到小數第二位
                           DelDet.fieldbyname('Qty').value:=DelDet.fieldbyname('TempQty').value;
                           DelDet.FieldByName('userID').Value:=main.edit1.text;
                           DelDet.FieldByName('userdate').Value:=Ndate;
                           upDet.apply(ukmodify);
                         end;
                   end;
              end;
        end;
        DelDet.next;
      end;
DelDet.active:=false;
DelDet.cachedupdates:=false;
DelDet.requestlive:=false;
DelDet.active:=true;
bb6.enabled:=false;  
BBTT2.Visible:=false;
BD5.Enabled:=false;
BD6.Enabled:=false;
dbgrid4.columns[0].ButtonStyle:=cbsNone;
except
  Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
end; 
end;

procedure TDelMaterial.BD4Click(Sender: TObject);
begin
if DelMas.RequestLive then
  begin
    showmessage('Pls save Master data first.');
    PC1.ActivePage:=TS3;
    panel6.visible:=false;
    panel1.visible:=true;
    abort;
  end;

with DelDet do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
BBTT2.Visible:=true;
BD5.Enabled:=true;
BD6.Enabled:=true;
dbgrid4.columns[0].ButtonStyle:=cbsEllipsis;
end;

procedure TDelMaterial.BD6Click(Sender: TObject);
begin
with DelDet do
  begin
    active:=false;
    requestlive:=false;
    cachedupdates:=false;
    active:=true;
  end;
BBTT2.Visible:=false;
BD5.Enabled:=false;
BD6.Enabled:=false;
dbgrid4.columns[0].ButtonStyle:=cbsNone;
end;

procedure TDelMaterial.BBTT2Click(Sender: TObject);
begin
//if messagedlg('Deliver Material or Carton?',mtinformation,[mbYes,mbNo],0)=mrYes then
 // begin
    DelMaterial_CL:=TDelMaterial_CL.create(self);
    DelMaterial_CL.show;
 { end
  else
    begin
      DelMaterial_CT:=TDelMaterial_CT.create(self);
      DelMaterial_CT.show;
    end;  }

end;

procedure TDelMaterial.DBGrid4EditButtonClick(Sender: TObject);
begin
BBTT2Click(nil);
end;

procedure TDelMaterial.DBGrid4DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
 if DelDet.FieldByName('YN').value='0' then
  begin
    dbgrid4.canvas.font.color:=clred;
    dbgrid4.defaultdrawcolumncell(rect,datacol,column,state);
  end;

 if DelDet.FieldByName('LLNO').isnull then
  begin
    dbgrid4.canvas.font.color:=clLime;
    dbgrid4.defaultdrawcolumncell(rect,datacol,column,state);
  end;
end;

procedure TDelMaterial.BDT1Click(Sender: TObject);
begin
DelDet.First;
end;

procedure TDelMaterial.BDT2Click(Sender: TObject);
begin
DelDet.prior;
end;

procedure TDelMaterial.BDT3Click(Sender: TObject);
begin
DelDet.next;
end;

procedure TDelMaterial.BDT4Click(Sender: TObject);
begin
DelDet.last;
end;

procedure TDelMaterial.BDT5Click(Sender: TObject);
begin
if DelDet.RequestLive then
  begin
    showmessage('Pls save data first.');
    abort;
  end
    else
      begin
        qryCGNO.Active:=true;
        DelMaterial_Print:=TDelMaterial_Print.create(nil);
        DelMaterial_Print.quickrep1.prepare;
        DelMaterial_Print.Qpage1.caption:=inttostr(DelMaterial_Print.quickrep1.QRPrinter.pagecount);
        DelMaterial_Print.quickrep1.preview;
        DelDet.active:=false;
        DelDet.active:=true;
        DelMaterial_Print.free;
        qryCGNO.Active:=false;
      end;
with DelMas do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
    if fieldbyname('PMARK').isnull then
      begin
        fieldbyname('PMARK').value:=1;
      end
      else
        begin
          fieldbyname('PMARK').value:=fieldbyname('PMARK').value+1;
        end;
    UPMAS.Apply(ukmodify);
    requestlive:=false;
    cachedupdates:=false;
  end;
end;

procedure TDelMaterial.DBGrid3DblClick(Sender: TObject);
begin
if  DelMas.Active then
  begin
    if  (DelMas.recordcount>0) then
      begin
        PC1.ActivePage:=TS4;
        panel1.Visible:=false;
        panel6.Visible:=true;
      end;
  end;
end;

procedure TDelMaterial.Button2Click(Sender: TObject);
var   a:string;
      eclApp,WorkBook:olevariant;
 //     xlsFileName:string;
      i,j:integer;
  begin
  if  SpecDet.active  then
    begin
    try
      eclApp:=CreateOleObject('Excel.Application');
      WorkBook:=CreateOleObject('Excel.Sheet');
    except
      Application.MessageBox('No Mcrosoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
      Exit;
    end;
    try
        WorkBook:=eclApp.workbooks.Add;
        for   i:=0   to   SpecDet.fieldCount-1   do
          begin
              eclApp.Cells(1,i+1):=SpecDet.fields[i].FieldName;
          end;
        SpecDet.First;
        j:=2;
        while   not   SpecDet.Eof   do
          begin
            for   i:=0   to   SpecDet.FieldCount-1   do
              begin
                eclApp.Cells(j,i+1):=SpecDet.Fields[i].Value;
              end;
            SpecDet.Next;
            inc(j);
          end;
      eclapp.columns.autofit;
      showmessage('Succeed');
      eclApp.Visible:=True;
      except
        on   F:Exception   do
          showmessage(F.Message);
      end;
    end;

end;

procedure TDelMaterial.DelDetCalcFields(DataSet: TDataSet);
begin
if deldet.FieldByName('CLSL').value<>0 then
  begin
     deldet.FieldByName('person').value:=deldet.FieldByName('tempqty').value/deldet.FieldByName('CLSL').value*100;
  end
  else
    begin
      deldet.FieldByName('person').value:=0;
    end;
end;

procedure TDelMaterial.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
if SpecMas.FieldByName('DDZT').value='C' then
  begin
    dbgrid1.canvas.font.color:=clred;
    dbgrid1.defaultdrawcolumncell(rect,datacol,column,state);
  end;
if SpecMas.FieldByName('SB').value='5' then
  begin
    dbgrid1.canvas.font.color:=clYellow;
    dbgrid1.defaultdrawcolumncell(rect,datacol,column,state);
  end;
end;

procedure TDelMaterial.FormDestroy(Sender: TObject);
begin
   DelMaterial:=nil;
end;

end.
