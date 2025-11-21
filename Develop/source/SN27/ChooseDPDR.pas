unit ChooseDPDR;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DB, Grids, DBGrids, DBTables, StdCtrls, Menus, IniFiles, fununit;

type
  TchooseDPDR1 = class(TForm)
    Query1: TQuery;
    DataSource1: TDataSource;
    Query1YYBH: TStringField;
    Query1YWSM: TStringField;
    Query2: TQuery;
    DataSource2: TDataSource;
    Query2YYBH: TStringField;
    Query2YWSM: TStringField;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    DBGrid2: TDBGrid;
    Panel4: TPanel;
    DBGrid1: TDBGrid;
    Button1: TButton;
    Button2: TButton;
    Query2VWSM: TStringField;
    Qtemp: TQuery;
    BDelRec: TQuery;
    pm1: TPopupMenu;
    Modify1: TMenuItem;
    Delete1: TMenuItem;
    Insert1: TMenuItem;
    Save1: TMenuItem;
    Cancel1: TMenuItem;
    UpdateSQL2: TUpdateSQL;
    Query2class: TStringField;
    Query2YN: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure Button1Click(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure Button2Click(Sender: TObject);
    procedure Insert1Click(Sender: TObject);
    procedure Delete1Click(Sender: TObject);
    procedure Modify1Click(Sender: TObject);
    procedure Save1Click(Sender: TObject);
    procedure Cancel1Click(Sender: TObject);
  private
    IsAllowUserID:Boolean;
    { Private declarations }
    procedure ReadIni();
  public
    { Public declarations }
  end;

var
  chooseDPDR1: TchooseDPDR1;

implementation

uses SamplePlan1, main1;

{$R *.dfm}

procedure TchooseDPDR1.ReadIni();
var MyIni :Tinifile;
    AppDir,UserIDEdit:string;
    tmpUserIDEdit:TStringlist;
    index:integer;
begin
  AppDir:=ExtractFilePath(Application.ExeName);
  if FileExists(AppDir+'\ComName.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ComName.ini');
      UserIDEdit:=MyIni.ReadString('ERP','Develop_N27_UserIDEditDelay','');
    finally
      MyIni.Free;
    end;
  end;
  if  UserIDEdit <> '' then
  begin
    tmpUserIDEdit:=FuncObj.SplitString(UserIDEdit,',');
    index:=tmpUserIDEdit.IndexOf(main.Edit1.Text);
    if index>=0 then IsAllowUserID:=true;
    tmpUserIDEdit.Free;
  end else
  begin
    IsAllowUserID:=false;
  end;
end;

procedure TchooseDPDR1.FormCreate(Sender: TObject);
begin
   IsAllowUserID:=false;
   ReadIni();
   if IsAllowUserID=true then
   begin
      Insert1.Enabled:=true;
      Modify1.Enabled:=true;
      Delete1.Enabled:=true;
   end;
   //
   query1.active:=true;
   query2.active:=true;
end;

procedure TchooseDPDR1.DBGrid1CellClick(Column: TColumn);
begin
  query2.active:=true;
end;

procedure TchooseDPDR1.Button1Click(Sender: TObject);
begin
  sampleplan.shoetest.Edit;
  sampleplan.shoetest.FieldByName('DP').Value := query1.FieldByName('yybh').Value;
  sampleplan.shoetest.FieldByName('DPEnglish').Value := query1.FieldByName('ywsm').Value;
  sampleplan.shoetest.FieldByName('DR').Value := query2.FieldByName('yybh').Value;
  sampleplan.shoetest.FieldByName('DREnglish').Value := query2.FieldByName('ywsm').Value;
  sampleplan.shoetest.FieldByName('DRTiengViet').Value := query2.FieldByName('vwsm').Value;

  close;
end;

procedure TchooseDPDR1.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
     if ((State = [gdSelected]) or (State=[gdSelected,gdFocused])) then
    begin
      DBGrid1.Canvas.Font.Color :=ClYellow;
      DBGrid1.Canvas.Brush.Color :=clblue;
      DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
    end;
end;

procedure TchooseDPDR1.DBGrid2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if ((State = [gdSelected]) or (State=[gdSelected,gdFocused])) then
  begin
    DBGrid2.Canvas.Font.Color :=ClYellow;
    DBGrid2.Canvas.Brush.Color :=clblue;
    DBGrid2.DefaultDrawColumnCell(Rect,DataCol,Column,State);
  end;
  //
  if Query2.FieldByName('YN').value='0' then
  begin
    DBGrid2.canvas.font.color:=clred;
    DBGrid2.defaultdrawcolumncell(rect,datacol,column,state);
  end;
end;

procedure TchooseDPDR1.Button2Click(Sender: TObject);
begin
  sampleplan.shoetest.Edit;
  sampleplan.shoetest.FieldByName('DP').Value := '';
  sampleplan.shoetest.FieldByName('DPEnglish').Value :='';
  sampleplan.shoetest.FieldByName('DR').Value :='';
  sampleplan.shoetest.FieldByName('DREnglish').Value :='';
  sampleplan.shoetest.FieldByName('DRTiengViet').Value :='';
  close;
end;

procedure TchooseDPDR1.Insert1Click(Sender: TObject);
begin
  with Query2 do
  begin
    requestlive:=true;
    cachedupdates:=true;
    Insert;
  end;
  Insert1.Enabled:=false;
  Modify1.Enabled:=false;
  Delete1.Enabled:=false;
  Save1.Enabled := True;
  Cancel1.Enabled := True;
end;

procedure TchooseDPDR1.Delete1Click(Sender: TObject);
begin
  with Query2 do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
    fieldbyname('YN').Value:='0';
  end;
  Insert1.Enabled:=false;
  Modify1.Enabled:=false;
  Delete1.Enabled:=false;
  Save1.Enabled := True;
  Cancel1.Enabled := True;
end;

procedure TchooseDPDR1.Modify1Click(Sender: TObject);
begin
  with Query2 do
  begin                           
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
  Insert1.Enabled:=false;
  Modify1.Enabled:=false;
  Delete1.Enabled:=false;
  Save1.Enabled := True;
  Cancel1.Enabled := True;
end;

procedure TchooseDPDR1.Save1Click(Sender: TObject);
var a: string;
    i: integer;
begin
  try
    Query2.first;
    for i:=1 to Query2.RecordCount do
    begin
      case Query2.updatestatus of
        usinserted:
          begin
            with Qtemp do   
            begin
              active:=false;
              sql.Clear;
              sql.Add('select top 1 yybh from shoetestdetail where yybh like ''DR%'' ');
              sql.add('order by yybh DESC');
              active:=true;
              if recordcount >0 then
              begin
                a:=fieldbyname('yybh').AsString;
                a:=copy(a,3,2);
                a:=inttostr(strtoint(a)+1);
                while length(a)<2 do
                  begin
                    a:='0'+a;
                  end;
              end else
              begin
                a:='01';
              end;
              a:=a;
              active:=false;
            end;
            Query2.edit;
            Query2.fieldbyname('yybh').Value:='DR'+a;
            Query2.FieldByName('class').Value:=Query1.FieldByName('yybh').Value;
            UpdateSQL2.apply(ukinsert);
          end;
        usmodified:
          begin
            if (Query2.fieldbyname('YN').value='0') then
            begin
              with BDelRec do
              begin
                active:=false;
                sql.Clear;
                sql.add('insert into BDelRec ');
                sql.add('(TableName ,TNO,CLBH,OldID,DelID,DelDate)');
                sql.add('values ('+''''+'shoetestdetail'+''''+','+''''+Query2.fieldbyname('yybh').Value+'''');
                sql.add(','''+Query2.fieldbyname('ywsm').Value+'_'+Query2.fieldbyname('vwsm').Value+'_'+Query2.fieldbyname('class').Value+''','+''''+main.Edit1.Text+''''+',');
                sql.add(''''+main.Edit1.Text+''''+',getdate())');
                //funcobj.WriteErrorLog(sql.Text);
                execsql;
                active:=false;
              end;
              UpdateSQL2.apply(ukdelete);
            end else
            begin
              Query2.edit;
              UpdateSQL2.apply(ukmodify);
            end;
          end;
      end;
      Query2.next;
    end;
    Query2.active:=false;
    Query2.cachedupdates:=false;
    Query2.requestlive:=false;
    Query2.active:=true;
    Insert1.Enabled:=true;
    Modify1.Enabled:=true;
    Delete1.Enabled:=true;
    Save1.Enabled := False;
    Cancel1.Enabled := False;
  except
    Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
  end;
end;

procedure TchooseDPDR1.Cancel1Click(Sender: TObject);
begin
  with Query2 do
  begin
    active:=false;
    requestlive:=false;
    cachedupdates:=false;
    active:=true;
  end;
  Insert1.Enabled:=true;
  Modify1.Enabled:=true;
  Delete1.Enabled:=true;
  Save1.Enabled := False;
  Cancel1.Enabled := False;
end;

end.
