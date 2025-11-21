unit KhuonInInWarehouse1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GridsEh, DBGridEh, StdCtrls, Buttons, ExtCtrls, DBTables, DB,
  ComCtrls,comobj;

type
  TKhuonInInWarehouse = class(TForm)
    Top1Panel: TPanel;
    BA2: TBitBtn;
    BA3: TBitBtn;
    BA4: TBitBtn;
    BA5: TBitBtn;
    BA6: TBitBtn;
    BA7: TBitBtn;
    BA1: TBitBtn;
    BAT1: TBitBtn;
    BAT2: TBitBtn;
    BAT3: TBitBtn;
    BAT4: TBitBtn;
    BitBtn1: TBitBtn;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    DBGrid1: TDBGridEh;
    DataSource1: TDataSource;
    RK: TQuery;
    UpdateSQL1: TUpdateSQL;
    Label3: TLabel;
    DTP1: TDateTimePicker;
    Label4: TLabel;
    DTP2: TDateTimePicker;
    Check: TCheckBox;
    CheckBox1: TCheckBox;
    RKRKNO: TStringField;
    RKDDBH: TStringField;
    RKGSBH: TStringField;
    RKInDate: TDateTimeField;
    RKQty: TCurrencyField;
    RKUSERID: TStringField;
    RKUSERDATE: TDateTimeField;
    RKYN: TStringField;
    Query1: TQuery;
    BDelRec: TQuery;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure BA1Click(Sender: TObject);
    procedure BA2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BA3Click(Sender: TObject);
    procedure BA4Click(Sender: TObject);
    procedure BA6Click(Sender: TObject);
    procedure BA5Click(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure DBGrid1EditButtonClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  KhuonInInWarehouse: TKhuonInInWarehouse;
  NDate:TDate;

implementation

uses main1, KhuonInorder1;

{$R *.dfm}

procedure TKhuonInInWarehouse.Button1Click(Sender: TObject);
begin
  with RK do
  begin
    active:=false;
    sql.Clear;
    sql.add('select RKNO,DDBH,GSBH,InDate,Qty,USERID,USERDATE,YN ');
    sql.add('from KHUONIN_RK');
    sql.add('where 1=1');
    if Edit1.Text<>'' then
      sql.add('      and KHUONIN_RK.RKNO like '+''''+'%'+edit1.text+'%'+'''');
    if Edit2.Text<>'' then
      sql.add('      and KHUONIN_RK.DDBH like '+''''+'%'+edit2.text+'%'+'''');
    if CheckBox1.Checked=true then
    begin
      sql.add('      and convert(smalldatetime,convert(varchar,KHUONIN_RK.USERDATE,111)) between ');
      sql.add('          '''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date) +'''');
    end;
    if Check.Checked=true then
      sql.add('      and KHUONIN_RK.USERID ='+''''+main.Edit1.Text+'''');
    sql.add('order by RKNO desc');
    active:=true;
  end;
  BA2.Enabled:=true;
  BA3.Enabled:=true;
  BA4.Enabled:=true;
end;

procedure TKhuonInInWarehouse.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TKhuonInInWarehouse.FormDestroy(Sender: TObject);
begin
  KhuonInInWarehouse:=nil;
end;

procedure TKhuonInInWarehouse.BA1Click(Sender: TObject);
begin
  panel2.Visible:=true;
end;

procedure TKhuonInInWarehouse.BA2Click(Sender: TObject);
begin
  with RK do
  begin
    requestlive:=true;
    cachedupdates:=true;
    insert;
  end;
  BA5.Enabled:=true;
  BA6.Enabled:=true;
  DBGrid1.columns[1].ButtonStyle:=cbsEllipsis;
end;

procedure TKhuonInInWarehouse.FormCreate(Sender: TObject);
var i:integer;
    y,m,d:word;
begin
  with query1 do
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

procedure TKhuonInInWarehouse.BA3Click(Sender: TObject);
begin
  if NDate-RK.FieldByName('USERDATE').value<1 then
  begin
    with RK do
    begin
      requestlive:=true;
      cachedupdates:=true;
      edit;
      fieldbyname('YN').Value:='0';
    end;
  end else
  begin
    Showmessage('It is not today, can not delete.');
  end;
  BA5.Enabled:=true;
  BA6.Enabled:=true;
end;

procedure TKhuonInInWarehouse.BA4Click(Sender: TObject);
begin
  with RK do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
  BA5.Enabled:=true;
  BA6.Enabled:=true;
  DBGrid1.columns[1].ButtonStyle:=cbsEllipsis;
end;

procedure TKhuonInInWarehouse.BA6Click(Sender: TObject);
begin
  with RK do
  begin
    active:=false;
    cachedupdates:= false;
    requestlive:=false;
    active:=true;
  end;
  BA5.Enabled:=false;
  BA6.Enabled:=false;
  DBGrid1.columns[1].ButtonStyle:=cbsnone;
end;

procedure TKhuonInInWarehouse.BA5Click(Sender: TObject);
var y,m,a,QTY:string;
    i:integer;
begin
  with Query1 do
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
  with Query1 do
  begin
    active:=false;
    sql.Clear;
    sql.Add('select * from KHUONIN_DDZL where DDBH = '''+RK.FieldByName('DDBH').Value+'''');
    active:=true;
    if Query1.RecordCount=0 then
    begin
      showmessage('Order does not exist.');
      abort;
    end;
    active:=false;
  end;
  if length(m)<2 then
     m:='0'+m;
  try
    RK.first;
    for i:=1 to RK.RecordCount do
    begin
      case RK.updatestatus of
        usinserted:
        begin
          if RK.fieldbyname('DDBH').isnull then
          begin
            RK.delete;
          end else
          begin
             with Query1 do
             begin
               active:=false;
               sql.Clear;
               sql.Add('select RKNO from KHUONIN_RK where RKNO like '+''''+y+m+'%'+'''');
               sql.add('order by RKNO');
               active:=true;
               if recordcount >0 then
               begin
                 last;
                 a:=fieldbyname('RKNO').AsString;
                 a:=copy(a,7,5);
                 a:=inttostr(strtoint(a)+1);
                 while length(a)<5 do
                 begin
                   a:='0'+a;
                 end;
               end
               else
               begin
                 a:='00001';
               end;
               a :=y+m+a;
               active:=false;
             end;
             RK.edit;
             RK.fieldbyname('RKNO').Value:=a;
             RK.fieldbyname('InDate').Value:=Ndate;
             RK.FieldByName('userID').Value:=main.edit1.text;
             RK.FieldByName('userdate').Value:=Ndate;
             RK.FieldByName('YN').Value:='1';
             with Query1 do
             begin
                active:=false;
                sql.Clear;
                sql.Add('select KHUONIN_DDZL.Quantity,sum (isnull(KHUONIN_RK.Qty,0)) as  Qty ');
                sql.Add('from KHUONIN_DDZL left join KHUONIN_RK on KHUONIN_DDZL.DDBH=KHUONIN_RK.DDBH');
                sql.Add('where KHUONIN_DDZL.DDBH = '''+RK.FieldByName('DDBH').Value+''' group by KHUONIN_DDZL.Quantity');
                active:=true;
                if RK.FieldByName('Qty').Value+Query1.FieldByName('Qty').Value > Query1.FieldByName('Quantity').Value then
                begin
                  showmessage('Qty in warehouses > Qty of orders.');
                  abort;
                end;
                active:=false;
             end;
             UpdateSQL1.apply(ukinsert);
           end;
        end;
        usmodified:
        begin
           if (RK.FieldByName('USERID').value=main.Edit1.Text) and (NDate-RK.FieldByName('USERDATE').value<1) then
           begin
             if RK.fieldbyname('YN').value='0'then
             begin
               with BDelRec do
               begin
                 active:=false;
                 sql.Clear;
                 sql.add('insert into BDelRec ');
                 sql.add('(TableName ,TNO,CLBH,OldID,DelID,DelDate)');
                 sql.add('values ('+''''+'KHUONIN_RK'+''''+','+''''+RK.fieldbyname('RKNO').Value+'''');
                 sql.add(','+''''+''+''''+','+''''+RK.fieldbyname('USERID').Value+''''+',');
                 sql.add(''''+main.Edit1.Text+''''+',getdate())');
                 execsql;
                 active:=false;
               end;
               UpdateSQL1.apply(ukdelete);
             end else
             begin
                 RK.edit;
                 RK.FieldByName('userID').Value:=main.edit1.text;
                 RK.FieldByName('userdate').Value:=Ndate;
                 with Query1 do
                 begin
                    active:=false;
                    sql.Clear;
                    sql.Add('select KHUONIN_DDZL.Quantity,sum (isnull(KHUONIN_RK.Qty,0)) as  Qty ');
                    sql.Add('from KHUONIN_DDZL left join KHUONIN_RK on KHUONIN_DDZL.DDBH=KHUONIN_RK.DDBH');
                    sql.Add('where KHUONIN_DDZL.DDBH = '''+RK.FieldByName('DDBH').Value+''' group by KHUONIN_DDZL.Quantity');
                    active:=true;
                    if RK.FieldByName('Qty').Value-RK.FieldByName('Qty').OldValue+Query1.FieldByName('Qty').Value > Query1.FieldByName('Quantity').Value then
                    begin
                      showmessage('Qty in warehouses > Qty of orders.');
                      abort;
                    end;
                    active:=false;
                 end;
                 UpdateSQL1.apply(ukmodify);
             end;
           end else
           begin
              Showmessage('It is not yours or not today, can not modify or delete.');
           end;
         end;
      end;
      RK.next;
    end;
  RK.active:=false;
  RK.cachedupdates:=false;
  RK.requestlive:=false;
  RK.active:=true;
  BA5.enabled:=false;
  BA6.enabled:=false;
  dbgrid1.columns[1].ButtonStyle:=cbsnone;
  showmessage('Succeed');
  except
    Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
  end;
end;

procedure TKhuonInInWarehouse.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if RK.FieldByName('YN').value='0' then
  begin
    dbgrid1.canvas.font.color:=clred;
    dbgrid1.defaultdrawcolumncell(rect,datacol,column,state);
  end;
end;

procedure TKhuonInInWarehouse.DBGrid1EditButtonClick(Sender: TObject);
begin
  KhuonInorder:=TKhuonInorder.create(self);
  KhuonInorder.show;
end;

procedure TKhuonInInWarehouse.BitBtn1Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin
  if  RK.active  then
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
      for   i:=0   to   RK.fieldcount-1   do
        begin
            eclApp.Cells(1,i+1):=RK.fields[i].FieldName;
        end;

      RK.First;
      j:=2;
      while   not   RK.Eof   do
      begin
        for   i:=0   to  RK.fieldcount-1  do
        begin
          eclApp.Cells(j,i+1):=RK.Fields[i].Value;
        end;
      RK.Next;
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

end.

