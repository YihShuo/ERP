unit EVAScanIn1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBTables, DB, Grids, ExtCtrls,StrUtils, Menus;

type
  TEVAScanIn = class(TForm)
    Panel1: TPanel;
    Edit1: TEdit;
    Button2: TButton;
    GroupBox1: TGroupBox;
    StringGrid1: TStringGrid;
    UpdataQuery: TQuery;
    TmpQry: TQuery;
    TmpQryProNo: TFloatField;
    TmpQryCodebar: TStringField;
    TmpQryInOut: TStringField;
    TmpQryClass: TStringField;
    TmpQryWorkID: TStringField;
    TmpQryMJBH: TStringField;
    TmpQryColorNo: TStringField;
    TmpQryenglishname: TStringField;
    TmpQryDDBH: TStringField;
    TmpQrySize: TStringField;
    TmpQryQty: TIntegerField;
    TmpQryUserid: TStringField;
    TmpQryUserDate: TDateTimeField;
    TmpQryYN: TStringField;
    TmpQryscandate: TStringField;
    Label2: TLabel;
    StaticText1: TStaticText;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    EDqty: TEdit;
    GroupBox2: TGroupBox;
    Label19: TLabel;
    Label1: TLabel;
    ComboBox1: TComboBox;
    Button1: TButton;
    PopupMenu1: TPopupMenu;
    Delete1: TMenuItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure EDqtyKeyPress(Sender: TObject; var Key: Char);
    procedure SaveScanTimeWithShift(barcodeVal: string);
    procedure Button1Click(Sender: TObject);
    procedure Delete1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    PIDcode: String;
    SumQty: Integer;
  end;

var
  EVAScanIn: TEVAScanIn;

implementation

uses main1;

{$R *.dfm}


procedure TEVAScanIn.SaveScanTimeWithShift(barcodeVal: string);
var
  scanTime: TDateTime;
  shiftName: string;
begin
  scanTime := Now;
  shiftName := ComboBox1.Text;
  with UpdataQuery do
  begin
    Close;
    SQL.Clear;
    SQL.Add('UPDATE ' + main.LIY_DD + '.[dbo].[rubber01f]');
    SQL.Add('SET ScanDate = :scandate, class_shift = :class_shift');
    SQL.Add('WHERE  ''P'' + [id_code] + [id] = :keyval');
    ParamByName('scandate').AsDateTime := scanTime;
    ParamByName('class_shift').AsString := shiftName;
    ParamByName('keyval').AsString := barcodeVal;
    ExecSQL;
  end;
end;

procedure TEVAScanIn.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
  EVAScanIn:=nil;
end;

