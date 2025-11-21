unit DetailChoose1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DB, DBTables, GridsEh, DBGridEh;

type
  TDetailChoose = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Button1: TButton;
    Button2: TButton;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    DBGridEh1: TDBGridEh;
    DBGridEh2: TDBGridEh;
    Query1: TQuery;
    Query2: TQuery;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    Query2YYBH: TStringField;
    Query2YWSM: TStringField;
    Query2ZWSM: TStringField;
    Query2VWSM: TStringField;
    Query1YYBH: TStringField;
    Query1YWSM: TStringField;
    Query1ZWSM: TStringField;
    Query1VWSM: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure DBGridEh2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DetailChoose: TDetailChoose;

implementation

uses PaperRoom_shoeTest;

{$R *.dfm}

procedure TDetailChoose.FormCreate(Sender: TObject);
begin
  with query1 do
  begin
    Active := False;
    SQL.Clear;
    SQL.Add('select * from shoetestDetail where left(YYBH,2)=''MD''');
    Active := True;
  end;
  with query2 do
  begin
    Active := False;
    SQL.Clear;
    SQL.Add('select * from shoetestDetail where left(YYBH,2)=''BW''');
    Active := True;
  end;
end;

procedure TDetailChoose.DBGridEh1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
     if ((State = [gdSelected]) or (State=[gdSelected,gdFocused])) then
    begin
      DBGridEh1.Canvas.Font.Color :=ClYellow;
      DBGridEh1.Canvas.Brush.Color :=clblue;
      DBGridEh1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
    end; 
end;

procedure TDetailChoose.DBGridEh2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
     if ((State = [gdSelected]) or (State=[gdSelected,gdFocused])) then
    begin
      DBGridEh2.Canvas.Font.Color :=ClYellow;
      DBGridEh2.Canvas.Brush.Color :=clblue;
      DBGridEh2.DefaultDrawColumnCell(Rect,DataCol,Column,State);
    end;
end;

procedure TDetailChoose.Button1Click(Sender: TObject);
begin
  PaperRoom.sizeqry.Edit;
  PaperRoom.sizeqry.FieldByName('depname').Value := query1.FieldByName('yybh').Value;
  PaperRoom.sizeqry.FieldByName('ywsm').Value := query1.FieldByName('ywsm').Value;
  PaperRoom.sizeqry.FieldByName('ywsm_1').Value := query2.FieldByName('ywsm').Value;
  PaperRoom.sizeqry.FieldByName('zwsm').Value := query1.FieldByName('zwsm').Value;
  PaperRoom.sizeqry.FieldByName('zwsm_1').Value := query2.FieldByName('zwsm').Value;
  PaperRoom.sizeqry.FieldByName('vwsm').Value := query1.FieldByName('vwsm').Value;
  PaperRoom.sizeqry.FieldByName('vwsm_1').Value := query2.FieldByName('vwsm').Value;
  PaperRoom.sizeqry.FieldByName('parts').Value := query2.FieldByName('yybh').Value;
  query1.Active:=false;
  query2.Active:=false;
  close;
end;

procedure TDetailChoose.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   action:=Cafree;
end;

procedure TDetailChoose.Button2Click(Sender: TObject);
begin
  PaperRoom.sizeqry.Edit;
  PaperRoom.sizeqry.FieldByName('depname').Value := '';
  PaperRoom.sizeqry.FieldByName('ywsm').Value := '';
  PaperRoom.sizeqry.FieldByName('ywsm_1').Value := '';
  PaperRoom.sizeqry.FieldByName('zwsm').Value := '';
  PaperRoom.sizeqry.FieldByName('zwsm_1').Value := '';
  PaperRoom.sizeqry.FieldByName('vwsm').Value := '';
  PaperRoom.sizeqry.FieldByName('vwsm_1').Value := '';
  PaperRoom.sizeqry.FieldByName('parts').Value := '';
  close;
end;

end.
