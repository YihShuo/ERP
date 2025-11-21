unit Replenish_Stamp_CL1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBTables, DB, GridsEh, DBGridEh, StdCtrls, ExtCtrls;

type
  TReplenish_Stamp_CL = class(TForm)
    Panel1: TPanel;
    Button1: TButton;
    DBGridEh1: TDBGridEh;
    DS1: TDataSource;
    Query1: TQuery;
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    Edit3: TEdit;
    Query1CLBH: TStringField;
    Query1CLLB: TStringField;
    Query1YWPM: TStringField;
    Query1ZWPM: TStringField;
    Query1DWBH: TStringField;
    Query1CLZMLB: TStringField;
    Label3: TLabel;
    Edit4: TEdit;
    Query1ZLBH: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure DBGridEh1KeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Replenish_Stamp_CL: TReplenish_Stamp_CL;

implementation

uses Replenish_Stamp1, main1;

{$R *.dfm}

procedure TReplenish_Stamp_CL.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TReplenish_Stamp_CL.FormDestroy(Sender: TObject);
begin
  Replenish_Stamp_CL:=nil;
end;

procedure TReplenish_Stamp_CL.Button1Click(Sender: TObject);
begin
  with Query1 do
  begin
    active:=false;
    SQL.Clear;
    SQL.Add('select ZLZLS2.ZLBH,ZLZLS2.CLBH,CLZL.CLLB,CLZL.YWPM,CLZL.ZWPM,CLZL.DWBH,CLZL.CLZMLB from ZLZLS2 ');
    SQL.Add('left join CLZL on CLZL.CLDH = ZLZLS2.CLBH ');
    SQL.Add('where 1=1 ');
    SQL.Add('and ZLZLS2.ZLBH like '''+Edit4.Text+'%'' ');
    if Edit1.Text<>'' then
      SQL.Add('and CLZL.CLDH like '''+Edit1.Text+'%'' ');
    if Edit2.Text<>'' then
      SQL.Add('and CLZL.YWPM  like ''%'+Edit2.Text+'%'' ');
    if Edit3.Text<>'' then
      SQL.Add('and CLZL.YWPM  like ''%'+Edit3.Text+'%'' ');
    SQL.Add('group by ZLZLS2.ZLBH,ZLZLS2.CLBH,CLZL.CLLB,CLZL.YWPM,CLZL.ZWPM,CLZL.DWBH,CLZL.CLZMLB ');
    SQL.Add('order by ZLZLS2.CLBH ');
    active:=true;
  end;
end;

procedure TReplenish_Stamp_CL.DBGridEh1DblClick(Sender: TObject);
begin
  if Query1.Recordcount>0 then
  begin
    with Replenish_Stamp.BLDet do
      begin
        Insert;
        FieldByName('CLBH').Value:=Query1.fieldbyname('CLBH').Value;
        FieldByName('YWPM').Value:=Query1.fieldbyname('YWPM').Value;
        FieldByName('DWBH').Value:=Query1.fieldbyname('DWBH').Value;
        FieldByName('SCBH').Value:=Query1.fieldbyname('ZLBH').Value;
      end;
    //Close;
  end;
end;

procedure TReplenish_Stamp_CL.Edit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key=#13 then Edit2.setfocus;
end;

procedure TReplenish_Stamp_CL.Edit2KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key=#13 then Edit3.setfocus;
end;

procedure TReplenish_Stamp_CL.Edit3KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key=#13 then Button1Click(nil);
end;

procedure TReplenish_Stamp_CL.DBGridEh1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key=#13 then DBGridEh1DblClick(nil);
end;

procedure TReplenish_Stamp_CL.FormShow(Sender: TObject);
begin
  main.FormLanguage(Pointer(self),self.Name);
end;

end.
