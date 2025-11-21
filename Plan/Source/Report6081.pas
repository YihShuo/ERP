unit Report6081;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, PrnDbgeh, Menus, DB, DBTables, GridsEh, DBGridEh, StdCtrls,
  ExtCtrls,dateutils,comobj;

type
  TReport608 = class(TForm)
    QTemp: TQuery;
    Query2: TQuery;
    DS2: TDataSource;
    PopupMenu2: TPopupMenu;
    PrintDBGridEh1: TPrintDBGridEh;
    Excel1: TMenuItem;
    pro: TPanel;
    Label2: TLabel;
    Label7: TLabel;
    Label6: TLabel;
    Label1: TLabel;
    Button1: TButton;
    CBX1: TComboBox;
    CBX2: TComboBox;
    Edit1: TEdit;
    CBX5: TComboBox;
    CBX3: TComboBox;
    CBX4: TComboBox;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Query2GSBH: TStringField;
    Query2DDBH: TStringField;
    Query2inQty: TIntegerField;
    Query2KFJC: TStringField;
    Query2ARTICLE: TStringField;
    Query2proQty: TIntegerField;
    Query2CSD: TDateTimeField;
    Query2XF: TDateTimeField;
    Query2PlanDate: TDateTimeField;
    Query2PlanEDate: TDateTimeField;
    Query2LastInDate: TDateTimeField;
    Query2Qty: TFloatField;
    CB1: TCheckBox;
    CB2: TCheckBox;
    Query2S_proQty: TIntegerField;
    Query2A_proQty: TIntegerField;
    Query2C_Per: TFloatField;
    Query2S_Per: TFloatField;
    Query2A_Per: TFloatField;
    Label3: TLabel;
    Label4: TLabel;
    DBGridEh1: TDBGridEh;
    Label5: TLabel;
    Query2YSBH: TStringField;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure Excel1Click(Sender: TObject);
    procedure DBGridEh1Columns9EditButtonDown(Sender: TObject;
      TopButton: Boolean; var AutoRepeat, Handled: Boolean);
    procedure DBGridEh1Columns11EditButtonDown(Sender: TObject;
      TopButton: Boolean; var AutoRepeat, Handled: Boolean);
    procedure DBGridEh1Columns13EditButtonDown(Sender: TObject;
      TopButton: Boolean; var AutoRepeat, Handled: Boolean);
    procedure DBGridEh1Columns16EditButtonDown(Sender: TObject;
      TopButton: Boolean; var AutoRepeat, Handled: Boolean);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Report608: TReport608;
  sdate1,edate1:Tdate;
  sdate2,edate2:Tdate;
implementation

uses main1, Unit1, Unit2;

{$R *.dfm}

procedure TReport608.FormDestroy(Sender: TObject);
begin
Report608:=nil;
end;

procedure TReport608.FormClose(Sender: TObject; var Action: TCloseAction);
begin
action:=cafree;
end;

procedure TReport608.FormCreate(Sender: TObject);
var i:integer;
begin

    if (main.edit2.Text = 'VA12') or (main.edit2.Text = 'VA3') or (main.edit2.Text = 'VB1') or (main.edit2.Text = 'VB2') then      //增加B2廠判斷 star 2014.3.3
      CBX5.Text:=main.edit2.Text
    else
      CBX5.Text:='ALL';

end;

procedure TReport608.Button1Click(Sender: TObject);
var a1,b1,c1, a2, b2, c2 :word;
//var F:TextFile;
begin
//AssignFile(F,'D:/608.txt');
//Rewrite(F);

a1:=strtoint(CBX1.text);
b1:=strtoint(CBX2.text);
c1:=1;
sdate1:=EncodeDate(a1,b1,c1);
edate1:=endofthemonth(sdate1);

a2:=strtoint(CBX3.text);
b2:=strtoint(CBX4.text);
c2:=1;
sdate2:=EncodeDate(a2,b2,c2);
edate2:=endofthemonth(sdate2);

if ( CBX1.Text + CBX2.text > CBX3.Text + CBX4.text   ) and CB1.Checked and CB2.Checked then
begin
   ShowMessage('投產月不能大於出貨月');
   exit;
