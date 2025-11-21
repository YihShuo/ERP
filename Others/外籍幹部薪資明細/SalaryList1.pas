unit SalaryList1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.Grids, ComObj, IdMessage, IdBaseComponent, IdComponent, IdTCPConnection,
  IdTCPClient, IdExplicitTLSClientServerBase, IdMessageClient, IdSMTPBase,
  IdSMTP, IdAttachmentFile, Vcl.Menus, ExcelXP, RegularExpressions,
  Vcl.ComCtrls, iniFiles, IdIOHandler, IdIOHandlerSocket, IdIOHandlerStack,
  IdSSL, IdSSLOpenSSL;

type
  TSalaryList = class(TForm)
    SGVN: TStringGrid;
    OpenDialog1: TOpenDialog;
    Panel1: TPanel;
    B_ImportVN: TBitBtn;
    B_MailVN: TBitBtn;
    IdSMTP1: TIdSMTP;
    IdMessage1: TIdMessage;
    Panel2: TPanel;
    MainMenu1: TMainMenu;
    Setting: TMenuItem;
    MailServer: TMenuItem;
    Panel3: TPanel;
    Label1: TLabel;
    ED_VNTitle: TEdit;
    ED_VNRateT1: TEdit;
    ED_VNRateV1: TEdit;
    ED_VNRateT2: TEdit;
    ED_VNRateV2: TEdit;
    PageControl1: TPageControl;
    TabVN: TTabSheet;
    TabTW: TTabSheet;
    Panel4: TPanel;
    B_ImportTW: TBitBtn;
    B_MailTW: TBitBtn;
    Panel5: TPanel;
    Label2: TLabel;
    ED_TWTitle: TEdit;
    ED_TWRateT1: TEdit;
    ED_TWRateV1: TEdit;
    ED_TWRateT2: TEdit;
    ED_TWRateV2: TEdit;
    SGTW: TStringGrid;
    Version: TMenuItem;
    TW: TMenuItem;
    VN: TMenuItem;
    MM: TMenuItem;
    TabMM: TTabSheet;
    Panel6: TPanel;
    B_ImportMM: TBitBtn;
    B_MailMM: TBitBtn;
    SGMM: TStringGrid;
    Panel7: TPanel;
    Label3: TLabel;
    ED_MMRateT1: TEdit;
    ED_MMRateV1: TEdit;
    ED_MMRateT2: TEdit;
    ED_MMRateV2: TEdit;
    MMDTP: TDateTimePicker;
    Label4: TLabel;
    IdSSLIOHandlerSocketOpenSSL1: TIdSSLIOHandlerSocketOpenSSL;
    procedure FormCreate(Sender: TObject);
    procedure B_ImportVNClick(Sender: TObject);
    procedure B_MailVNClick(Sender: TObject);
    procedure MailServerClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SGVNDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure SGVNMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure TWClick(Sender: TObject);
    procedure VNClick(Sender: TObject);
    procedure SGTWDrawCell(Sender: TObject; ACol, ARow: Integer; Rect: TRect;
      State: TGridDrawState);
    procedure SGTWMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure B_ImportTWClick(Sender: TObject);
    procedure B_MailTWClick(Sender: TObject);
    procedure MMClick(Sender: TObject);
    procedure B_ImportMMClick(Sender: TObject);
    procedure SGMMDrawCell(Sender: TObject; ACol, ARow: Integer; Rect: TRect;
      State: TGridDrawState);
    procedure B_MailMMClick(Sender: TObject);
  private
    { Private declarations }
    fcheck, fnocheck: TBitmap;
    procedure SendMail(SendTo, FilePath: string; Title: string);
    procedure AutoSizeGridColumn(Grid: TStringGrid; column, min, max: Integer);
    function IsMatch(const Input, Pattern: string): boolean;
  public
    { Public declarations }
    function IsValidEmailRegEx(const EmailAddress: string): boolean;
  end;

var
  SalaryList: TSalaryList;
