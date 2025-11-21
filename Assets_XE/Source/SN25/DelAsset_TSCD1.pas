unit DelAsset_TSCD1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, Vcl.Buttons, EhLibVCL, GridsEh, DBAxisGridsEh,
  DBGridEh, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.StdCtrls, Bde.DBTables, Data.DB,
  Vcl.Menus, Comobj, ShellAPI;

type
  TDelAsset_TSCD = class(TForm)
    Panel7: TPanel;
    Label1: TLabel;
    LLNOEdit: TEdit;
    LLNOQueryBtn: TButton;
    PageControl1: TPageControl;
    TabSheet4: TTabSheet;
    Splitter2: TSplitter;
    Panel8: TPanel;
    DBGridEh5: TDBGridEh;
    Panel10: TPanel;
    ITAssetIDBtn: TBitBtn;
    TVAssetIDBtn: TBitBtn;
    Panel9: TPanel;
    Panel5: TPanel;
    BB2: TBitBtn;
    BB3: TBitBtn;
    BB4: TBitBtn;
    BB5: TBitBtn;
    BB6: TBitBtn;
    BB7: TBitBtn;
    bbt6: TBitBtn;
    Panel6: TPanel;
    Label2: TLabel;
    QueryBtn: TButton;
    SBBHEdit: TEdit;
    DBGridEh4: TDBGridEh;
    PopupMenu: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    DS4: TDataSource;
    KCLLAllQry: TQuery;
    KCLLAllQryCLBH: TStringField;
    KCLLAllQryYWPM: TStringField;
    KCLLAllQryZWPM: TStringField;
    KCLLAllQryQty: TCurrencyField;
    KCLLAllQryTSCD_LL: TFloatField;
    DS3: TDataSource;
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
    TSCDQryDepName: TStringField;
    TSCDQryRFID_Tag: TStringField;
    TSCDQryLABEL_Tag: TStringField;
    TSCDUPDet: TUpdateSQL;
    Qtemp: TQuery;
    TSCDQryUSERID_Tag: TStringField;
    TSCDQryUSERDATE_Tag: TDateTimeField;
    TSCDQryRKNO: TStringField;
    TSCDQryLLNO: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure LLNOQueryBtnClick(Sender: TObject);
    procedure QueryBtnClick(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure ITAssetIDBtnClick(Sender: TObject);
    procedure TVAssetIDBtnClick(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure BB7Click(Sender: TObject);
    procedure bbt6Click(Sender: TObject);
  private
    AppDir:String;
    LLNOSubSQL:String;
    iYear,iMonth,TSID: string;
    { Private declarations }
    procedure AssetID_Generate(Header:String);
    procedure AssetID_Clear(SBBH:String);
  public
    { Public declarations }
  end;

var
  DelAsset_TSCD: TDelAsset_TSCD;
  NDate:TDate;
implementation
  uses main1, FunUnit;
{$R *.dfm}

procedure TDelAsset_TSCD.BB4Click(Sender: TObject);
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

procedure TDelAsset_TSCD.BB5Click(Sender: TObject);
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

end;

procedure TDelAsset_TSCD.BB6Click(Sender: TObject);
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

procedure TDelAsset_TSCD.BB7Click(Sender: TObject);
begin
  Close;
end;

procedure TDelAsset_TSCD.bbt6Click(Sender: TObject);
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

procedure TDelAsset_TSCD.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=CaFree;
end;

procedure TDelAsset_TSCD.FormCreate(Sender: TObject);
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
end;

procedure TDelAsset_TSCD.FormDestroy(Sender: TObject);
begin
  DelAsset_TSCD:=nil;
end;

procedure TDelAsset_TSCD.ITAssetIDBtnClick(Sender: TObject);
begin
  N1.Click;
end;

procedure TDelAsset_TSCD.LLNOQueryBtnClick(Sender: TObject);
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

  with KCLLAllQry do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select CLBH,YWPM,ZWPM,SUM(Qty) as Qty, SUM(TSCD_LL) as TSCD_LL from (');
    SQL.Add('Select KCLL.LLNO,TSCD.SBBH as CLBH,KCLLS.Qty,TSCD_SB.ywpm,TSCD_SB.zwpm,Case when TSCD.LLNO=KCLLS.LLNO then 1.0 else 0.0 end as TSCD_LL ');
    SQL.Add('from TSCD_KCLLS KCLLS ');
    SQL.Add('left join TSCD_KCLL KCLL on KCLL.LLNO=KCLLS.LLNO');
    SQL.Add('left join TSCD on TSCD.TSID=KCLLS.TSID');
    SQL.Add('left join TSCD_SB on TSCD_SB.SBBH=TSCD.SBBH');
    SQL.Add('where  KCLLS.LLNO  in '+LLNOSubSQL);
    SQL.Add(') KCLLS');
    SQL.Add('Group by CLBH,YWPM,ZWPM');
    //funcObj.WriteErrorLog(sql.Text);
    Active:=true;
  end;
  QueryBtn.Click;
end;

procedure TDelAsset_TSCD.N1Click(Sender: TObject);
begin
  AssetID_Generate('A');
end;

procedure TDelAsset_TSCD.N2Click(Sender: TObject);
begin
  AssetID_Generate('B');
end;

procedure TDelAsset_TSCD.QueryBtnClick(Sender: TObject);
begin
  if LLNOSubSQL='' then Exit;
  with  TSCDQry do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Select  TSCD.TSID,TSCD.TSBH, TSCD.SBBH , TSCD.Qty, TSCD.XSBH, TSCD.NSX, TSCD.Status,TSCD.Label_Tag,TSCD.RFID_Tag,');
    SQL.Add('        TSCD.USERID_Tag, TSCD.USERDATE_Tag,TSCD.RKNO, TSCD.LLNO, ');
    SQL.Add('        TSCD_SB.ywpm,TSCD_SB.zwpm,BDepartment.DepName ');
    SQL.Add('from TSCD ');
    SQL.Add('Left join TSCD_SB on TSCD_SB.SBBH=TSCD.SBBH ');
    SQL.Add('Left join TSCD_BDepartment BDepartment on BDepartment.ID=TSCD.DepID ');
    SQL.Add('where TSCD.LLNO in '+LLNOSubSQL+' and LB=1 ');
    if SBBHEdit.Text='' then
    SQL.Add('and TSCD_SB.SBBH like '''+SBBHEdit.Text+'%'' ');
    SQL.Add('Order by TSCD.Label_Tag,TSCD_SB.YWPM');
    //funcObj.WriteErrorLog(sql.Text);
    Active:=true;
  end;
  BB4.Enabled:=true;
end;

procedure TDelAsset_TSCD.TVAssetIDBtnClick(Sender: TObject);
begin
 N2.Click;
end;
//清除編碼
procedure TDelAsset_TSCD.AssetID_Clear(SBBH:String);
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
procedure TDelAsset_TSCD.AssetID_Generate(Header:String);
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

end.
