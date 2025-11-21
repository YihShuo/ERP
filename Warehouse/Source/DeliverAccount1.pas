unit DeliverAccount1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls,comobj,
  math,Menus, GridsEh, DBGridEh,ehlibBDE,dateutils, ComCtrls;

type
  TDeliverAccount = class(TForm)
    Panel1: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    CBX2: TComboBox;
    CBX3: TComboBox;
    Edit4: TEdit;
    Button2: TButton;
    DBGrid1: TDBGridEh;
    DataSource1: TDataSource;
    Query1: TQuery;
    Query1ZLBH: TStringField;
    Query1CLBH: TStringField;
    Query1CLSL: TFloatField;
    Query1YWPM: TStringField;
    Query1DWBH: TStringField;
    Query1Article: TStringField;
    Query1XieMing: TStringField;
    Query1TempQty: TCurrencyField;
    Query1Qty: TCurrencyField;
    Query1Person: TFloatField;
    Label6: TLabel;
    Edit5: TEdit;
    PopupMenu1: TPopupMenu;
    Detail1: TMenuItem;
    Query1Pairs: TIntegerField;
    ExtraCK: TCheckBox;
    Query1Parent: TStringField;
    Query1DType: TStringField;
    MergeExtraCK: TCheckBox;
    chkOrderCancel: TCheckBox;
    BuyNoEdit: TEdit;
    RB2: TRadioButton;
    RB1: TRadioButton;
    CB1: TComboBox;
    Label7: TLabel;
    Query1CalDate: TDateTimeField;
    Label1: TLabel;
    PerCombo: TComboBox;
    RB3: TRadioButton;
    DateTimePicker1: TDateTimePicker;
    OldCK: TCheckBox;
    Query1MJBH: TStringField;
    VGCCB: TCheckBox;
    cbCfm: TCheckBox;
    Query1GSDH: TStringField;
    Query1ShipDate: TDateTimeField;
    Qtemp: TQuery;
    Query1BuyNo: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure Query1CalcFields(DataSet: TDataSet);
    procedure Button2Click(Sender: TObject);
    procedure Edit4KeyPress(Sender: TObject; var Key: Char);
    procedure Edit5KeyPress(Sender: TObject; var Key: Char);
    procedure Detail1Click(Sender: TObject);
    procedure DBGrid1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure FormDestroy(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure FormCreate(Sender: TObject);
  private
    GSBH_VGC:String;
    { Private declarations }
    procedure InitCombo();
    //顯示VGC印刷
    procedure Show_XuongVGC();
  public
    { Public declarations }
  end;

var
  DeliverAccount: TDeliverAccount;  
  sdate,edate:Tdate;

implementation

uses Deliveraccount_Detail1, main1, FunUnit;

{$R *.dfm}
//顯示日期
procedure TDeliverAccount.InitCombo();
var
  myYear, myMonth, myDay : Word;
  i:integer;
begin
  //
  DecodeDate(Date(), myYear, myMonth, myDay);
  for i:=0 to CBX2.Items.Count-1 do
  begin
    if strtoint(CBX2.Items[i])=myYear then
    begin
      CBX2.ItemIndex:=i;
      break;
    end;
  end;
  for i:=0 to CBX3.Items.Count-1 do
  begin
    if strtoint(CBX3.Items[i])=myMonth then
    begin
      CBX3.ItemIndex:=i;
      break;
    end;
  end;
  //
end;
procedure TDeliverAccount.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=cafree
end;
//顯示VGC印刷
procedure TDeliverAccount.Show_XuongVGC();
begin
  with query1 do
  begin
      sql.add('Union all ');
      sql.add('select OrdCL.*,KCLLS.TempQty,KCLLS.Qty,'''+GSBH_VGC+''' as GSDH ');
      sql.add('from (select DDZL.BuyNo,ZLZLS2.ZLBH,ZLZLS2.CLBH as MJBH,ZLZLS2.CLBH as Parent,''Assembly'' as DType,ZLZLS2.CLBH,');
      sql.add('             sum(ZLZLS2.CLSL)   CLSL,CLZL.YWPM,CLZL.DWBH,XXZL.Article,XXZL.XieMing,DDZL.Pairs,Max(ZLZLS2.USERDATE) as CalDate,DDZL.Shipdate ');

      sql.add('      from ZLZLS2_YM ZLZLS2');
      sql.add('      left join CLZL on ZLZLS2.CLBH=CLZL.CLDH');
      sql.add('      left join ZLZL on ZLZL.ZLBH=ZLZLS2.ZLBH');
      sql.add('      left join  DDZL on DDZL.DDBH=ZLZL.DDBH');
      // 20170620
      sql.Add('      left join SHIP_XXZLS on SHIP_XXZLS.XieXing=DDZL.XieXing and SHIP_XXZLS.SheHao=DDZL.SheHao and zlzls2.BWBH=SHIP_XXZLS.BWBH');
      //
      sql.add('      left join XXZl on XXZL.XieXing=DDZl.XieXing and XXZl.Shehao=DDZL.SheHao');
      sql.Add('      where 1=1');
      if RB1.Checked=true then
          sql.add('  and convert(smalldatetime,convert(varchar,DDZL.ShipDate,111)) between '''+formatdatetime('yyyy/MM/dd',sdate)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',edate)+'''')
      else if RB2.Checked=true then
          SQL.Add('  and DDZL.BUYNO like '''+BuyNoEdit.Text+'%'' ')
      else begin
          SQL.Add('       and DDZL.DDBH in (');
          SQL.Add('       select DDZL.DDBH from ( select YWDD.YSBH as DDBH,Sum(YWCP.Qty) as Qty  from YWCP left join YWDD on YWCP.DDBH=YWDD.DDBH ');
          SQL.Add('       where (YWCP.SB=1 or YWCP.SB=3) ');
          SQL.Add('       Group by YWDD.YSBH having Max(convert(varchar,YWCP.LastInDate,111))='''+formatdatetime('yyyy/MM/dd',DateTimePicker1.Date)+''' ) YWCP ');
          SQL.Add('       Left join DDZL on DDZL.DDBH=YWCP.DDBH ');
          SQL.Add('       where YWCP.Qty>=DDZL.Pairs Group by DDZL.DDBH  ) ');
      end;
      sql.add('      and ZLZLS2.CLBH like '+''''+edit1.Text+'%'+'''');
      sql.add('      and CLZL.YWPM like '+''''+'%'+edit2.Text+'%'+'''');
      sql.add('      and CLZL.YWPM like '+''''+'%'+edit3.Text+'%'+'''');
      sql.add('      and ZLZLS2.ZLBH like '+''''+edit4.Text+'%'+'''');
      sql.add('      and MJBH='+''''+'ZZZZZZZZZZ'+'''');
      if not chkOrderCancel.Checked  then
      begin
        sql.add('    and DDZL.DDZT<>'+''''+'C'+'''');
      end else
      begin
        sql.add('    and DDZL.DDZT='+''''+'C'+'''');
      end;
      sql.add('      and DDZl.GSBH='+''''+main.edit2.Text+'''');
      sql.add('      and XXZL.XieMing like '+''''+'%'+edit5.Text+'%'+'''');
      //20170620
      sql.Add('      and (SHIP_XXZLS.tyjh is null or SHIP_XXZLS.tyjh=''N'')');
      //
      sql.add('      group by DDZL.BuyNo,ZLZLS2.ZLBH,ZLZLS2.CLBH,CLZL.YWPM,CLZL.DWBH,XXZL.Article,XXZL.XieMing,DDZL.Pairs,DDZL.Shipdate ) OrdCL');
      sql.add('left join (select   KCLLS.SCBH, KCLLS.CLBH, sum(KCLLS.Qty) as Qty, sum(KCLLS.TempQty) as TempQty  ');
      if OldCK.Checked=true then
        sql.add('           from (select * from kclls union all select * from kclls_2014) KCLLS')
      else
        sql.add('           from KCLLS');
      sql.add('           left join KCLL on KCLL.LLNO=KCLLS.LLNO');
      sql.add('           left join DDZL on DDZL.DDBH=KCLLS.SCBH');
      sql.add('           left join CLZL on CLZL.CLDH=KCLLS.CLBH');
      sql.Add('           where CLBH like '+''''+edit1.Text+'%'+'''');
      sql.add('           and KCLLS.SCBH like '+''''+edit4.Text+'%'+'''');
      sql.add('           and KCLL.SCBH <>''JJJJJJJJJJ''');
      sql.add('           and CLZL.YWPM like '+''''+'%'+edit2.Text+'%'+'''');
      sql.add('           and CLZL.YWPM like '+''''+'%'+edit3.Text+'%'+'''');
      sql.Add('           and KCLL.GSBH='''+GSBH_VGC+'''  ');
      if cbCfm.Checked=true then
        sql.Add('         and KCLL.CFMID<>''NO''');
      if DeliverAccount.CB1.ItemIndex=1 then
        sql.Add('         and IsNull(KCLLS.BLSB,''N'')=''N'' ');
      if DeliverAccount.CB1.ItemIndex=2 then
        sql.Add('         and KCLLS.BLSB=''Y'' ');
      if RB1.Checked=true then
          sql.add('       and convert(smalldatetime,convert(varchar,DDZL.ShipDate,111)) between '''+formatdatetime('yyyy/MM/dd',sdate)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',edate)+'''')
      else if RB2.Checked=true then
          SQL.Add('       and DDZL.BUYNO like '''+BuyNoEdit.Text+'%'' ')
      else if RB3.Checked=true then
      begin
          SQL.Add('       and DDZL.DDBH in (');
          SQL.Add('       select DDZL.DDBH from ( select YWDD.YSBH as DDBH,Sum(YWCP.Qty) as Qty  from YWCP left join YWDD on YWCP.DDBH=YWDD.DDBH ');
          SQL.Add('       where (YWCP.SB=1 or YWCP.SB=3) ');
          SQL.Add('       Group by YWDD.YSBH having Max(convert(varchar,YWCP.LastInDate,111))='''+formatdatetime('yyyy/MM/dd',DateTimePicker1.Date)+''' ) YWCP ');
          SQL.Add('       Left join DDZL on DDZL.DDBH=YWCP.DDBH ');
          SQL.Add('       where YWCP.Qty>=DDZL.Pairs Group by DDZL.DDBH  ) ');
      end;
      sql.add('           and DDZl.GSBH='+''''+main.Edit2.text+'''');
      sql.add('           group by KCLLS.SCBH, KCLLS.CLBH) KCLLS  ');
      sql.add('      on KCLLS.SCBH=OrdCL.ZLBH and KCLLS.CLBH=OrdCL.CLBH ');
      sql.add('where 1=1 ');
      if PerCombo.ItemIndex=1 then
        sql.add('and (OrdCL.CLSL>0 and (KCLLS.Qty/OrdCL.CLSL>1.00))')
      else  if PerCombo.ItemIndex=2 then
        sql.add('and (OrdCL.CLSL>0 and (KCLLS.Qty/OrdCL.CLSL<1))')
      else  if PerCombo.ItemIndex=3 then
        sql.add('and (OrdCL.CLSL>0 and(((KCLLS.Qty/OrdCL.CLSL)<1) or ((KCLLS.Qty/OrdCL.CLSL)>1.00)))')
      else  if PerCombo.ItemIndex=4 then
        sql.add('and (OrdCL.CLSL>0 and KCLLS.Qty is null)');
  end;
end;

procedure TDeliverAccount.Button1Click(Sender: TObject);
var y,m:word;
    ZLZLS2_TB:String;
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
  if y>2020 then
    begin
      showmessage('Pls contect with designer.');
      abort;
    end;
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
  NullStrictConvert := false;
  //量產制令
  {
  if OldCK.Checked=true then
    ZLZLS2_TB:='(select * from zlzls2 union all select * from zlzls2_2014)'
  else
    ZLZLS2_TB:='ZLZLS2';
  }
  //進出口制令
  ZLZLS2_TB:='ZLZLS2';
  with query1 do
  begin
    active:=false;
    sql.Clear;
    if ExtraCK.Checked=false then
    begin
      sql.add('select OrdCL.*,KCLLS.TempQty,KCLLS.Qty,'''+main.Edit2.Text+''' as GSDH ');
      sql.add('from (select DDZL.BuyNo,ZLZLS2.ZLBH,ZLZLS2.CLBH as MJBH,ZLZLS2.CLBH as Parent,''Assembly'' as DType,ZLZLS2.CLBH,');
      sql.add('             sum(ZLZLS2.CLSL)   CLSL,CLZL.YWPM,CLZL.DWBH,XXZL.Article,XXZL.XieMing,DDZL.Pairs,Max(ZLZLS2.USERDATE) as CalDate,DDZL.Shipdate ');

      sql.add('      from '+ZLZLS2_TB+' ZLZLS2');
      sql.add('      left join CLZL on ZLZLS2.CLBH=CLZL.CLDH');
      sql.add('      left join ZLZL on ZLZL.ZLBH=ZLZLS2.ZLBH');
      sql.add('      left join  DDZL on DDZL.DDBH=ZLZL.DDBH');
      // 20170620
      sql.Add('      left join SHIP_XXZLS on SHIP_XXZLS.XieXing=DDZL.XieXing and SHIP_XXZLS.SheHao=DDZL.SheHao and zlzls2.BWBH=SHIP_XXZLS.BWBH');
      //
      sql.add('      left join XXZl on XXZL.XieXing=DDZl.XieXing and XXZl.Shehao=DDZL.SheHao');
      sql.Add('      where 1=1');
      if RB1.Checked=true then
          sql.add('  and convert(smalldatetime,convert(varchar,DDZL.ShipDate,111)) between '''+formatdatetime('yyyy/MM/dd',sdate)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',edate)+'''')
      else if RB2.Checked=true then
          SQL.Add('  and DDZL.BUYNO like '''+BuyNoEdit.Text+'%'' ')
      else begin
          SQL.Add('       and DDZL.DDBH in (');
          SQL.Add('       select DDZL.DDBH from ( select YWDD.YSBH as DDBH,Sum(YWCP.Qty) as Qty  from YWCP left join YWDD on YWCP.DDBH=YWDD.DDBH '); //20190722
          SQL.Add('       where (YWCP.SB=1 or YWCP.SB=3) ');
          SQL.Add('       Group by YWDD.YSBH having Max(convert(varchar,YWCP.LastInDate,111))='''+formatdatetime('yyyy/MM/dd',DateTimePicker1.Date)+''' ) YWCP ');
          SQL.Add('       Left join DDZL on DDZL.DDBH=YWCP.DDBH ');
          SQL.Add('       where YWCP.Qty>=DDZL.Pairs Group by DDZL.DDBH  ) ');
      end;
      sql.add('      and ZLZLS2.CLBH like '+''''+edit1.Text+'%'+'''');
      sql.add('      and CLZL.YWPM like '+''''+'%'+edit2.Text+'%'+'''');
      sql.add('      and CLZL.YWPM like '+''''+'%'+edit3.Text+'%'+'''');
      sql.add('      and ZLZLS2.ZLBH like '+''''+edit4.Text+'%'+'''');
      sql.add('      and MJBH='+''''+'ZZZZZZZZZZ'+'''');
      if not chkOrderCancel.Checked  then
      begin
        sql.add('    and DDZL.DDZT<>'+''''+'C'+'''');
      end else
      begin
        sql.add('    and DDZL.DDZT='+''''+'C'+'''');
      end;
      sql.add('      and DDZl.GSBH='+''''+main.edit2.Text+'''');
      sql.add('      and XXZL.XieMing like '+''''+'%'+edit5.Text+'%'+'''');
      //20170620
      sql.Add('      and (SHIP_XXZLS.tyjh is null or SHIP_XXZLS.tyjh=''N'')');
      //
      sql.add('      group by DDZL.BuyNo,ZLZLS2.ZLBH,ZLZLS2.CLBH,CLZL.YWPM,CLZL.DWBH,XXZL.Article,XXZL.XieMing,DDZL.Pairs,DDZL.Shipdate ) OrdCL');
      sql.add('left join (select   KCLLS.SCBH, KCLLS.CLBH, sum(KCLLS.Qty) as Qty, sum(KCLLS.TempQty) as TempQty  ');
      if OldCK.Checked=true then
        sql.add('           from (select * from kclls union all select * from kclls_2014) KCLLS')
      else
        sql.add('           from KCLLS');
      sql.add('           left join KCLL on KCLL.LLNO=KCLLS.LLNO');
      sql.add('           left join DDZL on DDZL.DDBH=KCLLS.SCBH');
      sql.add('           left join CLZL on CLZL.CLDH=KCLLS.CLBH');
      sql.Add('           where CLBH like '+''''+edit1.Text+'%'+'''');
      sql.add('           and KCLLS.SCBH like '+''''+edit4.Text+'%'+'''');
      sql.add('           and KCLL.SCBH <>''JJJJJJJJJJ''');
      sql.add('           and CLZL.YWPM like '+''''+'%'+edit2.Text+'%'+'''');
      sql.add('           and CLZL.YWPM like '+''''+'%'+edit3.Text+'%'+'''');
      sql.Add('           and KCLL.GSBH='''+main.Edit2.Text+'''  ');
      if cbCfm.Checked=true then
        sql.Add('         and KCLL.CFMID<>''NO''');
      if DeliverAccount.CB1.ItemIndex=1 then
        sql.Add('         and IsNull(KCLLS.BLSB,''N'')=''N'' ');
      if DeliverAccount.CB1.ItemIndex=2 then
        sql.Add('         and KCLLS.BLSB=''Y'' ');
      if RB1.Checked=true then
          sql.add('       and convert(smalldatetime,convert(varchar,DDZL.ShipDate,111)) between '''+formatdatetime('yyyy/MM/dd',sdate)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',edate)+'''')
      else if RB2.Checked=true then
          SQL.Add('       and DDZL.BUYNO like '''+BuyNoEdit.Text+'%'' ')
      else if RB3.Checked=true then
      begin
          SQL.Add('       and DDZL.DDBH in (');
          SQL.Add('       select DDZL.DDBH from ( select YWDD.YSBH as DDBH,Sum(YWCP.Qty) as Qty  from YWCP left join YWDD on YWCP.DDBH=YWDD.DDBH ');  //20190722
          SQL.Add('       where (YWCP.SB=1 or YWCP.SB=3) ');
          SQL.Add('       Group by YWDD.YSBH having Max(convert(varchar,YWCP.LastInDate,111))='''+formatdatetime('yyyy/MM/dd',DateTimePicker1.Date)+''' ) YWCP ');
          SQL.Add('       Left join DDZL on DDZL.DDBH=YWCP.DDBH ');
          SQL.Add('       where YWCP.Qty>=DDZL.Pairs Group by DDZL.DDBH  ) ');
      end;
      sql.add('           and DDZl.GSBH='+''''+main.Edit2.text+'''');
      sql.add('           group by KCLLS.SCBH, KCLLS.CLBH) KCLLS  ');
      sql.add('      on KCLLS.SCBH=OrdCL.ZLBH and KCLLS.CLBH=OrdCL.CLBH ');
      sql.add('where 1=1 ');
      if PerCombo.ItemIndex=1 then
        sql.add('and (OrdCL.CLSL>0 and (KCLLS.Qty/OrdCL.CLSL>1.00))')
      else  if PerCombo.ItemIndex=2 then
        sql.add('and (OrdCL.CLSL>0 and (KCLLS.Qty/OrdCL.CLSL<1))')
      else  if PerCombo.ItemIndex=3 then
        sql.add('and (OrdCL.CLSL>0 and(((KCLLS.Qty/OrdCL.CLSL)<1) or ((KCLLS.Qty/OrdCL.CLSL)>1.00)))')
      else  if PerCombo.ItemIndex=4 then
        sql.add('and (OrdCL.CLSL>0 and KCLLS.Qty is null)');
      if VGCCB.Checked=true then //VGC加工廠
        Show_XuongVGC();
      sql.add('order by OrdCL.GSDH,OrdCL.ZLBH,OrdCL.CLBH');

    end else //2015/05/18 顯示加工料號
    begin
      sql.add('select OrdCL.*,KCLLS.TempQty,KCLLS.Qty,'''+main.Edit2.Text+''' as GSDH  ');
      sql.add('from (select DDZL.BuyNo,ZLZLS2.ZLBH,ZLZLS2.CLBH as MJBH,ZLZLS2.CLBH as Parent,''Assembly'' as DType,ZLZLS2.CLBH,');
      sql.add('             sum(ZLZLS2.CLSL)   CLSL,CLZL.YWPM,CLZL.DWBH,XXZL.Article,XXZL.XieMing,DDZL.Pairs,Max(ZLZLS2.USERDATE) as CalDate,DDZL.Shipdate ');

      sql.add('      from '+ZLZLS2_TB+' ZLZLS2');
      sql.add('      left join CLZL on ZLZLS2.CLBH=CLZL.CLDH');
      sql.add('      left join ZLZL on ZLZL.ZLBH=ZLZLS2.ZLBH');
      sql.add('      left join  DDZL on DDZL.DDBH=ZLZL.DDBH');
      // 20170620
      sql.Add('      left join SHIP_XXZLS on SHIP_XXZLS.XieXing=DDZL.XieXing and SHIP_XXZLS.SheHao=DDZL.SheHao and zlzls2.BWBH=SHIP_XXZLS.BWBH');
      //
      sql.add('      left join XXZl on XXZL.XieXing=DDZl.XieXing and XXZl.Shehao=DDZL.SheHao');
      sql.Add('      where 1=1');
      if RB1.Checked=true then
          sql.add('  and convert(smalldatetime,convert(varchar,DDZL.ShipDate,111)) between '''+formatdatetime('yyyy/MM/dd',sdate)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',edate)+'''')
      else if RB2.Checked=true then
          SQL.Add('  and DDZL.BUYNO like '''+BuyNoEdit.Text+'%'' ')
      else begin
          SQL.Add('       and DDZL.DDBH in (');
          SQL.Add('       select DDZL.DDBH from ( select YWDD.YSBH as DDBH,Sum(YWCP.Qty) as Qty  from YWCP left join YWDD on YWCP.DDBH=YWDD.DDBH '); //20190722
          SQL.Add('       where (YWCP.SB=1 or YWCP.SB=3) ');
          SQL.Add('       Group by YWDD.YSBH having Max(convert(varchar,YWCP.LastInDate,111))='''+formatdatetime('yyyy/MM/dd',DateTimePicker1.Date)+''' ) YWCP ');
          SQL.Add('       Left join DDZL on DDZL.DDBH=YWCP.DDBH ');
          SQL.Add('       where YWCP.Qty>=DDZL.Pairs Group by DDZL.DDBH  ) ');
      end;
      sql.add('      and ZLZLS2.CLBH like '+''''+edit1.Text+'%'+'''');
      sql.add('      and CLZL.YWPM like '+''''+'%'+edit2.Text+'%'+'''');
      sql.add('      and CLZL.YWPM like '+''''+'%'+edit3.Text+'%'+'''');
      sql.add('      and ZLZLS2.ZLBH like '+''''+edit4.Text+'%'+'''');
      sql.add('      and MJBH='+''''+'ZZZZZZZZZZ'+'''');
      if not chkOrderCancel.Checked  then
      begin
        sql.add('    and DDZL.DDZT<>'+''''+'C'+'''');
      end else
      begin
        sql.add('    and DDZL.DDZT='+''''+'C'+'''');
      end;
      sql.add('      and DDZl.GSBH='+''''+main.edit2.Text+'''');
      sql.add('      and XXZL.XieMing like '+''''+'%'+edit5.Text+'%'+'''');
      //20170620
      sql.Add('      and (SHIP_XXZLS.tyjh is null or SHIP_XXZLS.tyjh=''N'')');
      //
      sql.add('      group by DDZL.BuyNo,ZLZLS2.ZLBH,ZLZLS2.CLBH,CLZL.YWPM,CLZL.DWBH,XXZL.Article,XXZL.XieMing,DDZL.Pairs,DDZL.Shipdate ');
      sql.add('union all ');
      sql.add('      select * from (');
      if MergeExtraCK.Checked=false then
         sql.add('   select DDZL.BuyNo,ZLZLS2.ZLBH,ZLZLS2.MJBH,(select top 1 Case when  A.MJBH<>''ZZZZZZZZZZ'' then A.MJBH else ZLZLS2.MJBH end as MJBH from '+ZLZLS2_TB+' A where A.CLBH=ZLZLS2.MJBH and A.ZLBH=ZLZLS2.ZLBH  ) as Parent,''Gia cong'' as DType,ZLZLS2.CLBH,')
      else
         sql.add('   select DDZL.BuyNo,ZLZLS2.ZLBH,ZLZLS2.MJBH,''ZZZZZZZZZZ'' as Parent,''Gia cong'' as DType,ZLZLS2.CLBH,');
      sql.add('             sum(ZLZLS2.CLSL)   CLSL,CLZL.YWPM,CLZL.DWBH,XXZL.Article,XXZL.XieMing,DDZL.Pairs,Max(ZLZLS2.USERDATE) as CalDate,DDZL.Shipdate ');
      if OldCK.Checked=true then
        sql.add('    from (select * from zlzls2 union all select * from zlzls2_2014)ZLZLS2')
      else
        sql.add('    from '+ZLZLS2_TB+' ZLZLS2');
      sql.add('      left join CLZL on ZLZLS2.CLBH=CLZL.CLDH');
      //sql.add('      left join  (select distinct SCZL.SCBH,SCZL.ZLBH from SCZL ) SCZL on SCZL.SCBH=ZLZLS2.ZLBH');
      sql.add('      left join ZLZL on ZLZL.ZLBH=ZLZLS2.ZLBH');
      sql.add('      left join  DDZL on DDZL.DDBH=ZLZL.DDBH');
      // 20170620
      sql.Add('      left join SHIP_XXZLS on SHIP_XXZLS.XieXing=DDZL.XieXing and SHIP_XXZLS.SheHao=DDZL.SheHao and zlzls2.BWBH=SHIP_XXZLS.BWBH');
      //
      sql.add('      left join XXZl on XXZL.XieXing=DDZl.XieXing and XXZl.Shehao=DDZL.SheHao');
      sql.Add('      where 1=1');
      if RB1.Checked=true then
          sql.add('  and convert(smalldatetime,convert(varchar,DDZL.ShipDate,111)) between '''+formatdatetime('yyyy/MM/dd',sdate)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',edate)+'''')
      else if RB2.Checked=true then
          SQL.Add('  and DDZL.BUYNO like '''+BuyNoEdit.Text+'%'' ')
      else begin
          SQL.Add('       and DDZL.DDBH in (');
          SQL.Add('       select DDZL.DDBH from ( select YWDD.YSBH as DDBH,Sum(YWCP.Qty) as Qty  from YWCP left join YWDD on YWCP.DDBH=YWDD.DDBH ');
          SQL.Add('       where (YWCP.SB=1 or YWCP.SB=3) ');
          SQL.Add('       Group by YWDD.YSBH having Max(convert(varchar,YWCP.LastInDate,111))='''+formatdatetime('yyyy/MM/dd',DateTimePicker1.Date)+''' ) YWCP ');
          SQL.Add('       Left join DDZL on DDZL.DDBH=YWCP.DDBH ');
          SQL.Add('       where YWCP.Qty>=DDZL.Pairs Group by DDZL.DDBH  ) ');
      end;
      sql.add('      and CLZL.YWPM like '+''''+'%'+edit2.Text+'%'+'''');
      sql.add('      and CLZL.YWPM like '+''''+'%'+edit3.Text+'%'+'''');
      sql.add('      and ZLZLS2.ZLBH like '+''''+edit4.Text+'%'+'''');
      sql.add('      and MJBH<>'+''''+'ZZZZZZZZZZ'+'''');
      if not chkOrderCancel.Checked  then
      begin
        sql.add('    and DDZL.DDZT<>'+''''+'C'+'''');
      end else
      begin
        sql.add('    and DDZL.DDZT='+''''+'C'+'''');
      end;
      sql.add('      and DDZl.GSBH='+''''+main.edit2.Text+'''');
      sql.add('      and XXZL.XieMing like '+''''+'%'+edit5.Text+'%'+'''');
      //20170620
      sql.Add('      and (SHIP_XXZLS.tyjh is null or SHIP_XXZLS.tyjh=''N'')');
      //
      if MergeExtraCK.Checked=false then
        sql.add('    group by DDZL.BuyNo,ZLZLS2.ZLBH,ZLZLS2.MJBH,ZLZLS2.CLBH,CLZL.YWPM,CLZL.DWBH,XXZL.Article,XXZL.XieMing,DDZL.Pairs,DDZL.Shipdate ')
      else
        sql.add('    group by DDZL.BuyNo,ZLZLS2.ZLBH,ZLZLS2.MJBH,ZLZLS2.CLBH,CLZL.YWPM,CLZL.DWBH,XXZL.Article,XXZL.XieMing,DDZL.Pairs,DDZL.Shipdate ');
      sql.add('      ) ZLZLS2 where   ZLZLS2.Parent like '+''''+edit1.Text+'%'+''' or ZLZLS2.CLBH like '+''''+edit1.Text+'%'+'''      ');
      sql.add(') OrdCL');
      sql.add('left join (select   KCLLS.SCBH, KCLLS.CLBH,KCLLS.CLBH as MJBH,''Assembly'' as DType, sum(KCLLS.Qty) as Qty, sum(KCLLS.TempQty) as TempQty  ');
      if OldCK.Checked=true  then
        sql.add('         from (select * from kclls union all select * from kclls_2014) KCLLS')
      else
        sql.add('         from KCLLS');
      sql.add('           left join KCLL on KCLL.LLNO=KCLLS.LLNO');
      sql.add('           left join DDZL on DDZL.DDBH=KCLLS.SCBH');
      sql.add('           left join CLZL on CLZL.CLDH=KCLLS.CLBH');
      sql.Add('           where  CLBH like '+''''+edit1.Text+'%'+'''');
      sql.add('           and KCLLS.SCBH like '+''''+edit4.Text+'%'+'''');
      sql.add('           and CLZL.YWPM like '+''''+'%'+edit2.Text+'%'+'''');
      sql.add('           and CLZL.YWPM like '+''''+'%'+edit3.Text+'%'+'''');
      sql.Add('           and KCLL.GSBH='''+main.Edit2.Text+'''  ');
      //20170824
      sql.Add('           and KCLL.SCBH<>''JJJJJJJJJJ''');
      //
      if cbCfm.Checked=true then
        sql.Add('         and KCLL.CFMID<>''NO''');
      if DeliverAccount.CB1.ItemIndex=1 then
        sql.Add('         and IsNull(KCLLS.BLSB,''N'')=''N'' ');
      if DeliverAccount.CB1.ItemIndex=2 then
        sql.Add('         and KCLLS.BLSB=''Y'' ');
      if RB1.Checked=true then
          sql.add('       and convert(smalldatetime,convert(varchar,DDZL.ShipDate,111)) between '''+formatdatetime('yyyy/MM/dd',sdate)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',edate)+'''')
      else if RB2.Checked=true then
          SQL.Add('       and DDZL.BUYNO like '''+BuyNoEdit.Text+'%'' ')
      else begin
          SQL.Add('       and DDZL.DDBH in (');
          SQL.Add('         select DDZL.DDBH from ( select YWDD.YSBH as DDBH,Sum(YWCP.Qty) as Qty  from YWCP left join YWDD on YWCP.DDBH=YWDD.DDBH ');
          SQL.Add('         where (YWCP.SB=1 or YWCP.SB=3) ');
          SQL.Add('         Group by YWDD.YSBH having Max(convert(varchar,YWCP.LastInDate,111))='''+formatdatetime('yyyy/MM/dd',DateTimePicker1.Date)+''' ) YWCP ');
          SQL.Add('         Left join DDZL on DDZL.DDBH=YWCP.DDBH ');
          SQL.Add('         where YWCP.Qty>=DDZL.Pairs Group by DDZL.DDBH  ) ');
      end;
      sql.add('           and DDZl.GSBH='+''''+main.Edit2.text+'''');
      sql.add('           group by KCLLS.SCBH, KCLLS.CLBH ');
      SQL.Add('           Union all ');
      sql.Add('           select JGCK.SCBH,JGCK.CLBH,JGCK.MJBH,JGCK.DType,sum(JGCK.Qty) as Qty,sum(JGCK.TempQty)as TempQty from(');
      SQL.Add('             select JGZLSS.ZLBH as SCBH,JGZLS.ZMLB as CLBH,JGZLS.CLBH as MJBH,''Gia cong'' as DType,Sum(JGZLS.Qty*JGZLSS.Qty) as Qty,Sum(JGZLS.Qty*JGZLSS.Qty) as TempQty from JGZLS');
      SQL.Add('             Left Join JGZLSS on JGZLS.JGNO=JGZLSS.JGNO and JGZLS.CLBH=JGZLSS.CLBH ');
      SQL.Add('             Left join DDZL on DDZL.DDBH=JGZLSS.ZLBH');
      SQL.Add('             Left join JGZL on JGZL.JGNO=JGZLS.JGNO ');
      SQL.Add('             where  JGZLSS.ZLBH like '''+edit4.Text+'%'' and JGZLS.CLBH like '''+edit1.Text+'%'' ');
      SQL.Add('             and JGZL.GSBH='''+main.Edit2.Text+''' and JGZL.CFMID1<>''NO'' and convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111)) <''2017/09/01'' ');
      if RB1.Checked=true then
          sql.add('         and convert(smalldatetime,convert(varchar,DDZL.ShipDate,111)) between '''+formatdatetime('yyyy/MM/dd',sdate)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',edate)+'''')
      else if RB2.Checked=true then
          SQL.Add('         and DDZL.BUYNO like '''+BuyNoEdit.Text+'%'' ')
      else begin
          SQL.Add('         and DDZL.DDBH in (');
          SQL.Add('             select DDZL.DDBH from ( select YWDD.YSBH as DDBH,Sum(YWCP.Qty) as Qty  from YWCP left join YWDD on YWCP.DDBH=YWDD.DDBH ');
          SQL.Add('             where (YWCP.SB=1 or YWCP.SB=3) ');
          SQL.Add('             Group by YWDD.YSBH having Max(convert(varchar,YWCP.LastInDate,111))='''+formatdatetime('yyyy/MM/dd',DateTimePicker1.Date)+''' ) YWCP ');
          SQL.Add('             Left join DDZL on DDZL.DDBH=YWCP.DDBH ');
          SQL.Add('             where YWCP.Qty>=DDZL.Pairs Group by DDZL.DDBH  ) ');
      end;
      SQL.Add('             and DDZl.GSBH='''+main.Edit2.text+''' and JGZLS.ZMLB<>''ZZZZZZZZZZ''');
      SQL.Add('             Group by JGZLSS.ZLBH,JGZLS.ZMLB,JGZLS.CLBH');
      //20170824 deliver extra
      SQL.Add('             Union all ');
      sql.Add('             select KCLLS.SCBH, KCLLS.CLBH,KCLLS.DFL as MJBH,''Gia cong'' as DType, sum(KCLLS.Qty) as Qty, sum(KCLLS.TempQty) as TempQty   ');
      if OldCK.Checked=true  then
        sql.add('           from (select * from kclls union all select * from kclls_2014) KCLLS')
      else
        sql.add('           from KCLLS');
      sql.add('             left join KCLL on KCLL.LLNO=KCLLS.LLNO');
      sql.add('             left join DDZL on DDZL.DDBH=KCLLS.SCBH');
      sql.add('             left join CLZL on CLZL.CLDH=KCLLS.CLBH');
      sql.Add('             where  (KCLLS.DFL like '+''''+edit1.Text+'%'+''' or KCLLS.CLBH like '+''''+edit1.Text+'%'+''')');
      sql.add('             and KCLLS.SCBH like '+''''+edit4.Text+'%'+'''');
      sql.add('             and CLZL.YWPM like '+''''+'%'+edit2.Text+'%'+'''');
      sql.add('             and CLZL.YWPM like '+''''+'%'+edit3.Text+'%'+'''');
      sql.Add('             and KCLL.GSBH='''+main.Edit2.Text+''' and convert(smalldatetime,convert(varchar,KCLL.CFMDATE,111))>=''2017/09/01'' ');
      sql.Add('             and KCLL.SCBH=''JJJJJJJJJJ''');
      if cbCfm.Checked=true then
        sql.Add('         and KCLL.CFMID<>''NO'' ');
      if DeliverAccount.CB1.ItemIndex=1 then
        sql.Add('           and IsNull(KCLLS.BLSB,''N'')=''N'' ');
      if DeliverAccount.CB1.ItemIndex=2 then
        sql.Add('           and KCLLS.BLSB=''Y'' ');
      if RB1.Checked=true then
          sql.add('         and convert(smalldatetime,convert(varchar,DDZL.ShipDate,111)) between '''+formatdatetime('yyyy/MM/dd',sdate)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',edate)+'''')
      else if RB2.Checked=true then
          SQL.Add('         and DDZL.BUYNO like '''+BuyNoEdit.Text+'%'' ')
      else begin
          SQL.Add('         and DDZL.DDBH in (');
          SQL.Add('           select DDZL.DDBH from ( select YWDD.YSBH as DDBH,Sum(YWCP.Qty) as Qty  from YWCP left join YWDD on YWCP.DDBH=YWDD.DDBH ');
          SQL.Add('           where (YWCP.SB=1 or YWCP.SB=3) ');
          SQL.Add('         Group by YWDD.YSBH having Max(convert(varchar,YWCP.LastInDate,111))='''+formatdatetime('yyyy/MM/dd',DateTimePicker1.Date)+''' ) YWCP ');
          SQL.Add('         Left join DDZL on DDZL.DDBH=YWCP.DDBH ');
          SQL.Add('         where YWCP.Qty>=DDZL.Pairs Group by DDZL.DDBH  ) ');
      end;
      sql.add('             and DDZl.GSBH='+''''+main.Edit2.text+'''');
      sql.add('             group by KCLLS.SCBH, KCLLS.CLBH,KCLLS.DFL ');
      sql.Add('             )JGCK group by JGCK.SCBH,JGCK.CLBH,JGCK.MJBH,JGCK.DType');
      //
      sql.add('          ) KCLLS on KCLLS.SCBH=OrdCL.ZLBH and KCLLS.CLBH=OrdCL.CLBH and KCLLS.DType=OrdCL.DType and KCLLS.MJBH=OrdCL.MJBH ');  //Parent
      sql.add('where 1=1 ');
      if PerCombo.ItemIndex=1 then
        sql.add('and (OrdCL.CLSL>0 and (KCLLS.Qty/OrdCL.CLSL>1.00))')
      else  if PerCombo.ItemIndex=2 then
        sql.add('and (OrdCL.CLSL>0 and (KCLLS.Qty/OrdCL.CLSL<1))')
      else  if PerCombo.ItemIndex=3 then
        sql.add('and (OrdCL.CLSL>0 and(((KCLLS.Qty/OrdCL.CLSL)<1) or ((KCLLS.Qty/OrdCL.CLSL)>1.00)))');
      if VGCCB.Checked=true then //VGC加工廠
        Show_XuongVGC();
      sql.add('order by OrdCL.GSDH,OrdCL.ZLBH,OrdCL.Parent,OrdCL.DType,OrdCL.CLBH');
    end;
    //funcobj.WriteErrorLog(sql.Text);
    active:=true;
  end;
  //button2.Visible:=true;

end;

procedure TDeliverAccount.Edit1KeyPress(Sender: TObject; var Key: Char);
begin

if key=#13 then
  edit2.SetFocus;
end;

procedure TDeliverAccount.Edit2KeyPress(Sender: TObject; var Key: Char);
begin

if key=#13 then
  edit3.SetFocus;
end;

procedure TDeliverAccount.Edit3KeyPress(Sender: TObject; var Key: Char);
begin

if key=#13 then
  edit5.SetFocus;
end;

procedure TDeliverAccount.Query1CalcFields(DataSet: TDataSet);
begin

with query1 do
  begin
     if FieldByName('CLSL').value<>0 then
      begin
        FieldByName('Person').value:=RoundTo(FieldByName('Qty').value/FieldByName('CLSL').value*100,-1);
      end;
  end;
end;

procedure TDeliverAccount.Button2Click(Sender: TObject);
var
      eclApp,WorkBook:olevariant;
 //     xlsFileName:string;
      i,j:integer;
begin

if query1.Active then
  begin
    if query1.recordcount=0 then
      begin
        showmessage('No record.');
        abort;
      end;
  end
  else
    begin
      showmessage('No record.');
      abort;
    end;

try
  eclApp:=CreateOleObject('Excel.Application');
  WorkBook:=CreateOleObject('Excel.Sheet');
except
  Application.MessageBox('NO Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
  Exit;
end;

try
  WorkBook:=eclApp.workbooks.Add;
  eclApp.Cells(1,1):='NO';
  for   i:=1   to   query1.fieldcount   do
    begin
      eclApp.Cells(1,i+1):=query1.fields[i-1].FieldName;
    end;
  query1.First;
  j:=2;
  while   not  query1.Eof   do
    begin
      eclApp.Cells(j,1):=j-1;
      for   i:=1   to   query1.fieldcount   do
        begin
          eclApp.Cells(j,i+1):=query1.Fields[i-1].Value;
          eclApp.Cells.Cells.item[j,i+1].font.size:='8';
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

procedure TDeliverAccount.Edit4KeyPress(Sender: TObject; var Key: Char);
begin

  if key=#13 then
    button1click(nil);
end;

procedure TDeliverAccount.Edit5KeyPress(Sender: TObject; var Key: Char);
begin

  if key=#13 then
    edit4.SetFocus;
end;

procedure TDeliverAccount.Detail1Click(Sender: TObject);
begin
  Deliveraccount_Detail:=TDeliveraccount_Detail.create(self);
  Deliveraccount_Detail.show;
end;

procedure TDeliverAccount.DBGrid1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin

  if  Query1.FieldByName('Qty').value>(Query1.FieldByName('CLSL').value*1.01)   then
  begin
    dbgrid1.canvas.font.color:=clred;
  end;
  if  ( (Query1.FieldByName('Qty').value<Query1.FieldByName('CLSL').value) and (Query1.FieldByName('CLSL').value>0))    then
  begin
    dbgrid1.canvas.font.color:=clblue;
  end;
end;

procedure TDeliverAccount.FormDestroy(Sender: TObject);
begin
  DeliverAccount:=nil;
end;

procedure TDeliverAccount.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  //有人修改
  if ((Query1.FieldByName('DType').AsString='Gia cong'))  then          //
  begin
    DBGrid1.canvas.Brush.Color:=clBtnface;
    DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
  end;
end;

procedure TDeliverAccount.FormCreate(Sender: TObject);
begin

  Datetimepicker1.Date:=Now-1;
  InitCombo();
  //印刷加工廠
  GSBH_VGC:='NULL';
  with Qtemp do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select GSBH from (');
    SQL.Add('Select Bgszl.GSDH as GSBH,Bgszl.DFL,Bgszl.SFL,Bgszl.TGSBH,Bgszl.GXLB');
    SQL.Add('       ,KCCK.CKBH,KCCK.DFL as KDFL ');
    SQL.Add('from Bgszl');
    SQL.Add('left join  KCCK on Bgszl.GSDH=KCCK.GSBH');
    SQL.Add('where IsNull(tybh,'''')<>''Y''');
    SQL.Add(' ) BGSZL');
    SQL.Add('where 1=1 and SFL=''GC'' and GSBH is not null ');
    SQL.Add('   and DFL in (select DFL from Bgszl where GSDH='''+main.Edit2.Text+''')');
    SQL.Add('Group by GSBH');
    Active:=true;
    if RecordCount>0 then GSBH_VGC:=FieldByName('GSBH').AsString;
    Active:=false;
  end;
  //

end;

end.
