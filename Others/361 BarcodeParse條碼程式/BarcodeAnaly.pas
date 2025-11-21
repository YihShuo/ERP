unit BarcodeAnaly;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, Grids, DBGrids, StdCtrls, DBTables ,DBClient,
  ExtCtrls,Comobj, Buttons, ComCtrls;

type
  TBarCodeForm = class(TForm)
    ADOConn: TADOConnection;
    Qry: TADOQuery;
    ExcelDS: TDataSource;
    ConQry: TADOQuery;
    ArtQry: TADOQuery;
    ColQry: TADOQuery;
    GenQry: TADOQuery;
    Siz_UQry: TADOQuery;
    Siz_BQry: TADOQuery;
    Siz_QQry: TADOQuery;
    ArtQryID: TWideStringField;
    ArtQryName: TWideStringField;
    ColQryID: TWideStringField;
    ColQryName: TWideStringField;
    Siz_BQryID: TWideStringField;
    Siz_BQryBR: TWideStringField;
    Siz_UQryID: TWideStringField;
    Siz_UQryUS: TWideStringField;
    OpenXLS: TOpenDialog;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Panel1: TPanel;
    BB1: TBitBtn;
    bbt6: TBitBtn;
    DBGrid: TDBGrid;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    Panel3: TPanel;
    RB1: TRadioButton;
    RB2: TRadioButton;
    RB3: TRadioButton;
    RB4: TRadioButton;
    RB5: TRadioButton;
    StringGrid1: TStringGrid;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BB1Click(Sender: TObject);
    procedure bbt6Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    AppDir:String;
    BarCodeList:TStringlist;//條碼清單
    ExcelDataSet:TDataSet;
    { Private declarations }
    procedure ParseBarCodeList();//解析條碼
    procedure CreateView();
    procedure ExportXLS();
    procedure ExportXLS1(); //匯出格式
    procedure ReadBarcodeList(FN:string); //讀取BarcodeID List
    //
    Function GetCountry(ID:string):string;
    Function GetArticle(ID:string):String;
    Function GetColor(ID:string):String;
    Function GetGender(ID:string):String;
    Function GetSizeRun(ID:string;Col:Byte):String;
    Function GetTotalQty(ID:string):string;
    //更新欄位項目
    procedure ClearStringGrid();
    procedure UpdateItem(NM:string);
    procedure UpdatePackingItem();
    //
    function CreateDataSet(FieldNM:TStringlist;FielSize:TStringlist): TDataSet;
    Function AddDataToSet(AdsData:TDataSet;FieldValue:TStringlist): TDataSet;
  public
    { Public declarations }
  end;

var
  BarCodeForm: TBarCodeForm;

implementation
   uses FunUnit;
{$R *.dfm}
//產生DataSet
function TBarCodeForm.CreateDataSet(FieldNM:TStringlist;FielSize:TStringlist): TDataSet;
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
Function TBarCodeForm.AddDataToSet(AdsData: TDataSet;FieldValue:TStringlist): TDataSet;
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
//回傳國家
Function TBarCodeForm.GetCountry(ID:string):String;
begin
  ConQry.Active:=true;
  ConQry.Active:=true;
  ConQry.First;
  if COnQry.Locate('ID',ID,[]) then
    result:=COnQry.FieldByName('Name').Asstring
  else
    result:='';
end;
//回傳Article
Function TBarCodeForm.GetArticle(ID:string):String;
begin
  ArtQry.Active:=true;
  ArtQry.First;
  if ArtQry.Locate('ID',ID,[]) then
    result:=ArtQry.FieldByName('Name').Asstring
  else
    result:='';
end;
//回傳Color
Function TBarCodeForm.GetColor(ID:string):String;
begin
  ColQry.Active:=true;
  ColQry.First;
  if ColQry.Locate('ID',ID,[]) then
    result:=ColQry.FieldByName('Name').Asstring
  else
    result:='';
