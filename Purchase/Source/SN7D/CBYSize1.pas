unit CBYSize1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, StdCtrls, DBCtrls, Mask, ComCtrls,
  Buttons, ExtCtrls, Menus, comobj, GridsEh, DBGridEh,IniFiles;

type
  TCBYSize = class(TForm)
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
    Query1: TQuery;
    PC1: TPageControl;
    TS3: TTabSheet;
    TS4: TTabSheet;
    Panel3: TPanel;
    Panel5: TPanel;
    CGDet: TQuery;
    DS4: TDataSource;
    DS3: TDataSource;
    CGMas: TQuery;
    BDelRec: TQuery;
    Panel2: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    BDT8: TBitBtn;
    CGDet_Remark: TQuery;
    QTemp: TQuery;
    CGSTemp: TQuery;
    DBGrid3: TDBGridEh;
    dbgrid4: TDBGridEh;
    BDT7: TBitBtn;
    CGMasCLBH: TStringField;
    CGMasXXCC: TStringField;
    CGMasPOQTY: TCurrencyField;
    CGMasRKQTY: TFloatField;
    CGMasLLQTY: TFloatField;
    CGMasSTOCKQTY: TFloatField;
    CGMasywpm: TStringField;
    CGMasSEASON: TStringField;
    Label2: TLabel;
    Edit2: TEdit;
    Label6: TLabel;
    Edit4: TEdit;
    Button2: TButton;
    CGDetCLBH: TStringField;
    CGDetywpm: TStringField;
    CGDetSEASON: TStringField;
    CGDetPOQTY: TCurrencyField;
    CGDetRKQTY: TCurrencyField;
    CGDetLLQTY: TCurrencyField;
    CGDetSTOCKQTY: TCurrencyField;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    CheckBox1: TCheckBox;
    Edit3: TEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure BB1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BB7Click(Sender: TObject);
    procedure BD7Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure FormDestroy(Sender: TObject);
    procedure BDT8Click(Sender: TObject);
    procedure bbt6Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
    procedure ReadIni();
  public
    { Public declarations }
    VNPrice_DiplayFormat:string;
    VNPrice_Decimal:Byte;
  end;

var
  CBYSize: TCBYSize;
  NDate:TDate;

implementation

uses main1;

{$R *.dfm}

procedure TCBYSize.ReadIni();
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
end;
//

procedure TCBYSize.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=Cafree;
end;

