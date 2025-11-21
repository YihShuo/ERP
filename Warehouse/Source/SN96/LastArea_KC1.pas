unit LastArea_KC1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ExtCtrls;

type
  TLastArea_KC = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    Edit2: TEdit;
    EDIT1: TEdit;
    DBGridEh1: TDBGridEh;
    DS1: TDataSource;
    Query1: TQuery;
    Query1CKBH: TStringField;
    Query1KCBH: TStringField;
    Query1KCMC: TStringField;
    Query1USERDATE: TDateTimeField;
    Query1USERID: TStringField;
    Query1YN: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGridEh1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  LastArea_KC: TLastArea_KC;

implementation
  uses LastArea1, main1;
{$R *.dfm}

procedure TLastArea_KC.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=CaFree;
end;

procedure TLastArea_KC.FormDestroy(Sender: TObject);
begin
  LastArea_KC:=nil;
end;

procedure TLastArea_KC.Button1Click(Sender: TObject);
var CKBH:String;
begin
  CKBH:=LastArea.CBX1.Text;
  if CKBH='' then CKBH:=LastArea.MatArea.FieldByName('CKBH').AsString;
  with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select KCZL.* from LastKCZL KCZL ');
    sql.add('left join LastKCCK KCCK on KCCK.CKBH=KCZL.CKBH ');
    sql.add('where KCZL.KCBH like '''+edit1.text+'%'' ');
    sql.add('and KCZL.KCMC like ''%'+edit2.text+'%'' ');
    sql.add('and KCCK.GSBH='''+main.edit2.Text+'''');
    sql.Add('and KCZL.CKBH='''+CKBH+'''');
    sql.add('order by KCZL.CKBH,KCZL.KCBH');
    active:=true;
  end;

end;

procedure TLastArea_KC.DBGridEh1DblClick(Sender: TObject);
begin
  if query1.recordcount>0 then
  begin
    with LastArea.MatArea do
      begin
        edit;
        fieldbyname('CKBH').value:=query1.fieldbyname('CKBH').value;
        fieldbyname('KCBH').value:=query1.fieldbyname('KCBH').value;
        fieldbyname('KCMC').value:=query1.fieldbyname('KCMC').value;
      end;
    query1.Active:=false;
    close;
  end;
end;

procedure TLastArea_KC.FormShow(Sender: TObject);
begin
  main.FormLanguage(Pointer(self),self.Name);
end;

procedure TLastArea_KC.DBGridEh1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
  DBGridEh1DblClick(nil);
end;

end.
