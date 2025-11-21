unit DelOther_YY1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls, IniFiles;

type
  TDelOther_YY = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Edit2: TEdit;
    DBGrid1: TDBGrid;
    DS1: TDataSource;
    Query1: TQuery;
    Query1YYBH: TStringField;
    Query1YWSM: TStringField;
    Query1ZWSM: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    IsAllowBU:Boolean;
    procedure ReadIni();
  public
    { Public declarations }
  end;

var
  DelOther_YY: TDelOther_YY;

implementation

uses DelOther1, main1, FunUnit;

{$R *.dfm}

procedure TDelOther_YY.ReadIni();
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
      UserIDList:=MyIni.ReadString('UserID','Production_N321_DelOther','15474,08688,36994,16255,01775,001178');
    finally
      MyIni.Free;
    end;
  end;
  tmpUserIDList:=FuncObj.SplitString(UserIDList,',');
  index:=tmpUserIDList.IndexOf(main.Edit1.Text);
  if index>=0 then IsAllowBU:=true;
  tmpUserIDList.Free;
end;

procedure TDelOther_YY.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TDelOther_YY.Button1Click(Sender: TObject);
begin
  with query1 do
  begin
    active:=false;
    sql.clear;
    sql.Add('select * from SCBLYY');
    sql.add('where YYBH like '+''''+edit1.Text+'%'+'''');
    sql.add('      and YWSM like '+''''+'%'+edit2.Text+'%'+'''');
    sql.add('      and YN<>'+''''+'5'+'''');
    //20141020 企劃開會決議只有帳號 A1:15474,08688  A2:36994   b1:16255   b2:01775 能開 "Z07=補" 補料原因 為特殊使用
    if IsAllowBU=false then
      sql.add('      and YYBH<>''Z07'' ');
    sql.add('order by YYBH');
    active:=true;
  end;
end;

procedure TDelOther_YY.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    edit2.setfocus
end;

procedure TDelOther_YY.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    button1click(nil);
end;

procedure TDelOther_YY.DBGrid1DblClick(Sender: TObject);
begin
  if query1.recordcount>0 then
  begin
    with DelOther.DelDet do
      begin
        edit;
        FieldByName('YYBH').Value:=query1.fieldbyname('YYBH').Value;
        FieldByName('YWSM').Value:=query1.fieldbyname('YWSM').Value;
        FieldByName('ZWSM').Value:=query1.fieldbyname('ZWSM').Value;
      end;
    close;
  end;
end;

procedure TDelOther_YY.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    DBGrid1Dblclick(nil);
end;

procedure TDelOther_YY.FormDestroy(Sender: TObject);
begin
  DelOther_YY:=nil;
end;

procedure TDelOther_YY.FormCreate(Sender: TObject);
begin
  IsAllowBU:=false;
  ReadIni();
end;

procedure TDelOther_YY.FormShow(Sender: TObject);
begin
  main.FormLanguage(Pointer(self),self.Name);
end;

end.
