unit ProModel1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBTables, DB, DBCtrls, Buttons, Grids, DBGrids, StdCtrls,
  ExtCtrls, GridsEh, DBGridEh,comobj;

type
  TProModel = class(TForm)
    Panel2: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Edit1: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Button1: TButton;
    CheckBox1: TCheckBox;
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
    XXZL: TQuery;
    DS1: TDataSource;
    UpSQL1: TUpdateSQL;
    QTemp: TQuery;
    XXZLXieXing: TStringField;
    XXZLSheHao: TStringField;
    XXZLModel: TStringField;
    XXZLUSERID: TStringField;
    XXZLUSERDate: TDateTimeField;
    XXZLYN: TStringField;
    XXZLKFJC: TStringField;
    XXZLYSSM: TStringField;
    XXZLArticle: TStringField;
    XXZLBZCC: TStringField;
    XXZLCCGB: TStringField;
    XXZLXTMH: TStringField;
    XXZLDDMH: TStringField;
    XXZLMDMH: TStringField;
    XXZLDAOMH: TStringField;
    XXZLIMGName: TStringField;
    XXZLXieXing_1: TStringField;
    XXZLSheHao_1: TStringField;
    XXZLoldXieXing: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BB1Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure BB7Click(Sender: TObject);
    procedure BBT1Click(Sender: TObject);
    procedure BBT2Click(Sender: TObject);
    procedure BBT3Click(Sender: TObject);
    procedure BBT4Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1EditButtonClick(Sender: TObject);
    procedure bbt6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ProModel: TProModel;
  NDate:TDate;

implementation

uses main1, ProModel_Mod1;

{$R *.dfm}

procedure TProModel.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if BB5.Enabled then
  begin
    showmessage('Pls save data first.');
    action:=canone;
  end
  else
    begin
      action:=cafree;
    end;
end;

procedure TProModel.FormDestroy(Sender: TObject);
begin
ProModel:=nil;
end;

procedure TProModel.Button1Click(Sender: TObject);
begin
with XXZL do
  begin
    active:=false;
    sql.Clear;
    sql.add('select XXZLVN.*,KFZL.KFJC,XXZL.YSSM,XXZL.XieXing,XXZl.SheHao,XXZl.Article,XXZL.BZCC,');
    sql.add('       XXZL.CCGB,XXZL.XTMH,XXZl.DDMH,XXZL.MDMH,XXZL.DAOMH,XXZL.IMGName,XXZLVN.XieXing as oldXieXing');
    sql.add('from XXZL');
    sql.add('left join KFZL on KFZl.KFDH=XXZl.KHDH  ');
    sql.add('left join XXZLVN on XXZL.XieXing=XXZLVN.XieXing and XXZl.SheHao=XXZLVN.Shehao ');
    sql.add('where XXZL.Article like '+''''+edit1.Text+'%'+'''');
    sql.add('      and XXZl.XieMing like '+''''+'%'+edit5.text+'%'+'''');
    sql.add('      and KFZL.KFJC like '+''''+'%'+edit4.text+'%'+'''');
    if checkBox1.Checked then
      begin
        sql.add('       and XXZL.YN='+''''+'1'+'''');
      end;
    sql.add('order by XXZL.XieXing,XXZL.SheHao');
    Active:=true;
  end;
BB4.Enabled:=true;
end;

procedure TProModel.BB1Click(Sender: TObject);
begin
panel2.Visible:=true;
edit1.SetFocus;
end;

procedure TProModel.BB4Click(Sender: TObject);
begin 
XXZL.RequestLive:=true;
XXZL.CachedUpdates:=true;
BB5.Enabled:=true;
BB6.Enabled:=true;
DBGrid1.Columns[9].buttonstyle:=cbsellipsis ;

end;

procedure TProModel.BB6Click(Sender: TObject);
begin

with XXZL do
  begin
    active:=false;
    RequestLive:=FALSE;
    CachedUpdates:=false;
    active:=true;
  end;
BB5.Enabled:=false;
BB6.Enabled:=false;
DBGrid1.Columns[9].buttonstyle:=cbsnone ;
end;

procedure TProModel.BB7Click(Sender: TObject);
begin

close;
end;

procedure TProModel.BBT1Click(Sender: TObject);
begin

XXZL.First;
end;

procedure TProModel.BBT2Click(Sender: TObject);
begin

XXZL.prior;
end;

procedure TProModel.BBT3Click(Sender: TObject);
begin

XXZL.next;
end;

procedure TProModel.BBT4Click(Sender: TObject);
begin
XXZL.last;
end;

procedure TProModel.BB5Click(Sender: TObject);
var i:integer;
begin
try
XXZL.First;
for i:=1 to XXZL.RecordCount do
  begin
    if XXZL.updatestatus=usmodified then
      begin
        if not XXZL.FieldByName('oldXieXing').isnull     then
          begin
            XXZL.Edit;
            XXZL.FieldByName('USERID').Value:=main.edit1.Text;
            XXZL.FieldByName('USERDate').Value:=NDate;
            UpSQL1.apply(ukmodify);
          end
          else
            begin
              if ((XXZL.FieldByName('oldXieXing').isnull) and (XXZL.FieldByName('Model').value<>'')) then
                begin
                  XXZL.edit;
                  XXZL.fieldbyname('XieXing').Value:=XXZL.fieldbyname('XieXing_1').value;
                  XXZL.fieldbyname('SheHao').Value:=XXZL.fieldbyname('SheHao_1').value;
                  XXZL.fieldbyname('USERID').Value:=main.edit1.text;
                  XXZL.FieldByName('USERDate').Value:=NDate;
                  XXZL.FieldByName('YN').Value:='1';
                  UPSQL1.apply(ukinsert);
                end;
            end;
      end;
    XXZL.next;
  end;

XXZL.active:=false;
XXZL.requestlive:=false;
XXZL.cachedupdates:=false;
XXZL.active:=true;
BB5.Enabled:=false;
BB6.Enabled:=false;
showmessage('Succeed');
except
showmessage('have wrong');
end;
end;

procedure TProModel.FormCreate(Sender: TObject);
begin
with QTemp do
  begin
    active:=false;
    sql.Clear;
    sql.add('select getdate() as NDate ');
    active:=true;
    NDate:=fieldbyname('NDate').value;
    active:=false;
  end;
end;

procedure TProModel.DBGrid1EditButtonClick(Sender: TObject);
begin
ProModel_Mod:=TProModel_Mod.create(self);
ProModel_Mod.show;
end;

procedure TProModel.bbt6Click(Sender: TObject);
var   a:string;
      eclApp,WorkBook:olevariant;
 //     xlsFileName:string;
      i,j:integer;
  begin
  if  XXZL.active  then
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
        for   i:=0   to   XXZL.fieldCount-1   do
          begin
              eclApp.Cells(1,i+1):=XXZL.fields[i].FieldName;
          end;
        XXZL.First;
        j:=2;
        while   not   XXZL.Eof   do
          begin
            for   i:=0   to   XXZL.FieldCount-1   do
              begin
                eclApp.Cells(j,i+1):=XXZL.Fields[i].Value;
              end;
            XXZL.Next;
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

end.
