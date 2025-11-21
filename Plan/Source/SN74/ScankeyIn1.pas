unit ScankeyIn1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Buttons, ExtCtrls, DB, GridsEh, DBGridEh,
  DBTables,dateutils,ehlibBDE, PrnDbgeh,comobj;

type
  TScankeyIn = class(TForm)
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
    bbt6: TBitBtn;
    Panel2: TPanel;
    Label1: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    Qtemp: TQuery;
    SMZL: TQuery;
    DBGridEh1: TDBGridEh;
    DS1: TDataSource;
    SMZLCODEBAR: TStringField;
    SMZLCTS: TIntegerField;
    SMZLDepNO: TStringField;
    SMZLScanDate: TDateTimeField;
    SMZLUSERDATE: TDateTimeField;
    SMZLUSERID: TStringField;
    SMZLDepName: TStringField;
    SMZLDDBH: TStringField;
    SMZLGXLB: TStringField;
    SMZLXXCC: TStringField;
    SMZLXH: TStringField;
    SMZLQty: TIntegerField;
    SMZLTotQty: TIntegerField;
    PrintDBGridEh1: TPrintDBGridEh;
    UpSMZL: TUpdateSQL;
    SMDDSSOther: TQuery;
    SMDDSSOtherDDBH: TStringField;
    SMDDSSOtherokQty: TIntegerField;
    SMZLYN: TStringField;
    SMZLSMNO: TFloatField;
    SMZLoldCTS: TIntegerField;
    SMZLSB: TStringField;
    SMZL2: TQuery;
    SMZL2SMNO: TFloatField;
    SMZL2CODEBAR: TStringField;
    SMZL2CTS: TIntegerField;
    SMZL2DepNO: TStringField;
    SMZL2ScanDate: TDateTimeField;
    SMZL2USERDATE: TDateTimeField;
    SMZL2USERID: TStringField;
    SMZL2YN: TStringField;
    SMZL2SB: TStringField;
    SMZL2YSBH: TStringField;
    SMZL2PRONO: TStringField;
    SMZL2XXCC: TStringField;
    SMZL2PerQty: TIntegerField;
    SMZL2GXLB: TStringField;
    DepBtn: TBitBtn;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure Edit1DblClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure SMZLCalcFields(DataSet: TDataSet);
    procedure BB7Click(Sender: TObject);
    procedure BB2Click(Sender: TObject);
    procedure BB3Click(Sender: TObject);
    procedure DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure BB6Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure bbt6Click(Sender: TObject);
  private
    { Private declarations }
  public
    DepID:string;
    DepGXLB:string;
    { Public declarations }
  end;

var
  ScankeyIn: TScankeyIn;
  NDate:TDate;

implementation

uses ScankeyIn_Dep1, ScankeyIn_Det1;

{$R *.dfm}

procedure TScankeyIn.FormDestroy(Sender: TObject);
begin
ScankeyIn:=nil;
end;

procedure TScankeyIn.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if BB5.enabled then
  begin
    showmessage('Pls save data first.');
    action:=canone;
  end
  else
    begin
      action:=cafree;
    end;
end;

procedure TScankeyIn.FormCreate(Sender: TObject);
begin
  with Qtemp do
  begin
    active:=false;
    sql.Clear;
    sql.add('select getdate() as NDate ');
    active:=true;
    NDate:=fieldbyname('NDate').Value;
    active:=false;
    DTP1.Date:=startoftheday(NDate);
    DTP2.Date:=endoftheday(NDate);
  end;
  
end;

procedure TScankeyIn.Edit1DblClick(Sender: TObject);
begin
  ScankeyIn_Dep:=TScankeyIn_Dep.create(self);
  ScankeyIn_Dep.show;
end;

