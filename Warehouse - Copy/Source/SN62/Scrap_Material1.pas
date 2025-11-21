unit Scrap_Material1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, DB, DBTables, comobj,
  DBCtrls, ComCtrls, Menus, Mask, dateutils, Grids, DBGrids, GridsEh, DBGridEh,IniFiles,ShellApi;

type
  TScrap_Material = class(TForm)
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
    BDT7: TBitBtn;
    pgcPC1: TPageControl;
    tsTS1: TTabSheet;
    pnl1: TPanel;
    lbl2: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    dbedtLLNO: TDBEdit;
    dbedtDepName: TDBEdit;
    dbedtDepID: TDBEdit;
    btnBBTT1: TBitBtn;
    DBGridh3: TDBGridEh;
    pnl2: TPanel;
    lbl6: TLabel;
    lbl8: TLabel;
    Label1: TLabel;
    edt1: TEdit;
    btn2: TButton;
    dtp1: TDateTimePicker;
    dtp2: TDateTimePicker;
    chk2: TCheckBox;
    edt2: TEdit;
    RB1: TRadioButton;
    tsTS2: TTabSheet;
    pnl3: TPanel;
    lbl9: TLabel;
    lbl10: TLabel;
    lbl11: TLabel;
    lbl12: TLabel;
    lbl13: TLabel;
    lbl14: TLabel;
    dbedtLLNO1: TDBEdit;
    dbedtUSERDATE1: TDBEdit;
    dbedtDepID1: TDBEdit;
    dbedtDepName1: TDBEdit;
    dbmmoYWPM: TDBMemo;
    dbedtCLBH: TDBEdit;
    btnBBTT2: TBitBtn;
    dbedtCFMID: TDBEdit;
    dbgrdh4: TDBGridEh;
    Query1: TQuery;
    BDelRec: TQuery;
    DelMas: TQuery;
    UpMas: TUpdateSQL;
    DS3: TDataSource;
    DelDet: TQuery;
    UPDet: TUpdateSQL;
    DS4: TDataSource;
    OpenDialog1: TOpenDialog;
    DelMasLLNO: TStringField;
    DelMasGSBH: TStringField;
    DelMasDepID: TStringField;
    DelMasUSERDATE: TDateTimeField;
    DelMasUSERID: TStringField;
    DelMasYN: TStringField;
    DelMasflowflag: TStringField;
    DelMasDepName: TStringField;
    DelDetLLNO: TStringField;
    DelDetCLBH: TStringField;
    DelDetLLQty: TFloatField;
    DelDetLSBH: TStringField;
    DelDetUSERID: TStringField;
    DelDetUSERDATE: TDateTimeField;
    DelDetYN: TStringField;
    DelDetYWPM: TStringField;
    DelDetDWBH: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnBBTT1Click(Sender: TObject);
    procedure btnBBTT2Click(Sender: TObject);
    procedure BB1Click(Sender: TObject);
    procedure DBGridh3DblClick(Sender: TObject);
    procedure DBGridh3GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure dbgrdh4GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure pgcPC1Change(Sender: TObject);
    procedure BB2Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure BB3Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure BB7Click(Sender: TObject);
    procedure BBT1Click(Sender: TObject);
    procedure BBT2Click(Sender: TObject);
    procedure BBT3Click(Sender: TObject);
    procedure BBT4Click(Sender: TObject);
    procedure DelMasAfterOpen(DataSet: TDataSet);
    procedure DBGridh3Columns2EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure dbgrdh4Columns0EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DelDetAfterOpen(DataSet: TDataSet);
    procedure BD2Click(Sender: TObject);
    procedure BD3Click(Sender: TObject);
    procedure BD4Click(Sender: TObject);
    procedure BD5Click(Sender: TObject);
    procedure BD6Click(Sender: TObject);
    procedure BD7Click(Sender: TObject);
    procedure BDT1Click(Sender: TObject);
    procedure BDT2Click(Sender: TObject);
    procedure BDT3Click(Sender: TObject);
    procedure BDT4Click(Sender: TObject);
    procedure BDT5Click(Sender: TObject);
    procedure BDT7Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Scrap_Material: TScrap_Material;
  sdate, edate, NDate: Tdate;

implementation

uses Last_CL1, Last_Dep1, main1, Lastborrow_PrintA41, Lastborrow_S1;
{$R *.dfm}

