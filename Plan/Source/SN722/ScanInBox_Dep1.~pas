unit ScanInBox_Dep1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, StdCtrls, ExtCtrls, Grids, DBGrids, GridsEh,
  DBGridEh;

type
  TScanInBox_Dep = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Edit2: TEdit;
    CheckBox1: TCheckBox;
    DS1: TDataSource;
    Query1: TQuery;
    Query1ID: TStringField;
    Query1DepName: TStringField;
    Query1DepMemo: TStringField;
    Query1GXLB: TStringField;
    Query1YN: TStringField;
    DBGridEh1: TDBGridEh;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ScanInBox_Dep: TScanInBox_Dep;

implementation
  uses ScanInBox1, main1;
{$R *.dfm}

procedure TScanInBox_Dep.Button1Click(Sender: TObject);
begin
  with query1 do
  begin
    active:=false;
    sql.clear;
    sql.Add('select * from BDepartment');
    sql.add('where ID like '+''''+edit1.Text+'%'+'''');
    sql.add('      and Depname like '+''''+'%'+edit2.Text+'%'+'''');
    sql.add('      and ProYN='+''''+'1'+'''');
    sql.add('      and IsNull(GXLB,'''')<>'''' ');
    if not Checkbox1.Checked then
    begin
      sql.add(' and GSBH='+''''+main.edit2.Text+'''');
    end;
    sql.add('order by ID');
    active:=true;
  end;
end;

procedure TScanInBox_Dep.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=CaFree;
end;

procedure TScanInBox_Dep.FormDestroy(Sender: TObject);
begin
  ScanInBox_Dep:=nil;
end;

procedure TScanInBox_Dep.DBGridEh1DblClick(Sender: TObject);
begin
  if query1.recordcount>0 then
  begin
    //±a¤JDepNO
    ScanInBox.DepNo.active:=true;
    if ScanInBox.DepNo.Locate('ID',copy(query1.FieldByName('ID').AsString,0,10),[]) then
    begin
      ScanInBox.edit2.Text:=query1.fieldbyname('ID').Value;
      ScanInBox.edit1.Text:=query1.fieldbyname('DepName').Value;
      ScanInBox.edit3.text:='';
      ScanInBox.DepGXLB:=query1.fieldbyname('GXLB').Value;
    end;
    //
    close;
  end;
end;

procedure TScanInBox_Dep.FormShow(Sender: TObject);
begin
  main.FormLanguage(Pointer(self),self.Name);
end;

end.
