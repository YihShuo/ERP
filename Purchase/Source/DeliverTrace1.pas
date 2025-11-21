unit DeliverTrace1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, ComCtrls, StdCtrls, ExtCtrls,dateutils,
  Menus,comobj, GridsEh, DBGridEh;

type
  TDeliverTrace = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;                                                  
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Button1: TButton;
    Edit2: TEdit;
    EDIT1: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Button2: TButton;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    CheckBox1: TCheckBox;
    Edit6: TEdit;
    CheckMine: TCheckBox;
    RKCombo: TComboBox;
    DBGridEh1: TDBGridEh;
    PopupMenu1: TPopupMenu;
    Detail1: TMenuItem;
    Query1: TQuery;
    Query1buyno: TStringField;
    Query1CGNO: TStringField;
    Query1CLBH: TStringField;
    Query1ZLBH: TStringField;
    Query1article: TStringField;
    Query1YWPM: TStringField;
    Query1DWBH: TStringField;
    Query1Qty: TCurrencyField;
    Query1EnQty: TCurrencyField;
    Query1USACC: TFloatField;
    Query1VNAcc: TFloatField;
    Query1ADate: TDateTimeField;
    Query1CGDate: TDateTimeField;
    Query1YQDate: TDateTimeField;
    Query1CFMDate: TDateTimeField;
    Query1SHIPDATE: TDateTimeField;
    Query1RKNO: TStringField;
    Query1ZWPM: TStringField;
    Query1USERID: TStringField;
    Query1USERDate: TDateTimeField;
    DS1: TDataSource;
    Label5: TLabel;
    Label7: TLabel;
    BuyNoEdit: TEdit;
    Label8: TLabel;
    DDBHEdit: TEdit;
    Query1DType: TStringField;
    CheckCacnel: TCheckBox;
    TWCKBox: TCheckBox;
    VNCKBox: TCheckBox;
    Query1CQDH: TStringField;
    Label9: TLabel;
    ComboBox1: TComboBox;
    GroupBox1: TGroupBox;
    RB1: TRadioButton;
    RB2: TRadioButton;
    RB3: TRadioButton;
    Query1USPrice: TFloatField;
    Query1VNPrice: TCurrencyField;
    Query1ZSBH: TStringField;
    Query1zsjc: TStringField;
    Query1KHPO: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Detail1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure ComboBox1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DeliverTrace: TDeliverTrace;

implementation

uses DeliverTrace_Det1, main1, FunUnit;

{$R *.dfm}

procedure TDeliverTrace.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=cafree;
end;

