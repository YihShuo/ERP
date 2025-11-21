unit GBTest1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Menus, GridsEh, DBGridEh, StdCtrls, ExtCtrls, comobj, fununit,
  ComCtrls, IniFiles, ShellApi;

type
  TGBTest = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    InfoLable: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Check: TCheckBox;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Button2: TButton;
    DBGridEh1: TDBGridEh;
    DS1: TDataSource;
    Popmenu1: TPopupMenu;
    Modify: TMenuItem;
    Save: TMenuItem;
    Cancel: TMenuItem;
    tmpQry: TQuery;
    OpenDialog: TOpenDialog;
    CheckBox1: TCheckBox;
    Label3: TLabel;
    DTP1: TDateTimePicker;
    Label4: TLabel;
    DTP2: TDateTimePicker;
    Label7: TLabel;
    Edit7: TEdit;
    Excel1: TMenuItem;
    ShoeImage: TImage;
    Details1: TMenuItem;
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
    Query1USERID: TStringField;
    Query1USERDate: TDateTimeField;
    Query1YN: TStringField;
    Query1IMGName: TStringField;
    UpdateSQL1: TUpdateSQL;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure ModifyClick(Sender: TObject);
    procedure SaveClick(Sender: TObject);
    procedure CancelClick(Sender: TObject);
    procedure Excel1Click(Sender: TObject);
    procedure DBGridEh1Columns31EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure Query1AfterScroll(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure Details1Click(Sender: TObject);
    procedure DBGridEh1CellClick(Column: TColumnEh);

  private
    iYear,iMonth:String;
    NDate:TDate;
    GBFilePath: string;
    //
    IsExport:boolean;
    procedure DetectMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    { Private declarations }
    procedure ReadIni();
  public
    { Public declarations }
    //
    ShoePicPath:String;
  end;

var
  GBTest: TGBTest;

implementation

uses main1, ShowShoePic1, DetailsGBTest1;

{$R *.dfm}

procedure TGBTest.ReadIni();
var MyIni :Tinifile;
    AppDir:string;
begin
  GBFilePath := '\\192.168.123.112\GBTest\';
  //
  //ShoePicPath := '\\192.168.23.11\A_DataCenter\CDC\Sales\BOM';
  ShoePicPath := '\\192.168.123.111\bom\CONVERSE';

  AppDir:=ExtractFilePath(Application.ExeName);
  if FileExists(AppDir+'\ComName.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ComName.ini');
      GBFilePath:=MyIni.ReadString('GBTest','Plan_N2B_GBFilePath','');
      //
      ShoePicPath:=MyIni.ReadString('ShoePic','Bom_N31_shoePic','');
      
    finally
      MyIni.Free;
    end;
  end;
end;

procedure TGBTest.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TGBTest.FormDestroy(Sender: TObject);
begin
  GBTest:=nil;
end;

procedure TGBTest.FormCreate(Sender: TObject);
begin
  with tmpQry do
  begin
    active:=false;
    sql.Clear;
    sql.Add('select year(getdate()) as FY,month(getdate()) as FM ,getdate() as NDate');
    active:=true;
    iYear:=fieldbyname('FY').asstring;
    iMonth:=fieldbyname('FM').asstring;
    NDate:=fieldbyname('NDate').Value;
    active:=false;
  end;
  if length(iMonth)<2 then
  iMonth:='0'+iMonth;
  DTP1.Date:=Date;
  DTP2.Date:=Date;
  ReadIni();
end;

procedure TGBTest.Button1Click(Sender: TObject);
begin
  with Query1 do
  begin
    active:=false;
    SQL.Clear;
    SQL.Add('select GBTest.*, xxzl.IMGName from GBTest ');
    SQL.Add('LEFT JOIN xxzl ON XXZL.ARTICLE = GBTest.SKU ');
    SQL.Add('where 1=1 and KFCQ = ''JNG'' ');
    if Edit1.Text<>'' then
      SQL.Add('and RY like '''+Edit1.Text+'%'' ');
    if Edit2.Text<>'' then
      SQL.Add('and Season like '''+Edit2.Text+'%'' ');
    if Edit3.Text<>'' then
      SQL.Add('and TestResult like '''+Edit3.Text+'%'' ');
    if Edit4.Text<>'' then
      SQL.Add('and SKU like '''+Edit4.Text+'%'' ');
    if Edit5.Text<>'' then
      SQL.Add('and SR like '''+Edit5.Text+'%'' ');
    if Edit6.Text<>'' then
      SQL.Add('and BUYNO like '''+Edit6.Text+'%'' ');
    if Edit7.Text<>'' then
      SQL.Add('and Country like '''+Edit7.Text+'%'' ');
    if CheckBox1.Checked=true then
    begin
      SQL.Add('and convert(smalldatetime,convert(varchar,GBTest.USERDATE,111)) between');
      SQL.Add(''''+Formatdatetime('yyyy/MM/dd',DTP1.date)+''' and '''+formatdatetime('yyyy/MM/dd',DTP2.date)+'''');
    end;
    if Check.Checked=true then
      SQL.Add('and GBTest.USERID like '''+main.Edit1.Text+'%'' ');
    //funcObj.WriteErrorLog(sql.Text);
    active:=true;
  end;

end;

procedure TGBTest.Button2Click(Sender: TObject);
var OrderListExcel:Variant;
    OrderExcFN,ColumnNM,BUYNO,Season,RY,RYGroup,PO,SKU,Country,Groups,ProductionType,SR,Material,Model,Color,Qty,Gender,Sendsize,SendQty,GAC,GBTest,Lab,Remark_Gotetex:string;
    AWBNo,SendGB,TestResult,ReceivedDate,KCNumber,Arrived,Day,Reason,EstimatedDate,Remark:string;
    offset,RowSIndex:integer;
    BUYNO_index,Season_index,RY_index,RYGroup_index,PO_index,SKU_index,Country_index,Groups_index,ProductionType_index,SR_index,Material_index,Model_index:integer;
    Color_index,Qty_index,Gender_index,Sendsize_index,SendQty_index,GAC_index,GBTest_index,Lab_index,Remark_Gotetex_index,AWBNo_index,SendGB_index:integer;
    TestResult_index,ReceivedDate_index,KCNumber_index,Arrived_index,Day_index,Reason_index,EstimatedDate_index,Remark_index:integer;
    Isbreak:boolean;
begin
  try
    OrderListExcel:=CreateOleObject('Excel.Application');
  except
    on E:Exception do
    begin
      Application.MessageBox(PChar('NO EXCEL'+E.Message),'', MB_OK);
      Exit;
    end;
  end;
  //================================================================================
  with Query1 do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
  //
  try
    if OpenDialog.Execute=true then
    begin
      BUYNO_index:=-1;
      Season_index:=-1;
      RY_index:=-1;
      RYGroup_index:=-1;
      PO_index:=-1;
      SKU_index:=-1;
      Country_index:=-1;
      Groups_index:=-1;
      ProductionType_index:=-1;
      SR_index:=-1;
      Material_index:=-1;
      Model_index:=-1;
      Color_index:=-1;
      Qty_index:=-1;
      Gender_index:=-1;
      Sendsize_index:=-1;
      SendQty_index:=-1;
      GAC_index:=-1;
      GBTest_index:=-1;
      Lab_index:=-1;
      Remark_Gotetex_index:=-1;
      AWBNo_index:=-1;
      SendGB_index:=-1;
      TestResult_index:=-1;
      ReceivedDate_index:=-1;
      KCNumber_index:=-1;
      Arrived_index:=-1;
      Day_index:=-1;
      Reason_index:=-1;
      EstimatedDate_index:=-1;
      Remark_index:=-1;
      //
      OrderExcFN:=OpenDialog.FileName;
      OrderListExcel.WorkBooks.Open(OpenDialog.FileName);
      OrderListExcel.WorkSheets[1].Activate;
      //
      offset:=0;
      RowSIndex:=1;
      //
      ColumnNM:=OrderListExcel.Cells[RowSIndex+offset,1];
        if ColumnNM='BUYNO' then BUYNO_index:=1;
      ColumnNM:=OrderListExcel.Cells[RowSIndex+offset,2];
        if ColumnNM='Season' then Season_index:=2;
      ColumnNM:=OrderListExcel.Cells[RowSIndex+offset,3];
        if ColumnNM='RY' then RY_index:=3;
      ColumnNM:=OrderListExcel.Cells[RowSIndex+offset,4];
        if ColumnNM='RY# with the same group' then RYGroup_index:=4;
      ColumnNM:=OrderListExcel.Cells[RowSIndex+offset,5];
        if ColumnNM='PO' then PO_index:=5;
      ColumnNM:=OrderListExcel.Cells[RowSIndex+offset,6];
        if ColumnNM='SKU' then SKU_index:=6;
      ColumnNM:=OrderListExcel.Cells[RowSIndex+offset,7];
        if ColumnNM='Country' then Country_index:=7;
      ColumnNM:=OrderListExcel.Cells[RowSIndex+offset,8];
        if ColumnNM='Group' then Groups_index:=8;
      ColumnNM:=OrderListExcel.Cells[RowSIndex+offset,9];
        if ColumnNM='Production Type' then ProductionType_index:=9;
      ColumnNM:=OrderListExcel.Cells[RowSIndex+offset,10];
        if ColumnNM='SR' then SR_index:=10;
      ColumnNM:=OrderListExcel.Cells[RowSIndex+offset,11];
        if ColumnNM='Material Description' then Material_index:=11;
      ColumnNM:=OrderListExcel.Cells[RowSIndex+offset,12];
        if ColumnNM='Model Description' then Model_index:=12;
      ColumnNM:=OrderListExcel.Cells[RowSIndex+offset,13];
        if ColumnNM='Color' then Color_index:=13;
      ColumnNM:=OrderListExcel.Cells[RowSIndex+offset,14];
        if ColumnNM='Qty' then Qty_index:=14;
      ColumnNM:=OrderListExcel.Cells[RowSIndex+offset,15];
        if ColumnNM='Gender' then Gender_index:=15;
      ColumnNM:=OrderListExcel.Cells[RowSIndex+offset,16];
        if ColumnNM='Send Size' then Sendsize_index:=16;
      ColumnNM:=OrderListExcel.Cells[RowSIndex+offset,17];
        if ColumnNM='Send Qty (pr)' then SendQty_index:=17;
      ColumnNM:=OrderListExcel.Cells[RowSIndex+offset,18];
        if ColumnNM='GAC' then GAC_index:=18;
      ColumnNM:=OrderListExcel.Cells[RowSIndex+offset,19];
        if ColumnNM='GB Test' then GBTest_index:=19;
      ColumnNM:=OrderListExcel.Cells[RowSIndex+offset,20];
        if ColumnNM='LAB' then Lab_index:=20;
      ColumnNM:=OrderListExcel.Cells[RowSIndex+offset,21];
        if ColumnNM='REMARK (Gore-tex)' then Remark_Gotetex_index:=21;
      ColumnNM:=OrderListExcel.Cells[RowSIndex+offset,22];
        if ColumnNM='AWB NO' then AWBNo_index:=22;
      ColumnNM:=OrderListExcel.Cells[RowSIndex+offset,23];
        if ColumnNM='Send GB Date' then SendGB_index:=23;
      ColumnNM:=OrderListExcel.Cells[RowSIndex+offset,24];
        if ColumnNM='Test Result' then TestResult_index:=24;
      ColumnNM:=OrderListExcel.Cells[RowSIndex+offset,25];
        if ColumnNM='Received result date' then ReceivedDate_index:=25;
      ColumnNM:=OrderListExcel.Cells[RowSIndex+offset,26];
        if ColumnNM='KC Number for Korea test' then KCNumber_index:=26;
      ColumnNM:=OrderListExcel.Cells[RowSIndex+offset,27];
        if ColumnNM='Arrived on DTT lab' then Arrived_index:=27;
      ColumnNM:=OrderListExcel.Cells[RowSIndex+offset,28];
        if ColumnNM='Day from send to receive result' then Day_index:=28;
      ColumnNM:=OrderListExcel.Cells[RowSIndex+offset,29];
        if ColumnNM='NOTE(reason for long time receiving result)' then Reason_index:=29;
      ColumnNM:=OrderListExcel.Cells[RowSIndex+offset,30];
        if ColumnNM='Estimated receiving result date' then EstimatedDate_index:=30;
      ColumnNM:=OrderListExcel.Cells[RowSIndex+offset,31];
        if ColumnNM='Remark' then Remark_index:=31;
      //
      if (RY_index>0) then
      begin
        Isbreak:=false;
        RowSIndex:=1;
        repeat
           Application.ProcessMessages;
           RowSIndex:=RowSIndex+1;
           //Progress
           BUYNO:=OrderListExcel.Cells[RowSIndex+offset,BUYNO_index];
           Season:=OrderListExcel.Cells[RowSIndex+offset,Season_index];
           RY:=OrderListExcel.Cells[RowSIndex+offset,RY_index];
           RYGroup:=OrderListExcel.Cells[RowSIndex+offset,RYGroup_index];
           PO:=OrderListExcel.Cells[RowSIndex+offset,PO_index];
           SKU:=OrderListExcel.Cells[RowSIndex+offset,SKU_index];
           Country:=OrderListExcel.Cells[RowSIndex+offset,Country_index];
           Groups:=OrderListExcel.Cells[RowSIndex+offset,Groups_index];
           ProductionType:=OrderListExcel.Cells[RowSIndex+offset,ProductionType_index];
           SR:=OrderListExcel.Cells[RowSIndex+offset,SR_index];
           Material:=OrderListExcel.Cells[RowSIndex+offset,Material_index];
           Model:=OrderListExcel.Cells[RowSIndex+offset,Model_index];
           Color:=OrderListExcel.Cells[RowSIndex+offset,Color_index];
           Qty:=OrderListExcel.Cells[RowSIndex+offset,Qty_index];
           Gender:=OrderListExcel.Cells[RowSIndex+offset,Gender_index];
           Sendsize:=OrderListExcel.Cells[RowSIndex+offset,Sendsize_index];
           SendQty:=OrderListExcel.Cells[RowSIndex+offset,SendQty_index];
           GAC:=OrderListExcel.Cells[RowSIndex+offset,GAC_index];
           GBTest:=OrderListExcel.Cells[RowSIndex+offset,GBTest_index];
           Lab:=OrderListExcel.Cells[RowSIndex+offset,Lab_index];
           Remark_Gotetex:=OrderListExcel.Cells[RowSIndex+offset,Remark_Gotetex_index];
           AWBNo:=OrderListExcel.Cells[RowSIndex+offset,AWBNo_index];
           SendGB:=OrderListExcel.Cells[RowSIndex+offset,SendGB_index];
           TestResult:=OrderListExcel.Cells[RowSIndex+offset,TestResult_index];
           ReceivedDate:=OrderListExcel.Cells[RowSIndex+offset,ReceivedDate_index];
           KCNumber:=OrderListExcel.Cells[RowSIndex+offset,KCNumber_index];
           Arrived:=OrderListExcel.Cells[RowSIndex+offset,Arrived_index];
           Day:=OrderListExcel.Cells[RowSIndex+offset,Day_index];
           Reason:=OrderListExcel.Cells[RowSIndex+offset,Reason_index];
           EstimatedDate:=OrderListExcel.Cells[RowSIndex+offset,EstimatedDate_index];
           Remark:=OrderListExcel.Cells[RowSIndex+offset,Remark_index];
           //=========================================
           if (trim(RY)<>'') then
           begin
              InfoLable.Caption:='Count:'+inttostr(RowSIndex);
              Query1.Edit;
              Query1.fieldbyname('BUYNO').AsString:=BUYNO;
              Query1.fieldbyname('Season').AsString:=Season;
              Query1.fieldbyname('RY').AsString:=RY;
              Query1.fieldbyname('RY_same_group').AsString:=RYGroup;
              Query1.fieldbyname('PO').AsString:=PO;
              Query1.fieldbyname('SKU').AsString:=SKU;
              Query1.fieldbyname('Country').AsString:=Country;
              Query1.fieldbyname('Groups').AsString:=Groups;
              Query1.fieldbyname('ProductionType').AsString:=ProductionType;
              Query1.fieldbyname('SR').AsString:=SR;
              Query1.fieldbyname('MaterialDescription').AsString:=Material;
              Query1.fieldbyname('ModelDescription').AsString:=Model;
              Query1.fieldbyname('Color').AsString:=Color;
              Query1.fieldbyname('Qty').AsString:=Qty;
              Query1.fieldbyname('Gender').AsString:=Gender;
              Query1.fieldbyname('SendSize').AsString:=Sendsize;
              Query1.fieldbyname('SendQty').AsString:=SendQty;
              Query1.fieldbyname('GAC_Date').AsString:=GAC;
              Query1.fieldbyname('GB_Test').AsString:=GBTest;
              Query1.fieldbyname('LAB').AsString:=Lab;
              Query1.fieldbyname('REMARK_Gore_tex').AsString:=Remark_Gotetex;
              Query1.fieldbyname('AWBNo').AsString:=AWBNo;
              Query1.fieldbyname('SendGBDate').AsString:=SendGB;
              Query1.fieldbyname('TestResult').AsString:=TestResult;
              Query1.fieldbyname('ReceivedDate').AsString:=ReceivedDate;
              Query1.fieldbyname('KCNumber').AsString:=KCNumber;
              Query1.fieldbyname('Arrived_on_DTTlab').AsString:=Arrived;
              Query1.fieldbyname('DayReceiveResult').AsString:=Day;
              Query1.fieldbyname('Late_Reason').AsString:=Reason;
              Query1.fieldbyname('EstimatedReceivedDate').AsString:=EstimatedDate;
              Query1.fieldbyname('Remark').AsString:=Remark;
              Query1.fieldbyname('UserID').Value:=main.edit1.text;
              Query1.fieldbyname('UserDate').Value:=NDate;
              Query1.fieldbyname('YN').Value:='1';
              UpdateSQL1.apply(ukinsert);
           end;
           //
           if (trim(RY)='') then  Isbreak:=true;
           //
        until IsBreak=true;

        OrderListExcel.Quit;
        Showmessage('Success.');
        Button1.Click;
      end else
      begin
        OrderListExcel.Quit;
        Showmessage('Excel not exact format!');
      end;
    end;
  except
    on E:Exception do
    begin
      Application.MessageBox(PChar('NO EXCEL'+E.Message),'', MB_OK);
      OrderListExcel.Quit;
      Exit;
    end;
  end;
  //
end;

procedure TGBTest.ModifyClick(Sender: TObject);
begin
  with Query1 do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
  Save.Enabled:=true;
  Cancel.Enabled:=true;
  DBGridEh1.columns[31].ButtonStyle:=cbsEllipsis;
end;

procedure TGBTest.SaveClick(Sender: TObject);
var i:integer;
begin
  Query1.First;
  for i:=0 to Query1.RecordCount-1 do
  begin
    case Query1.updatestatus of
      usmodified:
      begin
        if Query1.FieldByName('USERID').Value=main.Edit1.Text then
        begin
          Query1.Edit;
          Query1.FieldByName('userID').Value:=main.edit1.text;
          Query1.FieldByName('userdate').Value:=Date;
          UpdateSQL1.apply(ukmodify);
        end else
        begin
          Showmessage('It is not yours, can not modify.');
        end;
      end;
    end;
    Query1.Next;
  end;
  Query1.active:=false;
  Query1.cachedupdates:=false;
  Query1.requestlive:=false;
  Query1.active:=true;
  Save.Enabled:=false;
  Cancel.Enabled:=false;
  DBGridEh1.columns[31].ButtonStyle:=cbsNone;
end;

procedure TGBTest.CancelClick(Sender: TObject);
begin
  with Query1 do
  begin
    active:=false;
    requestlive:=false;
    cachedupdates:=false;
    active:=true;
  end;
  Save.Enabled:=false;
  Cancel.Enabled:=false;
  DBGridEh1.columns[31].ButtonStyle:=cbsNone;
end;

procedure TGBTest.Excel1Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin
  if  Query1.active  then
  begin
    try
      eclApp:=CreateOleObject('Excel.Application');
      WorkBook:=CreateOleObject('Excel.Sheet');
    except
      Application.MessageBox('No Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
      Exit;
    end;
    //
    try
      WorkBook:=eclApp.workbooks.Add;
      for   i:=0   to   DBGridEh1.Columns.Count-1   do
        begin
          eclApp.Cells(1,i+1):=DBGridEh1.Columns[i].Title.Caption;
        end;
      //
      Query1.First;
      j:=2;
      while   not   Query1.Eof   do
        begin
          for   i:=0   to  DBGridEh1.Columns.Count-1  do
          begin
            eclApp.Range[eclApp.Cells[j,5],eclApp.Cells[j,5]].NumberFormatLocal:='@';
            eclApp.Range[eclApp.Cells[j,22],eclApp.Cells[j,22]].NumberFormatLocal:='@';
            eclApp.Cells(j,i+1):=DBGridEh1.Fields[i].Value;
          end;
          Query1.Next;
          inc(j);
        end;
     eclapp.columns.autofit;
     showmessage('Succeed');
     eclApp.Visible:=True;
    except
        on   F:Exception   do
          showmessage(F.Message);
    end;
  end;

end;

procedure TGBTest.DBGridEh1Columns31EditButtonClick(Sender: TObject;
  var Handled: Boolean);
var GBFileName: string;
begin
  if (OpenDialog.Execute) then
  begin
    GBFileName := ExtractFileName(OpenDialog.FileName);
    if (FileExists(GBFilePath + GBFileName) = false) then
    begin
      Query1.FieldByName('TestReportFile').Value := ExtractFileName(OpenDialog.FileName);
      CopyFile(PChar(OpenDialog.FileName), PChar(GBFilePath + GBFileName), true);
    end else
    begin
      if (MessageDlg('File ''' + GBFileName + ''' already exists. Do you want to replace it?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
      begin
        Query1.FieldByName('TestReportFile').Value := ExtractFileName(OpenDialog.FileName);
        CopyFile(PChar(OpenDialog.FileName), PChar(GBFilePath + GBFileName), false);
      end
    end;
  end;
end;

procedure TGBTest.DBGridEh1DblClick(Sender: TObject);
begin
  if (DBGridEh1.SelectedField.FieldName = 'TestReportFile') and (Query1.FieldByName('TestReportFile').AsString <> '') and (Save.Enabled = false) then
    ShellExecute(0, 'open', PChar(GBFilePath + Query1.FieldByName('TestReportFile').AsString), nil, nil, SW_Normal);
end;

procedure TGBTest.DBGridEh1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
var
  Text: String;
  i, LineHeight: Integer;
  DrawRect: TRect;
begin
  if Query1.FieldByName('TestResult').AsString ='Pass' then
  begin
     DBGridEh1.canvas.Brush.Color:=$C0DCC0;
     DBGridEh1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
  end;
  //
  if Query1.FieldByName('TestResult').AsString ='Waiting' then
  begin
     DBGridEh1.canvas.Brush.Color:=$E0FFFF;
     DBGridEh1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
  end;
  //
  if Query1.FieldByName('TestResult').AsString ='New add' then
  begin
     DBGridEh1.canvas.Brush.Color:=$F5F0FF;
     DBGridEh1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
  end;
  //
  if Query1.FieldByName('TestResult').AsString ='Fail 1st' then
  begin
     DBGridEh1.canvas.Brush.Color:=$7280FA;
     DBGridEh1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
  end;

end;

//Code them
procedure TGBTest.Query1AfterScroll(DataSet: TDataSet);
var ShoePic:string;
begin
  {if IsExport=false then
  begin
    shoePic:=StringReplace(Query1.FieldByName('IMGName').Asstring,'H:',ShoePicPath, [rfReplaceAll, rfIgnoreCase]);
    if FileExists(shoePic)=true then
    begin
       ShoeImage.Picture.LoadFromFile(shoePic);
       if ShowShoePic=nil then ShowShoePic:=TShowShoePic.Create(self);
       ShowShoePic.ShoeImage.Picture.LoadFromFile(shoePic);
    end else
    begin
       ShoeImage.Picture.Bitmap:=nil;
       if ShowShoePic<>nil then
         ShowShoePic.ShoeImage.Picture.Bitmap:=nil;
    end;
   end;}
end;

procedure TGBTest.DetectMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
var MouseP:TPoint;
begin

    if ShowShoePic<>nil then
    begin
      if ShoeImage.Picture.Graphic<>nil then
      begin
        GetCursorPos(MouseP);
        if  ( (MouseP.X>=(ShoeImage.Left+main.Left))  and (MouseP.Y>=(ShoeImage.Top+main.Top+50))
            and (MouseP.X<=(ShoeImage.Left+main.Left+ShoeImage.Width)) and (MouseP.Y<=(ShoeImage.Top+main.Top+50+ShoeImage.Height)) ) then
        begin
           ShowShoePic.Left:=ShoeImage.Left+main.Left+ShoeImage.Width;
           ShowShoePic.Top:=ShoeImage.Top+main.Top+50+ShoeImage.Height;
           ShowShoePic.Show;
        end else
        begin
           ShowShoePic.Hide;
        end;
      end;
    end;

end;

procedure TGBTest.FormShow(Sender: TObject);
begin
    ShoeImage.OnMouseMove:=DetectMouseMove;
end;


procedure TGBTest.Details1Click(Sender: TObject);
begin
  DetailsGBTest := TDetailsGBTest.Create(Self);

  DetailsGBTest.Edit1.Text := DBGridEh1.DataSource.DataSet.FieldByName('RY').AsString;
  DetailsGBTest.Edit4.Text := DBGridEh1.DataSource.DataSet.FieldByName('SKU').AsString;
  DetailsGBTest.Edit6.Text := DBGridEh1.DataSource.DataSet.FieldByName('BUYNO').AsString;
  DetailsGBTest.Edit2.Text := DBGridEh1.DataSource.DataSet.FieldByName('USERDate').AsString;
  DetailsGBTest.Show;
end;


procedure TGBTest.DBGridEh1CellClick(Column: TColumnEh);
var ShoePic:string;
begin
  if IsExport=false then
  begin
    shoePic:=StringReplace(Query1.FieldByName('IMGName').Asstring,'H:',ShoePicPath, [rfReplaceAll, rfIgnoreCase]);
    if FileExists(shoePic)=true then
    begin
       ShoeImage.Picture.LoadFromFile(shoePic);
       if ShowShoePic=nil then ShowShoePic:=TShowShoePic.Create(self);
       ShowShoePic.ShoeImage.Picture.LoadFromFile(shoePic);
    end else
    begin
       ShoeImage.Picture.Bitmap:=nil;
       if ShowShoePic<>nil then
         ShowShoePic.ShoeImage.Picture.Bitmap:=nil;
    end;
   end;
end;

end.
