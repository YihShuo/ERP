unit MatLabCheck1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBTables, DB, GridsEh, DBGridEh, Buttons, StdCtrls, ComCtrls,
  ExtCtrls,DBGridEhImpExp,ShellAPI, Menus,ZLib, colorbutton, Mask, DBCtrls,EhLibBDE,
  IdMessage, IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient,
  IdMessageClient, IdSMTP, ComObj;

type
  TMatLabCheck = class(TForm)
    Panel1: TPanel;
    btninsert: TBitBtn;
    btnmodify: TBitBtn;
    btndelete: TBitBtn;
    btnsave: TBitBtn;
    btncancel: TBitBtn;
    DBGridDetail: TDBGridEh;
    qry_Qc: TQuery;
    DS_Qc: TDataSource;
    Upd_QC: TUpdateSQL;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    PopupMenu1: TPopupMenu;
    mnu1: TMenuItem;
    mnu2: TMenuItem;
    mnu3: TMenuItem;
    qry1: TQuery;
    btnTMethod: TButton;
    Splitter1: TSplitter;
    Panel5: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    CBX1: TComboBox;
    btnMatReport: TButton;
    Label9: TLabel;
    qry_Rate: TQuery;
    qry_RateRateMat: TFloatField;
    qry_QcNo_ID: TAutoIncField;
    qry_QcCLBH: TStringField;
    qry_QcCGNO: TStringField;
    qry_QcDateInput: TDateTimeField;
    qry_QcTime: TIntegerField;
    qry_QcZSBH: TStringField;
    qry_QcQty: TCurrencyField;
    qry_QcTracking: TStringField;
    qry_QcLab_Check: TStringField;
    qry_QcLab_Reason: TStringField;
    qry_QcLab_Result: TStringField;
    qry_QcLab_Date: TDateTimeField;
    qry_QcLab_UserID: TStringField;
    qry_QcLab_Num: TStringField;
    qry_QcFinal_Status: TStringField;
    qry_QcFinal_Remark: TStringField;
    qry_QcUserDate: TDateTimeField;
    qry_QcUserID: TStringField;
    qry_QcRemark: TStringField;
    qry_QcFile_Name_Lab: TStringField;
    qry_QcLab_FinishDate: TDateTimeField;
    qry_QcLab_PDM_ID: TStringField;
    qry_QcT2Test_Result: TStringField;
    qry_QcComparision: TStringField;
    qry_QcLab_PDM_IDT2: TStringField;
    qry_QcReceducing_TLSP: TStringField;
    qry_QcLab_ConfirmDate: TDateTimeField;
    qry_QcLab_DateRemark: TDateTimeField;
    qry_QcRKNO: TStringField;
    qry_QcMaterialName: TStringField;
    qry_QcSupplierName: TStringField;
    qry_QcDWBH: TStringField;
    qry_QcPDM_File_Name: TStringField;
    N1: TMenuItem;
    UploadPDMReport1: TMenuItem;
    DownloadPDMReport1: TMenuItem;
    DeletePDMReport1: TMenuItem;
    qry_RY: TQuery;
    qry_RYNo_ID: TIntegerField;
    qry_RYRY: TStringField;
    qry_RYArticle: TStringField;
    qry_RYAdidasPO: TStringField;
    qry_RYRemark: TStringField;
    qry_RYYN: TStringField;
    qry_RYUserID: TStringField;
    qry_RYUserDate: TDateTimeField;
    qry_RYCOUNTRY: TStringField;
    DS_RY: TDataSource;
    DBGrid_RY: TDBGridEh;
    qry_RYModelName: TStringField;
    Panel6: TPanel;
    Splitter2: TSplitter;
    DBGridEh1: TDBGridEh;
    qry_Mat: TQuery;
    DS2: TDataSource;
    qry_RYXieXing: TStringField;
    qry_RYSheHao: TStringField;
    qry_RYCLBH: TStringField;
    qry_MatBWBH: TStringField;
    qry_MatBWMC: TStringField;
    qry_MatCLBH: TStringField;
    qry_MatCLMC: TStringField;
    BWBH: TQuery;
    Label21: TLabel;
    DBMemo1: TDBMemo;
    qry_QcRY: TStringField;
    qry_QcArticle: TStringField;
    qry_QcCustPO: TStringField;
    Panel2: TPanel;
    Label15: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label1: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label10: TLabel;
    edt2: TEdit;
    edt1: TEdit;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    Button1: TButton;
    edt3: TEdit;
    Button2: TButton;
    chk1: TCheckBox;
    edt4: TEdit;
    edt5: TEdit;
    edtRy: TEdit;
    CustPo: TEdit;
    edtArticle: TEdit;
    chk2: TCheckBox;
    chksample: TCheckBox;
    Button3: TButton;
    FlexID: TEdit;
    MultirowsFinisheddate1: TMenuItem;
    MultirowsResult1: TMenuItem;
    N2: TMenuItem;
    Label11: TLabel;
    SIDEdit: TEdit;
    BBD: TBitBtn;
    BBU: TBitBtn;
    Label12: TLabel;
    ReportIDEdit: TEdit;
    GroupBox1: TGroupBox;
    btnRelease: TBitBtn;
    BtnReject: TBitBtn;
    FinishDT: TDateTimePicker;
    BBUFoler: TBitBtn;
    BBUpload: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnmodifyClick(Sender: TObject);
    procedure btncancelClick(Sender: TObject);
    procedure btnsaveClick(Sender: TObject);
    procedure DBGridDetailDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumnEh;
      State: TGridDrawState);
    procedure Button2Click(Sender: TObject);
    procedure mnu1Click(Sender: TObject);
    procedure mnu2Click(Sender: TObject);
    procedure mnu3Click(Sender: TObject);
    procedure qry_QcLab_CheckChange(Sender: TField);
    procedure DBGridDetailColumns14EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure btnTMethodClick(Sender: TObject);
    procedure qry_QcLab_ResultChange(Sender: TField);
    procedure btnMatReportClick(Sender: TObject);
    procedure qry_QcAfterOpen(DataSet: TDataSet);
    procedure qry_RateAfterOpen(DataSet: TDataSet);
    procedure UploadPDMReport1Click(Sender: TObject);
    procedure DownloadPDMReport1Click(Sender: TObject);
    procedure DeletePDMReport1Click(Sender: TObject);
    procedure DBGridDetailColumns24EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure qry_QcRYGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure Button3Click(Sender: TObject);
    procedure MultirowsFinisheddate1Click(Sender: TObject);
    procedure MultirowsResult1Click(Sender: TObject);
    procedure SIDEditKeyPress(Sender: TObject; var Key: Char);
    procedure BBUClick(Sender: TObject);
    procedure BBDClick(Sender: TObject);
    procedure btnReleaseClick(Sender: TObject);
    procedure BtnRejectClick(Sender: TObject);
    procedure BBUFolerClick(Sender: TObject);
    procedure BBUploadClick(Sender: TObject);
  private
    AppDir:string;
    SFL:string;
    { Private declarations }
    function DoCopyDir(sDirName:String;sToDirName:String):Boolean;
    procedure ShowLab_Report();
  public
    GSBH_SFL:String;
    { Public declarations }
  end;

var
  MatLabCheck: TMatLabCheck;
  flag,SP: integer;
  //Limit:string;
implementation

uses
  main1, Lab_TestReason1, FileTransClient1, MatLabCheck_Upload1, FunUnit,
  UploadExcleReport1;

{$R *.dfm}

procedure TMatLabCheck.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    Action:=cafree;
end;

procedure TMatLabCheck.FormDestroy(Sender: TObject);
begin
    MatLabCheck:=nil;
end;