end;
//回傳Gender
Function TBarCodeForm.GetGender(ID:string):String;
begin
  GenQry.Active:=true;
  GenQry.First;
  if GenQry.Locate('ID',ID,[]) then
    result:=GenQry.FieldByName('Name').Asstring
  else
    result:='';
end;
//回傳SizeRun
Function TBarCodeForm.GetSizeRun(ID:string;Col:Byte):String;
begin
  if Col=0 then
  begin
    Siz_UQry.Active:=true;
    Siz_UQry.First;
    if Siz_UQry.Locate('ID',ID,[]) then
      result:=Siz_UQry.FieldByName('US').Asstring
    else
      result:='';
  end;
  if Col=1 then
  begin
    Siz_BQry.Active:=true;
    Siz_BQry.First;
    if Siz_BQry.Locate('ID',ID,[]) then
      result:=Siz_BQry.FieldByName('BR').Asstring
    else
      result:='';
  end;
  if Col=2 then
  begin
    Siz_QQry.Active:=true;
    Siz_QQry.First;
    if Siz_QQry.Locate('ID',ID,[]) then
      result:=Siz_QQry.FieldByName('Qty').Asstring
    else
      result:='';
  end;
end;
//取得總數量
Function TBarCodeForm.GetTotalQty(ID:string):string;
var tmpList:TStringlist;
    i,Qty:integer;
begin
    Siz_QQry.Active:=true;
    Siz_QQry.First;
    if Siz_QQry.Locate('ID',ID,[]) then
    begin
       tmpList:=FuncObj.SplitString(Siz_QQry.FieldByName('Qty').Asstring,',');
       Qty:=0;
       for i:=0 to tmpList.Count-1 do
       begin
        Qty:=Qty+strtoint(tmpList.Strings[i]);
       end;
       tmpList.Free;
       result:=inttostr(Qty);
      //tmpList:=FuncObj.Split/// Siz_QQry.FieldByName('Qty').Asstring
    end else
    begin
      result:='0';
    end;
end;
//解析條碼
procedure TBarCodeForm.ParseBarCodeList();
var FieldList:TStringlist;
    i:integer;
    CryID,ArtID,ColID,GenID,SizID:string;
begin
  //
  FieldList:=TStringlist.Create;
  //產生View
  ExcelDS.DataSet:=nil;
  CreateView();
  //
  if BarCodeList.Count>0 then
  begin
    for i:=0 to BarCodeList.Count-1 do
    begin
      //長度大於18
      if length(BarCodeList.Strings[i])>=18 then
      begin
        CryID:=Copy(BarCodeList.Strings[i],1,2);
        ArtID:=Copy(BarCodeList.Strings[i],3,9);
        ColID:=Copy(BarCodeList.Strings[i],12,2);
        GenID:=Copy(BarCodeList.Strings[i],14,2);
        SizID:=Copy(BarCodeList.Strings[i],16,3);
        //新增值到欄位
        FieldList.Clear;
        FieldList.Add(BarCodeList.Strings[i]);
        FieldList.Add(GetCountry(CryID));
        FieldList.Add(GetArticle(ArtID));
        FieldList.Add(GetColor(ColID));
        FieldList.Add(GetGender(GenID));
        FieldList.Add(GetSizeRun(SizID,0));
        FieldList.Add(GetSizeRun(SizID,1));
        FieldList.Add(GetSizeRun(SizID,2));
        FieldList.Add(GetTotalQty(SizID));
        FieldList.Add(SizID);
        AddDataToSet(ExcelDataSet,FieldList);
      end;
      //
    end;
  end;
  //
  FieldList.Free;
  //tmpIDList.Free;
  //
  ExcelDS.DataSet:=ExcelDataSet;
  //欄位寬度
  with DBGrid do
  begin
    Columns[0].Width:=170;
    Columns[1].Width:=80;
    Columns[2].Width:=80;
    Columns[3].Width:=80;
    Columns[4].Width:=80;
    Columns[5].Width:=150;
    Columns[6].Width:=150;
    Columns[7].Width:=150;
    Columns[8].Width:=80;
  end;
