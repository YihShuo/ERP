unit OrderSpec_Size1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GridsEh, DBGridEh, DB, DBTables;

type
  TOrderSpec_Size = class(TForm)
    Query1: TQuery;
    DS1: TDataSource;
    DBGridEh1: TDBGridEh;
    Query1Size: TStringField;
    Query1CLSL: TFloatField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  OrderSpec_Size: TOrderSpec_Size;

implementation

uses OrderSpec1, FunUnit, main1;

{$R *.dfm}

procedure TOrderSpec_Size.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TOrderSpec_Size.FormCreate(Sender: TObject);
begin
  with  query1 do
  begin
    Active:=false;
    sql.Clear;
    sql.add('select Size,CLSL ');
    sql.add('from ZLZLS2');
    sql.add('where ZLBH='+''''+OrderSpec.SpecMas.fieldbyname('ZLBH').Value+'''');
    sql.add('      and BWBH='+''''+OrderSpec.SpecDet.fieldbyname('BWBH').Value+'''');
    sql.add('order by Size ');
    //FuncObj.WriteErrorLog(sql.Text);
    active:=true;
  end;
end;

procedure TOrderSpec_Size.FormDestroy(Sender: TObject);
begin
  orderspec_size:=nil;
end;

procedure TOrderSpec_Size.FormShow(Sender: TObject);
begin
  main.FormLanguage(Pointer(self),self.Name);
end;

end.
