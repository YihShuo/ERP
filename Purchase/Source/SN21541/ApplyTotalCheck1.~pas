unit ApplyTotalCheck1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, StdCtrls, DBCtrls, GridsEh, DBGridEh, ComCtrls,
  Mask, Buttons, ExtCtrls, Comobj, IniFiles, dateutils;

type
  TApplyTotalCheck = class(TForm)
    DBGrid3: TDBGridEh;
    SGMas: TQuery;
    SGMasSGNO: TStringField;
    SGMasGSBH: TStringField;
    SGMasDepID: TStringField;
    SGMasSGDate: TDateTimeField;
    SGMasDepName: TStringField;
    SGMasDepMemo: TStringField;
    SGMasMemo: TStringField;
    SGMasUSERDate: TDateTimeField;
    SGMasUSERID: TStringField;
    SGMasCFMDate: TDateTimeField;
    SGMasCFMID: TStringField;
    SGMasYN: TStringField;
    DS1: TDataSource;
    UpMas: TUpdateSQL;
    SGDet: TQuery;
    SGDetSGNO: TStringField;
    SGDetCLBH: TStringField;
    SGDetYWPM: TStringField;
    SGDetZWPM: TStringField;
    SGDetSGQty: TFloatField;
    SGDetQty: TFloatField;
    SGDetUSPrice: TFloatField;
    SGDetVNPrice: TCurrencyField;
    SGDetACCVN: TFloatField;
    SGDetACCUS: TFloatField;
    SGDetYQdate: TDateTimeField;
    SGDetMemo: TStringField;
    SGDetBJNO: TStringField;
    SGDetZSDH: TStringField;
    SGDetzsywjc: TStringField;
    SGDetdwbh: TStringField;
    SGDetZWSM: TStringField;
    SGDetUSERDate: TDateTimeField;
    SGDetUSERID: TStringField;
    SGDetYN: TStringField;
    DS2: TDataSource;
    Query1: TQuery;
    SGMasCFMDate1: TDateTimeField;
    SGMasCFMID1: TStringField;
    SGMasLB: TStringField;
    Panel2: TPanel;
    Panel1: TPanel;
    Label1: TLabel;
    Label5: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Button1: TButton;
    Button3: TButton;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    Edit1: TEdit;
    Button2: TButton;
    Button4: TButton;
    CheckBox1: TCheckBox;
    Button5: TButton;
    LBCombo: TComboBox;
    dbgrid4: TDBGridEh;
    Splitter1: TSplitter;
    Label4: TLabel;
    Edit2: TEdit;
    SGMasCHKDate: TDateTimeField;
    SGMasCHKID: TStringField;
    SGMasflowflag: TStringField;
    SGMasCFMMemo: TStringField;
    SGDetDepQty: TCurrencyField;
    SGDetZZZQty: TCurrencyField;
    Label6: TLabel;
    DTP3: TDateTimePicker;
    DTP4: TDateTimePicker;
    DBMemo1: TDBMemo;
    Label7: TLabel;
    SGMasBudget_chk: TBooleanField;
    SGMasCustomer_Account: TBooleanField;
    Button6: TButton;
    SGMasUniform: TBooleanField;
    Splitter2: TSplitter;
    DBGridEh1: TDBGridEh;
    DS3: TDataSource;
    QCapex: TQuery;
    Query1ID: TStringField;
    Query1YM: TStringField;
    Query1Season: TStringField;
    Query1Serno: TIntegerField;
    Query1Items: TStringField;
    Query1Qty: TFloatField;
    Query1US_Price: TFloatField;
    Query1US_Total: TFloatField;
    Query1Memo: TStringField;
    SGDetYM: TStringField;
    SGDetSeason: TStringField;
    SGDetSerno: TIntegerField;
    QCapexNeed_Month: TStringField;
    QCapexNeed_Season: TStringField;
    QCapexPay_Month: TStringField;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure SGDetCalcFields(DataSet: TDataSet);
    procedure Button5Click(Sender: TObject);
    procedure SGDetAfterOpen(DataSet: TDataSet);
    procedure DBGrid3DblClick(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure DBGrid3DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
  private
    AppDir: string;
    { Private declarations }
    procedure ReadIni();
  public
    VNPrice_DiplayFormat: string;
    VNPrice_Decimal: Byte;
    { Public declarations }
  end;

var
  ApplyTotalCheck: TApplyTotalCheck;
  NDate: TDate;

implementation

uses main1,fununit;

{$R *.dfm}

procedure TApplyTotalCheck.ReadIni();
var
  MyIni: Tinifile;
  AppDir: string;
begin
  //
  VNPrice_DiplayFormat := '#,##0';
  VNPrice_Decimal := 0;
  AppDir := ExtractFilePath(Application.ExeName);
  if FileExists(AppDir + '\ComName.ini') = true then
  begin
    try
      MyIni := Tinifile.Create(AppDir + '\ComName.ini');
      VNPrice_DiplayFormat := MyIni.ReadString('VNPrice', 'DiplayFormat', '#,##0');
      VNPrice_Decimal := strtoint(MyIni.ReadString('VNPrice', 'Decimal', '0'));
    finally
      MyIni.Free;
    end;
  end;
  TCurrencyField(SGDet.FieldByName('VNPrice')).DisplayFormat := VNPrice_DiplayFormat;
  //  TCurrencyField(SGDet.FieldByName('ACCVN')).DisplayFormat:=VNPrice_DiplayFormat;
end;

procedure TApplyTotalCheck.Button1Click(Sender: TObject);
begin
  with SGMas do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('select SGDH.*,BDepartment.DepName,BDepartment.DepMemo');
    SQL.Add('from SGDH ');
    SQL.Add('left join BDepartment on BDepartment.ID=SGDH.DepID ');
    //    SQL.Add('where LB not in (''04'') and flowflag=''Z'' and convert(smalldatetime,convert(varchar,SGDH.USERDATE,111)) between ');
    SQL.Add('where flowflag=''Z'' and convert(smalldatetime,convert(varchar,SGDH.USERDATE,111)) between ');
    SQL.add('      ''' + formatdatetime('yyyy/MM/dd', DTP1.Date) + ''' ');
    SQL.add('         and ');
    SQL.add('      ''' + formatdatetime('yyyy/MM/dd', DTP2.Date) + ''' ');
    SQL.Add('and SGDH.LB not in (''05'') ');
    if Edit1.Text <> '' then
      SQL.Add('    and SGDH.SGNO like ''' + Edit1.Text + '%'' ');
    if Edit2.Text <> '' then
      SQL.Add('    and BDepartment.DepName like ''' + Edit2.Text + '%'' ');
    if LBCombo.Text <> '' then
      SQL.Add('    and SGDH.LB=''' + LBCombo.Text + ''' ');
    //SQL.Add('      and SGDH.GSBH='''+main.Edit2.Text+''' ');
    if CheckBox1.Checked = true then
      SQL.Add('    and SGDH.CHKID<>''NO'' ')
    else
      SQL.Add('    and SGDH.CHKID=''NO'' ');
    SQL.Add('order by SGNO DESC ');
    //funcobj.WriteErrorLog(sql.Text);
    //showmessage(SQL.Text);
    Active := true;
  end;
  SGDet.Active := true;
end;

procedure TApplyTotalCheck.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := CaFree;
end;

procedure TApplyTotalCheck.FormDestroy(Sender: TObject);
begin
  ApplyTotalCheck := nil;
end;

procedure TApplyTotalCheck.FormCreate(Sender: TObject);
begin
  AppDir := ExtractFilePath(Application.ExeName);
  with query1 do
  begin
    active := false;
    sql.Clear;
    sql.add('select getdate() as NDate ');
    active := true;
    NDate := fieldbyname('NDate').Value;
    active := false;
  end;
  DTP1.Date := date - 20;
  DTP2.date := date;
  ReadIni();
  Button1.Click;
end;

procedure TApplyTotalCheck.Button3Click(Sender: TObject);
begin
  if SGMas.Active = false then
    Exit;
  if SGMas.RecordCount = 0 then
    Exit;
  if SGDet.Active = false then
    Exit;
  if SGDet.RecordCount = 0 then
    Exit;
  if Label6.Font.Color = clred then
  begin
    showmessage('超過預算，無法通過!');
    abort;
  end;
  if messagedlg('Confirm or not ?', mtinformation, [mbYes, mbNo], 0) = mrYes then
  begin
    try
      with SGMas do
      begin
        if fieldbyname('CHKID').Value = 'NO' then
        begin
          Edit;
          fieldbyname('CHKID').Value := main.edit1.text;
          fieldbyname('CHKDATE').Value := Ndate;
          UPMas.Apply(ukmodify);
        end;
        active := false;
        active := true;
      end;
      showmessage('Succeed.');
    except
      on E: Exception do
      begin
        Showmessage('Have wrong.' + E.Message);
      end;
    end;
  end;
  //

end;

procedure TApplyTotalCheck.Button2Click(Sender: TObject);
var
  SGNO: string;
begin
  if SGMas.Active = false then
    Exit;
  if SGMas.RecordCount = 0 then
    Exit;
  //
  try
    with SGMas do
    begin
      SGNO := FieldByName('SGNO').AsString;
      if fieldbyname('CHKID').Value = 'NO' then
      begin
        Edit;
        UPMas.Apply(ukmodify);
      end;
      active := false;
      active := true;
      Locate('SGNO', SGNO, []);
    end;
    showmessage('Succeed.');
  except
    on E: Exception do
    begin
      Showmessage('Have wrong.' + E.Message);
    end;
  end;
end;

procedure TApplyTotalCheck.Button4Click(Sender: TObject);
begin
  if SGMas.fieldbyname('CFMID').Value <> 'NO' then
  begin
    Showmessage('Already Confirm Permit,can''t reset ');
    Exit;
  end;
  try
    with SGMas do
    begin
      Edit;
      fieldbyname('flowflag').Value := 'X';
      fieldbyname('CHKID').Value := 'NO';
      UpMas.Apply(ukmodify);
      active := false;
      active := true;
    end;
    showmessage('Succeed.');
  except
    showmessage('Have wrong.');
  end;
end;

procedure TApplyTotalCheck.SGDetCalcFields(DataSet: TDataSet);
begin
  with SGDet do
  begin
    if FieldByName('USPrice').value <> 0 then
    begin
      FieldByName('ACCUS').value := FieldByName('Qty').value * FieldByName('USPrice').value;
    end;
    if FieldByName('VNPrice').value <> 0 then
    begin
      FieldByName('ACCVN').value := FieldByName('Qty').value * FieldByName('VNPrice').value;
    end;
  end;
end;

procedure TApplyTotalCheck.Button5Click(Sender: TObject);
begin
  if SGMas.Active = false then
    Exit;
  if SGMas.RecordCount = 0 then
    Exit;
  if SGDet.Active = false then
    Exit;
  if SGDet.RecordCount = 0 then
    Exit;
  if messagedlg('Confirm All or not ?', mtinformation, [mbYes, mbNo], 0) = mrYes then
  begin
    try
      SGMas.First;
      with SGMas do
      begin
        while not SGMas.Eof do
        begin
          if fieldbyname('CHKID').Value = 'NO' then
          begin
            Edit;
            fieldbyname('CHKID').Value := main.edit1.text;
            fieldbyname('CHKDATE').Value := Ndate;
            UPMas.Apply(ukmodify);
          end;
          Next;
        end;
        active := false;
        active := true;
      end;
      showmessage('Succeed.');
    except
      on E: Exception do
      begin
        Showmessage('Have wrong.' + E.Message);
      end;
    end;
  end;
  //

end;

procedure TApplyTotalCheck.SGDetAfterOpen(DataSet: TDataSet);
var
  CWHL, Sdate, Edate, yyyy, mm: string;
begin
  if SGMas.IsEmpty then
    exit;
  DTP3.Date := startofthemonth(SGMas.FieldByName('SGDate').Value);
  DTP4.date := endofthemonth(SGMas.FieldByName('SGDate').Value);
  Sdate := formatdatetime('YYYY/MM/DD', DTP3.Date);
  Edate := formatdatetime('YYYY/MM/DD', DTP4.Date);
  yyyy := formatdatetime('yyyy', DTP3.Date);
  mm := formatdatetime('MM', DTP3.Date);

  with Query1 do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('select CAST(CWHL as int) as CWHL from CWHLS where CWHLS.HLDAY=''01'' and CWHLS.HLMONTH=' + formatdatetime('MM',
      DTP3.Date) + ' and CWHLS.HLYEAR=' + formatdatetime('YYYY', DTP3.Date) + ' ');
    Active := true;
    if isEmpty then
    begin
      Active := false;
      SQL.Clear;
      if formatdatetime('MM', DTP3.Date - 1) <> '12' then
      begin
        SQL.Add('select CAST(CWHL as int) as CWHL from CWHLS where CWHLS.HLDAY=''01'' and CWHLS.HLMONTH=' + formatdatetime('MM',
          DTP3.Date - 1) + ' and CWHLS.HLYEAR=' + formatdatetime('YYYY', DTP3.Date) + ' ') ;
         Active := true;
      end else
      begin
        SQL.Add('select CAST(CWHL as int) as CWHL from CWHLS where CWHLS.HLDAY=''01'' and CWHLS.HLMONTH=' + formatdatetime('MM',
          DTP3.Date - 1) + ' and CWHLS.HLYEAR=' + formatdatetime('YYYY', DTP3.Date - 1) + ' ');
         Active := true;
         if  isEmpty then
         begin
            Active := false;
            SQL.Clear;
            SQL.Add('select CAST(CWHL as int) as CWHL from CWHLS where CWHLS.HLDAY=''01'' and CWHLS.HLMONTH=' + formatdatetime('MM',
              DTP3.Date - 1) + '-1 and CWHLS.HLYEAR=' + formatdatetime('YYYY', DTP3.Date - 1) + ' ');
            Active := true;
         end;

      end;
      //showmessage(SQL.Text);
      //Active := true;
      CWHL := fields[0].AsString;
    end
    else
      CWHL := fields[0].AsString;
  end;

  if (SGMas.FieldByName('Budget_Chk').Value <> True) and (SGMas.FieldByName('Customer_Account').Value <> True) and
    (SGMas.FieldByName('Uniform').Value <> True) then
  begin
    Label6.Visible := true;
    Label7.Visible := false;
    with Query1 do
    begin
      Active := false;
      SQL.Clear;
      SQL.Add('Select isnull(CAST(Sum(Acc)/' + CWHL + ' as decimal(10,1)),0) as USACC,isnull(Budget,0) as Budget from ( ');
      SQL.Add('	select SGDHS.SGNO, SGDH.DepID,  case when SGDHS.USPrice is null then isnull(SGDHS.VNPrice*Qty,0) else isnull('+CWHL+'*SGDHS.USPrice*Qty,0) end as ACC,Budget');
      SQL.Add('	from SGDHS ');
      SQL.Add('	left join SGDH on SGDH.SGNO=SGDHS.SGNO ');
      SQL.add('	left join SGDH_Budget on SGDH_Budget.ID=SGDH.DepID and SGDH_Budget.YM = ''' + yyyy +
        ''' and SGDH_Budget.Season = ''' + mm + '''');

      SQL.Add('	where SGDH.CHKID<>''NO'' and isnull(SGDH.flowflag,'''') <> ''X'' and isnull(Budget_chk,0) <> 1 and isnull(Customer_Account,0) <> 1 and isnull(UniForm,0) <> 1');
      SQL.Add('    and SGDH.LB <> ''05''');

      {    if SGMas.FieldByName('LB').AsString = '03' then
            SQL.Add('    and SGDH.LB = '''+SGMas.FieldByName('LB').AsString+'''')
          else
            SQL.Add('    and SGDH.LB <> ''03''');
      }
      SQL.Add('		  and convert(smalldatetime,convert(varchar,SGDH.SGDate,111)) between ');
      SQL.add('          ''' + Sdate + ''' and ''' + Edate + ''' ');
      SQL.Add('    and SGDH.DepID = ''' + SGMas.FieldByName('DepID').AsString + '''');
      SQL.add('		  ) SGDH ');
      SQL.add('	Group by Budget ');
      //showmessage(SQL.Text);
      Active := true;
    end;
    if not Query1.IsEmpty then
    begin
      if (SGMas.FieldByName('CHKID').AsString = 'NO') and ((SGMas.FieldByName('Budget_chk').Value <> True) and
        (SGMas.FieldByName('Customer_Account').Value <> True) and (SGMas.FieldByName('UniForm').Value <> True)) then
      begin
        Label6.Caption := copy(Sdate, 1, 7) + ' 已申購:' + Query1.fieldbyname('USACC').AsString + ',本次: ' +
          FormatFloat('0.0',(strtofloat(dbgrid4.GetFooterValue(0, dbgrid4.Columns[9])) / strtoint(CWHL) +
          strtofloat(dbgrid4.GetFooterValue(0, dbgrid4.Columns[10])))) + ', 目標預算 :' + Query1.fieldbyname('Budget').AsString;
        if Query1.fieldbyname('USACC').Value + FormatFloat('0.0',(strtofloat(dbgrid4.GetFooterValue(0, dbgrid4.Columns[9])) / strtoint(CWHL) +
          strtofloat(dbgrid4.GetFooterValue(0, dbgrid4.Columns[10])))) > Query1.fieldbyname('Budget').Value then
          Label6.Font.Color := clred
        else
          Label6.Font.Color := clblack;
      end
      else
      begin
        Label6.Caption := copy(Sdate, 1, 7) + ' 已申購:' + Query1.fieldbyname('USACC').AsString + ',本次: ' +
          FormatFloat('0.0',(strtofloat(dbgrid4.GetFooterValue(0, dbgrid4.Columns[9])) / strtoint(CWHL) +
          strtofloat(dbgrid4.GetFooterValue(0, dbgrid4.Columns[10])))) + ', 目標預算 :' + Query1.fieldbyname('Budget').AsString;
        if Query1.fieldbyname('USACC').Value > Query1.fieldbyname('Budget').Value then
          Label6.Font.Color := clred
        else
          Label6.Font.Color := clblack;
      end;
    end
    else
    begin
      with Query1 do
      begin
        Active := false;
        SQL.Clear;
        SQL.Add('Select isnull(Budget,0) as Budget from SGDH_Budget ');
        SQL.add('	where SGDH_Budget.ID=''' + SGMas.FieldByName('DepID').AsString + ''' and SGDH_Budget.YM = ''' + yyyy +
          ''' and SGDH_Budget.Season = ''' + mm + '''');
        Active := true;
      end;
      Label6.Caption := copy(Sdate, 1, 7) + ' 已申購:0 ,本次: ' + FormatFloat('0.0',(strtofloat(dbgrid4.GetFooterValue(0, dbgrid4.Columns[9])) / strtoint(CWHL) +
          strtofloat(dbgrid4.GetFooterValue(0, dbgrid4.Columns[10])))) + ', 目標預算 :' +
        Query1.fieldbyname('Budget').AsString;
      if FormatFloat('0.0',(strtofloat(dbgrid4.GetFooterValue(0, dbgrid4.Columns[9])) / strtoint(CWHL) +
          strtofloat(dbgrid4.GetFooterValue(0, dbgrid4.Columns[10])))) > Query1.fieldbyname('Budget').Value then
        Label6.Font.Color := clred
      else
        Label6.Font.Color := clblack;
    end;
  end;
  //資本支出計算
  if SGMas.FieldByName('Budget_Chk').Value = True then
  begin
    Label6.Visible := false;
    Label7.Visible := true;
    DBGridEh1.Visible := true;
    QCapex.Active := false;
    QCapex.SQL.Clear;
    QCapex.SQL.Add('Select top 1 * from SGDH_CapexS where 1 = 1');
    QCapex.SQL.Add('and ID = ''' + SGMas.fieldbyname('DEPID').Value + '''');
    QCapex.SQL.Add('and YM = ''' + SGDet.fieldbyname('YM').AsString + '''');
    QCapex.SQL.Add('and Season = ''' + SGDet.fieldbyname('Season').AsString + '''');
    QCapex.SQL.Add('and Serno = ''' + SGDet.fieldbyname('Serno').AsString + '''');
    QCapex.Active := true;
    with Query1 do
    begin
      Active := false;
      SQL.Clear;
      SQL.Add('Select isnull(CAST(Sum(Acc)/' + CWHL + ' as decimal(10,2)),0) as USACC,isnull(Budget,0) as Budget from ( ');
      SQL.Add('	select SGDHS.SGNO, SGDH.DepID,  case when SGDHS.USPrice is null then isnull(SGDHS.VNPrice*SGDHS.Qty,0) else isnull(' + CWHL + '*SGDHS.USPrice*SGDHS.Qty,0) end as ACC,SGDH_CapexS.US_Total as Budget');
      SQL.Add('	from SGDHS ');
      SQL.Add('	left join SGDH on SGDH.SGNO=SGDHS.SGNO ');
      if mm < '07' then
        SQL.add('	left join SGDH_CapexS on SGDH_CapexS.ID=SGDH.DepID and SGDH_CapexS.YM = SGDHS.YM and SGDH_CapexS.Season = ''01'' and SGDH_CapexS.Serno = SGDHS.Serno')
      else
        SQL.add('	left join SGDH_CapexS on SGDH_CapexS.ID=SGDH.DepID and SGDH_CapexS.YM = SGDHS.YM and SGDH_CapexS.Season = ''02'' and SGDH_CapexS.Serno = SGDHS.Serno');

      SQL.Add('	where SGDH.CFMID1<>''NO'' and isnull(SGDH.flowflag,'''') <> ''X'' and SGDH.Budget_chk = 1');
      SQL.Add('    and SGDH.DepID = ''' + SGMas.FieldByName('DepID').AsString + '''');
      SQL.Add('    and SGDHS.YM = ''' + SGDet.FieldByName('YM').AsString + ''' and SGDHS.Season = ''' +
        SGDet.FieldByName('Season').AsString + ''' and SGDHS.Serno = ''' + SGDet.FieldByName('Serno').AsString + '''');

      SQL.add('		  ) SGDH ');
      SQL.add('	Group by Budget ');
      //showmessage(SQL.Text);
      Active := true;
    end;
    if not Query1.IsEmpty then
    begin
      if (SGMas.FieldByName('CHKID').AsString = 'NO') and (SGMas.FieldByName('Budget_chk').Value = True) then
      begin
        Label7.Caption := copy(Sdate, 1, 7) + ' 已申購:' + Query1.fieldbyname('USACC').AsString + ',本次: ' +
          FormatFloat('0.0',(strtofloat(dbgrid4.GetFooterValue(0, dbgrid4.Columns[9])) / strtoint(CWHL) +
          strtofloat(dbgrid4.GetFooterValue(0, dbgrid4.Columns[10])))) + ', 目標預算 :' + Query1.fieldbyname('Budget').AsString;
        if Query1.fieldbyname('USACC').Value + FormatFloat('0.0',(strtofloat(dbgrid4.GetFooterValue(0, dbgrid4.Columns[9])) / strtoint(CWHL) +
          strtofloat(dbgrid4.GetFooterValue(0, dbgrid4.Columns[10])))) > Query1.fieldbyname('Budget').Value then
          Label7.Font.Color := clred
        else
          Label7.Font.Color := clblack;
      end
      else
      begin
        Label7.Caption := copy(Sdate, 1, 7) + ' 已申購:' + Query1.fieldbyname('USACC').AsString + ',本次: ' +
          FormatFloat('0.0',(strtofloat(dbgrid4.GetFooterValue(0, dbgrid4.Columns[9])) / strtoint(CWHL) +
          strtofloat(dbgrid4.GetFooterValue(0, dbgrid4.Columns[10])))) + ', 目標預算 :' + Query1.fieldbyname('Budget').AsString;
        if Query1.fieldbyname('USACC').Value > Query1.fieldbyname('Budget').Value then
          Label7.Font.Color := clred
        else
          Label7.Font.Color := clblack;
      end;
    end
    else
    begin
      with Query1 do
      begin
        Active := false;
        SQL.Clear;
        SQL.Add('Select isnull(US_Total,0) as Budget from SGDH_CapexS ');
        if mm < '07' then
          SQL.add('	where SGDH_CapexS.ID=''' + SGMas.FieldByName('DepID').AsString + ''' and SGDH_CapexS.YM = ''' + yyyy +
            ''' and SGDH_CapexS.Season = ''01''')
        else
          SQL.add('	where SGDH_CapexS.ID=''' + SGMas.FieldByName('DepID').AsString + ''' and SGDH_CapexS.YM = ''' + yyyy +
            ''' and SGDH_CapexS.Season = ''02''');
        Active := true;
      end;
      Label7.Caption := copy(Sdate, 1, 7) + ' 已申購:0 ,本次: ' + FormatFloat('0.0',(strtofloat(dbgrid4.GetFooterValue(0, dbgrid4.Columns[9])) / strtoint(CWHL) +
          strtofloat(dbgrid4.GetFooterValue(0, dbgrid4.Columns[10])))) + ', 目標預算 :' +
        Query1.fieldbyname('Budget').AsString;
      if FormatFloat('0.0',(strtofloat(dbgrid4.GetFooterValue(0, dbgrid4.Columns[9])) / strtoint(CWHL) +
          strtofloat(dbgrid4.GetFooterValue(0, dbgrid4.Columns[10])))) > Query1.fieldbyname('Budget').Value then
        Label7.Font.Color := clred
      else
        Label7.Font.Color := clblack;
    end;
  end
  else
    DBGridEh1.Visible := false;
end;

procedure TApplyTotalCheck.DBGrid3DblClick(Sender: TObject);
begin
  DBMemo1.Visible := not DBMemo1.Visible;
end;

procedure TApplyTotalCheck.Button6Click(Sender: TObject);
begin
  if SGMas.Active = false then
    Exit;
  if SGMas.RecordCount = 0 then
    Exit;
  if SGDet.Active = false then
    Exit;
  if SGDet.RecordCount = 0 then
    Exit;
  if messagedlg('Return or not ?', mtinformation, [mbYes, mbNo], 0) = mrYes then
  begin
    try
      with SGMas do
      begin
        Edit;
        fieldbyname('CHKID').Value := 'NO';
        fieldbyname('CHKDATE').Value := Ndate;
        UPMas.Apply(ukmodify);
        active := false;
        active := true;
      end;
      showmessage('Succeed.');
    except
      on E: Exception do
      begin
        Showmessage('Have wrong.' + E.Message);
      end;
    end;
  end;
end;

procedure TApplyTotalCheck.DBGrid3DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if (SGMAS.FieldByName('Uniform').Value = True) or (SGMAS.FieldByName('Customer_Account').Value = True) then
    DBGrid3.Canvas.Brush.Color := clLime;
  if (SGMAS.FieldByName('Budget_chk').Value = True) then
    DBGrid3.Canvas.Brush.Color := clAqua;
  DBGrid3.DefaultDrawColumnCell(Rect, Datacol, Column, State);
end;

end.
