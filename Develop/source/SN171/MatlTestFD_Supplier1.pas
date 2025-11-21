unit MatlTestFD_Supplier1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls, GridsEh,
  DBGridEh;

type
  TMatlTestFD_Supplier = class(TForm)
    Panel1: TPanel;
    Button1: TButton;
    DBGrid1: TDBGrideh;
    DS1: TDataSource;
    Query1: TQuery;
    strngfldQuery1zsdh: TStringField;
    strngfldQuery1zsqm: TStringField;
    strngfldQuery1zsjc: TStringField;
    strngfldQuery1zsywjc: TStringField;
    strngfldQuery1tybh: TStringField;
    strngfldQuery1fpdz: TStringField;
    strngfldQuery1yjdz: TStringField;
    strngfldQuery1dh: TStringField;
    strngfldQuery1cz: TStringField;
    strngfldQuery1fzr: TStringField;
    strngfldQuery1bb: TStringField;
    strngfldQuery1llr2: TStringField;
    strngfldQuery1llr: TStringField;
    strngfldQuery1dybh: TStringField;
    strngfldQuery1mark: TStringField;
    strngfldQuery1USERID: TStringField;
    dtmfldQuery1USERDATE: TDateTimeField;
    strngfldQuery1YN: TStringField;
    strngfldQuery1Country: TStringField;
    strngfldQuery1MZSDH: TStringField;
    edt1: TEdit;
    lbl1: TLabel;
    lbl2: TLabel;
    edt2: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure EDIT1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MatlTestFD_Supplier: TMatlTestFD_Supplier;

implementation

uses MaterialTestFD1 ;

{$R *.dfm}

procedure TMatlTestFD_Supplier.Button1Click(Sender: TObject);
begin
with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select  * from ZSZL ');
    sql.Add(' where 1=1');
    if edt1.Text <> '' then
       sql.Add(' and zsdh = '''+edt1.Text+'''');
    if edt2.Text <> '' then
       sql.Add(' and zsywjc like ''%'+edt1.Text+'%''');
    active:=true;
  end;
end;

procedure TMatlTestFD_Supplier.EDIT1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
  // edit2.setfocus
end;

procedure TMatlTestFD_Supplier.DBGrid1DblClick(Sender: TObject);
begin
if query1.recordcount>0 then
  begin
    MaterialTestFD.Edt1.text:= query1.fieldbyname('ZSYWJC').value ;
    query1.Active:=false;
    close;
  end;
end;

procedure TMatlTestFD_Supplier.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
  DBGrid1Dblclick(nil);
end;

procedure TMatlTestFD_Supplier.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
button1click(nil);
end;

procedure TMatlTestFD_Supplier.FormDestroy(Sender: TObject);
begin
MatlTestFD_Supplier:=nil;
end;

procedure TMatlTestFD_Supplier.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

action:=cafree;
end;

procedure TMatlTestFD_Supplier.FormCreate(Sender: TObject);
begin
   Button1.Click();
end;

end.
