unit WF_RegularLeaves1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, Vcl.Buttons,
  EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, Vcl.ComCtrls, Data.DB,
  Data.Win.ADODB, MyADOQuery, MyADOUpdateSQL;

type
  TWF_RegularLeaves = class(TForm)
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
    Panel1: TPanel;
    Splitter2: TSplitter;
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
    Query2: TMyADOQuery;
    DS2: TDataSource;
    U_Query2: TMyADOUpdateSQL;
    Panel2: TPanel;
    Panel6: TPanel;
    BB2: TBitBtn;
    BB4: TBitBtn;
    BB3: TBitBtn;
    BB5: TBitBtn;
    BB6: TBitBtn;
    DBGridEh2: TDBGridEh;
    Splitter3: TSplitter;
    Panel3: TPanel;
    Panel5: TPanel;
    CC1: TBitBtn;
    CC3: TBitBtn;
    CC2: TBitBtn;
    CC4: TBitBtn;
    CC5: TBitBtn;
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
    DS3: TDataSource;
    Query3: TMyADOQuery;
    Query3LNO: TStringField;
    Query3RLTimes: TIntegerField;
    Query3Type: TStringField;
    Query3Days: TIntegerField;
    Query3StartDate: TDateTimeField;
    Query3EndDate: TDateTimeField;
    DBGridEh5: TDBGridEh;
    TempQry: TADOQuery;
    U_Query3: TMyADOUpdateSQL;
    Query3YN: TStringField;
    Query3XH: TIntegerField;
    Query3LB_Name: TStringField;
    Query3LB: TSmallintField;
    Query3UserID: TStringField;
    Query3UserDate: TDateTimeField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Query2AfterOpen(DataSet: TDataSet);
    procedure BB3Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure CC1Click(Sender: TObject);
    procedure Query3AfterInsert(DataSet: TDataSet);
    procedure CC2Click(Sender: TObject);
    procedure CC3Click(Sender: TObject);
    procedure CC4Click(Sender: TObject);
    procedure CC5Click(Sender: TObject);
    procedure Query3AfterOpen(DataSet: TDataSet);
    procedure Query3CalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    LB: String;
  end;

var
  WF_RegularLeaves: TWF_RegularLeaves;

implementation
  uses main1, FunUnit;
{$R *.dfm}

procedure TWF_RegularLeaves.BB3Click(Sender: TObject);
begin
  // sua
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

procedure TWF_RegularLeaves.BB5Click(Sender: TObject);
var i: integer;
    No: integer;
    ExtendDays:String;
