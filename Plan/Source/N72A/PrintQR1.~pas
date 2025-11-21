unit PrintQR1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBTables, DB, Menus, GridsEh, DBGridEh, StdCtrls, ExtCtrls,comobj,ShellAPI;

type
  TPrintQR = class(TForm)
    Panel3: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    DBGridEh1: TDBGridEh;
    Qtemp: TQuery;
    DS1: TDataSource;
    SMDD: TQuery;
    Query: TButton;
    Depname: TButton;
    DepNo: TQuery;
    DepNoID: TStringField;
    DepNoGSBH: TStringField;
    DepNoDepName: TStringField;
    DepNoDepMemo: TStringField;
    DepNoGXLB: TStringField;
    Edit3: TEdit;
    Add: TButton;
    Print: TButton;
    DBGridEh2: TDBGridEh;
    CutDispatchSSS: TQuery;
    DS2: TDataSource;
    SMDDDDBH: TStringField;
    SMDDGXLB: TStringField;
    SMDDYSBH: TStringField;
    SMDDGSBH: TStringField;
    SMDDArticle: TStringField;
    SMDDXieMing: TStringField;
    SMDDQty: TIntegerField;
    SMDDSCCX: TStringField;
    SMDDSB: TStringField;
    SMDDSCYEAR: TStringField;
    SMDDSCMONTH: TStringField;
    SMDDDepNO: TStringField;
    SMDDPlanDate: TDateTimeField;
    SMDDUSERDate: TDateTimeField;
    SMDDUSERID: TStringField;
    SMDDYN: TStringField;
    SMDDPlanEdate: TDateTimeField;
    SMDDPRdate: TDateTimeField;
    SMDDOKdate: TDateTimeField;
    SMDDRDepNO: TStringField;
    SMDDRPlanDate: TDateTimeField;
    SMDDRPlanEdate: TDateTimeField;
    SMDDROrder: TIntegerField;
    SMDDXH: TIntegerField;
    SMDDKFJC: TStringField;
    CutDispatchSSSDDBH: TStringField;
    CutDispatchSSSSIZE: TStringField;
    CutDispatchSSSQty: TIntegerField;
    CutDispatchSSSDepID: TStringField;
    CutDispatchSSSScanInQty: TIntegerField;
    CutDispatchSSSScanOutQty: TIntegerField;
    CutDispatchSSSUSERID: TStringField;
    CutDispatchSSSUSERDATE: TDateTimeField;
    CutDispatchSSSDepName: TStringField;
    OpenDialog: TOpenDialog;
    Label3: TLabel;
    Edit4: TEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure QueryClick(Sender: TObject);
    procedure DepnameClick(Sender: TObject);
    procedure AddClick(Sender: TObject);
    procedure DBGridEh1CellClick(Column: TColumnEh);
    procedure PrintClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    AppDir:string;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PrintQR: TPrintQR;

implementation
  uses QRScan_dep1, main1;
{$R *.dfm}

procedure TPrintQR.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 action:=cafree;
end;

procedure TPrintQR.FormDestroy(Sender: TObject);
begin
   PrintQR:=nil;
end;

procedure TPrintQR.QueryClick(Sender: TObject);
begin
    with SMDD do
    begin
      active:= false;
      sql.Clear;
      sql.add('select distinct SMDD.*,KFZL.KFJC');
      sql.add('from SMDD');
      sql.add('left join DDZL on DDZl.ZLBH=SMDD.YSBH');
      sql.add('left join KFZL on KFZL.KFDH=DDZL.KHBH');
      sql.add('where SMDD.ddbh like  ''%' + Edit1.Text + '%''');
      sql.Add('and SMDD.GXLB=''C''');
      sql.add('order by SMDD.DDBH,SMDD.SCCX ');
      active:=true;
    end;
end;

procedure TPrintQR.DepnameClick(Sender: TObject);
begin
  QRScan_Dep:=TQRScan_Dep.Create(self);
  QRScan_Dep.ShowModal();
  QRScan_Dep.Free;
end;

procedure TPrintQR.AddClick(Sender: TObject);
begin
{if main.Edit1.Text<>CutDispatchSSS.FieldByName('USERID').Value then
  begin
    showmessage('khong phai ban khong duoc thay doi');
    exit;
  end; }
if (edit3.text='') or (edit1.text='') then
   begin
      showmessage('Vui long chon don hang hoac don vi!');
      exit;
   end else
   begin
    with Qtemp do
    begin
      active:= false;
      sql.Clear;
      sql.Add('delete CutDispatchSSS where ddbh like  ''%' + Edit1.Text + '%'' and DepID=''' + Edit3.Text + '''');
      sql.add('insert into CutDispatchSSS');
      sql.add('select DDBH,XXCC,CTS, ''' + Edit3.Text + ''',0,0,''' + main.Edit1.Text + ''',GETDATE() ');
      sql.add('  from smddss where ddbh like  ''%' + Edit1.Text + '%''');
      sql.Add('and GXLB=''C''');
      Qtemp.ExecSQL;
    end;
   end;
end;

