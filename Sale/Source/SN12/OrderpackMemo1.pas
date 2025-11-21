unit OrderpackMemo1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, DBCtrls, DBTables, DB, Buttons,
  ExtCtrls, GridsEh, DBGridEh,dateutils,comobj, ComCtrls, Menus;

type
  TOrderpackMemo = class(TForm)
    Panel1: TPanel;
    BB2: TBitBtn;
    BB3: TBitBtn;
    BB4: TBitBtn;
    BB5: TBitBtn;
    BB6: TBitBtn;
    BB7: TBitBtn;
    BD4: TBitBtn;
    DBGridEh1: TDBGridEh;
    YWDDBZ: TQuery;
    UpYWBZ: TUpdateSQL;
    DS1: TDataSource;
    YWDDBZDDBH: TStringField;
    YWDDBZMENO: TStringField;
    YWDDBZZWSM: TStringField;
    YWDDBZVNSM: TStringField;
    YWDDBZUSERID: TStringField;
    YWDDBZUSERDate: TDateTimeField;
    YWDDBZYN: TStringField;
    YWDDBZLX: TStringField;
    YWDDBZXH: TStringField;
    total: TRadioButton;
    production: TRadioButton;
    shipping: TRadioButton;
    QTemp: TQuery;
    PopupMenu1: TPopupMenu;
    Shipping1: TMenuItem;
    Production1: TMenuItem;
    GroupBox1: TGroupBox;
    BD1: TBitBtn;
    BD2: TBitBtn;
    Edit1: TEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BB2Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB3Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure BB7Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGridEh1EditButtonClick(Sender: TObject);
    procedure BD4Click(Sender: TObject);
    procedure YWDDBZAfterInsert(DataSet: TDataSet);
    procedure YWDDBZAfterOpen(DataSet: TDataSet);
    procedure FormDestroy(Sender: TObject);
    procedure productionClick(Sender: TObject);
    procedure totalClick(Sender: TObject);
    procedure shippingClick(Sender: TObject);
    procedure DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure Shipping1Click(Sender: TObject);
    procedure Production1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BD1Click(Sender: TObject);
    procedure BD2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  OrderpackMemo: TOrderpackMemo;
   XH:word;

implementation

uses OrderList1, main1, OrderpackMemo_BZ1, OrderpackMemo_Im1;

{$R *.dfm}

procedure TOrderpackMemo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

if BB5.enabled then
  begin
    messagedlg('You have to save data first.',mtwarning,[mbyes],0);
    action:=canone;
  end
  else
    OrderList.Enabled:=true;
    action:=Cafree;
end;

procedure TOrderpackMemo.BB2Click(Sender: TObject);
begin

with YWDDBZ do
  begin
    cachedupdates:=true;
    requestlive:=true;
    Insert;
  end;
bb5.enabled:=true;
bb6.enabled:=true;
DBGrideh1.Columns[1].ButtonStyle:=cbsellipsis;
end;

procedure TOrderpackMemo.BB4Click(Sender: TObject);
begin

with YWDDBZ do
  begin
    cachedupdates:=true;
    requestlive:=true;
    edit;
  end;
bb5.enabled:=true;
bb6.enabled:=true;
DBGrideh1.Columns[1].ButtonStyle:=cbsellipsis;
end;

procedure TOrderpackMemo.BB3Click(Sender: TObject);
begin

with YWDDBZ do
  begin
    cachedupdates:=true;
    requestlive:=true;
    edit;
    fieldbyname('YN').Value:='0';
  end;
bb5.enabled:=true;
bb6.enabled:=true;
DBGrideh1.Columns[1].ButtonStyle:=cbsellipsis;
end;

procedure TOrderpackMemo.BB5Click(Sender: TObject);
var i:integer;
    OldLX:string;
    Index:integer;
    List: TStringList;
