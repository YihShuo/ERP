unit R_Factory_QC1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, CheckLst, DB, DBTables, colorbutton, Buttons,
  jpeg, Spin, strutils;


type
  TR_Factory_QC = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    ED_Barcode: TEdit;
    QUpdate: TQuery;
    TitleBox_Base: TScrollBox;
    MOLD: TLabel;
    SIZE: TLabel;
    Color: TLabel;
    QTY: TLabel;
    ScrollBox1: TScrollBox;
    DefectBox: TScrollBox;
    Query1: TQuery;
    ColorButton1: TColorButton;
    Label2: TLabel;
    LECH_KHUON: TComboBox;
    Label3: TLabel;
    RACH_NUT: TComboBox;
    Label4: TLabel;
    LEN_MAU: TComboBox;
    Label5: TLabel;
    KHUYET_LIEU: TComboBox;
    Label7: TLabel;
    BONG_BONG: TComboBox;
    Label8: TLabel;
    BI_LOM: TComboBox;
    Label9: TLabel;
    HOA_VAN_KHONG_RO: TComboBox;
    Label10: TLabel;
    NHIEM_BAN: TComboBox;
    Label11: TLabel;
    CHAY: TComboBox;
    Label12: TLabel;
    BIEN_DAY: TComboBox;
    Label13: TLabel;
    CHONG_DAU: TComboBox;
    Label14: TLabel;
    BIEN_DANG: TComboBox;
    Label15: TLabel;
    DO_DAY_KHONG_DUNG: TComboBox;
    Label16: TLabel;
    TACH_LIEU: TComboBox;
    Label17: TLabel;
    NGUYEN_NHAN_KHAC: TComboBox;
    Label18: TLabel;
    Status: TLabel;
    ColorButton2: TColorButton;
    D_Rate: TLabel;
    P_Rate: TLabel;
    User_Qty: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ColorButton1Click(Sender: TObject);
    procedure ED_BarcodeKeyPress(Sender: TObject; var Key: Char);
    procedure LECH_KHUONChange(Sender: TObject);
    procedure ColorButton2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    Ndate:TDate;
  public
    original : TNotifyEvent;
    { Public declarations }
  end;

var
  R_Factory_QC: TR_Factory_QC;
  IsPassOnce: Boolean = true;

implementation

uses
  main1;

{$R *.dfm}

procedure TR_Factory_QC.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TR_Factory_QC.FormDestroy(Sender: TObject);
begin
  R_Factory_QC := Nil;
end;

procedure TR_Factory_QC.FormCreate(Sender: TObject);
begin
  MOLD.Caption := 'MOLD:';
  SIZE.Caption := 'SIZE:';
  Color.Caption := 'COLOR:';
  QTY.Caption := 'QTY:';
end;

procedure TR_Factory_QC.ColorButton1Click(Sender: TObject);
var
  i,j: integer;
  Class_no,HH: String;
