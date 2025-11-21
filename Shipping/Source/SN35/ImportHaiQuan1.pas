unit ImportHaiQuan1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls,ComObj, DB, DBTables,StrUtils, ComCtrls;

type
  TImportHaiQuan = class(TForm)
    Button1: TButton;
    Memo1: TMemo;
    OpenDialog1: TOpenDialog;
    Query1: TQuery;
    Label1: TLabel;
    Label4: TLabel;
    Label3: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    Query2: TQuery;
    Query3: TQuery;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ImportHaiQuan: TImportHaiQuan;

implementation
uses main1,FunUnit;
{$R *.dfm}

procedure TImportHaiQuan.Button1Click(Sender: TObject);
var
  ExcelApp,arrData: Variant;
  S_RY,S_MAHQ,S_PAIRS,S_QTY,S_USAGE,S_MEMO: string;
  i:integer;
begin

  if OpenDialog1.Execute then
  begin
    Memo1.Lines.Clear;

    ExcelApp:=CreateOleObject('Excel.Application');
    ExcelApp.WorkBooks.Open(OpenDialog1.FileName);
    ExcelApp.WorkSheets[1].Activate;

    i:=3;
    S_RY:=ExcelApp.Cells[i,1].value;
    S_MAHQ:=ExcelApp.Cells[i,2].value;
    S_USAGE:=ExcelApp.Cells[i,3].value;
    S_PAIRS:=ExcelApp.Cells[i,4].value;
    S_QTY:=ExcelApp.Cells[i,5].value;
    S_MEMO:=ExcelApp.Cells[i,6].value;
    while ((trim(S_RY)<>'') and (trim(S_MAHQ)<>''))  do
    begin
      S_RY:=ExcelApp.Cells[i,1].value;
      S_MAHQ:=ExcelApp.Cells[i,2].value;
      S_USAGE:=ExcelApp.Cells[i,3].value;
      S_PAIRS:=ExcelApp.Cells[i,4].value;
      S_QTY:=ExcelApp.Cells[i,5].value;
      S_MEMO:=ExcelApp.Cells[i,6].value;
      Query1.Close;
      Query1.SQL.Clear;
      Query1.SQL.Add('Select * From HG_Usage');
      Query1.SQL.Add('Where DDBH ='''+S_RY+''' and CNO='''+S_MAHQ+''' ');
      Query1.ExecSQL;
      Query1.Open;
      if Query1.RecordCount>0 then
      begin
        Query1.Close;
        Query1.SQL.Clear;

        Query1.SQL.Add('Update HG_Usage  ');
        Query1.SQL.Add('Set Usage = '''+S_USAGE+''',Pairs = '''+S_PAIRS+''' , Qty = '''+S_QTY+''' , UserID='''+Main.Edit1.Text+''', UserDate = GetDate(),Memo='''+S_MEMO+''' ');
        Query1.SQL.Add('Where DDBH ='''+S_RY+''' and CNO='''+S_MAHQ+''' ');
        //funcobj.WriteErrorLog(Query1.sql.Text);
        Query1.ExecSQL;
        Memo1.Lines.Add('RY:'+S_RY+', MA HQ:'+S_MAHQ+', DM 1 DOI:'+S_USAGE+', SO DOI:'+S_PAIRS+', TL DM:'+S_QTY+', MEMO: '+S_MEMO+' ...OK!');
      end else
      begin
        Query1.Close;
        Query1.SQL.Clear;

        Query1.SQL.Add('Insert Into HG_Usage (DDBH, CNO, Usage, Pairs, Qty, UserID, UserDate, YN, Memo)' );
        Query1.SQL.Add('values( '''+S_RY+''','''+S_MAHQ+''','''+S_USAGE+''', '''+S_PAIRS+''', '''+S_QTY+''','''+Main.Edit1.Text+''',GETDATE(),''1'','''+S_MEMO+''') ');
        //funcobj.WriteErrorLog(Query1.sql.Text);
        Query1.ExecSQL;
        Memo1.Lines.Add('RY:'+S_RY+', MA HQ:'+S_MAHQ+', DM 1 DOI:'+S_USAGE+', SO DOI:'+S_PAIRS+', TL DM:'+S_QTY+', MEMO: '+S_MEMO+' ...OK!');
      end;

      i:=i+1;
      S_RY:=ExcelApp.Cells[i,1].value;
      S_MAHQ:=ExcelApp.Cells[i,2].value;
      S_USAGE:=ExcelApp.Cells[i,3].value;
      S_PAIRS:=ExcelApp.Cells[i,4].value;
      S_QTY:=ExcelApp.Cells[i,5].value;
      S_MEMO:=ExcelApp.Cells[i,6].value;
    end;

    ExcelApp.WorkBooks.Close;
    ExcelApp.Quit;

    Memo1.Lines.Add('');
    Memo1.Lines.Add('Import '+inttostr(i-3)+' rows successfuly!');
  end;


end;

procedure TImportHaiQuan.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TImportHaiQuan.FormDestroy(Sender: TObject);
begin
   ImportHaiQuan:=nil;
end;



procedure TImportHaiQuan.Button2Click(Sender: TObject);
var eclApp,WorkBook1,xlSheet1:olevariant;
begin
  try
    eclApp:=CreateOleObject('Excel.Application');
    WorkBook1:=CreateOleObject('Excel.Sheet');
  except
    Application.MessageBox('NO Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
    Exit;
  end;

  try
    WorkBook1:=eclApp.workbooks.Add;
    eclApp.WorkSheets[1].Activate;
    xlSheet1:=workBook1.WorkSheets[1];

    eclApp.Cells(1,1):='DINH MUC 2016';


    eclApp.Cells(2,1):='RY';
    eclApp.Cells(3,1):='AL1511-126';
    eclApp.Cells(4,1):='AL1511-126';

    eclApp.Cells(2,2):='MA HQ';
    eclApp.Cells(3,2):='DB';
    eclApp.Cells(4,2):='DM';

    eclApp.Cells(2,3):='DINH MUC 1 DOI';
    eclApp.Cells(3,3):='1.768133';
    eclApp.Cells(4,3):='0.062383';

    eclApp.Cells(2,4):='SO DOI';
    eclApp.Cells(3,4):='257';
    eclApp.Cells(4,4):='257';

    eclApp.Cells(2,5):='TONG LUONG DINH MUC';
    eclApp.Cells(3,5):='454.41';
    eclApp.Cells(4,5):='16.03';

    eclApp.Cells(2,6):='GHI CHU';
    eclApp.Cells(3,6):='DM 2016';
    eclApp.Cells(4,6):='DM 2016';

    eclApp.ActiveSheet.Rows[1].font.bold :=true;

    eclApp.Caption:='Shipping N35 Sample File';
    eclapp.columns.autofit;       
    showmessage('Download excel SAMPLE successful.');
    eclApp.Visible:=True;

  except
    on   F:Exception   do
      showmessage(F.Message);
  end;
end;

end.
