unit ChemicalReleasedRecords1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, DB, DBTables, StdCtrls, ComCtrls, ExtCtrls, Grids,
  DBGrids,dateutils, GridsEh, DBGridEh,comobj, PrnDbgeh,IniFiles;

type
  TChemicalReleasedRecords = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label6: TLabel;
    MatNoEdit: TEdit;
    Button1: TButton;
    MatNameEdit: TEdit;
    Button3: TButton;
    DBGridEh1: TDBGridEh;
    DS1: TDataSource;
    Query1: TQuery;
    Query1ListNo: TStringField;
    Query1ConfirmDate: TDateTimeField;
    Query1MaterialID: TStringField;
    Query1ywpm: TStringField;
    Query1RY_Begin: TStringField;
    Query1ARTICLE: TStringField;
    Query1Usage: TCurrencyField;
    Query1IssuanceUsage: TCurrencyField;
    Query1dwbh: TStringField;
    Query1LotNO: TStringField;
    Query1KCBH: TStringField;
    Query1UserID: TStringField;
    Query1Dept: TStringField;
    DTP1: TDateTimePicker;
    Label4: TLabel;
    DTP2: TDateTimePicker;
    Label5: TLabel;
    Edit1: TEdit;
    Qtemp: TQuery;
    Query1Serial: TStringField;
    Query1Style: TStringField;
    Query1Note: TStringField;
    CheckBox1: TCheckBox;
    Edit2: TEdit;
    Label2: TLabel;
    Query1FlexID: TStringField;
    Query1SR: TStringField;
    Query1XieMing: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    NDate:TDate;
    procedure ReadIni();
    { Private declarations }
  public
    WH_DiplayFormat:String;
    { Public declarations }
  end;

var
  ChemicalReleasedRecords: TChemicalReleasedRecords;

implementation

uses main1,fununit;

{$R *.dfm}

procedure TChemicalReleasedRecords.ReadIni();
var MyIni :Tinifile;
    AppDir:string;
begin
  WH_DiplayFormat:='#,##0.00';
  AppDir:=ExtractFilePath(Application.ExeName);
  if FileExists(AppDir+'\ComName.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ComName.ini');
      WH_DiplayFormat:=MyIni.ReadString('Warehouse','DiplayFormat','#,##0.00');
    finally
      MyIni.Free;
    end;
  end;

  TCurrencyField(Query1.FieldByName('Usage')).DisplayFormat:=WH_DiplayFormat;
  TCurrencyField(Query1.FieldByName('IssuanceUsage')).DisplayFormat:=WH_DiplayFormat;
end;

procedure TChemicalReleasedRecords.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TChemicalReleasedRecords.FormDestroy(Sender: TObject);
begin
  ChemicalReleasedRecords:=nil;
end;

