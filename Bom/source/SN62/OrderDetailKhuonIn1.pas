unit OrderDetailKhuonIn1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBTables, DB, StdCtrls, ComCtrls, Buttons, DBCtrls, GridsEh,
  DBGridEh, ExtCtrls, Menus,comobj;

type
  TOrderDetailKhuonIn = class(TForm)
    Panel6: TPanel;
    DBGrid3: TDBGridEh;
    Label5: TLabel;
    Label6: TLabel;
    Edit5: TEdit;
    Label7: TLabel;
    DT1: TDateTimePicker;
    DT2: TDateTimePicker;
    Button4: TButton;
    Label8: TLabel;
    DBGrid4: TDBGridEh;
    ZLZLS2Query: TQuery;
    StringField1: TStringField;
    StringField4: TStringField;
    FloatField1: TFloatField;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    StringField8: TStringField;
    IntegerField1: TIntegerField;
    DateTimeField1: TDateTimeField;
    CurrencyField1: TCurrencyField;
    CurrencyField2: TCurrencyField;
    FloatField2: TFloatField;
    StringField10: TStringField;
    ZLZLS2DS: TDataSource;
    DDZLQuery: TQuery;
    DDZLQueryDDBH: TStringField;
    DDZLQueryARTICLE: TStringField;
    DDZLQueryYWPM: TStringField;
    DDZLQueryQUANTITY: TIntegerField;
    DDZLQueryDIENTICH: TFloatField;
    DDZLQueryMEMO: TStringField;
    DDZLQueryUSERID: TStringField;
    DDZLQueryUSERDATE: TDateTimeField;
    DDZLQueryYN: TStringField;
    DDZLQueryCALDATE: TDateTimeField;
    DDZLQueryGSBH: TStringField;
    DDZLDS: TDataSource;
    Edit3: TEdit;
    Qtemp: TQuery;
    Button1: TButton;
    PopupMenu3: TPopupMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure ZLZLS2QueryCalcFields(DataSet: TDataSet);
    procedure Button4Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
    procedure MenuItem2Click(Sender: TObject);
    procedure DBGrid3GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  OrderDetailKhuonIn: TOrderDetailKhuonIn;

implementation

uses DetailKhuonIn_KCLL1, main1, FunUnit, untClipboard;

{$R *.dfm}

procedure TOrderDetailKhuonIn.FormDestroy(Sender: TObject);
begin
  OrderDetailKhuonIn:=nil;
end;

procedure TOrderDetailKhuonIn.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TOrderDetailKhuonIn.FormCreate(Sender: TObject);
begin
  DT1.Date:=NOW-30;
  DT2.Date:=NOW;
end;

procedure TOrderDetailKhuonIn.ZLZLS2QueryCalcFields(DataSet: TDataSet);
begin
  with ZLZLS2Query do
  begin
    if FieldByName('CLSL').value<>0 then
    begin
      FieldByName('Person').value:=FieldByName('Qty').value/FieldByName('CLSL').value*100;
    end;
  end;
end;

procedure TOrderDetailKhuonIn.Button4Click(Sender: TObject);
begin
  with DDZLQuery do
  begin
    active:=false;
    sql.Clear;
    sql.Add('SELECT DDBH,ARTICLE,YWPM,QUANTITY,DIENTICH,MEMO,DDZL.USERID,DDZL.USERDATE,DDZL.YN,ZLZLS2.USERDATE as CALDATE,DDZL.GSBH');
    sql.Add('FROM KHUONIN_DDZL DDZL');
    sql.Add('LEFT JOIN CLZL ON DDZL.ARTICLE=CLZL.CLDH');
    sql.Add('LEFT JOIN ( select distinct ZLBH ,max(userdate) as UserDate from KHUONIN_ZLZLS2 ZLZLS2  group by ZLBH) ZLZLS2 on ZLZLS2.ZLBH=DDZL.DDBH');
    sql.Add('WHERE   convert(smalldatetime,convert(varchar,DDZL.USERDATE,111))  between');
    sql.add('        '''+formatdatetime('yyyy/MM/dd',DT1.Date) +''' and  '''+formatdatetime('yyyy/MM/dd',DT2.Date) +'''');
    if edit3.Text <>'' then
      sql.Add('AND DDZL.DDBH like ''%'+edit3.Text+'%'' ');
    if edit5.Text <>'' then
      sql.Add('AND CLZL.YWPM like ''%'+edit5.Text+'%''');
    sql.Add('ORDER BY DDZL.DDBH');
    active:=true;
  end;
  ZLZLS2Query.Active:=true;
end;

procedure TOrderDetailKhuonIn.Button1Click(Sender: TObject);
  var eclApp,WorkBook:olevariant;
//    xlsFileName:string;
      i,j:integer;
begin
    if DDZLQuery.Active then
    begin
      if DDZLQuery.recordcount=0 then
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
      for i:=0 to DBGrid4.Columns.Count-1 do
      begin
        eclApp.Cells(1,i+2):=DBGrid4.Columns[i].Title.Caption;
      end;
      DDZLQuery.First;
      j:=2;
      while   not  DDZLQuery.Eof   do
      begin
        eclApp.Cells(j,1):=j-1;
        for i:=0 to DBGrid4.Columns.Count-1 do
        begin
          eclApp.Cells(j,i+2):=DBGrid4.Fields[i].Value;
          eclApp.Cells.Cells.item[j,i+2].font.size:='8';
        end;
        DDZLQuery.Next;
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

procedure TOrderDetailKhuonIn.MenuItem1Click(Sender: TObject);
begin
  DetailKhuonIn_KCLL:=TDetailKhuonIn_KCLL.Create(self);
  DetailKhuonIn_KCLL.ShowModal;
end;

procedure TOrderDetailKhuonIn.MenuItem2Click(Sender: TObject);
  var eclApp,WorkBook:olevariant;
//    xlsFileName:string;
      i,j:integer;
begin
    if ZLZLS2Query.Active then
    begin
      if ZLZLS2Query.recordcount=0 then
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
      for i:=0 to DBGrid3.Columns.Count-1 do
      begin
        eclApp.Cells(1,i+2):=DBGrid3.Columns[i].Title.Caption;
      end;
      ZLZLS2Query.First;
      j:=2;
      while   not  ZLZLS2Query.Eof   do
      begin
        eclApp.Cells(j,1):=j-1;
        for i:=0 to DBGrid3.Columns.Count-1 do
        begin
          eclApp.Cells(j,i+2):=DBGrid3.Fields[i].Value;
          eclApp.Cells.Cells.item[j,i+2].font.size:='8';
        end;
        ZLZLS2Query.Next;
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

procedure TOrderDetailKhuonIn.DBGrid3GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if( not ZLZLS2Query.FieldByName('Qty').IsNull) then
  begin
    if  ((strtofloat(floattostr(ZLZLS2Query.FieldByName('Qty').value))>(strtofloat(floattostr(ZLZLS2Query.FieldByName('CLSL').value))*1.01)))   then
    begin
      DBGrid3.canvas.font.color:=clred;
    end;
    if  ((strtofloat(floattostr(ZLZLS2Query.FieldByName('Qty').value))<strtofloat(floattostr(ZLZLS2Query.FieldByName('CLSL').value))) and (ZLZLS2Query.FieldByName('CLSL').value>0))    then
    begin
      DBGrid3.canvas.font.color:=clblue;
    end;
  end;
  
  if(( ZLZLS2Query.FieldByName('Qty').IsNull) and (ZLZLS2Query.FieldByName('CLSL').value>0)) then
  begin
     DBGrid3.canvas.font.color:=clblue;
  end;
end;

end.
