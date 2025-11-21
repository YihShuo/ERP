unit ModelCost1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, DB, DBTables, Buttons, StdCtrls, Grids, DBGrids, ExtCtrls,
  GridsEh, DBGridEh,comobj,ehlibbde;

type
  TModelCost = class(TForm)
    Panel2: TPanel;
    DBGrid1: TDBGridEh;
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
    CWXXCB: TQuery;
    UpSQL1: TUpdateSQL;
    DS1: TDataSource;
    Qtemp: TQuery;
    Panel3: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    CheckBox1: TCheckBox;
    CWXXCBKHDH: TStringField;
    CWXXCBKFJC: TStringField;
    CWXXCBXieXing: TStringField;
    CWXXCBShehao: TStringField;
    CWXXCBArticle: TStringField;
    CWXXCBXieMing: TStringField;
    CWXXCBDAOMH: TStringField;
    CWXXCBUSERDate: TDateTimeField;
    CWXXCBUSERID: TStringField;
    CWXXCBYN: TStringField;
    CWXXCBXCCB: TCurrencyField;
    CWXXCBXXCB: TCurrencyField;
    CWXXCBBZCC: TStringField;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    CWXXCBJGFY: TCurrencyField;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BB7Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure BBT1Click(Sender: TObject);
    procedure BBT2Click(Sender: TObject);
    procedure BBT3Click(Sender: TObject);
    procedure BBT4Click(Sender: TObject);
    procedure bbt6Click(Sender: TObject);
    procedure DBGrid1EditButtonClick(Sender: TObject);
    procedure CWXXCBNewRecord(DataSet: TDataSet);
    procedure CWXXCBAfterOpen(DataSet: TDataSet);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ModelCost: TModelCost;
  NDate:TDate;

implementation

uses main1, ModelCost_XCCB1, ModelCost_XXCB1, ModelCost_XC1, ModelCost_XX1;

{$R *.dfm}

procedure TModelCost.FormDestroy(Sender: TObject);
begin
ModelCost:=nil;
end;

procedure TModelCost.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if CWXXCB.requestlive then
  begin
    messagedlg('You have to save data first.',mtwarning,[mbyes],0);
    action:=canone;
  end
  else
   action:=Cafree;
end;

procedure TModelCost.BB7Click(Sender: TObject);
begin
close;
end;

