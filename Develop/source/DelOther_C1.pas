unit DelOther_C1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, StdCtrls, DBCtrls, Grids, DBGrids, Mask, ComCtrls,
  Buttons, ExtCtrls,math, GridsEh, DBGridEh;

type
  TDelOther_C = class(TForm)
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
    PC1: TPageControl;
    TS3: TTabSheet;
    Panel4: TPanel;
    Label9: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    DBEdit3: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit7: TDBEdit;
    BBTT1: TBitBtn;
    DBGrid3: TDBGridEh;
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
    DBGrid4: TDBGridEh;
    DelDet: TQuery;
    DelDetLLNO: TStringField;
    DelDetCLBH: TStringField;
    DelDetYWPM: TStringField;
    DelDetDWBH: TStringField;
    DelDetTempQty: TCurrencyField;
    DelDetQty: TCurrencyField;
    DelDetUSPrice: TCurrencyField;
    DelDetCWHL: TIntegerField;
    DelDetCostID: TStringField;
    DelDetSCBH: TStringField;
    DelDetUSERDATE: TDateTimeField;
    DelDetUSERID: TStringField;
    DelDetYN: TStringField;
    DelDetDFL: TStringField;
    DelDetCLSL: TCurrencyField;
    UPDet: TUpdateSQL;
    DS4: TDataSource;
    DS3: TDataSource;
    DelMas: TQuery;
    DelMasLLNO: TStringField;
    DelMasSCBH: TStringField;
    DelMasDepID: TStringField;
    DelMasDepName: TStringField;
    DelMasUSERDATE: TDateTimeField;
    DelMasUSERID: TStringField;
    DelMasCFMDate: TDateTimeField;
    DelMasCFMID: TStringField;
    DelMasYN: TStringField;
    UpMas: TUpdateSQL;
    Qtemp: TQuery;
    DelDetPerson: TFloatField;
    DelDetVNPrice: TFloatField;
    DelMasGSBH: TStringField;
    DelMasCKBH: TStringField;
    BDelRec: TQuery;
    DelMasPMark: TIntegerField;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Edit1: TEdit;
    CBX1: TComboBox;
    Button1: TButton;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    Check: TCheckBox;
    DelDetYYBH: TStringField;
    DelDetVNACC: TFloatField;
    DelDetMEMO: TStringField;
    DelDetBLSB: TStringField;
    DelDetZWPM: TStringField;
    procedure BB1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BB7Click(Sender: TObject);
    procedure BD7Click(Sender: TObject);
    procedure BB2Click(Sender: TObject);
    procedure BB3Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure BD2Click(Sender: TObject);
    procedure BD3Click(Sender: TObject);
    procedure BD4Click(Sender: TObject);
    procedure BD5Click(Sender: TObject);
    procedure BD6Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure BBT1Click(Sender: TObject);
    procedure BBT2Click(Sender: TObject);
    procedure BBT3Click(Sender: TObject);
    procedure BBT4Click(Sender: TObject);
    procedure BDT1Click(Sender: TObject);
    procedure BDT2Click(Sender: TObject);
    procedure BDT3Click(Sender: TObject);
    procedure BDT4Click(Sender: TObject);
    procedure DelDetAfterOpen(DataSet: TDataSet);
    procedure PC1Change(Sender: TObject);
    procedure DBGrid3DblClick(Sender: TObject);
    procedure DBGrid3EditButtonClick(Sender: TObject);
    procedure DBGrid4EditButtonClick(Sender: TObject);
    procedure BDT5Click(Sender: TObject);
    procedure DelDetCalcFields(DataSet: TDataSet);
    procedure DBGrid3KeyPress(Sender: TObject; var Key: Char);
    procedure BBTT1Click(Sender: TObject);
    procedure DelMasAfterOpen(DataSet: TDataSet);
    procedure FormDestroy(Sender: TObject);
    procedure DBGrid3GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure DBGrid4GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure BBTT2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DelOther_C: TDelOther_C;
  NDate:TDate;

implementation

uses main1, DelOther_C_Print1, DelOther_Print1, DelOther_C_Dep1,
   DelOther_C_Mat1, DelOther_C_SCBH1;

{$R *.dfm}

