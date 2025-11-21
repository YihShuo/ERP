unit EquipmentCal1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, PrnDbgeh, GridsEh, DBGridEh, StdCtrls, ExtCtrls, DB, DBTables, Dateutils,
  Mask, DBCtrls, Comobj;

type
  TEquipmentCal = class(TForm)
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Edit1: TEdit;
    CBX1: TComboBox;
    CBX2: TComboBox;
    Button1: TButton;
    Button4: TButton;
    Panel1: TPanel;
    BT1: TButton;
    DBGrid1: TDBGridEh;
    PrintDBGridEh1: TPrintDBGridEh;
    CheckQry: TQuery;
    DS1: TDataSource;
    BT2: TButton;
    BT3: TButton;
    BT4: TButton;
    EntryQry: TQuery;
    DS2: TDataSource;
    CWHL: TTable;
    DS5: TDataSource;
    Ptemp: TQuery;
    CheckQryRKNO: TStringField;
    CheckQryZSBH: TStringField;
    CheckQryDOCNO: TStringField;
    CheckQryTSBH: TStringField;
    CheckQryYWPM: TStringField;
    CheckQryUSPrice: TFloatField;
    CheckQryVNPrice: TIntegerField;
    CheckQryUSACC: TFloatField;
    CheckQryVNACC: TFloatField;
    CheckQryVNTax_HG: TFloatField;
    CheckQryCFMID: TStringField;
    CheckQryCFMDATE: TDateTimeField;
    CheckQryYN: TStringField;
    Panel3: TPanel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Edit5: TEdit;
    Button2: TButton;
    Button3: TButton;
    DBEdit1: TDBEdit;
    EntryQryRKNO: TStringField;
    EntryQryZSBH: TStringField;
    EntryQryDOCNO: TStringField;
    EntryQryTSBH: TStringField;
    EntryQryYWPM: TStringField;
    EntryQryVNPrice: TIntegerField;
    EntryQryVNACC: TFloatField;
    EntryQryCWHL: TIntegerField;
    EntryQryUSPrice: TFloatField;
    EntryQryUSACC: TFloatField;
    EntryQryCWHL_HG: TIntegerField;
    EntryQryVNTax_HG: TFloatField;
    EntryQryVNACC_Tax: TFloatField;
    EntryQryMonthS: TIntegerField;
    EntryQryInDate: TDateTimeField;
    EntryQrySTYM: TStringField;
    EntryQryEDYM: TStringField;
    EntryQryTSID: TStringField;
    TSCD_MonthQry: TQuery;
    DS3: TDataSource;
    TSCD_MonthQryKCYEAR: TStringField;
    TSCD_MonthQryKCMONTH: TStringField;
    TSCD_MonthQryTSBH: TStringField;
    TSCD_MonthQryDWBH: TStringField;
    TSCD_MonthQryQty: TFloatField;
    TSCD_MonthQryYWPM: TStringField;
    TSCD_MonthQryVNACC: TFloatField;
    TSCD_MonthQryTSID: TStringField;
    CheckQryzsjc_yw: TStringField;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BT1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BT2Click(Sender: TObject);
    procedure BT3Click(Sender: TObject);
    procedure BT4Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    sdate,edate,NDate:Tdate;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  EquipmentCal: TEquipmentCal;

implementation

uses main1,FunUnit;

{$R *.dfm}

procedure TEquipmentCal.FormDestroy(Sender: TObject);
begin
  EquipmentCal:=nil;
end;

procedure TEquipmentCal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=CaFree;
end;

