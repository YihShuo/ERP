unit Payabled_CL_JGCBY1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DB, DBTables, Grids, DBGrids, ComCtrls,
  dateutils, Menus,comobj,math, GridsEh, DBGridEh,iniFiles;

type
  TPayabled_CL_JGCBY = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    Button2: TButton;
    Edit3: TEdit;
    Edit4: TEdit;
    DBGrid1: TDBGridEh;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    Query1: TQuery;
    Query1ZSBH: TStringField;
    Query1DJLX: TStringField;
    Query1DJNO: TStringField;
    Query1CGBH: TStringField;
    Query1CLBH: TStringField;
    Query1YWPM: TStringField;
    Query1DWBH: TStringField;
    Query1Qty: TCurrencyField;
    Query1USPrice: TCurrencyField;
    Query1USACC: TCurrencyField;
    Query1DJDATE: TDateTimeField;
    Query1CostID: TStringField;
    Query1FKZT: TStringField;
    Query1DOCNO: TStringField;
    Query1Memo: TStringField;
    Query1CWHL: TCurrencyField;
    Query1VNPrice: TCurrencyField;
    Query1VNACC: TCurrencyField;
    UpdateSQL1: TUpdateSQL;
    CWHLS: TQuery;
    DS1: TDataSource;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure Query1AfterOpen(DataSet: TDataSet);
    procedure N1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
  private
    procedure readini();
    { Private declarations }
  public
    VNPrice_DiplayFormat:string;
    VNPrice_Decimal:Byte;
    { Public declarations }
  end;

var
  Payabled_CL_JGCBY: TPayabled_CL_JGCBY;

implementation

uses main1, PayableLit1, FunUnit;

{$R *.dfm}
procedure TPayabled_CL_JGCBY.readini();
var MyIni :Tinifile;
    AppDir:string;
