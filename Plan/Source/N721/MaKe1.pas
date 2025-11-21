unit MaKe1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, StdCtrls, ExtCtrls, GridsEh, DBGridEh;

type
  TMaKe = class(TForm)
    DBGridEh1: TDBGridEh;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Edit2: TEdit;
    DS1: TDataSource;
    Query1: TQuery;
    Query1ID: TFloatField;
    Query1MAKE: TStringField;
    Query1NAME: TStringField;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MaKe: TMaKe;

implementation
 uses ScanIn1, main1;
{$R *.dfm}

procedure TMaKe.FormDestroy(Sender: TObject);
begin
  MaKe:=nil;
end;

procedure TMaKe.FormClose(Sender: TObject; var Action: TCloseAction);
begin
      action:=cafree;
end;

procedure TMaKe.Button1Click(Sender: TObject);
begin
 with query1 do
  begin
    active:=false;
    sql.clear;
    sql.Add('select * from MaKe');
    sql.Add('where MAKE like ''%' + Trim(Edit1.Text) + '%'' and  NAME like ''%' + Trim(Edit2.Text) + '%'' ');
    sql.Add('and DONVI=''SQ''');
    active:=true;
  end;
end;

procedure TMaKe.DBGridEh1DblClick(Sender: TObject);
begin
  if query1.recordcount>0 then
  begin
    //±a¤JDepNO
      ScanIn.Query1.active:=true;
      if ScanIn.Query1.Locate('MAKE',copy(query1.FieldByName('MAKE').AsString,0,10),[]) then
      begin
      ScanIn.edit4.Text:=query1.fieldbyname('MAKE').Value;
      ScanIn.edit5.Text:=query1.fieldbyname('NAME').Value;
      end;
    //
    close;
  end;
end;
end.