end;
//整理交叉表的內容

 with Query2 do
   begin
     active:=false;
     sql.clear;

     sql.add('select YWDD.GSBH, YWDD.DDBH , YWDD.YSBH, KFZL.KFJC, DDZL.ARTICLE,  YWDD.Qty, isnull(DDZL.ShipDate, 0) as CSD, YWDD.ETD as ''X/F'' ');
     sql.add('       , MIN(SMDD.planDate) as planDate, MAX(SMDD.planEDate) as planEDate                                              ');
     sql.add('       , isnull(sum(case  when GXLB=''C'' then proQty  end), 0) as ''C_proQty'', isnull( case when YWDD.Qty<>0 and YWDD.Qty is not null then round(isnull(sum(case  when GXLB=''C'' then proQty  end), 0)*100 / YWDD.Qty ,0) end, 0)  as ''C_Per%''  ');
     sql.add('       , isnull(sum(case  when GXLB=''S'' then proQty  end), 0) as ''S_proQty'', isnull( case when YWDD.Qty<>0 and YWDD.Qty is not null then round(isnull(sum(case  when GXLB=''S'' then proQty  end), 0)*100 / YWDD.Qty ,0) end, 0)  as ''S_Per%''  ');
     sql.add('       , isnull(sum(case  when GXLB=''A'' then proQty  end), 0) as ''A_proQty'', isnull( case when YWDD.Qty<>0 and YWDD.Qty is not null then round(isnull(sum(case  when GXLB=''A'' then proQty  end), 0)*100 / YWDD.Qty ,0) end, 0)  as ''A_Per%''  ');
     sql.add('       , YWCP.LastInDate, isnull(YWCP.inQty, 0) as inQty  ');
     sql.add('       from  (select YWDD.GSBH, YWDD.Qty, YWDD.exeSB, YWDD.DDBH, YWDD.YSBH, YWDD.ETD  from YWDD  where YWDD.exeSB is null ');
     if (CBX5.Text <> 'ALL') then
     begin
        sql.add('                  and YWDD.GSBH like '+'''%'+CBX5.Text+'%'+'''');
     end;
     sql.add('       ) YWDD');
     sql.add('              left join (select DDZL.DDBH, DDZL.ARTICLE, DDZL.ShipDate, DDZL.KHBH from DDZL ');
     if CB2.Checked then
     begin
        sql.add('where convert(smalldatetime,convert(varchar,DDZL.ShipDate,111)) between '''+formatdatetime('yyyy/MM/dd',sDate2) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eDate2)+'''');
     end;
     sql.add('                        ) DDZL on DDZL.DDBH = YWDD.YSBH ');
     sql.add('              left join (select KFZL.KFJC, KFZL.KFDH  from KFZL where KFZL.KFJC like '+'''%'+Edit1.Text+'%'+''') KFZL on KFZL.KFDH = DDZL.KHBH ');
     sql.add('              left join (select YWCP.DDBH, MAX(YWCP.LastInDate) as LastInDate, sum (YWCP.Qty) as  inQty  from YWCP where ( SB = 1 or SB = 3 ) group by YWCP.DDBH) YWCP on YWCP.DDBH = YWDD.DDBH     ');
     sql.add('              left join (select SMDD.DDBH, SMDD.YSBH , MIN(SMDD.planDate) as planDate, MAX(SMDD.planEDate) as planEDate from SMDD group  by DDBH, YSBH) SMDD on SMDD.YSBH = YWDD.YSBH ');
     sql.add('              left join (select DDBH, GXLB, sum(Qty* okCTS) as proQty from SMDDSS where GXLB =''C'' or GXLB =''S'' or GXLB =''A''  group by DDBH, GXLB) SMDDSS on SMDDSS.DDBH = SMDD.DDBH   ');
     sql.add('where YWDD.exeSB is null and KFZL.KFJC like '+'''%'+Edit1.Text+'%''');

     if CB1.Checked then
     begin
        sql.add(' and convert(smalldatetime,convert(varchar,SMDD.PlanDate,111)) between '''+formatdatetime('yyyy/MM/dd',sDate1) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eDate1)+'''');
     end;
     if CB2.Checked then
     begin
        sql.add(' and convert(smalldatetime,convert(varchar,DDZL.ShipDate,111)) between '''+formatdatetime('yyyy/MM/dd',sDate2) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eDate2)+'''');
     end;
     sql.add('group by YWDD.GSBH, YWDD.DDBH , YWDD.YSBH, KFZL.KFJC, DDZL.ARTICLE,  YWDD.Qty, isnull(DDZL.ShipDate, 0), YWDD.ETD, YWCP.LastInDate, isnull(YWCP.inQty, 0)  ');
     sql.add('order by YWDD.GSBH, KFZL.KFJC, YWDD.ETD');
    //ShowMessage(sql.GetText);
   //  write(F, sql.gettext);
     active:=true;


   end;  // with query2 end

end;

procedure TReport608.DBGridEh1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin

  if ( StrToInt ( FormatFloat('0', query2.FieldByName('CSD').value - now() )) < 3 ) and (( query2.FieldByName('C_proQty').value < query2.FieldByName('Qty').value ) or (query2.FieldByName('S_proQty').value < query2.FieldByName('Qty').value) or (query2.FieldByName('A_proQty').value < query2.FieldByName('Qty').value) or (query2.FieldByName('inQty').value < query2.FieldByName('Qty').value))  then
  begin
    dbgrideh1.canvas.font.Color:=clred;
  end;
  if ( query2.FieldByName('A_proQty').value > query2.FieldByName('S_proQty').value) or ( query2.FieldByName('A_proQty').value > query2.FieldByName('C_proQty').value) or ( query2.FieldByName('S_proQty').value > query2.FieldByName('C_proQty').value) then
  begin
    dbgrideh1.canvas.font.Color:=clred;
  end;

end;



procedure TReport608.Excel1Click(Sender: TObject);
var
      eclApp,WorkBook:olevariant;
 //     xlsFileName:string;
      i,j:integer;
begin

if query2.Active then
  begin
    if query2.recordcount=0 then
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
  WorkBook:=eclApp.workbooks.Add;
  eclApp.Cells(1,1):='NO';
  for   i:=1   to   query2.fieldcount   do
    begin
      eclApp.Cells(1,i+1):=query2.fields[i-1].FieldName;
    end;
  query2.First;
  j:=2;
  while   not  query2.Eof   do
    begin
      eclApp.Cells(j,1):=j-1;
      for   i:=1   to   query2.fieldcount   do
        begin
          eclApp.Cells(j,i+1):=query2.Fields[i-1].Value;
          eclApp.Cells.Cells.item[j,i+1].font.size:='8';
        end;
      query2.Next;
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


procedure TReport608.DBGridEh1Columns9EditButtonDown(Sender: TObject;
  TopButton: Boolean; var AutoRepeat, Handled: Boolean);
//var F:TextFile;
begin
  if Report608GX<>nil then
  begin
    Report608GX.show;
    Report608GX.windowstate:=wsNormal;
  end
  else
    begin
      Report608GX:=TReport608GX.create(self);
      Report608GX.show;
  end;
//AssignFile(F,'D:/aaa.txt');
//Rewrite(F);

  // 列出裁斷的明細
  with Report608GX.Query1 do
  begin
     active:=false;
     sql.clear;
     sql.add('select * from (select  SCBB.SCDate , BDepartment.depName, SCBBs.GXLB, SUM(SCBBs.Qty) as Qty   from  SCBBs  ');
     sql.add('                       left join SCBB on SCBB.ProNo = SCBBs.ProNo                              ');
     sql.add('                       left join BDepartment on BDepartment.ID = SCBB.DepNo                    ');
     sql.add('               where SCBBs.SCBH = ''' + query2.FieldByName('YSBH').value + ''' and  SCBBs.GXLB =''C'' and convert(varchar, SCBB.SCDate,111) <> convert(varchar, getDate(),111)');
     sql.add('               group by SCBB.SCDate , BDepartment.depName, SCBBs.GXLB                          ');
     sql.add('               UNION ALL                                                                       ');
     sql.add('               select  convert(varchar, SMZL.ScanDate ,111) as SCDate, BDepartment.DepName, SMDDSS.GXLB, sum(SMDDSS.Qty* SMZL.CTS) as Qty                            ');
     sql.add('                       from  (select  GXLB, Qty, okCTS, codebar from SMDDSS where DDBH like ''' + query2.FieldByName('YSBH').value + '%'' and GXLB = ''C'')  SMDDSS      ');
     sql.add('                       left join SMZL on SMDDSS.codebar = SMZL.codebar                                                                                                   ');
     sql.add('                       left join BDepartment on BDepartment.ID = SMZL.DepNo                                                                                              ');
     sql.add('               where convert(varchar, SMZL.ScanDate ,111) = convert(varchar, getDate(),111)                                                                              ');
     sql.add('               group by convert(varchar, SMZL.ScanDate ,111), BDepartment.depName, SMDDSS.GXLB                                                                           ');
     sql.add('               ) t1                    ');
     sql.add('order by SCDate , depName              ');

 //    Write(F, sql.GetText);
 //    ShowMessage(sql.GetText);
     active:=true;
  end;
