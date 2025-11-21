unit Modesetup1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, DBCtrls, ExtCtrls, StdCtrls,
  Buttons,comobj, FunUnit;

type
  Tmodesetup = class(TForm)
    DBGridEh1: TDBGridEh;
    DS1: TDataSource;
    Panel2: TPanel;
    bbInsert: TBitBtn;
    bbDelete: TBitBtn;
    bbModify: TBitBtn;
    bbSave: TBitBtn;
    bbCancel: TBitBtn;
    bbExit: TBitBtn;
    bbQuery: TBitBtn;
    BBT1: TBitBtn;
    BBT2: TBitBtn;
    BBT3: TBitBtn;
    BBT4: TBitBtn;
    bbtExcel: TBitBtn;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label23: TLabel;
    edtMJBH: TEdit;
    btnQuery: TButton;
    edtBZ1: TEdit;
    edtBZ2: TEdit;
    MJZL: TQuery;
    MJZLmjbh: TStringField;
    MJZLlbdh: TStringField;
    MJZLpmw: TIntegerField;
    MJZLkfdh1: TStringField;
    MJZLgbbh: TStringField;
    MJZLbz1: TStringField;
    MJZLbz2: TStringField;
    MJZLtrm: TIntegerField;
    MJZLYields: TFloatField;
    MJZLcost: TFloatField;
    MJZLUSERID: TStringField;
    MJZLUSERDATE: TStringField;
    UpMJZL: TUpdateSQL;
    MJZLYN: TIntegerField;
    Query1: TQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure bbQueryClick(Sender: TObject);
    procedure btnQueryClick(Sender: TObject);
    procedure bbExitClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure bbInsertClick(Sender: TObject);
    procedure bbSaveClick(Sender: TObject);
    procedure bbModifyClick(Sender: TObject);
    procedure bbCancelClick(Sender: TObject);
    procedure bbDeleteClick(Sender: TObject);
    procedure DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure bbtExcelClick(Sender: TObject);
  private
    { Private declarations }
    procedure InitUpdateSQL();
  public
    { Public declarations }
  end;

var
  modesetup: Tmodesetup;
  NDate:TDate;

implementation

uses main1;

{$R *.dfm}

procedure Tmodesetup.InitUpdateSQL();
begin
  UpMJZL.InsertSQL.Clear;
  UpMJZL.InsertSQL.Add(' INSERT into '+main.LIY_DD+'.dbo.MJZL(mjbh, lbdh, pmw, kfdh1, gbbh, bz1, bz2, trm, Yields, cost, USERID, USERDATE) values (:mjbh, :lbdh, :pmw, :kfdh1, :gbbh, :bz1, :bz2, :trm, :Yields, :cost, :USERID, :USERDATE)');

  UpMJZL.DeleteSQL.Clear;
  UpMJZL.DeleteSQL.Add(' DELETE from '+main.LIY_DD+'.dbo.MJZL where MJBH=:OLD_MJBH and LBDH=:OLD_LBDH and PMW=:OLD_PMW ');

  UpMJZL.ModifySQL.Clear;
  UpMJZL.ModifySQL.Add(' UPDATE '+main.LIY_DD+'.dbo.MJZL set MJBH=:MJBH, LBDH=:LBDH, PMW=:PMW, BZ1=:BZ1, BZ2=:BZ2 ,trm=:trm ,Yields=:Yields ,cost=:cost, USERID=:USERID, USERDATE=:USERDATE where MJBH =:OLD_MJBH and LBDH=:OLD_LBDH and PMW=:OLD_PMW ');
end;

procedure Tmodesetup.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if bbSave.enabled  then
  begin
    messagedlg('You have to save data Record of report first.',mtwarning,[mbyes],0);
    action:=canone;
  end else
  begin
    action:=Cafree;
  end;
end;

procedure Tmodesetup.FormCreate(Sender: TObject);
begin
  with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select convert(varchar, getdate(), 112) as NDate ');
    active:=true;
    NDate:=fieldbyname('NDate').Value;
    active:=false;
  end;
  InitUpdateSQL();
end;

procedure Tmodesetup.bbQueryClick(Sender: TObject);
begin
  Panel1.Visible:=true;
end;

