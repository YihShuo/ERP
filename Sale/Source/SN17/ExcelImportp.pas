unit ExcelImportp;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, GridsEh, DBGridEh,comobj, DBClient,
  DBCtrls, DB, DBTables, AppEvnts;
  //,DB,DBTables

//暫存RY流水號 避免重複檢查本地DB
type
  TRYDate=record
    DDBH:string;
    FlowIndex:integer;
    IsUsing:boolean;
end;
type
  TGender=record
    Gend:byte;
    KFCC:array of string;
end;
//
type
  TExcelImport = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    ExcelDBGridEh: TDBGridEh;
    bbt1: TBitBtn;
    ExcelDS: TDataSource;
    bbt4: TBitBtn;
    bbt2: TBitBtn;
    DDZL_ODGrid: TDBGridEh;
    UPDDZL_OD: TUpdateSQL;
    DDZL_OD: TQuery;
    DDZLDS: TDataSource;
    OpenDialog: TOpenDialog;
    tmpQuery: TQuery;
    SubQuery: TQuery;
    Panel3: TPanel;
    bb0: TBitBtn;
    bb1: TBitBtn;
    ProcessLB: TLabel;
    bb2: TBitBtn;
    bb3: TBitBtn;
    bb4: TBitBtn;
    bb5: TBitBtn;
    bb6: TBitBtn;
    bb7: TBitBtn;
    bb8: TBitBtn;
    bb9: TBitBtn;
    bb10: TBitBtn;
    Label1: TLabel;
    XieXingEdit: TEdit;
    Label2: TLabel;
    SheHaoEdit: TEdit;
    Label4: TLabel;
    ArticleEdit: TEdit;
    Label3: TLabel;
    DDBHEdit: TEdit;
    Button1: TButton;
    Label5: TLabel;
    ImportDateQuery: TQuery;
    GroupBox1: TGroupBox;
    ExcelShowErr: TCheckBox;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    GroupBox2: TGroupBox;
    Label10: TLabel;
    DDZL_ODShowErr: TCheckBox;
    ApplicationEvents1: TApplicationEvents;
    bbt3: TBitBtn;
    ImportDateCombo: TComboBox;
    bbt6: TBitBtn;
    bbt5: TBitBtn;
    Label9: TLabel;
    RYEdit: TEdit;
    Label11: TLabel;
    Label12: TLabel;
    bbDelAll: TBitBtn;
    KFCQCombo: TComboBox;
    Label13: TLabel;
    DDZL_ODDDBH: TStringField;
    DDZL_ODDDLB: TStringField;
    DDZL_ODXieXing: TStringField;
    DDZL_ODSheHao: TStringField;
    DDZL_ODCCGB: TStringField;
    DDZL_ODArticle: TStringField;
    DDZL_ODKHBH: TStringField;
    DDZL_ODBB: TStringField;
    DDZL_ODKHPO: TStringField;
    DDZL_ODShipDate: TStringField;
    DDZL_ODCPLB: TStringField;
    DDZL_ODLABELCHARGE: TFloatField;
    DDZL_ODDDRQ: TStringField;
    DDZL_ODPairs: TIntegerField;
    DDZL_ODDest: TStringField;
    DDZL_ODDDGB: TStringField;
    DDZL_ODBUYNO: TStringField;
    DDZL_ODVersion: TSmallintField;
    DDZL_ODDDZT: TStringField;
    DDZL_ODUserID: TStringField;
    DDZL_ODUserDATE: TDateTimeField;
    DDZL_ODImportDATE: TDateTimeField;
    DDZL_ODYN: TStringField;
    DDZL_ODOGAC: TDateTimeField;
    DDZL_ODKGAC: TDateTimeField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure bbt1Click(Sender: TObject);
    procedure BB1Click(Sender: TObject);
    procedure bbt2Click(Sender: TObject);
    procedure DDZL_ODGridDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure bbt4Click(Sender: TObject);
    procedure bb0Click(Sender: TObject);
    procedure ExcelDBGridEhDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumnEh;
      State: TGridDrawState);
    procedure Button1Click(Sender: TObject);
    procedure DDZL_ODAfterOpen(DataSet: TDataSet);
    procedure bb10Click(Sender: TObject);
    procedure bb7Click(Sender: TObject);
    procedure bb8Click(Sender: TObject);
    procedure bb9Click(Sender: TObject);
    procedure bb4Click(Sender: TObject);
    procedure bb5Click(Sender: TObject);
    procedure bb6Click(Sender: TObject);
    procedure DDZL_ODGridDblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ExcelShowErrClick(Sender: TObject);
    procedure DDZL_ODShowErrClick(Sender: TObject);
    procedure bb3Click(Sender: TObject);
    procedure ApplicationEvents1Exception(Sender: TObject; E: Exception);
    procedure bbt3Click(Sender: TObject);
    procedure bbt6Click(Sender: TObject);
    procedure bbt5Click(Sender: TObject);
    procedure bbDelAllClick(Sender: TObject);
    procedure KFCQComboChange(Sender: TObject);
  private
    ExcelDataIsOK:boolean;
    ExcelDataSet:TDataSet;
    GenderInfo:array of TGender;
    OrderListExcel:Variant;
    OrderExcFN:string;//讀入Excel檔名
    { Private declarations }
    procedure Convert();            //轉換Excel 格式到VD3
    procedure Import2DB();          //將訂單資料寫入VD3
    procedure LoadImortDateCombo(); //重新讀取匯入日期清單
    procedure LoadGender();         //載入Gender對照表
    procedure CheckKHPORepeat();    //檢查MPO重複
    procedure QueryDDZL_OD(IsSortYN:boolean); //查詢
    function CheckGenderIsOK(ExcelGender:TStringlist):boolean; //檢查Gender是否符合對照表
    function CreateDataSet(FieldNM:TStringlist;FielSize:TStringlist): TDataSet;
    Function AddDataToSet(AdsData:TDataSet;FieldValue:TStringlist): TDataSet;
    procedure CheckOrderSection(DT:string);
  public
    RYID:String;
    { Public declarations }
  end;

var
  ExcelImport: TExcelImport;

implementation
   uses main1,DDZLXXCCp,FunUnit;
{$R *.dfm}
//產生DataSet
function TExcelImport.CreateDataSet(FieldNM:TStringlist;FielSize:TStringlist): TDataSet;
var
  dsTemp:TDataSet;
  cdsTemp: TClientDataSet;
  i:integer;
