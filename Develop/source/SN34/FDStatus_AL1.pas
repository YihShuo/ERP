unit FDStatus_AL1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls, GridsEh,
  DBGridEh;

type
  TFDStatus_AL = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    DS1: TDataSource;
    Label3: TLabel;
    Edit3: TEdit;
    Label4: TLabel;
    Edit4: TEdit;
    dbgrdh1: TDBGridEh;
    Query1: TQuery;
    strngfldQuery1article: TStringField;
    dtmfldQuery1cgdate: TDateTimeField;
    dtmfldQuery1yqdate: TDateTimeField;
    strngfldQuery1FD: TStringField;
    Button1: TButton;
    Query1PurQty: TCurrencyField;
    Label5: TLabel;
    Edit5: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FDStatus_AL: TFDStatus_AL;

implementation

uses FDStatus1,FunUnit;

{$R *.dfm}

procedure TFDStatus_AL.FormCreate(Sender: TObject);
begin
//edit1.Text := FDStatus.qry3.fieldbyname('jijie').value;
//edit3.Text := FDStatus.qry3.fieldbyname('kfjd').value;
//edit2.Text := FDStatus.qry3.fieldbyname('CLBH').value;
//edit4.Text := FDStatus.qry3.fieldbyname('YWPM').value;
end;

procedure TFDStatus_AL.FormDestroy(Sender: TObject);
begin
FDStatus_AL:=nil;
end;

procedure TFDStatus_AL.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=cafree;
end;

procedure TFDStatus_AL.Button1Click(Sender: TObject);
begin
with query1 do
  begin
    active:=false;
    sql.clear;
    sql.Add(' select * from (select kfxxzl.FD,ypzl.article,cg.PurQty,cg.cgdate,cg.yqdate from ypzls ');
    sql.add('                left join ypzl on ypzl.ypdh=ypzls.ypdh');
    sql.add('                left join kfxxzl on kfxxzl.xiexing=ypzl.xiexing and kfxxzl.shehao=ypzl.shehao');
    sql.add('                left join (select cs.zlbh,sum(cs.Qty) as PurQty, min(cgzl.cgdate)as cgdate, min(cgzls.CFMDate) as yqdate from cgzlss cs');
    sql.add('                           left join cgzl on cgzl.cgno=cs.cgno');
    sql.add('                           left join cgzls on cgzls.cgno=cs.cgno and cgzls.clbh=cs.clbh');
//    sql.add('                           left join kcrk on kcrk.zsno=cs.cgno');
    sql.Add('                           left join kfxxzl on kfxxzl.article=cs.zlbh');
    sql.add('                           where 1=1');
    if edit1.Text<>'' then
      sql.add('                         and kfxxzl.jijie='''+edit1.Text+''' ');
    sql.add('                           and cs.stage='''+edit3.Text+''' and cs.clbh='''+edit2.Text+''' ');
    sql.add('                           group by cs.zlbh ');
    sql.add('                          ) cg on cg.zlbh=ypzl.article');
    sql.add('                where 1=1 ');
    if edit1.Text<>'' then
       sql.add('                and kfxxzl.JiJie = '''+edit1.Text+'''');
    if edit3.Text<>'' then
       sql.add('                and ypzl.KFJD = '''+edit3.Text+'''');
    sql.add('                and ypzls.CLBH = '''+edit2.Text+'''');
    sql.Add('                union all');
    sql.Add('                select kfxxzl.FD,ypzl.article,cg.PurQty,cg.cgdate,cg.yqdate from ypzls ');
    sql.Add('                INNER  JOIN CLZHZL   ON YPZLS.CLBH = CLZHZL.cldh');
    sql.add('                left join ypzl on ypzl.ypdh=ypzls.ypdh');
    sql.add('                left join kfxxzl on kfxxzl.xiexing=ypzl.xiexing and kfxxzl.shehao=ypzl.shehao');
    sql.add('                left join (select cs.zlbh,sum(cs.Qty) as PurQty, min(cgzl.cgdate)as cgdate, min(cgzls.CFMDate) as yqdate from cgzlss cs');
    sql.add('                           left join cgzl on cgzl.cgno=cs.cgno');
    sql.add('                           left join cgzls on cgzls.cgno=cs.cgno and cgzls.clbh=cs.clbh');
//    sql.add('                           left join kcrk on kcrk.zsno=cs.cgno');
    sql.Add('                           left join kfxxzl on kfxxzl.article=cs.zlbh');
    sql.add('                           where 1=1');
    if edit1.Text<>'' then
      sql.add('                         and kfxxzl.jijie='''+edit1.Text+''' ');
    sql.add('                           and cs.stage='''+edit3.Text+''' and cs.clbh='''+edit2.Text+''' ');
    sql.add('                           group by cs.zlbh ');
    sql.add('                          ) cg on cg.zlbh=ypzl.article');
    sql.add('                where 1=1 ');
    if edit1.Text<>'' then
       sql.add('                and kfxxzl.JiJie = '''+edit1.Text+'''');
    if edit3.Text<>'' then
       sql.add('                and ypzl.KFJD = '''+edit3.Text+'''');
    sql.add('                and CLZHZL.cldh1 = '''+edit2.Text+'''');
    sql.add('               ) GT ');
    sql.Add(' group by FD,article,PurQty,cgdate,yqdate');
    active:=true;
  end;
end;

end.
