unit QCXXCJP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBTables, DB, Buttons, DBCtrls, StdCtrls, Grids, DBGrids,
  ExtCtrls, GridsEh, DBGridEh;

type
  TQCXXCJ = class(TForm)
    Panel2: TPanel;
    Panel3: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    CB2: TComboBox;
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
    DS1: TDataSource;
    Query1: TQuery;
    UpSQL1: TUpdateSQL;
    Query1XieXing: TStringField;
    Query1SheHao: TStringField;
    Query1ARTICLE: TStringField;
    Query1KHDH: TStringField;
    Query1CJQTY: TFloatField;
    Query1USERID: TStringField;
    Query1USERDATE: TDateTimeField;
    Query1GSBH: TStringField;
    Query1YN: TStringField;
    DBGrid1: TDBGridEh;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BB1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BB2Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure BB7Click(Sender: TObject);
    procedure BBT1Click(Sender: TObject);
    procedure BBT2Click(Sender: TObject);
    procedure BBT3Click(Sender: TObject);
    procedure BBT4Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure BB3Click(Sender: TObject);
    procedure DBGrid1EditButtonClick(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure DBGrid1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
  private
    { Private declarations }
  public
    qccust:string;     //客戶代號
    { Public declarations }
  end;

var
  QCXXCJ: TQCXXCJ;


implementation

uses main1, QCXXCJ_XXP;

{$R *.dfm}

procedure TQCXXCJ.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if query1.requestlive then
  begin
    messagedlg('You have to save data first.',mtwarning,[mbyes],0);
    action:=canone;
  end
  else
    action:=Cafree;
end;

procedure TQCXXCJ.BB1Click(Sender: TObject);
begin
  panel3.Visible:=true;
end;

procedure TQCXXCJ.FormCreate(Sender: TObject);
begin
  query1.Active:=false;
end;

procedure TQCXXCJ.BB2Click(Sender: TObject);
begin
  with query1 do
  begin
    cachedupdates:=true;
    requestlive:=true;
    Insert;     //增加一筆空白資料
  end;
  bb5.enabled:=true;
  bb6.enabled:=true;
  DBGrid1.columns[0].ButtonStyle:=cbsEllipsis;  //按鍵style改為..
end;

procedure TQCXXCJ.BB4Click(Sender: TObject);
begin
  with query1 do
  begin
    cachedupdates:=true;   //允許變更Query1資料
    requestlive:=true;     //允許變更Query1資料
    query1.edit;           //允許變更Query1資料
  end;
  DBGrid1.Columns[3].ReadOnly:=false;
  DBGrid1.Columns[3].Color:=clyellow;
  bb3.enabled:=true;
  bb5.enabled:=true;
  bb6.enabled:=true;
end;

procedure TQCXXCJ.Button1Click(Sender: TObject);
begin
  IF cb2.Text = 'CONVERSE' then   //放入對應的客戶代號到cust中
    qccust:='036';
  IF cb2.Text = 'ADIDAS' then
    qccust:='0038';

  with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.Add('select * from QCXXCJ');
    sql.Add('where Article like '''+edit1.Text+'%'+'''');
    IF edit2.Text<>'' THEN
      sql.Add('and XieXing like '+''''+'%'+edit2.Text+'%'+'''');
    sql.Add('and KHDH = '''+qccust+'''');
    sql.Add('and GSBH = '''+main.Edit2.text+'''');
    sql.Add('Order by XieXing, Shehao');
    active:=true;
  end;
panel3.visible:=false;
bb2.enabled:=true;
bb4.enabled:=true;
bb5.enabled:=false;
bb6.enabled:=false;
bb7.enabled:=true;
bbt1.enabled:=true;
bbt2.enabled:=true;
bbt3.enabled:=true;
bbt4.enabled:=true;
end;

procedure TQCXXCJ.BB6Click(Sender: TObject);
begin
  with query1 do
  begin
    active:=false;
    cachedupdates:=false;
    requestlive:=false;
    active:=true;
  end;
  DBGrid1.Columns[3].ReadOnly:=true;
  DBGrid1.Columns[3].Color:=clwindow;
  bb3.enabled:=false;
  bb5.enabled:=false;
  bb6.enabled:=false;
end;

procedure TQCXXCJ.BB7Click(Sender: TObject);
begin
  close;
end;

procedure TQCXXCJ.BBT1Click(Sender: TObject);
begin
  query1.First;
end;

procedure TQCXXCJ.BBT2Click(Sender: TObject);
begin
  query1.prior;
end;

procedure TQCXXCJ.BBT3Click(Sender: TObject);
begin
  query1.next;
end;

procedure TQCXXCJ.BBT4Click(Sender: TObject);
begin
  query1.last;
end;

procedure TQCXXCJ.FormDestroy(Sender: TObject);
begin
  QCXXCJ:=nil;
end;

procedure TQCXXCJ.BB3Click(Sender: TObject);
begin
  if messagedlg('Confirm Delete?',mtconfirmation,[mbYes,mbNo],0)=mrYes then
  begin
    if Query1.recordcount>0 then
    begin
      with Query1 do
      begin
        requestlive:=true;
        cachedupdates:=true;
        edit;
        fieldbyname('YN').Value:='0';
      end;
    end;
  end;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
end;

procedure TQCXXCJ.DBGrid1EditButtonClick(Sender: TObject);
begin
  QCXXCJ_XX:=TQCXXCJ_XX.create(self);
  QCXXCJ_XX.show;
  enabled:=false;
end;

procedure TQCXXCJ.BB5Click(Sender: TObject);
var
i:integer;
begin
  try
  query1.First;
  for i:=1 to query1.RecordCount do
  begin
    case query1.UpdateStatus of
    usinserted:
    begin
      if query1.FieldByName('XieXing').IsNull then
      begin
        query1.Delete;
      end
      else
      begin
        query1.Edit;
        query1.FieldByName('XieXing').Value:=query1.FieldByName('XieXing').Value;
        query1.FieldByName('SheHao').Value:=query1.FieldByName('SheHao').Value;
        query1.FieldByName('Article').Value:=query1.FieldByName('Article').Value;
        query1.FieldByName('KHDH').Value:=query1.FieldByName('KHDH').Value;
        query1.FieldByName('CJQTY').Value:=query1.FieldByName('CJQTY').Value;
        query1.FieldByName('USERID').Value:=main.Edit1.Text;
        query1.FieldByName('USERDATE').Value:=date;
        query1.FieldByName('GSBH').Value:=main.Edit2.Text;
        query1.FieldByName('YN').Value:=query1.FieldByName('YN').Value;
        upsql1.Apply(ukinsert);
      end;
    end;
    usmodified:
    begin
      if query1.FieldByName('YN').Value = '0' then
      begin
        upsql1.Apply(ukdelete);
      end
      else
      begin
        query1.Edit;
        query1.FieldByName('XieXing').Value:=query1.FieldByName('XieXing').Value;
        query1.FieldByName('SheHao').Value:=query1.FieldByName('SheHao').Value;
        query1.FieldByName('Article').Value:=query1.FieldByName('Article').Value;
        query1.FieldByName('KHDH').Value:=query1.FieldByName('KHDH').Value;
        query1.FieldByName('CJQTY').Value:=query1.FieldByName('CJQTY').Value;
        query1.FieldByName('USERID').Value:=main.Edit1.Text;
        query1.FieldByName('USERDATE').Value:=date;
        query1.FieldByName('GSBH').Value:=main.Edit2.Text;
        upsql1.apply(ukmodify);
      end;
    end;
    end;   //end case
    query1.next;
  end;    //end for loop
  query1.active:=false;
  query1.cachedupdates:=false;
  query1.requestlive:=false;
  query1.active:=true;
  DBGrid1.Columns[3].ReadOnly:=true;
  DBGrid1.Columns[3].Color:=clwindow;
  bb3.enabled:=false;
  bb5.enabled:=false;
  bb6.enabled:=false;
  except
    Messagedlg('Have wrong, can not save!',mtwarning,[mbyes],0);
  end;   //end try
end;

procedure TQCXXCJ.DBGrid1GetCellParams(Sender: TObject; Column: TColumnEh;
  AFont: TFont; var Background: TColor; State: TGridDrawState);
begin
  if query1.FieldByName('YN').Value = '0' then    //將刪除資料
  begin
    DBGrid1.canvas.font.color:=clRed;
  end;
end;

end.
