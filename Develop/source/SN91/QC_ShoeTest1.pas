unit QC_ShoeTest1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, DB, GridsEh, DBGridEh, DBTables, Buttons,
  Mask, DBCtrlsEh, ComCtrls;

type
  TQC_ShoeTest = class(TForm)
    background: TPanel;
    Panel1: TPanel;
    ToolPanel: TPanel;
    Panel3: TPanel;
    Query1: TQuery;
    DataSource1: TDataSource;
    Button1: TButton;
    Edit1: TEdit;
    BB1: TBitBtn;
    BB2: TBitBtn;
    BB3: TBitBtn;
    BB4: TBitBtn;
    BB5: TBitBtn;
    BB6: TBitBtn;
    BB7: TBitBtn;
    UpdateSQL1: TUpdateSQL;
    Query1TestNO: TStringField;
    Query1GSBH: TStringField;
    Query1SCBH: TStringField;
    Query1UserID: TStringField;
    Query1UserDate: TDateTimeField;
    Label5: TLabel;
    Query3: TQuery;
    Label6: TLabel;
    Edit6: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    Query1Article: TStringField;
    Label3: TLabel;
    Edit2: TEdit;
    Query1Applicant1: TStringField;
    Query1Applicant2: TStringField;
    Query1TestPurpose: TStringField;
    Query1ReportCCTo: TStringField;
    Query1Factory: TStringField;
    Query1ProductionLine: TStringField;
    Query1CustomerPO: TStringField;
    Query1DateOfManufacturing: TDateTimeField;
    Query1ReceiveDate: TDateTimeField;
    Panel2: TPanel;
    DBEditEh1: TDBEditEh;
    DBEditEh2: TDBEditEh;
    DBEditEh3: TDBEditEh;
    DBEditEh5: TDBEditEh;
    DBEditEh6: TDBEditEh;
    DBEditEh7: TDBEditEh;
    Label4: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    DBEditEh8: TDBEditEh;
    DBEditEh9: TDBEditEh;
    Label13: TLabel;
    Label14: TLabel;
    DBEditEh10: TDBEditEh;
    Label15: TLabel;
    DateTimePicker1: TDateTimePicker;
    Query1ShipTo: TStringField;
    Label16: TLabel;
    DBEditEh11: TDBEditEh;
    DBEditEh4: TDBEditEh;
    DBGridEh1: TDBGridEh;
    Query1yn: TStringField;
    Edit3: TEdit;
    Query1ReportNO: TStringField;
    DBEditEh12: TDBEditEh;
    Label17: TLabel;
    Label18: TLabel;
    DBEditEh13: TDBEditEh;
    Query1QTY: TFloatField;
    Query1ReceiveID: TStringField;
    Query1ReceiveQty: TFloatField;
    Query1DepName: TStringField;
    Query1Parts: TStringField;
    Query1ywsm: TStringField;
    Query1ywsm1: TStringField;
    Qtemp: TQuery;
    Query1CKBH: TStringField;
    Label19: TLabel;
    ComboBox3: TComboBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure BB1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BB2Click(Sender: TObject);
    procedure BB3Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure BB7Click(Sender: TObject);
    procedure DBGridEh1Columns2EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure DateTimePicker1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Query1CalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  QC_ShoeTest: TQC_ShoeTest;

implementation

uses main1, QC_ShoeTestTB1;

{$R *.dfm}

procedure TQC_ShoeTest.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TQC_ShoeTest.FormDestroy(Sender: TObject);
begin
   QC_ShoeTest := nil;
end;

procedure TQC_ShoeTest.BB1Click(Sender: TObject);
begin
  ToolPanel.Visible:=true;
end;

