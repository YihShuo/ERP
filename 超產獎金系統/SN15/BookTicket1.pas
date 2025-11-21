unit BookTicket1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, Vcl.Buttons, Data.DB,
  Data.Win.ADODB, MyADOQuery, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, IdMessage,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient,
  IdExplicitTLSClientServerBase, IdMessageClient, IdSMTPBase, IdSMTP, IdAttachmentFile
  ,RegularExpressions, iniFiles, DBCtrlsEh, MyADOUpdateSQL;

type
  TBookTicket = class(TForm)
    Panel4: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label1: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label10: TLabel;
    Button2: TButton;
    ED_ID: TEdit;
    ED_Name: TEdit;
    Button3: TButton;
    GroupBox2: TGroupBox;
    RB11: TRadioButton;
    RB12: TRadioButton;
    RB13: TRadioButton;
    RB14: TRadioButton;
    RB16: TRadioButton;
    Edit5: TEdit;
    Edit4: TEdit;
    FYearCombo: TComboBox;
    PC1: TPageControl;
    TabSheet1: TTabSheet;
    Splitter1: TSplitter;
    DBGridEh1: TDBGridEh;
    DS1: TDataSource;
    Query1: TMyADOQuery;
    Query1ID: TStringField;
    Query1Nation: TWideStringField;
    Query1DutyDate: TDateTimeField;
    Query1Name: TWideStringField;
    Query1EngName: TWideStringField;
    Query1Gender: TStringField;
    Query1Department: TStringField;
    Query1Position: TWideStringField;
    Query1Sequence: TIntegerField;
    DS2: TDataSource;
    Query2: TMyADOQuery;
    Query2LNO: TStringField;
    Query2FYear: TStringField;
    Query2Company: TWideStringField;
    Query2Department: TWideStringField;
    Query2Position: TWideStringField;
    Query2ID: TStringField;
    Query2Name: TWideStringField;
    Query2Type: TStringField;
    Query2RLTimes: TIntegerField;
    Query2StartDate: TDateTimeField;
    Query2EndDate: TDateTimeField;
    Query2Days: TIntegerField;
    Query2Extend: TStringField;
    Query2ExtendStartDate: TDateTimeField;
    Query2ExtendEndDate: TDateTimeField;
    Query2ExtendDays: TIntegerField;
    Query2LastStartDate: TDateTimeField;
    Query2LastEndDate: TDateTimeField;
    Query2LastDays: TIntegerField;
    Query2Ticket: TWideStringField;
    Query2Route: TWideStringField;
    Query2Route1: TWideStringField;
    Query2GoDate: TDateTimeField;
    Query2GoPlaneNumber: TStringField;
    Query2GoETD: TStringField;
    Query2GoETA: TStringField;
    Query2BackDate: TDateTimeField;
    Query2BackPlaneNumber: TStringField;
    Query2BackETD: TStringField;
    Query2BackETA: TStringField;
    Query2AgentID: TStringField;
    Query2Agent1ID: TStringField;
    Query2Agent: TWideStringField;
    Query2Agent1: TWideStringField;
    Query2Remark: TWideStringField;
    Query2Remark1: TWideStringField;
    Query2FeedBack: TWideStringField;
    Query2flowflag: TStringField;
    Query2UserID: TStringField;
    Query2UserDate: TDateTimeField;
    U_Query2: TMyADOUpdateSQL;
    Query2AirPlanFee: TFloatField;
    Query2NTD_Credit: TIntegerField;
    Query2USD_Credit: TFloatField;
    Query2LNO_Book: TStringField;
    Query2BookMailCount: TSmallintField;
    Query2HolidayMailCount: TSmallintField;
    TempQry: TADOQuery;
    Label16: TLabel;
    LNOEdit: TEdit;
    IdSMTP1: TIdSMTP;
    IdMessage3: TIdMessage;
    IdMessage1: TIdMessage;
    Label23: TLabel;
    TypeCombo: TComboBox;
    GroupBox5: TGroupBox;
    RB1: TRadioButton;
    RB2: TRadioButton;
    RB3: TRadioButton;
    PC3: TPageControl;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    Panel1: TPanel;
    Panel2: TPanel;
    Splitter4: TSplitter;
    Panel3: TPanel;
    Panel6: TPanel;
    BB3: TBitBtn;
    BB5: TBitBtn;
    BB6: TBitBtn;
    DBGridEh2: TDBGridEh;
    Panel8: TPanel;
    GroupBox1: TGroupBox;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    GoNumDBEdit: TDBEdit;
    GoETDDBEdit: TDBEdit;
    GoETADBEdit: TDBEdit;
    RouteDBEdit: TDBEdit;
    GoDateDBEdit: TDBEdit;
    GroupBox3: TGroupBox;
    Label9: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    BackNumDBEdit: TDBEdit;
    BackETADBEdit: TDBEdit;
    BackETDDBEdit: TDBEdit;
    Route1DBEdit: TDBEdit;
    BackDateDBEdit: TDBEdit;
    GroupBox4: TGroupBox;
    Label14: TLabel;
    Label13: TLabel;
    Label15: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    PC2: TPageControl;
    TabSheet2: TTabSheet;
    Panel5: TPanel;
    Panel7: TPanel;
    CC4: TBitBtn;
    CC5: TBitBtn;
    TravelAgentRB1: TRadioButton;
    TravelAgentRB2: TRadioButton;
    RichEditContext1: TRichEdit;
    Panel10: TPanel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    EditMailTitle1: TEdit;
    EditMailTo1: TEdit;
    EditMailCC1: TRichEdit;
    TabSheet3: TTabSheet;
    Panel9: TPanel;
    DD5: TBitBtn;
    DD6: TBitBtn;
    RichEditContext2: TRichEdit;
    Panel11: TPanel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    EditMailTitle2: TEdit;
    EditMailTo2: TEdit;
    EditMailCC2: TRichEdit;
    Panel12: TPanel;
    BC2: TBitBtn;
    BC4: TBitBtn;
    BC3: TBitBtn;
    BC5: TBitBtn;
    BC6: TBitBtn;
    Panel13: TPanel;
    DBGridEh3: TDBGridEh;
    Query2BookDate: TDateTimeField;
    BookDateDBDateTime: TDBDateTimeEditEh;
    Query3: TMyADOQuery;
    DS3: TDataSource;
    U_Query3: TMyADOUpdateSQL;
    Query3LNO: TStringField;
    Query3ID: TStringField;
    Query3BookDate: TDateTimeField;
    Query3Route: TWideStringField;
    Query3Route_Sub: TWideStringField;
    Query3GoDate: TDateTimeField;
    Query3GoDate_Sub: TDateTimeField;
    Query3GoPlaneNumber: TStringField;
    Query3GoPlaneNumber_Sub: TStringField;
    Query3Route1: TWideStringField;
    Query3Route1_Sub: TWideStringField;
    Query3BackDate: TDateTimeField;
    Query3BackDate_Sub: TDateTimeField;
    Query3BackPlaneNumber: TStringField;
    Query3BackPlaneNumber_Sub: TStringField;
    Query3Tickets: TSmallintField;
    Query3USD_Fee: TFloatField;
    Query3Exchange: TFloatField;
    Query3VND_Fee: TIntegerField;
    Query3NTD_Fee: TIntegerField;
    Query3LNO_Fee: TStringField;
    Query3USD_Credit: TFloatField;
    Query3VND_Credit: TIntegerField;
    Query3Reason: TWideStringField;
    Query3Payment: TWideStringField;
    Query3Remark: TWideStringField;
    Query3BookMailCount: TSmallintField;
    Query3HolidayMailCount: TSmallintField;
    Query3UserID: TStringField;
    Query3UserDate: TDateTimeField;
    Query3Tickets_Credit: TSmallintField;
    Query3NTD_Credit: TIntegerField;
    Query3YN: TStringField;
    Button6: TButton;
    MailRB1: TRadioButton;
    MailRB2: TRadioButton;
    MailRB3: TRadioButton;
    MailRB4: TRadioButton;
    MailRB5: TRadioButton;
    MailRB6: TRadioButton;
    Query1Factory: TStringField;
    Query1Email: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Query2AfterOpen(DataSet: TDataSet);
    procedure BB3Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure Query2BeforeClose(DataSet: TDataSet);
    procedure DBGridEh2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure FormCreate(Sender: TObject);
    procedure CC5Click(Sender: TObject);
    procedure CC4Click(Sender: TObject);
    procedure DD5Click(Sender: TObject);
    procedure DD6Click(Sender: TObject);
    procedure Query3AfterOpen(DataSet: TDataSet);
    procedure Query3BeforeClose(DataSet: TDataSet);
    procedure BC5Click(Sender: TObject);
    procedure BC6Click(Sender: TObject);
    procedure BC2Click(Sender: TObject);
    procedure BC3Click(Sender: TObject);
    procedure BC4Click(Sender: TObject);
    procedure DBGridEh3GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure Button6Click(Sender: TObject);
    procedure Query2AfterScroll(DataSet: TDataSet);
  private
    Flag:byte;
    { Private declarations }
    procedure readini();
    procedure Show_MailContext(Flag:byte);
    procedure Load_MailAddress(Flag:byte);
    procedure SendMail(SendTo,SendCC, FilePath: string; Title: string; Content:String);
    function  IsValidEmailRegEx(const EmailAddress: string): boolean;
    function IsMatch(const Input, Pattern: string): boolean;
  public
    { Public declarations }
  end;

