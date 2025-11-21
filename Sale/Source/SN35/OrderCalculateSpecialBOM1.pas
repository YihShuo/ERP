unit OrderCalculateSpecialBOM1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBTables, DB, Grids, DBGrids, Buttons, ExtCtrls, comobj,
  QuickRpt, Menus, dateutils, ComCtrls, GridsEh, DBGridEh, ehlibBDE, iniFiles;

type
  TOrderCalculateSpecialBOM = class(TForm)
    DBGrid1: TDBGridEh;
    Panel2: TPanel;
    DBGrid3: TDBGridEh;
    DS1: TDataSource;
    SpecMas: TQuery;
    SpecMasZLBH: TStringField;
    SpecMasDDBH: TStringField;
    SpecMasXieXing: TStringField;
    SpecMasSheHao: TStringField;
    SpecMasArticle: TStringField;
    SpecMasXieMing: TStringField;
    SpecMasQty: TIntegerField;
    SpecMasShipDate: TDateTimeField;
    SpecMasKFJC: TStringField;
    SpecMasXXCC: TStringField;
    SpecMasDDCC: TStringField;
    SpecMasDDZT: TStringField;
    SpecMasZLBH_VNBOM: TStringField;
    OrdSize: TQuery;
    OrdSizeDDBH: TStringField;
    OrdSizeDDCC: TStringField;
    OrdSizeXXCC: TStringField;
    OrdSizeQty: TIntegerField;
    DS3: TDataSource;
    Qtemp: TQuery;
    Query1: TQuery;
    Panel3: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    Label15: TLabel;
    Label3: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Edit2: TEdit;
    Edit3: TEdit;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    BuyNoEdit: TEdit;
    RB1: TRadioButton;
    RB2: TRadioButton;
    BBTCa: TButton;
    Calculate: TQuery;
    SpecMascond: TStringField;
    SpecMasDestination: TStringField;
    SpecMasDest: TStringField;
    Label7: TLabel;
    Label4: TLabel;
    Edit5: TEdit;
    Edit4: TEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure SpecMasAfterOpen(DataSet: TDataSet);
    procedure BBTCaClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure SpecMasAfterScroll(DataSet: TDataSet);
  private
    procedure ShowOrdSize();
    { Private declarations }
  public
    { Public declarations }
  end;

var
  OrderCalculateSpecialBOM: TOrderCalculateSpecialBOM;
  sdate,edate,NDate:Tdate;

implementation

uses main1,Detail1;

{$R *.dfm}

procedure TOrderCalculateSpecialBOM.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TOrderCalculateSpecialBOM.FormDestroy(Sender: TObject);
begin
  OrderCalculateSpecialBOM:=nil;
end;

procedure TOrderCalculateSpecialBOM.FormCreate(Sender: TObject);
begin
  with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select getdate() as NDate');
    active:=true;
    NDate:=fieldbyname('NDate').Value;
    active:=false;
  end;
  DTP1.date:=startofthemonth(NDate)+5;
  DTP2.date:=startofthemonth(incmonth(NDate,1))+4;
  BuyNoEdit.Text:=FormatDateTime('YYYYMM',Date());
end;