procedure TDelOther_C.BB1Click(Sender: TObject);
begin
panel2.Visible:=true;
end;

procedure TDelOther_C.Button1Click(Sender: TObject);
begin
with DelMas do
  begin
    active:=false;
    sql.Clear;
    sql.add('select KCLL.*,BDepartment.DepName  ');
    sql.add('from KCLL');
    sql.add('left join BDepartment on KCLL.DepID=BDepartment.ID');
    sql.add('where KCLL.LLNO like ');
    sql.add(''''+edit1.Text+'%'+'''');
    if CBX1.itemindex<>0 then
      begin
        sql.add('and BDepartment.DepName like ');
        sql.add(''''+CBX1.Text+'%'+'''');
      end;
    sql.add('and convert(smalldatetime,convert(varchar,KCLL.USERDATE,111)) between ');
    sql.add(''''+formatdatetime('yyyy/MM/dd',DTP1.Date) +'''');
    sql.add(' and  ');
    sql.add(''''+formatdatetime('yyyy/MM/dd',DTP2.Date) +'''');
    sql.add('and KCLL.SCBH='+''''+'WWWWWWWWWW'+'''');
    sql.add('and KCLL.GSBH='+''''+main.Edit2.Text+'''');  
    if Check.Checked then
      begin
        sql.Add('and KCLL.USERID='+''''+main.Edit1.Text+'''');
      end;
    sql.add('order by LLNO DESC');
    active:=true;
  end;
panel2.Visible:=false;
BB2.Enabled:=true;
BB3.Enabled:=true;
BB4.Enabled:=true;
BBT1.Enabled:=true;
BBT2.Enabled:=true;
BBT3.Enabled:=true; 
check.Checked:=true;
BBT4.Enabled:=true;
BBT6.Enabled:=true;
DelDet.Active:=true;
end;

procedure TDelOther_C.FormCreate(Sender: TObject);
var i:integer;
begin
with Qtemp do
  begin
    active:=false;
    sql.Clear;
    sql.add('select ID,DepName from BDepartment');
    sql.add('where GSBH='+''''+main.Edit2.Text+'''');
    sql.add('order by ID');
    active:=true;
    for i:=1 to recordcount do
      begin
        CBX1.Items.Add(fieldbyname('DepName').asstring);
        next;
      end;
    CBX1.itemindex:=0; 
    active:=false;
    sql.Clear;
    sql.add('select CKBH from KCCK order by CKBH');
    active:=true;
    //DBX2.Items.Clear;
    for i:=1 to recordcount do
      begin
        DBGrid3.Columns[4].picklist.Add(fieldbyname('CKBH').asstring);
        next;
      end;
    active:=false;
    sql.Clear;
    sql.add('select getdate() as NDate ');
    active:=true;
    NDate:=fieldbyname('NDate').Value;
    active:=false;
    sql.Clear;
    sql.add('select distinct DFL from XXBWFLS order by DFL');
    active:=true;
    for i:=1 to recordcount do
      begin
        DBGrid4.Columns[5].picklist.Add(fieldbyname('DFL').asstring);
        next;
      end;
    active:=false;
  end;
PC1.ActivePage:=TS3;
DTP1.Date:=date-3;
DTP2.date:=date;

end;

procedure TDelOther_C.FormClose(Sender: TObject; var Action: TCloseAction);
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

procedure TDelOther_C.BB7Click(Sender: TObject);
begin
close;
end;

procedure TDelOther_C.BD7Click(Sender: TObject);
begin
close;
end;

procedure TDelOther_C.BB2Click(Sender: TObject);
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
dbgrid3.columns[2].ButtonStyle:=cbsEllipsis;
end;

procedure TDelOther_C.BB3Click(Sender: TObject);
begin
if DelDet.recordcount=0 then
  begin
    with DelMas do
      begin
        requestlive:=true;
        cachedupdates:=true;
        edit;
        fieldbyname('YN').Value:='0';
      end;
  end
    else
      begin
        showmessage('Pls delete the Deliver Detail first.')
      end;
BBTT1.Visible:=true;
BB5.Enabled:=true;
BB6.Enabled:=true;
dbgrid3.columns[2].ButtonStyle:=cbsEllipsis;
end;

procedure TDelOther_C.BB4Click(Sender: TObject);
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
dbgrid3.columns[2].ButtonStyle:=cbsEllipsis;
end;

procedure TDelOther_C.BB5Click(Sender: TObject);
var y,m,a:string;
i:integer;
begin
with Qtemp do          //取服務器的年月值
  begin
    active:=false;
    sql.Clear;
    sql.Add('select year(getdate()) as FY,month(getdate()) as FM,getdate() as NDate ');
    active:=true;
    y:=fieldbyname('FY').asstring;
    m:=fieldbyname('FM').asstring;
    NDate:=fieldbyname('NDate').Value;
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
                end
                 else
                   begin
                     with Qtemp do    //計算領料單流水號
                       begin
                         active:=false;
                         sql.Clear;
                         sql.Add('select LLNO from KCLL where LLNO like '+''''+y+m+'%'+'''');
                         sql.add('order by LLNO');
                         active:=true;
                         if recordcount >0 then
                           begin
                             last;
                             a:=fieldbyname('LLNO').AsString;
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
                     DelMas.edit;
                     DelMas.fieldbyname('LLNO').Value:=a;   
                     DelMas.fieldbyname('GSBH').Value:=main.Edit2.Text;
                     DelMas.fieldbyname('SCBH').Value:='WWWWWWWWWW' ;
                     DelMas.FieldByName('userID').Value:=main.edit1.text;
                     DelMas.FieldByName('userdate').Value:=Ndate;
                     DelMas.FieldByName('CFMID').Value:='NO';
                     DelMas.FieldByName('YN').Value:='1';
                     upMas.apply(ukinsert);
                   end;
            end;
          usmodified:
             begin
               if DelMas.FieldByName('USERID').value<>main.Edit1.Text then
                 begin
                   showmessage('不是你的，不要亂動。khong phai ban khong duoc tu sua');
                 end
                 else
                   begin
                     if DelMas.fieldbyname('YN').value='0'then
                       begin   
                         with BDelRec do
                           begin
                             active:=false;
                             sql.Clear;
                             sql.add('insert into BDelRec ');
                             sql.add('(TableName ,TNO,CLBH,OldID,DelID,DelDate)');
                             sql.add('values ('+''''+'KCLL'+''''+','+''''+DelMas.fieldbyname('LLNO').Value+'''');
                             sql.add(','+''''+' '+''''+','+''''+DelMas.fieldbyname('USERID').Value+''''+',');
                             sql.add(''''+main.Edit1.Text+''''+',getdate())');
                             execsql;
                             active:=false;
                           end;
                         upMas.apply(ukdelete);
                       end
                       else
                         begin
                           if (DelMas.FieldByName('CFMID').value='NO')   then
                             begin
                               if (NDate-DelMas.FieldByName('USERDATE').value)<=3  then
                                 begin
                                   DelMas.edit;
                                   DelMas.FieldByName('userID').Value:=main.edit1.text;
                                   DelMas.FieldByName('userdate').Value:=Ndate;
                                   upMas.apply(ukmodify);
                                 end
                                 else
                                   begin
                                     showmessage('Date>3, can not modify.');
                                   end;
                             end
                             else
                               begin
                                 showmessage('Already confirmed, can not modify.');
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

procedure TDelOther_C.BD2Click(Sender: TObject);
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
dbgrid4.columns[0].ButtonStyle:=cbsEllipsis;
dbgrid4.columns[4].ButtonStyle:=cbsEllipsis;
end;

procedure TDelOther_C.BD3Click(Sender: TObject);
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
dbgrid4.columns[0].ButtonStyle:=cbsEllipsis;
dbgrid4.columns[4].ButtonStyle:=cbsEllipsis;
end;

procedure TDelOther_C.BD4Click(Sender: TObject);
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
dbgrid4.columns[0].ButtonStyle:=cbsEllipsis;  
dbgrid4.columns[4].ButtonStyle:=cbsEllipsis;
end;

procedure TDelOther_C.BD5Click(Sender: TObject);
var i:integer;
N:single;
begin
N:=0;
with DelDet do
  begin
    first;
    while not DelDet.Eof do
      begin
        if DelDet.FieldByName('TempQty').IsNull then
          begin
            showmessage('The Qty can not be empty.');
            abort;
          end;
        if DelDet.FieldByName('DFL').IsNull then
          begin
            showmessage('The DFL can not be empty.');
            abort;
          end;   
        if DelDet.FieldByName('SCBH').IsNull then
          begin
            showmessage('The SCBH can not be empty.');
            abort;
          end;
        next;
      end;
    N:=DelDet.fieldbyname('TempQty').Value+N;
    Label17.Caption:=floattostr(roundto(N,-2));
  end;

{with DelDet do
  begin
    first;
    while not DelDet.Eof do
      begin
        if DelDet.FieldByName('Qty').IsNull then
          begin
            showmessage('The Qty can not be empty.');
            abort;
          end;
        next;
      end;
  end;   }
try
    DelDet.first;
    for i:=1 to DelDet.RecordCount do
      begin
        case DelDet.updatestatus of
          usinserted:
            begin  
              if DelMas.FieldByName('USERID').value<>main.Edit1.Text then
                begin
                  showmessage('不是你的，不要亂動。khong phai ban khong duoc tu sua');
                end
                else
                  begin
                    if DelDet.fieldbyname('CLBH').isnull then
                      begin
                        DelDet.delete;
                      end
                      else
                        begin
                          DelDet.edit;
                          if DelDet.fieldbyname('SCBH').isnull then
                            begin
                              DelDet.fieldbyname('SCBH').Value:=DelMas.fieldbyname('SCBH').Value;
                            end;
                          DelDet.fieldbyname('Qty').Value:=Deldet.fieldbyname('TempQty').Value;
                          DelDet.fieldbyname('LLNO').Value:=DelMas.fieldbyname('LLNO').Value;
                          DelDet.FieldByName('userID').Value:=main.edit1.text;  
                          ///DelDet.FieldByName('SCBH').Value:='ZZZZZZZZZZ';
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
                   showmessage('不是你，不要亂動。khong phai ban khong duoc tu sua');
                 end
                 else
                   begin
                    if DelDet.fieldbyname('YN').value='0'then
                      begin 
                         with BDelRec do
                           begin
                             active:=false;
                             sql.Clear;
                             sql.add('insert into BDelRec ');
                             sql.add('(TableName ,TNO,CLBH,OldID,DelID,DelDate)');
                             sql.add('values ('+''''+'KCLLS'+''''+','+''''+DelDet.fieldbyname('LLNO').Value+'''');
                             sql.add(','+''''+DelDet.fieldbyname('CLBH').Value+''''+','+''''+DelDet.fieldbyname('USERID').Value+''''+',');
                             sql.add(''''+main.Edit1.Text+''''+',getdate())');
                             execsql;
                             active:=false;
                           end;
                        UpDet.apply(ukdelete);
                      end
                      else
                        begin
                          DelDet.edit;
                          DelDet.fieldbyname('Qty').Value:=Deldet.fieldbyname('TempQty').Value;
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
dbgrid4.columns[4].ButtonStyle:=cbsNone;
except
  Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
end;


end;

procedure TDelOther_C.BD6Click(Sender: TObject);
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
dbgrid4.columns[0].ButtonStyle:=cbsNone;    
dbgrid4.columns[4].ButtonStyle:=cbsNone;
end;

procedure TDelOther_C.BB6Click(Sender: TObject);
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
dbgrid3.columns[2].ButtonStyle:=cbsnone;
end;

procedure TDelOther_C.BBT1Click(Sender: TObject);
begin
DelMas.First;
end;

procedure TDelOther_C.BBT2Click(Sender: TObject);
begin
DelMas.prior;
end;

procedure TDelOther_C.BBT3Click(Sender: TObject);
begin
DelMas.next;
end;

procedure TDelOther_C.BBT4Click(Sender: TObject);
begin
DelMas.last;
end;

procedure TDelOther_C.BDT1Click(Sender: TObject);
begin
DelDet.First;
end;

procedure TDelOther_C.BDT2Click(Sender: TObject);
begin
DelDet.prior;
end;

procedure TDelOther_C.BDT3Click(Sender: TObject);
begin
DelDet.next;
end;

procedure TDelOther_C.BDT4Click(Sender: TObject);
begin
DelDet.last;
end;

procedure TDelOther_C.DelDetAfterOpen(DataSet: TDataSet);
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
BDT6.Enabled:=true;
if (NDate-DelMas.FieldByName('USERDATE').value)>2  then
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
if not DelMas.FieldByName('PMARK').isnull  then
  begin
    BD2.Enabled:=false;
    BD3.Enabled:=false;
    BD4.Enabled:=false;
  end;

BD5.Enabled:=false;
BD6.Enabled:=false;
end;

procedure TDelOther_C.PC1Change(Sender: TObject);
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

procedure TDelOther_C.DBGrid3DblClick(Sender: TObject);
begin
if  DelMas.Active then
  begin
    if  (DelMas.recordcount>0) then
      begin
        PC1.ActivePage:=TS4;
        panel1.Visible:=false;
        panel6.Visible:=true;
      end;
  end;
end;

procedure TDelOther_C.DBGrid3EditButtonClick(Sender: TObject);
begin
BBTT1Click(nil);
end;

procedure TDelOther_C.DBGrid4EditButtonClick(Sender: TObject);
begin
if DBGrid4.selectedfield.fieldname='CLBH' then
  begin
    BBTT2click(nil);
  end;
if DBGrid4.selectedfield.fieldname='SCBH' then
  begin
    DelOther_C_SCBH:=TDelOther_C_SCBH.create(self);
    DelOther_C_SCBH.show;
  end;
end;

procedure TDelOther_C.BDT5Click(Sender: TObject);
begin
if DelDet.RequestLive then
  begin
    showmessage('Pls save data first.');
    abort;
  end
    else
      begin
        DelOther_C_Print:=TDelOther_C_Print.Create(nil);
        DelOther_C_Print.quickrep1.prepare;
        DelOther_C_Print.Qpage1.caption:=inttostr(DelOther_C_Print.quickrep1.QRPrinter.pagecount);
        DelOther_C_Print.quickrep1.preview;   
        DelDet.active:=false;
        DelDet.active:=true;
        DelOther_C_Print.Free;
      end;  
with DelMas do
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


procedure TDelOther_C.DelDetCalcFields(DataSet: TDataSet);
begin
if deldet.FieldByName('CLSL').value<>0 then
  begin
     deldet.FieldByName('Person').value:=deldet.FieldByName('tempqty').value/deldet.FieldByName('CLSL').value*100;
  end;
end;

procedure TDelOther_C.DBGrid3KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
    DBGrid3DblClick(nil);
end;

procedure TDelOther_C.BBTT1Click(Sender: TObject);
begin
DelOther_C_Dep:=TDelOther_C_Dep.Create(self);
DelOther_C_Dep.Show;
end;

procedure TDelOther_C.DelMasAfterOpen(DataSet: TDataSet);
begin
BB5.Enabled:=false;
BB6.Enabled:=false;
BD5.Enabled:=false;
BD6.Enabled:=false;
end;

procedure TDelOther_C.FormDestroy(Sender: TObject);
begin
DelOther_C:=nil;
end;

procedure TDelOther_C.DBGrid3GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
     {
if DelMas.cachedupdates then
  begin
    DBX2.BringToFront;
    if (gdfocused in state) then
      begin
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
    DBX2.Visible:=false;   }

    
if DelMas.FieldByName('YN').value='0' then
  begin
    dbgrid3.canvas.font.color:=clred;
    //dbgrid3.defaultdrawcolumncell(rect,datacol,column,state);
  end;
end;

procedure TDelOther_C.DBGrid4GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin

 if DelDet.FieldByName('YN').value='0' then
  begin
    dbgrid4.canvas.font.color:=clred;
    //dbgrid4.defaultdrawcolumncell(rect,datacol,column,state);
  end;

 if DelDet.FieldByName('LLNO').isnull then
  begin
    dbgrid4.canvas.font.color:=clLime;
    //dbgrid4.defaultdrawcolumncell(rect,datacol,column,state);
  end;
end;

procedure TDelOther_C.BBTT2Click(Sender: TObject);
begin
DelOther_C_Mat:=TDelOther_C_Mat.create(self);
DelOther_C_Mat.show;
end;

end.