procedure TMatLabCheck.Button1Click(Sender: TObject);
begin
    with qry1 do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('update MaterialQCcheck');
      SQL.Add('set');
      SQL.Add('  RY=mc.RY , Article=mc.Article,  CustPO=mc.CustPO');
      SQL.Add('from ( ');
      SQL.Add('select No_ID,');
      SQL.Add('  cast((select RY + '','' from MaterialQcCheck_RY m2 where mc.No_ID=m2.No_ID and isnull(RY,'''') <> ''''group by RY for XML Path ('''')) as varchar(max)) as RY,');
      SQL.Add('  cast((select Article + '','' from MaterialQcCheck_RY m3 where mc.No_ID=m3.No_ID and isnull(Article,'''') <> ''''group by Article for XML Path ('''')) as varchar(max))  as Article,');
      SQL.Add('  cast((select CustPO + '','' from MaterialQcCheck_RY m4 where mc.No_ID=m4.No_ID and isnull(CustPO,'''') <> ''''group by CustPO for XML Path ('''')) as varchar(max))  as CustPO');
      SQL.Add('from MaterialQCcheck mc');
      sql.Add('					left join clzl on clzl.CLDH = mc.CLBH');
      sql.Add('					left Join ZSZL on ZSZL.ZSDH =mc.ZSBH');
      sql.Add('         left Join clzl_flex on  clzl_flex.cldh =clzl.cldh');
      SQL.Add('where mc.GSBH='''+main.Edit2.Text+''' ');
      if chk1.Checked then
      begin
          sql.Add('       and CONVERT(varchar(10),mc.DateInput,111) between');
          sql.add('           '''+formatdatetime('yyyy/MM/dd',DTP1.date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.date)+''' ');
      end;
      if chk2.Checked then
          sql.Add('       and Tracking=''1'' ');
      if FlexID.Text <> '' then
          SQL.add('and clzl_flex.cldhflex like '''+FlexID.Text+'%'' ');
      if edtRy.Text <> '' then
          sql.Add('       and mc.RY like ''%'+edtRy.Text+'%'' ');
      if edtArticle.Text <> '' then
          sql.Add('       and mc.Article like ''%'+edtArticle.Text+'%'' ');
      if CustPo.Text <> '' then
          sql.Add('       and mc.CustPO like ''%'+CustPo.Text+'%'' ');
      if (edt4.Text<>'') and (edt5.Text='') then
          sql.Add('   and lab_num like '''+edt4.Text+'%'' ');
      if (edt4.Text<>'') and (edt5.Text<>'') then
          sql.Add('   and lab_num between '''+edt4.Text+'%'' and '''+edt5.Text+'%'' ');
      if SIDEdit.Text<>'' then
          sql.add(' and mc.No_ID like '''+SIDEdit.Text+'%'' ');
      if chksample.Checked then
          sql.Add('   and isnull(SampleSent,0)=1  ');
      if ReportIDEdit.Text<>'' then
          sql.Add('   and mc.Lab_PDM_ID like ''%'+ReportIDEdit.Text+'%'' ');
      SQL.Add(' and RY is  null  ) mc ');
      SQL.Add('where mc.No_ID=MaterialQCcheck.NO_ID and mc.RY is not null ');
      //funcObj.WriteErrorLog(sql.Text);
      ExecSQL();
    end;
  
    with qry_Qc do
    begin
        active:=false;
        sql.Clear;
        sql.Add('if object_id(''tempdb..#Material'') is not null ');
        sql.Add('begin drop table #Material end');
        sql.Add('select mc.No_ID, mc.CLBH, mc.CGNO, mc.DateInput, mc.LB, mc.ZSBH,mc.RY,mc.Article,mc.CustPO, mc.Qty,mc.Tracking, mc.Lab_Check, mc.Lab_Reason, mc.Lab_Result, mc.Lab_Date');
        sql.Add('   ,mc.Lab_UserID, mc.Lab_Num, mc.Final_Status, mc.Final_Remark, mc.UserDate,mc.UserID,mc.Remark,mc.File_Name_Lab, mc.Lab_FinishDate, mc.Lab_PDM_ID, mc.T2Test_Result');
        sql.Add('   ,mc.Comparision, mc.Lab_PDM_IDT2, mc.Receducing_TLSP, mc.Lab_ConfirmDate,mc.Lab_DateRemark, mc.RKNO,mc.PDM_File_Name');
        sql.Add('	  ,clzl.YWPM as MaterialName,ZSZL.ZSYWJC as SupplierName,clzl.DWBH');
        sql.Add('into #Material');
        sql.Add('from MaterialQCcheck mc');
        sql.Add('					left join clzl on clzl.CLDH = mc.CLBH');
        sql.Add('					left Join ZSZL on ZSZL.ZSDH =mc.ZSBH');
        sql.Add('         left Join clzl_flex on  clzl_flex.cldh =clzl.cldh');
        sql.Add('where mc.GSBH='''+main.Edit2.Text+''' ');
        if chk1.Checked then
        begin
            sql.Add('       and CONVERT(varchar(10),mc.DateInput,111) between');
            sql.add('           '''+formatdatetime('yyyy/MM/dd',DTP1.date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.date)+''' ');
        end;
        if chk2.Checked then
            sql.Add('       and Tracking=''1'' ');

        sql.Add('       and mc.CGNO like '''+edt1.Text+'%'' ');
        sql.Add('       and mc.CLBH like '''+edt2.Text+'%'' ');
        sql.Add('       and ZSZL.ZSYWJC like '''+edt3.Text+'%'' ');

        if FlexID.Text <> '' then
            SQL.add('and clzl_flex.cldhflex like '''+FlexID.Text+'%'' ');
        if edtRy.Text <> '' then
            sql.Add('       and mc.RY like ''%'+edtRy.Text+'%'' ');
        if edtArticle.Text <> '' then
            sql.Add('       and mc.Article like ''%'+edtArticle.Text+'%'' ');
        if CustPo.Text <> '' then
            sql.Add('       and mc.CustPO like ''%'+CustPo.Text+'%'' ');
        if (edt4.Text<>'') and (edt5.Text='') then
            sql.Add('   and lab_num like '''+edt4.Text+'%'' ');
        if (edt4.Text<>'') and (edt5.Text<>'') then
            sql.Add('   and lab_num between '''+edt4.Text+'%'' and '''+edt5.Text+'%'' ');
        if SIDEdit.Text<>'' then
            sql.add(' and mc.No_ID like '''+SIDEdit.Text+'%'' ');
        if chksample.Checked then
            sql.Add('   and isnull(SampleSent,0)=1  ');
        if ReportIDEdit.Text<>'' then
            sql.Add('   and mc.Lab_PDM_ID like ''%'+ReportIDEdit.Text+'%'' ');
        sql.Add('order by mc.Userdate desc,mc.CLBH,LB asc');
        sql.Add('select * from #Material');
        //funcobj.WriteErrorLog(sql.Text);
        active:=true;
    end;

    if qry_Qc.RecordCount>0 then
    begin
      qry_RY.Active:=true;
      CBX1.Enabled:=true;
      btnMatReport.Enabled:=true;
    end;
    qry_Mat.Active:=true;
    //caculator % Matching
    with qry_Rate do
    begin
        active:=false;
        sql.Clear;
        sql.Add('SELECT a.Matching,b.NotMatching,a.Matching + b.NotMatching AS Total,ROUND((a.Matching*1.0/(a.Matching + b.NotMatching))*100,2) AS RateMat');
        sql.Add('FROM (');
        sql.Add('        select 1 as ID,count(*) AS Matching');
        sql.Add('        from #Material');
        sql.Add('        WHERE Comparision=''Matching''');
        sql.Add('      )a LEFT JOIN (');
        sql.Add('select 1 as ID,count(*) AS NotMatching');
        sql.Add('from #Material ');
        sql.Add('WHERE Comparision=''Not Matching''');
        sql.Add(')b ON a.ID=b.ID');
        active:=true;
    end;
    btnRelease.SetFocus;
end;