begin
  original := LECH_KHUON.OnChange;
  LECH_KHUON.OnChange := nil;
  with Query1 do          //取服務器的年月值
  begin
    active:=false;
    sql.Clear;
    sql.Add('select getdate() as NDate');
    active:=true;
    NDate:=fieldbyname('NDate').Value;
    active:=false;
  end;
  HH := formatdatetime('HH',NDate);
  if (( HH >= '22') or (HH < '06')) then
    Class_no := '3'
  else if (HH < '14') then
    Class_no := '1'
  else
    Class_no := '2';
  j := 0;
  for i := 0 to R_Factory_QC.ComponentCount - 1 do
  begin
    if R_Factory_QC.Components[i] is TComboBox then begin
      if TComboBox(R_Factory_QC.components[i]).ItemIndex > 0 then begin
        with QUpdate do
        begin
          Active:=false;
          SQL.Clear;
          SQL.Add('Insert into QC_R_Factory ');
          SQL.Add(' (Codebar, MJBH,  Size, EnglishName, Qty, ScanDate, Class, STATUS, ');
          SQL.Add(' Defect_Result, Defect_Qty, UserID, UserDate, Multiple) ');
          SQL.Add('Values ');
          SQL.Add(' ('''+ED_Barcode.Text+''','''+trim(copy(MOLD.Caption,6,20))+''','''+trim(copy(Size.Caption,6,6))+''','''+trim(copy(Color.Caption,7,100))+''','''+trim(copy(Qty.Caption,5,5))+''',');
          if (HH >= '00') and (HH < '06') then
            SQL.Add(' Convert(varchar,GetDate()-1,111),''' + Class_no + ''','''+copy(Status.Caption,1,1)+''',')
          else
            SQL.Add(' Convert(varchar,GetDate(),111),''' + Class_no + ''','''+copy(Status.Caption,1,1)+''',');
          SQL.Add(' '''+TComboBox(R_Factory_QC.components[i]).Name+''','+TComboBox(R_Factory_QC.components[i]).Text+',');
          SQL.Add(' '''+main.Edit1.Text+''',CONVERT(NVARCHAR, GETDATE(), 120), ');
          if strtoint(trim(copy(Qty.Caption,5,5))) >= 9 then
            SQL.Add(' 3) ')
          else if strtoint(trim(copy(Qty.Caption,5,5))) < 9 then
            SQL.Add(' 2) ');
          ExecSQL();
        end;
        j := j + 1;
      end;
      TComboBox(R_Factory_QC.components[i]).ItemIndex := 0;
    end;
  end;
  if j = 0 then begin
    with QUpdate do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('Insert into QC_R_Factory ');
      SQL.Add(' (Codebar, MJBH,  Size, EnglishName, Qty, ScanDate, Class, STATUS, ');
      SQL.Add(' Defect_Result, Defect_Qty, UserID, UserDate, Multiple) ');
      SQL.Add('Values ');
      SQL.Add(' ('''+ED_Barcode.Text+''','''+trim(copy(MOLD.Caption,6,20))+''','''+trim(copy(Size.Caption,6,6))+''','''+trim(copy(Color.Caption,7,100))+''','''+trim(copy(Qty.Caption,5,5))+''',');
      if (HH >= '00') and (HH < '06') then
        SQL.Add(' Convert(varchar,GetDate()-1,111),''' + Class_no + ''','''+copy(Status.Caption,1,1)+''',')
      else
        SQL.Add(' Convert(varchar,GetDate(),111),''' + Class_no + ''','''+copy(Status.Caption,1,1)+''',');
//      SQL.Add(' Convert(varchar,GetDate(),111),''' + Class_no + ''','''+copy(Status.Caption,1,1)+''',');
      SQL.Add(' ''PASS'',0.00,');
      SQL.Add(' '''+main.Edit1.Text+''',CONVERT(NVARCHAR, GETDATE(), 120), ');
      if strtoint(trim(copy(Qty.Caption,5,5))) >= 9 then
        SQL.Add(' 3) ')
      else if strtoint(trim(copy(Qty.Caption,5,5))) < 9 then
        SQL.Add(' 2) ');
      ExecSQL();
    end;
  end;
  ColorButton1.Enabled := false;
  ColorButton2.Enabled := false;
  ED_Barcode.Text:='';
  ED_Barcode.Enabled := true;
  ED_Barcode.SetFocus;
  Status.Caption := '';
  MOLD.Caption := 'MOLD:';
  SIZE.Caption := 'SIZE:';
  Color.Caption := 'COLOR:';
  QTY.Caption := 'QTY:';
  Showmessage('Success');
  LECH_KHUON.OnChange := original;
end;

procedure TR_Factory_QC.ED_BarcodeKeyPress(Sender: TObject; var Key: Char);
var SCANDate: String;
    BarCode,HH,Class_no: string;
    i: integer;
begin
  HH := formatdatetime('HH',now);
  if (( HH >= '22') or (HH < '06')) then
    Class_no := '3'
  else if (HH < '14') then
    Class_no := '1'
  else
    Class_no := '2';

  if key=#13 then
  begin

    with Query1 do
    begin
      Active := false;
      SQL.Clear;
      SQL.Add('select *,round(defect_qty/INSPECTED_QTY*100,2) as DEFECT_RATE,round((1-Batch_Rejected/Batch_Inspected)*100,2) as Batch_Pass_Rate from ( ');
      SQL.Add('select ScanDate,class,sum(QTY) as QTY, ');
      SQL.Add('CAST((select count(*) from QC_R_Factory where ScanDate = QC.ScanDate and class = QC.Class) AS DECIMAL(8, 1)) as Batch_Inspected , ');
      SQL.Add('CAST((select count(*) from QC_R_Factory where ScanDate = QC.ScanDate and STATUS = ''F'' and class = QC.Class) AS DECIMAL(8, 1)) as Batch_Rejected , ');
      SQL.Add('sum(INSPECTED_QTY) as INSPECTED_QTY,CAST(sum(defect_qty) AS DECIMAL(8, 1)) as defect_qty, ');
      SQL.Add('(select sum(Multiple) from QC_R_Factory where userid = '''+main.Edit1.Text+''' and ScanDate = QC.ScanDate and class = QC.Class ) as UserQty');
      SQL.Add('from ( ');
      SQL.Add('select ScanDate,class,QTY,Multiple as INSPECTED_QTY,defect_qty  ');
      SQL.Add('from QC_R_Factory ');
      SQL.Add('where ScanDate = ''' + FormatDateTime('yyyy/MM/dd', now) + ''' ');
      SQL.Add('and Class = ''' + Class_no + ''' ');
      SQL.Add(')QC ');
      SQL.Add('group by ScanDate,class ');
      SQL.Add(')QC ');
      SQL.Add('order by ScanDate,class ');
      //funcobj.WriteErrorLog(sql.Text);
      //showmessage(sql.Text);
      Active := true;
      D_Rate.Caption := 'DEFECT_RATE:' + FieldByName('DEFECT_RATE').AsString+'%';
      P_Rate.Caption := 'Batch_Pass_Rate:' + FieldByName('Batch_Pass_Rate').AsString+'%';
      User_Qty.Caption := 'User QTY:' + FieldByName('UserQty').AsString;
    end;

    if pos('-',ED_Barcode.text)>0 then
    begin
       BarCode:=LeftStr(ED_Barcode.text,(pos('-',ED_Barcode.text)-1));
    end else
    begin
       BarCode:=ED_Barcode.Text;
    end;

//查詢是否有此標簽資料
    with Query1 do begin
      Active := false;
      SQL.Clear;
      SQL.Add('select workplans.codebar,workplan.MJBH,workplans.Size,colorclass.englishname,workplans.Package ');
      SQL.Add('from LIY_DD.dbo.workplans workplans ');
      SQL.Add('left join LIY_DD.dbo.workplan  workplan on workplan.WorkID=workplans.WorkID ');
      SQL.Add('left join LIY_DD.dbo.colorclass colorclass on workplan.ColorNo=colorclass.ColorNo ');
      SQL.Add('where workplans.codebar = '''+BarCode+''' ');
      Active := true;
    end;

    if Query1.RecordCount > 0 then
    begin
{      if Query1.FieldByName('Package').Value < 6 then begin
        showmessage('This Label ID QTY < 6 !');
        ED_Barcode.Text:='';
        ED_Barcode.Enabled := true;
        ED_Barcode.SetFocus;
        Status.Caption := '';
        MOLD.Caption := 'MOLD:';
        SIZE.Caption := 'SIZE:';
        Color.Caption := 'COLOR:';
        QTY.Caption := 'QTY:';
        ColorButton1.Enabled := false;
        ColorButton2.Enabled := false;
      end
      else begin}
        ED_Barcode.Enabled := false;
        Status.Caption := 'PASS';
        MOLD.Caption := 'MOLD:'+Query1.FieldByName('MJBH').AsString;
        SIZE.Caption := 'SIZE:'+Query1.FieldByName('Size').AsString;
        Color.Caption := 'Color:'+Query1.FieldByName('englishname').AsString;
        QTY.Caption := 'QTY:'+Query1.FieldByName('Package').AsString;
        ColorButton1.Enabled := true;
        ColorButton2.Enabled := true;
//      end;
    end else
    begin
      showmessage('Don hang khong co tua,'+#39+'  xin gap can bo doi tem ma vach');
      ED_Barcode.Text:='';
      ED_Barcode.Enabled := true;
      ED_Barcode.SetFocus;
      Status.Caption := '';
      MOLD.Caption := 'MOLD:';
      SIZE.Caption := 'SIZE:';
      Color.Caption := 'COLOR:';
      QTY.Caption := 'QTY:';
      ColorButton1.Enabled := false;
      ColorButton2.Enabled := false;
    end;
    for i := 0 to R_Factory_QC.ComponentCount - 1 do
    begin
      if R_Factory_QC.Components[i] is TComboBox then
        TComboBox(R_Factory_QC.components[i]).ItemIndex := 0;
    end;
  end;
//  LECH_KHUON.OnChange := original;
end;

procedure TR_Factory_QC.LECH_KHUONChange(Sender: TObject);
var i,j: Integer;
begin
  j := 0;
  for i := 0 to R_Factory_QC.ComponentCount - 1 do
  begin
    if R_Factory_QC.Components[i] is TComboBox then
    begin
      if TComboBox(R_Factory_QC.components[i]).Text > '0' then begin
        j := j + 1;
        Status.Caption := 'FAIL';
        exit;
      end;
    end;
  end;
  if j = 0 then
    Status.Caption := 'PASS';
end;

procedure TR_Factory_QC.ColorButton2Click(Sender: TObject);
var i: Integer;
begin
  original := LECH_KHUON.OnChange;
  LECH_KHUON.OnChange := nil;
  ED_Barcode.Text:='';
  ED_Barcode.Enabled := true;
  ED_Barcode.SetFocus;
  Status.Caption := '';
  MOLD.Caption := 'MOLD:';
  SIZE.Caption := 'SIZE:';
  Color.Caption := 'COLOR:';
  QTY.Caption := 'QTY:';
  for i := 0 to R_Factory_QC.ComponentCount - 1 do
  begin
    if R_Factory_QC.Components[i] is TComboBox then
      TComboBox(R_Factory_QC.components[i]).ItemIndex := 0;
  end;
  ColorButton1.Enabled := false;
  ColorButton2.Enabled := false;
  LECH_KHUON.OnChange := original;
end;

procedure TR_Factory_QC.FormShow(Sender: TObject);
begin
  ED_Barcode.SetFocus;
end;

end.