begin
  try
    //
    Query2.First;
    for i := 0 to Query2.RecordCount-1 do
    begin
      case Query2.UpdateStatus of
        usInserted:
        begin
          if (Query2.FieldByName('ID').Value = '') then
          begin
            Query2.Delete;
          end else
          begin
            Query2.Edit;
            Query2.FieldByName('UserID').AsString := main.UserID;
            U_Query2.Apply(ukInsert);
          end;
        end;

        usModified:
        begin
          //if (Query2.FieldByName('YN').AsString = '0') then
          //begin
          //  U_Query2.Apply(ukDelete);
          //end else
          //begin
            Query2.Edit;
            Query2.FieldByName('UserID').AsString := main.UserID;
            U_Query2.Apply(ukModify);
            //
            if Query2.FieldByName('ExtendDays').AsString='' then ExtendDays:='0' else ExtendDays:=Query2.FieldByName('ExtendDays').AsString;
            with TempQry do
            begin
              Active:=false;
              SQL.Clear;
              SQL.Add('UPDATE Directory_LeaveRuler SET SDate ='''+Query2.FieldByName('StartDate').AsString+''',EDate='''+Query2.FieldByName('EndDate').AsString+''',Days='+Query2.FieldByName('Days').AsString+',ExtendDays='+ExtendDays+' where LNO='''+Query2.FieldByName('LNO').AsString+''' ');
              //FuncObj.WriteErrorLog(sql.Text);
              ExecSQL();
            end;
            //
          //end;
        end;
      end;
      Query2.Next;
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

procedure TWF_RegularLeaves.BB6Click(Sender: TObject);
begin
  // huy
  with Query2 do
  begin
    Active := false;
    LockType := ltReadOnly;
    Active := true;
  end;
  BB5.Enabled := false;
  BB6.Enabled := false;
end;

procedure TWF_RegularLeaves.Button2Click(Sender: TObject);
begin
   with  Query1 do
   begin
     Active:=false;
     SQL.Clear;
      SQL.Add('Select Certificate.ID,Directory_Nationality.Name as Nation, Certificate.DutyDate, Certificate.Name, Certificate.EngName, Certificate.Gender,');
      SQL.Add('       Directory_Factory.Name+''-''+Directory_Department.Name as Department,');
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
      //國籍
      if RB12.Checked=true then  SQL.Add(' and Certificate.NID=''TW'' ');
      if RB13.Checked=true then  SQL.Add(' and Certificate.NID=''CN'' ');
      if RB14.Checked=true then  SQL.Add(' and Certificate.NID=''PH'' ');
      if RB16.Checked=true then  SQL.Add(' and Certificate.NID=''IN'' ');
      SQL.Add('order by Directory.Sequence');
      Active:=true;
   end;

   with Query2 do
   begin
     Active:=false;
     SQL.Clear;
     SQL.Add('Select WF_RegularLeave.*');
     SQL.Add('from [EEP].[LingYi].[dbo].[WF_RegularLeave] WF_RegularLeave');
     SQL.Add('where WF_RegularLeave.ID=:ID and WF_RegularLeave.FYear='''+FYearCombo.Text+''' ');
     SQL.Add('order by WF_RegularLeave.RLTimes ');
     Active:=true;
   end;
   //
   Query3.Active:=true;
end;

procedure TWF_RegularLeaves.CC1Click(Sender: TObject);
begin
  if (Query3.IsEmpty) and (main.UserID <> '00019') and (main.UserID <> '51295') then exit;
  LB := Query3.FieldByName('LB').AsString;
  with Query3 do
  begin
    Active := false;
    LockType := ltBatchOptimistic;
    Active := true;
    First;
    Insert;
  end;
  CC1.Enabled := false;
  CC2.Enabled := false;
  CC3.Enabled := false;
  CC4.Enabled := true;
  CC5.Enabled := true;
end;

procedure TWF_RegularLeaves.CC2Click(Sender: TObject);
begin
  if (Query3.IsEmpty) and (main.UserID <> '00019') and (main.UserID <> '51295') then exit;
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
  CC1.Enabled := false;
  CC2.Enabled := false;
  CC3.Enabled := false;
  CC4.Enabled := true;
  CC5.Enabled := true;
end;

procedure TWF_RegularLeaves.CC3Click(Sender: TObject);
begin
  if (Query3.IsEmpty) and (main.UserID <> '00019') and (main.UserID <> '51295') then exit;
  with Query3 do
  begin
    Active := false;
    LockType := ltBatchOptimistic;
    Active := true;
    Edit;
    FieldByName('YN').Value := '0';
  end;
  CC1.Enabled := false;
  CC2.Enabled := false;
  CC3.Enabled := false;
  CC4.Enabled := true;
  CC5.Enabled := true;
end;

procedure TWF_RegularLeaves.CC4Click(Sender: TObject);
var i: integer;
    No: integer;
    ExtendDays:String;
begin
  try
    //
    Query3.First;
    for i := 0 to Query3.RecordCount-1 do
    begin
      case Query3.UpdateStatus of
        usInserted:
        begin
          if (Query3.FieldByName('RLTimes').Value = null) then
          begin
            Query3.Delete;
          end else
          begin
            Query3.Edit;
            Query3.FieldByName('LNO').AsString := Query2.FieldByName('LNO').AsString;
            Query3.FieldByName('UserID').AsString := main.UserID;
            Query3.FieldByName('UserDate').AsString := formatdatetime('YYYY/MM/DD',now);
            Query3.FieldByName('LB').AsString := LB;
            Query3.FieldByName('YN').AsString := '1';
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
            Query3.Edit;
            Query3.FieldByName('UserID').AsString := main.UserID;
            U_Query3.Apply(ukModify);
          end;
        end;
      end;
      Query3.Next;
    end;

    Query3.Active := false;
    Query3.LockType := ltReadOnly;
    Query3.Active := true;
    CC1.Enabled := true;
    CC2.Enabled := true;
    CC3.Enabled := true;
    CC4.Enabled := false;
    CC5.Enabled := false;
    //Button2Click(Nil);
  except
    Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
  end;

end;

procedure TWF_RegularLeaves.CC5Click(Sender: TObject);
begin
  // huy
  with Query3 do
  begin
    Active := false;
    LockType := ltReadOnly;
    Active := true;
  end;
  CC1.Enabled := true;
  CC2.Enabled := true;
  CC3.Enabled := true;
  CC4.Enabled := false;
  CC5.Enabled := false;
end;

procedure TWF_RegularLeaves.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TWF_RegularLeaves.FormDestroy(Sender: TObject);
begin
  WF_RegularLeaves:=nil;
end;

procedure TWF_RegularLeaves.Query2AfterOpen(DataSet: TDataSet);
begin
  Query2.AfterOpenRecNo(DataSet);
  //BB2.Enabled := true;
  BB3.Enabled := true;
  //BB4.Enabled := true;
end;

procedure TWF_RegularLeaves.Query3AfterInsert(DataSet: TDataSet);
begin
  Query3.FieldByName('XH').Value := Query3.RecordCount + 1;
end;

procedure TWF_RegularLeaves.Query3AfterOpen(DataSet: TDataSet);
begin
  Query3.AfterOpenRecNo(DataSet);
  CC2.Enabled := true;
  CC1.Enabled := true;
  CC3.Enabled := true;
end;

procedure TWF_RegularLeaves.Query3CalcFields(DataSet: TDataSet);
begin
  if Query3.FieldByName('LB').AsString = '1' then
    Query3.FieldByName('LB_Name').AsString := '在地休假分日期'
  else
    Query3.FieldByName('LB_Name').AsString := '合併梯次休假';
end;

end.
