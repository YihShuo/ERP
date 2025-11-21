unit ApplyTotalConfirm21;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, StdCtrls, DBCtrls, GridsEh, DBGridEh, ComCtrls,
  Mask, Buttons, ExtCtrls, Comobj, IniFiles, Menus, dateutils;

type
  TApplyTotalConfirm2 = class(TForm)
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
    SGMasCFMMemo: TStringField;
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
    SGMasYN: TBooleanField;
    PopupMenu1: TPopupMenu;
    SelectAll1: TMenuItem;
    CancelALl1: TMenuItem;
    LBName: TLabel;
    SGMasCHKID: TStringField;
    SGMasCHKDate: TDateTimeField;
    SGMasflowflag: TStringField;
    SGDetDepQty: TCurrencyField;
    SGDetZZZQty: TCurrencyField;
    Label6: TLabel;
    DTP3: TDateTimePicker;
    DTP4: TDateTimePicker;
    DBMemo1: TDBMemo;
    Label4: TLabel;
    SGMasBudget_chk: TBooleanField;
    SGMasCustomer_Account: TBooleanField;
    SGMasUniform: TBooleanField;
    CheckBox2: TCheckBox;
    Button6: TButton;
    Splitter2: TSplitter;
    DBGridEh1: TDBGridEh;
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
    QCapexNeed_Month: TStringField;
    QCapexNeed_Season: TStringField;
    QCapexPay_Month: TStringField;
    DS3: TDataSource;
    SGDetYM: TStringField;
    SGDetSeason: TStringField;
    SGDetSerno: TIntegerField;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure SGDetCalcFields(DataSet: TDataSet);
    procedure Button5Click(Sender: TObject);
    procedure SelectAll1Click(Sender: TObject);
    procedure CancelALl1Click(Sender: TObject);
    procedure LBComboChange(Sender: TObject);
    procedure SGDetAfterOpen(DataSet: TDataSet);
    procedure DBGrid3DblClick(Sender: TObject);
    procedure DBGrid3DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure Button6Click(Sender: TObject);
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
  ApplyTotalConfirm2: TApplyTotalConfirm2;
  NDate: TDate;

implementation

uses main1, FunUnit;

{$R *.dfm}

procedure TApplyTotalConfirm2.ReadIni();
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

