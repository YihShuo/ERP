unit ProductionPlanP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBTables, DB, Grids, DBGrids, ExtCtrls, ComCtrls, StdCtrls, comobj,
  Buttons, GridsEh, DBGridEh,math, ExcelXP, OleServer,ShellApi;

type
  TProductionPlan = class(TForm)
    Panel1: TPanel;
    workplan: TQuery;
    WP: TDataSource;
    upwp: TUpdateSQL;
    pc1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    WorkPlanS: TQuery;
    upwps: TUpdateSQL;
    WorkPlanSS: TQuery;
    upwpss: TUpdateSQL;
    WPS: TDataSource;
    WPSS: TDataSource;
    DBGrid2: TDBGrid;
    DBGrid3: TDBGrid;
    workplanWorkID: TStringField;
    workplanCQDH: TStringField;
    workplanMjbh: TStringField;
    workplanColorNo: TStringField;
    workplanWorkQty: TIntegerField;
    workplanWorkStartDate: TDateTimeField;
    workplanWorkEndDate: TDateTimeField;
    workplanUserID: TStringField;
    workplanCreatDate: TDateTimeField;
    workplanUpdateDate: TDateTimeField;
    workplanLastUser: TStringField;
    Query1: TQuery;
    workplanmjname: TStringField;
    Query2: TQuery;
    workplancolorname: TStringField;
    WorkPlanSWorkID: TStringField;
    WorkPlanSSno: TIntegerField;
    WorkPlanSMjbh: TStringField;
    WorkPlanSColorNo: TStringField;
    WorkPlanSSize: TStringField;
    WorkPlanSQty: TIntegerField;
    WorkPlanSUserID: TStringField;
    WorkPlanSCreatDate: TDateTimeField;
    WorkPlanSUpdateDate: TDateTimeField;
    WorkPlanSLastUser: TStringField;
    WorkPlanSSWorkID: TStringField;
    WorkPlanSSSno: TIntegerField;
    WorkPlanSSMjbh: TStringField;
    WorkPlanSSColorNo: TStringField;
    WorkPlanSSDDBh: TStringField;
    WorkPlanSSUserID: TStringField;
    WorkPlanSSCreatDate: TDateTimeField;
    WorkPlanSSUpdateDate: TDateTimeField;
    WorkPlanSSLastUser: TStringField;
    WorkPlanSOKQTY: TIntegerField;
    WorkPlanSNBarCode: TIntegerField;
    WorkPlanSPbarcode: TIntegerField;
    BB1: TBitBtn;
    BB2: TBitBtn;
    BB3: TBitBtn;
    BB4: TBitBtn;
    BB5: TBitBtn;
    BB6: TBitBtn;
    BB7: TBitBtn;
    BBT1: TBitBtn;
    BBT2: TBitBtn;
    BBT3: TBitBtn;
    BBT4: TBitBtn;
    bbt5: TBitBtn;
    bbt6: TBitBtn;
    Panel2: TPanel;
    Label1: TLabel;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    Label2: TLabel;
    Label3: TLabel;
    MJCB: TComboBox;
    Label4: TLabel;
    CLCB: TComboBox;
    Query2ColorNo: TStringField;
    Query2EnglishName: TStringField;
    Edit1: TEdit;
    Button1: TButton;
    DBGridEh1: TDBGridEh;
    tq: TQuery;
    workplanyn: TStringField;
    Panel3: TPanel;
    Button2: TButton;
    WorkPlanScodebar: TStringField;
    Query1mjdh: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure BB1Click(Sender: TObject);
    procedure CLCBChange(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BB2Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure BB7Click(Sender: TObject);
    procedure BBT1Click(Sender: TObject);
    procedure BBT2Click(Sender: TObject);
    procedure BBT3Click(Sender: TObject);
    procedure BBT4Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure BB3Click(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure pc1Change(Sender: TObject);
    procedure bbt5Click(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ProductionPlan: TProductionPlan;
  NDate:Tdate;
implementation

uses mailP, OrderlistP, barcodepringP;

{$R *.dfm}

procedure TProductionPlan.FormCreate(Sender: TObject);
var i:integer;
begin
query1.Active:=true;
query2.Active:=true;
pc1.ActivePageIndex:=0;
with Query1 do
  begin
    query1.First;
    mjcb.Items.Clear;
    MJCB.Items.Add('ALL');

    for i:=1 to recordcount do
      begin
        MJCB.Items.Add(fieldbyname('mjdh').asstring);
        next;
      end;
  end;

with Query2 do
  begin
    query2.First;
    CLCB.Items.Clear;
    CLCB.Items.Add('ALL');

    for i:=1 to recordcount do
      begin
        CLCB.Items.Add(fieldbyname('EnglishName').asstring);
        next;
      end;
  end;

DTP1.Date:=date;
DTP2.date:=date+7;

end;

procedure TProductionPlan.BB1Click(Sender: TObject);
begin
  panel2.Visible:=true;
end;

procedure TProductionPlan.CLCBChange(Sender: TObject);
begin
  query2.locate('englishname',clcb.Text,[]);
  edit1.Text:=query2.fieldbyname('colorno').Value;
end;

procedure TProductionPlan.Button1Click(Sender: TObject);
begin
with Workplan do
  begin
    active:=false;
    sql.Clear;
    sql.add('select * from workplan');
    sql.add('where convert(smalldatetime,convert(varchar,workStartDate,111)) between ');
    sql.add('      '''+formatdatetime('yyyy/MM/dd',DTP1.date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.date)+'''');
    if MJCB.Text <> 'ALL' then
      begin
        sql.add('       and mjbh='+''''+mjcb.Text+'''');
      end;
    if CLCB.Text<>'ALL' then
      begin
        sql.add('       and colorno='+''''+edit1.Text+'''');
      end;
    sql.add('order by workid desc');
    active:=true;
  end;
WorkPlanS.Active:=true;
WorkPlanSs.Active:=true;
bb2.enabled:=true;
bb3.enabled:=true;
bb4.enabled:=true;
bb5.enabled:=false;
bb6.enabled:=false;
bb7.enabled:=true;
bbt1.enabled:=true;
bbt2.enabled:=true;
bbt3.enabled:=true;
bbt4.enabled:=true;
//bbt5.enabled:=true;
bbt6.enabled:=true;
end;

procedure TProductionPlan.BB2Click(Sender: TObject);
begin
  with workplan do
  begin
    requestlive:=true;
    cachedupdates:=true;
  end;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
  workplan.insert;
end;


procedure TProductionPlan.BB4Click(Sender: TObject);
begin
  with workplan do
  begin
    cachedupdates:=true;
    requestlive:=true;
  end;
  bb5.Enabled:=true;
  bb6.Enabled:=true;
end;


procedure TProductionPlan.BB6Click(Sender: TObject);
begin
  with workplan do
  begin
    CachedUpdates:=false;
    RequestLive:=false;
    Active:=false;
    active:=true;
  end;
  bb5.enabled:=false;
  bb6.Enabled:=false;
end;

procedure TProductionPlan.BB7Click(Sender: TObject);
begin
  close;
end;

procedure TProductionPlan.BBT1Click(Sender: TObject);
begin
  workplan.First;
end;

procedure TProductionPlan.BBT2Click(Sender: TObject);
begin
  workplan.Prior;
end;

procedure TProductionPlan.BBT3Click(Sender: TObject);
begin
  workplan.Next;
end;

procedure TProductionPlan.BBT4Click(Sender: TObject);
begin
  workplan.Last;
end;



procedure TProductionPlan.BB5Click(Sender: TObject);
var y,m,a:string;
i:integer;
begin

with tq do          //取服務器的年月值
  begin
    active:=false;
    sql.Clear;
    sql.Add('select year(getdate()) as FY,month(getdate()) as FM,getdate() as NDate ');
    active:=true;
    NDate:=fieldbyname('NDate').value;
    y:=fieldbyname('FY').asstring;
    m:=fieldbyname('FM').asstring;
    active:=false;
  end;
if length(m)<2 then
  m:='0'+m;

try
    workplan.first;
    for i:=1 to workplan.RecordCount do
      begin
        case workplan.updatestatus of
          usinserted: {新增}
            begin
                    if workplan.fieldbyname('workstartdate').isnull then
                      begin
                        workplan.delete;
                      end
                      else
                        begin
                          with tq do    //計算領料單流水號
                            begin
                              active:=false;
                              sql.Clear;
                              sql.Add('select workid from workplan where workid like '+''''+y+m+'%'+'''');
                              sql.add('order by workid');
                              active:=true;
                              if recordcount >0 then
                                begin
                                  last;
                                  a:=fieldbyname('workid').AsString;
                                  a:=copy(a,7,3);
                                  a:=inttostr(strtoint(a)+1);
                                  while length(a)<3 do
                                    begin
                                      a:='0'+a;
                                    end;
                                end
                                  else
                                    begin
                                      a:='001';
                                    end;
                              a :=y+m+a;
                              active:=false;
                            end;
                          workplan.edit;
                          workplan.fieldbyname('workid').Value:=a;
                          workplan.fieldbyname('cqdh').Value:=main.edit2.text;
                          workplan.fieldbyname('lastuser').Value:=main.edit1.text;
                          workplan.FieldByName('userID').Value:=main.edit1.text;
                          workplan.FieldByName('updatedate').Value:=Ndate;
                          workplan.FieldByName('creatdate').Value:=Ndate;
                          upwp.apply(ukinsert);
                        end;
            end;
          usmodified:   {刪除}
             begin
               if workplan.FieldByName('USERID').value<>main.Edit1.Text then
                 begin
                   showmessage('不是你的，不要亂動。khong phai ban khong duoc tu sua');
                 end
                 else
                 begin
                     if workplan.fieldbyname('YN').value='0'then
                     begin
                        upwp.apply(ukdelete);
                     end
                     else
                     begin
                        if (NDate-workplan.FieldByName('workstartdate').value)<=1  then
                        begin
                            workplan.edit;
                            workplan.FieldByName('lastuser').Value:=main.edit1.text;
                            workplan.FieldByName('updatedate').Value:=Ndate;
                            upwp.apply(ukmodify);
                        end
                        else
                        begin
                            showmessage('can not modify.');
                        end;
                     end;
                 end;
             end;
        end;
       workplan.next;
      end;
workplan.active:=false;
workplan.cachedupdates:=false;
workplan.requestlive:=false;
workplan.active:=true;
bb5.enabled:=false;
bb6.enabled:=false;
except
  Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
end;
end;

procedure TProductionPlan.BB3Click(Sender: TObject);
begin
if workplans.recordcount=0 then
  begin
    with workplan do
      begin
        requestlive:=true;
        cachedupdates:=true;
        edit;
        fieldbyname('YN').Value:='0';
      end;
  end
    else
      begin
        showmessage('Pls delete the WorkPlan Detail first.')
      end;
BB5.Enabled:=true;
BB6.Enabled:=true;
end;

procedure TProductionPlan.DBGridEh1DblClick(Sender: TObject);
begin
  if (workplan.FieldByName('workid').Value<>null) and (workplan.FieldByName('workstartdate').Value-date>=0) then
  begin
    pc1.ActivePageIndex:=2;
    if orderlist<>nil then
    begin
      orderlist.show;
      //orderlist.windowstate:=wsmaximized;
    end
    else
      begin
        orderlist:=Torderlist.create(self);
        orderlist.show;
      end;
    end;
  end;
procedure TProductionPlan.Button2Click(Sender: TObject);
var i,j,k:integer;
begin
try
    workplanss.first;
    for i:=1 to workplanss.RecordCount do
      begin
        case workplanss.updatestatus of
          usinserted: {新增}
            begin
                    if ((workplanss.fieldbyname('ddbh').isnull) or (workplanss.fieldbyname('ddbh').Value='')) then
                      begin
                        workplanss.delete;
                      end
                      else
                        begin
                          upwpss.apply(ukinsert);
                        end;
            end;
          usmodified:   {刪除}
             begin
               if workplanss.FieldByName('USERID').value<>main.Edit1.Text then
                 begin
                   showmessage('不是你的，不要亂動。khong phai ban khong duoc tu sua');
                 end
                 else
                 begin
                     if workplanss.fieldbyname('YN').value='0'then
                     begin
                        upwpss.apply(ukdelete);
                     end
                     else
                     begin
                        if (NDate-workplan.FieldByName('workstartdate').value)<=1  then
                        begin
                            workplanss.edit;
                            workplanss.FieldByName('lastuser').Value:=main.edit1.text;
                            workplanss.FieldByName('updatedate').Value:=Ndate;
                            upwpss.apply(ukmodify);
                        end
                        else
                        begin
                            showmessage('can not modify.');
                        end;
                     end;
                 end;
             end;
        end;
       workplanss.next;
      end;
  workplanss.active:=false;
  workplanss.cachedupdates:=false;
  workplanss.requestlive:=false;
  workplanss.active:=true;
//記算各size數量
  pc1.ActivePageIndex:=1;
  with tq do
  begin
   active:=false;
   sql.Clear;
   sql.add('select cc,a,(a % 12) as last,Round((a/12),0,1) as cts from(');
   sql.Add('select cc,cast(sum(qty) as int) as a from ddzls');
   sql.add('where cqdh='+''''+main.edit2.text+''''+' and ');
   sql.add('	 ddbh in 	(select ddbh from workplanss ') ;
   sql.add('		where workid='+''''+workplan.FieldByName('workid').Value+''''+') ');
   sql.add('group by cc) as k	');
   //memo1.text:=sql.text;
   active:=true
  end;
  with workplans do
  begin
     requestlive:=true;
     cachedupdates:=true;
     tq.First;



     for i := 1 to tq.RecordCount do
     begin
        if tq.FieldByName('last').value=0 then
          j:=1
        else
          j:=2;
        for k :=1 to j do
        begin
          if ((workplans.Locate('size;sno',VarArrayOf([tq.FieldByName('CC').Value,k]),[]))) then
          begin
            edit;
            if k=1 then
              FieldByName('qty').value:=tq.FieldByName('cts').Value*12
            else
              FieldByName('qty').value:=tq.FieldByName('last').Value;
            FieldByName('updatedate').value:=date;
            FieldByName('lastuser').value:=main.Edit1.Text;
            upwps.apply(ukmodify);
          end
          else
          begin
            Insert;
            FieldByName('workid').value:=workplan.FieldByName('workid').value;
            FieldByName('sno').value:=K;
            fieldbyname('size').value:= tq.FieldByName('cc').value;
            FieldByName('mjbh').value:=workplan.FieldByName('mjbh').value;
            FieldByName('colorno').value:=workplan.FieldByName('colorno').value;
            //一包12雙多少量，尾數是多少雙
            if k=1 then
              FieldByName('qty').value:=tq.FieldByName('cts').Value*12
            else
              FieldByName('qty').value:=tq.FieldByName('last').Value;

            FieldByName('OKqty').value:=0;
            //一包12雙要多少張條碼，尾數標只有一張
            if k=1 then
              FieldByName('nbarcode').value:=(tq.FieldByName('cts').value )
            else
              FieldByName('nbarcode').value:=1;

            FieldByName('pbarcode').value:=0;
            FieldByName('userid').value:=main.Edit1.text;
            FieldByName('creatdate').value:=date;
            FieldByName('updatedate').value:=date;
            FieldByName('lastuser').value:=main.Edit1.Text;
            FieldByName('codebar').value:=copy(workplan.FieldByName('workid').value,3,7)+tq.FieldByName('cc').value;
            post;
            upwps.apply(ukinsert);
          end;
        end;
        tq.Next
     end;
     active:=false;
     active:=true;
  // 更新派工數量及訂單派工狀態
     //派工數量
     with tq do
     begin
        active:=false;
        sql.Clear;
        sql.Add('select sum(qty) as a from ddzls');
        sql.add('where cqdh='+''''+main.edit2.text+''''+' and ');
        sql.add('	 ddbh in 	(select ddbh from workplanss ') ;
        sql.add('		where workid='+''''+workplan.FieldByName('workid').Value+''''+') ');
       active:=true
     end;
     workplan.requestlive:=true;
     workplan.cachedupdates:=true;
     workplan.Edit;
     workplan.FieldByName('workqty').value:=tq.FieldByName('a').Value;
     upwp.apply(ukmodify);
     workplan.active:=false;
     workplan.active:=true;

     //訂單派工狀態
     with tq do
     begin
        active:=false;
        sql.Clear;
        sql.Add('update ddzl ');
        sql.Add('set mode='+''''+'1'+'''');
        sql.add('where mode is null  and ');
        sql.add('	 ddbh in 	(select ddbh from workplanss ') ;
        sql.add('		where workid='+''''+workplan.FieldByName('workid').Value+''''+') ');
        //memo1.Text:=sql.Text;
        ExecSQL;
     end;
     pc1.ActivePageIndex:=0;
  end;
  except
    Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
  end;

end;

procedure TProductionPlan.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
//  query1.Close;
//  query2.Close;
  workplan.Active:=false;
  workplans.Active:=false;
  workplanss.Active:=false;
  action:=cafree;
  productionplan:=nil;  
end;

procedure TProductionPlan.pc1Change(Sender: TObject);
begin
  bbt5.Enabled:=false;

  if workplans.Active then
    if (pc1.ActivePageIndex=1) and (WorkPlanS.RecordCount>0) then
      bbt5.Enabled:=true;
end;

procedure TProductionPlan.bbt5Click(Sender: TObject);
begin
  //barcodepring.Label4.Caption:=WorkPlan.fieldbyname('workid').asstring;
  if barcodepring<>nil then
  begin
    barcodepring.show;
    barcodepring.windowstate:=wsNormal;
  end
  else
    begin
      barcodepring:=Tbarcodepring.create(self);
      barcodepring.show;
    end;
end;

procedure TProductionPlan.FormDeactivate(Sender: TObject);
begin
//  productionplan:=nil;
end;

end.
