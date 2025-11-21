unit DelMaterial_DDZLTR1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, DBTables, StdCtrls, Mask, DBCtrls, ExtCtrls,
  GridsEh, DBGridEh, Buttons;

type
  TDelMaterial_DDZLTR = class(TForm)
    Query1: TQuery;
    Query1CLBH: TStringField;
    Query1YWPM: TStringField;
    Query1DWBH: TStringField;
    Query1USAGE: TFloatField;
    Query1DFL: TStringField;
    Query1CLSL: TFloatField;
    Query1Qty: TCurrencyField;
    Query1OKPerson: TFloatField;
    Query1KCQty: TFloatField;
    UpdateSQL2: TUpdateSQL;
    DataSource1: TDataSource;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    Edit1: TEdit;
    CLBHEdit: TEdit;
    YWPMEdit: TEdit;
    QueryBtn: TButton;
    DFLCombo: TComboBox;
    Splitter1: TSplitter;
    DBGrid1: TDBGridEh;
    Panel2: TPanel;
    DBGrid2: TDBGridEh;
    Query2: TQuery;
    DataSource2: TDataSource;
    Query2ZLBH: TStringField;
    Query2CLBH: TStringField;
    Query2CLSL: TFloatField;
    Query2Qty: TCurrencyField;
    Query2RemQty: TFloatField;
    Query2USAGE: TFloatField;
    Query1MZLBH: TStringField;
    UpdateSQL1: TUpdateSQL;
    Query3: TQuery;
    Query1NK: TCurrencyField;
    Query1TC: TCurrencyField;
    Query1HD: TCurrencyField;
    Query1KD: TCurrencyField;
    Query1GC: TCurrencyField;
    Query1XT: TCurrencyField;
    Query1ZZZZ: TCurrencyField;
    procedure FormCreate(Sender: TObject);
    procedure QueryBtnClick(Sender: TObject);
    procedure DFLComboChange(Sender: TObject);
    procedure DBGrid1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure DBGrid2GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    mQty,nQty:integer;
    { Private declarations }
    procedure SelectDDZLTR();
  public
    { Public declarations }
  end;

var
  DelMaterial_DDZLTR: TDelMaterial_DDZLTR;

implementation
uses DelMaterial1, main1, FunUnit;
{$R *.dfm}

procedure TDelMaterial_DDZLTR.FormCreate(Sender: TObject);
var i:integer;
begin
  with query3 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select distinct DFL from XXBWFLs');
    active:=true;
    for i:=1 to recordcount do
    begin
      DFLCombo.ItemIndex:=-2;
      DFLCombo.Items.Add(fieldbyname('DFL').asstring);
      next;
    end;
  end;
  edit1.Text:=inttostr(DelMaterial.SpecMas.FieldByName('Qty').Value);
  mQty:=DelMaterial.SpecMas.FieldByName('Qty').Value;
  //edit1.SetFocus;
  QueryBtn.Click;
end;

