unit NewEquipment_CLZL1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Bde.DBTables, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TNewEquipment_CLZL = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    EDIT1: TEdit;
    Edit2: TEdit;
    DBGrid1: TDBGrid;
    DS1: TDataSource;
    Query1: TQuery;
    Query1cldh: TStringField;
    Query1ywpm: TStringField;
    Query1LB: TStringField;
    procedure Button1Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  NewEquipment_CLZL: TNewEquipment_CLZL;

implementation

uses NewEquipment1, NewEquipment_Materal1;

{$R *.dfm}

procedure TNewEquipment_CLZL.Button1Click(Sender: TObject);
begin
  with query1 do
  begin
    active:=false;
    sql.Clear;
    SQL.Add('select cldh,ywpm,''2'' as LB  ');
    SQL.Add('from CLZL ');
    SQL.Add('where cldh like'''+edit1.Text+'%''  ');
    sql.add('      and ywpm like ''%'+edit2.Text+'%''');
    sql.add('order by cldh');
    active:=true;
  end;
end;

procedure TNewEquipment_CLZL.DBGrid1DblClick(Sender: TObject);
begin
  if query1.recordcount>0 then
  begin
    with NewEquipment.TSCD do
    begin
        edit;
        fieldbyname('SBBH').value:=query1.fieldbyname('cldh').value;
        fieldbyname('YWPM').value:=query1.fieldbyname('YWPM').value;
        fieldbyname('LB').value:=query1.fieldbyname('LB').value;
    end;
    query1.Active:=false;
    close;
  end;
end;

procedure TNewEquipment_CLZL.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=CaFree;
end;

procedure TNewEquipment_CLZL.FormDestroy(Sender: TObject);
begin
  NewEquipment_CLZL:=nil;
end;

end.
