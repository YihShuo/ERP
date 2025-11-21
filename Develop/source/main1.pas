unit main1;

interface
                          
uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, jpeg, ExtCtrls, StdCtrls, DB, DBTables;
  {  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;}

type
  Tmain = class(TForm)
    MainMenu1: TMainMenu;
    SN1: TMenuItem;
    Image1: TImage;
    Edit1: TEdit;
    Query1: TQuery;
    SN11: TMenuItem;
    SN2: TMenuItem;
    SN3: TMenuItem;
    SN21: TMenuItem;
    SN31: TMenuItem;
    SN4: TMenuItem;
    SN41: TMenuItem;
    SN12: TMenuItem;
    SN22: TMenuItem;
    SN32: TMenuItem;
    SN23: TMenuItem;
    SN13: TMenuItem;
    N42AllocateofMaterialOut1: TMenuItem;
    SN5: TMenuItem;
    SN51: TMenuItem;
    SN52: TMenuItem;
    SN6: TMenuItem;
    SN61: TMenuItem;
    SN63: TMenuItem;
    SN62: TMenuItem;
    Edit2: TEdit;
    SN33: TMenuItem;
    SN14: TMenuItem;
    SN43: TMenuItem;
    SN24: TMenuItem;
    SN15: TMenuItem;
    SN25: TMenuItem;
    SN251: TMenuItem;
    SN252: TMenuItem;
    SN253: TMenuItem;
    SN254: TMenuItem;
    SN255: TMenuItem;
    SN26: TMenuItem;
    SN34: TMenuItem;
    SN64: TMenuItem;
    PopupMenu1: TPopupMenu;
    SN64pop: TMenuItem;
    SN7: TMenuItem;
    SN71: TMenuItem;
    SN72: TMenuItem;
    SN16: TMenuItem;
    SN73: TMenuItem;
    SN74: TMenuItem;
    N171: TMenuItem;
    SN171: TMenuItem;
    N18FGTTracking1: TMenuItem;
    SN181: TMenuItem;
    SN75: TMenuItem;
    SN35: TMenuItem;
    SN27: TMenuItem;
    SN76: TMenuItem;
    SN77: TMenuItem;
    SN78: TMenuItem;
    SN28: TMenuItem;
    SN44: TMenuItem;
    SN29: TMenuItem;
    SN79: TMenuItem;
    SN8: TMenuItem;
    SN81: TMenuItem;
    N9QC1: TMenuItem;
    SN91: TMenuItem;
    SN92: TMenuItem;
    SN65: TMenuItem;
    SN82: TMenuItem;
    SN7A: TMenuItem;
    SN66: TMenuItem;
    SN83: TMenuItem;
    SN67: TMenuItem;
    SN68: TMenuItem;
    SNA: TMenuItem;
    SNA11: TMenuItem;
    SNA61: TMenuItem;
    SNA31: TMenuItem;
    SNA21: TMenuItem;
    SN69: TMenuItem;
    SN6A: TMenuItem;
    SN7B: TMenuItem;
    SN19: TMenuItem;
    SN6B: TMenuItem;
    SNB: TMenuItem;
    SNB1: TMenuItem;
    SN7C: TMenuItem;
    SN741: TMenuItem;
    SN742: TMenuItem;
    SNB2: TMenuItem;
    SN2A: TMenuItem;
    SNA51: TMenuItem;
    SNB3: TMenuItem;
    SNB4: TMenuItem;
    N931: TMenuItem;
    NB5: TMenuItem;
    SNA1: TMenuItem;
    SNA2: TMenuItem;
    SNA3: TMenuItem;
    SNA4: TMenuItem;
    SNA5: TMenuItem;
    SNA6: TMenuItem;
    SNA41: TMenuItem;
    SNA8: TMenuItem;
    NB6RFCList1: TMenuItem;
    SN631: TMenuItem;
    SNA22: TMenuItem;
    SNC: TMenuItem;
    SNC1: TMenuItem;
    SN45: TMenuItem;
    SNB7: TMenuItem;
    SN2B: TMenuItem;
    SN632: TMenuItem;
    SN94: TMenuItem;
    SN95: TMenuItem;
    SND: TMenuItem;
    SND1: TMenuItem;
    SND2: TMenuItem;
    SND3: TMenuItem;
    SN6C: TMenuItem;
    SN46: TMenuItem;
    procedure SN14Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure SN11Click(Sender: TObject);
    procedure SN12Click(Sender: TObject);
    procedure SN21Click(Sender: TObject);
    procedure SN31Click(Sender: TObject);
    procedure SN51Click(Sender: TObject);
    procedure SN52Click(Sender: TObject);
    procedure SN33Click(Sender: TObject);
    procedure N14Material1Click(Sender: TObject);
    procedure SN32Click(Sender: TObject);
    procedure SN24Click(Sender: TObject);
    procedure SN15Click(Sender: TObject);
    procedure SN251Click(Sender: TObject);
    procedure SN252Click(Sender: TObject);
    procedure SN253Click(Sender: TObject);
    procedure SN254Click(Sender: TObject);
    procedure SN255Click(Sender: TObject);
    procedure SN22Click(Sender: TObject);
    procedure SN23Click(Sender: TObject);
    procedure SN26Click(Sender: TObject);
    procedure SN34Click(Sender: TObject);
    procedure SN64Click(Sender: TObject);
    procedure SN64popClick(Sender: TObject);
    procedure SN71Click(Sender: TObject);
    procedure SN72Click(Sender: TObject);
    procedure SN16Click(Sender: TObject);
    procedure SN73Click(Sender: TObject);
    procedure SN171Click(Sender: TObject);
    procedure SN181Click(Sender: TObject);
    procedure SN75Click(Sender: TObject);
    procedure SN35Click(Sender: TObject);
    procedure SN27Click(Sender: TObject);
    procedure SN76Click(Sender: TObject);
    procedure SN77Click(Sender: TObject);
    procedure SN78Click(Sender: TObject);
    procedure SN28Click(Sender: TObject);
    procedure SN44Click(Sender: TObject);
    procedure SN29Click(Sender: TObject);
    procedure SN79Click(Sender: TObject);
    procedure SN81Click(Sender: TObject);
    procedure SN91Click(Sender: TObject);
    procedure SN92Click(Sender: TObject);
    procedure SN65Click(Sender: TObject);
    procedure SN7AClick(Sender: TObject);
    procedure SN66Click(Sender: TObject);
    procedure SN83Click(Sender: TObject);
    procedure SN67Click(Sender: TObject);
    procedure SN68Click(Sender: TObject);
    procedure SNA11Click(Sender: TObject);
    procedure SNA61Click(Sender: TObject);
    procedure SNA31Click(Sender: TObject);
    procedure SNA21Click(Sender: TObject);
    procedure SN69Click(Sender: TObject);
    procedure SN6AClick(Sender: TObject);
    procedure SN7BClick(Sender: TObject);
    procedure SN19Click(Sender: TObject);
    procedure SN6BClick(Sender: TObject);
    procedure SNB1Click(Sender: TObject);
    procedure SN7CClick(Sender: TObject);
    procedure SN741Click(Sender: TObject);
    procedure SN742Click(Sender: TObject);
    procedure SNB2Click(Sender: TObject);
    procedure SN2AClick(Sender: TObject);
    procedure SNA51Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SNB3Click(Sender: TObject);
    procedure SNB4Click(Sender: TObject);
    procedure N931Click(Sender: TObject);
    procedure NB5Click(Sender: TObject);
    procedure SNA41Click(Sender: TObject);
    procedure SNA8Click(Sender: TObject);
    procedure SN82Click(Sender: TObject);
    procedure NB6RFCList1Click(Sender: TObject);
    procedure SN631Click(Sender: TObject);
    procedure SNA22Click(Sender: TObject);
    procedure SNC1Click(Sender: TObject);
    procedure SN45Click(Sender: TObject);
    procedure SNB7Click(Sender: TObject);
    procedure SN2BClick(Sender: TObject);
    procedure SN632Click(Sender: TObject);
    procedure SN94Click(Sender: TObject);
    procedure SN95Click(Sender: TObject);
    procedure SND1Click(Sender: TObject);
    procedure SND2Click(Sender: TObject);
    procedure SND3Click(Sender: TObject);
    procedure SN6CClick(Sender: TObject);
    procedure SN46Click(Sender: TObject);
  private
     MKID:String;
    { Private declarations }
     //---20150817 Projoe 補上由 Nick 所提供的function log 程式
    //用法: SaveProLog(GetMKID(),TMenuItem(Sender).Name,GetUserID());
    procedure SaveProLog(AMKID: string; AFORMID: string; AUSERID: string);
    //---20150817 Projoe 修改 Menu 上面的按鈕呼叫方式
    procedure showFm(var fm: Pointer; parentClass: TPersistentClass; miname: string);
    { Public declarations }

  public
    ServerIP:string;
    LIY_DD,LIY_ERP:String;
  end;

