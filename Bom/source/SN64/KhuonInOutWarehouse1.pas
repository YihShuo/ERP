unit KhuonInOutWarehouse1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBTables, DB, GridsEh, DBGridEh, StdCtrls, ComCtrls, Buttons,
  ExtCtrls,comobj;

type
  TKhuonInOutWarehouse = class(TForm)
    Top1Panel: TPanel;
    BAT1: TBitBtn;
    BAT2: TBitBtn;
    BAT3: TBitBtn;
    BAT4: TBitBtn;
    btn_Excel: TBitBtn;
    BA1: TBitBtn;
    BA2: TBitBtn;
    BA3: TBitBtn;
    BA4: TBitBtn;
    BA5: TBitBtn;
    BA6: TBitBtn;
    BA7: TBitBtn;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    Check: TCheckBox;
    CheckBox1: TCheckBox;
    DBGridEh1: TDBGridEh;
    DS1: TDataSource;
    Query1: TQuery;
    UpdateSQL1: TUpdateSQL;
    Qtemp: TQuery;
    BDelRec: TQuery;
    Query1LLNO: TStringField;
    Query1DDBH: TStringField;
    Query1GSBH: TStringField;
    Query1Qty: TCurrencyField;
    Query1LLDate: TDateTimeField;
    Query1USERID: TStringField;
    Query1USERDATE: TDateTimeField;
    Query1YN: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BA1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BA2Click(Sender: TObject);
    procedure BA3Click(Sender: TObject);
    procedure BA4Click(Sender: TObject);
    procedure BA5Click(Sender: TObject);
    procedure BA6Click(Sender: TObject);
    procedure BA7Click(Sender: TObject);
    procedure btn_ExcelClick(Sender: TObject);
    procedure DBGridEh1EditButtonClick(Sender: TObject);
    procedure DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  KhuonInOutWarehouse: TKhuonInOutWarehouse;
  NDate:TDate;

implementation

uses main1,KhuonIn_Order1;

{$R *.dfm}

procedure TKhuonInOutWarehouse.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=caFree;
end;

procedure TKhuonInOutWarehouse.FormDestroy(Sender: TObject);
begin
  KhuonInOutWarehouse:=nil;
end;

procedure TKhuonInOutWarehouse.FormCreate(Sender: TObject);
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
  DTP1.Date:=date-2;
  DTP2.date:=date;
end;

procedure TKhuonInOutWarehouse.BA1Click(Sender: TObject);
begin
  panel2.Visible:=true;
end;

