unit LYV_TLborrow1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, DB, DBTables, comobj,
  DBCtrls, ComCtrls, Menus, Mask, dateutils, Grids, DBGrids, GridsEh, DBGridEh;

type
  TLYV_TLborrow = class(TForm)
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
    btnBE6: TBitBtn;
    DelMasCKBH_Memo: TStringField;
    DelMasSFL: TStringField;
    DelMasSFL_DESC: TStringField;
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
    procedure DBGrid6Columns2NotInList(Sender: TObject; NewText: string;
      var RecheckInList: Boolean);
    procedure DBGrid6Columns3NotInList(Sender: TObject; NewText: string;
      var RecheckInList: Boolean);
    procedure DBGrid6Columns4NotInList(Sender: TObject; NewText: string;
      var RecheckInList: Boolean);
    procedure dbgrdh6Columns0NotInList(Sender: TObject; NewText: string;
      var RecheckInList: Boolean);
    procedure BDT7Click(Sender: TObject);
    procedure dbgrdh6GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure btnBE6Click(Sender: TObject);
  private
    ZLBH_Value: string;
    { Private declarations }
    procedure LTLLSS_ZLBH_Value();
  public
    { Public declarations }
  end;

var
  LYV_TLborrow: TLYV_TLborrow;
  sdate, edate, NDate: Tdate;

implementation

uses main1, TLBorrow_Dep1, TLBorrow_CL1, LYV_TLborrow_PrintA41,
  LYV_TLborrow_S1, TLBorrow_RY1, FunUnit;

{$R *.dfm}

procedure TLYV_TLborrow.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if BB5.enabled then
  begin
    messagedlg('You have to save data Record of report first.', mtwarning, [mbyes], 0);
    pgcPC1.ActivePage := TSTS1;
    panel1.Visible := true;
    panel6.Visible := false;
    action := canone;
  end
  else
  begin
    if BD5.enabled then
    begin
      messagedlg('You have to save data Report first.', mtwarning, [mbyes], 0);
      pgcPC1.ActivePage := TSTS2;
      panel1.Visible := false;
      panel6.Visible := true;
      action := canone;
    end
    else if btnBE4.Enabled then
    begin
      messagedlg('You have to save data Report first.', mtwarning, [mbyes], 0);
      pgcPC1.ActivePage := TSTS2;
      panel1.Visible := false;
      panel6.Visible := true;
      action := canone;
    end
    else
    begin
      action := Cafree;
    end;
  end;
end;

procedure TLYV_TLborrow.btn2Click(Sender: TObject);
var
  y, m: word;
