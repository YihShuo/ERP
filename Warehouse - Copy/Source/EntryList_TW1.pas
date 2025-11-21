unit EntryList_TW1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls,math;

type
  TEntryList_TW = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Button1: TButton;
    EDIT1: TEdit;
    DBGrid1: TDBGrid;
    DS1: TDataSource;
    Query1: TQuery;
    Query1cldh: TStringField;
    Query1ywpm: TStringField;
    Query1cldwbh: TStringField;
    Query1con_no: TStringField;
    Query1xh: TStringField;
    Query1clpm: TStringField;
    Query1ck_qty: TFloatField;
    Query1py_dj: TFloatField;
    Query1memo: TStringField;
    Query1ctn: TSmallintField;
    Query1TotQty: TFloatField;
    Query1KCBH: TStringField;
    Query1okQty: TCurrencyField;
    procedure Button1Click(Sender: TObject);
    procedure Query1CalcFields(DataSet: TDataSet);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure EDIT1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  EntryList_TW: TEntryList_TW;

implementation

uses MaterialArea1, EntryList1, main1;

{$R *.dfm}

procedure TEntryList_TW.Button1Click(Sender: TObject);
begin
if edit1.text='' then
  begin
    showmessage('Pls key in container No.');
  end
  else
    begin
      with query1 do
        begin
          active:=false;
          Params.Items[0].AsString:=EntryList.ENMas.fieldbyname('CKBH').value;
          Params.Items[1].AsString:=edit1.text;
          Params.Items[2].AsString:=edit1.text;
          //memo1.text:=sql.Text;
          active:=true;
        end;
    end;
end;

procedure TEntryList_TW.Query1CalcFields(DataSet: TDataSet);
begin
if  query1.FieldByName('ctn').value<>0 then
  begin
    query1.FieldByName('TotQty').value:=query1.FieldByName('ctn').value*query1.FieldByName('ck_qty').value;
  end
  else
    begin
      query1.FieldByName('TotQty').value:=query1.FieldByName('ck_qty').value;
    end;
end;

procedure TEntryList_TW.DBGrid1DblClick(Sender: TObject);
begin
if (not query1.Active) then
  begin
    abort;
  end;
if (Query1.recordcount<1) then
  begin
    abort;
  end;
if Query1.FieldByName('KCBH').IsNull then       //如果沒有確定位置則重新確定先
  begin
    MaterialArea:=TMaterialArea.create(self);
    MaterialArea.Edit1.Text:=Query1.fieldbyname('CLDH').AsString;   
    MaterialArea.CBX1.Text:=EntryList.EnMas.fieldbyname('CKBH').AsString;
    MaterialArea.button1click(nil);
    MaterialArea.show;
    query1.Active:=false;
    close;   
    abort;
  end;

with EntryList.ENDet do
  begin
    insert;
    fieldbyname('CGBH').value:=query1.FieldByName('xh').Value;
    fieldbyname('RKSB').value:='TW';
    fieldbyname('CLBH').value:=query1.fieldbyname('CLDH').value;
    fieldbyname('YWPM').value:=query1.fieldbyname('YWPM').value;
    fieldbyname('DWBH').value:=query1.fieldbyname('CLDWBH').value;
    fieldbyname('Qty').value:=trunc((query1.fieldbyname('TotQty').value-query1.fieldbyname('okQty').value)*100+0.5)/100;
    fieldbyname('PaQty').value:=trunc(query1.fieldbyname('TotQty').value*10000+0.5)/10000;
    fieldbyname('UsPrice').value:=query1.fieldbyname('py_dj').value;
    post;
  end;
showmessage('Succeed.');
end;

procedure TEntryList_TW.EDIT1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
  button1click(nil);
end;

procedure TEntryList_TW.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
   DBGrid1DblClick(nil);

end;

procedure TEntryList_TW.FormDestroy(Sender: TObject);
begin
EntryList_TW:=nil;
end;

procedure TEntryList_TW.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

query1.active:=false;
end;

procedure TEntryList_TW.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin

if Query1.FieldByName('TotQty').value=Query1.FieldByName('okQty').value then
  begin
    dbgrid1.canvas.font.color:=clred;
    dbgrid1.defaultdrawcolumncell(rect,datacol,column,state);
  end;
end;

procedure TEntryList_TW.FormShow(Sender: TObject);
begin
  main.FormLanguage(Pointer(self),self.Name);
end;

end.