end;
//產生動態View
procedure TBarCodeForm.CreateView();
var FieldList,FieldSize:TStringlist;
begin
    //
    FieldList:=TStringlist.Create;
    FieldSize:=TStringlist.Create;
    //
    FieldList.Add('BarCode');
    FieldList.Add('Country');
    FieldList.Add('Article');
    FieldList.Add('Color');
    FieldList.Add('Gender');
    FieldList.Add('Size US');
    FieldList.Add('Size BR');
    FieldList.Add('Size Qty');
    FieldList.Add('Qty');
    FieldList.Add('PackingID');//Packing抬頭排序用
    //
    FieldSize.Add('20');
    FieldSize.Add('50');
    FieldSize.Add('50');
    FieldSize.Add('50');
    FieldSize.Add('10');
    FieldSize.Add('40');
    FieldSize.Add('40');
    FieldSize.Add('40');
    FieldSize.Add('10');
    FieldSize.Add('10');//Packing抬頭排序用
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
    //
    FieldList.Free;
    FieldSize.Free;
end;
//

procedure TBarCodeForm.FormCreate(Sender: TObject);
begin
  AppDir:=ExtractFilePath(Application.ExeName);
  funcObj:=TFuncObj.Create;
  funcObj.setParameter(true,AppDir);
  ADOConn.Connected:=false;
  ADOConn.ConnectionString:='Provider=Microsoft.Jet.OLEDB.4.0;Data Source='+AppDir+'Barcode.mdb;Persist Security Info=False';
  BarCodeList:=TStringlist.Create;
end;
//
procedure TBarCodeForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  //
  BarCodeList.Free;
  if ExcelDataSet<>nil then
  begin
      ExcelDataSet.Free;
      ExcelDataSet:=nil;
  end;
  //
  funcObj.Free;
end;
//
//匯出Exl
procedure TBarCodeForm.ExportXLS();
var eclApp,WorkBook:olevariant;
    i:integer;
begin
  //
  try
    eclApp:=CreateOleObject('Excel.Application');
    eclApp.DisplayAlerts := False;
    WorkBook:=CreateOleObject('Excel.Sheet');
  except
    Application.MessageBox('No Microsoft Excel','Microsoft Excel',MB_OK+MB_ICONWarning);
    Exit;
  end;
  //
  try
    //
    WorkBook:=eclApp.workbooks.Add;
    //欄位名稱
    For i:=0 to ExcelDataSet.FieldCount-1 do
    begin
     eclApp.Cells[1,i+1]:=ExcelDataSet.Fields[i].FieldName;
    end;
    //資料
    ExcelDataSet.First;
    for i:=1 to ExcelDataSet.RecordCount do
    begin
      eclApp.Cells[i+1,1]:=ExcelDataSet.FieldByName('BarCode').AsString;
      eclApp.Cells[i+1,2]:=ExcelDataSet.FieldByName('Country').AsString;
      eclApp.Cells[i+1,3]:=ExcelDataSet.FieldByName('Article').AsString;
      eclApp.Cells[i+1,4]:=ExcelDataSet.FieldByName('Color').AsString;
      eclApp.Cells[i+1,5]:=ExcelDataSet.FieldByName('Gender').AsString;
      eclApp.Cells[i+1,6]:=ExcelDataSet.FieldByName('Size US').AsString;
      eclApp.Cells[i+1,7]:=ExcelDataSet.FieldByName('Size BR').AsString;
      eclApp.Cells[i+1,8]:=ExcelDataSet.FieldByName('Size Qty').AsString;
      eclApp.Cells[i+1,9]:=ExcelDataSet.FieldByName('Qty').AsString;
      ExcelDataSet.Next;
    end;
    //
    showmessage('Succeed');
    eclApp.Visible:=True;
  except
    on   F:Exception   do
        showmessage(F.Message);
  end;
  //
