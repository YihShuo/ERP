unit RTOVData1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, DBCtrls, ExtCtrls,comobj
  ,dateutils,ehlibBDE, GridsEh, DBGridEh, Menus, iniFiles,funUnit;

type
  TRTOVData = class(TForm)
    Panel5: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    Label7: TLabel;
    DBNavigator1: TDBNavigator;
    Edit1: TEdit;
    CBX2: TComboBox;
    CBX3: TComboBox;
    Button1: TButton;
    Button2: TButton;
    Edit4: TEdit;
    RB2: TRadioButton;
    BuyNoEdit: TEdit;
    RB1: TRadioButton;
    RTOV: TQuery;
    DDZLCC: TQuery;
    DS_RTOV: TDataSource;
    DBGridEh1: TDBGridEh;
    RTOVddbh: TStringField;
    RTOVkhpo: TStringField;
    RTOVpairs: TIntegerField;
    RTOVETD: TStringField;
    RTOVOdate: TStringField;
    RTOVC: TIntegerField;
    RTOVS: TIntegerField;
    RTOVA: TIntegerField;
    RTOVI: TIntegerField;
    RTOVO: TIntegerField;
    PopupMenu1: TPopupMenu;
    Detail1: TMenuItem;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure Detail1Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RTOVData: TRTOVData;
  sdate,edate:TDate;

implementation

uses main1, OrderInformation1, RTOV_Detail1;

{$R *.dfm}

procedure TRTOVData.Button1Click(Sender: TObject);
var y,m:word;
begin
  y:=strtoint(CBX2.Text);
  m:=strtoint(CBX3.Text);
  sdate:=encodedate(y,m,1);
  edate:=endofthemonth(sdate);
  with RTOV do
  begin
    active:=false;
    sql.Clear;
    sql.add(' select ddzl.ddbh ,rtstemp.khpo,ddzl.pairs');
    sql.Add('       ,convert(char(10),YWdd.etd,111) as ETD,max(case  when rtstemp.gxlb=''O'' then convert(char(10),rtstemp.datadate,111) end) as ''Odate'' ');
    sql.Add('       ,isnull(sum(case  when rtstemp.gxlb=''C'' then rtstemp.Qty  end),0) as ''C'' ');
    sql.Add('       ,isnull(sum(case  when rtstemp.gxlb=''S'' then rtstemp.Qty  end),0) as ''S'' ');
    sql.Add('       ,isnull(sum(case  when rtstemp.gxlb=''A'' then rtstemp.Qty  end),0) as ''A'' ');
    sql.Add('       ,isnull(sum(case  when rtstemp.gxlb=''I'' then rtstemp.Qty  end),0) as ''I'' ');
    sql.Add('       ,isnull(sum(case  when rtstemp.gxlb=''O'' then rtstemp.Qty  end),0) as ''O'' ');
    sql.add(' from  RTSTemp');
    SQL.Add(' left join ddzl on ddzl.khpo=rtstemp.khpo  ');
    SQL.Add(' left join ywdd on ywdd.ysbh=ddzl.ddbh ');
    sql.Add(' where 1=1 ');
    if edit1.Text<>'' then
       sql.add('      and RTSTemp.RY like ''%'+edit1.text+'%'' ');
    if edit4.Text<>'' then
       sql.add('      and RTSTemp.KHPO like ''%'+edit4.text+'%''');
    if RB1.Checked=true then
       sql.add('      and convert(smalldatetime,convert(varchar,YWDD.ETD,111)) between '''+formatdatetime('yyyy/MM/dd',sdate)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',edate)+'''')
    else
       SQL.Add('      and DDZL.BUYNO like '''+BuyNoEdit.Text+'%'' ');
    sql.add(' and DDZL.GSBH='''+main.edit2.Text+''' ');
    sql.Add(' group by  ddzl.ddbh,rtstemp.khpo,ddzl.pairs,YWdd.etd ');
    sql.add(' order by ywdd.etd,ddzl.ddbh,rtstemp.khpo ');
    //funcobj.WriteErrorLog(sql.Text);
    active:=true;
  end;
end;

procedure TRTOVData.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TRTOVData.FormDestroy(Sender: TObject);
begin
  RTOVData:=nil;
end;

procedure TRTOVData.FormCreate(Sender: TObject);
var
  myYear, myMonth, myDay : Word;
  i:integer;
begin
  //
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
  //
  BuyNoEdit.Text:=FormatDateTime('YYYYMM',Date());

end;


procedure TRTOVData.Button2Click(Sender: TObject);
var   a:string;
      eclApp,WorkBook:olevariant;
      i,j,k:integer;
begin
  if  RTOV.active  then
  begin
    try
      eclApp:=CreateOleObject('Excel.Application');
      WorkBook:=CreateOleObject('Excel.Sheet');
    except
      Application.MessageBox('No Mcrosoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
      Exit;
    end;
    try
      WorkBook:=eclApp.workbooks.Add;
      eclApp.Cells(1,1):='NO';
      for i:=0 to DBGridEh1.Columns.Count-1 do
      begin
        eclApp.Cells(1,i+2):=DBGridEh1.Columns[i].Title.Caption;
      end;
      RTOV.First;
      j:=2;
      while   not  RTOV.Eof   do
      begin
        eclApp.Cells(j,1):=j-1;
        for i:=0 to DBGridEh1.Columns.Count-1 do
        begin
          eclApp.Cells[j,i+3].NumberFormatLocal:='@';
          eclApp.Cells(j,i+2):=DBGridEh1.Fields[i].Value;
          if RTOV.FieldByName('C').Value < RTOV.FieldByName('S').Value then
              eclApp.Range[eclApp.Cells[j,8],eclApp.Cells[j,8]].interior.Color := clRed;
          if RTOV.FieldByName('S').Value < RTOV.FieldByName('A').Value then
              eclApp.Range[eclApp.Cells[j,9],eclApp.Cells[j,9]].interior.Color := clRed;
          if RTOV.FieldByName('A').Value < RTOV.FieldByName('I').Value then
              eclApp.Range[eclApp.Cells[j,10],eclApp.Cells[j,10]].interior.Color := clRed;
          if RTOV.FieldByName('I').Value < RTOV.FieldByName('O').Value then
              eclApp.Range[eclApp.Cells[j,11],eclApp.Cells[j,11]].interior.Color := clRed;

          eclApp.Cells.Cells.Rows[j].font.size:='10';
          eclApp.ActiveSheet.Rows[j].font.name := 'Calibri';
        end;
        RTOV.Next;
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
end;


procedure TRTOVData.DBGridEh1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if ((RTOV.FieldByName('C').Value < RTOV.FieldByName('S').Value) or (RTOV.FieldByName('S').Value < RTOV.FieldByName('A').Value) or (RTOV.FieldByName('A').Value <  RTOV.FieldByName('I').Value) or (RTOV.FieldByName('I').Value < RTOV.FieldByName('O').Value))  then
  begin
    DBGridEh1.canvas.Brush.Color:=clred;
    DBGridEh1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
  end;
end;

procedure TRTOVData.Detail1Click(Sender: TObject);
begin
  RTOV_Detail:=TRTOV_Detail.Create(Self);
  RTOV_Detail.ShowModal();
end;

end.
