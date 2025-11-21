unit EntryList_Declaration1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GridsEh, DBGridEh, ComCtrls, StdCtrls, ExtCtrls, DB, DBTables;

type
  TEntryList_Declaration = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label3: TLabel;
    Button1: TButton;
    EDIT1: TEdit;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    Edit2: TEdit;
    DBGridEh1: TDBGridEh;
    Query1: TQuery;
    DataSource1: TDataSource;
    Query1Declaration: TStringField;
    Query1DeclarationDate: TDateTimeField;
    Query1Docno: TStringField;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  EntryList_Declaration: TEntryList_Declaration;
  Kind:string;

implementation

uses EntryList1, EntryTotal1, EntryList_InvoiceModify1;

{$R *.dfm}

procedure TEntryList_Declaration.Button1Click(Sender: TObject);
begin
  With Query1 do
  begin 
    Active:=false;
    SQL.Clear; 
    SQL.Add('select distinct Declaration,DeclarationDate,Docno   ');
    SQL.Add('from CGZL_Declaration  ');
    SQL.Add('where convert(varchar,DeclarationDate,111) between'''+formatdatetime('yyyy/MM/dd', DTP1.Date)+''' and '''+formatdatetime('yyyy/MM/dd', DTP2.Date)+''' ');
      if Edit2.Text<>'' then
        SQL.Add('     and Docno like ''%'+Edit2.Text+'%'' ');
      if Edit1.Text<>'' then
        SQL.Add('     and Declaration like ''%'+Edit1.Text+'%'' ');
    Active:=true;
  end;

end;

procedure TEntryList_Declaration.FormCreate(Sender: TObject);
begin
  DTP1.Date:=Now-30;
  DTP2.Date:=Now;
end;

procedure TEntryList_Declaration.DBGridEh1DblClick(Sender: TObject);
begin
  if Kind='EntryList' then
  begin
    if Query1.recordcount>0 then
    begin
      with EntryList.EnMas do
      begin
        edit;
        fieldbyname('DOCNO').value:=Query1.fieldbyname('Docno').value;
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
          fieldbyname('DOCNO').value:=Query1.fieldbyname('Docno').value;
        end;
        Query1.Active:=false;
       close;
    end;
  end else
  if Kind='EntryInvoiceModify' then
  begin
    if Query1.recordcount>0 then
    begin
      with EntryList_InvoiceModify.Enmas do
      begin
        edit;
        fieldbyname('DOCNO').value:=Query1.fieldbyname('Docno').value;
      end;
      Query1.Active:=false;
      close;
    end;
  end;
end;

end.
