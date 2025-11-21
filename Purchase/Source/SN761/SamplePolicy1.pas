unit SamplePolicy1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, DBTables, DB, StdCtrls, Grids, DBGrids, ExtCtrls,comobj,
  GridsEh, DBGridEh;

type
  TSamplePolicy = class(TForm)
    Panel2: TPanel;
    Panel3: TPanel;
    Button1: TButton;
    DS1: TDataSource;
    Query1: TQuery;
    UpSQL1: TUpdateSQL;
    Panel1: TPanel;
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
    bbt5: TBitBtn;
    bbt6: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Edit2: TEdit;
    Edit3: TEdit;
    Query1zsdh: TStringField;
    Query1Season: TStringField;
    Query1CR1: TStringField;
    Query1CR2: TStringField;
    Query1Presell: TStringField;
    Query1SMS: TStringField;
    Query1PT: TStringField;
    Query1USERID: TStringField;
    Query1USERDATE: TDateTimeField;
    Query1ZSYWJC: TStringField;
    Query1style: TStringField;
    Query1SamplePurchaser_Name: TStringField;
    Query1Country: TStringField;
    DBGridEh1: TDBGridEh;
    qry_tmp: TQuery;
    BBTT1: TBitBtn;
    btn2: TBitBtn;
    ComboBox1: TComboBox;
    Query1CR1_FreeQty: TCurrencyField;
    Query1CR1_Charge: TCurrencyField;
    Query1CR2_FreeQty: TCurrencyField;
    Query1CR2_charge: TCurrencyField;
    Query1Presell_FreeQty: TCurrencyField;
    Query1Presell_Charge: TCurrencyField;
    Query1SMS_FreeQty: TCurrencyField;
    Query1SMS_Charge: TCurrencyField;
    Query1PT_FreeQty: TCurrencyField;
    Query1PT_Charge: TCurrencyField;
    Query1EffectiveDate: TDateTimeField;
    Query1EffectiveDate_old: TDateTimeField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BB1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BB2Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure BB7Click(Sender: TObject);
    procedure BBT1Click(Sender: TObject);
    procedure BBT2Click(Sender: TObject);
    procedure BBT3Click(Sender: TObject);
    procedure BBT4Click(Sender: TObject);
    procedure bbt6Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure BBTT1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SamplePolicy: TSamplePolicy;

implementation

uses main1, SamplePolicy_Purchaser1, SamplePolicy_Style1;

{$R *.dfm}

procedure TSamplePolicy.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if BB5.enabled then
  begin
    messagedlg('You have to save data first.',mtwarning,[mbyes],0);
    action:=canone;
  end
  else
   action:=Cafree;
end;

procedure TSamplePolicy.BB1Click(Sender: TObject);
begin
//panel3.Visible:=true;
end;

procedure TSamplePolicy.FormCreate(Sender: TObject);
begin
query1.Active:=false;
end;

procedure TSamplePolicy.BB2Click(Sender: TObject);
begin
with query1 do
  begin
    cachedupdates:=true;
    requestlive:=true;
    Insert;
  end;
bb5.enabled:=true;
bb6.enabled:=true;
end;

procedure TSamplePolicy.BB4Click(Sender: TObject);
begin
with query1 do
  begin
    cachedupdates:=true;
    requestlive:=true;
    query1.edit;
  end;
ComboBox1.Enabled:=False;
bb5.enabled:=true;
bb6.enabled:=true;
end;

