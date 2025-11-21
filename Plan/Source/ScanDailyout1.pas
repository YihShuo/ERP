unit ScanDailyout1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, DB, DBTables, Grids, DBGrids, ComCtrls, StdCtrls, comobj,
  ExtCtrls;

type
  TScanDailyout = class(TForm)
    Panel1: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Edit2: TEdit;
    Button1: TButton;
    Button2: TButton;
    DTP1: TDateTimePicker;
    Edit1: TEdit;
    DBGrid1: TDBGrid;
    Query1: TQuery;
    DS1: TDataSource;
    Query1Qty: TCurrencyField;
    Query1THour: TStringField;
    Query1DepID: TStringField;
    Query1DepName: TStringField;
    Button3: TButton;
    StringGrid1: TStringGrid;
    QDep: TQuery;
    QHour: TQuery;
    UpdateSQL1: TUpdateSQL;
    UpdateSQL2: TUpdateSQL;
    Label1: TLabel;
    CB1: TComboBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure StringGrid1DrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ScanDailyout: TScanDailyout;

implementation

{$R *.dfm}

procedure TScanDailyout.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=cafree;
end;

procedure TScanDailyout.FormCreate(Sender: TObject);
begin
DTP1.Date:=date;
end;

procedure TScanDailyout.Button1Click(Sender: TObject);
var i,j,m,n:integer;
Qty:real;
begin


for i:=0 to stringGrid1.RowCount do      //²MªÅ
  begin
    for j:=0 to stringGrid1.ColCount do
      begin
        stringGrid1.Cells[j,i]:='';
      end;
  end;

