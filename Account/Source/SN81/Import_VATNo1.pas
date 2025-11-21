unit Import_VATNo1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls,ComObj, DB, DBTables,StrUtils, Menus, ZLib, shellAPI,
  ExtCtrls,  Winsock, Registry;

type
  TImport_VATNo = class(TForm)
    Button1: TButton;
    OpenDialog1: TOpenDialog;
    Query1: TQuery;
    Memo1: TMemo;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    SampleFiless: TButton;
    SaveDialog1: TSaveDialog;
    Label6: TLabel;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure SampleFilessClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Import_VATNo: TImport_VATNo;

implementation
uses fununit;

{$R *.dfm}

procedure TImport_VATNo.FormDestroy(Sender: TObject);
begin
    Import_VATNo:=nil;
end;

procedure TImport_VATNo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    action:=cafree;
end;


procedure TImport_VATNo.Button1Click(Sender: TObject);
var i,k,COUNT,Rows:Integer;
    GO: boolean;
    Excel,arrData:Variant;
    FileName:string;
begin
  if not OpenDialog1.Execute then
     abort;

  Excel:=CreateOleObject('Excel.Application');
  Excel.WorkBooks.Open(OpenDialog1.FileName);
  Excel.WorkSheets[1].Activate;
  Excel.Columns[1].NumberFormat := '@';
  Excel.Columns[2].NumberFormat := '@';
  Excel.Columns[3].NumberFormat := 'yyyy/mm/dd';
  Rows := Excel.WorkSheets[1].UsedRange.EntireRow.count;
  arrData:= Excel.WorkSheets[1].UsedRange.Value;

  try
      GO:=false;
      COUNT:=1;
      i:=1;  //Row(1) null
      k:=0;

      memo1.Clear;
      while (count < 2) and(i<=Rows) do
      begin
        try
          if trim(arrData[i,1])='' then
          begin
              inc(COUNT);
              Go:=false;
          end
          else
          begin
            COUNT:=1;
            Go:=true;
          end;

          if Go=true then
          begin
            with Query1 do
            begin
              Active:=false;
              SQL.Clear;
              if ((label6.Caption='Mass') or (label6.Caption='CBY')) then
              begin
                SQL.Add('SELECT sb.Customs_No FROM ship_booking sb WHERE sb.Customs_No='''+trim(arrData[i,1])+''' ');
                SQL.Add('UNION ALL ');
                SQL.Add('SELECT distinct inv.Customs_No From INVOICE_D inv where inv.Customs_No='''+trim(arrData[i,1])+''' ');
                //funcobj.WriteErrorLog(sql.Text);
                Active:=true;
                if trim(FieldByName('Customs_No').AsString)<>'' then
                begin
                    Active:=false;
                    SQL.Clear;
                    SQL.Add('UPDATE INVOICE_D ');
                    SQL.Add('SET VAT_NO = '''+trim(arrData[i,2]) +''' ');
                    SQL.Add('   ,VAT_DATE = '''+formatdatetime('yyyy/MM/dd',VarToDateTime(trim(arrData[i,3])))+'''');
                    SQL.Add('FROM Ship_Booking sb inner join INVOICE_D inv on inv.INV_NO=sb.INV_NO ');
                    SQL.Add('WHERE ((sb.Customs_No='''+trim(arrData[i,1])+''') or (inv.Customs_No='''+trim(arrData[i,1])+'''))');
                    //funcobj.WriteErrorLog(sql.Text);
                    execsql;
                    //
                    inc(k);
                    memo1.Lines.Add('VAT_NO: ' +trim(arrData[i,2])+ ' / VAT_Date : ' + formatdatetime('yyyy/MM/dd',VarToDateTime(trim(arrData[i,3])))+ chr(10));
                end;
              end else
              begin
                SQL.Add('SELECT CustomsNo FROM DevtoSimis  WHERE CustomsNo='''+trim(arrData[i,1])+''' ');
                Active:=true;
                if trim(FieldByName('CustomsNo').AsString)<>'' then
                begin
                    Active:=false;
                    SQL.Clear;
                    SQL.Add('UPDATE DevtoSimis ');
                    SQL.Add('SET VAT_NO = '''+trim(arrData[i,2]) +''' ');
                    SQL.Add('   ,VAT_DATE = '''+formatdatetime('yyyy/MM/dd',VarToDateTime(trim(arrData[i,3])))+'''');
                    SQL.Add('FROM DevtoSimis ');
                    SQL.Add('WHERE CustomsNo='''+trim(arrData[i,1])+'''');
                    execsql;
                    //
                    inc(k);
                    memo1.Lines.Add('VAT_NO: ' +trim(arrData[i,2])+ ' / VAT_Date : ' + formatdatetime('yyyy/MM/dd',VarToDateTime(trim(arrData[i,3])))+ chr(10));
                end;
              end;
            end;
          end; 
          inc(i);
        except
          showmessage('Error for invoice no. : ' + trim(arrData[i,7]));
          Break;
        end;
      end;
      showmessage('Import '+inttostr(k)+' rows successful!!!');
  Finally
      Excel.ActiveWorkBook.Close(SaveChanges:= 0);
      Excel.Quit;
      Excel:=Unassigned;
      arrData:=Unassigned;
  end;
end;

procedure CompressIt(var CompressedStream: TMemoryStream; const CompressionLevel: TCompressionLevel);
var
   SourceStream: TCompressionStream;
   DestStream: TMemoryStream;
   Count: int64;
begin
   Count := CompressedStream.Size;
   DestStream := TMemoryStream.Create;
   SourceStream := TCompressionStream.Create(CompressionLevel, DestStream);
   try
      CompressedStream.SaveToStream(SourceStream);
      SourceStream.Free;
      CompressedStream.Clear;
      CompressedStream.WriteBuffer(Count, SizeOf(Count));
      CompressedStream.CopyFrom(DestStream, 0);
   finally
      DestStream.Free;
   end;
end;

procedure UnCompressit(const CompressedStream: TMemoryStream; var UnCompressedStream: TMemoryStream);
var
   SourceStream: TDecompressionStream;
   DestStream: TMemoryStream;
   Buffer: PChar;
   Count: int64;
begin
   CompressedStream.ReadBuffer(Count, SizeOf(Count));      //doc so byte tu stream vao buffer Count
   GetMem(Buffer, Count);
   DestStream := TMemoryStream.Create;
   SourceStream := TDecompressionStream.Create(CompressedStream);
   try
      SourceStream.ReadBuffer(Buffer^, Count);
      DestStream.WriteBuffer(Buffer^, Count);
      DestStream.Position := 0;
      UnCompressedStream.LoadFromStream(DestStream);
   finally
      FreeMem(Buffer);
      DestStream.Free;
   end;
end;

procedure TImport_VATNo.SampleFilessClick(Sender: TObject);
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

    eclApp.Columns[1].NumberFormat:='@';
    eclApp.Columns[2].NumberFormat:='@';
    eclApp.Columns[3].NumberFormat:='yyyy/mm/dd';

    eclApp.Cells(1,1):='CustomsNo';
    eclApp.Cells(2,1):='305366621360';
    eclApp.Cells(3,1):='305367328140';
    eclApp.Cells(4,1):='305365535810';

    eclApp.Cells(1,2):='VAT_NO';
    eclApp.Cells(2,2):='00005980';
    eclApp.Cells(3,2):='00005981';
    eclApp.Cells(4,2):='00005983';

    eclApp.Cells(1,3):='VAT_DATE';
    eclApp.Cells(2,3):='2023/03/02';
    eclApp.Cells(3,3):='2023/03/02';
    eclApp.Cells(4,3):='2023/03/02';

    eclApp.Cells.Cells.item[1,1].font.bold :=true;
    eclApp.Caption:='ACCOUNT N81 SAMPLE IMPORT VATNO';
    eclapp.columns.autofit;       
    showmessage('Download excel SAMPLE successful.');
    eclApp.Visible:=True;
  except
    on   F:Exception   do
      showmessage(F.Message);
  end;
end;

end.
