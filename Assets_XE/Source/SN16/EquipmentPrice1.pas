unit EquipmentPrice1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,funUnit,
  Dialogs, DB, DBTables, StdCtrls, Mask, DBCtrls, GridsEh, DBGridEh,
  ComCtrls, Buttons, ExtCtrls, IdBaseComponent, IdComponent,
  IdTCPConnection, IdTCPClient, IdTime, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, DBAxisGridsEh, Vcl.Menus, comobj, ShellAPI;

type
  TEquipmentPrice = class(TForm)
    QueryUser: TQuery;
    BDelRec: TQuery;
    Qtemp: TQuery;
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
    DS1: TDataSource;
    UpMas: TUpdateSQL;
    Panel1: TPanel;
    InfoLable: TLabel;
    BB1: TBitBtn;
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
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit4: TEdit;
    DepNMEdit: TComboBox;
    CheckBox1: TCheckBox;
    MSBBHCombo: TComboBox;
    DBGridEh1: TDBGridEh;
    BB6: TBitBtn;
    BB5: TBitBtn;
    BB4: TBitBtn;
    BB7: TBitBtn;
    TSCDUSERID_Price: TStringField;
    TSCDUSERDATE_Price: TDateTimeField;
    TSCDVND: TCurrencyField;
    TSCDUSD: TFloatField;
    TSCDVWPM: TStringField;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BB1Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure btnQueryClick(Sender: TObject);
    procedure TSCDAfterOpen(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure DBGridEh1EditButtonClick(Sender: TObject);
  private
    AppDir:string;
    NDate:TDate;
    iYear,iMonth,TSID: string;
    { Private declarations }
    procedure ReFresh_ComboboDepNM();
  public
    { Public declarations }
  end;

var
  EquipmentPrice: TEquipmentPrice;

implementation

uses main1;

{$R *.dfm}

procedure TEquipmentPrice.BB1Click(Sender: TObject);
begin
  Panel3.Visible:=true;
end;

procedure TEquipmentPrice.BB4Click(Sender: TObject);
begin
  with TSCD do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
    if TSCD.FieldByName('USERID_Price').AsString='' then
      TSCD.FieldByName('USERID_Price').Value:=main.edit1.text;
    TSCD.FieldByName('USERDATE_Price').Value:=NDate;
  end;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
  DBGridEh1.columns[7].ButtonStyle:=cbsEllipsis;
  DBGridEh1.columns[8].ButtonStyle:=cbsEllipsis;
end;

procedure TEquipmentPrice.BB5Click(Sender: TObject);
var y,m,TSID:string;
    i:integer;
begin
  try
    TSCD.first;
    for i:=1 to TSCD.RecordCount do
    begin
      case TSCD.updatestatus of
        usmodified:
        begin
          if ((not TSCD.FieldByName('USERID_Price').IsNull) and (TSCD.FieldByName('USERID_Price').value<>main.Edit1.Text)) then
          begin
            showmessage('¤£¬O§Aªº¡A¤£­n¶Ã°Ê¡Ckhong phai ban khong duoc tu sua');
          end else
          begin
            TSCD.edit;
            TSCD.FieldByName('USERID_Price').Value:=main.edit1.text;
            TSCD.FieldByName('USERDATE_Price').Value:=NDate;
            upMas.apply(ukmodify);
          end;
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
    DBGridEh1.columns[7].ButtonStyle:=cbsNone;
    DBGridEh1.columns[8].ButtonStyle:=cbsNone;
    showmessage('Succeed.');
  except
    Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
  end;
end;

procedure TEquipmentPrice.BB6Click(Sender: TObject);
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
  DBGridEh1.columns[7].ButtonStyle:=cbsNone;
  DBGridEh1.columns[8].ButtonStyle:=cbsNone;
end;

procedure TEquipmentPrice.btnQueryClick(Sender: TObject);
begin
  with TSCD do
  begin
    active:=false;
    sql.Clear;
    sql.add('select TSID,TSBH,TSCD.SBBH,QTY,TSCD.DEPID,DEPID_MEMO,status,BDepartment.depname,TSCD.userid,TSCD.userdate,LLNO,RKNO,LB,TSCD.YN,TSCD_SB.VWPM   ');
    sql.add('       ,IsNull(TSCD_SB.YWPM,CLZL.YWPM) as YWPM,IsNull(TSCD_SB.ZWPM,CLZL.ZWPM) as ZWPM,VND,USD,USERID_Price,USERDATE_Price ');
    sql.add('       ,TSCD.Label_Tag,TSCD.RFID_Tag,TSCD.USERID_Tag,TSCD.USERDATE_Tag,TSCD.Memo,TSCD.MSBBH,IsNull(MTSCD_SB.YWPM,MCLZL.YWPM) as MYWPM,IsNull(MTSCD_SB.ZWPM,MCLZL.ZWPM) as MZWPM  ');
    sql.add('from TSCD');
    sql.add('left join  TSCD_BDepartment BDepartment on BDepartment.ID=TSCD.DepID ');
    sql.add('left join clzl on TSCD.SBBH = clzl.cldh ');
    sql.add('left join TSCD_SB on TSCD.SBBH = TSCD_SB.SBBH ');
    sql.add('left join clzl MCLZL on TSCD.MSBBH = MCLZL.cldh ');
    sql.add('left join TSCD_SB MTSCD_SB on TSCD.SBBH = MTSCD_SB.SBBH  ');
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
    sql.add('and convert(smalldatetime,convert(varchar,TSCD.USERDATE,111)) between ');
    sql.add(''''+formatdatetime('yyyy/MM/dd',DTP1.Date) +'''');
    sql.add(' and ');
    sql.add(''''+formatdatetime('yyyy/MM/dd',DTP2.Date) +'''');
    sql.add('order by TSCD.TSBH asc, TSCD.SBBH asc');
    //funcobj.WriteErrorLog(sql.Text);
    active:=true;
  end;
  if CheckBox1.Checked=true then  ReFresh_ComboboDepNM();
end;

procedure TEquipmentPrice.DBGridEh1EditButtonClick(Sender: TObject);
var USD,VND,SBBH:String;
    i:integer;
begin
  if DBGridEh1.SelectedField.FieldName='VND' then VND:=inputbox('Please Input VN Price','VND:','');
  if VND <>'' then
  begin
    with TSCD do
    begin
      SBBH:=FieldByName('SBBH').AsString;
      TSCD.First;
      while not Eof do
      begin
        Edit;
        if SBBH=FieldByName('SBBH').AsString then
        begin
          if DBGridEh1.SelectedField.FieldName='VND' then FieldByName('VND').Value:=VND;
        end;
        Next;
      end;
    end;
  end;
  //
  if DBGridEh1.SelectedField.FieldName='USD' then USD:=inputbox('Please Input US Price','USD:','');
  if USD <>'' then
  begin
    with TSCD do
    begin
      SBBH:=FieldByName('SBBH').AsString;
      TSCD.First;
      while not Eof do
      begin
        Edit;
        if SBBH=FieldByName('SBBH').AsString then
        begin
          if DBGridEh1.SelectedField.FieldName='USD' then FieldByName('USD').Value:=USD;
        end;
        Next;
      end;
    end;
  end;
end;

procedure TEquipmentPrice.ReFresh_ComboboDepNM();
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

procedure TEquipmentPrice.TSCDAfterOpen(DataSet: TDataSet);
begin
  BB4.enabled:=true;
end;

procedure TEquipmentPrice.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=Cafree;
end;

procedure TEquipmentPrice.FormCreate(Sender: TObject);
begin
  AppDir:=ExtractFilePath(Application.ExeName);
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

procedure TEquipmentPrice.FormDestroy(Sender: TObject);
begin
  EquipmentPrice:=nil;
end;

end.