procedure TEVAScanIn.Edit1KeyPress(Sender: TObject; var Key: Char);
var
i:Integer;
 totalsok  :Integer;
    begin
    if (key=#13) and (Length(edit1.text)=13) then
   begin
     begin
        SaveScanTimeWithShift(Edit1.Text);
     end;
      PIDcode := edit1.text;
      UpdataQuery.sql.Clear;
      UpdataQuery.sql.Add('SELECT [qty]-([s_ok]+'+EDqty.Text+') counts FROM '+main.LIY_DD+'.[dbo].[rubber01f] where ''P''+[id_code]+[id]='''+edit1.text+'''');
      UpdataQuery.Open;
      UpdataQuery.First;
      if UpdataQuery.FieldByName('counts').Value<0 then
      begin
        showmessage('Scan Qty > storage Qty !!!!!');
         edit1.SetFocus;
        edit1.text:='';
        Label3.Caption := '0';
        Label4.Caption := '0';
       // GroupBox2.Caption := '000000000000';
        Exit;
      end
      else
      begin
      UpdataQuery.sql.Clear;
      UpdataQuery.sql.Add('SELECT [qty]-([s_ok]+'+EDqty.Text+') totalsok FROM '+main.LIY_DD+'.[dbo].[rubber01f_Test] where ''P'' +  barcode='''+edit1.text+'''');
      UpdataQuery.Open;
      if UpdataQuery.RecordCount = 0 then
      begin
        totalsok := 1;
      end
      else
      begin
        totalsok := UpdataQuery.FieldByName('totalsok').AsInteger;
      end;
      if totalsok < 0 then
      begin
        showmessage('OK Qty > ALL Qty !!!!!');
        edit1.SetFocus;
        edit1.text:='';
        Label3.Caption := '0';
        Label4.Caption := '0';
       // GroupBox2.Caption := '000000000000';
      end
      else
      begin
      UpdataQuery.Active:=false;
      UpdataQuery.Close;
      UpdataQuery.SQL.Clear;
      UpdataQuery.SQL.Add(' insert into '+main.LIY_DD+'.[dbo].[rubber01f_Test] ' +
                          ' SELECT  [id_code]+[id] as Barcode ,[sku],[color],[size],[qty],[s_ok],Scan=' + EDqty.Text +
                          ' FROM '+main.LIY_DD+'.[dbo].[rubber01f] where s_ok<Qty AND ''P''+[id_code]+[id]='''+edit1.text+''' ');
      UpdataQuery.ExecSQL;
      UpdataQuery.Close;
      UpdataQuery.SQL.Clear;
      UpdataQuery.SQL.Add( 'UPDATE '+main.LIY_DD+'.[dbo].[rubber01f_Test] ' +
                           'SET s_ok += ' + EDqty.Text  + ' WHERE s_ok < qty AND ''P'' +  barcode= '''+edit1.text+'''' );
      UpdataQuery.ExecSQL;
      UpdataQuery.sql.Clear;
      UpdataQuery.sql.Add('SELECT [barcode] ,[sku] ,[color], [size] ,[qty] ,[s_ok] FROM '+main.LIY_DD+'.[dbo].[rubber01f_Test] where  ''P'' +barcode='''+edit1.text+'''');
      UpdataQuery.active:=true;
      UpdataQuery.first;
      if not UpdataQuery.Eof then
      begin
        i:= StringGrid1.RowCount;
        StringGrid1.RowCount:=StringGrid1.RowCount+1;
        StringGrid1.Cells[0,i] := IntToStr(i);
        StringGrid1.Cells[1,i] := UpdataQuery.FieldByName('barcode').Value;
        StringGrid1.Cells[2,i] := UpdataQuery.FieldByName('sku').Value;
        StringGrid1.Cells[3,i] := UpdataQuery.FieldByName('color').Value;
        StringGrid1.Cells[4,i] := UpdataQuery.FieldByName('size').Value;
        StringGrid1.Cells[5,i] := EDqty.Text;
        StaticText1.Caption:=IntToStr(StrToInt(StaticText1.Caption)+StrToInt(EDqty.Text));
        if UpdataQuery.FieldByName('s_ok').Value=UpdataQuery.FieldByName('qty').Value then
        begin
        Label4.Font.Color:= clRed;
        end
        else
        begin
        Label4.Font.Color:= clNavy;
        end;
        Label3.Caption:=UpdataQuery.FieldByName('qty').Value;
        Label4.Caption:=UpdataQuery.FieldByName('s_ok').Value;
        GroupBox1.Caption:=UpdataQuery.FieldByName('barcode').Value;
        edit1.text:='';
        edit1.SetFocus;
        //Label3.Caption := '0';
       //Label4.Caption := '0';
        //GroupBox2.Caption := '000000000000';
      end
      else
      begin
        showmessage('Scan Failed!!!');
      end;
      end;
      SumQty:=StrToInt(StaticText1.Caption);
    end;
  end;
end;

procedure TEVAScanIn.FormCreate(Sender: TObject);
begin
  StringGrid1.RowCount:=1;
  StringGrid1.ColCount:=6;
  StringGrid1.ColWidths[1]:=180;
  StringGrid1.ColWidths[2]:=180;
  StringGrid1.ColWidths[3]:=160;
  StringGrid1.ColWidths[4]:=160;
  StringGrid1.Cells[1,0] :='Barcode' ;
  StringGrid1.Cells[2,0] :='ARTICLE' ;
  StringGrid1.Cells[3,0] :='Color' ;
  StringGrid1.Cells[4,0] :='Size' ;
  StringGrid1.Cells[5,0] :='Qty' ;
end;

procedure TEVAScanIn.Button2Click(Sender: TObject);
begin
  StaticText1.Caption:='0';
  Edit1.Text:='';
  StringGrid1.RowCount:=1;
end;

procedure TEVAScanIn.EDqtyKeyPress(Sender: TObject; var Key: Char);
var
  tmp, newText: string;
  value: Integer;
begin
  tmp := '0123456789';
  if not AnsiContainsStr(tmp, Key) then
  begin
    ShowMessage('Data must be an integer!');
    Key := #0;
    Exit;
  end;
  newText := EDqty.Text + Key;
  if TryStrToInt(newText, value) then
  begin
    if value <= 0 then
    begin
      ShowMessage('Value must be greater than 0!');
      Key := #0;
    end;
  end
  else
  begin
    ShowMessage('Invalid number!');
    Key := #0;
  end;
end;


procedure TEVAScanIn.Button1Click(Sender: TObject);
begin
     try
        UpdataQuery.Close;
        UpdataQuery.SQL.Clear;
        UpdataQuery.SQL.Add('EXEC TB_DD.[dbo].U_ScanIn_rubber01f ');
        UpdataQuery.ExecSQL;
     except
      on E: Exception do
      begin
        ShowMessage('Error: ' + E.Message);
      end;
    end;
        TmpQry.Active:=false;
        TmpQry.SQL.Clear;
        TmpQry.SQL.Add('INSERT INTO '+main.LIY_DD+'.[dbo].[rubber01fs] ([id],[id_code],[qty],[userid]) VALUES('''+copy(PIDcode,10,4)+''','''+copy(PIDcode,2,8)+''','+EDqty.Text+','''+main.edit1.Text+''')');
        TmpQry.ExecSQL;
        StaticText1.Caption:='0';
        Label4.Caption := '0';
        Edit1.Text:='';
        StringGrid1.RowCount:=1;
end;



procedure TEVAScanIn.Delete1Click(Sender: TObject);
var
  selectedRow, r, c: Integer;
  qrCodeToDelete: string;
  deletedQty, newTotal: Integer;
begin
  selectedRow := StringGrid1.Row;

  if selectedRow <= 0 then
  begin
    ShowMessage('Vui long chon dong can xoa !!!');
    Exit;
  end;

  qrCodeToDelete := Trim(StringGrid1.Cells[1, selectedRow]); // C?t 1 là barcode

  if qrCodeToDelete = '' then
  begin
    ShowMessage('Khong tim thay ma QR de xoa.');
    Exit;
  end;

  if MessageDlg('Ban chac chan muon xoa QRCode: ' + qrCodeToDelete + '?',
     mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    try
      UpdataQuery.Close;
      UpdataQuery.SQL.Clear;
      UpdataQuery.SQL.Add('DELETE FROM TB_DD.dbo.rubber01f_Test WHERE barcode = ''' + qrCodeToDelete + '''');
      UpdataQuery.ExecSQL;
      deletedQty := StrToIntDef(StringGrid1.Cells[5, selectedRow], 0);
      for r := selectedRow to StringGrid1.RowCount - 2 do
        for c := 0 to StringGrid1.ColCount - 1 do
          StringGrid1.Cells[c, r] := StringGrid1.Cells[c, r + 1];
      StringGrid1.RowCount := StringGrid1.RowCount - 1;
      newTotal := StrToIntDef(StaticText1.Caption, 0) - deletedQty;
      if newTotal < 0 then newTotal := 0;
      StaticText1.Caption := IntToStr(newTotal);

      Label3.Caption := '0';
      Label4.Caption := '0';
      GroupBox1.Caption := '';
      Edit1.Text := '';
      Edit1.SetFocus;

      ShowMessage('Da xoa QRcode thanh cong.');
    except
      on E: Exception do
        ShowMessage('Loi khi xoa: ' + E.Message);
    end;
  end;
end;


end.
