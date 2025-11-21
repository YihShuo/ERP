unit main1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask,
  Vcl.DBCtrls, Data.DB, Data.Win.ADODB, Vcl.Imaging.jpeg, DelphiZXIngQRCode,
  Vcl.Imaging.pngimage, Vcl.Imaging.GIFImg, iniFiles,ShellAPI;

type
  Tmainform = class(TForm)
    ADOConn: TADOConnection;
    ADOQuery1: TADOQuery;
    DS1: TDataSource;
    Panel1: TPanel;
    ImageScan: TImage;
    imgClose00: TImage;
    Image1: TImage;
    Label4: TLabel;
    TempQry: TADOQuery;
    Panel8: TPanel;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label12: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label2: TLabel;
    DBMemo1: TDBMemo;
    DBMemo2: TDBMemo;
    DBMemo3: TDBMemo;
    DBMemo4: TDBMemo;
    DBEdit1: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit7: TDBEdit;
    Panel2: TPanel;
    Label3: TLabel;
    Panel3: TPanel;
    QRImage: TImage;
    QREdit: TEdit;
    Panel4: TPanel;
    ArticleLabel: TLabel;
    Label5: TLabel;
    Panel5: TPanel;
    ShoeImage: TImage;
    Panel7: TPanel;
    Image3: TImage;
    QCLabel: TLabel;
    Panel6: TPanel;
    RSLLabel: TLabel;
    Image2: TImage;
    Bakimage: TImage;
    Panel9: TPanel;
    Image4: TImage;
    Label6: TLabel;
    Panel10: TPanel;
    Image5: TImage;
    B2BImg: TImage;
    procedure imgClose00Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Label4Click(Sender: TObject);
    procedure RSLLabelClick(Sender: TObject);
    procedure QCLabelClick(Sender: TObject);
    procedure Image4Click(Sender: TObject);
    procedure B2BImgClick(Sender: TObject);
    procedure QREditKeyPress(Sender: TObject; var Key: Char);
  private
    AppDir:String;
    ShoePicPath:String;
    QRCodeBitmap:TBitmap;
    //
    ERPDBIP,ERPDBName,ERPDBUser,ERPDBPass:String;
    { Private declarations }
    procedure ReadIni();
    procedure openRSLFile();
    procedure openQCLFile();
    procedure ShowInformation(barcode:String);
    procedure UpLoadQRImg(QRdata:string);

  public
    QrCodeRes:String;
    { Public declarations }
    procedure ShowQrcodeDate(Codestr:string);
    procedure WriteErrorLog(WriteStr:string);
  end;

var
  mainform: Tmainform;

implementation
  uses qcameraq1, FileTransClient1, OrderUnit1;
{$R *.dfm}

//記錄事件錯誤Log檔
procedure Tmainform.WriteErrorLog(WriteStr:string);
var  TF:Textfile;
    strFileName:string;
    tempstr:string;
begin
    tempstr:=FormatDatetime('YYYYMMDD',now());
    strFileName:=AppDir+'Log\'+tempstr+'.log';

    WriteStr:=trim(WriteStr);
    AssignFile(TF, strFileName);
        if FileExists(strFileName) then
        begin
        Append(TF);
        end else begin
        ReWrite(TF);
        end;
    Writeln(TF, WriteStr );
    CloseFile(TF);
end;
//
procedure Tmainform.ReadIni();
var MyIni :Tinifile;
    AppDir:string;
    //
    i,ad_LT:integer;
    sline_LT,tempstr_LT:string;
begin

  ShoePicPath := '\\192.168.23.11\A_DataCenter\CDC\Sales\BOM';
  AppDir:=ExtractFilePath(Application.ExeName);
  if FileExists(AppDir+'\ComName.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ComName.ini');
      ShoePicPath:=MyIni.ReadString('ShoePic','Bom_N31_shoePic','');
      //
      //
      ERPDBIP:=MyIni.ReadString('ERPServer','IP','192.168.23.9');
      ERPDBName:=MyIni.ReadString('ERPServer','Database','LIY_ERP');
      ERPDBUser:=MyIni.ReadString('ERPServer','User','tyxuan');
      ERPDBPass:=MyIni.ReadString('ERPServer','Pass','jack');
      //
      // 密碼加密測試
      sline_LT:='';
      ad_LT:=strtoint(copy(ERPDBPass,0,1)); //取得解密字元
      for i:=2 to (length(ERPDBPass)) do //解密迴圈
      begin
        tempstr_LT:=copy(ERPDBPass,i,1);
        sline_LT:=sline_LT+chr(ord(tempstr_LT[1])-ad_LT);
      end;
      ERPDBPass:=sline_LT;
      //
      ADOConn.Connected:=false;
      ADOConn.ConnectionString:='Provider=SQLOLEDB.1;Password='+ERPDBPass+';Persist Security Info=True;User ID='+ERPDBUser+';Initial Catalog='+ERPDBName+';Data Source='+ERPDBIP+';Use Procedure for Prepare=1;Auto Translate=True;Packet Size=4096;Use Encryption for Data=False;Tag with column collation when possible=False';

    finally
      MyIni.Free;
    end;
  end;
