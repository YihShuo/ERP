unit MaterialScan1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, ExtCtrls, Grids, DBGrids, Buttons, StdCtrls;

type
  TMaterialScan = class(TForm)
    Panel1: TPanel;
    DB: TDatabase;
    KCCL: TQuery;
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    Button1: TButton;
    BBT7: TBitBtn;
    bbt6: TBitBtn;
    DS1: TDataSource;
    DBGrid1: TDBGrid;
    Panel4: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    QKCCL: TQuery;
    TKCCL: TTable;
    QKCSM: TQuery;
    TKCSM: TTable;
    DS2: TDataSource;
    UpKCSM: TUpdateSQL;
    TKCSMZLBH: TStringField;
    TKCSMCLBH: TStringField;
    TKCSMXH: TStringField;
    TKCSMQty: TFloatField;
    TKCSMBARCODE: TStringField;
    KCCLZLBH: TStringField;
    KCCLCLBH: TStringField;
    KCCLXH: TStringField;
    KCCLQty: TFloatField;
    KCCLUSERDATE: TDateTimeField;
    KCCLUSERID: TStringField;
    KCCLMATCODE: TStringField;
    QKCSMZLBH: TStringField;
    QKCSMCLBH: TStringField;
    QKCSMDFL: TStringField;
    QKCSMXH: TStringField;
    QKCSMQty: TCurrencyField;
    QKCSMMATCODE: TStringField;
    QKCSMUSERDATE: TDateTimeField;
    QKCSMUSERID: TStringField;
    QKCSMYN: TStringField;
    BitBtn3: TBitBtn;
    OpenDialog1: TOpenDialog;
    procedure BitBtn1Click(Sender: TObject);
    procedure bbt6Click(Sender: TObject);
    procedure DBLogin(Database: TDatabase; LoginParams: TStrings);
    procedure BBT7Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MaterialScan: TMaterialScan;
  YSPath,Filepath:string;
  
  Myfile:Textfile;

implementation

uses ScanDeliver1;

{$R *.dfm}

procedure TMaterialScan.BitBtn1Click(Sender: TObject);
begin
ScanDeliver:=TScanDeliver.create(self);
ScanDeliver.show;
end;

