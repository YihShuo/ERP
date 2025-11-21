unit PurSample_Print_Tw_Approve1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls, DB, DBTables, QRPDFFilt, StdCtrls, IniFiles,
  ADODB;

type
  TPurSample_Print_Tw_Approve = class(TForm)
    QuickRep1: TQuickRep;
    PageFooterBand1: TQRBand;
    PageHeaderBand1: TQRBand;
    QPage1: TQRLabel;
    QRLabel38: TQRLabel;
    QRSysData2: TQRSysData;
    QRDBText8: TQRDBText;
    L6: TQRLabel;
    L7: TQRLabel;
    L1: TQRLabel;
    L2: TQRLabel;
    L20: TQRLabel;
    L21: TQRLabel;
    L22: TQRLabel;
    L24: TQRLabel;
    L12: TQRLabel;
    L11: TQRLabel;
    QRDBText15: TQRDBText;
    Label_PS: TQRLabel;
    L25: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel8: TQRLabel;
    QRDBText12: TQRDBText;
    QRLabel9: TQRLabel;
    DetailBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText7: TQRDBText;
    Mas: TQuery;
    MasCGNO: TStringField;
    MasCLBH: TStringField;
    MasXqQty: TCurrencyField;
    MasQty: TCurrencyField;
    MasUSPrice: TCurrencyField;
    MasVNPrice: TCurrencyField;
    MasMemo: TStringField;
    MasBJNO: TStringField;
    MasCFMDate: TDateTimeField;
    MasUSERDate: TDateTimeField;
    MasUSERID: TStringField;
    MasYN: TStringField;
    MasYWPM: TStringField;
    MasDWBH: TStringField;
    MasZLNO: TMemoField;
    MasMEMO_1: TStringField;
    MasREMARK: TStringField;
    MasPartAll: TStringField;
    MasFDAll: TMemoField;
    Det: TQuery;
    DataSource1: TDataSource;
    UpdateSQL1: TUpdateSQL;
    QRPDFFilter1: TQRPDFFilter;
    BWQY: TQuery;
    QRBand1: TQRBand;
    TmpQuery: TQuery;
    L19: TQRLabel;
    L8: TQRLabel;
    QRLabel14: TQRLabel;
    QRDBText20: TQRDBText;
    MasMaterial_ETA: TDateTimeField;
    QRLabel13: TQRLabel;
    QRImage4: TQRImage;
    QRLabel12: TQRLabel;
    QRImage3: TQRImage;
    QRLabel10: TQRLabel;
    QRImage2: TQRImage;
    QRLabel11: TQRLabel;
    QRImage1: TQRImage;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel5: TQRLabel;
    Query1: TQuery;
    QRLabel7: TQRLabel;
    QRDBText3: TQRDBText;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRDBText9: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText10: TQRDBText;
    QRLabel34: TQRLabel;
    QRDBText14: TQRDBText;
    QRLabel35: TQRLabel;
    QRDBText17: TQRDBText;
    UpdateSQL2: TUpdateSQL;
    Query1CGNO: TStringField;
    Query1CLBH: TStringField;
    Query1ywpm: TStringField;
    Query1dwbh: TStringField;
    Query1Qty: TCurrencyField;
    Query1XXCC: TStringField;
    Query1CATEGORY: TStringField;
    Query1Article_All: TStringField;
    Query1Shoename: TStringField;
    Query1SEASON: TStringField;
    Query1Stage: TStringField;
    Query1PartAll: TMemoField;
    Query1Material_ETA: TDateTimeField;
    Query1A4Comfirm: TStringField;
    Query1ColorWindow: TStringField;
    Query1DateA4Comfirmexpired: TDateTimeField;
    DataSource2: TDataSource;
    BWQYywsm: TStringField;
    Query1CLBH1: TStringField;
    QRShape1: TQRShape;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRShape2: TQRShape;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    QRShape13: TQRShape;
    QRShape14: TQRShape;
    QRShape15: TQRShape;
    QRShape16: TQRShape;
    QRShape17: TQRShape;
    QRShape18: TQRShape;
    QRShape19: TQRShape;
    QRShape20: TQRShape;
    QRShape21: TQRShape;
    QRShape22: TQRShape;
    QRShape23: TQRShape;
    QRShape24: TQRShape;
    QRShape25: TQRShape;
    QRShape26: TQRShape;
    QRShape27: TQRShape;
    QRShape28: TQRShape;
    QRShape29: TQRShape;
    QRShape30: TQRShape;
    QRShape31: TQRShape;
    QRShape32: TQRShape;
    QRShape33: TQRShape;
    QRShape34: TQRShape;
    Query2: TQuery;
    Query2cgno: TStringField;
    Query2clbh: TStringField;
    Query2ywpm: TStringField;
    QApprover: TADOQuery;
    QApproverCGNO: TStringField;
    QApproverUserD: TStringField;
    QApproverUserdate: TDateTimeField;
    QApproverCFMID2: TStringField;
    QApproverCFMDate2: TDateTimeField;
    QR_ApplicantDate: TQRDBText;
    QRDBText18: TQRDBText;
    QRDBText19: TQRDBText;
    QRDBText21: TQRDBText;
    Query3: TQuery;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    Query4: TQuery;
    Query1Remark: TStringField;
    Query1MatRemark: TMemoField;
    Query1MemoAll: TMemoField;
    Query1ZLBH: TStringField;
    QRShape53: TQRShape;
    QRShape54: TQRShape;
    QRShape56: TQRShape;
    QRLabel31: TQRLabel;
    QRLabel36: TQRLabel;
    QRLabel37: TQRLabel;
    QRShape58: TQRShape;
    QRShape59: TQRShape;
    QRShape60: TQRShape;
    QRDBText40: TQRDBText;
    QRDBText41: TQRDBText;
    QRDBText42: TQRDBText;
    Query1YPCCI: TStringField;
    Query1YPCCO: TStringField;
    Query1YPCCL: TStringField;
    Query1YPCCM: TStringField;
    Query1YPCCIL: TStringField;
    Query1YPCCOL: TStringField;
    Query1YPCCSS: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    ComName,AppDir:String;
    FileServerIP:String;
    IP,DBName,DBUser,DBPass,PW:String;
    procedure ReadIni();
    Function GetConverse_ColorMemo(var Memo:String;YWPM:String):boolean;
  public
    { Public declarations }
  end;

