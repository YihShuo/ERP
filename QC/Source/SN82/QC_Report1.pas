unit QC_Report1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GridsEh, DBGridEh, ComCtrls, StdCtrls, Buttons, ExtCtrls, comobj,
  DBTables, DB, DateUtils, FunUnit;

type
  TQC_Report = class(TForm)
    Panel1: TPanel;
    Label2: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Button1: TButton;
    Button2: TButton;
    edtRY: TEdit;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    CheckBox1: TCheckBox;
    DBGrdh1: TDBGridEh;
    WOPR_AE: TQuery;
    DataSource1: TDataSource;
    WOPR_AEQty: TSmallintField;
    WOPR_AEYWSM: TStringField;
    WOPR_AEZWSM: TStringField;
    Label1: TLabel;
    edtLine: TEdit;
    Label4: TLabel;
    EditXuong: TEdit;
    Query1: TQuery;
    SmallintField1: TSmallintField;
    StringField1: TStringField;
    StringField2: TStringField;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  QC_Report: TQC_Report;

implementation

{$R *.dfm}

procedure TQC_Report.Button1Click(Sender: TObject);
begin
   with WOPR_AE do
   begin
     Active:=false;
     SQL.Clear;
     SQL.Add('select sum(QCRD_AE.Qty) as Qty,QCBLYY.YWSM,QCBLYY.ZWSM');
     SQL.Add('from QCR_AE left join QCRD_AE on QCRD_AE.ProNo=QCR_AE.ProNo');
     SQL.Add('left join QCBLYY on QCBLYY.YYBH=QCRD_AE.YYBH and QCBLYY.GSBH=''VA12'' and DFL=''AE''');
     SQL.Add('left join BDepartment on BDepartment.ID=QCR_AE.DepNo');
     SQL.Add('where 1=1 and QCRD_AE.YYBH<>''''');
     if edtLine.Text<>'' then
      SQL.Add('  and BDepartment.DepName like ''%'+edtLine.Text+'%'' ');
     if EditXuong.Text<>'' then
      SQL.Add('  and BDepartment.Xuong like ''%'+EditXuong.Text+'%'' ');
     if edtRY.Text<> '' then
       SQL.Add('and QCR_AE.SCBH ='''+edtRY.Text+'''');
     if CheckBox1.Checked=true then
       SQL.Add('and  CONVERT(varchar(10),QCR_AE.SCDate,111) between ''' + formatdatetime('yyyy/MM/dd', DTP1.date) + ''' and ''' + formatdatetime('yyyy/MM/dd', DTP2.date) + ''' ');
     SQL.Add('group by QCBLYY.YWSM,QCBLYY.ZWSM');
     SQL.Add('order by QCRD_AE.Qty desc');
     //funcObj.WriteErrorLog(sql.Text);
     Active:=true;
   end;
end;

procedure TQC_Report.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=Cafree;
end;

procedure TQC_Report.FormDestroy(Sender: TObject);
begin
  QC_Report:=nil;
end;

procedure TQC_Report.FormCreate(Sender: TObject);
begin
  DTP1.Date:=Date()-1;
  DTP2.Date:=Date();
end;

procedure TQC_Report.Button2Click(Sender: TObject);
var
  eclApp,WorkBook:olevariant;
  i,j,k:integer;
  NameTab:string;
begin
  if WOPR_AE.Active then
  begin
    if WOPR_AE.recordcount=0 then
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

  with Query1 do
  begin
     Active:=false;
     SQL.Clear;
     SQL.Add('select sum(QCRD_AE.Qty) as Qty,QCBLYY.YWSM,QCBLYY.ZWSM');
     SQL.Add('from QCR_AE left join QCRD_AE on QCRD_AE.ProNo=QCR_AE.ProNo');
     SQL.Add('left join QCBLYY on QCBLYY.YYBH=QCRD_AE.YYBH and QCBLYY.GSBH=''VA12'' and DFL=''AE''');
     SQL.Add('left join BDepartment on BDepartment.ID=QCR_AE.DepNo');
     SQL.Add('where 1=1 and QCRD_AE.YYBH<>''''');
     if edtLine.Text<>'' then
      SQL.Add('  and BDepartment.DepName like ''%'+edtLine.Text+'%'' ');
     if EditXuong.Text<>'' then
      SQL.Add('  and BDepartment.Xuong like ''%'+EditXuong.Text+'%'' ');
     if edtRY.Text<> '' then
       SQL.Add('and QCR_AE.SCBH ='''+edtRY.Text+'''');
     if CheckBox1.Checked=true then
       SQL.Add('and  CONVERT(varchar(10),QCR_AE.SCDate,111) between ''' + formatdatetime('yyyy/MM/dd', DTP1.date) + ''' and ''' + formatdatetime('yyyy/MM/dd', DTP2.date) + ''' ');
     SQL.Add('group by QCBLYY.YWSM,QCBLYY.ZWSM');
     SQL.Add('order by QCRD_AE.Qty desc');
     //funcObj.WriteErrorLog(sql.Text);
     Active:=true;
   end;
  try
    WorkBook:=eclApp.workbooks.Add;
    if CheckBox1.Checked then
      NameTab:=formatdatetime('yyyy/MM/dd',DTP1.date)+' - '+formatdatetime('yyyy/MM/dd', DTP2.date);
    if edtLine.Text <> '' then
      NameTab:=NameTab+' - '+edtLine.Text;
    if EditXuong.Text<>'' then
      NameTab:=NameTab+' - '+EditXuong.Text;
    eclApp.Cells(1,2):=NameTab;
    eclApp.Cells(2,1):='NO';
    eclApp.Cells(2,2):='Defect Name';
    eclApp.Cells(2,3):='Defect Qty';
    eclApp.Cells(2,4):='Defect Qty/All Defect Qty';
    eclApp.Range[eclApp.Cells[1,1],eclApp.Cells[1,4]].merge;
    Query1.First;
    j:=3;
    while   not  Query1.Eof   do
    begin
      eclApp.Cells(j,1):=j-2;
      for i:=0 to DBGrdh1.Columns.Count-1 do
      begin
        eclApp.Cells(j,2):=Query1.FieldByName('YWSM').Asstring;
        eclApp.Cells(j,3):=Query1.FieldByName('Qty').Asstring;
        eclApp.Cells(j,4):='=C'+inttostr(j)+'/SUM(C3:C'+inttostr(Query1.RecordCount+2)+')';
        eclApp.Cells[j,4].NumberFormatLocal := '0.00%';
        //eclApp.Cells.Cells.item[j,i+2].font.size:='8';
      end;
      Query1.Next;
      inc(j);
      for k:=1 to 4 do
      begin
        eclApp.range[eclApp.cells[1,1],eclApp.cells[j-1,4]].borders[k].linestyle:=1;
      end;
    end;
    eclApp.Cells(j,2):='Total';
    eclApp.Cells(j,3):='=SUM(C2:C'+inttostr(j-1)+')';

    eclapp.columns.autofit;
    showmessage('Succeed.');
    eclApp.Visible:=True;
  except
    on   F:Exception   do
      showmessage(F.Message);
  end;

end;

end.
