unit ExportQuantity1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GridsEh, DBGridEh, ExtCtrls, StdCtrls, DB, DBTables,comobj,dateutils,DBGridEhImpExp,ShellApi,
  ComCtrls,funUnit;

type
  TExportQuantity = class(TForm)
    PC1: TPageControl;
    TS1: TTabSheet;
    TS2: TTabSheet;
    Panel1: TPanel;
    lbYear: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    cbYear: TComboBox;
    Button2: TButton;
    cbMonth: TComboBox;
    Panel2: TPanel;
    DBGridEh1: TDBGridEh;
    Query1: TQuery;
    DS1: TDataSource;
    tmpQ: TQuery;
    OpenDialog: TOpenDialog;
    Panel3: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Button3: TButton;
    CB1: TComboBox;
    Button4: TButton;
    CB2: TComboBox;
    Panel4: TPanel;
    DBGridEh2: TDBGridEh;
    Query2: TQuery;
    tmpQ2: TQuery;
    DS2: TDataSource;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
     AppDir:String;
    { Private declarations }
    OrderListExcel:Variant;
    OrderExcFN:string;
    procedure ExportFormatExcel();
    procedure ExportDefaultExcel();
    Procedure ExportExternalExcel();

    procedure ExportFormatExcel1();
    procedure ExportDefaultExcel1();
    Procedure ExportExternalExcel1();
  public
    { Public declarations }
    ExcelSheetI:integer;
  end;

var
  ExportQuantity: TExportQuantity;

implementation

uses main1,ExcelSheetDlg1;

{$R *.dfm}

procedure TExportQuantity.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   action:=cafree;
end;

procedure TExportQuantity.FormDestroy(Sender: TObject);
begin
  ExportQuantity:=nil;
end;

