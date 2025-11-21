unit SetMaterial1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls, IniFiles;

type
  TSetMaterial = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Edit2: TEdit;
    DBGrid1: TDBGrid;
    DS1: TDataSource;
    Query1: TQuery;
    Query1CLDH: TStringField;
    Query1YWPM: TStringField;
    Query1DWBH: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
  end;

var
  SetMaterial: TSetMaterial;

implementation

uses SetCommonMat1, main1, FunUnit;

{$R *.dfm}



procedure TSetMaterial.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TSetMaterial.Button1Click(Sender: TObject);
begin
  with query1 do
  begin
    active:=false;
    sql.clear;
    sql.Add('Select CLDH,YWPM,DWBH FROM CLZL');
    sql.add('Where 1=1 ');
    sql.Add(' and CLDH not in ( Select CLBH From CGNoNeedUseStock )');
    if Edit1.Text <> '' then
      sql.Add(' and  CLDH like '''+edit1.Text+'%'' ');
    if Edit2.Text <> '' then
      sql.add(' and YWPM like ''%'+edit2.Text+'%''' );
    sql.add('order by CLDH');
    active:=true;
  end;
end;

procedure TSetMaterial.DBGrid1DblClick(Sender: TObject);
begin
  if query1.recordcount>0 then
  begin
    with SetCommonMat.Query1 do
      begin
        edit;
        FieldByName('CLBH').Value:=query1.fieldbyname('CLDH').Value;
        FieldByName('YWPM').Value:=query1.fieldbyname('YWPM').Value;
        FieldByName('DWBH').Value:=query1.fieldbyname('DWBH').Value;
      end;
    close;
  end;
end;


procedure TSetMaterial.FormDestroy(Sender: TObject);
begin
  SetMaterial:=nil;
end;

procedure TSetMaterial.FormShow(Sender: TObject);
begin
  main.FormLanguage(Pointer(self),self.Name);
end;

end.
