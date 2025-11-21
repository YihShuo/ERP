unit Apply_Purchase_Printing_Mold_MatNo1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ExtCtrls;

type
  TApply_Purchase_Printing_Mold_MatNo = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    Button1: TButton;
    Edit2: TEdit;
    EDIT1: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    ConCombo: TComboBox;
    DBGridEh1: TDBGridEh;
    DS1: TDataSource;
    tmpQry: TQuery;
    Query1: TQuery;
    Query1CLDH: TStringField;
    Query1YWPM: TStringField;
    Query1ZWPM: TStringField;
    Query1DWBH: TStringField;
    Query1BJNO: TStringField;
    Query1VNPrice: TCurrencyField;
    Query1USPrice: TFloatField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Apply_Purchase_Printing_Mold_MatNo: TApply_Purchase_Printing_Mold_MatNo;

implementation

uses Apply_Purchase_Printing_Mold1;

{$R *.dfm}

procedure TApply_Purchase_Printing_Mold_MatNo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=CaFree;
end;

procedure TApply_Purchase_Printing_Mold_MatNo.FormCreate(Sender: TObject);
begin
  ConCombo.Items.add('PhomÝÉÀY');
  with tmpQry do
  begin
    Active :=false;
    SQL.Clear;
    SQL.Add('Select distinct Construction from MoldData ');
    Active:=true;
    while not Eof do
    begin
      ConCombo.Items.Add(FieldByName('Construction').AsString);
      Next;
    end;
    Active :=false;
  end;
end;

procedure TApply_Purchase_Printing_Mold_MatNo.FormDestroy(Sender: TObject);
begin
  Apply_Purchase_Printing_Mold_MatNo:=nil;
end;

procedure TApply_Purchase_Printing_Mold_MatNo.DBGridEh1DblClick(
  Sender: TObject);
begin
  if query1.recordcount>0 then
  begin
    with Apply_Purchase_Printing_Mold.SGDet do     
    begin
      Edit;
      FieldByName('CLBH').Value:=query1.fieldbyname('CLDH').Value;
      FieldByName('YWPM').Value:=query1.fieldbyname('YWPM').Value;
      Insert;
    end;
  end;
end;

procedure TApply_Purchase_Printing_Mold_MatNo.Button1Click(
  Sender: TObject);
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
    SQL.Add('	where  CGBJS.CLBH in  (Select CLBH from LastDatas union all Select CLBH from MoldData) ');
    SQL.Add('	) CGBJ where rn=1 ) CGBJ on CGBJ.CLBH=clzl.cldh');
    SQL.Add('where 1=1 and CLZL.CLDH in  ( ');
    SQL.Add('   Select CLBH from ( ');
    SQL.Add('   Select CLBH from LastDatas ');
    if ConCombo.Text<>'' then
    SQL.Add('   where Construction='''+ConCombo.Text+''' ');
    SQl.Add('   Union all ');
    SQL.Add('   Select CLBH from MoldData ');
    if ConCombo.Text<>'' then
    SQL.Add('   where Construction='''+ConCombo.Text+''' ');
    SQL.Add('   ) MoldData  ');
    SQL.Add(' ) ');
    if Edit1.Text <> '' then
      sql.add('and CLZL.CLDH like  '''+edit1.Text+'%'+'''');
    if Edit2.Text <> '' then
      sql.add('and CLZL.YWPM like ''%'+edit2.Text+'%'+'''');
    if Edit3.Text <> '' then
      sql.add('and CLZL.YWPM like ''%'+edit3.Text+'%'+'''');
    if edit4.Text <> '' then
      sql.add('and CLZL.YWPM like ''%'+edit4.Text+'%'+'''');
    SQL.Add('and (TYJH is null or TYJH=''N'')');
    SQL.Add('and (YN=''2'' or YN=''3'')');
    SQL.Add('order by CLZL.CLDH');
    //FuncObj.WriteErrorLog(sql.Text);
    Active:=true;
  end;
end;

end.