var
  BookTicket: TBookTicket;

implementation
  uses  main1, BookTicket_QRpt1, FunUnit;
{$R *.dfm}
procedure TBookTicket.readini();
var
  MyIni: TIniFile;
begin
  MyIni := TIniFile.Create(ExtractFilePath(Application.ExeName) + 'Config.ini');
  try
    idSMTP1.Host := MyIni.ReadString( 'MailServer', 'IP', '192.168.23.6');
    idSMTP1.Username := MyIni.ReadString( 'MailServer', 'User', 'workflow@tyxuan.com.vn');
    idSMTP1.Password := MyIni.ReadString( 'MailServer', 'Pass', 'work@2019');
    idSMTP1.Port := strtoint(MyIni.ReadString( 'MailServer', 'Port', '25'));
    //
    idMessage1.From.Address:= MyIni.ReadString( 'MailServer', 'User', 'thuyduyen@tyxuan.com.vn');
    idMessage1.From.Name:= MyIni.ReadString( 'MailServer', 'Name', 'thuyduyen');
  finally
    MyIni.Free;
  end;

end;
//郵件規則檢查
function TBookTicket.IsMatch(const Input, Pattern: string): boolean;
begin
  Result := TRegEx.IsMatch(Input, Pattern);
end;
function TBookTicket.IsValidEmailRegEx(const EmailAddress: string): boolean;
const
  EMAIL_REGEX = '^((?>[a-zA-Z\d!#$%&''*+\-/=?^_`{|}~]+\x20*|"((?=[\x01-\x7f])'
             +'[^"\\]|\\[\x01-\x7f])*"\x20*)*(?<angle><))?((?!\.)'
             +'(?>\.?[a-zA-Z\d!#$%&''*+\-/=?^_`{|}~]+)+|"((?=[\x01-\x7f])'
             +'[^"\\]|\\[\x01-\x7f])*")@(((?!-)[a-zA-Z\d\-]+(?<!-)\.)+[a-zA-Z]'
             +'{2,}|\[(((?(?<!\[)\.)(25[0-5]|2[0-4]\d|[01]?\d?\d))'
             +'{4}|[a-zA-Z\d\-]*[a-zA-Z\d]:((?=[\x01-\x7f])[^\\\[\]]|\\'
             +'[\x01-\x7f])+)\])(?(angle)>)$';
