unit Set_Pur_Delivery1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBTables, DB, GridsEh, DBGridEh, StdCtrls, Buttons, ExtCtrls;

type
  TSet_Pur_Delivery = class(TForm)
    Panel1: TPanel;
    BB1: TBitBtn;
    BB2: TBitBtn;
    BB3: TBitBtn;
    BB4: TBitBtn;
    BB5: TBitBtn;
    BB6: TBitBtn;
    BB7: TBitBtn;
    Panel2: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    DBGridEh1: TDBGridEh;
    Qtemp: TQuery;
    Query1: TQuery;
    Query1SCBH: TStringField;
    Query1Qty: TFloatField;
    Query1YN: TStringField;
    Query1IsCGZLS: TStringField;
    Query1IsKCLLS: TStringField;
    Query1USERID: TStringField;
    Query1USERDATE: TDateTimeField;
    DataSource1: TDataSource;
    UpdateSQL1: TUpdateSQL;
    procedure BB1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Set_Pur_Delivery: TSet_Pur_Delivery;
  sdate,edate,NDate:Tdate;

implementation

uses main1;

{$R *.dfm}

procedure TSet_Pur_Delivery.BB1Click(Sender: TObject);
begin
  Panel2.Visible:=true;
end;

procedure TSet_Pur_Delivery.Button1Click(Sender: TObject);
begin
  with Query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select  top 100 *');
    sql.add('from SCZL');
    sql.Add('where SCBH like ''%'+edit1.Text+'%'' ');
    active:=true;
   // memo1.text:=sql.text;
  end;
  BB4.Enabled:=true;
end;

procedure TSet_Pur_Delivery.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TSet_Pur_Delivery.FormDestroy(Sender: TObject);
begin
  Set_Pur_Delivery:=nil;
end;

procedure TSet_Pur_Delivery.BB4Click(Sender: TObject);
begin
  with Query1 do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
end;

procedure TSet_Pur_Delivery.BB5Click(Sender: TObject);
begin
  with Query1 do
  begin
    first;
    while not eof do
      begin
        if (Query1.FieldByName('IsCGZLS').Value<>Query1.FieldByName('IsCGZLS').OldValue) or  (Query1.FieldByName('IsKCLLS').Value<>Query1.FieldByName('IsKCLLS').OldValue) then
        begin
          Edit;
          Query1.FieldByName('IsCGZLS').Value:=FieldByName('IsCGZLS').Value;
          Query1.FieldByName('IsKCLLS').Value:=FieldByName('IsKCLLS').Value;
          Query1.FieldByName('USERDATE').Value:=NDate;
          Query1.FieldByName('USERID').Value:=main.edit1.text;
          UpdateSQL1.Apply(ukmodify);
        end;
        next;
      end;
    showmessage('Succeed.');
  end;
  BB5.enabled:=false;
  BB6.enabled:=false;
end;

procedure TSet_Pur_Delivery.BB6Click(Sender: TObject);
begin
  with Query1 do
  begin
    active:=false;
    requestlive:=false;
    cachedupdates:=false;
    active:=true;
  end;
  BB5.enabled:=false;
  BB6.enabled:=false;
end;

procedure TSet_Pur_Delivery.FormCreate(Sender: TObject);
begin
  with Qtemp do
  begin
    active:=false;
    sql.Clear;
    sql.add('select getdate() as NDate');
    active:=true;
    NDate:=fieldbyname('NDate').Value;
    active:=false;
  end;
end;

procedure TSet_Pur_Delivery.FormShow(Sender: TObject);
begin
  main.FormLanguage(Pointer(self),self.Name);
end;

end.
