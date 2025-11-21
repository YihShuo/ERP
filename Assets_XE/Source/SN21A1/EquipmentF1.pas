unit EquipmentF1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DB, DBTables, GridsEh, DBGridEh,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL,
  DBAxisGridsEh;

type
  TEquipmentF = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    edtSBBH: TEdit;
    btnQuery: TButton;
    edtYWPM: TEdit;
    edtQUCBH: TEdit;
    edtLSBH: TEdit;
    edtZSJC_YW: TEdit;
    Button1: TButton;
    edtZWPM: TEdit;
    edtVWPM: TEdit;
    DS1: TDataSource;
    Query1: TQuery;
    Query1SBBH: TStringField;
    Query1YWPM: TStringField;
    Query1ZWPM: TStringField;
    Query1VWPM: TStringField;
    Query1HGPM: TStringField;
    Query1QUCBH: TStringField;
    Query1LSBH: TStringField;
    Query1ZSDH: TStringField;
    Query1DWBH: TStringField;
    Query1CQDH: TStringField;
    Query1AuthCompany: TBooleanField;
    Query1AuthCE: TBooleanField;
    Query1AuthBrand: TBooleanField;
    Query1QUSPrice: TFloatField;
    Query1QVNPrice: TCurrencyField;
    Query1Memo: TStringField;
    Query1USERID: TStringField;
    Query1USERDATE: TDateTimeField;
    Query1YN: TStringField;
    Query1ZSJC_YW: TStringField;
    DBGridEh1: TDBGridEh;
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure btnQueryClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  EquipmentF: TEquipmentF;

implementation

uses Deliver_EquipmentF1, main1, FunUnit;

{$R *.dfm}


procedure TEquipmentF.DBGridEh1DblClick(Sender: TObject);
begin
  if query1.recordcount>0 then
  begin
    with Deliver_EquipmentF.DelDet do
    begin
      edit;
      FieldByName('TSID').Value:='ZZZZZZZZZZZ';
      FieldByName('TSBH').Value:='ZZZZ';
      FieldByName('SBBH').Value:=query1.fieldbyname('SBBH').Value;
      FieldByName('LSBH').Value:=query1.fieldbyname('LSBH').Value;
      FieldByName('QUCBH').Value:=query1.fieldbyname('QUCBH').Value;
      FieldByName('ZWPM').Value:=query1.fieldbyname('ZWPM').Value;
      FieldByName('YWPM').Value:=query1.fieldbyname('YWPM').Value;
      FieldByName('Qty').Value:=1;
      Insert;
    end;
    close;
  end;
end;

procedure TEquipmentF.btnQueryClick(Sender: TObject);
begin
  with Query1 do
  begin
    active:=false;
    sql.Clear;
    sql.Add('select TSCD_SB.*,TSCD_ZSZL.ZSJC_YW from TSCD_SB');
    sql.Add('left join TSCD_ZSZL on TSCD_SB.ZSDH = TSCD_ZSZL.zsdh');
    sql.Add('where SBBH like '''+edtSBBH.Text+'%'' ');
    if edtYWPM.Text <> '' then
      sql.Add('and YWPM like ''%'+edtYWPM.Text+'%'' ');
    if edtZWPM.Text <> '' then
      sql.Add('and ZWPM like ''%'+edtZWPM.Text+'%'' ');
    if edtVWPM.Text <> '' then
      sql.Add('and VWPM like ''%'+edtVWPM.Text+'%'' ');
    if edtQUCBH.Text<>'' then
      sql.Add('and TSCD_SB.QUCBH like ''%'+edtQUCBH.Text+'%'' ');
    if edtLSBH.Text<>'' then
      sql.Add('and TSCD_SB.LSBH like ''%'+edtLSBH.Text+'%'' ');
    if edtZSJC_YW.Text<>'' then
      sql.Add('and TSCD_ZSZL.ZSJC_YW like ''%'+edtZSJC_YW.Text+'%'' ');
    //FuncObj.WriteErrorLog(sql.Text);
    active:=true;
  end;
end;

procedure TEquipmentF.Button1Click(Sender: TObject);
var i:integer;
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

  //
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
        with Deliver_EquipmentF.DelDet do
        begin
          edit;
          //
          FieldByName('TSID').Value:='ZZZZZZZZZZZ';
          FieldByName('TSBH').Value:='ZZZZ';
          FieldByName('SBBH').Value:=query1.fieldbyname('SBBH').Value;
          FieldByName('LSBH').Value:=query1.fieldbyname('LSBH').Value;
          FieldByName('QUCBH').Value:=query1.fieldbyname('QUCBH').Value;
          FieldByName('ZWPM').Value:=query1.fieldbyname('ZWPM').Value;
          FieldByName('YWPM').Value:=query1.fieldbyname('YWPM').Value;
          FieldByName('Qty').Value:=1;
          Insert;
        end;
        //
      end;
    finally
      begin
        query1.gotobookmark(bm);
        query1.freebookmark(bm);
        query1.enablecontrols;
        showmessage('You have finish copy!');
      end;
    end;
  end;
end;

procedure TEquipmentF.FormDestroy(Sender: TObject);
begin
  EquipmentF:=nil;
end;

procedure TEquipmentF.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=Cafree;
end;

end.
