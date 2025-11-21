unit ScanStockDet1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, DB, DBTables, PrnDbgeh, GridsEh, DBGridEh, StdCtrls,
  ExtCtrls,comobj, ComCtrls, ADODB;

type
  TScanStockDet = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Button1: TButton;
    DBGridEh1: TDBGridEh;
    PrintDBGridEh1: TPrintDBGridEh;
    Query1: TQuery;
    Query1DDBH: TStringField;
    Query1YSBH: TStringField;
    Query1Article: TStringField;
    Query1XieMing: TStringField;
    Query1Country: TStringField;
    Query1KFJC: TStringField;
    Query1Qty: TFloatField;
    Query1okQty: TIntegerField;
    Query1LackQty: TFloatField;
    Query1CTS: TIntegerField;
    Query1okCTS: TIntegerField;
    Query1LackCTS: TIntegerField;
    Query1ETD: TDateTimeField;
    DS1: TDataSource;
    PopupMenu1: TPopupMenu;
    Excel1: TMenuItem;
    Print1: TMenuItem;
    DetailSize1: TMenuItem;
    DetailCarton1: TMenuItem;
    Query1LastInDate: TDateTimeField;
    Query1DZQty: TIntegerField;
    CheckBox1: TCheckBox;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    CheckBox2: TCheckBox;
    Label12: TLabel;
    Label13: TLabel;
    Query1DepName: TStringField;
    Query1KCBH: TStringField;
    Query1InDate: TDateTimeField;
    DTP: TDateTimePicker;
    Label14: TLabel;
    Query1YSSM: TStringField;
    Query1KHPO: TStringField;
    Label16: TLabel;
    Query1Status: TStringField;
    Label15: TLabel;
    Edit5: TEdit;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure Excel1Click(Sender: TObject);
    procedure Print1Click(Sender: TObject);
    procedure DetailSize1Click(Sender: TObject);
    procedure DetailCarton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ScanStockDet: TScanStockDet;

implementation

uses main1, ScanStockDet_Det1, ScanStockDet_Car1, FunUnit;

{$R *.dfm}

procedure TScanStockDet.FormDestroy(Sender: TObject);
begin
  ScanStockDet:=nil;
end;

