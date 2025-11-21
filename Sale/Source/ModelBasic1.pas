unit ModelBasic1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, StdCtrls, DBCtrls, GridsEh, DBGridEh, Buttons,
  ExtCtrls,comobj;

type
  TModelBasic = class(TForm)
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
    DBGrid1: TDBGridEh;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    DBNavigator1: TDBNavigator;
    Edit1: TEdit;
    Button1: TButton;
    Edit2: TEdit;
    CheckBox1: TCheckBox;
    YWXX: TQuery;
    DS2: TDataSource;
    UPYWXX2: TUpdateSQL;
    Query1: TQuery;
    YWXXXieXing: TStringField;
    YWXXXieMing: TStringField;
    YWXXXXCC: TStringField;
    YWXXDDBH: TStringField;
    YWXXNWeigh: TCurrencyField;
    YWXXOWeigh: TCurrencyField;
    YWXXUSERDATE: TDateTimeField;
    YWXXUSERID: TStringField;
    YWXXYN: TStringField;
    YWXXCLBH: TStringField;
    YWXXArticle: TStringField;
    YWXXDAOMH: TStringField;
    YWXXKFJC: TStringField;
    Label3: TLabel;
    Edit3: TEdit;
    Label4: TLabel;
    Edit4: TEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure Button1Click(Sender: TObject);
    procedure BB7Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure YWXXNewRecord(DataSet: TDataSet);
    procedure BB5Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure bbt6Click(Sender: TObject);
    procedure DBGrid1EditButtonClick(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ModelBasic: TModelBasic;

implementation

uses main1,  ModelBasic_CL1;

{$R *.dfm}

procedure TModelBasic.FormClose(Sender: TObject; var Action: TCloseAction);
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

procedure TModelBasic.DBGrid1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
if YWXX.fieldbyname('USERDate').IsNull then
  begin
     DBGrid1.canvas.Font.Color:=clred;
  end;
end;

procedure TModelBasic.Button1Click(Sender: TObject);
begin
with YWXX do
  begin
    active:=false;
    sql.Clear;
    sql.add('select * ');
    sql.add('from (select distinct DDZL.XieXing,max(XXZL.Article) as Article,max(XXZL.DAOMH) as DAOMH,');
    sql.add('             XXZL.XieMing,KFZL.KFJC,ZLZLS.XXCC,max(DDZL.DDBH) as DDBH ');
    sql.add('      from DDZLS');
    sql.add('      left join DDZL on DDZl.DDBH=DDZLS.DDBH');
    sql.add('      left join XXZL on XXZl.XieXing=DDZl.XieXing and DDZl.SheHao=XXZL.SheHao');
    sql.add('      left join ZLZLS on ZLZLS.ZLBH=DDZL.ZLBH and ZLZLS.ZLCC=DDZLS.CC');
    sql.add('      left join KFZL on KFZL.KFDH=XXZL.KHDH ');
    sql.add('      where (DDZL.DDZT='+''''+'Y'+''''+' or ddzl.ddzt='+''''+'S'+''''+')');
    sql.add('            and Convert(varchar,DDZL.Shipdate,111)>'+''''+'2008/08/01'+'''');
    sql.add('            and DDZL.ShipDate>getdate()-120 ');
    sql.add('            and ZLZLS.Qty<>0');
    sql.add('            and DDZL.XieXing like '+''''+edit1.Text+'%'+'''');
    sql.add('            and XXZL.XieMing like '+''''+'%'+edit2.text+'%'+'''');
    sql.Add('            and KFZL.KFJC like '+''''+edit3.Text+'%'+'''');
    sql.add('            and XXZL.Article like '+''''+edit4.text+'%'+'''');
    sql.add('      group by DDZL.XieXing,XXZL.XieMing,ZLZLS.XXCC,KFZL.KFJC) XXList');
    sql.add('      left join YWXX on YWXX.XieXing=XXList.XieXIng and YWXX.XXCC=XXlist.XXCC');
    if CHECKBOX1.Checked then
      begin
        sql.add('where YWXX.NWeigh is null ');
      end;
    sql.add('order by  XXList.XieXing,XXList.XieMing,XXList.XXCC');
    //memo1.Text:=sql.text;
    active:=true;
  end;
//BB4.Enabled:=true;
BBT6.enabled:=true;
end;

procedure TModelBasic.BB7Click(Sender: TObject);
begin
close;
end;

procedure TModelBasic.BB4Click(Sender: TObject);
begin
with YWXX do
  begin
    cachedupdates:=true;
    requestlive:=true;
  end;
BB5.Enabled:=true;
BB6.Enabled:=true;
DBGrid1.Columns[9].ButtonStyle:=cbsEllipsis;
end;

procedure TModelBasic.YWXXNewRecord(DataSet: TDataSet);
begin
abort;
end;

procedure TModelBasic.BB5Click(Sender: TObject);
var i:integer;
begin

YWXX.First;
while not YWXX.Eof do
  begin
    if (YWXX.FieldByName('NWeigh').IsNull or YWXX.FieldByName('OWeigh').IsNull ) then
    begin
    if ((not YWXX.FieldByName('NWeigh').IsNull) or (not YWXX.FieldByName('OWeigh').IsNull )  ) then
      begin
        showmessage('Pls key in data finished ');
        abort;
      end;
      end;
    YWXX.Next;
  end;

try
YWXX.First;
while not YWXX.Eof do
  begin
    if YWXX.updatestatus=usmodified then
      begin
        if not YWXX.fieldbyname('NWeigh').isnull then
          begin
            with query1 do
              begin
                active:=false;
                sql.clear;
                sql.add('delete YWXX ');
                sql.add('where  XieXing='+''''+YWXX.fieldbyname('XieXing').Value+'''');
                sql.add('      and XXCC='+''''+YWXX.fieldbyname('XXCC').Value+'''');
                sql.Add('insert into YWXX ');
                sql.add('(XieXing, XXCC, NWeigh, OWeigh, CLBH, USERDATE, USERID, YN) ');
                sql.add('values  ('+''''+YWXX.fieldbyname('XieXing').Value+''''+',');
                sql.add(''''+YWXX.fieldbyname('XXCC').asstring+''''+',convert(money,');
                sql.add(''''+YWXX.fieldbyname('NWeigh').asstring+''''+'),convert(money,');
                sql.add(''''+YWXX.fieldbyname('OWeigh').asstring+''''+'),');
                sql.add(''''+YWXX.fieldbyname('CLBH').asstring+''''+',getdate(),');
                sql.add(''''+main.edit1.Text+''''+','+''''+'1'+''''+')');
                execsql;
              end;
          end;
      end;
    YWXX.Next;
  end;
with YWXX do
  begin
    active:=false;
    requestlive:=false;
    cachedupdates:=false;
    active:=true;
  end;
BB5.Enabled:=false;
BB6.Enabled:=false;
DBgrid1.Columns[9].ButtonStyle:=cbsnone;
showmessage('Succeed');
except
  showmessage('Have wrong');
end;

end;

procedure TModelBasic.BB6Click(Sender: TObject);
begin
with YWXX do
  begin
    active:=false;
    requestlive:=false;
    cachedupdates:=false;
    active:=true;
  end;
BB5.Enabled:=false;
BB6.Enabled:=false;
DBgrid1.Columns[9].ButtonStyle:=cbsnone;
end;

procedure TModelBasic.bbt6Click(Sender: TObject);
var   a:string;
      eclApp,WorkBook:olevariant;
 //     xlsFileName:string;
      i,j:integer;
begin
if main.Edit2.text = 'VB1' then
  begin
  if  YWXX.active  then
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
        for   i:=0   to   YWXX.fieldcount-1   do
          begin
              eclApp.Cells(1,1):='adidasWeights';
              eclApp.Cells(1,2):='';
              eclApp.Cells(1,3):='Uom';
              eclApp.Cells(1,4):='Net Weight';
              eclApp.Cells(1,5):='Net Net Weight';
          end;

        YWXX.First;
        j:=2;
        while   not   YWXX.Eof   do
          begin
          //  for   i:=0   to  YWXX.fieldcount-1  do
          //  begin
              //eclApp.Cells(j,i+1):=YWXX.Fields[i].Value;
              eclApp.Cells(j,1):=YWXX.Fields[1].Value;
              //eclApp.Cells(j,1):=StringReplace(YWXX.Fields[3].Value,'.0','',[rfReplaceAll]);
              if  copy(YWXX.Fields[6].Value,1,1)='0' then
                begin
                  eclApp.Cells(j,2):=copy(StringReplace(StringReplace(trim(YWXX.Fields[6].Value),'.0','',[rfReplaceAll]),'.5','-',[rfReplaceAll]),2,5);
                  //消掉前面有0
                  //eclApp.Cells(j,2):=copy(YWXX.Fields[6].Value,2,5);
                end
              else
                begin
                  eclApp.Cells(j,2):=StringReplace(StringReplace(trim(YWXX.Fields[6].Value),'.0','',[rfReplaceAll]),'.5','-',[rfReplaceAll]);
                  //eclApp.Cells(j,2):=YWXX.Fields[4].Value;
                end;
              eclApp.Cells(j,3):='KG';

              if  ((YWXX.Fields[7].Value = null) or (YWXX.Fields[8].Value= null)) then
                begin
                  eclApp.Cells(j,4):=0;
                end
              else
                begin
                  eclApp.Cells(j,4):=FormatFloat('000.00',(YWXX.Fields[7].Value+YWXX.Fields[8].Value));
                end;

              if  (YWXX.Fields[7].Value = null) then
                begin
                  eclApp.Cells(j,5):=0;
                end
              else
                begin
                  eclApp.Cells(j,5):=FormatFloat('000.00',YWXX.Fields[7].Value);
                end;

              // eclApp.Cells(j,4):=FormatFloat('000.0',YWXX.Fields[6].Value);

              // eclApp.Cells(j,5):=FormatFloat('000.0',YWXX.Fields[5].Value);
          //  end;
          YWXX.Next;
          inc(j);
          end;

      eclapp.columns.autofit;
      showmessage('Succeed');
       eclApp.Visible:=True;
      except
        on   F:Exception   do
          showmessage(F.Message);
      end;
    end;
  end
  else
  begin
  if  YWXX.active  then
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
        for   i:=0   to   YWXX.fieldcount-1   do
          begin
              eclApp.Cells(1,i+1):=YWXX.fields[i].FieldName;
          end;

        YWXX.First;
        j:=2;
        while   not   YWXX.Eof   do
          begin
            for   i:=0   to  YWXX.fieldcount-1  do
            begin
              eclApp.Cells(j,i+1):=YWXX.Fields[i].Value;
            end;
          YWXX.Next;
          inc(j);
          end;
      eclapp.columns.autofit;
      showmessage('Succeed');
       eclApp.Visible:=True;
      except
        on   F:Exception   do
          showmessage(F.Message);
      end;
    end;

end;
end;


{ 改成樂億的輸出格式 2012/4/17
procedure TModelBasic.bbt6Click(Sender: TObject);
var   a:string;
      eclApp,WorkBook:olevariant;
 //     xlsFileName:string;
      i,j:integer;
 begin
  if  YWXX.active  then
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
        for   i:=0   to   YWXX.fieldcount-1   do
          begin
              eclApp.Cells(1,i+1):=YWXX.fields[i].FieldName;
          end;

        YWXX.First;
        j:=2;
        while   not   YWXX.Eof   do
          begin
            for   i:=0   to  YWXX.fieldcount-1  do
            begin
              eclApp.Cells(j,i+1):=YWXX.Fields[i].Value;
            end;
          YWXX.Next;
          inc(j);
          end;
      eclapp.columns.autofit;
      showmessage('Succeed');
       eclApp.Visible:=True;
      except
        on   F:Exception   do
          showmessage(F.Message);
      end;
    end;

end;
========================edit ned}

procedure TModelBasic.DBGrid1EditButtonClick(Sender: TObject);
begin
  ModelBasic_CL:=TModelBasic_CL.create(self);
  ModelBasic_CL.show;
end;

procedure TModelBasic.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin

if Key = #13 then
  if ActiveControl = DBGrid1 then
    begin
      TDBGrideh(ActiveControl).SelectedIndex := TDBGrideh(ActiveControl).SelectedIndex + 1;
      Key := #0;
    end;
end;

procedure TModelBasic.FormDestroy(Sender: TObject);
begin
   ModelBasic:=nil;
end;

end.
