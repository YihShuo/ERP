unit ScanOutbox1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GridsEh, DBGridEh, StdCtrls, Buttons, ExtCtrls, Comobj, DB,
  DBTables,DBClient, DBCtrls, Menus, StrUtils;

//
type
  TPackStruct=record
    Qty:Byte;
    Size:double;
    YN:boolean;
end;

type
  TPackingList=record
    PackStruct:array [0..11] of  TPackStruct;  //裝箱SIZE Run
    BarCodeList:TStringlist;
    YN:boolean;
end;

type
  TPackCarton=record
    PO:string;
    PackingList:array [0..29] of TPackingList;  //每一張訂單裝箱方式
    YN:boolean;
end;
//
type
  TScanOutbox = class(TForm)
    OpenDialog: TOpenDialog;
    ExcelDS: TDataSource;
    YWCP: TQuery;
    tmpQry: TQuery;
    YWCPDS: TDataSource;
    UPDet: TUpdateSQL;
    YWCPCARTONBAR: TStringField;
    YWCPCARTONNO: TIntegerField;
    YWCPDDBH: TStringField;
    YWCPXH: TStringField;
    YWCPLPNBarCode: TStringField;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    YWCPKHPO: TStringField;
    Panel4: TPanel;
    Panel1: TPanel;
    Label1: TLabel;
    bbt6: TBitBtn;
    GroupBox1: TGroupBox;
    Label8: TLabel;
    ExcelShowErr: TCheckBox;
    BBT9: TBitBtn;
    BBT10: TBitBtn;
    ExcelDBGridEh: TDBGridEh;
    Panel5: TPanel;
    Panel3: TPanel;
    BBT8: TBitBtn;
    BB1: TBitBtn;
    BB2: TBitBtn;
    BB3: TBitBtn;
    BB4: TBitBtn;
    BB5: TBitBtn;
    BB6: TBitBtn;
    BB7: TBitBtn;
    BBT1: TBitBtn;
    BBT2: TBitBtn;
    BBT3: TBitBtn;
    BBT4: TBitBtn;
    BBT5: TBitBtn;
    BBT7: TBitBtn;
    Splitter1: TSplitter;
    Panel2: TPanel;
    Label5: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    POEdit: TEdit;
    Button1: TButton;
    XHEdit: TEdit;
    DDBHEdit: TEdit;
    DBGridEh1: TDBGridEh;
    PopupMenu2: TPopupMenu;
    MenuItem1: TMenuItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure bbt6Click(Sender: TObject);
    procedure BBT8Click(Sender: TObject);
    procedure BB1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure ExcelDBGridEhGetCellParams(Sender: TObject;
      Column: TColumnEh; AFont: TFont; var Background: TColor;
      State: TGridDrawState);
    procedure ExcelShowErrClick(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure BBT9Click(Sender: TObject);
    procedure BBT7Click(Sender: TObject);
    procedure BBT10Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
  private
    ExcelDataSet:TDataSet;
    { Private declarations }
    procedure InitPackCarton();
    procedure ImportOutboxBarcode();
    procedure ShowBardeDataSet();
    function CheckYWCPIsBarcodeUpd():integer;
    procedure Barcdoe_UpdateYWCP();
    function CreateDataSet(FieldNM:TStringlist;FielSize:TStringlist): TDataSet;
    Function AddDataToSet(AdsData: TDataSet;FieldValue:TStringlist): TDataSet;
    procedure SavePackList(BCode_CTS:String;PO_CTS:string;SizeList:TStringlist;QtyList:TStringlist);
  public
    { Public declarations }
  end;

var
  ScanOutbox: TScanOutbox;
  PackCarton:array [0..99] of TPackCarton;  //最多Excel 100張訂單
implementation
   uses FunUnit;
{$R *.dfm}

procedure TScanOutbox.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
end;
//初始化
procedure TScanOutbox.InitPackCarton();
var i,j,k,h:integer;
begin
  for i:=0 to High(PackCarton) do
  begin
    PackCarton[i].YN:=false;
    for j:=0 to High(PackCarton[i].PackingList) do
    begin
      if PackCarton[i].PackingList[j].YN=true then PackCarton[i].PackingList[j].BarCodeList.Free;
      PackCarton[i].PackingList[j].YN:=false;
      for K:=0 to High(PackCarton[i].PackingList[j].PackStruct) do
      begin
        PackCarton[i].PackingList[j].PackStruct[k].YN:=false;
      end;
    end;
  end;
end;
//
procedure TScanOutbox.FormDestroy(Sender: TObject);
begin
  ScanOutbox:=nil;
end;

//儲存分析包裝
procedure TScanOutbox.SavePackList(BCode_CTS:String;PO_CTS:string;SizeList:TStringlist;QtyList:TStringlist);
var i,j,k,h:integer;
    IsFind_PO_CTS,IsFind_PackStruct:Boolean;
    CheckCount1,CheckCount2:byte;
begin
  //
  IsFind_PO_CTS:=false;
  for i:=0 to High(PackCarton) do
  begin
    if ((PackCarton[i].PO=PO_CTS) and (PackCarton[i].YN=true)) then
    begin
      //檢查包裝方式是否一樣
      IsFind_PackStruct:=false;
      for j:=0 to High(PackCarton[i].PackingList) do
      begin
        //已有的包裝方式
        if PackCarton[i].PackingList[j].YN=true then
        begin
          CheckCount1:=0;
          CheckCount2:=0;
          for K:=0 to High(PackCarton[i].PackingList[j].PackStruct) do
          begin
             if PackCarton[i].PackingList[j].PackStruct[k].YN=true then
             begin
               CheckCount1:=CheckCount1+1;
               for h:=0 to SizeList.Count-1 do
               begin
                  if ( (strtofloat(SizeList.Strings[h])=PackCarton[i].PackingList[j].PackStruct[k].Size) and
                       (strtofloat(QtyList.Strings[h])=PackCarton[i].PackingList[j].PackStruct[k].Qty) ) then
                  begin
                    CheckCount2:=CheckCount2+1;
                    break;
                  end;
               end;
             end;
          end;
          //找到相符的包裝方式
          if CheckCount1=CheckCount2 then
          begin
            PackCarton[i].PackingList[j].BarCodeList.Add(BCode_CTS);
            //funcObj.WriteErrorLog('找到相符的包裝方式 新增Barcode:'+BCode_CTS);
            IsFind_PackStruct:=true;
            break;
          end;
          //結束
        end;
      end;
      //沒找到包裝方式不一樣
      if IsFind_PackStruct=false then
      begin
        for j:=0 to High(PackCarton[i].PackingList) do
        begin
           if PackCarton[i].PackingList[j].YN=false then
           begin
             for k:=0 to High(PackCarton[i].PackingList[j].PackStruct) do
             begin
               //新增包裝方式
               if k<=(SizeList.Count-1)  then
               begin
                 PackCarton[i].PackingList[j].PackStruct[k].Size:=strtofloat(SizeList.Strings[k]);
                 PackCarton[i].PackingList[j].PackStruct[k].Qty:=strtoint(QtyList.Strings[k]);
                 PackCarton[i].PackingList[j].PackStruct[k].YN:=true;
               end else
               begin
                 PackCarton[i].PackingList[j].PackStruct[k].YN:=false;
               end;
             end;
             PackCarton[i].PackingList[j].BarCodeList:=TStringlist.Create;
             PackCarton[i].PackingList[j].BarCodeList.Add(BCode_CTS);
             //funcObj.WriteErrorLog('沒找到相符的包裝方式 新增Barcode:'+BCode_CTS);
             PackCarton[i].PackingList[j].YN:=true;
             break;
           end;
        end;
      end;
      IsFind_PO_CTS:=true;
      break;
    end;
  end;
  //新的訂單
  if IsFind_PO_CTS=false then
  begin
    for i:=0 to High(PackCarton) do
    begin
      if PackCarton[i].YN=false then
      begin
        PackCarton[i].PO:=PO_CTS;
        for j:=0 to High(PackCarton[i].PackingList) do
        begin
           if PackCarton[i].PackingList[j].YN=false then
           begin
             for k:=0 to High(PackCarton[i].PackingList[j].PackStruct) do
             begin
               //新增包裝方式
               if k<=(SizeList.Count-1)  then
               begin
                 PackCarton[i].PackingList[j].PackStruct[k].Size:=strtofloat(SizeList.Strings[k]);
                 PackCarton[i].PackingList[j].PackStruct[k].Qty:=strtoint(QtyList.Strings[k]);
                 PackCarton[i].PackingList[j].PackStruct[k].YN:=true;
               end else
               begin
                 PackCarton[i].PackingList[j].PackStruct[k].YN:=false;
               end;
             end;
             PackCarton[i].PackingList[j].BarCodeList:=TStringlist.Create;
             PackCarton[i].PackingList[j].BarCodeList.Add(BCode_CTS);
             PackCarton[i].PackingList[j].YN:=true;
             break;
           end;
        end;
        //結束
        PackCarton[i].YN:=true;
        break;
      end;
    end;
  end;
  {
  //Test列印資訊
  for i:=0 to High(PackCarton) do
  begin
    if PackCarton[i].YN=true then
    begin
      funcObj.WriteErrorLog('PO#:'+PackCarton[i].PO);
      for j:=0 to High(PackCarton[i].PackingList) do
      begin
        if PackCarton[i].PackingList[j].YN=true then
        begin
           for k:=0 to High(PackCarton[i].PackingList[j].PackStruct) do
           begin
             if PackCarton[i].PackingList[j].PackStruct[k].YN=true then
             begin
                funcObj.WriteErrorLog('SIZE:'+floattostr(PackCarton[i].PackingList[j].PackStruct[k].SIZE)+' Qty:'+floattostr(PackCarton[i].PackingList[j].PackStruct[k].Qty));
             end;
           end;

           for k:=0 to  PackCarton[i].PackingList[j].BarCodeList.Count-1 do
           begin
             funcObj.WriteErrorLog('BCode:'+PackCarton[i].PackingList[j].BarCodeList.Strings[k]);
           end;
        end;
      end;
      //
    end;
  end;
  }
end;

procedure TScanOutBox.ImportOutboxBarcode();
var OrderListExcel:Variant;
    OrderExcFN:string;
    BCodeStr,POStr,SizeStr,QtyStr:String;
    BCode_CTS,PO_CTS:String;
    RowSIndex,offset:integer;
    IsBreak:boolean;
    //
    SizeList,QtyList:TStringlist;
begin
  if OpenDialog.Execute()=true then
  begin
    try
      //開啟Excel OLE
      OrderListExcel:=CreateOleObject('Excel.Application');
    except
      on E:Exception do
      begin
        Application.MessageBox(PChar('NO EXCEL'+E.Message),'', MB_OK);
        EXIT;
      end;
    end;
    try
      //開啟Excel
      OrderExcFN:=OpenDialog.FileName;//Excel檔案名稱 備份複製用
      OrderListExcel.WorkBooks.Open(OpenDialog.FileName);
      OrderListExcel.WorkSheets[1].Activate;//第一頁為主

      //
      PO_CTS:='';
      BCode_CTS:='';
      IsBreak:=false;
      //
      SizeList:=TStringlist.Create;
      QtyList:=TStringlist.Create;
      //
      offset:=0;
      RowSIndex:=1;
      BCodeStr:=OrderListExcel.Cells[RowSIndex+offset,1];
      POStr:=OrderListExcel.Cells[RowSIndex+offset,3];
      SizeStr:=OrderListExcel.Cells[RowSIndex+offset,7];
      QtyStr:=OrderListExcel.Cells[RowSIndex+offset,11];
      if ((BCodeStr='CartonID') and (POStr='PO#') and (SizeStr='Material') and (QtyStr='Qty')) then
      begin
        repeat
           //
           RowSIndex:=RowSIndex+1;
           //Progress
           Application.ProcessMessages;
           Label1.Caption:='Excel Count:'+inttostr(RowSIndex);
           //
           BCodeStr:=OrderListExcel.Cells[RowSIndex+offset,1];
           POStr:=OrderListExcel.Cells[RowSIndex+offset,3];
           if length(POStr)<=9 then
             POStr:='0'+POStr;
           SizeStr:=OrderListExcel.Cells[RowSIndex+offset,7];
           if SizeStr<>'' then
             SizeStr:=floattostr(strtofloat(Copy(SizeStr,length(SizeStr)-4+1,4))/10);
           QtyStr:=OrderListExcel.Cells[RowSIndex+offset,11];
           //
           if PO_CTS='' then PO_CTS:=POStr;
           if BCode_CTS='' then BCode_CTS:=BCodeStr;
           if ((BCodeStr<>BCode_CTS) or (POStr<>PO_CTS)) then
           begin
             //儲存整理包裝
             SavePackList(BCode_CTS,PO_CTS,SizeList,QtyList);
             //
             PO_CTS:=POStr;
             BCode_CTS:=BCodeStr;
             //
             SizeList.Clear;
             QtyList.Clear;
             SizeList.Add(SizeStr);
             QtyList.Add(QtyStr);
           end else
           begin
             SizeList.Add(SizeStr);
             QtyList.Add(QtyStr);
           end;
           //
           if BCodeStr='' then Isbreak:=true;

        until IsBreak=true;
      end else
      begin
        Showmessage('Excel not exact format!');
      end;
      //
      SizeList.Free;
      QtyList.Free;
      OrderListExcel.WorkBooks.Close;
      OrderListExcel.quit;
    except
      on E:Exception do
      begin
        Application.MessageBox(PChar('NO EXCEL'+E.Message),'', MB_OK);
        EXIT;
      end;
    end;
  end;
end;
//顯示
procedure TScanOutbox.ShowBardeDataSet();
var FieldList,FieldSize:TStringlist;
    i,j,k,CTS:integer;
    SizeStr,QtyStr,BarCodeStr:String;
begin
  //先取得欄位 欄位Index從[1,1]開始
  FieldList:=TStringlist.Create;
  FieldSize:=TStringlist.Create;
  FieldList.Add('PO#');
  FieldList.Add('PackSize');
  FieldList.Add('PackQty');
  FieldList.Add('CTS');
  FieldList.Add('YN');
  FieldList.Add('BarCode');
  FieldSize.Add('12');
  FieldSize.Add('50');
  FieldSize.Add('50');
  FieldSize.Add('5');
  FieldSize.Add('5');
  FieldSize.Add('50000');
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
  //Test列印資訊
  FieldList.Clear;
  for i:=0 to High(PackCarton) do
  begin
    if PackCarton[i].YN=true then
    begin
      for j:=0 to High(PackCarton[i].PackingList) do
      begin
        //Progress
        //Application.ProcessMessages;
        //Label1.Caption:='Order Count:'+inttostr(i+1);
        if PackCarton[i].PackingList[j].YN=true then
        begin
           //
           SIZEStr:='';
           QtyStr:='';
           BarCodeStr:='';
           CTS:=0;
           for k:=0 to High(PackCarton[i].PackingList[j].PackStruct) do
           begin
             if PackCarton[i].PackingList[j].PackStruct[k].YN=true then
             begin
                SIZEStr:=SIZEStr+floattostr(PackCarton[i].PackingList[j].PackStruct[k].SIZE)+',';
                QtyStr:=QtyStr+floattostr(PackCarton[i].PackingList[j].PackStruct[k].Qty)+',';
             end;
           end;
           for k:=0 to  PackCarton[i].PackingList[j].BarCodeList.Count-1 do
           begin
             BarCodeStr:=BarCodeStr+PackCarton[i].PackingList[j].BarCodeList.Strings[k]+',';
           end;
           SIZEStr:=Copy(SIZEStr,1,length(SIZEStr)-1);
           QtyStr:=Copy(QtyStr,1,length(QtyStr)-1);
           BarCodeStr:=Copy(BarCodeStr,1,length(BarCodeStr)-1);
           CTS:=PackCarton[i].PackingList[j].BarCodeList.Count;
           //儲存資訊
           FieldList.Clear;
           FieldList.Add(PackCarton[i].PO);
           FieldList.Add(SIZEStr);
           FieldList.Add(QtyStr);
           FieldList.Add(inttostr(CTS));
           FieldList.Add('');
           FieldList.Add(BarCodeStr);
           //新增資料到DataSet
           AddDataToSet(ExcelDataSet,FieldList);
           //
        end;
      end;
    end;
  end;

  //依照客戶PO排序
  (ExcelDataSet as TClientDataSet).IndexFieldNames:='PO#';
  //顯示綁定資料
  ExcelDS.DataSet:=ExcelDataSet;  //綁定 顯示欄位
  ExcelDBGridEh.Columns[0].Width:=100;
  ExcelDBGridEh.Columns[1].Width:=150;
  ExcelDBGridEh.Columns[2].Width:=150;
  ExcelDBGridEh.Columns[3].Width:=50;
  ExcelDBGridEh.Columns[4].Width:=60;
  ExcelDBGridEh.Columns[5].Width:=450;
  //for i:=0 to 5 do
    //ExcelDBGridEh.Columns[i].ReadOnly:=true;
  ExcelDBGridEh.Columns[0].Footer.FieldName:='PO#';
  ExcelDBGridEh.Columns[0].Footer.ValueType:=fvtCount;
  //
  FieldList.Free;
  FieldSize.Free;
end;
//Check YWCP LPNBarcode
function TScanOutbox.CheckYWCPIsBarcodeUpd():integer;
var tmpSizeSplit,tmpQtySplit:TStringlist;
    okCount,i:integer;
begin
  okCount:=0;
  ExcelDataSet.First;
  while  not ExcelDataSet.Eof  do
  begin
   tmpSizeSplit:=FuncObj.SplitString(ExcelDataSet.FieldByName('PackSize').AsString,',');
   tmpQtySplit:=FuncObj.SplitString(ExcelDataSet.FieldByName('PackQty').AsString,',');
   with tmpQry do
   begin
     Active:=false;
     SQL.Clear;
     SQL.Add('select distinct YWCP.DDBH from ( ');
     SQL.Add('select DDBH,XH from (');
     for i:=0 to tmpSizeSplit.Count-1 do
     begin
       SQL.Add('select YWBZPOS.DDBH,XH,YWBZPOS.DDCC,YWBZPOS.Qty from YWBZPOS,YWDD,DDZL ');
       SQL.Add('where YWDD.DDBH=YWBZPOS.DDBH and DDZL.DDBH=YWDD.YSBH and DDZL.KHPO='''+ExcelDataSet.FieldByName('PO#').AsString+''' ');
       SQL.Add('      and YWBZPOS.Qty='+tmpQtySplit.Strings[i]+' and Convert(float,YWBZPOS.DDCC)='+tmpSizeSplit.Strings[i]);
       if i<tmpSizeSplit.Count-1 then
         SQL.Add('Union all ');
     end;
     SQL.Add(') as YWBZPO Group by DDBH,XH  ) YWBZPOS     ');
     SQL.Add('left join YWCP on YWBZPOS.DDBH=YWCP.DDBH and YWBZPOS.XH=YWCP.XH');
     SQL.Add('where IsNull(YWCP.LPNBarCode,'''')<>''''  ');
     Active:=true;
     if RecordCount>0 then
     begin
       okCount:=okCount+1;
       ExcelDataSet.Edit;
       ExcelDataSet.FieldByName('YN').AsString:='OK';
       ExcelDataSet.Post;
     end;
     Active:=false;
   end;
   tmpSizeSplit.Free;
   tmpQtySplit.Free;
   //
   ExcelDataSet.Next;
  end;
  for i:=0 to 5 do
    ExcelDBGridEh.Columns[i].ReadOnly:=true;
  result:=okCount;
end;
//
procedure TScanOutbox.bbt6Click(Sender: TObject);
var okCount:integer;
begin
  InitPackCarton();
  ImportOutboxBarcode();
  ShowBardeDataSet();
  okCount:=CheckYWCPIsBarcodeUpd();
  if ExcelDataSet.Active=true then
    if ExcelDataSet.RecordCount>0 then
    begin
      if okCount=0 then
      begin
        BBT8.Enabled:=true;
        BBT10.Enabled:=false;
      end else
      begin
        BBT8.Enabled:=false;
        BBT10.Enabled:=true;
      end;
      ExcelShowErr.Enabled:=true;
      N1.Enabled:=true;
    end;
end;

//產生DataSet
function TScanOutbox.CreateDataSet(FieldNM:TStringlist;FielSize:TStringlist): TDataSet;
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
Function TScanOutbox.AddDataToSet(AdsData: TDataSet;FieldValue:TStringlist): TDataSet;
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
  //
end;

//檢查YWBZPOS 和更新YWCP
procedure TScanOutbox.Barcdoe_UpdateYWCP();
var SQLStr:string;
    i,j:integer;
    tmpBarcdeList,tmpSizeSplit,tmpQtySplit:TStringlist;
begin
   //開啟Edit
   ExcelDBGridEh.Columns[4].ReadOnly:=false;
   //
   ExcelDataSet.First;
   for i:=0 to ExcelDataSet.RecordCount-1 do
   begin
     tmpSizeSplit:=FuncObj.SplitString(ExcelDataSet.FieldByName('PackSize').AsString,',');
     tmpQtySplit:=FuncObj.SplitString(ExcelDataSet.FieldByName('PackQty').AsString,',');
     with tmpQry do
     begin
       //
       Active:=false;
       SQL.Clear;
       SQL.Add('select YWBZPOS.*,YWBZPO.CTS from ( ');
       SQL.Add('select DDBH,XH from (');
       for j:=0 to tmpSizeSplit.Count-1 do
       begin
         SQL.Add('select YWBZPOS.DDBH,XH,YWBZPOS.DDCC,YWBZPOS.Qty from YWBZPOS,YWDD,DDZL ');
         SQL.Add('where YWDD.DDBH=YWBZPOS.DDBH and DDZL.DDBH=YWDD.YSBH and DDZL.KHPO='''+ExcelDataSet.FieldByName('PO#').AsString+''' and  exists (select DDBH from YWCP where YWDD.DDBH=YWCP.DDBH) ');
         SQL.Add('      and YWBZPOS.Qty='+tmpQtySplit.Strings[j]+' and Convert(float,YWBZPOS.DDCC)='+tmpSizeSplit.Strings[j]);
         if j<tmpSizeSplit.Count-1 then
           SQL.Add('Union all ');
       end;
       SQL.Add(') as YWBZPO Group by DDBH,XH  ) YWBZPOS     ');
       SQL.Add('left join YWBZPO on YWBZPO.DDBH=YWBZPOS.DDBH and YWBZPOS.XH=YWBZPO.XH');
       Active:=true;
       if FieldByname('CTS').AsInteger=ExcelDataSet.FieldByName('CTS').AsInteger then
       begin
         YWCP.Active:=false;
         YWCP.SQL.Clear;
         YWCP.SQL.Add('select  CARTONBAR,CARTONNO,DDBH,XH,LPNBarCode,''          '' as KHPO from YWCP');
         YWCP.SQL.Add('where YWCP.DDBH='''+tmpQry.FieldByName('DDBH').AsString+''' and XH='''+tmpQry.FieldByName('XH').AsString+''' ');
         YWCP.SQL.Add('Order by CARTONNO ');
         YWCP.Active:=true;
         //
         if YWCP.RecordCount>0 then
         begin
           if YWCP.RecordCount=ExcelDataSet.FieldByName('CTS').AsInteger  then
           begin
             tmpBarcdeList:=FuncObj.SplitString(ExcelDataSet.FieldByName('BarCode').AsString,',');
             YWCP.requestlive:=true;
             YWCP.cachedupdates:=true;
             for j:=0 to YWCP.RecordCount-1 do
             begin
               YWCP.edit;
               YWCP.FieldByName('LPNBarCode').AsString:=RightStr(tmpBarcdeList.Strings[j],15);
               YWCP.FieldByName('KHPO').AsString:=ExcelDataSet.FieldByName('PO#').AsString;
               YWCP.Post;
               UPDet.Apply(ukModify);
               YWCP.Next;
             end;
             tmpBarcdeList.Free;
             ExcelDataSet.Edit;
             ExcelDataSet.FieldByName('YN').AsString:='OK';
             ExcelDataSet.Post;
           end;
         end;
       end;
       Active:=false;
       //
     end;
     tmpSizeSplit.Free;
     tmpQtySplit.Free;
     ExcelDataSet.Next;
   end;
end;
//
procedure TScanOutbox.BBT8Click(Sender: TObject);
begin
  Barcdoe_UpdateYWCP();
  BBT8.Enabled:=false;
  BBT10.Enabled:=true;
end;

procedure TScanOutbox.BB1Click(Sender: TObject);
begin
  Panel2.Visible:=true;
end;

procedure TScanOutbox.Button1Click(Sender: TObject);
begin
  if ((length(POEdit.Text)>0) or (length(DDBHEdit.Text)>0) or (length(XHEdit.Text)>0) ) then
  begin
    with YWCP do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('select  CARTONBAR,CARTONNO,YWCP.DDBH,XH,LPNBarCode,DDZL.KHPO from DDZL');
      SQL.Add('Left join YWDD on DDZL.DDBH=YWDD.YSBH ');
      SQL.Add('Left join YWCP on YWCP.DDBH=YWDD.DDBH ');
      SQL.Add('where 1=1 ');
      if POEdit.Text<>'' then
      SQL.Add(' and DDZL.KHPO like '''+POEdit.Text+'%'' ');
      if DDBHEdit.Text<>'' then
      SQL.Add(' and DDZL.DDBH like '''+DDBHEdit.Text+'%'' ');
      if XHEdit.Text<>'' then
      SQL.Add(' and YWCP.XH = '''+XHEdit.Text+''' ');
      SQL.Add('Order by LPNBarCode,CARTONNO ');
      Active:=true;
    end;
  end else
  begin
    Showmessage('Please input Edit');
  end;
  BB4.Enabled:=true;
end;

procedure TScanOutbox.ExcelDBGridEhGetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if ExcelDataSet<>nil then
  if ExcelDataSet.FieldByName('YN').value='OK' then
  begin
    ExcelDBGridEh.canvas.font.color:=clblue;
  end;
end;

procedure TScanOutbox.ExcelShowErrClick(Sender: TObject);
begin
 if ExcelShowErr.Checked=true then
   (ExcelDataSet as TClientDataSet).IndexFieldNames:='YN'
 else
   (ExcelDataSet as TClientDataSet).IndexFieldNames:='PO#';
 ExcelDataSet.First;
end;

procedure TScanOutbox.N1Click(Sender: TObject);
var tmpSizeSplit,tmpQtySplit:TStringlist;
    j:integer;
begin

     tmpSizeSplit:=FuncObj.SplitString(ExcelDataSet.FieldByName('PackSize').AsString,',');
     tmpQtySplit:=FuncObj.SplitString(ExcelDataSet.FieldByName('PackQty').AsString,',');
     with tmpQry do
     begin
       Active:=false;
       SQL.Clear;
       SQL.Add('select YWBZPOS.*,YWBZPO.CTS from ( ');
       SQL.Add('select DDBH,XH from (');
       for j:=0 to tmpSizeSplit.Count-1 do
       begin
         SQL.Add('select YWBZPOS.DDBH,XH,YWBZPOS.DDCC,YWBZPOS.Qty from YWBZPOS,YWDD,DDZL ');
         SQL.Add('where YWBZPOS.DDBH=YWDD.DDBH and DDZL.DDBH=YWDD.YSBH and DDZL.KHPO='''+ExcelDataSet.FieldByName('PO#').AsString+''' ');
         SQL.Add('      and YWBZPOS.Qty='+tmpQtySplit.Strings[j]+' and Convert(float,YWBZPOS.DDCC)='+tmpSizeSplit.Strings[j]);
         if j<tmpSizeSplit.Count-1 then
           SQL.Add('Union all ');
       end;
       SQL.Add(') as YWBZPO Group by DDBH,XH  ) YWBZPOS     ');
       SQL.Add('left join YWBZPO on YWBZPO.DDBH=YWBZPOS.DDBH and YWBZPOS.XH=YWBZPO.XH');
       Active:=true;
       if RecordCount>0 then
       begin
          DDBHEdit.Text:=FieldByName('DDBH').AsString;
          XHEdit.Text:=FieldByName('XH').AsString;
       end;
       tmpSizeSplit.Free;
       tmpQtySplit.Free;
       Active:=false;
     end;
end;

procedure TScanOutbox.BBT9Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin
  if  ExcelDataSet=nil then exit;
    if  ExcelDataSet.active  then
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
        for   i:=0   to   ExcelDataSet.fieldcount-2   do
        begin
          eclApp.Cells(1,i+1):=ExcelDataSet.fields[i].FieldName;
        end;
        ExcelDataSet.First;
        j:=2;
        while   not   ExcelDataSet.Eof   do
        begin
          for i:=0  to  ExcelDataSet.fieldcount-2  do
          begin
              eclApp.Cells(j,i+1):=ExcelDataSet.Fields[i].Value;
          end;
          ExcelDataSet.Next;
          inc(j);
        end;
      eclapp.columns.autofit;
      showmessage('Succeed.');
      eclApp.Visible:=True;
      except
        on   F:Exception   do
          showmessage(F.Message);
      end;
    end;
end;

procedure TScanOutbox.BBT7Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin
    if  YWCP.active  then
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
        for   i:=0   to   YWCP.fieldcount-2   do
        begin
          eclApp.Cells(1,i+1):=YWCP.fields[i].FieldName;
        end;
        ExcelDataSet.First;
        j:=2;
        while   not   YWCP.Eof   do
        begin
          for i:=0  to  YWCP.fieldcount-2  do
          begin
              eclApp.Cells(j,i+1):=YWCP.Fields[i].Value;
          end;
          YWCP.Next;
          inc(j);
        end;
      eclapp.columns.autofit;
      showmessage('Succeed.');
      eclApp.Visible:=True;
      except
        on   F:Exception   do
          showmessage(F.Message);
      end;
    end;

end;

procedure TScanOutbox.BBT10Click(Sender: TObject);
begin
  ExcelDataSet.First;
  while  not ExcelDataSet.Eof  do
  begin
    if ExcelDataSet.FieldByName('YN').AsString='OK' then
    begin
      ExcelDataSet.Delete;
    end else
    begin
      ExcelDataSet.Next;
    end;
  end;
  if ExcelDataSet.Active=true then
    if ExcelDataSet.RecordCount>0 then
    begin
      BBT8.Enabled:=true;
      ExcelShowErr.Enabled:=true;
      N1.Enabled:=true;
    end;  
end;

procedure TScanOutbox.BB4Click(Sender: TObject);
begin
  with YWCP do
  begin
    cachedupdates:=true;
    requestlive:=true;
    Edit;
  end;
  bb4.Enabled:=false;
  bb5.Enabled:=true;
  bb6.Enabled:=true;
end;

procedure TScanOutbox.BB6Click(Sender: TObject);
begin

   with YWCP do
   begin
      active:=false;
      requestlive:=false;
      cachedupdates:=false;
      active:=true;
   end;
   bb4.Enabled:=true;
   bb5.Enabled:=false;
   bb6.Enabled:=false;
end;

procedure TScanOutbox.BB5Click(Sender: TObject);
var i:integer;
begin
   YWCP.First;
   for i:=0 to YWCP.RecordCount-1 do
   begin
      case YWCP.updatestatus of
      usmodified:
      begin
       UPDet.Apply(ukModify);
      end;
      end;
      YWCP.Next;
   end;
   bb4.Enabled:=true;
   bb5.Enabled:=false;
   bb6.Enabled:=false;   
end;

procedure TScanOutbox.MenuItem1Click(Sender: TObject);
var i:integer;
begin
   if YWCP.Active=true then
   begin
     if YWCP.cachedupdates=true then
     begin
       YWCP.First;
       while not YWCP.Eof do
       begin
         YWCP.Edit;
         YWCP.FieldByName('LPNBarCode').AsString:='';
         YWCP.Post;
         YWCP.Next;
       end;
     end;
   end;
end;

end.
