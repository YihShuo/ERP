unit OrderSpecAll1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,ShellAPI,
  Dialogs, DB, DBTables, Mask, DBCtrls, StdCtrls, Grids, DBGrids, ComCtrls,GridsEh, DBGridEh,ehlibBDE,DBGridEhImpExp,
  Buttons, ExtCtrls,comobj,dateutils, Menus,IniFiles,Math;

type
  TOrderSpecAll = class(TForm)
    Panel5: TPanel;
    Label1: TLabel;
    Label4: TLabel;
    EditRY1: TEdit;
    chk_RYDate: TCheckBox;
    EditArticle: TEdit;
    Chk_B: TCheckBox;
    SaveDialog1: TSaveDialog;
    DS_ToPO: TDataSource;
    Qry_ToPO1: TQuery;
    Query1CLBH: TStringField;
    Query1CLSL: TFloatField;
    Query1CGQty: TCurrencyField;
    Query1UseStock: TCurrencyField;
    Query1ZSYWJC: TStringField;
    Query1COUNTRY: TStringField;
    Qry_ToPO1YWPM: TStringField;
    Qry_ToPO1DWBH: TStringField;
    PC1: TPageControl;
    TS1: TTabSheet;
    Panel8: TPanel;
    Panel7: TPanel;
    Label13: TLabel;
    Edit_Supplier1: TEdit;
    Button5: TButton;
    DBGridEh2: TDBGridEh;
    TS2: TTabSheet;
    Splitter3: TSplitter;
    Panel10: TPanel;
    Label10: TLabel;
    Edit_Supplier2: TEdit;
    Button3: TButton;
    DBGridEh3: TDBGridEh;
    DS_ToPO_RY: TDataSource;
    Qry_ToPO_RY1: TQuery;
    Query1ZLBH: TStringField;
    Query1Article: TStringField;
    Query1Pairs: TIntegerField;
    FloatField1: TFloatField;
    CurrencyField1: TCurrencyField;
    CurrencyField2: TCurrencyField;
    Query1ShipDate: TDateTimeField;
    Query1DDRQ: TDateTimeField;
    Qry_ToPO_RY1Diff: TCurrencyField;
    Qry_ToPO1Diff: TCurrencyField;
    Pop_ToPO: TPopupMenu;
    E1: TMenuItem;
    M1: TMenuItem;
    PO1: TMenuItem;
    Cancel1: TMenuItem;
    Chk_NoPur1: TCheckBox;
    Qry_ToPO1CSBH: TStringField;
    Qry_ToPO1ZSDH: TStringField;
    Pop_ToPO_RY1: TPopupMenu;
    RY_Modify1: TMenuItem;
    Chk_OverPur1: TCheckBox;
    Label11: TLabel;
    Edit_MatNo1: TEdit;
    Edit_MatNM1_A: TEdit;
    Label12: TLabel;
    Qry_ToPO1ProdMOQ: TCurrencyField;
    Qry_ToPO1Location: TStringField;
    Chk_NoPur2: TCheckBox;
    Chk_OverPur2: TCheckBox;
    Label14: TLabel;
    Edit_MatNo2: TEdit;
    Label15: TLabel;
    Edit_MatNM2_A: TEdit;
    DBGridEh4: TDBGridEh;
    Splitter4: TSplitter;
    DBGridEh5: TDBGridEh;
    DS_ToPO2: TDataSource;
    Qry_ToPO2: TQuery;
    StringField4: TStringField;
    FloatField3: TFloatField;
    CurrencyField4: TCurrencyField;
    CurrencyField5: TCurrencyField;
    StringField6: TStringField;
    StringField9: TStringField;
    StringField10: TStringField;
    StringField11: TStringField;
    CurrencyField8: TCurrencyField;
    StringField12: TStringField;
    StringField13: TStringField;
    CurrencyField9: TCurrencyField;
    StringField14: TStringField;
    DS_ToPO_RY2: TDataSource;
    Qry_ToPO_RY2: TQuery;
    StringField17: TStringField;
    StringField18: TStringField;
    IntegerField2: TIntegerField;
    FloatField5: TFloatField;
    CurrencyField11: TCurrencyField;
    CurrencyField12: TCurrencyField;
    DateTimeField3: TDateTimeField;
    DateTimeField4: TDateTimeField;
    CurrencyField14: TCurrencyField;
    Pop_ToPO2: TPopupMenu;
    E2: TMenuItem;
    M2: TMenuItem;
    PO2: TMenuItem;
    Cancel2: TMenuItem;
    Label16: TLabel;
    EditRY2: TEdit;
    Label17: TLabel;
    Edit_Loc1: TEdit;
    DTP3: TDateTimePicker;
    DTP4: TDateTimePicker;
    Edit_MatNM2_B: TEdit;
    Edit_MatNM1_B: TEdit;
    Label3: TLabel;
    BuyNoEdit: TEdit;
    Label19: TLabel;
    Edit_Loc2: TEdit;
    Label20: TLabel;
    LocCB: TComboBox;
    Qry_ToPO_RY1DDZT: TStringField;
    Qry_ToPO2CQDH: TStringField;
    Qry_ToPO1CQDH: TStringField;
    Qry_ToPO_RY2DDZT: TStringField;
    Query1: TQuery;
    Qry_ToPO_RY1Size: TStringField;
    Qry_ToPO_RY2Size: TStringField;
    Qry_ToPO_RY1BuyNo: TStringField;
    Qry_ToPO_RY2BuyNo: TStringField;
    Qry_ToPO1ZKLQty: TFloatField;
    Qry_ToPO2ZKLQty: TFloatField;
    Qry_ToPO1ZKBH: TStringField;
    Qry_ToPO2ZKBH: TStringField;
    Qry_ToPO1Upd: TUpdateSQL;
    N1: TMenuItem;
    Qry_ToPO2Upd: TUpdateSQL;
    N2: TMenuItem;
    RY_UseStock1: TMenuItem;
    RY_Save1: TMenuItem;
    RY_Cancel1: TMenuItem;
    Pop_ToPO_RY2: TPopupMenu;
    RY_Modify2: TMenuItem;
    RY_UseStock2: TMenuItem;
    RY_Save2: TMenuItem;
    RY_Cancel2: TMenuItem;
    Qry_ToPO_RY1Upd: TUpdateSQL;
    Qry_ToPO_RY2Upd: TUpdateSQL;
    KhoCK: TCheckBox;
    Qry_ToPO1ZKQty: TFloatField;
    Qry_ToPO2ZKQty: TFloatField;
    Label2: TLabel;
    DDLBCb: TComboBox;
    Label5: TLabel;
    OrderModeCB: TComboBox;
    Qry_ToPO_RY1DDLB: TStringField;
    Qry_ToPO_RY1Ordermode: TStringField;
    Qry_ToPO_RY2DDLB: TStringField;
    Qry_ToPO_RY2Ordermode: TStringField;
    LTCKbox: TCheckBox;
    Qry_ToPO1ProdLeadTime: TIntegerField;
    Qry_ToPO1Forecast_Leadtime: TIntegerField;
    Qry_ToPO1Season: TStringField;
    Qry_ToPO2ProdLeadTime: TIntegerField;
    Qry_ToPO2Forecast_Leadtime: TIntegerField;
    Qry_ToPO2Season: TStringField;
    Label6: TLabel;
    PurchaserEdit: TEdit;
    Qry_ToPO1SamplePurchaser: TStringField;
    Qry_ToPO2SamplePurchaser: TStringField;
    QUseStock1: TMenuItem;
    QUseStock2: TMenuItem;
    chk_shp: TCheckBox;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    Chk_POInteger: TCheckBox;
    KCZKSQry: TQuery;
    UpdKCZKS: TUpdateSQL;
    Qry_ToPO_RY1CLBH: TStringField;
    Qry_ToPO_RY2CLBH: TStringField;
    Qry_ToPO1UseYG: TCurrencyField;
    Qry_ToPO2UseYG: TCurrencyField;
    Qry_ToPO_RY1UseYG: TCurrencyField;
    Qry_ToPO_RY2UseYG: TCurrencyField;
    Label9: TLabel;
    DDGBCombo: TComboBox;
    Qry_ToPO_RY1DDGB: TStringField;
    Qry_ToPO_RY2DDGB: TStringField;
    Qry_ToPO1EXPDATE: TStringField;
    Qry_ToPO2EXPDATE: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BB7Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Son1Click(Sender: TObject);
    procedure Size1Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure E1Click(Sender: TObject);
    procedure M1Click(Sender: TObject);
    procedure Cancel1Click(Sender: TObject);
    procedure PO1Click(Sender: TObject);
    procedure Chk_OverPur1Click(Sender: TObject);
    procedure DBGridEh2GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure Chk_NoPur2Click(Sender: TObject);
    procedure Chk_OverPur2Click(Sender: TObject);
    procedure DBGridEh4GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure E2Click(Sender: TObject);
    procedure M2Click(Sender: TObject);
    procedure Cancel2Click(Sender: TObject);
    procedure PO2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure RY_Modify1Click(Sender: TObject);
    procedure RY_Modify2Click(Sender: TObject);
    procedure RY_Cancel1Click(Sender: TObject);
    procedure RY_Cancel2Click(Sender: TObject);
    procedure RY_UseStock1Click(Sender: TObject);
    procedure RY_Save1Click(Sender: TObject);
    procedure RY_UseStock2Click(Sender: TObject);
    procedure RY_Save2Click(Sender: TObject);
    procedure KhoCKClick(Sender: TObject);
    procedure DBGridEh3DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure DBGridEh5DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure PO1_IntegerClick(Sender: TObject);
    procedure QUseStock1Click(Sender: TObject);
    procedure QUseStock2Click(Sender: TObject);
  private
    ERP_UseSize_Array:array of String;
    ERP_UseStock_Array:array of double;
    procedure HideKhoSetting();
    procedure RY_UseStockAutoValue(Qry_ToPO:TQuery;Qry_ToPO_RY:TQuery;IsSize:boolean);
    procedure RY_UseSockSaveProces(Qry_ToPO:TQuery;Qry_ToPO_RY:TQuery;RY_UseStock:TMenuItem;RY_Save:TMenuItem;RY_Cancel:TMenuItem;DS:TDataSource);
    //
    function CreateCGBJ(ZSBH:string;CLBH:String;CQDH:String):string;
    { Private declarations }
    procedure QuerySizeAndNoSize(MastQry:TQuery;DetailQry:TQuery;IsSize:boolean;
           Chk_NoPur:TCheckBox; Chk_OverPur:TCheckBox; Edit_Supplier:TEdit; Edit_MatNo:TEdit;
           Edit_MatNM_A:TEdit;Edit_MatNM_B:TEdit;Edit_Loc:TEdit);
    procedure CreatePO_Wizard(Qry_ToPO:TQuery; Qry_ToPO_RY:TQuery;IsSize:Boolean;
                                        E:TMenuItem; M:TMenuItem;PO:TMenuItem;Cancel:TMenuItem; DBGridEh: TDBGridEh;IsCGQtyIneger:boolean;UseStock:TMenuItem);
    procedure ReadIni();
    procedure CheckCGKCUSES(Query_PO:TQuery;Query_RY:TQuery;DS:TDataSource);
    procedure CheckCGKCUSES_CGKCUSE(ZLBH:String;CLBH:string);
    //
    procedure Quick_UseStock(Qry_ToPO:TQuery; Qry_ToPO_RY:TQuery;IsSize:Boolean;E:TMenuItem;M:TMenuItem;PO:TMenuItem;Cancel:TMenuItem;
                             UseStock:TMenuItem;DBGridEh: TDBGridEh;RY_Modify:TMenuItem; RY_UseStock:TMenuItem;RY_Save:TMenuItem);
  public
    VNPrice_Decimal:Byte;
    { Public declarations }
  end;

var
  OrderSpecAll: TOrderSpecAll;
  sdate,edate,NDate:Tdate;
  FY,FM:string;
implementation

uses main1, OrderSpec_Son1, OrderSpec_Size1, PurNoSize1, PurSize1,FunUnit;
 // PurOtherRY1;

{$R *.dfm}
procedure TOrderSpecAll.ReadIni();
var MyIni :Tinifile;
    AppDir:string;
begin
  //
  VNPrice_Decimal:=0;
  AppDir:=ExtractFilePath(Application.ExeName);
  if FileExists(AppDir+'\ComName.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ComName.ini');
      VNPrice_Decimal:=strtoint(MyIni.ReadString('VNPrice','Decimal','0'));
    finally
      MyIni.Free;
    end;
  end;
end;
//

procedure TOrderSpecAll.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=cafree;
end;

procedure TOrderSpecAll.BB7Click(Sender: TObject);
begin
  Close;
end;

