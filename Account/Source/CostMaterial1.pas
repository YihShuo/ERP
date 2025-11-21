unit CostMaterial1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls,dateutils,
  comobj,Menus, ComCtrls, Buttons, GridsEh, DBGridEh,EhlibBDE;

type
  TCostMaterial = class(TForm)
    Panel1: TPanel;
    Label5: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Button1: TButton;
    Edit1: TEdit;
    CBX1: TComboBox;
    CBX2: TComboBox;
    DBGrid1: TDBGridEh;
    CWCLFY: TQuery;
    DS1: TDataSource;
    Label1: TLabel;
    Edit2: TEdit;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    Panel2: TPanel;
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
    UpCWCLFY: TUpdateSQL;
    CWCLFYCWYEAR: TStringField;
    CWCLFYCWMONTH: TStringField;
    CWCLFYGSBH: TStringField;
    CWCLFYDDBH: TStringField;
    CWCLFYSB: TStringField;
    CWCLFYUSACC: TCurrencyField;
    CWCLFYCWHL: TIntegerField;
    CWCLFYUSERDATE: TDateTimeField;
    CWCLFYUSERID: TStringField;
    CWCLFYYN: TStringField;
    CWCLFYArticle: TStringField;
    CWCLFYXieMing: TStringField;
    CWCLFYPairs: TIntegerField;
    CWCLFYVNACC: TFloatField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure bbt6Click(Sender: TObject);
    procedure bbt5Click(Sender: TObject);
    procedure BBT1Click(Sender: TObject);
    procedure BBT2Click(Sender: TObject);
    procedure BBT3Click(Sender: TObject);
    procedure BBT4Click(Sender: TObject);
    procedure BB7Click(Sender: TObject);
    procedure BB1Click(Sender: TObject);
    procedure BB2Click(Sender: TObject);
    procedure BB3Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure DBGrid1EditButtonClick(Sender: TObject);
    procedure BB5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CostMaterial: TCostMaterial;
  NDate,sdate,edate:Tdate;

implementation

uses CostMaterial_Print1, CostMaterialDet1, CostMaterial_DD1, main1;

{$R *.dfm}

procedure TCostMaterial.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=cafree;
end;

