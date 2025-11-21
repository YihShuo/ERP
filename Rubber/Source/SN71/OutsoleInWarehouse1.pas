unit OutsoleInWarehouse1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBTables, DB, GridsEh, DBGridEh, StdCtrls, ComCtrls, Buttons,
  ExtCtrls, comobj;

type
  TOutsoleInWarehouse = class(TForm)
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
    DataSource1: TDataSource;
    Query1: TQuery;
    UpdateSQL1: TUpdateSQL;
    Qtemp: TQuery;
    BDelRec: TQuery;
    Query1RKNO: TStringField;
    Query1DDBH: TStringField;
    Query1GSBH: TStringField;
    Query1Qty: TCurrencyField;
    Query1InDate: TDateTimeField;
    Query1USERID: TStringField;
    Query1USERDATE: TDateTimeField;
    Query1YN: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BA1Click(Sender: TObject);
    procedure BA2Click(Sender: TObject);
    procedure BA3Click(Sender: TObject);
    procedure BA4Click(Sender: TObject);
    procedure BA5Click(Sender: TObject);
    procedure BA6Click(Sender: TObject);
    procedure BA7Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure DBGridEh1EditButtonClick(Sender: TObject);
    procedure DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  OutsoleInWarehouse: TOutsoleInWarehouse;
  NDate:TDate;

implementation

uses main1, Order_Rubber1;

{$R *.dfm}

procedure TOutsoleInWarehouse.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TOutsoleInWarehouse.FormDestroy(Sender: TObject);
begin
  OutsoleInWarehouse:=nil;
end;

procedure TOutsoleInWarehouse.FormCreate(Sender: TObject);
var i:integer;
    y,m,d:word;
begin
  with Qtemp do
  begin
    active:=false;
    SQL.Clear;
    SQL.add('select getdate() as NDate ');
    active:=true;
    NDate:=fieldbyname('NDate').Value;
    active:=false;
  end;
  DTP1.Date:=Date-2;
  DTP2.Date:=Date;
end;

