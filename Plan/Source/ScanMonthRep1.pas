unit ScanMonthRep1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBTables, DB, StdCtrls, ExtCtrls, DBGrids, Grids,dateutils,comobj;

type
  TScanMonthRep = class(TForm)
    StringGrid1: TStringGrid;
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    Label2: TLabel;
    Label7: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    CBX1: TComboBox;
    CBX2: TComboBox;
    Query1: TQuery;
    DataSource1: TDataSource;
    QDep: TQuery;
    SaveDialog1: TSaveDialog;
    UpdateSQL1: TUpdateSQL;
    Query1Qty: TCurrencyField;
    Query1ScanDate: TStringField;
    Query1DepID: TStringField;
    Query1DepName: TStringField;
    Label1: TLabel;
    Edit1: TEdit;
    CheckBox1: TCheckBox;
    Label3: TLabel;
    CB1: TComboBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure StringGrid1DrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ScanMonthRep: TScanMonthRep;
  sdate,edate:Tdate;

implementation

{$R *.dfm}

procedure TScanMonthRep.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=cafree;
end;

procedure TScanMonthRep.Button1Click(Sender: TObject);
var a,b,c :word;
i,j,d:integer;
Qty:real;
begin
a:=strtoint(CBX1.text);
b:=strtoint(CBX2.text);
c:=1;
sdate:=EncodeDate(a,b,c);
 edate:=endofthemonth(sdate);


for i:=0 to stringGrid1.RowCount do      //睲
  begin
    for j:=0 to stringGrid1.ColCount do
      begin
        stringGrid1.Cells[j,i]:='';
      end;
  end;

