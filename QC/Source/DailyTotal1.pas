unit DailyTotal1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, Grids, DBGrids, DBTables, ExtCtrls,comobj,
  ComCtrls, GridsEh, DBGridEh, DBGridEhImpExp, ShellAPI, dateutils;

type
  TDailyTotal = class(TForm)
    Panel1: TPanel;
    Query1: TQuery;
    DataSource1: TDataSource;
    DBGrid1: TDBGridEh;
    Button1: TButton;
    Button2: TButton;
    Query2: TQuery;
    CKBSel: TCheckBox;
    SaveDialog1: TSaveDialog;
    lbl1: TLabel;
    DTP1: TDateTimePicker;
    lbl2: TLabel;
    DTP2: TDateTimePicker;
    lbl3: TLabel;
    CBX4: TComboBox;
    QTemp: TQuery;
    dtmfldQuery1DATE: TStringField;
    intgrfldQuery1QTYSD: TIntegerField;
    intgrfldQuery1QTYSI: TIntegerField;
    intgrfldQuery1QTYPD: TIntegerField;
    intgrfldQuery1QTYPI: TIntegerField;
    intgrfldQuery1QTYAD: TIntegerField;
    intgrfldQuery1QTYAI: TIntegerField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DailyTotal: TDailyTotal;

implementation

uses main1;

{$R *.dfm}

procedure TDailyTotal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
free;
end;

