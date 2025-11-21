unit CalendarPre1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ExtCtrls,dateutils,
  comobj;

type
  TCalendarPre = class(TForm)
    Panel1: TPanel;
    Label2: TLabel;
    Label7: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label1: TLabel;
    Button1: TButton;
    Button3: TButton;
    CBX1: TComboBox;
    CBX2: TComboBox;
    Edit1: TEdit;
    CB1: TComboBox;
    DBGridEh1: TDBGridEh;
    Query1: TQuery;
    DS1: TDataSource;
    QTemp: TQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CalendarPre: TCalendarPre;
  sdate,edate:Tdate;

implementation

uses main1;

{$R *.dfm}

procedure TCalendarPre.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=cafree;
end;

procedure TCalendarPre.Button1Click(Sender: TObject);
var a,b,c :word;
e:string;
begin
a:=strtoint(CBX1.text);
b:=strtoint(CBX2.text);
c:=1;
sdate:=EncodeDate(a,b,c);
edate:=endofthemonth(sdate);

with QTemp do
  begin
    active:=false;
    sql.Clear;
    sql.add('select distinct NDay ');
    sql.add('from (select  datepart(day, SCBB.SCDate) as NDay from SCBB');
    sql.add('      left join BDepartment on BDepartment.ID=SCBB.DepNo ');
    sql.add('      where  convert(smalldatetime,convert(varchar,SCBB.SCDate,111)) between ');
    sql.add('             '''+formatdatetime('yyyy/MM/dd',sDate) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eDate)+'''');
    sql.add('             and BDepartment.DepName like '+''''+'%'+edit1.Text+'%'+'''');
    sql.add('             and BDepartment.PROYN='+''''+'1'+'''');
    sql.add('             and SCBB.GSBH like'+''''+CB1.text+'%'+'''');
    sql.add('     union ');
    sql.add('     select datepart(day,SCBZCL.BZDate) as NDay from SCBZCL ');
    sql.add('         left join BDepartment on BDepartment.ID=SCBZCL.DepNo ');
    sql.add('         where  convert(smalldatetime,convert(varchar,SCBZCL.BZDate,111)) between ');
    sql.add('                '''+formatdatetime('yyyy/MM/dd',sDate) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eDate)+'''');
    sql.add('                and BDepartment.DepName like '+''''+'%'+edit1.Text+'%'+'''');  
    sql.add('                and BDepartment.PROYN='+''''+'1'+'''');
    sql.add('                and SCBZCL.GSBH like'+''''+CB1.text+'%'+'''');
    sql.add('      ) DayList order by NDay');
    active:=true;
  end;

with query1 do
  begin
    active:=false;
    sql.clear;
    sql.add('select SCGS.DepNo,SCGS.DepName,SCGS.SB ');
     while not QTemp.eof do
       begin
         e:=Qtemp.fieldbyname('NDay').asstring;
         sql.add(',sum(case when SCGS.NDay='+''''+e+'''');
         sql.add(' then SCGS.Qty  end) as '+''''+e+'''');
         QTemp.Next;
       end; 
     sql.add(',sum(case when SCGS.NDay=32');
     sql.add(' then SCGS.Qty  end) as Total');

    sql.add('from (select SCRL.SCDay as NDay, SCRL.SCGS as Qty,SCRL.DepNo,BDepartment.DepName, '+''''+'Plan'+''''+' as SB ');
    sql.add('      from SCRL ');
    sql.add('      left join BDepartment on Bdepartment.ID=SCRL.DepNo ');
    sql.add('      where SCYEAR='+''''+CBX1.text+''''+' and SCMONTH='+''''+inttostr(strtoint(CBX2.text))+'''');
    sql.add('            and SCRL.GSBH='+''''+CB1.Text+'''');
    sql.add('            and BDepartment.DepName like '+''''+'%'+edit1.Text+'%'+'''');  
    sql.add('            and BDepartment.PROYN='+''''+'1'+'''');
    sql.add('      union ');
    sql.add('      select  datepart(day, RSCQ.RSDate) as NDay, RSCQ.SDGS as Qty,RSCQ.DepNo,BDepartment.DepName,'+''''+'Actual'+''''+' as SB ');
    sql.add('      from RSCQ ');
    sql.add('      left join BDepartment on  Bdepartment.ID=RSCQ.DepNo ');
    sql.add('      where convert(smalldatetime,convert(varchar,RSDate,111)) between ');
    sql.add('            '''+formatdatetime('yyyy/MM/dd',sdate)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',edate)+'''');
    sql.add('            and BDepartment.DepName like '+''''+'%'+edit1.Text+'%'+'''');  
    sql.add('            and BDepartment.PROYN='+''''+'1'+'''');
    sql.add('            and BDepartment.GSBH='+''''+CB1.Text+'''');
    sql.add('      union ');
    sql.add('      select 32 as  NDay,sum(RSCQ.SDGS) as Qty,RSCQ.DepNo,BDepartment.DepName,'+''''+'Actual'+''''+' as SB ');
    sql.add('      from RSCQ ');
    sql.add('      left join BDepartment on  Bdepartment.ID=RSCQ.DepNo ');
    sql.add('      where convert(smalldatetime,convert(varchar,RSDate,111)) between ');
    sql.add('            '''+formatdatetime('yyyy/MM/dd',sdate)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',edate)+'''');
    sql.add('            and BDepartment.DepName like '+''''+'%'+edit1.Text+'%'+'''');
    sql.add('            and BDepartment.PROYN='+''''+'1'+'''');
    sql.add('            and BDepartment.GSBH='+''''+CB1.Text+'''');
    sql.add('      group by RSCQ.DepNo,BDepartment.DepName ');
    sql.add('      union ');
    sql.add('      select 32 as NDay, sum(SCRL.SCGS) as Qty,SCRL.DepNo,BDepartment.DepName, '+''''+'Plan'+''''+' as SB ');
    sql.add('      from SCRL ');
    sql.add('      left join BDepartment on Bdepartment.ID=SCRL.DepNo ');
    sql.add('      where SCYEAR='+''''+CBX1.text+''''+' and SCMONTH='+''''+inttostr(strtoint(CBX2.text))+'''');
    sql.add('            and SCRL.GSBH='+''''+CB1.Text+'''');
    sql.add('            and BDepartment.DepName like '+''''+'%'+edit1.Text+'%'+''''); 
    sql.add('            and BDepartment.PROYN='+''''+'1'+'''');  
    sql.add('      group by SCRL.DepNo,BDepartment.DepName ');
    sql.add('      ) SCGS ');
    sql.add('group by  SCGS.DepNo,SCGS.DepName,SCGS.SB ');
    sql.add('order by  SCGS.DepNo,SCGS.DepName,SCGS.SB ');
    active:=true;
  end;
DBGrideh1.columns[0].width:=80;
DBGrideh1.columns[1].width:=65;
DBGrideh1.columns[2].width:=65;
for a:=3 to query1.fieldcount-2 do
  begin
    DBGrideh1.columns[a].width:=40;
    if dayoftheweek(encodedate(strtoint(CBX1.text),strtoint(CBX2.text),strtoint(DBGrideh1.columns[a].title.caption)))=7 then
      begin
        DBGrideh1.columns[a].font.color:=cllime;
        DBGrideh1.columns[a].title.font.color:=cllime;
        DBGrideh1.columns[a].font.style:=[fsitalic];
        DBGrideh1.columns[a].title.font.style:=[fsitalic];
        DBGrideh1.columns[a].title.font.color:=cllime;
      end;
  end;
DBGrideh1.columns[query1.FieldCount-1].width:=55;

end;

procedure TCalendarPre.FormCreate(Sender: TObject);
var i:integer;
    myYear, myMonth, myDay : Word;
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
    CB1.Text:=main.edit2.Text;
    active:=false;
  end;

  DecodeDate(Date(), myYear, myMonth, myDay);
  for i:=0 to CBX1.Items.Count-1 do
  begin
    if strtoint(CBX1.Items[i])=myYear then
    begin
      CBX1.ItemIndex:=i;
      break;
    end;
  end;
  for i:=0 to CBX2.Items.Count-1 do
  begin
    if strtoint(CBX2.Items[i])=myMonth then
    begin
      CBX2.ItemIndex:=i;
      break;
    end;
  end;
end;

procedure TCalendarPre.Button3Click(Sender: TObject);
var   eclApp,WorkBook:olevariant;
 //     xlsFileName:string;
      i,j:integer;
begin

 if DBGrideh1.Visible then
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
            for   i:=0   to   query1.fieldCount-1   do
              begin
                eclApp.Cells(1,i+1):=query1.fields[i].FieldName;
                eclApp.Cells.item[1,i+1].font.size:='8';
              end;

         query1.First;
         j:=2;
         while   not   query1.Eof   do
           begin
             for   i:=0   to   query1.FieldCount-1   do
               begin
                 eclApp.Cells(j,i+1):=query1.Fields[i].Value;
                 eclApp.Cells.item[j,i+1].font.size:='8';
               end;
             query1.Next;
             inc(j);
           end;
        eclapp.columns.autofit;
        eclApp.Visible:=True;
      except
        on   F:Exception   do
          showmessage(F.Message);
      end;
    end;
  end ;
end;

procedure TCalendarPre.DBGridEh1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin

if query1.fieldbyname('SB').value='Plan' then
  begin
    dbgrideh1.canvas.brush.Color:=$00FCCBCD;
    DBGridEh1.DefaultDrawColumnCell(Rect,DataCol,Column, State);
  end;
end;

procedure TCalendarPre.FormDestroy(Sender: TObject);
begin
calendarpre:=nil;
end;

end.
