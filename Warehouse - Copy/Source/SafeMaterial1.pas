unit SafeMaterial1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, DBTables, DB, StdCtrls, Grids, DBGrids, ExtCtrls,comobj;

type
  TSafeMaterial = class(TForm)
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    Panel3: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    Edit3: TEdit;
    Edit4: TEdit;
    DS1: TDataSource;
    KCSAFE: TQuery;
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
    KCSAFECLBH: TStringField;
    KCSAFEMinQty: TCurrencyField;
    KCSAFEMaxQty: TCurrencyField;
    KCSAFEBLQty: TCurrencyField;
    KCSAFEUSERDATE: TDateTimeField;
    KCSAFEUSERID: TStringField;
    KCSAFEYN: TStringField;
    KCSAFEYWPM: TStringField;
    KCSAFEDWBH: TStringField;
    KCSAFEKCBH: TStringField;
    Label4: TLabel;
    CBX2: TComboBox;
    TempSQL: TQuery;
    KCSAFECKBH: TStringField;
    KCSAFEZWPM: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BB1Click(Sender: TObject);
    procedure BB7Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BB2Click(Sender: TObject);
    procedure BB3Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure BBT1Click(Sender: TObject);
    procedure BBT2Click(Sender: TObject);
    procedure BBT3Click(Sender: TObject);
    procedure BBT4Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure Edit4KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1EditButtonClick(Sender: TObject);
    procedure bbt5Click(Sender: TObject);
    procedure bbt6Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SafeMaterial: TSafeMaterial;

implementation

uses main1, SafeMaterial_CL1, SafeMaterial_Print1;

{$R *.dfm}

procedure TSafeMaterial.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=cafree;
end;

procedure TSafeMaterial.BB1Click(Sender: TObject);
begin
panel3.Visible:=true;
end;

procedure TSafeMaterial.BB7Click(Sender: TObject);
begin
close;
end;