with Query1 do
  begin
    active:=false;
    sql.clear;
    sql.add('select sum(SCSM.Qty) as Qty,'+''''+formatdatetime('yyyy/MM/dd',edate)+'''');
    sql.add('as ScanDate,SCSM.DepID,'+''''+'Tot'+''''+' as DepName');
    sql.add('from SCSM ');
    sql.add('left join DDZL on DDZL.DDBH=SCSM.DDBH ');
    sql.add('left join XXZL on XXZL.XieXing=DDZl.XieXing and XXZL.SheHao=DDZL.SheHao ');
    sql.add('left join BDepartment on BDepartment.ID=SCSM.DepID ');
    sql.add('where  convert(smalldatetime,convert(varchar,SCSM.USERDate,111)) between ');
    sql.add(''''+formatdatetime('yyyy/MM/dd',sDate)+''''+' and '+ ''''+formatdatetime('yyyy/MM/dd',eDate)+'''');
    sql.add('and BDepartment.DepName like '+''''+edit1.Text+'%'+'''');   
    if CB1.text<>'All' then
      begin
        sql.add('and SCSM.SMLX='+''''+copy(CB1.text,0,1)+'''');
      end;
    sql.add('group by  SCSM.DepID');
    sql.add(' union ');
    sql.add('select sum(SCSM.Qty) as Qty,convert(varchar,SCSM.USERDATE,111) as ScanDate,SCSM.DepID,BDepartment.DepName');
    sql.add('from SCSM ');
    sql.add('left join DDZL on DDZL.DDBH=SCSM.DDBH ');
    sql.add('left join XXZL on XXZL.XieXing=DDZl.XieXing and XXZL.SheHao=DDZL.SheHao ');
    sql.add('left join BDepartment on BDepartment.ID=SCSM.DepID ');
    sql.add('where  convert(smalldatetime,convert(varchar,SCSM.USERDate,111)) between ');
    sql.add(''''+formatdatetime('yyyy/MM/dd',sDate)+''''+' and '+ ''''+formatdatetime('yyyy/MM/dd',eDate)+'''');   
    sql.add('and BDepartment.DepName like '+''''+edit1.Text+'%'+'''');
    if checkbox1.Checked   then
      begin
        if (CB1.text='All') then
          begin
            sql.add('and SCSM.SMLX<>'+''''+'1'+'''');
          end;
      end;
    if CB1.text<>'All' then
      begin
        sql.add('and SCSM.SMLX='+''''+copy(CB1.text,0,1)+'''');
      end;
    sql.add('group by  SCSM.DepID,BDepartment.DepName,convert(varchar,SCSM.USERDATE,111)');
    sql.add('order by SCSM.DepID, ScanDate');
    active:=true;
  end;

with QDep do
  begin
    active:=false;
    sql.Clear;
    sql.add('select distinct SCSM.DepID,BDepartment.DepName,0 as RecNum from SCSM ');
    sql.add('left join BDepartment on SCSM.DepID=Bdepartment.ID ');
    sql.add('where convert(smalldatetime,convert(varchar,SCSM.USERDate,111)) between');
    sql.add(''''+formatdatetime('yyyy/MM/dd',sdate)+''''+' and  '+''''+formatdatetime('yyyy/MM/dd',edate)+'''');  
    sql.add('and BDepartment.DepName like '+''''+edit1.Text+'%'+'''');  
    if CB1.text<>'All' then
      begin
        sql.add('and SCSM.SMLX='+''''+copy(CB1.text,0,1)+'''');
      end;                               
    if checkbox1.Checked   then
      begin
        if (CB1.text='All') then
          begin
            sql.add('and SCSM.SMLX<>'+''''+'1'+'''');
          end;
      end;
    sql.add('order by SCSM.DepID');
    active:=true;
  end;
d:=DaysBetween(sdate,edate);
with StringGrid1 do
  begin
    colcount:=d+3;
    rowcount:=QDep.RecordCount+2;
    for i:=1 to colcount-1 do
      begin
        cells[i,0]:=inttostr(i);
        colwidths[i]:=35;
      end;
    colwidths[0]:=40;
    colwidths[d+2]:=50;
    cells[d+2,0]:='Total';
    QDep.First;
    QDep.cachedupdates:=true;
    QDep.RequestLive:=true;
    for j:=1 to QDep.RecordCount do
      begin
        QDep.Edit;
        QDep.FieldByName('RecNum').Value:=inttostr(j);
        cells[0,j]:=QDep.fieldbyname('DepName').asstring;
        QDep.next;
      end;
  end;

for i:=1 to Query1.RecordCount do
  begin
    c:=strtoint(copy(Query1.fieldbyname('ScanDate').value,9,2));
   // decodedate(strtodate(Query1.fieldbyname('ScanDate').value),a,b,c);
    if QDep.locate('DepID',Query1.fieldbyname('DepID').asstring,[]) then
      begin
        j:=strtoint(QDep.fieldbyname('RecNum').Value);
      end;
    with StringGrid1 do
      begin
        if  Query1.fieldbyname('DepName').value<>'Tot' then
          begin
            cells[c,j]:=Query1.fieldbyname('Qty').AsString;
          end
          else
            begin
              cells[d+2,j]:=Query1.fieldbyname('Qty').AsString;
            end;
      end;
    Query1.next;
  end;

with stringgrid1 do
  begin
    Cells[0,rowcount-1]:='Total'  ;
    for  i:=1 to colcount-1 do
      begin
        Qty:=0;
        for j:=1 to rowcount-2 do
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
        cells[i,rowcount-1]:=floattostr(Qty);
      end;
  end;
query1.First;
Button3.Enabled:=true;

end;

procedure TScanMonthRep.Button3Click(Sender: TObject);
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

procedure TScanMonthRep.Button2Click(Sender: TObject);
var   a:string;
      eclApp,WorkBook:olevariant;
 //     xlsFileName:string;
      i,j:integer;
  begin
if Messagedlg('Production output or Detail data to Excel?',mtconfirmation,[mbYes,mbNo],0)=mrYes then
begin
  if  query1.active  then
    begin
    try
      eclApp:=CreateOleObject('Excel.Application');
      WorkBook:=CreateOleObject('Excel.Sheet');
    except
      Application.MessageBox('⊿Τ杆Mcrosoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
      Exit;
    end;
    try
      WorkBook:=eclApp.workbooks.Add;
        for i:=0 to stringgrid1.RowCount-1 do
          begin
            for j:=0 to stringgrid1.ColCount-1 do
              begin
                eclApp.Cells(i+3,j+1):=stringgrid1.cells[j,i];
              end;
          end;
     eclapp.columns.autofit;
     showmessage('Succeed');
      eclApp.Visible:=True;
      except
        on   F:Exception   do
          showmessage(F.Message);
      end;
    end;
end
else
  begin
    if  query1.active  then
    begin
    try
      eclApp:=CreateOleObject('Excel.Application');
      WorkBook:=CreateOleObject('Excel.Sheet');
    except
      Application.MessageBox('系统没有安装Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
      Exit;
    end;
    try
        WorkBook:=eclApp.workbooks.Add;
        for   i:=1   to   query1.fieldCount   do
          begin
              eclApp.Cells(1,i+1):=query1.fields[i-1].FieldName;
              eclApp.Cells.item[1,i].font.size:='8';
          end;

        query1.First;
        j:=2;
        while   not   query1.Eof   do
          begin
            eclApp.Cells(j,1):=j-1;
            for   i:=1   to   query1.FieldCount   do
            begin
              eclApp.Cells(j,i+1):=query1.Fields[i-1].Value;
              eclApp.Cells.item[j,i].font.size:='8';
            end;
          query1.Next;
          inc(j);
          end;
      eclapp.columns.autofit;
      showmessage('Succeed');
      eclApp.Visible:=True;
      except
        on   F:Exception   do
          showmessage(F.Message);
      end;
    end;
  end ;

end;

procedure TScanMonthRep.StringGrid1DrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
var y,m,d:word;
 i,e:integer;
begin
    decodedate(sdate,y,m,d);
    for i:=1 to 7 do
      begin
        if dayoftheweek(encodedate(y,m,i))=7 then
          begin
            e:=i
          end;
      end;
    if ((ACol-e)mod 7=0) and (ACol<>(stringgrid1.ColCount-1)) then
      begin
        with   StringGrid1.Canvas   do
          begin
            Font.Color:=clRed;
          //  Font.Size:=8;
            Font.Style:=[fsbold,fsitalic];
            StringGrid1.Canvas.TextRect(Rect,Rect.right-Canvas.TextWidth(stringgrid1.Cells[ACol,ARow]), Rect.Top+2, stringgrid1.Cells[ACol,ARow] );
           // TextOut(Rect.Left+2,   Rect.Top+3,   StringGrid1.Cells[ACol,   ARow]);
          end;
      end
      else
        StringGrid1.Canvas.TextRect(Rect,Rect.right-Canvas.TextWidth(stringgrid1.Cells[ACol,ARow]), Rect.Top+2, stringgrid1.Cells[ACol,ARow] );

{
with   StringGrid1.Canvas   do
  begin
    if ((ARow=0) or (ACol=0) or (ARow=stringgrid1.RowCount-1) or (ACol=stringgrid1.ColCount-1) ) then
      begin
        Font.style:=[fsbold];
      end;
    StringGrid1.Canvas.TextRect(Rect,Rect.right-Canvas.TextWidth(stringgrid1.Cells[ACol,ARow]), Rect.Top+2, stringgrid1.Cells[ACol,ARow] );
  end; }
end;

procedure TScanMonthRep.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin

if  query1.fieldbyname('DepName').Value='Tot' then
  begin
   // dbgrid1.canvas.font.style:=[fsitalic];
    dbgrid1.canvas.font.color:=clred;;
    dbgrid1.defaultdrawcolumncell(rect,datacol,column,state);
  end;
end;

procedure TScanMonthRep.FormDestroy(Sender: TObject);
begin
ScanMonthRep:=nil;
end;

end.
