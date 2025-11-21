unit SupplierSample_ZSDH_VN1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls;

type
  TSupplierSample_ZSDH_VN = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    EDIT1: TEdit;
    Edit2: TEdit;
    DBGrid1: TDBGrid;
    DS1: TDataSource;
    Query1: TQuery;
    Query1ZSDH: TStringField;
    Query1ZSYWJC: TStringField;
    Query1ZSQM: TStringField;
    Query1YN: TStringField;
    procedure Button1Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    TWorJG:String;
    { Public declarations }
  end;

var
  SupplierSample_ZSDH_VN: TSupplierSample_ZSDH_VN;

implementation
  uses main1,SupplierSample1;
{$R *.dfm}

procedure TSupplierSample_ZSDH_VN.Button1Click(Sender: TObject);
begin
  with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select ZSDH,ZSYWJC,ZSQM,case when YN=1 then ''TW'' else ''VN'' end as YN from ZSZL ');
    sql.add('where ZSDH like'''+edit1.Text+'%'' ');
    sql.add('      and ZSYWJC like ''%'+edit2.Text+'%''');
    sql.add('      and YN=''2''');
    sql.add('      and isnull(TYJH,''N'')<>''Y'' ') ;
    sql.add('order by ZSDH');
    active:=true;
  end;
end;

procedure TSupplierSample_ZSDH_VN.FormDestroy(Sender: TObject);
begin
  SupplierSample_ZSDH_VN:=nil;
end;

procedure TSupplierSample_ZSDH_VN.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=Cafree;
end;

procedure TSupplierSample_ZSDH_VN.DBGrid1DblClick(Sender: TObject);
begin
  if query1.recordcount>0 then
  begin
    with SupplierSample.Query1 do
    begin
      edit;
      fieldbyname('Zsdh_'+TWorJG).value:=query1.fieldbyname('ZSDH').value;
      fieldbyname('Zsdh_'+TWorJG+'_jc').value:=query1.fieldbyname('ZSYWJC').value;
    end;
    query1.Active:=false;
    close;
  end;
end;

procedure TSupplierSample_ZSDH_VN.FormShow(Sender: TObject);
begin
  main.FormLanguage(Pointer(SupplierSample_ZSDH_VN),SupplierSample_ZSDH_VN.Name);
end;

end.
