unit main1;

interface
                                             
uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, jpeg, ExtCtrls, StdCtrls, DB, DBTables, ComCtrls,
  ActnList,DBGridS,DBGridEh, Grids;

type
  Tmain = class(TForm)
    MainMenu1: TMainMenu;
    SN1: TMenuItem;
    SN7: TMenuItem;
    SN19: TMenuItem;
    N1: TMenuItem;
    SN11: TMenuItem;
    Image1: TImage;
    Edit1: TEdit;
    Query1: TQuery;
    SN2: TMenuItem;
    SN21: TMenuItem;
    SN211: TMenuItem;
    SN212: TMenuItem;
    SN213: TMenuItem;
    SN22: TMenuItem;
    SN221: TMenuItem;
    SN222: TMenuItem;
    SN23: TMenuItem;                              
    SN3: TMenuItem;
    SN31: TMenuItem;
    SN32: TMenuItem;
    SN4: TMenuItem;
    SN5: TMenuItem;
    SN51: TMenuItem;
    SN52: TMenuItem;
    SN231: TMenuItem;
    SN232: TMenuItem;
    SN12: TMenuItem;
    SN13: TMenuItem;
    SN14: TMenuItem;
    StatusBar1: TStatusBar;
    SN33: TMenuItem;
    SN6: TMenuItem;
    SN61: TMenuItem;
    SN62: TMenuItem;                    
    SN223: TMenuItem;                                   
    SN34: TMenuItem;                       
    SN321: TMenuItem;
    SN322: TMenuItem;
    SN233: TMenuItem;
    Edit2: TEdit;
    SN214: TMenuItem;
    SN15: TMenuItem;
    SN24: TMenuItem;
    SN224: TMenuItem;
    SN25: TMenuItem;
    SN16: TMenuItem;
    SN71: TMenuItem;
    SN72: TMenuItem;
    SN73: TMenuItem;
    SN731: TMenuItem;
    SN733: TMenuItem;
    SN734: TMenuItem;
    SN74: TMenuItem;
    SN75: TMenuItem;
    SN751: TMenuItem;
    SN752: TMenuItem;
    SN753: TMenuItem;
    SN76: TMenuItem;
    SN761: TMenuItem;
    SN762: TMenuItem;
    SN763: TMenuItem;
    SN764: TMenuItem;
    SN78: TMenuItem;
    SN711: TMenuItem;
    SN712: TMenuItem;
    SN713: TMenuItem;
    PopupMenu: TPopupMenu;
    DevelopPurcahseFlowChar1: TMenuItem;
    SN732: TMenuItem;
    SN8: TMenuItem;
    SN81: TMenuItem;
    SN811: TMenuItem;
    SN765: TMenuItem;
    SN35: TMenuItem;
    SN26: TMenuItem;
    ActionList1: TActionList;
    SN735: TMenuItem;
    SN351: TMenuItem;
    SN352: TMenuItem;
    SN812: TMenuItem;
    SN36: TMenuItem;
    SN17: TMenuItem;
    SN79: TMenuItem;
    SN736: TMenuItem;
    SN813: TMenuItem;
    SN234: TMenuItem;
    SN814: TMenuItem;
    SN815: TMenuItem;
    SN7A: TMenuItem;
    SN43: TMenuItem;
    SN431: TMenuItem;
    SN432: TMenuItem;
    SN433: TMenuItem;
    SN434: TMenuItem;
    SN435: TMenuItem;
    SN737: TMenuItem;
    SN816: TMenuItem;
    SN7B: TMenuItem;
    SN37: TMenuItem;
    SN251: TMenuItem;
    SN252: TMenuItem;
    BLimitHideQry: TQuery;
    SN28: TMenuItem;
    SN281: TMenuItem;
    SN282: TMenuItem;
    SN323: TMenuItem;
    SN280: TMenuItem;
    N8171: TMenuItem;
    SN7C: TMenuItem;
    SN38: TMenuItem;
    SN7D: TMenuItem;
    SN738: TMenuItem;
    SN9: TMenuItem;
    SN91: TMenuItem;
    SN92: TMenuItem;
    SN739: TMenuItem;
    SN215: TMenuItem;
    SN225: TMenuItem;
    SN2151: TMenuItem;
    SN2152: TMenuItem;
    SN2153: TMenuItem;
    SN740: TMenuItem;
    SN226: TMenuItem;
    SN818: TMenuItem;
    SN216: TMenuItem;
    SN2161: TMenuItem;
    N2162: TMenuItem;
    SN29: TMenuItem;
    SN2154: TMenuItem;
    SN741: TMenuItem;
    SN227: TMenuItem;
    SN39: TMenuItem;
    SN3A: TMenuItem;
    SN2A: TMenuItem;
    SN3B: TMenuItem;
    SN2B: TMenuItem;
    SN2C: TMenuItem;
    SN742: TMenuItem;
    SN3A1: TMenuItem;
    SN3A2: TMenuItem;
    SN53: TMenuItem;
    SN93: TMenuItem;
    SN228: TMenuItem;
    SN7E: TMenuItem;
    SN714: TMenuItem;
    SN217: TMenuItem;
    SN3C: TMenuItem;
    SN2D: TMenuItem;
    SN766: TMenuItem;
    SN7F: TMenuItem;
    SN7G: TMenuItem;
    N3DForeCastPurchaseCompare1: TMenuItem;
    SN743: TMenuItem;
    SN18: TMenuItem;
    SN7H: TMenuItem;
    SN3E: TMenuItem;
    SN3F: TMenuItem;
    N10ESG1: TMenuItem;
    SN101: TMenuItem;
    N102CLBHWeight1: TMenuItem;
    procedure SN19Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure SN11Click(Sender: TObject);
    procedure SN211Click(Sender: TObject);
    procedure SN212Click(Sender: TObject);
    procedure SN213Click(Sender: TObject);
    procedure SN221Click(Sender: TObject);
    procedure SN222Click(Sender: TObject);
    procedure SN231Click(Sender: TObject);
    procedure SN232Click(Sender: TObject);
    procedure SN12Click(Sender: TObject);
    procedure SN13Click(Sender: TObject);
    procedure SN31Click(Sender: TObject);
    procedure SN14Click(Sender: TObject);
    procedure SN33Click(Sender: TObject);
    procedure SN61Click(Sender: TObject);
    procedure SN62Click(Sender: TObject);
    procedure SN223Click(Sender: TObject);
    procedure SN34Click(Sender: TObject);
    procedure SN321Click(Sender: TObject);
    procedure SN322Click(Sender: TObject);
    procedure SN233Click(Sender: TObject);
    procedure SN214Click(Sender: TObject);
    procedure SN15Click(Sender: TObject);
    procedure SN24Click(Sender: TObject);
    procedure SN224Click(Sender: TObject);
    procedure SN16Click(Sender: TObject);
    procedure SN78Click(Sender: TObject);
    procedure SN711Click(Sender: TObject);
    procedure SN72Click(Sender: TObject);
    procedure SN731Click(Sender: TObject);
    procedure SN733Click(Sender: TObject);
    procedure SN734Click(Sender: TObject);
    procedure SN74Click(Sender: TObject);
    procedure SN752Click(Sender: TObject);
    procedure SN751Click(Sender: TObject);
    procedure SN753Click(Sender: TObject);
    procedure SN761Click(Sender: TObject);
    procedure SN762Click(Sender: TObject);
    procedure SN763Click(Sender: TObject);
    procedure SN764Click(Sender: TObject);
    procedure SN712Click(Sender: TObject);
    procedure SN713Click(Sender: TObject);
    procedure DevelopPurcahseFlowChar1Click(Sender: TObject);
    procedure SN732Click(Sender: TObject);
    procedure SN811Click(Sender: TObject);
    procedure SN765Click(Sender: TObject);
    procedure SN26Click(Sender: TObject);
    procedure SN735Click(Sender: TObject);
    procedure SN351Click(Sender: TObject);
    procedure SN352Click(Sender: TObject);
    procedure SN812Click(Sender: TObject);
    procedure SN36Click(Sender: TObject);
    procedure SN17Click(Sender: TObject);
    procedure SN79Click(Sender: TObject);
    procedure SN736Click(Sender: TObject);
    procedure SN813Click(Sender: TObject);
    procedure SN234Click(Sender: TObject);
    procedure SN814Click(Sender: TObject);
    procedure SN815Click(Sender: TObject);
    procedure SN7AClick(Sender: TObject);
    procedure SN431Click(Sender: TObject);
    procedure SN432Click(Sender: TObject);
    procedure SN433Click(Sender: TObject);
    procedure SN434Click(Sender: TObject);
    procedure SN435Click(Sender: TObject);
    procedure SN737Click(Sender: TObject);
    procedure SN816Click(Sender: TObject);
    procedure SN7BClick(Sender: TObject);
    procedure SN37Click(Sender: TObject);
    procedure SN251Click(Sender: TObject);
    procedure SN252Click(Sender: TObject);
    procedure SN281Click(Sender: TObject);
    procedure SN282Click(Sender: TObject);
    procedure SN323Click(Sender: TObject);
    procedure SN280Click(Sender: TObject);
    procedure Image1DblClick(Sender: TObject);
    procedure N8171Click(Sender: TObject);
    procedure SN7CClick(Sender: TObject);
    procedure SN38Click(Sender: TObject);
    procedure SN7DClick(Sender: TObject);
    procedure SN738Click(Sender: TObject);
    procedure SN91Click(Sender: TObject);
    procedure SN92Click(Sender: TObject);
    procedure SN739Click(Sender: TObject);
    procedure SN225Click(Sender: TObject);
    procedure SN2151Click(Sender: TObject);
    procedure SN2152Click(Sender: TObject);
    procedure SN2153Click(Sender: TObject);
    procedure SN740Click(Sender: TObject);
    procedure SN226Click(Sender: TObject);
    procedure SN818Click(Sender: TObject);
    procedure SN2161Click(Sender: TObject);
    procedure N2162Click(Sender: TObject);
    procedure SN29Click(Sender: TObject);
    procedure SN52Click(Sender: TObject);
    procedure SN741Click(Sender: TObject);
    procedure SN227Click(Sender: TObject);
    procedure SN39Click(Sender: TObject);
    procedure SN2AClick(Sender: TObject);
    procedure SN3BClick(Sender: TObject);
    procedure SN2BClick(Sender: TObject);
    procedure SN2154Click(Sender: TObject);
    procedure SN2CClick(Sender: TObject);
    procedure SN742Click(Sender: TObject);
    procedure SN3A1Click(Sender: TObject);
    procedure SN3A2Click(Sender: TObject);
    procedure SN53Click(Sender: TObject);
    procedure SN93Click(Sender: TObject);
    procedure SN228Click(Sender: TObject);
    procedure SN7EClick(Sender: TObject);
    procedure SN714Click(Sender: TObject);
    procedure SN217Click(Sender: TObject);
    procedure SN3CClick(Sender: TObject);
    procedure SN2DClick(Sender: TObject);
    procedure SN766Click(Sender: TObject);
    procedure SN7FClick(Sender: TObject);
    procedure SN7GClick(Sender: TObject);
    procedure N3DForeCastPurchaseCompare1Click(Sender: TObject);
    procedure SN743Click(Sender: TObject);
    procedure SN18Click(Sender: TObject);
    procedure SN7HClick(Sender: TObject);
    procedure SN3EClick(Sender: TObject);
    procedure SN3FClick(Sender: TObject);
    procedure SN101Click(Sender: TObject);
    procedure N102CLBHWeight1Click(Sender: TObject);
  private
    MKID:String;
    LanguageID:String;
    { Private declarations }
     //---20150817 Projoe 補上由 Nick 所提供的function log 程式
    //用法: SaveProLog(GetMKID(),TMenuItem(Sender).Name,GetUserID());
    procedure SaveProLog(AMKID: string; AFORMID: string; AUSERID: string);
    //---20150817 Projoe 修改 Menu 上面的按鈕呼叫方式
    procedure showFm(var fm: Pointer; parentClass: TPersistentClass; miname: string);

  public
    ServerIP:string;
    { Public declarations }
    procedure Language();
    procedure FormLanguage(var formObj:Pointer;mainForm:string);
    procedure FormDBGridLanguage(var formObj:Pointer ;mainForm:string);
    procedure EnableFORMID();
  end;

