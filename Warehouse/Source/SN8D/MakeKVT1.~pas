unit MakeKVT1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ExtCtrls;

type
  TMakeKVT = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Edit2: TEdit;
    CheckBox1: TCheckBox;
    DBGridEh1: TDBGridEh;
    DBGridEh2: TDBGridEh;
    Query1: TQuery;
    Query1MAKE: TStringField;
    Query1NAME: TStringField;
    DS1: TDataSource;
    procedure Button1Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGridEh2DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MakeKVT: TMakeKVT;

implementation

uses ScanQREntry1;

{$R *.dfm}

procedure TMakeKVT.Button1Click(Sender: TObject);
begin
 with query1 do
  begin
    active:=false;
    sql.clear;
    sql.Add('select make,name from MAKE');
    sql.add('where MAKE like '+''''+edit1.Text+'%'+'''');
    sql.add('      and Name like '+''''+'%'+edit2.Text+'%'+'''');
    sql.Add('and DONVI=''KVT''');
    active:=true;
  end;
end;

procedure TMakeKVT.FormDestroy(Sender: TObject);
begin
  MakeKVT := nil;
end;

procedure TMakeKVT.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TMakeKVT.DBGridEh2DblClick(Sender: TObject);
begin
  if query1.recordcount>0 then
  begin
    //±a¤JDepNO
    ScanQREntry.Make.active:=true;
    if ScanQREntry.Make.Locate('MAKE',copy(query1.FieldByName('MAKE').AsString,0,10),[]) then
    begin
      ScanQREntry.edit1.Text:=query1.fieldbyname('MAKE').Value;
      ScanQREntry.edit2.Text:=query1.fieldbyname('Name').Value;
    end;
    //
    close;
  end;
end;

end.
