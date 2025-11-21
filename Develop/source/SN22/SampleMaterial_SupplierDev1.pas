unit SampleMaterial_SupplierDev1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ExtCtrls;

type
  TSampleMaterial_SupplierDev = class(TForm)
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
  SampleMaterial_SupplierDev: TSampleMaterial_SupplierDev;

implementation
  uses main1,SampleMaterial_CombinatedDev1,FunUnit;
{$R *.dfm}

procedure TSampleMaterial_SupplierDev.Button1Click(Sender: TObject);
var tmpList:TStringlist;
    i:integer;
begin
  //
  with SupplierQry do
  begin
    active:=false;
    SQL.clear;
    SQL.Add(' select ZSZL.zsdh,ZSZL.zsqm,ZSZL.ZSYWJC,ZSZL_DEV.SamplePurchaser from ZSZL ');
    SQL.Add(' Left join ZSZL_DEV on ZSZL_DEV.ZSDH=ZSZL.ZSDH and ZSZL_DEV.GSBH='''+main.Edit2.Text+''' ');
    SQL.Add(' where ZSZL.zsdh<>'''' and ZSZL.YN=1  '); //台灣建立廠商
    SQL.Add('and ZSZL.ZSDH like ''%'+ZSDHEdit.Text+'%'' ');
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

procedure TSampleMaterial_SupplierDev.FormCreate(Sender: TObject);
begin
  Button1.Click;
end;

procedure TSampleMaterial_SupplierDev.DBGridEh1DblClick(Sender: TObject);
begin
  if SupplierQry.Active=true then
  begin
    SampleMaterial_CombinatedDev.CLZHZLVN.Edit;
    SampleMaterial_CombinatedDev.CLZHZLVN.FieldByName('ZSDH_Dev').AsString:=SupplierQry.FieldByName('ZSDH').AsString;
    SampleMaterial_CombinatedDev.CLZHZLVN.FieldByName('ZSJC_Dev').AsString:=SupplierQry.FieldByName('ZSQM').AsString;
    SampleMaterial_CombinatedDev.CLZHZLVN.Post;
    Close;
  end;
end;

procedure TSampleMaterial_SupplierDev.zsqmEditKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key=13 then Button1.Click;
end;

procedure TSampleMaterial_SupplierDev.FormDestroy(Sender: TObject);
begin
  SampleMaterial_SupplierDev:=nil;
end;

end.