begin
  dsTemp := TDataSet.Create(nil);
  try
      //增加欄位
      with dsTemp.FieldDefs do
      begin
        for i:=0 to FieldNM.Count-1 do
        begin
          Add(FieldNM.Strings[i],ftString, strtoint(FielSize.Strings[i]));
        end;
       //
      end;
      //
      cdsTemp := TClientDataSet.Create(nil);
      if dsTemp.FieldDefs <> nil then
      begin
        cdsTemp.FieldDefs.Assign(dsTemp.FieldDefs);
        cdsTemp.CreateDataSet;
        result := (cdsTemp as TDataSet);
      end;
  finally
      dsTemp.Free;
  end;
end;
//新增資料到DataSet
Function TExcelImport.AddDataToSet(AdsData: TDataSet;FieldValue:TStringlist): TDataSet;
var i:integer;
begin
  //
  AdsData.Open;
  with AdsData do
  begin
    Append;//
    for i:=0 to FieldValue.Count-1 do
     Fields[i].AsString := FieldValue.Strings[i];
    post;//
  end;
end;
//檢查輸入Gender 和 Size是否符合資料完整性
function TExcelImport.CheckGenderIsOK(ExcelGender:TStringlist):boolean;
var i,j,k:integer;
    ExGend:Byte;
    IsFind,IsOK:boolean;
begin
  IsOK:=true;
  if ExcelGender.Count=0 then
  begin
    result:=false;
    exit;
  end;
  ExGend:=strtoint(ExcelGender.Strings[0]);//第一個值是Gender編號
  for i:=0 to High(GenderInfo) do
  begin
     if  GenderInfo[i].Gend=ExGend then
     begin
       for j:=1 to  ExcelGender.Count-1 do
       begin
         IsFind:=false;
         for k:=0 to High(GenderInfo[i].KFCC) do
         begin
           if ExcelGender.Strings[j]=GenderInfo[i].KFCC[k] then
           begin
            IsFind:=true;
            break;
           end;
         end;
         //Szie在 Gender裡面沒有找到
         if IsFind=false then
         begin
           IsOK:=false;
           break;
         end;
       end;
       break;
     end;
  end;
  result:=IsOK;
end;
//檢查Excel和DB KHPO是否重複
procedure TExcelImport.CheckKHPORepeat();
var SKHPO,EKHPO,LastKHPO:string;
    i:integer;
