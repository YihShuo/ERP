unit FOCMaterialTrace1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, DB, DBTables, GridsEh, DBGridEh, ComCtrls, StdCtrls,
  ExtCtrls, IniFiles, DateUtils, fununit, comobj;

type
  TFOCMaterialTrace = class(TForm)
    Splitter1: TSplitter;
    Panel1: TPanel;
    Label1: TLabel;
    Label6: TLabel;
    Label5: TLabel;
    Label8: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    CGNOEdit: TEdit;
    Button2: TButton;
    DBGrid2: TDBGridEh;
    DBGrid1: TDBGridEh;
    KCRK: TQuery;
    KCRKRKNO: TStringField;
    KCRKZSBH: TStringField;
    KCRKUSERDATE: TDateTimeField;
    KCRKQty: TCurrencyField;
    KCRKUSERID: TStringField;
    KCRKMemo: TStringField;
    KCRKPaperNo: TStringField;
    DS1: TDataSource;
    KCLL: TQuery;
    KCLLLLNO: TStringField;
    KCLLCFMDATE: TDateTimeField;
    KCLLQty: TCurrencyField;
    KCLLCFMID: TStringField;
    KCLLMemo: TStringField;
    DS2: TDataSource;
    Query1: TQuery;
    PopupMenu1: TPopupMenu;
    EXCEL1: TMenuItem;
    JGDet1: TMenuItem;
    PopupMenu2: TPopupMenu;
    EXCEL2: TMenuItem;
    JGDet2: TMenuItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    AppDir:String;
    WH_Decimal:String;
    WH_DiplayFormat:String;
    { Private declarations }
    procedure ReadIni();
  public
    { Public declarations }
  end;

var
  FOCMaterialTrace: TFOCMaterialTrace;

implementation

uses main1;

{$R *.dfm}

procedure TFOCMaterialTrace.ReadIni();
var MyIni :Tinifile;
    AppDir:string;
begin
  WH_Decimal:='2';
  WH_DiplayFormat:='#,##0.00';
  if FileExists(AppDir+'\ComName.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ComName.ini');
      WH_Decimal:=MyIni.ReadString('Warehouse','Decimal','2');
      WH_DiplayFormat:=MyIni.ReadString('Warehouse','DiplayFormat','#,##0.00');
    finally
      MyIni.Free;
    end;
  end;
  TCurrencyField(KCRK.FieldByName('Qty')).DisplayFormat:=WH_DiplayFormat;
  TCurrencyField(KCLL.FieldByName('Qty')).DisplayFormat:=WH_DiplayFormat;

end;

procedure TFOCMaterialTrace.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=caFree;
end;

procedure TFOCMaterialTrace.FormDestroy(Sender: TObject);
begin
  FOCMaterialTrace:=nil;
end;

procedure TFOCMaterialTrace.FormCreate(Sender: TObject);
begin
  AppDir:=ExtractFilePath(Application.ExeName);
  DTP1.Date:=startofthemonth(Date);
  DTP2.Date:=Date;
  KCRK.Active:=false;
  KCLL.Active:=false;
  ReadIni();
end;

