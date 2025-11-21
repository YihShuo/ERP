unit DeliverCheckOrder1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ComCtrls, ExtCtrls,comobj,
  Dateutils, iniFiles;

type
  TDeliverCheckOrder = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label4: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Edit2: TEdit;
    Button2: TButton;
    Panel2: TPanel;
    Query1: TQuery;
    DS1: TDataSource;
    CBX1: TComboBox;
    Label2: TLabel;
    Label6: TLabel;
    CBX2: TComboBox;
    GSBHCBX: TComboBox;
    Label12: TLabel;
    QTemp: TQuery;
    Query1SCBH: TStringField;
    Query1Article: TStringField;
    Query1XieMing: TStringField;
    Query1DaoMH: TStringField;
    Query1KFJC: TStringField;
    Query1pairs: TIntegerField;
    Query1InQty: TIntegerField;
    Label14: TLabel;
    Label13: TLabel;
    CBX4: TComboBox;
    Label15: TLabel;
    CBX5: TComboBox;
    PC1: TPageControl;
    TabSheet1: TTabSheet;
    DBGridEh1: TDBGridEh;
    Label16: TLabel;
    CBX6: TComboBox;
    TabSheet3: TTabSheet;
    DBGridEh3: TDBGridEh;
    DS3: TDataSource;
    Query3: TQuery;
    Query3SCBH: TStringField;
    Query3Article: TStringField;
    Query3XieMing: TStringField;
    Query3DaoMH: TStringField;
    Query3KFJC: TStringField;
    Query3pairs: TIntegerField;
    Query3InQty: TIntegerField;
    Query3VNACC: TFloatField;
    Query3HGLB: TStringField;
    Query1VNACC: TFloatField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CBX1Change(Sender: TObject);
    procedure CBX2Change(Sender: TObject);
  private
    { Private declarations }
    procedure InitCombo();
    procedure readini();
  public
    VNPrice_DiplayFormat:string;
    VNPrice_Decimal:Byte;
    { Public declarations }
  end;

var
  DeliverCheckOrder: TDeliverCheckOrder;

implementation

uses main1,fununit;

{$R *.dfm}
function   DaysOfItsMonth(ADate:   TDateTime):   Word;
var
   Y,M,D:Word;
begin
    DecodeDate(ADate,Y,M,D);
    ADate:=EncodeDate(Y,M,1);
    Result:=Trunc(IncMonth(ADate,1)-ADate);
end;
//
procedure TDeliverCheckOrder.readini();
var MyIni :Tinifile;
    AppDir:string;