begin
  //
  VNPrice_DiplayFormat:='#,##0';
  VNPrice_Decimal:=0;
  AppDir:=ExtractFilePath(Application.ExeName);
  if FileExists(AppDir+'\ComName.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ComName.ini');
      VNPrice_DiplayFormat:=MyIni.ReadString('VNPrice','DiplayFormat','#,##0');
      VNPrice_Decimal:=strtoint(MyIni.ReadString('VNPrice','Decimal','0'));
    finally
      MyIni.Free;
    end;
  end;
  TCurrencyField(Query1.FieldByName('CWHL')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(Query1.FieldByName('VNACC')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(Query1.FieldByName('VNPrice')).DisplayFormat:=VNPrice_DiplayFormat;
  
end;


procedure TPayabled_CL_JGCBY.Button1Click(Sender: TObject);
var y1,m1,d1:string;
    y,m,d:word;
begin
  with CWHLS do
  begin
    active:=false;
    sql.Clear;
    sql.add('select * from CWHLS ');
    sql.add('order by HLYEAR,HLMONTH,HLDAY');
    active:=true;
  end;   

  with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.Add('select CBY_LineSideStockS.ZSBH, ''JC'' as DJLX, ''ZZZZZZZZZZ'' as CGBH, CBY_LineSideStockS.LSNO as DJNO, CBY_LineSideStockS.CLBH');
    sql.add('       , CBY_LineSideStockS.CFMDATE1 as DJDATE, abs(CBY_LineSideStockS.Qty) as Qty, CBY_LineSideStockS.USPrice, CBY_LineSideStockS.USACC,');
    sql.add('        CBY_LineSideStockS.CWHL, CBY_LineSideStockS.VNPrice, CBY_LineSideStockS.VNACC, CBY_LineSideStockS.CostID, CLZL.YWPM, CLZL.DWBH,');
    sql.add('        CBY_LineSideStockS.FKZT, '''' as DOCNO, CBY_LineSideStockS.Memo');
    sql.add('from CBY_LineSideStockS');
    sql.add('left join CLZL on CBY_LineSideStockS.CLBH=CLZL.CLDH');
    sql.add('left join ZSZL on ZSZL.ZSDH=CBY_LineSideStockS.ZSBH  ');
    sql.add('where convert(smalldatetime,convert(varchar,CBY_LineSideStockS.CFMDATE1,111)) between ');
    sql.add('             '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
    sql.add('      and CBY_LineSideStockS.FKZT is null  ');
    sql.add('      and CBY_LineSideStockS.YN=''5'' ');    
    sql.add('      and CBY_LineSideStockS.ToCLBH='''+'ZZZZZZZZZZ'+''' ');
    if Edit4.Text<>'' then
    sql.add('      and CBY_LineSideStockS.Memo like ''%'+Edit4.Text+'%'' ');
    sql.add('      and CBY_LineSideStockS.ZSBH like  '''+edit1.Text+'%'' ');
    sql.add('      and ZSZL.ZSYWJC like '''+edit2.Text+'%'' ');
    sql.add('order by CBY_LineSideStockS.LSNO,CBY_LineSideStockS.CLBH');
    active:=true;
    while not eof do
    begin
        if (fieldbyname('CWHL').isnull and fieldbyname('VNACC').isnull)  then
        begin
            decodedate(fieldbyname('DJDate').Value,y,m,d);
            if length(inttostr(m))=1 then
              m1:='0'+inttostr(m)
            else
                m1:=inttostr(m);
            if length(inttostr(d))=1 then
              d1:='0'+inttostr(d)
            else
                d1:=inttostr(d);
            y1:=inttostr(y);
            edit;
            if CWHLS.locate('HLYEAR;HLMONTH;HLDAY',vararrayof([y1,m1,d1]),[]) then
              fieldbyname('CWHL').value:=CWHLS.FieldByName('CWHL').value
            else
              fieldbyname('CWHL').value:=0;
            if fieldbyname('USprice').isnull then
              fieldbyname('USprice').value:=0;
            if fieldbyname('USACC').isnull then
              fieldbyname('USACC').value:=0;
            fieldbyname('VNprice').value:=round(fieldbyname('USprice').value*fieldbyname('CWHL').value);
            fieldbyname('VNACC').value:=round(fieldbyname('USACC').value*fieldbyname('CWHL').value);
            post;
        end
        //加入只有越盾為0也要換算美金
        else
        begin
            if fieldbyname('VNACC').isnull then
            begin
              edit; //20140303 修正忘了加edit
              if fieldbyname('USprice').isnull then
                  fieldbyname('USprice').value:=0;
              if fieldbyname('USACC').isnull then
                  fieldbyname('USACC').value:=0;
              fieldbyname('VNprice').value:=round( fieldbyname('USprice').value*fieldbyname('CWHL').value );
              fieldbyname('VNACC').value:=round(fieldbyname('USACC').value*fieldbyname('CWHL').value);
              post;
            end;
        end;
       next;
    end;
    first; 
  end;

end;

procedure TPayabled_CL_JGCBY.Button2Click(Sender: TObject);
var bm:Tbookmark;
    i:integer;
    bookmarklist:tbookmarklistEh;
begin
  query1.disablecontrols;
  bm:=query1.getbookmark;
  bookmarklist:=DBGrid1.selectedrows;
  if bookmarklist.count>0 then
  begin
      try
        for i:=0 to bookmarklist.count-1 do
        begin
          query1.gotobookmark(pointer(bookmarklist[i]));
          if query1.fieldbyname('FKZT').value<>'Y' then
          begin
            with  Payablelit.PayDet do
            begin
                Insert;
                fieldbyname('ZSBH').Value:=query1.fieldbyname('ZSBH').Value;
                fieldbyname('DJNO').Value:=query1.fieldbyname('DJNO').Value;
                fieldbyname('DJLX').Value:=query1.fieldbyname('DJLX').Value;
                fieldbyname('CGBH').Value:=query1.fieldbyname('CGBH').Value;
                fieldbyname('CLBH').Value:=query1.fieldbyname('CLBH').Value;
                fieldbyname('DJDATE').Value:=query1.fieldbyname('DJDATE').Value;
                fieldbyname('QTY').Value:=query1.fieldbyname('QTY').Value;
                fieldbyname('USPrice').Value:=query1.fieldbyname('USPrice').Value;
                fieldbyname('USACC').Value:=query1.fieldbyname('USACC').Value;
                fieldbyname('USQty').Value:=query1.fieldbyname('USACC').Value;
                fieldbyname('CWHL').Value:=query1.fieldbyname('CWHL').Value;
                fieldbyname('VNPrice').Value:=query1.fieldbyname('VNPrice').Value;
                fieldbyname('VNACC').Value:=query1.fieldbyname('VNACC').Value;
                fieldbyname('VNQty').Value:=query1.fieldbyname('VNACC').Value;
                fieldbyname('YWPM').Value:=query1.fieldbyname('YWPM').Value;
                fieldbyname('DWBH').Value:=query1.fieldbyname('DWBH').Value;
                fieldbyname('FKBH').Value:=Payablelit.PayMas.fieldbyname('FKBH').Value;
                post;
                query1.Edit;
                query1.FieldByName('FKZT').Value:='Y';
            end;
          end;
        end;
      finally
        begin
          query1.gotobookmark(bm);
          query1.freebookmark(bm);
          query1.enablecontrols;
          showmessage('You have finish copy!');
        end;
      end;
  end;
end;


procedure TPayabled_CL_JGCBY.FormClose(Sender: TObject;
    var Action: TCloseAction);
begin
  action:=Cafree;
end;

procedure TPayabled_CL_JGCBY.FormCreate(Sender: TObject);
begin
  edit1.Text:=PayableLit.PayMas.fieldbyname('ZSBH').Value;
  edit2.Text:=PayableLit.PayMas.fieldbyname('ZSYWJC').Value;
  DTP1.Date:=startofthemonth(IncMonth(date,-1));
  //2021工廠疫情解鎖 Weston
  if Yearof(Date)<>2021 then
  DTP1.MinDate:=startofthemonth(IncMonth(date,-1));  //鎖定月份,不可搜尋前個月的單
  DTP2.Date:=endofthemonth(IncMonth(date,-1));
  readini();

  //
end;

procedure TPayabled_CL_JGCBY.FormDestroy(Sender: TObject);
begin
 Payabled_CL_JGCBY:=nil;
end;

procedure TPayabled_CL_JGCBY.DBGrid1DblClick(Sender: TObject);
begin
  if query1.recordcount>0 then
  begin
    if query1.fieldbyname('FKZT').value='Y' then
    begin
        showmessage('Already deliver.');
        abort;
      end;
    if query1.fieldbyname('VNPrice').isnull then
    begin
        showmessage('Pls ask account key in exchange first.');
        abort;
    end;
    with  Payablelit.PayDet do
    begin
        Insert;
        fieldbyname('ZSBH').Value:=query1.fieldbyname('ZSBH').Value;
        fieldbyname('DJNO').Value:=query1.fieldbyname('DJNO').Value;
        fieldbyname('DJLX').Value:=query1.fieldbyname('DJLX').Value;
        fieldbyname('CGBH').Value:=query1.fieldbyname('CGBH').Value;
        fieldbyname('CLBH').Value:=query1.fieldbyname('CLBH').Value;
        fieldbyname('DJDATE').Value:=query1.fieldbyname('DJDATE').Value;
        fieldbyname('QTY').Value:=query1.fieldbyname('QTY').Value;
        fieldbyname('USPrice').Value:=query1.fieldbyname('USPrice').Value;
        fieldbyname('USACC').Value:=query1.fieldbyname('USACC').Value;
        fieldbyname('USQty').Value:=query1.fieldbyname('USACC').Value;
        fieldbyname('CWHL').Value:=query1.fieldbyname('CWHL').Value;
        fieldbyname('VNPrice').Value:=query1.fieldbyname('VNPrice').Value;
        fieldbyname('VNACC').Value:=query1.fieldbyname('VNACC').Value;
        fieldbyname('VNQty').Value:=query1.fieldbyname('VNACC').Value;
        fieldbyname('YWPM').Value:=query1.fieldbyname('YWPM').Value;
        fieldbyname('DWBH').Value:=query1.fieldbyname('DWBH').Value;
        fieldbyname('FKBH').Value:=Payablelit.PayMas.fieldbyname('FKBH').Value;
        post;
        query1.Edit;
        query1.FieldByName('FKZT').Value:='Y';
    end;
  end;
end;

procedure TPayabled_CL_JGCBY.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if query1.FieldByName('FKZT').value='Y' then
  begin
    dbgrid1.canvas.font.color:=clred;
    dbgrid1.defaultdrawcolumncell(rect,datacol,column,state);
  end;
end;




procedure TPayabled_CL_JGCBY.Query1AfterOpen(DataSet: TDataSet);
begin
if query1.recordcount>0 then
    N1.Enabled:=true
  else
    N1.Enabled:=false;
end;

procedure TPayabled_CL_JGCBY.N1Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin

  if query1.Active then
  begin
    if query1.recordcount=0 then
    begin
        showmessage('No record.');
        abort;
    end;
  end else
  begin
      showmessage('No record.');
      abort;
  end;

  try
    eclApp:=CreateOleObject('Excel.Application');
    WorkBook:=CreateOleObject('Excel.Sheet');
  except
    Application.MessageBox('NO Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
    Exit;
  end;

  try
    WorkBook:=eclApp.workbooks.Add;
    eclApp.Cells(1,1):='NO';
    for   i:=1   to   query1.fieldcount   do
      begin
        eclApp.Cells(1,i+1):=query1.fields[i-1].FieldName;
      end;
    query1.First;
    j:=2;
    while   not  query1.Eof   do
      begin
        eclApp.Cells(j,1):=j-1;
        for   i:=1   to   query1.fieldcount   do
          begin
            eclApp.Cells(j,i+1):=query1.Fields[i-1].Value;
            eclApp.Cells.Cells.item[j,i+1].font.size:='8';
          end;
        query1.Next;
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

procedure TPayabled_CL_JGCBY.FormShow(Sender: TObject);
begin
  main.FormLanguage(Pointer(self),self.Name);
end;

procedure TPayabled_CL_JGCBY.DBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
 if key=#13 then
   DBGrid1dblclick(nil);
end;



end.