end;
//
//匯出K-Swiss Excel
procedure TBarCodeForm.ExportXLS1();
var eclApp,WorkBook:olevariant;
    i,j,h,flow,FieldCount:integer;
    tmpList:TStringlist;
    PackingID:string;
    IsNewPage:boolean;
Label NewPage;
begin
  //
  try
    eclApp:=CreateOleObject('Excel.Application');
    eclApp.DisplayAlerts := False;
    WorkBook:=CreateOleObject('Excel.Sheet');
  except
    Application.MessageBox('No Microsoft Excel','Microsoft Excel',MB_OK+MB_ICONWarning);
    Exit;
  end;
  //
  ExcelDataSet.First;
  WorkBook:=eclApp.workbooks.Add;
  //第一分頁
  H:=1;
  try
    //
    NewPage:
    //新增分頁
    eclapp.workbooks[1].Worksheets.Add(After := eclapp.workbooks[1].Worksheets[eclapp.workbooks[1].Worksheets.Count]);
    //抬頭欄位2排====================
    for i:=0 to 1 do
    begin
      //第一筆PackingID
      PackingID:=ExcelDataSet.FieldByName('PackingID').AsString;
      funcObj.WriteErrorLog('H:'+inttostr(H));
      //   eclApp.workbooks[1].sheets[H].
      eclApp.workbooks[1].sheets[H].Cells[i+1,1]:='Barcode';
      eclApp.workbooks[1].sheets[H].Cells[i+1,2]:='Country';
      eclApp.workbooks[1].sheets[H].Cells[i+1,3]:='Article';
      eclApp.workbooks[1].sheets[H].Cells[i+1,4]:='Color';
      //SizeRun
      if i=0 then //第一排顯示US SizeRun
      begin
        eclApp.workbooks[1].sheets[H].Cells[i+1,5]:='US';
        tmpList:=FuncObj.SplitString(ExcelDataSet.FieldByName('Size US').AsString,',');
      end;
      if i=1 then //第二排顯示BR SizeRun
      begin
        eclApp.workbooks[1].sheets[H].Cells[i+1,5]:='BR';
        tmpList:=FuncObj.SplitString(ExcelDataSet.FieldByName('Size BR').AsString,',');
      end;
      //
      for j:=0 to tmpList.Count-1 do
      begin
         eclApp.workbooks[1].sheets[H].Cells[i+1,6+j]:=tmpList.Strings[j];
      end;
      //雙數
      FieldCount:=6+tmpList.Count; //紀錄欄位數目
      eclApp.workbooks[1].sheets[H].Cells[i+1,6+tmpList.Count]:='Qty';
      tmpList.Free;
      //
    end;
    //第一個Column寬度
    eclApp.workbooks[1].sheets[H].Columns[1].ColumnWidth := 20;
    //抬頭顏色
    eclApp.workbooks[1].sheets[H].Range[eclApp.workbooks[1].sheets[H].Cells[1,1],eclApp.workbooks[1].sheets[H].Cells[2,FieldCount]].interior.color:=clyellow;
    //置中和文字格式
    eclApp.workbooks[1].sheets[H].Range[eclApp.workbooks[1].sheets[H].Cells[1,1],eclApp.workbooks[1].sheets[H].Cells[ExcelDataSet.RecordCount+2,FieldCount]].NumberFormatLocal:='@';
    eclApp.workbooks[1].sheets[H].Range[eclApp.workbooks[1].sheets[H].Cells[1,1],eclApp.workbooks[1].sheets[H].Cells[ExcelDataSet.RecordCount+2,FieldCount]].HorizontalAlignment:= -4108;
    //開始資料
    IsNewPage:=false;
    //ExcelDataSet.First;
    flow:=3; //從第三列開始
    for i:=1 to ExcelDataSet.RecordCount do
    begin
      //
      eclApp.workbooks[1].sheets[H].Cells[flow,1]:=ExcelDataSet.FieldByName('BarCode').AsString;
      eclApp.workbooks[1].sheets[H].Cells[flow,2]:=ExcelDataSet.FieldByName('Country').AsString;
      eclApp.workbooks[1].sheets[H].Cells[flow,3]:=ExcelDataSet.FieldByName('Article').AsString;
      eclApp.workbooks[1].sheets[H].Cells[flow,4]:=ExcelDataSet.FieldByName('Color').AsString;
      eclApp.workbooks[1].sheets[H].Cells[flow,5]:=ExcelDataSet.FieldByName('Gender').AsString;
      //
      tmpList:=FuncObj.SplitString(ExcelDataSet.FieldByName('Size Qty').AsString,',');
      for j:=0 to tmpList.Count-1 do
      begin
         eclApp.workbooks[1].sheets[H].Cells[flow,6+j]:=tmpList.Strings[j];
      end;
      //
      eclApp.workbooks[1].sheets[H].Cells[flow,6+tmpList.Count]:=ExcelDataSet.FieldByName('Qty').AsString;
      tmpList.Free;
      Inc(flow);
      //
      ExcelDataSet.Next;
      //包裝方式不一樣
      if PackingID<>ExcelDataSet.FieldByName('PackingID').AsString then
      begin
        break;
      end;
    end;
    //外框格線
    eclApp.workbooks[1].sheets[H].Range[eclApp.workbooks[1].sheets[H].Cells[1,1],eclApp.workbooks[1].sheets[H].Cells[flow-1,FieldCount]].Borders[1].weight:=2; //上面框線
    eclApp.workbooks[1].sheets[H].Range[eclApp.workbooks[1].sheets[H].Cells[1,1],eclApp.workbooks[1].sheets[H].Cells[flow-1,FieldCount]].Borders[2].weight:=2; //上面框線
    eclApp.workbooks[1].sheets[H].Range[eclApp.workbooks[1].sheets[H].Cells[1,1],eclApp.workbooks[1].sheets[H].Cells[flow-1,FieldCount]].Borders[3].weight:=2; //上面框線
    eclApp.workbooks[1].sheets[H].Range[eclApp.workbooks[1].sheets[H].Cells[1,1],eclApp.workbooks[1].sheets[H].Cells[flow-1,FieldCount]].Borders[4].weight:=2; //上面框線
    //合併抬頭欄位儲存格
    for i:=1 to 4 do
    begin
        eclApp.workbooks[1].sheets[H].Range[eclApp.workbooks[1].sheets[H].Cells[1,i],eclApp.workbooks[1].sheets[H].Cells[2,i]].merge;
    end;
    eclApp.workbooks[1].sheets[H].Range[eclApp.workbooks[1].sheets[H].Cells[1,FieldCount],eclApp.workbooks[1].sheets[H].Cells[2,FieldCount]].merge;
    //是否資料尚未結束
    if Not ExcelDataSet.Eof then
    begin
      H:=H+1;//Excel新增分頁
      goto NewPage;
    end;
    //
    showmessage('Succeed');
    eclApp.WorkSheets[1].Activate;
    eclApp.Visible:=True;
  except
    on   F:Exception   do
        showmessage(F.Message);
  end;
  //
