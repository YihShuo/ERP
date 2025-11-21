unit Detail_Rubber_Out1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBTables, PrnDbgeh, DB, GridsEh, DBGridEh, ComCtrls, StdCtrls, comobj,
  ExtCtrls,fununit,dateutils,ehlibBDE;

type
  TDetail_Rubber_Out = class(TForm)
    Panel1: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Button1: TButton;
    Button2: TButton;
    CBX1: TComboBox;
    Edit1: TEdit;
    Edit2: TEdit;
    Check: TCheckBox;
    DBGridEh3: TDBGridEh;
    Label6: TLabel;
    Edit3: TEdit;
    RubberOut: TQuery;
    DSRubberOut: TDataSource;
    RubberOutLLBH: TStringField;
    RubberOutCQDH: TStringField;
    RubberOutLLRQ: TStringField;
    RubberOutCFM: TStringField;
    RubberOutDDBH: TStringField;
    RubberOutcldh: TStringField;
    RubberOutLB: TStringField;
    RubberOutKGS_LL: TFloatField;
    RubberOutKGS_YL: TFloatField;
    RubberOutKGS_CL: TFloatField;
    RubberOutUSERID: TStringField;
    RubberOutUSERDATE: TStringField;
    Date: TCheckBox;
    Label1: TLabel;
    DTP1: TDateTimePicker;
    Label4: TLabel;
    DTP2: TDateTimePicker;
    RubberOutPONO: TStringField;
    DBGridEh2: TDBGridEh;
    DS1: TDataSource;
    SMZL: TQuery;
    SMZLDDBH: TStringField;
    SMZLArticle: TStringField;
    SMZLXieMing: TStringField;
    SMZLGXLB: TStringField;
    SMZLXXCC: TStringField;
    SMZLXH: TStringField;
    SMZLQty: TIntegerField;
    SMZLCTS: TIntegerField;
    SMZLTotQty: TIntegerField;
    SMZLokCTS: TIntegerField;
    SMZLTotokQty: TIntegerField;
    SMZLNowokCTS: TIntegerField;
    SMZLNowokQty: TIntegerField;
    SMZLDepName: TStringField;
    SMZLCODEBAR: TStringField;
    SMZLScanDate: TDateTimeField;
    Panel2: TPanel;
    Label7: TLabel;
    Label8: TLabel;
    DTP5: TDateTimePicker;
    DTP6: TDateTimePicker;
    Button3: TButton;
    DTP3: TDateTimePicker;
    DTP4: TDateTimePicker;
    Button4: TButton;
    SMZLChk: TCheckBox;
    Qtemp: TQuery;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    GXLB:string;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Detail_Rubber_Out: TDetail_Rubber_Out;

implementation

uses main1;

{$R *.dfm}

procedure TDetail_Rubber_Out.Button1Click(Sender: TObject);

