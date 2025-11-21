unit AdjustDelPrice1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBTables, DB, GridsEh, DBGridEh, StdCtrls, ExtCtrls,dateutils;

type
  TAdjustDelPrice = class(TForm)
    Panel1: TPanel;
    Label2: TLabel;
    CBX1: TComboBox;
    Label3: TLabel;
    CBX2: TComboBox;
    Label1: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    DBGridEh1: TDBGridEh;
    Label4: TLabel;
    Panel2: TPanel;
    Label5: TLabel;
    DBGridEh2: TDBGridEh;
    Panel3: TPanel;
    Label6: TLabel;
    DBGridEh3: TDBGridEh;
    CWCLCOUNT: TQuery;
    DS1: TDataSource;
    DS2: TDataSource;
    KCCLMONTH: TQuery;
    KCLL: TQuery;
    DS3: TDataSource;
    UpCWCLCOUNT: TUpdateSQL;
    UpKCCLMONTH: TUpdateSQL;
    UpKCLL: TUpdateSQL;
    CWCLCOUNTKCYEAR: TStringField;
    CWCLCOUNTKCMONTH: TStringField;
    CWCLCOUNTCKBH: TStringField;
    CWCLCOUNTCLBH: TStringField;
    CWCLCOUNTQTY: TCurrencyField;
    CWCLCOUNTVNACC: TFloatField;
    CWCLCOUNTCostID: TStringField;
    CWCLCOUNTYWPM: TStringField;
    CWCLCOUNTDWBH: TStringField;
    CWCLCOUNTCWBH: TStringField;
    KCLLLLNO: TStringField;
    KCLLGSBH: TStringField;
    KCLLCKBH: TStringField;
    KCLLCFMDate: TDateTimeField;
    KCLLCLBH: TStringField;
    KCLLSCBH_1: TStringField;
    KCLLQty: TCurrencyField;
    KCLLVNPrice: TFloatField;
    KCLLCostID: TStringField;
    KCLLVNACC: TFloatField;
    KCLLYWPM: TStringField;
    KCLLDWBH: TStringField;
    KCLLDepName: TStringField;
    KCLLCWBH: TStringField;
    KCCLMONTHKCYEAR: TStringField;
    KCCLMONTHKCMONTH: TStringField;
    KCCLMONTHCKBH: TStringField;
    KCCLMONTHCLBH: TStringField;
    KCCLMONTHQTY: TCurrencyField;
    KCCLMONTHVNPrice: TFloatField;
    KCCLMONTHVNACC: TFloatField;
    KCCLMONTHYWPM: TStringField;
    KCCLMONTHDWBH: TStringField;
    Panel4: TPanel;
    Label7: TLabel;
    DBGridEh4: TDBGridEh;
    CWCLZL: TQuery;
    DS4: TDataSource;
    UpCWCLZL: TUpdateSQL;
    CWCLZLKCYEAR: TStringField;
    CWCLZLKCMONTH: TStringField;
    CWCLZLCKBH: TStringField;
    CWCLZLCLBH: TStringField;
    CWCLZLTotQty: TCurrencyField;
    CWCLZLTotACC: TFloatField;
    CWCLZLTotPrice: TFloatField;
    CWCLZLJGCKQty: TCurrencyField;
    CWCLZLJGCKACC: TFloatField;
    CWCLZLCKQty: TCurrencyField;
    CWCLZLCKACC: TFloatField;
    CWCLZLRemQty: TCurrencyField;
    CWCLZLRemACC: TFloatField;
    CWCLZLYWPM: TStringField;
    CWCLZLDWBH: TStringField;
    Label8: TLabel;
    CBX3: TComboBox;
    Qtemp: TQuery;
    BDelRec: TQuery;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure KCLLNewRecord(DataSet: TDataSet);
    procedure CWCLZLNewRecord(DataSet: TDataSet);
    procedure KCCLMONTHNewRecord(DataSet: TDataSet);
    procedure CWCLCOUNTNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AdjustDelPrice: TAdjustDelPrice;

