unit ShoesPartSegmentation1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, GridsEh, DBGridEh, ExtCtrls, DB, DBTables;

type
  TShoesPartSegmentation = class(TForm)
    Panel1: TPanel;
    DBGridEh1: TDBGridEh;
    BC2: TBitBtn;
    BC6: TBitBtn;
    BC3: TBitBtn;
    BC4: TBitBtn;
    BC5: TBitBtn;
    BB1: TBitBtn;
    BB7: TBitBtn;
    Panel2: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Query1: TQuery;
    DataSource1: TDataSource;
    UpdateSQL1: TUpdateSQL;
    Query1XieXing: TStringField;
    Query1Part1: TStringField;
    Query1Part2: TStringField;
    Query1YN: TIntegerField;
    procedure BB1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure BC2Click(Sender: TObject);
    procedure BC3Click(Sender: TObject);
    procedure BC4Click(Sender: TObject);
    procedure BC5Click(Sender: TObject);
    procedure BC6Click(Sender: TObject);
    procedure BB7Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ShoesPartSegmentation: TShoesPartSegmentation;

implementation

{$R *.dfm}

procedure TShoesPartSegmentation.BB1Click(Sender: TObject);
begin
  Panel2.Visible := true;
end;

procedure TShoesPartSegmentation.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TShoesPartSegmentation.FormDestroy(Sender: TObject);
begin
  ShoesPartSegmentation := Nil;
end;

procedure TShoesPartSegmentation.BC2Click(Sender: TObject);
begin
  with Query1 do
  begin
    RequestLive := true;
    CachedUpdates := true;
    First;
    Insert;
  end;

  BC5.Enabled := true;
  BC6.Enabled := true;
end;

procedure TShoesPartSegmentation.BC3Click(Sender: TObject);
begin
  with Query1 do
  begin
    RequestLive := true;
    CachedUpdates := true;
    Edit;
    FieldByName('YN').Value := 0;
  end;

  BC5.Enabled := true;
  BC6.Enabled := true;
end;

procedure TShoesPartSegmentation.BC4Click(Sender: TObject);
begin
  with Query1 do
  begin
    RequestLive := true;
    CachedUpdates := true;
    Edit;
  end;

  BC5.Enabled := true;
  BC6.Enabled := true;
end;

procedure TShoesPartSegmentation.BC5Click(Sender: TObject);
var
  i: integer;
begin
  try
    Query1.First;
    for i := 1 to Query1.RecordCount do
    begin
      case Query1.UpdateStatus of
        usInserted:
        begin
          if (Query1.FieldByName('XieXing').IsNull OR Query1.FieldByName('Part1').IsNull OR Query1.FieldByName('Part2').IsNull) then
          begin
            Query1.Delete;
          end
          else begin
            UpdateSQL1.Apply(ukInsert);
          end;
        end;

        usModified:
        begin
          if (Query1.FieldByName('YN').Value = 0) then
          begin
            UpdateSQL1.Apply(ukDelete);
          end
          else begin
            UpdateSQL1.Apply(ukModify);
          end;
        end;
      end;

      Query1.Next;
    end;

    Query1.Active := false;
    Query1.CachedUpdates := false;
    Query1.RequestLive := false;
    Query1.Active := true;
    BC5.enabled := false;
    BC6.enabled := false;
  except
    MessageDlg('Have wrong, can not save data!', mtWarning, [mbyes], 0);
  end;
end;

procedure TShoesPartSegmentation.BC6Click(Sender: TObject);
begin
  with Query1 do
  begin
    Active := false;
    RequestLive := false;
    CachedUpdates := false;
    Active := true;
  end;

  BC5.Enabled := false;
  BC6.Enabled := false;
end;

procedure TShoesPartSegmentation.BB7Click(Sender: TObject);
begin
  Close;
end;

procedure TShoesPartSegmentation.Button1Click(Sender: TObject);
begin
  with Query1 do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT *, 1 AS YN FROM ShoesPartSegmentation WHERE XieXing LIKE ''' + Edit1.Text + '%'' ORDER BY XieXing');
    Active := true;
  end;
end;

procedure TShoesPartSegmentation.FormCreate(Sender: TObject);
begin
  Button1Click(Nil);
end;

procedure TShoesPartSegmentation.FormShow(Sender: TObject);
begin
  DBGridEh1.SetFocus;
end;

end.
