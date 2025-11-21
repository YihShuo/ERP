unit PurOther_PrintTW_VN1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRPDFFilt, QRCtrls, QuickRpt, ExtCtrls, IniFiles, StdCtrls, DB,
  DBTables, ADODB;

type
  TPurOther_PrintTW_VN = class(TForm)
    QuickRep1: TQuickRep;
    PageHeaderBand1: TQRBand;
    L1: TQRLabel;
    L2: TQRLabel;
    L3: TQRLabel;
    QRDBText9: TQRDBText;
    L4: TQRLabel;
    L5: TQRLabel;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    L7: TQRLabel;
    QRDBText3: TQRDBText;
    L6: TQRLabel;
    QRDBText8: TQRDBText;
    L8: TQRLabel;
    QRDBText12: TQRDBText;
    QRSysData2: TQRSysData;
    QPage1: TQRLabel;
    L9: TQRLabel;
    DetailBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRSysData1: TQRSysData;
    PageFooterBand1: TQRBand;
    QRPDFFilter1: TQRPDFFilter;
    QRLabel4: TQRLabel;
    TmpQuery: TQuery;
    L11: TQRLabel;
    QRDBText13: TQRDBText;
    L_address: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    Query1: TQuery;
    Query1YQDate: TDateTimeField;
    QRDBText14: TQRDBText;
    QApprover: TADOQuery;
    QApproverApplicantID: TWideStringField;
    QApproverApplicant: TWideStringField;
    QApproverApplicantDate: TDateTimeField;
    QApproverWarehouseID: TWideStringField;
    QApproverWarehouse: TWideStringField;
    QApproverWarehouseDate: TDateTimeField;
    QApproverPurchaseID: TWideStringField;
    QApproverPurchase: TWideStringField;
    QApproverPurchaseDate: TDateTimeField;
    QApproverAPressidentID: TWideStringField;
    QApproverAPressident: TWideStringField;
    QApproverAPressidentDate: TDateTimeField;
    Query2: TQuery;
    QRBand1: TQRBand;
    L20: TQRLabel;
    QRLabel1: TQRLabel;
    QRImage4: TQRImage;
    QRDBText18: TQRDBText;
    QRLabel2: TQRLabel;
    QRImage3: TQRImage;
    QRDBText17: TQRDBText;
    QRLabel21: TQRLabel;
    QRImage2: TQRImage;
    QRDBText16: TQRDBText;
    QRLabel22: TQRLabel;
    QRImage1: TQRImage;
    QR_ApplicantDate: TQRDBText;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRLabel8: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel34: TQRLabel;
    QRLabel35: TQRLabel;
    QRLabel36: TQRLabel;
    QRLabel37: TQRLabel;
    QRLabel39: TQRLabel;
    QRLabel40: TQRLabel;
    QRLabel41: TQRLabel;
    QRLabel42: TQRLabel;
    QRLabel43: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QRLabel50: TQRLabel;
    QRLabel51: TQRLabel;
    QRLabel52: TQRLabel;
    QRLabel53: TQRLabel;
    QRLabel54: TQRLabel;
    QRLabel55: TQRLabel;
    QRLabel56: TQRLabel;
    QRLabel57: TQRLabel;
    QRLabel58: TQRLabel;
    QRLabel59: TQRLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    AppDir:string;
    ComName:String;
    Title:String;
    FileServerIP:String;
    IP,DBName,DBUser,DBPass,PW:String;
    procedure ReadIni();
  public
    { Public declarations }
  end;

var
  PurOther_PrintTW_VN: TPurOther_PrintTW_VN;

implementation

uses PurOther1, main1;

procedure TPurOther_PrintTW_VN.ReadIni();
var MyIni :Tinifile;
    SuperVisorID:string;
    sline_PW,tempstr_PW:string;
    ad_PW,i:integer;
