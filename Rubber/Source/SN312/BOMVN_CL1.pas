unit BOMVN_CL1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls, GridsEh,
  DBGridEh, ComCtrls;

type
  TBOMVN_CL = class(TForm)
    Query1: TQuery;
    DS1: TDataSource;
    Query1cldh: TStringField;
    Query1cllb: TStringField;
    Query1ywpm: TStringField;
    Query1dwbh: TStringField;
    Query1zwpm: TStringField;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    Edit2: TEdit;
    EDIT1: TEdit;
    Edit3: TEdit;
    DBGridEh1: TDBGridEh;
    procedure EDIT1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Button1Click(Sender: TObject);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
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
  BOMVN_CL: TBOMVN_CL;

implementation

uses BOMVN1, main1;

{$R *.dfm}

procedure TBOMVN_CL.EDIT1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
  edit2.SetFocus;
end;

procedure TBOMVN_CL.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
  edit3.SetFocus;
end;

procedure TBOMVN_CL.Button1Click(Sender: TObject);
begin
  with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select CLDH,CLLB,YWPM,ZWPM,DWBH from '+main.LIY_DD+'.dbo.CLZL CLZL where CLDH like');
    sql.add(''''+edit1.Text+'%'+'''');
    sql.add('and YWPM like ');
    sql.add(''''+'%'+edit2.Text+'%'+'''');    
    sql.add('and YWPM like ');
    sql.add(''''+'%'+edit3.Text+'%'+'''');  
    sql.add('order by CLDH');
    active:=true;
  end;
end;

procedure TBOMVN_CL.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
  button1Click(nil);
end;

procedure TBOMVN_CL.FormDestroy(Sender: TObject);
begin
  BOMVN_CL:=nil;
end;

procedure TBOMVN_CL.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=Cafree;
end;

procedure TBOMVN_CL.DBGridEh1DblClick(Sender: TObject);
begin
  if query1.recordcount>0 then
  begin
    with BOMVN.XXZLSVN do
    begin
      edit;
      fieldbyname('CLBH').value:=query1.fieldbyname('CLDH').value;
      fieldbyname('YWPM').value:=query1.fieldbyname('YWPM').value;
      fieldbyname('DWBH').value:=query1.fieldbyname('DWBH').value;
    end;
    query1.Active:=false;
    close;
  end;
end;

procedure TBOMVN_CL.DBGridEh1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    DBGridEh1DblClick(nil);
end;

procedure TBOMVN_CL.FormShow(Sender: TObject);
begin
  main.FormLanguage(Pointer(self),self.Name);
end;

end.
