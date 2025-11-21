unit AutoSaveA4CFM;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBTables, DB, GridsEh, DBGridEh, StdCtrls, Buttons, ComCtrls,
  ExtCtrls;

type
  TForm1 = class(TForm)
    Panel11: TPanel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Label39: TLabel;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    CheckBox5: TCheckBox;
    BitBtn3: TBitBtn;
    Edit17: TEdit;
    Edit18: TEdit;
    Edit20: TEdit;
    BitBtn5: TBitBtn;
    Edit22: TEdit;
    BitBtn4: TBitBtn;
    DBGridEh8: TDBGridEh;
    DBGridEh1: TDBGridEh;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    Query8: TQuery;
    Query8CLDH: TStringField;
    Query8ywpm: TStringField;
    Query8A4Comfirm: TStringField;
    Query8TrackingA4Comfirm: TStringField;
    Query8DateA4Comfirm: TStringField;
    Query8Signer: TStringField;
    Query8cgzl_color2clbh: TStringField;
    Query1: TQuery;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    UpdateSQL1: TUpdateSQL;
    UpdateSQL2: TUpdateSQL;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

end.
