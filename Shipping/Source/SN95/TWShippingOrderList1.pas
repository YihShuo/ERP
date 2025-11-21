unit TWShippingOrderList1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, ComCtrls, StdCtrls, ExtCtrls, ComObj,
  iniFiles;

type
  TTWShippingOrderList = class(TForm)
    Panel1: TPanel;
    Label4: TLabel;
    btnQuery: TButton;
    btnExcel: TButton;
    Con_NOEdit: TEdit;
    Con_DateCK: TCheckBox;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    DBGridEh1: TDBGridEh;
    INVOICETW: TQuery;
    DS_INVOICE_M: TDataSource;
    INVOICETWcon_date: TStringField;
    INVOICETWcon_no: TStringField;
    INVOICETWXH: TStringField;
    INVOICETWclpm: TStringField;
    INVOICETWdwbh: TStringField;
    INVOICETWck_qty: TFloatField;
    INVOICETWctn: TSmallintField;
    INVOICETWQuantity: TFloatField;
    INVOICETWno_s: TSmallintField;
    INVOICETWNo_e: TSmallintField;
    INVOICETWNo_SE: TStringField;
    INVOICETWnw: TFloatField;
    INVOICETWtnw: TFloatField;
    INVOICETWgw: TFloatField;
    INVOICETWtgw: TFloatField;
    INVOICETWpy_dj: TFloatField;
    INVOICETWpy_tdj: TFloatField;
    INVOICETWexlb: TStringField;
    INVOICETWMemo: TStringField;
    INVOICETWpp: TStringField;
    Label1: TLabel;
    LogoEdit: TEdit;
    INVOICETWpzbh: TStringField;
    INVOICETWmade: TStringField;
    INVOICETWclbh: TStringField;
    INVOICETWex_cldh: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure btnQueryClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnExcelClick(Sender: TObject);
  private
    SN95_CQDH:String;
    { Private declarations }
    procedure Readini();
  public
    { Public declarations }
  end;

var
  TWShippingOrderList: TTWShippingOrderList;

implementation
   uses FunUnit;
{$R *.dfm}

procedure TTWShippingOrderList.Readini();
var MyIni :Tinifile;
    AppDir:string;
begin
  //
  AppDir:=ExtractFilePath(Application.ExeName);
  if FileExists(AppDir+'\ComName.ini')=true then
  begin
    try
      MyIni := TiniFile.Create(AppDir+'\ComName.ini');
      SN95_CQDH:=MyIni.ReadString('Shipping','SN95_CQDH','(''FNG'',''FNS'')');
    finally
      MyIni.Free;
    end;
  end;
  //
end;
//
procedure TTWShippingOrderList.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=CaFree;
end;

procedure TTWShippingOrderList.FormDestroy(Sender: TObject);
begin
  TWShippingOrderList:=nil;
end;

procedure TTWShippingOrderList.btnQueryClick(Sender: TObject);
begin
  //
  with INVOICETW do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Select HGZL.con_date,hgzls.con_no,hgzls.XH, hgzls.clpm,hgzls.dwbh,hgzls.ck_qty,');
    SQL.Add('       Case when hgzls.ctn<>0 then hgzls.ctn else null end ctn ,case when hgzls.ctn<>0 then hgzls.ck_qty*hgzls.ctn else hgzls.ck_qty end Quantity,');
    SQL.Add('	      hgzls.no_s,hgzls.No_e,case when hgzls.ctn<>0 then hgzls.mark+'' ''+Convert(varchar,hgzls.no_s)+''-''+hgzls.mark+'' ''+convert(varchar,hgzls.no_e) else null  end as No_SE,');
    SQL.Add('	      case when hgzls.nw<>0 then hgzls.nw else null end as nw,case when hgzls.nw<>0 then hgzls.nw*hgzls.ctn else null end as tnw, ');
    SQL.Add('	      case when hgzls.gw<>0 then hgzls.gw else null end as gw,case when hgzls.nw<>0 then hgzls.gw*hgzls.ctn else null end as tgw, ');
    SQL.Add('            hgzls.py_dj,hgzls.py_dj*(case when hgzls.ctn<>0 then hgzls.ck_qty*hgzls.ctn else hgzls.ck_qty end) as py_tdj,exzl.exlb,');
    SQL.Add('	      Case when exzl.exlb=''A'' then exzls.CLDH+exzls.wide+hgzls.memo else clzl.zwpm+hgzls.memo end as Memo,');
    SQL.Add('	      EXZLS.pp,EXZLS.pzbh,EXZLS.made,hgzls.clbh,EXZLS.cldh as ex_cldh ');
    SQL.Add('FROM hgzls  ');
    SQL.Add('LEFT JOIN HGZL ON hgzls.con_no = hgzl.con_no ');
    SQL.Add('LEFT JOIN EXZLS  ON substring(hgzls.clbh,1,10) = EXZLS.exno and substring(hgzls.clbh,11,3) = EXZLS.xh ');
    SQL.Add('LEFT JOIN clzl  ON EXZLS.cldh = clzl.cldh ');
    SQL.Add('LEFT JOIN exzl  ON EXZLS.exno = exzl.exno ');
    SQL.Add('where 1=1 ');
    if Con_DateCK.Checked=true then
    Begin
      SQL.Add(' and Convert(smalldatetime,convert(varchar,HGZL.con_date,111))  Between  ');
      SQL.Add(' '''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''' and  '''+formatdatetime('yyyy/MM/dd',DTP2.Date) +''' ');
    end;
    if Con_NOEdit.Text<>'' then
    SQL.Add(' and hgzls.con_no like '''+Con_NOEdit.Text+'%'' ');
    if LogoEdit.Text<>'' then
    SQL.Add(' and hgzls.pp like '''+LogoEdit.Text+'%'' ');
    SQL.Add(' and HGZL.CQDH in '+SN95_CQDH);
    SQL.Add('ORDER BY HGZL.con_date,hgzls.con_no , hgzls.xh');
    //funcObj.WriteErrorLog(sql.Text);
    Active:=true;
  end;
  //
end;

procedure TTWShippingOrderList.FormCreate(Sender: TObject);
begin
  Readini();
  DTP1.Date:=Date()-7;
  DTP2.Date:=Date();
end;

procedure TTWShippingOrderList.btnExcelClick(Sender: TObject);
var i,j,k:integer;
    eclApp,WorkBook:olevariant;
begin
  //
  if INVOICETW.Active then
  begin
    if INVOICETW.recordcount=0 then
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
    for   i:=1   to   INVOICETW.fieldcount   do
    begin
      eclApp.Cells(1,i+1):=INVOICETW.fields[i-1].FieldName;
    end;
    INVOICETW.First;
    j:=2;
    while  not  INVOICETW.Eof   do
    begin
        eclApp.Cells(j,1):=j-1;
        for   i:=1   to   INVOICETW.fieldcount   do
        begin
          eclApp.Cells(j,i+1):=INVOICETW.Fields[i-1].Value;
          eclApp.Cells.Cells.item[j,i+1].font.size:='12';
        end;
        INVOICETW.Next;
        inc(j);
    end;
    eclapp.columns.autofit;
    showmessage('Succeed.');
    eclApp.Visible:=True;
  except
    on   F:Exception   do
      showmessage(F.Message);
  end;
  //
end;

end.
