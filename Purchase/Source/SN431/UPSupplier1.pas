unit UPSupplier1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DBTables, DB, GridsEh, DBGridEh, Menus, strutils, comobj;

type
  TUPSupplier = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    Button1: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DBGridEh1: TDBGridEh;
    Query1: TQuery;
    DataSource1: TDataSource;
    UpdateSQL1: TUpdateSQL;
    Query1EffectiveDate: TDateTimeField;
    Query1zsdh: TStringField;
    Query1Season: TStringField;
    Query1ContractorTax: TStringField;
    Query1TT_Transportation: TStringField;
    Query1TT_Payment: TStringField;
    Query1TT_Document: TStringField;
    Query1memo: TStringField;
    Query1YN: TStringField;
    Query1USERID: TStringField;
    Query1USERDATE: TDateTimeField;
    Query1Style: TStringField;
    Query1GroupName: TStringField;
    Query1zsywjc: TStringField;
    Query1Country: TStringField;
    Query1SamplePurchaser: TStringField;
    Query1ProdPurchaser: TStringField;
    Query1yjdz: TStringField;
    Query1MZSDH: TStringField;
    Query1Zsdh_TW: TStringField;
    Query1dh: TStringField;
    Query1cz: TStringField;
    Query1zsqm: TStringField;
    Query1Customclearanceday: TIntegerField;
    Query1ShippingleadtimeSEA: TIntegerField;
    Query1ShippingleadtimeAIR: TIntegerField;
    Query1Remark: TStringField;
    Query1ProdPurchaser_Name: TStringField;
    Query1SamplePurchaser_Name: TStringField;
    Query1Mzsywjc: TStringField;
    Query1Zsdh_TW_jc: TStringField;
    Query1VAT: TCurrencyField;
    Query1CGSampleCnt: TIntegerField;
    Query1CGProdCnt: TIntegerField;
    Query1KCRKCnt: TIntegerField;
    Query1JGZLCnt: TIntegerField;
    PopupMenu1: TPopupMenu;
    Insert1: TMenuItem;
    Modify1: TMenuItem;
    Delete1: TMenuItem;
    Save1: TMenuItem;
    Cancel1: TMenuItem;
    Query1Discount_UP: TCurrencyField;
    Query1Discount_OA: TCurrencyField;
    Button2: TButton;
    Button3: TButton;
    Excel1: TMenuItem;
    Excel2: TMenuItem;
    RadioGroup1: TRadioGroup;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    Query1FTY: TStringField;
    Label6: TLabel;
    Edit6: TEdit;
    Query1SEA_Freight_cost: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Insert1Click(Sender: TObject);
    procedure Modify1Click(Sender: TObject);
    procedure Delete1Click(Sender: TObject);
    procedure Save1Click(Sender: TObject);
    procedure Cancel1Click(Sender: TObject);
    procedure DBGridEh1Columns2EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure DBGridEh1Columns0UpdateData(Sender: TObject;
      var Text: String; var Value: Variant; var UseText, Handled: Boolean);
    procedure Query1AfterOpen(DataSet: TDataSet);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure Excel2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  UPSupplier: TUPSupplier;

implementation

uses main1, UPSupplierName1, UPSupplierGroup1, UPSupplierCountry1, FunUnit;

{$R *.dfm}

procedure TUPSupplier.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if Query1.RequestLive then
  begin
      messagedlg('You have to save data first.',mtwarning,[mbyes],0);
      abort;
  end;
  action:=Cafree;
end;

procedure TUPSupplier.FormDestroy(Sender: TObject);
begin
  UPSupplier:=nil;
end;

