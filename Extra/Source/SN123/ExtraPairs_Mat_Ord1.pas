unit ExtraPairs_Mat_Ord1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, DBCtrls, Mask, ExtCtrls, DB, DBTables, DateUtils,
  GridsEh, DBGridEh;

type
  TExtraPairs_Mat_Ord = class(TForm)
    Query1: TQuery;
    DS1: TDataSource;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label4: TLabel;
    Button1: TButton;
    Edit1: TEdit;
    YearCBX: TComboBox;
    MonthCBX: TComboBox;
    Edit3: TEdit;
    CB1: TCheckBox;
    Button2: TButton;
    Edit4: TEdit;
    Edit5: TEdit;
    Query1BUYNO: TStringField;
    Query1DDBH: TStringField;
    Query1XieXing: TStringField;
    Query1SheHao: TStringField;
    Query1ARTICLE: TStringField;
    Query1XieMing: TStringField;
    Query1Pairs: TIntegerField;
    Query1OkQty: TFloatField;
    Label6: TLabel;
    Edit2: TEdit;
    Label7: TLabel;
    Edit6: TEdit;
    ETDck: TCheckBox;
    UpdateSQL1: TUpdateSQL;
    DBGrid1: TDBGridEh;
    Query1ShipDate: TDateTimeField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure Button2Click(Sender: TObject);
    procedure Edit5KeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ExtraPairs_Mat_Ord: TExtraPairs_Mat_Ord;

implementation
  uses ExtraPairs_Material1, FunUnit, main1;
{$R *.dfm}

procedure TExtraPairs_Mat_Ord.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TExtraPairs_Mat_Ord.FormDestroy(Sender: TObject);
begin
  ExtraPairs_Mat_Ord:=nil;
end;

procedure TExtraPairs_Mat_Ord.Button1Click(Sender: TObject);
var y,m:word;
    sDate,eDate:Tdate;
begin
  if (YearCBX.text='')or (MonthCBX.text='')  then
  begin
    showmessage('You have to select the year and month first.');
    abort;
  end;
  y:=strtoint(YearCBX.Text);
  m:=strtoint(MonthCBX.Text);
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
  //
  with Query1 do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select DDZL.BUYNO,DDZL.DDBH,XXZL.XieXing,XXZL.SheHao,XXZL.ARTICLE,DDZL.ShipDate,XXZL.XieMing,XXZL.ARTICLE,DDZL.Pairs,IsNull(EXTRASS.OkQty,0) as OkQty ');
    SQL.Add('from DDZL ');
    SQL.Add('Left join XXZL on XXZL.XieXing=DDZL.XieXing and DDZL.SheHao=XXZL.SheHao ');
    SQL.Add('left join (select ZLBH,SUM(Qty) as OkQty from EXTRASS where CLBH='''+ExtraPairs_Material.JGDet.FieldByName('CLBH').AsString+''' ');
    SQL.Add('           and XieXing='''+ExtraPairs_Material.JGDet.FieldByName('XieXing').AsString+''' and SheHao='''+ExtraPairs_Material.JGDet.FieldByName('SheHao').AsString+''' Group by ZLBH) EXTRASS on EXTRASS.ZLBH=DDZL.DDBH  ');
    SQL.Add('where  DDZL.XieXing='''+ExtraPairs_Material.JGDet.FieldByName('XieXing').AsString+''' and DDZL.SheHao='''+ExtraPairs_Material.JGDet.FieldByName('SheHao').AsString+''' ');
    SQL.Add('     and DDZL.DDLB=''N'' and DDZL.DDZT=''Y'' ');
    if ETDck.Checked=true then
    begin
      sql.add('   and  convert(smalldatetime,convert(varchar,DDZL.ShipDate,111)) between ');
      sql.add(''''+formatdatetime('YYYY/MM/DD',sdate)+''''+' and '+''''+formatdatetime('YYYY/MM/DD',edate)+'''');
    end;
    if Edit1.Text<>'' then
      SQL.Add('  and DDZL.DDBH like '''+Edit1.Text+'%'' ');
    if Edit5.Text<>'' then
      SQL.Add('  and DDZL.BuyNo like '''+Edit5.Text+'%'' ');
    if Edit3.Text<>'' then
      SQL.Add('  and XXZL.Article like ''%'+Edit3.Text+'%'' ');
    if Edit6.Text<>'' then
      SQL.Add('  and XXZL.DAOMH like ''%'+Edit5.Text+'%'' ');
    if Edit2.Text<>'' then
      SQL.Add('  and XXZL.XieMing like ''%'+Edit2.Text+'%'' ');
    SQL.Add('Group by DDZL.BUYNO,DDZL.DDBH,XXZL.XieXing,XXZL.SheHao,XXZL.ARTICLE,DDZL.ShipDate,XXZL.XieMing,XXZL.ARTICLE,DDZL.Pairs,EXTRASS.OkQty  ');
    if CB1.Checked=true then
      SQL.Add('having DDZl.Pairs>IsNull(EXTRASS.OkQty,0) ');
      funcObj.WriteErrorLog(sql.Text);
    Active:=true;
  end;
  //
