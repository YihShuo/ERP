unit MatPrice1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, GridsEh, DBGridEh, DBTables, Buttons, ExtCtrls,
  comobj,dateutils, PrnDbgeh, Menus,ehlibBDE ,IniFiles;

type
  TMatPrice = class(TForm)
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
    bbt5: TBitBtn;
    bbt6: TBitBtn;
    Panel2: TPanel;
    Label1: TLabel;
    Label4: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    CB1: TCheckBox;
    DS1: TDataSource;
    Query1: TQuery;
    UpSQL1: TUpdateSQL;
    Qtemp: TQuery;
    DBGridEh1: TDBGridEh;
    Query1DJYear: TStringField;
    Query1DJMonth: TStringField;
    Query1CLBH: TStringField;
    Query1USPrice: TCurrencyField;
    Query1SB: TStringField;
    Query1YWPM: TStringField;
    Query1ZWPM: TStringField;
    Query1DWBH: TStringField;
    Label2: TLabel;
    CBX1: TComboBox;
    Label7: TLabel;
    CBX2: TComboBox;
    PrintDBGridEh1: TPrintDBGridEh;
    PopupMenu1: TPopupMenu;
    N6: TMenuItem;
    N1: TMenuItem;
    N7: TMenuItem;
    Query1USERDATE: TDateTimeField;
    Query1USERID: TStringField;
    Query1CLZMLB: TStringField;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    cnb: TCheckBox;
    Label3: TLabel;
    GSBHCombo: TComboBox;
    N8: TMenuItem;
    N9: TMenuItem;
    Query1VNPrice: TCurrencyField;
    Query1CWHL: TCurrencyField;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BB7Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure bbt6Click(Sender: TObject);
    procedure Query1NewRecord(DataSet: TDataSet);
    procedure bbt5Click(Sender: TObject);
    procedure PrintDBGridEh1BeforePrint(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure BB1Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure N9Click(Sender: TObject);
  private
    { Private declarations }
    procedure ReadIni();
  public
    { Public declarations }
    VNPrice_DiplayFormat:string;
    VNPrice_Decimal:Byte;
  end;

var
  MatPrice: TMatPrice;
  NDate,sdate,edate:TDate;

implementation

uses main1, MatPrice_Entry1, MatPrice_Mon1, MatPrice_ACC1,
  MatPrice_Quotation1, MatPrice_JGZL1, MatPrice_For1, FunUnit;

{$R *.dfm}

procedure TMatPrice.FormDestroy(Sender: TObject);
begin
  MatPrice:=nil;
end;

procedure TMatPrice.FormClose(Sender: TObject; var Action: TCloseAction);
begin

if BB5.enabled  then
  begin
    showmessage('You have to save data first.');
    action:=canone;
  end
  else
    begin
      action:=cafree;
    end;
end;

procedure TMatPrice.ReadIni();
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
  TCurrencyField(Query1.FieldByName('VNPrice')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(Query1.FieldByName('CWHL')).DisplayFormat:=VNPrice_DiplayFormat;
end;

procedure TMatPrice.FormCreate(Sender: TObject);
var i:integer;
    myYear, myMonth, myDay : Word;
    NDate :Tdate;
begin
  with Qtemp do
  begin
    active:=false;
    sql.Clear;
    sql.add('select getdate() as NDate,  year(getdate())-5 as Oldyear,year(getdate())+5 as Newyear');
    active:=true;
    NDate:=fieldbyname('NDate').Value;
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
  with Qtemp do
  begin
    active:=false;
    sql.Clear;
    sql.add('select GSDH from Bgszl where YN=1 ');
    active:=true;
    GSBHCombo.Items.Add('ALL');
    while not Eof do
    begin
      GSBHCombo.Items.Add(FieldByName('GSDH').AsString);
      Next;
    end;
    active:=false;
    GSBHCombo.ItemIndex:=0;
  end;
  ReadIni();
end;

procedure TMatPrice.Button1Click(Sender: TObject);
var iYear,iMonth,iDay :word;
    i:word;
    CWHL:string;
begin
  iYear:=strtoint(CBX1.text);
  iMonth:=strtoint(CBX2.text);
  iDay:=1;
  sdate:=EncodeDate(iYear,iMonth,iDay);
  edate:=endofthemonth(sdate);

  if cnb.Checked then
  begin
      with Qtemp do
      begin
        //20141202　weston修改原本常發現異常CWHL=0
        CWHL:='1';
        active:=false;
        sql.Clear;
        sql.add('select top 1 CWHL from CWHL '); //20150409 weston 修改每月固定匯率
        sql.add('           order by HLYEAR DESC,HLMONTH DESC ');
        active:=true;
        if recordcount>0 then CWHL:=FieldByName('CWHL').AsString;
        active:=false;
      end;
      with query1 do
      begin
        active:=false;
        sql.add('insert CWDJ');
        sql.add('select distinct convert(varchar,datepart(yyyy,KCLL.CFMDate)) as DJYEAR,');
        sql.add('       convert(varchar,datepart(MM,KCLL.CFMDate)) as DJMONTH');
        sql.add('       ,CLBH ,null as VNPrice,'+CWHL+' as CWHL ,null as USPrice,'+''''+'2'+'''');
        sql.add('        as SB ,getdate() as USERDate,'+''''+'16664'+''''+' as USERID ');
        sql.add('from KCLLS ');
        sql.add('left join KCLL on KCLL.LLNO=KCLLS.LLNO ');
        sql.add('where convert(smalldatetime,convert(varchar,KCLL.CFMDate,111)) between ');
        sql.add('        '''+formatdatetime('yyyy/MM/dd',sdate)+''''+' and '+ ''''+formatdatetime('yyyy/MM/dd',edate)+'''' );
        sql.add('      and KCLLS.Qty<>0 and KCLL.CFMID<>''NO'' ');
        if GSBHCombo.ItemIndex>0 then
        sql.add('      and KCLL.GSBH='''+GSBHCombo.Text+''' ');
        sql.add('      and not exists(select CLBH from CWDJ ');
        sql.Add('                     where CWDJ.CLBH=KCLLS.CLBH ');
        sql.add('                           and DJYEAR='+''''+inttostr(strtoint(CBX1.Text))+'''');
        sql.add('                           and DJMONTH='+''''+inttostr(strtoint(CBX2.Text))+''''+')');
        sql.add('order by CLBH ');
        execsql;
      end;
  end;
  
  with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.Add('select CWDJ.*,CLZL.YWPM,CLZL.ZWPM,CLZL.DWBH ,CLZL.CLZMLB');
    sql.add('from CWDJ');
    sql.add('left join CLZL on CLZL.CLDH=CWDJ.CLBH');
    sql.add('where CLBH like '+''''+edit1.Text+'%'+'''');
    sql.add('      and CLZL.YWPM like '+''''+'%'+edit2.text+'%'+'''');
    sql.add('      and DJYEAR='+''''+inttostr(strtoint(CBX1.Text))+'''');
    sql.add('      and DJMONTH='+''''+inttostr(strtoint(CBX2.Text))+'''');
    if CB1.Checked then
    begin
      sql.add('       and USPrice is null ');
    end;
    if GSBHCombo.ItemIndex>0 then
    begin
      sql.add('      and  exists(select KCLLS.CLBH from KCLL,KCLLS where KCLL.LLNO=KCLLS.LLNO and CWDJ.CLBH=KCLLS.CLBH ');
      sql.add('         and convert(smalldatetime,convert(varchar,KCLL.CFMDate,111)) between ');
      sql.add('         '''+formatdatetime('yyyy/MM/dd',sdate)+''''+' and '+ ''''+formatdatetime('yyyy/MM/dd',edate)+'''' );
      sql.add('         and KCLLS.Qty<>0  and KCLL.CFMID<>''NO'' ');
      sql.add('         and KCLL.GSBH='''+GSBHCombo.Text+''' Group by KCLLS.CLBH)  ');
    end;
    sql.add('order by CWDJ.CLBH ');
    //funcObj.WriteErrorLog(sql.Text);
    active:=true;
  end;
  BB4.Enabled:=true;
  BBT1.enabled:=true;
  BBT2.enabled:=true;
  BBT3.enabled:=true;
  BBT4.enabled:=true;
  BBT5.enabled:=true;
  BBT6.enabled:=true;
end;

procedure TMatPrice.BB7Click(Sender: TObject);
begin
close;
end;

procedure TMatPrice.BB4Click(Sender: TObject);
begin
  query1.CachedUpdates:=true;
  query1.RequestLive:=true;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
  N1.Enabled:=true;
  N2.enabled:=true;
  N3.enabled:=true;
  N4.enabled:=true;
  N5.enabled:=true;
  N6.enabled:=true;
  N7.enabled:=true;
  N9.Enabled:=true;
end;

procedure TMatPrice.BB5Click(Sender: TObject);
var YN:integer;
begin
  YN:=0;
  with query1 do
  begin                   
    first;
    while not eof do
      begin
        case updatestatus of
          usmodified:
            begin
              if fieldbyname('USPrice').IsNull then
              begin
                  edit;
                  fieldbyname('SB').value:='1';
                  fieldbyname('USERDate').value:=Now;
                  fieldbyname('USERID').value:=main.edit1.text;
                end else
                begin
                    edit;
                    fieldbyname('SB').value:='1';
                end;
              upsql1.Apply(ukmodify);
            end;
          end;
        next;
      end;
    active:=false;
    active:=true;
    cachedupdates:=false;
    requestlive:=false;
    BB5.Enabled:=false;
    BB6.enabled:=false;
    N1.Enabled:=false;
    N2.enabled:=false;
    N3.enabled:=false;
    N4.enabled:=false;
    N5.enabled:=false;
    N6.enabled:=false;  
    N7.enabled:=false;
    N9.Enabled:=false;
  end;
  if YN=1 then
  begin
    showmessage('Some material have no USPrice.');
  end;
end;

procedure TMatPrice.BB6Click(Sender: TObject);
begin

  with query1 do
  begin
    active:=false;
    cachedupdates:=false;
    requestlive:=false;
    active:=true;
    BB5.enabled:=false;
    BB6.enabled:=false;  
    N1.Enabled:=false;
    N2.enabled:=false;
    N3.enabled:=false;
    N4.enabled:=false;
    N5.enabled:=false;  
    N6.enabled:=false;  
    N7.enabled:=false;
    N9.Enabled:=false;
  end; 
end;

procedure TMatPrice.bbt6Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin

  if query1.Active then
  begin
    if query1.recordcount=0 then
    begin
      showmessage('No record.');
      abort;
    end;
  end else
  begin
    showmessage('No record.');
    abort;
  end;

  try
    eclApp:=CreateOleObject('Excel.Application');
    WorkBook:=CreateOleObject('Excel.Sheet');
  except
    Application.MessageBox('NO Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
    Exit;
  end;

  try
    WorkBook:=eclApp.workbooks.Add;
    eclApp.Cells(1,1):='NO';
    for   i:=1   to   query1.fieldcount   do
      begin
        eclApp.Cells(1,i+1):=query1.fields[i-1].FieldName;
      end;
    query1.First;
    j:=2;
    while   not  query1.Eof   do
    begin
      eclApp.Cells(j,1):=j-1;
      for   i:=1   to   query1.fieldcount   do
      begin
          eclApp.Cells(j,i+1):=query1.Fields[i-1].Value;
          eclApp.Cells.Cells.item[j,i+1].font.size:='8';
      end;
      query1.Next;
      inc(j);
    end;
    eclapp.columns.autofit;
    showmessage('Succeed.');
    eclApp.Visible:=True;
  except
    on   F:Exception   do
      showmessage(F.Message);
  end;


end;

procedure TMatPrice.Query1NewRecord(DataSet: TDataSet);
begin
  abort;
end;

procedure TMatPrice.bbt5Click(Sender: TObject);
begin
  printdbgrideh1.Preview;
end;

procedure TMatPrice.PrintDBGridEh1BeforePrint(Sender: TObject);
begin
  PrintDBGridEh1.SetSubstitutes(['%[TDate]',CBX1.Text+'/'+CBX2.text]);
end;

procedure TMatPrice.N7Click(Sender: TObject);
var a,b,c :word;
    tempdate:TDate;
begin
  MatPrice_For:=TMatPrice_For.create(self);
  MatPrice_For.show;
end;

procedure TMatPrice.BB1Click(Sender: TObject);
begin
  CBX1.Enabled:=true;
  CBX2.Enabled:=true;
  CB1.Enabled:=true;
end;

procedure TMatPrice.N1Click(Sender: TObject);
begin
  MatPrice_Entry:=TMatPrice_Entry.create(self);
  MatPrice_Entry.show;
end;

procedure TMatPrice.N6Click(Sender: TObject);
begin
  with query1 do
  begin
    first;
    while not eof do
      begin
        if ((not fieldbyname('VNPrice').isnull) and (fieldbyname('USPrice').IsNull)) then
          begin
            edit;
            fieldbyname('USPrice').Value:=fieldbyname('VNPrice').Value/fieldbyname('CWHL').Value;
            post;
          end;
        next;
      end;
  end;
end;

procedure TMatPrice.N2Click(Sender: TObject);
begin
  MatPrice_Mon:=TMatPrice_Mon.create(self);
  MatPrice_Mon.show;
end;

procedure TMatPrice.N3Click(Sender: TObject);
begin
  MatPrice_ACC:=TMatPrice_ACC.create(self);
  MatPrice_ACC.show;
end;

procedure TMatPrice.N4Click(Sender: TObject);
begin
  MatPrice_Quotation:=TMatPrice_Quotation.create(self);
  MatPrice_Quotation.show;
end;

procedure TMatPrice.N5Click(Sender: TObject);
begin
  MatPrice_JGZL:=TMatPrice_JGZL.create(self);
  MatPrice_JGZL.show;
end;

procedure TMatPrice.N9Click(Sender: TObject);
var iYear,iMonth,iDay :word;
    KCYEAR,KCMONTH:String;
begin

   Query1.First;
   iYear:=strtoint(Query1.FieldByName('DJYear').AsString);
   iMonth:=strtoint(Query1.FieldByName('DJMonth').AsString);
   iDay:=1;
   sdate:=EncodeDate(iYear,iMonth,iDay);
   edate:=endofthemonth(sdate);
   if iMonth-1>0 then
   begin
     KCYEAR:=Format('%.4d',[iYear]);
     KCMONTH:=Format('%.2d',[iMonth-1]);
   end else
   begin
     KCYEAR:=Format('%.4d',[iYear-1]);
     KCMONTH:=Format('%.2d',[12]);
   end;
   //
   with Qtemp do
   begin
      Active:=false;
      SQL.Clear;
      SQL.Add('select * from (');
      SQL.Add('select * from (');
      SQL.Add('select  KCRK.CKBH, KCRKS.RKNO,KCRKS.CLBH,KCRKS.VNPrice,KCRKS.USPrice,Max(KCRK.USERDATE) as USERDATE,''1.RK'' as LB');
      SQL.Add('from (select * from KCRKS union all select * from KCRKS_2014) KCRKS');
      SQL.Add('left join (select * from KCRK union all select * from KCRK_2014) KCRK on KCRKS.RKNO=KCRK.RKNO');
      SQL.Add('where (KCRKS.VNPrice>0 or KCRKS.USPrice>0) and KCRKS.CLBH in (select CLBH from CWDJ where DJYEAR='''+Query1.FieldByName('DJYear').AsString+''' and DJMONTH='''+Query1.FieldByName('DJMonth').AsString+''' and clbh like '+''''+edit1.Text+'%'+''') and convert(smalldatetime,convert(varchar,KCRK.USERDATE,111)) between ');
      SQL.Add('      '''+formatdatetime('yyyy/MM/dd',sdate)+''' and '''+formatdatetime('yyyy/MM/dd',edate)+'''');
      if GSBHCombo.ItemIndex>0 then
      SQL.Add('      and KCRK.CKBH in (select CKBH from KCCK where GSBH='''+GSBHCombo.Text+''') ');
      SQL.Add('Group by  KCRK.CKBH, KCRKS.RKNO,KCRKS.CLBH,KCRKS.VNPrice,KCRKS.USPrice');
      SQL.Add(' ) KCRK');
      SQL.Add('union all');
      SQL.Add('select * from (');
      SQL.Add('select  JGZL.CKBH,JGZL.JGNO,JGZLS.CLBH,JGZLS.VNPrice,JGZLS.USPrice,Max(JGZL.CFMDate1) as CFMDate,''2.JG'' LB from JGZLS');
      SQL.Add('left join JGZL on JGZL.JGNO=JGZLS.JGNO');
      SQL.Add('where  (JGZLS.VNPrice>0 or JGZLS.USPrice>0) and JGZLS.CLBH in (select CLBH from CWDJ where DJYEAR='''+Query1.FieldByName('DJYear').AsString+''' and DJMONTH='''+Query1.FieldByName('DJMonth').AsString+''' and clbh like '+''''+edit1.Text+'%'+''') and ZMLB=''ZZZZZZZZZZ''  and convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111)) between ');
      SQL.Add('      '''+formatdatetime('yyyy/MM/dd',sdate)+''' and '''+formatdatetime('yyyy/MM/dd',edate)+'''');
      if GSBHCombo.ItemIndex>0 then
      SQL.Add('       and JGZL.CKBH in (select CKBH from KCCK where GSBH='''+GSBHCombo.Text+''') ');
      SQL.Add('Group by  JGZL.CKBH,JGZL.JGNO,JGZLS.CLBH,JGZLS.VNPrice,JGZLS.USPrice      ');
      SQL.Add(' ) JGZL       ');
      SQL.Add('union all    ');
      SQL.Add('select * from (     ');
      SQL.Add('Select  KCCLMONTH.CKBH,KCCLMONTH.KCYEAR+KCCLMONTH.KCMONTH as KCNO,KCCLMONTH.CLBH,KCCLMONTH.VNPrice,KCCLMONTH.USPrice,KCCLMONTH.USERDATE,''3.KC'' as LB          ');
      SQL.Add('from KCCLMONTH');
      SQL.Add('where KCCLMONTH.CLBH in (select CLBH from CWDJ where DJYEAR='''+Query1.FieldByName('DJYear').AsString+''' and DJMONTH='''+Query1.FieldByName('DJMonth').AsString+''' and clbh like '+''''+edit1.Text+'%'+''') and KCCLMONTH.KCYEAR='''+KCYEAR+''' and KCCLMONTH.KCMONTH='''+KCMONTH+''' ');
      if GSBHCombo.ItemIndex>0 then
      SQL.Add('      and KCCLMONTH.CKBH in (select CKBH from KCCK where GSBH='''+GSBHCombo.Text+''') ');
      SQL.Add(') KCCLMONTH');
      SQL.Add('union all');
      SQL.Add('select * from ( ');
      SQL.Add('select CGBJ.GSBH,CGBJ.BJNO,CGBJS.CLBH,CGBJS.VNPrice,CGBJS.USPrice,CGBJS.USERDate,''4.BJ'' as LB from CGBJS');
      SQL.Add('left join CGBJ on CGBJ.BJNO=CGBJS.BJNO');
      SQL.Add('where (CGBJS.VNPrice>0 or CGBJS.USPrice>0) and CGBJS.CLBH in (select CLBH from CWDJ where DJYEAR='''+Query1.FieldByName('DJYear').AsString+''' and DJMONTH='''+Query1.FieldByName('DJMonth').AsString+''' and clbh like '+''''+edit1.Text+'%'+''')  ');
      if GSBHCombo.ItemIndex>0 then
      SQL.Add('      and CGBJ.GSBH='''+GSBHCombo.Text+''' ');
      SQL.Add(') CGBJ   ) AllPrice');
      SQL.Add('order by LB,RKNO,CKBH');
      //funcObj.WriteErrorLog(sql.Text);
      Active:=true;
   end;
   //
   while not Query1.eof do
   begin
     if Qtemp.Locate('CLBH',Query1.FieldByName('CLBH').AsString,[]) then
     begin
       Query1.Edit;
       Query1.FieldByName('USPrice').Value:=Qtemp.FieldByName('USPrice').Value;
       Query1.FieldByName('VNPrice').Value:=Qtemp.FieldByName('VNPrice').Value;
       Query1.Post;
     end;
     Query1.Next;
   end;
   Qtemp.Active:=false;
end;

end.
