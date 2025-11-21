unit CostingPriceList1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Grids, DBGrids, ComCtrls, DB,
  DBTables, GridsEh, DBGridEh,comobj, Menus, DBCtrls;

type
  TCostingPriceList = class(TForm)
    Query1: TQuery;
    UpdateSQL1: TUpdateSQL;
    DataSource1: TDataSource;
    Query_NO: TQuery;
    UploadlQuery: TQuery;
    UpdateSQL2: TUpdateSQL;
    DataSource2: TDataSource;
    opendialog: TOpenDialog;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    DBGridEh1: TDBGridEh;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    Memo1: TMemo;
    DBGridEh3: TDBGridEh;
    DataSource3: TDataSource;
    Query2: TQuery;
    DBGridEh2: TDBGridEh;
    Panel1: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    BA8: TBitBtn;
    BA7: TBitBtn;
    BA6: TBitBtn;
    BA3: TBitBtn;
    BA5: TBitBtn;
    BA2: TBitBtn;
    BA1: TBitBtn;
    ED1: TEdit;
    ED2: TEdit;
    Panel2: TPanel;
    BB4: TBitBtn;
    BB3: TBitBtn;
    BB2: TBitBtn;
    BB1: TButton;
    Panel3: TPanel;
    Edit3: TEdit;
    Label6: TLabel;
    Edit4: TEdit;
    BitBtn2: TBitBtn;
    Label1: TLabel;
    BitBtn1: TBitBtn;
    Query2No: TSmallintField;
    Query2XieMing: TStringField;
    Query2YSSM: TStringField;
    Query2DEVCODE: TStringField;
    Query2SKU: TStringField;
    Query2Category: TStringField;
    Query2GENDER: TStringField;
    Query2UpperMatDetail: TStringField;
    Query2Material: TCurrencyField;
    Query2Labor: TCurrencyField;
    Query2OH: TCurrencyField;
    Query2SecondLabor: TCurrencyField;
    Query2SecondOH: TCurrencyField;
    Query2OtherAdject: TCurrencyField;
    Query2ProfitRate: TCurrencyField;
    Query2Profit: TCurrencyField;
    Query2Freight: TCurrencyField;
    Query2ProductionType: TStringField;
    Query2ModelDescription: TStringField;
    Query2MoldCharge: TCurrencyField;
    Query2Tooling: TCurrencyField;
    Query2AvailableDate: TDateTimeField;
    Query2AvailableBy: TStringField;
    Query2SendCTSDate: TDateTimeField;
    Query2Remark: TStringField;
    Query2FH17KeptLabor: TCurrencyField;
    Query2OutsoleAssembly: TCurrencyField;
    Query2SocklinerByPrs: TCurrencyField;
    Query2SpecialOffer: TCurrencyField;
    Query2StrobelPrintingRemoveal: TCurrencyField;
    Query2MMDeduction: TCurrencyField;
    Query2MMAutoCutLectraSaving: TCurrencyField;
    Query2HanyoungNetCut: TCurrencyField;
    Query2AutoBuffingSaving: TCurrencyField;
    Query2SupportFrictiontape: TCurrencyField;
    Query2VolumeEfficiencyGain: TCurrencyField;
    Query2RemovedNonBuffing: TCurrencyField;
    Query2VolumeEfficiencyGainOverhead: TCurrencyField;
    UploadlQuerySKU: TStringField;
    UploadlQueryModelDescription: TStringField;
    UploadlQueryRemark: TStringField;
    UploadlQueryUpperMatDetail: TStringField;
    Query1No: TSmallintField;
    Query1SKU: TStringField;
    Query1ModelDescription: TStringField;
    Query1Remark: TStringField;
    Query1UpperMatDetail: TStringField;
    Query1CheckID: TStringField;
    Query1CheckDate: TDateTimeField;
    Query1AvailableDate: TDateTimeField;
    Query1AvailableBy: TStringField;
    Query1SendCTSDate: TDateTimeField;
    Query1Material: TCurrencyField;
    Query1Labor: TCurrencyField;
    Query1OH: TCurrencyField;
    Query1SecondLabor: TCurrencyField;
    Query1SecondOH: TCurrencyField;
    Query1OtherAdject: TCurrencyField;
    Query1ProfitRate: TCurrencyField;
    Query1Profit: TCurrencyField;
    Query1Freight: TCurrencyField;
    Query1MoldCharge: TCurrencyField;
    Query1Tooling: TCurrencyField;
    Query1FH17KeptLabor: TCurrencyField;
    Query1OutsoleAssembly: TCurrencyField;
    Query1SocklinerByPrs: TCurrencyField;
    Query1SpecialOffer: TCurrencyField;
    Query1StrobelPrintingRemoveal: TCurrencyField;
    Query1MMDeduction: TCurrencyField;
    Query1MMAutoCutLectraSaving: TCurrencyField;
    Query1HanyoungNetCut: TCurrencyField;
    Query1AutoBuffingSaving: TCurrencyField;
    Query1SupportFrictiontape: TCurrencyField;
    Query1VolumeEfficiencyGain: TCurrencyField;
    Query1RemovedNonBuffing: TCurrencyField;
    Query1VolumeEfficiencyGainOverhead: TCurrencyField;
    Query1oldNo: TSmallintField;
    BitBtn3: TBitBtn;
    Label2: TLabel;
    Label5: TLabel;
    Query2Planning_Level_2: TStringField;
    TabSheet5: TTabSheet;
    Label8: TLabel;
    QueryPlanningLevel: TQuery;
    UpdateSQL3: TUpdateSQL;
    DataSource4: TDataSource;
    Panel4: TPanel;
    Panel5: TPanel;
    Label10: TLabel;
    Edit5: TEdit;
    BitBtn5: TBitBtn;
    BitBtn4: TBitBtn;
    Label9: TLabel;
    Label11: TLabel;
    DBGridEh4: TDBGridEh;
    QueryPlanningLevelDEVCODE: TStringField;
    QueryPlanningLevelARTICLE: TStringField;
    QueryPlanningLevelPlanning_Level_2: TStringField;
    QueryPlanningLevelSheHao: TStringField;
    QueryPlanningLevelXieXing: TStringField;
    Edit2: TEdit;
    Q1Dropdown: TQuery;
    DBText1: TDBText;
    Label7: TLabel;
    Label40: TLabel;
    DBText5: TDBText;
    Label12: TLabel;
    DBText2: TDBText;
    Label13: TLabel;
    DBText3: TDBText;
    CheckBox1: TCheckBox;
    Label14: TLabel;
    Edit1: TEdit;
    Label15: TLabel;
    Label16: TLabel;
    ED3: TEdit;
    BitBtn6: TBitBtn;
    Permissions_view: TTabSheet;
    Panel6: TPanel;
    BitBtn7: TBitBtn;
    QueryPermissions: TQuery;
    DataSource5: TDataSource;
    DBGridEh5: TDBGridEh;
    QueryPermissionsUSERID: TStringField;
    QueryPermissionsFORMID: TStringField;
    QueryPermissionsSUSERID: TStringField;
    QueryPermissionsUSERDATE: TDateTimeField;
    ExistCheck: TQuery;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    Label17: TLabel;
    Label18: TLabel;
    Edit6: TEdit;
    Label19: TLabel;
    Label20: TLabel;
    Edit7: TEdit;
    Label21: TLabel;
    ComboBox4: TComboBox;
    Label52: TLabel;
    Label22: TLabel;
    ComboBox1: TComboBox;
    Label23: TLabel;
    ComboBox2: TComboBox;
    Query1KFCQ: TStringField;
    Query2TSP: TCurrencyField;
    Query2Salary: TCurrencyField;
    Query2DAOMH: TStringField;
    Query2segment: TStringField;
    Query2SampleSize: TStringField;
    UpdateSQL4: TUpdateSQL;
    Query2RecyclingUn_Cured_25S: TCurrencyField;
    Query2RemoveSocklinerCement_25S: TCurrencyField;
    Query2CBYWeightedCosting_25S: TCurrencyField;
    Query2SeasonalColor_25S: TCurrencyField;
    Query2OrtholiteSockliner_25S: TCurrencyField;
    Query2InnerBox_25S: TCurrencyField;
    Query2MOC_25S: TCurrencyField;
    Query2Ckmesh_25S: TCurrencyField;
    Query2RSHConstructionOptimizat_25S: TCurrencyField;
    Query1PricingSeason_1: TStringField;
    Query1RecyclingUn_Cured_25S: TCurrencyField;
    Query1RemoveSocklinerCement_25S: TCurrencyField;
    Query1RSHConstructionOptimizat_25S: TCurrencyField;
    Query1CBYWeightedCosting_25S: TCurrencyField;
    Query1SeasonalColor_25S: TCurrencyField;
    Query1OrtholiteSockliner_25S: TCurrencyField;
    Query1InnerBox_25S: TCurrencyField;
    Query1MOC_25S: TCurrencyField;
    Query1Ckmesh_25S: TCurrencyField;
    Edit8: TEdit;
    Edit9: TEdit;
    Edit10: TEdit;
    QueryPlanningLevelsegment: TStringField;
    Label24: TLabel;
    Edit11: TEdit;
    Label25: TLabel;
    Edit12: TEdit;
    Label26: TLabel;
    Query2BOMTecLevel: TStringField;
    Query2CTSTecLevel: TStringField;
    Query2SealTapeOIA_LK_25U: TCurrencyField;
    Query2ShoelaceLength_25U: TCurrencyField;
    Query1SealTapeOIA_LK_25U: TCurrencyField;
    Query1ShoelaceLength_25U: TCurrencyField;
    Query1TissueOIA_LK_25U: TCurrencyField;
    Query2TissueOIA_LK_25U: TCurrencyField;
    Label27: TLabel;
    Edit13: TEdit;
    Query2pairs_PODate: TIntegerField;
    CheckBox4: TCheckBox;
    BitBtn8: TBitBtn;
    Query1KHDH: TStringField;
    Query2CL98LaborPrecommit_25F: TCurrencyField;
    Query1CL98LaborPrecommit_25F: TCurrencyField;
    Query2FY25_CostMitigation: TCurrencyField;
    Query1FY25_CostMitigation: TCurrencyField;
    TabSheet6: TTabSheet;
    Panel8: TPanel;
    Label56: TLabel;
    Edit14: TEdit;
    BitBtn9: TBitBtn;
    BitBtn10: TBitBtn;
    Button12: TButton;
    BitBtn11: TBitBtn;
    LYIorder: TQuery;
    DataSource6: TDataSource;
    UpdateSQL5: TUpdateSQL;
    DBGridEh6: TDBGridEh;
    LYIorderRY: TStringField;
    LYIorderCustomer_PO: TStringField;
    LYIorderBuyNo: TStringField;
    LYIorderSKU: TStringField;
    LYIorderPairs: TIntegerField;
    LYIorderPOCreateDate: TStringField;
    Query1FOB: TCurrencyField;
    Query1C2B_RL: TCurrencyField;
    Query1SecondL_RL: TCurrencyField;
    Query2FOB: TCurrencyField;
    Query2C2B_RL: TCurrencyField;
    Query2SecondL_RL: TCurrencyField;
    UploadlQueryPricingSeason: TStringField;
    Query1PricingSeason: TStringField;
    Query2PricingSeason: TStringField;
    UploadlQueryRound: TStringField;
    UploadlQueryColorway: TStringField;
    UploadlQueryColor_Code: TStringField;
    UploadlQueryFOB: TCurrencyField;
    procedure BB7Click(Sender: TObject);
    procedure BA1Click(Sender: TObject);
    procedure BA2Click(Sender: TObject);
    procedure BA5Click(Sender: TObject);
    procedure BA6Click(Sender: TObject);
    procedure BA3Click(Sender: TObject);
    procedure DBGridEh2GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
