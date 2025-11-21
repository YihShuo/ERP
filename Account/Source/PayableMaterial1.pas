unit PayableMaterial1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls,dateutils,
  ComCtrls, Menus,comobj, GridsEh, DBGridEh, iniFiles;

type
  TPayableMaterial = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label7: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Edit1: TEdit;
    DBGrid1: TDBGridEh;
    Query1: TQuery;
    DS1: TDataSource;
    Label3: TLabel;
    DTP1: TDateTimePicker;
    Label4: TLabel;
    DTP2: TDateTimePicker;
    PopupMenu1: TPopupMenu;
    Detail1: TMenuItem;
    EXCEL1: TMenuItem;
    Print1: TMenuItem;
    CBX1: TCheckBox;
    Query1ZSBH: TStringField;
    Query1ZSYWJC: TStringField;
    Query1USQty: TCurrencyField;
    Query1USACC: TCurrencyField;
    Query1VNQty: TCurrencyField;
    Query1VNACC: TCurrencyField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Detail1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure EXCEL1Click(Sender: TObject);
    procedure Print1Click(Sender: TObject);
    procedure DBGrid1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    procedure readini();
  public
    VNPrice_DiplayFormat:string;
    VNPrice_Decimal:Byte;
    { Public declarations }
  end;

var
  PayableMaterial: TPayableMaterial;

implementation

uses Payabledetail1, PayableMaterial_Print1;

{$R *.dfm}
procedure TPayableMaterial.readini();
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
  TCurrencyField(Query1.FieldByName('VNQty')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(Query1.FieldByName('VNACC')).DisplayFormat:=VNPrice_DiplayFormat;
end;
//

procedure TPayableMaterial.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=cafree;
end;

procedure TPayableMaterial.Button1Click(Sender: TObject);
begin 
with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select CWFK.ZSBH,ZSZL.ZSYWJC ,sum(CWYF.USQty) as USQty,sum(CWYF.VNQty) as VNQty, ');
    sql.add('sum(CWYF.USACC) as USACC,sum(CWYF.VNACC) as VNACC ');
    sql.add('from CWYF ');
    sql.add('left join CWFK on CWFK.FKBH=CWYF.FKBH ') ;
    sql.add('left join ZSZL on ZSZL.ZSDH=CWFK.ZSBH ');
    sql.add('where ZSZL.ZSYWJC like '+''''+edit1.Text+'%'+'''');
    sql.add('      and convert(smalldatetime,convert(varchar,CWFK.FKDate,111)) between ');
    sql.add('           '''+formatdatetime('yyyy/mm/dd',DTP1.Date)+''''+' and '+''''+ formatdatetime('yyyy/mm/dd',DTP2.Date)+'''');
    if CBX1.Checked then
      begin
        sql.Add(' and CWFK.ZHBH is null ');
      end;
    sql.add('group by  CWFK.ZSBH,ZSZL.ZSYWJC ');
    //sql.add('order by CWFK.ZSBH');
    active:=true;
  end;
end;

procedure TPayableMaterial.FormCreate(Sender: TObject);
begin
  DTP1.Date:=startofthemonth(date);
  DTP2.Date:=date;
  readini();
end;

procedure TPayableMaterial.Detail1Click(Sender: TObject);
begin
  Payabledetail:=TPayabledetail.create(self);
  Payabledetail.show;
end;

procedure TPayableMaterial.Button2Click(Sender: TObject);
var
      eclApp,WorkBook:olevariant;
 //     xlsFileName:string;
      i,j:integer;
begin

if query1.Active then
  begin
    if query1.recordcount=0 then
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

procedure TPayableMaterial.Button3Click(Sender: TObject);
var i:integer;
begin
  PayableMaterial_Print:=TPayableMaterial_Print.create(self);
  PayableMaterial_Print.quickrep1.prepare;
  i:=PayableMaterial_Print.quickrep1.qrprinter.pagecount;
  PayableMaterial_Print.page1.caption:=inttostr(i);
  PayableMaterial_Print.QR1.caption:=formatdatetime('yyyy/MM/dd',DTP1.date);
  PayableMaterial_Print.QR2.caption:=formatdatetime('yyyy/MM/dd',DTP2.date);

  PayableMaterial_Print.quickrep1.preview;
  PayableMaterial_Print.free;
end;

procedure TPayableMaterial.EXCEL1Click(Sender: TObject);
begin
  button2click(nil);
end;

procedure TPayableMaterial.Print1Click(Sender: TObject);
begin
  button3click(nil);
end;

procedure TPayableMaterial.DBGrid1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin

  with Query1 do
  begin
    if fieldbyname('USACC').value<>fieldbyname('USQty').value  then
      begin
        DBGRid1.canvas.Font.Color:=clred;
      end;    
    if fieldbyname('VNACC').value<>fieldbyname('VNQty').value  then
      begin
        DBGRid1.canvas.Font.Color:=clred;
      end;
  end;
end;

procedure TPayableMaterial.FormDestroy(Sender: TObject);
begin
  PayableMaterial:=nil;
end;

end.