procedure TScanStockDet.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TScanStockDet.Button1Click(Sender: TObject);
begin
    if checkBox2.Checked then
    begin
      DBGridEh1.Columns[2].Visible := true;
      DBGridEh1.Columns[10].Visible := false;
      DBGridEh1.Columns[13].Visible := false;
    end
    else
    begin
      DBGridEh1.Columns[2].Visible := false;
      DBGridEh1.Columns[10].Visible := true;
      DBGridEh1.Columns[13].Visible := true;
    end;
  with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select YWCP.DDBH,YWDD.YSBH,');
    if checkBox2.Checked then   //顯示生產單位
    begin
      sql.add('     BDepartment.DepName,');
    end
    else
    begin
      sql.Add('     ''1'' as DepName,');
    end;
    sql.Add('       XXZL.Article,max (YWCP.KCBH) as KCBH ');
    sql.Add('       ,XXZL.XieMing,YWDD.ETD,LBZLS.YWSM as Country,KFZL.KFJC,');

    sql.add('       YWDD.Qty,sum(YWCP.Qty) as okQty,YWDD.Qty-isnull(sum(YWCP.Qty),0) as LackQty,sum(YWDDSDZ.Qty) as DZQty,');
    sql.add('       YWBZPO.CTS,count(YWCP.DDBH) as okCTS,YWBZPO.CTS-count(YWCP.DDBH) as LackCTS,max(YWCP.LastInDate) as LastInDate,max(YWCP.InDate) as InDate,XXZL.yssm,KHPO,'''' Status');
    sql.add('from YWCP  with (nolock)');
    sql.add('left join YWDD  with (nolock) on YWDD.DDBH=YWCP.DDBH ');
    sql.add('left join (select CartonBar,sum(Qty) as Qty from YWDDSDZ ');
    sql.add('           group by CartonBar ) YWDDSDZ on YWDDSDZ.CartonBar=YWCP.CartonBar ');
    sql.add('left join DDZL  with (nolock) on YWDD.YSBH=DDZl.DDBH ');
    sql.add('left join XXZL  with (nolock) on DDZl.XieXing=XXZl.XieXing and DDZL.SheHao=XXZL.Shehao ');
    sql.add('left join LBZLS  with (nolock) on LBZLS.LB='+''''+'06'+''''+' and LBZLS.LBDH=DDZL.DDGB');
    sql.add('left join KFZL  with (nolock) on KFZL.KFDH=DDZL.KHBH ');
    sql.add('left join (select YWBZPO.DDBH,sum(YWBZPO.CTS) as CTS ');
    sql.add('           from (select distinct YWBZPOS.DDBH,YWBZPOS.XH,YWBZPOS.CTS from YWBZPOS  with (nolock) ) YWBZPO  ');
    sql.add('           group by YWBZPO.DDBH) YWBZPO on YWCP.DDBH=YWBZPO.DDBH ');
    if checkBox2.Checked then
      sql.add('left join BDepartment on YWCP.DepNO = BDepartment.ID');
    sql.Add('where DDZL.DDBH like '''+edit1.Text+'%''');
    sql.add('      and YWCP.KCBH like '''+edit2.Text+'%''');
    sql.add('      and isnull(KFZL.KFJC,'''') like ''%'+edit3.text+'%''');
    sql.add('      and isnull(LBZLS.YWSM,'''') like ''%'+edit4.text+'%''');
    sql.add('      and DDZL.GSBH='''+main.edit2.text+''' ');
    sql.add('      and IsNull(YWCP.SB,'''')<>'''' and convert(varchar,YWCP.Indate,111) <= '''+formatdatetime('yyyy/MM/dd',DTP.Date)+''' ');
    sql.add('      and YWCP.CARTONBAR not in (Select CARTONBAR from YWCP where SB=''3'' and convert(varchar,YWCP.EXEDATE,111) <='''+formatdatetime('yyyy/MM/dd',DTP.Date)+''')');
    sql.Add('      and DDZL.KHPO like '''+edit5.Text+'%''');
    if checkbox1.checked=false then
    begin
      sql.add('    and YWCP.CARTONBAR not in (Select CARTONBAR from YWCP where SB in (''2'',''4'')  and convert(varchar,IsNull(YWCP.OUTDATE,GetDate()-7200),111) <='''+formatdatetime('yyyy/MM/dd',DTP.Date)+''')');
    end;
    sql.add('group by YWCP.DDBH,YWDD.YSBH,');
    if checkBox2.Checked then
      sql.add('     BDepartment.DepName,');
    sql.add('         XXZL.Article,XXZL.XieMing,YWDD.ETD,LBZLS.YWSM,KFZL.KFJC,YWDD.Qty,YWBZPO.CTS,XXZL.yssm,KHPO');
    sql.add('order by YWCP.DDBH ');
    //funcObj.WriteErrorLog(sql.Text);
    //showmessage(SQL.Text);
    active:=true;
  end;
end;

procedure TScanStockDet.DBGridEh1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if query1.FieldByName('LackQty').value<=0 then
  begin
    dbgrideh1.canvas.font.color:=clBlue;
  end;
end;

procedure TScanStockDet.Excel1Click(Sender: TObject);
var
      eclApp,WorkBook:olevariant;
 //     xlsFileName:string;
      i,j:integer;
begin

if query1.Active then
  begin
    if query1.recordcount=0 then
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

procedure TScanStockDet.Print1Click(Sender: TObject);
begin
PrintDBGrideh1.Preview;
end;

procedure TScanStockDet.DetailSize1Click(Sender: TObject);
begin
ScanStockDet_Det:=TScanStockDet_Det.create(self);
ScanStockDet_Det.show;
end;

procedure TScanStockDet.DetailCarton1Click(Sender: TObject);
begin
ScanStockDet_Car:=TScanStockDet_Car.create(self);
ScanStockDet_Car.show;
end;

procedure TScanStockDet.FormCreate(Sender: TObject);
begin
  DTP.Date:=Date();  
end;

procedure TScanStockDet.DBGridEh1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
   if Column.FieldName = 'Status' then
  begin
    // 檢查 A 欄位的數值
    if Query1.FieldByName('LackQty').AsFloat > 0 then
      DBGridEh1.Canvas.Brush.Color := clYellow // 如果 A > 0，設定黃色底色
    else
      DBGridEh1.Canvas.Brush.Color := clBlue; // 否則設定藍色底色

    // 繪製單元格
    DBGridEh1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
  end;
end;

end.