procedure TOutsoleInWarehouse.Button1Click(Sender: TObject);
begin
  with Query1 do
  begin
    active:=false;
    SQL.Clear;
    SQL.Add(' select RKNO,DDBH,GSBH,Qty,InDate,USERID,USERDATE,YN ');
    SQL.Add(' from '+main.LIY_DD+'.dbo.OUTSOLE_RK RK ');
    SQL.Add(' where 1=1');
    if Edit1.Text<>'' then
      SQL.Add(' and RK.RKNO like '''+Edit1.Text+'%'' ');
    if Edit2.Text<>'' then
      SQL.Add(' and RK.DDBH like '''+Edit2.Text+'%'' ');
    if CheckBox1.Checked=true then
    begin
      SQL.Add(' and convert(smalldatetime,convert(varchar,RK.USERDATE,111)) between ');
      SQL.Add('  '''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date) +''' ');
    end;
    if Check.Checked=true then
      SQL.Add(' and RK.USERID ='''+main.Edit1.Text+''' ');
    SQL.Add(' order by RKNO desc');
    active:=true;
  end;
  BA2.Enabled:=true;
  BA3.Enabled:=true;
  BA4.Enabled:=true;
end;

procedure TOutsoleInWarehouse.BA1Click(Sender: TObject);
begin
  panel2.Visible:=true;
end;

procedure TOutsoleInWarehouse.BA2Click(Sender: TObject);
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

procedure TOutsoleInWarehouse.BA3Click(Sender: TObject);
begin
  if Query1.FieldByName('YN').Value=5 then
  begin
    showmessage('Account already confirm. Can not delete !');
    abort;
  end;
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

procedure TOutsoleInWarehouse.BA4Click(Sender: TObject);
begin
  if Query1.FieldByName('YN').Value=5 then
  begin
    showmessage('Account already confirm. Can not modify !');
    abort;
  end;
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

procedure TOutsoleInWarehouse.BA5Click(Sender: TObject);
var y,m,a:string;
    i:integer;
begin
  with Qtemp do
  begin
    active:=false;
    SQL.Clear;
    SQL.Add('select year(getdate()) as FY,month(getdate()) as FM ,getdate() as NDate ');
    active:=true;
    y:=fieldbyname('FY').asstring;
    m:=fieldbyname('FM').asstring;
    NDate:=fieldbyname('NDate').Value;
    active:=false;
  end;
  if length(m)<2 then
    m:='0'+m;
  //
  with Qtemp do
  begin
    active:=false;
    SQL.Clear;
    SQL.Add('select * from '+main.LIY_DD+'.dbo.DDZL where DDBH = '''+Query1.FieldByName('DDBH').Value+''' ');
    active:=true;
    if Qtemp.RecordCount=0 then
    begin
      showmessage('Order does not exist.');
      abort;
    end;
    active:=false;
  end;
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
            Query1.delete;
          end else
          begin
             with Qtemp do
             begin
               active:=false;
               SQL.Clear;
               SQL.Add('select RKNO from '+main.LIY_DD+'.dbo.OUTSOLE_RK where RKNO like '+''''+y+m+'%'+'''');
               SQL.add('order by RKNO');
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
               end else
               begin
                 a:='00001';
               end;
               a :=y+m+a;
               active:=false;
             end;
             Query1.edit;
             Query1.fieldbyname('RKNO').Value:=a;
             Query1.FieldByName('userID').Value:=main.edit1.text;
             Query1.FieldByName('userdate').Value:=Ndate;
             Query1.FieldByName('YN').Value:='1';
             with Qtemp do
             begin
                active:=false;
                SQL.Clear;
                SQL.Add('select DDZL.Pairs, isnull(RK.RKQty,0) as RKQty ');
                SQL.Add('from '+main.LIY_DD+'.dbo.DDZL DDZL ');
                SQL.Add('left join (select DDBH, sum(Qty) as RKQty from '+main.LIY_DD+'.dbo.OUTSOLE_RK group by DDBH) RK on DDZL.DDBH=RK.DDBH');
                SQL.Add('where DDZL.DDBH ='''+Query1.FieldByName('DDBH').Value+''' group by DDZL.Pairs,RK.RKQty');
                active:=true;
                if Query1.FieldByName('Qty').Value+Qtemp.FieldByName('RKQty').Value > Qtemp.FieldByName('Pairs').Value then
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
          if Query1.FieldByName('USERID').value=main.Edit1.Text then
           begin
            if NDate-Query1.FieldByName('USERDATE').value<=30 then
              begin
               if Query1.fieldbyname('YN').value='0'then
                begin
                  with BDelRec do
                  begin
                    active:=false;
                    sql.Clear;
                    sql.add('insert into BDelRec ');
                    sql.add('(TableName ,TNO,CLBH,OldID,DelID,DelDate)');
                    sql.add('values ('+''''+'OUTSOLE_RK'+''''+','+''''+Query1.fieldbyname('RKNO').Value+'''');
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
                    SQL.Add('select DDZL.Pairs, isnull(RK.RKQty,0) as RKQty ');
                    SQL.Add('from '+main.LIY_DD+'.dbo.DDZL DDZL ');
                    SQL.Add('left join (select DDBH, sum(Qty) as RKQty from '+main.LIY_DD+'.dbo.OUTSOLE_RK group by DDBH) RK on DDZL.DDBH=RK.DDBH');
                    SQL.Add('where DDZL.DDBH ='''+Query1.FieldByName('DDBH').Value+''' group by DDZL.Pairs,RK.RKQty');
                    active:=true;
                    if Query1.FieldByName('Qty').Value-Query1.FieldByName('Qty').OldValue+Qtemp.FieldByName('RKQty').Value > Qtemp.FieldByName('Pairs').Value then
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
                ShowMessage('Date > 30, can not modify or delete.');
              end;
           end else
           begin
              Showmessage('It is not yours, can not modify.');
           end;
        end;
      end;
      Query1.next;
    end;
  Query1.active:=false;
  Query1.cachedupdates:=false;
  Query1.requestlive:=false;
  Query1.active:=true;
  BA5.enabled:=false;
  BA6.enabled:=false;
  DBGridEh1.columns[1].ButtonStyle:=cbsnone;
  showmessage('Succeed.');
  except
    Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
  end;
end;

procedure TOutsoleInWarehouse.BA6Click(Sender: TObject);
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

procedure TOutsoleInWarehouse.BA7Click(Sender: TObject);
begin
  close();
end;

procedure TOutsoleInWarehouse.BitBtn1Click(Sender: TObject);
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
      for i:=0 to Query1.fieldcount-1 do
        begin
          eclApp.Cells(1,i+1):=Query1.fields[i].FieldName;
        end;
      //
      Query1.First;
      j:=2;
      while not Query1.Eof   do
      begin
        for i:=0 to Query1.fieldcount-1 do
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

procedure TOutsoleInWarehouse.DBGridEh1EditButtonClick(Sender: TObject);
begin
  Order_Rubber:=TOrder_Rubber.create(self);
  Order_Rubber.show;
end;

procedure TOutsoleInWarehouse.DBGridEh1DrawColumnCell(Sender: TObject;
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