procedure TOrderSpecAll.FormCreate(Sender: TObject);
var i:integer;
begin

  with query1 do
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

  with KCZKSQry do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('    Select KCZK.*,KCZK.ZKQty-IsNull(CGKCUSES.UseQty,0) as ZKLQty from (');
    SQL.Add('    Select KCZK.YN,KCZK.CLBH,KCZKS.ZKBH,KCZKS.SIZE,KCZKS.Qty as ZKQty');
    SQL.Add('     from KCZK ');
    SQL.Add('     left join KCZKS on KCZKS.ZKBH=KCZK.ZKBH ');
    SQL.Add('     where KCZK.YN<>''X'' and KCZK.ZKNO=''ZZZZZZZZZZ'' and KCZK.GSBH='''+main.edit2.Text+''' and KCZK.USERDate>GetDate()-180    ');
    SQL.Add('                  and KCZK.CLBH=:CLBH and KCZKS.SIZE=:SIZE ) KCZK');
    SQL.Add('     left join (Select ZKBH,CLBH,SIZE,Sum(Qty) as UseQty from CGKCUSES where GSBH='''+main.edit2.Text+''' and CLBH=:CLBH and SIZE=:SIZE  and ZKBH<>''ZZZZZZZZZZ'' ');
    SQL.Add('	              and ZKBH in (Select ZKBH from KCZK where  KCZK.YN<>''X'' and KCZK.ZKNO=''ZZZZZZZZZZ'' and KCZK.GSBH='''+main.edit2.Text+''' and KCZK.USERDate>GetDate()-180  and KCZK.CLBH=:CLBH ) ');
    SQL.Add('				  Group by ZKBH,CLBH,SIZE)  CGKCUSES on CGKCUSES.ZKBH=KCZK.ZKBH and CGKCUSES.CLBH=KCZK.CLBH and CGKCUSES.SIZE=KCZK.SIZE');
    SQL.Add('    where (KCZK.ZKQty-IsNull(CGKCUSES.UseQty,0)>0) ');    
    SQL.Add('    order by KCZK.YN DESC, KCZK.ZKBH DESC');
  end;

  DTP1.Datetime:=StartOfTheMonth(IncMonth(Date(),0));
  DTP2.Datetime:=EndOfTheMonth(IncMonth(Date(),0));

  DTP3.Datetime:=StartOfTheMonth(IncMonth(Date(),0));
  DTP4.Datetime:=EndOfTheMonth(IncMonth(Date(),0));

  PC1.ActivePage:=TS1;
  HideKhoSetting();
  ReadIni();

end;

procedure TOrderSpecAll.FormDestroy(Sender: TObject);
begin
  OrderSpecAll:=nil;
end;

procedure TOrderSpecAll.Son1Click(Sender: TObject);
begin
  OrderSpec_Son:=TOrderSpec_Son.create(self);
  OrderSpec_Son.show;
end;


procedure TOrderSpecAll.Size1Click(Sender: TObject);
begin  
  OrderSpec_Size:=TOrderSpec_Size.create(self);
  OrderSpec_Size.show;
end;

procedure TOrderSpecAll.Button5Click(Sender: TObject);
begin
  QuerySizeAndNoSize(Qry_ToPO1, Qry_ToPO_RY1, false, Chk_NoPur1, Chk_OverPur1,Edit_Supplier1, Edit_MatNo1, Edit_MatNM1_A, Edit_MatNM1_B, Edit_Loc1);
end;


procedure TOrderSpecAll.E1Click(Sender: TObject);
var a:string;
    eclApp,WorkBook:olevariant;
    i,j:integer;
    ExpClass:TDBGridEhExportClass;
    Ext, target:String;
    tdbgh : TDBGridEh;
begin
  tdbgh := DBGridEh2  ;
  if (tdbgh is TDBGridEh) then
    if SaveDialog1.Execute then
    begin
      case SaveDialog1.FilterIndex of
        1: begin ExpClass := TDBGridEhExportAsXLS; Ext := 'xls'; end;
        2: begin ExpClass := TDBGridEhExportAsCSV; Ext := 'csv'; end;
        3: begin ExpClass := TDBGridEhExportAsHTML; Ext := 'htm'; end;
        4: begin ExpClass := TDBGridEhExportAsRTF; Ext := 'rtf'; end;
        5: begin ExpClass := TDBGridEhExportAsText; Ext := 'txt'; end;
      else
        ExpClass := nil; Ext := '';
      end;
      if ExpClass <> nil then
      begin
        if UpperCase(Copy(SaveDialog1.FileName,Length(SaveDialog1.FileName)-2,3)) <> UpperCase(Ext) then
          SaveDialog1.FileName := SaveDialog1.FileName + '.' + Ext;
        SaveDBGridEhToExportFile(ExpClass,tdbgh,SaveDialog1.FileName,true);
        if Application.MessageBox('Do you want to open the exported file?','Open file',MB_YESNO) = IDYES then
          shellexecute(handle,'open',pchar(SaveDialog1.FileName),nil,nil,SW_SHOWNORMAL);
      end;
    end;
end;

procedure TOrderSpecAll.M1Click(Sender: TObject);
begin
  Qry_ToPO_RY1.Active:=false ;
  E1.Enabled:=false;
  M1.Enabled:=false;
  PO1.Enabled:=true;
  QUseStock1.Enabled:=true;
  Cancel1.Enabled:=true;
end;

procedure TOrderSpecAll.Cancel1Click(Sender: TObject);
begin
  Qry_ToPO_RY1.Active:=true ;
  E1.Enabled:=true;
  M1.Enabled:=true;
  PO1.Enabled:=false;
  QUseStock1.Enabled:=false;
  Cancel1.Enabled:=false;
end;

//新增報價資料
function TOrderSpecAll.CreateCGBJ(ZSBH:string;CLBH:String;CQDH:String):string;
var BJNO:string;
begin
  //20151022先檢查是否已存在廠商
  BJNO:='';
  with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.Add('');
    sql.Add('Select BJNO from CGBJ where ZSBH='''+ZSBH+'''  and BJNO like '''+FY+'%'' AND GSBH='''+main.Edit2.Text+''' '); //當年度
    Active:=true;
    if Recordcount>0  then
    begin
      BJNO:=FieldByName('BJNO').AsString;
    end;
    active:=false;
  end;
  //
  if BJNO='' then
  begin
    with query1 do    //計算領料單流水號
    begin
      active:=false;
      sql.Clear;
      sql.Add('select BJNO from CGBJ where BJNO like '+''''+FY+FM+'%'+'''');
      sql.add('order by BJNO');
      active:=true;
      if recordcount >0 then
      begin
        last;
        BJNO:=fieldbyname('BJNO').AsString;
        BJNO:=copy(BJNO,7,5);
        BJNO:=inttostr(strtoint(BJNO)+1);
        while length(BJNO)<5 do
        begin
          BJNO:='0'+BJNO;
        end;
      end
      else
      begin
        BJNO:='00001';
      end;
      BJNO :=FY+FM+BJNO;
      active:=false;
    end;
    //主檔報價
    with Query1 do
    begin
      Active:=false;
      SQL.Clear;
      SQl.Add('Insert CGBJ (BJNO, GSBH, ZSBH, USERID, USERDATE, CFMID,YN) ');
      SQL.Add('Values ('''+BJNO+''','''+main.Edit2.Text+''','''+ZSBH+''','''+main.Edit1.Text+''',GetDate(),''NO'',''1'') ');
      ExecSQL();
    end;
  end;
  with Query1 do
  begin
    //明細報價
    Active:=false;
    SQL.Clear;
    if CQDH='VN' then
      SQL.Add('Insert CGBJS (BJNO, CLBH, VNPrice, UserID, UserDate,Discount, BJLX, YN)')
    else
      SQL.Add('Insert CGBJS (BJNO, CLBH, USPrice, UserID, UserDate, Discount, BJLX, YN)');
    SQL.Add('Values ('''+BJNO+''','''+CLBH+''',0,'''+main.Edit1.Text+''',GetDate(),''1'',''1'',''1'') ');
    ExecSQL();
  end;
  result:=BJNO;


end;
//=========產生PO單號================================================
procedure TOrderSpecAll.CreatePO_Wizard(Qry_ToPO:TQuery; Qry_ToPO_RY:TQuery;IsSize:Boolean;
                                        E:TMenuItem; M:TMenuItem;PO:TMenuItem;Cancel:TMenuItem; DBGridEh: TDBGridEh;
                                        IsCGQtyIneger:boolean;UseStock:TMenuItem);
var bm:Tbookmark;
    CGNO,BJNO,Supp_ID:string;
    USPrice,VNPrice:string;
    QUSPrice,QVNPrice:string;
    i,j:integer;
    Qty,VNPrice_Round:real;
    bookmarklist:tbookmarklistEH;
    PurcahseForm:TForm;

begin
  //
  if not Qry_ToPO.Active then
     abort;
  if (Qry_ToPO.recordcount<1) then
     abort;

  if IsSize=false then  //採購材料無尺寸
  begin
    if PurNoSize<>nil then  //檢查採購單程式是否有被開啟
    begin
       if (PurNoSize.BB5.Enabled=true) or (PurNoSize.BD5.Enabled=true) or (PurNoSize.BO3.Enabled=true) then //是否在編輯狀態
       begin
            PurNoSize.show;
            PurNoSize.windowstate:=wsmaximized;
            showmessage('Pls save Purchase Order first ');
            abort;
       end;
    end;
  end else //有尺寸
  begin
    if PurSize<>nil then  //檢查採購單程式是否有被開啟
    begin
       if (PurSize.BB5.Enabled=true) or (PurSize.BD5.Enabled=true) or (PurSize.BO3.Enabled=true) then //是否在編輯狀態
       begin
            PurSize.show;
            PurSize.windowstate:=wsmaximized;
            showmessage('Pls save Purchase Order first ');
            abort;
       end;
    end;
  end;
  if messagedlg('Do you really want to generate Purchase Order?',mtconfirmation,[mbYes,mbNo],0)=mrNo then
  abort;
  //編號年月
  if length(FM)<2 then
     FM:='0'+FM;
  //開始產生採購單
  Supp_ID:='';
  Qry_ToPO.disablecontrols;
  bm:=Qry_ToPO.getbookmark;
  bookmarklist:=DBGridEh.selectedrows;
  if bookmarklist.count=0 then
  begin
    showmessage('Pls choose data first !');
    abort;
  end;
  //20160120 先檢查是否有造庫
  if (KhoCK.Checked=true)  then
  begin
    //20210324 No SIZE Check ZKLQty
    if (IsSize=false)  then
    begin
      for i:=0 to bookmarklist.count-1 do
      begin
         Qry_ToPO.gotobookmark(pointer(bookmarklist[i]));
         if ((Qry_ToPO.FieldByName('diff').AsFloat<0) and (Qry_ToPO.FieldByName('ZKLQty').AsFloat>0)) then //有採購數量
         begin
           try
              Showmessage('Please first set use stock,還有庫存，請先扣完庫存');
           finally
             Qry_ToPO.gotobookmark(bm);
             Qry_ToPO.freebookmark(bm);
             Qry_ToPO.enablecontrols;
           end;
           exit;
         end;

         if ((Qry_ToPO.FieldByName('EXPDATE').Value = NULL) or (formatdatetime('YYYY/MM/DD',now) > StringReplace(Qry_ToPO.FieldByName('EXPDATE').Value, '-', '/', [rfReplaceAll, rfIgnoreCase]))) and (LocCB.Text <> 'TW') then
//         if ((Qry_ToPO.FieldByName('EXPDATE').Value = NULL) or (formatdatetime('YYYY/MM/DD',now) > StringReplace(Qry_ToPO.FieldByName('EXPDATE').Value, '-', '/', [rfReplaceAll, rfIgnoreCase]))) and (Qry_ToPO1.FieldByName('CSBH').AsString <> 'A367') then
         begin
           try
              Showmessage('Please set EXPDATE first ,請先設定報價有效期限');
           finally
             Qry_ToPO.gotobookmark(bm);
             Qry_ToPO.freebookmark(bm);
             Qry_ToPO.enablecontrols;
           end;
           exit;
         end;
      end;
    end else
    begin
      //20210324  SIZE Check ZKLQty
      Qry_ToPO_RY.Active:=true;
      for i:=0 to bookmarklist.count-1 do
      begin
         Qry_ToPO.gotobookmark(pointer(bookmarklist[i]));
         if ((Qry_ToPO.FieldByName('EXPDATE').Value = NULL) or (formatdatetime('YYYY/MM/DD',now) > StringReplace(Qry_ToPO.FieldByName('EXPDATE').Value, '-', '/', [rfReplaceAll, rfIgnoreCase]))) and (LocCB.Text <> 'TW') then //有採購數量
//         if ((Qry_ToPO.FieldByName('EXPDATE').Value = NULL) or (formatdatetime('YYYY/MM/DD',now) > StringReplace(Qry_ToPO.FieldByName('EXPDATE').Value, '-', '/', [rfReplaceAll, rfIgnoreCase]))) and (Qry_ToPO2.FieldByName('CSBH').AsString <> 'A367') then //有採購數量
         begin
           try
              Showmessage('Please set EXPDATE first ,請先設定報價有效期限');
           finally
             Qry_ToPO.gotobookmark(bm);
             Qry_ToPO.freebookmark(bm);
             Qry_ToPO.enablecontrols;
           end;
           exit;
         end;

         if ((Qry_ToPO.FieldByName('diff').AsFloat<0) and (Qry_ToPO.FieldByName('ZKLQty').AsFloat>0)) then //有採購數量
         begin
           //檢查尺碼利庫
           with Query1 do
           begin
             Active:=false;
             SQL.Clear;
             SQL.Add('Select KCZKS.SIZE,Sum(KCZKS.LQty) as LQty ');
             SQL.Add('from KCZKS ');
             SQL.Add('left join KCZK on KCZK.ZKBH=KCZKS.ZKBH ');
             SQL.Add('where KCZK.CLBH='''+Qry_ToPO.FieldByName('CLBH').AsString+''' ');
             SQL.Add('Group by KCZKS.SIZE');
             Active:=true;
           end;
           for j:=0 to Qry_ToPO_RY.RecordCount-1 do
           begin
             if (Qry_ToPO_RY.FieldByName('CLSL').Value-Qry_ToPO_RY.FieldByName('CGQty').Value-Qry_ToPO_RY.FieldByName('UseStock').Value-Qry_ToPO_RY.FieldByName('UseYG').Value)>0 then
             begin
               if Query1.Locate('SIZE',Qry_ToPO_RY.FieldByName('SIZE').AsString,[])=true then
                  if Query1.FieldByName('LQty').Value>0 then
                  begin
                     try
                        Showmessage('Please first set use stock,還有庫存，請先扣完庫存');
                     finally
                       Query1.Active:=false;
                       Qry_ToPO.gotobookmark(bm);
                       Qry_ToPO.freebookmark(bm);
                       Qry_ToPO.enablecontrols;
                     end;
                     exit;
                  end;
             end;
             Qry_ToPO_RY.Next;
           end;
           Qry_ToPO_RY.Active:=false;
           Query1.Active:=false;
           //
         end;
      end;
    end;
    //
  end;
  //
  if bookmarklist.count>0 then
  begin
       try
           Qry_ToPO.gotobookmark(pointer(bookmarklist[0]));
           if Qry_ToPO.FieldByName('CQDH').AsString='TW' then
           begin
             if Qry_ToPO.FieldByName('CSBH').AsString='' then //檢查是否有對應的VN廠商代號
             begin
               showmessage('No mapping Supplier ID');
               exit;
             end;
             Supp_ID:=Qry_ToPO.FieldByName('CSBH').AsString ; //記錄選取第一筆的VN廠商代號
           end;
           if Qry_ToPO.FieldByName('CQDH').AsString='VN' then
           begin
             if Qry_ToPO.FieldByName('ZSDH_TW').AsString='' then //檢查是否有對應的VN廠商代號
             begin
               showmessage('No mapping Supplier ID');
               exit;
             end;
             Supp_ID:=Qry_ToPO.FieldByName('ZSDH_TW').AsString ; //記錄選取第一筆的VN廠商代號
           end;
           //計算採購單流水號
           if Qry_ToPO.FieldByName('diff').AsFloat<0 then //有採購數量
           begin
             with query1 do
             begin
               active:=false;
               sql.Clear;
               sql.Add('select CGNO from CGZL where CGNO like '+''''+FY+FM+'%'+'''');
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
                 end
                 else
                 begin
                   CGNO:='00001';
                 end;
               CGNO :=FY+FM+CGNO;
               active:=false;
             end;
             //新增採購單頭檔CGZL
             with query1 do
             begin
               active:=false;
               sql.Clear;
               sql.Add('insert CGZL ');
               sql.Add('(CGNO');
               sql.Add(',GSBH');
               sql.Add(',CGLX');
               sql.Add(',ZSBH');
               sql.Add(',USERID,USERDATE,CGDate,YN,PURPOSE) values (');
               sql.Add(' '''+CGNO+'''');
               sql.Add(','''+main.Edit2.text+'''');
               if IsSize=false then
                 sql.Add(',''1'' ')  //PurNoSize
               else
                 sql.Add(',''2'' ');  //PurSize
               sql.Add(','''+Supp_ID+'''');  //廠商代號
               sql.Add(','''+main.edit1.Text+'''');
               sql.Add(','''+formatdatetime('yyyy/MM/dd',Ndate)+'''');
               sql.Add(','''+formatdatetime('yyyy/MM/dd',Ndate)+'''');
               sql.Add(',''1'','''+Qry_ToPO.FieldByName('CQDH').AsString+''')');
               execsql;
               active:=false;
             end;

             //新增採購單身檔CGZLS

             for i:=0 to bookmarklist.count-1 do
             begin
               Qry_ToPO.gotobookmark(pointer(bookmarklist[i]));
               Qry_ToPO_RY.Active:=false;
               Qry_ToPO_RY.Active:=true;
               if Qry_ToPO.FieldByName('CQDH').AsString='TW' then
                 if  Supp_ID<>Qry_ToPO.FieldByName('CSBH').AsString then break;//至少會跑第一筆廠商不一樣
               if Qry_ToPO.FieldByName('CQDH').AsString='VN' then
                 if  Supp_ID<>Qry_ToPO.FieldByName('ZSDH_TW').AsString then break;//至少會跑第一筆廠商不一樣
               if Qry_ToPO.FieldByName('diff').AsFloat<0 then //有採購數量
               begin
                 if  Qry_ToPO_RY.RecordCount>0 then
                 begin
                   USPrice:='';
                   VNPrice:='';
                   //20190709
                   QUSPrice:='';
                   QVNPrice:='';
                   VNPrice_Round:=0;
                   //檢查報價單
                   Query1.Active:=false;
                   Query1.SQL.Clear;
                   Query1.SQL.Add('select *,');
                   Query1.SQL.Add('       case when ((USPrice is not null) and (PayVN=1)) then');
                   Query1.SQL.Add('            case when SuppEx is not null then round(USPrice*DisCount*SuppEx,0) else round(USPrice*DisCount*ErpEx,0) end');
                   Query1.SQL.Add('       else VNPrice*DisCount end ERPVNPrice,');
                   Query1.SQL.Add('       USPrice*DisCount as ERPUSPrice');
                   Query1.SQL.Add('from(Select  top 1 CGBJS.BJNO,CGBJS.CLBH,CGBJS.USPrice,CGBJS.VNPrice,CGBJS.USERDate,CGBJS.DisCount,CGBJS.SuppEx,ZSZL.PayVN,');
                   Query1.SQL.Add('             IsNull((select top 1 CWHL from CWHLS  where HLYEAR=Year(GetDate()) and HLMONTH=Month(GetDate()) and HLDay=1),0) as ErpEx');
                   Query1.SQL.Add('     from CGBJS ');
                   Query1.SQL.Add('left join CGBJ on CGBJ.BJNO=CGBJS.BJNO ');
                   Query1.SQL.Add('left join ZSZL on ZSZL.ZSDH=CGBJ.ZSBH');
                   Query1.SQL.Add('where CGBJ.GSBH='''+main.Edit2.Text+'''  and CLBH='''+Qry_ToPO.fieldbyname('CLBH').AsString+'''  and CGBJ.ZSBH='''+Supp_ID +''' ');
                   Query1.SQL.Add('order by CGBJS.BJNO desc,CGBJS.CLBH ) CGBJS');
                   Query1.Active:=true;
                   if Query1.RecordCount>0 then
                   begin
                      BJNO:=Query1.Fieldbyname('BJNO').AsString;
                      USPrice:=Query1.Fieldbyname('ERPUSPrice').AsString;
                      //20200513 round VNPrice allow VNPrice_Decimal
                      if (( not  Query1.FieldByName('ERPVNPrice').isnull) and  (Query1.FieldByName('ERPVNPrice').AsString<>'')) then
                      begin
                        VNPrice_Round:=roundto(Query1.Fieldbyname('ERPVNPrice').value,-VNPrice_Decimal);
                        VNPrice:=floattostr(VNPrice_Round);
                      end;
                      QUSPrice:=Query1.Fieldbyname('USPrice').AsString;
                      QVNPrice:=Query1.Fieldbyname('VNPrice').AsString;
                   end else
                   begin
                      //新增
                      BJNO:=CreateCGBJ(Supp_ID,Qry_ToPO.fieldbyname('CLBH').AsString,Qry_ToPO.fieldbyname('CQDH').AsString);
                      if Qry_ToPO.fieldbyname('CQDH').AsString='VN' then VNPrice:='0' else USPrice:='0';
                      if Qry_ToPO.fieldbyname('CQDH').AsString='VN' then QVNPrice:='0' else QUSPrice:='0';    //20190723
                   end;
                   Query1.Active:=false;
                   //
                   with query1 do
                   begin
                     active:=false;
                     sql.Clear;
                     sql.Add('insert CGZLS ');
                     sql.Add('(CGNO');
                     sql.Add(',CLBH');
                     sql.Add(',XqQty');
                     sql.Add(',Qty');
                     if VNPrice<>'' then
                       sql.Add(',VNPrice')
                     else
                       sql.Add(',USPrice');
                     sql.Add(',BJNO');
                     sql.Add(',YQDate');
                     sql.Add(',USERID,USERDATE,YN ');
                     if QVNPrice<>'' then
                       sql.Add(',QVNPrice')
                     else
                       sql.Add(',QUSPrice');
                     sql.Add(') values ');
                     sql.Add('( '''+CGNO+''' ');
                     sql.Add(','''+Qry_ToPO.fieldbyname('CLBH').AsString+''','+Qry_ToPO_RY.fieldbyname('CLSL').AsString+',0');
                     if VNPrice<>'' then
                       sql.Add(','+VNPrice)
                     else
                       sql.Add(','+USPrice);
                     sql.Add(','''+BJNO+''' ');  //固定填Transfer
                     sql.Add(',GetDate()+14');  //需求日期固定加14天
                     sql.Add(','''+main.edit1.Text+'''');
                     sql.Add(',GetDate()');
                     sql.Add(',''1''');
                     if QVNPrice<>'' then
                       sql.Add(','+QVNPrice)
                     else
                       sql.Add(','+QUSPrice);
                     sql.add(') ');
                     //funcobj.WriteErrorLog(sql.Text);
                     execsql;
                     active:=false;
                   end;
                   //新增採購單第三層CGZLSS

                   for j:=1 to Qry_ToPO_RY.RecordCount do
                   begin
                       if ((Qry_ToPO_RY.FieldByName('CLSL').AsString<>'0') and (Qry_ToPO_RY.FieldByName('Diff').AsFloat<0))  then
                       begin
                         with query1 do
                         begin
                           active:=false;
                           sql.Clear;
                           sql.Add('insert CGZLSS ');
                           sql.Add('(CGNO');
                           sql.Add(',CLBH');
                           sql.Add(',ZLBH');   //RY
                           sql.Add(',XXCC');
                           sql.Add(',Stage');
                           sql.Add(',YQDate');
                           sql.Add(',Qty');
                           sql.Add(',CLSL');
                           sql.Add(',USERID,USERDATE,YN) values (');
                           sql.Add(' '''+CGNO+''' ');
                           sql.Add(','''+Qry_ToPO.fieldbyname('CLBH').AsString+'''');
                           sql.Add(','''+Qry_ToPO_RY.fieldbyname('ZLBH').AsString+'''');
                           if IsSize=false then
                             sql.Add(',''ZZZZZZ'' ')
                           else
                             sql.Add(','''+Qry_ToPO_RY.fieldbyname('Size').AsString+''' ');
                           sql.Add(',''Mass'' ');
                           sql.Add(',GetDate()+14');  //需求日期固定加14天
                           sql.Add(','+floattostr(Qry_ToPO_RY.fieldbyname('Diff').asfloat*-1)+'');
                           sql.Add(','+Qry_ToPO_RY.fieldbyname('CLSL').AsString+'');
                           sql.Add(','''+main.edit1.Text+'''');
                           sql.Add(',GetDate()');
                           sql.Add(',''1'')');
                           execsql;
                           active:=false;
                         end;
                       end;
                       Qry_ToPO_RY.next;
                   end;
                 end; //if
               end;//if Qry_ToPO.FieldByName('diff').AsFloat<0 then //有採購數量
             end; //for
           end;//if Qry_ToPO.FieldByName('diff').AsFloat<0 then //有採購數量
       finally
         begin
           Qry_ToPO.gotobookmark(bm);
           Qry_ToPO.freebookmark(bm);
           Qry_ToPO.enablecontrols;
         end;
       end;
     end;
    //採購下單整數
    if IsCGQtyIneger=true then
    begin
      with query1 do
      begin
        active:=false;
        sql.Clear;
        SQL.Add('Update CGZLSS Set Qty=CGZLSS.Qty+CGS.Diff');
        SQL.Add(' from (');
        SQL.Add('     Select CGS.*,CGSDiff.Diff from');
        SQL.Add('	 (Select * from (Select  CGNO,ZLBH,XXCC,CLBH,Stage,Qty,ROW_NUMBER() over (PARTITION BY CLBH ORDER BY Qty asc) as Sort from CGZLSS where CGNO='''+CGNO+''') CGS where Sort=1  ) CGS');
        SQL.Add('	 left join (Select CLBH,ceiling(IsNull(Sum(Qty),0.0))-IsNull(Sum(Qty),0.0) as Diff  from CGZLSS where CGNO='''+CGNO+'''  GROUP BY CLBH ) CGSDiff on CGSDiff.CLBH=CGS.CLBH');
        SQL.Add('  ) CGS');
        SQL.Add('  where CGS.CGNO=CGZLSS.CGNO and CGS.ZLBH=CGZLSS.ZLBH and CGS.XXCC=CGZLSS.XXCC and CGS.CLBH=CGZLSS.CLBH and CGS.Stage=CGZLSS.Stage');
        execsql;
        close;
      end;
    end;
  //
  with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('UPDATE CGZLS set QTY=isnull((select isnull(SUM(QTY),0) AS SQTY from CGZLSS WHERE CGZLSS.CGNO=CGZLS.CGNO AND CGZLSS.CLBH=CGZLS.CLBH  ');
    sql.add('  and CGZLSS.CGNO='''+CGNO+''' GROUP BY CGNO,CLBH),0) ');
    sql.add(', XQQTY=isnull((select isnull(SUM(QTY),0) AS SQTY from CGZLSS WHERE CGZLSS.CGNO=CGZLS.CGNO AND CGZLSS.CLBH=CGZLS.CLBH  ');
    sql.add('  and CGZLSS.CGNO='''+CGNO+''' GROUP BY CGNO,CLBH),0) ');
    sql.add(' where CGZLS.CGNO='''+CGNO+''' ');
    execsql;
    close;
  end;

  showmessage('finish !');
  //自動開啟採購單畫面
  if IsSize=false then  //採購材料無尺寸
  begin
    if PurNoSize<>nil then
    begin
      PurNoSize.show;
      PurNoSize.windowstate:=wsmaximized;
    end
    else
      begin
        PurNoSize:=TPurNoSize.create(self);
        PurNoSize.show;
        main.FormLanguage(Pointer(PurNoSize),PurNoSize.Name);
      end;
    if (PurNoSize.BB5.Enabled=true) or (PurNoSize.BD5.Enabled=true) or (PurNoSize.BO3.Enabled=true) then
    begin
      showmessage('Pls save data first ');
      abort;
    end;
    PurNoSize.Edit1.Text:=CGNO;
    PurNoSize.Check.Checked:=false;
    PurNoSize.Button1Click(nil);
  end else     //採購材料有尺寸
  begin
    if PurSize<>nil then
    begin
      PurSize.show;
      PurSize.windowstate:=wsmaximized;
    end
    else
      begin
        PurSize:=TPurSize.create(self);
        PurSize.show;
        main.FormLanguage(Pointer(PurSize),PurSize.Name);
      end;
    if (PurSize.BB5.Enabled=true) or (PurSize.BD5.Enabled=true) or (PurSize.BO3.Enabled=true) then
    begin
      showmessage('Pls save data first ');
      abort;
    end;
    PurSize.Edit1.Text:=CGNO;
    PurSize.Check.Checked:=false;
    PurSize.Button1Click(nil);
  end;

  Qry_ToPO_RY.Active:=true ;
  E.Enabled:=true;
  M.Enabled:=true;
  PO.Enabled:=false;
  Cancel.Enabled:=false;
  UseStock.Enabled:=false;
end;
//===================================
procedure TOrderSpecAll.PO1Click(Sender: TObject);
begin
  CreatePO_Wizard(Qry_ToPO1,Qry_ToPO_RY1,false,E1,M1,PO1,Cancel1,DBGridEh2,Chk_POInteger.Checked,QUseStock1);
end;

procedure TOrderSpecAll.Chk_OverPur1Click(Sender: TObject);
begin
  if Chk_OverPur1.Checked then Chk_NoPur1.Checked:=false;
end;

procedure TOrderSpecAll.DBGridEh2GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  //藍色
  if Qry_ToPO1.FieldByName('CLSL').AsCurrency=Qry_ToPO1.FieldByName('CGQty').AsCurrency+Qry_ToPO1.FieldByName('UseStock').AsCurrency then
  begin
        DBGridEh2.canvas.font.color:=clBlue;
       // dbgrid1.defaultdrawcolumncell(rect,datacol,column,state);
  end;
  if (Qry_ToPO1.FieldByName('CLSL').AsCurrency<Qry_ToPO1.FieldByName('CGQty').AsCurrency+Qry_ToPO1.FieldByName('UseStock').AsCurrency)
       and ((Qry_ToPO1.FieldByName('CGQty').AsCurrency+Qry_ToPO1.FieldByName('UseStock').AsCurrency)-(Qry_ToPO1.FieldByName('CLSL').AsCurrency)<1) then
   begin
     DBGridEh2.canvas.font.color:=clBlue;
     // dbgrid1.defaultdrawcolumncell(rect,datacol,column,state);
   end;

//紅色
if ((Qry_ToPO1.FieldByName('CGQty').AsCurrency>0) or (Qry_ToPO1.FieldByName('UseStock').AsCurrency>0))
      and (Qry_ToPO1.FieldByName('CLSL').AsCurrency>(Qry_ToPO1.FieldByName('CGQty').AsCurrency+Qry_ToPO1.FieldByName('UseStock').AsCurrency)) then
   begin
        DBGridEh2.canvas.font.color:=clred;
        //dbgrid1.defaultdrawcolumncell(rect,datacol,column,state);
  end;
//綠色
if ((Qry_ToPO1.FieldByName('CGQty').AsCurrency+Qry_ToPO1.FieldByName('UseStock').AsCurrency)-(Qry_ToPO1.FieldByName('CLSL').AsCurrency))>=1 then
  begin
        DBGridEh2.canvas.font.color:=clgreen;
       // dbgrid1.defaultdrawcolumncell(rect,datacol,column,state);
  end;

end;
//查詢Size 資訊
procedure TOrderSpecAll.QuerySizeAndNoSize(MastQry:TQuery; DetailQry:TQuery; IsSize:boolean;
           Chk_NoPur:TCheckBox; Chk_OverPur:TCheckBox; Edit_Supplier:TEdit; Edit_MatNo:TEdit;
           Edit_MatNM_A:TEdit; Edit_MatNM_B:TEdit; Edit_Loc:TEdit);
begin
  if ((chk_shp.Checked=false) and (chk_RYDate.Checked=false) and  (length(BuyNoEdit.Text)<=4)) then
  begin
    showmessage('Please choice RYDate or ShipDate or BuyNo');
    exit;
  end;
  if  ((not chk_shp.Checked) and (not chk_RYDate.Checked)) then
  begin
    if ((length(EditRY1.Text)<3) and (length(BuyNoEdit.Text)<5)  and  (chk_shp.Checked=False) and (chk_RYDate.Checked=false)   ) then
    begin
      showmessage('Pls setup condition first!');
      abort;
    end;
  end;
  with MastQry do
  begin
    active:=false;
    sql.Clear;
    sql.add('select * from (');
    sql.add('select  S2.CLBH');
    sql.add('        ,S2.YWPM');
    sql.add('        ,S2.DWBH');
    sql.add('        ,S2.ZSYWJC ');
    sql.add('        ,S2.CQDH ');
    sql.add('        ,ZSZL_DEV.COUNTRY');
    sql.add('        ,S2.CLSL ');
    sql.add('        ,S2.CSBH ');
    sql.add('        ,CG.CGQTY  ');
    sql.add('        ,ZSZL_DEV.ZSDH_TW ');
    sql.add('        ,Stock.UseStock ');
    sql.add('        ,PreOrder.UseYG ');
    sql.add('        ,isnull(Stock.UseStock,0)+isnull(CG.CGQTY,0)+isnull(PreOrder.UseYG,0)-S2.CLSL as Diff ');
    sql.add('        ,MQ.Location');
    sql.add('        ,MQ.ProdMOQ');
    sql.add('        ,MQ.ProdLeadTime');
    sql.add('        ,MQ.Forecast_Leadtime');
    sql.add('        ,MQ.Season');
    sql.add('        ,KCZK.ZKBH');
    sql.add('        ,KCZK.ZKLQty');
    sql.add('        ,KCZK.ZKQty');
    sql.add('        ,ZSZL_DEV.SamplePurchaser');
    sql.add('        ,CONVERT(VARCHAR(10),(select MAX(CGBJ.EXPDATE) from CGBJ left join CGBJS on CGBJ.BJNO = CGBJS.BJNO where CLBH = S2.CLBH ),120) as EXPDATE');
    sql.add('FROM (select  ZLZLS2.CLBH');
    sql.add('        ,CLZL.YWPM');
    sql.add('        ,CLZL.DWBH');
    sql.add('        ,CLZL.CQDH');
    sql.add('        ,Max(ZSZL.ZSYWJC) as ZSYWJC ');
    sql.add('        ,isnull(sum(ZLZLS2.CLSL),0) as CLSL');
    sql.add('        ,(ZLZLS2.CSBH) as CSBH ');
    sql.add('      from ZLZLS2 with (nolock) ');
    sql.add('      inner join DDZL with (nolock) on DDZl.DDBH=ZLZLS2.ZLBH and DDZL.GSBH='''+main.edit2.Text+''' and DDZL.BuyNO like '''+BuyNoEdit.Text+'%''');
    if chk_RYDate.Checked then
    begin
        sql.Add('and DDZL.DDRQ between ');
        sql.Add('convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''') and  convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP2.Date)+''') ');
    end;
    if chk_shp.Checked then
    begin
        sql.Add('and DDZL.ShipDate between ');
        sql.Add('convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP3.Date)+''') and  convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP4.Date)+''') ');
    end;
    if PurchaserEdit.Text<>'' then
    sql.add('      inner JOIN ZSZL_DEV on ZLZLS2.CSBH=ZSZL_DEV.ZSDH and ZSZL_DEV.GSBH='''+main.Edit2.Text+''' and ZSZL_DEV.SamplePurchaser='''+PurchaserEdit.Text+''' ');
    sql.add('      left join CLZL with (nolock) on CLZL.CLDH=ZLZLs2.CLBH');
    sql.add('      left join DDZlTW with (nolock) on DDZlTW.DDBH=DDZl.DDBH');
    sql.add('      left join SCZL with (nolock) on SCZL.ZLBH=ZLZLS2.ZLBH ');
    sql.add('      left join XXZL with (nolock) on XXZl.XieXing=DDZl.XieXing and XXZL.SheHao=DDZl.SheHao');
//      sql.add('      left join XXBWFL on XXBWFL.XieXing=XXZL.XieXing and XXBWFL.SheHao=XXZL.SheHao and XXBWFL.BWBH=ZLZLS2.BWBH ');
    sql.add('      left join XXBWFL with (nolock) on XXBWFL.XieXing=XXZL.XieXing and XXBWFL.BWBH=ZLZLS2.BWBH ');
    sql.add('      left join XXBWFLS with (nolock) on XXBWFLS.FLBH=XXBWFL.FLBH ');
    sql.add('      LEFT JOIN ZSZL with (nolock) on ZLZLS2.CSBH=ZSZL.ZSDH');
    sql.add('      where ');
    if IsSize=false then   //非尺寸材料
      sql.add('            ZLZLS2.SIZE=''ZZZZZZ''  ')
    else
      sql.add('            ZLZLS2.SIZE<>''ZZZZZZ''  ');
    sql.add('            and left(ZLZLS2.CLBH,1)<>'+''''+'W'+'''');
    sql.add('            and DDZL.GSBH='''+main.edit2.Text+'''');
    sql.add('            and ZLZLS2.ZMLB='+''''+'N'+''''); //子件
    sql.add('            and SCZL.SCBH=SCZl.ZLBH ');
    sql.add('            and SCZL.SCBH is not null '); //已放行2
    sql.add('            and ZLZLS2.CLSL<>0') ;
    sql.add('            and DDZlTW.DDZT<>''C'' and isnull(SCZL.IsCGZLS,'''')<>''N'' ');
    if DDLBCb.Text<>'' then
    sql.add('            and DDZL.DDLB'+DDLBCb.Text+' ');
    if OrderModeCB.Text<>'' then
    sql.add('            and IsNull(DDZL.ordermode,''ZZ'')'+OrderModeCB.Text+' ');
    if LocCB.Text<>'' then
    sql.add('            and CLZL.CQDH='''+locCB.Text+''' ');// 採區
    sql.add('            and isnull(XXBWFLS.DFL,'''')<>''G''  '); //加上不要材料分類到無需領料的部分
    if Edit_Supplier.Text<>'' then
       sql.add('         and ZSZL.ZSYWJC like '+''''+'%'+Edit_Supplier.Text+'%'+'''');
    if (editRY1.Text<>'') and (editRY2.Text='') then
        sql.add('and SCZL.SCBH like '+''''+editRY1.Text+'%'+'''');
    if (editRY1.Text<>'') and (editRY2.Text<>'') then
    begin
      sql.add('and SCZL.SCBH >= '+''''+editRY1.Text+'''');
      sql.add('and SCZL.SCBH <= '+''''+editRY2.Text+'''');
    end;
    //20150904增加
    if BuyNoEdit.Text <> '' then
      sql.add('       and DDZL.BuyNO like '''+BuyNoEdit.Text+'%'''); //20140102 增加BuyNO 欄位查詢
    //20230714
    if DDGBCombo.Text <> '' then
      sql.add('       and DDZL.DDGB in ('''+DDGBCombo.Text+''') ');
    if chk_RYDate.Checked then
    begin
        sql.Add('and DDZL.DDRQ between ');
        sql.Add('convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''') and  convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP2.Date)+''') ');
    end;
    if chk_shp.Checked then
    begin
        sql.Add('and DDZL.ShipDate between ');
        sql.Add('convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP3.Date)+''') and  convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP4.Date)+''') ');
    end;
    //
    IF Chk_B.Checked THEN
       sql.add('         and DDZL.DDLB<>''B''  ');
    if EditArticle.Text<>'' then
       sql.add('         and XXZL.Article like '+''''+EditArticle.text+'%'+'''');
    if Edit_MatNo.Text<>'' then
       sql.add('         and ZLZLs2.CLBH like '+''''+Edit_MatNo.text+'%'+'''');
    if (Edit_MatNM_A.Text<>'') and (Edit_MatNM_B.Text = '') then
       sql.add('         and CLZL.YWPM like '+''''+'%'+Edit_MatNM_A.text+'%'+'''');
    if (Edit_MatNM_A.Text<>'') and (Edit_MatNM_B.Text<>'') then
    begin
       sql.add('         and (CLZL.YWPM like '+''''+'%'+Edit_MatNM_A.text+'%'+'''');
       sql.add('         or  CLZL.YWPM like '+''''+'%'+Edit_MatNM_B.text+'%'+''')');
    end;
    sql.add('      group by ZLZLS2.CLBH,CLZL.YWPM,CLZL.DWBH,CLZL.CQDH,ZLZLS2.CSBH');
    sql.add('     ) S2 ');
    sql.add('Left JOIN ZSZL_DEV on S2.CSBH=ZSZL_DEV.ZSDH and ZSZL_DEV.GSBH='''+main.Edit2.Text+''' ');
    sql.Add('Left join (select CGZLSS.CLBH,ZLZLS2.CSBH ,ISNULL(SUM(CGZLSS.Qty),0) as CGQty ');
    sql.add('           FROM CGZLSS with (nolock)  ' );
    sql.Add('           LEFT JOIN CGZL with (nolock) ON  CGZL.CGNO=CGZLSS.CGNO  ' );
    sql.add('           left join DDZl with (nolock) on DDZl.DDBH=CGZLSS.ZLBH');
    sql.add('           left join XXZL with (nolock) on XXZl.XieXing=DDZl.XieXing and XXZL.SheHao=DDZl.SheHao');
    sql.add('           left join (select ZLZLS2.ZLBH,ZLZLS2.CSBH,ZLZLS2.CLBH from ZLZLS2,DDZL where DDZL.DDBH=ZLZLS2.ZLBH  and DDZL.GSBH='''+main.Edit2.Text+''' and ZLZLS2.CLBH like '+''''+Edit_MatNo.text+'%'+'''');
    sql.Add('           and DDZL.BuyNO like '''+BuyNoEdit.Text+'%''');
    if (EditRY1.Text<>'') and (EditRY2.Text='') then
       sql.add('and ZLZLS2.ZLBH like '+''''+editRY1.Text+'%'+'''');
    if (EditRY1.Text<>'') and (EditRY2.Text<>'') then
    begin
      sql.add('and ZLZLS2.ZLBH >= '+''''+EditRY1.Text+'''');
      sql.add('and ZLZLS2.ZLBH <= '+''''+EditRY2.Text+'''');
    end;
    sql.Add('           Group by ZLZLS2.ZLBH,ZLZLS2.CSBH,ZLZLS2.CLBH)ZLZLS2 on CGZLSS.ZLBH=ZLZLS2.ZLBH and ZLZLS2.CLBH=CGZLSS.CLBH ');
    sql.Add('           WHERE CGZL.CGLX<>''6'' ' );
    sql.add('                 and DDZL.GSBH='+''''+main.edit2.Text+'''');
    if EditArticle.Text<>'' then
       sql.add('              and XXZL.Article like '+''''+EditArticle.text+'%'+'''');
    if Edit_MatNo.Text<>'' then
       sql.add('              and CGZLSS.CLBH like '+''''+Edit_MatNo.text+'%'+'''');
    if (EditRY1.Text<>'') and (EditRY2.Text='') then
       sql.add('and CGZLSS.ZLBH like '+''''+editRY1.Text+'%'+'''');
    if (EditRY1.Text<>'') and (EditRY2.Text<>'') then
    begin
      sql.add('and CGZLSS.ZLBH >= '+''''+EditRY1.Text+'''');
      sql.add('and CGZLSS.ZLBH <= '+''''+EditRY2.Text+'''');
    end;
    //20150904增加
    if BuyNoEdit.Text <> '' then
      sql.add('       and DDZL.BuyNO like '''+BuyNoEdit.Text+'%'''); //20140102 增加BuyNO 欄位查詢
    if chk_RYDate.Checked then
    begin
      sql.Add('and DDZL.DDRQ between ');
      sql.Add('convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''') and  convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP2.Date)+''') ');
    end;
    if chk_shp.Checked then
    begin
      sql.Add('and DDZL.ShipDate between ');
      sql.Add('convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP3.Date)+''') and  convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP4.Date)+''') ');
    end;
    //
    sql.add('           GROUP BY CGZLSS.CLBH,ZLZLS2.CSBH   ');
    sql.add('           ) CG ON CG.CLBH=S2.CLBH and CG.CSBH=S2.CSBH  ');
    sql.Add('Left Join (select CGKCUSE.CLBH,ISNULL(SUM(CGKCUSE.Qty),0) as UseStock ');
    sql.add('                   FROM CGKCUSE with (nolock) ' );
    sql.add('                   left join DDZl with (nolock) on DDZl.DDBH=CGKCUSE.ZLBH');
    sql.add('                   left join XXZL with (nolock) on XXZl.XieXing=DDZl.XieXing and XXZL.SheHao=DDZl.SheHao');
    sql.Add('                   WHERE 1=1  ' );
    sql.add('                         and DDZL.GSBH='+''''+main.edit2.Text+'''');
    if EditArticle.Text<>'' then
       sql.add('                      and XXZL.Article like '+''''+EditArticle.text+'%'+'''');
    if Edit_MatNo.Text<>'' then
       sql.add('                      and CGKCUSE.CLBH like '+''''+Edit_MatNo.text+'%'+'''');
    if (EditRY1.Text<>'') and (EditRY2.Text='') then
       sql.add('and CGKCUSE.ZLBH like '+''''+EditRY1.Text+'%'+'''');
    if (EditRY1.Text<>'') and (EditRY2.Text<>'') then
    begin
      sql.add('and CGKCUSE.ZLBH >= '+''''+EditRY1.Text+'''');
      sql.add('and CGKCUSE.ZLBH <= '+''''+EditRY2.Text+'''');
    end;
    //20150904增加
    if BuyNoEdit.Text <> '' then
      sql.add('       and DDZL.BuyNO like '''+BuyNoEdit.Text+'%'''); //20140102 增加BuyNO 欄位查詢
    if chk_RYDate.Checked then
    begin
      sql.Add('and DDZL.DDRQ between ');
      sql.Add('convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''') and  convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP2.Date)+''') ');
    end;
    if chk_shp.Checked then
    begin
      sql.Add('and DDZL.ShipDate between ');
      sql.Add('convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP3.Date)+''') and  convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP4.Date)+''') ');
    end;
    //
    sql.add('           GROUP BY CGKCUSE.CLBH  ');
    sql.add('           ) Stock ON Stock.CLBH=S2.CLBH  ');
    //20211115 預購數量
     sql.Add('Left Join (select CGYGUSE.CLBH,ISNULL(SUM(CGYGUSE.Qty),0) as UseYG ');
    sql.add('                   FROM CGYGUSE with (nolock) ' );
    sql.add('                   left join DDZl with (nolock) on DDZl.DDBH=CGYGUSE.ZLBH');
    sql.add('                   left join XXZL with (nolock) on XXZl.XieXing=DDZl.XieXing and XXZL.SheHao=DDZl.SheHao');
    sql.Add('                   WHERE 1=1  ' );
    sql.add('                         and DDZL.GSBH='+''''+main.edit2.Text+'''');
    if EditArticle.Text<>'' then
       sql.add('                      and XXZL.Article like '+''''+EditArticle.text+'%'+'''');
    if Edit_MatNo.Text<>'' then
       sql.add('                      and CGYGUSE.CLBH like '+''''+Edit_MatNo.text+'%'+'''');
    if (EditRY1.Text<>'') and (EditRY2.Text='') then
       sql.add('and CGYGUSE.ZLBH like '+''''+EditRY1.Text+'%'+'''');
    if (EditRY1.Text<>'') and (EditRY2.Text<>'') then
    begin
      sql.add('and CGYGUSE.ZLBH >= '+''''+EditRY1.Text+'''');
      sql.add('and CGYGUSE.ZLBH <= '+''''+EditRY2.Text+'''');
    end;
    if BuyNoEdit.Text <> '' then
      sql.add('       and DDZL.BuyNO like '''+BuyNoEdit.Text+'%'''); //20140102 增加BuyNO 欄位查詢
    if chk_RYDate.Checked then
    begin
      sql.Add('and DDZL.DDRQ between ');
      sql.Add('convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''') and  convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP2.Date)+''') ');
    end;
    if chk_shp.Checked then
    begin
      sql.Add('and DDZL.ShipDate between ');
      sql.Add('convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP3.Date)+''') and  convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP4.Date)+''') ');
    end;
    //
    sql.add('           GROUP BY CGYGUSE.CLBH  ');
    sql.add('           ) PreOrder ON PreOrder.CLBH=S2.CLBH  ');
    //20200406 MOQ & LeadTime
    SQL.Add('left join (');
    SQL.Add('		   Select Season,CLBH,ProdMOQ,ProdLeadTime,Forecast_Leadtime,Location from (');
    SQL.Add('		   Select A.Season,A.CLBH,A.ProdMOQ,A.ProdLeadTime,A.Forecast_Leadtime,A.Location from (');
    SQL.Add('			   select Season,CLBH,ProdMOQ,ProdLeadTime,Forecast_Leadtime,Location,ROW_NUMBER() over (PARTITION BY CLBH ORDER BY USERDATE desc) ');
    SQL.Add('			   as  rn from ');
    SQL.Add('			  (');
    SQL.Add('			  Select Season,IsNull(CLZL_LS.JHDH,MaterialMOQ.CLBH) as CLBH,ProdMOQ,ProdLeadTime,Forecast_Leadtime,Location,MaterialMOQ.USERDATE ');
    SQL.Add('			  from MaterialMOQ');
    SQL.Add('			  left join CLZL_LS on CLZL_LS.CLDH=MaterialMOQ.CLBH  and IsNull(CLZL_LS.JHDH,'''')<>'''' ) MaterialMOQ');
    if LTCKbox.Checked=true then
       SQL.Add('			  where 1=1')
    else
       SQL.Add('        where 1=2');
    SQL.Add('		   ) A where A.rn=1 and A.CLBH like '''+Edit_MatNo1.Text+'%'' ) MatMOQ');
    SQL.Add('		) MQ ON MQ.CLBH=S2.CLBH  ');
    //20211112 造庫SQL語法 修改所有ZKBH加總
    SQL.Add('Left Join (Select KCZK.CLBH,max(KCZK.Memo) as Memo,Max(KCZK.ZKBH) as ZKBH,Sum(KCZKS.Qty) as ZKQty,Sum(KCZKS.LQty) as ZKLQty ');
    SQL.Add('    from KCZK ');
    SQL.Add('    left join KCZKS on KCZKS.ZKBH=KCZK.ZKBH ');
    SQL.Add('    where KCZK.YN<>''X'' and KCZK.ZKNO=''ZZZZZZZZZZ'' and KCZK.GSBH='''+main.edit2.Text+''' and KCZK.USERDate>GetDate()-180 and KCZKS.LQty>=0  ');
    SQL.Add('    Group by KCZK.CLBH ');
    SQL.Add('    having(Sum(KCZKS.LQty))>=0 )  KCZK on KCZK.CLBH=S2.CLBH ');
    //
    sql.add('where 1=1 ');
    if Chk_NoPur.Checked then
    begin
     sql.add('  and (isnull(Stock.UseStock,0)+isnull(CG.CGQTY,0)+isnull(PreOrder.UseYG,0))<isnull(S2.CLSL,0) ');
    end;
    if Chk_OverPur.Checked then
    begin
       sql.add('  and (isnull(Stock.UseStock,0)+isnull(CG.CGQTY,0)+isnull(PreOrder.UseYG,0))>(isnull(S2.CLSL,0)+1) ');
    end;
    if Edit_Loc.Text<>'' then
    begin
       sql.add('  and  MQ.Location like ''%'+Edit_Loc.Text+'%''');
    end;
    sql.add(') ZLZLS2 where 1=1');
    sql.add('order by ZLZLS2.ZSYWJC,ZLZLS2.CLBH ');
    //showmessage(SQL.Text);
    //funcObj.WriteErrorLog(sql.Text);
    active:=true;
  end;

  with DetailQry do
  begin
    active:=false;
    sql.Clear;
    sql.add('select  S2.ZLBH');
    sql.add('        ,S2.CLBH ');
    sql.add('        ,S2.Article ');
    sql.add('        ,S2.Pairs ');
    sql.add('        ,S2.CLSL ');
    sql.add('        ,S2.Size ');
    sql.add('        ,S2.ShipDate ');
    sql.add('        ,S2.DDRQ ');
    sql.add('        ,s2.BuyNo ');
    sql.add('        ,S2.DDZT ');
    sql.add('        ,S2.DDLB ');
    sql.add('        ,S2.Ordermode ');
    sql.add('        ,S2.DDGB ');
    sql.add('        ,isnull(CG.CGQTY,0) as CGQty');
    sql.add('        ,isnull(Stock.UseStock,0) as UseStock ');
    sql.add('        ,isnull(PreOrder.UseYG,0) as UseYG ');
    sql.add('        ,isnull(Stock.UseStock,0)+isnull(CG.CGQTY,0)+isnull(PreOrder.UseYG,0)-S2.CLSL as Diff ');
    sql.add('FROM (select  ZLZLS2.ZLBH');
    sql.add('        ,ZLZLS2.CLBH ');
    sql.add('        ,CLZL.DWBH');
    sql.add('        ,XXZL.Article ');
    sql.add('        ,DDZL.Pairs ');
    sql.add('        ,case when (DDZLTW.DDZT<>''C'' and isnull(SCZL.IsCGZLS,'''')<>''N'') then isnull(sum(ZLZLS2.CLSL),0) else 0 end as CLSL ');
    sql.add('        ,ZLZLS2.SIZE ');
    sql.add('        ,DDZL.ShipDate ');
    sql.add('        ,DDZL.DDRQ ');
    sql.add('        ,DDZL.BuyNo ');
    sql.add('        ,DDZLTW.DDZT ');
    sql.add('        ,DDZL.DDLB ');
    sql.add('        ,DDZL.Ordermode ');
    sql.add('        ,DDZL.DDGB ');
    sql.add('      from ZLZLS2 with (nolock) ');
    sql.add('      left join CLZL with (nolock) on CLZL.CLDH=ZLZLS2.CLBH ');
    sql.add('      left join DDZl with (nolock) on DDZl.DDBH=ZLZLS2.ZLBH ');
    sql.add('      left join DDZlTW with (nolock) on DDZlTW.DDBH=DDZl.DDBH ');
    sql.add('      left join SCZL with (nolock) on SCZL.ZLBH=ZLZLS2.ZLBH ');
    sql.add('      left join XXZL with (nolock) on XXZl.XieXing=DDZl.XieXing and XXZL.SheHao=DDZl.SheHao ');
    sql.add('      left join XXBWFL with (nolock) on XXBWFL.XieXing=XXZL.XieXing and XXBWFL.BWBH=ZLZLS2.BWBH ');
    sql.add('      left join XXBWFLS with (nolock) on XXBWFLS.FLBH=XXBWFL.FLBH ');
    sql.add('      where  '); 
    if IsSize=false then   //非尺寸材料
      sql.add('            ZLZLS2.SIZE=''ZZZZZZ''  ')
    else
      sql.add('            ZLZLS2.SIZE<>''ZZZZZZ''  ');
    sql.add('             and left(ZLZLS2.CLBH,1)<>'+''''+'W'+'''');
    sql.add('             and DDZL.GSBH='+''''+main.edit2.Text+'''');
    sql.add('             and ZLZLS2.CLBH=:CLBH ');
    sql.add('             and ZLZLS2.CSBH=:CSBH  ');
    sql.add('             and ZLZLS2.ZMLB=''N''       ');
    sql.add('             and SCZL.SCBH=SCZl.ZLBH ');
    sql.add('             and SCZL.SCBH is not null ');
    sql.add('             and ZLZLS2.CLSL<>0 ');
    if DDLBCb.Text<>'' then
    sql.add('            and DDZL.DDLB'+DDLBCb.Text+' ');
    if OrderModeCB.Text<>'' then
    sql.add('            and IsNull(DDZL.ordermode,''ZZ'')'+OrderModeCB.Text+' ');
    if LocCB.Text<>'' then
    sql.add('            and CLZL.CQDH='''+locCB.Text+''' ');// 採區      
    sql.add('             and isnull(XXBWFLS.DFL,'''')<>''G''  '); //加上不要材料分類到無需領料的部分
    if (EditRY1.Text<>'') and (EditRY2.Text='') then
       sql.add('and SCZL.SCBH like '+''''+EditRY1.Text+'%'+'''');
    if (EditRY1.Text<>'') and (EditRY2.Text<>'') then
    begin
         sql.add('and SCZL.SCBH >= '+''''+EditRY1.Text+'''');
         sql.add('and SCZL.SCBH <= '+''''+EditRY2.Text+'''');
    end;
    //20150904增加
    if BuyNoEdit.Text <> '' then
      sql.add('       and DDZL.BuyNO like '''+BuyNoEdit.Text+'%'''); //20140102 增加BuyNO 欄位查詢
    //20230714
    if DDGBCombo.Text <> '' then
      sql.add('       and DDZL.DDGB in ('''+DDGBCombo.Text+''') ');
    if chk_RYDate.Checked then
    begin
        sql.Add('and DDZL.DDRQ between ');
        sql.Add('convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''') and  convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP2.Date)+''') ');
    end;
    if chk_shp.Checked then
    begin
        sql.Add('and DDZL.ShipDate between ');
        sql.Add('convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP3.Date)+''') and  convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP4.Date)+''') ');
    end;
    //
    IF Chk_B.Checked THEN
       sql.add('          and DDZL.DDLB<>''B''  ');
    if EditArticle.Text<>'' then
       sql.add('          and XXZL.Article like '+''''+EditArticle.text+'%'+'''');

    sql.add('       group by ZLZLS2.ZLBH,ZLZLS2.CLBH,CLZL.DWBH,ZLZLS2.SIZE,XXZL.Article,DDZL.Pairs,DDZL.ShipDate,DDZL.DDRQ,DDZL.BuyNo,DDZLTW.DDZT,DDZL.DDLB,DDZL.Ordermode,DDZL.DDGB,SCZL.IsCGZLS ');
    sql.add('      ) S2  ');
    sql.Add('LEFT JOIN (select CGZLSS.ZLBH,CGZLSS.CLBH,CGZLSS.XXCC,ISNULL(SUM(CGZLSS.Qty),0) as CGQty ');
    sql.add('           FROM CGZLSS  with (nolock) ' );
    sql.Add('           LEFT JOIN CGZL with (nolock) ON  CGZL.CGNO=CGZLSS.CGNO  ' );
    sql.add('           left join DDZl with (nolock) on DDZl.DDBH=CGZLSS.ZLBH');
    sql.add('           left join XXZL with (nolock) on XXZl.XieXing=DDZl.XieXing and XXZL.SheHao=DDZl.SheHao');
    sql.Add('           WHERE CGZL.CGLX<>''6''  ' );
    sql.add('               and CGZLSS.CLBH=:CLBH  ');
    sql.add('               and DDZL.GSBH='+''''+main.edit2.Text+'''');
    if EditArticle.Text<>'' then
       sql.add('            and XXZL.Article like '+''''+EditArticle.text+'%'+'''');
    if (EditRY1.Text<>'') and (EditRY2.Text='') then
       sql.add('and CGZLSS.ZLBH like '+''''+EditRY1.Text+'%'+'''');
    if (EditRY1.Text<>'') and (EditRY2.Text<>'') then
    begin
       sql.add('and CGZLSS.ZLBH >= '+''''+EditRY1.Text+'''');
       sql.add('and CGZLSS.ZLBH <= '+''''+EditRY2.Text+'''');
    end;
    //20150904增加
    if BuyNoEdit.Text <> '' then
      sql.add('       and DDZL.BuyNO like '''+BuyNoEdit.Text+'%'''); //20140102 增加BuyNO 欄位查詢
    if chk_RYDate.Checked then
    begin
        sql.Add('and DDZL.DDRQ between ');
        sql.Add('convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''') and  convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP2.Date)+''') ');
    end;
    if chk_shp.Checked then
    begin
        sql.Add('and DDZL.ShipDate between ');
        sql.Add('convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP3.Date)+''') and  convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP4.Date)+''') ');
    end;
    sql.add('           group by CGZLSS.ZLBH,CGZLSS.CLBH,CGZLSS.XXCC ');
    sql.add('          ) CG ON CG.CLBH=S2.CLBH and CG.ZLBH=S2.ZLBH  and CG.XXCC=S2.SIZE ');
    //使用庫存
    sql.Add(' LEFT JOIN ( select CGKCUSES.ZLBH,CGKCUSES.CLBH,CGKCUSES.SIZE,ISNULL(SUM(CGKCUSES.Qty),0) as UseStock ');
    sql.add('                   FROM CGKCUSES with (nolock) ' );
    sql.add('                   left join DDZl with (nolock) on DDZl.DDBH=CGKCUSES.ZLBH');
    sql.add('                   left join XXZL with (nolock) on XXZl.XieXing=DDZl.XieXing and XXZL.SheHao=DDZl.SheHao');
    sql.Add('                   WHERE CGKCUSES.CLBH=:CLBH  ' );
    sql.add('                         and DDZL.GSBH='+''''+main.edit2.Text+'''');
    if EditArticle.Text<>'' then
      sql.add('                      and XXZL.Article like '+''''+EditArticle.text+'%'+'''');
    if (EditRY1.Text<>'') and (EditRY2.Text='') then
      sql.add('and CGKCUSES.ZLBH like '+''''+EditRY1.Text+'%'+'''');
    if (EditRY1.Text<>'') and (EditRY2.Text<>'') then
    begin
      sql.add('and CGKCUSES.ZLBH >= '+''''+EditRY1.Text+'''');
      sql.add('and CGKCUSES.ZLBH <= '+''''+EditRY2.Text+'''');
    end;
    //20150904增加
    if BuyNoEdit.Text <> '' then
      sql.add('       and DDZL.BuyNO like '''+BuyNoEdit.Text+'%'''); //20140102 增加BuyNO 欄位查詢
    if chk_RYDate.Checked then
    begin
        sql.Add('and DDZL.DDRQ between ');
        sql.Add('convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''') and  convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP2.Date)+''') ');
    end;
    if chk_shp.Checked then
    begin
        sql.Add('and DDZL.ShipDate between ');
        sql.Add('convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP3.Date)+''') and  convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP4.Date)+''') ');
    end;
    sql.add('                   group by CGKCUSES.CLBH,CGKCUSES.ZLBH,CGKCUSES.SIZE ');
    sql.add('            ) Stock on Stock.ZLBH=S2.ZLBH and Stock.CLBH=S2.CLBH and Stock.SIZE=S2.SIZE  ');
    //20211115  使用預購
    sql.Add(' LEFT JOIN ( select CGYGUSES.ZLBH,CGYGUSES.CLBH,CGYGUSES.SIZE,ISNULL(SUM(CGYGUSES.Qty),0) as UseYG ');
    sql.add('                   FROM CGYGUSES with (nolock) ' );
    sql.add('                   left join DDZl with (nolock) on DDZl.DDBH=CGYGUSES.ZLBH');
    sql.add('                   left join XXZL with (nolock) on XXZl.XieXing=DDZl.XieXing and XXZL.SheHao=DDZl.SheHao');
    sql.Add('                   WHERE CGYGUSES.CLBH=:CLBH  ' );
    sql.add('                         and DDZL.GSBH='+''''+main.edit2.Text+'''');
    if EditArticle.Text<>'' then
      sql.add('                      and XXZL.Article like '+''''+EditArticle.text+'%'+'''');
    if (EditRY1.Text<>'') and (EditRY2.Text='') then
      sql.add('and CGYGUSES.ZLBH like '+''''+EditRY1.Text+'%'+'''');
    if (EditRY1.Text<>'') and (EditRY2.Text<>'') then
    begin
      sql.add('and CGYGUSES.ZLBH >= '+''''+EditRY1.Text+'''');
      sql.add('and CGYGUSES.ZLBH <= '+''''+EditRY2.Text+'''');
    end;
    //20150904增加
    if BuyNoEdit.Text <> '' then
      sql.add('       and DDZL.BuyNO like '''+BuyNoEdit.Text+'%'''); //20140102 增加BuyNO 欄位查詢
    if chk_RYDate.Checked then
    begin
        sql.Add('and DDZL.DDRQ between ');
        sql.Add('convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''') and  convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP2.Date)+''') ');
    end;
    if chk_shp.Checked then
    begin
        sql.Add('and DDZL.ShipDate between ');
        sql.Add('convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP3.Date)+''') and  convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP4.Date)+''') ');
    end;
    sql.add('                   group by CGYGUSES.CLBH,CGYGUSES.ZLBH,CGYGUSES.SIZE ');
    sql.add('            ) PreOrder on PreOrder.ZLBH=S2.ZLBH and PreOrder.CLBH=S2.CLBH and PreOrder.SIZE=S2.SIZE  ');
    //
    sql.add('order by S2.ZLBH ');
    //funcObj.WriteErrorLog(sql.Text);
    active:=true;
  end;
end;
//
procedure TOrderSpecAll.Chk_NoPur2Click(Sender: TObject);
begin
if Chk_NoPur2.Checked then Chk_OverPur2.Checked:=false;
end;

procedure TOrderSpecAll.Chk_OverPur2Click(Sender: TObject);
begin
if Chk_OverPur2.Checked then Chk_NoPur2.Checked:=false;
end;

procedure TOrderSpecAll.DBGridEh4GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
//藍色
if Qry_ToPO2.FieldByName('CLSL').AsCurrency=Qry_ToPO2.FieldByName('CGQty').AsCurrency+Qry_ToPO2.FieldByName('UseStock').AsCurrency then
  begin
        DBGridEh4.canvas.font.color:=clBlue;
       // dbgrid1.defaultdrawcolumncell(rect,datacol,column,state);
  end;
if (Qry_ToPO2.FieldByName('CLSL').AsCurrency<Qry_ToPO2.FieldByName('CGQty').AsCurrency+Qry_ToPO2.FieldByName('UseStock').AsCurrency)
       and ((Qry_ToPO2.FieldByName('CGQty').AsCurrency+Qry_ToPO2.FieldByName('UseStock').AsCurrency)-(Qry_ToPO2.FieldByName('CLSL').AsCurrency)<1) then
   begin
     DBGridEh4.canvas.font.color:=clBlue;
     // dbgrid1.defaultdrawcolumncell(rect,datacol,column,state);
   end;

//紅色
if ((Qry_ToPO2.FieldByName('CGQty').AsCurrency>0) or (Qry_ToPO2.FieldByName('UseStock').AsCurrency>0))
      and (Qry_ToPO2.FieldByName('CLSL').AsCurrency>(Qry_ToPO2.FieldByName('CGQty').AsCurrency+Qry_ToPO2.FieldByName('UseStock').AsCurrency)) then
   begin
        DBGridEh4.canvas.font.color:=clred;
        //dbgrid1.defaultdrawcolumncell(rect,datacol,column,state);
  end;
//綠色
if ((Qry_ToPO2.FieldByName('CGQty').AsCurrency+Qry_ToPO2.FieldByName('UseStock').AsCurrency)-(Qry_ToPO2.FieldByName('CLSL').AsCurrency))>=1 then
  begin
        DBGridEh4.canvas.font.color:=clgreen;
       // dbgrid1.defaultdrawcolumncell(rect,datacol,column,state);
  end;
end;

procedure TOrderSpecAll.E2Click(Sender: TObject);
var   a:string;
      eclApp,WorkBook:olevariant;
      i,j:integer;
  ExpClass:TDBGridEhExportClass;
  Ext, target:String;
  tdbgh : TDBGridEh;
 begin
  tdbgh := DBGridEh4  ;
  if (tdbgh is TDBGridEh) then
    if SaveDialog1.Execute then
    begin
      case SaveDialog1.FilterIndex of
        1: begin ExpClass := TDBGridEhExportAsXLS; Ext := 'xls'; end;
        2: begin ExpClass := TDBGridEhExportAsCSV; Ext := 'csv'; end;
        3: begin ExpClass := TDBGridEhExportAsHTML; Ext := 'htm'; end;
        4: begin ExpClass := TDBGridEhExportAsRTF; Ext := 'rtf'; end;
        5: begin ExpClass := TDBGridEhExportAsText; Ext := 'txt'; end;
      else
        ExpClass := nil; Ext := '';
      end;
      if ExpClass <> nil then
      begin
        if UpperCase(Copy(SaveDialog1.FileName,Length(SaveDialog1.FileName)-2,3)) <> UpperCase(Ext) then
          SaveDialog1.FileName := SaveDialog1.FileName + '.' + Ext;
        SaveDBGridEhToExportFile(ExpClass,tdbgh,SaveDialog1.FileName,true);
        if Application.MessageBox('Do you want to open the exported file?','Open file',MB_YESNO) = IDYES then
          shellexecute(handle,'open',pchar(SaveDialog1.FileName),nil,nil,SW_SHOWNORMAL);
      end;
    end;
end;

procedure TOrderSpecAll.M2Click(Sender: TObject);
begin
  Qry_ToPO_RY2.Active:=false ;
  E2.Enabled:=false;
  M2.Enabled:=false;
  PO2.Enabled:=true;
  QUseStock2.Enabled:=true;
  Cancel2.Enabled:=true;
end;

procedure TOrderSpecAll.Cancel2Click(Sender: TObject);
begin
  Qry_ToPO_RY2.Active:=true ;
  E2.Enabled:=true;
  M2.Enabled:=true;
  PO2.Enabled:=false;
  Cancel2.Enabled:=false;
  QUseStock2.Enabled:=false;
end;

procedure TOrderSpecAll.PO2Click(Sender: TObject);
begin
  CreatePO_Wizard(Qry_ToPO2,Qry_ToPO_RY2,true,E2,M2,PO2,Cancel2,DBGridEh4,Chk_POInteger.Checked,QUseStock2);
end;
procedure TOrderSpecAll.Button3Click(Sender: TObject);
begin
  QuerySizeAndNoSize(Qry_ToPO2, Qry_ToPO_RY2, true, Chk_NoPur2, Chk_OverPur2,Edit_Supplier2, Edit_MatNo2, Edit_MatNM2_A, Edit_MatNM2_B, Edit_Loc2);
end;

procedure TOrderSpecAll.RY_Modify1Click(Sender: TObject);
begin
  if Qry_ToPO_RY1.Active then
  begin
    Qry_ToPO_RY1.RequestLive:=true;
    Qry_ToPO_RY1.CachedUpdates:=true;
    Qry_ToPO_RY1.Edit;
    RY_UseStock1.enabled:=true;
    RY_Save1.enabled:=true;
    RY_Cancel1.enabled:=true;
  end;
end;

procedure TOrderSpecAll.RY_Modify2Click(Sender: TObject);
begin
  if Qry_ToPO_RY2.Active then
  begin
    Qry_ToPO_RY2.RequestLive:=true;
    Qry_ToPO_RY2.CachedUpdates:=true;
    Qry_ToPO_RY2.Edit;
    RY_UseStock2.enabled:=true;
    RY_Save2.enabled:=true;
    RY_Cancel2.enabled:=true;
  end;
end;

procedure TOrderSpecAll.RY_Cancel1Click(Sender: TObject);
begin
  if Qry_ToPO_RY1.CachedUpdates then
  begin
    Qry_ToPO_RY1.Active:=false;
    Qry_ToPO_RY1.CachedUpdates:=false;
    Qry_ToPO_RY1.RequestLive:=false;
    Qry_ToPO_RY1.Active:=true;
  end;
  RY_UseStock1.enabled:=false;
  RY_Save1.enabled:=false;
  RY_Cancel1.enabled:=false;
end;

procedure TOrderSpecAll.RY_Cancel2Click(Sender: TObject);
begin
  if Qry_ToPO_RY2.CachedUpdates then
  begin
    Qry_ToPO_RY2.Active:=false;
    Qry_ToPO_RY2.CachedUpdates:=false;
    Qry_ToPO_RY2.RequestLive:=false;
    Qry_ToPO_RY2.Active:=true;
  end;
  RY_UseStock2.enabled:=false;
  RY_Save2.enabled:=false;
  RY_Cancel2.enabled:=false;
end;
//
procedure TOrderSpecAll.RY_UseStockAutoValue(Qry_ToPO:TQuery;Qry_ToPO_RY:TQuery;IsSize:boolean);
var i,j:integer;
    ERP_UseStock:double;
begin
  if Qry_ToPO.FieldByName('ZKLQty').Value>0 then
  begin
    //20210324 無尺碼  No Size
    if  IsSize=false then
    begin
      ERP_UseStock:=0;
      with Query1 do
      begin
        Active:=false;
        SQL.Clear;
        SQL.Add('	Select KCZK.CLBH,KCZKS.SIZE,Sum(KCZKS.Qty) as ZKQty,Sum(KCZKS.LQty) as ZKLQty');
        SQL.Add('	from KCZK');
        SQL.Add('	left join KCZKS on KCZKS.ZKBH=KCZK.ZKBH');
        SQL.Add('	where KCZK.YN<>''X'' and KCZK.ZKNO=''ZZZZZZZZZZ'' and KCZKS.SIZE=''ZZZZZZ'' and KCZK.CLBH='''+Qry_ToPO.FieldByName('CLBH').AsString+''' ');
        SQL.Add('       and KCZK.GSBH='''+main.Edit2.Text+''' and KCZK.USERDate>GetDate()-180 and KCZKS.LQty>0 ');
        SQL.Add('	Group by KCZK.CLBH,KCZKS.SIZE');
        Active:=true;
        if RecordCount>0 then
        ERP_UseStock:=Query1.FieldByName('ZKLQty').Value;
        Active:=false;
      end;
      //
      Qry_ToPO_RY.First;
      for i:=0 to Qry_ToPO_RY.RecordCount-1 do
      begin
        if (Qry_ToPO_RY.FieldByName('CLSL').Value-Qry_ToPO_RY.FieldByName('CGQty').Value-Qry_ToPO_RY.FieldByName('UseStock').Value)>0 then
        begin
          if ERP_UseStock>=(Qry_ToPO_RY.FieldByName('CLSL').Value-Qry_ToPO_RY.FieldByName('CGQty').Value-Qry_ToPO_RY.FieldByName('UseStock').Value)  then
          begin
            ERP_UseStock:=ERP_UseStock- (Qry_ToPO_RY.FieldByName('CLSL').Value-Qry_ToPO_RY.FieldByName('CGQty').Value-Qry_ToPO_RY.FieldByName('UseStock').Value);
            Qry_ToPO_RY.Edit;
            Qry_ToPO_RY.FieldByName('UseStock').Value:=Qry_ToPO_RY.FieldByName('UseStock').Value+(Qry_ToPO_RY.FieldByName('CLSL').Value-Qry_ToPO_RY.FieldByName('CGQty').Value-Qry_ToPO_RY.FieldByName('UseStock').Value);
            Qry_ToPO_RY.Post;
          end else
          begin
            Qry_ToPO_RY.Edit;
            Qry_ToPO_RY.FieldByName('UseStock').Value:=Qry_ToPO_RY.FieldByName('UseStock').Value+ERP_UseStock;
            Qry_ToPO_RY.Post;
            ERP_UseStock:=0;
          end;
        end;
        if ERP_UseStock<=0 then break;
        Qry_ToPO_RY.Next;
      end;
    end else
    begin
      //20210324 有尺碼  Size
      with Query1 do
      begin
        Active:=false;
        SQL.Clear;
        SQL.Add('	Select KCZK.CLBH,KCZKS.SIZE,Sum(KCZKS.Qty) as ZKQty,Sum(KCZKS.LQty) as ZKLQty');
        SQL.Add('	from KCZK');
        SQL.Add('	left join KCZKS on KCZKS.ZKBH=KCZK.ZKBH');
        SQL.Add('	where KCZK.YN<>''X'' and KCZK.ZKNO=''ZZZZZZZZZZ'' and KCZKS.SIZE<>''ZZZZZZ'' and KCZK.CLBH='''+Qry_ToPO.FieldByName('CLBH').AsString+''' ');
        SQL.Add('       and KCZK.GSBH='''+main.Edit2.Text+''' and KCZK.USERDate>GetDate()-180 and KCZKS.LQty>0 ');
        SQL.Add('	Group by KCZK.CLBH,KCZKS.SIZE');
        //funcObj.WriteErrorLog(sql.Text);
        Active:=true;
        Setlength(ERP_UseSize_Array,RecordCount);
        Setlength(ERP_UseStock_Array,RecordCount);
        for i:=0 to RecordCount-1 do
        begin
          ERP_UseSize_Array[i]:=FieldByName('SIZE').AsString;              
          ERP_UseStock_Array[i]:=FieldByName('ZKLQty').Value;
          Next;
        end;
        Active:=false;
      end;
      //
      Qry_ToPO_RY.First;
      for i:=0 to Qry_ToPO_RY.RecordCount-1 do
      begin
        for j:=0 to High(ERP_UseSize_Array) do
        begin
          if ERP_UseSize_Array[j]=Qry_ToPO_RY.FieldByName('SIZE').AsString then
          begin
            if ERP_UseStock_Array[j]>0 then
            begin
              if (Qry_ToPO_RY.FieldByName('CLSL').Value-Qry_ToPO_RY.FieldByName('CGQty').Value-Qry_ToPO_RY.FieldByName('UseStock').Value)>0 then
              begin
                if ERP_UseStock_Array[j]>=(Qry_ToPO_RY.FieldByName('CLSL').Value-Qry_ToPO_RY.FieldByName('CGQty').Value-Qry_ToPO_RY.FieldByName('UseStock').Value)  then
                begin
                  ERP_UseStock_Array[j]:=ERP_UseStock_Array[j]- (Qry_ToPO_RY.FieldByName('CLSL').Value-Qry_ToPO_RY.FieldByName('CGQty').Value-Qry_ToPO_RY.FieldByName('UseStock').Value);
                  Qry_ToPO_RY.Edit;
                  Qry_ToPO_RY.FieldByName('UseStock').Value:=Qry_ToPO_RY.FieldByName('UseStock').Value+(Qry_ToPO_RY.FieldByName('CLSL').Value-Qry_ToPO_RY.FieldByName('CGQty').Value-Qry_ToPO_RY.FieldByName('UseStock').Value);
                  Qry_ToPO_RY.Post;
                end else
                begin
                  Qry_ToPO_RY.Edit;
                  Qry_ToPO_RY.FieldByName('UseStock').Value:=Qry_ToPO_RY.FieldByName('UseStock').Value+ERP_UseStock_Array[j];
                  Qry_ToPO_RY.Post;
                  ERP_UseStock_Array[j]:=0;
                end;
              end;
            end;
            break;
          end;
        end;
        Qry_ToPO_RY.Next;
      end;
      Query1.Active:=false;
    end;
  end;
end;
//
procedure TOrderSpecAll.RY_UseStock1Click(Sender: TObject);
begin
  RY_UseStockAutoValue(Qry_ToPO1,Qry_ToPO_RY1,false);
end;

//Update CGKCUSE
procedure TOrderSpecAll.CheckCGKCUSES_CGKCUSE(ZLBH:String;CLBH:string);
var UseQty:String;
begin
  //
  UseQty:='0';
  with Query1 do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Select IsNull(Sum(Qty),0) as Qty from CGKCUSES where ZLBH='''+ZLBH+''' and CLBH='''+CLBH+''' and GSBH='''+main.Edit2.Text+''' ');
    Active:=true;
    if RecordCount>0 then UseQty:=FieldByName('Qty').AsString;
    Active:=false;
  end;
  //
  with Query1 do
  begin
    Active:=false;
    SQL.Clear;
    sql.add('Select ZLBH from CGKCUSE where  ZLBH='''+ZLBH+''' and CLBH='''+CLBH+'''  and GSBH='''+main.Edit2.Text+'''  ');
    Active:=true;
    if ((RecordCount=0) and (strtofloat(UseQty)>0)) then
    begin
      SQL.Clear;
      SQL.Add('Insert into CGKCUSE');
      SQL.Add('(GSBH,ZLBH,CLBH,Qty,CLBHYS,Memo,UserID,UserDate,YN) values');
      SQL.Add('('''+main.Edit2.Text+''','''+ZLBH+''','''+CLBH+''',');
      SQL.Add(''''+UseQty+''',null,null,'''+main.Edit1.Text+''',GetDate(),1)');
      //funcObj.WriteErrorLog(sql.Text);
      Execsql;
    end else
    begin
       if ((RecordCount>0) and (strtofloat(UseQty)=0)) then
       begin
         Active:=false;
         SQL.Clear;
         SQL.Add('Delete  from CGKCUSE');
         SQL.Add('where ZLBH='''+ZLBH+'''') ;
         SQL.Add('and CLBH='''+CLBH+'''  ');
         SQL.Add('and GSBH='''+main.Edit2.Text+''' and UserID='''+main.Edit1.Text+''' ');//and MEMO in (select top 1 ''ZKBH:''+ZKBH from KCZK  where GSBH='''+main.Edit2.Text+''' and CLBH='''+Qry_ToPO.fieldbyname('CLBH').AsString+''' order by ZKBH desc)  ');
         //funcObj.WriteErrorLog(sql.Text);
         Execsql;
       end else
       begin
         if (RecordCount>0) then
         begin
           active:=false;
           SQL.Clear;
           SQL.Add('update CGKCUSE set Qty='''+UseQty+'''');
           SQL.add(',CLBHYS=null');
           SQL.add(',Memo=null ');
           SQL.add(',USERDATE=GetDate()');
           SQL.add(',USERID='''+main.Edit1.Text+'''');
           SQL.add('where ZLBH='''+ZLBH+'''');
           SQL.add('and CLBH='''+CLBH+'''');
           SQL.Add('and GSBH='''+main.Edit2.Text+''' and UserID='''+main.Edit1.Text+''' ');//and MEMO in (select top 1 ''ZKBH:''+ZKBH from KCZK  where GSBH='''+main.Edit2.Text+''' and CLBH='''+Qry_ToPO.fieldbyname('CLBH').AsString+''' order by ZKBH desc) ');
           //funcObj.WriteErrorLog(sql.Text);
           execsql;
         end;
       end;
    end;
  end;
end;
//檢查設定庫存
procedure TOrderSpecAll.CheckCGKCUSES(Query_PO:TQuery;Query_RY:TQuery;DS:TDataSource);
var i:integer;
    USESTOCK,UseStockQty:double;
    ZKBH:String;
begin
    with Query1 do
    begin
       active:=false;
       sql.Clear;
       sql.add('Select ZLBH from CGKCUSES where  ZLBH='''+Query_RY.FieldByName('ZLBH').AsString+''' and CLBH='''+Query_PO.FieldByName('CLBH').AsString+''' and SIZE='''+Query_RY.FieldByName('Size').AsString+''' and GSBH='''+main.Edit2.Text+''' ');
       active:=true;
       if RecordCount=0 then
       begin
         if Query_RY.FieldByName('UseStock').Value>0 then
         begin
           //沖銷造庫單號和數量
           KCZKSQry.Active:=false;
           KCZKSQry.DataSource:=DS;
           KCZKSQry.Active:=true;
           USESTOCK:=Query_RY.fieldbyname('USESTOCK').Value;
           //
           repeat
             if KCZKSQry.RecordCount>0 then
             begin
               if KCZKSQry.FieldByName('ZKLQty').Value>0 then
               begin
                 if KCZKSQry.FieldByName('ZKLQty').Value>=USESTOCK then
                 begin
                   UseStockQty:=USESTOCK;
                   USESTOCK:=USESTOCK-UseStockQty;
                   ZKBH:=KCZKSQry.FieldByName('ZKBH').Value;
                   KCZKSQry.Edit;
                   KCZKSQry.FieldByName('ZKLQty').Value:=KCZKSQry.FieldByName('ZKLQty').Value-UseStockQty;
                   KCZKSQry.Post;
                   if KCZKSQry.FieldByName('ZKLQty').Value=0 then KCZKSQry.Next;
                 end else
                 begin
                   UseStockQty:=KCZKSQry.FieldByName('ZKLQty').Value;
                   USESTOCK:=USESTOCK-UseStockQty;
                   ZKBH:=KCZKSQry.FieldByName('ZKBH').Value;
                   KCZKSQry.Edit;
                   KCZKSQry.FieldByName('ZKLQty').Value:=KCZKSQry.FieldByName('ZKLQty').Value-UseStockQty;
                   KCZKSQry.Post;
                   if KCZKSQry.FieldByName('ZKLQty').Value=0 then KCZKSQry.Next;
                 end;
               end else
               begin
                 UseStockQty:=USESTOCK;
                 USESTOCK:=USESTOCK-UseStockQty;
                 ZKBH:='ZZZZZZZZZZ';
               end;
             end else
             begin
               UseStockQty:=USESTOCK;
               USESTOCK:=USESTOCK-UseStockQty;
               ZKBH:='ZZZZZZZZZZ';
             end;
             active:=false;
             sql.Clear;
             sql.Add('Insert into CGKCUSES');
             sql.Add('(GSBH,ZLBH,CLBH,SIZE,ZKBH, Qty,UserID,UserDate,YN) values');
             sql.Add('('''+main.Edit2.Text+''''+','''+Query_RY.fieldbyname('ZLBH').AsString+''','''+Query_PO.fieldbyname('CLBH').AsString+''','''+Query_RY.FieldByName('Size').AsString+''',');
             sql.Add(''''+ZKBH+''','+floattostr(UseStockQty)+','''+main.Edit1.Text+''',GetDate(),1)');
             //funcObj.WriteErrorLog(sql.Text);
             Execsql;
           until USESTOCK<=0;
         end;
       end else
       begin
           if (Query_RY.FieldByName('UseStock').Value=0)  then
           begin
             active:=false;
             sql.Clear;
             sql.Add('Delete CGKCUSES from CGKCUSES');
             sql.Add('where ZLBH='''+Query_RY.fieldbyname('ZLBH').AsString+'''') ;
             sql.Add('and CLBH='''+Query_PO.fieldbyname('CLBH').AsString+''' and SIZE='''+Query_RY.FieldByName('Size').AsString+''' ');
             sql.Add('and GSBH='''+main.Edit2.Text+''' and UserID='''+main.Edit1.Text+''' ');
             //funcObj.WriteErrorLog(sql.Text);
             execsql;
           end else
           begin
             //更新要先刪除
             active:=false;
             sql.Clear;
             sql.Add('Delete CGKCUSES from CGKCUSES');
             sql.Add('where ZLBH='''+Query_RY.fieldbyname('ZLBH').AsString+'''') ;
             sql.Add('and CLBH='''+Query_RY.fieldbyname('CLBH').AsString+''' and SIZE='''+Query_RY.FieldByName('SIZE').AsString+''' ');
             sql.Add('and GSBH='''+main.Edit2.Text+''' and UserID='''+main.Edit1.Text+'''  ');//and MEMO in (select top 1 ''ZKBH:''+ZKBH from KCZK  where GSBH='''+main.Edit2.Text+''' and CLBH='''+CGS.fieldbyname('CLBH').AsString+''' order by ZKBH desc) ');
             //funcObj.WriteErrorLog(sql.Text);
             execsql;
             //沖銷造庫單號和數量
             KCZKSQry.Active:=false;
             KCZKSQry.DataSource:=DS;
             KCZKSQry.Active:=true;
             USESTOCK:=Query_RY.fieldbyname('USESTOCK').Value;
             //
             repeat
               if KCZKSQry.RecordCount>0 then
               begin
                 if KCZKSQry.FieldByName('ZKLQty').Value>0 then
                 begin
                   if KCZKSQry.FieldByName('ZKLQty').Value>=USESTOCK then
                   begin
                     UseStockQty:=USESTOCK;
                     USESTOCK:=USESTOCK-UseStockQty;
                     ZKBH:=KCZKSQry.FieldByName('ZKBH').Value;
                     KCZKSQry.Edit;
                     KCZKSQry.FieldByName('ZKLQty').Value:=KCZKSQry.FieldByName('ZKLQty').Value-UseStockQty;
                     KCZKSQry.Post;
                     if KCZKSQry.FieldByName('ZKLQty').Value=0 then KCZKSQry.Next;
                   end else
                   begin
                     UseStockQty:=KCZKSQry.FieldByName('ZKLQty').Value;
                     USESTOCK:=USESTOCK-UseStockQty;
                     ZKBH:=KCZKSQry.FieldByName('ZKBH').Value;
                     KCZKSQry.Edit;
                     KCZKSQry.FieldByName('ZKLQty').Value:=KCZKSQry.FieldByName('ZKLQty').Value-UseStockQty;
                     KCZKSQry.Post;
                     if KCZKSQry.FieldByName('ZKLQty').Value=0 then KCZKSQry.Next;
                   end;
                 end else
                 begin
                   UseStockQty:=USESTOCK;
                   USESTOCK:=USESTOCK-UseStockQty;
                   ZKBH:='ZZZZZZZZZZ';
                 end;
               end else
               begin
                 UseStockQty:=USESTOCK;
                 USESTOCK:=USESTOCK-UseStockQty;
                 ZKBH:='ZZZZZZZZZZ';
               end;
               active:=false;
               sql.Clear;
               sql.Add('Insert into CGKCUSES');
               sql.Add('(GSBH,ZLBH,CLBH,SIZE,ZKBH, Qty,UserID,UserDate,YN) values');
               sql.Add('('''+main.Edit2.Text+''''+','''+Query_RY.fieldbyname('ZLBH').AsString+''','''+Query_PO.fieldbyname('CLBH').AsString+''','''+Query_RY.FieldByName('Size').AsString+''',');
               sql.Add(''''+ZKBH+''','+floattostr(UseStockQty)+','''+main.Edit1.Text+''',GetDate(),1)');
               //funcObj.WriteErrorLog(sql.Text);
               Execsql;
             until USESTOCK<=0;
             //
           end;
       end;
    end;
