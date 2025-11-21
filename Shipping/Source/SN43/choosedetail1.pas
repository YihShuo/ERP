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
    DataSource1: TDataSource;
    Query1: TQuery;
    Query1YYBH: TStringField;
    Query1YWSM: TStringField;
    Query1ZWSM: TStringField;
    Query1VWSM: TStringField;
    Query1class: TStringField;
    Edit1: TEdit;
    Label1: TLabel;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure Button3Click(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ChooseDetail: TChooseDetail;

implementation

uses ShipDateConfirm1;

{$R *.dfm}

procedure TChooseDetail.Button1Click(Sender: TObject);
begin
  ShipDateConfirm.query3.Edit;
  ShipDateConfirm.query3.FieldByName('country').Value := query1.FieldByName('yybh').Value;
  ShipDateConfirm.query3.FieldByName('ywsm').Value := query1.FieldByName('ywsm').Value;
  close;
end;

procedure TChooseDetail.Button2Click(Sender: TObject);
begin
  ShipDateConfirm.query3.Edit;
  ShipDateConfirm.query3.FieldByName('country').Value := '';
  ShipDateConfirm.query3.FieldByName('ywsm').Value :='';  
  close;
end;

procedure TChooseDetail.FormCreate(Sender: TObject);
begin
  with query1 do
  begin
    Active := False;
    SQL.Clear;
    SQL.Add('select * from shoetestDetail where class=''shipping''');
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

procedure TChooseDetail.Button3Click(Sender: TObject);
begin
  with query1 do
  begin
    Active := False;
    SQL.Clear;
    SQL.Add('select * from shoetestDetail where class=''shipping'' and ywsm like '''+edit1.text+''' +''%''  ');
    Active := True;
  end;
end;

procedure TChooseDetail.DBGridEh1DblClick(Sender: TObject);
var
  i,j:integer;
begin
  with ShipDateConfirm.query3 do
  begin
    ShipDateConfirm.query3.fieldbyname('testno').AsString:=ShipDateConfirm.Query1.fieldbyname('testno').AsString;
    edit;
    for j:=0 to 1 do
      for i:=0 to 2 do
       if query1.FieldCount>0 then
       begin
          ShipDateConfirm.query3.fields[j].AsString:=query1.Fields[j].AsString;
          break;
       end;
    post;
    insert;
  end;
end;
end.
