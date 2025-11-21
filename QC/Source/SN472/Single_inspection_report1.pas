unit Single_inspection_report1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GridsEh, DBGridEh, ComCtrls, StdCtrls, Buttons, ExtCtrls, comobj,
  DBTables, DB, DateUtils, Grids, DBGrids, Menus, Mask, DBCtrls,fununit;


type
  TSingle_inspection_report = class(TForm)
    Panel1: TPanel;
    Label2: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Button1: TButton;
    edtRY: TEdit;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    CheckBox1: TCheckBox;
    GroupBox1: TGroupBox;
    RB1: TRadioButton;
    RB2: TRadioButton;
    Button4: TButton;
    DBGrdh1: TDBGridEh;
    Query2: TQuery;
    DataSource1: TDataSource;
    Query2SCDate: TDateTimeField;
    Query2USERID: TStringField;
    Query2YWSM: TStringField;
    Query2CartonOK: TIntegerField;
    Query2Total: TIntegerField;
    Query2DepName: TStringField;
    Query2Carton: TStringField;
    Query1: TQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    HIorDI:String;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Single_inspection_report: TSingle_inspection_report;

implementation



{$R *.dfm}

procedure TSingle_inspection_report.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=Cafree;
end;

procedure TSingle_inspection_report.FormDestroy(Sender: TObject);
begin
  Single_inspection_report:=nil;
end;

procedure TSingle_inspection_report.FormCreate(Sender: TObject);
begin
  DTP1.Date:=Date();
  DTP2.Date:=Date();
end;

