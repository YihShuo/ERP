unit PurNoSizeTW_Print_VN1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls, DB, DBTables, QRPDFFilt, IniFiles,
  ADODB;

type
  TPurNoSizeTW_Print_VN = class(TForm)
    QuickRep1: TQuickRep;
    PageHeaderBand1: TQRBand;
    DetailBand1: TQRBand;
    QRDBText1: TQRDBText;
    Mas: TQuery;
    Det: TQuery;
    DataSource1: TDataSource;
    UpdateSQL1: TUpdateSQL;
    QRDBText2: TQRDBText;
    QPage1: TQRLabel;
    QRLabel38: TQRLabel;
    QRSysData2: TQRSysData;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    MasCGNO: TStringField;
    MasCLBH: TStringField;
    MasXqQty: TCurrencyField;
    MasQty: TCurrencyField;
    MasUSPrice: TCurrencyField;
    MasVNPrice: TCurrencyField;
    MasMemo: TStringField;
    MasBJNO: TStringField;
    MasYQDate: TDateTimeField;
    MasCFMDate: TDateTimeField;
    MasUSERDate: TDateTimeField;
    MasUSERID: TStringField;
    MasYN: TStringField;
    MasYWPM: TStringField;
    MasDWBH: TStringField;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRSysData1: TQRSysData;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    PageFooterBand1: TQRBand;
    QRPDFFilter1: TQRPDFFilter;
    L6: TQRLabel;
    L7: TQRLabel;
    L5: TQRLabel;
    L4: TQRLabel;
    L3: TQRLabel;
    L1: TQRLabel;
    L2: TQRLabel;
    MasZLNO: TMemoField;
    QRDBText12: TQRDBText;
    L8: TQRLabel;
    SeasonQ: TQuery;
    SeasonQGSBH: TStringField;
    L9: TQRLabel;
    SeasonQBUYNO: TStringField;
    L10: TQRLabel;
    MasZWPM: TStringField;
    QRDBText14: TQRDBText;
    NoteInfo: TQRLabel;
    QRLabel1: TQRLabel;
    QRImage2: TQRImage;
    QRImage1: TQRImage;
    QRLabel4: TQRLabel;
    TmpQuery: TQuery;
    L11: TQRLabel;
    L12: TQRLabel;
    QRDBText13: TQRDBText;
    L_address: TQRLabel;
    QRLabel2: TQRLabel;
    QRDBText15: TQRDBText;
    Query1: TQuery;
    Query1YQDate: TDateTimeField;
    QRLabel3: TQRLabel;
    QRBand1: TQRBand;
    L20: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel18: TQRLabel;
    QRImage3: TQRImage;
    QRImage4: TQRImage;
    QRLabel19: TQRLabel;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
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
    QR_ApplicantDate: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    QRLabel8: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    AppDir:String;
    ComName:String;
    Title:String;
    FileServerIP:string;
    IP,DBName,DBUser,DBPass,PW:String;
    procedure ReadIni();
  public
    { Public declarations }
  end;

var
  PurNoSizeTW_Print_VN: TPurNoSizeTW_Print_VN;

implementation

uses main1,PurNoSize1,fununit;

{$R *.dfm}
procedure TPurNoSizeTW_Print_VN.ReadIni();
var MyIni :Tinifile;
    AppDir,SuperVisorID:string;
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
      Title:=MyIni.ReadString('GSBH_'+main.Edit2.Text,'Purchase_N211_PrintTW','PHIEU DAT MUA HANG');
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

  {if (main.Edit2.Text='VC12') and ((main.Edit1.Text='103369') or (main.Edit1.Text='104906') or (main.Edit1.Text='102330') or (main.Edit1.Text='102829') or (main.Edit1.Text='102329') or (main.Edit1.Text='106940') or (main.Edit1.Text='108254')) then
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
  end; }

end;

procedure TPurNoSizeTW_Print_VN.FormCreate(Sender: TObject);
var i:integer;
    IsMark_WhitColor,IsMark_TRICOT,IsMark_Black,isMark_Natural,IsMark_Charcoal:boolean;
    IsMark_Red,IsMark_Navy,IsMark_Pink: boolean;
