unit FOCList1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, ComCtrls, StdCtrls, ExtCtrls, comobj;

type
  TFOCList = class(TForm)
    Panel1: TPanel;
    Label2: TLabel;
    Label4: TLabel;
    Button1: TButton;
    Button2: TButton;
    Edit1: TEdit;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    Checkbox1: TCheckBox;
    PC1: TPageControl;
    DBGridEh1: TDBGridEh;
    DS1: TDataSource;
    Query1: TQuery;
    Query1RKNO: TStringField;
    Query1CKBH: TStringField;
    Query1ZSBH: TStringField;
    Query1ZSYWJC: TStringField;
    Query1ZSNO: TStringField;
    Query1CLBH: TStringField;
    Query1YWPM: TStringField;
    Query1DWBH: TStringField;
    Query1Qty: TCurrencyField;
    Query1Memo: TStringField;
    Query1UserID: TStringField;
    Query1UserDate: TDateTimeField;
    Query1oldQty: TCurrencyField;
    QTemp: TQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FOCList: TFOCList;

implementation

uses main1;

{$R *.dfm}

procedure TFOCList.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=caFree;
end;

procedure TFOCList.FormDestroy(Sender: TObject);
begin
  FOCList:=nil;
end;

procedure TFOCList.FormCreate(Sender: TObject);
begin
  DTP1.Date:= Date;
  DTP2.Date:= Date;
end;

procedure TFOCList.Button1Click(Sender: TObject);
begin
  with Query1 do
  begin
    active:=false;
    SQL.Clear;
    SQL.Add('select KCRKS_FOC.RKNO,CKBH,ZSBH,ZSZL.ZSYWJC,ZSNO,KCRKS_FOC.CLBH,CLZL.YWPM,CLZL.DWBH,Qty,KCRKS_FOC.Memo,KCRKS_FOC.UserID,KCRKS_FOC.UserDate,Qty as oldQty ');
    SQL.Add('from KCRKS_FOC ');
    SQL.Add('left join KCRK_FOC on KCRK_FOC.RKNO = KCRKS_FOC.RKNO ');
    SQL.Add('left join CLZL on CLZL.CLDH = KCRKS_FOC.CLBH ');
    SQL.Add('left join ZSZL on ZSZL.ZSDH = KCRK_FOC.ZSBH ');
    SQL.Add('where 1=1 and ISNULL(Flowflag,'''')<>''X'' ');
    SQL.Add('and KCRK_FOC.GSBH='''+main.edit2.text+''' ');
    if Edit1.Text <> '' then
      SQL.Add('and ZSYWJC like '''+Edit1.Text+'%'' ');
    if Checkbox1.Checked=true then
    begin
      SQL.Add('and CONVERT(smalldatetime,CONVERT(varchar,KCRK_FOC.USERDATE,111)) between ');
      SQL.Add(' ''' + formatdatetime('yyyy/MM/dd',DTP1.Date) + '''  and  ''' + formatdatetime('yyyy/MM/dd',DTP2.Date) + ''' ');
    end;
    SQL.Add('order by KCRKS_FOC.RKNO ');
    active:=true;
  end;
end;

procedure TFOCList.Button2Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin
  if Query1.Active then
  begin
    if Query1.recordcount=0 then
      begin
        showmessage('No record.');
        abort;
      end;
  end
  else
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
    //eclapp.Cells.NumberFormatLocal:='@';
    for   i:=1   to   Query1.fieldcount   do
    begin
      eclApp.Cells(1,i):=Query1.fields[i-1].FieldName;
    end;
    Query1.First;
    j:=2;
    while   not  Query1.Eof   do
    begin
      eclApp.Cells(j,1):=j-1;
      for   i:=1   to   Query1.fieldcount   do
      begin
        eclApp.Cells(j,i):=Query1.Fields[i-1].Value;
        eclApp.Cells.Cells.item[j,i+1].font.size:='10';
      end;
      Query1.Next;
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

end.