implementation

uses main1, FunUnit;

{$R *.dfm}

procedure TAdjustDelPrice.FormDestroy(Sender: TObject);
begin
AdjustDelPrice:=nil;
end;

procedure TAdjustDelPrice.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=cafree;
end;

procedure TAdjustDelPrice.Button1Click(Sender: TObject);
var sdate,edate:Tdate;
    y,m:integer;
begin
  if (CBX1.text='')or (CBX2.text='')  then
    begin
      showmessage('You have to select the year and month first.');
      abort;
    end;
  y:=strtoint(CBX1.Text);
  m:=strtoint(CBX2.Text);
  if (y>2999) or (y<1900) then
    begin
      showmessage('Pls key in right year');
      abort;
    end;
  if (m=0) or (m>12) then
    begin
      showmessage('Pls key in right month');
      abort;
    end;
  sdate:=encodedate(y,m,1);
  edate:=endofthemonth(sdate);


  with CWCLCOUNT do
  begin
    active:=false;
    sql.Clear;
    sql.add('select CWCLCOUNT.*,CLZL.YWPM,CLZL.DWBH,KCZLS.CWBH');
    sql.add('from  CWCLCOUNT');
    sql.add('left join CLZL on  CLZL.CLDH= CWCLCOUNT.CLBH');
    sql.add('left join KCZLS on KCZLS.CLBH=CWCLCOUNT.CLBH and KCZLS.CKBH=CWCLCOUNT.CKBH');
    sql.add('left join KCCK on KCCK.CKBH=CWCLCOUNT.CKBH ');
    sql.add('where CWCLCOUNT.KCYEAR='+''''+CBX1.Text+'''');
    sql.add('      and CWCLCOUNT.KCMONTH='+''''+CBX2.Text+'''');
    sql.add('      and CWCLCOUNT.CLBH='+''''+edit1.Text+'''');
    sql.add('      and KCCK.GSBH='+''''+CBX3.text+'''');
    sql.add('order by  CWCLCOUNT.CKBH,CWCLCOUNT.CLBH');
    //funcObj.WriteErrorLog(sql.Text);
    active:=true;
  end;

  with KCCLMONTH do
  begin
    active:=false;
    sql.Clear;
    sql.add('select KCCLMONTh.*,CLZL.YWPM,CLZL.DWBH ');
    sql.add('from KCCLMONTH');
    sql.add('left join CLZL on CLZl.CLDH=KCCLMONTH.CLBH ');
    sql.add('left join KCCK on KCCK.CKBH=KCCLMONTH.CKBH');
    sql.add('where KCCLMONTh.KCYEAR='+''''+CBX1.Text+'''');
    sql.add('      and KCCLMONTh.KCMONTH='+''''+CBX2.Text+'''');
    sql.add('      and KCCK.GSBH='+''''+CBX3.text+'''');
    sql.add('      and KCCLMONTh.CLBH='+''''+edit1.Text+'''');
    sql.add('order by  KCCLMONTh.CKBH,KCCLMONTh.CLBH');
    active:=true;
  end;
        
  with CWCLZL do
  begin
    active:=false;
    sql.Clear;
    sql.add('select CWCLZL.*,CLZL.YWPM,CLZL.DWBH ');
    sql.add('from CWCLZL');
    sql.add('left join CLZL on CLZl.CLDH=CWCLZL.CLBH ');
    sql.add('left join KCCK on KCCK.CKBH=CWCLZL.CKBH');
    sql.add('where CWCLZL.KCYEAR='+''''+CBX1.Text+'''');
    sql.add('      and CWCLZL.KCMONTH='+''''+CBX2.Text+'''');
    sql.add('      and KCCK.GSBH='+''''+CBX3.text+'''');
    sql.add('      and CWCLZL.CLBH='+''''+edit1.Text+'''');
    sql.add('order by  CWCLZL.CKBH,CWCLZL.CLBH');
    active:=true;
  end;

  with KCLL do
  begin
    active:=false;
    sql.Clear;
    sql.Add('select KCLL.*,KCLLS.*,CLZL.YWPM,CLZL.DWBH,BDepartment.DepName,KCZLS.CWBH  ');
    sql.add('from KCLLS');
    sql.add('left join KCLL on KCLL.LLNO=KCLLS.LLNO');
    sql.add('left join CLZL on CLZL.CLDH=KCLLS.CLBH');
    sql.add('left join BDepartment on BDepartment.ID=KCLL.DepID');
    sql.add('left join KCZLS on KCZLS.CLBH=KCLLS.CLBH and KCZLS.CKBH=KCLL.CKBH');
    sql.add('left join KCCK on KCCK.CKBH=KCLL.CKBH ');
    sql.Add('where KCLL.CFMID<>'+''''+'NO'+'''');
    sql.add('      and KCLLS.CLBH='+''''+edit1.Text+'''');
    sql.add('      and KCLL.CFMDate  between ');
    sql.add('         '''+formatdatetime('yyyy/MM/dd',sdate)+''''+' and ' +''''+formatdatetime('yyyy/MM/dd',edate)+'''');
    sql.add('      and KCCK.GSBH='+''''+CBX3.text+'''');
    sql.add(' order by KCLL.CKBH,KCLLS.CLBH');
    active:=true;
  end;
  //button2.enabled:=true;
  //button3.enabled:=true;
end;

procedure TAdjustDelPrice.Button3Click(Sender: TObject);
begin
  CWCLCOUNT.active:=false;
  KCCLMONTH.active:=false;
  KCLL.Active:=false;
  CWCLZL.active:=false;
  CWCLCOUNT.active:=true;
  KCCLMONTH.active:=true;
  KCLL.Active:=true;
  CWCLZl.Active:=true;
end;

procedure TAdjustDelPrice.Button2Click(Sender: TObject);
begin
  //20200408 weston disable not allow use
  {
  with CWCLCOUNT do
  begin
    first;
    while not eof do
    begin
        if updatestatus=usmodified then
        begin
          UpCWCLCOUNT.Apply(ukmodify);
        end;
        Next;
    end;
  end;

  with KCCLMONTH do
  begin
    first;
    while not eof do
    begin
        if updatestatus=usmodified then
        begin
          UpKCCLMONTH.Apply(ukmodify);
        end;
        Next;
    end;
  end;

  with CWCLZL do
  begin
    first;
    while not eof do
    begin
        if updatestatus=usmodified then
        begin
          UpCWCLZL.Apply(ukmodify);
        end;
        Next;
    end;
  end;

  with KCLL do
  begin
    first;
    while not eof do
    begin
        if updatestatus=usmodified then
        begin
          UpKCLL.Apply(ukmodify);
        end;
        Next;
    end;
  end;
   
  CWCLCOUNT.active:=false;
  KCCLMONTH.active:=false;
  KCLL.Active:=false;
  CWCLZL.active:=false;
  CWCLCOUNT.active:=true;
  KCCLMONTH.active:=true;
  KCLL.Active:=true;
  CWCLZl.Active:=true;
  }
end;

procedure TAdjustDelPrice.FormCreate(Sender: TObject);
begin
with Qtemp do
  begin
    active:=false;
    sql.Clear;
    sql.add('select CKBH from KCCK ');
    sql.add('order by CKBH');
    active:=true; 
    CBX3.items.clear;
    while not eof do
      begin
        CBX3.items.add(fieldbyname('CKBH').AsString);
        next;
      end;
    CBX3.itemindex:=0;
    active:=false;
  end;

end;

procedure TAdjustDelPrice.KCLLNewRecord(DataSet: TDataSet);
begin
abort;
end;

procedure TAdjustDelPrice.CWCLZLNewRecord(DataSet: TDataSet);
begin
abort;
end;

procedure TAdjustDelPrice.KCCLMONTHNewRecord(DataSet: TDataSet);
begin
abort;
end;

procedure TAdjustDelPrice.CWCLCOUNTNewRecord(DataSet: TDataSet);
begin
abort;
end;

end.
