unit Cond1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls;

type
  TCond = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    Edit2: TEdit;
    EDIT1: TEdit;
    DS1: TDataSource;
    Query1: TQuery;
    Query1BWDH: TStringField;
    Query1ZWSM: TStringField;
    Query1YWSM: TStringField;
    DBGrid1: TDBGrid;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure EDIT1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Cond: TCond;

implementation

uses DestinationPackingBox_Label1, main1;

{$R *.dfm}

procedure TCond.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=Cafree;
end;

procedure TCond.FormDestroy(Sender: TObject);
begin
  Cond:=nil;
end;

procedure TCond.FormShow(Sender: TObject);
begin
  main.FormLanguage(Pointer(self),self.Name);
end;

procedure TCond.EDIT1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    edit2.SetFocus;
end;

procedure TCond.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  button1Click(nil);
end;

procedure TCond.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    DBGrid1DblClick(nil);
end;

procedure TCond.DBGrid1DblClick(Sender: TObject);
begin
  if query1.recordcount>0 then
  begin
    with DestinationPackingBox_Label.XXZLSSVN do
    begin
      edit;
      fieldbyname('cond').value:=query1.fieldbyname('lbdh').value;
      fieldbyname('Destination').value:=query1.fieldbyname('ywsm').value;
    end;
    query1.Active:=false;
    close;
  end;
end;

procedure TCond.Button1Click(Sender: TObject);
begin
  with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select lbdh,ZWSM,YWSM from lbzls where lbdh like');
    sql.add(''''+edit1.Text+'%'+'''');
    sql.add(' and YWSM like ');
    sql.add(''''+'%'+edit2.Text+'%'+'''');
    sql.add(' and lb=''13'' ');
    sql.add('order by lbdh');
    active:=true;
  end;
end;

end.
