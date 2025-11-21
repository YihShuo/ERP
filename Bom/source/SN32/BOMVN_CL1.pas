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
    Query1cqdh: TStringField;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    Edit2: TEdit;
    EDIT1: TEdit;
    Edit3: TEdit;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGridEh;
    XXZLS: TQuery;
    XXZLSXH: TStringField;
    XXZLSBWBH: TStringField;
    XXZLSYWSM: TStringField;
    XXZLSCLBH: TStringField;
    XXZLSYWPM: TStringField;
    XXZLSBWLB: TStringField;
    XXZLSCLSL: TFloatField;
    XXZLSXXZLSVN_CLBH: TStringField;
    XXZLSDWBH: TStringField;
    XXZLSZSJC: TStringField;
    DS: TDataSource;
    procedure EDIT1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Button1Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid2DblClick(Sender: TObject);
    procedure DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
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
    sql.add('select CLDH,CLLB,YWPM,ZWPM,DWBH,CQDH from CLZL where CLDH like');
    sql.add(''''+edit1.Text+'%'+'''');
    sql.add('and YWPM like ');
    sql.add(''''+'%'+edit2.Text+'%'+'''');    
    sql.add('and YWPM like ');
    sql.add(''''+'%'+edit3.Text+'%'+'''');  
    sql.add('and (TYJH is null or TYJH='+''''+'N'+''''+')');
    //sql.add('and YN<>'+''''+'3'+'''');
    sql.add('order by CLDH');
    active:=true;
  end;
end;

procedure TBOMVN_CL.DBGrid1DblClick(Sender: TObject);
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

procedure TBOMVN_CL.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
   DBGrid1DblClick(nil);
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

procedure TBOMVN_CL.FormCreate(Sender: TObject);
begin
  XXZLS.Active:=true;
end;

procedure TBOMVN_CL.DBGrid2DblClick(Sender: TObject);
begin
  if XXZLS.recordcount>0 then
  begin
    with BOMVN.XXZLSVN do
      begin
        edit;
        fieldbyname('CLBH').value:=XXZLS.fieldbyname('CLBH').value;
        fieldbyname('YWPM').value:=XXZLS.fieldbyname('YWPM').value;
        fieldbyname('DWBH').value:=XXZLS.fieldbyname('DWBH').value;
      end;
    XXZLS.Active:=false;
    close;
  end;
end;

procedure TBOMVN_CL.DBGrid2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if ((Copy(XXZLS.FieldByName('CLBH').AsString,1,1)='M') and (XXZLS.FieldByName('XXZLSVN_CLBH').AsString='') ) then
  begin
   if (DataCol=3) or (DataCol=4) then
   begin
     DBGrid2.canvas.Brush.Color:=clyellow;
     DBGrid2.DefaultDrawColumnCell(Rect, DataCol, Column, State);
   end;
  end;
end;

procedure TBOMVN_CL.FormShow(Sender: TObject);
begin
  main.FormLanguage(Pointer(self),self.Name);
end;

end.
