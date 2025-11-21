unit Timkiem1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ExtCtrls, Buttons,
  ComCtrls, DBCtrls, Mask, Menus, ExtDlgs,comobj,jpeg;

type
  TTim_kiem = class(TForm)
    Panel1: TPanel;
    BB2: TBitBtn;
    BB3: TBitBtn;
    BB4: TBitBtn;
    BB5: TBitBtn;
    BB6: TBitBtn;
    BB7: TBitBtn;
    BB1: TBitBtn;
    BBT1: TBitBtn;
    BBT2: TBitBtn;
    BBT3: TBitBtn;
    BBT4: TBitBtn;
    bbt5: TBitBtn;
    bbt6: TBitBtn;
    Panel3: TPanel;
    Userid: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Edit2: TEdit;
    ComboBox1: TComboBox;
    DBGrid1: TDBGridEh;
    DS1: TDataSource;
    Query1: TQuery;
    Query1ID: TStringField;
    Query1GSBH: TStringField;
    Query1DepName: TStringField;
    Query1DepMemo: TStringField;
    Query1ProYN: TBooleanField;
    Query1Worker_Qty: TIntegerField;
    Query1UserID: TStringField;
    Query1UserDate: TDateTimeField;
    Query1YN: TStringField;
    Query1GXLB: TStringField;
    Query1sumline: TStringField;
    Query1reportclass: TStringField;
    Query1ID_HRM: TStringField;
    Query1flDepID: TStringField;
    Query1Xuong: TStringField;
    Query1BZLB: TStringField;
    UpSQL1: TUpdateSQL;
    tmpQry: TQuery;
    bbt7: TButton;
    OpenDialog: TOpenDialog;
    BitBtn1: TBitBtn;
    procedure Button1Click(Sender: TObject);
    procedure BB1Click(Sender: TObject);
    procedure bbt6Click(Sender: TObject);
    procedure bbt5Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure bbt7Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure BB2Click(Sender: TObject);
    procedure BB3Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure BB7Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Tim_kiem: TTim_kiem;
        Appdir:string;
        sdate,edate,ndate:TDate;

implementation

uses TK_Print1, main1;

{$R *.dfm}

procedure TTim_kiem.Button1Click(Sender: TObject);
begin
  with query1 do
    begin
    active:=false;
    sql.clear;
    sql.add('select top 10 * from bdepartment');
    sql.Add('where id like'''+edit1.text+'%''');
    sql.Add('and userid like'''+edit2.text+'%''');
    sql.Add('and yn like'''+combobox1.text+'%''');
    active:=true;
    end;
   bb2.Enabled:=true;
   bb3.Enabled:=true;
   bb4.Enabled:=true;
   bb7.Enabled:=true;
   bbt5.Enabled:=true;
   bbt6.Enabled:=true;
   bbt7.Enabled:=true;
   BitBtn1.enabled:=true;
end;

procedure TTim_kiem.BB1Click(Sender: TObject);
begin
  panel3.Visible:=true;
  end;
procedure TTim_kiem.bbt6Click(Sender: TObject);
var   eclApp,WorkBook:olevariant;
      i,j: integer;
      begin
   if query1.active then
      begin
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
    for i:=0 to DBGrid1.Columns.Count-1 do
    begin
      eclApp.Cells(1,i+2):=DBGrid1.Columns[i].Title.Caption;
    end;
    query1.First;
    j:=2;
    while   not  query1.Eof   do
    begin
      eclApp.Cells(j,1):=j-1;
      for i:=0 to DBGrid1.Columns.Count-1 do
      begin
        eclApp.Cells[j,i+8].NumberFormatLocal:='@';
        eclApp.Cells(j,i+2):=DBGrid1.Fields[i].Value;
        eclApp.Cells.Cells.item[j,i+2].font.size:='8';
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
end;
procedure TTim_kiem.bbt5Click(Sender: TObject);
 begin
 if messagedlg('Are you want to Print?',mtinformation,[mbYes,mbNo],0)=mrYes then
    begin
      TK_Print:=TTK_Print.create(self);
      TK_Print.quickrep1.prepare;
      TK_Print.quickrep1.preview;
      TK_Print.free;
    end else
    begin
     abort;
    end;
 end;
