unit khothanhpham1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, DBTables, DB, GridsEh, DBGridEh, StdCtrls, ComCtrls,
  ExtCtrls;

type
  TKhothanhpham = class(TForm)
    Panel1: TPanel;
    Label3: TLabel;
    Label14: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    DDBHEdit: TEdit;
    Button1: TButton;
    DTP: TDateTimePicker;
    Button4: TButton;
    CheckBox1: TCheckBox;
    checkRY_Memo: TCheckBox;
    CheckBox2: TCheckBox;
    TRQtyCK: TCheckBox;
    MemoEdit: TEdit;
    MergeYSBHCK: TCheckBox;
    CheckBox3: TCheckBox;
    Button6: TButton;
    Button7: TButton;
    CKBHEdit: TEdit;
    KVBHEdit: TEdit;
    CheckBox4: TCheckBox;
    Button10: TButton;
    DBGridEh2: TDBGridEh;
    EXEQry: TQuery;
    DS1: TDataSource;
    DS2: TDataSource;
    Query1: TQuery;
    Query1KCYEAR: TStringField;
    Query1KCMONTH: TStringField;
    Query1DDBH: TStringField;
    Query1Qty: TIntegerField;
    Query1VNPrice: TCurrencyField;
    Query1VNACC: TCurrencyField;
    Query1CKBH: TStringField;
    Query1ARTICLE: TStringField;
    Query1Memo: TStringField;
    Query1USERID: TStringField;
    Query1USERDATE: TDateTimeField;
    Query1YN: TStringField;
    Query2: TQuery;
    Query2DDBH: TStringField;
    Query2YSBH: TStringField;
    Query2CKBH: TStringField;
    Query2Pairs: TFloatField;
    Query2LastRem: TIntegerField;
    Query2RKQty: TIntegerField;
    Query2TRQty: TIntegerField;
    Query2XHQty: TIntegerField;
    Query2Qty: TIntegerField;
    Query2ShipDate: TDateTimeField;
    Query2ARTICLE: TStringField;
    Query2DDZT: TStringField;
    Query2Memo: TStringField;
    Query2CTS: TIntegerField;
    Query2Customer: TStringField;
    Query2ModelName: TStringField;
    Query2KVBH: TStringField;
    Query2STT: TStringField;
    UPDet1: TUpdateSQL;
    UPDet2: TUpdateSQL;
    PopupMenu1: TPopupMenu;
    Modify1: TMenuItem;
    Save1: TMenuItem;
    Cancel1: TMenuItem;
    RYMemo1: TMenuItem;
    PopupMenu2: TPopupMenu;
    Modify2: TMenuItem;
    Save2: TMenuItem;
    Cancel2: TMenuItem;
    N1: TMenuItem;
    menu1: TMenuItem;
    menu2: TMenuItem;
    menu3: TMenuItem;
    query_excelTBA: TQuery;
    Query5: TQuery;
    Query5DDBH: TStringField;
    Query5CKBH: TStringField;
    Query5Pairs: TIntegerField;
    Query5Qty: TIntegerField;
    Query5CTS: TIntegerField;
    Query5ARTICLE: TStringField;
    Query5ShipDate: TDateTimeField;
    Query5DDZT: TStringField;
    DS5: TDataSource;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Khothanhpham: TKhothanhpham;

implementation

{$R *.dfm}

procedure TKhothanhpham.FormDestroy(Sender: TObject);
begin
  Khothanhpham:=nil;
end;

procedure TKhothanhpham.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    Action:=caFree;
end;

end.