const
  TitleTW: array[1..48, 0..3] of string = (
    ('6',  '英文姓名', 'Họ & Tên', ''),
    ('7',  '中文姓名', 'Họ & Tên', ''),
    ('8',  '工號', 'Số thẻ', ''),
    ('10', '幣別', 'Đơn vị tính USD', ''),
    ('11', '基本薪資', 'Lương cơ bản ', 'A'),
    ('12', '車馬費補助', 'Hỗ trợ đi lại ', 'B'),
    ('13', '電話費補助', 'Hỗ trợ điện thoại ', 'C'),
    ('14', '安家補助', 'Hỗ trợ chăm sóc gia đình ', 'D'),
    ('15', '其他補助', 'Phụ cấp khác ', 'E'),
    ('16', '合同薪資', 'Lương HĐ', 'F=A+B+C+D+E'),
    ('17', '工作日', 'Công TT', 'G'),
    ('18', '月薪', 'Lương tháng', 'H=F/當月正常工作天*G'),
    ('19', '社保,醫保之投保薪資(VNĐ)(最高投保薪資2980萬)', 'Lương đóng bảo hiểm', 'I=A+E'),
    ('21', '隔離假薪資(USD)', '', 'J'),
    ('22', '生產獎金(VNĐ)', 'Tiền vượt sản lượng', ''),
    ('23', '生產獎金(USD)', '', 'K'),
    ('24', '總收入(USD)', 'Cộng lương', 'L=H+J+K'),
    ('26', '社保保費(VNĐ)', 'Trừ Tiền BHXH ', 'M1=I*8%'),
    ('27', '社保保費(USD)', 'Trừ Tiền BHXH ', 'M=M1/匯率'),
    ('28', '醫保保費(VNĐ)', 'Trừ Tiền BHYT', 'N1=I*1.5%'),
    ('29', '醫保保費(USD)', 'Trừ Tiền BHYT', 'N=N1/匯率'),
    ('30', '個人免稅額(VND)', 'Bản thân', 'O'),
    ('31', '扶養親屬人數', 'Số người phụ thuộc', 'P'),
    ('32', '扶養親屬扣除額(VNĐ)', 'Mức giảm trừ', 'Q=P*440萬'),
    ('33', '總共(VNĐ)', 'Tổng cộng', 'R=M1+N1+O+Q'),
    ('34', '課稅收入(VNĐ)', 'Thu nhập tính thuế', 'S=(L*匯率)-R'),
    ('35', '500萬以下:5%', '', 'T1'),
    ('36', '500萬以上~1000萬以下:10%', '', 'T2'),
    ('37', '1000萬以上~1800萬以下:15%', '', 'T3'),
    ('38', '1800萬以上~3200萬以下:20%', '', 'T4'),
    ('39', '3200萬以上~5200萬以下:25%', '', 'T5'),
    ('40', '5200萬以上~8000萬以下:30%', '', 'T6'),
    ('41', '8000萬以上:35%', '', 'T7'),
    ('42', '課稅金額(VNĐ)', 'Trừ thuế TNCN', 'T=T1+T2+T3+T4+T5+T6+T7'),
    ('43', '年度應補稅金(VNĐ)', 'Thuế còn phải thu năm ', 'U'),
    ('44', '課稅總金額(USD)', 'Trừ thuế TNCN', 'V=(T+U)/匯率'),
    ('45', '實領薪資(USD)', 'Lương thực nhận', 'W=L-M-N-V'),
    ('46', '領現金額(USD)', 'Lãnh lương tiền mặt', 'X'),
    ('48', '匯款金額(USD)', 'Chuyển khoản', 'Y=W-X'),
    ('49', '備註', 'Ghi chú', ''),
    ('50', '交通補助(USD)', '', 'a'),
    ('51', '獎金(USD)', '', 'b'),
    ('52', '匯差(USD)', '', 'c'),
    ('53', '其他(USD)', '', 'd'),
    ('54', '總計(USD)', '', 'e=a+b+c+d'),
    ('55', '備註', '', ''),
    ('56', 'E-Mail', '', ''),
    ('57', '身分證字號', 'Số CMND ', '')
  );

  TitleVN: array[1..42, 0..3] of string = (
    ('6',  '英文姓名', 'Họ & Tên', ''),
    ('7',  '中文姓名', 'Họ & Tên', ''),
    ('8',  '工號', 'Số thẻ', ''),
    ('10', '幣別', 'Đơn vị tính USD', ''),
    ('11', '基本薪資', 'Lương cơ bản ', 'A'),
    ('12', '車馬費補助', 'Hỗ trợ đi lại ', 'B'),
    ('13', '電話費補助', 'Hỗ trợ điện thoại ', 'C'),
    ('14', '安家補助', 'Hỗ trợ chăm sóc gia đình ', 'D'),
    ('15', '其他補助', 'Phụ cấp khác ', 'E'),
    ('16', '合同薪資', 'Lương HĐ', 'F=A+B+C+D+E'),
    ('17', '工作日', 'Công TT', 'G'),
    ('18', '月薪', 'Lương tháng', 'H=F/當月正常工作天*G'),
    ('19', '社保,醫保之投保薪資(VNĐ)(最高投保薪資4680萬)', 'Lương đóng bảo hiểm', 'I=A+E'),
    ('21', '隔離假薪資(USD)', '', 'J'),
    ('22', '生產獎金(VNĐ)', 'Tiền vượt sản lượng', ''),
    ('23', '生產獎金(USD)', '', 'K'),
    ('24', '總收入(USD)', 'Cộng lương', 'L=H+J+K'),
    ('26', '社保保費(VNĐ)', 'Trừ Tiền BHXH ', 'M1=I*8%'),
    ('27', '社保保費(USD)', 'Trừ Tiền BHXH ', 'M=M1/匯率'),
    ('28', '醫保保費(VNĐ)', 'Trừ Tiền BHYT', 'N1=I*1.5%'),
    ('29', '醫保保費(USD)', 'Trừ Tiền BHYT', 'N=N1/匯率'),
    ('30', '個人免稅額(VND)', 'Bản thân', 'O'),
    ('31', '扶養親屬人數', 'Số người phụ thuộc', 'P'),
    ('32', '扶養親屬扣除額(VNĐ)', 'Mức giảm trừ', 'Q=P*440萬'),
    ('33', '總共(VNĐ)', 'Tổng cộng', 'R=M1+N1+O+Q'),
    ('34', '課稅收入(VNĐ)', 'Thu nhập tính thuế', 'S=(L*匯率)-R'),
    ('35', '500萬以下:5%', '', 'T1'),
    ('36', '500萬以上~1000萬以下:10%', '', 'T2'),
    ('37', '1000萬以上~1800萬以下:15%', '', 'T3'),
    ('38', '1800萬以上~3200萬以下:20%', '', 'T4'),
    ('39', '3200萬以上~5200萬以下:25%', '', 'T5'),
    ('40', '5200萬以上~8000萬以下:30%', '', 'T6'),
    ('41', '8000萬以上:35%', '', 'T7'),
    ('42', '課稅金額(VNĐ)', 'Trừ thuế TNCN', 'T=T1+T2+T3+T4+T5+T6+T7'),
    ('43', '年度應補稅金(VNĐ)', 'Thuế còn phải thu năm ', 'U'),
    ('44', '課稅總金額(USD)', 'Trừ thuế TNCN', 'V=(T+U)/匯率'),
    ('45', '實領薪資(USD)', 'Lương thực nhận', 'W=L-M-N-V'),
    ('46', '領現金額(USD)', 'Lãnh lương tiền mặt', 'X'),
    ('48', '匯款金額(USD)', 'Chuyển khoản', 'Y=W-X'),
    ('49', '備註', 'Ghi chú', ''),
    ('50', 'E-Mail', '', ''),
    ('51', '身分證字號', 'Số CMND ', '')
  );

  TitleMM: array[1..25, 0..3] of string = (
    ('2',  '國籍', 'Country', ''),
    ('3',  '廠別', 'Fty', ''),
    ('4',  '單位', 'Dpt', ''),
    ('5', '職務', 'Position', ''),
    ('6', '英文姓名', 'EN Name', ''),
    ('7', '中文姓名', 'Chinese Name', ''),
    ('8', '工號', 'ID NO', ''),
    ('9', '入職日期', '', ''),
    ('10', '發放日期', '', ''),
    ('11', '工作天數', '', ''),
    ('12', '合同薪資(應稅)', '', 'A'),
    ('13', '自付所得稅', '', 'B'),
    ('14', '稅後加項', '', 'C=E+F+G'),
    ('15', '稅後減項', '', 'D=H+I+J+K'),
    ('16', '交通補助', '稅後加項', 'E'),
    ('17', '年終獎金', '稅後加項', 'F'),
    ('18', '其他加項', '稅後加項', 'G'),
    ('19', '自付社保費', '稅後減項', 'H'),
    ('20', '銀行開戶費用', '稅後減項', 'I'),
    ('21', '銀行手續費', '稅後減項', 'J'),
    ('22', '其他扣除額', '稅後減項', 'K'),
    ('23', '實領薪資', '', 'L=A-B+C-D'),
    ('24', '備註', '', ''),
    ('25', 'E-mail', '', ''),
    ('26', '身分證字號', '', '')
  );

  implementation

uses
  MailServerSetting1;

{$R *.dfm}

function TSalaryList.IsMatch(const Input, Pattern: string): boolean;
begin
  Result := TRegEx.IsMatch(Input, Pattern);
end;

function TSalaryList.IsValidEmailRegEx(const EmailAddress: string): boolean;
const
  EMAIL_REGEX = '^((?>[a-zA-Z\d!#$%&''*+\-/=?^_`{|}~]+\x20*|"((?=[\x01-\x7f])'
             +'[^"\\]|\\[\x01-\x7f])*"\x20*)*(?<angle><))?((?!\.)'
             +'(?>\.?[a-zA-Z\d!#$%&''*+\-/=?^_`{|}~]+)+|"((?=[\x01-\x7f])'
             +'[^"\\]|\\[\x01-\x7f])*")@(((?!-)[a-zA-Z\d\-]+(?<!-)\.)+[a-zA-Z]'
             +'{2,}|\[(((?(?<!\[)\.)(25[0-5]|2[0-4]\d|[01]?\d?\d))'
             +'{4}|[a-zA-Z\d\-]*[a-zA-Z\d]:((?=[\x01-\x7f])[^\\\[\]]|\\'
             +'[\x01-\x7f])+)\])(?(angle)>)$';
