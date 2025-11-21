unit PlanDate1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBTables, DB, Grids, DBGrids, StdCtrls, Buttons, ExtCtrls,comobj
  ,ehlibbde,dateutils, GridsEh, DBGridEh;

type
  TPlanDate = class(TForm)
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
    bbt6: TBitBtn;
    Panel3: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    CBX2: TComboBox;
    CBX3: TComboBox;
    DBGrid1: TDBGridEh;
    Query1: TQuery;
    ZLList: TQuery;
    DS1: TDataSource;
    UpZL: TUpdateSQL;
    Edit2: TEdit;
    ZLListZLBH: TStringField;
    ZLListCDate: TDateTimeField;
    ZLListSDate: TDateTimeField;
    ZLListODate: TDateTimeField;
    ZLListADate: TDateTimeField;
    ZLListETC: TDateTimeField;
    ZLListINSP: TDateTimeField;
    ZLListEXF: TDateTimeField;
    ZLListETD: TDateTimeField;
    ZLListCSD: TDateTimeField;
    ZLListAssemble: TStringField;
    ZLListStitching: TStringField;
    ZLListCTQty: TIntegerField;
    ZLListUSERID1: TStringField;
    ZLListUSERDATE1: TDateTimeField;
    ZLListUSERID2: TStringField;
    ZLListUSERDATE2: TDateTimeField;
    ZLListYN: TStringField;
    ZLListXieXing: TStringField;
    ZLListSheHao: TStringField;
    ZLListShipDate: TDateTimeField;
    ZLListXieMing: TStringField;
    ZLListArticle: TStringField;
    ZLListPairs: TIntegerField;
    ZLListKHPO: TStringField;
    ZLListDDGB: TStringField;
    ZLListYSSM: TStringField;
    ZLListBZCC: TStringField;
    ZLListXTMH: TStringField;
    ZLListDDMH: TStringField;
    ZLListDAOMH: TStringField;
    ZLListSCYEAR: TStringField;
    ZLListSCMONTH: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BB1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BB7Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure BBT1Click(Sender: TObject);
    procedure BBT2Click(Sender: TObject);
    procedure BBT3Click(Sender: TObject);
    procedure BBT4Click(Sender: TObject);
    procedure bbt6Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PlanDate: TPlanDate;
  NDate,sdate,edate:Tdate;

implementation

uses main1;

{$R *.dfm}

procedure TPlanDate.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if BB5.enabled  then
  begin
    messagedlg('You have to save data Record of report first.',mtwarning,[mbyes],0);
    action:=canone;
  end
  else
    begin
      action:=cafree;
    end ;
end;

procedure TPlanDate.BB1Click(Sender: TObject);
begin
panel3.Visible:=true;
edit1.SetFocus;
end;

procedure TPlanDate.Button1Click(Sender: TObject);
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

