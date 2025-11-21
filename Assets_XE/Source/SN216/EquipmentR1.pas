unit EquipmentR1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DB, DBTables, GridsEh, DBGridEh,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL,
  DBAxisGridsEh;

type
  TEquipmentR = class(TForm)
    Panel1: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Button1: TButton;
    YWPMEdit: TEdit;
    ZWPMEdit: TEdit;
    SBBHEdit: TEdit;
    Label1: TLabel;
    applyDepnameEdit: TEdit;
    DBGridEh1: TDBGridEh;
    Query1: TQuery;
    DataSource1: TDataSource;
    TSBHEdit: TEdit;
    Label4: TLabel;
    Query1TSID: TStringField;
    Query1SBBH: TStringField;
    Query1TSBH: TStringField;
    Query1Status: TStringField;
    Query1Qty: TFloatField;
    Query1XSBH: TStringField;
    Query1NSX: TStringField;
    Query1InDATE: TDateTimeField;
    Query1JDBDATE: TStringField;
    Query1JDEDATE: TStringField;
    Query1DepID: TStringField;
    Query1DepID_Memo: TStringField;
    Query1DepName: TStringField;
    Query1LSBH: TStringField;
    Query1QUCBH: TStringField;
    Query1AuthCE: TBooleanField;
    Query1YWPM: TStringField;
    Query1ZWPM: TStringField;
    Query1applyDepname: TStringField;
    Button2: TButton;
    Query1zsjc_yw: TStringField;
    Label5: TLabel;
    LLNOEdit: TEdit;
    Label6: TLabel;
    GroupBox2: TGroupBox;
    CKLL: TCheckBox;
    CKRK: TCheckBox;
    CKBB: TCheckBox;
    CKMM: TCheckBox;
    CKHH: TCheckBox;
    CKRR: TCheckBox;
    CKFF: TCheckBox;
    CKTT: TCheckBox;
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  EquipmentR: TEquipmentR;

implementation

uses Deliver_EquipmentR1, main1, FunUnit;

{$R *.dfm}


procedure TEquipmentR.DBGridEh1DblClick(Sender: TObject);
begin
  if query1.recordcount>0 then
  begin
    with Deliver_EquipmentR.DelDet do
    begin
      edit;
      FieldByName('TSID').Value:=query1.fieldbyname('TSID').Value;
      FieldByName('DepName').Value:=query1.fieldbyname('DepName').Value;
      FieldByName('TSBH').Value:=query1.fieldbyname('TSBH').Value;
      FieldByName('SBBH').Value:=query1.fieldbyname('SBBH').Value;
      FieldByName('LSBH').Value:=query1.fieldbyname('LSBH').Value;
      FieldByName('QUCBH').Value:=query1.fieldbyname('QUCBH').Value;
      FieldByName('ZWPM').Value:=query1.fieldbyname('ZWPM').Value;
      FieldByName('YWPM').Value:=query1.fieldbyname('YWPM').Value;
      FieldByName('Qty').Value:=query1.fieldbyname('Qty').Value;
      //
      FieldByName('PARAMENT1').Value:='DepID';
      FieldByName('Value1').Value:=Deliver_EquipmentR.DepID_CD;
      FieldByName('COLUMN1').Value:=Deliver_EquipmentR.DepName_CD;
      FieldByName('PARAMENT2').Value:='DepID_Memo';
      FieldByName('Value2').Value:=Deliver_EquipmentR.DepName_CD;
      FieldByName('COLUMN2').Value:=Deliver_EquipmentR.DepName_CD;
      FieldByName('PARAMENT3').Value:='Status';
      FieldByName('Value3').Value:='R';
      Insert;
    end;
    close;
  end;
end;

