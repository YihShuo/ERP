unit C_Excel;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, StdCtrls,
  OleServer, Excel2000, DBGrids, db,math,dbtables,Variants,adodb, dblocalB,strutils,provider,
  MsgManager;

type
  TMyExcel= class(TExcelApplication)
  public
    //fRange: Range;
    Wb: TExcelWorkbook;
    Ws: TExcelWorksheet;
//    function   NewWorkBook:ExcelWorkBook;
//    function   OpenFile(par_fname:string):ExcelWorkBook;
    procedure  SaveAs(par_fname:string);
    procedure  PutStr(par_row,par_col:integer;par_Str:string);
    procedure  RunMacro(par_Str:string);
    function   GetStr(par_row,par_col:integer):string;
    function   GetColWidth(par_row,par_col:integer):integer;
    function   GetRowHeight(par_row,par_col:integer):integer;
    procedure  SetColumnWidth(par_row,par_col:integer;par_Width:integer);
    procedure  SetRowHeight(par_row,par_col:integer;par_Height:integer);
    procedure  Close(par_fname:string='');
    constructor Create(AOwner: TComponent;par_Visible:Boolean=false); overload;
    constructor CreateFromFile(AOwner: TComponent;xlsFileName:string;par_Visible:Boolean=false);
  end;

procedure  DBGrid2Excel(par_DBGrid:TDBGrid;par_fname:string);
procedure  Excel2Table(par_fname,par_tblname,par_alias:string);
function OpenXlsAsADO(owner:TComponent;fname:string;sheetname:string='sheet1'):TAdoQUery;
procedure ExcelToDB(db:TDataBase;tbname:string;excelFile:string;sheetname:string='Sheet1');
procedure  DataSetToXls(ds:TDataSet;sfilename:string);

var
  adoconnectstr:string;

implementation

uses UWaitfm;

constructor TMyExcel.Create(AOwner: TComponent;par_Visible:Boolean=false);
begin
  inherited Create(Aowner);
  Self.Visible[0]:=par_Visible;
  Connect;
//  fWorkBook:=WorkBooks.Add(null,0);
  Wb:=TExcelWorkbook.create(self);
  wb.ConnectTo(WorkBooks.Add(null,0));
  Ws:=TExcelWorkSheet.create(self);
  Ws.ConnectTo(Wb.Sheets[1] as _WorkSheet);
end;

constructor TMyExcel.CreateFromFile(AOwner: TComponent;xlsFileName:string;par_Visible:Boolean=false);
var workbook:ExcelWorkBook;
    dm:Olevariant;
begin
  inherited Create(Aowner);
  dm:=EmptyParam;
  Self.Visible[0]:=par_Visible;
  Connect;
  Wb:=TExcelWorkbook.create(self);
  WorkBook:=WorkBooks.Open(xlsFIleName,dm,false,dm,dm,dm,dm,dm,dm,dm,dm,dm,dm,0);
  wb.ConnectTo(WorkBook);
  Ws:=TExcelWorkSheet.create(self);
  Ws.ConnectTo(Wb.Sheets[1] as _WorkSheet);
end;

procedure  TMyExcel.Close(par_fname:string='');
begin
//procedure Close(SaveChanges: OleVariant; Filename: OleVariant; RouteWorkbook: OleVariant;lcid: Integer); safecall;
  wb.Close(false,par_fname,null,0);
  Ws.Disconnect;
  Wb.Disconnect;
  Disconnect;
  Quit;
end;


(**
     函數名稱: RunMacro
     傳入參數: par_Str:string  //欲執行之 Macro 字串
     傳回值: 無
     目的:
          執行 Excel 巨集指令
**)
procedure  TMyExcel.RunMacro(par_Str:string);
begin
  ExecuteExcel4Macro(par_Str,0);
end;

procedure  TMyExcel.SaveAs(par_fname:string);
begin
  wb.SaveCopyAs(par_fname,0);
end;

