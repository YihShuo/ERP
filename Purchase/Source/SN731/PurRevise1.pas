unit PurRevise1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, ExtCtrls, DB, DBTables, GridsEh, DBGridEh, ComObj;

type
  TPurRevise = class(TForm)
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
    Query1: TQuery;
    QColorCHANGENO: TStringField;
    QColorCGNO: TStringField;
    QColorGSBH: TStringField;
    QColorCLBH: TStringField;
    QColorBefore_Qty: TFloatField;
    QColorAfter_Qty: TFloatField;
    QColorUSERDate: TDateTimeField;
    QColorUSERID: TStringField;
    QColorManagerID: TStringField;
    QColorManagerDate: TDateTimeField;
    QColorYN: TStringField;
    BBT8: TBitBtn;
    bbt6: TBitBtn;
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
    procedure DBGridEh1EditButtonClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BBT8Click(Sender: TObject);
    procedure bbt6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PurRevise: TPurRevise;
  NDate: TDate;

implementation

uses main1, funUnit, PurSample1, Pur_Choice1;

{$R *.dfm}

procedure TPurRevise.FormClose(Sender: TObject; var Action: TCloseAction);
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

procedure TPurRevise.FormDestroy(Sender: TObject);
begin
  PurRevise := Nil;
end;

procedure TPurRevise.BB1Click(Sender: TObject);
begin
  Panel1.Visible := true;
end;

procedure TPurRevise.Button1Click(Sender: TObject);
begin
  with QColor do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT * FROM CGZL_Revise');
    SQL.Add('where 1=1 ');
    if ED_ColorID.Text <>'' then
      SQL.Add('and CGNO like ''' +ED_ColorID.Text  + '%'' ');
    SQL.Add('ORDER BY Userdate desc');
    //funcObj.WriteErrorLog(sql.Text);
    Active := true;
  end;
end;

procedure TPurRevise.BB2Click(Sender: TObject);
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
  DBGridEh1.columns[0].ButtonStyle:=cbsEllipsis;
  DBGridEh1.columns[1].ButtonStyle:=cbsEllipsis;
end;

procedure TPurRevise.BB3Click(Sender: TObject);
begin
  if main.Edit1.Text <> QColor.FieldByName('USERID').AsString then begin
    showmessage('This is not yours!');
    exit;
  end;
  if QColor.FieldByName('ManagerID').Value <> null then begin
    showmessage('Manager Check Already!');
    exit;
  end;
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

procedure TPurRevise.BB4Click(Sender: TObject);
begin
  if main.Edit1.Text <> QColor.FieldByName('USERID').AsString then begin
    showmessage('This is not yours!');
    exit;
  end;
  if QColor.FieldByName('ManagerID').Value <> null then begin
    showmessage('Manager Check Already!');
    exit;
  end;
  with QColor do
  begin
    RequestLive := true;
    CachedUpdates := true;
    Edit;
  end;

  BB5.Enabled := true;
  BB6.Enabled := true;
end;

