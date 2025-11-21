unit RyPPH1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GridsEh, DBGridEh, StdCtrls, ExtCtrls, DB, DBTables, ComCtrls,comobj ;

type
  TRyPPH = class(TForm)
    Panel1: TPanel;
    Label5: TLabel;
    Button1: TButton;
    Edit1: TEdit;
    Button2: TButton;
    DBGridEh1: TDBGridEh;
    Label1: TLabel;
    Edit2: TEdit;
    Label6: TLabel;
    DTP1: TDateTimePicker;
    Label8: TLabel;
    DTP2: TDateTimePicker;
    Query1: TQuery;
    DataSource1: TDataSource;
    Query1BUYNO: TStringField;
    Query1DDBH: TStringField;
    Query1depname: TStringField;
    Query1plandate: TDateTimeField;
    Query1ARTICLE: TStringField;
    Query1YSSM: TStringField;
    Query1pairs: TIntegerField;
    Query1SHipdate: TDateTimeField;
    Query1DAOMH: TStringField;
    Query1XTMH: TStringField;
    Query1IEQty: TIntegerField;
    Query1IEPeo: TIntegerField;
    Query1POH: TFloatField;
    Query1T2: TIntegerField;
    CheckBox1: TCheckBox;
    Label7: TLabel;
    Label2: TLabel;
    LeanEdit: TEdit;
    Query1Country: TStringField;
    Query1Devcode: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RyPPH: TRyPPH;

implementation
   uses main1,FunUnit;
{$R *.dfm}
//當月天數
function   DaysOfItsMonth(ADate:   TDateTime):   Word;
var
   Y,M,D:Word;
begin
    DecodeDate(ADate,Y,M,D);
    ADate:=EncodeDate(Y,M,1);
    Result:=Trunc(IncMonth(ADate,1)-ADate);
end;
procedure TRyPPH.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TRyPPH.FormDestroy(Sender: TObject);
begin
  RyPPH:=Nil;
end;

procedure TRyPPH.FormCreate(Sender: TObject);
var myYear, myMonth, myDay : Word;
begin

  DecodeDate(Date()+30, myYear, myMonth, myDay);
  DTP1.Date:=EncodeDate(myYear, myMonth, 1);
  DTP2.Date:=EncodeDate(myYear, myMonth, DaysOfItsMonth(Date()+30));

end;

procedure TRyPPH.Button1Click(Sender: TObject);
begin
  if ((CheckBox1.Checked=false) and (Edit1.Text='') and (Edit2.Text='')) then
  Begin
     showmessage('Vui long nhap BUYNO hay ngay san xuat truoc 請輸入Buy別');
     abort;
  end;
  with Query1 do
  begin
     active:=false;
     sql.Clear;
     sql.Add('select DDZL.BUYNO,DDZL.DDBH,Bdepartment.depname,max(SMDD.plandate) as plandate ,DDZL.ARTICLE');
     sql.Add(',XXZL.YSSM,Sum(SMDD.Qty) as pairs,DDZL.SHipdate,LBZLS.YWSM as Country,XXZL.DAOMH,XXZL.XTMH,IEQty,IEPeo,POH,');
     sql.Add('       case when POH>=1.5 then 1');
     sql.Add('            when POH>=1.25 and POH<1.5 then 2');
     sql.Add('            when POH>=1.13 and POH<1.25 then 3');
     sql.Add('            when POH>=1.0 and POH<1.13 then 4');
     sql.Add('            when POH>=0.86 and POH<1.0 then 5');
     sql.Add('            when POH>=0.75 and POH<0.86 then 6');
     sql.Add('            when POH>=0.61 and POH<0.75 then 7');
     sql.Add('            when POH<=0.6 then 8 end T2,KFXXZL.Devcode');
     sql.Add('from SMDD ');
     sql.Add('left join Bdepartment on Bdepartment.ID=SMDD.DepNo');
     sql.Add('left join DDZL on DDZl.DDBH=SMDD.YSBH');
     sql.Add('left join XXZL on XXZL.XieXing=.DDZL.XieXing and XXZL.SheHao=DDZL.SheHao');
     sql.Add('left join KFXXZL on KFXXZL.XieXing=.DDZL.XieXing and KFXXZL.SheHao=DDZL.SheHao');
     sql.Add('left join LBZLS on LBZLS.LB=''06'' and LBZLS.LBDH=DDZL.DDGB');
     //2021/03/01 增加 Left Join SCXXCL.BZLB
     sql.Add('left join (select SCXXCL.xiexing,SCXXCL.shehao,SCXXCL.BZLB,max(SCXXCL.BZCL)as IEQty, Sum(SCXXCL.BZRS+SCXXCL.BZJS) as IEPeo,(Round(Max(Convert(float,SCXXCL.BZCL))/Sum(SCXXCL.BZRS+SCXXCL.BZJS),2)) as POH');
     //2021/03/01 增加 Group By BZLB 與 SCXXCL.BZLB=Bdepartment.BZLB
     sql.Add('            from SCXXCL group by xiexing,shehao,BZLB) SCXXCL on SCXXCL.xiexing=ddzl.xiexing and SCXXCL.shehao=ddzl.shehao and SCXXCL.BZLB=Bdepartment.BZLB');
     sql.Add('where 1=1 ');
     sql.Add('and  DDZL.buyno like '''+edit1.Text+'%'+'''');
     sql.Add('and  DDZL.DDBH like '''+edit2.Text+'%'+'''');
     sql.Add('and  DDZL.GSBH='''+main.Edit2.Text+''' ');
     SQL.Add('and  Bdepartment.Depname like '''+LeanEdit.Text+'%''');
     if CheckBox1.Checked =true then
     begin
       sql.add('and (convert(smalldatetime,convert(varchar,SMDD.PlanDate,111)) between ');
       sql.add('       '''+formatdatetime('yyyy/MM/dd',DTP1.date)+''''+' and  '+ ''''+formatdatetime('yyyy/MM/dd',DTP2.date)+''''+')');
     end;
     sql.Add('and SMDD.GXLB =''A'' ');
     sql.Add('group by  DDZL.BUYNO,DDZL.DDBH,Bdepartment.depname ,DDZL.ARTICLE');
     sql.Add(',XXZL.YSSM,DDZL.SHipdate,LBZLS.YWSM,XXZL.DAOMH,XXZL.XTMH,IEQty,IEPeo,POH,KFXXZL.Devcode') ;
     sql.Add('order by Bdepartment.depname,SMDD.plandate ');
     active:=true;
   end;
end;

procedure TRyPPH.Button2Click(Sender: TObject);
var a:string;
    eclApp,WorkBook:olevariant;
    i,j,k:integer;
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
        for k:=1 to 4 do
        begin
          eclApp.range[eclApp.cells[1,1],eclApp.cells[j-1,i]].borders[k].linestyle:=1;
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
