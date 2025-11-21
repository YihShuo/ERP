unit Adjust_CPNVL_PB_Chemical1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBTables, DB, GridsEh, DBGridEh, StdCtrls, Buttons, ExtCtrls;

type
  TAdjust_CPNVL_PB_Chemical = class(TForm)
    pnTop: TPanel;
    BB1: TBitBtn;
    BB2: TBitBtn;
    BB3: TBitBtn;
    BB4: TBitBtn;
    BB5: TBitBtn;
    BB6: TBitBtn;
    btnDelAll: TBitBtn;
    DBGridEh1: TDBGridEh;
    Query1: TQuery;
    DataSource1: TDataSource;
    UpdateSQL1: TUpdateSQL;
    QTemp: TQuery;
    Query1KCYEAR: TStringField;
    Query1KCMONTH: TStringField;
    Query1DDBH: TStringField;
    Query1ExchACC: TCurrencyField;
    Query1USERID: TStringField;
    Query1USERDATE: TDateTimeField;
    Query1YN: TStringField;
    Query1LB: TStringField;
    Lbl_LB: TLabel;
    Button1: TButton;
    Query1CKBH: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure BB1Click(Sender: TObject);
    procedure BB2Click(Sender: TObject);
    procedure btnDelAllClick(Sender: TObject);
    procedure BB3Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure Button1Click(Sender: TObject);
  private
    iiYear,iiMonth,iiDay:word;
    ssYear,ssMonth:string;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Adjust_CPNVL_PB_Chemical: TAdjust_CPNVL_PB_Chemical;

implementation

uses SemiChemicalMonth1, main1,fununit;

{$R *.dfm}

procedure TAdjust_CPNVL_PB_Chemical.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TAdjust_CPNVL_PB_Chemical.FormDestroy(Sender: TObject);
begin
  Adjust_CPNVL_PB_Chemical:=nil;
end;

procedure TAdjust_CPNVL_PB_Chemical.BB1Click(Sender: TObject);
begin
  with Query1 do
  begin
    cachedupdates:=true;
    requestlive:=true;
    Insert;
    fieldbyname('KCYEAR').Value:=ssYear;
    fieldbyname('KCMONTH').Value:=ssMonth;
    fieldbyname('CKBH').Value:=SemiChemicalMonth.CKBHID;
    if lbl_LB.Caption='PB' then
      fieldbyname('LB').Value:='PB';
    if lbl_LB.Caption='TT' then
      fieldbyname('LB').Value:='TT';
  end;
  bb4.enabled:=true;
  bb5.enabled:=true;
end;

procedure TAdjust_CPNVL_PB_Chemical.BB2Click(Sender: TObject);
begin
  with Query1 do
  begin
    cachedupdates:=true;
    requestlive:=true;
    edit;
    fieldbyname('YN').Value:=0
  end;
  bb4.enabled:=true;
  bb5.enabled:=true;
end;

procedure TAdjust_CPNVL_PB_Chemical.btnDelAllClick(Sender: TObject);
begin
  with Query1 do
  begin
    First;
    cachedupdates:=true;
    requestlive:=true;
    while not Eof do
    begin
      edit;
      fieldbyname('YN').Value:=0;
      Next;
    end;
  end;
  bb4.enabled:=true;
  bb5.enabled:=true;
end;

procedure TAdjust_CPNVL_PB_Chemical.BB3Click(Sender: TObject);
begin
  with Query1 do
  begin
    cachedupdates:=true;
    requestlive:=true;
    edit;
  end;
  bb4.enabled:=true;
  bb5.enabled:=true;
end;

procedure TAdjust_CPNVL_PB_Chemical.BB4Click(Sender: TObject);
var i:integer;
begin
  try
  query1.first;
  for i:=1 to query1.RecordCount do
  begin
    case query1.updatestatus of
      usinserted:
      begin
        if (query1.fieldbyname('DDBH').isnull)  then
        begin
          query1.Delete;
        end else
        begin
          query1.edit;
          query1.FieldByName('USERDATE').Value:=date;
          query1.FieldByName('USERID').Value:=main.edit1.text;
          query1.FieldByName('YN').Value:='1';
          UpdateSQL1.apply(ukinsert);
        end;
      end;
      usmodified:
      begin
        if query1.fieldbyname('YN').Value=0 then
        begin
          with Qtemp do
          begin
            active:=false;
            sql.Clear;
            sql.add('insert into BDelRec ');
            sql.add('(TableName ,TNO,CLBH,OldID,DelID,DelDate)');
            sql.add('values ('+''''+'CWKCLLMonthAdjustPB'+''''+','''+query1.fieldbyname('KCYEAR').AsString+'***'+query1.fieldbyname('KCMONTH').AsString+'***'+query1.fieldbyname('CKBH').asstring+'''');
            sql.add(','+''''+query1.fieldbyname('DDBH').AsString+''''+','+''''+query1.fieldbyname('USERID').Value+''''+',');
            sql.add(''''+main.Edit1.Text+''''+',getdate())');
            //funcobj.WriteErrorLog(sql.Text);
            ExecSQL();
          end;
          UpdateSQL1.Apply(ukdelete);
        end else
        begin
          query1.edit;
          query1.FieldByName('USERDATE').Value:=date;
          query1.FieldByName('USERID').Value:=main.edit1.text;
          UpdateSQL1.apply(ukmodify);
        end;
      end;
    end;
    query1.next;
  end;
  query1.active:=false;
  query1.cachedupdates:=false;
  query1.requestlive:=false;
  query1.active:=true;
  bb4.enabled:=false;
  bb5.enabled:=false;
  except
    Messagedlg('Have wrong, can not save!',mtwarning,[mbyes],0);
  end;

end;

procedure TAdjust_CPNVL_PB_Chemical.BB5Click(Sender: TObject);
begin
  with Query1 do
  begin
    active:=false;
    cachedupdates:=false;
    requestlive:=false;
    active:=true;
  end;
  bb4.enabled:=false;
  bb5.enabled:=false;
end;

procedure TAdjust_CPNVL_PB_Chemical.DBGridEh1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if Query1.FieldByName('YN').value='0' then
  begin
    DBGridEh1.canvas.font.color:=clred;
    DBGridEh1.defaultdrawcolumncell(rect,datacol,column,state);
  end;
end;

procedure TAdjust_CPNVL_PB_Chemical.Button1Click(Sender: TObject);
begin
  ssYear := SemiChemicalMonth.CBX3.Text;
  ssMonth := SemiChemicalMonth.CBX4.Text;
  with Query1 do
  begin
    active:=false;
    sql.Clear;
    sql.Add('SELECT * FROM CWKCLLMonth_Adjust_PB');
    SQL.Add('WHERE KCYEAR='+ssYear+' and KCMonth='+ssMonth+'');
    SQL.Add('AND CKBH='''+ SemiChemicalMonth.CKBHID+'''');
    if lbl_LB.Caption='PB' then
    SQL.Add('AND LB=''PB''');
    if lbl_LB.Caption='TT' then
    SQL.Add('AND LB=''TT''');
    active:=true;
  end;
  BB1.Enabled:=true;
  BB2.Enabled:=true;
  BB3.Enabled:=true;
  btnDelAll.Enabled:=true;
end;

end.
