unit OrderControlRecord1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, DBTables, DB, StdCtrls, ComCtrls, GridsEh, DBGridEh,
  Buttons, ExtCtrls,comobj;

type
  TOrderControlRecord = class(TForm)
    Panel1: TPanel;
    BB1: TBitBtn;
    BB2: TBitBtn;
    BB3: TBitBtn;
    BB4: TBitBtn;
    BB5: TBitBtn;
    BB6: TBitBtn;
    BB7: TBitBtn;
    DBGridEh1: TDBGridEh;
    Panel2: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Button1: TButton;
    edtZSBH: TEdit;
    edtSupp: TEdit;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    Check: TCheckBox;
    Query1: TQuery;
    DS1: TDataSource;
    Qtemp: TQuery;
    Button2: TButton;
    Button3: TButton;
    Query1UserDate: TDateTimeField;
    Query1ZSNO: TStringField;
    Query1dfl: TStringField;
    Query1Qty: TCurrencyField;
    Query1Quality: TStringField;
    Query1Quantity_KD: TStringField;
    Query1DuDinh: TDateTimeField;
    Query1DungHan: TDateTimeField;
    Query1TreHan: TStringField;
    Query1zsywjc: TStringField;
    Query1ZSBH: TStringField;
    PopupMenu1: TPopupMenu;
    Detail1: TMenuItem;
    Label1: TLabel;
    cbLoc: TComboBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure BB1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Detail1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  OrderControlRecord: TOrderControlRecord;

implementation

uses main1, Detail1, OrderControlRecord_Print1;

{$R *.dfm}

procedure TOrderControlRecord.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TOrderControlRecord.FormDestroy(Sender: TObject);
begin
  OrderControlRecord:=nil;
end;

procedure TOrderControlRecord.BB1Click(Sender: TObject);
begin
  Panel2.Visible := true;
end;

procedure TOrderControlRecord.FormCreate(Sender: TObject);
begin
  DTP1.Date:=date-30;
  DTP2.date:=date;
end;

procedure TOrderControlRecord.Button1Click(Sender: TObject);
begin
  With Query1 do
  begin 
    Active:=false;
    SQL.Clear;
    SQL.Add('  Select convert(smalldatetime,convert(varchar,kcrk.USERDATE,111))  as UserDate,max(kcrk.ZSNO) as ZSNO,zszl_type.dfl,sum(KCRKS.Qty) as Qty,''Dat'' as Quality,'''' as Quantity_KD  ');
    SQL.Add('  	,convert(smalldatetime,convert(varchar,kcrk.USERDATE,111))  as DuDinh,convert(smalldatetime,convert(varchar,kcrk.USERDATE,111))  as DungHan,'''' as TreHan,zsywjc,CGZL.ZSBH  ');
    SQL.Add('  From kcrks left join kcrk  ');
    SQL.Add('  on kcrks.RKNO=kcrk.rkno  ');
    SQL.Add('  Left join cgzl on kcrk.ZSNO=cgzl.CGNO  ');
    SQL.Add('  Left join zszl_type on cgzl.ZSBH=zszl_type.zsdh  ');
    SQL.Add('  Left join zszl on cgzl.ZSBH=zszl.zsdh  ');
    SQL.Add('  Where convert(smalldatetime,convert(varchar,kcrk.USERDATE,111))  between  ');
    SQL.add(' '''+formatdatetime('yyyy/MM/dd',DTP1.date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.date)+''' ');
    SQL.Add('  and kcrk.GSBH='''+main.edit2.text+''' and kcrk.ZSNO <>''ZZZZZZZZZZ'' ');
    if edtZSBH.Text <> '' then
      SQL.Add(' and CGZL.ZSBH like '''+edtZSBH.Text+'%'' ');
    if edtSupp.Text <> '' then
      SQL.Add(' and zsywjc like ''%'+edtSupp.Text+'%'' ');
    if check.Checked then
      SQL.Add(' and CGZL.USERID='''+main.Edit1.Text+''' ');
    if cbLoc.Text <> '' then
      SQL.Add(' and zszl_type.Memo='''+cbLoc.Text+''' ');
    SQL.Add('  Group by convert(smalldatetime,convert(varchar,kcrk.USERDATE,111)),zszl_type.dfl,zsywjc,CGZL.ZSBH  ');
    SQL.Add('  Order by kcrk.USERDATE  ');
    Active:=true;
  end;

end;

procedure TOrderControlRecord.Detail1Click(Sender: TObject);
begin
  Detail:=TDetail.create(self);
  Detail.show;
end;

procedure TOrderControlRecord.Button3Click(Sender: TObject);
begin
  OrderControlRecord_Print:=TOrderControlRecord_Print.Create(self);
  OrderControlRecord_Print.Quickrep1.prepare;
  OrderControlRecord_Print.PageN.caption:=inttostr(OrderControlRecord_Print.quickrep1.QRPrinter.pagecount);
  OrderControlRecord_Print.Quickrep1.preview;
  OrderControlRecord_Print.Free;
end;

procedure TOrderControlRecord.Button2Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin
  if query1.Active then
  begin
    if query1.recordcount=0 then
    begin
      showmessage('No record.');
      abort;
    end;
  end else
  begin
    showmessage('No record.');
    abort;
  end;

  try
    eclApp:=CreateOleObject('Excel.Application');
    WorkBook:=CreateOleObject('Excel.Sheet');
  except
    Application.MessageBox('NO Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
    Exit;
  end;

  try
    WorkBook:=eclApp.workbooks.Add;
    for i:=0 to DBGridEh1.Columns.Count-1 do
    begin
      eclApp.Cells(1,i+1):=DBGridEh1.Columns[i].Title.Caption;
      eclApp.Cells.Cells.item[1,i+1].font.name := 'Calibri';
      eclApp.Cells.Cells.item[1,i+1].font.size:='10';
    end;
    query1.First;
    j:=2;
    while   not  query1.Eof   do
    begin
      eclApp.Cells(j,1):=j-1;
      for i:=0 to DBGridEh1.Columns.Count-1 do
      begin
         eclApp.Cells(j,i+1):=DBGridEh1.Fields[i].Value;
         if ((DBGridEh1.Fields[i].FieldName = 'UserDate') or (DBGridEh1.Fields[i].FieldName = 'DuDinh') or (DBGridEh1.Fields[i].FieldName = 'DungHan')) then
           eclApp.ActiveSheet.Cells[j, i + 1].NumberFormat := 'YYYY/MM/DD';
         eclApp.Cells.Cells.item[j,i+1].font.size:='10';
         eclApp.Cells.Cells.item[j,i+1].font.name := 'Calibri';
      end;
      query1.Next;
      inc(j);
    end;
    eclapp.columns.autofit;
    showmessage('Succeed.');
    eclApp.Visible:=True;
  except
    on   F:Exception   do
      showmessage(F.Message);
  end;
end;

end.
