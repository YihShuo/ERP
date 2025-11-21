unit TestItem1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DB, DBTables, GridsEh, DBGridEh, StdCtrls, Buttons;

type
  TTestItem = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Button1: TButton;
    Query1: TQuery;
    DBGridEh1: TDBGridEh;
    UpdateSQL1: TUpdateSQL;
    DataSource1: TDataSource;
    Query1TestID: TStringField;
    Query1TestReason: TStringField;
    Query1UserID: TStringField;
    Query1UserDate: TDateTimeField;
    Query1YN: TStringField;
    BB1: TBitBtn;
    BB2: TBitBtn;
    BB4: TBitBtn;
    BB3: TBitBtn;
    BB5: TBitBtn;
    BB6: TBitBtn;
    BB7: TBitBtn;
    tempqry: TQuery;
    Query1GSBH: TStringField;
    Query1Brand: TStringField;
    Edit1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Edit2: TEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure BB2Click(Sender: TObject);
    procedure BB1Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure BB3Click(Sender: TObject);
    procedure DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TestItem: TTestItem;

implementation

uses main1;

{$R *.dfm}

procedure TTestItem.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TTestItem.Button1Click(Sender: TObject);
begin
  with Query1 do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Select GSBH,Brand,TestID,TestReason,UserID,UserDate,YN from Lab_TestReason where 1=1 ');
    if edit2.Text='' then
       SQL.Add('and gsbh in (''VA12'',''CDC'')  ');
    if edit2.Text<>'' then
       SQL.Add('and gsbh='''+edit2.text+'''  ');
    if edit1.Text<>'' then
       SQL.Add('and testid like '''+ edit1.text+'%''');
    Active:=true;
  end;
  panel4.Visible:=false;
  BB2.Enabled:=true;
  BB3.Enabled:=true;
  BB4.Enabled:=true;
end;

procedure TTestItem.BB2Click(Sender: TObject);
begin
  with query1 do
  begin
    requestlive:=true;
    cachedupdates:=true;
    insert;
  end;
  query1.FieldByName('GSBH').Value:=main.edit2.text;
  query1.FieldByName('Brand').Value:='036';
  query1.FieldByName('userid').Value:=main.edit1.text;
  query1.FieldByName('yn').Value:='1';
  BB5.Enabled:=true;
  BB6.Enabled:=true;
end;

procedure TTestItem.BB1Click(Sender: TObject);
begin
  panel4.Visible:=true;
end;

procedure TTestItem.BB5Click(Sender: TObject);
var i:integer;
    NDate:TDateTime;
begin
   with TempQry do          //取服務器的年月值
   begin
      active:=false;
      sql.Clear;
      sql.Add('select year(getdate()) as FY,month(getdate()) as FM,getdate() as NDate ');
      active:=true;
      NDate:=fieldbyname('Ndate').Value;
      active:=false;
   end;


   try
      query1.first;
      for i:=1 to query1.RecordCount do
        begin
          case query1.updatestatus of
            usinserted:
              begin
                  query1.edit;
                  query1.FieldByName('userdate').Value:=formatdatetime('yyyy/MM/dd',Ndate);
                  UpdateSQL1.apply(ukinsert);
                end;
            usmodified:
               begin
                if query1.fieldbyname('YN').value='0'then
                begin
                  UpdateSQL1.apply(ukdelete);
                end else
                begin
                  query1.edit;
                  query1.FieldByName('userID').Value:=main.edit1.text;
                  query1.FieldByName('userdate').Value:=formatdatetime('yyyy/MM/dd',Ndate);
                  UpdateSQL1.apply(ukModify);
                end;
               end;
          end;
         query1.next;
        end;
  query1.active:=false;
  query1.cachedupdates:=false;
  query1.requestlive:=false;
  query1.active:=true;
  BB2.Enabled:=true;
  BB3.Enabled:=true;
  BB4.Enabled:=true;
  bb5.enabled:=false;
  bb6.enabled:=false;
  except
    Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
  end;
end;

procedure TTestItem.BB4Click(Sender: TObject);
begin
  with query1 do
    begin
      requestlive:=true;
      cachedupdates:=true;
      edit;
    end;
    BB5.Enabled:=true;
    BB6.Enabled:=true;
end;

procedure TTestItem.BB6Click(Sender: TObject);
begin
  with query1 do
  begin
    active:=false;
    requestlive:=false;
    cachedupdates:=false;
    active:=true;
  end;
  BB5.Enabled:=false;
  BB6.Enabled:=false;
end;

procedure TTestItem.BB3Click(Sender: TObject);
begin
   with query1 do
   begin
       requestlive:=true;
       cachedupdates:=true;
       edit;
       fieldbyname('YN').Value:='0';
   end;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
end;

procedure TTestItem.DBGridEh1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if query1.FieldByName('YN').Value='0' then
    begin
        DBGridEh1.canvas.font.color:=clred;
        DBGridEh1.defaultdrawcolumncell(rect,datacol,column,state);
    end;
end;

procedure TTestItem.FormDestroy(Sender: TObject);
begin
  TestItem := nil;
end;

end.
