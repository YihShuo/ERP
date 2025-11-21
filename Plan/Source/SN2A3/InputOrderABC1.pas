unit InputOrderABC1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GridsEh, DBGridEh, StdCtrls, Buttons, ExtCtrls, DB, DBTables;

type
  TInputOrderABC = class(TForm)
    Panel1: TPanel;
    BB2: TBitBtn;
    BB3: TBitBtn;
    BB4: TBitBtn;
    BB5: TBitBtn;
    BB6: TBitBtn;
    BB7: TBitBtn;
    BB1: TBitBtn;
    BBT1: TBitBtn;
    BBT2: TBitBtn;
    BBT3: TBitBtn;
    BBT4: TBitBtn;
    Panel2: TPanel;
    Qry1: TQuery;
    DS1: TDataSource;
    Qry1DDBH: TStringField;
    Qry1ABC: TStringField;
    Qry1USERID: TStringField;
    Qry1USERDATE: TStringField;
    Qry1YN: TStringField;
    Panel3: TPanel;
    DB1: TDBGridEh;
    Order_LB: TLabel;
    Order_ED: TEdit;
    ABC_LB: TLabel;
    ABC_CB: TComboBox;
    Button1: TButton;
    UpSQL1: TUpdateSQL;
    TmpQry: TQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure BB1Click(Sender: TObject);
    procedure BB7Click(Sender: TObject);
    procedure BBT1Click(Sender: TObject);
    procedure BBT2Click(Sender: TObject);
    procedure BBT3Click(Sender: TObject);
    procedure BBT4Click(Sender: TObject);
    procedure BB2Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB3Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DB1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  InputOrderABC: TInputOrderABC;
  NDate:TDate;
implementation

uses main1;

{$R *.dfm}

procedure TInputOrderABC.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TInputOrderABC.FormDestroy(Sender: TObject);
begin
  InputOrderABC:= Nil;
end;

procedure TInputOrderABC.BB1Click(Sender: TObject);
begin
 panel2.Visible:=true;
end;

procedure TInputOrderABC.BB7Click(Sender: TObject);
begin
  close;
end;

procedure TInputOrderABC.BBT1Click(Sender: TObject);
begin
  Qry1.First;
end;

procedure TInputOrderABC.BBT2Click(Sender: TObject);
begin
  Qry1.Prior;
end;

procedure TInputOrderABC.BBT3Click(Sender: TObject);
begin
  Qry1.Next;
end;

procedure TInputOrderABC.BBT4Click(Sender: TObject);
begin
  Qry1.Last;
end;

procedure TInputOrderABC.BB2Click(Sender: TObject);
begin
with Qry1 do
  begin
    requestlive:=true;
    cachedupdates:=true;
    insert;
  end;
BB5.Enabled:=true;
BB6.Enabled:=true;
end;

procedure TInputOrderABC.BB5Click(Sender: TObject);
var i:integer;
begin
  Qry1.First;
  while not Qry1.Eof do
  begin
    Qry1.Next;
  end;
 try
  Qry1.first;
  for i:=1 to Qry1.RecordCount do
    begin
      case Qry1.updatestatus of
        usinserted:
          begin
            Qry1.Edit;
            Qry1.FieldByName('USERID').Value:=main.edit1.text;
            Qry1.FieldByName('USERDATE').Value:=formatdatetime('yyyy/MM/dd',NDate);
            Qry1.FieldByName('YN').Value:='1';
            upSQL1.apply(ukinsert);
          end;
        usmodified:
          begin
            if (Qry1.FieldByName('YN').value = 0) then
            begin
              with TmpQry do
              begin
                Active:=false;
                SQL.Clear;
                SQL.Add('Delete from DDZL_ABC where DDBH='''+Qry1.FieldByName('DDBH').AsString+''' ');
              end;
              UpSQL1.Apply(ukDelete);
            end else
            begin
              Qry1.Edit;
              Qry1.FieldByName('USERID').Value:=main.edit1.text;
              Qry1.FieldByName('USERDATE').Value:=formatdatetime('yyyy/MM/dd',NDate);
              upSQL1.apply(ukmodify);
            end;
          end;
    end;
    Qry1.Next;
  end;
 except
  Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
end;
  Qry1.active:=false;
  Qry1.cachedupdates:=false;
  Qry1.requestlive:=false;
  Qry1.active:=true;
  bb5.enabled:=false;
  bb6.enabled:=false;
end;

procedure TInputOrderABC.Button1Click(Sender: TObject);
begin
  with Qry1 do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select * from DDZL_ABC');
    SQL.Add('Where 1=1');
    if Order_ED.text<>'' then
    SQL.Add('And DDBH='''+Order_ED.Text+''' ');
    if ABC_CB.text<>'' then
    SQL.Add('And ABC='''+ABC_CB.Text+''' ');
    Active:=True;
  end;
  Panel2.Visible:=false;
  BB2.Enabled:=true;
  BB3.Enabled:=true;
  BB4.Enabled:=true;
  BBT1.Enabled:=true;
  BBT2.Enabled:=true;
  BBT3.Enabled:=true;
  BBT4.Enabled:=true;
end;

procedure TInputOrderABC.BB4Click(Sender: TObject);
begin
with Qry1 do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
end;

procedure TInputOrderABC.BB3Click(Sender: TObject);
begin
  with Qry1 do
  begin
    cachedupdates:=true;
    requestlive:=true;
    edit;
    fieldbyname('YN').Value:='0';
  end;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
end;

procedure TInputOrderABC.BB6Click(Sender: TObject);
begin
with Qry1 do
  begin
    requestlive:=false;
    cachedupdates:=false;
    active:=false;
    active:=true;
  end;
  BB5.Enabled:=false;
  BB6.Enabled:=false;
end;

procedure TInputOrderABC.FormCreate(Sender: TObject);
begin
  with TmpQry do
  begin
    active:=false;
    sql.Clear;
    sql.add('select getdate() as NDate ');
    active:=true;
    NDate:=fieldbyname('NDate').Value;
    active:=false;
  end;
end;

procedure TInputOrderABC.DB1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if Qry1.FieldByName('YN').AsString='0' then
  begin
    DB1.canvas.font.color:=clred;
  end;
end;

end.