begin
    if CBX1.ItemIndex=0 then GXLB:='W' else  GXLB:='O';
    with RubberOut do
    begin
      active:=false;
      sql.Clear;
      //sql.Add('select LLZL.LLBH,LLZL.CQDH,CONVERT(DATE, LLZL.LLRQ, 111) AS LLRQ ,LLZL.CFM,LLZLS.DDBH,LLZLS.cldh,LLZLS.LB,LLZLS.KGS_LL,LLZLS.KGS_YL,LLZLS.KGS_CL,LLZL.USERID,CONVERT(DATE, LLZL.USERDATE, 111) AS USERDATE');
      sql.Add('select LLZL.LLBH,LLZL.CQDH,CONVERT(DATE, LLZL.LLRQ, 111) AS LLRQ ,LLZL.CFM,LLZLS.DDBH,LLZLS.cldh,LLZLS.LB,LLZLS.KGS_LL,LLZLS.KGS_YL,LLZLS.KGS_CL,LLZL.USERID,CONVERT(DATE, LLZL.USERDATE, 111) AS USERDATE ');
      sql.Add(',CAST(substring (( select ''/'' + LS.PONO  from KCLLS LS left join KCLL on kcll.LLNO=LS.LLNO and kcll.GSBH=''VR2'' and  LS.SCBH<>''ZZZZZZZZZZ''    ');
      sql.Add('  									inner join '+main.LIY_DD+'.dbo.clzlsl clzlsl on ''A''+LS.CLBH=clzlsl.cldhz  ');
      sql.Add('         			    where 1=1 and clzlsl.cldh=LLZLS.cldh  and LLZLS.DDBH=LS.SCBH  ');
      sql.Add('  				          group by LS.PONO order by CAST(LS.PONO AS varchar) for XML Path ('''')),2,1000) as varchar(1000)  ) as PONO	  ');
      sql.Add('from '+main.LIY_DD+'.dbo.LLZL  LLZL inner join '+main.LIY_DD+'.dbo.LLZLS LLZLS');
      sql.Add('on LLZL.LLBH =LLZLS.LLBH and LLZL.CQDH=LLZLS.CQDH');
      sql.Add('where 1=1 and LLZL.CQDH='''+CBX1.Text+'''');
      if Date.Checked then
        sql.Add(' and LLZL.LLRQ between '''+formatdatetime('yyyymmdd',dtp1.Date)+''' and  '''+formatdatetime('yyyymmdd',dtp2.Date)+'''');
      sql.Add('and LLZL.CFM=''Y''');
      if Edit1.Text<>'' then
        sql.Add('and LLZL.LLBH='''+Edit1.Text+''' ');
      if Edit2.Text<>'' then
        sql.Add('and LLZLS.cldh='''+Edit2.Text+''' ');
      if Edit3.Text<>'' then
        sql.Add('and LLZLS.DDBH='''+Edit3.Text+''' ');
      if Check.Checked then
        sql.Add('      and LLZL.USERID='+''''+main.Edit1.Text+'''');
      sql.Add('group by LLZL.LLBH,LLZL.CQDH,LLZL.LLRQ,LLZL.CFM,LLZLS.DDBH,LLZLS.cldh,LLZLS.LB,LLZLS.KGS_LL,LLZLS.KGS_YL,LLZLS.KGS_CL,LLZL.USERID,LLZL.USERDATE');
      sql.Add('order by  LLZL.LLBH,LLZLS.cldh');
      //funcobj.WriteErrorLog(sql.Text);
      active:=true;
    end;

    with SMZL do
    begin
      active:=false;
      sql.Clear;
      sql.add('select SMDDSS.DDBH,Max(BDepartment.DepName) as DepName,SMDDSS.GXLB,SMDDSS.XXCC,SMDDSS.XH,SMDD.Article,SMDD.XieMing,');
      sql.add('       SMDDSS.Qty,SMDDSS.CTS,SMDDSS.Qty*SMDDSS.CTS as TotQty,SMDDSS.okCTS,SMDDSS.Qty*SMDDSS.okCTS as TotokQty');
      sql.add('       ,sum(SMZL.CTS) as NowokCTS,sum(SMZL.CTS)*SMDDSS.Qty as NowokQty,Max(SMDDSS.CODEBAR) as CODEBAR,MAX(SMZL.ScanDate) as ScanDate  ');
      sql.add('from SMDDSS');
      sql.Add('left join (select SMNO,CODEBAR,CTS,DepNo,ScanDate from SMZL where SB is null union all Select SMNO,CODEBAR,CTS,DepNo,ScanDate from SMZLOld) SMZL on SMDDSS.CodeBar=SMZL.CodeBar');
      sql.add('left join SMDD on SMDD.DDBH=SMDDSS.DDBH and SMDD.GXLB=SMDDSS.GXLB ');
      sql.add('left join BDepartment on Bdepartment.ID=SMZL.DepNo');
      sql.add('left join DDZL on DDZL.DDBH=SMDD.YSBH');
      sql.add('where 1=1 ');
      sql.add('      and SMDDSS.DDBH=:DDBH');
      sql.add('      and SMDDSS.GXLB='''+GXLB+'''');
      sql.add('group by SMDDSS.GXLB,SMDDSS.DDBH,SMDDSS.XXCC,SMDDSS.XH,SMDD.Article,SMDD.XieMing,SMDDSS.Qty,SMDDSS.CTS,SMDDSS.okCTS');
      sql.add('order by SMDDSS.GXLB,SMDDSS.DDBH,SMDDSS.XXCC,SMDDSS.XH,SMDD.Article,SMDD.XieMing');
      //funcObj.WriteErrorLog(sql.Text);
      active:=true;
    end;
end;

procedure TDetail_Rubber_Out.FormCreate(Sender: TObject);
var myYear, myMonth, myDay : Word;
    NDate:TDate;
begin

  with Qtemp do
  begin 
    active:=false;
    sql.Clear;
    sql.add('select getdate() as NDate ');
    active:=true;
    NDate:=fieldbyname('NDate').value;
    active:=false;
    DTP5.date:=NDate;
    DTP6.time:=startoftheday(NDate);
    DTP3.date:=NDate  ;
    DTP4.time:=endoftheday(NDate);
  end;
  DecodeDate(now, myYear, myMonth, myDay);
  DTP1.Date:=EncodeDate(myYear, myMonth, 1);
  DTP2.date:=now;
end;

procedure TDetail_Rubber_Out.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=Cafree;
end;

procedure TDetail_Rubber_Out.FormDestroy(Sender: TObject);
begin
  Detail_Rubber_Out:=nil;
end;

procedure TDetail_Rubber_Out.Button2Click(Sender: TObject);
var
  eclApp,WorkBook:olevariant;
  i,j:integer;
begin
    if SMZL.Active then
    begin
      if SMZL.recordcount=0 then
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
      for i:=0 to DBGridEh2.Columns.Count-1 do
      begin
        eclApp.Cells(1,i+2):=DBGridEh2.Columns[i].Title.Caption;
      end;
      SMZL.First;
      j:=2;
      while   not  SMZL.Eof   do
      begin
          eclApp.Cells(j,1):=j-1;
          for i:=0 to DBGridEh2.Columns.Count-1 do
          begin
              eclApp.Cells(j,i+2):=DBGridEh2.Fields[i].Value;
              eclApp.Cells.Cells.item[j,i+2].font.size:='10';
          end;
          SMZL.Next;
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

procedure TDetail_Rubber_Out.Button3Click(Sender: TObject);
begin
    with SMZL do
    begin
      active:=false;
      sql.Clear;
      sql.add('select SMDDSS.DDBH,Max(BDepartment.DepName) as DepName,SMDDSS.GXLB,SMDDSS.XXCC,SMDDSS.XH,SMDD.Article,SMDD.XieMing,');
      sql.add('       SMDDSS.Qty,SMDDSS.CTS,SMDDSS.Qty*SMDDSS.CTS as TotQty,SMDDSS.okCTS,SMDDSS.Qty*SMDDSS.okCTS as TotokQty');
      sql.add('       ,sum(SMZL.CTS) as NowokCTS,sum(SMZL.CTS)*SMDDSS.Qty as NowokQty,Max(SMDDSS.CODEBAR) as CODEBAR,MAX(SMZL.ScanDate) as ScanDate  ');
      sql.add('from SMDDSS');
      sql.Add('left join (select SMNO,CODEBAR,CTS,DepNo,ScanDate from SMZL where SB is null union all Select SMNO,CODEBAR,CTS,DepNo,ScanDate from SMZLOld) SMZL on SMDDSS.CodeBar=SMZL.CodeBar');
      sql.add('left join SMDD on SMDD.DDBH=SMDDSS.DDBH and SMDD.GXLB=SMDDSS.GXLB ');
      sql.add('left join BDepartment on Bdepartment.ID=SMZL.DepNo');
      sql.add('left join DDZL on DDZL.DDBH=SMDD.YSBH');
      sql.add('where 1=1 ');
      sql.add('      and SMDDSS.DDBH=:DDBH');
      sql.add('      and SMDDSS.GXLB='''+GXLB+'''');
      if SMZLChk.Checked=true then
      begin
        sql.add('      and SMZL.ScanDate between ');
        sql.add('           '''+formatdatetime('yyyy/MM/dd',DTP5.Date)+' '+formatdatetime('HH:mm:ss',DTP6.Time)+'''');
        sql.add('           and '''+formatdatetime('yyyy/MM/dd',DTP3.Date)+' '+formatdatetime('HH:mm:ss',DTP4.Time)+'''');
      end;
      sql.add('group by SMDDSS.GXLB,SMDDSS.DDBH,SMDDSS.XXCC,SMDDSS.XH,SMDD.Article,SMDD.XieMing,SMDDSS.Qty,SMDDSS.CTS,SMDDSS.okCTS');
      sql.add('order by SMDDSS.GXLB,SMDDSS.DDBH,SMDDSS.XXCC,SMDDSS.XH,SMDD.Article,SMDD.XieMing');
      //funcObj.WriteErrorLog(sql.Text);
      active:=true;
    end;
end;

end.
