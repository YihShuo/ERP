unit RSLDDGB1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, DBTables, GridsEh, DBGridEh, ExtCtrls;

type
  TRSLDDGB = class(TForm)
    Panel1: TPanel;
    DBGrid1: TDBGridEh;
    DS1: TDataSource;
    DDGBQry: TQuery;
    Button1: TButton;
    Label1: TLabel;
    ConEdit: TEdit;
    DDGBQryLBDH: TStringField;
    DDGBQryYWSM: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RSLDDGB: TRSLDDGB;

implementation
  uses Purtrace1, main1;
{$R *.dfm}

procedure TRSLDDGB.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TRSLDDGB.FormDestroy(Sender: TObject);
begin
  RSLDDGB:=nil;
end;

procedure TRSLDDGB.Button1Click(Sender: TObject);
begin
  with DDGBQry do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select LBDH,YWSM from LBZLS ');
    SQL.Add('where LB=''06'' and LBDH>''A'' ');
    SQL.Add('and LBDH in (Select DDGB from DDZL Group By DDGB) ');
    if ConEdit.Text<>'' then
    SQL.Add('and YWSM like '''+ConEdit.Text+'%'' ');
    Active:=true;
  end;
end;

procedure TRSLDDGB.DBGrid1DblClick(Sender: TObject);
begin
  Purtrace.DDGBEdit.Text:=DDGBQry.FieldByName('YWSM').AsString;
  Close;
end;

procedure TRSLDDGB.FormShow(Sender: TObject);
begin
  main.FormLanguage(Pointer(self),self.Name);
end;

end.
