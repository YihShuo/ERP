unit InvoicePL_TW1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, Buttons, ComCtrls, StdCtrls,
  ExtCtrls, Mask, DBCtrls, Comobj, Menus;

type
  TInvoicePL_TW = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    INV_NOEdit: TEdit;
    Button1: TButton;
    chkIndate: TCheckBox;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    CON_NOEdit: TEdit;
    Panel5: TPanel;
    btnInsert: TBitBtn;
    btndelete: TBitBtn;
    btnModify: TBitBtn;
    btnSave: TBitBtn;
    btnCancel: TBitBtn;
    btnexit: TBitBtn;
    DBGridEh1: TDBGridEh;
    Query1: TQuery;
    DS1: TDataSource;
    Query1INV_NO: TStringField;
    Query1CURRENCY: TStringField;
    Query1RISK: TStringField;
    Query1SHIP_BY: TStringField;
    Query1FROM_WHERE: TStringField;
    Query1TO_WHERE: TStringField;
    Query1INV_DATE: TDateTimeField;
    Query1USERID: TStringField;
    Query1USERDATE: TDateTimeField;
    Query1YN: TStringField;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Splitter3: TSplitter;
    Panel3: TPanel;
    DBGridEh2: TDBGridEh;
    Panel4: TPanel;
    Splitter4: TSplitter;
    DBGridEh3: TDBGridEh;
    Panel7: TPanel;
    Query2: TQuery;
    DS2: TDataSource;
    Query3: TQuery;
    DS3: TDataSource;
    Query3INV_NO: TStringField;
    Query3CON_NO: TStringField;
    Query3clbh: TStringField;
    Query3NO_SE: TStringField;
    Query3Qty: TFloatField;
    Query3NW: TFloatField;
    Query3GW: TFloatField;
    Query3TNW: TFloatField;
    Query3TGW: TFloatField;
    Query3UserID: TStringField;
    Query3UserDate: TDateTimeField;
    Query3YN: TStringField;
    Query3clpm: TStringField;
    Query3CTN: TSmallintField;
    Query1CON_NO: TStringField;
    btnExcel: TBitBtn;
    Query2clpm: TStringField;
    Query2Qty: TFloatField;
    Query2madein: TStringField;
    Query2dwbh: TStringField;
    Query2UNIT_PRICE: TCurrencyField;
    Query2AMOUNT: TCurrencyField;
    Query2UserID: TStringField;
    Query2UserDate: TDateTimeField;
    Query2YN: TStringField;
    Query2XH: TFloatField;
    Panel2: TPanel;
    Query3dwbh: TStringField;
    Query1DESC_GOODS: TStringField;
    UpdateSQL1: TUpdateSQL;
    qrytemp1: TQuery;
    Query4: TQuery;
    PopupMenu1: TPopupMenu;
    Modify1: TMenuItem;
    Save1: TMenuItem;
    Cancel1: TMenuItem;
    UpdateSQL2: TUpdateSQL;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnExcelClick(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure btnModifyClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure Query1AfterOpen(DataSet: TDataSet);
    procedure DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure btndeleteClick(Sender: TObject);
    procedure Modify1Click(Sender: TObject);
    procedure Query3AfterOpen(DataSet: TDataSet);
    procedure Save1Click(Sender: TObject);
    procedure Cancel1Click(Sender: TObject);
  private
    AppDir:String;
    { Private declarations }
    function GetEnglishDate(strDate: TDate): string;
    function MoneyFloatToEnglish(ARMBCash:Real; intBef: Boolean):string;
  public
    { Public declarations }
  end;

var
  InvoicePL_TW: TInvoicePL_TW;

implementation
  uses main1, FunUnit;
{$R *.dfm}
//Date Convert English
function TInvoicePL_TW.GetEnglishDate(strDate: TDate): string;
var strMM: string;
    iYear,iMonth,iDay:word;
begin
  //
  Decodedate(strDate,iYear,iMonth,iDay);   //т畐闽计沮
  case iMonth of
   01: strMM := 'JAN';
   02: strMM := 'FEB';
   03: strMM := 'MAR';
   04: strMM := 'APR';
   05: strMM := 'MAY';
   06: strMM := 'JUN';
   07: strMM := 'JUL';
   08: strMM := 'AUG';
   09: strMM := 'SEP';
   10: strMM := 'OCT';
   11: strMM := 'NOV';
   12: strMM := 'DEC'
  else
   strMM := '00.';
  end;
  Result := strMM+', '+inttostr(iDay)+', '+inttostr(iYear);
  //
end;
//Money Convert English
function TInvoicePL_TW.MoneyFloatToEnglish(ARMBCash: Real ; intBef: Boolean): string;
  function  Left(const AStr: string; ACount: Integer): string;
  begin
    Result := Copy(astr,1,ACount);
  end;

  function Right(const AStr: string; ACount: Integer): string;
  begin
    Result := Copy(astr,Length(AStr)-acount+1, ACount);
  end;

  //?1-19ぇ????Θ璣ゅボ猭
  function DigitToEn1(strDigits: String): String;
  begin
    Case StrToInt(strDigits) of
      1: Result := 'ONE';
      2: Result := 'TWO';
      3: Result := 'THREE';
      4: Result := 'FOUR';
      5: Result := 'FIVE';
      6: Result := 'SIX';
      7: Result := 'SEVEN';
      8: Result := 'EIGHT';
      9: Result := 'NINE';
      10: Result := 'TEN';
      11: Result := 'ELEVEN';
      12: Result := 'TWELVE';
      13: Result := 'THIRTEEN';
      14: Result := 'FOURTEEN';
      15: Result := 'FifTEEN';
      16: Result := 'SIXTEEN';
      17: Result := 'SEVENTEEN';
      18: Result := 'EIGHTEEN';
      19: Result := 'NINETEEN';
    else
      Result := '';
    end;
  end;
  //?1-99ぇ????Θ璣ゅボ猭
  function DigitToEn2(strDigits: String): String;
  var
    strTemp: String;
  begin
    if StrToInt(strDigits) < 20 then
      Result := DigitToEn1(strDigits)
    else begin
      Case StrToInt(Left(strDigits, 1)) of
        2: strTemp := 'TWENTY';
        3: strTemp := 'THIRTY';
        4: strTemp := 'FORTY';
        5: strTemp := 'FIFTY';
        6: strTemp := 'SIXTY';
        7: strTemp := 'SEVENTY';
        8: strTemp := 'EIGHTY';
        9: strTemp := 'NINETY';
      else
        strTemp := '';
      end;
      if Right(strDigits, 1) <> '0' then
          strTemp := strTemp + '-' + DigitToEn1(Right(strDigits, 1));
      Result := strTemp;
    end;
  end;
  //?1-999ぇ????Θ璣ゅボ猭
  //intFormat?1?HUNDRED 碞Τ AND??Τ
  function DigitToEn3(strDigits: String; intFormat: Integer): String;
  begin
    //奔?﹃玡0
    strDigits := IntToStr(StrToInt(strDigits));
    if StrToFloat(strDigits) <= 19 then
      Result := DigitToEn1(strDigits)
    else if (StrToFloat(strDigits) >= 20) and (StrToFloat(strDigits) <= 99) then
      Result := DigitToEn2(strDigits)
    else begin
      Result := DigitToEn1(Left(strDigits, 1)) + ' HUNDRED AND';
      if (StrToFloat(Right(strDigits, 2)) > 0) and
        (StrToFloat(Right(strDigits, 2)) < 20) then
        if intFormat = 1 then
          Result := Result + ' '+DigitToEn1(Right(strDigits, 2)) //' AND ' +
        else
          Result := Result + ' ' + DigitToEn1(Right(strDigits, 2))
      else if (StrToFloat(Right(strDigits, 2)) >= 20)
        and (StrToFloat(Right(strDigits, 2)) <= 99) then
        if intFormat = 1 then
          Result := Result + ' ' + DigitToEn2(Right(strDigits, 2)) //AND
        else
          Result := Result + ' ' + DigitToEn2(Right(strDigits, 2));
    end;
  end;
var
  // 俱?场 ?场
  strInteger, strDecimal: String;
  strTemp: String;
  strDigits :string;

begin
  //?,蒃?ㄤ?琌?Τ種?
  if (ARMBCash > 999999999999.99)  or ( ARMBCash< 0.01) then
    raise exception.Create('Out of range, must between 0.01 - 999999999999.99');
  strDigits:= FloatToStr(ARMBCash);

  //Τ俱?场だの?场だ

  if (Int(ARMBCash) > 0) and (ARMBCash - Int(ARMBCash) > 0) then
  begin
    strInteger := Left(strDigits, Pos('.', strDigits) - 1);
    strDecimal := Right(strDigits, Length(strDigits) - Pos('.', strDigits));
  end

  //Τ俱?场だ
  else if Int(ARMBCash) > 0 then
    strInteger := IntToStr(System.Round(ARMBCash))

  //Τ?场だ
  else if ARMBCash - Int(ARMBCash) > 0 then
    strDecimal := Right(strDigits, Length(strDigits) - Pos('.', strDigits));

  //眔俱?场だ璣ゅボ猭
  if strInteger <> '' then begin
    strTemp := DigitToEn3(Right(strInteger, 3), 1);
    if Length(strInteger) > 3 then begin
      strTemp := DigitToEn3(Left(Right(strInteger, 6),
        Length(Right(strInteger, 6)) - 3), 2) + ' THOUSAND AND ' + strTemp;
      //κ蒃

      if Length(strInteger) > 6 then
        strTemp := DigitToEn3(Left(strInteger, Length(strInteger) - 6), 2) +
        ' MILLION AND ' + strTemp;
        //?
      if Length(strInteger) > 9 then
        strTemp := DigitToEn3(Left(strInteger, Length(strInteger) - 9), 2) +
        ' BILLION AND ' + strTemp;
    end;
    strInteger := strTemp;
  end;

  if (strDecimal <> '') and (Length(strDecimal) <= 3) then
    strDecimal := DigitToEn3(strDecimal, 1);

  if intBef=false then
  begin
    if (strInteger <> '') and (strDecimal <> '') then
        Result := strInteger + ' AND CENTS ' + strDecimal + ' ONLY'
    else if strInteger <> '' then
        Result := strInteger + ' ONLY'
    else if strDecimal <> '' then
      Result :=' CENTS '+strDecimal + ' ONLY'
    else
      Result := 'ZERO'
  end else
  begin
    if (strInteger <> '') and (strDecimal <> '') then
        Result := strInteger + ' DOLLARS AND ' + strDecimal + ' CENTS ONLY'
    else if strInteger <> '' then
        Result := strInteger + ' DOLLARS ONLY'
    else if strDecimal <> '' then
      Result := strDecimal + ' CENTS ONLY'
    else
      Result := 'ZERO'
  end;
end;

procedure TInvoicePL_TW.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=CaFree;
end;

procedure TInvoicePL_TW.FormDestroy(Sender: TObject);
begin
  InvoicePL_TW:=nil;
end;

procedure TInvoicePL_TW.Button1Click(Sender: TObject);
begin
  //
  with Query1 do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Select *   ');
    SQL.Add('from INVOICE_M_TW ');
    SQL.Add('WHERE 1=1  ');
    if chkIndate.Checked then
    begin
      SQL.Add('   and Convert(smalldatetime, Convert(varchar,INVOICE_M_TW.INV_DATE,111))  between ');
      SQL.Add('   '''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''' and  '''+formatdatetime('yyyy/MM/dd',DTP2.Date)+''' ');
    end;
    if INV_NOEdit.Text<>'' then
      SQL.Add(' and INVOICE_M_TW.INV_NO LIKE ''%'+INV_NOEdit.Text+'%''');
    if CON_NOEdit.Text<>'' then
      SQL.Add(' and INVOICE_M_TW.CON_NO LIKE ''%'+CON_NOEdit.Text+'%'' ');
    //funcObj.WriteErrorLog(SQL.Text);
    Active:=true;
  end;
  Query2.Active:=true;
  Query3.Active:=true;
  //
end;

procedure TInvoicePL_TW.FormCreate(Sender: TObject);
begin
  AppDir:=ExtractFilePath(Application.ExeName);
  DTP1.Date :=Date-3;
  DTP2.Date :=Date;
end;

procedure TInvoicePL_TW.btnExcelClick(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j,k: integer;
begin
  if(not DirectoryExists(AppDir+'Additional\'))  then ForceDirectories(AppDir+'Additional\');
     CopyFile(Pchar('\\'+main.ServerIP+'\liy_erp\Additional\Shipping_SN72.xlsx'),Pchar(AppDir+'Additional\Shipping_SN72.xlsx'),false);
  if FileExists(AppDir+'Additional\Shipping_SN72.xlsx') then
  begin
    try
      eclApp:=CreateOleObject('Excel.Application');
      eclApp.DisplayAlerts := False;
      WorkBook:=CreateOleObject('Excel.Sheet');
    except
      Application.MessageBox('No Microsoft  Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
      Exit;
    end;
    try
      eclApp.WorkBooks.Open(AppDir+'Additional\Shipping_SN72.xlsx');
      //Invoice
      eclApp.WorkSheets[1].Activate;
      eclApp.Cells(5, 1) := 'NO. '+Query1.FieldByName('CON_NO').AsString;
      eclApp.Cells(5, 7) := 'Date: '+GetEnglishDate(Query1.FieldByName('INV_Date').Value);
      eclApp.Cells(6, 1) := 'PURCHASE CONTRACT: '+Query1.FieldByName('INV_NO').AsString;
      eclApp.Cells(7, 1) :='INVOICE OF: '+Query1.FieldByName('DESC_GOODS').AsString;
      eclApp.Cells(9, 1) := 'SHIPPED BY '+Query1.FieldByName('SHIP_BY').AsString;
      eclApp.Cells(10, 1) :='SAILING ON OR ABOUT                                 FROM  '+Query1.FieldByName('FROM_WHERE').AsString+'                                 '+'TO  ' +Query1.FieldByName('TO_WHERE').AsString;
      eclApp.Cells(12, 2) :=Query1.FieldByName('DESC_GOODS').AsString;
      //
      j:=13;
      Query2.First;
      for i:=1 to  Query2.RecordCount do
      begin
        eclApp.ActiveSheet.Rows[j].Insert(-4121);
        //
        eclApp.Cells(j,1):=inttostr(i);
        eclApp.Cells(j,2):=trim(Query2.FieldByName('clpm').Value);
        eclApp.Cells[j,2].WrapText := True;
        eclApp.Cells(j,3):=Query2.FieldByName('madein').Value;
        eclApp.Cells(j,4):=Query2.FieldByName('Qty').Value;
        eclApp.Cells(j,5):=Query2.FieldByName('DWBH').Value;
        eclApp.Cells(j,6):=Query1.FieldByName('CURRENCY').Value;
        eclApp.Cells(j,7):=Query2.FieldByName('UNIT_PRICE').Value;
        eclApp.Range[eclApp.Cells[j,7],eclApp.Cells[j,7]].NumberFormatLocal:='#0.000000';
        eclApp.Cells(j,8):=Query1.FieldByName('CURRENCY').Value;
        eclApp.Cells(j,9):=Query2.FieldByName('AMOUNT').Value;
        eclApp.Cells[j,9].NumberFormatLocal:='@';
        Query2.Next;
        inc(j);
      end;
      eclApp.ActiveSheet.Rows[j].Delete(-4121);
      eclApp.range[eclApp.cells[j-1,1],eclApp.cells[j-1,9]].borders[4].linestyle:=1;
      k:=j;
      with Query4 do
      begin
        Active:=false;
        SQL.clear;
        SQL.add('Select Sum(Qty) as Qty,dwbh ');
        SQL.add('from INVOICE_D_TW');
        SQL.add('where INVOICE_D_TW.INV_NO='''+Query1.FieldByName('INV_NO').AsString+''' ');
        SQL.add('Group by dwbh');
        Active:=true;
      end;
      for i:=1 to  Query4.RecordCount do
      begin
        eclApp.Cells[k,4].Formula:=Query4.FieldByName('Qty').Value;
        eclApp.Cells(k,5):=Query4.FieldByName('DWBH').Value;
        Query4.Next;
        inc(k);
      end;
      eclApp.Cells[j,9].Formula:='=SUM(I13:I'+inttostr(j-1)+')';
      eclApp.ActiveSheet.Rows[k+1].RowHeight := 40;
      eclApp.Cells(k+1,2):='(SAY TOTAL: US DOLLARS '+MoneyFloatToEnglish( strtofloat(DBGridEh2.Getfootervalue(0,DBGridEh2.columns[6])),false) ;
      eclApp.Range[eclApp.Cells[k+1,1],eclApp.Cells[k+1,8]].merge;
      eclApp.Cells(k+3,7):='CHEER ACCESS LTD';
      eclApp.Range[eclApp.Cells[k+3,7],eclApp.Cells[k+3,7]].Font.Size := 14;
      eclApp.Range[eclApp.Cells[k+3,5],eclApp.Cells[k+3,9]].merge;
      //Packing List
      eclApp.WorkSheets[2].Activate;
      eclApp.Cells(5, 1) := 'NO. '+Query1.FieldByName('CON_NO').AsString;
      eclApp.Cells(5, 6) := 'Date:'+GetEnglishDate(Query1.FieldByName('INV_Date').Value);
      eclApp.Cells(6, 1) := 'PURCHASE CONTRACT: '+Query1.FieldByName('INV_NO').AsString;
      eclApp.Cells(7, 1) :='INVOICE OF:' +Query1.FieldByName('DESC_GOODS').AsString;
      eclApp.Cells(9, 1) := 'SHIPPED BY '+Query1.FieldByName('SHIP_BY').AsString;
      eclApp.Cells(10, 1) :='SAILING ON OR ABOUT                                 FROM  '+Query1.FieldByName('FROM_WHERE').AsString+'                                 '+'TO  ' +Query1.FieldByName('TO_WHERE').AsString;
      eclApp.Cells(12, 3) :=Query1.FieldByName('DESC_GOODS').AsString;
      j:=13;
      Query3.First;
      for i:=1 to  Query3.RecordCount do
      begin
        eclApp.ActiveSheet.Rows[j].Insert(-4121);
        //
        eclApp.Cells[j,2].NumberFormatLocal:='@';
        if Query3.FieldByName('CTN').AsString<>'' then
        eclApp.Cells(j,2):=trim(Query3.FieldByName('NO_SE').Value);
        eclApp.Cells(j,3):=Query3.FieldByName('clpm').Value;
        eclApp.Cells[j,3].WrapText := True;
        eclApp.Cells(j,4):=Query3.FieldByName('Qty').Value;
        eclApp.Cells(j,5):=Query3.FieldByName('DWBH').Value;
        if Query3.FieldByName('TNW').AsString<>'' then
          eclApp.Cells(j,6):=Query3.FieldByName('TNW').Value
        else
          eclApp.Cells(j,6):=0;
        eclApp.Cells(j,7):='KGS';
        if Query3.FieldByName('TGW').AsString<>'' then
          eclApp.Cells(j,8):=Query3.FieldByName('TGW').Value
        else
          eclApp.Cells(j,8):=0;
        eclApp.Cells(j,9):='KGS';
        Query3.Next;
        Inc(j);
      end;
      eclApp.ActiveSheet.Rows[j].Delete(-4121);
      eclApp.range[eclApp.cells[j-1,1],eclApp.cells[j-1,9]].borders[4].linestyle:=1;
      k:=j;
      Query4.First;
      with Query4 do
      begin
        Active:=false;
        SQL.clear;
        SQL.add('Select Sum(Qty) as Qty,dwbh ');
        SQL.add('from INVOICE_D_TW');
        SQL.add('where INVOICE_D_TW.INV_NO='''+Query1.FieldByName('INV_NO').AsString+''' ');
        SQL.add('Group by dwbh');
        Active:=true;
      end;
      for i:=1 to  Query4.RecordCount do
      begin
        eclApp.Cells[k,4].Formula:=Query4.FieldByName('Qty').Value;
        eclApp.Cells(k,5):=Query4.FieldByName('DWBH').Value;
        Query4.Next;
        inc(k);
      end;
      eclApp.Cells[j,6].Formula:='=SUM(F13:F'+inttostr(j-1)+')';
      eclApp.Cells[j,7]:='KGS';
      eclApp.Cells[j,8].Formula:='=SUM(H13:H'+inttostr(j-1)+')';
      eclApp.Cells[j,9]:='KGS';
      eclApp.Cells(j,1):='TOTAL: '+DBGridEh3.Getfootervalue(0,DBGridEh3.columns[2])+' CARTONS';
      eclApp.Cells(k+2,6):='CHEER ACCESS LTD';
      eclApp.Range[eclApp.Cells[k+2,6],eclApp.Cells[k+1,6]].Font.Size := 14;
      eclApp.Range[eclApp.Cells[k+2,5],eclApp.Cells[k+2,9]].merge;
      //eclApp.Cells(k,6).Font.Size := 14;
      Showmessage('Succeed.');
      eclApp.Visible:=True;
    except
      on   F:Exception   do
        Showmessage(F.Message);
    end;
  end;
end;

procedure TInvoicePL_TW.btnSaveClick(Sender: TObject);
var i:integer;
    INV_NO:Variant;
begin
  try
      Query1.first;
      for i:=1 to query1.RecordCount do
      begin
        case Query1.updatestatus of
          usmodified:
             begin
              if Query1.fieldbyname('YN').value = '0' then
              begin
                with qrytemp1 do
                begin
                  Active:=false;
                  SQL.clear;
                  SQL.add('Delete INVOICE_D_TW where INV_NO='''+Query1.fieldbyname('INV_NO').AsString+''' ');
                  SQL.add('Delete PACKING_TW where INV_NO='''+query1.fieldbyname('INV_NO').AsString+''' ');
                  Execsql;
                end;
                UpdateSQL1.apply(ukdelete);
              end else
              begin
                Query1.edit;
                INV_NO:=Query1.fieldbyname('INV_NO').Value;
                Query1.FieldByName('UserID').Value:=main.edit1.text;
                Query1.FieldByName('UserDate').Value:=Date;
                UpdateSQL1.apply(ukmodify);
              end;
            end;
         end;
         Query1.next;
      end;
    Query1.active:=false;
    Query1.cachedupdates:=false;
    Query1.requestlive:=false;
    Query1.active:=true;

    btnsave.Enabled:=false;
    btnCancel.Enabled:=false;
    DBGridEh1.FieldColumns['DESC_GOODS'].ButtonStyle:=cbsnone;
    Query2.Open;
    Query3.Open;
    //
  except
    Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
    abort;
  end;
  IF INV_NO<>'' THEN Query1.Locate('INV_NO',INV_NO,[]) ;

end;

procedure TInvoicePL_TW.btnModifyClick(Sender: TObject);
begin
  with Query1 do
  begin
    RequestLive:=true;
    CachedUpdates:=true;
    Edit;
  end;
  btnsave.Enabled:=true;
  btnCancel.Enabled:=true;
  DBGridEh1.FieldColumns['DESC_GOODS'].ButtonStyle:=cbsAuto;
  //
  Query2.Close;
  Query3.Close;
end;

procedure TInvoicePL_TW.btnCancelClick(Sender: TObject);
begin

  with Query1 do
  begin
    Active:=false;
    RequestLive:=false;
    CachedUpdates:=false;
    Active:=true;
  end;
  btnSave.Enabled:=false;
  btnCancel.Enabled:=false;

  DBGridEh1.FieldColumns['DESC_GOODS'].ButtonStyle:=cbsnone;
  Query2.Open;
  Query3.Open;
end;

procedure TInvoicePL_TW.Query1AfterOpen(DataSet: TDataSet);
begin
   if (query1.Active) and (query1.RecordCount > 0) then
   begin
       btndelete.Enabled:=true;
       btnmodify.Enabled:=true;
       btnExcel.Enabled:=true;
   end;
end;

procedure TInvoicePL_TW.DBGridEh1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if Query1.FieldByName('YN').AsString = '0' then
  begin
    DBGridEh1.Canvas.Font.Color:=clred;
  end;
end;

procedure TInvoicePL_TW.btndeleteClick(Sender: TObject);
begin
    if messagedlg('Do you really want to delete this record?',mtconfirmation,[mbYes,Mbno],0)=mrYes then
    begin
        Query1.RequestLive:=true;
        Query1.CachedUpdates:=true;
        Query1.Edit;
        Query1.FieldByName('YN').AsString :='0';
        btnsave.Enabled:=true;
        btnCancel.Enabled:=true;
    end;
end;

procedure TInvoicePL_TW.Modify1Click(Sender: TObject);
begin
  with Query3 do
  begin
    RequestLive:=true;
    CachedUpdates:=true;
    Edit;
  end;
  Save1.Enabled:=true;
  Cancel1.Enabled:=true;
end;

procedure TInvoicePL_TW.Query3AfterOpen(DataSet: TDataSet);
begin
  Modify1.Enabled:=true;
end;

procedure TInvoicePL_TW.Save1Click(Sender: TObject);
var i:integer;
    INV_NO:Variant;
begin
  try
    Query3.first;
    for i:=1 to Query3.RecordCount do
    begin
      case Query3.updatestatus of
        usmodified:
        begin
          Query3.edit;
          Query3.FieldByName('UserID').Value:=main.edit1.text;
          Query3.FieldByName('UserDate').Value:=Date;
          UpdateSQL2.apply(ukmodify);
        end;
      end;
       Query3.next;
    end;
    Query3.active:=false;
    Query3.cachedupdates:=false;
    Query3.requestlive:=false;
    Query3.active:=true;

    Save1.Enabled:=false;
    Cancel1.Enabled:=false;
    //
  except
    Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
    abort;
  end;
end;

procedure TInvoicePL_TW.Cancel1Click(Sender: TObject);
begin
  with Query3 do
  begin
    Active:=false;
    RequestLive:=false;
    CachedUpdates:=false;
    Active:=true;
  end;
  Save1.Enabled:=false;
  Cancel1.Enabled:=false;
end;

end.
