unit PayableLit_Check1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, DB, DBTables, StdCtrls, ComCtrls, ExtCtrls, Grids,
  DBGrids,dateutils, GridsEh, DBGridEh;

type
  TPayableLit_Check = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    DS1: TDataSource;
    Query1: TQuery;
    Query1ZSBH: TStringField;
    Query1DJLX: TStringField;
    Query1DJNO: TStringField;
    Query1CGBH: TStringField;
    Query1CLBH: TStringField;
    Query1YWPM: TStringField;
    Query1DWBH: TStringField;
    Query1Qty: TCurrencyField;
    Query1USPrice: TCurrencyField;
    Query1USACC: TCurrencyField;
    Query1DJDATE: TDateTimeField;
    Query1CostID: TStringField;
    Query1FKZT: TStringField;
    Query1FKBH: TStringField;
    Edit2: TEdit;
    CheckBox1: TCheckBox;
    DBGridEh1: TDBGridEh;
    Query1CWHL: TCurrencyField;
    Query1VNPrice: TCurrencyField;
    Query1VNACC: TCurrencyField;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PayableLit_Check: TPayableLit_Check;

implementation

uses PayableLit1, main1;

{$R *.dfm}

procedure TPayableLit_Check.FormCreate(Sender: TObject);
begin
  edit1.Text:=PayableLit.PayMas.fieldbyname('ZSBH').Value;
  DTP1.Date:=startofthemonth(IncMonth(date,-1));
  DTP2.Date:=endofthemonth(IncMonth(date,-1));
  TCurrencyField(query1.FieldByName('VNPrice')).DisplayFormat:=PayableLit.VNPrice_DiplayFormat;
  TCurrencyField(query1.FieldByName('VNACC')).DisplayFormat:=PayableLit.VNPrice_DiplayFormat;
  TCurrencyField(query1.FieldByName('CWHL')).DisplayFormat:=PayableLit.VNPrice_DiplayFormat;  
end;

procedure TPayableLit_Check.Button1Click(Sender: TObject);
var y,m,d:word;
begin
  with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select KCRKS.*,CWYF.FKBH ');
    sql.Add('from (select JGZL.ZSBH,'+''''+'JG'+''''+' as DJLX,'+''''+'ZZZZZZZZZZ'+''''+' as CGBH,JGZLS.JGNO as DJNO,');
    sql.add('             JGZLS.CLBH,JGZL.CFMDATE1 as DJDATE,JGZLS.Qty,JGZLS.USPrice,JGZLS.USACC,');
    sql.add('             JGZLS.CWHL,JGZLS.VNPrice, JGZLS.VNACC,JGZLS.CostID,JGZLS.FKZT,CLZL.YWPM,CLZL.DWBH');
    sql.add('      from JGZLS');
    sql.add('      left join JGZL on JGZL.JGNO=JGZLS.JGNO');
    sql.add('      left join CLZL on JGZLS.CLBH=CLZL.CLDH');
    sql.add('      left join ZSZL on ZSZL.ZSDH=JGZL.ZSBH ');
    sql.add('      where convert(smalldatetime,convert(varchar,JGZL.CFMDATE1,111)) between ');
    sql.add('            '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
    //sql.add('            and JGZLS.FKZT is null ');
    sql.add('            and JGZL.YN='+''''+'5'+'''');
    sql.add('            and JGZLS.ZMLB='+''''+'ZZZZZZZZZZ'+'''');
    sql.add('            and JGZL.ZSBH like  '+''''+edit1.Text+'%'+'''');
    //sql.add('            and ZSZL.ZSYWJC like '+''''+edit2.Text+'%'+'''');
    sql.add('            and JGZL.GSBH='+''''+main.edit2.Text+'''');
    sql.Add('            and JGZLS.JGNO like '+''''+edit2.Text+'%'+'''');
    if Checkbox1.Checked then
      begin
        sql.add('            and JGZLS.FKZT is null ');
      end;

    sql.add('      union all');
                           
    sql.add('      select KCRK.ZSBH,KCRKS.RKSB as DJLX,KCRKS.CGBH,KCRKS.RKNO as DJNO,');
    sql.add('             KCRKS.CLBH,KCRK.USERDATE as DJDATE,KCRKS.Qty,KCRKS.USPrice,KCRKS.USACC,');
    sql.add('             KCRKS.CWHL,KCRKS.VNPrice,KCRKS.VNACC,KCRKS.CostID,KCRKS.FKZT,CLZL.YWPM,CLZL.DWBH');
    sql.add('      from KCRKS');
    sql.add('      left join KCRK on KCRK.RKNO=KCRKS.RKNO');
    sql.add('      left join CLZL on KCRKS.CLBH=CLZL.CLDH');
    sql.add('      left join ZSZL on ZSZL.ZSDH=KCRK.ZSBH ');
    sql.add('      where convert(smalldatetime,convert(varchar,KCRK.USERDATE,111)) between   ');
    sql.add('            '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
    //sql.add('            and  KCRKS.FKZT is null');
    sql.add('            and KCRK.ZSBH like  '+''''+edit1.Text+'%'+'''');
    //sql.add('            and ZSZL.ZSYWJC like '+''''+edit2.Text+'%'+'''');
    sql.add('            and KCRK.YN='+''''+'5'+'''');
    sql.add('            and KCRK.GSBH='+''''+main.edit2.Text+'''');   
    sql.Add('            and KCRKS.RKNO like '+''''+edit2.Text+'%'+''''); 
    if Checkbox1.Checked then
      begin
        sql.add('            and KCRKS.FKZT is null ');
      end;
    sql.add('            ) KCRKS  ');
    sql.add('left join CWYF on CWYF.DJLX=KCRKS.DJLX and CWYF.CGBH=KCRKS.CGBH and CWYF.DJNO=KCRKS.DJNO and CWYF.CLBH=KCRKS.CLBH ');
    sql.add('order by KCRKS.ZSBH,KCRKS.DJNO,KCRKS.DJLX,KCRKS.CGBH,KCRKS.CLBH');
    active:=true;
  end;

end;

procedure TPayableLit_Check.FormDestroy(Sender: TObject);
begin
  Payablelit_check:=nil;
end;

procedure TPayableLit_Check.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=Cafree;
end;

procedure TPayableLit_Check.DBGridEh1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if query1.FieldByName('FKZT').value='Y' then
  begin
    DBGridEh1.canvas.font.color:=clred;
    DBGridEh1.defaultdrawcolumncell(rect,datacol,column,state);
  end;
end;

procedure TPayableLit_Check.FormShow(Sender: TObject);
begin
  main.FormLanguage(Pointer(self),self.Name);
end;

end.