procedure TDelMaterial_DDZLTR.QueryBtnClick(Sender: TObject);
begin
  with Query1 do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('declare @p decimal(18,4)');
    SQL.Add('set @p=(select Delperson from BasData where GSBH='''+main.edit2.text+''')');
    SQL.Add('');
    SQL.Add('select '''+DBEdit1.Text+''' as MZLBH,CLBH,USage,DFL,YWPM,DWBH,LYCC,Article,XieMing,XieXing,SheHao,KCQty,SUM(CLSL) as CLSL,SUM(Qty) as Qty,NK,TC,HD,KD,GC,XT,ZZZZ from ( ');
    SQL.Add('select OrdCL1.ZLBH,OrdCL1.CLBH,sum(OrdCL1.Usage) as Usage,');
    SQL.Add('        round((sum(OrdCL1.CLSL)+0.0499),1) as CLSL,OrdCL1.DFL,OrdCL1.YWPM,OrdCL1.DWBH,OrdCL1.LYCC,');
    SQL.Add('         isnull(KCLLS.Qty,0) as Qty,OrdCL1.Article,OrdCL1.XieMing,OrdCL1.XieXing,OrdCL1.SheHao,KCZLS.KCQty ');
    SQL.Add('         ,KCZLS.NK,KCZLS.TC,KCZLS.HD,KCZLS.KD,KCZLS.GC,KCZLS.XT,KCZLS.ZZZZ');
    SQL.Add('from ');
    SQL.Add('    ( select  ZLBH,CLBH,sum(USAGE) as USAGE,case when CLTX=''1'' and LYCC<>''Y'' then sum(CLSL)*@p/100  else sum(CLSL) end as CLSL ,DFL,YWPM,');
    SQL.Add('          DWBH,LYCC,Article,XieMing,XieXing,SheHao,CLTX');
    SQL.Add('     from (select ZLZLS2.ZLBH,ZLZLS2.CLBH,max(ZLZLS2.USAGE) as USAGE,');
    SQL.Add('             sum(ZLZLS2.CLSL)   CLSL ,(case when substring(xxbwfl.bwbh,1,1)=''V'' then isnull(XXzlsvn.DFL,''N'') else isnull(XXBWFLS.DFL,''N'') end) as DFL');
    SQL.Add('             ,CLZL.YWPM,CLZL.DWBH,CLZL.LYCC,DDZL.XieXing,DDZL.SheHao,XXZL.Article,XXZL.XieMing,isnull(XXZLS.CLTX,1) as CLTX');
    SQL.Add('             from ZLZLS2');
    SQL.Add('             left join CLZL on ZLZLS2.CLBH=CLZL.CLDH');
    SQL.Add('             left join ZLZL on ZLZL.ZLBH=ZLZLS2.ZLBH');
    SQL.Add('             left join  DDZL on DDZL.DDBH=ZLZL.DDBH');
    SQL.Add('             left join XXZL on XXZL.XieXing=DDZL.XieXing and XXZL.SheHao=DDZL.SheHao');
    SQL.Add('             left join XXBWFL on ZLZLS2.BWBH=XXBWFL.BWBH and XXZL.XieXing=XXBWFL.XieXing');
    SQL.Add('             left join XXBWFLS on XXBWFL.FLBH=XXBWFLS.FLBH');
    SQL.Add('             left join XXZLS on XXZLS.XieXing=XXZL.XieXing and XXZLS.SheHao=XXZL.SheHao and XXZLS.BWBH=ZLZLS2.BWBH');
    SQL.Add('             left join (select XXZLSvn.xiexing,XXZLSvn.shehao,XXZLSvn.bwbh,xxbwfls.dfl from XXZLSvn');
    SQL.Add('		            				left join xxbwfls on xxzlsvn.flbh=xxbwfls.flbh');
    SQL.Add('					            	) as XXZLSvn on XXZLSvn.XieXing=ddzl.XieXing and XXZLSvn.SheHao=ddzl.SheHao and XXZLSvn.BWBH=ZLZLS2.BWBH');
    SQL.Add('            where ZLZLS2.ZLBH in  ( select DDBH1 from DDZLTR where DDBH='''+DBEdit1.Text+''' )  ');
    SQL.Add('                     and ZLZLS2.MJBH=''ZZZZZZZZZZ''');
    SQL.Add('                     and XXBWFL.FLBH<>''16''');
    if CLBHEdit.Text<>'' then
    SQL.Add('                     and ZLZLS2.CLBH like '''+CLBHEdit.Text+'%'' ');
    if YWPMEdit.Text<>'' then
    SQL.Add('                     and CLZL.YWPM like ''%'+YWPMEdit.Text+'%'' ');
    SQL.Add('            group by ZLZLS2.ZLBH,ZLZLS2.CLBH,XXBWFLS.DFL,');
    SQL.Add('                 xxzlsvn.dfl,xxbwfl.bwbh,  CLZL.YWPM,CLZL.DWBH,CLZL.LYCC,DDZL.XieXing,DDZL.SheHao,XXZL.Article,XXZL.XieMing,XXZLS.CLTX ) as OrdCL');
    SQL.Add('      group by ZLBH,CLBH,DFL,YWPM,DWBH,LYCC,Article,XieMing,XieXing,SheHao,CLTX) OrdCL1');
    SQL.Add('left join (select   KCLLS.SCBH, KCLLS.CLBH, sum(KCLLS.Qty) as Qty,isnull( KCLLS.DFL,''N'') as DFL');
    SQL.Add('              from  KCLLS where  KCLLS.SCBH in  ( select DDBH1 from DDZLTR where DDBH='''+DBEdit1.Text+''' ) and blsb is null group by KCLLS.SCBH, KCLLS.CLBH,KCLLS.DFL) KCLLS');
    SQL.Add('               on KCLLS.SCBH=OrdCL1.ZLBH and KCLLS.CLBH=OrdCL1.CLBH and OrdCL1.DFL=KCLLS.DFL');
    SQL.Add('left join KCZLS on KCZLS.CLBH=OrdCL1.CLBH and KCZLS.CKBH='''+DelMaterial.DelMas.fieldbyname('CKBH').AsString+'''');
    if DFLCombo.Text<>'' then
    SQL.Add('where OrdCL1.DFL='''+DFLCombo.Text+''' ');
    SQL.Add('group by OrdCL1.ZLBH,OrdCL1.CLBH,OrdCL1.DFL,OrdCL1.YWPM,OrdCL1.DWBH,');
    SQL.Add('              OrdCL1.LYCC,OrdCL1.Article,OrdCL1.XieMing,OrdCL1.XieXing,OrdCL1.SheHao,KCLLS.Qty,KCZLS.KCQty,KCZLS.NK,KCZLS.TC,KCZLS.HD,KCZLS.KD,KCZLS.GC,KCZLS.XT,KCZLS.ZZZZ) OrderCL');
    SQL.Add('Group by CLBH,USage,DFL,YWPM,DWBH,LYCC,Article,XieMing,XieXing,SheHao,KCQty,NK,TC,HD,KD,GC,XT,ZZZZ');
    SQL.Add('order by OrderCL.DFL,OrderCL.CLBH');
    //funcObj.WriteErrorLog(sql.Text);
    Active:=true;
  end;
  Query2.Active:=true;
end;

procedure TDelMaterial_DDZLTR.DFLComboChange(Sender: TObject);
begin
  QueryBtn.Click;
end;

procedure TDelMaterial_DDZLTR.DBGrid1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if Query1.FieldByName('Qty').value>=(Query1.FieldByName('CLSL').value)  then
  begin
    dbgrid1.canvas.font.color:=clred;
  end;
end;

procedure TDelMaterial_DDZLTR.DBGrid2GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if Query2.FieldByName('Qty').value>=(Query2.FieldByName('CLSL').value)  then
  begin
    dbgrid2.canvas.font.color:=clred;
  end;
end;

procedure TDelMaterial_DDZLTR.SelectDDZLTR();
var i:integer;
begin
  if (not query2.Active) then
  begin
    abort;
  end;
  if (Query2.recordcount<1) then
  begin
    abort;
  end;
  if query1.FieldByName('DFL').value='N' then
  begin
    showmessage('Pls contect with develop department first.');
    abort;
  end;

  nQty:=strtoint(edit1.Text);
  Query2.First;
  for i:=0 to Query2.RecordCount-1 do
  begin
    if  Query2.FieldByName('Qty').value<(Query2.FieldByName('CLSL').value)  then
    begin
      with DelMaterial.DelDet do
      begin
          insert;
          fieldbyname('SCBH').value:=query2.fieldbyname('ZLBH').value;
          fieldbyname('CLBH').value:=query1.fieldbyname('CLBH').value;
          fieldbyname('SCBH').value:=query2.fieldbyname('ZLBH').value;
          fieldbyname('YWPM').value:=query1.fieldbyname('YWPM').value;
          fieldbyname('DWBH').value:=query1.fieldbyname('DWBH').value;
          if  mQty>nQty then
          begin
              if   ((Query2.FieldByName('CLSL').value*nQty/mQty)<(query2.fieldbyname('CLSL').value-Query2.FieldByName('Qty').value+0.1)) then
                begin
                  fieldbyname('TempQty').value:=trunc((query2.fieldbyname('CLSL').value*nQty/mQty)*10+0.5)/10;
                end
                else
                  begin
                    fieldbyname('TempQty').value:=trunc((query2.fieldbyname('CLSL').value-Query2.FieldByName('Qty').value)*10+0.5)/10;
                  end;
          end else
          begin
                fieldbyname('TempQty').value:=trunc((query2.fieldbyname('CLSL').value-Query2.FieldByName('Qty').value)*10+0.5)/10;
          end;
          //整數發料(用於一對一材料)
          if round(query2.fieldbyname('USAGE').value)=query2.fieldbyname('USAGE').value then
          begin
            if (round(fieldbyname('TempQty').value) > trunc((query2.fieldbyname('CLSL').value-Query2.FieldByName('Qty').value)*10+0.5)/10) then
              fieldbyname('TempQty').value :=  trunc((query2.fieldbyname('CLSL').value-Query2.FieldByName('Qty').value)*10+0.5)/10
            else
              fieldbyname('TempQty').value:=round(fieldbyname('TempQty').value);
          end;
          fieldbyname('CostID').value:='621' ;
          fieldbyname('DFL').value:=query1.fieldbyname('DFL').value;
          fieldbyname('CLSL').value:=query2.fieldbyname('CLSL').value;
          post;
      end;
      Query1.Edit;
      Query1.fieldbyname('Qty').value:=query1.fieldbyname('Qty').value+DelMaterial.DelDet.fieldbyname('TempQty').value;
      //Query1.Post;
    end;
    Query2.Next;
  end;
  showmessage('Succeed.');
end;


procedure TDelMaterial_DDZLTR.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=CaFree;
end;

procedure TDelMaterial_DDZLTR.FormDestroy(Sender: TObject);
begin
  DelMaterial_DDZLTR:=nil;
end;

procedure TDelMaterial_DDZLTR.DBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key=#13 then
    SelectDDZLTR();
end;

procedure TDelMaterial_DDZLTR.DBGrid1DblClick(Sender: TObject);
begin
  SelectDDZLTR();
end;

procedure TDelMaterial_DDZLTR.FormShow(Sender: TObject);
begin
  main.FormLanguage(Pointer(self),self.Name);
end;

end.
