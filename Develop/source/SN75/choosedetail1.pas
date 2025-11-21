unit choosedetail1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ExtCtrls;

type
  TChooseDetail = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Button1: TButton;
    Button2: TButton;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel6: TPanel;
    DBGridEh1: TDBGridEh;
    Panel5: TPanel;
    Panel7: TPanel;
    DBGridEh2: TDBGridEh;
    DataSource1: TDataSource;
    Query1: TQuery;
    Query1YYBH: TStringField;
    Query1YWSM: TStringField;
    Query1ZWSM: TStringField;
    Query1VWSM: TStringField;
    DataSource2: TDataSource;
    Query2: TQuery;
    Query2YYBH: TStringField;
    Query2YWSM: TStringField;
    Query2ZWSM: TStringField;
    Query2VWSM: TStringField;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure DBGridEh2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ChooseDetail: TChooseDetail;

implementation

uses PaperRoom_shoeTest;

{$R *.dfm}

procedure TChooseDetail.Button1Click(Sender: TObject);
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

  close;
end;

procedure TChooseDetail.Button2Click(Sender: TObject);
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

procedure TChooseDetail.FormCreate(Sender: TObject);
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

procedure TChooseDetail.DBGridEh1DrawColumnCell(Sender: TObject;
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

procedure TChooseDetail.DBGridEh2DrawColumnCell(Sender: TObject;
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

end.
