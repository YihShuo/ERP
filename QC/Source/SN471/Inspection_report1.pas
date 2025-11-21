unit Inspection_report1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GridsEh, DBGridEh, ComCtrls, StdCtrls, Buttons, ExtCtrls, comobj,
  DBTables, DB, DateUtils, Grids, DBGrids, Menus, Mask, DBCtrls,fununit;


type
  TInspection_report = class(TForm)
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
    Button3: TButton;
    Carton: TQuery;
    CartonDepName: TStringField;
    CartonDDBH: TStringField;
    CartonYWSM: TStringField;
    CartonTotal: TIntegerField;
    CartonCartonOK: TIntegerField;
    CartonNotInsQty: TIntegerField;
    CartonCarton: TStringField;
    CartonNotCarton: TStringField;
    DataSource1: TDataSource;
    DBGrdh1: TDBGridEh;
    Query1: TQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    XXCC:array of string;
    HIorDI:String;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Inspection_report: TInspection_report;

implementation

{$R *.dfm}

procedure TInspection_report.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=Cafree;
end;

procedure TInspection_report.FormDestroy(Sender: TObject);
begin
  Inspection_report:=nil;
end;

procedure TInspection_report.FormCreate(Sender: TObject);
begin
  DTP1.Date:=Date();
  DTP2.Date:=Date();
end;

