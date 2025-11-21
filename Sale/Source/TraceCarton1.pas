unit TraceCarton1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ExtCtrls,ehlibBDE,
  comobj, PrnDbgeh, ComCtrls;

type
  TTraceCarton = class(TForm)
    Panel1: TPanel;
    Button1: TButton;
    Button2: TButton;
    DBGridEh1: TDBGridEh;
    Query1: TQuery;
    DataSource1: TDataSource;
    Query1CGDate: TDateTimeField;
    Query1CGNO: TStringField;
    Button3: TButton;
    PrintDBGridEh1: TPrintDBGridEh;
    cb1: TComboBox;
    Label4: TLabel;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    cb2: TComboBox;
    Label7: TLabel;
    Label8: TLabel;
    Query1GSBH: TStringField;
    Query1CG_ZSBH: TStringField;
    Qtemp: TQuery;
    Edit3: TEdit;
    Label9: TLabel;
    Query1DDBH: TStringField;
    Query1BZDate: TDateTimeField;
    Edit1: TEdit;
    Label1: TLabel;
    Query1CGQty: TIntegerField;
    Query1YN: TStringField;
    Query1YSBH: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TraceCarton: TTraceCarton;

implementation

uses main1,FunUnit;

{$R *.dfm}

procedure TTraceCarton.FormClose(Sender: TObject; var Action: TCloseAction);
begin
action:=cafree;
end;

procedure TTraceCarton.FormDestroy(Sender: TObject);
begin
TraceCarton:=nil;
end;

procedure TTraceCarton.FormCreate(Sender: TObject);
var i:integer;
begin

DTP1.Date:=date-30;
DTP2.date:=date;

if ( main.Edit2.Text = 'VA12' ) or ( main.Edit2.Text = 'VA3' )  or ( main.Edit2.Text = 'VB1' ) or ( main.Edit2.Text = 'VB2') then
  cb2.Text := main.Edit2.Text;

end;

procedure TTraceCarton.Button1Click(Sender: TObject);
var wherestr : string;
begin

  if DateToStr(DTP1.Date) < '2011/07/01' then
  begin
    ShowMessage(DateToStr(DTP1.Date));
    Abort;
  end;

  case cb1.ItemIndex of //物料採購情況
    0:   // 全部
    begin
      wherestr:='';
    end;
    1: // 採購正常
    begin
      wherestr:=' and  ( isnull(YWDD.BZDate,0) <= CGZL.CGDate )  ';
    end;
    2:  // 已採購外箱  但出貨memo在採購後有異動
    begin
      wherestr:=' and ( YWDD.BZDate > CGZL.CGDate ) ';
    end;
    3:  //  訂單被刪除  連結不到 YWDD
    begin
      wherestr:=' and YWDD.YN is null ';
    end;
  end;

  with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('SELECT CGZL.GSBH,YWDD.YSBH, YWBZPO.DDBH, CGZL.CGNO, CGZL.ZSBH as CG_ZSBH, sum(YWBZPO.CTS) as CG_CTS , CGZL.CGDate as CGDate, YWDD.BZDate, YWDD.YN ');
    sql.add('from CGZL                                                       ');
    sql.add('left join (select YSBH,Max(CGNO) as CGNO,MAX(BZDate) as BZDate,MAX(YN) as YN from YWDD  ');
    sql.add('           where CGNO in (select CGNO from CGZL where CGZL.CGLX = 5 ');
    if cb2.Text <> 'ALL' then
    sql.add('                           and CGZL.GSBH=''' + cb2.Text + ''' ');
    sql.add('                           and convert(smalldatetime,convert(varchar,CGZL.CGDate,111)) between   ''' + formatdatetime('yyyy/MM/dd',DTP1.Date) + '''' + 'and ' + ''''+formatdatetime('yyyy/MM/dd',DTP2.Date) + ''') ');
    sql.add('                 and YWDD.DDBH like '''+edit1.Text+'%'' Group by YSBH) YWDD on YWDD.CGNO = CGZL.CGNO     ');
    sql.add('left join YWBZPO on CGZL.CGNO = YWBZPO.MEMO                     ');
    sql.add('where CGZL.CGLX = 5                                             ');
    sql.add('      and convert(smalldatetime,convert(varchar,CGZL.CGDate,111)) between         ');
    sql.add('          ''' + formatdatetime('yyyy/MM/dd',DTP1.Date) + '''' + 'and ' + ''''+formatdatetime('yyyy/MM/dd',DTP2.Date) + '''');
    if Edit1.Text <> '' then
       sql.add('      and YWBZPO.DDBH like '''  + edit1.Text + '%'''                         );
    if cb2.Text <> 'ALL' then
      sql.Add('    and CGZL.GSBH = ''' + cb2.Text + '''                             ');
    sql.add(wherestr);
    sql.add('GROUP BY CGZL.GSBH,YWDD.YSBH, YWBZPO.DDBH, CGZL.CGNO, CGZL.ZSBH, CGZL.CGDate, YWDD.BZDate, YWDD.YN ');
    sql.add('order by CGZL.GSBH, YWBZPO.DDBH');
    //funcObj.WriteErrorLog(sql.Text);
    active:=true;

    Edit3.Text := IntToStr(RecordCount);
  end;
end;

procedure TTraceCarton.Button3Click(Sender: TObject);
begin

printdbgrideh1.Preview;
end;

procedure TTraceCarton.DBGridEh1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin;
// 已採購外箱  但出貨memo在採購後有異動
if (Query1.FieldByName('BZDate').Value > Query1.FieldByName('CGDate').Value) then
  begin
    DBGrideh1.canvas.font.color:=clPurple;
  end;

//  訂單被刪除
if Query1.FieldByName('YN').IsNull then
  begin
    DBGrideh1.canvas.font.color:=clred;
  end;

end;




procedure TTraceCarton.Button2Click(Sender: TObject);
var   a:string;
      eclApp,WorkBook:olevariant;
 //     xlsFileName:string;
      i,j:integer;
 begin
  if  query1.active  then
    begin
    try
      eclApp:=CreateOleObject('Excel.Application');
      WorkBook:=CreateOleObject('Excel.Sheet');
    except
      Application.MessageBox('No Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
      Exit;
    end;
    try
        WorkBook:=eclApp.workbooks.Add;
        for   i:=0   to   query1.fieldcount-1   do
          begin
              eclApp.Cells(1,i+1):=query1.fields[i].FieldName;
          end;

        query1.First;
        j:=2;
        while   not   query1.Eof   do
          begin
            for   i:=0   to  query1.fieldcount-1  do
            begin
              eclApp.Cells(j,i+1):=query1.Fields[i].Value;
            end;
          query1.Next;
          inc(j);
          end;
      eclapp.columns.autofit;
       eclApp.Visible:=True;  
       showmessage('Succeed');
      except
        on   F:Exception   do
          showmessage(F.Message);
      end;
    end;
end;

end.
