unit LLMaterialSR1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ComCtrls, Spin,
  ExtCtrls,math, Menus, Buttons,Comobj;

type
  TLLMaterialSR = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    editYPDH: TEdit;
    EditMatNo: TEdit;
    Button1: TButton;
    BaseDate: TDateTimePicker;
    Button2: TButton;
    Panel3: TPanel;
    DBGridEh1: TDBGridEh;
    QueryLLMaterial: TQuery;
    DSLLMaterial: TDataSource;
    PairsEdit: TEdit;
    TestNoEdit: TEdit;
    Label9: TLabel;
    Query1: TQuery;
    QueryLLMaterialypdh: TStringField;
    QueryLLMaterialclbh: TStringField;
    QueryLLMaterialclsl: TFloatField;
    QueryLLMaterialCLYWMC: TStringField;
    QueryLLMaterialCLMC: TStringField;
    QueryLLMaterialKCQty: TCurrencyField;
    QueryLLMaterialcldh: TStringField;
    QueryLLMaterialdwbh: TStringField;
    QueryLLMaterialNK: TCurrencyField;
    QueryLLMaterialHD: TCurrencyField;
    QueryLLMaterialKD: TCurrencyField;
    QueryLLMaterialXT: TCurrencyField;
    QueryLLMaterialGC: TCurrencyField;
    QueryLLMaterialZZZZ: TCurrencyField;
    UpdateSQL1: TUpdateSQL;
    QueryLLMaterialUsage: TFloatField;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    PopupMenu1: TPopupMenu;
    Detail1: TMenuItem;
    Label2: TLabel;
    ComboBox1: TComboBox;
    QueryLLMaterialQuantity: TFloatField;
    QueryLLMaterialQty: TCurrencyField;
    QueryLLMaterialYN: TStringField;
    QueryLLMaterialTC: TCurrencyField;
    QueryLLMaterialKCBH: TStringField;
    QueryLLMaterialCSBH: TStringField;
    QueryLLMaterialzsywjc: TStringField;
    bbt6: TBitBtn;
    QueryLLMaterialCGNO: TStringField;
    Query2: TQuery;
    QueryLLMaterialNK1: TCurrencyField;
    QueryLLMaterialTC1: TCurrencyField;
    QueryLLMaterialHD1: TCurrencyField;
    QueryLLMaterialKD1: TCurrencyField;
    QueryLLMaterialH11: TCurrencyField;
    QueryLLMaterialNQ: TCurrencyField;
    QueryLLMaterialNKNQ: TCurrencyField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure FormShow(Sender: TObject);
    procedure editYPDHExit(Sender: TObject);
    procedure TestNoEditExit(Sender: TObject);
    procedure Detail1Click(Sender: TObject);
    procedure bbt6Click(Sender: TObject);
    procedure QueryLLMaterialCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
    procedure CheckMaterailExists(KCQty:Double);
  public
    IsYPZL_ZLZLS2:boolean;
    PairsSQL:String;  
    { Public declarations }
    procedure GetYPZL_Pairs();
  end;

var
  LLMaterialSR: TLLMaterialSR;

implementation

uses  main1, DelOther_D1, LLMaterial_Detail1,fununit;

{$R *.dfm}




procedure TLLMaterialSR.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=caFree;
end;

procedure TLLMaterialSR.FormDestroy(Sender: TObject);
begin
  LLMaterialSR:=nil;
end;

procedure TLLMaterialSR.FormCreate(Sender: TObject);
begin
  //
  if DelOther_D.IsHide_Warehouse_XT='Y' then
  begin
    DBGridEh1.Columns[15].Visible:=false;
    DBGridEh1.Columns[17].Visible:=false;
  end;
  TestNoEdit.Text:=DelOther_D.delmas.fieldbyname('memo').AsString;
  GetYPZL_Pairs();

end;