procedure TInspection_report.Button1Click(Sender: TObject);
var i:integer;
begin
   if RB1.Checked then
   begin
      HIorDI:='HI';
   end else
   begin
      HIorDI:='DI';
   end;
   with Carton do
   begin
     Active:=false;
     SQL.Clear;
     SQL.Add('select   ');
     SQL.Add('CAST(substring (( select ''/'' + BDepartment.DepName  ');
     SQL.Add('                                      from WOPR_MA left join BDepartment on WOPR_MA.DepNo=BDepartment.ID  ');
     SQL.Add('  									where WOPR_MA.SCBH=cs.DDBH   and WOPR_MA.GXLB='''+HIorDI+''' group by BDepartment.DepName order by CAST(BDepartment.DepName AS varchar)  ');
     SQL.Add('                                      for XML Path ('''')),2,1000) as varchar(1000)  ) as DepName									  ');
     SQL.Add(',cs.DDBH,LBZLS.YWSM,Total,CartonOK,(Total-CartonOK) as NotInsQty  ');
     SQL.Add(',CAST(substring (( select ''/'' + WOPR_Carton.Carton  ');
     SQL.Add('                                      from WOPR_Carton where WOPR_Carton.DDBH=cs.DDBH and WOPR_Carton.CheckCarton=''1''  and WOPR_Carton.GXLB='''+HIorDI+''' order by CAST(WOPR_Carton.Carton AS Integer)  ');
     SQL.Add('                                      for XML Path ('''')),2,8000) as varchar(8000)  ) as Carton  ');
     SQL.Add(',CAST(substring (( select ''/'' + WOPR_Carton.Carton  ');
     SQL.Add('                                      from WOPR_Carton where WOPR_Carton.DDBH=cs.DDBH and WOPR_Carton.CheckCarton=''0''  and WOPR_Carton.GXLB='''+HIorDI+''' order by CAST(WOPR_Carton.Carton AS Integer)  ');
     SQL.Add('                                      for XML Path ('''')),2,8000) as varchar(8000)  ) as NotCarton  ');
     SQL.Add('from WOPR_Carton cs Left join DDZL on DDZL.DDBH=cs.DDBH   ');
     SQL.Add('left join (select WOPR_Carton.DDBH,count (WOPR_Carton.Carton )as CartonOK from WOPR_Carton where CheckCarton=1 and WOPR_Carton.GXLB='''+HIorDI+''' group by WOPR_Carton.DDBH) T2 on T2.DDBH=cs.DDBH --and T2.SCDate= cs.SCDate  ');
     SQL.Add('left join (select WOPR_Carton.DDBH,max (CAST(WOPR_Carton.Carton AS Integer)) as Total from WOPR_Carton where WOPR_Carton.GXLB='''+HIorDI+''' group by WOPR_Carton.DDBH) T4 on T4.DDBH=cs.DDBH  ');
     SQL.Add('left join LBZLS on LBZLS.LB=''06'' and LBZLS.LBDH=DDZL.DDGB  ');
     SQL.Add('where 1=1 and cs.CheckCarton=''1'' and cs.GXLB='''+HIorDI+'''  ');
     if edtRY.Text<> '' then
       SQL.Add('and cs.DDBH ='''+edtRY.Text+'''');
      if CheckBox1.Checked=true then
       SQL.Add('and  CONVERT(varchar(10),cs.SCDate,111) between ''' + formatdatetime('yyyy/MM/dd', DTP1.date) + ''' and ''' + formatdatetime('yyyy/MM/dd', DTP2.date) + ''' ');
     SQL.Add('group by cs.DDBH,LBZLS.YWSM,Total,CartonOK  ');
     SQL.Add('order by DepName');
     //funcObj.WriteErrorLog(sql.Text);
     Active:=true;
   end;
end;

procedure TInspection_report.Button3Click(Sender: TObject);
var
  eclApp,WorkBook:olevariant;
  i,j,k,f,Qty:integer;
begin
  if Carton.Active then
  begin
    if Carton.recordcount=0 then
    begin
      showmessage('No record.');
      abort;
    end;
  end else
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
       SQL.Add('select   ');
       SQL.Add('CAST(substring (( select ''/'' + BDepartment.DepName  ');
       SQL.Add('                                      from WOPR_MA left join BDepartment on WOPR_MA.DepNo=BDepartment.ID  ');
       SQL.Add('  									where WOPR_MA.SCBH=cs.DDBH   and WOPR_MA.GXLB='''+HIorDI+''' group by BDepartment.DepName order by CAST(BDepartment.DepName AS varchar)  ');
       SQL.Add('                                      for XML Path ('''')),2,1000) as varchar(1000)  ) as DepName									  ');
       SQL.Add(',cs.DDBH,LBZLS.YWSM,Total,CartonOK,(Total-CartonOK) as NotInsQty  ');
       SQL.Add(',CAST(substring (( select ''/'' + WOPR_Carton.Carton  ');
       SQL.Add('                                      from WOPR_Carton where WOPR_Carton.DDBH=cs.DDBH and WOPR_Carton.CheckCarton=''1''  and WOPR_Carton.GXLB='''+HIorDI+''' order by CAST(WOPR_Carton.Carton AS Integer)  ');
       SQL.Add('                                      for XML Path ('''')),2,8000) as TEXT  ) as Carton  ');
       SQL.Add(',CAST(substring (( select ''/'' + WOPR_Carton.Carton  ');
       SQL.Add('                                      from WOPR_Carton where WOPR_Carton.DDBH=cs.DDBH and WOPR_Carton.CheckCarton=''0''  and WOPR_Carton.GXLB='''+HIorDI+''' order by CAST(WOPR_Carton.Carton AS Integer)  ');
       SQL.Add('                                      for XML Path ('''')),2,8000) as TEXT  ) as NotCarton  ');
       SQL.Add('from WOPR_Carton cs Left join DDZL on DDZL.DDBH=cs.DDBH   ');
       SQL.Add('left join (select WOPR_Carton.DDBH,count (WOPR_Carton.Carton )as CartonOK from WOPR_Carton where CheckCarton=1 and WOPR_Carton.GXLB='''+HIorDI+''' group by WOPR_Carton.DDBH) T2 on T2.DDBH=cs.DDBH --and T2.SCDate= cs.SCDate  ');
       SQL.Add('left join (select WOPR_Carton.DDBH,max (CAST(WOPR_Carton.Carton AS Integer)) as Total from WOPR_Carton where WOPR_Carton.GXLB='''+HIorDI+''' group by WOPR_Carton.DDBH) T4 on T4.DDBH=cs.DDBH  ');
       SQL.Add('left join LBZLS on LBZLS.LB=''06'' and LBZLS.LBDH=DDZL.DDGB  ');
       SQL.Add('where 1=1 and cs.CheckCarton=''1'' and cs.GXLB='''+HIorDI+'''  ');
       if edtRY.Text<> '' then
         SQL.Add('and cs.DDBH ='''+edtRY.Text+'''');
        if CheckBox1.Checked=true then
         SQL.Add('and  CONVERT(varchar(10),cs.SCDate,111) between ''' + formatdatetime('yyyy/MM/dd', DTP1.date) + ''' and ''' + formatdatetime('yyyy/MM/dd', DTP2.date) + ''' ');
       SQL.Add('group by cs.DDBH,LBZLS.YWSM,Total,CartonOK  ');
       SQL.Add('order by DepName');
       //funcObj.WriteErrorLog(sql.Text);
       Active:=true;
    end;
    if CheckBox1.Checked then
      eclApp.Cells(1,1):=formatdatetime('yyyy/MM/dd', DTP1.date)+ ' - '+ formatdatetime('yyyy/MM/dd', DTP2.date);
    eclApp.Cells(2,1):='Lean';
    eclApp.Cells(2,2):='RY';
    eclApp.Cells(2,3):='Country';
    eclApp.Cells(2,4):='Cartons Qty';
    eclApp.Cells(2,5):='Inspected Qty';
    eclApp.Cells(2,6):='Not Inspected Qty';
    eclApp.Cells(2,7):='Inspected No';
    eclApp.Cells(2,8):='Not Inspected No';
    Query1.First;
    j:=3;
    Qty:=0;
    while   not  Query1.Eof   do
    begin
      for   i:=0   to   Query1.fieldcount-1   do
      begin
          eclApp.Cells[j,i+1].NumberFormatLocal:='@';
          eclApp.Cells(j,1):=Query1.FieldByName('DepName').AsString;
          eclApp.Cells(j,2):=Query1.FieldByName('DDBH').AsString;
          eclApp.Cells(j,3):=Query1.FieldByName('YWSM').AsString;
          eclApp.Cells(j,4):=Query1.FieldByName('Total').AsString;
          eclApp.Cells(j,5):=Query1.FieldByName('CartonOK').AsString;
          eclApp.Cells(j,6):=Query1.FieldByName('NotInsQty').AsString;
          eclApp.Cells(j,7):=Query1.FieldByName('Carton').AsString;
          eclApp.Cells(j,8):=Query1.FieldByName('NotCarton').AsString;
      end;
      if Query1.FieldByName('NotInsQty').Value=0 then Qty:=Qty+1;

      Query1.Next;
      inc(j);
      for k:=1 to 4 do
      begin
        eclApp.range[eclApp.cells[2,1],eclApp.cells[j-1,8]].borders[k].linestyle:=1;
      end;
    end;
    eclApp.Cells(Query1.RecordCount+3,3):='Finished inspection RYs qty';
    eclApp.Cells(Query1.RecordCount+4,3):='Not finished inspection RYs qty';
    eclApp.Cells(Query1.RecordCount+3,4):=Qty;
    eclApp.Cells(Query1.RecordCount+4,4):=Query1.RecordCount-Qty;
    eclapp.columns.autofit;
    showmessage('Succeed.');
    eclApp.Visible:=True;
  except
    on   F:Exception   do
      showmessage(F.Message);
  end;

end;

end.
