unit LabelInbox1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, DBTables, DB, StdCtrls, Grids, DBGrids, ExtCtrls,dateutils;

type
  TLabelInbox = class(TForm)
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    Panel3: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Panel4: TPanel;
    DBGrid2: TDBGrid;
    XXCC: TQuery;
    DS2: TDataSource;
    UpSQL1: TUpdateSQL;
    SCLH: TQuery;
    DS1: TDataSource;
    DDZL: TQuery;
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
    DDZLDDBH: TStringField;
    DDZLXieXing: TStringField;
    DDZLSheHao: TStringField;
    DDZLARTICLE: TStringField;
    DDZLCCGB: TStringField;
    DDZLKHBH: TStringField;
    DDZLKHPO: TStringField;
    DDZLXieMing: TStringField;
    DDZLXXCC: TStringField;
    XXCCDDBH: TStringField;
    XXCCLHLabel: TStringField;
    XXCCDDCC: TStringField;
    XXCCXXCC: TStringField;
    XXCCQuantity: TIntegerField;
    UpSQL2: TUpdateSQL;
    Label1: TLabel;
    CBX2: TComboBox;
    Label7: TLabel;
    CBX3: TComboBox;
    DDZLPairs: TIntegerField;
    DDZLShipDate: TDateTimeField;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BB7Click(Sender: TObject);
    procedure DDZLAfterScroll(DataSet: TDataSet);
    procedure BBT1Click(Sender: TObject);
    procedure BBT2Click(Sender: TObject);
    procedure BBT3Click(Sender: TObject);
    procedure BBT4Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure DBGrid2KeyPress(Sender: TObject; var Key: Char);
    procedure BB6Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  LabelInbox: TLabelInbox;
  sdate,edate:Tdate;

implementation

uses main1;

{$R *.dfm}

procedure TLabelInbox.Button1Click(Sender: TObject);
var y,m:word;
begin
if (CBX2.text='')or (CBX3.text='')  then
  begin
    showmessage('You have to select the year and month first.');
    abort;
  end;
y:=strtoint(CBX2.Text);
m:=strtoint(CBX3.Text);
if (y>2999) or (y<1900) then
  begin
    showmessage('Pls key in right year');
    abort;
  end;
if (m=0) or (m>12) then
  begin
    showmessage('Pls key in right month');
    abort;
  end;
sdate:=encodedate(y,m,1);
edate:=endofthemonth(sdate);