procedure TLLMaterialSR.Button1Click(Sender: TObject);
begin
  if (editypdh.Text='') then
  begin
      showmessage('Vui long nhap Article hoac Mau Don hang truoc!');
      abort;
  end;
  IsYPZL_ZLZLS2:=false;
  //檢查是否有 YPZL_ZLZLS2
  if CheckBox1.Checked=true then
  begin
    with query1 do
    begin
       Active:=false;
       SQL.Clear;
       SQL.Add('Select top 1 YPDH from YPZL_ZLZLS2 where YPDH='''+editypdh.Text+''' ');
       Active:=true;
       if RecordCount>0 then
       begin
         IsYPZL_ZLZLS2:=true;
       end else
       begin
         IsYPZL_ZLZLS2:=false;
       end;
       Active:=false;
    end;
  end;
  if PairsEdit.Text<>'' then
  begin
    PairsSQL:='Convert(float,'+PairsEdit.Text+')';
  end else
  begin
    PairsSQL:='YPZL.Quantity';
  end;
  with QueryLLMaterial do
  begin
    active:=false;
    sql.Clear;
    SQL.Add('Select * from (');
    SQL.Add('select YPZLS.ypdh, YPZLS.Quantity, ypzls.clbh, Sum(ypzls.Usage) as Usage, YPZLS.CLYWMC, ypzls.CLMC, CLZL_LS.cldh, ypzls.dwbh, sum(ypzls.CLSL) CLSL,');
    SQL.Add('       IsNull(KCLLS.Qty,0.00) as Qty, KCZLS.KCQty,KCZLS.NK,KCZLS.TC,KCZLS.HD,KCZLS.KD,KCZLS.XT,KCZLS.GC,KCZLS.ZZZZ,YPZLS.YN,KCZLS.KCBH,ypzls.CSBH,ZSZL.zsywjc ');
    SQL.Add('       ,KCZLS.NK1,KCZLS.TC1,KCZLS.HD1,KCZLS.KD1,KCZLS.H11,KCZLS.NQ, KCZLS.NKNQ ');
    if IsYPZL_ZLZLS2=false then
    begin
      SQL.Add('from (SELECT ypzls.YPDH,'+PairsSQL+' as Quantity ,ypzls.CLBH ,ypzls.CLSL as Usage,CEILING(ypzls.CLSL*'+PairsSQL+'*100)/100 as CLSL ,clzl.CQDH,clzl.zwpm AS CLMC,clzl.Ywpm AS CLYWMC ,clzl.dwbh ,clzl.clzmlb,YPZL.YN,ypzls.CSBH ');
      SQL.Add('      FROM ypzls ypzls');
      SQL.Add('      Left join ypzl on ypzl.YPDH=ypzls.YPDH');
      SQL.Add('      Left join clzl clzl ON ypzls.CLBH = clzl.cldh');
      SQL.Add('      left join YPZL_NoNeedPart on YPZL_NoNeedPart.BWBH=ypzls.BWBH');
      SQL.Add('      WHERE YPZLS.YPDH = '''+editypdh.Text+''' ');
      if CheckBox4.Checked=true then
      SQL.Add('            and YPZL_NoNeedPart.bwbh is null');//過濾包材
      SQL.Add(')  YPZLS');
    end else
    begin
      SQL.Add('from (select ZLZLS2.YPDH,YPZL.Quantity,ZLZLS2.CLBH,Sum(Usage) as Usage,Sum(CLSL) as CLSL,CLZL.CQDH,CLZL.ZWPM as CLMC,CLZL.YWPM as CLYWMC,CLZL.DWBH,clzmlb,ZLZLS2.CSBH  ');
      SQL.Add('      from YPZL_ZLZLS2 ZLZLS2 ');
      SQL.Add('      Left join ypzl on ypzl.YPDH=ZLZLS2.YPDH');
      SQL.Add('      Left join clzl clzl ON ZLZLS2.CLBH = clzl.cldh ');
      SQL.Add('      left join YPZL_NoNeedPart on YPZL_NoNeedPart.BWBH=ZLZLS2.BWBH');
      SQL.Add('      where ZLZLS2.YPDH='''+editypdh.Text+''' and ZLZLS2.MJBH=''ZZZZZZZZZZ'' ');
      if CheckBox4.Checked=true then
      SQL.Add('            and YPZL_NoNeedPart.bwbh is null');
      SQL.Add('      Group by ZLZLS2.YPDH,YPZL.Quantity,ZLZLS2.CLBH,CLZL.CQDH,CLZL.ZWPM,CLZL.YWPM,CLZL.DWBH,clzmlb,ZLZLS2.CSBH ');
      SQL.Add(')  YPZLS');
    end;
    SQL.Add('Left join KCZLS on KCZLS.CLBH=YPZLS.CLBH and KCZLS.CKBH='''+DelOther_D.DelMas.fieldbyname('CKBH').value+''' ');
    SQL.Add('left join CLZL_LS on CLZL_LS.jhdh=YPZLS.clbh');
    SQL.Add('left join ZSZL on ZSZL.zsdh=ypzls.CSBH');
    SQL.Add('left join (select KCLLS.SCBH,KCLLS.CLBH,Sum(Qty) as Qty from KCLLS,KCLL where KCLLS.DFL=''N'' and KCLL.LLNO=KCLLS.LLNO and KCLL.GSBH='''+main.Edit2.Text+''' and KCLLS.SCBH = '''+editypdh.Text+''' Group by KCLLS.SCBH,KCLLS.CLBH) KCLLS on KCLLS.SCBH=YPZLS.YPDH and KCLLS.CLBH=YPZLS.CLBH ');
    SQL.Add('where ypzls.ypdh='''+editypdh.Text+'''');
    SQL.Add('      and ypzls.clbh like '''+editMatNo.Text+'%''');
    if CheckBox2.Checked=true then
    SQL.Add('      and ypzls.CLSL>0 ');
    SQL.Add('group by  YPZLS.ypdh, YPZLS.Quantity,ypzls.clbh,YPZLS.CLYWMC,ypzls.CLMC,KCZLS.KCQty,CLZL_LS.cldh,ypzls.dwbh,KCLLS.Qty,KCZLS.NK,KCZLS.TC,KCZLS.HD,KCZLS.KD,KCZLS.XT,KCZLS.GC,KCZLS.ZZZZ,YPZLS.YN,KCZLS.KCBH,ypzls.CSBH,ZSZL.zsywjc ');
    SQL.Add('          ,KCZLS.NK1,KCZLS.TC1,KCZLS.HD1,KCZLS.KD1,KCZLS.H11,KCZLS.NQ,KCZLS.NKNQ ');
    SQL.Add(') YPZLS where 1=1 ');
    if ComboBox1.ItemIndex=1 then
    SQL.Add(' and Round(Convert(float,CLSL),2)<Round(Convert(float,Qty),2) ');
    if ComboBox1.ItemIndex=2 then
    SQL.Add(' and Round(Convert(float,CLSL),2)>Round(Convert(float,Qty),2)');
    if ComboBox1.ItemIndex=3 then
    SQL.Add(' and Round(Convert(float,CLSL),2)=Round(Convert(float,Qty),2) ');
    if ComboBox1.ItemIndex=4 then
    SQL.Add(' and Round(Convert(float,CLSL),2)<>Round(Convert(float,Qty),2) ');
    SQL.Add('order by   YPZLS.YPDH,YPZLS.CLBH');
    //funcobj.WriteErrorLog(sql.Text);
    //showmessage(SQL.Text);
    Active:=true;
  end;
  bbt6.Enabled := true;