begin
  ExcelDataSet.First;
  SKHPO:=ExcelDataSet.FieldByName('MPO').AsString;
  ExcelDataSet.Last;
  EKHPO:=ExcelDataSet.FieldByName('MPO').AsString;
  with tmpQuery do
  begin
    active:=false;
    SQL.Clear;
    SQL.Add('select KHPO from DDZL_OD where (KHPO>='''+SKHPO+''' and KHPO<='''+EKHPO+''') order by KHPO' );
    active:=true;
  end;
  LastKHPO:='';//上一筆資料KHPO
  ExcelDataSet.First;
  while not  ExcelDataSet.Eof do
  begin
    while not tmpQuery.Eof do
    begin
      if (ExcelDataSet.FieldByName('MPO').AsString)=tmpQuery.FieldByName('KHPO').AsString then
      begin
        ExcelDataSet.Edit;
        ExcelDataSet.FieldByName('YN').AsString:='2';
        ExcelDataSet.Post;
        ExcelDataIsOK:=false;
        tmpQuery.Next;
        break;
      end;
      if  tmpQuery.FieldByName('KHPO').AsString>(ExcelDataSet.FieldByName('MPO').AsString) then
      begin
        break;
      end;
      tmpQuery.Next;
    end;
    //檢查兩筆資料KHPO重複
    if LastKHPO=ExcelDataSet.FieldByName('MPO').AsString then
    begin
      ExcelDataSet.Edit;
      ExcelDataSet.FieldByName('YN').AsString:='3';
      ExcelDataSet.Post;
      ExcelDataIsOK:=false;
    end;
    LastKHPO:=ExcelDataSet.FieldByName('MPO').AsString;
    ExcelDataSet.Next;
  end;
  tmpQuery.Active:=false;
  //
end;
//載入Gender 加速檢查減少DB查詢
procedure TExcelImport.LoadGender();
var i,j:integer;
begin
   with tmpQuery do
   begin
      Active:=false;
      SQL.Clear;
      SQL.Add('select GEND from Gender Group By Gend order by GEND');
      Active:=true;
   end;
   setlength(GenderInfo,tmpQuery.RecordCount);
   for i:=0 to tmpQuery.RecordCount-1 do
   begin
       GenderInfo[i].Gend:=tmpQuery.FieldByName('GEND').AsInteger;
       with SubQuery do
       begin
          Active:=false;
          SQL.Clear;
          SQL.Add('select KFCC from Gender where GEND='+tmpQuery.FieldByName('GEND').AsString+'order by KFCC');
          Active:=true;
       end;
       setlength(GenderInfo[i].KFCC,SubQuery.RecordCount);
       for j:=0 to SubQuery.RecordCount-1 do
       begin
          GenderInfo[i].KFCC[j]:=SubQuery.FieldByName('KFCC').AsString;
          SubQuery.Next;
       end;
       //下一筆
       tmpQuery.Next;
   end;
   tmpQuery.Active:=false;
   SubQuery.Active:=false;
end;
//載入ImportDateList
procedure TExcelImport.LoadImortDateCombo();
begin
  ImportDateQuery.Active:=false;
  ImportDateQuery.Active:=true;
  ImportDateCombo.Clear;
  while Not ImportDateQuery.Eof do
  begin
    ImportDateCombo.items.add(ImportDateQuery.FieldByName('ImportDate').AsString);
    ImportDateQuery.Next;
  end;
  if ImportDateCombo.Items.Count>0 then ImportDateCombo.ItemIndex:=0;
  ImportDateQuery.Active:=false;
end;
//===============================================================================
procedure TExcelImport.FormClose(Sender: TObject;
  var Action: TCloseAction);
var i:integer;
begin
  //釋放GenderInfo暫存
  if High(GenderInfo)>0 then
    for i:=0 to High(GenderInfo)  do
      setlength(GenderInfo[i].KFCC,0);
  setlength(GenderInfo,0);
  //釋放ExcelDataSet
  if ExcelDataSet<>nil then
  begin
      ExcelDataSet.Free;
      ExcelDataSet:=nil;
  end;
  //釋放DDZLXXCC Form
  if DDZLXXCC<>nil then
  begin
    DDZLXXCC.Free;
    DDZLXXCC:=nil;
  end;
  action:=cafree;
end;
//
procedure TExcelImport.FormDestroy(Sender: TObject);
begin
  ExcelImport:=nil;
end;
//讀取Excel
procedure TExcelImport.bbt1Click(Sender: TObject);
var
  i,j,offset:integer;
  ColSIndex,RowSIndex:integer;
  IsBreak:boolean;
  FieldStr,ValueStr,GendSubSQL:string;
  FieldList,FieldSize:TStringlist;
  //檢查Gender
  GenderParaList:TStringlist;
  MPOFooter:TColumnFooterEh;
begin

    if OpenDialog.Execute()=true then
    begin
      //
      ExcelShowErr.Enabled:=false;
      bbt1.Enabled:=false;
      bbt2.Enabled:=false;
      try
        //開啟Excel OLE
        OrderListExcel:=CreateOleObject('Excel.Application');
      except
        on E:Exception do
        begin
          bbt1.Enabled:=true;
          Application.MessageBox(PChar('NO EXCEL'+E.Message),'', MB_OK);
          EXIT;
        end;
      end;
      //
      try
        //判斷ExcelData是否Gnder和KHPO是否正確和沒有和DB重複
        ExcelDataIsOK:=true;
        //開啟Excel
        OrderExcFN:=OpenDialog.FileName;//Excel檔案名稱 備份複製用
        OrderListExcel.WorkBooks.Open(OpenDialog.FileName);
        OrderListExcel.WorkSheets[1].Activate;//第一頁為主
        ColSIndex:=1;//水平開始Index
        RowSIndex:=2;//垂直開始Index
        IsBreak:=false;
        //先取得欄位 欄位Index從[1,1]開始
        FieldList:=TStringlist.Create;
        FieldSize:=TStringlist.Create;
        GenderParaList:=TStringlist.Create; //Gender檢查Size是否存在
        //建立DataSet 42欄位
        for i:= 0 to 41 do //總共42各欄位資訊
        begin
           FieldStr:=OrderListExcel.Cells[RowSIndex-1,ColSIndex+i];
           FieldList.Add(FieldStr);
           FieldSize.Add('30'); //欄位大小 30 Char
        end;
        //額外建立暫存隱藏欄位 YN(3) 和 GenderSubSQL(1000)
        FieldList.Add('YN');     //暫存欄位儲存資料狀態
        FieldSize.Add('3');
        FieldList.Add('GenderSubSQL'); //暫存欄位儲存SQL Gender
        FieldSize.Add('1000');
        //創建動態 DataSet
        ExcelDS.DataSet:=nil;
        //ExcelDataSet.close;
        if ExcelDataSet<>nil then
        begin
          //清空資料
          ExcelDataSet.First;
          while not ExcelDataSet.eof do
          begin
            ExcelDataSet.delete;
          end;
        end else
        begin
          ExcelDataSet:=CreateDataSet(FieldList,FieldSize); //Crate DataSet給DBGrid顯示用
        end;
        //顯示資料
        offset:=0; //位移筆數從0開始
        repeat
           FieldList.Clear;
           if trim(OrderListExcel.Cells[RowSIndex+offset,ColSIndex])='' then  //起始Column沒有Excel值就離開
           begin
             IsBreak:=true;
           end else
           begin
             GendSubSQL:='';
             GenderParaList.Clear;
             for i:= 0 to 41 do
             begin
               ValueStr:=OrderListExcel.Cells[RowSIndex+offset,ColSIndex+i]; //取得每列Excel 欄位值
               FieldList.Add(ValueStr);
               //檢查Gender完整性是否使用者對錯Gnder和Size
               if ( (i=7) and (ValueStr<>'') ) then GenderParaList.Add(ValueStr);  //Gender不為空白
               if ( (i>=8) and (ValueStr<>'') and (ValueStr<>'0') ) then
               begin
                 if GenderParaList.Count>0 then //Gender 編號不為空值才繼續 Size
                    GenderParaList.Add(ExcelDataSet.Fields[i].FieldName);
                 GendSubSQL:=GendSubSQL+' (Gender.KFCC='''+ExcelDataSet.Fields[i].FieldName+''') or ';
                 funcObj.WriteErrorLog('GendSubSQL'+GendSubSQL);
               end;
             end;
             //檢查Gender Size是否符合
             if (CheckGenderIsOK(GenderParaList)=false) then
             begin
               FieldList.Add('1');   //Gender Size部份不符合 設定YN=1
               ExcelDataIsOK:=false;
             end else
               FieldList.Add('9');   //正常 設定YN=9
             //儲存GenderSubSQL
             if length(GendSubSQL)>0 then GendSubSQL:=' and ('+copy(GendSubSQL,1,length(GendSubSQL)-4)+')';
             FieldList.Add(GendSubSQL);  //正常 給GenderSubSQL欄位值
             //新增資料到DataSet
             AddDataToSet(ExcelDataSet,FieldList);
             //
             Inc(offset);//換下一筆
             application.ProcessMessages;
             ProcessLB.Caption:='Excel Count:'+inttostr(offset);
           end;
        until IsBreak=true;
        FieldList.Free;
        FieldSize.Free;
        GenderParaList.Free;
        //依照客戶PO排序
        (ExcelDataSet as TClientDataSet).IndexFieldNames:='MPO';
        //檢查顯示KHPO 是否重複
        CheckKHPORepeat();
        //顯示綁定資料
        ExcelDS.DataSet:=ExcelDataSet;  //綁定 顯示欄位
        for i:=0 to ExcelDS.DataSet.FieldCount-1 do
          ExcelDBGridEh.Columns[i].Width:=80;
        ExcelDBGridEh.Columns[ExcelDS.DataSet.FieldCount-1].Visible:=false;  //YN欄位隱藏
        ExcelDBGridEh.Columns[ExcelDS.DataSet.FieldCount-2].Visible:=false;  //GenderSubSQL欄位隱藏
        //MPO Footer
        MPOFooter:=ExcelDBGridEh.Columns[0].Footers.Add;
        MPOFooter.ValueType:=fvtCount;
        MPOFooter.DisplayFormat:='Total=0';
        MPOFooter.FieldName:='MPO';
        //關閉Excel
        OrderListExcel.WorkBooks.Close;
        OrderListExcel.quit;
        funcObj.StopAP('EXCEL.EXE');
        bbt1.Enabled:=true;
        if ExcelDataIsOK=true then
        begin
          bbt2.Enabled:=true //資料都沒問題才開啟轉換按鈕
        end else
        begin
          bbt3.Enabled:=true;
          ExcelShowErr.Enabled:=true;
        end;
        //備存原始檔案
        CopyFile(Pchar(OrderExcFN),PChar(ExtractFilePath(Application.ExeName)+'\Log\'+ExtractFileName(OrderExcFN)+'_Open_'+FormatDatetime('YYYYMMDDHHNNSS',now())),false );
      except
        on E:Exception do
        begin
          //關閉Excel
          OrderListExcel.WorkBooks.Close;
          OrderListExcel.quit;
          funcObj.StopAP('EXCEL.EXE');
          bbt1.Enabled:=true;
          showmessage(E.Message);
        end;
      end;
    end;
end;
procedure TExcelImport.BB1Click(Sender: TObject);
var testDS:TDataSet;
begin
 Panel2.Visible:=true;
end;
//Excel格式轉換到VD3
procedure TExcelImport.Convert();
var i:integer;
    ArticleStr:string;
begin
  //開啟批次寫入
  with DDZL_OD do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select * from DDZL_OD where 1=2');
    Active:=true;
    //
    cachedupdates:=true;
    requestlive:=true;
  end;
  //
  ExcelDataSet.First;
  for i:=0 to ExcelDataSet.RecordCount-1 do
  begin
    //關聯鞋型資料 先檢查 skumap
    with tmpQuery do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('select top 1 Article from skumap ');
      SQL.Add(' where SKU='''+trim(ExcelDataSet.FieldByName('GenStyle').AsString)+''' ');
      Active:=true;
    end;
    //如果skumap有對面資料的話,用skumap的Article,沒有就用excel GenStyel
    if tmpQuery.RecordCount>0 then
    begin
      if ((KFCQCombo.Text='JNG') or (KFCQCombo.Text='YQA')) then
      begin
        ArticleStr:=trim(tmpQuery.fieldByName('Article').AsString);
      end else
      begin
        ArticleStr:=trim(ExcelDataSet.fieldByName('GenStyle').AsString);
      end;
    end else
    begin
       ArticleStr:=trim(ExcelDataSet.fieldByName('GenStyle').AsString);
    end;
    with tmpQuery do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('select  xxzl.XieXing,xxzl.SheHao,xxzl.Article,IsNull(XXZLPD.Dropped,0) as Dropped from xxzl  ');
      SQL.Add('Left join XXZLPD on XXZLPD.XieXing=XXZL.XieXing and XXZLPD.SheHao=XXZL.SheHao ');
      SQL.Add('where XXZL.ARTICLE = '''+ArticleStr+''' and XXZL.KHDH=''036'' and XXZL.KFCQ='''+KFCQCombo.Text+'''  ');
      Active:=true;
    end;
    //
    With DDZL_OD do
    begin
      Insert;
      FieldByName('DDLB').AsString:='N';//都改為正式訂單
      //只找到符合一筆才處理
      if tmpQuery.FieldByName('Dropped').Value=false then
      begin
        if tmpQuery.RecordCount>=1  then
        begin
          FieldByName('XieXing').AsString:=tmpQuery.fieldByName('XieXing').AsString;
          FieldByName('SheHao').AsString:=tmpQuery.fieldByName('SheHao').AsString;
        end;
      end else
      begin
        Showmessage(tmpQuery.FieldByName('Article').AsString+' already Dropped by Business Department,can''t Order');
      end;

      FieldByName('CCGB').AsString:='U';
      FieldByName('Article').AsString:=ArticleStr;
      FieldByName('KHBH').AsString:='036';
      FieldByName('KHPO').AsString:=ExcelDataSet.FieldByName('MPO').AsString;
      FieldByName('ShipDate').AsString:=FormatDateTime('YYYYMMDD',strtodate(ExcelDataSet.FieldByName('RGAC').AsString));//ExcelDataSet.FieldByName('RGAC').AsString;//GetDate(ExcelDataSet.FieldByName('裝船日期').AsString);
      FieldByName('CPLB').AsString:='S';
      FieldByName('Pairs').AsString:=ExcelDataSet.FieldByName('Ord''d Qty').AsString;
      FieldByName('DDGB').AsString:=ExcelDataSet.FieldByName('Country').AsString;
      FieldByName('Dest').AsString:=ExcelDataSet.FieldByName('Dest').AsString;
      FieldByName('BUYNO').AsString:=ExcelDataSet.FieldByName('Buy').AsString;
      FieldByName('Version').AsString:='1';
      FieldByName('DDZT').AsString:='Y';

      Post;
    end;
    ExcelDataSet.Next;
    Application.ProcessMessages;
    ProcessLB.Caption:='Convert Count:'+inttostr(i+1);
  end;
  tmpQuery.Active:=false;
  //
end;
//
procedure TExcelImport.bbt2Click(Sender: TObject);
begin
  (ExcelDataSet as TClientDataSet).IndexFieldNames:='MPO'; //客戶PO欄位排序
  Convert();  //轉換格式到VD3
  //複製一份原始Excel檔日後爭議問題使用
  if FileExists(OrderExcFN)=true then
  begin
    if CopyFile(Pchar(OrderExcFN),PChar(ExtractFilePath(Application.ExeName)+'\Log\'+ExtractFileName(OrderExcFN)+'_'+FormatDatetime('YYYYMMDDHHNNSS',now())),false )=true then
       bb0.Enabled:=true //啟用匯入按鈕
    else
       showmessage('備份Excel匯入來源檔失敗!');
  end else
  begin
    showmessage(OrderExcFN+' Excel匯入來源檔不存在!');
  end;
end;

//
procedure TExcelImport.DDZL_ODGridDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if (DDZL_OD.FieldByName('DDBH').IsNull)  then //新增轉換狀態
  begin
    DDZL_ODGrid.canvas.font.color:=clLime;
    DDZL_ODGrid.defaultdrawcolumncell(rect,datacol,column,state);
  end;
  if (DDZL_OD.FieldByName('YN').AsString='2')  then //SizeRun有短少資料
  begin
    DDZL_ODGrid.canvas.font.color:=clblue;
    DDZL_ODGrid.defaultdrawcolumncell(rect,datacol,column,state);
  end;
  if (DDZL_OD.FieldByName('YN').AsString='3')  then //分段用不完整
  begin
    DDZL_ODGrid.canvas.font.color:=clFuchsia;
    DDZL_ODGrid.defaultdrawcolumncell(rect,datacol,column,state);
  end;
  if (DDZL_OD.FieldByName('YN').AsString='4')  then //SizeRun和總雙數不符合
  begin
    DDZL_ODGrid.canvas.font.color:=clGreen;
    DDZL_ODGrid.defaultdrawcolumncell(rect,datacol,column,state);
  end;
  if (DDZL_OD.FieldByName('YN').AsString='0')  then //刪除
  begin
    DDZL_ODGrid.canvas.font.color:=clred;
    DDZL_ODGrid.defaultdrawcolumncell(rect,datacol,column,state);
  end;
end;
//產生RY 和寫入資料庫
procedure TExcelImport.Import2DB();
var i,j,StartNum:integer;
    SQLStr,Gender_SQLStr,RYString:string;
    IsEmptyDDZL_Data:boolean;//第一次不曉得台灣訂單已經編到幾號
    DDZLOD_RYDate:array [0..500] of TRYDate;
    CheckSizeRunIsOK:boolean;
begin
  try
    //初始化暫存
    for i:=0 to High(DDZLOD_RYDate) do
    begin
      DDZLOD_RYDate[i].IsUsing:=false;
    end;
    //先讀取大於今天目前DDBH編號清單(去除流水號) Ex Y201312,Y201401,Y201402
    with tmpQuery do
    begin
      Active:=false;
      SQL.Clear;
      //ShipDate>getDate()-60 and 不過濾shipDate時間因為測試資料可能歷史資料會誤判Max(DDBH)
      SQL.Add('select SUBSTRING(DDBH,1,CharIndex(''-'',DDBH,1)-1) as DDBH,MAX(DDBH) as MaxDDBH,MIN(DDBH) as MinDDBH from DDZL_OD  where ');
      SQL.Add(' ( CharIndex(''-'',DDBH,1)>4 ) group by SUBSTRING(DDBH,1,CharIndex(''-'',DDBH,1)-1) order by SUBSTRING(DDBH,1,CharIndex(''-'',DDBH,1)-1)');
      SQLStr:=SQL.Text;
      //funcObj.WriteErrorLog(SQL.Text);
      Active:=true;
    end;
    //儲存暫存陣列RY月份編號和啟始流水號
    for i:=0 to tmpQuery.RecordCount-1 do
    begin
      for j:=0 to High(DDZLOD_RYDate) do
      begin
        if  DDZLOD_RYDate[j].IsUsing=false then
        begin
          DDZLOD_RYDate[j].DDBH:=tmpQuery.fieldByName('DDBH').AsString;
          DDZLOD_RYDate[j].FlowIndex:=  strtoint(Copy(tmpQuery.fieldByName('MaxDDBH').AsString, Pos('-',tmpQuery.fieldByName('MaxDDBH').AsString)+1,length(tmpQuery.fieldByName('MaxDDBH').AsString)));
          funcObj.WriteErrorLog( DDZLOD_RYDate[j].DDBH+' '+ inttostr(DDZLOD_RYDate[j].FlowIndex));
          DDZLOD_RYDate[j].IsUsing:=true;
          break;
        end;
      end;
      tmpQuery.Next;
    end;
    tmpQuery.Active:=false;
    //
    DDZL_OD.first;
    ExcelDataSet.First;
    for i:=0 to DDZL_OD.RecordCount-1 do
    begin
      case DDZL_OD.updatestatus of
      usinserted:
          begin
              //鞋型色號不為空值才新增
              if (( DDZL_OD.FieldByName('XieXing').AsString<>'') and ( DDZL_OD.FieldByName('Shehao').AsString<>'') )  then
              begin
                //先查看是否有同月份RY訂單流水號
                RYString:='';
                for j:=0 to High(DDZLOD_RYDate) do
                begin
                  if DDZLOD_RYDate[j].IsUsing=true then
                    if DDZLOD_RYDate[j].DDBH=RYID+Copy(DDZL_OD.FieldByName('ShipDate').AsString,3,4) then
                    begin
                      DDZLOD_RYDate[j].FlowIndex:=DDZLOD_RYDate[j].FlowIndex+1;//找到同月份流水號+1
                      RYString:=RYID+Copy(DDZL_OD.FieldByName('ShipDate').AsString,3,4)+'-'+Format('%.4d',[DDZLOD_RYDate[j].FlowIndex]);
                      break;
                    end;
                end;
                //同月份沒有起始編號  預設從1號開始
                if RYString='' then
                begin
                  for j:=0 to High(DDZLOD_RYDate) do
                  begin
                    if DDZLOD_RYDate[j].IsUsing=false then
                    begin
                      //固定前幾個月從5000號開始起跳
                      RYString:=Copy(DDZL_OD.FieldByName('ShipDate').AsString,3,4);

                      if ((RYString='1312') or (RYString='1401') or (RYString='1402') or (RYString='1403') or (RYString='1404')  ) then
                      begin
                        StartNum:=5000;
                        RYString:=RYID+Copy(DDZL_OD.FieldByName('ShipDate').AsString,3,4)+'-'+Format('%.4d',[StartNum]);
                      end else
                      begin
                        StartNum:=1;
                        RYString:=RYID+Copy(DDZL_OD.FieldByName('ShipDate').AsString,3,4)+'-'+Format('%.4d',[StartNum]);
                      end;
                      //
                      DDZLOD_RYDate[j].DDBH:=RYID+Copy(DDZL_OD.FieldByName('ShipDate').AsString,3,4);
                      DDZLOD_RYDate[j].FlowIndex:=StartNum;
                      DDZLOD_RYDate[j].IsUsing:=true;
                      break;
                    end;
                  end;
                end;
                //先檢查明細完整細
                //新增明細尺寸
                with tmpQuery do
                begin
                  Active:=false;
                  SQL.Clear;
                  SQL.Add('Select GENDER.*,xxzls3.LineNum from GENDER ');
                  SQL.Add('Left join xxzls3 on (xxzls3.XieXing='''+ DDZL_OD.FieldByName('XieXing').AsString+''') and (xxzls3.US_Size=GENDER.XXCC)');
                  SQL.Add('where GENDER.GEND= '+ExcelDataSet.FieldByName('Gender').AsString+ExcelDataSet.FieldByName('GenderSubSQL').AsString+' order by GENDER.XXCC');
                  Gender_SQLStr:=SQL.Text;
                  funcObj.WriteErrorLog(SQL.Text);
                  Active:=true;
                end;
                //
                CheckSizeRunIsOK:=true;
                for j:=0 to tmpQuery.RecordCount-1 do
                begin
                  //LineNum關聯不到
                  if trim(tmpQuery.fieldByName('LineNum').AsString)<>'' then
                  begin
                    with SubQuery do
                    begin
                      Active:=false;
                      SQL.Clear;
                      SQL.Add('Insert into DDZL_ODs (DDBH,LineNum,CC,Quantity,UserID,UserDate) Values');
                      SQL.Add('('''+RYString+''','''+tmpQuery.fieldByName('LineNum').AsString+''','''+tmpQuery.fieldByName('XXCC').AsString+''',');
                      SQL.Add(ExcelDataSet.FieldByName(tmpQuery.fieldByName('KFCC').AsString).AsString+','''+main.edit1.text+''',GetDate())');
                      SQLStr:=SQL.Text;
                      funcObj.WriteErrorLog(sql.Text);
                      ExecSQL();
                    end;
                    //新增DDZL_ODs失敗  SizeRUN短少失敗
                    if SubQuery.RowsAffected=0 then CheckSizeRunIsOK:=false;
                  end else
                  begin
                    //LineNum欄位為空值不能新增 SizeRUN短少失敗
                    CheckSizeRunIsOK:=false;
                    //funcObj.WriteErrorLog('LineNum data null:'+tmpQuery.SQL.Text);
                  end;
                  tmpQuery.Next;
                end;
                //新增主資料表
                DDZL_OD.Edit;
                DDZL_OD.FieldByName('DDBH').AsString:=RYString;
                DDZL_OD.FieldByName('USERID').AsString:=main.edit1.text;
                DDZL_OD.FieldByName('USERDATE').value:=Date();//GetDBServerDate();
                DDZL_OD.FieldByName('ImportDATE').value:=Date();//GetDBServerDate();
                if CheckSizeRunIsOK=true then
                   DDZL_OD.FieldByName('YN').AsString:='1'
                else
                   DDZL_OD.FieldByName('YN').AsString:='2';//SizeRun有短少資料因為 LineNum關聯不到關聯部到
                DDZL_OD.Post;
                UPDDZL_OD.apply(ukinsert);
              end;
          end;
      end;
      DDZL_OD.next;
      ExcelDataSet.Next;
      //
      Application.ProcessMessages;
      ProcessLB.Caption:='Import Count:'+inttostr(i+1);
    end;
    //
    CheckOrderSection(FormatDateTime('YYYY/MM/DD',date()));
    //更新訂單是否總數數和SizeRun不符
    with tmpQuery do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('update DDZL_OD Set YN=4');
      SQL.Add('from (');
      SQL.Add('select * from (');
      SQL.Add('select DDZL_OD.DDBH,DDZL_OD.Pairs,Sum(DDZL_ODS.Quantity) as  Quantity ');
      SQL.Add('from DDZL_OD');
      SQL.Add('left join DDZL_ODS on DDZL_OD.DDBH=DDZL_ODS.DDBH ');
      SQL.Add('where 1=1 and DDZL_OD.ImportDate='''+FormatDateTime('YYYY/MM/DD',date())+''' ');
      SQL.Add('Group by DDZL_OD.DDBH,DDZL_OD.Pairs ) DDZL_OD');
      SQL.Add('where Pairs<>Quantity ) iDDZL_OD');
      SQL.Add('where DDZL_OD.YN not in (''2'',''3'') and DDZL_OD.DDBH=iDDZL_OD.DDBH ');
      ExecSQL();
    end;
    //取消批次寫入
    with DDZL_OD do
    begin
      DDZL_OD.Active:=false;
      cachedupdates:=false;
      requestlive:=false;
      SQL.Clear;
      SQL.Add('select * from DDZL_OD where ImportDate='''+FormatDateTime('YYYY/MM/DD',date())+'''');
      Active:=true;
    end;

  except
    on E:Exception do
    begin
      funcObj.WriteErrorLog('Error:'+E.Message+' '+SQLStr+' '+Gender_SQLStr);
    end;
  end;
end;
//
procedure TExcelImport.CheckOrderSection(DT:string);
var SQLStr:string;
begin

   with tmpQuery do
   begin
     Active:=false;
     SQL.Clear;
     SQL.Add('Update DDZL_OD Set YN=3 where DDBH in (  ');
     SQL.Add('select XXZL.DDBH from (');
     SQL.Add('select  DDZL_OD.DDBH,Min(XXZLS.CCQQ) as CCQQ, Max(XXZLS.CCQZ) as CCQZ from DDZL_OD');
     SQL.Add('left join XXZLS on DDZL_OD.XieXing=XXZLS.XieXing  and XXZLS.SheHao=DDZL_OD.SheHao');
     SQL.Add('where DDZL_OD.ImportDATE='''+DT+'''    and IsNull(XXZLS.CCQQ,'''')<>'''' ');
     SQL.Add('Group by DDZL_OD.DDBH ) XXZL');
     SQL.Add('Left join (');
     SQL.Add('   Select DDZL_ODs.DDBH,Min(CC) as CC1,Max(CC) as CC2 from DDZL_OD,DDZL_ODS where DDZL_OD.DDBH=DDZL_ODS.DDBH and DDZL_OD.ImportDATE='''+DT+'''  Group by DDZL_ODs.DDBH ');
     SQL.Add('   )  DDZL on DDZL.DDBH=XXZL.DDBH ');
     SQL.Add('where ((CC1<CCQQ) or (CC2>CCQZ))   )');
     ExecSQL();
   end;

end;
//關閉
procedure TExcelImport.bbt4Click(Sender: TObject);
begin
  close;
end;

//
procedure TExcelImport.bb0Click(Sender: TObject);
begin
  RYID:=RYEdit.Text;
  if RYID<>'' then
  begin
    Import2DB();//寫入DB
    //轉換和匯入按鈕停用避免重新寫入DB
    bbt2.Enabled:=false;
    bbt3.Enabled:=false;
    bb0.Enabled:=false;
    //重新取得匯入日期清單
    LoadImortDateCombo();
  end;
end;

procedure TExcelImport.ExcelDBGridEhDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin

  if (ExcelDataSet.FieldByName('YN').AsString='2')  then //KHPO資料庫重複
  begin
    ExcelDBGridEh.canvas.font.color:=clblue;
    ExcelDBGridEh.defaultdrawcolumncell(rect,datacol,column,state);
  end;
  if (ExcelDataSet.FieldByName('YN').AsString='1')  then  //Gnder Size不存在
  begin
    ExcelDBGridEh.canvas.font.color:=clred;
    ExcelDBGridEh.defaultdrawcolumncell(rect,datacol,column,state);
  end;
  if (ExcelDataSet.FieldByName('YN').AsString='3')  then  //KHPO Excel重複
  begin
    ExcelDBGridEh.canvas.font.color:=clGreen;
    ExcelDBGridEh.defaultdrawcolumncell(rect,datacol,column,state);
  end;
end;
procedure TExcelImport.QueryDDZL_OD(IsSortYN:boolean);
begin
  with DDZL_OD do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select * from DDZL_OD ');
    SQL.Add('where  ImportDate='''+ImportDateCombo.Text+'''');
    SQL.Add(' and DDBH like '''+DDBHEdit.Text+'%''');
    SQL.Add(' and XieXing like '''+XieXingEdit.Text+'%''');
    SQL.Add(' and SheHao like '''+SheHaoEdit.Text+'%''');
    SQL.Add(' and Article like '''+ArticleEdit.Text+'%''');
    SQL.Add(' order by ');
    if IsSortYN=true then SQL.Add(' YN desc,KHPO asc,');
    SQL.Add(' DDBH');
    //funcObj.WriteErrorLog(SQL.Text);
    Active:=true;
  end;
   bb0.Enabled:=false;
   Panel2.Visible:=false;
