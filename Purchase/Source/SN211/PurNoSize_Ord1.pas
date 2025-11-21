unit PurNoSize_Ord1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, DBTables, Grids, DBGrids, ExtCtrls, DBCtrls, Mask,
  math,dateutils;

type
  TPurNoSize_Ord = class(TForm)
    Panel1: TPanel;
    Button1: TButton;
    DBGrid1: TDBGrid;
    DS1: TDataSource;
    Query1: TQuery;
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Query2: TQuery;
    Label5: TLabel;
    Edit3: TEdit;
    Query1ZLBH: TStringField;
    Query1XieXing: TStringField;
    Query1Shehao: TStringField;
    Query1Article: TStringField;
    Query1XieMing: TStringField;
    Query1CLSL: TFloatField;
    Query1okQty: TFloatField;
    Query1oldCLSL: TFloatField;
    Label6: TLabel;
    DBEdit1: TDBEdit;
    Label7: TLabel;
    DBMemo1: TDBMemo;
    Edit2: TEdit;
    UpdateSQL1: TUpdateSQL;
    CB1: TCheckBox;
    Button2: TButton;
    Query1XXCC: TStringField;
    CB2: TCheckBox;
    Edit4: TEdit;
    Query1UseStock: TCurrencyField;
    Query1BuyNo: TStringField;
    Query1Surplus: TIntegerField;
    GroupBox1: TGroupBox;
    Label8: TLabel;
    CBX2: TComboBox;
    CBX3: TComboBox;
    BuyNoEdit: TEdit;
    RB1: TRadioButton;
    RadioButton1: TRadioButton;
    CB3: TCheckBox;
    BUYNOCK: TCheckBox;
    Label3: TLabel;
    Edit5: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure Button2Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    procedure InitCombo();
  public                           
    { Public declarations }
  end;

var
  PurNoSize_Ord: TPurNoSize_Ord;
  sdate,edate:Tdate;

implementation

uses PurNoSize1, main1, FunUnit;

{$R *.dfm}
//顯示日期
procedure TPurNoSize_Ord.InitCombo();
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
  BuyNoEdit.Text:=FormatDateTime('YYYYMM',Date());
end;

procedure TPurNoSize_Ord.FormCreate(Sender: TObject);
begin

  InitCombo();
  edit2.text:=PurNoSize.CGDet.fieldbyname('CLBH').value;

end;

