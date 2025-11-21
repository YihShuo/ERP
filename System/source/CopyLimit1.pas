unit CopyLimit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBTables, DB, ExtCtrls, Grids, DBGrids, StdCtrls, Buttons,
  GridsEh, DBGridEh;

type
  TCopyLimit = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    CBX1: TComboBox;
    BitBtn1: TBitBtn;
    CBX2: TComboBox;
    Button2: TButton;
    Panel2: TPanel;
    DBGrid1: TDBGridEh;
    Panel3: TPanel;
    Bevel1: TBevel;
    Button7: TButton;
    DBGrid2: TDBGridEh;
    Query1: TQuery;
    Query1GSBH: TStringField;
    Query1USERID: TStringField;
    Query1MKID: TStringField;
    Query1FORMID: TStringField;
    Query1SUSERID: TStringField;
    Query1USERDATE: TDateTimeField;
    Query1MKNAME: TStringField;
    Query1FORMNAME: TStringField;
    DataSource1: TDataSource;
    Query2: TQuery;
    Query2GSBH: TStringField;
    Query2USERID: TStringField;
    Query2MKID: TStringField;
    Query2FORMID: TStringField;
    Query2SUSERID: TStringField;
    Query2USERDATE: TDateTimeField;
    Query2MKNAME: TStringField;
    Query2FORMNAME: TStringField;
    DataSource2: TDataSource;
    UpdateSQL2: TUpdateSQL;
    UpdateSQL1: TUpdateSQL;
    Query3: TQuery;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure CBX1Change(Sender: TObject);
    procedure CBX2Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CopyLimit: TCopyLimit;
  NDate:Tdate;

implementation

uses main1;

{$R *.dfm}

procedure TCopyLimit.FormDestroy(Sender: TObject);
begin
CopyLimit:=nil;
end;

procedure TCopyLimit.FormClose(Sender: TObject; var Action: TCloseAction);
begin
action:=cafree;
end;

procedure TCopyLimit.FormCreate(Sender: TObject);
begin

with query3 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select getdate() as NDate ');
    active:=true;
    NDate:=fieldbyname('NDate').Value;
    active:=false;
    sql.Clear;
    sql.add('select distinct USERID from BUsers order by USERID');
    active:=true;
    CBX1.Items.Clear;
    CBX2.Items.Clear;
    while not eof do
      begin
        CBX1.Items.Add(fieldbyname('USERID').AsString);
        CBX2.Items.Add(fieldbyname('USERID').AsString);
        next;
      end;
    close;
  end;
CBX1.ItemIndex:=0;
CBX2.ItemIndex:=0;
//button2click(nil);
end;

procedure TCopyLimit.Button7Click(Sender: TObject);
begin

query1.RequestLive:=true;
query1.CachedUpdates:=true;
query2.RequestLive:=true;
query2.CachedUpdates:=true;

try
with query2 do
  begin
    IF Query1.recordcount>0 then
      begin
        Query1.first;
        while not Query1.eof do
          begin
            if not query2.locate('GSBH;MKID;FORMID',vararrayof([query1.fieldbyname('GSBH').Value,query1.fieldbyname('MKID').Value,query1.fieldbyname('FORMID').Value]),[]) then
              begin
                append;
                fieldbyname('GSBH').Value:=query1.fieldbyname('GSBH').Value ;;
                fieldbyname('USERID').Value:=CBX2.Text;
                fieldbyname('MKID').Value:=query1.fieldbyname('MKID').Value ;
                fieldbyname('FORMID').Value:=query1.fieldbyname('FORMID').Value;
                fieldbyname('FORMNAME').Value:=query1.fieldbyname('FORMNAME').Value ;
                fieldbyname('USERDATE').Value:=Ndate;
                fieldbyname('SUSERID').Value:=main.edit1.Text;
                updatesql2.Apply(ukinsert);
              end  ;
            Query1.next;
          end;
      end;
  end;
query2.Active:=false; 
query1.Active:=false;
query1.Active:=true;
query2.Active:=true;
except
showmessage('Have wrong.');
end;
end;

procedure TCopyLimit.Button2Click(Sender: TObject);
begin

if CBX1.text=CBX2.Text then
  begin
    showmessage('Pls select different userid.');
    query1.Active:=false;
    query2.Active:=false;
    abort;
  end;


with Query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select BLimits.*,BLimit.MKNAME ,BLimit.FORMNAME from BLimits  ');
    sql.add('left join BLimit on BLimit.MKID=BLimits.MKID and BLimit.FORMID=BLimits.FORMID');
    sql.add('where BLimits.USERID='+''''+CBX1.Text+'''');
    sql.add('order by BLimits.GSBH,BLimits.MKID,BLimitS.FORMID');
    active:=true;
  end;
with query2 do
  begin
    active:=false;
    sql.Clear;
    sql.Add('select BLimits.*,BLimit.MKNAME ,BLimit.FORMNAME from BLimits  ');
    sql.add('left join BLimit on BLimit.MKID=BLimits.MKID and BLimit.FORMID=BLimits.FORMID');
    sql.add('where BLimits.USERID='+''''+CBX2.Text+'''');
    sql.add('order by BLimits.GSBH,BLimits.MKID,BLimitS.FORMID ');
    active:=true;
  end;
end;

procedure TCopyLimit.BitBtn1Click(Sender: TObject);
begin
close;
end;

procedure TCopyLimit.CBX1Change(Sender: TObject);
begin

Button2Click(nil);
end;

procedure TCopyLimit.CBX2Change(Sender: TObject);
begin

Button2Click(nil);
end;

end.
