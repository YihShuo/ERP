unit Customscomfirmp;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Grids, DBGrids, DBTables, DB, StdCtrls, DBCtrls,
  ComCtrls, GridsEh, DBGridEh, Buttons;

type
  TCustomsComfirm = class(TForm)
    DataSource1: TDataSource;
    YWDD: TQuery;
    UpdateSQL1: TUpdateSQL;
    Panel1: TPanel;
    Button1: TButton;
    DTP2: TDateTimePicker;
    Label4: TLabel;
    DTP1: TDateTimePicker;
    Label3: TLabel;
    Edit2: TEdit;
    Label2: TLabel;
    Edit1: TEdit;
    Label1: TLabel;
    YWDDDDBH: TStringField;
    YWDDETD: TDateTimeField;
    YWDDQty: TFloatField;
    YWDDSB: TStringField;
    YWDDEXESB: TStringField;
    YWDDXieMing: TStringField;
    YWDDKHPO: TStringField;
    YWDDArticle: TStringField;
    YWDDShipDate: TDateTimeField;
    YWDDxflock: TStringField;
    Label5: TLabel;
    CB1: TComboBox;
    DBGridEh1: TDBGridEh;
    BDelRec: TQuery;
    YWDDUSERID: TStringField;
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
    Label6: TLabel;
    CB2: TComboBox;
    YWDDxfUserID: TStringField;
    YWDDxfUSERDATE: TDateTimeField;
    YWDDINV_NO: TStringField;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BB1Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure BB7Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CustomsComfirm: TCustomsComfirm;

implementation

uses main1, FunUnit;

{$R *.dfm}

procedure TCustomsComfirm.Button1Click(Sender: TObject);
var sdate,edate:tdate;
begin
  sdate:=DTP1.Date;
  edate:=DTP2.Date;
  with YWDD do
  begin
    active:=false;
    sql.Clear;
    sql.add('select YWDD.DDBH,YWDD.Qty,YWDD.ETD,YWDD.SB,YWDD.EXESB,YWDD.xflock,YWDD.xfUSERID,YWDD.xfUSERDATE,YWDD.USERID,YWDD.USERDATE');
    sql.add('       ,DDZL.XieXing,DDZL.SheHao, XXZL.XieMing,LBZLS.YWSM,DDZL.KHPO');
    sql.add('       ,DDZL.Article,DDZL.ShipDate,XXZL.CCGB as XXCC,DDZL.CCGB as DDCC,INVOICE_D.INV_NO ');
    sql.add('from YWDD');
    sql.add('left join DDZL on YWDD.YSBH=DDZl.DDBH');
    sql.add('left join ZLZL  on ZLZL.DDBH=DDZL.DDBH');
    sql.add('left join XXZL  on DDZL.XieXing=XXZL.XieXing and DDZL.SheHao=XXZL.SheHao');
    sql.add('left join LBZLS on LBZLS.LB=''06'' and LBZLS.LBDH=DDZL.DDGB');
    sql.add('left join (select RYNO,INV_NO from INVOICE_D Group by RYNO,INV_NO ) INVOICE_D on INVOICE_D.RYNO=DDZl.DDBH ');
    sql.add('where YWDD.DDBH like '''+edit1.text+'%''');
    sql.add('      and XXZL.XieMing like ''%'+edit2.Text+'%'' ');
    sql.add('      and convert(smalldatetime,convert(varchar,YWDD.ETD,111)) between ');
    sql.add('      '''+formatdatetime('yyyy/MM/dd',sdate)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',edate)+'''');
    if cb1.Text <> 'ALL' then
     sql.add('      and YWDD.GSBH='''+cb1.Text+''' ');
    if CB2.Text <> 'ALL' then
     sql.add('      and YWDD.xflock='''+cb2.Text+''' ');
    sql.add('order by YWDD.DDBH');
    //FuncObj.WriteErrorLog(sql.Text);
    active:=true;
  end;
  BB4.Enabled:=true;
  BB5.Enabled:=false;
  BB6.Enabled:=false;
end;

procedure TCustomsComfirm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TCustomsComfirm.FormDestroy(Sender: TObject);
begin
   CustomsComfirm:=nil;
end;

procedure TCustomsComfirm.FormCreate(Sender: TObject);
begin
  CB1.Items.Clear;
  with BDelRec do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Select GSDH from BGSZL where YN=1 and SFL=''PD''');
    Active:=true;
    if Recordcount>0 then
    begin
      while not Eof do
      begin
        CB1.Items.Add(FieldByName('GSDH').AsString);
        Next;
      end;
    end;
    Active:=false;
  end;
  CB1.Text:='ALL';
  dtp1.date:=date;
  dtp2.date:=date+30;
end;

procedure TCustomsComfirm.BB1Click(Sender: TObject);
begin
  Panel1.Visible:=true;
end;

procedure TCustomsComfirm.BB4Click(Sender: TObject);
begin
  with YWDD do
  begin
    requestlive:=true;
    cachedupdates:=true;
    DBGridEh1.ReadOnly:=false;
    edit;
  end;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
end;

procedure TCustomsComfirm.BB5Click(Sender: TObject);
var i:integer;
    NewETD,OldETD:string;
begin

  YWDD.First;
  for i:=1 to YWDD.RecordCount do
  begin
    case YWDD.updatestatus of
      usmodified:
      begin
        NewETD:=YWDD.fieldbyname('ETD').Value;
        OldETD:=YWDD.fieldbyname('ETD').OldValue;
        YWDD.Edit;
        YWDD.FieldByName('xfUserID').value:=main.Edit1.text;
        YWDD.FieldByName('xfUserDate').value:=Date();
        YWDD.Post;
        with BDelRec do
        begin
          active:=false;
          sql.Clear;
          sql.add('insert into BDelRec ');
          sql.add('(TableName ,TNO,CLBH,OldID,DelID,DelDate)');
          sql.add('values ('+''''+'YWDD'+''''+','+''''+YWDD.fieldbyname('DDBH').Value+'''');
          sql.add(','+''''+YWDD.fieldbyname('xflock').OldValue+'*'+OldETD+'-'+YWDD.fieldbyname('xflock').Value+'*'+NewETD+''','+''''+YWDD.fieldbyname('xfUserID').AsString+''',');
          sql.add(''''+main.Edit1.Text+''''+',getdate())');
          execsql;
          active:=false;
        end;
        UpdateSQL1.apply(ukmodify);
      end;
    end;
    YWDD.Next;
  end;
  with YWDD do
  begin
    active:=false;
    requestlive:=false;
    cachedupdates:=false;
    active:=true;
  end;  
  BB5.Enabled:=false;
  BB6.Enabled:=false;
end;

procedure TCustomsComfirm.BB7Click(Sender: TObject);
begin
  close;
end;

procedure TCustomsComfirm.BB6Click(Sender: TObject);
begin
  with YWDD do
  begin
    active:=false;
    requestlive:=false;
    cachedupdates:=false;
    active:=true;
  end;
  BB5.Enabled:=false;
  BB6.Enabled:=false;
end;

end.
