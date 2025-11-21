unit Scan_InventoryList1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GridsEh, DBGridEh, ComCtrls, StdCtrls, Buttons, ExtCtrls, DB,
  DBTables, comobj;

type
  TScan_InventoryList = class(TForm)
    ToolPanel: TPanel;
    Label5: TLabel;
    Label3: TLabel;
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    DBGridEh1: TDBGridEh;
    Excel: TButton;
    DataSource1: TDataSource;
    Query1: TQuery;
    Query1TestNO: TStringField;
    Query1RFIDNO: TStringField;
    Query1SRNO: TStringField;
    Query1DEVELOPER: TStringField;
    Query1KEEPROOM: TStringField;
    Query1QTY: TIntegerField;
    Query1SHELFNO: TStringField;
    Label1: TLabel;
    ComboBox2: TComboBox;
    Label2: TLabel;
    ComboBox1: TComboBox;
    Query1MONTH: TStringField;
    Query1YEAR: TStringField;
    Edit3: TEdit;
    Label4: TLabel;
    Query1Userdate: TDateTimeField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure ExcelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Scan_InventoryList: TScan_InventoryList;

implementation
  uses FunUnit;
{$R *.dfm}

procedure TScan_InventoryList.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TScan_InventoryList.FormDestroy(Sender: TObject);
begin
  Scan_InventoryList := nil;
end;

procedure TScan_InventoryList.Button1Click(Sender: TObject);
begin
  with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.Add('select SCNORFIDNO as RFIDNO, RFID_TB.TESTNO, RFID_TB.Article as SRNO, ShoeTest.FD as DEVELOPER, ');
    sql.Add('       case when RFID_TB.TESTNO is null then 0 else 1 end as QTY, RFID_TB.WHNO as KEEPROOM, ');
    sql.Add('       RFID_TB.SNO as SHELFNO, KCYEAR as YEAR, KCMONTH AS MONTH, RFID_TB.Userdate');
    sql.Add(' FROM LIY_TYXUAN.dbo.RFID_WHMonth RFID_WHMonth');
    sql.Add(' left join LIY_TYXUAN.dbo.RFID_TB RFID_TB on RFID_TB.RFIDNO=RFID_WHMonth.SCNORFIDNO');
    sql.Add(' left join ShoeTest on RFID_TB.TESTNO=ShoeTest.TestNo');
    sql.Add(' where LEN(RFIDNO)=36 ');
    if edit1.text <> '' then
        sql.Add(' and RFID_TB.TESTNO = '''+edit1.text+'''');
    if edit2.text <> '' then
        sql.Add(' and RFID_TB.Article = '''+edit2.text+'''');
    if edit3.text <> '' then
        sql.Add(' and SCNORFIDNO like ''%'+edit3.text+'%''');
    if combobox2.Text <> '' then
        sql.Add(' and KCYEAR ='''+combobox2.text+''' ');
    if combobox1.Text <> '' then
        sql.Add(' and KCMONTH ='''+combobox1.text+''' ');
    //funcObj.WriteErrorLog(sql.Text);
    active:=true;
  end
end;

procedure TScan_InventoryList.ExcelClick(Sender: TObject);
var   eclApp,WorkBook:olevariant;
      i,j:integer;
begin
  if  Query1.active  then
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
      for i:=0 to DBGridEh1.Columns.Count-1 do
        eclApp.Cells(1,i+1):=DBGridEh1.Columns[i].Title.Caption;
      Query1.First;
      j:=2;
      while   not   Query1.Eof   do
      begin
        for i:=0 to DBGridEh1.Columns.Count-1 do
          eclApp.Cells(j,i+1):=DBGridEh1.Fields[i].Value;
        Query1.Next;
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
