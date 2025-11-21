unit MonthStock_Dep_DB1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, StdCtrls, DBCtrls, ExtCtrls, ComCtrls, GridsEh,
  DBGridEh, Mask, Buttons, iniFiles, DateUtils;

type
  TMonthStock_Dep_DB = class(TForm)
    Panel1: TPanel;
    Label18: TLabel;
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
    bbt7: TBitBtn;
    Panel6: TPanel;
    Label17: TLabel;
    BD2: TBitBtn;
    BD3: TBitBtn;
    BD4: TBitBtn;
    BD5: TBitBtn;
    BD6: TBitBtn;
    BD7: TBitBtn;
    BDT1: TBitBtn;
    BDT2: TBitBtn;
    BDT3: TBitBtn;
    BDT4: TBitBtn;
    BDT5: TBitBtn;
    BDT6: TBitBtn;
    PC1: TPageControl;
    TS3: TTabSheet;
    Panel4: TPanel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit7: TDBEdit;
    BBTT1: TBitBtn;
    DBGrid3: TDBGridEh;
    Panel2: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    Check: TCheckBox;
    TS4: TTabSheet;
    Panel3: TPanel;
    Label7: TLabel;
    Label8: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBMemo1: TDBMemo;
    DBEdit13: TDBEdit;
    BBTT2: TBitBtn;
    DBEdit14: TDBEdit;
    DelMas: TQuery;
    UpMas: TUpdateSQL;
    DS1: TDataSource;
    DelMasDBNO: TStringField;
    DelMasGSBH: TStringField;
    DelMasCKBH: TStringField;
    DelMasDepID: TStringField;
    DelMasMemo: TStringField;
    DelMasUSERDATE: TDateTimeField;
    DelMasUSERID: TStringField;
    DelMasCFMDate: TDateTimeField;
    DelMasCFMID: TStringField;
    DelMasYN: TStringField;
    DelMasPMARK: TIntegerField;
    DelDet: TQuery;
    UPDet: TUpdateSQL;
    DS2: TDataSource;
    DelMasDepName: TStringField;
    DBGrid4: TDBGridEh;
    DelDetDBNO: TStringField;
    DelDetCLBH: TStringField;
    DelDetQty: TCurrencyField;
    DelDetDepID: TStringField;
    DelDetUSERDATE: TDateTimeField;
    DelDetUSERID: TStringField;
    DelDetYN: TStringField;
    DelDetDepName: TStringField;
    Qtemp: TQuery;
    BDelRec: TQuery;
    DelDetDepName1: TStringField;
    DelDetDepID1: TStringField;
    DelDetYWPM: TStringField;
    DelDetZWPM: TStringField;
    DelDetDWBH: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BB1Click(Sender: TObject);
    procedure BB2Click(Sender: TObject);
    procedure BB3Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure DelMasAfterOpen(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure BBTT1Click(Sender: TObject);
    procedure DBGrid3DblClick(Sender: TObject);
    procedure PC1Change(Sender: TObject);
    procedure DelDetAfterOpen(DataSet: TDataSet);
    procedure BD2Click(Sender: TObject);
    procedure BD3Click(Sender: TObject);
    procedure BD4Click(Sender: TObject);
    procedure BD6Click(Sender: TObject);
    procedure BBTT2Click(Sender: TObject);
    procedure DBGrid4EditButtonClick(Sender: TObject);
    procedure DBGrid3EditButtonClick(Sender: TObject);
    procedure BD5Click(Sender: TObject);
    procedure DBGrid3GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure DBGrid4GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure bbt7Click(Sender: TObject);
  private
    NDate:TDate;
    { Private declarations }
    procedure readini();
  public
    WH_TXSQL:String;
    { Public declarations }
  end;

var
  MonthStock_Dep_DB: TMonthStock_Dep_DB;

implementation
  uses main1 , MonthStock_Dep_DB_Dep1, MonthStock_Dep_DB_CLZL1, FunUnit;
{$R *.dfm}

procedure TMonthStock_Dep_DB.readini();
var MyIni :Tinifile;
    AppDir:string;
begin
  AppDir:=ExtractFilePath(Application.ExeName);
  if FileExists(AppDir+'\ComName.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ComName.ini');
      //總務倉
      WH_TXSQL:=MyIni.ReadString('Warehouse','WarehouseN32_TXSQL',' (''VTXX'',''VTXY'',''VTXZ'') ');
    finally
      MyIni.Free;
    end;
  end;

end;

procedure TMonthStock_Dep_DB.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=CaFree;
end;

procedure TMonthStock_Dep_DB.FormDestroy(Sender: TObject);
begin
  MonthStock_Dep_DB:=nil;
end;

procedure TMonthStock_Dep_DB.Button1Click(Sender: TObject);
begin
  with DelMas do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Select KCLL_Dep_DB.*,BDepartment.DepName  ');
    SQL.Add('from KCLL_Dep_DB ');
    SQL.Add('Left join BDepartment on BDepartment.ID=KCLL_Dep_DB.DepID ');
    SQL.add('where KCLL_Dep_DB.DBNO like '''+Edit1.Text+'%'' ');
    SQL.add('and convert(smalldatetime,convert(varchar,KCLL_Dep_DB.USERDATE,111)) between ');
    SQL.add(''''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''' and '''+formatdatetime('yyyy/MM/dd',DTP2.Date) +'''');
    SQL.add('and KCLL_Dep_DB.GSBH='''+main.Edit2.Text+'''');
    if Check.Checked then
    begin
      SQL.Add('and KCLL_Dep_DB.USERID='''+main.Edit1.Text+''' ');
    end;
    SQL.add('order by DBNO DESC');
    //funcObj.WriteErrorLog(sql.Text);
    Active:=true;
  end;
  BB2.Enabled:=true;
  BB3.Enabled:=true;
  BB4.Enabled:=true;
  BBT1.Enabled:=true;
  BBT2.Enabled:=true;
  BBT3.Enabled:=true;
  BBT4.Enabled:=true;
  BBT6.Enabled:=true;
  check.Checked:=true;
  DelDet.Active:=true;
end;

procedure TMonthStock_Dep_DB.BB1Click(Sender: TObject);
begin
  Panel2.Visible:=true;
end;

procedure TMonthStock_Dep_DB.BB2Click(Sender: TObject);
begin
  with DelMas do
  begin
    requestlive:=true;
    cachedupdates:=true;
    insert;
  end;
  BBTT1.Visible:=true;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
  DBGrid3.columns[2].ButtonStyle:=cbsEllipsis;
end;

procedure TMonthStock_Dep_DB.BB3Click(Sender: TObject);
begin
  if (DelDet.recordcount=0)   then
  begin
    with DelMas do
    begin
      requestlive:=true;
      cachedupdates:=true;
      edit;
      fieldbyname('YN').Value:='0';
    end;
  end else
  begin
    showmessage('Pls delete the Deliver Detail first.')
  end;
  BBTT1.Visible:=true;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
  DBGrid3.columns[2].ButtonStyle:=cbsEllipsis;
end;

procedure TMonthStock_Dep_DB.BB4Click(Sender: TObject);
begin
  with DelMas do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
  BBTT1.Visible:=true;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
  DBGrid3.columns[2].ButtonStyle:=cbsEllipsis;
end;

procedure TMonthStock_Dep_DB.BB6Click(Sender: TObject);
begin
  with DelMas do
  begin
    active:=false;
    requestlive:=false;
    cachedupdates:=false;
    active:=true;
  end;
  bb5.enabled:=false;
  bb6.enabled:=false;
  BBTT1.Visible:=false;
  DBGrid3.columns[2].ButtonStyle:=cbsnone;
end;

procedure TMonthStock_Dep_DB.BB5Click(Sender: TObject);
var y,m,a:string;
    i:integer;
begin

  if (DelMas.FieldByName('CKBH').IsNull)  then
  begin
    Showmessage('CKBH khong duoc khong,倉庫ID不能為空白 ');
    abort;
  end;

  with Qtemp do          //取服務器的年月值
  begin
    active:=false;
    sql.Clear;
    sql.Add('select year(getdate()) as FY,month(getdate()) as FM,getdate() as NDate ');
    active:=true;
    y:=fieldbyname('FY').asstring;
    m:=fieldbyname('FM').asstring;
    NDate:=fieldbyname('NDate').value;
    active:=false;
  end;
  if length(m)<2 then
    m:='0'+m;

  try
    DelDet.Active:=false;
    DelMas.first;
    for i:=1 to DelMas.RecordCount do
    begin
      case DelMas.updatestatus of
        usinserted:
        begin
          if DelMas.fieldbyname('DepID').isnull then
          begin
            DelMas.delete;
          end else
          begin
            with Qtemp do    //計算領料單流水號
            begin
              active:=false;
              sql.Clear;
              sql.Add('select DBNO from KCLL_Dep_DB where DBNO like '''+y+m+'%'+'''');
              sql.add('order by DBNO');
              active:=true;
              if recordcount >0 then
              begin
                last;
                a:=fieldbyname('DBNO').AsString;
                a:=copy(a,7,5);
                a:=inttostr(strtoint(a)+1);
                while length(a)<5 do
                begin
                  a:='0'+a;
                end;
              end else
              begin
                a:='00001';
              end;
              a :=y+m+a;
              active:=false;
            end;
            DelMas.edit;
            DelMas.fieldbyname('DBNO').Value:=a;
            DelMas.fieldbyname('GSBH').Value:=main.Edit2.Text;
            DelMas.FieldByName('userID').Value:=main.edit1.text;
            DelMas.FieldByName('userdate').Value:=Ndate;;
            DelMas.FieldByName('CFMID').Value:='NO';
            DelMas.FieldByName('YN').Value:='1';
            upMas.apply(ukinsert);
          end;
        end;
        usmodified:
        begin
          if DelMas.FieldByName('USERID').value<>main.Edit1.Text then
          begin
            showmessage('It is not yours, can''t modify. khong phai ban khong duoc tu sua');
          end else
          begin
            if DelMas.fieldbyname('YN').value='0'then
            begin
              with BDelRec do
              begin
                active:=false;
                sql.Clear;
                sql.add('insert into BDelRec ');
                sql.add('(TableName ,TNO,CLBH,OldID,DelID,DelDate)');
                sql.add('values (''KCLL_Dep_DB'','''+DelMas.fieldbyname('DBNO').Value+'''');
                sql.add(','' '','''+DelMas.fieldbyname('USERID').Value+''',');
                sql.add(''''+main.Edit1.Text+''''+',getdate())');
                execsql;
                active:=false;
              end;
              upMas.apply(ukdelete);
            end else
            begin
              if (DelMas.FieldByName('CFMID').value='NO')   then
              begin
                if (NDate-DelMas.FieldByName('USERDATE').value)<=3  then
                begin
                  DelMas.edit;
                  DelMas.FieldByName('userID').Value:=main.edit1.text;
                  DelMas.FieldByName('userdate').Value:=Ndate;
                  upMas.apply(ukmodify);
              end else
              begin
                showmessage('Date > 3, can not modify.');
              end;
            end else
            begin
               showmessage('Already confirm. Can not modify.');
             end;
            end;
          end;
        end;
      end;
      DelMas.next;
    end;
    DelMas.active:=false;
    DelMas.cachedupdates:=false;
    DelMas.requestlive:=false;
    DelMas.active:=true;
    DelDet.Active:=true;
    bb5.enabled:=false;
    bb6.enabled:=false;
    BBTT1.Visible:=false;
    dbgrid3.columns[2].ButtonStyle:=cbsnone;
  except
    Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
  end;
end;

procedure TMonthStock_Dep_DB.DelMasAfterOpen(DataSet: TDataSet);
begin
  BB5.Enabled:=false;
  BB6.Enabled:=false;
  BD5.Enabled:=false;
  BD6.Enabled:=false;
  bbt7.Enabled:=true;
end;

procedure TMonthStock_Dep_DB.FormCreate(Sender: TObject);
var i:integer;
begin
  Readini();
  with Qtemp do
  begin
    active:=false;
    sql.Clear;
    sql.add('select CKBH from KCCK  where CKBH in '+WH_TXSQL+' order by CKBH');
    //funcObj.WriteErrorLog(sql.Text);
    active:=true;
    for i:=1 to recordcount do
    begin
      DBGrid3.Columns[3].picklist.Add(fieldbyname('CKBH').asstring);
      Next;
    end;
    active:=false;
    sql.Clear;
    sql.add('select getdate() as NDate ');
    active:=true;
    NDate:=fieldbyname('NDate').Value;
    active:=false;
  end;
  PC1.ActivePage:=TS3;
  DTP1.Date:=Ndate-3;
  DTP2.date:=Ndate;
end;

procedure TMonthStock_Dep_DB.BBTT1Click(Sender: TObject);
begin
  MonthStock_Dep_DB_Dep:=TMonthStock_Dep_DB_Dep.Create(self);
  MonthStock_Dep_DB_Dep.SB:='KCLL_Dep_DB.DepID';
  MonthStock_Dep_DB_Dep.Show;
end;

procedure TMonthStock_Dep_DB.DBGrid3DblClick(Sender: TObject);
begin
  if DelMas.Active then
  begin
    if  (DelMas.recordcount>0) then
    begin
      PC1.ActivePage:=TS4;
      panel1.Visible:=false;
      panel6.Visible:=true;
    end;
  end;
end;

procedure TMonthStock_Dep_DB.PC1Change(Sender: TObject);
begin
  if PC1.ActivePage=TS4 then
  begin
    panel6.visible:=true;
    panel1.visible:=false;
  end else
  begin
    panel6.visible:=false;
    panel1.visible:=true;
  end;
end;

procedure TMonthStock_Dep_DB.DelDetAfterOpen(DataSet: TDataSet);
begin
  BD2.Enabled:=true;
  BD3.Enabled:=true;
  BD4.Enabled:=true;
  BDT1.Enabled:=true;
  BDT2.Enabled:=true;
  BDT3.Enabled:=true;
  BDT4.Enabled:=true;
  BDT5.Enabled:=true;
  BDT6.Enabled:=true;
  if (NDate-DelMas.FieldByName('USERDATE').value)>97  then
  begin
    BD2.Enabled:=false;
    BD3.Enabled:=false;
    BD4.Enabled:=false;
  end;
  if DelMas.FieldByName('CFMID').value<>'NO'  then
  begin
    BD2.Enabled:=false;
    BD3.Enabled:=false;
    BD4.Enabled:=false;
  end;
  if DelMas.FieldByName('USERID').value<>main.edit1.text  then
  begin
    BD2.Enabled:=false;
    BD3.Enabled:=false;
    BD4.Enabled:=false;
  end;
  if DelMas.cachedupdates  then
  begin
    BD2.Enabled:=false;
    BD3.Enabled:=false;
    BD4.Enabled:=false;
  end;
  BD5.Enabled:=false;
  BD6.Enabled:=false;
end;

procedure TMonthStock_Dep_DB.BD2Click(Sender: TObject);
begin
  if DelMas.RequestLive then
  begin
    showmessage('Pls save Master data first.');
    PC1.ActivePage:=TS3;
    panel6.visible:=false;
    panel1.visible:=true;
    abort;
  end;

  with DelDet do
  begin
    requestlive:=true;
    cachedupdates:=true;
    insert;
  end;
  BBTT2.Visible:=true;
  BD5.Enabled:=true;
  BD6.Enabled:=true;
  DBGrid4.columns[0].ButtonStyle:=cbsEllipsis;
  DBGrid4.columns[6].ButtonStyle:=cbsEllipsis;  
end;

procedure TMonthStock_Dep_DB.BD3Click(Sender: TObject);
begin
  if DelMas.RequestLive then
  begin
    showmessage('Pls save Master data first.');
    PC1.ActivePage:=TS3;
    panel6.visible:=false;
    panel1.visible:=true;
    abort;
  end;

  with DelDet do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
    fieldbyname('YN').Value:='0';
  end;
  BBTT2.Visible:=true;
  BD5.Enabled:=true;
  BD6.Enabled:=true;
  DBGrid4.columns[0].ButtonStyle:=cbsEllipsis;
end;

procedure TMonthStock_Dep_DB.BD4Click(Sender: TObject);
begin
  if DelMas.RequestLive then
  begin
    showmessage('Pls save Master data first.');
    PC1.ActivePage:=TS3;
    panel6.visible:=false;
    panel1.visible:=true;
    abort;
  end;

  with DelDet do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
  BBTT2.Visible:=true;
  BD5.Enabled:=true;
  BD6.Enabled:=true;
  DBGrid4.columns[0].ButtonStyle:=cbsEllipsis;
  DBGrid4.columns[6].ButtonStyle:=cbsEllipsis;    
end;

procedure TMonthStock_Dep_DB.BD6Click(Sender: TObject);
begin
  with DelDet do
  begin
    active:=false;
    requestlive:=false;
    cachedupdates:=false;
    active:=true;
  end;
  BBTT2.Visible:=false;
  BD5.Enabled:=false;
  BD6.Enabled:=false;
  DBGrid4.columns[0].ButtonStyle:=cbsNone;
end;

procedure TMonthStock_Dep_DB.BBTT2Click(Sender: TObject);
begin
  MonthStock_Dep_DB_CLZL:=TMonthStock_Dep_DB_CLZL.Create(self);
  MonthStock_Dep_DB_CLZL.Show;
end;

procedure TMonthStock_Dep_DB.DBGrid4EditButtonClick(Sender: TObject);
begin
 if (DBGrid4.SelectedField.FieldName='CLBH') then
 begin
   BBTT2.Click;
 end;
 if (DBGrid4.SelectedField.FieldName='DepID1') then
 begin
   MonthStock_Dep_DB_Dep:=TMonthStock_Dep_DB_Dep.Create(self);
   MonthStock_Dep_DB_Dep.SB:='KCLL_Dep_DBS.DepID1';
   MonthStock_Dep_DB_Dep.Show;
 end;
end;

procedure TMonthStock_Dep_DB.DBGrid3EditButtonClick(Sender: TObject);
begin
  if (DBGrid3.SelectedField.FieldName='DepID') then
  begin
    BBTT1.Click;
  end;
end;

procedure TMonthStock_Dep_DB.BD5Click(Sender: TObject);
var i:integer;
begin
  with DelDet do
  begin
    first;
    while not DelDet.Eof do
    begin
      if DelDet.FieldByName('Qty').IsNull then
      begin
        showmessage('Qty can''t null, So luong khong duoc bang khong');
        abort;
      end;
      if DelDet.FieldByName('DepID').IsNull then
      begin
        showmessage('DepID can''t null, Tu Nhom khong duoc bang khong');
        abort;
      end;
      if DelDet.FieldByName('DepID1').IsNull then
      begin
        showmessage('DepID1 can''t null, Den Nhom khong duoc bang khong');
        abort;
      end;
      Next;
    end;
  end;

  try
    DelDet.first;
    for i:=1 to DelDet.RecordCount do
    begin
      case DelDet.updatestatus of
        usinserted:
        begin
          if DelMas.FieldByName('USERID').value<>main.Edit1.Text then
          begin
            showmessage('It is not yours, can not modify.');
          end else
          begin
            if DelDet.fieldbyname('CLBH').isnull then
            begin
              DelDet.delete;
            end else
            begin
              DelDet.Edit;
              DelDet.fieldbyname('DBNO').Value:=DelMas.fieldbyname('DBNO').Value;
              DelDet.fieldbyname('Qty').Value:=formatfloat('#,##0.##',Deldet.fieldbyname('Qty').Value); //20141023 四捨五入到小數第二位
              DelDet.FieldByName('userID').Value:=main.edit1.text;
              DelDet.FieldByName('userdate').Value:=Ndate;
              DelDet.FieldByName('YN').Value:='1';
              upDet.apply(ukinsert);
            end;
          end;
        end;
        usmodified:
        begin
          if DelDet.FieldByName('USERID').value<>main.Edit1.Text then
          begin
            showmessage('It is not yours, can not modify.');
          end else
          begin
            if DelDet.fieldbyname('YN').value='0'then
            begin
              with BDelRec do
              begin
                active:=false;
                sql.Clear;
                sql.add('insert into BDelRec ');
                sql.add('(TableName ,TNO,CLBH,OldID,DelID,DelDate)');
                sql.add('values (''KCLL_Dep_DBS'','''+DelDet.fieldbyname('DBNO').Value+''' ');
                sql.add(','''+DelDet.fieldbyname('CLBH').Value+''','''+DelDet.fieldbyname('USERID').Value+''',');
                sql.add(''''+main.Edit1.Text+''''+',Getdate())');
                execsql;
                active:=false;
              end;
              UpDet.apply(ukdelete);
            end else
            begin
              DelDet.edit;
              DelDet.fieldbyname('Qty').Value:=formatfloat('#,##0.##',Deldet.fieldbyname('Qty').Value); //20141023 四捨五入到小數第二位
              DelDet.FieldByName('userID').Value:=main.edit1.text;
              DelDet.FieldByName('userdate').Value:=Ndate;
              upDet.apply(ukmodify);
            end;
          end;
        end;
      end;
      DelDet.next;
    end;
    DelDet.active:=false;
    DelDet.cachedupdates:=false;
    DelDet.requestlive:=false;
    DelDet.active:=true;
    bb6.enabled:=false;
    BBTT2.Visible:=false;
    BD5.Enabled:=false;
    BD6.Enabled:=false;
    dbgrid4.columns[0].ButtonStyle:=cbsNone;
    dbgrid4.columns[6].ButtonStyle:=cbsNone;
  except
    Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
  end;

end;

procedure TMonthStock_Dep_DB.DBGrid3GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if DelMas.FieldByName('YN').value='0' then
  begin
    DBGrid3.canvas.font.color:=clred;
  end;
end;

procedure TMonthStock_Dep_DB.DBGrid4GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if DelDet.FieldByName('YN').value='0' then
  begin
    DBGrid4.canvas.font.color:=clred;
  end;
end;

procedure TMonthStock_Dep_DB.bbt7Click(Sender: TObject);
var year,month,day:word;
    ayear,amonth:String;
    i:integer;
    IsStockOK:boolean;
begin
  if DelMas.Active=false then Exit;
  if DelMas.FieldByName('CFMID').AsString<>'NO' then
  begin
    Showmessage('Already Confirm, cna''t comfirm again');
    abort();
  end;
  //
  decodedate(Date,Year,Month,Day);   //找庫存相關的數據
  incAMonth(Year,Month,Day,-1);
  ayear:=floattostr(year);
  amonth:=floattostr(month);
  if length(amonth)=1 then
    amonth:='0'+amonth;

   with Qtemp do
   begin
     Active:=false;
     SQL.Clear;
     SQL.Add('Select KCCLMONTH_Dep.CKBH,KCCLMONTH_Dep.CLBH,KCCLMONTH_Dep.DepID,Sum(KCCLMONTH_Dep.Qty) as Qty,IsNull(Bdepartment.DepName,''Stock'') as DepName,IsNull(Bdepartment.DepMemo,''庫存'') as DepMemo,CLZL.YWPM,CLZL.ZWPM,CLZL.DWBH');
     SQL.Add('from (');
     SQL.Add('Select CKBH, CLBH, Case when Qty<0 then ''ZZZZZZZZZZ'' else DepID end as DepID, Qty from (	');
     SQL.Add('Select CKBH, CLBH, DepID, Sum(Convert(float,Qty)) as Qty  from (');
     SQL.Add('Select CKBH,CLBH,DepID,Qty,''1'' as SB');
     SQL.Add('from KCCLMONTH_BDepartment');
     SQL.Add('where KCYEAR='''+ayear+''' and KCMONTH='''+amonth+'''');
     SQL.Add('      and KCCLMONTH_BDepartment.CKBH='''+MonthStock_Dep_DB.DelMas.FieldByName('CKBH').AsString+''' ');
     SQL.Add('      and KCCLMONTH_BDepartment.CLBH in (Select CLBH from KCLL_Dep_DBS where DBNO='''+DelMas.FieldByName('DBNO').AsString+''') ');
     SQL.Add('Union all');
     SQL.Add('Select KCRK.CKBH,KCRKS.CLBH,IsNull(SGDH.DepID,IsNull(CGZLSS.Memo,''ZZZZZZZZZZ'')) as DepID,Sum(IsNull(KCRKSS.Qty, KCRKS.Qty)) as Qty,''2'' as SB');
     SQL.Add('from KCRK');
     SQL.Add('left join KCRKS on KCRK.RKNO=KCRKS.RKNO');
     SQL.Add('left join KCRKSS on KCRKSS.RKNO=KCRKS.RKNO and KCRKSS.CLBH=KCRKS.CLBH and KCRKSS.CGBH=KCRKS.CGBH and KCRKSS.RKSB=KCRKS.RKSB');
     SQL.Add('left join SGDH on SGDH.SGNO=KCRKSS.CGBH');
     SQL.Add('left join CGZLSS on CGZLSS.CGNO=KCRK.ZSNO and CGZLSS.ZLBH=KCRKSS.CGBH  and CGZLSS.CLBH=KCRKSS.CLBH and CGZLSS.XXCC=KCRKSS.SIZE and CGZLSS.Stage=''TVu'' ');
     SQL.Add('where  Convert(smalldatetime,convert(varchar,KCRK.USERDATE,111)) between ');
     SQL.Add('			 '''+Formatdatetime('yyyy/MM/dd',startofthemonth(Date()))+''' and '''+Formatdatetime('yyyy/MM/dd',Date())+''' ');
     SQL.Add('        and KCRK.CKBH='''+MonthStock_Dep_DB.DelMas.FieldByName('CKBH').AsString+''' and KCRKS.CLBH is not null');
     SQL.Add('       	and KCRKS.CLBH in (Select CLBH from KCLL_Dep_DBS where DBNO='''+DelMas.FieldByName('DBNO').AsString+''') ');
     SQL.Add('Group by KCRK.CKBH,KCRKS.CLBH,IsNull(SGDH.DepID,IsNull(CGZLSS.Memo,''ZZZZZZZZZZ'')) ');
     SQL.Add('Union all');
     SQL.Add('Select KCLL.CKBH,KCLLS.CLBH,KCLL.DepID,Sum(-1* KCLLS.Qty) as Qty ,''3'' as SB');
     SQL.Add('from KCLL');
     SQL.Add('left join KCLLS on KCLL.LLNO=KCLLS.LLNO');
     SQL.Add('where  KCLL.CFMID<>''NO'' and Convert(smalldatetime,convert(varchar,KCLL.CFMDATE,111)) between ');
     SQL.Add('			 '''+Formatdatetime('yyyy/MM/dd',startofthemonth(Date()))+''' and '''+Formatdatetime('yyyy/MM/dd',Date())+''' ');
     SQL.Add('        and KCLL.CKBH='''+MonthStock_Dep_DB.DelMas.FieldByName('CKBH').AsString+''' and KCLLS.CLBH is not null');
     SQL.Add('       	and KCLLS.CLBH in (Select CLBH from KCLL_Dep_DBS where DBNO='''+DelMas.FieldByName('DBNO').AsString+''') ');
     SQL.Add('Group by  KCLL.CKBH,KCLLS.CLBH,KCLL.DepID   ');
     //調動
     SQL.Add('Union all ');
     SQL.Add('Select KCLL_Dep_DB.CKBH,KCLL_Dep_DBS.CLBH,KCLL_Dep_DBS.DepID,-1*Sum(KCLL_Dep_DBS.Qty) as Qty,''4'' as SB');
     SQL.Add('from KCLL_Dep_DB');
     SQL.Add('left join KCLL_Dep_DBS on KCLL_Dep_DB.DBNO=KCLL_Dep_DBS.DBNO');
     SQL.Add('where  KCLL_Dep_DB.CFMID<>''NO'' and Convert(smalldatetime,convert(varchar,KCLL_Dep_DB.CFMDATE,111)) between ');
     SQL.Add('			 '''+Formatdatetime('yyyy/MM/dd',startofthemonth(Date()))+''' and '''+Formatdatetime('yyyy/MM/dd',Date())+''' ');
     SQL.Add('       and KCLL_Dep_DB.CKBH='''+MonthStock_Dep_DB.DelMas.FieldByName('CKBH').AsString+''' and KCLL_Dep_DBS.CLBH is not null');
     SQL.Add('       and KCLL_Dep_DBS.CLBH in (Select CLBH from KCLL_Dep_DBS where DBNO='''+DelMas.FieldByName('DBNO').AsString+''') ');
     SQL.Add('Group by KCLL_Dep_DB.CKBH,KCLL_Dep_DBS.CLBH,KCLL_Dep_DBS.DepID  ');
     SQL.Add('Union all ');
     SQL.Add('Select KCLL_Dep_DB.CKBH,KCLL_Dep_DBS.CLBH,KCLL_Dep_DBS.DepID1  as DepID,Sum(KCLL_Dep_DBS.Qty) as Qty,''5'' as SB');
     SQL.Add('from KCLL_Dep_DB');
     SQL.Add('left join KCLL_Dep_DBS on KCLL_Dep_DB.DBNO=KCLL_Dep_DBS.DBNO');
     SQL.Add('where  KCLL_Dep_DB.CFMID<>''NO'' and Convert(smalldatetime,convert(varchar,KCLL_Dep_DB.CFMDATE,111)) between ');
     SQL.Add('			 '''+Formatdatetime('yyyy/MM/dd',startofthemonth(Date()))+''' and '''+Formatdatetime('yyyy/MM/dd',Date())+''' ');
     SQL.Add('        and KCLL_Dep_DB.CKBH='''+MonthStock_Dep_DB.DelMas.FieldByName('CKBH').AsString+''' and KCLL_Dep_DBS.CLBH is not null');
     SQL.Add('        and KCLL_Dep_DBS.CLBH in (Select CLBH from KCLL_Dep_DBS where DBNO='''+DelMas.FieldByName('DBNO').AsString+''') ');
     SQL.Add('Group by KCLL_Dep_DB.CKBH,KCLL_Dep_DBS.CLBH,KCLL_Dep_DBS.DepID1  )  KCCLMONTH_Dep');
     SQL.Add('Group by CKBH, CLBH, DepID ) KCCLMONTH_Dep  ) KCCLMONTH_Dep');
     SQL.Add('Left join BDepartment on BDepartment.ID=KCCLMONTH_Dep.DepID');
     SQL.Add('Left join CLZL on CLZL.CLDH=KCCLMONTH_Dep.CLBH');
     SQL.Add('where 1=1 ');
     SQL.Add('Group by KCCLMONTH_Dep.CKBH,KCCLMONTH_Dep.CLBH,KCCLMONTH_Dep.DepID,Bdepartment.DepName,Bdepartment.DepMemo,CLZL.YWPM,CLZL.ZWPM,CLZL.DWBH');
     //FuncObj.WriteErrorLog(sql.Text);
     Active:=true;
   end;
   IsStockOK:=true;
   DelDet.First;
   for i:=0 to DelDet.RecordCount-1 do
   begin
     if Qtemp.Locate('CLBH;DepID',vararrayof([DelDet.FieldByName('CLBH').AsString,DelDet.FieldByName('DepID').AsString]),[])  then
     begin
       if DelDet.FieldByName('Qty').Value>Qtemp.FieldByName('Qty').Value then
       begin
        IsStockOK:=false;
        Showmessage(DelDet.FieldByName('CLBH').AsString+' '+DelDet.FieldByName('DepName').AsString+' don''t have Qty '+DelDet.FieldByName('Qty').AsString+', it can''t  confirm. khong co ton kho , khong duoc confirm ');        break;
       end;
     end else
     begin
       IsStockOK:=false;
       Showmessage(DelDet.FieldByName('CLBH').AsString+' '+DelDet.FieldByName('DepName').AsString+' don''t have Qty '+DelDet.FieldByName('Qty').AsString+', it can''t  confirm. khong co ton kho , khong duoc confirm ');
       break;
     end;
   end;
   //
   if IsStockOK=true then
   begin
     with Qtemp do
     begin
       Active:=false;
       SQL.Clear;
       SQL.Add('Update KCLL_Dep_DB set CFMID='''+main.Edit1.Text+''',CFMDate=GetDate() where DBNO='''+DelMas.FieldByName('DBNO').AsString+''' ');
       //FuncObj.WriteErrorLog(SQL.Text);
       ExecSQL();
     end;
     //
     DelMas.Active:=false;
     DelMas.Active:=true;
     Showmessage('Success');
   end;
end;

end.
