unit DailyExchange1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, DB, StdCtrls, DBTables, Buttons, Grids, DBGrids,comobj,
  ExtCtrls, GridsEh, DBGridEh, IniFiles, math;

type
  TDailyExchange = class(TForm)
    Panel2: TPanel;
    Panel3: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
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
    bbt6: TBitBtn;
    DS1: TDataSource;
    Query1: TQuery;
    UpSQL1: TUpdateSQL;
    Label3: TLabel;
    CBX1: TComboBox;
    CBX2: TComboBox;
    CBX3: TComboBox;
    Query1HLYEAR: TStringField;
    Query1HLMONTH: TStringField;
    Query1HLDAY: TStringField;
    Query1USERID: TStringField;
    Query1USERDATE: TDateTimeField;
    Query1YN: TStringField;
    CB1: TDBComboBox;
    CB2: TDBComboBox;
    CB3: TDBComboBox;
    DBGridEh1: TDBGridEh;
    Qtemp: TQuery;
    Query1CWHL: TCurrencyField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BB7Click(Sender: TObject);
    procedure BB1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BB2Click(Sender: TObject);
    procedure BB3Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure BBT1Click(Sender: TObject);
    procedure BBT2Click(Sender: TObject);
    procedure BBT3Click(Sender: TObject);
    procedure BBT4Click(Sender: TObject);
    procedure bbt6Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
  private
    { Private declarations }
    procedure readini();
  public
    VNPrice_DiplayFormat:string;
    VNPrice_Decimal:Byte;
    { Public declarations }
  end;

var
  DailyExchange: TDailyExchange;

implementation

uses main1,fununit;

{$R *.dfm}

procedure TDailyExchange.readini();
var MyIni :Tinifile;
    AppDir:string;
begin
  //
  VNPrice_DiplayFormat:='#,##0.00';
  VNPrice_Decimal:=0;
  AppDir:=ExtractFilePath(Application.ExeName);
  if FileExists(AppDir+'\ComName.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ComName.ini');
      VNPrice_DiplayFormat:=MyIni.ReadString('VNPrice','DiplayFormat','#,##0');
      VNPrice_Decimal:=strtoint(MyIni.ReadString('VNPrice','Decimal','0'));
    finally
      MyIni.Free;
    end;
  end;
  TCurrencyField(Query1.FieldByName('CWHL')).DisplayFormat:=VNPrice_DiplayFormat;
end;
//

procedure TDailyExchange.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if query1.requestlive then
  begin
    messagedlg('You have to save data first.',mtwarning,[mbyes],0);
    action:=canone;
  end
  else
   action:=Cafree;
end;

procedure TDailyExchange.BB7Click(Sender: TObject);
begin
  close;
end;

procedure TDailyExchange.BB1Click(Sender: TObject);
begin
  CBX1.setfocus;
end;

