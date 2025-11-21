unit QuotationConCheckList1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GridsEh, DBGridEh, Buttons, StdCtrls, DBCtrls, Mask, ComCtrls,
  ExtCtrls,ComObj, DBTables, DB, Menus, ShellAPI;

type
  TQuotationConCheckList = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    BJNOEdit: TEdit;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    SupIDEdit: TEdit;
    SuppEdit: TEdit;
    CheckMine: TCheckBox;
    MatNoEdit: TEdit;
    MatNMEdit: TEdit;
    Check: TCheckBox;
    Panel2: TPanel;
    Label7: TLabel;
    Label8: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBMemo1: TDBMemo;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBGridEh1: TDBGridEh;
    DS4: TDataSource;
    BJDet: TQuery;
    UPDet: TUpdateSQL;
    BJDetZSBH: TStringField;
    BJDetZSJC: TStringField;
    BJDetCLBH: TStringField;
    BJDetYWPM: TStringField;
    BJDetDWBH: TStringField;
    BJDetUSPRICE: TFloatField;
    BJDetVNPRICE: TFloatField;
    BJDetArticle: TStringField;
    BJDetDiscount: TFloatField;
    BJDetSuppEx: TFloatField;
    BJDetErpEx: TFloatField;
    BJDetPayVN: TStringField;
    BJDetUSERID: TStringField;
    BJDetUSERDATE: TDateTimeField;
    BJDetEXPDATE: TDateTimeField;
    BJDetBJNO: TStringField;
    BJDetCFMID: TStringField;
    BJDetCFMDATE: TDateTimeField;
    Label6: TLabel;
    DBEdit1: TDBEdit;
    BuyNoEdit: TEdit;
    Label11: TLabel;
    CGZLCK: TCheckBox;
    BJDetFile_NAME: TStringField;
    PopupMenu1: TPopupMenu;
    Modify1: TMenuItem;
    SAVE1: TMenuItem;
    CANCEL1: TMenuItem;
    N1: TMenuItem;
    UploadFN1: TMenuItem;
    DeleteFN1: TMenuItem;
    TempQry: TQuery;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    DownloadFN1: TMenuItem;
    BJDetERP_US: TFloatField;
    BJDetERP_VN: TFloatField;
    ExpireCK: TCheckBox;
    BDT6: TBitBtn;
    BDT1: TBitBtn;
    BJDetSeason: TStringField;
    BJDetZsdh_TW: TStringField;
    BJDetZSJC_TW: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure Modify1Click(Sender: TObject);
    procedure CANCEL1Click(Sender: TObject);
    procedure SAVE1Click(Sender: TObject);
    procedure UploadFN1Click(Sender: TObject);
    procedure DownloadFN1Click(Sender: TObject);
    procedure DeleteFN1Click(Sender: TObject);
    procedure DBGridEh1CellClick(Column: TColumnEh);
    procedure BJDetCalcFields(DataSet: TDataSet);
    procedure BDT1Click(Sender: TObject);
    procedure BDT6Click(Sender: TObject);
    procedure BJDetAfterOpen(DataSet: TDataSet);
  private
    NDate:TDate;
    { Private declarations }
    procedure UploadQuota(Season:String;QuotaFile:String);
  public
    { Public declarations }
    SeasonStr:array [0..255] of Char;
    QuotaFileStr:array [0..1024] of Char;
  end;

var
  QuotationConCheckList: TQuotationConCheckList;

implementation
   uses main1,FileTransClient1,QuotationConCheckList_Upload1,FunUnit;
{$R *.dfm}

procedure TQuotationConCheckList.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TQuotationConCheckList.FormDestroy(Sender: TObject);
begin
  QuotationConCheckList:=nil;
end;

procedure TQuotationConCheckList.FormCreate(Sender: TObject);
begin
  with TempQry do
  begin
    active:=false;
    sql.Clear;
    sql.add('select getdate() as NDate ');
    active:=true;
    NDate:=fieldbyname('NDate').Value;
    active:=false;
  end;
  DTP1.Date:=date-7;
  DTP2.date:=date;
