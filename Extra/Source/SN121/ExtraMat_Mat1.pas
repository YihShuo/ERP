unit ExtraMat_Mat1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls, GridsEh,
  DBGridEh, ComCtrls;

type
  TExtraMat_Mat = class(TForm)
    DS1: TDataSource;
    Query1: TQuery;
    Query1cldh: TStringField;
    Query1ywpm: TStringField;
    Query1dwbh: TStringField;
    PageControl1: TPageControl;
    TS1: TTabSheet;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    Edit2: TEdit;
    EDIT1: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    DBGrid1: TDBGrid;
    TS2: TTabSheet;
    Panel2: TPanel;
    Panel3: TPanel;
    DBGridEh1: TDBGridEh;
    Button2: TButton;
    Edit5: TEdit;
    Label3: TLabel;
    DataSource1: TDataSource;
    Query2: TQuery;
    Label4: TLabel;
    Edit6: TEdit;
    Query2devcode: TStringField;
    Query2article: TStringField;
    Query2ywpm: TStringField;
    Query2bwbh: TStringField;
    Query2DWBH: TStringField;
    Query2cldh: TStringField;
    Label5: TLabel;
    Edit7: TEdit;
    procedure EDIT1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure Edit4KeyPress(Sender: TObject; var Key: Char);
    procedure Button1Click(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ExtraMat_Mat: TExtraMat_Mat;

implementation

uses ExtraMaterial1, main1;

{$R *.dfm}

procedure TExtraMat_Mat.EDIT1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    edit2.SetFocus;
end;

procedure TExtraMat_Mat.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    edit3.SetFocus;
end;

procedure TExtraMat_Mat.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    edit4.SetFocus;
end;

procedure TExtraMat_Mat.Edit4KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    button1.SetFocus;
end;

procedure TExtraMat_Mat.Button1Click(Sender: TObject);
begin
  with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select CLZL.*  ');
    sql.add('from clzl');
    sql.add(' where CLZL.CLZMLB=''Y''');
    if edit1.Text <> '' then
      sql.Add(' and CLZL.CLDH like '''+edit1.Text+'%'+'''');
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

procedure TExtraMat_Mat.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    DBGrid1DblClick(nil);
end;

procedure TExtraMat_Mat.DBGrid1DblClick(Sender: TObject);
begin
  if (not query1.Active) then
  begin
    abort;
  end;
  if (Query1.recordcount<1) then
  begin
    abort;
  end;
  with ExtraMaterial.JGDet do
  begin
    insert;
    fieldbyname('CLBH').value:=query1.fieldbyname('CLDH').value;
    fieldbyname('YWPM').value:=query1.fieldbyname('YWPM').value;
    fieldbyname('DWBH').value:=query1.fieldbyname('DWBH').value;
    post;
  end;
  ExtraMaterial.DBGrid4.Columns[3].ReadOnly:=false;
  showmessage('Succeed.');
end;

procedure TExtraMat_Mat.FormDestroy(Sender: TObject);
begin
  ExtraMat_Mat:=nil;
end;

procedure TExtraMat_Mat.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=Cafree;
end;

procedure TExtraMat_Mat.DBGridEh1DblClick(Sender: TObject);
begin
  if (not query2.Active) then
  begin
    abort;
  end;
  if (Query2.recordcount<1) then
  begin
    abort;
  end;
  with ExtraMaterial.JGDet do
  begin
    insert;
    fieldbyname('CLBH').value:=query2.fieldbyname('CLDH').value;
    fieldbyname('YWPM').value:=query2.fieldbyname('YWPM').value;
    fieldbyname('DWBH').value:=query2.fieldbyname('DWBH').value;
    post;
  end;
  ExtraMaterial.DBGrid4.Columns[3].ReadOnly:=false;
  showmessage('Succeed.');
end;

procedure TExtraMat_Mat.Button2Click(Sender: TObject);
begin
  with query2 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select devcode,article,cldh,ywpm,bwbh,DWBH');
    sql.add(' from (');
    sql.add('select ''MOM'' as type,kfxxzl.devcode,ypzl.article,kfxxzl.xieming,ypzls.bwbh,clzl.cldh,clzl.ywpm,kfxxzl.khdh,CLZL.DWBH from ypzls');
    sql.add('left join ypzl on ypzl.ypdh=ypzls.ypdh');
    sql.add('left join kfxxzl on kfxxzl.xiexing=ypzl.xiexing and kfxxzl.shehao=ypzl.shehao');
    sql.add('left join clzl on ypzls.clbh=clzl.cldh');
    sql.add('where kfxxzl.devcode like '''+'%'+edit5.Text+'%'+''' and ypzl.article like '''+'%'+edit7.Text+'%'+''' and ypzl.kfjd like '''+'%'+edit6.Text+'%'+'''');
    sql.add(') a');
    sql.add('group by devcode,article,cldh,ywpm,bwbh,DWBH');
    sql.add('order by devcode,article,bwbh');
    active:=true;

  end;
end;
procedure TExtraMat_Mat.FormShow(Sender: TObject);
begin
  main.FormLanguage(Pointer(self),self.Name);
end;

end.
