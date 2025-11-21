unit MaterialSet1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ExtCtrls, ComCtrls;

type
  TMaterialSet = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Edit3: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    DBGridEh1: TDBGridEh;
    SCPTCL: TQuery;
    DS1: TDataSource;
    Label7: TLabel;
    Label8: TLabel;
    DTP1: TDateTimePicker;
    Label9: TLabel;
    Label10: TLabel;
    Edit4: TEdit;
    Label11: TLabel;
    Label12: TLabel;
    CBX1: TComboBox;
    SCPTCLZLBH: TStringField;
    SCPTCLC_MAIN: TDateTimeField;
    SCPTCLC_VICE: TDateTimeField;
    SCPTCLS_MAT: TDateTimeField;
    SCPTCLO_MAT: TDateTimeField;
    SCPTCLA_MAT: TDateTimeField;
    SCPTCLAll_OK: TStringField;
    SCPTCLUSERID: TStringField;
    SCPTCLUSERDate: TDateTimeField;
    SCPTCLYN: TStringField;
    SCPTCLCountry: TStringField;
    SCPTCLArticle: TStringField;
    SCPTCLXieMing: TStringField;
    SCPTCLKFJC: TStringField;
    SCPTCLPairs: TIntegerField;
    Qtemp: TQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MaterialSet: TMaterialSet;

implementation

{$R *.dfm}

procedure TMaterialSet.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=cafree;
end;

procedure TMaterialSet.FormDestroy(Sender: TObject);
begin
MaterialSet:=nil;
end;

procedure TMaterialSet.FormCreate(Sender: TObject);
begin
with Qtemp do
  begin
    active:=false;
    sql.Clear;
    sql.add('select getdate() as NDate');
    active:=true;
    DTP1.date:=fieldbyname('NDate').value;
    active:=false;
  end;
CBX1.itemindex:=0;
end;

procedure TMaterialSet.Button1Click(Sender: TObject);
begin
with  SCPTCL do
  begin

  end;
end;

end.
