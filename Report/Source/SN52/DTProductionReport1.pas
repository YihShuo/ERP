unit DTProductionReport1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ComCtrls, ExtCtrls,ComObj;

type
  TDTProductionReport = class(TForm)
    gdMain: TDBGridEh;
    dsMain: TDataSource;
    qrMain: TQuery;
    pnQuery: TPanel;
    cbKind: TComboBox;
    dtpPre: TDateTimePicker;
    bnQuery: TButton;
    bnExcel: TButton;
    lbKind: TLabel;
    lbDate: TLabel;
    cbRotating: TCheckBox;
    lbRotating: TLabel;
    dtpPost: TDateTimePicker;
    Label1: TLabel;
    procedure bnQueryClick(Sender: TObject);
    procedure bnExcelClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cbKindChange(Sender: TObject);
    procedure gdMainDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);

  private
    aDiff:array of boolean;
  public
    { Public declarations }
  end;

type
  TArrayD = array of double;

var
  DTProductionReport: TDTProductionReport;
  function CopyArrayD(const a:array of double):TArrayD;

implementation

{$R *.dfm}

procedure TDTProductionReport.bnQueryClick(Sender: TObject);
var
  sPre,sPost,sDDBH,sRY,sCLMC,sCLMC2:string;
  i,iMax:integer;
  aColW:TArrayD;
  slCaption:TStringList;
  bColor:boolean;
const
  //設定三種查詢下的欄位名 by star
  sCaptionR:string='row,單位|Department,RY,SKU#,LY斬刀|DAOMH,迴轉|Rotating,指令數量|Pairs,當期完成量|C.Finished,當期欠數|C.Requirement,總完成量|T.Finished,總欠數|T.Requirement,完成日期|Date,單價|裁斷+針車,單價|裁斷+中底,單價|印刷,單價|Price,金額|Subtotal,加工項目|Item';
  sCaptionS:string='row,單位|Department,RY,SKU#,LY斬刀|DAOMH,指令數量|Pairs,當期完成量|C.Finished,當期欠數|C.Requirement,總完成量|T.Finished,總欠數|T.Requirement,完成日期|Date,單價|裁斷+針車,單價|裁斷+中底,單價|印刷,單價|Price,金額|Subtotal,加工項目|Item';
  sCaptionS2:string='row,單位|Department,RY,SKU#,LY斬刀|DAOMH,訂單數量|Pairs,當期預補量|C.Finished,當期預補比例|C.Percentage,總預補量|T.Finished,總預補比例|T.Percentage,單價|裁斷+針車,單價|裁斷+中底,單價|印刷,單價|Price,金額|Subtotal,加工項目|Item';
  //設定三種查詢下的欄寬 by star
  aColWR:array[0..17] of double=(0,0.08,0.1,0.1,0.1,0.05,0.05,0.05,0.05,0.05,0.05,0.05,0.05,0.05,0.05,0.05,0.05,0.05);
  aColWS:array[0..16] of double=(0,0.08,0.1,0.1,0.1,0.05,0.05,0.05,0.05,0.05,0.05,0.05,0.05,0.05,0.05,0.05,0.05);
  aColWS2:array[0..15] of double=(0,0.08,0.1,0.1,0.1,0.05,0.05,0.05,0.05,0.05,0.05,0.05,0.05,0.05,0.05,0.05);