procedure TScrap_Material.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if BB5.enabled then
  begin
    messagedlg('You have to save data Record of report first.', mtwarning, [mbyes], 0);
    pgcPC1.ActivePage := TSTS1;
    panel1.Visible := true;
    panel6.Visible := false;
    action := canone;
  end
  else
  begin
    if BD5.enabled then
    begin
      messagedlg('You have to save data Report first.', mtwarning, [mbyes], 0);
      pgcPC1.ActivePage := TSTS2;
      panel1.Visible := false;
      panel6.Visible := true;
      action := canone;
    end
    else
    begin
      action := Cafree;
    end;
  end;
end;

procedure TScrap_Material.FormCreate(Sender: TObject);
var
  i: integer;
  ayear, amonth: string;
begin
  with query1 do
  begin
    active := false;
    sql.Clear;
    sql.add('select getdate() as NDate ');
    active := true;
    NDate := fieldbyname('NDate').Value;
    active := false;
  end;
  pgcPC1.ActivePage := TSTS1;
  DTP1.Date := date - 7;
  DTP2.date := date + 1;
end;

procedure TScrap_Material.FormDestroy(Sender: TObject);
begin
  Scrap_Material := nil;
end;

procedure TScrap_Material.btnBBTT1Click(Sender: TObject);
begin
  Last_Dep := TLast_Dep.Create(self);
  Last_Dep.Show;
end;

procedure TScrap_Material.btnBBTT2Click(Sender: TObject);
begin
    Last_CL := TLast_CL.create(self);
    Last_CL.show;
end;

procedure TScrap_Material.BB1Click(Sender: TObject);
begin
  pgcPC1.ActivePage := TSTS1;
  pnl2.Visible := true;
  Edt1.SetFocus;
end;

procedure TScrap_Material.DBGridh3DblClick(Sender: TObject);
begin
  if DelMas.Active then
  begin
    if (DelMas.recordcount > 0) then
    begin
      PGCPC1.ActivePage := TSTS2;
      panel1.Visible := false;
      panel6.Visible := true;
    end;
  end;
end;

procedure TScrap_Material.DBGridh3GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if DelMas.FieldByName('YN').value = '0' then
  begin
    DBGridh3.canvas.font.color := clred;
  end;
end;

procedure TScrap_Material.dbgrdh4GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if DelDet.FieldByName('YN').value = '0' then
  begin
    dbgrdh4.canvas.font.color := clred;
  end;

  if DelDet.FieldByName('LLNO').isnull then
  begin
    dbgrdh4.canvas.font.color := clBLUE;
  end;
end;

procedure TScrap_Material.pgcPC1Change(Sender: TObject);
begin
  if PGCPC1.ActivePage = TSTS2 then
  begin
    panel6.visible := true;
    panel1.visible := false;
  end
  else
  begin
    panel6.visible := false;
    panel1.visible := true;
  end;
end;

procedure TScrap_Material.BB2Click(Sender: TObject);
begin
  with DelMas do
  begin
    requestlive := true;
    cachedupdates := true;
    insert;
  end;
  btnBBTT1.Visible := true;
  BB5.Enabled := true;
  BB6.Enabled := true;
  DBGridh3.columns[2].ButtonStyle := cbsEllipsis;
end;

procedure TScrap_Material.btn2Click(Sender: TObject);
var
  y, m: word;