end;


procedure TExtraPairs_Mat_Ord.FormCreate(Sender: TObject);
var
  myYear, myMonth, myDay : Word;
  i:integer;
begin
  //
  DecodeDate(Date(), myYear, myMonth, myDay);
  for i:=0 to YearCBX.Items.Count-1 do
  begin
    if strtoint(YearCBX.Items[i])=myYear then
    begin
      YearCBX.ItemIndex:=i;
      break;
    end;
  end;
  for i:=0 to MonthCBX.Items.Count-1 do
  begin
    if strtoint(MonthCBX.Items[i])=myMonth then
    begin
      MonthCBX.ItemIndex:=i;
      break;
    end;
  end;
  //
end;



procedure TExtraPairs_Mat_Ord.DBGrid1DblClick(Sender: TObject);
begin
  //
  if (not query1.Active) then
  begin
    abort;
  end;
  if (Query1.recordcount<1) then
  begin
    abort;
  end;

  with ExtraPairs_Material.JGS do
  begin
    edit;
    fieldbyname('ZLBH').value:=query1.fieldbyname('DDBH').value;
    if  query1.fieldbyname('Pairs').value>=query1.fieldbyname('okQty').value then
    begin
      fieldbyname('Qty').value:=trunc(query1.fieldbyname('Pairs').value-query1.fieldbyname('okQty').value);
    end else
    begin
      fieldbyname('Qty').value:=0;
    end;
    fieldbyname('CLSL').value:=query1.fieldbyname('Pairs').value;
    insert;
  end;
  query1.edit;
  Query1.FieldByName('okQty').Value:=query1.fieldbyname('Pairs').value;
  showmessage('Succeed.');
end;

procedure TExtraPairs_Mat_Ord.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if query1.FieldByName('Pairs').value<=query1.FieldByName('okQty').value then
  begin
    DBGrid1.canvas.font.color:=clred;
    DBGrid1.defaultdrawcolumncell(rect,datacol,column,state);
  end;

  if (query1.FieldByName('okQty').value>0) and (query1.FieldByName('Pairs').value>query1.FieldByName('okQty').value) then
  begin
    DBGrid1.canvas.font.color:=clyellow;
    DBGrid1.defaultdrawcolumncell(rect,datacol,column,state);
  end;
end;

procedure TExtraPairs_Mat_Ord.Button2Click(Sender: TObject);
var bm:Tbookmark;
    i:integer;
    Qty:real;
    bookmarklist:TbookmarklistEh;
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
    bookmarklist:=DBGrid1.selectedrows;
    if bookmarklist.count>0 then
    begin
      try
        for i:=0 to bookmarklist.count-1 do
        begin
          query1.gotobookmark(pointer(bookmarklist[i]));
          with ExtraPairs_Material.JGS do
          begin
              edit;
              fieldbyname('ZLBH').value:=query1.fieldbyname('DDBH').value;
              if  query1.fieldbyname('Pairs').value>=query1.fieldbyname('okQty').value then
              begin
                fieldbyname('Qty').value:=trunc(query1.fieldbyname('Pairs').value-query1.fieldbyname('okQty').value);
              end else
              begin
                fieldbyname('Qty').value:=0;
              end;
              fieldbyname('CLSL').value:=query1.fieldbyname('Pairs').value;
              insert;
          end;
          query1.edit;
          Query1.FieldByName('okQty').Value:=query1.fieldbyname('Pairs').value;
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

procedure TExtraPairs_Mat_Ord.Edit5KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=Char(VK_RETURN) then Button1.Click;
end;

procedure TExtraPairs_Mat_Ord.FormShow(Sender: TObject);
begin
  main.FormLanguage(Pointer(self),self.Name);
end;

end.
