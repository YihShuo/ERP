unit MaterialEntryList1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, DBTables, StdCtrls, ComCtrls, ExtCtrls,
  dateutils, GridsEh, DBGridEh, Menus,comobj, PrnDbgeh;

type
  TMaterialEntryList = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Label3: TLabel;
    DTP1: TDateTimePicker;
    Label4: TLabel;
    DTP2: TDateTimePicker;
    Button1: TButton;
    DataSource1: TDataSource;
    KCRK: TQuery;
    DBGrid1: TDBGridEh;
    KCRKRKNO: TStringField;
    KCRKUSERDATE: TDateTimeField;
    KCRKZSBH: TStringField;
    KCRKCLBH: TStringField;
    KCRKCGBH: TStringField;
    KCRKRKSB: TStringField;
    KCRKQty: TCurrencyField;
    KCRKUSPrice: TCurrencyField;
    KCRKUSACC: TCurrencyField;
    KCRKVNPrice: TFloatField;
    KCRKVNACC: TFloatField;
    KCRKCostID: TStringField;
    KCRKMemo: TStringField;
    KCRKYWPM: TStringField;
    KCRKDWBH: TStringField;
    KCRKZSYWJC: TStringField;
    Qtemp: TQuery;
    Label5: TLabel;
    CBX1: TComboBox;
    PopupMenu1: TPopupMenu;
    Excel1: TMenuItem;
    Print1: TMenuItem;
    PrintDBGridEh1: TPrintDBGridEh;
    KCRKFKZT: TStringField;
    KCRKCKBH: TStringField;
    Button2: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Print1Click(Sender: TObject);
    procedure Excel1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MaterialEntryList: TMaterialEntryList;
  NDate:TDate;

implementation

{$R *.dfm}

procedure TMaterialEntryList.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=cafree;
end;

procedure TMaterialEntryList.Button1Click(Sender: TObject);
begin
with KCRK do     //入庫數量清單
  begin
    active:=false;
    sql.Clear;
    sql.add('select KCRK.RKNO,KCRK.USERDATE,KCRK.ZSBH,KCRK.CFMID ,');
    sql.add('       KCRKS.*,KCRK.ZSNO as Memo,CLZL.YWPM,CLZL.DWBH ,ZSZL.ZSYWJC ,KCRK.CKBH');
    sql.add('from KCRKS with (nolock)');
    sql.Add('left join KCRK with (nolock) on KCRK.RKNO=KCRKS.RKNO');
    sql.add('left join ZSZL with (nolock) on ZSZL.ZSDH=KCRK.ZSBH ');
    sql.add('left join CLZl with (nolock) on CLZl.CLDH=KCRKS.CLBH ');
    sql.add('where convert(smalldatetime,convert(varchar,KCRK.USERDATE,111)) between ');
    sql.add('      '''+formatdatetime('yyyy/MM/dd',DTP1.date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.date)+'''');
    sql.add('      and KCRKS.CLBH like '+''''+edit1.Text+'%'+'''');
    sql.add('      and CLZL.YWPM like '+''''+'%'+edit2.Text+'%'+'''');
    if CBX1.itemindex<>0 then
      begin
        sql.add('      and KCRK.CKBH='+''''+CBX1.Text+'''');
      end;
    // 20150827 SHOW DATA <2014
    sql.Add('UNION ALL');
    sql.add('select KCRK_2014.RKNO,KCRK_2014.USERDATE,KCRK_2014.ZSBH,KCRK_2014.CFMID ,');
    sql.add('       KCRKS_2014.*,KCRK_2014.ZSNO as Memo,CLZL.YWPM,CLZL.DWBH ,ZSZL.ZSYWJC ,KCRK_2014.CKBH');
    sql.add('from KCRKS_2014 with (nolock)');
    sql.Add('left join KCRK_2014 with (nolock) on KCRK_2014.RKNO=KCRKS_2014.RKNO');
    sql.add('left join ZSZL with (nolock) on ZSZL.ZSDH=KCRK_2014.ZSBH ');
    sql.add('left join CLZl with (nolock) on CLZl.CLDH=KCRKS_2014.CLBH ');
    sql.add('where convert(smalldatetime,convert(varchar,KCRK_2014.USERDATE,111)) between ');
    sql.add('      '''+formatdatetime('yyyy/MM/dd',DTP1.date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.date)+'''');
    sql.add('      and KCRKS_2014.CLBH like '+''''+edit1.Text+'%'+'''');
    sql.add('      and CLZL.YWPM like '+''''+'%'+edit2.Text+'%'+'''');
    if CBX1.itemindex<>0 then
      begin
        sql.add('      and KCRK_2014.CKBH='+''''+CBX1.Text+'''');
      end;
    sql.Add('Order by 6,2');
    active:=true;
  end;
end;

procedure TMaterialEntryList.FormCreate(Sender: TObject);
var i:integer;
begin
with Qtemp do
  begin
    active:=false;
    sql.Clear;
    sql.add('select getdate() as NDate');
    active:=true;
    NDate:=fieldbyname('NDate').value;
    DTP1.date:=startofthemonth(incmonth(NDate,-1));
    DTP2.date:=endofthemonth(incmonth(NDate,-1));  
    active:=false;
    sql.Clear;
    sql.add('select CKBH from KCCK order by CKBH');
    active:=true;
    for i:=1 to recordcount do
      begin
        CBX1.items.Add(fieldbyname('CKBH').asstring);
        next;
      end;
    active:=false;
  end;
end;

procedure TMaterialEntryList.FormDestroy(Sender: TObject);
begin
MaterialEntryList:=nil;
end;

procedure TMaterialEntryList.Print1Click(Sender: TObject);
begin
PrintDBGrideh1.preview;
end;

procedure TMaterialEntryList.Excel1Click(Sender: TObject);
var
      eclApp,WorkBook:olevariant;
 //     xlsFileName:string;
      i,j:integer;
begin

if KCRK.Active then
  begin
    if KCRK.recordcount=0 then
      begin
        showmessage('No record.');
        abort;
      end;
  end
  else
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
  for   i:=1   to   KCRK.fieldcount   do
    begin
      eclApp.Cells(1,i+1):=KCRK.fields[i-1].FieldName;
    end;
  KCRK.First;
  j:=2;
  while   not  KCRK.Eof   do
    begin
      eclApp.Cells(j,1):=j-1;
      for   i:=1   to   KCRK.fieldcount   do
        begin
          eclApp.Cells(j,i+1):=KCRK.Fields[i-1].Value;
          eclApp.Cells.Cells.item[j,i+1].font.size:='8';
        end;
      KCRK.Next;
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


procedure TMaterialEntryList.Button2Click(Sender: TObject);
var   a:string;
      eclApp,WorkBook:olevariant;
      i,j:integer;
 begin
  if  KCRK.active  then
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
        for   i:=0   to   KCRK.fieldcount-1   do
          begin
              eclApp.Cells(1,i+1):=KCRK.fields[i].FieldName;
          end;

        KCRK.First;
        j:=2;
        while   not   KCRK.Eof   do
          begin
            for   i:=0   to  KCRK.fieldcount-1  do
            begin
              eclApp.Cells(j,i+1):=KCRK.Fields[i].Value;
            end;
          KCRK.Next;
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