var
  main: Tmain;
  suser,spwd:string;

implementation

uses DM3,tempmaterialp, MaterialChengp, smapleorderlistp, PurOther1, DelOther1,
  Purchasecheckp, Quotation1, SampleBOMp, PFC_SkuMapp, FunUnit, SampleTracking_Dev1,
  SampleTracking_Pat1, SampleTracking_Pur1, SampleTracking_Pro1, SampleTracking_Quo1,
  SampleOrder1, SampleMaterial1, MQ1, FDStatus1, DFC1, ShoeTracking1, SampleDevelopInformation1,
  FDStatusMaterialChange1, FDExcelData1, MaterialTestFD1,
  FGTTest1, PaperRoom_shoeTest, FDStatusLeadTime1, SamplePlan1, BomDataSearch1,
  DeveloperName1, DevCalendar1, SampleWarehouse1, AnyStock1, Flexcode1, SampleOderUserChange1,
  OrganizationSetting1, QC_ShoeTest1,ShoeTestReport1, MaterialTracking, SampleDataUpload1,
  Overtime_Report1, PC_Memo1, DeveloperLoading1, SampleAnalysis1,
  ScanTBreceive, ScanTBComplete, TBCSTime, MaterialReadyTime,
  UseStockReport1, NewMaterialList1, LastData1, NewMaterialOfSeason1,
  RubberPO1, BasicInformation1, MoldData1, FDExcelData_TYB1, HangTag1,
  ToolingSetting, ScanTBBMTime, TPToFinished1, PMR1, LocalizationReport1,
  ShoetestReceive, ShoePlan, TBSTime, TBClear, PCData1, RFC_List1,
  Scan_InventoryList1, ColorSwatchScan1, PMR_Internal1, SampeFinishShoeStock1,
  TBDelayReason, Sample_TBRemake1, Allshoe_List1, QRFormatTracking1,
  QRFormatScan1, DevelopTrainingCourses1, DevelopTrainingRecords1, DevelopTrainingReport1,
  scandata1;

