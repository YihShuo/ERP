unit NewEquipment_Depname1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Bde.DBTables, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TNewEquipment_Depname = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Edit2: TEdit;
    DBGrid1: TDBGrid;
    DS1: TDataSource;
    Query1: TQuery;
    Query1ID: TStringField;
    Query1DepName: TStringField;
    Query1DepMemo: TStringField;
    Query1YN: TStringField;
    Label3: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  NewEquipment_Depname: TNewEquipment_Depname;

implementation

{$R *.dfm}

uses main1,NewEquipment1;

procedure TNewEquipment_Depname.Button1Click(Sender: TObject);
begin
  with query1 do
  begin
    active:=false;
    sql.clear;
    if Label3.Caption = 'Lean' then
      sql.Add('select * from BDepartment')
    else
      sql.Add('select * from TSCD_BDepartment');
    sql.add('where ID like '''+edit1.Text+'%''');
    sql.add('and Depname like ''%'+edit2.Text+'%''');
    sql.add('and YN=''1'' and ProYN=''1'' ');
    sql.add('order by ID');
    active:=true;
  end;
end;

procedure TNewEquipment_Depname.DBGrid1DblClick(Sender: TObject);
begin
  if query1.recordcount>0 then
  begin
    with NewEquipment.TSCD do
    begin
        edit;
        if Label3.Caption = 'Lean' then begin
          fieldbyname('Lean_ID').value:=query1.fieldbyname('ID').value;
          fieldbyname('LeanName').value:=query1.fieldbyname('Depname').value;
          fieldbyname('DepMemo').value:=query1.fieldbyname('DepMemo').value;
        end
        else begin
          fieldbyname('DEPID').value:=query1.fieldbyname('ID').value;
          fieldbyname('Depname').value:=query1.fieldbyname('Depname').value;
        end;
    end;
    query1.Active:=false;
    close;
  end;
end;

procedure TNewEquipment_Depname.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=Cafree;
end;


procedure TNewEquipment_Depname.FormDestroy(Sender: TObject);
begin
  NewEquipment_Depname:=nil;
end;

end.