//    procedure BA8ClickBitBtn3Click(Sender: TObject);
    procedure BB1Click(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure BB2Click(Sender: TObject);
    procedure BA7Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    function UploadQ(FieldByName,EditText:String):String;
    function TrimStr(j:integer;MsExcel:olevariant;EditText:String):String;
    function TrimStrNB(j:integer;MsExcel:olevariant;EditText:String):String;
    function GetSpeedSeason(EditText:string):string;
    function Excelfinding(j:integer;MsExcel:olevariant;EditText:String):string;
    procedure ExportExcel(Query:TQuery);
    procedure BitBtn1Click(Sender: TObject);
    procedure DBGridEh1Columns1UpdateData(Sender: TObject;
      var Text: String; var Value: Variant; var UseText, Handled: Boolean);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
   

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CostingPriceList: TCostingPriceList;

implementation

uses main1;

{$R *.dfm}

procedure TCostingPriceList.BB7Click(Sender: TObject);
begin
  close();
end;
function TCostingPriceList.UploadQ(FieldByName,EditText:String):String;
begin
      //showmessage(EditText);
      try
        if EditText<>'' then
          UploadlQuery.FieldByName(FieldByName).value:=EditText;
      except
          showmessage(FieldByName+'='+EditText);
          UploadlQuery.FieldByName(FieldByName).value:='';
      end;
end;

function TCostingPriceList.TrimStr(j:integer;MsExcel:olevariant;EditText:String):String;
var EditText2,specialChars: String;
begin
    //specialChars:='''''?!$?#';
    specialChars:='''';
    if (EditText='0') or (EditText=null) or (EditText='') then
      result:=''
    else                      
    begin
      EditText2:=msExcel.WorkBooks[1].WorkSheets[1].Cells[j,strtoint(EditText)];
      //showmessage(EditText2);
      EditText2:=StringReplace(EditText2,specialChars,'', [rfReplaceAll]);
      EditText2:=StringReplace(EditText2,'，','', [rfReplaceAll]);
      try
         if (EditText2<>'') or (EditText2<>'0') or (EditText2<>null) then
            msExcel.WorkBooks[1].WorkSheets[1].Cells(j,strtoint(EditText)):='=Trim("'+EditText2+'")';
      except
          //showmessage('TrimStr error='+EditText2);
          //UploadlQuery.FieldByName(FieldByName).value:='';
      end;

      EditText2:=msExcel.WorkBooks[1].WorkSheets[1].Cells[j,strtoint(EditText)].value;

      result:=Trim(StringReplace(EditText2,specialChars,'', [rfReplaceAll]))
    end;
end;

function TCostingPriceList.TrimStrNB(j:integer;MsExcel:olevariant;EditText:String):String;
var EditText2,ReplaceStr: String;
    k :integer;
    L:integer;
begin

    if (EditText='0') or (EditText=null) then
      result:=''
    else
    begin
      EditText2:=msExcel.WorkBooks[1].WorkSheets[1].Cells[j,strtoint(EditText)];
      msExcel.WorkBooks[1].WorkSheets[1].Cells(j,strtoint(EditText)):='=Round('+EditText2+',4)';
      EditText2:=msExcel.WorkBooks[1].WorkSheets[1].Cells[j,strtoint(EditText)].value;
      L:=Length(EditText2);
      if L>=8 then
        L:=8;
      if Trim(EditText2)<>'' then
      begin
        for k := 0 to L do
        begin
          // 檢查字符是否為數字
          if EditText2[k] in ['.','-','0'..'9'] then
            ReplaceStr := ReplaceStr + EditText2[k];
        end;
        // 將單元格內容替換為只包含數字的值
        EditText2:= VarToStr(FormatFloat('0.00000',Strtofloat(Copy(ReplaceStr,1,L))));
      end
      else
           EditText2:='';
      //EditText2:=msExcel.WorkBooks[1].WorkSheets[1].Cells[j,strtoint(EditText)].value;

      result:=EditText2;
    end;
end;

function TCostingPriceList.Excelfinding(j:integer;MsExcel:olevariant;EditText:String):String;
var DesRange:Variant;
begin
      DesRange:=MsExcel.WorkBooks[1].WorkSheets[1].rows[j].find(EditText);
      if not VarIsClear(DesRange)  then
        result:=varToStr(DesRange.Column)
      else
        begin
        if CheckBox1.Checked=true then
          showmessage(EditText+' not found in excel');
        result:='0';
        end;
end;


function TCostingPriceList.GetSpeedSeason(EditText:String):String;
begin

if (EditText = 'SP') or (EditText = 'S')then
    result:='S'
else if (EditText = 'SU') or (EditText = 'U') or (EditText = 'R')then
    result:='U'
else if (EditText = 'FA') or (EditText = 'F')then
    result:='F'
else if (EditText = 'HO') or (EditText = 'H')then
    result:='H'
else if EditText<>'' then
    showmessage('Season type error:'+EditText)
end;


procedure TCostingPriceList.BA1Click(Sender: TObject);
begin
 {if (ED2.Text='') then
      begin
        showmessage('Please input season');
      end
  else   }
      begin
        //query1.Active:=false;
        with query1 do
          begin
            active:=false;
            SQL.clear;
            SQL.add('Select No,PricingSeason,PricingSeason,SKU,ModelDescription,Remark,UpperMatDetail,');
            SQL.add('      CheckID,CheckDate,AvailableDate,AvailableBy,SendCTSDate,FOB,Material,Labor,OH,C2B_RL,SecondL_RL,');
            SQL.add('      SecondLabor,SecondOH,OtherAdject,ProfitRate,Profit,Freight,MoldCharge,Tooling,FH17KeptLabor,');
            SQL.add('      OutsoleAssembly,SocklinerByPrs,SpecialOffer,');
            SQL.add('      StrobelPrintingRemoveal,MMDeduction,MMAutoCutLectraSaving,HanyoungNetCut,AutoBuffingSaving,');
            SQL.add('      SupportFrictiontape,VolumeEfficiencyGain,RemovedNonBuffing,VolumeEfficiencyGainOverhead,CostingPriceList.No as oldNo,CostingPriceList.KFCQ');
            SQL.add('      ,RecyclingUn_Cured_25S,RemoveSocklinerCement_25S,RSHConstructionOptimizat_25S,CBYWeightedCosting_25S');
            SQL.add('      ,SeasonalColor_25S,OrtholiteSockliner_25S,InnerBox_25S,MOC_25S,Ckmesh_25S');
            SQL.add('      ,SealTapeOIA_LK_25U,ShoelaceLength_25U,TissueOIA_LK_25U,CostingPriceList.KHDH,CL98LaborPrecommit_25F');
            SQL.add('      ,FY25_CostMitigation');

            SQL.add('From CostingPriceList ');
            SQL.add('left join (    ');
            SQL.add('      select article,SheHao,xiexing from CBYtoSpec  ');
            SQL.add('      union all    ');
            SQL.add('      select article,SheHao,xiexing from xxzl  ');
            //SQL.add(')xxzl on xxzl.article like CostingPriceList.SKU+''%''  ');
            SQL.add(')xxzl on  CostingPriceList.SKU = left(xxzl.article,charindex(''/'',xxzl.article+''/'')-1)');
            SQL.add('left join KFXXZL on xxzl.XieXing=KFXXZL.XieXing and xxzl.SheHao=KFXXZL.SheHao');
            SQL.Add('Where CostingPriceList.PricingSeason like ''%'+ED2.Text+'%''');
         if ComboBox2.ItemIndex=0 then
            sql.add('and CostingPriceList.KFCQ=''JNG''');
         if ComboBox2.ItemIndex=1 then
            sql.add('and CostingPriceList.KFCQ=''YQA''');
            //SQL.add('  AND CostingPriceList.Devcode like '''+Ed_SR.Text+'%''');
            if ED1.text<>'' then
                SQL.add('  AND CostingPriceList.SKU like '''+ED1.Text+'%''');
            if ED3.text<>'' then
                SQL.add('      AND KFXXZL.DEVCODE like '''+ED3.Text+'%''');
         if main.Edit2.Text='CDC' then
            sql.add('and CostingPriceList.KHDH=''036''')
         else if main.Edit2.Text='VC1' then
            sql.add('and CostingPriceList.KHDH=''0079''');     //Cariuma
            if checkbox2.Checked=true then
                SQL.add('      AND CostingPriceList.CheckID = '''+main.Edit1.Text+'''');
            SQL.add('group by No,PricingSeason,PricingSeason,SKU,ModelDescription,Remark,UpperMatDetail,');
            SQL.add('      CheckID,CheckDate,AvailableDate,AvailableBy,SendCTSDate,FOB,Material,Labor,OH,C2B_RL,SecondL_RL,');
            SQL.add('      SecondLabor,SecondOH,OtherAdject,ProfitRate,Profit,Freight,MoldCharge,Tooling,FH17KeptLabor,');
            SQL.add('      OutsoleAssembly,SocklinerByPrs,SpecialOffer,');
            SQL.add('      StrobelPrintingRemoveal,MMDeduction,MMAutoCutLectraSaving,HanyoungNetCut,AutoBuffingSaving,');
            SQL.add('      SupportFrictiontape,VolumeEfficiencyGain,RemovedNonBuffing,VolumeEfficiencyGainOverhead,CostingPriceList.KFCQ');
            SQL.add('      ,RecyclingUn_Cured_25S,RemoveSocklinerCement_25S,RSHConstructionOptimizat_25S,CBYWeightedCosting_25S');
            SQL.add('      ,SeasonalColor_25S,OrtholiteSockliner_25S,InnerBox_25S,MOC_25S,Ckmesh_25S');
            SQL.add('      ,SealTapeOIA_LK_25U,ShoelaceLength_25U,TissueOIA_LK_25U,CostingPriceList.KHDH,CL98LaborPrecommit_25F');    
            SQL.add('      ,FY25_CostMitigation');
            SQL.add('Order by CostingPriceList.PricingSeason,CostingPriceList.No');
            //showmessage(SQL.Text);
            active:=true;
          end;
      end;
   query1.requestlive:=true;
   query1.cachedupdates:=true;
   BA3.Enabled:=true;
   BA2.Enabled:=true;
   BA5.Enabled:=true;
   BA6.Enabled:=true;
   //BA7.Enabled:=false;
end;


procedure TCostingPriceList.BA2Click(Sender: TObject);
begin
  query1.RequestLive:=true;
  query1.CachedUpdates:=true;
  query1.Insert;

end;

procedure TCostingPriceList.BA5Click(Sender: TObject);//Save
var i:integer;
begin
  try
    query1.First;
    for i:=1 to query1.RecordCount do
    begin
          //showmessage('oldNo='+query1.fieldbyname('oldNo').Value);
          if query1.fieldbyname('oldNo').Value=0 then//刪除
            begin
            UpdateSQL1.apply(ukdelete)
            end
          else if query1.fieldbyname('PricingSeason').isnull then
            //刪除
          else if query1.fieldbyname('oldNo').isnull then //新增
            begin
              //showmessage('new');
              with Query_NO do
                begin
                  active:=false;
                  sql.Clear;
                  sql.Add('select MAX(No)+1 as No from CostingPriceList');
                  sql.Add('where CostingPriceList.PricingSeason = '''+query1.fieldbyname('PricingSeason').Value+'''');
                  //showmessage(SQL.Text);
                  active:=true;
                  showmessage('MaxNo='+Query_NO.fieldbyname('No').Asstring);
                end;
            query1.Edit;
                if Query_NO.fieldbyname('No').isnull then
                    query1.fieldbyname('No').Value:='1'
                else
                    query1.fieldbyname('No').Value:=Query_NO.fieldbyname('No').value;
            showmessage(query1.fieldbyname('No').Value);
            Query_NO.active:=false;
            query1.FieldByName('CheckID').AsString:=main.Edit1.Text;
            query1.FieldByName('CheckDate').Value:=now();
            if ComboBox2.ItemIndex=0 then
              query1.FieldByName('KFCQ').Value:='JNG';
            if ComboBox2.ItemIndex=1 then
              query1.FieldByName('KFCQ').Value:='YQA';
            if main.Edit2.Text='CDC' then
              query1.FieldByName('KHDH').Value:='036'
            else if main.Edit2.Text='VC1' then
              query1.FieldByName('KHDH').Value:='0079';    //Cariuma

            {if ComboBox6.ItemIndex=0 then
              query1.FieldByName('KHDH').Value:='036';
            if ComboBox6.ItemIndex=1 then
              query1.FieldByName('KHDH').Value:='0079'; }
            UpdateSQL1.apply(ukinsert);
            end
          else if query1.updatestatus=usmodified then//修改
              begin
              query1.Edit;
              query1.FieldByName('CheckID').AsString:=main.Edit1.Text;
              query1.FieldByName('CheckDate').Value:=now();  
            if ComboBox2.ItemIndex=0 then
            query1.FieldByName('KFCQ').Value:='JNG';
             if ComboBox2.ItemIndex=1 then
            query1.FieldByName('KFCQ').Value:='YQA';   
            if main.Edit2.Text='CDC' then
              query1.FieldByName('KHDH').Value:='036'
            else if main.Edit2.Text='VC1' then
              query1.FieldByName('KHDH').Value:='0079';    //Cariuma
            {if ComboBox6.ItemIndex=0 then
              query1.FieldByName('KHDH').Value:='036';
            if ComboBox6.ItemIndex=1 then
              query1.FieldByName('KHDH').Value:='0079'; }
              UpdateSQL1.apply(ukmodify)
              end;
          //end;

      query1.Next
    end;//for

    query1.active:=false;
    //query1.requestlive:=false;
    //query1.cachedupdates:=false;
    query1.active:=true;
    //BA1.Enabled:=true;
    //BA2.Enabled:=false;
    BA3.Enabled:=false;
    //BA5.Enabled:=false;
    BA6.Enabled:=false;

    showmessage('Succeed');
  except


    on E:Exception do
      showmessage('have wrong:'+E.Message);
  end;
end;


procedure TCostingPriceList.BA6Click(Sender: TObject);
begin
  query1.active:=false;
  query1.cachedupdates:=false;
  query1.requestlive:=false;
  query1.active:=true;
    BA2.Enabled:=false;
    BA3.Enabled:=false;
    BA5.Enabled:=false;
    BA6.Enabled:=false;


end;                                        

procedure TCostingPriceList.BA3Click(Sender: TObject);
begin
  query1.edit;
  if query1.fieldbyname('oldNo').Value=0 then
    query1.fieldbyname('oldNo').Value:=query1.fieldbyname('No').Value    //資料庫刪除恢復
  else if  query1.fieldbyname('oldNo').Value= null then
    query1.Delete                           //刪除新增
  else
    query1.fieldbyname('oldNo').Value:=0;   //刪除資料庫
end;

procedure TCostingPriceList.DBGridEh2GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if query1.FieldByName('oldNo').value =0 then
    DBGridEh2.canvas.font.color:=clred;
end;


procedure TCostingPriceList.ExportExcel(Query:TQuery);
var  eclApp,WorkBook:olevariant;
      i,j:integer;
begin
  if  Query.active  then
    begin
    try
      eclApp:=CreateOleObject('Excel.Application');
      WorkBook:=CreateOleObject('Excel.Sheet');
    except
      Application.MessageBox('No Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
      Exit;
    end;
    try
        WorkBook:=eclApp.workbooks.Add;
        for   i:=0   to   Query.fieldcount-1   do
        begin
            eclApp.Cells(1,i+1):=Query.fields[i].FieldName;
        end;

        Query.First;
        j:=2;
        while   not   Query.Eof   do
        begin
          for   i:=0   to  Query.fieldcount-1  do
          begin
            eclApp.Cells(j,i+1):=Query.Fields[i].Value;
          end;
        Query.Next;
        inc(j);
        end;
       eclapp.columns.autofit;
       eclApp.ActiveSheet.Columns[2].ColumnWidth := 50;
       eclApp.ActiveSheet.Columns[3].ColumnWidth := 50;
       showmessage('Succeed');
       eclApp.Visible:=True;

      except
        on   F:Exception   do
          showmessage(F.Message);
      end;
    end;

end;
{
procedure TCostingPriceList.BA8Click(Sender: TObject);
var   eclApp,WorkBook:olevariant;
      i,j:integer;
begin
  if  query1.active  then
    begin
    try
      eclApp:=CreateOleObject('Excel.Application');
      WorkBook:=CreateOleObject('Excel.Sheet');
    except
      Application.MessageBox('No Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
      Exit;
    end;
    try
        WorkBook:=eclApp.workbooks.Add;
        for   i:=0   to   query1.fieldcount-1   do
        begin
            eclApp.Cells(1,i+1):=query1.fields[i].FieldName;
        end;

        query1.First;
        j:=2;
        while   not   query1.Eof   do
        begin
          for   i:=0   to  query1.fieldcount-1  do
          begin
            eclApp.Cells(j,i+1):=query1.Fields[i].Value;
          end;
        query1.Next;
        inc(j);
        end;
       eclapp.columns.autofit;
       eclApp.ActiveSheet.Columns[2].ColumnWidth := 50;
       eclApp.ActiveSheet.Columns[3].ColumnWidth := 50;
       showmessage('Succeed');
       eclApp.Visible:=True;

      except
        on   F:Exception   do
          showmessage(F.Message);
      end;
    end;

end;        }


procedure TCostingPriceList.BB1Click(Sender: TObject);//載入excel
var

  seasonNo,RowStart,j,n,eof:integer;
  flag:boolean;
  DesRange,MsExcel:olevariant;
  MsExcelWorkbook: Variant;
  Orderlist:TStringlist;
  UseDateInput: String;
  Validate: TDateTime;
begin

   BB2.Enabled:=true;
   BB3.Enabled:=true;

   //showmessage(inttostr(Pos('confirmed','2023/6/9 confirmed by Julia')));
   Label2.Caption:='Excel title finding';
   with UploadlQuery do
      begin
         active:=false;
         sql.Clear;
         sql.add('select * from CostingPriceList where 1=2');
         active:=true;
      end;
    Orderlist:=TStringList.Create;

  try
    MsExcel:=CreateOleObject('Excel.Application');   
  except
      on E:Exception do
      begin
        Application.MessageBox(PChar('NO EXCEL'+E.Message),'', MB_OK+MB_ICONWarning);
        EXIT;
      end;
  end;

 
  try
   if OpenDialog.Execute=true then
   begin
    MsExcelWorkBook := msExcel.Workbooks.Open(OpenDialog.FileName);
    j:=RowStart;
    RowStart:= j+1;
    Orderlist.Add(Excelfinding(j,msExcel,'Season'));//1
    Orderlist.Add(Excelfinding(j,msExcel,'Style_Number'));//2
    Orderlist.Add(Excelfinding(j,msExcel,'Round'));//3
    Orderlist.Add(Excelfinding(j,msExcel,'Style_Name'));//4
    Orderlist.Add(Excelfinding(j,msExcel,'Division'));//5
    Orderlist.Add(Excelfinding(j,msExcel,'Colorway'));//6
    Orderlist.Add(Excelfinding(j,msExcel,'Color_Code'));//7
    Orderlist.Add(Excelfinding(j,msExcel,'FOB'));//8
    Orderlist.Add(Excelfinding(j,msExcel,'mark'));//9
    j:=RowStart;
    n:=0;

    if varType(msExcel.WorkBooks[1].WorkSheets[1].Cells[j,1]) = varDispatch then
        flag:=true
    else
        begin
        flag:=false;
        showmessage('j='+inttostr(j));
        end;
    with UploadlQuery do
      begin
        cachedupdates:=true;
        requestlive:=true;
        UploadlQuery.edit;
        UploadlQuery.first;
      end;
      while(flag=true)  do
       begin     
         UploadlQuery.insert;
         msExcel.WorkBooks[1].WorkSheets[1].Cells(j,1):=vartostr(n+1);
         UploadQ('PricingSeason',TrimStr(j,msExcel,Orderlist[1]));
         UploadQ('SKU',TrimStr(j,msExcel,Orderlist[2]));
         UploadQ('Round',TrimStr(j,msExcel,Orderlist[3]));
         UploadQ('ModelDescription',TrimStr(j,msExcel,Orderlist[4]));
         UploadQ('UpperMatDetail',TrimStr(j,msExcel,Orderlist[5]));
         UploadQ('Colorway',TrimStr(j,msExcel,Orderlist[6]));
         UploadQ('Color_Code',TrimStr(j,msExcel,Orderlist[7]));
         UploadQ('FOB',TrimStr(j,msExcel,Orderlist[8]));
         UploadQ('mark',TrimStr(j,msExcel,Orderlist[9]));
         UseDateInput:=VartoStr(msExcel.WorkBooks[1].WorkSheets[1].Cells[j+1,strtoint(Orderlist[2])]);
         if (UseDateInput= '') then
            flag:=false;
         j:=j+1;
       end;
       Label2.Caption:='Excel data loading finish';
       j:=j-RowStart;

    UploadlQuery.First;
    if CheckBox1.Checked=true then
          showmessage('Start loading to screen/item:'+inttostr(j));
//showmessage('Start loading to screen/item:'+inttostr(n));
    Label2.Caption:='Excel update item:'+inttostr(j);
    MsExcel.ActiveWorkBook.Saved := True;
    MsExcelWorkBook.Close;   
    MsExcel.Quit;
    VarClear(MsExcel);
   end;
  except
      on E:Exception do
      begin
        //showmessage('123');
        Application.MessageBox(PChar('NO EXCEL'+E.Message),'', MB_OK);
        MsExcel.Quit;
        Exit;
      end;
  end;
end;

procedure TCostingPriceList.PageControl1Change(Sender: TObject);
var i: integer;
   sheet:TTabSheet;
begin
 for i:=0 to PageControl1.PageCount-1   do
      begin
         sheet:=PageControl1.Pages[i];
         if sheet=PageControl1.ActivePage   then
            sheet.Highlighted:=true
         else
            sheet.Highlighted:=false;
      end;
  if PageControl1.ActivePageIndex=0 then
      BA1.Click;
end;

procedure TCostingPriceList.BB2Click(Sender: TObject);
//var
// i:integer;
begin
  //label4.Visible:=false;
  //SeaEdit.Visible:=false;
    with UploadlQuery do
    begin
      first;
      while not eof do
      begin
      with ExistCheck do
          begin
            active:=false;
            sql.Clear;
            sql.Add(' select CostingPriceList.No,CostingPriceList.PricingSeason from CostingPriceList');
            sql.Add('   where SKU='''+UploadlQuery.fieldbyname('SKU').AsString+''' ');
            sql.Add('   and PricingSeason='''+UploadlQuery.fieldbyname('PricingSeason').AsString+'''');
            sql.Add('   and Remark like '''+UploadlQuery.fieldbyname('Remark').AsString+'%''');   
         if main.Edit2.Text='CDC' then
            begin
              if ComboBox1.ItemIndex=0 then
                begin
                  sql.add('and KFCQ=''JNG''');
                  sql.add('and KHDH=''036''');
                end
              else if ComboBox1.ItemIndex=1 then
                begin
                  sql.add('and KFCQ=''YQA''');
                  sql.add('and KHDH=''036''');
                end
            end
         else if main.Edit2.Text='VC1' then
            begin
              sql.add('and KFCQ=''FNS''');
              sql.add('and KHDH=''0079''');
            end;

            //showmessage(SQL.Text);
            active:=true;
            if eof then
            begin
              with Query_NO do
                begin
                  active:=false;
                  sql.Clear;
                  sql.Add('select MAX(No)+1 as No from CostingPriceList');
                  sql.Add('where CostingPriceList.PricingSeason = '''+UploadlQuery.fieldbyname('PricingSeason').AsString+'''');
                  //showmessage(SQL.Text);
                  active:=true;     
                  UploadlQuery.edit;
                  if (Query_NO.fieldbyname('No').AsString = '')then
                    UploadlQuery.fieldbyname('No').AsString:='1'
                  else
                    UploadlQuery.fieldbyname('No').AsString:=Query_NO.fieldbyname('No').AsString;
                end;
              active:=false;
              sql.Clear;
              sql.Add(' Insert INTO CostingPriceList  ');
              {sql.Add(' insert CostingPriceList  ((No,PricingSeason,SKU,ModelDescription,Remark,UpperMatDetail,CheckID,CheckDate,');
              sql.Add(' AvailableDate,AvailableBy,SendCTSDate,BYFOB,LYNFOB,IDFOB,Material,Labor,OH,SecondLabor,SecondOH,OtherAdject,');
              sql.Add(' ProfitRate,Profit,Freight,MoldCharge,Tooling,FH17KeptLabor,OutsoleAssembly,SocklinerByPrs,SpecialOffer,');
              sql.Add(' StrobelPrintingRemoveal,MMDeduction,MMAutoCutLectraSaving,HanyoungNetCut,AutoBuffingSaving,SupportFrictiontape,');
              sql.Add(' VolumeEfficiencyGain,RemovedNonBuffing,VolumeEfficiencyGainOverhead');
              sql.Add(') values (');                                                              }
              sql.Add('values (');
              sql.Add(' '''+UploadlQuery.fieldbyname('No').AsString+''',');
              sql.Add(' '''+UploadlQuery.fieldbyname('PricingSeason').AsString+''',');
              sql.Add(' '''+UploadlQuery.fieldbyname('SKU').AsString+''',');
              sql.Add(' '''+UploadlQuery.fieldbyname('ModelDescription').AsString+''',');
              sql.Add(' '''+UploadlQuery.fieldbyname('Remark').AsString+''',');
              sql.Add(' '''+UploadlQuery.fieldbyname('UpperMatDetail').AsString+''',');
              sql.Add(' '''+UploadlQuery.fieldbyname('CheckID').AsString+''',');
              sql.Add(' GETDATE() ,');
              sql.Add(' '''+UploadlQuery.fieldbyname('AvailableDate').AsString+''',');
              sql.Add(' '''+UploadlQuery.fieldbyname('AvailableBy').AsString+''',');
              sql.Add(' '''+UploadlQuery.fieldbyname('SendCTSDate').AsString+''',');
              //sql.Add(' '''+UploadlQuery.fieldbyname('BYFOB').AsString+''',');
              sql.Add(' '''+UploadlQuery.fieldbyname('FOB').AsString+''',');
              //sql.Add(' '''+UploadlQuery.fieldbyname('IDFOB').AsString+''',');
              sql.Add(' '''+UploadlQuery.fieldbyname('Material').AsString+''',');
              sql.Add(' '''+UploadlQuery.fieldbyname('Labor').AsString+''',');
              sql.Add(' '''+UploadlQuery.fieldbyname('C2B_RL').AsString+''',');
              sql.Add(' '''+UploadlQuery.fieldbyname('OH').AsString+''',');
              sql.Add(' '''+UploadlQuery.fieldbyname('SecondLabor').AsString+''',');
              sql.Add(' '''+UploadlQuery.fieldbyname('SecondL_RL').AsString+''',');
              sql.Add(' '''+UploadlQuery.fieldbyname('SecondOH').AsString+''',');
              sql.Add(' '''+UploadlQuery.fieldbyname('OtherAdject').AsString+''',');
              sql.Add(' '''+UploadlQuery.fieldbyname('ProfitRate').AsString+''',');
              sql.Add(' '''+UploadlQuery.fieldbyname('Profit').AsString+''',');
              sql.Add(' '''+UploadlQuery.fieldbyname('Freight').AsString+''',');
              sql.Add(' '''+UploadlQuery.fieldbyname('MoldCharge').AsString+''',');
              sql.Add(' '''+UploadlQuery.fieldbyname('Tooling').AsString+''',');
              sql.Add(' '''+UploadlQuery.fieldbyname('FH17KeptLabor').AsString+''',');
              sql.Add(' '''+UploadlQuery.fieldbyname('OutsoleAssembly').AsString+''',');
              sql.Add(' '''+UploadlQuery.fieldbyname('SocklinerByPrs').AsString+''',');
              sql.Add(' '''+UploadlQuery.fieldbyname('SpecialOffer').AsString+''',');
              sql.Add(' '''+UploadlQuery.fieldbyname('StrobelPrintingRemoveal').AsString+''',');
              sql.Add(' '''+UploadlQuery.fieldbyname('MMDeduction').AsString+''',');
              sql.Add(' '''+UploadlQuery.fieldbyname('MMAutoCutLectraSaving').AsString+''',');
              sql.Add(' '''+UploadlQuery.fieldbyname('HanyoungNetCut').AsString+''',');
              sql.Add(' '''+UploadlQuery.fieldbyname('AutoBuffingSaving').AsString+''',');
              sql.Add(' '''+UploadlQuery.fieldbyname('SupportFrictiontape').AsString+''',');
              sql.Add(' '''+UploadlQuery.fieldbyname('VolumeEfficiencyGain').AsString+''',');
              sql.Add(' '''+UploadlQuery.fieldbyname('RemovedNonBuffing').AsString+''',');
              sql.Add(' '''+UploadlQuery.fieldbyname('VolumeEfficiencyGainOverhead').AsString+''',');


         if ComboBox1.ItemIndex=0 then
            sql.add(' ''JNG'',')
         else if ComboBox1.ItemIndex=1 then
            sql.add(' ''YQA'',');
              sql.Add(' '''+UploadlQuery.fieldbyname('RecyclingUn_Cured_25S').AsString+''',');
              sql.Add(' '''+UploadlQuery.fieldbyname('RemoveSocklinerCement_25S').AsString+''',');
              sql.Add(' '''+UploadlQuery.fieldbyname('RSHConstructionOptimizat_25S').AsString+''',');
              sql.Add(' '''+UploadlQuery.fieldbyname('CBYWeightedCosting_25S').AsString+''',');
              sql.Add(' '''+UploadlQuery.fieldbyname('SeasonalColor_25S').AsString+''',');
              sql.Add(' '''+UploadlQuery.fieldbyname('OrtholiteSockliner_25S').AsString+''',');
              sql.Add(' '''+UploadlQuery.fieldbyname('InnerBox_25S').AsString+''',');
              sql.Add(' '''+UploadlQuery.fieldbyname('MOC_25S').AsString+''',');
              sql.Add(' '''+UploadlQuery.fieldbyname('Ckmesh_25S').AsString+''',');
              sql.Add(' '''+UploadlQuery.fieldbyname('SealTapeOIA_LK_25U').AsString+''',');
              sql.Add(' '''+UploadlQuery.fieldbyname('ShoelaceLength_25U').AsString+''',');
              sql.Add(' '''+UploadlQuery.fieldbyname('TissueOIA_LK_25U').AsString+'''');
         if main.Edit2.Text='CDC' then
            begin
              sql.add(',''036''')
            end
         else if main.Edit2.Text='VC1' then
            begin
            sql.add(',''0079''');     //Cariuma
            end;



              sql.Add(' ,'''+UploadlQuery.fieldbyname('CL98LaborPrecommit_25F').AsString+'''');
              sql.Add(' ,'''+UploadlQuery.fieldbyname('FY25_CostMitigation').AsString+'''');     
         if ComboBox1.ItemIndex=0 then
              sql.add(', ''LYN-9Z''')
         else if ComboBox1.ItemIndex=1 then
              sql.add(', ''LYI-6L''');

              sql.Add(')');
              //showmessage(SQL.Text);
              execsql;
            end
      else
            begin
                UploadlQuery.edit;
                UploadlQuery.FieldByName('No').value:=ExistCheck.fieldbyname('No').AsString;
                active:=true;
                sql.Clear;
                sql.Add(' update CostingPriceList set ');
                  //sql.Add('No='''+UploadlQuery.fieldbyname('No').AsString+''',');
                  //sql.Add('PricingSeason='''+UploadlQuery.fieldbyname('PricingSeason').AsString+''',');
                  sql.Add('SKU='''+UploadlQuery.fieldbyname('SKU').AsString+''',');
                  sql.Add('ModelDescription='''+UploadlQuery.fieldbyname('ModelDescription').AsString+''',');
                  //sql.Add('Remark='''+UploadlQuery.fieldbyname('Remark').AsString+' '',');
                  sql.Add('UpperMatDetail='''+UploadlQuery.fieldbyname('UpperMatDetail').AsString+''',');
                  if (UploadlQuery.fieldbyname('CheckID').AsString='51295') or (UploadlQuery.fieldbyname('CheckID').AsString='51267') then
                  else
                   begin
                      sql.Add('CheckID='''+UploadlQuery.fieldbyname('CheckID').AsString+''',');
                    end;      
                  sql.Add('CheckDate=GETDATE() ,');
                  sql.Add('AvailableDate='''+UploadlQuery.fieldbyname('AvailableDate').AsString+''',');
                  sql.Add('AvailableBy='''+UploadlQuery.fieldbyname('AvailableBy').AsString+''',');
                  sql.Add('SendCTSDate='''+UploadlQuery.fieldbyname('SendCTSDate').AsString+''',');
                  //sql.Add('BYFOB='''+UploadlQuery.fieldbyname('BYFOB').AsString+''',');
                  sql.Add('FOB='''+UploadlQuery.fieldbyname('FOB').AsString+''',');
                  //sql.Add('IDFOB='''+UploadlQuery.fieldbyname('IDFOB').AsString+''',');
                  sql.Add('Material='''+UploadlQuery.fieldbyname('Material').AsString+''',');
                  sql.Add('Labor='''+UploadlQuery.fieldbyname('Labor').AsString+''',');
                  sql.Add('C2B_RL='''+UploadlQuery.fieldbyname('C2B_RL').AsString+''',');
                  sql.Add('OH='''+UploadlQuery.fieldbyname('OH').AsString+''',');
                  sql.Add('SecondLabor='''+UploadlQuery.fieldbyname('SecondLabor').AsString+''',');
                  sql.Add('SecondL_RL='''+UploadlQuery.fieldbyname('SecondL_RL').AsString+''',');
                  sql.Add('SecondOH='''+UploadlQuery.fieldbyname('SecondOH').AsString+''',');
                  sql.Add('OtherAdject='''+UploadlQuery.fieldbyname('OtherAdject').AsString+''',');
                  sql.Add('ProfitRate='''+UploadlQuery.fieldbyname('ProfitRate').AsString+''',');
                  sql.Add('Profit='''+UploadlQuery.fieldbyname('Profit').AsString+''',');
                  sql.Add('Freight='''+UploadlQuery.fieldbyname('Freight').AsString+''',');
                  sql.Add('MoldCharge='''+UploadlQuery.fieldbyname('MoldCharge').AsString+''',');
                  sql.Add('Tooling='''+UploadlQuery.fieldbyname('Tooling').AsString+''',');
                  sql.Add('FH17KeptLabor='''+UploadlQuery.fieldbyname('FH17KeptLabor').AsString+''',');
                  sql.Add('OutsoleAssembly='''+UploadlQuery.fieldbyname('OutsoleAssembly').AsString+''',');
                  sql.Add('SocklinerByPrs='''+UploadlQuery.fieldbyname('SocklinerByPrs').AsString+''',');
                  sql.Add('SpecialOffer='''+UploadlQuery.fieldbyname('SpecialOffer').AsString+''',');
                  sql.Add('StrobelPrintingRemoveal='''+UploadlQuery.fieldbyname('StrobelPrintingRemoveal').AsString+''',');
                  sql.Add('MMDeduction='''+UploadlQuery.fieldbyname('MMDeduction').AsString+''',');
                  sql.Add('MMAutoCutLectraSaving='''+UploadlQuery.fieldbyname('MMAutoCutLectraSaving').AsString+''',');
                  sql.Add('HanyoungNetCut='''+UploadlQuery.fieldbyname('HanyoungNetCut').AsString+''',');
                  sql.Add('AutoBuffingSaving='''+UploadlQuery.fieldbyname('AutoBuffingSaving').AsString+''',');
                  sql.Add('SupportFrictiontape='''+UploadlQuery.fieldbyname('SupportFrictiontape').AsString+''',');
                  sql.Add('VolumeEfficiencyGain='''+UploadlQuery.fieldbyname('VolumeEfficiencyGain').AsString+''',');   
                  sql.Add('RemovedNonBuffing='''+UploadlQuery.fieldbyname('RemovedNonBuffing').AsString+''',');

                  sql.Add('RecyclingUn_Cured_25S='''+UploadlQuery.fieldbyname('RecyclingUn_Cured_25S').AsString+''',');
                  sql.Add('RemoveSocklinerCement_25S='''+UploadlQuery.fieldbyname('RemoveSocklinerCement_25S').AsString+''',');
                  sql.Add('RSHConstructionOptimizat_25S='''+UploadlQuery.fieldbyname('RSHConstructionOptimizat_25S').AsString+''',');
                  sql.Add('CBYWeightedCosting_25S='''+UploadlQuery.fieldbyname('CBYWeightedCosting_25S').AsString+''',');
                  sql.Add('SeasonalColor_25S='''+UploadlQuery.fieldbyname('SeasonalColor_25S').AsString+''',');
                  sql.Add('OrtholiteSockliner_25S='''+UploadlQuery.fieldbyname('OrtholiteSockliner_25S').AsString+''',');
                  sql.Add('InnerBox_25S='''+UploadlQuery.fieldbyname('InnerBox_25S').AsString+''',');
                  sql.Add('MOC_25S='''+UploadlQuery.fieldbyname('MOC_25S').AsString+''',');
                  sql.Add('Ckmesh_25S='''+UploadlQuery.fieldbyname('Ckmesh_25S').AsString+''',');
                  sql.Add('VolumeEfficiencyGainOverhead='''+UploadlQuery.fieldbyname('VolumeEfficiencyGainOverhead').AsString+''',');
                  sql.Add('SealTapeOIA_LK_25U='''+UploadlQuery.fieldbyname('SealTapeOIA_LK_25U').AsString+''',');
                  sql.Add('ShoelaceLength_25U='''+UploadlQuery.fieldbyname('ShoelaceLength_25U').AsString+''',');
                  sql.Add('TissueOIA_LK_25U='''+UploadlQuery.fieldbyname('TissueOIA_LK_25U').AsString+''',');
                  sql.Add('CL98LaborPrecommit_25F='''+UploadlQuery.fieldbyname('CL98LaborPrecommit_25F').AsString+'''');
                  sql.Add(','+'FY25_CostMitigation='''+UploadlQuery.fieldbyname('FY25_CostMitigation').AsString+'''');
                  if ComboBox1.ItemIndex=0 then
                    sql.add(', Factory=''LYN-9Z''')
                  else if ComboBox1.ItemIndex=1 then
                    sql.add(', Factory=''LYI-6L''');
                  sql.Add('where  ');
                  sql.Add('No='''+UploadlQuery.fieldbyname('No').AsString+''' and ');
                  sql.Add('PricingSeason='''+UploadlQuery.fieldbyname('PricingSeason').AsString+'''');
                  sql.Add('   and Remark like '''+UploadlQuery.fieldbyname('Remark').AsString+'%''');    
                  if ComboBox1.ItemIndex=0 then
                    sql.add('and KFCQ=''JNG''')
                  else if ComboBox1.ItemIndex=1 then
                    sql.add('and KFCQ=''YQA''');

                  if main.Edit2.Text='CDC' then
                    sql.add('and KHDH=''036''')
                  else if main.Edit2.Text='VC1' then
                    sql.add('and KHDH=''0079''');//Cariuma


                execsql;
            end;
        end;
        Next;
      end;   //while
      active:=false;
    end;     //UploadlQuery
    ExistCheck.active:=false;
    Query_NO.active:=false;