//, TraceChangeMaterial1

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
//
procedure Tmain.SN14Click(Sender: TObject);
begin
  close;
end;

procedure Tmain.FormClose(Sender: TObject; var Action: TCloseAction);
{var sline:string;
textvar:textfile;}
begin
if main.ActiveMDIChild<>nil  then
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
       { assignfile(textvar,extractfilepath(application.ExeName)+'user.txt');
        rewrite(textvar);
        closefile(textvar);   }
      end;
end;

procedure Tmain.FormCreate(Sender: TObject);
var y,m,d:word;
    sline:string;
    textvar:textfile;
begin
  //20131202 weston新增
  funcObj:=TFuncObj.Create;
  funcObj.setParameter(true,ExtractFilePath(Application.ExeName));
  ServerIP:=FuncObj.GetBDE_SERVERIP(DM2.DBshipping.AliasName);
  FuncObj.GetBDE_DATABASENAME(DM2.DBshipping.AliasName,LIY_ERP,LIY_DD);
  //
  shortdateformat:='yyyy/MM/dd';
  decodedate(date,y,m,d);

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
    end
    else
      begin
        suser:=copy(sline,0,pos('=',sline)-1);
        spwd:=copy(sline,pos('=',sline)+1,maxint);
        image1.Picture.LoadFromFile(extractfilepath(application.ExeName)+'factory.jpg');
      end;
  closefile(textvar);
  edit1.Text:=suser;

  assignfile(textvar,extractfilepath(application.ExeName)+'Company.txt');
  reset(textvar);
  readln(textvar,sline);
  edit2.Text:=sline;
  closefile(textvar);
  if edit1.text<>'51022' then
  begin
  with query1 do
  begin
    ParamByName('userid').Value := suser;
    ParamByName('mkid').Value := '07';  MKID:='07';
    ParamByName('GSBH').Value := edit2.text;
    Active:=true;      //根據用戶名稱確定權限
    SN1.enabled := Locate('FORMID', 'SN1', []);
    SN11.enabled := Locate('FORMID', 'SN11', []);
    SN12.enabled := Locate('FORMID', 'SN12', []);
    SN13.enabled := Locate('FORMID', 'SN13', []);
    SN15.enabled := Locate('FORMID', 'SN15', []);
    SN16.enabled := Locate('FORMID', 'SN16', []);
    SN19.enabled := Locate('FORMID', 'SN19', []);
    SN2.enabled := Locate('FORMID', 'SN2', []);
    SN21.enabled := Locate('FORMID', 'SN21', []);
    SN22.enabled := Locate('FORMID', 'SN22', []);
    SN23.enabled := Locate('FORMID', 'SN23', []);
    SN24.enabled := Locate('FORMID', 'SN24', []);
    SN26.enabled := Locate('FORMID', 'SN26', []);
    SN251.enabled := Locate('FORMID', 'SN251', []);
    SN252.enabled := Locate('FORMID', 'SN252', []);
    SN253.enabled := Locate('FORMID', 'SN253', []);
    SN254.enabled := Locate('FORMID', 'SN254', []);
    SN255.enabled := Locate('FORMID', 'SN255', []);
    SN3.enabled := Locate('FORMID', 'SN3', []);
    SN31.enabled := Locate('FORMID', 'SN31', []);
    SN32.enabled := Locate('FORMID', 'SN32', []);
    SN34.enabled := Locate('FORMID', 'SN34', []);
    SN35.enabled := Locate('FORMID', 'SN35', []);
    SN4.enabled := Locate('FORMID', 'SN4', []);
    SN41.enabled := Locate('FORMID', 'SN41', []);
    SN71.enabled := Locate('FORMID', 'SN71', []);
    SN72.enabled := Locate('FORMID', 'SN72', []);
    SN73.enabled := Locate('FORMID', 'SN73', []);
    SN74.enabled := Locate('FORMID', 'SN74', []);
    SN741.enabled := Locate('FORMID', 'SN741', []);
    SN742.enabled := Locate('FORMID', 'SN742', []);
    SN75.enabled := Locate('FORMID', 'SN75', []);
    SN27.enabled := Locate('FORMID', 'SN27', []);
    SN76.enabled := Locate('FORMID', 'SN76', []);
    SN77.enabled := Locate('FORMID', 'SN77', []);
    SN78.enabled := Locate('FORMID', 'SN78', []);
    SN79.enabled := Locate('FORMID', 'SN79', []);
    SN7A.enabled := Locate('FORMID', 'SN7A', []);
    SN7C.enabled := Locate('FORMID', 'SN7C', []);
    //20171019 增加權限
    SN14.enabled := Locate('FORMID', 'SN14', []);
    SN171.enabled := Locate('FORMID', 'SN171', []);
    SN181.enabled := Locate('FORMID', 'SN181', []);     
    SN28.enabled := Locate('FORMID', 'SN28', []);
    SN29.enabled := Locate('FORMID', 'SN29', []);
    SN33.enabled := Locate('FORMID', 'SN33', []);
    SN44.enabled := Locate('FORMID', 'SN44', []);
    SN8.enabled := Locate('FORMID', 'SN8', []);                
    SN81.enabled := Locate('FORMID', 'SN81', []);
    SN82.enabled := Locate('FORMID', 'SN82', []);
    SN91.enabled := Locate('FORMID', 'SN91', []);
    SN92.enabled := Locate('FORMID', 'SN92', []);
    SN94.enabled := Locate('FORMID', 'SN94', []);
    SN95.enabled := Locate('FORMID', 'SN95', []);
    SN65.enabled := Locate('FORMID', 'SN65', []);
    SN67.enabled := Locate('FORMID', 'SN67', []);
    SNA11.enabled := Locate('FORMID', 'SNA11', []);
    SNA21.enabled := Locate('FORMID', 'SNA21', []);
    SNA22.enabled := Locate('FORMID', 'SNA22', []);
    SNA31.enabled := Locate('FORMID', 'SNA31', []);
    SNA41.enabled := Locate('FORMID', 'SNA41', []);
    SNA51.enabled := Locate('FORMID', 'SNA51', []);
    SNA61.enabled := Locate('FORMID', 'SNA61', []);
    SNA8.enabled := Locate('FORMID', 'SNA8', []);
    SN69.enabled := Locate('FORMID', 'SN69', []);                                        
    SN6A.enabled := Locate('FORMID', 'SN6A', []);
    SN7B.enabled := Locate('FORMID', 'SN7B', []);
    SNB1.enabled := Locate('FORMID', 'SNB1', []);
    SN2A.enabled := Locate('FORMID', 'SN2A', []);
    SNB3.enabled := Locate('FORMID', 'SNB3', []);
    SNB4.enabled := Locate('FORMID', 'SNB4', []);
    //SN63.enabled := Locate('FORMID', 'SN63', []);
    SN631.enabled := Locate('FORMID', 'SN631', []);
    //SN632.enabled := Locate('FORMID', 'SN632', []);
    SNC1.enabled := Locate('FORMID', 'SNC1', []);
    SNB7.enabled := Locate('FORMID', 'SNB7', []);
    SN6C.enabled := Locate('FORMID', 'SN6C', []);
    SN46.enabled := Locate('FORMID', 'SN46', []);
    active:=false;
  end;
  end;