end;
//
procedure TOrderSpecAll.RY_UseSockSaveProces(Qry_ToPO:TQuery;Qry_ToPO_RY:TQuery;RY_UseStock:TMenuItem;RY_Save:TMenuItem;RY_Cancel:TMenuItem;DS:TDataSource);
var i:integer;
    //
    ZLBH,CLBH,ZKBH:String;
    IsUpdateCGKCUSE:boolean;
begin
  //if messagedlg('Are you sure save use Stock  ?',mtconfirmation,[mbYes,mbNo],0)=mrYes then
  //begin
    Qry_ToPO_RY.First;
    for i:=0 to Qry_ToPO_RY.RecordCount-1 do
    begin
      //20210324分段尺碼多訂單 利庫
      if Qry_ToPO_RY.fieldbyname('UseStock').IsNull then
      begin
        Qry_ToPO_RY.Edit;
        Qry_ToPO_RY.fieldbyname('UseStock').Value:=0;
        Qry_ToPO_RY.Post;
      end;
      if ((ZLBH<>'') and (ZLBH<>Qry_ToPO_RY.FieldByName('ZLBH').AsString) and IsUpdateCGKCUSE=true ) then
      begin
        CheckCGKCUSES_CGKCUSE(ZLBH,CLBH);
        IsUpdateCGKCUSE:=false;
      end;
      ZLBH:=Qry_ToPO_RY.FieldByName('ZLBH').AsString;
      CLBH:=Qry_ToPO.FieldByName('CLBH').AsString;
      ZKBH:=Qry_ToPO.fieldbyname('ZKBH').AsString;
      //
      case Qry_ToPO_RY.updatestatus of
        usmodified:
         begin
            //檢查庫存
            if Qry_ToPO_RY.FieldByName('UseStock').Value<>Qry_ToPO_RY.FieldByName('UseStock').OldValue then
            begin
             CheckCGKCUSES(Qry_ToPO,Qry_ToPO_RY,DS);
             IsUpdateCGKCUSE:=true;
            end;
         end;
      end;
      Qry_ToPO_RY.Next;
    end;
    if ((ZLBH<>'') and (IsUpdateCGKCUSE=true))  then
    begin
      CheckCGKCUSES_CGKCUSE(ZLBH,CLBH);
    end;
    //
  //end;
  //20200814檢查更新造庫數量
  with Query1 do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Update KCZKS set LQty=A.LQty from (');
    SQL.Add('select KCZKS.ZKBH,KCZKS.SIZE,IsNull(CGKCUSE.Qty,0) as UseQty,Round(KCZKS.Qty-IsNull(CGKCUSE.Qty,0),1) as LQty from KCZKS');
    SQL.Add('left join (');
    SQL.Add('Select CGKCUSES.ZKBH ,CGKCUSES.SIZE,Sum(CGKCUSES.Qty) as Qty from CGKCUSES');
    SQL.Add('where CGKCUSES.CLBH='''+CLBH+''' and CGKCUSES.ZKBH<>''ZZZZZZZZZZ''  and CGKCUSES.UserDate>=GETDATE()-180  ');
    SQL.Add('Group by CGKCUSES.ZKBH ,CGKCUSES.SIZE ) CGKCUSE on KCZKS.ZKBH=CGKCUSE.ZKBH and KCZKS.SIZE=CGKCUSE.SIZE');
    SQL.Add('where KCZKS.ZKBH in (select ZKBH from KCZK where  KCZK.ZKNO=''ZZZZZZZZZZ'' and CLBH='''+CLBH+''' and UserDate>=GETDATE()-180 )  ) A');
    SQL.Add('where  A.ZKBH=KCZKS.ZKBH and A.SIZE=KCZKS.SIZE ');
    //funcObj.WriteErrorLog(sql.Text);
    ExecSQL();
    Active:=false;
    SQL.Clear;
    SQL.Add('Update KCZK set LQty=A.LQty from ');
    SQL.Add('(Select ZKBH,Sum(LQty) as LQty ');
    SQL.Add('from KCZKS ');
    SQL.Add('where KCZKS.ZKBH in (select ZKBH from KCZK where  KCZK.ZKNO=''ZZZZZZZZZZ'' and CLBH='''+CLBH+''' and UserDate>=GETDATE()-180 ) ');
    SQL.Add('Group by ZKBH) A ');
    SQL.Add('where A.ZKBH=KCZK.ZKBH ');
    //funcObj.WriteErrorLog(sql.Text);
    ExecSQL();
  end;
  //
  Query1.Active:=false;
  Qry_ToPO_RY.Active:=false;
  Qry_ToPO_RY.cachedupdates:=false;
  Qry_ToPO_RY.requestlive:=false;
  Qry_ToPO_RY.Active:=true;
  //
  RY_UseStock.enabled:=false;
  RY_Save.enabled:=false;
  RY_Cancel.enabled:=false;
  //
  KCZKSQry.Active:=false;
end;
//
procedure TOrderSpecAll.RY_Save1Click(Sender: TObject);
begin
  RY_UseSockSaveProces(Qry_ToPO1,Qry_ToPO_RY1,RY_UseStock1,RY_Save1,RY_Cancel1,DS_ToPO_RY);
end;

procedure TOrderSpecAll.RY_UseStock2Click(Sender: TObject);
begin
  RY_UseStockAutoValue(Qry_ToPO2,Qry_ToPO_RY2,true);
end;

procedure TOrderSpecAll.RY_Save2Click(Sender: TObject);
begin
  RY_UseSockSaveProces(Qry_ToPO2,Qry_ToPO_RY2,RY_UseStock2,RY_Save2,RY_Cancel2,DS_ToPO_RY2);
end;

procedure TOrderSpecAll.HideKhoSetting();
begin
   if KhoCK.Checked=false then
   begin
     DBGridEh2.Columns[9].Visible:=false;
     DBGridEh2.Columns[10].Visible:=false;
     DBGridEh2.Columns[11].Visible:=false;
     DBGridEh4.Columns[9].Visible:=false;
     DBGridEh4.Columns[10].Visible:=false;
     DBGridEh4.Columns[11].Visible:=false;
     N1.Visible:=false;
     //
     DBGridEh3.PopupMenu:=nil;
     DBGridEh5.PopupMenu:=nil;
   end else
   begin
     DBGridEh2.Columns[9].Visible:=true;
     DBGridEh2.Columns[10].Visible:=true;
     DBGridEh2.Columns[11].Visible:=true;
     DBGridEh4.Columns[9].Visible:=true;
     DBGridEh4.Columns[10].Visible:=true;
     DBGridEh4.Columns[11].Visible:=true;
     N2.Visible:=true;
     //
     DBGridEh3.PopupMenu:=Pop_ToPO_RY1;
     //DBGridEh5.PopupMenu:=Pop_ToPO_RY2;  可利庫沒有SIZE 先不用
   end;
end;
procedure TOrderSpecAll.KhoCKClick(Sender: TObject);
begin
  HideKhoSetting();
end;

procedure TOrderSpecAll.DBGridEh3DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  //新型體
  if Qry_ToPO_RY1.FieldByName('ordermode').AsString='NC' then
  begin
     DBGridEh3.Canvas.Brush.Color:=clYellow;
     if DataCol = 1 then
       DBGridEh3.DefaultDrawColumnCell(Rect, DataCol, Column, State);
  end
end;

procedure TOrderSpecAll.DBGridEh5DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  //新型體
  if Qry_ToPO_RY2.FieldByName('ordermode').AsString='NC' then
  begin
     DBGridEh5.Canvas.Brush.Color:=clYellow;
     if DataCol = 1 then
       DBGridEh5.DefaultDrawColumnCell(Rect, DataCol, Column, State);
  end
end;

procedure TOrderSpecAll.PO1_IntegerClick(Sender: TObject);
begin

end;
//多筆利庫
procedure TOrderSpecAll.Quick_UseStock(Qry_ToPO:TQuery; Qry_ToPO_RY:TQuery;IsSize:Boolean;E:TMenuItem;M:TMenuItem;PO:TMenuItem;Cancel:TMenuItem;UseStock:TMenuItem;DBGridEh: TDBGridEh;
                                       RY_Modify:TMenuItem; RY_UseStock:TMenuItem;RY_Save:TMenuItem);
var i:integer;
    bm:Tbookmark;
    bookmarklist:tbookmarklistEH;
begin
  Qry_ToPO_RY.Active:=false;
  //DBGridEh.SelectedRows.SelectAll;
  //
  Qry_ToPO.disablecontrols;
  bm:=Qry_ToPO.getbookmark;
  bookmarklist:=DBGridEh.selectedrows;
  try
    for i:=0 to bookmarklist.count-1 do
    begin
       Qry_ToPO.gotobookmark(pointer(bookmarklist[i]));
       if ((Qry_ToPO.FieldByName('Diff').AsFloat<0) and (Qry_ToPO.FieldByName('ZKLQty').AsFloat>0)) then //有採購數量
       begin
         Qry_ToPO_RY.Active:=true;
         RY_Modify.Click;
         RY_UseStock.Click;
         RY_Save.Click;
         Qry_ToPO_RY.Active:=false;
       end;
    end;
  finally
    Qry_ToPO.gotobookmark(bm);
    Qry_ToPO.freebookmark(bm);
    Qry_ToPO.enablecontrols;
  end;
  //
  showmessage('finish !');
  Qry_ToPO_RY.Active:=true;
  //
  E.Enabled:=true;
  M.Enabled:=true;
  PO.Enabled:=false;
  Cancel.Enabled:=false;
  UseStock.Enabled:=false;
  //
  Qry_ToPO.Active:=false;
  Qry_ToPO.Active:=true;
end;

procedure TOrderSpecAll.QUseStock1Click(Sender: TObject);
begin
  Quick_UseStock(Qry_ToPO1, Qry_ToPO_RY1, false, E1,M1, PO1,Cancel1,QUseStock1,DBGridEh2, RY_Modify1, RY_UseStock1, RY_Save1);
end;

procedure TOrderSpecAll.QUseStock2Click(Sender: TObject);
begin
  Quick_UseStock(Qry_ToPO2, Qry_ToPO_RY2, false, E2,M2, PO2,Cancel2,QUseStock2,DBGridEh4, RY_Modify2, RY_UseStock2, RY_Save2);
end;

end.
