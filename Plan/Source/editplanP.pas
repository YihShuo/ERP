unit editplanP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GridsEh, DBGridEh, StdCtrls, DBTables, DB, Buttons, ExtCtrls,
  comobj,ehlibBDE, ComCtrls,dateutils, PrnDbgeh, Menus, IniFiles;

type
  Teditplan = class(TForm)
    Panel1: TPanel;
    BB2: TBitBtn;
    BB3: TBitBtn;
    BB4: TBitBtn;
    BB5: TBitBtn;
    BB6: TBitBtn;
    BB7: TBitBtn;
    BB1: TBitBtn;
    BBT1: TBitBtn;
    BBT2: TBitBtn;
    BBT3: TBitBtn;
    BBT4: TBitBtn;
    bbt6: TBitBtn;
    Panel3: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Qtemp: TQuery;
    SMDD: TQuery;
    DS1: TDataSource;
    UpSMDD: TUpdateSQL;
    CBX1: TComboBox;
    Label7: TLabel;
    CBX2: TComboBox;
    Label4: TLabel;
    SMDDDDBH: TStringField;
    SMDDGXLB: TStringField;
    SMDDYSBH: TStringField;
    SMDDGSBH: TStringField;
    SMDDArticle: TStringField;
    SMDDXieMing: TStringField;
    SMDDQty: TIntegerField;
    SMDDSCCX: TStringField;
    SMDDSB: TStringField;
    SMDDSCYEAR: TStringField;
    SMDDSCMONTH: TStringField;
    SMDDDepNO: TStringField;
    SMDDPlanDate: TDateTimeField;
    SMDDUSERDate: TDateTimeField;
    SMDDUSERID: TStringField;
    SMDDYN: TStringField;
    SMDDMEMO: TStringField;
    Label3: TLabel;
    CBX3: TComboBox;
    SMDDDepName: TStringField;
    DBGridEh1: TDBGridEh;
    DBGridEh2: TDBGridEh;
    DDdet: TQuery;
    DDdetDDBH: TStringField;
    DDdetXXCC: TStringField;
    DDdetQty: TIntegerField;
    DS2: TDataSource;
    Label2: TLabel;
    Edit2: TEdit;
    bbt5: TBitBtn;
    SMDDKFJC: TStringField;
    Panel2: TPanel;
    Label5: TLabel;
    Edit3: TEdit;
    Label6: TLabel;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    Label8: TLabel;
    Button2: TButton;
    DBGridEh3: TDBGridEh;
    Button3: TButton;
    SMDDS: TQuery;
    Button4: TButton;
    DS3: TDataSource;
    Edit4: TEdit;
    PrintDBGridEh1: TPrintDBGridEh;
    SMDDDAOMH: TStringField;
    SMDDCSD: TDateTimeField;
    PopupMenu1: TPopupMenu;
    N2: TMenuItem;
    DBGridEh4: TDBGridEh;
    SMDDT: TQuery;
    DS4: TDataSource;
    UPSMDDT: TUpdateSQL;
    SMDDTGXLB: TStringField;
    SMDDTPlanDate: TDateTimeField;
    SMDDTMEMO: TStringField;
    PopupMenu2: TPopupMenu;
    B1: TMenuItem;
    B2: TMenuItem;
    B3: TMenuItem;
    B4: TMenuItem;
    Exit1: TMenuItem;
    SMDDTDDBH: TStringField;
    SMDIFF: TQuery;
    Label9: TLabel;
    CBX4: TComboBox;
    SMDDTDepNO: TStringField;
    SMDDPlanEdate: TDateTimeField;
    SMDDPRdate: TDateTimeField;
    SMDDOKdate: TDateTimeField;
    Button5: TButton;
    Q1: TQuery;
    q2: TQuery;
    SMDDetd: TDateTimeField;
    SMDDfpd: TDateTimeField;
    SMDDfped: TDateTimeField;
    SMDDRYTYPE: TStringField;
    SMDDCTS_Lock: TStringField;
    SMDDRPlanDate: TDateTimeField;
    SMDDRPlanEdate: TDateTimeField;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure BB7Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure BBT1Click(Sender: TObject);
    procedure BBT2Click(Sender: TObject);
    procedure BBT3Click(Sender: TObject);
    procedure BBT4Click(Sender: TObject);
    procedure bbt6Click(Sender: TObject);
    procedure DBGridEh1EditButtonClick(Sender: TObject);
    procedure bbt5Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Edit3DblClick(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure PrintDBGridEh1BeforePrint(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure B4Click(Sender: TObject);
    procedure Exit1Click(Sender: TObject);
    procedure B1Click(Sender: TObject);
    procedure B3Click(Sender: TObject);
    procedure SMDDTNewRecord(DataSet: TDataSet);
    procedure SMDDTAfterOpen(DataSet: TDataSet);
    procedure SMDDNewRecord(DataSet: TDataSet);
    procedure B2Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure SMDDBeforeEdit(DataSet: TDataSet);
 
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  editplan: Teditplan;
  NDate:TDate;

implementation

uses main1, OrderPlan_Dep1, OrderPlan_Dep21, OrderPlan_Print1, Graphicalp,
  OrderPlan1, FunUnit;

{$R *.dfm}

procedure Teditplan.FormDestroy(Sender: TObject);
begin
editPlan:=nil
end;

procedure Teditplan.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if BB5.enabled  then
  begin
    messagedlg('You have to save data Record of report first.',mtwarning,[mbyes],0);
    action:=canone;
  end
  else
    begin
      action:=cafree;
    end;
end;

procedure Teditplan.Button1Click(Sender: TObject);
begin

  with SMDD do
  begin
    active:=false;
    sql.Clear;
    sql.add('select SMDD.*,SCGXDY.MEMO,Bdepartment.DepName,XXZL.DAOMH,DDZL.ShipDate as CSD,DDZL.RYType,RTSSMDD.YN as CTS_Lock  ');
    sql.add(',KFZL.KFJC,ywdd.etd,f.fpd,f.fped ');
    sql.add('from SMDD');
    sql.add('left join SCGXDY on SCGXDY.GX=SMDD.GXLB and len(SCGXDY.GXLB)=1  ');
    sql.add('left join Bdepartment on Bdepartment.ID=SMDD.DepNo ');
    sql.add('left join DDZL on DDZl.DDBH=SMDD.YSBH ');
    sql.add('left join XXZL on XXZL.XieXing=.DDZL.XieXing and XXZL.SheHao=DDZL.SheHao');
    sql.add('left join KFZL on KFZL.KFDH=DDZL.KHBH ');
    sql.add('left join (select ysbh,etd from  ywdd  group by ysbh,etd) as ywdd on ywdd.ysbh=smdd.ysbh');
    sql.Add('left join (select ddbh,sccx,max(plandate) as fpd,min(planedate) as fped from smdd group by ddbh,sccx) ');
    sql.add(' as f on f.ddbh=smdd.ddbh and f.sccx=smdd.gxlb');
    //CTS_Lock
    sql.add('left join ( ');
    sql.add('select RTSSMDD.DDBH,RTSSMDD.YN from RTSSMDD,DDZL  ');
    sql.add('where RTSSMDD.DDBH=DDZL.DDBH and RTSSMDD.YN=''Y'' and Year(DDZL.ShipDate)='+CBX1.Text+' and  Month(DDZL.ShipDate)='+CBX2.Text+' and RTSSMDD.DDBH like '''+edit1.Text+'%'' group by RTSSMDD.DDBH,RTSSMDD.YN ');
    sql.add(') as RTSSMDD on RTSSMDD.DDBH=SMDD.YSBH  ');
    //
    sql.add('where SMDD.DDBH like '+''''+edit1.Text+'%'+'''');
    sql.add('      and isnull(KFZL.KFJC,'+''''+''+''''+') like '+''''+'%'+edit2.Text+'%'+'''');
    sql.add('      and SMDD.SCYEAR='+''''+CBX1.Text+'''');
    sql.add('      and SMDD.SCMONTH='+''''+CBX2.Text+'''');
    sql.add('      and ddzl.khbh='+''''+'036'+'''');

    if edit2.Text = '' then
      sql.add('      and SMDD.GSBH='+''''+main.edit2.text+'''');

    sql.add('      and SMDD.SB<>'+''''+'3'+'''');
    if CBX3.itemindex<>0 then
      begin
        sql.add('      and SMDD.GXLB='+''''+CBX3.Text+'''');
      end;
    sql.add('order by ywdd.etd,SMDD.DDBH,SMDD.SCCX ');
    //funcObj.WriteErrorLog(sql.Text);
    //memo1.Text:=sql.Text;
    active:=true;
  end;
  DDdet.Active:=true;
  bb4.enabled:=true;
  bb5.enabled:=false;
  bb6.enabled:=false;
  bb7.enabled:=true;
  bbt1.enabled:=true;
  bbt2.enabled:=true;
  bbt3.enabled:=true;
  bbt4.enabled:=true;
  bbt5.enabled:=true;
  bbt6.enabled:=true;
  if CBX3.itemindex<>0 then
  begin
    //N1.Enabled:=true;
    N2.Enabled:=true ;
  end
  else
    begin
      //N1.Enabled:=false;
      N2.Enabled:=false;
    end;
end;

procedure Teditplan.FormCreate(Sender: TObject);
var i:integer;
  myYear, myMonth, myDay : Word;
begin
  with Qtemp do
  begin
    q1.ExecSQL;
    q2.ExecSQL;
    active:=false;
    sql.Clear;
    sql.add('select distinct GX from SCGXDY order by GX');
    active:=true;
    for i:=1 to recordcount do
      begin
        CBX3.Items.Add(fieldbyname('GX').asstring);
        CBX4.Items.Add(fieldbyname('GX').asstring);
        next;
      end;
    CBX3.Itemindex:=0;
    CBX4.Itemindex:=0;
    active:=false;
    sql.Clear;
    sql.add('select year(getdate())-5 as Oldyear,year(getdate())+9 as Newyear,getdate() as NDate');
    active:=true;
    CBX1.Clear;
    for i:=QTemp.fieldbyname('Oldyear').value to  QTemp.fieldbyname('Newyear').value  do
    begin
      CBX1.Items.Add(inttostr(i));
      next;
    end;
    NDate:=fieldbyname('NDate').Value;
    active:=false;
    DTP1.Date:=startoftheweek(incweek(NDate,1));
    DTP2.Date:=endoftheweek(incweek(NDate,1));
    DecodeDate(Date(), myYear, myMonth, myDay);
    for i:=0 to CBX1.Items.Count-1 do
    begin
      if strtoint(CBX1.Items[i])=myYear then
      begin
        CBX1.ItemIndex:=i;
        break;
      end;
    end;
    for i:=0 to CBX2.Items.Count-1 do
    begin
      if strtoint(CBX2.Items[i])=myMonth then
      begin
        CBX2.ItemIndex:=i;
        break;
      end;
    end;
  end;


end;

procedure Teditplan.BB4Click(Sender: TObject);
begin
  with SMDD do
  begin
    cachedupdates:=true;
    requestlive:=true;
  end;
  bb5.Enabled:=true;
  bb6.Enabled:=true;
  DBGrideh1.Columns[7].ButtonStyle:=cbsellipsis;
  DBGrideh1.Columns[9].ButtonStyle:=cbsellipsis;
  DBGrideh1.Columns[10].ButtonStyle:=cbsellipsis;
end;

procedure Teditplan.BB5Click(Sender: TObject);
begin
DDDet.active:=false;
with SMDD do
  begin
    first;
    while not eof do
      begin
        if updatestatus=usmodified then
          begin
            edit;
            if (not fieldbyname('DepName').IsNull) and (not fieldbyname('PlanDate').IsNull) and (FieldByName('gsbh').Value=main.edit2.text) then
              begin
                with  Qtemp do
                  begin
                    active:=false;
                    sql.Clear;
                    sql.add('insert into SMDDREC ');
                    sql.add('(DDBH,GXLB,PLANDate,DepNO,USERID,USERDate)');
                    sql.add('values ('+''''+SMDD.fieldbyname('DDBH').Value+''''+',');
                    sql.add('           '''+SMDD.fieldbyname('GXLB').Value+''''+',');
                    sql.add('           '''+formatdatetime('yyyy/MM/dd',SMDD.fieldbyname('PLANDate').Value)+''''+',');
                    sql.add('           '''+SMDD.fieldbyname('DepNO').Value+''''+',');
                    sql.add('           '''+main.Edit1.text+''''+',getdate() )');
                    execsql;
                    active:=false;
                  end;
                fieldbyname('USERID').Value:=main.edit1.text;
                fieldbyname('USERDATE').value:=Ndate;
                if (fieldbyname('planedate').Value >= fieldbyname('plandate').Value) then
                    UPSMDD.Apply(ukmodify)
                else
                begin
                  showmessage('Planedate befor Plandate');
                  abort;
                end;
              end;
          end;
        next;
      end;
    requestlive:=false;
    cachedupdates:=false;
    active:=false;
    active:=true;
  end;
bb5.enabled:=false;
bb6.enabled:=false;
DDDet.active:=true;
DBGrideh1.Columns[7].ButtonStyle:=cbsnone;
end;

procedure Teditplan.BB7Click(Sender: TObject);
begin
close;
end;

procedure Teditplan.BB6Click(Sender: TObject);
begin

with SMDD do
  begin
    CachedUpdates:=false;
    RequestLive:=false;
    Active:=false;
    active:=true;
  end;
bb5.enabled:=false;
bb6.Enabled:=false;
DBGrideh1.Columns[7].ButtonStyle:=cbsnone;
end;

procedure Teditplan.BBT1Click(Sender: TObject);
begin
SMDD.First;
end;

procedure Teditplan.BBT2Click(Sender: TObject);
begin
SMDD.Prior;
end;

procedure Teditplan.BBT3Click(Sender: TObject);
begin
SMDD.Next;
end;

procedure Teditplan.BBT4Click(Sender: TObject);
begin
SMDD.Last;
end;

procedure Teditplan.bbt6Click(Sender: TObject);
var
      eclApp,WorkBook:olevariant;
 //     xlsFileName:string;
      i,j:integer;
begin

if SMDD.Active then
  begin
    if SMDD.recordcount=0 then
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
DDDet.active:=false;
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
  for   i:=1   to   SMDD.fieldcount   do
    begin
      eclApp.Cells(1,i+1):=SMDD.fields[i-1].FieldName;
    end;
  SMDD.First;
  j:=2;
  while   not  SMDD.Eof   do
    begin
      eclApp.Cells(j,1):=j-1;
      for   i:=1   to   SMDD.fieldcount   do
        begin
          eclApp.Cells(j,i+1):=SMDD.Fields[i-1].Value;
          eclApp.Cells.Cells.item[j,i+1].font.size:='8';
        end;
      SMDD.Next;
      inc(j);
    end;
  eclapp.columns.autofit;
  showmessage('Succeed.');
  eclApp.Visible:=True;
except
  on   F:Exception   do
    showmessage(F.Message);
end;

DDDet.active:=true;
end;

function IsDate(str: string): Boolean;
var
  dt: TDateTime;
begin
  Result := True;
  try
    dt := StrToDate(str);
  except
    Result := False;
  end;
end;

procedure Teditplan.DBGridEh1EditButtonClick(Sender: TObject);
var Style, YSBH: String;
    i:integer;
begin
   if  DBGridEh1.SelectedField.FieldName='DepNO' then
   begin
      OrderPlan_Dep:=TOrderPlan_Dep.Create(self);
      OrderPlan_Dep.GXLBEdit.Text:=SMDD.FieldByName('GXLB').AsString;
      OrderPlan_Dep.FORMID:='SN391';
      OrderPlan_Dep.Show;
      OrderPlan_Dep.Button1.Click;
   end;

  //20200912
  if ((DBGridEh1.SelectedField.FieldName='PlanDate') or (DBGridEh1.SelectedField.FieldName='PlanEdate')) then
  begin
    if DBGridEh1.SelectedField.FieldName='PlanDate' then Style:=inputbox('Please Input PlanDate','PlanDate:','');
    if DBGridEh1.SelectedField.FieldName='PlanEdate' then Style:=inputbox('Please Input PlanEdate','PlanEdate:','');
    if Style<>'' then
    begin
      if not IsDate(Style) then
      begin
        showmessage ('Pls input datetime');
        abort;
      end;
      with editplan.SMDD  do
      begin
        //while not Eof do
        for i:=0 to editplan.SMDD.RecordCount-1 do       //20171125 ´À´«while¦¨for
        begin
          Edit;
          if YSBH='' then YSBH:=FieldByName('YSBH').AsString;
          if YSBH=FieldByName('YSBH').AsString then
          begin
            if DBGridEh1.SelectedField.FieldName='PlanDate' then FieldByName('PlanDate').Value:=Style;
            if DBGridEh1.SelectedField.FieldName='PlanEdate' then FieldByName('PlanEdate').Value:=Style;
          end;
          Next;
      end;
    end;
  end;
end;
end;

procedure Teditplan.bbt5Click(Sender: TObject);
begin
if BB5.enabled then
  begin
    showmessage('Pls save data first.');
    abort;
  end;
if messagedlg('You want to print Cutting Material List?',mtconfirmation,[mbYes,mbNo],0)=mrYes then
  begin
    Panel2.Visible:=false;
    DBGrideh3.visible:=false;
    Panel3.Visible:=true;
    DBGrideh1.visible:=true;
    if SMDD.FieldByName('GXLB').value='C' then
      begin
        if SMDD.FieldByName('DepName').isnull then
          begin
            showmessage('Pls key in plandate first.');
            abort;
          end
          else
            begin
              OrderPlan_Print:=TOrderPlan_Print.create(self);
              OrderPlan_Print.quickrep1.prepare;
              OrderPlan_Print.Qpage1.caption:=inttostr(OrderPlan_Print.quickrep1.QRPrinter.pagecount-1);
              OrderPlan_Print.quickrep1.preview;
              OrderPlan_Print.free;
            end;
      end
      else
        begin
          showmessage('Pls select cutting order cycle.');
          abort;
        end;
  end
  else
    begin
      Panel3.Visible:=false;
      DBGrideh1.visible:=false;
      Panel2.Visible:=true;
      DBGrideh3.visible:=true;
      DBGrideh3.align:=alclient;
    end;
end;

procedure Teditplan.Button2Click(Sender: TObject);
begin
{Panel2.Visible:=false;
DBGrideh3.visible:=false;
Panel3.Visible:=true;
DBGrideh1.visible:=true;  }
printDBGrideh1.Preview;

end;

procedure Teditplan.Edit3DblClick(Sender: TObject);
begin
OrderPlan_Dep2:=TOrderPlan_Dep2.Create(self);
OrderPlan_Dep2.Show;
end;

procedure Teditplan.Button4Click(Sender: TObject);
var j:integer;
begin
if edit4.text='' then
  begin
    showmessage('Pls select Department first.');
    abort;
  end;
with Qtemp do
  begin
    active:=false;
    sql.Clear;
    sql.add('select distinct ZLZLS.ZLCC,SMDDS.XXCC from SMDDS  ');
    sql.add('left join SMDD on SMDD.DDBH=SMDDS.DDBH ');
    sql.add('left join ZLZLS on ZLZLS.ZLBH=SMDD.YSBH and ZLZLS.XXCC=SMDDS.XXCC');
    sql.Add(' left join BDepartment on BDepartment.id = smdd.depno');
    sql.add('where BDepartment.id='+''''+edit4.Text+'''');
    sql.add('      and (convert(smalldatetime,convert(varchar,SMDD.PlanDate,111)) between ');
    sql.add('       '''+formatdatetime('yyyy/MM/dd',DTP1.date)+''''+' and  '+ ''''+formatdatetime('yyyy/MM/dd',DTP2.date)+''''+')');
    sql.add('      and SMDD.GXLB='+''''+CBX4.text+'''');
    sql.add('order by  SMDDS.XXCC DESC');
    active:=true;
  end;

with SMDDS do
  begin
    Qtemp.first;
    active:=false;
    sql.Clear;
    sql.add('select SMDD.DDBH,SMDD.Article,SMDD.XieMing,XXZL.DAOMH,SMDD.PlanDate,SMDD.Qty as Qty');
    while not Qtemp.Eof do
      begin
        sql.add(',Max(case  when SMDDS.XXCC='+''''+Qtemp.fieldbyname('XXCC').value+'''');
        sql.add(' then SMDDS.Qty else null end) as '+''''+Qtemp.fieldbyname('XXCC').value+'|'+Qtemp.fieldbyname('ZLCC').value+'''');
        Qtemp.Next;
      end;
    sql.add('from SMDDS ');
    sql.add('left join SMDD on SMDD.DDBH=SMDDS.DDBH ');
    sql.add('left join DDZL on SMDD.YSBH=DDZL.ZLBH ');
    sql.add('left join XXZL on XXZL.XieXing=DDZL.XieXing and DDZL.Shehao=XXZL.SheHao ');
    sql.add('where SMDD.DepNO='+''''+edit4.Text+'''');
    sql.add('      and (convert(smalldatetime,convert(varchar,SMDD.PlanDate,111)) between ');
    sql.add('       '''+formatdatetime('yyyy/MM/dd',DTP1.date)+''''+' and  '+ ''''+formatdatetime('yyyy/MM/dd',DTP2.date)+''''+')');  
    sql.add('      and SMDD.GXLB='+''''+CBX4.text+'''');
    sql.add('group by SMDD.DDBH,SMDD.Article,SMDD.XieMing,XXZL.DAOMH,SMDD.PlanDate,SMDD.Qty ');
    sql.add('order by SMDD.PlanDate, SMDD.DDBH ');
    active:=true;
  end;
DBGrideh3.columns[0].width:=95;
DBGrideh3.columns[0].font.size:=10;
DBGrideh3.columns[1].width:=100;
DBGrideh3.columns[1].font.size:=8;
DBGrideh3.columns[2].width:=100;
DBGrideh3.columns[2].font.size:=8;
DBGrideh3.columns[3].width:=100;
DBGrideh3.columns[3].font.size:=8;
DBGrideh3.columns[4].width:=40;
DBGrideh3.columns[4].font.size:=8;
TDatefield(SMDDS.Fields[4]).displayformat:='MM/dd' ;
DBGrideh3.columns[5].width:=45;
DBGrideh3.columns[5].title.caption:='XXCC|DDCC';
DBGrideh3.columns[5].footer.valuetype:=fvtsum;
Tfloatfield(SMDDS.Fields[5]).displayformat:='##,#0' ;
DBGrideh3.columns[0].footer.valuetype:=fvtcount;
for j:=6 to SMDDS.fieldcount-1 do
  begin
    DBGrideh3.columns[j].width:=35;
    DBGrideh3.columns[j].footer.valuetype:=fvtsum;
    Tfloatfield(SMDDS.Fields[j]).displayformat:='##,#0' ;
  end;                               

DDDet.datasource:=DS3;
end;

procedure Teditplan.PrintDBGridEh1BeforePrint(Sender: TObject);
begin
PrintDBGridEh1.SetSubstitutes(['%[TDep]',edit3.Text+'          '+formatdatetime('yyyy/MM/dd',DTP1.Date)+'~~~'+formatdatetime('yyyy/MM/dd',DTP2.Date)]);
end;

procedure Teditplan.Button3Click(Sender: TObject);
begin
Panel2.Visible:=false;
DBGrideh3.visible:=false;
Panel3.Visible:=true;
DBGrideh1.visible:=true;
//DBGrideh3.align:=alclient;
end;

procedure Teditplan.N2Click(Sender: TObject);
begin
DBGrideh4.Visible:=true;
DBGrideh4.align:=alRight;
SMDDT.Active:=true;
DBGrideh2.Visible:=false;
end;

procedure Teditplan.B4Click(Sender: TObject);
begin

with SMDDT do
  begin
    requestlive:=false;
    cachedupdates:=false;
  end;
B1.Enabled:=true;
B2.Enabled:=false;
B3.Enabled:=false;
B4.Enabled:=false;
//DBGrideh4.Visible:=false;
end;

procedure Teditplan.Exit1Click(Sender: TObject);
begin
SMDDT.Active:=false;
B1.Enabled:=true;
B2.Enabled:=false;
B3.Enabled:=false;
B4.Enabled:=false;
DBGrideh4.Visible:=false;
DBGrideh2.Visible:=true;
end;

procedure Teditplan.B1Click(Sender: TObject);
begin

with SMDDT do
  begin
    requestlive:=true;
    cachedupdates:=true;
  end;
B2.Enabled:=true;                                    
B3.Enabled:=true;
B4.Enabled:=true;
end;

procedure Teditplan.B3Click(Sender: TObject);
begin

with SMDDT do
  begin
    first;
    while not eof do
      begin
        if updatestatus=usmodified then
          begin  
            with  Qtemp do
              begin
                active:=false;
                sql.Clear;
                sql.add('insert into SMDDREC ');
                sql.add('(DDBH,GXLB,PLANDate,DepNO,USERID,USERDate)');
                sql.add('values ('+''''+SMDDT.fieldbyname('DDBH').Value+''''+',');
                sql.add('           '''+SMDDT.fieldbyname('GXLB').Value+''''+',');
                sql.add('           '''+formatdatetime('yyyy/MM/dd',SMDDT.fieldbyname('PLANDate').Value)+''''+',');
                sql.add('           '''+SMDDT.fieldbyname('DepNO').Value+''''+',');
                sql.add('           '''+main.Edit1.text+''''+',getdate() )');
                execsql;
                active:=false;
              end;
            UpSMDDT.Apply(ukmodify);
          end;
        next;
      end;
    active:=false;
    requestlive:=true;
    cachedupdates:=true;
    active:=true;
  end;
end;

procedure Teditplan.SMDDTNewRecord(DataSet: TDataSet);
begin
abort;
end;

procedure Teditplan.SMDDTAfterOpen(DataSet: TDataSet);
begin

with SMDDT do
  begin
    requestlive:=false;
    cachedupdates:=false;
  end;
B1.Enabled:=true;
B2.Enabled:=false;
B3.Enabled:=false;
B4.Enabled:=false;
end;

procedure Teditplan.SMDDNewRecord(DataSet: TDataSet);
begin
abort;
end;

procedure Teditplan.B2Click(Sender: TObject);
begin
if not SMDD.FieldByName('PlanDate').isnull then
  begin
    SMDIFF.active:=true;
    with SMDDT do
      begin
        First;
        while not Eof do   
          begin
            if SMDIFF.locate('GSBH;GXLB1;GXLB2',vararrayof([main.Edit2.Text,SMDD.fieldbyname('GXLB').value,SMDDT.FieldByName('GXLB').value]),[]) then
              begin
                if FieldByName('PlanDate').IsNull then
                  begin
                    edit;
                    fieldbyname('PlanDate').Value:=SMDD.fieldbyname('PlanDate').Value-SMDIFF.fieldbyname('DIFF').Value;  
                    post;
                  end
                  else
                    begin
                      if formatdatetime('yyyy/MM/dd',FieldByName('PlanDate').value)<>formatdatetime('yyyy/MM/dd',SMDD.fieldbyname('PlanDate').Value-SMDIFF.fieldbyname('DIFF').Value) then
                        begin
                          edit;
                          fieldbyname('PlanDate').Value:=SMDD.fieldbyname('PlanDate').Value-SMDIFF.fieldbyname('DIFF').Value;
                          post;
                        end;
                    end;
              end;
            next;
          end;
      end;
  end
  else
    begin
      showmessage('Pls key the plan Date for '+SMDD.fieldbyname('MEMO').Value);
      abort;
    end;
end;

procedure Teditplan.Button5Click(Sender: TObject);
begin
  if Graphical<>nil then
  begin
    Graphical.show;
    Graphical.windowstate:=wsmaximized;
  end
  else
    begin
      Graphical:=TGraphical.create(self);
      Graphical.show;
    end;

end;

procedure Teditplan.DBGridEh1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
if SMDD.FieldByName('planedate').isnull then
  begin
    dbgrideh1.canvas.font.color:=clred;
  end;
if SMDD.FieldByName('planedate').value < SMDD.FieldByName('plandate').Value then
  begin
    dbgrideh1.canvas.font.color:=clred;
  end;
if SMDD.FieldByName('planedate').value < SMDD.FieldByName('fped').Value then
  begin
    dbgrideh1.canvas.font.color:=clred;
  end;
if SMDD.FieldByName('plandate').value < SMDD.FieldByName('fpd').Value then
  begin
    dbgrideh1.canvas.font.color:=clred;
  end;

if SMDD.FieldByName('plandate').isnull then
  begin
    dbgrideh1.canvas.font.color:=clblue;
  end;
if smdd.FieldByName('gsbh').Value<>main.edit2.text then
    begin
     dbgrideh1.Canvas.font.Color:=clfuchsia;
//      canvas.Font.Color:=clyellow;
    end;
end;





procedure Teditplan.SMDDBeforeEdit(DataSet: TDataSet);
begin

  if not SMDD.FieldByName('plandate').isnull then
  begin
    if ( ((SMDD.FieldByName('etd').Value-52) < now) and (SMDD.FieldByName('RYType').AsString<>'SLT') ) then
    begin
      with SMDD do
      begin
        showmessage('Plan Data is lock will be reload');
        abort;
      end;
    end;
    {
    if ( (SMDD.FieldByName('RYType').AsString='SLT') and ( ((SMDD.FieldByName('etd').Value-2) < now) or (SMDD.FieldByName('CTS_Lock').AsString='Y'))  )  then
    begin
      with SMDD do
      begin
        showmessage('Plan Data is lock will be reload');
        abort;
      end;
    end;
    //
    }
  end;

end;

end.