begin
  Result := IsMatch(EmailAddress, EMAIL_REGEX);
end;

procedure TSalaryList.AutoSizeGridColumn(Grid: TStringGrid; column, min, max: Integer);
var
  i: Integer;
  temp: Integer;
  tempmax: Integer;
begin
  tempmax := 0;
  for i := 0 to (Grid.RowCount - 1) do
  begin
    temp := Grid.Canvas.TextWidth(Grid.cells[column, i]);
    if temp > tempmax then tempmax := temp;
    if tempmax > max then
    begin
      tempmax := max;
      break;
    end;
  end;
  if tempmax < min then tempmax := min;
  Grid.ColWidths[column] := tempmax + Grid.GridLineWidth + 18;
end;

procedure TSalaryList.B_ImportMMClick(Sender: TObject);
var
  ExcelApp, WorkSheet: OleVariant;
  Row, Col, Col2, TempInt: integer;
begin
  if (OpenDialog1.Execute) then
  begin
    try
      ExcelApp := CreateOleObject('Excel.Application');
      ExcelApp.workbooks.Open(OpenDialog1.FileName);
      //eclApp.WorkSheets[1].Activate;
      WorkSheet := ExcelApp.WorkSheets[1];
    except
      Application.MessageBox('NO Microsoft Excel', 'Microsoft Excel', MB_OK + MB_ICONWarning);
      Exit;
    end;

    try
      SGMM.RowCount := 5;
      Row := 7;
      while (WorkSheet.Cells[Row, StrToInt(TitleMM[24][0])].Text <> '') do
      begin
        Col2 := 1;
        for Col := Low(TitleMM) to High(TitleMM) do
        begin
          SGMM.Cells[Col2, Row-3] := WorkSheet.Cells[Row, StrToInt(TitleMM[Col][0])];
          Inc(Col2);
        end;
        SGMM.RowCount := SGMM.RowCount + 1;
        SGMM.Row := SGMM.Row + 1;
        Inc(Row);
      end;
      SGMM.Row := 5;
      SGMM.RowCount := SGMM.RowCount - 1;

      ExcelApp.WorkBooks.Close;
      ExcelApp.Quit;
      if (SGMM.Cells[1, 2] <> '') AND (SGMM.RowCount >= 3) then
        B_MailMM.Enabled := true
      else
        B_MailMM.Enabled := false;

      Application.MessageBox('Complete', 'Message', MB_OK);
    except
      Application.MessageBox('Wrong format', 'Error', MB_OK + MB_ICONWarning);
    end;
  end;
end;

procedure TSalaryList.B_ImportTWClick(Sender: TObject);
var
  ExcelApp, WorkSheet: OleVariant;
  Row, Col, Col2, TempInt: integer;
begin
  if (OpenDialog1.Execute) then
  begin
    try
      ExcelApp := CreateOleObject('Excel.Application');
      ExcelApp.workbooks.Open(OpenDialog1.FileName);
      //eclApp.WorkSheets[1].Activate;
      WorkSheet := ExcelApp.WorkSheets[1];
      ED_TWTitle.Text := Copy(WorkSheet.Cells[5, 1].Text, 1, 9) + '薪資條';
      ED_TWRateT1.Text := WorkSheet.Cells[9, 44].Text;
      ED_TWRateV1.Text := WorkSheet.Cells[9, 45].Text;
      ED_TWRateT2.Text := WorkSheet.Cells[10, 44].Text;
      ED_TWRateV2.Text := WorkSheet.Cells[10, 45].Text;
    except
      Application.MessageBox('NO Microsoft Excel', 'Microsoft Excel', MB_OK + MB_ICONWarning);
      Exit;
    end;

    try
      SGTW.RowCount := 5;
      Row := 15;
      while (WorkSheet.Cells[Row, StrToInt(TitleTW[47][0])].Text <> '') do
      begin
        Col2 := 1;
        for Col := Low(TitleTW) to High(TitleTW) do
        begin
          SGTW.Cells[Col2, Row-11] := WorkSheet.Cells[Row, StrToInt(TitleTW[Col][0])];
          Inc(Col2);
        end;
        SGTW.RowCount := SGTW.RowCount + 1;
        SGTW.Row := SGTW.Row + 1;
        Inc(Row);
      end;
      SGTW.Row := 5;
      SGTW.RowCount := SGTW.RowCount - 1;

      ExcelApp.WorkBooks.Close;
      ExcelApp.Quit;
      if (SGTW.Cells[1, 2] <> '') AND (SGTW.RowCount >= 3) then
        B_MailTW.Enabled := true
      else
        B_MailTW.Enabled := false;

      Application.MessageBox('Hoàn thành', 'Message', MB_OK);
    except
      Application.MessageBox('Nhập lỗi định dạng', 'Error', MB_OK + MB_ICONWarning);
    end;
  end;
end;

procedure TSalaryList.B_ImportVNClick(Sender: TObject);
var
  ExcelApp, WorkSheet: OleVariant;
  Row, Col, Col2, TempInt: integer;
begin
  if (OpenDialog1.Execute) then
  begin
    try
      ExcelApp := CreateOleObject('Excel.Application');
      ExcelApp.workbooks.Open(OpenDialog1.FileName);
      //eclApp.WorkSheets[1].Activate;
      WorkSheet := ExcelApp.WorkSheets[1];
      ED_VNTitle.Text := Copy(WorkSheet.Cells[5, 1].Text, 1, 9) + '薪資條';
      ED_VNRateT1.Text := WorkSheet.Cells[9, 44].Text;
      ED_VNRateV1.Text := WorkSheet.Cells[9, 45].Text;
      ED_VNRateT2.Text := WorkSheet.Cells[10, 44].Text;
      ED_VNRateV2.Text := WorkSheet.Cells[10, 45].Text;
    except
      Application.MessageBox('NO Microsoft Excel', 'Microsoft Excel', MB_OK + MB_ICONWarning);
      Exit;
    end;

    try
      SGVN.RowCount := 5;
      Row := 15;
      while (WorkSheet.Cells[Row, StrToInt(TitleVN[41][0])].Text <> '') do
      begin
        Col2 := 1;
        for Col := Low(TitleVN) to High(TitleVN) do
        begin
          SGVN.Cells[Col2, Row-11] := WorkSheet.Cells[Row, StrToInt(TitleVN[Col][0])];
          Inc(Col2);
        end;
        SGVN.RowCount := SGVN.RowCount + 1;
        SGVN.Row := SGVN.Row + 1;
        Inc(Row);
      end;
      SGVN.Row := 5;
      SGVN.RowCount := SGVN.RowCount - 1;

      ExcelApp.WorkBooks.Close;
      ExcelApp.Quit;
      if (SGVN.Cells[1, 2] <> '') AND (SGVN.RowCount >= 3) then
        B_MailVN.Enabled := true
      else
        B_MailVN.Enabled := false;

      Application.MessageBox('Hoàn thành', 'Message', MB_OK);
    except
      Application.MessageBox('Nhập lỗi định dạng', 'Error', MB_OK + MB_ICONWarning);
    end;
  end;
end;

