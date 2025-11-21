unit Containerlist_Dep1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls, GridsEh,
  DBGridEh;

type
  TContainerlist_Dep = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    EDIT1: TEdit;
    Edit2: TEdit;
    DS1: TDataSource;
    Query1: TQuery;
    Query1ZSDH: TStringField;
    Query1ZSYWJC: TStringField;
    Query1ZSQM: TStringField;
    DBGridEh1: TDBGridEh;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Containerlist_Dep: TContainerlist_Dep;

implementation

uses main1, Containerlist1;

{$R *.dfm}

procedure TContainerlist_Dep.FormDestroy(Sender: TObject);
begin
  Containerlist_Dep:=nil;
end;

procedure TContainerlist_Dep.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TContainerlist_Dep.Button1Click(Sender: TObject);
begin
with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select ZSDH,ZSYWJC,ZSQM from ZSZL ');
    sql.add('where ZSDH like'+''''+edit1.Text+'%'+'''');
    sql.add('      and ZSYWJC like '+''''+'%'+edit2.Text+'%'+'''');
    if  main.Edit2.text <> 'CDC' then
      sql.add('      and YN='+''''+'2'+'''');
    sql.add('      and isnull(TYJH,'+''''+'N'+''''+')<>'+''''+'Y'+'''') ;
    sql.add('order by ZSDH');
    active:=true;
  end;
end;

procedure TContainerlist_Dep.DBGridEh1DblClick(Sender: TObject);
begin
  if query1.recordcount>0 then
  begin
    with Containerlist.ENMas do
      begin
        edit;
        fieldbyname('ZSBH').value:=query1.fieldbyname('ZSDH').value;
        fieldbyname('ZSYWJC').value:=query1.fieldbyname('ZSYWJC').value;
     end;
    query1.Active:=false;
    close;
  end;
end;

procedure TContainerlist_Dep.FormShow(Sender: TObject);
begin
  main.FormLanguage(Pointer(self),self.Name);
end;

end.
