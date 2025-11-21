unit DailyActionWork1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, PrnDbgeh, DBTables, Menus, GridsEh, DBGridEh, StdCtrls,
  ComCtrls, ExtCtrls,comobj;

type
  TDailyActionWork = class(TForm)
    Panel1: TPanel;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label1: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label8: TLabel;
    Label7: TLabel;
    Check: TCheckBox;
    Button1: TButton;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    Edit1: TEdit;
    CB1: TComboBox;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    DBGrid2: TDBGridEh;
    DBGrid3: TDBGridEh;
    DS1: TDataSource;
    PopupMenu1: TPopupMenu;
    NN2: TMenuItem;
    NN3: TMenuItem;
    scbbs: TQuery;
    scbbsSCDate: TStringField;
    scbbsProNo: TStringField;
    scbbsTime: TStringField;
    scbbsSCBH: TStringField;
    scbbsGXLB: TStringField;
    scbbsProQty: TFloatField;
    DS2: TDataSource;
    SCBBSS: TQuery;
    SCBBSSXXCC: TStringField;
    SCBBSSQty: TFloatField;
    DS3: TDataSource;
    PrintDBGridEh1: TPrintDBGridEh;
    DBGrid1: TDBGridEh;
    Query1: TQuery;
    Query1SCDate: TStringField;
    Query1DepNo: TStringField;
    Query1DepName: TStringField;
    Query1DepName2: TStringField;
    Query1Qty: TFloatField;
    Query1SDGS: TCurrencyField;
    Query1CQQty: TIntegerField;
    Query1QJQty: TIntegerField;
    Query1Act_Hours: TFloatField;
    Query1SJGS: TFloatField;
    Query1SJRate: TFloatField;
    Query1PRSH: TFloatField;
    QTemp: TQuery;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure Query1CalcFields(DataSet: TDataSet);
    procedure Query1AfterOpen(DataSet: TDataSet);
    procedure DBGrid1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure NN2Click(Sender: TObject);
    procedure PrintDBGridEh1BeforePrint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DailyActionWork: TDailyActionWork;
  NDate:TDate;

implementation

uses main1;

{$R *.dfm}

procedure TDailyActionWork.FormDestroy(Sender: TObject);
begin
DailyActionWork:=nil;
end;

procedure TDailyActionWork.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=cafree;
end;

procedure TDailyActionWork.FormCreate(Sender: TObject);
var i:integer;
begin
with Qtemp do
  begin
    active:=false;
    sql.Clear;
    sql.add('select GSDH from BGSZL order by GSDH');
    active:=true;
    for i:=1 to recordcount do
      begin
        CB1.Items.Add(fieldbyname('GSDH').asstring);
        next;
      end;
    CB1.Text:=main.edit2.Text;
    active:=false;
    sql.Clear;
    sql.add('select getdate() as NDate '); 
    active:=true;
    NDate:=fieldbyname('NDate').value;
    active:=false;
  end;
DTP1.Date:=NDate-7;
DTP2.date:=NDate-1;

end;

procedure TDailyActionWork.Button1Click(Sender: TObject);
var e:string;
 i:integer;
begin
{with QTemp do
  begin
    active:=false;
    active:=true;
    if recordcount>0 then
      begin
        showmessage('Pls setup model capicity first.');
        abort;
      end;
    active:=false;
  end; }