procedure TSalaryList.B_MailMMClick(Sender: TObject);
var
  ExcelApp, WorkBook, WorkSheet: OleVariant;
  Row, Col: integer;
  FilePath: string;
begin
  try
    IdSMTP1.Connect;
    IdSMTP1.Authenticate;
  except on E:Exception do
    begin
      IdSMTP1.Disconnect(false);
      MessageDlg(E.Message, mtWarning, [mbOK], 0);
      Exit;
    end;
  end;
  IdSMTP1.Disconnect(false);

  Panel2.Left := (Self.ClientWidth - Panel2.Width) DIV 2;
  Panel2.Top := (Self.ClientHeight - Panel2.Height) DIV 2;
  Panel2.Caption := 'Importing ...';
  Panel2.Visible := true;

  for Row := 4 to SGMM.RowCount-1 do
  begin
    Panel2.Caption := '(' + IntToStr(Row-3) + '/' + IntToStr(SGMM.RowCount-4) + ') Sending to [ ' + SGMM.Cells[24, Row] + ' ] ...';
    try
      ExcelApp := CreateOleObject('Excel.Application');
      WorkBook := ExcelApp.Workbooks.Add;
    except
      Application.MessageBox('Please install Microsoft Excel in your computer first.', 'Microsoft Excel', MB_OK + MB_ICONWARNING);
      Exit;
    end;

    try
      //緬甸廠如跑下面程式碼會跳錯誤，先註解掉
      //WorkSheet := ExcelApp.WorkSheets.Add;
      //WorkSheet.Name := SGMM.Cells[1, Row];

      ExcelApp.Range[ExcelApp.Cells[1, 15], ExcelApp.Cells[1, 17]].Merge;
      ExcelApp.Range[ExcelApp.Cells[1, 15], ExcelApp.Cells[1, 17]].HorizontalAlignment := -4108;
      ExcelApp.Cells[1, 15] := '稅後加項';
      ExcelApp.Range[ExcelApp.Cells[1, 18], ExcelApp.Cells[1, 21]].Merge;
      ExcelApp.Range[ExcelApp.Cells[1, 18], ExcelApp.Cells[1, 21]].HorizontalAlignment := -4108;
      ExcelApp.Cells[1, 18] := '稅後減項';
      for Col := 1 to SGMM.ColCount-3 do
      begin
        if (Col IN [15, 16, 17, 18, 19, 20, 21]) then
        begin
          ExcelApp.Cells[2, Col] := TitleMM[Col][1];
        end
        else begin
          ExcelApp.Range[ExcelApp.Cells[1, Col], ExcelApp.Cells[2, Col]].Merge;
          ExcelApp.Cells[1, Col] := TitleMM[Col][1];
        end;
        ExcelApp.Cells[3, Col] := TitleMM[Col][3];
        ExcelApp.Cells[3, Col].Font.Color := clRed;
        ExcelApp.Cells[4, Col] := SGMM.Cells[Col, Row];
      end;
      ExcelApp.Range[ExcelApp.Cells[1, 1], ExcelApp.Cells[3, SGMM.ColCount-3]].Interior.Color := RGB(146, 208, 80);
      ExcelApp.Range[ExcelApp.Cells[1, 1], ExcelApp.Cells[4, SGMM.ColCount-3]].Font.Name := 'Arial';
      ExcelApp.Range[ExcelApp.Cells[1, 1], ExcelApp.Cells[4, SGMM.ColCount-3]].Borders[1].Weight := 2;
      ExcelApp.Range[ExcelApp.Cells[1, 1], ExcelApp.Cells[4, SGMM.ColCount-3]].Borders[1].LineStyle := xlContinuous;
      ExcelApp.Range[ExcelApp.Cells[1, 1], ExcelApp.Cells[4, SGMM.ColCount-3]].Borders[2].Weight := 2;
      ExcelApp.Range[ExcelApp.Cells[1, 1], ExcelApp.Cells[4, SGMM.ColCount-3]].Borders[2].LineStyle := xlContinuous;
      ExcelApp.Range[ExcelApp.Cells[1, 1], ExcelApp.Cells[4, SGMM.ColCount-3]].Borders[3].Weight := 2;
      ExcelApp.Range[ExcelApp.Cells[1, 1], ExcelApp.Cells[4, SGMM.ColCount-3]].Borders[3].LineStyle := xlContinuous;
      ExcelApp.Range[ExcelApp.Cells[1, 1], ExcelApp.Cells[4, SGMM.ColCount-3]].Borders[4].Weight := 2;
      ExcelApp.Range[ExcelApp.Cells[1, 1], ExcelApp.Cells[4, SGMM.ColCount-3]].Borders[4].LineStyle := xlContinuous;

      {for Col := 25 downto 5 do
      begin
        if SGTW.Cells[Col, 0] <> '1' then
          ExcelApp.Columns[Col].Delete;
      end;}

      ExcelApp.Columns.Autofit;
      if FileExists(ExtractFilePath(Application.Exename) + FormatDateTime('yyyy.MM', MMDTP.Date) + '薪資單.xlsx') then
        DeleteFile(ExtractFilePath(Application.Exename) + FormatDateTime('yyyy.MM', MMDTP.Date) + '薪資單.xlsx');

      WorkBook.Password := SGMM.Cells[25, Row];
      WorkBook.SaveAs(ExtractFilePath(Application.Exename) + FormatDateTime('yyyy.MM', MMDTP.Date) + '薪資單.xlsx');
      WorkBook.Close;
      ExcelApp.Quit;

      if IsValidEmailRegEx(SGMM.Cells[24, Row]) then
        SendMail(SGMM.Cells[24, Row], ExtractFilePath(Application.Exename) + FormatDateTime('yyyy.MM', MMDTP.Date) + '薪資單.xlsx', FormatDateTime('yyyy/MM', MMDTP.Date) + '薪資單')
      else
        ShowMessage(SGMM.Cells[24, Row] + ' is not a valid e-mail format, cancel sending email.');
      if FileExists(ExtractFilePath(Application.Exename) + FormatDateTime('yyyy.MM', MMDTP.Date) + '薪資單.xlsx') then
        DeleteFile(ExtractFilePath(Application.Exename) + FormatDateTime('yyyy.MM', MMDTP.Date) + '薪資單.xlsx');
    finally
      ExcelApp := Unassigned;
      WorkBook := Unassigned;
      WorkSheet := Unassigned;
    end;
  end;
  Panel2.Visible := false;
  Application.MessageBox('Sending complete', 'Message', MB_OK);
end;

procedure TSalaryList.B_MailTWClick(Sender: TObject);
var
  ExcelApp, WorkBook, WorkSheet: OleVariant;
  Row, Col: integer;
  FilePath: string;
