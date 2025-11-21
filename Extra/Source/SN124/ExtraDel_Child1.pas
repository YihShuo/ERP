unit ExtraDel_Child1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GridsEh, DBGridEh, StdCtrls, ExtCtrls, DB, DBTables, Mask,
  DBCtrls;

type
  TExtraDel_Child = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Button1: TButton;
    DBGridEh1: TDBGridEh;
    DS1: TDataSource;
    Query1: TQuery;
    DBEdit2: TDBEdit;
    Query1CLBH: TStringField;
    Query1DFL: TStringField;
    Query1SCBH: TStringField;
    Query1TempQty: TFloatField;
    Query1Qty: TFloatField;
    Query1Memo: TStringField;
    Query1UserDate: TDateTimeField;
    Query1UserID: TStringField;
    Query1YN: TIntegerField;
    Query1CLSL: TFloatField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ExtraDel_Child: TExtraDel_Child;

implementation

uses ExtraDel1, main1;

{$R *.dfm}

procedure TExtraDel_Child.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   action:=cafree;
end;

procedure TExtraDel_Child.FormDestroy(Sender: TObject);
begin
  ExtraDel_Child:=nil;
end;

procedure TExtraDel_Child.Button1Click(Sender: TObject);
begin
  with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.Add('select JGZLS.*,ZLZLS2.CLSL from (');
    sql.Add('select CLBH, DFL,ZLBH as SCBH,Qty as TempQty,Qty,Memo,GetDate() as UserDate,''33101'' as UserID,1 as YN');
    sql.Add('from (select JGZLS.JGNO as LLNO,JGZLM.ZLBH,JGZLS.ZMLB as CLBH,JGZLM.CLBH as DFL,round(convert(float,JGZLS.Qty)*convert(float,JGZLM.Qty),2) as Qty,JGZLM.Memo');
    sql.Add('      from JGZLS left join (select JGZLSS.ZLBH,JGZLS.JGNO,JGZLS.CLBH,JGZLSS.Qty,JGZLS.Memo');
    sql.Add('                            from JGZLS left join JGZL on JGZL.JGNO=JGZLS.JGNO');
    sql.Add('                            left join JGZLSS on JGZLSS.CLBH=JGZLS.CLBH and JGZLSS.JGNO=JGZLS.JGNO');
    sql.Add('                            where JGZLS.ZMLB=''ZZZZZZZZZZ'' and JGZL.JGNO='''+DBEdit2.Text+'''');
    sql.Add('                            )JGZLM on JGZLM.JGNO=JGZLS.JGNO and JGZLM.CLBH=JGZLS.CLBH');
    sql.Add('     where JGZLS.JGNO='''+DBEdit2.Text+'''');
    sql.Add('     and JGZLS.ZMLB<>''ZZZZZZZZZZ''  )   JGZLS ) JGZLS');
    sql.Add('Left join (');
    sql.Add('     select ZLZLS2.ZLBH,ZLZLS2.MJBH,ZLZLS2.CLBH,Sum(ZLZLS2.CLSL) as CLSL from  ZLZLS2');
    sql.Add('     inner join (');
    sql.Add('     select JGZLM.ZLBH,JGZLS.ZMLB as CLBH,JGZLM.CLBH as MJBH');
    sql.Add('     from JGZLS');
    sql.Add('     inner join (select JGZLSS.ZLBH,JGZLS.JGNO,JGZLS.CLBH,JGZLSS.Qty,JGZLS.Memo');
    sql.Add('                 from JGZLS left join JGZL on JGZL.JGNO=JGZLS.JGNO');
    sql.Add('                 left join JGZLSS on JGZLSS.CLBH=JGZLS.CLBH and JGZLSS.JGNO=JGZLS.JGNO');
    sql.Add('                 where JGZLS.ZMLB=''ZZZZZZZZZZ'' and JGZL.JGNO='''+DBEdit2.Text+'''');
    sql.Add('                 )JGZLM on JGZLM.JGNO=JGZLS.JGNO and JGZLM.CLBH=JGZLS.CLBH');
    sql.Add('     where JGZLS.JGNO='''+DBEdit2.Text+'''');
    sql.Add('     and JGZLS.ZMLB<>''ZZZZZZZZZZ''  )  JGZLS on ZLZLS2.ZLBH=JGZLS.ZLBH and ZLZLS2.CLBH=JGZLS.CLBH and ZLZLS2.MJBH=JGZLS.MJBH');
    sql.Add('     Group by ZLZLS2.ZLBH,ZLZLS2.MJBH,ZLZLS2.CLBH ) ZLZLS2 on ZLZLS2.ZLBH=JGZLS.SCBH and ZLZLS2.CLBH=JGZLS.CLBH and ZLZLS2.MJBH=JGZLS.DFL');
    active:=true;
  end;
end;

procedure TExtraDel_Child.DBGridEh1DblClick(Sender: TObject);
begin
  if (not query1.Active) then
  begin
    abort;
  end;
  if (Query1.recordcount<1) then
  begin
    abort;
  end;
  with ExtraDel.DelDet do
  begin
    edit;
    fieldbyname('CLBH').value:=query1.fieldbyname('CLBH').value;
    fieldbyname('TempQty').value:=query1.fieldbyname('Qty').value;
    fieldbyname('SCBH').value:=query1.fieldbyname('SCBH').value;
    fieldbyname('CLSL').value:=query1.fieldbyname('CLSL').value;
    fieldbyname('DFL').value:=query1.fieldbyname('DFL').value;
    fieldbyname('MeMo').value:=query1.fieldbyname('MeMo').value;
    insert;
  end;
end;

procedure TExtraDel_Child.FormShow(Sender: TObject);
begin
  main.FormLanguage(Pointer(self),self.Name);
end;

end.
