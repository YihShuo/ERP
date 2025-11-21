unit CBYSizeComparison1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, ExtCtrls, DB, DBTables, GridsEh, DBGridEh, ComObj;

type
  TCBYSizeComparison = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    ED_MatNo: TEdit;
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
    QSize: TQuery;
    QSizeUserID: TStringField;
    QSizeUserDate: TDateTimeField;
    UP_Size: TUpdateSQL;
    QSizeYN: TStringField;
    Button2: TButton;
    QSizeCLBH: TStringField;
    QSizeXXCC: TStringField;
    QSizeCLCC: TStringField;
    QSizeYWPM: TStringField;
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
    procedure QSizeAfterOpen(DataSet: TDataSet);
    procedure DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CBYSizeComparison: TCBYSizeComparison;

implementation

uses main1, funUnit;

{$R *.dfm}

procedure TCBYSizeComparison.FormClose(Sender: TObject; var Action: TCloseAction);
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

procedure TCBYSizeComparison.FormDestroy(Sender: TObject);
begin
  CBYSizeComparison := Nil;
end;

procedure TCBYSizeComparison.BB1Click(Sender: TObject);
begin
  Panel1.Visible := true;
end;

procedure TCBYSizeComparison.Button1Click(Sender: TObject);
begin
  with QSize do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT CBY_CLZLSIZE.CLBH, CLZL.YWPM, CBY_CLZLSIZE.XXCC, CBY_CLZLSIZE.CLCC, CBY_CLZLSIZE.UserID, CBY_CLZLSIZE.UserDate, CBY_CLZLSIZE.YN FROM CBY_CLZLSIZE');
    SQL.Add('LEFT JOIN CLZL ON CLZL.CLDH = CBY_CLZLSIZE.CLBH');
    SQL.Add('WHERE 1 = 1');
    if (ED_MatNo.Text <> '') then
      SQL.Add('AND CBY_CLZLSIZE.CLBH LIKE ''' + ED_MatNo.Text + '%''');
    SQL.Add('ORDER BY CBY_CLZLSIZE.CLBH, CBY_CLZLSIZE.XXCC');
    Active := true;
  end;
end;

procedure TCBYSizeComparison.BB2Click(Sender: TObject);
begin
  with QSize do
  begin
    RequestLive := true;
    CachedUpdates := true;
    First;
    Insert;
  end;

  BB5.Enabled := true;
  BB6.Enabled := true;
end;

procedure TCBYSizeComparison.BB3Click(Sender: TObject);
begin
  with QSize do
  begin
    RequestLive := true;
    CachedUpdates := true;
    Edit;
    FieldByName('YN').Value := 0;
  end;

  BB5.Enabled := true;
  BB6.Enabled := true;
end;

procedure TCBYSizeComparison.BB4Click(Sender: TObject);
begin
  with QSize do
  begin
    RequestLive := true;
    CachedUpdates := true;
    Edit;
  end;

  BB5.Enabled := true;
  BB6.Enabled := true;
end;

procedure TCBYSizeComparison.BB5Click(Sender: TObject);
var
  i: integer;
begin
  try
    QSize.First;
    for i := 1 to QSize.RecordCount do
    begin
      case QSize.UpdateStatus of
        usInserted:
        begin
          if (QSize.FieldByName('CLBH').IsNull) OR (QSize.FieldByName('XXCC').IsNull) OR (QSize.FieldByName('CLCC').IsNull) then
          begin
            QSize.Delete;
          end
          else begin
            QSize.Edit;
            QSize.FieldByName('UserID').Value := main.Edit1.Text;
            UP_Size.Apply(ukInsert);
          end;
        end;

        usModified:
        begin
          if (QSize.FieldByName('YN').Value = 0) then
          begin
            UP_Size.Apply(ukDelete);
          end
          else begin
            QSize.Edit;
            QSize.FieldByName('UserID').Value := main.Edit1.text;
            UP_Size.Apply(ukModify);
          end;
        end;
      end;

      QSize.Next;
    end;

    QSize.Active := false;
    QSize.CachedUpdates := false;
    QSize.RequestLive := false;
    QSize.Active := true;
    BB5.Enabled := false;
    BB6.Enabled := false;
  except
    MessageDlg('Failed to save the data!', mtWarning, [mbyes], 0);
  end;
end;

procedure TCBYSizeComparison.BB6Click(Sender: TObject);
begin
  with QSize do
  begin
    Active := false;
    RequestLive := false;
    CachedUpdates := false;
    Active := true;
  end;

  BB5.Enabled := false;
  BB6.Enabled := false;
end;

procedure TCBYSizeComparison.B_ExitClick(Sender: TObject);
begin
  Close;
end;

procedure TCBYSizeComparison.QSizeAfterOpen(DataSet: TDataSet);
begin
  BB2.Enabled := true;
  BB3.Enabled := true;
  BB4.Enabled := true;
end;

procedure TCBYSizeComparison.DBGridEh1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if (QSize.FieldByName('YN').AsString = '0') then
    DBGridEh1.Canvas.Font.Color := clRed;
end;

procedure TCBYSizeComparison.Button2Click(Sender: TObject);
var
  a: string;
  eclApp, WorkBook: olevariant;
  i, j: integer;
begin
  if (QSize.Active) then
  begin
    try
      eclApp:=CreateOleObject('Excel.Application');
      WorkBook:=CreateOleObject('Excel.Sheet');
    except
      Application.MessageBox('No Microsoft Excel', 'Microsoft Excel', MB_OK + MB_ICONWarning);
      Exit;
    end;

    try
      WorkBook := eclApp.workbooks.Add;
      for i:=0 to QSize.fieldcount-1 do
      begin
        eclApp.Cells[1, i+1] := QSize.Fields[i].FieldName;
      end;

      QSize.First;
      j := 2;
      while not QSize.Eof do
      begin
        for i:=0 to QSize.FieldCount-1 do
        begin
          eclApp.Cells[j, i+1] := QSize.Fields[i].Value;
        end;
        QSize.Next;
        Inc(j);
      end;
      eclapp.Columns.Autofit;
      eclApp.Visible := True;
      showmessage('Succeed');
    except on F:Exception do
      ShowMessage(F.Message);
    end;
  end;
end;

end.
