unit MaterialCost1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, Menus, DB, DBTables, Grids, DBGrids, StdCtrls,
  ExtCtrls,ehlibBDE, GridsEh, DBGridEh,comobj, PrnDbgeh,inifiles;

type
  TMaterialCost = class(TForm)
    Panel1: TPanel;
    Label4: TLabel;
    Button1: TButton;
    DBGrid1: TDBGridEh;
    Query1: TQuery;
    DS1: TDataSource;
    PopupMenu1: TPopupMenu;
    Detail1: TMenuItem;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    Label1: TLabel;
    Label2: TLabel;
    Edit2: TEdit;
    Qtemp: TQuery;
    PrintDBGridEh1: TPrintDBGridEh;
    Print1: TMenuItem;
    Excel1: TMenuItem;
    Query1GSBH: TStringField;
    Query1TotACC: TFloatField;
    Query1A: TFloatField;
    Query1B: TFloatField;
    Query1C: TFloatField;
    Query1D: TFloatField;
    Query1E: TFloatField;
    Query1F: TFloatField;
    Query1G: TFloatField;
    Query1H: TFloatField;
    Query1I: TFloatField;
    Query1In: TFloatField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure PrintDBGridEh1BeforePrint(Sender: TObject);
    procedure Print1Click(Sender: TObject);
    procedure Excel1Click(Sender: TObject);
    procedure Query1CalcFields(DataSet: TDataSet);
    procedure DBGrid1EditButtonClick(Sender: TObject);
    procedure Detail1Click(Sender: TObject);
  private
    RubberR2,RubberR3:String;
    RubberR2_ID,RubberR3_ID:String;
    { Private declarations }
    procedure ReadIni();
  public
    EditDepName:String;
    { Public declarations }
  end;

var
  MaterialCost: TMaterialCost;
  NDate:TDate;

implementation

uses MaterialCost_Det1, main1, MaterialCost_Dep1;

{$R *.dfm}

