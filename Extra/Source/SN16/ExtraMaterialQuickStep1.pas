unit ExtraMaterialQuickStep1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ExtCtrls, GridsEh, DBGridEh, DB, DBTables,dateutils,
  Menus,comobj;

type
  TExtraMaterialQuickStep = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    Edit2: TEdit;
    EDIT1: TEdit;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    BuyNoEdit: TEdit;
    Panel2: TPanel;
    Panel3: TPanel;
    DBGridEh1: TDBGridEh;
    DBGridEh2: TDBGridEh;
    DBGridEh3: TDBGridEh;
    MastQryCLBH: TStringField;
    MastQryYWPM: TStringField;
    MastQryDWBH: TStringField;
    MastQryCQDH: TStringField;
    MastQryokQty: TCurrencyField;
    MastQryCLSL: TFloatField;
    MastQryCSBH: TStringField;
    MastQryBOM_Supplier: TStringField;
    DS_Mast: TDataSource;
    MastQry: TQuery;
    tmpQ: TQuery;
    DetailQry: TQuery;
    MastQryDiff: TFloatField;
    DetailQryZLBH: TStringField;
    DetailQryCLBH: TStringField;
    DetailQryokQty: TCurrencyField;
    DetailQryCLSL: TFloatField;
    DetailQryDDZT: TStringField;
    DetailQryARTICLE: TStringField;
    DetailQryPairs: TIntegerField;
    DetailQryShipDate: TDateTimeField;
    DetailQryDDRQ: TDateTimeField;
    DetailQryBUYNO: TStringField;
    DetailQryDiff: TFloatField;
    DS_Detail: TDataSource;
    Splitter1: TSplitter;
    ChildMatQry: TQuery;
    DS_ChildMat: TDataSource;
    ChildMatQrycldh: TStringField;
    ChildMatQrycldh1: TStringField;
    ChildMatQryccq: TStringField;
    ChildMatQryccq1: TStringField;
    ChildMatQrysyl: TFloatField;
    ChildMatQryzsdh: TStringField;
    ChildMatQryUSERID: TStringField;
    ChildMatQryUSERDATE: TDateTimeField;
    ChildMatQryYN: TStringField;
    ChildMatQryYWPM: TStringField;
    ChildMatQryZWPM: TStringField;
    ChildMatQryDWBH: TStringField;
    Label7: TLabel;
    chk_shp: TCheckBox;
    chk_plan: TCheckBox;
    DTP3: TDateTimePicker;
    DTP4: TDateTimePicker;
    Label3: TLabel;
    EditRY1: TEdit;
    Label16: TLabel;
    EditRY2: TEdit;
    Label4: TLabel;
    EditArticle: TEdit;
    Label6: TLabel;
    Edit6: TEdit;
    PopupMenu1: TPopupMenu;
    Modify1: TMenuItem;
    JG1: TMenuItem;
    Cancel1: TMenuItem;
    Excel1: TMenuItem;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    PopupMenu2: TPopupMenu;
    Excel2: TMenuItem;
    MastQryZSDH_JG: TStringField;
    MastQryJG_Supplier: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure Modify1Click(Sender: TObject);
    procedure Cancel1Click(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure JG1Click(Sender: TObject);
    procedure Excel1Click(Sender: TObject);
    procedure Excel2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ExtraMaterialQuickStep: TExtraMaterialQuickStep;
  NDate:TDate;
  FY,FM:string;

implementation

uses main1,FunUnit, ExtraMaterial1;

{$R *.dfm}

procedure TExtraMaterialQuickStep.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TExtraMaterialQuickStep.FormDestroy(Sender: TObject);
begin
   ExtraMaterialQuickStep:=nil;
end;

procedure TExtraMaterialQuickStep.Button1Click(Sender: TObject);
begin
  if ((chk_shp.Checked=false) and (chk_plan.Checked=false) and  (length(BuyNoEdit.Text)<=4)) then
  begin
    showmessage('Please choice RYDate or PlanDate or BuyNo');
    exit;
  end;
  if  ((not chk_shp.Checked) and (not chk_plan.Checked)) then
  begin
    if ((length(EditRY1.Text)<3) and (length(BuyNoEdit.Text)<5)  and  (chk_shp.Checked=False) and (chk_plan.Checked=false)   ) then
    begin
      showmessage('Pls setup condition first!');
      abort;
    end;
  end;
  with MastQry do
  begin
    active:=false;
    sql.Clear;
    sql.Add('select ZLZLS2.*,ZLZLS2.okQty- ZLZLS2.CLSL as Diff');
    sql.Add('from (');
    sql.Add('select ZLZLS2.CLBH,CLZL.YWPM,CLZL.DWBH,CLZL.CQDH,isnull(JGZL.okQty,0) as okQty,isnull(sum(ZLZLS2.CLSL),0) as CLSL,');
    sql.Add('       ZLZLS2.CSBH,ZSZL.ZSYWJC as BOM_Supplier,ZSZL_DEV.ZSDH_JG,ZSZL_DEV.ZSYWJC as JG_Supplier ');
    sql.Add('from ZLZLS2');
    sql.Add('left join (select JGZLSS.CLBH,sum(JGZLSS.Qty) as okQty from JGZLSS');
    sql.Add('           left join CLZL on CLZL.CLDH=JGZLSS.CLBH');
    sql.Add('           left join DDZl on DDZl.DDBH=JGZLSS.ZLBH ');
    sql.Add('           left join ZLZL on ZLZL.ZLBH=JGZLSS.ZLBH ');
    sql.Add('           left join SCZLDate on SCZLDate.ZLBH=DDZL.DDBH');
    sql.Add('           where 1=1');
    if edit1.Text <>'' then
        sql.add('       and JGZLSS.CLBH like '+''''+edit1.Text+'%'+'''');
    if edit2.Text <>'' then
        sql.add('       and CLZL.YWPM like '+''''+'%'+edit2.Text+'%'+'''');
    if chk_shp.Checked=true then
        sql.add('       and convert(smalldatetime,convert(varchar,DDZL.ShipDate,111)) between '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
    if chk_plan.Checked=true then
        sql.add('       and convert(smalldatetime,convert(varchar,SCZLDate.ADate,111)) between '''+formatdatetime('yyyy/MM/dd',DTP3.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP4.Date)+'''');
    if BuyNoEdit.Text<> '' then
        SQL.Add('       and DDZL.BUYNO like '''+BuyNoEdit.Text+'%'' ');
    if (EditRY1.Text<>'') and (EditRY2.Text='') then
       sql.add('        and JGZLSS.ZLBH like '+''''+editRY1.Text+'%'+'''');
    if (EditRY1.Text<>'') and (EditRY2.Text<>'') then
    begin
      sql.add('         and JGZLSS.ZLBH >= '+''''+EditRY1.Text+'''');
      sql.add('         and JGZLSS.ZLBH <= '+''''+EditRY2.Text+'''');
    end;
    sql.add('           and DDZL.GSBH='+''''+main.edit2.Text+'''');
    sql.Add('           group by  JGZLSS.CLBH ) JGZL on JGZL.CLBH=ZLZLS2.CLBH');
    sql.Add('left join CLZL on CLZL.CLDH=ZLZLs2.CLBH');
    sql.Add('left join DDZl on DDZl.DDBH=ZLZLS2.ZLBH');
    sql.Add('left join DDZlTW on DDZlTW.DDBH=ZLZLS2.ZLBH ');
    sql.Add('left join SCZL on SCZL.SCBH=ZLZLS2.ZLBH ');
    sql.Add('left join XXZL  on DDZL.XieXing=XXZL.XieXing and DDZL.SheHao=XXZL.SheHao ');
    sql.Add('left join ZLZL on ZLZL.ZLBH=ZLZLS2.ZLBH ');
    sql.Add('left join SCZLDate on SCZLDate.ZLBH=DDZL.DDBH');
    sql.Add('LEFT JOIN ZSZL ON ZLZLS2.CSBH=ZSZL.ZSDH ');
    sql.Add('Left JOIN ( SELECT ZSZL_DEV.ZSDH,ZSZL_DEV.ZSDH_JG,ZSZL.ZSYWJC as ZSYWJC');
    sql.Add('            FROM ZSZL LEFT JOIN ZSZL_DEV ON ZSZL.ZSDH=ZSZL_DEV.ZSDH_JG and ZSZL_DEV.GSBH='+''''+main.edit2.Text+''') ZSZL_DEV on ZLZLS2.CSBH=ZSZL_DEV.ZSDH');
    sql.Add('where 1=1');
    if edit1.Text <> '' then
        sql.add('and ZLZLS2.CLBH like '+''''+edit1.Text+'%'+'''');
    if edit2.Text <> '' then
        sql.add('and CLZL.YWPM like '+''''+'%'+edit2.Text+'%'+'''');
    if chk_shp.Checked=true then
        sql.add('and convert(smalldatetime,convert(varchar,DDZL.ShipDate,111)) between '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
    if chk_plan.Checked=true then
        sql.add('and convert(smalldatetime,convert(varchar,SCZLDate.ADate,111)) between '''+formatdatetime('yyyy/MM/dd',DTP3.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP4.Date)+'''');
    if BuyNoEdit.Text<> '' then
        SQL.Add('and DDZL.BUYNO like '''+BuyNoEdit.Text+'%'' ');
    if edit6.Text <> '' then
        sql.Add('and ZSZL.ZSYWJC like '+''''+'%'+edit6.Text+'%'+'''');
    if (editRY1.Text<>'') and (editRY2.Text='') then
        sql.add('and SCZL.SCBH like '+''''+editRY1.Text+'%'+'''');
    if (editRY1.Text<>'') and (editRY2.Text<>'') then
    begin
      sql.add('and SCZL.SCBH >= '+''''+editRY1.Text+'''');
      sql.add('and SCZL.SCBH <= '+''''+editRY2.Text+'''');
    end;
    sql.add('and DDZL.GSBH='+''''+main.edit2.Text+'''');
    sql.add('and ZLZLS2.ZMLB='+''''+'Y'+'''');
    sql.add('and DDZlTW.DDZT<>''C'' and isnull(SCZL.IsKCLLS,'''')<>''N'' ');
    sql.Add('group by ZLZLS2.CLBH,CLZL.YWPM,CLZL.DWBH,CLZL.CQDH,ZLZLS2.CSBH,ZSZL.ZSYWJC,ZSZL_DEV.ZSDH_JG,ZSZL_DEV.ZSYWJC,SCZL.IsKCLLS,JGZL.okQty');
    sql.Add('       ) ZLZLS2');
    sql.Add('where 1=1');
    if checkbox1.Checked=true then
      sql.Add(' and ZLZLS2.okQty<ZLZLS2.CLSL');
    if checkbox2.Checked=true then
      sql.Add(' and ZLZLS2.okQty>=ZLZLS2.CLSL');
    sql.Add('order by ZLZLS2.CLBH');
    //funcobj.WriteErrorLog(sql.Text);
    active:=true;
  end;

  with DetailQry do
  begin
    active:=false;
    sql.Clear;
    sql.Add('select ZLZLS2.*,ZLZLS2.okQty-ZLZLS2.CLSL as Diff ');
    sql.Add('from (  ');
    sql.Add('select ZLZLS2.ZLBH,ZLZLS2.CLBH,isnull(JGZL.okQty,0) as okQty,');
    sql.Add('       case when (DDZLTW.DDZT<>''C'' and isnull(SCZL.IsKCLLS,'''')<>''N'') then isnull(sum(ZLZLS2.CLSL),0) else 0 end as CLSL, ');
    sql.Add('       DDZLTW.DDZT,DDZL.ARTICLE,DDZL.Pairs,DDZL.ShipDate,DDZL.DDRQ,DDZL.BUYNO');
    sql.Add('from ZLZLS2');
    sql.Add('left join (select JGZLSS.ZLBH,JGZLSS.CLBH,sum(JGZLSS.Qty) as okQty from JGZLSS');
    sql.Add('           left join CLZL on CLZL.CLDH=JGZLSS.CLBH');
    sql.Add('           left join DDZl on DDZl.DDBH=JGZLSS.ZLBH');
    sql.Add('           left join ZLZL on ZLZL.ZLBH=JGZLSS.ZLBH');
    sql.Add('           left join SCZLDate on SCZLDate.ZLBH=DDZL.DDBH');
    sql.Add('           where JGZLSS.CLBH=:CLBH');
    if edit2.Text <>'' then
        sql.add('       and CLZL.YWPM like '+''''+'%'+edit2.Text+'%'+'''');
    if chk_shp.Checked=true then
        sql.add('       and convert(smalldatetime,convert(varchar,DDZL.ShipDate,111)) between '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
    if chk_plan.Checked=true then
        sql.add('       and convert(smalldatetime,convert(varchar,SCZLDate.ADate,111)) between '''+formatdatetime('yyyy/MM/dd',DTP3.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP4.Date)+'''');
    if BuyNoEdit.Text<> '' then
        SQL.Add('       and DDZL.BUYNO like '''+BuyNoEdit.Text+'%'' ');
    if (EditRY1.Text<>'') and (EditRY2.Text='') then
       sql.add('        and JGZLSS.ZLBH like '+''''+editRY1.Text+'%'+'''');
    if (EditRY1.Text<>'') and (EditRY2.Text<>'') then
    begin
      sql.add('         and JGZLSS.ZLBH >= '+''''+EditRY1.Text+'''');
      sql.add('         and JGZLSS.ZLBH <= '+''''+EditRY2.Text+'''');
    end;
    sql.add('           and DDZL.GSBH='+''''+main.edit2.Text+'''');
    sql.Add('           group by  JGZLSS.ZLBH,JGZLSS.CLBH ) JGZL on JGZL.CLBH=ZLZLS2.CLBH  and JGZL.ZLBH=zlzls2.ZLBH');
    sql.Add('left join CLZL on CLZL.CLDH=ZLZLs2.CLBH');
    sql.Add('left join DDZl on DDZl.DDBH=ZLZLS2.ZLBH');
    sql.Add('left join DDZlTW on DDZlTW.DDBH=ZLZLS2.ZLBH');
    sql.Add('left join SCZL on SCZL.SCBH=ZLZLS2.ZLBH');
    sql.Add('left join XXZL  on DDZL.XieXing=XXZL.XieXing and DDZL.SheHao=XXZL.SheHao');
    sql.Add('left join ZLZL on ZLZL.ZLBH=ZLZLS2.ZLBH');
    sql.Add('left join SCZLDate on SCZLDate.ZLBH=DDZL.DDBH');
    sql.Add('where ZLZLS2.CLBH=:CLBH');
    if edit2.Text <>'' then
        sql.add('and CLZL.YWPM like '+''''+'%'+edit2.Text+'%'+'''');
    if chk_shp.Checked=true then
        sql.add('and convert(smalldatetime,convert(varchar,DDZL.ShipDate,111)) between '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
    if chk_plan.Checked=true then
        sql.add('and convert(smalldatetime,convert(varchar,SCZLDate.ADate,111)) between '''+formatdatetime('yyyy/MM/dd',DTP3.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP4.Date)+'''');
    if BuyNoEdit.Text<> '' then
        SQL.Add('and DDZL.BUYNO like '''+BuyNoEdit.Text+'%'' ');
    if (editRY1.Text<>'') and (editRY2.Text='') then
        sql.add('and SCZL.SCBH like '+''''+editRY1.Text+'%'+'''');
    if (editRY1.Text<>'') and (editRY2.Text<>'') then
    begin
      sql.add('and SCZL.SCBH >= '+''''+editRY1.Text+'''');
      sql.add('and SCZL.SCBH <= '+''''+editRY2.Text+'''');
    end;
    sql.add('and DDZL.GSBH='+''''+main.edit2.Text+'''');
    sql.add('and ZLZLS2.ZMLB='+''''+'Y'+'''');
    sql.Add('and zlzls2.CSBH=:CSBH');
    sql.Add('group by ZLZLS2.ZLBH,ZLZLS2.CLBH,DDZLTW.DDZT,SCZL.IsKCLLS,JGZL.okQty,DDZL.ARTICLE,DDZL.Pairs,DDZL.ShipDate,DDZL.DDRQ,DDZL.BUYNO) ZLZLS2');
    sql.Add('order by ZLZLS2.ZLBH');
    //funcobj.WriteErrorLog(sql.Text);
    active:=true;
  end;
  ChildMatQry.Active:=true;
end;

procedure TExtraMaterialQuickStep.FormCreate(Sender: TObject);
begin
  with tmpQ do
  begin
    active:=false;
    sql.Clear;
    sql.Add('select year(getdate()) as FY,month(getdate()) as FM ,getdate() as NDate');
    active:=true;
    NDate:=fieldbyname('NDate').Value;
    FY:=fieldbyname('FY').Value;
    FM:=fieldbyname('FM').Value;
    active:=false;
  end;
  DTP1.Datetime:=StartOfTheMonth(IncMonth(Date(),0));
  DTP2.Datetime:=EndOfTheMonth(IncMonth(Date(),0));

  DTP3.Datetime:=StartOfTheMonth(IncMonth(Date(),0));
  DTP4.Datetime:=EndOfTheMonth(IncMonth(Date(),0));
  BuyNoEdit.Text:=FormatDateTime('YYYYMM',Date());
end;

procedure TExtraMaterialQuickStep.DBGridEh1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if MastQry.FieldByName('okQty').value>=MastQry.FieldByName('CLSL').value then
  begin
    DBGridEh1.canvas.font.color:=clLime;
    DBGridEh1.defaultdrawcolumncell(rect,datacol,column,state);
  end;
  if (MastQry.FieldByName('okQty').value<MastQry.FieldByName('CLSL').value) and (MastQry.FieldByName('okQty').value<>0) then
  begin
    DBGridEh1.canvas.font.color:=clRed;
    DBGridEh1.defaultdrawcolumncell(rect,datacol,column,state);
  end;
end;

procedure TExtraMaterialQuickStep.Modify1Click(Sender: TObject);
begin
  JG1.Enabled:=true;
  cancel1.Enabled:=true;
  Excel1.Enabled:=false;
  modify1.Enabled:=false;
end;

procedure TExtraMaterialQuickStep.Cancel1Click(Sender: TObject);
begin
  JG1.Enabled:=false;
  cancel1.Enabled:=false;
  Excel1.Enabled:=true;
  modify1.Enabled:=true;
end;

procedure TExtraMaterialQuickStep.CheckBox2Click(Sender: TObject);
begin
  if CheckBox2.Checked then CheckBox1.Checked:=false;
end;

procedure TExtraMaterialQuickStep.CheckBox1Click(Sender: TObject);
begin
  if CheckBox1.Checked then CheckBox2.Checked:=false;
end;

procedure TExtraMaterialQuickStep.JG1Click(Sender: TObject);
var bm:Tbookmark;
    JGNO,JG_SuppID:string;
    USPrice,VNPrice:string;
    QUSPrice,QVNPrice:string;
    i,j,k:integer;
    Qty,VNPrice_Round:real;
    bookmarklist:tbookmarklistEH;
    PurcahseForm:TForm;
begin
  if not MastQry.Active then
     abort;
  if (MastQry.recordcount<1) then
     abort;
  if ExtraMaterial<>nil then  //檢查採購單程式是否有被開啟
  begin
     if (ExtraMaterial.BB5.Enabled=true) or (ExtraMaterial.BD5.Enabled=true) or (ExtraMaterial.BO3.Enabled=true) then //是否在編輯狀態
     begin
        ExtraMaterial.show;
        ExtraMaterial.windowstate:=wsmaximized;
        showmessage('Pls save data first ');
        abort;
     end;
  end;
  if messagedlg('Do you really want to generate Extra Order?',mtconfirmation,[mbYes,mbNo],0)=mrNo then
  abort;
  //編號年月
  if length(FM)<2 then
     FM:='0'+FM;
  //開始產生採購單
  MastQry.disablecontrols;
  bm:=MastQry.getbookmark;
  bookmarklist:=DBGridEh1.selectedrows;
  if bookmarklist.count=0 then
  begin
    showmessage('Pls choose data first !');
    abort;
  end;
  if bookmarklist.count>0 then
  begin
     try
         MastQry.gotobookmark(pointer(bookmarklist[0]));
         if MastQry.FieldByName('ZSDH_JG').AsString='' then //檢查是否有對應的VN廠商代號
         begin
           showmessage('No mapping Supplier ID');
           exit;
         end;
         JG_SuppID:=MastQry.FieldByName('ZSDH_JG').AsString ;
         //計算採購單流水號
         if MastQry.FieldByName('diff').AsFloat<0 then //有採購數量
         begin
           with tmpQ do
           begin
             active:=false;
             sql.Clear;
             sql.Add('select JGNO from JGZL where JGNO like '+''''+FY+FM+'%'+'''');
             sql.add('order by JGNO');
             active:=true;
             if recordcount >0 then
             begin
                last;
                JGNO:=fieldbyname('JGNO').AsString;
                JGNO:=copy(JGNO,7,5);
                JGNO:=inttostr(strtoint(JGNO)+1);
                while length(JGNO)<5 do
                begin
                  JGNO:='0'+JGNO;
                end;
             end else
             begin
               JGNO:='00001';
             end;
             JGNO :=FY+FM+JGNO;
             active:=false;
           end;
           //新增採購單頭檔CGZL
           with tmpQ do
           begin
             active:=false;
             sql.Clear;
             sql.Add('insert JGZL ');
             sql.Add('(JGNO, GSBH, CKBH, ZSBH, JGDate, JGLX, USERDATE, USERID, CFMID1, CFMID2, YN) values (');
             sql.Add(' '''+JGNO+'''');
             sql.Add(','''+main.Edit2.text+'''');
             sql.Add(','''+main.Edit2.text+'''');
             sql.Add(','''+JG_SuppID+'''');
             sql.Add(','''+formatdatetime('yyyy/MM/dd',Ndate)+'''');
             sql.Add(',''1''');
             sql.Add(','''+formatdatetime('yyyy/MM/dd',Ndate)+'''');
             sql.Add(','''+main.edit1.Text+'''');
             sql.Add(',''NO''');
             sql.Add(',''NO''');
             sql.Add(',''1'')');
             execsql;
             active:=false;
           end;

           for i:=0 to bookmarklist.count-1 do
           begin
             MastQry.gotobookmark(pointer(bookmarklist[i]));
             DetailQry.Active:=false;
             DetailQry.Active:=true;
             ChildMatQry.Active:=false;
             ChildMatQry.Active:=true;
             if MastQry.FieldByName('diff').AsFloat<0 then //有採購數量
             begin
               if  DetailQry.RecordCount>0 then
               begin
                 tmpQ.Active:=false;
                 //
                 with tmpQ do
                 begin
                   active:=false;
                   sql.Clear;
                   sql.Add('insert JGZLS ');
                   sql.Add('(JGNO, CLBH, ZMLB, Qty, USPrice, BJNO, YQDate, CFMDate, USERDATE, USERID, YN');
                   sql.Add(') values ');
                   sql.Add('( '''+JGNO+''' ');
                   sql.Add(','''+MastQry.fieldbyname('CLBH').AsString+''',''ZZZZZZZZZZ'',0,0');
                   sql.Add(',''00000000000''');
                   sql.Add(',GetDate()+14');
                   sql.Add(',GetDate()+14');
                   sql.Add(',GetDate()');
                   sql.Add(','''+main.edit1.Text+'''');
                   sql.Add(',''1'')');
                   execsql;
                   active:=false;
                 end;

                 for j:=1 to DetailQry.RecordCount do
                 begin
                     if ((DetailQry.FieldByName('CLSL').AsString<>'0') and (DetailQry.FieldByName('Diff').AsFloat<0))  then
                     begin
                       with tmpQ do
                       begin
                         active:=false;
                         sql.Clear;
                         sql.Add('insert JGZLSS ');
                         sql.Add('(JGNO, CLBH, ZLBH, Qty, CLSL, YQDate, CFMDate, USERDATE, USERID, YN) values (');
                         sql.Add(' '''+JGNO+''' ');
                         sql.Add(','''+MastQry.fieldbyname('CLBH').AsString+'''');
                         sql.Add(','''+DetailQry.fieldbyname('ZLBH').AsString+'''');
                         sql.Add(','+floattostr(DetailQry.fieldbyname('Diff').asfloat*-1)+'');
                         sql.Add(','+DetailQry.fieldbyname('CLSL').AsString+'');
                         sql.Add(',GetDate()+14');
                         sql.Add(',GetDate()+14');
                         sql.Add(',GetDate()');
                         sql.Add(','''+main.edit1.Text+'''');
                         sql.Add(',''1'')');
                         execsql;
                         active:=false;
                       end;
                     end;
                   DetailQry.next;
                 end;

                 for k:=1 to ChildMatQry.RecordCount do
                 begin
                    tmpQ.Active:=false;
                    with tmpQ do
                    begin
                       active:=false;
                       sql.Clear;
                       sql.Add('insert JGZLS ');
                       sql.Add('(JGNO, CLBH, ZMLB, Qty, BJNO, YQDate, CFMDate, USERDATE, USERID, YN');
                       sql.Add(') values ');
                       sql.Add('( '''+JGNO+''' ');
                       sql.Add(','''+MastQry.fieldbyname('CLBH').AsString+''','''+ChildMatQry.fieldbyname('CLDH1').AsString+'''');
                       sql.Add(','''+floattostr(ChildMatQry.fieldbyname('syl').AsFloat)+'''');
                       sql.Add(',''00000000000''');
                       sql.Add(',GetDate()+14');
                       sql.Add(',GetDate()+14');
                       sql.Add(',GetDate()');
                       sql.Add(','''+main.edit1.Text+'''');
                       sql.Add(',''1'')');
                       //funcobj.WriteErrorLog(sql.Text);
                       execsql;
                       active:=false;
                     end;
                     ChildMatQry.Next;
                 end;

               end;
             end;
           end;
         end;
      finally
        begin
         MastQry.gotobookmark(bm);
         MastQry.freebookmark(bm);
         MastQry.enablecontrols;
        end;
    end;
    with tmpQ do
    begin
      active:=false;
      sql.Clear;
      sql.add('UPDATE JGZLS set QTY=isnull((select isnull(SUM(QTY),0) AS SQTY from JGZLSS WHERE JGZLSS.JGNO=JGZLS.JGNO AND JGZLSS.CLBH=JGZLS.CLBH  ');
      sql.add('  and JGZLSS.JGNO='''+JGNO+''' GROUP BY JGNO,CLBH),0) ');
      sql.add(' where JGZLS.JGNO='''+JGNO+'''  and JGZLS.ZMLB=''ZZZZZZZZZZ''');
      execsql;
      close;
    end;

    showmessage('finish !');
    if ExtraMaterial<>nil then
    begin
      ExtraMaterial.show;
      ExtraMaterial.windowstate:=wsmaximized;
    end else
    begin
      ExtraMaterial:=TExtraMaterial.create(self);
      ExtraMaterial.show;
    end;
    if (ExtraMaterial.BB5.Enabled=true) or (ExtraMaterial.BD5.Enabled=true) or (ExtraMaterial.BO3.Enabled=true) then
    begin
      showmessage('Pls save data first ');
      abort;
    end;
    ExtraMaterial.Edit1.Text:=JGNO;
    ExtraMaterial.Check.Checked:=false;
    ExtraMaterial.Button1Click(nil);
  end;
  DetailQry.Active:=true;
  ChildMatQry.Active:=true;
  Excel1.Enabled:=true;
  Modify1.Enabled:=true;
  Cancel1.Enabled:=false;
end;

procedure TExtraMaterialQuickStep.Excel1Click(Sender: TObject);
var   a:string;
      eclApp,WorkBook:olevariant;
 //     xlsFileName:string;
      i,j:integer;
begin
    if  MastQry.active  then
    begin
    try
      eclApp:=CreateOleObject('Excel.Application');
      WorkBook:=CreateOleObject('Excel.Sheet');
    except
      Application.MessageBox('炵苀羶衄假蚾Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
      Exit;
    end;
    try
        WorkBook:=eclApp.workbooks.Add;
        for   i:=0   to   MastQry.FieldCount-1   do
        begin
            eclApp.Cells(1,i+1):=MastQry.fields[i].FieldName;
        end;

        MastQry.First;
        j:=2;
        while   not   MastQry.Eof   do
          begin
            for   i:=0   to   MastQry.FieldCount-1   do
            begin
              eclApp.Cells(j,i+1):=MastQry.Fields[i].Value;
            end;
          MastQry.Next;
          inc(j);
          end;
      //eclapp.columns.autofit;
      showmessage('Succeed');
      eclApp.Visible:=True;
      except
        on   F:Exception   do
          showmessage(F.Message);
      end;
    end;
end;

procedure TExtraMaterialQuickStep.Excel2Click(Sender: TObject);
var   a:string;
      eclApp,WorkBook:olevariant;
 //     xlsFileName:string;
      i,j:integer;
begin
  if  DetailQry.active  then
    begin
    try
      eclApp:=CreateOleObject('Excel.Application');
      WorkBook:=CreateOleObject('Excel.Sheet');
    except
      Application.MessageBox('炵苀羶衄假蚾Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
      Exit;
    end;
    try
        WorkBook:=eclApp.workbooks.Add;
        for   i:=0   to   MastQry.FieldCount-1   do
        begin
            eclApp.Cells(1,i+1):=DetailQry.fields[i].FieldName;
        end;

        DetailQry.First;
        j:=2;
        while   not   DetailQry.Eof   do
          begin
            for   i:=0   to   DetailQry.FieldCount-1   do
            begin
              eclApp.Cells(j,i+1):=DetailQry.Fields[i].Value;
            end;
          DetailQry.Next;
          inc(j);
          end;
      //eclapp.columns.autofit;
      showmessage('Succeed');
      eclApp.Visible:=True;
      except
        on   F:Exception   do
          showmessage(F.Message);
      end;
    end;
end;

end.
