unit MaterialSetP1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ComCtrls, ExtCtrls,
  dateutils, Menus, PrnDbgeh,comobj;

type
  TMaterialSetP = class(TForm)
    Panel1: TPanel;
    Label2: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    DBGridEh1: TDBGridEh;
    SCPTCL: TQuery;
    SCPTCLZLBH: TStringField;
    SCPTCLArticle: TStringField;
    SCPTCLXieMing: TStringField;
    SCPTCLCountry: TStringField;
    SCPTCLKFJC: TStringField;
    SCPTCLPairs: TIntegerField;
    SCPTCLC_MAIN: TDateTimeField;
    SCPTCLC_VICE: TDateTimeField;
    SCPTCLS_MAT: TDateTimeField;
    SCPTCLO_MAT: TDateTimeField;
    SCPTCLA_MAT: TDateTimeField;
    SCPTCLAll_OK: TStringField;
    SCPTCLUSERID: TStringField;
    SCPTCLUSERDate: TDateTimeField;
    SCPTCLYN: TStringField;
    DS1: TDataSource;
    UpPT: TUpdateSQL;
    CBX2: TComboBox;
    CBX3: TComboBox;
    Label1: TLabel;
    Label3: TLabel;
    PopupMenu1: TPopupMenu;
    N5: TMenuItem;
    N2: TMenuItem;
    N1: TMenuItem;
    N3: TMenuItem;
    PrintDBGridEh1: TPrintDBGridEh;
    N4: TMenuItem;
    Qtemp: TQuery;
    Label5: TLabel;
    Edit4: TEdit;
    Excel1: TMenuItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Excel1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MaterialSetP: TMaterialSetP;
  sdate,edate,NDate:tdate;

implementation

uses MaterialSetP_CL1, main1;

{$R *.dfm}

procedure TMaterialSetP.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=cafree;
end;

procedure TMaterialSetP.FormDestroy(Sender: TObject);
begin
MaterialSetP:=nil;
end;

procedure TMaterialSetP.Button1Click(Sender: TObject);
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