procedure TMaterialCost.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TMaterialCost.Button1Click(Sender: TObject);
begin
  EditDepName:=StringReplace(Edit2.Text, '_', '[_]',[rfReplaceAll, rfIgnoreCase]);
  with Qtemp do
  begin
    active:=false;
    sql.clear;
    sql.Add('select LBBH,CMEMO ,MEMO from CLLBFY ');
    sql.add('where  XH='+''''+'01'+'''');
    sql.add('       and len(LBBH)=1');
    sql.add('order by LBBH ');
    active:=true;
  end;
  with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select FYACC.GSBH ');
    sql.add(',sum(case  when FYACC.FYLB='+''''+'In'+'''');
    sql.add(' then isnull(FYACC.ACCUS,0) else 0  end) as '+''''+'In'+'''');
    while not QTemp.eof do
    begin
       sql.add(',sum(case  when FYACC.FYLB='+''''+Qtemp.fieldbyname('LBBH').value+'''');
       sql.add(' then isnull(FYACC.ACCUS,0) else 0  end) as '+''''+Qtemp.fieldbyname('LBBH').value+'''');
       QTemp.Next;
    end;
    sql.add('from (');
      //幾大費用料別
    sql.add('select FYACC.GSBH,FYACC.FYLB,sum(FYACC.ACCUS) as ACCUS   ');
    sql.add('from (select LL.GSBH,LL.CLBH,substring(LL.FYLB,1,1) as FYLB,sum(LL.Qty*CWDJ.USPrice) as ACCUS');
    sql.add('      from (select Convert(varchar(10),BDepartment.GSBH) as GSBH');
    sql.add('            ,KCLL.DepID,KCLLS.Qty,CLLBFYS.FYLB,KCLL.CFMDate,KCLLS.CLBH');
    sql.add('            from KCLLS');
    sql.add('            left join KCLL on KCLL.LLNO=KCLLS.LLNO');
    sql.add('            left join BDepartment on BDepartment.ID=KCLL.DepID');
    sql.add('            left join CLLBFYS on CLLBFYS.CLBH=KCLLS.CLBH and KCLL.GSBH=CLLBFYS.GSBH');
    sql.add('            where convert(smalldatetime,convert(varchar,KCLL.CFMDate,111)) between');
    sql.add('                  '''+formatdatetime('yyyy/MM/dd',DTP1.date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.date)+'''');
    sql.add('                  and KCLL.CFMID<>'+''''+'NO'+'''');
    sql.add('                  and BDepartment.DepName like '''+EditDepName+'%''');
    sql.add('                  and KCLLS.Qty<>0');
    sql.add('            ) LL  ');
    sql.add('           left join CWDJ on CWDJ.CLBH=LL.CLBH ');
    sql.add('                              and CWDJ.DJYear=convert(varchar,datepart(yyyy,LL.CFMDate)) ');
    sql.add('                              and CWDJ.DJMonth=convert(varchar,datepart(MM,LL.CFMDate)) ');
    sql.add('      group by LL.GSBH,LL.CLBH,LL.FYLB,CWDJ.USPrice) FYACC');
    sql.add('left join CLLBFY on CLLBFY.LBBH=FYACC.FYLB  and CLLBFY.XH='+''''+'01'+'''');   
    sql.add('group by FYACC.GSBH,FYACC.FYLB');
    //各鞋廠成品入庫金額
    sql.add(' union all ');
    sql.add('select YWCPin.GSBH,'+''''+'In'+''''+' as FYLB,sum(YWCPin.Qty*YWDDS.IPrice) as ACCUS');
    sql.add('from (select Convert(varchar(10),BDepartment.GSBH) as GSBH ');
    sql.add('             ,YWCP.DDBH,YWBZPOS.DDCC,sum(YWBZPOS.Qty) as Qty  ');
    sql.add('      from YWCP ');
    sql.add('      left join BDepartment on BDepartment.ID=YWCP.DepNO ');
    sql.add('      left join YWBZPOS on YWBZPOS.DDBH=YWCP.DDBH and YWBZPOS.XH=YWCP.XH ');
    sql.add('      where BDepartment.DepName like '''+EditDepName+'%'' ');
    sql.add('            and convert(smalldatetime,convert(varchar,YWCP.InDate,111)) between ');
    sql.add('                '''+formatdatetime('yyyy/MM/dd',DTP1.date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.date)+'''');
    sql.add('      group by  Convert(varchar(10),BDepartment.GSBH) ');
    sql.add('             ,YWCP.DDBH,YWBZPOS.DDCC) YWCPin ');
    sql.add('left join YWDDS on YWDDS.DDBH=YWCPin.DDBH and YWDDS.DDCC=YWCPin.DDCC ');
    sql.add('left join YWDD on YWDD.DDBH=YWCPin.DDBH ');
    sql.add('group by YWCPin.GSBH');
    //R2,R3入庫金額
    sql.add('union all ');
    sql.add('select '''+RubberR2+''' as GSBH,'+''''+'In'+''''+' as FYLB,sum(USACC) as ACCUS ');
    sql.add('from KCRKS ');
    sql.add('left join KCRK on KCRK.RKNO=KCRKS.RKNO ');
    sql.add('where KCRK.ZSBH='''+RubberR2_ID+''' ');
    sql.add('      and convert(smalldatetime,convert(varchar,KCRK.USERDATE,111)) between ');
    sql.add('                '''+formatdatetime('yyyy/MM/dd',DTP1.date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.date)+'''');
    sql.add('group by KCRK.ZSBH ');  
    sql.add('union all ');
    sql.add('select '''+RubberR3+''' as GSBH,'+''''+'In'+''''+' as FYLB,sum(USACC) as ACCUS ');
    sql.add('from KCRKS ')  ;
    sql.add('left join KCRK on KCRK.RKNO=KCRKS.RKNO ');
    sql.add('where KCRK.ZSBH='''+RubberR3_ID+''' ');
    sql.add('      and convert(smalldatetime,convert(varchar,KCRK.USERDATE,111)) between ');
    sql.add('                '''+formatdatetime('yyyy/MM/dd',DTP1.date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.date)+'''');
    sql.add('group by KCRK.ZSBH ');
    sql.add(') FYACC ');
    sql.add('group by FYACC.GSBH ');
    sql.add('order by FYACC.GSBH');
    //memo1.Text:=sql.Text;
    active:=true;
  end;

end;

//20190105 read ini file
procedure TMaterialCost.ReadIni();
var MyIni :Tinifile;
    AppDir:string;
begin

  RubberR2:='R2';
  RubberR3:='R3';
  RubberR2_ID:='VT14';
  RubberR3_ID:='VT01';
  AppDir:=ExtractFilePath(Application.ExeName);
  if FileExists(AppDir+'\ComName.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ComName.ini');
      RubberR2:=MyIni.ReadString('ERP','Manage_241_Rubber2','R2');
      RubberR3:=MyIni.ReadString('ERP','Manage_241_Rubber3','R3');
      RubberR2_ID:=MyIni.ReadString('ERP','Manage_241_Rubber2_ID','VT14');
      RubberR3_ID:=MyIni.ReadString('ERP','Manage_241_Rubber3_ID','VT01');
    finally
      MyIni.Free;
    end;
  end;
end;

procedure TMaterialCost.FormCreate(Sender: TObject);
var i:integer;
begin
  with Qtemp do
  begin 
    active:=false;
    sql.Clear;
    sql.add('select getdate() as NDate ');
    active:=true;
    NDate:=fieldbyname('NDate').value;
    active:=false;
  end;
  DTP1.date:=Ndate-7;
  DTP2.date:=Ndate-1;
  ReadIni();
end;

procedure TMaterialCost.FormDestroy(Sender: TObject);
begin
  materialcost:=nil;
end;

procedure TMaterialCost.PrintDBGridEh1BeforePrint(Sender: TObject);
begin  
  PrintDBGridEh1.SetSubstitutes(['%[TDate]',formatdatetime('yyyy/MM/dd',DTP1.Date)+'~~~'+formatdatetime('yyyy/MM/dd',DTP2.Date)]);
end;

procedure TMaterialCost.Print1Click(Sender: TObject);
begin
  PrintDBGrideh1.Preview;
end;

procedure TMaterialCost.Excel1Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin

  if query1.Active then
  begin
    if query1.recordcount=0 then
    begin
        showmessage('No record.');
        abort;
    end;
  end else
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
    showmessage('Succeed.');
    eclApp.Visible:=True;
  except
    on   F:Exception   do
      showmessage(F.Message);
  end;

end;

procedure TMaterialCost.Query1CalcFields(DataSet: TDataSet);
var N1,N2,N3,N4,N5,N6,N7,N8,N9:real;
begin
  with query1 do
  begin
    N1:= fieldbyname('A').value ;
    N2:= fieldbyname('B').value ;
    N3:= fieldbyname('C').value ;
    N4:= fieldbyname('D').value ;
    N5:= fieldbyname('E').value ;
    N6:= fieldbyname('F').value ;
    N7:= fieldbyname('G').value ;
    N8:= fieldbyname('H').value ;
    N9:= fieldbyname('I').value ;
    fieldbyname('TotACC').value:=N1+N2+N3+N4+N5+N6+N7+N8+N9;
  end;
end;

procedure TMaterialCost.DBGrid1EditButtonClick(Sender: TObject);
begin
  if not query1.active then
    abort;
  if query1.recordcount=0 then
    abort;
  MaterialCost_Det:=TMaterialCost_Det.create(self);
  with MaterialCost_Det.query1 do
  begin
    active:=false;
    sql.clear;
    sql.add('select LL.FYLB,LL.DepID,LL.DepName,LL.CLBH,LL.LLNO,LL.CFMDate,CLZL.YWPM,CLZL.ZWPM,CLZL.DWBH,LL.SCBH,');
    //2021/3/10 Add LL.Article.LL.Pairs
    sql.Add('       LL.YYBH,SCBLYY.YWSM,SCBLYY.ZWSM,LL.Qty,CWDJ.USPrice,round(LL.Qty*CWDJ.USPrice,2) as USACC,LL.Memo,LL.Article,LL.Pairs');
    //2021/3/10 Add DDZL.Article.DDZL.Pairs
    sql.add('from (select CLLBFYS.FYLB,KCLL.DepID,BDepartment.DepName,KCLLS.CLBH,KCLLS.LLNO,KCLL.CFMDate,KCLLS.YYBH,KCLLS.Qty,KCLLS.SCBH,KCLLS.MeMo,DDZL.Article,DDZL.Pairs ');
    sql.add('             ,Convert(varchar(10),BDepartment.GSBH) as GSBH');
    sql.add('      from KCLLS');
    sql.add('      left join KCLL on KCLL.LLNO=KCLLS.LLNO');
    sql.add('      left join BDepartment on BDepartment.ID=KCLL.DepID');
    sql.add('      left join CLLBFYS on CLLBFYS.CLBH=KCLLS.CLBH and CLLBFYS.GSBH=KCLL.GSBH');
    //2021/3/10 Add Left Join DDZL
    sql.add('      left join DDZL on DDZL.DDBH=KCLLS.SCBH and DDZL.ZLBH=KCLLS.SCBH');
    sql.add('      where convert(smalldatetime,convert(varchar,KCLL.CFMDate,111)) between');
    sql.add('                '''+formatdatetime('yyyy/MM/dd',DTP1.date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.date)+'''');
    sql.add('            and BDepartment.DepName like '''+EditDepName+'%'' ');
    sql.add('            and KCLLS.Qty<>0');
    sql.add('            and CLLBFYS.FYLB like '''+DBGrid1.selectedfield.fieldname+'%''');
    sql.add('     ) LL   ');
    sql.add('left join CLZL on CLZl.CLDH=LL.CLBH');
    sql.add('left join SCBLYY on SCBLYY.YYBH=LL.YYBH');
    sql.add('left join CWDJ on CWDJ.CLBH=LL.CLBH ');
    sql.add('                  and CWDJ.DJYear=convert(varchar,datepart(yyyy,LL.CFMDate)) ');
    sql.add('                  and CWDJ.DJMonth=convert(varchar,datepart(MM,LL.CFMDate)) ');
    sql.add('where LL.GSBH='+''''+query1.fieldbyname('GSBH').value+'''');
    sql.add('order by LL.FYLB,LL.DepID,LL.CLBH,LL.LLNO');
    active:=true;
  end;
  MaterialCost_Det.show;
end;

procedure TMaterialCost.Detail1Click(Sender: TObject);
begin
  if not query1.active then
    abort;
  if query1.recordcount=0 then
    abort;
  MaterialCost_Dep:=TMaterialCost_Dep.create(self);
  with Qtemp do
  begin
    active:=false;
    sql.clear;         
    active:=false;
    sql.clear;
    sql.Add('select LBBH,CMEMO ,MEMO from CLLBFY ');
    sql.add('where  XH='+''''+'01'+'''');
    sql.add('       and len(LBBH)=1');
    sql.add('order by LBBH ');
    active:=true;
  end;
  with MaterialCost_Dep.query1 do
  begin
    active:=false;
    sql.clear;
    sql.add('select FYACC.GSBH,FYACC.DepName,FYACC.DepMemo ');
     while not QTemp.eof do
     begin
         sql.add(',sum(case  when FYACC.FYLB='+''''+Qtemp.fieldbyname('LBBH').value+'''');
         sql.add(' then isnull(FYACC.ACCUS,0) else 0  end) as '+''''+Qtemp.fieldbyname('LBBH').value+'''');
         QTemp.Next;
     end;
     sql.add('from (');
    sql.add('select FYACC.GSBH,FYACC.DepName,FYACC.DepMemo,FYACC.FYLB,sum(FYACC.ACCUS) as ACCUS   ');
    sql.add('from (select LL.GSBH,LL.DepName,LL.DepMemo,LL.CLBH,substring(LL.FYLB,1,1) as FYLB,sum(LL.Qty*CWDJ.USPrice) as ACCUS');
    sql.add('      from (select Convert(varchar(10),BDepartment.GSBH) as GSBH');
    sql.add('            ,BDepartment.DepName,BDepartment.DepMemo,KCLL.DepID,KCLL.CFMDate,KCLLS.Qty,CLLBFYS.FYLB,KCLLS.CLBH');
    sql.add('            from KCLLS');
    sql.add('            left join KCLL on KCLL.LLNO=KCLLS.LLNO');
    sql.add('            left join BDepartment on BDepartment.ID=KCLL.DepID');
    sql.add('            left join CLLBFYS on CLLBFYS.CLBH=KCLLS.CLBH and KCLL.GSBH=CLLBFYS.GSBH');
    sql.add('            where convert(smalldatetime,convert(varchar,KCLL.CFMDate,111)) between');
    sql.add('                  '''+formatdatetime('yyyy/MM/dd',DTP1.date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.date)+'''');
    sql.add('                  and KCLL.CFMID<>'+''''+'NO'+'''');
    sql.add('                  and BDepartment.DepName like '''+EditDepName+'%'' ');
    sql.add('                  and KCLLS.Qty<>0');
    sql.add('            ) LL  ');
    sql.add('      left join CWDJ on CWDJ.CLBH=LL.CLBH ');
    sql.add('                        and CWDJ.DJYear=convert(varchar,datepart(yyyy,LL.CFMDate)) ');
    sql.add('                        and CWDJ.DJMonth=convert(varchar,datepart(MM,LL.CFMDate)) ');
    sql.add('      where LL.GSBH='+''''+query1.fieldbyname('GSBH').Value+'''');
    sql.add('      group by LL.GSBH,LL.DepName,LL.DepMemo,LL.CLBH,LL.FYLB,CWDJ.USPrice) FYACC');
    sql.add('left join CLLBFY on CLLBFY.LBBH=FYACC.FYLB  and CLLBFY.XH=''01''');
    sql.add('group by FYACC.GSBH,FYACC.DepName,FYACC.DepMemo,FYACC.FYLB');
    sql.add(') FYACC ');
    sql.add('group by FYACC.GSBH ,FYACC.DepName,FYACC.DepMemo');
    sql.add('order by FYACC.GSBH,FYACC.DepName,FYACC.DepMemo');
    active:=true;
  end;
  MaterialCost_Dep.show;

end;

end.