end;
procedure TExcelImport.Button1Click(Sender: TObject);
begin
  CheckOrderSection(ImportDateCombo.Text);
  QueryDDZL_OD(DDZL_ODShowErr.Checked);
end;

procedure TExcelImport.DDZL_ODAfterOpen(DataSet: TDataSet);
begin
  if DDZL_OD.RecordCount>0 then
  begin
    bb3.Enabled:=true;
    bb7.Enabled:=true;
    bb8.Enabled:=true;
    bb9.Enabled:=true;
    bb10.Enabled:=true;
    bbDelAll.Enabled:=true;
    DDZL_ODShowErr.Enabled:=true;
  end else
  begin
    bb3.Enabled:=false;
    bb7.Enabled:=false;
    bb8.Enabled:=false;
    bb9.Enabled:=false;
    bb10.Enabled:=false;
    bbDelAll.Enabled:=false;
    DDZL_ODShowErr.Enabled:=false;
  end;
end;

procedure TExcelImport.bb10Click(Sender: TObject);
begin
  DDZL_OD.Last;
end;

procedure TExcelImport.bb7Click(Sender: TObject);
begin
    DDZL_OD.First;
end;

procedure TExcelImport.bb8Click(Sender: TObject);
begin
  DDZL_OD.Prior;
end;

