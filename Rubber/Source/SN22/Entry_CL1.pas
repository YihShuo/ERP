unit Entry_CL1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DB, DBTables, GridsEh, DBGridEh;

type
  TEntry_CL = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    Button1: TButton;
    DBGridEh1: TDBGridEh;
    Query1: TQuery;
    DataSource1: TDataSource;
    Query1cldh: TStringField;
    Query1zwpm: TStringField;
    Query1ywpm: TStringField;
    Query1dwbh: TStringField;
    procedure Button1Click(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Entry_CL: TEntry_CL;

implementation

uses EntryRubber1, main1;

{$R *.dfm}

procedure TEntry_CL.Button1Click(Sender: TObject);
begin
  with Query1 do
  begin
    active:=false;
    sql.Clear;
    sql.Add('select cldh,zwpm,ywpm,dwbh');
    sql.Add('from '+main.LIY_DD+'.DBO.CLZL CLZL');
    sql.Add('where cldh like'''+edit1.Text+'%''');
    sql.Add('and ywpm like '''+edit2.Text+'%''');
    sql.Add('order by cldh');
    active:=true;
  end;
end;

procedure TEntry_CL.DBGridEh1DblClick(Sender: TObject);
begin
  if query1.recordcount>0 then
  begin
    with EntryRubber.EnDet do
    begin
      insert;
      fieldbyname('cldh').value:=query1.fieldbyname('cldh').value;
      fieldbyname('zwpm').value:=query1.fieldbyname('zwpm').value;
      fieldbyname('ywpm').value:=query1.fieldbyname('ywpm').value;
      fieldbyname('dwbh').value:=query1.fieldbyname('dwbh').value;
      post;
    end;
  end;
end;

procedure TEntry_CL.FormShow(Sender: TObject);
begin
  main.FormLanguage(Pointer(self),self.Name);
end;

procedure TEntry_CL.FormDestroy(Sender: TObject);
begin
  Entry_CL:=nil;
end;

procedure TEntry_CL.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
end;

end.
