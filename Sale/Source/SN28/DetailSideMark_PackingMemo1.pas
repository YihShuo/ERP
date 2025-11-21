unit DetailSideMark_PackingMemo1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, ComCtrls, StdCtrls, ExtCtrls,dateutils,comobj;

type
  TDetailSideMark_PackingMemo = class(TForm)
    Panel1: TPanel;
    SideMark_PackingPage: TPageControl;
    TS1: TTabSheet;
    TS3: TTabSheet;
    DBGridEh1: TDBGridEh;
    DBGridEh2: TDBGridEh;
    qryYWDDMT: TQuery;
    qryYWDDBZ: TQuery;
    DS_YWDDMT: TDataSource;
    DS_YWDDBZ: TDataSource;
    Label1: TLabel;
    edtSpecNo: TEdit;
    Label2: TLabel;
    edtArticle: TEdit;
    RB1: TRadioButton;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    RB2: TRadioButton;
    Button3: TButton;
    Button4: TButton;
    edtBuyNo: TEdit;
    qryYWDDMTDDBH: TStringField;
    qryYWDDMTXH: TStringField;
    qryYWDDMTMTBH1: TStringField;
    qryYWDDMTMTLR1: TStringField;
    qryYWDDMTMTBH2: TStringField;
    qryYWDDMTMTLR2: TStringField;
    qryYWDDMTMTBH3: TStringField;
    qryYWDDMTMTLR3: TStringField;
    qryYWDDMTMTBH4: TStringField;
    qryYWDDMTMTLR4: TStringField;
    qryYWDDMTUSERDATE: TDateTimeField;
    qryYWDDMTUSERID: TStringField;
    qryYWDDMTYN: TStringField;
    qryYWDDBZDDBH: TStringField;
    qryYWDDBZXH: TStringField;
    qryYWDDBZMENO: TStringField;
    qryYWDDBZZWSM: TStringField;
    qryYWDDBZVNSM: TStringField;
    qryYWDDBZLX: TStringField;
    qryYWDDBZUSERID: TStringField;
    qryYWDDBZUSERDate: TDateTimeField;
    qryYWDDBZYN: TStringField;
    Query1: TQuery;
    Panel2: TPanel;
    rdShipping: TRadioButton;
    rdProduction: TRadioButton;
    rdTotal: TRadioButton;
    qryYWDDMTArticle: TStringField;
    Label3: TLabel;
    edtCountry: TEdit;
    qryYWDDBZCountry: TStringField;
    TS2: TTabSheet;
    DBGridEh3: TDBGridEh;
    qryYWBZPOS: TQuery;
    DS_YWBZPOS: TDataSource;
    qryYWBZPOSDDBH: TStringField;
    qryYWBZPOSCTS: TIntegerField;
    TS4: TTabSheet;
    qryZLZLS2: TQuery;
    DS_ZLZLS2: TDataSource;
    DBGridEh4: TDBGridEh;
    qryZLZLS2ZLBH: TStringField;
    qryZLZLS2xh: TStringField;
    qryZLZLS2BWBH: TStringField;
    qryZLZLS2CLBH: TStringField;
    qryZLZLS2SIZE: TStringField;
    qryZLZLS2CLSL: TFloatField;
    qryZLZLS2USERID: TStringField;
    qryZLZLS2USERDATE: TDateTimeField;
    qryZLZLS2YN: TStringField;
    qryZLZLS2DWBH: TStringField;
    qryZLZLS2YWPM: TStringField;
    qryYWBZPOSUserid: TStringField;
    qryYWBZPOSUserdate: TDateTimeField;
    qryZLZLS2Article: TStringField;
    qryZLZLS2BUYNO: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure rdShippingClick(Sender: TObject);
    procedure rdProductionClick(Sender: TObject);
    procedure rdTotalClick(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DetailSideMark_PackingMemo: TDetailSideMark_PackingMemo;
  NDate:Tdate;

implementation

uses FunUnit;

{$R *.dfm}

procedure TDetailSideMark_PackingMemo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   action:=cafree;
end;

procedure TDetailSideMark_PackingMemo.FormDestroy(Sender: TObject);
begin
   DetailSideMark_PackingMemo:=nil;
end;

procedure TDetailSideMark_PackingMemo.Button3Click(Sender: TObject);
begin
  if  SideMark_PackingPage.ActivePageIndex=0 then
  begin
    with qryYWDDMT do
    begin
      active:=false;
      sql.Clear;
      sql.add('select YWDDMT.*,DDZL.Article ');
      sql.add('from YWDDMT left join YWDD on YWDDMT.DDBH=YWDD.DDBH');
      sql.Add('left join DDZL on YWDD.DDBH=DDZL.DDBH');
      sql.add('left join LBZLS on LBZLS.LB='+''''+'06'+''''+' and LBZLS.LBDH=DDZL.DDGB');
      sql.add('where 1=1');
      if edtSpecNo.Text <> '' then
        sql.Add(' and YWDDMT.DDBH like  '+''''+edtSpecNo.Text+'%'+'''' );
      if edtArticle.Text <> '' then
        sql.Add(' and DDZL.Article like  '+''''+edtArticle.Text+'%'+'''' );
      if edtCountry.Text <> '' then
        sql.Add(' and LBZLS.YWSM like  '+''''+edtCountry.Text+'%'+'''' );
      if RB1.Checked=true then
      begin
        sql.add('      and convert(smalldatetime,convert(varchar,YWDD.ETD,111)) between ');
        sql.add('      '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+'and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
      end else if RB2.Checked=true then
      begin
        sql.add('      and DDZL.BUYNO like '''+edtBuyNo.Text+'%'' ');
      end;
      sql.add('order by YWDDMT.DDBH');
      //funcobj.WriteErrorLog(sql.Text);
      active:=true;
    end;
  end;
  if  SideMark_PackingPage.ActivePageIndex=1 then
  begin
    with qryYWDDBZ do
    begin
      active:=false;
      sql.Clear;
      sql.add('select YWDDBZ.*,LBZLS.YWSM as Country ');
      sql.add('from YWDDBZ left join YWDD on YWDDBZ.DDBH=YWDD.DDBH');
      sql.Add('left join DDZL on YWDD.DDBH=DDZL.DDBH');
      sql.add('left join LBZLS on LBZLS.LB='+''''+'06'+''''+' and LBZLS.LBDH=DDZL.DDGB');
      sql.add('where 1=1');
      if edtSpecNo.Text <> '' then
        sql.Add(' and YWDDBZ.DDBH like  '+''''+edtSpecNo.Text+'%'+'''' );
      if edtArticle.Text <> '' then
        sql.Add(' and DDZL.Article like  '+''''+edtArticle.Text+'%'+'''' );
      if edtCountry.Text <> '' then
        sql.Add(' and LBZLS.YWSM like  '+''''+edtCountry.Text+'%'+'''' );
      if RB1.Checked=true then
      begin
        sql.add('      and convert(smalldatetime,convert(varchar,YWDD.ETD,111)) between ');
        sql.add('      '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+'and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
      end else if RB2.Checked=true then
      begin
        sql.add('      and DDZL.BUYNO like '''+edtBuyNo.Text+'%'' ');
      end;
      if rdShipping.Checked then
        sql.add('and YWDDBZ.YN = 2')
      else if rdProduction.Checked then
        sql.Add('and YWDDBZ.YN=1');
      sql.add('order by YWDDBZ.DDBH');
      //funcobj.WriteErrorLog(sql.Text);
      active:=true;
    end;
  end;
  if  SideMark_PackingPage.ActivePageIndex=2 then
  begin
    with qryYWBZPOS do
    begin
      active:=false;
      sql.Clear;
      sql.add('select YWBZPOS.DDBH, max (YWBZPOS.CTZ) as CTS,MAX(YWBZPOS.USERID) as Userid, MAX(YWBZPOS.USERDATE) as Userdate');
      sql.add('from YWBZPOS left join YWDD on YWBZPOS.DDBH=YWDD.DDBH');
      sql.Add('left join DDZL on YWDD.DDBH=DDZL.DDBH');
      sql.add('left join LBZLS on LBZLS.LB='+''''+'06'+''''+' and LBZLS.LBDH=DDZL.DDGB');
      sql.add('where 1=1');
      if edtSpecNo.Text <> '' then
        sql.Add(' and YWBZPOS.DDBH like  '+''''+edtSpecNo.Text+'%'+'''' );
      if edtArticle.Text <> '' then
        sql.Add(' and DDZL.Article like  '+''''+edtArticle.Text+'%'+'''' );
      if edtCountry.Text <> '' then
        sql.Add(' and LBZLS.YWSM like  '+''''+edtCountry.Text+'%'+'''' );
      if RB1.Checked=true then
      begin
        sql.add('      and convert(smalldatetime,convert(varchar,YWDD.ETD,111)) between ');
        sql.add('      '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+'and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
      end else if RB2.Checked=true then
      begin
        sql.add('      and DDZL.BUYNO like '''+edtBuyNo.Text+'%'' ');
      end;
      sql.add('group by YWBZPOS.DDBH');
      sql.add('order by YWBZPOS.DDBH');
      //funcobj.WriteErrorLog(sql.Text);
      active:=true;
    end;
  end;
  if  SideMark_PackingPage.ActivePageIndex=3 then
  begin
    with qryZLZLS2 do
    begin
      active:=false;
      sql.Clear;
      SQL.Add('  select ZLBH,xh,BWBH,CSBH,MJBH,CLBH,ZMLB,SIZE,CLSL,USAGE,USERID,USERDATE,YN,ZWPM,DWBH,Article,BUYNO    ');
      SQL.Add('  ,max (Case when (CCQQ is not null and CCQZ is not null) and (CCQQ <> '''' and CCQZ <> '''') then YWPM +''(''+CCQQ +''-'' +CCQZ +'')'' else YWPM end) as YWPM  ');
      SQL.Add('  from (  ');
      SQL.Add('  select ZLZLS2.*,CLZL.ZWPM,CLZL.YWPM,CLZL.DWBH,DDZL.Article,DDZL.BUYNO    ');
      SQL.Add('           ,max (Case when DXXZLS.DDBH is null then XXZLS.CCQQ else DXXZLS.CCQQ end) as CCQQ  ');
      SQL.Add('           ,max (Case when DXXZLS.DDBH is null then XXZLS.CCQZ else DXXZLS.CCQZ end) as CCQZ  ');
      SQL.Add('  from ZLZLS2  ');
      SQL.Add('  left join CLZL on ZLZLS2.CLBH=CLZL.CLDH  ');
      SQL.Add('  LEFT JOIN DDZL AS DDZL ON ZLZLS2.ZLBH = DDZL.DDBH  ');
      sql.Add('  left join YWDD on YWDD.DDBH=DDZL.DDBH');
      sql.add('  left join LBZLS on LBZLS.LB='+''''+'06'+''''+' and LBZLS.LBDH=DDZL.DDGB');
      SQL.Add('  LEFT JOIN XXZLS AS XXZLS ON DDZL.XIEXING = XXZLS.XIEXING   ');
      SQL.Add('             AND DDZL.SHEHAO = XXZLS.SHEHAO AND ZLZLS2.BWBH = XXZLS.BWBH   ');
      SQL.Add('  LEFT JOIN DDZL_XXZLS AS DXXZLS ON DDZL.XIEXING = DXXZLS.XIEXING  ');
      SQL.Add('             AND DDZL.SHEHAO = DXXZLS.SHEHAO AND ZLZLS2.BWBH = DXXZLS.BWBH and DXXZLS.DDBH = DDZL.DDBH  ');
      SQL.Add('  where (ZLZLS2.CLBH like ''H14%''  or ZLZLS2.CLBH like ''H15%'' or ZLZLS2.CLBH like ''L09%'')  ');
      if edtSpecNo.Text <> '' then
        sql.Add(' and DDZL.DDBH like  '+''''+edtSpecNo.Text+'%'+'''' );
      if edtArticle.Text <> '' then
        sql.Add(' and DDZL.Article like  '+''''+edtArticle.Text+'%'+'''' );
      if edtCountry.Text <> '' then
        sql.Add(' and LBZLS.YWSM like  '+''''+edtCountry.Text+'%'+'''' );
      if RB1.Checked=true then
      begin
        sql.add('      and convert(smalldatetime,convert(varchar,YWDD.ETD,111)) between ');
        sql.add('      '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+'and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
      end else if RB2.Checked=true then
      begin
        sql.add('      and DDZL.BUYNO like '''+edtBuyNo.Text+'%'' ');
      end;

      SQL.Add('           and  not exists (  ');
      SQL.Add('           select *  ');
      SQL.Add('           from ZLZLS2 A  ');
      SQL.Add('           where ZLZLS2.ZLBH=A.ZLBH and ZLZLS2.BWBH=A.BWBH and ZLZLS2.CLBH=A.CLBH  and ZLZLS2.MJBH=A.MJBH and ZLZLS2.SIZE=A.SIZE and A.YN=2)  ');
      SQL.Add('  group by ZLZLS2.ZLBH,ZLZLS2.xh,ZLZLS2.BWBH,ZLZLS2.CSBH,ZLZLS2.MJBH,ZLZLS2.CLBH,ZLZLS2.ZMLB,ZLZLS2.SIZE,  ');
      SQL.Add('  ZLZLS2.CLSL,ZLZLS2.USAGE,ZLZLS2.USERID,ZLZLS2.USERDATE,ZLZLS2.YN,CLZL.ZWPM,CLZL.YWPM,CLZL.dwbh,DDZL.Article,DDZL.BUYNO    ');
      SQL.Add('  union all  ');
      SQL.Add('  select ZLZLS2.*,CLZL.ZWPM,CLZL.YWPM,CLZL.DWBH,DDZL.Article,DDZL.BUYNO    ');
      SQL.Add('           ,max (Case when DXXZLS.DDBH is null then XXZLS.CCQQ else DXXZLS.CCQQ end) as CCQQ  ');
      SQL.Add('           ,max (Case when DXXZLS.DDBH is null then XXZLS.CCQZ else DXXZLS.CCQZ end) as CCQZ  ');
      SQL.Add('  from ZLZLS2  ');
      SQL.Add('  left join CLZL on ZLZLS2.CLBH=CLZL.CLDH   ');
      SQL.Add('  LEFT JOIN DDZL AS DDZL ON ZLZLS2.ZLBH = DDZL.DDBH  ');
      sql.Add('  left join YWDD on YWDD.DDBH=DDZL.DDBH');
      sql.add('  left join LBZLS on LBZLS.LB='+''''+'06'+''''+' and LBZLS.LBDH=DDZL.DDGB');
      SQL.Add('  LEFT JOIN XXZLS AS XXZLS ON DDZL.XIEXING = XXZLS.XIEXING   ');
      SQL.Add('             AND DDZL.SHEHAO = XXZLS.SHEHAO AND ZLZLS2.BWBH = XXZLS.BWBH  ');
      SQL.Add('  LEFT JOIN DDZL_XXZLS AS DXXZLS ON DDZL.XIEXING = DXXZLS.XIEXING  ');
      SQL.Add('             AND DDZL.SHEHAO = DXXZLS.SHEHAO AND ZLZLS2.BWBH = DXXZLS.BWBH and DXXZLS.DDBH = DDZL.DDBH   ');
      SQL.Add('  where (ZLZLS2.CLBH like ''H14%''  or ZLZLS2.CLBH like ''H15%'' or ZLZLS2.CLBH like ''L09%'')  ');
      if edtSpecNo.Text <> '' then
        sql.Add(' and DDZL.DDBH like  '+''''+edtSpecNo.Text+'%'+'''' );
      if edtArticle.Text <> '' then
        sql.Add(' and DDZL.Article like  '+''''+edtArticle.Text+'%'+'''' );
      if edtCountry.Text <> '' then
        sql.Add(' and LBZLS.YWSM like  '+''''+edtCountry.Text+'%'+'''' );
      if RB1.Checked=true then
      begin
        sql.add('      and convert(smalldatetime,convert(varchar,YWDD.ETD,111)) between ');
        sql.add('      '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+'and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
      end else if RB2.Checked=true then
      begin
        sql.add('      and DDZL.BUYNO like '''+edtBuyNo.Text+'%'' ');
      end;
      SQL.Add('  and zlzls2.YN=''2''   ');
      SQL.Add('  group by ZLZLS2.ZLBH,ZLZLS2.xh,ZLZLS2.BWBH,ZLZLS2.CSBH,ZLZLS2.MJBH,ZLZLS2.CLBH,ZLZLS2.ZMLB,ZLZLS2.SIZE,  ');
      SQL.Add('  ZLZLS2.CLSL,ZLZLS2.USAGE,ZLZLS2.USERID,ZLZLS2.USERDATE,ZLZLS2.YN,CLZL.ZWPM,CLZL.YWPM,CLZL.dwbh,DDZL.Article,DDZL.BUYNO    ');
      SQL.Add('  ) ZLZLS2  ');
      SQL.Add('  group by ZLBH,xh,BWBH,CSBH,MJBH,CLBH,ZMLB,SIZE,CLSL,USAGE,USERID,USERDATE,YN,ZWPM,DWBH,Article,BUYNO    ');
      //funcobj.WriteErrorLog(sql.Text);
      active:=true;
    end;
  end;


end;

procedure TDetailSideMark_PackingMemo.FormCreate(Sender: TObject);
begin
  with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select getdate() as NDate ');
    active:=true;
    NDate:=fieldbyname('NDate').Value;
  end;
  DTP1.date:=startofthemonth(incmonth(NDate,1))+5;
  DTP2.date:=startofthemonth(incmonth(NDate,2))+4;
  SideMark_PackingPage.ActivePageIndex:=0;
end;



procedure TDetailSideMark_PackingMemo.rdShippingClick(Sender: TObject);
begin
  with qryYWDDBZ do
    begin
      active:=false;
      sql.Clear;
      sql.add('select YWDDBZ.*,LBZLS.YWSM as Country ');
      sql.add('from YWDDBZ left join YWDD on YWDDBZ.DDBH=YWDD.DDBH');
      sql.Add('left join DDZL on YWDD.DDBH=DDZL.DDBH');
      sql.add('left join LBZLS on LBZLS.LB='+''''+'06'+''''+' and LBZLS.LBDH=DDZL.DDGB');
      sql.add('where 1=1');
      if edtSpecNo.Text <> '' then
        sql.Add(' and YWDDBZ.DDBH like  '+''''+edtSpecNo.Text+'%'+'''' );
      if edtArticle.Text <> '' then
        sql.Add(' and DDZL.Article like  '+''''+edtArticle.Text+'%'+'''' );
      if edtCountry.Text <> '' then
        sql.Add(' and LBZLS.YWSM like  '+''''+edtCountry.Text+'%'+'''' );
      if RB1.Checked=true then
      begin
        sql.add('      and convert(smalldatetime,convert(varchar,YWDD.ETD,111)) between ');
        sql.add('      '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+'and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
      end else if RB2.Checked=true then
      begin
        sql.add('      and DDZL.BUYNO like '''+edtBuyNo.Text+'%'' ');
      end;
      sql.add('and YWDDBZ.YN = 2');
      sql.add('order by YWDDBZ.DDBH');
      active:=true;
    end;
end;

procedure TDetailSideMark_PackingMemo.rdProductionClick(Sender: TObject);
begin
  with qryYWDDBZ do
    begin
      active:=false;
      sql.Clear;
      sql.add('select YWDDBZ.*,LBZLS.YWSM as Country ');
      sql.add('from YWDDBZ left join YWDD on YWDDBZ.DDBH=YWDD.DDBH');
      sql.Add('left join DDZL on YWDD.DDBH=DDZL.DDBH');
      sql.add('left join LBZLS on LBZLS.LB='+''''+'06'+''''+' and LBZLS.LBDH=DDZL.DDGB');
      sql.add('where 1=1');
      if edtSpecNo.Text <> '' then
        sql.Add(' and YWDDBZ.DDBH like  '+''''+edtSpecNo.Text+'%'+'''' );
      if edtArticle.Text <> '' then
        sql.Add(' and DDZL.Article like  '+''''+edtArticle.Text+'%'+'''' );
      if edtCountry.Text <> '' then
        sql.Add(' and LBZLS.YWSM like  '+''''+edtCountry.Text+'%'+'''' );
      if RB1.Checked=true then
      begin
        sql.add('      and convert(smalldatetime,convert(varchar,YWDD.ETD,111)) between ');
        sql.add('      '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+'and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
      end else if RB2.Checked=true then
      begin
        sql.add('      and DDZL.BUYNO like '''+edtBuyNo.Text+'%'' ');
      end;
      sql.add('and YWDDBZ.YN = 1');
      sql.add('order by YWDDBZ.DDBH');
      active:=true;
    end;
end;

procedure TDetailSideMark_PackingMemo.rdTotalClick(Sender: TObject);
begin
  with qryYWDDBZ do
    begin
      active:=false;
      sql.Clear;
      sql.add('select YWDDBZ.*,LBZLS.YWSM as Country ');
      sql.add('from YWDDBZ left join YWDD on YWDDBZ.DDBH=YWDD.DDBH');
      sql.Add('left join DDZL on YWDD.DDBH=DDZL.DDBH');
      sql.add('left join LBZLS on LBZLS.LB='+''''+'06'+''''+' and LBZLS.LBDH=DDZL.DDGB');
      sql.add('where 1=1');
      if edtSpecNo.Text <> '' then
        sql.Add(' and YWDDBZ.DDBH like  '+''''+edtSpecNo.Text+'%'+'''' );
      if edtArticle.Text <> '' then
        sql.Add(' and DDZL.Article like  '+''''+edtArticle.Text+'%'+'''' );
      if edtCountry.Text <> '' then
        sql.Add(' and LBZLS.YWSM like  '+''''+edtCountry.Text+'%'+'''' );  
      if RB1.Checked=true then
      begin
        sql.add('      and convert(smalldatetime,convert(varchar,YWDD.ETD,111)) between ');
        sql.add('      '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+'and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
      end else if RB2.Checked=true then
      begin
        sql.add('      and DDZL.BUYNO like '''+edtBuyNo.Text+'%'' ');
      end;
      sql.add('order by YWDDBZ.DDBH');
      active:=true;
    end;
end;

procedure TDetailSideMark_PackingMemo.Button4Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j,k,Voffset,Hoffset,index:integer;
begin
  if SideMark_PackingPage.ActivePageIndex=0 then
  begin
    if  qryYWDDMT.active  then
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
          for   i:=0   to   qryYWDDMT.fieldcount-1   do
            begin
                eclApp.Cells(1,i+1):=qryYWDDMT.fields[i].FieldName;
            end;

          qryYWDDMT.First;
          j:=2;
          while   not   qryYWDDMT.Eof   do
            begin
              for   i:=0   to  qryYWDDMT.fieldcount-1  do
              begin
                eclApp.Cells(j,i+1):=qryYWDDMT.Fields[i].Value;
              end;
            qryYWDDMT.Next;
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

  if SideMark_PackingPage.ActivePageIndex=1 then
  begin
    if  qryYWDDBZ.active  then
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
          for   i:=0   to   qryYWDDBZ.fieldcount-1   do
            begin
                eclApp.Cells(1,i+1):=qryYWDDBZ.fields[i].FieldName;
            end;

          qryYWDDBZ.First;
          j:=2;
          while   not   qryYWDDBZ.Eof   do
            begin
              for   i:=0   to  qryYWDDBZ.fieldcount-1  do
              begin
                eclApp.Cells(j,i+1):=qryYWDDBZ.Fields[i].Value;
              end;
            qryYWDDBZ.Next;
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

  if SideMark_PackingPage.ActivePageIndex=2 then
  begin
    if  qryYWBZPOS.active  then
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
          for   i:=0   to   qryYWBZPOS.fieldcount-1   do
            begin
                eclApp.Cells(1,i+1):=qryYWBZPOS.fields[i].FieldName;
            end;

          qryYWBZPOS.First;
          j:=2;
          while   not   qryYWBZPOS.Eof   do
            begin
              for   i:=0   to  qryYWBZPOS.fieldcount-1  do
              begin
                eclApp.Cells(j,i+1):=qryYWBZPOS.Fields[i].Value;
              end;
            qryYWBZPOS.Next;
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

  if SideMark_PackingPage.ActivePageIndex=3 then
  begin
    if  qryZLZLS2.active  then
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
          for   i:=0   to   qryZLZLS2.fieldcount-1   do
            begin
                eclApp.Cells(1,i+1):=qryZLZLS2.fields[i].FieldName;
            end;

          qryZLZLS2.First;
          j:=2;
          while   not   qryZLZLS2.Eof   do
            begin
              for   i:=0   to  qryZLZLS2.fieldcount-1  do
              begin
                eclApp.Cells(j,i+1):=qryZLZLS2.Fields[i].Value;
              end;
            qryZLZLS2.Next;
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
end;

end.
