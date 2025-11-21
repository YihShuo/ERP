unit Copy1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, DBTables, StdCtrls, ExtCtrls;

type
  TCopy = class(TForm)
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
    Query1ARTICLE: TStringField;
    Query1YSSM: TStringField;
    Label2: TLabel;
    Edit3: TEdit;
    Query2Destination: TStringField;
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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Copy: TCopy;

implementation

uses DestinationPackingBox_Label1, main1;

{$R *.dfm}

procedure TCopy.Button1Click(Sender: TObject);
begin
  query2.Active:=false;
  with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.Add('select distinct XXZL.XieXing,XXZL.SheHao,XXZL.Article,XXZL.XieMing,XXZL.YSSM,XXZL.KHDH ');
    sql.add('from XXZL ');
    sql.add('where 1=1 ');
    if edit1.Text <> '' then
      sql.add('    and XXZL.XieXing like '+''''+edit1.Text+'%'+'''');
    if edit2.Text <> '' then
      sql.add('    and XXZL.XieMing like '+''''+edit2.Text+'%'+'''');
    if edit3.Text <> '' then
      sql.add('    and XXZL.ARTICLE like '+''''+edit3.Text+'%'+'''');
    sql.add('order by XieXing,SheHao');
    active:=true;
  end;
  query2.Active:=true;
end;

procedure TCopy.EDIT1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 THEN
    edit2.SetFocus;
end;

procedure TCopy.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 THEN
    button1click(nil);
end;

procedure TCopy.DBGrid1DblClick(Sender: TObject);
begin
  if query2.recordcount>0 then
  begin
    with query2 do
    begin
      while not eof do
      begin
        DestinationPackingBox_Label.XXZLSSVN.insert;
        DestinationPackingBox_Label.XXZLSSVN.fieldbyname('BWBH').Value:=fieldbyname('BWBH').Value;
        DestinationPackingBox_Label.XXZLSSVN.fieldbyname('YWSM').Value:=fieldbyname('YWSM').Value;
        DestinationPackingBox_Label.XXZLSSVN.fieldbyname('CLBH').Value:=fieldbyname('CLBH').Value;
        DestinationPackingBox_Label.XXZLSSVN.fieldbyname('YWPM').Value:=fieldbyname('YWPM').Value;
        DestinationPackingBox_Label.XXZLSSVN.fieldbyname('DWBH').Value:=fieldbyname('DWBH').Value;
        DestinationPackingBox_Label.XXZLSSVN.fieldbyname('CSBH').Value:=fieldbyname('CSBH').Value;
        DestinationPackingBox_Label.XXZLSSVN.fieldbyname('ZSYWJC').Value:=fieldbyname('ZSYWJC').Value;
        DestinationPackingBox_Label.XXZLSSVN.fieldbyname('CLSL').Value:=fieldbyname('CLSL').Value;
        DestinationPackingBox_Label.XXZLSSVN.fieldbyname('cond').Value:=fieldbyname('cond').Value;
        DestinationPackingBox_Label.XXZLSSVN.fieldbyname('Destination').Value:=fieldbyname('Destination').Value;
        DestinationPackingBox_Label.XXZLSSVN.fieldbyname('ADTYP').Value:=fieldbyname('ADTYP').Value;
        next;
      end;
    end;
  end;
end;

procedure TCopy.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    DBGrid1dblclick(nil);
end;

procedure TCopy.DBGrid2DblClick(Sender: TObject);
begin
  if query2.recordcount>0 then
  begin
    with query2 do
    begin
      DestinationPackingBox_Label.XXZLSSVN.insert;
      DestinationPackingBox_Label.XXZLSSVN.fieldbyname('BWBH').Value:=fieldbyname('BWBH').Value;
      DestinationPackingBox_Label.XXZLSSVN.fieldbyname('YWSM').Value:=fieldbyname('YWSM').Value;
      DestinationPackingBox_Label.XXZLSSVN.fieldbyname('CLBH').Value:=fieldbyname('CLBH').Value;
      DestinationPackingBox_Label.XXZLSSVN.fieldbyname('YWPM').Value:=fieldbyname('YWPM').Value;
      DestinationPackingBox_Label.XXZLSSVN.fieldbyname('DWBH').Value:=fieldbyname('DWBH').Value;
      DestinationPackingBox_Label.XXZLSSVN.fieldbyname('CSBH').Value:=fieldbyname('CSBH').Value;
      DestinationPackingBox_Label.XXZLSSVN.fieldbyname('ZSYWJC').Value:=fieldbyname('ZSYWJC').Value;
      DestinationPackingBox_Label.XXZLSSVN.fieldbyname('CLSL').Value:=fieldbyname('CLSL').Value;
      DestinationPackingBox_Label.XXZLSSVN.fieldbyname('cond').Value:=fieldbyname('cond').Value;
      DestinationPackingBox_Label.XXZLSSVN.fieldbyname('Destination').Value:=fieldbyname('Destination').Value;
      DestinationPackingBox_Label.XXZLSSVN.fieldbyname('ADTYP').Value:=fieldbyname('ADTYP').Value;
    end;
  end;
end;

procedure TCopy.DBGrid2KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    DBGrid2DblClick(nil);
end;

procedure TCopy.FormDestroy(Sender: TObject);
begin
  Copy:=nil;
end;

procedure TCopy.FormClose(Sender: TObject; var Action: TCloseAction);
begin              
  query2.active:=false;
  query1.active:=false;
end;

procedure TCopy.FormShow(Sender: TObject);
begin
  main.FormLanguage(Pointer(self),self.Name);
end;

end.
