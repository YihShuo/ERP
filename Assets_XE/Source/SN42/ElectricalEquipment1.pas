unit ElectricalEquipment1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, Data.DB,
  Bde.DBTables, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, Vcl.ComCtrls,ComObj;

type
  TElectricalEquipment = class(TForm)
    Panel1: TPanel;
    InfoLable: TLabel;
    BB4: TBitBtn;
    BB5: TBitBtn;
    BB6: TBitBtn;
    BB7: TBitBtn;
    BB1: TBitBtn;
    bbt6: TBitBtn;
    bbt7: TBitBtn;
    Panel3: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    edtTSID: TEdit;
    btnQuery: TButton;
    CheckMine: TCheckBox;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit4: TEdit;
    DepNMEdit: TComboBox;
    CheckBox1: TCheckBox;
    MSBBHCombo: TComboBox;
    CheckBox2: TCheckBox;
    DBGridEh1: TDBGridEh;
    DS1: TDataSource;
    TSCD: TQuery;
    TSCDTSID: TStringField;
    TSCDTSBH: TStringField;
    TSCDSBBH: TStringField;
    TSCDQTY: TFloatField;
    TSCDDEPID: TStringField;
    TSCDdepname: TStringField;
    TSCDDEPID_MEMO: TStringField;
    TSCDstatus: TStringField;
    TSCDuserid: TStringField;
    TSCDuserdate: TDateTimeField;
    TSCDLLNO: TStringField;
    TSCDRKNO: TStringField;
    TSCDLB: TStringField;
    TSCDYN: TStringField;
    TSCDYWPM: TStringField;
    TSCDLabel_Tag: TStringField;
    TSCDZWPM: TStringField;
    TSCDRFID_Tag: TStringField;
    TSCDUSERID_Tag: TStringField;
    TSCDUSERDATE_Tag: TDateTimeField;
    TSCDMemo: TStringField;
    TSCDMSBBH: TStringField;
    TSCDMYWPM: TStringField;
    TSCDMZWPM: TStringField;
    TSCDMachine_Type: TStringField;
    TSCDDepMemo: TStringField;
    TSCDLeanName: TStringField;
    TSCDLean_ID: TStringField;
    Qtemp: TQuery;
    UpMas: TUpdateSQL;
    TSCDMachine_Status: TStringField;
    TSCDUSERID_Modify: TStringField;
    TSCDUSERDATE_Modify: TDateTimeField;
    TSCDVWPM: TStringField;
    CheckBox3: TCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure BB1Click(Sender: TObject);
    procedure btnQueryClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure DBGridEh1EditButtonClick(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure bbt6Click(Sender: TObject);
  private
    { Private declarations }
    NDate:TDate;
    iYear,iMonth,TSID: string;
    procedure ReFresh_ComboboDepNM();
  public
    { Public declarations }
  end;

var
  ElectricalEquipment: TElectricalEquipment;

implementation

{$R *.dfm}

uses main1, ElectricalEquipment_NewLean1;

procedure TElectricalEquipment.ReFresh_ComboboDepNM();
var DepNM,SubSQL:string;
    i,index:integer;
begin
  //
  index:=-1;
  DepNM:=DepNMEdit.Text;
  with Qtemp do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Select  Distinct BDepartment.DepName ');
    SQL.Add('from TSCD');
    SQL.Add('left join TSCD_SB on TSCD_SB.SBBH = TSCD.SBBH');
    SQL.Add('left join TSCD_KCRKS on TSCD_KCRKS.RKNO=TSCD.RKNO and TSCD_KCRKS.SBBH=TSCD.SBBH  ');
    SQL.Add('left join TSCD_KCRK  on TSCD_KCRK.RKNO=TSCD_KCRKS.RKNO ');
    SQL.Add('left join TSCD_BDepartment BDepartment on BDepartment.ID=TSCD.DepID');
    SQL.Add('left join TSCD_BDepartment JDTS_Dep on JDTS_Dep.ID=TSCD.JDTS ');
    SQL.Add('left join TSCD_BDepartment JRTS_Dep on JRTS_Dep.ID=TSCD.JRTS ');
    SQL.Add('left join TSCD_ZSZL on TSCD_SB.ZSDH=TSCD_ZSZL.ZSDH');
    SQL.Add('left join TSCD_BDepartment JDBDep on JDBDep.ID=TSCD.JDTS ');
    SQL.Add('where 1=1 ');
    if edtTSID.Text <> '' then
      sql.add('and TSCD.TSID like '''+edtTSID.Text+'%'+''' ');
    if Edit1.Text <> '' then
      sql.add('and TSCD.TSBH like '''+Edit1.Text+'%'+''' ');
    if Edit2.Text <> '' then
      sql.add('and TSCD.DEPID_MEMO = '''+Edit2.Text+''' ');
    if DepNMEdit.Text <> '' then
      sql.add('and BDepartment.DepName = '''+DepNMEdit.Text+''' ');
    if Edit4.Text <> '' then
      sql.add('and TSCD.SBBH like '''+Edit4.Text+'%'' ');
    if MSBBHCombo.Text <> '' then
      sql.add('and TSCD.MSBBH like '''+Copy(MSBBHCombo.Text,1,Pos('-',MSBBHCombo.Text)-1)+'%'' ');
    if CheckMine.Checked then
      sql.add('and TSCD.USERID ='''+main.Edit1.Text+''' ');
    sql.add('and convert(smalldatetime,convert(varchar,TSCD.USERDATE,111)) between ');
    sql.add(''''+formatdatetime('yyyy/MM/dd',DTP1.Date) +'''');
    sql.add(' and ');
    sql.add(''''+formatdatetime('yyyy/MM/dd',DTP2.Date) +'''');
    sql.Add('Order by BDepartment.DepName ');
    //funcObj.WriteErrorLog(SQL.Text);
    Active:=true;
    DepNMEdit.Items.Clear;
    DepNMEdit.Items.Add('');
    for i:=0 to Qtemp.RecordCount-1 do
    begin
      if DepNM=FieldByName('DepName').AsString then  index:=i;
      DepNMEdit.Items.Add(FieldByName('DepName').AsString);
      Next;
    end;
    Active:=false;
  end;
  if DepNMEdit.Items.Count>0 then
  begin
    DepNMEdit.ItemIndex:=index+1;
  end;

end;

procedure TElectricalEquipment.BB1Click(Sender: TObject);
begin
    Panel3.Visible:=true;
    bbt6.Enabled:=true;
end;

procedure TElectricalEquipment.BB4Click(Sender: TObject);
var
  i: Integer;
begin
  with TSCD do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
//  DBGridEh1.columns[14].ButtonStyle:=cbsEllipsis;

{  for i := 0 to DBGridEh1.Columns.Count - 1 do
    DBGridEh1.Columns[i].ReadOnly := True;

  DBGridEh1.Columns[3].ReadOnly := False;
  DBGridEh1.Columns[14].ReadOnly := False;
  DBGridEh1.Columns[15].ReadOnly := False;
  DBGridEh1.Columns[16].ReadOnly := False;}
  //CheckUserID();
end;

procedure TElectricalEquipment.BB5Click(Sender: TObject);
var y,m,TSID:string;
    i:integer;
begin
  with Qtemp do
  begin
    active:=false;
    sql.Clear;
    sql.Add('select year(getdate()) as FY,month(getdate()) as FM,getdate() as NDate ');
    active:=true;
    NDate:=fieldbyname('NDate').Value;
    active:=false;
  end;
  try
    TSCD.first;
    for i:=1 to TSCD.RecordCount do
    begin
      case TSCD.updatestatus of
        usinserted:
        begin
        end;
        usmodified:
        begin
          TSCD.edit;
          TSCD.FieldByName('USERID_Modify').Value := main.Edit1.Text;
          TSCD.FieldByName('USERDATE_Modify').Value := NDate;
          upMas.apply(ukmodify);
        end;
      end;
      TSCD.next;
    end;
    TSCD.active:=false;
    TSCD.cachedupdates:=false;
    TSCD.requestlive:=false;
    TSCD.active:=true;
    //
    BB5.enabled:=false;
    BB6.enabled:=false;
    DBGridEh1.columns[2].ButtonStyle:=cbsnone;
    DBGridEh1.columns[8].ButtonStyle:=cbsnone;
    DBGridEh1.columns[11].ButtonStyle:=cbsnone;
    showmessage('Succeed.');
  except
    Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
  end;
end;

procedure TElectricalEquipment.BB6Click(Sender: TObject);
begin
  with TSCD do
  begin
    active:=false;
    requestlive:=false;
    cachedupdates:=false;
    active:=true;
  end;
  BB5.enabled:=false;
  BB6.enabled:=false;
  DBGridEh1.columns[11].ButtonStyle:=cbsnone;
end;

procedure TElectricalEquipment.bbt6Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin
    if  TSCD.active  then
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
      for  i:=0  to TSCD.fieldcount-1   do
      begin
        eclApp.Cells(1,i+1):=TSCD.fields[i].FieldName;
      end;
      TSCD.First;
      j:=2;
      while   not   TSCD.Eof   do
        begin
          for   i:=0   to  TSCD.fieldcount-1  do
          begin
            eclApp.Cells(j,i+1):=TSCD.Fields[i].AsString;
          end;
        TSCD.Next;
        inc(j);
      end;
      eclapp.columns.autofit;
      eclApp.Visible:=True;
      showmessage('Succeed');
    except
      on   F:Exception   do
          showmessage(F.Message);
      end;
    end;
end;

procedure TElectricalEquipment.btnQueryClick(Sender: TObject);
begin
  with TSCD do
  begin
    active:=false;
    sql.Clear;
    sql.add('select TSID,TSBH,TSCD.SBBH,QTY,TSCD.DEPID,DEPID_MEMO,status,Machine_Status,USERID_Modify,USERDATE_Modify,BDepartment.depname,TSCD.userid,TSCD.userdate,LLNO,RKNO,LB,TSCD.YN   ');
    sql.add('       ,IsNull(TSCD_SB.YWPM,CLZL.YWPM) as YWPM,IsNull(TSCD_SB.ZWPM,CLZL.ZWPM) as ZWPM, TSCD_SB.VWPM as VWPM ');
    sql.add('       ,TSCD.Label_Tag,TSCD.RFID_Tag,TSCD.USERID_Tag,TSCD.USERDATE_Tag,TSCD.Memo,TSCD.MSBBH,IsNull(TSCD_SB.YWPM,MCLZL.YWPM) as MYWPM,IsNull(TSCD_SB.ZWPM,MCLZL.ZWPM) as MZWPM ');
    sql.add('       ,TSCD.Machine_Type,TSCD.Lean_ID,BDepart.DepName as LeanName,BDepart.DepMemo ');
    sql.add('from TSCD');
    sql.add('left join  TSCD_BDepartment BDepartment on BDepartment.ID=TSCD.DepID ');
    sql.add('left join  TSCD_BDepartment BDepart on BDepart.ID=TSCD.Lean_ID ');
    sql.add('left join clzl on TSCD.SBBH = clzl.cldh ');
    sql.add('left join TSCD_SB on TSCD.SBBH = TSCD_SB.SBBH ');
    sql.add('left join clzl MCLZL on TSCD.MSBBH = MCLZL.cldh ');
//    sql.add('left join TSCD_SB MTSCD_SB on TSCD.SBBH = MTSCD_SB.SBBH  ');
    sql.add('where 1=1 ');
    if edtTSID.Text <> '' then
      sql.add('and TSCD.TSID like '''+edtTSID.Text+'%'+''' ');
    if Edit1.Text <> '' then
      sql.add('and TSCD.TSBH like '''+Edit1.Text+'%'+''' ');
    if Edit2.Text <> '' then
      sql.add('and TSCD.DEPID_MEMO = '''+Edit2.Text+''' ');
    if DepNMEdit.Text <> '' then
      sql.add('and BDepartment.DepName = '''+DepNMEdit.Text+''' ');
    if Edit4.Text <> '' then
      sql.add('and TSCD.SBBH like '''+Edit4.Text+'%'' ');
    if MSBBHCombo.Text <> '' then
      sql.add('and TSCD.MSBBH like '''+Copy(MSBBHCombo.Text,1,Pos('-',MSBBHCombo.Text)-1)+'%'' ');
    if CheckMine.Checked then
      sql.add('and TSCD.USERID ='''+main.Edit1.Text+''' ');
    if CheckBox2.Checked then
      sql.add('and TSCD.status not in (''B'') ');
//  Chi lay thiet bi co dien
    SQl.Add('and TSCD.LB=1 ');
//  Chi lay du lieu khu A
    SQl.Add('and BDepartment.ID not like ''%VB%'' ');
    SQl.Add('and BDepartment.depname not like ''%NHA_AN_KHU_B%'' ');
    if CheckBox3.Checked then
    begin
      sql.add('and convert(smalldatetime,convert(varchar,TSCD.USERDATE,111)) between ');
      sql.add(''''+formatdatetime('yyyy/MM/dd',DTP1.Date) +'''');
      sql.add(' and ');
      sql.add(''''+formatdatetime('yyyy/MM/dd',DTP2.Date) +'''');
    end;
    sql.add('order by TSID,TSBH desc');
    //showmessage(sql.Text);
    //funcobj.WriteErrorLog(sql.Text);
    active:=true;
  end;
  if CheckBox1.Checked=true then  ReFresh_ComboboDepNM();

  BB4.Enabled := True;
end;

procedure TElectricalEquipment.DBGridEh1EditButtonClick(Sender: TObject);
begin
  ElectricalEquipment_NewLean:=TElectricalEquipment_NewLean.Create(self);
  ElectricalEquipment_NewLean.Show;
end;

procedure TElectricalEquipment.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    Action:=CaFree;
end;

procedure TElectricalEquipment.FormCreate(Sender: TObject);
begin
  with Qtemp do
  begin
    active:=false;
    sql.Clear;
    sql.Add('select year(getdate()) as FY,month(getdate()) as FM,getdate() as NDate ');
    active:=true;
    NDate:=fieldbyname('NDate').Value;
    iYear:=fieldbyname('FY').asstring;
    iMonth:=fieldbyname('FM').asstring;
    if length(iMonth)<2 then iMonth:='0'+iMonth;
    DTP1.Date:= NDate-3;
    DTP2.Date:= NDate;
  end;
  ReFresh_ComboboDepNM();
end;

procedure TElectricalEquipment.FormDestroy(Sender: TObject);
begin
    ElectricalEquipment:=nil;
end;

end.
