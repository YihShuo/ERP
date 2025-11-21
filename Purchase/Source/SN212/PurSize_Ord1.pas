unit PurSize_Ord1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBTables, DB, Grids, DBGrids, StdCtrls, DBCtrls, Mask, ExtCtrls,
  dateutils,math;

type
  TPurSize_Ord = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Button1: TButton;
    Edit1: TEdit;
    Edit3: TEdit;
    DBEdit1: TDBEdit;
    DBMemo1: TDBMemo;
    DBGrid1: TDBGrid;
    Query2: TQuery;
    DS1: TDataSource;
    Query1: TQuery;
    Query1ZLBH: TStringField;
    Query1XXCC: TStringField;
    Query1XieXing: TStringField;
    Query1Shehao: TStringField;
    Query1Article: TStringField;
    Query1XieMing: TStringField;
    Query1CLSL: TFloatField;
    Query1okQty: TFloatField;
    Query1oldCLSL: TFloatField;
    UpdateSQL1: TUpdateSQL;
    Edit2: TEdit;
    CB1: TCheckBox;
    Button2: TButton;
    Query1UseStock: TCurrencyField;
    Query1BUYNO: TStringField;
    GroupBox1: TGroupBox;
    Label8: TLabel;
    CBX2: TComboBox;
    CBX3: TComboBox;
    BuyNoEdit: TEdit;
    RB1: TRadioButton;
    RadioButton1: TRadioButton;
    CB2: TCheckBox;
    BUYNOCK: TCheckBox;
    Label3: TLabel;
    Edit5: TEdit;
    Edit4: TEdit;
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
  PurSize_Ord: TPurSize_Ord;
  sdate,edate:Tdate;

implementation

uses PurSize1, main1, FunUnit;

{$R *.dfm}
//顯示日期
procedure TPurSize_Ord.InitCombo();
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
//
procedure TPurSize_Ord.FormCreate(Sender: TObject);
var i:integer;
begin

  InitCombo();
  edit2.text:=PurSize.CGDet.fieldbyname('CLBH').value;

end;