procedure TChemicalReleasedRecords.Button1Click(Sender: TObject);
begin
  with Query1 do
  begin
    active:=false;
    sql.Clear;
    sql.Add(' Select KCLL.LLNO as ListNo, KCLL.CFMDate as ConfirmDate,KCLLS.CLBH as MaterialID, clzl.ywpm, BDepartment.DepName as Dept, KCLL.UserID, ddzl.ARTICLE, ');
    sql.Add('       KCLLS.SCBH as RY_Begin,KCLLS.TempQty as Usage,KCLLS.Qty as IssuanceUsage, CLZL.dwbh, KCLLS.PONO as LotNo, KCZLS.KCBH, ''Pending'' Serial, ''Pending'' Style, ''Pending'' Note, ');
    sql.Add('       clzl_flex.cldhflex as FlexID, XXZL.XieMing, kfxxzl.DEVCODE as SR  ');
    sql.Add(' From KCLL ');
    sql.Add(' Left join KCLLS on KCLL.LLNO=KCLLS.LLNO ');
    sql.Add(' Left join clzl on clzl.cldh=KCLLS.CLBH ');
    sql.Add(' Left join ddzl on ddzl.ddbh=KCLLS.SCBH ');
    sql.Add(' Left join clzl_flex on clzl.cldh=clzl_flex.cldh ');
    sql.Add(' Left join XXZL with (nolock) on XXZl.XieXing=ddzl.XieXing and XXZL.SheHao=ddzl.SheHao  ');
    sql.Add(' Left join KFXXZL with (nolock) on KFXXZL.XieXing=ddzl.XieXing and KFXXZL.SheHao=ddzl.SheHao ');
    sql.Add(' Left join BDepartment on KCLL.DepID=BDepartment.ID ');
    sql.Add(' Left join KCZLS on KCLL.CKBH=KCZLS.CKBH and KCLLS.CLBH=KCZLS.CLBH ');
    SQL.add(' Left join KCCK on KCCK.CKBH=KCLL.CKBH ');
    sql.Add(' Where KCLLS.CLBH like ''W%''  and KCLLS.SCBH<>''ZZZZZZZZZZ'' and KCCK.GSBH='''+main.Edit2.Text+''' ');
    if CheckBox1.Checked then
    begin
      sql.add('    and convert(smalldatetime,convert(varchar,KCLL.CFMDate,111)) between ');
      sql.add('      '''+formatdatetime('yyyy/MM/dd',DTP1.date )+''' and '''+formatdatetime('yyyy/MM/dd',DTP2.date )+''' ');
    end;
    if Edit1.Text <> '' then
      sql.add('    and KCLL.LLNO like '''+edit1.Text+'%'' ');
    if MatNoEdit.Text <> '' then
      sql.add('    and KCLLS.CLBH like '''+MatNoEdit.Text+'%'' ');
    if MatNameEdit.Text <> '' then
      sql.add('    and clzl.ywpm like ''%'+MatNameEdit.Text+'%'' ');
    if Edit2.Text <> '' then
      sql.add('    and KCLLS.SCBH like '''+Edit2.Text+'%'' ');
    sql.add('order by KCLL.LLNO ');
    //funcobj.WriteErrorLog(sql.Text);
    active:=true;
  end;
end;

procedure TChemicalReleasedRecords.Button3Click(Sender: TObject);
var   eclApp,WorkBook:olevariant;
      i,j,l:integer;
begin
  if query1.Active then
  begin
    if query1.recordcount=0 then
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
    for i:=0 to DBGridEh1.Columns.Count-1 do
    begin
      eclApp.Cells(1,i+1):=DBGridEh1.Columns[i].Title.Caption;
      eclApp.Cells.Cells.item[1,i+1].font.name := 'Calibri';
      eclApp.Cells.Cells.item[1,i+1].font.size:='10';
    end;
    query1.First;
    j:=2;
    while   not  query1.Eof   do
    begin
      eclApp.Cells(j,1):=j-1;
      for i:=0 to DBGridEh1.Columns.Count-1 do
      begin
        eclApp.Cells(j,i+1):=DBGridEh1.Fields[i].Value;
        if (DBGridEh1.Fields[i].FieldName = 'UserID')  then
            eclApp.Cells(j,i+1):= #39 + DBGridEh1.Fields[i].Value;
        if (DBGridEh1.Fields[i].FieldName = 'ConfirmDate') then
           eclApp.ActiveSheet.Cells[j, i + 1].NumberFormat := 'YYYY/MM/DD';
        eclApp.Cells.Cells.item[j,i+1].font.size:='10';
        eclApp.Cells.Cells.item[j,i+1].font.name := 'Calibri';
      end;
      query1.Next;
      inc(j);
      // outline
      for l:=1 to 4 do
      begin
       eclApp.workbooks[1].sheets[1].range[eclApp.workbooks[1].sheets[1].cells[1,1],eclApp.workbooks[1].sheets[1].cells[j-1,i]].borders[l].linestyle:=1;
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

procedure TChemicalReleasedRecords.FormCreate(Sender: TObject);
begin
  with Qtemp do
  begin
    active:=false;
    sql.Clear;
    sql.add('select getdate() as NDate ');
    active:=true;
    Ndate:=fieldbyname('NDate').Value;
    active:=false;
  end;
  //
  DTP1.Date:=Ndate-3;
  DTP2.Date:=Ndate;

  ReadIni();
end;

end.
