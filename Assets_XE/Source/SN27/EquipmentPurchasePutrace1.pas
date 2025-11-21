unit EquipmentPurchasePutrace1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, StdCtrls, DBCtrls, ComCtrls, GridsEh, DBGridEh,
  Mask, Buttons, ExtCtrls, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls,
  DynVarsEh, EhLibVCL, DBAxisGridsEh,fununit,comobj;

type
  TEquipmentPurchasePutrace = class(TForm)
    Panel3: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    VWPM: TLabel;
    Label6: TLabel;
    ZWPMEdit: TEdit;
    btnQuery: TButton;
    DTP1: TDateTimePicker;
    VWPMEdit: TEdit;
    CGNOEdit: TEdit;
    DBGrid1: TDBGridEh;
    Query1: TQuery;
    DS1: TDataSource;
    DTP2: TDateTimePicker;
    Label8: TLabel;
    SBBHEdit: TEdit;
    Button1: TButton;
    Query1GSBH: TStringField;
    Query1CGNO: TStringField;
    Query1SBBH: TStringField;
    Query1VWPM: TStringField;
    Query1ZWPM: TStringField;
    Query1DWBH: TStringField;
    Query1CGQty: TFloatField;
    Query1RKQty: TFloatField;
    Query1VNPrice: TCurrencyField;
    Query1VNACC: TCurrencyField;
    Query1USPrice: TFloatField;
    Query1USACC: TFloatField;
    Query1CG_ZSBH: TStringField;
    Query1RK_ZSBH: TStringField;
    Query1SupName: TStringField;
    Query1CGDate: TDateTimeField;
    Query1YQDate: TDateTimeField;
    Query1RKDate: TDateTimeField;
    Query1RKNO: TStringField;
    Query1Memo: TStringField;
    Label2: TLabel;
    SuppIDEdit: TEdit;
    Label5: TLabel;
    SuppNameEdit: TEdit;
    Qtemp: TQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnQueryClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  EquipmentPurchasePutrace: TEquipmentPurchasePutrace;
  NDate:TDate;

implementation

{$R *.dfm}

uses main1;

procedure TEquipmentPurchasePutrace.btnQueryClick(Sender: TObject);
begin
  With Query1 do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('  Select  CGZLS.GSBH, CGZLS.CGNO, CGZLS.SBBH, TSCD_SB.VWPM ,TSCD_SB.ZWPM,TSCD_SB.DWBH    ');
    SQL.Add('          , isnull(CGZLS.Qty, 0.0) as CGQty,  KCRKS.RKQty, KCRKS.VNPrice,KCRKS.VNACC,KCRKS.USPrice,KCRKS.USACC, CGZLS.ZSBH as CG_ZSBH, KCRK.ZSBH as RK_ZSBH, zszl.zsjc_yw as SupName     ');
    SQL.Add('          , convert(smalldatetime,convert(varchar, CGZLS.CGDate,111)) as CGDate, CGZLS.YQDate ');
    SQL.Add('          , KCRK.USERDate as RKDate, KCRKS.RKNO,CGZLS.Memo     ');
    SQL.Add('  From (                                                       ');
    SQL.Add('        Select CGZLS.CGNO, CGZLS.SBBH, CGZLS.Qty, CGZL.CGDate  ');
    SQL.Add('               , CGZLS.YQDate, CGZL.GSBH, CGZL.ZSBH, CGZLs.Memo');
    SQL.Add('        From TSCD_CGZLS CGZLS                                  ');
    SQL.Add('        Left join TSCD_CGZL CGZL on CGZl.CGNO=CGZLS.CGNO       ');
    SQL.Add('  			 Where CGZL.GSBH = '''+main.edit2.text+'''  ');
    SQL.Add('                 and CGZLS.SBBH like '''+SBBHEdit.Text+'%''        ');
    SQL.Add('                 and convert(smalldatetime,convert(varchar,CGZL.CGDate,111)) between  ');
    SQL.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''' and  '''+formatdatetime('yyyy/MM/dd',DTP2.Date) +''' ');
    SQL.Add('        )  CGZLS                                                ');
    SQL.Add('  Left join (                                                    ');
    SQL.Add('              Select KCRKS.SBBH, sum(KCRKS.Qty) as RKQty,KCRKS.VNPrice  ');
    SQL.Add('                     , sum(KCRKS.VNACC) as VNACC ,KCRKS.USPrice, Sum(KCRKS.USACC) as USACC, MAX(KCRKS.RKNO) as RKNO, KCRK.ZSNO ');
    SQL.Add('              From  TSCD_KCRKS KCRKS                                ');
    SQL.Add('              Left join  TSCD_KCRK KCRK on KCRK.RKNO=KCRKS.RKNO     ');
    SQL.Add('              Where KCRKS.SBBH like '''+SBBHEdit.Text+'%''       ');
    SQL.Add('              Group by KCRKS.SBBH, KCRKS.VNPrice,KCRK.ZSNO,KCRKS.USPrice      ');
    SQL.Add('             ) KCRKS on KCRKS.ZSNO = CGZLS.CGNO and KCRKS.SBBH = CGZLS.SBBH   ');
    SQL.Add('  Left join TSCD_KCRK KCRK on KCRK.RKNO = KCRKS.RKNO  ');
    SQL.Add('  Left join TSCD_zszl ZSZL on cgzls.zsbh=zszl.zsdh  ');
    SQL.Add('  Left join TSCD_SB on CGZLS.SBBH = TSCD_SB.SBBH                              ');
    SQL.Add('  Where  1=1  ');
    if CGNOEdit.Text<>'' then
      SQL.Add('and CGZLS.CGNO like '''+CGNOEdit.Text+'%'' ');
    if VWPMEDit.Text<>'' then
      SQL.Add('and TSCD_SB.VWPM like ''%'+VWPMEDit.Text+'%'' ');
    if ZWPMEDit.Text<>'' then
      SQL.Add('and TSCD_SB.ZWPM like ''%'+ZWPMEDit.Text+'%'' ');
    if SuppIDEdit.Text<>'' then
      SQL.Add('and zszl.zsdh like '''+SuppIDEdit.Text+'%'' ');
    if SuppNameEdit.Text<>'' then
      SQL.Add('and zszl.zsjc_yw like ''%'+SuppNameEdit.Text+'%'' ');
    //funcobj.WriteErrorLog(sql.Text);
    active:=true;
  end;
end;

procedure TEquipmentPurchasePutrace.Button1Click(Sender: TObject);
var   a:string;
      eclApp,WorkBook:olevariant;
      i,j:integer;
begin
  if  Query1.active  then
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
        for   i:=0   to   Query1.fieldcount-1   do
        begin
           eclApp.Cells(1,i+1):=Query1.fields[i].FieldName;
        end;

        Query1.First;
        j:=2;
        while   not Query1.Eof   do
        begin
          for   i:=0   to  Query1.fieldcount-1  do
          begin
            eclApp.Cells(j,i+1):=Query1.Fields[i].AsString;
          end;
          Query1.Next;
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

procedure TEquipmentPurchasePutrace.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=Cafree;
end;

procedure TEquipmentPurchasePutrace.FormCreate(Sender: TObject);
begin
  with Qtemp do
  begin
    active:=false;
    sql.Clear;
    sql.add('select getdate() as NDate ');
    active:=true;
    NDate:=fieldbyname('NDate').Value;
    DTP1.Date:=date-30;
    DTP2.date:=date;
  end;
end;

procedure TEquipmentPurchasePutrace.FormDestroy(Sender: TObject);
begin
  EquipmentPurchasePutrace:=nil;
end;

end.