procedure Tmodesetup.btnQueryClick(Sender: TObject);
begin
  With MJZL do
  begin
    active:=false;
    sql.Clear;
    sql.add(' Select *, 1 as YN from '+ main.LIY_DD +'.dbo.MJZL ');
    sql.add(' Where 1=1 ');
    IF edtMJBH.Text <> '' then
      sql.add(' and MJBH like '+''''+edtMJBH.Text+'%'+'''');
    IF edtBZ1.Text <> '' then
      sql.add(' and BZ1 like '+''''+edtBZ1.Text+'%'+'''');
    IF edtBZ2.Text <> '' then
      sql.add(' and BZ2 like '+''''+edtBZ2.Text+'%'+'''');
    //memo1.text := sql.text;
    active:=true;
  end;
  panel1.Visible:=false;
  bbInsert.Enabled:=true;
  bbModify.Enabled:=true;
  bbDelete.Enabled:=true;
  bbtExcel.Enabled:=true;
end;

procedure Tmodesetup.bbExitClick(Sender: TObject);
begin
  close;
end;

procedure Tmodesetup.FormDestroy(Sender: TObject);
begin
  modesetup:=nil;
end;

procedure Tmodesetup.bbInsertClick(Sender: TObject);
begin
  with MJZL do
  begin
    cachedupdates:=true;
    requestlive:=true;
    Insert;
  end;
  bbSave.enabled:=true;
  bbCancel.enabled:=true;
end;

procedure Tmodesetup.bbSaveClick(Sender: TObject);
var i:integer;
begin
  try
    MJZL.first;
    for i:=1 to MJZL.RecordCount do
    begin
      case MJZL.updatestatus of
        usinserted:
        begin
          if MJZL.fieldbyname('MJBH').isnull then
          begin
            //MJZL.delete;
            showmessage('Column data MJBH cannot be empty!!!');
            Abort;
          end else if MJZL.fieldbyname('LBDH').isnull then
          begin
            showmessage('Column data LBDH cannot be empty!!!');
            Abort;
          end else if MJZL.fieldbyname('PMW').isnull then
          begin
            showmessage('Column data PMW cannot be empty!!!');
            Abort;
          end else
          begin
            MJZL.edit;
            MJZL.FieldByName('userID').Value:=main.edit1.text;
            MJZL.FieldByName('userdate').Value:=NDate;
            UpMJZL.apply(ukinsert);
          end;
        end;
        usmodified:
        begin
          if MJZL.fieldbyname('YN').value='0' then
          begin
            UpMJZL.Apply(ukdelete);
          end else
          begin
            if ((MJZL.fieldbyname('MJBH').isnull) or (MJZL.fieldbyname('MJBH').AsString = '')) then
            begin
              //MJZL.delete;
              showmessage('Column data MJBH cannot be empty!!');
              Abort;
            end else if ((MJZL.fieldbyname('LBDH').isnull) or (MJZL.fieldbyname('LBDH').AsString = '')) then
            begin
              showmessage('Column data LBDH cannot be empty!!');
              Abort;
            end else if ((MJZL.fieldbyname('PMW').isnull) or (MJZL.fieldbyname('PMW').AsString = '')) then
            begin
              showmessage('Column data PMW cannot be empty!!');
              Abort;
            end else
            begin
              MJZL.edit;
              MJZL.FieldByName('userID').Value:=main.edit1.text;
              MJZL.FieldByName('userdate').Value:=NDate;
              UpMJZL.apply(ukmodify);
            end;
          end;
        end;
      end;
      MJZL.next;
    end;
    MJZL.active:=false;
    MJZL.cachedupdates:=false;
    MJZL.requestlive:=false;
    MJZL.active:=true;
    bbCancel.enabled:=false;
    bbSave.enabled:=false;
    showmessage('Succeed.');
  except
    Messagedlg('Have wrong, can not save!',mtwarning,[mbyes],0);
  end;
end;

procedure Tmodesetup.bbModifyClick(Sender: TObject);
begin
  with MJZL do
  begin
    cachedupdates:=true;
    requestlive:=true;
    MJZL.edit;
  end;
  bbSave.enabled:=true;
  bbCancel.enabled:=true;
end;

procedure Tmodesetup.bbCancelClick(Sender: TObject);
begin
  with MJZL do
  begin
    active:=false;
    cachedupdates:=false;
    requestlive:=false;
    active:=true;
  end;
  bbSave.enabled:=false;
  bbCancel.enabled:=false;
end;

procedure Tmodesetup.bbDeleteClick(Sender: TObject);
begin
  with MJZL do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
    fieldbyname('YN').Value := '0';
  end;
  bbSave.enabled:=true;
  bbCancel.enabled:=true;
end;

procedure Tmodesetup.DBGridEh1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if MJZL.FieldByName('YN').value='0' then
  begin
    DBGridEh1.canvas.font.color:=clred;
  end;
end;

procedure Tmodesetup.bbtExcelClick(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin
  //
  if MJZL.Active then
  begin
    if MJZL.recordcount=0 then
    begin
      showmessage('No record.');
      abort;
    end;
  end else
  begin
    showmessage('No record.');
    abort;
  end;
  //
  try
    eclApp:=CreateOleObject('Excel.Application');
    WorkBook:=CreateOleObject('Excel.Sheet');
  except
    Application.MessageBox('NO Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
    Exit;
  end;

  try
    WorkBook:=eclApp.workbooks.Add;
    for i:=0 to MJZL.fieldcount-1 do
    begin
      eclApp.Cells(1,i+1):=MJZL.fields[i].FieldName;
    end;

    MJZL.First;
    j:=2;
    while not MJZL.Eof do
    begin
      for i:=0 to MJZL.fieldcount-1 do
      begin
        eclApp.Cells(j,i+1):=MJZL.Fields[i].Value;
      end;
      MJZL.Next;
      inc(j);
    end;
    eclapp.columns.autofit;
    showmessage('Succeed');
    eclApp.Visible:=True;
  except
    on   F:Exception   do
      showmessage(F.Message);
  end;
end;

end.
