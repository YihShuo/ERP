unit InWarePPH1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GridsEh, DBGridEh, DB, DBTables, StdCtrls, ComCtrls, ExtCtrls, Comobj;

type
  TInWarePPH = class(TForm)
    Panel1: TPanel;
    Label5: TLabel;
    Label1: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    Button1: TButton;
    Edit1: TEdit;
    Button2: TButton;
    Edit2: TEdit;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    CheckBox1: TCheckBox;
    Query1: TQuery;
    DataSource1: TDataSource;
    DBGridEh1: TDBGridEh;
    Label7: TLabel;
    CheckBox2: TCheckBox;
    Label12: TLabel;
    CheckBox3: TCheckBox;
    Label13: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  InWarePPH: TInWarePPH;

implementation
  uses main1, FunUnit;
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
procedure TInWarePPH.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TInWarePPH.FormDestroy(Sender: TObject);
begin
  InWarePPH:=nil;
end;

procedure TInWarePPH.Button1Click(Sender: TObject);
begin
  if ((CheckBox1.Checked=false) and (Edit1.Text='') and (Edit2.Text='')) then
  Begin
     showmessage('Vui long nhap BUYNO hay ngay nhap kho truoc 請輸入Buy別');
     abort;
  end;
  //
  if (checkBox3.Checked=false) then
  begin
    with Query1 do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('select YWCP.DDBH,XXZL.DAOMH,DDZL.Article,DDZL.Pairs,YWCP.InQty,BDepartment.DepName,SCXXCL.POH');
      SQL.Add('       ,Case ');
      SQL.Add('              when POH>=1.5 then 1 ');
      SQL.Add('              when POH>=1.25 and POH<1.5 then 2 ');
      SQL.Add('              when POH>=1.13 and POH<1.25 then 3');
      SQL.Add('              when POH>=1.0 and POH<1.13 then 4');
      SQL.Add('              when POH>=0.86 and POH<1.0 then 5 ');
      SQL.Add('              when POH>=0.75 and POH<0.86 then 6');
      SQL.Add('              when POH>=0.61 and POH<0.75 then 7 ');
      SQL.Add('              when POH<0.61 then 8 ');
      SQL.Add('              end  as T2    ');
      SQL.Add('from (');
      SQL.Add('select YWCP.DDBH,SUM(Qty) as InQty,MAX(DepNO) as DepNO');
      SQL.Add('from YWCP');
      SQL.Add('where 1=1 ');
      if CheckBox1.Checked =true then
      begin
        if CheckBox2.Checked=true then
          sql.add('and (convert(smalldatetime,convert(varchar,YWCP.LastInDate,111)) between ')
        else
          sql.add('and (convert(smalldatetime,convert(varchar,YWCP.InDate,111)) between ');
        sql.add('       '''+formatdatetime('yyyy/MM/dd',DTP1.date)+''''+' and  '+ ''''+formatdatetime('yyyy/MM/dd',DTP2.date)+''''+')');
      end;
      SQL.Add('Group by YWCP.DDBH ) YWCP');
      SQL.Add('left join YWDD on YWDD.DDBH=YWCP.DDBH');
      SQL.Add('left join DDZL on DDZL.DDBH=YWDD.YSBH');
      SQL.Add('left join XXZL on XXZL.XieXing=DDZL.XieXing and XXZL.SheHao=DDZL.SheHao');
      SQL.Add('left join BDepartment on BDepartment.ID=YWCP.DepNO');
      //2021/03/01 增加 Left Join SCXXCL.BZLB
      SQL.Add('left join (Select XieXing,SheHao,BZLB,Max(Convert(float,SCXXCL.BZCL)) as IEQty,Sum(SCXXCL.BZRS+SCXXCL.BZJS) as IEPeo,');
      SQL.Add('                  (Round(Max(Convert(float,SCXXCL.BZCL))/Sum(SCXXCL.BZRS+SCXXCL.BZJS),4)) as POH ');
      SQL.Add('           from SCXXCL ');
      //2021/03/01 增加 Group By BZLB 與 SCXXCL.BZLB=Bdepartment.BZLB
      SQL.Add('           Group by XieXing,SheHao,BZLB ) SCXXCL on SCXXCL.XieXing=DDZL.XieXing and SCXXCL.SheHao=DDZL.SheHao and SCXXCL.BZLB=Bdepartment.BZLB');
      SQL.Add('where DDZL.GSBH='''+main.Edit2.Text+''' and DDZL.DDZT<>''C'' ');
      SQL.Add('and  DDZL.buyno like'''+edit1.Text+'%'+'''');
      SQL.Add('and  DDZL.DDBH like'''+edit2.Text+'%'+'''');
      SQL.Add('Order by DDZL.DDBH');
      //funcobj.WriteErrorLog(sql.Text);
      Active:=true;
    end
    end else
    begin
      with Query1 do
      begin
        Active:=false;
        SQL.Clear;
        SQL.Add('select YWCP.DDBH,XXZL.DAOMH,DDZL.Article,DDZL.Pairs,YWCP.InQty,BDepartment.DepName,SCXXCL.POH');
        SQL.Add('       ,Case ');
        SQL.Add('              when POH>=1.5 then 1 ');
        SQL.Add('              when POH>=1.25 and POH<1.5 then 2 ');
        SQL.Add('              when POH>=1.13 and POH<1.25 then 3');
        SQL.Add('              when POH>=1.0 and POH<1.13 then 4');
        SQL.Add('              when POH>=0.86 and POH<1.0 then 5 ');
        SQL.Add('              when POH>=0.75 and POH<0.86 then 6');
        SQL.Add('              when POH>=0.61 and POH<0.75 then 7 ');
        SQL.Add('              when POH<0.61 then 8 ');
        SQL.Add('              end  as T2    ');
        SQL.Add('from (');
        SQL.Add('select YWCP.DDBH,SUM(Qty) as InQty,YWCP.DepNO as DepNO');
        SQL.Add('from YWCP');
        SQL.Add('where 1=1 ');
        if CheckBox1.Checked =true then
        begin
          if CheckBox2.Checked=true then
            sql.add('and (convert(smalldatetime,convert(varchar,YWCP.LastInDate,111)) between ')
          else
            sql.add('and (convert(smalldatetime,convert(varchar,YWCP.InDate,111)) between ');
          sql.add('       '''+formatdatetime('yyyy/MM/dd',DTP1.date)+''''+' and  '+ ''''+formatdatetime('yyyy/MM/dd',DTP2.date)+''''+')');
        end;
        SQL.Add('Group by YWCP.DDBH,YWCP.DepNO ) YWCP');
        SQL.Add('left join YWDD on YWDD.DDBH=YWCP.DDBH');
        SQL.Add('left join DDZL on DDZL.DDBH=YWDD.YSBH');
        SQL.Add('left join XXZL on XXZL.XieXing=DDZL.XieXing and XXZL.SheHao=DDZL.SheHao');
        SQL.Add('left join BDepartment on BDepartment.ID=YWCP.DepNO');
        //2021/03/01 增加 Left Join SCXXCL.BZLB
        SQL.Add('left join (Select XieXing,SheHao,BZLB,Max(Convert(float,SCXXCL.BZCL)) as IEQty,Sum(SCXXCL.BZRS+SCXXCL.BZJS) as IEPeo,');
        SQL.Add('                  (Round(Max(Convert(float,SCXXCL.BZCL))/Sum(SCXXCL.BZRS+SCXXCL.BZJS),4)) as POH ');
        SQL.Add('           from SCXXCL ');
        //2021/03/01 增加 Group By BZLB 與 SCXXCL.BZLB=Bdepartment.BZLB
        SQL.Add('           Group by XieXing,SheHao,BZLB ) SCXXCL on SCXXCL.XieXing=DDZL.XieXing and SCXXCL.SheHao=DDZL.SheHao and SCXXCL.BZLB=Bdepartment.BZLB');
        SQL.Add('where DDZL.GSBH='''+main.Edit2.Text+''' and DDZL.DDZT<>''C'' ');
        SQL.Add('and  DDZL.buyno like'''+edit1.Text+'%'+'''');
        SQL.Add('and  DDZL.DDBH like'''+edit2.Text+'%'+'''');
        SQL.Add('and YWCP.DepNo is not null');
        SQL.Add('Order by DDZL.DDBH');
        //funcobj.WriteErrorLog(sql.Text);
        Active:=true;
      end;
      end;
  //
end;

procedure TInWarePPH.FormCreate(Sender: TObject);
var myYear, myMonth, myDay : Word;
begin
  //
  DecodeDate(Date(), myYear, myMonth, myDay);
  DTP1.Date:=EncodeDate(myYear, myMonth, 1);
  DTP2.Date:=EncodeDate(myYear, myMonth, DaysOfItsMonth(Date()));
  //
end;

procedure TInWarePPH.Button2Click(Sender: TObject);
var   a:string;
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
      //add outline
      for k:=1 to 4 do
      begin
        eclApp.range[eclApp.cells[1,1],eclApp.cells[j-1,11]].borders[k].linestyle:=1;
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
