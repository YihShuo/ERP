unit PurEquipment_SBBH1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls, GridsEh,
  DBGridEh, Spin, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh,
  EhLibVCL, DBAxisGridsEh;

type
  TPurEquipment_SBBH = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    edtSBBH: TEdit;
    btnQuery: TButton;
    edtYWPM: TEdit;
    Query1: TQuery;
    DS1: TDataSource;
    Query1SBBH: TStringField;
    Query1YWPM: TStringField;
    Query1ZWPM: TStringField;
    Query1QUCBH: TStringField;
    Query1ZSDH: TStringField;
    Query1USERID: TStringField;
    Query1USERDATE: TDateTimeField;
    Query1YN: TStringField;
    Query1LSBH: TStringField;
    DBGridEh1: TDBGridEh;
    Label3: TLabel;
    edtQUCBH: TEdit;
    Label4: TLabel;
    edtLSBH: TEdit;
    Label5: TLabel;
    edtZSJC_YW: TEdit;
    Button1: TButton;
    Query1ZSJC_YW: TStringField;
    Query1QUSPrice: TFloatField;
    Query1QVNPrice: TCurrencyField;
    Label6: TLabel;
    edtZWPM: TEdit;
    Query1VWPM: TStringField;
    Query1HGPM: TStringField;
    procedure btnQueryClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PurEquipment_SBBH: TPurEquipment_SBBH;

implementation

uses main1 , PurEquipment1, FunUnit;

{$R *.dfm}

procedure TPurEquipment_SBBH.btnQueryClick(Sender: TObject);
begin
  with Query1 do
  begin
    active:=false;
    sql.Clear;
    sql.Add('select TSCD_SB.*,TSCD_ZSZL.ZSJC_YW from TSCD_SB');
    sql.Add('left join TSCD_ZSZL on TSCD_SB.ZSDH = TSCD_ZSZL.zsdh');
    sql.Add('where SBBH like '''+edtSBBH.Text+'%'' ');
    sql.add('      and isnull(TSCD_SB.TYJH,''N'')<>''Y'' ') ;
    if edtYWPM.Text <> '' then
      sql.Add('and YWPM like ''%'+edtYWPM.Text+'%'' ');
    if edtZWPM.Text <> '' then
      sql.Add('and ZWPM like ''%'+edtZWPM.Text+'%'' ');
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


procedure TPurEquipment_SBBH.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=Cafree;
end;


procedure TPurEquipment_SBBH.FormDestroy(Sender: TObject);
begin
  PurEquipment_SBBH:=nil;
end;

procedure TPurEquipment_SBBH.DBGridEh1DblClick(Sender: TObject);
begin
  if query1.recordcount>0 then
  begin
    with PurEquipment.CGDet do
    begin
      edit;
      FieldByName('SBBH').Value:=query1.fieldbyname('SBBH').Value;
      FieldByName('YWPM').Value:=query1.fieldbyname('YWPM').Value;
      FieldByName('VWPM').Value:=query1.fieldbyname('VWPM').Value;
      FieldByName('ZWPM').Value:=query1.fieldbyname('ZWPM').Value;
      FieldByName('HGPM').Value:=query1.fieldbyname('HGPM').Value;
      FieldByName('QUCBH').Value:=query1.fieldbyname('QUCBH').Value;
      FieldByName('LSBH').Value:=query1.fieldbyname('LSBH').Value;
      FieldByName('VNPrice').Value:=query1.fieldbyname('QVNPrice').Value;
      FieldByName('USprice').Value:=query1.fieldbyname('QUSprice').Value;
      FieldByName('Qty').Value:=1;
      Insert;
    end;
  end;
end;

procedure TPurEquipment_SBBH.FormCreate(Sender: TObject);
begin
  edtZSJC_YW.Text:=PurEquipment.CGMas.FieldByName('ZSJC_YW').AsString;
end;

procedure TPurEquipment_SBBH.Button1Click(Sender: TObject);
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
        with PurEquipment.CGDet do
        begin
          edit;
          FieldByName('SBBH').Value:=query1.fieldbyname('SBBH').Value;
          FieldByName('YWPM').Value:=query1.fieldbyname('YWPM').Value;
          FieldByName('VWPM').Value:=query1.fieldbyname('VWPM').Value;
          FieldByName('ZWPM').Value:=query1.fieldbyname('ZWPM').Value;
          FieldByName('HGPM').Value:=query1.fieldbyname('HGPM').Value;
          FieldByName('QUCBH').Value:=query1.fieldbyname('QUCBH').Value;
          FieldByName('LSBH').Value:=query1.fieldbyname('LSBH').Value;
          FieldByName('Qty').Value:=1;
          FieldByName('VNPrice').Value:=query1.fieldbyname('QVNPrice').Value;
          FieldByName('USprice').Value:=query1.fieldbyname('QUSprice').Value;
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

end.
