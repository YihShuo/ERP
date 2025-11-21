unit Outsoleborrow1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, DB, DBTables,comobj,
  DBCtrls, ComCtrls, Menus, Mask,dateutils, Grids, DBGrids, GridsEh, DBGridEh;

type
  TOutsoleborrow = class(TForm)
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
    Query1: TQuery;
    DelMas: TQuery;
    DS3: TDataSource;
    UpMas: TUpdateSQL;
    DelDet: TQuery;
    DS4: TDataSource;
    Panel6: TPanel;
    Label17: TLabel;
    BD2: TBitBtn;
    BD3: TBitBtn;
    BD4: TBitBtn;
    BD5: TBitBtn;
    BD6: TBitBtn;
    BD7: TBitBtn;
    BDT1: TBitBtn;
    BDT2: TBitBtn;
    BDT3: TBitBtn;
    BDT4: TBitBtn;
    BDT5: TBitBtn;
    BDT6: TBitBtn;
    UPDet: TUpdateSQL;
    Label18: TLabel;
    BDelRec: TQuery;
    DS6: TDataSource;
    KCLLSS: TQuery;
    UpdateSQL1: TUpdateSQL;
    pgcPC1: TPageControl;
    tsTS1: TTabSheet;
    pnl1: TPanel;
    lbl2: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    dbedtLLNO: TDBEdit;
    dbedtDepName: TDBEdit;
    dbedtDepID: TDBEdit;
    btnBBTT1: TBitBtn;
    DBGridh3: TDBGridEh;
    pnl2: TPanel;
    lbl6: TLabel;
    lbl7: TLabel;
    lbl8: TLabel;
    edt1: TEdit;
    btn2: TButton;
    dtp1: TDateTimePicker;
    dtp2: TDateTimePicker;
    chk2: TCheckBox;
    tsTS2: TTabSheet;
    pnl3: TPanel;
    lbl9: TLabel;
    lbl10: TLabel;
    lbl11: TLabel;
    lbl12: TLabel;
    lbl13: TLabel;
    lbl14: TLabel;
    dbedtLLNO1: TDBEdit;
    dbedtUSERDATE1: TDBEdit;
    dbedtDepID1: TDBEdit;
    dbedtDepName1: TDBEdit;
    dbmmoYWPM: TDBMemo;
    dbedtCLBH: TDBEdit;
    btnBBTT2: TBitBtn;
    dbedtCFMID: TDBEdit;
    pnl4: TPanel;
    btnBE1: TBitBtn;
    btnBE2: TBitBtn;
    btnBE3: TBitBtn;
    btnBE4: TBitBtn;
    btnBE5: TBitBtn;
    dbgrdh4: TDBGridEh;
    dbgrdh6: TDBGridEh;
    strngfldDelMasLLNO: TStringField;
    strngfldDelMasGSBH: TStringField;
    strngfldDelMasCKBH: TStringField;
    strngfldDelMasDepID: TStringField;
    dtmfldDelMasUSERDATE: TDateTimeField;
    strngfldDelMasUSERID: TStringField;
    dtmfldDelMasCFMDate: TDateTimeField;
    strngfldDelMasCFMID: TStringField;
    strngfldDelMasSB: TStringField;
    strngfldDelMasYN: TStringField;
    strngfldDelMasDepName: TStringField;
    strngfldDelDetLLNO: TStringField;
    strngfldDelDetCLBH: TStringField;
    strngfldDelDetSCBH: TStringField;
    crncyfldDelDetLLQty: TCurrencyField;
    crncyfldDelDetRKQty: TCurrencyField;
    strngfldDelDetMEMO: TStringField;
    strngfldDelDetUSERID: TStringField;
    dtmfldDelDetUSERDATE: TDateTimeField;
    strngfldDelDetYN: TStringField;
    strngfldDelDetYWPM: TStringField;
    strngfldDelDetDWBH: TStringField;
    strngfldDelDetHGBH: TStringField;
    strngfldDelDetlycc: TStringField;
    strngfldKCLLSSLLNO: TStringField;
    strngfldKCLLSSCLBH: TStringField;
    strngfldKCLLSSZLBH: TStringField;
    strngfldKCLLSSSIZ: TStringField;
    crncyfldKCLLSSQty: TCurrencyField;
    dtmfldKCLLSSUSERDate: TDateTimeField;
    strngfldKCLLSSUSERID: TStringField;
    strngfldKCLLSSYN: TStringField;
    strngfldDelDetZLNO: TStringField;
    crncyfldKCLLSSTempQTY: TCurrencyField;
    BDT7: TBitBtn;
    KCLLSSLCRY: TStringField;
    DelMasPlanDate: TDateTimeField;
    DelMasPMARK: TIntegerField;
    Label1: TLabel;
    edt2: TEdit;
    dtp3: TDateTimePicker;
    Label2: TLabel;
    Label3: TLabel;
    dtp4: TDateTimePicker;
    RB1: TRadioButton;
    RB2: TRadioButton;
    DelMasMEMO: TStringField;
    KCLLSSKCQty: TFloatField;
    DelMasSFL: TStringField;
    DelMasSFL_DESC: TStringField;
    DelMasCKBH_Memo: TStringField;
    btnBE6: TBitBtn;
    DelMasflowflag: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn2Click(Sender: TObject);
    procedure BB1Click(Sender: TObject);
    procedure BB7Click(Sender: TObject);
    procedure BBT1Click(Sender: TObject);
    procedure BBT2Click(Sender: TObject);
    procedure BBT3Click(Sender: TObject);
    procedure BBT4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DelMasAfterOpen(DataSet: TDataSet);
    procedure BB2Click(Sender: TObject);
    procedure BB3Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure btnBBTT1Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure DBGridh3EditButtonClick(Sender: TObject);
    procedure DelDetAfterOpen(DataSet: TDataSet);
    procedure pgcPC1Change(Sender: TObject);
    procedure BD7Click(Sender: TObject);
    procedure BD2Click(Sender: TObject);
    procedure BD3Click(Sender: TObject);
    procedure BD5Click(Sender: TObject);
    procedure BD4Click(Sender: TObject);
    procedure BD6Click(Sender: TObject);
    procedure btnBBTT2Click(Sender: TObject);
    procedure dbgrdh4EditButtonClick(Sender: TObject);
    procedure BDT1Click(Sender: TObject);
    procedure BDT2Click(Sender: TObject);
    procedure BDT3Click(Sender: TObject);
    procedure BDT4Click(Sender: TObject);
    procedure BDT5Click(Sender: TObject);
    procedure DBGridh3DblClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnBE1Click(Sender: TObject);
    procedure btnBE5Click(Sender: TObject);
    procedure btnBE2Click(Sender: TObject);
    procedure btnBE3Click(Sender: TObject);
    procedure btnBE4Click(Sender: TObject);
    procedure pgcPC1Changing(Sender: TObject; var AllowChange: Boolean);
    procedure DBGridh3GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure dbgrdh4GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure DBGrid6Columns2NotInList(Sender: TObject; NewText: String;
      var RecheckInList: Boolean);
    procedure DBGrid6Columns3NotInList(Sender: TObject; NewText: String;
      var RecheckInList: Boolean);
    procedure DBGrid6Columns4NotInList(Sender: TObject; NewText: String;
      var RecheckInList: Boolean);
    procedure dbgrdh6Columns0NotInList(Sender: TObject; NewText: String;
      var RecheckInList: Boolean);
    procedure BDT7Click(Sender: TObject);
    procedure dbgrdh6GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure btnBE6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Outsoleborrow: TOutsoleborrow;
  sdate,edate,NDate:Tdate;