procedure TPrintQR.DBGridEh1CellClick(Column: TColumnEh);
begin
//var SelectedValue := DBGridEh1.DataSource.DataSet.FieldByName('DDBH').AsString;

  // C?p nh?t truy v?n d? li?u c?a Grid2 d?a trên giá tr? dã ch?n
  CutDispatchSSS.Close;
  CutDispatchSSS.SQL.Text := 'SELECT CutDispatchSSS.*, BDepartment.DepName FROM CutDispatchSSS left join BDepartment on BDepartment.ID=CutDispatchSSS.DepID WHERE DDBH = ''' + DBGridEh1.DataSource.DataSet.FieldByName('DDBH').AsString+ ''' and BDepartment.ID=''' + Edit3.Text + '''';
  CutDispatchSSS.Open;

end;

procedure TPrintQR.PrintClick(Sender: TObject);
var   a:string;
      eclApp,WorkBook:olevariant;
 //     xlsFileName:string;
      qty, divisor, fullRows, remainder,i,j:integer;
 begin
  if  CutDispatchSSS.active  then
    begin
    try
      eclApp:=CreateOleObject('Excel.Application');
      WorkBook:=CreateOleObject('Excel.Sheet');
    except
      Application.MessageBox('No Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
      Exit;
    end;
      try
        WorkBook := eclApp.Workbooks.Add;
        eclApp.Cells[1, 1] := 'QRCode'; // Ð?m b?o c?t b?t d?u t? 1
        eclApp.Cells[1, 2] := CutDispatchSSS.Fields[0].FieldName;
        eclApp.Cells[1, 3] := CutDispatchSSS.Fields[1].FieldName;
        eclApp.Cells[1, 4] := CutDispatchSSS.Fields[2].FieldName;
        CutDispatchSSS.First;
        j := 2;
 ///////////////////////////////////////////////////////////////////
      while not CutDispatchSSS.Eof do
begin
    // L?y giá tr? t? b?ng d? li?u
    qty := CutDispatchSSS.Fields[2].AsInteger; // Giá tr? Qty
    divisor := StrToInt(Edit4.Text); // Giá tr? chia t? Edit4

    // Ki?m tra tránh l?i chia cho 0
    if divisor <= 0 then
    begin
        ShowMessage('Giá tr? chia ph?i l?n hon 0!');
        Exit;
    end;

    fullRows := qty div divisor; // S? dòng d?y d?
    remainder := qty mod divisor; // Ph?n du

    // Xu?t 5 dòng v?i s? lu?ng b?ng divisor
    for i := 0 to fullRows - 1 do
    begin
        eclApp.Cells[j, 1] := VarToStr(CutDispatchSSS.Fields[0].Value) + ';' +
                      VarToStr(CutDispatchSSS.Fields[1].Value) + ';' +
                      VarToStr(CutDispatchSSS.Fields[3].Value) + ';' +
                      IntToStr(divisor);
        eclApp.Cells[j, 2] := VarToStr(CutDispatchSSS.Fields[0].Value);
        eclApp.Cells[j, 3].NumberFormat := '@';
        eclApp.Cells[j, 3] := '''' + VarToStr(CutDispatchSSS.Fields[1].Value);

        eclApp.Cells[j, 4] := IntToStr(divisor); // S? lu?ng m?i dòng
        Inc(j);
    end;

    // N?u có ph?n du, xu?t dòng cu?i cùng v?i s? du
    if remainder > 0 then
    begin
        eclApp.Cells[j, 1] := VarToStr(CutDispatchSSS.Fields[0].Value) + ';' +
                      VarToStr(CutDispatchSSS.Fields[1].Value) + ';' +
                      VarToStr(CutDispatchSSS.Fields[3].Value) + ';' +
                      IntToStr(remainder);
        eclApp.Cells[j, 2] := VarToStr(CutDispatchSSS.Fields[0].Value);
        eclApp.Cells[j, 3].NumberFormat := '@';
        eclApp.Cells[j, 3] := '''' + VarToStr(CutDispatchSSS.Fields[1].Value);
        eclApp.Cells[j, 4] := IntToStr(remainder); // S? lu?ng du
        Inc(j);
    end;

    // Chuy?n d?n dòng ti?p theo trong dataset
    CutDispatchSSS.Next;
end;
/////////////////////////////////////////////////////////////////

        eclApp.Columns.AutoFit;
        ShowMessage('Succeed');
        eclApp.Visible := True;

      except
        on F: Exception do
        ShowMessage('Error: ' + F.Message);
      end;
      if FileExists(AppDir+'PrintQR.xls')=true then DeleteFile(AppDir+'PrintQR.xls');
          eclApp.ActiveWorkbook.SaveAs(AppDir+'PrintQR.xls',-4143 );
          eclApp.quit;
      if fileexists(extractfilepath(application.ExeName)+'PrintQR.btw') then
          begin
             ShellExecute(Handle,'open',PChar(ExtractFilePath(Application.ExeName)+'PrintQR.btw'),nil,pchar(ExtractFilePath(Application.ExeName)),SW_SHOW);
          end else
          begin
            showmessage('Pls setup the program PrintQR.btw first. Abort');
          end;
    end;
end;

procedure TPrintQR.FormCreate(Sender: TObject);
begin
AppDir:=ExtractFilePath(Application.ExeName);
end;

end.