procedure TDailyTotal.Button1Click(Sender: TObject);
begin
with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('IF EXISTS (SELECT 1 FROM [dbo].SYSOBJECTS WHERE NAME = ''F_DATELIST '')');
    sql.add(' DROP FUNCTION F_DATELIST;');
    execsql;
    sql.Clear;
    sql.Add(' CREATE FUNCTION F_DATELIST');
    sql.Add(' (@BEGIN_DATE AS DATETIME,');
    sql.Add(' @END_TIME   AS DATETIME');
    sql.Add('  )  RETURNS @TEMPTABLE  TABLE (DATE  VARCHAR(10), QTYSD int, QTYSI int, QTYPD int, QTYPI int, QTYAD int, QTYAI int )');
    sql.Add(' AS BEGIN');
    sql.Add(' declare @TqtySD as int');
    sql.Add(' declare @TqtySI as int');
    sql.Add(' declare @TqtyPD as int');
    sql.Add(' declare @TqtyPI as int');
    sql.Add(' declare @TqtyAD as int');
    sql.Add(' declare @TqtyAI as int');
    sql.Add(' WHILE(@BEGIN_DATE <= @END_TIME) BEGIN');
    sql.Add(' set @TqtySD=isnull((select sum(QCBBS.Qty) as Qty from QCBBS ');
    sql.Add(' left join QCBB on QCBB.ProNo=QCBBS.ProNo ');
    sql.Add(' where QCBB.DepNo IN (''LY010601'',''LY010602'',''LY010603'',''LY010604'',''LY010605'',''LY010606'',''LY010607'',''LY010608'' )');
    sql.Add(' and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) = @BEGIN_DATE and QCBB.GSBH='''+CBX4.Text+'''),0)');
    sql.Add(' set @TqtySI=isnull((select sum(QCBB.INSPECTQty) as Qty from QCBB');
    sql.Add(' where QCBB.DepNo IN (''LY010601'',''LY010602'',''LY010603'',''LY010604'',''LY010605'',''LY010606'',''LY010607'',''LY010608'' )');
    sql.Add(' and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) = @BEGIN_DATE and QCBB.GSBH='''+CBX4.Text+'''),0)');
    sql.Add(' set @TqtyPD=isnull((select sum(QCBBS.Qty) as Qty from QCBBS ');
    sql.Add(' left join QCBB on QCBB.ProNo=QCBBS.ProNo ');
    sql.Add(' where QCBB.DepNo IN (''LY0109'',''LY0113'',''LY0114'' )');
    sql.Add(' and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) = @BEGIN_DATE and QCBB.GSBH='''+CBX4.Text+'''),0)');
    sql.Add(' set @TqtyPI=isnull((select sum(QCBB.INSPECTQty) as Qty from QCBB');
    sql.Add(' where QCBB.DepNo IN (''LY0109'',''LY0113'',''LY0114'' )');
    sql.Add(' and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) = @BEGIN_DATE and QCBB.GSBH='''+CBX4.Text+'''),0)');
    sql.Add(' set @TqtyAD=isnull((select sum(QCBBS.Qty) as Qty from QCBBS ');
    sql.Add(' left join QCBB on QCBB.ProNo=QCBBS.ProNo ');
    sql.Add(' where QCBB.DepNo IN (''LY01060001'',''LY01060002'',''LY01060003'',''LY01060004'',''LY01060005'',''LY01060006'',''LY01060007'',''LY01060008'',''LY01060009'',''LY01060010'',''LY01060011'' )');
    sql.Add(' and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) = @BEGIN_DATE and QCBB.GSBH='''+CBX4.Text+'''),0)');
    sql.Add(' set @TqtyAI=isnull((select sum(QCBB.INSPECTQty) as Qty from QCBB');
    sql.Add(' where QCBB.DepNo IN (''LY01060001'',''LY01060002'',''LY01060003'',''LY01060004'',''LY01060005'',''LY01060006'',''LY01060007'',''LY01060008'',''LY01060009'',''LY01060010'',''LY01060011'' )');
    sql.Add(' and convert(smalldatetime,convert(varchar,QCBB.SCDATE)) = @BEGIN_DATE and QCBB.GSBH='''+CBX4.Text+'''),0)');
    sql.Add(' INSERT INTO @TEMPTABLE(DATE, QTYSD, QTYSI, QTYPD, QTYPI, QTYAD, QTYAI)VALUES(CONVERT(VARCHAR(10),@BEGIN_DATE,20),@TqtySD,@TqtySI,@TqtyPD,@TqtyPI,@TqtyAD,@TqtyAI)');
    sql.Add(' SET @BEGIN_DATE=@BEGIN_DATE+1');
    sql.Add(' END');
    sql.Add(' RETURN');
    sql.Add(' END');
    //memo1.text:=sql.text;
    execsql;
    sql.Clear;
    sql.Add(' SELECT * FROM DBO.F_DATELIST('''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''','''+formatdatetime('yyyy/MM/dd',DTP2.Date)+''')');

    active:=true;
  end;
end;

procedure TDailyTotal.Button2Click(Sender: TObject);
var
  ExpClass:TDBGridEhExportClass;
  Ext:String;
begin
  SaveDialog1.FileName := 'ex';
if (DBGrid1 is TDBGridEh) then
  if SaveDialog1.Execute then
  begin
    case SaveDialog1.FilterIndex of
      1: begin ExpClass := TDBGridEhExportAsXLS; Ext := 'xls'; end;
      2: begin ExpClass := TDBGridEhExportAsCSV; Ext := 'csv'; end;
      3: begin ExpClass := TDBGridEhExportAsHTML; Ext := 'htm'; end;
      4: begin ExpClass := TDBGridEhExportAsRTF; Ext := 'rtf'; end;
      5: begin ExpClass := TDBGridEhExportAsText; Ext := 'txt'; end;
    else
      ExpClass := nil; Ext := '';
    end;
    if ExpClass <> nil then
    begin
      if UpperCase(Copy(SaveDialog1.FileName,Length(SaveDialog1.FileName)-2,3)) <> UpperCase(Ext) then
        SaveDialog1.FileName := SaveDialog1.FileName + '.' + Ext;
      SaveDBGridEhToExportFile(ExpClass,DBGrid1,SaveDialog1.FileName,not ckbsel.Checked);
      if Application.MessageBox('Do you want to open the exported file?','Open file',MB_YESNO) = IDYES then
        shellexecute(handle,'open',pchar(SaveDialog1.FileName),nil,nil,SW_SHOWNORMAL);
    end;
  end;
end;

procedure TDailyTotal.FormDestroy(Sender: TObject);
begin
DailyTotal:=nil;
end;

procedure TDailyTotal.FormCreate(Sender: TObject);
var i:integer;
begin
with Qtemp do
  begin
    active:=false;
    sql.Clear;
    sql.add('select GSDH from BGSZL order by GSDH');
    active:=true;
    for i:=1 to recordcount do
      begin
        CBX4.Items.Add(fieldbyname('GSDH').asstring);
        next;
      end;
    CBX4.Text:=main.edit2.Text;
    active:=false;
  end;

DTP1.Date:=startofthemonth(date-28);
DTP2.date:=endofthemonth(date-28);
end;

end.
