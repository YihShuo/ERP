unit EntryConfirm1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, ComCtrls, ExtCtrls, DBTables, Grids, DBGrids,
  GridsEh, DBGridEh, Menus,IniFiles,comobj,math;

type
  TEntryConfirm = class(TForm)
    DBGrid1: TDBGridEh;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    Edit1: TEdit;
    DBGrid2: TDBGridEh;
    EnMas: TQuery;
    EnMasRKNO: TStringField;
    EnMasZSBH: TStringField;
    EnMasZSYWJC: TStringField;
    EnMasZSNO: TStringField;
    EnMasUSERID: TStringField;
    EnMasUSERDATE: TDateTimeField;
    EnMasCFMID: TStringField;
    EnMasCFMDATE: TDateTimeField;
    EnMasYN: TStringField;
    EnDet: TQuery;
    EnDetRKNO: TStringField;
    EnDetCLBH: TStringField;
    EnDetYWPM: TStringField;
    EnDetDWBH: TStringField;
    EnDetCGBH: TStringField;
    EnDetRKSB: TStringField;
    EnDetPaQty: TCurrencyField;
    EnDetQty: TCurrencyField;
    EnDetUSPrice: TCurrencyField;
    EnDetUSACC: TCurrencyField;
    EnDetCostID: TStringField;
    EnDetUSERID: TStringField;
    EnDetUSERDATE: TDateTimeField;
    EnDetYN: TStringField;
    DS4: TDataSource;
    DS3: TDataSource;
    EnMasGSBH: TStringField;
    EnMasCKBH: TStringField;
    PopupMenu1: TPopupMenu;
    Excel1: TMenuItem;
    CheckBox1: TCheckBox;
    Button2: TButton;
    EnDetVNPrice: TCurrencyField;
    EnDetVNACC: TCurrencyField;
    EnDetCWHL: TCurrencyField;
    PopupMenu2: TPopupMenu;
    Modify1: TMenuItem;
    Save1: TMenuItem;
    Cancel1: TMenuItem;
    UPDet: TUpdateSQL;
    BDelRec: TQuery;
    Button3: TButton;
    Label3: TLabel;
    Edit2: TEdit;
    Modify2: TMenuItem;
    Save2: TMenuItem;
    Cancel2: TMenuItem;
    UpMas: TUpdateSQL;
    EnMastybh: TStringField;
    EnMasDOCNO: TStringField;
    Label4: TLabel;
    Edit3: TEdit;
    EnMasDOCDATE: TDateTimeField;
    EnMasInputDate: TDateTimeField;
    EnDetSOTT: TIntegerField;
    Query1: TQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure EnMasNewRecord(DataSet: TDataSet);
    procedure EnDetNewRecord(DataSet: TDataSet);
    procedure FormDestroy(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Modify1Click(Sender: TObject);
    procedure Save1Click(Sender: TObject);
    procedure Cancel1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Modify2Click(Sender: TObject);
    procedure Cancel2Click(Sender: TObject);
    procedure Save2Click(Sender: TObject);
  private
    IsAllowUserID:Boolean;
    procedure ReadIni();
    { Private declarations }
  public
    { Public declarations }
    VNPrice_DiplayFormat:string;
    VNPrice_Decimal:Byte;
    pheduyet,cqbophan,cqkho,nvkho: string;
  end;

var
  EntryConfirm: TEntryConfirm;

implementation

uses main1, Entry_PrintTW1, Entry_Print_Price1,Fununit;

{$R *.dfm}

procedure TEntryConfirm.ReadIni();
var MyIni :Tinifile;
    AppDir,UserIDList:string;
    tmpUserIDList:TStringlist;
    index:integer;
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
      UserIDList:=MyIni.ReadString('ERP','Warehouse_N22_CheckUserID','');
    finally
      MyIni.Free;
    end;
  end;
  if FileExists(AppDir+'\signNameKCRK.txt')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\signNameKCRK.txt');
      pheduyet := MyIni.ReadString('ERP', 'Warehouse_N22_PheDuyet', '');
      cqbophan := MyIni.ReadString('ERP', 'Warehouse_N22_CQBoPhan', '');
      cqkho := MyIni.ReadString('ERP', 'Warehouse_N22_CQKho', '');
      nvkho := MyIni.ReadString('ERP', 'Warehouse_N22_NVKho', '');
    finally
      MyIni.Free;
    end;
  end;
  TCurrencyField(EnDet.FieldByName('VNPrice')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(EnDet.FieldByName('CWHL')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(EnDet.FieldByName('VNACC')).DisplayFormat:=VNPrice_DiplayFormat;
  if  UserIDList <> '' then
  begin
    tmpUserIDList:=FuncObj.SplitString(UserIDList,',');
    index:=tmpUserIDList.IndexOf(main.Edit1.Text);
    if index>=0 then IsAllowUserID:=true;
    tmpUserIDList.Free;
  end else
  begin
    IsAllowUserID:=false;
  end;
end;

procedure TEntryConfirm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TEntryConfirm.Button1Click(Sender: TObject);
begin
  with EnMas do
  begin
    Active:=false;
    sql.Clear;
    sql.add('select KCRK.*,ZSZL.ZSYWJC,ZSZL.tybh ');
    sql.add('from KCRK');
    sql.add('left join ZSZL on ZSZL.ZSDH=KCRK.ZSBH ');  
    sql.add('left join KCCK on KCCK.CKBH=KCRK.CKBH ');
    sql.add('where ISNULL(flowflag,'''')<>''X'' and convert(smalldatetime,convert(varchar,KCRK.USERDATE,111)) between '+''''+formatdatetime('yyyy/MM/dd',DTP1.date )+'''');
    sql.add('      and '+''''+formatdatetime('yyyy/MM/dd',DTP2.date )+'''');
    sql.add('      and KCRK.RKNO like '''+edit1.Text+'%''');
    if  edit2.Text<> '' then
    begin
      sql.add('      and ZSZL.ZSYWJC like ''%'+edit2.Text+'%''');
    end;
    if checkbox1.Checked then
    begin
      sql.add('      and KCRK.CFMID='''+'NO'+'''');
    end;
    if edit3.Text <> '' then
    begin
      sql.add('      and KCRK.DOCNO like '''+edit3.Text+'%''');
    end;
    sql.add('      and KCCK.GSBH='''+main.edit2.text+'''');
    sql.add('order by KCRK.RKNO  ');
    //funcobj.WriteErrorLog(sql.Text);
    active:=true;
  end;
  EnDet.Active:=true;
end;

procedure TEntryConfirm.FormCreate(Sender: TObject);
begin
  DTP1.Date:=date-3;
  DTP2.Date:=date;
  IsAllowUserID:=false;
  ReadIni();
end;

procedure TEntryConfirm.EnMasNewRecord(DataSet: TDataSet);
begin
  abort;
end;

procedure TEntryConfirm.EnDetNewRecord(DataSet: TDataSet);
begin
  abort;
end;

procedure TEntryConfirm.FormDestroy(Sender: TObject);
begin
  EntryConfirm:=nil;
end;

procedure TEntryConfirm.Button2Click(Sender: TObject);
var CQCN, CQBP, CQK, NVK: string;
begin
  if EnDet.RequestLive then
  begin
    showmessage('Pls save data first.');
    Abort;
  end;
  if  Enmas.FieldByName('CFMID').Value='NO' then
  begin
    Showmessage('Not yet confirm. Can not print ');
    abort;
  end else
  begin Entry_Print_Price:=TEntry_Print_Price.Create(nil);
  CQCN:=pheduyet;
  CQBP:=cqbophan;
  CQK:=cqkho;
  NVK:=nvkho;
  if main.Edit2.Text = 'VA12' then
    begin
      with Query1 do
      begin
        Active:=False;
        SQL.Clear;
        SQL.Add('select distinct position, deputyName from RK_Leave R');
        SQL.Add('where 1=1');
        SQL.Add('and convert(datetime,''' + FormatDateTime('yyyy/MM/dd', EnMas.FieldByName('UserDate').AsDateTime) +''', 111) between R.StartDate and R.EndDate');
        //ShowMessage(SQL.Text);
        Active:=True;
      end;
      if Query1.recordcount>0 then
      begin
        Query1.First;
        while not Query1.Eof do
        begin
           if (Query1.FieldByName('Position').Value='CQCN')and (Query1.FieldByName('DeputyName').Value <>'') then
            begin
              CQCN:= Query1.FieldByName('DeputyName').Value ;
            end;
           if (Query1.FieldByName('Position').Value='CQBP')and (Query1.FieldByName('DeputyName').Value <>'') then
           begin
              CQBP:= Query1.FieldByName('DeputyName').Value ;
           end;
           if (Query1.FieldByName('Position').Value='CQK')and (Query1.FieldByName('DeputyName').Value <>'') then
           begin
              CQK:= Query1.FieldByName('DeputyName').Value ;
           end;
           if (Query1.FieldByName('Position').Value='NVK')and (Query1.FieldByName('DeputyName').Value <>'') then
           begin
               NVK:= Query1.FieldByName('DeputyName').Value ;
           end;
           Query1.Next;
        end;
      end;
       { Entry_Print_Price.QRLabel4.Caption := CQCN;
        Entry_Print_Price.QRLabel5.Caption := CQBP;
        Entry_Print_Price.QRLabel6.Caption := CQK;
        Entry_Print_Price.QRLabel7.Caption := NVK;  }
    end;
     Entry_Print_Price.quickrep1.prepare;
     Entry_Print_Price.Qpage1.caption:=inttostr(Entry_Print_Price.quickrep1.QRPrinter.pagecount);
     Entry_Print_Price.quickrep1.preview;
     Entry_Print_Price.Free;
  end;
end;

procedure TEntryConfirm.Modify1Click(Sender: TObject);
begin
   //
  if EnMas.FieldByName('CFMID').AsString='NO' then
  begin
    Showmessage('Pls confirm at Account N11 first');
    abort;
  end;
  if EnMas.FieldByName('YN').AsString='5' then
  begin
    Showmessage('Account already confirm. Can not modify');
    abort;
  end;

  if ((EnMas.FieldByName('CFMID').AsString=main.Edit1.Text) or (IsAllowUserID=true)) then
  begin
    with EnDet do
    begin
      requestlive:=true;
      cachedupdates:=true;
      edit;
    end;
    Save1.Enabled:=true;
    Cancel1.Enabled:=true;
  end else
  begin
    Showmessage(' It is not yours, can not modify.');
    abort;
  end;
  //
end;

procedure TEntryConfirm.Save1Click(Sender: TObject);
var i:integer;
  USACC_old,USACC,VNACC_old,VNACC: real;
begin
  EnDet.First;
  for i:=0 to EnDet.RecordCount-1 do
  begin
    case EnDet.updatestatus of
      usmodified:
      begin
        if not EnDet.FieldByName('USACC').IsNull then
        begin
           USACC_old:=EnDet.FieldByName('USACC').OldValue;
           //USACC:= EnDet.FieldByName('USACC').Value;
           USACC:= RoundTo(EnDet.FieldByName('USACC').Value,-2);
           with BDelRec do
           begin
              active:=false;
              sql.Clear;
              sql.add('insert into BDelRec ');
              sql.add('(TableName ,TNO,CLBH,OldID,DelID,DelDate)');
              sql.add('values ('''+'KCRKS'+''','''+EnDet.fieldbyname('RKNO').Value+'''');
              sql.add(','''+Endet.fieldbyname('CLBH').Value+'***'+floattostr(USACC_old)+'***'+floattostr(USACC)+''','''+EnMas.fieldbyname('CFMID').Value+''',');
              sql.add(''''+main.Edit1.Text+''',getdate())');

              sql.add(' update kcrks ');
              sql.Add(' set USACC = '+floattostr(USACC)+ ' ');
              sql.Add(' where RKNO = '''+EnDet.fieldbyname('RKNO').Value+''' ');
              sql.Add('   and CLBH = '''+EnDet.fieldbyname('CLBH').Value+''' ');
              sql.Add('   and CGBH = '''+EnDet.fieldbyname('CGBH').Value+''' ');
              sql.Add('   and RKSB = '''+EnDet.fieldbyname('RKSB').Value+''' ');
              execsql;
              active:=false;
          end;
        end;
        if not EnDet.FieldByName('VNACC').IsNull then
        begin
           VNACC_old:=EnDet.FieldByName('VNACC').OldValue;
           //VNACC:= EnDet.FieldByName('VNACC').Value;
           VNACC:= Round(EnDet.FieldByName('VNACC').Value);
           with BDelRec do
           begin
              active:=false;
              sql.Clear;
              sql.add('insert into BDelRec ');
              sql.add('(TableName ,TNO,CLBH,OldID,DelID,DelDate)');
              sql.add('values ('''+'KCRKS'+''','''+EnDet.fieldbyname('RKNO').Value+'''');
              sql.add(','''+Endet.fieldbyname('CLBH').Value+'***'+floattostr(VNACC_old)+'***'+floattostr(VNACC)+''','''+EnMas.fieldbyname('CFMID').Value+''',');
              sql.add(''''+main.Edit1.Text+''',getdate())');

              sql.add(' update kcrks ');
              sql.Add(' set VNACC = '+floattostr(VNACC)+' ');
              sql.Add(' where RKNO = '''+EnDet.fieldbyname('RKNO').Value+''' ');
              sql.Add('   and CLBH = '''+EnDet.fieldbyname('CLBH').Value+''' ');
              sql.Add('   and CGBH = '''+EnDet.fieldbyname('CGBH').Value+''' ');
              sql.Add('   and RKSB = '''+EnDet.fieldbyname('RKSB').Value+''' ');
              execsql;
              active:=false;
          end;
        end;
        //UPDet.apply(ukmodify);
      end;
    end;
    EnDet.Next;
  end;
  EnDet.active:=false;
  EnDet.cachedupdates:=false;
  EnDet.requestlive:=false;
  EnDet.active:=true;
  Save1.Enabled:=false;
  Cancel1.Enabled:=false;

end;

procedure TEntryConfirm.Cancel1Click(Sender: TObject);
begin
  with EnDet do
  begin
    active:=false;
    requestlive:=false;
    cachedupdates:=false;
    active:=true;
  end;
  Save1.Enabled:=false;
  Cancel1.Enabled:=false;
end;

procedure TEntryConfirm.Button3Click(Sender: TObject);
var
      eclApp,WorkBook:olevariant;
      i,j,s:integer;
begin
   if EnMas.Active then
   begin
    if EnMas.recordcount=0 then
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
    for i:=3 to EnMas.RecordCount do
      eclapp.workbooks[1].sheets.add;
      eclapp.workbooks[1].sheets[1].name:='Entry List';
      eclApp.workbooks[1].sheets[1].Cells(1,1):='NO';

      EnDet.active:=false;

      for   i:=1   to   EnMas.fieldcount   do
      begin
        eclApp.workbooks[1].sheets[1].Cells(1,i+1):=EnMas.fields[i-1].FieldName;
      end;
      EnMas.First;
      j:=2;
      while   not  EnMas.Eof   do
      begin
        eclApp.workbooks[1].sheets[1].Cells(j,1):=j-1;
        for   i:=1   to   EnMas.fieldcount   do
        begin
          eclApp.workbooks[1].sheets[1].Cells(j,i+1):=EnMas.Fields[i-1].Value;
          eclApp.workbooks[1].sheets[1].Cells.Cells.item[j,i+1].font.size:='8';
        end;
        EnMas.Next;
        inc(j);
      end;

    //²£¥Í©ú²Ó edit by billweng 2011/6/29
    EnMas.First;
    EnDet.active:=true;
    s:=2;
    while   not  EnMas.Eof   do
    begin
      eclapp.workbooks[1].sheets[s].name:=EnMas.fields[0].asstring;
      eclApp.workbooks[1].sheets[s].Cells(1,1):='NO';

      for   i:=1   to   EnDet.fieldcount   do
      begin
        eclApp.workbooks[1].sheets[s].Cells(1,i+1):=EnDet.fields[i-1].FieldName;
      end;
      EnDet.First;
      j:=2;
      while   not  EnDet.Eof   do
      begin
        eclApp.workbooks[1].sheets[s].Cells(j,1):=j-1;
        for   i:=1   to   EnDet.fieldcount   do
        begin
          eclApp.workbooks[1].sheets[s].Cells(j,i+1):=EnDet.Fields[i-1].Value;
          eclApp.workbooks[1].sheets[s].Cells.Cells.item[j,i+1].font.size:='8';
        end;
        EnDet.Next;
        inc(j);
      end;
      S:=S+1;
      EnMas.Next;
    end;

    eclapp.columns.autofit;
    showmessage('Succeed.');
    eclApp.Visible:=True;
  except
    on   F:Exception   do
      showmessage(F.Message);
  end;



end;

procedure TEntryConfirm.Modify2Click(Sender: TObject);
begin
  if EnMas.FieldByName('CFMID').AsString<>'NO' then
  begin
    Showmessage('Already confirm. Can not modify');
    abort;
  end;
  if ((EnMas.FieldByName('UserID').AsString=main.Edit1.Text) or (IsAllowUserID=true)) then
  begin
    with EnMas do
    begin
      requestlive:=true;
      cachedupdates:=true;
      edit;
    end;
    Save2.Enabled:=true;
    Cancel2.Enabled:=true;
  end else
  begin
    Showmessage(' It is not yours, can not modify.');
    abort;
  end;
end;

procedure TEntryConfirm.Cancel2Click(Sender: TObject);
begin
  with EnMas do
  begin
    active:=false;
    requestlive:=false;
    cachedupdates:=false;
    active:=true;
  end;
  Save2.Enabled:=false;
  Cancel2.Enabled:=false;
end;
function IsNull(const Value, Default: OleVariant): OleVariant;
begin
  if Value = NULL then
    Result := Default
  else
    Result := Value;
end;

procedure TEntryConfirm.Save2Click(Sender: TObject);
var i:integer;
    old_date,date: string;
begin
  EnMas.First;
  for i:=0 to EnMas.RecordCount-1 do
  begin
    case EnMas.updatestatus of
      usmodified:
      begin
        EnMas.Edit;
        old_date:=IsNull(EnMas.fieldbyname('USERDATE').OldValue,'');
        date:=IsNull(EnMas.fieldbyname('USERDATE').Value,'');
        with BDelRec do
        begin
            active:=false;
            sql.Clear;
            sql.add('insert into BDelRec ');
            sql.add('(TableName ,TNO,CLBH,OldID,DelID,DelDate)');
            sql.add('values ('''+'KCRK_UserDate'+''','''+EnMas.fieldbyname('RKNO').Value+'''');
            sql.add(','''+'USERDATE: '+old_date+'***'+date+''','''+EnMas.fieldbyname('UserID').Value+''',');
            sql.add(''''+main.Edit1.Text+''',getdate())');
            execsql;
            active:=false;
        end;
        UPMas.apply(ukmodify);
      end;
    end;
    EnMas.Next;
  end;
  EnMas.active:=false;
  EnMas.cachedupdates:=false;
  EnMas.requestlive:=false;
  EnMas.active:=true;
  Save2.Enabled:=false;
  Cancel2.Enabled:=false;

end;

end.