procedure TPurRevise.BB5Click(Sender: TObject);
var y,m,a:string;
    i:integer;
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
  if length(m)<2 then
    m:='0'+m;

  try
    QColor.First;
    for i := 1 to QColor.RecordCount do         
    begin
      case QColor.UpdateStatus of
        usInserted:
        begin
          if (QColor.FieldByName('CGNO').IsNull) or (QColor.FieldByName('CLBH').IsNull) or (QColor.FieldByName('Before_Qty').IsNull) or (QColor.FieldByName('After_Qty').IsNull) then
          begin
            QColor.Delete;
          end
          else begin
            with query1 do    //計算採購單流水號
            begin
              active:=false;
              sql.Clear;
              sql.Add('select CHANGENO from CGZL_Revise where CHANGENO like '+''''+y+m+'%'+'''');
              sql.add('order by CHANGENO');
              active:=true;
              if recordcount >0 then
              begin
                last;
                a:=fieldbyname('CHANGENO').AsString;
                a:=copy(a,7,5);
                a:=inttostr(strtoint(a)+1);
                while length(a)<5 do
                begin
                  a:='0'+a;
                end;
              end
              else
              begin
                a:='00001';
              end;
              a :=y+m+a;
              active:=false;
            end;
            QColor.Edit;
            QColor.fieldbyname('CHANGENO').Value:=a;
            QColor.FieldByName('GSBH').Value := main.Edit2.Text;
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
    Button1.Click;
    BB5.Enabled := false;
    BB6.Enabled := false;
    DBGridEh1.columns[0].ButtonStyle:=cbsNone;
    DBGridEh1.columns[1].ButtonStyle:=cbsNone;
  except
    MessageDlg('Failed to save the data!', mtWarning, [mbyes], 0);
  end;
end;

procedure TPurRevise.BB6Click(Sender: TObject);
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
  DBGridEh1.columns[0].ButtonStyle:=cbsNone;
  DBGridEh1.columns[1].ButtonStyle:=cbsNone;
end;

procedure TPurRevise.B_ExitClick(Sender: TObject);
begin
  Close;
end;

procedure TPurRevise.QColorAfterOpen(DataSet: TDataSet);
begin
  BB2.Enabled:=true;
  BB3.Enabled:=true;
  BB4.Enabled:=true;
end;

procedure TPurRevise.DBGridEh1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if QColor.FieldByName('YN').AsString='0' then
    DBGridEh1.canvas.font.color:=clRed;
end;

procedure TPurRevise.DBGridEh1EditButtonClick(Sender: TObject);
begin
  Pur_Choice:=TPur_Choice.Create(self);
  Pur_Choice.ShowModal();
  Pur_Choice.Free;
end;

procedure TPurRevise.FormCreate(Sender: TObject);
begin
  with Query1 do
  begin
    active:=false;
    sql.Clear;
    sql.Add('Select UserID from CGZL_Permission where USERID = '''+main.Edit1.Text+''' and GSBH = '''+main.Edit2.Text+'''');
    active := true;
    if recordcount > 0 then
      BBT8.Enabled := true;
    active:=false;
  end;
  QColor.Active := true;
end;

procedure TPurRevise.BBT8Click(Sender: TObject);
begin
  if QColor.Active = false then Exit;
  if QColor.FieldByName('ManagerID').AsString<>'' then
  begin
    Showmessage('Already Confirm ');
    Exit;
  end;
  with query1 do          //取服務器的年月值
  begin
    active:=false;
    sql.Clear;
    sql.Add('select year(getdate()) as FY,month(getdate()) as FM,getdate() as NDate ');
    active:=true;
    NDate:=fieldbyname('Ndate').Value;
    active:=false;
  end;
  try
    with QColor do
    begin
      requestlive:=true;
      cachedupdates:=true;
      edit;
      FieldByName('ManagerID').Value := main.Edit1.Text;
      FieldByName('ManagerDate').Value:=formatdatetime('yyyy/MM/dd',Ndate);
      UP_Color.apply(ukmodify);
    end;
    QColor.active:=false;
    QColor.cachedupdates:=false;
    QColor.requestlive:=false;
    QColor.active:=true;
    showmessage('Check OK!');
    with Query1 do          //Update 資料
    begin
      active:=false;
      sql.Clear;
      //202204  Kevin 修改，尚未正確，應該要更新CGZLSS 明細 在更新材料總數量 尚未時間更正
      sql.Add('Update CGZLS set QTY = '+QColor.fieldbyname('After_QTY').AsString+' ');
      sql.Add('where CGNO = '''+QColor.fieldbyname('CGNO').AsString+''' and CLBH = '''+QColor.fieldbyname('CLBH').AsString+''' ');
      ExecSQL;
      //
      active:=false;
      sql.Clear;
      sql.Add('Update CGZL set Printtime = 2,PrintTw = 2,PrintS = 2 ');
      sql.Add('where CGNO = '''+QColor.fieldbyname('CGNO').AsString+''' ');
      ExecSQL;
    end;
  except
    Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
  end;
end;

procedure TPurRevise.bbt6Click(Sender: TObject);
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
