unit Replenish_Stamp_SCBH1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls;

type
  TReplenish_Stamp_SCBH = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    DBGridEh1: TDBGrid;
    Query1: TQuery;
    DS1: TDataSource;
    Label2: TLabel;
    Edit2: TEdit;
    Query1DDBH: TStringField;
    Query1GSBH: TStringField;
    Query1Article: TStringField;
    Query1KHPO: TStringField;
    Query1Pairs: TIntegerField;
    Query1DDZT: TStringField;
    Query1Shipdate: TDateTimeField;
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
  Replenish_Stamp_SCBH: TReplenish_Stamp_SCBH;

implementation

uses main1, Replenish_Stamp1;

{$R *.dfm}

procedure TReplenish_Stamp_SCBH.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TReplenish_Stamp_SCBH.FormDestroy(Sender: TObject);
begin
  Replenish_Stamp_SCBH:=nil;
end;

procedure TReplenish_Stamp_SCBH.Button1Click(Sender: TObject);
begin
  if ((Edit1.Text='') and (Edit2.Text='')) then
  begin
    Showmessage('Please input DDBH or Article.');
    Abort;
  end;
  //
  with Query1 do
  begin
    active:=false;
    SQL.Clear;
    SQL.Add('select DDBH, GSBH, Article, KHPO, Pairs, DDZT, Shipdate');
    SQL.Add('from DDZL');
    SQL.Add('where 1=1');
    if Edit1.Text<>'' then
      SQL.Add('and DDZL.DDBH like '''+Edit1.Text+'%'' ');
    if Edit2.Text<>'' then
      SQL.Add('and DDZL.Article like '''+Edit2.Text+'%'' ');
    SQL.Add('and GSBH='''+main.Edit2.text+''' ');
    //SQL.Add('and DDZL.YN<>''5'' ');
    SQL.Add('order by DDZL.DDBH ');
    active:=true;
  end;
end;

procedure TReplenish_Stamp_SCBH.DBGridEh1DblClick(Sender: TObject);
begin
  if Query1.recordcount>0 then
  begin
    with Replenish_Stamp.BLMas do
      begin
        Edit;
        FieldByName('SCBH').Value:=Query1.fieldbyname('DDBH').Value;
        FieldByName('Article').Value:=Query1.fieldbyname('Article').Value;
        FieldByName('KHPO').Value:=Query1.fieldbyname('KHPO').Value;
        FieldByName('Pairs').Value:=Query1.fieldbyname('Pairs').Value;
        FieldByName('Shipdate').Value:=Query1.fieldbyname('Shipdate').Value;
      end;
    Close;
  end;
end;

procedure TReplenish_Stamp_SCBH.Edit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key=#13 then Edit2.setfocus;
end;

procedure TReplenish_Stamp_SCBH.Edit2KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key=#13 then Button1Click(nil);
end;

procedure TReplenish_Stamp_SCBH.DBGridEh1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key=#13 then DBGridEh1DblClick(nil);
end;

procedure TReplenish_Stamp_SCBH.FormShow(Sender: TObject);
begin
  main.FormLanguage(Pointer(self),self.Name);
end;

end.
