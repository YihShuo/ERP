unit ChiChepKiemTraLuongLua_AddDate1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs;

type
  TChiChepKiemTraLuongLua_AddDate = class(TForm)
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ChiChepKiemTraLuongLua_AddDate: TChiChepKiemTraLuongLua_AddDate;

implementation

{$R *.dfm}

procedure TChiChepKiemTraLuongLua_AddDate.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=CaFree;
end;

procedure TChiChepKiemTraLuongLua_AddDate.FormDestroy(Sender: TObject);
begin
  ChiChepKiemTraLuongLua_AddDate:=nil;
end;

end.
