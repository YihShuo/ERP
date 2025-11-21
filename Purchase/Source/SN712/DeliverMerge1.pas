unit DeliverMerge1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBTables, DB, StdCtrls, DBCtrls, Grids, DBGrids, Mask, ComCtrls,
  Buttons, ExtCtrls, GridsEh, DBGridEh, ShellAPI, DBGridEhImpExp;

type
  TDeliverMerge = class(TForm)
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
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    PC1: TPageControl;
    TS3: TTabSheet;
    Panel4: TPanel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    BBTT1: TBitBtn;
    DBGrid3: TDBGridEh;
    TS4: TTabSheet;
    Panel3: TPanel;
    Label7: TLabel;
    Label8: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label19: TLabel;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    BBTT2: TBitBtn;
    DBGrid4: TDBGridEh;
    YPZLZLS: TQuery;
    DS4: TDataSource;
    UPDet: TUpdateSQL;
    DS3: TDataSource;
    YPZLZL: TQuery;
    UpMas: TUpdateSQL;
    Query1: TQuery;
    Edit2: TEdit;
    Label5: TLabel;
    Edit3: TEdit;
    YPZLZLYPZLBH: TStringField;
    YPZLZLKFJD: TStringField;
    YPZLZLJiJie: TStringField;
    YPZLZLUSERID: TStringField;
    YPZLZLYN: TStringField;
    YPZLZLSYPZLBH: TStringField;
    YPZLZLSYPDH: TStringField;
    YPZLZLSUSERID: TStringField;
    YPZLZLSUSERDATE: TDateTimeField;
    YPZLZLSYN: TStringField;
    DBEdit2: TDBEdit;
    YPZLZLSARTICLE: TStringField;
    YPZLZLSKFJD: TStringField;
    YPZLZLINSDATE: TDateTimeField;
    YPZLZLSJiJie: TStringField;
    YPZLZLCALDATE: TDateTimeField;
    BitBtn1: TBitBtn;
    YPZLZLS1: TQuery;
    TabSheet1: TTabSheet;
    DBGridEh1: TDBGridEh;
    YPZLZLS11: TQuery;
    StringField11: TStringField;
    StringField12: TStringField;
    StringField13: TStringField;
    StringField14: TStringField;
    StringField15: TStringField;
    StringField16: TStringField;
    StringField17: TStringField;
    StringField18: TStringField;
    StringField19: TStringField;
    FloatField3: TFloatField;
    FloatField4: TFloatField;
    StringField20: TStringField;
    DS5: TDataSource;
    YPZLZLS11YPDH: TStringField;
    TabSheet2: TTabSheet;
    DBGridEh2: TDBGridEh;
    YPZLZLS2: TQuery;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    StringField8: TStringField;
    StringField9: TStringField;
    FloatField2: TFloatField;
    StringField10: TStringField;
    StringField21: TStringField;
    DS6: TDataSource;
    YPZLZLSPAIRS: TFloatField;
    YPZLZLS2USAGE: TFloatField;
    YPZLZLS2MJBH: TStringField;
    YPZLZLS2CSBH: TStringField;
    YPZLZLUSERDATE: TDateTimeField;
    YPZLZLPD: TStringField;
    SaveDialog1: TSaveDialog;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BB1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BB2Click(Sender: TObject);
    procedure BB3Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure BD2Click(Sender: TObject);
    procedure BD3Click(Sender: TObject);
    procedure BD4Click(Sender: TObject);
    procedure BD5Click(Sender: TObject);
    procedure BB7Click(Sender: TObject);
    procedure BD7Click(Sender: TObject);
    procedure BBT1Click(Sender: TObject);
    procedure BBT2Click(Sender: TObject);
    procedure BBT3Click(Sender: TObject);
    procedure BBT4Click(Sender: TObject);
    procedure BDT1Click(Sender: TObject);
    procedure BDT2Click(Sender: TObject);
    procedure BDT3Click(Sender: TObject);
    procedure BDT4Click(Sender: TObject);
    procedure BD6Click(Sender: TObject);
    procedure YPZLZLSAfterOpen(DataSet: TDataSet);
    procedure DBGrid3DblClick(Sender: TObject);
    procedure DBGrid3EditButtonClick(Sender: TObject);
    procedure DBGrid4EditButtonClick(Sender: TObject);
    procedure DBGrid3KeyPress(Sender: TObject; var Key: Char);
    procedure YPZLZLAfterOpen(DataSet: TDataSet);
    procedure PC1Change(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure BDT5Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure BBTT2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure DBGrid4DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure DBGrid3DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure bbt6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DeliverMerge: TDeliverMerge;
  NDate:TDate;

implementation

uses main1 , SampleMerge_CL1;

{$R *.dfm}

procedure TDeliverMerge.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if BB5.enabled  then
  begin
    messagedlg('You have to save data Record of report first.',mtwarning,[mbyes],0);
    PC1.ActivePage:=TS3;
    panel1.Visible:=true;
    panel6.Visible:=false;
    action:=canone;
  end
  else
    begin
      if BD5.enabled then
        begin
          messagedlg('You have to save data Report first.',mtwarning,[mbyes],0);
          PC1.ActivePage:=TS4;
          panel6.Visible:=true;
          panel1.Visible:=false;
          action:=canone;
        end
          else
            begin
              action:=Cafree;
            end;
    end;
end;

procedure TDeliverMerge.BB1Click(Sender: TObject);
begin
panel2.Visible:=true;
end;

procedure TDeliverMerge.Button1Click(Sender: TObject);
begin
with YPZLZL do
  begin
    active:=false;
    sql.Clear;
    sql.add('select YPZLZL.* ');
    sql.add('  from YPZLZL');
    sql.add('where PD ='+#39+'D'+#39);
    IF Edit1.TEXT<>'' THEN
       sql.add(' AND YPZLZL.YPZLBH LIKE '+''''+edit1.Text+'%'+'''');
    IF Edit2.TEXT<>'' THEN
       sql.add('and YPZLZL.JiJie like '+''''+edit2.Text+'%'+'''');
    IF Edit3.TEXT<>'' THEN
       sql.add('and YPZLZL.KFJD like '+''''+'%'+edit3.Text+'%'+'''');
    sql.add('and convert(smalldatetime,convert(varchar,YPZLZL.INSDATE,111)) between ');
    sql.add(''''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''''+' and  '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date) +'''');
    sql.add('order by YPZLZL.YPZLBH DESC');
    active:=true;
  end;
panel2.Visible:=false;
BB2.Enabled:=true;
BB3.Enabled:=true;
BB4.Enabled:=true;
BBT1.Enabled:=true;
BBT2.Enabled:=true;
BBT3.Enabled:=true;
BBT4.Enabled:=true;
YPZLZLS.Active:=true;
YPZLZLS11.Active:=true;
YPZLZLS2.Active:=true;
end;

procedure TDeliverMerge.FormCreate(Sender: TObject);
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
panel2.Visible:=true;
end;

procedure TDeliverMerge.BB2Click(Sender: TObject);
begin
with YPZLZL do
  begin
    requestlive:=true;
    cachedupdates:=true;
    insert;
  end;
//BBTT1.Visible:=true;
BB5.Enabled:=true;
BB6.Enabled:=true;
//dbgrid3.columns[1].ButtonStyle:=cbsEllipsis;
end;

procedure TDeliverMerge.BB3Click(Sender: TObject);
begin
if YPZLZLS.recordcount=0 then
  begin
    with YPZLZL do
      begin
        requestlive:=true;
        cachedupdates:=true;
        edit;
        fieldbyname('YN').Value:='0';
      end;
  end
    else
      begin
        showmessage('Pls delete the Deliver Detail first.')
      end;
//BBTT1.Visible:=true;
BB5.Enabled:=true;
BB6.Enabled:=true;
//dbgrid3.columns[1].ButtonStyle:=cbsEllipsis;
end;

procedure TDeliverMerge.BB4Click(Sender: TObject);
begin
with YPZLZL do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
//BBTT1.Visible:=true;
BB5.Enabled:=true;
BB6.Enabled:=true;
//dbgrid3.columns[1].ButtonStyle:=cbsEllipsis;
end;

procedure TDeliverMerge.BB5Click(Sender: TObject);
var y,m,a:string;
i:integer;
begin
with query1 do          //取服務器的年月值
  begin
    active:=false;
    sql.Clear;
    sql.Add('select year(getdate()) as FY,month(getdate()) as FM ,getdate() as NDate');
    active:=true;
    y:=fieldbyname('FY').asstring;
    m:=fieldbyname('FM').asstring;
    Ndate:=fieldbyname('NDate').value;
    active:=false;
  end;
if length(m)<2 then
  m:='0'+m;  

try
    YPZLZL.first;
    for i:=1 to YPZLZL.RecordCount do
      begin
        case YPZLZL.updatestatus of
          usinserted:
            begin
              if YPZLZL.fieldbyname('JiJie').isnull then
                begin
                  YPZLZL.delete;
                end
                 else
                   begin
                     with query1 do    //計算領料單流水號
                       begin
                         active:=false;
                         sql.Clear;
                         sql.Add('select YPZLBH from YPZLZL   where YPZLBH like '+''''+y+m+'%'+'''');
                         sql.add('order by YPZLBH');
                         active:=true;
                         if recordcount >0 then
                           begin
                             last;
                             a:=fieldbyname('YPZLBH').AsString;
                             a:=copy(a,7,5);
                             a:=inttostr(strtoint(a)+1);
                             while length(a)<5 do
                               begin
                                 a:='0'+a;
                               end;
                           end
                             else
                               begin
                                 a:='00001';
                               end;
                         a :=y+m+a;
                         active:=false;
                       end;
                     YPZLZL.edit;
                     YPZLZL.fieldbyname('YPZLBH').Value:=a;
                     //YPZLZL.fieldbyname('GSBH').Value:=main.Edit2.text;
                     YPZLZL.FieldByName('userID').Value:=main.edit1.text;
                     YPZLZL.FieldByName('userdate').Value:=formatdatetime('yyyy/MM/dd',Ndate);
                     YPZLZL.FieldByName('INSdate').Value:=formatdatetime('yyyy/MM/dd',Ndate);
                     //YPZLZL.FieldByName('CFMID').Value:='NO';
                     YPZLZL.FieldByName('YN').Value:='1';
                     YPZLZL.FieldByName('PD').Value:='D';
                     upMas.apply(ukinsert);
                   end;
            end;
          usmodified:
             begin
              if YPZLZL.fieldbyname('YN').value='0'then
                begin
                  YPZLZLS1.active:=false;
                  YPZLZLS1.sql.Clear;
                  YPZLZLS1.sql.add('delete YPZLZLS1 where YPZLBH=:YPZLBH ');
                  YPZLZLS1.execsql;
                  YPZLZLS1.sql.Clear;
                  YPZLZLS1.sql.add('delete YPZLZLS2 where YPZLBH=:YPZLBH ');
                  YPZLZLS1.execsql;
                  upMas.apply(ukdelete);
                end
                else
                  begin

                            YPZLZL.edit;
                            YPZLZL.FieldByName('userID').Value:=main.edit1.text;
                            YPZLZL.FieldByName('userdate').Value:=formatdatetime('yyyy/MM/dd',Ndate);
                            upMas.apply(ukmodify);


                  end;
             end;
        end;
       YPZLZL.next;
      end;
YPZLZL.active:=false;
YPZLZL.cachedupdates:=false;
YPZLZL.requestlive:=false;
YPZLZL.active:=true;
bb5.enabled:=false;
bb6.enabled:=false;
//BBTT1.Visible:=false;
//dbgrid3.columns[1].ButtonStyle:=cbsnone;
except
  Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
end;


end;

procedure TDeliverMerge.BB6Click(Sender: TObject);
begin
with YPZLZL do
  begin
    active:=false;
    requestlive:=false;
    cachedupdates:=false;
    active:=true;
  end;
bb5.enabled:=false;
bb6.enabled:=false;
//BBTT1.Visible:=false;
//dbgrid3.columns[1].ButtonStyle:=cbsnone;
end;

procedure TDeliverMerge.BD2Click(Sender: TObject);
begin
if YPZLZL.RequestLive then
  begin
    showmessage('Pls save Master data first.');
    PC1.ActivePage:=TS3;
    panel6.visible:=false;
    panel1.visible:=true;
    abort;
  end;

with YPZLZLS do
  begin
    requestlive:=true;
    cachedupdates:=true;
    insert;
  end;
BBTT2.Visible:=true;
BD5.Enabled:=true;
BD6.Enabled:=true;
dbgrid4.columns[0].ButtonStyle:=cbsEllipsis;

end;

procedure TDeliverMerge.BD3Click(Sender: TObject);
begin
if YPZLZL.RequestLive then
  begin
    showmessage('Pls save Master data first.');
    PC1.ActivePage:=TS3;
    panel6.visible:=false;
    panel1.visible:=true;
    abort;
  end;

with YPZLZLS do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
    fieldbyname('YN').Value:='0';
  end;
BBTT2.Visible:=true;
BD5.Enabled:=true;
BD6.Enabled:=true;
dbgrid4.columns[0].ButtonStyle:=cbsEllipsis;
end;

procedure TDeliverMerge.BD4Click(Sender: TObject);
begin
if YPZLZL.RequestLive then
  begin
    showmessage('Pls save Master data first.');
    PC1.ActivePage:=TS3;
    panel6.visible:=false;
    panel1.visible:=true;
    abort;
  end;

with YPZLZLS do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
BBTT2.Visible:=true;
BD5.Enabled:=true;
BD6.Enabled:=true;
dbgrid4.columns[0].ButtonStyle:=cbsEllipsis;
end;

procedure TDeliverMerge.BD5Click(Sender: TObject);
var i:integer;
begin
with YPZLZLS do
  begin
    first;
    while not YPZLZLS.Eof do
      begin
        if YPZLZLS.FieldByName('PAIRS').IsNull  then
          begin
            showmessage('The Pairs can not be empty.');
            abort;
          end;  
        next;
      end;
  end;

try
    YPZLZLS.first;
    for i:=1 to YPZLZLS.RecordCount do
      begin
        case YPZLZLS.updatestatus of
          usinserted:
            begin
              if YPZLZLS.fieldbyname('YPDH').isnull then
                begin
                  YPZLZLS.delete;
                end
                 else
                   begin
                     YPZLZLS.edit;
                     YPZLZLS.fieldbyname('YPZLBH').Value:=YPZLZL.fieldbyname('YPZLBH').Value;
                     YPZLZLS.FieldByName('userID').Value:=main.edit1.text;
                     YPZLZLS.FieldByName('userdate').Value:=formatdatetime('yyyy/MM/dd',Ndate);
                     //YPZLZLS.FieldByName('BJLX').Value:='1';
                     YPZLZLS.FieldByName('YN').Value:='1';
                     upDet.apply(ukinsert);
                   end;
            end;
          usmodified:
             begin
              if YPZLZLS.fieldbyname('YN').value='0'then
                begin
                  UpDet.apply(ukdelete);
                end
                else
                  begin
                    YPZLZLS.edit;
                    YPZLZLS.FieldByName('userID').Value:=main.edit1.text;
                    YPZLZLS.FieldByName('userdate').Value:=formatdatetime('yyyy/MM/dd',Ndate);
                    upDet.apply(ukmodify);
                  end;
              end;
        end;
        YPZLZLS.next;
      end;
YPZLZLS.active:=false;
YPZLZLS.cachedupdates:=false;
YPZLZLS.requestlive:=false;
YPZLZLS.active:=true;
bb6.enabled:=false;
BBTT2.Visible:=false;
BD5.Enabled:=false;
BD6.Enabled:=false;
dbgrid4.columns[0].ButtonStyle:=cbsNone;
except
  Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
end;

end;

procedure TDeliverMerge.BB7Click(Sender: TObject);
begin
close;
end;

procedure TDeliverMerge.BD7Click(Sender: TObject);
begin
close;
end;

procedure TDeliverMerge.BBT1Click(Sender: TObject);
begin
YPZLZL.First;
end;

procedure TDeliverMerge.BBT2Click(Sender: TObject);
begin
YPZLZL.prior;
end;

procedure TDeliverMerge.BBT3Click(Sender: TObject);
begin
YPZLZL.next;
end;

procedure TDeliverMerge.BBT4Click(Sender: TObject);
begin
YPZLZL.last;
end;

procedure TDeliverMerge.BDT1Click(Sender: TObject);
begin
YPZLZLS.First;
end;

procedure TDeliverMerge.BDT2Click(Sender: TObject);
begin
YPZLZLS.prior;
end;

procedure TDeliverMerge.BDT3Click(Sender: TObject);
begin
YPZLZLS.next;
end;

procedure TDeliverMerge.BDT4Click(Sender: TObject);
begin
YPZLZLS.last;
end;

procedure TDeliverMerge.BD6Click(Sender: TObject);
begin
with YPZLZLS do
  begin
    active:=false;
    requestlive:=false;
    cachedupdates:=false;
    active:=true;
  end;
BBTT2.Visible:=false;
BD5.Enabled:=false;
BD6.Enabled:=false;
dbgrid4.columns[0].ButtonStyle:=cbsNone;
end;

procedure TDeliverMerge.YPZLZLSAfterOpen(DataSet: TDataSet);
begin
BD2.Enabled:=true;
BD3.Enabled:=true;
BD4.Enabled:=true;
BDT1.Enabled:=true;
BDT2.Enabled:=true;
BDT3.Enabled:=true;
BDT4.Enabled:=true;
BDT5.Enabled:=true;
//BDT6.Enabled:=true;
if (NDate-YPZLZL.FieldByName('USERDATE').value)>90  then
  begin
    BD2.Enabled:=false;
    BD3.Enabled:=false;
    BD4.Enabled:=false;
  end;

BD5.Enabled:=false;
BD6.Enabled:=false;
end;

procedure TDeliverMerge.DBGrid3DblClick(Sender: TObject);
begin
if  YPZLZL.Active then
  begin
    if  (YPZLZL.recordcount>0) then
      begin
        PC1.ActivePage:=TS4;
        panel1.Visible:=false;
        panel6.Visible:=true;
      end;
  end;
end;



procedure TDeliverMerge.DBGrid3EditButtonClick(Sender: TObject);
begin
//BBTT1Click(nil);
end;



procedure TDeliverMerge.DBGrid4EditButtonClick(Sender: TObject);
begin
BBTT2click(nil);
end;

procedure TDeliverMerge.DBGrid3KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
    DBGrid3DblClick(nil);
end;

procedure TDeliverMerge.YPZLZLAfterOpen(DataSet: TDataSet);
begin
BB5.Enabled:=false;
BB6.Enabled:=false;
BD5.Enabled:=false;
BD6.Enabled:=false;
end;

procedure TDeliverMerge.PC1Change(Sender: TObject);
begin
if PC1.ActivePage=TS4 then
  begin
    panel6.visible:=true;
    panel1.visible:=false;
    bbt6.Enabled:=false;
  end
else
  if PC1.ActivePage=TabSheet2 then
  begin
    panel6.visible:=false;
    panel1.visible:=true;
    bbt6.Enabled:=true;
  end
  else
  begin
    panel6.visible:=false;
    panel1.visible:=true;
    bbt6.Enabled:=false;
  end;
end;

procedure TDeliverMerge.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
edit2.SetFocus;
end;

procedure TDeliverMerge.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
edit3.SetFocus;
end;

procedure TDeliverMerge.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
button1click(nil);
end;

procedure TDeliverMerge.BDT5Click(Sender: TObject);
begin
if YPZLZLS.RequestLive then
  begin
    showmessage('Pls save data first.');
    abort;
  end
    else
      begin

      end;
end;

procedure TDeliverMerge.FormDestroy(Sender: TObject);
begin
DeliverMerge:=nil;
end;

procedure TDeliverMerge.BBTT2Click(Sender: TObject);
begin
SampleMerge_CL:=TSampleMerge_CL.create(self);
SampleMerge_CL.label5.Caption := 'FMDeliverMerge';
SampleMerge_CL.show;
end;

procedure TDeliverMerge.BitBtn1Click(Sender: TObject);
var J:Variant;
begin
try
with YPZLZLS1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select * from YPZLZLS where YPZLBH=:YPZLBH ');
    active:=true;
    if YPZLZLS1.RecordCount=0 then
      begin
        showmessage('No any Sample Order . Pls select  sample order first.');
        abort;
      end;
    active:=false;
    sql.Clear;
    sql.add('select * from YPZLZLS1 where YPZLBH=:YPZLBH  ');
    active:=true;
    if recordcount>0 then
      begin
        if messagedlg('You want to recalucate  again?',mtconfirmation,[mbYes,MbNo],0)=mrYes then
          begin
            active:=false;
            sql.Clear;
            sql.add('delete YPZLZLS1 where YPZLBH=:YPZLBH ');
            execsql;
            sql.Clear;
            sql.add('delete YPZLZLS2 where YPZLBH=:YPZLBH ');
            execsql;
          end
          else
            begin
              abort;
            end;
      end;
    active:=false;
    sql.clear;
    sql.add('delete YPZLZLS1 where YPZLBH=:YPZLBH  ');
    sql.add('  insert YPZLZLS1 ');
    sql.add('select  :YPZLBH as YPZLBH,YPDH,xh,BWBH,BWLB,CLBH,CSBH,LOSS,CLSL,CLDJ,Currency,Rate,Remark,JGZWSM,JGYWSM');
    sql.add('from ypzls');
    sql.add('where exists (select *  from  YPZLZLS WHERE  ypzls.YPDH=YPZLZLS.YPDH AND YPZLZLS.YPZLBH=:YPZLBH   ) ');
    //新增母件
    sql.add('delete YPZLZLS2 where YPZLBH=:YPZLBH');
    sql.add('  insert YPZLZLS2 ');
    sql.add('select  YPZLZLS.YPZLBH,ypzls.YPDH,ypzls.BWBH,ypzls.CSBH,');
    sql.add( ''''+'ZZZZZZZZZZ'+''''+' as MJBH,ypzls.CLBH,CLZL.CLZMLB as ZMLB,');
    sql.add(''''+'ZZZZZZ'+''''+' as SIZE, round(YPZLZLS.Pairs*ypzls.CLSL+0.0499,1) as CLSL,ypzls.CLSL as  USAGE ,');
    sql.add(''''+main.edit1.text+''''+'  as USERID,');
    sql.add(''''+formatdatetime('yyyy/MM/dd',date)+''''+' as USERDATE,');
    sql.add(''''+'2'+''''+' as YN ');
    sql.add(' from YPZLZLS ');
    sql.add(' left join ypzls on ypzls.YPDH=YPZLZLS.YPDH ');
    sql.add(' left join CLZL on CLZL.CLDH=ypzls.CLBH ');
    sql.add(' where YPZLZLS.YPZLBH=:YPZLBH   ');
{    //新增子件
    sql.add('  insert YPZLZLS2 ');
    sql.add('select  YPZLZLS.YPZLBH,ypzls.YPDH,ypzls.BWBH,ypzls.CSBH,');
    sql.add(' ypzls.CLBH  as MJBH,CLZHZL.CLDH1 AS CLBH,CLZL.CLZMLB as ZMLB,');
    sql.add(''''+'ZZZZZZ'+''''+' as SIZE, round(YPZLZLS.Pairs*ypzls.CLSL*CLZHZL.SYL+0.0499,1) as CLSL,ypzls.CLSL* CLZHZL.SYL as  USAGE ,');
    sql.add(''''+main.edit1.text+''''+'  as USERID,');
    sql.add(''''+formatdatetime('yyyy/MM/dd',date)+''''+' as USERDATE,');
    sql.add(''''+'2'+''''+' as YN ');
    sql.add(' from YPZLZLS ');
    sql.add(' INNER join ypzls on ypzls.YPDH=YPZLZLS.YPDH ');
    sql.add(' INNER  JOIN CLZHZL   ON ypzls.CLBH = CLZHZL.cldh ');
    sql.add(' left join CLZL on CLZL.CLDH=CLZHZL.CLDH1 ');
    sql.add(' where YPZLZLS.YPZLBH=:YPZLBH   '); }

    execsql;

  end;
with YPZLZLS1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('update  YPZLZL set CALDATE= '+''''+formatdatetime('yyyy/MM/dd',date)+'''' +'  where YPZLBH=:YPZLBH ');
    execsql;
  end;
j:=YPZLZL.fieldbyname('YPZLBH').Value;
YPZLZL.Active:= false;
YPZLZL.Active:= true;

IF  J<>' ' THEN   YPZLZL.Locate('YPZLBH',J,[]) ;

  showmessage('Calculate finished.');
except
   showmessage('Have wrong.');
end;

end;

procedure TDeliverMerge.DBGrid4DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
 if YPZLZLS.FieldByName('YN').value='0' then
  begin
    dbgrid4.canvas.font.color:=clred;
    dbgrid4.defaultdrawcolumncell(rect,datacol,column,state);
  end;
end;

procedure TDeliverMerge.DBGrid3DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
if YPZLZL.FieldByName('YN').value='0' then
  begin
    dbgrid3.canvas.font.color:=clred;
    dbgrid3.defaultdrawcolumncell(rect,datacol,column,state);
  end;
end;

procedure TDeliverMerge.bbt6Click(Sender: TObject);
var
  ExpClass:TDBGridEhExportClass;
  Ext:String;
begin
  SaveDialog1.FileName := 'ex';
if (DBGridEh2 is TDBGridEh) then
  if SaveDialog1.Execute then
  begin
    case SaveDialog1.FilterIndex of
      1: begin ExpClass := TDBGridEhExportAsXLS; Ext := 'xls'; end;
      2: begin ExpClass := TDBGridEhExportAsCSV; Ext := 'csv'; end;
      3: begin ExpClass := TDBGridEhExportAsHTML; Ext := 'htm'; end;
      4: begin ExpClass := TDBGridEhExportAsRTF; Ext := 'rtf'; end;
      5: begin ExpClass := TDBGridEhExportAsText; Ext := 'txt'; end;
    else
      ExpClass := nil; Ext := '';
    end;
    if ExpClass <> nil then
    begin
      if UpperCase(Copy(SaveDialog1.FileName,Length(SaveDialog1.FileName)-2,3)) <> UpperCase(Ext) then
        SaveDialog1.FileName := SaveDialog1.FileName + '.' + Ext;
      SaveDBGridEhToExportFile(ExpClass,DBGridEh2,SaveDialog1.FileName,true);
      if Application.MessageBox('Do you want to open the exported file?','Open file',MB_YESNO) = IDYES then
        shellexecute(handle,'open',pchar(SaveDialog1.FileName),nil,nil,SW_SHOWNORMAL);
    end;
  end;
end;

end.