end;

procedure TReport608.DBGridEh1Columns11EditButtonDown(Sender: TObject;
  TopButton: Boolean; var AutoRepeat, Handled: Boolean);
begin
  if Report608GX<>nil then
  begin
    Report608GX.show;
    Report608GX.windowstate:=wsNormal;
  end
  else
    begin
      Report608GX:=TReport608GX.create(self);
      Report608GX.show;
  end;
  // 列出針車的明細
  with Report608GX.Query1 do
  begin
     active:=false;
     sql.clear;
     sql.add('select * from (select  SCBB.SCDate , BDepartment.depName, SCBBs.GXLB, SUM(SCBBs.Qty) as Qty   from  SCBBs  ');
     sql.add('                       left join SCBB on SCBB.ProNo = SCBBs.ProNo                              ');
     sql.add('                       left join BDepartment on BDepartment.ID = SCBB.DepNo                    ');
     sql.add('               where SCBBs.SCBH = ''' + query2.FieldByName('YSBH').value + ''' and  SCBBs.GXLB =''S'' and convert(varchar, SCBB.SCDate,111) <> convert(varchar, getDate(),111)');
     sql.add('               group by SCBB.SCDate , BDepartment.depName, SCBBs.GXLB                          ');
     sql.add('               UNION ALL                                                                       ');
     sql.add('               select  convert(varchar, SMZL.ScanDate ,111) as SCDate, BDepartment.DepName, SMDDSS.GXLB, sum(SMDDSS.Qty* SMZL.CTS) as Qty                            ');
     sql.add('                       from  (select  GXLB, Qty, okCTS, codebar from SMDDSS where DDBH like ''' + query2.FieldByName('YSBH').value + '%'' and GXLB = ''S'')  SMDDSS      ');
     sql.add('                       left join SMZL on SMDDSS.codebar = SMZL.codebar                                                                                                   ');
     sql.add('                       left join BDepartment on BDepartment.ID = SMZL.DepNo                                                                                              ');
     sql.add('               where convert(varchar, SMZL.ScanDate ,111) = convert(varchar, getDate(),111)                                                                              ');
     sql.add('               group by convert(varchar, SMZL.ScanDate ,111), BDepartment.depName, SMDDSS.GXLB                                                                           ');
     sql.add('               ) t1                    ');
     sql.add('order by SCDate , depName              ');
       //ShowMessage(sql.GetText);
     active:=true;
  end;
