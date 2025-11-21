unit Department1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls;

type
  TDepartment = class(TForm)
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
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Department: TDepartment;

implementation

uses main1, QC_DailyBonding1;

{$R *.dfm}

procedure TDepartment.Button1Click(Sender: TObject);
begin
 with query1 do
  begin
    active:=false;
    sql.clear;
    sql.Add('select * from BDepartment');
    sql.add('where ID like ');
    sql.add(''''+edit1.Text+'%'+'''');
    sql.add('and Depname like ');
    sql.add(''''+'%'+edit2.Text+'%'+'''');
    sql.add('and GSBH='+''''+main.edit2.Text+'''');  
    sql.add('and YN='+''''+'1'+'''');
    sql.add('and GXLB=''A'' ');
    sql.add('order by ID');
    active:=true;
  end;
end;

procedure TDepartment.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TDepartment.FormDestroy(Sender: TObject);
begin
  Department:=nil;
end;

procedure TDepartment.DBGrid1DblClick(Sender: TObject);
begin
  if query1.RecordCount>0 then
  begin
    with  QC_DailyBonding.LabTS do
    begin
       edit;
       FieldByName('DepNo').Value:=query1.fieldbyname('ID').Value;
       FieldByName('DepName').Value:=query1.fieldbyname('DepName').Value;
       post;
    end;
    query1.Active:=false;
    close;
  end;
end;

end.
