unit EntryList_VATNO1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GridsEh, DBGridEh, StdCtrls, ExtCtrls, ComCtrls, DB, DBTables;

type
  TEntryList_VATNO = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    EDIT1: TEdit;
    DBGridEh1: TDBGridEh;
    DTP1: TDateTimePicker;
    Label4: TLabel;
    DTP2: TDateTimePicker;
    Label3: TLabel;
    Edit2: TEdit;
    Query1: TQuery;
    DataSource1: TDataSource;
    Query1VATNO: TStringField;
    Query1VATDATE: TDateTimeField;
    Query1ZSBH_MST: TStringField;
    Query1VNACC: TFloatField;
    Query1USERID: TStringField;
    Query1USERDATE: TDateTimeField;
    Query1YN: TStringField;
    Query1zsdh: TStringField;
    Query1zsywjc: TStringField;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  EntryList_VATNO: TEntryList_VATNO;
  Kind:string;

implementation

uses EntryList1, EntryTotal1, EntryList_InvoiceModify1;

{$R *.dfm}

procedure TEntryList_VATNO.Button1Click(Sender: TObject);
begin
  With Query1 do
  begin 
    Active:=false;
    SQL.Clear;
    SQL.Add('select CGZL_VATNO.*,zszl.zsdh,zszl.zsywjc   ');
    SQL.Add('from CGZL_VATNO  ');
    SQL.Add('left join zszl on zszl.tybh=CGZL_VATNO.ZSBH_MST  ');
    SQL.Add('where convert(varchar,VATDate,111) between'''+formatdatetime('yyyy/MM/dd', DTP1.Date)+''' and '''+formatdatetime('yyyy/MM/dd', DTP2.Date)+''' ');
    if Edit2.Text<>'' then
      SQL.Add('    and zszl.zsdh like '''+Edit2.Text+'%'' ');
    if Edit1.Text<>'' then
      SQL.Add('    and CGZL_VATNO like '''+Edit1.Text+'%'' ');
    Active:=true;
  end;
end;

procedure TEntryList_VATNO.FormCreate(Sender: TObject);
begin
  DTP1.Date:=Now-30;
  DTP2.Date:=Now;
end;

procedure TEntryList_VATNO.DBGridEh1DblClick(Sender: TObject);
begin
  if Kind='EntryList' then
  begin
    if Query1.recordcount>0 then
    begin
      with EntryList.EnMas do
      begin
        edit;
        fieldbyname('DOCNO').value:=Query1.fieldbyname('VATNO').value;
      end;
      Query1.Active:=false;
      close;
    end;
  end else
  if Kind='EntryTotal' then
  begin
    if Query1.recordcount>0 then
    begin
      with EntryTotal.EnMas do
      begin
        edit;
        fieldbyname('DOCNO').value:=Query1.fieldbyname('VATNO').value;
      end;
      Query1.Active:=false;
      close;
    end;
  end else
  if Kind='EntryInvoiceModify' then
  begin
    if Query1.recordcount>0 then
    begin
      with EntryList_InvoiceModify.EnMas do
      begin
        edit;
        fieldbyname('DOCNO').value:=Query1.fieldbyname('VATNO').value;
      end;
      Query1.Active:=false;
      close;
    end;
  end;
end;

end.
