unit LastData1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, Grids, DBGrids, Mask, DBCtrls, Buttons,
  ExtCtrls, DB, DBTables, GridsEh, DBGridEh, Menus, comobj, ADODB, DBGridEhImpExp, ShellAPI;

type
  TLastData = class(TForm)
    tmpQry: TQuery;
    DS1: TDataSource;
    Query1: TQuery;
    UpdateSQL1: TUpdateSQL;
    Panel5: TPanel;
    BB2: TBitBtn;
    BB3: TBitBtn;
    BB4: TBitBtn;
    BB5: TBitBtn;
    BB6: TBitBtn;
    ToolPanel: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Button3: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Button4: TButton;
    Edit7: TEdit;
    DBGridEh1: TDBGridEh;
    BB1: TBitBtn;
    Query1LastCode: TStringField;
    Query1CLBH: TStringField;
    Query1ZSDH: TStringField;
    Query1Material: TStringField;
    Query1Construction: TStringField;
    Query1Cut: TStringField;
    Query1Gender: TStringField;
    Query1UserID: TStringField;
    Query1UserDate: TDateTimeField;
    Query1YN: TStringField;
    Query1YWPM: TStringField;
    Query1ZWPM: TStringField;
    Query1DWBH: TStringField;
    Query1zsywjc: TStringField;
    Query1LastCodeProd: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure BB2Click(Sender: TObject);
    procedure BB3Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure DBGridEh2Columns1EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh2Columns3EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure Button4Click(Sender: TObject);
    procedure BB1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGridEh1EditButtonClick(Sender: TObject);
    procedure DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
  private
    NDate:TDateTime;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  LastData: TLastData;

implementation

uses main1,LastData_Mat1, LastData_Supplier1, FunUnit;

{$R *.dfm}

procedure TLastData.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TLastData.FormDestroy(Sender: TObject);
begin
  Lastdata := nil;
end;

procedure TLastData.BB2Click(Sender: TObject);
begin

  with Query1 do
  begin
    requestlive:=true;
    cachedupdates:=true;
    Insert;
  end;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
  DBGridEh1.Columns[1].ButtonStyle := cbsEllipsis;
  DBGridEh1.Columns[2].ButtonStyle := cbsEllipsis;
end;

procedure TLastData.BB3Click(Sender: TObject);
begin
  with Query1 do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
    fieldbyname('YN').Value:='0';
  end;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
end;

procedure TLastData.BB4Click(Sender: TObject);
begin

  with Query1 do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
  DBGridEh1.Columns[1].ButtonStyle := cbsEllipsis;
  DBGridEh1.Columns[2].ButtonStyle := cbsEllipsis;
end;

procedure TLastData.BB5Click(Sender: TObject);
var i:integer;
begin

  try
      Query1.first;
      for i:=1 to Query1.RecordCount do
      begin
          case Query1.updatestatus of
            usinserted:
              begin
                 Query1.edit;
                 Query1.FieldByName('userdate').Value:=Ndate;
                 Query1.FieldByName('UserID').AsString:=main.Edit1.Text;
                 Query1.FieldByName('YN').AsString:='1';
                 UpdateSQL1.apply(ukinsert);
                end;
            usmodified:
               begin
                if Query1.fieldbyname('YN').value='0'then
                begin
                  Query1.edit;
                  UpdateSQL1.apply(ukdelete);
                end else
                begin
                  Query1.edit;
                  Query1.FieldByName('userdate').Value:=Ndate;
                  Query1.FieldByName('userID').Value:=main.edit1.text;
                  UpdateSQL1.apply(ukModify);
                end;
               end;
          end;
         Query1.next;
        end;
      Query1.active:=false;
      Query1.cachedupdates:=false;
      Query1.requestlive:=false;
      Query1.active:=true;
      BB5.enabled:=false;
      BB6.enabled:=false;
      DBGridEh1.Columns[1].ButtonStyle := cbsNone;
      DBGridEh1.Columns[2].ButtonStyle := cbsNone;
  except
    Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
  end;
end;

procedure TLastData.BB6Click(Sender: TObject);
begin
  with Query1 do
  begin
    active:=false;
    cachedupdates:=false;
    requestlive:=false;
    active:=true;
  end;
  BB5.enabled:=false;
  BB6.enabled:=false;
  DBGridEh1.Columns[1].ButtonStyle := cbsNone;
  DBGridEh1.Columns[2].ButtonStyle := cbsNone;
