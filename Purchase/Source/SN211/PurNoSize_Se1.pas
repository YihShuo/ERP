unit PurNoSize_Se1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls;

type
  TPurNoSize_Se = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    DBGrid1: TDBGrid;
    Query1: TQuery;
    Query1LBBH: TStringField;
    Query1MEMO: TStringField;
    Query1CMEMO: TStringField;
    Query1USERID: TStringField;
    Query1USERDATE: TDateTimeField;
    Query1YN: TStringField;
    DS1: TDataSource;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PurNoSize_Se: TPurNoSize_Se;

implementation

uses PurNoSize1, PartClass1;

{$R *.dfm}

procedure TPurNoSize_Se.Button1Click(Sender: TObject);
begin

with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.Add('select * from CLLBFY ');
    sql.add('where LBBH like '+''''+edit1.Text+'%'+'''');
    sql.add('      and XH='+''''+'02'+'''');
    sql.add('order by LBBH ');
    active:=true;
  end;
end;

procedure TPurNoSize_Se.Edit1KeyPress(Sender: TObject; var Key: Char);
begin

if key=#13 then
  begin
    button1Click(nil);
  end;
end;

procedure TPurNoSize_Se.DBGrid1DblClick(Sender: TObject);
begin

if query1.Active then
  begin
    if query1.recordcount>0 then
      begin
        PurNoSize.CGDet.edit;
        IF PurNoSize.CGDet.fieldbyname('Memo').isnull then
          begin
            PurNoSize.CGDet.fieldbyname('Memo').value:=query1.fieldbyname('LBBH').value;
          end
          else
            begin
              PurNoSize.CGDet.fieldbyname('Memo').value:=PurNoSize.CGDet.fieldbyname('Memo').value+query1.fieldbyname('LBBH').value;
            end;
      end;
  end;
end;

procedure TPurNoSize_Se.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin

if key=#13 then
  DBGrid1DblClick(nil);
end;

procedure TPurNoSize_Se.FormDestroy(Sender: TObject);
begin
PurNoSize_Se:=nil;
end;

procedure TPurNoSize_Se.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
query1.active:=false;
end;

procedure TPurNoSize_Se.Button2Click(Sender: TObject);
begin

if PartClass<>nil then
  begin
    PartClass.show;
    PartClass.windowstate:=wsmaximized;
  end
  else
    begin
      PartClass:=TPartClass.create(self);
      PartClass.show;
    end;
close;
end;

end.
