unit CLLBZL1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ExtCtrls;

type
  TCLLBZL = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    EDIT1: TEdit;
    Edit2: TEdit;
    DBGrid1: TDBGridEh;
    Query1: TQuery;
    DataSource1: TDataSource;
    Query1cllb: TStringField;
    Query1ZWSM: TStringField;
    Query1YWSM: TStringField;
    procedure Button1Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CLLBZL: TCLLBZL;

implementation
  uses Foxing1, main1;
{$R *.dfm}

procedure TCLLBZL.Button1Click(Sender: TObject);
begin
  with Query1 do
  begin
    Active:=true;
    SQL.Clear;
    SQL.Add('select CLLBZL.cllb ,CLLBZL.ZWSM,CLLBZL.YWSM  ');
    SQL.Add('from '+main.LIY_DD+'.dbo.CLLBZL CLLBZL  ');
    SQL.Add('where 1=1 ');
    if Edit1.Text<>'' then
    SQL.Add('and CLLBZL.cllb like '''+Edit1.Text+'%'' ');
    if Edit2.Text<>'' then
    SQL.Add('and CLLBZL.YWSM like ''%'+Edit2.Text+'%'' ');
    SQL.Add('order by cllb ');
    Active:=true;
  end;
end;

procedure TCLLBZL.DBGrid1DblClick(Sender: TObject);
var i:integer;
begin
  if Query1.Active=true then
  begin
    Foxing.Query1.First;
    for i:=0 to Foxing.Query1.RecordCount-1 do
    begin
      if  Foxing.Query1.FieldByName('LBDH').AsString='' then
      begin
        Foxing.Query1.Edit;
        Foxing.Query1.FieldByName('LBDH').AsString:=Query1.FieldByName('CLLB').AsString;
        Foxing.Query1.FieldByName('YWSM').AsString:=Query1.FieldByName('YWSM').AsString;
        Foxing.Query1.Post;
      end;
      Foxing.Query1.Next;
    end;
    Close;
  end;
end;

procedure TCLLBZL.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=CaFree;
end;

procedure TCLLBZL.FormDestroy(Sender: TObject);
begin
  CLLBZL:=nil;
end;

procedure TCLLBZL.FormCreate(Sender: TObject);
begin
  Button1.Click;
end;

procedure TCLLBZL.FormShow(Sender: TObject);
begin
  main.FormLanguage(Pointer(self),self.Name);
end;

end.
