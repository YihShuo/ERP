unit Pur_Choice1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GridsEh, DBGridEh, DB, DBTables, StdCtrls, ExtCtrls;

type
  TPur_Choice = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    XieXingEdit: TEdit;
    Button1: TButton;
    DS1: TDataSource;
    ArticleQry: TQuery;
    DBGridEh1: TDBGridEh;
    Query1: TQuery;
    ArticleQryCGNO: TStringField;
    ArticleQryCLBH: TStringField;
    ArticleQryQTY: TCurrencyField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Pur_Choice: TPur_Choice;

implementation
uses PurRevise1, FunUnit;
{$R *.dfm}

procedure TPur_Choice.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TPur_Choice.FormDestroy(Sender: TObject);
begin
  Pur_Choice:=nil;
end;

procedure TPur_Choice.Button1Click(Sender: TObject);
begin
  if XieXingEdit.Text = '' then begin
    showmessage('Please Keyin PO NO First!');
    exit;
  end;
  with ArticleQry do
  begin
    Active:=false;
    SQL.clear;
    SQL.Add('select CGNO,CLBH,QTY from CGZLS ');
    SQL.Add('where CGNO like '''+XieXingEdit.Text+'%'' ');
    //funcObj.WriteErrorLog(sql.Text);
    active:=true;
  end;
end;

procedure TPur_Choice.DBGridEh1DblClick(Sender: TObject);
begin
    PurRevise.QColor.Edit;
    PurRevise.QColor.FieldByName('CGNO').Value:=ArticleQry.FieldByName('CGNO').Value;
    PurRevise.QColor.FieldByName('CLBH').Value:=ArticleQry.FieldByName('CLBH').Value;
    PurRevise.QColor.FieldByName('Before_Qty').Value:=ArticleQry.FieldByName('QTY').Value;
    PurRevise.QColor.Post;
    Close;
end;



end.