procedure TFOCMaterialTrace.Button1Click(Sender: TObject);
begin
  with KCRK do
  begin
    active:=false;
    SQL.Clear;
    SQL.Add('select KCRK.RKNO,KCRK.USERDATE,KCRK.ZSBH,KCRK.USERID,KCRKS.Qty,KCRK.ZSNO as Memo,KCRK.Memo as PaperNo ');
    SQL.Add('from KCRKS_FOC KCRKS ');
    SQL.Add('left join KCRK_FOC KCRK on KCRK.RKNO=KCRKS.RKNO ');
    SQL.Add('where KCRKS.CLBH='''+Edit1.Text+''' ');
    SQL.Add('and KCRK.CKBH=''FOC'' ');
    SQL.Add('and ISNULL(flowflag,'''')<>''X'' ');
    SQL.Add('and KCRK.GSBH ='''+main.Edit2.Text+''' ');
    SQL.Add('and convert(smalldatetime,convert(varchar,KCRK.USERDATE,111)) between ');
    SQL.Add(' '''+formatdatetime('yyyy/MM/dd',DTP1.date)+''' and '''+formatdatetime('yyyy/MM/dd',DTP2.date)+''' ');
    if CGNOEdit.Text<>'' then
      SQL.Add('and KCRK.ZSNO='''+CGNOEdit.Text+''' ');
    SQL.Add('order by KCRK.USERDATE ');
    //funcobj.WriteErrorLog(sql.Text);
    active:=true;
  end;

  //=============
  with KCLL do
  begin
    active:=false;
    SQL.Clear;
    SQL.Add('select KCLL.LLNO,KCLL.CFMDATE,KCLLS.Qty,KCLL.CFMID,BDepartment.DepName as Memo ');
    SQL.Add('from KCLLS_FOC KCLLS ');
    SQL.Add('left join KCLL_FOC KCLL on KCLL.LLNO=KCLLS.LLNO ');
    SQL.Add('left join BDepartment on BDepartment.ID=KCLL.DepID ');
    SQL.Add('where KCLLS.CLBH='''+Edit1.Text+''' ');
    SQL.Add('and KCLL.CKBH=''FOC'' ');
    SQL.Add('and ISNULL(flowflag,'''')<>''X'' ');
    SQL.Add('and KCLL.GSBH ='''+main.Edit2.Text+''' ');
    SQL.Add('and convert(smalldatetime,convert(varchar,KCLL.CFMDate,111)) between ');
    SQL.Add(' '''+formatdatetime('yyyy/MM/dd',DTP1.date)+''' and '''+formatdatetime('yyyy/MM/dd',DTP2.date)+''' ');
    SQL.Add('order by KCLL.CFMDATE ');
    //funcobj.WriteErrorLog(sql.Text);
    active:=true;
  end;
  
end;

procedure TFOCMaterialTrace.Button2Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j,L,R:integer;
begin

  if KCRK.Active then
  begin
    if KCRK.recordcount=0 then
    begin
      showmessage('KCRK No record.');
      L:=1;
    end;
  end else
  begin
    showmessage('KCRK No record.');
    abort;
  end;

  //==================
  if KCLL.Active then
  begin
    if KCLL.recordcount=0 then
    begin
      showmessage('KCLL No record.');
      R:=1;
    end;
  end else
  begin
    showmessage('KCLL No record.');
    abort;
  end;
  //Excel
  try
    eclApp:=CreateOleObject('Excel.Application');
    WorkBook:=CreateOleObject('Excel.Sheet');
  except
    Application.MessageBox('NO Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
    Exit;
  end;

  try
    WorkBook:=eclApp.workbooks.Add;
    if L<>1 then
    begin
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
              eclApp.Cells.Cells.item[j,i+1].font.size:='10';
            end;
          KCRK.Next;
          inc(j);
        end;
        eclApp.Cells(j,2):='Total';
        eclApp.Cells(j,5):='=sum(E2..E'+inttostr(j-1)+')';
    end;
    //===========
    if R<>1 then
    begin
      eclApp.Cells(1,10):='NO';
      for   i:=1   to   KCLL.fieldcount   do
        begin
          eclApp.Cells(1,i+10):=KCLL.fields[i-1].FieldName;
        end;
      KCLL.First;
      j:=2;
      while   not  KCLL.Eof   do
      begin
          eclApp.Cells(j,10):=j-1;
          for   i:=1   to   KCLL.fieldcount   do
            begin
              eclApp.Cells(j,i+10):=KCLL.Fields[i-1].Value;
              eclApp.Cells.Cells.item[j,i+10].font.size:='10';
            end;
          KCLL.Next;
          inc(j);
      end;
      eclApp.Cells(j,11):='Total';
      eclApp.Cells(j,13):='=sum(M2..M'+inttostr(j-1)+')';
    end;

    eclapp.columns.autofit;
    showmessage('Succeed.');
    eclApp.Visible:=True;
  except
    on   F:Exception   do
      showmessage(F.Message);
  end;
  
end;

end.
