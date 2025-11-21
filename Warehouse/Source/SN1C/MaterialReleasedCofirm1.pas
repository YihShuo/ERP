unit MaterialReleasedCofirm1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, GridsEh, DBGridEh, StdCtrls, ExtCtrls, DB, DBTables,
  Menus, Comobj, DateUtils, iniFiles, ExcelXP, math;
  
type
  TMaterialReleasedCofirm = class(TForm)
    TopPanel: TPanel;
    DBGrid1: TDBGridEh;
    DelMas: TQuery;
    DelMasUSERDATE: TDateTimeField;
    DelMasUSERID: TStringField;
    DelMasYN: TStringField;
    DelMasGSBH: TStringField;
    DS3: TDataSource;
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
    GroupBox1: TGroupBox;
    rd2: TRadioButton;
    rd1: TRadioButton;
    DelMasListNo: TStringField;
    DelMasSection: TStringField;
    DelMasBuilding: TStringField;
    DelMasLean: TStringField;
    DelMasDemandDate: TDateTimeField;
    DelMasDemandTime: TStringField;
    DelMasRemark: TStringField;
    DelMasConfirmID: TStringField;
    DelMasConfirmDate: TDateTimeField;
    DelMasReceiverConfirmID: TStringField;
    DelMasReceiverConfirmDate: TDateTimeField;
    DelDet: TQuery;
    DelDetYWPM: TStringField;
    DelDetDWBH: TStringField;
    DelDetUSERDATE: TDateTimeField;
    DelDetUSERID: TStringField;
    DelDetYN: TStringField;
    DelDetZWPM: TStringField;
    DS4: TDataSource;
    UPDet: TUpdateSQL;
    DelDetUsage: TCurrencyField;
    DelDetIssuanceUsage: TCurrencyField;
    DelDetRY_Begin: TStringField;
    DelDetRY_End: TStringField;
    DelDetMaterialID: TStringField;
    UpMas: TUpdateSQL;
    DelDetLotNO: TStringField;
    Qtemp: TQuery;
    DelDetListNo: TStringField;
    Label3: TLabel;
    Edit2: TEdit;
    CheckBox1: TCheckBox;
    DelDetRemark: TStringField;
    GroupBox2: TGroupBox;
    DTP3: TDateTimePicker;
    Label4: TLabel;
    CBX3: TComboBox;
    Label5: TLabel;
    Button4: TButton;
    Track: TQuery;
    StringField2: TStringField;
    StringField6: TStringField;
    CurrencyField1: TCurrencyField;
    CurrencyField2: TCurrencyField;
    StringField9: TStringField;
    DS1: TDataSource;
    TrackDep: TStringField;
    TrackSection: TStringField;
    TrackDemandTime: TStringField;
    TrackRemarkS: TStringField;
    DelDetCLSL: TCurrencyField;
    DelDetokQty: TCurrencyField;
    TrackCLSL: TCurrencyField;
    TrackokQty: TCurrencyField;
    Label6: TLabel;
    CBX1: TComboBox;
    CBX2: TComboBox;
    Label7: TLabel;
    TrackDemandDate: TDateTimeField;
    TrackYWPM: TStringField;
    TrackARTICLE: TStringField;
    DelDetARTICLE: TStringField;
    Edit3: TEdit;
    Label8: TLabel;
    DelDetLLNO: TStringField;
    Label9: TLabel;
    CBX4: TComboBox;
    TrackListNo: TStringField;
    Button5: TButton;
    DelMasDeliveryCFMID: TStringField;
    DelMasDeliveryCFMDate: TDateTimeField;
    Splitter1: TSplitter;
    Button6: TButton;
    DelDetCGQty: TFloatField;
    DelDetJGQty: TFloatField;
    Button7: TButton;
    Panel2: TPanel;
    Label10: TLabel;
    CB_Department: TComboBox;
    DelMasSource: TStringField;
    PopupMenu1: TPopupMenu;
    ToSQ1: TMenuItem;
    ToWH1: TMenuItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DelMasAfterScroll(DataSet: TDataSet);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure DBGrid2EditButtonClick(Sender: TObject);
    procedure DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure DelDetNewRecord(DataSet: TDataSet);
    procedure Button5Click(Sender: TObject);
    procedure CBX1Change(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure CB_DepartmentChange(Sender: TObject);
    procedure DelDetAfterOpen(DataSet: TDataSet);
    procedure ToSQ1Click(Sender: TObject);
    procedure ToWH1Click(Sender: TObject);
  private
    NDate:TDate;
    sign: boolean;
    procedure ReadIni();
    { Private declarations }
  public
    WH_DiplayFormat:String;
    { Public declarations }
  end;

var
  MaterialReleasedCofirm: TMaterialReleasedCofirm;

const
  DepID: array[0..1] of string = ('WH', 'SQ');

implementation

uses main1, fununit, MaterialReleased_LotNO1, NoApplication1;

{$R *.dfm}

procedure TMaterialReleasedCofirm.ReadIni();
var MyIni :Tinifile;
    AppDir:string;
begin
  WH_DiplayFormat:='#,##0.00';
  AppDir:=ExtractFilePath(Application.ExeName);
  if FileExists(AppDir+'\ComName.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ComName.ini');
      WH_DiplayFormat:=MyIni.ReadString('Warehouse','DiplayFormat','#,##0.00');
    finally
      MyIni.Free;
    end;
  end;
  TCurrencyField(DelDet.FieldByName('CLSL')).DisplayFormat:=WH_DiplayFormat;
  TCurrencyField(DelDet.FieldByName('Usage')).DisplayFormat:=WH_DiplayFormat;
  TCurrencyField(DelDet.FieldByName('IssuanceUsage')).DisplayFormat:=WH_DiplayFormat;
  TCurrencyField(DelDet.FieldByName('okQty')).DisplayFormat:=WH_DiplayFormat;
end;

procedure TMaterialReleasedCofirm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TMaterialReleasedCofirm.FormDestroy(Sender: TObject);
begin
  MaterialReleasedCofirm:=nil;
end;

procedure TMaterialReleasedCofirm.Button1Click(Sender: TObject);
begin
  with DelMas do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT DISTINCT MRCard.ListNo, CASE WHEN Section = ''SF'' THEN ''GCD'' ELSE Section END AS Section, Building, Lean, DemandDate, DemandTime,');
    if not sign then
      SQL.Add('MRCard.Remark ')
    else
      SQL.Add('CAST(dbo.fSignsToNoSigns(MRCard.Remark) AS VARCHAR(150)) AS Remark,');
    SQL.Add('ConfirmID, ConfirmDate, ReceiverConfirmID, ReceiverConfirmDate, MRCard.DeliveryCFMID, MRCard.DeliveryCFMDate, ''' + DepID[CB_Department.ItemIndex] + ''' AS Source, MRCard.UserID, MRCard.UserDate, MRCard.GSBH, MRCard.YN FROM MRCard');
    SQL.Add('LEFT JOIN MRCardS ON MRCard.ListNo = MRCardS.ListNo');
    SQL.Add('LEFT JOIN DDZL ON DDZL.DDBH = RY_Begin');
    SQL.Add('WHERE MRCardS.Source = ''' + DepID[CB_Department.ItemIndex] + '''');
    if CheckBox1.Checked then
      SQL.Add('AND CONVERT(SmallDateTime, CONVERT(VARCHAR, MRCard.UserDate, 111)) BETWEEN ''' + FormatDateTime('yyyy/MM/dd', DTP1.date) + ''' AND ''' + FormatDateTime('yyyy/MM/dd', DTP2.date ) + '''')
    else
      SQL.Add('AND DemandDate = ''' + FormatDateTime('yyyy/MM/dd', DTP3.date) + ''' AND DemandTime LIKE ''' + CBX3.Text + '%''');
    if rd1.Checked then
      SQL.Add('AND ISNULL(MRCard.DeliveryCFMID, ''NO'') = ''NO''');
    if rd2.Checked then
      SQL.Add('AND ISNULL(MRCard.DeliveryCFMID, ''NO'') <> ''NO''');
    if Edit1.Text <> '' then
      SQL.Add('AND MRCard.ListNo LIKE ''' + Edit1.Text + '%''');
    if Edit2.Text <> '' then
      SQL.Add('AND MRCardS.RY_Begin LIKE ''' + Edit2.Text + '%''');
    if Edit3.Text <> '' then
      SQL.Add('AND ARTICLE LIKE ''%' + Edit3.Text + '%''');
    if CBX1.Text <> '' then
      SQL.Add('AND Building = ''' + CBX1.Text + '''');
    if CBX2.Text <> '' then
      SQL.Add('AND Lean = ''' + CBX2.Text + '''');
    if CBX4.Text <> '' then
    begin
      if CBX4.Text = 'GCD' then
        SQL.Add('AND MRCard.Section = ''SF''')
      else
        SQL.Add('AND MRCard.Section = ''' + CBX4.Text + '''');
    end;
    SQL.Add('ORDER BY Section, Building, Lean, DemandDate, DemandTime, MRCard.ListNo');
    Active := true;
  end;
  DelDet.Active := true;
  DBGrid2.Columns[11].ButtonStyle := cbsEllipsis;
end;

procedure TMaterialReleasedCofirm.FormCreate(Sender: TObject);
var i: integer;
begin
  with Qtemp do
  begin
    active:=false;
    sql.Clear;
    sql.add('select getdate() as NDate ');
    active:=true;
    Ndate:=fieldbyname('NDate').Value;
    active:=false;
    active:=false;
    sql.Clear;
    sql.add('select distinct DemandTime from MRCard order by DemandTime');
    active:=true;
    CBX3.Items.Add('');
    for i:=1 to recordcount do
    begin
      CBX3.Items.Add(fieldbyname('DemandTime').asstring);
      next;
    end;
    active:=false;
    sql.Clear;
    sql.add('select distinct Building from MRCard order by Building');
    active:=true;
    CBX1.Items.Add('');
    for i:=1 to recordcount do
    begin
      CBX1.Items.Add(fieldbyname('Building').asstring);
      next;
    end;
    active:=false;
    sql.Clear;
    sql.add('select distinct SUBSTRING(UPPER(Lean), 1, 6) AS Lean from MRCard order by SUBSTRING(UPPER(Lean), 1, 6)');
    active:=true;
    CBX2.Items.Add('');
    for i:=1 to recordcount do
    begin
      CBX2.Items.Add(fieldbyname('Lean').asstring);
      next;
    end;
    active:=false;
    {sql.Clear;
    sql.add('select distinct Section from MRCard order by Section ');
    active:=true;
    CBX4.Items.Add('');
    for i:=1 to recordcount do
    begin
      if (fieldbyname('Section').asstring = 'SF') then
        CBX4.Items.Add('GCD')
      else
        CBX4.Items.Add(fieldbyname('Section').asstring);
      next;
    end;
    active:=false;}
  end;
  //
  with Qtemp do
  begin
    active:=false;
    sql.Clear;
    sql.Add('SELECT name FROM sys.objects WHERE name=''fSignsToNoSigns''');
    active:=true;
    if Qtemp.RecordCount>0 then sign:=true else sign:=false;
  end;
  DTP1.Date:=Ndate-3;
  DTP2.Date:=Ndate;
  DTP3.Date:=Ndate;
  CBX3.ItemIndex:=0;
  CBX1.ItemIndex:=0;
  CBX2.ItemIndex:=0;

  ReadIni();
end;

procedure TMaterialReleasedCofirm.DelMasAfterScroll(DataSet: TDataSet);
begin
  if DelMas.FieldByName('ConfirmID').AsString <> 'NO' then
    Button5.Enabled := false
  else
    Button5.Enabled := true;
    
  if DelMas.FieldByName('DeliveryCFMID').AsString <> 'NO' then
    Button2.Enabled := false
  else
    Button2.Enabled := true;
end;

procedure TMaterialReleasedCofirm.Button3Click(Sender: TObject);
begin
  DelDet.Active:=false;
  DelMas.Active:=false;
  DelMas.Active:=true;
  DelDet.Active:=true;
end;
   
procedure TMaterialReleasedCofirm.Button5Click(Sender: TObject);
begin
  if DelMas.Active = true then
  begin
    try
      with DelMas do
      begin
        Edit;
        FieldByName('ConfirmID').Value := main.Edit1.Text;
        FieldByName('ConfirmDate').Value := NDate;
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

procedure TMaterialReleasedCofirm.Button2Click(Sender: TObject);
begin
  if DelMas.Active=true then
  begin
    DelDet.first; //檢查材料庫位是否輸入，沒有則要先輸入庫位
    while not DelDet.eof do
    begin
      if (DelDet.fieldbyname('IssuanceUsage').isnull) or (DelDet.fieldbyname('IssuanceUsage').AsString='') then
      begin
        showmessage('IssuanceUsage can not be empty.');
        abort;
      end;
      if (RoundTo(DelDet.fieldbyname('IssuanceUsage').value+DelDet.fieldbyname('okQty').value,-4))>RoundTo(DelDet.fieldbyname('CLSL').value,-4) then
      begin
         showmessage('(IssuanceUsage + okQty) can''t more than CLSL.');
         abort;
      end;
      DelDet.next;
    end;
    if messagedlg('Confirm or not ?',mtinformation,[mbYes,mbNo],0)=mrNo then
    begin
      Abort();
    end;
    try  //更新真正庫存
      with DelDet do
      begin
        first;
        while not eof do
        begin
          Edit;
          fieldbyname('IssuanceUsage').Value:=formatfloat(WH_DiplayFormat,fieldbyname('IssuanceUsage').Value);
          UPdet.apply(ukmodify);
          Next;
        end;
      end;
      with DelMas do
      begin
        edit;
        if (fieldbyname('ConfirmDate').IsNull) then
        begin
          fieldbyname('ConfirmID').Value:=main.edit1.text;
          fieldbyname('ConfirmDate').Value:=Ndate;
        end;
        fieldbyname('DeliveryCFMID').Value:=main.edit1.text;
        fieldbyname('DeliveryCFMDate').Value:=Ndate;
        UPMas.Apply(ukmodify);
        active:=false;
        active:=true;
      end;
      showmessage('Succeed.');
    except
      on E:Exception do
      begin
        Showmessage('Have wrong.'+E.Message);
      end;
    end;
  end;
end;

procedure TMaterialReleasedCofirm.Button6Click(Sender: TObject);
begin
  if DelMas.Active = true then
  begin
    try
      with DelMas do
      begin
        Edit;
        FieldByName('DeliveryCFMID').Value := 'NO';
        FieldByName('DeliveryCFMDate').Value := Null;
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

procedure TMaterialReleasedCofirm.Button4Click(Sender: TObject);
var   CLBH,ARTICLE:string;
      eclApp,WorkBook:olevariant;
      i,j,k:integer;
begin
  with Track do
  begin
    Active:=false;
    sql.Clear;
    sql.add('select Building+'' ''+Lean Dep, Section, DemandDate, DemandTime, RY_Begin, ARTICLE, MaterialID, YWPM, ZLZLS2.CLSL, KCLLS.okQty, MRCardS.Usage, IssuanceUsage, MRCard.ListNo ');
    if not sign then
      SQL.Add('     , MRCard.Remark, MRCardS.Remark AS RemarkS ')
    else
      SQL.Add('     ,CAST(dbo.fSignsToNoSigns(MRCard.Remark) AS VARCHAR(50)) Remark, CAST(dbo.fSignsToNoSigns(MRCardS.Remark) AS VARCHAR(50)) RemarkS ');
    sql.add('from MRCard left join MRCardS on MRCard.ListNo=MRCardS.ListNo ');
    sql.add('inner join CLZL on CLZL.CLDH=MRCardS.MaterialID ');
    sql.add('left join (select ZLBH, CLBH, sum(isnull(ZLZLS2.CLSL,0)) CLSL FROM ZLZLS2 ');
    sql.add('           where MJBH=''ZZZZZZZZZZ'' ');
    sql.add('           group by ZLBH, CLBH) zlzls2 on zlzls2.ZLBH=RY_Begin and zlzls2.CLBH=MaterialID ');
    sql.add('left join DDZL on DDZL.DDBH=RY_Begin ');
    sql.add('left join (select MRCardS.MaterialID CLBH,sum(MRCardS.IssuanceUsage) as okQty,MRCardS.RY_Begin SCBH from MRCardS ');
    sql.add('           left join MRCard on MRCard.ListNo=MRCardS.ListNo ');
    sql.add('           WHERE ISNULL(MRCard.ConfirmID,''NO'')<>''NO'' ');
    sql.add('           group by MRCardS.MaterialID,MRCardS.RY_Begin) KCLLS on KCLLS.SCBH=RY_Begin and KCLLS.CLBH=MaterialID ');
    sql.add('where MRCard.GSBH='''+main.Edit2.Text+''' ');
    SQL.Add('      and DemandDate='''+formatdatetime('yyyy/MM/dd',DTP3.date )+''' ');
    SQL.Add('      and DemandTime='''+CBX3.Text+''' ');
    if Edit1.Text <> '' then
      sql.add('    and MRCard.ListNo like '''+edit1.Text+'%'' ');
    if Edit2.Text <> '' then
      sql.add('    and MRCardS.RY_Begin like '''+edit2.Text+'%'' ');
    if Edit3.Text <> '' then
      sql.add('    and ARTICLE like ''%'+edit3.Text+'%'' ');
    if rd1.Checked then
      SQL.Add('    and isnull(MRCard.DeliveryCFMID,''NO'')=''NO'' ');
    if rd2.Checked then
      SQL.Add('    and isnull(MRCard.DeliveryCFMID,''NO'')<>''NO'' ');
    if CBX1.Text <> '' then
      SQL.Add('      and Building='''+CBX1.Text+''' ');
    if CBX2.Text <> '' then
      SQL.Add('      and Lean='''+CBX2.Text+''' ');
    if CBX4.Text <> '' then
      SQL.Add('      and MRCard.Section='''+CBX4.Text+''' ');
    sql.add('order by Dep, MRCard.ListNo, MaterialID, ARTICLE');
    //funcObj.WriteErrorLog(sql.Text);
    active:=true;
  end;
  if  Track.active  then
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
      eclApp.Cells(1,1):='Ma phieu';//單位';
      eclApp.Cells(1,2):='Don vi';//單位';
      eclApp.Cells(1,3):='Cong doan';//工段';
      eclApp.Cells(1,4):='Ngay';//時段';
      eclApp.Cells(1,5):='Thoi gian';//時段';
      eclApp.Cells(1,6):='RY';
      eclApp.Cells(1,7):='SKU';
      eclApp.Cells(1,8):='Ma vat tu';//料號';
      eclApp.Cells(1,9):='Ten vat tu';
      eclApp.Cells(1,10):='Dinh muc';
      eclApp.Cells(1,11):='So luong da phat';
      eclApp.Cells(1,12):='So luong yeu cau';//要求量//';
      eclApp.Cells(1,13):='Ghi chu yeu cau';//現場的備註';
      eclApp.Cells(1,14):='So luong phat';//實發量';
      eclApp.Cells(1,15):='Ghi chu phat';//備註';
      Track.First;
      CLBH:=Track.fieldbyname('MaterialID').AsString;
      ARTICLE:=Track.fieldbyname('ARTICLE').AsString;
      k:=2;
      j:=2;
      while   not   Track.Eof   do
      begin
        if (CLBH<>Track.fieldbyname('MaterialID').AsString) OR (ARTICLE<>Track.fieldbyname('ARTICLE').AsString) then
        begin
          CLBH:=Track.fieldbyname('MaterialID').AsString;
          ARTICLE:=Track.fieldbyname('ARTICLE').AsString;
          eclApp.Cells(j,1):='TC: ';
          eclApp.Cells(j,10):='=SUM(J'+inttostr(k)+':J'+inttostr(j-1)+')';
          eclApp.Cells(j,11):='=SUM(K'+inttostr(k)+':K'+inttostr(j-1)+')';
          eclApp.Cells(j,12):='=SUM(L'+inttostr(k)+':L'+inttostr(j-1)+')';
          eclApp.Cells(j,14):='=SUM(N'+inttostr(k)+':N'+inttostr(j-1)+')';
          eclApp.Range[eclApp.Cells[j, 1], eclApp.Cells[j, 15]].Interior.Color:=$FACE87;
          inc(j);
          k:=j;
        end;
        for   i:=0   to  Track.fieldcount-1  do
        begin
          eclApp.Cells(j,i+1):=Track.Fields[i].Value;
        end;
        Track.Next;
        inc(j);
      end;
      eclApp.Cells(j,1):='TC: ';
      eclApp.Cells(j,10):='=SUM(J'+inttostr(k)+':J'+inttostr(j-1)+')';
      eclApp.Cells(j,11):='=SUM(K'+inttostr(k)+':K'+inttostr(j-1)+')';
      eclApp.Cells(j,12):='=SUM(L'+inttostr(k)+':L'+inttostr(j-1)+')';
      eclApp.Cells(j,14):='=SUM(N'+inttostr(k)+':N'+inttostr(j-1)+')';
      eclApp.Range[eclApp.Cells[j, 1], eclApp.Cells[j, 15]].Interior.Color:=$FACE87;
      eclapp.columns.autofit;
      showmessage('Succeed');
      eclApp.Visible:=True;
    except
    on   F:Exception   do
      showmessage(F.Message);
    end;
  end;
end;

procedure TMaterialReleasedCofirm.DBGrid2EditButtonClick(Sender: TObject);
begin
  MaterialReleased_LotNO:=TMaterialReleased_LotNO.create(self);
  MaterialReleased_LotNO.show;
end;

procedure TMaterialReleasedCofirm.DBGrid2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if DelDet.FieldByName('LLNO').AsString<>'' then
  begin
    DBGrid2.canvas.font.color:=clGreen;
    DBGrid2.defaultdrawcolumncell(rect,datacol,column,state);
  end;
end;

procedure TMaterialReleasedCofirm.DelDetNewRecord(DataSet: TDataSet);
begin
  abort;
end;

procedure TMaterialReleasedCofirm.CBX1Change(Sender: TObject);
var
  i: integer;
begin
  with Qtemp do
  begin
    active:=false;
    sql.Clear;
    sql.add('select distinct SUBSTRING(UPPER(Lean), 1, 6) AS Lean from MRCard');
    sql.add('where Building LIKE ''' + CBX1.Text + '%''');
    sql.add('order by SUBSTRING(UPPER(Lean), 1, 6)');
    active:=true;
    CBX2.Clear;
    CBX2.Items.Add('');
    for i:=1 to recordcount do
    begin
      CBX2.Items.Add(fieldbyname('Lean').asstring);
      next;
    end;
    active:=false;
  end;
end;

procedure TMaterialReleasedCofirm.Button7Click(Sender: TObject);
begin
  NoApplication := TNoApplication.Create(Self);
  NoApplication.ShowModal;
end;

procedure TMaterialReleasedCofirm.CB_DepartmentChange(Sender: TObject);
begin
  DelMas.Active := false;
  DelDet.Active := false;
end;

procedure TMaterialReleasedCofirm.DelDetAfterOpen(DataSet: TDataSet);
begin
  if (DelDet.RecordCount > 0) AND (DelMas.FieldByName('ConfirmDate').IsNull) then
  begin
    if (CB_Department.ItemIndex = 0) then
    begin
      ToSQ1.Visible := true;
      ToWH1.Visible := false;
    end
    else begin
      ToSQ1.Visible := false;
      ToWH1.Visible := true;
    end;
  end
  else begin
    ToSQ1.Visible := false;
    ToWH1.Visible := false;
  end;
end;

procedure TMaterialReleasedCofirm.ToSQ1Click(Sender: TObject);
begin
  if (MessageDlg('Are you sure to transfer to SQ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
  begin
    with Qtemp do
    begin
      Active := false;
      SQL.Clear;
      SQL.Add('UPDATE MRCardS SET Source = ''SQ''');
      SQL.Add('WHERE ListNo = ''' + DelDet.FieldByName('ListNo').AsString + '''');
      SQL.Add('AND RY_Begin = ''' + DelDet.FieldByName('RY_Begin').AsString + '''');
      SQL.Add('AND MaterialID = ''' + DelDet.FieldByName('MaterialID').AsString + '''');
      ExecSQL;
      SQL.Clear;
    end;

    DelDet.Active := false;
    DelDet.Active := true;
  end;
end;

procedure TMaterialReleasedCofirm.ToWH1Click(Sender: TObject);
begin
  if (MessageDlg('Are you sure to transfer to Warehouse?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
  begin
    with Qtemp do
    begin
      Active := false;
      SQL.Clear;
      SQL.Add('UPDATE MRCardS SET Source = ''WH''');
      SQL.Add('WHERE ListNo = ''' + DelDet.FieldByName('ListNo').AsString + '''');
      SQL.Add('AND RY_Begin = ''' + DelDet.FieldByName('RY_Begin').AsString + '''');
      SQL.Add('AND MaterialID = ''' + DelDet.FieldByName('MaterialID').AsString + '''');
      ExecSQL;
      SQL.Clear;
    end;
  
    DelDet.Active := false;
    DelDet.Active := true;
  end;
end;

end.