(**
     函數名稱: PutStr
     傳入參數: par_col,par_row:integer;  //要填入值之 col,row 位置
               par_Str:string            //填入之字串
     傳回值: 無
     目的:
         讓使用者在 Excel 某一 Cell 填入 字串
     範例:
         MyExcel.PutStr(8,8,'8,8,MICRO8');
**)
procedure  TMyExcel.PutStr(par_row,par_col:integer;par_Str:string);
//var Tmp_Str:string;
begin
//  Tmp_Str:=format('Formula("%s","R%dC%d")',[par_Str,par_row,par_col]);
//  RunMacro(Tmp_Str);
  ws.Cells.Item[par_row,par_col]:=par_str;
end;

(**
     函數名稱: GetStr
     傳入參數: par_col,par_row:integer   //要取得字串之 Cell 位置
     傳回值: string;                     //該 Cell 之字串
     目的:
         讓使用者取得 Excel 某一 Cell 字串
**)
function  TMyExcel.GetStr(par_row,par_col:integer):string;
//var Tmp_Str:string;
begin
  Result:=ws.Cells.Item[par_row,par_col];
{
  Tmp_Str:=Format('SELECT("R%dC%d")', [par_Row,par_Col]);
  RunMacro(Tmp_Str);
  fRange:=ActiveCell;
  result:=fRange.Value;
}
end;

(**
     函數名稱: GetColWidth
     傳入參數: par_col,par_row:integer
     傳回值: integer;
     目的:
         讓使用者取得 Excel 某一 Cell 寬度
**)
function  TMyExcel.GetColWidth(par_row,par_col:integer):integer;
//var Tmp_Str:string;
begin
  Result:=ws.Cells.Item[par_row,par_col].width;
{
  Tmp_Str:=Format('SELECT("R%dC%d")', [par_row,par_Col]);
  RunMacro(Tmp_Str);
  fRange:=ActiveCell;
  result:=fRange.Width;
 }
end;

(**
     函數名稱: GetRowHeight
     傳入參數: par_col,par_row:integer
     傳回值: integer;
     目的:
         讓使用者取得 Excel 某一 Cell 高度
**)
function   TMyExcel.GetRowHeight(par_row,par_col:integer):integer;
//var Tmp_Str:string;
begin
  Result:=ws.Cells.Item[par_row,par_col].Height;
{
  Tmp_Str:=Format('SELECT("R%dC%d")', [par_row,par_col]);
  RunMacro(Tmp_Str);
  fRange:=ActiveCell;
  result:=fRange.Height;
}
end;

(**
     函數名稱: SetColWidth
     傳入參數: par_col,par_row:integer
               par_Width:integer   // Cell 寬度
     傳回值: 無
     目的:
         讓使用者設定 Excel 某一 Cell 寬度
**)
procedure  TMyExcel.SetColumnWidth(par_row,par_col:integer;par_Width:integer);
//var Tmp_Str:string;
    //Tmp_IRange : IRange;
    //Tmp_Width:OleVariant;
begin
  ws.Cells.Item[par_row,par_col].ColumnWidth:=par_width;
{
  Tmp_Str:=Format('SELECT("R%dC%d")', [par_row,par_col]);
  RunMacro(Tmp_Str);
  fRange:=ActiveCell;
  fRange.ColumnWidth:=par_Width;
}
end;

(**
     函數名稱: SetRowHeight
     傳入參數: par_col,par_row:integer
               par_Height:integer
     傳回值: 無
     目的:
         讓使用者設定 Excel 某一 Cell 高度
**)
procedure  TMyExcel.SetRowHeight(par_row,par_col:integer;par_Height:integer);
//var Tmp_Str:string;
//    Tmp_IRange : IRange;
begin
  ws.Cells.Item[par_row,par_col].RowHeight:=par_Height;
{  Tmp_Str:=Format('SELECT("R%dC%d")', [par_row,par_col]);
  RunMacro(Tmp_Str);
  fRange:=ActiveCell;
  fRange.RowHeight:=par_Height;
}
end;


