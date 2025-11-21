unit PurOther_CL1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls, GridsEh,
  DBGridEh;

type
  TPurOther_CL = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    Edit2: TEdit;
    EDIT1: TEdit;
    Edit3: TEdit;
    DS1: TDataSource;
    Query1: TQuery;
    Query1cldh: TStringField;
    Query1cllb: TStringField;
    Query1ywpm: TStringField;
    Query1dwbh: TStringField;
    Edit4: TEdit;
    Button2: TButton;
    QueryBJ: TQuery;
    DBGridEh1: TDBGridEh;
    procedure EDIT1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure Edit4KeyPress(Sender: TObject; var Key: Char);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
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
  PurOther_CL: TPurOther_CL;

implementation

uses main1,PurOther1, MaterialNew1;

{$R *.dfm}

procedure TPurOther_CL.EDIT1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
  edit2.SetFocus;
end;

procedure TPurOther_CL.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
  edit3.SetFocus;
end;

procedure TPurOther_CL.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
  edit4.SetFocus;
end;

procedure TPurOther_CL.Edit4KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
  button1Click(nil);
end;

procedure TPurOther_CL.Button1Click(Sender: TObject);
begin
  with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select top 100 CLDH,CLLB,YWPM,DWBH from CLZL where CLDH like');
    sql.add(''''+edit1.Text+'%'+'''');
    sql.add('and YWPM like ');
    sql.add(''''+'%'+edit2.Text+'%'+'''');
    sql.add('and YWPM like ');
    sql.add(''''+'%'+edit3.Text+'%'+''''); 
    sql.add('and YWPM like ');
    sql.add(''''+'%'+edit4.Text+'%'+'''');
    //sql.add('and (TYJH is null or TYJH='+''''+'N'+''''+')');   
    sql.add('and YN<>'+''''+'2'+'''');
    sql.add('order by CLDH');
    active:=true;
  end;
end;

procedure TPurOther_CL.Button2Click(Sender: TObject);
begin
  MaterialNew:=TMaterialNew.create(self);
  MaterialNew.show;
  close;
end;

procedure TPurOther_CL.FormDestroy(Sender: TObject);
begin
  PurOther_CL:=nil;
end;

procedure TPurOther_CL.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  query1.active:=false;
  Action:=CaFree;
end;

procedure TPurOther_CL.DBGridEh1DblClick(Sender: TObject);
begin
  if (not query1.Active) then
  begin
    abort;
  end;
  if (Query1.recordcount<1) then
  begin
    abort;
  end;
  with PurOther.CGDet do
  begin
    fieldbyname('CLBH').value:=query1.fieldbyname('CLDH').value;
    fieldbyname('YWPM').value:=query1.fieldbyname('YWPM').value;
    fieldbyname('DWBH').value:=query1.fieldbyname('DWBH').value;
    fieldbyname('XqQty').value:=0;
    //20150505 報價Price帶入
    QueryBJ.Active:=false;
    QueryBJ.SQL.Clear;
    QueryBJ.SQL.Add('Select  top 1 CGBJS.BJNO,CGBJS.CLBH,CGBJS.USPrice,CGBJS.VNPrice,CGBJS.USERDate from CGBJS ');
    QueryBJ.SQL.Add('left join CGBJ on CGBJ.BJNO=CGBJS.BJNO ');
    QueryBJ.SQL.Add('where CGBJ.GSBH='''+main.Edit2.Text+'''  and CLBH='''+PurOther.CGDet.fieldbyname('CLBH').AsString+''' and CGBJ.ZSBH='''+PurOther.CGMas.FieldByName('ZSBH').AsString +''' ');
    QueryBJ.SQL.Add('order by CGBJS.BJNO desc,CGBJS.CLBH ');
    QueryBJ.Active:=true;
    if QueryBJ.RecordCount>0 then
    begin
      fieldbyname('BJNO').value:=QueryBJ.Fieldbyname('BJNO').value;
      fieldbyname('USPrice').value:=QueryBJ.Fieldbyname('USPrice').value;
      fieldbyname('VNPrice').value:=QueryBJ.Fieldbyname('VNPrice').value;
    end;
    QueryBJ.Active:=false;
    //
    insert;
  end;
  showmessage('Succeed');
end;

procedure TPurOther_CL.DBGridEh1KeyPress(Sender: TObject; var Key: Char);
begin
   if key=#13 then
   DBGridEh1DblClick(nil);
end;

procedure TPurOther_CL.FormShow(Sender: TObject);
begin
  main.FormLanguage(Pointer(self),self.Name);
end;

end.