procedure TMaterialScan.bbt6Click(Sender: TObject);
begin
try
DB.connected:=true;
if DB.connected then
  begin
    with QKCCL do   //轉訂單表
      begin
        active:=false;
        sql.clear;
        sql.add('select KCSMCL.ZLBH,KCSMCL.CLBH,KCSMCL.DFL+KCSMCL.XH as XH,KCSMCL.Qty,KCSMCL.MATCODE,KCSMCL.USERDATE,KCSMCL.USERID ');
        sql.add('from KCSMCL ');
        //sql.add('where exists(select DDBH from DDZL where convert(smalldatetime,DDZL.ShipDate)>(getdate()-30)');
        //sql.add('             and DDZL.ZLBH=KCSMCL.ZLBH) ');
        sql.add('where KCSMCL.YN='+''''+'1'+'''');
        sql.add('order by KCSMCL.ZLBH,KCSMCL.CLBH,KCSMCL.DFL ');
        active:=true;
      end;
    with TKCCL do
      begin
        active:=true;
        first;
        while not eof do
          begin
            delete;
           // next;
          end;
        while not QKCCL.Eof do
          begin
            insert;
            fieldbyname('MATCODE').Value:=QKCCL.fieldbyname('MATCODE').Value;
            fieldbyname('ZLBH').Value:=QKCCL.fieldbyname('ZLBH').Value;
            fieldbyname('CLBH').Value:=QKCCL.fieldbyname('CLBH').Value;
            fieldbyname('XH').Value:=QKCCL.fieldbyname('XH').Value;
            fieldbyname('Qty').Value:=QKCCL.fieldbyname('Qty').Value;
            fieldbyname('USERDATE').Value:=QKCCL.fieldbyname('USERDATE').Value;
            fieldbyname('USERID').Value:=QKCCL.fieldbyname('USERID').Value; 
            post;
            QKCCL.Next;
          end;
      end;
  end;
  DB.connected:=false;
  showmessage('Succeed.');
except
  showmessage('Can not do it, try later.');
end;
end;

procedure TMaterialScan.DBLogin(Database: TDatabase;
  LoginParams: TStrings);
var textfilevar:textfile;
susername,spassword,sline:string;
begin
assignfile(textfilevar,YSPath+'datalogin.txt');
reset(textfilevar);
readln(textfilevar,sline);
susername:=trim(copy(sline,0,pos('=',sline)-1));
spassword:=trim(copy(sline,pos('=',sline)+1,maxint));
closefile(textfilevar);
loginparams.Values['user name']:=susername;
loginparams.values['password']:=spassword;

end;

procedure TMaterialScan.BBT7Click(Sender: TObject);
var i:integer;
a:string;
begin
try
DB.connected:=true;
if DB.connected then
  begin
    TKCSM.active:=true;   //掃描結果上傳
    TKCSM.first;
    QKCSM.active:=false;
    QKCSM.active:=true;
    if TKCSM.recordcount>0 then
      begin
        while not TKCSM.eof do       //轉材料出庫資料
          begin
            a:=TKCSM.fieldbyname('BARCODE').value;
            //showmessage(a);
            if  QKCSM.FieldByName('YN').Value='2' then
              begin
                showmessage('Deliver twice. Be attention .');
              end
              else
                begin
                  QKCSM.Edit;
                  QKCSM.FieldByName('YN').Value:='2';
                  QKCSM.FieldByName('USERDATE').Value:=date;
                  UpKCSM.apply(ukmodify);
                end;
            TKCSM.delete;
            TKCSM.First;
          end;
      end;
  end;
  QKCSM.active:=false;
  TKCSM.active:=false;
  DB.connected:=false;
  showmessage('Succeed.');
except
  showmessage('Can not do it, try later.');
end;

end;

procedure TMaterialScan.Button1Click(Sender: TObject);
begin
with KCCL do
  begin
    active:=false;
    sql.clear;
    sql.add('select * from KCCL ');
    sql.add('where ZLBH like '+''''+edit1.Text+'%'+'''');
    sql.add('and CLBH like '+''''+edit2.Text+'%'+'''');
    sql.add('order by ZLBH,CLBH,XH ');
    active:=true;
  end;
end;

procedure TMaterialScan.BitBtn2Click(Sender: TObject);
var
i:integer;
s,a,b,c,d:string;
begin
TKCSM.Active:=true;
TKCCL.Active:=true;
if opendialog1.Execute then
  begin
    filepath:=opendialog1.FileName;
  end;
if trim(filepath)='' then
  begin
    exit;
  end;
assignfile(Myfile,filepath);

try
  reset(myfile);
except
  showmessage('Have wrong.');
end;

try
i:=0;
while not seekeof(myfile) do
  begin
    readln(myfile,s);
    s:=copy(trim(s),0,pos(',',trim(s))-1);
    if trim(s)<>'' then
      begin
        if TKCCL.Locate('MATCODE',vararrayof([trim(s)]),[]) then
          begin
            TKCSM.insert;
            a:=trim(copy(s,0,pos(' ',s)-1)) ;
            b:=trim(copy(s,pos(' ',s)+1,pos('&',s)-pos(' ',s)-1))  ;
            c:=trim(copy(s,pos('&',s)+1,pos('%',s)-pos('&',s)-1))  ;
            d:=trim(copy(s,pos('%',s)+1,length(s)-pos('%',s)))  ;
           { showmessage(s+'   '+a);
            showmessage(s+'   '+b);
            showmessage(s+'   '+c);
            showmessage(s+'   '+d);  }
            TKCSM.last;
            TKCSM.append;
            TKCSM.fieldbyname('ZLBH').Value:=a;
            TKCSM.fieldbyname('CLBH').Value:=b;
            TKCSM.fieldbyname('XH').Value:=c;
            TKCSM.fieldbyname('Qty').Value:=strtofloat(d);
            TKCSM.fieldbyname('BARCODE').Value:=s;
            TKCSM.post;
          end
          else
            begin
              showmessage(s+'  have wrong');
            end;
      end;
    inc(i);
  end;
append(myfile);
write(myfile,'Already write to database and keep.');
showmessage(inttostr(i)+'  records ok.');
closefile(myfile);


TKCSM.active:=false;
except
  showmessage('Have wrong.');
end;


end;

procedure TMaterialScan.FormCreate(Sender: TObject);
begin
YSpath:=extractfilepath(application.ExeName);
end;

end.
