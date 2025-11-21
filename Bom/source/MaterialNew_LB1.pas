unit MaterialNew_LB1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Grids, DBGrids, DB, DBTables, GridsEh,
  DBGridEh;

type
  TMaterialNew_LB = class(TForm)
    Query1: TQuery;
    Query1LBBH: TStringField;
    Query1USERID: TStringField;
    Query1USERDATE: TDateTimeField;
    Query1YN: TStringField;
    DS1: TDataSource;
    Panel3: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    Query1MEMO: TStringField;
    Query1CMEMO: TStringField;
    DBGridEh1: TDBGridEh;
    procedure Button1Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure DBGridEh1KeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MaterialNew_LB: TMaterialNew_LB;

implementation

uses MaterialNew1, main1;

{$R *.dfm}

procedure TMaterialNew_LB.Button1Click(Sender: TObject);
begin

  with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select * from CLLBVN ');
    sql.add('where LBBH like '+''''+edit1.Text+'%'+'''');
    sql.add('and memo like '+''''+'%'+edit2.Text+'%'+'''');
    //20160809 don't allow create material W%
    //sql.Add('and left (lbbh,1)<>''W''');
    //
    sql.add('order by LBBH');
    active:=true;
  end; 
end;

procedure TMaterialNew_LB.FormDestroy(Sender: TObject);
begin
MaterialNew_LB:=nil;
end;

procedure TMaterialNew_LB.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=Cafree;
end;

procedure TMaterialNew_LB.DBGridEh1DblClick(Sender: TObject);
begin
  if query1.Active then
  begin
    if query1.recordcount>0 then
      begin
        MaterialNew.query1.Edit;
        MaterialNew.query1.FieldByName('CLLB').Value:=query1.fieldbyname('LBBH').Value;
        MaterialNew.query1.post;
        close;
      end;
  end;
end;

procedure TMaterialNew_LB.DBGridEh1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key=#13 then
  DBGridEh1dblclick(nil);
end;

procedure TMaterialNew_LB.FormShow(Sender: TObject);
begin
  main.FormLanguage(Pointer(self),self.Name);
end;

end.