procedure TPurSize_Ord.Button1Click(Sender: TObject);
var y,m:word;
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
  //20150826 Add SubSQL
  DDZL_SubSQL:='and DDZL.GSBH='''+main.Edit2.Text+''' ';
  if RB1.Checked=true then
     DDZL_SubSQL:=DDZL_SubSQL+' and convert(smalldatetime,convert(varchar,DDZL.ShipDate,111))   between '''+formatdatetime('yyyy/MM/dd',sdate)+''' and '''+formatdatetime('yyyy/MM/dd',edate)+''' '
  else
     DDZL_SubSQL:=DDZL_SubSQL+' and DDZL.BUYNO like '''+BuyNoEdit.Text+'%'' ';
  //
  with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select DDZL.BUYNO,ZLZLS2.ZLBH,ZLZLS2.SIZE as XXCC,sum(ZLZLS2.CLSL) as CLSL,');
    sql.add('       DDZL.XieXing,DDZL.SheHao,DDZL.Article,XXZL.XieMing,isnull(CGKCUSES.Qty,0) as UseStock,');
    sql.add('       isnull(CGZL.okQty,0) as okQty,isnull(CGZL.oldCLSL,0) as oldCLSL ');
    sql.add('from ZLZLS2');
    sql.add('inner join DDZL on DDZL.DDBH=ZLZLS2.ZLBH '+DDZL_SubSQL);
    sql.Add('left join DDZlTW on DDZlTW.DDBH=DDZl.DDBH');
    sql.add('left join KFZL on KFDH=DDZl.KHBH ');
    sql.add('left join CGKCUSES on CGKCUSES.ZLBH=ZLZLS2.ZLBH and CGKCUSES.CLBH=ZLZLS2.CLBH and CGKCUSES.SIZE=ZLZLS2.SIZE and CGKCUSES.GSBH='''+main.Edit2.text+''' ');
    sql.Add('left join XXZL on XXZL.XieXing=DDZL.XieXing and XXZL.SheHao=DDZL.SheHao');
    sql.Add('left join (select CGZLSS.CLBH,CGZLSS.ZLBH,CGZLSS.XXCC,sum(CGZLSS.Qty) as okQty,');
    sql.Add('           max(CGZLSS.CLSL) as oldCLSL');
    sql.add('           from DDZL ');
    sql.add('           inner join CGZLSS on DDZL.DDBH=CGZLSS.ZLBH and CGZLSS.CLBH='''+edit2.Text+''' and CGZLSS.XXCC<>''ZZZZZZ'' ');
    sql.add('           left join KFZL on KFDH=DDZl.KHBH ');
    sql.Add('           left join XXZL on XXZL.XieXing=DDZL.XieXing and XXZL.SheHao=DDZL.SheHao');
    sql.add('           where ');
    //201508018 shipdate or BuyNo
    if RB1.Checked=true then
       SQL.Add(' convert(smalldatetime,convert(varchar,DDZL.ShipDate,111))   between '''+formatdatetime('yyyy/MM/dd',sdate)+''' and '''+formatdatetime('yyyy/MM/dd',edate)+''' ')
    else
       SQL.Add(' DDZL.BUYNO like '''+BuyNoEdit.Text+'%'' ');
    if edit5.text <> '' then
      sql.add('               and DDZL.Article like '''+edit5.Text+'%''');
    sql.add('                 and kfzl.kfjc like '''+'%'+edit4.Text+'%''');
    sql.add('                 and CGZLSS.ZLBH like '''+edit1.Text+'%''');
    sql.add('                 and XXZL.XieMing like '''+'%'+edit3.text+'%''');
    sql.add('                 and CGZLSS.CLBH='''+edit2.Text+'''');
    sql.add('                 and CGZLSS.XXCC<>'''+'ZZZZZZ'+'''');
    //sql.add('                 and DDZL.GSBH='+''''+main.Edit2.text+'''');
    sql.add('                 and exists(select SCZL.SCBH from SCZL where SCZL.ZLBH=CGZLSS.ZLBH )');
    sql.add('           group by  CGZLSS.CLBH,CGZLSS.ZLBH,CGZLSS.XXCC');
    sql.add(') CGZL on CGZL.CLBH=ZLZLS2.CLBH and CGZL.ZLBH=ZLZLS2.ZLBH and CGZL.XXCC=ZLZLS2.Size') ;
   // sql.add('order by  CGZLSS.ZLBH');

    sql.add('where ZLZLS2.ZMLB=''N'' ');
    //201508018 shipdate or BuyNo
    if RB1.Checked=true then
       SQL.Add('and convert(smalldatetime,convert(varchar,DDZL.ShipDate,111))   between '''+formatdatetime('yyyy/MM/dd',sdate)+''' and '''+formatdatetime('yyyy/MM/dd',edate)+''' ')
    else
       SQL.Add('     and DDZL.BUYNO like '''+BuyNoEdit.Text+'%'' ');
    if edit5.text <> '' then
      sql.add('    and DDZL.Article like '''+edit5.Text+'%''');
    sql.add('      and kfzl.kfjc like ''%'+edit4.Text+'%''');
    sql.add('      and ZLZLS2.ZLBH like '''+edit1.Text+'%''');
    sql.add('      and XXZL.XieMing like ''%'+edit3.text+'%''');
    sql.add('      and ZLZLS2.CLBH='''+edit2.Text+'''');
    sql.Add('      and ZLZLS2.SIZE<>''ZZZZZZ''') ;
    sql.add('      and ZLZLS2.CLSL<>0');
   // sql.add('      and DDZL.DDZT='+''''+'Y'+'''');
    sql.add('      and DDZL.GSBH='''+main.Edit2.text+'''');
    if CB2.Checked=false then
       sql.Add('   and DDZLTW.DDZT<>''C''');
    sql.add('      and exists(select SCZL.SCBH from SCZL where SCZL.ZLBH=ZLZLS2.ZLBH )');
    sql.add('group by DDZL.BUYNO,ZLZLS2.ZLBH,ZLZLS2.ZMLB,CGKCUSES.Qty');
    sql.add('         ,ZLZLS2.SIZE,DDZL.XieXing,DDZL.SheHao,DDZL.Article,XXZL.XieMing,CGZL.okQty,CGZL.oldCLSL') ;
    if CB1.Checked then
    begin
        sql.add('having isnull(sum(ZLZLS2.CLSL),0)>isnull(CGZL.okQty,0)+isnull(CGKCUSES.Qty,0) ');
    end;
    sql.add('order by DDZL.BUYNO,ZLZLS2.ZLBH');
    //funcObj.WriteErrorLog(sql.Text);
    active:=true;
  end;

end;

procedure TPurSize_Ord.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
end;