(**
     函數名稱: DBGrid2Excel
     傳入參數: par_DBGrid:TDBGrid     //要轉換之 DBGrid
               par_fname:string    // Excel 檔名
     傳回值: 無
     目的:
          將 DBGrid 資料轉成 Excel 檔
**)

procedure DBGrid2Excel(par_DBGrid:TDBGrid;par_fname:string);
var i:integer;
    Tmp_ds:TDataSet;
    Tmp_row:integer;
    Tmp_float:double;
begin
  //顯示稍候畫面
  fm_waitform := Tfm_waitform.Create(nil);
  fm_Waitform.ProgressBar1.Width:=0;
  fm_Waitform.label1.Left:=10;
  fm_Waitform.label1.caption:=cloadstr(49,'已處理筆數: 0');
  fm_waitform.Show;
  with TMyExcel.Create(nil,false) do begin
    Tmp_ds:=par_DBGrid.DataSource.DataSet;
    try
      //NewWorkBook;
      for i:=1 to par_DBGrid.FieldCount do
        PutStr(1,i,par_DBGrid.Columns[i-1].Title.Caption);
      Tmp_ds.DisableControls;
      Tmp_ds.First;
      Tmp_row:=2;
      while not Tmp_ds.Eof do begin
        fm_Waitform.label1.caption:=cloadstr(50,'已處理筆數:')+inttoStr(Tmp_row);
        fm_waitform.Refresh;
        for i:=1 to par_DBGrid.FieldCount do begin
          if par_DBGrid.Fields[i-1].Datatype in [ftinteger,ftsmallint,ftWord,ftfloat,ftBCD] then
            PutStr(Tmp_row,i,par_DBGrid.Fields[i-1].Asstring)
          else
            PutStr(Tmp_row,i,#39+par_DBGrid.Fields[i-1].Asstring);
          Tmp_float:=par_DBGrid.Columns[i-1].Width div 6;
          SetColumnWidth(Tmp_row,i,Ceil(Tmp_float));
        end;
        Tmp_ds.Next;
        Tmp_row:=Tmp_row+1;
      end;
      WB.SaveCopyAs(par_fname,0);
      //fWorkbook.SaveCopyAs(par_fname,0);
      Close(par_fname);
    finally
      fm_waitform.free;
      Tmp_ds.EnableControls;
      Free;
    end;
  end;  // with
end;

(**
     函數名稱: Excel2Table
     傳入參數: par_fname:string;     //Excel 檔案名稱 (第一行為 欄位名稱)
               par_tblname:string;   //要轉入之 Table 名稱
               par_alias:string;     //Table.Databasename 名稱
     傳回值: 無
     目的:
          將  Excel 檔 資料轉成 資料庫 Table
**)

procedure  Excel2Table(par_fname,par_tblname,par_alias:string);
var
  cur_col,cur_row:integer;
  Tmp_Table:TTable;
  Tmp_Str:string;
  Fld_List:TstringList;
  cur_Fldname,cur_FldValue,first_FldValue:string;
  Fld_cnt:integer;
begin
  if NOT FileExists(par_fname) then begin
     Showmessage(cloadstr(51,'Excel 檔案(')+par_fname+cloadstr(52,')不存在')+cloadstr(53,'請確認該檔案已存在 !'));
     exit;
  end
  else
  with TMyExcel.CreateFromFile(nil,par_fname) do begin
  Fld_List:=TstringList.Create;
  try
    cur_col:=1;
    Fld_List.Clear;
    //找出 Excel 所有 Fcur_coleldname (row 1)
    repeat
      cur_Fldname:=GetStr(1,cur_col);
      if length(cur_Fldname)>0 then
         Fld_List.Add(cur_Fldname);
      cur_col:=cur_col+1;
    until length(cur_FldName)=0;
    Fld_cnt:=Fld_List.count;
    if Fld_cnt=0 then begin
      Showmessage(cloadstr(54,'找不到Excel 檔(')+par_fname+cloadstr(55,')之欄位資料'));
      exit;
    end;
    // Assign Table 資料值
    Tmp_Table:=TTable.Create(nil);
    try
      Tmp_Table.Databasename:=par_Alias;
      Tmp_Table.Tablename:=par_tblname;
      try
        Tmp_Table.Open;
      except
        Tmp_Str:=cloadstr(56,'資料庫別名(')+par_Alias+')'+#13#10
                +cloadstr(57,'檔案名稱(')+par_Tblname+')'
                +cloadstr(58,'無法開啟,請檢查..');
        raise Exception.Create(Tmp_Str);
      end;
      cur_row:=2;
      first_FldValue:=GetStr(cur_row,1);
      while  length(first_FldValue)>0 do begin
        Tmp_Table.Append;
        for cur_col:=1 to Fld_cnt do begin
          cur_FldValue:=GetStr(cur_row,cur_col);
          Tmp_Table.Fieldbyname(Fld_List[cur_col-1]).Asstring:=cur_FldValue;
        end;
        Tmp_Table.Post;
        cur_row:=cur_row+1;
        first_FldValue:=GetStr(cur_row,1);
      end;
      Showmessage(cloadstr(59,'Excel檔(')+par_fname+cloadstr(60,')已轉至 Table 檔(')+par_Tblname+')');
    finally
      Tmp_Table.Free;
    end;
  finally
    wb.Close(True,par_fname,null,0);
//    fWorkBook.Close(True,par_fname,null,0);
    Free;
    Fld_List.Free;
  end;
  end;  // with

end;

function OpenXlsAsADO(owner:TComponent;fname:string;sheetname:string='sheet1'):TAdoQUery;
var s,sht:string;
begin
  Result:=TAdoQuery.Create(owner);
  try
    s:=AnsiReplaceStr(AdoConnectStr, 'xxx.xls', fname);
    Result.Connectionstring:=s;
    sht:='['+SheetName+'$'+']';
    Result.sql.text:='select * from '+sht;
    Result.open;
  except
    result.Free;
  end;
end;

procedure ExcelToDB(db:TDataBase;tbname:string;excelFile:string;sheetname:string='Sheet1');
var adods:TAdoQuery;
    bdecd:TBdeClientDataSet;
    i:integer;
    fld:TField;
begin
  adods:=OpenXlsAsADO(nil,excelFile);
  try
    Adods.first;
    bdecd:=TBdeClientDataSet.create(nil);
    try
      bdecd.options:=[poAllowMultiRecordUpdates,poAllowCommandText];
      bdecd.PacketRecords:=-1;
      bdecd.DBConnection:=db;
      bdecd.CommandText:='select * from '+tbname+' where 1=2';
      BDEcd.Open;
      while not Adods.eof do begin
        BDEcd.Append;
        for i:=0 to Adods.fieldcount -1 do begin
          fld:=bdecd.FindField(adods.Fields[i].FieldName);
          if fld <> nil then
            if Trim(adods.fields[i].asstring)<>'' then
              fld.asstring:=adods.fields[i].asstring;
        end;
        BDEcd.Post;
        adods.next;
      end;
      BDEcd.ApplyUpdates(-1);
    finally
      bdecd.free;
    end;
  finally
    adods.free;
  end;
end;

procedure DataSetToXls(ds:TDataSet;sfilename:string);
var ex:TMyExcel;
    adods:TADOQuery;
    i:integer;
begin
// create Excel File
  ex:=TMyExcel.Create(nil,False);
  try
    for i:=0 to ds.fieldcount - 1 do
      if copy(ds.fields[i].FieldName,1,4)<>'EXC_' then
        ex.PutStr(1,i+1,''''+ds.fields[i].DisplayName);
    ex.SaveAs(sFileName);
    ex.Close('');
  finally
    ex.free;
  end;
// open The .xls as ADO DataSet
  adods:=OpenXlsAsADO(nil,sFileName);
  try
    while not ds.Eof do begin
      adods.append;
      for i:=0 to ds.fieldcount - 1 do
        if copy(ds.fields[i].FieldName,1,4)<>'EXC_' then
          adods.Fields[i].Asstring:=ds.fields[i].Asstring;
      adods.post;
      ds.next;
    end;
  finally
    adods.free;
  end;
end;

initialization
  AdoConnectstr:='Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;'+
                 'Data Source=xxx.xls;'+
                 'Mode=Share Deny None;Extended Properties=Excel 8.0;'+
                 'Persist Security Info=False;Jet OLEDB:System database="";'+
                 'Jet OLEDB:Registry Path="";Jet OLEDB:Database Password="";'+
                 'Jet OLEDB:Engine Type=35;Jet OLEDB:Database Locking Mode=0;'+
                 'Jet OLEDB:Global Partial Bulk Ops=2;'+
                 'Jet OLEDB:Global Bulk Transactions=1;'+
                 'Jet OLEDB:New Database Password="";'+
                 'Jet OLEDB:Create System Database=False;'+
                 'Jet OLEDB:Encrypt Database=False;'+
                 'Jet OLEDB:Don''t Copy Locale on Compact=False;'+
                 'Jet OLEDB:Compact Without Replica Repair=False;'+
                 'Jet OLEDB:SFP=False';

(**
   程式檔名 :  C_Excel.pas
   畫面檔名 :  無
   作業名稱 :  Excel 應用程式之介面程式

   1.程式目的:
     提供Excel應用程式 之介面函式
     讓使用者透過介面函式,產生 Excel 檔及 填入 Cell 資料

   2.TMyExcel Class 函式
    constructor Create(AOwner: TComponent;par_Visible:Boolean=true); override;
        //產生 TMyExcel Object ,並由 par_Visible 決定是否看到 Excel Application
    procedure  Close;
       //將開啟之 Excel Application Close

    function   NewWorkBook:ExcelWorkBook;
        //產生新的 Excel 檔
    function   OpenFile(par_fname:string):ExcelWorkBook;
       //開啟 Excel 檔案,並傳回該 Excel WorkBook
    procedure  SaveAs(par_fname:string);
       //將目前的 Excel 檔存成 par_fname 檔名
    procedure  PutStr(par_row,par_col:integer;par_Str:string);
       //讓使用者在 Excel 某一 Cell 填入 字串
    procedure  RunMacro(par_Str:string);
       //執行 Excel 巨集指令
    function   GetStr(par_row,par_col:integer):string;
       //讓使用者取得 Excel 某一 Cell 字串
    function   GetColWidth(par_row,par_col:integer):integer;
       //讓使用者取得 Excel 某一 Cell 寬度
    function   GetRowHeight(par_row,par_col:integer):integer;
       //讓使用者取得 Excel 某一 Cell 高度
    procedure  SetColumnWidth(par_row,par_col:integer;par_Width:integer);
       //讓使用者設定 Excel 某一 Cell 寬度
    procedure  SetRowHeight(par_row,par_col:integer;par_Height:integer);
       //讓使用者設定 Excel 某一 Cell 高度

  3.property
    fWorkBook:ExcelWorkBook;
    fRange: Range;

  4.獨立之 Function
    procedure  DBGrid2Excel(par_DBGrid:TDBGrid;par_fname:string);
       //將 DBGrid 資料轉成 Excel 檔
    procedure  Excel2Table(par_fname,par_tblname,par_alias:string);
       //將  Excel 檔 資料轉成 資料庫 Table

  備註:
    procedure Close(SaveChanges: OleVariant; Filename: OleVariant; RouteWorkbook: OleVariant;lcid: Integer); safecall;
    若參數為 OleVariant 無值  => NULL (不用 '',否則會有 Error)

**)

end.