with SCPTCL do
  begin
    active:=false;
    sql.clear;
    sql.add('select SCPTCL.*,XXZL.Article,XXZL.XieMing,LBZLS.YWSM as Country,KFZL.KFJC,DDZL.Pairs');
    sql.add('from SCPTCL ');
    sql.add('left join DDZL on DDZl.ZLBH=SCPTCL.ZLBH ');
    sql.add('left join XXZL on XXZl.XieXing=DDZl.XieXing and XXZl.SheHao=DDZl.SheHao ');
    sql.add('left join KFZl on KFZL.KFDH=DDZl.KHBH ');  
    sql.add('left join LBZLS on LBZLS.LB='+''''+'06'+''''+' and LBZLS.LBDH=DDZL.DDGB');
    sql.add('left join SCZLDate on SCZLDate.ZLBH=SCPTCL.ZLBH');
    sql.Add('where SCPTCL.ZLBH like '+''''+edit1.Text+'%'+'''');
    sql.add('      and XXZl.Article like '+''''+'%'+edit2.text+'%'+'''');
    sql.add('      and SCZLdate.GSBH='+''''+main.edit2.text+'''');
    sql.add('      and XXZl.XieMing like '+''''+'%'+edit3.text+'%'+'''');
    sql.add('      and convert(smalldatetime,convert(varchar,DDZL.ShipDate,111)) between ');
    sql.add('      '''+formatdatetime('yyyy/MM/dd',sdate)+''''+'and '+''''+formatdatetime('yyyy/MM/dd',edate)+'''');
    sql.add('order by SCPTCL.ZLBH ');
    active:=true;
  end;

end;

procedure TMaterialSetP.N5Click(Sender: TObject);
begin
MaterialSetP_CL:=TMaterialSetP_CL.create(self);
MaterialSetP_CL.show;
end;

procedure TMaterialSetP.N1Click(Sender: TObject);
begin
with SCPTCL do
  begin
    requestlive:=true;
    cachedupdates:=true;
  end;
N2.Enabled:=true;
N3.Enabled:=true;
N4.Enabled:=true;
end;

procedure TMaterialSetP.N3Click(Sender: TObject);
begin

with SCPTCL do
  begin
    active:=false;
    requestlive:=false;
    cachedupdates:=false;
    active:=true;
  end;
N2.Enabled:=false;
N3.Enabled:=false;
N4.Enabled:=false;
end;

procedure TMaterialSetP.Button3Click(Sender: TObject);
begin
printdbgrideh1.Preview;
end;

procedure TMaterialSetP.N2Click(Sender: TObject);
begin
with SCPTCL do
  begin
    first;
    while not eof do
      begin
        if updatestatus=usmodified then
          begin
            edit;
            fieldbyname('USERID').Value:=main.edit1.Text;
            fieldbyname('USERDate').Value:=NDate;
            UpPT.Apply(ukmodify);
          end;
        next;
      end;
    active:=false;
    requestlive:=false;
    cachedupdates:=false;
    active:=true;
  end;
N2.Enabled:=false;
N3.Enabled:=false;
N4.Enabled:=false;
end;

procedure TMaterialSetP.N4Click(Sender: TObject);
var n:integer;
begin
with SCPTCL do
  begin
    first;
    while not eof do
      begin
        n:=0;
        if not fieldbyname('C_Main').isnull then
          begin
            if formatdatetime('yyyy/MM/dd',fieldbyname('C_Main').value)<=formatdatetime('yyyy/MM/dd',NDate) then
              begin
                n:=1;
              end;
          end;
        if not fieldbyname('C_VICE').isnull then
          begin
            if formatdatetime('yyyy/MM/dd',fieldbyname('C_VICE').value)<=formatdatetime('yyyy/MM/dd',NDate) then
              begin
                n:=n+1;
              end;
          end;
        if not fieldbyname('S_MAT').isnull then
          begin
            if formatdatetime('yyyy/MM/dd',fieldbyname('S_MAT').value)<=formatdatetime('yyyy/MM/dd',NDate) then
              begin
                n:=n+1;
              end;
          end;
        if not fieldbyname('O_MAT').isnull then
          begin
            if formatdatetime('yyyy/MM/dd',fieldbyname('O_MAT').value)<=formatdatetime('yyyy/MM/dd',NDate) then
              begin
                n:=n+1;
              end;
          end;
        if not fieldbyname('A_MAT').isnull then
          begin
            if formatdatetime('yyyy/MM/dd',fieldbyname('A_MAT').value)<=formatdatetime('yyyy/MM/dd',NDate) then
              begin
                n:=n+1;
              end;
          end ;
        if ((n=5) and fieldbyname('All_OK').IsNull) then
          begin
            edit;
            fieldbyname('All_OK').Value:='Y';
            UpPT.apply(ukmodify);
            post;
          end;
        next;
      end;
    active:=false;
    requestlive:=false;
    cachedupdates:=false;
    active:=true;
  end;
N2.Enabled:=false;
N3.Enabled:=false;
N4.Enabled:=false;
end;

procedure TMaterialSetP.FormCreate(Sender: TObject);
begin
with Qtemp do
  begin
    active:=false;
    sql.Clear;
    sql.add('select getdate() as NDate ');
    active:=true;
    NDate:=fieldbyname('NDate').value;
    active:=false;
  end;
end;

procedure TMaterialSetP.Button2Click(Sender: TObject);
var   a:string;
      eclApp,WorkBook:olevariant;
 //     xlsFileName:string;
      i,j:integer;
  begin
  if  SCPTCL.active  then
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
        for   i:=0   to   SCPTCL.fieldCount-1   do
          begin
              eclApp.Cells(1,i+1):=SCPTCL.fields[i].FieldName;
          end;
        SCPTCL.First;
        j:=2;
        while   not   SCPTCL.Eof   do
          begin
            for   i:=0   to   SCPTCL.FieldCount-1   do
              begin
                eclApp.Cells(j,i+1):=SCPTCL.Fields[i].Value;
              end;
            SCPTCL.Next;
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

procedure TMaterialSetP.Excel1Click(Sender: TObject);
begin
button2click(nil);
end;

end.