end;
//
procedure TLLMaterialSR.CheckMaterailExists(KCQty:Double);
var IsFind:boolean;
    CLSL:double;
begin
  if ((copy(editYPDH.Text,1,4)='LAIV') and (checkbox3.Checked=false)) then
  begin
    showmessage ( 'Vui long check Only CLSL <=Qty');
    abort;
  end;
  //計算數量
  CLSL:=QueryLLMaterial.fieldbyname('CLSL').Value;
  if CheckBox3.Checked=true then CLSL:=CLSL-QueryLLMaterial.fieldbyname('Qty').Value;;
  //
  if CLSL>0 then
  begin
    IsFind:=false;
    DelOther_D.DelDet.First;
    while not  DelOther_D.DelDet.Eof do
    begin
      with DelOther_D.DelDet do
      begin
        if ((QueryLLMaterial.fieldbyname('CLBH').Value=DelOther_D.DelDet.FieldByName('CLBH').AsString) and (QueryLLMaterial.fieldbyname('YPDH').Value=DelOther_D.DelDet.FieldByName('SCBH').AsString))   then
        begin
          Edit;
          fieldbyname('TempQty').value:=CLSL;
          Post;
          IsFind:=true;
          break;
        end;
        Next;
      end;
    end;
    if IsFind=false then
    begin
      with DelOther_D.DelDet do
      begin
        
        insert;
        fieldbyname('SCBH').Value:=QueryLLMaterial.fieldbyname('ypdh').Value;
        fieldbyname('CLBH').Value:=QueryLLMaterial.fieldbyname('CLBH').Value;
        fieldbyname('YWPM').Value:=QueryLLMaterial.fieldbyname('CLYWMC').Value;
        fieldbyname('DWBH').value:=QueryLLMaterial.fieldbyname('DWBH').value;
        fieldbyname('Memo').value:=QueryLLMaterial.fieldbyname('CGNO').value;
        fieldbyname('TempQty').value:=CLSL;
        //fieldbyname('CostID').value:='627';
        fieldbyname('DFL').value:='N';
        post;
        //
        QueryLLMaterial.Edit;
        QueryLLMaterial.FieldByName('Qty').Value:=QueryLLMaterial.FieldByName('Qty').Value+CLSL;
        QueryLLMaterial.Post;
      end;
    end;
  end;