procedure TSafeMaterial.Button1Click(Sender: TObject);
begin
with KCSAFE do
  begin
    active:=false;
    sql.Clear;
    sql.Add('select  KCSAFE.*,CLZL.YWPM,CLZL.ZWPM,CLZL.DWBH,KCZLS.KCBH ');
    sql.add('from KCSAFE');
    sql.add('left join CLZL on KCSAFE.CLBH=CLZL.CLDH');
    sql.add('left join KCZLS on KCZLS.CLBH=KCSAFE.CLBH and KCZLS.CKBH=KCSAFE.CKBH');
    sql.add('left join KCCK on KCCK.CKBH=KCSAFE.CKBH ');
    sql.add('where KCSAFE.CLBH like '+''''+edit1.Text+'%'+'''');
    sql.add(' and CLZL.YWPM like '+''''+'%'+edit2.Text+'%'+'''');  
    sql.add(' and CLZL.YWPM like '+''''+'%'+edit3.Text+'%'+'''');
    sql.add(' and CLZL.YWPM like '+''''+'%'+edit4.Text+'%'+'''');
    sql.add(' and KCCK.GSBH='+''''+main.edit2.text+'''');
    if CBX2.text<>'ALL' then
      begin
        sql.add(' and KCSAFE.CKBH='+''''+CBX2.Text+'''');
      end;
    sql.add('order by KCSAFE.CLBH');
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

procedure TSafeMaterial.FormCreate(Sender: TObject);
begin
with tempsql do
  begin
    active:=false;
    sql.clear;
    sql.add('select CKBH from KCCK');
    sql.add('where GSBH='+''''+main.Edit2.Text+'''');
    sql.add('order by CKBH  ');
    active:=true;
    while not tempsql.eof do
      begin
        CBX2.Items.Add(fields[0].value);
        next;
      end;
  end;
end;

procedure TSafeMaterial.BB2Click(Sender: TObject);
begin

with KCSAFE do
  begin
    cachedupdates:=true;
    requestlive:=true;
    Insert;
  end;
bb5.enabled:=true;
bb6.enabled:=true;
DBGrid1.Columns[0].buttonstyle:= cbsEllipsis;
end;

procedure TSafeMaterial.BB3Click(Sender: TObject);
begin
if messagedlg('Do you really want to delete this data?',mtconfirmation,[MBYes,MBNo],0)=mrYes then
  begin
     with KCSAFE do
       begin
         cachedupdates:=true;
         requestlive:=true;
         edit;
         fieldbyname('YN').Value:='0';
       end;
  end;

bb5.enabled:=true;
bb6.enabled:=true; 
DBGrid1.Columns[0].buttonstyle:= cbsEllipsis;
end;

procedure TSafeMaterial.BB4Click(Sender: TObject);
begin
with KCSAFE do
  begin
    cachedupdates:=true;
    requestlive:=true;
    edit;
  end;
bb5.enabled:=true;
bb6.enabled:=true;
DBGrid1.Columns[0].buttonstyle:= cbsEllipsis;
end;

procedure TSafeMaterial.BB6Click(Sender: TObject);
begin
with KCSAFE do
  begin
    active:=false;
    cachedupdates:=false;
    requestlive:=false;
    active:=true;
  end;
BB5.enabled:=false;
BB6.Enabled:=false;
DBGrid1.Columns[0].buttonstyle:= cbsnone;
end;

procedure TSafeMaterial.BBT1Click(Sender: TObject);
begin
KCSAFE.First;
end;

procedure TSafeMaterial.BBT2Click(Sender: TObject);
begin
KCSAFE.prior;
end;

procedure TSafeMaterial.BBT3Click(Sender: TObject);
begin
KCSAFE.next;
end;

procedure TSafeMaterial.BBT4Click(Sender: TObject);
begin
KCSAFE.last;
end;

procedure TSafeMaterial.BB5Click(Sender: TObject);
var i:integer;
begin
with KCSAFE do
  begin
    first;
    while not eof do
      begin
        if fieldbyname('MinQty').IsNull then
          begin
             showmessage('MinQty can not be empty.');
             abort;
          end; 
        if fieldbyname('MaxQty').IsNull then
          begin
             showmessage('MaxQty can not be empty.');
             abort;
          end;
        if fieldbyname('BLQty').IsNull then
          begin
             showmessage('BLQty can not be empty.');
             abort;
          end;
        if fieldbyname('MaxQty').value<=fieldbyname('MinQty').value  then
          begin
            showmessage('MaxQty can not <= MinQty.');
            abort;
          end;
        if fieldbyname('MaxQty').value-fieldbyname('MinQty').value<fieldbyname('BLQty').value  then
          begin
            showmessage('BLQty too large .');
            abort;
          end;

        next;
      end;
  end;

try
    KCSAFE.first;
    for i:=1 to KCSAFE.RecordCount do
      begin
        case KCSAFE.updatestatus of
          usinserted:
            begin
              if KCSAFE.fieldbyname('CLBH').isnull then
                begin
                  KCSAFE.delete;
                end
                 else
                   begin
                     KCSAFE.edit;
                     KCSAFE.FieldByName('USERDATE').Value:=date;
                     KCSAFE.FieldByName('USERID').Value:=main.edit1.text;
                     KCSAFE.FieldByName('YN').Value:='1';
                     upsql1.apply(ukinsert);
                   end;
            end;
          usmodified:
             begin
              if KCSAFE.fieldbyname('YN').value='0'then
                begin
                  upsql1.apply(ukdelete);
                end
                else
                  begin
                    KCSAFE.edit;
                    KCSAFE.FieldByName('USERID').Value:=main.edit1.text;
                    KCSAFE.FieldByName('USERdate').Value:=date;
                    upsql1.apply(ukmodify);
                  end;
              end;
        end;
        KCSAFE.next;
      end;
    KCSAFE.active:=false;
    KCSAFE.cachedupdates:=false;
    KCSAFE.requestlive:=false;
    KCSAFE.active:=true;
bb5.enabled:=false;
bb6.enabled:=false;
except
  Messagedlg('Have wrong, can not save!',mtwarning,[mbyes],0);
end;


end;

procedure TSafeMaterial.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin

if KCSAFE.FieldByName('YN').value='0' then
  begin
    dbgrid1.canvas.font.color:=clred;
    dbgrid1.defaultdrawcolumncell(rect,datacol,column,state);
  end;
end;

procedure TSafeMaterial.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
  edit2.SetFocus;
end;

procedure TSafeMaterial.Edit2KeyPress(Sender: TObject; var Key: Char);
begin

if key=#13 then
  edit3.SetFocus;
end;

procedure TSafeMaterial.Edit3KeyPress(Sender: TObject; var Key: Char);
begin

if key=#13 then
  edit4.SetFocus;
end;

procedure TSafeMaterial.Edit4KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
  CBX2.SetFocus;
end;

procedure TSafeMaterial.DBGrid1EditButtonClick(Sender: TObject);
begin
SafeMaterial_CL:=TSafeMaterial_CL.create(self);
SafeMaterial_CL.show;
end;

procedure TSafeMaterial.bbt5Click(Sender: TObject);
begin
SafeMaterial_Print:=TSafeMaterial_Print.create(self);
SafeMaterial_Print.quickrep1.prepare;
SafeMaterial_Print.PageN.caption:=inttostr(SafeMaterial_Print.quickrep1.QRPrinter.pagecount);
SafeMaterial_Print.quickrep1.preview;
SafeMaterial_Print.free;
end;

procedure TSafeMaterial.bbt6Click(Sender: TObject);
var
      eclApp,WorkBook:olevariant;
 //     xlsFileName:string;
      i,j:integer;
begin

if KCSAFE.Active then
  begin
    if KCSAFE.recordcount=0 then
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
  for   i:=1   to   KCSAFE.fieldcount   do
    begin
      eclApp.Cells(1,i+1):=KCSAFE.fields[i-1].FieldName;
    end;
  KCSAFE.First;
  j:=2;
  while   not  KCSAFE.Eof   do
    begin
      eclApp.Cells(j,1):=j-1;
      for   i:=1   to   KCSAFE.fieldcount   do
        begin
          eclApp.Cells(j,i+1):=KCSAFE.Fields[i-1].Value;
          eclApp.Cells.Cells.item[j,i+1].font.size:='8';
        end;
      KCSAFE.Next;
      inc(j);
    end;
  eclapp.columns.autofit;
  eclApp.Visible:=True;
except
  on   F:Exception   do
    showmessage(F.Message);
end;

end;

procedure TSafeMaterial.FormDestroy(Sender: TObject);
begin
SafeMaterial:=nil;
end;

end.
