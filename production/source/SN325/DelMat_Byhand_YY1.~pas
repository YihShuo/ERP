unit DelMat_Byhand_YY1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls;

type
  TDelMat_Byhand_YY = class(TForm)
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
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DelMat_Byhand_YY: TDelMat_Byhand_YY;

implementation

uses DelMat_Byhand1, main1;

{$R *.dfm}

procedure TDelMat_Byhand_YY.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TDelMat_Byhand_YY.Button1Click(Sender: TObject);
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
    if ((main.Edit1.Text<>'15474') and (main.Edit1.Text<>'08688') and (main.Edit1.Text<>'36994') and (main.Edit1.Text<>'16255') and (main.Edit1.Text<>'01775')) then
    begin
      sql.add('      and YYBH<>''Z07'' ');
    end;
    sql.add('order by YYBH');
    active:=true;
  end;
end;

procedure TDelMat_Byhand_YY.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    edit2.setfocus
end;

procedure TDelMat_Byhand_YY.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    button1click(nil);
end;

procedure TDelMat_Byhand_YY.DBGrid1DblClick(Sender: TObject);
begin
  if query1.recordcount>0 then
  begin
    with DelMat_Byhand.DelDet do
      begin
        edit;
        FieldByName('YYBH').Value:=query1.fieldbyname('YYBH').Value;
        FieldByName('YWSM').Value:=query1.fieldbyname('YWSM').Value;
        FieldByName('ZWSM').Value:=query1.fieldbyname('ZWSM').Value;
      end;
    close;
  end;
end;

procedure TDelMat_Byhand_YY.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    DBGrid1Dblclick(nil);
end;

procedure TDelMat_Byhand_YY.FormDestroy(Sender: TObject);
begin
  DelMat_Byhand_YY:=nil;
end;

procedure TDelMat_Byhand_YY.FormShow(Sender: TObject);
begin
  main.FormLanguage(Pointer(self),self.Name);
end;

end.
