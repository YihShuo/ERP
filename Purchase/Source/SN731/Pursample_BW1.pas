unit Pursample_BW1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls, GridsEh,
  DBGridEh;

type
  TPursample_BW = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    DS1: TDataSource;
    Query1: TQuery;
    Label3: TLabel;
    Edit3: TEdit;
    Label4: TLabel;
    Edit4: TEdit;
    dbgrdh1: TDBGridEh;
    strngfldQuery1article: TStringField;
    strngfldQuery1xieming: TStringField;
    strngfldQuery1bwbh: TStringField;
    strngfldQuery1ywsm: TStringField;
    fltfldQuery1clsl: TFloatField;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Pursample_BW: TPursample_BW;

implementation

uses PurSample1;

{$R *.dfm}
Function GetSeasonString(before:string):string;
begin
  if Pos('''''',before)<=0 then
    if Pos('''',before)>0 then
       result:=StringReplace(before, '''', '''''',[rfReplaceAll, rfIgnoreCase])
    else
       result:=before
  else
    result:=before;
end;
procedure TPursample_BW.FormCreate(Sender: TObject);
begin
edit1.Text := PurSample.CGMas.fieldbyname('SEASON').value;
edit3.Text := PurSample.CGMas.fieldbyname('PURPOSE').value;
edit2.Text := PurSample.CGDet.fieldbyname('CLBH').value;
edit4.Text := PurSample.CGDet.fieldbyname('YWPM').value;
with query1 do
  begin
    active:=false;
    sql.clear;
    sql.Add('select kfxxzl.article,kfxxzl.xieming,ypzls.bwbh,bwzl.ywsm,ypzls.clsl from ypzls');
    sql.add(' left join bwzl on bwzl.bwdh=ypzls.bwbh');
    sql.add(' left join ypzl on ypzl.ypdh=ypzls.ypdh');
    sql.add(' left join kfxxzl on kfxxzl.xiexing=ypzl.xiexing and kfxxzl.shehao=ypzl.shehao');
    sql.add(' where kfxxzl.JiJie = '''+GetSeasonString(edit1.Text)+'''');
    sql.add(' and ypzl.KFJD = '''+edit3.Text+'''');
    sql.add(' and ypzls.CLBH = '''+edit2.Text+'''');
    sql.add('order by kfxxzl.article');
    active:=true;
  end;
end;

procedure TPursample_BW.FormDestroy(Sender: TObject);
begin
PurSample_BW:=nil;
end;

procedure TPursample_BW.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=cafree;
end;

end.
