unit ApplyTotalMatNo1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ExtCtrls;

type
  TApplyTotalMatNo = class(TForm)
    DBGridEh1: TDBGridEh;
    Query1: TQuery;
    DS1: TDataSource;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    Edit2: TEdit;
    EDIT1: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Query1CLDH: TStringField;
    Query1YWPM: TStringField;
    Query1ZWPM: TStringField;
    Query1DWBH: TStringField;
    Query1BJNO: TStringField;
    Query1VNPrice: TCurrencyField;
    Query1USPrice: TFloatField;
    Splitter1: TSplitter;
    DBGridEh2: TDBGridEh;
    Query2: TQuery;
    Query2CKBH: TStringField;
    Query2CLBH: TStringField;
    Query2DepID: TStringField;
    Query2Qty: TFloatField;
    Query2DepName: TStringField;
    Query2DepMemo: TStringField;
    DS2: TDataSource;
    procedure Button1Click(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ApplyTotalMatNo: TApplyTotalMatNo;

implementation

uses ApplyTotal1, FunUnit;

{$R *.dfm}


procedure TApplyTotalMatNo.Button1Click(Sender: TObject);
begin
  with query1 do
  begin
    active:=false;
    sql.Clear;              
    //
    SQL.Add('select CLZL.CLDH,CLZL.YWPM,CLZL.ZWPM,CLZL.DWBH,CGBJ.BJNO,CGBJ.VNPrice,CGBJ.USPrice ');
    SQL.Add('from clzl  ');
    SQL.Add('Left join (');
    SQL.Add('    Select *  from (select CGBJ.BJNO,CGBJ.ZSBH,CGBJS.CLBH,CGBJS.USPrice,CGBJS.VNPrice ,CGBJS.Discount, CGBJS.SuppEx,CGBJ.EXPDATE,');
    SQL.Add('	     ROW_NUMBER() over (PARTITION BY CGBJS.CLBH ORDER BY CGBJ.BJNO DESC) as  rn');
    SQL.Add('	from CGBJ');
    SQL.Add('	Left join CGBJS on CGBJ.BJNO=CGBJS.BJNO');
    SQL.Add('	Left join CLZL on CLZL.CLDH=CGBJS.CLBH');
    SQL.Add('	where LEFT(CLBH,1) IN (''W'',''X'',''Y'',''Z'') and (ISNULL(CGBJS.USPrice,0) > 0 or ISNULL(CGBJS.VNPrice,0) > 0)');
    SQL.Add('	) CGBJ where rn=1 ) CGBJ on CGBJ.CLBH=clzl.cldh');
    SQL.Add('where 1=1 and ( (LEFT(CLDH,1) IN (''W'',''X'',''Y'',''Z'')) or (CLDH IN (Select CLBH from LastDatas)))');
    if edit1.Text <> '' then
      sql.add('and CLZL.CLDH like  '''+edit1.Text+'%'+'''');
    if edit2.Text <> '' then
      sql.add('and CLZL.YWPM like ''%'+edit2.Text+'%'+'''');
    if edit3.Text <> '' then
      sql.add('and CLZL.YWPM like ''%'+edit3.Text+'%'+'''');
    if edit4.Text <> '' then
      sql.add('and CLZL.YWPM like ''%'+edit4.Text+'%'+'''');
    SQL.Add('and (TYJH is null or TYJH=''N'')');
    SQL.Add('and (YN=''2'' or YN=''3'')');
    //20230220  機器零件分類
{    if ApplyTotal.SGMas.FieldByName('LB').AsString='04' then //機器零件  不包含IT電腦設備
    begin
      SQL.Add('and CLDH in (Select CLBH from  MaterialReviewList_TPM) ');
      //SQL.Add('and (LEFT(CLDH,4) not  in (''Z207'') and  LEFT(CLDH,1) IN (''Z''))' );
    end else    //不是機器零件
    begin
      SQL.Add('and CLDH not in (Select CLBH from  MaterialReviewList_TPM) '); 
      //SQL.Add('and (LEFT(CLDH,4) in (''Z207'') or  LEFT(CLDH,1) IN (''W'',''X'',''Y''))' );
    end;  }
    SQL.Add('order by CLZL.CLDH');
    //FuncObj.WriteErrorLog(sql.Text);
    Active:=true;
  end;
  Query2.Active:=true;
end;

procedure TApplyTotalMatNo.DBGridEh1DblClick(Sender: TObject);
begin
  if query1.recordcount>0 then
  begin
    with ApplyTotal.SGDet do
    begin
      Edit;
      FieldByName('CLBH').Value:=query1.fieldbyname('CLDH').Value;
      FieldByName('YWPM').Value:=query1.fieldbyname('YWPM').Value;
      FieldByName('VNPrice').Value:=query1.fieldbyname('VNPrice').Value;
      FieldByName('USPrice').Value:=query1.fieldbyname('USPrice').Value;
      FieldByName('BJNO').Value:=query1.fieldbyname('BJNO').Value;
      Insert;
    end;
  end;
end;

procedure TApplyTotalMatNo.FormDestroy(Sender: TObject);
begin
  ApplyTotalMatNo:=nil;
end;

procedure TApplyTotalMatNo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=CaFree;
end;

end.