procedure TSamplePolicy.BB5Click(Sender: TObject);
var i:integer;
begin
try
    query1.first;
    for i:=1 to query1.RecordCount do
      begin
        case query1.updatestatus of
          usinserted:
            begin

            end;
          usmodified:
            begin
                  with qry_tmp do
                  begin
                    active:=false;
                    sql.Clear;
                    sql.Add(' select * from zszlSamplePayment ');
                    sql.Add(' where zsdh = '''+Query1.fieldbyname('zsdh').AsString+'''');
                    sql.Add('       and Season = '''+ComboBox1.Text+'''');
                    sql.Add('       and EffectiveDate = '''+Query1.fieldbyname('EffectiveDate_old').AsString+'''');
                    active:=true;
                    if eof then
                    begin
                      active:=false;
                      sql.Clear;
                      sql.Add(' insert zszlSamplePayment ');
                      sql.Add(' ( zsdh,Season ');
                      sql.Add('   ,CR1_FreeQty,CR2_FreeQty,Presell_FreeQty,SMS_FreeQty,PT_FreeQty ');
                      sql.Add('   ,CR1_Charge,CR2_Charge,Presell_Charge,SMS_Charge,PT_Charge ');
                      sql.Add('   ,CR1,CR2,Presell,SMS,PT,EffectiveDate ');
                      sql.Add('   ,USERDATE,USERID ');
                      sql.Add('  ) ');
                      sql.Add(' values ');
                      sql.Add(' (');
                      sql.Add(''''+Query1.fieldbyname('zsdh').AsString+'''');
                      sql.Add(','''+ComboBox1.Text+'''');
                      sql.Add(','''+Query1.fieldbyname('CR1_FreeQty').AsString+'''');
                      sql.Add(','''+Query1.fieldbyname('CR2_FreeQty').AsString+'''');
                      sql.Add(','''+Query1.fieldbyname('Presell_FreeQty').AsString+'''');
                      sql.Add(','''+Query1.fieldbyname('SMS_FreeQty').AsString+'''');
                      sql.Add(','''+Query1.fieldbyname('PT_FreeQty').AsString+'''');
                      sql.Add(','''+Query1.fieldbyname('CR1_Charge').AsString+'''');
                      sql.Add(','''+Query1.fieldbyname('CR2_Charge').AsString+'''');
                      sql.Add(','''+Query1.fieldbyname('Presell_Charge').AsString+'''');
                      sql.Add(','''+Query1.fieldbyname('SMS_Charge').AsString+'''');
                      sql.Add(','''+Query1.fieldbyname('PT_Charge').AsString+'''');
                      sql.Add(','''+Query1.fieldbyname('CR1').AsString+'''');
                      sql.Add(','''+Query1.fieldbyname('CR2').AsString+'''');
                      sql.Add(','''+Query1.fieldbyname('Presell').AsString+'''');
                      sql.Add(','''+Query1.fieldbyname('SMS').AsString+'''');
                      sql.Add(','''+Query1.fieldbyname('PT').AsString+'''');
                      sql.Add(','''+Query1.fieldbyname('EffectiveDate').AsString+'''');
                      sql.Add(','''+formatdatetime('yyyy/mm/dd',date)+'''');
                      sql.Add(','''+main.Edit1.text+'''');
                      sql.Add(' )');
                      execsql;
                    end
                    else
                    begin
                      active:=false;
                      sql.Clear;
                      if (Query1.fieldbyname('CR1_FreeQty').AsString='') and (Query1.fieldbyname('CR2_FreeQty').AsString='') and (Query1.fieldbyname('Presell_FreeQty').AsString='') and (Query1.fieldbyname('SMS_FreeQty').AsString='') and (Query1.fieldbyname('PT_FreeQty').AsString='') and (Query1.fieldbyname('CR1_Charge').AsString='')
                          and (Query1.fieldbyname('CR2_Charge').AsString='')
                          and (Query1.fieldbyname('Presell_Charge').AsString='')
                          and (Query1.fieldbyname('SMS_Charge').AsString='')
                          and (Query1.fieldbyname('PT_Charge').AsString='')
                          and (Query1.fieldbyname('EffectiveDate').AsString='')
                          then
                          begin
                            sql.Add(' Delete zszlSamplePayment ');
                            sql.Add(' where zsdh='''+Query1.fieldbyname('zsdh').AsString+'''');
                            sql.Add('       and Season='''+ComboBox1.Text+'''');
                            sql.Add('       and EffectiveDate='''+Query1.fieldbyname('EffectiveDate_old').AsString+'''');
                          end
                          else
                          begin
                            sql.Add(' update zszlSamplePayment set ');
                            sql.Add(' CR1_FreeQty='''+Query1.fieldbyname('CR1_FreeQty').AsString+'''');
                            sql.Add(' ,CR2_FreeQty='''+Query1.fieldbyname('CR2_FreeQty').AsString+'''');
                            sql.Add(' ,Presell_FreeQty='''+Query1.fieldbyname('Presell_FreeQty').AsString+'''');
                            sql.Add(' ,SMS_FreeQty='''+Query1.fieldbyname('SMS_FreeQty').AsString+'''');
                            sql.Add(' ,PT_FreeQty='''+Query1.fieldbyname('PT_FreeQty').AsString+'''');
                            sql.Add(' ,CR1_Charge='''+Query1.fieldbyname('CR1_Charge').AsString+'''');
                            sql.Add(' ,CR2_Charge='''+Query1.fieldbyname('CR2_Charge').AsString+'''');
                            sql.Add(' ,Presell_Charge='''+Query1.fieldbyname('Presell_Charge').AsString+'''');
                            sql.Add(' ,SMS_Charge='''+Query1.fieldbyname('SMS_Charge').AsString+'''');
                            sql.Add(' ,PT_Charge='''+Query1.fieldbyname('PT_Charge').AsString+'''');
                            sql.Add(' ,CR1='''+Query1.fieldbyname('CR1').AsString+'''');
                            sql.Add(' ,CR2='''+Query1.fieldbyname('CR2').AsString+'''');
                            sql.Add(' ,Presell='''+Query1.fieldbyname('Presell').AsString+'''');
                            sql.Add(' ,SMS='''+Query1.fieldbyname('SMS').AsString+'''');
                            sql.Add(' ,PT='''+Query1.fieldbyname('PT').AsString+'''');
                            sql.Add(' ,EffectiveDate='''+Query1.fieldbyname('EffectiveDate').AsString+'''');
                            sql.Add(' ,USERID='''+main.edit1.text+'''');
                            sql.Add(' ,USERDATE='''+formatdatetime('yyyy/mm/dd',date)+'''');
                            sql.Add(' where zsdh='''+Query1.fieldbyname('zsdh').AsString+'''');
                            sql.Add('       and Season='''+ComboBox1.Text+'''');
                            sql.Add('       and EffectiveDate='''+Query1.fieldbyname('EffectiveDate_old').AsString+'''');
                          end;
                       execsql;
                    end;
                  end;
            end;
        end;
        query1.next;
      end;
    query1.active:=false;
    query1.cachedupdates:=false;
    query1.requestlive:=false;
    query1.active:=true;
bb5.enabled:=false;
bb6.enabled:=false;
ComboBox1.Enabled:=true;
except
  Messagedlg('Have wrong, can not save!',mtwarning,[mbyes],0);
end;


end;

procedure TSamplePolicy.Button1Click(Sender: TObject);
begin
if ComboBox1.Text='' then
  begin
    showmessage('Pls Keyin season first ');
    //EDIT1.Focused:=True;
    abort;
  end;

with Query1 do
  begin
    active:=false;
    sql.clear;
    sql.add('select zszlSamplePayment.Season  ');
    sql.add('      ,zszlSamplePayment.CR1_FreeQty  ');
    sql.add('      ,zszlSamplePayment.CR2_FreeQty  ');
    sql.add('      ,zszlSamplePayment.Presell_FreeQty  ');
    sql.add('      ,zszlSamplePayment.SMS_FreeQty  ');
    sql.add('      ,zszlSamplePayment.PT_FreeQty  ');
    sql.add('      ,zszlSamplePayment.CR1_Charge  ');
    sql.add('      ,zszlSamplePayment.CR2_Charge  ');
    sql.add('      ,zszlSamplePayment.Presell_Charge  ');
    sql.add('      ,zszlSamplePayment.SMS_Charge  ');
    sql.add('      ,zszlSamplePayment.PT_Charge  ');
    sql.add('      ,zszlSamplePayment.CR1  ');
    sql.add('      ,zszlSamplePayment.CR2  ');
    sql.add('      ,zszlSamplePayment.Presell  ');
    sql.add('      ,zszlSamplePayment.SMS  ');
    sql.add('      ,zszlSamplePayment.PT  ');
    sql.add('      ,zszlSamplePayment.EffectiveDate  ');
    sql.add('      ,zszlSamplePayment.EffectiveDate as EffectiveDate_OLD ');
    sql.add('      ,zszlSamplePayment.USERID  ');
    sql.add('      ,zszlSamplePayment.USERDATE  ');
    sql.add('      ,ZSZL.zsdh,ZSZL.ZSYWJC,ZSZL.style,BUSERS.USERNAME as SamplePurchaser_Name,ZSZL.Country ');
    sql.add('from ZSZL ');
    sql.add('left join (select * from zszlSamplePayment ');
    sql.add('           where zszlSamplePayment.Season='+''''+ComboBox1.Text+'''');
    sql.add('           ) zszlSamplePayment on ZSZL.zsdh=zszlSamplePayment.zsdh');
    sql.add('left join BUSERS  on BUSERS.USERID=ZSZL.SamplePurchaser  ');
    sql.add('where 1=1  ');
//    if  ComboBox1.Text<>'' then
//        sql.add(' and (zszlSamplePayment.Season='+''''+ComboBox1.Text+''''+' or zszlSamplePayment.Season is null) '    );
    if  edit2.Text<>'' then
        sql.add(' and ZSZL.SamplePurchaser='+''''+edit2.Text+'''');
    if  edit3.Text<>'' then
        sql.add(' and ZSZL.Style='+''''+edit3.Text+'''');
    sql.add('and SamplePurchaser is not null ');
    sql.add('and SamplePurchaser<>'''' ');
    sql.add('and YN='+''''+'2'+'''');
    sql.add('order by ZSYWJC');
    active:=true;
  end;
//panel3.visible:=false;
//bb2.enabled:=true;
bb4.enabled:=true;
bb5.enabled:=false;
bb6.enabled:=false;
bb7.enabled:=true;
bbt1.enabled:=true;
bbt2.enabled:=true;
bbt3.enabled:=true;
bbt4.enabled:=true;
bbt5.enabled:=true;
bbt6.enabled:=true;
end;

procedure TSamplePolicy.BB6Click(Sender: TObject);
begin
with query1 do
  begin
    active:=false;
    cachedupdates:=false;
    requestlive:=false;
    active:=true;
  end;
ComboBox1.Enabled:=true;  
bb5.enabled:=false;
bb6.enabled:=false;
end;

procedure TSamplePolicy.BB7Click(Sender: TObject);
begin
close;
end;

procedure TSamplePolicy.BBT1Click(Sender: TObject);
begin
query1.First;
end;

procedure TSamplePolicy.BBT2Click(Sender: TObject);
begin
query1.prior;
end;

procedure TSamplePolicy.BBT3Click(Sender: TObject);
begin
query1.next;
end;

procedure TSamplePolicy.BBT4Click(Sender: TObject);
begin
query1.last;
end;

procedure TSamplePolicy.bbt6Click(Sender: TObject);
var
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
      showmessage('Succeed.');
      eclApp.Visible:=True;

      except
        on   F:Exception   do
          showmessage(F.Message);
      end;
    end;


end;

procedure TSamplePolicy.FormDestroy(Sender: TObject);
begin
SamplePolicy:=nil;
end;

procedure TSamplePolicy.BBTT1Click(Sender: TObject);
begin
SamplePolicy_Purchaser:=TSamplePolicy_Purchaser.create(self);
SamplePolicy_Purchaser.show;
end;

procedure TSamplePolicy.btn2Click(Sender: TObject);
begin
SamplePolicy_Style:=TSamplePolicy_Style.create(self);
SamplePolicy_Style.show;
end;

end.
