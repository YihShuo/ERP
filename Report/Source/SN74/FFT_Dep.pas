unit FFT_Dep;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, ExtCtrls, Grids, DBGrids, StdCtrls, FFTInfoP,
  GridsEh, DBGridEh;

type
  TFFTDep = class(TForm)
    FFTDepQry: TQuery;
    DS: TDataSource;
    Panel1: TPanel;
    FFTDepQrySumline: TStringField;
    FFTDepQryDepName: TStringField;
    FFTUpd: TUpdateSQL;
    FFTDepQryYN: TStringField;
    Button1: TButton;
    GroupBox1: TGroupBox;
    RB1: TRadioButton;
    RB2: TRadioButton;
    DBGridEh1: TDBGridEh;
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure RB1Click(Sender: TObject);
    procedure RB2Click(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
  private
    { Private declarations }
    procedure LoadDepData();
  public
    parent:TFFTInfo; //父層類別
    { Public declarations }
  end;

var
  FFTDep: TFFTDep;

implementation
  uses main1,FunUnit;
{$R *.dfm}

//顯示載入部門資料
procedure TFFTDep.LoadDepData();
var i:integer;
begin
   with FFTDepQry do
   begin
     Active:=false;
     SQL.Clear;
     if RB1.Checked=true then
        SQL.Add('Select BDepartment.Sumline,''Y'' as YN, ')
     else
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
procedure TFFTDep.FormDestroy(Sender: TObject);
begin
  FFTDep:=nil;
end;

procedure TFFTDep.Button1Click(Sender: TObject);
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
   parent.ShowSumlineFFTReport();
 end;
 //每五分鐘更新畫面一次
 parent.ReLoadTimer.Enabled:=true;
 //關閉視窗
 Close;

end;


procedure TFFTDep.FormShow(Sender: TObject);
begin
  //載入資料
  LoadDepData();
end;

procedure TFFTDep.RB1Click(Sender: TObject);
begin
  if FFTDepQry.Active=true then
  begin
    FFTDepQry.First;
    while Not FFTDepQry.Eof do
    begin
      FFTDepQry.Edit;
      FFTDepQry.FieldByName('YN').AsString:='Y';
      FFTDepQry.Post;
      FFTDepQry.Next;
    end;
  end;
end;

procedure TFFTDep.RB2Click(Sender: TObject);
begin
  if FFTDepQry.Active=true then
  begin
    FFTDepQry.First;
    while Not FFTDepQry.Eof do
    begin
      FFTDepQry.Edit;
      FFTDepQry.FieldByName('YN').AsString:='N';
      FFTDepQry.Post;
      FFTDepQry.Next;
    end;
  end;
end;

procedure TFFTDep.DBGridEh1DblClick(Sender: TObject);
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

procedure TFFTDep.DBGridEh1DrawColumnCell(Sender: TObject;
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