procedure TDeliverTrace.Button1Click(Sender: TObject);
begin
  If ( (CheckBox1.Checked=false) and (BuyNoEdit.Text='') and (DDBHEdit.Text='') ) then
  begin
    Showmessage('Please input BuyNo or RY or Purchase Date ');
    Exit;
  end;
    with query1 do
    begin
      active:=false;
      sql.Clear;
      sql.add('select * from ( ');
      sql.add('select DDZL.buyno,CGZLS.CGNO,CGZLS.CLBH,IsNull(CGZLSS.ZLBH,'''') as ZLBH,DDZL.article,CLZL.YWPM,CLZL.DWBH,IsNull(CGZLSS.Qty,CGZLS.Qty) as Qty,RK.EnQty ,Isnull(RK.USAcc,CGZLS.Qty*CGZLS.USPrice) as USACC, ');
      sql.add('isnull(RK.VNACC,CGZLS.Qty*CGZLS.VNPrice) as VNAcc,SCZLDATE.ADate,CGZL.CGDate,IsNull(CGZLSS.YQDate,CGZLS.YQDate) as YQDate,IsNull(CGZLSS.CFMDate,CGZLS.CFMDate) as CFMDate,DDZL.SHIPDATE, ');
      sql.add('RK.RKNO,CLZL.ZWPM,CGZLS.USERID,CGZLS.USERDate,case when CGZL.CGLX=1 then DDZL.DDZT end as DType,CGZL.CGLX,CLZL.CQDH,USPrice,VNPrice,CGZL.ZSBH,ZSZL.zsjc,DDZL.KHPO ');
      sql.add('from CGZLS ');
      sql.add('left join CGZLSS on CGZLS.CLBH=CGZLSS.CLBH and CGZLS.CGNO=CGZLSS.CGNO ');
      sql.add('left join CGZL on CGZL.CGNO=CGZLS.CGNO ');
      sql.add('left join CLZL on CLZl.CLDH=CGZLS.CLBH ');
      sql.add('left join DDZL on CGZLSS.ZLBH = DDZL.DDBH ');
      sql.add('left join SCZLDATE on DDZL.DDBH=SCZLDATE.ZLBH ');
      sql.add('left join ZSZL on ZSZL.zsdh = CGZL.ZSBH ');
      sql.add('left join (select max(KCRKS.RKNO) as RKNO,CGBH,CLBH,KCRKS.DOCNO,sum(Qty) as EnQty,Sum(KCRKS.USAcc)as USAcc,Sum(KCRKS.VNAcc) as VNAcc');
      sql.add('from KCRKS');
      sql.add('left join KCRK on KCRK.RKNO=KCRKS.RKNO');
      sql.add('where KCRK.GSBH='+''''+main.edit2.Text+'''');
      sql.add('group by CGBH,CLBH,KCRKS.DOCNO');
      sql.add(') RK on RK.CLBH=CGZLS.CLBH and RK.CGBH=IsNull(CGZLSS.ZLBH,CGZLS.CGNO) and RK.DOCNO = CGZLS.CGNO');
      sql.Add('where CGZL.GSBH='+''''+main.edit2.Text+'''');
      sql.add(') CGZLS ');
      sql.add('where CGZLS.Qty>0');
      if checkbox1.Checked then
      begin
        sql.add(' and CONVERT(smalldatetime,CONVERT(varchar,CGZLS.CGDate,111)) between '+''''+formatdatetime('yyyy/MM/dd',DTP1.date )+'''');
        sql.add(' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.date )+'''');
      end;
      if CheckCacnel.Checked=false then
        sql.add(' and CGZLS.DType is not null ');
      if CheckMine.Checked then
        sql.add(' and CGZLS.USERID='+''''+main.Edit1.Text+'''');
      if RKCombo.ItemIndex=1 then
        sql.add(' and (CGZLS.EnQty <CGZLS.Qty or CGZLS.EnQty is null)  ');
      if RKCombo.ItemIndex=2 then
        sql.add(' and CGZLS.EnQty >=CGZLS.Qty ');
      if RKCombo.ItemIndex=3 then
        sql.add(' and CGZLS.EnQty is null');
      //
      if BuyNoEdit.Text<>'' then
        sql.add('and CGZLS.BUYNO like '''+BuyNoEdit.Text+'%'' ');
      if DDBHEdit.Text<>'' then
        sql.add('and CGZLS.ZLBH like '''+DDBHEdit.Text+'%'' ');

      if ComboBox1.ItemIndex = 0 then
        sql.add('and CGZLS.CGLX=''1'' ')
      else if ComboBox1.ItemIndex = 1 then
        sql.add('and CGZLS.CGLX=''2'' ')
      else if ComboBox1.ItemIndex = 2 then begin
        sql.add('and CGZLS.CGLX=''3'' ');
        if RB2.Checked=true then
          sql.Add('and CGZLS.DType=''REPL'' ');
        if RB3.Checked=true then
          sql.Add('and CGZLS.DType=''PREO'' ');
      end;
                                                                      
      sql.add('and CGZLS.CLBH like '''+edit1.Text+'%'' ');
      if edit2.Text<>'' then
      sql.add('and CGZLS.YWPM like ''%'+edit2.Text+'%'' ');
      if edit3.Text<>'' then
      sql.add('and CGZLS.YWPM like ''%'+edit3.Text+'%'' ');
      if edit4.Text<>'' then
      sql.add('and CGZLS.YWPM like ''%'+edit4.Text+'%'' ');
      if edit6.Text<>'' then
      sql.add('and CGZLS.CGNO like '''+edit6.Text+'%'' ');
      if ((TWCKBox.Checked=true) and (VNCKBox.Checked=false)) then
         sql.add(' and CGZLS.CQDH=''TW''');
      if ((TWCKBox.Checked=false) and (VNCKBox.Checked=true)) then
         sql.add(' and CGZLS.CQDH=''VN''');
      sql.add('order by CGZLS.CGNO,CGZLS.CLBH ');
      //funcobj.WriteErrorLog(sql.Text);
      //showmessage(SQL.Text);
      active:=true;
    end;

end;

procedure TDeliverTrace.FormCreate(Sender: TObject);
begin
  DTP1.Date:=startofthemonth(date);
  DTP2.Date:=date;
end;

procedure TDeliverTrace.Detail1Click(Sender: TObject);
begin
  DeliverTrace_Det:=TDeliverTrace_Det.create(self);
  DeliverTrace_Det.show;
end;

procedure TDeliverTrace.Button2Click(Sender: TObject);
var   a:string;
      eclApp,WorkBook:olevariant;
 //     xlsFileName:string;
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

procedure TDeliverTrace.FormDestroy(Sender: TObject);
begin
DeliverTrace:=nil;
end;

procedure TDeliverTrace.DBGridEh1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if ((Query1.FieldByName('Qty').value<Query1.FieldByName('EnQty').value) or (Query1.FieldByName('EnQty').IsNull))  then
  begin
    DBGridEh1.canvas.font.color:=clBlue;
  end;
  if (Query1.FieldByName('DType').AsString='')  then
  begin
    DBGridEh1.canvas.font.color:=clred;
  end;
end;

procedure TDeliverTrace.ComboBox1Change(Sender: TObject);
begin
  if ComboBox1.ItemIndex = 2 then begin
    RB1.Enabled := true;
    RB2.Enabled := true;
    RB3.Enabled := true;
  end
  else begin
    RB1.Enabled := false;
    RB2.Enabled := false;
    RB3.Enabled := false;
  end;
end;

end.
