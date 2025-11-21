unit Season_Set1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, ExtCtrls, DB, DBTables, GridsEh, DBGridEh, ComObj;

type
  TSeason_Set = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Panel2: TPanel;
    B_Exit: TBitBtn;
    BB6: TBitBtn;
    BB5: TBitBtn;
    BB4: TBitBtn;
    BB3: TBitBtn;
    BB2: TBitBtn;
    BB1: TBitBtn;
    DBGridEh1: TDBGridEh;
    DS1: TDataSource;
    Query1: TQuery;
    UpdateSQL1: TUpdateSQL;
    Button2: TButton;
    Qtemp: TQuery;
    Query1Season: TStringField;
    Query1EndDate: TDateTimeField;
    Query1UserID: TStringField;
    Query1UserDate: TDateTimeField;
    Query1YN: TStringField;
    Query1Stage: TStringField;
    Query1DevType: TStringField;
    procedure BB1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BB2Click(Sender: TObject);
    procedure BB3Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure B_ExitClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Query1AfterOpen(DataSet: TDataSet);
    procedure DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure Button2Click(Sender: TObject);
    procedure DBGridEh1EditButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Season_Set: TSeason_Set;

implementation

uses main1, funUnit, PurSample1, Pur_Choice1, PO_Permission1,
  FDstatus_Stage1, FDstatus_Season1;

{$R *.dfm}

procedure TSeason_Set.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if (BB5.Enabled) then
  begin
    MessageDlg('You have to save the data before exit.', mtWarning, [mbyes], 0);
    Action := caNone;
  end
  else begin
    Action := caFree;
  end;
end;

procedure TSeason_Set.FormDestroy(Sender: TObject);
begin
  Season_Set := Nil;
end;

procedure TSeason_Set.BB1Click(Sender: TObject);
begin
  Panel1.Visible := true;
end;

procedure TSeason_Set.Button1Click(Sender: TObject);
begin
  with Query1 do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT * FROM CGZL_Season');
    SQL.Add('where 1=1 ');
    if Edit1.Text <>'' then
      SQL.Add('and Season like ''' +Edit1.Text  + '%'' ');
    SQL.Add('ORDER BY Userid');
    //funcObj.WriteErrorLog(sql.Text);
    Active := true;
  end;
end;

procedure TSeason_Set.BB2Click(Sender: TObject);
begin
  with Query1 do
  begin
    RequestLive := true;
    CachedUpdates := true;
    First;
    Insert;
  end;

  BB5.Enabled := true;
  BB6.Enabled := true;
  DBGridEh1.Columns[0].ButtonStyle:=cbsEllipsis;
  DBGridEh1.Columns[1].ButtonStyle:=cbsEllipsis;
end;

procedure TSeason_Set.BB3Click(Sender: TObject);
begin
  with Query1 do
  begin
    RequestLive := true;
    CachedUpdates := true;
    Edit;
    FieldByName('YN').Value := 0;
  end;

  BB5.Enabled := true;
  BB6.Enabled := true;
end;

procedure TSeason_Set.BB4Click(Sender: TObject);
begin
  with Query1 do
  begin
    RequestLive := true;
    CachedUpdates := true;
    Edit;
  end;

  BB5.Enabled := true;
  BB6.Enabled := true;
  DBGridEh1.Columns[0].ButtonStyle:=cbsEllipsis;
  DBGridEh1.Columns[1].ButtonStyle:=cbsEllipsis;
end;

procedure TSeason_Set.BB5Click(Sender: TObject);
var i: Integer;
begin
  if (( Query1.FieldByName('Season').AsString='') or (Query1.FieldByName('Stage').AsString='' ) or (Query1.FieldByName('DevType').AsString='' )) then
  begin
    showmessage('Pls key in season / stage / DevType');
    abort;
  end;
  try
    Query1.First;
    for i := 1 to Query1.RecordCount do
    begin
      case Query1.UpdateStatus of
        usInserted:
        begin
          if (Query1.FieldByName('Season').IsNull) then
          begin
            Query1.Delete;
          end else
          begin
            Query1.Edit;
            Query1.FieldByName('UserID').Value:=main.Edit1.Text;
            Query1.FieldByName('YN').Value := 1;
            UpdateSQL1.Apply(ukInsert);
          end;
        end;

        usModified:
        begin
          if (Query1.FieldByName('YN').Value = 0) then
          begin
            UpdateSQL1.Apply(ukDelete);
          end else
          begin
            Query1.Edit;
            UpdateSQL1.Apply(ukModify);
          end;
        end;
      end;
      Query1.Next;

    end;

    Query1.Active := false;
    Query1.CachedUpdates := false;
    Query1.RequestLive := false;
    Query1.Active := true;
    BB5.Enabled := false;
    BB6.Enabled := false;
    DBGridEh1.Columns[0].ButtonStyle:=cbsNone;
    DBGridEh1.Columns[1].ButtonStyle:=cbsNone;
  except
    MessageDlg('Failed to save the data!', mtWarning, [mbyes], 0);
  end;
end;

procedure TSeason_Set.BB6Click(Sender: TObject);
begin
  with Query1 do
  begin
    Active := false;
    RequestLive := false;
    CachedUpdates := false;
    Active := true;
  end;

  BB5.Enabled := false;
  BB6.Enabled := false;
  DBGridEh1.Columns[0].ButtonStyle:=cbsNone;
  DBGridEh1.Columns[1].ButtonStyle:=cbsNone;
end;

procedure TSeason_Set.B_ExitClick(Sender: TObject);
begin
  Close;
end;

procedure TSeason_Set.Query1AfterOpen(DataSet: TDataSet);
begin
  BB2.Enabled:=true;
  BB4.Enabled:=true;
end;

procedure TSeason_Set.DBGridEh1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if Query1.FieldByName('YN').AsString='0' then
    DBGridEh1.canvas.font.color:=clRed;
end;

procedure TSeason_Set.Button2Click(Sender: TObject);
var   a:string;
      eclApp,WorkBook:olevariant;
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
      try
          WorkBook:=eclApp.workbooks.Add;
          for   i:=0   to   Query1.fieldcount-1   do
            begin
                eclApp.Cells(1,i+1):=Query1.fields[i].FieldName;
            end;

          Query1.First;
          j:=2;
          while   not   Query1.Eof   do
          begin
            for   i:=0   to  Query1.fieldcount-1  do
            begin
              eclApp.Cells(j,i+1):=Query1.Fields[i].Value;
            end;
            Query1.Next;
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

procedure TSeason_Set.DBGridEh1EditButtonClick(Sender: TObject);
begin
  if (DBGridEh1.Selectedfield.fieldname='Season')  then
  begin
    FDstatus_Season:=TFDstatus_Season.create(self);
    FDstatus_Season.show;
  end;
  if (DBGridEh1.Selectedfield.fieldname='Stage')  then
  begin
    FDstatus_Stage:=TFDstatus_Stage.create(self);
    FDstatus_Stage.show;
  end;
end;

end.