begin
  Result := IsMatch(EmailAddress, EMAIL_REGEX);
end;
//發送郵件
procedure TBookTicket.SendMail(SendTo,SendCC, FilePath: string; Title: string; Content:String);
begin

  IdMessage1.Recipients.Clear;
  IdMessage1.Recipients.Add.Text :=SendTo;
  IdMessage1.CCList.Clear;
  if trim(SendCC)<>'' then
    IdMessage1.CCList.Add.Text:=SendCC;
  IdMessage1.Subject := Title;
  //
  IdMessage1.ContentType:='text/plain'; //'text/html'; 'multipart/mixed';
  IdMessage1.CharSet := 'UTF-8';
  IdMessage1.ClearBody;
  IdMessage1.Body.Add(Content);
  //
  if FilePath<>'' then
    TIdAttachmentFile.Create(IdMessage1.MessageParts, FilePath);
  try
    IdSMTP1.Connect;
    IdSMTP1.Authenticate;
  except on E:Exception do
    begin
      Showmessage(E.Message);
      FuncObj.WriteErrorLog(datetimetostr(now)+' '+E.Message);
    end;
  end;

  try
    IdSMTP1.Send(IdMessage1);
  except on E:Exception do
    begin
      Showmessage(E.Message);
      FuncObj.WriteErrorLog(datetimetostr(now)+' '+E.Message);
    end;
  end;
  IdSMTP1.Disconnect(false);
  Showmessage('發送郵件成功Email đã được gửi thành công');
end;

procedure TBookTicket.BB3Click(Sender: TObject);
begin
  with Query2 do
  begin
    if (LockType <> ltBatchOptimistic) then
    begin
      Active := false;
      LockType := ltBatchOptimistic;
      Active := true;
    end;
    Edit;
  end;
  BB5.Enabled := true;
  BB6.Enabled := true;
end;

