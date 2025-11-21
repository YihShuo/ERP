unit PurEquipment_print1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls, StdCtrls, Bde.DBTables, Data.DB, IniFiles,
  Data.Win.ADODB;

type
  TPurEquipment_print = class(TForm)
    QuickRep1: TQuickRep;
    PageHeaderBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel18: TQRLabel;
    QRDBText20: TQRDBText;
    QRDBText4: TQRDBText;
    QRLabel5: TQRLabel;
    L1: TQRLabel;
    QRLabel9: TQRLabel;
    QRDBText6: TQRDBText;
    QRLabel11: TQRLabel;
    QRDBText7: TQRDBText;
    QRLabel10: TQRLabel;
    TitleBand1: TQRBand;
    QRLabel14: TQRLabel;
    QRShape24: TQRShape;
    QRLabel8: TQRLabel;
    QRShape17: TQRShape;
    QRShape3: TQRShape;
    QRLabel4: TQRLabel;
    QRShape4: TQRShape;
    QRLabel2: TQRLabel;
    DetailBand1: TQRBand;
    QRShape15: TQRShape;
    QRShape19: TQRShape;
    QRDBText5: TQRDBText;
    QRDBText13: TQRDBText;
    QRShape5: TQRShape;
    QRDBText2: TQRDBText;
    QRShape1: TQRShape;
    QRBand1: TQRBand;
    QRLabel16: TQRLabel;
    QRLabel6: TQRLabel;
    QRDBText1: TQRDBText;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRDBText3: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRShape2: TQRShape;
    SummaryBand1: TQRBand;
    QRExpr3: TQRExpr;
    QRLabel46: TQRLabel;
    QRSysData2: TQRSysData;
    CGDet: TQuery;
    CGDetCGNO: TStringField;
    CGDetSBBH: TStringField;
    CGDetDWBH: TStringField;
    CGDetYWPM: TStringField;
    CGDetZWPM: TStringField;
    CGDetLSBH: TStringField;
    CGDetQUCBH: TStringField;
    CGDetQty: TFloatField;
    CGDetVNPrice: TCurrencyField;
    CGDetACCVN: TFloatField;
    CGDetUSPrice: TFloatField;
    CGDetACCUS: TFloatField;
    CGDetMemo: TStringField;
    CGDetYQDate: TDateTimeField;
    CGDetDYWSM: TStringField;
    CGDetDZWSM: TStringField;
    CGDetUSERDate: TDateTimeField;
    CGDetUSERID: TStringField;
    CGDetYN: TStringField;
    UPDet: TUpdateSQL;
    QRExpr1: TQRExpr;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRLabel17: TQRLabel;
    QRDBText10: TQRDBText;
    CGDetVWPM: TStringField;
    QRLabel23: TQRLabel;
    QRLabel50: TQRLabel;
    QRLabel49: TQRLabel;
    QRLabel51: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel15: TQRLabel;
    ApplicantID: TQRImage;
    SupvervisorID: TQRImage;
    LeaderID: TQRImage;
    ManagerID: TQRImage;
    QApprover: TADOQuery;
    QRLabel57: TQRLabel;
    QRSysData1: TQRSysData;
    QRLabel56: TQRLabel;
    QPage1: TQRLabel;
    QRDBText11: TQRDBText;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CGDetCalcFields(DataSet: TDataSet);
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRDBText1Print(sender: TObject; var Value: string);
    procedure QRDBText8Print(sender: TObject; var Value: string);
    procedure QRDBText9Print(sender: TObject; var Value: string);
    procedure QRExpr3Print(sender: TObject; var Value: string);
  private
    AppDir:string;
    ComName:String;
    { Private declarations }
    procedure ReadIni();
  public
    IP,DBName,DBUser,DBPass,PW:String;
    //計算高度
    BeforPrint_Rowi:integer;
    TxtLineHeight:TStringlist;
    { Public declarations }
  end;

var
  PurEquipment_print: TPurEquipment_print;

implementation
  uses main1, PurEquipment1;
{$R *.dfm}

procedure TPurEquipment_print.ReadIni();
var MyIni :Tinifile;
    //
    sline_PW,tempstr_PW:string;
    ad_PW,i:integer;
