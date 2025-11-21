unit ProductionPlan1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, GridsEh, DBGridEh, ComCtrls, DB, DBTables,
  StdCtrls, Buttons, ExtCtrls, ShellApi, ComObj;

type
  TProductionPlan = class(TForm)
    Panel1: TPanel;
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
    workplan: TQuery;
    workplanWorkID: TStringField;
    workplanCQDH: TStringField;
    workplanmjname: TStringField;
    workplanColorNo: TStringField;
    workplancolorname: TStringField;
    workplanWorkQty: TIntegerField;
    workplanWorkStartDate: TDateTimeField;
    workplanWorkEndDate: TDateTimeField;
    workplanUserID: TStringField;
    workplanCreatDate: TDateTimeField;
    workplanUpdateDate: TDateTimeField;
    workplanLastUser: TStringField;
    upwp: TUpdateSQL;
    WP: TDataSource;
    WorkPlanS: TQuery;
    WorkPlanSWorkID: TStringField;
    WorkPlanSSno: TIntegerField;
    WorkPlanSSize: TStringField;
    WorkPlanSQty: TIntegerField;
    WorkPlanSOKQTY: TIntegerField;
    WorkPlanSNBarCode: TIntegerField;
    WorkPlanSPbarcode: TIntegerField;
    WorkPlanSUserID: TStringField;
    WorkPlanSCreatDate: TDateTimeField;
    WorkPlanSUpdateDate: TDateTimeField;
    WorkPlanSLastUser: TStringField;
    WorkPlanScodebar: TStringField;
    upwps: TUpdateSQL;
    WPS: TDataSource;
    WorkPlanSS: TQuery;
    WorkPlanSSWorkID: TStringField;
    WorkPlanSSUserID: TStringField;
    WorkPlanSSCreatDate: TDateTimeField;
    WorkPlanSSUpdateDate: TDateTimeField;
    WorkPlanSSLastUser: TStringField;
    upwpss: TUpdateSQL;
    WPSS: TDataSource;
    TmpQuery: TQuery;
    colorclassQry: TQuery;
    colorclassQryColorNo: TStringField;
    colorclassQryEnglishName: TStringField;
    MJZLQry: TQuery;
    pc1: TPageControl;
    TabSheet1: TTabSheet;
    DBGridEh1: TDBGridEh;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    DBGridEh2: TDBGridEh;
    DBGridEh3: TDBGridEh;
    workplanYN: TStringField;
    WorkPlanSYN: TStringField;
    WorkPlanSSYN: TStringField;
    WorkPlanSSDDBH: TStringField;
    workplanDDLB: TStringField;
    workplanMJBH: TStringField;
    Panel6: TPanel;
    Label17: TLabel;
    BD2: TBitBtn;
    BD3: TBitBtn;
    BD4: TBitBtn;
    BD5: TBitBtn;
    BD6: TBitBtn;
    BDT1: TBitBtn;
    BDT2: TBitBtn;
    BDT3: TBitBtn;
    BDT4: TBitBtn;
    BDT5: TBitBtn;
    Label18: TLabel;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    MJCB: TComboBox;
    CLCB: TComboBox;
    Button1: TButton;
    Panel4: TPanel;
    Label5: TLabel;
    BE2: TBitBtn;
    BE3: TBitBtn;
    BE4: TBitBtn;
    BE5: TBitBtn;
    BE6: TBitBtn;
    ComputeBtn: TButton;
    Label6: TLabel;
    DDBHEdit: TEdit;
    WorkPlanSDDBH: TStringField;
    WorkPlanSPackage: TIntegerField;
    WorkPlanSOutQTY: TIntegerField;
    Label7: TLabel;
    WorkIDEdit: TEdit;
    CheckBox: TCheckBox;
    workplanMemo: TStringField;
    procedure BB1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
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
    procedure ComputeBtnClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure pc1Change(Sender: TObject);
    procedure DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure BDT5Click(Sender: TObject);
    procedure WorkPlanSAfterOpen(DataSet: TDataSet);
    procedure BD2Click(Sender: TObject);
    procedure BD3Click(Sender: TObject);
    procedure BD4Click(Sender: TObject);
    procedure DBGridEh2GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure BD6Click(Sender: TObject);
    procedure BD5Click(Sender: TObject);
    procedure workplanAfterScroll(DataSet: TDataSet);
    procedure BE2Click(Sender: TObject);
    procedure BE3Click(Sender: TObject);
    procedure BE4Click(Sender: TObject);
    procedure BE6Click(Sender: TObject);
    procedure DBGridEh3GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure WorkPlanSSAfterOpen(DataSet: TDataSet);
    procedure BE5Click(Sender: TObject);
    procedure bbt6Click(Sender: TObject);
    procedure workplanAfterOpen(DataSet: TDataSet);
  private
    ColorNo:String;
    { Private declarations }
    procedure InitUpdateSQL();
  public
    { Public declarations }
  end;

