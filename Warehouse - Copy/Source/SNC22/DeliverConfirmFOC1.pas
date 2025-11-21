unit DeliverConfirmFOC1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ExtCtrls, GridsEh, DBGridEh, DB, DBTables,IniFiles,dateutils;

type
  TDeliverConfirmFOC = class(TForm)
    DBGrid1: TDBGridEh;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    Edit1: TEdit;
    DBGrid2: TDBGridEh;
    DS1: TDataSource;
    DelMas: TQuery;
    DelMasLLNO: TStringField;
    DelMasDepID: TStringField;
    DelMasDepName: TStringField;
    DelMasUSERDATE: TDateTimeField;
    DelMasUSERID: TStringField;
    DelMasCFMDate: TDateTimeField;
    DelMasCFMID: TStringField;
    DelMasYN: TStringField;
    UpMas: TUpdateSQL;
    DS2: TDataSource;
    Qtemp: TQuery;
    DelDet: TQuery;
    DelDetCLBH: TStringField;
    DelDetYWPM: TStringField;
    DelDetDWBH: TStringField;
    DelDetQty: TCurrencyField;
    DelDetUSERDATE: TDateTimeField;
    DelDetUSERID: TStringField;
    DelDetZWPM: TStringField;
    UPDet: TUpdateSQL;
    DelMasGSBH: TStringField;
    DelDetKCQty: TFloatField;
    DelMasMEMO: TStringField;
    CheckBox1: TCheckBox;
    DelDetTempQty: TCurrencyField;
    Button4: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    sdate,edate,NDate:TDate;
    sYear,sMonth:String;
    sSTDT,sEDDT:String;
    { Private declarations }
    procedure ReadIni();
  public
    { Public declarations }
    WH_Decimal:String;
    WH_DiplayFormat:String;
  end;

var
  DeliverConfirmFOC: TDeliverConfirmFOC;
  NDate: TDate;

implementation

uses main1,fununit;

{$R *.dfm}
procedure TDeliverConfirmFOC.ReadIni();
var MyIni :Tinifile;
    AppDir:string;
begin

  WH_Decimal:='2';
  WH_DiplayFormat:='#,##0.00';
  AppDir:=ExtractFilePath(Application.ExeName);
  if FileExists(AppDir+'\ComName.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ComName.ini');
      //畐计
      WH_Decimal:=MyIni.ReadString('Warehouse','Decimal','2');
      WH_DiplayFormat:=MyIni.ReadString('Warehouse','DiplayFormat','#,##0.00');

    finally
      MyIni.Free;
    end;
  end;
  //
  TCurrencyField(DelDet.FieldByName('TempQty')).DisplayFormat:=WH_DiplayFormat;
  TCurrencyField(DelDet.FieldByName('Qty')).DisplayFormat:=WH_DiplayFormat;
end;

procedure TDeliverConfirmFOC.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := cafree;
end;

procedure TDeliverConfirmFOC.FormCreate(Sender: TObject);
var y,m,d:word;
    ayear,amonth:string;
    i:integer;