begin
  ComName:='CONG TY TNHH TY XUAN';
  //
  AppDir:=ExtractFilePath(Application.ExeName);
  if FileExists(AppDir+'\ComName.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ComName.ini');
      ComName:=MyIni.ReadString('ERP','ComNameCH','');
      //
      IP := MyIni.ReadString('ERPServer','IP', '');
      DBName := MyIni.ReadString('ERPServer', 'Database', '');
      DBUser := MyIni.ReadString('ERPServer', 'User', '');
      DBPass := MyIni.ReadString('ERPServer', 'Pass', '');
      // dencrypt password
      sline_PW:='';
      ad_PW:=strtoint(copy(DBPass,0,1)); //取得解密字元
      for i:=2 to (length(DBPass)) do //解密迴圈
      begin
        tempstr_PW:=copy(DBPass,i,1);
        sline_PW:=sline_PW+chr(ord(tempstr_PW[1])-ad_PW);
      end;
      PW:=sline_PW;

    finally
      MyIni.Free;
    end;
  end;
  L1.Caption:=ComName;
end;

procedure TPurEquipment_print.CGDetCalcFields(DataSet: TDataSet);
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

procedure TPurEquipment_print.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  //框線長度   trunc(DetailBand1.expanded)
  if BeforPrint_Rowi>0 then
  begin
    QRShape15.Height:=54+strtoint(TxtLineHeight.Strings[BeforPrint_Rowi])+30;
    Inc(BeforPrint_Rowi);
  end;
end;

procedure TPurEquipment_print.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=CaFree;
end;

