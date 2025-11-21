unit ExtraMat_ZL1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls;

type
  TExtraMat_ZL = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    Edit2: TEdit;
    EDIT1: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    DBGrid1: TDBGrid;
    DS1: TDataSource;
    Query1: TQuery;
    Query1cldh: TStringField;
    Query1cllb: TStringField;
    Query1ywpm: TStringField;
    Query1dwbh: TStringField;
    DBGrid2: TDBGrid;
    Query3: TQuery;
    Query2: TQuery;
    procedure EDIT1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure Edit4KeyPress(Sender: TObject; var Key: Char);
    procedure Button1Click(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
      procedure GetNDate();
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ExtraMat_ZL: TExtraMat_ZL;

implementation

uses ExtraMaterial1, main1;

{$R *.dfm}

procedure TExtraMat_ZL.EDIT1KeyPress(Sender: TObject; var Key: Char);
begin 
  if key=#13 then
    edit2.SetFocus;
end;

procedure TExtraMat_ZL.Edit2KeyPress(Sender: TObject; var Key: Char);
begin 
  if key=#13 then
    edit3.SetFocus;
end;

procedure TExtraMat_ZL.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    edit4.SetFocus;
end;

procedure TExtraMat_ZL.Edit4KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    button1click(nil);
end;

procedure TExtraMat_ZL.Button1Click(Sender: TObject);
begin
  with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select CLZL.*  ');
    sql.add('from clzl');
    sql.add(' where CLZL.CLZMLB=''N''');
    if edit1.Text <> '' then
      sql.Add('and CLZL.CLDH like '''+edit1.Text+'%'+'''');
    if edit2.Text <> '' then
      sql.add('and CLZL.YWPM like '''+'%'+edit2.Text+'%'+'''');
    if edit3.Text <> '' then
      sql.add('and CLZL.YWPM like '''+'%'+edit3.Text+'%'+'''');
    if edit4.Text <> '' then
      sql.add('and CLZL.YWPM like '''+'%'+edit4.Text+'%'+'''');
    sql.add('order by CLZL.CLDH');
    active:=true;
  end;
end;

procedure TExtraMat_ZL.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    DBGrid1dblclick(nil);
end;
//
procedure TExtraMat_ZL.GetNDate();
begin
  with QUERY3 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select getdate() as NDate ');
    active:=true;
    NDate:=fieldbyname('NDate').Value;
    active:=false;
  end;

end;
//

procedure TExtraMat_ZL.DBGrid1DblClick(Sender: TObject);
begin
  if (not query1.Active) then
  begin
    abort;
  end;
  if (Query1.recordcount=0) then
  begin
    abort;
  end;
  with ExtraMaterial.JGDetZ do
    begin
      insert;
      FieldByName('JGNO').value:=ExtraMaterial.JGDet.fieldbyname('JGNO').Value ;
      fieldbyname('CLBH').value:=ExtraMaterial.JGDet.fieldbyname('CLBH').value;
      FieldByName('BJNO').value:=ExtraMaterial.JGDet.fieldbyname('BJNO').Value;
      FieldByName('YQDate').value:=ExtraMaterial.JGDet.fieldbyname('YQDate').Value;
      FieldByName('CFMDate').value:=ExtraMaterial.JGDet.fieldbyname('CFMDate').Value;
      FieldByName('ZMLB').value:=query1.fieldbyname('CLDH').Value ;
      fieldbyname('YWPM').value:=query1.fieldbyname('YWPM').value;
      fieldbyname('DWBH').value:=query1.fieldbyname('DWBH').value;
      FieldByName('Qty').value:=1;
      FieldByName('USERDate').value:=date;
      FieldByName('USERID').value:=main.Edit1.Text;
      FieldByName('YN').value:='1';
    end;

    //
  close;
end;

procedure TExtraMat_ZL.FormDestroy(Sender: TObject);
begin
  ExtraMat_ZL:=nil;
end;

procedure TExtraMat_ZL.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=Cafree;
end;

procedure TExtraMat_ZL.FormShow(Sender: TObject);
begin
  main.FormLanguage(Pointer(self),self.Name);
end;

end.
