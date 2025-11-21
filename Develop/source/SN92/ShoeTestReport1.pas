unit ShoeTestReport1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DB, DBTables, GridsEh, DBGridEh, StdCtrls, Mask,
  DBCtrlsEh, Buttons, FileCtrl, Menus,comobj, ComCtrls;

type
  TShoeTestReport = class(TForm)
    background: TPanel;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Button1: TButton;
    DBGridEh1: TDBGridEh;
    Query1: TQuery;
    DS1: TDataSource;
    Label5: TLabel;
    TestNoEdit: TEdit;
    Label3: TLabel;
    ArticleEdit: TEdit;
    Label6: TLabel;
    SCBHEdit: TEdit;
    Panel4: TPanel;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    DBEditEh1: TDBEditEh;
    DBEditEh2: TDBEditEh;
    DBEditEh3: TDBEditEh;
    DBEditEh4: TDBEditEh;
    DBEditEh5: TDBEditEh;
    Panel5: TPanel;
    Edit9: TEdit;
    Edit10: TEdit;
    Edit11: TEdit;
    Edit12: TEdit;
    Edit13: TEdit;
    DBEditEh6: TDBEditEh;
    DBEditEh7: TDBEditEh;
    DBEditEh8: TDBEditEh;
    DBEditEh9: TDBEditEh;
    DBEditEh10: TDBEditEh;
    Edit14: TEdit;
    Edit15: TEdit;
    Edit16: TEdit;
    Edit17: TEdit;
    Edit18: TEdit;
    DBEditEh11: TDBEditEh;
    DBEditEh12: TDBEditEh;
    DBEditEh13: TDBEditEh;
    DBEditEh14: TDBEditEh;
    DBEditEh15: TDBEditEh;
    Query2: TQuery;
    DS2: TDataSource;
    Query2TestNO: TStringField;
    Query2TestID: TStringField;
    Query2Result: TStringField;
    Query2Comment: TStringField;
    Query2FailureReason: TStringField;
    Query2Remark: TStringField;
    Query2UserDate: TDateTimeField;
    Query2UserID: TStringField;
    Query2ApprovedUserID: TStringField;
    Query2Standard: TStringField;
    Query2InspectedID: TStringField;
    BBD: TBitBtn;
    GSBHCombo: TComboBox;
    DBGridEh2: TDBGridEh;
    Panel8: TPanel;
    Edit29: TEdit;
    Edit30: TEdit;
    Edit31: TEdit;
    Edit32: TEdit;
    DBEditEh26: TDBEditEh;
    DBEditEh27: TDBEditEh;
    DBEditEh28: TDBEditEh;
    Edit33: TEdit;
    DBEditEh29: TDBEditEh;
    Edit34: TEdit;
    DBEditEh30: TDBEditEh;
    DBEditEh31: TDBEditEh;
    Edit35: TEdit;
    Edit36: TEdit;
    DBEditEh32: TDBEditEh;
    Edit37: TEdit;
    DBEditEh33: TDBEditEh;
    DBEditEh34: TDBEditEh;
    Splitter1: TSplitter;
    Query1TestNo: TStringField;
    Query1scbh: TStringField;
    Query1Devcode: TStringField;
    Query1reportNO: TStringField;
    Query1Result: TStringField;
    Query1Userdate: TDateTimeField;
    Query1GSBH: TStringField;
    Query1Applicant1: TStringField;
    Query1Applicant2: TStringField;
    Query1TestPurpose: TStringField;
    Query1ReportCCto: TStringField;
    Query1ReceiveDate: TDateTimeField;
    Query1Factory: TStringField;
    Query1siz: TStringField;
    Query1ProductionLine: TStringField;
    Query1CustomerPO: TStringField;
    Query1xieming: TStringField;
    Query1ShipTo: TStringField;
    Query1Category: TStringField;
    Query1YSSM: TStringField;
    Query1DateofManufacturing: TDateTimeField;
    Query1Article: TStringField;
    Edit19: TEdit;
    DBEditEh16: TDBEditEh;
    Query2TestReason: TStringField;
    tmpQuery: TQuery;
    Label1: TLabel;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    Label2: TLabel;
    Label4: TLabel;
    SREdit: TEdit;
    Button2: TButton;
    Query2FilePath: TStringField;
    Query1CKBH: TStringField;
    GroupBox1: TGroupBox;
    Label7: TLabel;
    TestCombo: TComboBox;
    TestReason: TLabel;
    Button3: TButton;
    Button4: TButton;
    Query3: TQuery;
    Query3TestNO: TStringField;
    Query3GSBH: TStringField;
    Query3SCBH: TStringField;
    Query3Devcode: TStringField;
    Query3USERDATE: TDateTimeField;
    Query3TestID: TStringField;
    Query3JiJie: TStringField;
    Query3XieMing: TStringField;
    Query3article: TStringField;
    Query3YSSM: TStringField;
    Query3YPCC: TStringField;
    Query3KFLX: TStringField;
    Query3FailureReason: TStringField;
    Query3Comment: TStringField;
    Query3Remark: TStringField;
    Query3Result: TStringField;
    DS3: TDataSource;
    Query3FD: TStringField;
    Query2Sampleroom: TBooleanField;
    Query2Materialteam: TBooleanField;
    Query2Outsolefactory: TBooleanField;
    Query2Rubberfactory: TBooleanField;
    Query2Printingfacory: TBooleanField;
    Query3Sampleroom: TBooleanField;
    Query3Materialteam: TBooleanField;
    Query3Outsolefactory: TBooleanField;
    Query3Rubberfactory: TBooleanField;
    Query3Printingfacory: TBooleanField;
    Query3KFJD: TStringField;
    Query3DevType: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BBDClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure TestComboChange(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    AppDir:String;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ShoeTestReport: TShoeTestReport;

implementation

uses main1, FunUnit;

{$R *.dfm}

procedure TShoeTestReport.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TShoeTestReport.FormDestroy(Sender: TObject);
begin
   ShoeTestReport := nil;
end;

procedure TShoeTestReport.Button1Click(Sender: TObject);
var SFL:string;
begin
  Query2.Active:=false;
  with tmpQuery do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select SFL from BGSZL where GSDH='''+GSBHCombo.text+''' ');
    Active:=true;
    SFL:=FieldByName('SFL').AsString;
    Active:=false;
  end;
  //開發
  if SFL='DC'  then
  begin
    with query1 do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('Select Lab_shoetest.TestNo,Lab_shoetest.scbh,KFXXZL.Devcode,lab_shoetest.reportNO,IsNull(Lab_shoetestS.Result,'''') as Result ,lab_shoetest.Userdate,lab_shoetest.GSBH');
      SQL.Add('       ,lab_shoetest.CKBH,Lab_shoetest.Applicant1,Lab_shoetest.Applicant2,Lab_shoetest.TestPurpose,Lab_shoetest.ReportCCto,Lab_shoetest.ReceiveDate  ');
      SQL.Add('       ,Lab_shoetest.Factory,shoetest.siz,Lab_shoetest.ProductionLine,Lab_shoetest.CustomerPO,kfxxzl.xieming,Lab_shoetest.ShipTo');
      SQL.Add('       ,kfxxzl.Category,kfxxzl.YSSM,Lab_shoetest.DateofManufacturing,XXZL.Article');
      SQL.Add('from Lab_shoetest');
      SQL.Add('Left join shoetest on shoetest.testno=lab_shoetest.scbh');
      SQL.Add('Left join YPZL on YPZL.YPDH=shoetest.YPDH');
      SQL.Add('Left join KFXXZL on KFXXZL.XieXing=YPZL.XieXing and KFXXZL.SheHao=YPZL.SheHao');
      SQL.Add('Left join XXZL on XXZL.XieXing=YPZL.XieXing and XXZL.SheHao=YPZL.SheHao ');
      if TestCombo.Text<>'' then
      begin
        SQL.Add('Left join (');
        SQL.Add('   Select TestNo,TestID,Min(Result) as Result from Lab_shoetestS  Group by TestNo,TestID');
        SQL.Add('   ) Lab_shoetestS on Lab_shoetestS.TestNo=Lab_shoetest.TestNo');
      end else begin
        SQL.Add('Left join (');
        SQL.Add('   Select TestNo,Min(Result) as Result from Lab_shoetestS  Group by TestNo');
        SQL.Add('   ) Lab_shoetestS on Lab_shoetestS.TestNo=Lab_shoetest.TestNo');
      end;
      SQL.Add('where Lab_shoetest.YN is null');
      SQL.Add('      and isnull(Lab_shoetest.ckbh,Lab_shoetest.gsbh)='''+GSBHCombo.Text+''' ');
      if TestCombo.Text<>'' then
        SQL.Add('    and Lab_shoetestS.TestID='''+TestCombo.Text+''' ');
      if TestNoEdit.Text<>'' then
        SQL.Add('    and Lab_shoetest.TestNO like '''+TestNoEdit.Text+'%'' ');
      if ArticleEdit.Text<>'' then
        SQL.Add('    and XXZL.article like ''%'+ArticleEdit.Text+'%'' ');
      if SREdit.Text<>'' then
        SQL.Add('    and KFXXZL.Devcode like ''%'+SREdit.Text+'%'' ');
      if SCBHEdit.Text<>'' then
        SQL.Add('    and Lab_shoetest.SCBH like '''+SCBHEdit.Text+'%'' ');
      SQL.add('      and convert(smalldatetime,convert(varchar,Lab_shoetest.USERDATE,111)) between ');
      SQL.add('      '''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date) +'''');
      //funcobj.WriteErrorLog(sql.Text);
      Active:=true;
    end;
  end;

  //量產
  if SFL='PD'  then
  begin
    with query1 do
    begin
      Active:=false;
      Sql.Clear;
      SQL.Add('Select Lab_shoetest.TestNo,Lab_shoetest.scbh,KFXXZL.Devcode,lab_shoetest.reportNO,IsNull(Lab_shoetestS.Result,'''') as Result ,lab_shoetest.Userdate,lab_shoetest.GSBH ');
      SQL.Add('       ,lab_shoetest.CKBH,Lab_shoetest.Applicant1,Lab_shoetest.Applicant2,Lab_shoetest.TestPurpose,Lab_shoetest.ReportCCto,Lab_shoetest.ReceiveDate  ');
      SQL.Add('       ,Lab_shoetest.Factory,shoetest.siz,Lab_shoetest.ProductionLine,Lab_shoetest.CustomerPO,kfxxzl.xieming,Lab_shoetest.ShipTo');
      SQL.Add('       ,kfxxzl.Category,kfxxzl.YSSM,Lab_shoetest.DateofManufacturing,XXZL.Article  ');
      SQL.Add('from Lab_shoetest');
      SQL.Add('Left join shoetest on shoetest.testno=lab_shoetest.scbh');
      SQL.Add('left join DDZL on ddzl.ddbh=lab_shoetest.scbh');
      SQL.Add('Left join KFXXZL on KFXXZL.XieXing=DDZL.XieXing and KFXXZL.SheHao=DDZL.SheHao');
      SQL.Add('Left join XXZL on XXZL.XieXing=DDZL.XieXing and XXZL.SheHao=DDZL.SheHao ');
      if TestCombo.Text<>'' then
      begin
        SQL.Add('Left join (');
        SQL.Add('   Select TestNo,TestID,Min(Result) as Result from Lab_shoetestS  Group by TestNo,TestID');
        SQL.Add('   ) Lab_shoetestS on Lab_shoetestS.TestNo=Lab_shoetest.TestNo');
      end else begin
        SQL.Add('Left join (');
        SQL.Add('   Select TestNo,Min(Result) as Result from Lab_shoetestS  Group by TestNo');
        SQL.Add('   ) Lab_shoetestS on Lab_shoetestS.TestNo=Lab_shoetest.TestNo');
      end;
      SQL.Add('where Lab_shoetest.YN is null');
      SQL.Add('      and isnull(Lab_shoetest.ckbh,Lab_shoetest.gsbh)='''+GSBHCombo.Text+''' ');
      if TestCombo.Text<>'' then
        SQL.Add('    and Lab_shoetestS.TestID='''+TestCombo.Text+''' ');
      if TestNoEdit.Text<>'' then
        SQL.Add('    and Lab_shoetest.TestNO like '''+TestNoEdit.Text+'%'' ');
      if ArticleEdit.Text<>'' then
        SQL.Add('    and XXZL.article like ''%'+ArticleEdit.Text+'%'' ');
      if SREdit.Text<>'' then
        SQL.Add('    and KFXXZL.Devcode like ''%'+SREdit.Text+'%'' ');
      if SCBHEdit.Text<>'' then
        SQL.Add('    and Lab_shoetest.SCBH like '''+SCBHEdit.Text+'%'' ');
      SQL.add('      and convert(smalldatetime,convert(varchar,Lab_shoetest.USERDATE,111)) between ');
      SQL.add('      '''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date) +'''');
      //funcobj.WriteErrorLog(sql.Text);
      Active:=true;
    end;
  end;

  if SFL=''  then
  begin
    with query1 do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('Select Lab_shoetest.TestNo,Lab_shoetest.scbh,KFXXZL.Devcode,lab_shoetest.reportNO,IsNull(Lab_shoetestS.Result,'''') as Result ,lab_shoetest.Userdate,lab_shoetest.GSBH');
      SQL.Add('       ,lab_shoetest.CKBH,Lab_shoetest.Applicant1,Lab_shoetest.Applicant2,Lab_shoetest.TestPurpose,Lab_shoetest.ReportCCto,Lab_shoetest.ReceiveDate  ');
      SQL.Add('       ,Lab_shoetest.Factory,shoetest.siz,Lab_shoetest.ProductionLine,Lab_shoetest.CustomerPO,kfxxzl.xieming,Lab_shoetest.ShipTo');
      SQL.Add('       ,kfxxzl.Category,kfxxzl.YSSM,Lab_shoetest.DateofManufacturing,kfxxzl.Article');
      SQL.Add('from Lab_shoetest');
      SQL.Add('Left join shoetest on shoetest.testno=lab_shoetest.scbh');
      SQL.Add('Left join CBY_Orders on CBY_Orders.workOrderId=Lab_shoetest.scbh');
      SQL.Add('Left join KFXXZL ON kfxxzl.ARTICLE = CBY_Orders.style AND kfxxzl.JiJie = CBY_Orders.Season');
      if TestCombo.Text<>'' then
      begin
        SQL.Add('Left join (');
        SQL.Add('   Select TestNo,TestID,Min(Result) as Result from Lab_shoetestS  Group by TestNo,TestID');
        SQL.Add('   ) Lab_shoetestS on Lab_shoetestS.TestNo=Lab_shoetest.TestNo');
      end else begin
        SQL.Add('Left join (');
        SQL.Add('   Select TestNo,Min(Result) as Result from Lab_shoetestS  Group by TestNo');
        SQL.Add('   ) Lab_shoetestS on Lab_shoetestS.TestNo=Lab_shoetest.TestNo');
      end;
      SQL.Add('where Lab_shoetest.YN is null');
      SQL.Add('      and isnull(Lab_shoetest.ckbh,Lab_shoetest.gsbh)='''+GSBHCombo.Text+''' ');
      if TestCombo.Text<>'' then
        SQL.Add('    and Lab_shoetestS.TestID='''+TestCombo.Text+''' ');
      if TestNoEdit.Text<>'' then
        SQL.Add('    and Lab_shoetest.TestNO like '''+TestNoEdit.Text+'%'' ');
      if ArticleEdit.Text<>'' then
        SQL.Add('    and kfxxzl.article like ''%'+ArticleEdit.Text+'%'' ');
      if SREdit.Text<>'' then
        SQL.Add('    and KFXXZL.Devcode like ''%'+SREdit.Text+'%'' ');
      if SCBHEdit.Text<>'' then
        SQL.Add('    and Lab_shoetest.SCBH like '''+SCBHEdit.Text+'%'' ');
      SQL.add('      and convert(smalldatetime,convert(varchar,Lab_shoetest.USERDATE,111)) between ');
      SQL.add('      '''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date) +'''');
      //funcobj.WriteErrorLog(sql.Text);
      Active:=true;
    end;
  end;

  with Query2 do
  begin
      Active:=false;
      SQL.Clear;
      SQL.Add('select lab_shoetests.TestNO,lab_shoetests.TestID,lab_shoetests.Result,lab_shoetests.Comment,lab_shoetests.FailureReason,');
      SQL.Add('       lab_shoetests.Remark,lab_shoetests.UserDate,lab_shoetests.UserID,lab_shoetests.ApprovedUserID,lab_shoetests.Standard,lab_shoetests.InspectedID,');
      SQL.Add('       Lab_TestReason.TestReason,lab_shoetests.FilePath,Sampleroom,Materialteam,Outsolefactory,Rubberfactory,Printingfacory ');
      SQL.Add('from lab_shoetests ');
      SQL.Add('Left join Lab_TestReason on Lab_TestReason.TestID=lab_shoetests.TestID and Lab_TestReason.GSBH=:GSBH');
      SQL.Add('where TestNO=:TestNo');
      Active:=true;
  end;

  with query3 do
    begin
      Active:=false;
      SQL.Clear;
      sql.Add('select * from (');
      sql.Add('select Lab_shoetest.TestNO,isnull(Lab_shoetest.ckbh,Lab_shoetest.gsbh) GSBH,Lab_shoetest.SCBH,KFXXZL.Devcode,Lab_shoetest.USERDATE,Lab_Shoetests.TestID,kfxxzl.JiJie, ');
      sql.Add('       kfxxzl.XieMing,KFXXZL.article,kfxxzl.YSSM,YPZL.YPCC,kfxxzl.KFLX,Lab_Shoetests.FailureReason,Lab_Shoetests.Comment,Lab_Shoetests.Remark,Lab_Shoetests.Result,YPZL.FD, ');
      sql.Add('       Sampleroom,Materialteam,Outsolefactory,Rubberfactory,Printingfacory,ypzl.KFJD,kfxxzl.DevType ');
      sql.Add('from Lab_shoetest ');
      sql.Add('left join shoetest on shoetest.testno=Lab_shoetest.scbh ');
      sql.Add('Left join YPZL on YPZL.YPDH=shoetest.YPDH ');
      sql.Add('Left join KFXXZL on KFXXZL.XieXing=YPZL.XieXing and KFXXZL.SheHao=YPZL.SheHao ');
      sql.Add('LEFT JOIN Lab_Shoetests ON Lab_Shoetest.TestNO = Lab_Shoetests.TestNO ');
      sql.Add('where Lab_shoetest.yn is null and isnull(Lab_shoetest.ckbh,Lab_shoetest.gsbh)=''CDC'' ');
      sql.Add('union');
      sql.Add('select Lab_shoetest.TestNO,isnull(Lab_shoetest.ckbh,Lab_shoetest.gsbh) GSBH,Lab_shoetest.SCBH,KFXXZL.Devcode,Lab_shoetest.USERDATE,Lab_Shoetests.TestID,kfxxzl.JiJie, ');
      sql.Add('       kfxxzl.XieMing,KFXXZL.article,kfxxzl.YSSM,'''' YPCC,kfxxzl.KFLX,Lab_Shoetests.FailureReason,Lab_Shoetests.Comment,Lab_Shoetests.Remark,Lab_Shoetests.Result, '''' FD, ');
      sql.Add('       Sampleroom,Materialteam,Outsolefactory,Rubberfactory,Printingfacory,'''' KFJD,kfxxzl.DevType ');
      sql.Add('from Lab_shoetest ');
      sql.Add('left join ddzl on ddzl.ddbh=Lab_shoetest.scbh ');
      sql.Add('Left join KFXXZL on KFXXZL.XieXing=DDZL.XieXing and KFXXZL.SheHao=DDZL.SheHao ');
      sql.Add('LEFT JOIN Lab_Shoetests ON Lab_Shoetest.TestNO = Lab_Shoetests.TestNO ');
      sql.Add('where Lab_shoetest.yn is null and isnull(Lab_shoetest.ckbh,Lab_shoetest.gsbh)=''VA12'' ');
      sql.Add('union');
      sql.Add('select Lab_shoetest.TestNO,isnull(Lab_shoetest.ckbh,Lab_shoetest.gsbh) GSBH,Lab_shoetest.SCBH,KFXXZL.Devcode,Lab_shoetest.USERDATE,Lab_Shoetests.TestID,kfxxzl.JiJie, ');
      sql.Add('       kfxxzl.XieMing,KFXXZL.article,kfxxzl.YSSM,'''' YPCC,kfxxzl.KFLX,Lab_Shoetests.FailureReason,Lab_Shoetests.Comment,Lab_Shoetests.Remark,Lab_Shoetests.Result, '''' FD, ');
      sql.Add('       Sampleroom,Materialteam,Outsolefactory,Rubberfactory,Printingfacory,'''' KFJD,kfxxzl.DevType ');
      sql.Add('from Lab_shoetest ');
      sql.Add('left join CBY_Orders on CBY_Orders.workOrderId=Lab_shoetest.scbh ');
      sql.Add('Left join KFXXZL ON kfxxzl.ARTICLE = CBY_Orders.style AND kfxxzl.JiJie = CBY_Orders.Season ');
      sql.Add('LEFT JOIN Lab_Shoetests ON Lab_Shoetest.TestNO = Lab_Shoetests.TestNO ');
      sql.Add('where Lab_shoetest.yn is null and isnull(Lab_shoetest.ckbh,Lab_shoetest.gsbh)=''CBY'' ');
      SQL.Add(')main where TestID in (''G32'',''G48'')');
      SQL.Add('      and GSBH='''+GSBHCombo.Text+''' ');
      if TestNoEdit.Text<>'' then
         SQL.Add(' and TestNO like '''+TestNoEdit.Text+'%'' ');
      if ArticleEdit.Text<>'' then
         SQL.Add(' and article like ''%'+ArticleEdit.Text+'%'' ');
      if SREdit.Text<>'' then
         SQL.Add(' and Devcode like ''%'+SREdit.Text+'%'' ');
      if SCBHEdit.Text<>'' then
         SQL.Add(' and SCBH like '''+SCBHEdit.Text+'%'' ');
      SQL.add('   and convert(smalldatetime,convert(varchar,USERDATE,111)) between ');
      SQL.add('   '''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date) +'''');
      //funcobj.WriteErrorLog(sql.Text);
      Active:=true;
    end;
end;

procedure TShoeTestReport.BBDClick(Sender: TObject);
var
  SelectPath: string;
begin
  if (Query2.Active = false) then
  begin
    ShowMessage('Please select a data first');
    Exit;
  end
  else if (Query2.FieldByName('FilePath').AsString = '') then
  begin
    ShowMessage('No Uploaded File.');
    Exit;
  end;

  if (SelectDirectory('Select a directory', '', SelectPath)) then
  begin
    if (CopyFile(PChar(Query2.FieldByName('FilePath').AsString), PChar(SelectPath + '\' + ExtractFileName(Query2.FieldByName('FilePath').AsString)), False)) then
    begin
      ShowMessage('Download Success.');
    end
    else begin
      ShowMessage('Download Failed.');
    end;
  end;
end;

procedure TShoeTestReport.FormCreate(Sender: TObject);
begin
   DTP1.Date:=Date()-14;
   DTP2.Date:=Date();
   GSBHCombo.Text:=main.edit2.text;
   TestCombo.ItemIndex:=0;
   TestReason.Caption:=''
end;


procedure TShoeTestReport.Button2Click(Sender: TObject);
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
      Application.MessageBox('No Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
      Exit;
    end;
    try
      Query2.Active:=false;
      WorkBook:=eclApp.workbooks.Add;
      for i:=0 to DBGridEh2.Columns.Count-1 do
        eclApp.Cells(1,i+1):=DBGridEh2.Columns[i].Title.Caption;
      Query1.First;
      j:=2;
      while   not   Query1.Eof   do
      begin
        for i:=0 to DBGridEh2.Columns.Count-1 do
          eclApp.Cells(j,i+1):=DBGridEh2.Fields[i].Value;
        Query1.Next;
        inc(j);
      end;
      eclapp.columns.autofit;
      eclApp.Visible:=True;
      showmessage('Succeed');
      Query2.Active:=true;
    except
      on   F:Exception   do
        showmessage(F.Message);
    end;
  end;

end;

procedure TShoeTestReport.TestComboChange(Sender: TObject);
begin
  if TestCombo.ItemIndex=1 then
    TestReason.Caption:='Flexing'
  else if TestCombo.ItemIndex=2 then
    TestReason.Caption:='Bonding'
  else TestReason.Caption:='';
  Button1.Click;
end;

procedure TShoeTestReport.Button3Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j,k,g,rs1,rs2,rs3,rs4,rs5,rm1,rm2,rm3,rm4,rm5,ro1,ro2,ro3,ro4,ro5,rr1,rr2,rr3,rr4,rr5,rp1,rp2,rp3,rp4,rp5: integer;
    pt: Double;
begin
  if (Query3.Active) then
  begin
    if (Query3.RecordCount = 0) then
    begin
      ShowMessage('No record.');
      Abort;
    end;
  end
  else
  begin
    ShowMessage('No record.');
    Abort;
  end;
  if TestCombo.Text='' then
  begin
    ShowMessage('No TestID.');
    Abort;
  end;
  pt:=0;
  g:=1;
  rs1:=0;
  rs2:=0;
  rs3:=0;
  rs4:=0;
  rs5:=0;
  rm1:=0;
  rm2:=0;
  rm3:=0;
  rm4:=0;
  rm5:=0;
  ro1:=0;
  ro2:=0;
  ro3:=0;
  ro4:=0;
  ro5:=0;
  rr1:=0;
  rr2:=0;
  rr3:=0;
  rr4:=0;
  rr5:=0;
  rp1:=0;
  rp2:=0;
  rp3:=0;
  rp4:=0;
  rp5:=0;
  AppDir:=ExtractFilePath(Application.ExeName);
  //button1.Click;
  if(not DirectoryExists(AppDir+'Additional\'))  then ForceDirectories(AppDir+'Additional\');
  CopyFile(Pchar('\\'+main.ServerIP+'\liy_erp\Additional\Develop_SN92_Fail.xls'),Pchar(AppDir+'Additional\Develop_SN92_Fail.xls'),false);
  if FileExists(AppDir+'Additional\Develop_SN92_Fail.xls') then
  begin
    try
      eclApp:=CreateOleObject('Excel.Application');
      eclApp.DisplayAlerts := False;
      WorkBook:=CreateOleObject('Excel.Sheet');
    except
      Application.MessageBox('No Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
      Exit;
    end;
    try
      eclApp.WorkBooks.Open(AppDir+'Additional\Develop_SN92_Fail.xls');
      eclApp.WorkSheets[1].Activate;
      eclApp.Cells(7,12):=TestReason.Caption;
      eclApp.WorkSheets[1].Name:=TestReason.Caption+ ' Failed';
      Query3.First;
      j:=9;
      for i:=1 to Query3.RecordCount do
      begin
        if (Query3.FieldByName('TestID').AsString=TestCombo.Text) and (Query3.FieldByName('Result').AsString='Rejected') then
        begin
          eclApp.Cells(j,1):=IntToStr(g);
          eclApp.Cells(j,2):=Query3.FieldByName('DevType').Value;
          eclApp.Cells(j,3):=Query3.FieldByName('JiJie').Value;
          eclApp.Cells(j,4):=FormatDatetime('YYYY/MM/DD',Query3.FieldByName('USERDATE').Value);
          eclApp.Cells(j,5):=Query3.FieldByName('KFJD').Value;
          eclApp.Cells(j,6):=Query3.FieldByName('SCBH').Value;
          eclApp.Cells(j,7):=Query3.FieldByName('XieMing').Value;
          eclApp.Cells(j,8):=Query3.FieldByName('Devcode').Value;
          eclApp.Cells(j,9):=Query3.FieldByName('YSSM').Value;
          eclApp.Cells(j,10):=Query3.FieldByName('YPCC').Value;
          eclApp.Cells(j,11):=Query3.FieldByName('KFLX').Value;
          eclApp.Cells(j,12):=Query3.FieldByName('Remark').Value;
          eclApp.Cells(j,13):=Query3.FieldByName('FailureReason').Value;
          if Query3.FieldByName('Sampleroom').Value=true then
          begin
            eclApp.Cells(j,14):='V';
            if (Query3.FieldByName('KFJD').AsString='CR1') OR (Query3.FieldByName('KFJD').AsString='SE1') OR (Query3.FieldByName('KFJD').AsString='SEE') then
              inc(rs1)
            else if (Query3.FieldByName('KFJD').AsString='CR2') OR (Query3.FieldByName('KFJD').AsString='SE2') then
              inc(rs2)
            else if (Query3.FieldByName('KFJD').AsString='CR3') OR (Query3.FieldByName('KFJD').AsString='SE3') OR (Query3.FieldByName('KFJD').AsString='SMS') OR (Query3.FieldByName('KFJD').AsString='WEA') then
              inc(rs3)
            else if Query3.FieldByName('KFJD').AsString='CFM' then
              inc(rs4)
            else if Query3.FieldByName('KFJD').AsString='PDT' then
              inc(rs5);
          end;
          if Query3.FieldByName('Materialteam').Value=true then
          begin
            eclApp.Cells(j,15):='V';
            if (Query3.FieldByName('KFJD').AsString='CR1') OR (Query3.FieldByName('KFJD').AsString='SE1') OR (Query3.FieldByName('KFJD').AsString='SEE') then
              inc(rm1)
            else if (Query3.FieldByName('KFJD').AsString='CR2') OR (Query3.FieldByName('KFJD').AsString='SE2') then
              inc(rm2)
            else if (Query3.FieldByName('KFJD').AsString='CR3') OR (Query3.FieldByName('KFJD').AsString='SE3') OR (Query3.FieldByName('KFJD').AsString='SMS') OR (Query3.FieldByName('KFJD').AsString='WEA') then
              inc(rm3)
            else if Query3.FieldByName('KFJD').AsString='CFM' then
              inc(rm4)
            else if Query3.FieldByName('KFJD').AsString='PDT' then
              inc(rm5);
          end;
          if Query3.FieldByName('Outsolefactory').Value=true then
          begin
            eclApp.Cells(j,16):='V';
            if (Query3.FieldByName('KFJD').AsString='CR1') OR (Query3.FieldByName('KFJD').AsString='SE1') OR (Query3.FieldByName('KFJD').AsString='SEE') then
              inc(ro1)
            else if (Query3.FieldByName('KFJD').AsString='CR2') OR (Query3.FieldByName('KFJD').AsString='SE2') then
              inc(ro2)
            else if (Query3.FieldByName('KFJD').AsString='CR3') OR (Query3.FieldByName('KFJD').AsString='SE3') OR (Query3.FieldByName('KFJD').AsString='SMS') OR (Query3.FieldByName('KFJD').AsString='WEA') then
              inc(ro3)
            else if Query3.FieldByName('KFJD').AsString='CFM' then
              inc(ro4)
            else if Query3.FieldByName('KFJD').AsString='PDT' then
              inc(ro5);
          end;
          if Query3.FieldByName('Rubberfactory').Value=true then
          begin
            eclApp.Cells(j,17):='V';
            if (Query3.FieldByName('KFJD').AsString='CR1') OR (Query3.FieldByName('KFJD').AsString='SE1') OR (Query3.FieldByName('KFJD').AsString='SEE') then
              inc(rr1)
            else if (Query3.FieldByName('KFJD').AsString='CR2') OR (Query3.FieldByName('KFJD').AsString='SE2') then
              inc(rr2)
            else if (Query3.FieldByName('KFJD').AsString='CR3') OR (Query3.FieldByName('KFJD').AsString='SE3') OR (Query3.FieldByName('KFJD').AsString='SMS') OR (Query3.FieldByName('KFJD').AsString='WEA') then
              inc(rr3)
            else if Query3.FieldByName('KFJD').AsString='CFM' then
              inc(rr4)
            else if Query3.FieldByName('KFJD').AsString='PDT' then
              inc(rr5);
          end;
          if Query3.FieldByName('Printingfacory').Value=true then
          begin
            eclApp.Cells(j,18):='V';
            if (Query3.FieldByName('KFJD').AsString='CR1') OR (Query3.FieldByName('KFJD').AsString='SE1') OR (Query3.FieldByName('KFJD').AsString='SEE') then
              inc(rp1)
            else if (Query3.FieldByName('KFJD').AsString='CR2') OR (Query3.FieldByName('KFJD').AsString='SE2') then
              inc(rp2)
            else if (Query3.FieldByName('KFJD').AsString='CR3') OR (Query3.FieldByName('KFJD').AsString='SE3') OR (Query3.FieldByName('KFJD').AsString='SMS') OR (Query3.FieldByName('KFJD').AsString='WEA') then
              inc(rp3)
            else if Query3.FieldByName('KFJD').AsString='CFM' then
              inc(rp4)
            else if Query3.FieldByName('KFJD').AsString='PDT' then
              inc(rp5);
          end;
          eclApp.Cells(j,19):=Query3.FieldByName('FD').Value;
          inc(g);
          eclApp.Range[eclApp.cells[j,1],eclApp.cells[j,19]].Font.Name := 'Calibri';
          eclApp.Range[eclApp.cells[j,1],eclApp.cells[j,19]].Font.Size := 11;
          for k:=1 to 4 do
          begin
            eclApp.range[eclApp.cells[j,1],eclApp.cells[j,19]].borders[k].linestyle:=1;
          end;
          inc(j);
        end;
        Query3.Next;
      end;
      eclApp.Cells(4,4):= IntToStr(rs1);
      eclApp.Cells(4,5):= IntToStr(rs2);
      eclApp.Cells(4,6):= IntToStr(rs3);
      eclApp.Cells(4,7):= IntToStr(rs4);
      eclApp.Cells(4,8):= IntToStr(rs5);
      eclApp.Cells(4,9):= IntToStr(rm1);
      eclApp.Cells(4,10):= IntToStr(rm2);
      eclApp.Cells(4,11):= IntToStr(rm3);
      eclApp.Cells(4,12):= IntToStr(rm4);
      eclApp.Cells(4,13):= IntToStr(rm5);
      eclApp.Cells(4,14):= IntToStr(ro1);
      eclApp.Cells(4,15):= IntToStr(ro2);
      eclApp.Cells(4,16):= IntToStr(ro3);
      eclApp.Cells(4,17):= IntToStr(ro4);
      eclApp.Cells(4,18):= IntToStr(ro5);
      eclApp.Cells(4,19):= IntToStr(rr1);
      eclApp.Cells(4,20):= IntToStr(rr2);
      eclApp.Cells(4,21):= IntToStr(rr3);
      eclApp.Cells(4,22):= IntToStr(rr4);
      eclApp.Cells(4,23):= IntToStr(rr5);
      eclApp.Cells(4,24):= IntToStr(rp1);
      eclApp.Cells(4,25):= IntToStr(rp2);
      eclApp.Cells(4,26):= IntToStr(rp3);
      eclApp.Cells(4,27):= IntToStr(rp4);
      eclApp.Cells(4,28):= IntToStr(rp5);
      eclapp.columns.autofit;
      {if (g <> 0) and (DS1.DataSet.RecordCount <> 0) then
      begin
        pt := (g-1) / DS1.DataSet.RecordCount;
      end;
      eclApp.Cells(2,10):='Failed Rate ('+FloatToStr(Round(pt * 100)) +'%)'; }
      showmessage('Succeed.');
      eclApp.Visible:=True;
    except
      on   F:Exception   do
      showmessage(F.Message);
    end;
  end;
end;

procedure TShoeTestReport.Button4Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j,k,g: integer;
    pt: Double;
begin
  if (Query3.Active) then
  begin
    if (Query3.RecordCount = 0) then
    begin
      ShowMessage('No record.');
      Abort;
    end;
  end
  else
  begin
    ShowMessage('No record.');
    Abort;
  end;
  if TestCombo.Text='' then
  begin
    ShowMessage('No TestID.');
    Abort;
  end;
  pt:=0;
  g:=1;
  AppDir:=ExtractFilePath(Application.ExeName);
  //button1.Click;
  if(not DirectoryExists(AppDir+'Additional\'))  then ForceDirectories(AppDir+'Additional\');
  CopyFile(Pchar('\\'+main.ServerIP+'\liy_erp\Additional\Develop_SN92_Pass.xls'),Pchar(AppDir+'Additional\Develop_SN92_Pass.xls'),false);
  if FileExists(AppDir+'Additional\Develop_SN92_Pass.xls') then
  begin
    try
      eclApp:=CreateOleObject('Excel.Application');
      eclApp.DisplayAlerts := False;
      WorkBook:=CreateOleObject('Excel.Sheet');
    except
      Application.MessageBox('No Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
      Exit;
    end;
    try
      eclApp.WorkBooks.Open(AppDir+'Additional\Develop_SN92_Pass.xls');
      eclApp.WorkSheets[1].Activate;
      eclApp.Cells(3,12):=TestReason.Caption;
      eclApp.WorkSheets[1].Name:=TestReason.Caption+ ' Passed';
      Query3.First;
      j:=5;
      for i:=1 to Query3.RecordCount do
      begin
        if (Query3.FieldByName('TestID').AsString=TestCombo.Text) and (Query3.FieldByName('Result').AsString='Release') then
        begin
          eclApp.Cells(j,1):=IntToStr(g);
          eclApp.Cells(j,2):=Query3.FieldByName('DevType').Value;
          eclApp.Cells(j,3):=Query3.FieldByName('JiJie').Value;
          eclApp.Cells(j,4):=FormatDatetime('YYYY/MM/DD',Query3.FieldByName('USERDATE').Value);
          eclApp.Cells(j,5):=Query3.FieldByName('KFJD').Value;
          eclApp.Cells(j,6):=Query3.FieldByName('SCBH').Value;
          eclApp.Cells(j,7):=Query3.FieldByName('XieMing').Value;
          eclApp.Cells(j,8):=Query3.FieldByName('Devcode').Value;
          eclApp.Cells(j,9):=Query3.FieldByName('YSSM').Value;
          eclApp.Cells(j,10):=Query3.FieldByName('YPCC').Value;
          eclApp.Cells(j,11):=Query3.FieldByName('KFLX').Value;
          eclApp.Cells(j,12):=Query3.FieldByName('Result').Value;
          eclApp.Cells(j,13):=Query3.FieldByName('FD').Value;
          inc(g);
          eclApp.Range[eclApp.cells[j,1],eclApp.cells[j,13]].Font.Name := 'Calibri';
          eclApp.Range[eclApp.cells[j,1],eclApp.cells[j,13]].Font.Size := 11;
          for k:=1 to 4 do
          begin
            eclApp.range[eclApp.cells[j,1],eclApp.cells[j,13]].borders[k].linestyle:=1;
          end;
          inc(j);
        end;
        Query3.Next;
      end;

      {if (g <> 0) and (DS1.DataSet.RecordCount <> 0) then
      begin
        pt := (g-1) / DS1.DataSet.RecordCount;
      end;
      eclApp.Cells(2,10):='Passed Rate ('+FloatToStr(Round(pt * 100)) +'%)';}
      showmessage('Succeed.');
      eclApp.Visible:=True;
    except
      on   F:Exception   do
      showmessage(F.Message);
    end;
  end;
end;

end.