end;

procedure TQuotationConCheckList.DBGridEh1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if BJDet.FieldByName('EXPDATE').value<Date() then
  begin
    DBGridEh1.canvas.font.color:=clred;
    DBGridEh1.defaultdrawcolumncell(rect,datacol,column,state);
  end;
end;

procedure TQuotationConCheckList.Modify1Click(Sender: TObject);
begin

  with BJDet do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
  SAVE1.Enabled:=true;
  CANCEL1.Enabled:=true;
  UploadFN1.Enabled:=true;
  DeleteFN1.Enabled:=true;
end;

procedure TQuotationConCheckList.CANCEL1Click(Sender: TObject);
begin
  with BJDet do
  begin
    active:=false;
    requestlive:=false;
    cachedupdates:=false;
    active:=true;
  end;
  SAVE1.Enabled:=false;
  CANCEL1.Enabled:=false;
  UploadFN1.Enabled:=false;
  DeleteFN1.Enabled:=false;
end;

procedure TQuotationConCheckList.SAVE1Click(Sender: TObject);
var i:integer;
begin
  //
  with BJDet do
  begin
    first;
    while not BJDet.Eof do
    begin
        if (BJDet.FieldByName('USPrice').IsNull and BJDet.FieldByName('VNPrice').IsNull) then
        begin
            showmessage('The Price can not be empty.');
            abort;
        end;
        if (not BJDet.FieldByName('USPrice').IsNull) and (not BJDet.FieldByName('VNPrice').IsNull) then
        begin
            showmessage('Can not have two price.');
            abort;
        end;
        next;
    end;
  end;

  try
    BJDet.first;
    for i:=1 to BJDet.RecordCount do
    begin
        case BJDet.updatestatus of
        usmodified:
          begin
             if BJDet.fieldbyname('UserID').value=main.Edit1.Text then
             begin
                BJDet.edit;
                BJDet.FieldByName('userID').Value:=main.edit1.text;
                BJDet.FieldByName('userdate').Value:=formatdatetime('yyyy/MM/dd',Ndate);
                if  ((BJDet.FieldByName('USPrice').Value<>BJDet.FieldByName('USPrice').OldValue)
                      or (BJDet.FieldByName('VNPrice').Value<>BJDet.FieldByName('VNPrice').OldValue)
                      or (BJDet.FieldByName('Discount').Value<>BJDet.FieldByName('Discount').OldValue)
                      or (BJDet.FieldByName('SuppEx').Value<>BJDet.FieldByName('SuppEx').OldValue)) then
                begin
                  BJDet.FieldByName('EXPDATE').Value:=null;
                end;
                upDet.apply(ukmodify);
             end else
             begin
               showmessage('It is not yours.can not modify');
             end;
          end;
        end;
        BJDet.next;
    end;
    BJDet.active:=false;
    BJDet.cachedupdates:=false;
    BJDet.requestlive:=false;
    BJDet.active:=true;
    //
    SAVE1.Enabled:=false;
    CANCEL1.Enabled:=false;
    UploadFN1.Enabled:=false;
    DeleteFN1.Enabled:=false;
  except
    on E:Exception do
    Messagedlg('Have wrong, can not save data!'+E.message,mtwarning,[mbyes],0);
  end;
end;

procedure TQuotationConCheckList.UploadQuota(Season:String;QuotaFile:String);
var
   UploadObj: TFileTransClient;
   SaveFN,Response:String;
   bm:Tbookmark;
   i:integer;
   bookmarklist:tbookmarklistEh;