procedure TPurNoSize_Ord.Button1Click(Sender: TObject);
var y,m:word;
    ff:textfile;
    DDZL_SubSQL:string;
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

  with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select ZLZLS.buyno as BuyNo,ZLZLS.ZLBH,ZLZLS.CLBH,ZLZLS.XXCC,ZLZLS.CLSL,ZLZLS.Surplus,');
    sql.add('       ZLZLS.XieXing,ZLZLS.SheHao,ZLZLS.Article,ZLZLS.XieMing,');
    sql.add('       isnull(CGZL.okQty,0) as okQty,isnull(CGZL.oldCLSL,0) oldCLSL,ZLZLS.UseStock');
    sql.add('from (select ddzl.buyno,ZLZLS2.ZLBH,ZLZLS2.CLBH,ZLZLS2.Size as XXCC,isnull(sum(ZLZLS2.CLSL),0) as CLSL,isnull(sum(ZLZLS2.Surplus),0) as Surplus,');
    sql.add('      DDZL.XieXing,DDZL.SheHao,XXZL.Article,XXZL.XieMing,isnull(CGKCUSE.Qty,0) as UseStock');
    sql.add('      from (');
    sql.add('         select ZLBH,BWBH,CLBH,ZMLB,SUM(CLSL) as CLSL,Sum(Surplus) as Surplus,max(userdate) as USERDATE,size ');
    sql.add('		      from (');
    sql.add('           select zlzls2.ZLBH,zlzls2.BWBH,zlzls2.CLBH,zlzls2.ZMLB,zlzls2.CLSL,0 as Surplus,zlzls2.USERDATE,SIZE');
    sql.add('           from DDZL');
    sql.add('           left join zlzls2 on DDZL.DDBH = zlzls2.ZLBH');
    sql.add('           where DDZL.GSBH='''+main.Edit2.text+'''');
    //201508018 shipdate or BuyNo
    if RB1.Checked=true then
       SQL.Add('          and convert(smalldatetime,convert(varchar,DDZL.ShipDate,111))   between '''+formatdatetime('yyyy/MM/dd',sdate)+''' and '''+formatdatetime('yyyy/MM/dd',edate)+''' ')
    else
       SQL.Add('          and DDZL.BUYNO like '''+BuyNoEdit.Text+'%'' ');
    //
    if edit1.text <> '' then
      sql.add('           and DDZL.DDBH like '''+edit1.Text+'%''');
    if edit1.text <> '' then
      sql.add('           and ZLZLS2.ZLBH like '''+edit1.Text+'%''');
    if edit5.text <> '' then
      sql.add('           and DDZL.Article like '''+edit5.Text+'%''');
    sql.add('           and ZLZLS2.CLBH='''+edit2.Text+'''');
    sql.Add('           and ZLZLS2.SIZE=''ZZZZZZ''') ;
    sql.add('           and ZLZLS2.CLSL<>0');
    sql.add('           and ZLZLS2.ZMLB=''N''');
    if CB2.Checked then
      sql.add('           and ZLZLS2.MJBH=''ZZZZZZZZZZ''');
    sql.add('           union all');
    sql.add('           select zlzls2.ZLBH,zlzls2.BWBH,zlzls2.CLBH,zlzls2.ZMLB,0 as CLSL,Sum(YWBZPO.Surplus*YWBZPO.CTS) as Surplus,max(YWBZPO.USERDATE) as USERDATE,''ZZZZZZ'' as size');
    sql.add('           from DDZL');
    sql.add('           left join YWDD on YWDD.YSBH=DDZL.DDBH ');
    sql.add('           left join YWBZPO on YWBZPO.DDBH = YWDD.DDBH ');
    sql.add('           left join (select DDBH,XH,MIN(DDCC)as MinCC,Max(DDCC)as MAXCC from YWBZPOS group by DDBH,XH)YWBZPOS on YWBZPOS.DDBH = YWBZPO.DDBH and YWBZPOS.XH = YWBZPO.XH ');
    sql.add('           left join XXZLS on XXZLS.XieXing = DDZL.XieXing and xxzls.SheHao = DDZL.SheHao and XXZLS.CLBH like ''H14%''');
    SQL.Add('                     and MINCC between XXZLS.CCQQ and XXZLS.CCQZ and MAXCC between XXZLS.CCQQ and XXZLS.CCQZ');
    sql.add('           left join zlzls2 on zlzls2.ZLBH = DDZL.DDBH and zlzls2.bwbh = xxzls.bwbh');
    sql.add('           where DDZL.GSBH='''+main.Edit2.text+'''');
    //201508018 shipdate or BuyNo
    if RB1.Checked=true then
       SQL.Add('          and convert(smalldatetime,convert(varchar,DDZL.ShipDate,111))   between '''+formatdatetime('yyyy/MM/dd',sdate)+''' and '''+formatdatetime('yyyy/MM/dd',edate)+''' ')
    else
       SQL.Add('          and DDZL.BUYNO like '''+BuyNoEdit.Text+'%'' ');
    //
    if edit1.Text <> '' then
      sql.add('           and DDZL.DDBH like '''+edit1.Text+'%''');
    if edit1.text <> '' then
      sql.add('           and ZLZLS2.ZLBH like '''+edit1.Text+'%''');
    if edit5.text <> '' then
      sql.add('           and DDZL.Article like '''+edit5.Text+'%''');
    sql.add('           and ZLZLS2.CLBH='''+edit2.Text+'''');
    sql.Add('           and ZLZLS2.SIZE=''ZZZZZZ''') ;
    sql.add('           and ZLZLS2.CLSL<>0');
    sql.add('           and ZLZLS2.ZMLB=''N''');
    if CB2.Checked then
      sql.add('           and ZLZLS2.MJBH=''ZZZZZZZZZZ''');
    sql.add('           group by zlzls2.ZLBH,zlzls2.BWBH,zlzls2.CLBH,zlzls2.ZMLB');
    sql.add('		      ) as zlzls2');
    sql.add('		      group by ZLBH,BWBH,CLBH,ZMLB,size');
    sql.add('      ) as ZLZLS2');
    sql.add('      left join DDZL on DDZL.DDBH=ZLZLS2.ZLBH');
    sql.add('      left join DDZlTW on DDZlTW.DDBH=DDZl.DDBH');
    sql.add('      left join KFZL on KFDH=DDZl.KHBH ');
    sql.add('      left join CGKCUSE on CGKCUSE.ZLBH=ZLZLS2.ZLBH and CGKCUSE.CLBH=ZLZLS2.CLBH  and CGKCUSE.GSBH='''+main.Edit2.text+''' ') ;
    sql.Add('      left join XXZL on XXZL.XieXing=DDZL.XieXing and XXZL.SheHao=DDZL.SheHao');
    sql.add('      where  DDZL.GSBH='''+main.Edit2.text+''' ');
    if CB3.Checked =false then
       SQL.Add('   and DDZLTW.DDZT<>''C''');
    //201508018 shipdate or BuyNo
    if RB1.Checked=true then
       SQL.Add('and convert(smalldatetime,convert(varchar,DDZL.ShipDate,111))   between '''+formatdatetime('yyyy/MM/dd',sdate)+''' and '''+formatdatetime('yyyy/MM/dd',edate)+''' ')
    else
       SQL.Add('and DDZL.BUYNO like '''+BuyNoEdit.Text+'%'' ');
    //
    if edit4.text <> '' then
      SQL.add('            and KFZL.KFJC like ''%'+edit4.text+'%''');
    if edit3.text <> '' then
      SQL.add('            and XXZL.XieMing like ''%'+edit3.text+'%''');
    sql.add('            and exists(select SCZL.SCBH from SCZL where SCZL.ZLBH=ZLZLS2.ZLBH )');
    sql.add('group by ddzl.buyno,ZLZLS2.ZLBH,ZLZLS2.CLBH,ZLZLS2.Size,ZLZLS2.ZMLB,CGKCUSE.Qty');
    sql.add(',DDZL.XieXing,DDZL.SheHao,XXZL.Article,XXZL.XieMing') ;
    sql.add(') ZLZLS ');
    sql.add('left join (');
    sql.add('           select CGZLSS.CLBH,CGZLSS.ZLBH,CGZLSS.XXCC,isnull(sum(CGZLSS.Qty),0) as okQty,isnull(max(CGZLSS.CLSL),0) as oldCLSL ');
    sql.add('           from DDZL ');
    sql.add('           inner join CGZLSS on DDZL.DDBH=CGZLSS.ZLBH and CGZLSS.CLBH='''+edit2.Text+''' and CGZLSS.XXCC=''ZZZZZZ'' ');
    sql.add('           left join KFZL on KFDH=DDZl.KHBH ');
    sql.Add('           left join XXZL on XXZL.XieXing=DDZL.XieXing and XXZL.SheHao=DDZL.SheHao');
    sql.add('           where  DDZL.GSBH='''+main.Edit2.text+'''');
    //201508018 shipdate or BuyNo
    if RB1.Checked=true then
       SQL.Add('and convert(smalldatetime,convert(varchar,DDZL.ShipDate,111))   between '''+formatdatetime('yyyy/MM/dd',sdate)+''' and '''+formatdatetime('yyyy/MM/dd',edate)+''' ')
    else
       SQL.Add('and DDZL.BUYNO like '''+BuyNoEdit.Text+'%'' ');
    //
    if edit1.Text <> '' then
      sql.add('           and DDZL.DDBH like '''+edit1.Text+'%''');
    if edit5.text <> '' then
      sql.add('           and DDZL.Article like '''+edit5.Text+'%''');
    if edit4.text <> '' then
      sql.add('           and KFZL.KFJC like ''%'+edit4.text+'%''');
    if edit3.text <> '' then
      sql.add('                 and XXZL.XieMing like ''%'+edit3.text+'%''');
    sql.add('           and exists(select SCZL.SCBH from SCZL where SCZL.ZLBH=CGZLSS.ZLBH )');
    sql.add('           group by  CGZLSS.CLBH,CGZLSS.ZLBH,CGZLSS.XXCC');
    sql.add(') CGZL on CGZL.CLBH=ZLZLS.CLBH and CGZL.ZLBH=ZLZLS.ZLBH and CGZL.XXCC=ZLZLS.XXCC') ;
    if CB1.Checked then
    begin
      sql.add('where isnull(ZLZLS.CLSL,0)>(isnull(CGZL.okQty,0)+ZLZLS.UseStock) ');
    end;
    sql.add('order by zlzls.buyno,ZLZLS.ZLBH');
    //funcObj.WriteErrorLog(sql.Text);
    active:=true;
  end;