procedure TEquipmentCal.BT1Click(Sender: TObject);
var iYear,iMonth:word;
begin
  try
    if (CBX1.text='')or (CBX2.text='')  then
    begin
      showmessage('You have to select the year and month first.');
      abort;
    end;
    iYear:=strtoint(CBX1.Text);
    iMonth:=strtoint(CBX2.Text);
    if (iYear>2999) or (iYear<1900) then
    begin
      showmessage('Pls key in right year');
      abort;
    end;
    if (iYear<2018) then
    begin
      showmessage('Pls key in right year');
      abort;
    end;
    if (iMonth=0) or (iMonth>12) then
    begin
      showmessage('Pls key in right month');
      abort;
    end;
    sdate:=encodedate(iYear,iMonth,1);
    edate:=endofthemonth(sdate);
    DBGrid1.DataSource:=DS1;

    with CheckQry do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('Select TSCD_KCRK.RKNO,TSCD_KCRK.ZSBH,TSCD_ZSZL.zsjc_yw,TSCD_KCRK.DOCNO,TSCD.TSBH,TSCD_SB.YWPM,TSCD_KCRKS.USPrice,TSCD_KCRKS.VNPrice,TSCD_KCRKS.USACC,TSCD_KCRKS.VNACC,TSCD_KCRKS.VNTax_HG,TSCD_KCRK.CFMID,TSCD_KCRK.CFMDATE,TSCD_KCRK.YN ');
      SQL.Add('from TSCD_KCRK');
      SQL.Add('Left join TSCD_KCRKS on TSCD_KCRKS.RKNO=TSCD_KCRK.RKNO');
      SQL.Add('left join TSCD on TSCD.TSID=TSCD_KCRKS.TSID');
      SQL.Add('Left join TSCD_SB on TSCD_SB.SBBH=TSCD.SBBH');
      SQL.Add('Left join TSCD_ZSZL on TSCD_KCRK.ZSBH=TSCD_ZSZL.ZSDH');
      SQL.Add('where  convert(smalldatetime,convert(varchar,TSCD_KCRK.USERDATE,111)) between ');
      SQL.add('      '''+formatdatetime('yyyy/mm/dd',sdate)+''' and '''+formatdatetime('yyyy/mm/dd',edate)+''' ');
      SQL.Add('       and TSCD_KCRK.YN<>''5'' ');
      //funcObj.WriteErrorLog(sql.Text);
      Active:=true;
      if recordcount=0 then
      begin
        edit1.Text:='1';
        BT2.Enabled:=true;
        BT1.Enabled:=false;
      end else
      begin
        Showmessage('Please conduct confirm Nhap Kho data!');
      end;
    end;
    DBGrid1.columns[0].width:=80;
    DBGrid1.columns[1].width:=50;
    DBGrid1.columns[2].width:=65;
    DBGrid1.columns[3].width:=80;
    DBGrid1.columns[4].width:=75;
    DBGrid1.columns[5].width:=150;
    DBGrid1.columns[6].width:=70;
    DBGrid1.columns[7].width:=70;
    DBGrid1.columns[8].width:=70;
    DBGrid1.columns[9].width:=70;
    DBGrid1.columns[10].width:=70;
    DBGrid1.columns[11].width:=50;
    DBGrid1.columns[12].width:=130;
    DBGrid1.columns[13].width:=20;
  except
    showmessage('Have wrong.')
  end;
end;

procedure TEquipmentCal.Button2Click(Sender: TObject);
begin
  try
    with CWHL do
    begin
      if state in [dsedit] then
      begin
        edit;
        FieldByName('USERDATE').Value:=Ndate;
        FieldByName('USERID').Value:=main.edit1.text;
        FieldByName('YN').Value:='1';
        post;
      end;
      if state in [dsinsert] then
      begin
        FieldByName('HLYEAR').Value:=CBX1.Text;
        FieldByName('HLMONTH').Value:=CBX2.Text;
        FieldByName('USERDATE').Value:=Ndate;
        FieldByName('USERID').Value:=main.edit1.text;
        FieldByName('YN').Value:='1';
        post;
      end;
    end;
    DBGrid1.Enabled:=true;
    Panel3.SendToBack;
    BT2.Enabled:=false;
    BT3.Enabled:=true;
  except
    showmessage('Have wrong.');
  end;
end;

procedure TEquipmentCal.Button3Click(Sender: TObject);
begin
  if CWHL.state in [dsinsert] then
  begin
    showmessage('No exchange rate, stop all.');
  end;
  CWHL.cancel;
  Panel3.SendToBack;
  DBGrid1.Enabled:=true;
  DBGrid1.SetFocus;
end;

procedure TEquipmentCal.FormCreate(Sender: TObject);
begin
  with Ptemp do
  begin
    active:=false;
    sql.Clear;
    sql.add('select getdate() as NDate');
    active:=true;
    NDate:=fieldbyname('NDate').Value;
    active:=false;
  end;
end;

procedure TEquipmentCal.BT2Click(Sender: TObject);
begin
  if (edit1.text<>'1')  then
  begin
    showmessage('Pls check Entry first.');
    abort;
  end;
  CheckQry.Active:=false;
  with ptemp do
  begin
    active:=false;
    sql.Clear;
    sql.add('select * from CWHLS ');
    sql.add('where HLYEAR='+''''+CBX1.Text+'''');
    sql.add('      and HLMONTH='+''''+CBX2.Text+'''');
    active:=true;
    if recordcount<>daysinmonth(sdate) then
    begin
        showmessage('Your quantity of exchange rate is not enough. Pls check !');
        abort;
    end;
    active:=false;
  end;

  if (edit1.text='1') then
  begin
    CWHL.Active:=true;
    if not CWHL.Locate('HLYEAR;HLMONTH',vararrayof([CBX1.text,CBX2.Text]),[]) then
    begin
      CWHL.Insert;
    end else
    begin
      BT2.Enabled:=false;
    end;
    DBGrid1.Datasource:=DS5;
    DBGrid1.Enabled:=false;
    DBGrid1.Font.size:=12;
    DBGrid1.columns[0].width:=50;
    DBGrid1.columns[1].width:=60;
    DBGrid1.columns[2].width:=100;
    DBGrid1.columns[3].width:=100;
    DBGrid1.columns[4].width:=80;
    DBGrid1.columns[5].width:=20;
    panel3.Top:=DBGrid1.Top+23;
    panel3.Left:=DBGrid1.left+dbgrid1.width-333;
    panel3.BringToFront;
  end else
  begin
    Showmessage('Pls deal with the basic data first.');
    DBGrid1.Datasource:=DS5;
  end;

end;

procedure TEquipmentCal.BT3Click(Sender: TObject);
begin
    //
    with Ptemp do
    begin
      active:=false;
      sql.Clear;
      //场だ⊿Τ羆基场だ璸衡羆基
      SQL.Add('update TSCD_KCRKS ');
      SQL.Add('set CWHL=CWHLS.CWHL ');
      SQL.Add('from (');
      SQL.Add(' select TSCD_KCRKS.RKNO,TSCD_KCRKS.TSID,CWHLS.CWHL ');
      SQL.Add(' from TSCD_KCRKS   ');
      SQL.Add(' left join TSCD_KCRK on TSCD_KCRKS.RKNO=TSCD_KCRK.RKNO ');
      SQL.Add(' left join CWHLS on  CWHLS.HLYEAR+''/''+CWHLS.HLMONTH+''/''+CWHLS.HLDAY=convert(varchar,TSCD_KCRK.CFMDate,111)  ');
      SQL.Add('where  convert(smalldatetime,convert(varchar,TSCD_KCRK.CFMDATE,111)) between ');
      SQL.add('      '''+formatdatetime('yyyy/mm/dd',sdate)+''' and '''+formatdatetime('yyyy/mm/dd',edate)+''' ');
      SQL.Add('      and TSCD_KCRK.YN=''5'' ) CWHLS');
      SQL.Add('where  TSCD_KCRKS.RKNO=CWHLS.RKNO and TSCD_KCRKS.TSID=CWHLS.TSID     ');
      //funcObj.WriteErrorLog(sql.Text);
      execsql;
      active:=false;
    end;
    with Ptemp do
    begin
      active:=false;
      sql.Clear;
      sql.add('declare @exchange int');
      sql.add('set @exchange=(select CWHL from CWHL ');
      sql.add('               where HLYEAR='+''''+CBX1.Text+'''');
      sql.add('                     and HLMONTH= '+''''+CBX2.Text+''''+')');
      sql.add('update TSCD_KCRKS  ');                                       //穝蹲瞯0薄猵る夹瞯
      sql.add('set CWHL=@exchange ')   ;
      SQL.Add('from (');
      SQL.Add(' select TSCD_KCRKS.RKNO,TSCD_KCRKS.TSID ');
      SQL.Add(' from TSCD_KCRKS   ');
      SQL.Add(' left join TSCD_KCRK on TSCD_KCRKS.RKNO=TSCD_KCRK.RKNO ');
      SQL.Add('where  convert(smalldatetime,convert(varchar,TSCD_KCRK.CFMDATE,111)) between ');
      SQL.add('      '''+formatdatetime('yyyy/mm/dd',sdate)+''' and '''+formatdatetime('yyyy/mm/dd',edate)+''' ');
      SQL.Add('      and TSCD_KCRK.YN=''5'' ) CWHLS');
      SQL.Add('where  TSCD_KCRKS.RKNO=CWHLS.RKNO and TSCD_KCRKS.TSID=CWHLS.TSID and TSCD_KCRKS.CWHL is null    ');
      //funcObj.WriteErrorLog(sql.Text);
      execsql;
      active:=false;
    end;
    //璸衡禫羆肂
    with Ptemp do
    begin
      active:=false;
      sql.Clear;
      //场だ⊿Τ羆基场だ璸衡羆基
      SQL.Add('update TSCD_KCRKS ');
      sql.add('Set VNACC=round(USACC*CWHL,0),' );
      sql.add('    VNPrice=round(USPrice*CWHL,0)');
      SQL.Add('from (');
      SQL.Add(' select TSCD_KCRKS.RKNO,TSCD_KCRKS.TSID ');
      SQL.Add(' from TSCD_KCRKS   ');
      SQL.Add(' left join TSCD_KCRK on TSCD_KCRKS.RKNO=TSCD_KCRK.RKNO ');
      SQL.Add('where  convert(smalldatetime,convert(varchar,TSCD_KCRK.CFMDATE,111)) between ');
      SQL.add('      '''+formatdatetime('yyyy/mm/dd',sdate)+''' and '''+formatdatetime('yyyy/mm/dd',edate)+''' ');
      SQL.Add('      and TSCD_KCRK.YN=''5'' ) CWHLS');
      SQL.Add('where  TSCD_KCRKS.RKNO=CWHLS.RKNO and TSCD_KCRKS.TSID=CWHLS.TSID and TSCD_KCRKS.USPrice is not null   ');
      //funcObj.WriteErrorLog(sql.Text);
      execsql;
      active:=false;
    end;
    //璸衡禫羆肂
    with Ptemp do
    begin
      active:=false;
      sql.Clear;
      //场だ⊿Τ羆基场だ璸衡羆基
      SQL.Add('update TSCD_KCRKS ');
      sql.add('Set VNACC_Tax=VNACC+VNTax_HG' );
      SQL.Add('from (');
      SQL.Add(' select TSCD_KCRKS.RKNO,TSCD_KCRKS.TSID ');
      SQL.Add(' from TSCD_KCRKS   ');
      SQL.Add(' left join TSCD_KCRK on TSCD_KCRKS.RKNO=TSCD_KCRK.RKNO ');
      SQL.Add('where  convert(smalldatetime,convert(varchar,TSCD_KCRK.CFMDATE,111)) between ');
      SQL.add('      '''+formatdatetime('yyyy/mm/dd',sdate)+''' and '''+formatdatetime('yyyy/mm/dd',edate)+''' ');
      SQL.Add('      and TSCD_KCRK.YN=''5'' ) CWHLS');
      SQL.Add('where  TSCD_KCRKS.RKNO=CWHLS.RKNO and TSCD_KCRKS.TSID=CWHLS.TSID  ');
      //funcObj.WriteErrorLog(sql.Text);
      execsql;
      active:=false;
    end;
    //
    DBGrid1.DataSource:=DS2;
    with EntryQry do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('Select TSCD_KCRK.RKNO,TSCD_KCRK.ZSBH,TSCD_ZSZL.zsjc_yw,TSCD_KCRK.DOCNO,TSCD.TSBH,TSCD_SB.YWPM,TSCD_KCRKS.VNPrice,TSCD_KCRKS.VNACC,CWHL,TSCD_KCRKS.USPrice,TSCD_KCRKS.USACC,CWHL_HG,TSCD_KCRKS.VNTax_HG,VNACC_Tax,MonthS');
      SQL.Add('       ,Substring(convert(varchar, TSCD.InDate ,111),1,7) as STYM ,Substring(convert(varchar,  DateAdd(month,MonthS, TSCD.InDate ),111),1,7) as EDYM ,TSCD.InDate,TSCD_KCRKS.TSID ');
      SQL.Add('from TSCD_KCRK');
      SQL.Add('Left join TSCD_KCRKS on TSCD_KCRKS.RKNO=TSCD_KCRK.RKNO');
      SQL.Add('left join TSCD on TSCD.TSID=TSCD_KCRKS.TSID');
      SQL.Add('Left join TSCD_SB on TSCD_SB.SBBH=TSCD.SBBH');
      SQL.Add('Left join TSCD_ZSZL on TSCD_KCRK.ZSBH=TSCD_ZSZL.ZSDH');
      SQL.Add('where  convert(smalldatetime,convert(varchar,TSCD_KCRK.CFMDATE,111)) between ');
      SQL.add('      '''+formatdatetime('yyyy/mm/dd',sdate)+''' and '''+formatdatetime('yyyy/mm/dd',edate)+''' ');
      SQL.Add('       and TSCD_KCRK.YN=''5''');
      //funcObj.WriteErrorLog(sql.Text);
      Active:=true;
    end;
    //
    DBGrid1.columns[0].width:=80;
    DBGrid1.columns[1].width:=45;
    DBGrid1.columns[2].width:=130;
    DBGrid1.columns[3].width:=75;
    DBGrid1.columns[4].width:=90;
    DBGrid1.columns[5].width:=75;
    DBGrid1.columns[6].width:=75;
    DBGrid1.columns[7].width:=45;
    DBGrid1.columns[8].width:=60;
    DBGrid1.columns[9].width:=60;
    DBGrid1.columns[10].width:=75;
    DBGrid1.columns[11].width:=75;
    DBGrid1.columns[12].width:=75;
    DBGrid1.columns[13].width:=50;
    DBGrid1.columns[14].width:=60;
    DBGrid1.columns[15].width:=60;
    DBGrid1.columns[16].width:=60;
    DBGrid1.columns[17].width:=80;
    //
    BT3.Enabled:=false;
    BT4.Enabled:=true;