end;



procedure Tmain.SN11Click(Sender: TObject);
begin
  showFm(Pointer(TempMaterial), TTempMaterial, TMenuItem(Sender).Name);
end;

procedure Tmain.SN12Click(Sender: TObject);
begin
  showFm(Pointer(MaterialCheng), TMaterialCheng, TMenuItem(Sender).Name);
end;

procedure Tmain.N14Material1Click(Sender: TObject);
begin
  showFm(Pointer(Quotation), TQuotation, TMenuItem(Sender).Name);
end;

procedure Tmain.SN21Click(Sender: TObject);
begin
  showFm(Pointer(smapleorderlist), Tsmapleorderlist, TMenuItem(Sender).Name);
  smapleorderlist.Flag.Text:='P';
  smapleorderlist.label2.Caption:='Purchase';
end;

procedure Tmain.SN31Click(Sender: TObject);
begin
  //sn31.Enabled:=false;
  //sn32.Enabled:=false;
  showFm(Pointer(purother), Tpurother, TMenuItem(Sender).Name);
  purother.PurClass.Text:='6';
  purother.Caption:='Purchase Order Material';
end;

procedure Tmain.SN32Click(Sender: TObject);
begin
  sn31.Enabled:=false;
  sn32.Enabled:=false;
  //
  showFm(Pointer(purother), Tpurother, TMenuItem(Sender).Name);
  purother.PurClass.Text:='T';
  purother.Caption:='Purchase Temp Material';
