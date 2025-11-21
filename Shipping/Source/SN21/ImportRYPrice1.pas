unit ImportRYPrice1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls,ComObj, DB, DBTables,StrUtils,NumberToWords;

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
uses main1, RYPrice1,FunUnit;
{$R *.dfm}

procedure TImportRYPrice.Button1Click(Sender: TObject);
var
  ExcelApp: Variant;
  S_RY,S_CustOrdNo,S_VNPRICE,RYSting,Inv_no,total_amount,word,amount_word: string;
  i:integer;
  IsPriceColumn:boolean;
begin
{============================================================
  作者:Dennis Chen

  日期:2013/11/15

  說明:匯入vnprice到Table:RY_VNPRICE
=============================================================}

  //showmessage('Please choose "CWA Tier List.xls" only!');


  if OpenDialog1.Execute then
  begin
    Memo1.Lines.Clear;

    ExcelApp:=CreateOleObject('Excel.Application');
    ExcelApp.WorkBooks.Open(OpenDialog1.FileName);
    ExcelApp.WorkSheets[1].Activate;
    //檢查欄位格式
    i:=2;
    S_RY:=ExcelApp.Cells[i,1].Value;
    RYSting:=ExcelApp.Cells[i,1].Value;
    while (trim(S_RY)<>'') do
    begin

      S_RY:=ExcelApp.Cells[i,1].Value;
      RYSting:=ExcelApp.Cells[i,1].Value;
      S_CustOrdNo:=ExcelApp.Cells[i,1].Value;

      //20151015有單價欄位才要更新單價
       IsPriceColumn:=true;
      if IsPriceColumn=true then
      begin
        S_VNPRICE:=ExcelApp.Cells[i,2].Value;
        if S_VNPRICE<>'' then
          S_VNPRICE:=formatfloat('##0.00',ExcelApp.Cells[i,2].Value)
        else
          S_VNPRICE:='0';
      end;


      Query1.Close;
      Query1.SQL.Clear;
      Query1.SQL.Add('select * from RY_VNPRICE');
      Query1.SQL.Add('where RYNO ='''+S_RY+'''');
      Query1.ExecSQL;
      Query1.Open;
      //only allow insert ,can not update difficult to check price or not.
      if Query1.RecordCount=0 then
      begin//無就insert
        //20151015有單價欄位才要更新單價
        if IsPriceColumn=true then
        begin
          Query1.Close;
          Query1.SQL.Clear;
          Query1.SQL.Add('insert into RY_VNPRICE ');
          Query1.SQL.Add('(RYNO, CustOrdNo, VNPRICE, IM_DATE, USERID) ');
          Query1.SQL.Add('values('''+S_RY+''','''+S_CustOrdNo+''','''+S_VNPRICE+''','''+FormatDateTime('yyyy/mm/dd hh:nn:ss',now)+''','''+Main.Edit1.Text+''') ');
          Query1.ExecSQL;
          Memo1.Lines.Add('Insert RY:'+S_RY+' ,CustOrdNo:'+S_CustOrdNo+' ,VN_PRICE:'+S_VNPRICE+' ...OK!');
        end else
        begin
          Query1.Close;
          Query1.SQL.Clear;
          Query1.SQL.Add('insert into RY_VNPRICE ');
          Query1.SQL.Add('(RYNO, CustOrdNo , IM_DATE, USERID) ');
          Query1.SQL.Add('values('''+S_RY+''','''+S_CustOrdNo+''','''+FormatDateTime('yyyy/mm/dd hh:nn:ss',now)+''','''+Main.Edit1.Text+''') ');
          Query1.ExecSQL;
          Memo1.Lines.Add('Insert RY:'+S_RY+' ,CustOrdNo:'+S_CustOrdNo+'  ...OK!');
        end;

      end else
      begin//已有就update
        //20151015有單價欄位才要更新單價
        if IsPriceColumn=true then
        begin
          Query1.Close;
          Query1.SQL.Clear;
          Query1.SQL.Add('update RY_VNPRICE set VNPRICE ='''+S_VNPRICE+'''');
          Query1.SQL.Add(',CustOrdNo='''+S_CustOrdNo+''',IM_DATE ='''+FormatDateTime('yyyy/mm/dd hh:nn:ss',now)+'''');
          Query1.SQL.Add(',USERID ='''+Main.Edit1.Text+'''');
          Query1.SQL.Add('where RYNO ='''+S_RY+'''');
          Query1.ExecSQL;
          Memo1.Lines.Add('Update RY:'+S_RY+' ,CustOrdNo:'+S_CustOrdNo+' ,VN_PRICE:'+S_VNPRICE+' ...OK!');
        end else
        begin
          Query1.Close;
          Query1.SQL.Clear;
          Query1.SQL.Add('update RY_VNPRICE set ');
          Query1.SQL.Add(' CustOrdNo='''+S_CustOrdNo+''',IM_DATE ='''+FormatDateTime('yyyy/mm/dd hh:nn:ss',now)+'''');
          Query1.SQL.Add(',USERID ='''+Main.Edit1.Text+'''');
          Query1.SQL.Add('where RYNO ='''+S_RY+'''');
          Query1.ExecSQL;
          Memo1.Lines.Add('Update RY:'+S_RY+' ,CustOrdNo:'+S_CustOrdNo+'  ...OK!');
        end;
      end;
      i:=i+1;
      S_RY:=ExcelApp.Cells[i,1].Value;
      RYSting:=ExcelApp.Cells[i,1].Value;
    end;

    ExcelApp.WorkBooks.Close;
    ExcelApp.Quit;

    Memo1.Lines.Add('');
    Memo1.Lines.Add('Import '+inttostr(i-2)+' rows successfuly!');

    //revise price for invoice
    RYSting:='';
    with query2 do
    begin
        active:=false;
        sql.Clear;
        sql.Add('select Inv_no,Invoice_D.RYNo');
        sql.Add('from Invoice_D              ');
        sql.Add('where isnull(Unit_Price,0) = 0 and USERID='''+main.Edit1.Text+''' and UserDate>GETDATE()-10 ');
        active:=true;
        while not eof do
        begin
            RYSting:=RYSting+''''+FieldByName('RYNO').AsString+''',';
            next;
        end;
        RYSting:=LeftStr(RYSting,length(RYSting)-1);

        if RYSting <> '' then
        begin
           try
             //update price for talbe Invoice_D
             active:=false;
             sql.Clear;
             sql.Add('update Invoice_D set');
             sql.Add('      Unit_Price=isnull((select VNPRICE from RY_VNPRICE,YWDD where YWDD.DDBH=Invoice_D.RYNO and YWDD.YSBH=RY_VNPRICE.RYNO),0.00)');
             sql.Add('      ,Amount= isnull((select Pairs * VNPRICE from RY_VNPRICE,YWDD where YWDD.DDBH=Invoice_D.RYNO and YWDD.YSBH=RY_VNPRICE.RYNO),0.00)');
             sql.Add('      ,UserID= '''+main.Edit1.Text+''' ');
             sql.Add('     ,UserDate=getdate()');
             sql.Add('where RYNo in ('+RYSting+') ');
             execsql;

             active:=false;
             sql.clear;
             sql.Add('select Inv_no from Invoice_D ');
             sql.Add('where RYNo in ('+RYSting+') ');
             sql.Add('group by Inv_no');
             active:=true;
             inv_no:='';
             first;
             while not eof do
             begin
                inv_no:= FieldByName('Inv_no').AsString;

                with query3 do
                begin
                    active:=false;
                    sql.Clear;
                    sql.Add('select sum(Amount) as Amount from Invoice_D');
                    sql.Add('where inv_no='''+inv_no+''' ');
                    active:=true;

                    total_amount:= fieldbyName('Amount').Value ;
                    word:= ConvertToWords(fieldbyName('Amount').Value,true);
                    amount_word:=upperCase(leftstr(word,1)) + copy(word,2,length(word)-1);

                    //update total Amount for invoice
                    active:=false;
                    sql.Clear;
                    sql.Add('update Invoice_M set');
                    sql.Add('   TOTAL_AMOUNT= '''+total_amount+''' ');
                    sql.Add('   ,TOTAL_AMOUNT_WORD='''+amount_word+''' ');
                    sql.Add('where inv_no='''+inv_no+''' ');
                    execsql;

                end;
                next;
             end;
          except
             showmessage('Error, can not revise!!!');
             abort;
          end;
        end; //end if
    end;  //end query2
    RYPrice.Query1.Active:=false;
    RYPrice.Query1.Active:=true;
  end;

  

end;

procedure TImportRYPrice.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
  //ImportRYPrice:=nil;
  //FreeAndNil(ImportRYPrice);
end;

procedure TImportRYPrice.FormDestroy(Sender: TObject);
begin
   ImportRYPrice:=nil;
end;

end.