end;

procedure TEquipmentCal.BT4Click(Sender: TObject);
var i,j:integer;
    VNACC,tmpVNAcc,RemVNAcc:integer;
    KCYEAR,KCMONTH:integer;
begin
   EntryQry.First;
   for i:=0 to EntryQry.RecordCount-1 do
   begin
     if  EntryQry.FieldByName('Months').Value>0 then
     begin
       //埃
       with Ptemp do
       begin
         active:=false;
         sql.Clear;
         sql.add('Delete from TSCD_Month ');
         sql.add('where TSID='''+EntryQry.FieldByName('TSID').AsString+''' ');
         execsql;
       end;
       //
       VNACC:=EntryQry.FieldByName('VNACC_Tax').Value div EntryQry.FieldByName('Months').Value;
       //
       RemVNAcc:=EntryQry.FieldByName('VNACC_Tax').Value;
       KCYEAR:=strtoint(Copy(EntryQry.FieldByName('STYM').AsString,1,4));
       KCMONTH:=strtoint(Copy(EntryQry.FieldByName('STYM').AsString,6,2));
       KCMONTH:=KCMONTH+1;
       if KCMONTH>12 then
       begin
        KCMONTH:=1;
        KCYEAR:=KCYEAR+1;
       end;
       for j:=1 to  EntryQry.FieldByName('Months').Value do
       begin
         if VNACC<RemVNAcc then tmpVNAcc:=VNACC else tmpVNAcc:=RemVNAcc;
         if j=EntryQry.FieldByName('Months').Value then tmpVNAcc:=RemVNAcc;

         with Ptemp do
         begin
           active:=false;
           sql.Clear;
           sql.add('Insert into TSCD_Month ');
           sql.add('  (KCYEAR, KCMONTH, TSID, VNACC, USERID, USERDATE, YN )');
           sql.add('Values ');
           sql.add('  ('''+Format('%.4d',[KCYEAR])+''','''+Format('%.2d',[KCMONTH])+''','''+EntryQry.FieldByName('TSID').AsString+''','+inttostr(tmpVNAcc)+','''+main.Edit1.Text+''',GetDate(),1)');
           //funcObj.WriteErrorLog(sql.Text);
           execsql;
         end;
         RemVNAcc:=RemVNAcc-VNACC;
         KCMONTH:=KCMONTH+1;
         if KCMONTH>12 then
         begin
          KCMONTH:=1;
          KCYEAR:=KCYEAR+1;
         end;
       end;
       //
     end;
     EntryQry.Next;
   end;
   //
   DBGrid1.Datasource:=DS3;
   with TSCD_MonthQry do
   begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Select  TSCD_Month.KCYEAR,TSCD_Month.KCMONTH,TSCD.TSBH,TSCD_SB.DWBH,TSCD.Qty,TSCD_SB.YWPM,TSCD_Month.VNACC,TSCD_Month.TSID ');
    SQL.Add('from TSCD_Month');
    SQL.Add('left join TSCD on TSCD.TSID=TSCD_Month.TSID');
    SQL.Add('left join TSCD_SB on TSCD.SBBH=TSCD_SB.SBBH');
    SQL.Add('left join (');
    SQL.Add('  select TSCD_KCRKS.TSID');
    SQL.Add('  from TSCD_KCRK');
    SQL.Add('  Left join TSCD_KCRKS on TSCD_KCRKS.RKNO=TSCD_KCRK.RKNO');
    SQL.Add('  where  convert(smalldatetime,convert(varchar,TSCD_KCRK.CFMDATE,111)) between ');
    SQL.add('      '''+formatdatetime('yyyy/mm/dd',sdate)+''' and '''+formatdatetime('yyyy/mm/dd',edate)+''' ');
    SQL.Add('       and TSCD_KCRK.YN=''5'' ) TSCD_KCRKS on TSCD_KCRKS.TSID=TSCD_Month.TSID');
    SQL.Add('where TSCD_KCRKS.TSID is not null    ');
    SQL.Add('order by TSCD_KCRKS.TSID  ');
    //funcObj.WriteErrorLog(sql.Text);
    Active:=true;
   end;
   //
   DBGrid1.columns[0].width:=40;
   DBGrid1.columns[1].width:=30;
   DBGrid1.columns[2].width:=90;
   DBGrid1.columns[3].width:=40;
   DBGrid1.columns[4].width:=30;
   DBGrid1.columns[5].width:=200;
   DBGrid1.columns[6].width:=75;
   DBGrid1.columns[7].width:=100;
   Showmessage('OK');
   BT4.Enabled:=false;
end;

procedure TEquipmentCal.Button1Click(Sender: TObject);
begin
  PrintDBGrideh1.Preview;
end;

procedure TEquipmentCal.Button4Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin
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
    for   i:=1   to   DBGrid1.DataSource.dataset.fieldcount   do
      begin
        eclApp.Cells(1,i+1):=DBGrid1.DataSource.dataset.fields[i-1].FieldName;
      end;
    DBGrid1.DataSource.dataset.First;
    j:=2;
    while   not  DBGrid1.DataSource.dataset.Eof   do
      begin
        eclApp.Cells(j,1):=j-1;
        for   i:=1   to   DBGrid1.DataSource.dataset.fieldcount   do
          begin
            eclApp.Cells(j,i+1):=DBGrid1.DataSource.dataset.Fields[i-1].Value;
            eclApp.Cells.Cells.item[j,i+1].font.size:='8';
          end;
        DBGrid1.DataSource.dataset.Next;
        inc(j);
      end;
    eclapp.columns.autofit;
    eclApp.Visible:=True;
  except
    on   F:Exception   do
      showmessage(F.Message);
  end;

end;

end.
