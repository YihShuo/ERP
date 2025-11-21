unit Failed_Cartons_Input1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GridsEh, DBGridEh, StdCtrls, ExtCtrls, DB, DBTables, Menus, fununit,comobj,
  Grids, DBGrids;

type
  TFailed_Cartons_Input = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label4: TLabel;
    Button1: TButton;
    edtLine: TEdit;
    ID: TEdit;
    Button3: TButton;
    DS1: TDataSource;
    PopupMenu1: TPopupMenu;
    Modify1: TMenuItem;
    Save1: TMenuItem;
    Cancel1: TMenuItem;
    excel1: TMenuItem;
    UpdateSQL1: TUpdateSQL;
    WOPR_MA_IN: TQuery;
    Delete1: TMenuItem;
    Query1: TQuery;
    btnRY: TButton;
    Button2: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    WOPR_MA_INID: TStringField;
    WOPR_MA_INSCBH: TStringField;
    WOPR_MA_INDepNo: TStringField;
    WOPR_MA_INGXLB: TStringField;
    Query2: TQuery;
    Query1ID: TStringField;
    Query1MA_ID: TStringField;
    Query1DepNo: TStringField;
    Query1GXLB: TStringField;
    Query1SCBH: TStringField;
    Query1Failed_cartons: TStringField;
    Query1UserID: TStringField;
    Query1UserDate: TDateTimeField;
    Query1YN: TStringField;
    Query1Depname: TStringField;
    DBGrid1: TDBGrid;
    procedure Button1Click(Sender: TObject);
    procedure Modify1Click(Sender: TObject);
    procedure Save1Click(Sender: TObject);
    procedure Insert1Click(Sender: TObject);
    procedure Delete1Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Cancel1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure edtLineClick(Sender: TObject);
    procedure btnRYClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
  private
    HIorDI:String;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Failed_Cartons_Input: TFailed_Cartons_Input;

implementation

uses main1, Failed_Cartons_Input_Depname1, Failed_Cartons_Input_ID1;

{$R *.dfm}

