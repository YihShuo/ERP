unit PO_Permission1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, ExtCtrls, DB, DBTables, GridsEh, DBGridEh, ComObj;

type
  TPO_Permission = class(TForm)
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
    UP_Color: TUpdateSQL;
    Button2: TButton;
    Query1: TQuery;
    QColorUSERID: TStringField;
    QColorGSBH: TStringField;
    QColorYN: TStringField;
    QColorPosition: TStringField;
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
    procedure DBGridEh1EditButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PO_Permission: TPO_Permission;

implementation

uses main1, funUnit, PurSample1, Pur_Choice1;

{$R *.dfm}

procedure TPO_Permission.FormClose(Sender: TObject; var Action: TCloseAction);
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

procedure TPO_Permission.FormDestroy(Sender: TObject);
begin
  PO_Permission := Nil;
end;

procedure TPO_Permission.BB1Click(Sender: TObject);
begin
  Panel1.Visible := true;
end;

procedure TPO_Permission.Button1Click(Sender: TObject);
begin
  with QColor do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT * FROM CGZL_Permission');
    SQL.Add('where 1=1 ');
    SQL.Add(' and GSBH='''+main.Edit2.Text+''' ');
    if ED_ColorID.Text <>'' then
      SQL.Add('and Userid like ''' +ED_ColorID.Text  + '%'' ');
    SQL.Add('ORDER BY Userid');
    //funcObj.WriteErrorLog(sql.Text);
    Active := true;
  end;
end;

procedure TPO_Permission.BB2Click(Sender: TObject);
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
end;

procedure TPO_Permission.BB3Click(Sender: TObject);
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

procedure TPO_Permission.BB4Click(Sender: TObject);
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

procedure TPO_Permission.BB5Click(Sender: TObject);
var i: Integer;
begin
  try
    QColor.First;
    for i := 1 to QColor.RecordCount do         
    begin
      case QColor.UpdateStatus of
        usInserted:
        begin
          if (QColor.FieldByName('USERID').IsNull) then
          begin
            QColor.Delete;
          end
          else begin
            QColor.Edit;
            QColor.FieldByName('GSBH').Value := main.Edit2.Text;
            QColor.FieldByName('YN').Value := 1;
            UP_Color.Apply(ukInsert);
          end;
        end;

        usModified:
        begin
          if (QColor.FieldByName('YN').Value = 0) then
          begin
            UP_Color.Apply(ukDelete);
          end
          else begin
            QColor.Edit;
            UP_Color.Apply(ukModify);
          end;
        end;
      end;
      QColor.Next;

    end;

    QColor.Active := false;
    QColor.CachedUpdates := false;
    QColor.RequestLive := false;
    QColor.Active := true;
    BB5.Enabled := false;
    BB6.Enabled := false;
  except
    MessageDlg('Failed to save the data!', mtWarning, [mbyes], 0);
  end;
end;

procedure TPO_Permission.BB6Click(Sender: TObject);
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
end;

procedure TPO_Permission.B_ExitClick(Sender: TObject);
begin
  Close;
end;

procedure TPO_Permission.QColorAfterOpen(DataSet: TDataSet);
begin
  BB2.Enabled:=true;
  BB3.Enabled:=true;
  BB4.Enabled:=true;
end;

procedure TPO_Permission.DBGridEh1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if QColor.FieldByName('YN').AsString='0' then
    DBGridEh1.canvas.font.color:=clRed;
end;

procedure TPO_Permission.Button2Click(Sender: TObject);
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

procedure TPO_Permission.DBGridEh1EditButtonClick(Sender: TObject);
begin
  Pur_Choice:=TPur_Choice.Create(self);
  Pur_Choice.ShowModal();
  Pur_Choice.Free;
end;

end.