begin

  with DelMas do
  begin
    active := false;
    sql.Clear;
    sql.add('select LTLL.*,BDepartment.DepName,LastKCCK.Memo as CKBH_Memo,Case when LTLL.SFL=''1'' then ''Muon借出'' when LTLL.SFL=''2'' then ''BO PHE報廢'' end as SFL_DESC ');
    sql.add('from LTLL');
    sql.add('left join BDepartment on LTLL.DepID=BDepartment.ID ');
    sql.add('Left join LastKCCK on LTLL.CKBH=LastKCCK.CKBH ');
    sql.add('where LTLL.SB=''T'' and LTLL.GSBH=''' + main.edit2.text + ''' and isnull(LTLL.flowflag,'''') <>''X'' ');
    if Edt1.TEXT <> '' then
      sql.add(' AND LTLL.LLNO LIKE ''' + edt1.Text + '%''');
    if Edt2.TEXT <> '' then
      sql.add(' AND LTLL.DepID LIKE ''' + Edt2.Text + '%''');
    if RB1.Checked = true then
    begin
      sql.add('    and convert(smalldatetime,convert(varchar,LTLL.USERDATE,111)) between ');
      sql.add('''' + formatdatetime('yyyy/MM/dd', DTP1.Date) + ''' and  ''' + formatdatetime('yyyy/MM/dd', DTP2.Date) + '''');
    end;
    if RB2.Checked = true then
    begin
      sql.add('    and convert(smalldatetime,convert(varchar,LTLL.Plandate,111)) between ');
      sql.add('''' + formatdatetime('yyyy/MM/dd', DTP3.Date) + ''' and  ''' + formatdatetime('yyyy/MM/dd', DTP4.Date) + '''');
    end;
    if Chk2.Checked then
    begin
      sql.Add('and LTLL.USERID=''' + main.Edit1.Text + '''');
    end;
    sql.Add('and LTLL.GSBH = ''' + main.Edit2.Text + ''' ');
    sql.add('order by LTLL.LLNO DESC');
    active := true;
  end;
  DelMas.Active := true;
  KCLLSS.Active := true;
  pnl2.Visible := false;
end;

procedure TLYV_TLborrow.BB1Click(Sender: TObject);
begin
  pgcPC1.ActivePage := TSTS1;
  pnl2.Visible := true;
  Edt1.SetFocus;
end;

procedure TLYV_TLborrow.BB7Click(Sender: TObject);
begin
  close;
end;

procedure TLYV_TLborrow.BBT1Click(Sender: TObject);
begin
  DelMas.First;
end;

procedure TLYV_TLborrow.BBT2Click(Sender: TObject);
begin
  DelMas.Prior;
end;

procedure TLYV_TLborrow.BBT3Click(Sender: TObject);
begin
  DelMas.Next;
end;

procedure TLYV_TLborrow.BBT4Click(Sender: TObject);
begin
  DelMas.Last;
end;

procedure TLYV_TLborrow.FormCreate(Sender: TObject);
var
  year, month, day: word;
  i: integer;
  ayear, amonth: string;
begin

  decodedate(Date, Year, Month, Day); //找庫存相關的數據
  incAMonth(Year, Month, Day, -1);
  ayear := floattostr(year);
  amonth := floattostr(month);
  if length(amonth) = 1 then
    amonth := '0' + amonth;
  //
  query1.Close;
  query1.SQL.Text := 'Select top 1 KCYEAR,KCMonth from Lastmonth order by Userdate desc';
  query1.Open;
  ayear := query1.Fields[0].AsString;
  amonth := query1.Fields[1].AsString;
  with query1 do
  begin
    active := false;
    sql.Clear;
    sql.add('select CKBH from LastKCCK WHERE GSBH=''' + main.Edit2.text + ''' and LB=''05'' order by CKBH');
    active := true;
    DBGridh3.Columns[3].PickList.Clear;
    for i := 1 to recordcount do
    begin
      DBGridh3.Columns[2].PickList.Add(fieldbyname('CKBH').asstring);
      next;
    end;
    active := false;
    sql.Clear;
    sql.add('select getdate() as NDate ');
    active := true;
    NDate := fieldbyname('NDate').Value;
  end;
  //
  with query1 do
  begin
    Active := false;
    SQL.Clear;
    sql.add('  if object_id(''tempdb..#CLZLKC_Last'') is not null  ');
    sql.add('begin   drop table #CLZLKC_Last end   ');
    SQL.Add('select NowKC.CKBH,NowKC.CLBH,NowKC.SIZ,IsNull(NowKC.NowRKQty,0)-IsNull(LL.LLQty,0) as Qty,LastKC.LastRem,RK.RKQty,LL.LLQty into #CLZLKC_Last from (');
    SQL.Add('  select CKBH,CLBH,SIZ,Sum(RKQty) as NowRKQty from (');
    SQL.Add('  select LTRK.CKBH,LTRKSS.CLBH,LTRKSS.SIZ,SUM(LTRKSS.Qty) as RKQty from LTRKSS,LTRK ');
    SQL.Add('  where LTRKSS.RKNO=LTRK.RKNO  and LTRK.CKBH in (Select CKBH from LastKCCK where LB=''05'' and GSBH=''' +
      main.Edit2.Text + ''' )   and convert(smalldatetime,convert(varchar,LTRK.UserDate,111)) between ''' +
      formatdatetime('yyyy/MM/dd', startofthemonth(Date)) + ''' and ''' + formatdatetime('yyyy/MM/dd', Date) + ''' ');
    SQL.Add('  Group by LTRK.CKBH,LTRKSS.CLBH,LTRKSS.SIZ ');
    SQL.Add('  Union All ');
    SQL.Add('  select CKBH,CLBH,SIZ,QTY as LastRem from Lastmonth where CKBH in (Select CKBH from LastKCCK where LB=''05'' and GSBH=''' + main.Edit2.Text + ''' )  and KCYEAR=''' + ayear + ''' and KCMonth=''' + amonth + ''' ) as tmpRKTLFL ');
    SQL.Add('  group by CKBH,CLBH,SIZ ) as NowKC');
    SQL.Add('left join ( ');
    SQL.Add('   select CKBH,CLBH,SIZ,QTY as LastRem from Lastmonth where CKBH in (Select CKBH from LastKCCK where LB=''05'' and GSBH=''' + main.Edit2.Text + ''' )  and KCYEAR=''' + ayear + ''' and KCMonth=''' + amonth +
      ''' ) as LastKC on NowKC.CKBH=LastKC.CKBH and NowKC.CLBH=LastKC.CLBH and NowKC.SIZ=LastKC.SIZ');
    SQL.Add('left join ( ');
    SQL.Add('  select LTRK.CKBH,LTRKSS.CLBH,LTRKSS.SIZ,SUM(LTRKSS.Qty) as RKQty from LTRKSS,LTRK ');
    SQL.Add('  where LTRKSS.RKNO=LTRK.RKNO  and LTRK.CKBH in (Select CKBH from LastKCCK where LB=''05'' and GSBH=''' +
      main.Edit2.Text + ''' ) and convert(smalldatetime,convert(varchar,LTRK.UserDate,111)) between ''' +
      formatdatetime('yyyy/MM/dd', startofthemonth(Date)) + ''' and ''' + formatdatetime('yyyy/MM/dd', Date) + ''' ');
    SQL.Add('  Group by LTRK.CKBH,LTRKSS.CLBH,LTRKSS.SIZ  ) RK on NowKC.CKBH=RK.CKBH and NowKC.CLBH=RK.CLBH and NowKC.SIZ=RK.SIZ');
    SQL.Add('left join ( ');
    SQL.Add('   select LTLL.CKBH,LTLLSS.CLBH,LTLLSS.SIZ,SUM(LTLLSS.Qty) as LLQty from LTLLSS,LTLL ');
    SQL.Add('   where LTLLSS.LLNO=LTLL.LLNO  and LTLL.CFMID<>''NO'' and LTLL.CKBH=''' + main.Edit2.Text +
      ''' and convert(smalldatetime,convert(varchar,LTLL.CFMDate,111)) between ''' + formatdatetime('yyyy/MM/dd',
      startofthemonth(Date)) + ''' and ''' + formatdatetime('yyyy/MM/dd', Date) + ''' ');
    SQL.Add('   Group by LTLL.CKBH,LTLLSS.CLBH,LTLLSS.SIZ ) LL on NowKC.CKBH=LL.CKBH and NowKC.CLBH=LL.CLBH and NowKC.SIZ=LL.SIZ');
    ExecSQL();
    Active := false;
  end;
  //
  pgcPC1.ActivePage := TSTS1;
  DTP1.Date := date - 7;
  DTP2.date := date + 1;
  DTP3.Date := date - 7;
  DTP4.date := date + 1;

end;

procedure TLYV_TLborrow.DelMasAfterOpen(DataSet: TDataSet);
begin
  BB2.Enabled := true;
  BB3.Enabled := true;
  BB4.Enabled := true;
  BBT1.Enabled := true;
  BBT2.Enabled := true;
  BBT3.Enabled := true;
  BBT4.Enabled := true;
  BBT6.Enabled := true;
  DelDet.Active := true;

  BB5.Enabled := false;
  BB6.Enabled := false;
  BD5.Enabled := false;
  BD6.Enabled := false;
end;

procedure TLYV_TLborrow.BB2Click(Sender: TObject);
begin
  with DelMas do
  begin
    requestlive := true;
    cachedupdates := true;
    insert;
    if DBGridh3.columns[2].PickList.Count > 0 then
    begin
      FieldByName('CKBH').Value := DBGridh3.columns[2].PickList[0];
    end;
  end;
  btnBBTT1.Visible := true;
  BB5.Enabled := true;
  BB6.Enabled := true;
  DBGridh3.columns[4].ButtonStyle := cbsEllipsis;
end;

procedure TLYV_TLborrow.BB3Click(Sender: TObject);
begin
  if (DelMas.FieldByName('CFMID').value <> 'NO') then
  begin
    ShowMessage('Already Comfirm.');
    Exit;
  end;

  if DelDet.recordcount = 0 then
  begin
    with DelMas do
    begin
      requestlive := true;
      cachedupdates := true;
      edit;
      fieldbyname('YN').Value := '0';
    end;
  end
  else
  begin
    showmessage('Pls delete the Deliver Detail first.')
  end;
  btnBBTT1.Visible := true;
  BB5.Enabled := true;
  BB6.Enabled := true;
end;

procedure TLYV_TLborrow.BB4Click(Sender: TObject);
begin
  if (DelMas.FieldByName('CFMID').value <> 'NO') then
  begin
    ShowMessage('Already Comfirm.');
    Exit;
  end;
  with DelMas do
  begin
    requestlive := true;
    cachedupdates := true;
    edit;
  end;

  BB5.Enabled := true;
  BB6.Enabled := true;
  DBGridh3.columns[4].ButtonStyle := cbsEllipsis;
end;

procedure TLYV_TLborrow.BB5Click(Sender: TObject);
var
  y, m, a: string;
  i: integer;
begin

  if DelMas.FieldByName('YN').value = '5' then //出貨鎖定，不得再開領料單
  begin
    showmessage('Already finished. Pls contact accounting first.');
    abort;
  end;

  with query1 do //取服務器的年月值
  begin
    active := false;
    sql.Clear;
    sql.Add('select year(getdate()) as FY,month(getdate()) as FM,getdate() as NDate ');
    active := true;
    NDate := fieldbyname('NDate').value;
    y := fieldbyname('FY').asstring;
    m := fieldbyname('FM').asstring;
    active := false;
  end;
  if length(m) < 2 then
    m := '0' + m;

  try
    DelMas.first;
    for i := 1 to DelMas.RecordCount do
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
              with query1 do //計算領料單流水號
              begin
                active := false;
                sql.Clear;
                sql.Add('select top 1 LLNO from LTLL where LLNO like ''LP' + y + m + '%''');
                sql.add('order by LLNO DESC');
                active := true;
                if recordcount > 0 then
                begin
                  a := fieldbyname('LLNO').AsString;
                  a := copy(a, 9, 7);
                  a := inttostr(strtoint(a) + 1);
                  while length(a) < 5 do
                  begin
                    a := '0' + a;
                  end;
                end
                else
                begin
                  a := '00001';
                end;
                a := y + m + a;
                active := false;
              end;
              DelMas.edit;
              DelMas.fieldbyname('LLNO').Value := 'LP' + a;
              DelMas.fieldbyname('SB').Value := 'T';
              if DelMas.fieldbyname('SFL').IsNull then
                DelMas.fieldbyname('SFL').Value := '1';
              DelMas.fieldbyname('GSBH').Value := main.Edit2.text;
              DelMas.FieldByName('userID').Value := main.edit1.text;
              DelMas.FieldByName('userdate').Value := formatdatetime('yyyy/MM/dd', Ndate);
              DelMas.FieldByName('CFMID').Value := 'NO';
              DelMas.FieldByName('YN').Value := '1';
              upMas.apply(ukinsert);
            end;
          end;
        usmodified:
          begin
            if DelMas.FieldByName('USERID').value <> main.Edit1.Text then
            begin
              showmessage('不是你的，不要亂動。khong phai ban khong duoc tu sua');
            end
            else
            begin
              if DelMas.fieldbyname('YN').value = '0' then
              begin
                DelMas.Edit;
                DelMas.FieldByName('flowflag').Value := 'X';
                upMas.apply(ukmodify);
              end
              else
              begin
                if (DelMas.FieldByName('CFMID').value = 'NO') then
                begin
                  if (NDate - DelMas.FieldByName('USERDATE').value) <= 7 then
                  begin
                    DelMas.edit;
                    DelMas.FieldByName('userID').Value := main.edit1.text;
                    DelMas.FieldByName('userdate').Value := formatdatetime('yyyy/MM/dd', Ndate);
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
    DelMas.active := false;
    DelMas.cachedupdates := false;
    DelMas.requestlive := false;
    DelMas.active := true;
    bb5.enabled := false;
    bb6.enabled := false;
    btnBBTT1.Visible := false;
    DBGridh3.columns[4].ButtonStyle := cbsnone;
  except
    Messagedlg('Have wrong, can not save data!', mtwarning, [mbyes], 0);
  end;

end;

procedure TLYV_TLborrow.btnBBTT1Click(Sender: TObject);
begin
  TLBorrow_Dep := TTLBorrow_Dep.Create(self);
  TLBorrow_Dep.Show;
end;

procedure TLYV_TLborrow.BB6Click(Sender: TObject);
begin
  with DelMas do
  begin
    active := false;
    requestlive := false;
    cachedupdates := false;
    active := true;
  end;
  bb5.enabled := false;
  bb6.enabled := false;
  btnBBTT1.Visible := false;
  DBGridh3.columns[4].ButtonStyle := cbsnone;
end;

procedure TLYV_TLborrow.DBGridh3EditButtonClick(Sender: TObject);
begin
  TLBorrow_Dep := TTLBorrow_Dep.Create(self);
  TLBorrow_Dep.Show;
end;

procedure TLYV_TLborrow.DelDetAfterOpen(DataSet: TDataSet);
begin
  BD2.Enabled := true;
  BD3.Enabled := true;
  BD4.Enabled := true;
  btnBE1.Enabled := true;
  btnBE2.Enabled := true;
  btnBE6.Enabled := true;
  btnBE3.Enabled := true;

  BDT1.Enabled := true;
  BDT2.Enabled := true;
  BDT3.Enabled := true;
  BDT4.Enabled := true;
  BDT5.Enabled := true;
  BDT6.Enabled := true;
  BDT7.Enabled := true;
  if (NDate - DelMas.FieldByName('USERDATE').value) > 3 then
  begin
    BD2.Enabled := false;
    BD3.Enabled := false;
    BD4.Enabled := false;
    btnBE1.Enabled := false;
    btnBE2.Enabled := false;
    btnBE6.Enabled := false;
    btnBE3.Enabled := false;
  end;
  if DelMas.FieldByName('CFMID').value <> 'NO' then
  begin
    BD2.Enabled := false;
    BD3.Enabled := false;
    BD4.Enabled := false;
    btnBE1.Enabled := false;
    btnBE2.Enabled := false;
    btnBE6.Enabled := false;
    btnBE3.Enabled := false;

  end;
  if DelMas.FieldByName('USERID').value <> main.Edit1.text then
  begin
    BD2.Enabled := false;
    BD3.Enabled := false;
    BD4.Enabled := false;
    btnBE1.Enabled := false;
    btnBE2.Enabled := false;
    btnBE6.Enabled := false;
    btnBE3.Enabled := false;
  end;
  if DelMas.cachedupdates then
  begin
    BD2.Enabled := false;
    BD3.Enabled := false;
    BD4.Enabled := false;
    btnBE1.Enabled := false;
    btnBE2.Enabled := false;
    btnBE6.Enabled := false;
    btnBE3.Enabled := false;
  end;

  BD5.Enabled := false;
  BD6.Enabled := false;
  btnBE4.Enabled := false;
  btnBE5.Enabled := false;
end;

procedure TLYV_TLborrow.pgcPC1Change(Sender: TObject);
begin
  if PGCPC1.ActivePage = TSTS2 then
  begin
    panel6.visible := true;
    panel1.visible := false;
  end
  else
  begin
    panel6.visible := false;
    panel1.visible := true;
  end;
end;

procedure TLYV_TLborrow.BD7Click(Sender: TObject);
begin
  close;
end;

procedure TLYV_TLborrow.BD2Click(Sender: TObject);
begin
  if (DelMas.FieldByName('CFMID').value <> 'NO') then
  begin
    ShowMessage('Already Comfirm.');
    Exit;
  end;

  if DelMas.RequestLive then
  begin
    showmessage('Pls save Master data first.');
    PGCPC1.ActivePage := TSTS1;
    panel6.visible := false;
    panel1.visible := true;
    abort;
  end;

  with DelDet do
  begin
    requestlive := true;
    cachedupdates := true;
    insert;
  end;

  btnBBTT2.Visible := true;
  BD2.Enabled := FALSE;
  BD3.Enabled := FALSE;
  BD4.Enabled := FALSE;
  BD5.Enabled := true;
  BD6.Enabled := true;
  //dbgrdh4.Columns[0].ButtonStyle:=cbsEllipsis;
end;

procedure TLYV_TLborrow.BD3Click(Sender: TObject);
begin
  if (DelMas.FieldByName('CFMID').value <> 'NO') then
  begin
    ShowMessage('Already Comfirm.');
    Exit;
  end;
  if DelMas.RequestLive then
  begin
    showmessage('Pls save Master data first.');
    PGCPC1.ActivePage := TSTS1;
    panel6.visible := false;
    panel1.visible := true;
    abort;
  end;

  if KCLLSS.recordcount = 0 then
  begin
    with DelDet do
    begin
      requestlive := true;
      cachedupdates := true;
      edit;
      fieldbyname('YN').Value := '0';
    end
  end
  else
  begin
    showmessage('Pls delete the Siz and Detail first.');
    abort;
  end;
  BD5.Enabled := true;
  BD6.Enabled := true;
end;

//儲存LTLLS_ZLBH 判斷是借出還是報廢
procedure TLYV_TLborrow.LTLLSS_ZLBH_Value();
begin
  if DelMas.FieldByName('SFL').AsString = '1' then
    ZLBH_Value := 'DAOL';
  if DelMas.FieldByName('SFL').AsString = '2' then
    ZLBH_Value := 'DELD';
end;

procedure TLYV_TLborrow.BD5Click(Sender: TObject);
var
  i: integer;
begin
  LTLLSS_ZLBH_Value(); //LTLLSS.ZLBH 判斷借出或報廢
  try
    DelDet.first;
    for i := 1 to DelDet.RecordCount do
    begin
      case DelDet.updatestatus of
        usinserted:
          begin
            if DelMas.FieldByName('USERID').value <> main.Edit1.Text then
            begin
              showmessage('不是你的，不要亂動。khong phai ban khong duoc tu sua');
            end
            else
            begin
              if DelDet.fieldbyname('CLBH').isnull then
              begin
                DelDet.delete;
              end
              else
              begin
                //新增明細
                DelDet.edit;
                DelDet.fieldbyname('LLNO').Value := DelMas.fieldbyname('LLNO').Value;
                DelDet.fieldbyname('LLQTY').Value := '0';
                DelDet.fieldbyname('RKQTY').Value := '0';
                DelDet.FieldByName('userID').Value := main.edit1.text;
                DelDet.FieldByName('userdate').Value := Ndate;
                DelDet.FieldByName('YN').Value := '1';
                upDet.apply(ukinsert);
                //自動新增尺寸明細
                with query1 do //先刪除SS檔,再新增
                begin
                  active := false;
                  sql.Clear;
                  sql.add('DELETE LTLLSS   ');
                  sql.add('where LTLLSS.LLNO=''' + DelDet.fieldbyname('LLNO').Value + '''');
                  sql.add('       and LTLLSS.CLBH=''' + DelDet.fieldbyname('CLBH').Value + '''');
                  sql.add('INSERT into LTLLSS   ');
                  sql.add('select ''' + DelDet.fieldbyname('LLNo').Value + ''',CLBH,''' + ZLBH_Value +
                    ''' ,SIZ,''0'',''0'',Qty ');
                  sql.add('       ,getdate() ');
                  sql.add('       ,''' + main.edit1.text + '''');
                  sql.add('       ,''1'' ');
                  sql.add('       ,''VN''  ');
                  sql.add(' from #CLZLKC_Last   ');
                  sql.add(' where #CLZLKC_Last.CLBH=''' + DelDet.fieldbyname('CLBH').Value + '''');
                  //funcObj.WriteErrorLog(sql.Text);
                  execsql;

                  active := false;
                  sql.Clear;
                  sql.add('UPDATE LTLLS set LLQTY=isnull((select isnull(SUM(QTY),0) AS SQTY ');
                  sql.add('                               from LTLLSS WHERE LTLLSS.LLNo=LTLLS.LLNo AND LTLLSS.CLBH=LTLLS.CLBH  ');
                  sql.add('                                    and LTLLSS.LLNo=''' + DelDet.FieldByName('LLNO').Value + '''' +
                    ' and LTLLSS.CLBH=''' + DelDet.FieldByName('CLBH').Value + '''');
                  sql.add('                             GROUP BY LLNo,CLBH),0) ');
                  sql.add('where LTLLS.LLNo=''' + DelDet.FieldByName('LLNo').Value + ''' and LTLLS.CLBH=' + '''' +
                    DelDet.FieldByName('CLBH').Value + '''');
                  //funcObj.WriteErrorLog(sql.Text);
                  execsql;
                  active := false;
                  close;
                end;
              end;
            end;
          end;

        usmodified:
          begin
            if DelDet.FieldByName('USERID').value <> main.Edit1.Text then
            begin
              showmessage('不是你的，不要亂動。khong phai ban khong duoc tu sua');
            end
            else
            begin
              if DelDet.fieldbyname('YN').value = '0' then
              begin
                with BDelRec do
                begin
                  active := false;
                  sql.Clear;
                  sql.add('insert into BDelRec ');
                  sql.add('(TableName ,TNO,CLBH,OldID,DelID,DelDate)');
                  sql.add('values (''LTLLS'',''' + DelDet.fieldbyname('LLNO').Value + '''');
                  sql.add(',''' + DelDet.fieldbyname('CLBH').Value + ''',''' + DelDet.fieldbyname('USERID').Value + ''',');
                  sql.add('''' + main.Edit1.Text + '''' + ',Getdate())');
                  execsql;
                  active := false;
                end;
                UpDet.apply(ukdelete);
              end
              else
              begin
                DelDet.edit;
                //DelDet.fieldbyname('Qty').value:=DelDet.fieldbyname('TempQty').value;
                DelDet.FieldByName('userID').Value := main.edit1.text;
                DelDet.FieldByName('userdate').Value := Ndate;
                upDet.apply(ukmodify);

              end;
            end;
          end;
      end;
      DelDet.next;
    end;
    with query1 do
    begin
      active := false;
      sql.Clear;
      sql.add('DELETE LTLLSS   ');
      sql.add(' where LTLLSS.LLNo=''' + DelMas.fieldbyname('LLNo').Value + '''');
      sql.add('       and NOT EXISTS (SELECT LTLLS.LLNo FROM LTLLS WHERE LTLLS.LLNo=LTLLSS.LLNo AND LTLLSS.CLBH=LTLLS.CLBH ) ');
      //funcObj.WriteErrorLog(sql.Text);
      execsql;
      close;
    end;
    Delmas.Active := false;
    Delmas.Active := active;
    DelDet.active := false;
    DelDet.cachedupdates := false;
    DelDet.requestlive := false;
    DelDet.active := true;
    bb6.enabled := false;
    btnBBTT2.Visible := false;
    BD2.Enabled := TRUE;
    BD3.Enabled := TRUE;
    BD4.Enabled := TRUE;
    BD5.Enabled := false;
    BD6.Enabled := false;
    //DBGrdh4.columns[0].ButtonStyle:=cbsNone;
  except
    Messagedlg('Have wrong, can not save data!', mtwarning, [mbyes], 0);
  end;
end;

procedure TLYV_TLborrow.BD4Click(Sender: TObject);
begin
  if (DelMas.FieldByName('CFMID').value <> 'NO') then
  begin
    ShowMessage('Already Comfirm.');
    Exit;
  end;
  if DelMas.RequestLive then
  begin
    showmessage('Pls save Master data first.');
    PGCPC1.ActivePage := TSTS1;
    panel6.visible := false;
    panel1.visible := true;
    abort;
  end;

  with DelDet do
  begin
    requestlive := true;
    cachedupdates := true;
    edit;
  end;
  btnBBTT2.Visible := true;
  BD2.Enabled := FALSE;
  BD3.Enabled := FALSE;
  BD4.Enabled := FALSE;
  BD5.Enabled := true;
  BD6.Enabled := true;

end;

procedure TLYV_TLborrow.BD6Click(Sender: TObject);
begin

  with DelDet do
  begin
    active := false;
    requestlive := false;
    cachedupdates := false;
    active := true;
  end;
  btnBBTT2.Visible := false;
  BD2.Enabled := TRUE;
  BD3.Enabled := TRUE;
  BD4.Enabled := TRUE;
  BD5.Enabled := false;
  BD6.Enabled := false;

end;

procedure TLYV_TLborrow.btnBBTT2Click(Sender: TObject);
begin
  TLBorrow_CL := TTLBorrow_CL.create(self);
  TLBorrow_CL.show;
end;

procedure TLYV_TLborrow.dbgrdh4EditButtonClick(Sender: TObject);
begin
  btnBBTT2Click(nil);
end;

procedure TLYV_TLborrow.BDT1Click(Sender: TObject);
begin
  DelDet.First;
end;

procedure TLYV_TLborrow.BDT2Click(Sender: TObject);
begin
  DelDet.prior;
end;

procedure TLYV_TLborrow.BDT3Click(Sender: TObject);
begin
  DelDet.next;
end;

procedure TLYV_TLborrow.BDT4Click(Sender: TObject);
begin
  DelDet.last;
end;

procedure TLYV_TLborrow.BDT5Click(Sender: TObject);
begin

  if DelDet.RequestLive then
  begin
    showmessage('Pls save data first.');
    abort;
  end
  else
  begin
    LYV_TLborrow_PrintA4 := TLYV_TLborrow_PrintA4.create(nil);
    LYV_TLborrow_PrintA4.quickrep1.prepare;
    LYV_TLborrow_PrintA4.Qpage1.caption := inttostr(LYV_TLborrow_PrintA4.quickrep1.QRPrinter.pagecount);
    LYV_TLborrow_PrintA4.quickrep1.preview;
    LYV_TLborrow_PrintA4.free;
  end;

  with DelMas do
  begin
    requestlive := true;
    cachedupdates := true;
    edit;
    if fieldbyname('PMARK').isnull then
    begin
      fieldbyname('PMARK').value := 1;
    end
    else
    begin
      fieldbyname('PMARK').value := fieldbyname('PMARK').value + 1;
    end;
    UPMAS.Apply(ukmodify);
    requestlive := false;
    cachedupdates := false;
  end;
end;

procedure TLYV_TLborrow.DBGridh3DblClick(Sender: TObject);
begin
  if DelMas.Active then
  begin
    if (DelMas.recordcount > 0) then
    begin
      PGCPC1.ActivePage := TSTS2;
      panel1.Visible := false;
      panel6.Visible := true;
    end;
  end;
end;

procedure TLYV_TLborrow.FormDestroy(Sender: TObject);
begin
  LYV_TLborrow := nil;
end;

procedure TLYV_TLborrow.btnBE1Click(Sender: TObject);
begin
  if (DelMas.FieldByName('CFMID').value <> 'NO') then
  begin
    ShowMessage('Already Comfirm.');
    Exit;
  end;
  if DelMas.RequestLive then
  begin
    showmessage('Pls save Master data first.');
    PGCPC1.ActivePage := TSTS1;
    panel6.visible := false;
    panel1.visible := true;
    abort;
  end;
  if DelDet.RequestLive then
  begin
    showmessage('Pls save Detail data first.');
    abort;
  end;
  dbgrdh4.Enabled := false;
  with KCLLSS do
  begin
    requestlive := true;
    cachedupdates := true;
    insert;
  end;

  BTNBE4.Enabled := true;
  BTNBE5.Enabled := true;

end;

procedure TLYV_TLborrow.btnBE5Click(Sender: TObject);
begin
  with KCLLSS do
  begin
    active := false;
    requestlive := false;
    cachedupdates := false;
    active := true;
  end;
  DBGrdh4.Enabled := true;
  btnBE1.Enabled := TRUE;
  btnBE2.Enabled := TRUE;
  btnBE6.Enabled := TRUE;
  btnBE3.Enabled := TRUE;
  btnBE4.Enabled := false;
  btnBE5.Enabled := false;

end;

procedure TLYV_TLborrow.btnBE2Click(Sender: TObject);
begin
  if (DelMas.FieldByName('CFMID').value <> 'NO') then
  begin
    ShowMessage('Already Comfirm.');
    Exit;
  end;

  if DelMas.RequestLive then
  begin
    showmessage('Pls save Master data first.');
    pgcPC1.ActivePage := TSTS2;
    panel6.visible := false;
    panel1.visible := true;
    abort;
  end;

  if DelDet.RequestLive then
  begin
    showmessage('Pls save Detail data first.');
    abort;
  end;

  dbgrdh4.Enabled := false;

  with KCLLSS do
  begin
    requestlive := true;
    cachedupdates := true;
    edit;
    fieldbyname('YN').Value := '0'; //刪除記號
  end;

  btnBE4.Enabled := true;
  btnBE5.Enabled := true;
end;

procedure TLYV_TLborrow.btnBE3Click(Sender: TObject);
begin
  if (DelMas.FieldByName('CFMID').value <> 'NO') then
  begin
    ShowMessage('Already Comfirm.');
    Exit;
  end;
  if DelMas.RequestLive then
  begin
    showmessage('Pls save Master data first.');
    pgcPC1.ActivePage := TSTS2;
    panel6.visible := false;
    panel1.visible := true;
    abort;
  end;
  if DelDet.RequestLive then
  begin
    showmessage('Pls save Detail data first.');
    abort;
  end;
  dbgrdh4.Enabled := false;
  with KCLLSS do
  begin
    requestlive := true;
    cachedupdates := true;
    edit;
  end;
  btnBE4.Enabled := true;
  btnBE5.Enabled := true;
end;

procedure TLYV_TLborrow.btnBE4Click(Sender: TObject);
var
  i: integer;
  Qty: real;
begin
  LTLLSS_ZLBH_Value(); //LTLLSS.ZLBH 判斷借出或報廢
  try
    KCLLSS.first;
    for i := 1 to KCLLSS.RecordCount do
    begin
      case KCLLSS.updatestatus of
        usinserted: //新增狀態
          begin
            if KCLLSS.fieldbyname('SIZ').isnull then
            begin
              KCLLSS.delete;
            end
            else
            begin
              //----
              if KCLLSS.FieldByName('TempQTY').Value - KCLLSS.FieldByName('KCQTY').Value >= 0 then
              begin
                showmessage('QTY>Stock QTY,Please check');
                abort;
              end;
              //----
              KCLLSS.edit;
              KCLLSS.fieldbyname('LLNO').Value := DelDet.fieldbyname('LLNO').value;
              KCLLSS.fieldbyname('CLBH').Value := DelDet.fieldbyname('CLBH').value;
              KCLLSS.fieldbyname('ZLBH').Value := ZLBH_Value;
              KCLLSS.fieldbyname('Qty').Value := KCLLSS.fieldbyname('TempQty').Value;
              KCLLSS.FieldByName('userID').Value := main.edit1.text;
              KCLLSS.FieldByName('userdate').Value := date;
              KCLLSS.FieldByName('YN').Value := '1';
              UpdateSQL1.apply(ukinsert);
            end;
          end;

        usmodified: //修改狀態
          begin
            if KCLLSS.fieldbyname('YN').value = '0' then
            begin
              UpdateSQL1.apply(ukdelete);
            end
            else
            begin
              if (NDate - DelMas.FieldByName('USERDATE').value) < 60 then
              begin
                //----
                if KCLLSS.FieldByName('TempQTY').Value - KCLLSS.FieldByName('KCQTY').Value > 0 then
                begin
                  showmessage('QTY > Stock QTY,Please check');
                  abort;
                end;
                //----
                KCLLSS.edit;
                KCLLSS.fieldbyname('Qty').Value := KCLLSS.fieldbyname('TempQty').Value;
                KCLLSS.FieldByName('userID').Value := main.edit1.text;
                KCLLSS.FieldByName('userdate').Value := date;
                UpdateSQL1.apply(ukmodify);
              end
              else
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
      active := false;
      sql.Clear;
      sql.add('DELETE LTLLSS   ');
      sql.add(' where LTLLSS.LLNo=' + '''' + DelMas.fieldbyname('LLNo').Value + '''');
      sql.add('       and NOT EXISTS (SELECT LTLLS.LLNo FROM LTLLS WHERE LTLLS.LLNo=LTLLSS.LLNo AND LTLLS.CLBH=LTLLSS.CLBH ) ');
      execsql;
      active := false;
      sql.Clear;
      sql.add('DELETE LTLLSS   ');
      sql.add(' where LTLLSS.LLNo=' + '''' + DelMas.fieldbyname('LLNo').Value + '''');
      sql.Add(' and QTY=''0'' ');
      //20120528 sql.add('       and QTY=''0'' and LTRKS.RKNo='+''''+DelDet.FieldByName('RKNo').Value+''' ');
      execsql;
      //統計尺寸明細數量--寫數領料單身
      active := false;
      sql.Clear;
      sql.add('UPDATE LTLLS ');
      sql.add('set LLQTY=isnull((select isnull(SUM(QTY),0) AS SQTY ');
      sql.add('                  from LTLLSS ');
      sql.add('                  WHERE 1=1');
      sql.add('                        and LTLLSS.LLNo=' + '''' + DelDet.FieldByName('LLNO').Value + '''' + ' and LTLLSS.CLBH=' +
        '''' + DelDet.FieldByName('CLBH').Value + '''');
      sql.add('                  GROUP BY LLNo,CLBH),0) ');
      sql.add(' where LTLLS.LLNo=' + '''' + DelDet.FieldByName('LLNo').Value + '''' + ' and LTLLS.CLBH=' + '''' +
        DelDet.FieldByName('CLBH').Value + '''');
      execsql;
      close;
    end;

    //關掉尺寸明細數量檔--的異動狀態
    DelDet.Active := false;
    DelDet.Active := active;
    KCLLSS.active := false;
    KCLLSS.cachedupdates := false;
    KCLLSS.requestlive := false;
    KCLLSS.active := true;
    btnBE1.Enabled := TRUE;
    btnBE2.Enabled := TRUE;
    btnBE6.Enabled := TRUE;
    btnBE3.Enabled := TRUE;
    btnBE4.Enabled := false;
    btnBE5.Enabled := false;
    DBGrdh4.Enabled := true;
  except
    Messagedlg('Have wrong, can not save data!', mtwarning, [mbyes], 0);
  end;
end;

procedure TLYV_TLborrow.pgcPC1Changing(Sender: TObject;
  var AllowChange: Boolean);
begin
  if btnbe4.Enabled then
    allowchange := false;
end;

procedure TLYV_TLborrow.DBGridh3GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if DelMas.FieldByName('YN').value = '0' then
  begin
    DBGridh3.canvas.font.color := clred;
  end;
end;

procedure TLYV_TLborrow.dbgrdh4GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if DelDet.FieldByName('YN').value = '0' then
  begin
    dbgrdh4.canvas.font.color := clred;
  end;

  if DelDet.FieldByName('LLNO').isnull then
  begin
    dbgrdh4.canvas.font.color := clBLUE;
  end;

end;

procedure TLYV_TLborrow.DBGrid6Columns2NotInList(Sender: TObject;
  NewText: string; var RecheckInList: Boolean);
begin
  showmessage('Pls select Stage from list ,can not alter by manually.');
  abort;
end;

procedure TLYV_TLborrow.DBGrid6Columns3NotInList(Sender: TObject;
  NewText: string; var RecheckInList: Boolean);
begin
  showmessage('Pls select Size from list ,can not alter by manually.');
  abort;
end;

procedure TLYV_TLborrow.DBGrid6Columns4NotInList(Sender: TObject;
  NewText: string; var RecheckInList: Boolean);
begin
  showmessage('Pls select Size from list ,can not alter by manually.');
  abort;
end;

procedure TLYV_TLborrow.dbgrdh6Columns0NotInList(Sender: TObject;
  NewText: string; var RecheckInList: Boolean);
begin
  showmessage('Pls select Size from list ,can not alter by manually.');
  abort;
end;

procedure TLYV_TLborrow.BDT7Click(Sender: TObject);
begin

  if DelDet.RequestLive then
  begin
    showmessage('Pls save data first.');
    abort;
  end
  else
  begin
    LYV_TLborrow_S := TLYV_TLborrow_S.create(nil);
    LYV_TLborrow_S.quickrep1.prepare;
    LYV_TLborrow_S.Qpage1.caption := inttostr(LYV_TLborrow_S.quickrep1.QRPrinter.pagecount);
    LYV_TLborrow_S.quickrep1.preview;
    LYV_TLborrow_S.free;
  end;
  with DelMas do
  begin
    requestlive := true;
    cachedupdates := true;
    edit;
    if fieldbyname('PMARK').isnull then
    begin
      fieldbyname('PMARK').value := 1;
    end
    else
    begin
      fieldbyname('PMARK').value := fieldbyname('PMARK').value + 1;
    end;
    UPMAS.Apply(ukmodify);
    requestlive := false;
    cachedupdates := false;
  end;

end;

procedure TLYV_TLborrow.dbgrdh6GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin

  if KCLLSS.FieldByName('QTY').value - KCLLSS.FieldByName('TempQTY').value >= 0 then
  begin
    dbgrdh6.canvas.font.color := clblue;
  end;
  if KCLLSS.FieldByName('YN').value = '0' then
  begin
    dbgrdh6.canvas.font.color := clred;
  end;
end;

procedure TLYV_TLborrow.btnBE6Click(Sender: TObject);
begin
  if (DelMas.FieldByName('CFMID').value <> 'NO') then
  begin
    ShowMessage('Already Comfirm.');
    Exit;
  end;
  if DelMas.RequestLive then
  begin
    Showmessage('Pls save Master data first.');
    pgcPC1.ActivePage := TSTS2;
    panel6.visible := false;
    panel1.visible := true;
    abort;
  end;

  if DelDet.RequestLive then
  begin
    showmessage('Pls save Detail data first.');
    abort;
  end;

  with KCLLSS do
  begin
    requestlive := true;
    cachedupdates := true;
    First;
    while not Eof do
    begin
      Edit;
      fieldbyname('YN').Value := '0'; //刪除記號
      Next;
    end;
  end;

  btnBE4.Enabled := true;
  btnBE5.Enabled := true;
end;

end.