end;


procedure TCostingPriceList.BA7Click(Sender: TObject);
begin
  close();
end;

procedure TCostingPriceList.BB4Click(Sender: TObject);
begin
  close();
end;

procedure TCostingPriceList.BitBtn1Click(Sender: TObject);
var   eclApp,WorkBook,Worksheet:olevariant;
      i,j:integer;
      segment,Gender:string;
      CostingSize:Double;
      Range: OLEVariant;
begin
  if  query2.active  then
    begin
    try
      eclApp:=CreateOleObject('Excel.Application');
      WorkBook:=CreateOleObject('Excel.Sheet');
    except
      Application.MessageBox('No Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
      Exit;
    end;
    try
        WorkBook:=eclApp.workbooks.Add;

        eclApp.Cells(1,1):='Converse Final Price List-FOB for '+query2.fieldbyname('PricingSeason').Value+' Season';
        if ComboBox1.ItemIndex=0 then
            eclApp.Cells(2,5):='FTY:LYN';
         if ComboBox1.ItemIndex=1 then
            eclApp.Cells(2,5):='FTY:LYI';
        eclApp.Cells(2,1):=query2.fieldbyname('PricingSeason').Value+' exchange rate USD:RMB:VND=1:XXX:XXX';
        eclApp.Cells(3,1):='NO';
        eclApp.Cells(3,2):='ModelName';
        eclApp.Cells(3,3):='Color';
        eclApp.Cells(3,4):='SR#';
        eclApp.Cells(3,5):='SKU#';
        eclApp.Cells(3,6):='Pricing Season';
        eclApp.Cells(3,7):='Category';
        eclApp.Cells(3,8):='Gender';
        eclApp.Cells(3,9):='Upper Main Material';
        eclApp.Cells(3,10):='FOB';
        eclApp.Cells(3,11):='Material $';
        eclApp.Cells(3,12):='Labor_C2B';
        eclApp.Cells(3,13):='C2B Real Labor for production line';  // 13
        eclApp.Cells(3,14):='2nd Labor';
        eclApp.Cells(3,15):='SecondLabor Real Labor ';
        eclApp.Cells(3,16):='OH $';
        eclApp.Cells(3,17):='2nd OH $';
        eclApp.Cells(3,18):='Other Adject';
        eclApp.Cells(3,19):='Profit Rate';
        eclApp.Cells(3,20):='Profit $';
        eclApp.Cells(3,21):='Freight $';
        eclApp.Cells(3,22):='Prod.Type';
        eclApp.Cells(3,23):='Model Description';
        eclApp.Cells(3,24):='Mold Charge';
        eclApp.Cells(3,25):='Tooling';
        eclApp.Cells(3,26):='Available Date';//  25
        eclApp.Cells(3,27):='Send CTS Date';//
        eclApp.Cells(3,28):='Remark';
        eclApp.Cells(3,29):='Planning_Level_2';

        eclApp.Cells(3,30):='TSP';
        eclApp.Cells(3,31):='面刀模號';
        eclApp.Cells(3,32):='CostingSize';
        eclApp.Cells(3,33):='SampleSize';  
        eclApp.Cells(3,34):='BOM TecLevel';
        eclApp.Cells(3,35):='Linesheet TecLevel';
        eclApp.Cells(3,36):='POH';
        eclApp.Cells(3,37):='Pairs';
        eclApp.Cells(3,38):='Season times';


        eclApp.Cells(3,40):='FH17 kept Labor';   //others
        eclApp.Cells(3,41):='Outsole assembly ';
        eclApp.Cells(3,42):='Sockliner by Prs in Labor';
        eclApp.Cells(3,43):='Special offer $';
        eclApp.Cells(3,44):='Strobel printing removeal';
        eclApp.Cells(3,45):='MM deduction$';
        eclApp.Cells(3,46):='MM Auto Cut-Lectra Saving';
        eclApp.Cells(3,47):='Hanyoung net cut';
        eclApp.Cells(3,48):='Auto buffing saving -$0.005 for TD-009 & TD009TR';
        eclApp.Cells(3,49):='Support Friction tape adhesive change -0.03/prs';
        eclApp.Cells(3,50):='Volume efficiency gain';
        eclApp.Cells(3,51):='Removed non buffing -$0.08';
        eclApp.Cells(3,52):='Volume efficiency gain_OH';
        eclApp.Cells(3,53):='25S_Recycling Un-Cured Scraps --CT-219: -0.0349 --TD-009: -0.0172';
        eclApp.Cells(3,54):='25S_Remove Cement on Sockliner -0.01';
        eclApp.Cells(3,55):='25S_RSH Construction Optimization--pattern chanage & Labor Saving ';
        eclApp.Cells(3,56):='25S_CBY - Weighted Costing Update--refer to CBD ';
        eclApp.Cells(3,57):='25S_New Seasonal Color - CTAS Price Reduction 1G:-$0.872 for Hi ,-$0.968 for Ox 3G:-$0.975 for Hi, -$1.044 for Ox 7G:-$0.535 for Hi,-$0.622 for Ox';
        eclApp.Cells(3,58):='25S_Ortholite Sockliner(Price difference between FH24 vs SP25, -$0.03/pr)';
        eclApp.Cells(3,59):='25S_Inner Box (PBX-30762 & PBX-31485 Price difference between FH24 vs SP25, -$0.0092/pr)';
        eclApp.Cells(3,60):='25S_MOC(PBX-22970 Outer Carton, Price difference between FH24 VS SS25, -2.5%)';
        eclApp.Cells(3,61):='25S_CK mesh(Reduce -$0.02/Y)';
        eclApp.Cells(3,62):='25U_Seal Tape(OIA$0.0087- Liankai $0.0082/pr)';
        eclApp.Cells(3,63):='25U_Reduce Shoelace Length';
        eclApp.Cells(3,64):='25U_Tissue(OIA $0.0168 - Liankai $0.0155/pcs)';
        eclApp.Cells(3,65):='CL98 Labor efficiency pre-commit  -$0.22/pr from FA25';
        eclApp.Cells(3,66):='FY25 Cost mitigation';




        //eclApp.Cells(4,44):='=COUNTIFS($E$4:E4,E4)';
        //eclApp.Cells(4,45):='=COUNTIFS($E$4:E4,E4,$F$4:F4,F4)';
        //eclApp.Cells(4,46):='=IF(AR4=1,SUMIFS(AQ:AQ,E:E,E4,AS:AS,1),0)';
        query2.requestlive:=True;
        query2.cachedupdates:=True;
        query2.edit;
        query2.First;
        j:=4;
        while   not   query2.Eof   do
          begin
            if query2.FieldByName('GENDER').Value <> null then
                Gender:=query2.FieldByName('GENDER').Value;
            if query2.FieldByName('segment').Value <> null then
                segment:=query2.FieldByName('segment').Value;

            if(((segment='')or (segment = null) )
                  or ((Gender<>'U') and (Gender<>'W') and (Gender<>'M') and (Gender<>'K') and (Gender<>'J') and (Gender<>'Y') and (Gender<>'N') and (Gender<>'C') and (Gender<>'X'))) then
                  //showmessage('Cant find size Grading;segment='''+segment+''';Gender='''+Gender+'''')
            else
              begin    //    showmessage('Finded segment='+segment+'Gender='+Gender);
                if segment<>'Converse Cons' then
                  case  Gender[1] of
        'M':
          CostingSize:=10;
        'U':
          CostingSize:=7.5;
        'W':
          CostingSize:=8;
        'K':
          CostingSize:=5.5;
        'J':
          CostingSize:=3;
        'Y':
          CostingSize:=2;
        'N':
          CostingSize:=8;
        'C':
          CostingSize:=3;
        'X':
          CostingSize:=0; //無使用
        else
          //showmessage('CostingSize not found,segment='''+segment+''';Gender='''+Gender+'''');
      end
    else
      case  Gender[1] of
        'M':
          CostingSize:=10;
        'U':
          CostingSize:=9;
        'W':
          CostingSize:=8;
        'K':
          CostingSize:=5.5;
        'J':
          CostingSize:=3;
        'Y':
          CostingSize:=1.5;
        'N':
          CostingSize:=9;
        'C':
          CostingSize:=0;//無使用
        'X':
          CostingSize:=0; //無使用
        else
          //showmessage('CostingSize not found,segment='''+segment+''';Gender='''+Gender+'''');
      end;
      end;
      query2.edit;
      query2.FieldByName('segment').Value:=vartostr(CostingSize);
      //showmessage('輸入EXCEL資料');
      //修改為報價馬      
            for   i:=0   to  query2.fieldcount-1  do
            begin
            if i=7 then     //Gender
                if query2.Fields[i].Value='N' then
                      eclApp.Cells(j,i+1):='I'
                else
                     eclApp.Cells(j,i+1):=query2.Fields[i].Value

            else if i<12 then
                eclApp.Cells(j,i+1):=query2.Fields[i].Value
            else if i=18 then
              if (query2.Fields[i].AsString = '')  then          //profit 百分比
                eclApp.Cells(j,i+1):='0'
              else
                eclApp.Cells(j,i+1):='='+query2.Fields[i].AsString+'/100'

            else if i=32 then   //SEGMENT
                eclApp.Cells(j,i):=query2.Fields[i].Value
            else if i=33 then   //SAMPLE SIZE
                eclApp.Cells(j,i):=query2.Fields[i].Value
            else if i=34 then   //BOM TL
                eclApp.Cells(j,i):=query2.Fields[i].Value
            else if i=35 then   //CTS TL
                eclApp.Cells(j,i):=query2.Fields[i].Value
            else if i=36 then  //薪資
              if (strtoint(copy(query2.Fields[5].AsString,1,2))<25) then
                eclApp.Cells(j,i):='=IF(M'+Inttostr(j)+'>0,'+query2.Fields[i].AsString+'/26/8/M'+Inttostr(j)+',"")'
              else if (query2.Fields[i].AsString='') then
                begin
                  showmessage('No '+query2.Fields[5].AsString+' salary cost, pls fill it in N384');
                  exit;
                end
              else
                eclApp.Cells(j,i):='=IF(M'+Inttostr(j)+'>0,'+query2.Fields[i].AsString+'/M'+Inttostr(j)+',"")'
            else if i=37 then  //訂單雙數
              begin
                eclApp.Cells(j,i):=query2.Fields[i].Value;
                eclApp.Cells(j,i+1):='=COUNTIFS($E$4:E'+Inttostr(j)+',E'+Inttostr(j)+',$F$4:F'+Inttostr(j)+',F'+Inttostr(j)+')';  //COUNTIFS($E$4:E4,E4,$F$4:F4,F4)';
                eclApp.Cells(j,i+2):='=IF(AL'+Inttostr(j)+'=1,SUMIFS(AK:AK,E:E,E'+Inttostr(j)+',AL:AL,1,F:F,F'+Inttostr(j)+'),0)'; //=IF(AQ4=1,SUMIFS(AP:AP,E:E,E4,AR:AR,1),0)';
              end
            else if i=25 then
                eclApp.Cells(j,i+1):=query2.Fields[i].AsString +' confirmed by '+ query2.Fields[i+1].Value
            else if i>37 then
                eclApp.Cells(j,i+2):=query2.Fields[i].Value
            else if i>26 then
                eclApp.Cells(j,i):=query2.Fields[i].Value
            else if i<>26 then
              eclApp.Cells(j,i+1):=query2.Fields[i].Value;
            end;
            {for   i:=0   to  query2.fieldcount-1  do
            begin
            if i=7 then     //Gender
                if query2.Fields[i].Value='N' then
                      eclApp.Cells(j,i+1):='I'
                else
                     eclApp.Cells(j,i+1):=query2.Fields[i].Value

            else if i<12 then
                eclApp.Cells(j,i+1):=query2.Fields[i].Value
            else if i=12 then
              begin
                eclApp.Cells(j,i+1):='='+query2.Fields[34].AsString+'/(2.51/(L'+Inttostr(j)+'))+BN'+Inttostr(j)+'';
                //eclApp.Cells(j,i+1):='=L'+Inttostr(j)+'+(R'+Inttostr(j)+'*0.3/(1+S'+Inttostr(j)+'))';
                eclApp.Cells(j,i+2):=query2.Fields[i].Value;
                eclApp.Cells(j,i+3):='='+query2.Fields[34].AsString+'/(2.51/(N'+Inttostr(j)+'))';
                //eclApp.Cells(j,i+3):='=N'+Inttostr(j)+'+(R'+Inttostr(j)+'*0.7/(1+S'+Inttostr(j)+'))';
              end
            else if i=16 then
              if (query2.Fields[i].AsString = '')  then          //profit 百分比
                eclApp.Cells(j,i+3):='0'
              else
                eclApp.Cells(j,i+3):='='+query2.Fields[i].AsString+'/100'

            else if i=30 then   //SEGMENT
                eclApp.Cells(j,i+2):=query2.Fields[i].Value
            else if i=31 then   //SAMPLE SIZE
                eclApp.Cells(j,i+2):=query2.Fields[i].Value
            else if i=32 then   //BOM TL
                eclApp.Cells(j,i+2):=query2.Fields[i].Value
            else if i=33 then   //CTS TL
                eclApp.Cells(j,i+2):=query2.Fields[i].Value
            else if i=34 then  //薪資
              if (strtoint(copy(query2.Fields[5].AsString,1,2))<25) then
                eclApp.Cells(j,i+2):='=IF(M'+Inttostr(j)+'>0,'+query2.Fields[i].AsString+'/26/8/M'+Inttostr(j)+',"")'
              else if (query2.Fields[i].AsString='') then
                begin
                  showmessage('No '+query2.Fields[5].AsString+' salary cost, pls fill it in N384');
                  exit;
                end
              else
                eclApp.Cells(j,i+2):='=IF(M'+Inttostr(j)+'>0,'+query2.Fields[i].AsString+'/M'+Inttostr(j)+',"")'
            else if i=35 then  //訂單雙數
              begin
                eclApp.Cells(j,i+2):=query2.Fields[i].Value;
                eclApp.Cells(j,i+3):='=COUNTIFS($E$4:E'+Inttostr(j)+',E'+Inttostr(j)+',$F$4:F'+Inttostr(j)+',F'+Inttostr(j)+')';  //COUNTIFS($E$4:E4,E4,$F$4:F4,F4)';
                eclApp.Cells(j,i+4):='=IF(AL'+Inttostr(j)+'=1,SUMIFS(AK:AK,E:E,E'+Inttostr(j)+',AL:AL,1,F:F,F'+Inttostr(j)+'),0)'; //=IF(AQ4=1,SUMIFS(AP:AP,E:E,E4,AR:AR,1),0)';
              end
            else if i=23 then
                eclApp.Cells(j,i+3):=query2.Fields[i].AsString +' confirmed by '+ query2.Fields[i+1].Value
            else if i>35 then
                eclApp.Cells(j,i+4):=query2.Fields[i].Value
            else if i>24 then
                eclApp.Cells(j,i+2):=query2.Fields[i].Value
            else if i<>24 then
              eclApp.Cells(j,i+3):=query2.Fields[i].Value;
            end;    }
          query2.Next;
          inc(j);
          end;
      eclApp.Cells(3,39):='=SUBTOTAL(9,AM4:AM'+Inttostr(j-1)+')';

      eclapp.columns.autofit;
      eclapp.columns.Font.Name := 'Calibri';
      eclApp.ActiveSheet.Rows [1].Font.Bold := True;
      eclApp.ActiveSheet.Rows [1].Font.Italic := True;
      //eclApp.ActiveSheet.PageSetup.Zoom := 60;
      eclApp.ActiveSheet.Rows [1].Font.Size:=30;
      eclApp.ActiveSheet.Rows [1].RowHeight := 36;
      eclApp.ActiveSheet.Rows [2].Font.Bold := True;
      eclApp.ActiveSheet.Range['A3:BN3'].Interior.ColorIndex := 6;
      eclApp.ActiveSheet.Range['A3:BN'+inttostr(j-1)].Borders.Linestyle := 1;
      eclApp.ActiveSheet.Range['A3:BN'+inttostr(j-1)].Borders.Weight := 2;
      eclApp.ActiveSheet.Range['A3:BN'+inttostr(j-1)].RowHeight:= 15;
      eclApp.ActiveSheet.Range['AN4:BN'+inttostr(j-1)].Interior.ColorIndex := 43;
      eclApp.ActiveSheet.Columns['AN:BN'].ColumnWidth := 7;
      eclApp.ActiveSheet.Range['AL4:BN'+inttostr(j-1)].NumberFormatLocal := '_-* #,##0.0000_-;-* #,##0.0000_-;_-* ""-""??_-;_-@_-';
      eclApp.ActiveSheet.Columns[1].ColumnWidth := 4;
      eclApp.ActiveSheet.Columns[2].ColumnWidth := 10;
      eclApp.ActiveSheet.Range['B4:B'+inttostr(j-1)].Interior.ColorIndex := 15;
      eclApp.ActiveSheet.Columns[3].ColumnWidth := 7;
      eclApp.ActiveSheet.Range['C4:C'+inttostr(j-1)].Interior.ColorIndex := 15;
      eclApp.ActiveSheet.Columns[4].ColumnWidth := 20;     //SR
      eclApp.ActiveSheet.Range['D4:D'+inttostr(j-1)].Interior.ColorIndex := 15;
      eclApp.ActiveSheet.Columns[5].ColumnWidth := 8;      //SKU
      eclApp.ActiveSheet.Columns[6].ColumnWidth := 7;      //Pricing Season
      eclApp.ActiveSheet.Columns[7].ColumnWidth := 7;      //Category
      eclApp.ActiveSheet.Range['G4:G'+inttostr(j-1)].Interior.ColorIndex := 15;
      eclApp.ActiveSheet.Columns[8].ColumnWidth := 7;      //Gender
      eclApp.ActiveSheet.Range['H4:H'+inttostr(j-1)].Interior.ColorIndex := 15;
      eclApp.ActiveSheet.Range['I4:I'+inttostr(j-1)].Interior.ColorIndex := 45;
      eclApp.ActiveSheet.Range['V4:V'+inttostr(j-1)].Interior.ColorIndex := 45;
      eclApp.ActiveSheet.Range['AA4:AB'+inttostr(j-1)].Interior.ColorIndex := 45;
      eclApp.ActiveSheet.Columns[9].ColumnWidth := 8;      //Upper Main Material
      eclApp.ActiveSheet.Range['K4:T'+inttostr(j-1)].Interior.ColorIndex := 43;   //數字類顏色
      eclApp.ActiveSheet.Columns[10].ColumnWidth := 7;     //FOB
      eclApp.ActiveSheet.Columns[11].ColumnWidth := 8;
      eclApp.ActiveSheet.Columns[12].ColumnWidth := 7;
      eclApp.ActiveSheet.Columns[13].ColumnWidth := 7;
      eclApp.ActiveSheet.Range['M4:M'+inttostr(j-1)].Interior.ColorIndex := 15;
      eclApp.ActiveSheet.Columns[15].ColumnWidth := 7;  
      eclApp.ActiveSheet.Range['O4:O'+inttostr(j-1)].Interior.ColorIndex := 15;
      eclApp.ActiveSheet.Columns[16].ColumnWidth := 8;    //2nd L
      eclApp.ActiveSheet.Range['S4:S'+inttostr(j-1)].Style := 'Percent';
      eclApp.ActiveSheet.Range['S4:S'+inttostr(j-1)].NumberFormatLocal := '0.0%';
      eclApp.ActiveSheet.Columns[17].ColumnWidth := 8;    //2nd O
      eclApp.ActiveSheet.Columns[18].ColumnWidth := 8;
      eclApp.ActiveSheet.Columns[19].ColumnWidth := 10;    //Prod.Type
      eclApp.ActiveSheet.Range['V4:V'+inttostr(j-1)].Interior.ColorIndex := 15;
      eclApp.ActiveSheet.Columns[20].ColumnWidth := 10;
      eclApp.ActiveSheet.Columns[21].ColumnWidth := 7;
      eclApp.ActiveSheet.Columns[23].ColumnWidth := 17;     //Model Description
      eclApp.ActiveSheet.Columns[24].ColumnWidth := 9;     //Mold Charge
      eclApp.ActiveSheet.Range['X4:X'+inttostr(j-1)].Interior.ColorIndex := 38;
      eclApp.ActiveSheet.Columns[25].ColumnWidth := 7;     //Tooling
      eclApp.ActiveSheet.Range['Y4:Y'+inttostr(j-1)].Interior.ColorIndex := 38;
      eclApp.ActiveSheet.Columns[26].ColumnWidth := 29;    //Available Date
      eclApp.ActiveSheet.Columns[27].ColumnWidth := 10;
      eclApp.ActiveSheet.Columns[28].ColumnWidth := 22;    //Remark
      eclApp.ActiveSheet.Range['AC4:AM'+inttostr(j-1)].Interior.ColorIndex := 15;
      eclApp.ActiveSheet.Columns[29].ColumnWidth := 18;     //level 2
      eclApp.ActiveSheet.Columns[30].ColumnWidth := 7;
      eclApp.ActiveSheet.Columns[31].ColumnWidth := 13;
      eclApp.ActiveSheet.Columns[32].ColumnWidth := 7;
      eclApp.ActiveSheet.Columns[33].ColumnWidth := 7;
      eclApp.ActiveSheet.Columns[34].ColumnWidth := 7;
      eclApp.ActiveSheet.Columns[35].ColumnWidth := 7;
      eclApp.ActiveSheet.Columns[36].ColumnWidth := 7;
      eclApp.ActiveSheet.Columns[37].ColumnWidth := 10;
      eclApp.ActiveSheet.Columns[38].ColumnWidth := 0;
      eclApp.ActiveSheet.Columns[39].ColumnWidth := 10;
      {eclApp.ActiveSheet.Columns[41].ColumnWidth := 7;
      eclApp.ActiveSheet.Columns[42].ColumnWidth := 7;
      eclApp.ActiveSheet.Columns[41].ColumnWidth := 7;
      eclApp.ActiveSheet.Columns[42].ColumnWidth := 7;
      eclApp.ActiveSheet.Columns[43].ColumnWidth := 7;
      eclApp.ActiveSheet.Columns[44].ColumnWidth := 7;
      eclApp.ActiveSheet.Columns[45].ColumnWidth := 7;
      eclApp.ActiveSheet.Columns[46].ColumnWidth := 7;
      eclApp.ActiveSheet.Columns[47].ColumnWidth := 7;
      eclApp.ActiveSheet.Columns[48].ColumnWidth := 7;
      eclApp.ActiveSheet.Columns[49].ColumnWidth := 7;
      eclApp.ActiveSheet.Columns[50].ColumnWidth := 7;}
      //eclApp.ActiveSheet.Range['K4:k'+inttostr(j-1)].NumberFormatLocal := '_-* #,##0.00_-;-* #,##0.00_-;_-* ""-""??_-;_-@_-';
      eclApp.ActiveSheet.Range['K4:R'+inttostr(j-1)].NumberFormatLocal := '_-* #,##0.0000_-;-* #,##0.0000_-;_-* ""-""??_-;_-@_-';
      eclApp.ActiveSheet.Range['T4:U'+inttostr(j-1)].NumberFormatLocal := '_-* #,##0.0000_-;-* #,##0.0000_-;_-* ""-""??_-;_-@_-';
      eclApp.ActiveSheet.Range['X4:Y'+inttostr(j-1)].NumberFormatLocal := '_-* #,##0.00_-;-* #,##0.00_-;_-* ""-""??_-;_-@_-';
      eclApp.ActiveSheet.Range['AS4:AS'+inttostr(j-1)].Style := 'Comma';
      eclApp.ActiveSheet.Range['AK3:AM'+inttostr(j-1)].NumberFormatLocal := '_-* #,##0_-;-* #,##0_-;_-* ""-""??_-;_-@_-';
      eclApp.ActiveSheet.Range['AF4:AG'+inttostr(j-1)].NumberFormatLocal := '_-* #,##0.0_-;-* #,##0.0_-;_-* ""-""??_-;_-@_-';
      eclApp.ActiveSheet.Range['AJ4:AJ'+inttostr(j-1)].NumberFormatLocal := '_-* #,##0.00_-;-* #,##0.00_-;_-* ""-""??_-;_-@_-';
      eclApp.ActiveSheet.Range['AD4:AD'+inttostr(j-1)].NumberFormatLocal := '_-* #,##0.00_-;-* #,##0.00_-;_-* ""-""??_-;_-@_-';
      //eclApp.WorkBooks[1].WorkSheets[2].delete;    //部分電腦創建沒有分頁2/3會當機
      //eclApp.WorkBooks[1].WorkSheets[2].delete;
      //eclApp.WorkBooks[1].Saveas('Converse Final Price List for '+query2.fieldbyname('PricingSeason').Value);

      showmessage('Succeed');
       eclApp.Visible:=True;
      except
        on   F:Exception   do
          showmessage(F.Message+'item'+inttoStr(i));
      end;   //try
    end;    //if
end;

procedure TCostingPriceList.DBGridEh1Columns1UpdateData(Sender: TObject;
  var Text: String; var Value: Variant; var UseText, Handled: Boolean);
  var ttt: String;
begin
ttt:= Text;
//showmessage(ttt);
    if (Pos(copy(ttt,1,1),'0123456789') = 0) or(Pos(copy(ttt,2,1),'0123456789') = 0) or (Pos(copy(ttt,3,1),'SUFH') = 0) or (Length(ttt)<> 3) then
          showmessage('Season type error. EX:24U');
end;

procedure TCostingPriceList.BitBtn2Click(Sender: TObject);
begin
        with query2 do
          begin
            active:=false;
            SQL.clear;
            //SQL.add('Select A.*,DDZL.Pairs,DDZL.PreviousSeason,DDZL_PreviousSeason.Pairs,PreviousSeasonCFM.SKU AS PreviousSeasonCFM from (');


            if (Edit7.text = 'CBY') then //CBY
              SQL.add('Select A.*,DDZL.Pairs')
            else
              begin
              SQL.add('Select A.*');
              SQL.add(',case when DDZL_PreviousSeason.Pairs is null then DDZL.Pairs');
              SQL.add('when (PreviousSeasonCFM.SKU is null and DDZL.Pairs is null)then DDZL_PreviousSeason.Pairs  ');
              SQL.add('when PreviousSeasonCFM.SKU is null then DDZL.Pairs+DDZL_PreviousSeason.Pairs ');
              SQL.add('else DDZL.Pairs end as Pairs');
              end;
            //SQL.add(',DDZL.Pairs,PreviousSeason.PreviousSeason,DDZL_PreviousSeason.Pairs,PreviousSeasonCFM.SKU AS PreviousSeasonCFM ');
            SQL.add('from (');
            SQL.add('Select CostingPriceList.No,Max(KFXXZL.XieMing)as XieMing, max(KFXXZL.YSSM)as YSSM,  ');
            SQL.add('      Max(KFXXZL.DEVCODE)as DEVCODE, CostingPriceList.SKU,   ');
            SQL.add('      CostingPriceList.PricingSeason, SUBSTRING(Max(KFXXZL.DEVCODE),8,2) as Category,  ');
            SQL.add('      SUBSTRING(Max(KFXXZL.DEVCODE),13,1)as GENDER,CostingPriceList.UpperMatDetail,FOB,C2B_RL,SecondL_RL,');
            SQL.add('      Material,Labor,OH,SecondLabor,SecondOH,OtherAdject,ProfitRate,Profit,Freight,     ');
            SQL.add('      Max(LBZLS.YWSM )as ProductionType,ModelDescription,MoldCharge,CostingPriceList.Tooling,   ');
            SQL.add('      AvailableDate,AvailableBy,SendCTSDate,CostingPriceList.Remark,     ');
            SQL.add('      CostingPriceList.FH17KeptLabor,OutsoleAssembly,SocklinerByPrs,SpecialOffer,StrobelPrintingRemoveal,     ');
            SQL.add('      MMDeduction,MMAutoCutLectraSaving,HanyoungNetCut,AutoBuffingSaving,     ');
            SQL.add('      SupportFrictiontape,VolumeEfficiencyGain,RemovedNonBuffing,VolumeEfficiencyGainOverhead,Max(XXZL.DAOMH) as DAOMH,');
            SQL.add('      Max(xxzlkf.Planning_Level_2) as Planning_Level_2');
            SQL.add('      ,Max(xxzlkf.TSP) as TSP ,Max(Costing_Salary.Salary) as  Salary');
            SQL.add('      ,Max(xxzlkf.segment) as segment,MAX(XXZL.BZCC) as SampleSize');
            SQL.add('      ,RecyclingUn_Cured_25S,RemoveSocklinerCement_25S,RSHConstructionOptimizat_25S,CBYWeightedCosting_25S');
            SQL.add('      ,SeasonalColor_25S,OrtholiteSockliner_25S,InnerBox_25S,MOC_25S,Ckmesh_25S,Max(kfxxzl.KFLX) as BOMTecLevel,Max(xxzlkf.TechLevel_Flex) as CTSTecLevel');
            SQL.add('      ,CostingPriceList.SealTapeOIA_LK_25U,CostingPriceList.ShoelaceLength_25U,TissueOIA_LK_25U,CL98LaborPrecommit_25F,FY25_CostMitigation');
            SQL.add('      ,xxzl.XieXing,xxzl.SheHao,CostingPriceList.KFCQ');
            SQL.add('From CostingPriceList     ');
            SQL.add('left join (    ');
            if Edit7.text='CBY' then
              begin
                SQL.add('      select article,SheHao,xiexing,DAOMH,BZCC,''036'' as KHDH,''JNG'' as KFCQ  from CBYtoSpec  ');  
                SQL.add(')xxzl on  CostingPriceList.SKU = left(xxzl.article,charindex(''/'',xxzl.article+''/'')-1)');
              end
            else
              begin 
                SQL.add('      select article,SheHao,xiexing,DAOMH,BZCC,KHDH,KFCQ from xxzl  ');
                SQL.add(')xxzl on  CostingPriceList.SKU = left(xxzl.article,charindex(''/'',xxzl.article+''/'')-1)');
                if ComboBox4.ItemIndex=0 then
                  sql.add('and xxzl.KFCQ=''JNG''');
                if ComboBox4.ItemIndex=1 then
                  sql.add('and xxzl.KFCQ=''YQA''');
                if main.Edit2.Text='CDC' then
                  sql.add('and xxzl.KHDH=''036''')
                else if main.Edit2.Text='CDC' then
                  sql.add('and xxzl.KHDH=''0079''');     //Cariuma
              end;
            SQL.add('left join KFXXZL on xxzl.XieXing=KFXXZL.XieXing and xxzl.SheHao=KFXXZL.SheHao');
            SQL.add('Left join LBZLS on LBZLS.LBDH=KFXXZL.XieGN and LBZLS.LB=''03''');
            SQL.add('left join xxzlkf on KFXXZL.XieXing=xxzlkf.XieXing and xxzlkf.SheHao=KFXXZL.SheHao');
            SQL.add('left join Costing_Salary on CostingPriceList.PricingSeason=Costing_Salary.PricingSeason --and  KFXXZL.KFCQ=Costing_Salary.Factory');
            SQL.add('Where 1=1');
            if Edit4.text<>'' then
               SQL.add('and( CostingPriceList.PricingSeason = '''+Edit4.Text+'''');
            if Edit8.text<>'' then
               SQL.add(' or CostingPriceList.PricingSeason = '''+Edit8.Text+'''');
            if Edit9.text<>'' then
               SQL.add(' or CostingPriceList.PricingSeason = '''+Edit9.Text+'''');
            if Edit10.text<>'' then
               SQL.add(' or CostingPriceList.PricingSeason = '''+Edit10.Text+'''');
            if Edit4.text<>'' then
              SQL.add(')');
            if ComboBox4.ItemIndex=0 then
              sql.add('and CostingPriceList.KFCQ=''JNG''');
            if ComboBox4.ItemIndex=1 then
              sql.add('and CostingPriceList.KFCQ=''YQA''');   
            if main.Edit2.Text='CDC' then
                  sql.add('and CostingPriceList.KHDH=''036''')
            else if main.Edit2.Text='CDC' then
                  sql.add('and CostingPriceList.KHDH=''0079''');     //Cariuma
            if Edit3.text<>'' then
                SQL.add('  AND CostingPriceList.SKU like '''+Edit3.Text+'%''');
            if Edit13.text<>'' then
                SQL.add('  AND ((kfxxzl.KFLX like '''+Edit13.Text+'%'')  or  (xxzlkf.TechLevel_Flex like '''+Edit13.Text+'%''))');
            if Edit7.text='NOT CBY' then
                SQL.add('  AND (CostingPriceList.ModelDescription Not like ''%CBY%'' or CostingPriceList.ModelDescription is null)')
            else if Edit7.text<>'' then
                SQL.add('  AND CostingPriceList.ModelDescription like ''%'+Edit7.Text+'%''');
            if Edit1.text<>'' then
                SQL.add('      AND KFXXZL.DEVCODE like '''+Edit1.Text+'%''');
            if checkbox3.Checked=true then
              SQL.add('      AND CostingPriceList.CheckID = '''+main.Edit1.Text+''' ');
            if Edit6.text<>'' then
              SQL.add('      AND DDZL.BUYNO like '''+Edit6.text+'%'' ');
            SQL.add('Group by CostingPriceList.No, CostingPriceList.SKU,   ');
            SQL.add('      CostingPriceList.PricingSeason,FOB,C2B_RL,SecondL_RL,    ');
            SQL.add('      Material,Labor,OH,SecondLabor,SecondOH,OtherAdject,ProfitRate,Profit,Freight,     ');
            SQL.add('      ModelDescription,MoldCharge,CostingPriceList.Tooling, CostingPriceList.UpperMatDetail,    ');
            SQL.add('      AvailableDate,AvailableBy,SendCTSDate,CostingPriceList.Remark,     ');
            SQL.add('      CostingPriceList.FH17KeptLabor,OutsoleAssembly,SocklinerByPrs,SpecialOffer,StrobelPrintingRemoveal,     ');
            SQL.add('      MMDeduction,MMAutoCutLectraSaving,HanyoungNetCut,AutoBuffingSaving,     ');
            SQL.add('      SupportFrictiontape,VolumeEfficiencyGain,RemovedNonBuffing,     ');
            SQL.add('      VolumeEfficiencyGainOverhead     ');
            SQL.add('      ,RecyclingUn_Cured_25S,RemoveSocklinerCement_25S,RSHConstructionOptimizat_25S,CBYWeightedCosting_25S');
            SQL.add('      ,SeasonalColor_25S,OrtholiteSockliner_25S,InnerBox_25S,MOC_25S,Ckmesh_25S');
            SQL.add('      ,CostingPriceList.SealTapeOIA_LK_25U,CostingPriceList.ShoelaceLength_25U,TissueOIA_LK_25U,CL98LaborPrecommit_25F');
            SQL.add('      ,FY25_CostMitigation,xxzl.XieXing,xxzl.SheHao,CostingPriceList.KFCQ');
            SQL.add(') A');
            if (Edit7.text = 'CBY') then
              begin
                if checkbox4.Checked=true then
                  begin
                    showmessage('CBY no po creation day');
                    exit;
                  end;
                SQL.add('left join (select style,season,Sum(CBY_Orders.total) as pairs, case right(CBY_Orders.Season,1) ');
                SQL.add('	when ''S'' then left(CBY_Orders.Season,2)+''F''  	when ''U'' then left(CBY_Orders.Season,2)+''H'' ');
                SQL.add('	when ''F'' then CAST(CAST(left(CBY_Orders.Season,2) as int)+1 AS Varchar)+''S'' ');
                SQL.add(' when ''H'' then CAST(CAST(left(CBY_Orders.Season,2) as int)+1 AS Varchar)+''U'' ');
                SQL.add(' end as Season2 from CBY_Orders group by style,season');
                //SQL.add(')CBY_Orders on CostingPriceList.SKU= left(CBY_Orders.style,LEN(CostingXXZLS.SKU)) ');
                SQL.add(')DDZL on A.SKU= left(DDZL.style,charindex(''/'',DDZL.style+''/'')-1)');
                SQL.add('	and A.PricingSeason=DDZL.Season2');
              end
            else if ComboBox4.ItemIndex=0 then    //LYN
              begin
                //抓出上一季度
                SQL.add('left join (select right(DDZL.buyno,3)as Currentseason,right(PreviousSeason.BUYNO,3) as PreviousSeason');
                SQL.add('	from DDZL');
                SQL.add('	left join (select DDZL.buyno from DDZL where KHBH=''036'' and len(DDZL.buyno)=10  and KHPO not like''%CBY%%''  group by DDZL.buyno   ');
                SQL.add('		) PreviousSeason on (case when CAST(SUBSTRING(DDZL.buyno,5,2)AS NUMERIC)>3 then left(DDZL.buyno,6)-3 else left(DDZL.buyno,6)-91 end)=left(PreviousSeason.buyno,6)');
                SQL.add('where len(DDZL.buyno)=10 and DDZL.KHBH=''036'' and KHPO not like''%CBY%%'' ');
                SQL.add('group by right(DDZL.buyno,3),right(PreviousSeason.BUYNO,3)'); 
                SQL.add(')PreviousSeason on PreviousSeason.Currentseason=a.PricingSeason');
                if checkbox4.Checked=true then    //PO Creation date
                  begin
                    //不含上一季度
                    {SQL.add('left join (select DDZL.XieXing,DDZL.SheHao,Sum(DDZL.Pairs) as Pairs,season.PODateseason as PODateseason');          //,convert(char(6),KHDDBH2DATE,112) as BUYNO
                    SQL.add('    From YWDD left join DDZL on DDZL.DDBH=YWDD.DDBH');
                    SQL.add('    left join (select left(buyno,6)as buyno2,right(buyno,3)as PODateseason  from DDZL ');
                    SQL.add('    where len(DDZL.buyno)=10 and KHBH not like''%CBY''  group by buyno) season on season.buyno2 = convert(char(6),YWDD.KHDDBH2DATE,112)');
                    SQL.add('    where KHDDBH2DATE is not null and DDZL.DDLB=''N'' and DDZL.DDZT=''Y'' and DDZL.ARTICLE not like ''%BG%''');
                    SQL.add('    group by DDZL.XieXing,DDZL.SheHao,season.PODateseason');
                    SQL.add('	) DDZL on  A.XieXing=DDZL.XieXing and A.SheHao=DDZL.SheHao and DDZL.PODateseason = A.PricingSeason'); }
                    //上一季度未確認  但有訂單則補入目前季度訂單雙數
                    sql.add('left join (select DDZL.XieXing,DDZL.SheHao,Sum(DDZL.Pairs) as Pairs,season.PODateseason as PODateseason           ');
                    sql.add('    From YWDD             ');
                    sql.add('    left join DDZL on DDZL.DDBH=YWDD.DDBH            ');
                    sql.add('    left join (select --(case when CAST(SUBSTRING(DDZL.buyno,5,2)AS NUMERIC)>3 then left(DDZL.buyno,6)-3 else left(DDZL.buyno,6)-91 end) as Previousbuyno,            ');
                    sql.add('            left(DDZL.buyno,6)as buyno2,right(DDZL.buyno,3)as PODateseason');
                    sql.add('            from DDZL ');
                    sql.add('            where len(DDZL.buyno)=10 and DDZL.KHBH=''036'' and KHPO not like''%CBY%%''  ');
                    sql.add('            group by DDZL.buyno');
                    sql.add('    )season on season.buyno2 = convert(char(6),YWDD.KHDDBH2DATE,112)            ');
                    sql.add('    where KHDDBH2DATE is not null and DDZL.DDLB=''N'' and DDZL.DDZT=''Y'' and DDZL.ARTICLE not like ''%BG%''            ');
                    sql.add('    group by DDZL.XieXing,DDZL.SheHao,season.PODateseason           ');
                    sql.add(') DDZL on  A.XieXing=DDZL.XieXing and A.SheHao=DDZL.SheHao and DDZL.PODateseason = A.PricingSeason            ');
                    sql.add('left join (select DDZL.XieXing,DDZL.SheHao,Sum(DDZL.Pairs) as Pairs,season.PODateseason as PODateseason    --上一季訂單狀態        ');
                    sql.add('    From YWDD left join DDZL on DDZL.DDBH=YWDD.DDBH            ');
                    sql.add('    left join (select left(buyno,6)as buyno2,right(buyno,3)as PODateseason  from DDZL             ');
                    sql.add('    where len(DDZL.buyno)=10 and  DDZL.KHBH=''036'' and KHPO not like''%CBY''  group by buyno) season on season.buyno2 = convert(char(6),YWDD.KHDDBH2DATE,112)            ');
                    sql.add('    where KHDDBH2DATE is not null and DDZL.DDLB=''N'' and DDZL.DDZT=''Y'' and DDZL.ARTICLE not like ''%BG%''            ');
                    sql.add('    group by DDZL.XieXing,DDZL.SheHao,season.PODateseason            ');
                    sql.add(')DDZL_PreviousSeason on  A.XieXing=DDZL_PreviousSeason.XieXing and A.SheHao=DDZL_PreviousSeason.SheHao and DDZL_PreviousSeason.PODateseason = PreviousSeason.PreviousSeason            ');



                  end
                else                            //業務 buyno
                  begin        
                    //不含上一季度
                    {SQL.add('left join (select DDZL.XieXing,DDZL.SheHao,right(DDZL.BUYNO,3) as Season,sum(Pairs)  as Pairs from DDZL ');
                    SQL.add('    where DDZL.DDLB=''N'' and DDZL.DDZT=''Y'' and DDZL.ARTICLE not like ''%BG%'' ');              //and DDBH not like ''%R%''  移除
                    SQL.add('    group by DDZL.XieXing,DDZL.SheHao,right(DDZL.BUYNO,3)');
                    SQL.add(')DDZL on  A.XieXing=DDZL.XieXing and A.SheHao=DDZL.SheHao and DDZL.Season= A.PricingSeason');}
                    //上一季度未確認  但有訂單則補入目前季度訂單雙數
                    sql.add('left join (select DDZL.XieXing,DDZL.SheHao,right(DDZL.BUYNO,3) as Season,sum(Pairs)  as Pairs');
                    sql.add('   from DDZL ');
                    sql.add('   where DDZL.DDLB=''N'' and DDZL.DDZT=''Y'' and DDZL.ARTICLE not like ''%BG%'' and KHBH=''036'' and len(DDZL.buyno)=10  and KHPO not like ''%CBY%%''');
                    sql.add('   group by DDZL.XieXing,DDZL.SheHao,right(DDZL.BUYNO,3)');
                    sql.add(')DDZL on  A.XieXing=DDZL.XieXing and A.SheHao=DDZL.SheHao and DDZL.Season= A.PricingSeason');

                    sql.add('left join (select DDZL.XieXing,DDZL.SheHao,right(DDZL.BUYNO,3) as Season,sum(Pairs)  as Pairs');
                    sql.add('    from DDZL ');
                    sql.add('    where DDZL.DDLB=''N'' and DDZL.DDZT=''Y'' and DDZL.ARTICLE not like ''%BG%'' ');
                    sql.add('        and KHBH=''036'' and len(DDZL.buyno)=10  and KHPO not like ''%CBY%%'' ');
                    sql.add('    group by DDZL.XieXing,DDZL.SheHao,right(DDZL.BUYNO,3)');
                    sql.add('    )DDZL_PreviousSeason on  A.XieXing=DDZL_PreviousSeason.XieXing and A.SheHao=DDZL_PreviousSeason.SheHao and DDZL_PreviousSeason.season = PreviousSeason.PreviousSeason            ');

                  end;
              end
            else if ComboBox4.ItemIndex=1 then    //LYI
              begin   
                //抓出上一季度
                SQL.add('left join (select right(DDZL.buyno,3)as Currentseason,right(PreviousSeason.BUYNO,3) as PreviousSeason');
                SQL.add('	from DDZL');
                SQL.add('	left join (select DDZL.buyno from DDZL where KHBH=''036'' and len(DDZL.buyno)=10  and KHPO not like''%CBY%%''  group by DDZL.buyno   ');
                SQL.add('		) PreviousSeason on (case when CAST(SUBSTRING(DDZL.buyno,5,2)AS NUMERIC)>3 then left(DDZL.buyno,6)-3 else left(DDZL.buyno,6)-91 end)=left(PreviousSeason.buyno,6)');
                SQL.add('where len(DDZL.buyno)=10 and DDZL.KHBH=''036'' and KHPO not like''%CBY%%'' ');
                SQL.add('group by right(DDZL.buyno,3),right(PreviousSeason.BUYNO,3)');
                SQL.add(')PreviousSeason on PreviousSeason.Currentseason=a.PricingSeason');
                if checkbox4.Checked=true then    //PO Creation date
                  begin
                    //不含上一季度
                    {SQL.add('left join (select costing_LYItemporder.SKU,Sum(costing_LYItemporder.Pairs) as Pairs,PODateseason');
                    SQL.add('    From costing_LYItemporder');
                    SQL.add('    left join (select left(buyno,6)as buyno2,right(buyno,3)as PODateseason from DDZL');
                    SQL.add('    where len(DDZL.buyno)=10 and KHBH not like''%CBY'' group by buyno) season on season.buyno2 = costing_LYItemporder.POCreateDate');
                    SQL.add('    group by costing_LYItemporder.SKU,PODateseason');
                    SQL.add('	) DDZL on A.SKU=DDZL.SKU  and DDZL.PODateseason = A.PricingSeason');  }
                    sql.add('left join (select costing_LYItemporder.SKU,Sum(costing_LYItemporder.Pairs) as Pairs,PODateseason');
                    sql.add('    From costing_LYItemporder');
                    sql.add('    left join (');
                    sql.add('        select left(DDZL.buyno,6)as buyno2,right(DDZL.buyno,3)as PODateseason');
                    sql.add('        From DDZL');
                    sql.add('        where len(DDZL.buyno)=10 and DDZL.KHPO not like''%CBY''  and  DDZL.KHBH=''036''');
                    sql.add('        group by DDZL.buyno');
                    sql.add('        ) season on season.buyno2 = costing_LYItemporder.POCreateDate');
                    sql.add('    group by costing_LYItemporder.SKU,PODateseason');
                    sql.add('    ) DDZL on A.SKU=DDZL.SKU  and DDZL.PODateseason = A.PricingSeason');
                    sql.add('left join (select costing_LYItemporder.SKU,Sum(costing_LYItemporder.Pairs) as Pairs,PODateseason');
                    sql.add('    From costing_LYItemporder');
                    sql.add('    left join (select left(buyno,6)as buyno2,right(buyno,3)as PODateseason from DDZL');
                    sql.add('        where DDZL.KHBH=''036'' and len(DDZL.buyno)=10 and KHPO not like''%CBY'' group by buyno) season on season.buyno2 = costing_LYItemporder.POCreateDate');
                    sql.add('    group by costing_LYItemporder.SKU,PODateseason');
                    sql.add('    ) DDZL_PreviousSeason on A.SKU=DDZL_PreviousSeason.SKU  and DDZL_PreviousSeason.PODateseason = PreviousSeason.PreviousSeason');


                  end
                else                           //業務 buyno
                  begin         
                    //不含上一季度
                    {SQL.add('left join (select costing_LYItemporder.SKU,Sum(costing_LYItemporder.Pairs) as Pairs,PODateseason');
                    SQL.add('    From costing_LYItemporder');
                    SQL.add('    left join (select left(buyno,6)as buyno2,right(buyno,3)as PODateseason from DDZL');
                    SQL.add('    where len(DDZL.buyno)=10 and KHBH not like''%CBY'' group by buyno) season on season.buyno2 = costing_LYItemporder.BuyNo');
                    SQL.add('    group by costing_LYItemporder.SKU,PODateseason');
                    SQL.add('	) DDZL on A.SKU=DDZL.SKU  and DDZL.PODateseason = A.PricingSeason');  }

                    sql.add('left join (select costing_LYItemporder.SKU,Sum(costing_LYItemporder.Pairs) as Pairs,PODateseason  ');
                    sql.add('    From costing_LYItemporder');
                    sql.add('    left join (select left(DDZL.buyno,6)as buyno2,right(DDZL.buyno,3)as PODateseason');
                    sql.add('        from DDZL');
                    sql.add('        where len(DDZL.buyno)=10 and KHPO not like''%CBY''  and DDZL.KHBH=''036'' group by DDZL.buyno');
                    sql.add('        ) season on season.buyno2 = costing_LYItemporder.BuyNo');
                    sql.add('    group by costing_LYItemporder.SKU,PODateseason  ');
                    sql.add('    ) DDZL on A.SKU=DDZL.SKU  and DDZL.PODateseason = A.PricingSeason');
                    sql.add('left join (select costing_LYItemporder.SKU,Sum(costing_LYItemporder.Pairs) as Pairs,PODateseason');
                    sql.add('    From costing_LYItemporder');
                    sql.add('    left join (select left(buyno,6)as buyno2,right(buyno,3)as PODateseason from DDZL');
                    sql.add('    where DDZL.KHBH=''036'' and len(DDZL.buyno)=10 and KHPO not like''%CBY'' group by buyno) season on season.buyno2 = costing_LYItemporder.BuyNo');
                    sql.add('    group by costing_LYItemporder.SKU,PODateseason');
                    sql.add('    ) DDZL_PreviousSeason on A.SKU=DDZL_PreviousSeason.SKU  and DDZL_PreviousSeason.PODateseason = PreviousSeason.PreviousSeason');

                  end;
              end;
            if (Edit7.text = 'CBY') then //CBY
              SQL.add('Order by A.PricingSeason,A.No  ')
            else
              begin
                sql.add('left join (select SKU,PricingSeason,KFCQ  From CostingPriceList group by SKU,PricingSeason,KFCQ');
                sql.add(')PreviousSeasonCFM on PreviousSeasonCFM.SKU=a.SKU and PreviousSeasonCFM.PricingSeason=PreviousSeason.PreviousSeason and PreviousSeasonCFM.KFCQ=a.KFCQ ');
                SQL.add('Order by A.PricingSeason,A.No  ');
              end;

            //showmessage(SQL.Text);
            active:=true;
          end;
//舊版本  簡化改先group資訊確認資料清單完整 再連接訂單
{        with query2 do
          begin
            active:=false;
            SQL.clear;
            SQL.add('Select CostingPriceList.No,Max(KFXXZL.XieMing)as XieMing, max(KFXXZL.YSSM)as YSSM,  ');
            SQL.add('      Max(KFXXZL.DEVCODE)as DEVCODE, CostingPriceList.SKU,   ');
            SQL.add('      CostingPriceList.PricingSeason, SUBSTRING(Max(KFXXZL.DEVCODE),8,2) as Category,  ');
            SQL.add('      SUBSTRING(Max(KFXXZL.DEVCODE),13,1)as GENDER,CostingPriceList.UpperMatDetail,LYNFOB,');
            SQL.add('      Material,Labor,OH,SecondLabor,SecondOH,OtherAdject,ProfitRate,Profit,Freight,     ');
            SQL.add('      Max(LBZLS.YWSM )as ProductionType,ModelDescription,MoldCharge,CostingPriceList.Tooling,   ');
            SQL.add('      AvailableDate,AvailableBy,SendCTSDate,CostingPriceList.Remark,     ');
            SQL.add('      CostingPriceList.FH17KeptLabor,OutsoleAssembly,SocklinerByPrs,SpecialOffer,StrobelPrintingRemoveal,     ');
            SQL.add('      MMDeduction,MMAutoCutLectraSaving,HanyoungNetCut,AutoBuffingSaving,     ');
            SQL.add('      SupportFrictiontape,VolumeEfficiencyGain,RemovedNonBuffing,VolumeEfficiencyGainOverhead,Max(XXZL.DAOMH) as DAOMH,');

            if Edit7.text='CBY' then
              SQL.add('      Max(xxzlkf.Planning_Level_2) as Planning_Level_2,Sum(CBY_Orders.pairs) as pairs ')
            else
              SQL.add('      Max(xxzlkf.Planning_Level_2) as Planning_Level_2,Sum(DDZL.pairs) as pairs');
            SQL.add('      ,Max(xxzlkf.TSP) as TSP ,Max(Costing_Salary.Salary) as  Salary');
            SQL.add('      ,Max(xxzlkf.segment) as segment,MAX(XXZL.BZCC) as SampleSize');
            SQL.add('      ,RecyclingUn_Cured_25S,RemoveSocklinerCement_25S,RSHConstructionOptimizat_25S,CBYWeightedCosting_25S');
            SQL.add('      ,SeasonalColor_25S,OrtholiteSockliner_25S,InnerBox_25S,MOC_25S,Ckmesh_25S,Max(kfxxzl.KFLX) as BOMTecLevel,Max(xxzlkf.TechLevel_Flex) as CTSTecLevel');
            SQL.add('      ,CostingPriceList.SealTapeOIA_LK_25U,CostingPriceList.ShoelaceLength_25U,TissueOIA_LK_25U,CL98LaborPrecommit_25F,FY25_CostMitigation');
            SQL.add('From CostingPriceList     ');
            SQL.add('left join (    ');   
            if Edit7.text='CBY' then
              SQL.add('      select article,SheHao,xiexing,DAOMH,BZCC,'''' as KHDH,''JNG'' as KFCQ  from CBYtoSpec  ')
            else
              SQL.add('      select article,SheHao,xiexing,DAOMH,BZCC,KHDH,KFCQ from xxzl  ');
            //SQL.add(')xxzl on xxzl.article like CostingPriceList.SKU+''%''  ');
            SQL.add(')xxzl on  CostingPriceList.SKU = left(xxzl.article,charindex(''/'',xxzl.article+''/'')-1)');
            if ComboBox4.ItemIndex=0 then
              SQL.add('and xxzl.KFCQ=''JNG''')
            else if ComboBox4.ItemIndex=1 then
              SQL.add('and xxzl.KFCQ=''YQA''');
            SQL.add('left join KFXXZL on xxzl.XieXing=KFXXZL.XieXing and xxzl.SheHao=KFXXZL.SheHao');
            SQL.add('Left join LBZLS on LBZLS.LBDH=KFXXZL.XieGN and LBZLS.LB=''03''');
            SQL.add('left join xxzlkf on KFXXZL.XieXing=xxzlkf.XieXing and xxzlkf.SheHao=KFXXZL.SheHao');
            if Edit7.text='CBY' then
              begin              
                if checkbox4.Checked=true then
                  begin
                    showmessage('CBY no po creation day');
                    exit;
                  end;
                SQL.add('left join (select style,season,Sum(CBY_Orders.total) as pairs, case right(CBY_Orders.Season,1)');
                SQL.add('	when ''S'' then left(CBY_Orders.Season,2)+''F''  	when ''U'' then left(CBY_Orders.Season,2)+''H''');
                SQL.add('	when ''F'' then CAST(CAST(left(CBY_Orders.Season,2) as int)+1 AS Varchar)+''S'' 	when ''H'' then CAST(CAST(left(CBY_Orders.Season,2) as int)+1 AS Varchar)+''U''');
                SQL.add(' end as Season2 from CBY_Orders group by style,season');
                SQL.add(')CBY_Orders on CostingPriceList.SKU= left(CBY_Orders.style,LEN(CostingXXZLS.SKU)) ');
                SQL.add('	and CostingPriceList.PricingSeason=CBY_Orders.Season2');
              end
            else if ComboBox4.ItemIndex=0 then
              begin
                if checkbox4.Checked=true then
                  begin
                    SQL.add('left join (select DDZL.XieXing,DDZL.SheHao,DDZL.Pairs,convert(char(6),KHDDBH2DATE,112) as BUYNO,season.PODateseason as PODateseason');
                    SQL.add('    From YWDD left join DDZL on DDZL.DDBH=YWDD.DDBH');
                    SQL.add('    left join (select left(buyno,6)as buyno2,right(buyno,3)as PODateseason  from DDZL ');
                    SQL.add('    where len(DDZL.buyno)=10 and KHBH not like''%CBY''  group by buyno) season on season.buyno2 = convert(char(6),YWDD.KHDDBH2DATE,112)');
                    SQL.add('    where KHDDBH2DATE is not null and DDZL.DDLB=''N'' and DDZL.DDZT=''Y'' and DDZL.ARTICLE not like ''%BG%''');
                    SQL.add('	) DDZL on  xxzl.XieXing=DDZL.XieXing and xxzl.SheHao=DDZL.SheHao and DDZL.PODateseason = CostingPriceList.PricingSeason');
                  end
                else
                  begin
                    SQL.add('left join DDZL on  xxzl.XieXing=DDZL.XieXing and xxzl.SheHao=DDZL.SheHao and right(DDZL.BUYNO,3) like ''%''+PricingSeason+''%'' ');
                    SQL.add('    and DDZL.DDLB=''N'' and DDZL.DDZT=''Y'' and DDZL.ARTICLE not like ''%BG%''');               //and DDBH not like ''%R%''  移除
                  end;
              end
            else if ComboBox4.ItemIndex=1 then
              begin 
                if checkbox4.Checked=true then
                  begin
                    SQL.add('left join (select costing_LYItemporder.SKU,Sum(costing_LYItemporder.Pairs) as Pairs,PODateseason');
                    SQL.add('    From costing_LYItemporder');
                    SQL.add('    left join (select left(buyno,6)as buyno2,right(buyno,3)as PODateseason from DDZL');
                    SQL.add('    where len(DDZL.buyno)=10 and KHBH not like''%CBY'' group by buyno) season on season.buyno2 = costing_LYItemporder.BuyNo');
                    SQL.add('    group by costing_LYItemporder.SKU,PODateseason');
                    SQL.add('	) DDZL on CostingPriceList.SKU=DDZL.SKU  and DDZL.PODateseason = CostingPriceList.PricingSeason');
                  end
                else
                  begin
                    SQL.add('left join [LIY_TYXUAN].dbo.[LYI_DDZL] DDZL on  xxzl.XieXing=DDZL.XieXing and xxzl.SheHao=DDZL.SheHao and right(DDZL.BUYNO,3) = ''''+PricingSeason+'''' ');
                    SQL.add('    and DDZL.DDLB=''N'' and DDZL.DDZT=''Y'' and DDZL.ARTICLE not like ''%BG%'' ');              //and DDBH not like ''%R%''  移除
                  end;
              end;
            SQL.add('left join Costing_Salary on CostingPriceList.PricingSeason=Costing_Salary.PricingSeason --and  KFXXZL.KFCQ=Costing_Salary.Factory');
            SQL.add('Where 1=1');
            if Edit4.text<>'' then
               SQL.add('and( CostingPriceList.PricingSeason = '''+Edit4.Text+'''');
            if Edit8.text<>'' then
               SQL.add(' or CostingPriceList.PricingSeason = '''+Edit8.Text+'''');
            if Edit9.text<>'' then
               SQL.add(' or CostingPriceList.PricingSeason = '''+Edit9.Text+'''');
            if Edit10.text<>'' then
               SQL.add(' or CostingPriceList.PricingSeason = '''+Edit10.Text+'''');
            if Edit4.text<>'' then
            SQL.add(')');
          if ComboBox4.ItemIndex=0 then
            sql.add('and CostingPriceList.KFCQ=''JNG''');
         if ComboBox4.ItemIndex=1 then
            sql.add('and CostingPriceList.KFCQ=''YQA''');
          if ComboBox5.ItemIndex=0 then
            sql.add('and CostingPriceList.KHDH=''036''');
         if ComboBox5.ItemIndex=1 then
            sql.add('and CostingPriceList.KHDH=''0079''');     //Cariuma
            if Edit3.text<>'' then
                SQL.add('  AND CostingPriceList.SKU like '''+Edit3.Text+'%''');
            if Edit13.text<>'' then
                SQL.add('  AND ((kfxxzl.KFLX like '''+Edit13.Text+'%'')  or  (xxzlkf.TechLevel_Flex like '''+Edit13.Text+'%''))');
            if Edit7.text='NOT CBY' then
                SQL.add('  AND (CostingPriceList.ModelDescription Not like ''%CBY%'' or CostingPriceList.ModelDescription is null)')
            else if Edit7.text<>'' then
                SQL.add('  AND CostingPriceList.ModelDescription like ''%'+Edit7.Text+'%''');
            if Edit1.text<>'' then
                SQL.add('      AND KFXXZL.DEVCODE like '''+Edit1.Text+'%''');
            if checkbox3.Checked=true then
              SQL.add('      AND CostingPriceList.CheckID = '''+main.Edit1.Text+''' ');
            if Edit6.text<>'' then
              SQL.add('      AND DDZL.BUYNO like '''+Edit6.text+'%'' ');
            SQL.add('Group by CostingPriceList.No, CostingPriceList.SKU,   ');
            SQL.add('      CostingPriceList.PricingSeason,LYNFOB,    ');
            SQL.add('      Material,Labor,OH,SecondLabor,SecondOH,OtherAdject,ProfitRate,Profit,Freight,     ');
            SQL.add('      ModelDescription,MoldCharge,CostingPriceList.Tooling, CostingPriceList.UpperMatDetail,    ');
            SQL.add('      AvailableDate,AvailableBy,SendCTSDate,CostingPriceList.Remark,     ');
            SQL.add('      CostingPriceList.FH17KeptLabor,OutsoleAssembly,SocklinerByPrs,SpecialOffer,StrobelPrintingRemoveal,     ');
            SQL.add('      MMDeduction,MMAutoCutLectraSaving,HanyoungNetCut,AutoBuffingSaving,     ');
            SQL.add('      SupportFrictiontape,VolumeEfficiencyGain,RemovedNonBuffing,     ');
            SQL.add('      VolumeEfficiencyGainOverhead     ');
            SQL.add('      ,RecyclingUn_Cured_25S,RemoveSocklinerCement_25S,RSHConstructionOptimizat_25S,CBYWeightedCosting_25S');
            SQL.add('      ,SeasonalColor_25S,OrtholiteSockliner_25S,InnerBox_25S,MOC_25S,Ckmesh_25S');
            SQL.add('      ,CostingPriceList.SealTapeOIA_LK_25U,CostingPriceList.ShoelaceLength_25U,TissueOIA_LK_25U,CL98LaborPrecommit_25F');
            SQL.add('      ,FY25_CostMitigation');
            if Edit7.text='CBY' then
              begin
                SQL.add('      ,pairs');
              end;
            SQL.add('Order by CostingPriceList.PricingSeason,CostingPriceList.No  ');

            showmessage(SQL.Text);
            active:=true;
          end;   }

end;


procedure TCostingPriceList.BitBtn5Click(Sender: TObject);
begin

        with QueryPlanningLevel do
          begin
            active:=false;
            SQL.clear;
            SQL.add('Select KFXXZL.DEVCODE,KFXXZL.ARTICLE,xxzlkf.Planning_Level_2,xxzlkf.SheHao,xxzlkf.XieXing,segment ');
            SQL.add('From KFXXZL');
            SQL.add('left join xxzlkf on KFXXZL.XieXing=xxzlkf.XieXing and xxzlkf.SheHao=KFXXZL.SheHao');
            SQL.Add('where KFXXZL.DEVCODE like ''%'+Edit2.Text+'%''');
            SQL.add('  And KFXXZL.ARTICLE like '''+Edit5.Text+'%'' And KFXXZL.ARTICLE is not null  And KFXXZL.ARTICLE<>''''');
            SQL.add('  And KFXXZL.KHDH=''036''');
            //showmessage(SQL.Text);
            active:=true;
          end;
   QueryPlanningLevel.requestlive:=true;
   QueryPlanningLevel.cachedupdates:=true;
   BitBtn4.Enabled:=true;
end;

procedure TCostingPriceList.BitBtn4Click(Sender: TObject);
var i:integer;
begin
  try
    QueryPlanningLevel.First;
    for i:=1 to QueryPlanningLevel.RecordCount do
    begin
      if QueryPlanningLevel.updatestatus=usmodified then//修改
              begin
              QueryPlanningLevel.Edit;
              UpdateSQL3.apply(ukmodify)
              end;
          //end;

      QueryPlanningLevel.Next
    end;//for

    QueryPlanningLevel.active:=false;
    QueryPlanningLevel.requestlive:=false;
    QueryPlanningLevel.cachedupdates:=false;
    QueryPlanningLevel.active:=true;
    BitBtn4.Enabled:=false;

    showmessage('Succeed');
  except


    on E:Exception do
      showmessage('have wrong:'+E.Message);
  end;
end;

procedure TCostingPriceList.BitBtn3Click(Sender: TObject);
begin
  if PageControl1.ActivePageIndex=0 then
      ExportExcel(Query1)
  else if PageControl1.ActivePageIndex=1 then
      ExportExcel(UploadlQuery)
  else if PageControl1.ActivePageIndex=4 then
      ExportExcel(QueryPlanningLevel)
end;

procedure TCostingPriceList.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  free;
end;

procedure TCostingPriceList.FormDestroy(Sender: TObject);
begin
  CostingPriceList:=nil;
end;

procedure TCostingPriceList.BitBtn7Click(Sender: TObject);
begin
        with QueryPermissions do
          begin
            active:=false;
            SQL.clear;
            SQL.add('select USERID,FORMID,SUSERID,USERDATE from BLimits');
            SQL.add('where (FORMID =''SN381'' or FORMID =''SN385''  or FORMID =''SN386'') and MKID=''02''');
            if Edit11.text<>'' then
                SQL.add('  AND USERID = '''+Edit11.Text+'''');
            if Edit12.text<>'' then
                SQL.add('  AND FORMID like '''+Edit12.Text+'%''');
            SQL.add('order by userdate DESC');
              showmessage(SQL.Text);
            active:=true;
          end;
end;

procedure TCostingPriceList.BitBtn8Click(Sender: TObject);
var temp:string;
begin
        if Edit4.text='' then
        exit;
        if Edit8.text<>'' then
        begin
               Edit8.text:='';
               Edit9.text:='';
               Edit10.text:='';
        end;
        temp:=copy(Edit4.text,1,2);
            if ((copy(Edit4.text,3,1)='S') or (copy(Edit4.text,3,1)='U')) then
              begin
               Edit4.text:=temp+'S';
               Edit8.text:=temp+'U';
               Edit9.text:=inttostr(strtoint(temp)-1)+'F';
               Edit10.text:=inttostr(strtoint(temp)-1)+'H';
              end
            else
              begin      
               Edit4.text:=inttostr(strtoint(temp)+1)+'S';
               Edit8.text:=inttostr(strtoint(temp)+1)+'U';
               Edit9.text:=temp+'F';
               Edit10.text:=temp+'H';
              end
end;

procedure TCostingPriceList.Button12Click(Sender: TObject);
var
  i,j:integer;
  MsExcel:olevariant;
  MsExcelWorkbook: Variant;   
  flag:boolean;
  Text2: String;
begin
   with LYIorder do
      begin
         active:=false;
         sql.Clear;
         sql.add('Select * From costing_LYItemporder where 1=2');
         active:=true;
      end;
  try
    MsExcel:=CreateOleObject('Excel.Application');
  except
      on E:Exception do
      begin
        Application.MessageBox(PChar('NO EXCEL'+E.Message),'', MB_OK+MB_ICONWarning);
        EXIT;
      end;
  end;
  try
  if OpenDialog.Execute=true then
   begin
    MsExcelWorkBook := msExcel.Workbooks.Open(OpenDialog.FileName);
    with LYIorder do
     begin
     cachedupdates:=true;
     requestlive:=true;
     LYIorder.edit;
     LYIorder.first;
     j:=5;
     flag:=true;
     while (flag=true) do
        begin
        Text2:=MsExcel.WorkBooks[1].WorkSheets[1].Cells[j,1];
        if Text2='' then
          break;
        insert;
        //for   i:=0   to  UploadQuery.fieldcount-1  do
        LYIorder.Fields[0].Value:=msExcel.WorkBooks[1].WorkSheets[1].Cells[j,3];
        LYIorder.Fields[1].Value:=msExcel.WorkBooks[1].WorkSheets[1].Cells[j,4];
        LYIorder.Fields[2].Value:=msExcel.WorkBooks[1].WorkSheets[1].Cells[j,1];
        //LYIorder.Fields[2].Value:=FormatDateTime('yyyymmdd', msExcel.WorkBooks[1].WorkSheets[1].Cells[j,1]);
         // showmessage(FormatDateTime('yyyymmdd', msExcel.WorkBooks[1].WorkSheets[1].Cells[j,1]));
         // break;
        LYIorder.Fields[3].Value:=msExcel.WorkBooks[1].WorkSheets[1].Cells[j,8];
        LYIorder.Fields[4].Value:=msExcel.WorkBooks[1].WorkSheets[1].Cells[j,11];
        //LYIorder.Fields[5].Value:=msExcel.WorkBooks[1].WorkSheets[1].Cells[j,2];

        LYIorder.Fields[5].Value:=FormatDateTime('yyyymmdd', msExcel.WorkBooks[1].WorkSheets[1].Cells[j,2]);
        //showmessage(FormatDateTime('yyyymmdd', msExcel.WorkBooks[1].WorkSheets[1].Cells[j,1]));
        inc(j);
        end;   //with UploadQuery do
     MsExcel.ActiveWorkBook.Saved := True;
     MsExcelWorkBook.Close;
     MsExcel.Quit;
     VarClear(MsExcel);
    end;     //with UploadQuery do
  end;     //if OpenDialog.Execute=true

  except
   on E:Exception do
      begin
        //showmessage('123');
        Application.MessageBox(PChar('NO EXCEL '+E.Message),'', MB_OK);
        MsExcel.ActiveWorkBook.Saved := True;
        MsExcelWorkBook.Close;
        MsExcel.Quit;
        VarClear(MsExcel);
        Exit;
      end;  
   end;  //except
   BB2.Enabled:=true;
end;

procedure TCostingPriceList.BitBtn10Click(Sender: TObject);
begin
  with LYIorder do
  begin
    Active:=false;
    SQL.Clear;

    SQL.Add('select * from costing_LYItemporder'); 
    if edit14.text<>'' then
      SQL.add('  where YEAR(costing_LYItemporder.POCreateDate) = '''+edit14.Text+'%''');

    Active:=true;
 end;
end;

procedure TCostingPriceList.BitBtn11Click(Sender: TObject);
var 
     i:integer;
begin
    if  LYIorder.active=false  then
      exit;
    LYIorder.first;
    for i:=1 to LYIorder.RecordCount do
    begin
      with ExistCheck do
      begin
         active:=false;
         sql.Clear;
         sql.add('Select * From costing_LYItemporder where 1=1');
         sql.add('  and RY='''+LYIorder.fieldbyname('RY').AsString+'''');
         active:=true;
      end;
      if ExistCheck.Eof then
          UpdateSQL5.Apply(ukinsert)
      else
          UpdateSQL5.Apply(ukmodify); 
      LYIorder.next;
    end;
    ExistCheck.active:=false;  
    LYIorder.active:=false;
    BB2.Enabled:=false;
end;

procedure TCostingPriceList.BitBtn9Click(Sender: TObject);   
var  eclApp,WorkBook:olevariant;
     i,j:integer;
begin
 if  LYIorder.active  then
    begin
    try
      eclApp:=CreateOleObject('Excel.Application');
      WorkBook:=CreateOleObject('Excel.Sheet');
    except
      Application.MessageBox('No Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
      Exit;
    end;
    try
        WorkBook:=eclApp.workbooks.Add;     
        eclApp.Cells(1,1):='No';
        for   i:=0   to   LYIorder.fieldcount-1   do
        begin
            eclApp.Cells(1,i+2):=LYIorder.fields[i].FieldName;
        end;

        LYIorder.First;

        j:=2;
        while   not   LYIorder.Eof   do
        begin
          eclApp.Cells(j,1):=j-1;
          for   i:=0   to  LYIorder.fieldcount-1  do
          begin
            eclApp.Cells(j,i+2):=LYIorder.Fields[i].Value;
          end;
        LYIorder.Next;
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

procedure TCostingPriceList.FormCreate(Sender: TObject);
begin
      if main.Edit2.Text='VC1' then
        begin
          ComboBox1.Items.Clear ;
          ComboBox1.Items.Add('1-Cariuma');
          ComboBox1.ItemIndex:=0;
        end;
end;

end.
