unit RWeightp1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, StdCtrls, DBCtrls, Grids, DBGrids, Mask, ComCtrls,
  Buttons, ExtCtrls,math, GridsEh, DBGridEh, ComObj;

type
  TRWeightp = class(TForm)
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
    BDT6: TBitBtn;
    PC1: TPageControl;
    TS3: TTabSheet;
    DBGrid3: TDBGridEh;
    TS4: TTabSheet;
    DBGrid4: TDBGridEh;
    GSPFS: TQuery;
    UPDet: TUpdateSQL;
    DS4: TDataSource;
    DS3: TDataSource;
    GSPF: TQuery;
    UpMas: TUpdateSQL;
    Query1: TQuery;
    Panel2: TPanel;
    Label2: TLabel;
    Edit1: TEdit;
    CBX1: TComboBox;
    Button1: TButton;
    Label1: TLabel;
    Label3: TLabel;
    Edit2: TEdit;
    Panel3: TPanel;
    Label4: TLabel;
    DBEdit1: TDBEdit;
    Label7: TLabel;
    DBEdit3: TDBEdit;
    Label6: TLabel;
    DBEdit7: TDBEdit;
    GSPFGSBH: TStringField;
    GSPFPFBH1: TStringField;
    GSPFPFBH2: TStringField;
    GSPFUSERID: TStringField;
    GSPFUSERDATE: TDateTimeField;
    GSPFYN: TStringField;
    GSPFSGSBH: TStringField;
    GSPFSPFBH2: TStringField;
    GSPFSCLDH: TStringField;
    GSPFSUSERID: TStringField;
    GSPFSUSERDATE: TDateTimeField;
    GSPFSywpm: TStringField;
    GSPFSzwpm: TStringField;
    GSPFSclyl: TFloatField;
    GSPFSYN: TStringField;
    Panel4: TPanel;
    Label5: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    DBEdit2: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    GSPFinvisible: TIntegerField;
    GSPFSTPrint: TIntegerField;
    GSPFScldhz: TStringField;
    Edit3: TEdit;
    DBEdit6: TDBEdit;
    Label10: TLabel;
    GSPFclbhsb: TStringField;
    GSPFclylsb: TStringField;
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
    procedure GSPFSAfterOpen(DataSet: TDataSet);
    procedure PC1Change(Sender: TObject);
    procedure DBGrid3DblClick(Sender: TObject);
    procedure GSPFAfterOpen(DataSet: TDataSet);
    procedure FormDestroy(Sender: TObject);
    procedure DBGrid3GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure DBGrid4GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure bbt6Click(Sender: TObject);
    procedure BDT6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RWeightp: TRWeightp;
  NDate:TDate;

implementation

uses main1;

{$R *.dfm}

procedure TRWeightp.BB1Click(Sender: TObject);
begin
panel2.Visible:=true;
end;

procedure TRWeightp.Button1Click(Sender: TObject);
begin
  with GSPF do
  begin
    active:=false;
    sql.Clear;
    sql.add('select GSPF.*, (select top 1 ''1'' from GSPFS where GSPF.GSBH = GSPFS.GSBH and GSPF.PFBH2 = GSPFS.PFBH2) as CLBHSB, (select top 1 ''1'' from clzlsl where GSPF.PFBH2 = clzlsl.cldh) as clylsb');
    sql.add('from GSPF                                    ');
    sql.add('where GSPF.GSBH =  ''' + CBX1.Text + '''     ');
    sql.add('  and GSPF.PFBH1 like ''' + edit1.text + '%''');
    sql.add('  and GSPF.PFBH2 like ''' + edit2.text + '%''');
    sql.add('order by clbhsb desc, pfbh2 asc');
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
BBT6.Enabled:=true;
GSPFS.Active:=true;
end;

procedure TRWeightp.FormCreate(Sender: TObject);
begin

  // 使用者初始值
  if main <> nil then
    Edit3.Text := main.Edit1.Text
  else
    Edit3.Text := 'system';

  with Query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select getdate() as NDate ');
    active:=true;
    NDate:=fieldbyname('NDate').Value;
    active:=false;
  end;
  PC1.ActivePage:=TS3;