begin
  //
  VNPrice_DiplayFormat:='#,##0';
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
  TCurrencyField(Query1.FieldByName('VNACC')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(Query3.FieldByName('VNACC')).DisplayFormat:=VNPrice_DiplayFormat;

end;

procedure TDeliverCheckOrder.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TDeliverCheckOrder.FormDestroy(Sender: TObject);
begin
  DeliverCheckOrder:=nil;
end;

procedure TDeliverCheckOrder.Button1Click(Sender: TObject);
var sdate,edate:Tdate;
    y,m:integer;
begin
  if (CBX1.text='')or (CBX2.text='')  then
  begin
    showmessage('You have to select the year and month first.');
    abort;
  end;
  y:=strtoint(CBX1.Text);
  m:=strtoint(CBX2.Text);
  if (y>2999) or (y<1900) then
  begin
    showmessage('Pls key in right year');
    abort;
  end;
  if (m=0) or (m>12) then
  begin
    showmessage('Pls key in right month');
    abort;
  end;



  SDate:=encodedate(y,m,1);
  EDate:=EncodeDate(strtoint(CBX4.Text), strtoint(CBX5.Text), 1);
  EDate:=EncodeDate(strtoint(CBX4.Text), strtoint(CBX5.Text), DaysOfItsMonth(EDate));
  if PC1.ActivePageIndex=0 then
  begin
    with query1 do
    begin
     active:=false;
     sql.Clear;
     SQL.Add('Select KCLLS.SCBH,XXZl.Article,XXZL.XieMing,XXZL.DaoMH,KFZL.KFJC,DDZL.pairs,isnull(YWCP.InQty,0) as InQty,isnull(temp.VNACC,0) as VNACC');
     SQL.Add('from DDZL left join XXZL on XXZl.XieXing=DDZl.XieXing and DDZL.SheHao=XXZL.SheHao');
     SQL.Add('left join KFZL on KFZL.KFDH=DDZL.KHBH');
     SQL.Add('left join (select kclls.scbh as ddbh, sum(kclls.vnacc) as VNACC');
     SQL.Add('          from kclls left join KCLL on KCLL.LLNO=KCLLS.LLNO');
     SQL.Add('          left join KCZLS on KCZLS.CLBH=KCLLS.CLBH and KCZLS.CKBH=KCLL.CKBH');
     SQL.Add('          left join KCCK on KCCK.CKBH=KCLL.CKBH');
     SQL.Add('          where  KCLL.YN=''5'' and Convert(smalldatetime,convert(varchar,KCLL.CFMDate,111)) between');
     sql.add('             '''+formatdatetime('yyyy/MM/dd',sdate)+''''+' and ' +''''+formatdatetime('yyyy/MM/dd',edate)+'''');
     if GSBHCBX.Text<>'ALL' then
     sql.Add('           and KCCK.GSBH='''+ GSBHCBX.Text+'''');
     SQL.Add('          group by kclls.scbh)as temp on  temp.DDBH=DDZL.DDBH');
     SQL.Add('left join (select YWDD.YSBH as DDBH,sum(YWCP.Qty) as InQty');
     SQL.Add('           from YWCP left join YWDD on YWDD.DDBH=YWCP.DDBH');
     SQL.Add('           left join DDZL on DDZL.DDBH=YWDD.YSBH');
     SQL.Add('           where YWDD.YSBH like  ''%%''');
     SQL.Add('           group by YWDD.YSBH )YWCP on YWCP.DDBH=DDZL.DDBH');
     SQL.Add('left join kclls on kclls.scbh=ddzl.ddbh');
     SQL.Add('left join kcll on kcll.llno=kclls.llno');
     SQL.Add('left join KCCK on KCCK.CKBH=KCLL.CKBH');
     SQL.Add('where Convert(smalldatetime,convert(varchar,kcll.CFMDate,111)) between');
     sql.add(''''+formatdatetime('yyyy/MM/dd',sdate)+''''+' and ' +''''+formatdatetime('yyyy/MM/dd',edate)+'''');
     SQL.Add('and KCLL.YN=''5''');
     SQL.Add('and KCLLS.SCBH like '''+ Edit1.Text+'%''');
     sql.Add('and XXZL.Article like '''+ Edit2.Text+'%''');
     if GSBHCBX.Text<>'ALL' then
     sql.Add('and KCCK.GSBH='''+GSBHCBX.Text+'''');
     sql.Add('group by  KCLLS.SCBH,XXZl.Article,XXZL.XieMing,XXZL.DaoMH,KFZL.KFJC,DDZL.pairs,temp.VNACC,YWCP.InQty');
     sql.Add('order by KCLLS.SCBH');
     active:=true;
    end;
  end else
  if PC1.ActivePageIndex=1 then
  begin
    with query3 do
    begin
      active:=false;
      SQL.Clear;
      SQL.Add('Select KCLLS.SCBH,XXZl.Article,XXZL.XieMing,XXZL.DaoMH,KFZL.KFJC,DDZL.pairs,isnull(YWCP.InQty,0) as InQty,isnull(temp.VNACC,0) as VNACC,temp.HGLB');
      SQL.Add('from DDZL ');
      SQL.Add('left join XXZL on XXZl.XieXing=DDZl.XieXing and DDZL.SheHao=XXZL.SheHao');
      SQL.Add('left join KFZL on KFZL.KFDH=DDZL.KHBH');
      SQL.Add('left join (select KCLLS.SCBH as ddbh,KCLLS.HGLB, sum(KCLLS.VNACC_HG) as VNACC');
      SQL.Add('          from kclls left join KCLL on KCLL.LLNO=KCLLS.LLNO');
      SQL.Add('          left join KCZLS on KCZLS.CLBH=KCLLS.CLBH and KCZLS.CKBH=KCLL.CKBH');
      SQL.Add('          left join KCCK on KCCK.CKBH=KCLL.CKBH');
      SQL.Add('          where   KCLL.YN=''5'' and Convert(smalldatetime,convert(varchar,KCLL.CFMDate,111)) between');
      SQL.Add('             '''+formatdatetime('yyyy/MM/dd',sdate)+''''+' and ' +''''+formatdatetime('yyyy/MM/dd',edate)+''' ');
      if GSBHCBX.Text<>'ALL' then
      SQL.Add('           and KCCK.GSBH='''+GSBHCBX.Text+''' ');
      SQL.Add('           and KCLLS.SCBH like '''+ Edit1.Text+'%'' ');
      if CBX6.Text<>'ALL' then
      SQL.Add('           and KCLLS.HGLB = '''+CBX6.Text+''' ');
      SQL.Add('          group by KCLLS.SCBH,KCLLS.HGLB ) as temp on  temp.DDBH=DDZL.DDBH');
      SQL.Add('left join (select YWDD.YSBH as DDBH,sum(YWCP.Qty) as InQty');
      SQL.Add('           from YWCP left join YWDD on YWDD.DDBH=YWCP.DDBH');
      SQL.Add('           left join DDZL on DDZL.DDBH=YWDD.YSBH');
      SQL.Add('           where YWDD.YSBH like  ''%%''');
      SQL.Add('           group by YWDD.YSBH )YWCP on YWCP.DDBH=DDZL.DDBH');
      SQL.Add('left join kclls on kclls.scbh=ddzl.ddbh');
      SQL.Add('left join kcll on kcll.llno=kclls.llno');
      SQL.Add('left join KCCK on KCCK.CKBH=KCLL.CKBH');
      SQL.Add('where Convert(smalldatetime,convert(varchar,KCLL.CFMDate,111)) between');
      SQL.Add(''''+formatdatetime('yyyy/MM/dd',sdate)+''''+' and ' +''''+formatdatetime('yyyy/MM/dd',edate)+''' ');
      SQL.Add('and KCLL.YN=''5''');
      SQL.Add('and KCLLS.SCBH like '''+ Edit1.Text+'%''');
      SQL.Add('and XXZL.Article like '''+ Edit2.Text+'%''');
      if GSBHCBX.Text<>'ALL' then
      SQL.Add('and KCCK.GSBH='''+GSBHCBX.Text+''' ');
      if CBX6.Text<>'ALL' then
      SQL.Add('and temp.HGLB ='''+CBX6.Text+''' ');
      SQL.Add('group by  KCLLS.SCBH,XXZl.Article,XXZL.XieMing,XXZL.DaoMH,KFZL.KFJC,DDZL.pairs,temp.VNACC,temp.HGLB,YWCP.InQty');
      if (Edit1.Text='') or (copy(Edit1.Text,1,2)='ZZ') then
      begin
        sql.Add('union all');
        sql.Add('select KCLLS.SCBH as ddbh,NULL as Article,NULL as XieMing, NULL as DaoMH, NULL as KFJC,NULL as Pairs,NULL as InQty, sum(KCLLS.VNACC_HG) as VNACC,KCLLS.HGLB');
        sql.Add('from kclls left join KCLL on KCLL.LLNO=KCLLS.LLNO');
       
        sql.Add('left join KCZLS on KCZLS.CLBH=KCLLS.CLBH and KCZLS.CKBH=KCLL.CKBH');
        sql.Add('left join KCCK on KCCK.CKBH=KCLL.CKBH');
        SQL.Add('where   KCLL.YN=''5'' and Convert(smalldatetime,convert(varchar,KCLL.CFMDate,111)) between');
        SQL.Add('             '''+formatdatetime('yyyy/MM/dd',sdate)+''''+' and ' +''''+formatdatetime('yyyy/MM/dd',edate)+''' ');
        if GSBHCBX.Text<>'ALL' then
          SQL.Add('           and KCCK.GSBH='''+GSBHCBX.Text+''' ');
        SQL.Add('             and KCLLS.HGLB is not null');
        if CBX6.Text<>'ALL' then
          SQL.Add('           and KCLLS.HGLB = '''+CBX6.Text+''' ');
        sql.Add('             and KCLLS.SCBH not in (select DDBH from DDZL)');
        sql.Add('group by KCLLS.SCBH,KCLLS.HGLB');
      end;
      SQL.Add('order by KCLLS.SCBH');
      Active:=true;
    end;
  end;
end;

procedure TDeliverCheckOrder.Button2Click(Sender: TObject);
var   eclApp,WorkBook:olevariant;
      i,j:integer;
begin
  if PC1.ActivePageIndex=0 then
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
    end else
    /////////////
    if PC1.ActivePageIndex=1 then
    begin
    if  query3.active  then
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
          for   i:=0   to   query3.fieldcount-1   do
          begin
              eclApp.Cells(1,i+1):=query3.fields[i].FieldName;
          end;
          query3.First;
          j:=2;
          while   not   query3.Eof   do
          begin
            for   i:=0   to  query3.fieldcount-1  do
            begin
              eclApp.Cells(j,i+1):=query3.Fields[i].Value;
            end;
            query3.Next;
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
end;

procedure TDeliverCheckOrder.FormCreate(Sender: TObject);
var i:integer;
begin
  with QTemp do
  begin
    active:=false;
    sql.Clear;
    sql.add('select GSDH from BGSZL order by GSDH');
    active:=true;
    GSBHCBX.Items.Add('ALL');
    for i:=1 to recordcount do
    begin
        GSBHCBX.Items.Add(fieldbyname('GSDH').asstring);
        next;
    end;
    GSBHCBX.Text:=main.Edit2.Text
  end;
  InitCombo();
  readini();
end;
procedure TDeliverCheckOrder.InitCombo();
var
  myYear, myMonth, myDay : Word;
  i:integer;
begin
  //
  DecodeDate(Date(), myYear, myMonth, myDay);
  for i:=0 to CBX1.Items.Count-1 do
  begin
    if strtoint(CBX1.Items[i])=myYear then
    begin
      CBX1.ItemIndex:=i;
      CBX4.ItemIndex:=i;
      break;
    end;
  end;
  for i:=0 to CBX2.Items.Count-1 do
  begin
    if strtoint(CBX2.Items[i])=myMonth then
    begin
      CBX2.ItemIndex:=i;
      CBX5.ItemIndex:=i;
      break;
    end;
  end;
  //
end;

procedure TDeliverCheckOrder.CBX1Change(Sender: TObject);
begin
  CBX4.Text:=CBX1.Text;
end;

procedure TDeliverCheckOrder.CBX2Change(Sender: TObject);
begin
  CBX5.Text:=CBX2.Text;
end;

end.
