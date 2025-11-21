unit InnerBoxScanTickRpt1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ExtCtrls, Dateutils, Comobj ;

type
  TInnerBoxScanTickRpt = class(TForm)
    Panel1: TPanel;
    Label5: TLabel;
    Label7: TLabel;
    Button1: TButton;
    DepNMEdit: TEdit;
    Button2: TButton;
    DBGridEh1: TDBGridEh;
    Query1: TQuery;
    DataSource1: TDataSource;
    Label2: TLabel;
    CBX1: TComboBox;
    CBX2: TComboBox;
    Label1: TLabel;
    CheckBox1: TCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Query1AfterOpen(DataSet: TDataSet);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
    procedure ExportDefaultExcel();
  public
    { Public declarations }
  end;

var
  InnerBoxScanTickRpt: TInnerBoxScanTickRpt;

implementation
  uses main1,FunUnit;
{$R *.dfm}

procedure TInnerBoxScanTickRpt.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=CaFree;
end;

procedure TInnerBoxScanTickRpt.FormDestroy(Sender: TObject);
begin
  InnerBoxScanTickRpt:=nil;
end;

procedure TInnerBoxScanTickRpt.Button1Click(Sender: TObject);
var iYear,iMonth,iDay :word;
    i:integer;
    sDate,eDate:TDateTime;
begin
  //
  iYear:=strtoint(CBX1.text);
  iMonth:=strtoint(CBX2.text);  
  iDay:=1;
  sdate:=EncodeDate(iYear,iMonth,iDay);
  edate:=endofthemonth(sdate);
  decodedate(edate,iYear,iMonth,iDay);

  with Query1 do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Select SMZL.DepName,SB');
    SQL.Add('      ,sum(Qty) as Total ');
    for i:=1 to iDay do
    begin
      SQL.Add('       ,sum(case  when SMZL.NDay='+inttostr(i)+' then Qty end) as ['+inttostr(i)+']');
    end;
    SQL.Add('from (');
    SQL.Add('	Select SMZL_TX.DepNO,BDepartment.DepName,Sum(Qty) as Qty,datepart(day, SMZL_TX.ScanDate) as NDay,''1.Packing包裝'' as SB ');
    SQL.Add('	from LIY_TYXUAN.dbo.SMZL_TX SMZL_TX');
    SQL.Add('	left join BDepartment on BDepartment.ID=SMZL_TX.DepNO ');
    SQL.Add('	where   Convert(smalldatetime,convert(varchar,SMZL_TX.ScanDate,111)) between '''+Formatdatetime('yyyy/MM/dd',sDate)+''' and '''+Formatdatetime('yyyy/MM/dd',eDate)+''' ');
    if DepNMEdit.Text<>'' then
    SQL.Add('         and BDepartment.DepName like '''+DepNMEdit.Text+'%''');
    SQL.Add('	Group by  SMZL_TX.DepNO,BDepartment.DepName,datepart(day, SMZL_TX.ScanDate) ');
    if CheckBox1.Checked=true then
    begin
    SQL.Add('	Union all');
    SQL.Add('	Select YWCP.DepNO,BDepartment.DepName,Sum(Qty) as Qty,datepart(day, YWCP.INDATE) as NDay,''2.InWarehouse成品倉'' as SB ');
    SQL.Add('	from YWCP');
    SQL.Add('	left join BDepartment on BDepartment.ID=YWCP.DepNO');
    SQL.Add('	where   Convert(smalldatetime,convert(varchar,YWCP.INDATE,111)) between '''+Formatdatetime('yyyy/MM/dd',sDate)+''' and '''+Formatdatetime('yyyy/MM/dd',eDate)+''' ');
    if DepNMEdit.Text<>'' then
    SQL.Add('         and BDepartment.DepName like '''+DepNMEdit.Text+'%''');
    SQL.Add('	Group by  YWCP.DepNO,BDepartment.DepName,datepart(day, YWCP.INDATE)');
    end;
    SQL.Add(') SMZL ');
    SQL.Add('Group by SMZL.DepName,SMZL.SB');
    SQL.Add('order by SMZL.DepName,SMZL.SB');
    //funcObj.WriteErrorLog(sql.Text);
    Active:=true;
  end;
  //

end;

procedure TInnerBoxScanTickRpt.FormCreate(Sender: TObject);
var
  myYear, myMonth, myDay : Word;
  i:integer;
begin
  // Load year-month
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

procedure TInnerBoxScanTickRpt.Query1AfterOpen(DataSet: TDataSet);
var i:integer;
begin
   with DBGrideh1 do
   begin
     columns[0].Width:=100;
     columns[0].title.titlebutton:=true;
     columns[0].title.caption:='單位線別|Lean';
     columns[1].Width:=120;
     columns[1].title.caption:='類別|SB';
     columns[2].Width:=45;
     columns[2].title.caption:='總雙數|Qty';
     for i:=3 to query1.FieldCount-1 do
     begin
         Tfloatfield(query1.Fields[i]).displayformat:='##,#0' ;
         if dayoftheweek(encodedate(strtoint(CBX1.text),strtoint(CBX2.text),strtoint(columns[i].title.caption)))=7 then
         begin
             columns[i].font.color:=clred;
             columns[i].font.style:=[fsitalic];
             columns[i].title.font.style:=[fsitalic];
             columns[i].title.font.color:=clred;
         end;
         columns[i].Width:=45;
         columns[i].Title.Caption:='日  期  ( '+CBX1.text+' / '+CBX2.text+' )|'+columns[i].Title.Caption;
     end;
   end;

end;

procedure TInnerBoxScanTickRpt.ExportDefaultExcel();
var eclApp,WorkBook:olevariant;
    i,j:integer;
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
    eclapp.columns.autofit;
    showmessage('Succeed.');
    eclApp.Visible:=True;
  except
    on   F:Exception   do
      showmessage(F.Message);
  end;
end;

procedure TInnerBoxScanTickRpt.Button2Click(Sender: TObject);
begin
  ExportDefaultExcel();
end;

end.
