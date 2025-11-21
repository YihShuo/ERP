unit ScanScreenDep1;

interface

uses
  {Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, ExtCtrls, GridsEh, DBGridEh, StdCtrls, Buttons  ,
  DBCtrls, Mask,
  math,dateutils;  }

  
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, DBTables, Grids, DBGrids, ExtCtrls, DBCtrls, Mask,
  math,dateutils, GridsEh, DBGridEh, Buttons;

type
  TScanScreenDep = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    BitBtn1: TBitBtn;
    Panel2: TPanel;
    DBGrid1: TDBGridEh;
    Panel3: TPanel;
    Bevel1: TBevel;
    Button1: TButton;
    Button3: TButton;
    Button7: TButton;
    DBGrid2: TDBGridEh;
    Query1: TQuery;
    DataSource1: TDataSource;
    Query2: TQuery;
    DataSource2: TDataSource;
    UpdateSQL2: TUpdateSQL;
    UpdateSQL1: TUpdateSQL;
    Query1ID: TStringField;
    Query1GSBH: TStringField;
    Query1DepName: TStringField;
    Query1DepMemo: TStringField;
    Query2DEPNO: TStringField;
    Query2DEPNAME: TStringField;
    Query2GXLB: TStringField;
    Label2: TLabel;
    CBX4: TComboBox;
    Qtemp: TQuery;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ScanScreenDep: TScanScreenDep;
  NDate:TDate;

implementation

uses main1;

{$R *.dfm}

procedure TScanScreenDep.FormDestroy(Sender: TObject);
begin
ScanScreenDep:=nil;
end;

procedure TScanScreenDep.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=cafree;
end;

procedure TScanScreenDep.FormCreate(Sender: TObject);
var i:word;
begin
with Qtemp do
  begin
    active:=false;
    sql.Clear;
    sql.add('select getdate() as NDate ');
    active:=true;
    NDate:=fieldbyname('NDate').Value;
    active:=false;
    sql.Clear;
    sql.add('select distinct GX from SCGXDY order by GX');
    active:=true;
    for i:=1 to recordcount do
      begin
        CBX4.Items.Add(fieldbyname('GX').asstring);
        next;
      end;      
    CBX4.Itemindex:=0;
  end;
with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select *  ');
    sql.add('from BDepartment');
    sql.add('where GSBH='+''''+main.edit2.text+'''');
    //sql.add('      and ProYN='+''''+'1'+'''');
    sql.add('order by ID');
    active:=true;
  end;
query2.active:=true;

end;

procedure TScanScreenDep.Button7Click(Sender: TObject);
begin

query1.RequestLive:=true;
query1.CachedUpdates:=true;
query2.RequestLive:=true;
query2.CachedUpdates:=true;
button1.Enabled:=true;
button3.Enabled:=true;
end;

procedure TScanScreenDep.Button1Click(Sender: TObject);
var bm:Tbookmark;
i:integer;
bookmarklist:tbookmarklisteh;
begin

if (not query1.Active) then
  begin
    abort;
  end;
if (Query1.recordcount<1) then
  begin
    abort;
  end;
query1.disablecontrols;
bm:=query1.getbookmark;
bookmarklist:=dbgrid2.selectedrows;
if bookmarklist.count>0 then
  begin
    try
      for i:=0 to bookmarklist.count-1 do
      begin
        query1.gotobookmark(pointer(bookmarklist[i]));
        with query2 do
          begin
            if not locate('DepNo',query1.fieldbyname('ID').Value,[]) then
              begin
                append;
                fieldbyname('DepNo').Value:=query1.fieldbyname('ID').Value ;
                fieldbyname('DepName').Value:=query1.fieldbyname('DepName').Value ;
                fieldbyname('GXLB').Value:=CBX4.text ;
                updatesql2.Apply(ukinsert);
              end
              else
                begin
                  showmessage('Already have.');
                end;
          end;
      end;
    finally
      begin
        query1.gotobookmark(bm);
        query1.freebookmark(bm);
        query1.enablecontrols;
        showmessage('You have finish copy!');
      end;
    end;
  end;
end;

procedure TScanScreenDep.Button3Click(Sender: TObject);
begin
try
  IF Query2.recordcount>0 then
    begin
      updatesql2.apply(ukdelete) ;
    end;
query2.Active:=false; 
query1.Active:=false;
query1.Active:=true;
query2.Active:=true;
except
showmessage('Have wrong.');
end;
end;

procedure TScanScreenDep.BitBtn1Click(Sender: TObject);
begin
close;
end;

procedure TScanScreenDep.Button2Click(Sender: TObject);
begin

with query1 do
  begin
    active:=false;
    cachedupdates:=true;
    requestlive:=true;
    active:=true;
    while not query2.Eof do
      begin
        if locate('ID',query2.fieldbyname('DepNo').Value,[]) then
          begin
            delete;
            query2.Next;
          end;
      end;
    query2.first;
    cachedupdates:=false;
    requestlive:=false;
    first;
  end;
end;

end.