implementation

uses main1,Outsoleborrow_Dep1, Outsoleborrow_CL1 , Outsoleborrow_PrintA41,
     Outsoleborrow_S1, Outsoleborrow_RY1, FunUnit;

{$R *.dfm}

procedure TOutsoleborrow.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if BB5.enabled  then
  begin
    messagedlg('You have to save data Record of report first.',mtwarning,[mbyes],0);
    pgcPC1.ActivePage:=TSTS1;
    panel1.Visible:=true;
    panel6.Visible:=false;
    action:=canone;
  end
  else
    begin
      if BD5.enabled then
        begin
          messagedlg('You have to save data Report first.',mtwarning,[mbyes],0);
          pgcPC1.ActivePage:=TSTS2;
          panel1.Visible:=false;
          panel6.Visible:=true;
          action:=canone;
        end
          else
            if btnBE4.Enabled then
            begin
              messagedlg('You have to save data Report first.',mtwarning,[mbyes],0);
              pgcPC1.ActivePage:=TSTS2;
              panel1.Visible:=false;
              panel6.Visible:=true;
              action:=canone;
            end
            else
            begin
              action:=Cafree;
            end;
    end;
end;

procedure TOutsoleborrow.btn2Click(Sender: TObject);
var y,m:word;
begin
  with DelMas do
  begin
    active:=false;
    sql.Clear;
    sql.add('select OSLL.*,BDepartment.DepName,LastKCCK.Memo as CKBH_Memo,Case when OSLL.SFL=''1'' then ''Muon借出'' when OSLL.SFL=''2'' then ''BO PHE報廢'' end as SFL_DESC');
    sql.add('from OSLL');
    sql.add('left join BDepartment on OSLL.DepID=BDepartment.ID');
    sql.add('Left join LastKCCK on OSLL.CKBH=LastKCCK.CKBH ');
    sql.add('where OSLL.SB=''L'' and isnull(OSLL.flowflag,'''') <>''X''  ');
    IF Edt1.TEXT<>'' THEN
       sql.add(' AND OSLL.LLNO LIKE '+''''+edt1.Text+'%'+'''');
    IF Edt2.TEXT<>'' THEN
       sql.add(' AND OSLL.DepID LIKE '+''''+Edt2.Text+'%'+'''');
    if RB1.Checked=true then
    begin
     sql.add('    and convert(smalldatetime,convert(varchar,OSLL.USERDATE,111)) between ');
     sql.add(''''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''''+' and  '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date) +'''');
    end;
    if RB2.Checked=true then
    begin
     sql.add('    and convert(smalldatetime,convert(varchar,OSLL.Plandate,111)) between ');
     sql.add(''''+formatdatetime('yyyy/MM/dd',DTP3.Date) +''''+' and  '+''''+formatdatetime('yyyy/MM/dd',DTP4.Date) +'''');
    end;
    if Chk2.Checked then
    begin
     sql.Add('and OSLL.USERID='+''''+main.Edit1.Text+'''');
    end;
    sql.add('order by OSLL.LLNO DESC');
    //funcobj.WriteErrorLog(sql.Text);
    active:=true;
  end;
  DelMas.Active:=true;
  KCLLSS.Active:=true;
  pnl2.Visible:=false;
end;

procedure TOutsoleborrow.BB1Click(Sender: TObject);
begin
  pgcPC1.ActivePage:=TSTS1;
  pnl2.Visible:=true;
  Edt1.SetFocus;
end;

procedure TOutsoleborrow.BB7Click(Sender: TObject);
begin
  close;
end;

procedure TOutsoleborrow.BBT1Click(Sender: TObject);
begin
  DelMas.First;
end;

procedure TOutsoleborrow.BBT2Click(Sender: TObject);
begin
  DelMas.Prior;
end;

procedure TOutsoleborrow.BBT3Click(Sender: TObject);
begin
  DelMas.Next;
end;

procedure TOutsoleborrow.BBT4Click(Sender: TObject);
begin
  DelMas.Last;
end;


procedure TOutsoleborrow.FormCreate(Sender: TObject);
var year,month,day:word;
    i:integer;
    ayear,amonth:string;
begin

  decodedate(Date,Year,Month,Day);   //找庫存相關的數據
  incAMonth(Year,Month,Day,-1);
  ayear:=floattostr(year);
  amonth:=floattostr(month);
  if length(amonth)=1 then
    amonth:='0'+amonth;
  //
  with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select CKBH from LastKCCK WHERE GSBH='''+main.Edit2.text+''' and LB=''05'' order by CKBH');
    active:=true;
    DBGridh3.Columns[3].PickList.Clear;
    for i:=1 to recordcount do
    begin
      DBGridh3.Columns[2].PickList.Add(fieldbyname('CKBH').asstring);
      next;
    end;
    active:=false;
    sql.Clear;
    sql.add('select getdate() as NDate ');
    active:=true;
    NDate:=fieldbyname('NDate').Value;
  end;
  //
  with query1 do
  begin
    Active:=false;
    SQL.Clear;
    sql.add('  if object_id('+''''+'tempdb..#CLZLKC_Outsole'+''''+') is not null  ');
    sql.add('begin   drop table #CLZLKC_Outsole end   ');
    SQL.Add('select NowKC.CKBH,NowKC.CLBH,NowKC.SIZ,IsNull(NowKC.NowRKQty,0)-IsNull(LL.LLQty,0) as Qty,OutsoleKC.LastRem,RK.RKQty,LL.LLQty into #CLZLKC_Outsole from (');
    SQL.Add('  select CKBH,CLBH,SIZ,Sum(RKQty) as NowRKQty from (');
    SQL.Add('  select OSRK.CKBH,OSRKSS.CLBH,OSRKSS.SIZ,SUM(OSRKSS.Qty) as RKQty from OSRKSS,OSRK ');
    SQL.Add('  where OSRKSS.RKNO=OSRK.RKNO  and OSRK.GSBH='''+main.Edit2.Text+''' and isnull(OSRK.flowflag,'''') <>''X''  ');
    SQL.Add('  Group by OSRK.CKBH,OSRKSS.CLBH,OSRKSS.SIZ ');
    SQL.Add('  Union All ');
    SQL.Add('  select CKBH,CLBH,SIZ,QTY as OutsoleRem from Outsolemonth where CKBH='''+main.Edit2.Text+''' and KCYEAR='''+ayear+''' and KCMonth='''+amonth+''' ) as tmpRKTLFL ');
    SQL.Add('  group by CKBH,CLBH,SIZ ) as NowKC');
    SQL.Add('left join ( ');
    SQL.Add('   select CKBH,CLBH,SIZ,QTY as LastRem from Outsolemonth where CKBH='''+main.Edit2.Text+''' and KCYEAR='''+ayear+''' and KCMonth='''+amonth+''' ) as OutsoleKC on NowKC.CKBH=OutsoleKC.CKBH and NowKC.CLBH=OutsoleKC.CLBH and NowKC.SIZ=OutsoleKC.SIZ');
    SQL.Add('left join ( ');
    SQL.Add('  select OSRK.CKBH,OSRKSS.CLBH,OSRKSS.SIZ,SUM(OSRKSS.Qty) as RKQty from OSRKSS,OSRK ');
    SQL.Add('  where OSRKSS.RKNO=OSRK.RKNO  and OSRK.GSBH='''+main.Edit2.Text+''' and isnull(OSRK.flowflag,'''') <>''X'' and convert(smalldatetime,convert(varchar,OSRK.UserDate,111)) between '''+formatdatetime('yyyy/MM/dd',startofthemonth(Date))+''' and '''+formatdatetime('yyyy/MM/dd',Date)+''' ');
    SQL.Add('  Group by OSRK.CKBH,OSRKSS.CLBH,OSRKSS.SIZ  ) RK on NowKC.CKBH=RK.CKBH and NowKC.CLBH=RK.CLBH and NowKC.SIZ=RK.SIZ');
    SQL.Add('left join ( ');
    SQL.Add('   select OSLL.CKBH,OSLLSS.CLBH,OSLLSS.SIZ,SUM(OSLLSS.Qty) as LLQty from OSLLSS,OSLL ');
    SQL.Add('   where OSLLSS.LLNO=OSLL.LLNO  and OSLL.CFMID<>''NO'' and OSLL.GSBH='''+main.Edit2.Text+''' and isnull(OSLL.flowflag,'''') <>''X'' and convert(smalldatetime,convert(varchar,OSLL.CFMDate,111)) between '''+formatdatetime('yyyy/MM/dd',startofthemonth(Date))+''' and '''+formatdatetime('yyyy/MM/dd',Date)+''' ');
    SQL.Add('   Group by OSLL.CKBH,OSLLSS.CLBH,OSLLSS.SIZ ) LL on NowKC.CKBH=LL.CKBH and NowKC.CLBH=LL.CLBH and NowKC.SIZ=LL.SIZ');
    //funcObj.WriteErrorLog(sql.Text);
    ExecSQL();
    Active:=false;
  end;
  //
  pgcPC1.ActivePage:=TSTS1;
  DTP1.Date:=date-7;
  DTP2.date:=date+1;
  DTP3.Date:=date-7;
  DTP4.date:=date+1;

end;

procedure TOutsoleborrow.DelMasAfterOpen(DataSet: TDataSet);
begin
  BB2.Enabled:=true;
  BB3.Enabled:=true;
  BB4.Enabled:=true;
  BBT1.Enabled:=true;
  BBT2.Enabled:=true;
  BBT3.Enabled:=true;
  BBT4.Enabled:=true;
  BBT6.Enabled:=true;
  DelDet.Active:=true;

  BB5.Enabled:=false;
  BB6.Enabled:=false;
  BD5.Enabled:=false;
  BD6.Enabled:=false;
end;

procedure TOutsoleborrow.BB2Click(Sender: TObject);
begin
  with DelMas do
  begin
      requestlive:=true;
      cachedupdates:=true;
      insert;
      if DBGridh3.columns[2].PickList.Count>0 then
      begin
        FieldByName('CKBH').Value:=DBGridh3.columns[2].PickList[0];
      end;
  end;
  btnBBTT1.Visible:=true;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
  DBGridh3.columns[3].ButtonStyle:=cbsEllipsis;
end;

procedure TOutsoleborrow.BB3Click(Sender: TObject);
begin
  
  if DelDet.recordcount=0 then
  begin
    with DelMas do
    begin
      requestlive:=true;
      cachedupdates:=true;
      edit;
      fieldbyname('YN').Value:='0';
    end;
  end else
  begin
    showmessage('Pls delete the Deliver Detail first.')
  end;
  btnBBTT1.Visible:=true;
  BB5.Enabled:=true;
  BB6.Enabled:=true;

end;

procedure TOutsoleborrow.BB4Click(Sender: TObject);
begin
  with DelMas do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
  DBGridh3.columns[3].ButtonStyle:=cbsEllipsis;
end;

procedure TOutsoleborrow.BB5Click(Sender: TObject);
var y,m,a:string;
    i:integer;
begin

  if DelMas.FieldByName('YN').value='5' then  //出貨鎖定，不得再開領料單
  begin
    showmessage('Already finished. Pls contact accounting first.' );
    abort;
  end;

  with query1 do          //取服務器的年月值
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
    DelMas.first;
    for i:=1 to DelMas.RecordCount do
      begin
        case DelMas.updatestatus of
          usinserted:
            begin
                    if DelMas.fieldbyname('DepID').isnull then
                      begin
                        DelMas.delete;
                      end
                      else
                        begin
                          with query1 do    //計算領料單流水號
                            begin
                              active:=false;
                              sql.Clear;
                              sql.Add('select top 1 LLNO from OSLL where LLNO like '+''''+'LP'+y+m+'%'+'''');
                              sql.add('order by LLNO DESC');
                              active:=true;
                              if recordcount >0 then
                                begin
                                  a:=fieldbyname('LLNO').AsString;
                                  a:=copy(a,9,7);
                                  a:=inttostr(strtoint(a)+1);
                                  while length(a)<5 do
                                    begin
                                      a:='0'+a;
                                    end;
                                end
                                  else
                                    begin
                                      a:='00001';
                                    end;
                              a :=y+m+a;
                              active:=false;
                            end;
                          DelMas.edit;
                          DelMas.fieldbyname('LLNO').Value:='LP'+a;
                          DelMas.fieldbyname('SB').Value:='LP';
                          if  DelMas.fieldbyname('SFL').IsNull then
                            DelMas.fieldbyname('SFL').Value:='1';
                          DelMas.fieldbyname('GSBH').Value:=main.Edit2.text;
                          DelMas.FieldByName('userID').Value:=main.edit1.text;
                          DelMas.FieldByName('userdate').Value:=formatdatetime('yyyy/MM/dd',Ndate);
                          DelMas.FieldByName('CFMID').Value:='NO';
                          DelMas.FieldByName('YN').Value:='1';
                          upMas.apply(ukinsert);
                        end;
            end;
          usmodified:
             begin
               if DelMas.FieldByName('USERID').value<>main.Edit1.Text then
                 begin
                   showmessage('不是你的，不要亂動。khong phai ban khong duoc tu sua');
                 end
                 else
                   begin
                     if DelMas.fieldbyname('YN').value='0'then
                       begin
                          DelMas.Edit;
                          DelMas.FieldByName('flowflag').Value := 'X';
                          upMas.apply(ukmodify);
                         {with BDelRec do
                           begin
                             active:=false;
                             sql.Clear;
                             sql.add('insert into BDelRec ');
                             sql.add('(TableName ,TNO,CLBH,OldID,DelID,DelDate)');
                             sql.add('values ('+''''+'OSLL'+''''+','+''''+DelMas.fieldbyname('LLNO').Value+'''');
                             sql.add(','+''''+' '+''''+','+''''+DelMas.fieldbyname('USERID').Value+''''+',');
                             sql.add(''''+main.Edit1.Text+''''+',getdate())');
                             execsql;
                             active:=false;
                           end;
                         upMas.apply(ukdelete); }
                       end
                       else
                         begin
                           if (DelMas.FieldByName('CFMID').value='NO')   then
                             begin
                               if (NDate-DelMas.FieldByName('USERDATE').value)<=7  then
                                 begin
                                   DelMas.edit;
                                   DelMas.FieldByName('userID').Value:=main.edit1.text;
                                   DelMas.FieldByName('userdate').Value:=formatdatetime('yyyy/MM/dd',Ndate);
                                   upMas.apply(ukmodify);
                                 end
                                 else
                                   begin
                                     showmessage('Date>7, can not modify.');
                                   end;
                             end
                             else
                               begin
                                 showmessage('Already confirmed, can not modify.');
                               end;
                         end;
                  end;
             end;
        end;
       DelMas.next;
      end;
  DelMas.active:=false;
  DelMas.cachedupdates:=false;
  DelMas.requestlive:=false;
  DelMas.active:=true;
  bb5.enabled:=false;
  bb6.enabled:=false;
  btnBBTT1.Visible:=false;
  DBGridh3.columns[3].ButtonStyle:=cbsnone;
  except
    Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
  end;

end;

procedure TOutsoleborrow.btnBBTT1Click(Sender: TObject);
begin
  Outsoleborrow_Dep:=TOutsoleborrow_Dep.Create(self);
  Outsoleborrow_Dep.Label3.Caption := 'Outsoleborrow';
  Outsoleborrow_Dep.Show;
end;

procedure TOutsoleborrow.BB6Click(Sender: TObject);
begin
  with DelMas do
  begin
    active:=false;
    requestlive:=false;
    cachedupdates:=false;
    active:=true;
  end;
  bb5.enabled:=false;
  bb6.enabled:=false;
  btnBBTT1.Visible:=false;
  DBGridh3.columns[3].ButtonStyle:=cbsnone;
end;

procedure TOutsoleborrow.DBGridh3EditButtonClick(Sender: TObject);
begin
  Outsoleborrow_Dep:=TOutsoleborrow_Dep.Create(self);
  Outsoleborrow_Dep.Show;
end;

procedure TOutsoleborrow.DelDetAfterOpen(DataSet: TDataSet);
begin
  BD2.Enabled:=true;
  BD3.Enabled:=true;
  BD4.Enabled:=true;
  btnBE1.Enabled:=true;
  btnBE2.Enabled:=true;
  btnBE3.Enabled:=true;
  btnBE6.Enabled:=true;
  BDT1.Enabled:=true;
  BDT2.Enabled:=true;
  BDT3.Enabled:=true;
  BDT4.Enabled:=true;
  BDT5.Enabled:=true;
  BDT6.Enabled:=true;
  BDT7.Enabled:=true;
  if (NDate-DelMas.FieldByName('USERDATE').value)>3  then
  begin
    BD2.Enabled:=false;
    BD3.Enabled:=false;
    BD4.Enabled:=false;
    btnBE1.Enabled:=false;
    btnBE2.Enabled:=false;
    btnBE3.Enabled:=false;
    btnBE6.Enabled:=false;
  end;
  if DelMas.FieldByName('CFMID').value<>'NO'  then
  begin
    BD2.Enabled:=false;
    BD3.Enabled:=false;
    BD4.Enabled:=false;
    btnBE1.Enabled:=false;
    btnBE2.Enabled:=false;
    btnBE3.Enabled:=false;
    btnBE6.Enabled:=false;
  end;
  if DelMas.FieldByName('USERID').value<>main.edit1.text  then
  begin
    BD2.Enabled:=false;
    BD3.Enabled:=false;
    BD4.Enabled:=false;
    btnBE1.Enabled:=false;
    btnBE2.Enabled:=false;
    btnBE3.Enabled:=false;
    btnBE6.Enabled:=false;
  end;
  if DelMas.cachedupdates  then
  begin
    BD2.Enabled:=false;
    BD3.Enabled:=false;
    BD4.Enabled:=false;
    btnBE1.Enabled:=false;
    btnBE2.Enabled:=false;
    btnBE3.Enabled:=false;
    btnBE6.Enabled:=false;
  end;  

  BD5.Enabled:=false;
  BD6.Enabled:=false;
  btnBE4.Enabled:=false;
  btnBE5.Enabled:=false;

end;

procedure TOutsoleborrow.pgcPC1Change(Sender: TObject);
begin
  if PGCPC1.ActivePage=TSTS2 then
  begin
    panel6.visible:=true;
    panel1.visible:=false;
  end else
  begin
    panel6.visible:=false;
    panel1.visible:=true;
  end;
end;

procedure TOutsoleborrow.BD7Click(Sender: TObject);
begin
close;
end;

procedure TOutsoleborrow.BD2Click(Sender: TObject);
begin

  if DelMas.RequestLive then
  begin
    showmessage('Pls save Master data first.');
    PGCPC1.ActivePage:=TSTS1;
    panel6.visible:=false;
    panel1.visible:=true;
    abort;
  end;

  with DelDet do
  begin
    requestlive:=true;
    cachedupdates:=true;
    insert;
  end;
  
btnBBTT2.Visible:=true;
BD2.Enabled:=FALSE;
BD3.Enabled:=FALSE;
BD4.Enabled:=FALSE;
BD5.Enabled:=true;
BD6.Enabled:=true;
//dbgrdh4.Columns[0].ButtonStyle:=cbsEllipsis;
end;

procedure TOutsoleborrow.BD3Click(Sender: TObject);
begin
  if DelMas.RequestLive then
  begin
    showmessage('Pls save Master data first.');
    PGCPC1.ActivePage:=TSTS1;
    panel6.visible:=false;
    panel1.visible:=true;
    abort;
  end;

  if KCLLSS.recordcount=0 then
  begin
    with DelDet do
    begin
      requestlive:=true;
      cachedupdates:=true;
      edit;
      fieldbyname('YN').Value:='0';
    end
  end else
  begin
   showmessage('Pls delete the Siz and Detail first.');
  end;
  BD5.Enabled:=true;
  BD6.Enabled:=true;
end;

procedure TOutsoleborrow.BD5Click(Sender: TObject);
var i:integer;
    Bookmark1:string;
begin
  try
    DelDet.first;
    for i:=1 to DelDet.RecordCount do
      begin
        case DelDet.updatestatus of
          usinserted:
            begin
              //SHOWMESSAGE('DICK1............INS');
              if DelMas.FieldByName('USERID').value<>main.Edit1.Text then
                begin
                  showmessage('不是你的，不要亂動。khong phai ban khong duoc tu sua');
                end
              else
                  begin
                    if DelDet.fieldbyname('CLBH').isnull then
                    begin
                        DelDet.delete;
                    end else
                    begin
                          //新增明細
                          DelDet.edit;
                          DelDet.fieldbyname('LLNO').Value:=DelMas.fieldbyname('LLNO').Value;
                          DelDet.fieldbyname('LLQTY').Value:='0';
                          DelDet.fieldbyname('RKQTY').Value:='0';
                          DelDet.FieldByName('userID').Value:=main.edit1.text;
                          DelDet.FieldByName('userdate').Value:=Ndate;
                          DelDet.FieldByName('YN').Value:='1';
                          upDet.apply(ukinsert);
                          //自動新增尺寸明細
                           with query1 do       //先刪除SS檔,再新增
                           begin
                              active:=false;
                              sql.Clear;
                              sql.add('DELETE OSLLSS   ');
                              sql.add('where OSLLSS.LLNO='+''''+DelDet.fieldbyname('LLNO').Value+'''');
                              sql.add('       and OSLLSS.CLBH='+''''+DelDet.fieldbyname('CLBH').Value+'''');
                              sql.add('INSERT into OSLLSS   ');
                              sql.add('select '''+DelDet.fieldbyname('LLNo').Value+''',CLBH,''Outsole'' ,SIZ,''0'',''0'',Qty ');
                              sql.add('       ,getdate() '  );
                              sql.add('       ,'''+main.edit1.text+''''  );
                              sql.add('       ,''1'' '  );
                              sql.add('       ,''VN''  ');
                              sql.add(' from #CLZLKC_Outsole   ');
                              sql.add(' where #CLZLKC_Outsole.CLBH='+''''+DelDet.fieldbyname('CLBH').Value+'''');
                              //funcObj.WriteErrorLog(sql.Text);
                              execsql;
                              //showmessage('dick1-------------mod1');
                              active:=false;
                              sql.Clear;
                              sql.add('UPDATE OSLLS set LLQTY=isnull((select isnull(SUM(QTY),0) AS SQTY ');
                              sql.add('                               from OSLLSS WHERE OSLLSS.LLNo=OSLLS.LLNo AND OSLLSS.CLBH=OSLLS.CLBH  ');
                              sql.add('                                    and OSLLSS.LLNo='+''''+DelDet.FieldByName('LLNO').Value+''''+' and OSLLSS.CLBH='+''''+DelDet.FieldByName('CLBH').Value+'''' );
                              sql.add('                             GROUP BY LLNo,CLBH),0) ');
                              sql.add('where OSLLS.LLNo='+''''+DelDet.FieldByName('LLNo').Value+''''+ ' and OSLLS.CLBH='+''''+DelDet.FieldByName('CLBH').Value+'''' );
                              //funcObj.WriteErrorLog(sql.Text);
                              execsql;
                              active:=false;
                              close;
                           end;
                    end;
                  end;
            end;

          usmodified:
             begin
               //SHOWMESSAGE('DICK1............MOD');
               if DelDet.FieldByName('USERID').value<>main.Edit1.Text then
               begin
                   showmessage('不是你的，不要亂動。khong phai ban khong duoc tu sua');
               end else
               begin
                     if DelDet.fieldbyname('YN').value='0'then
                     begin
                         with BDelRec do
                         begin
                             active:=false;
                             sql.Clear;
                             sql.add('insert into BDelRec ');
                             sql.add('(TableName ,TNO,CLBH,OldID,DelID,DelDate)');
                             sql.add('values ('+''''+'OSLLS'+''''+','+''''+DelDet.fieldbyname('LLNO').Value+'''');
                             sql.add(','+''''+DelDet.fieldbyname('CLBH').Value+''''+','+''''+DelDet.fieldbyname('USERID').Value+''''+',');
                             sql.add(''''+main.Edit1.Text+''''+',getdate())');
                             execsql;
                             active:=false;
                         end;
                         UpDet.apply(ukdelete);
                     end else
                     begin
                         DelDet.edit;
                         //DelDet.fieldbyname('Qty').value:=DelDet.fieldbyname('TempQty').value;
                         DelDet.FieldByName('userID').Value:=main.edit1.text;
                         DelDet.FieldByName('userdate').Value:=Ndate;
                         upDet.apply(ukmodify);
                         
                     end;
                   end;
               end;
        end;
        DelDet.next;
      end;
      
      with query1 do       //?
      begin
        active:=false;
        sql.Clear;
        sql.add('DELETE OSLLSS   ');
        sql.add(' where OSLLSS.LLNo='+''''+DelMas.fieldbyname('LLNo').Value+'''');
        sql.add('       and NOT EXISTS (SELECT OSLLS.LLNo FROM OSLLS WHERE OSLLS.LLNo=OSLLSS.LLNo AND OSLLSS.CLBH=OSLLS.CLBH ) ');
        //funcObj.WriteErrorLog(sql.Text);
        execsql;
        close;
      end;

  Delmas.Active:=false;
  Delmas.Active:=active;
  DelMas.Bookmark := Bookmark1;
  DelDet.active:=false;
  DelDet.cachedupdates:=false;
  DelDet.requestlive:=false;
  DelDet.active:=true;
  bb6.enabled:=false;
  btnBBTT2.Visible:=false;
  BD2.Enabled:=TRUE;
  BD3.Enabled:=TRUE;
  BD4.Enabled:=TRUE;
  BD5.Enabled:=false;
  BD6.Enabled:=false;
  //dbgrdh4.columns[0].ButtonStyle:=cbsNone;
  except
    Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
  end;
end;

procedure TOutsoleborrow.BD4Click(Sender: TObject);
begin
  if DelMas.RequestLive then
  begin
    showmessage('Pls save Master data first.');
    PGCPC1.ActivePage:=TSTS1;
    panel6.visible:=false;
    panel1.visible:=true;
    abort;
  end;

  with DelDet do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
  btnBBTT2.Visible:=true;  
  BD2.Enabled:=FALSE;
  BD3.Enabled:=FALSE;
  BD4.Enabled:=FALSE;
  BD5.Enabled:=true;
  BD6.Enabled:=true;

end;

procedure TOutsoleborrow.BD6Click(Sender: TObject);
begin

  with DelDet do
  begin
      active:=false;
      requestlive:=false;
      cachedupdates:=false;
      active:=true;
  end;
  btnBBTT2.Visible:=false;
  BD2.Enabled:=TRUE;
  BD3.Enabled:=TRUE;
  BD4.Enabled:=TRUE;
  BD5.Enabled:=false;
  BD6.Enabled:=false;

end;

procedure TOutsoleborrow.btnBBTT2Click(Sender: TObject);
begin
  if messagedlg('Phom giay RY hay mat tu ?',mtinformation,[mbYes,mbNo],0)=mrYes then
  begin
    Outsoleborrow_RY:=TOutsoleborrow_RY.create(self);
    Outsoleborrow_RY.show;
  end else
  begin
    Outsoleborrow_CL:=TOutsoleborrow_CL.create(self);
    Outsoleborrow_CL.show;
  end;

end;

procedure TOutsoleborrow.dbgrdh4EditButtonClick(Sender: TObject);
begin
  btnBBTT2Click(nil);
end;

procedure TOutsoleborrow.BDT1Click(Sender: TObject);
begin
  DelDet.First;
end;

procedure TOutsoleborrow.BDT2Click(Sender: TObject);
begin
  DelDet.prior;
end;

procedure TOutsoleborrow.BDT3Click(Sender: TObject);
begin
  DelDet.next;
end;

procedure TOutsoleborrow.BDT4Click(Sender: TObject);
begin
  DelDet.last;
end;

procedure TOutsoleborrow.BDT5Click(Sender: TObject);
begin

  if DelDet.RequestLive then
  begin
    showmessage('Pls save data first.');
    abort;
  end else
  begin
    Outsoleborrow_PrintA4:=TOutsoleborrow_PrintA4.create(nil);
    Outsoleborrow_PrintA4.quickrep1.prepare;
    Outsoleborrow_PrintA4.Qpage1.caption:=inttostr(Outsoleborrow_PrintA4.quickrep1.QRPrinter.pagecount);
    Outsoleborrow_PrintA4.quickrep1.preview;
    Outsoleborrow_PrintA4.free;
  end;

  with DelMas do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
    if fieldbyname('PMARK').isnull then
    begin
      fieldbyname('PMARK').value:=1;
    end else
    begin
      fieldbyname('PMARK').value:=fieldbyname('PMARK').value+1;
    end;
    UPMAS.Apply(ukmodify);
    requestlive:=false;
    cachedupdates:=false;
  end;
end;

procedure TOutsoleborrow.DBGridh3DblClick(Sender: TObject);
begin
  if  DelMas.Active then
  begin
    if  (DelMas.recordcount>0) then
    begin
        PGCPC1.ActivePage:=TSTS2;
        panel1.Visible:=false;
        panel6.Visible:=true;
    end;
  end;
end;

procedure TOutsoleborrow.FormDestroy(Sender: TObject);
begin
   Outsoleborrow:=nil;
end;

procedure TOutsoleborrow.btnBE1Click(Sender: TObject);
begin
  if DelMas.RequestLive then
  begin
    showmessage('Pls save Master data first.');
    PGCPC1.ActivePage:=TSTS1;
    panel6.visible:=false;
    panel1.visible:=true;
    abort;
  end;
  if DelDet.RequestLive then
  begin
    showmessage('Pls save Detail data first.');
    abort;
  end;
  dbgrdh4.Enabled:=false;
  with KCLLSS do
  begin
    requestlive:=true;
    cachedupdates:=true;
    insert;
  end;
  BTNBE2.Enabled:=FALSE;
  BTNBE3.Enabled:=FALSE;
  BTNBE4.Enabled:=true;
  BTNBE5.Enabled:=true;

end;

procedure TOutsoleborrow.btnBE5Click(Sender: TObject);
begin
  with KCLLSS do
  begin
    active:=false;
    requestlive:=false;
    cachedupdates:=false;
    active:=true;
  end;
  dbgrdh4.Enabled:=true;
  btnBE1.Enabled:=TRUE;
  btnBE2.Enabled:=TRUE;
  btnBE3.Enabled:=TRUE;
  btnBE4.Enabled:=false;
  btnBE5.Enabled:=false;
  //BBTT3.Visible:=FALSE;
  //dbgrid6.columns[0].ButtonStyle:=cbsNone;
end;

procedure TOutsoleborrow.btnBE2Click(Sender: TObject);
begin

  if DelMas.RequestLive then
  begin
      showmessage('Pls save Master data first.');
      pgcPC1.ActivePage:=TSTS2;
      panel6.visible:=false;
      panel1.visible:=true;
      abort;
  end;

  if DelDet.RequestLive then
  begin
      showmessage('Pls save Detail data first.');
      abort;
  end;

  dbgrdh4.Enabled:=false;

  with KCLLSS do
  begin
      requestlive:=true;
      cachedupdates:=true;
      edit;
      fieldbyname('YN').Value:='0'; //刪除記號
  end;

  btnBE1.Enabled:=FALSE;
  btnBE3.Enabled:=FALSE;
  btnBE4.Enabled:=true;
  btnBE5.Enabled:=true;
  //dbgrid6.columns[0].ButtonStyle:=cbsEllipsis;
end;

procedure TOutsoleborrow.btnBE3Click(Sender: TObject);
begin
  if DelMas.RequestLive then
  begin
    showmessage('Pls save Master data first.');
    pgcPC1.ActivePage:=TSTS2;
    panel6.visible:=false;
    panel1.visible:=true;
    abort;
  end;
  if DelDet.RequestLive then
  begin
    showmessage('Pls save Detail data first.');
    abort;
  end;
  dbgrdh4.Enabled:=false;
  with KCLLSS do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
  btnBE1.Enabled:=FALSE;
  btnBE2.Enabled:=FALSE;
  btnBE4.Enabled:=true;
  btnBE5.Enabled:=true;
  //  dbgrid6.columns[2].ButtonStyle:=cbsAuto;
end;

procedure TOutsoleborrow.btnBE4Click(Sender: TObject);
var i:integer;
    Qty:real;
begin

    try
      KCLLSS.first;
      for i:=1 to KCLLSS.RecordCount do
        begin
          case KCLLSS.updatestatus of
            usinserted:     //新增狀態
              begin
                if KCLLSS.fieldbyname('SIZ').isnull then
                begin
                    KCLLSS.delete;
                end else
                begin
                    //----
                    if KCLLSS.FieldByName('TempQTY').Value-KCLLSS.FieldByName('KCQTY').Value>=0 then
                    begin
                      showmessage('QTY>Stock QTY,Please check');
                      abort;
                    end;
                    //----
                    KCLLSS.edit;
                    KCLLSS.fieldbyname('LLNO').Value:=DelDet.fieldbyname('LLNO').value;
                    KCLLSS.fieldbyname('CLBH').Value:=DelDet.fieldbyname('CLBH').value;
                    KCLLSS.fieldbyname('ZLBH').Value:='Outsole';
                    KCLLSS.fieldbyname('Qty').Value:=KCLLSS.fieldbyname('TempQty').Value;
                    KCLLSS.FieldByName('userID').Value:=main.edit1.text;
                    KCLLSS.FieldByName('userdate').Value:=date;
                    KCLLSS.FieldByName('YN').Value:='1';
                    UpdateSQL1.apply(ukinsert);
                  end;
              end;

            usmodified:   //修改狀態
               begin
                if KCLLSS.fieldbyname('YN').value='0' then
                begin
                    UpdateSQL1.apply(ukdelete);
                end else
                begin
                    if (NDate-DelMas.FieldByName('USERDATE').value)<60  then
                    begin
                        //----
                        if KCLLSS.FieldByName('TempQTY').Value-KCLLSS.FieldByName('KCQTY').Value>0 then
                          begin
                            showmessage('QTY > Stock QTY,Please check');
                            abort;
                          end;
                        //----
                        KCLLSS.edit;
                        KCLLSS.fieldbyname('Qty').Value:=KCLLSS.fieldbyname('TempQty').Value;
                        KCLLSS.FieldByName('userID').Value:=main.edit1.text;
                        KCLLSS.FieldByName('userdate').Value:=date;
                        UpdateSQL1.apply(ukmodify);
                    end else
                    begin
                        showmessage('Date>60, can not modify.');
                    end;
                end;
               end;
          end;
          KCLLSS.next;
        end;

        with query1 do
        begin
          active:=false;
          sql.Clear;
          sql.add('DELETE OSLLSS   ');
          sql.add(' where OSLLSS.LLNo='+''''+DelMas.fieldbyname('LLNo').Value+'''');
          sql.add('       and NOT EXISTS (SELECT OSLLS.LLNo FROM OSLLS WHERE OSLLS.LLNo=OSLLSS.LLNo AND OSLLS.CLBH=OSLLSS.CLBH ) ');
          execsql;
          active:=false;
          sql.Clear;
          sql.add('DELETE OSLLSS   ');
          sql.add(' where OSLLSS.LLNo='+''''+DelMas.fieldbyname('LLNo').Value+'''');
          sql.Add(' and QTY=''0'' ');
          execsql;
          //統計尺寸明細數量--寫數領料單身
          active:=false;
          sql.Clear;
          sql.add('UPDATE OSLLS ');
          sql.add('set LLQTY=isnull((select isnull(SUM(QTY),0) AS SQTY ');
          sql.add('                  from OSLLSS ');
          sql.add('                  WHERE 1=1');
          sql.add('                        and OSLLSS.LLNo='+''''+DelDet.FieldByName('LLNO').Value+''''+' and OSLLSS.CLBH='+''''+DelDet.FieldByName('CLBH').Value+'''' );
          sql.add('                  GROUP BY LLNo,CLBH),0) ');
          sql.add(' where OSLLS.LLNo='+''''+DelDet.FieldByName('LLNo').Value+''''+ ' and OSLLS.CLBH='+''''+DelDet.FieldByName('CLBH').Value+'''' );
          execsql;
          close;
        end;

    //關掉尺寸明細數量檔--的異動狀態
    //
    DelDet.Active:=false;
    DelDet.Active:=active;
    KCLLSS.active:=false;
    KCLLSS.cachedupdates:=false;
    KCLLSS.requestlive:=false;
    KCLLSS.active:=true;
    btnBE1.Enabled:=TRUE;
    btnBE2.Enabled:=TRUE;
    btnBE3.Enabled:=TRUE;
    btnBE4.Enabled:=false;
    btnBE5.Enabled:=false;
    dbgrdh4.Enabled:=true;
  except
    Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
  end;
end;

procedure TOutsoleborrow.pgcPC1Changing(Sender: TObject;
  var AllowChange: Boolean);
begin
  if btnbe4.Enabled then
    allowchange:=false;
end;

procedure TOutsoleborrow.DBGridh3GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if DelMas.FieldByName('YN').value='0' then
  begin
    DBGridh3.canvas.font.color:=clred;
  end;
end;

procedure TOutsoleborrow.dbgrdh4GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if DelDet.FieldByName('YN').value='0' then
  begin
    dbgrdh4.canvas.font.color:=clred;
  end;

  if DelDet.FieldByName('LLNO').isnull then
  begin
    dbgrdh4.canvas.font.color:=clBLUE;
  end;

end;

procedure TOutsoleborrow.DBGrid6Columns2NotInList(Sender: TObject;
  NewText: String; var RecheckInList: Boolean);
begin
   showmessage('Pls select Stage from list ,can not alter by manually.');
   abort;
end;

procedure TOutsoleborrow.DBGrid6Columns3NotInList(Sender: TObject;
  NewText: String; var RecheckInList: Boolean);
begin
   showmessage('Pls select Size from list ,can not alter by manually.');
   abort;
end;

procedure TOutsoleborrow.DBGrid6Columns4NotInList(Sender: TObject;
  NewText: String; var RecheckInList: Boolean);
begin
   showmessage('Pls select Size from list ,can not alter by manually.');
   abort;
end;

procedure TOutsoleborrow.dbgrdh6Columns0NotInList(Sender: TObject;
  NewText: String; var RecheckInList: Boolean);
begin
  showmessage('Pls select Size from list ,can not alter by manually.');
  abort;
end;

procedure TOutsoleborrow.BDT7Click(Sender: TObject);
begin

  if DelDet.RequestLive then
  begin
    showmessage('Pls save data first.');
    abort;
  end else
  begin
    Outsoleborrow_S:=TOutsoleborrow_S.create(nil);
    Outsoleborrow_S.quickrep1.prepare;
    //Outsoleborrow_S.Qpage1.caption:=inttostr(Outsoleborrow_S.quickrep1.QRPrinter.pagecount);
    Outsoleborrow_S.quickrep1.preview;
    Outsoleborrow_S.free;
  end;
  {with DelMas do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
    if fieldbyname('PMARK').isnull then
    begin
      fieldbyname('PMARK').value:=1;
    end else
    begin
      fieldbyname('PMARK').value:=fieldbyname('PMARK').value+1;
    end;
    UPMAS.Apply(ukmodify);
    requestlive:=false;
    cachedupdates:=false;
  end;  }
  
end;

procedure TOutsoleborrow.dbgrdh6GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin

  if KCLLSS.FieldByName('QTY').value-KCLLSS.FieldByName('TempQTY').value>=0 then
  begin
    dbgrdh6.canvas.font.color:=clblue;
  end;
  if KCLLSS.FieldByName('YN').value='0'  then
  begin
    dbgrdh6.canvas.font.color:=clred;
  end;  
end;

procedure TOutsoleborrow.btnBE6Click(Sender: TObject);
begin
  if DelMas.RequestLive then
  begin
    Showmessage('Pls save Master data first.');
    pgcPC1.ActivePage:=TSTS2;
    panel6.visible:=false;
    panel1.visible:=true;
    abort;
  end;

  if DelDet.RequestLive then
  begin
      showmessage('Pls save Detail data first.');
      abort;
  end;

  with KCLLSS do
  begin
    requestlive:=true;
    cachedupdates:=true;
    First;
    while not Eof do
    begin
     Edit;
     fieldbyname('YN').Value:='0'; //刪除記號
     Next;
    end;
  end;

  btnBE4.Enabled:=true;
  btnBE5.Enabled:=true;
end;

end.
