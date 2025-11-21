unit OrderMark1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, ExtCtrls, StdCtrls, Buttons,
  EhlibBDE;

type
  TOrderMark = class(TForm)
    Panel1: TPanel;
    DBGridEh1: TDBGridEh;
    YWDDMT: TQuery;
    UpYWMT: TUpdateSQL;
    DS1: TDataSource;
    BB2: TBitBtn;
    BB3: TBitBtn;
    BB4: TBitBtn;
    BB5: TBitBtn;
    BB6: TBitBtn;
    BB7: TBitBtn;
    YWDDMTDDBH: TStringField;
    YWDDMTXH: TStringField;
    YWDDMTMTBH1: TStringField;
    YWDDMTMTLR1: TStringField;
    YWDDMTMTBH2: TStringField;
    YWDDMTMTLR2: TStringField;
    YWDDMTMTBH3: TStringField;
    YWDDMTMTLR3: TStringField;
    YWDDMTMTBH4: TStringField;
    YWDDMTMTLR4: TStringField;
    YWDDMTUSERDATE: TDateTimeField;
    YWDDMTUSERID: TStringField;
    YWDDMTYN: TStringField;
    BD4: TBitBtn;
    BDelRec: TQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BB2Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB3Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure BB7Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGridEh1EditButtonClick(Sender: TObject);
    procedure YWDDMTAfterOpen(DataSet: TDataSet);
    procedure YWDDMTAfterInsert(DataSet: TDataSet);
    procedure BD4Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  OrderMark: TOrderMark;
  XH:word;

implementation

uses OrderList1, main1, OrderMark_Mt1, OrderMark_Mt21, OrderMark_Mt31,
  OrderMark_Mt41, OrderMark_Im1;

{$R *.dfm}

procedure TOrderMark.FormClose(Sender: TObject; var Action: TCloseAction);
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

procedure TOrderMark.BB2Click(Sender: TObject);
begin
  with YWDDMT do
  begin
    cachedupdates:=true;
    requestlive:=true;
    Insert;
  end;
  bb5.enabled:=true;
  bb6.enabled:=true;
  DBGrideh1.Columns[1].ButtonStyle:=cbsellipsis;
  DBGrideh1.Columns[2].ButtonStyle:=cbsellipsis;
  DBGrideh1.Columns[3].ButtonStyle:=cbsellipsis;
  DBGrideh1.Columns[4].ButtonStyle:=cbsellipsis;
  DBGrideh1.Columns[5].ButtonStyle:=cbsellipsis;
  DBGrideh1.Columns[6].ButtonStyle:=cbsellipsis;
  DBGrideh1.Columns[7].ButtonStyle:=cbsellipsis;
  DBGrideh1.Columns[8].ButtonStyle:=cbsellipsis;
end;

procedure TOrderMark.BB4Click(Sender: TObject);
begin

  with YWDDMT do
  begin
    cachedupdates:=true;
    requestlive:=true;
    edit;
  end;
  bb5.enabled:=true;
  bb6.enabled:=true;
  DBGrideh1.Columns[1].ButtonStyle:=cbsellipsis;
  DBGrideh1.Columns[3].ButtonStyle:=cbsellipsis;
  DBGrideh1.Columns[3].ButtonStyle:=cbsellipsis;
  DBGrideh1.Columns[4].ButtonStyle:=cbsellipsis;
  DBGrideh1.Columns[5].ButtonStyle:=cbsellipsis;
  DBGrideh1.Columns[6].ButtonStyle:=cbsellipsis;
  DBGrideh1.Columns[7].ButtonStyle:=cbsellipsis;
  DBGrideh1.Columns[8].ButtonStyle:=cbsellipsis;
end;