end;
//讀取XLS 檔案
procedure TBarCodeForm.ReadBarcodeList(FN:string);
var eclApp,WorkBook:olevariant;
    offset:integer;
    IsBreak:boolean;
begin
  //
  try
    eclApp:=CreateOleObject('Excel.Application');
    eclApp.DisplayAlerts := False;
    WorkBook:=CreateOleObject('Excel.Sheet');
    //
    eclApp.WorkBooks.Open(FN);
    eclApp.WorkSheets[1].Activate;//第一頁為主
    //第一行
    offset:=1;
    BarCodeList.Clear;//條碼清單
    repeat
     if trim(eclApp.Cells[offset,1])='' then
     begin
       IsBreak:=true;
     end else
     begin
       BarCodeList.Add(trim(eclApp.Cells[offset,1]));
     end;
     Inc(offset);
    until IsBreak=true;
    //關閉Excel
    eclApp.WorkBooks.Close;
    eclApp.quit;
    funcObj.StopAP('EXCEL.EXE');

  except
    Application.MessageBox('No Microsoft Excel','Microsoft Excel',MB_OK+MB_ICONWarning);
    //關閉Excel
    eclApp.WorkBooks.Close;
    eclApp.quit;
    funcObj.StopAP('EXCEL.EXE');
    Exit;
  end;
  //