end;

procedure TReport608.DBGridEh1Columns13EditButtonDown(Sender: TObject;
  TopButton: Boolean; var AutoRepeat, Handled: Boolean);
begin
  if Report608GX<>nil then
  begin
    Report608GX.show;
    Report608GX.windowstate:=wsNormal;
  end
  else
    begin
      Report608GX:=TReport608GX.create(self);
      Report608GX.show;
  end;
  // 列出成型的明細
  with Report608GX.Query1 do
  begin
     active:=false;
     sql.clear;
     sql.add('select * from (select  SCBB.SCDate , BDepartment.depName, SCBBs.GXLB, SUM(SCBBs.Qty) as Qty   from  SCBBs  ');
     sql.add('                       left join SCBB on SCBB.ProNo = SCBBs.ProNo                              ');
     sql.add('                       left join BDepartment on BDepartment.ID = SCBB.DepNo                    ');
     sql.add('               where SCBBs.SCBH = ''' + query2.FieldByName('YSBH').value + ''' and  SCBBs.GXLB =''A'' and convert(varchar, SCBB.SCDate,111) <> convert(varchar, getDate(),111)');
     sql.add('               group by SCBB.SCDate , BDepartment.depName, SCBBs.GXLB                          ');
     sql.add('               UNION ALL                                                                       ');
     sql.add('               select  convert(varchar, SMZL.ScanDate ,111) as SCDate, BDepartment.DepName, SMDDSS.GXLB, sum(SMDDSS.Qty* SMZL.CTS) as Qty                            ');
     sql.add('                       from  (select  GXLB, Qty, okCTS, codebar from SMDDSS where DDBH like ''' + query2.FieldByName('YSBH').value + '%'' and GXLB = ''A'')  SMDDSS      ');
     sql.add('                       left join SMZL on SMDDSS.codebar = SMZL.codebar                                                                                                   ');
     sql.add('                       left join BDepartment on BDepartment.ID = SMZL.DepNo                                                                                              ');
     sql.add('               where convert(varchar, SMZL.ScanDate ,111) = convert(varchar, getDate(),111)                                                                              ');
     sql.add('               group by convert(varchar, SMZL.ScanDate ,111), BDepartment.depName, SMDDSS.GXLB                                                                           ');
     sql.add('               ) t1                    ');
     sql.add('order by SCDate , depName              ');
        //ShowMessage(sql.GetText);
     active:=true;
  end;
end;

procedure TReport608.DBGridEh1Columns16EditButtonDown(Sender: TObject;
  TopButton: Boolean; var AutoRepeat, Handled: Boolean);
begin
  if Report608inQty <>nil then
  begin
    Report608inQty.show;
    Report608inQty.windowstate:=wsNormal;
  end
  else
    begin
      Report608inQty:=TReport608inQty.create(self);
      Report608inQty.show;
  end;
  // 列出成型的明細
  with Report608inQty.Query1 do
  begin
     active:=false;
     sql.clear;

     sql.add('select  convert(smalldatetime,convert(varchar, LastInDate,111)) as LastInDate, sum(Qty) as Qty from YWCP where  DDBH = ''' + query2.FieldByName('DDBH').value + ''' and ( SB = 1 or SB = 3 ) ');
     sql.add('group by convert(smalldatetime,convert(varchar, LastInDate,111)) ');

    // ShowMessage(sql.GetText);
     active:=true;
  end;
end;

end.



