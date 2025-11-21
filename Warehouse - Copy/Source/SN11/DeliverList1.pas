unit DeliverList1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, DB, DBTables, StdCtrls, ComCtrls, ExtCtrls, Grids,
  DBGrids,dateutils, GridsEh, DBGridEh,comobj, PrnDbgeh,IniFiles;

type
  TDeliverList = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    Edit1: TEdit;
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
    UpMas: TUpdateSQL;
    DelDet: TQuery;
    DelDetLLNO: TStringField;
    DelDetCLBH: TStringField;
    DelDetYWPM: TStringField;
    DelDetDWBH: TStringField;
    DelDetTempQty: TCurrencyField;
    DelDetQty: TCurrencyField;
    DelDetUSPrice: TCurrencyField;
    DelDetCostID: TStringField;
    DelDetSCBH: TStringField;
    DelDetUSERDATE: TDateTimeField;
    DelDetUSERID: TStringField;
    DelDetYN: TStringField;
    DelDetDFL: TStringField;
    DelDetKCBH: TStringField;
    DelDetDDYN: TStringField;
    DS4: TDataSource;
    UPDet: TUpdateSQL;
    PopupMenu1: TPopupMenu;
    Excel1: TMenuItem;
    Button2: TButton;
    DelDetHGLB: TStringField;
    DelDetCNO: TStringField;
    Label3: TLabel;
    Edit2: TEdit;
    Edit3: TEdit;
    Label4: TLabel;
    PopupMenu2: TPopupMenu;
    Modify1: TMenuItem;
    Save1: TMenuItem;
    Cancel1: TMenuItem;
    DBGridEh1: TDBGridEh;
    DBGridEh2: TDBGridEh;
    DelDetVNPrice: TCurrencyField;
    DelDetCWHL: TCurrencyField;
    DelDetLLMemo: TStringField;
    Button3: TButton;
    DelMasCFMID_1: TStringField;
    DelMasCFMDate_1: TDateTimeField;
    DelMasCFMID1: TStringField;
    DelMasCFMDATE1: TDateTimeField;
    DelMasCFMID2: TStringField;
    DelMasCFMDATE2: TDateTimeField;
    N1: TMenuItem;
    Label5: TLabel;
    CB1: TComboBox;
    GroupBox1: TGroupBox;
    rd2: TRadioButton;
    rd3: TRadioButton;
    rd1: TRadioButton;
    Qtemp: TQuery;
    Modify2: TMenuItem;
    Save2: TMenuItem;
    Cancel2: TMenuItem;
    DelDetPONO: TStringField;
    CopyPO1: TMenuItem;
    Label6: TLabel;
    Edit4: TEdit;
    N2: TMenuItem;
    ModifyDeclaration1: TMenuItem;
    Save3: TMenuItem;
    Cancel3: TMenuItem;
    DelDetPKNO: TStringField;
    DelDetDeclaretion: TStringField;
    DelDetYWSM: TStringField;
    DelDetDeclaretion_Sys: TStringField;
    DelDetPKNO_Sys: TStringField;
    DelDetYYBH: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Excel1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Modify1Click(Sender: TObject);
    procedure Cancel1Click(Sender: TObject);
    procedure Save1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Cancel2Click(Sender: TObject);
    procedure Modify2Click(Sender: TObject);
    procedure DBGridEh2EditButtonClick(Sender: TObject);
    procedure Save2Click(Sender: TObject);
    procedure CopyPO1Click(Sender: TObject);
    procedure ModifyDeclaration1Click(Sender: TObject);
    procedure Cancel3Click(Sender: TObject);
    procedure Save3Click(Sender: TObject);
    procedure DelDetAfterOpen(DataSet: TDataSet);
  private
    procedure ReadIni();
    { Private declarations }
  public
    VNPrice_DiplayFormat:string;
    VNPrice_Decimal:Byte;
    WH_Decimal:String;
    WH_DiplayFormat:String;
    { Public declarations }
  end;

var
  DeliverList: TDeliverList;

implementation

uses main1, Deliver_Print1, PurchasePO1,fununit, PKNO1;

{$R *.dfm}

procedure TDeliverList.ReadIni();
var MyIni :Tinifile;
    AppDir:string;