procedure TModelCost.Button1Click(Sender: TObject);
begin
with CWXXCB do
  begin
    active:=false;
    sql.clear;
    sql.add('select XXZL.KHDH,KFZL.KFJC,XXZL.XieXing ,XXZL.Shehao,XXZL.Article,XXZL.XieMing,XXZl.DAOMH');
    sql.add('       ,CWXXCB.XCCB,CWXXCB.XXCB,CWXXCB.USERDate,CWXXCB.USERID,CWXXCB.YN,XXZL.BZCC,CWXXCB.JGFY');
    sql.add('from XXZL ');
    sql.add('left join KFZL on KFZL.KFDH=XXZL.KHDH ');
    sql.add('left join CWXXCB on CWXXCB.XieXing=XXZL.XieXing and CWXXCB.SheHao=XXZL.SheHao ');
    sql.add('where exists(select XieXing,SheHao from DDZL ');
    sql.add('             where DDZL.YN='+''''+'1'+'''');
    sql.add('                   and DDZL.XieXing=XXZL.XieXing and DDZL.SheHao=XXZL.SheHao) ');
    if checkbox1.Checked then
      begin
        sql.add('      and not exists(select XieXing,SheHao from CWXXCB ');
        sql.add('                     where  CWXXCB.XieXing=XXZL.XieXing and  CWXXCB.SheHao=XXZl.SheHao )');
      end;
    sql.add('      and XXZL.XieXing like '+''''+'%'+edit1.Text+'%'+'''');   
    sql.add('      and XXZL.XieMing like '+''''+'%'+edit2.Text+'%'+'''');
    sql.add('      and XXZL.Article like '+''''+'%'+edit4.Text+'%'+'''');
    sql.add('      and KFZL.KFJC like '+''''+'%'+edit3.Text+'%'+'''');
    sql.add('order by   XXZL.KHDH,XXZL.XieXing,XXZL.Shehao ');
    active:=true;
  end;
BB4.Enabled:=true;
BBT1.Enabled:=true;    
BBT2.Enabled:=true;
BBT3.Enabled:=true;
BBT4.Enabled:=true;
BBT5.Enabled:=true;
BBT6.Enabled:=true;
end;

procedure TModelCost.BB4Click(Sender: TObject);
begin
with CWXXCB do
  begin
    cachedupdates:=true;
    requestlive:=true;
  end;
BB5.Enabled:=true;
BB6.Enabled:=true;                       
DBGrid1.Columns[7].ButtonStyle:=cbsellipsis;
DBGrid1.Columns[8].ButtonStyle:=cbsellipsis;
end;

procedure TModelCost.BB5Click(Sender: TObject);
var i:integer;
begin
with CWXXCB do
  begin
    first;
    while not eof do
      begin
        if not (fieldbyname('XCCB').IsNull and fieldbyname('XXCB').IsNull) then
          if not((not fieldbyname('XCCB').IsNull) and (not fieldbyname('XXCB').IsNull) ) then
            begin
              showmessage('Pls complete the data then save.');
              abort;
            end;
        next;
      end;
  end;
try
CWXXCB.First;
for i:=1 to CWXXCB.RecordCount do
  begin
    if CWXXCB.updatestatus=usmodified then
      begin
        if not CWXXCB.FieldByName('USERDate').isnull     then
          begin
            if  not CWXXCB.FieldByName('XCCB').isnull then
              begin
                CWXXCB.edit;
                CWXXCB.fieldbyname('USERDate').Value:=NDate ;
                CWXXCB.fieldbyname('USERID').Value:=main.edit1.text;
                UPSQL1.apply(ukmodify);
              end
              else
                begin
                  UPSQL1.Apply(ukdelete);
                end;
          end
          else
            begin
              CWXXCB.edit;
              CWXXCB.fieldbyname('USERDate').Value:=NDate ;
              CWXXCB.fieldbyname('USERID').Value:=main.edit1.text;
              CWXXCB.fieldbyname('YN').Value:='1';
              UPSQL1.apply(ukinsert);
            end;
        with Qtemp do
          begin
            active:=false;
            sql.Clear;
            sql.add('update CWXXCBS ');
            sql.add('set YN='+''''+'1'+'''');
            sql.add('where XieXing='+''''+CWXXCB.fieldbyname('XieXing').Value+'''');
            sql.add('      and SheHao='+''''+CWXXCB.fieldbyname('SheHao').Value+'''');
            execsql;
          end;
      end;
    CWXXCB.next;
  end;

CWXXCB.active:=false;
CWXXCB.requestlive:=false;
CWXXCB.cachedupdates:=false;
CWXXCB.active:=true;
BB5.Enabled:=false;
BB6.Enabled:=false;
DBGrid1.Columns[7].ButtonStyle:=cbsnone;
DBGrid1.Columns[8].ButtonStyle:=cbsnone;
showmessage('Succeed');
except
showmessage('have wrong');
end;

end;

procedure TModelCost.FormCreate(Sender: TObject);
begin

with Qtemp do
  begin
    active:=false;
    sql.Clear;
    sql.add('select getdate() as NDate ');
    active:=true;
    NDate:=fieldbyname('NDate').Value;
    active:=false;
  end;
end;

procedure TModelCost.BB6Click(Sender: TObject);
begin

CWXXCB.active:=false;
CWXXCB.requestlive:=false;
CWXXCB.cachedupdates:=false;
CWXXCB.active:=true;
BB5.Enabled:=false;
BB6.Enabled:=false;   
DBGrid1.Columns[7].ButtonStyle:=cbsnone;
DBGrid1.Columns[8].ButtonStyle:=cbsnone;
end;

procedure TModelCost.BBT1Click(Sender: TObject);
begin
CWXXCB.First;
end;

procedure TModelCost.BBT2Click(Sender: TObject);
begin
CWXXCB.Prior;
end;

procedure TModelCost.BBT3Click(Sender: TObject);
begin
CWXXCB.Next;
end;

procedure TModelCost.BBT4Click(Sender: TObject);
begin
CWXXCB.last;
end;

procedure TModelCost.bbt6Click(Sender: TObject);
var
      eclApp,WorkBook:olevariant;
 //     xlsFileName:string;
      i,j:integer;
begin

if CWXXCB.Active then
  begin
    if CWXXCB.recordcount=0 then
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
  for   i:=1   to   CWXXCB.fieldcount   do
    begin
      eclApp.Cells(1,i+1):=CWXXCB.fields[i-1].FieldName;
    end;
  CWXXCB.First;
  j:=2;
  while   not  CWXXCB.Eof   do
    begin
      eclApp.Cells(j,1):=j-1;
      for   i:=1   to   CWXXCB.fieldcount   do
        begin
          eclApp.Cells(j,i+1):=CWXXCB.Fields[i-1].Value;
          eclApp.Cells.Cells.item[j,i+1].font.size:='8';
        end;
      CWXXCB.Next;
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

procedure TModelCost.DBGrid1EditButtonClick(Sender: TObject);
begin

if not CWXXCB.active then
  abort;
if CWXXCB.recordcount=0 then
  abort;
if dbgrid1.selectedfield.fieldname='XCCB' then
  begin
    ModelCost_XCCB:=TModelCost_XCCB.create(self);
    ModelCost_XCCB.Show;
  end;
if dbgrid1.selectedfield.fieldname='XXCB' then
  begin
    ModelCost_XXCB:=TModelCost_XXCB.create(self);
    ModelCost_XXCB.Show;
  end;
end;

procedure TModelCost.CWXXCBNewRecord(DataSet: TDataSet);
begin
abort;
end;

procedure TModelCost.CWXXCBAfterOpen(DataSet: TDataSet);
begin
if CWXXCB.recordcount>0 then
  begin
    N1.Enabled:=true;
    N2.Enabled:=true;
  end
  else
    begin
      N1.Enabled:=false;
      N2.Enabled:=false;
    end;
end;

procedure TModelCost.N1Click(Sender: TObject);
begin
ModelCost_XC:=TModelCost_XC.create(self);
ModelCost_XC.Show;
end;

procedure TModelCost.N2Click(Sender: TObject);
begin
ModelCost_XX:=TModelCost_XX.create(self);
ModelCost_XX.Show;
end;

end.