procedure TApplyTotalConfirm2.Button1Click(Sender: TObject);
begin
  with SGMas do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('select SGDH.SGNO, SGDH.GSBH, SGDH.DepID, SGDH.LB, SGDH.Memo, SGDH.SGDate, SGDH.USERID, SGDH.USERDate, SGDH.CFMID, SGDH.CFMDate, SGDH.CFMMemo , SGDH.CFMID1, SGDH.CFMDate1, Convert(bit,''0'') as YN, ');
    SQL.Add('       BDepartment.DepMemo as DepName,BDepartment.DepMemo,SGDH.CHKID,SGDH.CHKDate,SGDH.flowflag,SGDH.Budget_chk, SGDH.Customer_Account, SGDH.Uniform ');
    SQL.Add('from SGDH ');
    SQL.Add('left join BDepartment on BDepartment.ID=SGDH.DepID ');
    SQL.Add('where convert(smalldatetime,convert(varchar,SGDH.USERDATE,111)) between ');
    SQL.add('      ''' + formatdatetime('yyyy/MM/dd', DTP1.Date) + ''' ');
    SQL.add('         and ');
    SQL.add('      ''' + formatdatetime('yyyy/MM/dd', DTP2.Date) + ''' ');
    SQL.Add('and SGDH.LB not in (''05'') ');
    if Edit1.Text <> '' then
      SQL.Add('    and SGDH.SGNO like ''' + Edit1.Text + '%'' ');
    if LBCombo.Text <> '' then
      SQL.Add('    and SGDH.LB=''' + LBCombo.Text + ''' ');
    if CheckBox1.Checked = false then
      SQL.Add('      and SGDH.CFMID1 = ''NO'' ')
    else
      SQL.Add('      and SGDH.CFMID1 <> ''NO'' ');
    if CheckBox2.Checked = true then
      SQL.Add('      and SGDH.Flowflag = ''X'' and SGDH.CFMDate is not NULL ')
    else
      SQL.Add('      and SGDH.CFMID<>''NO'' ');
    SQL.Add('order by SGNO DESC ');
    //funcObj.WriteErrorLog(sql.Text);
    //showmessage(SQL.Text);
    Active := true;
  end;
  SGDet.Active := true;
end;

procedure TApplyTotalConfirm2.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := CaFree;
end;

procedure TApplyTotalConfirm2.FormDestroy(Sender: TObject);
begin
  ApplyTotalConfirm2 := nil;
end;

procedure TApplyTotalConfirm2.FormCreate(Sender: TObject);
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

procedure TApplyTotalConfirm2.Button3Click(Sender: TObject);
begin
  if SGMas.Active = false then
    Exit;
  if SGMas.RecordCount = 0 then
    Exit;
  if messagedlg('Confirm or not ?', mtinformation, [mbYes, mbNo], 0) = mrYes then
  begin
    //
    try
      with SGMas do
      begin
        if fieldbyname('CFMID1').Value = 'NO' then
        begin
          Edit;
          fieldbyname('CFMID1').Value := main.edit1.text;
          fieldbyname('CFMDATE1').Value := Ndate;
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

end;

procedure TApplyTotalConfirm2.Button2Click(Sender: TObject);
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
      if fieldbyname('CFMID1').Value = 'NO' then
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

procedure TApplyTotalConfirm2.Button4Click(Sender: TObject);
begin
  if SGMas.Active = false then
    Exit;
  if SGMas.RecordCount = 0 then
    Exit;
  if messagedlg('Reset All or not ?', mtinformation, [mbYes, mbNo], 0) = mrYes then
  begin
    try
      SGMas.First;
      with SGMas do
      begin
        while not SGMas.Eof do
        begin
          if FieldByName('YN').AsString = 'True' then
          begin
            Edit;
            fieldbyname('flowflag').Value := 'X';
            fieldbyname('CHKID').Value := 'NO';
            fieldbyname('CFMID').Value := 'NO';
            fieldbyname('CFMID1').Value := 'NO';
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
end;

procedure TApplyTotalConfirm2.SGDetCalcFields(DataSet: TDataSet);
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

procedure TApplyTotalConfirm2.Button5Click(Sender: TObject);
begin
  if SGMas.Active = false then
    Exit;
  if SGMas.RecordCount = 0 then
    Exit;
  if messagedlg('Confirm All or not ?', mtinformation, [mbYes, mbNo], 0) = mrYes then
  begin
    try
      SGMas.First;
      with SGMas do
      begin
        while not SGMas.Eof do
        begin
          if fieldbyname('CFMID1').Value = 'NO' then
          begin
            if FieldByName('YN').AsString = 'True' then
            begin
              Edit;
              fieldbyname('CFMID1').Value := main.edit1.text;
              fieldbyname('CFMDATE1').Value := Ndate;
              UPMas.Apply(ukmodify);
            end;
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

procedure TApplyTotalConfirm2.SelectAll1Click(Sender: TObject);
begin
  SGMas.First;
  while not SGMas.Eof do
  begin
    SGMas.Edit;
    SGMas.FieldByName('YN').Value := 1;
    SGMas.Post;
    SGMas.Next;
  end;
end;

procedure TApplyTotalConfirm2.CancelALl1Click(Sender: TObject);
begin
  SGMas.First;
  while not SGMas.Eof do
  begin
    SGMas.Edit;
    SGMas.FieldByName('YN').Value := 0;
    SGMas.Post;
    SGMas.Next;
  end;
end;

procedure TApplyTotalConfirm2.LBComboChange(Sender: TObject);
begin
  if LBCombo.Text = '' then
    LBName.Caption := '全部';
  if LBCombo.Text = '01' then
    LBName.Caption := '每月辦公室請購明細';
  if LBCombo.Text = '02' then
    LBName.Caption := '預算買五金日雜';
  if LBCombo.Text = '03' then
    LBName.Caption := '請購單';
  if LBCombo.Text = '04' then
    LBName.Caption := '機器零件';
  if LBCombo.Text = '09' then
    LBName.Caption := '生產模製具';
end;

procedure TApplyTotalConfirm2.SGDetAfterOpen(DataSet: TDataSet);
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
    {if isEmpty then
    begin
      Active := false;
      SQL.Clear;
      if formatdatetime('MM', DTP3.Date - 1) <> '12' then
      begin
        SQL.Add('select CAST(CWHL as int) as CWHL from CWHLS where CWHLS.HLDAY=''01'' and CWHLS.HLMONTH=' + formatdatetime('MM',
          DTP3.Date - 1) + ' and CWHLS.HLYEAR=' + formatdatetime('YYYY', DTP3.Date) + ' ')
      end else
        SQL.Add('select CAST(CWHL as int) as CWHL from CWHLS where CWHLS.HLDAY=''01'' and CWHLS.HLMONTH=' + formatdatetime('MM',
          DTP3.Date - 1) + ' and CWHLS.HLYEAR=' + formatdatetime('YYYY', DTP3.Date - 1) + ' ');
      Active := true;
      CWHL := fields[0].AsString;
    end
    else
      CWHL := fields[0].AsString; }
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
    Label4.Visible := false;
    with Query1 do
    begin
      Active := false;
      SQL.Clear;
      SQL.Add('Select isnull(CAST(Sum(Acc)/' + CWHL + ' as decimal(10,1)),0) as USACC,isnull(Budget,0) as Budget from ( ');
      SQL.Add('	select SGDHS.SGNO, SGDH.DepID,  case when SGDHS.USPrice is null then isnull(SGDHS.VNPrice*Qty,0) else isnull(' + CWHL + '*SGDHS.USPrice*Qty,0) end as ACC,Budget');
      SQL.Add('	from SGDHS ');
      SQL.Add('	left join SGDH on SGDH.SGNO=SGDHS.SGNO ');
      SQL.Add('	left join CWHLS on CWHLS.HLDAY=''01'' and CWHLS.HLMONTH=MONTH(GETDATE()) and CWHLS.HLYEAR=YEAR(GETDATE()) ');
      SQL.add('	left join SGDH_Budget on SGDH_Budget.ID=SGDH.DepID and SGDH_Budget.YM = ''' + yyyy +
        ''' and SGDH_Budget.Season = ''' + mm + '''');

      SQL.Add('	where SGDH.CFMID1<>''NO'' and isnull(SGDH.flowflag,'''') <> ''X'' and isnull(Budget_chk,0) <> 1 and isnull(Customer_Account,0) <> 1 and isnull(UniForm,0) <> 1');
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
      ///    showmessage(SQL.Text);
      Active := true;
    end;
    if not Query1.IsEmpty then
    begin
      if (SGMas.FieldByName('CFMID1').AsString = 'NO') and ((SGMas.FieldByName('Budget_chk').Value <> True) and
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
      Label6.Caption := copy(Sdate, 1, 7) + ' 已申購 :0 ,本次: ' +  FormatFloat('0.0',(strtofloat(dbgrid4.GetFooterValue(0, dbgrid4.Columns[9])) / strtoint(CWHL) +
          strtofloat(dbgrid4.GetFooterValue(0, dbgrid4.Columns[10])))) + ', 目標預算 :' +
        Query1.fieldbyname('Budget').AsString;
      if  FormatFloat('0.0',(strtofloat(dbgrid4.GetFooterValue(0, dbgrid4.Columns[9])) / strtoint(CWHL) +
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
    Label4.Visible := true;
    DBGridEh1.Visible := true;
    QCapex.Active := false;
    QCapex.SQL.Clear;
    QCapex.SQL.Add('Select top 1 * from SGDH_CapexS where 1 = 1');
    QCapex.SQL.Add('and ID = ''' + SGMas.fieldbyname('DEPID').Value + '''');
    QCapex.SQL.Add('and YM = ''' + SGDet.fieldbyname('YM').Asstring + '''');
    QCapex.SQL.Add('and Season = ''' + SGDet.fieldbyname('Season').Asstring + '''');
    QCapex.SQL.Add('and Serno = ''' + SGDet.fieldbyname('Serno').AsString + ''' ');
    QCapex.Active := true;
    with Query1 do
    begin
      Active := false;
      SQL.Clear;
      SQL.Add('Select isnull(CAST(Sum(Acc)/' + CWHL + ' as decimal(10,2)),0) as USACC,isnull(Budget,0) as Budget from ( ');
      SQL.Add('	select SGDHS.SGNO, SGDH.DepID,  case when SGDHS.USPrice is null then isnull(SGDHS.VNPrice*SGDHS.Qty,0) else isnull(' + CWHL + '*SGDHS.USPrice*SGDHS.Qty,0) end as ACC,SGDH_CapexS.US_Total as Budget');
      SQL.Add('	from SGDHS ');
      SQL.Add('	left join SGDH on SGDH.SGNO=SGDHS.SGNO ');
      SQL.Add('	left join CWHLS on CWHLS.HLDAY=''01'' and CWHLS.HLMONTH=MONTH(GETDATE()) and CWHLS.HLYEAR=YEAR(GETDATE()) ');
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
        Label4.Caption := copy(Sdate, 1, 7) + ' 已申購:' + Query1.fieldbyname('USACC').AsString + ',本次: ' +
           FormatFloat('0.0',(strtofloat(dbgrid4.GetFooterValue(0, dbgrid4.Columns[9])) / strtoint(CWHL) +
          strtofloat(dbgrid4.GetFooterValue(0, dbgrid4.Columns[10])))) + ', 目標預算 :' + Query1.fieldbyname('Budget').AsString;
        if Query1.fieldbyname('USACC').Value +  FormatFloat('0.0',(strtofloat(dbgrid4.GetFooterValue(0, dbgrid4.Columns[9])) / strtoint(CWHL) +
          strtofloat(dbgrid4.GetFooterValue(0, dbgrid4.Columns[10])))) > Query1.fieldbyname('Budget').Value then
          Label4.Font.Color := clred
        else
          Label4.Font.Color := clblack;
      end
      else
      begin
        Label4.Caption := copy(Sdate, 1, 7) + ' 已申購:' + Query1.fieldbyname('USACC').AsString + ',本次: ' +
           FormatFloat('0.0',(strtofloat(dbgrid4.GetFooterValue(0, dbgrid4.Columns[9])) / strtoint(CWHL) +
          strtofloat(dbgrid4.GetFooterValue(0, dbgrid4.Columns[10])))) + ', 目標預算 :' + Query1.fieldbyname('Budget').AsString;
        if Query1.fieldbyname('USACC').Value > Query1.fieldbyname('Budget').Value then
          Label4.Font.Color := clred
        else
          Label4.Font.Color := clblack;
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
      Label4.Caption := copy(Sdate, 1, 7) + ' 已申購:0 ,本次: ' +  FormatFloat('0.0',(strtofloat(dbgrid4.GetFooterValue(0, dbgrid4.Columns[9])) / strtoint(CWHL) +
          strtofloat(dbgrid4.GetFooterValue(0, dbgrid4.Columns[10])))) + ', 目標預算 :' +
        Query1.fieldbyname('Budget').AsString;
      if  FormatFloat('0.0',(strtofloat(dbgrid4.GetFooterValue(0, dbgrid4.Columns[9])) / strtoint(CWHL) +
          strtofloat(dbgrid4.GetFooterValue(0, dbgrid4.Columns[10])))) > Query1.fieldbyname('Budget').Value then
        Label4.Font.Color := clred
      else
        Label4.Font.Color := clblack;
    end;
  end
  else
    DBGridEh1.Visible := false;
end;

procedure TApplyTotalConfirm2.DBGrid3DblClick(Sender: TObject);
begin
  DBMemo1.Visible := not DBMemo1.Visible;
end;

procedure TApplyTotalConfirm2.DBGrid3DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if (SGMAS.FieldByName('Uniform').Value = True) or (SGMAS.FieldByName('Customer_Account').Value = True) then
    DBGrid3.Canvas.Brush.Color := clLime;
  if (SGMAS.FieldByName('Budget_chk').Value = True) then
    DBGrid3.Canvas.Brush.Color := clAqua;
  DBGrid3.DefaultDrawColumnCell(Rect, Datacol, Column, State);
end;

procedure TApplyTotalConfirm2.Button6Click(Sender: TObject);
begin
  if SGMas.Active = false then
    Exit;
  if SGMas.RecordCount = 0 then
    Exit;
  Query1.Active := false;
  Query1.SQL.Clear;
  Query1.SQL.Add('select top 1 * from CGZLSS where zlbh = ''' + SGMas.FieldbyName('SGNO').AsString + '''');
  Query1.Active := true;
  if not Query1.IsEmpty then
  begin
    showmessage(SGMas.FieldbyName('SGNO').AsString + ' 已下採購單，無法取回!');
    abort;
  end;
  if messagedlg('是否取回' + SGMas.FieldbyName('SGNO').AsString + '單據 ?', mtinformation, [mbYes, mbNo], 0) = mrYes then
  begin
    try
      SGMas.First;
      with SGMas do
      begin
        while not SGMas.Eof do
        begin
          if FieldByName('YN').AsString = 'True' then
          begin
            Edit;
            fieldbyname('flowflag').Value := 'Z';
            fieldbyname('CHKID').Value := '51288';
            fieldbyname('CFMID').Value := '00016';
            fieldbyname('CFMID1').Value := 'NO';
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
end;

end.
