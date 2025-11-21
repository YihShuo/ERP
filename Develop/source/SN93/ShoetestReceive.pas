unit ShoetestReceive;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, DB, GridsEh, DBGridEh, DBTables, Buttons,
  Mask, DBCtrlsEh, ComCtrls;

type
  TShoetestReceive1 = class(TForm)
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
    Qshoetestdetail: TQuery;
    Query1ywsm: TStringField;
    Query1ywsm1: TStringField;
    CheckBox1: TCheckBox;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    Query1vwsm: TStringField;
    Query1vwsm1: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure BB1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure BB7Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ShoetestReceive1: TShoetestReceive1;

implementation

uses main1, QC_ShoeTest1;

{$R *.dfm}

procedure TShoetestReceive1.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TShoetestReceive1.FormDestroy(Sender: TObject);
begin
   QC_ShoeTest := nil;
end;

procedure TShoetestReceive1.BB1Click(Sender: TObject);
begin
  ToolPanel.Visible:=true;
end;

procedure TShoetestReceive1.Button1Click(Sender: TObject);
begin
  with query1 do
  begin
      active:=false;
      sql.Clear;
      sql.Add('select * from (');
      sql.Add('select  top 50 Lab_shoetest.TestNO,Lab_shoetest.GSBH,Lab_shoetest.SCBH,Lab_shoetest.UserID,Lab_shoetest.UserDate,shoetest.article,Lab_shoetest.YN,');
      sql.Add('Lab_shoetest.Applicant1,Lab_shoetest.Applicant2,Lab_shoetest.TestPurpose,Lab_shoetest.ReportCCTo,Lab_shoetest.Factory,Lab_shoetest.ProductionLine,');
      sql.Add('Lab_shoetest.CustomerPO,Lab_shoetest.DateOfManufacturing,Lab_shoetest.ReceiveDate,Lab_shoetest.ShipTo,Lab_shoetest.ReportNO,');
      sql.Add('Lab_shoetest.QTY,Lab_shoetest.ReceiveID,Lab_shoetest.ReceiveQty,Lab_shoetest.DepName,Lab_shoetest.Parts from Lab_shoetest');
      if Edit3.Text = 'VA12' then       //VA12億春量產 對應億春開發CDC
        sql.Add('left join shoetest on shoetest.testno=Lab_shoetest.scbh where  Lab_shoetest.yn is null and Lab_shoetest.gsbh=''CDC'' ')
      else if Edit3.Text = 'TBA' then   //TBA億柏量產 對應億柏開發TBDC
        sql.Add('left join shoetest on shoetest.testno=Lab_shoetest.scbh where  Lab_shoetest.yn is null and Lab_shoetest.gsbh=''TBDC'' ')
      else if Edit3.Text = 'VDH' then   //VDH億碩量產 對應億碩開發VDK
        sql.Add('left join shoetest on shoetest.testno=Lab_shoetest.scbh where  Lab_shoetest.yn is null and Lab_shoetest.gsbh=''VDK'' ')
      else
        sql.Add('left join shoetest on shoetest.testno=Lab_shoetest.scbh where  Lab_shoetest.yn is null and Lab_shoetest.gsbh='''+Edit3.Text+''' ');
//        if edit3.text<>'' then
//          sql.Add(' and Lab_shoetest.GSBH like ''%'+edit3.Text+'%'' ');
      if edit1.Text<>'' then
         sql.Add(' and Lab_shoetest.TestNO like ''%'+edit1.Text+'%'' ');
      if edit2.Text<>'' then
         sql.Add(' and shoetest.article like ''%'+edit2.Text+'%'' ');
      if edit6.Text<>'' then
         sql.Add(' and Lab_shoetest.SCBH like ''%'+edit6.Text+'%'' ');
      if CheckBox1.Checked = true then
         sql.Add(' and Lab_shoetest.userdate between '''+formatdatetime('YYYYMMDD',DTP1.date)+''' and '''+formatdatetime('YYYYMMDD',DTP2.date)+''' ');
      if combobox2.Text<>'' then
         sql.Add('and Lab_shoetest.ProductionLine ='''+combobox2.text+''' ');

      sql.Add('order by Lab_shoetest.userdate desc');
      sql.Add('union');
      sql.Add('select  top 50 Lab_shoetest.TestNO,Lab_shoetest.GSBH,Lab_shoetest.SCBH,Lab_shoetest.UserID,Lab_shoetest.UserDate,ddzl.article,Lab_shoetest.YN,');
      sql.Add('Lab_shoetest.Applicant1,Lab_shoetest.Applicant2,Lab_shoetest.TestPurpose,Lab_shoetest.ReportCCTo,Lab_shoetest.Factory,Lab_shoetest.ProductionLine,');
      sql.Add('Lab_shoetest.CustomerPO,Lab_shoetest.DateOfManufacturing,Lab_shoetest.ReceiveDate,Lab_shoetest.ShipTo,Lab_shoetest.ReportNO,');
      sql.Add('Lab_shoetest.QTY,Lab_shoetest.ReceiveID,Lab_shoetest.ReceiveQty,Lab_shoetest.DepName,Lab_shoetest.Parts from Lab_shoetest');

      if Edit3.Text = 'CDC' then              //CDC億春開發 對應億春量產VA12
        sql.Add('left join ddzl on ddzl.ddbh=Lab_shoetest.scbh where Lab_shoetest.yn is null and  Lab_shoetest.gsbh=''VA12'' ')
      else if Edit3.Text = 'TBDC' then        //TBDC億柏開發 對應億柏量產TBA
        sql.Add('left join ddzl on ddzl.ddbh=Lab_shoetest.scbh where Lab_shoetest.yn is null and  Lab_shoetest.gsbh=''TBA'' ')
      else if Edit3.Text = 'VDK' then         //VDK億碩開發 對應億碩量產VDH
        sql.Add('left join ddzl on ddzl.ddbh=Lab_shoetest.scbh where Lab_shoetest.yn is null and  Lab_shoetest.gsbh=''VDH'' ')
      else
        sql.Add('left join ddzl on ddzl.ddbh=Lab_shoetest.scbh where Lab_shoetest.yn is null and  Lab_shoetest.gsbh='''+edit3.Text+''' ');
//        if edit3.text<>'' then
//          sql.Add(' and Lab_shoetest.GSBH like ''%'+edit3.Text+'%'' ');
      if edit1.Text<>'' then
         sql.Add(' and Lab_shoetest.TestNO like ''%'+edit1.Text+'%'' ');
      if edit2.Text<>'' then
         sql.Add(' and ddzl.article like ''%'+edit2.Text+'%'' ');
      if edit6.Text<>'' then
         sql.Add(' and Lab_shoetest.SCBH like ''%'+edit6.Text+'%'' ');
      if CheckBox1.Checked = true then
         sql.Add(' and Lab_shoetest.userdate between '''+formatdatetime('YYYYMMDD',DTP1.date)+''' and '''+formatdatetime('YYYYMMDD',DTP2.date)+''' ');
      if combobox2.Text<>'' then
         sql.Add('and Lab_shoetest.ProductionLine ='''+combobox2.text+''' ');
      sql.Add('order by Lab_shoetest.userdate desc');
      sql.Add(')main order by userdate desc');

      active:=true;
    // showmessage(sql.Text);
  end;
    BB2.Enabled:=false;
    BB3.Enabled:=false;
    BB4.Enabled:=true;
end;

procedure TShoetestReceive1.BB4Click(Sender: TObject);
begin
  with query1 do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
end;


procedure TShoetestReceive1.BB5Click(Sender: TObject);
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
                  query1.FieldByName('ReceiveID').Value:=main.edit1.text;
//                  query1.FieldByName('Receivedate').Value:=formatdatetime('yyyy/MM/dd HH:MM:SS',Ndate);
                  query1.FieldByName('Receivedate').Value:=formatdatetime('yyyy/MM/dd HH:MM:SS',Ndate);
                  UpdateSQL1.apply(ukModify);
                end else
                begin
                  query1.edit;
                  query1.FieldByName('ReceiveID').Value:=main.edit1.text;
//                  query1.FieldByName('Receivedate').Value:=formatdatetime('yyyy/MM/dd HH:MM:SS',Ndate);
                  query1.FieldByName('Receivedate').Value:=formatdatetime('yyyy/MM/dd HH:MM:SS',Ndate);
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
  BB4.Enabled:=true;
  bb5.enabled:=false;
  bb6.enabled:=false;
  except
    Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
  end;
end;

procedure TShoetestReceive1.BB6Click(Sender: TObject);
begin
  query1.active:=false;
  query1.cachedupdates:=false;
  query1.requestlive:=false;
  query1.active:=true;
  BB4.Enabled := true;
  bb5.enabled:=false;
  bb6.enabled:=false;
end;

procedure TShoetestReceive1.BB7Click(Sender: TObject);
begin
  Close;
end;

procedure TShoetestReceive1.FormCreate(Sender: TObject);
begin
    edit3.text:=main.edit2.Text;
    DBgrideh1.Columns[0].Title.Alignment:=taCenter; //內容左右居中
    DBgrideh1.Columns[0].Alignment:=taCenter;  //內容上下居中
    DBgrideh1.Columns[1].Title.Alignment:=taCenter; //內容左右居中
    DBgrideh1.Columns[1].Alignment:=taCenter;  //內容上下居中
    DBgrideh1.Columns[2].Title.Alignment:=taCenter; //內容左右居中
    DBgrideh1.Columns[2].Alignment:=taCenter;  //內容上下居中
    DBgrideh1.Columns[3].Title.Alignment:=taCenter; //內容左右居中
    DBgrideh1.Columns[3].Alignment:=taCenter;  //內容上下居中
    DBgrideh1.Columns[5].Title.Alignment:=taCenter; //內容左右居中
    DBgrideh1.Columns[5].Alignment:=taCenter;  //內容上下居中
    DBgrideh1.Columns[6].Title.Alignment:=taCenter; //內容左右居中
    DBgrideh1.Columns[6].Alignment:=taCenter;  //內容上下居中
    DBgrideh1.Columns[13].Title.Alignment:=taCenter; //內容左右居中
    DBgrideh1.Columns[13].Alignment:=taCenter;  //內容上下居中
    DTP2.Date := now;
    DTP1.Date := now;
    Query3.Active := false;
    Query3.SQL.Text := 'select distinct PRODUCTionLINE from lab_shoetest ' +
                       'where PRODUCTIONLINE is not null ' +
                       'order by PRODUCTIONLINE';
    Query3.Active := true;
    Query3.First;
    ComboBox2.Clear;
    while not Query3.Eof do begin
      ComboBox2.Items.Add(Query3.Fields[0].AsString);
      Query3.Next;
    end;
end;

end.
