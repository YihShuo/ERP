unit Equipment_SBBH1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls, GridsEh,
  DBGridEh, Spin, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh,
  EhLibVCL, DBAxisGridsEh;

type
  TEquipment_SBBH = class(TForm)
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
    edtZSYWJC: TEdit;
    Button1: TButton;
    SpinEdit1: TSpinEdit;
    Label6: TLabel;
    Label7: TLabel;
    edtZWPM: TEdit;
    Label8: TLabel;
    edtZSZWJC: TEdit;
    Query1ZSJC_ZW: TStringField;
    Query1ZSJC_YW: TStringField;
    Query1Memo_SB: TStringField;
    Query1ZSDH: TStringField;
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
  Equipment_SBBH: TEquipment_SBBH;

implementation

uses main1 , EntryEquipment1, FunUnit;

{$R *.dfm}

procedure TEquipment_SBBH.btnQueryClick(Sender: TObject);
begin
  with Query1 do
  begin
    active:=false;
    sql.Clear;
    sql.Add('select TSCD_SB.*,TSCD_ZSZL.ZSJC_YW,TSCD_ZSZL.ZSJC_ZW,TSCD_SB.Memo as Memo_SB ');
    sql.Add('from TSCD_SB ');
    sql.Add('left join TSCD_ZSZL on TSCD_SB.ZSDH = TSCD_ZSZL.zsdh ');
    sql.Add('where SBBH like '''+edtSBBH.Text+'%'' ');
    if edtYWPM.Text <> '' then
      sql.Add('and YWPM like ''%'+edtYWPM.Text+'%'' ');
    if edtZWPM.Text <> '' then
      sql.Add('and ZWPM like ''%'+edtZWPM.Text+'%'' ');
    if edtQUCBH.Text<>'' then
      sql.Add('and TSCD_SB.QUCBH like ''%'+edtQUCBH.Text+'%'' ');
    if edtLSBH.Text<>'' then
      sql.Add('and TSCD_SB.LSBH like ''%'+edtLSBH.Text+'%'' ');
    if edtZSYWJC.Text<>'' then
      sql.Add('and TSCD_ZSZL.ZSJC_YW like ''%'+edtZSYWJC.Text+'%'' ');
    if edtZSZWJC.Text<>'' then
      sql.Add('and TSCD_ZSZL.ZSJC_ZW like ''%'+edtZSZWJC.Text+'%'' ');
    //FuncObj.WriteErrorLog(sql.Text);
    active:=true;
  end;
end;


procedure TEquipment_SBBH.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=Cafree;
end;


procedure TEquipment_SBBH.FormDestroy(Sender: TObject);
begin
  Equipment_SBBH:=nil;
end;

procedure TEquipment_SBBH.DBGridEh1DblClick(Sender: TObject);
var i:integer;
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
    for i:=1 to SpinEdit1.Value do
    begin
      with EntryEquipment.EnDet do
      begin
        edit;
        FieldByName('SBBH').Value:=query1.fieldbyname('SBBH').Value;
        FieldByName('YWPM').Value:=query1.fieldbyname('YWPM').Value;
        FieldByName('QUCBH').Value:=query1.fieldbyname('QUCBH').Value;
        FieldByName('LSBH').Value:=query1.fieldbyname('LSBH').Value;
        FieldByName('Qty').Value:=1;
        Insert;
      end;
    end;
  end;
end;

procedure TEquipment_SBBH.FormCreate(Sender: TObject);
begin
  edtZSYWJC.Text:=EntryEquipment.EnMas.FieldByName('ZSJC_YW').AsString;
end;

procedure TEquipment_SBBH.Button1Click(Sender: TObject);
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
        for j:=1 to SpinEdit1.Value do
        begin
          with EntryEquipment.EnDet do
          begin
            edit;
            FieldByName('SBBH').Value:=query1.fieldbyname('SBBH').Value;
            FieldByName('YWPM').Value:=query1.fieldbyname('YWPM').Value;
            FieldByName('QUCBH').Value:=query1.fieldbyname('QUCBH').Value;
            FieldByName('LSBH').Value:=query1.fieldbyname('LSBH').Value;
            FieldByName('Qty').Value:=1;
            Insert;
          end;
        end;
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
