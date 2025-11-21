unit ScanPerHourPPH1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GridsEh, DBGridEh, DB, DBTables, StdCtrls, ComCtrls, ExtCtrls,
  Comobj ,Dateutils, Menus;

type
  TScanPerHourPPH = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    DTP3: TDateTimePicker;
    DTP4: TDateTimePicker;
    CBX4: TComboBox;
    Button2: TButton;
    HourRep: TQuery;
    DS1: TDataSource;
    DBGridEh1: TDBGridEh;
    Qtemp: TQuery;
    HourRepScanDate: TStringField;
    HourRepYSBH: TStringField;
    HourRepDepName: TStringField;
    HourRepGXLB: TStringField;
    HourRepArticle: TStringField;
    HourRepXieMing: TStringField;
    HourRepQty: TIntegerField;
    HourRepPHour: TStringField;
    HourRepCQQty: TIntegerField;
    HourRepPPH: TFloatField;
    HourRepIE_PPH: TFloatField;
    PopupMenu1: TPopupMenu;
    Detail1: TMenuItem;
    HourRepT1: TIntegerField;
    HourRepT2: TIntegerField;
    HourRepIE_T1: TIntegerField;
    HourRepIE_T2: TIntegerField;
    InfoLabel: TLabel;
    Label7: TLabel;
    CB1: TCheckBox;
    Label6: TLabel;
    OrdermodeCB: TComboBox;
    CB2: TCheckBox;
    HourRepDAOMH: TStringField;
    HourRepPTime: TFloatField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure DTP1Change(Sender: TObject);
    procedure Detail1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ScanPerHourPPH: TScanPerHourPPH;

implementation
  uses main1,ScanPerHourPPHDet1,FunUnit;
{$R *.dfm}

procedure TScanPerHourPPH.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=CaFree;
end;

procedure TScanPerHourPPH.FormDestroy(Sender: TObject);
begin
  ScanPerHourPPH:=nil;
end;

procedure TScanPerHourPPH.FormCreate(Sender: TObject);
var NDate:TDate;
    i:integer;
begin
  InfoLabel.Caption:='Du lieu cua May chu ERP:'+DatetoStr(now)+'-'+datetostr(Date()-45)+' xin dao ra som nhe';
  with Qtemp do
  begin
    active:=false;
    sql.Clear;
    sql.add('select distinct GX from SCGXDY order by GX');
    active:=true;
    for i:=1 to recordcount do
    begin
        CBX4.Items.Add(fieldbyname('GX').asstring);
        next;
    end;
    CBX4.ItemIndex:=0;
    active:=false;
    sql.Clear;
    sql.add('select getdate() as NDate ');
    active:=true;
    NDate:=fieldbyname('NDate').value;
    active:=false;
    DTP1.date:=NDate-8;
    DTP2.time:=startoftheday(NDate);
    DTP3.date:=NDate-1;
    DTP4.time:=endoftheday(NDate);
  end;

end;