procedure TDailyExchange.Button1Click(Sender: TObject);
begin
  with Query1 do
  begin
    active:=false;
    sql.clear;
    sql.add('select * from CWHLS');
    sql.add('where HLYEAR like '+''''+CBX1.text+'%'+'''');
    sql.add('and HLMONTH like '+''''+CBX2.text+'%'+'''');  
    sql.add('and HLDAY like '+''''+CBX3.text+'%'+'''');
    sql.add('order by HLYEAR,HLMONTH,HLDAY ');
    active:=true;
  end;
  bb2.enabled:=true;
  bb3.enabled:=true;
  bb4.enabled:=true;
  bb5.enabled:=false;
  bb6.enabled:=false;
  bb7.enabled:=true;
  bbt1.enabled:=true;
  bbt2.enabled:=true;
  bbt3.enabled:=true;
  bbt4.enabled:=true;
  bbt6.enabled:=true;
end;

procedure TDailyExchange.BB2Click(Sender: TObject);
begin
  with query1 do
  begin
    cachedupdates:=true;
    requestlive:=true;
    Insert;
    query1.fieldbyname('YN').value:='0';
  end;
  bb5.enabled:=true;
  bb6.enabled:=true;
end;

procedure TDailyExchange.BB3Click(Sender: TObject);
begin
  with query1 do
  begin
    cachedupdates:=true;
    requestlive:=true;
    query1.edit;
    query1.fieldbyname('YN').value:='0';
  end;
  bb5.enabled:=true;
  bb6.enabled:=true;
end;

procedure TDailyExchange.BB4Click(Sender: TObject);
begin
  with query1 do
  begin
    cachedupdates:=true;
    requestlive:=true;
    query1.edit;
  end;
  bb5.enabled:=true;
  bb6.enabled:=true;
end;

procedure TDailyExchange.BB6Click(Sender: TObject);
begin
  with query1 do
  begin
    active:=false;
    cachedupdates:=false;
    requestlive:=false;
    active:=true;
  end;
  bb5.enabled:=false;
  bb6.enabled:=false;
end;

procedure TDailyExchange.BBT1Click(Sender: TObject);
begin
  query1.First;
end;

procedure TDailyExchange.BBT2Click(Sender: TObject);
begin
  query1.prior;
end;

procedure TDailyExchange.BBT3Click(Sender: TObject);
begin
  query1.next;
end;

procedure TDailyExchange.BBT4Click(Sender: TObject);
begin
  query1.last;
end;

procedure TDailyExchange.bbt6Click(Sender: TObject);
var   a:string;
      eclApp,WorkBook:olevariant;
 //     xlsFileName:string;
      i,j:integer;
 begin
  if  query1.active  then
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
        for   i:=0   to   query1.fieldcount-1   do
        begin
            eclApp.Cells(1,i+1):=query1.fields[i].FieldName;
        end;

        query1.First;
        j:=2;
        while   not   query1.Eof   do
        begin
          for   i:=0   to  query1.fieldcount-1  do
          begin
            eclApp.Cells(j,i+1):=query1.Fields[i].Value;
          end;
        query1.Next;
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

procedure TDailyExchange.BB5Click(Sender: TObject);
var i:integer;
    a:string;
begin
  try
    query1.first;
    for i:=1 to query1.RecordCount do
    begin
      case query1.updatestatus of
        usinserted:
        begin
          if query1.fieldbyname('CWHL').isnull then
          begin
            showmessage('Pls key in Exchange Rate first.');
            abort;
          end else
          begin
            query1.edit;
            query1.FieldByName('CWHL').Value:=RoundTo(query1.FieldByName('CWHL').Value,VNPrice_Decimal);
            query1.FieldByName('userID').Value:=main.edit1.text;
            query1.FieldByName('userdate').Value:=date;
            query1.FieldByName('YN').Value:='1';
            upsql1.apply(ukinsert);
          end;
        end;

        usmodified:
        begin
          if query1.FieldByName('YN').value='0' then
          begin
            upsql1.Apply(ukdelete);
          end else
          begin
            query1.edit;
            query1.FieldByName('userID').Value:=main.edit1.text;
            query1.FieldByName('userdate').Value:=date;
            upsql1.apply(ukmodify);
          end;
        end;
      end;
      query1.next;
    end;

  query1.active:=false;
  query1.cachedupdates:=false;
  query1.requestlive:=false;
  query1.active:=true;
  bb5.enabled:=false;
  bb6.enabled:=false;
  //20230225 update kcrks table
  with Qtemp do
  begin
    active:=false;
    sql.Clear;
    SQL.Add('update KCRKS  ');
    SQL.Add('set CWHL=CWHLS.CWHL  ');
    SQL.Add('    ,VNPrice=round(USPrice*CWHLS.CWHL,0)  ');
    SQL.Add('    ,VNACC=round(USACC*CWHLS.CWHL,0)  ');
    SQL.Add('FROM KCRKS  ');
    SQL.Add('left join KCRK on KCRK.RKNO = KCRKS.RKNO  ');
    SQL.Add('left join CWHLS on  CWHLS.HLYEAR+''/''+CWHLS.HLMONTH+''/''+CWHLS.HLDAY=convert(varchar,KCRK.USERDate,111)  ');
    SQL.Add('where convert(varchar(7),KCRK.USERDATE,111)='''+CBX1.Text+'/'+CBX2.Text+''' ');
    SQL.Add('and KCRK.YN=''5''  ');
    SQL.Add('and USPrice>0 and VNPrice>0  ');
    SQL.Add('and KCRKS.CWHL<>CWHLS.CWHL  ');
    //funcobj.WriteErrorLog(sql.Text);
    execsql;
    active:=false;
  end;
  //
  except
    Messagedlg('Have wrong,can not save!',mtwarning,[mbyes],0);
end;

end;

procedure TDailyExchange.FormDestroy(Sender: TObject);
begin
  dailyexchange:=nil;
end;

procedure TDailyExchange.FormCreate(Sender: TObject);
var i:integer;
    myYear, myMonth, myDay : Word;
    NDate :Tdate;
begin
  with Qtemp do
  begin
    active:=false;
    sql.Clear;
    sql.add('select year(getdate())-5 as Oldyear,year(getdate())+5 as Newyear');
    active:=true;
    for i:=QTemp.fieldbyname('Oldyear').value to  QTemp.fieldbyname('Newyear').value  do
    begin
      CBX1.Items.Add(inttostr(i));
      next;
    end;
    active:=false;

    DecodeDate(Date(), myYear, myMonth, myDay);
    for i:=0 to CBX1.Items.Count-1 do
    begin
      if strtoint(CBX1.Items[i])=myYear then
      begin
        CBX1.ItemIndex:=i;
        break;
      end;
    end;
    for i:=0 to CBX2.Items.Count-1 do
    begin
      if strtoint(CBX2.Items[i])=myMonth then
      begin
        CBX2.ItemIndex:=i;
        break;
      end;
    end;
  end;
  readini();
end;

procedure TDailyExchange.DBGridEh1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if (gdFocused in State) then
  begin
   if (DataCol=0) then
     begin
     CB1.Left:=Rect.Left  + DBGridEh1.Left;
     CB1.Top:=Rect.Top   + DBGridEh1.top;
     CB1.Width:=Rect.Right - Rect.Left;
     CB1.Height:=Rect.Bottom- Rect.Top;
     CB1.Visible:=True;
     end
     else
       CB1.Visible:=false;
   if (DataCol=1) then
     begin
     CB2.Left:=Rect.Left  + DBGridEh1.Left;
     CB2.Top:=Rect.Top   + DBGridEh1.top;
     CB2.Width:=Rect.Right - Rect.Left;
     CB2.Height:=Rect.Bottom- Rect.Top;
     CB2.Visible:=True;
     end
     else
       CB2.Visible:=false;
   if (DataCol=2) then
     begin
     CB3.Left:=Rect.Left  + DBGridEh1.Left;
     CB3.Top:=Rect.Top   + DBGridEh1.top;
     CB3.Width:=Rect.Right - Rect.Left;
     CB3.Height:=Rect.Bottom- Rect.Top;
     CB3.Visible:=True;
     end
     else
       CB3.Visible:=false;
  end;

  if Query1.FieldByName('YN').value='0' then
  begin
    DBGridEh1.canvas.font.color:=clred;
    DBGridEh1.defaultdrawcolumncell(rect,datacol,column,state);
  end;

  if Query1.FieldByName('YN').isnull then
  begin
    DBGridEh1.canvas.font.color:=cllime;
    DBGridEh1.defaultdrawcolumncell(rect,datacol,column,state);
  end;
end;

end.
