unit DeliverCheck1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls,comobj,
  GridsEh, DBGridEh,EhlibBDE,dateutils, Menus,ShellApi, DBGridEhImpExp, iniFiles,
  ComCtrls;

type
  TDeliverCheck = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label2: TLabel;
    Label7: TLabel;
    Edit2: TEdit;
    Edit1: TEdit;
    Button1: TButton;
    Edit3: TEdit;
    Button2: TButton;
    CBX1: TComboBox;
    CBX2: TComboBox;
    Button3: TButton;
    Edit5: TEdit;
    Edit6: TEdit;
    Query1: TQuery;
    DS1: TDataSource;
    Query1LLNO: TStringField;
    Query1CFMDate: TDateTimeField;
    Query1CLBH: TStringField;
    Query1DFL: TStringField;
    Query1SCBH_1: TStringField;
    Query1Qty: TCurrencyField;
    Query1CostID: TStringField;
    Query1CLSL: TCurrencyField;
    Query1YWPM: TStringField;
    Query1DWBH: TStringField;
    Query1DepName: TStringField;
    Query1Person: TFloatField;
    Query1YWSM: TStringField;
    Query1YYBH: TStringField;
    Query1CWBH: TStringField;
    Label8: TLabel;
    Edit4: TEdit;
    Label9: TLabel;
    Edit7: TEdit;
    Query1CKBH: TStringField;
    PopupMenu1: TPopupMenu;
    CheckPrice1: TMenuItem;
    SonMatCode1: TMenuItem;
    Query1MEMO: TStringField;
    Query1BLSB: TStringField;
    Label10: TLabel;
    CBX3: TComboBox;
    Matsite: TQuery;
    Query1CNO: TStringField;
    ExchangEdit: TEdit;
    SaveDialog1: TSaveDialog;
    Label11: TLabel;
    Query1UnitC: TStringField;
    Query1RateC: TFloatField;
    Label12: TLabel;
    Edit8: TEdit;
    Label13: TLabel;
    Label14: TLabel;
    CBX4: TComboBox;
    Label15: TLabel;
    CBX5: TComboBox;
    PC1: TPageControl;
    TS1: TTabSheet;
    DBGrid1: TDBGridEh;
    Label16: TLabel;
    CBX6: TComboBox;
    Label17: TLabel;
    GSBHCBX: TComboBox;
    TS3: TTabSheet;
    DS3: TDataSource;
    Query3: TQuery;
    DBGridEh2: TDBGridEh;
    Query3LLNO: TStringField;
    Query3GSBH: TStringField;
    Query3CKBH: TStringField;
    Query3SCBH: TStringField;
    Query3DepID: TStringField;
    Query3USERDATE: TDateTimeField;
    Query3USERID: TStringField;
    Query3CFMDate: TDateTimeField;
    Query3CFMID: TStringField;
    Query3YN: TStringField;
    Query3PMARK: TIntegerField;
    Query3LLNO_1: TStringField;
    Query3CLBH: TStringField;
    Query3DFL: TStringField;
    Query3SCBH_1: TStringField;
    Query3RKQty: TCurrencyField;
    Query3HGLB: TStringField;
    Query3CostID: TStringField;
    Query3MEMO: TStringField;
    Query3BLSB: TStringField;
    Query3YWPM: TStringField;
    Query3DWBH: TStringField;
    Query3DepName: TStringField;
    Query3YWSM: TStringField;
    Query3CWBH: TStringField;
    Query3HGBH: TStringField;
    Query3UnitC: TStringField;
    Query3RateC: TFloatField;
    Label18: TLabel;
    Edit9: TEdit;
    Query1VNPrice: TCurrencyField;
    Query3VNPrice: TCurrencyField;
    Query3VNACC: TCurrencyField;
    Query1VNACC: TCurrencyField;
    procedure Button3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure CheckPrice1Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure SonMatCode1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure CBX1Change(Sender: TObject);
    procedure CBX2Change(Sender: TObject);
  private
    { Private declarations }
    procedure ExportExcel();
    procedure readini();
  public
    VNPrice_DiplayFormat:string;
    VNPrice_Decimal:Byte;
    { Public declarations }
  end;

var
  DeliverCheck: TDeliverCheck;