var
  ProductionPlan: TProductionPlan;
  NDate:Tdate;

implementation

uses main1, OrderList1, BarcodePrint1, FunUnit;

{$R *.dfm}

procedure TProductionPlan.InitUpdateSQL();
begin
  upwp.InsertSQL.Clear;
  upwp.InsertSQL.Add('insert into '+main.LIY_DD+'.dbo.workplan(WorkID, CQDH, DDLB, MJBH, ColorNo, Memo, WorkQty, WorkStartDate, WorkEndDate, UserID,CreatDate, UpdateDate, LastUser, YN)');
  upwp.InsertSQL.Add('values(:WorkID, :CQDH, :DDLB, :MJBH, :ColorNo, :Memo, :WorkQty, :WorkStartDate, :WorkEndDate, :UserID, :CreatDate, :UpdateDate, :LastUser, :YN)');

  upwp.ModifySQL.Clear;
  upwp.ModifySQL.Add('update '+main.LIY_DD+'.dbo.workplan');
  upwp.ModifySQL.Add('set  DDLB=:DDLB, MJBH = :MJBH,ColorNo = :ColorNo, Memo =:Memo, WorkQty = :WorkQty,WorkStartDate = :WorkStartDate,');
  upwp.ModifySQL.Add('WorkEndDate = :WorkEndDate,UpdateDate = :UpdateDate,LastUser = :LastUser');
  upwp.ModifySQL.Add('where WorkID = :OLD_WorkID ');

  upwp.DeleteSQL.Clear;
  upwp.DeleteSQL.Add('delete from '+main.LIY_DD+'.dbo.workplan');
  upwp.DeleteSQL.Add('where WorkID = :OLD_WorkID ');

  upwps.InsertSQL.Clear;
  upwps.InsertSQL.Add('insert into '+main.LIY_DD+'.dbo.workplans(WorkID, DDBH, SNO, Size, Package, Qty, OKQTY, OutQTY, NBarCode, Pbarcode, UserID,CreatDate, UpdateDate, LastUser, codebar, YN)');
  upwps.InsertSQL.Add('values (:WorkID, :DDBH, :SNO, :Size, :Package, :Qty, :OKQTY, :OutQTY, :NBarCode, :Pbarcode, :UserID, :CreatDate, :UpdateDate, :LastUser, :codebar, :YN)');

  upwps.ModifySQL.Clear;
  upwps.ModifySQL.Add('update '+main.LIY_DD+'.dbo.workplans');
  upwps.ModifySQL.Add('set WorkID = :WorkID,DDBH = :DDBH, SNO = :SNO, Size = :Size,Qty = :Qty,OKQTY = :OKQTY, OutQTY=:OutQTY ,NBarCode = :NBarCode,');
  upwps.ModifySQL.Add('Pbarcode = :Pbarcode,UserID = :UserID,CreatDate = :CreatDate,UpdateDate = :UpdateDate,LastUser = :LastUser,codebar = :codebar');
  upwps.ModifySQL.Add('where WorkID = :OLD_WorkID and Sno = :OLD_Sno and Size = :OLD_Size and DDBH=:OLD_DDBH ');


  upwps.DeleteSQL.Clear;
  upwps.DeleteSQL.Add('delete from '+main.LIY_DD+'.dbo.workplans');
  upwps.DeleteSQL.Add('where WorkID = :OLD_WorkID and SNO = :OLD_SNO and Size = :OLD_Size and DDBH=:OLD_DDBH ');

  upwpss.InsertSQL.Clear;
  upwpss.InsertSQL.Add('insert into '+main.LIY_DD+'.dbo.workplanss(WorkID, DDBH, UserID, CreatDate, UpdateDate, LastUser, YN)');
  upwpss.InsertSQL.Add('values (:WorkID, :DDBH, :UserID, :CreatDate, :UpdateDate, :LastUser, :YN)');

  upwpss.ModifySQL.Clear;
  upwpss.ModifySQL.Add('update '+main.LIY_DD+'.dbo.workplanss');
  upwpss.ModifySQL.Add('set WorkID = :WorkID ,DDBh = :DDBh ,UserID = :UserID,');
  upwpss.ModifySQL.Add('CreatDate = :CreatDate,UpdateDate = :UpdateDate,LastUser = :LastUser');
  upwpss.ModifySQL.Add('where WorkID = :OLD_WorkID and DDBH = :OLD_DDBH');

  upwpss.DeleteSQL.Clear;
  upwpss.DeleteSQL.Add('delete from '+main.LIY_DD+'.dbo.workplanss');
  upwpss.DeleteSQL.Add('where WorkID = :OLD_WorkID  and DDBH = :OLD_DDBH');
