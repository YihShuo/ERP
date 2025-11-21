unit ModelBasic_CL1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, Buttons, ExtCtrls;

type
  TModelBasic_CL = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    Edit3: TEdit;
    BitBtn1: TBitBtn;
    DBGridEh1: TDBGridEh;
    Query1: TQuery;
    DataSource1: TDataSource;
    Query1CLDH: TStringField;
    Query1YWPM: TStringField;
    Query1DWBH: TStringField;
    procedure BitBtn1Click(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure DBGridEh1KeyPress(Sender: TObject; var Key: Char);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ModelBasic_CL: TModelBasic_CL;

implementation

uses ModelBasic1, main1;

{$R *.dfm}

procedure TModelBasic_CL.BitBtn1Click(Sender: TObject);
begin
with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select CLDH,YWPM,DWBH ');
    sql.add('from CLZL ');
    sql.add('where CLDH like '+''''+edit1.Text+'%'+'''');
    sql.add('and YWPM like '+''''+'%'+edit2.Text+'%'+'''');
    sql.add('and YWPM like '+''''+'%'+edit3.Text+'%'+'''');
    sql.add('order by CLDH ');
    active:=true;
  end;
end;

procedure TModelBasic_CL.DBGridEh1DblClick(Sender: TObject);
begin
if query1.Active then
  begin
    if query1.recordcount>0 then
      begin
        with ModelBasic.YWXX do
          begin
            edit;
            fieldbyname('CLBH').value:=query1.fieldbyname('CLDH').value;
            post;
          end;
      end;
  end;
end;

procedure TModelBasic_CL.DBGridEh1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
  dbgrideh1dblclick(nil);
end;

procedure TModelBasic_CL.FormDestroy(Sender: TObject);
begin
modelbasic:=nil;
end;

procedure TModelBasic_CL.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=cafree;
end;

procedure TModelBasic_CL.FormShow(Sender: TObject);
begin
  main.FormLanguage(Pointer(self),self.Name);
end;

end.