begin
  try
    IdSMTP1.Connect;
    IdSMTP1.Authenticate;
  except on E:Exception do
    begin
      IdSMTP1.Disconnect(false);
      MessageDlg('Xác thực tài khoản email không thành công: ' + #13#10 + E.Message, mtWarning, [mbOK], 0);
      Exit;
    end;
  end;
  IdSMTP1.Disconnect(false);

  Panel2.Left := (Self.ClientWidth - Panel2.Width) DIV 2;
  Panel2.Top := (Self.ClientHeight - Panel2.Height) DIV 2;
  Panel2.Caption := 'Đang tải dữ liệu ...';
  Panel2.Visible := true;

  for Row := 4 to SGTW.RowCount-1 do
  begin
    Panel2.Caption := '(' + IntToStr(Row-3) + '/' + IntToStr(SGTW.RowCount-4) + ') Gửi thư tới [ ' + SGTW.Cells[47, Row] + ' ] ...';
    try
      ExcelApp := CreateOleObject('Excel.Application');
      WorkBook := ExcelApp.Workbooks.Add;
    except
      Application.MessageBox('Please install Microsoft Excel in your computer first.', 'Microsoft Excel', MB_OK + MB_ICONWARNING);
      Exit;
    end;

    try
      WorkSheet := ExcelApp.WorkSheets.Add;
      WorkSheet.Name := SGTW.Cells[1, Row];
      ExcelApp.Cells[1, 38] := ED_TWRateT1.Text;
      ExcelApp.Cells[1, 38].HorizontalAlignment := -4152;
      ExcelApp.Cells[1, 39] := ED_TWRateV1.Text;
      ExcelApp.Cells[2, 38] := ED_TWRateT2.Text;
      ExcelApp.Cells[2, 38].HorizontalAlignment := -4152;
      ExcelApp.Cells[2, 39] := ED_TWRateV2.Text;

      ExcelApp.Range[ExcelApp.Cells[3, 22], ExcelApp.Cells[3, 25]].Merge;
      ExcelApp.Range[ExcelApp.Cells[3, 22], ExcelApp.Cells[3, 25]].HorizontalAlignment := -4108;
      ExcelApp.Cells[3, 22] := '各項扣除額(VNĐ)';
      ExcelApp.Range[ExcelApp.Cells[3, 27], ExcelApp.Cells[3, 33]].Merge;
      ExcelApp.Range[ExcelApp.Cells[3, 27], ExcelApp.Cells[3, 33]].HorizontalAlignment := -4108;
      ExcelApp.Cells[3, 27] := '課稅級距及計算表(VNĐ)';
      ExcelApp.Range[ExcelApp.Cells[3, 41], ExcelApp.Cells[3, 46]].Merge;
      ExcelApp.Range[ExcelApp.Cells[3, 41], ExcelApp.Cells[3, 46]].HorizontalAlignment := -4108;
      ExcelApp.Cells[3, 41] := '由台灣匯個人國內帳號';
      for Col := 1 to SGTW.ColCount-3 do
      begin
        if (Col IN [22, 23, 24, 25]) then
        begin
          ExcelApp.Cells[4, Col] := TitleTW[Col][1];
        end
        else if (Col IN [27, 28, 29, 30, 31, 32, 33]) then
        begin
          ExcelApp.Cells[4, Col] := TitleTW[Col][1];
        end
        else if (Col IN [41, 42, 43, 44, 45, 46]) then
        begin
          ExcelApp.Cells[4, Col] := TitleTW[Col][1];
        end
        else begin
          ExcelApp.Range[ExcelApp.Cells[3, Col], ExcelApp.Cells[4, Col]].Merge;
          ExcelApp.Cells[3, Col] := TitleTW[Col][1];
        end;
        ExcelApp.Cells[5, Col] := TitleTW[Col][3];
        ExcelApp.Cells[5, Col].Font.Color := clRed;
        if (Col > 4) AND (Col < SGTW.ColCount-3) then
          ExcelApp.Cells[6, Col].NumberFormatLocal := '_(* #,##0_);_(* (#,##0);_(* "-"??_);_(@_)';
        ExcelApp.Cells[6, Col] := SGTW.Cells[Col, Row];
      end;

      ExcelApp.Range[ExcelApp.Cells[3, 1], ExcelApp.Cells[5, SGTW.ColCount-3]].Interior.Color := RGB(146, 208, 80);
      ExcelApp.Range[ExcelApp.Cells[1, 1], ExcelApp.Cells[6, SGTW.ColCount-3]].Font.Name := 'Arial';
      ExcelApp.Range[ExcelApp.Cells[3, 1], ExcelApp.Cells[6, SGTW.ColCount-3]].Borders[1].Weight := 2;
      ExcelApp.Range[ExcelApp.Cells[3, 1], ExcelApp.Cells[6, SGTW.ColCount-3]].Borders[1].LineStyle := xlContinuous;
      ExcelApp.Range[ExcelApp.Cells[3, 1], ExcelApp.Cells[6, SGTW.ColCount-3]].Borders[2].Weight := 2;
      ExcelApp.Range[ExcelApp.Cells[3, 1], ExcelApp.Cells[6, SGTW.ColCount-3]].Borders[2].LineStyle := xlContinuous;
      ExcelApp.Range[ExcelApp.Cells[3, 1], ExcelApp.Cells[6, SGTW.ColCount-3]].Borders[3].Weight := 2;
      ExcelApp.Range[ExcelApp.Cells[3, 1], ExcelApp.Cells[6, SGTW.ColCount-3]].Borders[3].LineStyle := xlContinuous;
      ExcelApp.Range[ExcelApp.Cells[3, 1], ExcelApp.Cells[6, SGTW.ColCount-3]].Borders[4].Weight := 2;
      ExcelApp.Range[ExcelApp.Cells[3, 1], ExcelApp.Cells[6, SGTW.ColCount-3]].Borders[4].LineStyle := xlContinuous;

      for Col := 46 downto 5 do
      begin
        if SGTW.Cells[Col, 0] <> '1' then
          ExcelApp.Columns[Col].Delete;
      end;

      ExcelApp.Columns.Autofit;
      if FileExists(ExtractFilePath(Application.Exename) + ED_TWTitle.Text + '.xlsx') then
        DeleteFile(ExtractFilePath(Application.Exename) + ED_TWTitle.Text + '.xlsx');

      WorkBook.Password := SGTW.Cells[48, Row];
      WorkBook.SaveAs(ExtractFilePath(Application.Exename) + ED_TWTitle.Text + '.xlsx');
      WorkBook.Close;
      ExcelApp.Quit;

      if IsValidEmailRegEx(SGTW.Cells[47, Row]) then
        SendMail(SGTW.Cells[47, Row], ExtractFilePath(Application.Exename) + ED_TWTitle.Text + '.xlsx', ED_TWTitle.Text)
      else
        ShowMessage(SGTW.Cells[47, Row] + ' là một định dạng hộp thư bất thường, thư đã bị hủy');
      if FileExists(ExtractFilePath(Application.Exename) + ED_TWTitle.Text + '.xlsx') then
        DeleteFile(ExtractFilePath(Application.Exename) + ED_TWTitle.Text + '.xlsx');
    finally
      ExcelApp := Unassigned;
      WorkBook := Unassigned;
      WorkSheet := Unassigned;
    end;
  end;
  Panel2.Visible := false;
  Application.MessageBox('Đã gửi thư hoàn thành', 'Message', MB_OK);
end;

procedure TSalaryList.B_MailVNClick(Sender: TObject);
var
  ExcelApp, WorkBook, WorkSheet: OleVariant;
  Row, Col: integer;
  FilePath: string;
begin
  try
    IdSMTP1.Connect;
    IdSMTP1.Authenticate;
  except on E:Exception do
    begin
      IdSMTP1.Disconnect(false);
      MessageDlg('Xác thực tài khoản email không thành công: ' + #13#10 + E.Message, mtWarning, [mbOK], 0);
      Exit;
    end;
  end;
  IdSMTP1.Disconnect(false);

  Panel2.Left := (Self.ClientWidth - Panel2.Width) DIV 2;
  Panel2.Top := (Self.ClientHeight - Panel2.Height) DIV 2;
  Panel2.Caption := 'Đang tải dữ liệu ...';
  Panel2.Visible := true;

  for Row := 4 to SGVN.RowCount-1 do
  begin
    Panel2.Caption := '(' + IntToStr(Row-3) + '/' + IntToStr(SGVN.RowCount-4) + ') Gửi thư tới [ ' + SGVN.Cells[41, Row] + ' ] ...';
    try
      ExcelApp := CreateOleObject('Excel.Application');
      WorkBook := ExcelApp.Workbooks.Add;
    except
      Application.MessageBox('Please install Microsoft Excel in your computer first.', 'Microsoft Excel', MB_OK + MB_ICONWARNING);
      Exit;
    end;

    try
      WorkSheet := ExcelApp.WorkSheets.Add;
      WorkSheet.Name := SGVN.Cells[1, Row];
      ExcelApp.Cells[1, 38] := ED_VNRateT1.Text;
      ExcelApp.Cells[1, 38].HorizontalAlignment := -4152;
      ExcelApp.Cells[1, 39] := ED_VNRateV1.Text;
      ExcelApp.Cells[2, 38] := ED_VNRateT2.Text;
      ExcelApp.Cells[2, 38].HorizontalAlignment := -4152;
      ExcelApp.Cells[2, 39] := ED_VNRateV2.Text;

      ExcelApp.Range[ExcelApp.Cells[3, 22], ExcelApp.Cells[3, 25]].Merge;
      ExcelApp.Range[ExcelApp.Cells[3, 22], ExcelApp.Cells[3, 25]].HorizontalAlignment := -4108;
      ExcelApp.Cells[3, 22] := '各項扣除額(VNĐ)';
      ExcelApp.Range[ExcelApp.Cells[3, 27], ExcelApp.Cells[3, 33]].Merge;
      ExcelApp.Range[ExcelApp.Cells[3, 27], ExcelApp.Cells[3, 33]].HorizontalAlignment := -4108;
      ExcelApp.Cells[3, 27] := '課稅級距及計算表(VNĐ)';
      for Col := 1 to SGVN.ColCount-3 do
      begin
        if (Col IN [22, 23, 24, 25]) then
        begin
          ExcelApp.Cells[4, Col] := TitleVN[Col][1];
        end
        else if (Col IN [27, 28, 29, 30, 31, 32, 33]) then
        begin
          ExcelApp.Cells[4, Col] := TitleVN[Col][1];
        end
        else begin
          ExcelApp.Range[ExcelApp.Cells[3, Col], ExcelApp.Cells[4, Col]].Merge;
          ExcelApp.Cells[3, Col] := TitleVN[Col][1];
        end;
        ExcelApp.Cells[5, Col] := TitleVN[Col][3];
        ExcelApp.Cells[5, Col].Font.Color := clRed;
        if (Col > 4) AND (Col < SGVN.ColCount-3) then
          ExcelApp.Cells[6, Col].NumberFormatLocal := '_(* #,##0_);_(* (#,##0);_(* "-"??_);_(@_)';
        ExcelApp.Cells[6, Col] := SGVN.Cells[Col, Row];
      end;

      ExcelApp.Range[ExcelApp.Cells[3, 1], ExcelApp.Cells[5, SGVN.ColCount-3]].Interior.Color := RGB(146, 208, 80);
      ExcelApp.Range[ExcelApp.Cells[1, 1], ExcelApp.Cells[6, SGVN.ColCount-3]].Font.Name := 'Arial';
      ExcelApp.Range[ExcelApp.Cells[3, 1], ExcelApp.Cells[6, SGVN.ColCount-3]].Borders[1].Weight := 2;
      ExcelApp.Range[ExcelApp.Cells[3, 1], ExcelApp.Cells[6, SGVN.ColCount-3]].Borders[1].LineStyle := xlContinuous;
      ExcelApp.Range[ExcelApp.Cells[3, 1], ExcelApp.Cells[6, SGVN.ColCount-3]].Borders[2].Weight := 2;
      ExcelApp.Range[ExcelApp.Cells[3, 1], ExcelApp.Cells[6, SGVN.ColCount-3]].Borders[2].LineStyle := xlContinuous;
      ExcelApp.Range[ExcelApp.Cells[3, 1], ExcelApp.Cells[6, SGVN.ColCount-3]].Borders[3].Weight := 2;
      ExcelApp.Range[ExcelApp.Cells[3, 1], ExcelApp.Cells[6, SGVN.ColCount-3]].Borders[3].LineStyle := xlContinuous;
      ExcelApp.Range[ExcelApp.Cells[3, 1], ExcelApp.Cells[6, SGVN.ColCount-3]].Borders[4].Weight := 2;
      ExcelApp.Range[ExcelApp.Cells[3, 1], ExcelApp.Cells[6, SGVN.ColCount-3]].Borders[4].LineStyle := xlContinuous;

      if SGVN.Cells[35, 0] <> '1' then
        ExcelApp.Columns[35].Delete;

      if SGVN.Cells[16, 0] <> '1' then
        ExcelApp.Columns[16].Delete;

      if SGVN.Cells[15, 0] <> '1' then
        ExcelApp.Columns[15].Delete;

      if SGVN.Cells[14, 0] <> '1' then
        ExcelApp.Columns[14].Delete;

      ExcelApp.Columns.Autofit;
      if FileExists(ExtractFilePath(Application.Exename) + ED_VNTitle.Text + '.xlsx') then
        DeleteFile(ExtractFilePath(Application.Exename) + ED_VNTitle.Text + '.xlsx');
      WorkBook.Password := SGVN.Cells[42, Row];
      WorkBook.SaveAs(ExtractFilePath(Application.Exename) + ED_VNTitle.Text + '.xlsx');
      WorkBook.Close;
      ExcelApp.Quit;

      if IsValidEmailRegEx(SGVN.Cells[41, Row]) then
        SendMail(SGVN.Cells[41, Row], ExtractFilePath(Application.Exename) + ED_VNTitle.Text + '.xlsx', ED_VNTitle.Text)
      else
        ShowMessage(SGVN.Cells[41, Row] + ' là một định dạng hộp thư bất thường, thư đã bị hủy');
      if FileExists(ExtractFilePath(Application.Exename) + ED_VNTitle.Text + '.xlsx') then
        DeleteFile(ExtractFilePath(Application.Exename) + ED_VNTitle.Text + '.xlsx');
    finally
      ExcelApp := Unassigned;
      WorkBook := Unassigned;
      WorkSheet := Unassigned;
    end;
  end;
  Panel2.Visible := false;
  Application.MessageBox('Đã gửi thư hoàn thành', 'Message', MB_OK);
end;

procedure TSalaryList.FormCreate(Sender: TObject);
var
  i: integer;
  bmp: TBitmap;
begin
  //載入TW分頁格式
  for i := 5 to 46 do
  begin
    SGTW.Cells[i, 0] := '1';
  end;
  for i := 1 to Length(TitleTW) do
  begin
    SGTW.Cells[i, 1] := TitleTW[i][2];
    SGTW.Cells[i, 2] := TitleTW[i][1];
    SGTW.Cells[i, 3] := TitleTW[i][3];
    AutoSizeGridColumn(SGTW, i, 0, 1000);
  end;

  //載入VN分頁格式
  SGVN.Cells[14, 0] := '0';
  SGVN.Cells[15, 0] := '0';
  SGVN.Cells[16, 0] := '0';
  SGVN.Cells[35, 0] := '0';
  for i := 1 to Length(TitleVN) do
  begin
    SGVN.Cells[i, 1] := TitleVN[i][2];
    SGVN.Cells[i, 2] := TitleVN[i][1];
    SGVN.Cells[i, 3] := TitleVN[i][3];
    AutoSizeGridColumn(SGVN, i, 0, 1000);
  end;

  //載入MM分頁格式
  for i := 1 to Length(TitleMM) do
  begin
    SGMM.Cells[i, 1] := TitleMM[i][2];
    SGMM.Cells[i, 2] := TitleMM[i][1];
    SGMM.Cells[i, 3] := TitleMM[i][3];
    AutoSizeGridColumn(SGMM, i, 0, 1000);
  end;

  FCheck := TBitmap.Create;
  FNoCheck := TBitmap.Create;
  bmp := TBitmap.create;
  try
    bmp.handle := LoadBitmap(0, PChar(OBM_CHECKBOXES));
    with FNoCheck do
    begin
      Width := bmp.Width div 4;
      Height := bmp.Height div 3;
      Canvas.CopyRect(Canvas.ClipRect, bmp.Canvas, Canvas.ClipRect);
    end;
    with FCheck do
    begin
      Width := bmp.Width div 4;
      Height := bmp.Height div 3;
      Canvas.CopyRect(Canvas.ClipRect, bmp.Canvas, Rect(Width, 0, 2 * Width, Height));
    end;
  finally
    bmp.Free
  end;
end;

procedure TSalaryList.FormShow(Sender: TObject);
var
  MyIni: TIniFile;
begin
  MyIni := TIniFile.Create(ExtractFilePath(Application.ExeName) + 'Config.ini');
  try
    if (FileExists(ExtractFilePath(Application.ExeName) + 'Config.ini') = false) then
    begin
      MyIni.WriteString('Settings', 'Host', '');
      MyIni.WriteString('Settings', 'UserName', '');
      MyIni.WriteString('Settings', 'Password', '');
      MyIni.WriteString('Settings', 'Name', '');
      MyIni.WriteString('Settings', 'CC', '');
      MyIni.WriteString('Settings', 'Version', 'VN');
      TabTW.TabVisible := false;
      TabMM.TabVisible := false;
      MessageDlg('Please make mail server settings first', mtWarning, [mbOK], 0);
      MailServerClick(Nil);
    end
    else if (MyIni.ReadString('Settings', 'Host', '') = '') OR (MyIni.ReadString('Settings', 'UserName', '') = '') OR (MyIni.ReadString('Settings', 'Password', '') = '') then
    begin
      TabTW.TabVisible := false;
      TabMM.TabVisible := false;
      MessageDlg('Please make mail server settings first', mtWarning, [mbOK], 0);
      MailServerClick(Nil);
    end
    else begin
      idSMTP1.Host := MyIni.ReadString('Settings', 'Host', '');
      idSMTP1.Username := MyIni.ReadString('Settings', 'UserName', '');
      idSMTP1.Password := MyIni.ReadString('Settings', 'Password', '');
      idMessage1.From.Address := MyIni.ReadString('Settings', 'UserName', '');
      idMessage1.From.Name := MyIni.ReadString('Settings', 'Name', '');
      idMessage1.BccList.Clear;
      if (MyIni.ReadString('Settings', 'CC', '') <> '') then
        idMessage1.BccList.Add.Text := MyIni.ReadString('Settings', 'CC', '');

      if (MyIni.ReadString('Settings', 'Version', 'VN') = 'TW') then
      begin
        TW.Checked := true;
        MM.Checked := false;
        VN.Checked := false;
        TabVN.TabVisible := false;
        TabMM.TabVisible := false;
        TabTW.TabVisible := true;
      end
      else if (MyIni.ReadString('Settings', 'Version', 'VN') = 'VN') then
      begin
        TW.Checked := false;
        MM.Checked := false;
        VN.Checked := true;
        TabTW.TabVisible := false;
        TabMM.TabVisible := false;
        TabVN.TabVisible := true;
      end
      else if (MyIni.ReadString('Settings', 'Version', 'VN') = 'MM') then
      begin
        TW.Checked := false;
        VN.Checked := false;
        MM.Checked := true;
        TabTW.TabVisible := false;
        TabVN.TabVisible := false;
        TabMM.TabVisible := true;
      end;
    end;
  finally
    MyIni.Free;
  end;
end;

procedure TSalaryList.MailServerClick(Sender: TObject);
begin
  if (MailServerSetting <> Nil) then
    MailServerSetting.Close;
  MailServerSetting := TMailServerSetting.Create(Self);
  MailServerSetting.Show;
end;

procedure TSalaryList.MMClick(Sender: TObject);
var
  MyIni: TIniFile;
begin
  MyIni := TIniFile.Create(ExtractFilePath(Application.ExeName) + 'Config.ini');
  try
    TW.Checked := false;
    VN.Checked := false;
    MM.Checked := true;
    TabTW.TabVisible := false;
    TabVN.TabVisible := false;
    TabMM.TabVisible := true;
    MyIni.WriteString('Settings', 'Version', 'MM');
  finally
    MyIni.Free;
  end;
end;

procedure TSalaryList.SendMail(SendTo, FilePath: string; Title: string);
var
  Host: string;
begin
  IdMessage1.Recipients.Clear;
  IdMessage1.Recipients.Add.Text := SendTo;
  IdMessage1.Subject := Title;
  IdMessage1.ClearBody;
  IdMessage1.Body.Add('附件為 [' + Title + '], 密碼為個人證件號碼。');
  TIdAttachmentFile.Create(IdMessage1.MessageParts, FilePath);
  IdMessage1.ContentType := 'multipart/mixed';
  IdMessage1.CharSet := 'UTF-8';

  try
    IdSMTP1.Connect;
    IdSMTP1.Authenticate;
  except on E:Exception do
    begin
      if (PageControl1.ActivePage = TabMM) then
        MessageDlg(E.Message, mtWarning, [mbOK], 0)
      else
        MessageDlg('Xác thực tài khoản email không thành công: ' + E.Message, mtWarning, [mbOK], 0);
      Exit;
    end;
  end;

  try
    IdSMTP1.Send(IdMessage1);
  except on E:Exception do
    begin
      if (PageControl1.ActivePage = TabMM) then
        MessageDlg(E.Message, mtWarning, [mbOK], 0)
      else
        MessageDlg('Khi gửi thư phát sinh lỗi: ' + E.Message, mtWarning, [mbOK], 0);
    end;
  end;

  IdSMTP1.Disconnect(false);
end;

procedure TSalaryList.SGMMDrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);
begin
  {if (ARow = 0) AND (ACol >= 5) AND (ACol <= 46) then
  begin
    with TStringGrid(Sender).Canvas do
    begin
      brush.Color := RGB(252, 213, 180);
      Rect.Left := Rect.Left - 3;
      FillRect(Rect);
      if SGMM.Cells[ACol, ARow] = '1' then
        Draw((Rect.Right + Rect.Left - FCheck.Width) div 2, (Rect.Bottom + Rect.Top - FCheck.Height) div 2, FCheck)
      else
        Draw((Rect.Right + Rect.Left - FCheck.Width) div 2, (Rect.Bottom + Rect.Top - FCheck.Height) div 2, FNoCheck);
    end;
  end}
  if (ARow = 3) then
  begin
    with TStringGrid(Sender).Canvas do
    begin
      Brush.Color := clCream;
      Font.Color := clRed;
      Rect.Left := Rect.Left - 3;
      FillRect(Rect);
      TextOut(Rect.Left+3, Rect.Top+4, SGMM.Cells[ACol, ARow]);
    end;
  end
  else if (ARow IN [1, 2]) OR (ACol = 0) then
  begin
    with TStringGrid(Sender).Canvas do
    begin
      Brush.Color := clCream;
      Rect.Left := Rect.Left - 3;
      FillRect(Rect);
      TextOut(Rect.Left+3, Rect.Top+4, SGMM.Cells[ACol, ARow]);
    end;
  end
  else if (ARow = 0) then
  begin
    with TStringGrid(Sender).Canvas do
    begin
      Brush.Color := clCream;
      Rect.Left := Rect.Left - 3;
      FillRect(Rect);
    end;
  end;
end;

procedure TSalaryList.SGTWDrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);
begin
  if (ARow = 0) AND (ACol >= 5) AND (ACol <= 46) then
  begin
    with TStringGrid(Sender).Canvas do
    begin
      brush.Color := RGB(252, 213, 180);
      Rect.Left := Rect.Left - 3;
      FillRect(Rect);
      if SGTW.Cells[ACol, ARow] = '1' then
        Draw((Rect.Right + Rect.Left - FCheck.Width) div 2, (Rect.Bottom + Rect.Top - FCheck.Height) div 2, FCheck)
      else
        Draw((Rect.Right + Rect.Left - FCheck.Width) div 2, (Rect.Bottom + Rect.Top - FCheck.Height) div 2, FNoCheck);
    end;
  end
  else if (ARow = 3) then
  begin
    with TStringGrid(Sender).Canvas do
    begin
      Brush.Color := clCream;
      Font.Color := clRed;
      Rect.Left := Rect.Left - 3;
      FillRect(Rect);
      TextOut(Rect.Left+3, Rect.Top+4, SGTW.Cells[ACol, ARow]);
    end;
  end
  else if (ARow IN [1, 2]) OR (ACol = 0) then
  begin
    with TStringGrid(Sender).Canvas do
    begin
      Brush.Color := clCream;
      Rect.Left := Rect.Left - 3;
      FillRect(Rect);
      TextOut(Rect.Left+3, Rect.Top+4, SGTW.Cells[ACol, ARow]);
    end;
  end
  else if (ARow = 0) then
  begin
    with TStringGrid(Sender).Canvas do
    begin
      Brush.Color := clCream;
      Rect.Left := Rect.Left - 3;
      FillRect(Rect);
    end;
  end;
