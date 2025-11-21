unit LYN_USERGROUPS1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, Data.DB,
  Data.Win.ADODB, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, Vcl.ComCtrls,
  MyADOUpdateSQL, Vcl.Menus, MyADOQuery, ComObj, IniFiles;

type
  TLYN_USERGROUPS = class(TForm)
    ProgressBar1: TProgressBar;
    PC1: TPageControl;
    TabSheet1: TTabSheet;
    Panel2: TPanel;
    Button1: TButton;
    DBGridEh1: TDBGridEh;
    Panel1: TPanel;
    BB1: TBitBtn;
    BB2: TBitBtn;
    BB3: TBitBtn;
    BB4: TBitBtn;
    BB6: TBitBtn;
    BB5: TBitBtn;
    BB7: TBitBtn;
    DSUSERGROUPS: TDataSource;
    U_USERGROUPS: TMyADOUpdateSQL;
    USERGROUPSQry: TMyADOQuery;
    USERGROUPSQryID: TStringField;
    USERGROUPSQryCFMID: TStringField;
    USERGROUPSQryPosition: TWideStringField;
    USERGROUPSQryJoinDate: TDateTimeField;
    USERGROUPSQryCFMID1: TStringField;
    USERGROUPSQryNation: TStringField;
    USERGROUPSQryUserID: TStringField;
    USERGROUPSQryUserDate: TDateTimeField;
    USERGROUPSQryYN: TStringField;
    QUpdate: TMyADOQuery;
    Label1: TLabel;
    ED_ID1: TEdit;
    Label4: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    GBN: TGroupBox;
    RBALL: TRadioButton;
    RBTW: TRadioButton;
    RBVN: TRadioButton;
    Edit5: TEdit;
    Edit2: TEdit;
    Label8: TLabel;
    Label7: TLabel;
    Edit4: TEdit;
    Label6: TLabel;
    Label5: TLabel;
    Edit3: TEdit;
    USERGROUPSQryDepartment: TWideStringField;
    USERGROUPSQryFactory: TWideStringField;
    USERGROUPSQryUserName: TWideStringField;
    USERGROUPSQryUserNameTW: TWideStringField;
    USERGROUPSQryCFMNAME1: TWideStringField;
    USERGROUPSQryCFMNAME: TWideStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure BB1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BB7Click(Sender: TObject);
    procedure BB2Click(Sender: TObject);
    procedure BB3Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
  private
    SN62_TW,SN62_VN:String;
    Nation:String;
    { Private declarations }
    procedure ReadIni();
  public
    { Public declarations }
  end;

var
  LYN_USERGROUPS: TLYN_USERGROUPS;

implementation
  uses  DM1, main1, FunUnit;
{$R *.dfm}

procedure TLYN_USERGROUPS.ReadIni();
var MyIni :TInifile;
    AppDir:String;
    tmpListVN, tmpListTW:TStringlist;
    indexVN, indexTW:integer;
begin
  AppDir:=ExtractFilePath(Application.ExeName);
  if FileExists(AppDir+'\ComName.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ComName.ini');
      SN62_TW:=MyIni.ReadString('ProductionBonus','SN62_TW','1');
      SN62_VN:=MyIni.ReadString('ProductionBonus','SN62_VN','1');
      //
    finally
      MyIni.Free;
    end;
  end;
  if  (SN62_TW <> '') or (SN62_VN <> '') then
  begin
    tmpListVN:=FuncObj.SplitString(SN62_VN,',');
    indexVN:=tmpListVN.IndexOf(main.UserID);
    tmpListTW:=FuncObj.SplitString(SN62_TW,',');
    indexTW:=tmpListTW.IndexOf(main.UserID);
    if indexVN>=0 then
    begin
      Nation:='VN';
      RBVN.Checked:=true;
      GBN.Enabled:=false;
      BB1.Enabled:=true;
    end else if indexTW>=0 then
    begin
      Nation:='TW';
      RBTW.Checked:=true;
      GBN.Enabled:=false;
      BB1.Enabled:=true;
    end else begin
      Nation:='';
      GBN.Enabled:=true;
      //BB1.Enabled:=false;
    end;
    tmpListVN.Free;
    tmpListTW.Free;
  end else
  begin
    Nation:='';
    BB1.Enabled:=false;
  end;
end;

procedure TLYN_USERGROUPS.BB1Click(Sender: TObject);
begin
  if Panel2.Visible = false then
    Panel2.Visible := true
  else Panel2.Visible := false;
end;

procedure TLYN_USERGROUPS.BB2Click(Sender: TObject);
begin
  with USERGROUPSQry do
  begin
    Active := false;
    LockType := ltBatchOptimistic;
    Active := true;
    First;
    Insert;
  end;
  if Nation='VN' then
  begin
    USERGROUPSQry.FieldByName('Nation').Value:=Nation;
    DBGridEh1.Columns[8].ReadOnly:=true;
  end else begin
    DBGridEh1.Columns[8].ReadOnly:=false;
  end;
  BB5.Enabled := true;
  BB6.Enabled := true;
end;

procedure TLYN_USERGROUPS.BB3Click(Sender: TObject);
begin
  with USERGROUPSQry do
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

