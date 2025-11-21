unit DepChange1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DB, DBTables, Grids, DBGrids, StdCtrls;

type
  TDepChange = class(TForm)
    SQ: TQuery;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    CBX1: TComboBox;
    CBX2: TComboBox;
    Panel6: TPanel;
    LQ: TQuery;
    DS1: TDataSource;
    DS2: TDataSource;
    Dep: TQuery;
    DBGrid2: TDBGrid;
    Button1: TButton;
    Button2: TButton;
    Button4: TButton;
    UpSQL1: TUpdateSQL;
    UpdateSQL1: TUpdateSQL;
    Button3: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure CBX1CloseUp(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure CBX2CloseUp(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DepChange: TDepChange;
  a,b:string;

implementation

uses main1;

{$R *.dfm}

procedure TDepChange.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if LQ.requestlive then
  begin
    messagedlg('You have to save data first.',mtwarning,[mbyes],0);
    action:=canone;
  end
  else
   action:=Cafree;
end;

procedure TDepChange.FormCreate(Sender: TObject);
begin
with Dep do
  begin
    active:=false;
    sql.Clear;
    sql.Add('select ID,DepName from BDepartment order by ID');
    active:=true;
    while not eof do
      begin
        CBX1.items.add(fieldbyname('DepName').AsString);
        CBX2.items.add(fieldbyname('DepName').AsString);
        next;
      end;
  end;
end;

procedure TDepChange.CBX1CloseUp(Sender: TObject);
begin
if LQ.RequestLive then
  begin
    showmessage('Pls save data first.');
    abort;
  end;
with SQ do
  begin
    active:=false;
    sql.Clear;
    sql.add('select ID from BDepartment where DepName='+''''+CBX1.Text+'''');
    active:=true;
    a:=fieldbyname('ID').Value;
    active:=false;
    sql.Clear;
    sql.add('select w.*,d.DepName');
    sql.add('from BWorker w,BDepartment d');
    sql.add('where w.DepId=d.ID');
    sql.add('and d.DepName=');
    sql.add(''''+CBX1.Text+'''');
    sql.add('order by W.DepID,w.ID');
    active:=true;
  end;
end;

procedure TDepChange.Button1Click(Sender: TObject);
begin
if not LQ.Active then
  begin
    showmessage('Pls select source department first.');
    abort;
  end; 
if not SQ.Active then
  begin
    showmessage('Pls select source department first.');
    abort;
  end;  
if a=b then
  begin
    showmessage('Pls select different department.');
    abort;
  end;
LQ.requestlive:=true;
LQ.cachedupdates:=true;
SQ.requestlive:=true;
SQ.cachedupdates:=true;
Button2.enabled:=true;
button3.enabled:=true;
button4.enabled:=true;
end;

procedure TDepChange.Button2Click(Sender: TObject);
begin
if LQ.requestlive then
  begin
    LQ.Insert;
    LQ.fieldbyname('ID').asstring:=SQ.fieldbyname('ID').asstring;
    LQ.fieldbyname('DepID').asstring:=b;
    LQ.fieldbyname('DepName').asstring:=SQ.fieldbyname('DepName').asstring;
    LQ.fieldbyname('WorkName').asstring:=SQ.fieldbyname('WorkName').asstring;
    LQ.fieldbyname('UserID').asstring:=main.edit1.text;
    LQ.fieldbyname('userdate').value:=date;
    SQ.edit;
    SQ.fieldbyname('DepID').asstring:=b; 
    SQ.fieldbyname('USERID').asstring:=main.Edit1.text;
    SQ.fieldbyname('USERDATE').value:=date;
    SQ.Next;
  end;
end;

procedure TDepChange.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
if  SQ.fieldbyname('DepID').asstring<>a then
  begin
    dbgrid1.canvas.font.color:=clred;
    dbgrid1.defaultdrawcolumncell(rect,datacol,column,state);
  end;
end;

procedure TDepChange.CBX2CloseUp(Sender: TObject);
begin
with LQ do
  begin
    active:=false;
    sql.Clear;
    sql.add('select ID from BDepartment where DepName='+''''+CBX2.Text+'''');
    active:=true;
    b:=fieldbyname('ID').Value;
    active:=false;
    sql.Clear;
    sql.add('select w.*,d.DepName');
    sql.add('from BWorker w,BDepartment d');
    sql.add('where w.DepId=d.ID');
    sql.add('and d.DepName=');
    sql.add(''''+CBX2.Text+'''');
    sql.add('order by W.DepID,w.ID');
    active:=true;  
  end;
end;

procedure TDepChange.Button4Click(Sender: TObject);
begin
SQ.requestlive:=false;
SQ.CachedUpdates:=false;
LQ.RequestLive:=false;
LQ.CachedUpdates:=false;

Button2.enabled:=false;
Button3.enabled:=false;
Button4.enabled:=false;
end;

procedure TDepChange.Button3Click(Sender: TObject);
begin
try
SQ.First;
while not SQ.Eof do
  begin
    UpSQl1.Apply(ukmodify);
    SQ.next;
  end;

SQ.Active:=false;
SQ.requestlive:=false;
SQ.CachedUpdates:=false;
SQ.Active:=true;
LQ.Active:=false;
LQ.RequestLive:=false;
LQ.CachedUpdates:=false;
LQ.Active:=true;
Button2.enabled:=false;
Button3.enabled:=false;
Button4.enabled:=false;
except
  showmessage('Have wrong.');
end;
end;

procedure TDepChange.FormDestroy(Sender: TObject);
begin
DepChange:=nil;
end;

end.