end;
//

procedure TLLMaterialSR.DBGridEh1DblClick(Sender: TObject);
var KCQty:Double;
begin
   //20150424檢查開發和技轉領料
  if (not QueryLLMaterial.Active) then
  begin
    abort;
  end;
  if (QueryLLMaterial.recordcount<1) then
  begin
    abort;
  end;
  if QueryLLMaterial.FieldByName('KCQty').value=0 then
  begin
    showmessage('Khong con ton kho, van can mo phieu sao?');
  end;
  //出貨鎖定，不得再開領料單
  if QueryLLMaterial.FieldByName('YN').value='5' then
  begin
    showmessage('Already finished. Pls checked accont first.' );
    abort;
  end;

    //成品入庫鎖定，不得再開領料單
  if QueryLLMaterial.FieldByName('YN').value='2' then
  begin
    showmessage('Already finished in warehouse . Pls checked account first.' );
    abort;
  end;

  CheckMaterailExists(KCQty);
  showmessage('Succeed.');
end;

procedure TLLMaterialSR.Button2Click(Sender: TObject);
var bm:Tbookmark;
    i:integer;
    bookmarklist:tbookmarklistEh;
begin
 //
  if messagedlg('Do you really want to copy these record?',mtconfirmation,[mbYes,mbNo],0)=mrYes then
  begin
    QueryLLMaterial.disablecontrols;
    bm:=QueryLLMaterial.getbookmark;
    bookmarklist:=DBGridEh1.selectedrows;
    if bookmarklist.count>0 then
    begin
      QueryLLMaterial.disablecontrols;
      bm:=QueryLLMaterial.getbookmark;
      bookmarklist:=DBGridEh1.selectedrows;
      if bookmarklist.count>0 then
      begin
      try
        for i:=0 to bookmarklist.count-1 do
        begin
          QueryLLMaterial.gotobookmark(pointer(bookmarklist[i]));
          CheckMaterailExists(0);
        end;
      finally
        begin
          QueryLLMaterial.gotobookmark(bm);
          QueryLLMaterial.freebookmark(bm);
          QueryLLMaterial.enablecontrols;
          showmessage('You have finish copy!');
        end;
      end;
      end;
    end;
    QueryLLMaterial.enablecontrols;
  end;
  //
end;

procedure TLLMaterialSR.DBGridEh1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if ((strtofloat(floattostr(QueryLLMaterial.FieldByName('Qty').value))=(strtofloat(floattostr(QueryLLMaterial.FieldByName('CLSL').value))))) then
  begin
    DBGridEh1.canvas.font.color:=clBlue;
  end;
  if ((strtofloat(floattostr(QueryLLMaterial.FieldByName('Qty').value))>(strtofloat(floattostr(QueryLLMaterial.FieldByName('CLSL').value))))) then
  begin
    DBGridEh1.canvas.font.color:=clRed;
  end;
end;

procedure TLLMaterialSR.FormShow(Sender: TObject);
begin
  main.FormLanguage(Pointer(self),self.Name);
end;