procedure TTim_kiem.FormClose(Sender: TObject; var Action: TCloseAction);
begin
action:=cafree;
end;

procedure TTim_kiem.FormDestroy(Sender: TObject);
begin
   tim_kiem:=nil;
end;

procedure TTim_kiem.bbt7Click(Sender: TObject);
var   eclApp,WorkBook:olevariant;
      i,j: integer;
  begin
  AppDir:=ExtractFilePath(Application.ExeName);
  CopyFile(Pchar('\\192.168.79.128\xuan\Formexcel\Tim_Kiem.xls'),Pchar('\\192.168.79.128\xuan\Formexcel\Tim_Kiem.xls'),false);
 if FileExists('\\192.168.79.128\xuan\Formexcel\Tim_Kiem.xls')=true then
 begin
  with query1 do
    begin
       active:=false;
       sql.clear;
       sql.add('select top 30 * from bdepartment');
       active:=true;
    end;
    if query1.active then
      begin
      try
        eclApp:=CreateOleObject('Excel.Application');
        WorkBook:=CreateOleObject('Excel.Sheet');
      except
        Application.MessageBox('NO Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
        Exit;
      end;
      try
        eclApp.WorkBooks.Open('\\192.168.79.128\xuan\Formexcel\Tim_Kiem.xls');
        eclApp.WorkSheets[1].Activate;
        query1.First;
        j:=4;
        for i:=1 to query1.RecordCount do
        begin
        eclApp.Cells(j,2):=inttostr(i);
        eclApp.Cells(j,4):=query1.FieldByName('GSBH').value;
        eclApp.Cells(j,5):=query1.FieldByName('ID').value;
        eclApp.Cells(j,6):=query1.FieldByName('DepName').value;
        eclApp.Cells(j,7):=formatdatetime('YYYY/MM/DD',query1.FieldByName('Userdate').value);
        eclApp.Cells(j,8):=query1.FieldByName('ProYn').value;
        eclApp.Cells(j,9):=query1.FieldByName('Yn').value;
        eclApp.Cells(j,10):=query1.FieldByName('Yn').value + inttostr(i);
        eclApp.Cells[j,10].Formula:='=SUM(B'+inttostr(j)+'+I'+inttostr(j)+')';
        query1.Next;
        inc(j);
        end;
        showmessage('Succeed.');
        eclApp.Visible:=True;
    except
        on   F:Exception   do
          showmessage(F.Message);
      end;
    end;
  end else
  begin
    showmessage('File not exists');
  end;
end;

procedure TTim_kiem.BitBtn1Click(Sender: TObject);
var
  j:integer;
  MsExcel:olevariant;
  MsExcelWorkbook: Variant;
  ID,GSBH,DepName,DepMemo,ProYN,FileName,Userid,Userdate:string;
begin
  with Query1 do
  begin
    RequestLive := true;
    CachedUpdates := true;
    insert;
  end;
   if opendialog.Execute then
   begin
     MsExcel:=CreateOleObject('Excel.Application');
     MsExcelWorkBook := msExcel.Workbooks.Open(OpenDialog.FileName);
     FileName := OpenDialog.FileName;
     j:=2;
     for j:=2 to 100 do
     begin
         ID:=msExcel.WorkBooks[1].WorkSheets[1].Cells[j,2];
         GSBH:=msExcel.WorkBooks[1].WorkSheets[1].Cells[j,3];
         DepName:=msExcel.WorkBooks[1].WorkSheets[1].Cells[j,4];
         DepMemo:=msExcel.WorkBooks[1].WorkSheets[1].Cells[j,5];
         ProYN:=msExcel.WorkBooks[1].WorkSheets[1].Cells[j,6];
         UserID:=msExcel.WorkBooks[1].WorkSheets[1].Cells[j,7];
         UserDate:=msExcel.WorkBooks[1].WorkSheets[1].Cells[j,8];
         if  ID <>'' then
         begin
           Query1.insert;
           Query1.FieldByName('ID').Value:=ID;
           Query1.FieldByName('GSBH').Value:=GSBH;
           Query1.FieldByName('DepName').Value:=DepName;
           Query1.FieldByName('DepMemo').Value:=DepMemo;
           Query1.FieldByName('ProYN').Value:=ProYN;
           Query1.FieldByName('Userid').Value:=Userid;
           Query1.FieldByName('Userdate').Value:=Userdate;
           Query1.Post;
         end;
         //j:=j+1;
     end;
     MsExcelWorkBook.Close;
     MsExcel.Quit;
   end;
   //article.Free;
   BB5.Enabled := true;
   BB6.Enabled := true;
end;

procedure TTim_kiem.BB5Click(Sender: TObject);
var i:integer;
begin
  query1.First;
  while not query1.Eof do
  begin
    if query1.FieldByName('ID').IsNull then
      begin
        messagedlg('Pls key in depname first.',mtconfirmation,[mbYes],0);
        abort;
      end;
  end;
  try
      query1.first;
      for i:=1 to query1.RecordCount do
        begin
          case query1.updatestatus of
            usinserted:
              begin
                if query1.fieldbyname('ID').isnull then
                  begin
                    query1.delete;
                  end
                   else
                     begin
                       query1.edit;
                       query1.FieldByName('ID').Value:=uppercase(query1.FieldByName('ID').Value);
                       query1.FieldByName('GSBH').Value:=uppercase(query1.FieldByName('GSBH').Value);
                       query1.FieldByName('depname').Value:=uppercase(query1.FieldByName('Depname').Value);
                       query1.FieldByName('depmemo').Value:=uppercase(query1.FieldByName('Depmemo').Value);
                       query1.FieldByName('userID').Value:=main.edit1.text;
                       query1.FieldByName('userdate').Value:=formatdatetime('yyyy/MM/dd',Ndate);
                       query1.FieldByName('YN').Value:='1';
                       //query1.FieldByName('GXLB').Value:=uppercase(query1.FieldByName('GXLB').Value);
                       upsql1.apply(ukinsert);
                     end;
              end;
            usmodified:
               begin
                if query1.fieldbyname('YN').value='1'then
                  begin
                    with query1 do
                      begin
                        active:=false;
                        sql.clear;
                        sql.add('update bdepartment set YN = 5 where ID = '+''''+query1.fieldbyname('ID').Value+'''');
                        execsql;
                      end;
                    upsql1.apply(ukdelete);
                  end
                  else
                    begin
                      query1.edit;
                      query1.FieldByName('userID').Value:=main.edit1.text;
                      query1.FieldByName('userdate').Value:=formatdatetime('yyyy/MM/dd',Ndate);
                      query1.Post;
                      upsql1.apply(ukmodify);
                    end;
               end;
          end;
         query1.next;
        end;
  query1.active:=false;
  query1.cachedupdates:=false;
  query1.requestlive:=false;
  query1.active:=true;
  bb5.enabled:=false;
  bb6.enabled:=false;
  dbgrid1.columns[1].ButtonStyle:=cbsnone;
  except
    Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
  end;

end;

procedure TTim_kiem.BB2Click(Sender: TObject);
begin
 with query1 do
  begin
    requestlive:=true;
    cachedupdates:=true;
    insert;
  end;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
  dbgrid1.columns[1].ButtonStyle:=cbsEllipsis;
end;

procedure TTim_kiem.BB3Click(Sender: TObject);
begin
 if messagedlg('All the detail will be deleted too!',mtconfirmation,[mbYes,mbNo],0)=mrYes then
  begin
        with query1 do
          begin
            requestlive:=true;
            cachedupdates:=true;
            edit;
            fieldbyname('YN').Value:='0';
          end;
      end;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
  dbgrid1.columns[1].ButtonStyle:=cbsEllipsis;
end;

procedure TTim_kiem.BB4Click(Sender: TObject);
begin
  with query1 do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
  dbgrid1.columns[1].ButtonStyle:=cbsEllipsis;
end;
procedure TTim_kiem.BB6Click(Sender: TObject);
begin
  with query1 do
  begin
    active:=false;
    cachedupdates:=false;
    requestlive:=false;
    active:=true;
  end;
  bb5.enabled:=false;
  bb6.enabled:=false;
end;
procedure TTim_kiem.BB7Click(Sender: TObject);
begin
close;
end;

end.