end;
procedure Tmainform.RSLLabelClick(Sender: TObject);
begin
  openRSLFile();
end;

procedure Tmainform.openRSLFile();
var Path:PChar;
begin
  Path := PChar('\\192.168.23.9\rsl\'+RSLLabel.Caption);
  ShellExecute(Handle, nil, Path ,  nil, nil, SW_SHOWNORMAL);
end;
procedure Tmainform.QCLabelClick(Sender: TObject);
begin
   openQCLFile();
end;

procedure Tmainform.QREditKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
  begin
    ShowQrcodeDate(QREdit.Text);
    QREdit.Text:='';
  end;
end;

//
procedure Tmainform.openQCLFile();
var Path:PChar;
begin
  Path := PChar('\\192.168.23.9\Lab\'+QCLabel.Caption);
  ShellExecute(Handle, nil, Path ,  nil, nil, SW_SHOWNORMAL);
end;

procedure Tmainform.B2BImgClick(Sender: TObject);
begin
  ShellExecute(Handle, nil, PChar('http://www.tyxuan.com.vn/qr/pages/auth/login.php') ,  nil, nil, SW_SHOWNORMAL);
end;

procedure Tmainform.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=CaFree;
end;

procedure Tmainform.FormCreate(Sender: TObject);
begin
  mainform.DoubleBuffered:=true;
  AppDir:=ExtractFilePath(Application.ExeName);
  ReadIni();
  //
  with (bakImage.Picture.Graphic as TGifImage) do
  begin
    AnimationSpeed := 100;  // percent of normal speed, range 0 through 1000
    Animate := True;
  end;
  with (ImageScan.Picture.Graphic as TGifImage) do
  begin
    AnimationSpeed := 100;  // percent of normal speed, range 0 through 1000
    Animate := True;
  end;
end;

procedure Tmainform.Image4Click(Sender: TObject);
begin
  if OrderUnit=nil then
     OrderUnit:=TOrderUnit.Create(self);
  OrderUnit.Show;
end;

procedure Tmainform.imgClose00Click(Sender: TObject);
begin
  if QrcodeForm<>nil  then
  begin
    QrcodeForm.fVideoImage.VideoStop;
    QrcodeForm.Close;
  end;

  mainform.Close;
end;

procedure Tmainform.Label4Click(Sender: TObject);
begin
  if QrcodeForm=nil  then
    QrcodeForm:=TQrcodeForm.create(self);
  QrcodeForm.show;
end;

procedure Tmainform.ShowQrcodeDate(Codestr:string);
begin
  QrCodeRes:=Codestr;
  QREdit.text:=QrCodeRes;
  //顯示資料
  ShowInformation(Codestr);
  //產生圖檔
  QRCodeBitmap:=TBitmap.Create;
  UpLoadQRImg(Codestr);
  QRImage.Picture.Assign(QRCodeBitmap);
  QRCodeBitmap.Free;
end;
//顯示資料
procedure Tmainform.ShowInformation(barcode:String);
var shoePic:String;
begin
  //掃描
  with ADOQuery1 do
  begin
    active:=false;
    SQL.Clear;
    SQL.Add('select KCRKScan_RFSS.SCNO,KCRKScan_RFSS.CLBH,CLZL.YWPM,ZSZL.ZSYWJC,KCRKScan_RFSS.Memo_RY,KCRKScan_RFSS.Memo_Article  ');
    SQL.Add(',KCRKScan_RFSS.Qty,CONVERT(varchar, KCRKScan_RFSS.Pack,101)+'' of '' +CONVERT(varchar,TotalPack,101) as PACK1,KCRKScan_RFSS.Pack  ');
    SQL.Add(',KCRKScan_RF.Memo+'' - ''+KCRKScan_RF.DOCNO as Memo,CONVERT(varchar,isnull(KCRKScan_RFSS.RemQty,KCRKScan_RFSS.Qty),101)+'' ''+CLZL.DWBH DWBH ');
    SQL.Add(',KCRKScan_RFS.CGNO, KCRKScan_RFSS.barcode as QRCode, CONVERT(varchar,month(getdate())) as FIFO, KCRKScan_RFSS.LotNO ');
    SQL.Add('from KCRKScan_RFSS    ');
    SQL.Add('left join KCRKScan_RF on KCRKScan_RFSS.SCNO = KCRKScan_RF.SCNO    ');
    SQL.Add('left join KCRKScan_RFS on KCRKScan_RFSS.SCNO = KCRKScan_RFS.SCNO and KCRKScan_RFSS.CLBH = KCRKScan_RFS.CLBH    ');
    SQL.Add('left join (select SCNO,CLBH,count (Pack) as TotalPack   ');
    SQL.Add('  			    from KCRKScan_RFSS   ');
    SQL.Add('  			    group by SCNO,CLBH) KCRKScan  on KCRKScan.SCNO = KCRKScan_RFS.SCNO and KCRKScan.CLBH = KCRKScan_RFS.CLBH   ');
    SQL.Add('left join CGZL on KCRKScan_RFS.CGNO = CGZL.CGNO    ');
    SQL.Add('left join ZSZL on CGZL.ZSBH = ZSZL.ZSDH    ');
    SQL.Add('left join CLZL on KCRKScan_RFSS.CLBH = CLZL.CLDH    ');
    SQL.Add('Where KCRKScan_RFSS.barcode='''+barcode+''' ');
    //WriteErrorLog(sql.Text);
    active:=true;
  end;
  //鞋圖
  with TempQry do
  begin
     Active:=false;
     SQL.Clear;
     SQL.Add('select distinct XXZL.ARTICLE,XXZL.IMGName');
     SQL.Add('from KCRKScan_RFSS');
     SQL.Add('left join KCRKScan_RFS on KCRKScan_RFSS.SCNO = KCRKScan_RFS.SCNO and KCRKScan_RFSS.CLBH = KCRKScan_RFS.CLBH   ');
     SQL.Add('left join CGZLSS on CGZLSS.CGNO=KCRKScan_RFS.CGNO and CGZLSS.CLBH=KCRKScan_RFS.CLBH');
     SQL.Add('left join DDZL  on DDZL.DDBH=CGZLSS.ZLBH');
     SQL.Add('left join XXZL on XXZL.XieXIng=DDZL.XieXIng and XXZL.SheHao=DDZL.SheHao');
     SQL.Add('Where KCRKScan_RFSS.barcode='''+barcode+''' ');
     Active:=true;
     if RecordCount>0  then
     begin
       ArticleLabel.Caption:=FieldByName('ARTICLE').AsString;
       shoePic:=StringReplace(FieldByName('IMGName').Asstring,'H:',ShoePicPath, [rfReplaceAll, rfIgnoreCase]);
       if FileExists(shoePic)=true then
       begin
         ShoeImage.Picture.LoadFromFile(shoePic);
      end;
     end;
     Active:=false;
  end;
  //RSL檔案
  with  TempQry do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Select top 1 PDFilePage,PDDate');
    SQL.Add('from RSTList');
    SQL.Add('where CLDH='''+ADOQuery1.FieldByName('CLBH').AsString+'''');
    SQL.Add('and GSBH=''VA12''');
    SQL.Add('order by PDDate desc');
    Active:=true;
     if RecordCount>0  then
     begin
       RSLLabel.Caption:=FieldByName('PDFilePage').AsString;
     end;
     Active:=false;
  end;
  //QC 檔案測試Lab沒有上傳關聯資料
  with TempQry do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Select top 1 File_Name_Lab');
    SQL.Add('from MaterialQCcheck ');
    SQL.Add('where GSBH=''VA12'' and  CLBH='''+ADOQuery1.FieldByName('CLBH').AsString+''' ');
    SQL.Add('order by Lab_finishDate desc');
    //WriteErrorLog(SQL.Text);
    Active:=true;
     if RecordCount>0  then
     begin
       QCLabel.Caption:=FieldByName('File_Name_Lab').AsString;
     end;
     Active:=false;
  end;
end;

procedure Tmainform.UpLoadQRImg(QRdata:string);
var
  QRCode: TDelphiZXingQRCode;
  Row,Column: Integer;
begin
  QRCode := TDelphiZXingQRCode.Create;
  try
    QRCode.Data:=QRdata;
    QRCode.Encoding := TQRCodeEncoding(1);
    QRCode.QuietZone := StrToIntDef('1',4);
    QRCodeBitmap.Width:=QRCode.Rows;
    QRCodeBitmap.Height:=QRCode.Columns;
    for Row := 0 to QRCode.Rows - 1 do
    begin
      for Column := 0 to QRCode.Columns - 1 do
      begin
        if (QRCode.IsBlack[Row, Column]) then
        begin
          QRCodeBitmap.Canvas.Pixels[Column, Row] := clBlack;
        end else
        begin
          QRCodeBitmap.Canvas.Pixels[Column, Row] := clWhite;
        end;
      end;
    end;
  finally
    QRCode.Free;
  end;
end;

end.