procedure TCBYSize.Button1Click(Sender: TObject);
begin
  if (trim(Edit3.Text) = '') and (CheckBox1.Checked) then begin
    showmessage('Please Keyin Season !');
    exit;
  end;
  with CGMas do
  begin
    active:=false;
    sql.Clear;
    //left join 先找出入庫與領料的總數
    if Edit3.Text <> '' then
      sql.add('select CGZLSS.CLBH,CLZL.ywpm,CGZL.SEASON,CGZLSS.XXCC,SUM(CGZLSS.Qty) as POQTY,KCRKSS.RKQTY,KCRKSS.LLQTY,KCRKSS.STOCKQTY from CGZLSS')
    else
      sql.add('select CGZLSS.CLBH,CLZL.ywpm,''ALL'' as SEASON,CGZLSS.XXCC,SUM(CGZLSS.Qty) as POQTY,KCRKSS.RKQTY,KCRKSS.LLQTY,KCRKSS.STOCKQTY from CGZLSS');
    sql.add('left join (');
    sql.add('select KCRKSS.CLBH,KCRKSS.SIZE,isnull(SUM(KCRKSS.RKQTY),0) as RKQTY,isnull(SUM(KCLLSS.QTY),0) as LLQTY,isnull(SUM(KCRKSS.RKQTY),0)-isnull(SUM(KCLLSS.QTY),0) as Stockqty from');
    sql.add('(select KCRKSS.CLBH,KCRKSS.SIZE,sum(KCRKSS.Qty) RKQTY from KCRKSS');
    sql.add('where RKNO in (select RKNO from KCRK');
    sql.add('where ZSNO in (');
    sql.add('select distinct CGZL.CGNO from CGZL');
    sql.add('left join CGZLSS on CGZL.CGNO = CGZLSS.CGNO');
    sql.add('where ZLBH = ''ALL'' and Stage = ''CBY'' and XXCC <> ''N'' and XXCC <>''ZZZZZZ'' and Season like '''+Edit3.Text+'%'' and CLBH like '''+Edit1.Text+'%'')');
    sql.add(') group by KCRKSS.CLBH,KCRKSS.SIZE');
    sql.add(') KCRKSS');
    sql.add('left join');
    sql.add('(select CLBH,SIZE,sum(KCLLSS.Qty) QTY from KCLLSS');
    sql.add('where SCBH in (');
    sql.add('SELECT DISTINCT MasterOrder FROM CBY_Orders');
    sql.add('where Season like '''+Edit3.Text+'%'' ) and KCLLSS.CLBH like '''+Edit1.Text+'%'' and SCBH like ''CBYV%'' ');
    sql.add(' group by KCLLSS.CLBH,KCLLSS.SIZE) KCLLSS on KCLLSS.CLBH = KCRKSS.CLBH and KCLLSS.SIZE = KCRKSS.SIZE');
    sql.add('group by KCRKSS.CLBH,KCRKSS.SIZE');
    sql.add(')KCRKSS on KCRKSS.CLBH = CGZLSS.CLBH and KCRKSS.SIZE = substring(CGZLSS.XXCC,2,len(CGZLSS.XXCC)-1)');
    sql.add('left join CLZL on CGZLSS.CLBH = CLZL.cldh');
    sql.add('left join CGZL on CGZLSS.CGNO = CGZL.CGNO');
    sql.add('where CGZL.SEASON like '''+Edit3.Text+'%'' and CGZLSS.CLBH like '''+Edit1.Text+'%''');
    sql.add('and CGZLSS.ZLBH = ''ALL'' and CGZLSS.Stage = ''CBY'' and XXCC <> ''N'' and XXCC <>''ZZZZZZ''');
    if Edit3.Text <> '' then
      sql.add('group by CGZLSS.CLBH,CLZL.ywpm,CGZL.SEASON,CGZLSS.XXCC,KCRKSS.RKQTY,KCRKSS.LLQTY,KCRKSS.STOCKQTY')
    else
      sql.add('group by CGZLSS.CLBH,CLZL.ywpm,CGZLSS.XXCC,KCRKSS.RKQTY,KCRKSS.LLQTY,KCRKSS.STOCKQTY');
    sql.add('order by CGZLSS.CLBH,CGZLSS.XXCC');
