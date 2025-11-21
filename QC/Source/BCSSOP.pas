unit BCSSOP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBTables, Grids, DBGrids, DB, StdCtrls, ComCtrls,
  Buttons;

type
  TBCSSO = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    shippingm: TQuery;
    shippingd: TQuery;
    sized: TQuery;
    smds: TDataSource;
    sddds: TDataSource;
    sizeds: TDataSource;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    UpdateSQL2: TUpdateSQL;
    BB1: TBitBtn;
    BB4: TBitBtn;
    BB5: TBitBtn;
    BB6: TBitBtn;
    bbt6: TBitBtn;
    BB7: TBitBtn;
    BBT1: TBitBtn;
    BBT2: TBitBtn;
    BBT3: TBitBtn;
    BBT4: TBitBtn;
    Panel4: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Edit1: TEdit;
    keyindate: TDateTimePicker;
    Edit2: TEdit;
    Memo1: TMemo;
    Label4: TLabel;
    QB: TButton;
    ordercb: TComboBox;
    Query1: TQuery;
    Label6: TLabel;
    classcb: TComboBox;
    shippingdSize: TStringField;
    shippingdClass: TStringField;
    shippingdQTY: TIntegerField;
    sizedsn: TAutoIncField;
    sizedxiexing: TStringField;
    sizedSheHao: TStringField;
    sizedARTICLE: TStringField;
    sizedsize: TStringField;
    sizedCLASS: TStringField;
    sizedQTY: TIntegerField;
    sizedGSBH: TStringField;
    sizedcreatdate: TDateTimeField;
    sizedcreatuser: TStringField;
    sizeduserdate: TDateTimeField;
    sizeduserID: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure BB1Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BCSSO: TBCSSO;

implementation

uses main1;

{$R *.dfm}

procedure TBCSSO.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  BCSSO:=nil;
  action:=Cafree;
end;

procedure TBCSSO.FormCreate(Sender: TObject);
var y,m,d:word;
srno:string;
begin
  srno:='';
  keyindate.Date:=now();
  edit2.Text:=main.edit1.Text;

  decodedate(date,y,m,d);
  srno:='O'+inttostr(y);
  if length(inttostr(m))=1 then
    srno:=srno+'0'+inttostr(m)
  else
    srno:=srno+inttostr(m);

  if length(inttostr(d))=1 then
    srno:=srno+'0'+inttostr(d)
  else
    srno:=srno+inttostr(d);

  with query1 do
  begin
    Active:=false;
    sql.Clear;
    sql.Add('select qwno from qc_whd');
    sql.Add('where substring(qwno,1,9)= '+''''+srno+'''');
    sql.Add('order by qwno');
    sql.Add('');
    sql.Add('');
    active:=true;
  end;
  query1.First;
  ordercb.Items.Clear;
  while not query1.Eof do
  begin
    ordercb.Items.Add(query1.fieldbyname('qwno').value);
    query1.Next;
  end;
  ordercb.ItemIndex:=0;
end;

procedure TBCSSO.DBGrid1DblClick(Sender: TObject);
begin
//±a¥X¿ï¾Ü®Ø
end;

procedure TBCSSO.BB1Click(Sender: TObject);
begin
  qb.Visible:=true;
  ordercb.Visible:=true;
  edit1.Visible:=false;
end;

procedure TBCSSO.BB4Click(Sender: TObject);
begin
  bb1.Enabled:=false;
  bb5.Enabled:=true;
  bb6.Enabled:=true;
  edit1.Visible:=true;
  ordercb.Visible:=false;
  qb.Visible:=false;
end;

end.