var
  main: Tmain;
  suser,spwd:string;

implementation

uses
  DM3, OrderSpec1, Quotation1, PurNoSize1, PurSize1, PurOther1, TraceNoSize1,
  TraceSize1, MaterialNew1, SuppNew1, PurList1, ThreadBOM1,
  UseStock1, EmbModel1, EmbArticle1, TraceList1, PurchaseCheck1,
  DeliverTrace1, DeliverTraceS1, QuotationRep1, PurListTW1, PurTotal1,
  MaterialList1, Purtrace1, PurchaseAdjust1, TraceTotal1, purchasekpi1,
  OMaterialListP,FunUnit, TotalApplyReport1, ProcurementValue1,
  PurSampleFlowChart1, BOMReceive1, SampleMerge1, PurSample1, TraceSample1,
  SupplierSample1, TraceListSample1 ,PurSampleInvoice1, TransportCharge1,
  PurConfirmPrice1, MaterialMOQ1 , ForwarderSample1, SupplierKPI1,
  SamplePurchaseAnalysis1,UseStockSample1,AnyStock1,SampleSupplierAnalysis1,
  GMS_RFT1,Cons_AD1, OrderSpecAll1, UseStockList1,
  ColorSwatchCardTracking1, ProduceUseStock1, UpperMatInformation1,
  PurtraceGC1, SKU_ExtraCost1, TraceChangeMaterial1, TempMaterial1,
  MatDetailInformation1, QuotationConCheckList1, QuotationConCheck1,
  PriceChecking1, TrackingPO_KCLL1, Transportation1, UPSupplier1,
  UPQuotation1, UPMaterial1, UPMaterialQuery1, UPOtherQuery1, FlexCode1,
  ConfirmSwatchReport1, Purchaselist1, PurtraceMatch1, ProdSupplierKPI1,
  Reality_Remain_Quantity_Pre1, PreOrder_UseStock1, DeliverTraceOther1,
  PreOrder_Calcuate1, Modelmaterialfee1, PurchaseConfirmShoes1,
  CFMSwatchTracKing1, CBYSize1, CBYSizeComparison1, ApplyMold1,
  MaterialAllowanceSetting1, PO_Permission1, CFMSwatchDatabase1,
  ApplyTotal1, TraceApplyTotal1, ApplyTotalConfirm1, ApplyTotalConfirm21,
  CGNOConfirm1, CGNOConfirm21, OriginVATNo1, ApplyTotalCheck1, SupplierReview1,
  ColorStandardDatabase1, Budget_Setting1, FileOriginMaterial1,
  Traceability_Purchasing1, OriginMaterial1, ZlQuery1,
  SupplierSaleContract1, Upload_PLX1, VendorColorKPI1,
  Traceability_Purchasing_Chemical1, SupplierReviewDevelop1, Season_Set1,
  SGDH_STOCK1, PaymentQuotation1, TraceStock1, OrderControlRecord1,
  MassMatMOQ1, ApplyPhom1, SupplierBPM1, RequestCheckStock1, SetCommonMat1,
  ForeCast_Purchase_Compare1, Apply_Purchase_Printing_Mold1,
  MaterialWovenList1, VLAReport1, PercenReport1, MaterialOnTimeArrivalRate1,
  ESG_CLBH1, CLBH_Weight1;
                               

