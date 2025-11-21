unit EntryTPM_VN1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ExtCtrls;

type
  TEntryTPM_VN = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
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
    Edit2: TEdit;
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
  EntryTPM_VN: TEntryTPM_VN;
  NDate:TDate;

implementation

uses main1, EntryTPM1;

{$R *.dfm}

procedure TEntryTPM_VN.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Query1.active := false;
  Action := CaFree;
end;

procedure TEntryTPM_VN.FormDestroy(Sender: TObject);
begin
  EntryTPM_VN := nil;
end;

procedure TEntryTPM_VN.FormShow(Sender: TObject);
begin
  main.FormLanguage(Pointer(self),self.Name);
end;

procedure TEntryTPM_VN.Button1Click(Sender: TObject);
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
    SQL.Add('WHERE CLZL.CLDH LIKE' +  '''' + '%' + Edit1.Text + '%' + '''');
    SQL.Add('AND CLZL.ZWPM LIKE' + '''' + '%' + Edit2.Text + '%' + '''');
    SQL.Add('AND CLZL.YWPM LIKE' + '''' + '%' + Edit3.Text + '%' + '''');
    Active := true;
  end;
end;

procedure TEntryTPM_VN.DBGridEh1DblClick(Sender: TObject);
begin
  if (not Query1.Active) then
  begin
    Abort;
  end;

  with EntryTPM.ENDet do
  begin
    Insert;
    FieldByname('CLBH').value := Query1.FieldByname('CLDH').Value;
    FieldByname('YWPM').value := Query1.FieldByname('YWPM').Value;
    FieldByname('ZWPM').value := Query1.FieldByname('ZWPM').Value;
    FieldByname('DWBH').value := Query1.FieldByname('DWBH').Value;
    Post;
  end;
  ShowMessage('Succeed.');
end;

end.