procedure TPurSize_Ord.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
  CBX2.SetFocus;
end;

procedure TPurSize_Ord.DBGrid1DblClick(Sender: TObject);
begin
  if (not query1.Active) then
  begin
    abort;
  end;
  if (Query1.recordcount<1) then
  begin
    abort;
  end;
  with PurSize.CGS do
  begin
    if  (BUYNOCK.Checked=true) and (query1.FieldByName('BuyNo').AsString <> pursize.DBEditBuyNo.Text)  and (pursize.DBEditBuyNo.Text<>'')  then  //For A12核對新增記錄buyno是否相同
    begin
      if pursize.DBEditBuyNo.Text<>'' then
      begin
        showmessage('BuyNo not same, cant insert!');
        abort;
      end;
    end else
    begin
      edit;
      fieldbyname('ZLBH').value:=query1.fieldbyname('ZLBH').value;
      fieldbyname('XXCC').value:=query1.fieldbyname('XXCC').value;
      if  query1.fieldbyname('CLSL').value>=query1.fieldbyname('okQty').value+query1.fieldbyname('UseStock').value then
      begin
        fieldbyname('Qty').value:=roundto(query1.fieldbyname('CLSL').value-query1.fieldbyname('okQty').value
                                     -query1.fieldbyname('UseStock').value,-1);
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
  end; // end with do
  query1.edit;
  Query1.FieldByName('okQty').Value:=query1.fieldbyname('CLSL').value-query1.fieldbyname('UseStock').value;
end;

procedure TPurSize_Ord.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if query1.FieldByName('CLSL').value<=query1.FieldByName('okQty').value+query1.fieldbyname('UseStock').value then
  begin
    dbgrid1.canvas.font.color:=clred;
    dbgrid1.defaultdrawcolumncell(rect,datacol,column,state);
  end;

  if ((query1.FieldByName('okQty').value>0) or (query1.fieldbyname('UseStock').value))
             and (query1.FieldByName('CLSL').value>query1.FieldByName('okQty').value+query1.fieldbyname('UseStock').value) then
  begin
    dbgrid1.canvas.font.color:=clLime;
    dbgrid1.defaultdrawcolumncell(rect,datacol,column,state);
  end;
end;

procedure TPurSize_Ord.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    DBGrid1dblclick(nil);
end;

procedure TPurSize_Ord.Button2Click(Sender: TObject);
var bm:Tbookmark;
    i:integer;
    Qty:real;
    bookmarklist:tbookmarklist;
begin
  if messagedlg('Do you really want to copy these record?',mtconfirmation,[mbYes,mbNo],0)=mrYes then
  begin
    Qty:=0;
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
          with PurSize.CGS do
          begin
            if  (BUYNOCK.Checked=true) and (query1.FieldByName('BuyNo').value <> pursize.DBEditBuyNo.Text)  and (pursize.DBEditBuyNo.Text<>'')  then  //For A12核對新增記錄buyno是否相同
            begin
              if pursize.DBEditBuyNo.Text<>'' then
              begin
                showmessage('BuyNo not same, cant insert!');
                abort;
              end;
            end else
            begin
              edit;
              fieldbyname('ZLBH').value:=query1.fieldbyname('ZLBH').value;
              fieldbyname('XXCC').value:=query1.fieldbyname('XXCC').value;
              if  query1.fieldbyname('CLSL').value>=query1.fieldbyname('okQty').value+query1.fieldbyname('UseStock').value then
                begin
                   fieldbyname('Qty').value:=roundto(query1.fieldbyname('CLSL').value-query1.fieldbyname('okQty').value
                                       -query1.fieldbyname('UseStock').value,-1);
                end
                else
                  begin
                    fieldbyname('Qty').value:=0;
                  end;
              fieldbyname('CLSL').value:=query1.fieldbyname('CLSL').value;
              fieldbyname('UseStock').value:=query1.fieldbyname('UseStock').value;
              insert;
            end;
            end; //end with do
          query1.edit;
          Query1.FieldByName('okQty').Value:=query1.fieldbyname('CLSL').value;
        end;  //end for loop
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

procedure TPurSize_Ord.FormDestroy(Sender: TObject);
begin
  PurSize_Ord:=nil;
end;

procedure TPurSize_Ord.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  query1.active:=false;
end;

procedure TPurSize_Ord.FormShow(Sender: TObject);
begin
  main.FormLanguage(Pointer(self),self.Name);
end;

end.