end;
//
procedure TBarCodeForm.BB1Click(Sender: TObject);
begin
  //
  if OpenXLS.Execute()=true then
  begin
    //開啟
    //BarCodeList.LoadFromFile(AppDir+'BarCode.txt');
    ReadBarcodeList(OpenXLS.FileName);
    ParseBarCodeList();
    //PackingID排序
    (ExcelDataSet as TClientDataSet).IndexFieldNames:='PackingID'
  end;
  //
end;

procedure TBarCodeForm.bbt6Click(Sender: TObject);
begin
  ExportXLS1();
end;


//更新項目資料
procedure TBarCodeForm.UpdateItem(NM:string);
var eclApp,WorkBook:olevariant;
    offset:integer;
    IsBreak:boolean;
    i:integer;
    NameValue,SQL:string;
begin
  StringGrid1.Cells[0,0]:='ID';
  StringGrid1.Cells[1,0]:='Name';
  if OpenXLS.Execute()=true then
  begin
    try
      eclApp:=CreateOleObject('Excel.Application');
      eclApp.DisplayAlerts := False;
      WorkBook:=CreateOleObject('Excel.Sheet');
      //
      eclApp.WorkBooks.Open(OpenXLS.FileName);
      eclApp.WorkSheets[1].Activate;//第一頁為主
      //第一行
      offset:=1;
      BarCodeList.Clear;//條碼清單
      repeat
       if trim(eclApp.Cells[offset,1])='' then
       begin
         IsBreak:=true;
       end else
       begin
          StringGrid1.Cells[0,offset]:=StringReplace(eclApp.Cells[offset,1], '-', '',[rfReplaceAll, rfIgnoreCase]);
          StringGrid1.Cells[1,offset]:=StringReplace(eclApp.Cells[offset,2], '''', '',[rfReplaceAll, rfIgnoreCase]);
       end;
       Inc(offset);
      until IsBreak=true;
      //關閉Excel
      eclApp.WorkBooks.Close;
      eclApp.Quit;
      funcObj.StopAP('EXCEL.EXE');
      StringGrid1.RowCount:=offset-1;
      //先刪除
      with Qry do
      begin
        Active:=false;
        SQL.Clear;
        SQL.Add('Delete from '+NM);
        funcObj.WriteErrorLog(sql.Text);
        ExecSQL();
      end;
      //更新
      for i:=1 to  Offset-2 do
      begin
        with Qry do
        begin
          Active:=false;
          SQL.Clear;
          SQL.Add('Insert into  '+NM+' (ID,Name) Values('''+StringGrid1.Cells[0,i]+''','''+StringGrid1.Cells[1,i]+''')');
          funcObj.WriteErrorLog(sql.Text);
          ExecSQL();
        end;
      end;
      //
    except
      Application.MessageBox('No Microsoft Excel','Microsoft Excel',MB_OK+MB_ICONWarning);
      //關閉Excel
      eclApp.WorkBooks.Close;
      eclApp.quit;
      funcObj.StopAP('EXCEL.EXE');
      Exit;
    end;
  end;

end;
//Packing
procedure TBarCodeForm.UpdatePackingItem();
var eclApp,WorkBook:olevariant;
    offset:integer;
    IsBreak:boolean;
    i:integer;
    ID,US,BR,Qty:string;
    USi,BRi,Qtyi,Count:integer;
begin

  if OpenXLS.Execute()=true then
  begin
    try
      eclApp:=CreateOleObject('Excel.Application');
      eclApp.DisplayAlerts := False;
      WorkBook:=CreateOleObject('Excel.Sheet');
      //
      eclApp.WorkBooks.Open(OpenXLS.FileName);
      eclApp.WorkSheets[1].Activate;//第一頁為主
      //第一行
      Count:=1;
      offset:=1;
      repeat
       if trim(eclApp.Cells[offset,1])<>'Packing' then
       begin
         IsBreak:=true;
       end else
       begin
          //
          ID:='';
          US:='';
          USi:=0;
          BR:='';
          BRi:=0;
          Qty:='';
          Qtyi:=0;
          //取得三個列數
          for i:=4 to 10 do
          begin
            if trim(eclApp.Cells[offset,i])<>'' then
            begin
              US:=US+trim(eclApp.Cells[offset,i])+',';
              Inc(USi);
            end;
            if trim(eclApp.Cells[offset+1,i])<>'' then
            begin
              BR:=BR+trim(eclApp.Cells[offset+1,i])+',';
              Inc(BRi);
            end;
            if trim(eclApp.Cells[offset+2,i])<>'' then
            begin
              Qty:=Qty+trim(eclApp.Cells[offset+2,i])+',';
              Inc(Qtyi);
            end;
          end;
          //取得ID
          if ((USi=BRi) and (BRi=Qtyi)) then
          begin
            ID:=trim(eclApp.Cells[offset+2,1]);
            US:=Copy(US,1,length(US)-1);
            BR:=Copy(BR,1,length(BR)-1);
            Qty:=Copy(Qty,1,length(Qty)-1);
          end;
          //
          StringGrid1.Cells[0,Count]:=ID;
          StringGrid1.Cells[1,Count]:=US;
          StringGrid1.Cells[2,Count]:=BR;
          StringGrid1.Cells[3,Count]:=Qty;
       end;
       offset:=offset+3;
       Inc(Count);//資料筆數
      until IsBreak=true;
      //關閉Excel
      eclApp.WorkBooks.Close;
      eclApp.Quit;
      funcObj.StopAP('EXCEL.EXE');
      StringGrid1.RowCount:=Count-1;
      //寫到資料料庫
      //先刪除
      with Qry do
      begin
        Active:=false;
        SQL.Clear;
        SQL.Add('Delete from SizeRun');
        ExecSQL();
      end;
      //更新
      for i:=1 to  Count-2 do
      begin
        with Qry do
        begin
          Active:=false;
          SQL.Clear;
          SQL.Add('Insert into  SizeRun (ID,US,BR,Qty) Values('''+StringGrid1.Cells[0,i]+''','''+StringGrid1.Cells[1,i]+''','''+StringGrid1.Cells[2,i]+''','''+StringGrid1.Cells[3,i]+''')');
          //funcObj.WriteErrorLog(sql.Text);
          ExecSQL();
        end;
      end;
    except
      Application.MessageBox('No Microsoft Excel','Microsoft Excel',MB_OK+MB_ICONWarning);
      //關閉Excel
      eclApp.WorkBooks.Close;
      eclApp.quit;
      funcObj.StopAP('EXCEL.EXE');
      Exit;
    end;
  end;
end;
//清除StringGrid畫面
procedure TBarCodeForm.ClearStringGrid();
var i,j:integer;
begin

  for i:=0 to 7 do
  begin
    for j:=0 to StringGrid1.RowCount-1 do
    begin
      StringGrid1.Cells[i,j]:='';
    end;
  end;
end;
//更新項目
procedure TBarCodeForm.BitBtn1Click(Sender: TObject);
begin
  ClearStringGrid();
  //
  if RB1.Checked=true then UpdateItem('Country');
  if RB2.Checked=true then UpdateItem('Article');
  if RB3.Checked=true then UpdateItem('Color');
  if RB4.Checked=true then UpdateItem('Gender');
  if RB5.Checked=true then UpdatePackingItem();//
  //
end;

end.