procedure TEquipmentR.Button1Click(Sender: TObject);
var SubSQL:String;
begin
  //
  with query1 do
  begin
    active:=false;
    sql.clear;
    sql.Add('select TSCD.TSID,TSCD.SBBH,TSCD.TSBH,TSCD.Status,TSCD.Qty,TSCD.XSBH,TSCD.NSX,TSCD.InDATE,TSCD.JDBDATE,TSCD.JDEDATE,IsNull(TSCD.JDTS,TSCD.DepID) as DepID,TSCD.DepID_Memo,IsNull(JDBDep.DepName,Bdep_loca.DepName) as DepName,TSCD_ZSZL.zsjc_yw, ');
    sql.Add('       TSCD_SB.LSBH,TSCD_SB.QUCBH,TSCD_SB.AuthCE,TSCD_SB.YWPM,TSCD_SB.ZWPM,Bdep_appy.DepName as applyDepname ');
    sql.add('from TSCD ');
    sql.add('left join TSCD_SB on TSCD_SB.SBBH=TSCD.SBBH ');
    sql.add('left join TSCD_BDepartment Bdep_loca on Bdep_loca.ID=TSCD.DepID  ');
    sql.add('left join TSCD_ZSZL on TSCD_ZSZL.ZSDH=TSCD_SB.ZSDH ');
    sql.add('left join TSCD_KCRK on TSCD_KCRK.RKNO=TSCD.RKNO ');
    sql.add('left join TSCD_BDepartment Bdep_appy on Bdep_appy.ID=TSCD_KCRK.DepID ');
    sql.add('left join TSCD_BDepartment JDBDep on JDBDep.ID=TSCD.JDTS ');
    sql.add('where TSCD.SBBH like '''+SBBHEdit.Text+'%'' and TSCD.LB=1');
    if TSBHEdit.Text <> '' then
    sql.add('and TSCD.TSBH like '''+TSBHEdit.Text+'%''');
    if YWPMEdit.Text <> '' then
    sql.add('and  TSCD_SB.YWPM like '''+YWPMEdit.Text+'%'' ');
    if ZWPMEdit.Text <> '' then
    sql.add('and  TSCD_SB.ZWPM like '''+ZWPMEdit.Text+'%'' ');
    if applyDepnameEdit.Text<>'' then
    sql.add('and Bdep_appy.Depname like ''%'+applyDepnameEdit.Text+'%'' ');
    //
    if CKRK.Checked then    SubSQL:=SubSQL+'''N'',';
    if CKLL.Checked then    SubSQL:=SubSQL+'''Y'',';
    if CKBB.Checked then    SubSQL:=SubSQL+'''B'',';
    if CKMM.Checked then    SubSQL:=SubSQL+'''M'',';
    if CKHH.Checked then    SubSQL:=SubSQL+'''H'',';
    if CKRR.Checked then    SubSQL:=SubSQL+'''R'',';
    if CKFF.Checked then    SubSQL:=SubSQL+'''F'',';
    if CKTT.Checked then    SubSQL:=SubSQL+'''T'',';
    if SubSQL<>''  then
      SQl.Add(' and TSCD.Status in ('+Copy(SubSQL,1,length(SubSQL)-1)+') ')
    else
      SQL.Add(' and TSCD.Status='''' ');
    if LLNOEdit.Text<>'' then
      sql.Add('and TSCD.TSID in (select TSID from TSCD_KCLLS where LLNO='''+LLNOEdit.Text+''') ');
    sql.add('order by TSID');
    //FuncObj.WriteErrorLog(sql.Text);
    Active:=true;
  end;
  //
end;

procedure TEquipmentR.FormDestroy(Sender: TObject);
begin
  EquipmentR:=nil;
end;

procedure TEquipmentR.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=Cafree;
end;

procedure TEquipmentR.Button2Click(Sender: TObject);
var i,j:integer;
    bm:Tbookmark;
    bookmarklist:tbookmarklistEh;
begin
  if (not query1.Active) then
  begin
    abort;
  end;
  if (Query1.recordcount<1) then
  begin
    abort;
  end;
  if query1.recordcount>0 then
  begin
    query1.disablecontrols;
    bm:=query1.getbookmark;
    bookmarklist:=DBGridEh1.selectedrows;
    if bookmarklist.count=0 then DBGridEh1.SelectedRows.CurrentRowSelected:= true;
    try
      for i:=0 to bookmarklist.count-1 do
      begin
        query1.gotobookmark(pointer(bookmarklist[i]));
        with Deliver_EquipmentR.DelDet do
        begin
          edit;
          FieldByName('TSID').Value:=query1.fieldbyname('TSID').Value;
          FieldByName('DepName').Value:=query1.fieldbyname('DepName').Value;
          FieldByName('TSBH').Value:=query1.fieldbyname('TSBH').Value;
          FieldByName('SBBH').Value:=query1.fieldbyname('SBBH').Value;
          FieldByName('LSBH').Value:=query1.fieldbyname('LSBH').Value;
          FieldByName('QUCBH').Value:=query1.fieldbyname('QUCBH').Value;
          FieldByName('ZWPM').Value:=query1.fieldbyname('ZWPM').Value;
          FieldByName('YWPM').Value:=query1.fieldbyname('YWPM').Value;
          FieldByName('Qty').Value:=query1.fieldbyname('Qty').Value;
          //
          FieldByName('PARAMENT1').Value:='DepID';
          FieldByName('Value1').Value:=Deliver_EquipmentR.DepID_CD;
          FieldByName('COLUMN1').Value:=Deliver_EquipmentR.DepName_CD;
          FieldByName('PARAMENT2').Value:='DepID_Memo';
          FieldByName('Value2').Value:=Deliver_EquipmentR.DepName_CD;
          FieldByName('COLUMN2').Value:=Deliver_EquipmentR.DepName_CD;
          FieldByName('PARAMENT3').Value:='Status';
          FieldByName('Value3').Value:='R';
          Insert;
        end;
      end;
    finally
      begin
        query1.gotobookmark(bm);
        query1.freebookmark(bm);
        query1.enablecontrols;
        showmessage('You have finish copy!');
        Close;
      end;
    end;
  end;

end;

end.
