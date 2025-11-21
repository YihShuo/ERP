unit FScanIn1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GridsEh, DBGridEh, ComCtrls, StdCtrls, ExtCtrls, DBTables, DB,
  Grids;

type
  TFScanIn = class(TForm)
    Panel1: TPanel;
    Edit1: TEdit;
    UploadBtn: TButton;
    Button2: TButton;
    UpdataQuery: TQuery;
    WorkScanQry: TQuery;
    WorkScanQryProNo: TFloatField;
    WorkScanQryCodebar: TStringField;
    WorkScanQryInOut: TStringField;
    WorkScanQryClass: TStringField;
    WorkScanQryWorkID: TStringField;
    WorkScanQryMJBH: TStringField;
    WorkScanQryColorNo: TStringField;
    WorkScanQryenglishname: TStringField;
    WorkScanQryDDBH: TStringField;
    WorkScanQrySize: TStringField;
    WorkScanQryQty: TIntegerField;
    WorkScanQryUserid: TStringField;
    WorkScanQryUserDate: TDateTimeField;
    WorkScanQryYN: TStringField;
    WorkScanQryscandate: TStringField;
    DS1: TDataSource;
    UpdateSQL1: TUpdateSQL;
    GroupBox1: TGroupBox;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    StringGrid1: TStringGrid;
    StaticText1: TStaticText;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button2Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FScanIn: TFScanIn;

implementation

uses main1;

{$R *.dfm}

procedure TFScanIn.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  WorkScanQry.Active:=false;
  UpdataQuery.Active:=false;
  action:=cafree;
end;

procedure TFScanIn.Button2Click(Sender: TObject);
begin
    WorkScanQry.Active:=false;
    edit1.text:='';
end;

procedure TFScanIn.Edit1KeyPress(Sender: TObject; var Key: Char);
var SCANDate:String;
    BarCode:string;
    row:integer;
    i:Integer;
begin
  if (key=#13) and (Length(edit1.text)=12) then
  begin
    row:=0;
    with UpdataQuery do
    begin
     active:=false;
     sql.Clear;
     sql.Add('select count(*) items from '+main.LIY_DD+'.[dbo].[rubber01f]  where p_ok=1 AND s_ok=0 AND [id_code]+[id]='''+edit1.text+'''');
     active:=true;
     showmessage(text);
    end;
    if UpdataQuery.FieldByName('items').Value < 1 then
     begin
      showmessage('±½´y¥¢±Ñ!!!');
     end
    else
     begin
      UpdataQuery.Active:=false;
      UpdataQuery.sql.Add('update '+main.LIY_DD+'.[dbo].[rubber01f] set s_ok=1 where [id_code]+[id]='''+edit1.text+'''');
      UpdataQuery.ExecSQL;

      UpdataQuery.sql.Clear;
      UpdataQuery.sql.Add('SELECT [id_code]+[id] barcode,[sku],[color],[size],[qty] FROM '+main.LIY_DD+'.[dbo].[rubber01f] where p_ok=1 AND [id_code]+[id]='''+edit1.text+'''');
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
        StringGrid1.Cells[5,i] := UpdataQuery.FieldByName('qty').Value;
        StaticText1.Caption:=IntToStr(StrToInt(StaticText1.Caption)+UpdataQuery.FieldByName('qty').Value);
        edit1.text:='';
      end
      else
      begin
        showmessage('±½´y¥¢±Ñ!!!');
      end;
    end;
  end;
end;

procedure TFScanIn.FormCreate(Sender: TObject);
begin
  StringGrid1.RowCount:=1;
  StringGrid1.ColCount:=6;
  StringGrid1.ColWidths[1]:=180;
  StringGrid1.ColWidths[2]:=180;
  StringGrid1.ColWidths[4]:=160;
  StringGrid1.Cells[1,0] :='Barcode' ;
  StringGrid1.Cells[2,0] :='Sku' ;
  StringGrid1.Cells[3,0] :='Color' ;
  StringGrid1.Cells[4,0] :='Size' ;
  StringGrid1.Cells[5,0] :='Qty' ;
end;

end.