end;

procedure TSalaryList.SGTWMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var
  ACol, ARow: Integer;
begin
  if (Button = mbLeft) then
  begin
    SGTW.MouseToCell(X, Y, ACol, ARow);
    if (ARow = 0) AND (ACol >= 5) AND (ACol <= 46) then
    begin
      if SGTW.Cells[ACol, ARow] = '1' then
        SGTW.Cells[ACol, ARow] := '0'
      else
        SGTW.Cells[ACol, ARow] := '1';
    end;
  end;
end;

procedure TSalaryList.SGVNDrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);
begin
  if (ARow = 0) AND (ACol IN [14, 15, 16, 35]) then
  begin
    with TStringGrid(Sender).Canvas do
    begin
      brush.Color := RGB(252, 213, 180);
      Rect.Left := Rect.Left - 3;
      FillRect(Rect);
      if SGVN.Cells[ACol, ARow] = '1' then
        Draw((Rect.Right + Rect.Left - FCheck.Width) div 2, (Rect.Bottom + Rect.Top - FCheck.Height) div 2, FCheck)
      else
        Draw((Rect.Right + Rect.Left - FCheck.Width) div 2, (Rect.Bottom + Rect.Top - FCheck.Height) div 2, FNoCheck);
    end;
  end
  else if (ARow = 3) then
  begin
    with TStringGrid(Sender).Canvas do
    begin
      Brush.Color := clCream;
      Rect.Left := Rect.Left - 3;
      Font.Color := clRed;
      FillRect(Rect);
      TextOut(Rect.Left+3, Rect.Top+4, SGVN.Cells[ACol, ARow]);
    end;
  end
  else if (ARow IN [1, 2]) OR (ACol = 0) then
  begin
    with TStringGrid(Sender).Canvas do
    begin
      Brush.Color := clCream;
      Rect.Left := Rect.Left - 3;
      FillRect(Rect);
      TextOut(Rect.Left+3, Rect.Top+4, SGVN.Cells[ACol, ARow]);
    end;
  end
  else if (ARow = 0) then
  begin
    with TStringGrid(Sender).Canvas do
    begin
      Brush.Color := clCream;
      Rect.Left := Rect.Left - 3;
      FillRect(Rect);
    end;
  end;
