unit SemiMaterialMonth_Skechers1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBTables, Menus, DB, GridsEh, DBGridEh, StdCtrls, ExtCtrls,
  ComCtrls, DateUtils, comobj ,iniFiles;

type
  TSemiMaterialMonth_Skechers = class(TForm)
    PC1: TPageControl;
    TS1: TTabSheet;
    Panel2: TPanel;
    Label4: TLabel;
    Label6: TLabel;
    Label5: TLabel;
    Label8: TLabel;
    Label13: TLabel;
    Label3: TLabel;
    Button3: TButton;
    Button4: TButton;
    CBX1: TComboBox;
    CBX2: TComboBox;
    DDBHEdit1: TEdit;
    CBX_HGLB1: TComboBox;
    CWBHEdit1: TEdit;
    chk_PB1: TCheckBox;
    DBGridEh3: TDBGridEh;
    TS2: TTabSheet;
    Panel1: TPanel;
    Label2: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    CPNVLPBLabel: TLabel;
    Label15: TLabel;
    Label14: TLabel;
    Label16: TLabel;
    Label1: TLabel;
    DDBHEdit2: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button6: TButton;
    Button8: TButton;
    CBX_HGLB2: TComboBox;
    CheckBox1: TCheckBox;
    CWBHEdit2: TEdit;
    Button5: TButton;
    CBX3: TComboBox;
    CBX4: TComboBox;
    DBGridEh1: TDBGridEh;
    DBGridEh2: TDBGridEh;
    TempQry: TQuery;
    DS2: TDataSource;
    Query2: TQuery;
    Query2DDBH: TStringField;
    Query2Pairs: TFloatField;
    Query2FKCQy: TFloatField;
    Query2NoFKCQty1: TFloatField;
    Query2InQty: TFloatField;
    Query2VNACCMon: TCurrencyField;
    Query2VNACC: TCurrencyField;
    Query2NotInQty: TFloatField;
    Query2ZVNACC: TFloatField;
    Query2SemiVNACC: TCurrencyField;
    Query2FShoeVNACC: TFloatField;
    Query2FShoe1Pair_VNACC: TFloatField;
    DS1: TDataSource;
    Query1: TQuery;
    Query1KCYEAR: TStringField;
    Query1KCMONTH: TStringField;
    Query1DDBH: TStringField;
    Query1VNACC: TCurrencyField;
    Query1ARTICLE: TStringField;
    Query1USERID: TStringField;
    Query1USERDATE: TDateTimeField;
    Query1YN: TStringField;
    Query1CKBH: TStringField;
    PopupMenu1: TPopupMenu;
    Adjust_NVL_PB: TMenuItem;
    Adjust_NVL_TT: TMenuItem;
    N1: TMenuItem;
    mnu1: TMenuItem;
    N2: TMenuItem;
    Save_GT: TMenuItem;
    Confirm_GT: TMenuItem;
    N3: TMenuItem;
    Modify_SL: TMenuItem;
    Save_SL: TMenuItem;
    Cancel_SL: TMenuItem;
    PopupMenu2: TPopupMenu;
    Modify1: TMenuItem;
    Save1: TMenuItem;
    Cancel1: TMenuItem;
    UPDet1: TUpdateSQL;
    OpenDialog1: TOpenDialog;
    CheckQry: TQuery;
    UPDet2: TUpdateSQL;
    Query2BDEDesigner30: TFloatField;
    Query2BDEDesigner3160: TFloatField;
    Query2BDEDesigner6190: TFloatField;
    Query2BDEDesigner91120: TFloatField;
    Query2BDEDesigner121180: TFloatField;
    Query2BDEDesigner181360: TFloatField;
    Query2BDEDesigner360: TFloatField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Query2AfterOpen(DataSet: TDataSet);
  private
    AppDir:string;
    { Private declarations }
    procedure Readini();
    procedure ExportDefaultExcel(Query:TQuery);
    procedure ExportFormatExcel(Query:TQuery);
  public
    CKBHID:String;//代表原材料倉全部庫別
    CKBH_SQL:string; //原材料倉 SQL
    { Public declarations }
  end;

