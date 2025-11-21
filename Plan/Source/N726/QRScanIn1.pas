unit QRScanIn1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBTables, DB, GridsEh, DBGridEh, StdCtrls, Buttons, ExtCtrls;

type
  TQRScanIn = class(TForm)
    Panel3: TPanel;
    Label1: TLabel;
    Panel1: TPanel;
    Edit1: TEdit;
    DBGrid1: TDBGridEh;
    ScanData: TQuery;
    DS1: TDataSource;
    Qtemp: TQuery;
    Button2: TButton;
    Edit3: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Button4: TButton;
    DepNo: TQuery;
    DepNoID: TStringField;
    DepNoGSBH: TStringField;
    DepNoDepName: TStringField;
    DepNoDepMemo: TStringField;
    DepNoGXLB: TStringField;
    Label4: TLabel;
    Label6: TLabel;
    Edit2: TEdit;
    Edit4: TEdit;
    ScanDataDDBH: TStringField;
    ScanDataSIZE: TStringField;
    ScanDataQty: TIntegerField;
    ScanDataDepID: TStringField;
    ScanDataScanInQty: TIntegerField;
    ScanDataScanOutQty: TIntegerField;
    ScanDataUSERID: TStringField;
    ScanDataUSERDATE: TDateTimeField;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button2Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    function SplitString(const InputStr, Delimiter: string): TStringList;
    function CheckQtyExceeded(const ConditionStr: string; LastValue: Integer): Boolean;
  end;

var
  QRScanIn: TQRScanIn;

implementation

uses FunUnit,QRScanIn_Dep1,
  main1;

{$R *.dfm}

const
  ColumnNames: array[0..2] of string = ('DDBH', 'Size', 'DEPID');

procedure TQRScanIn.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TQRScanIn.FormDestroy(Sender: TObject);
begin
  QRScanIn := nil;
end;
procedure TQRScanIn.Button2Click(Sender: TObject);
begin
if (edit3.Text='') or (edit4.Text='')  then
  begin
 ShowMessage('Don hang va don vi khong duoc de trong!');
 exit;
 end;
  ScanData.close;
  scandata.SQL.Text:='SELECT * FROM CutDispatchSSS WHERE DDBH LIKE ''%' + Edit3.Text + '%'' and DepID LIKE ''%' + Edit4.Text + '%'' ';
  scandata.Open;
  //with ScanData do
  //begin
   // Active := False;
   // SQL.Clear;
    //SQL.Add('SELECT * FROM CutDispatchSSS');
    //SQL.Add('WHERE DDBH LIKE ''%' + Edit3.Text + '%''');
    // SQL.Add('where  DepID LIKE ''%' + Edit4.Text + '%''');
   // Active := True;
  //end;
end;

function TQRScanIn.SplitString(const InputStr, Delimiter: string): TStringList;
var
  StrList: TStringList;
begin
  StrList := TStringList.Create;
  try
    if Length(Delimiter) > 0 then
      StrList.Delimiter := Delimiter[1] // L?y ký t? d?u tiên c?a Delimiter
    else
      StrList.Delimiter := ';';

    //StrList.StrictDelimiter := True; // Lo?i b? kho?ng tr?ng ngoài các d?u phân cách
    StrList.DelimitedText := InputStr;
    Result := StrList;
  except
    StrList.Free;
    Result := nil;
  end;
end;

procedure TQRScanIn.Edit1KeyPress(Sender: TObject; var Key: Char);
var
  StrList: TStringList;
  i: Integer;
  ConditionStr,ConditionStr1, LastValue: string;
begin
  if Key = #13 then  // Kiem tra Enter
  begin
  if (edit1.text='') or (edit4.text='') or (edit2.text='') then
    begin
    ShowMessage('du lieu trong hoac chua chon don vi');
        Exit;
    end;
    Key := #0;  
    StrList := SplitString(Edit1.Text, ';'); // Tách chu?i nh?p t? Edit1
    try
      if StrList.Count < 4 then
      begin
        ShowMessage('Du lieu nhan QR co van de!');
        Exit;
      end;

      // L?y giá tr? cu?i cùng d? c?p nh?t ScanInQty
      LastValue := StrList[StrList.Count - 1];

      // Xây d?ng di?u ki?n WHERE t? các ph?n còn l?i
      ConditionStr := '';
      ConditionStr1 :='';
      for i := 0 to High(ColumnNames) do
      begin
        if ConditionStr <> '' then
          begin
              ConditionStr := ConditionStr + ' AND ';
              ConditionStr1 := ConditionStr1 + ',';
          end;
        ConditionStr := ConditionStr + ColumnNames[i] + '=' + QuotedStr(StrList[i]);
        ConditionStr1 := ConditionStr1 + QuotedStr(StrList[i]);
      end;

      if CheckQtyExceeded(ConditionStr, StrToInt(LastValue)) then
        Exit;  // K?t thúc n?u vu?t quá s? lu?ng
      // Th?c hi?n truy v?n SQL
      with Qtemp do
      begin
        Active := False;
        SQL.Clear;
        SQL.Add('UPDATE CutDispatchSSS');
        SQL.Add('SET ScanInQty = ScanInQty + ' + LastValue);
        SQL.Add('WHERE ' + ConditionStr);
        SQL.Add('INSERT INTO CutDispatchSSSS ');
        SQL.Add('VALUES (' + ConditionStr1 + ', ' + LastValue + ', ''' + main.edit1.Text + ''', GETDATE(), ''IN'');');
        Qtemp.ExecSQL;
      end;
      //xoa du lieu textbo1 va load lai du lieu
      edit1.Text:='';
         ScanData.close;
         scandata.SQL.Text:='SELECT * FROM CutDispatchSSS WHERE DDBH LIKE ''%' + Edit3.Text + '%'' and DepID LIKE ''%' + Edit4.Text + '%'' ';
         scandata.Open;
    finally
      StrList.Free;
    end;
  end;
end;

function TQRScanIn.CheckQtyExceeded(const ConditionStr: string; LastValue: Integer): Boolean;
var
  CurrentQty, ScanInQty: Integer;
begin
  Result := False;  // M?c d?nh không vu?t quá

  with Qtemp do
  begin
    Active := False;
    SQL.Clear;
    SQL.Add('SELECT ScanInQty, Qty FROM CutDispatchSSS');
    SQL.Add('WHERE ' + ConditionStr);
    Active := True;

    if not Eof then
    begin
      ScanInQty := FieldByName('ScanInQty').AsInteger;
      CurrentQty := FieldByName('Qty').AsInteger;

      if (ScanInQty + LastValue) > CurrentQty then
      begin
        ShowMessage('Loi: ScanInQty vuot qua tong so luong!');
        edit1.Text:='';
        Result := True; // Tr? v? True n?u vu?t
      end;
    end;

    Active := False;
  end;
end;

procedure TQRScanIn.Button4Click(Sender: TObject);
begin
  QRScanIn_Dep:=TQRScanIn_Dep.Create(self);
  QRScanIn_Dep.ShowModal();
  QRScanIn_Dep.Free;
end;

end.
