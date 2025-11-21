unit EquipmentS1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DB, DBTables, GridsEh, DBGridEh,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL,
  DBAxisGridsEh;

type
  TEquipmentS = class(TForm)
    Panel1: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Button1: TButton;
    YWPMEdit: TEdit;
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
    ZWPMEdit: TEdit;
    GroupBox1: TGroupBox;
    CKLL: TCheckBox;
    CKRK: TCheckBox;
    CKBB: TCheckBox;
    CKMM: TCheckBox;
    CKHH: TCheckBox;
    CKRR: TCheckBox;
    CKFF: TCheckBox;
    CKTT: TCheckBox;
    Label6: TLabel;
    Label_TagEdit: TEdit;
    Query1LABEL_Tag: TStringField;
    GroupBox2: TGroupBox;
    RB2: TRadioButton;
    RB1: TRadioButton;
    RB3: TRadioButton;
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
  EquipmentS: TEquipmentS;

implementation

uses Deliver_EquipmentS1, main1, FunUnit;

{$R *.dfm}


procedure TEquipmentS.DBGridEh1DblClick(Sender: TObject);
begin
  if query1.recordcount>0 then
  begin
    with Deliver_EquipmentS.DelDet do
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
      Insert;
    end;
  end;
end;

procedure TEquipmentS.Button1Click(Sender: TObject);
var SubSQL:String;
begin
  //
  with Query1 do
  begin
    active:=false;
    sql.clear;
    sql.Add('select TSCD.TSID,TSCD.SBBH,TSCD.TSBH,TSCD.Status,TSCD.Qty,TSCD.XSBH,TSCD.NSX,TSCD.InDATE,TSCD.JDBDATE,TSCD.JDEDATE,IsNull(TSCD.JDTS,TSCD.DepID) as DepID,TSCD.DepID_Memo,IsNull(JDBDep.DepName,Bdep_loca.DepName) as DepName,TSCD_ZSZL.zsjc_yw, ');
    sql.Add('       TSCD_SB.LSBH,TSCD_SB.QUCBH,TSCD_SB.AuthCE,IsNull(TSCD_SB.YWPM,CLZL.YWPM) as YWPM,IsNull(TSCD_SB.ZWPM,CLZL.ZWPM) as ZWPM,Bdep_appy.DepName as applyDepname,TSCD.LABEL_Tag  ');
    sql.add('from TSCD ');
    sql.add('left join TSCD_SB on TSCD_SB.SBBH=TSCD.SBBH ');
    sql.Add('left join CLZL on CLZL.cldh=TSCD.SBBH ');
    sql.add('left join TSCD_BDepartment Bdep_loca on Bdep_loca.ID=TSCD.DepID  ');
    sql.add('left join TSCD_ZSZL on TSCD_ZSZL.ZSDH=TSCD_SB.ZSDH ');
    sql.add('left join TSCD_KCRK on TSCD_KCRK.RKNO=TSCD.RKNO ');
    sql.add('left join TSCD_BDepartment Bdep_appy on Bdep_appy.ID=TSCD_KCRK.DepID ');
    sql.add('left join TSCD_BDepartment JDBDep on JDBDep.ID=TSCD.JDTS ');
    sql.add('where TSCD.SBBH like '''+SBBHEdit.Text+'%''');
    if TSBHEdit.Text <> '' then
    sql.add('and TSCD.TSBH like '''+TSBHEdit.Text+'%''');
    if YWPMEdit.Text <> '' then
    sql.add('and  IsNull(TSCD_SB.YWPM,CLZL.YWPM) like '''+YWPMEdit.Text+'%'' ');
    if ZWPMEdit.Text <> '' then
    sql.add('and  IsNull(TSCD_SB.ZWPM,CLZL.ZWPM) like '''+ZWPMEdit.Text+'%'' ');
    if applyDepnameEdit.Text<>'' then
    sql.add('and Bdep_loca.Depname like ''%'+applyDepnameEdit.Text+'%'' ');
    if RB1.Checked=true then
      SQl.Add('and TSCD.LB=1 ');
    if RB2.Checked=true then
    begin
      SQl.Add('and TSCD.LB=2 and TSCD.Label_Tag like ''A%'' ');
      SQl.Add('and TSCD.DepID = '''+Deliver_EquipmentS.DelMas.FieldByName('DepID').AsString+''' ');
    end;
    if RB3.Checked=true then
      SQl.Add('and TSCD.LB=2 and TSCD.Label_Tag like ''B%'' ');
    if Label_TagEdit.Text<>'' then
      SQL.Add('and TSCD.Label_tag like '''+Label_TagEdit.Text+'%''  ');
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
    sql.add('order by TSID');
    //FuncObj.WriteErrorLog(sql.Text);
    Active:=true;
  end;
  //
end;

procedure TEquipmentS.FormDestroy(Sender: TObject);
begin
  EquipmentS:=nil;
end;

procedure TEquipmentS.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=Cafree;
end;

procedure TEquipmentS.Button2Click(Sender: TObject);
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
        with Deliver_EquipmentS.DelDet do
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
