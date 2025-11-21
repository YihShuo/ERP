unit ExtraMat_Ord1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBTables, DB, Grids, DBGrids, StdCtrls, DBCtrls, Mask, ExtCtrls,
  math,dateutils;

type
  TExtraMat_Ord = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Button1: TButton;
    Edit1: TEdit;
    CBX2: TComboBox;
    CBX3: TComboBox;
    Edit3: TEdit;
    DBEdit1: TDBEdit;
    DBMemo1: TDBMemo;
    CB1: TCheckBox;
    DBGrid1: TDBGrid;
    Query2: TQuery;
    DS1: TDataSource;
    Query1: TQuery;
    UpdateSQL1: TUpdateSQL;
    Edit2: TEdit;
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
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure Button2Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
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
var i:integer;
begin
{with query2 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select kfdh from kfzl order by kfdh');
    active:=true;
    CBX1.Items.Clear;
    for i:=1 to recordcount do
      begin
        CBX1.Items.Add(fieldbyname('kfdh').asstring);
        next;
      end;
    CBX1.Text:='P';
  end; }
edit2.text:=ExtraMaterial.JGDet.fieldbyname('CLBH').value;
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
    sql.add('select ZLZLS2.ZLBH,isnull(sum(ZLZLS2.CLSL),0) as CLSL,');
    sql.add('DDZL.XieXing,DDZL.SheHao,XXZL.Article,XXZL.XieMing,');
    sql.add('isnull(JGZL.okQty,0) as okQty,isnull(JGZL.oldCLSL,0) as oldCLSL');
    sql.add('from ZLZLS2');
    sql.add('left join DDZL on DDZL.ZLBH=ZLZLS2.ZLBH');
    sql.add('left join ZLZL on ZLZL.ZLBH=ZLZLS2.ZLBH');

    sql.add('left join (select JGZLSS.CLBH,JGZLSS.ZLBH,isnull(sum(JGZLSS.Qty),0) as okQty,isnull(max(JGZLSS.CLSL),0) as oldCLSL ');
    sql.add('           from JGZLSS ');
    sql.add('           left join DDZL on DDZL.ZLBH=JGZLSS.ZLBH');  
    sql.add('           left join KFZL on KFDH=DDZl.KHBH ');
    sql.Add('           left join XXZL on XXZL.XieXing=DDZL.XieXing and XXZL.SheHao=DDZL.SheHao');
    sql.add('           where convert(smalldatetime,convert(varchar,DDZL.ShipDate,111)) between ');
    sql.add('           '''+formatdatetime('YYYY/MM/DD',sdate)+''''+' and '+''''+formatdatetime('YYYY/MM/DD',edate)+'''');
    sql.add('           and KFZL.KFJC like '+''''+'%'+edit4.text+'%'+'''');
    sql.add('           and JGZLSS.ZLBH like '+''''+edit1.Text+'%'+'''');
    sql.add('           and XXZL.XieMing like '+''''+'%'+edit3.text+'%'+'''');
    sql.add('           and JGZLSS.CLBH='+''''+edit2.Text+'''');
    sql.add('           and DDZL.GSBH='+''''+main.edit2.text+'''');
    sql.add('           and exists(select SCZL.SCBH from SCZL where SCZL.ZLBH=DDZL.ZLBH )');
    sql.add('           group by  JGZLSS.CLBH,JGZLSS.ZLBH');
    sql.add('           ) JGZL on JGZL.ZLBH=ZLZLS2.ZLBH and JGZL.CLBH=ZLZLS2.CLBH');

    sql.Add('left join XXZL on XXZL.XieXing=DDZL.XieXing and XXZL.SheHao=DDZL.SheHao');
    sql.add('left join KFZL on KFDH=DDZl.KHBH ');
    sql.add('where convert(smalldatetime,convert(varchar,DDZL.ShipDate,111)) between ');
    sql.add(''''+formatdatetime('YYYY/MM/DD',sdate)+''''+' and '+''''+formatdatetime('YYYY/MM/DD',edate)+'''');
    sql.add('and KFZL.KFJC like '+''''+'%'+edit4.text+'%'+'''');
    sql.add('and ZLZLS2.ZLBH like '+''''+edit1.Text+'%'+'''');
    sql.add('and XXZL.XieMing like '+''''+'%'+edit3.text+'%'+'''');
    sql.add('and ZLZLS2.CLBH='+''''+edit2.Text+'''');
    sql.add('and ZLZLS2.CLSL<>0');
    //sql.add('and DDZL.DDZT='+''''+'Y'+'''');
    sql.add('and DDZL.GSBH='+''''+main.edit2.text+'''');
    sql.add('and exists(select SCZL.SCBH from SCZL where SCZL.ZLBH=DDZL.ZLBH )');
    sql.add('group by ZLZLS2.ZLBH,ZLZLS2.ZMLB,JGZL.okQty,JGZL.oldCLSL');
    sql.add(',DDZL.XieXing,DDZL.SheHao,XXZL.Article,XXZL.XieMing') ;
    if CB1.Checked then
      begin
        sql.add('having isnull(sum(ZLZLS2.CLSL),0)>isnull(okQty,0)');
      end;
     sql.add('order by ZLZLS2.ZLBH');

    active:=true;
  end;

end;

procedure TExtraMat_Ord.DBGrid1DblClick(Sender: TObject);
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
      end
      else
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

procedure TExtraMat_Ord.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
  DBGrid1dblclick(nil);
end;

procedure TExtraMat_Ord.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
end;

procedure TExtraMat_Ord.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
  CBX2.SetFocus;
end;

procedure TExtraMat_Ord.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
if query1.FieldByName('CLSL').value<=query1.FieldByName('okQty').value then
  begin
    dbgrid1.canvas.font.color:=clred;
    dbgrid1.defaultdrawcolumncell(rect,datacol,column,state);
  end;

if (query1.FieldByName('okQty').value>0) and (query1.FieldByName('CLSL').value>query1.FieldByName('okQty').value) then
  begin
    dbgrid1.canvas.font.color:=clyellow;
    dbgrid1.defaultdrawcolumncell(rect,datacol,column,state);
  end;
end;

procedure TExtraMat_Ord.Button2Click(Sender: TObject);
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
query1.disablecontrols;
bm:=query1.getbookmark;
bookmarklist:=dbgrid1.selectedrows;
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
           // fieldbyname('XXCC').value:=query1.fieldbyname('XXCC').value;
            if  query1.fieldbyname('CLSL').value>=query1.fieldbyname('okQty').value then
              begin
                fieldbyname('Qty').value:=trunc((query1.fieldbyname('CLSL').value-query1.fieldbyname('okQty').value)*10+0.5)/10;
              end
              else
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

end.
