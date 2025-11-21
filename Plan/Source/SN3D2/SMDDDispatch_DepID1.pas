unit SMDDDispatch_DepID1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ExtCtrls;

type
  TSMDDDispatch_DepID = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Edit2: TEdit;
    DBGridEh1: TDBGridEh;
    DS1: TDataSource;
    Query1: TQuery;
    Query1ID: TStringField;
    Query1DepName: TStringField;
    Query1DepMemo: TStringField;
    Query1YN: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SMDDDispatch_DepID: TSMDDDispatch_DepID;

implementation
   uses main1, SMDDDispatch1;
{$R *.dfm}

procedure TSMDDDispatch_DepID.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=CaFree;
end;

procedure TSMDDDispatch_DepID.FormDestroy(Sender: TObject);
begin
  SMDDDispatch_DepID:=nil;
end;

procedure TSMDDDispatch_DepID.Button1Click(Sender: TObject);
begin
  with query1 do
  begin
    active:=false;
    sql.clear;
    sql.add('Select ID, DepName, DepMemo, YN ');
    sql.add('from BDepartment ');
    sql.add('where ID like '''+edit1.Text+'%'' ');
    sql.add('  and Depname like ''%'+edit2.Text+'%'' ');
    sql.add('  and GSBH='''+main.edit2.Text+'''');
    sql.add('  and YN=''1'' and GXLB='''+SMDDDispatch.GXLBCombo.Text+''' ');
    sql.add('order by ID');
    active:=true;
  end;
end;

procedure TSMDDDispatch_DepID.DBGridEh1DblClick(Sender: TObject);
begin
  if query1.recordcount>0 then
  begin
    SMDDDispatch.BDepEdit.Text:=query1.fieldbyname('DepName').Value;
    close;
  end;
end;

procedure TSMDDDispatch_DepID.FormShow(Sender: TObject);
begin
  main.FormLanguage(Pointer(SMDDDispatch_DepID),SMDDDispatch_DepID.Name);
end;

end.