procedure TPurEquipment_print.FormCreate(Sender: TObject);
var txtHei:integer;
begin
  CGDet.Active:=true;
  //設定檔
  ReadIni();
  //簽核系統審核  20221215
  QApprover.ConnectionString := 'Provider=SQLOLEDB.1;Password='+PW+';Persist Security Info=True;User ID='+DBUser+';Initial Catalog=' + DBName + ';Data Source=' + IP;
  with QApprover do
  begin
    Active := false;
    SQL.Clear;
    //
    SQL.Add('  SELECT MAX(CASE WHEN S_STEP_DESC = ''申請人''  THEN S_USER_ID END) AS ApplicantID,  ');
    SQL.Add('  MAX(CASE WHEN S_STEP_DESC = ''申請人''  THEN USERNAME END) AS Applicant,  ');
    SQL.Add('  MAX(CASE WHEN S_STEP_DESC = ''申請人''  THEN ApproveDate END) AS ApplicantDate,  ');
    SQL.Add('  MAX(CASE WHEN ((S_STEP_DESC = ''單位主管'') or (S_STEP_DESC = ''申請人'' and LEVEL_NO>0))  THEN S_USER_ID END) AS SupvervisorID,  ');
    SQL.Add('  MAX(CASE WHEN ((S_STEP_DESC = ''單位主管'') or (S_STEP_DESC = ''申請人'' and LEVEL_NO>0)) THEN USERNAME END) AS Supvervisor,  ');
    SQL.Add('  MAX(CASE WHEN ((S_STEP_DESC = ''單位主管'') or (S_STEP_DESC = ''申請人'' and LEVEL_NO>0)) THEN ApproveDate END) AS SupvervisorDate,  ');
    SQL.Add('  MAX(CASE WHEN ((S_STEP_DESC = ''部門主管'') or (S_STEP_DESC = ''單位主管'' and LEVEL_NO>10) or (S_STEP_DESC = ''申請人'' and LEVEL_NO>10) ) THEN S_USER_ID END) AS LeaderID,    ');
    SQL.Add('  MAX(CASE WHEN ((S_STEP_DESC = ''部門主管'') or (S_STEP_DESC = ''單位主管'' and LEVEL_NO>10) or (S_STEP_DESC = ''申請人'' and LEVEL_NO>10) ) THEN USERNAME END) AS Leader,    ');
    SQL.Add('  MAX(CASE WHEN ((S_STEP_DESC = ''部門主管'') or (S_STEP_DESC = ''單位主管'' and LEVEL_NO>10) or (S_STEP_DESC = ''申請人'' and LEVEL_NO>10) ) THEN ApproveDate END) AS LeaderDate,    ');
    SQL.Add('  MAX(CASE WHEN ((S_STEP_DESC = ''廠主管'') or (S_STEP_DESC = ''單位主管'' and LEVEL_NO>20) or (S_STEP_DESC = ''部門主管'' and LEVEL_NO>20) or (S_STEP_DESC = ''申請人'' and LEVEL_NO>20) )  THEN S_USER_ID END) AS ManagerID,    ');
    SQL.Add('  MAX(CASE WHEN ((S_STEP_DESC = ''廠主管'') or (S_STEP_DESC = ''單位主管'' and LEVEL_NO>20) or (S_STEP_DESC = ''部門主管'' and LEVEL_NO>20) or (S_STEP_DESC = ''申請人'' and LEVEL_NO>20) ) THEN USERNAME END) AS Manager,    ');
    SQL.Add('  MAX(CASE WHEN ((S_STEP_DESC = ''廠主管'') or (S_STEP_DESC = ''單位主管'' and LEVEL_NO>20) or (S_STEP_DESC = ''部門主管'' and LEVEL_NO>20) or (S_STEP_DESC = ''申請人'' and LEVEL_NO>20) ) THEN ApproveDate END) AS ManagerDate    ');
    SQL.Add('       FROM (  ');
    SQL.Add('      ');
    SQL.Add('    SELECT S_USER_ID, USERNAME, CONVERT(VARCHAR, ApproveDate, 111) AS ApproveDate, ISNULL(LEVEL_NO, 0) AS LEVEL_NO, S_STEP_DESC, ROW_NUMBER() OVER ( ORDER BY ApproveDate) AS Seq FROM (  ');
    SQL.Add('      Select S_USER_ID,USERNAME,LEVEL_NO,ORG_DESC,S_STEP_DESC,Max(ApproveDate) as ApproveDate from (  ');
    SQL.Add('      SELECT S_USER_ID, USERNAME, CONVERT(DATETIME, UPDATE_DATE + '' '' + UPDATE_TIME) AS ApproveDate, SYS_ORG.LEVEL_NO, ORG_DESC,S_STEP_DESC,  ');
    SQL.Add('      ROW_NUMBER() OVER (PARTITION BY S_STEP_ID ORDER BY CONVERT(DATETIME, UPDATE_DATE + '' '' + UPDATE_TIME) DESC) AS RowID FROM [EEP].[LingYi].[dbo].[SYS_TODOHIS] AS SYS_TODOHIS  ');
    SQL.Add('      LEFT JOIN (Select ORG_MAN,LEVEL_NO,ORG_DESC,ROW_NUMBER() OVER (ORDER BY LEVEL_NO Desc) AS Seq from [EEP].[LingYi].[dbo].[SYS_ORG]  ) AS SYS_ORG ON SYS_ORG.ORG_MAN = SYS_TODOHIS.S_ROLE_ID --and SYS_ORG.ORG_KIND=''1000''  ');
    SQL.Add('      WHERE FORM_TABLE = ''TSCD_CGZL'' AND STATUS IN (''N'', ''Z'') AND FORM_PRESENTATION LIKE ''%'+PurEquipment.CGMas.FieldByName('CGNO').AsString+'%''  ');
    SQL.Add('      	  ) A Group by S_USER_ID,USERNAME,LEVEL_NO,ORG_DESC,S_STEP_DESC  ');
    SQL.Add('    ) AS ApproveData  ');
    SQL.Add('    ');
    SQL.Add('  ) AS ApproveData  ');
    //funcObj.WriteErrorLog(sql.Text);
    Active := true;
    if RecordCount>0 then
    begin
      if(not DirectoryExists(AppDir+'Images\'))  then ForceDirectories(AppDir+'Images\');
      CopyFile(Pchar('\\'+main.ServerIP+'\liy_erp\Images\'+FieldByName('ApplicantID').AsString+'.bmp'),Pchar(AppDir+'Images\'+FieldByName('ApplicantID').AsString+'.bmp'),false);
      if FileExists(AppDir+'Images\'+FieldByName('ApplicantID').AsString+'.bmp') then
      begin
        ApplicantID.Picture.LoadFromFile(AppDir+'Images\'+FieldByName('ApplicantID').AsString+'.bmp');
      end;
      //
      CopyFile(Pchar('\\'+main.ServerIP+'\liy_erp\Images\'+FieldByName('SupvervisorID').AsString+'.bmp'),Pchar(AppDir+'Images\'+FieldByName('SupvervisorID').AsString+'.bmp'),false);
      if FileExists(AppDir+'Images\'+FieldByName('SupvervisorID').AsString+'.bmp') then
      begin
        SupvervisorID.Picture.LoadFromFile(AppDir+'Images\'+FieldByName('SupvervisorID').AsString+'.bmp');
      end;
      //
      CopyFile(Pchar('\\'+main.ServerIP+'\liy_erp\Images\'+FieldByName('LeaderID').AsString+'.bmp'),Pchar(AppDir+'Images\'+FieldByName('LeaderID').AsString+'.bmp'),false);
      if FileExists(AppDir+'Images\'+FieldByName('LeaderID').AsString+'.bmp') then
      begin
        LeaderID.Picture.LoadFromFile(AppDir+'Images\'+FieldByName('LeaderID').AsString+'.bmp');
      end;
      //
      CopyFile(Pchar('\\'+main.ServerIP+'\liy_erp\Images\'+FieldByName('ManagerID').AsString+'.bmp'),Pchar(AppDir+'Images\'+FieldByName('ManagerID').AsString+'.bmp'),false);
      if FileExists(AppDir+'Images\'+FieldByName('ManagerID').AsString+'.bmp') then
      begin
        ManagerID.Picture.LoadFromFile(AppDir+'Images\'+FieldByName('ManagerID').AsString+'.bmp');
      end;
      //
    end;
    Active:=false;
  end;
  //

  //中文換行異常只能自己處理 1.加空格 2. 計算換行後高度,儲存在陣列，在BeforePrint 把直線高度加上去
  BeforPrint_Rowi:=0;
  TxtLineHeight:=TStringlist.Create;
  PurEquipment.PrintLabel.Width:=QRDBText2.Width;
  PurEquipment.PrintLabel.Font.Size:=QRDBText2.Font.Size;
  PurEquipment.PrintLabel.Font:=QRDBText2.Font;
  while not CGDet.Eof do
  begin
    txtHei:=PurEquipment.GetTextHeight(CGDet.FieldByName('ZWPM').AsString);
    if txtHei<=QRDBText2.Height then //直框線高度
    begin
      TxtLineHeight.Add('0');
    end else
    begin
      TxtLineHeight.Add(inttostr(txtHei-QRDBText2.Height));
    end;
    CGDet.Next;
  end;

end;

procedure TPurEquipment_print.FormDestroy(Sender: TObject);
begin
  TxtLineHeight.Free;
  PurEquipment_print:=nil;
end;

procedure TPurEquipment_print.QRDBText1Print(sender: TObject;
  var Value: string);
begin
  if PurEquipment.CGMas.FieldByName('ZSJC_ZW').AsString='' then
  begin
    QRDBText1.DataField:='ZSJC_YW';
  end else begin
    QRDBText1.DataField:='ZSJC_ZW';
  end;
end;

procedure TPurEquipment_print.QRDBText8Print(sender: TObject;
  var Value: string);
begin
  with CGDet do
  begin
    if not FieldByName('USPrice').IsNull then
      QRDBText8.DataField:='USPrice';
    if not FieldByName('VNPrice').IsNull then
      QRDBText8.DataField:='VNPrice';
  end;
end;

procedure TPurEquipment_print.QRDBText9Print(sender: TObject;
  var Value: string);
begin
  with CGDet do
  begin
    if not FieldByName('USPrice').IsNull then
      if FieldByName('USPrice').value<>0 then
      begin
        QRDBText9.DataField:='ACCUS';
      end;
    if not FieldByName('VNPrice').IsNull then
      if FieldByName('VNPrice').value<>0 then
      begin
        QRDBText9.DataField:='ACCVN';
      end;
  end;
end;

procedure TPurEquipment_print.QRExpr3Print(sender: TObject; var Value: string);
begin
  with CGDet do
  begin
    if not FieldByName('USPrice').IsNull then
      if FieldByName('USPrice').value<>0 then
      begin
        QRExpr3.Expression:='sum(ACCUS)';
      end;
    if not FieldByName('VNPrice').IsNull then
      if FieldByName('VNPrice').value<>0 then
      begin
        QRExpr3.Expression:='sum(ACCVN)';
      end;
  end;
end;

end.
