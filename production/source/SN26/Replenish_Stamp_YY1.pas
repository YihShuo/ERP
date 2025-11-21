unit Replenish_Stamp_YY1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls;

type
  TReplenish_Stamp_YY = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Edit2: TEdit;
    DBGridEh1: TDBGrid;
    DS1: TDataSource;
    Query1: TQuery;
    Query1YYBH: TStringField;
    Query1YWSM: TStringField;
    Query1ZWSM: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure DBGridEh1KeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Replenish_Stamp_YY: TReplenish_Stamp_YY;

implementation

uses Replenish_Stamp1, main1;

{$R *.dfm}

procedure TReplenish_Stamp_YY.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TReplenish_Stamp_YY.FormDestroy(Sender: TObject);
begin
  Replenish_Stamp_YY:=nil;
end;

procedure TReplenish_Stamp_YY.Button1Click(Sender: TObject);
begin
  with Query1 do
  begin
    active:=false;
    SQL.Clear;
    SQL.Add('select * from STBLYY');
    SQL.Add('where 1=1 ');
    if Edit1.Text<>'' then
      SQL.Add('and YYBH like '''+Edit1.Text+'%'' ');
    if Edit2.Text<>'' then
      SQL.Add('and YWSM like ''%'+Edit2.Text+'%'' ');
    SQL.Add('order by YYBH');
    active:=true;
  end;
end;

procedure TReplenish_Stamp_YY.DBGridEh1DblClick(Sender: TObject);
begin
  if Query1.recordcount>0 then
  begin
    with Replenish_Stamp.BLMas do
      begin
        Edit;
        FieldByName('YYBH').Value:=Query1.fieldbyname('YYBH').Value;
        FieldByName('YWSM').Value:=Query1.fieldbyname('YWSM').Value;
      end;
    close;
  end;
end;

procedure TReplenish_Stamp_YY.Edit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key=#13 then Edit2.setfocus;
end;

procedure TReplenish_Stamp_YY.Edit2KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key=#13 then Button1Click(nil);
end;

procedure TReplenish_Stamp_YY.DBGridEh1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key=#13 then DBGridEh1DblClick(nil);
end;

procedure TReplenish_Stamp_YY.FormShow(Sender: TObject);
begin
  main.FormLanguage(Pointer(self),self.Name);
end;

end.
