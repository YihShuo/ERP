unit EntryCheckPay1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DB, DBTables, GridsEh, DBGridEh, ComCtrls, comobj,
  iniFiles;

type
  TEntryCheckPay = class(TForm)
    Panel1: TPanel;
    Label3: TLabel;
    Label5: TLabel;
    Label2: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Edit2: TEdit;
    Edit1: TEdit;
    Button1: TButton;
    Edit3: TEdit;
    Button2: TButton;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit4: TEdit;
    DBGridEh1: TDBGridEh;
    Query1: TQuery;
    DS1: TDataSource;
    Label1: TLabel;
    DTP1: TDateTimePicker;
    Label4: TLabel;
    DTP2: TDateTimePicker;
    Query1GSBH: TStringField;
    Query1ZSBH: TStringField;
    Query1DJNO: TStringField;
    Query1DJLX: TStringField;
    Query1CGBH: TStringField;
    Query1CLBH: TStringField;
    Query1DJDATE: TDateTimeField;
    Query1Qty: TCurrencyField;
    Query1USPrice: TCurrencyField;
    Query1USACC: TCurrencyField;
    Query1USQty: TCurrencyField;
    Query1CostID: TStringField;
    Query1FKBH: TStringField;
    Query1USERDATE: TDateTimeField;
    Query1USERID: TStringField;
    Query1YN: TStringField;
    Query1ZSYWJC: TStringField;
    Query1YWPM: TStringField;
    Query1DWBH: TStringField;
    Label6: TLabel;
    Edit7: TEdit;
    Query1cgno: TStringField;
    Query1ZWPM: TStringField;
    Query1CWHL: TCurrencyField;
    Query1VNPrice: TCurrencyField;
    Query1VNACC: TCurrencyField;
    Query1VNQty: TCurrencyField;
    Label9: TLabel;
    Edit8: TEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
    procedure readini();
  public
    VNPrice_DiplayFormat:string;
    VNPrice_Decimal:Byte;
    { Public declarations }
  end;

var
  EntryCheckPay: TEntryCheckPay;

implementation

uses main1;

{$R *.dfm}
procedure TEntryCheckPay.readini();
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

  TCurrencyField(Query1.FieldByName('CWHL')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(Query1.FieldByName('VNQty')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(Query1.FieldByName('VNACC')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(Query1.FieldByName('VNPrice')).DisplayFormat:=VNPrice_DiplayFormat;
end;

procedure TEntryCheckPay.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 action:=cafree;
end;

procedure TEntryCheckPay.FormDestroy(Sender: TObject);
begin
 EntryCheckPay:=nil;
end;

procedure TEntryCheckPay.FormCreate(Sender: TObject);
begin
  DTP1.Date:=now-15;
  DTP2.Date:=now;
  readini();
end;

procedure TEntryCheckPay.Button1Click(Sender: TObject);
begin
 with query1 do
 begin
    active:=false;
    sql.Clear;
    sql.Add('select cgzl.cgno,CWFK.GSBH, CWYF.*,zszl.zsywjc,clzl.ywpm,clzl.zwpm,clzl.dwbh');
    sql.Add('from CWYF left join zszl on CWYF.ZSBH=zszl.zsdh');
    sql.Add('left join CWFK on CWFK.FKBH=CWYF.FKBH');
    sql.Add('left join clzl on clzl.cldh=CWYF.CLBH');
    sql.Add('left join KCRK on KCRK.rkno=CWYF.djno');
    sql.Add('left join CGZL on CGZL.CGNO=KCRK.ZSNO');
    sql.Add('where convert(smalldatetime,convert(varchar,CWFK.FKDate,111)) between');
    sql.add(''''+formatdatetime('yyyy/MM/dd',DTP1.Date)+'''');
    sql.add(' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
    sql.add(' and CWFK.FKBH like '+''''+edit4.Text+'%'+'''');
    sql.Add(' and CWYF.ZSBH like '+''''+edit7.text+'%'+'''');
    sql.add(' and ZSZL.ZSYWJC like '+''''+'%'+edit6.text+'%'+'''');
    sql.Add(' and CWFK.GSBH='+''''+main.edit2.Text+'''');
    sql.Add(' and CWYF.DJNO like '+''''+edit5.Text+'%'+'''');
    sql.Add(' and CWYF.CLBH like '+''''+edit1.text+'%'+'''');
    sql.add(' and CLZL.YWPM like '+''''+'%'+edit2.text+'%'+'''');
    sql.add(' and CLZL.YWPM like '+''''+'%'+edit3.text+'%'+'''');
    if edit8.Text<>'' then
      sql.Add(' and cgzl.cgno like '+''''+edit8.text+'%'+'''');
    sql.Add('order by CWYF.FKBH asc');
    active:=true;
 end;
end;

procedure TEntryCheckPay.Button2Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin
    if  query1.active  then
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
          for   i:=0   to   query1.fieldcount-1   do
            begin
                eclApp.Cells(1,i+1):=query1.fields[i].FieldName;
            end;

          query1.First;
          j:=2;
          while   not   query1.Eof   do
            begin
              for   i:=0   to  query1.fieldcount-1  do
              begin
                eclApp.Cells(j,i+1):=query1.Fields[i].Value;
              end;
            query1.Next;
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
