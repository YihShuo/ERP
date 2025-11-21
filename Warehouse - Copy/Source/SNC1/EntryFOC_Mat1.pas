unit EntryFOC_Mat1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ExtCtrls;

type
  TEntryFOC_Mat = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    Button1: TButton;
    Edit1: TEdit;
    Edit3: TEdit;
    DBGridEh1: TDBGridEh;
    Query2: TQuery;
    DS1: TDataSource;
    Query1: TQuery;
    Query1CLBH: TStringField;
    Query1YWPM: TStringField;
    Query1ZWPM: TStringField;
    Query1DWBH: TStringField;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  EntryFOC_Mat: TEntryFOC_Mat;
  NDate:TDate;

implementation

uses main1, EntryTPM1, EntryFOC1;

{$R *.dfm}

procedure TEntryFOC_Mat.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Query1.active := false;
  Action := CaFree;
end;

procedure TEntryFOC_Mat.FormDestroy(Sender: TObject);
begin
  EntryFOC_Mat:= nil;
end;

procedure TEntryFOC_Mat.FormShow(Sender: TObject);
begin
  main.FormLanguage(Pointer(self),self.Name);
end;

procedure TEntryFOC_Mat.Button1Click(Sender: TObject);
begin
  with Query2 do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT getdate() as NowDate');
    Active := true;
    NDate := FieldByName('NowDate').Value;
  end;

  with Query1 do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT CLZL.* FROM CLZL');
    SQL.Add('WHERE CLZL.CLDH LIKE ''%' + Edit1.Text + '%'' ');
    SQL.Add('AND CLZL.YWPM LIKE ''%' + Edit3.Text + '%'' ');
    Active := true;
  end;
end;

procedure TEntryFOC_Mat.DBGridEh1DblClick(Sender: TObject);
begin
  if (not Query1.Active) then
  begin
    Abort;
  end;

  with EntryFOC.ENDet do
  begin
    Insert;
    FieldByname('CLBH').value := Query1.FieldByname('CLDH').Value;
    FieldByname('CLBH').value := Query1.FieldByname('CLDH').Value;
    FieldByname('YWPM').value := Query1.FieldByname('YWPM').Value;
    FieldByname('DWBH').value := Query1.FieldByname('DWBH').Value;
    Post;
  end;
  ShowMessage('Succeed.');
end;

end.
