unit Traceability_Warehouse_Chemical1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ExtCtrls,comobj,IniFiles,ShellApi,
  ComCtrls;

type
  TTraceability_Warehouse_Chemical = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label6: TLabel;
    MatNoEdit: TEdit;
    Button1: TButton;
    MatNameEdit: TEdit;
    Button3: TButton;
    DBGridEh1: TDBGridEh;
    Query1: TQuery;
    DS1: TDataSource;
    Label2: TLabel;
    SuppIDEdit: TEdit;
    Label3: TLabel;
    SuppNameEdit: TEdit;
    Label4: TLabel;
    DTP1: TDateTimePicker;
    Label5: TLabel;
    DTP2: TDateTimePicker;
    Query1RKNO: TStringField;
    Query1CLBH: TStringField;
    Query1YWPM: TStringField;
    Query1DWBH: TStringField;
    Query1CQDH: TStringField;
    Query1CGQty: TCurrencyField;
    Query1RKQty: TCurrencyField;
    Query1CFMDate: TDateTimeField;
    Query1RKDate: TDateTimeField;
    Query1CGNO: TStringField;
    Query1KCBH: TStringField;
    Query1DOCNO: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    Address,CKBH:string;
    { Private declarations }
    procedure ReadIni();
  public
    { Public declarations }
  end;

var
  Traceability_Warehouse_Chemical: TTraceability_Warehouse_Chemical;

implementation

uses main1,fununit;

{$R *.dfm}
procedure TTraceability_Warehouse_Chemical.ReadIni();
var MyIni :Tinifile;
    AppDir:string;
begin
  //
  CKBH:='VTXW';
  AppDir:=ExtractFilePath(Application.ExeName);
  if FileExists(AppDir+'\ComName.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ComName.ini');
      Address:=MyIni.ReadString('ERP','Address','');
      CKBH:=MyIni.ReadString('ERP','Purchase_N3F1_CKBH','VTXW');
    finally
      MyIni.Free;
    end;
  end;
end;
//

procedure TTraceability_Warehouse_Chemical.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TTraceability_Warehouse_Chemical.FormDestroy(Sender: TObject);
begin
  Traceability_Warehouse_Chemical:=nil;
end;

procedure TTraceability_Warehouse_Chemical.Button1Click(Sender: TObject);
begin
  with Query1 do
  begin
    active:=false;
    sql.Clear;
    sql.Add(' select RKZL.RKNO,RKZL.CLBH,CLZL.YWPM, CLZL.DWBH , case when  CGZLS.ZSBH=''VC115'' then ''TW'' else ''VN'' end as CQDH ');
    sql.Add('		     ,isnull(CGZLS.Qty, 0) as CGQty, RKZL.RKQty, CGZLS.CFMDate, RKZL.RKDate,CGZLS.CGNO,RKZL.DOCNO,KCZLS.KCBH  ');
    sql.Add(' from  ( ');
    sql.Add('	select	KCRK.ZSNO,KCRKS.CLBH,sum(KCRKS.Qty ) as RKQty, KCRK.RKNO as RKNO,max(KCRK.USERDate) as RKDate ');
    sql.Add('         ,Declaretion,case when ((left(KCRK.HGLB,2) in (''NK'',''TC'',''KD'')) or (KCRK.HGLB=''H11''))  then KCRK.DOCNO else KCRK.MEMO end as DOCNO,KCRK.ZSBH,KCRK.CKBH');
    sql.Add(' from  KCRKS with (nolock) ');
    sql.Add('	left join KCRK with (nolock)  on KCRK.RKNO=KCRKS.RKNO ');
    sql.Add(' left join KCPK on kcrk.RKNO=kcpk.PKNO ');
    sql.Add(' where KCRK.SFL<>''THU HOI'' and KCRK.CKBH='''+CKBH+''' ');
    sql.Add('	and convert(smalldatetime,convert(varchar,KCRK.USERDATE,111)) between ');
    sql.add('         '''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''' and  '''+formatdatetime('yyyy/MM/dd',DTP2.Date) +''' ');
    sql.Add(' group by KCRK.ZSNO,KCRKS.CLBH,Declaretion,KCRK.DOCNO,KCRK.MEMO,KCRK.ZSBH,KCRK.CKBH,KCRK.RKNO,KCRK.HGLB )RKZL ');
    sql.Add(' left join ( select CGZLS.CGNO, CGZLS.CLBH, CGZLS.Qty, CGZL.CGDate, CGZLS.YQDate, CGZLS.CFMDate, CGZL.GSBH, CGZL.ZSBH ');
    sql.Add('             from CGZLS ');
    sql.Add('			        left join CGZL on CGZl.CGNO=CGZLS.CGNO ');
    sql.Add('	where CGZLS.YN!=0 and CGZLS.CLBH like ''W%'' ');
    sql.Add(' and CGZL.GSBH = '''+main.edit2.Text+''' ');
    sql.Add(' and CGZL.CGLX = ''4''   ) CGZLS on CGZLS.CGNO=RKZL.ZSNO and CGZLS.CLBH=RKZL.CLBH ');
    sql.Add(' left join CLZL on RKZL.CLBH = CLZL.CLDH  ');
    sql.Add(' left join zszl on RKZL.zsbh=zszl.zsdh ');
    sql.Add(' left join KCZLS on KCZLS.CLBH=RKZL.CLBH and KCZLS.CKBH=RKZL.CKBH ');
    sql.Add(' where RKZL.CLBH like ''W%''  ');
    if MatNoEdit.Text <> '' then
      sql.Add(' and RKZL.CLBH  like '''+MatNoEdit.Text+'%'' ');
    if MatNameEdit.Text <> '' then
      sql.Add(' and CLZL.YWPM like ''%'+ MatNameEdit.Text+'%'' ');
    if SuppIDEdit.Text <> '' then
      sql.Add(' and RKZL.ZSBH like '''+SuppIDEdit.Text+'%'' ');
    if SuppNameEdit.Text <> '' then
      sql.Add(' and ZSZL.ZSYWJC like ''%'+ SuppNameEdit.Text+'%'' ');
    sql.Add(' order by RKZL.RKNO asc ');
    //funcobj.WriteErrorLog(sql.Text);
    active:=true;
  end;
end;

procedure TTraceability_Warehouse_Chemical.FormCreate(Sender: TObject);
begin
  DTP1.Date:= Date-30;
  DTP2.Date:= Date;
  ReadIni();
end;

procedure TTraceability_Warehouse_Chemical.Button3Click(Sender: TObject);
var
  eclApp,WorkBook:olevariant;
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
        if ((DBGridEh1.Fields[i].FieldName = 'DOCNO') or (DBGridEh1.Fields[i].FieldName = 'Declaretion')) then
            eclApp.Cells(j,i+1):= #39 + DBGridEh1.Fields[i].Value
        else
            eclApp.Cells(j,i+1):=DBGridEh1.Fields[i].Value;
        if ((DBGridEh1.Fields[i].FieldName = 'RKDate') or (DBGridEh1.Fields[i].FieldName = 'CGDate')) then
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
    //eclapp.columns.autofit;
    showmessage('Succeed.');
    eclApp.Visible:=True;
  except
    on   F:Exception   do
      showmessage(F.Message);
  end;
end;


end.
