unit PriceChecking1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, DB, DBTables, GridsEh, DBGridEh, ComCtrls,comobj;

type
  TPriceChecking = class(TForm)
    Panel1: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel2: TPanel;
    Panel3: TPanel;
    DBGridEh1: TDBGridEh;
    CDCExcel: TQuery;
    DataSource1: TDataSource;
    Edit2: TEdit;
    Edit3: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    Button2: TButton;
    CDCExcelCFMID: TStringField;
    CDCExcelSeason: TStringField;
    CDCExcelStage: TStringField;
    CDCExcelMaterialID: TStringField;
    CDCExcelYWPM: TStringField;
    CDCExceldwbh: TStringField;
    CDCExcelVendorCODE: TStringField;
    CDCExcelVendor: TStringField;
    CDCExcelPaQty: TFloatField;
    CDCExcelQty: TCurrencyField;
    CDCExcelUSD_Act_Price: TFloatField;
    CDCExcelUSD_Act_amount: TFloatField;
    CDCExcelVND_Act_Price: TFloatField;
    CDCExcelVND_Act_amount: TFloatField;
    CDCExcelCGBH: TStringField;
    CDCExcelERP_USDPrice: TCurrencyField;
    CDCExcelERP_VNDPrice: TCurrencyField;
    CDCExcelUSD_ERP_amount: TCurrencyField;
    CDCExcelVND_ERP_amount: TCurrencyField;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    Label3: TLabel;
    CheckBox1: TCheckBox;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PriceChecking: TPriceChecking;

implementation

uses main1;

{$R *.dfm}

procedure TPriceChecking.Button1Click(Sender: TObject);
begin
 if (edit2.text='') and (not checkbox1.Checked)  then
  begin
  showmessage('type Season or Date');
     abort;
  end;
  with CDCExcel do
  begin
    Active:=false;
    sql.Clear;
    sql.add('select main.*,ERP_USDPrice,ERP_VNDPrice,ERP_USDPrice*main.qty as USD_ERP_amount,ERP_VNDPrice*main.qty as VND_ERP_amount from (');
    sql.add('select KCRK.CFMID,CGZL.Season,Cgzl.purpose as Stage,kcrks.clbh as MaterialID,CLZL.YWPM,CLZL.dwbh,zszl.zsdh as VendorCODE,ZSZL.ZSYWJC as Vendor,KCRKS.PaQty,KCRKS.Qty');
    sql.add(',convert(float,KCRKS.USPrice) as USD_Act_Price,KCRKS.USACC as USD_Act_amount,');
    sql.add('KCRKS.VNPrice  as VND_Act_Price,KCRKS.VNACC as VND_Act_amount,KCRKS.CGBH');
    sql.add('from KCRK');
    sql.add('left join ZSZL on ZSZL.ZSDH=KCRK.ZSBH');
    sql.add('left join KCCK on KCCK.CKBH=KCRK.CKBH');
    sql.add('Left join CGZL on CGZL.CGNO=KCRK.ZSNO ');
    sql.add('left join kcrks on kcrks.rkno = kcrk.rkno ');
    sql.add('left join CLZL on CLZL.CLDH=KCRKS.CLBH ');
    sql.add('where KCCK.GSBH='+''''+main.edit2.text+''' ');
    if checkbox1.Checked then
    begin
       sql.add('and convert(smalldatetime,convert(varchar,KCRK.USERDATE,111)) between'+''''+formatdatetime('yyyy/MM/dd',DTP1.date )+'''');
       sql.add('and '+''''+formatdatetime('yyyy/MM/dd',DTP2.date )+'''');
    end;
    if edit2.text<>'' then
         sql.Add('and cgzl.season ='''+edit2.text+''' ');
    if edit3.text<>'' then
         sql.Add('and cgzl.purpose ='''+edit3.text+''' ');
    sql.add(')main');
    sql.add('left join (select clbh,season,sampleprice as ERP_USDPrice,samplepricevn as ERP_VNDPrice from materialmoq)materialmoq on materialmoq.CLBH=main.MaterialID and materialmoq.season=main.season');
    sql.add('order by main.Season,main.stage');
    Active:=true;
   end;
end;

procedure TPriceChecking.Button2Click(Sender: TObject);
var   a:string;
      eclApp,WorkBook:olevariant;
      i,j:integer;
begin
 if  CDCExcel.active  then
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
        for   i:=0   to   CDCExcel.fieldcount-1   do
          begin
              eclApp.Cells(1,i+1):=CDCExcel.fields[i].FieldName;
          end;

        CDCExcel.First;
        j:=2;
        while   not   CDCExcel.Eof   do
          begin
            for   i:=0   to  CDCExcel.fieldcount-1  do
            begin
              eclApp.Cells(j,i+1):=CDCExcel.Fields[i].Value;
            end;
          CDCExcel.Next;
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

procedure TPriceChecking.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TPriceChecking.FormDestroy(Sender: TObject);
begin
  pricechecking:=nil;
end;

end.
