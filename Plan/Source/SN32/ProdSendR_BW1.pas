unit ProdSendR_BW1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ExtCtrls;

type
  TProdSendR_BW = class(TForm)
    Panel1: TPanel;
    Edit3: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    Edit4: TEdit;
    Label5: TLabel;
    Edit5: TEdit;
    Button1: TButton;
    DBGridEh1: TDBGridEh;
    Query1: TQuery;
    DataSource1: TDataSource;
    Query1BWBH: TStringField;
    Query1YWSM: TStringField;
    Query1CLBH: TStringField;
    Query1YWPM: TStringField;
    Query1DWBH: TStringField;
    Edit1: TEdit;
    Edit2: TEdit;
    Query1CCQQ: TStringField;
    Query1CCQZ: TStringField;
    Query1BZ: TStringField;
    Query1clsl: TFloatField;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure DBGridEh1KeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ProdSendR_BW: TProdSendR_BW;

implementation

uses ProdSendR1,FunUnit, main1;

{$R *.dfm}

procedure TProdSendR_BW.FormDestroy(Sender: TObject);
begin
ProdSendR_BW:=nil;
end;

procedure TProdSendR_BW.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=cafree;
end;

procedure TProdSendR_BW.Button1Click(Sender: TObject);
begin
with query1 do
  begin
    active:=false;
    sql.Clear;
    //2013/05/21更改由用量表取得派工材料
    sql.add('select zlzlS2.BWBH,BWZL.YWSM,zlzlS2.CLBH,CLZL.YWPM,CLZL.DWBH,sum(zlzls2.clsl) AS clsl,');
    sql.Add('       Case when DXXZLS.DDBH is null then XXZLS.CCQQ else DXXZLS.CCQQ end as CCQQ,');
    sql.Add('       Case when DXXZLS.DDBH is null then XXZLS.CCQZ else DXXZLS.CCQZ end as CCQZ,CLBZZL.BZ  ');
    sql.add('from zlzlS2');
    sql.add('left join BWZL on BWZL.BWDH=zlzls2.BWBH');
    sql.add('left join CLZL on CLZL.CLDH=zlzls2.CLBH');
    sql.Add('left join DDZL on DDZL.DDBH=ZLZLS2.ZLBH');
    sql.Add('left join XXZLS on XXZLS.XieXing=DDZL.XieXing and DDZL.SheHao=XXZLS.SheHao and ZLZLS2.BWBH=XXZLS.BWBH ');
    sql.Add('left join DDZL_XXZLS as DXXZLS on DDZL.XIEXING = DXXZLS.XIEXING and DDZL.SHEHAO = DXXZLS.SHEHAO and ZLZLS2.BWBH = DXXZLS.BWBH and DXXZLS.DDBH='+ ''''+edit1.Text+'''');
    sql.Add('left join CLBZZL on zlzls2.CLBH = CLBZZL.CLDH and zybb=''E'' ');
    sql.add('where zlzlS2.zlbh = '+ ''''+edit1.Text+'''');
    sql.Add('      and zlzls2.mjbh='+ ''''+'ZZZZZZZZZZ'+'''');
    sql.add('      and zlzlS2.CLBH like '+''''+edit5.Text+'%'+'''');
    sql.add('      and zlzlS2.BWBH like '+ ''''+'%'+edit4.Text+'%'+'''');
    sql.add('group by zlzlS2.BWBH,BWZL.YWSM,zlzlS2.CLBH,CLZL.YWPM,CLZL.DWBH,XXZLS.CCQQ,XXZLS.CCQZ,DXXZLS.DDBH,DXXZLS.CCQQ,DXXZLS.CCQZ,CLBZZL.BZ   ');
    sql.add('order by zlzlS2.BWBH');
    active:=true;
  end;
end;

procedure TProdSendR_BW.DBGridEh1DblClick(Sender: TObject);
var i:integer;
    isFind:boolean;
begin
  if query1.recordcount>0 then
  begin
      if ((query1.fieldbyname('CCQQ').AsString<>'') and (query1.fieldbyname('CCQZ').AsString<>'')) then
      begin
        isFind:=false;
        for i:=9 to ProdSendR.SMDDS.fieldcount-2 do
        begin
          if ((ProdSendR.SMDDS.Fields[i].FieldName>=query1.fieldbyname('CCQQ').AsString) and (ProdSendR.SMDDS.Fields[i].FieldName<=query1.fieldbyname('CCQZ').AsString)) then
          begin
            isFind:=true;
            break;
          end;
        end;
      end else
      begin
        isFind:=true;
      end;
      //Size not at Range
      if isFind=false then
      begin
        showmessage('Size Range not at Order Size Run');
        exit;
      end;
      with ProdSendR.BWZL do
      begin
        if not locate('BWBH;CLBH',vararrayof([query1.fieldbyname('BWBH').value,query1.fieldbyname('CLBH').value]),[]) then
          begin
            insert;
            fieldbyname('BWBH').value:=query1.fieldbyname('BWBH').value;
            fieldbyname('YWSM').value:=query1.fieldbyname('YWSM').value;
            fieldbyname('CLBH').value:=query1.fieldbyname('CLBH').value;
            fieldbyname('YWPM').value:=query1.fieldbyname('YWPM').value;
            fieldbyname('DWBH').value:=query1.fieldbyname('DWBH').value;
            fieldbyname('CCQQ').value:=query1.fieldbyname('CCQQ').value;
            fieldbyname('CCQZ').value:=query1.fieldbyname('CCQZ').value;
            fieldbyname('clsl').value:=query1.fieldbyname('clsl').value;
            fieldbyname('BZ').value:=query1.fieldbyname('BZ').value;
            fieldbyname('YN').value:=0;
            post;
            showmessage('Succeed.');
          end
          else
            showmessage('Alread have.');
      end;
  end;

end;

procedure TProdSendR_BW.DBGridEh1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
  dbgrideh1dblclick(nil);
end;

procedure TProdSendR_BW.FormShow(Sender: TObject);
begin
  main.FormLanguage(Pointer(self),self.Name);
end;

end.