begin
  slCaption:=TStringList.Create;
  slCaption.Delimiter:=',';
  sPre := FormatDateTime('yyyy/mm/dd',dtpPre.Date);
  sPost:= FormatDateTime('yyyy/mm/dd',dtpPost.Date);
  lbDate.Caption :=  sPre + '至' + sPost;
  qrMain.Active:=False;
  qrMain.SQL.Clear;
  if cbRotating.Checked then      //有區分迴轉數的查詢 by star
  begin
    aColW:=CopyArrayD(aColWR);
    slCaption.DelimitedText:=sCaptionR;
    lbRotating.Caption:='(區分迴轉數)';
    with qrMain.sql do
    begin
      add('select row_number() over(order by CCLD.DDBH,BDepartment.DepName) as row,BDepartment.DepName,CCLD.DDBH as RY,DDZL.ARTICLE as SKU,xxzl.DAOMH,CCLD.CSHJS,max(SMDD.Qty) as pairs,');
      add('SUM(CCLDS.Qty) as c_qty,');
      add('max(SMDD.Qty)-sum(CCLDS.Qty) as c_req,');
      add('qtysum.qty as t_qty,');
      add('ddzl.pairs-qtysum.qty as t_req,');
      add('case when max(SMDD.Qty)-sum(CCLDS.Qty) <=0 then CONVERT(varchar(10),MAX(qtysum.LastDate),111) else '''' end as fdate,');
      add(''''' as price2,'''' as price3,'''' as price4,'''' as price,'''' as subtotal,CCLD.CLMC');
      add('from CCLD');
      add('left join CCLDS on CCLD.CCLDNO = CCLDS.CCLDNO');
      add('left join DDZL on CCLD.DDBH = DDZL.DDBH');
      add('left join xxzl on DDZL.XieXing = xxzl.XieXing and DDZL.SheHao = xxzl.SheHao');
      add('left join BDepartment on BDepartment.ID = CCLD.LCBM');
      add('left join SMDD on SMDD.DDBH = DDZL.DDBH  + ''-'' + CCLD.CSHJS and SMDD.GXLB = ''A''');
      add('left join (');
      add(' select SUM(Qty) as qty,cclds.DDBH,CCLD.CLMC,MAX(CCLDS.USERDATE) as LastDate');
      add('	from CCLDS');
      add('	left join CCLD on CCLD.CCLDNO = CCLDS.CCLDNO ');
      add('	where CCLD.LB = 1 and DATEDIFF(MONTH, CCLDS.USERDATE, '''+sPre+''') <=3 and CCLDS.USERDATE <= '''+sPost+'''');
      add('	group by cclds.DDBH,CCLD.CLMC');
      add(') qtysum on qtysum.DDBH = CCLD.DDBH and qtysum.CLMC = CCLD.CLMC');
      add('where (CONVERT(varchar(10),CCLD.USERDATE,111) between '''+sPre+''' and '''+sPost+''') and CCLD.LB = 1');
      add('group by BDepartment.DepName,CCLD.DDBH,CCLD.CLMC,DDZL.ARTICLE,xxzl.DAOMH,CCLD.CSHJS,ddzl.pairs,qtysum.qty,qtysum.LastDate');
    end;
  end
  else
  begin
    lbRotating.Caption:='';
    with qrMain.SQL do
      begin
        if cbKind.ItemIndex = 0 then         // 正單的查詢 by star
          begin
            aColW:=CopyArrayD(aColWS);
            lbKind.Caption:='正單';
            slCaption.DelimitedText:=sCaptionS;
            add('select row_number() over(order by DDZL.DDBH,BDepartment.DepName) as row,BDepartment.DepName,DDZL.DDBH as RY,DDZL.ARTICLE as SKU,xxzl.DAOMH,DDZL.Pairs as pairs,');
            add('SUM(CCLDS.Qty) as c_qty,');
            add('DDZL.Pairs - sum(CCLDS.Qty) as c_req,');
            add('qtysum.qty as t_qty,');
            add('DDZL.Pairs - qtysum.qty as t_req,');
            add('case when DDZL.Pairs - qtysum.qty <=0 then CONVERT(varchar(10),qtysum.LastDate,111) else '''' end as fdate,');
            add(''''' as price2,'''' as price3,'''' as price4,'''' as price,'''' as subtotal,CCLD.CLMC');
            add('from CCLDS ');
            add('left join CCLD on CCLD.CCLDNO = CCLDS.CCLDNO');
            add('left join DDZL on CCLD.DDBH = DDZL.DDBH');
            add('left join xxzl on DDZL.XieXing = xxzl.XieXing and DDZL.SheHao = xxzl.SheHao');
            add('left join BDepartment on BDepartment.ID = CCLD.LCBM');
            add('left join (');
            add(' select SUM(Qty) as qty,cclds.DDBH,CCLD.CLMC,MAX(CCLDS.USERDATE) as LastDate');
            add('	from CCLDS');
            add('	left join CCLD on CCLD.CCLDNO = CCLDS.CCLDNO ');
            add('	where CCLD.LB = 1 and DATEDIFF(MONTH, CCLDS.USERDATE, '''+sPre+''') <=3 and CCLDS.USERDATE <= '''+sPost+'''');
            add('	group by cclds.DDBH,CCLD.CLMC');
            add(') qtysum on qtysum.DDBH = CCLD.DDBH and qtysum.CLMC = CCLD.CLMC');
            add('where (CONVERT(varchar(10),CCLDS.USERDATE,111) between '''+sPre+''' and '''+sPost+''') and CCLD.LB = 1');
            add('group by BDepartment.DepName,DDZL.DDBH,DDZL.pairs,CCLD.CLMC,DDZL.ARTICLE,xxzl.DAOMH,qtysum.qty,qtysum.LastDate');
          end
        else
          begin
            aColW:=CopyArrayD(aColWS2);               //預補單的查詢 by star
            lbKind.Caption:='預補單';
            slCaption.DelimitedText:=sCaptionS2;
            add('select row_number() over(order by DDZL.DDBH,BDepartment.DepName) as row,BDepartment.DepName,DDZL.DDBH as RY,DDZL.ARTICLE as SKU,xxzl.DAOMH,DDZL.Pairs as pairs,');
            add('SUM(CCLDS.Qty) as c_qty,');
            add('convert(varchar(10),cast(cast(SUM(CCLDS.Qty) as numeric(12,2))/ cast(DDZL.Pairs as numeric(12,2))*100 as numeric(12,2)))+''%'' as c_req,');
            add('qtysum.qty as t_qty,');
            add('convert(varchar(10),cast(cast(qtysum.qty as numeric(12,2))/ cast(DDZL.Pairs as numeric(12,2))*100 as numeric(12,2)))+''%'' as t_req,');
            add(''''' as price2,'''' as price3,'''' as price4,'''' as price,'''' as subtotal,CCLD.CLMC');
            add('from CCLDS');
            add('left join CCLD on CCLD.CCLDNO = CCLDS.CCLDNO');
            add('left join DDZL on CCLD.DDBH = DDZL.DDBH');
            add('left join xxzl on DDZL.XieXing = xxzl.XieXing and DDZL.SheHao = xxzl.SheHao');
            add('left join BDepartment on BDepartment.ID = CCLD.LCBM');
            add('left join (');
            add('	select SUM(Qty) as qty,cclds.DDBH,CCLD.CLMC');
            add(' from CCLDS');
            add('	left join CCLD on CCLD.CCLDNO = CCLDS.CCLDNO ');
            add('	where CCLD.LB = 2 and DATEDIFF(MONTH, CCLDS.USERDATE, '''+sPre+''') <=3 and CCLDS.USERDATE <= '''+sPost+'''');
            add(' group by cclds.DDBH,CCLD.CLMC');
            add(') qtysum on qtysum.DDBH = CCLD.DDBH and qtysum.CLMC = CCLD.CLMC');
            add('where (CONVERT(varchar(10),CCLDS.USERDATE,111) between '''+sPre+''' and '''+sPost+''') and CCLD.LB = 2');
            add('group by BDepartment.DepName,DDZL.DDBH,DDZL.pairs,CCLD.CLMC,DDZL.ARTICLE,xxzl.DAOMH,qtysum.qty');
          end;
      end;
  end;
  qrMain.SQL.add('order by RY,DepName');

  qrMain.Active:=True;
  if qrMain.RecordCount=0 then
    begin
      showmessage('No Record.');
      abort;
    end;
  iMax:=length(aColW)-1;
  for i:=0 to iMax do
    begin
      gdMain.Columns[i].Width:=round(self.Width*aColW[i]);
      gdMain.Columns[i].Title.Caption:=slCaption[i];
    end;

  aDiff:=nil;
  setLength(aDiff,qrMain.RecordCount);

  qrMain.First;
  bColor:=true;
  i:=0;

  while not qrmain.Eof do      //記錄那些列的RY是相同的 by star
    begin
      sRY:= qrmain.FieldByName('RY').AsString;
      sCLMC:=qrMain.fieldbyname('CLMC').asstring;

      bColor:= not bColor;

      if (sDDBH = sRY) and (sCLMC = sCLMC2) then
          bColor:= not bColor;

      aDiff[i]:=bColor;
      sDDBH:= sRY;
      sCLMC2:=sCLMC;

      qrMain.next;
      i:=i+1;
    end;

  qrMain.FieldByName('row').Visible:=false;

end;

procedure TDTProductionReport.bnExcelClick(Sender: TObject);
var
  eclApp,workBook:olevariant;
  i,j,k,iFields,j2,iTRqtId,iPairsId,iCQtyId,iTQtyId:Integer;
  slTitle:TStringList;
begin
  iTRqtId:=qrMain.fieldbyname('t_req').Index;   //記錄總欠數,當期欠數,總完成量,指令數的欄位位置 by star
  iCQtyId:=qrMain.fieldbyname('c_qty').Index;
  iTQtyId:=qrMain.fieldbyname('t_qty').Index;
  iPairsId:=qrMain.fieldbyname('Pairs').Index;
  iFields:= qrMain.FieldCount-1;
  if (qrMain.Active = False) or (qrMain.RecordCount = 0) then
  begin
    showmessage('No record.沒有記錄');
    exit;
  end;
  try
    eclApp:=CreateOleObject('Excel.Application');
    workBook:=CreateOleObject('Excel.Sheet');
    workBook:=eclApp.workbooks.Add;
    qrMain.First;
    j:=5;
    j2:=j;
    eclApp.Selection.Borders[1].LineStyle := 1;
    eclApp.Range[eclApp.Cells[1,1],eclApp.Cells[1,iFields+1]].merge;     //第一列,第二列合併在一起 by star
    eclApp.Range[eclApp.Cells[2,1],eclApp.Cells[2,iFields+1]].merge;
    eclApp.Cells[2,1].HorizontalAlignment := -4108;
    eclApp.Cells[2,1]:= lbDate.Caption + '同塔廠請款明細表(' + lbKind.Caption + ')' + lbRotating.Caption;
    for i:=1 to iFields do
      begin
        slTitle := TStringList.Create;    //設定欄位名 by star
        slTitle.Delimiter:='|';
        slTitle.DelimitedText:= gdMain.Columns[i-1].Title.Caption;
        eclApp.Cells[3,i]:= slTitle[0];
        if slTitle.Count>1 then eclApp.Cells[4,i]:= slTitle[1];

        slTitle.free;
      end;
    k:=0;

    while not qrMain.Eof do
      begin
        for i:=1 to iFields do eclApp.Cells[j,i]:=qrMain.Fields[i].Value;

        if (k <> 0) and (aDiff[k] <> aDiff[k-1]) then
           j2:=j;

        eclApp.Range[eclApp.Cells[j2,iTRqtId],eclApp.Cells[j,iTRqtId]].clear;   //若RY相同,則總欠數合併 by star
        eclApp.Range[eclApp.Cells[j2,iTRqtId],eclApp.Cells[j,iTRqtId]].merge;
        eclApp.Cells[j2,iTRqtId]:= qrMain.fieldbyname('t_req').Value;

        eclApp.Range[eclApp.Cells[j2,iTQtyId],eclApp.Cells[j,iTQtyId]].clear;   //若RY相同,則總產量合併 by star
        eclApp.Range[eclApp.Cells[j2,iTQtyId],eclApp.Cells[j,iTQtyId]].merge;
        eclApp.Cells[j2,iTQtyId]:= qrMain.fieldbyname('t_qty').Value;

        eclApp.Range[eclApp.Cells[j2,iPairsId],eclApp.Cells[j,iPairsId]].clear; //若RY相同,則指令數合併 by star
        eclApp.Range[eclApp.Cells[j2,iPairsId],eclApp.Cells[j,iPairsId]].merge;
        eclApp.Cells[j2,iPairsId]:= qrMain.fieldbyname('pairs').Value;

        if aDiff[k] then
          begin
            eclApp.Cells[j2,iTRqtId].interior.color:=$00FCCBCD;            //若RY相同,則上同一種顏色 by star
            eclApp.Cells[j2,iTQtyId].interior.color:=$00FCCBCD;
            eclApp.Cells[j2,iPairsId].interior.color:=$00FCCBCD;
            eclApp.Range[eclApp.Cells[j,1],eclApp.Cells[j,iFields]].interior.color:=$00FCCBCD;
          end;

        inc(j);
        inc(k);
        qrMain.Next;
      end;

    eclApp.Range[eclApp.Cells[3,1],eclApp.Cells[j,iFields]].Borders.weight:=2;
    eclApp.Range[eclApp.Cells[5,iFields-5],eclApp.Cells[j,iFields-5]].font.color:=clblue;
    eclApp.Range[eclApp.Cells[5,iFields-4],eclApp.Cells[j,iFields-4]].font.color:=clred;
    eclApp.Range[eclApp.Cells[1,1],eclApp.Cells[2,1]].font.color:=clblue;
    eclApp.Cells[j,iPairsId].formula := '=SUM(R5C' + inttostr(iPairsId) + ':R' + inttostr(j-1) + 'C' + inttostr(iPairsId) + ')';
    eclApp.Cells[j,iCQtyId].formula := '=SUM(R5C' + inttostr(iCQtyId) + ':R' + inttostr(j-1) + 'C' + inttostr(iCQtyId) + ')';
    if lbRotating.Caption='' then
      eclApp.Cells[j,iTQtyId].formula := '=SUM(R5C' + inttostr(iTQtyId) + ':R' + inttostr(j-1) + 'C' + inttostr(iTQtyId) + ')';
    if lbKind.Caption = '正單' then
      eclApp.Cells[j,iTRqtId].formula := '=SUM(R5C' + inttostr(iTRqtId) + ':R' + inttostr(j-1) + 'C' + inttostr(iTRqtId) + ')';
    eclApp.Cells[j,1]:='合計TC：';
    eclApp.Cells[j+1,1]:='審核：';
    eclApp.Cells[j+1,5]:='廠務主管：';
    eclApp.Cells[j+1,8]:='制表：';
    eclApp.Cells.entirecolumn.autofit;
    eclApp.Visible:=True;
    eclApp := Unassigned;
  except
    Application.MessageBox('沒有安裝Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
    Exit;

  end;

end;

procedure TDTProductionReport.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TDTProductionReport.FormDestroy(Sender: TObject);
begin
  DTProductionReport:=nil;
end;

procedure TDTProductionReport.FormCreate(Sender: TObject);
begin
  dtpPre.Date:= now;
  dtpPost.Date:= now;
end;

procedure TDTProductionReport.cbKindChange(Sender: TObject);
begin
  if cbKind.ItemIndex = 1 then
  begin
    cbRotating.Checked:=false;
    cbRotating.Visible:=false;
  end
  else
    cbRotating.Visible:=true;
end;

function CopyArrayD(const a:array of double):TArrayD;
var
  iMax,i:integer;
  aR:TArrayD;
begin
  iMax:=length(a);
  setlength(aR,iMax);
  for i:=0 to iMax-1 do
    aR[i]:=a[i];
  result:=aR;
end;

procedure TDTProductionReport.gdMainDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if aDiff[qrMain.fieldbyname('row').asinteger-1] then gdMain.canvas.Brush.Color:=$00FCCBCD;  //RY不一樣的話,就用不同顏色顯示 by star
  gdMain.Canvas.FillRect(Rect);
  gdMain.Canvas.TextOut(Rect.Left, Rect.Top, Column.Field.Text);

end;

end.
