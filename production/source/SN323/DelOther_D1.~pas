unit DelOther_D1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, DBTables, DB, StdCtrls, DBCtrls, ComCtrls, Grids, StrUtils,
  DBGrids, Mask, Buttons, ExtCtrls,dateutils,Comobj,math, GridsEh, DBGridEh
  ,IniFiles;

type
  TDelOther_D = class(TForm)
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
    Panel6: TPanel;
    Label17: TLabel;
    BD2: TBitBtn;
    BD3: TBitBtn;
    BD4: TBitBtn;
    BD5: TBitBtn;
    BD6: TBitBtn;
    BD7: TBitBtn;
    BDT1: TBitBtn;
    BDT2: TBitBtn;
    BDT3: TBitBtn;
    BDT4: TBitBtn;
    BDT5: TBitBtn;
    BDT6: TBitBtn;
    PC1: TPageControl;
    TS3: TTabSheet;
    Panel4: TPanel;
    Label9: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    DBEdit3: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit7: TDBEdit;
    BBTT1: TBitBtn;
    Panel2: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    CBX1: TComboBox;
    Check: TCheckBox;
    TS4: TTabSheet;
    Panel3: TPanel;
    Label7: TLabel;
    Label8: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBMemo1: TDBMemo;
    DBEdit13: TDBEdit;
    BBTT2: TBitBtn;
    DBEdit14: TDBEdit;
    DS4: TDataSource;
    DelDet: TQuery;
    UPDet: TUpdateSQL;
    DS3: TDataSource;
    DelMas: TQuery;
    DelMasLLNO: TStringField;
    DelMasSCBH: TStringField;
    DelMasDepID: TStringField;
    DelMasDepName: TStringField;
    DelMasUSERDATE: TDateTimeField;
    DelMasUSERID: TStringField;
    DelMasCFMDate: TDateTimeField;
    DelMasCFMID: TStringField;
    DelMasYN: TStringField;
    DelMasGSBH: TStringField;
    DelMasCKBH: TStringField;
    DelMasPMark: TIntegerField;
    UpMas: TUpdateSQL;
    Query1: TQuery;
    BDelRec: TQuery;
    btbDC: TBitBtn;
    Label5: TLabel;
    Label6: TLabel;
    Label10: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DelMasSEASON: TStringField;
    DelMasDEVTYPE: TStringField;
    DBEdit4: TDBEdit;
    DelMasPURPOSE: TStringField;
    DelMasMEMO: TStringField;
    DBGridEh1: TDBGridEh;
    DBX2: TDBComboBox;
    DBGridEh2: TDBGridEh;
    DelDetLLNO: TStringField;
    DelDetCLBH: TStringField;
    DelDetDFL: TStringField;
    DelDetSCBH: TStringField;
    DelDetTempQty: TCurrencyField;
    DelDetQty: TCurrencyField;
    DelDetUSPrice: TCurrencyField;
    DelDetVNPrice: TCurrencyField;
    DelDetCostID: TStringField;
    DelDetUserDate: TDateTimeField;
    DelDetUserID: TStringField;
    DelDetYN: TStringField;
    DelDetCLSL: TCurrencyField;
    DelDetYYBH: TStringField;
    DelDetBLSB: TStringField;
    DelDetCWSB: TStringField;
    DelDetYWPM: TStringField;
    DelDetDWBH: TStringField;
    DelDetYWSM: TStringField;
    DelDetZWSM: TStringField;
    DelDetZWPM: TStringField;
    DelDetVNACC: TCurrencyField;
    DelDetMemo: TStringField;
    DelDetCWHL: TCurrencyField;
    DelDetLLMemo: TStringField;
    Label22: TLabel;
    Edit2: TEdit;
    DelMasBP: TBooleanField;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BB1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BB7Click(Sender: TObject);
    procedure BD7Click(Sender: TObject);
    procedure BB2Click(Sender: TObject);
    procedure BB3Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure BD2Click(Sender: TObject);
    procedure BD3Click(Sender: TObject);
    procedure BD4Click(Sender: TObject);
    procedure BD5Click(Sender: TObject);
    procedure BD6Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure BBT1Click(Sender: TObject);
    procedure BBT2Click(Sender: TObject);
    procedure BBT3Click(Sender: TObject);
    procedure BBT4Click(Sender: TObject);
    procedure BDT1Click(Sender: TObject);
    procedure BDT2Click(Sender: TObject);
    procedure BDT3Click(Sender: TObject);
    procedure BDT4Click(Sender: TObject);
    procedure BBTT1Click(Sender: TObject);
    procedure DelDetAfterOpen(DataSet: TDataSet);
    procedure BBTT2Click(Sender: TObject);
    procedure PC1Change(Sender: TObject);
    procedure BDT5Click(Sender: TObject);
    procedure DelMasAfterOpen(DataSet: TDataSet);
    procedure DelDetCalcFields(DataSet: TDataSet);
    procedure btbDCClick(Sender: TObject);
    procedure DelMasAfterScroll(DataSet: TDataSet);
    procedure DelDetYYBHSetText(Sender: TField; const Text: String);
    procedure bbt6Click(Sender: TObject);
    procedure BDT6Click(Sender: TObject);
    procedure DelMasMEMOSetText(Sender: TField; const Text: String);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure DBGridEh1EditButtonClick(Sender: TObject);
    procedure DBGridEh1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGridEh2DblClick(Sender: TObject);
    procedure DBGridEh2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure DBGridEh2EditButtonClick(Sender: TObject);
  private
    //20150513 儲存時檢查開發中心庫存分類數量
    LastMon:string;
    LastYear:string;
    STLastMonDate:string;
    EDLastMonDate:string;
    LastMon2:string;
    LastYear2:string;
    STDate:string;
    EDDate:string;
    { Private declarations }          
    procedure GetDateParam();
    procedure ReadIni();
    Function CheckClassifyQty(Qty:Double;DFL:Byte;var KCQty:Double):boolean;
  public
    IsHide_Warehouse_XT:string;
    UserDepID:string;//開發或技轉單位 同為CDC
    { Public declarations }
    DevQty, TechQty: real;
    VNPrice_DiplayFormat:string;
    VNPrice_Decimal:Byte;
    Pro_CostID:string;
    Pro_CostID_HC:string;
  end;
