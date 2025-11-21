unit SpecPrint_VNBOM1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, DBTables, GridsEh, DBGridEh;

type
  TSpecPrint_VNBOM = class(TForm)
    XXZLSVN: TQuery;
    XXZLSVNXieXing: TStringField;
    XXZLSVNSheHao: TStringField;
    XXZLSVNBWBH: TStringField;
    XXZLSVNYWSM: TStringField;
    XXZLSVNCLBH: TStringField;
    XXZLSVNYWPM: TStringField;
    XXZLSVNDWBH: TStringField;
    XXZLSVNCLSL: TCurrencyField;
    XXZLSVNCSBH: TStringField;
    XXZLSVNFLBH: TStringField;
    XXZLSVNDFL: TStringField;
    XXZLSVNXFL: TStringField;
    XXZLSVNZSYWJC: TStringField;
    XXZLSVNUSERID: TStringField;
    XXZLSVNUSERDATE: TDateTimeField;
    XXZLSVNYN: TStringField;
    DS3: TDataSource;
    DBGridEh1: TDBGridEh;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SpecPrint_VNBOM: TSpecPrint_VNBOM;

implementation

uses main1;

{$R *.dfm}

procedure TSpecPrint_VNBOM.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=cafree;
end;

procedure TSpecPrint_VNBOM.FormCreate(Sender: TObject);
begin
XXZLSVN.Active:=true;
end;

procedure TSpecPrint_VNBOM.FormShow(Sender: TObject);
begin
  main.FormLanguage(Pointer(self),self.Name);
end;

end.
