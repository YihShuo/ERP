unit MatPrice_JGZL1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh ,IniFiles;

type
  TMatPrice_JGZL = class(TForm)
    DBGridEh1: TDBGridEh;
    DBGridEh2: TDBGridEh;
    Query1: TQuery;
    Query1RKNO: TStringField;
    Query1CLBH: TStringField;
    Query1USPrice: TCurrencyField;
    Query1USERDATE: TDateTimeField;
    Query1RKSB: TStringField;
    DS1: TDataSource;
    Query2: TQuery;
    Query2YWPM: TStringField;
    Query2DWBH: TStringField;
    DS2: TDataSource;
    Query2JGNO: TStringField;
    Query2CLBH: TStringField;
    Query2ZMLB: TStringField;
    Query2Qty: TCurrencyField;
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
  MatPrice_JGZL: TMatPrice_JGZL;

implementation

uses MatPrice1, main1;

{$R *.dfm}

procedure TMatPrice_JGZL.FormDestroy(Sender: TObject);
begin
MatPrice_JGZL:=nil;
end;

procedure TMatPrice_JGZL.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
query1.active:=false;
action:=cafree;
end;

procedure TMatPrice_JGZL.ReadIni();
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


procedure TMatPrice_JGZL.FormCreate(Sender: TObject);
begin
  query2.Active:=true;
  query1.Active:=true;
  ReadIni();
end;

procedure TMatPrice_JGZL.DBGridEh1DblClick(Sender: TObject);
begin

if query1.recordcount>0 then
  begin
    MatPrice.query1.Edit;
    MatPrice.query1.fieldbyname('VNPrice').Value:=query1.fieldbyname('VNPrice').Value; 
    MatPrice.query1.fieldbyname('USPrice').Value:=query1.fieldbyname('USPrice').Value;
    //MatPrice.query1.post;
  end;
end;

procedure TMatPrice_JGZL.DBGridEh1KeyPress(Sender: TObject; var Key: Char);
begin

if key=#13 then
DBGridEh1DblClick(nil);
end;

procedure TMatPrice_JGZL.FormShow(Sender: TObject);
begin
  main.FormLanguage(Pointer(self),self.Name);
end;

end.