var
  SemiMaterialMonth_Skechers: TSemiMaterialMonth_Skechers;

implementation

uses fununit, SemiMaterialMonth_Sample1, main1,
  SemiMaterialMonth_Skechers_Print1;

{$R *.dfm}
procedure TSemiMaterialMonth_Skechers.Readini();
var MyIni:TiniFile;
begin
  if FileExists(AppDir+'\ComName.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ComName.ini');
      CKBHID:=MyIni.ReadString('Account_N179224_Develop','CKBHID','SKX');
      CKBH_SQL:=MyIni.ReadString('Account_N179224_Develop','CKBH_SQL',' in (''SRC'',''SRT'',''SDC'',''SDT'')');
    finally
      MyIni.Free;
    end;
  end;  
end;

procedure TSemiMaterialMonth_Skechers.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TSemiMaterialMonth_Skechers.FormDestroy(Sender: TObject);
begin
  SemiMaterialMonth_Skechers:=nil;
end;

procedure TSemiMaterialMonth_Skechers.Button1Click(Sender: TObject);
begin
  with  query2 do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('IF OBJECT_ID(''tempdb..#SemiMat_Mon'') IS NOT NULL');
    SQL.Add('BEGIN DROP TABLE #SemiMat_Mon END ');
    SQL.Add('Select *  ');
    SQL.Add(',case when (diffdate <=30) then CW_MatCostMonth.NotInQty else 0 end as ''<=30'' ');
    SQL.Add(',case when (diffdate >30) and (diffdate <=60) then CW_MatCostMonth.NotInQty else 0 end as ''31~60'' ');
    SQL.Add(',case when (diffdate >60) and (diffdate <=90) then CW_MatCostMonth.NotInQty else 0 end as ''61~90'' ');
    SQL.Add(',case when (diffdate >90) and (diffdate <=120) then CW_MatCostMonth.NotInQty else 0 end as ''91~120'' ');
    SQL.Add(',case when (diffdate >120) and (diffdate <=180) then CW_MatCostMonth.NotInQty else 0 end as ''121~180'' ');
    SQL.Add(',case when (diffdate >180) and (diffdate <=360) then CW_MatCostMonth.NotInQty else 0 end as ''181~360'' ');
    SQL.Add(',case when (diffdate >360) then CW_MatCostMonth.NotInQty else 0 end as ''>360'' ');
    SQL.Add('into #SemiMat_Mon ');
    SQL.Add('from ( ');
    SQL.Add('select CW_MatCostMonth.*,DATEDIFF(day, (select max(CFMDate) from KCLL left join KCLLS on KCLL.LLNO = KCLLS.LLNO where KCLLS.SCBH = CW_MatCostMonth.DDBH) , CONVERT(VARCHAR(10), GETDATE(), 111) ) as diffdate ');
    SQL.Add('From CW_MatCostMonth ');
    SQL.Add('Where KCYear='''+CBX3.Text+''' and KCMOnth='''+CBX4.Text+''' and CKBH=''' + CKBHID + ''' ');
    SQL.Add(')  CW_Matcostmonth ');
    SQL.Add('Select * from #SemiMat_Mon where 1=1 ');
    if DDBHEdit2.Text<>'' then
    begin
      SQL.Add(' AND DDBH like '''+DDBHEdit2.Text+'%'' ');
    end;
    Active:=true;
  end;
end;

procedure TSemiMaterialMonth_Skechers.FormCreate(Sender: TObject);
begin
  AppDir:=ExtractFilePath(Application.ExeName);
  Readini();
  PC1.ActivePageIndex := 1;
end;

