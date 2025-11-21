unit SampleMaterial_Supplier1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ExtCtrls;

type
  TSampleMaterial_Supplier = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    zsdhEdit: TEdit;
    Button1: TButton;
    ZSYWJCEdit: TEdit;
    DBGridEh1: TDBGridEh;
    DS1: TDataSource;
    SupplierQry: TQuery;
    SupplierQryzsdh: TStringField;
    SupplierQryzsqm: TStringField;
    SupplierQryZSYWJC: TStringField;
    SupplierQrySamplePurchaser: TStringField;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure zsqmEditKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SampleMaterial_Supplier: TSampleMaterial_Supplier;

implementation
  uses SampleMaterial_Combinated1,FunUnit;
{$R *.dfm}

procedure TSampleMaterial_Supplier.Button1Click(Sender: TObject);
var tmpList:TStringlist;
    i:integer;
begin
  //
  with SupplierQry do
  begin
    active:=false;
    SQL.clear;
    SQL.Add(' select zsdh,zsqm,ZSYWJC,SamplePurchaser from ZSZL where zsdh<>'''' and YN=1 '); //台灣建立廠商
    SQL.Add('and ZSDH like ''%'+ZSDHEdit.Text+'%'' ');
    if ZSYWJCEdit.Text<>'' then
    begin
      tmpList:=FuncObj.SplitString(ZSYWJCEdit.Text,'*');
      for i:=0 to tmpList.Count-1 do
      begin
        SQL.Add('and ZSYWJC like ''%'+tmpList.Strings[i]+'%'' ');
      end;
      tmpList.Free;
    end;
    active:=true;
  end;
  //
end;

procedure TSampleMaterial_Supplier.FormCreate(Sender: TObject);
begin
  with SupplierQry do
  begin
    active:=false;
    sql.clear;
    sql.Add(' select zsdh,zsqm,ZSYWJC,SamplePurchaser from ZSZL where zsdh<>'''' and YN=1 ');
    SQL.Add('and ZSDH like ''%'+ZSDHEdit.Text+'%'' ');
    active:=true;
  end;
end;

procedure TSampleMaterial_Supplier.DBGridEh1DblClick(Sender: TObject);
begin
  if SupplierQry.Active=true then
  begin
    SampleMaterial_Combinated.CLZHZLVN.Edit;
    SampleMaterial_Combinated.CLZHZLVN.FieldByName('ZSDH').AsString:=SupplierQry.FieldByName('ZSDH').AsString;
    SampleMaterial_Combinated.CLZHZLVN.FieldByName('ZSJC').AsString:=SupplierQry.FieldByName('ZSQM').AsString;
    SampleMaterial_Combinated.CLZHZLVN.Post;
    Close;
  end;
end;

procedure TSampleMaterial_Supplier.zsqmEditKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key=13 then Button1.Click;
end;

procedure TSampleMaterial_Supplier.FormDestroy(Sender: TObject);
begin
  SampleMaterial_Supplier:=nil;
end;

end.
