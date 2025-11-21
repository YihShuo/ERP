unit WF_TravelFee1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, Data.DB, Data.Win.ADODB,
  MyADOQuery, Vcl.Buttons, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.StdCtrls, MyADOUpdateSQL;

type
  TWF_TravelFee = class(TForm)
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
    Panel2: TPanel;
    Panel6: TPanel;
    BB2: TBitBtn;
    BB4: TBitBtn;
    BB3: TBitBtn;
    BB5: TBitBtn;
    BB6: TBitBtn;
    DBGridEh2: TDBGridEh;
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
    DS3: TDataSource;
    Query3: TMyADOQuery;
    U_Query3: TMyADOUpdateSQL;
    DBGridEh3: TDBGridEh;
    DS2: TDataSource;
    Query2: TMyADOQuery;
    Query3LNO: TStringField;
    Query3XH: TSmallintField;
    Query3StartDT: TDateTimeField;
    Query3EndDT: TDateTimeField;
    Query3GoBackDest: TWideStringField;
    Query3Currency: TStringField;
    Query3AirPlanFee: TFloatField;
    Query3VisaFee: TFloatField;
    Query3TransportFee: TFloatField;
    Query3HotelFee: TFloatField;
    Query3FoodFee: TFloatField;
    Query3OtherFee: TFloatField;
    Query3UserID: TStringField;
    Query3UserDate: TDateTimeField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Query2AfterOpen(DataSet: TDataSet);
    procedure Query3AfterOpen(DataSet: TDataSet);
    procedure BB3Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  WF_TravelFee: TWF_TravelFee;

implementation
  uses main1, FunUnit;
{$R *.dfm}

procedure TWF_TravelFee.BB3Click(Sender: TObject);
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
  BB5.Enabled := true;
  BB6.Enabled := true;
end;

procedure TWF_TravelFee.BB5Click(Sender: TObject);
var i: integer;
    No: integer;
begin
  try
    //
    Query3.First;
    for i := 0 to Query3.RecordCount-1 do
    begin
      case Query3.UpdateStatus of
        usInserted:
        begin
          if (Query3.FieldByName('ID').Value = '') then
          begin
            Query3.Delete;
          end else
          begin
            Query3.Edit;
            Query3.FieldByName('UserID').AsString := main.UserID;
            U_Query3.Apply(ukInsert);
          end;
        end;

        usModified:
        begin
          //if (Query2.FieldByName('YN').AsString = '0') then
          //begin
          //  U_Query2.Apply(ukDelete);
          //end else
          //begin
            Query3.Edit;
            Query3.FieldByName('UserID').AsString := main.UserID;
            U_Query3.Apply(ukModify);
          //end;
        end;
      end;
      Query3.Next;
    end;

    Query3.Active := false;
    Query3.LockType := ltReadOnly;
    Query3.Active := true;
    BB5.Enabled := false;
    BB6.Enabled := false;
    //Button2Click(Nil);
  except
    Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
  end;

end;

procedure TWF_TravelFee.BB6Click(Sender: TObject);
begin
  with Query3 do
  begin
    Active := false;
    LockType := ltReadOnly;
    Active := true;
  end;
  BB5.Enabled := false;
  BB6.Enabled := false;
end;

procedure TWF_TravelFee.Button2Click(Sender: TObject);
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
     //°êÄy
     if RB12.Checked=true then  SQL.Add(' and Certificate.NID=''TW'' ');
     if RB13.Checked=true then  SQL.Add(' and Certificate.NID=''CN'' ');
     if RB14.Checked=true then  SQL.Add(' and Certificate.NID=''PH'' ');
     if RB16.Checked=true then  SQL.Add(' and Certificate.NID=''IN'' ');
     SQL.Add('order by Directory.Sequence');
     Active:=true;
   end;
   //
   with Query2 do
   begin
      Active:=false;
      SQL.Clear;
      SQL.Add('Select WF_TravelFee.*');
      SQL.Add('from   [EEP].[LingYi].[dbo].[WF_TravelFee] WF_TravelFee');
      SQL.Add('where WF_TravelFee.ApplicantID=:ID ');
      SQL.Add('and WF_TravelFee.LNO like ''R'+FYearCombo.Text+'%'' ');
      //FuncObj.WriteErrorLog(sql.Text);
      Active:=true;
   end;
   //
end;

procedure TWF_TravelFee.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=CaFree;
end;

procedure TWF_TravelFee.FormDestroy(Sender: TObject);
begin
  WF_TravelFee:=nil;
end;

procedure TWF_TravelFee.Query2AfterOpen(DataSet: TDataSet);
begin
  Query2.AfterOpenRecNo(DataSet);
  Query3.Active:=true;
end;

procedure TWF_TravelFee.Query3AfterOpen(DataSet: TDataSet);
begin
  BB3.Enabled := true;
end;

end.
