unit QRScanIsHours1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ExtCtrls, ComCtrls;

type
  TQRScanISHours = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    Edit2: TEdit;
    Edit1: TEdit;
    DBGrid1: TDBGridEh;
    DBGridEh1: TDBGridEh;
    Qtemp: TQuery;
    HourRep: TQuery;
    DS1: TDataSource;
    Label3: TLabel;
    Label4: TLabel;
    DTP1: TDateTimePicker;
    DTP3: TDateTimePicker;
    DTP4: TDateTimePicker;
    DTP2: TDateTimePicker;
    Label5: TLabel;
    Label6: TLabel;
    In_Out: TQuery;
    Label7: TLabel;
    Label8: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  QRScanISHours: TQRScanISHours;
    NDate:TDate;
implementation
  uses FunUnit;
{$R *.dfm}

procedure TQRScanISHours.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 action:=cafree;
end;

procedure TQRScanISHours.FormDestroy(Sender: TObject);
begin
   QRScanISHours:=nil;
end;

procedure TQRScanISHours.Button1Click(Sender: TObject);
var i:word;
j:integer;
HourValue: string;
begin
  HourRep.Active:=false;
  with Qtemp do
  begin
    active:=false;
    sql.Clear;
    sql.add('select distinct datepart(hour,CutDispatchSSSS.USERDATE) as Hours ');
    sql.add('from CutDispatchSSSS ');
    sql.add('left join BDepartment on BDepartment.ID=CutDispatchSSSS.DepID ');
    sql.add('where BDepartment.DepName like '+''''+'%'+edit2.Text+'%'+'''');
    sql.add('and CutDispatchSSSS.DDBH like '+''''+'%'+edit1.Text+'%'+'''');
    sql.add('      and convert(smalldatetime,convert(varchar,CutDispatchSSSS.USERDATE,121)) between'  +''''+formatdatetime('yyyy/MM/dd',DTP1.datetime)+' '+formatdatetime('hh:mm:ss',DTP2.datetime)+''' and '+''''+formatdatetime('yyyy/MM/dd',DTP3.datetime)+' '+formatdatetime('hh:mm:ss',DTP4.datetime)+''' ');
    sql.add('order by datepart(hour,CutDispatchSSSS.USERDATE) ');
    active:=true;
    if recordcount=0 then
    begin
        showmessage('No out Put today.');
        abort;
    end;
  end;

 with HourRep do
  begin
    active:=false;
    sql.clear;
    sql.add('select PerHours.dates as Date,PerHours.DepID,PerHours.DepName,PerHours.DDBH,PerHours.XieMing');
     while not QTemp.eof do
     begin
        sql.add(', ISNULL(SUM(CASE WHEN Hours=''' + QTemp.FieldByName('Hours').AsString + ''' AND PerHours.Status=''IN'' THEN Qty END), 0) AS [' + QTemp.FieldByName('Hours').AsString + '_IN]');
        sql.add(', ISNULL(SUM(CASE WHEN Hours=''' + QTemp.FieldByName('Hours').AsString + ''' AND PerHours.Status=''OUT'' THEN Qty END), 0) AS [' + QTemp.FieldByName('Hours').AsString + '_OUT]');
       // sql.add(', ISNULL(SUM(CASE WHEN Hours=''' + QTemp.FieldByName('Hours').AsString + ''' AND PerHours.Status=''IN'' THEN Qty END), 0) AS ''' + QTemp.FieldByName('Hours').AsString + '''');
       // sql.add(', ISNULL(SUM(CASE WHEN Hours=''' + QTemp.FieldByName('Hours').AsString + ''' AND PerHours.Status=''OUT'' THEN Qty END), 0) AS ''' + QTemp.FieldByName('Hours').AsString + '''');
         QTemp.Next;
     end;
    sql.add('from (select convert(varchar,CutDispatchSSSS.USERDATE,111) as Dates,CutDispatchSSSS.DepID,BDepartment.DepName,CutDispatchSSSS.DDBH,');
    sql.add(' datepart(Hour,CutDispatchSSSS.USERDATE) as Hours,sum(CutDispatchSSSS.qty) as Qty, CutDispatchSSSS.Status,smdd.XieMing  ');
    sql.add('      from CutDispatchSSSS ');
    sql.add('      left join BDepartment on BDepartment.ID=CutDispatchSSSS.DepID ');
    sql.add('       left join smdd on smdd.DDBH=CutDispatchSSSS.DDBH');
    sql.add('      where BDepartment.DepName like '+''''+'%'+edit2.Text+'%'+''' and CutDispatchSSSS.Status=''IN'' and smdd.GXLB=''C''');
    sql.add('and CutDispatchSSSS.DDBH like '+''''+'%'+edit1.Text+'%'+'''');
    sql.add('            and CutDispatchSSSS.USERDATE between   convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP1.datetime)+' '+formatdatetime('hh:mm:ss',DTP2.datetime)+''') and convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP3.datetime)+' '+formatdatetime('hh:mm:ss',DTP4.datetime)+''') ');
    sql.add('      group by convert(varchar,CutDispatchSSSS.USERDATE,111),CutDispatchSSSS.DepID,BDepartment.DepName,CutDispatchSSSS.DDBH,datepart(Hour,CutDispatchSSSS.USERDATE), CutDispatchSSSS.Status,smdd.XieMing  ');
    sql.add('union all');
    sql.add('select convert(varchar,CutDispatchSSSS.USERDATE,111) as Dates,CutDispatchSSSS.DepID,BDepartment.DepName,CutDispatchSSSS.DDBH,');
    sql.add(' datepart(Hour,CutDispatchSSSS.USERDATE) as Hours,sum(CutDispatchSSSS.qty) as Qty, CutDispatchSSSS.Status,smdd.XieMing  ');
    sql.add('      from CutDispatchSSSS ');
    sql.add('      left join BDepartment on BDepartment.ID=CutDispatchSSSS.DepID ');
    sql.add('       left join smdd on smdd.DDBH=CutDispatchSSSS.DDBH');
    sql.add('      where BDepartment.DepName like '+''''+'%'+edit2.Text+'%'+''' and CutDispatchSSSS.Status=''OUT'' and smdd.GXLB=''C''');
    sql.add('and CutDispatchSSSS.DDBH like '+''''+'%'+edit1.Text+'%'+'''');
    sql.add('            and CutDispatchSSSS.USERDATE between   convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP1.datetime)+' '+formatdatetime('hh:mm:ss',DTP2.datetime)+''') and convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP3.datetime)+' '+formatdatetime('hh:mm:ss',DTP4.datetime)+''') ');
    sql.add('      group by convert(varchar,CutDispatchSSSS.USERDATE,111),CutDispatchSSSS.DepID,BDepartment.DepName,CutDispatchSSSS.DDBH,datepart(Hour,CutDispatchSSSS.USERDATE), CutDispatchSSSS.Status,smdd.XieMing  ');
    sql.add('     ) PerHours ');
    sql.add('group by PerHours.Dates,PerHours.DepID,PerHours.DepName,PerHours.DDBH,PerHours.XieMing  ');
    active:=true;
  end;
  with DBGrideh1 do
   begin
     columns[0].Width:=70;
     columns[1].Width:=60;
     columns[2].Width:=70;
     columns[3].Width:=100;
     columns[4].Width:=140;
     columns[5].Width:=40;
     for j := 6 to Columns.Count - 1 do
     begin
        Columns[j].Footer.ValueType := fvtSum;
        columns[j].Width:=45;
        //Columns[j].Title.TitleButton := True;
     end;

    for j := 6 to Columns.Count - 1 do
      begin
        if not Odd(j) then // Ki?m tra n?u j là s? l?   if not Odd(j) then // Ki?m tra n?u j là s? l?
          begin
          Columns[j].Color := clYellow; // Tô màu n?n vàng
          Columns[j].Footer.Color := clYellow;
    // Columns[j].Font.Color := clBlack; // N?u c?n ch? màu den
          end;
      end;
  end;
   with In_Out do
     begin
       active:=false;
       sql.clear;
       sql.add(' select CutDispatchSSSS.Status,SUM(CutDispatchSSSS.qty) AS TotalQt');
       sql.add('      from CutDispatchSSSS ');
       sql.add('      left join BDepartment on BDepartment.ID=CutDispatchSSSS.DepID ');
       sql.add('       left join smdd on smdd.DDBH=CutDispatchSSSS.DDBH');
       sql.add('      where BDepartment.DepName like '+''''+'%'+edit2.Text+'%'+''' and smdd.GXLB=''C''');
       sql.add('            and CutDispatchSSSS.USERDATE between   convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP1.datetime)+' '+formatdatetime('hh:mm:ss',DTP2.datetime)+''') and convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP3.datetime)+' '+formatdatetime('hh:mm:ss',DTP4.datetime)+''') ');
       sql.add('      group by CutDispatchSSSS.Status');
       active:=true;
          Label7.Caption := In_Out.Fields[1].AsString; // C?t d?u tiên: Status
          In_Out.Next;
          if not In_Out.Eof then
          Label8.Caption := In_Out.Fields[1].AsString // N?u có dòng 2, l?y giá tr?
          else
          Label8.Caption := '0';
   end;
end;

procedure TQRScanISHours.FormCreate(Sender: TObject);
var i:integer;
begin
  with Qtemp do
  begin
    active:=false;
    sql.Clear;
    sql.add('select convert(smalldatetime,convert(varchar,getdate(),111)) as NDate');
    active:=true;
    NDate:=fieldbyname('NDate').value;
  end;
DTP1.Date:=NDate;
DTP3.Date:=NDate;
end;

end.
