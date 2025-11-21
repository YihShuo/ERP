unit ExtraMaterial1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, StdCtrls, DBCtrls, Grids, DBGrids, Mask, ComCtrls,
  Buttons, ExtCtrls, Menus,math, GridsEh, DBGridEh,comobj;

type
  TExtraMaterial = class(TForm)
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
    Query1: TQuery;
    JGMas: TQuery;
    UpMas: TUpdateSQL;
    DS3: TDataSource;
    JGDet: TQuery;
    DS4: TDataSource;
    UPDet: TUpdateSQL;
    JGS: TQuery;
    UpOrdMat: TUpdateSQL;
    DS5: TDataSource;
    JGMasJGNO: TStringField;
    JGMasZSBH: TStringField;
    JGMasJGDate: TDateTimeField;
    JGMasUSERDATE: TDateTimeField;
    JGMasUSERID: TStringField;
    JGMasJGLX: TStringField;
    JGMasYN: TStringField;
    JGMasZSYWJC: TStringField;
    JGDetJGNO: TStringField;
    JGDetCLBH: TStringField;
    JGDetZMLB: TStringField;
    JGDetQty: TCurrencyField;
    JGDetUSPrice: TCurrencyField;
    JGDetBJNO: TStringField;
    JGDetUSERID: TStringField;
    JGDetYN: TStringField;
    JGDetYWPM: TStringField;
    JGDetDWBH: TStringField;
    JGDetYQDate: TDateTimeField;
    JGDetCFMDate: TDateTimeField;
    JGDetUSERDATE: TDateTimeField;
    JGSJGNO: TStringField;
    JGSCLBH: TStringField;
    JGSZLBH: TStringField;
    JGSQty: TCurrencyField;
    JGSCLSL: TCurrencyField;
    JGSYQDate: TDateTimeField;
    JGSCFMDate: TDateTimeField;
    JGSUSERDATE: TDateTimeField;
    JGSUSERID: TStringField;
    JGSYN: TStringField;
    PC1: TPageControl;
    TS3: TTabSheet;
    Panel4: TPanel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit7: TDBEdit;
    BBTT1: TBitBtn;
    DBEdit1: TDBEdit;
    DBGrid3: TDBGridEh;
    CB1: TDBComboBox;
    TS4: TTabSheet;
    Panel5: TPanel;
    Label19: TLabel;
    Label20: TLabel;
    DBMemo1: TDBMemo;
    DBEdit13: TDBEdit;
    BBTT2: TBitBtn;
    Panel7: TPanel;
    BO1: TBitBtn;
    BO2: TBitBtn;
    BO3: TBitBtn;
    BO4: TBitBtn;
    BO5: TBitBtn;
    Panel8: TPanel;
    DBGrid1: TDBGridEh;
    Panel3: TPanel;
    DBGrid4: TDBGridEh;
    DBGrid2: TDBGridEh;
    JGDetZ: TQuery;
    DS2: TDataSource;
    UPdetZ: TUpdateSQL;
    JGDetZZMLB: TStringField;
    JGDetZQty: TCurrencyField;
    JGDetZBJNO: TStringField;
    JGDetZYQDate: TDateTimeField;
    JGDetZCFMDate: TDateTimeField;
    JGDetZUSERDATE: TDateTimeField;
    JGDetZUSERID: TStringField;
    JGDetZYN: TStringField;
    JGDetZDWBH: TStringField;
    POP1: TPopupMenu;
    NB1: TMenuItem;
    NB2: TMenuItem;
    JGDetZJGNO: TStringField;
    JGDetZCLBH: TStringField;
    JGDetZMemo: TStringField;
    JGDetZYWPM: TStringField;
    NB5: TMenuItem;
    NB3: TMenuItem;
    NB4: TMenuItem;
    JGMasCFMID1: TStringField;
    JGMasCFMDate1: TDateTimeField;
    JGMasCFMID2: TStringField;
    JGMasCFMDate2: TDateTimeField;
    JGMasdh: TStringField;
    JGMasCZ: TStringField;
    JGDetZzQty: TFloatField;
    Label7: TLabel;
    DBEdit2: TDBEdit;
    Pop2: TPopupMenu;
    S2: TMenuItem;
    JGDetZCostID: TStringField;
    JGDetCWHL: TIntegerField;
    JGDetCostID: TStringField;
    JGDetCLPrice: TCurrencyField;
    JGDetZCWHL: TIntegerField;
    JGDetZCLPrice: TCurrencyField;
    JGDetUSACC: TCurrencyField;
    JGDetVNPrice: TFloatField;
    JGDetVNACC: TFloatField;
    JGDetZUSPrice: TCurrencyField;
    JGDetZUSACC: TCurrencyField;
    JGDetZVNPrice: TFloatField;
    JGDetZVNACC: TFloatField;
    JGDetMemo: TStringField;
    JGMasGSBH: TStringField;
    JGMasCKBH: TStringField;
    DBX2: TDBComboBox;
    Check: TCheckBox;
    JGMasPMARK: TIntegerField;
    JGMasSB: TStringField;
    BDelRec: TQuery;
    JGSbuyno: TStringField;
    JGSarticle: TStringField;
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
    procedure DBGrid4EditButtonClick(Sender: TObject);
    procedure DBGrid3KeyPress(Sender: TObject; var Key: Char);
    procedure BBTT1Click(Sender: TObject);
    procedure BBTT2Click(Sender: TObject);
    procedure JGMasAfterOpen(DataSet: TDataSet);
    procedure PC1Change(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure BDT5Click(Sender: TObject);
    procedure BDT6Click(Sender: TObject);
    procedure JGDetCalcFields(DataSet: TDataSet);
    procedure DBGrid3ColExit(Sender: TObject);
    procedure BO1Click(Sender: TObject);
    procedure DBGrid1EditButtonClick(Sender: TObject);
    procedure BO2Click(Sender: TObject);
    procedure BO5Click(Sender: TObject);
    procedure BO3Click(Sender: TObject);
    procedure BO4Click(Sender: TObject);
    procedure NB1Click(Sender: TObject);
    procedure NB2Click(Sender: TObject);
    procedure NB3Click(Sender: TObject);
    procedure NB5Click(Sender: TObject);
    procedure NB4Click(Sender: TObject);
    procedure JGDetZCalcFields(DataSet: TDataSet);
    procedure S2Click(Sender: TObject);
    procedure DBGrid3GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure DBGrid4GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure DBGrid2GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure DBGrid1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure DBGrid3DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure FormDestroy(Sender: TObject);
    procedure JGDetZAfterOpen(DataSet: TDataSet);
    procedure bbt6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ExtraMaterial: TExtraMaterial;   
  NDate:TDate;

implementation

uses main1, ExtraMat_ZS1, ExtraMat_CL1, ExtraMat_Ord1, ExtraMat_ZL1,
  ExtraMat_Print1, ExtraMat_Mat1;

{$R *.dfm}

procedure TExtraMaterial.FormClose(Sender: TObject;
  var Action: TCloseAction);
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

procedure TExtraMaterial.Button1Click(Sender: TObject);
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
    sql.add('      and isnull(JGZL.SB,'+''''+''+''''+')<>1 ');
    sql.add('      and convert(smalldatetime,convert(varchar,JGZL.USERDATE,111)) between ');
    sql.add('          '''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''''+' and  '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date) +'''');
    if Check.Checked then
      begin
        sql.Add('      and JGZL.USERID='+''''+main.Edit1.Text+'''');
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
Check.Checked:=true;
JGDet.Active:=true;   
JGS.Active:=true;
JGDetZ.Active:=true;
end;

procedure TExtraMaterial.BB1Click(Sender: TObject);
begin
panel2.Visible:=true;
end;

procedure TExtraMaterial.BB2Click(Sender: TObject);
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

procedure TExtraMaterial.FormCreate(Sender: TObject);
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
end;

procedure TExtraMaterial.BB3Click(Sender: TObject);
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

procedure TExtraMaterial.BB4Click(Sender: TObject);
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

procedure TExtraMaterial.BB5Click(Sender: TObject);
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
                     JGMas.FieldByName('userdate').Value:=Ndate;
                     JGMas.FieldByName('CFMID1').Value:='NO';  
                     JGMas.FieldByName('CFMID2').Value:='NO';
                     JGMas.FieldByName('JGDate').Value:=Ndate;
                     JGMas.FieldByName('YN').Value:='1';
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
                             JGMas.FieldByName('userdate').Value:=Ndate;
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
  Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
end;

end;

procedure TExtraMaterial.BB6Click(Sender: TObject);
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

procedure TExtraMaterial.BB7Click(Sender: TObject);
begin
close;
end;

procedure TExtraMaterial.BD2Click(Sender: TObject);
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
BO1.Enabled:=false;
BO2.Enabled:=false;
BO5.Enabled:=false;
S2.Enabled:=true;
dbgrid4.columns[0].ButtonStyle:=cbsEllipsis; {
dbgrid4.columns[6].ButtonStyle:=cbsEllipsis;
dbgrid4.columns[5].ButtonStyle:=cbsEllipsis; }
end;

procedure TExtraMaterial.BD3Click(Sender: TObject);
begin
if JGMas.RequestLive then
  begin
    showmessage('Pls save Master data first.');
    PC1.ActivePage:=TS3;
    panel6.visible:=false;
    panel1.visible:=true;
    abort;
  end;


if JGS.recordcount>0 then
  begin
    showmessage('Pls delete the order detail first.');
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
BO1.Enabled:=false;
BO2.Enabled:=false;
BO5.Enabled:=false; 
S2.Enabled:=true;
dbgrid4.columns[0].ButtonStyle:=cbsEllipsis;  {
dbgrid4.columns[6].ButtonStyle:=cbsEllipsis;
dbgrid4.columns[5].ButtonStyle:=cbsEllipsis; }
end;

procedure TExtraMaterial.BD4Click(Sender: TObject);
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
BO1.Enabled:=false;
BO2.Enabled:=false;
BO5.Enabled:=false; 
S2.Enabled:=true;
dbgrid4.columns[0].ButtonStyle:=cbsEllipsis; {
dbgrid4.columns[6].ButtonStyle:=cbsEllipsis;
dbgrid4.columns[5].ButtonStyle:=cbsEllipsis; }
end;

procedure TExtraMaterial.BD5Click(Sender: TObject);
var i:integer;
begin
JGS.Active:=false;
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
  JGS.Active:=true;
  JGDetZ.Active:=true;
  BBTT2.Visible:=false;
  BD5.Enabled:=false;
  BD6.Enabled:=false;
  BO1.Enabled:=true;
  BO2.Enabled:=true;
  BO5.Enabled:=true;
  S2.Enabled:=false;
  DBGrid4.Columns[3].ReadOnly:=true;
  dbgrid4.columns[0].ButtonStyle:=cbsNone;
  except
    Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
    JGS.Active:=true;
    JGDetZ.Active:=true;
  end;
end;

procedure TExtraMaterial.BD6Click(Sender: TObject);
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
BO1.Enabled:=true;
BO2.Enabled:=true;
BO5.Enabled:=true;
S2.Enabled:=false;
DBGrid4.Columns[3].ReadOnly:=true;
dbgrid4.columns[0].ButtonStyle:=cbsNone; {
dbgrid4.columns[6].ButtonStyle:=cbsNone;
dbgrid4.columns[5].ButtonStyle:=cbsNone;  }
end;

procedure TExtraMaterial.BBT1Click(Sender: TObject);
begin
JGMas.First;
end;

procedure TExtraMaterial.BBT2Click(Sender: TObject);
begin
JGMas.prior;
end;

procedure TExtraMaterial.BBT3Click(Sender: TObject);
begin
JGMas.next;
end;

procedure TExtraMaterial.BBT4Click(Sender: TObject);
begin
JGMas.last;
end;

procedure TExtraMaterial.BDT1Click(Sender: TObject);
begin
JGDet.first;
end;

procedure TExtraMaterial.BDT2Click(Sender: TObject);
begin
JGDet.prior;
end;

procedure TExtraMaterial.BDT3Click(Sender: TObject);
begin
JGDet.next;
end;

procedure TExtraMaterial.BDT4Click(Sender: TObject);
begin
JGDet.last;
end;

procedure TExtraMaterial.BD7Click(Sender: TObject);
begin
close;
end;

procedure TExtraMaterial.JGDetAfterOpen(DataSet: TDataSet);
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
BO1.Enabled:=true;
BO2.Enabled:=true;
BO5.Enabled:=true;
if JGDet.recordcount>0 then
  begin
    BO1.Enabled:=true;
    BO2.Enabled:=true;
    BO5.Enabled:=true;
    BO3.Enabled:=false;
    BO4.Enabled:=false;
  end
  else
    begin
      BO1.Enabled:=false;
      BO2.Enabled:=false;
      BO5.Enabled:=false;
      BO3.Enabled:=false;
      BO4.Enabled:=false;
      S2.Enabled:=false;
    end ;
if (NDate-JGMas.FieldByName('USERDATE').value)>14  then
  begin
    BD2.Enabled:=false;
    BD3.Enabled:=false;
    BD4.Enabled:=false;
    BO1.Enabled:=false;
    BO2.Enabled:=false;
    BO5.Enabled:=false;
    NB1.Enabled:=false;
    NB2.Enabled:=false;
    NB3.Enabled:=false;
    NB4.Enabled:=false;
    NB5.Enabled:=false;
    S2.Enabled:=false;
  end;
if JGMas.FieldByName('USERID').value<>main.edit1.text  then
  begin
    BD2.Enabled:=false;
    BD3.Enabled:=false;
    BD4.Enabled:=false;
    BO1.Enabled:=false;
    BO2.Enabled:=false;
    BO5.Enabled:=false;
    NB1.Enabled:=false;
    NB2.Enabled:=false;
    NB3.Enabled:=false;
    NB4.Enabled:=false;
    NB5.Enabled:=false;
    S2.Enabled:=false;
  end;
if  JGMas.FieldByName('CFMID1').value<>'NO'  then
  begin
    BD2.Enabled:=false;
    BD3.Enabled:=false;
    BD4.Enabled:=false;
    BO1.Enabled:=false;
    BO2.Enabled:=false;
    BO5.Enabled:=false;
    NB1.Enabled:=false;
    NB2.Enabled:=false;
    NB3.Enabled:=false;
    NB4.Enabled:=false;
    NB5.Enabled:=false;
    S2.Enabled:=false;
  end;  
if  JGMas.cachedupdates  then
  begin
    BD2.Enabled:=false;
    BD3.Enabled:=false;
    BD4.Enabled:=false;
    BO1.Enabled:=false;
    BO2.Enabled:=false;
    BO5.Enabled:=false;
    NB1.Enabled:=false;
    NB2.Enabled:=false;
    NB3.Enabled:=false;
    NB4.Enabled:=false;
    NB5.Enabled:=false;
    S2.Enabled:=false;
  end; {
if not JGMas.FieldByName('PMARK').isnull  then
  begin
    BD2.Enabled:=false;
    BD3.Enabled:=false;
    BD4.Enabled:=false;
    BO1.Enabled:=false;
    BO2.Enabled:=false;
    BO5.Enabled:=false;
    NB1.Enabled:=false;
    NB2.Enabled:=false;
    NB3.Enabled:=false;
    NB4.Enabled:=false;
    NB5.Enabled:=false;
  end; }
BD5.Enabled:=false;
BD6.Enabled:=false;
dbgrid4.columns[0].ButtonStyle:=cbsNone;
dbgrid4.columns[4].ButtonStyle:=cbsNone;
dbgrid4.columns[5].ButtonStyle:=cbsNone;
end;

procedure TExtraMaterial.DBGrid3DblClick(Sender: TObject);
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

procedure TExtraMaterial.DBGrid3EditButtonClick(Sender: TObject);
begin
BBTT1Click(nil);
end;

procedure TExtraMaterial.DBGrid4EditButtonClick(Sender: TObject);
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

procedure TExtraMaterial.DBGrid3KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
    DBGrid3DblClick(nil);
end;

procedure TExtraMaterial.BBTT1Click(Sender: TObject);
begin
ExtraMat_ZS:=TExtraMat_ZS.create(self);
ExtraMat_ZS.show;
end;

procedure TExtraMaterial.BBTT2Click(Sender: TObject);
begin
ExtraMat_CL:=TExtraMat_CL.create(self);
ExtraMat_CL.show;
end;

procedure TExtraMaterial.JGMasAfterOpen(DataSet: TDataSet);
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

procedure TExtraMaterial.PC1Change(Sender: TObject);
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

procedure TExtraMaterial.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
edit3.SetFocus;
end;

procedure TExtraMaterial.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
button1click(nil);
end;

procedure TExtraMaterial.BDT5Click(Sender: TObject);  
var i:integer;
begin
if JGDet.RequestLive then
  begin
    showmessage('Pls save data first.');
    abort;
  end;
if JGS.RequestLive then
  begin
    showmessage('Pls save data first.');
    abort;
  end  ;



JGDet.cachedupdates:=true;
JGDet.RequestLive:=true;
JGDet.First;
JGS.First;
if messagedlg('6 Order List only or All Order List?',mtinformation,[mbYes,mbNo],0)=mrYes then
  begin
    while not JGDet.Eof do
      begin
        if JGS.recordcount>0 then
          begin
            if JGS.recordcount<=6 then
              begin
                JGS.First;
                while not JGS.Eof do
                  begin
                    if not JGDet.FieldByName('Memo').isnull then
                      begin
                        JGDet.Edit;
                        JGDet.FieldByName('Memo').asstring:=JGDet.FieldByName('Memo').asstring+' '+JGS.fieldbyname('ZLBH').Value;
                      end
                      else
                        begin
                          JGDet.Edit;
                          JGDet.FieldByName('Memo').asstring:=' '+JGS.fieldbyname('ZLBH').Value;
                        end;
                    JGS.Next;
                  end;
              end
              else
                begin
                  for i:=1 to 4  do
                    begin
                      if not JGDet.FieldByName('Memo').isnull then
                        begin
                          JGDet.Edit;
                          JGDet.FieldByName('Memo').asstring:=JGDet.FieldByName('Memo').asstring+' '+JGS.fieldbyname('ZLBH').Value;
                        end
                        else
                          begin
                            JGDet.Edit;
                            JGDet.FieldByName('Memo').asstring:=' '+JGS.fieldbyname('ZLBH').Value;
                          end;
                      JGS.Next;
                    end;
                  JGDet.FieldByName('Memo').asstring:=JGDet.FieldByName('Memo').asstring+'......';
                  JGS.Last;
                  for i:=1 to 2   do
                    begin
                      JGS.Prior;
                    end;
                  while not JGS.Eof do
                    begin
                      JGDet.FieldByName('Memo').asstring:=JGDet.FieldByName('Memo').asstring+' '+JGS.fieldbyname('ZLBH').Value;
                      JGS.Next;
                    end;
                end;
          end;
        JGDet.Next;
      end;
  end
  else
    begin
      while not JGDet.Eof do
        begin
          JGS.First;
          while not JGS.Eof do
            begin
              if not JGDet.FieldByName('Memo').isnull then
                begin
                  JGDet.Edit;
                  JGDet.FieldByName('Memo').asstring:=JGDet.FieldByName('Memo').asstring+' '+JGS.fieldbyname('ZLBH').Value;
                end
                else
                  begin
                    JGDet.Edit;
                    JGDet.FieldByName('Memo').asstring:=' '+JGS.fieldbyname('ZLBH').Value;
                  end;
              JGS.Next;
            end;
          JGDet.Next;
        end;
    end;
ExtraMat_Print:=TExtraMat_Print.Create(nil);
if  messagedlg('Print or Mail?',mtinformation,[mbYes,mbNo],0)<>mrNo then
  begin
    with ExtraMat_Print do
      begin
        L1.caption:='';
        L2.caption:='';
        L3.caption:='';
        L4.caption:='';
        L5.caption:='';
        L6.caption:='';
        L7.caption:='';
        L8.caption:='';  
        L9.caption:='';
        L10.caption:='';
        L11.caption:='';
        L12.caption:='';
        L13.caption:='';
        L14.caption:='';
        L15.caption:='';
      end;
  end;
ExtraMat_Print.quickrep1.prepare;
ExtraMat_Print.Qpage1.caption:=inttostr(ExtraMat_Print.quickrep1.QRPrinter.pagecount);
ExtraMat_Print.quickrep1.preview;
ExtraMat_Print.Free;

JGDet.Active:=false;
JGDet.cachedupdates:=false;
JGDet.RequestLive:=false;
JGDet.Active:=true;
with JGMas do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
    if fieldbyname('PMARK').isnull then
      begin
        fieldbyname('PMARK').value:=1;
      end
      else
        begin
          fieldbyname('PMARK').value:=fieldbyname('PMARK').value+1;
        end;
    UPMAS.Apply(ukmodify);
    requestlive:=false;
    cachedupdates:=false;
  end;

end;

procedure TExtraMaterial.BDT6Click(Sender: TObject);
begin
{Quotation:=TQuotation.create(self);
Quotation.show;}
end;

procedure TExtraMaterial.JGDetCalcFields(DataSet: TDataSet);
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

procedure TExtraMaterial.DBGrid3ColExit(Sender: TObject);
begin
if DBGrid3.selectedfield.fieldname=CB1.datafield then
  CB1.Visible:=false;
end;

procedure TExtraMaterial.BO1Click(Sender: TObject);
begin
if JGDet.RequestLive then
  begin
    showmessage('Pls save material data first.');
    abort;
  end;
if (NDate-JGMas.FieldByName('USERDATE').value)>10  then
  begin
    showmessage('more than 10 days, can not modify.');
    abort;
  end;
with JGS do
  begin
    requestlive:=true;
    cachedupdates:=true;
    insert;
  end;
BO3.Enabled:=true;
BO4.Enabled:=true;
BD2.Enabled:=false;
BD3.Enabled:=false;
BD4.Enabled:=false;
BD7.Enabled:=false;
BDT1.Enabled:=false;
BDT2.Enabled:=false;
BDT3.Enabled:=false;
BDT4.Enabled:=false;
BDT5.Enabled:=false;
dbgrid1.columns[0].ButtonStyle:=cbsEllipsis;
end;

procedure TExtraMaterial.DBGrid1EditButtonClick(Sender: TObject);
begin
if JGdet.RequestLive then
  begin
    showmessage('Can not edit.');
    abort;
  end
  else
    begin
      ExtraMat_Ord:=TExtraMat_Ord.create(self);
      ExtraMat_Ord.show;
    end;
end;

procedure TExtraMaterial.BO2Click(Sender: TObject);
begin
if JGDet.RequestLive then
  begin
    showmessage('Pls save material data first.');
    abort;
  end;

if (NDate-JGMas.FieldByName('USERDATE').value)>10  then
  begin
    showmessage('more than 10 days, can not modify.');
    abort;
  end;

with JGS do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
    fieldbyname('YN').Value:='0';
  end;
BO3.Enabled:=true;
BO4.Enabled:=true; 
BD2.Enabled:=false;
BD3.Enabled:=false;
BD4.Enabled:=false;
BD7.Enabled:=false;
BDT1.Enabled:=false;
BDT2.Enabled:=false;
BDT3.Enabled:=false;
BDT4.Enabled:=false;
BDT5.Enabled:=false;
dbgrid1.columns[0].ButtonStyle:=cbsEllipsis;
end;

procedure TExtraMaterial.BO5Click(Sender: TObject);
begin
if JGDet.RequestLive then
  begin
    showmessage('Pls save material data first.');
    abort;
  end;

if (NDate-JGMas.FieldByName('USERDATE').value)>10  then
  begin
    showmessage('more than 10 days, can not modify.');
    abort;
  end;
  
with JGs do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
BO3.Enabled:=true;
BO4.Enabled:=true;
BD2.Enabled:=false;
BD3.Enabled:=false;
BD4.Enabled:=false;
BD7.Enabled:=false;
BDT1.Enabled:=false;
BDT2.Enabled:=false;
BDT3.Enabled:=false;
BDT4.Enabled:=false;
BDT5.Enabled:=false;
dbgrid1.columns[0].ButtonStyle:=cbsEllipsis;
end;

procedure TExtraMaterial.BO3Click(Sender: TObject);
var i:integer;
Qty:real;
begin
try
    JGs.first;
    for i:=1 to JGs.RecordCount do
      begin
        case JGs.updatestatus of
          usinserted:
            begin
              if JGs.fieldbyname('ZLBH').isnull then
                begin
                  JGs.delete;
                end
                 else
                   begin
                     JGs.edit;
                     JGs.fieldbyname('JGNO').Value:=JGDet.fieldbyname('JGNO').value;
                     JGs.fieldbyname('CLBH').Value:=JGDet.fieldbyname('CLBH').value;
                     JGs.FieldByName('YQDate').Value:=JGDet.fieldbyname('YQDate').value;
                     JGs.FieldByName('CFMDate').Value:=JGDet.fieldbyname('CFMDate').value;
                     JGs.FieldByName('userID').Value:=main.edit1.text;
                     JGs.FieldByName('userdate').Value:=date;
                     JGs.FieldByName('YN').Value:='1';
                     UpOrdMat.apply(ukinsert);
                   end;
            end;
          usmodified:
             begin
              if JGs.fieldbyname('YN').value='0'then
                begin
                  UpOrdMat.apply(ukdelete);
                end
                else
                  begin
                    if (NDate-JGMas.FieldByName('USERDATE').value)<10  then
                      begin
                        JGs.edit;
                        JGs.FieldByName('userID').Value:=main.edit1.text;
                        JGs.FieldByName('userdate').Value:=date;
                        uPOrdMat.apply(ukmodify);
                      end
                      else
                        begin
                          showmessage('Date>10, can not modify.');
                        end;
                  end;
             end;
        end;
        JGs.next;
      end;
JGs.active:=false;
JGs.cachedupdates:=false;
JGs.requestlive:=false;
JGs.active:=true;
JGS.First;
Qty:=0;
while not JGS.eof do
  begin
    Qty:=Qty+JGS.fieldbyname('Qty').Value;
    JGS.next;
  end;

with JGDet do
  begin
    RequestLive:=true;
    CachedUpdates:=true;
    Edit;
    FieldByName('Qty').Value:=Qty;
    UpDet.Apply(ukmodify);
    active:=false;
    RequestLive:=false;
    CachedUpdates:=false;
    active:=true;
  end;
BO3.enabled:=false;
BO4.enabled:=false;
BD2.Enabled:=true;
BD3.Enabled:=true;
BD4.Enabled:=true;
BD7.Enabled:=true;
BDT1.Enabled:=true;
BDT2.Enabled:=true;
BDT3.Enabled:=true;
BDT4.Enabled:=true;
BDT5.Enabled:=true;
dbgrid1.columns[0].ButtonStyle:=cbsnone;
except
  Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
end;

end;

procedure TExtraMaterial.BO4Click(Sender: TObject);
begin
with JGs do
  begin
    active:=false;
    requestlive:=false;
    cachedupdates:=false;
    active:=true;
  end;
BO3.enabled:=false;
BO4.enabled:=false;
BD2.Enabled:=true;
BD3.Enabled:=true;
BD4.Enabled:=true;
BD7.Enabled:=true;
BDT1.Enabled:=true;
BDT2.Enabled:=true;
BDT3.Enabled:=true;
BDT4.Enabled:=true;
BDT5.Enabled:=true;
dbgrid3.columns[0].ButtonStyle:=cbsnone;
end;

procedure TExtraMaterial.NB1Click(Sender: TObject);
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

procedure TExtraMaterial.NB2Click(Sender: TObject);
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
ExtraMat_ZL:=TExtraMat_ZL.create(self);
ExtraMat_ZL.show;
NB5.Enabled:=true;
end;

procedure TExtraMaterial.NB3Click(Sender: TObject);
begin
DBGrid2.columns[3].readonly:=false;
NB5.Enabled:=true;
end;

procedure TExtraMaterial.NB5Click(Sender: TObject);
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

DBGrid2.columns[3].readonly:=true;
NB5.Enabled:=false;
end;

procedure TExtraMaterial.NB4Click(Sender: TObject);
begin
JGDetZ.Edit;
JGDetZ.FieldByName('YN').Value:='0';
NB5.Enabled:=true;
end;

procedure TExtraMaterial.JGDetZCalcFields(DataSet: TDataSet);
begin
JGDetZ.FieldByName('zQty').Value:=trunc(JGDetZ.FieldByName('Qty').Value*JGDet.FieldByName('Qty').Value*100+0.5)/100 ;
end;   

procedure TExtraMaterial.S2Click(Sender: TObject);
begin
ExtraMat_Mat:=TExtraMat_Mat.create(self);
ExtraMat_Mat.show;

end;

procedure TExtraMaterial.DBGrid3GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
if JGMas.FieldByName('YN').value='0' then
  begin
    dbgrid3.canvas.font.color:=clred;
    //dbgrid3.defaultdrawcolumncell(rect,datacol,column,state);
  end;
end;

procedure TExtraMaterial.DBGrid4GetCellParams(Sender: TObject;
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

procedure TExtraMaterial.DBGrid2GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin

 if JGDetZ.FieldByName('YN').value='0' then
  begin
    dbgrid2.canvas.font.color:=clred;
   // dbgrid2.defaultdrawcolumncell(rect,datacol,column,state);
  end;
end;

procedure TExtraMaterial.DBGrid1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin

 if JGS.FieldByName('YN').value='0' then
  begin
    dbgrid1.canvas.font.color:=clred;
    //dbgrid1.defaultdrawcolumncell(rect,datacol,column,state);
  end;

 if JGS.FieldByName('JGNO').isnull then
  begin
    dbgrid1.canvas.font.color:=clLime;
    //dbgrid1.defaultdrawcolumncell(rect,datacol,column,state);
  end;
end;

procedure TExtraMaterial.DBGrid3DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin

if JGMas.cachedupdates then
  begin
    if (gdfocused in state) then
      begin
        if (dbgrid3.SelectedField.fieldname=CB1.datafield) then
          begin
            CB1.left:=rect.left+dbgrid1.left;
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

procedure TExtraMaterial.FormDestroy(Sender: TObject);
begin
ExtraMaterial:=nil;
end;

procedure TExtraMaterial.JGDetZAfterOpen(DataSet: TDataSet);
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

procedure TExtraMaterial.bbt6Click(Sender: TObject);
var   a:string;
      eclApp,WorkBook:olevariant;
      i,j:integer;
 begin
  if  JGMas.active  then
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
        for i:=0 to DBGrid3.Columns.Count-1 do
          eclApp.Cells(1,i+1):=DBGrid3.Columns[i].Title.Caption;
        JGMas.First;
        j:=2;
        while   not   JGMas.Eof   do
        begin
          for i:=0 to DBGrid3.Columns.Count-1 do
            eclApp.Cells(j,i+1):=DBGrid3.Fields[i].Value;
          JGMas.Next;
          inc(j);
        end;
        eclapp.columns.autofit;
        eclApp.Visible:=True;
        showmessage('Succeed');
      except
        on   F:Exception   do
          showmessage(F.Message);
      end;
    end;
end;

end.
