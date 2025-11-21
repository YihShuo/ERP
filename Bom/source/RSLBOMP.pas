unit RSLBOMP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, GridsEh, DBGridEh, StdCtrls, ExtCtrls, ComCtrls, DB,
  DBTables, ShellApi;

type
  TRSLBOM = class(TForm)
    XXZL: TQuery;
    XXZLXieXing: TStringField;
    XXZLSheHao: TStringField;
    XXZLARTICLE: TStringField;
    XXZLXieMing: TStringField;
    XXZLYSSM: TStringField;
    XXZLBZCC: TStringField;
    XXZLKFJC: TStringField;
    XXZLXx: TStringField;
    XXZLSs: TStringField;
    DS1: TDataSource;
    XXZLS: TQuery;
    DS2: TDataSource;
    PC1: TPageControl;
    TS1: TTabSheet;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit4: TEdit;
    Edit3: TEdit;
    Edit5: TEdit;
    Button1: TButton;
    CheckBox1: TCheckBox;
    DBGrid1: TDBGridEh;
    TS2: TTabSheet;
    Panel3: TPanel;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    DBGrid2: TDBGridEh;
    XXZLSXH: TStringField;
    XXZLSBWBH: TStringField;
    XXZLSBWMC: TStringField;
    XXZLSCLBH: TStringField;
    XXZLSCLMC: TStringField;
    XXZLSCLZW: TStringField;
    XXZLSBWZW: TStringField;
    XXZLSDWBH: TStringField;
    XXZLSZSYWJC: TStringField;
    XXZLSCLZMLB: TStringField;
    XXZLSpdfilepage: TStringField;
    OpenDialog1: TOpenDialog;
    XXZLKFDH: TStringField;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid2CellClick(Column: TColumnEh);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RSLBOM: TRSLBOM;
  PDFilePath:string;

implementation

{$R *.dfm}

procedure TRSLBOM.Button1Click(Sender: TObject);
begin
with XXZL do
  begin
    active:=false;
    sql.clear;
    sql.add('select XXZL.XieXing,XXZL.SheHao,XXZL.Article,');
    sql.add('XXZL.XieMing,XXZL.YSSM,KFZL.KFJC,KFZL.KFDH,XXZL.BZCC,xt.xiexing as Xx,xt.Shehao as Ss from XXZL ');
    sql.add('left join KFZL on KFZL.KFDH=XXZL.KHDH ');
    sql.Add('left join (select xiexing,shehao from xtbwyl1 group by xiexing,shehao) as xt');
    sql.add('  on xt.xiexing=xxzl.xiexing and xt.shehao=xxzl.shehao ' );
    sql.add('where XXZL.XieXing like '+''''+edit1.Text+'%'+'''');
    sql.add(' and XXZL.SheHao like '+''''+edit2.Text+'%'+'''');
    sql.add(' and XXZL.ARTICLE like '+''''+edit3.Text+'%'+'''');
    sql.add(' and KFZL.KFJC like '+''''+'%'+edit4.Text+'%'+'''');
    sql.add(' and XXZL.XieMing like '+''''+edit5.Text+'%'+'''');
    if checkbox1.Checked then
      begin
        sql.add(' and XXZL.YN='+''''+'1'+'''');
      end;
    sql.add(' order by KFJC,XXZL.XieXing,XXZL.Shehao');
    //memo1.text:=sql.text;
    active:=true;
  end;
  XXZLS.Open;
end;

procedure TRSLBOM.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TRSLBOM.FormDestroy(Sender: TObject);
begin
  RSLBOM:=nil;
end;

procedure TRSLBOM.DBGrid1DblClick(Sender: TObject);
begin
if XXZL.active then
  begin
    PC1.ActivePage:=TS2;
  end;
end;

procedure TRSLBOM.FormCreate(Sender: TObject);
begin
  pc1.ActivePage:=ts1;
  PDFilePath := '\\192.168.22.1\RSL\PD\';
end;

procedure TRSLBOM.DBGrid2CellClick(Column: TColumnEh);
var path:PChar;
begin
  if (DBGrid2.SelectedField.FieldName = 'PDFilePage') and (not xxzls.FieldByName('PDFilePage').isnull) then
  begin
    path:= pchar( PDFilePath + string(xxzls.FieldByName('PDFilePage').value) );
    ShellExecute(Handle, nil, path,  nil, nil, SW_SHOWNORMAL);
  end;
end;

end.
