unit ProdRate1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Mask, DBCtrls, Grids, DBGrids, StdCtrls, DB, DBTables, Buttons,
  ExtCtrls, ComCtrls,comobj, GridsEh, DBGridEh;

type
  TProdRate = class(TForm)
    Panel1: TPanel;
    BB2: TBitBtn;
    BB5: TBitBtn;
    BB6: TBitBtn;
    BB7: TBitBtn;
    BB1: TBitBtn;
    BBT1: TBitBtn;
    BBT2: TBitBtn;
    BBT3: TBitBtn;
    BBT4: TBitBtn;
    bbt6: TBitBtn;
    XXZL: TQuery;
    DS1: TDataSource;
    PC1: TPageControl;
    TS1: TTabSheet;
    Panel3: TPanel;
    Label6: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Edit1: TEdit;
    Edit3: TEdit;
    Edit2: TEdit;
    Button2: TButton;
    TS2: TTabSheet;
    XXZLARTICLE: TStringField;
    XXZLSimpleSize: TFloatField;
    XXZLSignature: TStringField;
    XXZLSingDate: TDateTimeField;
    XXZLExpireDate: TDateTimeField;
    XXZLXieMing: TStringField;
    ts3: TTabSheet;
    updateQ: TQuery;
    XXZLXieXing: TStringField;
    XXZLSheHao: TStringField;
    XXZLUSERID: TStringField;
    XXZLUSERDATE: TDateTimeField;
    xxzlfrom: TQuery;
    xxzlfromXieXing: TStringField;
    xxzlfromSheHao: TStringField;
    xxzlfromXieMing: TStringField;
    xxzlfromARTICLE: TStringField;
    Query1: TQuery;
    DataSource1: TDataSource;
    Query1XieXing: TStringField;
    Query1SheHao: TStringField;
    Query1XieMing: TStringField;
    Query1ARTICLE: TStringField;
    Query1SimpleSize: TFloatField;
    Query1Signature: TStringField;
    Query1SingDate: TDateTimeField;
    Query1ExpireDate: TDateTimeField;
    Query1USERID: TStringField;
    Query1USERDATE: TDateTimeField;
    BBT5: TBitBtn;
    skumap: TQuery;
    skumapSKU: TStringField;
    skumapARTICLE: TStringField;
    DBGridEh1: TDBGridEh;
    DBGridEh2: TDBGridEh;
    DBGridEh3: TDBGridEh;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button2Click(Sender: TObject);
    procedure BB1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BB2Click(Sender: TObject);
    procedure BB7Click(Sender: TObject);
    procedure BBT1Click(Sender: TObject);
    procedure BBT2Click(Sender: TObject);
    procedure BBT3Click(Sender: TObject);
    procedure BBT4Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure PC1Change(Sender: TObject);
    procedure bbt6Click(Sender: TObject);
    procedure BBT5Click(Sender: TObject);
    procedure DBGridEh1DrawDataCell(Sender: TObject; const Rect: TRect;
      Field: TField; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ProdRate: TProdRate;

implementation

uses main1, readexcelP, SSAICP;

{$R *.dfm}

procedure TProdRate.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if BB5.Enabled then
  begin
    showmessage('Pls save data first.');
    PC1.ActivePage:=TS2;
    action:=canone;
  end
  else
    action:=cafree;
end;

procedure TProdRate.Button2Click(Sender: TObject);
begin
with XXZL do
  begin
    active:=false;
    sql.clear;
    sql.add('select simpleshoes.* ');
    sql.add('from simpleshoes ');
    sql.add('left join xxzl on xxzl.xiexing=simpleshoes.xiexing and xxzl.SheHao=simpleshoes.SheHao');
    sql.add('where simpleshoes.XieXing like '+''''+edit1.text+'%'+'''');
    sql.add('and simpleshoes.ARTICLE like '+''''+edit2.Text+'%'+'''');
    sql.add('and xxzl.KHDH='+''''+edit3.text+'''');
    sql.add(' order by simpleshoes.XieXing');
    //memo1.Text:=sql.Text;
    active:=true;
  end;
  bb2.Enabled:=true;
  bbt5.Enabled:=true;
  bbt6.Enabled:=true;
end;

procedure TProdRate.BB1Click(Sender: TObject);
begin
PC1.ActivePage:=TS1;
panel3.Visible:=true;
end;

procedure TProdRate.FormCreate(Sender: TObject);
begin
XXZL.Active:=false;
PC1.ActivePage:=TS1;
end;

procedure TProdRate.BB2Click(Sender: TObject);
begin
  BB5.Enabled:=true;
  BB6.Enabled:=true;
  readexcelfile:=Treadexcelfile.create(self);
  readexcelfile.show;;
end;

procedure TProdRate.BB7Click(Sender: TObject);
begin
close;
end;

procedure TProdRate.BBT1Click(Sender: TObject);
begin
xxzl.first;
end;

procedure TProdRate.BBT2Click(Sender: TObject);
begin
xxzl.prior;
end;

procedure TProdRate.BBT3Click(Sender: TObject);
begin
xxzl.next;
end;

procedure TProdRate.BBT4Click(Sender: TObject);
begin
xxzl.last;
end;

procedure TProdRate.BB6Click(Sender: TObject);
begin
xxzl.RequestLive:=false;
xxzl.CachedUpdates:=false;
xxzl.active:=false;
xxzl.Active:=true;
BB5.Enabled:=false;
BB6.Enabled:=false;

end;

procedure TProdRate.BB5Click(Sender: TObject);
var
  i:integer;
  j:integer;
  st:string;
begin
  i:=0;
  j:=0;
  //showmessage(readexcelfile.idg.cells[1,i]);
  xxzlfrom.Active:=true;
  skumap.Active:=true;
  updateQ.sql.clear;

  xxzl.Active:=false;  //將使用者在insert前query的條件清空
  xxzl.SQL.Clear; //避免使用者先進行query後直接執行insert所造成的問題
  xxzl.sql.add('select simpleshoes.* ');
  xxzl.sql.add('from simpleshoes ');
  xxzl.sql.add('left join xxzl on xxzl.xiexing=simpleshoes.xiexing and xxzl.SheHao=simpleshoes.SheHao');
  xxzl.sql.add('and xxzl.KHDH='+''''+edit3.text+'''');
  xxzl.sql.add(' order by simpleshoes.XieXing');
  xxzl.Active:=true;
  edit1.Text:='';
  edit2.text:='';

  for j:=0 to readexcelfile.idg.RowCount do
  begin
    if skumap.locate('sku',readexcelfile.idg.Cells[1,j],[]) then
    begin
      readexcelfile.idg.Cells[1,j]:=skumap.fieldbyname('article').value;
    end;
  end;

  for i:=0 to readexcelfile.idg.RowCount-1  do
  begin
    if xxzl.Locate('article',readexcelfile.idg.cells[1,i],[]) then
    begin
      updateq.sql.Add('update simpleshoes ');
      updateq.sql.Add('set ');
      updateq.sql.Add('  xiexing = '+''''+XXzl.FieldByName('xiexing').Value+''''+',');
      updateq.sql.Add('  shehao = '+''''+XXzl.FieldByName('shehao').Value+''''+',');
      updateq.sql.Add('  xieming = '+''''+XXzl.FieldByName('xieming').Value+''''+',');
      updateq.sql.Add('  article = '+''''+XXzl.FieldByName('article').Value+''''+',');
      updateq.sql.Add('  simplesize = '+''''+readexcelfile.idg.cells[3,i]+''''+',');
      updateq.sql.Add('  signature = '+''''+readexcelfile.idg.cells[4,i]+''''+',');
      updateq.sql.Add('  singdate =convert(smalldatetime, '+''''+readexcelfile.idg.cells[5,i]+''''+',101),');
      updateq.sql.Add('  expiredate =convert(smalldatetime,  '+''''+readexcelfile.idg.cells[6,i]+''''+',101),');
      updateq.sql.Add('  userid = '+''''+main.edit1.text+''''+',');
      updateq.sql.Add('  userdate = getdate() ');
      updateq.sql.Add('where xiexing = '+''''+XXzl.FieldByName('xiexing').Value+'''');
      updateq.sql.Add(' and shehao = '+''''+XXzl.FieldByName('shehao').Value+'''');
      
    end
    else
    begin
      if xxzlfrom.Locate('article',readexcelfile.idg.cells[1,i],[]) then
      begin
        updateq.sql.Add('insert into simpleshoes ');
        updateq.sql.Add('values( ');
        updateq.sql.Add(''''+XXzlfrom.FieldByName('xiexing').Value+''''+',');
        updateq.sql.Add(''''+XXzlfrom.FieldByName('shehao').Value+''''+',');
        updateq.sql.Add(''''+XXzlfrom.FieldByName('xieming').Value+''''+',');
        updateq.sql.Add(''''+XXzlfrom.FieldByName('article').Value+''''+',');
        updateq.sql.Add(''''+readexcelfile.idg.cells[3,i]+''''+',');
        updateq.sql.Add(''''+readexcelfile.idg.cells[4,i]+''''+',');
        updateq.sql.Add('convert(smalldatetime,'+''''+readexcelfile.idg.cells[5,i]+''''+',101),');
        updateq.sql.Add('convert(smalldatetime,'+''''+readexcelfile.idg.cells[6,i]+''''+',101),');
        updateq.sql.Add(''''+main.edit1.text+''''+',');
        updateq.sql.Add(' getdate() )');
      end
      else
      begin
        showmessage('SKU# '+readexcelfile.idg.cells[1,i]+' not exist in BOM or SKU mapping list, Pls check');
      end;
    end;
  end;
  if updateq.sql.text<>'' then
  begin
    updateq.ExecSQL;
  end;

  xxzl.active:=false;
  xxzl.active:=true;
  xxzlfrom.active:=false;
  skumap.Active:=false;


  bb2.Enabled:=false;
  bb5.Enabled:=false;
  bb6.Enabled:=false;
  readexcelfile.Close;
end;


procedure TProdRate.PC1Change(Sender: TObject);
begin
  with query1 do
  begin
    active:=false;
    sql.clear;
    sql.add('select simpleshoes.* ');
    sql.add('from simpleshoes ');
    sql.add('left join xxzl on xxzl.xiexing=simpleshoes.xiexing and xxzl.SheHao=simpleshoes.SheHao');
    sql.add('where simpleshoes.XieXing like '+''''+edit1.text+'%'+'''');
    sql.add('and simpleshoes.ARTICLE like '+''''+edit2.Text+'%'+'''');
    sql.add('and xxzl.KHDH='+''''+edit3.text+'''');
    if pc1.ActivePageIndex=0 then
    begin
      active:=false;
    end
    else
    begin
      if pc1.ActivePageIndex=1 then
      begin
        sql.add('and expiredate-getdate() < 30 ');
        sql.add('and expiredate-getdate() >= 0 ');
        sql.add(' order by simpleshoes.XieXing');
      end
      else
      begin
        sql.add('and expiredate-getdate() < 0 ');
        sql.add(' order by simpleshoes.XieXing');
      end;
      //memo1.text:=sql.text;
      active:=true;
    end;
  end;

end;

procedure TProdRate.bbt6Click(Sender: TObject);
var
      eclApp,WorkBook:olevariant;
 //     xlsFileName:string;
      i,j:integer;
 begin
  if query1.active  then
    begin
    try
      eclApp:=CreateOleObject('Excel.Application');
      WorkBook:=CreateOleObject('Excel.Sheet');
    except
      Application.MessageBox('NO Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
      Exit;
    end;
    try
        WorkBook:=eclApp.workbooks.Add;
        for   i:=0   to   query1.fieldCount-1   do
          begin
              eclApp.Cells(1,i+1):=query1.fields[i].FieldName;
          end;

        query1.First;
        j:=2;
        while   not   query1.Eof   do
          begin
            for   i:=0   to   query1.FieldCount-1   do
            begin
              eclApp.Cells(j,i+1):=query1.Fields[i].Value;
              eclApp.Cells.Cells.item[j,i+1].font.size:='8';
            end;
          query1.Next;
          inc(j);
          end;
     eclapp.columns.autofit;
   { if SaveDialog1.execute then
      begin
        a:=SaveDialog1.FileName;
      end
      else
        begin
          a:='Unit List';
        end;
      WorkBook.SaveAS(a);
    //  WorkBook.close;    }
      eclApp.Visible:=True;
      except
        on   F:Exception   do
          showmessage(F.Message);
      end;
    end;


end;

procedure TProdRate.BBT5Click(Sender: TObject);
begin
  SSAIC:=TSSAIC.create(self);
  SSAIC.show;;
end;

procedure TProdRate.DBGridEh1DrawDataCell(Sender: TObject;
  const Rect: TRect; Field: TField; State: TGridDrawState);
begin
  if xxzl.fieldbyname('ExpireDate').Value < (now - 30) then
  begin
    DBGridEh1.Canvas.Font.Color:=clyellow;
  end;

  if xxzl.fieldbyname('ExpireDate').Value < now then
  begin
    DBGridEh1.canvas.font.color:=clred;
  end;
end;

end.

