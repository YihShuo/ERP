unit BOMVN_copy1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, DBTables, StdCtrls, ExtCtrls;

type
  TBOMVN_copy = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    Button1: TButton;
    EDIT1: TEdit;
    Edit2: TEdit;
    DS1: TDataSource;
    Query1: TQuery;
    DBGrid1: TDBGrid;
    Query1XieXing: TStringField;
    Query1SheHao: TStringField;
    Query1XieMing: TStringField;
    Query1KHDH: TStringField;
    Query2: TQuery;
    DBGrid2: TDBGrid;
    DS2: TDataSource;
    Query2XieXing: TStringField;
    Query2SheHao: TStringField;
    Query2BWBH: TStringField;
    Query2CLBH: TStringField;
    Query2CSBH: TStringField;
    Query2CLSL: TCurrencyField;
    Query2FLBH: TStringField;
    Query2USERID: TStringField;
    Query2USERDATE: TDateTimeField;
    Query2YN: TStringField;
    Query2YWSM: TStringField;
    Query2ZSYWJC: TStringField;
    Query2YWPM: TStringField;
    Query2DWBH: TStringField;
    Query2DFL: TStringField;
    Query2XFL: TStringField;
    Query1ARTICLE: TStringField;
    Query1YSSM: TStringField;
    Label2: TLabel;
    Edit3: TEdit;
    Query2BWLB: TStringField;
    procedure Button1Click(Sender: TObject);
    procedure EDIT1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid2DblClick(Sender: TObject);
    procedure DBGrid2KeyPress(Sender: TObject; var Key: Char);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BOMVN_copy: TBOMVN_copy;

implementation

uses  main1,SampleOrder1;

{$R *.dfm}

procedure TBOMVN_copy.Button1Click(Sender: TObject);
begin
  with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.Add('select * from XXZL where 1=1 ');
    if edit1.Text <>'' then
      sql.add('and XieXing like '''+edit1.Text+'%'+ '''');
    if edit2.Text <>'' then
      sql.add('and XieMing like '''+'%'+edit2.Text+'%'+'''');
    if edit3.Text <> '' then
      sql.add('and article like '''+'%'+edit3.Text+'%'+'''');
    sql.add('order by XieXing,SheHao');
    active:=true;
  end;
  query2.Active:=true;
end;

procedure TBOMVN_copy.EDIT1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 THEN
    edit2.SetFocus;
end;

procedure TBOMVN_copy.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 THEN
    edit3.SetFocus;
end;

procedure TBOMVN_copy.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
 if key=#13 THEN
    button1click(nil);
end;

procedure TBOMVN_copy.DBGrid1DblClick(Sender: TObject);
begin
  if query2.recordcount>0 then
  begin
    with query2 do
    begin
      while not eof do
      begin
        SampleOrder.YPZLS.fieldbyname('BWBH').Value:=fieldbyname('BWBH').Value;
        SampleOrder.YPZLS.fieldbyname('YWSM').Value:=fieldbyname('YWSM').Value;
        SampleOrder.YPZLS.fieldbyname('CLBH').Value:=fieldbyname('CLBH').Value;
        SampleOrder.YPZLS.fieldbyname('YWPM').Value:=fieldbyname('YWPM').Value;
        SampleOrder.YPZLS.fieldbyname('DWBH').Value:=fieldbyname('DWBH').Value;
        SampleOrder.YPZLS.fieldbyname('CSBH').Value:=fieldbyname('CSBH').Value;
        SampleOrder.YPZLS.fieldbyname('ZSYWJC').Value:=fieldbyname('ZSYWJC').Value;
        SampleOrder.YPZLS.fieldbyname('CLSL').Value:=fieldbyname('CLSL').Value;
        SampleOrder.YPZLS.fieldbyname('BWLB').Value:=fieldbyname('BWLB').Value;
        next;
        SampleOrder.YPZLS.Insert;
      end;
    end;
  end;
end;

procedure TBOMVN_copy.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
  DBGrid1dblclick(nil);
end;

procedure TBOMVN_copy.DBGrid2DblClick(Sender: TObject);
begin
  if query2.recordcount>0 then
  begin
    with query2 do
    begin
      while not eof do
      begin
        SampleOrder.YPZLS.fieldbyname('BWBH').Value:=fieldbyname('BWBH').Value;
        SampleOrder.YPZLS.fieldbyname('YWSM').Value:=fieldbyname('YWSM').Value;
        SampleOrder.YPZLS.fieldbyname('CLBH').Value:=fieldbyname('CLBH').Value;
        SampleOrder.YPZLS.fieldbyname('YWPM').Value:=fieldbyname('YWPM').Value;
        SampleOrder.YPZLS.fieldbyname('DWBH').Value:=fieldbyname('DWBH').Value;
        SampleOrder.YPZLS.fieldbyname('CSBH').Value:=fieldbyname('CSBH').Value;
        SampleOrder.YPZLS.fieldbyname('ZSYWJC').Value:=fieldbyname('ZSYWJC').Value;
        SampleOrder.YPZLS.fieldbyname('CLSL').Value:=fieldbyname('CLSL').Value;
        SampleOrder.YPZLS.fieldbyname('BWLB').Value:=fieldbyname('BWLB').Value;
        next;
        SampleOrder.YPZLS.Insert;
      end;
    end;
  end;
end;

procedure TBOMVN_copy.DBGrid2KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
    DBGrid2DblClick(nil);
end;

procedure TBOMVN_copy.FormDestroy(Sender: TObject);
begin
  BOMVN_copy:=nil;
end;

procedure TBOMVN_copy.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  query2.active:=false;
  query1.active:=false;
//action:=Cafree;
end;

procedure TBOMVN_copy.FormShow(Sender: TObject);
begin
  //main.FormLanguage(Pointer(self),self.Name);
end;



end.