with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select sum(SCSM.Qty) as Qty,');
    sql.add('SCSM.DepID,BDepartment.DepName,'+''''+'Tot'+''''+'as THour');
    sql.add('from SCSM ');
    sql.add('left join DDZL on DDZL.DDBH=SCSM.DDBH ');
    sql.add('left join XXZL on XXZL.XieXing=DDZl.XieXing and XXZL.SheHao=DDZL.SheHao ');
    sql.add('left join BDepartment on BDepartment.ID=SCSM.DepID ');
    sql.add('where SCSM.DDBH like '+''''+edit2.Text+'%'+'''');
    sql.add('and BDepartment.DepName like '+''''+'%'+edit1.Text+'%'+'''');
    sql.add('and convert(varchar,SCSM.USERDate,111)='+''''+formatdatetime('yyyy/MM/dd',DTP1.date)+'''');  
    if CB1.text<>'All' then
      begin
        sql.add('and SCSM.SMLX='+''''+copy(CB1.text,0,1)+'''');
      end;
    sql.add('group by  SCSM.DepID,BDepartment.DepName');
    sql.add(' union ');
    sql.add('select sum(SCSM.Qty) as Qty,SCSM.DepID,BDepartment.DepName,SCSM.THour');
    sql.add('from SCSM ');
    sql.add('left join DDZL on DDZL.DDBH=SCSM.DDBH ');
    sql.add('left join XXZL on XXZL.XieXing=DDZl.XieXing and XXZL.SheHao=DDZL.SheHao ');
    sql.add('left join BDepartment on BDepartment.ID=SCSM.DepID ');
    sql.add('where SCSM.DDBH like '+''''+edit2.Text+'%'+'''');
    sql.add('and BDepartment.DepName like '+''''+'%'+edit1.Text+'%'+'''');
    sql.add('and convert(varchar,SCSM.USERDate,111)='+''''+formatdatetime('yyyy/MM/dd',DTP1.date)+'''');  
    if CB1.text<>'All' then
      begin
        sql.add('and SCSM.SMLX='+''''+copy(CB1.text,0,1)+'''');
      end;
    sql.add('group by  SCSM.DepID,BDepartment.DepName,SCSM.THour');
    sql.add('order by SCSM.DepID, SCSM.THour');
    active:=true;
    if recordcount=0 then
      begin
        abort;
      end;
  end;

with QDep do
  begin
    active:=false;
    sql.Clear;
    sql.add('select distinct SCSM.DepID,BDepartment.DepName,0 as RecNo');
    sql.add('from SCSM ');
    sql.add('left join DDZL on DDZL.DDBH=SCSM.DDBH ');
    sql.add('left join XXZL on XXZL.XieXing=DDZl.XieXing and XXZL.SheHao=DDZL.SheHao ');
    sql.add('left join BDepartment on BDepartment.ID=SCSM.DepID ');
    sql.add('where SCSM.DDBH like '+''''+edit2.Text+'%'+'''');
    sql.add('and BDepartment.DepName like '+''''+'%'+edit1.Text+'%'+'''');
    if CB1.text<>'All' then
      begin
        sql.add('and SCSM.SMLX='+''''+copy(CB1.text,0,1)+'''');
      end;
    sql.add('and convert(varchar,SCSM.USERDate,111)='+''''+formatdatetime('yyyy/MM/dd',DTP1.date)+'''');
    sql.add('order by SCSM.DepID');
    active:=true;
    cachedupdates:=true;
    RequestLive:=true;
    for j:=1 to RecordCount do
      begin
        Edit;
        FieldByName('RecNo').Value:=inttostr(j);
        next;
      end;
    m:=recordcount;
  end;
with QHour do
  begin
    active:=false;
    sql.Clear;
    sql.add('select distinct SCSM.THour,0 as RecNo ');
    sql.add('from SCSM  ');
    sql.add('left join DDZL on DDZL.DDBH=SCSM.DDBH ');
    sql.add('left join XXZL on XXZL.XieXing=DDZl.XieXing and XXZL.SheHao=DDZL.SheHao ');
    sql.add('left join BDepartment on BDepartment.ID=SCSM.DepID ');
    sql.add('where SCSM.DDBH like '+''''+edit2.Text+'%'+'''');
    sql.add('and BDepartment.DepName like '+''''+'%'+edit1.Text+'%'+''''); 
    if CB1.text<>'All' then
      begin
        sql.add('and SCSM.SMLX='+''''+copy(CB1.text,0,1)+'''');
      end;
    sql.add('and convert(varchar,SCSM.USERDate,111)='+''''+formatdatetime('yyyy/MM/dd',DTP1.date)+'''');
    sql.add('order by SCSM.Thour');
    active:=true;
    cachedupdates:=true;
    RequestLive:=true;
    for j:=1 to RecordCount do
      begin
        Edit;
        FieldByName('RecNo').Value:=inttostr(j);
        next;
      end;
    n:=recordcount;
  end;

with StringGrid1 do
  begin
    colcount:=n+2;
    rowcount:=m+2;
    QHour.First;
    QDep.First;
    while not QHour.eof do
      begin
        cells[strtoint(QHour.FieldByName('RecNo').Value),0]:=QHour.fieldbyname('THour').asstring;
        colwidths[strtoint(QHour.FieldByName('RecNo').Value)]:=50;
        QHour.Next;
      end;
    colwidths[0]:=60;
    colwidths[n+1]:=60;
    cells[n+1,0]:='Total';
    while not QDep.eof do
      begin
        cells[0,strtoint(QDep.FieldByName('RecNo').Value)]:=QDep.fieldbyname('DepName').asstring;
        QDep.Next;
      end;
    query1.first;
    while not query1.Eof do
      begin
        if QHour.locate('THour',Query1.fieldbyname('THour').asstring,[]) then
          begin
            i:=strtoint(QHour.fieldbyname('RecNo').Value);
          end;
        if QDep.locate('DepID',Query1.fieldbyname('DepID').asstring,[]) then
          begin
            j:=strtoint(QDep.fieldbyname('RecNo').Value);
          end;
        if  Query1.fieldbyname('THour').value<>'Tot' then
          begin
            cells[i,j]:=Query1.fieldbyname('Qty').AsString;
          end
          else
            begin
              cells[n+1,j]:=Query1.fieldbyname('Qty').AsString;
            end;
        Query1.next;
      end;
    query1.First;
    Cells[0,m+1]:='Total'  ;
    for  i:=1 to n+1 do
      begin
        Qty:=0;
        for j:=1 to m do
          begin
            if Cells[i,j]='' then
              begin
                Qty:=Qty+0;
              end
              else
                begin
                  Qty:=Qty+strtofloat(Cells[i,j]);
                end;
          end;
        cells[i,m+1]:=floattostr(Qty);
      end;
  end;

end;

procedure TScanDailyout.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
if  query1.fieldbyname('THour').Value='Tot' then
  begin
    //dbgrid1.canvas.font.style:=[fsitalic];
    dbgrid1.canvas.font.color:=clred;
    dbgrid1.defaultdrawcolumncell(rect,datacol,column,state);
  end;
end;

procedure TScanDailyout.Button3Click(Sender: TObject);
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
if Messagedlg('Production Detail data or output to Excel?',mtconfirmation,[mbYes,mbNo],0)=mrYes then
  begin
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
  end
  else
    begin
      WorkBook:=eclApp.workbooks.Add;
      for i:=0 to stringgrid1.RowCount-1 do
        begin
          for j:=0 to stringgrid1.ColCount-1 do
            begin
              eclApp.Cells(i+3,j+1):=stringgrid1.cells[j,i];
            end;
        end;
    end;
  eclapp.columns.autofit;
  showmessage('Succeed.');
  eclApp.Visible:=True;
except
  on   F:Exception   do
    showmessage(F.Message);
end;


end;

procedure TScanDailyout.Button2Click(Sender: TObject);
begin

IF DBGRID1.Visible then
  begin
    DBGrid1.Visible:=false;
    StringGrid1.Visible:=true;
  end
  else
    begin
      DBGrid1.Visible:=true;
      StringGrid1.Visible:=false;
    end;
end;

procedure TScanDailyout.StringGrid1DrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
begin
with   StringGrid1.Canvas   do
  begin
    if ((ARow=0) or (ACol=0) or (ARow=stringgrid1.RowCount-1) or (ACol=stringgrid1.ColCount-1) ) then
      begin
        Font.style:=[fsbold];
      end;
    StringGrid1.Canvas.TextRect(Rect,Rect.right-Canvas.TextWidth(stringgrid1.Cells[ACol,ARow])-10, Rect.Top+2, stringgrid1.Cells[ACol,ARow] );
  end;
end;

procedure TScanDailyout.FormDestroy(Sender: TObject);
begin
ScanDailyout:=nil;
end;

end.
