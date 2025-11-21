unit PaperRoom_shoeTest;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, StdCtrls, DBCtrls, Grids, DBGrids, Mask, ComCtrls,
  Buttons, ExtCtrls,comobj, GridsEh, DBGridEh, ShellAPI, DBGridEhImpExp,
  Menus, colorbutton, C_Excel, StrUtils;

type
  TPaperRoom = class(TForm)
    DS1: TDataSource;
    masqry: TQuery;
    UpSQL1: TUpdateSQL;
    pmMaspm: TPopupMenu;
    Modify1: TMenuItem;
    Delete1: TMenuItem;
    Insert1: TMenuItem;
    Cancel1: TMenuItem;
    Save1: TMenuItem;
    Query1: TQuery;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    dbgrdh1: TDBGridEh;
    pnl1: TPanel;
    lbl2: TLabel;
    lbl3: TLabel;
    cbb2: TComboBox;
    cbb3: TComboBox;
    btn1: TButton;
    N1: TMenuItem;
    Execl1: TMenuItem;

    SaveDialog1: TSaveDialog;
    OpenDialog1: TOpenDialog;
    Print: TMenuItem;
    Label7: TLabel;
    Article_edt1: TEdit;
    FD_Edt1: TEdit;
    lbl7: TLabel;
    dbgrdh3: TDBGridEh;
    SIZEqry: TQuery;
    SIZEqryTestNo: TStringField;
    SIZEqryuserdate: TDateTimeField;
    SIZEqryuserid: TStringField;
    SIZEqryYN: TStringField;
    ds3: TDataSource;
    UpdateSQL2: TUpdateSQL;
    pm4: TPopupMenu;
    SModify: TMenuItem;
    SDelete: TMenuItem;
    SInsert: TMenuItem;
    SSave: TMenuItem;
    SCancel: TMenuItem;
    MenuItem6: TMenuItem;
    Finish_chk: TCheckBox;
    Info_chk: TCheckBox;
    lbl8: TLabel;
    dtp1: TDateTimePicker;
    dtp2: TDateTimePicker;
    SIZEqryQty: TFloatField;
    qry_Print: TQuery;
    qry_PrintXieXing: TStringField;
    qry_PrintDDMH: TStringField;
    qry_PrintDAOMH: TStringField;
    qry_PrintXieMing: TStringField;
    qry_PrintJiJie: TStringField;
    qry_PrintKHDH: TStringField;
    qry_PrintBrand: TStringField;
    qry_PrintGENDER: TStringField;
    qry_PrintFD: TStringField;
    qry_PrintDevType: TStringField;
    qry_PrintTestNo: TStringField;
    qry_PrintArticle: TStringField;
    qry_PrintDevTp: TStringField;
    qry_Printstage: TStringField;
    qry_PrintTestTime: TStringField;
    qry_PrintSeason: TStringField;
    qry_PrintSIZ: TStringField;
    qry_PrintQTY: TFloatField;
    qry_PrintLastNo: TStringField;
    qry_PrintCutDieNo: TStringField;
    qry_PrintPurpose: TStringField;
    qry_PrintETC: TDateTimeField;
    qry_PrintInfomDate: TDateTimeField;
    qry_PrintPreparationDate: TDateTimeField;
    qry_PrintCutDate: TDateTimeField;
    qry_PrintStitchingDate: TDateTimeField;
    qry_PrintAssembiyDate: TDateTimeField;
    qry_PrintMemo1: TStringField;
    qry_PrintMemo2: TStringField;
    qry_PrintUserID: TStringField;
    qry_PrintUserDate: TDateTimeField;
    qry_PrintChoose: TStringField;
    qry_PrintPending_P: TBooleanField;
    qry_PrintPending_C: TBooleanField;
    qry_PrintPending_A: TBooleanField;
    qry_PrintPending_S: TBooleanField;
    qry_PrintQIP_Check: TStringField;
    qry_PrintFinish: TBooleanField;
    qry_PrintComplete: TDateTimeField;
    qry_Printuserid_s: TStringField;
    qry_Printuserdate_s: TDateTimeField;
    qry_PrintYN: TStringField;
    qry_total: TQuery;
    DS_total: TDataSource;
    usemodify: TEdit;
    Season_edt1: TComboBox;
    subtype: TComboBox;
    Label1: TLabel;
    Query2: TQuery;
    Label2: TLabel;
    testno_edt1: TEdit;
    Label3: TLabel;
    masqryArticle: TStringField;
    masqryDDMH: TStringField;
    masqryXieMing: TStringField;
    masqryseason: TStringField;
    masqryBrand: TStringField;
    masqryFD: TStringField;
    masqryTestNo: TStringField;
    masqryDevTp: TStringField;
    masqrysubTp: TStringField;
    masqrystage: TStringField;
    masqryTestTime: TStringField;
    masqrySIZ: TStringField;
    masqryQTY: TFloatField;
    masqryLastNo: TStringField;
    masqryCutDieNo: TStringField;
    masqryPurpose: TStringField;
    masqryETC: TDateTimeField;
    masqryPreparationDate_first: TDateTimeField;
    masqryPreparationDate: TDateTimeField;
    masqryCutDate: TDateTimeField;
    masqryCutDate_first: TDateTimeField;
    masqryStitchingDate: TDateTimeField;
    masqryStitchingDate_first: TDateTimeField;
    masqryAssembiyDate: TDateTimeField;
    masqryAssembiyDate_first: TDateTimeField;
    masqryUserID: TStringField;
    masqryUserDate: TDateTimeField;
    masqrychoose: TStringField;
    masqryPending_P: TBooleanField;
    masqryPending_C: TBooleanField;
    masqryPending_A: TBooleanField;
    masqryPending_S: TBooleanField;
    masqryQIP_Check: TStringField;
    masqryFinish: TBooleanField;
    masqryComplete: TDateTimeField;
    masqryUserID_s: TStringField;
    masqryUserDate_s: TDateTimeField;
    masqryConstruction: TStringField;
    masqryYN: TStringField;
    masqryypdh: TStringField;
    Button1: TButton;
    TabSheet2: TTabSheet;
    Panel1: TPanel;
    Panel2: TPanel;
    Button2: TButton;
    Button3: TButton;
    DBGridEh1: TDBGridEh;
    AnalysisQry: TQuery;
    AnalysisDS: TDataSource;
    AnalysisQryTestNo: TStringField;
    AnalysisQryXieMing: TStringField;
    AnalysisQrySR: TStringField;
    AnalysisQrySampleOrder: TStringField;
    AnalysisQryDeveloper: TStringField;
    AnalysisQryShipping: TFloatField;
    AnalysisQryFinished_Shoes_Test: TFloatField;
    AnalysisQryFit_Test: TFloatField;
    AnalysisQryWear_Test: TFloatField;
    AnalysisQryKeeping: TFloatField;
    AnalysisQrySocial_Sample: TFloatField;
    AnalysisQryTech_Team: TFloatField;
    AnalysisQryHalf_Stitching_Upper: TFloatField;
    AnalysisQryLasted_Upper: TFloatField;
    AnalysisQryUpper_Component: TFloatField;
    AnalysisQryBottom_Component: TFloatField;
    AnalysisQryTW_BY: TFloatField;
    AnalysisQryQC_CFM: TFloatField;
    AnalysisQrySeason: TStringField;
    AnalysisQryStage: TStringField;
    AnalysisQryMemo1: TStringField;
    AnalysisQryMemo2: TStringField;
    CheckBox1: TCheckBox;
    masqryUpperQty: TFloatField;
    masqryBottomQty: TFloatField;
    SIZEqryYYBH: TStringField;
    SIZEqryYWSM: TStringField;
    SIZEqryZWSM: TStringField;
    SIZEqryVWSM: TStringField;
    SIZEqryYYBH_1: TStringField;
    SIZEqryYWSM_1: TStringField;
    SIZEqryZWSM_1: TStringField;
    SIZEqryVWSM_1: TStringField;
    SIZEqryDepName: TStringField;
    SIZEqryparts: TStringField;
    ComboBox1: TComboBox;
    DBMemo1: TDBMemo;
    DBMemo2: TDBMemo;
    masqryMemo1: TMemoField;
    masqryMemo2: TMemoField;
    masqryShipDate: TDateTimeField;
    TabSheet3: TTabSheet;
    Memo: TMemo;
    masqryquantity: TFloatField;
    Problem: TCheckBox;
    masqrySPQty: TCurrencyField;
    masqrymonthqty: TCurrencyField;
    CheckBox2: TCheckBox;
    dtp3: TDateTimePicker;
    Label4: TLabel;
    dtp4: TDateTimePicker;
    Label5: TLabel;
    CheckBox3: TCheckBox;
    Button4: TButton;
    Query3: TQuery;
    masqryTBcancel: TBooleanField;
    cancelCBX: TComboBox;
    Label6: TLabel;
    masqryTBReceive: TBooleanField;
    masqryTBreceiveDate: TDateTimeField;
    masqrySeeStage: TStringField;
    CheckBox4: TCheckBox;
    Panel3: TPanel;
    Label8: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    masqryCTS: TStringField;
    Label9: TLabel;
    CTS_Edit: TEdit;
    Label10: TLabel;
    Sku_edt: TEdit;
    masqryseetype: TStringField;
    Edit5: TEdit;
    Label11: TLabel;
    masqryPrint_Request: TBooleanField;
    masqryPrint_Check: TBooleanField;
    masqryRubber_Check: TBooleanField;
    masqryRubber_Request: TBooleanField;
    Label12: TLabel;
    ComboBox2: TComboBox;
    DTP5: TDateTimePicker;
    Label14: TLabel;
    DTP6: TDateTimePicker;
    CheckBox5: TCheckBox;
    Qry_ETC: TQuery;  procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure Modify1Click(Sender: TObject);
    procedure Cancel1Click(Sender: TObject);
    procedure Delete1Click(Sender: TObject);
    procedure Insert1Click(Sender: TObject);
    procedure Save1Click(Sender: TObject);
    procedure dbgrdh1Columns1EditButtonClick(Sender: TObject;
      var Handled: Boolean);

    procedure MasqryMemo1GetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure MasqryMemo2GetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure dbgrdh1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);

    procedure dbgrdh2Columns0EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure dbgrdh1Columns3UpdateData(Sender: TObject; var Text: String;
      var Value: Variant; var UseText, Handled: Boolean);
    procedure StringField7Change(Sender: TField);
    procedure Execl1Click(Sender: TObject);
    procedure PrintClick(Sender: TObject);
    procedure MasqryPending_PChange(Sender: TField);
    procedure MasqryPending_CChange(Sender: TField);
    procedure MasqryPending_AChange(Sender: TField);
    procedure MasqryPending_SChange(Sender: TField);
    procedure SModifyClick(Sender: TObject);
    procedure SDeleteClick(Sender: TObject);
    procedure SInsertClick(Sender: TObject);
    procedure SCancelClick(Sender: TObject);

    procedure SSaveClick(Sender: TObject);
    procedure dbgrdh3Columns1UpdateData(Sender: TObject; var Text: String;
      var Value: Variant; var UseText, Handled: Boolean);
    procedure SIZEqryQtyChange(Sender: TField);


    procedure rb1Click(Sender: TObject);
    procedure rb2Click(Sender: TObject);
    procedure rb3Click(Sender: TObject);
    procedure rb4Click(Sender: TObject);
    procedure cbb2Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure dbgrdh3Columns0EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure dbgrdh1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure Info_chkClick(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);

  private          
    { Private declarations }
    AppDir:String;
    PurposeArray: Array of string;
    Develop_N75_ISO : string;
    procedure ScreenShow(i:Integer;Tdbgrdh: TDBGridEh);
    procedure KeyinSet(s:string;Tdbgrdh: TDBGridEh;Lquery:TQuery);
    procedure emptychk(s:string;Tdbgrdh: TDBGridEh;Lquery:TQuery);
    procedure DataMovPrint(Tdbgrdh: TDBGridEh;Lquery,Oquery:TQuery);
    procedure SeeExcel();
    procedure OtherExcel();
  public                   
    { Public declarations }
    Title_Excel : string;
    procedure ReadIni();
  end;

var
  PaperRoom: TPaperRoom;   
  Print_no : Integer;
  insert_type : String;
implementation

uses ArticleChoose1, main1, ShoeTestMat1, KF_FD1, PaperRoom_Print1, PaperSize_Print1,Dep_Choose1,
  DetailChoose1, choosedetail1, Barcode93Unit1, IniFiles;

{$R *.dfm}

procedure TPaperRoom.ReadIni();
var MyIni :Tinifile;
    AppDir,DBIP,DBUser,DBPass,DBName:string;
begin
  Title_Excel:= 'LYNDC Sample Commercialization Sheet'+'(SampleNO:';
  Develop_N75_ISO:='A-TTKT-001B';
  AppDir:=ExtractFilePath(Application.ExeName);
  if FileExists(AppDir+'\ComName.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ComName.ini');
      Title_Excel:=MyIni.ReadString('ERP','Develop_N75_Title_Excel','');
      Develop_N75_ISO:=MyIni.ReadString('ERP','Develop_N75_ISO','');
    finally
      MyIni.Free;
    end;
  end;
end;

procedure TPaperRoom.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if Cancel1.enabled or SCancel.Enabled  then
    begin
      messagedlg('You have to save data Report first.',mtwarning,[mbyes],0);
      action:=canone;
    end
  else
    begin
      action:=Cafree;         
    end;
end;

procedure TPaperRoom.FormDestroy(Sender: TObject);
begin
  PaperRoom := nil ;
end;

procedure TPaperRoom.FormCreate(Sender: TObject);
var
    NDate:TDate;
