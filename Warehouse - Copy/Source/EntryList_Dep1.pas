unit EntryList_Dep1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, DBTables, StdCtrls, ExtCtrls, GridsEh,
  DBGridEh;

type
  TEntryList_Dep = class(TForm)
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
    Button2: TButton;
    DBGridEh1: TDBGridEh;
    procedure Button1Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Button2Click(Sender: TObject);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
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
  EntryList_Dep: TEntryList_Dep;

implementation

uses EntryList1, SuppNew1,main1;

{$R *.dfm}

procedure TEntryList_Dep.Button1Click(Sender: TObject);
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

procedure TEntryList_Dep.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
  edit2.setfocus
end;

procedure TEntryList_Dep.Button2Click(Sender: TObject);
begin
  close;
  SuppNew:=TSuppNew.create(self);
  SuppNew.show;
end;

procedure TEntryList_Dep.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
  button1click(nil);
end;

procedure TEntryList_Dep.FormDestroy(Sender: TObject);
begin
  EntryList_Dep:=nil;
end;

procedure TEntryList_Dep.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  query1.active:=false;
end;

procedure TEntryList_Dep.DBGridEh1DblClick(Sender: TObject);
begin
  if query1.recordcount>0 then
  begin
    with EntryList.ENMas do
      begin
        edit;
        fieldbyname('ZSBH').value:=query1.fieldbyname('ZSDH').value;
        fieldbyname('ZSYWJC').value:=query1.fieldbyname('ZSYWJC').value;
      //  showmessage('Succeed.');
      end;
    query1.Active:=false;
    close;
  end;
end;

procedure TEntryList_Dep.DBGridEh1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
  DBGridEh1Dblclick(nil);
end;

procedure TEntryList_Dep.FormShow(Sender: TObject);
begin
  main.FormLanguage(Pointer(self),self.Name);
end;

end.
