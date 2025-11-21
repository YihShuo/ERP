unit MatPrice_Quotation1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh ,IniFiles;

type
  TMatPrice_Quotation = class(TForm)
    DBGridEh1: TDBGridEh;
    Query1: TQuery;
    Query1CLBH: TStringField;
    Query1USPrice: TCurrencyField;
    DS1: TDataSource;
    Query1BJNO: TStringField;
    Query1ZSYWJC: TStringField;
    Query1VNPrice: TCurrencyField;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure DBGridEh1KeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
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
  MatPrice_Quotation: TMatPrice_Quotation;

implementation

uses MatPrice1, main1;

{$R *.dfm}

procedure TMatPrice_Quotation.FormDestroy(Sender: TObject);
begin
MatPrice_Quotation:=nil;
end;

procedure TMatPrice_Quotation.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  query1.active:=false;
end;

procedure TMatPrice_Quotation.DBGridEh1DblClick(Sender: TObject);
begin

  if query1.recordcount>0 then
  begin
    MatPrice.query1.Edit;
    MatPrice.query1.fieldbyname('VNPrice').Value:=query1.fieldbyname('VNPrice').Value;
    MatPrice.query1.fieldbyname('USPrice').Value:=query1.fieldbyname('USPrice').Value;
    //MatPrice.query1.post;
  end;
end;

procedure TMatPrice_Quotation.DBGridEh1KeyPress(Sender: TObject;
  var Key: Char);
begin  
  if key=#13 then
    dbgrideh1dblclick(nil);

end;

procedure TMatPrice_Quotation.ReadIni();
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


procedure TMatPrice_Quotation.FormCreate(Sender: TObject);
begin
  query1.Active:=true;
  ReadIni();
end;

procedure TMatPrice_Quotation.FormShow(Sender: TObject);
begin
  main.FormLanguage(Pointer(self),self.Name);
end;

end.