procedure TFailed_Cartons_Input.Button1Click(Sender: TObject);
var t:integer;
begin
  with WOPR_MA_IN do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Select WOPR_MA.ID, WOPR_MA.SCBH,WOPR_MA.DepNo,WOPR_MA.GXLB');
    SQL.Add('From WOPR_MA');
    SQL.Add('left join BDepartment on BDepartment.ID=WOPR_MA.DepNo');
    SQL.Add('where WOPR_MA.GSBH = '''+ main.Edit2.text +''' ');
    SQL.Add('  and BDepartment.DepName = '''+edtLine.Text+''' ');
    SQL.Add('  and WOPR_MA.ID = '''+ID.Text+''' ');
    SQL.Add('  and WOPR_MA.PrdQty<>0 ');
    SQL.Add('  and WOPR_MA.Result=''F''');
    SQL.Add('order by WOPR_MA.ID');
    //funcObj.WriteErrorLog(sql.Text);
    Active:=true;
  end;

  HIorDI:=WOPR_MA_IN.FieldByName('GXLB').AsString;
  with Query1 do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Select WOPR_MA_IN.*,BDepartment.Depname');
    SQL.Add('From WOPR_MA_IN');
    SQL.Add('left join BDepartment on BDepartment.ID=WOPR_MA_IN.DepNo');
    SQL.Add('where 1=1 and WOPR_MA_IN.GXLB='''+HIorDI+'''');
    SQL.Add('  and BDepartment.DepName = '''+edtLine.Text+''' ');
    SQL.Add('  and WOPR_MA_IN.MA_ID = '''+ID.Text+''' ');
    SQL.Add('order by WOPR_MA_IN.MA_ID');
    //funcObj.WriteErrorLog(sql.Text);
    Active:=true;
  end;
  //WOPR_MA_IN.Active:=true;
end;

procedure TFailed_Cartons_Input.Modify1Click(Sender: TObject);
begin
  with Query1 do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
end;

procedure TFailed_Cartons_Input.Save1Click(Sender: TObject);
var
  i: integer;
begin

  try
    Query1.First;
    for i := 1 to Query1.RecordCount do
    begin
      case Query1.UpdateStatus of
        usinserted:
        begin
          if (Query1.FieldByName('Failed_cartons').AsString <> '')  then
          begin
            Query1.Edit;
            Query1.FieldByName('ID').Value := WOPR_MA_IN.fieldbyname('ID').AsString;
            Query1.FieldByName('DepNo').Value := WOPR_MA_IN.fieldbyname('DepNo').AsString;
            Query1.FieldByName('SCBH').Value := WOPR_MA_IN.fieldbyname('SCBH').AsString;
            Query1.FieldByName('GXLB').Value := HIorDI;
            Query1.FieldByName('UserID').Value := main.Edit1.Text;
            Query1.FieldByName('USERDATE').Value := formatdatetime('yyyy/MM/dd', Now);
            Query1.FieldByName('YN').Value := '1';
            UpdateSQL1.Apply(ukInsert);
          end
          else begin
            Query1.Delete;
          end;
        end;
        usModified:
        begin
            if (Query1.FieldByName('Failed_cartons').AsString <> '')  then
            begin
              Query1.Edit;
              Query1.FieldByName('UserID').Value := main.Edit1.Text;
              Query1.FieldByName('USERDATE').Value := formatdatetime('yyyy/MM/dd', Now);
              UpdateSQL1.Apply(ukModify);
            end
            else begin
              UpdateSQL1.Apply(ukDelete);
            end;
        end;
      end;

      Query1.Next;
    end;

    Query1.Active := false;
    Query1.CachedUpdates := false;
    Query1.RequestLive := false;
    Query1.Active := true;
    //BS5.Enabled := false;
    //BS6.Enabled := false;
    //DBGridEh1.Columns[7].ButtonStyle := cbsNone;
    ShowMessage('OK');
  except
    MessageDlg('Failed to save the data!', mtWarning, [mbyes], 0);
  end;

end;

procedure TFailed_Cartons_Input.Insert1Click(Sender: TObject);
begin
  with Query1 do
  begin
    requestlive := true;
    cachedupdates := true;
    insert;
  end;
end;

procedure TFailed_Cartons_Input.Delete1Click(Sender: TObject);
begin
  with Query1 do
  begin
    requestlive:=true;
    cachedupdates:=true;
    insert;
  end;
end;

procedure TFailed_Cartons_Input.FormDestroy(Sender: TObject);
begin
  Failed_Cartons_Input:=nil;
end;

procedure TFailed_Cartons_Input.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=CaFree;
end;

procedure TFailed_Cartons_Input.Cancel1Click(Sender: TObject);
begin
  with Query1 do
  begin
    requestlive := false;
    cachedupdates := false;
    active := false;
    active := true;
  end;
end;

procedure TFailed_Cartons_Input.Button3Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin

  if Query1.Active then
  begin
    if Query1.recordcount=0 then
      begin
        showmessage('No record.');
        abort;
      end;
  end
  else
    begin
      showmessage('No record.');
      abort;
    end;

  try
    eclApp:=CreateOleObject('Excel.Application');
    WorkBook:=CreateOleObject('Excel.Sheet');
  except
    Application.MessageBox('NO Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
    Exit;
  end;
  try
    WorkBook:=eclApp.workbooks.Add;
    eclapp.Cells.NumberFormatLocal:='@';
    eclApp.Cells(1,1):='NO';

    With Query2 do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('select top 1 MA_ID,DepNo,GXLB,SCBH,  ');
      SQL.Add('CAST(substring (( select '','' + Failed_cartons    ');
      SQL.Add('                  from WOPR_MA_IN where WOPR_MA_IN.MA_ID=cs.MA_ID     ');
      SQL.Add('                  for XML Path ('''')),2,8000) as TEXT  ) as Failed_cartons,UserID,UserDate  ');
      SQL.Add('from WOPR_MA_IN cs   ');
      SQL.Add('where 1=1 and cs.MA_ID= '''+ID.Text+''' ');
      //funcobj.WriteErrorLog(sql.Text);
      Active:=true;
      //ExecSQL;
    end;
    for   i:=1   to   Query2.fieldcount-1   do
    begin
        eclApp.Cells(1,i+1):=Query2.fields[i-1].FieldName;
    end;
    Query2.First;
    j:=2;
    while   not  Query2.Eof   do
    begin
        eclApp.Cells(j,1):=j-1;
        for   i:=1   to   Query2.fieldcount-1   do
        begin
            eclApp.Cells(j,i+1):=Query2.Fields[i-1].Value;
            eclApp.Cells.Cells.item[j,i+1].font.size:='8';
        end;
        Query2.Next;
        inc(j);
    end;
    eclapp.columns.autofit;
    showmessage('Succeed.');
    eclApp.Visible:=True;
    Query2.Active:=true;
  except
    on   F:Exception   do
      showmessage(F.Message);
  end;

end;

procedure TFailed_Cartons_Input.edtLineClick(Sender: TObject);
begin
  Failed_Cartons_Input_Depname:=TFailed_Cartons_Input_Depname.Create(self);
  Failed_Cartons_Input_Depname.Show;
end;

procedure TFailed_Cartons_Input.btnRYClick(Sender: TObject);
begin
  Failed_Cartons_Input_ID:=TFailed_Cartons_Input_ID.Create(self);
  Failed_Cartons_Input_ID.Show;
end;

procedure TFailed_Cartons_Input.Button2Click(Sender: TObject);
begin
  with Query1 do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
end;

procedure TFailed_Cartons_Input.Button4Click(Sender: TObject);
var
  i: integer;
  ID,GXLB:String;
begin
  try
    Query1.First;
    for i := 1 to Query1.RecordCount do
    begin
      case Query1.UpdateStatus of
      usinserted:
        begin
            with Query2 do
            begin
               with Query2 do
               begin
                 active:=false;
                 sql.Clear;
                 sql.Add('select ID from WOPR_MA_IN where ID like '+''''+HIorDI+'%'+'''');
                 sql.add('order by ID');
                 active:=true;
                 if recordcount >0 then
                 begin
                   last;
                   ID:=fieldbyname('ID').AsString;
                   ID:=copy(ID,3,8);
                   ID:=inttostr(strtoint(ID)+1);
                   while length(ID)<8 do
                   begin
                     ID:='0'+ID;
                   end;
                 end else
                 begin
                   ID:='00000001';
                 end;
                 ID:=HIorDI+ID;
                 active:=false;
                 sql.Clear;
               end;
            end;
            Query1.Edit;
            Query1.FieldByName('ID').Value :=ID;
            Query1.FieldByName('MA_ID').Value := WOPR_MA_IN.fieldbyname('ID').AsString;
            Query1.FieldByName('DepNo').Value := WOPR_MA_IN.fieldbyname('DepNo').AsString;
            Query1.FieldByName('SCBH').Value := WOPR_MA_IN.fieldbyname('SCBH').AsString;
            Query1.FieldByName('GXLB').Value := WOPR_MA_IN.fieldbyname('GXLB').AsString;
            Query1.FieldByName('UserID').Value := main.Edit1.Text;
            Query1.FieldByName('USERDATE').Value := formatdatetime('yyyy/MM/dd', Now);
            Query1.FieldByName('YN').Value := '1';
            UpdateSQL1.Apply(ukInsert);
          // end;

        end;
      usModified:
        begin
            if  Query1.FieldByName('userID').Value=main.Edit1.Text then
            begin
              Query1.Edit;
              Query1.FieldByName('UserID').Value := main.Edit1.Text;
              Query1.FieldByName('USERDATE').Value := formatdatetime('yyyy/MM/dd', Now);
              UpdateSQL1.Apply(ukModify);
            end else
            begin
              showmessage('It is not yours, can not modify.');
            end;
        end;
      end;

      Query1.Next;
    end;

    Query1.Active := false;
    Query1.CachedUpdates := false;
    Query1.RequestLive := false;
    Query1.Active := true;
    ShowMessage('OK');
  except
    MessageDlg('Failed to save the data!', mtWarning, [mbyes], 0);
  end;

end;

procedure TFailed_Cartons_Input.Button5Click(Sender: TObject);
begin
  with Query1 do
  begin
    requestlive := false;
    cachedupdates := false;
    active := false;
    active := true;
  end;
end;

procedure TFailed_Cartons_Input.Button6Click(Sender: TObject);
begin
  with Query1 do
  begin
    requestlive:=true;
    cachedupdates:=true;
    insert;
  end;
end;

end.