procedure TExportQuantity.Button1Click(Sender: TObject);
var i,j,k:integer;
begin
  with tmpQ do
  begin
    active:=false;
    sql.Clear;
    sql.Add('select distinct Nday');
    sql.Add('from (');
    sql.Add('select day(shipdate) as NDay');
    sql.Add('from ddzl');
    sql.Add('where year(shipdate)='''+cbyear.Text+''' and month(shipdate)='''+cbMonth.Text+'''');
    sql.Add('and gsbh='''+main.Edit2.Text+'''');
    sql.Add('union all');
    sql.Add('select day(exedate) as NDay');
    sql.Add('from ywcp ');
    sql.add('left join YWDD on YWDD.DDBH=YWCP.DDBH');
    sql.add('left join DDZL on DDZL.DDBH=YWDD.YSBH');
    sql.Add('where year(exedate)='''+cbyear.Text+''' and month(exedate)='''+cbMonth.Text+'''');
    sql.Add('and ddzl.gsbh='''+main.Edit2.Text+''') DayList');
    sql.Add('order by NDay');
    active:=true;
  end;
  with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.Add('select SB');
    sql.Add(',TQty as Total');
    while not tmpQ.eof do
    begin
      sql.add(',sum(case  when Ngay='+''''+tmpQ.fieldbyname('Nday').asstring+'''');
      sql.add(' then Qty  end) as '+''''+tmpQ.fieldbyname('Nday').asstring+'''');
      tmpQ.Next;
    end;
    sql.Add('from(');
    sql.Add('select T1.SB,T1.Ngay,T1.Qty, T2.TQty');
    sql.Add('from');
    sql.Add('(select ''1.Plan'' as SB,day(ddzl.shipdate) as Ngay,sum(Pairs) as Qty');
    sql.Add('from ddzl');
    sql.Add('where year(ddzl.shipdate)='''+cbyear.Text+''' and month(ddzl.shipdate)='''+cbmonth.Text+'''');
    sql.Add('and ddzl.gsbh='''+main.edit2.Text+'''');
    sql.Add('group by day(ddzl.shipdate))T1');
    sql.Add('left join');
    sql.Add('(select ''1.Plan'' as SB,sum(Pairs) as TQty');
    sql.Add('from ddzl');
    sql.Add('where year(ddzl.shipdate)='''+cbyear.Text+''' and month(ddzl.shipdate)='''+cbmonth.Text+'''');
    sql.Add('and ddzl.gsbh='''+main.edit2.Text+''')T2 on T2.SB=T1.SB');
    sql.Add('union all');
    sql.Add('select  T1.SB,T1.Ngay,T1.Qty,T2.TQty');
    sql.Add('from');
    sql.Add('(select ''2.Actual'' as SB,day(ywcp.exedate) as Ngay,sum(YWCP.qty) as Qty');
    sql.Add('from ywcp ');
    sql.add('left join YWDD on YWDD.DDBH=YWCP.DDBH');
    sql.add('left join DDZL on DDZL.DDBH=YWDD.YSBH');
    sql.Add('where year(ywcp.exedate)='''+cbyear.Text+''' and month(ywcp.exedate)='''+cbmonth.Text+'''');
    sql.Add('and ddzl.gsbh='''+main.edit2.Text+'''');
    sql.Add('group by day(ywcp.exedate))T1');
    sql.Add('left join');
    sql.Add('(select ''2.Actual'' as SB,sum(YWCP.qty) as TQty');
    sql.Add('from ywcp ');
    sql.add('left join YWDD on YWDD.DDBH=YWCP.DDBH');
    sql.add('left join DDZL on DDZL.DDBH=YWDD.YSBH');
    sql.Add('where year(ywcp.exedate)='''+cbyear.Text+''' and month(ywcp.exedate)='''+cbmonth.Text+'''');
    sql.Add('and ddzl.gsbh='''+main.edit2.Text+''')T2 on T2.SB=T1.SB');
    sql.Add('union all');
    sql.Add('select T1.Sb,T1.Ngay,T1.Qty,T2.TQty');
    sql.Add('from');
    sql.Add('(select ''3.Diff'' as SB, DDZL.Ngay,DDZL.Qty-YWCP.Qty as Qty');
    sql.Add('from (');
    sql.Add('select ''3.Diff'' as SB,day(ddzl.shipdate) as Ngay,sum(Pairs) as Qty');
    sql.Add('from ddzl');
    sql.Add('where year(ddzl.shipdate)='''+cbyear.Text+''' and month(ddzl.shipdate)='''+cbmonth.Text+'''');
    sql.Add('and ddzl.gsbh='''+main.edit2.Text+'''');
    sql.Add('group by day(ddzl.shipdate)) DDZL');
    sql.Add('left join');
    sql.Add('(select ''3.Diff'' as SB,day(ywcp.exedate) as Ngay,sum(YWCP.qty) as Qty');
    sql.Add('from ywcp ');
    sql.add('left join YWDD on YWDD.DDBH=YWCP.DDBH');
    sql.add('left join DDZL on DDZL.DDBH=YWDD.YSBH');
    sql.Add('where year(ywcp.exedate)='''+cbyear.Text+''' and month(ywcp.exedate)='''+cbmonth.Text+'''');
    sql.Add('and ddzl.gsbh='''+main.edit2.Text+'''');
    sql.Add('group by day(ywcp.exedate))YWCP on DDZL.Ngay=YWCP.Ngay and DDZL.SB=YWCP.SB) T1');
    sql.Add('left join');
    sql.Add('(select ''3.Diff'' as SB,sum(DDZL.Qty-YWCP.Qty) as TQty');
    sql.Add('from (');
    sql.Add('select ''3.Diff'' as SB,day(ddzl.shipdate) as Ngay,sum(Pairs) as Qty');
    sql.Add('from ddzl');
    sql.Add('where year(ddzl.shipdate)='''+cbyear.Text+''' and month(ddzl.shipdate)='''+cbmonth.Text+'''');
    sql.Add('and ddzl.gsbh='''+main.edit2.Text+'''');
    sql.Add('group by day(ddzl.shipdate)) DDZL');
    sql.Add('left join');
    sql.Add('(select ''3.Diff'' as SB,day(ywcp.exedate) as Ngay,sum(YWCP.qty) as Qty');
    sql.Add('from ywcp ');
    sql.add('left join YWDD on YWDD.DDBH=YWCP.DDBH');
    sql.add('left join DDZL on DDZL.DDBH=YWDD.YSBH');
    sql.Add('where year(ywcp.exedate)='''+cbyear.Text+''' and month(ywcp.exedate)='''+cbmonth.Text+'''');
    sql.Add('and ddzl.gsbh='''+main.edit2.Text+'''');
    sql.Add('group by day(ywcp.exedate))YWCP on DDZL.Ngay=YWCP.Ngay)T2 on T2.SB=T1.SB');
    sql.Add(')DDZL_YWCP');
    sql.Add('group by SB,TQty');
    sql.Add('Order by SB');
    //memo1.lines:=sql;
    active:=true;
  end;
  with DBGrideh1 do
  begin
    columns[0].Width:=60;
    columns[0].title.caption:='日期|Date';
    for j:=2 to Query1.FieldCount-1 do
    begin
      columns[j].Width:=50;
      columns[j].Title.Caption:='日   期   Weekday|'+columns[j].Title.Caption;
    end;
    for k:= 1 to  1 do
    begin
     columns[k].Width:=60;
     columns[k].title.caption:='小計|Total';
    end;
  end;
end;

procedure TExportQuantity.FormCreate(Sender: TObject);
var
  myYear, myMonth, myDay : Word;
  i,j,k:integer;
begin
  DecodeDate(Date(), myYear, myMonth, myDay);
  with tmpQ do
  begin
    active:=false;
    sql.Clear;
    sql.add('select year(getdate())-5 as Oldyear,year(getdate())+5 as Newyear');
    active:=true;
    Cbyear.Items.Add('');
    Cb1.Items.Add('');
    for i:=tmpQ.fieldbyname('Oldyear').value to  tmpQ.fieldbyname('Newyear').value  do
    begin
      Cbyear.Items.Add(inttostr(i));
      Cb1.Items.Add(inttostr(i));
      next;
    end;
   active:=false;
  end;
  Cbyear.ItemIndex:=6;
  CB1.ItemIndex:=6;
  for j:=0 to cbMonth.Items.Count-1 do
  begin
    if strtoint(cbMonth.Items[j])=myMonth then
    begin
      cbMonth.ItemIndex:=j;
      cb2.ItemIndex:=j;
      break;
    end;
  end; 
  AppDir:=ExtractFilePath(Application.ExeName);
end;
procedure  TExportQuantity.ExportFormatExcel();
var eclApp,WorkBook:olevariant;
    i,j,k:integer;
begin
  //
   if(not DirectoryExists(AppDir+'Additional\'))  then ForceDirectories(AppDir+'Additional\');
    CopyFile(Pchar('\\'+main.ServerIP+'\liy_erp\Additional\Production_SN526.xls'),Pchar(AppDir+'Additional\Production_SN526.xls'),false);
    if FileExists(AppDir+'Additional\Production_SN526.xls') then
    begin
  //

    if  Query1.active  then
    begin
      try
        eclApp:=CreateOleObject('Excel.Application');
        WorkBook:=CreateOleObject('Excel.Sheet');
      except
        Application.MessageBox('No Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
        Exit;
      end;
      try
          eclApp.WorkBooks.Open(AppDir+'Additional\Production_SN526.xls');
          eclApp.WorkSheets[4].Activate;
          for   i:=1   to   Query1.fieldCount-1   do
          begin
              eclApp.Cells(3,i+2):=Query1.fields[i].FieldName;
              eclApp.Range[eclApp.Cells[3,i+2],eclApp.Cells[4,i+2]].merge;
              eclApp.Range[eclApp.Cells[3,i+2],eclApp.Cells[4,i+2]].HorizontalAlignment := -4108;
          end;
          Query1.First;
          j:=5;
          while   not   Query1.Eof   do
            begin
              for   i:=1   to  Query1.fieldcount-1  do
              begin
                eclApp.Cells(j,i+2):=Query1.Fields[i].Value;
              end;
            eclApp.range[eclApp.cells[5,3],eclApp.cells[j,3]].interior.color:=clyellow;
            eclApp.range[eclApp.cells[5,3],eclApp.cells[j,3]].font.color:=clred;
            Query1.Next;
            inc(j);
            end;

          //  add outline
          for k:=1 to 4 do
            begin
              eclApp.range[eclApp.cells[3,3],eclApp.cells[j-1,i+1]].borders[k].linestyle:=1;
            end;
         //
         eclApp.Cells(3,1):=cbMonth.Text+'月份';
         eclApp.Range[eclApp.Cells[2,1],eclApp.Cells[2,i+1]].merge;
         eclApp.Range[eclApp.Cells[2,1],eclApp.Cells[2,i+1]].HorizontalAlignment := -4108;
         eclApp.range[eclApp.cells[3,3],eclApp.cells[j-1,i+1]].font.Name:='Arial';
         {eclApp.range[eclApp.cells[3,3],eclApp.cells[j-1,i+1]].font.size:=10;
         eclApp.range[eclApp.cells[3,3],eclApp.cells[j-1,i+1]].ColumnWidth:=6;}
        // eclapp.columns.autofit;
         showmessage('Succeed');
         eclApp.Visible:=True;
      except
          on   F:Exception   do
            showmessage(F.Message);
      end;
    end;
 //
 end;
end;
Procedure TExportQuantity.ExportDefaultExcel();
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin
  if  Query1.active  then
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
       showmessage('Succeed');
       eclApp.Visible:=True;
    except
        on   F:Exception   do
          showmessage(F.Message);
    end;
  end;
end;
Procedure TExportQuantity.ExportExternalExcel();
var i,j,k,l,excelcount: integer;
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
    OrderListExcel.WorkBooks.Open(OpenDialog.FileName);
    ExcelSheetI:=1;
    excelcount:=OrderListExcel.WorkSheets.count;

    ExcelSheetDlg:=TExcelSheetDlg.Create(self);
    ExcelSheetDlg.ExcelSheetI:=@ExcelSheetI;
    for i:=1 to excelcount do
    begin
      ExcelSheetDlg.ListBox1.Items.Add(inttostr(i)+'.'+OrderListExcel.WorkSheets[i].name);
    end;
    ExcelSheetDlg.ShowModal();
    ExcelSheetDlg.Free;
    //
    OrderListExcel.WorkSheets[ExcelSheetI].Activate;
    //
    for  i:=1  to  Query1.fieldCount-1   do
    begin
      OrderListExcel.Cells(3,i+2):=Query1.fields[i].FieldName;
      OrderListExcel.Range[OrderListExcel.Cells[3,i+2],OrderListExcel.Cells[4,i+2]].merge;
      OrderListExcel.Range[OrderListExcel.Cells[3,i+2],OrderListExcel.Cells[4,i+2]].HorizontalAlignment := -4108;
    end;
     // delete data
    for j:=i+1 to 36 do
      OrderListExcel.ActiveSheet.Columns[i+2].Delete;
    //
    Query1.First;
    j:=5;
    while   not   Query1.Eof   do
    begin
      for   i:=1   to  Query1.fieldcount-1  do
      begin
          OrderListExcel.Cells(j,i+2):=Query1.Fields[i].Value;
      end;
      OrderListExcel.range[OrderListExcel.cells[5,3],OrderListExcel.cells[j,3]].interior.color:=clyellow;
      OrderListExcel.range[OrderListExcel.cells[5,3],OrderListExcel.cells[j,3]].font.color:=clred;
      Query1.Next;
      inc(j);
    end;
    //  add outline
    for k:=1 to 4 do
    begin
      OrderListExcel.range[OrderListExcel.cells[3,3],OrderListExcel.cells[13,i+1]].borders[k].linestyle:=1;
    end;
   //
   OrderListExcel.Cells(3,1):=cbMonth.Text+'月份';
   OrderListExcel.Range[OrderListExcel.Cells[2,1],OrderListExcel.Cells[2,i+1]].merge;
   OrderListExcel.Range[OrderListExcel.Cells[2,1],OrderListExcel.Cells[2,i+1]].HorizontalAlignment := -4108;
   //OrderListExcel.range[OrderListExcel.cells[3,3],OrderListExcel.cells[j-1,i+1]].font.Name:='Arial';
   {OrderListExcel.range[OrderListExcel.cells[3,3],OrderListExcel.cells[j-1,i+1]].font.size:=10;
   OrderListExcel.range[OrderListExcel.cells[3,3],OrderListExcel.cells[j-1,i+1]].ColumnWidth:=6;}
   OrderListExcel.columns.autofit;
   showmessage('Succeed');
   OrderListExcel.Visible:=True;
//
  except
    on   F:Exception   do
      showmessage(F.Message);
  end;
end;

end;

procedure TExportQuantity.Button2Click(Sender: TObject);
begin
  if  Messagedlg(Pchar('Format Export?'),mtInformation,[mbNo,mbYes],0)=mrYes then
  begin
    if Messagedlg(Pchar('Use External Excel?'),mtInformation,[mbNo,mbYes],0)=mrYes then
     begin
       ExportExternalExcel();
     end else
     begin
        ExportFormatExcel();
     end;
  end else
  begin
     ExportDefaultExcel();
  end;

end;
procedure TExportQuantity.Button3Click(Sender: TObject);
var i,j,k:integer;
begin
  with tmpQ2 do
  begin
    active:=false;
    sql.Clear;
    sql.Add('select distinct Nday');
    sql.Add('from (');
    sql.Add('select day(LastInDate) as NDay');
    sql.Add('from ywcp ');
    sql.add('left join YWDD on YWDD.DDBH=YWCP.DDBH');
    sql.add('left join DDZL on DDZL.DDBH=YWDD.YSBH');
    sql.Add('where year(LastInDate)='''+cb1.Text+''' and month(LastInDate)='''+cb2.Text+'''');
    sql.Add('and DDZL.gsbh='''+main.Edit2.Text+'''');
    sql.Add('union all');
    sql.Add('select day(exedate) as NDay');
    sql.Add('from ywcp ');
    sql.add('left join YWDD on YWDD.DDBH=YWCP.DDBH');
    sql.add('left join DDZL on DDZL.DDBH=YWDD.YSBH');
    sql.Add('where year(exedate)='''+cb1.Text+''' and month(exedate)='''+cb2.Text+'''');
    sql.Add('and DDZL.gsbh='''+main.edit2.Text+''') DayList');
    sql.Add('order by NDay');
    active:=true;
  end;
  with query2 do
  begin
    active:=false;
    sql.Clear;
    sql.Add('select KFJC,SB,TQty as Total');
    while not tmpQ2.eof do
    begin
      sql.add(',sum(case  when Nday='+''''+tmpQ2.fieldbyname('Nday').asstring+'''');
      sql.add(' then Qty  end) as '+''''+tmpQ2.fieldbyname('Nday').asstring+'''');
      tmpQ2.Next;
    end;
    sql.Add('from (select T1.KFJC,T1.SB,T1.NDay,T1.Qty, T2.TQty');
    sql.Add('from ( select KFZL.KFJC,''1.INDATE'' as SB,day(LastInDate) as NDay,Sum(YWCP.Qty)as Qty');
    sql.Add('     from ywcp ');
    sql.add('     left join YWDD on YWDD.DDBH=YWCP.DDBH');
    sql.add('     left join DDZL on DDZL.DDBH=YWDD.YSBH');
    sql.Add('     Left join KFZL on KFZL.KFDH=DDZL.KHBH');
    sql.Add('     where year(LastInDate)='''+cb1.Text+''' and month(LastInDate)='''+cb2.Text+''' and YWCP.SB=1 and DDZL.GSBH='''+main.edit2.Text+'''');
    sql.Add('     Group by KFZL.KFJC,day(LastInDate)) T1');
    sql.Add('     left join');
    sql.Add('     (select KFZL.KFJC,''1.INDATE'' as SB,Sum(YWCP.Qty)as TQty');
    sql.Add('     from ywcp ');
    sql.add('     left join YWDD on YWDD.DDBH=YWCP.DDBH');
    sql.add('     left join DDZL on DDZL.DDBH=YWDD.YSBH');
    sql.Add('     Left join KFZL on KFZL.KFDH=DDZL.KHBH');
    sql.Add('     where year(LastInDate)='''+cb1.Text+''' and month(LastInDate)='''+cb2.Text+''' and YWCP.SB=1 and DDZL.GSBH='''+main.edit2.Text+'''');
    sql.Add('     Group by KFZL.KFJC) T2 on T1.SB=T2.SB');
    sql.Add('union all');
    sql.Add('select T1.KFJC,T1.SB,T1.NDay,T1.Qty, T2.TQty');
    sql.Add('from(select KFZL.KFJC,''2.EXPDATE'' as SB,day(EXEDATE) as NDay,Sum(YWCP.Qty) as Qty');
    sql.Add('     from ywcp ');
    sql.add('     left join YWDD on YWDD.DDBH=YWCP.DDBH');
    sql.add('     left join DDZL on DDZL.DDBH=YWDD.YSBH');
    sql.Add('     Left join KFZL on KFZL.KFDH=DDZL.KHBH');
    sql.Add('     where year(exedate)='''+cb1.Text+''' and month(exedate)='''+cb2.Text+''' and DDZL.GSBH='''+main.edit2.Text+''' --and SB=3');
    sql.Add('     Group by KFZL.KFJC,day(EXEDATE)) T1');
    sql.Add('     left join');
    sql.Add('     (select KFZL.KFJC,''2.EXPDATE'' as SB,Sum(YWCP.Qty) as TQty');
    sql.Add('     from ywcp ');
    sql.add('     left join YWDD on YWDD.DDBH=YWCP.DDBH');
    sql.add('     left join DDZL on DDZL.DDBH=YWDD.YSBH');
    sql.Add('     Left join KFZL on KFZL.KFDH=DDZL.KHBH');
    sql.Add('     where year(exedate)='''+cb1.Text+''' and month(exedate)='''+cb2.Text+''' and DDZL.GSBH='''+main.edit2.Text+''' --and SB=3');
    sql.Add('     Group by KFZL.KFJC) T2 on T1.SB=T2.SB');
    sql.Add(')YWCP');
    sql.Add('group by KFJC,SB,TQTY');
    sql.Add('order by SB');
    active:=true;
  end;
  with DBGridEh2 do
  begin
    columns[0].Width:=80;
    columns[0].title.caption:='客戶|Customer';
    columns[1].Width:=80;
    columns[1].title.caption:='日期|Date';
    for j:=3 to Query2.FieldCount-1 do
    begin
      columns[j].Width:=50;
      columns[j].Title.Caption:='日   期   Weekday|'+columns[j].Title.Caption;
    end;
    for k:= 2 to  2 do
    begin
     columns[k].Width:=60;
     columns[k].title.caption:='小計|Total';
    end;
  end;
end;

procedure TExportQuantity.Button4Click(Sender: TObject);
begin
 if  Messagedlg(Pchar('Format Export?'),mtInformation,[mbNo,mbYes],0)=mrYes then
  begin
    if Messagedlg(Pchar('Use External Excel?'),mtInformation,[mbNo,mbYes],0)=mrYes then
     begin
       ExportExternalExcel1();
     end else
     begin
        ExportFormatExcel1();
     end;
  end else
  begin
     ExportDefaultExcel1();
  end;
end;
procedure TExportQuantity.ExportFormatExcel1();
var eclApp,WorkBook:olevariant;
    i,j,k:integer;
begin
  //
   if(not DirectoryExists(AppDir+'Additional\'))  then ForceDirectories(AppDir+'Additional\');
    CopyFile(Pchar('\\'+main.ServerIP+'\liy_erp\Additional\Production_SN526_2.xls'),Pchar(AppDir+'Additional\Production_SN526_2.xls'),false);
    if FileExists(AppDir+'Additional\Production_SN526_2.xls') then
    begin
  //

    if  Query2.active  then
    begin
      try
        eclApp:=CreateOleObject('Excel.Application');
        WorkBook:=CreateOleObject('Excel.Sheet');
      except
        Application.MessageBox('No Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
        Exit;
      end;
      try
          eclApp.WorkBooks.Open(AppDir+'Additional\Production_SN526_2.xls');
          eclApp.WorkSheets[5].Activate;
          for   i:=1   to   Query2.fieldCount-1   do
          begin
              eclApp.Cells(3,i+1):=Query2.fields[i].FieldName;
              eclApp.Range[eclApp.Cells[3,i+1],eclApp.Cells[4,i+1]].merge;
              eclApp.Range[eclApp.Cells[3,i+1],eclApp.Cells[4,i+1]].HorizontalAlignment := -4108;
          end;
          Query2.First;
          j:=5;
          while   not   Query2.Eof   do
            begin
              for   i:=1   to  Query2.fieldcount-1  do
              begin
                eclApp.Cells(j,i+1):=Query2.Fields[i].Value;
              end;
            eclApp.range[eclApp.cells[5,3],eclApp.cells[j,3]].interior.color:=clyellow;
            eclApp.range[eclApp.cells[5,3],eclApp.cells[j,3]].font.color:=clred;
            Query2.Next;
            inc(j);
            end;

          //  add outline
          for k:=1 to 4 do
            begin
              eclApp.range[eclApp.cells[3,2],eclApp.cells[j-1,i]].borders[k].linestyle:=1;
            end;
         //
         eclApp.range[eclApp.cells[3,2],eclApp.cells[j-1,i]].font.Name:='Arial';
        // eclapp.columns.autofit;
         showmessage('Succeed');
         eclApp.Visible:=True;
      except
          on   F:Exception   do
            showmessage(F.Message);
      end;
    end;
 //
 end;

end;
Procedure TExportQuantity.ExportExternalExcel1();
var  eclApp,WorkBook:olevariant;
 i,j,k,excelcount: integer;
begin
  if OpenDialog.Execute()=true then
  begin
    try
      //開啟Excel OLE
      eclApp:=CreateOleObject('Excel.Application');
    except
      on E:Exception do
      begin
        Application.MessageBox(PChar('NO EXCEL'+E.Message),'', MB_OK);
        EXIT;
      end;
  end;
  try
    eclApp.WorkBooks.Open(OpenDialog.FileName);
    ExcelSheetI:=1;
    excelcount:=eclApp.WorkSheets.count;

    ExcelSheetDlg:=TExcelSheetDlg.Create(self);
    ExcelSheetDlg.ExcelSheetI:=@ExcelSheetI;
    for i:=1 to excelcount do
    begin
      ExcelSheetDlg.ListBox1.Items.Add(inttostr(i)+'.'+eclApp.WorkSheets[i].name);
    end;
    ExcelSheetDlg.ShowModal();
    ExcelSheetDlg.Free;
    //
    eclApp.WorkSheets[ExcelSheetI].Activate;
    //
     for   i:=1   to   Query2.fieldCount-1   do
     begin
        eclApp.Cells(3,i+1):=Query2.fields[i].FieldName;
        eclApp.Range[eclApp.Cells[3,i+1],eclApp.Cells[4,i+1]].merge;
        eclApp.Range[eclApp.Cells[3,i+1],eclApp.Cells[4,i+1]].HorizontalAlignment := -4108;
        eclApp.Range[eclApp.Cells[3,i+1],eclApp.Cells[4,i+1]].VerticalAlignment := -4108;
     end;
     // delete data
     for j:=i+1 to 36 do
      eclApp.ActiveSheet.Columns[i+2].Delete;
      //
      Query2.First;
      j:=5;
      while   not   Query2.Eof   do
      begin
        for   i:=2  to  Query2.fieldcount-1  do
        begin
            eclApp.Cells(j,i+1):=Query2.Fields[i].Value;
        end;
        eclApp.range[eclApp.cells[5,3],eclApp.cells[j,3]].interior.color:=clyellow;
        eclApp.range[eclApp.cells[5,3],eclApp.cells[j,3]].font.color:=clred;
        Query2.Next;
        inc(j);
      end;

      //  add outline
      //eclApp.range[eclApp.cells[3,2],eclApp.cells[8,i]].Borders.Weight := 2;
      //
      //eclApp.range[eclApp.cells[3,2],eclApp.cells[j-1,i]].font.Name:='Arial';
      // eclapp.columns.autofit;
     showmessage('Succeed');
     eclApp.Visible:=True;
    except
      on   F:Exception   do
        showmessage(F.Message);
    end;
  end;
 //
end;
Procedure TExportQuantity.ExportDefaultExcel1();
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin
  if  Query2.active  then
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
        for   i:=0   to   Query2.fieldcount-1   do
        begin
            eclApp.Cells(1,i+1):=Query2.fields[i].FieldName;
        end;

        Query2.First;
        j:=2;
        while   not   Query2.Eof   do
        begin
          for   i:=0   to  Query2.fieldcount-1  do
          begin
            eclApp.Cells(j,i+1):=Query2.Fields[i].Value;
          end;
        Query2.Next;
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

end.