end;

procedure TLastData.DBGridEh2Columns1EditButtonClick(Sender: TObject;
  var Handled: Boolean);
begin
  if LastData_Mat<>nil then
    begin
       LastData_Mat.show;
       LastData_Mat.windowstate:=wsmaximized;
    end
  else
    begin
       LastData_Mat:=TLastData_Mat.create(self);
       LastData_Mat.show;
    end;
end;

procedure TLastData.DBGridEh2Columns3EditButtonClick(Sender: TObject;
  var Handled: Boolean);
begin
  if LastData_Supplier<>nil then
    begin
       LastData_Supplier.show;
       LastData_Supplier.windowstate:=wsmaximized;
    end
  else
    begin
       LastData_Supplier:=TLastData_Supplier.create(self);
       LastData_Supplier.show;
    end;
end;

procedure TLastData.Button4Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
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
        for   i:=0   to   query1.fieldcount-1   do
          begin
              eclApp.Cells(1,i+1):=query1.fields[i].FieldName;
          end;

        query1.First;
        j:=2;
        while   not   query1.Eof   do
          begin
            for   i:=0   to  query1.fieldcount-1  do
            begin
              eclApp.Cells(j,i+1):=query1.Fields[i].Value;
            end;
          query1.Next;
          inc(j);
          end;
      eclapp.columns.autofit;
      showmessage('Succeed');
       eclApp.Visible:=True;
      except
        on   F:Exception   do
          showmessage(F.Message);
      end;
  end;

end;

procedure TLastData.BB1Click(Sender: TObject);
begin
  ToolPanel.Visible:=true;
end;

procedure TLastData.Button3Click(Sender: TObject);
begin
  with Query1 do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Select lastdatas.*,clzl.YWPM,CLZL.ZWPM,CLZL.DWBH,ZSZL.zsywjc');
    SQL.Add('from LastDatas ');
    SQL.Add('left join clzl on clzl.cldh=LastDatas.CLBH ');
    SQL.Add('left join zszl on zszl.zsdh=LastDatas.zsdh');
    SQL.Add('where 1=1');
    if (Edit1.Text <> '') then
      SQL.Add('AND LastDatas.CLBH LIKE ''%' + Edit1.Text + '%''');
    if (Edit2.Text <> '') then
      SQL.Add('AND LastDatas.LastCode LIKE ''%' + Edit2.Text + '%''');
    if (Edit3.Text <> '') then
      SQL.Add('AND LastDatas.Gender LIKE ''%' + Edit3.Text + '%''');
    if (Edit4.Text <> '') then
      SQL.Add('AND LastDatas.ZSDH LIKE ''%' + Edit4.Text + '%''');
    if (Edit5.Text <> '') then
      SQL.Add('AND LastDatas.Construction LIKE ''%' + Edit5.Text + '%''');
    if (Edit6.Text <> '') then
      SQL.Add('AND LastDatas.Material LIKE ''%' + Edit6.Text + '%''');
    if (Edit7.Text <> '') then
      SQL.Add('AND LastDatas.Cut LIKE ''%' + Edit7.Text + '%''');
    SQL.Add('ORDER BY LastDatas.LastCode,LastDatas.CLBH, LastDatas.UserDate DESC');
    FuncObj.WriteErrorLog(sql.Text);
    active:=true;
  end;
end;

procedure TLastData.FormCreate(Sender: TObject);
begin
  with tmpQry do          //取服務器的年月值
  begin
    active:=false;
    sql.Clear;
    sql.Add('Select year(getdate()) as FY,month(getdate()) as FM,getdate() as NDate ');
    active:=true;
    NDate:=fieldbyname('NDate').value;
    active:=false;
  end;
end;

procedure TLastData.DBGridEh1EditButtonClick(Sender: TObject);
begin
  with DBGridEh1 do
  begin
    if Selectedfield.fieldname='ZSDH' then
    begin
      LastData_Supplier:=TLastData_Supplier.Create(self);
      LastData_Supplier.Show;
    end;
    if Selectedfield.fieldname='CLBH' then
    begin
      LastData_Mat := TLastData_Mat.Create(self);
      LastData_Mat.Show;
    end;
  end;
end;

procedure TLastData.DBGridEh1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if Query1.FieldByName('YN').value='0' then
  begin
    DBGridEh1.canvas.font.color:=clred;
  end;
end;

end.
