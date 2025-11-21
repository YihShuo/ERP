unit DeliverTraceS1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, DB, DBTables, Grids, DBGrids, ComCtrls, StdCtrls,
  ExtCtrls,dateutils,comobj, GridsEh, DBGridEh;

type
  TDeliverTraceS = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Button1: TButton;
    Edit2: TEdit;
    EDIT1: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Button2: TButton;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    DS1: TDataSource;
    Query1: TQuery;
    PopupMenu1: TPopupMenu;
    Detail1: TMenuItem;
    DBGridEh1: TDBGridEh;
    Query1ZLBH: TStringField;
    Query1CGNO: TStringField;
    Query1Qty: TCurrencyField;
    Query1YQDate: TDateTimeField;
    Query1CFMDate: TDateTimeField;
    Query1CLBH: TStringField;
    Query1CGDate: TDateTimeField;
    Query1USACC: TFloatField;
    Query1VNAcc: TFloatField;
    Query1YWPM: TStringField;
    Query1DWBH: TStringField;
    Query1RKNO: TStringField;
    Query1EnQty: TCurrencyField;
    Label7: TLabel;
    DDBHEdit: TEdit;
    Label8: TLabel;
    BuyNoEdit: TEdit;
    Label6: TLabel;
    RKCombo: TComboBox;
    CheckMine: TCheckBox;
    CheckCacnel: TCheckBox;
    TWCKBox: TCheckBox;
    VNCKBox: TCheckBox;
    CheckBox1: TCheckBox;
    Query1ZWPM: TStringField;
    Query1CQDH: TStringField;
    Query1BUYNO: TStringField;
    Query1ARTICLE: TStringField;
    Query1ShipDate: TDateTimeField;
    Query1ADate: TDateTimeField;
    Label5: TLabel;
    Edit6: TEdit;
    Query1DType: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DeliverTraceS: TDeliverTraceS;

implementation

uses main1,FunUnit;

{$R *.dfm}

procedure TDeliverTraceS.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TDeliverTraceS.Button1Click(Sender: TObject);
begin
  with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('Select CGZLSS.*,DDZL.BUYNO,DDZL.ARTICLE,DDZL.ShipDate,SCZLDATE.ADate,DDZL.DDZT as DType from ( ');
    sql.add('select CGZLSS.ZLBH,CGZLSS.CGNO,sum(CGZLSS.Qty) as Qty,');
    sql.add('CGZLSS.YQDate,CGZLSS.CFMDate,CGZLSS.CLBH,CGZL.CGDate,');
    sql.add('CLZL.YWPM,CLZL.ZWPM,CLZL.DWBH,RK.RKNO,RK.EnQty,');
    sql.Add('Isnull(RK.USAcc,Max(CGZLS.USPrice)*sum(CGZLSS.Qty)) as USACC,isnull(RK.VNACC,Max(CGZLS.VNPrice)*sum(CGZLSS.Qty)) as VNAcc,CLZL.CQDH  ');
    sql.add('from CGZLSS ');
    sql.add('left join CGZL on CGZl.CGNO=CGZLSS.CGNO ');
    sql.add('left join CLZL on CLZl.CLDH=CGZLSS.CLBH');
    sql.Add('left join CGZLS on CGZLS.CGNO=CGZLSS.CGNO and CLZL.CLDH=CGZLS.CLBH');
    sql.add('left join (select max(KCRKS.RKNO) as RKNO,CGBH,CLBH,sum(Qty) as EnQty,Sum(KCRKS.USAcc)as USAcc,Sum(KCRKS.VNAcc) as VNAcc ');
    sql.Add('           from KCRKS group by CGBH,CLBH) RK on RK.CGBH=CGZLSS.ZLBH and RK.CLBH=CGZLSS.CLBH');
    sql.add('where CGZLS.Qty>0 ');
    if checkbox1.Checked then
    begin
      sql.add(' and convert(varchar,CGZL.CGDate,111) between '+''''+formatdatetime('yyyy/MM/dd',DTP1.date )+''' ');
      sql.add(' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.date )+'''');
    end;
    sql.add('and CGZL.CGLX=''2'' ');
    if CheckMine.Checked then
      sql.add(' and CGZLS.USERID='+''''+main.Edit1.Text+'''');
    if edit6.Text<>'' then
      sql.add('and CGZLS.CGNO like '''+edit6.Text+'%'' ');
    if ((TWCKBox.Checked=true) and (VNCKBox.Checked=false)) then
       sql.add(' and CLZL.CQDH=''TW''');
    if ((TWCKBox.Checked=false) and (VNCKBox.Checked=true)) then
       sql.add(' and CLZL.CQDH=''VN''');
    sql.add('and CGZLSS.CLBH like '''+edit1.Text+'%'' ');
    sql.add('and CLZL.YWPM like '''+'%'+edit2.Text+'%'' ');
    sql.add('and CLZL.YWPM like '''+'%'+edit3.Text+'%'' ');
    sql.add('and CLZL.YWPM like '''+'%'+edit4.Text+'%'' ');
    sql.add('and CGZLSS.ZLBH like '''+DDBHEdit.Text+'%'' ');
    sql.add('and CGZL.GSBH='''+main.edit2.Text+'''');
    sql.add('group by CGZLSS.ZLBH,CGZLSS.CGNO,CGZLSS.YQDate,CGZLSS.CFMDate,CGZLSS.CLBH,');
    sql.add('CGZL.CGDate,CLZL.YWPM,CLZL.ZWPM,CLZL.DWBH,RK.RKNO,RK.EnQty,RK.USAcc,RK.VNAcc,CLZL.CQDH  ) CGZLSS');
    sql.add('left join DDZL on DDZL.DDBH=CGZLSS.ZLBH ');
    sql.add('left join SCZLDATE on DDZL.DDBH=SCZLDATE.ZLBH ');
    sql.add('where 1=1 ');
    if RKCombo.ItemIndex=1 then
      sql.add(' and (CGZLSS.EnQty <CGZLSS.Qty or CGZLSS.EnQty is null)  ');
    if RKCombo.ItemIndex=2 then
      sql.add(' and CGZLSS.EnQty >=CGZLSS.Qty ');
    if RKCombo.ItemIndex=3 then
      sql.add(' and CGZLSS.EnQty is null');
    if BuyNoEdit.Text<>'' then
      sql.add('and DDZL.BUYNO like '''+BuyNoEdit.Text+'%'' ');
    if DDBHEdit.Text<>'' then
      sql.add('and CGZLSS.ZLBH like '''+DDBHEdit.Text+'%'' ');
    if CheckCacnel.Checked=false then
      sql.add(' and DDZL.DDZT is not null ');
    sql.add('order by CGZLSS.CGNO,CGZLSS.ZLBH,CGZLSS.CLBH  ');
    //funcObj.WriteErrorLog(sql.Text);
    active:=true;
  end;
end;

procedure TDeliverTraceS.FormCreate(Sender: TObject);
begin
  DTP1.Date:=startofthemonth(date);
  DTP2.Date:=date;
end;

procedure TDeliverTraceS.Button2Click(Sender: TObject);
var   a:string;
      eclApp,WorkBook:olevariant;
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
       eclApp.Visible:=True;   
       showmessage('Succeed');
      except
        on   F:Exception   do
          showmessage(F.Message);
      end;
    end;

end;

procedure TDeliverTraceS.FormDestroy(Sender: TObject);
begin
  DeliverTraceS:=nil;
end;

end.