end;

procedure TRWeightp.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if BB5.enabled  then
  begin
    messagedlg('You have to save data Record of report first.',mtwarning,[mbyes],0);
    PC1.ActivePage:=TS3;
    action:=canone;
  end
  else
    begin
      if BD5.enabled then
        begin
          messagedlg('You have to save data Report first.',mtwarning,[mbyes],0);
          PC1.ActivePage:=TS4;
          action:=canone;
        end
          else
            begin
              action:=Cafree;
            end;
    end;
end;

procedure TRWeightp.BB7Click(Sender: TObject);
begin
close;
end;

procedure TRWeightp.BD7Click(Sender: TObject);
begin
close;
end;

procedure TRWeightp.BB2Click(Sender: TObject);
begin
  with GSPF do
  begin
    requestlive:=true;
    cachedupdates:=true;
    insert;
    FieldByName('GSBH').Value := CBX1.Text;
    FieldByName('invisible').Value := 1;
  end;

  BB5.Enabled:=true;
  BB6.Enabled:=true;
end;

procedure TRWeightp.BB3Click(Sender: TObject);
begin

  if GSPFS.Locate( 'TPrint', 1, []) then
  begin
    if messagedlg('sure to delete all detail data ???',mtconfirmation,[mbYes,mbNo],0)=mrNo then
      Abort;
  end;

  with GSPF do
    begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
    fieldbyname('YN').Value := '0';
  end;

  BB5.Enabled:=true;
  BB6.Enabled:=true;
end;

procedure TRWeightp.BB4Click(Sender: TObject);
begin
  with GSPF do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;

  BB5.Enabled:=true;
  BB6.Enabled:=true;
end;

