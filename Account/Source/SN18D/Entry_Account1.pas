unit Entry_Account1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBTables, Menus, DB, StdCtrls, ComCtrls, ExtCtrls, GridsEh,
  DBGridEh,IniFiles,comobj;

type
  TEntry_Account = class(TForm)
    DBGrid1: TDBGridEh;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Button1: TButton;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    Edit1: TEdit;
    Button2: TButton;
    Button3: TButton;
    Edit2: TEdit;
    DBGrid2: TDBGridEh;
    EnMas: TQuery;
    EnMasRKNO: TStringField;
    EnMasZSBH: TStringField;
    EnMasZSYWJC: TStringField;
    EnMasZSNO: TStringField;
    EnMasUSERID: TStringField;
    EnMasUSERDATE: TDateTimeField;
    EnMasCFMID: TStringField;
    EnMasCFMDATE: TDateTimeField;
    EnMasYN: TStringField;
    EnMasGSBH: TStringField;
    EnMasCKBH: TStringField;
    EnDet: TQuery;
    EnDetRKNO: TStringField;
    EnDetCLBH: TStringField;
    EnDetYWPM: TStringField;
    EnDetDWBH: TStringField;
    EnDetCGBH: TStringField;
    EnDetRKSB: TStringField;
    EnDetPaQty: TCurrencyField;
    EnDetQty: TCurrencyField;
    EnDetUSPrice: TCurrencyField;
    EnDetUSACC: TCurrencyField;
    EnDetCostID: TStringField;
    EnDetUSERID: TStringField;
    EnDetUSERDATE: TDateTimeField;
    EnDetYN: TStringField;
    EnDetVNPrice: TCurrencyField;
    EnDetVNACC: TCurrencyField;
    EnDetCWHL: TCurrencyField;
    DS4: TDataSource;
    DS3: TDataSource;
    PopupMenu1: TPopupMenu;
    Excel1: TMenuItem;
    UPDet: TUpdateSQL;
    BDelRec: TQuery;
    UpMas: TUpdateSQL;
    EnDetCNO: TStringField;
    EnMasHGLB: TStringField;
    Label4: TLabel;
    Edit3: TEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    procedure ReadIni();
    { Private declarations }
  public
    { Public declarations }
    VNPrice_DiplayFormat:string;
    VNPrice_Decimal:Byte;
    ComName:string;
    ComNameCH:string;
    Account_N18D_ISO:string;
    CFMID,CFMID1,CFMID2:string;
  end;

var
  Entry_Account: TEntry_Account;

implementation

uses main1, Entry_RePrintSumA51;

{$R *.dfm}
procedure TEntry_Account.ReadIni();
var MyIni :Tinifile;
    AppDir:string;
