unit EquipmentSupplier_Brand1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TEquipmentSupplier_Brand = class(TForm)
    GroupBox1: TGroupBox;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    Button1: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }

  public
    LB:Byte;
    { Public declarations }
    procedure LoadBrand();
  end;

var
  EquipmentSupplier_Brand: TEquipmentSupplier_Brand;

implementation
  uses EquipmentSupplier1, FunUnit;
{$R *.dfm}

procedure TEquipmentSupplier_Brand.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=CaFree;
end;

procedure TEquipmentSupplier_Brand.FormDestroy(Sender: TObject);
begin
  EquipmentSupplier_Brand:=nil;
end;

//
procedure TEquipmentSupplier_Brand.LoadBrand();
var Memo:String;
    tmpList:TStringList;
    i,j:integer;
    tmpCheckBox:TCheckBox;
begin
  //
  if LB=1 then  Memo:=EquipmentSupplier.TSCD_ZSZL.FieldByName('AuthCE_Memo').AsString;
  if LB=2 then  Memo:=EquipmentSupplier.TSCD_ZSZL.FieldByName('AuthZSDH_Memo').AsString;
  if Memo<>'' then
  begin
    tmpList:=FuncObj.SplitString(Memo,',');
    for i:=0 to tmpList.Count-1 do
    begin
      for j:=1 to 4 do
      begin
        tmpCheckBox:=TCheckBox(FindComponent('CheckBox'+inttostr(j)));
        if tmpCheckBox<>nil then
        begin
          if tmpList.Strings[i]=tmpCheckBox.Caption  then  tmpCheckBox.Checked:=true;
        end;
      end;
    end;
  end;
  //
end;
//
procedure TEquipmentSupplier_Brand.Button1Click(Sender: TObject);
var iRes:String;
begin
  //
  iRes:='';
  if CheckBox1.Checked=true then iRes:=iRes+CheckBox1.Caption+',';
  if CheckBox2.Checked=true then iRes:=iRes+CheckBox2.Caption+',';
  if CheckBox3.Checked=true then iRes:=iRes+CheckBox3.Caption+',';
  if CheckBox4.Checked=true then iRes:=iRes+CheckBox4.Caption+',';
  //
  if iRes<>'' then iRes:=Copy(iRes,1,length(iRes)-1);
  with EquipmentSupplier.TSCD_ZSZL do
  begin
    Edit;
    if LB=1 then  FieldByName('AuthCE_Memo').AsString:=iRes;
    if LB=2 then  FieldByName('AuthZSDH_Memo').AsString:=iRes;
    Post;
  end;
  Close;
end;
//
end.
