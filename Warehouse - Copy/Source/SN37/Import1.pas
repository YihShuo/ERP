unit Import1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls,ComObj, DB, DBTables,StrUtils;

type
  TImport = class(TForm)
    Button1: TButton;
    Memo1: TMemo;
    OpenDialog1: TOpenDialog;
    Query1: TQuery;
    Label1: TLabel;
    Query2: TQuery;
    Query3: TQuery;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Import: TImport;

implementation
uses main1,FunUnit,AnyStockImport1;
{$R *.dfm}

procedure TImport.Button1Click(Sender: TObject);
var
  ExcelApp: Variant;
  S_STT,S_CLBH,S_Qty,S_LBBH,S_KCBH: string;
  i:integer;
begin
  if OpenDialog1.Execute then
  begin
    Memo1.Lines.Clear;

    ExcelApp:=CreateOleObject('Excel.Application');
    ExcelApp.WorkBooks.Open(OpenDialog1.FileName);
    ExcelApp.WorkSheets[1].Activate;
    i:=8;
    S_CLBH:=ExcelApp.Cells[i,2].Value;
    S_KCBH:=ExcelApp.Cells[i,15].Value;
    while ((trim(S_CLBH)<>'') and (trim(S_KCBH)<>''))  do
    begin

      S_CLBH:=ExcelApp.Cells[i,2].Value;
      S_KCBH:=ExcelApp.Cells[i,15].Value;
      S_STT:= ExcelApp.Cells[i,1].Value;
      S_Qty:= ExcelApp.Cells[i,6].Value;
      S_LBBH:= ExcelApp.Cells[i,10].Value;
      Query1.Close;
      Query1.SQL.Clear;
      Query1.SQL.Add('Select * from KCCLMONTH_Import');
      Query1.SQL.Add('Where  KCYEAR='''+AnyStockImport.CBX1.Text+''' and KCMONTH='''+AnyStockImport.CBX2.Text+''' and CKBH='''+AnyStockImport.CBX3.Text+''' and CLBH='''+S_CLBH+''' and KCBH='''+S_KCBH+''' ');
      Query1.ExecSQL;
      Query1.Open;
      if Query1.RecordCount=0 then
      begin
          Query1.Close;
          Query1.SQL.Clear;
          Query1.SQL.Add('insert into KCCLMONTH_Import ');
          Query1.SQL.Add('(KCYEAR, KCMONTH, CKBH, CLBH, KCBH, STT, LBBH, Qty, UserID, UserDate, YN) ');
          Query1.SQL.Add('values('''+AnyStockImport.CBX1.Text+''','''+AnyStockImport.CBX2.Text+''','''+AnyStockImport.CBX3.Text+''','''+S_CLBH+''','''+S_KCBH+''','''+S_STT+''','''+S_LBBH+''','''+S_Qty+''','''+Main.Edit1.Text+''',Getdate(),1) ');
          Query1.ExecSQL;
          Memo1.Lines.Add('Insert CLBH:'+S_CLBH+' ...OK!');
      end else
      begin
          Query1.Close;
          Query1.SQL.Clear;
          Query1.SQL.Add('update KCCLMONTH_Import set STT ='''+S_STT+''', LBBH='''+S_LBBH+''', Qty='''+S_Qty+''' ');
          Query1.SQL.Add(',UserDate = GetDate() ');
          Query1.SQL.Add(',UserID ='''+Main.Edit1.Text+'''');
          Query1.SQL.Add('where  KCYEAR='''+AnyStockImport.CBX1.Text+''' and KCMONTH='''+AnyStockImport.CBX2.Text+''' and CKBH='''+AnyStockImport.CBX3.Text+'''  and CLBH ='''+S_CLBH+'''  and KCBH='''+S_KCBH+''' ');
          Query1.ExecSQL;
          Memo1.Lines.Add('Update CLBH:'+S_CLBH+'...OK!');
      end;
      i:=i+1;
      S_CLBH:=ExcelApp.Cells[i,2].Value;
      S_KCBH:=ExcelApp.Cells[i,15].Value;
      S_STT:= ExcelApp.Cells[i,1].Value;
      S_Qty:= ExcelApp.Cells[i,6].Value;
      S_LBBH:= ExcelApp.Cells[i,10].Value;
    end;

    ExcelApp.WorkBooks.Close;
    ExcelApp.Quit;

    Memo1.Lines.Add('');
    Memo1.Lines.Add('Import '+inttostr(i-8)+' rows successfuly!');
  end;  
end;

procedure TImport.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TImport.FormDestroy(Sender: TObject);
begin
  Import:=nil;
end;

end.