{$R *.dfm}
//
procedure Tmain.showFm(var fm: Pointer; parentClass: TPersistentClass; miname: string);  //
begin
   //Create Form and Show Form
   if parentClass<>nil then
   begin
     if fm <> nil then
     begin
        TForm(fm).show;
        TForm(fm).windowstate := wsmaximized;
     end else
     begin
        fm := TControlClass(parentClass).create(self);
        SaveProLog(MKID, miname, main.Edit1.Text);
        TForm(fm).show;
        main.FormLanguage(fm,TForm(fm).Name);
     end;
   end;
end;

procedure Tmain.SaveProLog(AMKID: string; AFORMID: string; AUSERID: string);
//---20150817 Projoe 補上由 Nick 所提供之追蹤function log 的程式
//用法: SaveProLog(GetMKID(),TMenuItem(Sender).Name,GetUserID());
var
  MyQuery: TQuery;
begin
  try
    with MyQuery do
      begin
        MyQuery := TQuery.Create(application);
        DatabaseName := 'DB';

        Close;
        SQL.Clear;
        SQL.Add('insert into PROGLOG (MKID,FORMID,USERID,USERDATE)');
        SQL.Add('values (:MKID,:FORMID,:USERID,:USERDATE)');
        ParamByName('MKID').Value := AMKID;
        ParamByName('FORMID').Value := AFORMID;
        ParamByName('USERID').Value := AUSERID;
        ParamByName('USERDATE').Value := now;
        if not Prepared then
          Prepare;
        ExecSQL;
      end;
  finally
    FreeAndNil(MyQuery);
  end;
end;

procedure Tmain.SN19Click(Sender: TObject);
begin
close;
end;

procedure Tmain.FormClose(Sender: TObject; var Action: TCloseAction);
var sline:string;
    textvar:textfile;
    MDIChildIsExists:boolean;
    i:Integer;