//    showmessage(SQL.Text);
{
    sql.add('select CGZL.* ,ZSZL.ZSYWJC,ZSZL.DH,ZSZL.CZ');
    sql.add('from CGZL');
    sql.add('left join ZSZL on CGZL.ZSBH=ZSZL.ZSDH');
    sql.add('where CGZL.CGNO like ');
    sql.add(''''+edit1.Text+'%'+'''');
    sql.add('and ZSZL.ZSYWJC like ');
    sql.add(''''+'%'+edit3.Text+'%'+'''');
    sql.add('and convert(smalldatetime,convert(varchar,CGZL.USERDATE,111)) between ');
    sql.add(''''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''''+' and  '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date) +'''');
    sql.add('and CGZL.CGLX='+''''+'6'+'''');
    sql.add('and CGZL.GSBH='+''''+main.Edit2.Text+'''');
    if Check.Checked then
    begin
      sql.Add('and CGZL.USERID='+''''+main.Edit1.Text+'''');
    end;
    sql.add('order by CGZL.CGNO DESC'); }
    active:=true;
  end;
  //
end;

procedure TCBYSize.BB1Click(Sender: TObject);
begin
  panel2.Visible:=true;
end;

procedure TCBYSize.FormCreate(Sender: TObject);
begin
  with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select getdate() as NDate ');
    active:=true;
    NDate:=fieldbyname('NDate').Value;
    active:=false;
  end;
  PC1.ActivePage:=TS3;
  DTP1.Date:=date-3;
  DTP2.date:=date;
  ReadIni();
end;

procedure TCBYSize.BB7Click(Sender: TObject);
begin
  close;
end;

procedure TCBYSize.BD7Click(Sender: TObject);
begin
  close;
end;

procedure TCBYSize.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
  edit3.SetFocus;
end;

procedure TCBYSize.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
  button1click(nil);
end;

procedure TCBYSize.FormDestroy(Sender: TObject);
begin
  CBYSize:=nil;
end;

procedure TCBYSize.BDT8Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j,k:integer;
    C_Remark,E_Remark:string;
begin
  if  CGDet.active  then
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
        for   i:=0   to   CGDet.fieldcount-1   do
        begin
            eclApp.Cells(1,i+1):=CGDet.fields[i].FieldName;
        end;
        //20141202增加材料備忘資訊
        CGDet_Remark.Active:=true;
        eclApp.Cells(1,i+1):='Chinese Remark';
        eclApp.ActiveSheet.Columns[i+1].ColumnWidth:=100;
        eclApp.Cells(1,i+2):='English Remark';
        eclApp.ActiveSheet.Columns[i+2].ColumnWidth:=100;
        //
        CGDet.First;
        j:=2;
        while   not   CGDet.Eof   do
        begin
          for   i:=0   to  CGDet.fieldcount-1  do
          begin
            eclApp.Cells(j,i+1):=CGDet.Fields[i].Value;
          end;
          //20141202增加材料備忘資訊
          C_Remark:='';
          E_Remark:='';
          for k:=0 to CGDet_Remark.RecordCount-1 do
          begin
            if CGDet_Remark.FieldByName('zybb').AsString='C' then
              C_Remark:=C_Remark+CGDet_Remark.FieldByName('bz').AsString+#13#10;
            if CGDet_Remark.FieldByName('zybb').AsString='E' then
              E_Remark:=E_Remark+CGDet_Remark.FieldByName('bz').AsString+#13#10;
            CGDet_Remark.Next;
          end;
          eclApp.Cells(j,i+1):=trim(C_Remark);
          eclApp.Cells(j,i+2):=trim(E_Remark);
          //
          CGDet.Next;
          inc(j);
        end;
       //20141202增加材料備忘資訊
       CGDet_Remark.Active:=false;
       eclapp.columns.autofit;
       showmessage('Succeed');
       eclApp.Visible:=True;
    except
        on   F:Exception   do
          showmessage(F.Message);
    end;
  end;
end;

procedure TCBYSize.bbt6Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j,k:integer;
    C_Remark,E_Remark:string;    
begin
  if  CGMas.active  then
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
//        for   i:=0   to   CGMas.fieldcount-1   do
//        begin
//            eclApp.Cells(1,i+1):=CGMas.fields[i].FieldName;
//        end;
        //
        CGMas.First;
        eclApp.Cells(1,1) := 'Material No';
        eclApp.Cells(1,2) := 'Material Name';
        eclApp.Cells(1,3) := 'Season';
        eclApp.Cells(1,4) := 'SIZE';
        eclApp.Cells(1,5) := 'PO QTY';
        eclApp.Cells(1,6) := 'Entry QTY';
        eclApp.Cells(1,7) := 'Delivery QTY';
        eclApp.Cells(1,8) := 'Stock QTY';
        j:=2;
        while   not   CGMas.Eof   do
        begin
          for   i:=0   to  CGMas.fieldcount-1  do
          begin
            eclApp.Cells(j,i+1):=CGMas.Fields[i].Value;
          end;
          //
          CGMas.Next;
          inc(j);
        end;
       eclapp.columns.autofit;
       showmessage('Succeed');
       eclApp.Visible:=True;
    except
        on   F:Exception   do
          showmessage(F.Message);
    end;
  end;
end;

procedure TCBYSize.Button2Click(Sender: TObject);
begin
  if trim(Edit4.Text) = '' then begin
    showmessage('Please Keyin Season !');
    exit;
  end;
  with CGDet do
  begin
    active:=false;
    sql.Clear;
    //left join 先找出入庫與領料的總數
    sql.add('select CGZLSS.CLBH,CLZL.ywpm,CGZL.SEASON,SUM(CGZLSS.Qty) as POQTY,KCRKS.RKQTY,KCRKS.LLQTY,KCRKS.STOCKQTY from CGZLSS');
    sql.add('left join (');
    sql.add('select KCRKS.CLBH,isnull(SUM(KCRKS.RKQTY),0) as RKQTY,isnull(SUM(KCLLS.QTY),0) as LLQTY,isnull(SUM(KCRKS.RKQTY),0)-isnull(SUM(KCLLS.QTY),0) as Stockqty from');
    sql.add('(select KCRKS.CLBH,sum(KCRKS.Qty) RKQTY from KCRKS');
    sql.add('where RKNO in (select RKNO from KCRK');
    sql.add('where ZSNO in (');
    sql.add('select distinct CGZL.CGNO from CGZL');
    sql.add('left join CGZLSS on CGZL.CGNO = CGZLSS.CGNO');
    sql.add('where ZLBH = ''ALL'' and Stage = ''CBY'' and Season like '''+Edit4.Text+'%'' and CLBH like '''+Edit2.Text+'%'')');
    sql.add(') group by KCRKS.CLBH');
    sql.add(') KCRKS');
    sql.add('left join');
    sql.add('(select CLBH,sum(KCLLS.Qty) QTY from KCLLS');
    sql.add('where SCBH in (');
    sql.add('SELECT DISTINCT MasterOrder FROM CBY_Orders');
    sql.add('where Season like '''+Edit4.Text+'%'' ');
    sql.add(') and KCLLS.CLBH like '''+Edit2.Text+'%'' and SCBH like ''CBYV%'' ');
    sql.add(' group by CLBH ) KCLLS on KCLLS.CLBH = KCRKS.CLBH ');
    sql.add('group by KCRKS.CLBH');
    sql.add(')KCRKS on KCRKS.CLBH = CGZLSS.CLBH ');
    sql.add('left join CLZL on CGZLSS.CLBH = CLZL.cldh');
    sql.add('left join CGZL on CGZLSS.CGNO = CGZL.CGNO');
    sql.add('where CGZL.SEASON like '''+Edit4.Text+'%'' and CGZLSS.CLBH like '''+Edit2.Text+'%''');
    sql.add('and CGZLSS.Stage = ''CBY'' ');
    sql.add('group by CGZLSS.CLBH,CLZL.ywpm,CGZL.SEASON,KCRKS.RKQTY,KCRKS.LLQTY,KCRKS.STOCKQTY');
    sql.add('order by CGZLSS.CLBH');
    active:=true;
  end;
  //
end;

procedure TCBYSize.BitBtn2Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j,k:integer;
    C_Remark,E_Remark:string;
begin
  if  CGDet.active  then
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
//        for   i:=0   to   CGDet.fieldcount-1   do
//        begin
//            eclApp.Cells(1,i+1):=CGDet.fields[i].FieldName;
//        end;
        //
        CGDet.First;
        eclApp.Cells(1,1) := 'Material No';
        eclApp.Cells(1,2) := 'Material Name';
        eclApp.Cells(1,3) := 'Season';
        eclApp.Cells(1,4) := 'SIZE';
        eclApp.Cells(1,5) := 'PO QTY';
        eclApp.Cells(1,6) := 'Entry QTY';
        eclApp.Cells(1,7) := 'Delivery QTY';
        eclApp.Cells(1,8) := 'Stock QTY';
        j:=2;
        while   not   CGDet.Eof   do
        begin
          for   i:=0   to  CGDet.fieldcount-1  do
          begin
            eclApp.Cells(j,i+1):=CGDet.Fields[i].Value;
          end;
          //
          CGDet.Next;
          inc(j);
        end;
       eclapp.columns.autofit;
       showmessage('Succeed');
       eclApp.Visible:=True;
    except
        on   F:Exception   do
          showmessage(F.Message);
    end;
  end;
end;

end.