begin
 // sheet1
  ReadIni();
  modify1.Enabled := False;
  Delete1.Enabled := False;
  Insert1.Enabled := False;
  Cancel1.Enabled := False;
  Save1.Enabled := False;

  smodify.Enabled := False;
  sDelete.Enabled := False;
  sInsert.Enabled := False;
  sCancel.Enabled := False;
  sSave.Enabled := False;
  PageControl1.ActivePage := TabSheet1;

  with query1 do
     begin
        Active:=false;
        Sql.Clear;
        Sql.add('select 	left(convert(varchar,getdate(),111),7)   as NDate');
        active:=true;
        NDate:=fieldbyname('NDate').Value;
        active:=false;
        sql.Clear;
        sql.Add('select lbdh from lbzls where  lbzls.lb = ''04'' and bz1=''Tyxuan'' order by lbdh ');
        active:=true;
        cbb3.Items.Clear;
        cbb3.Items.Add('');
        while not eof do
           begin
              cbb3.Items.Add(FieldByName('lbdh').AsString);
          //    dbgrdh1.columns[6].picklist.text:=cbb3.Items.text;
              Next;
           end;
        sql.Clear;
     end;
  DTP1.Date:=Date()-30;
  DTP2.Date:=Date();
  DTP3.Date:=Date()-30;
  DTP4.Date:=Date();
  DTP5.Date:=Date()-30;
  DTP6.Date:=Date();
  with query1 do
     begin
        Active:=false;
        Sql.Clear;
        sql.add('select season from shoetest');
        SQL.add('where len(season)=3 ');
        sql.add('group by season');
        sql.add('order by season desc');
        active:=true;
        Season_edt1.Items.Clear;
        Season_edt1.Items.Add('');
        while not eof do
           begin
              Season_edt1.Items.Add(FieldByName('season').AsString);
              Next;
           end;
        sql.Clear;
     end;
     Season_edt1.text:='';
  if main.Edit2.Text = 'SKX' then begin
    dbgrdh1.Columns[5].Title.Caption := 'SR / SKU / COLOR';
    Label12.Visible := true;
    ComboBox2.Visible := true;
  end;
end;