begin
  with Qtemp do // 狝叭竟る
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT year(getdate()) as FY,month(getdate()) as FM , getdate() as NDate');
    Active := true;
    NDate := FieldByName('NDate').Value;
    Active := false;
  end;
  DTP1.Date := NDate - 2;
  DTP2.Date := NDate;

  // update KCZLS_FOC
  decodedate(NDate,y,m,d);
  sdate:=startofthemonth(NDate);
  edate:=endofthemonth(NDate);
  decodedate(incmonth(NDate,-1),y,m,d);
  ayear:=inttostr(y);
  amonth:=inttostr(m);
  ReadIni();
  if  length(amonth)<2  then
  begin
    amonth:='0'+amonth;
  end;
  //20170819 办跑计
  sYear:=ayear;
  sMonth:=amonth;
  sSTDT:=formatdatetime('yyyy/MM/dd',sdate);
  sEDDT:=formatdatetime('yyyy/MM/dd',edate);
  //
 try  
  with Qtemp do
  begin
      active:=false;
      sql.Clear;
      sql.add('  if object_id(''tempdb..#CLZLKC'') is not null  ');
      sql.add('begin   drop table #CLZLKC end   ');

      sql.Add('select KCZLS.CLBH,LastKC.LastRem,RK.RKQty,LL.LLQty,KCZLS.CKBH');
      sql.add(' into #CLZLKC from KCZLS_FOC KCZLS ');

      sql.add('left join (select KCCLMONTH.CKBH,KCCLMONTH.CLBH,Sum(KCCLMONTH.Qty) as LastRem ');
      sql.add('           from KCCLMONTH_FOC as KCCLMONTH   where KCCLMONTH.KCYEAR='+''''+ayear+'''');
      sql.add('                                 and KCMONTH='+''''+amonth+''' and CKBH =''FOC'' ');
      sql.add('           Group by  KCCLMONTH.CKBH,KCCLMONTH.CLBH  ');
      sql.add('           ) LastKC on LastKC.CLBH=KCZLS.CLBH and LastKC.CKBH=KCZLS.CKBH');

      sql.add('left join (select KCRK.CKBH,KCRKS.CLBH,sum(KCRKS.Qty) as RKQty from KCRKS_FOC KCRKS');
      sql.add('           left join KCRK_FOC KCRK on KCRK.RKNO=KCRKS.RKNO ');
      sql.add('           where convert(smalldatetime,convert(varchar,KCRK.USERDATE,111)) between ') ;
      sql.add('                 '''+formatdatetime('yyyy/MM/dd',sdate)+''''+'and '+''''+formatdatetime('yyyy/MM/dd',edate)+''''  );
      sql.add('                 and CKBH =''FOC'' ');
      sql.add('           group by KCRK.CKBH,KCRKS.CLBH) RK on RK.CLBH=KCZLS.CLBH and RK.CKBH=KCZLS.CKBH ');

      sql.add('left join (select KCLL.CKBH,KCLLS.CLBH,sum(KCLLS.Qty) as LLQty from KCLLS_FOC KCLLS ');
      sql.add('           left join KCLL_FOC KCLL on KCLL.LLNO=KCLLS.LLNO ');
      sql.add('           where convert(smalldatetime,convert(varchar,KCLL.CFMDATE,111)) between ')   ;
      sql.add('                 '''+formatdatetime('yyyy/MM/dd',sdate)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',edate)+''''  );
      sql.add('                 and KCLL.CFMID<>'+''''+'NO'+''' and CKBH =''FOC'' ');
      sql.add('           group by KCLL.CKBH,KCLLS.CLBH) LL on LL.CLBH=KCZLS.CLBH and LL.CKBH=KCZLS.CKBH');

      sql.add('where  KCZLS.CKBH =''FOC''  ');
      sql.add('update KCZLS_FOC ');
      sql.add('set KCQty=(select isnull(round(#CLZLKC.LastRem,'+WH_Decimal+'),0)+isnull(round(#CLZLKC.RKQty,'+WH_Decimal+'),0)-isnull(round(#CLZLKC.LLQty,'+WH_Decimal+'),0) as KCQty ');
      sql.add('           from #CLZLKC where KCZLS_FOC.CLBH=#CLZLKC.CLBH and KCZLS_FOC.CKBH=#CLZLKC.CKBH)');
      sql.add('where  KCZLS_FOC.CKBH =''FOC'' ');
      sql.add('drop table #CLZLKC ');
      //funcObj.WriteErrorLog(sql.Text);
      execsql;
    end;
  except
   showmessage('Have wrong.');
  end;
end;

procedure TDeliverConfirmFOC.FormDestroy(Sender: TObject);
begin
  {}
  DeliverConfirmFOC:= nil;
end;

procedure TDeliverConfirmFOC.Button1Click(Sender: TObject);
begin

  with DelMas do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT KCLL_FOC.*, BDepartment.DepName');
    SQL.Add('FROM KCLL_FOC');
    SQL.Add('LEFT JOIN BDepartment on KCLL_FOC.DepID = BDepartment.ID');
    if (CheckBox1.Checked = true) then
    begin
      SQL.Add('WHERE KCLL_FOC.CFMID <> ''NO'' and ISNULL(flowflag,'''')<>''X''');
    end else
    begin
      SQL.Add('WHERE KCLL_FOC.CFMID = ''NO'' and ISNULL(flowflag,'''')<>''X''');
    end;
    SQL.Add('AND convert(smalldatetime,convert(varchar,KCLL_FOC.USERDATE,111)) between ''' + formatdatetime('yyyy/MM/dd', DTP1.date) + '''');
    SQL.Add('AND ''' + formatdatetime('yyyy/MM/dd', DTP2.date) + '''');
    SQL.Add('AND KCLL_FOC.LLNO LIKE ''' + edit1.Text + '%''');
    SQL.Add('AND KCLL_FOC.GSBH=' + '''' + main.Edit2.Text + '''');
    SQL.Add('ORDER BY KCLL_FOC.LLNO  ');
    Active := true;
  end;

  DelDet.Active := true;
end;

procedure TDeliverConfirmFOC.Button2Click(Sender: TObject);
var
  y1, m1, d1, y2, m2, d2: word;
  i: integer;
begin
  if (DelMas.FieldByName('LLNO').IsNull) then
  begin
    Abort;
  end;
  while not DelDet.Eof do
  begin
    if (DelDet.FieldByName('Qty').IsNull) then
    begin
      ShowMessage('Qty can not be empty.');
      Abort;
    end;
    if (DelDet.FieldByName('Qty').Value > DelDet.FieldByName('KCQty').Value)
      then
    begin
      ShowMessage('Not enough material to deliver. 畐计秖ぃ镑祇');
      Abort;
    end;
    DelDet.Next;
  end;

  if (MessageDlg('Confirm or not ?', mtInformation, [mbYes, mbNo], 0) = mrNo)
    then
  begin
    Abort;
  end;
  //update KCZLS_FOC
  with Qtemp do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Update KCZLS_FOC Set KCQty=KCQty-KCLLS.Qty ');
    SQL.Add('from ( ');
    SQL.Add('select CKBH,CLBH,Sum(Qty) as Qty from KCLLS_FOC KCLLS ');
    SQL.Add('Left join KCLL_FOC KCLL on KCLL.LLNo=KCLLS.LLNO ');
    SQL.Add('where KCLLS.LLNO='''+DelMas.FieldByName('LLNO').AsString+''' ');
    SQL.Add('Group by CKBH,CLBH ) KCLLS where KCLLS.CKBH=KCZLS_FOC.CKBH and KCLLS.CLBH=KCZLS_FOC.CLBH ');
    Execsql;
  end;

  try
    with DelMas do
    begin
      Edit;
      FieldByName('CFMID').Value := main.edit1.text;
      FieldByName('CFMDATE').Value := Ndate;
      UPMas.Apply(ukmodify);
      Active := false;
      Active := true;
    end;
  except
    on E: Exception do
    begin
      Showmessage('Have wrong.' + E.Message);
    end;
  end;
end;

procedure TDeliverConfirmFOC.Button3Click(Sender: TObject);
begin
  if (DelMas.Active) then
  begin
    DelDet.Active := false;
    DelMas.Active := false;
    DelMas.Active := true;
    DelDet.Active := true;
  end;
end;

procedure TDeliverConfirmFOC.Button4Click(Sender: TObject);
begin
  if DelMas.Active = true then
  begin
    try
      with DelMas do
      begin
        Edit;
        FieldByName('CFMID').Value := 'NO';
        UPMas.Apply(ukmodify);
        Active := false;
        Active := true;
      end;
      ShowMessage('Succeed.');
    except on E:Exception do
      begin
        ShowMessage('Have wrong.' + E.Message);
      end;
    end;
  end;
end;

end.