with DDZL do
  begin
    active:=false;
    sql.clear;
    sql.add('select DDZL.* ,XXZl.XieMing,XXZl.CCGB as XXCC ');
    sql.add('from DDZL');
    sql.add('left join XXZL on XXZl.XieXing=DDZl.XieXing');
    sql.add(' and XXZL.SheHao=DDZl.SheHao');
    sql.add('left join ZLZL on ZLZL.ZLBH=DDZL.ZLBH ');
    sql.add('where DDZL.DDBH like '+''''+edit1.text+'%'+'''');
    sql.add(' and XXZl.XieMing like '+''''+'%'+edit2.Text+'%'+'''');
    sql.add(' and DDZl.KHBH like '+''''+edit3.Text+'%'+'''');
    sql.add('and DDZL.DDZT='+''''+'Y'+'''');
    sql.add('and ZLZL.CQDH='+''''+'LTY'+'''');
    sql.add('and Convert(smalldatetime,convert(varchar,DDZL.ShipDate)) between ');
    sql.add(''''+formatdatetime('yyyy/mm/dd',sdate)+'''');
    sql.add(' and '+''''+formatdatetime('yyyy/mm/dd',edate)+'''');
    sql.add('order by DDZL.DDBH');
    active:=true;
  end;
BB4.Enabled:=true;
BBt1.Enabled:=true;
BBt2.Enabled:=true;
BBt3.Enabled:=true;
BBt4.Enabled:=true;
SCLH.active:=true;
end;

procedure TLabelInbox.FormClose(Sender: TObject; var Action: TCloseAction);
begin  
if bb5.enabled then
  begin
    messagedlg('You have to save data first.',mtwarning,[mbyes],0);
    action:=canone;
  end
  else
   action:=Cafree;
end;

procedure TLabelInbox.BB7Click(Sender: TObject);
begin
close;
end;

procedure TLabelInbox.DDZLAfterScroll(DataSet: TDataSet);
var a,b,c,d:string;
begin
if DDZL.RecordCount>0 then
  begin

    //找出訂單尺寸及斬刀尺寸的對應關係
    a:=DDZL.fieldbyname('CCGB').value  ;
    b:=DDZL.fieldbyname('XXCC').value;
     //找出所有國別尺寸的對應關係
       //找出訂單鞋型國別尺寸的對應關係
    if a='K' then
      begin
        a:='XXZLS3.UK_Size as DDCC,';
        c:='XXZLS3.UK_Size';
      end;
    if a='J' then
    begin
      a:='XXZLS3.JPN_Size as DDCC,';
      c:='XXZLS3.JPN_Size';
    end;
    if a='E' then
    begin
      a:='XXZLS3.EUR_Size as DDCC,';
      c:='XXZLS3.EUR_Size';
    end;
    if a='F' then
    begin
      a:='XXZLS3.FRN_Size as DDCC,';
      c:='XXZLS3.FRN_Size';
    end;
    if a='M' then
    begin
      a:='XXZLS3.MX_Size as DDCC,';
      c:='XXZLS3.MX_Size';
    end;
    if a='U' then
    begin
      a:='XXZLS3.US_Size as DDCC,';
      c:='US_Size';
    end;
    if a='O' then
    begin
      a:='XXZLS3.OTH_Size as DDCC,';
      C:='XXZLS3.OTH_Size';
    end;
    if b='K' then
      b:='XXZLS3.UK_Size as XXCC,';
      d:='XXZLS3.UK_Size';
    if b='J' then
    begin
      b:='XXZLS3.JPN_Size as XXCC,';
      d:='XXZLS3.JPN_Size';
    end;
    if b='E' then
    begin
      b:='XXZLS3.EUR_Size as XXCC,';
      d:='XXZLS3.EUR_Size';
    end;
    if b='F' then
    begin
      b:='XXZLS3.FRN_Size as XXCC,';
      d:='XXZLS3.FRN_Size';
    end;
    if b='M' then
    begin
      b:='XXZLS3.MX_Size as XXCC,';
      d:='XXZLS3.MX_Size';
    end;
    if b='U' then
    begin
      b:='XXZLS3.US_Size as XXCC,';
      d:='XXZLS3.US_Size';
    end;
    if b='O' then
    begin
      b:=' XXZLS3.OTH_Size as XXCC,';
      d:='XXZLS3.OTH_Size';
    end;
       //尺寸明細
   with XXCC do
     begin
       active:=false;
       sql.Clear;
       //訂單及工具尺寸
       sql.add('select DDZLs.DDBH,SCLH.LHLabel,'+a+b+'DDZLs.Quantity ');
       sql.add('from DDZLs ');
       sql.add('left join XXZLS3  on  XXZLS3.XieXing=:XieXing and DDZLS.CC='+c);
       sql.Add('left join SCLH on SCLH.DDBH=DDZLS.DDBH and SCLH.XXCC='+d);
       sql.add('where DDZLs.DDBH=:DDBH');
       sql.add('and DDZLs.Quantity<>0  ');
       active:=true;
     end;
  end ;
end;

procedure TLabelInbox.BBT1Click(Sender: TObject);
begin
DDZL.First;
end;

procedure TLabelInbox.BBT2Click(Sender: TObject);
begin
DDZL.Prior;
end;

procedure TLabelInbox.BBT3Click(Sender: TObject);
begin
DDZL.next;
end;

procedure TLabelInbox.BBT4Click(Sender: TObject);
begin
DDZL.last;
end;

procedure TLabelInbox.BB4Click(Sender: TObject);
begin
with XXCC do
  begin
    cachedupdates:=true;
    requestlive:=true;
  end;

BB5.Enabled:=true;
BB6.Enabled:=true;
end;

procedure TLabelInbox.DBGrid2KeyPress(Sender: TObject; var Key: Char);
begin
if XXCC.Active then
  begin
    if key=#13 then
      begin
        XXCC.Next;
      end;
  end;
end;

procedure TLabelInbox.BB6Click(Sender: TObject);
begin
with XXCC do
  begin
    cachedupdates:=false;
    requestlive:=false;
  end;
with DDZL do
  begin
    active:=false;
    active:=true;
  end;
 BB5.Enabled:=false;
 BB6.Enabled:=false;
end;

procedure TLabelInbox.BB5Click(Sender: TObject);
begin
try
  with SCLH do
    begin
      XXCC.First;
      while not XXCC.Eof do
        begin
          if XXCC.updatestatus=usmodified then
            begin
              if ( XXCC.FieldByName('LHLabel').IsNull or (XXCC.FieldByName('LHLabel').value='')) then
                begin
                  if locate('DDBH;XXCC',vararrayof([XXCC.FieldByName('DDBH').Value,XXCC.FieldByName('XXCC').Value]),[]) then
                    begin
                      UpSQL2.Apply(ukdelete);
                    end;
                end
                else
                  begin
                    if locate('DDBH;XXCC',vararrayof([XXCC.FieldByName('DDBH').Value,XXCC.FieldByName('XXCC').Value]),[]) then
                      begin
                        Edit;
                        fieldbyname('LHLabel').Value:=trim(XXCC.fieldbyname('LHLabel').Value);
                        fieldbyname('USERDate').Value:=date;
                        fieldbyname('USERID').Value:=main.Edit1.text;
                        post;
                        UpSQL2.Apply(ukmodify);
                       end
                       else
                         begin
                           insert;
                           fieldbyname('DDBH').Value:=XXCC.fieldbyname('DDBH').Value;
                           fieldbyname('XXCC').Value:=XXCC.fieldbyname('XXCC').Value;
                           fieldbyname('LHLabel').Value:=trim(XXCC.fieldbyname('LHLabel').Value);
                           fieldbyname('USERDate').Value:=date;
                           fieldbyname('USERID').Value:=main.Edit1.text;
                           fieldbyname('YN').Value:='1';
                           post;
                           UpSQL2.Apply(ukinsert);     
                         end
                  end;
            end;

          XXCC.Next;
        end;
    end;
  XXCC.Active:=false;
  XXCC.requestlive:=false;
  XXCC.cachedupdates:=false;
  XXCC.active:=true;
  BB5.Enabled:=false;
  BB6.Enabled:=false;
  showmessage('Succeed.');
except
  showmessage('Have wrong.');
end;



end;

procedure TLabelInbox.FormDestroy(Sender: TObject);
begin
LabelInbox:=nil;
end;

end.