begin
  ReadIni();
  Mas.Active:=true;
  Det.Active:=true;
  SeasonQ.Active:=true;
  Query1.Active:=true;
  //20150602 判斷材料有沒有WHITE字 or TRICOT or TC
  IsMark_WhitColor:=false;
  IsMark_TRICOT:=false;
  IsMark_Black:=false;
  isMark_Natural:=false;
  IsMark_Charcoal:=false;
  // 20161130 add note for Red- Navy- Pink
  //IsMark_Red:=false;
  IsMark_Navy:=false;
  IsMark_Pink:=false;

  Mas.First;
  while not Mas.Eof   do
  begin
    if pos('WHITE',UpperCase(Mas.FieldByName('YWPM').AsString))<>0 then
      IsMark_WhitColor:=true;
    if pos('BV-10A',UpperCase(Mas.FieldByName('YWPM').AsString))<>0 then
      IsMark_WhitColor:=true;
    if pos('BLACK',UpperCase(Mas.FieldByName('YWPM').asstring))<>0 then
      IsMark_Black:=true;
    if pos('CONVERSE CHARCOAL',UpperCase(Mas.FieldByName('YWPM').AsString))<>0 then
      IsMark_Charcoal:=true;
    //20161130
    //if pos('CONVERSE RED',UpperCase(Mas.FieldByName('YWPM').asstring))<>0 then
    //  IsMark_Red:=true;
    if pos('CONVERSE NAVY',UpperCase(Mas.FieldByName('YWPM').asstring))<>0 then
      IsMark_Navy:=true;
    if pos('CONVERSE PINK',UpperCase(Mas.FieldByName('YWPM').asstring))<>0 then
      IsMark_Pink:=true;
    Mas.Next;
  end;


  //20150602 判斷材料有沒有WHITE字 or TRICOT or TC
  if (main.edit2.Text = 'VA12') and (IsMark_WhitColor=true) then
    //NoteInfo.Caption:=NoteInfo.Caption+'Material: white = 10A White';
    NoteInfo.Caption:=NoteInfo.Caption+'Material: white = 129-96-00';
  if (main.edit2.Text = 'VA12') and (IsMark_Black=true) then
    NoteInfo.Caption:=NoteInfo.Caption+'/Black = 117-15-00';       // CONV-0013
  if (main.edit2.Text = 'VA12') and (IsMark_Charcoal=true) then
    NoteInfo.Caption:=NoteInfo.Caption+'/Material: CONVERSE Charcoal = CONV-0037';
  //20161130
  //if (main.edit2.Text = 'VA12') and (IsMark_Red=true) then
  //  NoteInfo.Caption:=NoteInfo.Caption+'/CONVERSE Red = CONV-0034';
  if (main.edit2.Text = 'VA12') and (IsMark_Navy=true) then
    NoteInfo.Caption:=NoteInfo.Caption+'/CONVERSE Navy = CONV-0033';
  if (main.edit2.Text = 'VA12') and (IsMark_Pink=true) then
    NoteInfo.Caption:=NoteInfo.Caption+'/CONVERSE Pink = CONV-0036';

  if NoteInfo.Caption<>'' then NoteInfo.Enabled:=true;
  //
  Mas.First;
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
    L12.Caption:='';
    QRDBText13.Enabled:=false;
  end else
  begin
    ReadIni();
    L1.Caption:=ComName;
    L2.Caption:=Title;
  end;
  if messagedlg('6 Order List only or All Order List?',mtinformation,[mbYes,mbNo],0)=mrYes then
  begin
    if messagedlg('Print English or Chinese?',mtinformation,[mbYes,mbNo],0)=mrYes then
      QRDBtext14.Enabled:=false
    else
      QRDBtext1.Enabled:=false;
    while not Mas.Eof do
    begin
        if not Mas.fieldbyname('Memo').Isnull then
        begin
            Mas.Edit;
            Mas.FieldByName('YWPM').asstring :=Mas.FieldByName('YWPM').value+' //  '+Mas.fieldbyname('Memo').value;
            Mas.FieldByName('ZWPM').asstring :=Mas.FieldByName('ZWPM').value+' //  '+Mas.fieldbyname('Memo').value;
        end;
        if Det.recordcount>0 then
        begin
            if Det.recordcount<=6 then
            begin
                Det.First;
                while not Det.Eof do
                begin
                    if not Mas.FieldByName('ZLNO').isnull then
                    begin
                      Mas.Edit;
                      Mas.FieldByName('ZLNO').asstring:=Mas.FieldByName('ZLNO').asstring+' '+Det.fieldbyname('ZLBH').asstring
                          +'('+floattostr(Det.fieldbyname('Qty').value)+'&'+ Det.fieldbyname('XieMing').asstring+'&'+Det.fieldbyname('Article').asstring+') ';
                    end else
                    begin
                      Mas.Edit;
                      Mas.FieldByName('ZLNO').asstring:=' '+Det.fieldbyname('ZLBH').asstring
                        +'('+floattostr(Det.fieldbyname('Qty').value)+'&'+ Det.fieldbyname('XieMing').asstring+'&'+Det.fieldbyname('Article').asstring+')';
                    end;
                    Det.Next;
                  end;
              end else
              begin
                  for i:=1 to 4  do
                  begin
                      if not Mas.FieldByName('ZLNO').isnull then
                      begin
                        Mas.Edit;
                        Mas.FieldByName('ZLNO').asstring:=Mas.FieldByName('ZLNO').asstring+' '+Det.fieldbyname('ZLBH').asstring
                            +'('+floattostr(Det.fieldbyname('Qty').value)+'&'+ Det.fieldbyname('XieMing').asstring+'&'+Det.fieldbyname('Article').asstring+') ';
                      end else
                      begin
                        Mas.Edit;
                        Mas.FieldByName('ZLNO').asstring:=' '+Det.fieldbyname('ZLBH').asstring
                          +'('+floattostr(Det.fieldbyname('Qty').value)+'&'+ Det.fieldbyname('XieMing').asstring+'&'+Det.fieldbyname('Article').asstring+')';
                      end;
                      Det.Next;
                  end;
                  Mas.FieldByName('ZLNO').asstring:=Mas.FieldByName('ZLNO').asstring+'......';
                  Det.Last;
                  Mas.FieldByName('ZLNO').asstring:=Mas.FieldByName('ZLNO').asstring+Det.fieldbyname('ZLBH').Value+'('+Det.fieldbyname('Qty').asstring;
                  if not Det.fieldbyname('Article').isnull then
                  begin
                    Mas.FieldByName('ZLNO').asstring:=Mas.FieldByName('ZLNO').asstring+'&'+ Det.fieldbyname('XieMing').Value+'&'+Det.fieldbyname('Article').Value+')';
                  end;
                end;
          end;
      Mas.Next;
    end;
  end else
  begin
    if messagedlg('Print English or Chinese?',mtinformation,[mbYes,mbNo],0)=mrYes then
      QRDBtext14.Enabled:=false
    else
      QRDBtext1.Enabled:=false;
    while not Mas.Eof do
    begin
          if not Mas.fieldbyname('Memo').Isnull then
          begin
              Mas.Edit;
              // modify chinese
              Mas.FieldByName('ZWPM').asstring :=Mas.FieldByName('ZWPM').value+' //  '+Mas.fieldbyname('Memo').value;
              Mas.FieldByName('YWPM').asstring :=Mas.FieldByName('YWPM').value+' //  '+Mas.fieldbyname('Memo').value;

          end;
          Det.First;
          while not Det.Eof do
          begin
              if not Mas.FieldByName('ZLNO').isnull then
              begin
                  Mas.Edit;
                  Mas.FieldByName('ZLNO').asstring:=Mas.FieldByName('ZLNO').asstring+' '+Det.fieldbyname('ZLBH').AsString
                  +'('+floattostr(Det.fieldbyname('Qty').Value)+'&'+ Det.fieldbyname('XieMing').AsString+'&'+Det.fieldbyname('Article').AsString+') ';
              end else
              begin
                    Mas.Edit;
                    Mas.FieldByName('ZLNO').asstring:=' '+Det.fieldbyname('ZLBH').AsString
                      +'('+floattostr(Det.fieldbyname('Qty').Value)+'&'+ Det.fieldbyname('XieMing').AsString+'&'+Det.fieldbyname('Article').AsString+')';
              end;
              Det.Next;
          end;
          Mas.Next;
    end;
  end;
  //20240416
  with TmpQuery do
  begin
    active:=false;
    sql.Clear;
    sql.Add(' Select LNO From WF_PurchaseList Where CGNO='''+PurNoSize.CGMas.fieldbyname('CGNO').AsString+''' and flowflag=''Z'' ');
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

procedure TPurNoSizeTW_Print_VN.FormDestroy(Sender: TObject);
begin
  PurNoSizeTW_Print_VN:=nil;
end;

procedure TPurNoSizeTW_Print_VN.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

end.