end;

procedure Tmain.SN33Click(Sender: TObject);
begin
  showFm(Pointer(purchasecheck), Tpurchasecheck, TMenuItem(Sender).Name);
end;

procedure Tmain.SN51Click(Sender: TObject);
begin

  sn21.Enabled:=false;
  sn51.Enabled:=false;
  showFm(Pointer(SmapleOrderList), TSmapleOrderList, TMenuItem(Sender).Name);
  smapleorderlist.Flag.Text:='D';
  smapleorderlist.label2.Caption:='Deliver';
end;

procedure Tmain.SN52Click(Sender: TObject);
begin
  showFm(Pointer(DelOther), TDelOther, TMenuItem(Sender).Name);
end;

procedure Tmain.SN24Click(Sender: TObject);
begin
  showFm(Pointer(SampleBOM), TSampleBOM, TMenuItem(Sender).Name);
end;

procedure Tmain.SN15Click(Sender: TObject);
begin
  showFm(Pointer(PFC_SkuMap), TPFC_SkuMap, TMenuItem(Sender).Name);
end;

procedure Tmain.SN251Click(Sender: TObject);
begin
  showFm(Pointer(SampleTracking_Dev), TSampleTracking_Dev, TMenuItem(Sender).Name);
end;

procedure Tmain.SN252Click(Sender: TObject);
begin
  showFm(Pointer(SampleTracking_Pat), TSampleTracking_Pat, TMenuItem(Sender).Name);
end;

procedure Tmain.SN253Click(Sender: TObject);
begin
  showFm(Pointer(SampleTracking_Pur), TSampleTracking_Pur, TMenuItem(Sender).Name);
end;

procedure Tmain.SN254Click(Sender: TObject);
begin
  showFm(Pointer(SampleTracking_Pro), TSampleTracking_Pro, TMenuItem(Sender).Name);
end;

procedure Tmain.SN255Click(Sender: TObject);
begin
  showFm(Pointer(SampleTracking_Quo), TSampleTracking_Quo, TMenuItem(Sender).Name);