begin
      if QuotaFile<>'' then
      begin
        UploadObj := TFileTransClient.Create();
        //先檢查是否擋案存在 先刪除
        if BJDet.fieldByName('File_Name').AsString<>'' then
           Response := UploadObj.delete(ExtractFileName(BJDet.fieldByName('File_Name').AsString),ExtractFilePath(BJDet.fieldByName('File_Name').AsString), false);
        //上傳
        SaveFN:=BJDet.fieldByName('BJNO').AsString+'_'+BJDet.fieldByName('CLBH').AsString+ExtractFileExt(QuotaFile);
        Response := UploadObj.put(QuotaFile,SaveFN,'Purchase\'+main.Edit2.Text+'\Quota\'+FormatDateTime('YYYYMM',Date())+'\', false);
        if pos(',', Response) > 0 then  //fail
        begin
           showmessage(Response);
        end else
        begin
          //
          BJDet.disablecontrols;
          bm:=BJDet.getbookmark;
          bookmarklist:=DBGridEh1.selectedrows;
          if bookmarklist.count=0 then DBGridEh1.SelectedRows.CurrentRowSelected:= true;
          if bookmarklist.count>0 then
          begin
            try
              SaveFN:='Purchase\'+main.Edit2.Text+'\Quota\'+FormatDateTime('YYYYMM',Date())+'\'+BJDet.fieldByName('BJNO').AsString+'_'+BJDet.fieldByName('CLBH').AsString+ExtractFileExt(QuotaFile);
              for i:=0 to bookmarklist.count-1 do
              begin
                BJDet.gotobookmark(pointer(bookmarklist[i]));
                with BJDet do
                begin
                  Edit;
                  fieldByName('File_Name').AsString:=SaveFN;
                  fieldByName('Season').AsString:=Season;
                  Post;
                end;
              end;
            finally
              begin
                BJDet.gotobookmark(bm);
                BJDet.freebookmark(bm);
                BJDet.enablecontrols;
              end;
            end;
          end;
          showmessage(Response);
        end;
        UploadObj.Free;

      end else if Season<>'' then
      begin
          BJDet.disablecontrols;
          bm:=BJDet.getbookmark;
          bookmarklist:=DBGridEh1.selectedrows;
          if bookmarklist.count=0 then DBGridEh1.SelectedRows.CurrentRowSelected:= true;
          if bookmarklist.count>0 then
          begin
            try
              for i:=0 to bookmarklist.count-1 do
              begin
                BJDet.gotobookmark(pointer(bookmarklist[i]));
                with BJDet do
                begin
                  Edit;
                  fieldByName('Season').AsString:=Season;
                  Post;
                end;
              end;
            finally
              begin
                BJDet.gotobookmark(bm);
                BJDet.freebookmark(bm);
                BJDet.enablecontrols;
              end;
            end;
          end;
      end;

end;
//
procedure TQuotationConCheckList.UploadFN1Click(Sender: TObject);
var i:integer;
    Season,QuotaFile:string;
begin

  FillChar(SeasonStr,SizeOf(SeasonStr),0);
  FillChar(QuotaFileStr,SizeOf(QuotaFileStr),0);
  QuotationUpload:=TQuotationUpload.Create(nil);
  QuotationUpload.SeasonP:=@SeasonStr[1];
  QuotationUpload.QuotaFileP:=@QuotaFileStr[1];
  QuotationUpload.ShowModal();
  QuotationUpload.Free;
  Season:='';
  QuotaFile:='';
  for i := 0 to sizeof(SeasonStr)-1 do
  begin
     Season := Season + SeasonStr[i];
  end;
  for i := 0 to sizeof(QuotaFileStr)-1 do
  begin
     QuotaFile := QuotaFile + QuotaFileStr[i];
  end;
  Season:=trim(Season);
  QuotaFile:=trim(QuotaFile);
  funcObj.WriteErrorLog(trim(Season)+':'+trim(QuotaFile));

  if (Season<>'')  then
  begin
   UploadQuota(Season,QuotaFile);
  end;
  //
end;

procedure TQuotationConCheckList.DownloadFN1Click(Sender: TObject);
var
   UploadObj: TFileTransClient;
   ms: TMemoryStream;
begin
  if  BJDet.FieldByName('File_Name').AsString<>'' then
  begin
    savedialog1.FileName:=BJDet.fieldByName('File_Name').AsString;
    if SaveDialog1.Execute then
    begin
        UploadObj := TFileTransClient.Create();
        ms := TMemoryStream.Create;
        ms.LoadFromStream(UploadObj.down(ExtractFileName(BJDet.fieldByName('File_Name').AsString),ExtractFilePath(BJDet.fieldByName('File_Name').AsString), savedialog1.FileName));
        if ms.Size > 0 then  //fail
        begin
           showmessage('Download file OK');
           ShellExecute(Handle,'open',PChar(SaveDialog1.FileName),nil,pchar(ExtractFilePath(SaveDialog1.FileName)),SW_SHOW);
        end else
        begin
          showmessage('Download file error');
        end;
        UploadObj.Free;
        ms.Free;
    end;
  end;

end;

procedure TQuotationConCheckList.DeleteFN1Click(Sender: TObject);
var
   UploadObj: TFileTransClient;
   SaveFN,Response:String;
begin
     if  BJDet.FieldByName('File_Name').AsString<>'' then
     begin
         if messagedlg('You want to delete Report?',mtconfirmation,[mbYes,MbNo],0)=mrYes then
         begin
            UploadObj := TFileTransClient.Create();
            //先檢查是否擋案存在 先刪除
            if BJDet.fieldByName('File_Name').AsString<>'' then
            begin
               SaveFN:=BJDet.fieldByName('File_Name').AsString;
               Response := UploadObj.delete(ExtractFileName(BJDet.fieldByName('File_Name').AsString),ExtractFilePath(BJDet.fieldByName('File_Name').AsString), false);
            end;
            //刪除
            if pos(',', Response) > 0 then  //fail
            begin
               showmessage(Response);
            end else
            begin
              with TempQry do
              begin
                active:=false;
                sql.Clear;
                SQL.Add('update CGBJS Set File_Name=null ');
                SQL.Add('where File_Name='''+SaveFN+''' ');
                funcObj.WriteErrorLog(sql.Text);
                ExecSQL;
              end;
              showmessage(Response);
            end;
            UploadObj.Free;
            BJDet.active:=false;
            BJDet.cachedupdates:=false;
            BJDet.requestlive:=false;
            BJDet.active:=true;
            SAVE1.Enabled:=false;
            CANCEL1.Enabled:=false;
            UploadFN1.Enabled:=false;
            DeleteFN1.Enabled:=false;
         end;
     end;

end;

procedure TQuotationConCheckList.DBGridEh1CellClick(Column: TColumnEh);
begin
  if Column.FieldName='File_NAME' then
  begin
    DownloadFN1.Click;
  end;
end;

procedure TQuotationConCheckList.BJDetCalcFields(DataSet: TDataSet);
begin
  if BJDet.FieldByName('PayVN').Value=1 then
  begin
    if not  BJDet.FieldByName('USprice').IsNull   then
    begin
      if not  BJDet.FieldByName('SuppEx').IsNull then
      begin
        BJDet.fieldbyname('ERP_VN').value:=trunc(BJDet.fieldbyname('USprice').value*BJDet.fieldbyname('SuppEx').value*BJDet.FieldByName('Discount').Value+0.5);
      end else
      begin
       if not  BJDet.FieldByName('ErpEx').IsNull  then
       begin
        BJDet.fieldbyname('ERP_VN').value:=trunc(BJDet.fieldbyname('USprice').value*BJDet.fieldbyname('ErpEx').value*BJDet.FieldByName('Discount').Value+0.5);
       end;
     end;
    end;
    if (not  BJDet.FieldByName('VNPrice').IsNull) and (BJDet.FieldByName('USprice').IsNull) then
    begin
      BJDet.fieldbyname('ERP_VN').value:=BJDet.fieldbyname('VNPrice').value*BJDet.FieldByName('Discount').Value;
    end;
  end else
  begin
    if not  BJDet.FieldByName('USprice').IsNull  then
    begin
      BJDet.fieldbyname('ERP_US').value:= BJDet.fieldbyname('USPrice').value*BJDet.FieldByName('Discount').Value;
    end else
    begin
       if not  BJDet.FieldByName('VNPrice').IsNull  then
       begin
        BJDet.fieldbyname('ERP_VN').value:=BJDet.fieldbyname('VNPrice').value*BJDet.FieldByName('Discount').Value;
       end;
    end;
 end;
end;

procedure TQuotationConCheckList.BDT1Click(Sender: TObject);
begin
  with  BJDet do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select CGBJ.BJNO,CGBJ.ZSBH,ZSZL.ZSJC,ZSZL_DEV.Zsdh_TW,ZSZLTW.ZSJC as ZSJC_TW,CGBJ.CLBH,CLZL.YWPM,CLZL.DWBH,CGBJ.USPRICE,CGBJ.VNPRICE,XXZL.Article,CGBJ.Discount,CGBJ.SuppEx,' );
    SQL.Add(' IsNull((select top 1 CWHL from CWHLS  where HLYEAR=Year(GetDate()) and HLMONTH=Month(GetDate()) and HLDay=1),0) as ErpEx,ZSZL.PayVN,CGBJ.USERID,CGBJ.USERDATE,CGBJ.EXPDATE,CGBJ.File_NAME,CGBJ.Season,CGBJ.CFMID,CGBJ.CFMDATE from (');
    SQL.Add('select CGBJS.BJNO,CGBJ.ZSBH,CGBJS.CLBH,CGBJS.USPRICE,CGBJS.VNPRICE,CGBJS.XieXing,CGBJS.Shehao,CGBJS.Discount,CGBJS.SuppEx,CGBJS.USERID,CGBJS.USERDATE,CGBJ.EXPDATE,CGBJS.File_NAME,CGBJS.Season,CGBJS.CFMID,CGBJS.CFMDATE, ');
    SQL.Add(' ROW_NUMBER() over (PARTITION BY CLBH,XieXing,Shehao ORDER BY CGBJS.BJNO DESC) as  rn from CGBJS,CGBJ ');
    SQL.Add('where CGBJS.BJNO=CGBJ.BJNO and CGBJ.GSBH='''+main.Edit2.Text+''' ');
    if BJNOEdit.Text<>'' then
      SQL.add('and CGBJ.BJNO like '''+BJNOEdit.Text+'%'' ');
    if CheckMine.Checked=true then
      SQL.add('and CGBJS.USERID='''+main.Edit1.Text+''' ');
    if CGZLCK.Checked=true then
      SQL.Add('and (CGBJS.USPrice>0 or CGBJS.VNPrice>0) ');
    if SupIDEdit.Text<>'' then
      SQL.add('and CGBJ.ZSBH like ''%'+SupIDEdit.Text+'%'' ');
    if Check.Checked=true then
    begin
      SQL.add('and convert(smalldatetime,convert(varchar,CGBJ.USERDATE,111)) between ');
      SQL.add(''''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''''+' and  '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date) +'''');
    end;
    if ExpireCK.Checked=true then
      SQL.add('and (CGBJS.EXPDATE is null or CGBJS.EXPDATE<GEtDate())');
    SQL.Add(' ) CGBJ ');
    SQL.Add('Left join CLZL on CLZL.CLDH=CGBJ.CLBH ');
    SQL.Add('Left join ZSZL on ZSZL.ZSDH=CGBJ.ZSBH');
    SQL.Add('left join ZSZL_DEV on ZSZL_DEV.ZSDH=ZSZL.ZSDH and ZSZL_DEV.GSBH='''+main.Edit2.Text+'''  ');
    SQL.Add('Left join ZSZL ZSZLTW on ZSZLTW.zsdh=ZSZL_DEV.Zsdh_TW ');
    SQL.Add('Left join XXZL on XXZL.XieXing=CGBJ.XieXing and XXZL.SheHao=CGBJ.SheHao');
    SQL.Add('where CGBJ.rn=1 ');
    if BuyNoEdit.Text<>'' then
      SQL.Add(' and CGBJ.CLBH in (select XXZLS.CLBH from XXZLS,DDZL where DDZL.XieXing=XXZLS.XieXing and DDZL.GSBH='''+main.Edit2.Text+''' and DDZL.SheHao=XXZLS.SheHao and DDZL.BUYNO like '''+BuyNoEdit.Text+'%'' and DDZL.ShipDate>GetDate()-720 group by XXZLS.CLBH)');

    if SuppEdit.Text<>'' then
      SQL.add('and ZSZL.ZSJC like ''%'+SuppEdit.Text+'%'' ');

    if ((MatNoEdit.Text<>'') or (MatNMEdit.Text<>'')) then
    begin
      SQL.add('and exists (select BJNO from CGBJS,clzl where CGBJS.BJNO=CGBJ.BJNO and CGBJS.CLBH=CLZL.CLDH ');
      SQL.add('and clzl.cldh like '''+MatNoEdit.Text+'%'' ');
      SQL.add('and clzl.ywpm like ''%'+MatNMEdit.Text+'%'') ');
    end;
    SQL.Add('order by CGBJ.BJNO desc,CGBJ.ZSBH,CGBJ.CLBH ');
    //funcObj.WriteErrorLog(sql.Text);
    //showmessage(SQL.text);
    Active:=true;
  end;
end;

procedure TQuotationConCheckList.BDT6Click(Sender: TObject);
var   a:string;
      eclApp,WorkBook:olevariant;
      i,j:integer;
 begin
  if  BJDet.active  then
  begin
    try
      eclApp:=CreateOleObject('Excel.Application');
      WorkBook:=CreateOleObject('Excel.Sheet');
    except
      Application.MessageBox('No Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
      Exit;
    end;
    try
        WorkBook:=eclApp.workbooks.Add;
        eclApp.Cells(1,1) := 'QUOTATION NO';
        eclApp.Cells(1,2) := 'VENDOR CODE';
        eclApp.Cells(1,3) := 'VENDOR';
        eclApp.Cells(1,4) := 'TW VENDOR CODE';
        eclApp.Cells(1,5) := 'TW VENDOR';
        eclApp.Cells(1,6) := 'MATERIAL NO';
        eclApp.Cells(1,7) := 'DESCRIPTION';
        eclApp.Cells(1,8) := 'UNIT';
        eclApp.Cells(1,9) := 'USPRICE';
        eclApp.Cells(1,10) := 'VNPRICE';
        eclApp.Cells(1,11) := 'Article';
        eclApp.Cells(1,12) := 'Discount';
        eclApp.Cells(1,13) := 'SuppEx';
        eclApp.Cells(1,14) := 'ErpEx';
        eclApp.Cells(1,15) := 'PayVN';
        eclApp.Cells(1,16) := 'Sea';
        eclApp.Cells(1,17) := 'EXPDATE';
        eclApp.Cells(1,18) := 'FileNAME';
        BJDet.First;
        j:=2;
        while   not   BJDet.Eof   do
        begin
          for   i:=0   to  16  do
          begin
            eclApp.Cells(j,i+1):=BJDet.Fields[i].Value;
          end;
          BJDet.Next;
          inc(j);
        end;
       eclapp.columns.autofit;
       eclApp.Visible:=True;
       showmessage('Succeed');
      except
        on   F:Exception   do
          showmessage(F.Message);
      end;
  end;

end;

procedure TQuotationConCheckList.BJDetAfterOpen(DataSet: TDataSet);
begin
  if BJDet.Active=true then
    BDT6.Enabled:=true;
end;

end.