end;

procedure TPurNoSize_Ord.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
  //CBX1.SetFocus;
end;

procedure TPurNoSize_Ord.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
  CBX2.SetFocus;
end;

procedure TPurNoSize_Ord.DBGrid1DblClick(Sender: TObject);
var dNeed:double;
begin
  if (not query1.Active) then
  begin
    abort;
  end;
  if (Query1.recordcount<1) then
  begin
    abort;
  end;
  dNeed:= query1.fieldbyname('CLSL').value+query1.fieldbyname('Surplus').value;
  with PurNoSize.CGS do
  begin
    if  (BUYNOCK.Checked=true) and (query1.FieldByName('BuyNo').value <> purnosize.DBEditBuyNo.Text) and (purnosize.DBEditBuyNo.Text<>'') then  //For A12核對新增記錄buyno是否相同
    begin
      if purnosize.DBEditBuyNo.Text<>'' then
      begin
        showmessage('BuyNo not same, cant insert!');
        abort;
      end;
    end else
    begin
      edit;
      fieldbyname('ZLBH').value:=query1.fieldbyname('ZLBH').value;
      fieldbyname('XXCC').value:=query1.fieldbyname('XXCC').value;
      if  dNeed>=query1.fieldbyname('okQty').value+query1.fieldbyname('UseStock').value then
      begin
        fieldbyname('Qty').value:=roundto(dNeed-
        query1.fieldbyname('okQty').value-query1.fieldbyname('UseStock').value,-1);
      end
      else
      begin
        fieldbyname('Qty').value:=0;
      end;
      fieldbyname('CLSL').value:=query1.fieldbyname('CLSL').value;
      fieldbyname('UseStock').value:=query1.fieldbyname('UseStock').value;
      insert;
      showmessage('Succeed.');
    end;
  end; //end with PurNoSize.CGS do
  query1.edit;
  Query1.FieldByName('okQty').Value:=dNeed-query1.fieldbyname('UseStock').value;
