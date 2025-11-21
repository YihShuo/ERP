unit DetailInSampleOrderList1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ExtCtrls;

type
  TDetailInSampleOrderList = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Edit1: TEdit;
    ArticleEdit: TEdit;
    Edit3: TEdit;
    Button1: TButton;
    SREdit: TEdit;
    dbgrdh1: TDBGridEh;
    qry1: TQuery;
    qry1Article: TStringField;
    qry1JiJie: TStringField;
    qry1FD: TStringField;
    qry1KFJD: TStringField;
    qry1YPCC: TStringField;
    qry1SR: TStringField;
    DS1: TDataSource;
    qry1YPDH: TStringField;
    procedure Button1Click(Sender: TObject);
    procedure dbgrdh1DblClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DetailInSampleOrderList: TDetailInSampleOrderList;

implementation
  uses DetailInSampleOrder1, main1;
{$R *.dfm}

procedure TDetailInSampleOrderList.Button1Click(Sender: TObject);
begin
  with qry1 do
  begin
    active:=false;
    Sql.clear;
    sql.add('select KFXXZL.Article,KFXXZL.DEVCODE as SR#,KFXXZL.JiJie,KFXXZL.FD,ypzl.KFJD,ypzl.YPCC,ypzl.YPDH from ypzl  ');
    sql.add('left join KFXXZL on KFXXZL.XieXing=ypzl.XieXing and KFXXZL.SheHao=ypzl.SheHao ');
    sql.add(' where 1=1 ');
    if Edit1.text<>'' then
       sql.add(' and KFXXZL.JiJie='+''''+Edit1.text+'''');
    if ArticleEdit.text<>'' then
       sql.add(' and KFXXZL.ARTICLE like '+'''%'+ArticleEdit.text+'%''');
    if SREdit.text<>'' then
       sql.add(' and KFXXZL.DEVCODE like '+'''%'+SREdit.text+'%''');
    if Edit3.text<>'' then
       sql.add(' and ypzl.KFJD='+''''+Edit3.text+'''');
    active:=true;
  end
end;

procedure TDetailInSampleOrderList.dbgrdh1DblClick(Sender: TObject);
begin
  //
  if (not qry1.Active) then
  begin
    abort;
  end;
  if (qry1.recordcount<1) then
  begin
    abort;
  end;
  //
  DetailInSampleOrder.RYEdit.Text:=qry1.FieldByName('YPDH').AsString;
end;

procedure TDetailInSampleOrderList.FormDestroy(Sender: TObject);
begin
  DetailInSampleOrderList:=nil;
end;

procedure TDetailInSampleOrderList.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TDetailInSampleOrderList.FormShow(Sender: TObject);
begin
  main.FormLanguage(Pointer(self),self.Name);
end;

end.