procedure TScanPerHourPPH.Button1Click(Sender: TObject);
begin
  if WithinPastDays(DTP1.Date, DTP3.Date, 45)=false then
  begin
    Showmessage('Pham vi khong cho phep qua 45 ngay. xin chon lai');
    abort;
  end;
  with HourRep do
  begin
    //
    Active:=false;
    SQL.Clear;
    //20210316 現場點名直工數
    SQL.Add('if object_id(''tempdb..#RSCQPOH'') is not null');
    SQL.Add('begin  drop table #RSCQPOH end');
    SQL.Add('Select RSDate,BDepartment.sumline,Sum(RSCQ.CQQty) as CQQty into  #RSCQPOH ');
    SQL.Add('from RSCQ ');
    SQL.Add('inner join BDepartment on Bdepartment.ID=RSCQ.DepNo');
    SQL.Add('where convert(smalldatetime,convert(varchar,RSCQ.RSDate,111))  between  '''+Formatdatetime('yyyy/MM/dd',DTP1.datetime)+''' and '''+Formatdatetime('yyyy/MM/dd',DTP3.datetime)+''' ');
    SQL.Add('Group by  RSDate,BDepartment.sumline ');
    //
    SQL.Add('Select ScanDate,DepName,YSBH,Article,DAOMH,Qty,XieMing,GXLB,PHour,PTime,CQQty,PPH,');
    SQL.Add('       case when PPH >=1.25 then 1');
    SQL.Add('            when PPH >=1.0 and PPH< 1.25 then 2');
    SQL.Add('            when PPH >= 0.75 and PPH<1.0 then 3');
    SQL.Add('            when PPH<0.75 then 4 end as T1,');
    SQL.Add('       case when PPH>=1.5 then 1');
    SQL.Add('            when PPH>=1.25 and PPH<1.5 then 2');
    SQL.Add('            when PPH>=1.13 and PPH<1.25 then 3');
    SQL.Add('            when PPH>=1.0 and PPH<1.13 then 4');
    SQL.Add('            when PPH>=0.86 and PPH<1.0 then 5');
    SQL.Add('            when PPH>=0.75 and PPH<0.86 then 6');
    SQL.Add('            when PPH>=0.61 and PPH<0.75 then 7');
    SQL.Add('            when PPH<=0.61 then 8 end T2,IE_PPH,');
    SQL.Add('       case when IE_PPH >=1.25 then 1');
    SQL.Add('            when IE_PPH >=1.0 and IE_PPH<1.25 then 2');
    SQL.Add('            when IE_PPH >= 0.75 and IE_PPH<1.0 then 3');
    SQL.Add('            when IE_PPH<0.75 then 4 end as IE_T1,');
    SQL.Add('       case when IE_PPH>=1.5 then 1');
    SQL.Add('            when IE_PPH>=1.25 and IE_PPH<1.5 then 2');
    SQL.Add('            when IE_PPH>=1.13 and IE_PPH<1.25 then 3');
    SQL.Add('            when IE_PPH>=1.0 and IE_PPH<1.13 then 4');
    SQL.Add('            when IE_PPH>=0.86 and IE_PPH<1.0 then 5');
    SQL.Add('            when IE_PPH>=0.75 and IE_PPH<0.86 then 6');
    SQL.Add('            when IE_PPH>=0.61 and IE_PPH<0.75 then 7');
    SQL.Add('            when IE_PPH<=0.61 then 8 end IE_T2     ');
    SQL.Add(' from (');
    //
    SQL.Add('select ScanDate,YSBH,DepName,GXLB,Article,XieMing,DAOMH,IE_PPH,CQQty,Sum(Qty) as Qty');
    SQL.Add('     ,Convert(varchar(3),Min( SMZL.TimeGroupID)) +''~''+ Convert(varchar(3),Max(SMZL.TimeGroupID )) as PHour ,Sum(minut) as PTime ');
    SQL.Add('     ,Round( sum(Qty) /  Sum(minut) / CQQty,4) as PPH');
    SQL.Add('    from (');
    SQL.Add('select ScanDate,YSBH,DepName,GXLB,Article,XieMing,DAOMH,IE_PPH,TimeGroupID,minut,CQQty,sum(CTS)*Qty as Qty from (');
    SQL.Add('select convert(varchar,SMZL.ScanDate,111) as ScanDate,SMDD.YSBH,BDepartment.DepName,SMDDSS.GXLB,SMDD.Article,SMDD.XieMing,XXZL.DAOMH,');
    SQL.Add('       SMZL.CTS,SMDDSS.Qty,');
    SQL.Add('       RSCQ.CQQty,SCXXCL.POH as IE_PPH,SMZLT.TimeGroupID,SMZLT.minut     ');
    SQL.Add('from (select SMNO,CODEBAR,CTS,DepNO,ScanDate from SMZL where SMZL.ScanDate>='''+formatdatetime('yyyy/MM/dd',Date())+' 00:00:00'' union all select SMNO,CODEBAR,CTS,DepNO,ScanDate from SMZLOld) SMZL');
    SQL.Add('left join BDepartment on Bdepartment.ID=SMZL.DepNo');
    SQL.Add('left join SMDDSS on SMDDSS.CodeBar=SMZL.CodeBar');
    SQL.Add('left join SMDD on SMDD.DDBH=SMDDSS.DDBH and SMDD.GXLB=SMDDSS.GXLB ');
    SQL.Add('left join #RSCQPOH as RSCQ on RSCQ.Sumline=BDepartment.Sumline and RSCQ.RSDate=convert(varchar,SMZL.ScanDate,111)');
    SQL.Add('left join DDZL on DDZL.DDBH=SMDD.YSBH ');
    SQL.Add('left join XXZL on XXZL.XieXing=DDZL.XieXing and XXZL.SheHao=DDZL.SheHao ');
    SQL.Add('left join (Select XieXing,SheHao,BZLB,Max(Convert(float,SCXXCL.BZCL)) as IEQty,Sum(SCXXCL.BZRS+SCXXCL.BZJS) as IEPeo,');
    SQL.Add('                  (Round(Max(Convert(float,SCXXCL.BZCL))/Sum(SCXXCL.BZRS+SCXXCL.BZJS),4)) as POH ');
    SQL.Add('           from SCXXCL ');
    //2021/2/19 新增Group by BZLB
    SQL.Add('           Group by XieXing,SheHao,BZLB) SCXXCL on SCXXCL.XieXing=DDZL.XieXing and SCXXCL.SheHao=DDZL.SheHao and SCXXCL.BZLB=BDepartment.BZLB ');
    SQL.Add('left join (');
    SQL.Add('select SMZL.*,IsNull(SCSJDV.minut,1) as minut from (');
    SQL.Add('select SMZL.SMNO,SMZL.DepNo,((datename(hh,SMZL.ScanDate)*60+datename(mi,SMZL.ScanDate))-0)/60 as TimeGroupID ');
    SQL.Add('from (select SMNO,CODEBAR,CTS,DepNO,ScanDate from SMZL where SMZL.ScanDate>='''+formatdatetime('yyyy/MM/dd',Date())+' 00:00:00'' union all select SMNO,CODEBAR,CTS,DepNO,ScanDate from SMZLOld) SMZL');
    SQL.Add('left join SMDDSS on SMDDSS.CodeBar=SMZL.CodeBar');
    SQL.Add('left join BDepartment on Bdepartment.ID=SMZL.DepNo');
    SQL.Add('where SMZL.ScanDate between ');
    SQL.Add('          convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP1.datetime)+' '+formatdatetime('hh:mm:ss',DTP2.datetime)+''') and convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP3.datetime)+' '+formatdatetime('hh:mm:ss',DTP4.datetime)+''')  ');
    SQL.Add('      and SMDDSS.DDBH like '''+Edit2.Text+'%'' and BDepartment.DepName like '''+Edit1.Text+'%''');
    SQL.Add('      and SMDDSS.GXLB='''+CBX4.Text+'''');
    if CB1.Checked=false then
    SQL.Add('      and SMDDSS.DDBH not like ''ZS%'' ');
    SQL.Add('      ) SMZL ');
    SQL.Add('Left join SCSJDV on SCSJDV.ID=SMZL.DepNo and SCSJDV.hors=SMZL.TimeGroupID      ');
    SQL.Add('        ) SMZLT on SMZLT.SMNO=SMZL.SMNO');
    SQL.Add('where BDepartment.DepName like '''+Edit1.Text+'%''');
    if CB2.Checked=true then
    SQL.Add('      and BDepartment.YN=1 ');
    SQL.Add('      and SMDDSS.DDBH like '''+Edit2.Text+'%'' ');
    SQL.Add('      and DDZL.GSBH='''+main.Edit2.Text+''' ');
    SQL.Add('      and SMDDSS.GXLB='''+CBX4.Text+'''');
    if OrdermodeCB.ItemIndex=1 then
    SQL.Add('      and DDZL.ordermode is not null ')
    else if OrdermodeCB.ItemIndex=2 then
    SQL.Add('      and DDZL.ordermode is null ');
    SQL.Add('      and SMZL.ScanDate between ');
    SQL.Add('          convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP1.datetime)+' '+formatdatetime('hh:mm:ss',DTP2.datetime)+''') and convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP3.datetime)+' '+formatdatetime('hh:mm:ss',DTP4.datetime)+''')  ');
    SQL.Add(') SMZL group by ScanDate,YSBH,DepName,GXLB,Article,XieMing,DAOMH,IE_PPH,TimeGroupID,minut,Qty,CQQty');
    SQL.Add(') SMZL group by ScanDate,YSBH,DepName,GXLB,Article,XieMing,DAOMH,IE_PPH,CQQty');
    SQL.Add(') SMDDSS  order by Depname');
    //funcObj.WriteErrorLog(sql.Text);
    Active:=true;
    //
  end;
end;

procedure TScanPerHourPPH.Button2Click(Sender: TObject);
var   a:string;
      eclApp,WorkBook:olevariant;
      i,j,k:integer;
 begin
  if  HourRep.active  then
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
        for   i:=0   to   HourRep.fieldcount-1   do
        begin
          eclApp.Cells(1,i+1):=HourRep.fields[i].FieldName;
        end;
        HourRep.First;
        j:=2;
        while   not   HourRep.Eof   do
        begin
          for   i:=0   to  HourRep.fieldcount-1  do
          begin
            eclApp.Cells(j,i+1):=HourRep.Fields[i].Value;
          end;
          HourRep.Next;
          inc(j);
        end;
         //add outline
        for k:=1 to 4 do
        begin
          eclApp.range[eclApp.cells[1,1],eclApp.cells[j-1,i]].borders[k].linestyle:=1;
        end;
       eclapp.columns.autofit;
       showmessage('Succeed');
       eclApp.Visible:=True;
    except
    on  F:Exception   do
      showmessage(F.Message);
    end;
  end;

end;

procedure TScanPerHourPPH.DTP1Change(Sender: TObject);
begin
  DTP3.Date:=DTP1.Date;
end;

procedure TScanPerHourPPH.Detail1Click(Sender: TObject);
begin
  ScanPerHourPPHDet:=TScanPerHourPPHDet.Create(self);
  ScanPerHourPPHDet.ShowModal();
end;

end.