begin

  with DelMas do
  begin
    active := false;
    sql.Clear;
    SQL.Add('      SELECT KCZL_CLBB.*, BDepartment.DepName  ');
    SQL.Add('      FROM KCZL_CLBB  ');
    SQL.Add('      LEFT JOIN BDepartment ON KCZL_CLBB.DepID = BDepartment.ID  ');
    sql.add('where 1=1 and isnull(KCZL_CLBB.flowflag,'''') <>''X'' ');
    if Edt1.TEXT <> '' then
      sql.add(' AND KCZL_CLBB.LLNO LIKE ''' + edt1.Text + '%''');
    if Edt2.TEXT <> '' then
      sql.add(' AND KCZL_CLBB.DepID LIKE ''' + Edt2.Text + '%''');
    if RB1.Checked = true then
    begin
      sql.add('    and convert(smalldatetime,convert(varchar,KCZL_CLBB.USERDATE,111)) between ');
      sql.add('''' + formatdatetime('yyyy/MM/dd', DTP1.Date) + ''' and  ''' + formatdatetime('yyyy/MM/dd', DTP2.Date) + '''');
    end;
    if Chk2.Checked then
    begin
      sql.Add('and KCZL_CLBB.USERID=''' + main.Edit1.Text + '''');
    end;
    sql.Add('and KCZL_CLBB.GSBH = ''' + main.Edit2.Text + ''' ');
    SQL.Add('  ORDER BY KCZL_CLBB.LLNO DESC;  ');
    //showmessage(sql.Text);
    active := true;
  end;
  DelMas.Active := true;
  pnl2.Visible := false;
end;

procedure TScrap_Material.BB3Click(Sender: TObject);
begin
if DelDet.recordcount = 0 then
  begin
    with DelMas do
    begin
      requestlive := true;
      cachedupdates := true;
      edit;
      fieldbyname('YN').Value := '0';
    end;
  end
  else
  begin
    showmessage('Pls delete the Deliver Detail first.')
  end;
  btnBBTT1.Visible := true;
  BB5.Enabled := true;
  BB6.Enabled := true;
end;

procedure TScrap_Material.BB4Click(Sender: TObject);
begin
with DelMas do
  begin
    requestlive := true;
    cachedupdates := true;
    edit;
  end;

  BB5.Enabled := true;
  BB6.Enabled := true;
  DBGridh3.columns[2].ButtonStyle := cbsEllipsis;
end;

procedure TScrap_Material.BB5Click(Sender: TObject);
var
  y, m, a: string;
  i: integer;
begin
  with query1 do //取服務器的年月值
  begin
    active := false;
    sql.Clear;
    sql.Add('select year(getdate()) as FY,month(getdate()) as FM,getdate() as NDate ');
    active := true;
    NDate := fieldbyname('NDate').value;
    y := fieldbyname('FY').asstring;
    m := fieldbyname('FM').asstring;
    active := false;
  end;
  if length(m) < 2 then
    m := '0' + m;

  try
    DelMas.first;
    for i := 1 to DelMas.RecordCount do
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
              with query1 do //計算領料單流水號
              begin
                active := false;
                sql.Clear;
                sql.Add('select top 1 LLNO from KCZL_CLBB where LLNO like ''LB' + y + m + '%''');
                sql.add('order by LLNO DESC');
                active := true;
                if recordcount > 0 then
                begin
                  a := fieldbyname('LLNO').AsString;
                  a := copy(a, 9, 7);
                  a := inttostr(strtoint(a) + 1);
                  while length(a) < 5 do
                  begin
                    a := '0' + a;
                  end;
                end
                else
                begin
                  a := '00001';
                end;
                a := y + m + a;
                active := false;
              end;
              DelMas.edit;
              DelMas.fieldbyname('LLNO').Value := 'LB' + a;
              DelMas.fieldbyname('GSBH').Value := main.Edit2.text;
              DelMas.FieldByName('userID').Value := main.edit1.text;
              DelMas.FieldByName('userdate').Value := formatdatetime('yyyy/MM/dd hh:nn:ss', Ndate);
              DelMas.FieldByName('YN').Value := '1';
              upMas.apply(ukinsert);
            end;
          end;
        usmodified:
          begin
            if DelMas.FieldByName('USERID').value <> main.Edit1.Text then
            begin
              showmessage('不是你的，不要亂動。khong phai ban khong duoc tu sua');
            end
            else
            begin
              if DelMas.fieldbyname('YN').value = '0' then
              begin
                DelMas.Edit;
                DelMas.FieldByName('flowflag').Value := 'X';
                upMas.apply(ukmodify);
              end
              else
              begin
                  if (NDate - DelMas.FieldByName('USERDATE').value) <= 7 then
                  begin
                    DelMas.edit;
                    DelMas.FieldByName('userID').Value := main.edit1.text;
                    DelMas.FieldByName('userdate').Value := formatdatetime('yyyy/MM/dd', Ndate);
                    upMas.apply(ukmodify);
                  end
                  else
                  begin
                    showmessage('Date>7, can not modify.');
                  end;
              end;
            end;
          end;
      end;
      DelMas.next;
    end;
    DelMas.active := false;
    DelMas.cachedupdates := false;
    DelMas.requestlive := false;
    DelMas.active := true;
    bb5.enabled := false;
    bb6.enabled := false;
    btnBBTT1.Visible := false;
    DBGridh3.columns[2].ButtonStyle := cbsnone;
  except
    Messagedlg('Have wrong, can not save data!', mtwarning, [mbyes], 0);
  end;
end;

procedure TScrap_Material.BB6Click(Sender: TObject);
begin
  with DelMas do
  begin
    active := false;
    requestlive := false;
    cachedupdates := false;
    active := true;
  end;
  bb5.enabled := false;
  bb6.enabled := false;
  btnBBTT1.Visible := false;
  DBGridh3.columns[2].ButtonStyle := cbsnone;
end;

procedure TScrap_Material.BB7Click(Sender: TObject);
begin
 Close;
end;

procedure TScrap_Material.BBT1Click(Sender: TObject);
begin
  DelMas.First;
end;

procedure TScrap_Material.BBT2Click(Sender: TObject);
begin
  DelMas.Prior;
end;

procedure TScrap_Material.BBT3Click(Sender: TObject);
begin
  DelMas.Next;
end;

procedure TScrap_Material.BBT4Click(Sender: TObject);
begin
  DelMas.Last;
end;

procedure TScrap_Material.DelMasAfterOpen(DataSet: TDataSet);
begin
  BB2.Enabled := true;
  BB3.Enabled := true;
  BB4.Enabled := true;
  BBT1.Enabled := true;
  BBT2.Enabled := true;
  BBT3.Enabled := true;
  BBT4.Enabled := true;
  BBT6.Enabled := true;
  DelDet.Active := true;

  BB5.Enabled := false;
  BB6.Enabled := false;
  BD5.Enabled := false;
  BD6.Enabled := false;
end;

procedure TScrap_Material.DBGridh3Columns2EditButtonClick(Sender: TObject;
  var Handled: Boolean);
begin
  Last_Dep := TLast_Dep.Create(self);
  Last_Dep.Show;
end;

procedure TScrap_Material.dbgrdh4Columns0EditButtonClick(Sender: TObject;
  var Handled: Boolean);
begin
  Last_CL := TLast_CL.Create(self);
  Last_CL.Show;
end;

procedure TScrap_Material.DelDetAfterOpen(DataSet: TDataSet);
begin
  BD2.Enabled := true;
  BD3.Enabled := true;
  BD4.Enabled := true;

  BDT1.Enabled := true;
  BDT2.Enabled := true;
  BDT3.Enabled := true;
  BDT4.Enabled := true;
  BDT5.Enabled := true;
  BDT6.Enabled := true;
  BDT7.Enabled := true;
  if (NDate - DelMas.FieldByName('USERDATE').value) > 10 then
  begin
    BD2.Enabled := false;
    BD3.Enabled := false;
    BD4.Enabled := false;
  end;
  if DelMas.FieldByName('USERID').value <> main.Edit1.text then
  begin
    BD2.Enabled := false;
    BD3.Enabled := false;
    BD4.Enabled := false;
  end;
  if DelMas.cachedupdates then
  begin
    BD2.Enabled := false;
    BD3.Enabled := false;
    BD4.Enabled := false;
  end;

  BD5.Enabled := false;
  BD6.Enabled := false;
end;

procedure TScrap_Material.BD2Click(Sender: TObject);
begin
  if DelMas.RequestLive then
    begin
      showmessage('Pls save Master data first.');
      PGCPC1.ActivePage := TSTS1;
      panel6.visible := false;
      panel1.visible := true;
      abort;
    end;

    with DelDet do
    begin
      requestlive := true;
      cachedupdates := true;
      insert;
    end;

    btnBBTT2.Visible := true;
    BD2.Enabled := FALSE;
    BD3.Enabled := FALSE;
    BD4.Enabled := FALSE;
    BD5.Enabled := true;
    BD6.Enabled := true;
end;

procedure TScrap_Material.BD3Click(Sender: TObject);
begin
   if DelMas.RequestLive then
    begin
      showmessage('Pls save Master data first.');
      PGCPC1.ActivePage := TSTS1;
      panel6.visible := false;
      panel1.visible := true;
      abort;
    end;
    with DelDet do
    begin
      requestlive := true;
      cachedupdates := true;
      edit;
      fieldbyname('YN').Value := '0';
    end;
    BD5.Enabled := true;
    BD6.Enabled := true;
end;

procedure TScrap_Material.BD4Click(Sender: TObject);
begin
  if DelMas.RequestLive then
  begin
    showmessage('Pls save Master data first.');
    PGCPC1.ActivePage := TSTS1;
    panel6.visible := false;
    panel1.visible := true;
    abort;
  end;

  with DelDet do
  begin
    requestlive := true;
    cachedupdates := true;
    edit;
  end;
  btnBBTT2.Visible := true;
  BD2.Enabled := FALSE;
  BD3.Enabled := FALSE;
  BD4.Enabled := FALSE;
  BD5.Enabled := true;
  BD6.Enabled := true;

end;

procedure TScrap_Material.BD5Click(Sender: TObject);
var
  i: integer;
begin
  try
    DelDet.first;
    for i := 1 to DelDet.RecordCount do
    begin
      case DelDet.updatestatus of
        usinserted:
          begin
            if DelMas.FieldByName('USERID').value <> main.Edit1.Text then
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
                DelDet.fieldbyname('LLNO').Value := DelMas.fieldbyname('LLNO').Value;
                DelDet.FieldByName('userID').Value := main.edit1.text;
                DelDet.FieldByName('userdate').Value := Ndate;
                DelDet.FieldByName('YN').Value := '1';
                upDet.apply(ukinsert);
              end;
            end;
          end;

        usmodified:
          begin
            if DelDet.FieldByName('USERID').value <> main.Edit1.Text then
            begin
              showmessage('不是你的，不要亂動。khong phai ban khong duoc tu sua');
            end
            else
            begin
              if DelDet.fieldbyname('YN').value = '0' then
              begin
               { with BDelRec do
                begin
                  active := false;
                  sql.Clear;
                  sql.add('insert into BDelRec ');
                  sql.add('(TableName ,TNO,CLBH,OldID,DelID,DelDate)');
                  sql.add('values (''KCZL_CLBBS'',''' + DelDet.fieldbyname('LLNO').Value + '''');
                  sql.add(',''' + DelDet.fieldbyname('CLBH').Value + ''',''' + DelDet.fieldbyname('USERID').Value + ''',');
                  sql.add('''' + main.Edit1.Text + '''' + ',Getdate())');
                  execsql;
                  active := false;
                end;    }
                UpDet.apply(ukdelete);
              end
              else
              begin
                DelDet.edit;
                //DelDet.fieldbyname('Qty').value:=DelDet.fieldbyname('TempQty').value;
                DelDet.FieldByName('userID').Value := main.edit1.text;
                DelDet.FieldByName('userdate').Value := Ndate;
                upDet.apply(ukmodify);

              end;
            end;
          end;
      end;
      DelDet.next;
    end;
    Delmas.Active := false;
    Delmas.Active := active;
    DelDet.active := false;
    DelDet.cachedupdates := false;
    DelDet.requestlive := false;
    DelDet.active := true;
    bb6.enabled := false;
    btnBBTT2.Visible := false;
    BD2.Enabled := TRUE;
    BD3.Enabled := TRUE;
    BD4.Enabled := TRUE;
    BD5.Enabled := false;
    BD6.Enabled := false;
  except
    Messagedlg('Have wrong, can not save data!', mtwarning, [mbyes], 0);
  end;
end;

procedure TScrap_Material.BD6Click(Sender: TObject);
begin
  with DelDet do
  begin
    active := false;
    requestlive := false;
    cachedupdates := false;
    active := true;
  end;
  btnBBTT2.Visible := false;
  BD2.Enabled := TRUE;
  BD3.Enabled := TRUE;
  BD4.Enabled := TRUE;
  BD5.Enabled := false;
  BD6.Enabled := false;
end;

procedure TScrap_Material.BD7Click(Sender: TObject);
begin
 Close;
end;

procedure TScrap_Material.BDT1Click(Sender: TObject);
begin
  DelDet.First;
end;

procedure TScrap_Material.BDT2Click(Sender: TObject);
begin
  DelDet.prior;
end;

procedure TScrap_Material.BDT3Click(Sender: TObject);
begin
  DelDet.next;
end;

procedure TScrap_Material.BDT4Click(Sender: TObject);
begin
  DelDet.last;
end;

procedure TScrap_Material.BDT5Click(Sender: TObject);
begin
  if DelDet.RequestLive then
  begin
    showmessage('Pls save data first.');
    abort;
  end
  else
  begin
    Lastborrow_PrintA4 := TLastborrow_PrintA4.create(nil);
    Lastborrow_PrintA4.quickrep1.prepare;
    Lastborrow_PrintA4.Qpage1.caption := inttostr(Lastborrow_PrintA4.quickrep1.QRPrinter.pagecount);
    Lastborrow_PrintA4.quickrep1.preview;
    Lastborrow_PrintA4.free;
  end;
end;

procedure TScrap_Material.BDT7Click(Sender: TObject);
begin
  if DelDet.RequestLive then
  begin
    showmessage('Pls save data first.');
    abort;
  end
  else
  begin
    Lastborrow_S := TLastborrow_S.create(nil);
    Lastborrow_S.quickrep1.prepare;
    Lastborrow_S.Qpage1.caption := inttostr(Lastborrow_S.quickrep1.QRPrinter.pagecount);
    Lastborrow_S.quickrep1.preview;
    Lastborrow_S.free;
  end;

end;

end.