with Query1 do
  begin
    active:=false;
    sql.Clear;   
    //將產量類型先取最新產量
    if not Check.Checked then
      begin

           //將基准產能加上
        sql.add('update SCBBS ');
        sql.add('set BZLB=(select  SCXXCL.BZLB ');
        sql.add('          from (select max(SCXXCL.BZLB) as BZLB,ZLZL.ZLBH,SCXXCL.GXLB ');
        sql.add('                from  ZLZL  ');
        sql.add('                left join DDZL on DDZL.ZLBH=ZLZL.ZLBH ');
        sql.add('                left join SCXXCL on SCXXCL.XieXing=DDZL.XieXIng  ');
        sql.add('                group by ZLZL.ZLBH ,SCXXCL.GXLB) SCXXCL where SCXXCL.ZLBH=SCBBS.SCBH and SCXXCL.GXLB=SCBBS.GXLB )');
        sql.add(' where BZLB is null');
        sql.add('       and exists(select SCBB.ProNo from SCBB where SCBB.ProNo=SCBBS.ProNo');

        sql.add('        and convert(varchar,SCBB.SCDate,111) between ');
        sql.add('        '''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+''''+')');


        sql.add('select convert(varchar,SCBB.SCDate,111) as SCDate ,SCBB.DepNo,BDepartment.DepName,BDepartment.DepName as DepName2,');
        sql.add('       isnull(sum(SCBBS.Qty),0) as Qty,RSCQ.CQQty,RSCQ.QJQty,RSCQ.SDGS,RSCQ.SJGS,sum(isnull(SCBBS.Qty,0)*SCXXCL.XXGS) as Act_Hours');
        sql.add('from SCBB ');
        sql.add('left join SCBBS on  SCBB.ProNo=SCBBS.ProNo');
        sql.add('left join BDepartment on BDepartment.ID=SCBB.DepNo  ');
        sql.add('left join DDZL on DDZl.ZLBH=SCBBS.SCBH ');
        sql.add('left join SCXXCL on SCXXCL.XieXing=DDZL.XieXing and SCXXCL.GXLB=SCBBS.GXLB and SCXXCL.BZLB=SCBBS.BZLB');
        sql.add('left join  RSCQ on convert(varchar,RSCQ.RSDate,111)=convert(varchar,SCBB.SCDate,111) and RSCQ.DepNo=SCBB.DepNo');
        sql.add('where  convert(smalldatetime,convert(varchar,SCBB.SCDate,111)) between ');
        sql.add('       '''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
        //sql.add('       and SCBB.DepNo like '+''''+edit3.Text+'%'+'''');
        sql.add('       and BDepartment.DepName like '+''''+'%'+edit1.Text+'%'+'''');
        sql.add('       and SCBB.GSBH like'+''''+CB1.text+'%'+'''');  
        if CB1.text<>'VR1' then
          begin
            sql.add('       and (SCBBS.GXLB='+''''+'C'+''''+' or SCBBS.GXLB='+''''+'S'+''''+' or SCBBS.GXLB='+''''+'A'+''''+')');
          end
          else
            begin
              sql.add('       and (SCBBS.GXLB='+''''+'C'+''''+' or SCBBS.GXLB='+''''+'S'+''''+' or SCBBS.GXLB='+''''+'W'+''''+' or SCBBS.GXLB='+''''+'I'+''''+' or SCBBS.GXLB='+''''+'A'+''''+')');
            end;
        sql.add('Group by convert(varchar,SCBB.SCDate,111) ,SCBB.DepNo,BDepartment.DepName ,RSCQ.CQQty,RSCQ.QJQty,RSCQ.SDGS,RSCQ.SJGS ');

        sql.add('union all ');
      end;

    sql.add('select '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+''''+' as SCDate ,SCBB.DepNO,'+''''+'Total'+''''+' as DepName,BDepartment.DepName as DepName2,');
    sql.add('        isnull(sum(SCBBS.Qty),0) as Qty,RSCQ.CQQty,RSCQ.QJQty,RSCQ.SDGS,RSCQ.SJGS');
    sql.Add('        ,sum(isnull(SCBBS.Qty,0)*SCXXCL.XXGS) as Act_Hours ');
    sql.add('from SCBB ');
    sql.add('left join SCBBS on  SCBB.ProNo=SCBBS.ProNo');
    sql.add('left join BDepartment on BDepartment.ID=SCBB.DepNo  ');
    sql.add('left join (select RSCQ.DepNo,avg(RSCQ.CQQty) as CQQty,avg(RSCQ.QJQty) as QJQty,sum(RSCQ.SDGS) as SDGS,sum(RSCQ.SJGS) as SJGS ');
    sql.add('           from RSCQ where convert(smalldatetime,convert(varchar,RSDate,111)) between ');
    sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.date) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',DTP2.date)+'''');
    sql.add('           group by RSCQ.DepNo) RSCQ on RSCQ.DepNo=SCBB.DepNO    ');
    sql.add('left join DDZL on DDZl.ZLBH=SCBBS.SCBH ');
    sql.add('left join SCXXCL on SCXXCL.XieXing=DDZL.XieXing and SCXXCL.GXLB=SCBBS.GXLB and SCXXCL.BZLB=SCBBS.BZLB');
    sql.add('where  convert(smalldatetime,convert(varchar,SCBB.SCDate,111)) between ');
    sql.add('       '''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''''+' and '+ ''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
    sql.add('       and BDepartment.DepName like '+''''+'%'+edit1.Text+'%'+'''');
    sql.add('       and SCBB.GSBH like'+''''+CB1.text+'%'+'''') ;  
    if CB1.text<>'VR1' then
      begin
        sql.add('       and (SCBBS.GXLB='+''''+'C'+''''+' or SCBBS.GXLB='+''''+'S'+''''+' or SCBBS.GXLB='+''''+'A'+''''+')');
      end
       else
         begin
           sql.add('       and (SCBBS.GXLB='+''''+'C'+''''+' or SCBBS.GXLB='+''''+'S'+''''+' or SCBBS.GXLB='+''''+'W'+''''+' or SCBBS.GXLB='+''''+'I'+''''+' or SCBBS.GXLB='+''''+'A'+''''+')');
         end;
    sql.add('Group by SCBB.DepNo,BDepartment.DepName,RSCQ.CQQty,RSCQ.QJQty,RSCQ.SDGS,RSCQ.SJGS');
    sql.add('Order by  SCBB.DepNo,BDepartment.DepName,SCDate ');
    active:=true;
  end;
scbbs.active:=true;
scbbss.Active:=true;


end;

procedure TDailyActionWork.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin

if (query1.FieldByName('DepName').value='Total') and (not check.Checked) then
  begin
    dbgrid1.canvas.brush.Color:=$00FCCBCD;
    DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column, State);
  end;
end;

procedure TDailyActionWork.Query1CalcFields(DataSet: TDataSet);
begin

with query1 do
  begin
    if FieldByName('SJGS').value<>0 then
      begin
        FieldByName('SJRate').value:=FieldByName('Act_Hours').value/FieldByName('SJGS').value*100 ;
        FieldByName('PRS/H').value:=FieldByName('Qty').value/FieldByName('SJGS').value ;
      end;
  end;
end;

procedure TDailyActionWork.Query1AfterOpen(DataSet: TDataSet);
var i:integer;
begin
with DBGrid1 do
  begin
    if check.Checked then
      begin
        columns[0].width:=0 ;
        columns[1].fieldname:='DepName2' ;
      end
      else
        begin
          columns[0].width:=100 ;
          columns[1].fieldname:='DepName' ;
        end;
    if check.checked then
      begin
        footerrowcount:=1;
        Columns[2].Footer.ValueType := fvtSum;
        Columns[3].Footer.ValueType := fvtSum;
        Columns[3].Footer.ValueType := fvtSum;
        Columns[4].Footer.ValueType := fvtSum;
        Columns[5].Footer.ValueType := fvtSum;
        Columns[6].Footer.ValueType := fvtSum;
        Columns[7].Footer.ValueType := fvtavg;
        Columns[8].Footer.ValueType := fvtavg;
      end
      else
        begin
          footerrowcount:=0;
        end;
  end;

end;

procedure TDailyActionWork.DBGrid1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin

with DBGrid1 do
  begin
    if  query1.FieldByName('SJRate').value<80 then
      begin
        canvas.font.color:=clred;
      end;
  end; 
if  query1.FieldByName('SJRate').value>90 then
  begin
    dbgrid1.canvas.font.color:=clblue;
  end;
end;

procedure TDailyActionWork.NN2Click(Sender: TObject);
var
      eclApp,WorkBook:olevariant;
 //     xlsFileName:string;
      i,j:integer;
begin

if query1.Active then
  begin
    if query1.recordcount=0 then
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
  scbbs.active:=false;
  scbbss.Active:=false;
  WorkBook:=eclApp.workbooks.Add; 
  eclApp.Cells(1,1):='NO';
  for   i:=1   to   query1.fieldcount   do
    begin
      eclApp.Cells(1,i+1):=query1.fields[i-1].FieldName;
    end;
  query1.First;
  j:=2;
  while   not  query1.Eof   do
    begin
      eclApp.Cells(j,1):=j-1;
      for   i:=1   to   query1.fieldcount   do
        begin
          eclApp.Cells(j,i+1):=query1.Fields[i-1].Value;
          eclApp.Cells.Cells.item[j,i+1].font.size:='8';
        end;
      query1.Next;
      inc(j);
    end;
  eclapp.columns.autofit;
  scbbs.active:=true;
  scbbss.Active:=true;
  showmessage('Succeed.');
  eclApp.Visible:=True;
except
  on   F:Exception   do
    showmessage(F.Message);
end;

end;

procedure TDailyActionWork.PrintDBGridEh1BeforePrint(Sender: TObject);
begin

PrintDBGridEh1.SetSubstitutes(['%[Date]',CB1.text+'      '+formatdatetime('yyyy/MM/dd',DTP1.Date)+'~~~'+formatdatetime('yyyy/MM/dd',DTP2.Date)]);
end;

end.
