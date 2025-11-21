unit PurEquipment1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBTables, DB, GridsEh, DBGridEh, Mask, DBCtrls, ComCtrls,
  StdCtrls, Buttons, ExtCtrls, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls,
  DynVarsEh, EhLibVCL, DBAxisGridsEh,comobj, iniFiles, dateutils;

type
  TPurEquipment = class(TForm)
    Panel1: TPanel;
    Label18: TLabel;
    bbInsert: TBitBtn;
    bbDelete: TBitBtn;
    bbModify: TBitBtn;
    bbSave: TBitBtn;
    bbCancel: TBitBtn;
    bbExit: TBitBtn;
    bbQuery: TBitBtn;
    bbFirst: TBitBtn;
    bbPrior: TBitBtn;
    bbNext: TBitBtn;
    bbLast: TBitBtn;
    bbExcel: TBitBtn;
    Panel2: TPanel;
    bdInsert: TBitBtn;
    bdDelete: TBitBtn;
    bdModify: TBitBtn;
    bdSave: TBitBtn;
    bdCancel: TBitBtn;
    bdExit: TBitBtn;
    bdFirst: TBitBtn;
    bdPrior: TBitBtn;
    bdNext: TBitBtn;
    bdLast: TBitBtn;
    bdPrint: TBitBtn;
    bdExcel: TBitBtn;
    PC1: TPageControl;
    TS1: TTabSheet;
    Panel3: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    edtCGNO: TEdit;
    btnQuery: TButton;
    CheckMine: TCheckBox;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    Panel4: TPanel;
    Label11: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    dbe_CGNO: TDBEdit;
    dbe_USERDATE: TDBEdit;
    DepIDBtn: TBitBtn;
    DBEdit1: TDBEdit;
    ZSBHBtn: TBitBtn;
    DBGrid1: TDBGridEh;
    TS2: TTabSheet;
    TS_DelDet: TPanel;
    Panel5: TPanel;
    Label7: TLabel;
    Label6: TLabel;
    Label12: TLabel;
    Label14: TLabel;
    dbeCGNO: TDBEdit;
    dbeSBBH: TDBEdit;
    dbeZWPM: TDBEdit;
    dbeYWPM: TDBEdit;
    bbtSBBH: TBitBtn;
    DBGrid2: TDBGridEh;
    CGMas: TQuery;
    DS1: TDataSource;
    UpMas: TUpdateSQL;
    UPDet: TUpdateSQL;
    CGDet: TQuery;
    DS2: TDataSource;
    CGMasCGNO: TStringField;
    CGMasZSBH: TStringField;
    CGMasDepID: TStringField;
    CGMasCGDate: TDateTimeField;
    CGMasUSERDate: TDateTimeField;
    CGMasUSERID: TStringField;
    CGMasYN: TStringField;
    CGMasDepName: TStringField;
    CGDetCGNO: TStringField;
    CGDetSBBH: TStringField;
    CGDetYWPM: TStringField;
    CGDetZWPM: TStringField;
    CGDetLSBH: TStringField;
    CGDetQUCBH: TStringField;
    CGDetUSERDate: TDateTimeField;
    CGDetUSERID: TStringField;
    CGDetYN: TStringField;
    BDelRec: TQuery;
    Qtemp: TQuery;
    CGDetQty: TFloatField;
    CGMasPURPOSE: TStringField;
    CGMasZSJC_YW: TStringField;
    CGMasGSBH: TStringField;
    Panel6: TPanel;
    Panel7: TPanel;
    BO1: TBitBtn;
    BO2: TBitBtn;
    BO5: TBitBtn;
    BO3: TBitBtn;
    BO4: TBitBtn;
    DBGrid3: TDBGridEh;
    CGDetS: TQuery;
    CGDetSCGNO: TStringField;
    CGDetSSGNO: TStringField;
    CGDetSSBBH: TStringField;
    CGDetSSGQty: TFloatField;
    CGDetSQty: TFloatField;
    CGDetSYWPM: TStringField;
    CGDetSUSERDate: TDateTimeField;
    CGDetSUSERID: TStringField;
    CGDetSYN: TStringField;
    UPDetS: TUpdateSQL;
    DS3: TDataSource;
    Splitter1: TSplitter;
    CGDetSDepID: TStringField;
    CGDetSDepName: TStringField;
    BitBtn1: TBitBtn;
    CGDetDWBH: TStringField;
    CGDetMemo: TStringField;
    CGDetYQDate: TDateTimeField;
    BitBtn2: TBitBtn;
    CGDetVNPrice: TCurrencyField;
    CGDetUSPrice: TFloatField;
    CGDetACCUS: TFloatField;
    CGDetACCVN: TFloatField;
    CGDetDYWSM: TStringField;
    CGDetDZWSM: TStringField;
    CGMasDepMemo: TStringField;
    CGMasZSJC_ZW: TStringField;
    CGDetVWPM: TStringField;
    btn_apply: TBitBtn;
    CGDetHGPM: TStringField;
    CGMasflowflag: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure btnQueryClick(Sender: TObject);
    procedure bbQueryClick(Sender: TObject);
    procedure bbInsertClick(Sender: TObject);
    procedure bbModifyClick(Sender: TObject);
    procedure bbCancelClick(Sender: TObject);
    procedure bbDeleteClick(Sender: TObject);
    procedure DBGrid1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure CGMasAfterOpen(DataSet: TDataSet);
    procedure bbSaveClick(Sender: TObject);
    procedure ZSBHBtnClick(Sender: TObject);
    procedure DepIDBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure PC1Change(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure CGDetAfterOpen(DataSet: TDataSet);
    procedure bdInsertClick(Sender: TObject);
    procedure bdModifyClick(Sender: TObject);
    procedure bbtSBBHClick(Sender: TObject);
    procedure bdDeleteClick(Sender: TObject);
    procedure bdCancelClick(Sender: TObject);
    procedure DBGrid2GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure DBGrid2Columns1EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure bdSaveClick(Sender: TObject);
    procedure DBGrid1Columns2EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGrid1Columns3EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGrid1EditButtonClick(Sender: TObject);
    procedure bdPrintClick(Sender: TObject);
    procedure CGDetSAfterOpen(DataSet: TDataSet);
    procedure BO1Click(Sender: TObject);
    procedure BO2Click(Sender: TObject);
    procedure BO5Click(Sender: TObject);
    procedure BO4Click(Sender: TObject);
    procedure BO3Click(Sender: TObject);
    procedure DBGrid3DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure DBGrid3EditButtonClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure CGDetCalcFields(DataSet: TDataSet);
    procedure btn_applyClick(Sender: TObject);
    procedure bbExcelClick(Sender: TObject);
    procedure bdExcelClick(Sender: TObject);
  private
    NDate:TDate;
    AppDir:String;
    { Private declarations }
    procedure UpdateCGZL_Purpose();
    procedure ExportDefaultExcel(Query:TQuery);
  public
    PrintLabel:TLabel;
    WordWrapMemo:TMemo;
    CheckPrintMaterial:string;
    { Public declarations }
    function GetTextHeight(Str:String):integer;
  end;

var
  PurEquipment: TPurEquipment;

implementation

uses main1, PurEquipmentDepName1, PurEquipmentSupplier1, PurEquipment_SBBH1,
     PurEquipment_print1, PurEquipment_SGDH1, FunUnit, PurEquipment_printP1, ApplyPurEquipment1;

{$R *.dfm}

function TPurEquipment.GetTextHeight(Str:String):integer;
var rect: TRect;
begin
  PrintLabel.Caption:=Str;
  FillChar(rect, SizeOf(TRect), 0);
  rect.Width := PrintLabel.Width;
  rect.Height := PrintLabel.Height;
  if 0 = DrawText(PrintLabel.Canvas.Handle, PrintLabel.Caption, Length(PrintLabel.Caption), rect, DT_EDITCONTROL or DT_WORDBREAK or DT_CALCRECT) then
  begin
    result:=0;
  end else
  begin
    result:= rect.Height;
  end;
end;


procedure TPurEquipment.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=CaFree;
end;

procedure TPurEquipment.FormDestroy(Sender: TObject);
begin
  PurEquipment:=nil;
end;

procedure TPurEquipment.UpdateCGZL_Purpose();
begin
  //Update CGZL.Purpose
  with Qtemp do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('update TSCD_CGZL set PURPOSE=A.CQDH from (');
    SQL.Add('select TSCD_CGZL.CGNO,Max(TSCD_SB.CQDH) as CQDH ');
    SQL.Add('from TSCD_CGZL');
    SQL.Add('left join TSCD_CGZLS on TSCD_CGZLS.CGNO=TSCD_CGZL.CGNO');
    SQL.Add('left join TSCD_SB on TSCD_CGZLS.SBBH=TSCD_SB.SBBH');
    SQL.Add('where TSCD_CGZL.CGNO='''+CGMas.fieldbyname('CGNO').Value+'''');
    SQL.Add('Group by TSCD_CGZL.CGNO ) A ');
    SQL.Add('where A.CGNO=TSCD_CGZL.CGNO ');
    Execsql;
  end;
end;
procedure TPurEquipment.btnQueryClick(Sender: TObject);
begin

  with CGMas do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select TSCD_CGZL.*,BDepartment.DepName,BDepartment.DepMemo,TSCD_ZSZL.ZSJC_YW,TSCD_ZSZL.ZSJC_ZW ');
    SQL.Add('from TSCD_CGZL');
    SQL.Add('left join  TSCD_BDepartment BDepartment on BDepartment.ID=TSCD_CGZL.DepID ');
    SQL.Add('left join TSCD_ZSZL on TSCD_ZSZL.zsdh=TSCD_CGZL.ZSBH ');
    SQL.Add('where ISNULL(flowflag,'''')<>''X'' and TSCD_CGZL.CGNO like '''+edtCGNO.Text+'%'+''' ');
    SQL.Add('and convert(smalldatetime,convert(varchar,TSCD_CGZL.USERDATE,111)) between ');
    SQL.add(''''+formatdatetime('yyyy/MM/dd',DTP1.Date) +'''');
    SQL.add(' and ');
    SQL.add(''''+formatdatetime('yyyy/MM/dd',DTP2.Date) +'''');
    if CheckMine.Checked then
    begin
      SQL.Add('and TSCD_CGZL.USERID='+''''+main.Edit1.Text+'''');
    end;
    SQL.Add('and TSCD_CGZL.GSBH='''+main.Edit2.Text+''' ');    
    SQL.Add('order by CGNO DESC');
    //funcObj.WriteErrorLog(sql.Text);
    Active:=true;
  end;
  CGDet.Active:=true;
  CGDetS.Active:=true;
  btn_apply.Enabled:=true;
end;

procedure TPurEquipment.btn_applyClick(Sender: TObject);
begin
  if ApplyPurEquipment = nil then
    ApplyPurEquipment:=TApplyPurEquipment.create(self);
    ApplyPurEquipment.show;
end;

procedure TPurEquipment.bbQueryClick(Sender: TObject);
begin
  panel3.Visible:=true;
end;

procedure TPurEquipment.bbInsertClick(Sender: TObject);
begin
  with CGMas do
  begin
    requestlive:=true;
    cachedupdates:=true;
    Insert;
  end;
  bbSave.Enabled:=true;
  bbCancel.Enabled:=true;
  DBGrid1.columns[1].ButtonStyle:=cbsEllipsis;
  DBGrid1.columns[3].ButtonStyle:=cbsEllipsis;
  ZSBHBtn.Visible:=true;
  DepIDBtn.Visible:=true;
end;

procedure TPurEquipment.bbModifyClick(Sender: TObject);
begin
  with CGMas do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
  bbSave.Enabled:=true;
  bbCancel.Enabled:=true;
  DBGrid1.columns[1].ButtonStyle:=cbsEllipsis;
  DBGrid1.columns[3].ButtonStyle:=cbsEllipsis;
  ZSBHBtn.Visible:=true;
  DepIDBtn.Visible:=true;
end;

procedure TPurEquipment.bbCancelClick(Sender: TObject);
begin
  with CGMas do
  begin
    active:=false;
    requestlive:=false;
    cachedupdates:=false;
    active:=true;
  end;
  bbSave.Enabled:=false;
  bbCancel.Enabled:=false;
  DBGrid1.columns[1].ButtonStyle:=cbsnone;
  DBGrid1.columns[3].ButtonStyle:=cbsnone;
  ZSBHBtn.Visible:=false;
  DepIDBtn.Visible:=false;
end;

procedure TPurEquipment.bbDeleteClick(Sender: TObject);
begin
  if CGDet.recordcount = 0 then
  begin
    with CGMas do
    begin
      if fieldbyname('USERID').value=main.edit1.Text then
      begin
        requestlive:=true;
        cachedupdates:=true;
        edit;
        fieldbyname('YN').Value:='0';
      end else
        showmessage('It is not yours,can not delete.');
    end;
  end else
  begin
    showmessage('Pls delete the Equipment Detail first.')
  end;
  bbSave.Enabled:=true;
  bbCancel.Enabled:=true;
end;

procedure TPurEquipment.ExportDefaultExcel(Query:TQuery);
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin
  if Query.Active then
  begin
    if Query.recordcount=0 then
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
    //eclApp.Cells(1,1):='NO';
    for   i:=0   to   Query.fieldcount-1   do
    begin
      eclApp.Cells(1,i+1):=Query.fields[i].FieldName;
    end;
    Query.First;
    j:=2;
    while   not  Query.Eof   do
      begin
        eclApp.Cells(j,1):=j-1;
        for   i:=0   to   Query.fieldcount-1   do
        begin
          eclApp.Cells(j,i+1):=Query.Fields[i].AsString;
        end;
        Query.Next;
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

procedure TPurEquipment.bbExcelClick(Sender: TObject);
begin
  ExportDefaultExcel(CGMas);
end;

procedure TPurEquipment.DBGrid1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if CGMas.FieldByName('YN').value='0' then
  begin
    DBGrid1.canvas.font.color:=clred;
  end;
end;

procedure TPurEquipment.CGMasAfterOpen(DataSet: TDataSet);
begin
  bbInsert.Enabled:=true;
  bbDelete.Enabled:=true;
  bbModify.Enabled:=true;
  bbExcel.Enabled:=true;
end;

procedure TPurEquipment.bbSaveClick(Sender: TObject);
var y,m,CGNO:string;
    i:integer;
begin
  with Qtemp do
  begin
    active:=false;
    sql.Clear;
    sql.Add('select year(getdate()) as FY,month(getdate()) as FM,getdate() as NDate ');
    active:=true;
    y:=fieldbyname('FY').asstring;
    m:=fieldbyname('FM').asstring;
    NDate:=fieldbyname('NDate').Value;
    active:=false;
  end;
  if length(m)<2 then
    m:='0'+m;
  try
    CGDet.Active:=false;
    CGMas.first;
    for i:=1 to CGMas.RecordCount do
    begin
      case CGMas.updatestatus of
        usinserted:
        begin
          with Qtemp do
          begin
            active:=false;
            sql.Clear;
            sql.Add('select CGNO from TSCD_CGZL where CGNO like '+''''+y+m+'%'+'''');
            sql.add('order by CGNO');
            active:=true;

            if recordcount >0 then
            begin
              last;
              CGNO:=fieldbyname('CGNO').AsString;
              CGNO:=copy(CGNO,7,5);
              CGNO:=inttostr(strtoint(CGNO)+1);
              while length(CGNO)<5 do
              begin
                CGNO:='0'+CGNO;
              end;
            end else
            begin
              CGNO:='00001';
            end;
            CGNO:=y+m+CGNO;
            active:=false;
          end;
          CGMas.edit;
          CGMas.fieldbyname('CGNO').Value:=CGNO;
          CGMas.FieldByName('CGDate').Value:=NDate;
          CGMas.FieldByName('GSBH').Value:=main.Edit2.Text;
          CGMas.FieldByName('userID').Value:=main.edit1.text;
          CGMas.FieldByName('userdate').Value:=NDate;
          CGMas.FieldByName('YN').Value:='1';
          upMas.apply(ukinsert);
        end;
        usmodified:
        begin
          if CGMas.FieldByName('USERID').value<>main.Edit1.Text then
          begin
            showmessage('不是你的，不要亂動。khong phai ban khong duoc tu sua');
          end else
          begin
            if CGMas.fieldbyname('YN').value='0' then
            begin
              with BDelRec do
              begin
              active:=false;
                sql.Clear;
                {sql.add('insert into BDelRec ');
                sql.add('(TableName ,TNO,CLBH,OldID,DelID,DelDate)');
                sql.add('values ('+''''+'TSCD_CGZL'+''''+','+''''+CGMas.fieldbyname('CGNO').Value+'''');
                sql.add(','+''''+' '+''''+','+''''+CGMas.fieldbyname('USERID').Value+''''+',');
                sql.add(''''+main.Edit1.Text+''''+',getdate())'); }
                SQL.Add('Update TSCD_CGZL Set flowflag=''X'' where CGNO='''+CGMas.FieldByName('CGNO').AsString+''' ');
                execsql;
                active:=false;
              end;
              //upMas.apply(ukdelete);
            end else
            begin
              if (NDate-CGMas.FieldByName('USERDATE').value)<=30  then
              begin
                CGMas.edit;
                CGMas.FieldByName('userID').Value:=main.edit1.text;
                CGMas.FieldByName('userdate').Value:=Ndate;
                upMas.apply(ukmodify);
              end else
              begin
                showmessage('Date>30, can not modify.');
              end;
            end;
          end;
        end;
      end;
      CGMas.next;
    end;
  CGMas.active:=false;
  CGMas.cachedupdates:=false;
  CGMas.requestlive:=false;
  CGMas.active:=true;
  CGDet.Active:=true;
  bbSave.enabled:=false;
  bbCancel.enabled:=false;
  //
  DBGrid1.columns[1].ButtonStyle:=cbsnone;
  DBGrid1.columns[3].ButtonStyle:=cbsnone;
  ZSBHBtn.Visible:=false;
  DepIDBtn.Visible:=false;
  showmessage('Succeed.');
  except
    Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
  end;

end;

procedure TPurEquipment.ZSBHBtnClick(Sender: TObject);
begin
    PurEquipmentSupplier:=TPurEquipmentSupplier.Create(self);
    PurEquipmentSupplier.Show;
end;

procedure TPurEquipment.DepIDBtnClick(Sender: TObject);
begin
  PurEquipmentDepName:=TPurEquipmentDepName.Create(self);
  PurEquipmentDepName.Show;
end;

procedure TPurEquipment.FormCreate(Sender: TObject);
begin
  AppDir:=ExtractFilePath(Application.ExeName);
  with Qtemp do
  begin
    active:=false;
    sql.Clear;
    sql.add('select getdate() as NDate ');
    active:=true;
    NDate:=fieldbyname('NDate').Value;
    DTP1.Date:= NDate-3;
    DTP2.Date:= NDate;
  end;
  PC1.ActivePageIndex:=0;
  //計算Text 高度
  PrintLabel:=TLabel.Create(self);
  PrintLabel.Parent:=Panel1;
  PrintLabel.Visible:=false;
  PrintLabel.Font.Size:=10;
end;

procedure TPurEquipment.PC1Change(Sender: TObject);
begin
  if PC1.ActivePage=TS1 then
  begin
    panel1.visible:=true;
    panel2.visible:=false;
  end else
  begin
    panel1.visible:=false;
    panel2.visible:=true;
  end;
end;

procedure TPurEquipment.DBGrid1DblClick(Sender: TObject);
begin
  if  CGMas.Active then
  begin
    if  (CGMas.recordcount>0) then
    begin
      PC1.ActivePage:=TS2;
      panel1.visible:=false;
      panel2.visible:=true;
    end;
  end;
end;

procedure TPurEquipment.CGDetAfterOpen(DataSet: TDataSet);
begin
  bdInsert.Enabled:=true;
  bdDelete.Enabled:=true;
  bdModify.Enabled:=true;
  bdPrint.Enabled:=true;
  BitBtn1.Enabled:=true;
  bdExcel.Enabled:=true;
  if ((NDate-CGMas.FieldByName('USERDATE').value)>30) then
  begin
    bdInsert.Enabled:=false;
    bdDelete.Enabled:=false;
    bdModify.Enabled:=false;
  end;
  if CGMas.FieldByName('USERID').value<>main.Edit1.text then
  begin
    bdInsert.Enabled:=false;
    bdDelete.Enabled:=false;
    bdModify.Enabled:=false;;
  end;
  if CGMas.cachedupdates then
  begin
    bdInsert.Enabled:=false;
    bdDelete.Enabled:=false;
    bdModify.Enabled:=false;
  end;
end;

procedure TPurEquipment.CGDetCalcFields(DataSet: TDataSet);
begin
  with CGDet do
  begin
    if not FieldByName('USPrice').IsNull then
      if FieldByName('USPrice').value<>0 then
      begin
        FieldByName('ACCUS').value:=FieldByName('Qty').value*FieldByName('USPrice').value;
      end;
    if not FieldByName('VNPrice').IsNull then
      if FieldByName('VNPrice').value<>0 then
      begin
        FieldByName('ACCVN').value:=FieldByName('Qty').value*FieldByName('VNPrice').value;
      end;
  end;
end;

procedure TPurEquipment.bdInsertClick(Sender: TObject);
begin
  //
  with CGDet do
  begin
    requestlive:=true;
    cachedupdates:=true;
    insert;
  end;
  DBGrid2.columns[0].ButtonStyle:=cbsEllipsis;
  bdSave.Enabled:=true;
  bdCancel.Enabled:=true;
  bbtSBBH.Visible:=true;
  //
end;

procedure TPurEquipment.bdModifyClick(Sender: TObject);
begin
  //
  if CGMas.RequestLive then
  begin
    showmessage('Pls save EntryEquipment data first.');
    PC1.ActivePage:=TS2;
    panel2.visible:=true;
    panel1.visible:=false;
    abort;
  end;
  //
  with CGDet do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
  DBGrid2.columns[0].ButtonStyle:=cbsEllipsis;
  bbtSBBH.Visible:=true;
  bdSave.Enabled:=true;
  bdCancel.Enabled:=true;
  //
end;

procedure TPurEquipment.bbtSBBHClick(Sender: TObject);
begin
  PurEquipment_SBBH:=TPurEquipment_SBBH.Create(self);
  PurEquipment_SBBH.Show;
end;

procedure TPurEquipment.bdDeleteClick(Sender: TObject);
begin
  if CGMas.RequestLive then
  begin
    showmessage('Pls save EntryEquipment data first.');
    PC1.ActivePage:=TS2;
    panel2.visible:=true;
    panel1.visible:=false;
    abort;
  end;
  if CGDetS.recordcount>0 then
  begin
    showmessage('Pls delete the order detail first.');
    abort;
  end;
  //
  with CGDet do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;                                                                         
    fieldbyname('YN').Value:='0';
  end;
  bdSave.Enabled:=true;
  bdCancel.Enabled:=true;
end;

procedure TPurEquipment.bdExcelClick(Sender: TObject);
begin
  ExportDefaultExcel(CGDet);
end;

procedure TPurEquipment.bdCancelClick(Sender: TObject);
begin
  with CGDet do
  begin
    active:=false;
    requestlive:=false;
    cachedupdates:=false;
    active:=true;
  end;
  bdSave.Enabled:=false;
  bdCancel.Enabled:=false;
  bbtSBBH.Visible:=false;
  DBGrid2.columns[0].ButtonStyle:=cbsNone;
end;

procedure TPurEquipment.DBGrid2GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if CGDet.FieldByName('YN').value='0' then
  begin
    DBGrid2.canvas.font.color:=clred;
  end;
end;

procedure TPurEquipment.DBGrid2Columns1EditButtonClick(Sender: TObject;
  var Handled: Boolean);
begin
  bbtSBBH.Click;
end;

procedure TPurEquipment.bdSaveClick(Sender: TObject);
var i:integer;
begin
    try
    CGDet.first;
    for i:=1 to CGDet.RecordCount do
    begin
      case CGDet.updatestatus of
        usinserted:
          begin
            if CGMas.FieldByName('USERID').value<>main.Edit1.Text then
              begin
                showmessage('不是你的，不要亂動。khong phai ban khong duoc tu sua');
              end else
              begin
                if CGDet.fieldbyname('SBBH').isnull then
                begin
                  CGDet.delete;
                end else
                begin
                    CGDet.edit;
                    CGDet.fieldbyname('CGNO').Value:=CGMas.fieldbyname('CGNO').Value;
                    CGDet.FieldByName('userID').Value:=main.edit1.text;
                    CGDet.FieldByName('userdate').Value:=Ndate;
                    CGDet.FieldByName('YN').Value:='1';
                    upDet.apply(ukinsert);
                end;
              end;
          end;
        usmodified:
           begin
               if CGDet.FieldByName('USERID').value<>main.Edit1.Text then
               begin
                 showmessage('不是你，不要亂動。khong phai ban khong duoc tu sua');
               end
               else
                 begin
                    if CGDet.fieldbyname('YN').value='0'then
                    begin
                       with BDelRec do
                       begin
                         active:=false;
                         sql.Clear;
                         sql.add('insert into BDelRec ');
                         sql.add('(TableName ,TNO,CLBH,OldID,DelID,DelDate)');
                         sql.add('values ('+''''+'TSCD_CGZLS'+''''+','+''''+CGMas.fieldbyname('CGNO').Value+'''');
                         sql.add(','+''''+' '+''''+','+''''+CGMas.fieldbyname('USERID').Value+''''+',');
                         sql.add(''''+main.Edit1.Text+''''+',getdate())');
                         execsql;
                         active:=false;
                       end;
                       UpDet.apply(ukdelete);
                    end else
                    begin
                         if (NDate-CGMas.FieldByName('USERDATE').value)<=3  then
                         begin
                              CGDet.edit;
                              CGDet.fieldbyname('CGNO').Value:=CGMas.fieldbyname('CGNO').Value;
                              CGDet.FieldByName('userID').Value:=main.edit1.text;
                              CGDet.FieldByName('userdate').Value:=Ndate;
                              CGDet.FieldByName('YN').Value:='1';
                              upDet.apply(ukmodify);
                         end  else
                         begin
                               showmessage('Date>3, can not modify.');
                         end;
                     end;
                 end;
            end;
      end;
      CGDet.next;
    end;
  CGDet.active:=false;
  CGDet.cachedupdates:=false;
  CGDet.requestlive:=false;
  CGDet.active:=true;

  bdSave.Enabled:=false;
  bdCancel.Enabled:=false;
  bbtSBBH.Visible:=false;
  DBGrid2.columns[0].ButtonStyle:=cbsNone;
  //更新CGZL.Purpose
  UpdateCGZL_Purpose();
  showmessage('Succeed.');
  except
    Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
  end;

end;

procedure TPurEquipment.DBGrid1Columns2EditButtonClick(Sender: TObject;
  var Handled: Boolean);
begin
   ZSBHBtn.Click;
end;

procedure TPurEquipment.DBGrid1Columns3EditButtonClick(Sender: TObject;
  var Handled: Boolean);
begin
  DepIDBtn.Click;
end;

procedure TPurEquipment.DBGrid1EditButtonClick(Sender: TObject);
begin
  if (DBGrid1.SelectedField.FieldName='DepID') then
  begin
    DepIDBtn.Click;
  end;
  if (DBGrid1.SelectedField.FieldName='ZSBH') then
  begin
    ZSBHBtn.Click;
  end;
end;

procedure TPurEquipment.bdPrintClick(Sender: TObject);
begin
  if CGDet.RequestLive then
  begin
    showmessage('Pls save Master data first.');
    Abort;
  end;
  PurEquipment_print:=TPurEquipment_print.Create(self);
  PurEquipment_print.BeforPrint_Rowi:=0;
  PurEquipment_print.quickrep1.prepare;
  PurEquipment_print.QPage1.caption:='共 '+inttostr(PurEquipment_print.Quickrep1.QRPrinter.pagecount)+' 頁';
  PurEquipment_print.quickrep1.preview;
  PurEquipment_print.free;
end;

procedure TPurEquipment.CGDetSAfterOpen(DataSet: TDataSet);
begin
  BO1.Enabled:=true;
  BO2.Enabled:=true;
  BO5.Enabled:=true;
  if ((NDate-CGMas.FieldByName('USERDATE').value)>30) then
  begin
    BO1.Enabled:=false;
    BO2.Enabled:=false;
    BO5.Enabled:=false;
  end;
  if CGMas.FieldByName('USERID').value<>main.Edit1.text then
  begin
    BO1.Enabled:=false;
    BO2.Enabled:=false;
    BO5.Enabled:=false;;
  end;
  if CGMas.cachedupdates then
  begin
    BO1.Enabled:=false;
    BO2.Enabled:=false;
    BO5.Enabled:=false;
  end;
end;

procedure TPurEquipment.BitBtn1Click(Sender: TObject);
begin
  if CGDet.RequestLive then
  begin
    showmessage('Pls save Master data first.');
    Abort;
  end;
  PurEquipment_printP:=TPurEquipment_printP.Create(self);
  PurEquipment_printP.quickrep1.prepare;
  if  Messagedlg(Pchar('In theo ten tieng viet chon Yes, in theo ten hai quan chon No'),mtInformation,[mbNo,mbYes],0)=mrYes then
  begin
    CheckPrintMaterial:='TV';
  end else
  begin
    CheckPrintMaterial:='HQ';
  end;
  PurEquipment_printP.quickrep1.preview;
  PurEquipment_printP.free;
end;

procedure TPurEquipment.BitBtn2Click(Sender: TObject);
function GetExcelColumnID(i:integer):string;
  var str:string;
  begin
    case i of
      1:str:='A';  2:str:='B';  3:str:='C';
      4:str:='D';  5:str:='E';  6:str:='F';
      7:str:='G';  8:str:='H';  9:str:='I';
      10:str:='J';  11:str:='K';  12:str:='L';
      13:str:='M';  14:str:='N';  15:str:='O';
      16:str:='P';  17:str:='Q';  18:str:='R';
      19:str:='S';  20:str:='T';  21:str:='U';
      22:str:='V';  23:str:='W';  24:str:='X';
      25:str:='Y';  26:str:='Z';  27:str:='AA';
      28:str:='AB';  29:str:='AC';  30:str:='AD';
      31:str:='AE';  32:str:='AF';  33:str:='AG';
      34:str:='AH';  35:str:='AI';  36:str:='AJ';
    end;
    result:=str;
  end;
var i,j,k,DataCount:integer;
    eclApp,WorkBook:olevariant;
begin
   if(not DirectoryExists(AppDir+'Additional\'))  then ForceDirectories(AppDir+'Additional\');
   CopyFile(Pchar('\\'+main.ServerIP+'\liy_erp\Additional\Asset_SN217.xlsx'),Pchar(AppDir+'Additional\Asset_SN217.xlsx'),false);
   if FileExists(AppDir+'Additional\Asset_SN217.xlsx') then
   begin
      try
        eclApp:=CreateOleObject('Excel.Application');
        WorkBook:=CreateOleObject('Excel.Sheet');
      except
        Application.MessageBox('No Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
        Exit;
      end;
      //
      try
        eclApp.WorkBooks.Open(AppDir+'Additional\Asset_SN217.xlsx');
        eclApp.Cells(2,3):=CGMas.FieldByName('CGNO').AsString;
        eclApp.Cells(2,9):=FormatDatetime('YYYY/MM/DD',CGMas.FieldByName('UserDate').Value);
        CGDet.First;
        for i:=0 to CGDet.RecordCount-1 do
        begin
          eclApp.Cells(i+4,1):=inttostr(i+1);//序號
          eclApp.Cells(i+4,2):=CGMas.FieldByName('DepMemo').AsString;//部門
          eclApp.Cells(i+4,3):=CGDet.FieldByName('ZWPM').AsString;
          eclApp.Cells(i+4,4):=CGDet.FieldByName('LSBH').AsString;
          eclApp.Cells(i+4,5):=CGDet.FieldByName('QUCBH').AsString;
          eclApp.Cells(i+4,6):=CGDet.FieldByName('DZWSM').AsString;
          eclApp.Cells(i+4,7):=CGDet.FieldByName('Qty').AsString;
          eclApp.Cells(i+4,8):=CGDet.FieldByName('USPrice').AsString;
          eclApp.Cells(i+4,9):=CGDet.FieldByName('ACCUS').AsString;
          eclApp.Cells(i+4,10):=CGDet.FieldByName('Memo').AsString;
          CGDet.Next;
        end;
        eclApp.Cells(CGDet.RecordCount+4,2):='總計';
        eclApp.Cells(CGDet.RecordCount+4,9):='=SUM(I4:I'+inttostr(i+4)+')';
        for i:=1 to 4 do
        begin
          eclApp.range[eclApp.cells[4,1],eclApp.cells[CGDet.RecordCount+4,10]].borders[i].linestyle:=1;
        end;
        eclApp.Cells[CGDet.RecordCount+6,1]:= '董事長';
        eclApp.Cells[CGDet.RecordCount+6,4]:= '執行總經理:';
        eclApp.Cells[CGDet.RecordCount+6,7]:= '廠務主管：';
        eclApp.Cells[CGDet.RecordCount+6,10]:= '制表：';

        showmessage('Succeed.');
        eclApp.Visible:=True;
      except
       on   F:Exception   do
       showmessage(F.Message);
      end;
   end;
end;

procedure TPurEquipment.BO1Click(Sender: TObject);
begin
  if CGDet.RequestLive  then
  begin
    showmessage('Pls save material data first.');
    abort;
  end;
  if ((NDate-CGMas.FieldByName('USERDATE').value)>60)   then
  begin
    showmessage('more than 60 days, can not modify.');
    abort;
  end;
  with CGDetS do
  begin
    requestlive:=true;
    cachedupdates:=true;
    insert;
  end;
  BO3.Enabled:=true;
  BO4.Enabled:=true;
  DBGrid3.columns[0].ButtonStyle:=cbsEllipsis;
end;

procedure TPurEquipment.BO2Click(Sender: TObject);
begin
  if CGDet.RequestLive  then
  begin
    showmessage('Pls save material data first.');
    abort;
  end;
  if ((NDate-CGMas.FieldByName('USERDATE').value)>60)   then
  begin
    showmessage('more than 60 days, can not modify.');
    abort;
  end;
  with CGDetS do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
    fieldbyname('YN').Value:='0';
  end;
  BO3.Enabled:=true;
  BO4.Enabled:=true;
  DBGrid3.columns[0].ButtonStyle:=cbsEllipsis;
end;

procedure TPurEquipment.BO5Click(Sender: TObject);
begin
  if CGDet.RequestLive  then
  begin
    showmessage('Pls save material data first.');
    abort;
  end;
  if ((NDate-CGMas.FieldByName('USERDATE').value)>60)   then
  begin
    showmessage('more than 60 days, can not modify.');
    abort;
  end;
  with CGDetS do
  begin
    requestlive:=true;
    cachedupdates:=true;
    Edit
  end;
  BO3.Enabled:=true;
  BO4.Enabled:=true;
  DBGrid3.columns[0].ButtonStyle:=cbsEllipsis;
end;

procedure TPurEquipment.BO4Click(Sender: TObject);
begin
  with CGDetS do
  begin
    active:=false;
    requestlive:=false;
    cachedupdates:=false;
    active:=true;
  end;
  BO3.enabled:=false;
  BO4.enabled:=false;
  DBGrid3.columns[0].ButtonStyle:=cbsnone;
end;

procedure TPurEquipment.BO3Click(Sender: TObject);
var i:integer;
    Qty:real;
begin
  try
      CGDetS.first;
      for i:=1 to CGDetS.RecordCount do
        begin
          case CGDetS.updatestatus of
            usinserted:
            begin
                CGDetS.edit;
                if CGDetS.fieldbyname('SGNO').isnull then
                begin
                  CGDetS.fieldbyname('SGNO').Value:='ZZZZZZZZZZ';
                end;
                CGDetS.fieldbyname('CGNO').Value:=CGDet.fieldbyname('CGNO').value;
                CGDetS.fieldbyname('SBBH').Value:=CGDet.fieldbyname('SBBH').value;
                CGDetS.FieldByName('userID').Value:=main.edit1.text;
                CGDetS.FieldByName('userdate').Value:=date;
                CGDetS.FieldByName('YN').Value:='1';
                UPDetS.apply(ukinsert);
            end;
            usmodified:
            begin
              if CGDetS.fieldbyname('YN').value='0'then
              begin
                //
                UPDetS.apply(ukdelete);
              end else
              begin
                  if (NDate-CGMas.FieldByName('USERDATE').value)<60  then
                  begin
                      CGDetS.edit;
                      CGDetS.FieldByName('userID').Value:=main.edit1.text;
                      UPDetS.apply(ukmodify);
                  end else
                  begin
                    showmessage('Date>60, can not modify.');
                  end;
              end;
            end;
          end;
          CGDetS.next;
        end;
    //
    CGDetS.active:=false;
    CGDetS.cachedupdates:=false;
    CGDetS.requestlive:=false;
    CGDetS.active:=true;
    CGDetS.First;
    Qty:=0;
    while not CGDetS.eof do
    begin
      Qty:=Qty+CGDetS.fieldbyname('Qty').Value;
      CGDetS.next;
    end;
    with CGDet do
    begin
      RequestLive:=true;
      CachedUpdates:=true;
      Edit;
      FieldByName('Qty').Value:=Qty;
      UpDet.Apply(ukmodify);
      active:=false;
      RequestLive:=false;
      CachedUpdates:=false;
      active:=true;
    end;
    //
    BO3.enabled:=false;
    BO4.enabled:=false;
    DBGrid3.columns[0].ButtonStyle:=cbsnone;
  except
    On E:Exception do
    begin
      Messagedlg('Have wrong, can not save data!'+E.Message,mtwarning,[mbyes],0);
    end;
  end;

end;

procedure TPurEquipment.DBGrid3DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if CGDetS.FieldByName('YN').value='0' then
  begin
    DBGrid3.canvas.font.color:=clred;
    DBGrid3.defaultdrawcolumncell(rect,datacol,column,state);
  end;

  if CGDetS.FieldByName('SGNO').isnull then
  begin
    DBGrid3.canvas.font.color:=clLime;
    DBGrid3.defaultdrawcolumncell(rect,datacol,column,state);
  end;
end;

procedure TPurEquipment.DBGrid3EditButtonClick(Sender: TObject);
begin
  if CGDet.RequestLive then
  begin
    showmessage('Can not edit.');
    abort;
  end else
  begin
    PurEquipment_SGDH:=TPurEquipment_SGDH.create(self);
    PurEquipment_SGDH.show;
  end;
end;

end.