with ZLList do
  begin
    active:=false;
    sql.Clear;
    sql.add('select SCZLDate.*,DDZL.XieXing,DDZL.SheHao,DDZL.ShipDate,XXZL.XieMing,XXZL.Article ,DDZL.Pairs');
    sql.add('       ,DDZl.KHPO,lbzls.YWSM as DDGB ,XXZL.YSSM,XXZL.BZCC,XXZL.XTMH,XXZL.DDMH,XXZL.DAOMH');
    sql.add('from SCZLDate');
    sql.add('left join ZLZL on ZLZL.ZLBH=SCZLDate.ZLBH');
    sql.add('left join DDZL on ZLZL.DDBH=DDZL.DDBH');
    sql.add('left join XXZL on XXZL.Xiexing=DDZL.XieXing and XXZL.SheHao=DDZL.SheHao'); 
    sql.add('left join KFZL on KFZl.KFDH=DDZl.KHBH ') ; 
    sql.add('left join LBZLS on lbzls.lb='+''''+'06'+''''+' and lbzls.lbdh=DDZL.DDGB ');
    sql.Add('where SCZLDate.ZLBH like '+''''+edit1.Text+'%'+'''');
    sql.add('and KFZL.KFJC like'+''''+edit2.Text+'%'+'''');
    sql.add('and convert(smalldatetime,convert(varchar,DDZL.ShipDate,111)) between ');
    sql.add(''''+formatdatetime('yyyy/MM/dd',sdate)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',edate)+'''');
    sql.add('and DDZL.GSBH='+''''+main.Edit2.Text+'''');
    sql.add('order by SCZLDate.ZLBH');
    //memo1.Text:=sql.Text;
    active:=true;
  end;
panel3.Visible:=false;
bb4.Enabled:=true;
bbt1.Enabled:=true;
bbt2.Enabled:=true;
bbt3.Enabled:=true;
bbt4.Enabled:=true;
bbt6.Enabled:=true;
end;

procedure TPlanDate.BB7Click(Sender: TObject);
begin
close;
end;

procedure TPlanDate.BB4Click(Sender: TObject);
begin
with ZLList do
  begin
    cachedupdates:=true;
    requestlive:=true;
  end;
bb5.Enabled:=true;
bb6.Enabled:=true;
end;

procedure TPlanDate.BB5Click(Sender: TObject);
begin
with ZLList do
  begin
    first;
    while not eof do
      begin
        if updatestatus=usmodified then
          begin
            edit;
            fieldbyname('USERID2').Value:=main.edit1.text;
            fieldbyname('USERDATE2').value:=Ndate;
            UPZL.Apply(ukmodify);
          end;
        next;
      end;
    requestlive:=false;
    cachedupdates:=false;
    active:=false;
    active:=true;
  end;
bb5.enabled:=false;
bb6.enabled:=false;
end;

procedure TPlanDate.BB6Click(Sender: TObject);
begin
with ZLList do
  begin
    CachedUpdates:=false;
    RequestLive:=false;
    Active:=false;
    active:=true;
  end;
bb5.enabled:=false;
bb6.Enabled:=false; 
end;

procedure TPlanDate.BBT1Click(Sender: TObject);
begin
ZLList.First;
end;

procedure TPlanDate.BBT2Click(Sender: TObject);
begin
ZLList.prior;
end;

procedure TPlanDate.BBT3Click(Sender: TObject);
begin
ZLList.next;
end;

procedure TPlanDate.BBT4Click(Sender: TObject);
begin
ZLList.last;
end;

procedure TPlanDate.bbt6Click(Sender: TObject);
var   a:string;
      eclApp,WorkBook:olevariant;
 //     xlsFileName:string;
      i,j:integer;
  begin
  if  ZLList.active  then
    begin
    try
      eclApp:=CreateOleObject('Excel.Application');
      WorkBook:=CreateOleObject('Excel.Sheet');
    except
      Application.MessageBox('No Mcrosoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
      Exit;
    end;
    try
        WorkBook:=eclApp.workbooks.Add;
        for   i:=0   to   ZLList.fieldcount-1    do
          begin
              eclApp.Cells(1,i+1):=ZLList.fields[i].FieldName;
          end;
        ZLList.First;
        j:=2;
        while   not   ZLList.Eof   do
          begin
            for   i:=0   to   ZLList.fieldcount-1   do
              begin
                eclApp.Cells(j,i+1):=ZLList.Fields[i].Value;
              end;
            ZLList.Next;
            inc(j);
          end;
    eclapp.columns.autofit;
      eclApp.Visible:=True;
      except
        on   F:Exception   do
          showmessage(F.Message);
      end;
    end;

end;

procedure TPlanDate.FormCreate(Sender: TObject); 
begin
with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select getdate() as NDate');
    active:=true;
    NDate:=fieldbyname('NDate').Value;
    active:=false;
  end;
end;

procedure TPlanDate.FormDestroy(Sender: TObject);
begin
PlanDate:=nil;
end;

end.