procedure TMatLabCheck.FormCreate(Sender: TObject);
var ServerIP:String;
begin
   DTP1.Date:=date-7;
   DTP2.Date:=date;
   FinishDT.Date:=date;
   AppDir:=ExtractFilePath(Application.ExeName);
   //複製報表目錄
   if DirectoryExists('\\'+main.ServerIP+'\liy_erp\Lab Report\')=true then
   begin
     DoCopyDir('\\'+main.ServerIP+'\liy_erp\Lab Report\',AppDir+'\Lab Report\');
   end;
   with qry1 do
   begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select SFL from bgszl where gsdh='''+main.Edit2.Text+''' ');
    Active:=true;
    SFL:=FieldByName('SFL').AsString;
    if SFL='DC' then
    begin
      qry_RY.Active:=false;
      qry_RY.SQL.Clear;
      qry_RY.SQL.Add('select mr.*,'''' as COUNTRY,kfxxzl.XieMing  as ModelName,do.XieXing,do.SheHao');
      qry_RY.SQL.Add(',MaterialQCcheck.CLBH');
      qry_RY.SQL.Add('FROM MaterialQCcheck_RY mr');
      qry_RY.SQL.Add('  Left join YPZL do ON mr.RY=do.YPDH');
      qry_RY.SQL.Add('  Left join kfxxzl on do.xiexing=kfxxzl.xiexing and do.shehao=kfxxzl.shehao');
      qry_RY.SQL.Add('  left join MaterialQCcheck on mr.No_ID=MaterialQCcheck.No_ID');
      qry_RY.SQL.Add('where mr.No_ID=:No_ID');
      //
      qry_Mat.Active:=false;
      qry_Mat.SQL.Clear;
      qry_Mat.SQL.Add('select YPZLS.BWBH,BWZL.ywsm as BWMC,YPZLS.CLBH,CLZL.YWPM as CLMC');
      qry_Mat.SQL.Add('FROM YPZLS');
      qry_Mat.SQL.Add('LEFT JOIN BWZL  ON YPZLS.BWBH = BWZL.bwdh                               ');
      qry_Mat.SQL.Add('LEFT JOIN CLZL   ON YPZLS.CLBH = CLZL.cldh');
      qry_Mat.SQL.Add('where YPZLS.CLBH=:CLBH and YPZLS.YPDH=:RY');
      qry_Mat.SQL.Add('group by YPZLS.BWBH,BWZL.ywsm,YPZLS.CLBH,CLZL.YWPM');
      qry_Mat.SQL.Add('UNION ALL');
      qry_Mat.SQL.Add('select YPZLS.BWBH,BWZL.ywsm as BWMC,CLZHZL.CLDH1 AS CLBH,CLZL.YWPM as CLMC');
      qry_Mat.SQL.Add('FROM YPZLS');
      qry_Mat.SQL.Add('INNER  JOIN CLZHZL   ON YPZLS.CLBH = CLZHZL.cldh');
      qry_Mat.SQL.Add('LEFT JOIN BWZL  ON YPZLS.BWBH = BWZL.bwdh');
      qry_Mat.SQL.Add('LEFT JOIN CLZL   ON CLZHZL.CLDH1 = CLZL.cldh');
      qry_Mat.SQL.Add('where CLZHZL.CLDH1=:CLBH and YPZLS.YPDH=:RY');
      qry_Mat.SQL.Add('group by YPZLS.BWBH,BWZL.ywsm,CLZHZL.CLDH1,CLZL.YWPM');
      qry_Mat.SQL.Add('ORDER BY BWBH');
    end else
    begin
      qry_RY.Active:=false;
      qry_RY.SQL.Clear;
      qry_RY.SQL.Add('select mr.*,lbzls.ywsm as COUNTRY,xxzl.XieMing  as ModelName,do.XieXing,do.SheHao');
      qry_RY.SQL.Add(',MaterialQCcheck.CLBH');
      qry_RY.SQL.Add('FROM MaterialQCcheck_RY mr');
      qry_RY.SQL.Add('  Left join DDZL do ON mr.RY=do.DDBH');
      qry_RY.SQL.Add('  Left join xxzl on do.xiexing=xxzl.xiexing and do.shehao=xxzl.shehao');
      qry_RY.SQL.Add('  left join lbzls on do.DDGB=lbzls.lbdh and lbzls.lb=''13'' ');
      qry_RY.SQL.Add('  left join MaterialQCcheck on mr.No_ID=MaterialQCcheck.No_ID');
      qry_RY.SQL.Add('where mr.No_ID=:No_ID');
      //
      qry_Mat.Active:=false;
      qry_Mat.SQL.Clear;
      qry_Mat.SQL.Add('select XXZLS.BWBH,BWZL.ywsm as BWMC,XXZLS.CLBH,CLZL.YWPM as CLMC');
      qry_Mat.SQL.Add('FROM XXZLS');
      qry_Mat.SQL.Add('LEFT JOIN BWZL  ON XXZLS.BWBH = BWZL.bwdh                               ');
      qry_Mat.SQL.Add('LEFT JOIN CLZL   ON XXZLS.CLBH = CLZL.cldh');
      qry_Mat.SQL.Add('where XXZLS.CLBH=:CLBH and XXZLS.XieXing=:XieXing and XXZLS.shehao=:Shehao');
      qry_Mat.SQL.Add('group by XXZLS.BWBH,BWZL.ywsm,XXZLS.CLBH,CLZL.YWPM');
      qry_Mat.SQL.Add('UNION ALL');
      qry_Mat.SQL.Add('select XXZLS.BWBH,BWZL.ywsm as BWMC,CLZHZL.CLDH1 AS CLBH,CLZL.YWPM as CLMC');
      qry_Mat.SQL.Add('FROM XXZLS');
      qry_Mat.SQL.Add('INNER  JOIN CLZHZL   ON XXZLS.CLBH = CLZHZL.cldh');
      qry_Mat.SQL.Add('LEFT JOIN BWZL  ON XXZLS.BWBH = BWZL.bwdh');
      qry_Mat.SQL.Add('LEFT JOIN CLZL   ON CLZHZL.CLDH1 = CLZL.cldh');
      qry_Mat.SQL.Add('where CLZHZL.CLDH1=:CLBH and XXZLS.XieXing=:XieXing and XXZLS.shehao=:Shehao');
      qry_Mat.SQL.Add('group by XXZLS.BWBH,BWZL.ywsm,CLZHZL.CLDH1,CLZL.YWPM');
      qry_Mat.SQL.Add('ORDER BY BWBH');
    end;
    Active:=false;
   end;
end;

procedure TMatLabCheck.btnmodifyClick(Sender: TObject);
begin
    if (qry_Qc.FieldByName('Lab_Date').Value<>null) and (qry_Qc.FieldByName('Lab_Date').Value + 30 < date) then
    begin
      Messagedlg('You can not modify after 30 days!!!',mtwarning,[mbyes],0);
      abort;
    end;

    with qry_Qc do
    begin
      requestlive:=true;
      cachedupdates:=true;
      edit;
    end;
    btnsave.Enabled:=true;
    btncancel.Enabled:=true;

    DBGridDetail.FieldColumns['Lab_FinishDate'].ButtonStyle:=cbsAuto;
    DBGridDetail.FieldColumns['Lab_Check'].ButtonStyle:=cbsAuto;
    DBGridDetail.FieldColumns['T2Test_Result'].ButtonStyle:=cbsAuto;
    DBGridDetail.FieldColumns['Comparision'].ButtonStyle:=cbsAuto;
    DBGridDetail.FieldColumns['Lab_Result'].ButtonStyle:=cbsAuto;
    DBGridDetail.FieldColumns['Lab_Reason'].ButtonStyle:=cbsEllipsis;
    DBGridDetail.FieldColumns['Receducing_TLSP'].ButtonStyle:=cbsEllipsis;
end;

procedure TMatLabCheck.btncancelClick(Sender: TObject);
begin
     with qry_Qc do
    begin
      active:=false;
      requestlive:=false;
      cachedupdates:=false;
      active:=true;
    end;
    btnsave.Enabled:=false;
    btncancel.Enabled:=false;
    DBGridDetail.FieldColumns['Lab_FinishDate'].ButtonStyle:=cbsNone;
    DBGridDetail.FieldColumns['Lab_Check'].ButtonStyle:=cbsNone;
    DBGridDetail.FieldColumns['Lab_Reason'].ButtonStyle:=cbsNone;
    DBGridDetail.FieldColumns['T2Test_Result'].ButtonStyle:=cbsNone;
    DBGridDetail.FieldColumns['Comparision'].ButtonStyle:=cbsNone;
    DBGridDetail.FieldColumns['Lab_Result'].ButtonStyle:=cbsNone;
    DBGridDetail.FieldColumns['Receducing_TLSP'].ButtonStyle:=cbsNone;
end;

procedure TMatLabCheck.btnsaveClick(Sender: TObject);
var i,j:integer;
begin
  try
    qry_Qc.first;
    for i:=1 to qry_Qc.RecordCount do
    begin
        case qry_Qc.updatestatus of
         usmodified:
          begin
               qry_Qc.edit;
               qry_Qc.fieldbyname('Lab_Num').Value:= trim(qry_Qc.fieldbyname('Lab_Num').AsString);
               qry_Qc.fieldbyname('Lab_PDM_ID').Value:= trim(qry_Qc.fieldbyname('Lab_PDM_ID').AsString);
               qry_Qc.fieldbyname('Lab_PDM_IDT2').Value:= trim(qry_Qc.fieldbyname('Lab_PDM_IDT2').AsString);
               qry_Qc.fieldbyname('Remark').Value:= trim(qry_Qc.fieldbyname('Remark').AsString);
               qry_Qc.fieldbyname('Lab_UserID').Value:=main.edit1.text;
               Upd_QC.apply(ukmodify);
        end;
      end;
      qry_Qc.next;
    end;


  except
    Messagedlg('Error, can not save data!',mtwarning,[mbyes],0);
    Abort;
  end;

  qry_Qc.active:=false;
  qry_Qc.cachedupdates:=false;
  qry_Qc.requestlive:=false;
  qry_Qc.active:=true;

  btnsave.Enabled:=false;
  btncancel.Enabled:=false;
  DBGridDetail.FieldColumns['Lab_FinishDate'].ButtonStyle:=cbsNone;
  DBGridDetail.FieldColumns['Lab_Check'].ButtonStyle:=cbsNone;
  DBGridDetail.FieldColumns['Lab_Reason'].ButtonStyle:=cbsNone;
  DBGridDetail.FieldColumns['T2Test_Result'].ButtonStyle:=cbsNone;
  DBGridDetail.FieldColumns['Comparision'].ButtonStyle:=cbsNone;
  DBGridDetail.FieldColumns['Lab_Result'].ButtonStyle:=cbsNone;
  DBGridDetail.FieldColumns['Receducing_TLSP'].ButtonStyle:=cbsNone;
end;

procedure TMatLabCheck.DBGridDetailDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
    if (column.FieldName='Lab_Check') and (qry_Qc.FieldByName('Lab_Check').AsString='Fail') or
       (column.FieldName='Final_Status') and (qry_Qc.FieldByName('Final_Status').AsString='Fail') or
       (column.FieldName='T2Test_Result') and (qry_Qc.FieldByName('T2Test_Result').AsString='Fail') then
    begin
        DBGridDetail.canvas.Font.color:=clred;
    end;

   if (column.FieldName='Lab_Check') and (qry_Qc.FieldByName('Lab_Check').AsString='Pass') or
      (column.FieldName='Final_Status') and (qry_Qc.FieldByName('Final_Status').AsString='Pass') or
      (column.FieldName='T2Test_Result') and (qry_Qc.FieldByName('T2Test_Result').AsString='Pass') then
    begin
        DBGridDetail.canvas.Font.color:=clblue;
    end;

     DBGridDetail.DefaultDrawColumnCell(rect,DataCol,column,state);
end;

procedure TMatLabCheck.Button2Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j,k,l:integer;
    BWMC:string;
begin
    if  qry_Qc.active  then
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
          eclApp.Cells(1,1):='RKNO';
          eclApp.Cells(1,2):='Date';
          eclApp.Cells(1,3):='Times';
          eclApp.Cells(1,4):='T A-09';
          eclApp.Cells(1,5):='RY Actual';
          eclApp.Cells(1,6):='Shipment';
          eclApp.Cells(1,7):='Article';
          eclApp.Cells(1,8):='Cust PO';
          eclApp.Cells(1,9):='Material ID';
          eclApp.Cells(1,10):='Material Name';
          eclApp.Cells(1,11):='Supplier Name';
          eclApp.Cells(1,12):='Qty';
          eclApp.Cells(1,13):='Unit';
          eclApp.Cells(1,14):='Remark';
          eclApp.Cells(1,15):='Finished Date';
          eclApp.Cells(1,16):='Result';
          eclApp.Cells(1,17):='Fail Reason';
          eclApp.Cells(1,18):='T2 Test Result';
          eclApp.Cells(1,19):='Comparision Result';
          eclApp.Cells(1,20):='Database';
          eclApp.Cells(1,21):='PDM T1 Test Report ID';
          eclApp.Cells(1,22):='PDM report';
          eclApp.Cells(1,23):='PDM T2 Test Report ID';
          eclApp.Cells(1,24):='Guarantee letter';
          eclApp.Cells(1,25):='Lab Test Remark';
          eclApp.Cells(1,26):='Receducing Test Method of TLSP';
          eclApp.Cells(1,27):='Confirmed Result';
          eclApp.Cells(1,28):='Remark Date';
          eclApp.Cells(1,29):='UserDate';
          eclApp.Cells(1,30):='UserID';
          eclApp.Cells(1,31):='Final Status Result';
          eclApp.Cells(1,32):='Final Status Remark';
          eclApp.Cells(1,33):='Used For';
          qry_Qc.First;
          j:=2;
          for   i:=0   to  qry_Qc.RecordCount-1  do
          begin
            eclApp.Cells(j,1):=qry_Qc.FieldByName('RKNO').Value;
            eclApp.Cells(j,2):=qry_Qc.FieldByName('DateInput').Value;
            eclApp.Cells(j,3):=qry_Qc.FieldByName('LB').Value;
            eclApp.Cells(j,4):=qry_Qc.FieldByName('Tracking').Value;
            eclApp.Cells(j,5):=qry_Qc.FieldByName('RY').Value;
            eclApp.Cells(j,6):=qry_Qc.FieldByName('CGNO').Value;
            eclApp.Cells(j,7):=qry_Qc.FieldByName('Article').Value;
            eclApp.Cells(j,8):=qry_Qc.FieldByName('CustPO').Value;
            eclApp.Cells(j,9):=qry_Qc.FieldByName('CLBH').Value;
            eclApp.Cells(j,10):=qry_Qc.FieldByName('MaterialName').Value;
            eclApp.Cells(j,11):=qry_Qc.FieldByName('SupplierName').Value;
            eclApp.Cells(j,12):=qry_Qc.FieldByName('Qty').Value;
            eclApp.Cells(j,13):=qry_Qc.FieldByName('DWBH').Value;
            eclApp.Cells(j,14):=qry_Qc.FieldByName('Remark').Value;
            eclApp.Cells(j,15):=qry_Qc.FieldByName('Lab_FinishDate').Value;
            eclApp.Cells(j,16):=qry_Qc.FieldByName('Lab_Check').Value;
            eclApp.Cells(j,17):=qry_Qc.FieldByName('Lab_Reason').Value;
            eclApp.Cells(j,18):=qry_Qc.FieldByName('T2Test_Result').Value;
            eclApp.Cells(j,19):=qry_Qc.FieldByName('Comparision').Value;
            eclApp.Cells(j,20):=qry_Qc.FieldByName('Lab_Num').Value;
            eclApp.Cells(j,21):=qry_Qc.FieldByName('Lab_PDM_ID').Value;
            eclApp.Cells(j,22):=qry_Qc.FieldByName('PDM_File_Name').Value;
            eclApp.Cells(j,23):=qry_Qc.FieldByName('Lab_PDM_IDT2').Value;
            eclApp.Cells(j,24):=qry_Qc.FieldByName('File_Name_Lab').Value;
            eclApp.Cells(j,25):=qry_Qc.FieldByName('Lab_Result').Value;
            eclApp.Cells(j,26):=qry_Qc.FieldByName('Receducing_TLSP').Value;
            eclApp.Cells(j,27):=qry_Qc.FieldByName('Lab_ConfirmDate').Value;
            eclApp.Cells(j,28):=qry_Qc.FieldByName('Lab_DateRemark').Value;
            eclApp.Cells(j,29):=qry_Qc.FieldByName('Lab_Date').Value;
            eclApp.Cells(j,30):=qry_Qc.FieldByName('Lab_UserID').Value;
            eclApp.Cells(j,31):=qry_Qc.FieldByName('Final_Status').Value;
            eclApp.Cells(j,32):=qry_Qc.FieldByName('Final_Remark').Value;
             //RY list
            BWBH.Active:=true;
            BWMC:='';
            BWBH.First;
            for k:=1 to BWBH.RecordCount do
            begin
              BWMC:=BWMC+BWBH.FieldByName('BWMC').AsString+',';   //Ex. AL1409-001,
              BWBH.Next;
            end;
            eclApp.Cells(j,33):=Copy(BWMC,1,length(BWMC)-1);
            qry_Qc.Next;
            inc(j);
          end;
          //  add outline
          for l:=1 to 4 do
            begin
              eclApp.range[eclApp.cells[1,1],eclApp.cells[j-1,33]].borders[l].linestyle:=1;
            end;
         //
        // eclapp.columns.autofit;
         showmessage('Succeed');
         eclApp.Visible:=True;
      except
          on   F:Exception   do
            showmessage(F.Message);
      end;
    end;
 BWBH.Active:=false;
end;
procedure CompressIt(var CompressedStream: TMemoryStream; const CompressionLevel: TCompressionLevel);
var
   SourceStream: TCompressionStream;
   DestStream: TMemoryStream;
   Count: int64;
begin
   Count := CompressedStream.Size;
   DestStream := TMemoryStream.Create;
   SourceStream := TCompressionStream.Create(CompressionLevel, DestStream);
   try
      CompressedStream.SaveToStream(SourceStream);
      SourceStream.Free;
      CompressedStream.Clear;
      CompressedStream.WriteBuffer(Count, SizeOf(Count));
      CompressedStream.CopyFrom(DestStream, 0);
   finally
      DestStream.Free;
   end;
end;

procedure UnCompressit(const CompressedStream: TMemoryStream; var UnCompressedStream: TMemoryStream);
var
   SourceStream: TDecompressionStream;
   DestStream: TMemoryStream;
   Buffer: PChar;
   Count: int64;
begin
   CompressedStream.ReadBuffer(Count, SizeOf(Count));
   GetMem(Buffer, Count);
   DestStream := TMemoryStream.Create;
   SourceStream := TDecompressionStream.Create(CompressedStream);
   try
      SourceStream.ReadBuffer(Buffer^, Count);
      DestStream.WriteBuffer(Buffer^, Count);
      DestStream.Position := 0;
      UnCompressedStream.LoadFromStream(DestStream);
   finally
      FreeMem(Buffer);
      DestStream.Free;
   end;
end;

procedure TMatLabCheck.mnu1Click(Sender: TObject);
var
   UploadObj: TFileTransClient;
   SaveFN,Response,FileString:String;
   IsActionUpload:boolean;
begin
  if qry_Qc.Active=false then exit;
  if OpenDialog1.Execute then
  begin
    if OpenDialog1.FileName<>'' then
    begin
      UploadObj := TFileTransClient.Create();
      //上傳
      SaveFN:=ExtractFileName(OpenDialog1.FileName);
      FileString := UploadObj.List('QC\' + main.Edit2.Text + '\Lab\');
      IsActionUpload:=true;
      // check file exists
      if Pos(SaveFN, FileString) > 0 then
      begin
        if MessageDlg('Override Lab File', mtCustom, [mbYes,mbNo], 0) = mrNo then
        begin
          IsActionUpload:=false;
          ShowMessage('File name exists!');
        end;
      end;
      if IsActionUpload=true then
      begin
        //先檢查是否擋案存在 先刪除
        if qry_Qc.fieldByName('File_Name_Lab').AsString<>'' then
           Response := UploadObj.delete(qry_Qc.fieldByName('File_Name_Lab').AsString,'QC\'+main.Edit2.Text+'\Lab\', false);

        Response := UploadObj.put(OpenDialog1.FileName,SaveFN,'QC\'+main.Edit2.Text+'\Lab\', false);
        if pos(',', Response) > 0 then  //fail
        begin
           showmessage(Response);
        end else
        begin
          with qry1 do
          begin
            active:=false;
            sql.Clear;
            SQL.Add('update MaterialQCCheck set File_Name_Lab='''+ExtractFileName(OpenDialog1.FileName)+'''  ');
            sql.Add('FROM MaterialQCcheck ');
            sql.Add('WHERE MaterialQCcheck.No_ID='+qry_Qc.fieldByName('NO_ID').AsString+' ');
            ExecSQL;
          end;
          showmessage(Response);
        end;
        qry_Qc.Active:=FALSE;
        qry_Qc.Active:=TRUE;
      end;
      UploadObj.Free;
    end;
  end;

end;

procedure TMatLabCheck.mnu2Click(Sender: TObject);
  function GetFileName(oFile,sFile:String):string;
  begin
    result:=ChangeFileExt(ExtractFileName(sFile),'')+ExtractFileExt(oFile);
  end;
var
   UploadObj: TFileTransClient;
   ms: TMemoryStream;
begin

  if not qry_Qc.FieldByName('File_Name_Lab').IsNull then
  begin
    savedialog1.FileName:=qry_Qc.FieldByName('File_Name_Lab').AsString;
    if SaveDialog1.Execute then
    begin
        UploadObj := TFileTransClient.Create();
        ms := TMemoryStream.Create;
        ms.LoadFromStream(UploadObj.down(qry_Qc.fieldByName('File_Name_Lab').AsString,'QC\'+main.Edit2.Text+'\Lab\', GetFileName(qry_Qc.fieldByName('File_Name_Lab').AsString,savedialog1.FileName) ));
        if ms.Size > 0 then  //fail
        begin
           showmessage('Download file OK')
        end else
        begin
          showmessage('Download file error');
        end;
        UploadObj.Free;
        ms.Free;
    end;
  end;

end;

procedure TMatLabCheck.mnu3Click(Sender: TObject);
var
   UploadObj: TFileTransClient;
   SaveFN,Response:String;
begin
     if not qry_Qc.FieldByName('File_Name_Lab').IsNull then
     begin
         if messagedlg('You want to delete guarantee letter?',mtconfirmation,[mbYes,MbNo],0)=mrYes then
         begin
            UploadObj := TFileTransClient.Create();
            //先檢查是否擋案存在 先刪除
            if qry_Qc.fieldByName('File_Name_Lab').AsString<>'' then
               Response := UploadObj.delete(qry_Qc.fieldByName('File_Name_Lab').AsString,'QC\'+main.Edit2.Text+'\Lab\', false);
            //刪除
            if pos(',', Response) > 0 then  //fail
            begin
               showmessage(Response);
            end else
            begin
              with qry1 do
              begin
                active:=false;
                sql.Clear;
                SQL.Add('update MaterialQCCheck set File_Name_Lab=null  ');
                sql.Add('FROM MaterialQCcheck ');
                sql.Add('WHERE MaterialQCcheck.No_ID='+qry_Qc.fieldByName('NO_ID').AsString+' ');
                ExecSQL;
              end;
              showmessage(Response);
            end;
            UploadObj.Free;
            qry_Qc.Active:=FALSE;
            qry_Qc.Active:=TRUE;
         end;
     end;
    
end;

procedure TMatLabCheck.qry_QcLab_CheckChange(Sender: TField);
begin
  if (qry_Qc.FieldByName('Lab_Check').AsString <> '') then
   begin
       if (qry_Qc.fieldbyname('Lab_ConfirmDate').Value <> null) and (qry_Qc.fieldbyname('Lab_ConfirmDate').Value <> date) then
       begin
           Messagedlg('You can not change value in this result!',mtwarning,[mbyes],0);
           btncancelClick(nil);
       end
       else
       begin
          qry_Qc.fieldbyname('Lab_ConfirmDate').Value:=formatdatetime('yyyy/mm/dd',date);
          qry_Qc.fieldbyname('Lab_UserID').Value:=main.edit1.text;
       end;
   end;
end;

procedure TMatLabCheck.DBGridDetailColumns14EditButtonClick(
  Sender: TObject; var Handled: Boolean);
begin
    if Lab_TestReason<> nil then
       Lab_TestReason.show
     else
     begin
         Lab_TestReason:=TLab_TestReason.Create(self);
         Lab_TestReason.Label4.Caption:='FailReason';
         Lab_TestReason.show;
     end;
end;

procedure TMatLabCheck.btnTMethodClick(Sender: TObject);
begin
    if Lab_TestReason<> nil then
       Lab_TestReason.show
     else
     begin
         Lab_TestReason:=TLab_TestReason.Create(self);
         Lab_TestReason.show;
     end;
end;

procedure TMatLabCheck.qry_QcLab_ResultChange(Sender: TField);
begin
    flag:=0;
    if qry_Qc.FieldByName('Lab_Result').AsString = 'Go to Production' then
    begin
       if (qry_Qc.FieldByName('Lab_Check').AsString = 'Fail') or (qry_Qc.FieldByName('Lab_Check').AsString = '') then
          flag:=1
       else
          flag:=0;
    end;

    qry_Qc.fieldbyname('Lab_DateRemark').Value:=formatdatetime('yyyy/mm/dd hh:mm:ss',now);
end;

procedure TMatLabCheck.ShowLab_Report();
var eclApp,WorkBook:olevariant;
    Season,StyleName,BWBHywsm:String;
    Qty:double;
begin
    if CBX1.ItemIndex>-1 then
    begin
       if (qry_Qc.Active) and (qry_Qc.recordcount=0)  then
       begin
           Messagedlg('No record.',mtwarning,[mbyes],0);
           exit;
       end ;
       if FileExists(AppDir+'Additional\Lab Report\'+CBX1.Text+'\LYNDC.xls')=false  then
       begin
          if (not DirectoryExists(AppDir+'Additional\Lab Report\'+CBX1.Text+'\'))  then ForceDirectories(AppDir+'Additional\Lab Report\'+CBX1.Text+'\');
             CopyFile(Pchar('\\'+main.ServerIP+'\liy_erp\Additional\Lab Report\'+CBX1.Text+'\LYNDC.xls'),Pchar(AppDir+'Additional\Lab Report\'+CBX1.Text+'\LYNDC.xls'),false);
       end;
       //
       if FileExists(AppDir+'Additional\Lab Report\'+CBX1.Text+'\LYNDC.xls')=true  then
       begin
         try
          eclApp:=CreateOleObject('Excel.Application');
          WorkBook:=CreateOleObject('Excel.Sheet');
         except
          Application.MessageBox('No Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
          Exit;
         end;
         try
          eclApp.WorkBooks.Open(AppDir+'Additional\Lab Report\'+CBX1.Text+'\LYNDC.xls');
          eclApp.WorkSheets[1].Activate;//第一頁為主
          eclApp.Cells(4,13):=qry_Qc.FieldByName('No_ID').Value;
          eclApp.Cells(9,3):=qry_Qc.FieldByName('MaterialName').Value;
          eclApp.Cells(12,7):=qry_Qc.FieldByName('SupplierName').Value;
          eclApp.Cells(13,3):=qry_Qc.FieldByName('Article').Value;
          //
          if SFL='DC' then //開發
          begin
            eclApp.Cells(6,3):='Development';
            eclApp.Cells(7,12):='Development';
            eclApp.Cells(11,16):='Development';
            with qry1 do
            begin
              Active:=false;
              SQL.Clear;
              SQL.Add('select kfxxzl.XieMing,KFXXZL.JiJie+'' ''+do.KFJD as Season,Sum(do.Quantity) as Quantity');
              SQL.Add('FROM MaterialQCcheck_RY mr');
              SQL.Add('  Left join YPZL do ON mr.RY=do.YPDH');
              SQL.Add('  Left join kfxxzl on do.xiexing=kfxxzl.xiexing and do.shehao=kfxxzl.shehao');
              SQL.Add('where mr.No_ID='+qry_Qc.FieldByName('No_ID').AsString );
              SQL.Add('Group by kfxxzl.XieMing,KFXXZL.JiJie+'' ''+do.KFJD');
              Active:=true;
              Season:=''; StyleName:=''; Qty:=0;
              while not eof do
              begin
                Season:=Season+FieldByName('Season').AsString+',';
                StyleName:=StyleName+FieldByName('XieMing').AsString+',';
                Qty:=Qty+FieldByName('Quantity').Value;
                Next;
              end;
              Active:=false;
            end;
            eclApp.Cells(12,3):=CopY(StyleName,1,length(StyleName)-1);
            eclApp.Cells(13,7):=CopY(Season,1,length(Season)-1);
            eclApp.Cells(12,16):=floattostr(Qty);
            eclApp.Cells(13,16):=qry_Qc.FieldByName('RY').Value;
            with qry1 do //部位
            begin
              Active:=false;
              SQL.Clear;
              SQL.Add('select ywsm from (');
              SQL.Add('select BWZL.ywsm ');
              SQL.Add('FROM MaterialQCcheck_RY mr');
              SQL.Add('  Left join YPZL  ON mr.RY=YPZL.YPDH');
              SQL.Add('  left join YPZLS on YPZL.YPDH=YPZLS.YPDH');
              SQL.Add('  LEFT JOIN BWZL  ON YPZLS.BWBH = BWZL.bwdh  ');
              SQL.Add('where mr.No_ID='+qry_Qc.FieldByName('No_ID').AsString+' and YPZLS.CLBH='''+qry_Qc.FieldByName('CLBH').AsString+'''');
              SQL.Add('Group by BWZL.ywsm ');
              SQL.Add('union all');
              SQL.Add('select BWZL.ywsm ');
              SQL.Add('FROM MaterialQCcheck_RY mr');
              SQL.Add('  Left join YPZL  ON mr.RY=YPZL.YPDH');
              SQL.Add('  left join YPZLS on YPZL.YPDH=YPZLS.YPDH');
              SQL.Add('  LEFT JOIN BWZL  ON YPZLS.BWBH = BWZL.bwdh');
              SQL.Add('  INNER  JOIN CLZHZL   ON YPZLS.CLBH = CLZHZL.cldh  ');
              SQL.Add('where mr.No_ID='+qry_Qc.FieldByName('No_ID').AsString+' and CLZHZL.CLDH1='''+qry_Qc.FieldByName('CLBH').AsString+'''');
              SQL.Add('Group by BWZL.ywsm ) BWZL');
              SQL.Add('Group by ywsm');
              Active:=true;
              BWBHywsm:='';
              while not eof do
              begin
                BWBHywsm:=BWBHywsm+FieldByName('ywsm').AsString+',';
                Next;
              end;
              Active:=false;
            end;
            eclApp.Cells(11,3):=CopY(BWBHywsm,1,length(BWBHywsm)-1);;
          end else //量產
          begin
            eclApp.Cells(6,3):='Production';
            eclApp.Cells(7,12):='Production';
            eclApp.Cells(11,16):='Production';
            with qry1 do
            begin
              Active:=false;
              SQL.Clear;
              SQL.Add('select xxzl.XieMing,do.BuyNO,Sum(IsNull(do.Pairs,0)) as Pairs');
              SQL.Add('FROM MaterialQCcheck_RY mr');
              SQL.Add('Left join DDZL do ON mr.RY=do.DDBH');
              SQL.Add('Left join xxzl on do.xiexing=xxzl.xiexing and do.shehao=xxzl.shehao');
              SQL.Add('where mr.No_ID='+qry_Qc.FieldByName('No_ID').AsString);
              SQL.Add('Group by xxzl.XieMing,do.BuyNO');
              Active:=true;
              Season:=''; StyleName:=''; Qty:=0;
              while not eof do
              begin
                Season:=Season+FieldByName('BuyNO').AsString+',';
                StyleName:=StyleName+FieldByName('XieMing').AsString+',';
                Qty:=Qty+FieldByName('Pairs').Value;
                Next;
              end;
              Active:=false;
            end;
            eclApp.Cells(12,3):=CopY(StyleName,1,length(StyleName)-1);
            eclApp.Cells(13,7):=CopY(Season,1,length(Season)-1);
            eclApp.Cells(12,16):=floattostr(Qty);
            eclApp.Cells(13,16):=qry_Qc.FieldByName('RY').Value;
            with qry1 do //部位
            begin
              Active:=false;
              SQL.Clear;
              SQL.Add('select ywsm from (');
              SQL.Add('select BWZL.ywsm');
              SQL.Add('FROM MaterialQCcheck_RY mr');
              SQL.Add('  Left join DDZL  ON mr.RY=DDZL.DDBH');
              SQL.Add('  Left join xxzl on DDZL.xiexing=xxzl.xiexing and DDZL.shehao=xxzl.shehao');
              SQL.Add('  left join XXZLS on xxzl.xiexing=xxzls.xiexing and xxzl.shehao=xxzls.shehao');
              SQL.Add('  LEFT JOIN BWZL  ON XXZLS.BWBH = BWZL.bwdh');
              SQL.Add('where mr.No_ID='+qry_Qc.FieldByName('No_ID').AsString+' and XXZLS.CLBH='''+qry_Qc.FieldByName('CLBH').AsString+'''');
              SQL.Add('Group by BWZL.ywsm');
              SQL.Add('union all');
              SQL.Add('select BWZL.ywsm');
              SQL.Add('FROM MaterialQCcheck_RY mr');
              SQL.Add('  Left join DDZL  ON mr.RY=DDZL.DDBH');
              SQL.Add('  Left join xxzl on DDZL.xiexing=xxzl.xiexing and DDZL.shehao=xxzl.shehao');
              SQL.Add('  left join XXZLS on xxzl.xiexing=xxzls.xiexing and xxzl.shehao=xxzls.shehao');
              SQL.Add('  LEFT JOIN BWZL  ON XXZLS.BWBH = BWZL.bwdh');
              SQL.Add('  INNER  JOIN CLZHZL ON XXZLS.CLBH = CLZHZL.cldh');
              SQL.Add('where mr.No_ID='+qry_Qc.FieldByName('No_ID').AsString+' and CLZHZL.CLDH1='''+qry_Qc.FieldByName('CLBH').AsString+'''');
              SQL.Add('Group by BWZL.ywsm ) BWZL');
              SQL.Add('Group by ywsm');
              Active:=true;
              BWBHywsm:='';
              while not eof do
              begin
                BWBHywsm:=BWBHywsm+FieldByName('ywsm').AsString+',';
                Next;
              end;
              Active:=false;
            end;
            eclApp.Cells(11,3):=CopY(BWBHywsm,1,length(BWBHywsm)-1);;
          end;
          showmessage('Succeed');
          eclApp.Visible:=True;
         except
            on   F:Exception   do
              showmessage(F.Message);
         end;
       end else
       begin
         showmessage('Lab Report File is not exists');
       end;
    end;
end;
//
procedure TMatLabCheck.btnMatReportClick(Sender: TObject);
begin
  ShowLab_Report();
end;

procedure TMatLabCheck.qry_QcAfterOpen(DataSet: TDataSet);
begin
    if qry_Qc.Active then
    begin
       btnmodify.Enabled:=true;
       btnTMethod.Enabled:=true;
       mnu1.Enabled:=true;
       mnu2.Enabled:=true;
       mnu3.Enabled:=true;
    end;
end;

procedure TMatLabCheck.qry_RateAfterOpen(DataSet: TDataSet);
begin
    //display % matching in Comparision column.
    if qry_Rate.RecordCount > 0 then
    begin
        DBGridDetail.FieldColumns['Comparision'].Footer.ValueType:= fvtStaticText;
        DBGridDetail.FieldColumns['Comparision'].Footer.Value:= qry_Rate.FieldByName('RateMat').AsString + '%';
    end;
end;

procedure TMatLabCheck.UploadPDMReport1Click(Sender: TObject);
var
   UploadObj: TFileTransClient;
   SaveFN,Response,FileString:String;
   IsActionUpload:boolean;
begin
  if qry_Qc.Active=false then exit;
  if OpenDialog1.Execute then
  begin
    if OpenDialog1.FileName<>'' then
    begin
      UploadObj := TFileTransClient.Create();
      //上傳
      SaveFN:=ExtractFileName(OpenDialog1.FileName);
      FileString := UploadObj.List('QC\' + main.Edit2.Text + '\PDM\');
      IsActionUpload:=true;
      // check file exists
      if Pos(SaveFN, FileString) > 0 then
      begin
        if MessageDlg('Override Mat File', mtCustom, [mbYes,mbNo], 0) = mrNo then
        begin
          IsActionUpload:=false;
          ShowMessage('File name exists!');
        end;
      end;
      if IsActionUpload=true then
      begin
        //先檢查是否擋案存在 先刪除
        if qry_Qc.fieldByName('PDM_File_Name').AsString<>'' then
           Response := UploadObj.delete(qry_Qc.fieldByName('PDM_File_Name').AsString,'QC\'+main.Edit2.Text+'\PDM\', false);

        Response := UploadObj.put(OpenDialog1.FileName,SaveFN,'QC\'+main.Edit2.Text+'\PDM\', false);
        if pos(',', Response) > 0 then  //fail
        begin
           showmessage(Response);
        end else
        begin
          with qry1 do
          begin
            active:=false;
            sql.Clear;
            SQL.Add('update MaterialQCCheck set PDM_File_Name='''+ExtractFileName(OpenDialog1.FileName)+'''  ');
            sql.Add('FROM MaterialQCcheck ');
            sql.Add('WHERE MaterialQCcheck.No_ID='+qry_Qc.fieldByName('NO_ID').AsString+' ');
            ExecSQL;
          end;
          showmessage(Response);
        end;
        qry_Qc.Active:=FALSE;
        qry_Qc.Active:=TRUE;
      end;
      UploadObj.Free;

    end;
  end;
end;

procedure TMatLabCheck.DownloadPDMReport1Click(Sender: TObject);
  function GetFileName(oFile,sFile:String):string;
  begin
    result:=ChangeFileExt(ExtractFileName(sFile),'')+ExtractFileExt(oFile);
  end;
var
   UploadObj: TFileTransClient;
   ms: TMemoryStream;
begin

  if not qry_Qc.FieldByName('PDM_File_Name').IsNull then
  begin
    savedialog1.FileName:=qry_Qc.FieldByName('PDM_File_Name').AsString;
    if SaveDialog1.Execute then
    begin
        UploadObj := TFileTransClient.Create();
        ms := TMemoryStream.Create;
        ms.LoadFromStream(UploadObj.down(qry_Qc.fieldByName('PDM_File_Name').AsString,'QC\'+main.Edit2.Text+'\PDM\', GetFileName(qry_Qc.fieldByName('PDM_File_Name').AsString,savedialog1.FileName) ));
        if ms.Size > 0 then  //fail
        begin
           showmessage('Download file OK')
        end else
        begin
          showmessage('Download file error');
        end;
        UploadObj.Free;
        ms.Free;
    end;
  end;

end;

procedure TMatLabCheck.DeletePDMReport1Click(Sender: TObject);
var
   UploadObj: TFileTransClient;
   SaveFN,Response:String;
begin
     if not qry_Qc.FieldByName('PDM_File_Name').IsNull then
     begin
         if messagedlg('You want to delete guarantee letter?',mtconfirmation,[mbYes,MbNo],0)=mrYes then
         begin
            UploadObj := TFileTransClient.Create();
            //先檢查是否擋案存在 先刪除
            if qry_Qc.fieldByName('PDM_File_Name').AsString<>'' then
               Response := UploadObj.delete(qry_Qc.fieldByName('PDM_File_Name').AsString,'QC\'+main.Edit2.Text+'\PDM\', false);
            //刪除
            if pos(',', Response) > 0 then  //fail
            begin
               showmessage(Response);
            end else
            begin
              with qry1 do
              begin
                active:=false;
                sql.Clear;
                SQL.Add('update MaterialQCCheck set PDM_File_Name=null  ');
                sql.Add('FROM MaterialQCcheck ');
                sql.Add('WHERE MaterialQCcheck.No_ID='+qry_Qc.fieldByName('NO_ID').AsString+' ');
                ExecSQL;
              end;
              showmessage(Response);
            end;
            UploadObj.Free;
            qry_Qc.Active:=FALSE;
            qry_Qc.Active:=TRUE;
         end;
     end;

end;

procedure TMatLabCheck.DBGridDetailColumns24EditButtonClick(
  Sender: TObject; var Handled: Boolean);
begin
  if Lab_TestReason<> nil then
       Lab_TestReason.show
     else
     begin
         Lab_TestReason:=TLab_TestReason.Create(self);
         Lab_TestReason.Label4.Caption:='TLSP';
         Lab_TestReason.show;
     end;
end;

procedure TMatLabCheck.qry_QcRYGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin
  Text := Copy(qry_QcRY.AsString, 1, 8000);
end;

procedure TMatLabCheck.Button3Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j,k,Voffset,Hoffset,index:integer;
begin
if not chk1.Checked then
  begin
    showmessage('Pls check and select Date');
    abort;
  end;
  with qry1 do
  begin
    active:=false;
    sql.Clear;
    sql.Add('select MaterialQCcheck.zsbh,ZSZL.ZSYWJC as ''SUPPLIER NAME'', ');
    sql.Add('count(*) as ''TESTED TOTAL'',');
    sql.Add('isnull(case when lab_check=''Fail'' then count(*) end,0) as ''REJECTED TOTAL'' ');
    sql.Add('from MaterialQCcheck left Join ZSZL on ZSZL.ZSDH =MaterialQCcheck.ZSBH');
    sql.Add('where gsbh='''+main.Edit2.Text+''' and lab_check is not null');
    sql.Add('       and CONVERT(varchar(10),DateInput,111) between');
    sql.add('           '''+formatdatetime('yyyy/MM/dd',DTP1.date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.date)+''' ');
    sql.Add('group by   MaterialQCcheck.zsbh,ZSZL.ZSYWJC,lab_check');
    active:=true;
  end;
  if FileExists(AppDir+'Additional\weekly.xls')=false  then
   begin
     if(not DirectoryExists(AppDir+'Additional\'))  then ForceDirectories(AppDir+'Additional\');
     CopyFile(Pchar('\\'+main.ServerIP+'\liy_erp\Additional\weekly.xls'),Pchar(AppDir+'Additional\weekly.xls'),false);
   end;
   if FileExists(AppDir+'Additional\weekly.xls') then
   begin
        try
          eclApp:=CreateOleObject('Excel.Application');
          WorkBook:=CreateOleObject('Excel.Sheet');
        except
          Application.MessageBox('No Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
          Exit;
        end;
        try
          eclApp.WorkBooks.Open(AppDir+'Additional\weekly.xls');
          eclApp.WorkSheets[1].Activate;//2A?@-??°￥D
          eclApp.Cells(2,2):=formatdatetime('yyyy/MM/dd',DTP1.date)+'~'+ formatdatetime('yyyy/MM/dd',DTP2.date);
          index:=0;
          Hoffset:=1;
          Voffset:=4;

          qry1.First;
          for i:=1 to qry1.RecordCount do
          begin
            eclApp.Cells(Voffset+index,1):=inttostr(i);
            eclApp.Cells(Voffset+index,2):=qry1.FieldByName('SUPPLIER NAME').Value;
            eclApp.Cells(Voffset+index,3):=qry1.FieldByName('TESTED TOTAL').Value;
            eclApp.Cells(Voffset+index,4):=qry1.FieldByName('REJECTED TOTAL').Value;
            eclApp.Cells(Voffset+index,5):=qry1.FieldByName('REJECTED TOTAL').Value/qry1.FieldByName('TESTED TOTAL').Value;
            qry1.Next;
            inc(index);
          end;
          eclApp.Range[eclApp.Cells[i+3,2],eclApp.Cells[i+3,5]].font.size:=18;
          eclApp.Range[eclApp.Cells[i+3,2],eclApp.Cells[i+3,5]].font.Bold:=true;
          eclApp.Cells(i+3,2):= 'TOTAL';
          eclApp.Cells[i+3,3].Formula:='=SUM(C4:C'+inttostr(i+2)+')';
          eclApp.Cells[i+3,4].Formula:='=SUM(D4:D'+inttostr(i+2)+')';
          eclApp.Cells[i+3,5].Formula:='=SUM(E4:E'+inttostr(i+2)+')';
          eclApp.Range[eclApp.Cells[i+4,1],eclApp.Cells[i+4,5]].merge;
          eclApp.Range[eclApp.Cells[i+4,1],eclApp.Cells[i+4,5]].font.Bold:=true;
          eclApp.Cells(i+4,1):='Pro. Manager    Warehouse supervisor    QC Master   Lab Supervisor    Reporter';
          // add outline
            for k:=1 to 4 do
            begin
               eclApp.range[eclApp.cells[4,1],eclApp.cells[i+3,5]].borders[k].linestyle:=1;
            end;
          //


          showmessage('Succeed');
          eclApp.Visible:=True;
        except
            on   F:Exception   do
              showmessage(F.Message);
        end;
      end;
end;
//
function TMatLabCheck.DoCopyDir(sDirName:String;sToDirName:String):Boolean;
var
   F: TSearchRec;
   //hFindFile:Cardinal;
   t,tfile:String;
   sCurDir:String[255];
   FindFileData:WIN32_FIND_DATA;
begin
   //
   sCurDir:=GetCurrentDir;
   ChDir(sDirName);
   F.FindHandle:=FindFirstFile('*.*',FindFileData);
   if F.FindHandle<>INVALID_HANDLE_VALUE then
   begin
    if not DirectoryExists(sToDirName) then //
     ForceDirectories(sToDirName); //
    repeat
     tfile:=FindFileData.cFileName;
     if (tfile='.') or (tfile='..') then
      Continue;
     if FindFileData.dwFileAttributes=FILE_ATTRIBUTE_DIRECTORY then
     begin
      t:=sToDirName+'\'+tfile;
      if not DirectoryExists(t) then
       ForceDirectories(t);
      if sDirName[Length(sDirName)]<>'\' then
       DoCopyDir(sDirName+'\'+tfile,t)
      else
       DoCopyDir(sDirName+tfile,sToDirName+tfile);
     end
     else
     begin
      t:=sToDirName+'\'+tFile;
      CopyFile(PChar(tfile),PChar(t),false);
     end;
    until FindNextFile(F.FindHandle,FindFileData)=false;
    FindClose(F);
   end
   else
   begin
    ChDir(sCurDir);
    result:=false;
    exit;
   end;
   ChDir(sCurDir);
   result:=true;
end;
//

function IsDate(str: string): Boolean;
var
  dt: TDateTime;
begin
  Result := True;
  try
    dt := StrToDate(str);
  except
    Result := False;
  end;
end;

procedure TMatLabCheck.MultirowsFinisheddate1Click(Sender: TObject);
var FDate,PO: String;
    i:integer;
begin
  DBGridDetail.Columns[13].ButtonStyle:=cbsellipsis;
  if DBGridDetail.SelectedField.FieldName='Lab_FinishDate' then
  begin
    if DBGridDetail.SelectedField.FieldName='Lab_FinishDate' then FDate:=inputbox('Please Input Lab_FinishDate','Lab_FinishDate:','../../../');
    if (FDate<>'')  then
    begin
      if not IsDate(FDate) then
      begin
        showmessage ('Pls input datetime');
        abort;
      end;
    end;
    qry_RY.Active:=false;
    qry_Mat.Active:=false;
    with qry_Qc do
    begin
      //while not Eof do
      for i:=0 to qry_Qc.RecordCount-1 do
      begin
        Edit;
        if PO='' then PO:=FieldByName('CLBH').AsString;
        if PO=FieldByName('CLBH').AsString then
        begin
          if DBGridDetail.SelectedField.FieldName='Lab_FinishDate' then FieldByName('Lab_FinishDate').Value:=FDate;
        end;
        Next;
      end;
    end;
    qry_RY.Active:=true;
    qry_Mat.Active:=true;
  end;
end;

procedure TMatLabCheck.MultirowsResult1Click(Sender: TObject);
var Check, PO: String;
    i:integer;
begin
  DBGridDetail.Columns[14].ButtonStyle:=cbsellipsis;
  if DBGridDetail.SelectedField.FieldName='Lab_Check' then
  begin
    if DBGridDetail.SelectedField.FieldName='Lab_Check' then Check:=inputbox('Please Input Lab_Check','Lab_Check:','Fail or Pass or Limited');
    if ((check <>'') and (Check<>'Fail') and (Check<>'Pass') and (Check<>'Limited'))then
    begin
        showmessage ('Pls input Fail or Pass or Limited');
        abort;
    end;
    qry_RY.Active:=false;
    qry_Mat.Active:=false;
    with qry_Qc do
    begin
      //while not Eof do
      for i:=0 to qry_Qc.RecordCount-1 do
      begin
        Edit;
        if PO='' then PO:=FieldByName('CLBH').AsString;
        if PO=FieldByName('CLBH').AsString then
        begin
          if DBGridDetail.SelectedField.FieldName='Lab_Check' then FieldByName('Lab_Check').Value:=Check;
        end;
        Next;
      end;
    end;
    qry_RY.Active:=true;
    qry_Mat.Active:=true;    
  end;
end;


procedure TMatLabCheck.SIDEditKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=Chr(13) then Button1.Click;
end;

procedure TMatLabCheck.BBUClick(Sender: TObject);
begin
  mnu1.Click;
end;

procedure TMatLabCheck.BBDClick(Sender: TObject);
begin
  mnu2.Click;
end;

procedure TMatLabCheck.btnReleaseClick(Sender: TObject);
begin
  if qry_Qc.Active=false then
  begin
    SIDEdit.SetFocus;
    Exit;
  end;
  if qry_Qc.RecordCount=0 then
  begin
    SIDEdit.SetFocus;
    Exit;
  end;
  with  qry1 do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Update MaterialQCcheck set Lab_FinishDate='''+FormatDateTime('YYYY/MM/DD',FinishDT.Date)+''',Lab_Check=''Pass'',Lab_Date=Getdate(),Lab_UserID='''+main.edit1.text+''' where NO_ID='+qry_Qc.FieldByName('No_ID').AsString+' ');
    ExecSQL();
  end;
  qry_Qc.Active:=FALSE;
  qry_Qc.Active:=TRUE;
  SIDEdit.SetFocus;
end;

procedure TMatLabCheck.BtnRejectClick(Sender: TObject);
begin
  if qry_Qc.Active=false then
  begin
    SIDEdit.SetFocus;
    Exit;
  end;
  if qry_Qc.RecordCount=0 then
  begin
    SIDEdit.SetFocus;
    Exit;
  end;
  with  qry1 do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Update MaterialQCcheck set Lab_FinishDate='''+FormatDateTime('YYYY/MM/DD',FinishDT.Date)+''',Lab_Check=''Fail'',Lab_Date=Getdate(),Lab_UserID='''+main.edit1.text+''' where NO_ID='+qry_Qc.FieldByName('No_ID').AsString+' ');
    ExecSQL();
  end;
  qry_Qc.Active:=FALSE;
  qry_Qc.Active:=TRUE;
  SIDEdit.SetFocus;
end;

procedure TMatLabCheck.BBUFolerClick(Sender: TObject);
begin
  if (MatLabCheck_Upload <> Nil) then
    MatLabCheck_Upload.Close;
  MatLabCheck_Upload:=TMatLabCheck_Upload.Create(self);
  MatLabCheck_Upload.Show;
end;

procedure TMatLabCheck.BBUploadClick(Sender: TObject);
var
  eclApp, WorkBook: OleVariant;
  RequestedDate, MatID, TestResult: string;
begin
  if (OpenDialog1.Execute) then
  begin
    if (OpenDialog1.FileName <> '') then
    begin
      if FileExists(OpenDialog1.FileName) then
      begin
        try
          eclApp:=CreateOleObject('Excel.Application');
          WorkBook:=CreateOleObject('Excel.Sheet');
        except
          Application.MessageBox('No Microsoft Excel', 'Microsoft Excel', MB_OK + MB_ICONWarning);
          Exit;
        end;

        try
          eclApp.WorkBooks.Open(OpenDialog1.FileName);
          eclApp.WorkSheets[1].Activate; //第一頁為主
          RequestedDate := eclApp.Cells[3, 7];
          MatID := eclApp.Cells[20, 12];
          TestResult := eclApp.Cells[4, 2];
          WorkBook.Close(false);
          eclApp.Application.Quit;
          if (UploadExcleReport <> Nil) then
            UploadExcleReport.Close;
          UploadExcleReport := TUploadExcleReport.Create(Self);
          UploadExcleReport.LoadData(RequestedDate, MatID, TestResult, OpenDialog1.FileName);
          UploadExcleReport.Show;
        except on F:Exception do
          ShowMessage(F.Message);
        end;
      end;
    end;
  end;
end;

end.






