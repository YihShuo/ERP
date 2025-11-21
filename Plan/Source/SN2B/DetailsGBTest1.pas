unit DetailsGBTest1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Menus, GridsEh, DBGridEh, ComCtrls, StdCtrls,
  ExtCtrls, Buttons,fununit,ComObj;

type
  TDetailsGBTest = class(TForm)
    DBGridEh1: TDBGridEh;
    UpdateSQL1: TUpdateSQL;
    DS1: TDataSource;
    Query1: TQuery;
    Query1BUYNO: TStringField;
    Query1Season: TStringField;
    Query1RY: TStringField;
    Query1RY_same_group: TStringField;
    Query1PO: TStringField;
    Query1SKU: TStringField;
    Query1Country: TStringField;
    Query1Groups: TStringField;
    Query1ProductionType: TStringField;
    Query1SR: TStringField;
    Query1MaterialDescription: TStringField;
    Query1ModelDescription: TStringField;
    Query1Color: TStringField;
    Query1Qty: TIntegerField;
    Query1Gender: TStringField;
    Query1SendSize: TStringField;
    Query1SendQty: TStringField;
    Query1GAC_Date: TDateTimeField;
    Query1ProductionLine: TStringField;
    Query1TestShoeReceiveDate: TDateTimeField;
    Query1TestResultDate: TDateTimeField;
    Query1Bonding: TStringField;
    Query1Flexing: TStringField;
    Query1AgingResult: TStringField;
    Query1QUV: TStringField;
    Query1CrockingTest: TStringField;
    Query1CrockingWithNH3: TStringField;
    Query1Corrosion: TStringField;
    Query1SendQtyPR: TStringField;
    Query1GB_Test: TStringField;
    Query1LAB: TStringField;
    Query1REMARK_Gore_tex: TStringField;
    Query1AWBNo: TStringField;
    Query1SendGBDate: TDateTimeField;
    Query1TestResult: TStringField;
    Query1ReceivedDate: TDateTimeField;
    Query1KCNumber: TStringField;
    Query1Arrived_on_DTTlab: TStringField;
    Query1DayReceiveResult: TStringField;
    Query1Late_Reason: TStringField;
    Query1EstimatedReceivedDate: TDateTimeField;
    Query1Remark: TStringField;
    Query1TestReportFile: TStringField;
    tmpQry: TQuery;
    OpenDialog: TOpenDialog;
    Panel1: TPanel;
    Label1: TLabel;
    Label6: TLabel;
    Label9: TLabel;
    ShoeImage: TImage;
    Edit1: TEdit;
    Edit4: TEdit;
    Edit6: TEdit;
    BB1: TBitBtn;
    BB2: TBitBtn;
    BB3: TBitBtn;
    BB4: TBitBtn;
    BB5: TBitBtn;
    BB6: TBitBtn;
    BB7: TBitBtn;
    Label4: TLabel;
    Edit2: TEdit;
    Query1USERID: TStringField;
    Query1USERDATE: TDateTimeField;
    Label2: TLabel;
    Query1YN: TStringField;
    BB8: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure BB1Click(Sender: TObject);
    procedure BB2Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure BB3Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure BB8Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DetailsGBTest: TDetailsGBTest;
  NDate:TDate;

implementation

uses main1;

{$R *.dfm}



procedure TDetailsGBTest.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   action:=cafree;
end;


procedure TDetailsGBTest.FormDestroy(Sender: TObject);
begin
   DetailsGBTest:=nil;
end;