procedure TSemiMaterialMonth_Skechers.Button2Click(Sender: TObject);
begin
  if (Messagedlg('Format Excel?', mtInformation, [mbNo, mbYes], 0) = mrYes) then
    ExportFormatExcel(Query2)
  else
    ExportDefaultExcel(Query2);
end;
procedure TSemiMaterialMonth_Skechers.ExportDefaultExcel(Query:TQuery);
var
  eclApp, WorkBook: OleVariant;
  i, j: integer;
begin
  if (Query.Active) then
  begin
    if (Query.RecordCount = 0) then
    begin
      ShowMessage('No record.');
      Abort;
    end;
  end
  else begin
    ShowMessage('No record.');
    Abort;
  end;

  try
    eclApp := CreateOleObject('Excel.Application');
    WorkBook := CreateOleObject('Excel.Sheet');
  except
    Application.MessageBox('NO Microsoft Excel', 'Microsoft Excel', MB_OK + MB_ICONWarning);
    Exit;
  end;

  try
    WorkBook := eclApp.Workbooks.Add;
    eclApp.Cells[1, 1] := 'NO';
    for i:=1 to Query.FieldCount do
    begin
      eclApp.Cells[1, i+1] := Query.Fields[i-1].FieldName;
    end;
    Query.First;
    j := 2;
    while not Query.Eof do
    begin
      eclApp.Cells[j, 1] := j-1;
      for i:=1 to Query.FieldCount do
      begin
        eclApp.Cells[j,i+1] := Query.Fields[i-1].Value;
      end;
      Query.Next;
      Inc(j);
    end;
    eclapp.Columns.Autofit;
    ShowMessage('Succeed.');
    eclApp.Visible := true;
  except on F:Exception do
    ShowMessage(F.Message);
  end;
end;

procedure TSemiMaterialMonth_Skechers.ExportFormatExcel(Query: TQuery);
var
  eclApp,WorkBook: OleVariant;
  i, j, k, l: integer;
  //iYear, iMonth, iDay: word;
  sYear, sMonth: string;