procedure TOrderMark.BB3Click(Sender: TObject);
begin

 with YWDDMT do
  begin
    cachedupdates:=true;
    requestlive:=true;
    edit;
    fieldbyname('YN').Value:='0';
  end;
  bb5.enabled:=true;
  bb6.enabled:=true;
  DBGrideh1.Columns[1].ButtonStyle:=cbsellipsis;
  DBGrideh1.Columns[3].ButtonStyle:=cbsellipsis;
  DBGrideh1.Columns[3].ButtonStyle:=cbsellipsis;
  DBGrideh1.Columns[4].ButtonStyle:=cbsellipsis;
  DBGrideh1.Columns[5].ButtonStyle:=cbsellipsis;
  DBGrideh1.Columns[6].ButtonStyle:=cbsellipsis;
  DBGrideh1.Columns[7].ButtonStyle:=cbsellipsis;
  DBGrideh1.Columns[8].ButtonStyle:=cbsellipsis;
end;

procedure TOrderMark.BB5Click(Sender: TObject);
var i:integer;
begin
  with YWDDMT do
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
    YWDDMT.first;
    for i:=1 to YWDDMT.RecordCount do
      begin
        case YWDDMT.updatestatus of
          usinserted:
            begin
              if (YWDDMT.fieldbyname('MTBH1').isnull and YWDDMT.fieldbyname('MTBH2').isnull
                            and YWDDMT.fieldbyname('MTBH3').isnull) then
                begin
                  YWDDMT.delete;
                end
                 else
                   begin
                     YWDDMT.edit;
                     YWDDMT.FieldByName('DDBH').Value:=OrderList.SpecMas.fieldbyname('DDBH').value;
                     YWDDMT.FieldByName('USERDATE').Value:=formatdatetime('yyyy/MM/dd HH:NN:SS',Now());
                     YWDDMT.FieldByName('USERID').Value:=main.edit1.text;
                     YWDDMT.FieldByName('YN').Value:='1';
                     UpYWMT.apply(ukinsert);
                   end;
            end;
          usmodified:
             begin
               if YWDDMT.fieldbyname('YN').value='0' then
                 begin
                   with BDelRec do
                   begin
                      active:=false;
                      sql.Clear;
                      sql.add('insert into BDelRec ');
                      sql.add('(TableName ,TNO,CLBH,OldID,DelID,DelDate)');
                      sql.add('values ('+''''+'YWDDMT'+''''+','+''''+YWDDMT.fieldbyname('DDBH').Value+'***'+YWDDMT.fieldbyname('XH').Value+'''');
                      sql.add(','+'''MTBH1='+YWDDMT.fieldbyname('MTBH1').AsString+'**MTBH2='+YWDDMT.fieldbyname('MTBH2').AsString);
                      sql.add('**MTBH3='+YWDDMT.fieldbyname('MTBH3').AsString+'**MTBH4='+YWDDMT.fieldbyname('MTBH4').AsString+''''+',');
                      sql.add(''''+YWDDMT.fieldbyname('USERID').Value+''''+','+''''+main.Edit1.Text+''''+',getdate())');
                      execsql;
                      active:=false;
                   end;
                   UpYWMT.Apply(ukdelete);
                 end
                 else
                   begin
                     YWDDMT.edit;
                     YWDDMT.FieldByName('USERDATE').Value:=formatdatetime('yyyy/MM/dd HH:NN:SS',Now());
                     YWDDMT.FieldByName('USERID').Value:=main.edit1.text;
                     YWDDMT.FieldByName('YN').Value:='1';
                     UpYWMT.apply(ukmodify);
                   end;
             end;
        end;
        YWDDMT.next;
      end;
    YWDDMT.active:=false;
    YWDDMT.cachedupdates:=false;
    YWDDMT.requestlive:=false;
    YWDDMT.active:=true;
    bb5.enabled:=false;
    bb6.enabled:=false;
    DBGrideh1.Columns[1].ButtonStyle:=cbsnone;
    DBGrideh1.Columns[3].ButtonStyle:=cbsnone;
    DBGrideh1.Columns[3].ButtonStyle:=cbsnone;
    DBGrideh1.Columns[4].ButtonStyle:=cbsnone;
    DBGrideh1.Columns[5].ButtonStyle:=cbsnone;
    DBGrideh1.Columns[6].ButtonStyle:=cbsnone;
    DBGrideh1.Columns[7].ButtonStyle:=cbsnone;
    DBGrideh1.Columns[8].ButtonStyle:=cbsnone;
  except
    Messagedlg('Have wrong, can not save!',mtwarning,[mbyes],0);
  end;


end;

procedure TOrderMark.BB6Click(Sender: TObject);
begin

with YWDDMT do
  begin
    active:=false;
    cachedupdates:=false;
    requestlive:=false;
    active:=true;
  end;
bb5.enabled:=false;
bb6.enabled:=false;
DBGrideh1.Columns[1].ButtonStyle:=cbsnone;
DBGrideh1.Columns[3].ButtonStyle:=cbsnone;
DBGrideh1.Columns[3].ButtonStyle:=cbsnone;
DBGrideh1.Columns[4].ButtonStyle:=cbsnone;
DBGrideh1.Columns[5].ButtonStyle:=cbsnone;
DBGrideh1.Columns[6].ButtonStyle:=cbsnone;
DBGrideh1.Columns[7].ButtonStyle:=cbsnone;
DBGrideh1.Columns[8].ButtonStyle:=cbsnone;
end;

procedure TOrderMark.BB7Click(Sender: TObject);
begin
  Close;
end;

procedure TOrderMark.FormCreate(Sender: TObject);
begin
  //edit1.Text:=OrderList.SpecMas.fieldbyname('DDBH').value;
  with YWDDMT do
  begin
    active:=false;
    sql.Clear;
    sql.add('select YWDDMT.* ');
    sql.add('from YWDDMT');
    sql.add('where YWDDMT.DDBH='+''''+OrderList.SpecMas.fieldbyname('DDBH').value+'''');
    sql.add('order by YWDDMT.XH');
    active:=true;
  end;
  BB2.enabled:=true;
  BB3.enabled:=true;
  BB4.enabled:=true;
end;

procedure TOrderMark.DBGridEh1EditButtonClick(Sender: TObject);
begin
  if ((dbgrideh1.selectedfield.index=1) or (dbgrideh1.selectedfield.index=2)) then
  begin
    OrderMark_Mt:=TOrderMark_Mt.create(self);
    OrderMark_Mt.show;
  end;  
  if ((dbgrideh1.selectedfield.index=3) or (dbgrideh1.selectedfield.index=4)) then
  begin
    OrderMark_Mt2:=TOrderMark_Mt2.create(self);
    OrderMark_Mt2.show;
  end;
  if ((dbgrideh1.selectedfield.index=5) or (dbgrideh1.selectedfield.index=6)) then
  begin
    OrderMark_Mt3:=TOrderMark_Mt3.create(self);
    OrderMark_Mt3.show;
  end;
  if ((dbgrideh1.selectedfield.index=7) or (dbgrideh1.selectedfield.index=8)) then
  begin
    OrderMark_Mt4:=TOrderMark_Mt4.create(self);
    OrderMark_Mt4.show;
  end;
end;

procedure TOrderMark.YWDDMTAfterOpen(DataSet: TDataSet);
begin
  if YWDDMT.recordcount>0 then
    begin
      YWDDMT.Last;
      XH:=strtoint(YWDDMT.fieldbyname('XH').Value);
    end
    else
      XH:=0;

end;

procedure TOrderMark.YWDDMTAfterInsert(DataSet: TDataSet);
var SXH:string;
begin
XH:=XH+3;
SXH:=inttostr(XH);
if length(SXH)<2 then
  begin
    SXH:='0'+SXH;
  end; 
YWDDMT.FieldByName('XH').Value:=SXH;
end;

procedure TOrderMark.BD4Click(Sender: TObject);
begin
  with YWDDMT do
  begin
    requestlive:=true;
    cachedupdates:=true;
  end;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
  OrderMark_Im:=TOrderMark_Im.create(self);
  OrderMark_Im.show;
end;

procedure TOrderMark.FormDestroy(Sender: TObject);
begin
  ordermark:=nil;
end;

procedure TOrderMark.FormShow(Sender: TObject);
begin
  main.FormLanguage(Pointer(self),self.Name);
end;

procedure TOrderMark.DBGridEh1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if YWDDMT.fieldbyname('YN').Value='0' then
  begin
    DBGridEh1.canvas.font.color:=clred;
  end;
end;

end.
