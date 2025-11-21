unit SampleOrder_Supplier1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ExtCtrls;

type
  TSampleOrder_Supplier = class(TForm)
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
    chkall: TCheckBox;
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
  SampleOrder_Supplier: TSampleOrder_Supplier;

implementation
  uses main1,SampleOrder1,FunUnit;
{$R *.dfm}

procedure TSampleOrder_Supplier.Button1Click(Sender: TObject);
var tmpList:TStringlist;
    i:integer;
begin
  //
  with SupplierQry do
  begin
    active:=false;
    SQL.clear;
    SQL.Add('Select ZSZL.zsdh,zsqm,ZSYWJC,ZSZL_DEV.SamplePurchaser from ZSZL ');
    SQL.Add('Left join ZSZL_DEV on ZSZL_DEV.ZSDH=ZSZL.ZSDH and ZSZL_DEV.GSBH='''+main.Edit2.text+''' ');
    SQL.Add('where ZSZL.zsdh<>'''' and YN in (''1'',''2'') '); //台灣建立廠商
    SQL.Add('and ZSZL.ZSDH like ''%'+ZSDHEdit.Text+'%'' ');
    if ZSYWJCEdit.Text<>'' then
    begin
      tmpList:=FuncObj.SplitString(ZSYWJCEdit.Text,'*');
      for i:=0 to tmpList.Count-1 do
      begin
        SQL.Add('and ZSZL.ZSYWJC like ''%'+tmpList.Strings[i]+'%'' ');
      end;
      tmpList.Free;
    end;
    //不顯示停用記號
    if chkall.Checked=false then
    sql.add('    and isnull(TYJH,''N'')<>''Y'' ') ;
    active:=true;
  end;
  //
end;

procedure TSampleOrder_Supplier.FormCreate(Sender: TObject);
begin
  with SupplierQry do
  begin
    active:=false;
    sql.clear;
    SQL.Add('Select ZSZL.zsdh,zsqm,ZSYWJC,ZSZL_DEV.SamplePurchaser from ZSZL ');
    SQL.Add('Left join ZSZL_DEV on ZSZL_DEV.ZSDH=ZSZL.ZSDH and ZSZL_DEV.GSBH='''+main.Edit2.text+''' ');
    SQL.Add('where ZSZL.zsdh<>'''' and YN=1 '); //台灣建立廠商
    SQL.Add('and ZSZL.ZSDH like ''%'+ZSDHEdit.Text+'%'' ');
    funcobj.WriteErrorLog(sql.Text);
    active:=true;
  end;
end;

procedure TSampleOrder_Supplier.DBGridEh1DblClick(Sender: TObject);
begin
  if SupplierQry.Active=true then
  begin
    SampleOrder.YPZLS.Edit;
    SampleOrder.YPZLS.FieldByName('CSBH').AsString:=SupplierQry.FieldByName('ZSDH').AsString;
    SampleOrder.YPZLS.FieldByName('ZSYWJC').AsString:=SupplierQry.FieldByName('ZSYWJC').AsString;
    SampleOrder.YPZLS.Post;
    Close;
  end;
end;

procedure TSampleOrder_Supplier.zsqmEditKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key=13 then Button1.Click;
end;

procedure TSampleOrder_Supplier.FormDestroy(Sender: TObject);
begin
  SampleOrder_Supplier:=nil;
end;

end.