procedure TPaperRoom.btn1Click(Sender: TObject);
begin
  if (not info_chk.checked)  and (not checkbox2.Checked) and (not checkbox1.Checked ) and (FD_Edt1.text='') and (length(combobox1.text)<10) then
  begin
     showmessage('plz choose Developer Date or Shipping Team Date or Mine or FD');
     checkbox1.Color:=clred;
     checkbox2.Color:=clred;
     FD_Edt1.Color:=clred;
     info_chk.Color:=clred;
     abort;
  end;
  if (main.Edit2.Text = 'SKX') and (ComboBox2.Text = '') then begin
    showmessage('Please Keyin Brand!');
    abort;
  end;
  dbgrdh1.frozencols:=strtoint(edit5.text);
  with Masqry do
  begin
    Active := False;
    SQL.Clear;
    if (checkbox4.Checked = false) then
      SQL.Add('select')
    else
      SQL.Add('select top 64');
    SQL.Add('kfxxzl.DDMH');
    SQL.Add(',isnull(shoetest.ypdh,'''') as ypdh');
    SQL.Add(',kfxxzl.XieMing');
    SQL.Add(',kfxxzl.JiJie as season');
    SQL.Add(',kfzl.kfjc as brand');
    SQL.Add(',YPZL.FD');
    SQL.Add(',shoetest.TestNo');
    if main.Edit2.Text = 'CDC' then
      SQL.Add(',shoetest.Article')
    else
      SQL.Add(',shoetest.Article +'+''' / '''+'+ kfxxzl.Article +'+''' / '''+'+ kfxxzl.YSSM as Article');

    SQL.Add(',kfxxzl.DevType as DevTp');
    SQL.Add(',YPZL.SubType as subTp');
    SQL.Add(',YPZL.KFJD as stage');
    SQL.Add(',TestTime');
    SQL.Add(',YPZL.YPCC as SIZ');
    SQL.Add(',ypzl.quantity');
    SQL.Add(',SPQty');
    SQL.Add(',shoetestshippingmonth.monthqty');
	  SQL.Add(',isnull(shoe.ShoeQTY,0)as QTY');
	  SQL.Add(',isnull(upper.UpperQty,0)as UpperQty ');
	  SQL.Add(',isnull(Bottom.BottomQty,0) as BottomQty ');
    SQL.Add(',kfxxzl.XTMH as LastNo');
    SQL.Add(',kfxxzl.DAOMH as CutDieNo');
    SQL.Add(',Purpose');
    SQL.Add(',ETC');
    SQL.Add(',ShipDate');
    SQL.Add(',PreparationDate_first');
    SQL.Add(',PreparationDate');
    SQL.Add(',CutDate');
    SQL.Add(',CutDate_first');
    SQL.Add(',StitchingDate');
    SQL.Add(',StitchingDate_first');
    SQL.Add(',AssembiyDate');
    SQL.Add(',AssembiyDate_first');
    SQL.Add(',Cast(Memo1 as text) as Memo1');
    SQL.Add(',Cast(Memo2 as text) as Memo2');
    SQL.Add(',shoetest.UserID');
    SQL.Add(',shoetest.UserDate');
    SQL.Add(',choose');
    SQL.Add(',Pending_P');
    SQL.Add(',Pending_C');
    SQL.Add(',Pending_A');
    SQL.Add(',Pending_S');
    SQL.Add(',QIP_Check');
    SQL.Add(',Finish');
    SQL.Add(',Complete');
    SQL.Add(',UserID_s');
    SQL.Add(',UserDate_s');
    SQL.Add(',Construction');
    SQL.Add(',TBcancel');
    SQL.Add(',TBReceive');
    SQL.Add(',TBReceiveDate');
    SQL.Add(',SeeStage');
    SQL.Add(','''' as YN');
    SQL.Add(',xxzlkf.CTS');
    SQL.Add(',shoetest.SeeType,shoetest.Print_Request,shoetest.Print_Check,shoetest.Rubber_Check,shoetest.Rubber_Request');
    SQL.Add('from ShoeTest');
    SQL.Add('left join (select testno,sum(qty) as monthqty from shoetestshipping ');
    if checkbox2.Checked then
    begin
      SQL.Add(' where shipdate_final between ');
      sql.add(' convert(datetime,'''+formatdatetime('yyyy-MM-dd',DTP3.Date)+''')');
      sql.add(' and  ');
      sql.add(' convert(datetime,'''+formatdatetime('yyyy-MM-dd',DTP4.Date)+''')');
    end;
    SQL.Add('group by testno)shoetestshippingmonth on shoetestshippingmonth.testno=shoetest.testno');
    SQL.Add('left join (select testno,sum(qty) as spqty from shoetestshipping group by testno) shoetestshipping on shoetestshipping.testno=shoetest.testno');
    SQL.Add('left join ( select shoetest2.testno,sum(shoetest2.qty) as ShoeQty from shoetest2');
    SQL.Add('left join shoetestdetail on shoetest2.parts=shoetestdetail.yybh where shoetestdetail.class=''shoe'' group by shoetest2.testno) shoe on shoe.testno=ShoeTest.testno');
    SQL.Add('left join ( select shoetest2.testno,sum(shoetest2.qty) as UpperQty from shoetest2');
    SQL.Add('left join shoetestdetail on shoetest2.parts=shoetestdetail.yybh where shoetestdetail.class=''upper'' group by shoetest2.testno) upper on upper.testno=ShoeTest.testno');
    SQL.Add('left join ( select shoetest2.testno,sum(shoetest2.qty) as BottomQty from shoetest2');
    SQL.Add('left join shoetestdetail on shoetest2.parts=shoetestdetail.yybh where shoetestdetail.class=''Bottom'' group by shoetest2.testno) Bottom on Bottom.testno=ShoeTest.testno');
    SQL.Add('left join ypzl on ypzl.ypdh=shoetest.ypdh');
    SQL.Add('left join xxzlkf on ypzl.xiexing=xxzlkf.xiexing and  ypzl.shehao=xxzlkf.shehao');
    SQL.Add('left join kfxxzl on ypzl.xiexing=kfxxzl.xiexing and  ypzl.shehao=kfxxzl.shehao');
    SQL.Add('left join kfzl on kfxxzl.khdh=kfzl.kfdh');
    SQL.Add('left join shoetestshipping SHIPPINGTEAMQRY on SHIPPINGTEAMQRY.TESTNO=shoetest.TESTNO');
    SQL.add('left join kfzl_GS on kfzl_GS.KHBH=kfxxzl.KHDH');
    if main.Edit2.Text <> 'SKX' then
      SQL.Add('where 1=1 and kfzl_GS.GSBH= '''+main.Edit2.Text+''' ')
    else
      SQL.Add('where 1=1 and kfzl_GS.GSBH= '''+ComboBox2.Text+''' ');
    SQL.Add(' and isnull(choose,''0'') = ''0''');
    if length(combobox1.Text)=4 then
       SQL.Add(' and left(shoetest.ypdh,4) = '''+combobox1.Text+''' ');
    if (combobox1.Text <> '') and (length(combobox1.Text)>8)  then
       SQL.Add(' and shoetest.ypdh = '''+combobox1.Text+''' ');
    if cbb2.Text <> '' then
       SQL.Add(' and DevTp like '''+cbb2.Text+'%''');
    if subtype.Text <> '' then
      SQL.Add(' and subTp like '''+subtype.Text+'%''');
    if cbb3.Text <> '' then
      SQL.Add(' and stage like '''+cbb3.Text+'''');
    if testno_edt1.Text <> '' then
      SQL.Add(' and shoetest.testno = '''+testno_edt1.Text+'''');
    if Article_edt1.Text <> '' then
      SQL.Add(' and shoetest.ARTICLE like '''+Article_edt1.Text+'%''');
    if Sku_edt.Text <> '' then
      SQL.Add(' and kfxxzl.ARTICLE like '''+Sku_edt.Text+'%''');
    if CTS_Edit.Text <> '' then
      SQL.Add(' and xxzlkf.CTS like '''+CTS_Edit.Text+'%''');
    if FD_Edt1.Text <> '' then
      SQL.Add(' and shoetest.FD like '''+FD_Edt1.Text+'%''');
    if Season_edt1.Text <>'' then
      SQL.Add(' and season = '''+Season_edt1.Text+'''');
    if checkbox1.checked then
      SQL.Add(' and shoetest.userid ='''+main.edit1.Text+'''');
    if cancelCBX.text='Cancel' then
      SQL.Add(' and shoetest.TBcancel  = ''1''');
    if cancelCBX.text='NotCancel' then
      SQL.Add(' and (shoetest.TBcancel =''0'' or shoetest.TBcancel is null)');
    if Info_chk.Checked then
    begin
      SQL.Add(' and shoetest.userdate between');
      sql.add(' convert(datetime,'''+formatdatetime('yyyy-MM-dd',DTP1.Date)+''')');
      sql.add(' and  ');
      sql.add(' convert(datetime,'''+formatdatetime('yyyy-MM-dd',DTP2.Date)+''')');
    end;
    if CHECKBOX2.Checked then
    begin
      SQL.Add(' and SHIPPINGTEAMQRY.ShipDate_final between');
      sql.add(' convert(datetime,'''+formatdatetime('yyyy-MM-dd',DTP3.Date)+''')');
      sql.add(' and  ');
      sql.add(' convert(datetime,'''+formatdatetime('yyyy-MM-dd',DTP4.Date)+''')');
    end;
    if problem.Checked then
      sql.add(' and ((ypzl.quantity<isnull(shoe.ShoeQTY,0)+isnull(upper.UpperQty,0)+isnull(Bottom.BottomQty,0)) or ypzl.quantity=0)  ');
    if Finish_chk.Checked then
      SQL.Add(' and Finish = 1');
    if (CheckBox5.Checked) then
      SQL.Add(' and CONVERT(SmallDateTime, CONVERT(VARCHAR, TBReceiveDate, 111)) BETWEEN ''' + FormatDateTime('yyyy-MM-dd', DTP5.Date) + ''' AND ''' + FormatDateTime('yyyy-MM-dd', DTP6.Date) + '''');
  	sql.add('group by kfxxzl.DDMH,shoetest.ypdh,kfxxzl.XieMing,kfzl.kfjc,kfxxzl.JiJie,brand,YPZL.FD,shoetest.TestNo,shoetest.Article,kfxxzl.DevType,YPZL.SubType');
    sql.add(',YPZL.KFJD,TestTime,YPZL.YPCC,ypzl.quantity,SPQty,shoetestshippingmonth.monthqty,shoe.ShoeQTY,upper.UpperQty,Bottom.BottomQty');
    sql.add(',kfxxzl.XTMH,kfxxzl.DAOMH,Purpose,ETC,ShipDate,PreparationDate_first,PreparationDate,CutDate,CutDate_first,StitchingDate');
    sql.add(',StitchingDate_first,AssembiyDate,AssembiyDate_first,Memo1,Memo2,shoetest.UserID,shoetest.UserDate,choose,Pending_P,TBcancel,TBReceive,TBReceiveDate,SeeStage');
    sql.add(',Pending_C,Pending_A,Pending_S,QIP_Check,Finish,Complete,UserID_s,UserDate_s,Construction,xxzlkf.CTS,kfxxzl.YSSM,kfxxzl.Article,shoetest.SeeType,shoetest.Print_Request,shoetest.Print_Check,shoetest.Rubber_Check,shoetest.Rubber_Request');
   	sql.add('order by shoetest.TestNo desc');
//    showmessage(sql.text);
    Active := True;
  end;
  modify1.Enabled := True;
  Delete1.Enabled := True;
  Insert1.Enabled := True;
  Cancel1.Enabled := False;
  Save1.Enabled := False;
  Execl1.Enabled := True;

  SIZEqry.Active := True;
  Smodify.Enabled := True;
  SDelete.Enabled := True;
  SInsert.Enabled := True;
  SCancel.Enabled := False;
  SSave.Enabled := False;

  checkbox1.Color:=clBtnFace;
  checkbox2.Color:=clBtnFace;
  FD_Edt1.Color:=clWindow;
  info_chk.Color:=clBtnFace;
end;

procedure TPaperRoom.Modify1Click(Sender: TObject);
begin
  usemodify.text:='userid';
  checkbox1.checked:=true;
  btn1.Click;

  with Masqry do
  begin                           
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
  modify1.Enabled := True;
  Delete1.Enabled := True;
  Insert1.Enabled := True;
  Cancel1.Enabled := True;
  Save1.Enabled := True;
  smodify.Enabled := False;
  sDelete.Enabled := False;
  sInsert.Enabled := False;
  sCancel.Enabled := False;
  sSave.Enabled := False;

end;

procedure TPaperRoom.Cancel1Click(Sender: TObject);
begin
  with Masqry do
  begin
    active:=false;
    requestlive:=false;
    cachedupdates:=false;
    active:=true;
  end;
  usemodify.text:='';
  modify1.Enabled := True;
  Delete1.Enabled := True;
  Insert1.Enabled := True;
  Cancel1.Enabled := False;
  Save1.Enabled := False;

  smodify.Enabled := True;
  sDelete.Enabled := True;
  sInsert.Enabled := True;
  sCancel.Enabled := False;
  sSave.Enabled := False;
end;

procedure TPaperRoom.Delete1Click(Sender: TObject);
begin

  if   Masqry.FieldByName('TBReceive').Value='1' then
  begin
    ShowMessage('TB already be confirmed, can not delete');
    Abort;
  end;

  if  not SIZEqry.Eof then
  begin
    ShowMessage('Must delete Detail data first');
    Abort;
  end;

  if main.edit1.text <> Masqry.FieldByName('USERID').Value then
  begin
    ShowMessage('its not yours');
    Abort;
  end;
  with Masqry do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
    fieldbyname('YN').Value:='0';
  end;

  modify1.Enabled := True;
  Delete1.Enabled := True;
  Insert1.Enabled := True;
  Cancel1.Enabled := True;
  Save1.Enabled := True;

end;

procedure TPaperRoom.Insert1Click(Sender: TObject);
begin
  insert_type:='1';
  Masqry.First;
  with Masqry do
  begin
    requestlive:=true;
    cachedupdates:=true;
    Insert;
  end;
  modify1.Enabled := True;
  Delete1.Enabled := True;
  Insert1.Enabled := True;
  Cancel1.Enabled := True;
  Save1.Enabled := True;

  smodify.Enabled := False;
  sDelete.Enabled := False;
  sInsert.Enabled := False;
  sCancel.Enabled := False;
  sSave.Enabled := False;

end;
                           //
procedure TPaperRoom.Save1Click(Sender: TObject);
var
  i, j: Integer;
  a: string;
  NDate: TDate;
  PurposeFlag: Boolean;
begin
  //取服務器的年月值
  with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.Add('select year(getdate()) as FY,month(getdate()) as FM ,getdate() as NDate');
    active:=true;
    NDate:=fieldbyname('NDate').Value;
    active:=false;
  end;

  try
      Masqry.first;
      for i:=1 to Masqry.RecordCount do
      begin
        case Masqry.updatestatus of
          usinserted:
          begin

            if (Masqry.FieldByName('Purpose').AsString = '') or (Masqry.FieldByName('ETC').AsString = '') then
            begin
              ShowMessage('Please fill in both purpose and ETC columns');
              Abort;
            end;
            PurposeFlag := false;
            for j := 0 to dbgrdh1.Columns[13].PickList.Count-1 do
            begin
              if (dbgrdh1.Columns[13].PickList[j] <> '') AND (Masqry.FieldByName('Purpose').AsString = dbgrdh1.Columns[13].PickList[j]) then
              begin
                PurposeFlag := true;
                Break;
              end;
            end;
            if (PurposeFlag = false) then
            begin
              ShowMessage('Please select a valid purpose');
              Masqry.Edit;
              Masqry.FieldByName('Purpose').Value := '';
              dbgrdh1.SelectedField := Masqry.FieldByName('Purpose');
              Abort;
            end;
            if (Masqry.fieldbyname('stage').AsString='SEE') and ((Masqry.fieldbyname('SeeStage').isnull) or (Masqry.fieldbyname('SeeStage').asstring='')) then
            begin
              showmessage('plz note See for which Stage');
              abort;
            end;
            if (Masqry.fieldbyname('stage').AsString='SEE') and ((Masqry.fieldbyname('Seetype').isnull) or (Masqry.fieldbyname('SeeType').asstring='')) then
            begin
              showmessage('plz note SeeType, 4(hours) ,24(hours) , N(normal)');
              abort;
            end;
            if (Masqry.fieldbyname('stage').AsString='SEE') and ((Masqry.fieldbyname('Purpose').isnull) or (Masqry.fieldbyname('Purpose').asstring='')) then
            begin
              showmessage('plz note See for which Purpose');
              abort;
            end;
            if (Masqry.fieldbyname('stage').AsString='SEE') and ((Masqry.fieldbyname('Testtime').isnull) or (Masqry.fieldbyname('Testtime').asstring='')) then
            begin
              showmessage('plz note See for which Trial Time');
              abort;
            end;
            if (Masqry.fieldbyname('Article').isnull) or (Masqry.fieldbyname('Article').Value = '') or (Masqry.fieldbyname('season').isnull) or (Masqry.fieldbyname('season').value='')  then
            begin
              showmessage('Please Type SR# and Season ');
              abort;
            end
            else
            begin
               with query1 do    //計算TestNo單流水號
               begin
                 active:=false;
                 sql.Clear;
                 sql.Add('select TestNo from ShoeTest where TestNo like '''+Masqry.fieldbyname('season').Value+'%''');
                 sql.add('order by TestNo');
               //  memo1.text:=sql.text;
                 active:=true;
                 if recordcount >0 then
                 begin
                   last;
                   a:=fieldbyname('TestNo').AsString;
                   if length(articlechoose.qry1.fieldbyname('JiJie').AsString) >= 4 then
                   begin
                     a:=copy(a,5,3);
                     a:=inttostr(strtoint(a)+1);
                     while length(a)<3 do
                       begin
                         a:='0'+a;
                       end;
                   end;
                   if length(articlechoose.qry1.fieldbyname('JiJie').AsString) < 4 then
                   begin
                      a:=copy(a,4,4);
                      a:=inttostr(strtoint(a)+1);
                      while length(a)<4 do
                        begin
                          a:='0'+a;
                       end;
                   end;
                 end
                 else
                 begin
                 if length(articlechoose.qry1.fieldbyname('JiJie').AsString) < 4 then
                   begin
                     a:='0001';
                   end;
                 if length(articlechoose.qry1.fieldbyname('JiJie').AsString) >= 4 then
                   begin
                     a:='001';
                   end;
                 end;
                 a :=Masqry.fieldbyname('season').Value+a;
                 active:=false;
               end;

               Masqry.edit;
               Masqry.fieldbyname('TestNo').Value:=a;
               Masqry.FieldByName('userID').Value:=main.edit1.text;
               Masqry.FieldByName('userdate').Value:=formatdatetime('yyyy/MM/dd',Ndate);
               Masqry.FieldByName('Season').Value:=Masqry.FieldByName('Season').Value;
               if not Masqry.fieldbyname('CutDate').IsNull then
                 Masqry.fieldbyname('CutDate').value :=  formatdatetime('yyyy/MM/dd', Masqry.fieldbyname('CutDate').value);
               if not Masqry.fieldbyname('AssembiyDate').IsNull then
                 Masqry.fieldbyname('AssembiyDate').value :=  formatdatetime('yyyy/MM/dd', Masqry.fieldbyname('AssembiyDate').value);
               if not Masqry.fieldbyname('ETC').IsNull then
                 Masqry.fieldbyname('ETC').value :=  formatdatetime('yyyy/MM/dd', Masqry.fieldbyname('ETC').value);
               if not Masqry.fieldbyname('ShipDate').IsNull then
                 Masqry.fieldbyname('ShipDate').value :=  formatdatetime('yyyy/MM/dd', Masqry.fieldbyname('ShipDate').value);
               if not Masqry.fieldbyname('PreparationDate').IsNull then
                 Masqry.fieldbyname('PreparationDate').value :=  formatdatetime('yyyy/MM/dd', Masqry.fieldbyname('PreparationDate').value);
               if not Masqry.fieldbyname('StitchingDate').IsNull then
                 Masqry.fieldbyname('StitchingDate').value :=  formatdatetime('yyyy/MM/dd', Masqry.fieldbyname('StitchingDate').value);
               if not Masqry.fieldbyname('Complete').IsNull then
                 Masqry.fieldbyname('Complete').value :=  formatdatetime('yyyy/MM/dd', Masqry.fieldbyname('Complete').value);
               Masqry.FieldByName('Choose').Value:='0';
               UpSQL1.apply(ukinsert);
            end;
          end;
        usmodified:
          begin
            if Masqry.fieldbyname('YN').value='0' then
            begin
              UpSQL1.apply(ukdelete);
            end
            else begin
              if (Masqry.FieldByName('Purpose').AsString = '') or (Masqry.FieldByName('ETC').AsString = '') then
              begin
                ShowMessage('Please fill in both purpose and ETC columns');
                Abort;
              end;
              PurposeFlag := false;
              for j := 0 to dbgrdh1.Columns[13].PickList.Count-1 do
              begin
                if (dbgrdh1.Columns[13].PickList[j] <> '') AND (Masqry.FieldByName('Purpose').AsString = dbgrdh1.Columns[13].PickList[j]) then
                begin
                  PurposeFlag := true;
                  Break;
                end;
              end;
              if (PurposeFlag = false) then
              begin
                ShowMessage('Please select a valid purpose');
                Masqry.Edit;
                Masqry.FieldByName('Purpose').Value := '';
                dbgrdh1.SelectedField := Masqry.FieldByName('Purpose');
                Abort;
              end;
              if (Masqry.fieldbyname('stage').AsString='SEE') and ((Masqry.fieldbyname('SeeStage').isnull) or (Masqry.fieldbyname('SeeStage').asstring='')) then
              begin
                showmessage('plz note See for which Stage');
                abort;
              end;
              Masqry.edit;
              //Masqry.FieldByName('Season').Value:=Masqry.FieldByName('Season').Value;
              Masqry.FieldByName('Choose').Value:='0';
              //
              if (Masqry.FieldByName('ETC').OldValue <> Masqry.FieldByName('ETC').Value) then
              begin
                with Query1 do
                begin
                  active:=false;
                  SQL.Clear;
                  SQL.Add('select * from ETCTemp where Testno = '''+Masqry.FieldByName('Testno').AsString+''' ');
                  active:=true;
                end;
                if Query1.RecordCount=0 then
                begin
                  with Qry_ETC do
                  begin
                    Active:=false;
                    SQL.Clear;
                    SQL.Add('INSERT into ETCTemp Values');
                    SQL.Add('('''+Masqry.fieldbyname('TestNo').AsString+''',');
                    if Masqry.fieldbyname('ETC').OldValue = Null then
                      SQL.Add('NULL,')
                    else
                      SQL.Add(''''+FormatDateTime('yyyy/MM/dd', Masqry.fieldbyname('ETC').OldValue)+''',');
                    SQL.Add(''''+FormatDateTime('yyyy/MM/dd', Masqry.fieldbyname('ETC').Value)+''',');
                    SQL.Add(''''+main.Edit1.text+''''+',getdate())');
                    //funcobj.WriteErrorLog(sql.Text);
                    ExecSQL;
                  end;
                end else
                begin
                  with Qry_ETC do
                  begin
                    Active:=false;
                    SQL.Clear;
                    SQL.Add('UPDATE ETCTemp SET userid ='''+main.Edit1.Text+''', userdate = getdate()');
                    SQL.Add(',OrginalETC='''+FormatDateTime('yyyy/MM/dd', Masqry.fieldbyname('ETC').OldValue)+''',ETC='''+FormatDateTime('yyyy/MM/dd', Masqry.fieldbyname('ETC').Value)+''' ');
                    SQL.Add('WHERE TestNo = ''' + Masqry.fieldbyname('TestNo').AsString+''' ');
                    ExecSQL;
                  end;
                end;
              end;
              //
              UpSQL1.apply(ukmodify);
            end;
          end;
        end;
        Masqry.next;
      end;
      modify1.Enabled := True;
      Delete1.Enabled := True;
      Insert1.Enabled := True;
      Cancel1.Enabled := False;
      Save1.Enabled := False;

      smodify.Enabled := True;
      sDelete.Enabled := True;
      sInsert.Enabled := True;
      sCancel.Enabled := False;
      sSave.Enabled := False;
      with Masqry do
      begin
        active:=false;
        requestlive:=false;
        cachedupdates:=false;
        active:=true;
      end;
  usemodify.text:='';
  except
    Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
  end;
end;

procedure TPaperRoom.dbgrdh1Columns1EditButtonClick(Sender: TObject;
  var Handled: Boolean);
begin
  if ArticleChoose<>nil then
    begin
       ArticleChoose.show;
       ArticleChoose.windowstate:=wsmaximized;
    end
  else
    begin
       ArticleChoose:=TArticleChoose.create(self);
       ArticleChoose.show;
    end;

end;

procedure TPaperRoom.dbgrdh3Columns0EditButtonClick(Sender: TObject;
  var Handled: Boolean);
begin
  if choosedetail<>nil then
    begin
       choosedetail.show;
       choosedetail.windowstate:=wsmaximized;
    end
  else
    begin
       choosedetail:=Tchoosedetail.create(self);
       choosedetail.show;
    end;

end;
       

procedure TPaperRoom.MasqryMemo1GetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin
  Text := Sender.AsString;
end;

procedure TPaperRoom.MasqryMemo2GetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin
  Text := Sender.AsString;
end;




procedure TPaperRoom.dbgrdh1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if Masqry.FieldByName('YN').value='0' then
  begin
    dbgrdh1.canvas.font.color:=clred;
  end;

end;




procedure TPaperRoom.dbgrdh2Columns0EditButtonClick(Sender: TObject;
  var Handled: Boolean);
begin
  if ShoeTestMat<>nil then
    begin
       ShoeTestMat.show;
       ShoeTestMat.windowstate:=wsmaximized;
    end
  else
    begin
       ShoeTestMat:=TShoeTestMat.create(self);
       ShoeTestMat.show;
    end;
end;


procedure TPaperRoom.dbgrdh1Columns3UpdateData(Sender: TObject;
  var Text: String; var Value: Variant; var UseText, Handled: Boolean);
begin
  Masqry.Edit;
  Masqry.FieldByName('stage').Value := '';
end;

procedure TPaperRoom.StringField7Change(Sender: TField);
begin
//  DevTpSet_a;
end;

procedure TPaperRoom.Execl1Click(Sender: TObject);
begin
  if (Sizeqry.FieldByName('depname').AsString='') or (Sizeqry.FieldByName('parts').AsString='') or (Sizeqry.FieldByName('qty').AsString='') then
  begin
    showmessage('Not enough information');
    abort;
  end;
  if (masqry.FieldByName('stage').AsString='SEE') or (masqry.FieldByName('stage').AsString='SE1') or (masqry.FieldByName('stage').AsString='SE2')
  or (masqry.FieldByName('stage').AsString='SE3') or (masqry.FieldByName('stage').AsString='SE4') then
     SeeExcel();
  if (masqry.FieldByName('stage').AsString<>'SEE') and (masqry.FieldByName('stage').AsString<>'SE1') and (masqry.FieldByName('stage').AsString<>'SE2')
  and (masqry.FieldByName('stage').AsString<>'SE3') and (masqry.FieldByName('stage').AsString<>'SE4') then
     OtherExcel();
end;


procedure TPaperRoom.PrintClick(Sender: TObject);
var
  J:Variant;
  i:Integer;
begin
  if Masqry.RequestLive then
  begin
    showmessage('Pls save data first.');
    abort;
  end;

  if SIZEqry.RequestLive then
  begin
    showmessage('Pls save data first.');
    abort;
  end;
  j := Masqry.fieldbyname('TestNO').Value ;
    Print_no := 1;
    DataMovPrint(dbgrdh1,qry_Print,Masqry);
    PapaerRoom_print:=tPapaerRoom_print.Create(nil);
    PapaerRoom_print.quickrep1.prepare;
    //PapaerRoom_print.Qpage1.caption:=inttostr(PapaerRoom_print.quickrep1.QRPrinter.pagecount);
    PapaerRoom_print.quickrep1.preview;
    PapaerRoom_print.Free;
  Masqry.Locate('TestNo',J,[]);  //指到原來的記錄

end;






procedure TPaperRoom.MasqryPending_PChange(Sender: TField);
begin
  if Masqry.FieldByName('Pending_P').Value = '1' then
    Masqry.FieldByName('PreparationDate').Value := null ;

end;

procedure TPaperRoom.MasqryPending_CChange(Sender: TField);
begin
  if Masqry.FieldByName('Pending_C').Value = '1' then
    Masqry.FieldByName('CutDate').Value := null ;
end;

procedure TPaperRoom.MasqryPending_AChange(Sender: TField);
begin
  if Masqry.FieldByName('Pending_A').Value = '1' then
    Masqry.FieldByName('AssembiyDate').Value := null ;
end;

procedure TPaperRoom.MasqryPending_SChange(Sender: TField);
begin
  if Masqry.FieldByName('Pending_S').Value = '1' then
    Masqry.FieldByName('StitchingDate').Value := null ;
end;



procedure TPaperRoom.SModifyClick(Sender: TObject);
begin
  if Masqry.Active then
    if Masqry.RecordCount > 0 then
    begin
      with SIZEqry do
      begin
        requestlive:=true;
        cachedupdates:=true;
        edit;
      end;
      Smodify.Enabled := True;
      SDelete.Enabled := True;
      SInsert.Enabled := True;
      SCancel.Enabled := True;
      SSave.Enabled := True;

      modify1.Enabled := False;
      Delete1.Enabled := False;
      Insert1.Enabled := False;
      Cancel1.Enabled := False;
      Save1.Enabled := False;
    end;
end;

procedure TPaperRoom.SDeleteClick(Sender: TObject);
begin
  if   Masqry.FieldByName('TBReceive').Value='1' then
  begin
    ShowMessage('TB already be confirmed, can not delete');
    Abort;
  end;
  with SIZEqry do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
    fieldbyname('YN').Value:='0';
  end;
  SModify.Enabled := false;
  SDelete.Enabled := false;
  SInsert.Enabled := false;
  SCancel.Enabled := True;
  SSave.Enabled := True;
end;

procedure TPaperRoom.SInsertClick(Sender: TObject);
begin
  if Masqry.Active then
    if Masqry.RecordCount > 0 then
    begin
      with SIZEqry do
      begin
        requestlive:=true;
        cachedupdates:=true;
        Insert;
      end;
      smodify.Enabled := True;
      sDelete.Enabled := True;
      sInsert.Enabled := True;
      sCancel.Enabled := True;
      sSave.Enabled := True;
      modify1.Enabled := False;
      Delete1.Enabled := False;
      Insert1.Enabled := False;
      Cancel1.Enabled := False;
      Save1.Enabled := False;

    end;
end;

procedure TPaperRoom.SCancelClick(Sender: TObject);
begin
  with SIZEqry do
  begin
    requestlive:=False;
    cachedupdates:=False;
  end;
  smodify.Enabled := True;
  sDelete.Enabled := True;
  sInsert.Enabled := True;
  sCancel.Enabled := False;
  sSave.Enabled := False;
  modify1.Enabled := True;
  Delete1.Enabled := True;
  Insert1.Enabled := True;
  Cancel1.Enabled := False;
  Save1.Enabled := False;

end;

{procedure TPaperRoom.dbgrdh3GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if SIZEqry.FieldByName('YN').value='0' then
  begin
    dbgrdh3.canvas.font.color:=clred;
    smodify.Enabled := True;
    sDelete.Enabled := True;
    sInsert.Enabled := True;
    sCancel.Enabled := True;
    sSave.Enabled := True;
  end;
end;         }

procedure TPaperRoom.SSaveClick(Sender: TObject);
var
  i : Integer;
  NDate:TDate;
begin
  with query1 do          //取服務器的年月值
    begin
      active:=false;
      sql.Clear;
      sql.Add('select year(getdate()) as FY,month(getdate()) as FM ,getdate() as NDate');
      active:=true;
      NDate:=fieldbyname('NDate').Value;
      active:=false;
    end;
  try
      SIZEqry.first;
      for i:=1 to SIZEqry.RecordCount do
      begin
        if (SIZEqry.fieldbyname('DepName').IsNull) or (SIZEqry.fieldbyname('DepName').Value = '') then
        begin
          ShowMessage('Dep. Name cat''t empty');
          Abort;
        end;
        if (SIZEqry.fieldbyname('QTY').IsNull) or (SIZEqry.fieldbyname('QTY').Value=0) then
        begin
          ShowMessage('Qty cat''t empty');
          Abort;
        end;
        case SIZEqry.updatestatus of
          usinserted:
          begin
            SIZEqry.edit;
            SIZEqry.FieldByName('userID').Value:=main.edit1.text;
            SIZEqry.FieldByName('userdate').Value:=formatdatetime('yyyy/MM/dd',Ndate);
            SIZEqry.fieldbyname('TestNo').value := Masqry.fieldbyname('TestNo').value;
            UpdateSQL2.apply(ukinsert);
          end;
        usmodified:
           begin
            if SIZEqry.fieldbyname('YN').value='0'then
              begin
                UpdateSQL2.apply(ukdelete);
              end
            else
            begin
              SIZEqry.edit;
              SIZEqry.FieldByName('userID').Value:=main.edit1.text;
              SIZEqry.FieldByName('userdate').Value:=formatdatetime('yyyy/MM/dd',Ndate);
              SIZEqry.fieldbyname('TestNo').value := Masqry.fieldbyname('TestNo').value;
              UpdateSQL2.apply(ukmodify);
            end;

           end;
        end;
        SIZEqry.next;
      end;
      with SIZEqry do
      begin
        requestlive:=False;
        cachedupdates:=False;
      end;
      smodify.Enabled := True;
      sDelete.Enabled := True;
      sInsert.Enabled := True;
      sCancel.Enabled := False;
      sSave.Enabled := False;
      modify1.Enabled := True;
      Delete1.Enabled := True;
      Insert1.Enabled := True;
      Cancel1.Enabled := False;
      Save1.Enabled := False;
      SIZEqry.Active := false;
      SIZEqry.Active := true;
      sSave.Enabled := False;
      Execl1.Enabled := False;
  except
    Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
  end;

end;

procedure TPaperRoom.dbgrdh3Columns1UpdateData(Sender: TObject;
  var Text: String; var Value: Variant; var UseText, Handled: Boolean);
begin
  // 計算總量是否超過
  SCancel.Tag := 0;
  if not SIZEqry.FieldByName('Qty').IsNull then
    SCancel.Tag := SIZEqry.FieldByName('Qty').Value;

end;

procedure TPaperRoom.SIZEqryQtyChange(Sender: TField);
begin
  // 計算數量
  if ((SIZEqry.FieldByName('Qty').Value+ dbgrdh3.FieldColumns['Qty'].Footers.Items[0].SumValue-SCancel.Tag) > Masqry.FieldByName('Qty').Value) then
  begin
    ShowMessage('Qty > Total Qty');
    SIZEqry.FieldByName('Qty').Value := SCancel.Tag;
    Abort;
  end;

end;









procedure TPaperRoom.ScreenShow(i:Integer;Tdbgrdh: TDBGridEh);
var
  j : Integer;
begin
  if i = 1 then      // All
  begin
    for j := 0 to Tdbgrdh.FieldCount-1 do
    begin
      // FD 部分
      if Tdbgrdh.Fields[j].FieldName = 'Brand' then Tdbgrdh.Columns[j].Width :=  44;
      if Tdbgrdh.Fields[j].FieldName = 'DevTp' then Tdbgrdh.Columns[j].Width :=  62;
      if Tdbgrdh.Fields[j].FieldName = 'stage' then Tdbgrdh.Columns[j].Width :=  57;
      if Tdbgrdh.Fields[j].FieldName = 'JiJie' then Tdbgrdh.Columns[j].Width :=  50;
      if Tdbgrdh.Fields[j].FieldName = 'FD'    then Tdbgrdh.Columns[j].Width :=  61;
      if Tdbgrdh.Fields[j].FieldName = 'XieMing' then Tdbgrdh.Columns[j].Width :=  161;
      if Tdbgrdh.Fields[j].FieldName = 'SIZ' then Tdbgrdh.Columns[j].Width :=  37;
      if Tdbgrdh.Fields[j].FieldName = 'QTY' then Tdbgrdh.Columns[j].Width :=  49;
      if Tdbgrdh.Fields[j].FieldName = 'LastNo' then Tdbgrdh.Columns[j].Width :=  59;
      if Tdbgrdh.Fields[j].FieldName = 'CutDieNo' then Tdbgrdh.Columns[j].Width :=  91;
      if Tdbgrdh.Fields[j].FieldName = 'Purpose' then Tdbgrdh.Columns[j].Width :=  94;
      if Tdbgrdh.Fields[j].FieldName = 'TestTime' then Tdbgrdh.Columns[j].Width :=  60;
      if Tdbgrdh.Fields[j].FieldName = 'ETC'    then Tdbgrdh.Columns[j].Width :=  60;
      if Tdbgrdh.Fields[j].FieldName = 'Memo1' then Tdbgrdh.Columns[j].Width :=  300;
      // 綠色部分
      if Tdbgrdh.Fields[j].FieldName = 'ShipDate' then Tdbgrdh.Columns[j].Width :=  112;
      if Tdbgrdh.Fields[j].FieldName = 'PreparationDate'    then Tdbgrdh.Columns[j].Width :=  107;
      if Tdbgrdh.Fields[j].FieldName = 'Pending_P' then Tdbgrdh.Columns[j].Width :=  57;
      if Tdbgrdh.Fields[j].FieldName = 'CutDate' then Tdbgrdh.Columns[j].Width :=  112;
      if Tdbgrdh.Fields[j].FieldName = 'Pending_C' then Tdbgrdh.Columns[j].Width :=  57;
      if Tdbgrdh.Fields[j].FieldName = 'StitchingDate' then Tdbgrdh.Columns[j].Width :=  89;
      if Tdbgrdh.Fields[j].FieldName = 'Pending_S' then Tdbgrdh.Columns[j].Width :=  57;
      if Tdbgrdh.Fields[j].FieldName = 'AssembiyDate' then Tdbgrdh.Columns[j].Width :=  97;
      if Tdbgrdh.Fields[j].FieldName = 'Pending_A' then Tdbgrdh.Columns[j].Width :=  57;
      if Tdbgrdh.Fields[j].FieldName = 'Memo2'    then Tdbgrdh.Columns[j].Width :=  300;
      if Tdbgrdh.Fields[j].FieldName = 'Finish' then Tdbgrdh.Columns[j].Width :=  42;
      if Tdbgrdh.Fields[j].FieldName = 'Complete' then Tdbgrdh.Columns[j].Width :=  73;
    end;
  end;
  if i = 2 then     // FD
  begin
    for j := 0 to Tdbgrdh.FieldCount-1 do
    begin
      // FD 部分
      if Tdbgrdh.Fields[j].FieldName = 'Brand' then Tdbgrdh.Columns[j].Width :=  44;
      if Tdbgrdh.Fields[j].FieldName = 'DevTp' then Tdbgrdh.Columns[j].Width :=  62;
      if Tdbgrdh.Fields[j].FieldName = 'stage' then Tdbgrdh.Columns[j].Width :=  57;
      if Tdbgrdh.Fields[j].FieldName = 'JiJie' then Tdbgrdh.Columns[j].Width :=  50;
      if Tdbgrdh.Fields[j].FieldName = 'FD'    then Tdbgrdh.Columns[j].Width :=  61;
      if Tdbgrdh.Fields[j].FieldName = 'XieMing' then Tdbgrdh.Columns[j].Width :=  161;
      if Tdbgrdh.Fields[j].FieldName = 'SIZ' then Tdbgrdh.Columns[j].Width :=  37;
      if Tdbgrdh.Fields[j].FieldName = 'QTY' then Tdbgrdh.Columns[j].Width :=  49;
      if Tdbgrdh.Fields[j].FieldName = 'LastNo' then Tdbgrdh.Columns[j].Width :=  59;
      if Tdbgrdh.Fields[j].FieldName = 'CutDieNo' then Tdbgrdh.Columns[j].Width :=  91;
      if Tdbgrdh.Fields[j].FieldName = 'Purpose' then Tdbgrdh.Columns[j].Width :=  94;
      if Tdbgrdh.Fields[j].FieldName = 'TestTime' then Tdbgrdh.Columns[j].Width :=  60;
      if Tdbgrdh.Fields[j].FieldName = 'ETC'    then Tdbgrdh.Columns[j].Width :=  60;
      if Tdbgrdh.Fields[j].FieldName = 'Memo1' then Tdbgrdh.Columns[j].Width :=  300;
      // 綠色部分
      if Tdbgrdh.Fields[j].FieldName = 'ShipDate' then Tdbgrdh.Columns[j].Width :=  0;
      if Tdbgrdh.Fields[j].FieldName = 'PreparationDate'    then Tdbgrdh.Columns[j].Width :=  0;
      if Tdbgrdh.Fields[j].FieldName = 'Pending_P' then Tdbgrdh.Columns[j].Width :=  0;
      if Tdbgrdh.Fields[j].FieldName = 'CutDate' then Tdbgrdh.Columns[j].Width :=  0;
      if Tdbgrdh.Fields[j].FieldName = 'Pending_C' then Tdbgrdh.Columns[j].Width :=  0;
      if Tdbgrdh.Fields[j].FieldName = 'StitchingDate' then Tdbgrdh.Columns[j].Width :=  0;
      if Tdbgrdh.Fields[j].FieldName = 'Pending_S' then Tdbgrdh.Columns[j].Width :=  0;
      if Tdbgrdh.Fields[j].FieldName = 'AssembiyDate' then Tdbgrdh.Columns[j].Width :=  0;
      if Tdbgrdh.Fields[j].FieldName = 'Pending_A' then Tdbgrdh.Columns[j].Width :=  0;
      if Tdbgrdh.Fields[j].FieldName = 'Memo2'    then Tdbgrdh.Columns[j].Width :=  0;
      if Tdbgrdh.Fields[j].FieldName = 'Finish' then Tdbgrdh.Columns[j].Width :=  0;
      if Tdbgrdh.Fields[j].FieldName = 'Complete' then Tdbgrdh.Columns[j].Width :=  0;
    end;
  end;
  if i = 3 then      // green
  begin
    for j := 0 to Tdbgrdh.FieldCount-1 do
    begin
      // FD 部分
      if Tdbgrdh.Fields[j].FieldName = 'Brand' then Tdbgrdh.Columns[j].Width :=  0;
      if Tdbgrdh.Fields[j].FieldName = 'DevTp' then Tdbgrdh.Columns[j].Width :=  0;
      if Tdbgrdh.Fields[j].FieldName = 'stage' then Tdbgrdh.Columns[j].Width :=  0;
      if Tdbgrdh.Fields[j].FieldName = 'JiJie' then Tdbgrdh.Columns[j].Width :=  0;
      if Tdbgrdh.Fields[j].FieldName = 'FD'    then Tdbgrdh.Columns[j].Width :=  0;
      if Tdbgrdh.Fields[j].FieldName = 'XieMing' then Tdbgrdh.Columns[j].Width :=  0;
      if Tdbgrdh.Fields[j].FieldName = 'SIZ' then Tdbgrdh.Columns[j].Width :=  0;
      if Tdbgrdh.Fields[j].FieldName = 'QTY' then Tdbgrdh.Columns[j].Width :=  0;
      if Tdbgrdh.Fields[j].FieldName = 'LastNo' then Tdbgrdh.Columns[j].Width :=  0;
      if Tdbgrdh.Fields[j].FieldName = 'CutDieNo' then Tdbgrdh.Columns[j].Width :=  0;
      if Tdbgrdh.Fields[j].FieldName = 'Purpose' then Tdbgrdh.Columns[j].Width :=  0;
      if Tdbgrdh.Fields[j].FieldName = 'TestTime' then Tdbgrdh.Columns[j].Width :=  0;
      if Tdbgrdh.Fields[j].FieldName = 'ETC'    then Tdbgrdh.Columns[j].Width :=  0;
      if Tdbgrdh.Fields[j].FieldName = 'Memo1' then Tdbgrdh.Columns[j].Width :=  0;
      // 綠色部分
      if Tdbgrdh.Fields[j].FieldName = 'ShipDate' then Tdbgrdh.Columns[j].Width :=  112;
      if Tdbgrdh.Fields[j].FieldName = 'PreparationDate'    then Tdbgrdh.Columns[j].Width :=  107;
      if Tdbgrdh.Fields[j].FieldName = 'Pending_P' then Tdbgrdh.Columns[j].Width :=  57;
      if Tdbgrdh.Fields[j].FieldName = 'CutDate' then Tdbgrdh.Columns[j].Width :=  112;
      if Tdbgrdh.Fields[j].FieldName = 'Pending_C' then Tdbgrdh.Columns[j].Width :=  57;
      if Tdbgrdh.Fields[j].FieldName = 'StitchingDate' then Tdbgrdh.Columns[j].Width :=  89;
      if Tdbgrdh.Fields[j].FieldName = 'Pending_S' then Tdbgrdh.Columns[j].Width :=  57;
      if Tdbgrdh.Fields[j].FieldName = 'AssembiyDate' then Tdbgrdh.Columns[j].Width :=  97;
      if Tdbgrdh.Fields[j].FieldName = 'Pending_A' then Tdbgrdh.Columns[j].Width :=  57;
      if Tdbgrdh.Fields[j].FieldName = 'Memo2'    then Tdbgrdh.Columns[j].Width :=  300;
      if Tdbgrdh.Fields[j].FieldName = 'Finish' then Tdbgrdh.Columns[j].Width :=  42;
      if Tdbgrdh.Fields[j].FieldName = 'Complete' then Tdbgrdh.Columns[j].Width :=  73;
    end;
  end;
  if i = 4 then      // QIP
  begin
    for j := 0 to Tdbgrdh.FieldCount-1 do
    begin
      // FD 部分
      if Tdbgrdh.Fields[j].FieldName = 'Brand' then Tdbgrdh.Columns[j].Width :=  0;
      if Tdbgrdh.Fields[j].FieldName = 'DevTp' then Tdbgrdh.Columns[j].Width :=  0;
      if Tdbgrdh.Fields[j].FieldName = 'stage' then Tdbgrdh.Columns[j].Width :=  0;
      if Tdbgrdh.Fields[j].FieldName = 'JiJie' then Tdbgrdh.Columns[j].Width :=  0;
      if Tdbgrdh.Fields[j].FieldName = 'FD'    then Tdbgrdh.Columns[j].Width :=  0;
      if Tdbgrdh.Fields[j].FieldName = 'XieMing' then Tdbgrdh.Columns[j].Width :=  0;
      if Tdbgrdh.Fields[j].FieldName = 'SIZ' then Tdbgrdh.Columns[j].Width :=  0;
      if Tdbgrdh.Fields[j].FieldName = 'QTY' then Tdbgrdh.Columns[j].Width :=  0;
      if Tdbgrdh.Fields[j].FieldName = 'LastNo' then Tdbgrdh.Columns[j].Width :=  0;
      if Tdbgrdh.Fields[j].FieldName = 'CutDieNo' then Tdbgrdh.Columns[j].Width :=  0;
      if Tdbgrdh.Fields[j].FieldName = 'Purpose' then Tdbgrdh.Columns[j].Width :=  0;
      if Tdbgrdh.Fields[j].FieldName = 'TestTime' then Tdbgrdh.Columns[j].Width :=  0;
      if Tdbgrdh.Fields[j].FieldName = 'ETC'    then Tdbgrdh.Columns[j].Width :=  0;
      if Tdbgrdh.Fields[j].FieldName = 'Memo1' then Tdbgrdh.Columns[j].Width :=  0;
      // 綠色部分
      if Tdbgrdh.Fields[j].FieldName = 'ShipDate' then Tdbgrdh.Columns[j].Width :=  0;
      if Tdbgrdh.Fields[j].FieldName = 'PreparationDate'    then Tdbgrdh.Columns[j].Width :=  0;
      if Tdbgrdh.Fields[j].FieldName = 'Pending_P' then Tdbgrdh.Columns[j].Width :=  0;
      if Tdbgrdh.Fields[j].FieldName = 'CutDate' then Tdbgrdh.Columns[j].Width :=  0;
      if Tdbgrdh.Fields[j].FieldName = 'Pending_C' then Tdbgrdh.Columns[j].Width :=  0;
      if Tdbgrdh.Fields[j].FieldName = 'StitchingDate' then Tdbgrdh.Columns[j].Width :=  0;
      if Tdbgrdh.Fields[j].FieldName = 'Pending_S' then Tdbgrdh.Columns[j].Width :=  0;
      if Tdbgrdh.Fields[j].FieldName = 'AssembiyDate' then Tdbgrdh.Columns[j].Width :=  0;
      if Tdbgrdh.Fields[j].FieldName = 'Pending_A' then Tdbgrdh.Columns[j].Width :=  0;
      if Tdbgrdh.Fields[j].FieldName = 'Memo2'    then Tdbgrdh.Columns[j].Width :=  0;
      if Tdbgrdh.Fields[j].FieldName = 'Finish' then Tdbgrdh.Columns[j].Width :=  0;
      if Tdbgrdh.Fields[j].FieldName = 'Complete' then Tdbgrdh.Columns[j].Width :=  0;
    end;
  end; 
end;

procedure TPaperRoom.rb1Click(Sender: TObject);
begin
  ScreenShow(1,dbgrdh1);
end;

procedure TPaperRoom.rb2Click(Sender: TObject);
begin
  ScreenShow(2,dbgrdh1);
end;

procedure TPaperRoom.rb3Click(Sender: TObject);
begin
  ScreenShow(3,dbgrdh1);
end;

procedure TPaperRoom.rb4Click(Sender: TObject);
begin
  ScreenShow(4,dbgrdh1);
end;









procedure TPaperRoom.KeyinSet(s:string;Tdbgrdh: TDBGridEh;Lquery:TQuery);
var
  i : Integer;
begin
  if Copy(s,1,1) = 'g' then
    for i := 0 to Tdbgrdh.Columns.Count-1 do
    begin
      if (Tdbgrdh.Columns.Items[i].Title.Color <> clSilver) and (Tdbgrdh.Columns.Items[i].Title.Color <> $0080FFFF) then
        Tdbgrdh.Fields[i].ReadOnly := True;
      if Pos('RW',S) > 0 then
      begin
        if Tdbgrdh.Columns.Items[i].Title.Color = $0080FF80 then       // gleen
          Tdbgrdh.Fields[i].ReadOnly := False;
        if Tdbgrdh.Columns.Items[i].Title.Color = clWindow then        // white
        begin
          Tdbgrdh.Fields[i].ReadOnly := True;
          Tdbgrdh.FieldColumns['Article'].ButtonStyle:= cbsnone;
        end;
      end
      else
        Tdbgrdh.Fields[i].ReadOnly := True;
    end;
  if (Copy(s,1,1) = 'w')   then
    for i := 0 to Tdbgrdh.Columns.Count-1 do
    begin
      if (Tdbgrdh.Columns.Items[i].Title.Color <> clSilver) and (Tdbgrdh.Columns.Items[i].Title.Color <> $0080FFFF) then
        Tdbgrdh.Fields[i].ReadOnly := True;
      if Pos('RW',S) > 0 then
      begin
        if Tdbgrdh.Columns.Items[i].Title.Color = $0080FF80 then       // gleen
          Tdbgrdh.Fields[i].ReadOnly := True;
        if Tdbgrdh.Columns.Items[i].Title.Color = clWindow then        // white
          Tdbgrdh.Fields[i].ReadOnly := False;
      end
      else
        Tdbgrdh.Fields[i].ReadOnly := True;
    end;
  if (Copy(s,1,1) = 'r')   then
    for i := 0 to Tdbgrdh.Columns.Count-1 do
    begin
      if (Tdbgrdh.Columns.Items[i].Title.Color <> clSilver) and (Tdbgrdh.Columns.Items[i].Title.Color <> $0080FFFF) then
        Tdbgrdh.Fields[i].ReadOnly := True;

      if Pos('RW',S) > 0 then
      begin
        Tdbgrdh.FieldColumns['clbh'].ButtonStyle:= cbsnone;
        if Tdbgrdh.Columns.Items[i].Title.Color = $0080FF80 then       // gleen
          Tdbgrdh.Fields[i].ReadOnly := True;
        if Tdbgrdh.Columns.Items[i].Title.Color = clRed then        // red    purcharse
          Tdbgrdh.Fields[i].ReadOnly := False;
      end
      else
        Tdbgrdh.Fields[i].ReadOnly := True;

    end;
  if s = 'R'  then        // only read
    for i := 0 to Tdbgrdh.Columns.Count-1 do
    begin
      Tdbgrdh.Fields[i].ReadOnly := True;
    end;
end;

procedure TPaperRoom.emptychk(s:string;Tdbgrdh: TDBGridEh;Lquery:TQuery);
var
  i:Integer;
begin
  if (Copy(s,1,1) = 'w')   then
    for i := 0 to Tdbgrdh.Columns.Count-1 do
    begin
      if Pos('RW',S) > 0 then
      begin
        if Tdbgrdh.Fields[i].DisplayName <> 'ShipDate' then
          if Tdbgrdh.Fields[i].DisplayName <> 'Memo1' then
            if Tdbgrdh.Fields[i].DisplayName <> 'TestTime' then
              if Tdbgrdh.Columns.Items[i].Title.Color = clWindow then        // white
              begin
                if (Lquery.FieldByName(Tdbgrdh.Columns.Items[i].FieldName).IsNull) or (Lquery.FieldByName(Tdbgrdh.Columns.Items[i].FieldName).AsString = '') then
                begin
                  ShowMessage('Data not empty');
                  Abort;
                end;
              end;
      end;
    end;
end;





procedure TPaperRoom.DataMovPrint(Tdbgrdh: TDBGridEh;Lquery,Oquery:TQuery);
var
  i : Integer;
  Str: string;
begin
  Str := '';
  if Tdbgrdh.SelectedRows.Count > 0 then
  begin
    with Tdbgrdh.DataSource.DataSet do
      for I := 0 to Tdbgrdh.SelectedRows.Count-1 do
      begin
        GotoBookmark(pointer(Tdbgrdh.SelectedRows.Items[I]));
        if I > 0 then
          Str := Str+', ';
        Str:= Str+#39+FieldByName('Testno').AsString+#39;
      end;
    with Lquery do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select kfxxzl.XieXing');
      SQL.Add(',kfxxzl.DDMH');
      SQL.Add(',kfxxzl.DAOMH');
      SQL.Add(',kfxxzl.XieMing');
      SQL.Add(',kfxxzl.JiJie');
      SQL.Add(',case kfxxzl.KHDH');
      SQL.Add('      when ''0038'' then ''Adidas''');
      SQL.Add('      when ''0060'' then ''Reebok''');
      SQL.Add('      else '''' end as Brand');
      SQL.Add(',kfxxzl.KHDH');
      SQL.Add(',kfxxzl.GENDER');
      SQL.Add(',kfxxzl.FD');
      SQL.Add(',kfxxzl.DevType');
      SQL.Add('  ,shoetest.TestNo');
      SQL.Add('	,shoetest.Article');
      SQL.Add('	,shoetest.DevTp');
      SQL.Add('	,shoetest.stage');
      SQL.Add('	,shoetest.TestTime');
      SQL.Add('	,shoetest.Season');
      SQL.Add('	,shoetest.SIZ');
      SQL.Add('	,shoetest.QTY');
      SQL.Add('	,shoetest.LastNo');
      SQL.Add('	,shoetest.CutDieNo');
      SQL.Add('	,shoetest.Purpose');
      SQL.Add('	,shoetest.ETC');
      SQL.Add('	,shoetest.ShipDate');
      SQL.Add('	,shoetest.PreparationDate');
      SQL.Add('	,shoetest.CutDate');
      SQL.Add('	,shoetest.StitchingDate');
      SQL.Add('	,shoetest.AssembiyDate');
      SQL.Add('	,Cast(shoetest.Memo1 as VarChar(254)) as Memo1');
      SQL.Add('	,Cast(shoetest.Memo2 as VarChar(254)) as Memo2');
      SQL.Add('	,shoetest.UserID');
      SQL.Add('	,shoetest.UserDate');
      SQL.Add('	,shoetest.choose');
      SQL.Add('	 ,shoetest.Pending_P');
      SQL.Add('	 ,shoetest.Pending_C');
      SQL.Add('	 ,shoetest.Pending_A');
      SQL.Add('	 ,shoetest.Pending_S');
      SQL.Add('	 ,shoetest.QIP_Check');
      SQL.Add('	 ,shoetest.Finish');
      SQL.Add('	 ,shoetest.Complete');
      SQL.Add('	,shoetest.UserID_s');
      SQL.Add('	,shoetest.UserDate_s');
      SQL.Add(' ,'''' as YN');
      SQL.Add('from  ShoeTest');
      SQL.Add('left  join  kfxxzl  on kfxxzl.ARTICLE = ShoeTest.Article');
      SQL.Add('where shoetest.Testno in ('+Str+')');
      Active := True;
    end;
  end
  else
  begin
    with Lquery do
    begin 
      Str := Oquery.FieldByName('Testno').Value;
      Active := False;
      SQL.Clear;
      SQL.Add('select kfxxzl.XieXing');
      SQL.Add(',kfxxzl.DDMH');
      SQL.Add(',kfxxzl.DAOMH');
      SQL.Add(',kfxxzl.XieMing');
      SQL.Add(',kfxxzl.JiJie');
      SQL.Add(',case kfxxzl.KHDH');
      SQL.Add('      when ''0038'' then ''Adidas''');
      SQL.Add('      when ''0060'' then ''Reebok''');
      SQL.Add('      else '''' end as Brand');
      SQL.Add(',kfxxzl.KHDH');
      SQL.Add(',kfxxzl.GENDER');
      SQL.Add(',kfxxzl.FD');
      SQL.Add(',kfxxzl.DevType');
      SQL.Add('  ,shoetest.TestNo');
      SQL.Add('	,shoetest.Article');
      SQL.Add('	,shoetest.DevTp');
      SQL.Add('	,shoetest.stage');
      SQL.Add('	,shoetest.TestTime');
      SQL.Add('	,shoetest.Season');
      SQL.Add('	,shoetest.SIZ');
      SQL.Add('	,shoetest.QTY');
      SQL.Add('	,shoetest.LastNo');
      SQL.Add('	,shoetest.CutDieNo');
      SQL.Add('	,shoetest.Purpose');
      SQL.Add('	,shoetest.ETC');
      SQL.Add('	,shoetest.ShipDate');
      SQL.Add('	,shoetest.PreparationDate');
      SQL.Add('	,shoetest.CutDate');
      SQL.Add('	,shoetest.StitchingDate');
      SQL.Add('	,shoetest.AssembiyDate');
      SQL.Add('	,Cast(shoetest.Memo1 as VarChar(254)) as Memo1');
      SQL.Add('	,Cast(shoetest.Memo2 as VarChar(254)) as Memo2');
      SQL.Add('	,shoetest.UserID');
      SQL.Add('	,shoetest.UserDate');
      SQL.Add('	,shoetest.choose');
      SQL.Add('	 ,shoetest.Pending_P');
      SQL.Add('	 ,shoetest.Pending_C');
      SQL.Add('	 ,shoetest.Pending_A');
      SQL.Add('	 ,shoetest.Pending_S');
      SQL.Add('	 ,shoetest.QIP_Check');
      SQL.Add('	 ,shoetest.Finish');
      SQL.Add('	 ,shoetest.Complete');
      SQL.Add('	,shoetest.UserID_s');
      SQL.Add('	,shoetest.UserDate_s');
      SQL.Add(' ,'''' as YN');
      SQL.Add('from  ShoeTest');
      SQL.Add('left  join  kfxxzl  on kfxxzl.ARTICLE = ShoeTest.Article');
      SQL.Add('where shoetest.Testno = '''+Str+'''');
      Active := True;
    end;
  end;
end;

procedure TPaperRoom.cbb2Change(Sender: TObject);
begin
    SubType.Items.Clear;
  if cbb2.Text='INLINE' then
     begin
        SubType.Items.Add('');
        SubType.Items.Add('Inline');
        SubType.Items.Add('QuickStrike');
        SubType.Items.Add('Transfer');
        SubType.Items.Add('Offline');
     end;
  if cbb2.Text='SMU' then
     begin
        SubType.Items.Add('');
        SubType.Items.Add('SMU');
        SubType.Items.Add('Segment');
     end;
end;



procedure TPaperRoom.Button1Click(Sender: TObject);
var   a:string;
      eclApp,WorkBook:olevariant;
      i,j:integer;
 begin
  if  Masqry.active  then
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
        for   i:=0   to   Masqry.fieldcount-1   do
          begin
              eclApp.Cells(1,i+1):=Masqry.fields[i].FieldName;
          end;

        Masqry.First;
        j:=2;
        while   not   Masqry.Eof   do
          begin
            for   i:=0   to  Masqry.fieldcount-1  do
            begin
              eclApp.Cells(j,i+1):=Masqry.Fields[i].Value;
            end;
          Masqry.Next;
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

procedure TPaperRoom.Button2Click(Sender: TObject);
begin
  with analysisQry do
  begin
    Active := False;
    SQL.Clear;
//    SQL.Add('select shoetest.TestNo,shoetest.Article as SR,shoetest.ypdh as SampleOrder,shoetest.FD as Developer,shoetest.QTY as Total_Qty');
    SQL.Add('select shoetest.TestNo,shoetest.XieMing,shoetest.Article as SR,shoetest.ypdh as SampleOrder,shoetest.FD as Developer');
    SQL.Add(',isnull(Shipping.qty,0) as Shipping');
    SQL.Add(',isnull(Finished_shoes_test.qty,0) as Finished_shoes_test');
    SQL.Add(',isnull(Fit_test.qty,0) as Fit_test');
    SQL.Add(',isnull(Wear_test.qty,0) as Wear_test');
    SQL.Add(',isnull(Keeping.qty,0) as Keeping');
    SQL.Add(',isnull(Social_Sample.qty,0) as Social_Sample');
    SQL.Add(',isnull(Tech_team.qty,0) as Tech_team');
    SQL.Add(',isnull(Half_stitching_upper.qty,0) as Half_stitching_upper');
    SQL.Add(',isnull(Lasted_upper.qty,0) as Lasted_upper');
    SQL.Add(',isnull(Upper_component.qty,0) as Upper_component');
    SQL.Add(',isnull(Bottom_component.qty,0) as Bottom_component');
    SQL.Add(',isnull(TW_BY.qty,0) as TW_BY');
    SQL.Add(',isnull(QC_CFM.qty,0) as QC_CFM');
    SQL.Add(',shoetest.season');
    SQL.Add(',shoetest.stage');
    SQL.Add(' ,Cast(shoetest.Memo1 as VarChar(254)) as Memo1');
    SQL.Add(',Cast(shoetest.Memo2 as VarChar(254)) as Memo2');
    SQL.Add('from  ShoeTest');
    SQL.Add('left join (select * from shoetest2 where depname=''Shipping'') Shipping on Shipping.testno=ShoeTest.testno');
    SQL.Add('left join (select * from shoetest2 where depname=''Finished shoes test'') Finished_shoes_test on Finished_shoes_test.testno=ShoeTest.testno');
    SQL.Add('left join (select * from shoetest2 where depname=''Fit test'') Fit_test on Fit_test.testno=ShoeTest.testno');
    SQL.Add('left join (select * from shoetest2 where depname=''Wear test'') Wear_test on Wear_test.testno=ShoeTest.testno');
    SQL.Add('left join (select * from shoetest2 where depname=''Keeping'') Keeping on Keeping.testno=ShoeTest.testno');
    SQL.Add('left join (select * from shoetest2 where depname=''Social Sample'') Social_Sample on Social_Sample.testno=ShoeTest.testno');
    SQL.Add('left join (select * from shoetest2 where depname=''Tech team'') Tech_team on Tech_team.testno=ShoeTest.testno');
    SQL.Add('left join (select * from shoetest2 where depname=''Half stitching upper'') Half_stitching_upper on Half_stitching_upper.testno=ShoeTest.testno');
    SQL.Add('left join (select * from shoetest2 where depname=''Lasted upper'') Lasted_upper on Lasted_upper.testno=ShoeTest.testno');
    SQL.Add('left join (select * from shoetest2 where depname=''Upper component'') Upper_component on Upper_component.testno=ShoeTest.testno');
    SQL.Add('left join (select * from shoetest2 where depname=''Bottom component'') Bottom_component on Bottom_component.testno=ShoeTest.testno');
    SQL.Add('left join (select * from shoetest2 where depname=''TW/BY'') TW_BY on TW_BY.testno=ShoeTest.testno');
    SQL.Add('left join (select * from shoetest2 where depname=''QC CFM'') QC_CFM on QC_CFM.testno=ShoeTest.testno');
    SQL.Add('where 1=1');
    SQL.Add(' and isnull(ShoeTest.choose,''0'') = ''0''');
    if cbb2.Text <> '' then
       SQL.Add(' and ShoeTest.DevTp like '''+cbb2.Text+'%''');
    if subtype.Text <> '' then
      SQL.Add(' and ShoeTest.subTp like '''+subtype.Text+'%''');
    if cbb3.Text <> '' then
      SQL.Add(' and ShoeTest.stage like '''+cbb3.Text+'''');
    if testno_edt1.Text <> '' then
      SQL.Add(' and ShoeTest.testno like '''+testno_edt1.Text+'''');
    if Article_edt1.Text <> '' then
      SQL.Add(' and shoetest.ARTICLE like '''+Article_edt1.Text+'%''');

    if FD_Edt1.Text <> '' then
      SQL.Add(' and shoetest.FD like '''+FD_Edt1.Text+'%''');

    if Season_edt1.Text <>'' then
      SQL.Add(' and shoetest.season = '''+Season_edt1.Text+'''');
    if usemodify.text<>'' then
      SQL.Add(' and shoetest.userid ='''+main.edit1.Text+'''');
    if Info_chk.Checked then
    begin
      SQL.Add(' and userdate between');
           sql.add(' convert(datetime,'''+formatdatetime('yyyy-MM-dd',DTP1.Date)+''')');
           sql.add(' and  ');
           sql.add(' convert(datetime,'''+formatdatetime('yyyy-MM-dd',DTP2.Date)+''')');
    end;
    if Finish_chk.Checked then
      SQL.Add(' and Finish = 1');
    SQL.Add('order by shoetest.TestNo desc');
    //memo2.text := sql.Text ;
    Active := True;
  end;
end;

procedure TPaperRoom.Button3Click(Sender: TObject);
var   a:string;
      eclApp,WorkBook:olevariant;
      i,j:integer;
 begin
  if  analysisQry.active  then
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
        for   i:=0   to   analysisQry.fieldcount-1   do
          begin
              eclApp.Cells(1,i+1):=analysisQry.fields[i].FieldName;
          end;

        analysisQry.First;
        j:=2;
        while   not   analysisQry.Eof   do
          begin
            for   i:=0   to  analysisQry.fieldcount-1  do
            begin
              eclApp.Cells(j,i+1):=analysisQry.Fields[i].Value;
            end;
          analysisQry.Next;
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

                          //
procedure TPaperRoom.dbgrdh1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
{  if insert_type<>'1' then
  begin
     if (copy(Masqry.FieldByName('ypdh').value,1,4)='LAIV') and ((Masqry.FieldByName('quantity').value='0') or (Masqry.FieldByName('quantity').value< (Masqry.FieldByName('qty').value)+Masqry.FieldByName('UpperQty').value+Masqry.FieldByName('BottomQty').value)) then
     begin
        dbgrdh1.canvas.Brush.Color:=cllime;
        dbgrdh1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
     end;
  end;     }
  //
end;

procedure TPaperRoom.Info_chkClick(Sender: TObject);
begin
  if Info_chk.checked then
      checkbox2.Checked:=false;
  //if not Info_chk.checked then
   //   checkbox2.Checked:=true;
end;

procedure TPaperRoom.CheckBox2Click(Sender: TObject);
begin
  if checkbox2.checked then
      Info_chk.Checked:=false;
 // if not checkbox2.checked then
 //     Info_chk.Checked:=true;
end;

procedure TPaperRoom.Button4Click(Sender: TObject);
var   a:string;
      eclApp,WorkBook:olevariant;
      k,i,j:integer;
begin
      if Season_edt1.Text='' then
      begin
        showmessage('please choose season');
        abort;
      end else
      begin
          with query3 do
          begin
             active:=false;
             sql.Clear;
             SQL.add('select * ');
             SQL.add(' from ( ');
             SQL.add('  select ');
             SQL.add('  DDMH       ');
             SQL.add(' ,isnull(shoetest.ypdh,'''') as SampleNo');
             SQL.add(' ,XieMing as ShoeName');
             SQL.add(' ,season ');
             SQL.add(' ,''Converse'' as brand  ');
             SQL.add(' ,shoetest.FD as devloper ');
             SQL.add(' ,shoetest.TestNo  ');
             SQL.add(' ,shoetest.Article ');
             SQL.add(' ,DevTp ');
             SQL.add(' ,subTp ');
             SQL.add(' ,stage ');
             SQL.add(' ,TestTime ');
             SQL.add(' ,SIZ  ');
             SQL.add(' ,ypzl.quantity as Orgquantity');
             SQL.add(' ,SPQty ');
             SQL.add(' ,shoetestshippingmonth.monthqty ');
             SQL.add(' ,isnull(shoe.ShoeQTY,0)as ShoeQTY ');
             SQL.add(' ,isnull(upper.UpperQty,0)as UpperQty ');
             SQL.add(' ,isnull(Bottom.BottomQty,0) as BottomQty ');
             SQL.add(' ,LastNo ');
             SQL.add(' ,CutDieNo ');
             SQL.add(' ,Purpose ');
             SQL.add(' ,ETC ');
             SQL.add(' ,ShipDate ');
             SQL.add(' ,PreparationDate_first ');
             SQL.add(' ,PreparationDate ');
             SQL.add(' ,CutDate ');
             SQL.add(' ,CutDate_first ');
             SQL.add(' ,StitchingDate ');
             SQL.add(' ,StitchingDate_first');
             SQL.add(' ,AssembiyDate ');
             SQL.add(' ,AssembiyDate_first ');
             SQL.add(' ,Cast(Memo1 as text) as Memo1');
             SQL.add(' ,Cast(Memo2 as text) as Memo2');
             SQL.add(' ,shoetest.UserID ');
             SQL.add(' ,shoetest.UserDate ');
             SQL.add(' ,choose ');
             SQL.add(' ,Pending_P ');
             SQL.add(' ,Pending_C ');
             SQL.add(' ,Pending_A ');
             SQL.add(' ,Pending_S ');
             SQL.add(' ,QIP_Check ');
             SQL.add(' ,Finish  ');
             SQL.add(' ,Complete ');
             SQL.add(' ,UserID_s ');
             SQL.add(' ,UserDate_s ');
             SQL.add(' ,Construction ');
             SQL.Add(' ,'''' as YN');
             SQL.add('from  ShoeTest ');
             SQL.add('left join (select testno,sum(qty) as monthqty from shoetestshipping ');
             SQL.add('group by testno )shoetestshippingmonth on shoetestshippingmonth.testno=shoetest.testno ');
             SQL.add('left join (select testno,sum(qty) as spqty from shoetestshipping group by testno) shoetestshipping on shoetestshipping.testno=shoetest.testno ');
             SQL.add('left join ( select shoetest2.testno,sum(shoetest2.qty) as ShoeQty from shoetest2 ');
             SQL.add('left join shoetestdetail on shoetest2.parts=shoetestdetail.yybh where shoetestdetail.class=''shoe'' group by shoetest2.testno) shoe on shoe.testno=ShoeTest.testno ');
             SQL.add('left join ( select shoetest2.testno,sum(shoetest2.qty) as UpperQty from shoetest2 ');
             SQL.add('left join shoetestdetail on shoetest2.parts=shoetestdetail.yybh where shoetestdetail.class=''upper'' group by shoetest2.testno) upper on upper.testno=ShoeTest.testno ');
             SQL.add('left join ( select shoetest2.testno,sum(shoetest2.qty) as BottomQty from shoetest2 ');
             SQL.add('left join shoetestdetail on shoetest2.parts=shoetestdetail.yybh where shoetestdetail.class=''Bottom'' group by shoetest2.testno) Bottom on Bottom.testno=ShoeTest.testno ');
             SQL.add('left join ypzl on ypzl.ypdh=shoetest.ypdh ');
             SQL.add('left join shoetestshipping SHIPPINGTEAMQRY on SHIPPINGTEAMQRY.TESTNO=shoetest.TESTNO ');
             SQL.add('where 1=1 ');
             SQL.Add('  and isnull(choose,''0'') = ''0''');
             SQL.Add('  and season = '''+Season_edt1.Text+'''');
             SQL.add('group by  DDMH,shoetest.ypdh,XieMing,season,brand,shoetest.FD ,shoetest.TestNo,shoetest.Article,DevTp,subTp,stage ');
             SQL.add(',TestTime,SIZ,ypzl.quantity,SPQty,shoetestshippingmonth.monthqty,shoe.ShoeQTY,upper.UpperQty,Bottom.BottomQty ');
             SQL.add(',LastNo,CutDieNo,Purpose,ETC,ShipDate,PreparationDate_first,PreparationDate,CutDate,CutDate_first,StitchingDate ');
             SQL.add(',StitchingDate_first,AssembiyDate,AssembiyDate_first,Memo1,Memo2,shoetest.UserID,shoetest.UserDate,choose,Pending_P ');
             SQL.add(',Pending_C,Pending_A,Pending_S,QIP_Check,Finish,Complete,UserID_s,UserDate_s,Construction ');
             SQL.add(') shoeTest ');
             SQL.add('left join ( ');
             SQL.add('select TestNo as TestNo2 ');                                                                                 
             SQL.add('      ,Max(case when YWSM=''Shipping'' then Qty end) as ''Shipping'' ');
             SQL.add('      ,Max(case when YWSM=''Testing'' then Qty end) as ''Testing''  ');
             SQL.add('      ,Max(case when YWSM=''Fit Test'' then Qty end) as ''Fit Test'' ');
             SQL.add('      ,Max(case when YWSM=''Wear Test'' then Qty end) as ''Wear Test'' ');
             SQL.add('      ,Max(case when YWSM=''Keeping'' then Qty end) as ''Keeping'' ');
             SQL.add('      ,Max(case when YWSM=''Social Sample'' then Qty end) as ''Social Sample'' ');
             SQL.add('      ,Max(case when YWSM=''Tech Team'' then Qty end) as ''Tech Team'' ');
             SQL.add('      ,Max(case when YWSM=''TW/BY'' then Qty end) as ''TW/BY'' ');
             SQL.add('      ,Max(case when YWSM=''QC'' then Qty end) as ''QC'' ');
             SQL.add('      ,Max(case when YWSM=''IE'' then Qty end) as ''IE''  ');
             SQL.add('      ,Max(case when YWSM=''Costing'' then Qty end) as ''Costing'' ');
             SQL.add('   from (   ');
             SQL.add('select shoetest2.TestNo,shoetestdetail.YWSM,Sum(Qty) as Qty  ');
             SQL.add('from shoetest2  ');
             SQL.add('left join shoeTest on shoeTest.testno=shoetest2.testno  ');
             SQL.add('left join shoetestdetail on shoetestdetail.yybh=shoeTest2.DepName ');
             SQL.add('where shoetest.season='''+Season_edt1.Text+''' and shoetestdetail.YWSM is not null  ');
             SQL.add('Group by shoetest2.TestNo,shoetestdetail.YWSM ) ShoeTest2  ');
             SQL.add('Group by TestNo ) ShoeTest2 on ShoeTest.TestNo=ShoeTest2.TestNo2 ');
             SQL.Add('where shoetest.SampleNo like '''+ComboBox1.Text+'%''');
             active:=true;
          end;
      end;
      try
        eclApp:=CreateOleObject('Excel.Application');
        WorkBook:=CreateOleObject('Excel.Sheet');
      except
        Application.MessageBox('No Mcrosoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
        Exit;
      end;
      try
          WorkBook:=eclApp.workbooks.Add;
          for   i:=0   to   query3.fieldCount-1   do
          begin
              eclApp.Cells(1,i+1):=query3.fields[i].FieldName;
          end;
          query3.First;
          j:=2;
          while   not   query3.Eof   do
          begin
            for   i:=0   to   query3.FieldCount-1   do
            begin
              eclApp.Cells(j,i+1):=query3.Fields[i].Value;
            end;
            query3.Next;
            inc(j);
          end;
          for k:=1 to 4 do
          begin
           eclApp.range[eclApp.cells[1,1],eclApp.cells[j-1,query3.FieldCount]].borders[k].linestyle:=1;
          end;
          eclapp.columns.autofit;
          eclapp.rows.autofit;
          showmessage('Succeed.');
          eclApp.Visible:=True;
      except
        on   F:Exception   do
          showmessage(F.Message);
      end;
end;



procedure TPaperRoom.SeeExcel();
var
   eclApp, WorkBook, Picture: olevariant;
   i, j: integer;
   Img: TImage;
   workRange : OleVariant;
begin
   AppDir:=ExtractFilePath(Application.ExeName);
   CopyFile(Pchar('\\'+main.ServerIP+'\liy_erp\Additional\PaperRoomSeeNew.xls'),Pchar(AppDir+'Additional\PaperRoomSeeNew.xls'),false);
    begin
      if  Sizeqry.active  then
      begin
      try
          eclApp:=CreateOleObject('Excel.Application');
          WorkBook:=CreateOleObject('Excel.Sheet');
      except
          Application.MessageBox('NO Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
          Exit;
      end;
      try
        eclApp.WorkBooks.Open(AppDir+'Additional\PaperRoomSeeNew.xls');
        //eclApp.Cells(1,1):='LYNDC Sample Commercialization Sheet(SampleNO: '+Masqry.FieldByName('ypdh').AsString+')';
        eclApp.Cells(5,1):=''+ Title_Excel + ' ' +Masqry.FieldByName('ypdh').AsString+')';
        eclApp.WorkSheets[2].Activate;
  query2.Active:=true;
  if Masqry.Active then
  begin
    try
      Img := TImage.Create(self);
      Img.Width := 175;
      Img.Height := 35;
      Barcode93Obj := TBarcode93.Create(self);
      Barcode93Obj.ImBarCodeShow(Img.Canvas, Masqry.FieldByName('TESTNO').AsString, false);
      Barcode93Obj.Free;
      Img.Picture.SaveToFile(GetCurrentDir + '\Barcode.jpg');
   //   Picture := eclApp.WorkSheets[2].Pictures.Insert(GetCurrentDir + '\Barcode.jpg');
      Picture := eclApp.workSheets[2].Shapes.AddPicture(GetCurrentDir + '\Barcode.jpg',false,true,0,0,-1,-1);
      picture.LockAspectRatio := true;

     Picture.Height := 35;
      Picture.Top := 0;
      Picture.Left := 0;
      Picture := Unassigned;
      DeleteFile(GetCurrentDir + '\Barcode.jpg');

      eclApp.Columns[1].ColumnWidth := 20;
      eclApp.Columns[2].ColumnWidth := 20;
      eclApp.Columns[3].ColumnWidth := 20;
      eclApp.Columns[4].ColumnWidth := 20;
      eclApp.Columns[5].ColumnWidth := 20;
      eclApp.Columns[6].ColumnWidth := 20;
      eclApp.Columns[7].ColumnWidth := 20;
      eclApp.Columns[8].ColumnWidth := 20;
      //eclApp.Cells(1,1) := 'LYNDC Sample Commercialization Sheet'+'(SampleNO:'+ Masqry.FieldByName('ypdh').AsString+')';
      eclApp.Cells(1,1):=''+ Title_Excel + ' ' +Masqry.FieldByName('ypdh').AsString+')';
      eclApp.ActiveSheet.Rows[1].Font.Size := 18;
      eclApp.ActiveSheet.Rows[1].RowHeight := 35.5;
      eclApp.ActiveSheet.Range['A1:G1'].Merge;

      eclApp.Cells(3,1) := 'NO:'+ Masqry.FieldByName('TESTNO').AsString;
      eclApp.Cells(5,1) := 'Stage:'+ Masqry.FieldByName('Stage').AsString;
      eclApp.Cells(5,2) := 'SeeType:'+ Masqry.FieldByName('Seetype').AsString;
      eclApp.Cells(7,1) := 'Article:'+ Masqry.FieldByName('Article').AsString;
      eclApp.Cells(9,1) := 'Size:'+ Masqry.FieldByName('siz').AsString;
      eclApp.Cells(11,1) := 'Last NO:'+ Masqry.FieldByName('lastno').AsString;
     // eclApp.Cells(13,1) := 'Print_Request'+ Masqry.FieldByName('Print_Request').AsString;


      eclApp.Cells(3,3) := 'Brand:'+ Masqry.FieldByName('Brand').AsString;

      eclApp.Cells(5,3) := 'Test Time:'+ Masqry.FieldByName('TestTime').AsString;
      eclApp.Cells(7,3) := 'Shoe Name:'+ Masqry.FieldByName('xieming').AsString;
      eclApp.Cells(9,2) := 'ShoeQty:'+ Masqry.FieldByName('Qty').AsString;
      eclApp.Cells(9,3) := 'UpperQty:'+ Masqry.FieldByName('UpperQty').AsString;
      eclApp.Cells(9,4) := 'BottomQty:'+ Masqry.FieldByName('BottomQty').AsString;
      eclApp.Cells(11,3) := 'Cutting No:'+ Masqry.FieldByName('CutDieNo').AsString;
    //  eclApp.Cells(13,3) := 'Stitching Date:'+ Masqry.FieldByName('StitchingDate').AsString;

      eclApp.Cells(3,5) := 'DevTp:'+ Masqry.FieldByName('DevTp').AsString;
      eclApp.Cells(5,5) := 'FD:'+ Masqry.FieldByName('FD').AsString;
      eclApp.Cells(7,5) := 'Construction:'+ Masqry.FieldByName('Construction').AsString;
      eclApp.Cells(9,5) := 'ETC:'+ Masqry.FieldByName('ETC').AsString;
      eclApp.Cells(11,5) := 'OutSole No:'+ Masqry.FieldByName('DDMH').AsString;
    //  eclApp.Cells(13,5) := 'Cutting Date:'+ Masqry.FieldByName('CutDate').AsString;
      eclApp.Cells(9,6) := 'UserDate:'+ Masqry.FieldByName('UserDate').AsString;
      eclApp.Cells(3,7) := 'SubTp:'+ Masqry.FieldByName('subTp').AsString;
      eclApp.Cells(5,7) := 'Season:'+ Masqry.FieldByName('Season').AsString;
      eclApp.Cells(7,7) := 'Purpose:'+ Masqry.FieldByName('Purpose').AsString;
      eclApp.Cells(9,7) := 'ShipDate:'+ Masqry.FieldByName('ShipDate').AsString;
      eclApp.Cells(11,7):= 'Printing color Signed:'+ Masqry.FieldByName('Print_Request').AsString;
      eclApp.Cells(12,7):= 'Rubber color Signed:'+ Masqry.FieldByName('Rubber_Request').AsString;

  // 表身
      Sizeqry.First;
      j := 15;
      i := 1;
      while   not   Sizeqry.Eof   do
      begin
        eclApp.Cells(j,1):='Status:'+Sizeqry.FieldByName('YWSM').AsString+'('+Sizeqry.FieldByName('VWSM').AsString+')'+'___Parts:('+Sizeqry.FieldByName('YWSM_1').AsString+'('+Sizeqry.FieldByName('VWSM_1').AsString+')'+'___Qty:'+Sizeqry.FieldByName('Qty').AsString;
//        eclApp.Cells(j,2):=Sizeqry.FieldByName('Qty').AsString;
        Sizeqry.Next;
        Inc(j);
        Inc(i);
      end;
      eclApp.Visible:=True;
      eclApp.Cells(j+1,1) := 'FDMemo:'+ Masqry.FieldByName('memo1').AsString;
      eclApp.Cells(j+7,1) := 'Supervisor:';
      eclApp.Cells(j+7,4) := 'Team Leader:';
      eclApp.Cells(j+7,7) := 'Developer:';
      except
        on   F:Exception   do
          showmessage(F.Message);
      end;
       eclApp.ActiveSheet.PageSetup.Orientation := 2; //列印直=1,橫式=2
       eclApp.Rows[1].HorizontalAlignment := -4108; //水平置中
       eclApp.Rows[1].VerticalAlignment := -4108;  //垂直置中
       eclApp.ActiveSheet.PageSetup.Zoom := false; //使用頁次縮放功能
       eclApp.ActiveSheet.PageSetup.FitToPagesWide := 1;  //縮放成一頁寬(需配合Zoom = True)
       eclApp.ActiveSheet.PageSetup.FitToPagesTall := 1;  //縮放成一頁高(需配合Zoom = True)
       eclApp.ActiveSheet.PageSetup.RightFooter:= Develop_N75_ISO;       
  end;
     //   showmessage('Succeed.');
        eclApp.Visible:=True;
      except
          on   F:Exception   do
                 showmessage(F.Message);
          end;
    end;

    end;
end;

procedure TPaperRoom.OtherExcel();
var
  eclApp, WorkBook, Picture: olevariant;
  i, j: integer;
  Img: TImage;
  f: string;
  workRange : OleVariant;
begin
  query2.Active:=true;
  if Masqry.Active then
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
      eclApp.ActiveSheet.PageSetup.Orientation:=2;
    // 表頭
      Img := TImage.Create(self);
      Img.Width := 175;
      Img.Height := 35;
      Barcode93Obj := TBarcode93.Create(self);
      Barcode93Obj.ImBarCodeShow(Img.Canvas, Masqry.FieldByName('TESTNO').AsString, false);
      Barcode93Obj.Free;
      Img.Picture.SaveToFile(GetCurrentDir + '\Barcode.jpg');

     // Picture := eclApp.WorkSheets[1].Pictures.Insert(GetCurrentDir + '\Barcode.jpg');
      Picture := eclApp.workSheets[1].Shapes.AddPicture(GetCurrentDir + '\Barcode.jpg',false,true,0,0,-1,-1);
      picture.LockAspectRatio := true;
      Picture.Height := 35;
      Picture.Top := 0;
      Picture.Left := 0;
      Picture := Unassigned;
      DeleteFile(GetCurrentDir + '\Barcode.jpg');

      eclApp.ActiveSheet.Rows[1].RowHeight := 35.5;
      eclApp.ActiveSheet.Rows[1].Font.Size:= 18;
      eclApp.Columns[1].ColumnWidth := 20;
      eclApp.Columns[2].ColumnWidth := 20;
      eclApp.Columns[3].ColumnWidth := 20;
      eclApp.Columns[4].ColumnWidth := 20;
      eclApp.Columns[5].ColumnWidth := 20;
      eclApp.Columns[6].ColumnWidth := 20;
      eclApp.Columns[7].ColumnWidth := 20;
      eclApp.Columns[8].ColumnWidth := 20;
      //eclApp.Cells(1,1) := 'LYNDC Sample Commercialization Sheet'+'(SampleNO:'+ Masqry.FieldByName('ypdh').AsString+')';
      eclApp.Cells(1,1):=''+ Title_Excel + ' ' +Masqry.FieldByName('ypdh').AsString+')';
      eclApp.ActiveSheet.Range['A1:G1'].Merge;

      eclApp.Cells(3,1) := 'NO:'+ Masqry.FieldByName('TESTNO').AsString;
      eclApp.Cells(5,1) := 'Stage:'+ Masqry.FieldByName('Stage').AsString;
      eclApp.Cells(5,2) := 'SeeType:'+ Masqry.FieldByName('Seetype').AsString;         
      eclApp.Cells(7,1) := 'Article:'+ Masqry.FieldByName('Article').AsString;
      eclApp.Cells(9,1) := 'Size:'+ Masqry.FieldByName('siz').AsString;
      eclApp.Cells(11,1) := 'Last NO:'+ Masqry.FieldByName('lastno').AsString;
     // eclApp.Cells(13,1) := 'Print_Request'+ Masqry.FieldByName('Print_Request').AsString;


      eclApp.Cells(3,3) := 'Brand:'+ Masqry.FieldByName('Brand').AsString;
      eclApp.Cells(5,3) := 'Test Time:'+ Masqry.FieldByName('TestTime').AsString;
      eclApp.Cells(7,3) := 'Shoe Name:'+ Masqry.FieldByName('xieming').AsString;
      eclApp.Cells(9,2) := 'ShoeQty:'+ Masqry.FieldByName('Qty').AsString;
      eclApp.Cells(9,3) := 'UpperQty:'+ Masqry.FieldByName('UpperQty').AsString;
      eclApp.Cells(9,4) := 'BottomQty:'+ Masqry.FieldByName('BottomQty').AsString;
      eclApp.Cells(11,3) := 'Cutting No:'+ Masqry.FieldByName('CutDieNo').AsString;
   //   eclApp.Cells(13,3) := 'Stitching Date:'+ Masqry.FieldByName('StitchingDate').AsString;

      eclApp.Cells(3,5) := 'DevTp:'+ Masqry.FieldByName('DevTp').AsString;
      eclApp.Cells(5,5) := 'FD:'+ Masqry.FieldByName('FD').AsString;
      eclApp.Cells(7,5) := 'Construction:'+ Masqry.FieldByName('Construction').AsString;
      eclApp.Cells(9,5) := 'ETC:'+ Masqry.FieldByName('ETC').AsString;
      eclApp.Cells(11,5) := 'OutSole No:'+ Masqry.FieldByName('DDMH').AsString;
     // eclApp.Cells(13,5) := 'Cutting Date:'+ Masqry.FieldByName('CutDate').AsString;
      eclApp.Cells(9,6) := 'UserDate:'+ Masqry.FieldByName('UserDate').AsString;
      eclApp.Cells(3,7) := 'SubTp:'+ Masqry.FieldByName('subTp').AsString;
      eclApp.Cells(5,7) := 'Season:'+ Masqry.FieldByName('Season').AsString;
      eclApp.Cells(7,7) := 'Purpose:'+ Masqry.FieldByName('Purpose').AsString;
      eclApp.Cells(9,7) := 'ShipDate:'+ Masqry.FieldByName('ShipDate').AsString;
      eclApp.Cells(11,7):= 'Printing color Signed:'+ Masqry.FieldByName('Print_Request').AsString;
      eclApp.Cells(12,7):= 'Rubber color Signed:'+ Masqry.FieldByName('Rubber_Request').AsString;


  // 表身
      Sizeqry.First;
      j := 15;
      i := 1;
      while   not   Sizeqry.Eof   do
      begin
        eclApp.Cells(j,1):='Status:'+Sizeqry.FieldByName('YWSM').AsString+'('+Sizeqry.FieldByName('VWSM').AsString+')'+'___Parts:('+Sizeqry.FieldByName('YWSM_1').AsString+'('+Sizeqry.FieldByName('VWSM_1').AsString+')'+'___Qty:'+Sizeqry.FieldByName('Qty').AsString;
//        eclApp.Cells(j,2):=Sizeqry.FieldByName('Qty').AsString;
        Sizeqry.Next;
        Inc(j);
        Inc(i);
      end;
   //   showmessage('Succeed.');
      eclApp.Visible:=True;
      eclApp.Cells(j+1,1) := 'FDMemo:'+ Masqry.FieldByName('memo1').AsString;
      eclApp.Cells(j+7,1) := 'Supervisor:';
      eclApp.Cells(j+7,4) := 'Team Leader:';
      eclApp.Cells(j+7,7) := 'Developer:';
      except
        on   F:Exception   do
          showmessage(F.Message);
      end;
       eclApp.ActiveSheet.PageSetup.Orientation := 2; //列印直=1,橫式=2
       eclApp.Rows[1].HorizontalAlignment := -4108; //水平置中
       eclApp.Rows[1].VerticalAlignment := -4108;  //垂直置中
       eclApp.ActiveSheet.PageSetup.Zoom := false; //使用頁次縮放功能
       eclApp.ActiveSheet.PageSetup.FitToPagesWide := 1;  //縮放成一頁寬(需配合Zoom = True)
       eclApp.ActiveSheet.PageSetup.FitToPagesTall := 1;  //縮放成一頁高(需配合Zoom = True)
       eclApp.ActiveSheet.PageSetup.RightFooter:= Develop_N75_ISO;
  end;
end;

end.