procedure TBookTicket.BB5Click(Sender: TObject);
var USD_Fee,NTD_Fee,BookDate:String;
begin
  try
    //
    with Query2 do
    begin
      USD_Fee:='null';
      NTD_Fee:='null';
      BookDate:='null';
      if Trim(DBEdit1.Text)<>'' then USD_Fee:=DBEdit1.Text;
      if Trim(DBEdit2.Text)<>'' then NTD_Fee:=DBEdit2.Text;
      if trim(StringReplace(BookDateDBDateTime.Text, '/','',[rfReplaceAll, rfIgnoreCase]))<>'' then BookDate:=''''+FormatDatetime('YYYY/MM/DD',BookDateDBDateTime.Value)+'''';
      if (Query2.FieldByName('LNO_Book').AsString = '') then
      begin
        with TempQry do
        begin
           Active:=false;
           SQL.Clear;
           SQL.Add('Insert into [EEP].[LingYi].[dbo].[WF_BookTicket] ');
           SQL.Add('  (LNO, ID, BookDate, Route, GoDate, GoPlaneNumber, Route1, BackDate, BackPlaneNumber, Reason, Payment, USD_Credit , NTD_Credit,  UserID, UserDate, YN) ');
           SQL.Add('Values ');
           SQL.Add('  ('''+Query2.FieldByName('LNO').AsString+''','''+Query2.FieldByName('ID').AsString+''','+BookDate+','''+Query2.FieldByName('Route').AsString+'=>'+Query2.FieldByName('Route1').AsString+''','''+Query2.FieldByName('GoDate').AsString+''','''+Query2.FieldByName('GoPlaneNumber').AsString+''' ');
           SQL.Add('   ,'''+Query2.FieldByName('Route1').AsString+'=>'+Query2.FieldByName('Route').AsString+''','''+Query2.FieldByName('BackDate').AsString+''','''+Query2.FieldByName('BackPlaneNumber').AsString+''','''+Query2.FieldByName('Type').AsString+''','''+Query2.FieldByName('Company').AsString+''' ');
           SQL.Add('   ,'+USD_Fee+','+NTD_Fee+','''+main.UserID+''','''+Formatdatetime('YYYY/MM/DD',Date())+''',''1'') ');
           //funcObj.WriteErrorLog(sql.Text);
           ExecSQL();
        end;
      end else
      begin
        with TempQry do
        begin
           Active:=false;
           SQL.Clear;
           SQL.Add('Update [EEP].[LingYi].[dbo].[WF_BookTicket] ');
           SQL.Add('Set ');
           SQL.Add(' BookDate='+BookDate+' ');
           SQL.Add(' ,Route='''+Query2.FieldByName('Route').AsString+'=>'+Query2.FieldByName('Route1').AsString+'''');
           SQL.Add(' ,GoDate='''+Query2.FieldByName('GoDate').AsString+'''');
           SQL.Add(' ,GoPlaneNumber='''+Query2.FieldByName('GoPlaneNumber').AsString+'''');
           SQL.Add(' ,Route1='''+Query2.FieldByName('Route1').AsString+'=>'+Query2.FieldByName('Route').AsString+'''');
           SQL.Add(' ,BackDate='''+Query2.FieldByName('BackDate').AsString+'''');
           SQL.Add(' ,BackPlaneNumber='''+Query2.FieldByName('BackPlaneNumber').AsString+'''');
           SQL.Add(' ,USD_Credit='+USD_Fee+' ');
           SQL.Add(' ,NTD_Credit='+NTD_Fee+' ');
           SQL.Add(' ,UserID='''+main.UserID+''' ');
           SQL.Add(' ,UserDate='''+Formatdatetime('YYYY/MM/DD',Date())+''' ');
           SQl.Add(' where LNO='''+Query2.FieldByName('LNO').AsString+''' ');
           SQl.Add(' and ID='''+Query2.FieldByName('ID').AsString+''' ');
           //funcObj.WriteErrorLog(sql.Text);
           ExecSQL();
        end;
      end;
      //更新航班資訊
      with TempQry do
      begin
           Active:=false;
           SQL.Clear;
           SQL.Add('Update [EEP].[LingYi].[dbo].[WF_RegularLeave] ');
           SQL.Add('Set ');
           SQL.Add('  Route ='''+RouteDBEdit.Text+''' ');
           SQL.Add(' ,Route1 ='''+Route1DBEdit.Text+''' ');
           SQL.Add(' ,GoDate='''+GoDateDBEdit.Text+''' ');
           SQL.Add(' ,BackDate='''+BackDateDBEdit.Text+''' ');
           SQL.Add(' ,GoPlaneNumber='''+GoNumDBEdit.Text+''' ');
           SQL.Add(' ,GoETD='''+GoETDDBEdit.Text+''' ');
           SQL.Add(' ,GoETA='''+GoETADBEdit.Text+''' ');
           SQL.Add(' ,BackPlaneNumber='''+BackNumDBEdit.Text+''' ');
           SQL.Add(' ,BackETD='''+BackETDDBEdit.Text+''' ');
           SQL.Add(' ,BackETA='''+BackETADBEdit.Text+''' ');
           SQL.Add(' ,AirPlanFee='+NTD_Fee+' ');
           SQl.Add(' where LNO='''+Query2.FieldByName('LNO').AsString+''' ');
           //funcObj.WriteErrorLog(sql.Text);
           ExecSQL();
      end;
    end;

    Query2.Active := false;
    Query2.LockType := ltReadOnly;
    Query2.Active := true;
    BB5.Enabled := false;
    BB6.Enabled := false;
    //Button2Click(Nil);
  except
    Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
  end;
end;

procedure TBookTicket.BB6Click(Sender: TObject);
begin
  with Query2 do
  begin
    Active := false;
    LockType := ltReadOnly;
    Active := true;
  end;
  BB5.Enabled := false;
  BB6.Enabled := false;
end;

procedure TBookTicket.BC2Click(Sender: TObject);
begin
  with Query3 do
  begin
    Active := false;
    LockType := ltBatchOptimistic;
    Active := true;
    First;
    Insert;
  end;
  BC5.Enabled := true;
  BC6.Enabled := true;
end;

procedure TBookTicket.BC3Click(Sender: TObject);
begin
  with Query3 do
  begin
    if (LockType <> ltBatchOptimistic) then
    begin
      Active := false;
      LockType := ltBatchOptimistic;
      Active := true;
    end;
    Edit;
  end;
  BC5.Enabled := true;
  BC6.Enabled := true;
end;

procedure TBookTicket.BC4Click(Sender: TObject);
var
  KeyValue: string;
begin
  with Query3 do
  begin
    KeyValue := FieldByName('LNO').AsString;
    Active := false;
    LockType := ltBatchOptimistic;
    Active := true;
    Locate('LNO', KeyValue, []);
    Edit;
    FieldByName('YN').Value := '0';
  end;
  BC5.Enabled := true;
  BC6.Enabled := true;
end;

procedure TBookTicket.BC5Click(Sender: TObject);
var i: integer;
    LNO,sYear,sMonth:string;
begin
  //
  with TempQry do          //取服務器的年月值
  begin
    active:=false;
    sql.Clear;
    sql.Add('select year(getdate()) as FY,month(getdate()) as FM ,getdate() as NDate');
    active:=true;
    sYear:=fieldbyname('FY').asstring;
    sMonth:=fieldbyname('FM').asstring;
    active:=false;
  end;
  if length(sMonth)<2 then
    sMonth:='0'+sMonth;
  //
  Query3.First;
  for i := 0 to Query3.RecordCount-1 do
  begin
    case Query3.UpdateStatus of
      usInserted:
      begin
        if (Query3.FieldByName('BookDate').AsString = '') then
        begin
          Query3.Delete;
        end else
        begin
          with TempQry do    //計算領料單流水號
          begin
           active:=false;
           sql.Clear;
           sql.Add('Select LNO from [EEP].[LingYi].[dbo].[WF_BookTicket] WF_BookTicket where LNO like ''T'+sYear+sMonth+'%'' ');
           sql.add('order by LNO');
           active:=true;
           if recordcount >0 then
           begin
             last;
             LNO:=Fieldbyname('LNO').AsString;
             LNO:=copy(LNO,8,5);
             LNO:=inttostr(strtoint(LNO)+1);
             while length(LNO)<5 do
             begin
               LNO:='0'+LNO;
             end;
           end else
           begin
             LNO:='00001';
           end;
           LNO :='T'+sYear+sMonth+LNO;
           active:=false;
           sql.Clear;
          end;
          //
          Query3.Edit;
          Query3.FieldByName('LNO').AsString:=LNO;
          Query3.FieldByName('ID').AsString:=Query1.FieldByName('ID').AsString;
          Query3.FieldByName('UserID').AsString := main.UserID;
          Query3.FieldByName('UserDate').Value:=Date();
          Query3.FieldByName('YN').Value:='1';
          U_Query3.Apply(ukInsert);
        end;
      end;

      usModified:
      begin
        if (Query3.FieldByName('YN').AsString = '0') then
        begin
          U_Query3.Apply(ukDelete);
        end
        else begin
          //
          Query3.Edit;
          Query3.FieldByName('UserID').AsString := main.UserID;
          //Query3.FieldByName('UserDate').Value:=Date();
          U_Query3.Apply(ukModify);
        end;
      end;
    end;
    Query3.Next;
  end;
  //
  Query3.Active:=false;
  Query3.LockType:=ltReadOnly;
  Query3.Active:=true;
  BC5.Enabled := false;
  BC6.Enabled := false;
  //
end;

procedure TBookTicket.BC6Click(Sender: TObject);
begin
  with Query3 do
  begin
    Active := false;
    LockType := ltReadOnly;
    Active := true;
  end;
  BC5.Enabled := false;
  BC6.Enabled := false;
end;

//載入郵件聯絡人
procedure TBookTicket.Load_MailAddress(Flag:byte);
var SFL:String;
begin
  //mail內容旅行社
  if TravelAgentRB1.Checked then SFL:='01';
  if TravelAgentRB2.Checked then SFL:='02';
  if ((Flag=0) or (Flag=1)) then
  begin
    with TempQry do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('Select MailTo,MailCC,MailContext from Directory_SendMail where LB=''01'' and SFL='''+SFL+''' ');
      Active:=true;
      if RecordCount>0 then
      begin
        EditMailTitle1.Text:='';
        EditMailTo1.Text:=FieldByName('MailTo').AsString;
        EditMailCC1.Text:=FieldByName('MailCC').AsString;
        RichEditContext1.Text:=FieldByName('MailContext').AsString;
      end;
      Active:=false;
    end;
  end;
  //mail 內容給台灣公司
  if MailRB1.Checked then SFL:='01';
  if MailRB2.Checked then SFL:='02';
  if MailRB3.Checked then SFL:='03';
  if MailRB4.Checked then SFL:='04';
  if MailRB5.Checked then SFL:='05';
  if MailRB6.Checked then SFL:='06';
  if ((Flag=0) or (Flag=2)) then
  begin
    with TempQry do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('Select MailTo,MailCC,MailContext  from Directory_SendMail where LB=''02'' and SFL='''+SFL+''' ');
      Active:=true;
      if RecordCount>0 then
      begin
        EditMailTitle2.Text:='';
        EditMailTo2.Text:=FieldByName('MailTo').AsString;
        EditMailCC2.Text:=FieldByName('MailCC').AsString;
        RichEditContext2.Text:=FieldByName('MailContext').AsString;
      end;
      Active:=false;
    end;
  end;
  //
end;
//顯示發送mail資訊
procedure TBookTicket.Show_MailContext(Flag:byte);
   function GetSpace(Tag:string;Obj:TRichEdit):string;
   var tmpList:TStringlist;
       i,j,Posi:integer;
       Str:String;
   begin
     tmpList:=TStringlist.Create;
     tmpList.Text:=Obj.Text;
     Str:='';
     for i:=0 to tmpList.Count-1 do
     begin
        Posi:=Pos(tag,tmpList.Strings[i]);
        if Posi>0 then
        begin
          for j := 0 to Posi-2 do
            Str:=Str+' ';
          break;
        end;
     end;
     tmpList.Free;
     result:=Str;
   end;
var Title,Context,SpaceStr:string;
    Posi:integer;
    //
    StartDate,EndDate,GoDate,BackDate:String;
begin
  //資料
  with TempQry do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Select WF_RegularLeave.Name,WF_RegularLeave.StartDate,WF_RegularLeave.EndDate,WF_RegularLeave.Route, ');
    SQL.Add('       WF_RegularLeave.Route1,WF_RegularLeave.Type,Certificate.EngName,Certificate.Passport,Certificate.PassportED,Certificate.BirthDate,');
    SQL.Add('	      Directory_Department.Name as Department,Directory_Factory.Name as Factory,Directory_Position.Name as Position, ');
    SQL.Add('       WF_RegularLeave.GoDate,WF_RegularLeave.GoPlaneNumber,WF_RegularLeave.GoETA,WF_RegularLeave.GoETD,');
    SQL.Add('       WF_RegularLeave.BackDate,WF_RegularLeave.BackPlaneNumber,WF_RegularLeave.BackETA,WF_RegularLeave.BackETD ');
    SQL.Add('from [EEP].[LingYi].[dbo].[WF_RegularLeave] WF_RegularLeave ');
    SQL.Add('Left join Certificate on Certificate.ID=WF_RegularLeave.ID ');
    SQL.Add('Left join Directory on Directory.ID=WF_RegularLeave.ID');
    SQL.Add('Left join Directory_Department on Directory_Department.DID=Directory.DID');
    SQL.Add('Left join Directory_Factory on Directory_Factory.FID=Directory.FID');
    SQL.Add('Left join Directory_Position on Directory_Position.PID=Directory.PID');
    SQL.Add('where WF_RegularLeave.LNO='''+Query2.FieldByName('LNO').AsString+''' ');
    //FuncObj.WriteErrorLog(sql.Text);
    Active:=true;
    if RecordCount>0 then
    begin
       if FieldByName('StartDate').AsString<>'' then StartDate:=FormatDatetime('MM/DD',FieldByName('StartDate').Value) else StartDate:='';
       if FieldByName('EndDate').AsString<>'' then EndDate:=FormatDatetime('MM/DD',FieldByName('EndDate').Value) else EndDate:='';
       if FieldByName('GoDate').AsString<>'' then GoDate:=FormatDatetime('MM/DD',FieldByName('EndDate').Value) else GoDate:='';
       if FieldByName('BackDate').AsString<>'' then BackDate:=FormatDatetime('MM/DD',FieldByName('EndDate').Value) else BackDate:='';
    end;
  end;


  if Flag=1 then
  begin
    with TempQry do
    begin
      if RecordCount>0 then
      begin
        //標題
        Title:=StartDate+'~'+EndDate+' '+Query2.FieldByName('Company').AsString+'-'+FieldByName('Name').AsString+' '+FieldByName('Route').AsString+'=>'+FieldByName('Route1').AsString;
        EditMailTitle1.Text:=Title;
        //內容
        SpaceStr:=GetSpace('{{mailcontext}}',RichEditContext1);
        Context:=Context+GoDate+'~'+BackDate+' '+FieldByName('Route').AsString+'=>'+FieldByName('Route1').AsString+#13#10;
        Context:=Context+SpaceStr+'姓名: '+FieldByName('Name').AsString+' '+FieldByName('EngName').AsString+#13#10;
        Context:=Context+SpaceStr+'護照號碼: '+FieldByName('Passport').AsString+#13#10;
        Context:=Context+SpaceStr+'護照到期日: '+FieldByName('PassportED').AsString+#13#10;
        Context:=Context+SpaceStr+'出生年月日: '+FieldByName('BirthDate').AsString;
        RichEditContext1.Text:=StringReplace(RichEditContext1.Text, '{{mailcontext}}',Context,[rfReplaceAll, rfIgnoreCase]);
      end;
      Active:=false;
    end;
  end;
  //
  if Flag=2 then
  begin
    with TempQry do
    begin
      if RecordCount>0 then
      begin
        //標題
        Title:=StartDate+'~'+EndDate+' '+Query2.FieldByName('Company').AsString+FieldByName('Factory').AsString+FieldByName('Department').AsString+'-'+FieldByName('Name').AsString+FieldByName('Position').AsString+FieldByName('Type').AsString+'通知';
        EditMailTitle2.Text:=Title;
        //內容1
        Context:='';
        Context:=Query2.FieldByName('Company').AsString+FieldByName('Factory').AsString+FieldByName('Department').AsString+'-'+FieldByName('Name').AsString+FieldByName('Position').AsString+'於'+StartDate+'~'+EndDate+FieldByName('Type').AsString;
        RichEditContext2.Text:=StringReplace(RichEditContext2.Text, '{{mailcontext1}}',Context,[rfReplaceAll, rfIgnoreCase]);
        //內容2
        SpaceStr:=GetSpace('{{mailcontext2}}',RichEditContext2);
        Context:='';
        if FieldByName('GoDate').AsString<>'' then
          Context:=Context+GoDate+FieldByName('Route').AsString+'=>'+FieldByName('Route1').AsString+' '+FieldByName('GoPlaneNumber').AsString+'    '+FieldByName('GoETA').AsString+'起飛/'+FieldByName('GoETD').AsString+'抵達'+#13#10;
        if FieldByName('BackDate').AsString<>'' then
          Context:=Context+SpaceStr+BackDate+FieldByName('Route1').AsString+'=>'+FieldByName('Route').AsString+' '+FieldByName('BackPlaneNumber').AsString+'    '+FieldByName('BackETA').AsString+'起飛/'+FieldByName('BackETD').AsString+'抵達';
        RichEditContext2.Text:=StringReplace(RichEditContext2.Text, '{{mailcontext2}}',Context,[rfReplaceAll, rfIgnoreCase]);
      end;
      Active:=false;
    end;
    //
  end;
end;
//
procedure TBookTicket.Button2Click(Sender: TObject);
begin
   with  Query1 do
   begin
      Active:=false;
      SQL.Clear;
      SQL.Add('Select Certificate.ID,Directory_Nationality.Name as Nation, Certificate.DutyDate, Certificate.Name, Certificate.EngName, Certificate.Gender,');
      SQL.Add('       Directory_Factory.Name+''-''+Directory_Department.Name as Department,Directory_Factory.Name as Factory,Directory.Email,');
      SQL.Add('       Directory_Position.Name as Position,Directory.Sequence');
      SQL.Add('from Certificate ');
      SQL.Add(' left join Directory on Directory.ID=Certificate.ID ');
      SQL.Add(' Left join Directory_Factory on Directory_Factory.FID=Directory.FID');
      SQL.Add(' Left join Directory_Department on Directory_Department.DID=Directory.DID');
      SQL.Add(' left join Directory_Position on Certificate.NID = Directory_Position.NID and Directory.PID = Directory_Position.PID');
      SQL.Add(' left join Directory_Nationality on Directory_Nationality.NID=Certificate.NID');
      SQL.Add('Where Certificate.NID<>''VN'' and IsNull(Certificate.Resigned,0)=0');
      if ED_ID.Text <> '' then
        SQL.Add('and Directory.ID = ''' + ED_ID.Text + ''' ');
      if ED_Name.Text<>'' then
        SQL.Add(' and Certificate.Name like '''+ED_Name.Text+'%'' ');
      if Edit4.Text<>'' then
        SQL.Add(' and Directory_Department.Name like '''+Edit4.Text+'%'' ');
      if Edit5.Text<>'' then
        SQL.Add(' and Directory_Position.Name like '''+Edit5.Text+'%'' ');
       if LNOEdit.Text<>'' then
       SQL.Add(' and Certificate.ID in (select distinct ID from [EEP].[LingYi].[dbo].[WF_RegularLeave] where WF_RegularLeave.LNO like '''+LNOEdit.Text+'%'') ');
      //國籍
      if RB12.Checked=true then  SQL.Add(' and Certificate.NID=''TW'' ');
      if RB13.Checked=true then  SQL.Add(' and Certificate.NID=''CN'' ');
      if RB14.Checked=true then  SQL.Add(' and Certificate.NID=''PH'' ');
      if RB16.Checked=true then  SQL.Add(' and Certificate.NID=''IN'' ');
      //funcObj.WriteErrorLog(sql.Text);
      SQL.Add('order by Directory.Sequence');
      Active:=true;
   end;
   with Query2 do
   begin
     Active:=false;
     SQL.Clear;
     SQL.Add('Select WF_RegularLeave.*,WF_BookTicket.BookDate,WF_BookTicket.NTD_Credit,WF_BookTicket.USD_Credit,WF_BookTicket.LNO as LNO_Book,WF_BookTicket.BookMailCount,WF_BookTicket.HolidayMailCount ');
     SQL.Add('from [EEP].[LingYi].[dbo].[WF_RegularLeave] WF_RegularLeave');
     SQL.Add('Left join [EEP].[LingYi].[dbo].[WF_BookTicket] WF_BookTicket on WF_BookTicket.LNO=WF_RegularLeave.LNO ');
     SQL.Add('where WF_RegularLeave.ID=:ID and WF_RegularLeave.FYear='''+FYearCombo.Text+''' ');
     if RB2.Checked=true then
     SQL.Add(' and WF_BookTicket.BookDate is  null ');
     if RB3.Checked=true then
     SQL.Add(' and WF_BookTicket.BookDate is not null  ');
     if LNOEdit.Text<>'' then
     SQL.Add(' and WF_RegularLeave.LNO like '''+LNOEdit.Text+'%'' ');
     if TypeCombo.Text<>'' then
     SQL.Add(' and WF_RegularLeave.Type='''+TypeCombo.Text+''' ');
     SQL.Add('order by WF_RegularLeave.RLTimes ');
     //FuncObj.WriteErrorLog(sql.Text);
     Active:=true;
   end;
   with Query3 do
   begin
     Active:=false;
     SQL.Clear;
     SQL.Add('Select * ');
     SQL.Add('from [EEP].[LingYi].[dbo].[WF_BookTicket] WF_BookTicket ');
     SQL.Add('where WF_BookTicket.ID=:ID and Year(WF_BookTicket.BookDate)='+FYearCombo.Text+' ');
     SQL.Add('order by BookDate desc');
     //FuncObj.WriteErrorLog(sql.Text);
     Active:=true;
   end;
end;

procedure TBookTicket.Button6Click(Sender: TObject);
begin
  BookTicket_QRpt:=TBookTicket_QRpt.Create(self);
  BookTicket_QRpt.ShowModal;
end;

procedure TBookTicket.CC4Click(Sender: TObject);
begin
  if trim(EditMailTitle1.Text)='' then
  begin
    Showmessage('郵件標提空白請檢查Đánh dấu email trống vui lòng kiểm tra');
    Exit;
  end;

  if MessageDlg('確定寄信?Bạn có chắc chắn muốn mail?', mtConfirmation, [mbYes, mbNo], 0, mbYes) = mrYes then
  begin
    if trim(EditMailTo1.Text)<>'' then
    begin
      SendMail(EditMailTo1.Text,EditMailCC1.Text,'',EditMailTitle1.Text,RichEditContext1.Text);
    end else
    begin
      Showmessage('郵件收信人空白請檢查Email người nhận để trống vui lòng kiểm tra');
    end;
  end;
end;

procedure TBookTicket.CC5Click(Sender: TObject);
begin
  if Query2.Active=false then Exit;
  Load_MailAddress(1);
  Show_MailContext(1);
end;

procedure TBookTicket.DBGridEh2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if Query2.FieldByName('BookDate').AsString<>'' then
  begin
    DBGridEh2.canvas.font.color:=clblue;
    DBGridEh2.defaultdrawcolumncell(rect,datacol,column,state);
  end
end;

procedure TBookTicket.DBGridEh3GetCellParams(Sender: TObject; Column: TColumnEh;
  AFont: TFont; var Background: TColor; State: TGridDrawState);
begin
  if (Query3.FieldByName('YN').AsString = '0') then
    DBGridEh3.Canvas.Font.Color := clRed;
end;

procedure TBookTicket.DD5Click(Sender: TObject);
begin
  if Query2.Active=false then Exit;
  Load_MailAddress(2);
  Show_MailContext(2);
end;

procedure TBookTicket.DD6Click(Sender: TObject);
var Str:string;
begin
  if Query1.FieldByName('Email').AsString<>'' then
  begin
    Str:='<'+Query1.FieldByName('Email').AsString+'>';
    if trim(EditMailTitle2.Text)='' then
    begin
      Showmessage('郵件標提空白請檢查Đánh dấu email trống vui lòng kiểm tra');
      Exit;
    end;
    if MessageDlg('確定寄信?Bạn có chắc chắn muốn mail?', mtConfirmation, [mbYes, mbNo], 0, mbYes) = mrYes then
    begin
      if trim(EditMailTo2.Text)<>''  then
      begin
        SendMail(EditMailTo2.Text,EditMailCC2.Text+Str,'',EditMailTitle2.Text,RichEditContext2.Text);
      end else
      begin
        Showmessage('郵件收信人空白請檢查Email người nhận để trống vui lòng kiểm tra');
      end;
    end;
  end else
  begin
    Showmessage('休假出差申請人'+Query1.FieldByName('Name').AsString+' 郵件Email空白，請先設定');
  end;

end;

procedure TBookTicket.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=CaFree;
end;

procedure TBookTicket.FormCreate(Sender: TObject);
begin
  readini();
  Load_MailAddress(0);
end;

procedure TBookTicket.FormDestroy(Sender: TObject);
begin
  BookTicket:=nil;
end;

procedure TBookTicket.Query2AfterOpen(DataSet: TDataSet);
begin
  Query2.AfterOpenRecNo(DataSet);
  BB3.Enabled := true;
end;

procedure TBookTicket.Query2AfterScroll(DataSet: TDataSet);
begin
  if Pos('出差',Query2.FieldByName('Type').AsString)>0 then
  begin
    //還沒有出差資料
  end else
  begin
    if Query1.FieldByName('Factory').AsString='A廠區' then MailRB1.Checked:=true;
    if Query1.FieldByName('Factory').AsString='B廠區' then MailRB2.Checked:=true;
    if Query1.FieldByName('Factory').AsString='共同單位' then MailRB3.Checked:=true;
  end;
end;

procedure TBookTicket.Query2BeforeClose(DataSet: TDataSet);
begin
  Query2.BeforeCloseRecNo(DataSet);
end;

procedure TBookTicket.Query3AfterOpen(DataSet: TDataSet);
begin
  Query3.AfterOpenRecNo(DataSet);
  BC2.Enabled := true;
  BC3.Enabled := true;
  BC4.Enabled := true;
end;

procedure TBookTicket.Query3BeforeClose(DataSet: TDataSet);
begin
  Query3.BeforeCloseRecNo(DataSet);
end;

end.
