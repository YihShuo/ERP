unit MaterialReviewList_VN1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ExtCtrls;

type
  TMaterialReviewList_VN = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    Edit1: TEdit;
    DBGridEh1: TDBGridEh;
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
  MaterialReviewList_VN: TMaterialReviewList_VN;

implementation

uses main1, MaterialReviewList1;

{$R *.dfm}

procedure TMaterialReviewList_VN.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Query1.active := false;
  Action := CaFree;
end;

procedure TMaterialReviewList_VN.FormDestroy(Sender: TObject);
begin
  MaterialReviewList_VN := nil;
end;

procedure TMaterialReviewList_VN.FormShow(Sender: TObject);
begin
  main.FormLanguage(Pointer(self), self.Name);
end;

procedure TMaterialReviewList_VN.Button1Click(Sender: TObject);
begin
  with Query1 do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT CLZL.* FROM CLZL');
    if ((Edit1.Text <> '') or (Edit2.Text <> '')) then
    begin
      SQL.Add('WHERE CLZL.CLDH LIKE :MateiralNo AND (CLZL.YWPM LIKE :MateiralName OR CLZL.ZWPM LIKE :MateiralName)');
      ParamByName('MateiralNo').Value := '%' + Edit1.Text + '%';
      ParamByName('MateiralName').Value := '%' + Edit2.Text + '%';
    end;
    Active := true;
  end;
end;

procedure TMaterialReviewList_VN.DBGridEh1DblClick(Sender: TObject);
begin
  if (not Query1.Active) then
  begin
    Abort;
  end;

  with MaterialReviewList.Query1 do
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