implementation

uses DeliverCheck_Print1, main1, DeliverCheck_Price1, DeliverCheck_Son1,FunUnit;

{$R *.dfm}
function   DaysOfItsMonth(ADate:   TDateTime):   Word;
var
   Y,M,D:Word;
begin
    DecodeDate(ADate,Y,M,D);
    ADate:=EncodeDate(Y,M,1);
    Result:=Trunc(IncMonth(ADate,1)-ADate);
end;

procedure TDeliverCheck.readini();
var MyIni :Tinifile;
    AppDir:string;
begin
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
    finally
      MyIni.Free;
    end;
  end;
  TCurrencyField(Query1.FieldByName('VNACC')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(Query1.FieldByName('VNPrice')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(Query3.FieldByName('VNACC')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(Query3.FieldByName('VNPrice')).DisplayFormat:=VNPrice_DiplayFormat;
end;
//

procedure TDeliverCheck.ExportExcel();
var
  eclApp,WorkBook:olevariant;
  i,j:integer;
begin
  if PC1.ActivePageIndex=0 then
  begin
    if query1.Active then
    begin
      if query1.recordcount=0 then
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
      for   i:=1   to   query1.fieldcount   do
        begin
          eclApp.Cells(1,i+1):=query1.fields[i-1].FieldName;
        end;
      query1.First;
      j:=2;
      while   not  query1.Eof   do
        begin
          eclApp.Cells(j,1):=j-1;
          for   i:=1   to   query1.fieldcount   do
            begin
              eclApp.Cells(j,i+1):=query1.Fields[i-1].Value;
              eclApp.Cells.Cells.item[j,i+1].font.size:='8';
            end;
          query1.Next;
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

   //////////////////////////
   if PC1.ActivePageIndex=1 then
   begin
      if query3.Active then
    begin
      if query3.recordcount=0 then
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
      for   i:=1   to   query3.fieldcount   do
        begin
          eclApp.Cells(1,i+1):=query3.fields[i-1].FieldName;
        end;
      query3.First;
      j:=2;
      while   not  query3.Eof   do
        begin
          eclApp.Cells(j,1):=j-1;
          for   i:=1   to   query3.fieldcount   do
            begin
              eclApp.Cells(j,i+1):=query3.Fields[i-1].Value;
              eclApp.Cells.Cells.item[j,i+1].font.size:='8';
            end;
          query3.Next;
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
end;
//
procedure TDeliverCheck.Button3Click(Sender: TObject);
var i:integer;
begin
  DeliverCheck_Print:=TDeliverCheck_Print.create(self);
  DeliverCheck_Print.quickrep1.prepare;
  i:=DeliverCheck_Print.quickrep1.qrprinter.pagecount;
  DeliverCheck_Print.page1.caption:=inttostr(i);
  DeliverCheck_Print.quickrep1.preview;
  DeliverCheck_Print.free;
end;

procedure TDeliverCheck.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=cafree;
end;

procedure TDeliverCheck.Button1Click(Sender: TObject);
var sdate,edate:Tdate;
    y,m:integer;
    Pages:integer;
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
  SDate:=EncodeDate(strtoint(CBX1.Text), strtoint(CBX2.Text), 1);
  EDate:=EncodeDate(strtoint(CBX4.Text), strtoint(CBX5.Text), 1);
  EDate:=EncodeDate(strtoint(CBX4.Text), strtoint(CBX5.Text), DaysOfItsMonth(EDate));
  if PC1.ActivePageIndex=0 then
  begin
    with query1 do
    begin
      active:=false;
      sql.Clear;
      sql.Add('select KCLL.*,KCLLS.*,CLZL.YWPM,CLZL.DWBH,BDepartment.DepName,SCBLYY.YWSM,KCZLS.CWBH,CLHG.HGBH,CLHG.UnitC,CLHG.RateC  ');
      sql.add('from (select * from KCLLS union all select * from KCLLS_2014) KCLLS ');
      sql.add('left join (select * from KCLL union all select * from KCLL_2014) KCLL on KCLL.LLNO=KCLLS.LLNO');
      sql.add('left join CLZL on CLZL.CLDH=KCLLS.CLBH');
      sql.add('left join BDepartment on BDepartment.ID=KCLL.DepID');
      sql.add('left join SCBLYY on SCBLYY.YYBH=KCLLS.YYBH ');
      sql.add('left join KCZLS on KCZLS.CLBH=KCLLS.CLBH and KCZLS.CKBH=KCLL.CKBH');
      sql.add('left join KCCK on KCCK.CKBH=KCLL.CKBH ');
      sql.Add('left join CLHG on KCLLs.CLBH=CLHG.CLBH and Year(KCLLS.USERDATE)>=2017 ');
      sql.Add('where Convert(smalldatetime,convert(varchar,KCLL.CFMDate,111)) between ');
      sql.add('             '''+formatdatetime('yyyy/MM/dd',sdate)+''''+' and ' +''''+formatdatetime('yyyy/MM/dd',edate)+'''');
      if CBX3.Text<>'' then
      begin
        sql.Add('and KCCK.CKBH ='+''''+CBX3.text+'''');
      end;
      sql.add('      and KCLLS.CLBH like '+''''+edit1.text+'%'+'''');
      sql.add('      and CLZL.YWPM like '+''''+'%'+edit2.text+'%'+'''');
      sql.add('      and CLZL.YWPM like '+''''+'%'+edit3.text+'%'+'''');
      sql.add('      and isnull(KCZLS.CWBH,'+''''+''+''''+') like '+''''+edit4.text+'%'+'''');
      sql.add('      and KCLLS.CostID like '+''''+edit7.text+'%'+'''');
      sql.add('      and KCLLS.LLNO like '+''''+edit5.text+'%'+'''');
      sql.add('      and BDepartment.DepName like '+''''+'%'+edit6.Text+'%'+'''');
      sql.add('      and KCLL.YN='+''''+'5'+'''');
      if GSBHCBX.Text<>'ALL' then
      sql.add('      and KCCK.GSBH='+''''+GSBHCBX.Text+'''');
      SQL.Add('      and KCLLS.SCBH like '''+edit8.text+'%''  ');
      //sql.add(' order by KCLLs.CLBH');
      //funcObj.WriteErrorLog(sql.Text);
      active:=true;
    end;
  end;
  if PC1.ActivePageIndex=1 then
  begin
    with query3 do
    begin
      active:=false;
      sql.Clear;
      sql.Add('select KCLL.*,KCLLS.LLNO,KCLLS.CLBH,KCLLS.DFL,KCLLS.SCBH,isnull(KCLLS.Qty,0) as RKQty,isnull(KCLLS.VNPrice_HG,0) as VNPrice');
      sql.Add('       ,KCLLS.VNACC_HG as VNACC ');
      sql.Add('       ,isnull(KCLLS.HGLB,''ZZZZ'')as HGLB,KCLLS.CostID,KCLLS.MEMO,KCLLS.BLSB');
      sql.Add('       ,CLZL.YWPM,CLZL.DWBH,BDepartment.DepName,SCBLYY.YWSM,KCZLS.CWBH,KCLLS.CNO as HGBH,CLHG.UnitC,CLHG.RateC ');
      sql.add('from (select * from KCLLS union all select * from KCLLS_2014) KCLLS ');
      sql.add('left join (select * from KCLL union all select * from KCLL_2014) KCLL on KCLL.LLNO=KCLLS.LLNO');
      sql.add('left join CLZL on CLZL.CLDH=KCLLS.CLBH');
      sql.add('left join BDepartment on BDepartment.ID=KCLL.DepID');
      sql.add('left join SCBLYY on SCBLYY.YYBH=KCLLS.YYBH ');
      sql.add('left join KCZLS on KCZLS.CLBH=KCLLS.CLBH and KCZLS.CKBH=KCLL.CKBH');
      sql.add('left join KCCK on KCCK.CKBH=KCLL.CKBH ');
      sql.Add('left join CLHG on KCLLs.CLBH=CLHG.CLBH and Year(KCLLS.USERDATE)>=2017 ');
      sql.Add('where Convert(smalldatetime,convert(varchar,KCLL.CFMDate,111)) between ');
      sql.add('             '''+formatdatetime('yyyy/MM/dd',sdate)+''''+' and ' +''''+formatdatetime('yyyy/MM/dd',edate)+'''');
      if CBX3.Text <> '' then
      begin
        sql.Add('and KCCK.CKBH ='+''''+CBX3.text+'''');
      end;
      sql.add('      and KCLLS.CLBH like '+''''+edit1.text+'%'+'''');
      sql.add('      and CLZL.YWPM like '+''''+'%'+edit2.text+'%'+'''');
      sql.add('      and CLZL.YWPM like '+''''+'%'+edit3.text+'%'+'''');
      sql.add('      and isnull(KCZLS.CWBH,'+''''+''+''''+') like '+''''+edit4.text+'%'+'''');
      sql.add('      and KCLLS.CostID like '+''''+edit7.text+'%'+'''');
      sql.add('      and KCLLS.LLNO like '+''''+edit5.text+'%'+'''');
      sql.add('      and BDepartment.DepName like '+''''+'%'+edit6.Text+'%'+'''');
      sql.add('      and KCLL.YN='+''''+'5'+'''');
      if GSBHCBX.Text<>'ALL' then
      sql.add('      and KCCK.GSBH='+''''+GSBHCBX.Text+'''');
      SQL.Add('      and KCLLS.SCBH like '''+edit8.text+'%'' ');
      if CBX6.ItemIndex>0 then
      begin
        sql.Add('and KCLLS.HGLB ='+''''+CBX6.text+'''');
      end;
      if edit9.Text<>'' then
        sql.Add('and KCLLS.CNO like '''+edit9.text+'%''');
      //funcObj.WriteErrorLog(sql.Text);
      active:=true;
    end;
  end;
end;

procedure TDeliverCheck.CheckPrice1Click(Sender: TObject);
begin
   if query1.recordcount>0 then
   begin
     DeliverCheck_Price:=TDeliverCheck_Price.create(self);
     DeliverCheck_Price.show;
   end;
end;

procedure TDeliverCheck.FormDestroy(Sender: TObject);
begin
DeliverCheck:=nil
end;

procedure TDeliverCheck.SonMatCode1Click(Sender: TObject);
begin 
if query1.recordcount>0 then
   begin
     DeliverCheck_Son:=TDeliverCheck_Son.create(self);
     DeliverCheck_Son.show;
   end;
end;

procedure TDeliverCheck.FormCreate(Sender: TObject);
var y,m:word;
begin
  with MatSite do
  begin
    active:=false;
    sql.Clear;
    sql.add('select CKBH from KCCK ');
    sql.add('where GSBH='+''''+main.Edit2.Text+'''');
    sql.add('order by CKBH');
    active:=true;
    CBX3.Items.Clear;
    while not eof do
    begin
        CBX3.Items.Add(fieldbyname('CKBH').AsString);
        next;
    end;
    //
    active:=false;
    sql.Clear;
    sql.add('select GSDH from BGSZL order by GSDH');
    active:=true;
    GSBHCBX.Items.Add('ALL');
    while not eof do
    begin
        GSBHCBX.Items.Add(fieldbyname('GSDH').asstring);
        next;
    end;
    GSBHCBX.Text:=main.Edit2.Text
  end;
  readini();
end;

procedure TDeliverCheck.Button2Click(Sender: TObject);
var
  ExpClass:TDBGridEhExportClass;
  Ext, target:String;
  tdbgh : TDBGridEh;
begin
  if  Messagedlg(Pchar('Direct Export?'),mtInformation,[mbNo,mbYes],0)=mrYes then
  begin
     ExportExcel();
  end else
  begin
    ExpClass:=TDBGridEhExportAsXLS;
    if SaveDialog1.Execute()=true then
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
        SaveDBGridEhToExportFile(ExpClass,DBGrid1,SaveDialog1.FileName,true);
        if Application.MessageBox('Do you want to open the exported file?','Open file',MB_YESNO) = IDYES then
          shellexecute(handle,'open',pchar(SaveDialog1.FileName),nil,nil,SW_SHOWNORMAL);
      end;
    end;
  end;

end;

procedure TDeliverCheck.CBX1Change(Sender: TObject);
begin
  CBX4.Text:=CBX1.Text;
end;

procedure TDeliverCheck.CBX2Change(Sender: TObject);
begin
  CBX5.Text:=CBX2.Text;
end;

end.