end;

procedure TPurNoSize_Ord.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var dNeed:double;
begin
  if query1.RecordCount = 0 then abort;

  dNeed:= query1.FieldByName('CLSL').value+ query1.FieldByName('Surplus').value;
  if dNeed<=query1.FieldByName('okQty').value+query1.fieldbyname('UseStock').value then
    begin
      dbgrid1.canvas.font.color:=clred;
      dbgrid1.defaultdrawcolumncell(rect,datacol,column,state);
    end;
  if ((query1.FieldByName('okQty').value>0) or (query1.fieldbyname('UseStock').value))
             and (dNeed>query1.FieldByName('okQty').value+query1.fieldbyname('UseStock').value) then
    begin
      dbgrid1.canvas.font.color:=clLime;
      dbgrid1.defaultdrawcolumncell(rect,datacol,column,state);
    end;
end;

procedure TPurNoSize_Ord.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
  DBGrid1dblclick(nil);
end;

procedure TPurNoSize_Ord.Button2Click(Sender: TObject);
var bm:Tbookmark;
    i:integer;
    bookmarklist:tbookmarklist;
    dNeed:double;
begin
  if messagedlg('Do you really want to copy these record?',mtconfirmation,[mbYes,mbNo],0)=mrYes then
  begin
    if (not query1.Active) then
    begin
      abort;
    end;
    if (Query1.recordcount<1) then
    begin
      abort;
    end;

    //with query1 do
   // begin
    query1.disablecontrols;
    bm:=query1.getbookmark;
    bookmarklist:=dbgrid1.selectedrows;
    if bookmarklist.count>0 then
    begin
      try
        for i:=0 to bookmarklist.count-1 do
        begin
          query1.gotobookmark(pointer(bookmarklist[i]));
          dNeed:= query1.fieldbyname('CLSL').value+query1.fieldbyname('Surplus').value;
          with PurNoSize.CGS do
          begin
            if  (BUYNOCK.Checked=true) and (query1.FieldByName('BuyNo').AsString <> purnosize.DBEditBuyNo.Text) and (purnosize.DBEditBuyNo.Text<>'')  then  //For A12核對新增記錄buyno是否相同
            begin
              if purnosize.DBEditBuyNo.Text<>'' then
              begin
                showmessage('BuyNo not same, cant insert!');
                abort;
              end;
            end else
            begin
              edit;
              fieldbyname('ZLBH').value:=query1.fieldbyname('ZLBH').value;
              fieldbyname('XXCC').value:=query1.fieldbyname('XXCC').value;
              if  dNeed>=query1.fieldbyname('okQty').value+query1.fieldbyname('UseStock').value then
              begin
                fieldbyname('Qty').value:=roundto(dNeed-query1.fieldbyname('okQty').value-query1.fieldbyname('UseStock').value,-1);
              end else
              begin
                fieldbyname('Qty').value:=0;
              end;
              fieldbyname('CLSL').value:=query1.fieldbyname('CLSL').value;
              fieldbyname('UseStock').value:=query1.fieldbyname('UseStock').value;
              insert;
            end;
          end; //end with PurNoSize.CGS do
          query1.edit;
          Query1.FieldByName('okQty').Value:=query1.fieldbyname('CLSL').value;

        end; //end for loop
      finally
        begin
          query1.gotobookmark(bm);
          query1.freebookmark(bm);
          query1.enablecontrols;
          showmessage('You have finish copy!');
        end;
      end;
    end;
  end;

end;

procedure TPurNoSize_Ord.FormDestroy(Sender: TObject);
begin
  PurNoSize_Ord:=nil;
end;

procedure TPurNoSize_Ord.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Query1.active:=false;
end;

procedure TPurNoSize_Ord.FormShow(Sender: TObject);
begin
  main.FormLanguage(Pointer(self),self.Name);
end;

end.
