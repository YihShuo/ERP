unit VendorQueryP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, StdCtrls, GridsEh, DBGridEh, ExtCtrls;

type
  TVendorQuery = class(TForm)
    Panel1: TPanel;
    DBGridEh1: TDBGridEh;
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Edit3: TEdit;
    DS1: TDataSource;
    Query1: TQuery;
    Query1zsdh: TStringField;
    Query1zsqm: TStringField;
    Query1zsjc: TStringField;
    Query1zsywjc: TStringField;
    Query1tybh: TStringField;
    Query1fpdz: TStringField;
    Query1yjdz: TStringField;
    Query1dh: TStringField;
    Query1cz: TStringField;
    Query1fzr: TStringField;
    Query1bb: TStringField;
    Query1llr2: TStringField;
    Query1llr: TStringField;
    Query1dybh: TStringField;
    Query1mark: TStringField;
    Query1USERID: TStringField;
    Query1USERDATE: TDateTimeField;
    Query1YN: TStringField;
    Query1TYJH: TStringField;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  VendorQuery: TVendorQuery;

implementation

uses VendorMapSetP;

{$R *.dfm}

procedure TVendorQuery.Button1Click(Sender: TObject);
begin
  with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.Add('select * from zszl');
    if edit3.Text='1' then    //不顯示已存在對照表中的台灣廠商
      sql.Add('where zsdh not in (select csbh from b2buser)');
    if edit3.Text='2' then    //不顯示已存在對照表中的越南廠商
      sql.Add('where zsdh not in (select csbhv from b2buser)');
    sql.Add('  and zsdh like '+'''''+''%'+edit1.Text+'%''+'''''+'');
    sql.Add('  and zsywjc like '+'''''+''%'+edit2.Text+'%''+'''''+'');
    sql.Add('  and zsywjc <> '+'''X'''+'');  //不顯示已註銷的廠商
    sql.Add('  and YN='+''''+edit3.Text+''''+'');
//    memo1.Text:=sql.Text;
    active:=true;
  end;
end;

procedure TVendorQuery.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TVendorQuery.FormDestroy(Sender: TObject);
begin
  VendorQuery:=nil;
end;

procedure TVendorQuery.DBGridEh1DblClick(Sender: TObject);
begin
  if query1.recordcount>0 then
  begin
    if edit3.Text='1' then
      VendorMapSet.Edit1.text:=query1.FieldByName('zsdh').value;
    if edit3.Text='2' then
      VendorMapSet.Edit2.text:=query1.FieldByName('zsdh').value;
    close;
  end;
end;

end.
