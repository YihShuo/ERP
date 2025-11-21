unit FFT_Panel_DepP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, ExtCtrls, Grids, DBGrids, StdCtrls, FFT_Panelp, IniFiles,
  GridsEh, DBGridEh;

type
  TFFT_Panel_Dep = class(TForm)
    FFTDepQry: TQuery;
    DS: TDataSource;
    Panel1: TPanel;
    FFTDepQrySumline: TStringField;
    FFTDepQryDepName: TStringField;
    FFTUpd: TUpdateSQL;
    FFTDepQryYN: TStringField;
    Button1: TButton;
    DBGridEh1: TDBGridEh;
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBGridDblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
  private
    { Private declarations }
    procedure LoadDepData();
    procedure writeIni(DepNameList:string);
  public
    parent:TFFTPanel; //父層類別
    { Public declarations }
  end;

var
  FFT_Panel_Dep: TFFT_Panel_Dep;

implementation
  uses main1,FunUnit;
{$R *.dfm}
//
procedure TFFT_Panel_Dep.writeIni(DepNameList:string);
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
      MyIni.WriteString('Report_SN75','DepNameList',DepNameList);
    finally
      MyIni.Free;
    end;
  end;
end;
//
//顯示載入部門資料
procedure TFFT_Panel_Dep.LoadDepData();
var i:integer;
begin
   with FFTDepQry do
   begin
     Active:=false;
     SQL.Clear;
     SQL.Add('Select BDepartment.Sumline,''N'' as YN, ');
     SQL.Add('Case ');
     SQL.Add('when SubString(BDepartment.Sumline,4,1)=''L'' then SubString(BDepartment.Sumline,1,3)+''-LEAN''+SubString(BDepartment.Sumline,5,2)+''-''+SubString(BDepartment.Sumline,7,2) ');
     SQL.Add('when SubString(BDepartment.Sumline,4,1)=''B'' then SubString(BDepartment.Sumline,1,3)+''-L''+SubString(BDepartment.Sumline,5,2)+''-''+SubString(BDepartment.Sumline,7,2)  ');
     SQL.Add('end as DepName ');
     SQL.Add('from WOPR ');
     SQL.Add('left join BDepartment on WOPR.DepNo = BDepartment.ID ');
     SQL.Add('where convert(smalldatetime,WOPR.USERDATE,111) between '''+FormatDatetime('YYYY/MM/DD',Parent.TDate.Date-7)+''' and '''+FormatDatetime('YYYY/MM/DD',Parent.TDate.Date)+''' ');
     SQL.Add('and WOPR.GSBH ='''+main.sGSBH+''' and WOPR.GXLB in (''A'',''AR'',''C'',''C+S'')  and Sumline is not null ');
     SQL.Add('group by BDepartment.Sumline ');
     SQL.Add('order by BDepartment.Sumline ');
     //funcObj.WriteErrorLog(sql.Text);
     Active:=true;
   end;
   //
   with FFTDepQry do
   begin
     requestlive:=true;
     cachedupdates:=true;
   end;
end;
procedure TFFT_Panel_Dep.FormDestroy(Sender: TObject);
begin
  FFT_Panel_Dep:=nil;
end;

procedure TFFT_Panel_Dep.Button1Click(Sender: TObject);
var tmpSumlineSQL:string;
begin
 //因為報表沒有create固定 呼叫父層  TFFTInfo
 tmpSumlineSQL:='';
 FFTDepQry.First;
 while not FFTDepQry.Eof do
 begin
   if FFTDepQry.FieldByName('YN').asString='Y' then
   begin
     tmpSumlineSQL:=tmpSumlineSQL+''''+FFTDepQry.FieldByName('sumline').asString+''',';
   end;
   FFTDepQry.Next;
 end;
 if length(tmpSumlineSQL)>0 then
 begin
   parent.SubsumlineSQL:='and BDepartment.sumline in ('+copy(tmpSumlineSQL,1,length(tmpSumlineSQL)-1)+') ';;
   writeIni(parent.SubsumlineSQL);
   parent.ShowSumlineFFTReport();
 end;
 //每五分鐘更新畫面一次
 parent.ReLoadTimer.Enabled:=true;
 //關閉視窗
 Close;

end;

procedure TFFT_Panel_Dep.DBGridDblClick(Sender: TObject);
begin
   //點選要顯示部門


end;

procedure TFFT_Panel_Dep.FormShow(Sender: TObject);
begin
  //載入資料
  LoadDepData();
end;

procedure TFFT_Panel_Dep.DBGridEh1DblClick(Sender: TObject);
begin
  FFTDepQry.Edit;
  if FFTDepQry.FieldByName('YN').AsString='Y' then
  begin
    FFTDepQry.FieldByName('YN').AsString:='N';
  end else
  begin
    FFTDepQry.FieldByName('YN').AsString:='Y';
  end;
  FFTDepQry.Post;
end;

procedure TFFT_Panel_Dep.DBGridEh1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if FFTDepQry.FieldByName('YN').AsString='Y' then
  begin
    DBGridEh1.canvas.font.color:=ClBlue;
    DBGridEh1.defaultdrawcolumncell(rect,datacol,column,state);
  end;
end;

end.
