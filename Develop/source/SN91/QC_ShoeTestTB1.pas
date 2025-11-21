unit QC_ShoeTestTB1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ExtCtrls, ComCtrls;

type
  TQC_ShoeTestTB = class(TForm)
    Panel2: TPanel;
    Pa1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Button2: TButton;
    Edit3: TEdit;
    Edit2: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    DataSource2: TDataSource;
    Query2: TQuery;
    Query2Season: TStringField;
    Query2TestNo: TStringField;
    Query2SR: TStringField;
    Query2SampleOrder: TStringField;
    Query2Stage: TStringField;
    Pa2: TPanel;
    PC1: TPageControl;
    TS1: TTabSheet;
    TS2: TTabSheet;
    DBGridEh2: TDBGridEh;
    DataSource3: TDataSource;
    Query3: TQuery;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Button1: TButton;
    Ed1: TEdit;
    Ed2: TEdit;
    Ed3: TEdit;
    Query3DDBH: TStringField;
    Query3Article: TStringField;
    Query3XieXing: TStringField;
    DBGridEh3: TDBGridEh;
    Query2qty: TFloatField;
    Query2depname: TStringField;
    Query2ywsm: TStringField;
    Query2parts: TStringField;
    Query2ywsm1: TStringField;
    Button3: TButton;
    Pa3: TPanel;
    Label5: TLabel;
    Label6: TLabel;
    Button4: TButton;
    Edit1: TEdit;
    Edit6: TEdit;
    TS3: TTabSheet;
    DBGridEh1: TDBGridEh;
    Query1: TQuery;
    StringField2: TStringField;
    DataSource4: TDataSource;
    Query1workOrderId: TStringField;
    procedure Button2Click(Sender: TObject);
    procedure DBGridEh2CellClick(Column: TColumnEh);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBGridEh3CellClick(Column: TColumnEh);
    procedure PC1Change(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure DBGridEh1CellClick(Column: TColumnEh);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  QC_ShoeTestTB: TQC_ShoeTestTB;

implementation

uses QC_ShoeTest1, main1;

{$R *.dfm}

procedure TQC_ShoeTestTB.Button2Click(Sender: TObject);
begin
  with query2 do
  begin
      active:=false;
      sql.Clear;
      sql.Add('select shoetest.Season,shoetest.TestNo,shoetest.Article as SR,shoetest.ypdh as SampleOrder,shoetest.Stage,');
      sql.Add('shoetest2.qty,shoetest2.depname,(select ywsm from shoetestdetail where yybh = shoetest2.depname) as ywsm, ');
      sql.Add('shoetest2.parts,(select ywsm from shoetestdetail where yybh = shoetest2.parts) as ywsm1 ');
      sql.Add('from shoetest ');
      sql.Add('left join shoetest2 on shoetest.TestNo = shoetest2.TestNo ');
      sql.Add('where 1=1');
      if edit2.Text<>'' then
         sql.Add(' and shoetest.Season like ''%'+edit2.Text+'%'' ');
      if edit5.Text<>'' then
         sql.Add(' and shoetest.stage like ''%'+edit5.Text+'%'' ');
      if edit3.Text<>'' then
         sql.Add(' and shoetest.testno like ''%'+edit3.Text+'%'' ');
      if edit4.Text<>'' then
         sql.Add(' and shoetest.Article like ''%'+edit4.Text+'%'' ');
      active:=true;
  end;

end;

procedure TQC_ShoeTestTB.DBGridEh2CellClick(Column: TColumnEh);
begin
{   QC_ShoeTest.query1.Edit;
   QC_ShoeTest.query1.FieldByName('SCBH').Value := query2.FieldByName('TestNo').Value;
   QC_ShoeTest.query1.FieldByName('qty').Value := query2.FieldByName('qty').Value;
   QC_ShoeTest.query1.FieldByName('DepName').Value := query2.FieldByName('DepName').Value;
   QC_ShoeTest.query1.FieldByName('Parts').Value := query2.FieldByName('Parts').Value;
   query2.active:=false;
   QC_ShoeTestTB.close;  }
end;

procedure TQC_ShoeTestTB.FormCreate(Sender: TObject);
begin
    if main.edit2.text='CDC' then
    begin
       PC1.ActivePage:=TS1;
       PA1.Visible:=True;
       PA3.Visible:=False;
       PA2.Visible:=False;
    end;
    if main.edit2.text='VA12' then
    begin
       PC1.ActivePage:=TS2;
       PA1.Visible:=False;
       PA3.Visible:=False;
       PA2.Visible:=True;
    end;
    DBgrideh2.Columns[0].Title.Alignment:=taCenter; //內容左右居中
    DBgrideh2.Columns[0].Alignment:=taCenter;  //內容上下居中
    DBgrideh2.Columns[1].Title.Alignment:=taCenter; //內容左右居中
    DBgrideh2.Columns[1].Alignment:=taCenter;  //內容上下居中
    DBgrideh2.Columns[2].Title.Alignment:=taCenter; //內容左右居中
    DBgrideh2.Columns[2].Alignment:=taCenter;  //內容上下居中
    DBgrideh2.Columns[3].Title.Alignment:=taCenter; //內容左右居中
    DBgrideh2.Columns[3].Alignment:=taCenter;  //內容上下居中
    DBgrideh2.Columns[4].Title.Alignment:=taCenter; //內容左右居中
    DBgrideh2.Columns[4].Alignment:=taCenter;  //內容上下居中
    //
    DBgrideh3.Columns[0].Title.Alignment:=taCenter; //內容左右居中
    DBgrideh3.Columns[0].Alignment:=taCenter;  //內容上下居中
    DBgrideh3.Columns[1].Title.Alignment:=taCenter; //內容左右居中
    DBgrideh3.Columns[1].Alignment:=taCenter;  //內容上下居中
    DBgrideh3.Columns[2].Title.Alignment:=taCenter; //內容左右居中
    DBgrideh3.Columns[2].Alignment:=taCenter;  //內容上下居中

    DBGridEh1.Columns[0].Title.Alignment:=taCenter; //內容左右居中
    DBGridEh1.Columns[0].Alignment:=taCenter;  //內容上下居中
    DBGridEh1.Columns[1].Title.Alignment:=taCenter; //內容左右居中
    DBGridEh1.Columns[1].Alignment:=taCenter;  //內容上下居中
end;

procedure TQC_ShoeTestTB.Button1Click(Sender: TObject);
begin
  with query3 do
  begin
      active:=false;
      sql.Clear;
      sql.Add('SELECT DDBH,Article,XieXing from ddzl where 1=1');
      if ed1.Text<>'' then
         sql.Add(' and DDZL.DDBH like ''%'+ed1.Text+'%'' ');
      if ed2.Text<>'' then
         sql.Add(' and DDZL.Article like ''%'+ed2.Text+'%'' ');
      if ed3.Text<>'' then
         sql.Add(' and DDZL.XieXing like ''%'+ed3.Text+'%'' ');
      active:=true;
  end;

end;

procedure TQC_ShoeTestTB.DBGridEh3CellClick(Column: TColumnEh);
begin
   QC_ShoeTest.query1.Edit;
   QC_ShoeTest.query1.FieldByName('SCBH').Value := query3.FieldByName('ddbh').Value;
   QC_ShoeTest.query1.FieldByName('CKBH').Value := 'VA12';
   query3.active:=false;
   QC_ShoeTestTB.close;
end;

procedure TQC_ShoeTestTB.PC1Change(Sender: TObject);
begin
  if PC1.ActivePage=TS1 then
  begin
    PA1.Visible:=True;
    PA2.Visible:=False;
    PA3.Visible:=False;
  end;
  if PC1.ActivePage=TS2 then
  begin
    PA1.Visible:=False;
    PA3.Visible:=False;
    PA2.Visible:=True;
  end;
  if PC1.ActivePage=TS3 then
  begin
    PA1.Visible:=False;
    PA2.Visible:=False;
    PA3.Visible:=True;
  end;
end;
procedure TQC_ShoeTestTB.Button3Click(Sender: TObject);
var
  i: Integer;
begin
  if DBGridEh2.SelectedRows.Count > 0 then
  begin
    with DBGridEh2.DataSource.DataSet do
    begin
      for i := 0 to DBGridEh2.SelectedRows.Count-1 do
      begin
        GotoBookmark(Pointer(DBGridEh2.SelectedRows.Items[i]));
        if i > 0 then
          QC_ShoeTest.query1.Insert;
        QC_ShoeTest.query1.FieldByName('SCBH').Value := query2.FieldByName('TestNo').Value;
        QC_ShoeTest.query1.FieldByName('qty').Value := query2.FieldByName('qty').Value;
        QC_ShoeTest.query1.FieldByName('DepName').AsString := query2.FieldByName('DepName').AsString;
        QC_ShoeTest.query1.FieldByName('Parts').AsString := query2.FieldByName('Parts').AsString;
        QC_ShoeTest.query1.FieldByName('CKBH').Value := 'CDC';
      end;
    end;
  end;
  query2.active:=false;
  QC_ShoeTestTB.close;
end;

procedure TQC_ShoeTestTB.Button4Click(Sender: TObject);
begin
  with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.Add('SELECT workOrderId, style Article from CBY_Orders where 1=1');
    if Edit1.Text<>'' then
       sql.Add(' and workOrderId like ''%'+Edit1.Text+'%'' ');
    if Edit6.Text<>'' then
       sql.Add(' and style like ''%'+Edit6.Text+'%'' ');
    active:=true;
  end;
end;

procedure TQC_ShoeTestTB.DBGridEh1CellClick(Column: TColumnEh);
begin
   QC_ShoeTest.query1.Edit;
   QC_ShoeTest.query1.FieldByName('SCBH').Value := query1.FieldByName('workOrderId').Value;
   QC_ShoeTest.query1.FieldByName('CKBH').Value := 'CBY';
   query1.active:=false;
   QC_ShoeTestTB.close;
end;

procedure TQC_ShoeTestTB.FormDestroy(Sender: TObject);
begin
   QC_ShoeTestTB := nil;
end;

procedure TQC_ShoeTestTB.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

end.
