unit ReplenishDel_YY1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls, IniFiles,
  GridsEh, DBGridEh;

type
  TReplenishDel_YY = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Edit2: TEdit;
    DS1: TDataSource;
    Query1: TQuery;
    Query1YYBH: TStringField;
    Query1YWSM: TStringField;
    Query1ZWSM: TStringField;
    DBGridEh1: TDBGridEh;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure DBGridEh1KeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
  private
    IsAllowBU:Boolean;
    { Private declarations }
    procedure ReadIni();
  public
    { Public declarations }
  end;

var
  ReplenishDel_YY: TReplenishDel_YY;

implementation

uses ReplenishDel1,main1,FunUnit;

{$R *.dfm}
procedure TReplenishDel_YY.ReadIni();
var MyIni :Tinifile;
    AppDir,UserIDList:String;
    tmpUserIDList:TStringlist;
    index:integer;
begin
  AppDir:=ExtractFilePath(Application.ExeName);
  UserIDList:='15474,08688,36994,16255,01775,001178';
  if FileExists(AppDir+'\ComName.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ComName.ini');
      UserIDList:=MyIni.ReadString('UserID','Production_N24_ReplenishDel','15474,08688,36994,16255,01775,001178');
    finally
      MyIni.Free;
    end;
  end;
  tmpUserIDList:=FuncObj.SplitString(UserIDList,',');
  index:=tmpUserIDList.IndexOf(main.Edit1.Text);
  if index>=0 then IsAllowBU:=true;
  tmpUserIDList.Free;
end;

procedure TReplenishDel_YY.FormDestroy(Sender: TObject);
begin
  ReplenishDel_YY:=nil;
end;

procedure TReplenishDel_YY.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

action:=cafree;
end;

procedure TReplenishDel_YY.Button1Click(Sender: TObject);

begin
  //
  with query1 do
  begin
    active:=false;
    sql.clear;
    sql.Add('select * from SCBLYY');
    sql.add('where YYBH like '+''''+edit1.Text+'%'+'''');
    sql.add('      and YWSM like '+''''+'%'+edit2.Text+'%'+'''');
    sql.add('      and YN<>'+''''+'5'+'''');
    //20141020 總企劃開會決議只有帳號 A1:15474, 08688  A2:36994   b1:16255   b2:01775 ,tybach 001178 能開 "Z07=補" 補料原因 為特殊使用
    if IsAllowBU=false then
      sql.add('      and YYBH<>''Z07'' ');
    sql.add('order by YYBH');
    //funcObj.WriteErrorLog(sql.Text);
    active:=true;
  end;
end;

procedure TReplenishDel_YY.Edit1KeyPress(Sender: TObject; var Key: Char);
begin

if key=#13 then
  edit2.setfocus
end;

procedure TReplenishDel_YY.Edit2KeyPress(Sender: TObject; var Key: Char);
begin

if key=#13 then
button1click(nil);
end;

procedure TReplenishDel_YY.FormCreate(Sender: TObject);
begin
  IsAllowBU:=false;
  ReadIni();
end;

procedure TReplenishDel_YY.DBGridEh1DblClick(Sender: TObject);
begin
  if query1.recordcount>0 then
  begin
    with ReplenishDel.BLReason do
      begin
        edit;
        FieldByName('YYBH').Value:=query1.fieldbyname('YYBH').Value;
        FieldByName('YWSM').Value:=query1.fieldbyname('YWSM').Value;
        FieldByName('ZWSM').Value:=query1.fieldbyname('ZWSM').Value;
      end;
    close;
  end;
end;

procedure TReplenishDel_YY.DBGridEh1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key=#13 then
    DBGridEh1DblClick(nil);
end;

procedure TReplenishDel_YY.FormShow(Sender: TObject);
begin
  main.FormLanguage(Pointer(self),self.Name);
end;

end.