procedure TQC_ShoeTest.Button1Click(Sender: TObject);
begin
  with query1 do
  begin
      active:=false;
      sql.Clear;
      sql.Add('select * from (');
      sql.Add('select  top 50 Lab_shoetest.TestNO,Lab_shoetest.GSBH,Lab_shoetest.CKBH,Lab_shoetest.SCBH,Lab_shoetest.UserID,Lab_shoetest.UserDate,shoetest.article,Lab_shoetest.YN,');
      sql.Add('Lab_shoetest.Applicant1,Lab_shoetest.Applicant2,Lab_shoetest.TestPurpose,Lab_shoetest.ReportCCTo,Lab_shoetest.Factory,Lab_shoetest.ProductionLine,');
      sql.Add('Lab_shoetest.CustomerPO,Lab_shoetest.DateOfManufacturing,Lab_shoetest.ReceiveDate,Lab_shoetest.ShipTo,Lab_shoetest.ReportNO,');
      sql.Add('Lab_shoetest.QTY,Lab_shoetest.ReceiveID,Lab_shoetest.ReceiveQty,Lab_shoetest.DepName,Lab_shoetest.Parts from Lab_shoetest');
      sql.Add('left join shoetest on shoetest.testno=Lab_shoetest.scbh where  Lab_shoetest.yn is null and isnull(Lab_shoetest.ckbh,Lab_shoetest.gsbh)=''CDC'' ');
      if edit3.text<>'' then
         sql.Add(' and isnull(Lab_shoetest.ckbh,Lab_shoetest.gsbh) like ''%'+ComboBox3.Text+'%'' ');
      if edit1.Text<>'' then
         sql.Add(' and Lab_shoetest.TestNO like ''%'+edit1.Text+'%'' ');
      if edit2.Text<>'' then
         sql.Add(' and shoetest.article like ''%'+edit2.Text+'%'' ');
      if edit6.Text<>'' then
         sql.Add(' and Lab_shoetest.SCBH like ''%'+edit6.Text+'%'' ');
      if combobox2.Text<>'' then
         sql.Add(' and year(Lab_shoetest.userdate) ='''+combobox2.text+''' ');
      if combobox1.Text<>'' then
         sql.Add('and month(Lab_shoetest.userdate) ='''+combobox1.text+''' ');
      sql.Add('order by Lab_shoetest.userdate desc');
      sql.Add('union');
      sql.Add('select  top 50 Lab_shoetest.TestNO,Lab_shoetest.GSBH,Lab_shoetest.CKBH,Lab_shoetest.SCBH,Lab_shoetest.UserID,Lab_shoetest.UserDate,ddzl.article,Lab_shoetest.YN,');
      sql.Add('Lab_shoetest.Applicant1,Lab_shoetest.Applicant2,Lab_shoetest.TestPurpose,Lab_shoetest.ReportCCTo,Lab_shoetest.Factory,Lab_shoetest.ProductionLine,');
      sql.Add('Lab_shoetest.CustomerPO,Lab_shoetest.DateOfManufacturing,Lab_shoetest.ReceiveDate,Lab_shoetest.ShipTo,Lab_shoetest.ReportNO,');
      sql.Add('Lab_shoetest.QTY,Lab_shoetest.ReceiveID,Lab_shoetest.ReceiveQty,Lab_shoetest.DepName,Lab_shoetest.Parts from Lab_shoetest');
      sql.Add('left join ddzl on ddzl.ddbh=Lab_shoetest.scbh where Lab_shoetest.yn is null and  isnull(Lab_shoetest.ckbh,Lab_shoetest.gsbh)=''VA12'' ');
      if edit3.text<>'' then
         sql.Add(' and isnull(Lab_shoetest.ckbh,Lab_shoetest.gsbh) like ''%'+ComboBox3.Text+'%'' ');
      if edit1.Text<>'' then
         sql.Add(' and Lab_shoetest.TestNO like ''%'+edit1.Text+'%'' ');
      if edit2.Text<>'' then
         sql.Add(' and ddzl.article like ''%'+edit2.Text+'%'' ');
      if edit6.Text<>'' then
         sql.Add(' and Lab_shoetest.SCBH like ''%'+edit6.Text+'%'' ');
      if combobox2.Text<>'' then
         sql.Add(' and year(Lab_shoetest.userdate) ='''+combobox2.text+''' ');
      if combobox1.Text<>'' then
         sql.Add(' and month(Lab_shoetest.userdate) ='''+combobox1.text+''' ');
      sql.Add('order by Lab_shoetest.userdate desc');
      sql.Add('union');
      sql.Add('select  top 50 Lab_shoetest.TestNO,Lab_shoetest.GSBH,Lab_shoetest.CKBH,Lab_shoetest.SCBH,Lab_shoetest.UserID,Lab_shoetest.UserDate,CBY_Orders.style article,Lab_shoetest.YN,');
      sql.Add('Lab_shoetest.Applicant1,Lab_shoetest.Applicant2,Lab_shoetest.TestPurpose,Lab_shoetest.ReportCCTo,Lab_shoetest.Factory,Lab_shoetest.ProductionLine,');
      sql.Add('Lab_shoetest.CustomerPO,Lab_shoetest.DateOfManufacturing,Lab_shoetest.ReceiveDate,Lab_shoetest.ShipTo,Lab_shoetest.ReportNO,');
      sql.Add('Lab_shoetest.QTY,Lab_shoetest.ReceiveID,Lab_shoetest.ReceiveQty,Lab_shoetest.DepName,Lab_shoetest.Parts from Lab_shoetest');
      sql.Add('left join CBY_Orders on CBY_Orders.workOrderId=Lab_shoetest.scbh where Lab_shoetest.yn is null and  isnull(Lab_shoetest.ckbh,Lab_shoetest.gsbh)=''CBY'' ');
      if edit3.text<>'' then
         sql.Add(' and isnull(Lab_shoetest.ckbh,Lab_shoetest.gsbh) like ''%'+ComboBox3.Text+'%'' ');
      if edit1.Text<>'' then
         sql.Add(' and Lab_shoetest.TestNO like ''%'+edit1.Text+'%'' ');
      if edit2.Text<>'' then
         sql.Add(' and CBY_Orders.style like ''%'+edit2.Text+'%'' ');
      if edit6.Text<>'' then
         sql.Add(' and Lab_shoetest.SCBH like ''%'+edit6.Text+'%'' ');
      if combobox2.Text<>'' then
         sql.Add(' and year(Lab_shoetest.userdate) ='''+combobox2.text+''' ');
      if combobox1.Text<>'' then
         sql.Add(' and month(Lab_shoetest.userdate) ='''+combobox1.text+''' ');
      sql.Add('order by Lab_shoetest.userdate desc');
      sql.Add(')main order by userdate desc');

      active:=true;
      //memo1.text:=sql.text;
  end;
    BB2.Enabled:=true;
    BB3.Enabled:=true;                            
    BB4.Enabled:=true;
end;

procedure TQC_ShoeTest.BB2Click(Sender: TObject);
begin
  with query1 do
  begin
    requestlive:=true;
    cachedupdates:=true;
    Insert;
  end;
  BB2.Enabled:=false;
  BB3.Enabled:=false;
  BB4.Enabled:=false;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
  DBGridEh1.Columns[3].ButtonStyle := cbsEllipsis;
  DBGridEh1.Columns[7].ButtonStyle := cbsAuto;
end;

procedure TQC_ShoeTest.BB3Click(Sender: TObject);
begin
  if main.edit1.text<>query1.fieldbyname('userid').Value then
     showmessage('not yours');
  if main.edit1.text=query1.fieldbyname('userid').Value then
  begin
    with query1 do
    begin
      requestlive:=true;
      cachedupdates:=true;
      edit;
      fieldbyname('YN').Value:='0';
    end;
  end;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
end;

procedure TQC_ShoeTest.BB4Click(Sender: TObject);
begin
  with query1 do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
  DateTimePicker1.Enabled:=true;
  DBGridEh1.Columns[3].ButtonStyle := cbsEllipsis;
  DBGridEh1.Columns[7].ButtonStyle := cbsAuto;
end;


procedure TQC_ShoeTest.BB5Click(Sender: TObject);
var y,m,a:string;
    NDate:TDateTime;
i:integer;
begin
with query3 do          //取服務器的年月值
  begin
    active:=false;
    sql.Clear;
    sql.Add('select year(getdate()) as FY,month(getdate()) as FM,getdate() as NDate ');
    active:=true;
    y:=fieldbyname('FY').asstring;
    m:=fieldbyname('FM').asstring;
    NDate:=fieldbyname('NDate').value;
    active:=false;
  end;
  if length(m)<2 then
  m:='0'+m;
   try
      query1.first;
      for i:=1 to query1.RecordCount do
        begin
          case query1.updatestatus of
            usinserted:
              begin
                 with query3 do    //計算領料單流水號
                 begin
                    active:=false;
                    sql.Clear;
                    sql.Add('select testno from lab_shoetest where testno like '+''''+y+m+'%'+'''');
                    sql.add('order by testno');
                    active:=true;
                    if recordcount >0 then
                    begin
                       last;
                       a:=fieldbyname('testno').AsString;
                       a:=copy(a,7,5);
                       a:=inttostr(strtoint(a)+1);
                       while length(a)<5 do
                       begin
                         a:='0'+a;
                       end;
                    end
                    else
                    begin
                      a:='00001';
                    end;
                    a :=y+m+a;
                    active:=false;
                 end;
                 query1.edit;
                 query1.fieldbyname('testno').Value:=a;
                 query1.FieldByName('userdate').Value:=formatdatetime('yyyy/MM/dd',Ndate);
//                 if query1.FieldByName('ReceiveDate').isnull then
//                    query1.FieldByName('ReceiveDate').Value:=formatdatetime('yyyy/MM/dd',Ndate);
                 query1.FieldByName('GSBH').AsString:=main.edit2.text;
                 query1.FieldByName('UserID').AsString:=main.Edit1.Text;
                 UpdateSQL1.apply(ukinsert);
                end;
            usmodified:
               begin
                if query1.fieldbyname('YN').value='0'then
                begin
                  query1.edit;
                  //query1.FieldByName('userID').Value:=main.edit1.text;
                  //query1.FieldByName('userdate').Value:=formatdatetime('yyyy/MM/dd',Ndate);
                  UpdateSQL1.apply(ukModify);
                end else
                begin
                  query1.edit;
                  query1.FieldByName('userID').Value:=main.edit1.text;
                  //query1.FieldByName('userdate').Value:=formatdatetime('yyyy/MM/dd',Ndate);
                  UpdateSQL1.apply(ukModify);
                end;
               end;
          end;
         query1.next;
        end;
  query1.active:=false;
  query1.cachedupdates:=false;
  query1.requestlive:=false;
  query1.active:=true;
  BB2.Enabled:=true;
  BB3.Enabled:=true;
  BB4.Enabled:=true;
  bb5.enabled:=false;
  bb6.enabled:=false;
  DateTimePicker1.Enabled:=false;
  except
    Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
  end;
end;

procedure TQC_ShoeTest.BB6Click(Sender: TObject);
begin
  query1.active:=false;
  query1.cachedupdates:=false;
  query1.requestlive:=false;
  query1.active:=true;
  bb2.enabled:=true;
  bb3.enabled:=true;
  bb4.enabled:=true;
  bb5.enabled:=false;
  bb6.enabled:=false;
  DateTimePicker1.Enabled:=false;  
  //
  DBGridEh1.columns[3].ButtonStyle:=cbsnone;
end;

procedure TQC_ShoeTest.BB7Click(Sender: TObject);
begin
  Close;
end;

procedure TQC_ShoeTest.DBGridEh1Columns2EditButtonClick(Sender: TObject;
  var Handled: Boolean);
begin
  if QC_ShoeTestTB<>nil then
    begin
       QC_ShoeTestTB.show;
       QC_ShoeTestTB.windowstate:=wsmaximized;
    end
  else
    begin
       QC_ShoeTestTB:=TQC_ShoeTestTB.create(self);
       QC_ShoeTestTB.show;
    end;
end;

procedure TQC_ShoeTest.DBGridEh1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
     if query1.FieldByName('yn').value='0'  then
     begin
        DBGridEh1.canvas.Brush.Color:=clred;
        DBGridEh1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
     end;
end;

procedure TQC_ShoeTest.DateTimePicker1Change(Sender: TObject);
begin
    query1.FieldByName('DateOfManufacturing').AsString:=FormatDateTime('yyyy/mm/dd',DateTimePicker1.datetime);
    DBEditEh9.text:=FormatDateTime('yyyy/mm/dd',DateTimePicker1.datetime);
end;

procedure TQC_ShoeTest.FormCreate(Sender: TObject);
begin
    edit3.text:=main.edit2.Text;
    ComboBox3.text:=main.edit2.Text;
    DBgrideh1.Columns[0].Title.Alignment:=taCenter; //內容左右居中
    DBgrideh1.Columns[0].Alignment:=taCenter;  //內容上下居中
    DBgrideh1.Columns[1].Title.Alignment:=taCenter; //內容左右居中
    DBgrideh1.Columns[1].Alignment:=taCenter;  //內容上下居中
    DBgrideh1.Columns[3].Title.Alignment:=taCenter; //內容左右居中
    DBgrideh1.Columns[3].Alignment:=taCenter;  //內容上下居中
    DBgrideh1.Columns[4].Title.Alignment:=taCenter; //內容左右居中
    DBgrideh1.Columns[4].Alignment:=taCenter;  //內容上下居中
    DBgrideh1.Columns[6].Title.Alignment:=taCenter; //內容左右居中
    DBgrideh1.Columns[6].Alignment:=taCenter;  //內容上下居中
    DBgrideh1.Columns[7].Title.Alignment:=taCenter; //內容左右居中
    DBgrideh1.Columns[7].Alignment:=taCenter;  //內容上下居中
    DBgrideh1.Columns[14].Title.Alignment:=taCenter; //內容左右居中
    DBgrideh1.Columns[14].Alignment:=taCenter;  //內容上下居中
end;

procedure TQC_ShoeTest.Query1CalcFields(DataSet: TDataSet);
begin
  Qtemp.Active := false;
  Qtemp.SQL.Text := 'select ywsm from shoetestdetail where yybh = '''+Query1.fieldbyname('parts').AsString+'''';
  Qtemp.Active := true;
  Query1.FieldByName('ywsm1').AsString := Qtemp.Fields[0].AsString;

  Qtemp.Active := false;
  Qtemp.SQL.Text := 'select ywsm from shoetestdetail where yybh = '''+Query1.fieldbyname('DepName').AsString+'''';
  Qtemp.Active := true;
  Query1.FieldByName('ywsm').AsString := Qtemp.Fields[0].AsString;
end;

end.
