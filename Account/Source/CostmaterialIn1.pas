unit CostmaterialIn1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBTables, DB, Grids, DBGrids, StdCtrls, Buttons, ExtCtrls,
  ComCtrls, GridsEh, DBGridEh, DBCtrls;

type
  TCostmaterialIn = class(TForm)
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
    Panel2: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    DBGrid1: TDBGridEh;
    DS1: TDataSource;
    KCLLS: TQuery;
    UpSQL1: TUpdateSQL;
    Qtemp: TQuery;
    Label2: TLabel;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    Label4: TLabel;
    Label6: TLabel;
    CB1: TComboBox;
    KCLLSLLNO: TStringField;
    KCLLSCLBH: TStringField;
    KCLLSDFL: TStringField;
    KCLLSSCBH: TStringField;
    KCLLSQty: TCurrencyField;
    KCLLSCostID: TStringField;
    KCLLSYN: TStringField;
    KCLLSGSBH: TStringField;
    KCLLSCKBH: TStringField;
    KCLLSDepName: TStringField;
    KCLLSCFMDate: TDateTimeField;
    KCLLSYWPM: TStringField;
    KCLLSDWBH: TStringField;
    DBGridEh1: TDBGridEh;
    KCRKS: TQuery;
    DS2: TDataSource;
    KCRKSCGBH: TStringField;
    KCRKSRKNO: TStringField;
    KCRKSUSERDate: TDateTimeField;
    KCRKSZSYWJC: TStringField;
    DC1: TDBCheckBox;
    KCLLSCWSB: TStringField;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure DBGrid1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure BB7Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure KCLLSNewRecord(DataSet: TDataSet);
    procedure BB6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CostmaterialIn: TCostmaterialIn;    
  NDate:Tdate;

implementation

uses main1;

{$R *.dfm}

procedure TCostmaterialIn.FormDestroy(Sender: TObject);
begin
CostmaterialIn:=nil;
end;

procedure TCostmaterialIn.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if BB5.enabled  then
  begin
    showmessage('You have to save data first.');
    action:=canone;
  end
  else
    begin
      action:=cafree;
    end;
end;

procedure TCostmaterialIn.FormCreate(Sender: TObject);
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
        CB1.Items.Add(fieldbyname('GSDH').asstring);
        next;
      end;
    CB1.itemindex:=0;
    active:=false;
    sql.Clear;
    sql.add('select getdate() as NDate '); 
    active:=true;
    NDate:=fieldbyname('NDate').value;
    active:=false;
  end;
DTP1.Date:=NDate-7;
DTP2.date:=NDate-1;
end;

procedure TCostmaterialIn.Button1Click(Sender: TObject);
begin
with KCLLS do
  begin
    active:=false;
    sql.Clear;
    sql.add('select KCLLS.LLNO,KCLLS.CLBH,KCLLS.DFL,KCLLS.Qty,KCLLS.CostID,KCLLS.CWSB ');
    sql.add('       ,KCLLS.SCBH,KCLL.GSBH,KCLL.CKBH,BDepartment.DepName,KCLL.CFMDate,KCLL.YN ');
    sql.add('       ,CLZL.YWPM,CLZL.DWBH ');
    sql.add('from KCLLS ');
    sql.add('left join KCLL on KCLL.LLNO=KCLLS.LLNO ');
    sql.add('left join BDepartment on BDepartment.ID=KCLL.DepID ');
    sql.add('left join CLZL on CLZL.CLDH=KCLLS.CLBH ');
    sql.add('where KCLLS.CLBH like '+''''+edit1.Text+'%'+'''');
    sql.add('      and KCLL.YN='+''''+'5'+''''  );
    sql.add('      and KCLLS.Qty<>0');
    if CB1.itemindex<>0 then
      begin
        sql.add('      and KCLL.GSBH='+''''+CB1.text+'''');
      end;
    sql.add('      and convert(smalldatetime,convert(varchar,KCLL.CFMDate,111)) between ');
    sql.add('       '''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
    sql.add('order by KCLLS.CLBH,KCLLS.LLNO');
    active:=true;
  end;
KCRKS.Active:=true;
BB4.enabled:=true;
end;

procedure TCostmaterialIn.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin

    if (gdFocused in State) then
     begin
     if (DataCol=6) then
       begin
       DC1.Left:=Rect.Left  + DBGrid1.Left;
       DC1.Top:=Rect.Top   + DBGrid1.top;
       DC1.Width:=Rect.Right - Rect.Left;
       DC1.Height:=Rect.Bottom- Rect.Top;
       DC1.Visible:=True;
       end;
    end;
end;

procedure TCostmaterialIn.DBGrid1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin

if KCLLS.FieldByName('YN').value='2' then
  begin
    dbgrid1.canvas.font.color:=clBlue;
  end;
end;

procedure TCostmaterialIn.BB7Click(Sender: TObject);
begin
close;
end;

procedure TCostmaterialIn.BB4Click(Sender: TObject);
begin
with KCLLS do
  begin
    requestlive:=true;
    cachedupdates:=true;
  end;
BB5.enabled:=true;
BB6.enabled:=true;
end;

procedure TCostmaterialIn.BB5Click(Sender: TObject);
begin
KCRKS.Active:=false;
with KCLLS do
  begin
    first;
    while not eof do
      begin
        if updatestatus=usmodified then
          begin
            UpSQL1.Apply(ukmodify);
          end;
        next;
      end;
    active:=false;
    cachedupdates:=false;
    requestlive:=false;
    active:=true;
  end;
BB5.enabled:=false;
BB6.Enabled:=false; 
KCRKS.Active:=true;
end;

procedure TCostmaterialIn.KCLLSNewRecord(DataSet: TDataSet);
begin
abort;
end;

procedure TCostmaterialIn.BB6Click(Sender: TObject);
begin

with KCLLS do
  begin
    active:=false;
    cachedupdates:=false;
    requestlive:=false;
    active:=true;
  end;
BB5.enabled:=false;
BB6.Enabled:=false;
end;

end.