var
  DelOther_D: TDelOther_D;
  NDate,sdate,edate:TDate;
implementation

uses main1, DelOther_D_Dep1, DelOther_D_CL1, DelOther_D_YY1,
  DelOther_D_Print1, LLMaterial1,FunUnit, LLMaterialSR1;

{$R *.dfm}
//
function DaysOfItsMonth(ADate:   TDateTime):   Word;
var
   Y,M,D:Word;
begin
    DecodeDate(ADate,Y,M,D);
    ADate:=EncodeDate(Y,M,1);
    Result:=Trunc(IncMonth(ADate,1)-ADate);
end;


procedure TDelOther_D.ReadIni();
var MyIni :Tinifile;
    AppDir:string;
begin
  IsHide_Warehouse_XT:='N';
  //
  VNPrice_DiplayFormat:='#,##0';
  VNPrice_Decimal:=0;
  AppDir:=ExtractFilePath(Application.ExeName);
  if FileExists(AppDir+'\ComName.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ComName.ini');
      VNPrice_DiplayFormat:=MyIni.ReadString('VNPrice','DiplayFormat','#,##0');
      VNPrice_Decimal:=strtoint(MyIni.ReadString('VNPrice','Decimal','0'));
      //隱藏XT
      IsHide_Warehouse_XT:=MyIni.ReadString('ERP','IsHide_Warehouse_XT','N');
      Pro_CostID:= MyIni.ReadString('ERP','Pro_CostID','');
      Pro_CostID_HC:= MyIni.ReadString('ERP','Pro_CostID_HC','');
    finally
      MyIni.Free;
    end;
  end;
  TCurrencyField(DelDet.FieldByName('VNPrice')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(DelDet.FieldByName('VNACC')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(DelDet.FieldByName('CWHL')).DisplayFormat:=VNPrice_DiplayFormat;
end;

procedure TDelOther_D.GetDateParam();
var myYear, myMonth, myDay : Word;
    tmpDate:TDate;
begin
  tmpDate:=incmonth(Date(),-1);
  DecodeDate(tmpDate, myYear, myMonth, myDay);
  LastMon:=Format('%.2d',[myMonth]);
  LastYear:=Format('%.4d',[myYear]);
  STLastMonDate:=FormatDateTime('YYYY/MM/DD', EncodeDate(myYear, myMonth, 1));
  EDLastMonDate:=FormatDateTime('YYYY/MM/DD', EncodeDate(myYear, myMonth, DaysOfItsMonth(tmpDate)));

  tmpDate:=incmonth(Date(),-2);
  DecodeDate(tmpDate, myYear, myMonth, myDay);
  LastMon2:=Format('%.2d',[myMonth]);
  LastYear2:=Format('%.4d',[myYear]);

  DecodeDate(Date(), myYear, myMonth, myDay);
  STDate:=FormatDateTime('YYYY/MM/DD', EncodeDate(myYear, myMonth, 1));
  EDDate:=FormatDateTime('YYYY/MM/DD', Date());
end;

procedure TDelOther_D.FormDestroy(Sender: TObject);
begin
  DelOther_D:=nil;
end;

procedure TDelOther_D.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if BB5.enabled  then
  begin
    messagedlg('You have to save data Record of report first.',mtwarning,[mbyes],0);
    PC1.ActivePage:=TS3;
    panel1.Visible:=true;
    panel6.Visible:=false;
    action:=canone;
  end else
  begin
    if BD5.enabled then
    begin
      messagedlg('You have to save data Report first.',mtwarning,[mbyes],0);
      PC1.ActivePage:=TS4;
      panel6.Visible:=true;
      panel1.Visible:=false;
      action:=canone;
    end else
    begin
      action:=Cafree;
    end;
  end;
end;

procedure TDelOther_D.BB1Click(Sender: TObject);
begin
  panel2.Visible:=true;
end;

procedure TDelOther_D.Button1Click(Sender: TObject);
begin
  with DelMas do
  begin
    active:=false;
    sql.Clear;
    sql.add('select KCLL.*,BDepartment.DepName  ');
    sql.add('from (select * from KCLL union all select * from KCLL_2014)KCLL');
    sql.add('left join BDepartment on KCLL.DepID=BDepartment.ID');
    sql.add('where ISNULL(flowflag,'''')<>''X'' and KCLL.LLNO like ');
    sql.add(''''+edit1.Text+'%'+'''');
    if CBX1.itemindex<>0 then
    begin
      sql.add('and BDepartment.DepName like ');
      sql.add(''''+CBX1.Text+'%'+'''');
    end;
    if Edit2.Text <> '' then
      sql.Add('and KCLL.Memo like '''+Edit2.Text+'%'' ');
    sql.add('and convert(smalldatetime,convert(varchar,KCLL.USERDATE,111)) between ');
    sql.add(''''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date) +'''');
    sql.add('and KCLL.SCBH='+''''+'DDDDDDDDDD'+'''');
    sql.add('and KCLL.GSBH='+''''+main.Edit2.Text+'''');
    if Check.Checked then
    begin
      sql.Add('and KCLL.USERID='+''''+main.Edit1.Text+'''');
    end;
    sql.add('order by LLNO DESC');
    active:=true;
  end;
  panel2.Visible:=false;
  BB2.Enabled:=true;
  BB3.Enabled:=true;
  BB4.Enabled:=true;
  BBT1.Enabled:=true;
  BBT2.Enabled:=true;
  BBT3.Enabled:=true;
  BBT4.Enabled:=true;
  BBT6.Enabled:=true;
  check.Checked:=true;
  DelDet.Active:=true;
end;


procedure TDelOther_D.FormCreate(Sender: TObject);
var i:integer;
begin
  with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select ID,DepName from BDepartment');
    sql.add('where GSBH='+''''+main.Edit2.Text+'''');
    sql.add('order by ID');
    active:=true;
    for i:=1 to recordcount do
    begin
      CBX1.Items.Add(fieldbyname('DepName').asstring);
      next;                                                 
    end;
    CBX1.itemindex:=0;
    active:=false;
    sql.Clear;
    sql.add('select CKBH from KCCK where GSBH = '''+main.Edit2.Text+''' order by CKBH');
    active:=true;
    DBX2.Items.Clear;
    for i:=1 to recordcount do
    begin
      DBX2.Items.Add(fieldbyname('CKBH').asstring);
      next;
    end;
    if (main.Edit2.Text='CDC') or (main.Edit2.Text='SKX') or (main.Edit2.Text='SRL') then
    begin
      DBX2.Items.Add('VTXW');
    end;
    if (main.Edit2.Text='TBDC') then
    begin
      DBX2.Items.Add('TBXW');
    end;
    active:=false;
    sql.Clear;
    sql.add('select getdate() as NDate ');
    active:=true;
    NDate:=fieldbyname('NDate').Value;
    active:=false;
    sql.Clear;
    sql.add('select DepID from BUsers where UserID='''+main.Edit1.Text+''' ');
    Active:=true;
    UserDepID:=fieldbyname('DepID').AsString;
    active:=false;
  end;
  PC1.ActivePage:=TS3;
  DTP1.Date:=Ndate-3;
  DTP2.date:=Ndate;
  if (main.Edit2.Text='CDC') then
  begin
    DBGridEh1.Columns[15].Visible:=true;
  end else
  begin
    DBGridEh1.Columns[15].Visible:=false;
  end;
  //20131206開發中心材料數量分類時間參數
  GetDateParam();
  ReadIni();
  //
end;

procedure TDelOther_D.BB7Click(Sender: TObject);
begin
  close;
end;

procedure TDelOther_D.BD7Click(Sender: TObject);
begin
  close;
end;

procedure TDelOther_D.BB2Click(Sender: TObject);
begin
  with DelMas do
  begin
    requestlive:=true;
    cachedupdates:=true;
    insert;
  end;
  BBTT1.Visible:=true;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
  DBGridEh1.columns[2].ButtonStyle:=cbsEllipsis;
end;

procedure TDelOther_D.BB3Click(Sender: TObject);
begin
  if (DelDet.recordcount=0)  and (delmas.FieldByName('pmark').Value=Null) then
  begin
    with DelMas do
    begin
      requestlive:=true;
      cachedupdates:=true;
      edit;
      fieldbyname('YN').Value:='0';
    end;
  end else
  begin
    showmessage('Pls delete the Deliver Detail first.')
  end;
  BBTT1.Visible:=true;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
  DBGridEh1.columns[2].ButtonStyle:=cbsEllipsis;
end;

procedure TDelOther_D.BB4Click(Sender: TObject);
begin
  with DelMas do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
  BBTT1.Visible:=true;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
  DBGridEh1.columns[2].ButtonStyle:=cbsEllipsis;
end;

procedure TDelOther_D.BB5Click(Sender: TObject);
var y,m,a:string;
i:integer;
begin
  with query1 do          //取服務器的年月值
  begin
    active:=false;
    sql.Clear;
    sql.Add('select year(getdate()) as FY,month(getdate()) as FM,getdate() as NDate ');
    active:=true;
    y:=fieldbyname('FY').asstring;
    m:=fieldbyname('FM').asstring;
    NDate:=fieldbyname('NDate').value;
    active:=false;
  end;
  if length(m)<2 then
    m:='0'+m;
  try
    DelDet.Active:=false;
    DelMas.first;
    for i:=1 to DelMas.RecordCount do
      begin
        case DelMas.updatestatus of
          usinserted:
            begin
              if DelMas.fieldbyname('DepID').isnull then
                begin
                  DelMas.delete;
                end
                 else
                   begin
                     with query1 do    //計算領料單流水號
                       begin
                         active:=false;
                         sql.Clear;
                         sql.Add('select LLNO from KCLL where LLNO like '+''''+y+m+'%'+'''');
                         sql.add('order by LLNO');
                         active:=true;
                         if recordcount >0 then
                           begin
                             last;
                             a:=fieldbyname('LLNO').AsString;
                             a:=copy(a,7,5);
                             a:=inttostr(strtoint(a)+1);
                             while length(a)<5 do
                               begin
                                 a:='0'+a;
                               end;
                           end
                             else
                               begin
                                 a:='00001';
                               end;
                         a :=y+m+a;
                         active:=false;
                       end;
                     DelMas.edit;
                     DelMas.fieldbyname('LLNO').Value:=a;
                     DelMas.fieldbyname('GSBH').Value:=main.Edit2.Text;
                     DelMas.fieldbyname('SCBH').Value:='DDDDDDDDDD' ;
                     DelMas.FieldByName('userID').Value:=main.edit1.text;
                     DelMas.FieldByName('userdate').Value:=Ndate;
                     DelMas.FieldByName('CFMID').Value:='NO';
                     DelMas.FieldByName('YN').Value:='1';
                     upMas.apply(ukinsert);
                   end;
            end;
          usmodified:
             begin
               if DelMas.FieldByName('USERID').value<>main.Edit1.Text then
                 begin
                   showmessage('不是你的，不要亂動。khong phai ban khong duoc tu sua');
                 end
                 else
                   begin
                     if DelMas.fieldbyname('YN').value='0'then
                       begin
                         with BDelRec do
                           begin
                             active:=false;
                             sql.Clear;
                             {sql.add('insert into BDelRec ');
                             sql.add('(TableName ,TNO,CLBH,OldID,DelID,DelDate)');
                             sql.add('values ('+''''+'KCLL'+''''+','+''''+DelMas.fieldbyname('LLNO').Value+'''');
                             sql.add(','+''''+' '+''''+','+''''+DelMas.fieldbyname('USERID').Value+''''+',');
                             sql.add(''''+main.Edit1.Text+''''+',getdate())');}
                             SQL.Add('Update KCLL Set flowflag=''X'' where LLNO='''+DelMas.FieldByName('LLNO').AsString+''' ');
                             execsql;
                             active:=false;
                           end;
                         //upMas.apply(ukdelete);
                       end
                       else
                         begin
                           if (DelMas.FieldByName('CFMID').value='NO')   then
                             begin
                               if (NDate-DelMas.FieldByName('USERDATE').value)<=3  then
                                 begin
                                   DelMas.edit;
                                   DelMas.FieldByName('userID').Value:=main.edit1.text;
                                   DelMas.FieldByName('userdate').Value:=Ndate;
                                   upMas.apply(ukmodify);
                                 end
                                 else
                                   begin
                                     showmessage('Date>3, can not modify.');
                                   end;
                             end
                             else
                               begin
                                 showmessage('Already confirmed, can not modify.');
                               end;
                          end;
                   end;
             end;
        end;
       DelMas.next;
      end;
  DelMas.active:=false;
  DelMas.cachedupdates:=false;
  DelMas.requestlive:=false;
  DelMas.active:=true;
  DelDet.Active:=true;
  bb5.enabled:=false;
  bb6.enabled:=false;
  BBTT1.Visible:=false;
  DBGridEh1.columns[2].ButtonStyle:=cbsnone;
  except
    Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
  end;
end;

procedure TDelOther_D.BD2Click(Sender: TObject);
begin
  if DelMas.RequestLive then
  begin
    showmessage('Pls save Master data first.');
    PC1.ActivePage:=TS3;
    panel6.visible:=false;
    panel1.visible:=true;                                             
    abort;
  end;
{  if main.Edit2.Text = 'CDC' then begin
    with Query1 do
    begin
      SQL.Clear;
      Active := false;
      SQL.Add('Select Complete from shoetest where testno = '''+DelMas.FieldByName('MEMO').AsString+''' and SUBSTRING(YPDH,4,1) = ''V''');
      Active := true;
      if Fields[0].Value <> null then begin
        showmessage('The Sample Order is Finish !');
        PC1.ActivePage:=TS3;
        panel6.visible:=false;
        panel1.visible:=true;
        abort;
      end;
    end;
  end;
}
  with DelDet do
  begin
    requestlive:=true;
    cachedupdates:=true;
    insert;
  end;
  {
  if DelMas.FieldByName('MEMO').isnull then  //有打通報號碼只能用BOM按鈕領 ,反之沒打只能用,,,按鈕領
  begin
    btbDC.enabled:=false;
    bbtt2.Enabled:=true;
  end;

  if not DelMas.FieldByName('MEMO').isnull then
  begin
    btbDC.enabled:=true;
    bbtt2.Enabled:=false;
  end;
  }
  //if DelDet.FieldByName('TempQty').OldValue=NULL then  OldCLSL:=0 else  OldCLSL:=DelDet.FieldByName('TempQty').OldValue;
  btbDC.visible:=true;
  BBTT2.Visible:=true;
  BD5.Enabled:=true;
  BD6.Enabled:=true;
  DBGridEh2.columns[3].ButtonStyle:=cbsEllipsis;
end;

procedure TDelOther_D.BD3Click(Sender: TObject);
begin
  if DelMas.RequestLive then
  begin
    showmessage('Pls save Master data first.');
    PC1.ActivePage:=TS3;
    panel6.visible:=false;
    panel1.visible:=true;
    abort;
  end;

  with DelDet do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
    fieldbyname('YN').Value:='0';
  end;
  BD5.Enabled:=true;
  BD6.Enabled:=true;
  //dbgrid4.columns[0].ButtonStyle:=cbsEllipsis;
  DBGridEh2.columns[3].ButtonStyle:=cbsEllipsis;
end;

procedure TDelOther_D.BD4Click(Sender: TObject);
begin
  if DelMas.RequestLive then
  begin
    showmessage('Pls save Master data first.');
    PC1.ActivePage:=TS3;
    panel6.visible:=false;
    panel1.visible:=true;
    abort;
  end;
  with DelDet do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
  btbDC.visible:=true;
  BBTT2.Visible:=true;
  BD5.Enabled:=true;
  BD6.Enabled:=true;
  //dbgrid4.columns[0].ButtonStyle:=cbsEllipsis;
  DBGridEh2.columns[3].ButtonStyle:=cbsEllipsis;

end;
//Qty領用庫存 DFL=0  DEV開發, DEV=1 TEC技轉
Function TDelOther_D.CheckClassifyQty(Qty:Double;DFL:Byte;var KCQty:Double):boolean;
var tmpRes:boolean;
begin
 tmpRes:=true;
 with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.Add('select CLZL.CLDH,CLZL.CLLB,CLZL.YWPM,CLZL.ZWPM,CLZL.DWBH,KCZLS.KCQty');
    sql.Add('from clzl');
    sql.add('left join KCZLS on KCZLS.CLBH=CLZL.CLDh and KCZLS.CKBH='+''''+DelOther_D.DelMas.fieldbyname('CKBH').value+'''');
    sql.add('where CLZL.CLDH ='''+DelDet.FieldByName('CLBH').AsString+''' ');
    sql.add('order by CLZL.CLDH desc');
    active:=true;
  end;
  result:=tmpRes;
end;

procedure TDelOther_D.BD5Click(Sender: TObject);
var i:integer;
    KCQty:double;
begin
  with Query1 do
  begin
    Active:=false;
    SQL.Clear;
    sql.Add('select *from bgszl');
    sql.Add('where gsdh ='''+Delmas.FieldByName('GSBH').Value+''' ');
    Active:=true;
  end;

  with DelDet do
  begin
    first;
    while not DelDet.Eof do
    begin
      if DelDet.FieldByName('TempQty').IsNull then
      begin
        showmessage('The Qty can not be empty.');
        abort;
      end;
      if DelDet.FieldByName('YYBH').IsNull then
      begin
        showmessage('The YYBH can not be empty.');
        abort;
      end;
      next;
    end;
  end;
  //
  try
    DelDet.first;
    for i:=1 to DelDet.RecordCount do
      begin
        case DelDet.updatestatus of
          usinserted:
            begin
              if DelMas.FieldByName('USERID').value<>main.Edit1.Text then
                begin
                  showmessage('不是你的，不要亂動。khong phai ban khong duoc tu sua');
                end
                else
                  begin
                      if DelDet.fieldbyname('CLBH').isnull then
                      begin
                        DelDet.delete;
                      end else
                      begin
                          DelDet.edit;
                          if DelDet.fieldbyname('SCBH').isnull then
                          begin
                              DelDet.fieldbyname('SCBH').Value:=DelMas.fieldbyname('SCBH').Value;
                          end;
                          //DelDet.fieldbyname('TempQty').value:=ceil(DelDet.fieldbyname('TempQty').Value*100)/100;  //20180423 改為無條件進到小數第二位Johny
                          //DelDet.fieldbyname('TempQty').Value:=formatfloat('#,##0.##',Deldet.fieldbyname('TempQty').Value); //20141023 四捨五入到小數第二位
                          DelDet.fieldbyname('DFL').value:='N';
                          DelDet.fieldbyname('TempQty').value:=Round(DelDet.fieldbyname('TempQty').Value*100+0.49)/100;
                          DelDet.fieldbyname('Qty').Value:=Deldet.fieldbyname('TempQty').Value;
                          DelDet.fieldbyname('LLNO').Value:=DelMas.fieldbyname('LLNO').Value;
                          DelDet.FieldByName('userID').Value:=main.edit1.text;
                          DelDet.FieldByName('userdate').Value:=Ndate;
                          DelDet.FieldByName('YN').Value:='1';

                          if Query1.FieldByName('SFL').Value = 'DC' then
                          begin
                              if DelMas.FieldByName('CKBH').AsString='VTXW' then
                              begin
                                DelDet.FieldByName('CostID').Value:=Pro_CostID_HC;
                              end else
                              begin
                                DelDet.FieldByName('CostID').Value:=Pro_CostID;
                              end;
                          //
                          end else DelDet.fieldbyname('CostID').value:='627';

                          upDet.apply(ukinsert);
                          //開發紀錄樣品單通報領料數量
                          if not DelMas.fieldbyname('MEMO').isnull then
                          begin
                             with BDelRec do
                             begin
                                active:=false;
                                sql.Clear;
                                sql.add('insert into shoetests ');
                                sql.add('(LLNO ,clbh,qty,testno,Userid,Userdate)');
                                sql.add('values ('+' '''+DelDet.fieldbyname('LLNO').Value+''' '+','+' '''+Deldet.fieldbyname('clbh').Value+'''   '+','+'   '''+formatfloat('#,##0.##',Deldet.fieldbyname('TempQty').Value)+'''  ');
                                sql.add(' '+','+''''+DelMas.fieldbyname('MEMO').Value+''''+',');
                                sql.add(''''+main.Edit1.Text+''''+',getdate())');
                                execsql;
                                active:=false;
                            end;
                          end;
                        end;
                  end;
            end;
          usmodified:
            begin
              if DelDet.FieldByName('USERID').value<>main.Edit1.Text then
               begin
                 showmessage('不是你的，不要亂動。khong phai ban khong duoc tu sua');
               end
               else
                 begin
                   if DelDet.fieldbyname('YN').value='0'then
                   begin
                      with BDelRec do
                      begin
                           active:=false;
                           sql.Clear;
                           sql.add('insert into BDelRec ');
                           sql.add('(TableName ,TNO,CLBH,OldID,DelID,DelDate)');
                           sql.add('values ('+''''+'KCLLS'+''''+','+''''+DelDet.fieldbyname('LLNO').Value+'''');
                           sql.add(','+''''+DelDet.fieldbyname('CLBH').Value+''''+','+''''+DelDet.fieldbyname('USERID').Value+''''+',');
                           sql.add(''''+main.Edit1.Text+''''+',getdate())');
                           execsql;
                           active:=false;
                      end;
                      //開發紀錄樣品單通報領料數量
                      if not DelMas.fieldbyname('MEMO').isnull then
                      begin
                         with BDelRec do
                         begin
                           active:=false;
                           sql.Clear;
                           sql.add('delete shoetests ');
                           sql.add('where llno='''+DelDet.fieldbyname('LLNO').Value+''' and  clbh='''+Deldet.fieldbyname('clbh').Value+''' and testno='''+DelMas.fieldbyname('MEMO').Value+''' and qty='''+formatfloat('#,##0.##',Deldet.fieldbyname('TempQty').Value)+''' ');
                           execsql;
                           active:=false;
                         end;
                      end;
                      UpDet.apply(ukdelete);
                   end else
                   begin
                      //開發紀錄樣品單通報領料數量
                      if not DelMas.fieldbyname('MEMO').isnull then
                      begin
                        with BDelRec do
                        begin
                          active:=false;
                          sql.Clear;
                          sql.add('update shoetests set qty='''+formatfloat('#,##0.##',Deldet.fieldbyname('TempQty').Value)+''' ');
                          sql.add('where llno='''+DelDet.fieldbyname('LLNO').Value+''' and  clbh='''+Deldet.fieldbyname('clbh').Value+''' and testno='''+DelMas.fieldbyname('MEMO').Value+'''  ');
                          execsql;
                          active:=false;
                       end;
                     end;
                     DelDet.edit;
                     DelDet.fieldbyname('TempQty').value:=Round(DelDet.fieldbyname('TempQty').Value*100+0.49)/100;
                     DelDet.fieldbyname('Qty').Value:=Deldet.fieldbyname('TempQty').Value;
                     DelDet.FieldByName('userID').Value:=main.edit1.text;
                     DelDet.FieldByName('userdate').Value:=Ndate;
                     UpDet.apply(ukmodify);
                   end;
                end;
            end;
        end;
        DelDet.next;
      end;
  DelDet.active:=false;
  DelDet.cachedupdates:=false;
  DelDet.requestlive:=false;
  DelDet.active:=true;
  bb6.enabled:=false;
  btbDC.visible:=false;
  BBTT2.Visible:=false;
  BD5.Enabled:=false;
  BD6.Enabled:=false;
  DBGridEh2.columns[0].ButtonStyle:=cbsNone;
  //DBGrid4.Columns[5].ReadOnly:=true;
  //dbgrid4.columns[5].ButtonStyle:=cbsNone;
  DBGridEh2.columns[3].ButtonStyle:=cbsNone;
  //Tfloatfield(dbgrid4.Fields[2]).displayformat:='00.00' ;
  except
    On E:Exception do
    begin
      Messagedlg('Have wrong, can not save data!'+E.Message,mtwarning,[mbyes],0);
    end;
  end;
end;

procedure TDelOther_D.BD6Click(Sender: TObject);
begin
  with DelDet do
  begin
    active:=false;
    requestlive:=false;
    cachedupdates:=false;
    active:=true;
  end;
  btbDC.Visible:=false;
  BBTT2.Visible:=false;
  BD5.Enabled:=false;
  BD6.Enabled:=false;
  DBGridEh2.columns[0].ButtonStyle:=cbsNone;
  //dbgrid4.columns[5].ButtonStyle:=cbsNone;
  //DBGrid4.Columns[5].ReadOnly:=true;
  DBGridEh2.columns[3].ButtonStyle:=cbsNone;
end;

procedure TDelOther_D.BB6Click(Sender: TObject);
begin
  with DelMas do
  begin
    active:=false;
    requestlive:=false;
    cachedupdates:=false;
    active:=true;
  end;
  bb5.enabled:=false;
  bb6.enabled:=false;
  BBTT1.Visible:=false;
  DBGridEh1.columns[2].ButtonStyle:=cbsnone;
end;

procedure TDelOther_D.BBT1Click(Sender: TObject);
begin
  DelMas.First;
end;

procedure TDelOther_D.BBT2Click(Sender: TObject);
begin
  DelMas.Prior;
end;

procedure TDelOther_D.BBT3Click(Sender: TObject);
begin
  DelMas.next;
end;

procedure TDelOther_D.BBT4Click(Sender: TObject);
begin 
  DelMas.last;
end;

procedure TDelOther_D.BDT1Click(Sender: TObject);
begin
  DelDet.first;
end;

procedure TDelOther_D.BDT2Click(Sender: TObject);
begin
  DelDet.prior;
end;

procedure TDelOther_D.BDT3Click(Sender: TObject);
begin
  DelDet.next;
end;

procedure TDelOther_D.BDT4Click(Sender: TObject);
begin
  DelDet.last;
end;

procedure TDelOther_D.BBTT1Click(Sender: TObject);
begin
  DelOther_D_Dep:=TDelOther_D_Dep.Create(self);
  DelOther_D_Dep.Show;
end;

procedure TDelOther_D.DelDetAfterOpen(DataSet: TDataSet);
begin
  BD2.Enabled:=true;
  BD3.Enabled:=true;
  BD4.Enabled:=true;
  BDT1.Enabled:=true;
  BDT2.Enabled:=true;
  BDT3.Enabled:=true;
  BDT4.Enabled:=true;
  BDT5.Enabled:=true;
  BDT6.Enabled:=true;
  if (NDate-DelMas.FieldByName('USERDATE').value)>2  then
    begin
      BD2.Enabled:=false;
      BD3.Enabled:=false;
      BD4.Enabled:=false;
    end;
  if DelMas.FieldByName('CFMID').value<>'NO'  then
    begin
      BD2.Enabled:=false;
      BD3.Enabled:=false;
      BD4.Enabled:=false;
    end;
  if DelMas.FieldByName('USERID').value<>main.edit1.text  then
    begin
      BD2.Enabled:=false;
      BD3.Enabled:=false;
      BD4.Enabled:=false;
    end;
  if DelMas.cachedupdates  then
    begin
      BD2.Enabled:=false;
      BD3.Enabled:=false;
      BD4.Enabled:=false;
    end;
  if not DelMas.FieldByName('PMARK').isnull  then
    begin
      BD2.Enabled:=false;
      BD3.Enabled:=false;
      BD4.Enabled:=false;
    end;
  BD5.Enabled:=false;
  BD6.Enabled:=false;
end;

procedure TDelOther_D.BBTT2Click(Sender: TObject);
begin
  DelOther_D_CL:=TDelOther_D_CL.create(self);
  DelOther_D_CL.show;
end;

procedure TDelOther_D.PC1Change(Sender: TObject);
begin
  if PC1.ActivePage=TS4 then
  begin
    panel6.visible:=true;
    panel1.visible:=false;
  end else
  begin
    panel6.visible:=false;
    panel1.visible:=true;
  end;
  if bd6.Enabled=true then
    bd6.Click;
end;

procedure TDelOther_D.BDT5Click(Sender: TObject);
begin
 if DelDet.RequestLive then
  begin
    showmessage('Pls save data first.');
    abort;
  end
    else
      begin
        with DelDet do
          begin
           { requestlive:=true;
            cachedupdates:=true;
            first;
            while not eof do
              begin
                edit;
                fieldbyname('Memo').value:=fieldbyname('YWSM').value+'/'+fieldbyname('ZWSM').value+'//'+fieldbyname('Memo').value;
                post;
                next;
              end; }
            DelOther_D_Print:=TDelOther_D_Print.Create(nil);
            DelOther_D_Print.quickrep1.prepare;
            DelOther_D_Print.Qpage1.caption:=inttostr(DelOther_D_Print.quickrep1.QRPrinter.pagecount);
            DelOther_D_Print.quickrep1.preview;
            DelOther_D_Print.Free;
            Active:=false;
            cachedupdates:=false;
            requestlive:=false;
            Active:=true;
          end;
      end;
  with DelMas do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
    if fieldbyname('PMARK').isnull then
      begin
        fieldbyname('PMARK').value:=1;
      end
      else
        begin
          fieldbyname('PMARK').value:=fieldbyname('PMARK').value+1;
        end;
    UPMAS.Apply(ukmodify);
    requestlive:=false;
    cachedupdates:=false;
  end;
end;

procedure TDelOther_D.DelMasAfterOpen(DataSet: TDataSet);
begin
  BB5.Enabled:=false;
  BB6.Enabled:=false;
  BD5.Enabled:=false;
  BD6.Enabled:=false;
end;

procedure TDelOther_D.DelDetCalcFields(DataSet: TDataSet);
begin
  if deldet.FieldByName('CLSL').value<>0 then
  begin
     deldet.FieldByName('person').value:=deldet.FieldByName('tempqty').value/deldet.FieldByName('CLSL').value*100;
  end else
  begin
    deldet.FieldByName('person').value:=0;
  end;
end;

procedure TDelOther_D.btbDCClick(Sender: TObject);
begin
  LLMaterialSR:=TLLMaterialSR.Create(self);
  LLMaterialSR.Show();
end;

procedure TDelOther_D.DelMasAfterScroll(DataSet: TDataSet);
var i:integer;
begin
  DelDet.UpdateObject:=UPDet;
end;

procedure TDelOther_D.DelDetYYBHSetText(Sender: TField;
  const Text: String);
begin
  Sender.Value:=Text;
  with Query1 do
  begin
    active:=false;
    sql.clear;
    sql.Add('select * from SCBLYY');
    sql.add('where YYBH='''+Sender.AsString+''' ');
    sql.add('      and YN<>''5'' ');
    //20141020 企劃開會決議只有帳號 A1:15474  A2:36994   b1:16255   b2:01775 能開 "Z07=補" 補料原因 為特殊使用
    if ((main.Edit1.Text<>'15474') and (main.Edit1.Text<>'36994') and (main.Edit1.Text<>'16255') and (main.Edit1.Text<>'01775')) then
    begin
      sql.add('      and YYBH<>''Z07'' ');
    end;    
    sql.add('order by YYBH');
    active:=true;
    if RecordCount>0 then
    begin
        DelDet.FieldByName('YYBH').Value:=Query1.fieldbyname('YYBH').Value;
        DelDet.FieldByName('YWSM').Value:=Query1.fieldbyname('YWSM').Value;
        DelDet.FieldByName('ZWSM').Value:=Query1.fieldbyname('ZWSM').Value;
    end;
    active:=false;
  end;
end;

procedure TDelOther_D.bbt6Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin
  if DelMas.Active then
  begin
    if DelMas.recordcount=0 then
    begin
      showmessage('No record.');
      abort;
    end;
  end else
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
    for   i:=1   to   DelMas.fieldcount   do
    begin
      eclApp.Cells(1,i+1):=DelMas.fields[i-1].FieldName;
    end;
    DelMas.First;
    j:=2;
    while   not  DelMas.Eof   do
    begin
        eclApp.Cells(j,1):=j-1;
        for   i:=1   to   DelMas.fieldcount   do
          begin
            eclApp.Cells(j,i+1):=DelMas.Fields[i-1].Value;
            eclApp.Cells.Cells.item[j,i+1].font.size:='8';
          end;
        DelMas.Next;
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

procedure TDelOther_D.BDT6Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin
  if DelDet.Active then
  begin
    if DelDet.recordcount=0 then
    begin
      showmessage('No record.');
      abort;
    end;
  end else
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
    for   i:=1   to   DelDet.fieldcount   do
    begin
      eclApp.Cells(1,i+1):=DelDet.fields[i-1].FieldName;
    end;
    DelDet.First;
    j:=2;
    while   not  DelDet.Eof   do
    begin
        eclApp.Cells(j,1):=j-1;
        for   i:=1   to   DelDet.fieldcount   do
          begin
            eclApp.Cells(j,i+1):=DelDet.Fields[i-1].Value;
            eclApp.Cells.Cells.item[j,i+1].font.size:='8';
          end;
        DelDet.Next;
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

procedure TDelOther_D.DelMasMEMOSetText(Sender: TField;
  const Text: String);
begin
  Sender.Value:=Text;
  //20150523修改區分開發採購入庫廠別
    with Query1 do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('select testno,devtp,stage,season from shoetest ');
      SQL.Add('where shoetest.testno='''+Sender.Value+''' ');
      Active:=true;
      if RecordCount>0 then
      begin
        delmas.Edit;
        delmas.FieldByName('devtype').Value:=Query1.FieldByName('devtp').Value;
        delmas.FieldByName('purpose').Value:=Query1.FieldByName('stage').Value;
        delmas.FieldByName('season').Value:=Query1.FieldByName('season').Value;
        delmas.Post;
      end else
      begin
        showmessage('TestNO Error') ;
      end;
      Active:=false;
    end;
end;

procedure TDelOther_D.DBGridEh1DblClick(Sender: TObject);
begin
  if DelMas.Active then
  begin
    if (DelMas.recordcount>0) then
    begin
      PC1.ActivePage:=TS4;
      panel1.Visible:=false;
      panel6.Visible:=true;
    end;
  end; 
end;

procedure TDelOther_D.DBGridEh1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if DelMas.cachedupdates then
  begin
    DBX2.BringToFront;
    if (gdfocused in state) then
    begin
      if (DBGridEh1.SelectedField.fieldname=DBX2.datafield) then
      begin
        DBX2.left:=rect.left+DBGridEh1.left;
        DBX2.top:=rect.top+DBGridEh1.Top;
        DBX2.width:=rect.right-rect.left+10;
        DBX2.height:=rect.bottom-rect.top;
        DBX2.visible:=true;
      end else
        DBX2.Visible:=false;
    end;
  end else
    DBX2.Visible:=false;

  if DelMas.FieldByName('YN').value='0' then
  begin
    DBGridEh1.canvas.font.color:=clred;
    DBGridEh1.defaultdrawcolumncell(rect,datacol,column,state);
  end;
end;

procedure TDelOther_D.DBGridEh1EditButtonClick(Sender: TObject);
begin
   BBTT1Click(nil);
end;

procedure TDelOther_D.DBGridEh1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
  DBGridEh1DblClick(nil);
end;

procedure TDelOther_D.DBGridEh2DblClick(Sender: TObject);
begin
  if  DelMas.Active then
  begin
    if  (DelMas.recordcount>0) then
    begin
      PC1.ActivePage:=TS4;
      panel1.Visible:=false;
      panel6.Visible:=true;
    end;
  end;
end;

procedure TDelOther_D.DBGridEh2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if DelDet.FieldByName('YN').value='0' then
  begin
    DBGridEh2.canvas.font.color:=clred;
    DBGridEh2.defaultdrawcolumncell(rect,datacol,column,state);
  end;
  if DelDet.FieldByName('LLNO').isnull then
  begin
    DBGridEh2.canvas.font.color:=clLime;
    DBGridEh2.defaultdrawcolumncell(rect,datacol,column,state);
  end;

end;

procedure TDelOther_D.DBGridEh2EditButtonClick(Sender: TObject);
begin
  if DBGridEh2.selectedfield.fieldname='YYBH' then
  begin
    DelOther_D_YY:=TDelOther_D_YY.create(self);
    DelOther_D_YY.show;
  end;
end;

end.
