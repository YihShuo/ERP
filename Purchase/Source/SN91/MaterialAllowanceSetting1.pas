unit MaterialAllowanceSetting1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, ExtCtrls, DB, DBTables, GridsEh, DBGridEh, ComObj;

type
  TMaterialAllowanceSetting = class(TForm)
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
    QColorMain_Category: TStringField;
    QColorCLBH: TStringField;
    QColorAcceptance: TFloatField;
    QColorDescribe: TStringField;
    QColorEN_Describe: TStringField;
    QColorLOW_QTY: TFloatField;
    QColorHIGH_QTY: TFloatField;
    QColorYN: TStringField;
    QColorGSBH: TStringField;
    QColorUserID: TStringField;
    QColorUserDate: TDateTimeField;
    QColorUnit: TStringField;
    QColorZSDH: TStringField;
    QColorQTY: TFloatField;
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
  MaterialAllowanceSetting: TMaterialAllowanceSetting;
  NDate:TDate;

implementation

uses main1, funUnit, PurSample1, Pur_Choice1;

{$R *.dfm}

procedure TMaterialAllowanceSetting.FormClose(Sender: TObject; var Action: TCloseAction);
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

procedure TMaterialAllowanceSetting.FormDestroy(Sender: TObject);
begin
  MaterialAllowanceSetting := Nil;
end;

procedure TMaterialAllowanceSetting.BB1Click(Sender: TObject);
begin
  Panel1.Visible := true;
end;

procedure TMaterialAllowanceSetting.Button1Click(Sender: TObject);
begin
  with QColor do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT * FROM CLZL_Acceptance');
    SQL.Add('where 1=1 and GSBH = '''+main.Edit2.Text+'''');
    if ED_ColorID.Text <>'' then
      SQL.Add('and Main_Category like ''' +copy(ED_ColorID.Text,1,1)  + '%'' ');
    SQL.Add('ORDER BY CLBH');
    //funcObj.WriteErrorLog(sql.Text);
    Active := true;
  end;
end;

procedure TMaterialAllowanceSetting.BB2Click(Sender: TObject);
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
  //DBGrideh1.columns[2].ButtonStyle:=cbsEllipsis;
end;

procedure TMaterialAllowanceSetting.BB3Click(Sender: TObject);
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

procedure TMaterialAllowanceSetting.BB4Click(Sender: TObject);
begin
  with QColor do
  begin
    RequestLive := true;
    CachedUpdates := true;
    Edit;
  end;

  BB5.Enabled := true;
  BB6.Enabled := true;
  //DBGrideh1.columns[2].ButtonStyle:=cbsEllipsis;
end;

procedure TMaterialAllowanceSetting.BB5Click(Sender: TObject);
var i: Integer;
  y,m: string;
begin
  with query1 do          //取服務器的年月值
  begin
    active:=false;
    sql.Clear;
    sql.Add('select year(getdate()) as FY,month(getdate()) as FM,getdate() as NDate ');
    active:=true;
    y:=fieldbyname('FY').asstring;
    m:=fieldbyname('FM').asstring;
    NDate:=fieldbyname('Ndate').Value;
    active:=false;
  end;
  try
    QColor.First;
    for i := 1 to QColor.RecordCount do
    begin
      case QColor.UpdateStatus of
        usInserted:
        begin
          if (QColor.FieldByName('Acceptance').IsNull) or (QColor.FieldByName('Main_Category').IsNull) then
          begin
            QColor.Delete;
          end
          else begin
            QColor.Edit;
            QColor.FieldByName('USERID').Value := main.Edit1.Text;
            QColor.FieldByName('userdate').Value:=formatdatetime('yyyy/MM/dd',Ndate);
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
            QColor.FieldByName('USERID').Value := main.Edit1.Text;
            QColor.FieldByName('userdate').Value:=formatdatetime('yyyy/MM/dd',Ndate);
            QColor.FieldByName('GSBH').Value := main.Edit2.Text;
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
    //DBGrideh1.columns[2].ButtonStyle:=cbsnone;
  except
    MessageDlg('Failed to save the data!', mtWarning, [mbyes], 0);
  end;
end;

procedure TMaterialAllowanceSetting.BB6Click(Sender: TObject);
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
  //DBGrideh1.columns[2].ButtonStyle:=cbsnone;
end;

procedure TMaterialAllowanceSetting.B_ExitClick(Sender: TObject);
begin
  Close;
end;

procedure TMaterialAllowanceSetting.QColorAfterOpen(DataSet: TDataSet);
begin
  BB2.Enabled:=true;
  BB3.Enabled:=true;
  BB4.Enabled:=true;
end;

procedure TMaterialAllowanceSetting.DBGridEh1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if QColor.FieldByName('YN').AsString='0' then
    DBGridEh1.canvas.font.color:=clRed;
end;

procedure TMaterialAllowanceSetting.Button2Click(Sender: TObject);
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