begin
  //20141105 檢查子Form是否全部關閉和自動關閉流程Form
  MDIChildIsExists:=false;
  for i:=0 to main.MDIChildCount-1 do
  begin
    if main.MDIChildren[i]<>nil then
    begin
      if main.MDIChildren[i].Name='PurSampleFlowChart' then
      begin
        TPurSampleFlowChart(main.MDIChildren[i]).willClose:=true;
      end else
      begin
        MDIChildIsExists:=true;
        break;
      end;
    end;
  end;
  //
  if MDIChildIsExists=true then //20141105 修改if main.ActiveMDIChild<>nil  then
  begin
    Messagedlg('Pls close all child form first.',mtwarning,[mbOK],0);
    action:=canone;
  end
    else
      begin
        with query1 do
          begin
            active:=false;
            sql.Clear;
            sql.Add('update Busers set LASTDATETIME=getdate()' ) ;
            sql.add('where USERID='+''''+edit1.Text+'''' );
            execsql;
          end;
        action:=cafree;
        FuncObj.Free;
  end;
end;

procedure Tmain.FormCreate(Sender: TObject);
var y,m,d:word;
    sline:string;
    textvar:textfile;
begin
  shortdateformat:='yyyy/MM/dd';
  funcObj:=TFuncObj.Create;
  funcObj.setParameter(true,ExtractFilePath(Application.ExeName));
  ServerIP:=FuncObj.GetBDE_SERVERIP(DM2.DBshipping.AliasName);
   //指定BDE路徑
  Session.NetFileDir := ExtractFileDir(Application.ExeName);
  assignfile(textvar,extractfilepath(application.ExeName)+'user.txt');
  reset(textvar);
  readln(textvar,sline);
  if length(sline)<2 then
  begin
    showmessage('Wrong program. Pls run the main program first.');
    closefile(textvar);
    application.Terminate;
  end else
  begin
    suser:=copy(sline,0,pos('=',sline)-1);
    spwd:=copy(sline,pos('=',sline)+1,maxint);
    image1.Picture.LoadFromFile(extractfilepath(application.ExeName)+'factory.jpg');
  end;
  closefile(textvar);
  edit1.Text:=suser;
  //showmessage(sline);

  assignfile(textvar,extractfilepath(application.ExeName)+'Company.txt');
  reset(textvar);
  readln(textvar,sline);
  edit2.Text:=sline;
  readln(textvar,sline);//20200424第二行語言
  LanguageID:=sline;
  closefile(textvar);                                       
  with Query1 do
  begin
    ParamByName('userid').Value := suser;
    ParamByName('mkid').Value := '08';  MKID:='08';
    ParamByName('GSBH').Value := edit2.text;
    Active:=true;      //根據用戶名稱確定權限
    //
    //SN323.enabled := Locate('FORMID', 'SN323', []);
    BLimitHideQry.ParamByName('mkid').Value := '08';
    BLimitHideQry.Active:=true;

    EnableFORMID();    //20211009 功能選單
    BLimitHideQry.Active:=false;
    //
    active:=false;
   end;
   Language();
end;
//20211009 功能選單啟用或停用
procedure Tmain.EnableFORMID();
var i:integer;
    MenuName:String;
    tmpMenuItem:TMenuItem;
begin
  try
   for i:=0 to  main.ComponentCount-1 do
   begin
     if main.Components[i] is TMenuItem then
     begin
        MenuName:=TMenuItem(main.Components[i]).Name;
        MenuName:=trim(Copy(MenuName,1,6));
        tmpMenuItem:=TMenuItem(FindComponent(MenuName));
        if (tmpMenuItem<>nil)  then
        begin
          if BLimitHideQry.Locate('FORMID', MenuName, []) then
          begin
             tmpMenuItem.enabled:=Query1.Locate('FORMID', MenuName, []);
             if BLimitHideQry.FieldByName('YN').AsString='2' then //Hide
             tmpMenuItem.visible:=false;
          end;
        end;
     end;
   end;
  except
    on E:Exception do
    begin
      Showmessage(E.Message+' '+MenuName);
    end;
  end;
end;

procedure Tmain.Language();
var i:integer;
    FieldLangeuage:String;
    tmpMenuItem:TMenuItem;
begin
  if trim(LanguageID)<>'' then
  begin
    FieldLangeuage:='VCLName_'+LanguageID;
    with Query1 do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('Select ForMID,'+FieldLangeuage+' as Langeuage from BLimit WHERE  MKID = '''+MKID+'''  ');
      Active:=true;
    end;
    for i:=0 to Query1.RecordCount-1 do
    begin
      tmpMenuItem:=TMenuItem(FindComponent(Query1.FieldByName('ForMID').AsString));
      if tmpMenuItem<>nil then
      begin
        if Query1.FieldByName('Langeuage').AsString<>'' then
        tmpMenuItem.Caption:=Query1.FieldByName('Langeuage').AsString;
      end;
      Query1.Next;
    end;
  end;
end;

//子Form功能介面語言
procedure Tmain.FormLanguage(var formObj:Pointer ;mainForm:string);
var i:integer;
    FieldLangeuage:String;
    //
    tmpLabel:TLabel;
    tmpButton:TButton;
    tmpMenuItem:TMenuItem;
    tmpCheckBox:TCheckBox;
    tmpRadioButton:TRadioButton;
    tmpTabSheet:TTabSheet;
    tmpTGroupBox:TGroupBox;
    Obj:TObject;
begin
  if trim(LanguageID)<>'' then
  begin
    FieldLangeuage:='VCLName_'+LanguageID;
    with Query1 do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('Select VCLID,'+FieldLangeuage+' as Langeuage from BLanguage WHERE  MKID = '''+MKID+''' and mainForm='''+mainForm+''' ');
      Active:=true;
    end;
    for i:=0 to Query1.RecordCount-1 do
    begin
      if Query1.FieldByName('Langeuage').AsString<>'' then
      begin
        Obj:=TForm(formObj).FindComponent(Query1.FieldByName('VCLID').AsString);
        if Obj<>nil then
        begin
          if Obj is TLabel then
          begin
             tmpLabel := (Obj as TLabel);
             tmpLabel.Caption:=Query1.FieldByName('Langeuage').AsString;
          end;
          if Obj is TButton then
          begin
             tmpButton := (Obj as TButton);
             tmpButton.Caption:=Query1.FieldByName('Langeuage').AsString;
          end;
          if Obj is TMenuItem then
          begin
            tmpMenuItem := (Obj as TMenuItem);
            tmpMenuItem.Caption:=Query1.FieldByName('Langeuage').AsString;
          end;
          if Obj is TCheckBox then
          begin
            tmpCheckBox := (Obj as TCheckBox);
            tmpCheckBox.Caption:=Query1.FieldByName('Langeuage').AsString;
          end;
          if Obj is TRadioButton then
          begin
            tmpRadioButton := (Obj as TRadioButton);
            tmpRadioButton.Caption:=Query1.FieldByName('Langeuage').AsString;
          end;
          if Obj is TTabSheet then
          begin
            tmpTabSheet := (Obj as TTabSheet);
            tmpTabSheet.Caption:=Query1.FieldByName('Langeuage').AsString;
          end;
          if Obj is TGroupBox then
          begin
            tmpTGroupBox:= (Obj as TGroupBox);
            tmpTGroupBox.Caption:=Query1.FieldByName('Langeuage').AsString;
          end;
        end;
      end;
      Query1.Next;
    end;
    //
    Query1.Active:=false;
    FormDBGridLanguage(formObj,mainForm);
  end;
end;

//子Form功能DBGrid 或 DGBridEh 介面語言
procedure Tmain.FormDBGridLanguage(var formObj:Pointer ;mainForm:string);
var i,j:integer;
    FieldLangeuage:String;
    //
    tmpDBGrid:TDBGrid;
    tmpDBridEh:TDBGridEh;
    Obj:TObject;
begin
  if trim(LanguageID)<>'' then
  begin
    FieldLangeuage:='VCLName_'+LanguageID;
    with Query1 do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('Select VCLID,FieldName,'+FieldLangeuage+' as Langeuage from BLanguage_DBGrid WHERE  MKID = '''+MKID+''' and mainForm='''+mainForm+''' order by VCLID ');
      Active:=true;
    end;
    for i:=0 to Query1.RecordCount-1 do
    begin
      if Query1.FieldByName('Langeuage').AsString<>'' then
      begin
        Obj:=TForm(formObj).FindComponent(Query1.FieldByName('VCLID').AsString);
        if Obj<>nil then
        begin
          if Obj is TDBGrid then
          begin
             tmpDBGrid := (Obj as TDBGrid);
             for j:=0 to tmpDBGrid.Columns.Count-1 do
             begin
               if tmpDBGrid.Columns[j].FieldName=Query1.FieldByName('FieldName').AsString then
               begin
                  tmpDBGrid.Columns[j].Title.Caption:=Query1.FieldByName('Langeuage').AsString;
                  break;
               end;
             end;
          end;
          if Obj is TDBGridEh then
          begin
             tmpDBridEh := (Obj as TDBGridEh);
             for j:=0 to tmpDBridEh.Columns.Count-1 do
             begin
               if tmpDBridEh.Columns[j].FieldName=Query1.FieldByName('FieldName').AsString then
               begin
                  tmpDBridEh.Columns[j].Title.Caption:=Query1.FieldByName('Langeuage').AsString;
                  break;
               end;
             end;
          end;
        end;
      end;
      Query1.Next;
    end;
    //
    Query1.Active:=false;
  end;
end;


procedure Tmain.SN11Click(Sender: TObject);
begin
  showFm(Pointer(OrderSpec), TOrderSpec, TMenuItem(Sender).Name);
end;

procedure Tmain.SN211Click(Sender: TObject);
begin
  showFm(Pointer(PurNoSize), TPurNoSize, TMenuItem(Sender).Name);
end;

procedure Tmain.SN212Click(Sender: TObject);
begin
  showFm(Pointer(PurSize), TPurSize, TMenuItem(Sender).Name);
end;
     
procedure Tmain.SN213Click(Sender: TObject);                                                                 
begin
  showFm(Pointer(PurOther), TPurOther, TMenuItem(Sender).Name);
end;
                                                                                               
procedure Tmain.SN221Click(Sender: TObject);
begin
  showFm(Pointer(TraceNoSize), TTraceNoSize, TMenuItem(Sender).Name);      
end;

procedure Tmain.SN222Click(Sender: TObject);
begin
  showFm(Pointer(TraceSize), TTraceSize, TMenuItem(Sender).Name);
end;

procedure Tmain.SN231Click(Sender: TObject);
begin
  showFm(Pointer(Quotation), TQuotation, TMenuItem(Sender).Name);
end;

procedure Tmain.SN232Click(Sender: TObject);
begin
  showFm(Pointer(QuotationConCheckList), TQuotationConCheckList, TMenuItem(Sender).Name);
end;

procedure Tmain.SN12Click(Sender: TObject);         
begin
  showFm(Pointer(MaterialNew), TMaterialNew, TMenuItem(Sender).Name);
end;

procedure Tmain.SN13Click(Sender: TObject);
begin
  showFm(Pointer(SuppNew), TSuppNew, TMenuItem(Sender).Name);
end;

procedure Tmain.SN31Click(Sender: TObject);
begin
  showFm(Pointer(Purtrace), TPurtrace, TMenuItem(Sender).Name);
end;

procedure Tmain.SN14Click(Sender: TObject);
begin
  showFm(Pointer(ThreadBOM), TThreadBOM, TMenuItem(Sender).Name);
end;

procedure Tmain.SN33Click(Sender: TObject);
begin
  showFm(Pointer(UseStock), TUseStock, TMenuItem(Sender).Name);
end;

procedure Tmain.SN61Click(Sender: TObject);
begin
  showFm(Pointer(EmbModel), TEmbModel, TMenuItem(Sender).Name);
end;
                                                                                        
procedure Tmain.SN62Click(Sender: TObject);
begin
  showFm(Pointer(EmbArticle), TEmbArticle, TMenuItem(Sender).Name);
end;

procedure Tmain.SN223Click(Sender: TObject);
begin
  showFm(Pointer(TraceList), TTraceList, TMenuItem(Sender).Name);
end;

procedure Tmain.SN34Click(Sender: TObject);
begin
  showFm(Pointer(PurchaseCheck), TPurchaseCheck, TMenuItem(Sender).Name);
end;

procedure Tmain.SN321Click(Sender: TObject);
begin
  showFm(Pointer(DeliverTrace), TDeliverTrace, TMenuItem(Sender).Name);
end;

procedure Tmain.SN322Click(Sender: TObject);
begin
  showFm(Pointer(DeliverTraceS), TDeliverTraceS, TMenuItem(Sender).Name);
end;

procedure Tmain.SN233Click(Sender: TObject);
begin
  showFm(Pointer(QuotationRep), TQuotationRep, TMenuItem(Sender).Name);
end;

procedure Tmain.SN214Click(Sender: TObject);
begin
  showFm(Pointer(PurTotal), TPurTotal, TMenuItem(Sender).Name);
end;

procedure Tmain.SN15Click(Sender: TObject);
begin
  showFm(Pointer(MaterialList), TMaterialList, TMenuItem(Sender).Name);
end;

procedure Tmain.SN24Click(Sender: TObject);
begin
  showFm(Pointer(PurchaseAdjust), TPurchaseAdjust, TMenuItem(Sender).Name);
end;

procedure Tmain.SN224Click(Sender: TObject);
begin
   showFm(Pointer(TraceTotal), TTraceTotal, TMenuItem(Sender).Name);
end;

procedure Tmain.SN16Click(Sender: TObject);
begin
  showFm(Pointer(OMaterialList), TOMaterialList, TMenuItem(Sender).Name);
end;

procedure Tmain.SN78Click(Sender: TObject);
begin
  showFm(Pointer(PurSampleFlowChart), TPurSampleFlowChart, TMenuItem(Sender).Name);
end;

procedure Tmain.SN711Click(Sender: TObject);
begin
  showFm(Pointer(BOMReceive), TBOMReceive, TMenuItem(Sender).Name);
end;

procedure Tmain.SN72Click(Sender: TObject);
begin
  showFm(Pointer(SampleMerge), TSampleMerge, TMenuItem(Sender).Name);
end;

procedure Tmain.SN731Click(Sender: TObject);                  
begin
  showFm(Pointer(PurSample), TPurSample, TMenuItem(Sender).Name);
end;

procedure Tmain.SN733Click(Sender: TObject);                      
begin
  showFm(Pointer(TraceListSample), TTraceListSample, TMenuItem(Sender).Name);
end;

procedure Tmain.SN734Click(Sender: TObject);
begin
  showFm(Pointer(SamplePurchaseAnalysis), TSamplePurchaseAnalysis, TMenuItem(Sender).Name);
end;

procedure Tmain.SN74Click(Sender: TObject);
begin
  showFm(Pointer(TraceSample), TTraceSample, TMenuItem(Sender).Name);
end;

procedure Tmain.SN752Click(Sender: TObject);                                    

begin
  showFm(Pointer(TransportCharge), TTransportCharge, TMenuItem(Sender).Name);
end;

procedure Tmain.SN751Click(Sender: TObject);
begin                                                                                 
  showFm(Pointer(PurSampleInvoice), TPurSampleInvoice, TMenuItem(Sender).Name);
end;

procedure Tmain.SN753Click(Sender: TObject);
begin
  showFm(Pointer(PurConfirmPrice), TPurConfirmPrice, TMenuItem(Sender).Name);
end;

procedure Tmain.SN761Click(Sender: TObject);
begin
  showFm(Pointer(ForwarderSample), TForwarderSample, TMenuItem(Sender).Name);
end;

procedure Tmain.SN762Click(Sender: TObject);
begin
  showFm(Pointer(SupplierKPI), TSupplierKPI, TMenuItem(Sender).Name);
end;

procedure Tmain.SN763Click(Sender: TObject);
begin
  showFm(Pointer(SupplierSample), TSupplierSample, TMenuItem(Sender).Name);
end;

procedure Tmain.SN764Click(Sender: TObject);
begin
  showFm(Pointer(MaterialMOQ), TMaterialMOQ, TMenuItem(Sender).Name);
end;

procedure Tmain.SN712Click(Sender: TObject);
begin
  showFm(Pointer(UseStockSample), TUseStockSample, TMenuItem(Sender).Name);                                    
end;

procedure Tmain.SN713Click(Sender: TObject);
begin
  showFm(Pointer(AnyStock), TAnyStock, TMenuItem(Sender).Name);
end;

procedure Tmain.DevelopPurcahseFlowChar1Click(Sender: TObject);
begin
  SN78.Click;  
end;

procedure Tmain.SN732Click(Sender: TObject);
begin
  showFm(Pointer(SampleSupplierAnalysis), TSampleSupplierAnalysis, TMenuItem(Sender).Name);
end;

procedure Tmain.SN811Click(Sender: TObject);
begin
  showFm(Pointer(GMS_RFT), TGMS_RFT, TMenuItem(Sender).Name);
end;

procedure Tmain.SN765Click(Sender: TObject);
begin
  showFm(Pointer(Cons_AD), TCons_AD, TMenuItem(Sender).Name);
end;

procedure Tmain.SN26Click(Sender: TObject);
begin
  showFm(Pointer(OrderSpecAll), TOrderSpecAll, TMenuItem(Sender).Name);
end;

procedure Tmain.SN735Click(Sender: TObject);
begin
  showFm(Pointer(ColorSwatchCardTracking), TColorSwatchCardTracking, TMenuItem(Sender).Name);
end;

procedure Tmain.SN351Click(Sender: TObject);
begin
   showFm(Pointer(UseStockList), TUseStockList, TMenuItem(Sender).Name);
end;

procedure Tmain.SN352Click(Sender: TObject);
begin
   showFm(Pointer(ProduceUseStock), TProduceUseStock, TMenuItem(Sender).Name);
end;

procedure Tmain.SN812Click(Sender: TObject);
begin
   showFm(Pointer(UpperMatInformation), TUpperMatInformation, TMenuItem(Sender).Name);
end;


procedure Tmain.SN36Click(Sender: TObject);
begin
   showFm(Pointer(PurtraceGC), TPurtraceGC, TMenuItem(Sender).Name);
end;

procedure Tmain.SN17Click(Sender: TObject);
begin
   showFm(Pointer(SKU_ExtraCost), TSKU_ExtraCost, TMenuItem(Sender).Name);
end;

procedure Tmain.SN79Click(Sender: TObject);
begin
   showFm(Pointer(TraceChangeMaterial), TTraceChangeMaterial, TMenuItem(Sender).Name);
end;

procedure Tmain.SN736Click(Sender: TObject);
begin
   showFm(Pointer(TempMaterial), TTempMaterial, TMenuItem(Sender).Name);
end;

procedure Tmain.SN813Click(Sender: TObject);
begin
   showFm(Pointer(MatDetailInformation), TMatDetailInformation, TMenuItem(Sender).Name);
end;

procedure Tmain.SN234Click(Sender: TObject);
begin
   showFm(Pointer(QuotationConCheck), TQuotationConCheck, TMenuItem(Sender).Name);
end;

procedure Tmain.SN814Click(Sender: TObject);
begin
   showFm(Pointer(PriceChecking), TPriceChecking, TMenuItem(Sender).Name);
end;

procedure Tmain.SN815Click(Sender: TObject);
begin
   showFm(Pointer(TrackingPO_KCLL), TTrackingPO_KCLL, TMenuItem(Sender).Name);
end;

procedure Tmain.SN7AClick(Sender: TObject);
begin
   showFm(Pointer(Transportation), TTransportation, TMenuItem(Sender).Name);
end;

procedure Tmain.SN431Click(Sender: TObject);
begin
  showFm(Pointer(UPSupplier), TUPSupplier, TMenuItem(Sender).Name);
end;

procedure Tmain.SN432Click(Sender: TObject);
begin
   showFm(Pointer(UPQuotation), TUPQuotation, TMenuItem(Sender).Name);
end;

procedure Tmain.SN433Click(Sender: TObject);
begin
   showFm(Pointer(UPMaterial), TUPMaterial, TMenuItem(Sender).Name);
end;

procedure Tmain.SN434Click(Sender: TObject);
begin
  showFm(Pointer(UPMaterialQuery), TUPMaterialQuery, TMenuItem(Sender).Name);
end;

procedure Tmain.SN435Click(Sender: TObject);
begin
   showFm(Pointer(UPOtherQuery), TUPOtherQuery, TMenuItem(Sender).Name);
end;

procedure Tmain.SN737Click(Sender: TObject);
begin
   showFm(Pointer(FlexCode), TFlexCode, TMenuItem(Sender).Name);
end;

procedure Tmain.SN816Click(Sender: TObject);
begin
   showFm(Pointer(ConfirmSwatchReport), TConfirmSwatchReport, TMenuItem(Sender).Name);
end;

procedure Tmain.SN7BClick(Sender: TObject);
begin
  showFm(Pointer(Purchaselist), TPurchaselist, TMenuItem(Sender).Name);
end;

procedure Tmain.SN37Click(Sender: TObject);
begin
  showFm(Pointer(PurtraceMatch), TPurtraceMatch, TMenuItem(Sender).Name);
end; 

procedure Tmain.SN251Click(Sender: TObject);
begin
  showFm(Pointer(purchasekpi), Tpurchasekpi, TMenuItem(Sender).Name);
end;

procedure Tmain.SN252Click(Sender: TObject);
begin
  showFm(Pointer(ProdSupplierKPI), TProdSupplierKPI, TMenuItem(Sender).Name);
end;

procedure Tmain.SN281Click(Sender: TObject);
begin
  showFm(Pointer(Reality_Remain_Quantity_Pre), TReality_Remain_Quantity_Pre, TMenuItem(Sender).Name);
end;

procedure Tmain.SN282Click(Sender: TObject);
begin
  showFm(Pointer(PreOrder_UseStock), TPreOrder_UseStock, TMenuItem(Sender).Name);
end;

procedure Tmain.SN323Click(Sender: TObject);
begin
  showFm(Pointer(DeliverTraceO), TDeliverTraceO, TMenuItem(Sender).Name);
end;

procedure Tmain.SN280Click(Sender: TObject);
begin
  showFm(Pointer(PreOrder_Calcuate), TPreOrder_Calcuate, TMenuItem(Sender).Name);
end;

procedure Tmain.Image1DblClick(Sender: TObject);
begin
{  Edit2.Visible := not Edit2.Visible;
  Edit1.Visible := not Edit1.Visible;}    
end;

procedure Tmain.N8171Click(Sender: TObject);
begin
  showFm(Pointer(Modelmaterialfee), TModelmaterialfee, TMenuItem(Sender).Name);
end;

procedure Tmain.SN7CClick(Sender: TObject);
begin
  showFm(Pointer(PurchaseConfirmShoes), TPurchaseConfirmShoes, TMenuItem(Sender).Name);
end;

procedure Tmain.SN38Click(Sender: TObject);
begin
  showFm(Pointer(CFMSwatchTracKing), TCFMSwatchTracKing, TMenuItem(Sender).Name);
end;

procedure Tmain.SN7DClick(Sender: TObject);
begin
  showFm(Pointer(CBYSize), TCBYSize, TMenuItem(Sender).Name);
end;

procedure Tmain.SN738Click(Sender: TObject);
begin
  showFm(Pointer(CBYSizeComparison), TCBYSizeComparison, TMenuItem(Sender).Name);
end;

procedure Tmain.SN91Click(Sender: TObject);
begin
  showFm(Pointer(MaterialAllowanceSetting), TMaterialAllowanceSetting, TMenuItem(Sender).Name);
end;

procedure Tmain.SN92Click(Sender: TObject);
begin
  showFm(Pointer(PO_Permission), TPO_Permission, TMenuItem(Sender).Name);
end;

procedure Tmain.SN739Click(Sender: TObject);
begin
  showFm(Pointer(CFMSwatchDatabase), TCFMSwatchDatabase, TMenuItem(Sender).Name);
end;

procedure Tmain.SN225Click(Sender: TObject);
begin
  showFm(Pointer(TraceApply), TTraceApply, TMenuItem(Sender).Name);
end;

procedure Tmain.SN2151Click(Sender: TObject);
begin
  showFm(Pointer(ApplyTotal), TApplyTotal, TMenuItem(Sender).Name);
end;

procedure Tmain.SN2152Click(Sender: TObject);
begin
  showFm(Pointer(ApplyTotalConfirm), TApplyTotalConfirm, TMenuItem(Sender).Name);
end;

procedure Tmain.SN2153Click(Sender: TObject);
begin                                                                                          
  showFm(Pointer(ApplyTotalConfirm2), TApplyTotalConfirm2, TMenuItem(Sender).Name);
end;
                                                                                       
procedure Tmain.SN740Click(Sender: TObject);
begin
  showFm(Pointer(ApplyMold), TApplyMold, TMenuItem(Sender).Name);
end;

procedure Tmain.SN226Click(Sender: TObject);
begin
  showFm(Pointer(TotalApplyReport), TTotalApplyReport, TMenuItem(Sender).Name);
end;

procedure Tmain.SN818Click(Sender: TObject);
begin
  showFm(Pointer(ProcurementValue), TProcurementValue, TMenuItem(Sender).Name);
end;

procedure Tmain.SN2161Click(Sender: TObject);
begin
  showFm(Pointer(CGNOConfirm), TCGNOConfirm, TMenuItem(Sender).Name);
end;

procedure Tmain.N2162Click(Sender: TObject);
begin
  showFm(Pointer(CGNOConfirm2), TCGNOConfirm2, TMenuItem(Sender).Name);
end;

procedure Tmain.SN29Click(Sender: TObject);
begin
  showFm(Pointer(OriginVATNo), TOriginVATNo, TMenuItem(Sender).Name);
end;

procedure Tmain.SN52Click(Sender: TObject);
begin
  showFm(Pointer(SupplierReview), TSupplierReview, TMenuItem(Sender).Name);
end;

procedure Tmain.SN741Click(Sender: TObject);
begin
  showFm(Pointer(ColorStandardDatabase), TColorStandardDatabase, TMenuItem(Sender).Name);
end;

procedure Tmain.SN227Click(Sender: TObject);
begin
  showFm(Pointer(Budget_Setting), TBudget_Setting, TMenuItem(Sender).Name);
end;

procedure Tmain.SN39Click(Sender: TObject);
begin
  showFm(Pointer(FileOriginMaterial), TFileOriginMaterial, TMenuItem(Sender).Name);
end;

procedure Tmain.SN2AClick(Sender: TObject);
begin
  showFm(Pointer(OriginMaterial), TOriginMaterial, TMenuItem(Sender).Name);
end;
                                                                                                   
procedure Tmain.SN3BClick(Sender: TObject);
begin
  showFm(Pointer(ZlQuery), TZlQuery, TMenuItem(Sender).Name);
end;

procedure Tmain.SN2BClick(Sender: TObject);
begin
  showFm(Pointer(SupplierSaleContract), TSupplierSaleContract, TMenuItem(Sender).Name);
end;

procedure Tmain.SN2154Click(Sender: TObject);
begin
  showFm(Pointer(ApplyTotalCheck), TApplyTotalCheck, TMenuItem(Sender).Name);
end;

procedure Tmain.SN2CClick(Sender: TObject);
begin
  showFm(Pointer(Upload_PLX), TUpload_PLX, TMenuItem(Sender).Name);
end;

procedure Tmain.SN742Click(Sender: TObject);
begin
  showFm(Pointer(VendorColorKPI), TVendorColorKPI, TMenuItem(Sender).Name);
end;

procedure Tmain.SN3A1Click(Sender: TObject);
begin
  showFm(Pointer(Traceability_Purchasing), TTraceability_Purchasing, TMenuItem(Sender).Name);
end;

procedure Tmain.SN3A2Click(Sender: TObject);
begin
  showFm(Pointer(Traceability_Purchasing_Chemical), TTraceability_Purchasing_Chemical, TMenuItem(Sender).Name);
end;

procedure Tmain.SN53Click(Sender: TObject);
begin
  showFm(Pointer(SupplierReviewDevelop), TSupplierReviewDevelop, TMenuItem(Sender).Name);
end;

procedure Tmain.SN93Click(Sender: TObject);
begin
  showFm(Pointer(Season_Set), TSeason_Set, TMenuItem(Sender).Name);
end;

procedure Tmain.SN228Click(Sender: TObject);
begin
  showFm(Pointer(SGDH_STOCK), TSGDH_STOCK, TMenuItem(Sender).Name);
end;

procedure Tmain.SN7EClick(Sender: TObject);
begin
  showFm(Pointer(PaymentQuotation), TPaymentQuotation, TMenuItem(Sender).Name);
end;

procedure Tmain.SN714Click(Sender: TObject);
begin
   showFm(Pointer(TraceStock), TTraceStock, TMenuItem(Sender).Name);
end;

procedure Tmain.SN217Click(Sender: TObject);
begin
  showFm(Pointer(ApplyPhom), TApplyPhom, TMenuItem(Sender).Name);
end;

procedure Tmain.SN3CClick(Sender: TObject);
begin
  showFm(Pointer(OrderControlRecord), TOrderControlRecord, TMenuItem(Sender).Name);
end;

procedure Tmain.SN2DClick(Sender: TObject);
begin
  showFm(Pointer(MassMatMOQ), TMassMatMOQ, TMenuItem(Sender).Name);
end;

procedure Tmain.SN766Click(Sender: TObject);
begin
  showFm(Pointer(SupplierBPM), TSupplierBPM, TMenuItem(Sender).Name);
end;

procedure Tmain.SN7FClick(Sender: TObject);
begin
  showFm(Pointer(RequestCheckStock), TRequestCheckStock, TMenuItem(Sender).Name);
end;

procedure Tmain.SN7GClick(Sender: TObject);
begin
  showFm(Pointer(SetCommonMat), TSetCommonMat, TMenuItem(Sender).Name);
end;

procedure Tmain.N3DForeCastPurchaseCompare1Click(Sender: TObject);
begin
  showFm(Pointer(ForeCast_Purchase_Compare), TForeCast_Purchase_Compare, TMenuItem(Sender).Name);
end;

procedure Tmain.SN743Click(Sender: TObject);
begin
  showFm(Pointer(Apply_Purchase_Printing_Mold), TApply_Purchase_Printing_Mold, TMenuItem(Sender).Name);
end;

procedure Tmain.SN18Click(Sender: TObject);
begin
  showFm(Pointer(MaterialWovenList), TMaterialWovenList, TMenuItem(Sender).Name);
end;

procedure Tmain.SN7HClick(Sender: TObject);
begin
  showFm(Pointer(VLAReport), TVLAReport, TMenuItem(Sender).Name);
end;

procedure Tmain.SN3EClick(Sender: TObject);
begin
  showFm(Pointer(PercenReport), TPercenReport, TMenuItem(Sender).Name);
end;

procedure Tmain.SN3FClick(Sender: TObject);
begin
  showFm(Pointer(MaterialOnTimeArrivalRate), TMaterialOnTimeArrivalRate, TMenuItem(Sender).Name);
end;

procedure Tmain.SN101Click(Sender: TObject);
begin
  showFm(Pointer(ESG), TESG, TMenuItem(Sender).Name);
end;

procedure Tmain.N102CLBHWeight1Click(Sender: TObject);
begin
  showFm(Pointer(CLBH_Weight), TCLBH_Weight, TMenuItem(Sender).Name);
end;

end.
