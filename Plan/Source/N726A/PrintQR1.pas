unit PrintQR1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBTables, DB, Menus, GridsEh, DBGridEh, StdCtrls, ExtCtrls;

type
  TPrintQR = class(TForm)
    Panel3: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Edit2: TEdit;
    DBGridEh1: TDBGridEh;
    DBGridEh2: TDBGridEh;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    Qtemp: TQuery;
    DS1: TDataSource;
    SMDD: TQuery;
    SMDDDDBH: TStringField;
    SMDDGXLB: TStringField;
    SMDDMEMO: TStringField;
    SMDDYSBH: TStringField;
    SMDDKFJC: TStringField;
    SMDDGSBH: TStringField;
    SMDDArticle: TStringField;
    SMDDXieMing: TStringField;
    SMDDQty: TIntegerField;
    SMDDSCCX: TStringField;
    SMDDSB: TStringField;
    SMDDSCYEAR: TStringField;
    SMDDSCMONTH: TStringField;
    SMDDDepName: TStringField;
    SMDDPlanDate: TDateTimeField;
    SMDDUSERDate: TDateTimeField;
    SMDDUSERID: TStringField;
    SMDDYN: TStringField;
    SMDDokBH: TStringField;
    SMDDUSERdate_1: TDateTimeField;
    SMDDS: TQuery;
    SMDDSDDBH: TStringField;
    SMDDSXXCC: TStringField;
    SMDDSQty: TIntegerField;
    SMDDSUSERDate: TDateTimeField;
    SMDDSUSERID: TStringField;
    SMDDSYN: TStringField;
    UpSMDDSS: TUpdateSQL;
    SMDDSS: TQuery;
    SMDDSSDDBH: TStringField;
    SMDDSSGXLB: TStringField;
    SMDDSSMEMO: TStringField;
    SMDDSSXXCC: TStringField;
    SMDDSSXH: TStringField;
    SMDDSSCODEBAR: TStringField;
    SMDDSSQty: TIntegerField;
    SMDDSSCTS: TIntegerField;
    SMDDSSTotQty: TIntegerField;
    SMDDSSokCTS: TIntegerField;
    SMDDSSUSERDate: TDateTimeField;
    SMDDSSUSERID: TStringField;
    SMDDSSYN: TStringField;
    DS2: TDataSource;
    PopupMenu2: TPopupMenu;
    B1: TMenuItem;
    B2: TMenuItem;
    B3: TMenuItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PrintQR: TPrintQR;

implementation

{$R *.dfm}

procedure TPrintQR.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 action:=cafree;
end;

procedure TPrintQR.FormDestroy(Sender: TObject);
begin
   PrintQR:=nil;
end;

end.