var
  PurSample_Print_Tw_Approve: TPurSample_Print_Tw_Approve;

implementation

uses PurSample1, main1, FunUnit;

{$R *.dfm}


procedure TPurSample_Print_Tw_Approve.ReadIni();
var MyIni :Tinifile;
    SuperVisorID,DCSuperVisorID,Director:string;
    ComFullName, Address, TelNumber, FaxNumber, PurchaseN731_ISO:string;
    sline_PW,tempstr_PW:string;
    ad_PW,i:integer;
begin
  ComName:='CONG TY TNHH TY XUAN';
  ComFullName:='Vinh Long Footwear Co.LTD';
  Address:='Hoa Phu Industrial Zone, Vinh Long Province, Vietnam';
  TelNumber:='TEL:+84-703-962052';
  FaxNumber:='FAX:+84-703-96251';
  PurchaseN731_ISO:='A-TTKT-WI007-01A';
  FileServerIP:=main.ServerIP;
  //
  AppDir:=ExtractFilePath(Application.ExeName);
  if FileExists(AppDir+'\ComName.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ComName.ini');
      ComName:=MyIni.ReadString('ERP','ComName','');
      ComFullName:=MyIni.ReadString('ERP','ComFullName','');
      FileServerIP:=MyIni.ReadString('ERP','FileServerIP',main.ServerIP);
      //
      Address:=MyIni.ReadString('ERP','Address','Hoa Phu Industrial Zone, Vinh Long Province, Vietnam');
      TelNumber:=MyIni.ReadString('ERP','TelNumber','TEL:+84-703-962052');
      FaxNumber:=MyIni.ReadString('ERP','FaxNumber','FAX:+84-703-96251');
      PurchaseN731_ISO:=MyIni.ReadString('ERP','PurchaseN731_ISO','A-TTKT-WI007-01A');
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
  {SuperVisorID:='DevManager.bmp';
  DCSuperVisorID:='DCSupervisor.bmp';
  Director:='DCDirector.bmp';
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
  if FileExists(AppDir+'\Images\'+DCSuperVisorID)=false then
      CopyFile(Pchar('\\'+FileServerIP+'\liy_erp\Images\'+DCSuperVisorID),Pchar(AppDir+'Images\'+DCSuperVisorID),false);
  if FileExists(AppDir+'\Images\'+Director)=false then
      CopyFile(Pchar('\\'+FileServerIP+'\liy_erp\Images\'+Director),Pchar(AppDir+'Images\'+Director),false);
  //
  if FileExists(AppDir+'\Images\'+main.Edit1.Text+'.bmp') then
  begin
    QRImage1.Picture.LoadFromFile(AppDir+'\Images\'+main.Edit1.Text+'.bmp');
  end;
  if FileExists(AppDir+'\Images\'+SuperVisorID) then
  begin
    QRImage2.Picture.LoadFromFile(AppDir+'\Images\'+SuperVisorID);
  end;
  if FileExists(AppDir+'\Images\'+DCSuperVisorID) then
  begin
    QRImage3.Picture.LoadFromFile(AppDir+'\Images\'+DCSuperVisorID);
  end;
  if FileExists(AppDir+'\Images\'+Director) then
  begin
    QRImage4.Picture.LoadFromFile(AppDir+'\Images\'+Director);
  end;
  //
  L1.Caption:=ComFullName;
  //L11.Caption:=Address;
  //L12.Caption:=TelNumber+' '+FaxNumber;    }
  L8.Caption:=PurchaseN731_ISO;
end;

Function TPurSample_Print_Tw_Approve.GetConverse_ColorMemo(var Memo:String;YWPM:String):boolean;
const Color_Name:array [0..15,0..2] of String=(
                 ('Converse Yellow','0100421','035-66-39'),
                 ('Vintage White','1200317','028-89-01'),
                 ('Converse Green','0906890','069-42-27'),
                 ('Light Field Surplus','0902773','047-53-05'),
                 ('Converse Utility','CONV-0067','049-38-07'),
                 ('Nomad Khaki','0701202','031-57-10'),
                 ('Pale Putty','1102437','014-77-01'),
                 ('Converse Navy','CONV-0033','121-26-10'),
                 ('Obsidian','45B','124-21-06'),
                 ('Converse Blue','0501109','121-27-30'),
                 ('Rapid Teal','4MS','095-51-27'),
                 ('Saddle','0401720','010-43-09'),
                 ('Deep Bordeaux','0306439','003-22-17'),
                 ('Converse Red','CONV-0034','009-39-35'),
                 ('Converse Orange','CONV-0066','020-53-38'),
                 ('Black','117-15-00','Black')
                );
var   i:integer;
      ColorStr:string;
begin
  for i:=0 to High(Color_Name) do
  begin
   if Pos(Uppercase(Color_Name[i][2]),UpperCase(YWPM))<>0 then
   begin
     ColorStr:='('+Color_Name[i][2]+'='+Color_Name[i][1]+')';
     if Pos(ColorStr,Memo)=0 then
     Memo:=Memo+ColorStr+#13#10;
   end;
  end;
  Result:=true;
end;

procedure TPurSample_Print_Tw_Approve.FormCreate(Sender: TObject);
var i,j:integer;
    PartALl,FD_ALL,MatRemark,MemoAll:string;
    //20151012 Converse 特定顏色指定
    Converse_Memo:String;
    DCSuperVisorID,Director:string;
begin
  Query1.Active:=true;
  Query2.Active:=true;
  Det.Active:=true;
  //
  with TmpQuery do
  begin
    active:=false;
    SQL.Clear;
    SQL.Add('select clzl.cqdh from clzl ');
    SQL.Add('where cldh = (select top 1 clbh from cgzls where cgno='''+PurSample.CGMas.fieldbyname('CGNO').AsString+''')');
    active:=true;
  end;
  if (TmpQuery.FieldByName('cqdh').AsString='TW') and ((PurSample.CGMas.FieldByName('ZSBH').AsString='A108') or (PurSample.CGMas.FieldByName('ZSBH').AsString='M027')) then
    QRLabel30.Caption:='Vinh Long Footwear CO. LTD'
  else if (TmpQuery.FieldByName('cqdh').AsString='TW') then
    QRLabel30.Caption:='CHEER ACCESS';

  {if length(Det.FieldByName('MEMO').AsString) <> 11 then
    QRDBText19.Enabled := false;  }
  //20151012 增加顏色判斷
  while not Mas.Eof   do
  begin
   //Converse判斷材料有沒有WHITE字
   GetConverse_ColorMemo(Converse_Memo,Query2.FieldByName('YWPM').asstring);
   Mas.Next;
  end;
  //Converse 顏色備忘
  if ((main.Edit2.text='VA12') or (main.Edit2.text='CDC')) then
    if Converse_Memo<>'' then
     L20.Caption:='MatName'+trim(Converse_Memo); //有白色材料則欄位加上註解
  //
  Query1.First;
 { if messagedlg('Just for Print not for Mail?',mtinformation,[mbYes,mbNo],0)=mrYes then
  begin
    L1.Caption:='';
    L2.Caption:='';
    L6.Caption:='';
    L7.Caption:='';
    L11.Caption:='';
    L12.Caption:='';
    L19.Caption:='';
    PageHeaderBand1.Frame.DrawBottom:= true;
  end else
  begin
      ReadIni();  //2019/10/10
      PageHeaderBand1.Frame.DrawBottom:= true;
  end;   }
  ReadIni();  //2019/10/10
  PageHeaderBand1.Frame.DrawBottom:= true;
  if  PurSample.CGMas.FieldByName('MEMO').AsString =''  then
      Label_PS.Caption:='' ;
  //20150312使用部位
  BWQY.Active:=true;
  Det.First;
  while not Query1.Eof do
  begin
    MatRemark:='';
    MemoAll:='';
    if Det.recordcount>0 then
    begin
        //部位資訊
        BWQY.First;
        PartALl:='';
        for i:=0 to BWQY.RecordCount-1 do
        begin
          PartALl:=PartALl+BWQY.FieldByName('ywsm').AsString+',';
          BWQY.Next;
        end;
        if length(PartALl)>0 then PartALl:=Copy(PartALl,1,length(PartALl)-1);
        Query1.Edit;
        Query1.FieldByName('PartAll').asstring:=PartALl;
    end;

    if ((PartALl='STROBEL SOCK')  and (copy(Query1.FieldByName('ZLBH').asstring,1,4)<>'LAIT')) then
       Query1.FieldByName('XXCC').asstring:= Query1.FieldByName('YPCCSS').AsString
    else if ((PartALl='MIDSOLE') and (copy(Query1.FieldByName('ZLBH').asstring,1,4)<>'LAIT')) then
       Query1.FieldByName('XXCC').asstring:= Query1.FieldByName('YPCCM').AsString
    else if ((PartALl='OUTSOLE FILLER') and (copy(Query1.FieldByName('ZLBH').asstring,1,4)<>'LAIT'))then
       Query1.FieldByName('XXCC').asstring:= Query1.FieldByName('YPCCOL').AsString
    else if ((PartALl='INSOLE FILLER') and (copy(Query1.FieldByName('ZLBH').asstring,1,4)<>'LAIT'))then
       Query1.FieldByName('XXCC').asstring:= Query1.FieldByName('YPCCIL').AsString
    else if ((PartALl='INSOLE') and (copy(Query1.FieldByName('ZLBH').asstring,1,4)<>'LAIT'))then
       Query1.FieldByName('XXCC').asstring:= Query1.FieldByName('YPCCI').AsString
    else if ((PartALl='OUTSOLE') and (copy(Query1.FieldByName('ZLBH').asstring,1,4)<>'LAIT')) then
       Query1.FieldByName('XXCC').asstring:= Query1.FieldByName('YPCCO').AsString
    else
       Query1.FieldByName('XXCC').asstring:= Query1.FieldByName('XXCC').asstring;
    // MatRemark
    with TmpQuery do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('select  zybb,bz from clbzzl where CLDH='''+Query1.FieldByName('CLBH').asstring+''' and ZYBB=''E'' order by zybb,xh');
      Active:=true;
      //
      for i:=0 to TmpQuery.RecordCount-1 do
      begin
        MatRemark:=MatRemark+TmpQuery.FieldByName('bz').AsString+',';
      end;
      Active:=false;
    end;
    if length(MatRemark)>0 then MatRemark:=Copy(MatRemark,1,length(MatRemark)-1);
    Query1.Edit;
    Query1.FieldByName('MatRemark').asstring:=MatRemark;
    //MemoAll
    Query4.Active:=true;
    Query4.First;
    while  not Query4.Eof do
    begin
       MemoAll:=MemoAll+Query4.FieldByName('ypdh').AsString+'_'+Query4.FieldByName('Relation').AsString+':'+Query4.FieldByName('ywsm').AsString+':'+Query4.FieldByName('YWPM').AsString+''+Chr(10)+'';
       Query4.Next;
    end;
    if length(MemoAll)>0 then MemoAll:=Copy(MemoAll,1,length(MemoAll)-1);
    Query1.Edit;
    Query1.FieldByName('MemoAll').asstring:=MemoAll;
    //
    Query1.Next;
  end;
  //22.01.2025
  if (main.Edit2.Text = 'VC1') or (main.Edit2.Text = 'VC2') then
  begin
      DCSuperVisorID:='51140.bmp';
      Director:='51140.bmp';
  end else
  begin
      DCSuperVisorID:='DCSupervisor.bmp';
      Director:='DCDirector.bmp';
  end;
  //===
  if FileExists(AppDir+'\Images\'+DCSuperVisorID)=false then
      CopyFile(Pchar('\\'+FileServerIP+'\liy_erp\Images\'+DCSuperVisorID),Pchar(AppDir+'Images\'+DCSuperVisorID),false);
  if FileExists(AppDir+'\Images\'+Director)=false then
      CopyFile(Pchar('\\'+FileServerIP+'\liy_erp\Images\'+Director),Pchar(AppDir+'Images\'+Director),false);
  // Approve date
  QApprover.ConnectionString := 'Provider=SQLOLEDB.1;Password='+PW+';Persist Security Info=True;User ID='+DBUser+';Initial Catalog=' + DBName + ';Data Source=' + IP;
  with QApprover do
  begin
    Active := false;
    SQL.Clear;
    //
    {SQL.Add('  Select CGNO,substring(UserID,4,len(UserID)) as UserD,Userdate,substring(CFMID2,4,LEN(CFMID2)) as CFMID2,CFMDate2  ');
    SQL.Add('  From [UOFWEB].UOF.dbo.LYN_PurchaseList_Dev  ');
    SQL.Add('  Where flowflag=''Z'' and CGNo='''+PurSample.CGMas.FieldByName('CGNO').AsString+''' ');  }
    SQL.Add('  select CGNO,UserID as UserD ,UserDate,ManagerID as CFMID2,ManagerDate as CFMDate2 from CGZL where CGNo='''+PurSample.CGMas.FieldByName('CGNO').AsString+''' ');
    //funcObj.WriteErrorLog(sql.Text);
    Active := true;
    if RecordCount>0 then
    begin
      if(not DirectoryExists(AppDir+'Images\'))  then ForceDirectories(AppDir+'Images\');
      CopyFile(Pchar('\\'+main.ServerIP+'\liy_erp\Images\'+FieldByName('UserD').AsString+'.bmp'),Pchar(AppDir+'Images\'+FieldByName('UserD').AsString+'.bmp'),false);
      if FileExists(AppDir+'Images\'+FieldByName('UserD').AsString+'.bmp') then
      begin
        QRImage1.Picture.LoadFromFile(AppDir+'Images\'+FieldByName('UserD').AsString+'.bmp');
      end;
      //
      CopyFile(Pchar('\\'+main.ServerIP+'\liy_erp\Images\'+FieldByName('CFMID2').AsString+'.bmp'),Pchar(AppDir+'Images\'+FieldByName('CFMID2').AsString+'.bmp'),false);
      if FileExists(AppDir+'Images\'+FieldByName('CFMID2').AsString+'.bmp') then
      begin
        QRImage2.Picture.LoadFromFile(AppDir+'Images\'+FieldByName('CFMID2').AsString+'.bmp');
      end;
      if FileExists(AppDir+'\Images\'+DCSuperVisorID) then
      begin
        QRImage3.Picture.LoadFromFile(AppDir+'\Images\'+DCSuperVisorID);
      end;
      if FileExists(AppDir+'\Images\'+Director) then
      begin
        QRImage4.Picture.LoadFromFile(AppDir+'\Images\'+Director);
      end;
      //
  end;
    //Active:=false;
  end;
end;

procedure TPurSample_Print_Tw_Approve.FormDestroy(Sender: TObject);
begin
  PurSample_Print_Tw_Approve:=nil;
end;

procedure TPurSample_Print_Tw_Approve.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

end.
