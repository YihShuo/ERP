unit BworkerIm1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBTables, DB, ExtCtrls, Grids, DBGrids, StdCtrls, Buttons;

type
  TBworkerIm = class(TForm)
    Panel2: TPanel;
    Panel3: TPanel;
    Bevel1: TBevel;
    BB1: TButton;
    BB2: TButton;
    Query1: TQuery;
    DS1: TDataSource;
    Query2: TQuery;
    DS2: TDataSource;
    UpdateSQL2: TUpdateSQL;
    UpdateSQL1: TUpdateSQL;
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    Panel4: TPanel;
    DBGrid2: TDBGrid;
    Panel5: TPanel;
    Label1: TLabel;
    CBX1: TComboBox;
    Panel6: TPanel;
    Label2: TLabel;
    CBX2: TComboBox;
    Query1ID: TStringField;
    Query1WorkName: TStringField;
    Query2ID: TStringField;
    Query2WorkName: TStringField;
    QDepName: TQuery;
    Query1DepID: TStringField;
    Query1Certificate: TStringField;
    Query1UserID: TStringField;
    Query1UserDate: TDateTimeField;
    Query1YN: TStringField;
    Query2DepID: TStringField;
    Query2Certificate: TStringField;
    Query2UserID: TStringField;
    Query2UserDate: TDateTimeField;
    Query2YN: TStringField;
    Label3: TLabel;
    Query1DepName: TStringField;
    Query2DepName: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure CBX1CloseUp(Sender: TObject);
    procedure CBX2CloseUp(Sender: TObject);
    procedure Query1AfterOpen(DataSet: TDataSet);
    procedure Query2AfterOpen(DataSet: TDataSet);
    procedure BB1Click(Sender: TObject);
    procedure BB2Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BworkerIm: TBworkerIm;

implementation

uses main1;

{$R *.dfm}

procedure TBworkerIm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
action:=cafree;
end;

procedure TBworkerIm.FormCreate(Sender: TObject);
begin
with QDepName do
  begin
    active:=false;
    sql.Clear;
    sql.add('select ID,DepName from BDepartment order by ID');
    active:=true;
    CBX1.Items.Clear; 
    CBX2.Items.Clear;
    while not eof do
      begin
        CBX1.Items.Add(fieldbyname('ID').AsString);
        CBX2.Items.Add(fieldbyname('ID').AsString);
        next;
      end;
    active:=false;
  end;
CBX1.ItemIndex:=-1;
CBX2.ItemIndex:=-1;
end;

procedure TBworkerIm.CBX1CloseUp(Sender: TObject);
begin
with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.Add('select BWorker.* ,BDepartment.DepName');
    sql.add('from BWorker ');
    sql.add('left join BDepartment on BDepartment.ID=BWorker.DepID ');
    sql.add('where BDepartment.ID='+''''+CBX1.Text+'''');
    sql.add('order by BWorker.ID ');
    active:=true;
  end;

end;

procedure TBworkerIm.CBX2CloseUp(Sender: TObject);
begin

with query2 do
  begin
    active:=false;
    sql.Clear;
    sql.Add('select BWorker.*,BDepartment.DepName');
    sql.add('from BWorker ');
    sql.add('left join BDepartment on BDepartment.ID=BWorker.DepID ');
    sql.add('where BDepartment.ID='+''''+CBX2.Text+'''');
    sql.add('order by BWorker.ID ');
    active:=true;
  end;
end;

procedure TBworkerIm.Query1AfterOpen(DataSet: TDataSet);
begin
if query2.Active then
  begin
    BB1.Enabled:=true;
    BB2.Enabled:=true;
  end;
end;

procedure TBworkerIm.Query2AfterOpen(DataSet: TDataSet);
begin  
if query1.Active then
  begin
    BB1.Enabled:=true;
    BB2.Enabled:=true;
  end;
end;

procedure TBworkerIm.BB1Click(Sender: TObject);
begin
try
with query1 do
  begin
    IF Query1.recordcount>0 then
      begin
        edit;
        fieldbyname('DepID').Value:=CBX2.Text;
        fieldbyname('USERDATE').Value:=date;
        fieldbyname('USERID').Value:=main.edit1.Text;
        updatesql1.Apply(ukmodify);
      end;
  end;
query1.Active:=false;
query2.Active:=false;
query1.Active:=true;
query2.Active:=true;
except
showmessage('Have wrong.');
end;
end;

procedure TBworkerIm.BB2Click(Sender: TObject);
begin
try
with query2 do
  begin
    IF Query2.recordcount>0 then
      begin
        edit;
        fieldbyname('DepID').Value:=CBX1.Text;
        fieldbyname('USERDATE').Value:=date;
        fieldbyname('USERID').Value:=main.edit1.Text;
        updatesql2.Apply(ukmodify);
      end;
  end;
query1.Active:=false;
query2.Active:=false;
query1.Active:=true;
query2.Active:=true;
except
showmessage('Have wrong.');
end;
end;

procedure TBworkerIm.FormDestroy(Sender: TObject);
begin
BworkerIm:=nil;
end;

end.
