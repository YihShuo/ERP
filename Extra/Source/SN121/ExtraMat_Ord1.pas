unit ExtraMat_Ord1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBTables, DB, Grids, DBGrids, StdCtrls, DBCtrls, Mask, ExtCtrls,
  math,dateutils,fununit, GridsEh, DBGridEh;

type
  TExtraMat_Ord = class(TForm)
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
    CB1: TCheckBox;
    DS1: TDataSource;
    Query1: TQuery;
    UpdateSQL1: TUpdateSQL;
    Query1ZLBH: TStringField;
    Query1XieXing: TStringField;
    Query1Shehao: TStringField;
    Query1Article: TStringField;
    Query1XieMing: TStringField;
    Query1CLSL: TFloatField;
    Query1okQty: TFloatField;
    Query1oldCLSL: TFloatField;
    Button2: TButton;
    Edit4: TEdit;
    Query1buyno: TStringField;
    Qtemp: TQuery;
    BuyNoEdit: TEdit;
    CBX2: TComboBox;
    Label3: TLabel;
    CBX3: TComboBox;
    RB1: TRadioButton;
    RB2: TRadioButton;
    DBGridEh1: TDBGridEh;
    Label4: TLabel;
    Edit2: TEdit;
    Label8: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure Button2Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure DBGridEh1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGridEh1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ExtraMat_Ord: TExtraMat_Ord;
  sdate,edate:Tdate;

implementation

uses ExtraMaterial1, main1;

{$R *.dfm}

procedure TExtraMat_Ord.FormCreate(Sender: TObject);
var
  myYear, myMonth, myDay : Word;
  i:integer;
begin
  CBX2.Items.Clear;
  with Qtemp do
  begin
    active:=false;
    sql.Clear;
    sql.add('select year(getdate())-20 as Oldyear,year(getdate())+20 as Newyear');
    active:=true;
    for i:=QTemp.fieldbyname('Oldyear').value to  QTemp.fieldbyname('Newyear').value  do
    begin
      CBX2.Items.Add(inttostr(i));
      next;
    end;
    active:=false;
  end;
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
 // BuyNoEdit.Text:=FormatDateTime('YYYYMM',Date());
  //edit2.text:=ExtraMaterial.JGDet.fieldbyname('CLBH').value;
end;

