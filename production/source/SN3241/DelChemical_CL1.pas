unit DelChemical_CL1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ExtCtrls, ComCtrls,comobj;

type
  TDelChemical_CL = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    DBGridEh1: TDBGridEh;
    Query1: TQuery;
    DataSource1: TDataSource;
    DTP3: TDateTimePicker;
    Label4: TLabel;
    DTP4: TDateTimePicker;
    Label3: TLabel;
    Query1cldhz: TStringField;
    Query1ZLBH1: TStringField;
    Query1TCLYL: TFloatField;
    Query1zwpm: TStringField;
    Query1ywpm: TStringField;
    Query1CQDH: TStringField;
    Query1Qty: TCurrencyField;
    Label2: TLabel;
    Edit2: TEdit;
    Query1DWBH: TStringField;
    UpdateSQL1: TUpdateSQL;
    Button2: TButton;
    QTemp: TQuery;
    Query1TYJH: TStringField;
    CKBox: TCheckBox;
    DTP1: TDateTimePicker;
    Label5: TLabel;
    Label6: TLabel;
    DTP2: TDateTimePicker;
    chk1: TCheckBox;
    Label7: TLabel;
    Edit3: TEdit;
    chk2: TCheckBox;
    Chk3: TCheckBox;
    Query1YN: TStringField;
    Query1DDBH: TStringField;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure DBGridEh1KeyPress(Sender: TObject; var Key: Char);
    procedure Button2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    ParentQry:TQuery;
    { Public declarations }
  end;

var
  DelChemical_CL: TDelChemical_CL;

implementation

uses main1,fununit, DelChemical1;

{$R *.dfm}

procedure TDelChemical_CL.FormDestroy(Sender: TObject);
begin
  DelChemical_CL:=nil;
end;

procedure TDelChemical_CL.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  query1.active:=false;
end;

