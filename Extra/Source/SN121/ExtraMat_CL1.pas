unit ExtraMat_CL1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls,dateutils,
  GridsEh, DBGridEh,fununit;

type
  TExtraMat_CL = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    Edit2: TEdit;
    EDIT1: TEdit;
    Edit4: TEdit;
    DS1: TDataSource;
    Query1: TQuery;
    Query1CLBH: TStringField;
    Query1YWPM: TStringField;
    Query1DWBH: TStringField;
    Query1CQDH: TStringField;
    Query1CLSL: TFloatField;
    Query1okQty: TCurrencyField;
    Label5: TLabel;
    Edit5: TEdit;
    CB1: TCheckBox;
    Label6: TLabel;
    DBGridEh1: TDBGridEh;
    Qtemp: TQuery;
    RB1: TRadioButton;
    CBX2: TComboBox;
    CBX3: TComboBox;
    Label3: TLabel;
    RB2: TRadioButton;
    BuyNoEdit: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure EDIT1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure Edit4KeyPress(Sender: TObject; var Key: Char);
    procedure Edit5KeyPress(Sender: TObject; var Key: Char);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure DBGridEh1KeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ExtraMat_CL: TExtraMat_CL;
  sdate,edate:TDate;

implementation

uses ExtraMaterial1, main1;

{$R *.dfm}

