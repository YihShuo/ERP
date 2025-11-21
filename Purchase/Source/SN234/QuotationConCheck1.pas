unit QuotationConCheck1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GridsEh, DBGridEh, Buttons, StdCtrls, DBCtrls, Mask, ComCtrls,
  ExtCtrls,ComObj, DBTables, DB, Menus, ShellAPI;

type
  TQuotationConCheck = class(TForm)
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
    Confirm1: TMenuItem;
    TempQry: TQuery;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    N2: TMenuItem;
    DownloadFN1: TMenuItem;
    BJDetERP_US: TFloatField;
    BJDetERP_VN: TFloatField;
    ExpireCK: TCheckBox;
    BDT1: TBitBtn;
    BDT6: TBitBtn;
    BDT5: TBitBtn;
    BJDetSeason: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure DownloadFN1Click(Sender: TObject);
    procedure DBGridEh1CellClick(Column: TColumnEh);
    procedure Confirm1Click(Sender: TObject);
    procedure BJDetCalcFields(DataSet: TDataSet);
    procedure BDT1Click(Sender: TObject);
    procedure BDT6Click(Sender: TObject);
    procedure BJDetAfterOpen(DataSet: TDataSet);
    procedure BDT5Click(Sender: TObject);
  private
    NDate:TDate;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  QuotationConCheck: TQuotationConCheck;

implementation
   uses main1,FileTransClient1,FunUnit;
{$R *.dfm}

procedure TQuotationConCheck.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TQuotationConCheck.FormDestroy(Sender: TObject);
begin
  QuotationConCheck:=nil;
end;

procedure TQuotationConCheck.FormCreate(Sender: TObject);
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

procedure TQuotationConCheck.DBGridEh1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if BJDet.FieldByName('EXPDATE').value<Date() then
  begin
    DBGridEh1.canvas.font.color:=clred;
    DBGridEh1.defaultdrawcolumncell(rect,datacol,column,state);
  end;
end;

procedure TQuotationConCheck.DownloadFN1Click(Sender: TObject);
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

procedure TQuotationConCheck.DBGridEh1CellClick(Column: TColumnEh);
begin
  if Column.FieldName='File_NAME' then
  begin
    DownloadFN1.Click;
  end;
end;

procedure TQuotationConCheck.Confirm1Click(Sender: TObject);
var bm:Tbookmark;
    i,index:integer;
    bookmarklist:tbookmarklistEh;
    BJNOList:TStringlist;
     myYear, myMonth, myDay : Word;
    EXPDate:String;
begin
     if messagedlg('You want to ConFirm ?',mtconfirmation,[mbYes,MbNo],0)=mrYes then
     begin
       //
       BJDet.disablecontrols;
       bm:=BJDet.getbookmark;
       bookmarklist:=DBGridEh1.selectedrows;
       if bookmarklist.count>0 then
       begin
         try
           BJNOList:=TStringlist.Create;
           for i:=0 to bookmarklist.count-1 do
           begin
             BJDet.gotobookmark(pointer(bookmarklist[i]));
             if BJDet.FieldByName('Season').AsString<>'' then
             begin
               if BJNOList.Find(BJDet.FieldByName('BJNO').AsString,index)=false then
                 BJNOList.Add(BJDet.FieldByName('BJNO').AsString);
               if Copy(BJDet.FieldByName('Season').AsString,3,2)='FA' then  EXPDate:='20'+Copy(BJDet.FieldByName('Season').AsString,1,2)+'/3/31';
               if Copy(BJDet.FieldByName('Season').AsString,3,2)='HO' then  EXPDate:='20'+Copy(BJDet.FieldByName('Season').AsString,1,2)+'/6/30';
               if Copy(BJDet.FieldByName('Season').AsString,3,2)='SS' then  EXPDate:='20'+Copy(BJDet.FieldByName('Season').AsString,1,2)+'/3/30';
               if Copy(BJDet.FieldByName('Season').AsString,3,2)='SU' then  EXPDate:='20'+Copy(BJDet.FieldByName('Season').AsString,1,2)+'/12/31';
               //Update CGBJS EXPDATE
               with TempQry do
               begin
                 Active:=false;
                 SQL.Clear;
                 SQL.Add('Update CGBJS Set EXPDATE='''+EXPDate+''',CFMID='''+main.Edit1.Text+''',CFMDate=GetDate() where BJNO='''+BJDet.FieldByName('BJNO').AsString+''' and CLBH='''+BJDet.FieldByName('CLBH').AsString+''' ');
                 ExecSQL();
               end;
             end;
             //
           end;
           //update CGBJ CFMID/CFMDATE
           for i:=0 to BJNOList.Count-1 do
           begin
             with TempQry do
             begin
               Active:=false;
               SQL.Clear;
               SQL.Add('Update CGBJ Set CFMDate=GetDate(),CFMID='''+main.Edit1.Text+''' where BJNO='''+BJNOList.Strings[i]+''' ');
               ExecSQL();
             end;
           end;
           BJNOList.Free;
         finally
           begin
              BJDet.gotobookmark(bm);
              BJDet.freebookmark(bm);
              BJDet.enablecontrols;
           end;
         end;
       end;
       BJDet.active:=false;
       BJDet.cachedupdates:=false;
       BJDet.requestlive:=false;
       BJDet.active:=true;
     end;
end;

procedure TQuotationConCheck.BJDetCalcFields(DataSet: TDataSet);
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

procedure TQuotationConCheck.BDT1Click(Sender: TObject);
begin

  with  BJDet do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select CGBJ.BJNO,CGBJ.ZSBH,ZSZL.ZSJC,CGBJ.CLBH,CLZL.YWPM,CLZL.DWBH,CGBJ.USPRICE,CGBJ.VNPRICE,XXZL.Article,CGBJ.Discount,CGBJ.SuppEx,' );
    SQL.Add(' IsNull((select top 1 CWHL from CWHLS  where HLYEAR=Year(GetDate()) and HLMONTH=Month(GetDate()) and HLDay=1),0) as ErpEx,ZSZL.PayVN,CGBJ.USERID,CGBJ.USERDATE,CGBJ.EXPDATE,CGBJ.File_NAME,CGBJ.Season,CGBJ.CFMID,CGBJ.CFMDATE from (');
    SQL.Add('select CGBJS.BJNO,CGBJ.ZSBH,CGBJS.CLBH,CGBJS.USPRICE,CGBJS.VNPRICE,CGBJS.XieXing,CGBJS.Shehao,CGBJS.Discount,CGBJS.SuppEx,CGBJS.USERID,CGBJS.USERDATE,CGBJS.EXPDATE,CGBJS.File_NAME,CGBJS.Season,CGBJS.CFMID,CGBJS.CFMDATE, ');
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
    Active:=true;
  end;
end;

procedure TQuotationConCheck.BDT6Click(Sender: TObject);
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
        for   i:=0   to   BJDet.fieldcount-1   do
        begin
              eclApp.Cells(1,i+1):=BJDet.fields[i].FieldName;
        end;

        BJDet.First;
        j:=2;
        while   not   BJDet.Eof   do
        begin
            for   i:=0   to  BJDet.fieldcount-1  do
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

procedure TQuotationConCheck.BJDetAfterOpen(DataSet: TDataSet);
begin
  if BJDet.Active=true then
  begin
    BDT5.Enabled:=true;  
    BDT6.Enabled:=true;
  end;
end;

procedure TQuotationConCheck.BDT5Click(Sender: TObject);
begin
  ConFirm1.Click;
end;

end.
