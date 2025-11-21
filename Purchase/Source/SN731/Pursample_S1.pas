unit Pursample_S1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls;

type
  TPursample_S = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Edit2: TEdit;
    DBGrid1: TDBGrid;
    DS1: TDataSource;
    Query1: TQuery;
    Query1zsdh: TStringField;
    Query1zsjc: TStringField;
    Query1zsywjc: TStringField;
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Button1Click(Sender: TObject);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Pursample_S: TPursample_S;

implementation

uses PurSample_IM1;



{$R *.dfm}

procedure TPursample_S.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
 edit2.SetFocus;
end;

procedure TPursample_S.Button1Click(Sender: TObject);
begin
with query1 do
  begin
    active:=false;
    sql.clear;
    sql.Add('select *  from ZSZL ');
    sql.add('where ZSDH like ');
    sql.add(''''+edit1.Text+'%'+'''');
    sql.add('and ZSYWJC like ');
    sql.add(''''+'%'+edit2.Text+'%'+'''');
    sql.add('order by ZSDH');
    active:=true;
  end;
end;

procedure TPursample_S.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
 if key=#13 then
  button1.Click;
end;

procedure TPursample_S.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
    DBGrid1DblClick(nil);
end;

procedure TPursample_S.DBGrid1DblClick(Sender: TObject);
begin
if query1.recordcount>0 then
  begin
      begin
        PurSample_IM.Edit8.Text:=query1.fieldbyname('ZSDH').value;
        PurSample_IM.Edit9.Text:=query1.fieldbyname('ZSYWJC').value;
      end;
    close;
  end;
end;

end.