begin
  //
  VNPrice_DiplayFormat:='#,##0';
  VNPrice_Decimal:=0;
  Account_N18D_ISO:='T-DCC-095B(ERP)';
  CFMID:='00186';
  CFMID1:='51181';
  CFMID2:='00056';
  AppDir:=ExtractFilePath(Application.ExeName);
  if FileExists(AppDir+'\ComName.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ComName.ini');
      VNPrice_DiplayFormat:=MyIni.ReadString('VNPrice','DiplayFormat','#,##0');
      VNPrice_Decimal:=strtoint(MyIni.ReadString('VNPrice','Decimal','0'));
      ComName:=MyIni.ReadString('ERP','ComName','');
      ComNameCH:=MyIni.ReadString('ERP','ComNameCH','');
      Account_N18D_ISO:=MyIni.ReadString('ERP','Account_N18D_ISO','');
      CFMID:=MyIni.ReadString('ERP','Account_N18D_CFMID_'+main.Edit2.Text,'');
      CFMID1:=MyIni.ReadString('ERP','Account_N18D_CFMID1_'+main.Edit2.Text,'');
      CFMID2:=MyIni.ReadString('ERP','Account_N18D_CFMID2_'+main.Edit2.Text,'');
    finally
      MyIni.Free;
    end;
  end;
  TCurrencyField(EnDet.FieldByName('VNPrice')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(EnDet.FieldByName('CWHL')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(EnDet.FieldByName('VNACC')).DisplayFormat:=VNPrice_DiplayFormat;
end;

procedure TEntry_Account.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TEntry_Account.FormDestroy(Sender: TObject);
begin
  Entry_Account:=nil;
end;

procedure TEntry_Account.FormCreate(Sender: TObject);
begin
  DTP1.Date:=date-3;
  DTP2.Date:=date;
  ReadIni();
end;

procedure TEntry_Account.Button1Click(Sender: TObject);
begin
  with EnMas do
  begin
    Active:=false;
    sql.Clear;
    sql.add('select KCRK.*,ZSZL.ZSYWJC ');
    sql.add('from KCRK');
    sql.add('left join ZSZL on ZSZL.ZSDH=KCRK.ZSBH ');  
    sql.add('left join KCCK on KCCK.CKBH=KCRK.CKBH ');
    sql.add('where convert(smalldatetime,convert(varchar,KCRK.USERDATE,111)) between '+''''+formatdatetime('yyyy/MM/dd',DTP1.date )+'''');
    sql.add('      and '+''''+formatdatetime('yyyy/MM/dd',DTP2.date )+'''');
    sql.add('      and KCRK.RKNO like '''+edit1.Text+'%''');
    if  edit2.Text<> '' then
    begin
      sql.add('      and ZSZL.ZSYWJC like ''%'+edit2.Text+'%''');
    end;
    if edit3.Text<>'' then
    begin
      sql.add('      and KCRK.HGLB like ''%'+edit3.Text+'%''');
    end;
    sql.add('      and KCCK.GSBH='''+main.edit2.text+'''');
    sql.add('order by KCRK.RKNO  ');
    //funcobj.WriteErrorLog(sql.Text);
    active:=true;
  end;
  EnDet.Active:=true;
end;

procedure TEntry_Account.Button3Click(Sender: TObject);
var
      eclApp,WorkBook:olevariant;
      i,j,s:integer;
begin
  if EnMas.Active then
   begin
    if EnMas.recordcount=0 then
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
    for i:=3 to EnMas.RecordCount do
      eclapp.workbooks[1].sheets.add;
      eclapp.workbooks[1].sheets[1].name:='Entry List';
      eclApp.workbooks[1].sheets[1].Cells(1,1):='NO';

      EnDet.active:=false;

      for   i:=1   to   EnMas.fieldcount   do
      begin
        eclApp.workbooks[1].sheets[1].Cells(1,i+1):=EnMas.fields[i-1].FieldName;
      end;
      EnMas.First;
      j:=2;
      while   not  EnMas.Eof   do
      begin
        eclApp.workbooks[1].sheets[1].Cells(j,1):=j-1;
        for   i:=1   to   EnMas.fieldcount   do
        begin
          eclApp.workbooks[1].sheets[1].Cells(j,i+1):=EnMas.Fields[i-1].Value;
          eclApp.workbooks[1].sheets[1].Cells.Cells.item[j,i+1].font.size:='8';
        end;
        EnMas.Next;
        inc(j);
      end;

    //²£¥Í©ú²Ó edit by billweng 2011/6/29
    EnMas.First;
    EnDet.active:=true;
    s:=2;
    while   not  EnMas.Eof   do
    begin
      eclapp.workbooks[1].sheets[s].name:=EnMas.fields[0].asstring;
      eclApp.workbooks[1].sheets[s].Cells(1,1):='NO';

      for   i:=1   to   EnDet.fieldcount   do
      begin
        eclApp.workbooks[1].sheets[s].Cells(1,i+1):=EnDet.fields[i-1].FieldName;
      end;
      EnDet.First;
      j:=2;
      while   not  EnDet.Eof   do
      begin
        eclApp.workbooks[1].sheets[s].Cells(j,1):=j-1;
        for   i:=1   to   EnDet.fieldcount   do
        begin
          eclApp.workbooks[1].sheets[s].Cells(j,i+1):=EnDet.Fields[i-1].Value;
          eclApp.workbooks[1].sheets[s].Cells.Cells.item[j,i+1].font.size:='8';
        end;
        EnDet.Next;
        inc(j);
      end;
      S:=S+1;
      EnMas.Next;
    end;

    eclapp.columns.autofit;
    showmessage('Succeed.');
    eclApp.Visible:=True;
  except
    on   F:Exception   do
      showmessage(F.Message);
  end;

end;

procedure TEntry_Account.Button2Click(Sender: TObject);
begin
  with BDelRec do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select KCRK_DK_CFM.CFMID,KCRK_DK_CFM.CFMID1,KCRK_DK_CFM.CFMID2');
    SQL.Add('from KCRK_DK_CFM');
    SQL.Add('where RKNO='''+EnMas.fieldbyname('RKNO').AsString+''' ');
    Active:=true;
    if RecordCount>0 then
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('  update KCRK_DK_CFM  ');
      SQL.Add('  set CFMID='''+CFMID+''', CFMDATE=getdate()  ');
      SQL.Add('      ,CFMID1='''+CFMID1+''', CFMDATE1=getdate()  ');
      SQL.Add('  	   ,CFMID2='''+CFMID2+''', CFMDATE2=getdate()  ');
      SQL.Add('  where RKNO='''+EnMas.FieldByName('RKNO').AsString+'''  ');
      ExecSQL;
    end else
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('  insert into KCRK_DK_CFM values ');
      SQL.Add('    ( '''+EnMas.FieldByName('RKNO').AsString+'''  ');
      SQL.Add('      ,'''+CFMID+''', getdate()  ');
      SQL.Add('      ,'''+CFMID1+''', getdate()  ');
      SQL.Add('  	   ,'''+CFMID2+''', getdate() )');
      ExecSQL;
    end;
  end;
  Entry_RePrintSumA51.sPaperSize := 'A5';
  Entry_RePrintSumA5:=TEntry_RePrintSumA5.Create(nil);
  Entry_RePrintSumA5.QRLabel6.Caption:=ComName;
  Entry_RePrintSumA5.qrlbl13.Caption:=ComNameCH;
  Entry_RePrintSumA5.QRLabel26.Caption:=Account_N18D_ISO;
  Entry_RePrintSumA5.quickrep1.prepare;
  Entry_RePrintSumA5.Qpage1.caption:=inttostr(Entry_RePrintSumA5.quickrep1.QRPrinter.pagecount);
  Entry_RePrintSumA5.quickrep1.preview;
  Entry_RePrintSumA5.Free;
end;

end.
