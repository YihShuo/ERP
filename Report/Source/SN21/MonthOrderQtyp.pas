unit MonthOrderQtyp;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GridsEh, DBGridEh, StdCtrls, ExtCtrls, ComCtrls, Buttons, DB,
  DBTables,Dateutils,comobj;

type
  TMonthOrderQty = class(TForm)
    MonDBGridEh: TDBGridEh;
    Panel1: TPanel;
    BB1: TBitBtn;
    bbt6: TBitBtn;
    QryPanel: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    QryBtn: TButton;
    MonQry: TQuery;
    DS: TDataSource;
    tmpQry: TQuery;
    STYea: TComboBox;
    STMon: TComboBox;
    EDYea: TComboBox;
    EDMon: TComboBox;
    GSBHCombo: TComboBox;
    Label1: TLabel;
    BuyNoCK: TCheckBox;
    SaleTypeCK: TCheckBox;
    Lang: TGroupBox;
    RBLan1: TRadioButton;
    RBLan2: TRadioButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure BB1Click(Sender: TObject);
    procedure QryBtnClick(Sender: TObject);
    procedure MonDBGridEhDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumnEh;
      State: TGridDrawState);
    procedure FormCreate(Sender: TObject);
    procedure GSBHComboChange(Sender: TObject);
    procedure bbt6Click(Sender: TObject);
  private
    Langi:byte;
    ItemArray:array [0..1,0..7] of string;
    ReportType:byte;
    { Private declarations }
    procedure ShowBuyOrderQty();
    procedure ShowMonthOrderQty();
  public
    { Public declarations }
  end;

var
  MonthOrderQty: TMonthOrderQty;

implementation
  uses Main1,FunUnit;
{$R *.dfm}

procedure TMonthOrderQty.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    Action:=Cafree;
end;

procedure TMonthOrderQty.FormDestroy(Sender: TObject);
begin
   MonthOrderQty:=nil;
end;

procedure TMonthOrderQty.BB1Click(Sender: TObject);
begin
  QryPanel.Visible:=true;
end;

procedure TMonthOrderQty.QryBtnClick(Sender: TObject);
begin
  MonDBGridEh.FrozenCols:=0;
  //語言選擇
  if RBLan1.Checked=true then
    Langi:=0
  else
    Langi:=1;
  //
  if ((GSBHCOmbo.Text='VA12') and (BuyNoCK.Checked=true)) then
  begin
    ReportType:=0;
    ShowBuyOrderQty();//依BUY別 只有Converse有
    if MonQry.RecordCount>0 then MonDBGridEh.FrozenCols:=0;
  end else
  begin
    ReportType:=1;
    ShowMonthOrderQty(); //依月分
    if MonQry.RecordCount>0 then MonDBGridEh.FrozenCols:=2;
  end;
  QryPanel.Visible:=false;
end;
//全部廠區依月份顯示Qty
procedure TMonthOrderQty.ShowMonthOrderQty();
var STDateStr,EDDateStr,MDStr:string;
    Yi,Mi,Di,i:integer;
    tmpDate:TDateTime;
    //
    GSBHFilter:string;
    SaleTypeStr:string;
