unit OrderKeyList1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, DB, DBTables, Grids, DBGrids, Buttons,
  ExtCtrls,dateutils,comobj, ComCtrls;

type
  TOrderKeyList = class(TForm)
    Panel1: TPanel;
    BB2: TBitBtn;
    BB3: TBitBtn;
    BB4: TBitBtn;
    BB5: TBitBtn;
    BB6: TBitBtn;
    BB7: TBitBtn;
    BB1: TBitBtn;
    BBT1: TBitBtn;
    BBT2: TBitBtn;
    BBT3: TBitBtn;
    BBT4: TBitBtn;
    bbt5: TBitBtn;
    bbt6: TBitBtn;
    Panel3: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    DBGrid1: TDBGrid;
    ZLList: TQuery;
    DS1: TDataSource;
    UpZL: TUpdateSQL;
    Edit2: TEdit;
    ZLListDDBH: TStringField;
    ZLListXieXing: TStringField;
    ZLListSheHao: TStringField;
    ZLListXieMing: TStringField;
    ZLListArticle: TStringField;
    ZLListPairs: TIntegerField;
    ZLListYN: TStringField;
    DC1: TDBCheckBox;
    ZLListokDate: TDateTimeField;
    ZLListUSERID: TStringField;
    ZLListUSERDate: TDateTimeField;
    Label5: TLabel;
    ZLListRKQty: TIntegerField;
    ZLListCHQty: TIntegerField;
    ZLListETD: TDateTimeField;
    CBX4: TComboBox;
    Qtemp: TQuery;
    Label14: TLabel;
    DTP1: TDateTimePicker;
    Label15: TLabel;
    DTP2: TDateTimePicker;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure BB1Click(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1ColEnter(Sender: TObject);
    procedure BB7Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure bbt6Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure ZLListNewRecord(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }    
  end;

var
  OrderKeyList: TOrderKeyList;
  sdate,edate,NDate:Tdate;

implementation

uses main1;

{$R *.dfm}

procedure TOrderKeyList.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if ZLList.requestlive  then
  begin
    messagedlg('You have to save data  first.',mtwarning,[mbyes],0);
    action:=canone;
  end
  else
    action:=cafree;
end;

procedure TOrderKeyList.Button1Click(Sender: TObject);
//var y,m:word;
begin
{if (CBX2.text='')or (CBX3.text='')  then
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
edate:=endofthemonth(sdate);   }


sdate:=DTP1.Date;
edate:=DTP2.Date;

with ZLList do
  begin
    active:=false;
    sql.clear;
    sql.add('select DDZL.DDBH,DDZL.XieXing,DDZL.SheHao,XXZL.XieMing,DDZL.USERID,DDZl.USERDate, ');
    sql.add('XXZL.Article,YWCH.ETD,DDZL.Pairs,DDZL.YN,YWCP.RKQty,YWCH.CHQty,YWCP.okDate');
    sql.add('from  DDZL');
    sql.add('left join  ZLZL on ZLZL.DDBH=DDZL.DDBH');
    sql.add('left join XXZL on XXZL.Xiexing=DDZL.XieXing and XXZL.SheHao=DDZL.SheHao ');
    sql.add('left join (select YWDD.YSBH as DDBH,sum(YWCP.Qty) as RKQty,max(LastInDate) as okDate  from YWCP ');
    sql.add('           left join YWDD on YWDD.DDBH=YWCP.DDBH ');
    sql.add('           where YWCP.inDate is not null ');
    sql.add('           group by YWDD.YSBH) YWCP');
    sql.add('           on YWCP.DDBH=DDZL.DDBH ');
    sql.add('left join (select YWDD.YSBH as DDBH,sum(YWCP.Qty) as CHQty,max(YWCP.ExeDate) as ETD from YWCP ');
    sql.add('           left join YWDD on YWDD.DDBH=YWCP.DDBH ');
    sql.add('           where YWCP.ExeDate is not null ');
    sql.add('           group by YWDD.YSBH) YWCH');
    sql.add('           on YWCH.DDBH=DDZL.DDBH ');
    sql.add('where DDZL.DDBH like '+''''+edit1.text+'%'+'''');
    sql.add('      and DDZL.KHBH like '+''''+edit2.text+'%'+'''');
    sql.add('      and convert(smalldatetime,convert(varchar,DDZL.Shipdate,111)) between ');
    sql.add('      '''+formatdatetime('yyyy/MM/dd',sdate)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',edate)+'''');
    if CBX4.itemindex<>0 then
      begin
        sql.add('       and DDZL.GSBH='+''''+CBX4.Text+'''');
      end;
    //sql.add('and DDZL.DDZT='+''''+'Y'+'''');
    sql.add('order by DDZL.DDBH ');
    active:=true;
  end;
BB4.Enabled:=true;
BBT6.Enabled:=true;

end;

procedure TOrderKeyList.BB1Click(Sender: TObject);
begin
panel3.Visible:=true;
end;

procedure TOrderKeyList.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
    if (gdFocused in State) then
     begin
     if (DataCol=8) then
       begin
       DC1.Left:=Rect.Left  + DBGrid1.Left;
       DC1.Top:=Rect.Top   + DBGrid1.top;
       DC1.Width:=Rect.Right - Rect.Left;
       DC1.Height:=Rect.Bottom- Rect.Top;
       DC1.Visible:=True;
       end;
    end;
if ZLList.FieldByName('YN').value='1' then
  begin
    dbgrid1.canvas.font.color:=clred;
    dbgrid1.defaultdrawcolumncell(rect,datacol,column,state);
    if ZLList.FieldByName('Pairs').value<=ZLList.FieldByName('RKQty').value then
      begin
        dbgrid1.canvas.font.color:=clLime;
        dbgrid1.defaultdrawcolumncell(rect,datacol,column,state);
      end;
  end;

end;

procedure TOrderKeyList.DBGrid1ColEnter(Sender: TObject);
begin 
if dbgrid1.selectedfield.fieldname<>DC1.datafield then
  begin
    DC1.visible:=false;
  end;
end;

procedure TOrderKeyList.BB7Click(Sender: TObject);
begin
close;
end;

procedure TOrderKeyList.BB4Click(Sender: TObject);
begin
with ZLList do
  begin
    cachedupdates:=true;
    requestlive:=true;
  end;
BB5.Enabled:=true;
BB6.Enabled:=true;
end;

procedure TOrderKeyList.BB5Click(Sender: TObject);
begin
with ZLList do
  begin
    first;
    while not eof do
      begin
        if updatestatus=usmodified then
          begin
            edit;
            fieldbyname('USERID').Value:=main.edit1.Text; 
            fieldbyname('USERDate').Value:=date;
            UpZL.Apply(ukmodify);
          end;
        next;
      end;
    active:=false;
    cachedupdates:=false;
    requestlive:=false;
    active:=true;
  end;
BB5.enabled:=false;
BB6.Enabled:=false;
end;

procedure TOrderKeyList.BB6Click(Sender: TObject);
begin

with ZLList do
  begin
    active:=false;
    cachedupdates:=false;
    requestlive:=false;
    active:=true;
  end;
BB5.enabled:=false;
BB6.Enabled:=false;
end;

procedure TOrderKeyList.bbt6Click(Sender: TObject);
var
      eclApp,WorkBook:olevariant;
 //     xlsFileName:string;
      i,j:integer;
begin

if ZLList.Active then
  begin
    if ZLList.recordcount=0 then
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
  for   i:=1   to   ZLList.fieldcount   do
    begin
      eclApp.Cells(1,i+1):=ZLList.fields[i-1].FieldName;
    end;
  ZLList.First;
  j:=2;
  while   not  ZLList.Eof   do
    begin
      eclApp.Cells(j,1):=j-1;
      for   i:=1   to   ZLList.fieldcount   do
        begin
          eclApp.Cells(j,i+1):=ZLList.Fields[i-1].Value;
          eclApp.Cells.Cells.item[j,i+1].font.size:='8';
        end;
      ZLList.Next;
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

procedure TOrderKeyList.FormDestroy(Sender: TObject);
begin
OrderKeyList:=nil;
end;

procedure TOrderKeyList.ZLListNewRecord(DataSet: TDataSet);
begin
abort;
end;

procedure TOrderKeyList.FormCreate(Sender: TObject);
var i:integer;
begin
with Qtemp do
  begin 
    active:=false;
    sql.Clear;
    sql.add('select getdate() as NDate');
    active:=true;
    NDate:=fieldbyname('NDate').Value;
    active:=false;
    sql.Clear;
    sql.add('select GSDH from BGSZL order by GSDH');
    active:=true;
    for i:=1 to recordcount do
      begin
        CBX4.Items.Add(fieldbyname('GSDH').asstring);
        next;
      end;
    CBX4.Text:=main.edit2.Text;
    active:=false;
  end; 
DTP2.date:=startofthemonth(NDate)+4;
DTP1.date:=startofthemonth(incmonth(NDate,-1))+5;

end;

end.
