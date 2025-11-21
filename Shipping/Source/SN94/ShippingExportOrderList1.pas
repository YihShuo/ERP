unit ShippingExportOrderList1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,funUnit,comobj,
  Dialogs, DB, ComCtrls, StdCtrls, DBTables, GridsEh, DBGridEh, ExtCtrls, DateUtils;

type
  TShippingExportOrderList = class(TForm)
    Panel1: TPanel;
    DBGridEh1: TDBGridEh;
    INVOICE_M: TQuery;
    btnQuery: TButton;
    btnExcel: TButton;
    edtRY: TEdit;
    ckb_InvDate: TCheckBox;
    DS_INVOICE_M: TDataSource;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    INVOICE_MKFJC: TStringField;
    INVOICE_MRYNO: TStringField;
    INVOICE_MINV_NO: TStringField;
    INVOICE_MPAIRS: TIntegerField;
    INVOICE_MUNIT_PRICE: TCurrencyField;
    INVOICE_MAMOUNT: TCurrencyField;
    INVOICE_MTO_WHERE: TStringField;
    INVOICE_MINV_DATE: TDateTimeField;
    Label4: TLabel;
    Label1: TLabel;
    edtInvNo: TEdit;
    Qtemp: TQuery;
    INVOICE_MSOTK: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure btnQueryClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure btnExcelClick(Sender: TObject);
  private
    { Private declarations }
    NDate:TDate;
  public
    { Public declarations }
  end;

var
  ShippingExportOrderList: TShippingExportOrderList;

implementation

{$R *.dfm}

procedure TShippingExportOrderList.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TShippingExportOrderList.FormDestroy(Sender: TObject);
begin
  ShippingExportOrderList:=nil;
end;