procedure TExcelImport.bb9Click(Sender: TObject);
begin
  DDZL_OD.Next;
end;

procedure TExcelImport.bb4Click(Sender: TObject);
begin
  DDZL_ODGrid.ReadOnly:=false;
  with DDZL_OD do
    begin
      cachedupdates:=true;
      requestlive:=true;
      Edit;
  end;
  bb4.Enabled:=false;
  bb5.Enabled:=true;
  bb6.Enabled:=true;
  DDZL_ODGrid.Columns[0].ReadOnly:=true;  //DDBH
  DDZL_ODGrid.Columns[10].ReadOnly:=true; //DDRQ
end;

procedure TExcelImport.bb5Click(Sender: TObject);
var i:integer;
begin
  //
   DDZL_OD.first;
   for i:=1 to DDZL_OD.RecordCount do
   begin
      case DDZL_OD.updatestatus of
         usmodified:
          begin
            //還沒上傳到TW資料庫才可以修改
            if trim(DDZL_OD.FieldByName('DDRQ').AsString)='' then
            begin
              //刪除明細
              if DDZL_OD.FieldByName('YN').AsString='0' then
              begin
                with tmpQuery do
                begin
                  Active:=false;
                  SQL.Clear;
                  SQL.Add('delete from DDZL_ODs where DDBH='''+DDZL_OD.FieldByName('DDBH').AsString+'''');
                  ExecSQL();
                end;
                //刪除主檔
                with tmpQuery do
                begin
                  Active:=false;
                  SQL.Clear;
                  SQL.Add('Select DDBH from DDZL_ODs where DDBH='''+DDZL_OD.FieldByName('DDBH').AsString+'''');
                  Active:=true;
                  if RecordCount=0 then  UPDDZL_OD.apply(ukdelete);
                  Active:=false;
                end;
              end else
              begin
                  DDZL_OD.Edit;
                  DDZL_OD.FieldByName('USERID').AsString:=main.edit1.text;
                  DDZL_OD.FieldByName('USERDATE').value:=Date();//GetDBServerDate();
                  DDZL_OD.Post;
                  UPDDZL_OD.apply(ukModify);
              end;
            end;
            //
          end;
      end;
      DDZL_OD.Next;
   end;
   //
    with DDZL_OD do
    begin
      active:=false;
      requestlive:=false;
      cachedupdates:=false;
      active:=true;
    end;
    bb3.Enabled:=true;
    bbDelAll.Enabled:=true;
    bb5.Enabled:=false;
    bb6.Enabled:=false;
    DDZL_ODGrid.ReadOnly:=true;
end;

procedure TExcelImport.bb6Click(Sender: TObject);
begin
   with DDZL_OD do
   begin
      active:=false;
      requestlive:=false;
      cachedupdates:=false;
      active:=true;
   end;
   bb3.Enabled:=true;
   bbDelAll.Enabled:=true;
   bb5.Enabled:=false;
   bb6.Enabled:=false;
   DDZL_ODGrid.ReadOnly:=true;
end;

procedure TExcelImport.DDZL_ODGridDblClick(Sender: TObject);
begin
  if DDZL_OD.Active=true then
  begin
    if (DDZL_OD.FieldByName('DDBH').IsNull=false) then
    begin
      if DDZLXXCC=nil then DDZLXXCC:=TDDZLXXCC.create(self);
      DDZLXXCC.ShowModal;
    end;
  end;
end;

procedure TExcelImport.FormCreate(Sender: TObject);
begin
  //載入Gender暫存
  LoadGender();
  //載入Combox ImportDate
  LoadImortDateCombo();
  ExcelDataSet:=nil;
end;

procedure TExcelImport.ExcelShowErrClick(Sender: TObject);
begin

 if ExcelShowErr.Checked=true then
   (ExcelDataSet as TClientDataSet).IndexFieldNames:='YN'
 else
   (ExcelDataSet as TClientDataSet).IndexFieldNames:='MPO';
 ExcelDataSet.First;
end;

procedure TExcelImport.DDZL_ODShowErrClick(Sender: TObject);
begin
   QueryDDZL_OD(DDZL_ODShowErr.Checked);
end;

procedure TExcelImport.bb3Click(Sender: TObject);
begin
   //
   DDZL_ODGrid.ReadOnly:=false;
   with DDZL_OD do
      begin
        cachedupdates:=true;
        requestlive:=true;
        Edit;
        fieldbyname('YN').Value:='0';
   end;
   bb5.Enabled:=true;
   bb6.Enabled:=true;
   DDZL_ODGrid.Columns[0].ReadOnly:=true;  //DDBH
   DDZL_ODGrid.Columns[10].ReadOnly:=true; //DDRQ
   //
end;

procedure TExcelImport.ApplicationEvents1Exception(Sender: TObject;
  E: Exception);
begin
  funcObj.WriteErrorLog('Error:'+E.Message);
end;

procedure TExcelImport.bbt3Click(Sender: TObject);
begin
  ExcelDataSet.First;
  while  not ExcelDataSet.Eof  do
  begin
    if ExcelDataSet.FieldByName('YN').AsString<>'9' then
    begin
      ExcelDataSet.Delete;
    end else
    begin
      ExcelDataSet.Next;
    end;
  end;
  //匯入資料大於0
  if ExcelDataSet.RecordCount>0 then
  begin
    bbt2.Enabled:=true; //資料都沒問題才開啟轉換按鈕
    bbt3.Enabled:=false;
    ExcelShowErr.Enabled:=false;
  end;
end;

procedure TExcelImport.bbt6Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin
    if  DDZL_OD.active  then
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
          for   i:=0   to   DDZL_OD.fieldcount-1   do
            begin
                eclApp.Cells(1,i+1):=DDZL_OD.fields[i].FieldName;
            end;

          DDZL_OD.First;
          j:=2;
          while   not   DDZL_OD.Eof   do
            begin
              for   i:=0   to  DDZL_OD.fieldcount-1  do
              begin
                eclApp.Cells(j,i+1):=DDZL_OD.Fields[i].Value;
              end;
              if  DDZL_OD.FieldByName('YN').AsString='2' then  eclApp.Rows[j].Font.Color := clBlue; //Size Run不完整
            DDZL_OD.Next;
            inc(j);
            end;
         eclapp.columns.autofit;
         showmessage('Succeed');
         eclApp.Visible:=True;
      except
          on   F:Exception   do
            showmessage(F.Message);
      end;
    end;
end;
//匯出有問題顏色資料
procedure TExcelImport.bbt5Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j:integer;
    ExportAllData:boolean;
begin
  //匯出有顏色問題的部份
  if ExcelDataSet<>nil then
    if ExcelDataSet.Active then
    begin
      //匯出有問題資料(Y)或全部資料(N)
      if  Messagedlg(Pchar('Export only error data(Y) or all data(N)?'),mtInformation,[mbYES,mbNo],0)=mrYes then
        ExportAllData:=false
      else
        ExportAllData:=true;
      //
      try
        eclApp:=CreateOleObject('Excel.Application');
        WorkBook:=CreateOleObject('Excel.Sheet');
      except
        Application.MessageBox('No Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
        Exit;
      end;
      try
          WorkBook:=eclApp.workbooks.Add;
          for   i:=0   to   ExcelDataSet.fieldcount-2   do  //最後一個欄位Gender SubSQL查詢用不需要匯出
            begin
                eclApp.Cells(1,i+1):=ExcelDataSet.fields[i].FieldName;
            end;

          ExcelDataSet.First;
          j:=2;
          while   not   ExcelDataSet.Eof   do
          begin
            //匯出全部資料
            if ExportAllData=true then
            begin
              for   i:=0   to  ExcelDataSet.fieldcount-2  do
              begin
                  eclApp.Cells(j,i+1):=ExcelDataSet.Fields[i].Value;
              end;
              inc(j);
            end else
            begin
              //匯出不正常資料
              if  ExcelDataSet.Fields[ExcelDataSet.fieldcount-2].AsString<>'9' then
              begin
                for   i:=0   to  ExcelDataSet.fieldcount-2  do
                begin
                    eclApp.Cells(j,i+1):=ExcelDataSet.Fields[i].Value;
                end;
                if  ExcelDataSet.Fields[ExcelDataSet.fieldcount-2].AsString='1' then  eclApp.Rows[j].Font.Color := clRed;  //Gender Size不符合
                if  ExcelDataSet.Fields[ExcelDataSet.fieldcount-2].AsString='2' then  eclApp.Rows[j].Font.Color := clBlue; //MPO已經存在資料庫
                if  ExcelDataSet.Fields[ExcelDataSet.fieldcount-2].AsString='3' then  eclApp.Rows[j].Font.Color := clGreen;//MPO Excel發現重複
                inc(j);
              end;
            end;

            ExcelDataSet.Next;

          end;
          eclapp.columns.autofit;
          showmessage('Succeed');
          eclApp.Visible:=True;
      except
          on   F:Exception   do
            showmessage(F.Message);
      end;
    end;
end;



procedure TExcelImport.bbDelAllClick(Sender: TObject);
var i:integer;
begin
  //
   DDZL_ODGrid.ReadOnly:=false;
   with DDZL_OD do
   begin
    cachedupdates:=true;
    requestlive:=true;
    DDZL_OD.First;
     for i:=1 to DDZL_OD.RecordCount do
     begin
      edit;
      fieldbyname('YN').Value:='0';
      DDZL_OD.next;
     end;
   end;
   bb5.Enabled:=true;
   bb6.Enabled:=true;
   DDZL_ODGrid.Columns[0].ReadOnly:=true;  //DDBH
   DDZL_ODGrid.Columns[10].ReadOnly:=true; //DDRQ
   //
end;

procedure TExcelImport.KFCQComboChange(Sender: TObject);
begin
  if KFCQCombo.Text='JNG' then RYEdit.Text:='Y';
  if KFCQCombo.Text='BAO' then RYEdit.Text:='BY';
  if KFCQCombo.Text='YQA' then RYEdit.Text:='IC';
end;

end.