procedure TScankeyIn.Button1Click(Sender: TObject);
begin
  if ScankeyIn.DepID='' then
  begin
    Showmessage('Please input DepID');
    abort;
  end;
  with SMZL do
  begin
    active:=false;
    sql.Clear;
    sql.add('select SMZL.*,BDepartment.DepName,SMDDSS.DDBH,SMDDSS.GXLB,SMDDSS.XXCC,SMDDSS.XH,SMDDSS.Qty,SMZL.CTS as oldCTS');
    sql.add('from SMZL ');
    sql.add('left join BDepartment on BDepartment.ID=SMZL.DepNo ');
    sql.add('left join SMDDSS on SMDDSS.CODEBAR=SMZL.CODEBAR ');
    sql.add('where SMZL.DepNO='+''''+ScankeyIn.DepID+'''');
    sql.add('      and SMZL.YN='+''''+'2'+'''');
    sql.Add('      and SMZL.SB is null');
    sql.add('      and convert(smalldatetime,convert(varchar,SMZL.ScanDate,111)) between ');
    sql.add('      '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
    sql.add('order by SMDDSS.GXLB,SMDDSS.DDBH,SMZL.CodeBar ');
    active:=true;
  end;
  bb2.enabled:=true;
  bb3.enabled:=true;
  bb5.enabled:=false;
  bb6.enabled:=false;
  bb7.enabled:=true;
  bbt1.enabled:=true;
  bbt2.enabled:=true;
  bbt3.enabled:=true;
  bbt4.enabled:=true;
  bbt6.enabled:=true;
end;

procedure TScankeyIn.SMZLCalcFields(DataSet: TDataSet);
begin
with SMZL do
  begin
    fieldbyname('TotQty').Value:=fieldbyname('Qty').Value*fieldbyname('CTS').Value ;
  end;
end;

procedure TScankeyIn.BB7Click(Sender: TObject);
begin
close;
end;

procedure TScankeyIn.BB2Click(Sender: TObject);
begin
  if Edit1.text='' then
  begin
    showmessage('Pls select department first.');
    abort;
  end;  
  with SMZL do
  begin
    requestlive:=true;
    cachedupdates:=true;
  end;
  if ScankeyIn_Det=nil then
    ScankeyIn_Det:=TScankeyIn_Det.create(self);
  ScankeyIn_Det.Edit2.Text:=edit1.Text;
  ScankeyIn_Det.show;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
end;

procedure TScankeyIn.BB3Click(Sender: TObject);
begin  {
//不能刪除下一工段已完成的訂單數量
with SMDDSSOther do
  begin
    active:=true;
    if recordcount>0 then
      begin
        if fieldbyname('okQty').Value<SMDDSS.FieldByName('TotQty').value) then
          begin
            showmessage('The Qty is not enough.'+#13+'前一工段完成數量不足此數量.');
            abort;
          end;
      end;
    active:=false;
  end; }
with SMZL do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
    fieldbyname('CTS').Value:=0;
    post;
  end;    
BB5.Enabled:=true;
BB6.Enabled:=true;

end;

procedure TScankeyIn.DBGridEh1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
if SMZL.fieldbyname('oldCTS').isnull then
  DBGrideh1.canvas.Font.Color:=clblue;  
if SMZL.fieldbyname('CTS').value=0 then
  DBGrideh1.canvas.Font.Color:=clred;
end;

procedure TScankeyIn.BB6Click(Sender: TObject);
begin
with SMZL do
  begin
    active:=false;
    cachedupdates:=false;
    requestlive:=false;
    active:=true;
  end;
bb5.enabled:=false;
bb6.enabled:=false;
end;

procedure TScankeyIn.BB5Click(Sender: TObject);
var i,DifQty:integer;
begin
try
  SMZL.first;
  for i:=1 to SMZL.RecordCount do
    begin
      case SMZL.updatestatus of
        usinserted:
          begin
            if SMZL.FieldByName('CTS').value<>0 then
              begin
                with Qtemp do
                  begin
                    active:=false;
                    sql.Clear;
                    sql.add('update SMDDSS ');
                    sql.add('set okCTS=okCTS+'+''''+SMZL.fieldbyname('CTS').asstring+''', ScanSDate=case when ScanSDate is null then GETDATE() else ScanSDate end, ScanEDate=GETDATE()');
                    sql.add('where CODEBAR='+''''+ SMZL.fieldbyname('CODEBAR').Value+'''');
                    execsql;
                  end;
                upSMZL.apply(ukinsert);
              end;
          end;
        usmodified:
          begin
            if SMZL.fieldbyname('CTS').value='0'then
              begin
                SMZL2.Active:=true;
                with Qtemp do
                  begin
                    active:=false;
                    sql.Clear;
                    sql.add('update SMDDSS ');
                    sql.add('set okCTS=okCTS-'+''''+SMZL.fieldbyname('oldCTS').asstring+''', ScanSDate=case when ScanSDate is null then GETDATE() else ScanSDate end, ScanEDate=GETDATE()');
                    sql.add('where CODEBAR='+''''+ SMZL.fieldbyname('CODEBAR').Value+'''');
                    execsql;
                    if SMZL2.FieldByName('SB').asstring='2' then
                      begin
                        DifQty:=SMZL2.fieldbyname('PerQty').value*SMZL2.fieldbyname('CTS').value;
                        active:=false;
                        sql.Clear;
                        sql.add('update SCBBSS ');
                        sql.Add('set Qty=Qty-'+''''+inttostr(DifQty)+'''');
                        sql.add('where PRONo='+''''+ SMZL2.fieldbyname('PRONO').asstring +'''');
                        sql.add('      and SCBH='+''''+SMZL2.fieldbyname('YSBH').asstring +'''');
                        sql.add('      and XXCC='+''''+SMZL2.fieldbyname('XXCC').asstring+'''');
                        sql.add('      and GXLB='+''''+SMZL2.fieldbyname('GXLB').asstring+'''');
                        sql.add('update SCBBS ');
                        sql.Add('set Qty=Qty-'+''''+inttostr(DifQty)+'''');
                        sql.add('where PRONo='+''''+ SMZL2.fieldbyname('PRONO').asstring +'''');
                        sql.add('      and SCBH='+''''+SMZL2.fieldbyname('YSBH').asstring +'''');
                        sql.add('      and GXLB='+''''+SMZL2.fieldbyname('GXLB').asstring+'''');
                        execsql;
                      end;
                  end;
                SMZL2.Active:=false;
                upSMZL.apply(ukdelete);
              end;
          end;
      end;
      SMZL.next;
    end;
SMZL.active:=false;
SMZL.cachedupdates:=false;
SMZL.requestlive:=false;
SMZL.active:=true;
bb5.enabled:=false;
bb6.enabled:=false;
except
  Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
end;

end;

procedure TScankeyIn.bbt6Click(Sender: TObject);
var
      eclApp,WorkBook:olevariant;
 //     xlsFileName:string;
      i,j:integer;
begin

if SMZL.Active then
  begin
    if SMZL.recordcount=0 then
      begin
        showmessage('No record.');
        abort;
      end;
  end
  else
    begin
      showmessage('No record.');
      abort;
    end;

try
  eclApp:=CreateOleObject('Excel.Application');
  WorkBook:=CreateOleObject('Excel.Sheet');
except
  Application.MessageBox('NO Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
  Exit;
end;

try
  WorkBook:=eclApp.workbooks.Add; 
  eclApp.Cells(1,1):='NO';
  for   i:=1   to   SMZL.fieldcount   do
    begin
      eclApp.Cells(1,i+1):=SMZL.fields[i-1].FieldName;
    end;
  SMZL.First;
  j:=2;
  while   not  SMZL.Eof   do
    begin
      eclApp.Cells(j,1):=j-1;
      for   i:=1   to   SMZL.fieldcount   do
        begin
          eclApp.Cells(j,i+1):=SMZL.Fields[i-1].Value;
          eclApp.Cells.Cells.item[j,i+1].font.size:='8';
        end;
      SMZL.Next;
      inc(j);
    end;
  eclapp.columns.autofit;
  showmessage('Succeed.');
  eclApp.Visible:=True;
except
  on   F:Exception   do
    showmessage(F.Message);
end;


end;

end.