begin

  //日期範圍參數
  Yi:=strtoint(STYea.Text);
  Mi:=strtoint(STMon.Text);
  Di:=1;
  tmpDate:=EncodeDate(Yi,Mi,Di);
  STDateStr:=FormatDateTime('YYYY-MM-01',tmpDate);
  Yi:=strtoint(EDYea.Text);
  Mi:=strtoint(EDMon.Text);
  Di:=1;
  tmpDate:=EncodeDate(Yi,Mi,Di);
  EDDateStr:=FormatDateTime('YYYY-MM-DD',Endofthemonth(tmpDate));

  //過濾廠區
   if (GSBHCombo.Text<>'ALL') then
   GSBHFilter:='	where #MonDQty.GSBH='''+GSBHCombo.Text+''' ';
  //內外銷過濾
  if SaleTypeCK.Checked=true then SaleTypeStr:=' and DDZL.DDGB<>''VIE'' ';

  with tmpQry do
  begin
     Active:=false;
     SQL.Clear;
     SQL.Add('if object_id(''tempdb..#MonDQty'') is not null  ');
     SQL.Add('   begin   drop table #MonDQty end ');
     SQL.Add('select * into #MonDQty ');
     SQL.Add('from(');
     //實際接單數
     SQL.Add('  select (Cast(Year(shipdate) as Varchar)+''/''+Cast(replace(STR(month(shipdate),2),'' '',''0'') as Varchar)) as MD,DDZL.GSBH as GSBH,Sum(Pairs) as Qty,'''+ItemArray[Langi][0]+''' as SB ');
     SQL.Add('  from DDZL ');
     SQL.Add('  where  ShipDate>='''+STDateStr+''' and ShipDate<='''+EDDateStr+''' '+SaleTypeStr);// Converse訂單
     SQL.Add('  group by Year(shipdate),month(shipdate),DDZL.GSBH ');
     SQL.Add('  Union All ');
     //計畫產能
     SQL.Add('  select (Cast(Year(BZDate) as Varchar)+''/''+Cast(replace(STR(month(BZDate),2),'' '',''0'') as Varchar)) as MD,BDepartment.GSBH,Sum(SCBZCL.Qty) as Qty,'''+ItemArray[Langi][1]+''' as SB');
     SQL.Add('    from SCBZCL');
     SQL.Add('    left join BDepartment on BDepartment.ID=SCBZCL.DepNo ');
     SQL.Add('    where  SCBZCL.BZDate>='''+STDateStr+''' and SCBZCL.BZDate<='''+EDDateStr+''' ');
     SQL.Add('           and Bdepartment.GXLB in (''A'') ');
     SQL.Add('    group by Year(SCBZCL.BZDate),month(SCBZCL.BZDate),BDepartment.GSBH ');
     SQL.Add('  Union All ');
     //當月生產
     SQL.Add(' select  (Cast(Year(SCBB.SCDate) as Varchar)+''/''+Cast(replace(STR(month(SCBB.SCDate),2),'' '',''0'') as Varchar)) as MD,DDZL.GSBH,convert(int,sum(scbbs.Qty)) as Qty,'''+ItemArray[Langi][2]+''' as SB');
     SQL.Add(' from DDZL');
     SQL.Add(' left join scbbs on scbbs.SCBH = DDZL.DDBH and scbbs.GXLB=''A''');
     SQL.Add(' left join scbb on scbb.proNo = scbbs.proNo');
     SQL.Add(' where ShipDate>='''+STDateStr+''' and ShipDate<='''+EDDateStr+'''  and month(scbb.scdate)=month(ddzl.ShipDate) '+SaleTypeStr);
     SQL.Add(' group by Year(SCBB.SCDate),month(SCBB.SCDate),DDZL.GSBH ');
     //提前生產
     SQL.Add(' Union All ');
     SQL.Add(' select  (Cast(Year(DDZL.ShipDate) as Varchar)+''/''+Cast(replace(STR(month(DDZL.ShipDate),2),'' '',''0'') as Varchar)) as MD,DDZL.GSBH,');
     SQL.Add(' convert(int,sum(scbbs.Qty)-sum(case when (Month(scbb.scdate)=month(ddzl.shipdate)) and (Year(scbb.scdate)=Year(ddzl.shipdate))  then scbbs.qty else 0 end)) as Qty,'''+ItemArray[Langi][3]+''' as SB');
     SQL.Add(' from DDZL');
     SQL.Add(' left join scbbs on scbbs.SCBH = DDZL.DDBH and scbbs.GXLB=''A''');
     SQL.Add(' left join scbb on scbb.proNo = scbbs.proNo');
     SQL.Add(' where ShipDate>='''+STDateStr+''' and ShipDate<='''+EDDateStr+'''   '+SaleTypeStr);
     SQL.Add(' group by Year(DDZL.ShipDate),month(DDZL.ShipDate),DDZL.GSBH ');
     //欠數
     SQL.Add(' Union All ');
     SQL.Add(' select  (Cast(Year(DDZL.ShipDate) as Varchar)+''/''+Cast(replace(STR(month(DDZL.ShipDate),2),'' '',''0'') as Varchar)) as MD,DDZL.GSBH,sum(DDZL.Pairs)-isnull(sum(sc.Qty),0) as Qty,'''+ItemArray[Langi][4]+''' as SB ');
     SQL.Add(' from ddzl');
     SQL.Add(' left join (');
     SQL.Add('  select DDZL.DDBH,convert(int,sum(scbbs.Qty)) as Qty from DDZL ');
     SQL.Add('  left join scbbs on scbbs.SCBH = DDZL.DDBH and scbbs.GXLB=''A''');
     SQL.Add('  group by DDZL.DDBH');
     SQL.Add(' ) sc on sc.DDBH = DDZL.DDBH');
     SQL.Add(' where ShipDate>='''+STDateStr+''' and ShipDate<='''+EDDateStr+'''   '+SaleTypeStr);
     SQL.Add(' group by Year(DDZL.ShipDate),month(DDZL.ShipDate),DDZL.GSBH ');
     //當月實際產能
     SQL.Add(' Union All ');
     SQL.Add(' select  (Cast(Year(scbb.SCDate) as Varchar)+''/''+Cast(replace(STR(month(scbb.SCDate),2),'' '',''0'') as Varchar)) as MD,BDepartment.GSBH,convert(int,sum(scbbs.Qty)) as Qty,'''+ItemArray[Langi][5]+''' as SB');
     SQL.Add(' from SCBBS');
     SQL.Add(' left join scbb on scbb.proNo = scbbs.proNo');
     SQL.Add(' left join DDZL on scbbs.SCBH = DDZL.DDBH ');
     SQL.Add(' left join BDepartment on BDepartment.ID=scbb.DepNO ');
     SQL.Add(' where  scbbs.GXLB=''A'' and scbb.SCDate>='''+STDateStr+''' and scbb.SCDate<='''+EDDateStr+'''    ');
     SQL.Add(' group by Year(scbb.SCDate),month(scbb.SCDate),BDepartment.GSBH ');
     //當月協助生產
     SQL.Add(' Union All ');
     SQL.Add(' select  (Cast(Year(scbb.SCDate) as Varchar)+''/''+Cast(replace(STR(month(scbb.SCDate),2),'' '',''0'') as Varchar)) as MD,BDepartment.GSBH,convert(int,sum(scbbs.Qty)) as Qty,'''+ItemArray[Langi][6]+''' as SB');
     SQL.Add(' from SCBBS');
     SQL.Add(' left join scbb on scbb.proNo = Scbbs.proNo');
     SQL.Add(' left join DDZL on scbbs.SCBH = DDZL.DDBH ');
     SQL.Add(' left join BDepartment on BDepartment.ID=scbb.DepNO ');
     SQL.Add(' where  scbbs.GXLB=''A'' and scbb.SCDate>='''+STDateStr+''' and scbb.SCDate<='''+EDDateStr+'''   and BDepartment.GSBH<>DDZL.GSBH ');
     SQL.Add(' group by Year(scbb.SCDate),month(scbb.SCDate),BDepartment.GSBH ');
     //
     SQL.Add(') MonDQty order by MD');
     //資料數字加總
     SQL.Add('insert into #MonDQty ');
     SQL.Add('select ''ZTotal'' as MD,#MonDQty.GSBH,sum(Qty) as Qty,#MonDQty.SB ');
     SQL.Add('from #MonDQty ');
     SQL.Add('group by #MonDQty.GSBH,#MonDQty.SB ');
     //funcObj.WriteErrorLog(sql.Text);
     ExecSQL();
  end;
  //
  with tmpQry do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select * from #MonDQty '+GSBHFilter+'order by MD');
    Active:=true;
  end;
  //
  MDStr:='';

  with MonQry do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select MonDQty.GSBH ,MonDQty.SB  ');
    //產生月份欄位列表
    while not tmpQry.Eof do
    begin
      if MDStr<>tmpQry.fieldByName('MD').AsString then
      begin
         SQL.Add('  ,sum(case  when MD='''+tmpQry.fieldByName('MD').AsString+''' ');
         SQL.Add('   then Qty else 0 end) as '''+tmpQry.fieldByName('MD').AsString+''' ');
         MDStr:=tmpQry.fieldByName('MD').AsString;
      end;
      tmpQry.Next;
    end;
    SQL.Add('from  (select #MonDQty.* from #MonDQty '+GSBHFilter);
    //過濾廠區
    if (GSBHCombo.Text<>'ALL') then
       GSBHFilter:='	and #MonDQty.GSBH='''+GSBHCombo.Text+''' '
    else
       GSBHFilter:='';
    //幫他廠生產率
    SQL.Add('     union all ');
    SQL.Add('     select SCBZCL.MD,SCBZCL.GSBH,');
    SQL.Add('             case when isnull(SCBZCL.Qty,0)<>0 then convert(int,convert(float,isnull(SCBBS.Qty,0))/convert(float,isnull(SCBZCL.Qty,0))*100) end Qty,'''+ItemArray[Langi][7]+''' as SB ');
    SQL.Add('     from (select * from #MonDQty where #MonDQty.SB like ''%'+ItemArray[Langi][5]+'%'' '+GSBHFilter+'  ) SCBZCL ');
    SQL.Add('     left join (select * from #MonDQty where #MonDQty.SB like ''%'+ItemArray[Langi][6]+'%'' '+GSBHFilter+'  ) SCBBS ');
    SQL.Add('          on SCBZCL.GSBH=SCBBS.GSBH  and SCBZCL.MD=SCBBS.MD ');
    SQL.Add(') MonDQty');
    SQL.Add('group by   MonDQty.GSBH ,MonDQty.SB ');
    SQL.Add('order by   MonDQty.GSBH ,MonDQty.SB ');
    //funcObj.WriteErrorLog(sql.Text);
    Active:=true;
  end;

  //
  if MonQry.RecordCount>0 then
  begin
    with MonDBGridEh do
    begin
      columns[0].Width:=60;
      columns[0].title.caption:='廠區|GSBH';
      columns[1].Width:=120;
      columns[1].title.caption:='項目|SB';
      for i:=2 to MonQry.FieldCount-2 do
          columns[i].title.caption:='月份|'+MonQry.Fields[i].FieldName;
      columns[i].title.caption:='小計|Total';
      columns[i].font.style:=[fsbold];
    end;
  end;


end;
//Converse 顯示依BuyNo
procedure TMonthOrderQty.ShowBuyOrderQty();
var STM,EDM:string;
begin
  //開始年月和結束年月
  STM:=STYea.Text+STMon.Text;
  EDM:=EDYea.Text+EDMon.Text;
  //
  with MonQry do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select Substring(BuyNO,1,6) ,Sum(Pairs) from  DDZL');
    SQL.Add(' where   BuyNO is not null and DDBH like ''Y%'' and Substring(BuyNO,1,6)>='''+STM+''' and Substring(BuyNO,1,6)<='''+EDM+''' ');
    SQL.Add(' Group by Substring(BuyNO,1,6) order by Substring(BuyNO,1,6)');
    //funcObj.WriteErrorLog(sql.Text);
    Active:=true;
  end;
  with MonDBGridEh do
  begin
    columns[0].Width:=60;
    columns[0].title.caption:='BUY別|BUYNO';
    columns[1].Width:=75;
    columns[1].title.caption:='訂單數量|Qty';

  end;
end;
//=====================
procedure TMonthOrderQty.MonDBGridEhDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  //依月份顯示訂單
  if (ReportType=1) then
  begin
    if trim(MonQry.FieldByName('SB').value)=ItemArray[Langi][6] then
    begin
      MonDBGridEh.canvas.font.Color:=clblue;
      MonDBGridEh.DefaultDrawColumnCell(Rect,DataCol,Column, State);
    end;

    if trim(MonQry.FieldByName('SB').value)=ItemArray[Langi][7] then
    begin
      MonDBGridEh.canvas.font.Color:=clred;
      MonDBGridEh.DefaultDrawColumnCell(Rect,DataCol,Column, State);
      MonDBGridEh.canvas.Font.Style:=[fsBold];
      MonDBGridEh.DefaultDrawColumnCell(Rect,DataCol,Column, State);
    end;
    //
    if trim(MonQry.FieldByName('SB').value)=ItemArray[Langi][4] then
    begin
      MonDBGridEh.canvas.font.Color:=clred;
      MonDBGridEh.DefaultDrawColumnCell(Rect,DataCol,Column, State);

    end;
    //


  end;
end;

procedure TMonthOrderQty.FormCreate(Sender: TObject);
var i,Yi,Mi,Di:word;
begin
  //初始化時間日期
  DecodeDate(Date(),Yi,Mi,Di);
  for i:=0 to STYea.Items.Count-1 do
  begin
    if  strtoint(STYea.Items[i])=Yi then
    begin
      STYea.ItemIndex:=i;
      EDYea.ItemIndex:=i;
      break;
    end;
  end;
  for i:=0 to EDMon.Items.Count-1 do
  begin
    if  strtoint(EDMon.Items[i])=Mi then
    begin
      EDMon.ItemIndex:=i;
      break;
    end;
  end;
  //中文
  ItemArray[0][0]:='1.當月訂單';
  ItemArray[0][1]:='2.計畫產能';
  ItemArray[0][2]:='3.當月訂單當月生產';
  ItemArray[0][3]:='4.當月訂單提前生產';
  ItemArray[0][4]:='5.當月訂單欠數';
  ItemArray[0][5]:='6.當月實際產能';
  ItemArray[0][6]:='7.幫他廠訂單生產';
  ItemArray[0][7]:='8.幫他廠生產率%';
  //英文
  ItemArray[1][0]:='1.Orders Month';
  ItemArray[1][1]:='2.Planned Proudction Qty';
  ItemArray[1][2]:='3.Production Qty Export thih Month';
  ItemArray[1][3]:='4.In Advacne Production Qty Export Thih Month';
  ItemArray[1][4]:='5.Orders Month Lack Qty';
  ItemArray[1][5]:='6.Actual Proudction Qty';
  ItemArray[1][6]:='7.Prouction Qty other Factory';
  ItemArray[1][7]:='8.Prouction Qty other Factory Rate%';
  //廠區
  if main.sGSBH='VA12' then
  begin
    BuyNoCK.Visible:=true;
  end;
end;

procedure TMonthOrderQty.GSBHComboChange(Sender: TObject);
begin
  if GSBHCOmbo.Text='VA12' then BuyNoCK.Visible:=true else BuyNoCK.Visible:=false;
end;

procedure TMonthOrderQty.bbt6Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin
    if  MonQry.active  then
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
          for   i:=0   to   MonQry.fieldcount-1   do
            begin
                eclApp.Cells(1,i+1):=MonQry.fields[i].FieldName;
            end;

          MonQry.First;
          j:=2;
          while   not   MonQry.Eof   do
            begin
              for   i:=0   to  MonQry.fieldcount-1  do
              begin
                eclApp.Cells(j,i+1):=MonQry.Fields[i].Value;
              end;
            MonQry.Next;
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

end.