end;

procedure TSalaryList.SGVNMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var
  ACol, ARow: Integer;
begin
  if (Button = mbLeft) then
  begin
    SGVN.MouseToCell(X, Y, ACol, ARow);
    if (ARow = 0) AND (ACol IN [14, 15, 16, 35]) then
    begin
      if SGVN.Cells[ACol, ARow] = '1' then
        SGVN.Cells[ACol, ARow] := '0'
      else
        SGVN.Cells[ACol, ARow] := '1';
    end;
  end;
end;

procedure TSalaryList.TWClick(Sender: TObject);
var
  MyIni: TIniFile;
begin
  MyIni := TIniFile.Create(ExtractFilePath(Application.ExeName) + 'Config.ini');
  try
    TW.Checked := true;
    VN.Checked := false;
    MM.Checked := false;
    TabVN.TabVisible := false;
    TabMM.TabVisible := false;
    TabTW.TabVisible := true;
    MyIni.WriteString('Settings', 'Version', 'VN');
  finally
    MyIni.Free;
  end;
end;

procedure TSalaryList.VNClick(Sender: TObject);
var
  MyIni: TIniFile;
begin
  MyIni := TIniFile.Create(ExtractFilePath(Application.ExeName) + 'Config.ini');
  try
    TW.Checked := false;
    VN.Checked := true;
    MM.Checked := false;
    TabTW.TabVisible := false;
    TabMM.TabVisible := false;
    TabVN.TabVisible := true;
    MyIni.WriteString('Settings', 'Version', 'VN');
  finally
    MyIni.Free;
  end;
end;

end.
