unit ScanQREntry1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBTables, DB, ScktComp, Menus, GridsEh, DBGridEh, ExtCtrls,pngimage,
  StdCtrls, Mask, DBCtrls, Buttons, ComCtrls, comobj, jpeg, Spin, DelphiZXIngQRCode,
  QRCtrls, QuickRpt,ShellApi, Printers, RpCon, RpConDS, RpConBDE, RpDefine, RpRave,
  GIFImage;

type
  TScanQREntry = class(TForm)
    tmpQry: TQuery;
    Panel3: TPanel;
    Query1: TQuery;
    Query1SCNO: TStringField;
    Query1CLBH: TStringField;
    Query1YWPM: TStringField;
    Query1ZSYWJC: TStringField;
    Query1Memo_RY: TStringField;
    Query1Memo_Article: TStringField;
    Query1Qty: TFloatField;
    Query1PACK1: TStringField;
    Query1Pack: TIntegerField;
    Query1Memo: TStringField;
    Query1DWBH: TStringField;
    Query1CGNO: TStringField;
    Query1QRCode: TStringField;
    DataSource1: TDataSource;
    Query1FIFO: TStringField;
    Query1LotNO: TStringField;
    Image1: TImage;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label12: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    DBMemo1: TDBMemo;
    DBMemo2: TDBMemo;
    DBMemo3: TDBMemo;
    DBMemo4: TDBMemo;
    DBEdit1: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit7: TDBEdit;
    Image2: TImage;
    imgSave00: TImage;
    Report: TImage;
    imgClose00: TImage;
    Panel1: TPanel;
    QRImage1: TImage;
    Track: TImage;
    Query1IDCheck: TStringField;
    LLBarCodeEdit: TEdit;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ReportClick(Sender: TObject);
    procedure edtLineKeyPress(Sender: TObject; var Key: Char);
    procedure imgClose00Click(Sender: TObject);
    procedure imgSave00Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure TrackClick(Sender: TObject);
  private
    QRCodeBitmap:TBitmap;
    { Private declarations }
  public
    { Public declarations }
    procedure UpLoadQRImg(QRdata:string);
  end;

var
  ScanQREntry: TScanQREntry;

implementation

uses FunUnit, ScanQR1, main1, PrintLabel_LL1, ScanMaterialQty1;

{$R *.dfm}

procedure TScanQREntry.FormDestroy(Sender: TObject);
begin
  ScanQREntry:=nil;
end;

procedure TScanQREntry.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=Cafree;
end;

procedure TScanQREntry.ReportClick(Sender: TObject);
begin
  LLBarCodeEdit.Visible:=true;
  LLBarCodeEdit.SetFocus;
end;

