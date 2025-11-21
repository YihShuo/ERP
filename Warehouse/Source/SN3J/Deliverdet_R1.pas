unit Deliverdet_R1;

interface

uses
 Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, DB, DBTables, StdCtrls, ComCtrls, ExtCtrls, Grids,
  DBGrids,dateutils, GridsEh, DBGridEh,comobj, PrnDbgeh,IniFiles;

type
  TDeliverdet_R = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label6: TLabel;
    Label5: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Button2: TButton;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    KCLLQuery: TQuery;
    DS2: TDataSource;
    Label2: TLabel;
    Edit2: TEdit;
    Label3: TLabel;
    CB1: TComboBox;
    Query1: TQuery;
    CB2: TCheckBox;
    Label4: TLabel;
    DateTimePicker1: TDateTimePicker;
    Label7: TLabel;
    DateTimePicker2: TDateTimePicker;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    Label8: TLabel;
    Edit3: TEdit;
    Label9: TLabel;
    HGLB: TComboBox;
    CB3: TCheckBox;
    chk1: TCheckBox;
    KCLLQueryCLBH: TStringField;
    KCLLQueryCKBH: TStringField;
    KCLLQueryGSBH: TStringField;
    KCLLQueryYWPM: TStringField;
    KCLLQueryZWPM: TStringField;
    KCLLQueryDWBH: TStringField;
    KCLLQueryLLQty: TCurrencyField;
    KCLLQueryQTY: TCurrencyField;
    KCLLQueryL1: TCurrencyField;
    KCLLQueryL2: TCurrencyField;
    KCLLQueryMemo: TStringField;
    UpMas: TUpdateSQL;
    PopupMenu1: TPopupMenu;
    Modify2: TMenuItem;
    Save1: TMenuItem;
    Cance1: TMenuItem;
    dbgrdh1: TDBGridEh;
    KCLLQueryUSERID: TStringField;
    KCLLQueryUSERDATE: TDateTimeField;
    KCLLQueryYN: TStringField;
    KCLLQueryGSBH_R: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Modify2Click(Sender: TObject);
    procedure Save1Click(Sender: TObject);
    procedure Cance1Click(Sender: TObject);
    procedure dbgrdh1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
  private
    procedure ReadIni();
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Deliverdet_R: TDeliverdet_R;
  NDate:TDate;

implementation

uses FunUnit, main1, Deliverdet1;

{$R *.dfm}

procedure TDeliverdet_R.ReadIni();
var MyIni :Tinifile;
    AppDir:string;
begin
  //
 { VNPrice_DiplayFormat:='#,##0';
  VNPrice_Decimal:=0;
  WH_Decimal:='2';
  WH_DiplayFormat:='#,##0.00';
  AppDir:=ExtractFilePath(Application.ExeName);
  if FileExists(AppDir+'\ComName.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ComName.ini');
      VNPrice_DiplayFormat:=MyIni.ReadString('VNPrice','DiplayFormat','#,##0');
      VNPrice_Decimal:=strtoint(MyIni.ReadString('VNPrice','Decimal','0'));
      WH_Decimal:=MyIni.ReadString('Warehouse','Decimal','2');
      WH_DiplayFormat:=MyIni.ReadString('Warehouse','DiplayFormat','#,##0.00');
    finally
      MyIni.Free;
    end;
  end;}
end;

procedure TDeliverdet_R.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TDeliverdet_R.FormCreate(Sender: TObject);
begin   
  with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select getdate() as NDate ');
    active:=true;
    NDate:=fieldbyname('NDate').Value;
    active:=false;
    sql.Clear;
    sql.add('select GSBH from KCCK ');
    //sql.add('where GSBH='+''''+main.edit2.text+'''');
    sql.add('group by GSBH ');
    active:=true;
    CB1.items.clear;
    CB1.items.add('ALL');
    while not eof do
    begin
      CB1.items.add(fieldbyname('GSBH').AsString);
      dbgrdh1.Columns[4].picklist.add(fieldbyname('GSBH').asstring);
      next;
    end;

    CB1.itemindex:=0;
    active:=false;
  end;
  DTP1.Date:=startofthemonth(Ndate) ;
  DateTimePicker1.Date:=startofthemonth(Ndate) ;
  DTP2.Date:=Ndate;
  DateTimePicker2.Date:=Ndate;
  ReadIni();