end;

procedure TProductionPlan.BB1Click(Sender: TObject);
begin
  panel2.Visible:=true;
end;

procedure TProductionPlan.FormCreate(Sender: TObject);
var i:integer;
begin
  Pc1.ActivePageIndex:=0;
  with TmpQuery do
  begin
    active:=false;
    sql.Clear;
    sql.Add('select distinct CC from '+main.LIY_DD+'.dbo.DDZLS DDZLS where DDZLS.USERDATE>GetDate()-360 group by CC');
    active:=true;
    for i:=1 to recordcount do
    begin
      DBGridEh2.Columns[1].PickList.add(fieldbyname('CC').asstring);
      Next;
    end;
    active:=false;
  end;
  //
  with MJZLQry do
  begin
    active:=false;
    sql.Clear;
    sql.Add('select bz2 as MJBH from '+main.LIY_DD+'.dbo.MJZL group by bz2');
    active:=true;
    mjcb.Items.Clear;
    MJCB.Items.Add('ALL');
    for i:=1 to recordcount do
    begin
      MJCB.Items.Add(fieldbyname('MJBH').asstring);
      next;
    end;
    active:=false;
  end;
  with colorclassQry do
  begin
    active:=false;
    sql.Clear;
    sql.Add('select colorno,EnglishName from '+main.LIY_DD+'.dbo.colorclass');
    active:=true;
    CLCB.Items.Clear;
    CLCB.Items.Add('ALL');
    for i:=1 to recordcount do
    begin
      CLCB.Items.Add(fieldbyname('EnglishName').asstring);
      next;
    end;
    active:=false;
  end;
  DTP1.Date:=date;
  DTP2.date:=date+7;

  InitUpdateSQL();
  //
end;

procedure TProductionPlan.CLCBChange(Sender: TObject);
begin
  colorclassQry.locate('englishname',clcb.Text,[]);
  colorno:=colorclassQry.fieldbyname('colorno').Value;
end;

