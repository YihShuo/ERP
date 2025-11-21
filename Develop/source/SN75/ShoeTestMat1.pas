unit ShoeTestMat1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, GridsEh, DBGridEh, DBTables, ExtCtrls, StdCtrls;

type
  TShoeTestMat = class(TForm)
    pnl1: TPanel;
    DS1: TDataSource;
    qry1: TQuery;
    dbgrdh1: TDBGridEh;
    qry1cldh: TStringField;
    qry1ywpm: TStringField;
    lbl1: TLabel;
    lbl2: TLabel;
    Codeedt: TEdit;
    Nameedt: TEdit;
    btn1: TButton;
    procedure btn1Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ShoeTestMat: TShoeTestMat;

implementation
uses PaperRoom_shoeTest;

{$R *.dfm}

procedure TShoeTestMat.btn1Click(Sender: TObject);
begin
  if (Codeedt.Text = '') and (Nameedt.Text = '') then
  begin
    ShowMessage('[Mat. Code] or [Mat.Name] must have Data ');
    Exit;
  end;
  with qry1 do
  begin
    Active := False;
    SQL.Clear;
    SQL.Add('select * from CLZL');
    SQL.Add('where 1=1');
    if Codeedt.Text <> '' then
      SQL.Add('and CLDH like ''%'+Codeedt.Text+'%''');
    if Nameedt.Text <> '' then
      SQL.Add('and ywpm like ''%'+Nameedt.Text+'%''');
    SQL.Add('order by CLDH');  
    Active := True;
  end;

end;



end.
