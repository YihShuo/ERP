unit CBY_MaterialSizeMark1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, ExtCtrls, DB, DBTables, GridsEh, DBGridEh, ComObj;

type
  TCBY_MaterialSizeMark = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    ED_ColorID: TEdit;
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
    DataSource1: TDataSource;
    QColor: TQuery;
    QColorUserID: TStringField;
    QColorUserDate: TDateTimeField;
    UP_Color: TUpdateSQL;
    QColorYN: TStringField;
    Button2: TButton;
    QColorCLBH: TStringField;
    Query1: TQuery;
    QColorLYCC: TStringField;
    QColorywpm: TStringField;
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
    procedure QColorAfterOpen(DataSet: TDataSet);
    procedure DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CBY_MaterialSizeMark: TCBY_MaterialSizeMark;

implementation

uses main1, funUnit;

{$R *.dfm}

procedure TCBY_MaterialSizeMark.FormClose(Sender: TObject; var Action: TCloseAction);
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

procedure TCBY_MaterialSizeMark.FormDestroy(Sender: TObject);
begin
  CBY_MaterialSizeMark := Nil;
end;

procedure TCBY_MaterialSizeMark.BB1Click(Sender: TObject);
begin
  Panel1.Visible := true;
end;

procedure TCBY_MaterialSizeMark.Button1Click(Sender: TObject);
begin
  with QColor do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT CBY_MaterialSizeMark.*,clzl.ywpm FROM CBY_MaterialSizeMark');
    SQL.Add('left join CLZL on CBY_MaterialSizeMark.CLBH = CLZL.cldh');
    SQL.Add('where 1=1 ');
    if ED_ColorID.Text <>'' then
      SQL.Add('and CBY_MaterialSizeMark.CLBH like ''' +ED_ColorID.Text  + '%'' ');
    SQL.Add('ORDER BY CBY_MaterialSizeMark.CLBH');
    //funcObj.WriteErrorLog(sql.Text);
    Active := true;
  end;
end;

procedure TCBY_MaterialSizeMark.BB2Click(Sender: TObject);
begin
  with QColor do
  begin
    RequestLive := true;
    CachedUpdates := true;
    First;
    Insert;
  end;

  BB5.Enabled := true;
  BB6.Enabled := true;
//  DBGridEh1.columns[0].ButtonStyle:=cbsEllipsis;
  DBGridEh1.columns[1].ButtonStyle:=cbsDropDown;
end;

procedure TCBY_MaterialSizeMark.BB3Click(Sender: TObject);
begin
  with QColor do
  begin
    RequestLive := true;
    CachedUpdates := true;
    Edit;
    FieldByName('YN').Value := 0;
  end;

  BB5.Enabled := true;
  BB6.Enabled := true;
end;

procedure TCBY_MaterialSizeMark.BB4Click(Sender: TObject);
begin
  with QColor do
  begin
    RequestLive := true;
    CachedUpdates := true;
    Edit;
  end;

  BB5.Enabled := true;
  BB6.Enabled := true;
end;

procedure TCBY_MaterialSizeMark.BB5Click(Sender: TObject);
var i: Integer;
begin
  try
    QColor.First;
    for i := 1 to QColor.RecordCount do         
    begin
      case QColor.UpdateStatus of
        usInserted:
        begin
          if (QColor.FieldByName('CLBH').IsNull) or (QColor.FieldByName('LYCC').IsNull)  then
          begin
            QColor.Delete;
          end
          else begin
            QColor.Edit;
            QColor.FieldByName('USERID').Value := main.Edit1.Text;
            QColor.FieldByName('USERDate').Value := Date();
            QColor.FieldByName('YN').Value := 1;
            UP_Color.Apply(ukInsert);
            QColor.Next;
          end;
        end;

        usModified:
        begin
          if (QColor.FieldByName('YN').Value = 0) then
          begin
            UP_Color.Apply(ukDelete);
            QColor.Next;
          end
          else begin
            QColor.Edit;
            QColor.FieldByName('UserID').Value := main.Edit1.text;
            QColor.FieldByName('USERDate').Value := Date();
            UP_Color.Apply(ukModify);
            QColor.Next;
          end;
        end;
      end;

    end;

    QColor.Active := false;
    QColor.CachedUpdates := false;
    QColor.RequestLive := false;
    QColor.Active := true;
    BB5.Enabled := false;
    BB6.Enabled := false;
//    DBGridEh1.columns[0].ButtonStyle:=cbsNone;
    DBGridEh1.columns[1].ButtonStyle:=cbsNone;
  except
    MessageDlg('Failed to save the data!', mtWarning, [mbyes], 0);
  end;
end;

procedure TCBY_MaterialSizeMark.BB6Click(Sender: TObject);
begin
  with QColor do
  begin
    Active := false;
    RequestLive := false;
    CachedUpdates := false;
    Active := true;
  end;

  BB5.Enabled := false;
  BB6.Enabled := false;
//  DBGridEh1.columns[0].ButtonStyle:=cbsNone;
  DBGridEh1.columns[1].ButtonStyle:=cbsNone;
end;

procedure TCBY_MaterialSizeMark.B_ExitClick(Sender: TObject);
begin
  Close;
end;

procedure TCBY_MaterialSizeMark.QColorAfterOpen(DataSet: TDataSet);
begin
  BB2.Enabled:=true;
  BB3.Enabled:=true;
  BB4.Enabled:=true;
end;

procedure TCBY_MaterialSizeMark.DBGridEh1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if QColor.FieldByName('YN').AsString='0' then
    DBGridEh1.canvas.font.color:=clRed;
end;

procedure TCBY_MaterialSizeMark.Button2Click(Sender: TObject);
var   a:string;
      eclApp,WorkBook:olevariant;
      i,j:integer;
begin
    if  QColor.active  then
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
          for   i:=0   to   QColor.fieldcount-1   do
            begin
                eclApp.Cells(1,i+1):=QColor.fields[i].FieldName;
            end;

          QColor.First;
          j:=2;
          while   not   QColor.Eof   do
          begin
            for   i:=0   to  QColor.fieldcount-1  do
            begin
              eclApp.Cells(j,i+1):=QColor.Fields[i].Value;
            end;
            QColor.Next;
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