procedure TProductionPlan.Button1Click(Sender: TObject);
begin
  with Workplan do
  begin
    active:=false;
    sql.Clear;
    sql.add('select * from '+main.LIY_DD+'.dbo.workplan workplan');
    sql.add('where convert(smalldatetime,convert(varchar,workStartDate,111)) between ');
    sql.add('      '''+formatdatetime('yyyy/MM/dd',DTP1.date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.date)+'''');
    if MJCB.Text <> 'ALL' then
    begin
      sql.add('       and MJBH='+''''+MJCB.Text+'''');
    end;
    if CLCB.Text<>'ALL' then
    begin
      sql.add('       and ColorNo='''+ColorNo+'''');
    end;
    if DDBHEDit.Text<>'' then
    begin
      sql.add(' and workplan.workID in (select workID from '+main.LIY_DD+'.dbo.workplanss workplanss where workplanss.DDBH like '''+DDBHEDit.Text+'%'') ');
    end;
    if WorkIDEdit.Text<>'' then
    begin
      sql.add(' and workplan.workid like '''+WorkIDEdit.Text+'%'' ');
    end;
    if CheckBox.Checked=true then
      sql.add(' and workplan.UserID='''+main.Edit1.Text+''' ');
    sql.add('order by workid desc');
    //funcObj.WriteErrorLog(sql.Text);
    active:=true;
  end;
  with WorkPlanS do
  begin
    active:=false;
    sql.Clear;
    sql.Add('select * from '+main.LIY_DD+'.dbo.workplans');
    sql.Add('where workID=:workid');
    sql.Add('order by size,sno');
    active:=true;
  end;

  with WorkPlanSS do
  begin
    active:=false;
    sql.Clear;
    sql.Add('select * from '+main.LIY_DD+'.dbo.workplanss as wpss');
    sql.Add('where workid=:workid');
    active:=true;
  end;
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

  with TmpQuery do          //取服務器的年月值
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
        usinserted:
        begin
          if workplan.fieldbyname('workstartdate').isnull then
          begin
            workplan.delete;
          end else
          begin
            with TmpQuery do    //計算領料單流水號
            begin
              active:=false;
              sql.Clear;
              sql.Add('select workid from '+main.LIY_DD+'.dbo.workplan where workid like '+''''+y+m+'%'+'''');
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
              end else
              begin
                a:='001';
              end;
              a :=y+m+a;
              active:=false;
            end;
            workplan.edit;
            workplan.fieldbyname('workid').Value:=a;
            if workplan.fieldbyname('DDLB').IsNull then
              workplan.fieldbyname('DDLB').Value:='N';
            workplan.fieldbyname('cqdh').Value:=main.edit2.text;
            workplan.fieldbyname('lastuser').Value:=main.edit1.text;
            workplan.FieldByName('userID').Value:=main.edit1.text;
            workplan.FieldByName('updatedate').Value:=Ndate;
            workplan.FieldByName('creatdate').Value:=Ndate;
            workplan.FieldByName('YN').Value:='1';
            upwp.apply(ukinsert);
          end;
        end;
        usmodified:
        begin
          if workplan.FieldByName('USERID').value<>main.Edit1.Text then
          begin
            showmessage('不是你的，不要亂動。khong phai ban khong duoc tu sua');
          end else
          begin
            if workplan.fieldbyname('YN').value='0'then
            begin
              upwp.apply(ukdelete);
            end else
            begin
              if (NDate-workplan.FieldByName('workstartdate').value)<=1  then
              begin
                workplan.edit;
                workplan.FieldByName('lastuser').Value:=main.edit1.text;
                workplan.FieldByName('updatedate').Value:=Ndate;
                upwp.apply(ukmodify);
              end else
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
  end else
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
    //正式訂單
    if workplan.fieldbyname('DDLB').AsString='N' then
    begin
      pc1.ActivePageIndex:=2;
      pc1Change(pc1);
      BE2.Click;
    end else
    begin
      //沒有訂單歸屬
      pc1.ActivePageIndex:=1;
      pc1Change(pc1);
    end;
  end;
end;

procedure TProductionPlan.ComputeBtnClick(Sender: TObject);
var i,j,Round,Package,SNO:integer;
    Str:String;
begin
  Package:=12; //一包幾雙
  Str:=inttostr(Package);
  if InputQuery('Package', 'Enter 1 CTS Qty:', Str) then
  begin
    Package:=strtoint(Str);
    with TmpQuery do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('select SNO,SIZE from '+main.LIY_DD+'.dbo.workplans ');
      SQL.Add('where workid='''+workplan.FieldByName('workid').Value+''' and OKQty>0 ');
      Active:=true;
      if RecordCount>0 then
      begin
        Showmessage('Already Scan in warehouse,Da Scan nhap kho, khong tinh lai');
        Exit;
      end;
    end;
    try
      with TmpQuery do
      begin
        Active:=false;
        SQL.Clear;
        SQL.Add('Delete from '+main.LIY_DD+'.dbo.workplans ');
        SQL.Add('where workid='''+workplan.FieldByName('workid').Value+''' ');
        ExecSQL();
      end;
      pc1.ActivePageIndex:=1;
      if messagedlg('DDBH Barcode or not ?',mtCustom, [mbYes,mbNo], 0)=mrYes then
      begin
        //記算各size數量
        with TmpQuery do
        begin
          Active:=false;
          sql.Clear;
          SQL.Add('  select DDBH,CC,Qty,(Qty % '+inttostr(Package)+') as Remain,Round((Qty/'+inttostr(Package)+'),0,1) as CTS from(  ');
          SQL.Add('  select DDBH,CC,cast(sum(qty) as int) as Qty from '+main.LIY_DD+'.dbo.ddzls');
          SQL.Add('  where CQDH='''+main.edit2.text+''' and');
          SQL.Add('	  DDBH in 	(select ddbh from '+main.LIY_DD+'.dbo.workplanss  ');
          SQL.Add('                  where workid='''+workplan.FieldByName('workid').Value+''') ');
          SQL.Add('  group by DDBH,CC  ) as OrderList	    ');
          SQL.Add('  order by CC,DDBH   ');
          //funcObj.WriteErrorLog(sql.Text);
          active:=true
        end;
      end else
      begin
        //記算各size數量
        with TmpQuery do
        begin
          Active:=false;
          sql.Clear;
          SQL.Add('  select ''ZZZZZZZZZZ'' as DDBH,CC,Qty,(Qty % '+inttostr(Package)+') as Remain,Round((Qty/'+inttostr(Package)+'),0,1) as CTS from(  ');
          SQL.Add('  select CC,cast(sum(qty) as int) as Qty from '+main.LIY_DD+'.dbo.ddzls');
          SQL.Add('  where CQDH='''+main.edit2.text+''' and');
          SQL.Add('	  DDBH in 	(select ddbh from '+main.LIY_DD+'.dbo.workplanss  ');
          SQL.Add('                  where workid='''+workplan.FieldByName('workid').Value+''') ');
          SQL.Add('  group by CC  ) as OrderList	    ');
          SQL.Add('  order by CC,DDBH   ');
          //funcObj.WriteErrorLog(sql.Text);
          active:=true
        end;
      end;
      workplans.Active:=false;
      workplans.Active:=true;
      with workplans do
      begin
         requestlive:=true;
         cachedupdates:=true;
         TmpQuery.First;
         SNO:=1;
         for i := 1 to TmpQuery.RecordCount do
         begin
            if TmpQuery.FieldByName('Remain').value=0 then
              Round:=1
            else
              Round:=2;
            //根據是否有尾數決定一輪或兩輪
            for j:=1 to Round do
            begin
              Insert;
              FieldByName('WorkID').value:=workplan.FieldByName('WorkID').value;
              FieldByName('DDBH').value:=TmpQuery.FieldByName('DDBH').value;
              FieldByName('SNO').value:=SNO;
              fieldbyname('SIZE').value:= TmpQuery.FieldByName('CC').value;
              if J=1 then
              begin
                 fieldbyname('Package').value:=Package;
                 FieldByName('YN').value:='1';
              end else
              begin
                 FieldByName('Package').value:=TmpQuery.FieldByName('Remain').Value;
                 FieldByName('YN').value:='2';
              end;
              //一包12雙多少量，尾數是多少雙
              if J=1 then
                FieldByName('Qty').value:=TmpQuery.FieldByName('CTS').Value*Package
              else
                FieldByName('Qty').value:=TmpQuery.FieldByName('Remain').Value;
              FieldByName('OKqty').value:=0;
              FieldByName('Outqty').value:=0;
              if J=1 then
                  FieldByName('nbarcode').value:=TmpQuery.FieldByName('CTS').Value
              else
                  FieldByName('nbarcode').value:=1;
              FieldByName('pbarcode').value:=0;
              FieldByName('userid').value:=main.Edit1.text;
              FieldByName('creatdate').value:=date;
              FieldByName('updatedate').value:=date;
              FieldByName('lastuser').value:=main.Edit1.Text;
              //20200613  weston 增加一碼SNO 序號
              FieldByName('codebar').value:=copy(workplan.FieldByName('workid').value,3,7)+inttostr(SNO)+TmpQuery.FieldByName('cc').value;

              post;
              upwps.apply(ukinsert);
              SNO:=SNO+1;
            end;
            TmpQuery.Next
         end;
         active:=false;
         active:=true;
         //更新派工數量及訂單派工狀態
         //派工數量
         with TmpQuery do
         begin
            active:=false;
            sql.Clear;
            sql.add('update  '+main.LIY_DD+'.dbo.workplan set workqty=( ');
            sql.Add('select sum(qty) as qty from '+main.LIY_DD+'.dbo.ddzls ');
            sql.add('where cqdh='''+main.edit2.text+''' and ');
            sql.add('	 ddbh in 	(select ddbh from '+main.LIY_DD+'.dbo.workplanss ') ;
            sql.add('	 where workid='''+workplan.FieldByName('workid').Value+''')) ');
            sql.add('where workid='''+workplan.FieldByName('workid').Value+'''  ');
            //funcObj.WriteErrorLog(sql.Text);
            ExecSQL();
         end;
         //訂單派工狀態
         with TmpQuery do
         begin
            active:=false;
            sql.Clear;
            sql.Add('update '+main.LIY_DD+'.dbo.ddzl ');
            sql.Add('set mode='+''''+'1'+'''');
            sql.add('where mode is null  and ');
            sql.add('	 ddbh in 	(select ddbh from '+main.LIY_DD+'.dbo.workplanss ') ;
            sql.add('		where workid='+''''+workplan.FieldByName('workid').Value+''''+') ');
            //memo1.Text:=sql.Text;
            ExecSQL;
         end;
         pc1.ActivePageIndex:=1;
         pc1Change(pc1);
      end;
    except
      Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
    end;
  end;
end;

procedure TProductionPlan.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
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
  begin
    if pc1.ActivePageIndex=0 then
    begin
      Panel1.Visible:=true;
      Panel6.Visible:=false;
      Panel4.Visible:=false;
    end else  if pc1.ActivePageIndex=1 then
    begin
      Panel1.Visible:=false;
      Panel6.Visible:=true;
      Panel4.Visible:=false;
    end else
    begin
      Panel1.Visible:=false;
      Panel6.Visible:=false;
      Panel4.Visible:=true;
    end;
  end;
end;

procedure TProductionPlan.DBGridEh1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if workplan.FieldByName('YN').value='0' then
  begin
    DBGridEh1.canvas.font.color:=clred;
  end;
end;

procedure TProductionPlan.BDT5Click(Sender: TObject);
begin
  if barcodeprint<>nil then
  begin
    barcodeprint.show;
    barcodeprint.windowstate:=wsNormal;
  end else
  begin
    barcodeprint:=Tbarcodeprint.create(self);
    barcodeprint.show;
  end;
end;

procedure TProductionPlan.WorkPlanSAfterOpen(DataSet: TDataSet);
begin
  BDT5.Enabled:=true;
end;

procedure TProductionPlan.BD2Click(Sender: TObject);
begin
  with WorkPlanS do
  begin
    requestlive:=true;
    cachedupdates:=true;
  end;
  BD5.Enabled:=true;
  BD6.Enabled:=true;
  WorkPlanS.insert;
end;

procedure TProductionPlan.BD3Click(Sender: TObject);
begin
  if workplanss.recordcount=0 then
  begin
    with workplans do
    begin
      requestlive:=true;
      cachedupdates:=true;
      edit;
      fieldbyname('YN').Value:='0';
    end;
  end else
  begin
    showmessage('Pls delete the DDBH List first.')
  end;
  BD5.Enabled:=true;
  BD6.Enabled:=true;
end;

procedure TProductionPlan.BD4Click(Sender: TObject);
begin
  with workplanS do
  begin
    cachedupdates:=true;
    requestlive:=true;
  end;
  BD5.Enabled:=true;
  BD6.Enabled:=true;
end;

procedure TProductionPlan.DBGridEh2GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if workplanS.FieldByName('YN').value='0' then
  begin
    DBGridEh2.canvas.font.color:=clred;
  end;
end;

procedure TProductionPlan.BD6Click(Sender: TObject);
begin
  with workplanS do
  begin
    CachedUpdates:=false;
    RequestLive:=false;
    Active:=false;
    Active:=true;
  end;
  BD5.enabled:=false;
  BD6.Enabled:=false;
end;

procedure TProductionPlan.BD5Click(Sender: TObject);
var i:integer;
begin

  try
    workplans.first;
    for i:=1 to workplans.RecordCount do
    begin
      case workplans.updatestatus of
        usinserted: {新增}
        begin
            workplans.edit;
            workplans.fieldbyname('workid').Value:=workplan.fieldbyname('workid').Value;
            if (workplans.FieldByName('Qty').value mod 12)=0 then
            begin
              workplans.FieldByName('SNO').value:=1;
              workplans.FieldByName('Package').value:=12;
              workplans.FieldByName('NBarCode').value:=workplans.FieldByName('Qty').value div 12;
              workplans.FieldByName('YN').Value:='1';
            end else
            begin
              workplans.FieldByName('Qty').value:=(workplans.FieldByName('Qty').value mod 12);
              workplans.FieldByName('SNO').value:=2;
              workplans.FieldByName('NBarCode').value:=1;
              workplans.FieldByName('Package').value:=(workplans.FieldByName('Qty').value mod 12);
              workplans.FieldByName('YN').Value:='2';
            end;
            if workplan.fieldbyname('DDLB').Value='B' then
            begin
              if workplans.FieldByName('DDBH').IsNull then
              workplans.FieldByName('DDBH').value:='ZZZZZZZZZZ';
            end;
            workplans.FieldByName('OKQty').value:=0;
            workplans.FieldByName('OutQty').value:=0;
            workplans.FieldByName('PBarCode').value:=0;
            workplans.FieldByName('userid').value:=main.Edit1.text;
            workplans.FieldByName('creatdate').value:=date;
            workplans.FieldByName('updatedate').value:=date;
            workplans.FieldByName('lastuser').value:=main.Edit1.Text;
            workplans.FieldByName('codebar').value:=copy(workplan.FieldByName('workid').value,3,7)+workplans.FieldByName('SNO').AsString+workplans.FieldByName('SIZE').Value;
            upwps.apply(ukinsert);
        end;
        usmodified:   {刪除}
        begin
          if workplans.FieldByName('USERID').value<>main.Edit1.Text then
          begin
            showmessage('不是你的，不要亂動。khong phai ban khong duoc tu sua');
          end else
          begin
            if workplans.fieldbyname('YN').value='0'then
            begin
              if workplans.FieldByName('OKQty').value=0 then
              begin
                upwps.apply(ukdelete);
              end else
              begin
                showmessage('already scan ,can not delete. Da nhap khong duoc xoa');
              end;
            end else
            begin
              if (NDate-workplan.FieldByName('workstartdate').value)<=1  then
              begin
                workplans.edit;
                if (workplans.FieldByName('Qty').value mod 12)=0 then
                begin
                  workplans.FieldByName('SNO').value:=1;
                  workplans.FieldByName('Package').value:=12;
                  workplans.FieldByName('NBarCode').value:=workplans.FieldByName('Qty').value div 12;
                  workplans.FieldByName('YN').Value:='1';
                end else
                begin
                  workplans.FieldByName('Qty').value:=(workplans.FieldByName('Qty').value mod 12);
                  workplans.FieldByName('SNO').value:=2;
                  workplans.FieldByName('NBarCode').value:=1;
                  workplans.FieldByName('Package').value:=(workplans.FieldByName('Qty').value mod 12);
                  workplans.FieldByName('YN').Value:='2';
                end;
                if workplan.fieldbyname('DDLB').Value='B' then
                begin
                  if workplans.FieldByName('DDBH').IsNull then
                  workplans.FieldByName('DDBH').value:='ZZZZZZZZZZ';
                end;
                workplans.FieldByName('updatedate').value:=date;
                workplans.FieldByName('lastuser').value:=main.Edit1.Text;
                workplans.FieldByName('codebar').value:=copy(workplan.FieldByName('workid').value,3,7)+workplans.FieldByName('SNO').AsString+workplans.FieldByName('SIZE').Value;
                upwps.apply(ukmodify);
              end else
              begin
                showmessage('can not modify.');
              end;
            end;
          end;
        end;
      end;
      workplans.next;
    end;
  workplans.active:=false;
  workplans.cachedupdates:=false;
  workplans.requestlive:=false;
  workplans.active:=true;
  BD5.enabled:=false;
  BD6.enabled:=false;
  //派工數量
  with TmpQuery do
  begin
     active:=false;
     sql.Clear;
     sql.Add('update '+main.LIY_DD+'.dbo.workplan set workqty=( ');
     sql.Add('select sum(qty) as qty from '+main.LIY_DD+'.dbo.workplans  ');
     sql.add('	 where workid='''+workplan.FieldByName('workid').Value+''' ) ');
     sql.add('where workid='''+workplan.FieldByName('workid').Value+''' ');
     ExecSQL();
  end;
  except
    Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
  end;
end;

procedure TProductionPlan.workplanAfterScroll(DataSet: TDataSet);
begin
  if workplan.FieldByName('DDLB').AsString='B' then
  begin
    BD2.Enabled:=true;
    BD3.Enabled:=true;
    BD4.Enabled:=true;
    BE2.Enabled:=false;
    BE3.Enabled:=false;
    BE4.Enabled:=false;
    ComputeBtn.Enabled:=false;
  end else
  begin
    BD2.Enabled:=false;
    BD3.Enabled:=false;
    BD4.Enabled:=false;
    BE2.Enabled:=true;
    BE3.Enabled:=true;
    BE4.Enabled:=true;
    ComputeBtn.Enabled:=True;
  end;
  if (workplan.FieldByName('workid').Value<>null) and (workplan.FieldByName('workstartdate').Value-date<0) then
  begin
    BD2.Enabled:=false;
    BD3.Enabled:=false;
    BD4.Enabled:=false;
    BE2.Enabled:=false;
    BE3.Enabled:=false;
    BE4.Enabled:=false;
    ComputeBtn.Enabled:=false;
  end;
end;

procedure TProductionPlan.BE2Click(Sender: TObject);
begin
  with WorkPlanSS do
  begin
    requestlive:=true;
    cachedupdates:=true;
    Insert;
  end;
  BE5.Enabled:=true;
  BE6.Enabled:=true;
  if orderlist<>nil then
  begin
      orderlist.show;
  end else
  begin
      orderlist:=Torderlist.create(self);
      orderlist.show;
  end;
end;

procedure TProductionPlan.BE3Click(Sender: TObject);
begin
  with workplanSS do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
    fieldbyname('YN').Value:='0';
  end;
  BE5.Enabled:=true;
  BE6.Enabled:=true;
end;

procedure TProductionPlan.BE4Click(Sender: TObject);
begin
  with workplanSS do
  begin
    cachedupdates:=true;
    requestlive:=true;
    Edit;
  end;
  BE5.Enabled:=true;
  BE6.Enabled:=true;
end;

procedure TProductionPlan.BE6Click(Sender: TObject);
begin
  with workplanSS do
  begin
    CachedUpdates:=false;
    RequestLive:=false;
    Active:=false;
    Active:=true;
  end;
  BE5.enabled:=false;
  BE6.Enabled:=false;
end;

procedure TProductionPlan.DBGridEh3GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if workplanSS.FieldByName('YN').value='0' then
  begin
    DBGridEh3.canvas.font.color:=clred;
  end;
end;

procedure TProductionPlan.WorkPlanSSAfterOpen(DataSet: TDataSet);
begin
    BE2.Enabled:=true;
    BE3.Enabled:=true;
    BE4.Enabled:=true;
end;

procedure TProductionPlan.BE5Click(Sender: TObject);
var i:integer;
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
          end else
          begin
          workplanss.Edit;
          workplanss.FieldByName('workid').Value:= workplan.FieldByName('workid').Value;
          workplanss.fieldbyname('lastuser').Value:=main.edit1.text;
          workplanss.FieldByName('userID').Value:=main.edit1.text;
          workplanss.FieldByName('updatedate').Value:=date;
          workplanss.FieldByName('creatdate').Value:=date;
          workplanss.FieldByName('YN').Value:='1';
          upwpss.apply(ukinsert);
          end;
        end;
        usmodified:   {刪除}
        begin
          if workplanss.FieldByName('USERID').value<>main.Edit1.Text then
          begin
            showmessage('不是你的，不要亂動。khong phai ban khong duoc tu sua');
          end else
          begin
            if workplanss.fieldbyname('YN').value='0'then
            begin
              upwpss.apply(ukdelete);
            end else
            begin
              if (NDate-workplan.FieldByName('workstartdate').value)<=1  then
              begin
                workplanss.edit;
                workplanss.FieldByName('lastuser').Value:=main.edit1.text;
                workplanss.FieldByName('updatedate').Value:=date;
                upwpss.apply(ukmodify);
              end else
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
    BE5.enabled:=false;
    BE6.Enabled:=false;
  except
    Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
  end;
end;

procedure TProductionPlan.bbt6Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin
    if workplan.active  then
    begin
    try
      eclApp:=CreateOleObject('Excel.Application');
      WorkBook:=CreateOleObject('Excel.Sheet');
    except
      Application.MessageBox('NO Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
      Exit;
    end;
    with TmpQuery do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('select workplans.WorkID,workplan.MJBH,colorclass.englishname,workplans.DDBH,workplans.SIZE,Sum(Qty) as Qty,Sum(OKQty) as OKQty,Sum(OutQty) as OutQty ');
      SQL.Add('from '+main.LIY_DD+'.dbo.workplans workplans ');
      SQL.Add('left join '+main.LIY_DD+'.dbo.workplan  workplan on workplan.WorkID=workplans.WorkID');
      SQL.Add('left join '+main.LIY_DD+'.dbo.colorclass colorclass on workplan.ColorNo=colorclass.ColorNo');
      SQL.Add('where workplans.WorkID='''+workplan.FieldByName('WorkID').AsString+''' ');
      SQL.Add('Group by workplans.WorkID,workplan.MJBH,colorclass.englishname,workplans.DDBH,workplans.SIZE');
      Active:=true;
    end;
    try
        WorkBook:=eclApp.workbooks.Add;
        for   i:=0   to   TmpQuery.fieldCount-1   do
        begin
          eclApp.Cells(1,i+1):=TmpQuery.fields[i].FieldName;
        end;
        TmpQuery.First;
        j:=2;
        while   not   TmpQuery.Eof   do
        begin
          for   i:=0   to   TmpQuery.FieldCount-1   do
          begin
              eclApp.Cells[j,i+1].NumberFormatLocal:='@';
              eclApp.Cells(j,i+1):=TmpQuery.Fields[i].Value;
          end;
          TmpQuery.Next;
          inc(j);
        end;
        eclapp.columns.autofit;
        eclApp.Visible:=True;
        TmpQuery.Active:=false;
    except
      on   F:Exception   do
        showmessage(F.Message);
    end;
 end;
end;

procedure TProductionPlan.workplanAfterOpen(DataSet: TDataSet);
begin
  bbt6.Enabled:=true;
end;

end.