procedure TDelChemical_CL.Button1Click(Sender: TObject);
begin
  if edit1.Text = '' then
  begin
    Showmessage('Xin nhap don hang');
    exit;
  end;
  //
  with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.Add('    SELECT ZLZLS3.cldhz ,DDZL.ZLBH1,round(sum(ZLZLS3.TCLYL),2) as TCLYL,');
    sql.Add('           CLZL.zwpm,CLZL.ywpm,DDZL.CQDH ,isnull(KCLLS.Qty,0) as Qty,CLZL.DWBH,');
    sql.Add('           IsNull(ERP_CLZL.TYJH,'''') as TYJH,DDZL.YN,');
    SQL.Add('           cast ( (select Z3.DDBH + '',''from '+main.LIY_DD+'.dbo.ZLZLS3 Z3 where Z3.cldhz=ZLZLS3.cldhz and Z3.ZLBH1=DDZL.ZLBH1 and Z3.CQDH=DDZL.CQDH  group by DDBH for XML Path ('''')) as varchar(2000)) as DDBH');
    sql.Add('    FROM '+main.LIY_DD+'.dbo.ZLZLS3  ZLZLS3');
    sql.Add('    LEFT JOIN '+main.LIY_DD+'.dbo.DDZL DDZL ON ZLZLS3.DDBH = DDZL.DDBH AND  DDZL.CQDH = ZLZLS3.CQDH');
    //20170328
    sql.Add('    LEFT JOIN '+main.LIY_DD+'.dbo.CLZL CLZL ON ZLZLS3.cldhz = CLZL.cldh');
    sql.Add('    LEFT JOIN '+main.LIY_DD+'.dbo.CLZLSL CLZLSL ON ZLZLS3.cldh = CLZLSL.cldh  and ZLZLS3.cldhz=CLZLSL.cldhz and CLZLSL.cldh=CLZL.cldh');
    //20180105
    sql.Add('    left join DDZLTW on DDZL.ZLBH1=DDZLTW.DDBH');
    //
    sql.Add('    left join (select KCLLS.SCBH,KCLLS.CLBH,round(sum(KCLLS.Qty),2) as Qty');
    sql.Add('               from KCLLS left join KCLL on KCLL.LLNO=KCLLS.LLNO');
    sql.Add('               where KCLLS.BLSB=''N'' ');
    sql.Add('               and KCLL.GSBH='''+main.Edit2.Text+''' ');
    sql.Add('               and KCLLS.SCBH like '''+edit1.Text+'%''');
    sql.add('               group by KCLLS.SCBH,KCLLS.CLBH ) KCLLS');
    sql.add('    on KCLLS.SCBH=DDZL.ZLBH1 and ''A''+KCLLS.CLBH=CLZL.CLDH');
    sql.add('    left join CLZL ERP_CLZL on ERP_CLZL.CLDH=Substring(ZLZLS3.cldhz,2,10)  ');
    sql.add('    where  DDZL.CQDH='''+main.Edit2.Text+'''');
    sql.Add('    and ZLZLS3.cldhz like '+''''+'%'+edit2.Text+'%'+'''');
    //sql.Add('    and DDZL.SCRQ>convert(varchar,getdate()-90,112)');
    sql.Add('    and DDZL.DDLB=''N''');//¤£¬O¸É³æ
    if chk1.Checked then
    begin
      sql.add('  AND DDZL.DDJQ>='+''''+formatdatetime('yyyyMMdd',DTP1.date)+'''');
      sql.add('  AND DDZL.DDJQ<='+''''+formatdatetime('yyyyMMdd',DTP2.date)+'''');
    end;
    if chk2.Checked then
    begin
      sql.Add('  AND DDZL.SCRQ>='+''''+formatdatetime('yyyyMMdd',DTP3.date)+'''');
      sql.Add('  AND DDZL.SCRQ<='+''''+formatdatetime('yyyyMMdd',DTP4.date)+'''');
    end;
    sql.Add('    and DDZL.ZLBH1 like '+''''+edit1.Text+'%'+'''');
    if edit3.Text<>'' then
    sql.Add('    and DDZL.DDBH like '''+edit3.Text+'%'' ');
    if not chk3.Checked then
    begin
      sql.Add('  and DDZL.YN=''1''');
    end;
    //sql.Add('    and IsNull(DDZLTW.DDZT,'''')<>''C''');   20190409 don't need to check with cancel order
    if CKBox.Checked=true then
      sql.Add('  and IsNull(ERP_CLZL.TYJH,'''')<>''Y'' ');
    sql.Add('    GROUP BY  ZLZLS3.cldhz ,DDZL.ZLBH1,CLZL.zwpm,CLZL.ywpm,DDZL.CQDH,KCLLS.Qty ,CLZL.DWBH,ERP_CLZL.TYJH,DDZL.YN ');
    //funcobj.WriteErrorLog(sql.Text);
    active:=true;
  end;
  //
end;

procedure TDelChemical_CL.FormCreate(Sender: TObject);
begin
  DTP1.Date:=Date()-3;
  DTP2.Date:=Date();
  DTP3.Date:=Date()-3;
  DTP4.Date:=Date();
end;

procedure TDelChemical_CL.DBGridEh1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if query1.FieldByName('TCLYL').value<=query1.FieldByName('Qty').value then
  begin
    dbgrideh1.canvas.font.Color:=clred;
  end;
end;

procedure TDelChemical_CL.DBGridEh1DblClick(Sender: TObject);
begin

  if (not query1.Active) then
  begin
    abort;
  end;
  if (Query1.recordcount<1) then
  begin
    abort;
  end;
  if Query1.FieldByName('YN').Value<>'1' then
   showmessage('Can not Deliver Chemical')
  else begin
    with ParentQry do
    begin
          insert;
          fieldbyname('CLBH').value:=copy(query1.fieldbyname('CLDHZ').value,2,10);
          fieldbyname('SCBH').value:=query1.fieldbyname('ZLBH1').value;
          fieldbyname('YWPM').value:=query1.fieldbyname('YWPM').value;
          fieldbyname('DWBH').value:=query1.fieldbyname('DWBH').value;
          //fieldbyname('CostID').value:='621' ;
          fieldbyname('CostID').value:=DelChemical.Pro_CostID_HC;
          fieldbyname('BLSB').value:='N';
          fieldbyname('DFL').value:='W';
          fieldbyname('CLSL').value:=query1.fieldbyname('TCLYL').value;
          fieldbyname('TempQty').value:=query1.fieldbyname('TCLYL').value-query1.fieldbyname('Qty').value;
          post;
    end;
  Query1.Edit;
  query1.fieldbyname('Qty').value:=query1.fieldbyname('TCLYL').value ;
  end;
end;

procedure TDelChemical_CL.DBGridEh1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key=#13 then
    DBGrideh1dblclick(nil);

end;

procedure TDelChemical_CL.Button2Click(Sender: TObject);
var   a:string;
      eclApp,WorkBook:olevariant;
      i,j:integer;
begin
  if  Query1.active  then
    begin
    try
      eclApp:=CreateOleObject('Excel.Application');
      WorkBook:=CreateOleObject('Excel.Sheet');
    except
      Application.MessageBox('No Mcrosoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
      Exit;
    end;
    try
        WorkBook:=eclApp.workbooks.Add;
        for   i:=0   to   Query1.fieldCount-1   do
          begin
              eclApp.Cells(1,i+1):=Query1.fields[i].FieldName;
          end;
        Query1.First;
        j:=2;
        while   not   Query1.Eof   do
          begin
            for   i:=0   to   Query1.FieldCount-1   do
              begin
                eclApp.Cells(j,i+1):=Query1.Fields[i].Value;
              end;
            Query1.Next;
            inc(j);
          end;
      eclapp.columns.autofit;
      showmessage('Succeed');
      eclApp.Visible:=True;
      except
        on   F:Exception   do
          showmessage(F.Message);
      end;
    end;

end;

procedure TDelChemical_CL.FormShow(Sender: TObject);
begin
  main.FormLanguage(Pointer(self),self.Name);
end;

end.