procedure TRWeightp.BB5Click(Sender: TObject);
var i:integer;
begin

  GSPF.first;
  while not GSPF.Eof do
  begin
    if (GSPF.fieldbyname('PFBH1').isnull) or (GSPF.fieldbyname('PFBH2').isnull) then
    begin
      ShowMessage('pls key in PFBH1 and PFBH2 ');
      Abort;
    end;
    GSPF.next;
  end;

  try

    GSPFS.Active:=false;
    GSPF.first;
    for i:=1 to GSPF.RecordCount do
    begin
      case GSPF.updatestatus of
      usinserted:
      begin
        if (GSPF.fieldbyname('GSBH').isnull) or (GSPF.fieldbyname('PFBH1').isnull) or (GSPF.fieldbyname('PFBH2').isnull) then
        begin
          GSPF.delete;
        end
        else
        begin
          GSPF.edit;
          GSPF.FieldByName('userID').Value:=Edit3.Text;
          GSPF.FieldByName('userdate').Value:=Ndate;
          GSPF.FieldByName('YN').Value:='1';
          upMas.apply(ukinsert);
        end;
      end;       //  end of usinserted:
      usmodified:
      begin
        if GSPF.fieldbyname('YN').value = '0' then
        begin
          if GSPF.fieldbyname('userdate').value > now - 7  then
          begin
            with Query1 do
            begin
              active:=false;
              sql.Clear;
              sql.add('delete from GSPFS ');
              sql.add('where GSBH =  ''' + GSPF.fieldbyname('GSBH').Value + '''');
              sql.add('  and PFBH2 =  ''' + GSPF.fieldbyname('PFBH2').Value + '''');
              ExecSQL;
            end;
            upMas.apply(ukdelete);
          end
          else
            ShowMessage('it''s over 7 days. you can''t delete it');
        end
        else
        begin
          if GSPF.fieldbyname('userdate').value > now - 7  then
          begin
            GSPF.edit;
            GSPF.FieldByName('userID').Value:=Edit3.Text;
            GSPF.FieldByName('userdate').Value:=Ndate;
            upMas.apply(ukmodify);
          end
          else
            ShowMessage('it''s over 7 days. you can''t delete it');
        end;
      end;  // end of usmodified:
      end;  // end of case
      GSPF.next;
    end;     // end of for

    GSPF.active:=false;
    GSPF.cachedupdates:=false;
    GSPF.requestlive:=false;
    GSPF.active:=true;
    GSPFS.Active:=true;
    bb5.enabled:=false;
    bb6.enabled:=false;
  except
    Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
  end;
end;

procedure TRWeightp.BD4Click(Sender: TObject);
begin
if GSPF.RequestLive then
  begin
    showmessage('Pls save Master data first.');
    PC1.ActivePage:=TS3;
    panel6.visible:=false;
    panel1.visible:=true;
    abort;
  end;

  with GSPFS do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
  BD5.Enabled:=true;
  BD6.Enabled:=true;
end;

procedure TRWeightp.BD5Click(Sender: TObject);
var i:integer;
N:single;
begin

  try
    GSPFS.first;
    for i:=1 to GSPFS.RecordCount do
    begin
      case GSPFS.updatestatus of
      usmodified:
      begin
        if GSPFS.fieldbyname('TPrint').value = 0 then
        begin
        if GSPFS.Locate( 'GSBH;PFBH2;CLBH', VarArrayOf( [GSPF.FieldByName('GSBH').Value, GSPF.FieldByName('PFBH2').Value, GSPFS.FieldByName('cldhz').Value ] ), []) then
          UpDet.apply(ukdelete);
        end
        else
        begin
          if not GSPFS.Locate( 'GSBH;PFBH2;CLBH', VarArrayOf( [GSPF.FieldByName('GSBH').Value, GSPF.FieldByName('PFBH2').Value, GSPFS.FieldByName('cldhz').Value ] ), []) then
          begin
            GSPFS.edit;
            GSPFS.FieldByName('GSBH').Value := GSPF.FieldByName('GSBH').Value;
            GSPFS.FieldByName('PFBH2').Value := GSPF.FieldByName('PFBH2').Value;
            GSPFS.FieldByName('CLBH').Value := GSPFS.FieldByName('cldhz').Value;
            GSPFS.FieldByName('userID').Value:=Edit3.Text;
            GSPFS.FieldByName('userdate').Value:=Ndate;
            GSPFS.FieldByName('YN').Value:='1';
            upDet.apply(ukinsert);
          end;
        end;
      end;  // end of usinsert
      end;  // end of case
      GSPFS.next;
    end;  // end of for

    GSPFS.active:=false;
    GSPFS.cachedupdates:=false;
    GSPFS.requestlive:=false;
    GSPFS.active:=true;
    bb6.enabled:=false;
    BD5.Enabled:=false;
    BD6.Enabled:=false;
  except
    Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
  end;   
end;

procedure TRWeightp.BD6Click(Sender: TObject);
begin
  with GSPFS do
  begin
    active:=false;
    requestlive:=false;
    cachedupdates:=false;
    active:=true;
  end;
  BD5.Enabled:=false;
  BD6.Enabled:=false;
end;

procedure TRWeightp.BB6Click(Sender: TObject);
begin
  with GSPF do
  begin
    active:=false;
    requestlive:=false;
    cachedupdates:=false;
    active:=true;
  end;

  bb5.enabled:=false;
  bb6.enabled:=false;
end;

procedure TRWeightp.BBT1Click(Sender: TObject);
begin
GSPF.First;
end;

procedure TRWeightp.BBT2Click(Sender: TObject);
begin
GSPF.prior;
end;

procedure TRWeightp.BBT3Click(Sender: TObject);
begin
GSPF.next;
end;

procedure TRWeightp.BBT4Click(Sender: TObject);
begin
GSPF.last;
end;

procedure TRWeightp.BDT1Click(Sender: TObject);
begin
GSPFS.First;
end;

procedure TRWeightp.BDT2Click(Sender: TObject);
begin
GSPFS.prior;
end;

procedure TRWeightp.BDT3Click(Sender: TObject);
begin
GSPFS.next;
end;

procedure TRWeightp.BDT4Click(Sender: TObject);
begin
GSPFS.last;
end;

procedure TRWeightp.GSPFSAfterOpen(DataSet: TDataSet);
begin
BD4.Enabled:=true;
BDT1.Enabled:=true;
BDT2.Enabled:=true;
BDT3.Enabled:=true;
BDT4.Enabled:=true;
BDT6.Enabled:=true;

BD5.Enabled:=false;
BD6.Enabled:=false;
end;

procedure TRWeightp.PC1Change(Sender: TObject);
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

procedure TRWeightp.DBGrid3DblClick(Sender: TObject);
begin
if  GSPFS.Active then
  begin
//    if  (GSPFS.recordcount>0) then
  //    begin
        PC1.ActivePage:=TS4;
        panel1.Visible:=false;
        panel6.Visible:=true;
 //     end;
  end;
end;


procedure TRWeightp.GSPFAfterOpen(DataSet: TDataSet);
begin
BB5.Enabled:=false;
BB6.Enabled:=false;
BD5.Enabled:=false;
BD6.Enabled:=false;
end;

procedure TRWeightp.FormDestroy(Sender: TObject);
begin
RWeightp:=nil;
end;

procedure TRWeightp.DBGrid3GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if not GSPF.FieldByName('clbhsb').IsNull then  // 此配方有電子秤秤重
  begin
    dbgrid3.canvas.font.color:=clgreen;
    //dbgrid3.defaultdrawcolumncell(rect,datacol,column,state);
  end;
  if GSPF.FieldByName('clylsb').IsNull then     // 此內部配方無 bom 表
  begin
    dbgrid3.canvas.font.color:=clyellow;
    //dbgrid3.defaultdrawcolumncell(rect,datacol,column,state);
  end;
  if GSPF.FieldByName('YN').value='0' then
  begin
    dbgrid3.canvas.font.color:=clred;
    //dbgrid3.defaultdrawcolumncell(rect,datacol,column,state);
  end;
end;

procedure TRWeightp.DBGrid4GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
 if GSPFS.FieldByName('YN').value='0' then
  begin
    dbgrid4.canvas.font.color:=clred;
    //dbgrid4.defaultdrawcolumncell(rect,datacol,column,state);
  end;
end;

procedure TRWeightp.bbt6Click(Sender: TObject);
var
      eclApp,WorkBook:olevariant;
 //     xlsFileName:string;
      i,j:integer;
begin

if GSPF.Active then
  begin
    if GSPF.recordcount=0 then
      begin
        showmessage('No record.');
        abort;
      end;
  end
  else
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
  for   i:=1   to   GSPF.fieldcount - 3  do
    begin
      eclApp.Cells(1,i+1):=GSPF.fields[i-1].FieldName;
    end;
  GSPF.First;
  j:=2;
  while   not  GSPF.Eof   do
    begin
      eclApp.Cells(j,1):=j-1;
      for   i:=1   to   GSPF.fieldcount - 3   do
        begin
          eclApp.Cells(j,i+1):=GSPF.Fields[i-1].Value;
          eclApp.Cells.Cells.item[j,i+1].font.size:='8';
        end;
      GSPF.Next;
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

procedure TRWeightp.BDT6Click(Sender: TObject);
var
      eclApp,WorkBook:olevariant;
 //     xlsFileName:string;
      i,j:integer;
begin

if GSPFS.Active then
  begin
    if GSPFS.recordcount=0 then
      begin
        showmessage('No record.');
        abort;
      end;
  end
  else
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
  for   i:=1   to   GSPFS.fieldcount -6  do
    begin
      eclApp.Cells(1,i+1):=GSPFS.fields[i-1].FieldName;
    end;
  GSPFS.First;
  j:=2;
  while   not  GSPFS.Eof   do
    begin
      eclApp.Cells(j,1):=j-1;
      for   i:=1   to   GSPFS.fieldcount -6   do
        begin
          eclApp.Cells(j,i+1):=GSPFS.Fields[i-1].Value;
          eclApp.Cells.Cells.item[j,i+1].font.size:='8';
        end;
      GSPFS.Next;
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

end.