procedure TCostMaterial.Button1Click(Sender: TObject);
begin
with CWCLFY do
  begin
    active:=false;
    sql.Clear;
    sql.Add('select CWCLFY.*,DDZL.Article,XXZl.XieMing,DDZL.Pairs ');
    sql.add('from CWCLFY');
    sql.add('left join DDZL on CWCLFY.DDBH=DDZL.DDBH');
    sql.add('left join XXZL on XXZL.XieXing=DDZL.XieXing and XXZl.SheHao=DDZL.SheHao ');
    sql.add('where CWCLFY.CWYEAR='+''''+CBX1.Text+'''');
    sql.add('      and CWCLFY.CWMONTH='+''''+CBX2.Text+'''');
    sql.add('      and CWCLFY.DDBH like '+''''+edit1.Text+'%'+'''');
    sql.add('      and XXZL.XieMing like '+''''+'%'+edit2.Text+'%'+'''');
    sql.add('order by CWCLFY.GSBH,CWCLFY.SB,CWCLFY.DDBH ');
    active:=true;
  end;
bb2.enabled:=true;
bb3.enabled:=true;
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

procedure TCostMaterial.N1Click(Sender: TObject);
var y,m:integer;
begin
if CWCLFY.recordcount=0 then
  begin
    showmessage('No data ');
    abort;
  end;
y:=strtoint(CWCLFY.fieldbyname('CWYEAR').value);
m:=strtoint(CWCLFY.fieldbyname('CWMONTH').value);
sdate:=encodedate(y,m,1);
edate:=endofthemonth(sdate);
DTP1.Date:=sdate;
DTP2.Date:=edate;
CostMaterialDet:=TCostMaterialDet.create(self);
CostMaterialDet.show;

end;

procedure TCostMaterial.FormDestroy(Sender: TObject);
begin
costmaterial:=nil;
end;

procedure TCostMaterial.bbt6Click(Sender: TObject);
var
      eclApp,WorkBook:olevariant;
 //     xlsFileName:string;
      i,j:integer;
begin

if CWCLFY.Active then
  begin
    if CWCLFY.recordcount=0 then
      begin
        showmessage('No record.');
        abort;
      end;
  end
  else
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
  for   i:=1   to   CWCLFY.fieldcount   do
    begin
      eclApp.Cells(1,i+1):=CWCLFY.fields[i-1].FieldName;
    end;
  CWCLFY.First;
  j:=2;
  while   not  CWCLFY.Eof   do
    begin
      eclApp.Cells(j,1):=j-1;
      for   i:=1   to   CWCLFY.fieldcount   do
        begin
          eclApp.Cells(j,i+1):=CWCLFY.Fields[i-1].Value;
          eclApp.Cells.Cells.item[j,i+1].font.size:='8';
        end;
      CWCLFY.Next;
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

procedure TCostMaterial.bbt5Click(Sender: TObject);
var i:integer;
begin
CostMaterial_Print:=TCostMaterial_Print.create(self);
CostMaterial_Print.quickrep1.prepare;
i:=CostMaterial_Print.quickrep1.qrprinter.pagecount;
CostMaterial_Print.page1.caption:=inttostr(i);
CostMaterial_Print.QRlabel5.Caption:=CBX1.Text+'/'+CBX2.Text;
CostMaterial_Print.quickrep1.preview;
CostMaterial_Print.free;

end;

procedure TCostMaterial.BBT1Click(Sender: TObject);
begin
CWCLFY.First;
end;

procedure TCostMaterial.BBT2Click(Sender: TObject);
begin
CWCLFY.Prior;
end;

procedure TCostMaterial.BBT3Click(Sender: TObject);
begin
CWCLFY.Next;
end;

procedure TCostMaterial.BBT4Click(Sender: TObject);
begin
CWCLFY.Last;
end;

procedure TCostMaterial.BB7Click(Sender: TObject);
begin
close;
end;

procedure TCostMaterial.BB1Click(Sender: TObject);
begin

panel1.Visible:=true;
end;

procedure TCostMaterial.BB2Click(Sender: TObject);
begin
with CWCLFY do
  begin
    cachedupdates:=true;
    requestlive:=true;
    Insert;
  end;
bb5.enabled:=true;
bb6.enabled:=true;
DBGrid1.Columns[1].buttonstyle:= cbsEllipsis;
CBX1.enabled:=false;
CBX2.Enabled:=false;
end;

procedure TCostMaterial.BB3Click(Sender: TObject);
begin

if messagedlg('Do you really want to delete this data?',mtconfirmation,[MBYes,MBNo],0)=mrYes then
  begin
     with CWCLFY do
       begin
         cachedupdates:=true;
         requestlive:=true;
         edit;
         fieldbyname('YN').Value:='0';
       end;
  end;    
bb5.enabled:=true;
bb6.enabled:=true; 
DBGrid1.Columns[1].buttonstyle:= cbsEllipsis;   
CBX1.enabled:=false;
CBX2.Enabled:=false;
end;

procedure TCostMaterial.BB4Click(Sender: TObject);
begin

with CWCLFY do
  begin
    cachedupdates:=true;
    requestlive:=true;
    CWCLFY.edit;
  end;
bb5.enabled:=true;
bb6.enabled:=true;
DBGrid1.Columns[1].buttonstyle:= cbsEllipsis;
CBX1.enabled:=false;
CBX2.Enabled:=false;
end;

procedure TCostMaterial.BB6Click(Sender: TObject);
begin

with CWCLFY do
  begin
    active:=false;
    cachedupdates:=false;
    requestlive:=false;
    active:=true;
  end;
BB5.enabled:=false;
BB6.Enabled:=false;
DBGrid1.Columns[1].buttonstyle:= cbsnone;
CBX1.enabled:=true;
CBX2.Enabled:=true;
end;

procedure TCostMaterial.DBGrid1EditButtonClick(Sender: TObject);
begin
CostMaterial_DD:=TCostMaterial_DD.create(self);
CostMaterial_DD.show;
end;

procedure TCostMaterial.BB5Click(Sender: TObject);
begin
try
    CWCLFY.first;
    while not CWCLFY.eof do
      begin
        case CWCLFY.updatestatus of
          usinserted:
            begin
              CWCLFY.edit;
              CWCLFY.FieldByName('CWYEAR').Value:=CBX1.text;
              CWCLFY.FieldByName('CWMONTH').Value:=CBX2.text;
              CWCLFY.FieldByName('USERDATE').Value:=date;
              CWCLFY.FieldByName('USERID').Value:=main.edit1.text;
              CWCLFY.FieldByName('YN').Value:='1';
              UpCWCLFY.apply(ukinsert);
            end;
          usmodified:
             begin
              if CWCLFY.fieldbyname('YN').value='0'then
                begin
                  UpCWCLFY.apply(ukdelete);
                end
                else
                  begin
                    CWCLFY.edit;
                    CWCLFY.FieldByName('USERID').Value:=main.edit1.text;
                    CWCLFY.FieldByName('USERdate').Value:=date;
                    UpCWCLFY.apply(ukmodify);
                  end;
              end;
        end;
        CWCLFY.next;
      end;
    CWCLFY.active:=false;
    CWCLFY.cachedupdates:=false;
    CWCLFY.requestlive:=false;
    CWCLFY.active:=true;
bb5.enabled:=false;
bb6.enabled:=false;
CBX1.enabled:=true;
CBX2.Enabled:=true;
N1.Enabled:=false;  
DBGrid1.Columns[1].buttonstyle:= cbsnone;
except
  Messagedlg('Have wrong, can not save!',mtwarning,[mbyes],0);
end;
end;

end.
