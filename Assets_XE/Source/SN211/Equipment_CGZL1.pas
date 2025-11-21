unit Equipment_CGZL1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ExtCtrls,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL,
  DBAxisGridsEh;

type
  TEquipment_CGZL = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    edtCGNO: TEdit;
    btnQuery: TButton;
    DBGridEh1: TDBGridEh;
    DS1: TDataSource;
    Query1: TQuery;
    Query1CGNO: TStringField;
    Query1SBBH: TStringField;
    Query1YWPM: TStringField;
    Query1ZWPM: TStringField;
    Query1LSBH: TStringField;
    Query1QUCBH: TStringField;
    Query1DWBH: TStringField;
    Query1Qty: TFloatField;
    Query1OkQty: TFloatField;
    btnCopy: TButton;
    Query1ZSJC_YW: TStringField;
    UpdateSQL1: TUpdateSQL;
    Query1ZSJC_ZW: TStringField;
    Query1Memo: TStringField;
    Query1VNPrice: TCurrencyField;
    Query1USPrice: TFloatField;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnQueryClick(Sender: TObject);
    procedure DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnCopyClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Equipment_CGZL: TEquipment_CGZL;

implementation

uses EntryEquipment1, FunUnit;

{$R *.dfm}

procedure TEquipment_CGZL.FormDestroy(Sender: TObject);
begin
  Equipment_CGZL:=nil;
end;

procedure TEquipment_CGZL.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=CaFree;
end;

procedure TEquipment_CGZL.btnQueryClick(Sender: TObject);
begin
  with Query1 do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select TSCD_CGZLS.CGNO,TSCD_CGZLS.SBBH,TSCD_SB.YWPM,TSCD_SB.ZWPM,TSCD_SB.LSBH,TSCD_SB.QUCBH,TSCD_SB.DWBH,TSCD_CGZLS.Qty,TSCD_CGZLS.VNPrice,TSCD_CGZLS.USPrice ');
    SQL.Add('       ,IsNull(TSCD_KCRKS.OkQty,0) as OkQty,TSCD_ZSZL.ZSJC_YW,TSCD_ZSZL.ZSJC_ZW,TSCD_SB.Memo     ');
    SQL.Add('from TSCD_CGZLS');
    SQL.Add('left join TSCD_SB on TSCD_SB.SBBH = TSCD_CGZLS.SBBH ');
    SQL.Add('left join TSCD_ZSZL on TSCD_ZSZL.ZSDH=TSCD_SB.ZSDH ');
    SQL.Add('left join (Select ZSNO,IsNull(SBBH,'''') as SBBH,IsNull(SUM(Qty),0) as OkQty');
    SQL.Add('           from TSCD_KCRK');
    SQL.Add('           left join TSCD_KCRKS on TSCD_KCRK.RKNO=TSCD_KCRKS.RKNO');
    SQL.Add('           where TSCD_KCRK.ZSNO='''+edtCGNO.Text+''' ');
    SQL.Add('           Group by ZSNO,SBBH');
    SQL.Add('            ) TSCD_KCRKS on TSCD_KCRKS.ZSNO=TSCD_CGZLS.CGNO and TSCD_KCRKS.SBBH=TSCD_CGZLS.SBBH');
    SQL.Add('where TSCD_CGZLS.CGNO='''+edtCGNO.Text+''' ');
    SQL.Add('order by TSCD_CGZLS.CGNO');
    //funcObj.WriteErrorLog(sql.Text);
    Active:=true;
  end;
end;

procedure TEquipment_CGZL.DBGridEh1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if Query1.FieldByName('Qty').value<=Query1.FieldByName('OkQty').value then
  begin
    DBGridEh1.canvas.font.color:=clBlue;
  end;
end;

procedure TEquipment_CGZL.DBGridEh1DblClick(Sender: TObject);
begin
  if (not query1.Active) then
  begin
    abort;
  end;
  if (Query1.recordcount<1) then
  begin
    abort;
  end;
  if query1.fieldbyname('Qty').Value-query1.fieldbyname('OkQty').Value>0 then
  begin
    with EntryEquipment.EnDet do
    begin
      edit;
      FieldByName('SBBH').Value:=query1.fieldbyname('SBBH').Value;
      FieldByName('YWPM').Value:=query1.fieldbyname('YWPM').Value;
      FieldByName('QUCBH').Value:=query1.fieldbyname('QUCBH').Value;
      FieldByName('LSBH').Value:=query1.fieldbyname('LSBH').Value;
      FieldByName('Qty').Value:=query1.fieldbyname('Qty').Value-query1.fieldbyname('OkQty').Value;
      FieldByName('VNPrice').Value:=query1.fieldbyname('VNPrice').Value;
      FieldByName('USprice').Value:=query1.fieldbyname('USprice').Value;
      Insert;
    end;
    Query1.Edit;
    Query1.FieldByName('Qty').Value:=query1.fieldbyname('Qty').Value-query1.fieldbyname('OkQty').Value;
    Query1.Post;
  end;
end;

procedure TEquipment_CGZL.FormCreate(Sender: TObject);
begin
  edtCGNO.Text:=EntryEquipment.EnMas.FieldByName('ZSNO').AsString;
  btnQuery.Click;
end;

procedure TEquipment_CGZL.btnCopyClick(Sender: TObject);
var i,j,Num,Qty:integer;
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

        if query1.fieldbyname('Qty').Value-query1.fieldbyname('OkQty').Value>0 then
        begin
          with EntryEquipment.EnDet do
          begin
            edit;
            FieldByName('SBBH').Value:=query1.fieldbyname('SBBH').Value;
            FieldByName('YWPM').Value:=query1.fieldbyname('YWPM').Value;
            FieldByName('QUCBH').Value:=query1.fieldbyname('QUCBH').Value;
            FieldByName('LSBH').Value:=query1.fieldbyname('LSBH').Value;
            FieldByName('Qty').Value:=query1.fieldbyname('Qty').Value-query1.fieldbyname('OkQty').Value;
            FieldByName('VNPrice').Value:=query1.fieldbyname('VNPrice').Value;
            FieldByName('USprice').Value:=query1.fieldbyname('USprice').Value;
            Insert;
          end;
          Query1.Edit;
          Query1.FieldByName('Qty').Value:=query1.fieldbyname('Qty').Value-query1.fieldbyname('OkQty').Value;
          Query1.Post;
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