end;

procedure Tmain.SN22Click(Sender: TObject);
begin
  showFm(Pointer(SampleOrder), TSampleOrder, TMenuItem(Sender).Name);
end;

procedure Tmain.SN23Click(Sender: TObject);
begin
  showFm(Pointer(SampleMaterial), TSampleMaterial, TMenuItem(Sender).Name);
end;

procedure Tmain.SN26Click(Sender: TObject);
begin
  showFm(Pointer(MQ), TMQ, TMenuItem(Sender).Name);
end;

procedure Tmain.SN34Click(Sender: TObject);
begin
  showFm(Pointer(FDStatus), TFDStatus, TMenuItem(Sender).Name);
end;

procedure Tmain.SN64Click(Sender: TObject);
begin
  showFm(Pointer(DFC), TDFC, TMenuItem(Sender).Name);
end;

procedure Tmain.SN64popClick(Sender: TObject);
begin
  SN64.Click;
end;

procedure Tmain.SN71Click(Sender: TObject);
begin
  showFm(Pointer(ShoeTracking), TShoeTracking, TMenuItem(Sender).Name);
end;

procedure Tmain.SN72Click(Sender: TObject);
begin
  showFm(Pointer(SampleDevelopInformation), TSampleDevelopInformation, TMenuItem(Sender).Name);
end;

procedure Tmain.SN16Click(Sender: TObject);
begin
  showFm(Pointer(FDStatusMaterialChange), TFDStatusMaterialChange, TMenuItem(Sender).Name);
end;

procedure Tmain.SN73Click(Sender: TObject);
begin
//  showFm(Pointer(TraceChangeMaterial), TTraceChangeMaterial, TMenuItem(Sender).Name);
end;

procedure Tmain.SN171Click(Sender: TObject);
begin
  showFm(Pointer(MaterialTestFD), TMaterialTestFD, TMenuItem(Sender).Name);
end;

procedure Tmain.SN181Click(Sender: TObject);
begin
  showFm(Pointer(FGTTest), TFGTTest, TMenuItem(Sender).Name);
end;

procedure Tmain.SN75Click(Sender: TObject);
begin
  showFm(Pointer(PaperRoom), TPaperRoom, TMenuItem(Sender).Name);
end;
                                             
procedure Tmain.SN35Click(Sender: TObject);
begin
  showFm(Pointer(FDStatusLeadTime), TFDStatusLeadTime, TMenuItem(Sender).Name);
end;

procedure Tmain.SN27Click(Sender: TObject);
begin
  showFm(Pointer(SamplePlan), TSamplePlan, TMenuItem(Sender).Name);
end;

procedure Tmain.SN76Click(Sender: TObject);                                       
begin
  showFm(Pointer(BomDataSearch), TBomDataSearch, TMenuItem(Sender).Name);
end;

procedure Tmain.SN77Click(Sender: TObject);
begin
  showFm(Pointer(DeveloperName), TDeveloperName, TMenuItem(Sender).Name);
end;

procedure Tmain.SN78Click(Sender: TObject);
begin
  showFm(Pointer(DevCalendar), TDevCalendar, TMenuItem(Sender).Name);
end;

procedure Tmain.SN28Click(Sender: TObject);
begin
  showFm(Pointer(SampleWarehouse), TSampleWarehouse, TMenuItem(Sender).Name);
end;

procedure Tmain.SN44Click(Sender: TObject);
begin
  showFm(Pointer(AnyStock), TAnyStock, TMenuItem(Sender).Name);
end;

procedure Tmain.SN29Click(Sender: TObject);
begin
  showFm(Pointer(flexcode), Tflexcode, TMenuItem(Sender).Name);
end;

procedure Tmain.SN79Click(Sender: TObject);
begin
  showFm(Pointer(SampleOderUserChange), TSampleOderUserChange, TMenuItem(Sender).Name);
end;

procedure Tmain.SN81Click(Sender: TObject);
begin
  showFm(Pointer(Organization1), TOrganization1, TMenuItem(Sender).Name);
end;

procedure Tmain.SN91Click(Sender: TObject);
begin
  showFm(Pointer(QC_ShoeTest), TQC_ShoeTest, TMenuItem(Sender).Name);
end;

procedure Tmain.SN92Click(Sender: TObject);
begin
  showFm(Pointer(ShoeTestReport), TShoeTestReport, TMenuItem(Sender).Name);
