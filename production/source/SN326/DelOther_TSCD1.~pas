unit DelOther_TSCD1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, GridsEh, DBGridEh, DB, DBTables,
  ComCtrls, DelphiZXingQRCode, Menus, Comobj, ShellAPI;

type
  TDelOther_TSCD = class(TForm)
    KCLLDS: TDataSource;
    KCLLSQry: TQuery;
    KCLLSQryLLNO: TStringField;
    KCLLSQryDepID: TStringField;
    KCLLSQryDepName: TStringField;
    KCLLSQryCFMDate: TDateTimeField;
    KCLLSQryCLBH: TStringField;
    KCLLSQryQty: TCurrencyField;
    KCLLSQryywpm: TStringField;
    KCLLSQryzwpm: TStringField;
    KCLLSQryUSERID: TStringField;
    Query1: TQuery;
    DS1: TDataSource;
    UpdateSQL1: TUpdateSQL;
    Query1TSID: TStringField;
    Query1SBBH: TStringField;
    Query1Qty: TFloatField;
    Query1XSBH: TStringField;
    Query1NSX: TStringField;
    Query1Status: TStringField;
    Query1ywpm: TStringField;
    Query1zwpm: TStringField;
    DS2: TDataSource;
    Query2: TQuery;
    UpdateSQL2: TUpdateSQL;
    Query2TSID: TStringField;
    Query2SBBH: TStringField;
    Query2Qty: TFloatField;
    Query2XSBH: TStringField;
    Query2NSX: TStringField;
    Query2Status: TStringField;
    Query2RKNO: TStringField;
    Query2ywpm: TStringField;
    Query2zwpm: TStringField;
    KCLLSQryCFMID: TStringField;
    Qtemp: TQuery;
    KCLLSQryTSCD_LL: TFloatField;
    KCLLSUpd: TUpdateSQL;
    TSCDQry: TQuery;
    TSCDQryTSID: TStringField;
    TSCDQryTSBH: TStringField;
    TSCDQrySBBH: TStringField;
    TSCDQryQty: TFloatField;
    TSCDQryXSBH: TStringField;
    TSCDQryNSX: TStringField;
    TSCDQryStatus: TStringField;
    TSCDQryywpm: TStringField;
    TSCDQryzwpm: TStringField;
    DS3: TDataSource;
    TSCDUPDet: TUpdateSQL;
    Query1DepName: TStringField;
    Query2DepName: TStringField;
    TSCDQryDepName: TStringField;
    PopupMenu: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    PageControl1: TPageControl;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    Panel7: TPanel;
    Label1: TLabel;
    LLNOEdit: TEdit;
    LLNOQueryBtn: TButton;
    Panel1: TPanel;
    Panel3: TPanel;
    QucikBtn: TBitBtn;
    DBGridEh3: TDBGridEh;
    Panel2: TPanel;
    Splitter1: TSplitter;
    DBGridEh1: TDBGridEh;
    Panel4: TPanel;
    DownBtn: TBitBtn;
    UpBtn: TBitBtn;
    DBGridEh2: TDBGridEh;
    Panel8: TPanel;
    Panel9: TPanel;
    Panel5: TPanel;
    BB2: TBitBtn;
    BB3: TBitBtn;
    BB4: TBitBtn;
    BB5: TBitBtn;
    BB6: TBitBtn;
    BB7: TBitBtn;
    bbt6: TBitBtn;
    QrBtn: TBitBtn;
    Panel6: TPanel;
    Label2: TLabel;
    QueryBtn: TButton;
    SBBHEdit: TEdit;
    DBGridEh4: TDBGridEh;
    Splitter2: TSplitter;
    DBGridEh5: TDBGridEh;
    KCLLAllQry: TQuery;
    DS4: TDataSource;
    KCLLAllQryCLBH: TStringField;
    KCLLAllQryYWPM: TStringField;
    KCLLAllQryZWPM: TStringField;
    KCLLAllQryQty: TCurrencyField;
    KCLLAllQryTSCD_LL: TFloatField;
    Panel10: TPanel;
    ITAssetIDBtn: TBitBtn;
    TVAssetIDBtn: TBitBtn;
    TSCDQryRFID_Tag: TStringField;
    TSCDQryLABEL_Tag: TStringField;
    TSCDQryUSERID_Tag: TStringField;
    TSCDQryUSERDATE_Tag: TDateTimeField;
    Query1LABEL_Tag: TStringField;
    Query2LABEL_Tag: TStringField;
    Query1RKNO: TStringField;
    TSCDQryRKNO: TStringField;
    TSCDQryLLNO: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure LLNOQueryBtnClick(Sender: TObject);
    procedure Query1AfterOpen(DataSet: TDataSet);
    procedure DownBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure UpBtnClick(Sender: TObject);
    procedure DBGridEh3DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure QueryBtnClick(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure QucikBtnClick(Sender: TObject);
    procedure QrBtnClick(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure DBGridEh5DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure ITAssetIDBtnClick(Sender: TObject);
    procedure TVAssetIDBtnClick(Sender: TObject);
    procedure bbt6Click(Sender: TObject);
  private
    AppDir:String;
    LLNOSubSQL:String;
    iYear,iMonth,TSID: string;
    { Private declarations }
    procedure InitQueryTSCD();
    procedure GenerateQrCode(tmpList:TStringlist;TSBH:String);
    procedure AssetID_Generate(Header:String);
    procedure AssetID_Clear(SBBH:String);
  public
    QRCodeBitmap: TBitmap;
    { Public declarations }
  end;

var
  DelOther_TSCD: TDelOther_TSCD;
  NDate:TDate;
implementation
  uses  main1, QRCode1, FunUnit;
{$R *.dfm}

procedure TDelOther_TSCD.InitQueryTSCD();
begin

  with Query1 do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select TSCD.TSID,TSCD.SBBH,TSCD.Qty,TSCD.LABEL_Tag,TSCD.XSBH,TSCD.NSX,TSCD.RKNO,TSCD.Status ');
    SQL.Add('    ,CLZL.ywpm,CLZL.zwpm,BDepartment.DepName ');
    SQL.Add('from TSCD');
    SQL.Add('left join CLZL on CLZL.cldh=TSCD.SBBH');
    SQL.Add('Left join BDepartment on BDepartment.ID=TSCD.DepID ');
    SQL.Add('where SBBH=:CLBH and Status in (''N'',''R'') and LB=''2'' ');
    //funcObj.WriteErrorLog(sql.Text);
  end;

  with Query2 do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select TSCD.TSID,TSCD.SBBH,TSCD.Qty,TSCD.LABEL_Tag,TSCD.XSBH,TSCD.NSX,TSCD.RKNO,TSCD.Status ');
    SQL.Add('    ,CLZL.ywpm,CLZL.zwpm,BDepartment.DepName ');
    SQL.Add('from TSCD');
    SQL.Add('left join CLZL on CLZL.cldh=TSCD.SBBH');
    SQL.Add('Left join BDepartment on BDepartment.ID=TSCD.DepID ');
    SQL.Add('where LLNO=:LLNO and SBBH=:CLBH and Status not in (''N'',''R'') and LB=''2'' ');
    //funcObj.WriteErrorLog(sql.Text);
  end;
end;

procedure TDelOther_TSCD.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=CaFree;
end;

procedure TDelOther_TSCD.FormDestroy(Sender: TObject);
begin
  DelOther_TSCD:=nil;
end;

procedure TDelOther_TSCD.LLNOQueryBtnClick(Sender: TObject);
var i:integer;
    LLNOList:TStringList;
begin
  //
  if  LLNOEdit.Text='' then
  begin
    Showmessage('Plese input LLNO');
    Exit;
  end;
  LLNOSubSQL:='';
  LLNOList:=FuncObj.SplitString(LLNOEdit.Text,',');
  for i:=0 to LLNOList.Count-1 do
  begin
    LLNOSubSQL:=LLNOSubSQL+''''+LLNOList.Strings[i]+''',';
  end;
  if Length(LLNOSubSQL)>0 then LLNOSubSQL:='('+Copy(LLNOSubSQL,1,length(LLNOSubSQL)-1)+')';

  with KCLLSQry do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Select KCLL.LLNO,KCLL.DepID,BDepartment.DepName,KCLL.CFMID,KCLL.CFMDate,KCLLS.CLBH,KCLLS.Qty,CLZL.ywpm,CLZL.zwpm,KCLLS.USERID,IsNull(TSCD.Qty,0) as TSCD_LL ');
    SQL.Add('from KCLLS ');
    SQL.Add('left join KCLL on KCLL.LLNO=KCLLS.LLNO');
    SQL.Add('left join CLZL on CLZL.cldh=KCLLS.CLBH');
    SQL.Add('Left join BDepartment on BDepartment.ID=KCLL.DepID');
    SQL.Add('Left join (');
    SQL.Add('  Select LLNO,SBBH,SUM(Qty) as Qty from TSCD ');
    SQL.Add('  where LLNO in '+LLNOSubSQL);
    SQL.Add('  Group by LLNO,SBBH ) TSCD on TSCD.SBBH=KCLLS.CLBH and TSCD.LLNO=KCLLS.LLNO ');
    SQL.Add('where  KCLLS.LLNO in '+LLNOSubSQL);
    SQL.Add('order by KCLLS.CLBH,KCLLS.Qty,KCLLS.LLNO ');
    //funcObj.WriteErrorLog(sql.Text);
    Active:=true;
  end;

  with KCLLAllQry do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select CLBH,YWPM,ZWPM,SUM(Qty) as Qty, SUM(TSCD_LL) as TSCD_LL from (');
    SQL.Add('Select KCLL.LLNO,KCLLS.CLBH,KCLLS.Qty,CLZL.ywpm,CLZL.zwpm,IsNull(TSCD.Qty,0) as TSCD_LL ');
    SQL.Add('from KCLLS ');
    SQL.Add('left join KCLL on KCLL.LLNO=KCLLS.LLNO');
    SQL.Add('left join CLZL on CLZL.cldh=KCLLS.CLBH');
    SQL.Add('Left join (');
    SQL.Add('  Select LLNO,SBBH,SUM(Qty) as Qty from TSCD ');
    SQL.Add('  where LLNO in '+LLNOSubSQL );
    SQL.Add('  Group by LLNO,SBBH ) TSCD on TSCD.SBBH=KCLLS.CLBH and TSCD.LLNO=KCLLS.LLNO');
    SQL.Add('where  KCLLS.LLNO  in '+LLNOSubSQL);
    SQL.Add(') KCLLS');
    SQL.Add('Group by CLBH,YWPM,ZWPM');
    //funcObj.WriteErrorLog(sql.Text);
    Active:=true;
  end;
  //
  Query1.Active:=true;
  Query2.Active:=true;

end;

procedure TDelOther_TSCD.Query1AfterOpen(DataSet: TDataSet);
var i,Qty:integer;
begin
  if Query1.RecordCount>0 then
  begin
    DBGridEh1.SelectedRows.Clear;
    Qty:=KCLLSQry.FieldByName('Qty').Value;
    for i:=1 to Qty do
    begin
      DBGridEh1.SelectedRows.CurrentRowSelected:= true;
      Query1.Next;
    end;
  end;
end;

procedure TDelOther_TSCD.DownBtnClick(Sender: TObject);
var i,count:integer;
    Query_bm:Tbookmark;
    Query_bookmarklist:tbookmarklistEh;
begin
  if KCLLSQry.FieldByName('CFMID').value='NO' then
  begin
    Showmessage('Warehouse need to confirm First');
    Exit;
  end;
  if Query1.RecordCount>0 then
  begin
    if KCLLSQry.FieldByName('TSCD_LL').value>=KCLLSQry.FieldByName('Qty').value then
    begin
      Showmessage('Already Select');
      exit;
    end;
    //儲存Size Selected Rows
    Query1.disablecontrols;
    Query_bm:=Query1.getbookmark;
    Query_bookmarklist:=DBGridEh1.selectedrows;
    try
      count:=0;
      for i:=0 to Query_bookmarklist.count-1 do
      begin
        Query1.gotobookmark(pointer(Query_bookmarklist[i]));
        with Qtemp do
        begin
          Active:=false;
          SQL.Clear;
          SQL.Add('Update TSCD Set Status=''Y'',DepID='''+KCLLSQry.FieldByName('DepID').AsString+''', LLNO='''+KCLLSQry.FieldByName('LLNO').AsString+''',CFMID_LL='''+KCLLSQry.FieldByName('CFMID').AsString+''',CFMDate_LL='''+FormatDateTime('YYYY/MM/DD HH:NN:SS',KCLLSQry.FieldByName('CFMDate').Value)+''' ');
          SQL.Add('where TSID='''+Query1.FieldByName('TSID').Value+'''  ');
          ExecSQL();
        end;
        Count:=Count+1;
      end;
    finally
      begin
        Query1.gotobookmark(Query_bm);
        Query1.freebookmark(Query_bm);
        Query1.enablecontrols;
      end;
    end;
    //
    KCLLSQry.Edit;
    KCLLSQry.FieldByName('TSCD_LL').Value:=KCLLSQry.FieldByName('TSCD_LL').Value+Count;
    KCLLSQry.Post;
    //
    Query1.Active:=false;
    Query1.Active:=true;
    //
    Query2.Active:=false;
    Query2.Active:=true;

  end;
end;

procedure TDelOther_TSCD.FormCreate(Sender: TObject);
begin
  //
  AppDir:=ExtractFilePath(Application.ExeName);
  with Qtemp do
  begin
    active:=false;
    sql.Clear;
    sql.Add('select year(getdate()) as FY,month(getdate()) as FM,getdate() as NDate ');
    active:=true;
    iYear:=fieldbyname('FY').asstring;
    iMonth:=fieldbyname('FM').asstring;
    NDate:=fieldbyname('NDate').Value;
    active:=false;
  end;
  InitQueryTSCD();
end;

procedure TDelOther_TSCD.UpBtnClick(Sender: TObject);
var i,Count:integer;
    Query_bm:Tbookmark;
    Query_bookmarklist:tbookmarklistEh;
begin
  if Query2.RecordCount>0 then
  begin
    //儲存Size Selected Rows
    Query2.disablecontrols;
    Query_bm:=Query2.getbookmark;
    if DBGridEh2.SelectedRows.Count=0 then DBGridEh2.SelectedRows.CurrentRowSelected:=true;
    Query_bookmarklist:=DBGridEh2.selectedrows;
    try
      Count:=0;
      for i:=0 to Query_bookmarklist.count-1 do
      begin
        Query2.gotobookmark(pointer(Query_bookmarklist[i]));
        if Query2.FieldByName('Label_Tag').AsString=''  then
        begin
          with Qtemp do
          begin
            Active:=false;
            SQL.Clear;
            SQL.Add('Update TSCD Set Status=''N'',DepID=''VP0204'', LLNO=NULL,CFMID_LL=''NO'',CFMDate_LL=NULL ');
            SQL.Add('where TSID='''+Query2.FieldByName('TSID').Value+'''    ');
            ExecSQL();
            Count:=Count+1;
          end;
        end else
        begin
          Showmessage('Already Label data,can''t delete ');
        end;
      end;
    finally
      begin
        Query2.gotobookmark(Query_bm);
        Query2.freebookmark(Query_bm);
        Query2.enablecontrols;
      end;
    end;
    //
    KCLLSQry.Edit;
    KCLLSQry.FieldByName('TSCD_LL').Value:=KCLLSQry.FieldByName('TSCD_LL').Value-Count;
    KCLLSQry.Post;
    //
    Query1.Active:=false;
    Query1.Active:=true;
    //
    Query2.Active:=false;
    Query2.Active:=true;
  end;
end;

procedure TDelOther_TSCD.DBGridEh3DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if KCLLSQry.FieldByName('TSCD_LL').value>=KCLLSQry.FieldByName('Qty').value then
  begin
    DBGridEh3.canvas.font.color:=clBlue;
    DBGridEh3.DefaultDrawColumnCell(Rect,Datacol,Column,state);
  end;
end;

procedure TDelOther_TSCD.QueryBtnClick(Sender: TObject);
begin
  if LLNOSubSQL='' then Exit;
  with  TSCDQry do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Select  TSCD.TSID,TSCD.TSBH, TSCD.SBBH , TSCD.Qty, TSCD.XSBH, TSCD.NSX, TSCD.Status,TSCD.Label_Tag,TSCD.RFID_Tag,');
    SQL.Add('        TSCD.USERID_Tag, TSCD.USERDATE_Tag,TSCD.RKNO, TSCD.LLNO, ');
    SQL.Add('        CLZL.ywpm,CLZL.zwpm,BDepartment.DepName ');
    SQL.Add('from TSCD ');
    SQL.Add('Left join CLZL on CLZL.cldh=TSCD.SBBH ');
    SQL.Add('Left join BDepartment on BDepartment.ID=TSCD.DepID ');
    SQL.Add('where LLNO in '+LLNOSubSQL+' and LB=2 ');
    if SBBHEdit.Text='' then
    SQL.Add('and SBBH like '''+SBBHEdit.Text+'%'' ');
    SQl.Add('Order by TSCD.Label_Tag,CLZL.YWPM ');
    funcObj.WriteErrorLog(sql.Text);
    Active:=true;
  end;
  BB4.Enabled:=true;
end;

procedure TDelOther_TSCD.BB4Click(Sender: TObject);
begin
  with TSCDQry do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
end;

procedure TDelOther_TSCD.BB6Click(Sender: TObject);
begin
  with TSCDQry do
  begin
    active:=false;
    requestlive:=false;
    cachedupdates:=false;
    active:=true;
  end;
  BB5.Enabled:=false;
  BB6.Enabled:=false;
end;

procedure TDelOther_TSCD.BB5Click(Sender: TObject);
var i:integer;
begin

  TSCDQry.First;
  for i:=0 to  TSCDQry.RecordCount-1 do
  begin
    case TSCDQry.updatestatus of
      usmodified:
      begin
        if (TSCDQry.FieldByName('UserID_Tag').AsString='') or (TSCDQry.FieldByName('UserID_Tag').AsString=main.Edit1.Text)   then
        begin
            if NDate-TSCDQry.FieldByName('UserDate_Tag').Value<=1  then
            begin
              TSCDQry.edit;
              TSCDQry.FieldByName('UserID_Tag').Value:=main.edit1.text;
              TSCDQry.FieldByName('UserDate_Tag').Value:=formatdatetime('yyyy/MM/dd',Ndate);
              TSCDUPDet.apply(ukmodify);
            end else
            begin
              Showmessage('Date > 1, can not modify.');
            end;
        end else
        begin
          Showmessage('It is not yours, can not modify.');
        end;
      end;
    end;
    TSCDQry.Next;
  end;
  TSCDQry.active:=false;
  TSCDQry.cachedupdates:=false;
  TSCDQry.requestlive:=false;
  TSCDQry.active:=true;

  BB5.Enabled:=false;
  BB6.Enabled:=false;
  //Showmessage('Success');

end;

//
procedure TDelOther_TSCD.QucikBtnClick(Sender: TObject);
var i:integer;
begin
  KCLLSQry.First;
  for i:=0 to KCLLSQry.RecordCount-1 do
  begin
    DownBtn.Click;
    KCLLSQry.Next;
  end;
  KCLLAllQry.Active:=false;
  KCLLAllQry.Active:=true;
end;

procedure TDelOther_TSCD.GenerateQrCode(tmpList:TStringlist;TSBH:String);
var
  QRCode: TDelphiZXingQRCode;
  Row, Column, i: Integer;
  MemoText: string;
begin
  QRCode := TDelphiZXingQRCode.Create;
  try
    QRCode.Data := tmpList.Text;
    QRCode.Encoding := TQRCodeEncoding(0);
    QRCode.QuietZone := 0;
    QRCodeBitmap := TBitmap.Create;
    QRCodeBitmap.Width := QRCode.Columns;
    QRCodeBitmap.Height := QRCode.Rows;
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
    //列印
    //QRCodeBitmap.SaveToFile(TSBH+'.bmp');
    QRCodeForm := TQRCodeForm.Create(nil);
    QRCodeForm.PaintBox1.Repaint;
    QRCodeForm.LabelAssetID.Caption:=TSBH;
    QRCodeForm.Print;
    QRCodeForm.Close;
    //
    QRCodeBitmap.free;
  finally
    QRCode.Free;
  end;
end;
//
procedure TDelOther_TSCD.QrBtnClick(Sender: TObject);
var i:integer;
    QrCodeInfoList:TStringlist;
    TSBH:String;
    IsRun:boolean;
begin
  //
  IsRun:=true;
  for i:=0 to KCLLSQry.RecordCount-1 do
  begin
    if (KCLLSQry.FieldByName('TSCD_LL').Value>0) and (KCLLSQry.FieldByName('TSCD_LL').Value<KCLLSQry.FieldByName('Qty').Value) then
    begin
      IsRun:=false;
      Showmessage('Please Delivery Asset List first');
      break;
    end;
    KCLLSQry.Next;
  end;
  if IsRun=false then Exit;
  //
  PageControl1.ActivePageIndex:=1;
  QueryBtn.Click;
  //檢查是否有TSBH
  for i:=0 to TSCDQry.RecordCount-1  do
  begin
    if TSCDQry.FieldByName('Label_Tag').AsString='' then
    begin
      IsRun:=false;
      Showmessage('Please  Asset Label_Tag first');
      break;
    end;
    TSCDQry.Next;
  end;
  if IsRun=false then Exit;
  //
  QrCodeInfoList:=TStringlist.Create;
  TSBH:='';
  //
  TSCDQry.First;
  for i:=0 to TSCDQry.RecordCount-1  do
  begin
    if (TSBH<>TSCDQry.FieldByName('TSBH').AsString) and (TSBH<>'') then
    begin
      //產生Qrcode
      GenerateQrCode(QrCodeInfoList,TSBH);
      QrCodeInfoList.Clear;
      TSBH:='';
      //
    end;
    if TSBH='' then
    begin
      TSBH:=TSCDQry.FieldByName('TSBH').AsString;
      QrCodeInfoList.Add(TSBH); //財產編號
      QrCodeInfoList.Add('入庫單號:'+ TSCDQry.FieldByName('RKNO').AsString);
      QrCodeInfoList.Add('領料單號:'+ TSCDQry.FieldByName('LLNO').AsString);
      QrCodeInfoList.Add('領用單位:'+ TSCDQry.FieldByName('DepName').AsString);
      QrCodeInfoList.Add('保管單位:'+ TSCDQry.FieldByName('DepName').AsString);
      QrCodeInfoList.Add('內容:');
    end;
    QrCodeInfoList.Add(TSCDQry.FieldByName('YWPM').AsString+TSCDQry.FieldByName('ZWPM').AsString);
    TSCDQry.Next;
  end;
  if (QrCodeInfoList.Text<>'') and (TSBH<>'')  then
  begin
      //產生Qrcode
      GenerateQrCode(QrCodeInfoList,TSBH);
      QrCodeInfoList.Clear;
      TSBH:='';
  end;
  QrCodeInfoList.Free;
end;
//清除編碼
procedure TDelOther_TSCD.AssetID_Clear(SBBH:String);
begin
  with Qtemp do
  begin
    Active:=false;
    SQL.Clear;
    SQL.add('update TSCD set Label_Tag=null,RFID_Tag=null where Label_Tag is not null and UserID_Tag='''+main.Edit1.Text+''' and UserDate_Tag>GetDate()-1 ');
    SQL.Add('and TSCD.LLNO  in '+LLNOSubSQL+' and LB=1  and TSCD.SBBH='''+SBBH+''' ');
    ExecSQL;
  end;
end;
//自動編碼
procedure TDelOther_TSCD.AssetID_Generate(Header:String);
var i,j,Qty:integer;
    Query_bm:Tbookmark;
    Query_bookmarklist:tbookmarklistEh;
    Label_Tag:String;
begin
  //儲存Size Selected Rows
  KCLLAllQry.disablecontrols;
  Query_bm:=KCLLAllQry.getbookmark;
  Query_bookmarklist:=DBGridEh5.selectedrows;

  try
    if Query_bookmarklist.count>0 then
    begin
      //清空標籤
      for i:=0 to Query_bookmarklist.count-1 do
      begin
        KCLLAllQry.gotobookmark(pointer(Query_bookmarklist[i]));
        AssetID_Clear(KCLLAllQry.FieldByName('CLBH').AsString);
      end;
      //
      with Qtemp do    //計算設備單流水號
      begin
        active:=false;
        sql.Clear;
        sql.Add('select top 1 Label_Tag from TSCD where Label_Tag like '''+Header+iYear+iMonth+'%''');
        sql.add('order by Label_Tag desc');
        active:=true;
        if recordcount >0 then
        begin
          last;
          Label_Tag:=fieldbyname('Label_Tag').AsString;
          Label_Tag:=copy(Label_Tag,8,5);
          Label_Tag:=inttostr(strtoint(Label_Tag)+1);
          while length(Label_Tag)<5 do
          begin
            Label_Tag:='0'+Label_Tag;
          end;
        end else
        begin
          Label_Tag:='00001';
        end;
        Label_Tag :=Header+iYear+iMonth+Label_Tag;
        active:=false;
      end;
      //開啟TSCDQry編輯模式
      SBBHEdit.Text:='';
      QueryBtn.Click;
      BB4.Click;
      //
      for i:=0 to Query_bookmarklist.count-1 do
      begin
        KCLLAllQry.gotobookmark(pointer(Query_bookmarklist[i]));
        Qty:=KCLLAllQry.FieldByName('Qty').value;
        TSCDQry.First;
        for j:=1 to Qty do
        begin
          while Not TSCDQry.Eof do
          begin
            if TSCDQry.FieldByName('SBBH').Value=KCLLAllQry.FieldByName('CLBH').Value then
            begin
              TSCDQry.Edit;
              TSCDQry.FieldByName('Label_Tag').Value:=Label_Tag+Format('%.3d',[j]);
              TSCDQry.FieldByName('RFID_Tag').Value:=Label_Tag+Format('%.3d',[j]);
              TSCDQry.Post;
              TSCDQry.Next;
              Break;
            end;
            TSCDQry.Next;
          end;
        end;
      end;
      BB5.Click; //儲存Save TSCD
    end;
    //
  finally
    begin
      KCLLAllQry.gotobookmark(Query_bm);
      KCLLAllQry.freebookmark(Query_bm);
      KCLLAllQry.enablecontrols;
    end;
  end;
  //
end;

procedure TDelOther_TSCD.N1Click(Sender: TObject);
begin
  AssetID_Generate('A');
end;

procedure TDelOther_TSCD.N2Click(Sender: TObject);
begin
  AssetID_Generate('B');
end;

procedure TDelOther_TSCD.DBGridEh5DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if KCLLAllQry.FieldByName('TSCD_LL').value>=KCLLAllQry.FieldByName('Qty').value then
  begin
    DBGridEh5.canvas.font.color:=clBlue;
    DBGridEh5.DefaultDrawColumnCell(Rect,Datacol,Column,state);
  end;
end;

procedure TDelOther_TSCD.ITAssetIDBtnClick(Sender: TObject);
begin
  N1.Click;
end;

procedure TDelOther_TSCD.TVAssetIDBtnClick(Sender: TObject);
begin
  N2.Click;
end;

procedure TDelOther_TSCD.bbt6Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j:integer;
    QrCodeInfoList:TStringList;
    Label_Tag,RFID_Tag:String;
begin
  if  TSCDQry.Active  then
  begin
    if(not DirectoryExists(AppDir+'Additional\'))  then ForceDirectories(AppDir+'Additional\');
    CopyFile(Pchar('\\'+main.ServerIP+'\liy_erp\Additional\Production_SN326_ERP_TSCDLIst.xls'),Pchar(AppDir+'Additional\Production_SN326_ERP_TSCDLIst.xls'),false);
    if FileExists(AppDir+'Additional\Production_SN326_ERP_TSCDLIst.xls') then
    begin
      try
        eclApp:=CreateOleObject('Excel.Application');
        WorkBook:=CreateOleObject('Excel.Sheet');
      except
        Application.MessageBox('No Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
        Exit;
      end;
      try
          eclApp.DisplayAlerts := False;
          eclApp.WorkBooks.Open(AppDir+'Additional\Production_SN326_ERP_TSCDLIst.xls');
          QrCodeInfoList:=TStringlist.Create;
          Label_Tag:='';
          RFID_Tag:='';
          //
          j:=2;
          TSCDQry.First;
          for i:=0 to TSCDQry.RecordCount-1  do
          begin
            if (Label_Tag<>TSCDQry.FieldByName('Label_Tag').AsString) and (Label_Tag<>'') then
            begin
              //儲存Excel
              eclApp.Cells(j,1):=Label_Tag;
              eclApp.Cells(j,2):=RFID_Tag;
              eclApp.Cells(j,4):=trim(QrCodeInfoList.Text);
              QrCodeInfoList.Clear;
              Label_Tag:='';
              RFID_Tag:='';
              Inc(j);
              //
            end;
            if Label_Tag='' then
            begin
              Label_Tag:=TSCDQry.FieldByName('Label_Tag').AsString;
              RFID_Tag:=TSCDQry.FieldByName('RFID_Tag').AsString;
              QrCodeInfoList.Add(Label_Tag); //財產編號
              QrCodeInfoList.Add('Ma So nhap kho:'+ TSCDQry.FieldByName('RKNO').AsString);
              QrCodeInfoList.Add('Ma so vat lieu:'+ TSCDQry.FieldByName('LLNO').AsString);
              QrCodeInfoList.Add('don vi lanh vat tu:'+ TSCDQry.FieldByName('DepName').AsString);
              QrCodeInfoList.Add('don vi bao quan:'+ TSCDQry.FieldByName('DepName').AsString);
            end;
            QrCodeInfoList.Add(TSCDQry.FieldByName('YWPM').AsString);
            TSCDQry.Next;
          end;
          if (QrCodeInfoList.Text<>'') and (Label_Tag<>'')  then
          begin
            //儲存Excel
            eclApp.Cells(j,1):=Label_Tag;
            eclApp.Cells(j,2):=RFID_Tag;
            eclApp.Cells(j,4):=trim(QrCodeInfoList.Text);
            QrCodeInfoList.Clear;
            Label_Tag:='';
            RFID_Tag:='';
          end;
          QrCodeInfoList.Free;
          //
          if FileExists(AppDir+'TSCDLIst.xls')=true then DeleteFile(AppDir+'TSCDLIst.xls');
          eclApp.ActiveWorkbook.SaveAs(AppDir+'TSCDLIst.xls',-4143 );
          eclApp.quit;
          //
          if fileexists(extractfilepath(application.ExeName)+'ERP_TSCD_RFID.btw') then
          begin
             ShellExecute(Handle,'open',PChar(ExtractFilePath(Application.ExeName)+'ERP_TSCD_RFID.btw'),nil,pchar(ExtractFilePath(Application.ExeName)),SW_SHOW);
          end else
          begin
            showmessage('Pls setup the program ERP_TSCD_RFID.btw first. Abort');
          end;

        except
          on  F:Exception   do
            showmessage(F.Message);
        end;
      end else
      begin
        Showmessage('Pls setup  Production_SN326_ERP_TSCDLIst.xls first');
      end;
    end;
end;

end.