procedure TLYN_USERGROUPS.BB4Click(Sender: TObject);
begin
  with USERGROUPSQry do
  begin
    Active := false;
    LockType := ltBatchOptimistic;
    Active := true;
    Edit;
    FieldByName('YN').Value := '0';
  end;
  BB5.Enabled := true;
  BB6.Enabled := true;
end;

procedure TLYN_USERGROUPS.BB5Click(Sender: TObject);
var i: integer;
begin
  USERGROUPSQry.First;
  for i := 0 to USERGROUPSQry.RecordCount-1 do
  begin
    case USERGROUPSQry.UpdateStatus of
      usInserted:
      begin
        if (USERGROUPSQry.FieldByName('UserID').Value = '') then
        begin
          USERGROUPSQry.Delete;
        end
        else begin
          USERGROUPSQry.Edit;
          USERGROUPSQry.FieldByName('ID').AsString := main.UserID;
          U_USERGROUPS.Apply(ukInsert);
        end;
      end;

      usModified:
      begin
        if (USERGROUPSQry.FieldByName('YN').AsString = '0') then
        begin
        with QUpdate do
        begin
          Active:=false;
          SQL.Clear;
          SQL.Add(' Update  LYN_USERGROUPS  Set ');
          SQL.Add(' YN='''+USERGROUPSQry.FieldByName('YN').AsString+''' ');
          SQL.Add(' where UserID='''+USERGROUPSQry.FieldByName('UserID').AsString+''' ');
          //funcObj.WriteErrorLog(sql.Text);
          ExecSQL();
        end;
          //U_USERGROUPS.Apply(ukDelete);
        end
        else begin
          //到職日 入廠日
          USERGROUPSQry.Edit;
          USERGROUPSQry.FieldByName('ID').AsString := main.UserID;
          U_USERGROUPS.Apply(ukModify);
        end;
      end;
    end;
    USERGROUPSQry.Next;
  end;

  USERGROUPSQry.Active:=false;
  USERGROUPSQry.LockType:=ltReadOnly;
  USERGROUPSQry.Active:=true;
  BB5.Enabled := false;
  BB6.Enabled := false;
end;

procedure TLYN_USERGROUPS.BB6Click(Sender: TObject);
begin
  with USERGROUPSQry do
  begin
    Active := false;
    LockType := ltReadOnly;
    Active := true;
  end;
  BB5.Enabled := false;
  BB6.Enabled := false;
end;

procedure TLYN_USERGROUPS.BB7Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin
  if  USERGROUPSQry.active  then
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
        for   i:=0   to   USERGROUPSQry.fieldcount-1   do
        begin
          eclApp.Cells(1,i+1):=USERGROUPSQry.fields[i].FieldName;
        end;
        USERGROUPSQry.First;
        j:=2;
        while   not   USERGROUPSQry.Eof   do
        begin
          for   i:=0   to  USERGROUPSQry.fieldcount-1  do
          begin
            eclApp.Cells(j,i+1):=USERGROUPSQry.Fields[i].AsString;
          end;
          USERGROUPSQry.Next;
          inc(j);
        end;
        eclapp.columns.autofit;
        showmessage('Succeed');
        eclApp.Visible:=True;
      except
        on  F:Exception   do
          showmessage(F.Message);
      end;
   end;
end;

procedure TLYN_USERGROUPS.Button1Click(Sender: TObject);
begin
  with USERGROUPSQry do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT * FROM LYN_USERGROUPS');
    SQL.Add('where YN=''1'' ');
    if ED_ID1.Text<>'' then
      SQL.Add(' and UserID like '''+ED_ID1.Text+'%'' ');
    if Edit1.Text<>'' then
      SQL.Add(' and UserNameTW like '''+Edit1.Text+'%'' ');
    if Edit2.Text<>'' then
      SQL.Add(' and UserName like '''+Edit2.Text+'%'' ');
    if Edit3.Text<>'' then
      SQL.Add(' and Factory like '''+Edit3.Text+'%'' ');
    if Edit4.Text<>'' then
      SQL.Add(' and Department like '''+Edit4.Text+'%'' ');
    if Edit5.Text<>'' then
      SQL.Add(' and Position like '''+Edit5.Text+'%'' ');
    //國籍
    if RBTW.Checked=true then  SQL.Add(' and Nation<>''VN'' ')
    else if RBVN.Checked=true then  SQL.Add(' and Nation=''VN'' ')
    else if RBALL.Checked=true then  SQL.Add(' and 1=1 ')
    else SQL.Add(' and 1=2 ');
    SQL.Add('ORDER BY UserID ');
    //FuncObj.WriteErrorLog(SQL.Text);
    Active := true;
  end;
  if USERGROUPSQry.RecordCount >0 then
  begin
    BB2.Enabled := true;
    BB3.Enabled := true;
    BB4.Enabled := true;
  end;
end;

procedure TLYN_USERGROUPS.DBGridEh1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if (USERGROUPSQry.FieldByName('YN').AsString = '0') then
    DBGridEh1.Canvas.Font.Color := clRed;
end;

procedure TLYN_USERGROUPS.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TLYN_USERGROUPS.FormCreate(Sender: TObject);
begin
  Nation:='';
  ReadIni();
end;

procedure TLYN_USERGROUPS.FormDestroy(Sender: TObject);
begin
  LYN_USERGROUPS := Nil;
end;

end.
