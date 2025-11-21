unit DSDonVi1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, fununit,
  DB, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls, GridsEh, DBGridEh;

type
  TDSDonVi = class(TForm)
    Panel1: TPanel;
    ID: TLabeledEdit;
    DepName: TLabeledEdit;
    btn_Query: TButton;
    DBGridEh1: TDBGridEh;
    Query1: TQuery;
    DS1: TDataSource;
    Query1ID: TStringField;
    Query1DepName: TStringField;
    Query1DepMemo: TStringField;
    Query1YN: TStringField;
    Label1: TLabel;
    Label2: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure btn_QueryClick(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DSDonVi: TDSDonVi;

implementation

uses main1, ScanChiTiet1;

{$R *.dfm}

procedure TDSDonVi.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    action:=cafree;
end;

procedure TDSDonVi.FormDestroy(Sender: TObject);
begin
    DSDonVi:=nil;
end;

procedure TDSDonVi.btn_QueryClick(Sender: TObject);
begin
  with Query1 do
  begin
    active:=false;
    sql.clear;
    sql.Add('select * from BDepartment');
    sql.add('where ID like '+''''+ID.Text+'%'+'''');
    if (ScanChiTiet.GXLB='B') then
    begin
      sql.add('      and GXLB = ''A'' ');
    end else
    begin
      sql.add('      and GXLB ='+''''+ScanChiTiet.GXLB+'''');
    end;
    sql.add('      and Depname like '+''''+DepName.Text+'%'+'''');
    sql.add('order by ID');
    //funcobj.WriteErrorLog(sql.Text);
    active:=true;
  end;
end;


procedure TDSDonVi.DBGridEh1DblClick(Sender: TObject);
begin
  if query1.recordcount>0 then
  begin
    with ScanChiTiet.SMZL do
    begin
      while not Eof do
      begin
        Edit;
        FieldByName('DepNo').AsString:=query1.fieldbyname('ID').AsString;
        FieldByName('DepName').AsString:=query1.fieldbyname('DepName').AsString;
        next;
      end;
    end;
    close;
    ScanChiTiet.SMZL.First;
  end;
end;

procedure TDSDonVi.FormShow(Sender: TObject);
begin
  main.FormLanguage(Pointer(self),self.Name);
end;

end.

