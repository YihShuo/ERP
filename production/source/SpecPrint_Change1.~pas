unit SpecPrint_Change1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DB, DBTables, ComCtrls, GridsEh, DBGridEh;

type
  TSpecPrint_Change = class(TForm)
    Query1: TQuery;
    Panel1: TPanel;
    Button1: TButton;
    DataSource1: TDataSource;
    DBGridEh1: TDBGridEh;
    Label1: TLabel;
    DTP1: TDateTimePicker;
    Label2: TLabel;
    DTP2: TDateTimePicker;
    Label3: TLabel;
    Edit1: TEdit;
    Label4: TLabel;
    Edit2: TEdit;
    Query1XieXing: TStringField;
    Query1SheHao: TStringField;
    Query1BWBH: TStringField;
    Query1CLBH: TStringField;
    Query1CSBH: TStringField;
    Query1CLSL: TCurrencyField;
    Query1FLBH: TStringField;
    Query1LYCC: TStringField;
    Query1USERID: TStringField;
    Query1USERDATE: TDateTimeField;
    Query1YN: TStringField;
    Query1YWSM: TStringField;
    Query1ZSYWJC: TStringField;
    Query1YWPM: TStringField;
    Query1DWBH: TStringField;
    Query1DFL: TStringField;
    Query1XFL: TStringField;
    Query1Article: TStringField;
    Query1XieMing: TStringField;
    procedure Button1Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SpecPrint_Change: TSpecPrint_Change;

implementation

uses main1;

{$R *.dfm}

procedure TSpecPrint_Change.Button1Click(Sender: TObject);
begin
with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select  XXZLSVN.*,BWZL.YWSM,ZSZL.ZSYWJC,CLZL.YWPM,CLZL.DWBH,XXBWFLS.DFL,XXBWFLS.XFL ');
    sql.add('        ,XXZL.Article,XXZL.XieMing');
    sql.add('from XXZLSVN');
    sql.add('left join BWZL on BWZL.BWDH= XXZLSVN.BWBH');
    sql.add('left join XXZL on XXZl.XieXing=XXZLSVN.XieXing and XXZL.SheHao=XXZLSVN.SheHao');
    sql.add('left join ZSZL on ZSZL.ZSDH= XXZLSVN.CSBH');
    sql.add('left join CLZL on XXZLSVN.CLBH=CLZL.CLDH');
    sql.add('left join XXBWFLS on XXBWFLS.FLBH=XXZLSVN.FLBH');
    sql.add('where  convert(smalldatetime,convert(varchar,XXZLSVN.USERDATE,111)) between ');
    sql.add('       '''+formatdatetime('yyyy/MM/dd',DTP1.date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.date) +'''');
    sql.add('       and XXZL.Article like '+''''+'%'+edit1.text+'%'+'''');
    sql.add('       and XXZL.XieMing like '+''''+'%'+edit2.text+'%'+'''');
    sql.add('order by XXZL.XieXing,XXZL.SheHao,XXZLSVN.BWBH');
    active:=true;
  end;

end;

procedure TSpecPrint_Change.FormDestroy(Sender: TObject);
begin
SpecPrint_Change:=nil;
end;

procedure TSpecPrint_Change.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
query1.active:=false;
action:=cafree;
end;

procedure TSpecPrint_Change.FormCreate(Sender: TObject);
begin
DTP1.date:=date-3;
DTP2.date:=date;
end;

procedure TSpecPrint_Change.FormShow(Sender: TObject);
begin
  main.FormLanguage(Pointer(self),self.Name);
end;

end.
