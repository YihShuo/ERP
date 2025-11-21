unit UPQuotation1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, ExtCtrls, Menus, StdCtrls, StrUtils,

  DBCtrls, Mask, Buttons,
  comobj, ShellAPI, Zlib,DBGridEhImpExp,
  OleServer, ExcelXP;

type
  TUPQuotation = class(TForm)
    Panel1: TPanel;
    Splitter1: TSplitter;
    Panel2: TPanel;
    DBGridEh1: TDBGridEh;
    Query1: TQuery;
    DataSource1: TDataSource;
    Query1EffectiveDate: TDateTimeField;
    Query1ZSDH: TStringField;
    Query1Season: TStringField;
    Query1Remark: TStringField;
    Query1FileDesc: TStringField;
    Query1UserID: TStringField;
    Query1UserDate: TDateTimeField;
    Query1YN: TStringField;
    Query1Style: TStringField;
    Query1SGroup: TStringField;
    Query1zsywjc: TStringField;
    UpdateSQL1: TUpdateSQL;
    PopupMenu1: TPopupMenu;
    Insert1: TMenuItem;
    Modify1: TMenuItem;
    Cancel1: TMenuItem;
    Delete1: TMenuItem;
    N1: TMenuItem;
    UploadFile1: TMenuItem;
    DownloadFile1: TMenuItem;
    DeleteFile1: TMenuItem;
    N2: TMenuItem;
    Excel1: TMenuItem;
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    Label3: TLabel;
    Edit3: TEdit;
    Label4: TLabel;
    Edit4: TEdit;
    Label5: TLabel;
    ComboBox1: TComboBox;
    Button1: TButton;
    Button2: TButton;
    Save1: TMenuItem;
    Qry_tmp: TQuery;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    Query1Quotation_Serial: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure DBGridEh1Columns2EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure Insert1Click(Sender: TObject);
    procedure Modify1Click(Sender: TObject);
    procedure Save1Click(Sender: TObject);
    procedure Cancel1Click(Sender: TObject);
    procedure Delete1Click(Sender: TObject);
    procedure DBGridEh1Columns0UpdateData(Sender: TObject;
      var Text: String; var Value: Variant; var UseText, Handled: Boolean);
    procedure UploadFile1Click(Sender: TObject);
    procedure DownloadFile1Click(Sender: TObject);
    procedure DeleteFile1Click(Sender: TObject);
    procedure Query1AfterOpen(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure Excel1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  UPQuotation: TUPQuotation;

implementation

uses main1, UPStyleGroup1, UPQuotationName1, FunUnit;

{$R *.dfm}

procedure CompressIt(var CompressedStream: TMemoryStream; const CompressionLevel: TCompressionLevel);
// 參數是傳遞的流和壓縮方式
var
   SourceStream: TCompressionStream;
   DestStream: TMemoryStream;
   Count: int64; //注意，此處修改了,原來是int
begin
   //獲得流的原始尺寸
   Count := CompressedStream.Size; 
   DestStream := TMemoryStream.Create;
   SourceStream := TCompressionStream.Create(CompressionLevel, DestStream);
   try
      //SourceStream中保存著原始的流
      CompressedStream.SaveToStream(SourceStream);
      //將原始流進行壓縮， DestStream中保存著壓縮後的流
      SourceStream.Free;
      CompressedStream.Clear;
      //寫入原始圖像的尺寸
      CompressedStream.WriteBuffer(Count, SizeOf(Count));
      //寫入經過壓縮的流
      CompressedStream.CopyFrom(DestStream, 0);
   finally
      DestStream.Free;
   end;
end;

procedure UnCompressit(const CompressedStream: TMemoryStream; var UnCompressedStream: TMemoryStream);
//參數 壓縮過的流，解壓後的流
var
   SourceStream: TDecompressionStream;
   DestStream: TMemoryStream;
   Buffer: PChar;
   Count: int64;
begin
   //從被壓縮的圖像流中讀出原始的尺寸
   CompressedStream.ReadBuffer(Count, SizeOf(Count));
   //根據尺寸大小為將要讀入的原始流分配內存塊
   GetMem(Buffer, Count);
   DestStream := TMemoryStream.Create;
   SourceStream := TDecompressionStream.Create(CompressedStream);
   try
      //將被壓縮的流解壓縮，然後存入 Buffer內存塊中
      SourceStream.ReadBuffer(Buffer^, Count);
      //將原始流保存至 DestStream流中
      DestStream.WriteBuffer(Buffer^, Count);
      DestStream.Position := 0; //復位流指針
      //DestStream.Position := length(VER_INFO);
      //從 DestStream流中載入圖像流
      UnCompressedStream.LoadFromStream(DestStream);
   finally
      FreeMem(Buffer);
      DestStream.Free;
   end;
end;

procedure TUPQuotation.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if Query1.RequestLive then
    begin
      messagedlg('You have to save data first.',mtwarning,[mbyes],0);
      abort;
    end;
  action:=Cafree;
end;

procedure TUPQuotation.FormDestroy(Sender: TObject);
begin
  UPQuotation:=nil;
end;

procedure TUPQuotation.DBGridEh1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if (Query1.FieldByName('YN').AsString = '0') then
      DBGridEh1.Canvas.Font.Color :=clred;
  DBGridEh1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
end;


procedure TUPQuotation.Button1Click(Sender: TObject);
begin

  with Query1 do
  begin
     active:=false;
     sql.Clear;
     SQL.Add('SELECT ');
     SQL.Add(' Data_UP_Quotation.EffectiveDate, Data_UP_Quotation.ZSDH, Data_UP_Quotation.Season, Data_UP_Quotation.Remark, Data_UP_Quotation.FileDesc, ');
     SQL.Add(' Data_UP_Quotation.UserID, Data_UP_Quotation.UserDate, Data_UP_Quotation.YN, Data_UP_Quotation.Quotation_Serial,');
     SQL.Add(' Data_UP_Style_Group.Style, Data_UP_Style_Group.SGroup, ');
     SQL.Add(' ZSZL.zsywjc ');
     SQL.Add(' FROM Data_UP_Quotation  ');
     SQL.Add(' LEFT JOIN ZSZL  ON ZSZL.zsdh = Data_UP_Quotation.ZSDH ');
     SQL.Add(' LEFT JOIN ZSZL_DEV on ZSZL_DEV.ZSDH=ZSZL.ZSDH and ZSZL_DEV.GSBH='''+main.Edit2.Text+'''');
     SQL.Add(' LEFT JOIN Data_UP_Style_Group Data_UP_Style_Group ON Data_UP_Style_Group.Style = ZSZL_DEV.Style ');
     sql.Add(' WHERE 1=1 ');
     if Edit1.Text <> '' then
     sql.add(' and year(Data_UP_Quotation.EffectiveDate) Like '''+Edit1.Text+''' ');
     if Edit2.Text <> '' then
     sql.add(' and Data_UP_Quotation.season Like '''+Edit2.Text+'%'+''' ');
     if Edit3.Text <> '' then
     sql.add(' and Data_UP_Quotation.ZSDH Like '''+Edit3.Text+'%'+''' ');
     if Edit4.Text <> '' then
     sql.add(' and ZSZL.zsywjc Like '''+Edit4.Text+'%'+''' ');
     if ComboBox1.Text <> '' then
     sql.add(' and Data_UP_Style_Group.SGroup Like '''+ComboBox1.Text+'%'+''' ');
     //funcObj.WriteErrorLog(sql.Text);
     active:=true;
  end;
end;

procedure TUPQuotation.Button2Click(Sender: TObject);
begin
  if UPStyleGroup <> nil then
  begin
    UPStyleGroup.show;
    UPStyleGroup.windowstate:=wsmaximized;
  end else
  begin
    UPStyleGroup:=TUPStyleGroup.Create(self);
    UPStyleGroup.Show;
  end;
end;

procedure TUPQuotation.DBGridEh1Columns2EditButtonClick(Sender: TObject;
  var Handled: Boolean);
begin
  if UPQuotationName <> nil then
  begin
    UPQuotationName.show;
    UPQuotationName.windowstate:=wsmaximized;
  end else
  begin
    UPQuotationName:=TUPQuotationName.Create(self);
    UPQuotationName.Show;
  end;
end;


procedure TUPQuotation.Insert1Click(Sender: TObject);
begin
  if Query1.Active then
   with Query1 do
   begin
        Query1.RequestLive:=true;
        Query1.CachedUpdates:=true;
        Query1.Insert;
   end;
  //設定按鈕權限
  dbgrideh1.FieldColumns['zsdh'].ButtonStyle :=cbsEllipsis;
  Save1.Enabled:=true;
  Cancel1.Enabled:=true;
end;

procedure TUPQuotation.Modify1Click(Sender: TObject);
begin
  with Query1 do
  begin
    cachedupdates:=true;
    requestlive:=True;
    active:=true;
    edit;
  end;
  //設定按鈕權限
  dbgrideh1.FieldColumns['zsdh'].ButtonStyle :=cbsEllipsis;
  Save1.Enabled:=true;
  Cancel1.Enabled:=true;
end;

procedure TUPQuotation.Cancel1Click(Sender: TObject);
begin

  //設定按鈕權限
  dbgrideh1.FieldColumns['ZSDH'].ButtonStyle :=cbsnone;
  Insert1.Enabled:=true;
  Modify1.Enabled:=true;
  Delete1.Enabled:=true;
  Save1.Enabled:=false;
  Cancel1.Enabled:=false;

  with Query1 do
  begin
    active:=false;
    requestlive:=false;
    cachedupdates:=false;
    active:=true;
  end;
end;

procedure TUPQuotation.Delete1Click(Sender: TObject);
begin
  //設定按鈕權限
  dbgrideh1.FieldColumns['ZSDH'].ButtonStyle :=cbsnone;
  Save1.Enabled:=true;
  Cancel1.Enabled:=true;
  with Query1 do
  begin
    cachedupdates:=true;
    requestlive:=True;
    Edit;
    FieldByName('YN').value:='0';
  end;
end;

procedure TUPQuotation.Save1Click(Sender: TObject);
Var i : integer;
    QSerial : string;
begin

     if (Query1.FieldByName('EffectiveDate').isnull) OR (Query1.FieldByName('ZSDH').isnull) then    //檢查KEY值
     begin
       Messagedlg('Warning: [EffectiveDate] AND [Supplier ID] can not be blank!',mtwarning,[mbyes],0);
       abort;
     end;

     Query1.first;
     for i:=1 to Query1.RecordCount do
     begin
          case Query1.updatestatus of
            usinserted:
               begin
                 with Qry_tmp do    //計算Quotation Serial流水號
                 begin
                   active:=false;
                   sql.Clear;
                   sql.Add('select top 1 Quotation_Serial from Data_UP_Quotation ');
                   sql.add('order by Quotation_Serial DESC');
                   active:=true;
                   if recordcount >0 then
                   begin
                     QSerial:=fieldbyname('Quotation_Serial').AsString;
                     QSerial:=inttostr(strtoint(QSerial)+1);
                     while length(QSerial)<10 do
                     begin
                         QSerial:='0'+QSerial;
                     end;
                   end else
                   begin
                          QSerial:='0000000001';
                   end;
                   active:=false;
                 end;
                 Query1.Edit ;
                 Query1.FieldByName('Quotation_Serial').Value:=QSerial;
                 Query1.FieldByName('YN').value:='1';
                 Query1.fieldbyname('userdate').Value:=formatdatetime('yyyy/MM/dd hh:mm:ss',Now);
                 Query1.FieldByName('USERID').Value:=main.edit1.text;
                 UpdateSQL1.apply(ukinsert);
               end;
            usmodified:
               begin
                 if Query1.FieldByName('YN').AsString = '0' then
                 begin
                    UpdateSQL1.apply(ukdelete);
                 end else
                 begin
                   Query1.Edit ;
                   Query1.fieldbyname('userdate').Value:=formatdatetime('yyyy/MM/dd hh:mm:ss',Now);
                   Query1.FieldByName('USERID').Value:=main.edit1.text;
                   UpdateSQL1.apply(ukmodify);
                 end;
               end;
          end;
          Query1.next;
     end;
     Query1.Active:=false;
     Query1.Active:=true;
     //設定按鈕權限
     dbgrideh1.FieldColumns['zsdh'].ButtonStyle :=cbsnone;
     Insert1.Enabled:=true;
     Modify1.Enabled:=true;
     Delete1.Enabled:=true;
     Save1.Enabled:=false;
     Cancel1.Enabled:=false;
end;


procedure TUPQuotation.DBGridEh1Columns0UpdateData(Sender: TObject;
  var Text: String; var Value: Variant; var UseText, Handled: Boolean);
var Y, M, S:string;
    dtGetDate : TDateTime;
begin
    dtGetDate := StrToDate(Text);
    //Y:=text;
    //Y:=copy(Y,3,2);
    Y := FormatDateTime('yy',dtGetDate);
    //M:=text;
    //M:=copy(M,6,2);
    M := FormatDateTime('mm',dtGetDate);

    if (Strtoint(M)>1) and (Strtoint(M)<8) then
    begin
       S:='FW'+Y
       end else
        if (Strtoint(M)>7) then
        begin
          S:='SS'+inttostr(strtoint(Y)+1)
          end else
          begin
          S:='SS'+Y
    end;
    with Query1 do   //塞值到Season
    begin
     //  edit;
         FieldByName(DBGridEh1.Fields[DBGridEh1.Col].FieldName).Value := S;
     //  Post;
    end;
end;


procedure TUPQuotation.UploadFile1Click(Sender: TObject);
var
   SM: TMemoryStream;
begin
  if (Query1.recordcount<1) then  //檢查是否有資料
  begin
    abort;
  end;

  if (Query1.FieldByName('EffectiveDate').isnull) OR (Query1.FieldByName('ZSDH').isnull) then    //檢查KEY值
  begin
     Messagedlg('Warning: [EffectiveDate] AND [Supplier ID] can not be blank!',mtwarning,[mbyes],0);
     abort;
  end;

  if OpenDialog1.Execute then
  begin
         SM := TMemoryStream.Create;
         try
            Sm.LoadFromFile(OpenDialog1.FileName);
            SM.Position := 0;
            Compressit(sm, clDefault);

           with Qry_tmp do
            begin
              active:=false;
              sql.Clear;
              SQL.Add(' UPDATE Data_UP_Quotation ');//進行插入操作
              SQL.Add(' SET ');
              SQL.Add(' FileDesc =:FileDesc, ');
              SQL.Add(' FileStorage =:FileStorage ');
              sql.Add(' where Quotation_Serial='''+Query1.FieldByName('Quotation_Serial').AsString+''' ');
              ParamByName('FileStorage').LoadFromStream(sm,ftBlob);//讀取保存的壓縮檔
              ParamByName('FileDesc').Value:=extractfilename(OpenDialog1.FileName);
              ExecSQL;
              Query1.Active:=false;
              Query1.Active:=true;
            end;
         finally
            SM.Free;
         end;
  end;
end;

procedure TUPQuotation.DownloadFile1Click(Sender: TObject);
var
  blob: TBlobStream;
  SM,DM: TMemoryStream;
begin
  if not Query1.FieldByName('FileDesc').IsNull then
  begin
    savedialog1.FileName :=  Query1.FieldByName('FileDesc').AsString;
    if SaveDialog1.Execute then
    begin
        with Qry_tmp do
        begin
           active:=false;
           sql.Clear;
           sql.add(' select FileStorage FROM Data_UP_Quotation ');
           sql.Add(' where Quotation_Serial='''+Query1.FieldByName('Quotation_Serial').AsString+''' ');
           active:=true;
        end;

         blob := TBlobStream.Create((Qry_tmp.FieldByName('FileStorage') as TBlobField), bmRead);
         blob.Seek(0, soFromBeginning);
         SM := TMemoryStream.Create;
         SM.CopyFrom(blob,blob.Size);
         DM := TMemoryStream.Create;
         try
            SM.Position := 0;
            UnCompressit(sm, dm);
            dm.Position := 0;
            dm.SaveToFile(SaveDialog1.FileName);
         finally
            SM.Free;
            DM.Free;
         end;
         if Application.MessageBox('Do you want to open the exported file?','Open file',MB_YESNO) = IDYES then
            shellexecute(handle,'open',pchar(SaveDialog1.FileName),nil,nil,SW_SHOWNORMAL);
          Qry_tmp.active:=false;
      end;
  end;
end;

procedure TUPQuotation.DeleteFile1Click(Sender: TObject);
begin
   if messagedlg('Do you want to delete file?',mtconfirmation,[mbYes,MbNo],0)=mrYes then
   begin
      with Qry_tmp do
      begin
          active:=false;
          sql.Clear;
          sql.Add(' update Data_UP_Quotation ');
          sql.Add(' set FileStorage=null, FileDesc=null ');
          sql.Add('    ,userid='''+main.edit1.text+''' ');
          sql.Add('    ,userdate='''+formatdatetime('yyyy/MM/dd hh:mm:ss',Now)+''' ');
          sql.Add(' where Quotation_Serial='''+Query1.FieldByName('Quotation_Serial').AsString+''' ');
          execsql;
          Query1.Active:=false;
          Query1.Active:=true;
      end;
   end;
end;


procedure TUPQuotation.Query1AfterOpen(DataSet: TDataSet);
begin
  Insert1.Enabled:=true;
  Modify1.Enabled:=true;
  Delete1.Enabled:=true;
  Save1.Enabled:=false;
  Cancel1.Enabled:=false;
  excel1.Enabled:=true;
  
  dbgrideh1.FieldColumns['EffectiveDate'].Footer.FieldName:='EffectiveDate';
  dbgrideh1.FieldColumns['EffectiveDate'].Footer.ValueType:=fvtcount;
end;

procedure TUPQuotation.FormShow(Sender: TObject);
begin
  edit1.SetFocus;
   //設定按鈕權限
  Insert1.Enabled:=true;
  Modify1.Enabled:=false;
  Delete1.Enabled:=false;
  Save1.Enabled:=false;
  Cancel1.Enabled:=false;
  excel1.Enabled:=false;
end;

procedure TUPQuotation.Excel1Click(Sender: TObject);
var   a:string;
      eclApp,WorkBook:olevariant;
      i,j:integer;
 begin
  if  Query1.active  then
    begin
    try
      eclApp:=CreateOleObject('Excel.Application');
      WorkBook:=CreateOleObject('Excel.Sheet');
    except
      Application.MessageBox('Microsoft Excel required.','Microsoft Excel',MB_OK+MB_ICONWarning);
      Exit;
    end;
    try
        WorkBook:=eclApp.workbooks.Add;
        for   i:=0   to   Query1.fieldcount-1   do
          begin
              eclApp.Cells(1,i+1):=Query1.fields[i].FieldName;
          end;

        Query1.First;
        j:=2;
        while   not   Query1.Eof   do
          begin
            for   i:=0   to  Query1.fieldcount-1  do
            begin
              eclApp.Cells(j,i+1):=Query1.Fields[i].Value;
            end;
          Query1.Next;
          inc(j);
          end;
       eclapp.columns.autofit;
       eclApp.Visible:=True;
       showmessage(' Export to Excel Succeed! ');
      except
        on   F:Exception   do
          showmessage(F.Message);
      end;
    end;

end;


end.
