unit CostOrderList_DD1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, StdCtrls, ExtCtrls, Grids, DBGrids,dateutils,math
  ,ehlibbde, GridsEh, DBGridEh, PrnDbgeh, Menus,comobj;

type
  TCostOrderList_DD = class(TForm)
    DBGrid1: TDBGridEh;
    Panel1: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    DS1: TDataSource;
    Query1: TQuery;
    Query1DDBH: TStringField;             
    Query1Qty: TIntegerField;
    Query1XieMing: TStringField;
    Query1okQty: TCurrencyField;
    Label4: TLabel;
    CBX2: TComboBox;
    Label6: TLabel;
    CBX3: TComboBox;
    Query1Article: TStringField;
    Query1USACC: TFloatField;
    Query1okACC: TCurrencyField;
    Query1IPrice: TFloatField;
    Query1GSBH: TStringField;
    Label3: TLabel;
    CB1: TComboBox;
    Query1YN: TStringField;
    UpdateSQL1: TUpdateSQL;
    Qtemp: TQuery;
    PopupMenu1: TPopupMenu;
    Print1: TMenuItem;
    Excel1: TMenuItem;
    PrintDBGridEh1: TPrintDBGridEh;
    procedure Button1Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure Query1CalcFields(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure DBGrid1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure FormCreate(Sender: TObject);
    procedure Print1Click(Sender: TObject);
    procedure Excel1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CostOrderList_DD: TCostOrderList_DD;
  sdate,edate:TDate;

implementation

uses CostOrderList1;

{$R *.dfm}

procedure TCostOrderList_DD.Button1Click(Sender: TObject);
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
    sql.add('select  YWDD.GSBH,YWDD.YSBH as DDBH,sum(YWDDS.Qty) as Qty,Sum(YWDDS.IPrice*YWDDS.Qty) as USACC,');
    sql.add('        isnull(CWDD.okQty,0) as okQty,isnull(CWDD.okACC,0) as okACC,XXZl.XieMing,XXZL.Article,DDZL.YN');
    sql.add('from YWDDS');
    sql.add('left join YWDD on YWDD.DDBH=YWDDS.DDBH');
    sql.add('left join (select YSBH as DDBH,sum(Qty) as okQty,sum(USACC) as okACC from CWDD ');
    sql.add('           where YSBH like '+''''+edit1.Text+'%'+'''');
    sql.add('                 and CWDD.SB='+''''+'1'+'''');
    sql.add('           group by YSBH) CWDD on CWDD.DDBH=YWDD.YSBH ');
    sql.add('left join DDZL on DDZL.DDBH=YWDD.YSBH');
    sql.add('left join XXZL on XXZl.XieXIng=DDZl.XieXing and DDZl.SheHao=XXZl.SheHao');
    sql.add('where YWDD.YSBH like '+''''+edit1.Text+'%'+'''');
    sql.add('      and DDZL.ShipDate between');
    sql.add('      '''+formatdatetime('yyyy/MM/dd',sdate)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',edate)+'''');
    //sql.add('     and isnull(DDZL.CWSB,'+''''+''+''''+')<>'+''''+'3'+'''');
    if CB1.itemindex<>0 then
      begin
        sql.add('       and YWDD.GSBH='+''''+CB1.Text+'''');
      end;
    sql.add('group by YWDD.GSBH,YWDD.YSBH,CWDD.okQty,CWDD.okACC,XXZl.XieMing,XXZL.Article,DDZL.YN');
    sql.Add('order by YWDD.YSBH ');
    active:=true;
  end;
end;

procedure TCostOrderList_DD.DBGrid1DblClick(Sender: TObject);
var Qty:integer;
p:string;
begin
if query1.recordcount>0 then
  begin
    with CostOrderList.CWDD do
      begin
        append;
        fieldbyname('DDBH').value:=query1.fieldbyname('DDBH').value; 
        fieldbyname('YSBH').value:=query1.fieldbyname('DDBH').value;
        fieldbyname('GSBH').value:=query1.fieldbyname('GSBH').value;  
        fieldbyname('MEMO').value:=query1.fieldbyname('GSBH').value;
        fieldbyname('XieMing').value:=query1.fieldbyname('XieMing').value;
        fieldbyname('Article').value:=query1.fieldbyname('Article').value;
        fieldbyname('IPrice').value:=query1.fieldbyname('IPrice').value;
        FieldByName('zlQty').value:=Query1.FieldByName('Qty').value;      
        fieldbyname('SB').value:='1';
        {
        if query1.fieldbyname('YN').value='5' then
          begin
            if query1.fieldbyname('Qty').value>query1.fieldbyname('okQty').value  then
              begin
                fieldbyname('Qty').value:=query1.fieldbyname('Qty').value-query1.fieldbyname('okQty').value;
                fieldbyname('USACC').value:=query1.fieldbyname('USACC').value-query1.fieldbyname('okACC').value;
              end
              else
                begin
                  fieldbyname('Qty').value:=0;
                  fieldbyname('USACC').value:=0;
                end;
            Query1.Edit;
            Query1.FieldByName('okQty').Value:=Query1.FieldByName('Qty').Value ;
            Query1.FieldByName('okACC').Value:=Query1.FieldByName('USACC').Value ;
            Query1.Post;
          end
          else  }
            begin
              Qty:=query1.fieldbyname('Qty').value-query1.fieldbyname('okQty').value;
              p:=inputbox('Key in Pairs.','Pairs:',inttostr(Qty));
              try
                Qty:=strtoint(p);
              except
                messagedlg('Pairs is not right.',mterror,[mbOK],0);
                Qty:=0;
              end;
              fieldbyname('Qty').value:=Qty;
              fieldbyname('USACC').value:=query1.fieldbyname('IPrice').value*Qty; 
              Query1.Edit;
              Query1.FieldByName('okQty').Value:=Query1.FieldByName('okQty').Value+Qty ;
              Query1.FieldByName('okACC').Value:=Query1.FieldByName('okACC').Value +Qty*Query1.FieldByName('okQty').Value;
              Query1.Post;
            end;
        post;
      end;
  end;
end;

procedure TCostOrderList_DD.DBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
if key=#13 then
dbgrid1dblclick(nil);
end;

procedure TCostOrderList_DD.Query1CalcFields(DataSet: TDataSet);
begin
if query1.FieldByName('Qty').Value<>0 then
  begin
    query1.FieldByName('IPrice').Value:=roundto(query1.FieldByName('USACC').Value/query1.FieldByName('Qty').Value,-4);
  end
  else
    begin
      query1.FieldByName('IPrice').Value:=0;
    end;
end;

procedure TCostOrderList_DD.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=Cafree;
end;

procedure TCostOrderList_DD.FormDestroy(Sender: TObject);
begin
costorderlist_DD:=nil;
end;

procedure TCostOrderList_DD.DBGrid1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin

if ((query1.FieldByName('Qty').value>query1.FieldByName('okQty').value) and (query1.FieldByName('okQty').value<>0))  then
  begin
    dbgrid1.canvas.font.color:=clRed;
    //dbgrid1.defaultdrawcolumncell(rect,datacol,column,state);
  end;
if (query1.FieldByName('Qty').value<=query1.FieldByName('okQty').value)  then
  begin
    dbgrid1.canvas.font.color:=clLime;
    //dbgrid1.defaultdrawcolumncell(rect,datacol,column,state);
  end;
end;

procedure TCostOrderList_DD.FormCreate(Sender: TObject);
var i:integer;
begin
with Qtemp do
  begin
    active:=false;
    sql.Clear;
    sql.add('select GSDH from BGSZL order by GSDH');
    active:=true;
    for i:=1 to recordcount do
      begin
        CB1.Items.Add(fieldbyname('GSDH').asstring);
        next;
      end;
    CB1.itemindex:=0;
    active:=false;
  end;
CBX2.Text:=CostOrderList.CBX1.Text;
CBX3.Text:=CostOrderList.CBX2.Text;

end;

procedure TCostOrderList_DD.Print1Click(Sender: TObject);
begin
printdbgrideh1.preview;
end;

procedure TCostOrderList_DD.Excel1Click(Sender: TObject);
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

end.
