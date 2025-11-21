unit SKUChoose1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, StdCtrls, ExtCtrls, GridsEh, DBGridEh, Grids;

type
  TSKUChoose = class(TForm)
    pnl1: TPanel;
    lbl1: TLabel;
    ArticleEtd: TEdit;
    lbl2: TLabel;
    SeasonEtd: TEdit;
    lbl3: TLabel;
    ShoeNameEtd: TEdit;
    btn1: TButton;
    DS1: TDataSource;
    qry1: TQuery;
    dbgrdh1: TDBGridEh;
    qry1DevType: TStringField;
    qry1FD: TStringField;
    qry1JiJie: TStringField;
    qry1XieMing: TStringField;
    qry1DEVCODE: TStringField;
    qry1YSSM: TStringField;
    qry1XieXing: TStringField;
    qry1SheHao: TStringField;
    qry1ARTICLE: TStringField;
    procedure btn1Click(Sender: TObject);
    procedure dbgrdh1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SKUChoose: TSKUChoose;

implementation
uses  main1, PMR_Internal1, FunUnit;

{$R *.dfm}

procedure TSKUChoose.btn1Click(Sender: TObject);
begin
  with qry1 do
  begin
    Active := False;
    SQL.Clear;
    SQL.Add('select ARTICLE,XieXing,SheHao,XieMing,YSSM,JiJie,DEVCODE,FD,DevType ');
    SQL.Add('from kfxxzl ');
    SQL.Add('where 1=1');
    if ArticleEtd.text<>'' then
      SQL.Add(' and kfxxzl.ARTICLE like '''+ArticleEtd.Text+'%''');
    if SeasonEtd.text<>'' then
      SQL.Add(' and kfxxzl.JiJie like '''+SeasonEtd.Text+'%''');
    if ShoenameEtd.text<>'' then
      SQL.Add(' and kfxxzl.XieMing like '''+ShoenameEtd.Text+'%''');
    //funcobj.WriteErrorLog(SQL.text);
    Active := True;
  end;
end;

procedure TSKUChoose.dbgrdh1DblClick(Sender: TObject);
begin
  if qry1.recordcount>0 then
  begin
    with PMR_Internal.Q_PMRList do
    begin
      edit;
      fieldbyname('Article').value:=qry1.fieldbyname('ARTICLE').value;
      insert;
    end;
  end;
end;

end.