end;

procedure Tmain.SN65Click(Sender: TObject);
begin
  showFm(Pointer(MaterialTracking1), TMaterialTracking1, TMenuItem(Sender).Name);
end;

procedure Tmain.SN7AClick(Sender: TObject);
begin
  showFm(Pointer(SampleDataUpload), TSampleDataUpload, TMenuItem(Sender).Name);
end;

procedure Tmain.SN66Click(Sender: TObject);
begin
  showFm(Pointer(Overtime_Report), TOvertime_Report, TMenuItem(Sender).Name);
end;

procedure Tmain.SN83Click(Sender: TObject);
begin
  showFm(Pointer(PC_Memo), TPC_Memo, TMenuItem(Sender).Name);
end;

procedure Tmain.SN67Click(Sender: TObject);
begin
  showFm(Pointer(DeveloperLoading), TDeveloperLoading, TMenuItem(Sender).Name);
end;

procedure Tmain.SN68Click(Sender: TObject);
begin
  showFm(Pointer(SampleAnalysis), TSampleAnalysis, TMenuItem(Sender).Name);
end;

procedure Tmain.SNA11Click(Sender: TObject);
begin
  showFm(Pointer(ScanTBReceive1), TScanTBReceive1, TMenuItem(Sender).Name);   //NA1
end;

procedure Tmain.SNA61Click(Sender: TObject);
begin
  showFm(Pointer(ScanTBComplete1), TScanTBComplete1, TMenuItem(Sender).Name);
end;

procedure Tmain.SNA31Click(Sender: TObject);
begin
  showFm(Pointer(TBCSTime1), TTBCSTime1, TMenuItem(Sender).Name);
end;

procedure Tmain.SNA21Click(Sender: TObject);
begin
  showFm(Pointer(MaterialReadyTime1), TMaterialReadyTime1, TMenuItem(Sender).Name);  //NA4
end;

procedure Tmain.SN69Click(Sender: TObject);
begin
  showFm(Pointer(UseStockReport), TUseStockReport, TMenuItem(Sender).Name);
end;

procedure Tmain.SN6AClick(Sender: TObject);
begin
  showFm(Pointer(NewMaterialList), TNewMaterialList, TMenuItem(Sender).Name);
end;

procedure Tmain.SN7BClick(Sender: TObject);
begin
  showFm(Pointer(LastData), TLastData, TMenuItem(Sender).Name);
end;

procedure Tmain.SN19Click(Sender: TObject);
begin
  showFm(Pointer(NewMaterialOfSeason), TNewMaterialOfSeason, TMenuItem(Sender).Name);
end;

procedure Tmain.SN6BClick(Sender: TObject);
begin
  showFm(Pointer(RubberPO), TRubberPO, TMenuItem(Sender).Name);
end;

procedure Tmain.SNB1Click(Sender: TObject);
begin
  showFm(Pointer(BasicInformation), TBasicInformation, TMenuItem(Sender).Name);
end;
                                                   
procedure Tmain.SN7CClick(Sender: TObject);
begin
  showFm(Pointer(MoldData), TMoldData, TMenuItem(Sender).Name);
end;

procedure Tmain.SN741Click(Sender: TObject);
begin
  showFm(Pointer(FDExcelData), TFDExcelData, TMenuItem(Sender).Name);
end;

procedure Tmain.SN742Click(Sender: TObject);
begin
  showFm(Pointer(FDExcelData_TYB), TFDExcelData_TYB, TMenuItem(Sender).Name);
end;

procedure Tmain.SNB2Click(Sender: TObject);
begin
  showFm(Pointer(HangTag), THangTag, TMenuItem(Sender).Name);
end;

procedure Tmain.SN2AClick(Sender: TObject);
begin
  showFm(Pointer(ToolingSetting1), TToolingSetting1, TMenuItem(Sender).Name);
end;

procedure Tmain.SNA51Click(Sender: TObject);
begin
  showFm(Pointer(ScanTBBMTime1), TScanTBBMTime1, TMenuItem(Sender).Name);
end;

procedure Tmain.FormShow(Sender: TObject);
var tmpMenuItem:TMenuItem;                  
begin
  //自動檢查往前第三天
  if ParamCount=2 then
  begin
    if ParamStr(1)='TVPanel' then
    begin
       tmpMenuItem:=TMenuItem(FindComponent(ParamStr(2)));
       if tmpMenuItem<>nil then tmpMenuItem.Click;
       if ParamStr(2) = 'SN68' then SampleAnalysis.Edit3.Text := 'TV';
    end;
  end;
