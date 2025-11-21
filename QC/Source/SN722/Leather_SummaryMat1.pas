unit Leather_SummaryMat1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, Buttons, ComCtrls,
  ExtCtrls, StrUtils;

type
  TLeather_SummaryMat = class(TForm)
    Panel2: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    Label14: TLabel;
    edtMatID: TEdit;
    edtMatName: TEdit;
    edtSupp: TEdit;
    edtRY: TEdit;
    edtArticle: TEdit;
    btnQ: TBitBtn;
    Edit3: TEdit;
    Edit4: TEdit;
    DBGrid_detail: TDBGridEh;
    Query1: TQuery;
    DataSource1: TDataSource;
    Query1No_ID: TAutoIncField;
    Query1CLBH: TStringField;
    Query1CGNO: TStringField;
    Query1DateInput: TDateTimeField;
    Query1ZSBH: TStringField;
    Query1RY: TMemoField;
    Query1Article: TStringField;
    Query1CustPO: TStringField;
    Query1Qty: TCurrencyField;
    Query1Remark: TStringField;
    Query1MaterialName: TStringField;
    Query1SupplierName: TStringField;
    Query1RKNO: TStringField;
    Query1Hours: TStringField;
    UpdateSQL1: TUpdateSQL;
    Query2: TQuery;
    chkStore: TCheckBox;
    DTP3: TDateTimePicker;
    Label5: TLabel;
    DTP4: TDateTimePicker;
    procedure btnQClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Query1RYGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure DBGrid_detailDblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Leather_SummaryMat: TLeather_SummaryMat;

implementation
   uses LeatherSummary1, Main1, FunUnit;
{$R *.dfm}

procedure TLeather_SummaryMat.btnQClick(Sender: TObject);
begin
    if trim(LeatherSummary.qry_All.FieldByName('CLBH').AsString)<>'' then
    begin
      chkStore.Checked:=false;
      if (trim(edtMatID.Text)<>'')and(trim(edtMatID.Text)<>LeatherSummary.qry_All.FieldByName('CLBH').AsString) then
        showmessage('You only allow add MaterialID '+LeatherSummary.qry_All.FieldByName('CLBH').AsString+'. Can not change MaterialID other !!!');
      edtMatID.Text:=LeatherSummary.qry_All.FieldByName('CLBH').AsString;
    end;
    with Query1 do
    begin
        active:=false;
        sql.Clear;
        sql.Add('select m1.CLBH,DateInput,ZSBH,CGNO,m1.No_ID,QTY,clzl.YWPM as MaterialName,ZSZL.ZSYWJC as SupplierName,clzl.DWBH,Remark,Hours,m1.RKNO');
        sql.Add('	  ,case WHEN isnull(convert(varchar,m1.RY),'''') = '''' then cast((select RY + '','' from MaterialQcCheck_RY m2 where m1.No_ID=m2.No_ID and isnull(RY,'''') <> '''' group by RY for XML Path ('''')) as varchar(max)) ELSE m1.RY end as RY');
        sql.Add('   ,case WHEN isnull(m1.Article,'''') = '''' then cast((select Article + '','' from MaterialQcCheck_RY m2 where m1.No_ID=m2.No_ID and isnull(Article,'''') <> '''' group by Article for XML Path ('''')) as varchar(500)) ELSE m1.Article end as Article');
        sql.Add('   ,case WHEN isnull(m1.CustPO,'''') = '''' then cast((select CustPO + '','' from MaterialQcCheck_RY m2 where m1.No_ID=m2.No_ID and isnull(CustPO,'''') <> '''' group by CustPO for XML Path ('''')) as varchar(500)) ELSE m1.CustPO end as CustPO');
        sql.Add('from MaterialQCcheck m1 left join clzl on clzl.CLDH = m1.CLBH');
        sql.Add('					 left Join ZSZL on ZSZL.ZSDH =m1.ZSBH');
        sql.Add('where m1.GSBH='''+main.Edit2.Text+''' and left(m1.CLBH,1)=''F'' ');
        sql.Add('                 AND NOT EXISTS (SELECT No_ID FROM Leather_QC WHERE Leather_QC.ReportID=m1.No_ID)');
        if chkStore.Checked then
        begin
            sql.Add('       and CONVERT(varchar(10),m1.DateInput,111) between');
            sql.add('           '''+formatdatetime('yyyy/MM/dd',DTP3.date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP4.date)+''' ');
        end;
        if trim(edtMatID.Text)<>'' then
          sql.Add('       and m1.CLBH = '''+edtMatID.Text+''' ');
        if trim(edtSupp.Text)<>'' then
          sql.Add('       and ZSZL.ZSYWJC like '''+edtSupp.Text+'%'' ');
        if trim(edtArticle.Text)<>'' then
          sql.Add('       and Article like '''+edtArticle.Text+'%'' ');
        if trim(edtRY.Text)<>'' then
          sql.Add('       and RY like '''+edtRY.Text+'%'' ');
        if trim(edtMatName.Text)<>'' then
          sql.Add('       and clzl.YWPM like ''%'+edtMatName.Text+'%'' ');
        if trim(Edit3.Text)<>'' then
          sql.Add('       and clzl.YWPM like ''%'+Edit3.Text+'%'' ');
        if trim(Edit4.Text)<>'' then
          sql.Add('       and CGNO like ''%'+Edit4.Text+'%'' ');
        active:=true;
    end;

end;

procedure TLeather_SummaryMat.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   action:=cafree;
   
end;

procedure TLeather_SummaryMat.FormDestroy(Sender: TObject);
begin
   Leather_SummaryMat:=nil;
end;

procedure TLeather_SummaryMat.FormShow(Sender: TObject);
begin
  // btnQClick(nil);
  main.FormLanguage(Pointer(self),self.Name);
end;

procedure TLeather_SummaryMat.Query1RYGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
   Text := Copy(Query1RY.AsString, 1, 800);
end;

procedure TLeather_SummaryMat.DBGrid_detailDblClick(Sender: TObject);
var y,m,d,a:string;
begin
    if (query1.Active) and (query1.RecordCount=0) then abort;

    if (edtMatID.Text = '') and (query1.RecordCount > 1) then
    begin
        showmessage('You must search material ID first.');
        edtMatID.SetFocus;
        abort;
    end;

    if LeatherSummary.qry_All.RequestLive then
    begin
      LeatherSummary.qry_All.Edit;
      LeatherSummary.qry_All.FieldByName('ReportID').Value:=query1.FieldByName('No_ID').Value;
      LeatherSummary.qry_All.FieldByName('CLBH').Value:= query1.FieldByName('CLBH').Value;
      LeatherSummary.qry_All.FieldByName('DateInput').Value:= query1.FieldByName('DateInput').Value;
      LeatherSummary.qry_All.FieldByName('ZSBH').Value:= query1.FieldByName('ZSBH').Value;

      if LeatherSummary.qry_All.FieldByName('Qty').Value = null then
          LeatherSummary.qry_All.FieldByName('Qty').Value:= query1.fieldbyname('Qty').Value
      else
          LeatherSummary.qry_All.fieldbyname('Qty').Value:= LeatherSummary.qry_All.fieldbyname('Qty').Value + query1.fieldbyname('Qty').Value;
       query1.Delete;
    end;
end;

procedure TLeather_SummaryMat.FormCreate(Sender: TObject);
begin
    DTP3.Date:=date;
    DTP4.Date:=date;
    if LeatherSummary.qry_All.FieldByName('CLBH').AsString<>'' then
      btnQClick(nil);
end;

end.
