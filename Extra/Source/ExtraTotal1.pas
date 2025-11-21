unit ExtraTotal1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, DB, DBTables, StdCtrls, DBCtrls, GridsEh, DBGridEh, Mask,
  ComCtrls, Buttons, ExtCtrls ,IniFiles;

type
  TExtraTotal = class(TForm)
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
    Panel2: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    Edit3: TEdit;
    PC1: TPageControl;
    TS3: TTabSheet;
    Panel4: TPanel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit7: TDBEdit;
    BBTT1: TBitBtn;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBGrid3: TDBGridEh;
    CB1: TDBComboBox;
    DBX2: TDBComboBox;
    TS4: TTabSheet;
    Panel5: TPanel;
    Label19: TLabel;
    Label20: TLabel;
    DBMemo1: TDBMemo;
    DBEdit13: TDBEdit;
    BBTT2: TBitBtn;
    Panel7: TPanel;
    Panel3: TPanel;
    DBGrid4: TDBGridEh;
    DBGrid2: TDBGridEh;
    Query1: TQuery;
    JGMas: TQuery;
    JGMasJGNO: TStringField;
    JGMasZSBH: TStringField;
    JGMasZSYWJC: TStringField;
    JGMasdh: TStringField;
    JGMasCZ: TStringField;
    JGMasJGLX: TStringField;
    JGMasJGDate: TDateTimeField;
    JGMasUSERDATE: TDateTimeField;
    JGMasUSERID: TStringField;
    JGMasYN: TStringField;
    JGMasCFMID1: TStringField;
    JGMasCFMDate1: TDateTimeField;
    JGMasCFMID2: TStringField;
    JGMasCFMDate2: TDateTimeField;
    JGMasGSBH: TStringField;
    JGMasCKBH: TStringField;
    UpMas: TUpdateSQL;
    DS3: TDataSource;
    JGDet: TQuery;
    JGDetJGNO: TStringField;
    JGDetZMLB: TStringField;
    JGDetCLBH: TStringField;
    JGDetYWPM: TStringField;
    JGDetDWBH: TStringField;
    JGDetQty: TCurrencyField;
    JGDetUSPrice: TCurrencyField;
    JGDetUSACC: TCurrencyField;
    JGDetYQDate: TDateTimeField;
    JGDetCFMDate: TDateTimeField;
    JGDetMemo: TStringField;
    JGDetBJNO: TStringField;
    JGDetUSERDATE: TDateTimeField;
    JGDetUSERID: TStringField;
    JGDetYN: TStringField;
    JGDetCostID: TStringField;
    JGDetCLPrice: TCurrencyField;
    DS4: TDataSource;
    UPDet: TUpdateSQL;
    JGDetZ: TQuery;
    JGDetZCLBH: TStringField;
    JGDetZZMLB: TStringField;
    JGDetZYWPM: TStringField;
    JGDetZDWBH: TStringField;
    JGDetZQty: TCurrencyField;
    JGDetZBJNO: TStringField;
    JGDetZYQDate: TDateTimeField;
    JGDetZCFMDate: TDateTimeField;
    JGDetZUSERDATE: TDateTimeField;
    JGDetZUSERID: TStringField;
    JGDetZYN: TStringField;
    JGDetZJGNO: TStringField;
    JGDetZMemo: TStringField;
    JGDetZzQty: TFloatField;
    JGDetZCostID: TStringField;
    JGDetZCLPrice: TCurrencyField;
    JGDetZUSPrice: TCurrencyField;
    JGDetZUSACC: TCurrencyField;
    DS2: TDataSource;
    UPdetZ: TUpdateSQL;
    POP1: TPopupMenu;
    NB1: TMenuItem;
    NB2: TMenuItem;
    NB3: TMenuItem;
    NB4: TMenuItem;
    NB5: TMenuItem;
    JGMasSB: TStringField;
    JGDetZWPM: TStringField;
    JGDetZZWPM: TStringField;
    Check: TCheckBox;
    BDelRec: TQuery;
    JGDetCWHL: TCurrencyField;
    JGDetVNPrice: TCurrencyField;
    JGDetVNACC: TCurrencyField;
    JGDetZCWHL: TCurrencyField;
    JGDetZVNPrice: TCurrencyField;
    JGDetZVNACC: TCurrencyField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure BB1Click(Sender: TObject);
    procedure BB2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BB3Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure BB7Click(Sender: TObject);
    procedure BD2Click(Sender: TObject);
    procedure BD3Click(Sender: TObject);
    procedure BD4Click(Sender: TObject);
    procedure BD5Click(Sender: TObject);
    procedure BD6Click(Sender: TObject);
    procedure BBT1Click(Sender: TObject);
    procedure BBT2Click(Sender: TObject);
    procedure BBT3Click(Sender: TObject);
    procedure BBT4Click(Sender: TObject);
    procedure BDT1Click(Sender: TObject);
    procedure BDT2Click(Sender: TObject);
    procedure BDT3Click(Sender: TObject);
    procedure BDT4Click(Sender: TObject);
    procedure BD7Click(Sender: TObject);
    procedure JGDetAfterOpen(DataSet: TDataSet);
    procedure DBGrid3DblClick(Sender: TObject);
    procedure DBGrid3EditButtonClick(Sender: TObject);
    procedure BBTT2Click(Sender: TObject);
    procedure DBGrid3KeyPress(Sender: TObject; var Key: Char);
    procedure BBTT1Click(Sender: TObject);
    procedure DBGrid4EditButtonClick(Sender: TObject);
    procedure JGMasAfterOpen(DataSet: TDataSet);
    procedure PC1Change(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure BDT5Click(Sender: TObject);
    procedure JGDetCalcFields(DataSet: TDataSet);
    procedure DBGrid3ColExit(Sender: TObject);
    procedure NB1Click(Sender: TObject);
    procedure NB2Click(Sender: TObject);
    procedure NB3Click(Sender: TObject);
    procedure NB5Click(Sender: TObject);
    procedure NB4Click(Sender: TObject);
    procedure JGDetZCalcFields(DataSet: TDataSet);
    procedure DBGrid3GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure DBGrid4GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure DBGrid2GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure DBGrid3DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure FormDestroy(Sender: TObject);
    procedure JGDetZAfterOpen(DataSet: TDataSet);
  private
    { Private declarations }
    procedure ReadIni();
  public
    { Public declarations }
    VNPrice_DiplayFormat:string;
    VNPrice_Decimal:Byte;
  end;

var
  ExtraTotal: TExtraTotal;
  NDate:Tdate;

implementation

uses main1, ExtraTotal_CL1, ExtraTotal_ZS1, ExtraTotal_ZL1,
  ExtraTot_Print1;

{$R *.dfm}

procedure TExtraTotal.FormClose(Sender: TObject; var Action: TCloseAction);
begin

if BB5.enabled  then
  begin
    messagedlg('You have to save data Record of report first.',mtwarning,[mbyes],0);
    PC1.ActivePage:=TS3;
    panel1.Visible:=true;
    panel6.Visible:=false;
    action:=canone;
  end
  else
    begin
      if BD5.enabled then
        begin
          messagedlg('You have to save data Report first.',mtwarning,[mbyes],0);
          PC1.ActivePage:=TS4;
          panel6.Visible:=true;
          panel1.Visible:=false;
          action:=canone;
        end
          else
            begin
              action:=Cafree;
            end;
    end;
end;

procedure TExtraTotal.Button1Click(Sender: TObject);
begin

with JGMas do
  begin
    active:=false;
    sql.Clear;
    sql.add('select JGZL.* ,ZSZL.ZSYWJC,zszl.dh,ZSZL.CZ');
    sql.add('from JGZL');
    sql.add('left join ZSZL on JGZL.ZSBH=ZSZL.ZSDH');
    sql.add('where JGZL.JGNO like '+''''+edit1.Text+'%'+'''');
    sql.add('      and isnull(ZSZL.ZSYWJC,'+''''+''+''''+') like '+''''+'%'+edit3.Text+'%'+'''');
    sql.add('      and JGZL.GSBH='+''''+main.Edit2.Text+'''');
    sql.add('      and JGZL.SB='+''''+'1'+'''');
    sql.add('      and convert(smalldatetime,convert(varchar,JGZL.USERDATE,111)) between ');
    sql.add('          '''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''''+' and  '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date) +'''');
    if Check.Checked then
      begin
        sql.Add('       and JGZL.USERID='+''''+main.Edit1.Text+'''');
      end;
    sql.add('order by JGZL.JGNO DESC');
    active:=true;
  end;
panel2.Visible:=false;
BB2.Enabled:=true;
BB3.Enabled:=true;
BB4.Enabled:=true;
BBT1.Enabled:=true;
BBT2.Enabled:=true;
BBT3.Enabled:=true;
BBT4.Enabled:=true;
JGDet.Active:=true;  
JGDetZ.Active:=true;
end;

procedure TExtraTotal.BB1Click(Sender: TObject);
begin

panel2.Visible:=true;
end;

procedure TExtraTotal.BB2Click(Sender: TObject);
begin

with JGMas do
  begin
    requestlive:=true;
    cachedupdates:=true;
    insert;
  end;
BBTT1.Visible:=true;
BB5.Enabled:=true;
BB6.Enabled:=true;
dbgrid3.columns[1].ButtonStyle:=cbsEllipsis;
end;

procedure TExtraTotal.FormCreate(Sender: TObject);
var i:integer;
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
    sql.add('select CKBH from KCCK');
    sql.add('where GSBH='+''''+main.edit2.Text+'''');
    sql.add('order by CKBH ');
    active:=true;
    for i:=1 to recordcount do
      begin
        DBX2.Items.add(fieldbyname('CKBH').asstring);
        next;
      end;
    active:=false;
  end;
PC1.ActivePage:=TS3;
DTP1.Date:=date-3;
DTP2.date:=date;
ReadIni();
end;

procedure TExtraTotal.ReadIni();
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
  TCurrencyField(JGDet.FieldByName('VNPrice')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(JGDet.FieldByName('VNACC')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(JGDet.FieldByName('CWHL')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(JGDetZ.FieldByName('VNPrice')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(JGDetZ.FieldByName('VNACC')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(JGDetZ.FieldByName('CWHL')).DisplayFormat:=VNPrice_DiplayFormat;
end;

procedure TExtraTotal.BB3Click(Sender: TObject);
begin

if JGDet.recordcount=0 then
  begin
    with JGMas do
      begin
        if fieldbyname('USERID').value=main.Edit1.Text then
          begin
            requestlive:=true;
            cachedupdates:=true;
            edit;
            fieldbyname('YN').Value:='0';
          end
          else
            begin
              showmessage('It is not yours, can not delete.');
            end;
      end;
  end
    else
      begin
        showmessage('Pls delete the Deliver Detail first.')
      end;
BBTT1.Visible:=true;
BB5.Enabled:=true;
BB6.Enabled:=true;
dbgrid3.columns[1].ButtonStyle:=cbsEllipsis;
end;

procedure TExtraTotal.BB4Click(Sender: TObject);
begin

with JGMas do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
BBTT1.Visible:=true;
BB5.Enabled:=true;
BB6.Enabled:=true;
dbgrid3.columns[1].ButtonStyle:=cbsEllipsis;
end;

procedure TExtraTotal.BB5Click(Sender: TObject);
var y,m,a:string;
i:integer;
begin

with JGMas do
  begin
    first;
    while not eof do
      begin
        if fieldbyname('JGLX').IsNull then
        begin
          showmessage('Pls select JGLX first.');
          abort;
        end;
        if fieldbyname('CKBH').IsNull then
        begin
          showmessage('Pls select CKBH first.');
          abort;
        end;
        next;
      end;
  end;
with query1 do          //取服務器的年月值
  begin
    active:=false;
    sql.Clear;
    sql.Add('select year(getdate()) as FY,month(getdate()) as FM ,getdate() as NDate');
    active:=true;
    y:=fieldbyname('FY').asstring;
    m:=fieldbyname('FM').asstring;
    NDate:=fieldbyname('NDate').Value;
    active:=false;
  end;
if length(m)<2 then
  m:='0'+m;

try
    JGMas.first;
    for i:=1 to JGMas.RecordCount do
      begin
        case JGMas.updatestatus of
          usinserted:
            begin
              if JGMas.fieldbyname('ZSBH').isnull then
                begin
                  JGMas.delete;
                end
                 else
                   begin
                     with query1 do    //計算領料單流水號
                       begin
                         active:=false;
                         sql.Clear;
                         sql.Add('select JGNO from JGZL where JGNO like '+''''+y+m+'%'+'''');
                         sql.add('order by JGNO');
                         active:=true;
                         if recordcount >0 then
                           begin
                             last;
                             a:=fieldbyname('JGNO').AsString;
                             a:=copy(a,7,5);
                             a:=inttostr(strtoint(a)+1);
                             while length(a)<5 do
                               begin
                                 a:='0'+a;
                               end;
                           end
                             else
                               begin
                                 a:='00001';
                               end;
                         a :=y+m+a;
                         active:=false;
                       end;
                     JGMas.edit;
                     JGMas.fieldbyname('JGNO').Value:=a;  
                     JGMas.fieldbyname('GSBH').Value:=main.Edit2.text;
                     JGMas.FieldByName('userID').Value:=main.edit1.text;
                     JGMas.FieldByName('userdate').Value:=formatdatetime('yyyy/MM/dd',Ndate);;
                     JGMas.FieldByName('CFMID1').Value:='NO';  
                     JGMas.FieldByName('CFMID2').Value:='NO';
                     JGMas.FieldByName('JGDate').Value:=formatdatetime('yyyy/MM/dd',Ndate);
                     JGMas.FieldByName('YN').Value:='1';
                     JGMas.FieldByName('SB').Value:='1';
                     upMas.apply(ukinsert);
                   end;
            end;
          usmodified:
             begin
               if JGMas.FieldByName('CFMID1').value='NO' then
                 begin
                   if JGMas.fieldbyname('YN').value='0'then
                     begin
                       with BDelRec do
                         begin
                           active:=false;
                           sql.Clear;
                           sql.add('insert into BDelRec ');
                           sql.add('(TableName ,TNO,CLBH,OldID,DelID,DelDate)');
                           sql.add('values ('+''''+'JGZL'+''''+','+''''+JGMas.fieldbyname('JGNO').Value+'''');
                           sql.add(','+''''+''+''''+','+''''+JGMas.fieldbyname('USERID').Value+''''+',');
                           sql.add(''''+main.Edit1.Text+''''+',getdate())');
                           execsql;
                           active:=false;
                         end;
                       upMas.apply(ukdelete);
                     end
                     else
                       begin
                         if (NDate-JGMas.FieldByName('USERDATE').value)<7  then
                           begin
                             JGMas.edit;
                             JGMas.FieldByName('userID').Value:=main.edit1.text;
                             JGMas.FieldByName('userdate').Value:=formatdatetime('yyyy/MM/dd',Ndate);
                             upMas.apply(ukmodify);
                           end
                           else
                             begin
                               showmessage('Date>3, can not modify.');
                             end;
                       end;
                 end 
                 else
                   begin
                     showmessage('Already confirmed. can not modify.');
                   end;
             end;
        end;
       JGMas.next;
      end;
JGMas.active:=false;
JGMas.cachedupdates:=false;
JGMas.requestlive:=false;
JGMas.active:=true;
bb5.enabled:=false;
bb6.enabled:=false;
BBTT1.Visible:=false;
dbgrid3.columns[1].ButtonStyle:=cbsnone;
except
  on E:Exception do
  begin
    Messagedlg('Have wrong, can not save data!'+E.Message,mtwarning,[mbyes],0);
  end;
end;

end;

procedure TExtraTotal.BB6Click(Sender: TObject);
begin

with JGMas do
  begin
    active:=false;
    requestlive:=false;
    cachedupdates:=false;
    active:=true;
  end;
bb5.enabled:=false;
bb6.enabled:=false;
BBTT1.Visible:=false;
dbgrid3.columns[1].ButtonStyle:=cbsnone;
end;

procedure TExtraTotal.BB7Click(Sender: TObject);
begin
close;
end;

procedure TExtraTotal.BD2Click(Sender: TObject);
begin

if JGMas.RequestLive then
  begin
    showmessage('Pls save Master data first.');
    PC1.ActivePage:=TS3;
    panel6.visible:=false;
    panel1.visible:=true;
    abort;
  end;

with JGDet do
  begin
    requestlive:=true;
    cachedupdates:=true;
    insert;
  end;
BBTT2.Visible:=true;
BD5.Enabled:=true;
BD6.Enabled:=true;
dbgrid4.columns[0].ButtonStyle:=cbsEllipsis; 
end;

procedure TExtraTotal.BD3Click(Sender: TObject);
begin

if JGMas.RequestLive then
  begin
    showmessage('Pls save Master data first.');
    PC1.ActivePage:=TS3;
    panel6.visible:=false;
    panel1.visible:=true;
    abort;
  end;

if JGDetZ.recordcount>0 then
  begin
    showmessage('Pls delete the order detail first.');
    abort;
  end;

with JGDet do
  begin
    if JGMas.fieldbyname('USERID').value=main.Edit1.Text then
      begin
        requestlive:=true;
        cachedupdates:=true;
        edit;
        fieldbyname('YN').Value:='0';
      end
      else
        begin
          showmessage('It is not yours, can not delete.');
        end;
  end;
BBTT2.Visible:=true;
BD5.Enabled:=true;
BD6.Enabled:=true;
dbgrid4.columns[0].ButtonStyle:=cbsEllipsis;
end;

procedure TExtraTotal.BD4Click(Sender: TObject);
begin

if JGMas.RequestLive then
  begin
    showmessage('Pls save Master data first.');
    PC1.ActivePage:=TS3;
    panel6.visible:=false;
    panel1.visible:=true;
    abort;
  end;

with JGDet do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
BBTT2.Visible:=true;
BD5.Enabled:=true;
BD6.Enabled:=true;
dbgrid4.columns[0].ButtonStyle:=cbsEllipsis;
end;

procedure TExtraTotal.BD5Click(Sender: TObject);
var i:integer;
begin
JGDetZ.Active:=false;
  with JGDet do
    begin
      first;
      while not JGDet.Eof do
        begin
          if JGDet.FieldByName('ZMLB').IsNull  then
            begin
              edit;
              JGDet.FieldByName('ZMLB').value:='ZZZZZZZZZZ';
            end;
          if JGDet.FieldByName('Qty').IsNull  then
            begin
              edit;
              JGDet.FieldByName('Qty').value:=0;
            end;
          if (not JGDet.FieldByName('USPrice').IsNull) and (not JGDet.FieldByName('VNPrice').IsNull) then
            begin
              showmessage('Can not have two price.');
              abort;
            end;
          if JGDet.FieldByName('YQDate').IsNull  then
            begin
              showmessage('YQDate can not be null.');
              abort;
            end;
          next;
        end;
    end;

  try
    JGDet.first;
      for i:=1 to JGDet.RecordCount do
        begin
          case JGDet.updatestatus of
            usinserted:
              begin
                if JGDet.fieldbyname('CLBH').isnull then
                  begin
                    JGDet.delete;
                  end
                   else
                     begin
                       JGDet.edit;
                       JGDet.FieldByName('BJNO').Value:='00000000000';
                       JGDet.FieldByName('USPrice').Value:=0;
                       JGDet.fieldbyname('JGNO').Value:=JGMas.fieldbyname('JGNO').Value;
                       JGDet.FieldByName('userID').Value:=main.edit1.text;
                       JGDet.FieldByName('userdate').Value:=date;
                       JGDet.FieldByName('CostID').Value:='627';
                       JGDet.FieldByName('CFMdate').Value:=JGDet.FieldByName('YQdate').Value ;
                       JGDet.FieldByName('YN').Value:='1';
                       upDet.apply(ukinsert);
                     end;
              end;
            usmodified:
               begin
                if JGDet.fieldbyname('YN').value='0'then
                  begin 
                    with BDelRec do
                      begin
                        active:=false;
                        sql.Clear;
                        sql.add('insert into BDelRec ');
                        sql.add('(TableName ,TNO,CLBH,OldID,DelID,DelDate)');
                        sql.add('values ('+''''+'JGZLS'+''''+','+''''+JGDet.fieldbyname('JGNO').Value+'''');
                        sql.add(','+''''+JGDet.fieldbyname('CLBH').Value+''''+','+''''+JGDet.fieldbyname('USERID').Value+''''+',');
                        sql.add(''''+main.Edit1.Text+''''+',getdate())');
                        execsql;
                        active:=false;
                      end;
                    UpDet.apply(ukdelete);
                  end
                  else
                    begin
                      with query1 do
                        begin
                          active:=false;
                          sql.Clear;
                          sql.add('update JGZLSS set YQDate='+''''+formatdatetime('yyyy/mm/dd',JGDet.FieldByName('YQDate').Value)+'''');
                          sql.add(',CFMDate='+''''+formatdatetime('yyyy/mm/dd',JGDet.FieldByName('YQDate').Value)+'''');
                          sql.add(',USERDate='+''''+formatdatetime('yyyy/mm/dd',date)+'''');
                          sql.add(',USERID='+''''+JGDet.FieldByName('USERID').Value+'''');
                          sql.add('where JGNO='+''''+JGDet.FieldByName('JGNO').Value+'''');
                          sql.add('and CLBH='+''''+JGDet.FieldByName('CLBH').Value+'''');
                          execsql;
                          close;
                        end;
                      JGDet.edit;
                      JGDet.FieldByName('CFMdate').Value:=JGDet.FieldByName('YQdate').Value ;
                      JGDet.FieldByName('userID').Value:=main.edit1.text;
                      JGDet.FieldByName('userdate').Value:=date;
                      upDet.apply(ukmodify);
                    end;
                end;
          end;
          JGDet.next;
        end;
  JGDet.active:=false;
  JGDet.cachedupdates:=false;
  JGDet.requestlive:=false;
  JGDet.active:=true;
  JGDetZ.Active:=true;
  BBTT2.Visible:=false;
  BD5.Enabled:=false;
  BD6.Enabled:=false;
  DBGrid4.Columns[3].ReadOnly:=true;
  dbgrid4.columns[0].ButtonStyle:=cbsNone;
  except
    Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
    JGDetZ.Active:=true;
  end;

end;

procedure TExtraTotal.BD6Click(Sender: TObject);
begin

with JGDet do
  begin
    active:=false;
    requestlive:=false;
    cachedupdates:=false;
    active:=true;
  end;
BBTT2.Visible:=false;
BD5.Enabled:=false;
BD6.Enabled:=false;
DBGrid4.Columns[3].ReadOnly:=true;
dbgrid4.columns[0].ButtonStyle:=cbsNone;
end;

procedure TExtraTotal.BBT1Click(Sender: TObject);
begin
JGMas.First;
end;

procedure TExtraTotal.BBT2Click(Sender: TObject);
begin
JGMas.prior;
end;

procedure TExtraTotal.BBT3Click(Sender: TObject);
begin
JGMas.next;
end;

procedure TExtraTotal.BBT4Click(Sender: TObject);
begin
JGMas.last;
end;

procedure TExtraTotal.BDT1Click(Sender: TObject);
begin
JGDet.first;
end;

procedure TExtraTotal.BDT2Click(Sender: TObject);
begin
JGDet.prior;
end;

procedure TExtraTotal.BDT3Click(Sender: TObject);
begin
JGDet.next;
end;

procedure TExtraTotal.BDT4Click(Sender: TObject);
begin
JGDet.last;
end;

procedure TExtraTotal.BD7Click(Sender: TObject);
begin
close;
end;

procedure TExtraTotal.JGDetAfterOpen(DataSet: TDataSet);
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
NB1.Enabled:=true;
NB2.Enabled:=true;
NB3.Enabled:=true;
NB4.Enabled:=true;
NB5.Enabled:=true;
if JGDet.recordcount>0 then
  begin
    NB1.Enabled:=true;
    NB2.Enabled:=true;
    NB3.Enabled:=true;
    NB4.Enabled:=true;
    NB5.Enabled:=true;
  end
  else
    begin
      NB1.Enabled:=false;
      NB2.Enabled:=false;
      NB3.Enabled:=false;
      NB4.Enabled:=false;
      NB5.Enabled:=false;
    end ;
if (NDate-JGMas.FieldByName('USERDATE').value)>7  then
  begin
    BD2.Enabled:=false;
    BD3.Enabled:=false;
    BD4.Enabled:=false;
    NB1.Enabled:=false;
    NB2.Enabled:=false;
    NB3.Enabled:=false;
    NB4.Enabled:=false;
    NB5.Enabled:=false;
  end;
if JGMas.FieldByName('USERID').value<>main.edit1.text  then
  begin
    BD2.Enabled:=false;
    BD3.Enabled:=false;
    BD4.Enabled:=false;
    NB1.Enabled:=false;
    NB2.Enabled:=false;
    NB3.Enabled:=false;
    NB4.Enabled:=false;
    NB5.Enabled:=false;
  end;
if  JGMas.FieldByName('CFMID1').value<>'NO'  then
  begin
    BD2.Enabled:=false;
    BD3.Enabled:=false;
    BD4.Enabled:=false;
    NB1.Enabled:=false;
    NB2.Enabled:=false;
    NB3.Enabled:=false;
    NB4.Enabled:=false;
    NB5.Enabled:=false;
  end;  
if  JGMas.cachedupdates  then
  begin
    BD2.Enabled:=false;
    BD3.Enabled:=false;
    BD4.Enabled:=false;
    NB1.Enabled:=false;
    NB2.Enabled:=false;
    NB3.Enabled:=false;
    NB4.Enabled:=false;
    NB5.Enabled:=false;
  end;
BD5.Enabled:=false;
BD6.Enabled:=false;
dbgrid4.columns[0].ButtonStyle:=cbsNone;
dbgrid4.columns[4].ButtonStyle:=cbsNone;
dbgrid4.columns[5].ButtonStyle:=cbsNone;
end;

procedure TExtraTotal.DBGrid3DblClick(Sender: TObject);
begin
  if  JGMas.Active then
  begin
    if  (JGMas.recordcount>0) then
      begin
        PC1.ActivePage:=TS4;
        panel1.Visible:=false;
        panel6.Visible:=true;
      end;
  end;
end;

procedure TExtraTotal.DBGrid3EditButtonClick(Sender: TObject);
begin
  BBTT1Click(nil);
end;

procedure TExtraTotal.BBTT2Click(Sender: TObject);
begin
  ExtraTotal_CL:=TExtraTotal_CL.create(self);
  ExtraTotal_CL.show;
end;

procedure TExtraTotal.DBGrid3KeyPress(Sender: TObject; var Key: Char);
begin

if key=#13 then
    DBGrid3DblClick(nil);
end;

procedure TExtraTotal.BBTT1Click(Sender: TObject);
begin
  ExtraTotal_ZS:=TExtraTotal_ZS.create(self);
  ExtraTotal_ZS.show;
end;

procedure TExtraTotal.DBGrid4EditButtonClick(Sender: TObject);
begin

if DBGrid4.Selectedfield.fieldname='CLBH' then
  begin
    BBTT2click(nil);
  end;
if (DBGrid4.Selectedfield.fieldname='USPrice') or (DBGrid4.Selectedfield.fieldname='VNPrice') then
  begin
    if not JGDet.FieldByName('CLBH').IsNull then
      begin  {
        PurNoSize_BJ:=TPurNoSize_BJ.create(self);
        PurNoSize_BJ.Edit1.Text:=CGDet.fieldbyname('CLBH').Value;
        PurNoSize_BJ.button1click(nil);
        PurNoSize_BJ.show; }
      end;
  end;
end;

procedure TExtraTotal.JGMasAfterOpen(DataSet: TDataSet);
begin

BB5.Enabled:=false;
BB6.Enabled:=false;
BD5.Enabled:=false;
BD6.Enabled:=false;
if (JGMas.FieldByName('CFMID1').value<>'NO') or (NDate-JGMas.FieldByName('JGDate').value>10) then
  begin
    BD2.Enabled:=false;
    BD3.Enabled:=false;
    BD4.Enabled:=false;
  end
  else
    begin
      BD2.Enabled:=true;
      BD3.Enabled:=true;
      BD4.Enabled:=true;
    end;
end;

procedure TExtraTotal.PC1Change(Sender: TObject);
begin

if PC1.ActivePage=TS4 then
  begin
    panel6.visible:=true;
    panel1.visible:=false;
  end
    else
      begin
        panel6.visible:=false;
        panel1.visible:=true;
      end;
end;

procedure TExtraTotal.Edit1KeyPress(Sender: TObject; var Key: Char);
begin

if key=#13 then
edit3.SetFocus;
end;

procedure TExtraTotal.Edit3KeyPress(Sender: TObject; var Key: Char);
begin

if key=#13 then
button1click(nil);
end;

procedure TExtraTotal.BDT5Click(Sender: TObject);
begin
if JGDet.RequestLive then
  begin
    showmessage('Pls save data first.');
    abort;
  end;

ExtraTot_Print:=TExtraTot_Print.Create(nil);
ExtraTot_Print.quickrep1.prepare;
ExtraTot_Print.Qpage1.caption:=inttostr(ExtraTot_Print.quickrep1.QRPrinter.pagecount);
ExtraTot_Print.quickrep1.preview;
ExtraTot_Print.Free;
end;

procedure TExtraTotal.JGDetCalcFields(DataSet: TDataSet);
begin


with JGDet do
  begin
    if FieldByName('USPrice').value<>0 then
      begin
        FieldByName('ACCUS').value:=FieldByName('Qty').value*FieldByName('USPrice').value;
      end; 
    if FieldByName('VNPrice').value<>0 then
      begin
        FieldByName('ACCVN').value:=FieldByName('Qty').value*FieldByName('VNPrice').value;
      end;
  end;
end;

procedure TExtraTotal.DBGrid3ColExit(Sender: TObject);
begin

if DBGrid3.selectedfield.fieldname=CB1.datafield then
  CB1.Visible:=false;
end;

procedure TExtraTotal.NB1Click(Sender: TObject);
begin

if JGDet.RequestLive then
  begin
    showmessage('Pls save MaterialList first.');
    abort;
  end;
if JGDet.recordcount=0 then
  begin
    showmessage('No data.');
    abort;
  end;
with JGDetZ do
  begin
    requestlive:=true;
    cachedupdates:=true;
  end;
with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('delete JGZLS where CLBH='+''''+JGdet.fieldbyname('CLBH').Value+'''');
    sql.add('and ZMLB<>'+''''+ 'ZZZZZZZZZZ'+'''');
    sql.add('and JGNO='+ ''''+JGdet.fieldbyname('JGNO').Value +'''');
    sql.add('select CLZHZL.*,CLZL.YWPM,CLZL.DWBH from CLZHZL ');
    sql.add('left join CLZL on CLZL.CLDH=CLZHZL.CLDH1');
    sql.add('where CLZHZL.CLDH='+''''+JGDet.fieldbyname('CLBH').value+'''');
    active:=true;
    if recordcount>0 then
      begin
        while not eof do
          begin
            JGDetZ.insert;
            JGDetZ.FieldByName('JGNO').value:=JGDet.fieldbyname('JGNO').Value;
            JGDetZ.FieldByName('CLBH').value:=fieldbyname('CLDH').Value;
            JGDetZ.FieldByName('ZMLB').value:=fieldbyname('CLDH1').Value;
            JGDetZ.FieldByName('YWPM').value:=fieldbyname('YWPM').Value;
            JGDetZ.FieldByName('DWBH').value:=fieldbyname('DWBH').Value;
            JGDetZ.FieldByName('Qty').value:=fieldbyname('syl').Value;
            JGDetZ.FieldByName('BJNO').value:=JGDet.fieldbyname('BJNO').Value;
            JGDetZ.FieldByName('YQDate').value:=JGDet.fieldbyname('YQDate').Value;
            JGDetZ.FieldByName('CFMDate').value:=JGDet.fieldbyname('CFMDate').Value;
            JGDetZ.FieldByName('USERDate').value:=date;
            JGDetZ.FieldByName('USERID').value:=main.Edit1.Text;
            JGDetZ.FieldByName('YN').value:='1';
            upDetZ.Apply(ukinsert);
            next;
          end;
      end;
  end;

with JGDetZ do
  begin
    Active:=false;
    requestlive:=true;
    cachedupdates:=true;
    Active:=true;
  end;

end;

procedure TExtraTotal.NB2Click(Sender: TObject);
begin

if JGDet.RequestLive then
  begin
    showmessage('Pls save MaterialList first.');
    abort;
  end;
if JGDet.recordcount=0 then
  begin
    showmessage('No data.');
    abort;
  end;
ExtraTotal_ZL:=TExtraTotal_ZL.create(self);
ExtraTotal_ZL.show;
NB5.Enabled:=true;
end;

procedure TExtraTotal.NB3Click(Sender: TObject);
begin

DBGrid2.columns[4].readonly:=false;
NB5.Enabled:=true;
end;

procedure TExtraTotal.NB5Click(Sender: TObject);

var i:integer;
begin
try
    JGDetZ.first;
      for i:=1 to JGDetZ.RecordCount do
        begin
          case JGDetZ.updatestatus of
            usinserted:
              begin
                if JGDetZ.fieldbyname('CLBH').isnull then
                  begin
                    JGDetZ.delete;
                  end;
              end;
            usmodified:
               begin
                if JGDetZ.fieldbyname('YN').value='0'then
                  begin
                     UpDetZ.apply(ukdelete);
                  end
                  else
                    begin
                      upDetZ.apply(ukmodify);
                    end;
                end;
          end;
          JGDetZ.next;
        end;
      JGDetZ.Active:=false;
      JGDetZ.Active:=true;
  except
    Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
  end;

DBGrid2.columns[4].readonly:=true;
end;

procedure TExtraTotal.NB4Click(Sender: TObject);
begin

JGDetZ.Edit;
JGDetZ.FieldByName('YN').Value:='0';
NB5.Enabled:=true;
end;

procedure TExtraTotal.JGDetZCalcFields(DataSet: TDataSet);
begin

JGDetZ.FieldByName('zQty').Value:=trunc(JGDetZ.FieldByName('Qty').Value*JGDet.FieldByName('Qty').Value*100+0.5)/100 ;
end;

procedure TExtraTotal.DBGrid3GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin

if JGMas.FieldByName('YN').value='0' then
  begin
    dbgrid3.canvas.font.color:=clred;
    //dbgrid3.defaultdrawcolumncell(rect,datacol,column,state);
  end;
end;

procedure TExtraTotal.DBGrid4GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin

 if JGDet.FieldByName('YN').value='0' then
  begin
    dbgrid4.canvas.font.color:=clred;
   // dbgrid4.defaultdrawcolumncell(rect,datacol,column,state);
  end;

 if JGDet.FieldByName('JGNO').isnull then
  begin
    dbgrid4.canvas.font.color:=clLime;
  //  dbgrid4.defaultdrawcolumncell(rect,datacol,column,state);
  end;
end;

procedure TExtraTotal.DBGrid2GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin

 if JGDetZ.FieldByName('YN').value='0' then
  begin
    dbgrid2.canvas.font.color:=clred;
   // dbgrid2.defaultdrawcolumncell(rect,datacol,column,state);
  end;
end;

procedure TExtraTotal.DBGrid3DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin

if JGMas.cachedupdates then
  begin
    if (gdfocused in state) then
      begin
        if (dbgrid3.SelectedField.fieldname=CB1.datafield) then
          begin
            CB1.left:=rect.left+dbgrid3.left;
            CB1.top:=rect.top+dbgrid3.Top;
            CB1.width:=rect.right-rect.left+2;
            CB1.height:=rect.bottom-rect.top;
            CB1.visible:=true;
          end
          else
            CB1.Visible:=false;
        if (dbgrid3.SelectedField.fieldname=DBX2.datafield) then
          begin
            DBX2.left:=rect.left+dbgrid3.left;
            DBX2.top:=rect.top+dbgrid3.Top;
            DBX2.width:=rect.right-rect.left+10;
            DBX2.height:=rect.bottom-rect.top;
            DBX2.visible:=true;
          end
          else
            DBX2.Visible:=false;
      end;
  end
  else
    begin
      DBX2.Visible:=false;
      CB1.Visible:=false;
    end;

end;

procedure TExtraTotal.FormDestroy(Sender: TObject);
begin
ExtraTotal:=nil;
end;

procedure TExtraTotal.JGDetZAfterOpen(DataSet: TDataSet);
begin 
if JGDet.CachedUpdates then
  begin
    NB1.Enabled:=false;
    NB2.Enabled:=false;
    NB3.Enabled:=false;
    NB4.Enabled:=false;
    NB5.Enabled:=false;
  end
  else
    begin
      NB1.Enabled:=true;
      NB2.Enabled:=true;
      NB3.Enabled:=true;
      NB4.Enabled:=true;
      NB5.Enabled:=false;
    end;
end;

end.
