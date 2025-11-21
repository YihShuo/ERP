unit DailyActualHour1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, StdCtrls, ExtCtrls, DB, DBTables,DateUtils,comobj;

type
  TDailyActualHour = class(TForm)
    Panel1: TPanel;
    Label2: TLabel;
    Label7: TLabel;
    Label3: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    CBX2: TComboBox;
    CBX3: TComboBox;
    Edit1: TEdit;
    Button4: TButton;
    StringGrid1: TStringGrid;
    SCRL: TQuery;
    DS1: TDataSource;
    QDep: TQuery;
    UpdateSQL1: TUpdateSQL;
    QTemp: TQuery;
    UpSQl2: TUpdateSQL;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure StringGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure StringGrid1DrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DailyActualHour: TDailyActualHour;
  NDate,sdate,edate:Tdate;

implementation

uses main1;

{$R *.dfm}

procedure TDailyActualHour.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TDailyActualHour.FormDestroy(Sender: TObject);
begin
   DailyActualHour:=Nil;
end;

procedure TDailyActualHour.Button1Click(Sender: TObject);
var y,m,d :word;
    i,j,Day:integer;
    qty:real;
begin
  y:=strtoint(CBX2.text);
  m:=strtoint(CBX3.text);
  d:=1;
  sdate:=EncodeDate(y,m,d);
  edate:=endofthemonth(sdate);
  Day:=DaysBetween(sdate,edate);

  with QDep do
  begin
    active:=false;
    sql.Clear;
    sql.add('select ID,DepName,ID as RecNum  ');
    sql.add('from SCRL left join BDepartment on SCRL.DepNO=BDepartment.ID ');
    sql.Add('where SCYEAR='+''''+inttostr(strtoint(CBX2.Text))+'''');
    sql.add('and SCRL.SCMONTH='+''''+inttostr(strtoint(CBX3.Text))+'''');
    sql.add('and DepName like '+''''+'%'+edit1.Text+'%'+''' and ProYN=1');
    sql.add('and SCRL.GSBH='+''''+main.edit2.text+''' and GXLB=''A''');
    sql.Add('group by ID,DepName');
    sql.add('order by ID ');
    Active:=true;
  end;
  
  with StringGrid1 do
  begin
    colcount:=Day+3;
    rowcount:=QDep.RecordCount+2;
    for i:=1 to Day+1 do
    begin
      cells[i,0]:=inttostr(i);
      colwidths[i]:=35;
    end;
    colwidths[0]:=120;
    colwidths[Day+2]:=50;
    cells[Day+2,0]:='Total';
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
    cells[0,rowcount-1]:='Total';
  end;
  with SCRL do
  begin
    active:=false;
    sql.Clear;
    sql.add('select SCRL.* from SCRL ');
    sql.add('left join BDepartment on BDepartment.ID=SCRL.DepNO ');
    sql.add('where SCYEAR='+''''+inttostr(strtoint(CBX2.Text))+'''');
    sql.add(' and   SCRL.SCMONTH='+''''+inttostr(strtoint(CBX3.Text))+'''');
    sql.add(' and SCRL.GSBH='+''''+main.Edit2.Text+'''');
    sql.add(' and BDepartment.DepName like'+''''+Edit1.Text+'%'+''' and BDepartment.GXLB=''A'' ');
    sql.add('order by SCRL.SCYEAR,SCRL.SCMONTH,SCRL.SCDAY');
    active:=true;
  end;
  //清空
  for i:=1 to stringgrid1.colCount-1 do
  begin
    for j:=1 to stringgrid1.rowcount-1 do
    begin
      stringgrid1.cells[i,j]:=''
    end;
  end;

  //Total
   with QTemp do
   begin
     active:=false;
     sql.clear;
     sql.add('select  isnull(sum(SCRL.SCGS1),0) as SCGS1,SCRL.DepNo  from SCRL ');
     sql.add('left join BDepartment on BDepartment.ID=SCRL.DepNo ');
     sql.add('where SCYEAR='+''''+inttostr(strtoint(CBX2.Text))+'''');
     sql.add('and SCRL.SCMONTH='+''''+inttostr(strtoint(CBX3.Text))+'''');
     sql.add('and SCRL.GSBH='+''''+main.Edit2.Text+'''');
     sql.add('and BDepartment.DepName like '+''''+edit1.Text+'%'+''' and BDepartment.GXLB=''A''');
     sql.add('group by SCRL.DepNo');
     active:=true;
     while not QTemp.eof do
     begin
       if QDep.locate('ID',fieldbyname('DepNo').asstring,[loCaseInsensitive]) then
       begin
         j:=strtoint(QDep.fieldbyname('RecNum').Value);
         stringgrid1.cells[Day+2,j]:=fieldbyname('SCGS1').asstring;
       end;
       next;
     end;
   end;

  SCRL.First;
  for i:=1 to SCRL.RecordCount do
  begin
    if (QDep.locate('ID',SCRL.fieldbyname('DepNo').asstring,[loCaseInsensitive])and (SCRL.fieldbyname('SCYEAR').Value=y) and (SCRL.fieldbyname('SCMONTH').Value=m) ) then
    begin
      d:=SCRL.fieldbyname('SCDay').Value;
      j:=strtoint(QDep.fieldbyname('RecNum').Value);
      StringGrid1.cells[d,j]:=SCRL.fieldbyname('SCGS1').AsString;
    end;
    SCRL.next;
  end;  
  with StringGrid1 do
  begin
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
      cells[i,j]:=floattostr(Qty);
    end;
  end;
  Button3.Enabled:=false;
  Button4.Enabled:=false;
end;

procedure TDailyActualHour.FormCreate(Sender: TObject);
var i:integer;
    myYear, myMonth, myDay : Word;
begin
  with QTemp do
  begin
    active:=false;
    sql.Clear;
    sql.add('select year(getdate())-5 as Oldyear,year(getdate())+5 as Newyear, getdate() as NDate');
    active:=true;
    //CBX2.Items.Add('');
    NDate:=fieldbyname('NDate').Value;
    for i:=QTemp.fieldbyname('Oldyear').value to  QTemp.fieldbyname('Newyear').value  do
    begin
      CBX2.Items.Add(inttostr(i));
      next;
    end;
    active:=false;

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

  end;
end;

procedure TDailyActualHour.StringGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if  not (Key in ['0'..'9',#8,#13,#46]) then
  begin
    Key := #0;
  end
  else
    begin
      Button3.Enabled:=true; 
      Button4.Enabled:=true;
    end;
end;

procedure TDailyActualHour.StringGrid1DrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
var y,m,d:word;
    i,Sunday:integer;
begin
  decodedate(sdate,y,m,d);
  for i:=1 to 7 do
  begin
    if dayoftheweek(encodedate(y,m,i))=7 then
      begin
        Sunday:=i
      end;
  end;
  if ACol<>0 then
  begin
    if ((ACol-Sunday)mod 7=0) and (stringgrid1.Cells[ACol,ARow]<>'Total') then
    begin
      with   StringGrid1.Canvas   do
      begin
        Font.Color:=clRed;
        Font.Style:=[fsbold,fsitalic];
        StringGrid1.Canvas.TextRect(Rect,Rect.right-Canvas.TextWidth(stringgrid1.Cells[ACol,ARow])-8, Rect.Top+2, stringgrid1.Cells[ACol,ARow] );
      end;
    end
    else
      StringGrid1.Canvas.TextRect(Rect,Rect.right-Canvas.TextWidth(stringgrid1.Cells[ACol,ARow])-8, Rect.Top+2, stringgrid1.Cells[ACol,ARow] );
  end ;
end;


procedure TDailyActualHour.Button3Click(Sender: TObject);
var i,j:integer;
    ID:string;
    y,m,d:word;
begin
  try
    y:=strtoint(CBX2.text);
    m:=strtoint(CBX3.text);
    for j:=1 to QDep.RecordCount do
    begin
      if QDep.Locate('RecNum',inttostr(j),[]) then
      begin
        ID:=QDep.fieldbyname('ID').AsString;
      end;
      for i:=1 to stringgrid1.ColCount-2 do
      begin
        d:=i;
        if SCRL.Locate('SCYEAR;SCMONTH;SCDAY;DepNO',vararrayof([y,m,d,ID]),[]) then
        begin
          if (SCRL.fieldbyname('SCYEAR').Value=yearof(NDate)) and (SCRL.fieldbyname('SCMONTH').Value=monthof(NDate)) and (SCRL.fieldbyname('SCDay').Value=dayof(NDate)) then
          begin
            SCRL.Edit;
            if (SCRL.FieldByName('SCGS1').Value<>stringGrid1.cells[i,j]) AND (stringGrid1.cells[i,j]<>'')then
            begin
              SCRL.FieldByName('SCGS1').Value:=stringGrid1.cells[i,j];
              SCRL.FieldByName('USERDATE1').Value:=NDate;
              SCRL.FieldByName('USERID1').Value:=main.edit1.text;
              UpSQl2.Apply(ukmodify);
            end;
          end else
          begin
            if  (SCRL.FieldByName('SCGS1').Value<>stringGrid1.cells[i,j]) and (stringGrid1.cells[i,j]<>'')  then
            begin
             showmessage(SCRL.fieldbyname('SCYEAR').asstring+'/'+SCRL.fieldbyname('SCMONTH').asstring+'/'+SCRL.fieldbyname('SCDay').asstring+' <> Now ,can not modify.');
             abort;
            end;
          end;
        end;
      end;
    end;
    Button1Click(nil)  ;
    showmessage('Succeed.');
  except
    showmessage('Have wrong.');
  end;
end;


procedure TDailyActualHour.Button4Click(Sender: TObject);
begin
  button1click(nil);
  button2.Enabled:=false;
  button3.Enabled:=false;
end;

procedure TDailyActualHour.Button2Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin
  if  SCRL.active  then
  begin
    try
      eclApp:=CreateOleObject('Excel.Application');
      WorkBook:=CreateOleObject('Excel.Sheet');
    except
      Application.MessageBox('沒有安裝Mcrosoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
      Exit;
    end;
    try
      WorkBook:=eclApp.workbooks.Add;
      for i:=1 to stringgrid1.RowCount do
      begin
        for j:=1 to stringgrid1.colcount do
        begin
          eclApp.Cells(i+3,j):=stringgrid1.cells[j-1,i-1];
          eclApp.Cells.item[i+3,j].font.size:='8';
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

end;


end.
