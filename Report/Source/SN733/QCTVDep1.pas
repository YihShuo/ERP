unit QCTVDep1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ExtCtrls,fununit,inifiles;

type
  TQCTVDep = class(TForm)
    Panel1: TPanel;
    Button1: TButton;
    DBGridEh1: TDBGridEh;
    Query1: TQuery;
    DataSource1: TDataSource;
    Query1DepName: TStringField;
    Query1YN: TStringField;
    UpdateSQL1: TUpdateSQL;
    GroupBox1: TGroupBox;
    CK1: TCheckBox;
    CK4: TCheckBox;
    Button2: TButton;
    procedure FormDestroy(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private

    procedure LoadDepData();
    procedure WriteIni(DepNameList:string);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  QCTVDep: TQCTVDep;

implementation

uses QCRptTV1, Main1;

{$R *.dfm}

procedure TQCTVDep.LoadDepData();
begin
   with Query1 do
   begin
     Active:=false;
     SQL.Clear;
     SQL.Add('Select BDepartment.DepName,''N'' as YN ');
     SQL.Add('from WOPR ');
     SQL.Add('left join BDepartment on WOPR.DepNo = BDepartment.ID ');
     SQL.Add('where convert(smalldatetime,WOPR.USERDATE,111) between '''+FormatDatetime('YYYY/MM/DD',QCRptTV.TDate.Date-7)+''' and '''+FormatDatetime('YYYY/MM/DD',QCRptTV.TDate.Date)+''' ');
     SQL.Add('and WOPR.GSBH ='''+main.sGSBH+'''   and Sumline is not null ');
     if CK1.Checked=true then
       sql.Add('and WOPR.GXLB =''A''');
     if CK4.Checked=true then
       sql.Add('and WOPR.GXLB =''C+S''');
     SQL.Add('group by BDepartment.DepName ');
     SQL.Add('order by BDepartment.DepName ');
     Active:=true;
   end;
   with Query1 do
   begin
     requestlive:=true;
     cachedupdates:=true;
   end;
end;

procedure TQCTVDep.FormDestroy(Sender: TObject);
begin
    QCTVDep:=NIL;
end;

procedure TQCTVDep.DBGridEh1DblClick(Sender: TObject);
begin
   Query1.Edit;
   if Query1.FieldByName('YN').AsString='Y' then
   begin
     Query1.FieldByName('YN').AsString:='N';
   end else
   begin
     Query1.FieldByName('YN').AsString:='Y';
   end;
   Query1.Post;
end;

procedure TQCTVDep.DBGridEh1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if Query1.FieldByName('YN').AsString='Y' then
  begin
    DBGridEh1.canvas.font.color:=ClBlue;
    DBGridEh1.defaultdrawcolumncell(rect,datacol,column,state);
  end;
end;

procedure TQCTVDep.FormShow(Sender: TObject);
begin
   LoadDepData();
   QCRptTV.FreshTimer.Enabled:=false;
end;
//
procedure TQCTVDep.writeIni(DepNameList:string);
var MyIni :Tinifile;
    DiskNM:string;
begin
  DiskNM:='';
  if DirectoryExists('D:\') and (DiskNM='') then DiskNM:='D';
  if DirectoryExists('E:\') and (DiskNM='') then DiskNM:='E';
  if DiskNM<>'' then
  begin
    if (not DirectoryExists(DiskNM+':\ERP_Temp\'))  then ForceDirectories(DiskNM+':\ERP_Temp\');
    try
      MyIni := Tinifile.Create(DiskNM+':\ERP_Temp\ERP_Setting.ini');
      MyIni.WriteString('Report_SN733','DepNameList',DepNameList);
    finally
      MyIni.Free;
    end;
  end;
end;
//
procedure TQCTVDep.Button1Click(Sender: TObject);
var tmpDepNameSQL:string;
    DepNameSQLList:String;
begin
   tmpDepNameSQL:='';
   Query1.First;
   //線別
   DepNameSQLList:='';
   QCRptTV.DepNameIndex:=0;
   QCRptTV.SubDepNameSQL.Clear;
   while not Query1.Eof do
   begin
     if Query1.FieldByName('YN').asString='Y' then
     begin
       QCRptTV.SubDepNameSQL.Add('and BDepartment.DepName in ('''+Query1.FieldByName('DepName').asString+''') ');
       DepNameSQLList:=DepNameSQLList+'and BDepartment.DepName in ('''+Query1.FieldByName('DepName').asString+''') '+',';
     end;
     Query1.Next;
   end;
   if QCRptTV.SubDepNameSQL.Count>0 then
   begin
     QCRptTV.ShowDepNameQCRptTV();
     QCRptTV.FreshTimer.Enabled:=true;
     writeIni(Copy(DepNameSQLList,1,length(DepNameSQLList)-1));
   end;
 //關閉視窗
 Close;
end;
procedure TQCTVDep.Button2Click(Sender: TObject);
begin
  LoadDepData();
end;

procedure TQCTVDep.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if QCRptTV.SubDepNameSQL.Count>0 then
     QCRptTV.FreshTimer.Enabled:=true;
end;

end.
