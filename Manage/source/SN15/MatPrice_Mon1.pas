unit MatPrice_Mon1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh ,IniFiles;


type
  TMatPrice_Mon = class(TForm)
    DBGridEh1: TDBGridEh;
    Query1: TQuery;
    Query1RKNO: TStringField;
    Query1CLBH: TStringField;
    Query1USPrice: TCurrencyField;
    Query1USERDATE: TDateTimeField;
    Query1RKSB: TStringField;
    DS1: TDataSource;
    DBGridEh2: TDBGridEh;
    Query2: TQuery;
    DS2: TDataSource;
    Query2CLDH: TStringField;
    Query2CLDH1: TStringField;
    Query2SYL: TFloatField;
    Query2YWPM: TStringField;
    Query2DWBH: TStringField;
    Query1GSBH: TStringField;
    Query1VNPrice: TCurrencyField;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure DBGridEh1KeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
     procedure ReadIni();
  public
    { Public declarations }
    VNPrice_DiplayFormat:string;
    VNPrice_Decimal:Byte;
  end;

var
  MatPrice_Mon: TMatPrice_Mon;

implementation

uses MatPrice1, main1;

{$R *.dfm}

procedure TMatPrice_Mon.FormDestroy(Sender: TObject);
begin
  MatPrice_Mon:=nil;
end;

procedure TMatPrice_Mon.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TMatPrice_Mon.ReadIni();
var MyIni :Tinifile;
    AppDir:string;
begin
  //
  VNPrice_DiplayFormat:='#,##0';
  VNPrice_Decimal:=0;
  AppDir:=ExtractFilePath(Application.ExeName);
  if FileExists(AppDir+'\ComName.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ComName.ini');
      VNPrice_DiplayFormat:=MyIni.ReadString('VNPrice','DiplayFormat','#,##0');
      VNPrice_Decimal:=strtoint(MyIni.ReadString('VNPrice','Decimal','0'));
    finally
      MyIni.Free;
    end;
  end;
  TCurrencyField(Query1.FieldByName('VNPrice')).DisplayFormat:=VNPrice_DiplayFormat;
end;

procedure TMatPrice_Mon.FormCreate(Sender: TObject);
begin
  query2.Active:=true;
  query1.Active:=true;
  ReadIni();
end;

procedure TMatPrice_Mon.DBGridEh1DblClick(Sender: TObject);
var USPrice:real;
    VNPrice:integer;
begin

  if query1.recordcount>0 then
  begin
    if MatPrice.query1.fieldbyname('USPrice').isnull then
    begin
      USPrice:=0
    end else
    begin
      USPrice:= MatPrice.query1.fieldbyname('USPrice').value;
    end;
    if MatPrice.query1.fieldbyname('VNPrice').isnull then
    begin
      VNPrice:=0
    end else
    begin
      VNPrice:= MatPrice.query1.fieldbyname('VNPrice').value;
    end;
    MatPrice.query1.Edit;
    MatPrice.query1.fieldbyname('VNPrice').Value:=VNPrice+query1.fieldbyname('VNPrice').Value*query2.fieldbyname('SYL').Value;
    MatPrice.query1.fieldbyname('USPrice').Value:=USPrice+query1.fieldbyname('USPrice').Value*query2.fieldbyname('SYL').Value;
    //MatPrice.query1.post;
  end;
  
end;

procedure TMatPrice_Mon.DBGridEh1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    DBGridEh1DblClick(nil);
end;

procedure TMatPrice_Mon.FormShow(Sender: TObject);
begin
  main.FormLanguage(Pointer(self),self.Name);
end;

end.
