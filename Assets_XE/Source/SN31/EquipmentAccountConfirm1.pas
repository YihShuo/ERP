unit EquipmentAccountConfirm1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, StdCtrls, ComCtrls, ExtCtrls, GridsEh, DBGridEh,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL,
  DBAxisGridsEh, Comobj, DateUtils, Vcl.Menus, IniFiles;

type
  TEquipmentAccountConfirm = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    btnSearch: TButton;
    btnConfirm: TButton;
    btnCancel: TButton;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    edtRKNO: TEdit;
    Qtemp: TQuery;
    DelMas: TQuery;
    DS1: TDataSource;
    UpMas: TUpdateSQL;
    UPDet: TUpdateSQL;
    DelDet: TQuery;
    DS2: TDataSource;
    TSCD: TQuery;
    DelMasRKNO: TStringField;
    DelMasDOCNO: TStringField;
    DelMasUSERID: TStringField;
    DelMasUSERDATE: TDateTimeField;
    DelMasCFMID: TStringField;
    DelMasCFMDATE: TDateTimeField;
    DelMasYN: TStringField;
    Splitter1: TSplitter;
    DBGrid1: TDBGridEh;
    DelMasLB: TStringField;
    DelMasDepID: TStringField;
    DelMasDepName: TStringField;
    DelMasZSBH: TStringField;
    DelMasZSJC_YW: TStringField;
    DelDetRKNO: TStringField;
    DelDetSBBH: TStringField;
    DelDetUSERID: TStringField;
    DelDetUSERDATE: TDateTimeField;
    DelDetYN: TStringField;
    DelDetZWPM: TStringField;
    DelDetZSDH: TStringField;
    DelDetLSBH: TStringField;
    DelDetQUCBH: TStringField;
    DelDetVNPrice: TCurrencyField;
    DelDetVNACC: TCurrencyField;
    DelDetUSPrice: TFloatField;
    DelDetUSACC: TFloatField;
    DelDetCWHL_HG: TCurrencyField;
    DelDetVNACC_HG: TCurrencyField;
    DelDetVNTax_HG: TCurrencyField;
    DelDetMonthS: TIntegerField;
    DelDetCostID: TStringField;
    TSCDQry: TQuery;
    TSCDQryTSID: TStringField;
    TSCDQryTSBH: TStringField;
    TSCDQrySBBH: TStringField;
    TSCDQryXSBH: TStringField;
    TSCDQryNSX: TStringField;
    TSCDQryInDATE: TDateTimeField;
    TSCDQryDepID: TStringField;
    TSCDQryDepName: TStringField;
    TSCDQryDepID_Memo: TStringField;
    TSCDQryYWPM: TStringField;
    TSCDQryZWPM: TStringField;
    TSCDQryZSDH: TStringField;
    TSCDQryZSJC_YW: TStringField;
    TSCDQryLSBH: TStringField;
    TSCDQryQUCBH: TStringField;
    TSCDQryStatus: TStringField;
    TSCDQryQty: TFloatField;
    TSCDQryRKNO: TStringField;
    TSCDQryCFMID: TStringField;
    TSCDQryCFMID_LL: TStringField;
    TSCDQryCFMID_RK: TStringField;
    TSCDQryLB: TStringField;
    TSCDQryUSERDATE: TDateTimeField;
    TSCDQryUSERID: TStringField;
    TSCDQryYN: TStringField;
    UpdTSCD: TUpdateSQL;
    DS3: TDataSource;
    DelDetQty: TFloatField;
    btnPrint: TButton;
    DelDetCWHL: TCurrencyField;
    btnExcel: TButton;
    DelDetDWBH: TStringField;
    DelDetVNPrice_HG: TCurrencyField;
    DelDetVNACC_Tax: TCurrencyField;
    ConfirmCK: TCheckBox;
    DelMasHDNO: TStringField;
    DelMasDOCDate: TDateTimeField;
    DelMasHDDate: TDateTimeField;
    DelMasSOHIEU: TStringField;
    DelMasTOKHAI: TStringField;
    DelMasTKDate: TDateTimeField;
    DelDetVWPM: TStringField;
    DelDetMemo: TStringField;
    DelDetRKMemo: TStringField;
    Panel2: TPanel;
    Splitter2: TSplitter;
    DBGrid2: TDBGridEh;
    Panel3: TPanel;
    DBGrid3: TDBGridEh;
    DelDetS: TQuery;
    DelDetSRKNO: TStringField;
    DelDetSSBBH: TStringField;
    DelDetSSBBH1: TStringField;
    DelDetSQty: TFloatField;
    DelDetSVNPrice: TCurrencyField;
    DelDetSUSPrice: TFloatField;
    DelDetSUSERID: TStringField;
    DelDetSUSERDATE: TDateTimeField;
    DelDetSYN: TStringField;
    DelDetSVWPM: TStringField;
    DS4: TDataSource;
    UpDetS: TUpdateSQL;
    DBGrid4: TDBGridEh;
    PopupMenu: TPopupMenu;
    N1: TMenuItem;
    Query1: TQuery;
    btn_ExcelCCDC: TButton;
    DelDetHGPM: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnSearchClick(Sender: TObject);
    procedure btnConfirmClick(Sender: TObject);
    procedure DBGrid2ColExit(Sender: TObject);
    procedure DBGrid2EditButtonClick(Sender: TObject);
    procedure btnPrintClick(Sender: TObject);
    procedure btnExcelClick(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure btn_ExcelCCDCClick(Sender: TObject);
  private
    AppDir,AssetsN31_TSCD_ISO,AssetsN31_CCDC_ISO:String;
    { Private declarations }
    procedure ExportDefaultExcel();
    procedure ExportFormatExcel();
  public
    ComNameCH,ComName,CheckPrintMaterial:string;
    { Public declarations }
    function RMBFloatToChinese(ARMBCash: Real): string;
    function RMBFloatToVietnam(inputNumber: Real): string;
    function GetVietDate(myDate:TDateTime):string;
    function GetChineseDate(myDate:TDateTime):string;
  end;

var
  EquipmentAccountConfirm: TEquipmentAccountConfirm;
  Ndate: Tdate;
  //
implementation

uses main1, EquipmentAccountConfirm_print1, FunUnit;
{$R *.dfm}
function TEquipmentAccountConfirm.GetVietDate(myDate:TDateTime):string;
var myYear, myMonth, myDay : Word;
    myHour, myMin, mySec, myMilli : Word;
begin
  decodedatetime(myDate, myYear, myMonth, myDay ,myHour, myMin, mySec, myMilli);
  result:='Ngày 日'+Format('%.2d',[myDay])+' tháng 月 '+Format('%.2d',[myMonth])+' năm 年 '+inttostr(myYear);
end;

procedure TEquipmentAccountConfirm.N1Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin
    if  DelMas.active  then
    begin
    try
      eclApp:=CreateOleObject('Excel.Application');
      WorkBook:=CreateOleObject('Excel.Sheet');
    except
      Application.MessageBox('No Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
      Exit;
    end;
    try
      WorkBook:=eclApp.workbooks.Add;
      for  i:=0  to DelMas.fieldcount-1   do
      begin
        eclApp.Cells(1,i+1):=DelMas.fields[i].FieldName;
      end;
      DelMas.First;
      j:=2;
      while   not   DelMas.Eof   do
        begin
          for   i:=0   to  DelMas.fieldcount-1  do
          begin
            eclApp.Cells(j,i+1):=DelMas.Fields[i].AsString;
          end;
        DelMas.Next;
        inc(j);
      end;
      eclapp.columns.autofit;
      eclApp.Visible:=True;
      showmessage('Succeed');
    except
      on   F:Exception   do
          showmessage(F.Message);
      end;
    end;
end;

function TEquipmentAccountConfirm.GetChineseDate(myDate:TDateTime):string;
var myYear, myMonth, myDay : Word;
    myHour, myMin, mySec, myMilli : Word;
begin
  decodedatetime(myDate, myYear, myMonth, myDay ,myHour, myMin, mySec, myMilli);
  result:='日 '+Format('%.2d',[myDay])+' 月 '+Format('%.2d',[myMonth])+' 年 '+inttostr(myYear);
end;
//
function TEquipmentAccountConfirm.RMBFloatToChinese(ARMBCash: Real): string;
const
  cNum: WideString = '零壹貳叄肆伍陸柒捌玖-萬仟佰拾億仟佰拾萬仟佰拾元角分';
  cCha: array [0 .. 1, 0 .. 11] of string =
    (('零仟', '零佰', '零拾', '零零零', '零零', '零億', '零萬', '零元', '億萬', '零角', '零分', '零整'),
    ('零', '零', '零', '零', '零', '億', '萬', '元', '億', '零', '整', '整'));
var
  i: Integer;
  sNum: WideString;
begin
  Result := '';
  sNum := FormatFloat('0', ARMBCash * 100);
  for i := 1 to Length(sNum) do
    Result := Result + cNum[Ord(sNum[i]) - 47] + cNum[26 - Length(sNum) + i];
  for i := 0 to 11 do // 去掉多余的零
    Result := StringReplace(Result, cCha[0, i], cCha[1, i], [rfReplaceAll]);
end;
function TEquipmentAccountConfirm.RMBFloatToVietnam(inputNumber: Real): string;
const
  unitNumbers:array [0..9] of String =('không','một','hai','ba','bốn','năm','sáu','bảy','tám','chín');
  placeValues:array [0..3] of String =('','nghìn','triệu','tỷ');
var
  sNumber:String;
  isNegative:boolean;
  positionDigit:integer;
  placeValue:integer;
  //
  tens,hundreds,ones:integer;
  sResult:String;
begin
  sResult:='';
  //
  isNegative:=false;
  if inputNumber<0 then
  begin
   inputNumber:=-1*inputNumber;
   isNegative:=true;
  end;
  sNumber:=floattostr(inputNumber);
  positionDigit:=length(sNumber);
  placeValue:=0;
  while positionDigit>0 do
  begin
    tens:=-1; hundreds:=-1;
    ones:=strtoint(Copy(sNumber,positionDigit,1));
    positionDigit:=positionDigit-1;
    if positionDigit>0 then
    begin
      tens:=strtoint(Copy(sNumber,positionDigit,1));
      positionDigit:=positionDigit-1;
      if positionDigit>0 then
      begin
        hundreds:=strtoint(Copy(sNumber,positionDigit,1));
        positionDigit:=positionDigit-1;
      end;
    end;
    //
    if ( (ones>0) or (tens>0) or (hundreds>0) or (placeValue=3)) then
    begin
      sResult:=placeValues[placeValue] + sResult;
    end;
    placeValue:=placeValue+1;
    if (placeValue > 3) then placeValue:= 1;
    //
    if ((ones=1) and (tens>1))  then
    begin
       sResult:='mốt ' + sResult;
    end else
    begin
      if ((ones=5) and (tens>0))  then
      begin
        sResult:='lăm ' + sResult;
      end else if (ones > 0) then
      begin
        sResult:=unitNumbers[ones] + ' '+ sResult;
      end;
    end;
    if (tens < 0) then
    begin
      break;
    end else
    begin
      if ((tens = 0) and (ones > 0)) then sResult:= 'lẻ ' + sResult;
      if (tens=1)  then sResult:= 'mười ' + sResult;
      if (tens > 1) then sResult:=unitNumbers[tens] + ' mươi ' + sResult;
    end;
    //
    if (hundreds < 0) then
    begin
      break;
    end else
    begin
      if ( (hundreds>0) or (tens > 0) or (ones > 0))  then
      begin
        sResult:= unitNumbers[hundreds] + ' trăm ' + sResult;
      end;
    end;
    sResult:= ' ' + sResult;
  end;
  sResult:=trim(sResult);
  if (isNegative) then sResult:='Âm ' + sResult;
  result:= sResult+' đồng';
  //
end;
procedure TEquipmentAccountConfirm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=Cafree;
end;

procedure TEquipmentAccountConfirm.FormDestroy(Sender: TObject);
begin
  EquipmentAccountConfirm:=nil;
end;

procedure TEquipmentAccountConfirm.FormCreate(Sender: TObject);
var i: integer;
    MyIni :Tinifile;
begin
  ComName:='CONG TY TNHH TY XUAN';
  ComNameCH:='億春責任有限公司';
  AppDir:=ExtractFilePath(Application.ExeName);

  if FileExists(AppDir+'\ComName.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ComName.ini');
      AssetsN31_TSCD_ISO:=MyIni.ReadString('ERP','AssetsN31_TSCD_ISO','T-DCC-100A(ERP)');
      AssetsN31_CCDC_ISO:=MyIni.ReadString('ERP','AssetsN31_CCDC_ISO','T-DCC-101B(ERP)');
      ComName:=MyIni.ReadString('ERP','ComName','CONG TY TNHH TY XUAN');
      ComNameCH:=MyIni.ReadString('ERP','ComNameCH','億春責任有限公司');
    finally
      MyIni.Free;
    end;
  end;
  with Qtemp do
  begin
    active:=false;
    sql.Clear;
    sql.add('select getdate() as NDate ');
    active:=true;
    Ndate:=fieldbyname('NDate').Value;
    active:=false;
  end;
  DTP1.Date:=Ndate-3;
  DTP2.Date:=Ndate;
end;


procedure TEquipmentAccountConfirm.btnExcelClick(Sender: TObject);
begin
  if  Messagedlg(Pchar('Chon Yes Xuat Excel TSCD binh thuong / Chon No Xuat Excel TSCD co linh kien di kem ?'),mtInformation,[mbNo,mbYes],0)=mrYes then
  begin
    ExportDefaultExcel();
  end else
  begin
    ExportFormatExcel();
  end;
end;

procedure TEquipmentAccountConfirm.ExportDefaultExcel();
  //
  function GetExcelColumnID(i:integer):string;
  var str:string;
  begin
    case i of
      1:str:='A';  2:str:='B';  3:str:='C';
      4:str:='D';  5:str:='E';  6:str:='F';
      7:str:='G';  8:str:='H';  9:str:='I';
      10:str:='J';  11:str:='K';  12:str:='L';
      13:str:='M';  14:str:='N';  15:str:='O';
      16:str:='P';  17:str:='Q';  18:str:='R';
      19:str:='S';  20:str:='T';  21:str:='U';
      22:str:='V';  23:str:='W';  24:str:='X';
      25:str:='Y';  26:str:='Z';  27:str:='AA';
      28:str:='AB';  29:str:='AC';  30:str:='AD';
      31:str:='AE';  32:str:='AF';  33:str:='AG';
      34:str:='AH';  35:str:='AI';  36:str:='AJ';
    end;
    result:=str;
  end;
var eclApp,WorkBook:olevariant;
    i,j,Posi:integer;
    Str:String;
begin
   if(not DirectoryExists(AppDir+'Additional\'))  then ForceDirectories(AppDir+'Additional\');
   CopyFile(Pchar('\\'+main.ServerIP+'\liy_erp\Additional\Asset_SN31.xls'),Pchar(AppDir+'Additional\Asset_SN31.xlsx'),false);
   if FileExists(AppDir+'Additional\Asset_SN31.xlsx') then
   begin
      try
        eclApp:=CreateOleObject('Excel.Application');
        WorkBook:=CreateOleObject('Excel.Sheet');
      except
        Application.MessageBox('No Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
        Exit;
      end;
      //
      try
        eclApp.WorkBooks.Open(AppDir+'Additional\Asset_SN31.xlsx');
        with Qtemp do
        begin
          Active:=false;
          SQL.Clear;
          SQL.Add('Select TSCD_KCRK.RKNO,TSCD_KCRK.DOCNO,TSCD_KCRK.HDNO,TSCD_KCRK.DOCDate,TSCD_KCRK.HDDate,TSCD_ZSZL.zsjc_yw,');
          sql.Add('       IsNull(Sum(USACC),0.0) as USACC,IsNull(Sum(VNACC),0) as VNACC,IsNull(Sum(VNTax_HG),0) as VNTax_HG,IsNull(Sum(VNACC),0) +IsNull(Sum(VNTax_HG),0) as AllVNACC, ');
          SQL.Add('       Max(TSCD_KCRK.UserDate) as UserDate,Max(CWHL_HG) as CWHL ');
          SQL.Add('from TSCD_KCRK');
          SQL.Add('left join TSCD_ZSZL on TSCD_ZSZL.ZSDH=TSCD_KCRK.ZSBH ');
          SQL.Add('left join TSCD_KCRKS on TSCD_KCRKS.RKNO=TSCD_KCRK.RKNO ');
          SQL.Add('where TSCD_KCRK.RKNO='''+DelMas.FieldByName('RKNO').AsString+''' ');
          SQL.Add('Group by TSCD_KCRK.RKNO,TSCD_KCRK.DOCNO,TSCD_KCRK.DOCDate,TSCD_KCRK.HDNO,TSCD_KCRK.HDDate,TSCD_ZSZL.zsjc_yw');
          //funcObj.WriteErrorLog(sql.Text);
          Active:=true;
        end;

        eclApp.Cells(5,1):=EquipmentAccountConfirm.GetVietDate(Qtemp.FieldByName('UserDate').value);
        eclApp.Cells(6,5):=EquipmentAccountConfirm.GetChineseDate(Qtemp.FieldByName('UserDate').value);
        eclApp.Cells(8,1):='  Họ và tên người giao: '+Qtemp.FieldByName('zsjc_yw').Asstring;
        eclApp.Cells(9,1):='  Chứng từ số 紙張: '+Qtemp.FieldByName('DOCNO').Asstring;
        eclApp.Cells(10,1):='  Chứng từ số 紙張: '+Qtemp.FieldByName('HDNO').Asstring;
        eclApp.cells(9,5):= GetVietDate(Qtemp.FieldByName('DOCDate').value);
        eclApp.cells(10,5):= GetVietDate(Qtemp.FieldByName('HDDate').value);
        eclApp.Cells(2,10):=Qtemp.FieldByName('RKNO').Asstring;
        eclApp.Cells(14,6):=Qtemp.FieldByName('CWHL').Asstring;
        //331 欄位
        Str:=Format('%n',[strtofloat(Qtemp.FieldByName('AllVNACC').AsString)]);
        eclApp.Cells(8,9):=Copy(Str,1,length(Str)-3);
        //
        eclApp.Cells(19,9):=Copy(Str,1,length(Str)-3);
        Str:=Format('%n',[strtofloat(Qtemp.FieldByName('USACC').AsString)]);
        eclApp.Cells(19,8):=Copy(Str,1,length(Str)-3);  //右下角總計
        //
        Str:=Format('%n',[strtofloat(Qtemp.FieldByName('VNACC').AsString)]);
        eclApp.Cells(9,9):=Copy(Str,1,length(Str)-3);

        Str:=Format('%n',[strtofloat(Qtemp.FieldByName('VNTax_HG').AsString)]);
        eclApp.Cells(10,9):=Copy(Str,1,length(Str)-3);
        //中文越文總金額
        eclApp.Cells(20,3):=EquipmentAccountConfirm.RMBFloatToVietnam(Qtemp.FieldByName('AllVNACC').Value);
        eclApp.Cells(21,3):=EquipmentAccountConfirm.RMBFloatToChinese(Qtemp.FieldByName('AllVNACC').Value);


        Qtemp.Active:=false;
        //
        for i := 0 to DelDet.RecordCount-1 do
        begin
          for j:=0 to 2 do
          begin
            eclApp.ActiveSheet.Rows[18].Insert;
          end;
        end;
        for i := 0 to DelDet.RecordCount-1 do
        begin
          if DelDet.FieldByName('HGPM').AsString<>'' then
          begin
            eclApp.Cells(18+i*3,2):=DelDet.FieldByName('HGPM').AsString;
            eclApp.Cells[18+i*3,2].WrapText := True;
          end else begin
            eclApp.Cells(18+i*3,2):=DelDet.FieldByName('VWPM').AsString;
            eclApp.Cells[18+i*3,2].WrapText := True;
          end;
          eclApp.Cells(18+i*3+1,2):=DelDet.FieldByName('ZWPM').AsString;
          eclApp.Cells[18+i*3+1,2].WrapText := True;
          //進口稅
          if DelDet.FieldByName('VNTax_HG').Value>0 then
          begin
            eclApp.Cells(18+i*3+2,2):='THUẾ NHẬP KHẨU 進口稅';
          end;
          //
          eclApp.Cells(18+i*3,3):=DelDet.FieldByName('DWBH').AsString;
          eclApp.Cells(18+i*3,4):=DelDet.FieldByName('Qty').AsString;
          eclApp.Cells(18+i*3,5):=DelDet.FieldByName('Qty').AsString;
          eclApp.Cells(18+i*3,6):=DelDet.FieldByName('USPrice').AsString;
          eclApp.Cells(18+i*3,7):=DelDet.FieldByName('VNPrice').AsString;
          eclApp.Cells(18+i*3,8):=DelDet.FieldByName('USACC').AsString;
          eclApp.Cells(18+i*3,9):=DelDet.FieldByName('VNACC').AsString;
          //進口稅
          if DelDet.FieldByName('VNTax_HG').Value>0 then
          begin
            eclApp.Cells(18+i*3+2,7):=DelDet.FieldByName('VNPrice_HG').AsString;
            eclApp.Cells(18+i*3+2,9):=DelDet.FieldByName('VNTax_HG').AsString;
          end;
          DelDet.Next;
        end;
        //
        showmessage('Succeed.');
        eclApp.Visible:=True;
      except
       on   F:Exception   do
       begin
         eclApp.quit;
         showmessage(F.Message);
       end;
      end;
   end;
end;

procedure TEquipmentAccountConfirm.btnPrintClick(Sender: TObject);
begin
   if  Messagedlg(Pchar('Chon Yes In ten tai san theo ten tieng viet / Chon No in ten tai san theo ten hai quan'),mtInformation,[mbNo,mbYes],0)=mrYes then
   begin
    CheckPrintMaterial:='TV';
   end else
   begin
    CheckPrintMaterial:='HQ';
   end;
   EquipmentAccountConfirm_print:=TEquipmentAccountConfirm_print.Create(self);
   EquipmentAccountConfirm_print.quickrep1.prepare;
   if  Messagedlg(Pchar('Chon Yes In TSCD / Chon No In Cong Cu Dung Cu'),mtInformation,[mbNo,mbYes],0)=mrYes then
   begin
      EquipmentAccountConfirm_print.L1.Caption:='固 定 財 產 入 庫 單';
      EquipmentAccountConfirm_print.QRLabel1.Caption:='PHIẾU NHẬP TÀI SẢN CỐ ĐỊNH';
      EquipmentAccountConfirm_print.QRlabel18.Caption:=ComName;
      EquipmentAccountConfirm_print.QRlabel5.Caption:=ComNameCH;
      EquipmentAccountConfirm_print.QRLabel50.Caption:=ComName;
      EquipmentAccountConfirm_print.QRLabel51.Caption:=ComNameCH;
      EquipmentAccountConfirm_print.ISO.Caption:=AssetsN31_TSCD_ISO;
   end else
   begin
      EquipmentAccountConfirm_print.L1.Caption:='機器入庫單（工具）';
      EquipmentAccountConfirm_print.QRLabel1.Caption:='PHIẾU NHẬP MÁY MÓC (CÔNG CỤ DỤNG CỤ)';
      EquipmentAccountConfirm_print.QRlabel18.Caption:=ComName;
      EquipmentAccountConfirm_print.QRlabel5.Caption:=ComNameCH;
      EquipmentAccountConfirm_print.QRLabel50.Caption:=ComName;
      EquipmentAccountConfirm_print.QRLabel51.Caption:=ComNameCH;
      EquipmentAccountConfirm_print.ISO.Caption:=AssetsN31_CCDC_ISO;
      EquipmentAccountConfirm_print.QRLabel11.Caption:='Nợ TK : 153';
   end;
   EquipmentAccountConfirm_print.quickrep1.preview;
   EquipmentAccountConfirm_print.free;
end;

procedure TEquipmentAccountConfirm.btnSearchClick(Sender: TObject);
begin
  //
  with DelMas do
  begin
    DelDet.Active:=false;
    TSCD.Active:=false;
    DelDetS.Active:=false;
    Active:=false;
    sql.Clear;
    sql.add('select TSCD_KCRK.*,BDepartment.DepName,TSCD_ZSZL.ZSJC_YW,TSCD_KCPK.Declaretion as TOKHAI,TSCD_KCPK.TKDate ');
    sql.add('from TSCD_KCRK ');
    sql.add('left join TSCD_BDepartment BDepartment on BDepartment.ID=TSCD_KCRK.DepID ');
    sql.add('left join TSCD_ZSZL on TSCD_ZSZL.zsdh=TSCD_KCRK.ZSBH ');
    sql.Add('left join TSCD_KCPK on TSCD_KCRK.RKNO=TSCD_KCPK.PKNO');
    sql.add('where TSCD_KCRK.CFMID<>''NO''  ');
    if ConfirmCK.Checked=false then
    begin
      sql.Add(' and TSCD_KCRK.YN=1 ');
    end else
    begin
      sql.Add(' and TSCD_KCRK.YN=5 ');
    end;
    sql.add('and convert(smalldatetime,convert(varchar,TSCD_KCRK.USERDATE,111)) between '+''''+formatdatetime('yyyy/MM/dd',DTP1.date )+'''');
    sql.add('and '''+formatdatetime('yyyy/MM/dd',DTP2.date )+'''');
    sql.add('and TSCD_KCRK.RKNO like '''+edtRKNO.Text+'%''');
    sql.add('order by TSCD_KCRK.RKNO  ');
    //funcObj.WriteErrorLog(sql.Text);
    active:=true;
  end;
  if DelMas.RecordCount>0 then
  begin
    DelDet.Active:=true;
    TSCDQry.Active:=true;
    DelDetS.Active:=true;
  end;
  //
end;

procedure TEquipmentAccountConfirm.btn_ExcelCCDCClick(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,DongExcel,k,h,f,Posi:integer;
    Str:String;
begin
   if(not DirectoryExists(AppDir+'Additional\'))  then ForceDirectories(AppDir+'Additional\');
   CopyFile(Pchar('\\'+main.ServerIP+'\liy_erp\Additional\Asset_SN31_CCDCLK.xls'),Pchar(AppDir+'Additional\Asset_SN31_CCDCLK.xlsx'),false);
   if FileExists(AppDir+'Additional\Asset_SN31_CCDCLK.xlsx') then
   begin
      try
        eclApp:=CreateOleObject('Excel.Application');
        WorkBook:=CreateOleObject('Excel.Sheet');
      except
        Application.MessageBox('No Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
        Exit;
      end;
      //
      try
        eclApp.WorkBooks.Open(AppDir+'Additional\Asset_SN31_CCDCLK.xlsx');
        with Qtemp do
        begin
          Active:=false;
          SQL.Clear;
          SQL.Add('  select SBBH,SBBH1,VWPM,DWBH,Qty,VNprice,USprice,CWHL,isnull(VNTax_HG,0) as VNTax_HG,isnull(VNPrice_HG,0) as VNPrice_HG ,TSBH      ');
          SQL.Add('    ,sum (isnull(USprice,0)*Qty) as USACC       ');
          SQL.Add('    ,sum (case when (isnull(USprice,0)<>0 and isnull(VNprice,0)=0) then USprice*Qty*CWHL       ');
          SQL.Add('            	  when (isnull(USprice,0)=0 and isnull(VNprice,0)<>0) then VNprice*Qty else VNprice*Qty end) as VNACC       ');
          SQL.Add('    from  (   ');
          SQL.Add('           select TSCD_KCRKS.RKNO,TSCD_KCRKS.SBBH,TSCD_KCRKS.SBBH as SBBH1,case when isnull(TSCD_SB.HGPM,'''')<>'''' then TSCD_SB.ZWPM +'' ''+ TSCD_SB.HGPM else TSCD_SB.ZWPM +'' ''+ TSCD_SB.VWPM end as VWPM       ');
          SQL.Add('           ,TSCD_SB.DWBH,TSCD_KCRKS.Qty,TSCD_KCRKS.VNprice,TSCD_KCRKS.USprice,isnull(max(TSCD_KCRKS.CWHL_HG),0) as CWHL,TSCD_KCRKS.VNTax_HG,TSCD_KCRKS.VNPrice_HG       ');
          SQL.Add('           ,case when TSCD_KCRKS.Memo is not null then TSCD_KCRKS.Memo else       ');
          SQL.Add('           CAST(substring((select '','' + TSCD.TSBH from TSCD where  TSCD.RKNO=TSCD_KCRKS.RKNO and TSCD.SBBH=TSCD_KCRKS.SBBH       ');
          SQL.Add('          				    and TSCD_KCRKS.RKNO = '''+DelMas.FieldByName('RKNO').AsString+''' for XML path ('''')),2,1000) as varchar(1000)) end as TSBH       ');
          SQL.Add('           from TSCD_KCRKS       ');
          SQL.Add('           left join TSCD_SB on TSCD_SB.SBBH = TSCD_KCRKS.SBBH          ');
          SQL.Add('           where  TSCD_KCRKS.RKNO='''+DelMas.FieldByName('RKNO').AsString+'''');
          SQL.Add('           group by TSCD_KCRKS.RKNO,TSCD_KCRKS.SBBH,TSCD_SB.ZWPM,TSCD_SB.VWPM,TSCD_SB.HGPM,TSCD_SB.DWBH,TSCD_KCRKS.Qty,TSCD_KCRKS.VNprice,TSCD_KCRKS.USprice      ');
          SQL.Add('           ,TSCD_KCRKS.CWHL_HG,TSCD_KCRKS.VNTax_HG,TSCD_KCRKS.VNPrice_HG,TSCD_KCRKS.Memo       ');
          SQL.Add('           union all       ');
          SQL.Add('           select TSCD_KCRKS.RKNO,TSCD_KCRKS.SBBH,TSCD_KCRKSS.SBBH1,case when isnull(TSCD_SB.HGPM,'''')<>'''' then ''Gan kem''+'' : ''+TSCD_SB.ZWPM +'' ''+ TSCD_SB.HGPM else ''Gan kem''+'' : ''+TSCD_SB.ZWPM +'' ''+ TSCD_SB.VWPM end as VWPM       ');
          SQL.Add('           ,TSCD_SB.DWBH,TSCD_KCRKSS.Qty,TSCD_KCRKSS.VNprice,TSCD_KCRKSS.USprice,isnull(max(TSCD_KCRKS.CWHL_HG),0) as CWHL, '''' as VNTax_HG, '''' as VNPrice_HG       ');
          SQL.Add('           ,case when  TSCD_KCRKS.Memo is not null then TSCD_KCRKS.Memo else           ');
          SQL.Add('           CAST(substring((select '','' + TSCD.TSBH from TSCD where TSCD.RKNO=TSCD_KCRKS.RKNO and TSCD.SBBH=TSCD_KCRKS.SBBH       ');
          SQL.Add('          					and TSCD_KCRKS.RKNO = '''+DelMas.FieldByName('RKNO').AsString+''' for XML path ('''')),2,1000) as varchar(1000)) end as TSBH       ');
          SQL.Add('           from TSCD_KCRKS  ');
          SQL.Add('  		      inner join TSCD_KCRKSS on TSCD_KCRKS.RKNO = TSCD_KCRKSS.RKNO and TSCD_KCRKS.SBBH = TSCD_KCRKSS.SBBH         ');
          SQL.Add('           left join TSCD_SB on TSCD_SB.SBBH = TSCD_KCRKSS.SBBH1            ');
          SQL.Add('           where  TSCD_KCRKS.RKNO='''+DelMas.FieldByName('RKNO').AsString+'''');
          SQL.Add('           group by TSCD_KCRKS.RKNO,TSCD_KCRKS.SBBH,TSCD_KCRKSS.SBBH1,TSCD_SB.ZWPM,TSCD_SB.VWPM,TSCD_SB.HGPM,TSCD_SB.DWBH,TSCD_KCRKSS.Qty,TSCD_KCRKSS.VNprice,TSCD_KCRKSS.USprice      ');
          SQL.Add('           ,TSCD_KCRKS.CWHL_HG,TSCD_KCRKS.Memo      ');
          SQL.Add('          ) TSCD       ');
          SQL.Add('    group by SBBH,SBBH1,VWPM,DWBH,Qty,VNprice,USprice,CWHL,VNTax_HG,VNPrice_HG,TSBH        ');
          SQL.Add('    order by SBBH,SBBH1 desc  ');
          //funcobj.WriteErrorLog(sql.Text);
          Active:=true;
        end;
        //
        with query1 do
        begin
          Active:=false;
          SQL.Clear;
          SQL.Add('  select IsNull(Sum(VNTax_HG),0) as AllVNTax_HG,IsNull(Sum(USACC),0) as AllUSACC,IsNull(Sum(VNACC),0) as AllVNACC,IsNull(Sum(VNACC),0) +IsNull(Sum(VNTax_HG),0) as Total from(       ');
          SQL.Add('  select SBBH,SBBH1,VWPM,DWBH,Qty,VNprice,USprice,CWHL,isnull(VNTax_HG,0) as VNTax_HG,isnull(VNPrice_HG,0) as VNPrice_HG      ');
          SQL.Add('    ,sum (isnull(USprice,0)*Qty) as USACC       ');
          SQL.Add('    ,sum (case when (isnull(USprice,0)<>0 and isnull(VNprice,0)=0) then USprice*Qty*CWHL       ');
          SQL.Add('            	  when (isnull(USprice,0)=0 and isnull(VNprice,0)<>0) then VNprice*Qty else VNprice*Qty end) as VNACC       ');
          SQL.Add('    from  (   ');
          SQL.Add('           select TSCD_KCRKS.RKNO,TSCD_KCRKS.SBBH,TSCD_KCRKS.SBBH as SBBH1,case when isnull(TSCD_SB.HGPM,'''')<>'''' then TSCD_SB.ZWPM +'' ''+ TSCD_SB.HGPM else TSCD_SB.ZWPM +'' ''+ TSCD_SB.VWPM end as VWPM       ');
          SQL.Add('           ,TSCD_SB.DWBH,TSCD_KCRKS.Qty,TSCD_KCRKS.VNprice,TSCD_KCRKS.USprice,isnull(max(TSCD_KCRKS.CWHL_HG),0) as CWHL,TSCD_KCRKS.VNTax_HG,TSCD_KCRKS.VNPrice_HG          ');
          SQL.Add('           from TSCD_KCRKS       ');
          SQL.Add('           left join TSCD_SB on TSCD_SB.SBBH = TSCD_KCRKS.SBBH          ');
          SQL.Add('           where  TSCD_KCRKS.RKNO='''+DelMas.FieldByName('RKNO').AsString+'''');
          SQL.Add('           group by TSCD_KCRKS.RKNO,TSCD_KCRKS.SBBH,TSCD_SB.ZWPM,TSCD_SB.VWPM,TSCD_SB.HGPM,TSCD_SB.DWBH,TSCD_KCRKS.Qty,TSCD_KCRKS.VNprice,TSCD_KCRKS.USprice      ');
          SQL.Add('           ,TSCD_KCRKS.CWHL_HG,TSCD_KCRKS.VNTax_HG,TSCD_KCRKS.VNPrice_HG,TSCD_KCRKS.Memo       ');
          SQL.Add('           union all       ');
          SQL.Add('           select TSCD_KCRKS.RKNO,TSCD_KCRKS.SBBH,TSCD_KCRKSS.SBBH1,case when isnull(TSCD_SB.HGPM,'''')<>'''' then ''Gan kem''+'' : ''+TSCD_SB.ZWPM +'' ''+ TSCD_SB.HGPM else ''Gan kem''+'' : ''+TSCD_SB.ZWPM +'' ''+ TSCD_SB.VWPM end as VWPM       ');
          SQL.Add('           ,TSCD_SB.DWBH,TSCD_KCRKSS.Qty,TSCD_KCRKSS.VNprice,TSCD_KCRKSS.USprice,isnull(max(TSCD_KCRKS.CWHL_HG),0) as CWHL, '''' as VNTax_HG, '''' as VNPrice_HG           ');
          SQL.Add('           from TSCD_KCRKS  ');
          SQL.Add('  		      inner join TSCD_KCRKSS on TSCD_KCRKS.RKNO = TSCD_KCRKSS.RKNO and TSCD_KCRKS.SBBH = TSCD_KCRKSS.SBBH         ');
          SQL.Add('           left join TSCD_SB on TSCD_SB.SBBH = TSCD_KCRKSS.SBBH1            ');
          SQL.Add('           where  TSCD_KCRKS.RKNO='''+DelMas.FieldByName('RKNO').AsString+'''');
          SQL.Add('           group by TSCD_KCRKS.RKNO,TSCD_KCRKS.SBBH,TSCD_KCRKSS.SBBH1,TSCD_SB.ZWPM,TSCD_SB.VWPM,TSCD_SB.HGPM,TSCD_SB.DWBH,TSCD_KCRKSS.Qty,TSCD_KCRKSS.VNprice,TSCD_KCRKSS.USprice      ');
          SQL.Add('           ,TSCD_KCRKS.CWHL_HG,TSCD_KCRKS.Memo      ');
          SQL.Add('          ) TSCD       ');
          SQL.Add('    group by SBBH,SBBH1,VWPM,DWBH,Qty,VNprice,USprice,CWHL,VNTax_HG,VNPrice_HG )TSCD  ');
          //funcobj.WriteErrorLog(sql.Text);
          Active:=true;
        end;
        eclApp.Cells(5,1):=EquipmentAccountConfirm.GetVietDate(DelMas.FieldByName('UserDate').value);
        eclApp.Cells(6,1):=EquipmentAccountConfirm.GetChineseDate(DelMas.FieldByName('UserDate').value);
        eclApp.Cells(7,1):='  Tên nhà cung ứng :  '+DelMas.FieldByName('zsjc_yw').Asstring;
        eclApp.Cells(8,1):='  Số hóa đơn/Invoice 紙張: '+DelMas.FieldByName('DOCNO').Asstring;
        eclApp.Cells(9,1):='  Số hợp đồng 紙張:  '+DelMas.FieldByName('HDNO').Asstring;
        eclApp.Cells(10,1):='  Số tờ khai 紙張: '+DelMas.FieldByName('TOKHAI').Asstring;
        eclApp.Cells(2,12):=DelMas.FieldByName('RKNO').Asstring;
        if not DelMas.FieldByName('DOCDate').IsNull then
          eclApp.cells(8,5):= GetVietDate(DelMas.FieldByName('DOCDate').Value);
        if not DelMas.FieldByName('HDDate').IsNull then
          eclApp.cells(9,5):= GetVietDate(DelMas.FieldByName('HDDate').Value);
        if not DelMas.FieldByName('TKdate').IsNull then
          eclApp.cells(10,5):= GetVietDate(DelMas.FieldByName('TKdate').Value);
        eclApp.cells(12,6):=Qtemp.FieldByName('CWHL').Asstring;
        DongExcel:=16;
        for i := 0 to Qtemp.RecordCount+2 do
        begin
          eclApp.ActiveSheet.Rows[DongExcel].Insert(-4121);
          inc(DongExcel);
          Qtemp.Next;
        end;
        DelDet.First;
        Qtemp.First;
        h:=0;
        f:=0;
        k:=1;
        while  not  DelDet.Eof   do
        begin
          while  not  Qtemp.Eof   do
          begin
            if DelDet.FieldByName('SBBH').Value=Qtemp.FieldByName('SBBH').Value then
            begin
              eclApp.Cells(16+f,2):=Qtemp.FieldByName('VWPM').AsString;
              eclApp.Cells[16+f,2].WrapText := True;
              eclApp.Cells(16+f,3):=Qtemp.FieldByName('DWBH').AsString;
              eclApp.Cells(16+f,4):=Qtemp.FieldByName('Qty').AsString;
              eclApp.Cells(16+f,5):=Qtemp.FieldByName('Qty').AsString;
              eclApp.Cells(16+f,6):=Qtemp.FieldByName('USPrice').AsString;
              eclApp.Cells(16+f,7):=Qtemp.FieldByName('VNPrice').AsString;
              if Qtemp.FieldByName('VNTax_HG').Value>0 then
              begin
                eclApp.Cells(16+f,8):=Qtemp.FieldByName('VNPrice_HG').AsString;
                eclApp.Cells(16+f,9):=Qtemp.FieldByName('VNTax_HG').AsString;
              end;
              eclApp.Cells(16+f,10):=Qtemp.FieldByName('USACC').AsString;
              eclApp.Cells(16+f,11):=Qtemp.FieldByName('VNACC').AsString;
              eclApp.Cells(16+f+1,2):='';
              eclApp.Cells(16+f+2,2):='MSTS: '+Qtemp.FieldByName('TSBH').AsString;
              eclApp.Cells(16+h,1):=inttostr(k);
              eclApp.Range[eclApp.Cells[16+h,1],eclApp.Cells[16+f+2,1]].merge;
              Qtemp.Next;
              inc(f);
              //inc(j);
            end else
            begin
              inc(k);
              eclApp.Cells(16+f,4):=DelDet.FieldByName('Qty').AsString;
              eclApp.Cells(16+f,5):=DelDet.FieldByName('Qty').AsString;
              eclApp.Cells(16+f,6):='=SUM(F16..F'+inttostr(16+f-1)+')';
              eclApp.Cells(16+f,7):='=SUM(G16..G'+inttostr(16+f-1)+')';
              eclApp.Cells(16+f,8):='=SUM(H16..H'+inttostr(16+f-1)+')';
              eclApp.Cells(16+f,9):='=SUM(I16..I'+inttostr(16+f-1)+')';
              eclApp.Cells(16+f,10):='=SUM(J16..J'+inttostr(16+f-1)+')';
              eclApp.Cells(16+f,11):='=SUM(K16..K'+inttostr(16+f-1)+')';
              f:=f+2;
              h:=f;
              DelDet.Next;
            end;
          end;
          inc(k);
          DelDet.Next;
        end;
        eclApp.Cells(16+f,4):=DelDet.FieldByName('Qty').AsString;
        eclApp.Cells(16+f,5):=DelDet.FieldByName('Qty').AsString;
        eclApp.Cells(16+f,6):='=SUM(F'+inttostr(16+h)+'..F'+inttostr(16+f-1)+')';
        eclApp.Cells(16+f,7):='=SUM(G'+inttostr(16+h)+'..G'+inttostr(16+f-1)+')';
        eclApp.Cells(16+f,8):='=SUM(H'+inttostr(16+h)+'..H'+inttostr(16+f-1)+')';
        eclApp.Cells(16+f,9):='=SUM(I'+inttostr(16+h)+'..I'+inttostr(16+f-1)+')';
        eclApp.Cells(16+f,10):='=SUM(J'+inttostr(16+h)+'..J'+inttostr(16+f-1)+')';
        eclApp.Cells(16+f,11):='=SUM(K'+inttostr(16+h)+'..K'+inttostr(16+f-1)+')';
        //
        eclApp.Cells(16+f+2,9):= query1.FieldByName('AllVNTax_HG').Value;
        eclApp.Cells(16+f+2,10):= query1.FieldByName('AllUSACC').Value;
        eclApp.Cells(16+f+2,11):= query1.FieldByName('AllVNACC').Value;
        eclApp.Cells(16+f+3,8):= query1.FieldByName('Total').Value;
        eclApp.Cells(16+f+4,3):=EquipmentAccountConfirm.RMBFloatToVietnam(query1.FieldByName('Total').Value);
        eclApp.Cells(16+f+5,3):=EquipmentAccountConfirm.RMBFloatToChinese(query1.FieldByName('Total').Value);
        //

        showmessage('Succeed.');
        eclApp.Visible:=True;
      except
       on   F:Exception   do
       begin
         eclApp.quit;
         showmessage(F.Message);
       end;
      end;
   end;
end;

procedure TEquipmentAccountConfirm.ExportFormatExcel();
function GetExcelColumnID(i:integer):string;
  var str:string;
  begin
    case i of
      1:str:='A';  2:str:='B';  3:str:='C';
      4:str:='D';  5:str:='E';  6:str:='F';
      7:str:='G';  8:str:='H';  9:str:='I';
      10:str:='J';  11:str:='K';  12:str:='L';
      13:str:='M';  14:str:='N';  15:str:='O';
      16:str:='P';  17:str:='Q';  18:str:='R';
      19:str:='S';  20:str:='T';  21:str:='U';
      22:str:='V';  23:str:='W';  24:str:='X';
      25:str:='Y';  26:str:='Z';  27:str:='AA';
      28:str:='AB';  29:str:='AC';  30:str:='AD';
      31:str:='AE';  32:str:='AF';  33:str:='AG';
      34:str:='AH';  35:str:='AI';  36:str:='AJ';
    end;
    result:=str;
  end;
var eclApp,WorkBook:olevariant;
    i,DongExcel,k,h,f,Posi:integer;
    Str:String;
begin
   if(not DirectoryExists(AppDir+'Additional\'))  then ForceDirectories(AppDir+'Additional\');
   CopyFile(Pchar('\\'+main.ServerIP+'\liy_erp\Additional\Asset_SN31_TSCDLK.xls'),Pchar(AppDir+'Additional\Asset_SN31_TSCDLK.xlsx'),false);
   if FileExists(AppDir+'Additional\Asset_SN31_TSCDLK.xlsx') then
   begin
      try
        eclApp:=CreateOleObject('Excel.Application');
        WorkBook:=CreateOleObject('Excel.Sheet');
      except
        Application.MessageBox('No Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
        Exit;
      end;
      //
      try
        eclApp.WorkBooks.Open(AppDir+'Additional\Asset_SN31_TSCDLK.xlsx');
        with Qtemp do
        begin
          Active:=false;
          SQL.Clear;
          SQL.Add('  select SBBH,SBBH1,VWPM,DWBH,Qty,isnull(VNprice,0) as VNprice,isnull(VNACC,0) as VNACC,isnull(USprice,0) as USPrice,isnull(USACC,0) as USACC,CWHL,isnull(VNTax_HG,0) as VNTax_HG,isnull(VNPrice_HG,0) as VNPrice_HG,TSBH ');
          SQL.Add('  from( ');
          SQL.Add('  select TSCD_KCRKS.RKNO,TSCD_KCRKS.SBBH,TSCD_KCRKS.SBBH as SBBH1,case when isnull(TSCD_SB.HGPM,'''')<>'''' then TSCD_SB.HGPM else TSCD_SB.VWPM end as VWPM,TSCD_SB.DWBH ');
          SQL.Add('  ,TSCD_KCRKS.Qty,TSCD_KCRKS.VNprice,TSCD_KCRKS.VNACC,TSCD_KCRKS.USprice,TSCD_KCRKS.USACC,max(TSCD_KCRKS.CWHL) as CWHL,TSCD_KCRKS.VNTax_HG,TSCD_KCRKS.VNPrice_HG ');
          SQL.Add('  ,case when TSCD_KCRKS.Memo is not null then TSCD_KCRKS.Memo else ');
          SQL.Add('  CAST(substring((select '','' + TSCD.TSBH from TSCD where  TSCD.RKNO=TSCD_KCRKS.RKNO and TSCD.SBBH=TSCD_KCRKS.SBBH ');
          SQL.Add('     and TSCD_KCRKS.RKNO = '''+DelMas.FieldByName('RKNO').AsString+''' for XML path ('''')),2,1000) as varchar(1000)) end as TSBH ');
          SQL.Add('   from TSCD_KCRKS ');
          SQL.Add('   left join TSCD_SB on TSCD_SB.SBBH = TSCD_KCRKS.SBBH ');
          SQL.Add('   where  TSCD_KCRKS.RKNO='''+DelMas.FieldByName('RKNO').AsString+''' ');
          SQL.Add('   group by TSCD_KCRKS.RKNO,TSCD_KCRKS.SBBH,TSCD_SB.HGPM,TSCD_SB.VWPM,TSCD_SB.DWBH,TSCD_KCRKS.Qty,TSCD_KCRKS.VNprice,TSCD_KCRKS.VNACC,TSCD_KCRKS.USprice,TSCD_KCRKS.USACC ');
          SQL.Add('   ,TSCD_KCRKS.CWHL,TSCD_KCRKS.VNTax_HG,TSCD_KCRKS.VNPrice_HG,TSCD_KCRKS.Memo ');
          SQL.Add('   union all ');
          SQL.Add('   select TSCD_KCRKS.RKNO,TSCD_KCRKS.SBBH,TSCD_KCRKSS.SBBH1,case when isnull(TSCD_SB.HGPM,'''')<>'''' then ''Gan kem''+'' : ''+TSCD_SB.HGPM else ''Gan kem''+'' : ''+TSCD_SB.VWPM end as VWPM ');
          SQL.Add('   ,TSCD_SB.DWBH,TSCD_KCRKSS.Qty,TSCD_KCRKSS.VNprice,'''' as VNACC,TSCD_KCRKSS.USprice,'''' as USACC,max(TSCD_KCRKS.CWHL) as CWHL, '''' as VNTax_HG, '''' as VNPrice_HG ');
          SQL.Add('   ,case when TSCD_KCRKS.Memo is not null then TSCD_KCRKS.Memo else ');
          SQL.Add('   CAST(substring((select '','' + TSCD.TSBH from TSCD where TSCD.RKNO=TSCD_KCRKS.RKNO and TSCD.SBBH=TSCD_KCRKS.SBBH ');
          SQL.Add('     and TSCD_KCRKS.RKNO = '''+DelMas.FieldByName('RKNO').AsString+''' for XML path ('''')),2,1000) as varchar(1000)) end as TSBH ');
          SQL.Add('   from TSCD_KCRKS ');
          SQL.Add('   inner join TSCD_KCRKSS on TSCD_KCRKS.RKNO = TSCD_KCRKSS.RKNO and TSCD_KCRKS.SBBH = TSCD_KCRKSS.SBBH ');
          SQL.Add('   left join TSCD_SB on TSCD_SB.SBBH = TSCD_KCRKSS.SBBH1 ');
          SQL.Add('   where  TSCD_KCRKS.RKNO='''+DelMas.FieldByName('RKNO').AsString+''' ');
          SQL.Add('   group by TSCD_KCRKS.RKNO,TSCD_KCRKS.SBBH,TSCD_KCRKSS.SBBH1,TSCD_SB.HGPM,TSCD_SB.VWPM,TSCD_SB.DWBH,TSCD_KCRKSS.Qty,TSCD_KCRKSS.VNprice,TSCD_KCRKSS.USprice,TSCD_KCRKS.CWHL,TSCD_KCRKS.Memo) TSCD        ');
          SQL.Add('   group by SBBH,SBBH1,VWPM,DWBH,Qty,VNprice,VNACC,USprice,USACC,CWHL,VNTax_HG,VNPrice_HG,TSBH ');
          SQL.Add('   order by SBBH,SBBH1 desc ');
          //funcobj.WriteErrorLog(sql.Text);
          Active:=true;
        end;
        //
        with query1 do
        begin
          Active:=false;
          SQL.Clear;
          SQL.Add('  Select isnull(sum(USACC),0.0) as USACC,isnull(Sum(VNACC),0) as VNACC,isnull(Sum(VNTax_HG),0) as VNTax_HG ');
          SQL.Add('  ,isnull(Sum(VNACC),0)+isnull(Sum(VNTax_HG),0) as AllVNACC ');
          SQL.Add('  from TSCD_KCRKS ');
          SQL.Add('  where RKNO='''+DelMas.FieldByName('RKNO').AsString+''' ');
          //funcobj.WriteErrorLog(sql.Text);
          Active:=true;
        end;
        eclApp.WorkSheets[1].Activate;
        eclApp.Cells(5,1):=EquipmentAccountConfirm.GetVietDate(DelMas.FieldByName('UserDate').value);
        eclApp.Cells(6,1):=EquipmentAccountConfirm.GetChineseDate(DelMas.FieldByName('UserDate').value);
        eclApp.Cells(7,1):='  Tên nhà cung ứng :  '+DelMas.FieldByName('zsjc_yw').Asstring;
        eclApp.Cells(8,1):='  Số hóa đơn/Invoice 紙張: '+DelMas.FieldByName('DOCNO').Asstring;
        eclApp.Cells(9,1):='  Số hợp đồng 紙張:  '+DelMas.FieldByName('HDNO').Asstring;
        eclApp.Cells(10,1):='  Số tờ khai 紙張: '+DelMas.FieldByName('TOKHAI').Asstring;
        eclApp.Cells(2,11):=DelMas.FieldByName('RKNO').Asstring;
        if not DelMas.FieldByName('DOCDate').IsNull then
          eclApp.cells(8,5):= GetVietDate(DelMas.FieldByName('DOCDate').Value);
        if not DelMas.FieldByName('HDDate').IsNull then
          eclApp.cells(9,5):= GetVietDate(DelMas.FieldByName('HDDate').Value);
        if not DelMas.FieldByName('TKdate').IsNull then
          eclApp.cells(10,5):= GetVietDate(DelMas.FieldByName('TKdate').Value);
        eclApp.cells(12,6):=Qtemp.FieldByName('CWHL').Asstring;
        DongExcel:=16;
        for i := 0 to Qtemp.RecordCount+2 do
        begin
          eclApp.ActiveSheet.Rows[DongExcel].Insert(-4121);
          inc(DongExcel);
          Qtemp.Next;
        end;
        DelDet.First;
        Qtemp.First;
        h:=0;
        f:=0;
        k:=1;
        while  not  DelDet.Eof   do
        begin
          while  not  Qtemp.Eof   do
          begin
            if DelDet.FieldByName('SBBH').Value=Qtemp.FieldByName('SBBH').Value then
            begin
              eclApp.Cells(16+f,2):=Qtemp.FieldByName('VWPM').AsString;
              eclApp.Cells[16+f,2].WrapText := True;
              eclApp.Cells(16+f,3):=Qtemp.FieldByName('DWBH').AsString;
              eclApp.Cells(16+f,4):=Qtemp.FieldByName('Qty').AsString;
              eclApp.Cells(16+f,5):=Qtemp.FieldByName('Qty').AsString;
              eclApp.Cells(16+f,6):=Qtemp.FieldByName('USPrice').AsString;
              eclApp.Cells(16+f,7):=Qtemp.FieldByName('VNPrice').AsString;
              if Qtemp.FieldByName('VNTax_HG').Value>0 then
              begin
                eclApp.Cells(16+f,8):=Qtemp.FieldByName('VNPrice_HG').AsString;
                eclApp.Cells(16+f,9):=Qtemp.FieldByName('VNTax_HG').AsString;
              end;
              eclApp.Cells(16+f,10):=Qtemp.FieldByName('USACC').AsString;
              eclApp.Cells(16+f,11):=Qtemp.FieldByName('VNACC').AsString;
              eclApp.Cells(16+f+1,2):='';
              eclApp.Cells(16+f+2,2):='MSTS: '+Qtemp.FieldByName('TSBH').AsString;
              eclApp.Cells(16+h,1):=inttostr(k);
              eclApp.Range[eclApp.Cells[16+h,1],eclApp.Cells[16+f+2,1]].merge;
              Qtemp.Next;
              inc(f);
            end else
            begin
              inc(k);
              f:=f+2;
              h:=f;
              DelDet.Next;
            end;
          end;
          inc(k);
          DelDet.Next;
        end;
        //
        eclApp.Cells(16+f+2,9):= query1.FieldByName('VNTax_HG').Value;
        eclApp.Cells(16+f+2,10):= query1.FieldByName('USACC').Value;
        eclApp.Cells(16+f+2,11):= query1.FieldByName('VNACC').Value;
        eclApp.Cells(16+f+3,3):=EquipmentAccountConfirm.RMBFloatToVietnam(query1.FieldByName('AllVNACC').Value);
        eclApp.Cells(16+f+4,3):=EquipmentAccountConfirm.RMBFloatToChinese(query1.FieldByName('AllVNACC').Value);
        //
        eclApp.WorkSheets[2].Activate;
        eclApp.Cells(5,1):=EquipmentAccountConfirm.GetVietDate(DelMas.FieldByName('UserDate').value);
        eclApp.Cells(6,1):=EquipmentAccountConfirm.GetChineseDate(DelMas.FieldByName('UserDate').value);
        eclApp.Cells(7,1):='  Tên nhà cung ứng :  '+DelMas.FieldByName('zsjc_yw').Asstring;
        eclApp.Cells(8,1):='  Số hóa đơn/Invoice 紙張: '+DelMas.FieldByName('DOCNO').Asstring;
        eclApp.Cells(9,1):='  Số hợp đồng 紙張:  '+DelMas.FieldByName('HDNO').Asstring;
        eclApp.Cells(10,1):='  Số tờ khai 紙張: '+DelMas.FieldByName('TOKHAI').Asstring;
        eclApp.Cells(2,9):=DelMas.FieldByName('RKNO').Asstring;
        if not DelMas.FieldByName('DOCDate').IsNull then
          eclApp.cells(8,5):= GetVietDate(DelMas.FieldByName('DOCDate').Value);
        if not DelMas.FieldByName('HDDate').IsNull then
          eclApp.cells(9,5):= GetVietDate(DelMas.FieldByName('HDDate').Value);
        if not DelMas.FieldByName('TKdate').IsNull then
          eclApp.cells(10,5):= GetVietDate(DelMas.FieldByName('TKdate').Value);
        eclApp.cells(12,6):=Qtemp.FieldByName('CWHL').Asstring;
        DongExcel:=16;
        for i := 0 to Qtemp.RecordCount+2 do
        begin
          eclApp.ActiveSheet.Rows[DongExcel].Insert(-4121);
          inc(DongExcel);
          Qtemp.Next;
        end;
        DelDet.First;
        Qtemp.First;
        h:=0;
        f:=0;
        k:=1;
        while  not  DelDet.Eof   do
        begin
          while  not  Qtemp.Eof   do
          begin
            if DelDet.FieldByName('SBBH').Value=Qtemp.FieldByName('SBBH').Value then
            begin
              eclApp.Cells(16+f,2):=Qtemp.FieldByName('VWPM').AsString;
              eclApp.Cells[16+f,2].WrapText := True;
              eclApp.Cells(16+f,3):=Qtemp.FieldByName('DWBH').AsString;
              eclApp.Cells(16+f,4):=Qtemp.FieldByName('Qty').AsString;
              eclApp.Cells(16+f,5):=Qtemp.FieldByName('Qty').AsString;
              eclApp.Cells(16+f,6):=Qtemp.FieldByName('USPrice').AsString;
              eclApp.Cells(16+f,7):=Qtemp.FieldByName('VNPrice').AsString;
              eclApp.Cells(16+f,8):=Qtemp.FieldByName('USACC').AsString;
              eclApp.Cells(16+f,9):=Qtemp.FieldByName('VNACC').AsString;
              eclApp.Cells(16+f+1,2):='';
              eclApp.Cells(16+f+2,2):='MSTS: '+Qtemp.FieldByName('TSBH').AsString;
              eclApp.Cells(16+h,1):=inttostr(k);
              eclApp.Range[eclApp.Cells[16+h,1],eclApp.Cells[16+f+2,1]].merge;
              Qtemp.Next;
              inc(f);
            end else
            begin
              inc(k);
              f:=f+2;
              h:=f;
              DelDet.Next;
            end;
          end;
          inc(k);
          DelDet.Next;
        end;
        //
        eclApp.Cells(16+f+2,8):= query1.FieldByName('USACC').Value;
        eclApp.Cells(16+f+2,9):= query1.FieldByName('VNACC').Value;
        eclApp.Cells(16+f+3,3):=EquipmentAccountConfirm.RMBFloatToVietnam(query1.FieldByName('AllVNACC').Value);
        eclApp.Cells(16+f+4,3):=EquipmentAccountConfirm.RMBFloatToChinese(query1.FieldByName('AllVNACC').Value);
        showmessage('Succeed.');
        eclApp.Visible:=True;
      except
       on   F:Exception   do
       begin
         eclApp.quit;
         showmessage(F.Message);
       end;
      end;
   end;

end;

procedure TEquipmentAccountConfirm.btnConfirmClick(Sender: TObject);
var i:integer;
begin
  //
  if DelMas.FieldByName('YN').AsString='5' then
  begin
    Showmessage('Account already confirm. Can not modify');
    Exit;
  end;

  with  DelDet do
  begin
    First;
    while Not Eof do
    begin
      if  ((not fieldbyname('USPrice').isnull) and (fieldbyname('CWHL').isnull)) then
      begin
          showmessage('CWHL can not be empty.');
          abort;
      end;
      if  ((not fieldbyname('USPrice').isnull) and (fieldbyname('CWHL_HG').isnull)) then
      begin
          showmessage('CWHL_HG can not be empty.');
          abort;
      end;
      DelDet.Next;
    end;
  end;
  //
  try
    DelDet.First;
    if DelDet.RecordCount >0 then
    begin
      while not DelDet.Eof do
      begin
        with DelDet do
        begin
          Edit;
          //
          if not DelDet.FieldByName('USACC').IsNull then
          begin
             DelDet.Edit;
             DelDet.FieldByName('VNACC').value:=formatfloat('#,##0',DelDet.FieldByName('USACC').value*DelDet.FieldByName('CWHL').value);
             DelDet.FieldByName('VNPrice').value:=formatfloat('#,##0',DelDet.FieldByName('USPrice').value*DelDet.FieldByName('CWHL').value);
          end;
          //
          if not DelDet.FieldByName('USACC').IsNull then
          begin
             DelDet.Edit;
             DelDet.FieldByName('VNACC_HG').value:=formatfloat('#,##0',DelDet.FieldByName('USACC').value*DelDet.FieldByName('CWHL_HG').value);
             DelDet.FieldByName('VNPrice_HG').value:=formatfloat('#,##0',DelDet.FieldByName('USPrice').value*DelDet.FieldByName('CWHL_HG').value);
          end else
          begin
             DelDet.Edit;
             DelDet.FieldByName('CWHL_HG').value:=null;
             DelDet.FieldByName('VNACC_HG').value:=null;//DelDet.FieldByName('VNACC').value;
             DelDet.FieldByName('VNPrice_HG').value:=null;//DelDet.FieldByName('VNPrice').value;
          end;
          //
          if ((not FieldByName('VNACC_HG').IsNull) and (not DelDet.FieldByName('VNTax_HG').IsNull)) then
            DelDet.FieldByName('VNACC_Tax').value:=DelDet.FieldByName('VNACC_HG').value+DelDet.FieldByName('VNTax_HG').value;
          UPdet.apply(ukmodify);
        end;
        DelDet.Next;
      end;
      DelDet.active:=false;
      DelDet.active:=true;
      //
      if messagedlg('Confirm or not ?',mtinformation,[mbYes,mbNo],0)=mrYes then
      begin
          DelDet.First;
          while not DelDet.Eof do
          begin
            with TSCD do
            begin
              active:=false;
              sql.Clear;
              sql.add('Update TSCD Set ');
              sql.add('YN=5 ');
              SQL.Add('where RKNO='''+DelDet.fieldbyname('RKNO').AsString+''' and SBBH='''+DelDet.fieldbyname('SBBH').AsString+''' and LB=1 ');
              execsql;
            end;
            DelDet.Next;
          end;
          //
          with DelMas do
          begin
            edit;
            //fieldbyname('YN').Value:='5';
            UPMas.Apply(ukmodify);
            active:=false;
            active:=true;
          end;
          showmessage('Succeed.');
      end;
    end else
      showmessage('Pls insert the Equipment Detail first.');
  except
    showmessage('Have wrong.');
  end;
end;

procedure TEquipmentAccountConfirm.DBGrid2ColExit(Sender: TObject);
begin
  if DelDet.Active then
  begin
    if DBGrid2.Selectedindex=13 then
    begin
      if not DelDet.FieldByName('CWHL_HG').IsNull then
      begin
        if not DelDet.FieldByName('USACC').IsNull then
        begin
           DelDet.Edit;
           DelDet.FieldByName('VNACC_HG').value:=formatfloat('#,##0',DelDet.FieldByName('USACC').value*DelDet.FieldByName('CWHL_HG').value);
           DelDet.FieldByName('VNPrice_HG').value:=formatfloat('#,##0',DelDet.FieldByName('USPrice').value*DelDet.FieldByName('CWHL_HG').value);
        end else
        begin
           DelDet.Edit;
           DelDet.FieldByName('CWHL_HG').value:=null;
           DelDet.FieldByName('VNACC_HG').value:=null;//DelDet.FieldByName('VNACC').value;
           DelDet.FieldByName('VNPrice_HG').value:=null;;//DelDet.FieldByName('VNPrice').value;
        end;
      end;
    end;
  end;

end;

procedure TEquipmentAccountConfirm.DBGrid2EditButtonClick(Sender: TObject);
  function CheckIsNum(S:String):Boolean;
  var i:integer;
  begin
    if(length(S)>0) then
    begin
      Result:=True;
      for i:=1 to length(s) do
      begin
        if (s[i] in ['A'..'Z'] + ['a'..'z'])  then
        begin
          Result:=False;
          break;
        end
      end;
    end else
      result:=false;
  end;
var TaxRate:String;
begin
 if DBGrid2.SelectedField.FieldName='VNACC_HG' then TaxRate:=inputbox('Please tax rate %','Tax rate:','1');
 if TaxRate<>'' then
 begin

   if CheckIsNum(TaxRate)=true then
   begin
     if  DelDet.FieldByName('VNACC_HG').IsNull=false then
     begin
       DelDet.Edit;
       DelDet.FieldByName('VNTax_HG').value:=formatfloat('#,##0',DelDet.FieldByName('VNACC_HG').value*strtofloat(TaxRate)/100);
       DelDet.Post;
     end;
   end;
 end;
end;

end.
