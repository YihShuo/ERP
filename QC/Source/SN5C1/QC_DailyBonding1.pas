unit QC_DailyBonding1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Grids, DBGrids, DB, DBTables;

type
  TQC_DailyBonding = class(TForm)
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
    bbt5: TBitBtn;
    bbt6: TBitBtn;
    Panel3: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    DBGrid1: TDBGrid;
    Panel2: TPanel;
    Panel4: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    DBGrid2: TDBGrid;
    LabTS: TQuery;
    MasDS: TDataSource;
    LabTSS: TQuery;
    DetDS: TDataSource;
    LabTSSTSNO: TStringField;
    LabTSSSCBH: TStringField;
    LabTSSUserID: TStringField;
    LabTSSUserDate: TDateTimeField;
    LabTSTSNO: TStringField;
    LabTSDFL: TStringField;
    LabTSTSDate: TDateTimeField;
    LabTSXieXing: TStringField;
    LabTSSheHao: TStringField;
    LabTSArticle: TStringField;
    LabTSQty: TIntegerField;
    LabTSPass: TIntegerField;
    LabTSDepNO: TStringField;
    LabTSMemo1: TStringField;
    LabTSMemo2: TStringField;
    LabTSUserID: TStringField;
    LabTSUserDate: TDateTimeField;
    LabTSXieMing: TStringField;
    LabTSDepName: TStringField;
    UpdLabTS: TUpdateSQL;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  QC_DailyBonding: TQC_DailyBonding;

implementation

{$R *.dfm}

procedure TQC_DailyBonding.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TQC_DailyBonding.FormDestroy(Sender: TObject);
begin
  QC_DailyBonding:=nil;
end;

procedure TQC_DailyBonding.Button1Click(Sender: TObject);
begin
  with LabTS do
  begin
    Active:=true;
    SQL.Clear;
    SQL.Add('')
  end;
end;

end.