begin
  sYear := SemiMaterialMonth_Skechers.CBX3.Text;
  sMonth := SemiMaterialMonth_Skechers.CBX4.Text;
  if (Length(sMonth) = 1) then
    sMonth := '0' + sMonth;

  if (not DirectoryExists(AppDir + 'Additional\')) then ForceDirectories(AppDir + 'Additional\');
    CopyFile(Pchar('\\' + main.ServerIP + '\liy_erp\Additional\Account_SN1792.xlsx'), PChar(AppDir + 'Additional\Account_SN1792.xlsx'), false);

  if (FileExists(AppDir + 'Additional\Account_SN1792.xlsx')) then
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
      eclApp.WorkBooks.Open(AppDir + 'Additional\Account_SN1792.xlsx');
      eclApp.WorkSheets[1].Activate;
      eclApp.Cells[1, 7].NumberFormatLocal := '@';
      eclApp.Cells[1, 7].Font.Name := 'Times New Roman';
      eclApp.Cells[1, 7].Font.Size := 16;
      eclApp.Cells(1, 7) := sMonth + '/' + sYear;
      eclApp.Cells(2, 2) := sYear + '年' + sMonth + '月份的材料費用計算表';

      Query.First;
      j := 5;
      for i:=1 to Query.RecordCount do
      begin
        eclApp.Cells[j, 1] := SemiMaterialMonth_Skechers.CKBHID;
        eclApp.Cells[j, 2] := Query.FieldByName('DDBH').Value;
        eclApp.Cells[j, 3] := Query.FieldByName('Pairs').Value;
        eclApp.Cells[j, 4] := Query.FieldByName('FKCQy').Value;
        eclApp.Cells[j, 5] := Query.FieldByName('NoFKCQty1').Value;
        eclApp.Cells[j, 6] := Query.FieldByName('InQty').Value;
        eclApp.Cells[j, 7] := Query.FieldByName('VNACCMon').Value;
        eclApp.Cells[j, 8] := Query.FieldByName('VNACC').Value;
        eclApp.Cells[j, 9] := Query.FieldByName('ZVNACC').Value;
        eclApp.Cells[j, 10] := Query.FieldByName('NotInQty').Value;
        eclApp.Cells[j, 11] := Query.FieldByName('SemiVNACC').Value;
        eclApp.Cells[j, 12] := Query.FieldByName('FShoeVNACC').Value;
        eclApp.Cells[j, 13] := Query.FieldByName('FShoe1Pair_VNACC').Value;
        Query.Next;
        Inc(j);
      end;
      eclApp.Range[eclApp.Cells[j, 2], eclApp.Cells[j, 3]].Merge;
      eclApp.ActiveSheet.Rows[j].Font.Bold := true;
      eclApp.Range[eclApp.Cells[j, 1], eclApp.Cells[j, 15]].Interior.Color := $CCFFCC;
      eclApp.Cells[j, 2] := 'TOTAL:';
      eclApp.Cells[j, 4].Formula := '=SUM(D5:D' + IntToStr(j-1) + ')';
      eclApp.Cells[j, 6].Formula := '=SUM(F5:F' + IntToStr(j-1) + ')';
      eclApp.Cells[j, 7].Formula := '=SUM(G5:G' + IntToStr(j-1) + ')';
      eclApp.Cells[j, 8].Formula := '=SUM(H5:H' + IntToStr(j-1) + ')';
      eclApp.Cells[j, 9].Formula := '=SUM(I5:I' + IntToStr(j-1) + ')';
      eclApp.Cells[j, 10].Formula := '=SUM(J5:J' + IntToStr(j-1) + ')';
      eclApp.Cells[j, 11].Formula := '=SUM(K5:K' + IntToStr(j-1) + ')';
      eclApp.Cells[j, 12].Formula := '=SUM(L5:L' + IntToStr(j-1) + ')';
      eclApp.Cells[j, 13].Formula := '=SUM(M5:M' + IntToStr(j-1) + ')';

      eclApp.ActiveSheet.Columns[4].NumberFormat := '##,#0';
      eclApp.ActiveSheet.Columns[6].NumberFormat := '##,#0';
      eclApp.ActiveSheet.Columns[7].NumberFormat := '##,#0';
      eclApp.ActiveSheet.Columns[8].NumberFormat := '##,#0';
      eclApp.ActiveSheet.Columns[9].NumberFormat := '##,#0';
      eclApp.ActiveSheet.Columns[10].NumberFormat := '##,#0';
      eclApp.ActiveSheet.Columns[11].NumberFormat := '##,#0';
      eclApp.ActiveSheet.Columns[12].NumberFormat := '##,#0';
      eclApp.ActiveSheet.Columns[13].NumberFormat := '##,#0';
      // add outline
      for k:=1 to 4 do
      begin
        eclApp.Range[eclApp.Cells[5, 1], eclApp.Cells[j, 15]].Borders[k].LineStyle := 1;
      end;
      eclapp.Columns.Autofit;
      ShowMessage('Succeed.');
      eclApp.Visible := True;
    except on F:Exception do
      ShowMessage(F.Message);
    end;
  end;
end;


procedure TSemiMaterialMonth_Skechers.Button5Click(Sender: TObject);
begin
  if Query2.Active=false then
  begin
    Showmessage('Please Query first');
    Exit;
  end;
  with CheckQry do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT TOP 1 YN  FROM CWKCLLMonth');
    SQL.Add('WHERE KCYEAR = ''' + CBX3.Text + ''' AND KCMONTH = ''' + CBX4.Text + ''' AND CKBH = ''' + CKBHID + ''' ');
    Active := true;
  end;
  if CheckQry.FieldByName('YN').AsString='1' then
  begin
    showmessage('Gia Thanh da confirm. Khong the tinh lai !');
    abort
  end else
  begin
    with TempQry do
    begin
      Active := false;
      SQL.Clear;
      SQL.Add('DELETE FROM CWKCLLMonth WHERE KCYEAR = ''' + CBX3.Text + ''' AND KCMONTH = ''' + CBX4.Text + ''' AND CKBH = ''' + CKBHID + ''' and YN=''2'' ');
      SQL.Add('INSERT INTO CWKCLLMonth (KCYEAR, KCMONTH, CKBH, DDBH, VNACC, UserID, UserDate, YN)');
      SQL.Add('SELECT ''' + CBX3.Text + ''' AS KCYEAR, ''' + CBX4.Text + ''' AS KCMONTH, ''' + CKBHID + ''' AS CKBH, DDBH, SemiVNACC AS VNACC, ''' + main.Edit1.Text + ''' AS USERID, GetDate() AS UserDate, ''2'' AS YN FROM (');
      SQL.Add('Select * from #SemiMat_Mon  ');
      SQL.Add('where SemiVNACC>0 ) SemiMat_Mon');
      //FuncObj.WriteErrorLog(sql.Text);
      ExecSQL;
    end;
    ShowMessage('Finished');
  end;
end;

procedure TSemiMaterialMonth_Skechers.Button8Click(Sender: TObject);
begin
  SemiMaterialMonth_Skechers_Print := TSemiMaterialMonth_Skechers_Print.Create(self);
  SemiMaterialMonth_Skechers_Print.Quickrep1.Prepare;
  SemiMaterialMonth_Skechers_Print.PageN.Caption := IntToStr(SemiMaterialMonth_Skechers_Print.Quickrep1.QRPrinter.PageCount);
  SemiMaterialMonth_Skechers_Print.Quickrep1.Preview;
  SemiMaterialMonth_Skechers_Print.Free;
end;

procedure TSemiMaterialMonth_Skechers.Button4Click(Sender: TObject);
begin
  with Query1 do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT DISTINCT CWKCLLMonth.*, YPZL.Article AS Article FROM CWKCLLMonth');
    SQL.Add('LEFT JOIN YPZL ON YPZL.YPDH = CWKCLLMonth.DDBH');
    SQL.Add('WHERE CWKCLLMonth.KCYEAR = ''' + CBX1.Text + ''' AND CWKCLLMonth.KCMONTH = ''' + CBX2.Text + '''');
    if (DDBHEdit1.Text <> '') then
      SQL.Add('AND CWKCLLMonth.DDBH LIKE ''' + DDBHEdit1.Text + '%''');
    SQL.Add('AND CWKCLLMonth.CKBH = ''' + CKBHID + '''');
     //funcObj.WriteErrorLog(sql.Text);
    Active := true;
  end;
end;

procedure TSemiMaterialMonth_Skechers.Query2AfterOpen(DataSet: TDataSet);
begin
  with TempQry do
  begin
    active:=false;
    SQL.Clear;
    SQL.Add('SELECT TOP 1 YN  FROM CW_MatCostMonth');
    SQL.Add('WHERE KCYEAR = ''' + CBX3.Text + ''' AND KCMONTH = ''' + CBX4.Text + ''' AND CKBH = ''' + CKBHID + ''' ');
    active:=true;
  end;
  if  (TempQry.FieldByName('YN').AsString='1') then
  begin
    Adjust_NVL_PB.Enabled:=false;
    Adjust_NVL_TT.Enabled:=false;
    Save_GT.Enabled:=false;
    Confirm_GT.Enabled:=false;
    Modify_SL.Enabled:=false;
  end else
  begin
    Adjust_NVL_PB.Enabled:=true;
    Adjust_NVL_TT.Enabled:=true;
    Save_GT.Enabled:=true;
    Confirm_GT.Enabled:=true;
    Modify_SL.Enabled:=true;
  end;
end;

end.