end;

procedure TDeliverdet_R.Button1Click(Sender: TObject);
var KCLLS,KCLL:string;
begin
  if chk1.Checked then
  begin
    KCLLS:= '(Select * From KCLLS union all Select * from KCLLS_2014)';
    KCLL:= '(Select * From KCLL union all Select * from KCLL_2014)';
  end else
  begin
    KCLLS:='KCLLS';
    KCLL:='KCLL';
  end;
  with KCLLQuery do
  begin
    active:=false;
    sql.Clear;
    sql.add('SELECT KCLLS.CLBH,KCLL.GSBH,KCCLMONTH_KCLL_R.CKBH,KCCLMONTH_KCLL_R.GSBH as GSBH_R,CLZL.YWPM,CLZL.ZWPM,CLZL.DWBH,SUM(KCLLS.Qty) AS LLQty,KCCLMONTH_KCLL_R.QTY,');
    sql.add('CASE  WHEN KCCLMONTH_KCLL_R.QTY > SUM(KCLLS.Qty) THEN KCCLMONTH_KCLL_R.QTY - SUM(KCLLS.Qty)  ELSE 0 END AS L1,');
    sql.add('CASE  WHEN SUM(KCLLS.Qty) >= KCCLMONTH_KCLL_R.QTY THEN KCCLMONTH_KCLL_R.QTY - SUM(KCLLS.Qty) ELSE 0 END AS L2,KCCLMONTH_KCLL_R.Memo');
    sql.add(',KCCLMONTH_KCLL_R.USERID,KCCLMONTH_KCLL_R.USERDATE,KCCLMONTH_KCLL_R.YN');
    sql.add('from '+KCLLS+' KCLLS');
    sql.add('left join '+KCLL+' KCLL on KCLL.LLNO=KCLLS.LLNO ');
    sql.add('left join BDepartment on BDepartment.ID=KCLL.DepID ') ;
    sql.add('left join CLZL on CLZL.CLDH=KCLLS.CLBH ');
    sql.add('left join KCCK on KCCK.CKBH=KCLL.CKBH ');
    sql.add('LEFT JOIN KCCLMONTH_KCLL_R ON KCCLMONTH_KCLL_R.CLBH = KCLLS.CLBH and KCCLMONTH_KCLL_R.GSBH=KCLL.GSBH ');
    sql.add('where  KCLLS.CLBH like'''+edit1.Text+'%''');
    sql.add('       and KCLLS.Qty<>0');
    sql.add('       and BDepartment.DepName like ''%'+edit2.Text+'%''');
    sql.Add('and ISNULL(flowflag,'''')<>''X'' ');

    if CB1.Text<>'ALL' then
    begin
       sql.add('       and KCLL.GSBH='''+CB1.Text+'''');
       //sql.add('       and KCCK.GSBH='''+main.edit2.text+'''');
    end;
    sql.add('       and KCLLS.SCBH like '''+edit3.Text+'%'' ');
    if CheckBox1.Checked = true then
    begin
      sql.add('       and convert(smalldatetime,convert(varchar,KCLL.CFMDate,111)) between ');
      sql.add('       '''+formatdatetime('yyyy/MM/dd',DTP1.date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.date)+''''  );
    end;
    if CheckBox2.Checked = true then
    begin
      sql.add('       and convert(smalldatetime,convert(varchar,KCLL.USERDATE,111)) between ');
      sql.add('       '''+formatdatetime('yyyy/MM/dd',DateTimePicker1.date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DateTimePicker2.date)+'''');
    end;
    if CB2.Checked then
    begin
      sql.add('       and KCLL.SCBH='+''''+'ZZZZZZZZZZ'+'''');
    end;
    if CB3.Checked then
    begin
      sql.add('       and KCLL.CFMID=''NO''');
    end;
    if HGLB.ItemIndex>0 then
    begin
      sql.Add('and KCLLS.HGLB ='+''''+HGLB.text+'''');
    end;
    sql.add('GROUP BY  KCLLS.CLBH,KCCLMONTH_KCLL_R.CKBH,KCCLMONTH_KCLL_R.GSBH,CLZL.YWPM,CLZL.ZWPM,CLZL.DWBH,KCCLMONTH_KCLL_R.QTY,KCCLMONTH_KCLL_R.Memo');
    sql.add(',KCCLMONTH_KCLL_R.USERID,KCCLMONTH_KCLL_R.USERDATE,KCCLMONTH_KCLL_R.YN,KCLL.GSBH');
    sql.add('order by KCLLS.CLBH');
    //memo1.Text:=sql.Text;
    active:=true;
  end;
  //Tfloatfield(DBGrid2 .Fields[10]).displayformat:='0.00' ;
end;

procedure TDeliverdet_R.Button2Click(Sender: TObject);
var
  eclApp,WorkBook:olevariant;
  i,j:integer;
begin
  if KCLLQuery.Active then
  begin
    if KCLLQuery.recordcount=0 then
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
    for i:=0 to dbgrdh1.Columns.Count-1 do
    begin
      eclApp.Cells(1,i+2):=dbgrdh1.Columns[i].Title.Caption;
    end;
    KCLLQuery.First;
    j:=2;
    while   not  KCLLQuery.Eof   do
    begin
      eclApp.Cells(j,1):=j-1;
      for i:=0 to dbgrdh1.Columns.Count-1 do
      begin
        eclApp.Cells(j,i+2):=dbgrdh1.Fields[i].Value;
        eclApp.Cells.Cells.item[j,i+2].font.size:='8';
      end;
      KCLLQuery.Next;
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

procedure TDeliverdet_R.FormDestroy(Sender: TObject);
begin
  Deliverdet:=nil;
end;

procedure TDeliverdet_R.Modify2Click(Sender: TObject);
begin
  with KCLLQuery do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
end;

procedure TDeliverdet_R.Save1Click(Sender: TObject);
var
  i: integer;
  a: string;
begin
  try
    KCLLQuery.First;
    for i := 1 to KCLLQuery.RecordCount do
    begin
      case KCLLQuery.UpdateStatus of
        usModified:
        begin
          with Query1 do
          begin
            Active := false;
            SQL.Clear;
            SQL.Add('SELECT CLBH,GSBH from KCCLMONTH_KCLL_R where CLBH  = '''+KCLLQuery.FieldByName('CLBH').AsString+''' and GSBH  = '''+KCLLQuery.FieldByName('GSBH').AsString+'''');
            Active := true;
          end;
          if Query1.RecordCount>0 then
          begin
            KCLLQuery.Edit;
            KCLLQuery.FieldByName('QTY').Value:=KCLLQuery.FieldByName('QTY').Value;
            KCLLQuery.FieldByName('USERID').Value := main.Edit1.text;
            KCLLQuery.FieldByName('USERDATE').Value := NDate;
            UpMas.Apply(ukModify);
          end else
          begin
            KCLLQuery.Edit;
            KCLLQuery.FieldByName('QTY').Value:=KCLLQuery.FieldByName('QTY').Value;
            KCLLQuery.FieldByName('GSBH_R').Value:=KCLLQuery.FieldByName('GSBH_R').Value;
            KCLLQuery.FieldByName('USERID').Value := main.Edit1.Text;
            KCLLQuery.FieldByName('USERDATE').Value := NDate;
            KCLLQuery.FieldByName('YN').Value := 1;
            UpMas.Apply(ukInsert);
          end;
        end;
      end;

      KCLLQuery.Next;
    end;
    KCLLQuery.Active := false;
    KCLLQuery.CachedUpdates := false;
    KCLLQuery.RequestLive := false;
    KCLLQuery.Active := true;
    showmessage('Succeed.');
  except
    MessageDlg('Have wrong, can not save data!', mtWarning, [mbyes], 0);
  end;
end;

procedure TDeliverdet_R.Cance1Click(Sender: TObject);
begin
  with KCLLQuery do
  begin
    active:=false;
    requestlive:=false;
    cachedupdates:=false;
    active:=true;
  end;
  dbgrdh1.columns[3].ButtonStyle:=cbsNone;
end;

procedure TDeliverdet_R.dbgrdh1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if KCLLQuery.FieldByName('L2').value<'0' then
  begin
    dbgrdh1.canvas.font.color:=clred;
    //dbgrid3.defaultdrawcolumncell(rect,datacol,column,state);
  end;
end;

end.