procedure TScanQREntry.edtLineKeyPress(Sender: TObject; var Key: Char);
var barcode: string;
begin
  if (key='.') or (key=#13) then
  begin
    QRCodeBitmap.Free;
    barcode:=LLBarCodeEdit.Text;
    with tmpQry do
    begin
      Active:=false;
      SQL.Clear;
      sql.Add('Update KCRKScan_RFSS set RemQty=(Case when RemQty is null then Qty else RemQty end), CFMID='''+main.Edit1.Text+''', CFMDATE=getdate() ');
      SQL.Add('Where KCRKScan_RFSS.barcode='''+barcode+''' and CFMDATE is null ');
      ExecSQL;
    end;
    with Query1 do
    begin
      active:=false;
      SQL.Clear;
      SQL.Add('select KCRKScan_RFSS.SCNO,KCRKScan_RFSS.CLBH,CLZL.YWPM,ZSZL.ZSYWJC,KCRKScan_RFSS.Memo_RY,KCRKScan_RFSS.Memo_Article  ');
      SQL.Add(',KCRKScan_RFSS.Qty,CONVERT(varchar, KCRKScan_RFSS.Pack,101)+'' of '' +CONVERT(varchar,TotalPack,101) as PACK1,KCRKScan_RFSS.Pack  ');
      SQL.Add(',KCRKScan_RF.Memo+'' - ''+KCRKScan_RF.DOCNO as Memo,CONVERT(varchar,isnull(KCRKScan_RFSS.RemQty,KCRKScan_RFSS.Qty),101)+'' ''+CLZL.DWBH DWBH ');
      SQL.Add(',KCRKScan_RFS.CGNO, KCRKScan_RFSS.barcode as QRCode, CONVERT(varchar,month(getdate())) as FIFO, KCRKScan_RFSS.LotNO,KCRKScan_RFS.IDCheck ');
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
      //funcobj.WriteErrorLog(sql.Text);
      active:=true;
    end;
    QRCodeBitmap:=TBitmap.Create;
    UpLoadQRImg(Query1.fieldbyname('QRCode').AsString);
    QRImage1.Picture.Assign(QRCodeBitmap);
    LLBarCodeEdit.Text:='';
    key:=#13;
    imgSave00.Visible:=true;
  end;
end;

procedure TScanQREntry.imgClose00Click(Sender: TObject);
begin
  if MessageDlg('Ban co muon dong khong?',mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    Close;
  end;
end;

procedure TScanQREntry.UpLoadQRImg(QRdata:string);
var
  QRCode: TDelphiZXingQRCode;
  Row,Column: Integer;
begin
  QRCode := TDelphiZXingQRCode.Create;
  try
    QRCode.Data:=QRdata;
    QRCode.Encoding := TQRCodeEncoding(3);
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

procedure TScanQREntry.imgSave00Click(Sender: TObject);
var writeFile:textfile;
    LabelInfo:string;
begin
  //PrintLabel_LL:=TPrintLabel_LL.Create(nil);
  //PrintLabel_LL.quickrep1.prepare;
  //PrintLabel_LL.quickrep1.preview;
  //PrintLabel_LL.Free;
    //
  if Fileexists(extractfilepath(application.ExeName)+'\label_N8A.txt') then
  begin
    assignfile(writeFile,ExtractFilePath(Application.ExeName)+'label_N8A.txt');
    rewrite(writeFile);
    Query1.first;
    while not Query1.eof do
    begin
      LabelInfo:='';
      LabelInfo:=LabelInfo+trim(Query1.fieldByName('QRCode').AsString)+'|';
      LabelInfo:=LabelInfo+trim(Query1.fieldByName('CLBH').AsString)+'|';
      LabelInfo:=LabelInfo+trim(Query1.fieldByName('YWPM').AsString)+'|';
      LabelInfo:=LabelInfo+trim(Query1.fieldByName('ZSYWJC').AsString)+'|';
      LabelInfo:=LabelInfo+trim(Query1.fieldByName('CGNO').AsString)+'|';
      LabelInfo:=LabelInfo+trim(Query1.fieldByName('Memo_RY').AsString)+'|';
      LabelInfo:=LabelInfo+trim(Query1.fieldByName('Memo_Article').AsString)+'|';
      LabelInfo:=LabelInfo+trim(Query1.fieldByName('DWBH').AsString)+'|';
      LabelInfo:=LabelInfo+trim(Query1.fieldByName('PACK1').AsString)+'|';
      LabelInfo:=LabelInfo+trim(Query1.fieldByName('Memo').AsString)+'|';
      LabelInfo:=LabelInfo+trim(Query1.fieldByName('FIFO').AsString)+'|';
      LabelInfo:=LabelInfo+trim(Query1.fieldByName('LotNO').AsString)+'|';
      LabelInfo:=LabelInfo+trim(Query1.fieldByName('IDCheck').AsString)+'|';
      append(writeFile);
      writeln(writeFile, LabelInfo);
        //
      Query1.next;
    end;
    closefile(writeFile);
  end;
  //
  if fileexists(extractfilepath(application.ExeName)+'Label_N8A.btw') then
  begin
    ShellExecute(Handle,'open',PChar(ExtractFilePath(Application.ExeName)+'Label_N8A.btw'),nil,pchar(ExtractFilePath(Application.ExeName)),SW_SHOW);
    //close;
  end
  else  begin
    Showmessage('Pls setup the program first. Abort');
  end;
  //
end;

procedure TScanQREntry.FormCreate(Sender: TObject);
var imout, imscan, imprint, imtrack: TPNGObject;
    GIF: TGIFimage;
begin
  imscan := TPNGObject.Create;
  imscan.LoadFromFile('btnscan.png');
  Report.Picture.Assign(imscan);

  imprint := TPNGObject.Create;
  imprint.LoadFromFile('btnprint.png');
  imgSave00.Picture.Assign(imprint);

  imout := TPNGObject.Create;
  imout.LoadFromFile('btnlogout.png');
  imgClose00.Picture.Assign(imout);

  imtrack := TPNGObject.Create;
  imtrack.LoadFromFile('btntrack.png');
  Track.Picture.Assign(imtrack);

  GIF := TGIFImage.Create;
  GIF.LoadFromFile('scan.gif');
  QRImage1.Picture.Assign(GIF);

  imgClose00.Width:=Round(Screen.Width/28);
  imgClose00.Height:=Round(Screen.Width/28);
  imgClose00.Left:=Round(Screen.Width-imgClose00.Width);
  imgClose00.Top:=Round(Screen.DesktopTop+5);

  Track.Width:=imgClose00.Width;
  Track.Height:=imgClose00.Height;
  Track.Left:=imgClose00.Left-Track.Width-imgClose00.Width;
  Track.Top:=imgClose00.Top;

  GroupBox2.Left:=Round((Screen.Width-GroupBox2.Width)/2);
  GroupBox2.Top:=Round((Screen.Height-Panel3.Height-GroupBox2.Height)/2);

  Panel1.Left:=Round((GroupBox2.Left-Panel1.Width)/2);
  Panel1.Top:=Round((Screen.Height-Panel3.Height-Panel1.Height)/2);

  imscan.free;
  imprint.free;
  imout.free;
  imtrack.free;
  GIF.free;
end;

procedure TScanQREntry.TrackClick(Sender: TObject);
begin
  ScanMaterialQty:=TScanMaterialQty.Create(self);
  ScanMaterialQty.Show;
end;

end.