procedure TUPSupplier.Button1Click(Sender: TObject);
begin

    with Query1 do
    begin
       active:=false;
       SQL.Clear;
       SQL.Add('SELECT ');
       SQL.Add('	 Data_UP_Supplier.FTY, Data_UP_Supplier.EffectiveDate, Data_UP_Supplier.zsdh, Data_UP_Supplier.Season, Data_UP_Supplier.Discount_UP, Data_UP_Supplier.Discount_OA, ');
       SQL.Add('	 Data_UP_Supplier.ContractorTax, Data_UP_Supplier.TT_Transportation, Data_UP_Supplier.TT_Payment, Data_UP_Supplier.TT_Document, ');
       SQL.Add('	 Data_UP_Supplier.memo, Data_UP_Supplier.YN, Data_UP_Supplier.USERID,Data_UP_Supplier.USERDATE, Data_UP_Supplier.SEA_Freight_cost, ');
       SQL.Add('	 zszl_dev.Style,zszl_dev.GroupName,zszl.zsywjc,zszl_dev.Country,zszl_dev.SamplePurchaser,zszl_dev.ProdPurchaser, ');
       SQL.Add('	 zszl.yjdz,zszl_dev.MZSDH,zszl_dev.Zsdh_TW, zszl.dh,zszl.cz,zszl.zsqm, ');
       SQL.Add('	 Country.Customclearanceday,Country.ShippingleadtimeSEA, Country.ShippingleadtimeAIR, ');
       SQL.Add('	 ZSZL_Mat.Remark, ');
       SQL.Add('	 ProdBUSERS.USERNAME as ProdPurchaser_Name, ');
       SQL.Add('	 Busers.USERNAME as SamplePurchaser_Name, ');
       SQL.Add('	 (select zsywjc from zszl A where A.zsdh=zszl_dev.mzsdh ) as  Mzsywjc, ');
       SQL.Add('	 (select zsywjc from zszl B where B.zsdh=zszl_dev.Zsdh_TW ) as  Zsdh_TW_jc, ');
       SQL.Add('	 zszl_VN.VAT, ');
       SQL.Add('	 (select count(CGNO) AS CNT from CGZL CGSample WHERE CGSample.CGLX IN (''6'') AND CGSample.zsbh=Data_UP_Supplier.zsdh ) as CGSampleCnt, ');
       SQL.Add('	 (select count(CGNO) AS CNT from CGZL CGProd WHERE CGProd.CGLX NOT IN(''6'', ''4'') AND CGProd.zsbh=Data_UP_Supplier.zsdh ) as CGProdCnt, ');
       SQL.Add('	 (select count(RKNO) AS CNT from KCRK WHERE KCRK.zsbh=Data_UP_Supplier.zsdh ) as KCRKCnt, ');
       SQL.Add('	 (select count(JGNO) AS CNT from JGZL WHERE JGZL.zsbh=Data_UP_Supplier.zsdh ) as JGZLCnt');
       SQL.Add(' FROM Data_UP_Supplier ');
       SQL.Add(' LEFT JOIN zszl  ON zszl.zsdh = Data_UP_Supplier.zsdh ');
       SQL.Add(' LEFT JOIN zszl_dev on zszl.zsdh=zszl_dev.zsdh and zszl_dev.GSBH='''+main.Edit2.Text+'''');
       SQL.Add(' LEFT JOIN Country  ON Country.Country = zszl_dev.Country ');
       SQL.Add(' LEFT JOIN ZSZL_Mat  ON ZSZL_Mat.zsdh = Data_UP_Supplier.zsdh ');
       SQL.Add(' LEFT JOIN Busers  ON Busers.USERID = zszl_dev.SamplePurchaser ');
       SQL.Add(' LEFT JOIN (select C.zsbh,Max(CGNO) AS CGNO from CGZL c WHERE C.CGLX=''6'' and 1=2  group by C.zsbh ) CGSampleCGNO on CGSampleCGNO.zsbh=Data_UP_Supplier.zsdh ');
       SQL.Add(' LEFT JOIN CGZL CGZL ON CGZL.CGNO = CGSampleCGNO.CGNO  ');
       SQL.Add(' LEFT JOIN zszl_VN zszl_VN ON zszl_VN.zsdh = Data_UP_Supplier.zsdh ');
       SQL.Add(' LEFT JOIN BUSERS ProdBUSERS on ProdBUSERS.USERID=zszl_dev.ProdPurchaser ');
       SQL.Add(' WHERE 1=1');
       if radiobutton1.Checked=True then
       sql.add(' and zszl_dev.ProdPurchaser is not null and zszl_dev.ProdPurchaser<>''''  ');
       if Edit1.Text <> '' then
       sql.add(' and Data_UP_Supplier.Season Like '''+Edit1.Text+'%'+''' ');
       if Edit2.Text <> '' then
       sql.add(' and Data_UP_Supplier.zsdh Like '''+Edit2.Text+'%'+''' ');
       if Edit3.Text <> '' then
       sql.add(' and zszl_dev.GroupName Like '''+Edit3.Text+'%'+''' ');
       if Edit4.Text <> '' then
       sql.add(' and ZSZL.zsywjc Like '''+Edit4.Text+'%'+''' ');
       if Edit5.Text <> '' then
       sql.add(' and zszl_dev.Country Like '''+Edit5.Text+'%'+''' ');
       if Edit6.Text <> '' then
       sql.add(' and Data_UP_Supplier.FTY Like '''+Edit6.Text+'%'+''' ');
       if checkbox1.Checked then
       sql.add(' and (Data_UP_Supplier.Discount_OA is not null or Data_UP_Supplier.Discount_UP is not null) ');
       if checkbox2.Checked then
       sql.add(' and zszl_VN.VAT is not Null ');
       if checkbox3.Checked then
       sql.add(' and Data_UP_Supplier.ContractorTax is not Null');
       //funcobj.WriteErrorLog(sql.Text );
       active:=true;
    end;
end;

procedure TUPSupplier.Insert1Click(Sender: TObject);
begin

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
  excel1.Enabled:=true;

end;

procedure TUPSupplier.Modify1Click(Sender: TObject);
begin

  with Query1 do
  begin
    cachedupdates:=true;
    requestlive:=True;
    edit;
  end;
  dbgrideh1.FieldColumns['zsdh'].ButtonStyle :=cbsEllipsis;
  //設定按鈕權限
  Save1.Enabled:=true;
  Cancel1.Enabled:=true;
  excel1.Enabled:=true;
end;

procedure TUPSupplier.Delete1Click(Sender: TObject);
begin

  with Query1 do
  begin
      cachedupdates:=true;
      requestlive:=True;
      Edit;
      FieldByName('YN').value:='0';
  end;
  dbgrideh1.FieldColumns['zsdh'].ButtonStyle :=cbsnone;
  //設定按鈕權限
  Save1.Enabled:=true;
  Cancel1.Enabled:=true;
  excel1.Enabled:=true;

end;

procedure TUPSupplier.Save1Click(Sender: TObject);
Var i : integer;
begin

   Query1.first;
   for i:=1 to Query1.RecordCount do
      begin
          case Query1.updatestatus of
          usinserted:
             begin
               Query1.Edit ;
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
  Query1.requestlive:=false;
  Query1.cachedupdates:=false;
  Query1.Active:=true;
  //設定按鈕權限
  dbgrideh1.FieldColumns['zsdh'].ButtonStyle :=cbsnone;
  Insert1.Enabled:=true;
  Modify1.Enabled:=true;
  Delete1.Enabled:=true;
  Save1.Enabled:=false;
  Cancel1.Enabled:=false;
  excel1.Enabled:=true;

end;


procedure TUPSupplier.Cancel1Click(Sender: TObject);
begin


  with Query1 do
  begin
    active:=false;
    requestlive:=false;
    cachedupdates:=false;
    active:=true;
  end;
  dbgrideh1.FieldColumns['zsdh'].ButtonStyle :=cbsnone;
  //設定按鈕權限
  Insert1.Enabled:=true;
  Modify1.Enabled:=true;
  Delete1.Enabled:=true;
  Save1.Enabled:=false;
  Cancel1.Enabled:=false;
  excel1.Enabled:=true;  
end;

procedure TUPSupplier.DBGridEh1Columns2EditButtonClick(Sender: TObject;
  var Handled: Boolean);
begin
  if UPSupplierName <> nil then
  begin
    UPSupplierName.show;
    UPSupplierName.windowstate:=wsmaximized;
  end
  else
    begin
      UPSupplierName:=TUPSupplierName.Create(self);
      UPSupplierName.Show;
    end;
end;

procedure TUPSupplier.DBGridEh1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if (Query1.FieldByName('YN').AsString = '0') then
      DBGridEh1.Canvas.Font.Color := $000000E1;
  DBGridEh1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
end;


procedure TUPSupplier.DBGridEh1Columns0UpdateData(Sender: TObject;
  var Text: string; var Value: Variant; var UseText, Handled: Boolean);
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




procedure TUPSupplier.Query1AfterOpen(DataSet: TDataSet);
begin
  dbgrideh1.FieldColumns['FTY'].Footer.FieldName:='FTY';
  dbgrideh1.FieldColumns['FTY'].Footer.ValueType:=fvtcount;

   //設定按鈕權限
   Insert1.Enabled:=true;
   Modify1.Enabled:=true;
   Delete1.Enabled:=true;
   Save1.Enabled:=false;
   Cancel1.Enabled:=false;
   excel1.Enabled:=true;
end;

procedure TUPSupplier.Button2Click(Sender: TObject);
begin
  if UPSupplierGroup <> nil then
  begin
    UPSupplierGroup.show;
    UPSupplierGroup.windowstate:=wsmaximized;
  end
  else
    begin
      UPSupplierGroup:=TUPSupplierGroup.Create(self);
      UPSupplierGroup.Show;
    end;
end;

procedure TUPSupplier.Button3Click(Sender: TObject);
begin
  if UPSupplierCountry <> nil then
  begin
    UPSupplierCountry.show;
    UPSupplierCountry.windowstate:=wsmaximized;
  end
  else
    begin
      UPSupplierCountry:=TUPSupplierCountry.Create(self);
      UPSupplierCountry.Show;
    end; 
end;

procedure TUPSupplier.FormShow(Sender: TObject);
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

procedure TUPSupplier.Image1Click(Sender: TObject);
var
 eclApp, workBook, xlSheet : OleVariant;
 i,j : Integer;
begin
  try
    eclApp := CreateOleObject('Excel.Application');
    workBook := CreateOleObject('Excel.Sheet');
  except
    Application.MessageBox('Microsoft Excel required.','Microsoft Excel',MB_OK+MB_ICONWARNING);
    Exit;
  end;

  try
    WorkBook:=eclApp.workbooks.Add;
    xlSheet := workBook.worksheets.item[1];
    for i:=0 to DBGrideh1.FieldCount-1 do
    begin
        eclApp.cells(1,i+1) := DBGrideh1.Columns[i].Title.Caption;
    end;

    j:=2;
    Query1.First;
    while not Query1.Eof do
    begin
      for i:=0 to DBGrideh1.FieldCount-1 do
      begin
        eclApp.cells(j,i+1) := (DBGrideh1.Fields[i].AsString);
      end;
      Query1.Next;
      Inc(j);
    end;
      eclapp.columns.autofit;
      eclApp.ActiveWindow.FreezePanes := False;
      showmessage(' Export to Excel Succeed! ');
      eclApp.Visible:=True;
  except
    on   F:Exception   do
          showmessage(F.Message);
  end;

end;


procedure TUPSupplier.Excel2Click(Sender: TObject);
var
   eclApp, workBook, xlSheet : OleVariant;
   i,j : Integer;
begin

  try
    eclApp := CreateOleObject('Excel.Application');
    workBook := CreateOleObject('Excel.Sheet');
  except
    Application.MessageBox('Microsoft Excel required.','Microsoft Excel',MB_OK+MB_ICONWARNING);
    Exit;
  end;

  try
    WorkBook:=eclApp.workbooks.Add;
    xlSheet := workBook.worksheets.item[1];
    for i:=0 to DBGrideh1.FieldCount-1 do
    begin
      eclApp.cells(1,i+1) := DBGrideh1.Columns[i].Title.Caption;
    end;
    j:=2;
    Query1.First;
    while not Query1.Eof do
    begin
      for i:=0 to DBGrideh1.FieldCount-1 do
      begin
        eclApp.cells(j,i+1) := (DBGrideh1.Fields[i].AsString);
      end;
      Query1.Next;
      Inc(j);
    end;
      eclapp.columns.autofit;
      eclApp.ActiveWindow.FreezePanes := False;
      showmessage(' Export to Excel Succeed! ');
      eclApp.Visible:=True;
  except
    on  F:Exception   do
      showmessage(F.Message);
  end;

end;


end.
