unit PreviewTotal1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls, GridsEh,
  DBGridEh,ehlibBDE, ComCtrls, Menus,comobj;

type
  TPreviewTotal = class(TForm)
    DataSource2: TDataSource;
    Panel1: TPanel;
    Label4: TLabel;
    Label5: TLabel;
    Button1: TButton;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    Button2: TButton;
    Query1: TQuery;
    DataSource1: TDataSource;
    PC1: TPageControl;
    TS3: TTabSheet;
    DBGridEh1: TDBGridEh;
    TS4: TTabSheet;
    Query1Month: TStringField;
    Query1CKBH: TStringField;
    Query1JGNO: TStringField;
    Query1Total: TIntegerField;
    Query2: TQuery;
    Query2Month: TStringField;
    Query2CKBH: TStringField;
    Query2Total: TIntegerField;
    Query2LLNO: TStringField;
    DBGridEh2: TDBGridEh;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PreviewTotal: TPreviewTotal;

implementation

uses main1,ExtraPreview1;

{$R *.dfm}

procedure TPreviewTotal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=Cafree;
end;

procedure TPreviewTotal.FormDestroy(Sender: TObject);
begin
  PreviewTotal:=nil;
end;

procedure TPreviewTotal.Button1Click(Sender: TObject);
begin
  if PC1.ActivePageIndex=0 then
  begin
    with Query1 do
    begin
      active:=false;
      sql.Clear;
      sql.add('select CONVERT(VARCHAR(7),JGZL.JGDate,111) as Month,JGZL.CKBH,JGZL.JGNO,count(JGZLS.CLBH) as Total ');
      sql.add('from JGZL ');
      sql.add('left join JGZLS on JGZL.JGNO=JGZLS.JGNO ');
      sql.add('where JGZL.GSBH='+''''+main.edit2.text+'''');
      sql.add('      and Convert(varchar,JGZL.JGDate,111) between ');
      sql.add('          '''+formatdatetime('yyyy/MM/dd',DTP1.date)+''''+ ' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.date)+'''');
      sql.add('GROUP BY CONVERT(VARCHAR(7),JGZL.JGDate,111),JGZL.CKBH,JGZL.JGNO');
      sql.add('ORDER BY CONVERT(VARCHAR(7),JGZL.JGDate,111),JGZL.CKBH,JGZL.JGNO');
      active:=true;
    end;
  end else
  begin
    with Query2 do
    begin
      active:=false;
      sql.Clear;
      sql.add('select CONVERT(VARCHAR(7),KCLL.USERDATE,111) as Month,KCLL.CKBH,KCLL.LLNO,count(clbh) as ToTal ');
      sql.add('from KCLL ');
      sql.add('left join KCLLS on KCLL.LLNO=KCLLS.LLNO ');
      sql.add('where KCLL.GSBH='+''''+main.edit2.text+'''');
      sql.add('      and KCLL.CKBH in ( select CKBH from KCCK where GSBH='''+main.edit2.text+''') ');
      sql.add('      and KCLL.LLNO not like ''%9999%'' ');
      sql.add('      and Convert(varchar,KCLL.USERDATE,111) between ');
      sql.add('          '''+formatdatetime('yyyy/MM/dd',DTP1.date)+''''+ ' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.date)+'''');
      sql.add('GROUP BY CONVERT(VARCHAR(7),KCLL.USERDATE,111) ,KCLL.CKBH,KCLL.LLNO');
      sql.add('ORDER BY CONVERT(VARCHAR(7),KCLL.USERDATE,111) ,KCLL.CKBH,KCLL.LLNO');
      active:=true;
    end;
  end;
end;

procedure TPreviewTotal.Button2Click(Sender: TObject);
var   a:string;
      eclApp,WorkBook:olevariant;
 //     xlsFileName:string;
      i,j:integer;
begin
  if PC1.ActivePageIndex=0 then
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
         eclApp.Visible:=True;
         showmessage('Succeed');
        except
          on   F:Exception   do
            showmessage(F.Message);
        end;
      end;
   end else
   if PC1.ActivePageIndex=1 then
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
         eclApp.Visible:=True;
         showmessage('Succeed');
        except
          on   F:Exception   do
            showmessage(F.Message);
        end;
      end;
   end;
end;

procedure TPreviewTotal.FormCreate(Sender: TObject);
begin
  DTP1.date:=date-30;
  DTP2.date:=date;
end;

end.