begin
  with YWDDBZ do
  begin
    first;
    while not eof do
    begin
      if fieldbyname('XH').isnull then
      begin
        showmessage('pls key in XH first.');
        abort;
      end;
      next;
    end;
  end;
  try
    YWDDBZ.first;
    for i:=1 to YWDDBZ.RecordCount do
    begin
      case YWDDBZ.updatestatus of
        usinserted:
        begin
          if YWDDBZ.fieldbyname('MENO').isnull  then
          begin
            YWDDBZ.delete;
          end else
          // FIX
          begin
           List := TStringList.Create;
           try
                List.CommaText := edit1.text;
                 for Index  := 0 to List.Count  - 1 do
                  begin
           YWDDBZ.edit;
           //YWDDBZ.FieldByName('DDBH').Value:=OrderList.SpecMas.fieldbyname('DDBH').value;
           YWDDBZ.FieldByName('DDBH').Value:=List[Index];
           YWDDBZ.FieldByName('USERDATE').Value:=date;
           YWDDBZ.FieldByName('USERID').Value:=main.edit1.text;
          //  YWDDBZ.FieldByName('YN').Value:='1';
           UpYWBZ.apply(ukinsert);
            end;
              finally
                List.Free;
          end;
        end;
        end;
        usmodified:
        begin
          if YWDDBZ.fieldbyname('YN').value='0' then
          begin
            //20180827 add write log when user delete
            with QTemp do
            begin
               active:=false;
               sql.Clear;
               sql.add('insert into BDelRec ');
               sql.add('(TableName ,TNO,CLBH,OldID,DelID,DelDate)');
               sql.add('values ('+''''+'YWDDBZ'+''''+','+''''+YWDDBZ.fieldbyname('DDBH').Value+'''');
               sql.add(','+''''+YWDDBZ.fieldbyname('MENO').Value+''''+','+''''+YWDDBZ.fieldbyname('USERID').Value+''''+',');
               sql.add(''''+main.Edit1.Text+''''+',getdate())');
               execsql;
               active:=false;
            end;
            UpYWBZ.Apply(ukdelete);
          end else
           // FIX
          begin
            //20180827 add write log when user modify
            if YWDDBZ.fieldbyname('LX').OldValue=null then OldLX:='NULL' else OldLX:=YWDDBZ.fieldbyname('LX').OldValue;
            with QTemp do
            begin
               active:=false;
               sql.Clear;
               sql.add('insert into BDelRec ');
               sql.add('(TableName ,TNO,CLBH,OldID,DelID,DelDate)');
               sql.add('values ('+''''+'YWDDBZ'+''''+','+''''+YWDDBZ.fieldbyname('DDBH').Value+'''');
               sql.add(','+''''+YWDDBZ.fieldbyname('MENO').OldValue+'***'+YWDDBZ.fieldbyname('MENO').AsString+'/'+OldLX+'***'+YWDDBZ.fieldbyname('LX').AsString+''''+'');
               sql.Add(','+''''+YWDDBZ.fieldbyname('USERID').Value+''''+',');
               sql.add(''''+main.Edit1.Text+''''+',getdate())');
               execsql;
               active:=false;
            end;
            YWDDBZ.edit;
            YWDDBZ.FieldByName('USERDATE').Value:=date;
            YWDDBZ.FieldByName('USERID').Value:=main.edit1.text;
          // YWDDBZ.FieldByName('YN').Value:='1';
            UpYWBZ.apply(ukmodify);
          end;
        end;
      end;
      YWDDBZ.next;
    end;
    YWDDBZ.active:=false;
    YWDDBZ.cachedupdates:=false;
    YWDDBZ.requestlive:=false;
    YWDDBZ.active:=true;
    bb5.enabled:=false;
    bb6.enabled:=false;
    DBGrideh1.Columns[1].ButtonStyle:=cbsnone;
  except
    Messagedlg('Have wrong, can not save!',mtwarning,[mbyes],0);
  end;


end;

procedure TOrderpackMemo.BB6Click(Sender: TObject);
begin

with YWDDBZ do
  begin
    active:=false;
    cachedupdates:=false;
    requestlive:=false;
    active:=true;
  end;
bb5.enabled:=false;
bb6.enabled:=false;
DBGrideh1.Columns[1].ButtonStyle:=cbsnone;
end;

procedure TOrderpackMemo.BB7Click(Sender: TObject);
begin

Close;
end;

procedure TOrderpackMemo.FormCreate(Sender: TObject);
begin
  with YWDDBZ do
  begin
    active:=false;
    sql.Clear;
    sql.add('select YWDDBZ.* ');
    sql.add('from YWDDBZ');
    sql.add('where YWDDBZ.DDBH='+''''+OrderList.SpecMas.fieldbyname('DDBH').value+'''');
    sql.add('and YN = 1');
    sql.add('order by YWDDBZ.XH');
    active:=true;
  end;
  BB2.enabled:=true;
  BB3.enabled:=true;
  BB4.enabled:=true;
end;

procedure TOrderpackMemo.DBGridEh1EditButtonClick(Sender: TObject);
begin

  if ((dbgrideh1.selectedfield.index=1) or (dbgrideh1.selectedfield.index=2)) then
  begin
    OrderpackMemo_BZ:=TOrderpackMemo_BZ.create(self);
    OrderpackMemo_BZ.show;
  end;
end;

procedure TOrderpackMemo.BD4Click(Sender: TObject);
begin
  with YWDDBZ do
  begin
    requestlive:=true;
    cachedupdates:=true;
  end;
  BB5.Enabled:=true;
  BB6.Enabled:=true;

  if OrderpackMemo_Im <> nil then
  begin
    OrderpackMemo_Im.Close;
    OrderpackMemo_Im.Destroy;
  end;

  OrderpackMemo_Im:=TOrderpackMemo_Im.create(self);
  OrderpackMemo_Im.show;

end;

procedure TOrderpackMemo.YWDDBZAfterInsert(DataSet: TDataSet);
var SXH:string;
begin


XH:=XH+3;
SXH:=inttostr(XH);
if length(SXH)<3 then
  begin
    SXH:='0'+SXH;
  end;
if length(SXH)<3 then
  begin
    SXH:='0'+SXH;
  end;
YWDDBZ.FieldByName('XH').Value:=SXH;

end;

procedure TOrderpackMemo.YWDDBZAfterOpen(DataSet: TDataSet);
begin

// fix
with Qtemp do
  begin
    active:=false;
    sql.Clear;
    sql.add('select top 1 XH ');
    sql.add('from YWDDBZ');
    sql.add('where YWDDBZ.DDBH='+''''+OrderList.SpecMas.fieldbyname('DDBH').value+'''');
    sql.add('order by XH desc');
    active:=true;
  end;

  if Qtemp.recordcount>0 then
    begin
      XH:=strtoint(Qtemp.fieldbyname('XH').Value);
    end
    else
      XH:=0;
end;

procedure TOrderpackMemo.FormDestroy(Sender: TObject);
begin
orderpackmemo:=nil;
end;

// fix
procedure TOrderpackMemo.totalClick(Sender: TObject);
begin
  with YWDDBZ do
  begin
    active:=false;
    sql.Clear;
    sql.add('select YWDDBZ.* ');
    sql.add('from YWDDBZ');
    sql.add('where YWDDBZ.DDBH='+''''+OrderList.SpecMas.fieldbyname('DDBH').value+'''');
    sql.add('order by YWDDBZ.XH');
    active:=true;
  end;
  BB2.enabled:=true;
  BB3.enabled:=true;
  BB4.enabled:=true;
  BD1.Visible:=false;
  BD2.Visible:=false;
end;


procedure TOrderpackMemo.productionClick(Sender: TObject);
begin

  with YWDDBZ do
  begin
    active:=false;
    sql.Clear;
    sql.add('select YWDDBZ.* ');
    sql.add('from YWDDBZ');
    sql.add('where YWDDBZ.DDBH='+''''+OrderList.SpecMas.fieldbyname('DDBH').value+'''');
    sql.add('and YN = 1');
    sql.add('order by YWDDBZ.XH');
    active:=true;
  end;
  BB2.enabled:=true;
  BB3.enabled:=true;
  BB4.enabled:=true;
  BD1.Visible:=false;
  BD2.Visible:=false;
end;


procedure TOrderpackMemo.shippingClick(Sender: TObject);
begin
  with YWDDBZ do
  begin
    active:=false;
    sql.Clear;
    sql.add('select YWDDBZ.* ');
    sql.add('from YWDDBZ');
    sql.add('where YWDDBZ.DDBH='+''''+OrderList.SpecMas.fieldbyname('DDBH').value+'''');
    sql.add('and YN = 2');
    sql.add('order by YWDDBZ.XH');
    active:=true;
  end;
  BB2.enabled:=true;
  BB3.enabled:=true;
  BB4.enabled:=true;
  BD1.Visible:=true;
  BD2.Visible:=false;    
end;

procedure TOrderpackMemo.DBGridEh1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
if  YWDDBZ.fieldbyname('YN').Value='0' then
  begin
    dbgrideh1.canvas.font.color:=clred;
   // dbgrideh1.defaultdrawcolumncell(rect,datacol,column,state);
  end;
end;

// POPUPMENU
procedure TOrderpackMemo.Shipping1Click(Sender: TObject);
begin
if messagedlg('change to shipping ???',mtconfirmation,[mbYes,mbNo],0)=mrYes then
begin

  with QTemp do
  begin

  // 設定 YWBZZL  YWDDBZ 狀態
    active:=false;
    sql.clear;
    sql.add('update YWBZZL');
    sql.Add('set');
    sql.Add('yn = 2');
    sql.Add('where meno = ''' + YWDDBZ.FieldByName('MENO').Value +'''');
    ExecSQL;

    active:=false;
    sql.clear;
    sql.add('update YWDDBZ');
    sql.Add('set');
    sql.Add('yn = 2');
    sql.Add('where meno = ''' + YWDDBZ.FieldByName('MENO').Value +'''');
    ExecSQL;
  end;

  // 重新查詢
  with YWDDBZ do
  begin
    active:=false;
    active:=true;
  end;

  ShowMessage('sucessed');
end;   // end of  messagedlg
end;



procedure TOrderpackMemo.Production1Click(Sender: TObject);
begin
if messagedlg('change to production ???',mtconfirmation,[mbYes,mbNo],0)=mrYes then
begin

  with QTemp do
  begin

  // 設定 YWBZZL  YWDDBZ 狀態
    active:=false;
    sql.clear;
    sql.add('update YWBZZL');
    sql.Add('set');
    sql.Add('yn = 1');
    sql.Add('where meno = ''' + YWDDBZ.FieldByName('MENO').Value +'''');
    ExecSQL;

    active:=false;
    sql.clear;
    sql.add('update YWDDBZ');
    sql.Add('set');
    sql.Add('yn = 1');
    sql.Add('where meno = ''' + YWDDBZ.FieldByName('MENO').Value +'''');
    ExecSQL;
  end;

  // 重新查詢
  with YWDDBZ do
  begin
    active:=false;
    active:=true;
  end;

  ShowMessage('sucessed');
end;   // end of  messagedlg
end;

procedure TOrderpackMemo.FormShow(Sender: TObject);
begin
  main.FormLanguage(Pointer(self),self.Name);
end;

procedure TOrderpackMemo.BD1Click(Sender: TObject);
begin
  if messagedlg('complete shipping memo ???',mtconfirmation,[mbYes,mbNo],0)=mrYes then
  begin
    with QTemp do
    begin
      active:=false;
      sql.clear;
      sql.add('update YWDD');
      sql.Add('set');
      sql.Add('BZDate = ''' + DateToStr(date) +'''');
      sql.Add('where DDBH = ''' + OrderList.SpecMas.fieldbyname('DDBH').value+'''');
    //  showmessage(qtemp.text);
      ExecSQL;
      ShowMessage('OK');
    end;
  end;
end;

procedure TOrderpackMemo.BD2Click(Sender: TObject);
begin
  if messagedlg('not complete shipping memo yet ???',mtconfirmation,[mbYes,mbNo],0)=mrYes then
  begin
    with QTemp do
    begin
      active:=false;
      sql.clear;
      sql.add('update YWDD');
      sql.Add('set');
      sql.Add('BZDate = null');
      sql.Add('where DDBH = ''' + OrderList.SpecMas.fieldbyname('YSBH').value+'''');
    //  showmessage(qtemp.text);
      ExecSQL;
      ShowMessage('OK');
    end;
  end;
end;

end.
