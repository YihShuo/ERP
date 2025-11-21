unit ImportRYPrice1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls,ComObj, DB, DBTables,StrUtils;

type
  TImportRYPrice = class(TForm)
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
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ImportRYPrice: TImportRYPrice;

implementation
uses main1,FunUnit,SemiImportPrice1;
{$R *.dfm}

procedure TImportRYPrice.Button1Click(Sender: TObject);
var
  ExcelApp: Variant;
  S_DDBH,S_USPrice,S_Memo: string;
  i:integer;
  IsPriceColumn:boolean;
begin


  if OpenDialog1.Execute then
  begin
    Memo1.Lines.Clear;

    ExcelApp:=CreateOleObject('Excel.Application');
    ExcelApp.WorkBooks.Open(OpenDialog1.FileName);
    ExcelApp.WorkSheets[1].Activate;
    //檢查欄位格式
    if ((ExcelApp.Cells[1,1].Value<>'DDBH') and (ExcelApp.Cells[1,2].Value<>'USPrice')) then
    begin
      Showmessage('Excel Format is not exact');
      exit;
    end;
    if (ExcelApp.Cells[1,2].Value='USPrice') then IsPriceColumn:=true;
    //
    i:=2;
    S_DDBH:=ExcelApp.Cells[i,1].Value;
    while ((trim(S_DDBH)<>''))  do
    begin

      S_DDBH:=ExcelApp.Cells[i,1].Value;
      S_Memo:= ExcelApp.Cells[i,3].Value;
      //20151015有單價欄位才要更新單價
      if IsPriceColumn=true then
      begin
        S_USPrice:=ExcelApp.Cells[i,2].Value;
        if S_USPrice<>'' then
          S_USPrice:=formatfloat('##0.00',ExcelApp.Cells[i,2].Value)
      end;


      Query1.Close;
      Query1.SQL.Clear;
      Query1.SQL.Add('Select * from CW_MatCostMonth_Price');
      Query1.SQL.Add('Where DDBH ='''+S_DDBH+''' and KCYEAR='''+SemiImportPrice.CBX1.Text+''' and KCMONTH='''+SemiImportPrice.CBX2.Text+'''');
      Query1.ExecSQL;
      Query1.Open;
      if Query1.RecordCount=0 then
      begin
        if IsPriceColumn=true then
        begin
          Query1.Close;
          Query1.SQL.Clear;
          Query1.SQL.Add('insert into CW_MatCostMonth_Price ');
          Query1.SQL.Add('(KCYEAR, KCMONTH, DDBH, USPrice, Memo, UserID, UserDate, YN) ');
          Query1.SQL.Add('values('''+SemiImportPrice.CBX1.Text+''','''+SemiImportPrice.CBX2.Text+''','''+S_DDBH+''','''+S_USPRice+''','''+S_Memo+''','''+Main.Edit1.Text+''',Getdate(),1) ');
          Query1.ExecSQL;
          Memo1.Lines.Add('Insert RY:'+S_DDBH+' ,USPrice:'+S_USPRice+' ...OK!');
        end;
      end else
      begin
        if IsPriceColumn=true then
        begin
          Query1.Close;
          Query1.SQL.Clear;
          Query1.SQL.Add('update CW_MatCostMonth_Price set USPrice ='''+S_USPRice+''', Memo='''+S_Memo+''' ');
          Query1.SQL.Add(',UserDate = GetDate() ');
          Query1.SQL.Add(',UserID ='''+Main.Edit1.Text+'''');
          Query1.SQL.Add('where DDBH ='''+S_DDBH+''' and KCYEAR='''+SemiImportPrice.CBX1.Text+''' and KCMONTH='''+SemiImportPrice.CBX2.Text+''' ');
          Query1.ExecSQL;
          Memo1.Lines.Add('Update RY:'+S_DDBH+' ,USPrice:'+S_USPRice+' ...OK!');
        end;
      end;
      i:=i+1;
      S_DDBH:=ExcelApp.Cells[i,1].Value;
    end;

    ExcelApp.WorkBooks.Close;
    ExcelApp.Quit;

    Memo1.Lines.Add('');
    Memo1.Lines.Add('Import '+inttostr(i-2)+' rows successfuly!');
  end;  
end;

procedure TImportRYPrice.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TImportRYPrice.FormDestroy(Sender: TObject);
begin
   ImportRYPrice:=nil;
end;

end.