begin
  ComName:='CONG TY TNHH TY XUAN';
  Title:='PHIEU DAT MUA HANG';
  FileServerIP:=main.ServerIP;
  //
  AppDir:=ExtractFilePath(Application.ExeName);
  if FileExists(AppDir+'\ComName.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ComName.ini');
      ComName:=MyIni.ReadString('ERP','ComName','');
      FileServerIP:=MyIni.ReadString('ERP','FileServerIP',main.ServerIP);
      Title:=MyIni.ReadString('GSBH_'+main.Edit2.Text,'Purchase_N213_PrintTW','PHIEU DAT MUA HANG');
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

  {if (main.Edit1.Text='102829') or (main.Edit1.Text='102330') or (main.Edit1.Text='103369') or (main.Edit1.Text='108254') then
    SuperVisorID:='46628.bmp'
  else
    SuperVisorID:='PurManager.bmp';
  with TmpQuery do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select SupervisorID from BUsers where USERID='''+main.Edit1.Text+''' ');
    Active:=true;
    if FieldByName('SupervisorID').AsString<>''  then SuperVisorID:=FieldByName('SupervisorID').AsString+'.bmp';
    Active:=false;
  end;
  //簽名檔
  if(not DirectoryExists(AppDir+'Images\'))  then ForceDirectories(AppDir+'Images\');
  if FileExists(AppDir+'\Images\'+main.Edit1.Text+'.bmp')=false then
      CopyFile(Pchar('\\'+FileServerIP+'\liy_erp\Images\'+main.Edit1.Text+'.bmp'),Pchar(AppDir+'Images\'+main.Edit1.Text+'.bmp'),false);
  if FileExists(AppDir+'\Images\'+SuperVisorID)=false then
      CopyFile(Pchar('\\'+FileServerIP+'\liy_erp\Images\'+SuperVisorID),Pchar(AppDir+'Images\'+SuperVisorID),false);

  if FileExists(AppDir+'\Images\'+main.Edit1.Text+'.bmp') then
  begin
    QRImage1.Picture.LoadFromFile(AppDir+'\Images\'+main.Edit1.Text+'.bmp');
  end;
  if FileExists(AppDir+'\Images\'+SuperVisorID) then
  begin
    QRImage2.Picture.LoadFromFile(AppDir+'\Images\'+SuperVisorID);
  end;  }
end;

{$R *.dfm}

procedure TPurOther_PrintTW_VN.FormCreate(Sender: TObject);
  var surea,i:integer;
    IsMark_WhitColor,IsMark_TRICOT,IsMark_Black,isMark_Natural,IsMark_Charcoal:boolean;
    IsMark_Red,IsMark_Navy,IsMark_Pink: boolean;

begin
  ReadIni();
  surea:=0;
  PurOther.CGDet.Active:=true;
  Query1.Active:=true;
  IsMark_WhitColor:=false;
  IsMark_TRICOT:=false;
  IsMark_Black:=false;
  isMark_Natural:=false;
  IsMark_Charcoal:=false;
  IsMark_Navy:=false;
  IsMark_Pink:=false;
  while not PurOther.CGDet.Eof   do
  begin

    {if pos('WHITE',UpperCase(PurOther.CGDet.FieldByName('YWPM').AsString))<>0 then
      IsMark_WhitColor:=true;
    if ((pos('T/C',UpperCase(PurOther.CGDet.FieldByName('YWPM').AsString))<>0) or (pos('TRICOT',UpperCase(PurOther.CGDet.FieldByName('YWPM').AsString))<>0)) then
      IsMark_TRICOT:=true;
    if pos('BLACK',UpperCase(PurOther.CGDet.FieldByName('YWPM').asstring))<>0 then
      IsMark_Black:=true; }
    if pos('WHITE',UpperCase(PurOther.CGDet.FieldByName('YWPM').AsString))<>0 then
      IsMark_WhitColor:=true;
    if pos('BV-10A',UpperCase(PurOther.CGDet.FieldByName('YWPM').AsString))<>0 then
      IsMark_WhitColor:=true;
    if pos('BLACK',UpperCase(PurOther.CGDet.FieldByName('YWPM').asstring))<>0 then
      IsMark_Black:=true;
    if pos('CONVERSE CHARCOAL',UpperCase(PurOther.CGDet.FieldByName('YWPM').AsString))<>0 then
      IsMark_Charcoal:=true;
    //20161130
    //if pos('CONVERSE RED',UpperCase(Mas.FieldByName('YWPM').asstring))<>0 then
    //  IsMark_Red:=true;
    if pos('CONVERSE NAVY',UpperCase(PurOther.CGDet.FieldByName('YWPM').asstring))<>0 then
      IsMark_Navy:=true;
    if pos('CONVERSE PINK',UpperCase(PurOther.CGDet.FieldByName('YWPM').asstring))<>0 then
      IsMark_Pink:=true;

    PurOther.CGDet.Next;
  end;
  //20150602 判斷材料有沒有WHITE字 or TRICOT or TC
  {L9.Caption:='';
  if (main.edit2.Text = 'VA12') and (IsMark_WhitColor=true) then
    L9.Caption:='Material:  white = 10A white';
  if (main.edit2.Text = 'VA12') and (IsMark_TRICOT=true) then
    L9.Caption:=L9.Caption+'/Note:TRICOT Buy from CRMTO(ChengZhang)';
  if (main.edit2.Text = 'VA12') and (IsMark_Black=true) then
    L9.Caption:=L9.Caption+'/Black = CONV-0013';  }

  //20150602 判斷材料有沒有WHITE字 or TRICOT or TC
  L9.Caption:='';
  if (main.edit2.Text = 'VA12') and (IsMark_WhitColor=true) then
    //L9.Caption:=L9.Caption+'Material: white = 10A White';
    L9.Caption:=L9.Caption+'Material: white = 129-96-00';
  if (main.edit2.Text = 'VA12') and (IsMark_Black=true) then
    L9.Caption:=L9.Caption+'/Black = 117-15-00';       // CONV-0013
  if (main.edit2.Text = 'VA12') and (IsMark_Charcoal=true) then
    L9.Caption:=L9.Caption+'/Material: CONVERSE Charcoal = CONV-0037';
  //20161130
  //if (main.edit2.Text = 'VA12') and (IsMark_Red=true) then
  //  NoteInfo.Caption:=NoteInfo.Caption+'/CONVERSE Red = CONV-0034';
  if (main.edit2.Text = 'VA12') and (IsMark_Navy=true) then
    L9.Caption:=L9.Caption+'/CONVERSE Navy = CONV-0033';
  if (main.edit2.Text = 'VA12') and (IsMark_Pink=true) then
    L9.Caption:=L9.Caption+'/CONVERSE Pink = CONV-0036';

  if L9.Caption<>'' then L9.Enabled:=true;

  if messagedlg('Just for Print not for Mail?',mtinformation,[mbYes,mbNo],0)=mrYes then
  begin
    L1.Caption:='';
    L2.Caption:='';
    L3.Caption:='';
    L4.Caption:='';
    L5.Caption:='';
    L6.Caption:='';
    L7.Caption:='';
    L8.Caption:='';
    L11.Caption:='';
    QRDBText13.Enabled:=false;
  end else
  begin
    ReadIni();
    L1.Caption:=ComName;
    L2.Caption:=Title;
  end;
   //20240419
  with TmpQuery do
  begin
    active:=false;
    sql.Clear;
    sql.Add(' Select LNO From WF_PurchaseList Where CGNO='''+PurOther.CGMas.fieldbyname('CGNO').AsString+''' and flowflag=''Z'' ');
    //funcObj.WriteErrorLog(sql.Text);
    active:=true;
  end;
  if TmpQuery.RecordCount>0 then
  begin
    QApprover.ConnectionString := 'Provider=SQLOLEDB.1;Password='+PW+';Persist Security Info=True;User ID='+DBUser+';Initial Catalog=' + DBName + ';Data Source=' + IP;
    with QApprover do
    begin
      Active := false;
      SQL.Clear;
      //
      SQL.Add('  SELECT MAX(CASE WHEN S_STEP_ID = ''制表'' THEN S_USER_ID END) AS ApplicantID,    ');
      SQL.Add('         MAX(CASE WHEN S_STEP_ID = ''制表'' THEN USERNAME END) AS Applicant,    ');
      SQL.Add('         MAX(CASE WHEN S_STEP_ID = ''制表'' THEN ApproveDate END) AS ApplicantDate,   ');
      SQL.Add('  				MAX(CASE WHEN S_STEP_ID Like ''資材主管%'' THEN S_USER_ID END) AS WarehouseID,    ');
      SQL.Add('         MAX(CASE WHEN S_STEP_ID Like ''資材主管%'' THEN USERNAME END) AS Warehouse,    ');
      SQL.Add('         MAX(CASE WHEN S_STEP_ID Like ''資材主管%'' THEN ApproveDate END) AS WarehouseDate,    ');
      SQL.Add('         MAX(CASE WHEN S_STEP_ID = ''採購主管'' THEN S_USER_ID END) AS PurchaseID,    ');
      SQL.Add('         MAX(CASE WHEN S_STEP_ID = ''採購主管'' THEN USERNAME END) AS Purchase,    ');
      SQL.Add('         MAX(CASE WHEN S_STEP_ID = ''採購主管'' THEN ApproveDate END) AS PurchaseDate,    ');
      SQL.Add('         MAX(CASE WHEN S_STEP_ID = ''協理''  THEN S_USER_ID END) AS APressidentID,    ');
      SQL.Add('         MAX(CASE WHEN S_STEP_ID = ''協理''  THEN USERNAME END) AS APressident,    ');
      SQL.Add('         MAX(CASE WHEN S_STEP_ID = ''協理''  THEN ApproveDate END) AS APressidentDate FROM (    ');
      SQL.Add('             SELECT S_STEP_ID, REPLACE(S_USER_ID, '' '', '''') AS S_USER_ID, USERNAME, ApproveDate, ROW_NUMBER() OVER (ORDER BY ApproveDate) AS Seq   ');
      SQL.Add('  					  FROM (    ');
      SQL.Add('                          SELECT S_STEP_ID, S_USER_ID, USERNAME, CONVERT(DATETIME, UPDATE_DATE + '' '' + UPDATE_TIME) AS ApproveDate,    ');
      SQL.Add('                          ROW_NUMBER() OVER (PARTITION BY S_STEP_ID ORDER BY CONVERT(DATETIME, UPDATE_DATE + '' '' + UPDATE_TIME) DESC) AS RowID FROM [EEP].[LingYi].[dbo].[SYS_TODOHIS] SYS_TODOHIS  ');
      SQL.Add('                          WHERE FORM_TABLE = ''WF_PurchaseList'' AND FORM_PRESENTATION LIKE ''%'+TmpQuery.fieldbyname('LNO').AsString+'%'' AND STATUS IN (''N'', ''Z'')    ');
      SQL.Add('                          UNION ALL    ');
      SQL.Add('                          SELECT ''制表'', CGZL.UserID COLLATE Chinese_PRC_CI_AS AS UserID,    ');
      SQL.Add('                          BUsers.UserName COLLATE Chinese_PRC_CI_AS AS UserName,    ');
      SQL.Add('                          CGZL.UserDate, 1 FROM  WF_PurchaseList    ');
      SQL.Add('                          LEFT JOIN CGZL ON CGZL.CGNO = WF_PurchaseList.CGNO    ');
      SQL.Add('                          LEFT JOIN BUsers ON BUsers.UserID = CGZL.UserID    ');
      SQL.Add('                          WHERE LNO = '''+TmpQuery.fieldbyname('LNO').AsString+'''    ');
      SQL.Add('                        ) AS ApproveData    ');
      SQL.Add('                        WHERE RowID = 1    ');
      SQL.Add('                       ) AS ApproveData   ');

      //funcObj.WriteErrorLog(sql.Text);
      Active := true;
      if RecordCount>0 then
      begin
        if(not DirectoryExists(AppDir+'Images\'))  then ForceDirectories(AppDir+'Images\');
        CopyFile(Pchar('\\'+main.ServerIP+'\liy_erp\Images\'+FieldByName('ApplicantID').AsString+'.bmp'),Pchar(AppDir+'Images\'+FieldByName('ApplicantID').AsString+'.bmp'),false);
        if FileExists(AppDir+'Images\'+FieldByName('ApplicantID').AsString+'.bmp') then
        begin
          QRImage1.Picture.LoadFromFile(AppDir+'Images\'+FieldByName('ApplicantID').AsString+'.bmp');
        end;
        //
        CopyFile(Pchar('\\'+main.ServerIP+'\liy_erp\Images\'+FieldByName('WarehouseID').AsString+'.bmp'),Pchar(AppDir+'Images\'+FieldByName('WarehouseID').AsString+'.bmp'),false);
        if FileExists(AppDir+'Images\'+FieldByName('WarehouseID').AsString+'.bmp') then
        begin
          QRImage2.Picture.LoadFromFile(AppDir+'Images\'+FieldByName('WarehouseID').AsString+'.bmp');
        end;
        //
        CopyFile(Pchar('\\'+main.ServerIP+'\liy_erp\Images\'+FieldByName('PurchaseID').AsString+'.bmp'),Pchar(AppDir+'Images\'+FieldByName('PurchaseID').AsString+'.bmp'),false);
        if FileExists(AppDir+'Images\'+FieldByName('PurchaseID').AsString+'.bmp') then
        begin
          QRImage3.Picture.LoadFromFile(AppDir+'Images\'+FieldByName('PurchaseID').AsString+'.bmp');
        end;
        CopyFile(Pchar('\\'+main.ServerIP+'\liy_erp\Images\00056.bmp'),Pchar(AppDir+'Images\00056.bmp'),false);
        if FileExists(AppDir+'Images\00056.bmp') then
        begin
          if QApprover.FieldByName('PurchaseDate').AsString<>'' then
          begin
            QRImage4.Picture.LoadFromFile(AppDir+'Images\00056.bmp');
            QRDBText18.Enabled:=true;
          end else
          begin
            QRDBText18.Enabled:=false;
          end;
        end;

      end;
      //Active:=false;
    end;
  end else
  begin
    QR_ApplicantDate.Enabled:=false;
    QRDBText16.Enabled:=false;
    QRDBText17.Enabled:=false;
    QRDBText18.Enabled:=false;
  end;
end;



procedure TPurOther_PrintTW_VN.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TPurOther_PrintTW_VN.FormDestroy(Sender: TObject);
begin
  PurOther_PrintTW_VN:=nil;
end;

end.
