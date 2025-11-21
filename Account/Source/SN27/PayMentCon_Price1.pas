unit PayMentCon_Price1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh;

type
  TPayMentCon_Price = class(TForm)
    DBGridEh1: TDBGridEh;
    CGBJS: TQuery;
    DS1: TDataSource;
    CGBJSCLBH: TStringField;
    CGBJSBJNO: TStringField;
    CGBJSUSPrice: TCurrencyField;
    CGBJSVNPrice: TCurrencyField;
    CGBJSUSERDate: TDateTimeField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PayMentCon_Price: TPayMentCon_Price;

implementation

{$R *.dfm}

procedure TPayMentCon_Price.FormCreate(Sender: TObject);
begin
CGBJS.active:=true;
end;

procedure TPayMentCon_Price.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=cafree;
end;

procedure TPayMentCon_Price.FormDestroy(Sender: TObject);
begin
PayMentCon_Price:=nil;
end;

end.
