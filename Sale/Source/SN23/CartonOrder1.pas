unit CartonOrder1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GridsEh, DBGridEh, StdCtrls, Buttons, ExtCtrls, DB, DBTables
  ,Math,dateutils, Menus, Mask, DBCtrls, ComCtrls, comobj,DBGridEhImpExp, ShellAPI, Zlib,IniFiles;

type
  TCartonOrder = class(TForm)
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
    Panel5: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    DBGridEh1: TDBGridEh;
    YWDD: TQuery;
    YWBZPO: TQuery;
    DS1: TDataSource;
    DS2: TDataSource;
    Qtemp: TQuery;
    YWDDDDBH: TStringField;
    YWDDXieMing: TStringField;
    UpdateSQL1: TUpdateSQL;
    PopupMenu1: TPopupMenu;
    CalculateN: TMenuItem;
    YWDDXieXing: TStringField;
    YWDDKHBH: TStringField;
    YWDDKHPO: TStringField;
    YWDDCountry: TStringField;
    YWDDYN: TStringField;
    YWDDArticle: TStringField;
    PopupMenu2: TPopupMenu;
    CheckNWGW1: TMenuItem;
    CGZL: TQuery;
    DS3: TDataSource;
    UpCGZL: TUpdateSQL;
    YWDDGSBH: TStringField;
    CB1: TCheckBox;
    YWDDShipDate: TDateTimeField;
    PrintMemo1: TMenuItem;
    YWDDTP: TQuery;
    Label14: TLabel;
    DTP1: TDateTimePicker;
    Label15: TLabel;
    DTP2: TDateTimePicker;
    YWDDBZDate: TDateTimeField;
    YWDDCGDate: TDateTimeField;
    YWDDshehao: TStringField;
    YWDDMarkDate: TDateTimeField;
    bnHelp: TBitBtn;
    YWDDnocarton: TIntegerField;
    YWDDmodified: TIntegerField;
    Label4: TLabel;
    edCountry: TEdit;
    YWBZPOTemp: TQuery;
    Label7: TLabel;
    Edit4: TEdit;
    CB2: TCheckBox;
    CB3: TCheckBox;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Label5: TLabel;
    Label6: TLabel;
    DBEdit2: TDBEdit;
    DBEdit1: TDBEdit;
    bnBelow: TButton;
    DBGridEh2: TDBGridEh;
    Panel6: TPanel;
    DBGridEh3: TDBGridEh;
    BD4: TBitBtn;
    BD5: TBitBtn;
    BD6: TBitBtn;
    YWBZPOE: TQuery;
    DS4: TDataSource;
    YWBZPOEDDBH: TStringField;
    YWBZPOEMCLBH: TStringField;
    YWBZPOECLBH: TStringField;
    YWBZPOEUSERID: TStringField;
    YWBZPOEMYWPM: TStringField;
    YWBZPOEYWPM: TStringField;
    UpYWBZPOE: TUpdateSQL;
    YWBZPOEYN: TStringField;
    YWBZPOECTS: TIntegerField;
    YWBZPOEUSERDATE: TDateTimeField;
    Label8: TLabel;
    Edit5: TEdit;
    TabSheet3: TTabSheet;
    Panel7: TPanel;
    BC4: TBitBtn;
    BC5: TBitBtn;
    BC6: TBitBtn;
    DBGridEh4: TDBGridEh;
    YWBZPOS: TQuery;
    DS5: TDataSource;
    UpYWBZPOS: TUpdateSQL;
    YWBZPOSDDBH: TStringField;
    YWBZPOSXH: TStringField;
    YWBZPOSDDCC: TStringField;
    YWBZPOSQty: TIntegerField;
    YWBZPOSCTS: TIntegerField;
    YWBZPOSMEMO: TStringField;
    YWBZPOSCTQ: TIntegerField;
    YWBZPOSCTZ: TIntegerField;
    YWBZPOSInBoxCode: TStringField;
    YWBZPOSUSERDATE: TDateTimeField;
    YWBZPOSUSERID: TStringField;
    YWBZPOSYN: TStringField;
    YWBZPOSYWPM: TStringField;
    BC7: TBitBtn;
    chkSize: TCheckBox;
    YWDDQty: TIntegerField;
    YWDDCGNO: TStringField;
    N2: TMenuItem;
    Print1: TMenuItem;
    N3: TMenuItem;
    QuickCarton: TMenuItem;
    NWeightN: TMenuItem;
    BD2: TBitBtn;
    BD3: TBitBtn;
    YWBZPOECSBH: TStringField;
    YWBZPOEZSYWJC: TStringField;
    bbt7: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure YWDDAfterScroll(DataSet: TDataSet);
    procedure BB7Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure YWBZPOAfterOpen(DataSet: TDataSet);
    procedure YWBZPONewRecord(DataSet: TDataSet);
    procedure DBGridEh2EditButtonClick(Sender: TObject);
    procedure CalculateNClick(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure bbt5Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure CheckNWGW1Click(Sender: TObject);
    procedure BT1Click(Sender: TObject);
    procedure PrintMemo1Click(Sender: TObject);
    procedure bnBelowClick(Sender: TObject);
    procedure DBGridEh2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure bnHelpClick(Sender: TObject);
    procedure bbt6Click(Sender: TObject);
    procedure DBGridEh1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure DBGridEh1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure PageControl1Change(Sender: TObject);
    procedure BD4Click(Sender: TObject);
    procedure BD6Click(Sender: TObject);
    procedure BD5Click(Sender: TObject);
    procedure YWBZPOEAfterOpen(DataSet: TDataSet);
    procedure DBGridEh3EditButtonClick(Sender: TObject);
    procedure YWBZPOSAfterOpen(DataSet: TDataSet);
    procedure BC4Click(Sender: TObject);
    procedure BC6Click(Sender: TObject);
    procedure BC5Click(Sender: TObject);
    procedure BC7Click(Sender: TObject);
    procedure Print1Click(Sender: TObject);
    procedure QuickCartonClick(Sender: TObject);
    procedure NWeightNClick(Sender: TObject);
    procedure BD2Click(Sender: TObject);
    procedure BD3Click(Sender: TObject);
    procedure DBGridEh3GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure bbt7Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
  private
    Close_YWBZPO:boolean;
    procedure countCTS;
    procedure setReadOnly(b:boolean);
    procedure ShowYWBZPO();
    procedure CalCulateZLZLS2_Carton();
  public
    procedure setCarton(vCLBH:Variant;bBelow:boolean;vYWPM:String;IsMessage:boolean=true);
    procedure SaveBtnClick(isRefresh:boolean=true);
  end;

var
  CartonOrder: TCartonOrder;
  sdate,edate,NDate:Tdate;

implementation

uses CartonOrder_CT1, main1, CartonOrder_Me1, CartonOrder_Print1,
  CartonOrderNW1, CartonOrder_ZS1, CartonOrder_Memo1, OrderPack_Print1,
  CartonOrder_PrintDet1,FunUnit;

{$R *.dfm}

procedure TCartonOrder.FormClose(Sender: TObject;var Action: TCloseAction);
begin
  if BB5.enabled then
  begin
    messagedlg('You have to save data first.',mtwarning,[mbyes],0);
    action:=canone;
  end else
  begin
    action:=Cafree;
  end;  
end;

procedure TCartonOrder.Button1Click(Sender: TObject);
var
  ff:textfile;
begin
  sdate:=DTP1.Date;
  edate:=DTP2.Date;
  CGZL.Active:=false;
  Close_YWBZPO:=true; 
  with YWDD do
  begin
    active:=false;
    sql.Clear;
    // fix  ywdd.bzDate   left join cgzl
    sql.add('select YWDD.YSBH as DDBH, XXZL.XieMing,DDZL.Pairs as Qty,XXZL.XieXing,xxzl.shehao,DDZL.KHBH,DDZL.ShipDate,Max(YWDD.BZDate) as BZDate, Max(CGZL.CGDate) as CGDate,Max(CGZL.CGNO) as CGNO,  ');
    sql.add('       DDZL.KHPO,LBZLS.YWSM as Country,DDZL.YN,XXZL.Article, YWDD.GSBH,max(YWDDMT.USERDATE) as MarkDate ');
    sql.add('       ,carton.nocarton,carton.modified ');
    sql.add('from YWDD');
    sql.add('left join DDZL on YWDD.YSBH=DDZl.DDBH ');
    sql.add('left join ZLZL  on ZLZL.DDBH=DDZL.DDBH');
    //sql.add('left join CGZL  on CGZL.CGNO=YWDD.CGNO');  20200921 change sql
    sql.Add(' left join (select cgzl.CGNO,cgzl.CGDate,ywdd.YSBH');
    sql.Add('			       from ywdd left join cgzl on ywdd.CGNO=cgzl.CGNO ');
    sql.Add('			       left join ddzl on ywdd.YSBH=ddzl.DDBH');
    sql.Add('       		 where cgzl.CGLX=''5''');
    sql.add('            and convert(smalldatetime,convert(varchar,YWDD.ETD,111)) between ');
    sql.add('            '''+formatdatetime('yyyy/MM/dd',sdate)+'''and '''+formatdatetime('yyyy/MM/dd',edate)+'''');
    if edit1.text <> '' then
    sql.Add('             and YWDD.YSBH like '''+edit1.Text+'%''');
    if edit4.text <> '' then
    sql.Add('             and DDZL.BUYNO like '''+edit4.Text+'%''');
    sql.Add('             union all');
    sql.Add('       			select cgzl.CGNO,cgzl.CGDate,cgzlss.zlbh');
    sql.Add('       			from cgzlss inner join ddzl on cgzlss.zlbh=ddzl.ddbh ');
    sql.Add('             left join CGZLS  on CGZLS.CGNO=CGZLSS.CGNO and CGZLS.CLBH=CGZLSS.CLBH');
    sql.Add('       			left join  CGZL  on CGZl.CGNO=CGZLSS.CGNO');
    sql.Add('       			where cgzl.CGLX in (''1'',''2'')');
    sql.Add('       			and  CGZLSS.CLBH like ''U%''');
    if edit1.text <> '' then
    sql.Add('           and CGZLSS.ZLBH  like '''+edit1.Text+'%''');
    if edit4.text <> '' then
    sql.Add('             and DDZL.BUYNO like '''+edit4.Text+'%''');
		sql.Add('           ) CGZL on CGZL.YSBH=ywdd.DDBH');
    sql.add('left join XXZL  on DDZL.XieXing=XXZL.XieXing and DDZL.SheHao=XXZL.SheHao');
    sql.add('left join LBZLS on LBZLS.LB=''13'' and LBZLS.LBDH=DDZL.Dest');
    sql.add('left join YWDDMT on YWDD.DDBH=YWDDMT.DDBH');
    sql.add('left join (');
    sql.add('select YWBZPOS.DDBH,count(case when YWBZPO.CLBH is null then 1 end) as nocarton');
    sql.add(',count(case when YWBZPO.USERDATE < YWBZPOS.USERDATE then 1 end) as modified');
    sql.add('from YWBZPOS');
    sql.add('left join YWBZPO on YWBZPO.DDBH = YWBZPOS.DDBH and YWBZPO.XH = YWBZPOS.XH');
    sql.add('left join YWDD on YWDD.DDBH = YWBZPOS.DDBH');
    // add can search article
    sql.Add('left join DDZL on YWDD.YSBH=DDZl.DDBH ');
    sql.add('left join XXZL  on DDZL.XieXing=XXZL.XieXing and DDZL.SheHao=XXZL.SheHao');
    //
    sql.add('where convert(smalldatetime,convert(varchar,YWDD.ETD,111)) between ');
    sql.add('      '''+formatdatetime('yyyy/MM/dd',sdate)+'''and '''+formatdatetime('yyyy/MM/dd',edate)+'''');
    if edit1.text <> '' then
      sql.Add('      and YWDD.YSBH like '''+edit1.Text+'%''');
    if edit2.text <> '' then
      sql.add('      and XXZL.Article like ''%'+edit2.text+'%''');
    sql.add('      and YWDD.GSBH='''+main.Edit2.Text+'''');
    sql.add('group by YWBZPOS.DDBH');
    sql.add(') carton on carton.DDBH = YWDD.YSBH');

    sql.add('where convert(smalldatetime,convert(varchar,YWDD.ETD,111)) between ');
    sql.add('      '''+formatdatetime('yyyy/MM/dd',sdate)+'''and '''+formatdatetime('yyyy/MM/dd',edate)+'''');
    if edit1.text <> '' then
      sql.Add('      and DDZL.DDBH like '''+edit1.Text+'%''');
    if edit2.text <> '' then
      sql.add('      and XXZL.Article like ''%'+edit2.text+'%''');
    if edCountry.Text<>'' then
      sql.Add('      and LBZLS.YWSM like ''%'+edCountry.text+'%''');
    if edit4.text <> '' then
      sql.Add('      and DDZL.BUYNO like '''+edit4.Text+'%''');
    //20171023 add filter XieMing
    if edit5.Text <> '' then
      sql.Add('      and XXZL.XieMing like '''+edit5.Text+'%''');
    //
    sql.add('      and YWDD.GSBH='''+main.Edit2.Text+'''');
    sql.add('      and exists(select DDBH from YWBZPOS where YWBZPOS.DDBH=YWDD.DDBH)');
    if not CB1.checked then
        sql.add('       and exists(select DDBH from YWDDMT where YWDDMT.DDBH=YWDD.DDBH)');
    // 20151016
    if CB2.Checked then
         sql.add('and not exists (select DDBH from YWBZPO where YWBZPO.DDBH=YWDD.DDBH)');
    //20151205
    if CB3.Checked then
        sql.Add('and exists (select DDBH from YWBZPO where YWBZPO.DDBH=YWDD.DDBH and surplus >0)');
    sql.add('group by YWDD.YSBH, XXZL.XieMing,DDZL.Pairs,XXZL.XieXing,xxzl.shehao,DDZL.KHBH,DDZL.ShipDate, ');
    sql.add('     DDZL.KHPO,LBZLS.YWSM,DDZL.YN,XXZL.Article, YWDD.GSBH,carton.nocarton,carton.modified ');
    sql.add('order by YWDD.DDBH');
    //funcObj.WriteErrorLog(sql.Text);
    active:=true;
    if YWDD.fieldbyname('YN').AsString= '1' then
      bbt7.Enabled:=true
    else
      bbt7.Enabled:=false;

    if recordcount>0 then
      BBT5.Enabled:=true;
      bbt6.Enabled:=TRUE;
  end;
  ShowYWBZPO();
  CGZL.Active:=true;
end;

procedure TCartonOrder.FormCreate(Sender: TObject);
begin
  with Qtemp do
  begin
    active:=false;
    sql.Clear;
    sql.add('select getdate() as NDate ');
    active:=true;
    NDate:=fieldbyname('NDate').Value;
  end;
  DTP1.date:=startofthemonth(incmonth(NDate,1))+5;
  DTP2.date:=startofthemonth(incmonth(NDate,2))+4;
end;

procedure TCartonOrder.ShowYWBZPO();
var i,j:integer;
begin
    if YWDD.recordcount>0 then
    begin
       with Qtemp do
       begin
          Active:=false;
          sql.Clear;
          sql.add('select distinct DDCC ');
          sql.add('from YWDDS');
          sql.add('where DDBH in (select DDBH from YWDD where YSBH='''+YWDD.fieldbyname('DDBH').value+''')');
          sql.add('and Qty<>0');
          sql.add('order by DDCC');
          Active:=true;
          j:=recordcount;
      end;
      with YWBZPO do
      begin
          active:=false;
          sql.Clear;
          sql.add('select POS.DDBH,POS.XH,POS.MEMO,POS.CTS');
          while not Qtemp.Eof do
          begin
              sql.add('    ,max(case when POS.DDCC='''+Qtemp.fieldbyname('DDCC').asstring+'''');
              sql.add('    then POS.Qty end ) as '''+Qtemp.fieldbyname('DDCC').asstring+'''');
              Qtemp.Next;
          end;
          sql.add('    ,YWBZPO.CLBH,YWBZPO.L,YWBZPO.W,YWBZPO.H,YWBZPO.NW,YWBZPO.GW');
          sql.add('    ,case when YWBZPO.CTQ is not null then convert(varchar(5),YWBZPO.CTQ)+''-''+convert(varchar(5),YWBZPO.CTZ) else null end as CN');
          sql.Add('    ,round(YWBZPO.CBM,4) as CBM,round(YWBZPO.CBM*35.315,2) as CUFT,YWWX2.Capacity - sum(POS.Qty) as Surplus,YWBZPO.CtnBoxCode');
          sql.add('    ,max(YWBZPO.USERDATE) as OrderingDate,max(POS.USERDATE) as PackingDate,clzl.YWPM,YWDD.KHDDBH1 ');
          sql.add('from ( ');
          SQL.Add('      select null as DDBH,null as XH,null as MEMO,YWDDS.DDCC,Sum(YWDDS.Qty) as Qty,Max(DDPACKS.CTS) as CTS,Max(DDPACKS.USERDATE) as UserDate ');
          SQL.Add('      from YWDDS ');
          SQL.Add('      left join YWDD on YWDDS.DDBH=YWDD.DDBH');
          SQL.Add('      left join (');
          SQL.Add('      select YSBH,Sum(CTS) as CTS,max(YWBZPOS.USERDATE) as USERDATE from  (');
          SQL.Add('      select YWDD.YSBH,YWBZPOS.DDBH,YWBZPOS.XH,YWBZPOS.CTS,Max(YWBZPOS.USERDATE) as USERDATE');
          SQL.Add('      from YWBZPOS');
          SQL.Add('      left join YWDD on YWDD.DDBH=YWBZPOS.DDBH');
          SQL.Add('      where YWBZPOS.DDBH in (select DDBH from YWDD where YSBH='''+YWDD.fieldbyname('DDBH').value+''')');
          SQL.Add('      and YWBZPOS.Qty<>0 Group by YWDD.YSBH,YWBZPOS.DDBH,YWBZPOS.XH,YWBZPOS.CTS ) YWBZPOS Group by YSBH ) DDPACKS  on DDPACKS.YSBH=YWDD.YSBH  ');
          SQL.Add('      where YWDDS.DDBH in (select DDBH from YWDD where YSBH='''+YWDD.fieldbyname('DDBH').value+''')');
          SQL.Add('      group by YWDDS.DDCC');
          sql.add('      union    ');
          sql.add('      select DDBH,XH,MEMO,DDCC,Qty,CTS,USERDATE ');
          sql.add('      from YWBZPOS where YWBZPOS.DDBH in (select DDBH from YWDD where YSBH='''+YWDD.fieldbyname('DDBH').value+''')');
          sql.add('     ) POS   ');
          sql.add('left join YWBZPO on YWBZPO.DDBH=POS.DDBH and YWBZPO.XH=POS.XH ') ;
          sql.add('left join YWWX2 on YWBZPO.CLBH=YWWX2.CLBH ');
          sql.add('left join clzl on YWBZPO.CLBH=CLZL.CLDH ');
          sql.add('left join YWDD on YWDD.DDBH=POS.DDBH ');
          sql.add('group by  POS.DDBH,POS.XH,POS.MEMO,POS.CTS,YWBZPO.CTQ,YWBZPO.CTZ,YWBZPO.NW,');
          sql.add('          YWBZPO.GW,YWBZPO.L,YWBZPO.W,YWBZPO.H,YWBZPO.CBM,YWBZPO.CLBH,YWWX2.Capacity,YWBZPO.CtnBoxCode,clzl.YWPM,YWDD.KHDDBH1 ');
          //funcObj.WriteErrorLog(sql.Text);
          active:=true;
      end;
      DBGrideh2.Columns[0].Width:=80;
      DBGrideh2.Columns[1].Width:=30;
      DBGrideh2.Columns[2].Width:=50;
      DBGrideh2.Columns[3].Width:=30;
      DBGrideh2.Columns[J+4].Width:=85;
      DBGrideh2.Columns[J+5].Width:=35;
      DBGrideh2.Columns[J+6].Width:=35;
      DBGrideh2.Columns[J+7].Width:=35;
      DBGrideh2.Columns[J+8].Width:=35;
      DBGrideh2.Columns[J+9].Width:=35;
      DBGrideh2.Columns[J+10].Width:=35;
      DBGrideh2.Columns[J+11].Width:=35;
      DBGrideh2.Columns[J+12].Width:=35;
      DBGrideh2.Columns[J+13].Width:=35;
      //DBGrideh2.Columns[J+14].Width:=35;
      DBGrideh2.Columns[J+14].Width:=70;
      DBGrideh2.Columns[J+15].Width:=120;
      DBGrideh2.Columns[J+16].Width:=120;
      DBGrideh2.Columns[J+17].Width:=120;
      DBGrideh2.Columns[J+18].Width:=70;
      if YWBZPO.fieldcount>13 then
      begin
          for i:=4 to j+3 do
          begin
              DBGrideh2.Columns[i].Width:=35;
              if i mod 2 =0 then
              begin
                  DBGrideh2.Columns[i].color:=$00F6F6F6;
                  DBGrideh2.Columns[i].Title.Color:=$00F6F6F6;
                  DBGrideh2.Columns[i].Footer.Color:=$00E8E8E8;
              end;
          end ;
          DBGrideh2.Columns[j+5].footer.ValueType:=fvtcount;
          for i:=j+6 to j+9 do
          begin
              DBGrideh2.Columns[i].footer.ValueType:=fvtavg;
              DBGrideh2.Columns[i].Footer.fieldname:=YWBZPO.Fields[i].FieldName;
              DBGrideh2.Columns[i].color:=$00F6F6F6;
          end;
          DBGrideh2.Columns[j+13].color:=$00F6F6F6;
          TFloatField(YWBZPO.fieldbyname('NW')).Displayformat:='##,#0.00';
          TFloatField(YWBZPO.fieldbyname('GW')).Displayformat:='##,#0.00';
          TFloatField(YWBZPO.fieldbyname('CBM')).Displayformat:='##,#0.0000';

      end;
      setReadOnly(true);
      BB4.Enabled:=true;
    end;
end;
procedure TCartonOrder.YWDDAfterScroll(DataSet: TDataSet);
var
  i,j:integer;
  var ff:textfile;
begin
  //20150924避免多選取個捲動遲緩
  if Close_YWBZPO=false then
  begin
    ShowYWBZPO();
  end;
  if YWDD.fieldbyname('YN').AsString= '1' then
      bbt7.Enabled:=true
  else
      bbt7.Enabled:=false;
end;

procedure TCartonOrder.setCarton(vCLBH:Variant;bBelow:boolean;vYWPM:String;IsMessage:boolean=true);
  function GetCtnBoxCode(YWPM:String):String;
  begin
     result:=Copy(YWPM,1,Pos(' ',YWPM));
  end;
var
  iPairs,i,iL,iW,iH,iCapacity:integer;
  rGW:real;
  dNW,dOW:double;
begin
  setReadOnly(false);
  with YWBZPO do
  begin
    while not eof or not bBelow do
    begin
      Qtemp.active:=false;
      Qtemp.sql.clear;
      Qtemp.sql.add('select * from YWWX2 where CLBH='''+vCLBH+'''');
      Qtemp.active:=true;
      iL:=Qtemp.fieldbyname('Length').AsInteger;
      iW:=Qtemp.fieldbyname('Width').AsInteger;
      iH:=Qtemp.fieldbyname('Height').AsInteger;
      iCapacity:=Qtemp.fieldbyname('Capacity').AsInteger;
      dOW:= Qtemp.fieldbyname('OWeigh').AsFloat;
      Qtemp.active:=false;
      Qtemp.sql.clear;
      Qtemp.sql.add('select YWBZPOS.DDBH,YWBZPOS.XH,sum(YWBZPOS.Qty) as Qty, ');
      Qtemp.sql.add('Round(isnull(sum(YWXXNew.NWeigh*YWBZPOS.Qty),0),2) as NWeigh,Round(isnull(sum(YWXXNew.OWeigh*YWBZPOS.Qty),0),2) as OWeigh');
      Qtemp.sql.add('from YWBZPOS');
      Qtemp.sql.add('left join YWDDS on YWDDS.DDBH=YWBZPOS.DDBh and YWDDS.DDCC=YWBZPOS.DDCC');
      Qtemp.sql.add('left join  YWDD on YWDD.DDBH=YWDDS.DDBH');
      Qtemp.sql.add('left join DDZL on YWDD.YSBH=DDZL.DDBH');
      Qtemp.sql.add('left join YWXXNew on YWXXNew.XieXing=DDZl.XieXing and YWXXNew.SheHao=DDZL.SheHao and YWXXNew.XXCC=YWDDS.XXCC');
      Qtemp.sql.add('where YWBZPOS.DDBH='''+YWBZPO.fieldbyname('DDBH').Value+'''');
      Qtemp.sql.add(' and YWBZPOS.XH='''+YWBZPO.fieldbyname('XH').Value+'''') ;
      Qtemp.sql.add('group by YWBZPOS.DDBH,YWBZPOS.XH');
      Qtemp.active:=true;
      rGW:=trunc((Qtemp.fieldbyname('NWeigh').value+Qtemp.fieldbyname('OWeigh').value+dOW)*100+0.5)/100;
      dNW:=Qtemp.fieldbyname('NWeigh').AsFloat;

      edit;
      fieldbyname('CLBH').value:=vCLBH;
      fieldbyname('L').value:=iL;
      fieldbyname('W').value:=iW;
      fieldbyname('H').value:=iH;
      fieldbyname('CBM').Value:=trunc(fieldbyname('W').value*fieldbyname('L').value*fieldbyname('H').value/100000+0.5)/10000;
      fieldbyname('CUFT').Value:=SimpleRoundTo(fieldbyname('CBM').Value*35.315,-2);
      fieldbyname('NW').value:=dNW;
      fieldbyname('GW').value:=rGW;
      fieldbyname('YWPM').value:=vYWPM;
      fieldbyname('CtnBoxCode').value:=GetCtnBoxCode(vYWPM);
      iPairs:=0;
      for i:=fieldbyname('CTS').Index+1 to fieldbyname('CLBH').Index-1 do
        iPairs:=iPairs+fields[i].AsInteger;
      if iCapacity = 0 then
        i:=0
      else
        i:=iCapacity-iPairs;
      fieldbyname('Surplus').Value:=i;
      if bBelow then next else break;
    end;
  end;
  setReadOnly(true);
  if IsMessage=true then showmessage('Succeed');

end;

procedure TCartonOrder.setReadOnly(b:boolean);
var
  i:integer;
begin
  for i:=0 to DBGrideh2.Columns.Count-1 do
  begin
    if i<>DBGrideh2.Columns.Count-4 then
    DBGrideh2.Columns[i].ReadOnly:=b;
  end;
end;

procedure TCartonOrder.BB7Click(Sender: TObject);
begin
  close;
end;

procedure TCartonOrder.BB4Click(Sender: TObject);
begin
  with YWBZPO do
  begin
      cachedupdates:=true;
      requestlive:=true;
  end;
  BB5.Enabled:=true;
  BB6.enabled:=true;
  CalculateN.Enabled:=true;
  NWeightN.Enabled:=true;
  DBGrideh2.Columns[YWBZPO.FieldByName('CLBH').Index].ButtonStyle:=cbsEllipsis;
  //BT1.visible:=true;
  DBGrideh1.enabled:=false;
  Panel5.Enabled:=false;
end;

procedure TCartonOrder.YWBZPOAfterOpen(DataSet: TDataSet);
begin
  with YWBZPO do
  begin
    cachedupdates:=false;
    requestlive:=false;
  end;
  BB5.Enabled:=false;
  BB6.Enabled:=false;
  CalculateN.Enabled:=false;
  NWeightN.Enabled:=false;
end;

procedure TCartonOrder.YWBZPONewRecord(DataSet: TDataSet);
begin
  abort;
end;

procedure TCartonOrder.DBGridEh2EditButtonClick(Sender: TObject);
begin
  if not YWBZPO.fieldbyname('XH').isnull then
  begin
    if DBGridEh2.SelectedField.FieldName = 'CLBH' then
      if messagedlg('Select from history memory ?',mtinformation,[mbYes,mbNo],0)=mrYes then
      begin
        CartonOrder_Me:=TCartonOrder_Me.create(self);
        CartonOrder_Me.show;
        enabled:=false;
      end else
      begin
        CartonOrder_CT:=TCartonOrder_CT.create(self);
        CartonOrder_CT.CartonOrVach:=1;
        CartonOrder_CT.show;
        enabled:=false;
      end;
  end;
end;


procedure TCartonOrder.CalculateNClick(Sender: TObject);
begin
  countCTS();
end;

procedure TCartonOrder.countCTS;
var n,iCTZ,iCTQ:integer;
    DDBH:string;
begin
  setReadOnly(false);
  with YWBZPO do
  begin
    if RequestLive then
    begin
      n:=0;
      first;
      next;
      while not eof do
      begin
        DDBH:=FieldByName('DDBH').AsString;
        Edit;
        iCTQ:=n+1;
        n:=n+fieldbyname('CTS').Value;
        iCTZ:=n;
        fieldbyname('CN').value:=inttostr(iCTQ)+'-'+inttostr(iCTZ);
        next;
        if  DDBH<>FieldByName('DDBH').AsString then n:=0;
      end;
    end;
  end;
  setReadOnly(true);
end;

procedure TCartonOrder.SaveBtnClick(isRefresh:boolean=true);
var
  y,m,sCGNO:string;
  i:integer;
  slCN:TStringList;
begin

  slCN:=TStringList.Create;
  slCN.Delimiter:='-';

  with YWBZPO do
  begin
      first;
      next;
      while not eof do
      begin
        for i:=fieldcount-13 to fieldcount-5 do
          if fields[i].isnull and (fields[i].FieldName <> 'Surplus') then
          begin
            showmessage('Pls key data first.');
            abort;
          end;
        if fieldbyname('Surplus').asinteger < 0 then
        begin
          showmessage('Pls make sure every carton has enough capacity.');
          abort;
        end;
        DBGrideh2.canvas.Brush.Color:=clRed;
        Next;
      end;

      //YWBZPO更新
      Qtemp.Active:=false;
      Qtemp.SQL.Clear;
      Qtemp.SQL.add('delete from YWBZPO where DDBH in (select DDBH from YWDD where YSBH='''+YWDD.fieldbyname('DDBH').value+''')');
      Qtemp.ExecSQL;
      //  從第二筆資料開始存檔
      first;
      next;
      while not eof do
      begin
          Qtemp.Active:=false;
          Qtemp.SQL.Clear;

          Qtemp.SQL.add('insert into YWBZPO ');
          Qtemp.SQL.add(' (DDBH, XH, CLBH,CTQ, CTZ, CTS, NW, GW, L, W, H, CBM, CtnBoxCode ,USERDATE,USERID,YN,Surplus,Memo)');
          Qtemp.SQL.add(' values ');
          Qtemp.SQL.add('('''+fieldbyname('DDBH').Value+''',');
          Qtemp.SQL.add(''''+fieldbyname('XH').Value+''',');
          Qtemp.SQL.add(''''+fieldbyname('CLBH').Value+''',');

          slCN.DelimitedText:=fieldbyname('CN').asstring;

          Qtemp.SQL.add(''''+slCN[0]+''',');
          Qtemp.SQL.add(''''+slCN[1]+''',');
          Qtemp.SQL.add(''''+fieldbyname('CTS').asstring+''',');
          Qtemp.SQL.add(fieldbyname('NW').asstring+',');
          Qtemp.SQL.add(fieldbyname('GW').asstring+',');
          Qtemp.SQL.add(''''+fieldbyname('L').asstring+''',');
          Qtemp.SQL.add(''''+fieldbyname('W').asstring+''',');
          Qtemp.SQL.add(''''+fieldbyname('H').asstring+''',');
          Qtemp.SQL.add(fieldbyname('CBM').asstring+',  ');
          Qtemp.SQL.add(''''+fieldbyname('CtnBoxCode').asstring+''',  ');//CtnBoxCode
          Qtemp.SQL.add('getdate(),'''+main.edit1.text+''',''1'',');
          Qtemp.SQL.add(inttostr(fieldbyname('Surplus').AsInteger)+',');
          Qtemp.SQL.add(''''+sCGNO+''')');

          try
            Qtemp.execsql;
          except
            Qtemp.SQL.Clear;
            Qtemp.SQL.Add('update YWBZPO set ');
            Qtemp.SQL.Add('CLBH='''+fieldbyname('CLBH').asstring+'''');
            Qtemp.SQL.Add(',CTS='''+fieldbyname('CTS').asstring+'''');
            Qtemp.SQL.Add(',CTQ='''+fieldbyname('CTQ').asstring+'''');
            Qtemp.SQL.Add(',CTZ='''+fieldbyname('CTZ').asstring+'''');
            Qtemp.SQL.Add(',NW='+fieldbyname('NW').asstring);
            Qtemp.SQL.Add(',GW='+fieldbyname('GW').AsString);
            Qtemp.SQL.Add(',L='+fieldbyname('L').AsString);
            Qtemp.SQL.Add(',W='+fieldbyname('W').AsString);
            Qtemp.SQL.Add(',H='+fieldbyname('H').asstring);
            Qtemp.SQL.Add(',CBM='+fieldbyname('CBM').AsString);
            Qtemp.SQL.Add(',CtnBoxCode='''+fieldbyname('CtnBoxCode').AsString+'''');
            Qtemp.SQL.add(',USERDATE=getdate()');
            Qtemp.SQL.add(',USERID='''+main.Edit1.Text+'''');
            Qtemp.SQL.Add(',YN=''1''');
            Qtemp.SQL.add(',Surplus='+inttostr(fieldbyname('Surplus').AsInteger));
            Qtemp.SQL.add(',Memo='''+sCGNO+''' ');
            Qtemp.SQL.Add(' where DDBH='''+fieldbyname('DDBH').AsString+'''');
            Qtemp.SQL.add(' and XH='''+fieldbyname('XH').AsString+'''');
            Qtemp.execsql;
          end;
          next;
      end;
  end;   // end of YWBZPO


  BB5.Enabled:=false;
  BB6.Enabled:=false;
  DBGrideh2.Columns[YWBZPO.FieldByName('CLBH').Index].ButtonStyle:=cbsNone;

  sCGNO:= YWDD.fieldbyname('DDBH').Value;
  if isRefresh=true then
  begin
    YWDD.Active:=false;
    YWDD.Active:=true;
    if YWDD.Locate('DDBH',sCGNO,[loCaseInsensitive]) then
      showmessage('Succeed');
  end;
  CGZL.active:=true;
  DBGrideh1.enabled:=true;
  Panel5.Enabled:=true;

end;
procedure TCartonOrder.BB5Click(Sender: TObject);
begin
  SaveBtnClick();
end;

procedure TCartonOrder.bbt5Click(Sender: TObject);
var PC1,PC2,PC3:string;
begin
  if BB5.enabled then
  begin
    showmessage('Pls save data first.');
    abort;
  end;
  if YWBZPO.recordcount<1 then
  begin
    showmessage('No data to print.');
    abort;
  end;

  with YWBZPO do
  begin
    first;
    next;
    while not Eof do
    begin
      if fieldbyname('CLBH').IsNull then
      begin
        showmessage('Pls key data first.');
        abort;
      end;
      next;
    end;
  end;
  CartonOrder_Print:=TCartonOrder_Print.create(nil);
  with YWDDTP do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select * from YWDDTP where DDBH in (select DDBH from YWDD where YSBH='''+YWDD.fieldByName('DDBH').AsString+''') and MT=''C'' order by XH ');
    Active:=true;
    PC1:='';
    PC2:='';
    PC3:='';
    if recordcount>0 then
    begin
      PC1:=fieldbyname('TPMEMO').AsString;
      next;
    end;
    if recordcount>1 then
    begin
      PC2:=fieldbyname('TPMEMO').AsString;
      next;
    end;
    if recordcount>2 then
    begin
      PC3:=fieldbyname('TPMEMO').AsString;
      next;
    end;
    if PC1<>'' then
      CartonOrder_Print.QPC1.Picture.LoadFromFile(PC1);
    if PC2<>'' then
      CartonOrder_Print.QPC2.Picture.LoadFromFile(PC2);
    if PC3<>'' then
      CartonOrder_Print.QPC3.Picture.LoadFromFile(PC3);
    active:=false;
  end;
  CartonOrder_Print.QRCompositeReport1.Preview;
  CartonOrder_Print.free;

end;

procedure TCartonOrder.FormDestroy(Sender: TObject);
begin
   CartonOrder:=nil;
end;

procedure TCartonOrder.DBGridEh1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
// fix
  // 未採購外箱
  if YWDD.FieldByName('nocarton').asinteger > 0 then
    DBGrideh1.canvas.font.color:=clred
  else
    if YWDD.FieldByName('CGDate').isnull then
      if YWDD.FieldByName('BZDate').IsNull  then
        DBGrideh1.canvas.font.color:=clred    // 外箱備註未完成
      else
        DBGrideh1.canvas.font.color:=clGreen  // 外箱標備註已完成
    // 已採購外箱
    else
      if YWDD.FieldByName('BZDate').Value > YWDD.FieldByName('CGDate').Value then
        DBGrideh1.canvas.font.color:=clPurple      // 出貨memo在採購後有異動
      else
        if YWDD.FieldByName('MarkDate').Value > YWDD.FieldByName('CGDate').value then
          DBGrideh1.Canvas.font.Color:=clFuchsia
        else
          if YWDD.FieldByName('modified').AsInteger >0 then
            DBGrideh1.canvas.font.color:=TColor($00AAAA)
          else
            DBGrideh1.canvas.font.color:=clBlack;      // 正常   

end;

procedure TCartonOrder.DBGridEh2DrawColumnCell(Sender: TObject;const Rect: TRect; DataCol: Integer; Column: TColumnEh;State: TGridDrawState);
begin
  if YWBZPO.FieldByName('XH').asstring <> '' then
    begin
      if YWBZPO.FieldByName('OrderingDate').value < YWBZPO.FieldByName('PackingDate').value then
        DBGrideh2.canvas.Brush.Color:=clYellow;
      if YWBZPO.FieldByName('Surplus').AsInteger > 0 then
        DBGrideh2.canvas.Brush.Color:=cllime;
      if (YWBZPO.fieldbyname('Surplus').asinteger < 0) then
        DBGrideh2.canvas.Brush.Color:=clRed;
    end;
  DBGrideh2.Canvas.FillRect(Rect);
  DBGrideh2.Canvas.TextOut(Rect.Left, Rect.Top, Column.Field.Text);
end;

procedure TCartonOrder.CheckNWGW1Click(Sender: TObject);
begin
  CartonOrderNW:=TCartonOrderNW.create(self);
  CartonOrderNW.show;
end;

procedure TCartonOrder.BT1Click(Sender: TObject);
begin
  CartonOrder_ZS:=TCartonOrder_ZS.create(self);
  CartonOrder_ZS.CartonOrVach:=1;
  CartonOrder_ZS.show;
end;

procedure TCartonOrder.PrintMemo1Click(Sender: TObject);
begin
  if YWDD.recordcount>0 then
    begin
      CartonOrder_Memo:=TCartonOrder_Memo.create(self);
      cartonorder_MEmo.quickrep3.preview;
      CartonOrder_Memo.free;
    end;
end;

procedure TCartonOrder.bnBelowClick(Sender: TObject);
begin
  if YWBZPO.requestLive then
    setCarton(YWBZPO.fieldbyname('CLBH').AsString,true,YWBZPO.fieldbyname('YWPM').AsString);
end;

procedure TCartonOrder.bnHelpClick(Sender: TObject);
begin
  showmessage(
    '-Left Table-'+#13+
    'Black words:Normal'+#13+
    'Red words:Haven''t purchase carton'+#13+
    'Green words:Haven''t purchase carton and don''t have comment'+#13+
    'Purple words:Purchased carton but memo was changed'+#13+
    'Pink words:Purchased carton but mark was changed'+#13+
    'Yellow words:Packing date > Ordering date'+#13+#13+
    '-Right Table-'+#13+
    'Black row:Purchased carton'+#13+
    'Yellow row:Packing date > Ordering date'+#13+
    'Green row:Purchased carton but have space'+#13+
    'Red row:Purchased carton but don''t have enough space'
  );
end;

procedure TCartonOrder.bbt6Click(Sender: TObject);
var   a:string;
      eclApp,WorkBook:olevariant;
      i,j,k,l,m:integer;
      order: string;
begin
  //
  if DBgridEh1.SelectedRows.Count=1 then
  begin
  if  YWBZPO.active  then
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
        for   i:=0   to   YWBZPO.fieldcount-1   do
        begin
            eclApp.Cells(1,i+1):=YWBZPO.fields[i].FieldName;
        end;

        YWBZPO.First;
        j:=2;
        while   not   YWBZPO.Eof   do
        begin
          for   i:=0   to  YWBZPO.fieldcount-1  do
          begin
            eclApp.Cells(j,i+1):=YWBZPO.Fields[i].Value;
          end;
        YWBZPO.Next;
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
    end
    //
   else  if DBgridEh1.SelectedRows.Count>1 then
   begin
      with DBgridEh1.DataSource.DataSet do
      begin
        for k := 0 to DBgridEh1.SelectedRows.Count-1 do
        begin
          GotoBookmark(Pointer(DBgridEh1.SelectedRows.Items[k]));
          order:= order+''''+ywdd.FieldByName('DDBH').AsString+''',';
        end;
        if length(order)>0 then  order:=Copy(order,1,length(order)-1);
    end;
    with Qtemp do
    begin
      Active:=false;
      sql.Clear;
      sql.add('select DISTINCT DDCC ');
      sql.add('from YWDDS');
      sql.add('where DDBH in (Select DDBH from YWDD where YSBH in ('+order+') )');
      sql.add('and Qty<>0');
      sql.add('order by DDCC');
      //funcObj.WriteErrorLog(sql.Text);
      Active:=true;
    end;
    with YWBZPOTemp do
    begin
      active:=false;
      sql.Clear;
      sql.add('select POS.YSBH,POS.DDBH,ddzl.khpo as PO,xxzl.XIEMING,POS.XH,POS.MEMO,POS.CTS');
      while not Qtemp.Eof do
      begin
        sql.add('    ,max(case when POS.DDCC='''+Qtemp.fieldbyname('DDCC').asstring+'''');
        sql.add('    then POS.Qty end ) as '''+Qtemp.fieldbyname('DDCC').asstring+'''');
        Qtemp.Next;
      end;
      sql.add('    ,YWBZPO.CLBH,YWBZPO.L,YWBZPO.W,YWBZPO.H,YWBZPO.NW,YWBZPO.GW');
      sql.add('    ,case when YWBZPO.CTQ is not null then convert(varchar(5),YWBZPO.CTQ)+''-''+convert(varchar(5),YWBZPO.CTZ) else null end as CN');
      sql.Add('    ,round(YWBZPO.CBM,4) as CBM,round(YWBZPO.CBM*35.315,2) as CUFT,YWWX2.Capacity - sum(POS.Qty) as Surplus');
      sql.add('    ,max(YWBZPO.USERDATE) as OrderingDate,max(POS.USERDATE) as PackingDate');
      sql.add('from (');
      sql.Add('      select YWDD.YSBH,null as DDBH,null as XH,null as MEMO,YWDDS.DDCC,Sum(YWDDS.Qty) as Qty,Max(DDPACKS.CTS) as CTS,Max(DDPACKS.USERDATE) as UserDate ');
      sql.Add('      from YWDDS ');
      sql.Add('      left join YWDD on YWDDS.DDBH=YWDD.DDBH');
      sql.Add('      left join (');
      SQL.Add('      select YSBH,Sum(CTS) as CTS,max(YWBZPOS.USERDATE) as USERDATE from  (');
      SQL.Add('      select YWDD.YSBH,YWBZPOS.DDBH,YWBZPOS.XH,YWBZPOS.CTS,Max(YWBZPOS.USERDATE) as USERDATE');
      SQL.Add('      from YWBZPOS');
      SQL.Add('      left join YWDD on YWDD.DDBH=YWBZPOS.DDBH');
      SQL.Add('      where YWBZPOS.DDBH in (select DDBH from YWDD where YSBH in ('+order+'))');
      SQL.Add('      and YWBZPOS.Qty<>0 Group by YWDD.YSBH,YWBZPOS.DDBH,YWBZPOS.XH,YWBZPOS.CTS ) YWBZPOS Group by YSBH ) DDPACKS  on DDPACKS.YSBH=YWDD.YSBH  ');
      sql.Add('      where YWDDS.DDBH in (Select DDBH from YWDD where YSBH in ('+order+') )');
      sql.Add('      group by YWDD.YSBH,YWDDS.DDCC   ');
      sql.Add('      union         ');
      sql.Add('      select YSBH,YWBZPOS.DDBH,XH,MEMO,DDCC,YWBZPOS.Qty,CTS,YWBZPOS.USERDATE ');
      sql.Add('      from YWBZPOS ');
      sql.Add('      left join YWDD on YWBZPOS.DDBH=YWDD.DDBH');
      sql.Add('      where YWBZPOS.DDBH in (Select DDBH from YWDD where YSBH in ('+order+') ) ');
      sql.add('     ) POS   ');
      sql.add('left join YWBZPO on YWBZPO.DDBH=POS.DDBH and YWBZPO.XH=POS.XH ') ;
      sql.add('left join YWWX2 on YWBZPO.CLBH=YWWX2.CLBH');
      sql.Add('left join ddzl on POS.YSBH=ddzl.DDBH ');
      sql.Add('left join xxzl on ddzl.xiexing=xxzl.xiexing and ddzl.shehao=xxzl.shehao');
      sql.add('group by  POS.YSBH,POS.DDBH,ddzl.khpo,xxzl.XIEMING,POS.XH,POS.MEMO,POS.CTS,YWBZPO.CTQ,YWBZPO.CTZ,YWBZPO.NW,');
      sql.add('          YWBZPO.GW,YWBZPO.L,YWBZPO.W,YWBZPO.H,YWBZPO.CBM,YWBZPO.CLBH,YWWX2.Capacity ');
      //funcObj.WriteErrorLog(sql.Text);
      active:=true;
        // excel
    try
      eclApp:=CreateOleObject('Excel.Application');
      WorkBook:=CreateOleObject('Excel.Sheet');
    except
      Application.MessageBox('No Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
      Exit;
    end;
    try
        WorkBook:=eclApp.workbooks.Add;
        for   l:=0   to   YWBZPOTemp.fieldcount-1   do
        begin
          eclApp.Cells(1,l+1):=YWBZPOTemp.fields[l].FieldName;
        end;
        YWBZPOTemp.First;
        m:=2;
        while   not   YWBZPOTemp.Eof   do
        begin
          for   l:=0   to  YWBZPOTemp.fieldcount-1  do
          begin
            eclApp.Cells(m,l+1):=YWBZPOTemp.Fields[l].Value;
          end;
          YWBZPOTemp.Next;
          inc(m);
        end;
        eclapp.columns.autofit;
        showmessage('Succeed');
        eclApp.Visible:=True;
      except
        on   F:Exception   do
          showmessage(F.Message);
      end;
      end;
       //
    end;
    //
end;

procedure TCartonOrder.DBGridEh1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  Close_YWBZPO:=true;
end;

procedure TCartonOrder.DBGridEh1MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  Close_YWBZPO:=false;
end;

procedure TCartonOrder.PageControl1Change(Sender: TObject);
begin
  //
  if PageControl1.ActivePageIndex=1 then
  begin
    //YWBZPOS.Active:=true;
    with YWBZPOS do
    begin
      active:=false;
      sql.Clear;
      SQL.Add('select YWBZPOS.*,CLZL.YWPM from YWBZPOS');
      SQL.Add('left join YWDD on YWDD.DDBH=YWBZPOS.DDBH');
      SQL.Add('left join DDZL on DDZL.DDBH=YWDD.YSBH');
      SQL.Add('left join XXZLS on XXZLS.XieXing = DDZL.XieXing and xxzls.SheHao = DDZL.SheHao and XXZLS.CLBH like ''H14%''');
      if chkSize.Checked then
      begin
        SQL.Add('and YWBZPOS.DDCC between XXZLS.CCQQ and XXZLS.CCQZ');
      end;  
      SQL.Add('left join CLZl on XXZLS.CLBH=CLZL.CLDH');
      SQL.Add('where YWBZPOS.DDBH in (select DDBH from YWDD where YSBH='''+YWDD.fieldbyname('DDBH').AsString+''') and XXZLS.CLBH in (select CLBH from ZLZLS2 where ZLBH='''+YWDD.fieldbyname('DDBH').AsString+''' and CLBH like ''H14%'')');
      active:=true;
    end;
  end else if PageControl1.ActivePageIndex=2 then
  begin
    YWBZPOE.Active:=true
  end;
  //
end;

procedure TCartonOrder.BD4Click(Sender: TObject);
begin

  with YWBZPOE do
  begin
      cachedupdates:=true;
      requestlive:=true;
  end;
  BD5.Enabled:=true;
  BD6.enabled:=true;
  DBGrideh3.Columns[3].ButtonStyle:=cbsEllipsis;
  DBGrideh3.Columns[5].ButtonStyle:=cbsEllipsis;
end;

procedure TCartonOrder.BD6Click(Sender: TObject);
begin
  with YWBZPOE do
  begin
    active:=false;
    requestlive:=false;
    cachedupdates:=false;
    active:=true;
  end;
  DBGrideh3.Columns[3].ButtonStyle:=cbsNone;
  DBGrideh3.Columns[5].ButtonStyle:=cbsNone;
  BD5.Enabled:=false;
  BD6.Enabled:=false;
end;

procedure TCartonOrder.BD5Click(Sender: TObject);
var i:integer;
begin
   //
    try
      YWBZPOE.first;
      for i:=1 to YWBZPOE.RecordCount do
      begin
          case YWBZPOE.updatestatus of
            usinserted:
            begin
              if ((YWBZPOE.fieldbyname('CLBH').isnull=false) and (YWBZPOE.fieldbyname('MCLBH').isnull=false)) then
              begin
                 YWBZPOE.edit;
                 if YWBZPOE.FieldByName('CTS').IsNull then YWBZPOE.FieldByName('CTS').Value:=0;
                 YWBZPOE.FieldByName('DDBH').Value:=YWDD.FieldByName('DDBH').AsString;
                 YWBZPOE.FieldByName('userID').Value:=main.edit1.text;
                 YWBZPOE.FieldByName('userdate').Value:=NDate;
                 YWBZPOE.FieldByName('YN').Value:=1;
                 UpYWBZPOE.apply(ukInsert);
              end;
            end;
            usmodified:
            begin
                if YWBZPOE.fieldbyname('CLBH').OldValue<>null then
                begin
                  if (Ndate-YWBZPOE.FieldByName('USERDATE').value)<90  then
                  begin
                    if ((YWBZPOE.fieldbyname('CLBH').isnull) or (YWBZPOE.fieldbyname('YN').value='0')) then
                    begin
                      UpYWBZPOE.apply(ukdelete);
                    end else
                    begin
                      YWBZPOE.edit;
                      if YWBZPOE.FieldByName('CTS').IsNull then YWBZPOE.FieldByName('CTS').Value:=0;
                      YWBZPOE.FieldByName('userID').Value:=main.edit1.text;
                      YWBZPOE.FieldByName('userdate').Value:=NDate;
                      UpYWBZPOE.apply(ukmodify);
                    end;
                  end else
                  begin
                    Showmessage('Date>90, can not modify.');
                  end;
                end else
                begin
                  if ((YWBZPOE.fieldbyname('CLBH').isnull=false) and (YWBZPOE.fieldbyname('MCLBH').isnull=false)) then
                  begin
                     YWBZPOE.edit;
                     if YWBZPOE.FieldByName('CTS').IsNull then YWBZPOE.FieldByName('CTS').Value:=0;
                     YWBZPOE.FieldByName('userID').Value:=main.edit1.text;
                     YWBZPOE.FieldByName('userdate').Value:=NDate;
                     YWBZPOE.FieldByName('YN').Value:=1;
                     UpYWBZPOE.apply(ukInsert);
                  end;
                end;
            end;
         end;
         YWBZPOE.next;
      end;
      YWBZPOE.active:=false;
      YWBZPOE.cachedupdates:=false;
      YWBZPOE.requestlive:=false;
      YWBZPOE.active:=true;
      DBGrideh3.Columns[3].ButtonStyle:=cbsNone;
      DBGrideh3.Columns[5].ButtonStyle:=cbsNone;
      BD5.Enabled:=false;
      BD6.Enabled:=false;
      //更新
    except
      Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
    end;
    //
end;

procedure TCartonOrder.YWBZPOEAfterOpen(DataSet: TDataSet);
begin
   if YWBZPOE.RecordCount>0 then
   begin
     BD2.Enabled:=true;
     BD3.Enabled:=true;
     BD4.Enabled:=true;
     with Qtemp do
     begin
       Active:=false;
       SQL.Clear;
       SQL.Add('Select distinct CLBH from YWBZPO where DDBH='''+YWDD.FieldByName('DDBH').AsString+''' ');
       Active:=true;
       DBGridEh3.Columns[0].PickList.Clear;
       while not Eof do
       begin
         DBGridEh3.Columns[0].PickList.add(FieldByName('CLBH').AsString);
         Next;
       end;
       Active:=false;
     end;

   end;
end;

procedure TCartonOrder.DBGridEh3EditButtonClick(Sender: TObject);
begin
  if DBGridEh3.SelectedField.FieldName='CSBH' then
  begin
    CartonOrder_ZS:=TCartonOrder_ZS.create(self);
    CartonOrder_ZS.CartonOrVach:=2;
    CartonOrder_ZS.show;
  end;
  if DBGridEh3.SelectedField.FieldName='CLBH' then
  begin
    CartonOrder_CT:=TCartonOrder_CT.create(self);
    CartonOrder_CT.CartonOrVach:=2;
    CartonOrder_CT.show;
  end;
end;


procedure TCartonOrder.CalCulateZLZLS2_Carton();
begin
  with Qtemp do
  begin
    active:=false;      //將該訂單越南BOM資料展算
    sql.clear;
    sql.add('delete ZLZLS2 where XH=''VN'' and ZLBH='''+YWDD.fieldbyname('DDBH').Value+''' and CLBH like ''U%''');
    sql.add('insert ZLZLS2 ');
    sql.add('select  YWDD.YSBH as DDBH,''VN'' as XH,BWZL.BWDH as BWBH,IsNull(YWBZPO.CSBH,CLZL.ZSDH) as ZSBH,');
    sql.add(' ''ZZZZZZZZZZ'' as MJBH,YWBZPO.CLBH,CLZL.CLZMLB as ZMLB,');
    sql.add(' ''ZZZZZZ'' as SIZE,YWBZPO.CLSL,0 as  USAGE ,');
    sql.add(''''+main.edit1.text+''' as USERID,');
    sql.add(''''+formatdatetime('yyyy/MM/dd',date)+''' as USERDATE,');
    sql.add(' ''2'' as YN');
    sql.Add('from(select *,ROW_NUMBER() over (PARTITION BY left(CLBH,1) ORDER BY left(CLBH,1) DESC) as  rn');
    sql.add('     from(');
    sql.add('          select '''+YWDD.fieldbyname('DDBH').Value+''' as ddbh,CLBH,Sum(CTS) as CLSL,null as CSBH from ywbzpo where DDBH in (select DDBH from YWDD where YSBH='''+YWDD.fieldbyname('DDBH').Value+''') Group by CLBH ');
    sql.add('          union all');
    sql.add('          select ddbh,CLBH,Sum(CTS) as CLSL,CSBH from ywbzpoe where DDBH='''+YWDD.fieldbyname('DDBH').Value+''' Group by DDBH,CLBH,CSBH ) YWBZPO )YWBZPO');
    sql.add('left join (select bwdh,ROW_NUMBER() over (PARTITION BY left(bwdh,2) ORDER BY left(bwdh,2) DESC) as  rn from bwzl where left(bwdh,2)=''VU'')BWZL on BWZL.rn=YWBZPO.rn');
    sql.add('left join (select YSBH,Max(CGNO) as CGNO from YWDD where YSBH='''+YWDD.fieldbyname('DDBH').Value+''' Group by YSBH ) YWDD on YWBZPO.DDBH =YWDD.YSBH  ');
    sql.add('left join CGZL on YWDD.CGNO=CGZL.CGNO');
    sql.add('left join CLZL on CLZL.CLDH=YWBZPO.CLBH');
    //Funcobj.WriteErrorLog(sql.Text);
    execsql;
  end;
end;
procedure TCartonOrder.YWBZPOSAfterOpen(DataSet: TDataSet);
begin
 if YWBZPOS.RecordCount>0 then
 begin
   BC4.Enabled:=true;
   BC7.Enabled:=true;
 end;
end;

procedure TCartonOrder.BC4Click(Sender: TObject);
begin
  with YWBZPOS do
  begin
    cachedupdates:=true;
    requestlive:=true;
  end;
  BC5.Enabled:=true;
  BC6.enabled:=true;

end;

procedure TCartonOrder.BC6Click(Sender: TObject);
begin
  with YWBZPOS do
  begin
    active:=false;
    requestlive:=false;
    cachedupdates:=false;
    active:=true;
  end;
  BC5.Enabled:=false;
  BC6.Enabled:=false;
end;

procedure TCartonOrder.BC5Click(Sender: TObject);
var i:integer;
begin
   //
    try
      YWBZPOS.first;
      for i:=1 to YWBZPOS.RecordCount do
      begin
          case YWBZPOS.updatestatus of
            usmodified:
            begin
              UpYWBZPOS.apply(ukmodify);
            end;
         end;
         YWBZPOS.next;
      end;
      YWBZPOS.active:=false;
      YWBZPOS.cachedupdates:=false;
      YWBZPOS.requestlive:=false;
      YWBZPOS.active:=true;
      BC5.Enabled:=false;
      BC6.Enabled:=false;
      //更新
    except
      Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
    end;
    //
end;

procedure TCartonOrder.BC7Click(Sender: TObject);
  function GetInBoxCode(YWPM:String):string;
  var Posi:integer;
      iStr:string;
  begin
    iStr:='';
    Posi:=Pos(' ',YWPM);
    //First space ' '
    if Posi>0 then
    begin
      YWPM:=Copy(YWPM,Posi+1,length(YWPM)-Posi-1);
      Posi:=Pos(' ',YWPM);
      //Seconde space ' '
      if Posi>0 then
      begin
       iStr:=Copy(YWPM,1,Posi);
      end;
    end;
    result:=iStr;
  end;
var i:integer;
begin
  
  BC4.Click;
  for i:=0 to YWBZPOS.RecordCount-1 do
  begin
    YWBZPOS.Edit;
    YWBZPOS.FieldByName('InBoxCode').AsString:=GetInBoxCode(YWBZPOS.FieldByName('YWPM').AsString);
    YWBZPOS.Post;
    YWBZPOS.Next;
  end;
  BC5.Click;
end;

procedure TCartonOrder.Print1Click(Sender: TObject);
var PC1,PC2,PC3:string;
begin

  if BB5.enabled then
  begin
      showmessage('Pls save data first.');
      abort;
  end;
  if YWBZPO.recordcount<1 then
  begin
      showmessage('No data to print.');
      abort;
  end;

  CartonOrder_PrintDet:=TCartonOrder_PrintDet.create(nil);
  with YWDDTP do
  begin
        Active:=false;
        SQL.Clear;
        SQL.Add('select * from YWDDTP where DDBH='''+YWBZPO.fieldByName('DDBH').AsString+''' and MT=''C'' order by XH ');
        Active:=true;
        PC1:='';
        PC2:='';
        PC3:='';
        if recordcount>0 then
        begin
            PC1:=fieldbyname('TPMEMO').AsString;
            next;
        end;
        if recordcount>1 then
        begin
            PC2:=fieldbyname('TPMEMO').AsString;
            next;
        end;
        if recordcount>2 then
        begin
            PC3:=fieldbyname('TPMEMO').AsString;
            next;
        end;
        if PC1<>'' then
           CartonOrder_PrintDet.QPC1.Picture.LoadFromFile(PC1);
        if PC2<>'' then
           CartonOrder_PrintDet.QPC2.Picture.LoadFromFile(PC2);
        if PC3<>'' then
           CartonOrder_PrintDet.QPC3.Picture.LoadFromFile(PC3);
        active:=false;
  end;
  CartonOrder_PrintDet.QRCompositeReport1.Preview;
  CartonOrder_PrintDet.free;

end;

procedure TCartonOrder.QuickCartonClick(Sender: TObject);
  function FindCarton(CC:string;Pairs:integer):boolean;
  var IsFind:boolean;
  begin
    IsFind:=false;
    YWBZPOTemp.First;
    while Not YWBZPOTemp.Eof do
    begin
      if ((YWBZPOTemp.FieldByName('CC').AsString=CC) and (YWBZPOTemp.FieldByName('Capacity').Value>=Pairs)) then
      begin
        IsFind:=true;
        break;
      end;
      YWBZPOTemp.Next;
    end;
    result:=IsFind;
  end;
var h,i:integer;
    IsEmptyCLBH:boolean;
    ZSDH,ZSYWJC:String;
    //
    bm:Tbookmark;
    bookmarklist:tbookmarklistEh;
    //
    Pairs:integer;
    CC:String;
begin

  YWDD.disablecontrols;
  bm:=YWDD.getbookmark;
  bookmarklist:=DBGridEh1.selectedrows;
  if bookmarklist.count>0 then
  begin
   try
     for h:=0 to bookmarklist.count-1 do
     begin
       YWDD.gotobookmark(pointer(bookmarklist[h]));
       BB4.Click; //Moidy 按鈕
       with YWBZPOTemp do
       begin
         Active:=false;
         SQL.Clear;
         SQL.Add('Select YWWX2S.CLBH,YWWX2S.CC,CLZL.YWPM,CLZL.ZSDH,ZSZL.ZSYWJC,YWWX2.Capacity ');
         SQL.Add('from YWWX2S');
         SQL.Add('inner join CLZL on CLZL.CLDH=YWWX2S.CLBH ');
         SQL.Add('left join YWWX2 on YWWX2.CLBH=YWWX2S.CLBH ');
         SQL.Add('left join ZSZL on ZSZL.ZSDH=CLZL.ZSDH');
         SQL.Add('where  YWWX2S.XieXing='''+YWDD.FieldByName('XieXing').AsString+''' and YWWX2S.SheHao='''+YWDD.FieldByName('SheHao').AsString+''' ');
         SQL.Add('Order by YWWX2S.CC desc,YWWX2.Capacity asc ');
         //funcObj.WriteErrorLog(sql.Text);
         Active:=true;
       end;
       //
       YWBZPO.First;
       YWBZPO.Next;
       ZSDH:='';
       ZSYWJC:='';
       IsEmptyCLBH:=false;
       while not YWBZPO.Eof do
       begin
         Pairs:=0;
         CC:='';
         for i:=YWBZPO.FieldCount-1-(15) downto 4   do
         begin
           if YWBZPO.Fields[i].AsString<>'' then
           begin
             Pairs:=Pairs+YWBZPO.Fields[i].Value;
             if CC='' then CC:=YWBZPO.Fields[i].FieldName;
           end;
         end;
         //搜尋設定外箱料號
         if FindCarton(CC,Pairs)=true then
         begin
           if ZSDH='' then ZSDH:=YWBZPOTemp.fieldbyname('ZSDH').AsString;
           if ZSYWJC='' then ZSYWJC:=YWBZPOTemp.fieldbyname('ZSYWJC').AsString;
           setCarton(YWBZPOTemp.fieldbyname('CLBH').Value,false,YWBZPOTemp.fieldbyname('YWPM').value,false);
         end else
         begin
           IsEmptyCLBH:=true;
         end;
         //
         YWBZPO.Next;
       end;
       if IsEmptyCLBH=true then
       begin
         Showmessage('Please Check Article Carton Setting, Size:'+CC);
         BB6.Click; // Cancel 按鈕
         Exit;
       end else
       begin
         CalculateN.Click;//Calcuate 按鈕
         //設定廠商
         if ZSDH<>'' then
         begin
           with CartonOrder.CGZL do
           begin
              if Recordcount>0 then
              begin
                edit;
                fieldbyname('ZSBH').value:=ZSDH;
                fieldbyname('ZSYWJC').value:=ZSYWJC;
                post;
              end else
              begin
                insert;
                fieldbyname('ZSBH').value:=ZSDH;
                fieldbyname('ZSYWJC').value:=ZSYWJC;
                post;
              end;
            end;
         end;
         SaveBtnClick(false);
         YWBZPOTemp.Active:=false;
         //增加外箱用量在ZLZLS2
         CalCulateZLZLS2_Carton();
       end;
     end;
   finally
      begin
        YWDD.gotobookmark(bm);
        YWDD.freebookmark(bm);
        YWDD.enablecontrols;
      end;
   end;
   Showmessage('Success');
  end;

end;

procedure TCartonOrder.NWeightNClick(Sender: TObject);
var i:integer;
begin

  YWBZPO.first;
  YWBZPO.Next;
  for i:=0 to YWBZPO.RecordCount-1 do
  begin
    CartonOrder.setCarton(YWBZPO.fieldbyname('CLBH').value,false,YWBZPO.fieldbyname('YWPM').value,false);
    YWBZPO.Next;
  end;
  Showmessage('Finish');
end;

procedure TCartonOrder.BD2Click(Sender: TObject);
begin
  with YWBZPOE do
  begin
    requestlive:=true;
    cachedupdates:=true;
    insert;
  end;
  BD5.Enabled:=true;
  BD6.Enabled:=true;
  DBGrideh3.Columns[3].ButtonStyle:=cbsEllipsis;
  DBGrideh3.Columns[5].ButtonStyle:=cbsEllipsis;
end;

procedure TCartonOrder.BD3Click(Sender: TObject);
begin
  with YWBZPOE do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
    fieldbyname('YN').Value:='0';
  end;
  BD5.Enabled:=true;
  BD6.Enabled:=true;
  DBGrideh3.Columns[3].ButtonStyle:=cbsEllipsis;
  DBGrideh3.Columns[5].ButtonStyle:=cbsEllipsis;
end;

procedure TCartonOrder.DBGridEh3GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if YWBZPOE.FieldByName('YN').value='0' then
  begin
    DBGridEh3.canvas.font.color:=clred;
  end;
end;

procedure TCartonOrder.bbt7Click(Sender: TObject);
var bm:Tbookmark;
    i,index:integer;
    bookmarklist:tbookmarklistEh;
begin
  try
    YWDD.disablecontrols;
    bm:=YWDD.getbookmark;
    bookmarklist:=DBGridEh1.selectedrows;
    if bookmarklist.count=0 then DBGridEh1.SelectedRows.CurrentRowSelected:= true;
    if bookmarklist.count>0 then
    begin
      try
        for i:=0 to bookmarklist.count-1 do
        begin
          YWDD.gotobookmark(pointer(bookmarklist[i]));
          with Qtemp do
          begin
            active:=false;    //是否有建立越南工廠BOM
            sql.Clear;
            sql.add('select '''+YWDD.fieldbyname('DDBH').Value+''' as ddbh,CLBH,Sum(CTS) as CLSL from ywbzpo where DDBH in (select DDBH from YWDD where YSBH='''+YWDD.fieldbyname('DDBH').Value+''') Group by CLBH ');
            sql.Add('union all');
            sql.add('select ddbh,CLBH,Sum(CTS) as CLSL from ywbzpoe where DDBH='''+YWDD.fieldbyname('DDBH').Value+''' Group by DDBH,CLBH');
            //funcObj.WriteErrorLog(sql.Text);
            active:=true;
            if Qtemp.RecordCount=0 then
            begin
              showmessage('Vui long mua thung truoc');
              exit;
            end;
            active:=false;   //ZLZLS2是否有資料，決定是否重新展算
            sql.Clear;
            sql.add('select * from ZLZLS2 where ZLBH='''+YWDD.fieldbyname('DDBH').Value+''' and XH='+''''+'VN'+''' and CLBH like ''U%''');
            active:=true;
            if recordcount>0 then
            begin
              if messagedlg('You want to recalucate the usage again?',mtconfirmation,[mbYes,MbNo],0)=mrYes then
              begin
                active:=false;
                sql.Clear;
                sql.add('delete ZLZLS2 where ZLBH='''+YWDD.fieldbyname('DDBH').Value+''' and XH=''VN'' and CLBH like ''U%''');
                execsql;
              end else
              begin
                  abort;
              end;
            end;
            //新增外箱數量到製令表用量
            CalCulateZLZLS2_Carton();
          end;
        end;
      finally
        begin
          YWDD.gotobookmark(bm);
          YWDD.freebookmark(bm);
          YWDD.enablecontrols;
        end;
      end;
      //
    end;
    showmessage('Calculate finished.');
  except
     showmessage('Have wrong.');
  end;

end;

procedure TCartonOrder.BB6Click(Sender: TObject);
begin
  YWDDAfterScroll(nil);
  DBGrideh1.enabled:=true;
  Panel5.Enabled:=true;
  BB5.Enabled:=false;
  BB6.Enabled:=false;
end;

end.