procedure TSingle_inspection_report.Button1Click(Sender: TObject);
var i:integer;
begin
   if RB1.Checked then
   begin
      HIorDI:='HI';
   end else
   begin
      HIorDI:='DI';
   end;
   with Query2 do
   begin
     Active:=false;
     SQL.Clear;
     SQL.Add('select cs.SCDate,cs.USERID,LBZLS.YWSM,CartonOK,Total,');
     SQL.Add('CAST(substring (( select ''/'' + BDepartment.DepName  ');
     SQL.Add('                                      from WOPR_MA left join BDepartment on WOPR_MA.DepNo=BDepartment.ID  ');
     SQL.Add('  									where WOPR_MA.SCBH=cs.DDBH and WOPR_MA.userid=cs.userid  and WOPR_MA.GXLB='''+HIorDI+'''  group by BDepartment.DepName order by CAST(BDepartment.DepName AS varchar)  ');
     SQL.Add('                                      for XML Path ('''')),2,1000) as varchar(1000)  ) as DepName ');
     SQL.Add(',CAST(substring (( select ''/'' + WOPR_Carton.Carton  ');
     SQL.Add('                                      from WOPR_Carton where WOPR_Carton.DDBH=cs.DDBH and WOPR_Carton.CheckCarton=''1''  and WOPR_Carton.GXLB='''+HIorDI+'''');
     SQL.Add('  									and WOPR_Carton.USERID=cs.USERID and WOPR_Carton.SCDate=cs.SCDate  ');
     SQL.Add('  									order by CAST(WOPR_Carton.Carton AS Integer)  ');
     SQL.Add('                                      for XML Path ('''')),2,1000) as varchar(1000)  ) as Carton  ');
     SQL.Add('from WOPR_Carton cs Left join DDZL on DDZL.DDBH=cs.DDBH   ');
     SQL.Add('left join (select WOPR_MA.SCBH,WOPR_MA.DepNo,WOPR_MA.SCDate,WOPR_MA.GXLB,sum(WOPR_MA.InsQty) as InsQty,WOPR_MA.UserID from WOPR_MA group by WOPR_MA.SCBH,WOPR_MA.DepNo,WOPR_MA.SCDate,WOPR_MA.GXLB,WOPR_MA.UserID) T1  ');
     SQL.Add('              on T1.SCBH=cs.DDBH and T1.GXLB=cs.GXLB and T1.UserID=cs.USERID  ');
     SQL.Add('left join (select WOPR_Carton.DDBH,WOPR_Carton.SCDate,count (WOPR_Carton.Carton )as CartonOK from WOPR_Carton where CheckCarton=1 group by WOPR_Carton.DDBH,WOPR_Carton.SCDate) T2 on T2.DDBH=cs.DDBH and T2.SCDate=cs.SCDate  ');
     SQL.Add('left join (select WOPR_Carton.DDBH,max (CAST(WOPR_Carton.Carton AS Integer)) as Total from WOPR_Carton group by WOPR_Carton.DDBH) T4 on T4.DDBH=cs.DDBH  ');
     SQL.Add('left join LBZLS on LBZLS.LB=''06'' and LBZLS.LBDH=DDZL.DDGB  ');
     SQL.Add('where 1=1 and cs.CheckCarton=''1'' and cs.GXLB='''+HIorDI+''' ');
     if edtRY.Text<> '' then
       SQL.Add('and cs.DDBH ='''+edtRY.Text+'''');
     if CheckBox1.Checked=true then
       SQL.Add('and  CONVERT(varchar(10),cs.SCDate,111) between ''' + formatdatetime('yyyy/MM/dd', DTP1.date) + ''' and ''' + formatdatetime('yyyy/MM/dd', DTP2.date) + ''' ');
     SQL.Add('group by cs.SCDate,cs.USERID,LBZLS.YWSM,CartonOK,cs.DDBH,cs.SCDate,Total  ');
     //funcobj.WriteErrorLog(sql.Text);
     Active:=true;
   end;
end;

procedure TSingle_inspection_report.Button4Click(Sender: TObject);
var
  eclApp,WorkBook:olevariant;
  i,j,k,f,Qty:integer;
begin
  if Query2.Active then
  begin
    if Query2.recordcount=0 then
    begin
      showmessage('No record.');
      abort;
    end;
  end else
  begin
    showmessage('No record.');
    abort;
  end;
  if edtRY.Text='' then
  begin
    showmessage('Ban chua nhap lenh.');
    abort;
  end;
  Button1.Click;
  try
    eclApp:=CreateOleObject('Excel.Application');
    WorkBook:=CreateOleObject('Excel.Sheet');
  except
    Application.MessageBox('NO Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
    Exit;
  end;
  try
    WorkBook:=eclApp.workbooks.Add;
    eclApp.Cells(1,1):=edtRY.Text;
    eclApp.Cells(2,1):='Inspection Day';
    eclApp.Cells(2,2):='Auditor';
    eclApp.Cells(2,3):='Lean';
    eclApp.Cells(2,4):='Country';
    eclApp.Cells(2,5):='Inspected Qty';
    eclApp.Cells(2,6):='Inspected No';
    if RB1.Checked then
    begin
        HIorDI:='HI';
    end else
    begin
        HIorDI:='DI';
    end;
    with Query1 do
    begin
       Active:=false;
       SQL.Clear;
       SQL.Add('select cs.SCDate,cs.USERID,LBZLS.YWSM,CartonOK,Total,');
       SQL.Add('CAST(substring (( select ''/'' + BDepartment.DepName  ');
       SQL.Add('                                      from WOPR_MA left join BDepartment on WOPR_MA.DepNo=BDepartment.ID  ');
       SQL.Add('  									where WOPR_MA.SCBH=cs.DDBH and WOPR_MA.userid=cs.userid  and WOPR_MA.GXLB='''+HIorDI+'''  group by BDepartment.DepName order by CAST(BDepartment.DepName AS varchar)  ');
       SQL.Add('                                      for XML Path ('''')),2,1000) as varchar(1000)  ) as DepName ');
       SQL.Add(',CAST(substring (( select ''/'' + WOPR_Carton.Carton  ');
       SQL.Add('                                      from WOPR_Carton where WOPR_Carton.DDBH=cs.DDBH and WOPR_Carton.CheckCarton=''1''  and WOPR_Carton.GXLB='''+HIorDI+'''');
       SQL.Add('  									and WOPR_Carton.USERID=cs.USERID and WOPR_Carton.SCDate=cs.SCDate  ');
       SQL.Add('  									order by CAST(WOPR_Carton.Carton AS Integer)  ');
       SQL.Add('                                      for XML Path ('''')),2,1000) as TEXT ) as Carton  ');
       SQL.Add('from WOPR_Carton cs Left join DDZL on DDZL.DDBH=cs.DDBH   ');
       SQL.Add('left join (select WOPR_MA.SCBH,WOPR_MA.DepNo,WOPR_MA.SCDate,WOPR_MA.GXLB,sum(WOPR_MA.InsQty) as InsQty,WOPR_MA.UserID from WOPR_MA group by WOPR_MA.SCBH,WOPR_MA.DepNo,WOPR_MA.SCDate,WOPR_MA.GXLB,WOPR_MA.UserID) T1  ');
       SQL.Add('              on T1.SCBH=cs.DDBH and T1.GXLB=cs.GXLB and T1.UserID=cs.USERID  ');
       SQL.Add('left join (select WOPR_Carton.DDBH,WOPR_Carton.SCDate,count (WOPR_Carton.Carton )as CartonOK from WOPR_Carton where CheckCarton=1 group by WOPR_Carton.DDBH,WOPR_Carton.SCDate) T2 on T2.DDBH=cs.DDBH and T2.SCDate=cs.SCDate  ');
       SQL.Add('left join (select WOPR_Carton.DDBH,max (CAST(WOPR_Carton.Carton AS Integer)) as Total from WOPR_Carton group by WOPR_Carton.DDBH) T4 on T4.DDBH=cs.DDBH  ');
       SQL.Add('left join LBZLS on LBZLS.LB=''06'' and LBZLS.LBDH=DDZL.DDGB  ');
       SQL.Add('where 1=1 and cs.CheckCarton=''1'' and cs.GXLB='''+HIorDI+''' ');
       if edtRY.Text<> '' then
         SQL.Add('and cs.DDBH ='''+edtRY.Text+'''');
       if CheckBox1.Checked=true then
         SQL.Add('and  CONVERT(varchar(10),cs.SCDate,111) between ''' + formatdatetime('yyyy/MM/dd', DTP1.date) + ''' and ''' + formatdatetime('yyyy/MM/dd', DTP2.date) + ''' ');
       SQL.Add('group by cs.SCDate,cs.USERID,LBZLS.YWSM,CartonOK,cs.DDBH,cs.SCDate,Total  ');
       //funcobj.WriteErrorLog(sql.Text);
       Active:=true;
    end;
    Query1.First;
    j:=3;
    Qty:=0;
    while   not  Query1.Eof   do
    begin
      for   i:=0   to   Query1.fieldcount-1   do
      begin
          eclApp.Cells[j,i+6].NumberFormatLocal:='@';
          eclApp.Cells(j,1):=Query1.FieldByName('SCDate').AsString;
          eclApp.Cells(j,2):=Query1.FieldByName('USERID').AsString;
          eclApp.Cells(j,3):=Query1.FieldByName('DepName').AsString;
          if Query1.FieldByName('DepName').AsString='' then eclApp.Cells(j,3):='N/A';
          eclApp.Cells(j,4):=Query1.FieldByName('YWSM').AsString;
          eclApp.Cells(j,5):=Query1.FieldByName('CartonOK').AsString;
          eclApp.Cells(j,6):=Query1.FieldByName('Carton').AsString;
      end;
      Query1.Next;
      inc(j);
      for k:=1 to 4 do
      begin
        eclApp.range[eclApp.cells[2,1],eclApp.cells[j-1,6]].borders[k].linestyle:=1;
      end;
    end;
    eclApp.Cells(Query1.RecordCount+3,4):='Total Inspected qty';
    eclApp.Cells(Query1.RecordCount+4,4):='Cartons qty';
    eclApp.Cells(Query1.RecordCount+3,5):='=SUM(E3:E'+inttostr(Query2.RecordCount+2)+')';;
    eclApp.Cells(Query1.RecordCount+4,5):=Query1.FieldByName('Total').AsString;
    eclapp.columns.autofit;
    showmessage('Succeed.');
    eclApp.Visible:=True;
  except
    on   F:Exception   do
      showmessage(F.Message);
  end;

end;

end.