procedure TLLMaterialSR.editYPDHExit(Sender: TObject);
begin
  GetYPZL_Pairs();
end;

procedure TLLMaterialSR.GetYPZL_Pairs();
begin
  if ((TestNoEdit.text='') and (editYPDH.text='')) then
  begin
    //showmessage('Vui long nhap Article hoac Mau Don hang truoc!');
    abort;
  end;
  with  query1 do
  begin
     active:=false;
     sql.Clear;
     sql.Add('select YPZL.ypdh,Max(shoetest.testno) as TestNo,IsNull(YPZL.Quantity,sum(shoetest2.qty)) as qty from YPZL ');
     sql.Add('left join shoetest on YPZL.YPDH=shoetest.ypdh ');
     sql.Add('left join shoetest2 on shoetest.testno=shoetest2.testno');
     sql.Add('where 1=1 ');
     if TestNoEdit.Text<>'' then
     sql.Add('    and shoetest.testno='''+TestNoEdit.text+''' ');
     if editYPDH.Text<>'' Then
     sql.Add('    and YPZL.YPDH='''+editYPDH.text+''' ');
     sql.Add('group by YPZL.ypdh,YPZL.Quantity');
     //funcObj.WriteErrorLog(SQL.Text);
     active:=true;
  end;
  if ((query1.RecordCount=0) or (query1.RecordCount>1)) then
  begin
    showmessage('Vui long nhap chinh xac NO !');
    abort;
  end;
  editypdh.Text:=query1.fieldbyname('ypdh').value;
  query1.Active:=false;
end;
procedure TLLMaterialSR.TestNoEditExit(Sender: TObject);
begin
  GetYPZL_Pairs();
end;

procedure TLLMaterialSR.Detail1Click(Sender: TObject);
begin
  LLMaterial_Detail:=TLLMaterial_Detail.Create(self);
  LLMaterial_Detail.Show;
end;

procedure TLLMaterialSR.bbt6Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin
  if QueryLLMaterial.Active then
  begin
    if QueryLLMaterial.recordcount=0 then
    begin
      showmessage('No record.');
      abort;
    end;
  end else
  begin
    showmessage('No record.');
    abort;
  end;

  try
    eclApp:=CreateOleObject('Excel.Application');
    WorkBook:=CreateOleObject('Excel.Sheet');
  except
    Application.MessageBox('NO Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
    Exit;
  end;
  try
    WorkBook:=eclApp.workbooks.Add;
    eclApp.Cells(1,1):='NO';
    for   i:=1   to   QueryLLMaterial.fieldcount   do
    begin
      eclApp.Cells(1,i+1):=QueryLLMaterial.fields[i-1].FieldName;
    end;
    QueryLLMaterial.First;
    j:=2;
    while   not  QueryLLMaterial.Eof   do
    begin
        eclApp.Cells(j,1):=j-1;
        for   i:=1   to   QueryLLMaterial.fieldcount   do
          begin
            eclApp.Cells(j,i+1):=QueryLLMaterial.Fields[i-1].Value;
            eclApp.Cells.Cells.item[j,i+1].font.size:='8';
          end;
        QueryLLMaterial.Next;
        inc(j);
    end;
    eclapp.columns.autofit;
    showmessage('Succeed.');
    eclApp.Visible:=True;
  except
    on   F:Exception   do
      showmessage(F.Message);
  end;
end;

procedure TLLMaterialSR.QueryLLMaterialCalcFields(DataSet: TDataSet);
begin
  if TestNoEdit.Text <> '' then begin
    Query2.Active := false;
    Query2.SQL.Clear;
    Query2.SQL.Add('Select max(CGNO) as CGNO from CGZLSS where memo = '''+TestNoEdit.Text+'''');
    Query2.SQL.Add('and CLBH = '''+QueryLLMaterial.fieldbyname('clbh').AsString+'''');
    if editYPDH.Text <> '' then 
      Query2.SQL.Add('and ZLBH = '''+editYPDH.Text+'''');
    //funcobj.WriteErrorLog(Query2.SQL.Text);
    Query2.Active := true;
    QueryLLMaterial.fieldbyname('CGNO').AsString := Query2.Fields[0].AsString;
  end;
end;

end.
