unit FDStatus_PO1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls, GridsEh,
  DBGridEh;

type
  TFDStatus_PO = class(TForm)
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
    Button1: TButton;
    Label5: TLabel;
    Edit5: TEdit;
    Query1season: TStringField;
    Query1STAGE: TStringField;
    Query1ARTICLE: TStringField;
    Query1FD: TStringField;
    Query1Qty: TCurrencyField;
    Query1cgdate: TDateTimeField;
    Query1yqdate: TDateTimeField;
    Query1rkdate: TDateTimeField;
    Label6: TLabel;
    Edit6: TEdit;
    Label7: TLabel;
    Edit7: TEdit;
    Query1CGNO: TStringField;
    Query1ETA: TDateTimeField;
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
  FDStatus_PO: TFDStatus_PO;

implementation

uses FDStatus1;

{$R *.dfm}

procedure TFDStatus_PO.FormCreate(Sender: TObject);
begin
//edit1.Text := FDStatus.qry3.fieldbyname('jijie').value;
//edit3.Text := FDStatus.qry3.fieldbyname('kfjd').value;
//edit2.Text := FDStatus.qry3.fieldbyname('CLBH').value;
//edit4.Text := FDStatus.qry3.fieldbyname('YWPM').value;
end;

procedure TFDStatus_PO.FormDestroy(Sender: TObject);
begin
FDStatus_PO:=nil;
end;

procedure TFDStatus_PO.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=cafree;
end;

procedure TFDStatus_PO.Button1Click(Sender: TObject);
begin
with query1 do
  begin
    active:=false;
    sql.clear;
    sql.Add(' select CS.CGNO,cgzl.season,CS.STAGE,CS.ZLBH AS ARTICLE,xxzlkf.FD,CS.Qty,cgzl.cgdate,CS.CFMdate as yqdate,kcrk.Userdate as rkdate ,cgzls.ETA');
    sql.Add('        from cgzlss CS');
    sql.add('        left join cgzl on cgzl.cgno=cs.cgno');
    sql.add('        left join cgzls on cgzls.cgno=cs.cgno and cgzls.clbh=cs.clbh');
    sql.Add('        left join (SELECT kcrks.clbh,kcrk.zsno,min(KCRK.Userdate) as Userdate FROM kcrk,KCRKS WHERE kcrk.RKNO=KCRKS.RKNO group by kcrk.zsno,KCRKS.CLBH) kcrk on kcrk.zsno=cs.cgno and kcrk.clbh=cs.clbh ');
    sql.add('        left join kfxxzl on KFxxzl.ARTICLE=CS.ZLBH  ');
    sql.add('        left join xxzlkf on kfxxzl.xiexing=xxzlkf.xiexing and kfxxzl.shehao=xxzlkf.shehao ');
    sql.add('        where 1=1  ');
    if  length(edit3.Text) > 0 then
       sql.add('              and cs.stage='''+edit3.Text+'''');
    sql.add('              and cs.clbh='''+edit2.Text+'''');
    if edit1.Text<>'' then
       sql.add('              AND kfxxzl.JiJie= '''+edit1.Text+'''');
    if edit6.Text<>'' then
       sql.add('              AND xxzlKF.FD= '''+edit6.Text+'''');
    sql.add('              AND CS.ZLBH= '''+edit7.Text+'''');
    active:=true;
  end;
end;

end.
