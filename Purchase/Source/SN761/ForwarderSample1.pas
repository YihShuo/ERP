unit ForwarderSample1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, ShellAPI,Zlib,
  Dialogs, Buttons, DBTables, DB, StdCtrls, Grids, DBGrids, ExtCtrls,comobj,DBGridEhImpExp,
  GridsEh, DBGridEh, ComCtrls, Menus, DBCtrls;

type
  TForwarderSample = class(TForm)
    Panel2: TPanel;
    Panel3: TPanel;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    Panel1: TPanel;
    BB2: TBitBtn;
    BB3: TBitBtn;
    BB4: TBitBtn;
    BB5: TBitBtn;
    BB6: TBitBtn;
    BB7: TBitBtn;
    BB1: TBitBtn;
    bbt6: TBitBtn;
    qry_tmp: TQuery;
    Label2: TLabel;
    Label5: TLabel;
    SaveDialog1: TSaveDialog;
    DS2: TDataSource;
    Query2: TQuery;
    DBGridEh2: TDBGridEh;
    UpSQL2: TUpdateSQL;
    Query2zsdh: TStringField;
    Query2Full_Address: TMemoField;
    Query2Delivery_Term: TStringField;
    Query2FWD_VN: TMemoField;
    Query2FWD_AIR: TMemoField;
    Query2FWD_SEA: TMemoField;
    Query2Remark: TMemoField;
    Query2USERID: TStringField;
    Query2USERDATE: TDateTimeField;
    Query2YN: TStringField;
    Query2zsywjc: TStringField;
    Label1: TLabel;
    Panel4: TPanel;
    Splitter1: TSplitter;
    Qry_CONTRACT: TQuery;
    DS_CONTRACT: TDataSource;
    Pop_Contract: TPopupMenu;
    Upload1: TMenuItem;
    Download1: TMenuItem;
    DeleteReport1: TMenuItem;
    Qry_CONTRACTContract_File_Name: TStringField;
    Qry_CONTRACTContract_File_Size: TFloatField;
    Qry_CONTRACTContract_USERID: TStringField;
    Qry_CONTRACTContract_USERDATE: TDateTimeField;
    Splitter2: TSplitter;
    DBGridEh3: TDBGridEh;
    DBGridEh1: TDBGridEh;
    Splitter3: TSplitter;
    DBGridEh4: TDBGridEh;
    Splitter4: TSplitter;
    DBGridEh5: TDBGridEh;
    Qry_AIR: TQuery;
    DS_AIR: TDataSource;
    Pop_AIR: TPopupMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    Qry_HC: TQuery;
    DS_HC: TDataSource;
    Pop_HC: TPopupMenu;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    MenuItem6: TMenuItem;
    Qry_DHL: TQuery;
    DS_DHL: TDataSource;
    Pop_DHL: TPopupMenu;
    MenuItem7: TMenuItem;
    MenuItem8: TMenuItem;
    MenuItem9: TMenuItem;
    Qry_AIRAIR_File_Name: TStringField;
    Qry_AIRAIR_File_Size: TFloatField;
    Qry_AIRAIR_USERID: TStringField;
    Qry_AIRAIR_USERDATE: TDateTimeField;
    Qry_HCHC_File_Name: TStringField;
    Qry_HCHC_File_Size: TFloatField;
    Qry_HCHC_USERID: TStringField;
    Qry_HCHC_USERDATE: TDateTimeField;
    Qry_DHLDHL_File_Name: TStringField;
    Qry_DHLDHL_File_Size: TFloatField;
    Qry_DHLDHL_USERID: TStringField;
    Qry_DHLDHL_USERDATE: TDateTimeField;
    OpenDialog1: TOpenDialog;
    Query2Supplier: TMemoField;
    Query2Price_AIR: TMemoField;
    Query2Price_HC: TMemoField;
    Query2Price_DHL: TMemoField;
    Panel5: TPanel;
    Memo1: TMemo;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BB1Click(Sender: TObject);
    procedure BB2Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure BB7Click(Sender: TObject);
    procedure bbt6Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure DBGrideh1EditButtonClick(Sender: TObject);
    procedure DeleteReport1Click(Sender: TObject);
    procedure MenuItem3Click(Sender: TObject);
    procedure MenuItem6Click(Sender: TObject);
    procedure MenuItem9Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Upload1Click(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
    procedure MenuItem4Click(Sender: TObject);
    procedure MenuItem7Click(Sender: TObject);
    procedure Download1Click(Sender: TObject);
    procedure MenuItem2Click(Sender: TObject);
    procedure MenuItem5Click(Sender: TObject);
    procedure MenuItem8Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ForwarderSample: TForwarderSample;
  NDate:TDate;
  
implementation

uses main1, SupplierSample_Purchaser1, SupplierSample_Style1,SupplierSample_PurchaserA1,
  SupplierSample_Group1, SupplierSample_Country1,
  SupplierSample_SamplePolicy1, SamplePolicy1;

{$R *.dfm}

procedure TForwarderSample.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if BB5.enabled then
  begin
    messagedlg('You have to save data first.',mtwarning,[mbyes],0);
    action:=canone;
  end
  else
   action:=Cafree;
end;

procedure TForwarderSample.BB1Click(Sender: TObject);
begin
panel3.Visible:=true;
end;

procedure TForwarderSample.BB2Click(Sender: TObject);
begin
with query2 do
  begin
    cachedupdates:=true;
    requestlive:=true;
    Insert;
  end;
//DBGrideh1.columns[5].ButtonStyle:=cbsEllipsis;
Button1.enabled:=false;
BB2.enabled:=FALSE;
BB4.enabled:=FALSE;
bb5.enabled:=true;
bb6.enabled:=true;

end;

procedure TForwarderSample.BB4Click(Sender: TObject);
begin
with query2 do
  begin
    cachedupdates:=true;
    requestlive:=true;
    query2.edit;
  end;

//DBGrideh1.columns[5].ButtonStyle:=cbsEllipsis;
Button1.enabled:=false;
BB2.enabled:=FALSE;
BB4.enabled:=FALSE;
bb5.enabled:=true;
bb6.enabled:=true;

end;

procedure TForwarderSample.BB5Click(Sender: TObject);
var i:integer;
begin
try
    Query2.first;
    for i:=1 to Query2.RecordCount do
      begin
        case Query2.updatestatus of
          usinserted:
            begin
              if Query2.fieldbyname('ZSDH').isnull or (trim(Query2.fieldbyname('ZSDH').Value) = '') then
                begin
                  Query2.delete;
                end
                 else
                   begin
                     {
                     query1.edit;
                     query1.FieldByName('ZSDH').Value:=Uppercase(query1.FieldByName('ZSDH').Value);
                     query1.FieldByName('ZSYWJC').Value:=Uppercase(query1.FieldByName('ZSYWJC').Value);
                     if query1.FieldByName('ZSQM').AsString<>''  then
                        query1.FieldByName('ZSQM').Value :=Uppercase(query1.FieldByName('ZSQM').Value);;
                     query1.FieldByName('ZSJC').Value :=query1.FieldByName('ZSYWJC').Value;
                     query1.FieldByName('USERDATE').Value:=date;
                     query1.FieldByName('USERID').Value:=main.edit1.text;
                     Query1.FieldByName('YN').Value:='2';
                     }
                     upsql2.apply(ukinsert);
                   end;
            end;
          usmodified:
             begin
               if Query2.fieldbyname('YN').value='0' then
                 begin
                       upsql2.Apply(ukdelete);
                 end
                 else
                   begin
                         query2.edit;
                         query2.FieldByName('USERDATE').Value:=date;
                         query2.FieldByName('USERID').Value:=main.edit1.text;
                         upsql2.apply(ukmodify);
                   end;
             end;
        end;
        query2.next;
      end;
    query2.active:=false;
    query2.cachedupdates:=false;
    query2.requestlive:=false;
    query2.active:=true;
//DBGrideh1.columns[5].ButtonStyle:=cbsnone;
Button1.enabled:=True;
BB2.enabled:=True;
BB4.enabled:=True;
bb5.enabled:=false;
bb6.enabled:=false;

except
  Messagedlg('Have wrong, can not save!',mtwarning,[mbyes],0);
end;


end;

procedure TForwarderSample.Button1Click(Sender: TObject);
begin
Qry_CONTRACT.Active:=false;
Qry_AIR.Active:=false;
Qry_HC.Active:=false;
Qry_DHL.Active:=false;

with Query2 do
  begin
    active:=false;
    sql.clear;
    sql.add('select  ForwarderSample.zsdh,  ');
    sql.add('        ForwarderSample.Supplier,     ');
    sql.add('        ForwarderSample.Full_Address,  ');
    sql.add('        ForwarderSample.Delivery_Term,  ');
    sql.add('        ForwarderSample.FWD_VN,  ');
    sql.add('        ForwarderSample.FWD_AIR,  ');
    sql.add('        ForwarderSample.FWD_SEA,  ');
    sql.add('        ForwarderSample.Price_AIR, ');
    sql.add('        ForwarderSample.Price_HC, ');
    sql.add('        ForwarderSample.Price_DHL, ');
    sql.add('        ForwarderSample.Remark,  ');
    sql.add('        ForwarderSample.USERID,  ');
    sql.add('        ForwarderSample.USERDATE,  ');
    sql.add('        ForwarderSample.YN,  ');
    sql.add('        zszl.zsywjc  ');
    sql.add('from ForwarderSample  ');
    sql.add('left join zszl on zszl.zsdh=ForwarderSample.zsdh  ');
    sql.add('where 1=1 ');
    if length(Edit1.Text) > 0 then
       sql.add(' and ZSDH like '+''''+edit1.Text+'%'+'''');
    if length(Edit2.Text) > 0 then
       sql.add(' and ZSYWJC like ''%'+edit2.Text+'%'+'''');
    sql.add('order by zsywjc');
    active:=true;
  end;
Qry_CONTRACT.Active:=true;
Qry_AIR.Active:=true;
Qry_HC.Active:=true;
Qry_DHL.Active:=true;

//DBGrideh1.columns[1].ButtonStyle:=cbsnone;
bb2.enabled:=true;
bb4.enabled:=true;
bb5.enabled:=false;
bb6.enabled:=false;
bb7.enabled:=true;
bbt6.enabled:=true;
panel3.Visible:=false;
end;

procedure TForwarderSample.BB6Click(Sender: TObject);
begin
with query2 do
  begin
    active:=false;
    cachedupdates:=false;
    requestlive:=false;
    active:=true;
  end;
//DBGrideh1.columns[5].ButtonStyle:=cbsnone;
Button1.enabled:=True;
BB2.enabled:=True;
BB4.enabled:=True;
bb5.enabled:=false;
bb6.enabled:=false;

end;

procedure TForwarderSample.BB7Click(Sender: TObject);
begin
close;
end;

procedure TForwarderSample.bbt6Click(Sender: TObject);
var   a:string;
      eclApp,WorkBook:olevariant;
      i,j:integer;
  ExpClass:TDBGridEhExportClass;
  Ext, target:String;
  tdbgh : TDBGridEh;
 begin
      tdbgh := DBGridEh2  ;
  if (tdbgh is TDBGridEh) then
    if SaveDialog1.Execute then
    begin
      case SaveDialog1.FilterIndex of
        1: begin ExpClass := TDBGridEhExportAsXLS; Ext := 'xls'; end;
        2: begin ExpClass := TDBGridEhExportAsCSV; Ext := 'csv'; end;
        3: begin ExpClass := TDBGridEhExportAsHTML; Ext := 'htm'; end;
        4: begin ExpClass := TDBGridEhExportAsRTF; Ext := 'rtf'; end;
        5: begin ExpClass := TDBGridEhExportAsText; Ext := 'txt'; end;
      else
        ExpClass := nil; Ext := '';
      end;
      if ExpClass <> nil then
      begin
        if UpperCase(Copy(SaveDialog1.FileName,Length(SaveDialog1.FileName)-2,3)) <> UpperCase(Ext) then
          SaveDialog1.FileName := SaveDialog1.FileName + '.' + Ext;
        SaveDBGridEhToExportFile(ExpClass,tdbgh,SaveDialog1.FileName,true);
        if Application.MessageBox('Do you want to open the exported file?','Open file',MB_YESNO) = IDYES then
          shellexecute(handle,'open',pchar(SaveDialog1.FileName),nil,nil,SW_SHOWNORMAL);
      end;
    end;


end;

procedure TForwarderSample.FormDestroy(Sender: TObject);
begin
ForwarderSample:=nil;
end;

procedure TForwarderSample.DBGrideh1EditButtonClick(Sender: TObject);
begin
SupplierSample_PurchaserA:=TSupplierSample_PurchaserA.create(self);
SupplierSample_PurchaserA.show;
end;

procedure TForwarderSample.DeleteReport1Click(Sender: TObject);
begin
    if not Qry_CONTRACT.FieldByName('Contract_File_Name').IsNull then
       begin
         if messagedlg('Do you want to delete Contract ?',mtconfirmation,[mbYes,MbNo],0)=mrYes then
            begin
                with qry_tmp do
                begin
                    active:=false;
                    sql.Clear;
                    sql.Add(' update ForwarderSample ');
                    sql.Add(' set Contract_Zipfile=null,Contract_File_Name=null,Contract_File_Size=null');
                    sql.Add('    ,Contract_USERID='''+main.edit1.text+'''');
                    sql.Add('    ,Contract_USERDATE='''+formatdatetime('yyyy/MM/dd hh:mm:ss',Ndate)+'''');
                    sql.Add(' where zsdh='''+Query2.FieldByName('zsdh').AsString+'''');
                    execsql;
                    Qry_CONTRACT.Active:=FALSE;
                    Qry_CONTRACT.Active:=TRUE;
                    Query2.Active:=FALSE;
                    Query2.Active:=TRUE;
                end;
            end;
       end;
end;

procedure TForwarderSample.MenuItem3Click(Sender: TObject);
begin
    if not Qry_AIR.FieldByName('AIR_File_Name').IsNull then
       begin
         if messagedlg('Do you want to delete THE FREIGHT(Air)  ?',mtconfirmation,[mbYes,MbNo],0)=mrYes then
            begin
                with qry_tmp do
                begin
                    active:=false;
                    sql.Clear;
                    sql.Add(' update ForwarderSample ');
                    sql.Add(' set AIR_Zipfile=null,AIR_File_Name=null,AIR_File_Size=null');
                    sql.Add('    ,AIR_USERID='''+main.edit1.text+'''');
                    sql.Add('    ,AIR_USERDATE='''+formatdatetime('yyyy/MM/dd hh:mm:ss',Ndate)+'''');
                    sql.Add(' where zsdh='''+Query2.FieldByName('zsdh').AsString+'''');
                    execsql;
                    Qry_AIR.Active:=FALSE;
                    Qry_AIR.Active:=TRUE;
                    Query2.Active:=FALSE;
                    Query2.Active:=TRUE;
                end;
            end;
       end;

end;

procedure TForwarderSample.MenuItem6Click(Sender: TObject);
begin
    if not Qry_HC.FieldByName('HC_File_Name').IsNull then
       begin
         if messagedlg('Do you want to delete THE FREIGHT(HC) ?',mtconfirmation,[mbYes,MbNo],0)=mrYes then
            begin
                with qry_tmp do
                begin
                    active:=false;
                    sql.Clear;
                    sql.Add(' update ForwarderSample ');
                    sql.Add(' set HC_Zipfile=null,HC_File_Name=null,HC_File_Size=null');
                    sql.Add('    ,HC_USERID='''+main.edit1.text+'''');
                    sql.Add('    ,HC_USERDATE='''+formatdatetime('yyyy/MM/dd hh:mm:ss',Ndate)+'''');
                    sql.Add(' where zsdh='''+Query2.FieldByName('zsdh').AsString+'''');
                    execsql;
                    Qry_HC.Active:=FALSE;
                    Qry_HC.Active:=TRUE;
                    Query2.Active:=FALSE;
                    Query2.Active:=TRUE;
                end;
            end;
       end;
end;

procedure TForwarderSample.MenuItem9Click(Sender: TObject);
begin
    if not Qry_DHL.FieldByName('DHL_File_Name').IsNull then
       begin
         if messagedlg('Do you want to delete THE FREIGHT(DHL) ?',mtconfirmation,[mbYes,MbNo],0)=mrYes then
            begin
                with qry_tmp do
                begin
                    active:=false;
                    sql.Clear;
                    sql.Add(' update ForwarderSample ');
                    sql.Add(' set DHL_Zipfile=null,DHL_File_Name=null,DHL_File_Size=null');
                    sql.Add('    ,DHL_USERID='''+main.edit1.text+'''');
                    sql.Add('    ,DHL_USERDATE='''+formatdatetime('yyyy/MM/dd hh:mm:ss',Ndate)+'''');
                    sql.Add(' where zsdh='''+Query2.FieldByName('zsdh').AsString+'''');
                    execsql;
                    Qry_DHL.Active:=FALSE;
                    Qry_DHL.Active:=TRUE;
                    Query2.Active:=FALSE;
                    Query2.Active:=TRUE;
                end;
            end;
       end;
end;

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

//      DestStream.Position := length(VER_INFO);

      //從 DestStream流中載入圖像流

      UnCompressedStream.LoadFromStream(DestStream);

   finally

      FreeMem(Buffer);
      DestStream.Free;

   end;

end;


procedure TForwarderSample.FormCreate(Sender: TObject);
begin
with qry_tmp do
  begin
    active:=false;
    sql.Clear;
    sql.add('select getdate() as NDate ');
    active:=true;
    NDate:=fieldbyname('NDate').Value;
    active:=false;
  end;

end;

procedure TForwarderSample.Upload1Click(Sender: TObject);
var
   SM: TMemoryStream;
begin
   IF (Query2.FieldByName('zsdh').AsString='')  THEN
      BEGIN
        Messagedlg('Pls keyin supplier data first!',mtwarning,[mbyes],0);
        ABORT;
      END;
   if OpenDialog1.Execute then
      begin
         SM := TMemoryStream.Create;
         try
            Sm.LoadFromFile(OpenDialog1.FileName);
            SM.Position := 0;
            Compressit(sm, clDefault);
            with qry_tmp do
            begin
              active:=false;
              sql.Clear;
              SQL.Add('update ForwarderSample set Contract_Zipfile=:Contract_Zipfile,Contract_File_Name=:Contract_File_Name,Contract_File_Size=:Contract_File_Size,Contract_USERID=:Contract_USERID,Contract_USERDATE=:Contract_USERDATE ');//進行插入操作
              sql.Add(' where zsdh='''+Query2.FieldByName('zsdh').AsString+'''');
              ParamByName('Contract_Zipfile').LoadFromStream(sm,ftBlob);//讀取保存的壓縮檔
              ParamByName('Contract_File_Name').Value:=extractfilename(OpenDialog1.FileName);
              ParamByName('Contract_File_Size').Value:=strtoint(inttostr(sm.Size));
              ParamByName('Contract_USERID').Value:=main.edit1.text;
              ParamByName('Contract_USERDATE').Value:=formatdatetime('yyyy/MM/dd',Ndate);
              ExecSQL;
              Query2.Active:=FALSE;
              Query2.Active:=TRUE;
              Qry_CONTRACT.Active:=FALSE;
              Qry_CONTRACT.Active:=TRUE;
            end;
         finally
            SM.Free;
         end;
      end;

end;

procedure TForwarderSample.MenuItem1Click(Sender: TObject);
var
   SM: TMemoryStream;
begin
   IF (Query2.FieldByName('zsdh').AsString='')  THEN
      BEGIN
        Messagedlg('Pls keyin supplier data first!',mtwarning,[mbyes],0);
        ABORT;
      END;
   if OpenDialog1.Execute then
      begin
         SM := TMemoryStream.Create;
         try
            Sm.LoadFromFile(OpenDialog1.FileName);
            SM.Position := 0;
            Compressit(sm, clDefault);
            with qry_tmp do
            begin
              active:=false;
              sql.Clear;
              SQL.Add('update ForwarderSample set AIR_Zipfile=:AIR_Zipfile,AIR_File_Name=:AIR_File_Name,AIR_File_Size=:AIR_File_Size,AIR_USERID=:AIR_USERID,AIR_USERDATE=:AIR_USERDATE ');//進行插入操作
              sql.Add(' where zsdh='''+Query2.FieldByName('zsdh').AsString+'''');
              ParamByName('AIR_Zipfile').LoadFromStream(sm,ftBlob);//讀取保存的壓縮檔
              ParamByName('AIR_File_Name').Value:=extractfilename(OpenDialog1.FileName);
              ParamByName('AIR_File_Size').Value:=strtoint(inttostr(sm.Size));
              ParamByName('AIR_USERID').Value:=main.edit1.text;
              ParamByName('AIR_USERDATE').Value:=formatdatetime('yyyy/MM/dd',Ndate);
              ExecSQL;
              Query2.Active:=FALSE;
              Query2.Active:=TRUE;
              Qry_AIR.Active:=FALSE;
              Qry_AIR.Active:=TRUE;
            end;
         finally
            SM.Free;
         end;
      end;

end;

procedure TForwarderSample.MenuItem4Click(Sender: TObject);
var
   SM: TMemoryStream;
begin
   IF (Query2.FieldByName('zsdh').AsString='')  THEN
      BEGIN
        Messagedlg('Pls keyin supplier data first!',mtwarning,[mbyes],0);
        ABORT;
      END;
   if OpenDialog1.Execute then
      begin
         SM := TMemoryStream.Create;
         try
            Sm.LoadFromFile(OpenDialog1.FileName);
            SM.Position := 0;
            Compressit(sm, clDefault);
            with qry_tmp do
            begin
              active:=false;
              sql.Clear;
              SQL.Add('update ForwarderSample set HC_Zipfile=:HC_Zipfile,HC_File_Name=:HC_File_Name,HC_File_Size=:HC_File_Size,HC_USERID=:HC_USERID,HC_USERDATE=:HC_USERDATE ');//進行插入操作
              sql.Add(' where zsdh='''+Query2.FieldByName('zsdh').AsString+'''');
              ParamByName('HC_Zipfile').LoadFromStream(sm,ftBlob);//讀取保存的壓縮檔
              ParamByName('HC_File_Name').Value:=extractfilename(OpenDialog1.FileName);
              ParamByName('HC_File_Size').Value:=strtoint(inttostr(sm.Size));
              ParamByName('HC_USERID').Value:=main.edit1.text;
              ParamByName('HC_USERDATE').Value:=formatdatetime('yyyy/MM/dd',Ndate);
              ExecSQL;
              Query2.Active:=FALSE;
              Query2.Active:=TRUE;
              Qry_HC.Active:=FALSE;
              Qry_HC.Active:=TRUE;
            end;
         finally
            SM.Free;
         end;
      end;

end;

procedure TForwarderSample.MenuItem7Click(Sender: TObject);
var
   SM: TMemoryStream;
begin
   IF (Query2.FieldByName('zsdh').AsString='')  THEN
      BEGIN
        Messagedlg('Pls keyin supplier data first!',mtwarning,[mbyes],0);
        ABORT;
      END;
   if OpenDialog1.Execute then
      begin
         SM := TMemoryStream.Create;
         try
            Sm.LoadFromFile(OpenDialog1.FileName);
            SM.Position := 0;
            Compressit(sm, clDefault);
            with qry_tmp do
            begin
              active:=false;
              sql.Clear;
              SQL.Add('update ForwarderSample set DHL_Zipfile=:DHL_Zipfile,DHL_File_Name=:DHL_File_Name,DHL_File_Size=:DHL_File_Size,DHL_USERID=:DHL_USERID,DHL_USERDATE=:DHL_USERDATE ');//進行插入操作
              sql.Add(' where zsdh='''+Query2.FieldByName('zsdh').AsString+'''');
              ParamByName('DHL_Zipfile').LoadFromStream(sm,ftBlob);//讀取保存的壓縮檔
              ParamByName('DHL_File_Name').Value:=extractfilename(OpenDialog1.FileName);
              ParamByName('DHL_File_Size').Value:=strtoint(inttostr(sm.Size));
              ParamByName('DHL_USERID').Value:=main.edit1.text;
              ParamByName('DHL_USERDATE').Value:=formatdatetime('yyyy/MM/dd',Ndate);
              ExecSQL;
              Query2.Active:=FALSE;
              Query2.Active:=TRUE;
              Qry_DHL.Active:=FALSE;
              Qry_DHL.Active:=TRUE;
            end;
         finally
            SM.Free;
         end;
      end;

end;

procedure TForwarderSample.Download1Click(Sender: TObject);
var
  blob: TBlobStream;
  SM,DM: TMemoryStream;
begin
  if not Qry_CONTRACT.FieldByName('Contract_File_Name').IsNull then
  begin
    savedialog1.FileName :=  Qry_CONTRACT.FieldByName('Contract_File_Name').AsString;
    if SaveDialog1.Execute then
      begin
        with qry_tmp do
          begin
           active:=false;
           sql.Clear;
           sql.add('select Contract_Zipfile FROM ForwarderSample ');
              sql.Add(' where zsdh='''+Query2.FieldByName('zsdh').AsString+'''');
           active:=true;
          end;

         blob := TBlobStream.Create((qry_tmp.FieldByName('Contract_Zipfile') as TBlobField), bmRead);
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
          qry_tmp.active:=false;
      end;
  end;

end;

procedure TForwarderSample.MenuItem2Click(Sender: TObject);
var
  blob: TBlobStream;
  SM,DM: TMemoryStream;
begin
  if not Qry_AIR.FieldByName('AIR_File_Name').IsNull then
  begin
    savedialog1.FileName :=  Qry_AIR.FieldByName('AIR_File_Name').AsString;
    if SaveDialog1.Execute then
      begin
        with qry_tmp do
          begin
           active:=false;
           sql.Clear;
           sql.add('select AIR_Zipfile FROM ForwarderSample ');
              sql.Add(' where zsdh='''+Query2.FieldByName('zsdh').AsString+'''');
           active:=true;
          end;

         blob := TBlobStream.Create((qry_tmp.FieldByName('AIR_Zipfile') as TBlobField), bmRead);
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
          qry_tmp.active:=false;
      end;
  end;

end;

procedure TForwarderSample.MenuItem5Click(Sender: TObject);
var
  blob: TBlobStream;
  SM,DM: TMemoryStream;
begin
  if not Qry_HC.FieldByName('HC_File_Name').IsNull then
  begin
    savedialog1.FileName :=  Qry_HC.FieldByName('HC_File_Name').AsString;
    if SaveDialog1.Execute then
      begin
        with qry_tmp do
          begin
           active:=false;
           sql.Clear;
           sql.add('select HC_Zipfile FROM ForwarderSample ');
              sql.Add(' where zsdh='''+Query2.FieldByName('zsdh').AsString+'''');
           active:=true;
          end;

         blob := TBlobStream.Create((qry_tmp.FieldByName('HC_Zipfile') as TBlobField), bmRead);
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
          qry_tmp.active:=false;
      end;
  end;

end;

procedure TForwarderSample.MenuItem8Click(Sender: TObject);
var
  blob: TBlobStream;
  SM,DM: TMemoryStream;
begin
  if not Qry_DHL.FieldByName('DHL_File_Name').IsNull then
  begin
    savedialog1.FileName :=  Qry_DHL.FieldByName('DHL_File_Name').AsString;
    if SaveDialog1.Execute then
      begin
        with qry_tmp do
          begin
           active:=false;
           sql.Clear;
           sql.add('select DHL_Zipfile FROM ForwarderSample ');
              sql.Add(' where zsdh='''+Query2.FieldByName('zsdh').AsString+'''');
           active:=true;
          end;

         blob := TBlobStream.Create((qry_tmp.FieldByName('DHL_Zipfile') as TBlobField), bmRead);
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
          qry_tmp.active:=false;
      end;
  end;
end;

end.