procedure TKhuonInOutWarehouse.Button1Click(Sender: TObject);
begin
  with Query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select LLNO,DDBH,GSBH,Qty,LLDate,USERID,USERDATE,YN ');
    sql.add('from KHUONIN_LL');
    sql.add('where 1=1');
    if Edit1.Text<>'' then
      sql.add(' and KHUONIN_LL.LLNO like '''+Edit1.Text+'%'' ');
    if Edit2.Text<>'' then
      sql.add(' and KHUONIN_LL.DDBH like '''+Edit2.Text+'%'' ');
    if CheckBox1.Checked=true then
    begin
      sql.add(' and convert(smalldatetime,convert(varchar,KHUONIN_LL.USERDATE,111)) between ');
      sql.add(' '''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date) +''' ');
    end;
    if Check.Checked=true then
      sql.add(' and KHUONIN_LL.USERID ='''+main.Edit1.Text+''' ');
    sql.Add(' order by LLNO ');
    active:=true;
  end;
  BA2.Enabled:=true;
  BA3.Enabled:=true;
  BA4.Enabled:=true;
end;

procedure TKhuonInOutWarehouse.BA2Click(Sender: TObject);
begin
  with Query1 do
  begin
    requestlive:=true;
    cachedupdates:=true;
    insert;
  end;
  BA5.Enabled:=true;
  BA6.Enabled:=true;
  DBGridEh1.columns[1].ButtonStyle:=cbsEllipsis;
end;

procedure TKhuonInOutWarehouse.BA3Click(Sender: TObject);
begin
  with Query1 do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
    fieldbyname('YN').Value:='0';
  end;
  BA5.Enabled:=true;
  BA6.Enabled:=true;
end;

procedure TKhuonInOutWarehouse.BA4Click(Sender: TObject);
begin
  with Query1 do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
  BA5.Enabled:=true;
  BA6.Enabled:=true;
  DBGridEh1.columns[1].ButtonStyle:=cbsEllipsis;
end;

procedure TKhuonInOutWarehouse.BA5Click(Sender: TObject);
var y,m,a:string;
    i:integer;
begin
  if Query1.FieldByName('Qty').IsNull then
  begin
    showmessage('Qty can not empty');
    abort;
  end;

  with Qtemp do
  begin
    active:=false;
    sql.Clear;
    sql.Add('select year(getdate()) as FY,month(getdate()) as FM ,getdate() as NDate');
    active:=true;
    y:=fieldbyname('FY').asstring;
    m:=fieldbyname('FM').asstring;
    NDate:=fieldbyname('NDate').Value;
    active:=false;
  end;
  if length(m)<2 then
    m:='0'+m;
  //
  try
    Query1.first;
    for i:=1 to Query1.RecordCount do
    begin
      case Query1.updatestatus of
        usinserted:
        begin
          if Query1.fieldbyname('DDBH').isnull then
          begin
            Query1.Delete;
          end else
          begin
            with Qtemp do
             begin
               active:=false;
               sql.Clear;
               sql.Add('select LLNO from KHUONIN_LL where LLNO like '+''''+y+m+'%'+'''');
               sql.add('order by LLNO');
               active:=true;
               if recordcount >0 then
               begin
                 last;
                 a:=fieldbyname('LLNO').AsString;
                 a:=copy(a,7,5);
                 a:=inttostr(strtoint(a)+1);
                 while length(a)<5 do
                 begin
                   a:='0'+a;
                 end;
               end else
               begin
                 a:='00001';
               end;
               a:=y+m+a;
               active:=false;
             end;
             Query1.edit;
             Query1.fieldbyname('LLNO').Value:=a;
             Query1.fieldbyname('LLDate').Value:=Ndate;
             Query1.FieldByName('userID').Value:=main.edit1.text;
             Query1.FieldByName('userdate').Value:=Ndate;
             Query1.FieldByName('YN').Value:='1';
             //
             with Qtemp do
             begin
               active:=false;
               sql.Clear;
               sql.Add('select isnull(RK.RKQty,0) as RKQty,isnull(LL.LLQty,0) as LLQty ');
               sql.Add('from KHUONIN_DDZL DDZL');
               sql.Add('left join (select DDBH,sum(Qty) as RKQty from KHUONIN_RK group by DDBH ) RK on DDZL.DDBH = RK.DDBH');
               sql.Add('left join (select DDBH,sum(Qty) as LLQty from KHUONIN_LL group by DDBH ) LL on DDZL.DDBH = LL.DDBH');
               sql.Add('where DDZL.DDBH = '''+Query1.fieldbyname('DDBH').Value+ ''' ');
               active:=true;
               if Query1.FieldByName('Qty').Value+Qtemp.FieldByName('LLQty').Value <= Qtemp.FieldByName('RKQty').Value then
               begin
                 UpdateSQL1.Apply(ukinsert);
               end else
               begin
                 showmessage('Qty Out Warehouse > Qty  In  Warehouse.');
                 Abort;
               end;
               active:=false;
             end;
          end;
        end;
        usmodified:
        begin
          if Query1.FieldByName('USERID').value=main.Edit1.Text then
           begin
            if NDate-Query1.FieldByName('USERDATE').value<1 then
              begin
               if Query1.fieldbyname('YN').value='0'then
                begin
                  with BDelRec do
                  begin
                    active:=false;
                    sql.Clear;
                    sql.add('insert into BDelRec ');
                    sql.add('(TableName ,TNO,CLBH,OldID,DelID,DelDate)');
                    sql.add('values ('+''''+'KHUONIN_LL'+''''+','+''''+Query1.fieldbyname('LLNO').Value+'''');
                    sql.add(','+''''+''+''''+','+''''+Query1.fieldbyname('USERID').Value+''''+',');
                    sql.add(''''+main.Edit1.Text+''''+',getdate())');
                    execsql;
                    active:=false;
                  end;
                  UpdateSQL1.Apply(ukdelete);
                end else
                begin
                  Query1.edit;
                  Query1.FieldByName('userID').Value:=main.edit1.text;
                  Query1.FieldByName('userdate').Value:=Ndate;
                  //
                  with Qtemp do
                  begin
                    active:=false;
                    sql.Clear;
                    sql.Add('select isnull(RK.RKQty,0) as RKQty,isnull(LL.LLQty,0) as LLQty ');
                    sql.Add('from KHUONIN_DDZL DDZL');
                    sql.Add('left join (select DDBH,sum(Qty) as RKQty from KHUONIN_RK group by DDBH ) RK on DDZL.DDBH = RK.DDBH');
                    sql.Add('left join (select DDBH,sum(Qty) as LLQty from KHUONIN_LL group by DDBH ) LL on DDZL.DDBH = LL.DDBH');
                    sql.Add('where DDZL.DDBH = '''+Query1.fieldbyname('DDBH').Value+ ''' ');
                    active:=true;
                    if Query1.FieldByName('Qty').Value-Query1.FieldByName('Qty').OldValue+Qtemp.FieldByName('LLQty').Value <= Qtemp.FieldByName('RKQty').Value then
                    begin
                      UpdateSQL1.Apply(ukmodify);
                    end else
                    begin
                      showmessage('Qty Out Warehouse > Qty  In  Warehouse.');
                      Abort;
                    end;
                    active:=false;
                  end;
                end;
              end else
              begin
                ShowMessage('Date > 1, can not modify or delete.');
              end;
           end else
           begin
              Showmessage('It is not yours, can not modify.');
           end;
        end;
      end;
      Query1.Next;
    end;
  Query1.active:=false;
  Query1.cachedupdates:=false;
  Query1.requestlive:=false;
  Query1.active:=true;
  BA5.enabled:=false;
  BA6.enabled:=false;
  DBGridEh1.columns[1].ButtonStyle:=cbsnone;
  showmessage('Succeed');
  except
    Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
  end;
end;

procedure TKhuonInOutWarehouse.BA6Click(Sender: TObject);
begin
  with Query1 do
  begin
    active:=false;
    cachedupdates:= false;
    requestlive:=false;
    active:=true;
  end;
  BA5.Enabled:=false;
  BA6.Enabled:=false;
  DBGridEh1.columns[1].ButtonStyle:=cbsnone;
end;

procedure TKhuonInOutWarehouse.BA7Click(Sender: TObject);
begin
  close();
end;

procedure TKhuonInOutWarehouse.btn_ExcelClick(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin
  if  Query1.active  then
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
      for   i:=0   to   Query1.fieldcount-1   do
        begin
          eclApp.Cells(1,i+1):=Query1.fields[i].FieldName;
        end;
      //
      Query1.First;
      j:=2;
      while   not   Query1.Eof   do
      begin
        for   i:=0   to  Query1.fieldcount-1  do
        begin
          eclApp.Cells(j,i+1):=Query1.Fields[i].Value;
        end;
        Query1.Next;
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

procedure TKhuonInOutWarehouse.DBGridEh1EditButtonClick(Sender: TObject);
begin
  KhuonIn_Order:=TKhuonIn_Order.create(self);
  KhuonIn_Order.show;
end;

procedure TKhuonInOutWarehouse.DBGridEh1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if Query1.FieldByName('YN').value='0' then
  begin
    DBGridEh1.canvas.font.color:=clred;
    DBGridEh1.defaultdrawcolumncell(rect,datacol,column,state);
  end;
end;

end.