end;

procedure Tmain.SNB3Click(Sender: TObject);
begin
  showFm(Pointer(TPToFinished), TTPToFinished, TMenuItem(Sender).Name);
end;

procedure Tmain.SNB4Click(Sender: TObject);
begin
  showFm(Pointer(PMR), TPMR, TMenuItem(Sender).Name);
end;

procedure Tmain.N931Click(Sender: TObject);
begin
  showFm(Pointer(ShoetestReceive1), TShoetestReceive1, TMenuItem(Sender).Name);
end;

procedure Tmain.NB5Click(Sender: TObject);
begin
  showFm(Pointer(ShoePlan1), TShoePlan, TMenuItem(Sender).Name);
end;

procedure Tmain.SNA41Click(Sender: TObject);
begin
  showFm(Pointer(TBSTime1), TTBSTime1, TMenuItem(Sender).Name);
  TBSTime1.TabSheet2.Destroy;
  TBSTime1.TabSheet3.Destroy;
  TBSTime1.PageControl1.ActivePageIndex := 0;
end;

procedure Tmain.SNA8Click(Sender: TObject);
begin
  showFm(Pointer(TBCLEAR1), TTBCLEAR1, TMenuItem(Sender).Name);
end;

procedure Tmain.SN82Click(Sender: TObject);
begin
  showFm(Pointer(PCData), TPCData, TMenuItem(Sender).Name);
end;

procedure Tmain.NB6RFCList1Click(Sender: TObject);
begin
  showFm(Pointer(RFC_List), TRFC_List, TMenuItem(Sender).Name);
end;

procedure Tmain.SN631Click(Sender: TObject);
begin
  showFm(Pointer(Scan_InventoryList), TScan_InventoryList, TMenuItem(Sender).Name);
end;

procedure Tmain.SNA22Click(Sender: TObject);
begin
  showFm(Pointer(ColorSwatchScan), TColorSwatchScan, TMenuItem(Sender).Name);
end;

procedure Tmain.SNC1Click(Sender: TObject);
begin
  showFm(Pointer(PMR_Internal), TPMR_Internal, TMenuItem(Sender).Name);
end;

procedure Tmain.SN45Click(Sender: TObject);
begin
  showFm(Pointer(SampeFinishShoeStock), TSampeFinishShoeStock, TMenuItem(Sender).Name);
end;

procedure Tmain.SNB7Click(Sender: TObject);
begin
  showFm(Pointer(TBDelayReason1), TTBDelayReason1, TMenuItem(Sender).Name);
end;

procedure Tmain.SN2BClick(Sender: TObject);
begin
  showFm(Pointer(Sample_TBRemake), TSample_TBRemake, TMenuItem(Sender).Name);
end;

procedure Tmain.SN632Click(Sender: TObject);
begin
  showFm(Pointer(Allshoe_List), TAllshoe_List, TMenuItem(Sender).Name);
end;

procedure Tmain.SN94Click(Sender: TObject);
begin
  showFm(Pointer(QRFormatTracking), TQRFormatTracking, TMenuItem(Sender).Name);
end;

procedure Tmain.SN95Click(Sender: TObject);
begin
  showFm(Pointer(QRFormatScan), TQRFormatScan, TMenuItem(Sender).Name);
end;

procedure Tmain.SND1Click(Sender: TObject);
begin
  showFm(Pointer(DevelopTrainingCourses), TDevelopTrainingCourses, TmenuItem(Sender).Name);
end;

procedure Tmain.SND2Click(Sender: TObject);
begin
  showFm(Pointer(DevelopTrainingRecords), TDevelopTrainingRecords, TmenuItem(Sender).Name);
end;

procedure Tmain.SND3Click(Sender: TObject);
begin
  showFm(Pointer(DevelopTrainingReport), TDevelopTrainingReport, TmenuItem(Sender).Name);
end;

procedure Tmain.SN6CClick(Sender: TObject);
begin
  showFm(Pointer(LocalizationReport), TLocalizationReport, TmenuItem(Sender).Name);
end;

procedure Tmain.SN46Click(Sender: TObject);
begin
  showFm(Pointer(scandata), Tscandata, TmenuItem(Sender).Name);
end;

end.

