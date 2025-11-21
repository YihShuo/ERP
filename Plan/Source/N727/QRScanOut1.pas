unit QRScanOut1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ExtCtrls;

type
  TQRScanOut = class(TForm)
    DBGrid1: TDBGridEh;
    ScanData: TQuery;
    DS1: TDataSource;
    Qtemp: TQuery;
    Panel3: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Panel1: TPanel;
    Edit1: TEdit;
    Button2: TButton;
    Edit3: TEdit;
    Button4: TButton;
    Edit2: TEdit;
    Edit4: TEdit;
    DepNo: TQuery;
    DepNoID: TStringField;
    DepNoGSBH: TStringField;
    DepNoDepName: TStringField;
    DepNoDepMemo: TStringField;
    DepNoGXLB: TStringField;
    ScanDataDDBH: TStringField;
    ScanDataSIZE: TStringField;
    ScanDataQty: TIntegerField;
    ScanDataDepID: TStringField;
    ScanDataScanInQty: TIntegerField;
    ScanDataScanOutQty: TIntegerField;
    ScanDataUSERID: TStringField;
    ScanDataUSERDATE: TDateTimeField;
    Label7: TLabel;
    Edit6: TEdit;
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
  QRScanOut: TQRScanOut;

implementation

uses FunUnit,QRScanOut_Dep1,
  main1;

{$R *.dfm}

const
  ColumnNames: array[0..2] of string = ('DDBH', 'Size', 'DepID');

procedure TQRScanOut.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TQRScanOut.FormDestroy(Sender: TObject);
begin
  QRScanOut := nil;
end;
procedure TQRScanOut.Button2Click(Sender: TObject);
begin
if edit3.Text='' then
  begin
 ShowMessage('Don hang khong duoc de trong!');
 exit;
 end;
  ScanData.close;
  scandata.SQL.Text:='SELECT * FROM CutDispatchSSS WHERE DDBH LIKE ''%' + Edit3.Text + '%''and DepID LIKE ''%' + Edit6.Text + '%'' ';
  scandata.Open;
end;

function TQRScanOut.SplitString(const InputStr, Delimiter: string): TStringList;
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

procedure TQRScanOut.Edit1KeyPress(Sender: TObject; var Key: Char);
var
  StrList: TStringList;
  x,i: Integer;
  ConditionStr, ConditionStr1, LastValue: string;
begin
  if Key = #13 then  // Ki?m tra n?u nh?n Enter
  begin
  if (edit1.text='') or (edit4.text='') or (edit2.text='') then
    begin
    ShowMessage('du lieu trong hoac chua chon don vi');
        Exit;
    end;
    Key := #0;  // Ngan xu?ng dòng trong Edit1
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
          end;
        ConditionStr := ConditionStr + ColumnNames[i] + '=' + QuotedStr(StrList[i]);
      end;
      for x := 0 to High(ColumnNames)-1 do
      begin
        if ConditionStr1 <> '' then
          begin
              ConditionStr1 := ConditionStr1 + ',';
          end;
        ConditionStr1 := ConditionStr1 + QuotedStr(StrList[x]);
      end;

      if CheckQtyExceeded(ConditionStr, StrToInt(LastValue)) then
        Exit;  // K?t thúc n?u vu?t quá s? lu?ng
      // Th?c hi?n truy v?n SQL
      with Qtemp do
      begin
        Active := False;
        SQL.Clear;
        SQL.Add('UPDATE CutDispatchSSS');
        SQL.Add('SET ScanOutQty = ScanOutQty + ' + LastValue);
        SQL.Add('WHERE ' + ConditionStr);
        SQL.Add('INSERT INTO CutDispatchSSSS ');
        SQL.Add('VALUES (' + ConditionStr1 + ', '''+ Edit4.Text +''', ' + LastValue + ', ''' + main.edit1.Text + ''', GETDATE(), ''OUT'');');
        Qtemp.ExecSQL;
      end;
      //xoa du lieu textbo1 va load lai du lieu
      edit1.Text:='';
  ScanData.close;
  scandata.SQL.Text:='SELECT * FROM CutDispatchSSS WHERE DDBH LIKE ''%' + Edit3.Text + '%''and DepID LIKE ''%' + Edit6.Text + '%'' ';
  scandata.Open;
    finally
      StrList.Free;
    end;
  end;
end;

function TQRScanOut.CheckQtyExceeded(const ConditionStr: string; LastValue: Integer): Boolean;
var
  CurrentQty, ScanOutQty: Integer;
begin
  Result := False;  // M?c d?nh không vu?t quá

  with Qtemp do
  begin
    Active := False;
    SQL.Clear;
    SQL.Add('SELECT ScanInQty,ScanOutQty FROM CutDispatchSSS');
    SQL.Add('WHERE ' + ConditionStr);
    Active := True;

    if not Eof then
    begin
      ScanOutQty := FieldByName('ScanOutQty').AsInteger;
      CurrentQty := FieldByName('ScanInQty').AsInteger;

      if (ScanOutQty + LastValue) > CurrentQty then
      begin
        ShowMessage('Loi: ScanOutQty vuot qua ScanInQty!');
        edit1.Text:='';
        Result := True; // Tr? v? True n?u vu?t
      end;
    end;

    Active := False;
  end;
end;

procedure TQRScanOut.Button4Click(Sender: TObject);
begin
  QRScanOut_Dep:=TQRScanOut_Dep.Create(self);
  QRScanOut_Dep.ShowModal();
  QRScanOut_Dep.Free;
end;

end.