begin
  //
  VNPrice_DiplayFormat:='#,##0';
  VNPrice_Decimal:=0;
  WH_Decimal:='2';
  WH_DiplayFormat:='#,##0.00';
  AppDir:=ExtractFilePath(Application.ExeName);
  if FileExists(AppDir+'\ComName.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ComName.ini');
      VNPrice_DiplayFormat:=MyIni.ReadString('VNPrice','DiplayFormat','#,##0');
      VNPrice_Decimal:=strtoint(MyIni.ReadString('VNPrice','Decimal','0'));
      WH_Decimal:=MyIni.ReadString('Warehouse','Decimal','2');
      WH_DiplayFormat:=MyIni.ReadString('Warehouse','DiplayFormat','#,##0.00');
    finally
      MyIni.Free;
    end;
  end;
  TCurrencyField(DelDet.FieldByName('VNPrice')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(DelDet.FieldByName('CWHL')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(DelDet.FieldByName('TempQty')).DisplayFormat:=WH_DiplayFormat;
  TCurrencyField(DelDet.FieldByName('Qty')).DisplayFormat:=WH_DiplayFormat;
end;

procedure TDeliverList.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

free;
end;

procedure TDeliverList.Button1Click(Sender: TObject);
begin
  with DelMas do
  begin
    Active:=false;
    sql.Clear;
    sql.add('select KCLL.*,BDepartment.DepName ');
    sql.Add('       ,KCLL_DK_CFM.CFMID,KCLL_DK_CFM.CFMDate,KCLL_DK_CFM.CFMID1,KCLL_DK_CFM.CFMDATE1,KCLL_DK_CFM.CFMID2,KCLL_DK_CFM.CFMDATE2');
    sql.add('from KCLL ');
    sql.add('left join BDepartment on KCLL.DepID=BDepartment.ID  ');
    sql.add('left join KCCK on KCCK.CKBH=KCLL.CKBH ');
    sql.Add('left join KCLL_DK_CFM on KCLL_DK_CFM.LLNO=KCLL.LLNO');
    //sql.add('where KCLL.CFMID='+''''+'NO'+'''');
    sql.add('where convert(smalldatetime,convert(varchar,KCLL.USERDATE,111)) between '+''''+formatdatetime('yyyy/MM/dd',DTP1.date )+'''');
    sql.add('and '+''''+formatdatetime('yyyy/MM/dd',DTP2.date )+'''');
    sql.add('and KCLL.LLNO like '+''''+edit1.Text+'%'+'''');
    sql.add('and KCCK.GSBH='+''''+main.Edit2.Text+'''');
    sql.Add('and ISNULL(flowflag,'''')<>''X'' '); // no show KCLL.Flowflag='X'
    if Edit2.Text<>'' then
      sql.add('and exists (select LLNO from KCLLS where KCLLS.LLNO=KCLL.LLNO and  KCLLS.HGLB like '''+Edit2.Text+'%'' Group by LLNO ) ');
    if Edit3.Text<>'' then
      sql.add('and exists (select LLNO from KCLLS where KCLLS.LLNO=KCLL.LLNO and  KCLLS.CNO like '''+Edit3.Text+'%'' Group by LLNO ) ');
    if Edit4.Text<>'' then
      sql.add('and exists (select LLNO from KCLLS where KCLLS.LLNO=KCLL.LLNO and  KCLLS.SCBH like '''+Edit4.Text+'%'' Group by LLNO ) ');
    if rd2.Checked then
      sql.Add('and KCLL.CFMID  <> ''NO'' ');
    if rd3.Checked then
      sql.Add('and KCLL.CFMID  = ''NO'' ');
    if CB1.Text <>'ALL' then
      sql.Add('and KCLL.CKBH='''+CB1.Text+''' ');  
    sql.add('order by KCLL.LLNO  ');
    active:=true;
  end;
  if DelDet.requestlive=true then
  begin
    with DelDet do
    begin
      active:=false;
      requestlive:=false;
      cachedupdates:=false;
    end;
  end;
  DelDet.Active:=true;
end;

procedure TDeliverList.FormCreate(Sender: TObject);
var i:integer;
begin
  with Qtemp do
  begin
    active:=false;
    sql.Clear;
    sql.add('select CKBH from KCCK ');
    sql.add('where GSBH='+''''+main.Edit2.Text+'''');
    sql.add('order by CKBH');
    active:=true;
    CB1.Items.Clear;
    CB1.Items.Add('ALL');
    while not eof do
    begin
      CB1.Items.Add(fieldbyname('CKBH').AsString);
      next;
    end;
    CB1.ItemIndex:=0;
    active:=false;
  end;
  DTP1.Date:=date-3;
  DTP2.Date:=date;
  ReadIni();
end;

procedure TDeliverList.FormDestroy(Sender: TObject);
begin
  DeliverList:=nil;
end;

procedure TDeliverList.Excel1Click(Sender: TObject);
var
      eclApp,WorkBook:olevariant;
 //     xlsFileName:string;
      i,j:integer;
begin

  if DelMas.Active then
  begin
    if DelMas.recordcount=0 then
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
  DelDet.Active:=false;
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
  DelDet.Active:=true;
except
  on   F:Exception   do
    showmessage(F.Message);
end;


end;

procedure TDeliverList.Button2Click(Sender: TObject);
var
      eclApp,WorkBook:olevariant;
      i,j,s:integer;
begin

  if DelMas.Active then
  begin
    if DelMas.recordcount=0 then
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
    //for i:=3 to DelMas.RecordCount do
    for i:=1 to DelMas.RecordCount do
      eclapp.workbooks[1].sheets.add;
    eclapp.workbooks[1].sheets[1].name:='Deliver List';
    eclApp.workbooks[1].sheets[1].Cells(1,1):='NO';

    DelDet.active:=false;

    for   i:=1   to   DelMas.fieldcount   do
      begin
        eclApp.workbooks[1].sheets[1].Cells(1,i+1):=DelMas.fields[i-1].FieldName;
      end;
    DelMas.First;
    j:=2;
    while   not  DelMas.Eof   do
      begin
        eclApp.workbooks[1].sheets[1].Cells(j,1):=j-1;
        for   i:=1   to   DelMas.fieldcount   do
          begin
            eclApp.workbooks[1].sheets[1].Cells(j,i+1):=DelMas.Fields[i-1].Value;
            eclApp.workbooks[1].sheets[1].Cells.Cells.item[j,i+1].font.size:='8';
          end;
        DelMas.Next;
        inc(j);
      end;
  //  eclapp.columns.autofit;

  //產生明細 edit by billweng 2011/6/29
    DelMas.First;
    DelDet.active:=true;
    s:=2;
    while   not  DelMas.Eof   do
    begin
  //    eclapp.workbooks[1].sheets[s].name:=DelMas.fields[0].value + inttostr(DelMas.fields[1].value);
      eclapp.workbooks[1].sheets[s].name:=DelMas.fields[0].asstring;
      eclApp.workbooks[1].sheets[s].Cells(1,1):='NO';

      for   i:=1   to   DelDet.fieldcount   do
      begin
        eclApp.workbooks[1].sheets[s].Cells(1,i+1):=DelDet.fields[i-1].FieldName;
      end;
      DelDet.First;
      j:=2;
      while   not  DelDet.Eof   do
      begin
        eclApp.workbooks[1].sheets[s].Cells(j,1):=j-1;
        for   i:=1   to   DelDet.fieldcount   do
          begin
            eclApp.workbooks[1].sheets[s].Cells(j,i+1):=DelDet.Fields[i-1].Value;
            eclApp.workbooks[1].sheets[s].Cells.Cells.item[j,i+1].font.size:='8';
          end;
        DelDet.Next;
        inc(j);
      end;
      S:=S+1;
      DelMas.Next;
    end;
  //結束

    eclapp.columns.autofit;
    showmessage('Succeed.');
    eclApp.Visible:=True;
  except
    on   F:Exception   do
      showmessage(F.Message);
  end;


end;


procedure TDeliverList.Modify1Click(Sender: TObject);
begin
  //
  if ((DelMas.FieldByName('YN').AsString='1') and
      (DelMas.FieldByName('CFMID').AsString=main.Edit1.Text)) then
  begin
    with DelDet do
    begin
      requestlive:=true;
      cachedupdates:=true;
      edit;
    end;
    Save1.Enabled:=true;
    Cancel1.Enabled:=true;
  end else
  begin
    Showmessage(' It is not yours, can not modify.');
  end;
  //
end;

procedure TDeliverList.Cancel1Click(Sender: TObject);
begin
  with DelDet do
  begin
    active:=false;
    requestlive:=false;
    cachedupdates:=false;
    active:=true;
  end;
  Save1.Enabled:=false;
  Cancel1.Enabled:=false;
end;

procedure TDeliverList.Save1Click(Sender: TObject);
var i:integer;
begin

  DelDet.First;
  for i:=0 to DelDet.RecordCount-1 do
  begin
    case DelDet.updatestatus of
      usmodified:
      begin
        if (((copy(DelDet.FieldByName('HGLB').AsString,1,2)='NK') or (copy(DelDet.FieldByName('HGLB').AsString,1,2)='TC') or (copy(DelDet.FieldByName('HGLB').AsString,1,2)='HD')
              or (copy(DelDet.FieldByName('HGLB').AsString,1,2)='NQ')  or  (copy(DelDet.FieldByName('HGLB').AsString,1,2)='KD')) and (DelDet.FieldByName('CNO').AsString<>'')) then
        begin
          UPDet.apply(ukmodify);
        end;
      end;
    end;
    DelDet.Next;
  end;
  DelDet.active:=false;
  DelDet.cachedupdates:=false;
  DelDet.requestlive:=false;
  DelDet.active:=true;
  Save1.Enabled:=false;
  Cancel1.Enabled:=false;

end;

procedure TDeliverList.Button3Click(Sender: TObject);
begin
  if DelDet.RequestLive then
  begin
    showmessage('Pls save data first.');
    abort;
  end else
  begin
    with DelDet do
    begin
      Deliver_Print:=TDeliver_Print.Create(nil);
      Deliver_Print.quickrep1.prepare;
      Deliver_Print.Qpage1.caption:=inttostr(Deliver_Print.quickrep1.QRPrinter.pagecount);
      Deliver_Print.quickrep1.preview;
      Deliver_Print.Free;
      Active:=false;
      cachedupdates:=false;
      requestlive:=false;
      Active:=true;
    end;
  end;
end;

procedure TDeliverList.Cancel2Click(Sender: TObject);
begin
  with DelDet do
  begin
    active:=false;
    requestlive:=false;
    cachedupdates:=false;
    active:=true;
  end;
  Save2.Enabled:=false;
  Cancel2.Enabled:=false;
  CopyPO1.Enabled:=false;
  DBGridEh2.columns[11].ButtonStyle:=cbsnone;
end;

procedure TDeliverList.Modify2Click(Sender: TObject);
begin
  with DelDet do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
  Save2.Enabled:=true;
  Cancel2.Enabled:=true;
  CopyPO1.Enabled:=true;
  DBGridEh2.columns[11].ButtonStyle:=cbsEllipsis;
end;

procedure TDeliverList.DBGridEh2EditButtonClick(Sender: TObject);
begin
  if DBGridEh2.SelectedField.FieldName='PONO'  then
  begin
    PurchasePO:=TPurchasePO.create(self);
    PurchasePO.Edit1.Text:=DelDet.fieldbyname('CLBH').Value;
    PurchasePO.show;
  end;
  if DBGridEh2.SelectedField.FieldName='PKNO'  then
  begin
    PKNO:=TPKNO.create(self);
    PKNO.Edit1.Text:=DelDet.fieldbyname('CLBH').Value;
    PKNO.Edit2.Text:=DelDet.fieldbyname('HGLB').Value;
    PKNO.Edit5.Text:=DelMas.fieldbyname('CKBH').Value;
    PKNO.show;
  end;
end;

procedure TDeliverList.Save2Click(Sender: TObject);
var i:integer;
begin
  try
    Deldet.First;
    for i:=0 to Deldet.RecordCount-1 do
    begin
      with Qtemp do
      begin
        active:=false;
        sql.Clear;
        sql.Add(' Update KCLLS ');
        if copy(Deldet.fieldbyname('PONO').AsString,Length(Deldet.fieldbyname('PONO').AsString),1)=',' then
           sql.Add(' Set PONO= substring('''+Deldet.fieldbyname('PONO').AsString+''',1,len('''+Deldet.fieldbyname('PONO').AsString+''')-1) ')
        else
          sql.Add(' Set PONO= '''+Deldet.fieldbyname('PONO').AsString+''' ');
        sql.Add(' Where LLNO ='''+Deldet.fieldbyname('LLNO').value+'''  and CLBH ='''+Deldet.fieldbyname('CLBH').AsString+''' ');
        sql.Add(' and  DFL ='''+Deldet.fieldbyname('DFL').AsString+'''  and SCBH ='''+Deldet.fieldbyname('SCBH').AsString+'''  ');
        //funcobj.WriteErrorLog(sql.Text);
        ExecSQL;
      end;
      Deldet.Next;
    end;
    with Deldet do
    begin
      Active:=false;
      requestlive:=false;
      cachedupdates:=false;
      Active:=true;
    end;
    Save2.Enabled:=false;
    Cancel2.Enabled:=false;
    CopyPO1.Enabled:=false;
    DBGridEh2.columns[11].ButtonStyle:=cbsnone;
  except
    Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
  end;
end;

procedure TDeliverList.CopyPO1Click(Sender: TObject);
var PONO, CLBH:String;
begin
  PONO:=Deldet.Fieldbyname('PONO').Asstring;
  if PONO<>'' then
  begin
    with DelDet do
    begin
      while not Eof do
      begin
        Edit;
        if CLBH='' then CLBH:=FieldByName('CLBH').AsString;
        if CLBH=FieldByName('CLBH').AsString then
        begin
          if DBGridEh2.SelectedField.FieldName='PONO' then FieldByName('PONO').Value:=PONO;
        end;
        Next;
      end;
    end;
  end;
end;

procedure TDeliverList.ModifyDeclaration1Click(Sender: TObject);
begin
  if ((DelMas.FieldByName('YN').AsString='1') and
      (DelMas.FieldByName('CFMID').AsString=main.Edit1.Text)) then
  begin
    with DelDet do
    begin
      requestlive:=true;
      cachedupdates:=true;
      edit;
    end;
    Save3.Enabled:=true;
    Cancel3.Enabled:=true;
    DBGridEh2.columns[12].ButtonStyle:=cbsEllipsis;
  end else
  begin
    Showmessage(' It is not yours, can not modify.');
    abort;
  end;
end;

procedure TDeliverList.Cancel3Click(Sender: TObject);
begin
  with DelDet do
  begin
    active:=false;
    requestlive:=false;
    cachedupdates:=false;
    active:=true;
  end;
  Save3.Enabled:=false;
  Cancel3.Enabled:=false;
  DBGridEh2.columns[12].ButtonStyle:=cbsnone;
end;

procedure TDeliverList.Save3Click(Sender: TObject);
var i:integer;
begin
  try
    Deldet.First;
    for i:=0 to Deldet.RecordCount-1 do
    begin
      with Qtemp do
      begin
        active:=false;
        sql.Clear;
        if Deldet.fieldbyname('PKNO_Sys').AsString = ''  then
        begin
          if Deldet.fieldbyname('PKNO').AsString <> '' then
          begin
            sql.Add(' Update KCLLS ');
            sql.Add(' Set PKNO= '''+Deldet.fieldbyname('PKNO').AsString+''' ');
            sql.Add(' Where LLNO ='''+Deldet.fieldbyname('LLNO').value+'''  and CLBH ='''+Deldet.fieldbyname('CLBH').AsString+''' ');
            sql.Add(' and  DFL ='''+Deldet.fieldbyname('DFL').AsString+'''  and SCBH ='''+Deldet.fieldbyname('SCBH').AsString+'''  ');

            sql.Add(' Insert into KCPKLL (LLNO,CLBH,DFL,SCBH,PKNO,Qty,UserID,UserDate,YN) ');
            sql.Add(' values('''+Deldet.fieldbyname('LLNO').value+''' , '''+Deldet.fieldbyname('CLBH').AsString+''', '''+Deldet.fieldbyname('DFL').AsString+''', '''+Deldet.fieldbyname('SCBH').AsString+''',  ');
            sql.Add('         '''+Deldet.fieldbyname('PKNO').AsString+''','''+Deldet.fieldbyname('Qty').AsString+''' ,'''+main.Edit1.Text+''' ,GetDate(),''2'' )');
          end;
          if SQL.Text<>'' then ExecSQL();
        end;
      end;
      Deldet.Next;
    end;
    with Deldet do
    begin
      Active:=false;
      requestlive:=false;
      cachedupdates:=false;
      Active:=true;
    end;
    Save3.Enabled:=false;
    Cancel3.Enabled:=false;
    DBGridEh2.columns[12].ButtonStyle:=cbsnone;
  except
    Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
  end;
end;

procedure TDeliverList.DelDetAfterOpen(DataSet: TDataSet);
begin
  if ((Deldet.FieldByName('YYBH').AsString='Z22') and (Deldet.FieldByName('PKNO_Sys').AsString = ''))  then
  begin
    ModifyDeclaration1.Enabled:=true;
  end else
  begin
    ModifyDeclaration1.Enabled:=false;
  end;
end;

end.