procedure TDetailsGBTest.BB1Click(Sender: TObject);
begin
  with Query1 do
  begin
    Active := False;
    SQL.Clear;
    SQL.Add('SELECT GBTest_Details.*, GBTest.*, xxzl.IMGName FROM GBTest_Details');
    SQL.Add('LEFT JOIN GBTest ON GBTest.RY = GBTest_Details.RY');
    SQL.Add('LEFT JOIN xxzl ON XXZL.ARTICLE = GBTest.SKU');
    SQL.Add('WHERE 1=1');
    SQL.Add('AND GBTest_Details.RY = ''' + Edit1.Text + '''');
    SQL.Add('AND SKU = ''' + Edit4.Text + '''');
    SQL.Add('AND BUYNO = ''' + Edit6.Text + '''');
    //showmessage(SQL.Text);
    //funcObj.WriteErrorLog(SQL.Text);
    Active := True;
  end;
  BB2.Enabled:=true;
  BB3.Enabled:=true;
  BB4.Enabled:=true;
end;

procedure TDetailsGBTest.BB2Click(Sender: TObject);
begin
  with Query1 do
  begin
    requestlive:=true;
    cachedupdates:=true;
    insert;
    query1.FieldByName('RY').AsString:=edit1.Text;
    query1.FieldByName('BUYNO').AsString:=edit6.Text;
    query1.FieldByName('Season').AsString:='aaa';
    {
    query1.FieldByName('RY').AsString := query1.FieldByName('RY').AsString;
    query1.FieldByName('BUYNO').AsString := Query1.FieldByName('BUYNO').AsString;
    query1.FieldByName('Season').AsString := Query1.FieldByName('Season').AsString;
    query1.FieldByName('RY').AsString := Query1.FieldByName('RY').AsString;
    query1.FieldByName('RY_same_group').AsString := Query1.FieldByName('RY_same_group').AsString;
    query1.FieldByName('PO').AsString := Query1.FieldByName('PO').AsString;
    query1.FieldByName('SKU').AsString := Query1.FieldByName('SKU').AsString;
    query1.FieldByName('Country').AsString := Query1.FieldByName('Country').AsString;
    query1.FieldByName('ProductionType').AsString := Query1.FieldByName('ProductionType').AsString;
    query1.FieldByName('SR').AsString := Query1.FieldByName('SR').AsString;
    query1.FieldByName('MaterialDescription').AsString := Query1.FieldByName('MaterialDescription').AsString;
    query1.FieldByName('Color').AsString := Query1.FieldByName('Color').AsString;
    query1.FieldByName('Qty').AsString := Query1.FieldByName('Qty').AsString;
    query1.FieldByName('Gender').AsString := Query1.FieldByName('Gender').AsString;
    query1.FieldByName('SendSize').AsString := Query1.FieldByName('SendSize').AsString;
    query1.FieldByName('GAC_Date').AsString := Query1.FieldByName('GAC_Date').AsString;
    query1.FieldByName('GB_Test').AsString := Query1.FieldByName('GB_Test').AsString;
    query1.FieldByName('LAB').AsString := Query1.FieldByName('LAB').AsString;
    query1.FieldByName('REMARK_Gore_tex').AsString := Query1.FieldByName('REMARK_Gore_tex').AsString;
    query1.FieldByName('AWBNo').AsString := Query1.FieldByName('AWBNo').AsString;
    query1.FieldByName('SendGBDate').AsString := Query1.FieldByName('SendGBDate').AsString;
    query1.FieldByName('TestResult').AsString := Query1.FieldByName('TestResult').AsString;
    query1.FieldByName('ReceivedDate').AsString := Query1.FieldByName('ReceivedDate').AsString;
    query1.FieldByName('KCNumber').AsString := Query1.FieldByName('KCNumber').AsString;
    query1.FieldByName('Arrived_on_DTTlab').AsString := Query1.FieldByName('Arrived_on_DTTlab').AsString;
    query1.FieldByName('DayReceiveResult').AsString := Query1.FieldByName('DayReceiveResult').AsString;
    query1.FieldByName('Late_Reason').AsString := Query1.FieldByName('Late_Reason').AsString;
    query1.FieldByName('EstimatedReceivedDate').AsString := Query1.FieldByName('EstimatedReceivedDate').AsString;
    query1.FieldByName('Remark').AsString := Query1.FieldByName('Remark').AsString;
    query1.FieldByName('TestReportFile').AsString := Query1.FieldByName('TestReportFile').AsString;
    query1.FieldByName('USERID').AsString := Query1.FieldByName('USERID').AsString;
    query1.FieldByName('USERDATE').AsString := Query1.FieldByName('USERDATE').AsString;
    }
  end;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
end;

procedure TDetailsGBTest.BB5Click(Sender: TObject);
var i:integer;
begin
  try
    Query1.first;
    for i:=1 to Query1.RecordCount do
    begin
      case Query1.updatestatus of
      usinserted:
      begin
        if Query1.fieldbyname('ProductionLine').isnull then
        begin
            Query1.delete;
        end else
        begin
            Query1.Edit;
            Query1.FieldByName('RY').Value:=Edit1.Text;
            Query1.FieldByName('userdate').Value:=date;
            Query1.FieldByName('userID').Value:=main.edit1.text;
            Query1.fieldbyname('YN').Value := '1';
            UpdateSQL1.apply(ukinsert);
        end;
      end;
      usmodified:
        begin
         if query1.fieldbyname('YN').value='0'then
          begin
            UpdateSQL1.apply(ukdelete);
          end else
          begin
            if Query1.fieldbyname('ProductionLine').isnull then
            begin
              Query1.Edit;
              Query1.FieldByName('ProductionLine').Value:=Query1.FieldByName('ProductionLine').Value;
              Query1.FieldByName('userdate').Value:=date;
              Query1.FieldByName('userID').Value:=main.edit1.text;
              UpdateSQL1.apply(ukinsert);
            end else
            begin
              query1.edit;
              query1.FieldByName('USERID').Value:=main.edit1.text;
              query1.FieldByName('USERdate').Value:=date;
              UpdateSQL1.apply(ukmodify);
            end;
          end;
        end;
      end;
      query1.next;
    end;
    Query1.active:=false;
    Query1.cachedupdates:=false;
    Query1.requestlive:=false;
    Query1.active:=true;
    BB2.enabled:=true;
    BB3.enabled:=true;
    BB4.enabled:=true;
    BB5.enabled:=false;
    BB6.enabled:=false;
  except
    Messagedlg('Have wrong, can not save!',mtwarning,[mbyes],0);
  end;
end;

procedure TDetailsGBTest.BB4Click(Sender: TObject);
begin
    BB2.Enabled:= false;
    BB3.Enabled:= false;
    BB5.Enabled:=true;
    BB6.Enabled:=true;
    with Query1 do
      begin
        RequestLive:=true;
        CachedUpdates:=true;
        edit;
      end;

end;

procedure TDetailsGBTest.DBGridEh1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if (DataCol > 16) and (DataCol < 28) then
    Column.ReadOnly := False
  else
    Column.ReadOnly := True;

  if query1.FieldByName('YN').AsString = '0' then
  begin
    dbgrideh1.Canvas.Font.Color := clRed;
    DBGridEh1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
  end;
end;

procedure TDetailsGBTest.BB3Click(Sender: TObject);
begin
    with query1 do
      begin
        if fieldbyname('USERID').value=main.edit1.Text then
        begin
          requestlive:=true;
          cachedupdates:=true;
          edit;
          fieldbyname('YN').Value:='0';
        end else
        begin
          showmessage('It is not yours,can not delete.');
        end;
        BB5.Enabled:=true;
        BB6.Enabled:=true;
      end;
end;

procedure TDetailsGBTest.BB6Click(Sender: TObject);
begin
  with query1 do
  begin
    active:=false;
    requestlive:=false;
    cachedupdates:=false;
    active:=true;
  end;
  bb5.enabled:=false;
  bb6.enabled:=false;
end;

procedure TDetailsGBTest.BB8Click(Sender: TObject);
var eclApp,WorkBook,WorkSheet:olevariant;
    i,j:integer;
begin
    if  query1.active  then
    begin
    try
      eclApp:=CreateOleObject('Excel.Application');
      WorkBook:=CreateOleObject('Excel.Sheet');
    except
      Application.MessageBox('No Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
      Exit;
    end;
    try
        WorkBook:=eclApp.workbooks.Add;
        WorkSheet := WorkBook.Worksheets[1];
        
        for   i:=0   to   query1.fieldcount-1   do
          begin
              eclApp.Cells(1,i+1):=query1.fields[i].FieldName;
          end;

        query1.First;
        j:=2;
        while   not   query1.Eof   do
          begin
            for   i:=0   to  query1.fieldcount-1  do
            begin
              eclApp.Cells(j,i+1):=query1.Fields[i].Value;
              //Them cot mau vang
              {if (i + 1 > 16) and (i + 1 < 28) then
                begin
                   WorkSheet.Range[WorkSheet.Cells(j, i + 1), WorkSheet.Cells(j, i + 1)].Interior.Color := RGB(255, 255, 0);
                end; }
            end;
          query1.Next;
          inc(j);
          end;
      eclapp.columns.autofit;
       eclApp.Visible:=True;
       showmessage('Succeed');
      except
        on   F:Exception   do
          showmessage(F.Message);
      end;
    end;
end;

end.
