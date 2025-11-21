unit EquipmentMonthS1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ComCtrls, Buttons,
  ExtCtrls;

type
  TEquipmentMonthS = class(TForm)
    Panel1: TPanel;
    Label18: TLabel;
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
    bbt6: TBitBtn;
    Panel2: TPanel;
    Label1: TLabel;
    TSBHEdit: TEdit;
    Button1: TButton;
    DBGrid1: TDBGridEh;
    TSCDlMonthQry: TQuery;
    UpMas: TUpdateSQL;
    DS1: TDataSource;
    TSCDlMonthQryKCYEAR: TStringField;
    TSCDlMonthQryKCMONTH: TStringField;
    TSCDlMonthQryTSBH: TStringField;
    TSCDlMonthQryDWBH: TStringField;
    TSCDlMonthQryQty: TFloatField;
    TSCDlMonthQryYWPM: TStringField;
    TSCDlMonthQryVNACC: TFloatField;
    TSCDlMonthQryTSID: TStringField;
    TSCDlMonthQryUSERID: TStringField;
    TSCDlMonthQryUSERDATE: TDateTimeField;
    Label6: TLabel;
    ComboBox1: TComboBox;
    Label2: TLabel;
    CBX1: TComboBox;
    Label3: TLabel;
    CBX2: TComboBox;
    Qtemp: TQuery;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BB1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure TSCDlMonthQryAfterOpen(DataSet: TDataSet);
    procedure BB4Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    NDate:TDate;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  EquipmentMonthS: TEquipmentMonthS;

implementation

uses main1;

{$R *.dfm}

procedure TEquipmentMonthS.FormDestroy(Sender: TObject);
begin
  EquipmentMonthS:=nil;
end;

procedure TEquipmentMonthS.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TEquipmentMonthS.BB1Click(Sender: TObject);
begin
  Panel2.Visible:=true;
end;

//
procedure TEquipmentMonthS.Button1Click(Sender: TObject);
begin
  with TSCDlMonthQry do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Select  TSCD_Month.KCYEAR,TSCD_Month.KCMONTH,TSCD.TSBH,TSCD_SB.DWBH,TSCD.Qty,TSCD_SB.YWPM,TSCD_Month.VNACC,TSCD_Month.TSID,TSCD_Month.USERID,TSCD_Month.USERDATE ');
    SQL.Add('from TSCD_Month');
    SQL.Add('left join TSCD on TSCD.TSID=TSCD_Month.TSID');
    SQL.Add('left join TSCD_SB on TSCD.SBBH=TSCD_SB.SBBH');
    SQL.Add('left join (');
    SQL.Add('  select TSCD_KCRKS.TSID');
    SQL.Add('  from TSCD_KCRK');
    SQL.Add('  Left join TSCD_KCRKS on TSCD_KCRKS.RKNO=TSCD_KCRK.RKNO');
    SQL.Add('       and TSCD_KCRK.YN=''5'' ) TSCD_KCRKS on TSCD_KCRKS.TSID=TSCD_Month.TSID');
    SQL.Add('where TSCD_KCRKS.TSID is not null    ');
    if TSBHEdit.Text<>'' then
    SQL.Add('and TSCD.TSBH like ''%'+TSBHEdit.Text+'%'' ');
    if CBX1.Text<>'' then
    SQL.Add('and TSCD_Month.KCYEAR='''+CBX1.Text+''' ');
    if CBX2.Text<>'' then
    SQL.Add('and TSCD_Month.KCMONTH='''+CBX2.Text+''' ');
    if ComboBox1.ItemIndex=1 then
    begin
      SQL.add('and TSCD.Status=''N'' ');
    end else if ComboBox1.ItemIndex=2 then
    begin
      SQL.add('and TSCD.Status<>''N''  ');
    end else if ComboBox1.ItemIndex=3 then
    begin
      SQL.add('and TSCD.Status=''B''  ');
    end else if ComboBox1.ItemIndex=4 then
    begin
      SQL.add('and TSCD_SB.AuthCE=1  ');
    end;
    SQL.Add('order by TSCD_KCRKS.TSID');
    Active:=true;
  end;
end;
//

procedure TEquipmentMonthS.TSCDlMonthQryAfterOpen(DataSet: TDataSet);
begin
  if TSCDlMonthQry.RecordCount>0 then
  begin
    BB4.Enabled:=true;  
  end else
  begin
    BB4.Enabled:=false;
  end;
end;

procedure TEquipmentMonthS.BB4Click(Sender: TObject);
begin
  with TSCDlMonthQry do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
end;

procedure TEquipmentMonthS.BB6Click(Sender: TObject);
begin
  with TSCDlMonthQry do
  begin
    active:=false;
    requestlive:=false;
    cachedupdates:=false;
    active:=true;
  end;
  bb5.enabled:=false;
  bb6.enabled:=false;
end;

procedure TEquipmentMonthS.BB5Click(Sender: TObject);
var i:integer;
begin

  try
    TSCDlMonthQry.first;
    for i:=1 to TSCDlMonthQry.RecordCount do
    begin
      case TSCDlMonthQry.updatestatus of
        usmodified:
           begin
             TSCDlMonthQry.edit;
             TSCDlMonthQry.FieldByName('userID').Value:=main.edit1.text;
             TSCDlMonthQry.FieldByName('userdate').Value:=Ndate;
             upMas.apply(ukmodify);
           end;
      end;
     TSCDlMonthQry.next;
    end;
  TSCDlMonthQry.active:=false;
  TSCDlMonthQry.cachedupdates:=false;
  TSCDlMonthQry.requestlive:=false;
  TSCDlMonthQry.Active:=true;
  BB5.enabled:=false;
  BB6.enabled:=false;
  showmessage('Succeed.');
  except
    Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
  end;

end;

procedure TEquipmentMonthS.FormCreate(Sender: TObject);
begin
  with Qtemp do
  begin
    active:=false;
    sql.Clear;
    sql.Add('select getdate() as NDate ');
    active:=true;
    NDate:=fieldbyname('NDate').Value;
    active:=false;
  end;
end;

end.