procedure TShippingExportOrderList.btnQueryClick(Sender: TObject);
begin
  with INVOICE_M do
  begin
    active:=false;
    sql.Clear;
    sql.Add('select KFJC,RYNO,SOTK,INV_NO,PAIRS,UNIT_PRICE,AMOUNT,TO_WHERE,INV_DATE  from (');
    sql.Add('select ''1.List'' as SB,KFZL.KFJC,INVOICE_D.RYNO,Declaretion as SOTK,INVOICE_M.INV_NO ,INVOICE_D.PAIRS,INVOICE_D.UNIT_PRICE,INVOICE_D.AMOUNT,INVOICE_M.TO_WHERE, INVOICE_M.INV_DATE from INVOICE_M');
    sql.Add('left join INVOICE_D on INVOICE_M.INV_NO=INVOICE_D.INV_NO');
    sql.Add('left join DDZL on DDZL.DDBH=INVOICE_D.RYNO');
    sql.Add('left join KFZL on KFZL.KFDH=DDZL.KHBH');
    sql.Add('where  1=1');
    if edtRY.Text <> '' then
      sql.Add('and INVOICE_D.RYNO like ''' +edtRY.Text+ '%'' ');
    if edtInvNo.Text <> '' then
      sql.Add('and INVOICE_M.INV_NO like ''' +edtInvNo.Text+ '%'' ');
    if ckb_InvDate.Checked then
    begin
      sql.Add('and convert(smalldatetime,convert(varchar,INVOICE_M.Inv_Date,111)) between');
      sql.add('   '''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date) +'''');
    end;
    sql.Add('union all');
    sql.Add('select ''2.TOTAL'' as SB,''TOTAL'' as KFJC,'''' as RYNO,'''' as SOTK,INVOICE_M.INV_NO ,Sum(INVOICE_D.PAIRS) as PAIRS,null as UNIT_PRICE,Sum(INVOICE_D.AMOUNT) as AMOUNT,Max(INVOICE_M.TO_WHERE) as TO_WHERE,Max(INVOICE_M.INV_DATE) as INV_DATE from INVOICE_M');
    sql.Add('left join INVOICE_D on INVOICE_M.INV_NO=INVOICE_D.INV_NO');
    sql.Add('left join DDZL on DDZL.DDBH=INVOICE_D.RYNO');
    sql.Add('left join KFZL on KFZL.KFDH=DDZL.KHBH');
    sql.Add('where  1=1');
    if edtRY.Text <> '' then
      sql.Add('and INVOICE_D.RYNO like ''' +edtRY.Text+ '%'' ');
    if edtInvNo.Text <> '' then
      sql.Add('and INVOICE_M.INV_NO like ''' +edtInvNo.Text+ '%'' ');
    if ckb_InvDate.Checked then
    begin
      sql.Add('and convert(smalldatetime,convert(varchar,INVOICE_M.Inv_Date,111)) between');
      sql.add('   '''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date) +'''');
    end;
    sql.Add('Group by INVOICE_M.INV_NO');
    sql.Add('union all');
    sql.Add('select ''3.TOTAL  ALL'' as SB,''TOTAL ALL'' as KFJC,'''' as RYNO,'''' as SOTK,''ZZZZZZZZZZ'' as INV_NO ,Sum(INVOICE_D.PAIRS) as PAIRS,null as UNIT_PRICE,Sum(INVOICE_D.AMOUNT) as AMOUNT,'''' as TO_WHERE,null as INV_DATE from INVOICE_M');
    sql.Add('left join INVOICE_D on INVOICE_M.INV_NO=INVOICE_D.INV_NO');
    sql.Add('left join DDZL on DDZL.DDBH=INVOICE_D.RYNO');
    sql.Add('left join KFZL on KFZL.KFDH=DDZL.KHBH');
    sql.Add('where  1=1');
    if edtRY.Text <> '' then
      sql.Add('and INVOICE_D.RYNO like ''' +edtRY.Text+ '%'' ');
    if edtInvNo.Text <> '' then
      sql.Add('and INVOICE_M.INV_NO like ''' +edtInvNo.Text+ '%'' ');
    if ckb_InvDate.Checked then
    begin
      sql.Add('and convert(smalldatetime,convert(varchar,INVOICE_M.Inv_Date,111)) between');
      sql.add('   '''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date) +'''');
    end;
    sql.Add(') INVOICE_M');
    sql.Add('order by INVOICE_M.INV_NO,INVOICE_M.SB');
    //funcobj.WriteErrorLog(sql.Text);
    active:=true;
  end;
end;

procedure TShippingExportOrderList.FormCreate(Sender: TObject);
begin
  with Qtemp do
  begin
    active:=false;
    sql.Clear;
    sql.add('select getdate() as NDate ');
    active:=true;
    NDate:=fieldbyname('NDate').value;
    active:=false;
  end;
  DTP1.date:=StartOfTheMonth(NDate);
  DTP2.date:=NDate
end;

procedure TShippingExportOrderList.DBGridEh1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if INVOICE_M.FieldByName('KFJC').value='TOTAL' then
  begin
    dbgrideh1.canvas.brush.Color:=clYellow;
    DBGrideh1.DefaultDrawColumnCell(Rect,DataCol,Column, State);
  end;

  if INVOICE_M.FieldByName('KFJC').value='TOTAL ALL' then
  begin
    dbgrideh1.canvas.brush.Color:=clSkyBlue;
    DBGrideh1.DefaultDrawColumnCell(Rect,DataCol,Column, State);
  end;
end;

procedure TShippingExportOrderList.btnExcelClick(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j,k:integer;
begin
  if  INVOICE_M.active  then
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
      for i:=0 to INVOICE_M.FieldCount-1 do
      begin
        eclApp.Cells(1,i+1):=INVOICE_M.fields[i].FieldName;
      end;
      INVOICE_M.First;
      j:=2;
      while   not   INVOICE_M.Eof   do
      begin
        for   i:=0   to INVOICE_M.FieldCount-1  do
        begin
          if (INVOICE_M.FieldByName('KFJC').Value = 'TOTAL') then
            eclApp.Range[eclApp.Cells[j,1],eclApp.Cells[j,9]].Interior.Color := clyellow;
          if (INVOICE_M.FieldByName('KFJC').Value = 'TOTAL ALL') then
            eclApp.Range[eclApp.Cells[j,1],eclApp.Cells[j,9]].Interior.Color := clSkyBlue;
          eclApp.Cells(j,i+1):=INVOICE_M.Fields[i].Value;
        end;
        INVOICE_M.Next;
        inc(j);
      end;
      for k:=1 to 4 do
      begin
        eclApp.range[eclApp.cells[1,1],eclApp.cells[j-1,INVOICE_M.FieldCount]].borders[k].linestyle:=1;
      end;
      eclapp.columns.autofit;
      showmessage('Succeed');
      eclApp.Visible:=True;
    except
      on   F:Exception   do
        showmessage(F.Message);
    end;
  end;
end;

end.