procedure TOrderCalculateSpecialBOM.Button1Click(Sender: TObject);
begin
  sdate:=DTP1.Date;
  edate:=DTP2.Date;
  OrdSize.Active:=false;
  with SpecMas do
  begin
    active:=false;
    sql.Clear;
    sql.add('select distinct zlzl.ZLBH, zlzl.DDBH, DDZL.Pairs as Qty, DDZL.XieXing, DDZL.SheHao, DDZL.Article, ');
    sql.add('       DDZL.ShipDate, XXZL.CCGB as XXCC, XXZL.XieMing, DDZL.DDZT, DDZL.CCGB as DDCC, KFZL.KFJC, ');
    sql.add('       DDZL.Dest, max(XXZLSSVN.cond) cond, LBZLS.YWSM as Destination, ZLZLS2.ZLBH as ZLBH_VNBOM ');
    sql.add('from zlzl ');
    sql.add('left join DDZL on zlzl.ZLBH=DDZL.DDBH ');
    sql.add('left join XXZL on DDZL.XieXing=XXZL.XieXing and DDZL.SheHao=XXZL.SheHao ');
    sql.add('left join XXZLS on XXZLS.XieXing=DDZL.XieXing and XXZLS.SheHao=DDZL.SheHao ');
    sql.add('left join kfzl on KFZl.KFDH=DDZL.KHBH ');
    sql.add('left join (select distinct XieXing,SheHao,bwbh,CLBH,CSBH,clsl,cond  ');
    sql.add('           from XXZLSSVN) XXZLSSVN on (XXZLSSVN.XieXing=DDZL.XieXing and XXZLSSVN.SheHao=DDZL.SheHao');
    sql.add('                                      and XXZLSSVN.cond=DDZL.Dest) OR (XXZLSSVN.cond=DDZL.Dest');
    sql.add('                                      and xxzlssvn.XieXing=''ZZZZZZZZZ'' and xxzlssvn.SheHao=''ZZZ'' ');
    sql.add('                                      and xxzlssvn.bwbh=xxzls.bwbh and xxzlssvn.CLBH=xxzls.clbh ');
    sql.add('                                      and isnull(xxzlssvn.CSBH,'''')=isnull(XXZLS.CSBH,'''') and xxzlssvn.clsl=xxzls.clsl) ');
    sql.add('left join LBZLS on LBZLS.LBDH=DDZL.Dest and LBZLS.LB=''13'' ');
    sql.add('left join (select distinct ZLBH from ZLZLS2 ');
    sql.add('           where (xh =''VN'') and (left(CLBH,1) = ''H'' or left(CLBH,1) = ''L'')) ZLZLS2 on ZLZLS2.ZLBH=zlzl.ZLBH ');
    sql.add('where 1=1 ');
    if edit1.Text <> '' then
      sql.add('    and zlzl.ZLBH like '+''''+edit1.Text+'%'+'''');
    if edit2.Text <> '' then
      sql.add('    and XXZL.Article like '+''''+edit2.Text+'%'+'''');
    if edit3.Text <> '' then
      sql.add('    and KFZL.KFJC like '+''''+edit3.Text+'%'+'''');
    if edit4.Text<>'' then
      sql.Add('    and DDZL.Dest = '+''''+edit4.Text+''' ');
    if edit5.Text<>'' then
      sql.Add('    and LBZLS.YWSM like '+''''+edit5.Text+'%'+'''');
    if RB1.Checked=true then
    begin
      sql.add('    and convert(smalldatetime,convert(varchar,DDZL.ShipDate,111)) between ');
      sql.add('    '''+formatdatetime('yyyy/MM/dd',sdate)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',edate)+''' ');
    end;
    if RB2.Checked=true then
    begin
      sql.add('    and DDZL.BUYNO like '''+BuyNoEdit.Text+'%'' ');
    end;
    sql.add('      and DDZL.GSBH = '+''''+main.Edit2.Text+''' ');
    sql.add('group by zlzl.ZLBH, zlzl.DDBH, DDZL.Pairs, DDZL.XieXing, DDZL.SheHao, DDZL.Article, DDZL.ShipDate, XXZL.CCGB,');
    sql.add('         XXZL.XieMing, DDZL.DDZT, DDZL.CCGB, KFZL.KFJC, DDZL.Dest, LBZLS.YWSM, ZLZLS2.ZLBH');
    sql.add('order by zlzl.ZLBH');
    active:=true;
  end;
  OrdSize.Active:=true;
  ShowOrdSize();
end;

procedure TOrderCalculateSpecialBOM.ShowOrdSize();
  var a,b,c,d:string;
begin
  if SpecMas.RecordCount>0 then
  begin
    //找出訂單尺寸及斬刀尺寸的對應關係
    a:=SpecMas.fieldbyname('DDCC').value;
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
      c:='XXZLS3.US_Size';
    end;
    if a='O' then
    begin
      a:='XXZLS3.OTH_Size as DDCC,';
      C:='XXZLS3.OTH_Size';
    end;
    if b='K' then
      b:='XXZLS3.UK_Size as XXCC,';
      d:='XXZLS3.UK_Size';
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
      b:='XXZLS3.OTH_Size as XXCC,';
      d:='XXZLS3.OTH_Size';
    end;
    //showmessage(c);
    //尺寸明細
    with OrdSize do
    begin
      active:=false;
      sql.Clear;
      //訂單及工具尺寸
      sql.add('select DDZLs.DDBH,'+a+b+'DDZLs.Quantity as Qty ');
      sql.add('from DDZLs ');
      sql.add('left join XXZLS3 on XXZLS3.XieXing=:XieXing and DDZLS.CC='+c);
      sql.add('where DDZLs.DDBH=:DDBH ');
      sql.add('      and DDZLs.Quantity<>0 ');
      active:=true;
    end;
  end;
end;

procedure TOrderCalculateSpecialBOM.SpecMasAfterOpen(DataSet: TDataSet);
begin
  if SpecMas.RecordCount>0 then
  begin
    BBTCa.Enabled:=true;
  end;
  with Qtemp do
  begin
    active:=false;
    sql.Clear;
    sql.add('select *');
    sql.add('from DDZL ');
    sql.add('where DDBH = '''+SpecMas.fieldbyname('ZLBH').AsString+''' ');
    sql.add('      and DDZL.ShipDate>GetDate()-360 ');
    sql.Add('      and DDZL.YN<>1 ');
    active:=true;
  end;
  if Qtemp.RecordCount>0 then
  begin
    BBTCa.Enabled:=false;
  end else
  begin
    BBTCa.Enabled:=true;
  end;
end;

procedure TOrderCalculateSpecialBOM.SpecMasAfterScroll(DataSet: TDataSet);
begin
  with Qtemp do
  begin
    active:=false;
    sql.Clear;
    SQL.add('select *');
    SQL.add('from DDZL ');
    SQL.add('where DDBH = '''+SpecMas.fieldbyname('ZLBH').AsString+'''');
    SQL.add('      and DDZL.ShipDate>GetDate()-360 ');
    sql.Add('      and DDZL.YN<>1 ');
    active:=true;
  end;
  if Qtemp.RecordCount>0 then
  begin
    BBTCa.Enabled:=false;
  end else
  begin
    BBTCa.Enabled:=true;
  end;
end;

procedure TOrderCalculateSpecialBOM.BBTCaClick(Sender: TObject);
  label lRestart;
begin
  try
    SpecMas.First;
    with SpecMas do
    begin
      while not eof do
      begin
        with Calculate do
        begin
          if OrderCalculateSpecialBOM.SpecMas.fieldbyname('cond').AsString='' then
          begin
            showmessage('No Destination or Special VN BOM. Pls setup data first.');
            goto lRestart;
          end;
          active:=false;
          sql.Clear;
          sql.add('select * from ZLZLS2 where XH='+''''+'VN'+''' and (left(CLBH,1) = ''H'' or left(CLBH,1) = ''L'') ');
          sql.add('                           and ZLBH='''+OrderCalculateSpecialBOM.SpecMas.fieldbyname('ZLBH').Value+''' ');
          active:=true;
          if recordcount>0 then
          begin
            if messagedlg('You want to recalucate the usage again?',mtconfirmation,[mbYes,MbNo],0)=mrYes then
            begin
              active:=false;
              sql.Clear;
              sql.add('delete ZLZLS2 where XH='+''''+'VN'+''' and (left(CLBH,1) = ''H'' or left(CLBH,1) = ''L'') ');
              sql.add('                    and ZLBH='''+OrderCalculateSpecialBOM.SpecMas.fieldbyname('ZLBH').Value+''' ');
              execsql;
            end else
            begin
              goto lRestart;
            end;
          end;
          active:=false;
          sql.clear;
          sql.add('delete ZLZLS2 ');
          sql.add('where XH=''VN'' and (left(CLBH,1) = ''H'' or left(CLBH,1) = ''L'') ');
          sql.add('      and EXISTS(select zlzl.zlbh ');
          sql.add('                 from xxzlssvn ');
          sql.add('                 left join XXZLS on isnull(xxzlssvn.CSBH,'''')=isnull(XXZLS.CSBH,'''') and XXZLS.CLSL=xxzlssvn.CLSL  ');
          sql.add('                                    and XXZLS.CLBH=xxzlssvn.CLBH and XXZLS.BWBH=xxzlssvn.BWBH ');
          sql.add('                 left join DDZL on ddzl.Dest=xxzlssvn.cond ');
          sql.add('                 left join ZLZL on ZLZL.ZLBH=DDZL.DDBH ');
          sql.add('                 left join CLZL on CLZL.CLDH=xxzlssvn.CLBH ');
          sql.add('                 where ADTYP=''D'' and zlzls2.ZLBH=zlzl.ZLBH and zlzls2.CLBH=xxzlssvn.CLBH and zlzls2.BWBH=xxzlssvn.BWBH ');
          sql.add('                       and xxzlssvn.XieXing=''ZZZZZZZZZ'' and xxzlssvn.SheHao=''ZZZ'' ');
          sql.add('                       and xxzlssvn.cond='''+OrderCalculateSpecialBOM.SpecMas.fieldbyname('cond').Value+''' ');
          sql.add('                       and ZLZL.ZLBH='''+OrderCalculateSpecialBOM.SpecMas.fieldbyname('ZLBH').Value+''') ');
          //insert
          sql.add('insert ZLZLS2 ');
          sql.add('select ZLZL.ZLBH, ''VN'' as XH, xxzlssvn.BWBH, xxzlssvn.CSBH, ''ZZZZZZZZZZ'' as MJBH, xxzlssvn.CLBH, CLZL.CLZMLB as ZMLB, ');
          //sql.add('       ''ZZZZZZ'' as SIZE, round(DDZL.Pairs*xxzlssvn.CLSL+0.0499,1) as CLSL, xxzlssvn.CLSL as USAGE, ');
          //size
          sql.add('       case when clzl.lycc=''N'' then ''ZZZZZZ'' when clzl.lycc=''Y'' and isnull(xxzls.CCQQ,'''')<>'''' then DDZLS2.CC ');
          sql.add('       when clzl.lycc=''Y'' and isnull(xxzls.CCQQ,'''')='''' then DDZLS1.CC end as SIZE, case when clzl.lycc=''N'' ');
          sql.add('       then round(DDZL.Pairs*xxzlssvn.CLSL+0.0499,1) when clzl.lycc=''Y'' and isnull(xxzls.CCQQ,'''')<>'''' ');
          sql.add('       then round(DDZLS2.Quantity*xxzlssvn.CLSL+0.0499,1) when clzl.lycc=''Y'' and isnull(xxzls.CCQQ,'''')='''' ');
          sql.add('       then round(DDZLS1.Quantity*xxzlssvn.CLSL+0.0499,1) end as CLSL, xxzlssvn.CLSL as USAGE, ');
          //
          sql.add('       '''+main.edit1.text+''' as USERID, '''+formatdatetime('yyyy/MM/dd',date)+''' as USERDATE, ''2'' as YN ');
          sql.add('from xxzlssvn ');
          sql.add('left join DDZL on ddzl.XieXing=xxzlssvn.XieXing and ddzl.SheHao=xxzlssvn.SheHao and ddzl.Dest=xxzlssvn.cond ');
          sql.add('left join ZLZL on ZLZL.ZLBH=DDZL.DDBH ');
          sql.add('left join CLZL on CLZL.CLDH=xxzlssvn.CLBH ');
          //size
          sql.add('left join XXZLS on XXZLS.XieXing=xxzlssvn.XieXing and XXZLS.SheHao=xxzlssvn.SheHao ');
          sql.add('                   and XXZLS.CLBH=xxzlssvn.CLBH and XXZLS.BWBH=xxzlssvn.BWBH ');
          sql.add('left join DDZLS DDZLS1 on ZLZL.ZLBH=DDZLS1.DDBH and clzl.lycc=''Y'' and isnull(xxzls.CCQQ,'''')='''' ');
          sql.add('left join DDZLS DDZLS2 on ZLZL.ZLBH=DDZLS2.DDBH and clzl.lycc=''Y'' and isnull(xxzls.CCQQ,'''')<>'''' ');
          sql.add('                          and DDZLS2.CC between xxzls.CCQQ and xxzls.CCQZ ');
          //
          sql.add('where ADTYP=''A'' ');
          sql.add('      and xxzlssvn.XieXing='''+OrderCalculateSpecialBOM.SpecMas.fieldbyname('XieXing').Value+''' ');
          sql.add('      and xxzlssvn.SheHao='''+OrderCalculateSpecialBOM.SpecMas.fieldbyname('SheHao').Value+''' ');
          sql.add('      and xxzlssvn.cond='''+OrderCalculateSpecialBOM.SpecMas.fieldbyname('cond').Value+''' ');
          sql.add('      and ZLZL.ZLBH='''+OrderCalculateSpecialBOM.SpecMas.fieldbyname('ZLBH').Value+''' ');
          sql.add('      and NOT EXISTS(select zlzls2.zlbh ');
          sql.add('                     from zlzls2 ');
          sql.add('                     where zlzls2.CLBH=xxzlssvn.CLBH and zlzls2.BWBH=xxzlssvn.BWBH and zlzls2.zlbh=zlzl.zlbh ');
          sql.add('                           and xh<>''VN'' and zlzls2.YN=''2'') ');
          sql.add('union ');
          sql.add('select ZLZL.ZLBH, ''VN'' as XH, xxzlssvn.BWBH, xxzlssvn.CSBH, ''ZZZZZZZZZZ'' as MJBH, xxzlssvn.CLBH, CLZL.CLZMLB as ZMLB, ');
          //sql.add('       ''ZZZZZZ'' as SIZE, round(DDZL.Pairs*xxzlssvn.CLSL+0.0499,1) as CLSL, xxzlssvn.CLSL as USAGE, ');
          //size
          sql.add('       case when clzl.lycc=''N'' then ''ZZZZZZ'' when clzl.lycc=''Y'' and isnull(xxzls.CCQQ,'''')<>'''' then DDZLS2.CC ');
          sql.add('       when clzl.lycc=''Y'' and isnull(xxzls.CCQQ,'''')='''' then DDZLS1.CC end as SIZE, case when clzl.lycc=''N'' ');
          sql.add('       then round(DDZL.Pairs*xxzlssvn.CLSL+0.0499,1) when clzl.lycc=''Y'' and isnull(xxzls.CCQQ,'''')<>'''' ');
          sql.add('       then round(DDZLS2.Quantity*xxzlssvn.CLSL+0.0499,1) when clzl.lycc=''Y'' and isnull(xxzls.CCQQ,'''')='''' ');
          sql.add('       then round(DDZLS1.Quantity*xxzlssvn.CLSL+0.0499,1) end as CLSL, xxzlssvn.CLSL as USAGE, ');
          //
          sql.add('       '''+main.edit1.text+''' as USERID, '''+formatdatetime('yyyy/MM/dd',date)+''' as USERDATE, ''2'' as YN ');
          sql.add('from xxzlssvn ');
          sql.add('left join DDZL on ddzl.Dest=xxzlssvn.cond ');
          sql.add('left join ZLZL on ZLZL.ZLBH=DDZL.DDBH ');
          sql.add('left join CLZL on CLZL.CLDH=xxzlssvn.CLBH ');
          sql.add('left join XXZLS on isnull(xxzlssvn.CSBH,'''')=isnull(XXZLS.CSBH,'''') and XXZLS.CLSL=xxzlssvn.CLSL ');
          sql.add('                   and XXZLS.CLBH=xxzlssvn.CLBH and XXZLS.BWBH=xxzlssvn.BWBH ');
          sql.add('                   and xxzls.XieXing=ddzl.XieXing and xxzls.SheHao=ddzl.SheHao ');
          sql.add('left join DDZLS DDZLS1 on ZLZL.ZLBH=DDZLS1.DDBH and clzl.lycc=''Y'' and isnull(xxzls.CCQQ,'''')='''' ');
          sql.add('left join DDZLS DDZLS2 on ZLZL.ZLBH=DDZLS2.DDBH and clzl.lycc=''Y'' and isnull(xxzls.CCQQ,'''')<>'''' ');
          sql.add('                          and DDZLS2.CC between xxzls.CCQQ and xxzls.CCQZ ');
          sql.add('where ADTYP=''A'' ');
          sql.add('      and xxzlssvn.XieXing=''ZZZZZZZZZ'' and xxzlssvn.SheHao=''ZZZ'' ');
          sql.add('      and xxzlssvn.cond='''+OrderCalculateSpecialBOM.SpecMas.fieldbyname('cond').Value+''' ');
          sql.add('      and ZLZL.ZLBH='''+OrderCalculateSpecialBOM.SpecMas.fieldbyname('ZLBH').Value+''' ');
          sql.add('      and NOT EXISTS(select zlzls2.zlbh ');
          sql.add('                     from zlzls2 ');
          sql.add('                     where zlzls2.CLBH=xxzlssvn.CLBH and zlzls2.BWBH=xxzlssvn.BWBH and zlzls2.zlbh=zlzl.zlbh ');
          sql.add('                           and xh<>''VN'' and zlzls2.YN=''2'') ');
          //Delete special
          sql.add('delete ZLZLS2 ');
          sql.add('where XH=''VN'' and (left(CLBH,1) = ''H'' or left(CLBH,1) = ''L'') ');
          sql.add('      and EXISTS(select zlzl.zlbh ');
          sql.add('                 from xxzlssvn ');
          sql.add('                 left join DDZL on ddzl.XieXing=xxzlssvn.XieXing and ddzl.SheHao=xxzlssvn.SheHao and ddzl.Dest=xxzlssvn.cond ');
          sql.add('                 left join ZLZL on ZLZL.ZLBH=DDZL.DDBH ');
          sql.add('                 left join CLZL on CLZL.CLDH=xxzlssvn.CLBH ');
          sql.add('                 where ADTYP=''D'' and zlzls2.ZLBH=zlzl.ZLBH and zlzls2.CLBH=xxzlssvn.CLBH and zlzls2.BWBH=xxzlssvn.BWBH ');
          sql.add('                       and xxzlssvn.XieXing='''+OrderCalculateSpecialBOM.SpecMas.fieldbyname('XieXing').Value+''' ');
          sql.add('                       and xxzlssvn.SheHao='''+OrderCalculateSpecialBOM.SpecMas.fieldbyname('SheHao').Value+''' ');
          sql.add('                       and xxzlssvn.cond='''+OrderCalculateSpecialBOM.SpecMas.fieldbyname('cond').Value+''' ');
          sql.add('                       and ZLZL.ZLBH='''+OrderCalculateSpecialBOM.SpecMas.fieldbyname('ZLBH').Value+''') ');
          //update
          sql.add('UPDATE ZLZLS2 ');
          sql.add('SET CLSL=0 ');
          sql.add('where XH<>''VN'' and yn=''1'' ');
          sql.add('      and EXISTS(select s2.zlbh ');
          sql.add('                 from ZLZLS2 s2 ');
          sql.add('                 where XH='+''''+'VN'+''' and (left(CLBH,1) = ''H'' or left(CLBH,1) = ''L'') ');
          sql.add('                       and s2.zlbh=zlzls2.zlbh and s2.bwbh=zlzls2.bwbh and s2.clbh=zlzls2.clbh ');
          sql.add('                       and s2.size=zlzls2.size and s2.yn=''2'' ');
          sql.add('                       and s2.ZLBH='''+OrderCalculateSpecialBOM.SpecMas.fieldbyname('ZLBH').Value+''') ');
          execsql;
          lRestart:
        end;
        next;
      end;
    end;
    showmessage('Calculate finished.');
  except
    showmessage('Have wrong.');
  end;
end;


procedure TOrderCalculateSpecialBOM.DBGrid1DblClick(Sender: TObject);
begin
  if SpecMas.RecordCount>0 then
  begin
    Detail:=TDetail.create(self);
    Detail.show;
  end;
end;

end.