procedure TExtraMat_Ord.Button1Click(Sender: TObject);
var y,m:word;
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
    sql.add('select ZLZLS2.ZLBH,ddzl.buyno ');
    sql.add(',isnull(sum(case when DDZL.DDZT<>''C'' and isnull(SCZL.IsKCLLS,'''')<>''N'' then ZLZLS2.CLSL else 0 end),0) as CLSL,');
    sql.add('DDZL.XieXing,DDZL.SheHao,XXZL.Article,XXZL.XieMing,');
    sql.add('isnull(JGZL.okQty,0) as okQty,isnull(JGZL.oldCLSL,0) as oldCLSL');
    sql.add('from ZLZLS2');
    sql.add('left join DDZL on DDZL.DDBH=ZLZLS2.ZLBH');
    sql.add('left join ZLZL on ZLZL.ZLBH=ZLZLS2.ZLBH');
    sql.add('left join SCZL on SCZL.SCBH=ZLZLS2.ZLBH');
    sql.add('left join (select JGZLSS.CLBH,JGZLSS.ZLBH,isnull(sum(JGZLSS.Qty),0) as okQty,isnull(max(JGZLSS.CLSL),0) as oldCLSL ');
    sql.add('           from JGZLSS ');
    sql.add('           left join DDZL on DDZL.DDBH=JGZLSS.ZLBH');
    sql.add('           left join KFZL on KFDH=DDZl.KHBH ');
    sql.Add('           left join XXZL on XXZL.XieXing=DDZL.XieXing and XXZL.SheHao=DDZL.SheHao');

    sql.add('           where KFZL.KFJC like '+''''+'%'+edit4.text+'%'+'''');

    if RB1.Checked=true then
    begin
       sql.add('        and convert(smalldatetime,convert(varchar,DDZL.ShipDate,111)) between ');
       sql.add('        '''+formatdatetime('YYYY/MM/DD',sdate)+''''+' and '+''''+formatdatetime('YYYY/MM/DD',edate)+'''');
    end else
       sql.add('        and DDZL.BUYNO like '+''''+'%'+BuyNoEdit.Text+'%'+'''');
    sql.add('           and JGZLSS.ZLBH like '+''''+edit1.Text+'%'+'''');
    sql.add('           and XXZL.XieMing like '+''''+'%'+edit3.text+'%'+'''');
    sql.add('           and XXZL.Article like '+''''+'%'+edit2.text+'%'+'''');
    sql.add('           and JGZLSS.CLBH=:CLBH ');
    sql.add('           and DDZL.GSBH='+''''+main.edit2.text+'''');
    sql.add('           and exists(select SCZL.SCBH from SCZL where SCZL.ZLBH=DDZL.DDBH )');
    sql.add('           group by  JGZLSS.CLBH,JGZLSS.ZLBH');
    sql.add('           ) JGZL on JGZL.ZLBH=ZLZLS2.ZLBH and JGZL.CLBH=ZLZLS2.CLBH');

    sql.Add('left join XXZL on XXZL.XieXing=DDZL.XieXing and XXZL.SheHao=DDZL.SheHao');
    sql.add('left join KFZL on KFDH=DDZl.KHBH ');
    sql.add('where 1=1 ');
    //20200708 lock ddzl.yn=5
    sql.Add('and DDZL.YN=''1'' ');    //20250228
    sql.add('and KFZL.KFJC like '+''''+'%'+edit4.text+'%'+'''');
    sql.add('and ZLZLS2.ZLBH like '+''''+edit1.Text+'%'+'''');
    sql.add('and XXZL.XieMing like '+''''+'%'+edit3.text+'%'+'''');
    sql.add('and XXZL.Article like '+''''+'%'+edit2.text+'%'+'''');
    if RB1.Checked=true then
    begin
       sql.add('and convert(smalldatetime,convert(varchar,DDZL.ShipDate,111)) between ');
       sql.add(''''+formatdatetime('YYYY/MM/DD',sdate)+''''+' and '+''''+formatdatetime('YYYY/MM/DD',edate)+'''');
    end else
       sql.add('and DDZL.BUYNO like '+''''+'%'+BuyNoEdit.Text+'%'+'''');
    sql.add('and ZLZLS2.CLBH=:CLBH ');
    sql.add('and ZLZLS2.CLSL<>0');
    //sql.add('and DDZL.DDZT='+''''+'Y'+'''');
    sql.add('and DDZL.GSBH='+''''+main.edit2.text+'''');
    sql.add('and exists(select SCZL.SCBH from SCZL where SCZL.ZLBH=DDZL.DDBH )');
    sql.add('group by ZLZLS2.ZLBH,ddzl.buyno,ZLZLS2.ZMLB,JGZL.okQty,JGZL.oldCLSL');
    sql.add(',DDZL.XieXing,DDZL.SheHao,XXZL.Article,XXZL.XieMing') ;
    if CB1.Checked then
    begin
        sql.add('having isnull(sum(ZLZLS2.CLSL),0)>isnull(okQty,0)');
    end;
    sql.add('order by ZLZLS2.ZLBH');
    //funcobj.WriteErrorLog(sql.Text);
    //showmessage (sql.Text);
    active:=true;
  end;

end;


procedure TExtraMat_Ord.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
 if key=#13 then
   Button1.Click;
end;

procedure TExtraMat_Ord.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
 if key=#13 then
   CBX2.SetFocus;
end;


procedure TExtraMat_Ord.Button2Click(Sender: TObject);
var bm:Tbookmark;
    i:integer;
    Qty:real;
    bookmarklist:tbookmarklisteh;
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
    query1.disablecontrols;
    bm:=query1.getbookmark;
    bookmarklist:=DBGridEh1.selectedrows;
    if bookmarklist.count>0 then
    begin
      try
        for i:=0 to bookmarklist.count-1 do
        begin
          query1.gotobookmark(pointer(bookmarklist[i]));
          with ExtraMaterial.JGS do
          begin
              edit;
              fieldbyname('ZLBH').value:=query1.fieldbyname('ZLBH').value;
              if  query1.fieldbyname('CLSL').value>=query1.fieldbyname('okQty').value then
              begin
                fieldbyname('Qty').value:=trunc((query1.fieldbyname('CLSL').value-query1.fieldbyname('okQty').value)*10+0.5)/10;
              end else
              begin
                fieldbyname('Qty').value:=0;
              end;
              fieldbyname('CLSL').value:=query1.fieldbyname('CLSL').value;
              insert;
          end;
          query1.edit;
          Query1.FieldByName('okQty').Value:=query1.fieldbyname('CLSL').value;
        end;
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

procedure TExtraMat_Ord.FormDestroy(Sender: TObject);
begin
  ExtraMat_Ord:=nil;
end;

procedure TExtraMat_Ord.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=Cafree;
end;

procedure TExtraMat_Ord.FormShow(Sender: TObject);
begin
  main.FormLanguage(Pointer(self),self.Name);
end;

procedure TExtraMat_Ord.DBGridEh1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if query1.FieldByName('CLSL').value<=query1.FieldByName('okQty').value then
  begin
    DBGridEh1.canvas.font.color:=clred;
    DBGridEh1.defaultdrawcolumncell(rect,datacol,column,state);
  end;

  if (query1.FieldByName('okQty').value>0) and (query1.FieldByName('CLSL').value>query1.FieldByName('okQty').value) then
  begin
    DBGridEh1.canvas.font.color:=clyellow;
    DBGridEh1.defaultdrawcolumncell(rect,datacol,column,state);
  end;
end;

procedure TExtraMat_Ord.DBGridEh1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    DBGridEh1dblclick(nil);
end;

procedure TExtraMat_Ord.DBGridEh1DblClick(Sender: TObject);
begin
  if (not query1.Active) then
  begin
    abort;
  end;
  if (Query1.recordcount<1) then
  begin
    abort;
  end;
  with ExtraMaterial.JGS do
  begin
    edit;
    fieldbyname('ZLBH').value:=query1.fieldbyname('ZLBH').value;
    if  query1.fieldbyname('CLSL').value>=query1.fieldbyname('okQty').value then
    begin
      fieldbyname('Qty').value:=trunc((query1.fieldbyname('CLSL').value-query1.fieldbyname('okQty').value)*10+0.5)/10;
    end else
    begin
      fieldbyname('Qty').value:=0;
    end;
    fieldbyname('CLSL').value:=query1.fieldbyname('CLSL').value;
    insert;
  end;
  query1.edit;
  Query1.FieldByName('okQty').Value:=query1.fieldbyname('CLSL').value;
  showmessage('Succeed.');
end;

end.