procedure TExtraMat_CL.Button1Click(Sender: TObject);
var y,m:word;
ff:textfile;
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
    sql.add('select  ZLZLS2.CLBH,CLZL.YWPM,CLZL.DWBH,CLZL.CQDH,isnull(JGZL.okQty,0) as okQty');
    sql.add(',isnull(sum(case when DDZL.DDZT<>''C'' and isnull(SCZL.IsKCLLS,'''')<>''N'' then ZLZLS2.CLSL else 0 end),0) as CLSL');
    sql.add('from ZLZLS2');
    sql.add('left join (select JGZLSS.CLBH,sum(JGZLSS.Qty) as okQty from JGZLSS');
    sql.add('          left join CLZL on CLZL.CLDH=JGZLSS.CLBH');
    sql.add('          left join DDZl on DDZl.DDBH=JGZLSS.ZLBH');
    sql.add('          left join KFZL on KFZl.KFDH=DDZL.KHBH ');
    sql.add('          left join ZLZL on ZLZL.ZLBH=JGZLSS.ZLBH');
    sql.add('          where JGZLSS.CLBH like '+''''+edit1.Text+'%'+'''');
    sql.add('          and JGZLSS.ZLBH like '+''''+edit5.Text+'%'+'''');
    sql.add('          and CLZL.YWPM like '+''''+'%'+edit2.Text+'%'+'''');
    if RB1.Checked=true then
    begin
       sql.add('       and convert(smalldatetime,convert(varchar,DDZL.ShipDate,111)) between ');
       sql.add('       '''+formatdatetime('YYYY/MM/DD',sdate)+''''+' and '+''''+formatdatetime('YYYY/MM/DD',edate)+'''');
    end else
       sql.add('       and DDZL.BUYNO like '+''''+'%'+BuyNoEdit.Text+'%'+'''');
    sql.add('          and DDZL.GSBH='+''''+main.edit2.text+'''');
    sql.add('          and KFZL.KFJC like '+''''+'%'+edit4.Text+'%'+'''');
    sql.add('          and exists(select SCZL.SCBH from SCZL where SCZL.ZLBH=ZLZL.DDBH )');
    sql.add('          group by  JGZLSS.CLBH ) JGZL on JGZL.CLBh=ZLZLS2.CLBH');
    sql.add('left join SCZL on SCZL.SCBH=ZLZLS2.ZLBH');
    sql.add('left join CLZL on CLZL.CLDH=ZLZLs2.CLBH');
    sql.add('left join DDZl on DDZl.DDBH=ZLZLS2.ZLBH');   
    sql.add('left join KFZL on KFZl.KFDH=DDZL.KHBH ');
    sql.add('left join ZLZL on ZLZL.ZLBH=ZLZLS2.ZLBH');
    sql.add('where ZLZLS2.CLBH like '+''''+edit1.Text+'%'+'''');
    sql.add('and ZLZLS2.ZLBH like '+''''+edit5.Text+'%'+'''');
    sql.add('and CLZL.YWPM like '+''''+'%'+edit2.Text+'%'+'''');
    if RB1.Checked=true then
    begin
       sql.add('and convert(smalldatetime,convert(varchar,DDZL.ShipDate,111)) between ');
       sql.add(''''+formatdatetime('YYYY/MM/DD',sdate)+''''+' and '+''''+formatdatetime('YYYY/MM/DD',edate)+'''');
    end else
       sql.add('and DDZL.BUYNO like '+''''+'%'+BuyNoEdit.Text+'%'+'''');
    sql.add('and DDZL.GSBH='+''''+main.edit2.text+'''');   
    sql.add('and KFZL.KFJC like '+''''+'%'+edit4.Text+'%'+'''');
    sql.add('and exists(select SCZL.SCBH from SCZL where SCZL.ZLBH=ZLZL.ZLBH )');
    if not CB1.Checked then
      begin
        sql.add('and ZLZLS2.ZMLB='+''''+'Y'+'''');
      end;
    sql.add('group by ZLZLS2.CLBH,CLZL.YWPM,CLZL.DWBH,CLZL.CQDH,JGZL.okQty');
    sql.add('order by ZLZLS2.CLBH');
    //funcobj.WriteErrorLog(sql.Text);
    active:=true;
  end;

end;

procedure TExtraMat_CL.EDIT1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    edit2.SetFocus;
end;

procedure TExtraMat_CL.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    edit4.SetFocus;
end;

procedure TExtraMat_CL.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
 {
if key=#13 then
  edit4.SetFocus;    }
end;

procedure TExtraMat_CL.Edit4KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    edit5.SetFocus;
end;

procedure TExtraMat_CL.Edit5KeyPress(Sender: TObject; var Key: Char);
begin  
  if key=#13 then
    button1click(nil);
end;

procedure TExtraMat_CL.FormDestroy(Sender: TObject);
begin
  ExtraMat_CL:=nil;
end;

procedure TExtraMat_CL.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=Cafree;
end;

procedure TExtraMat_CL.FormCreate(Sender: TObject);
var
  myYear, myMonth, myDay : Word;
  i:integer;
begin
  //
  with Qtemp do
  begin
    active:=false;
    sql.Clear;
    sql.add('select year(getdate())-5 as Oldyear,year(getdate())+5 as Newyear');
    active:=true;
    for i:=QTemp.fieldbyname('Oldyear').value to  QTemp.fieldbyname('Newyear').value  do
    begin
      CBX2.Items.Add(inttostr(i));
      next;
    end;
    active:=false;
  end;

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
  //BuyNoEdit.Text:=FormatDateTime('YYYYMM',Date());
end;

procedure TExtraMat_CL.DBGridEh1DblClick(Sender: TObject);
begin
  if (not query1.Active) then
  begin
    abort;
  end;
  if (Query1.recordcount<1) then
  begin
    abort;
  end;
  with ExtraMaterial.JGDet do
  begin
    insert;
    fieldbyname('CLBH').value:=query1.fieldbyname('CLBH').value;
    fieldbyname('YWPM').value:=query1.fieldbyname('YWPM').value;
    fieldbyname('DWBH').value:=query1.fieldbyname('DWBH').value;
    post;
  end;
  showmessage('Succeed.');
end;

procedure TExtraMat_CL.DBGridEh1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
    if Query1.FieldByName('CLSL').value<=Query1.FieldByName('okQty').value then
  begin
    DBGridEh1.canvas.font.color:=clred;
    DBGridEh1.defaultdrawcolumncell(rect,datacol,column,state);
  end;
end;

procedure TExtraMat_CL.DBGridEh1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
  DBGridEh1dblclick(nil);
end;

procedure TExtraMat_CL.FormShow(Sender: TObject);
begin
  main.FormLanguage(Pointer(self),self.Name);
end;

end.
