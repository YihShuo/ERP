unit DestinationPackingBox_Label1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, DBCtrls, Grids, DBGrids, StdCtrls, ComCtrls, OleServer,
  comobj, Buttons, ExtCtrls, Menus, GridsEh, DBGridEh;

type
  TDestinationPackingBox_Label = class(TForm)
    DS2: TDataSource;
    XXZLSSVN: TQuery;
    XXZLSSVNXieXing: TStringField;
    XXZLSSVNSheHao: TStringField;
    XXZLSSVNBWBH: TStringField;
    XXZLSSVNYWSM: TStringField;
    XXZLSSVNCLBH: TStringField;
    XXZLSSVNYWPM: TStringField;
    XXZLSSVNDWBH: TStringField;
    XXZLSSVNCLSL: TCurrencyField;
    XXZLSSVNCSBH: TStringField;
    XXZLSSVNZSYWJC: TStringField;
    XXZLSSVNUSERID: TStringField;
    XXZLSSVNUSERDATE: TDateTimeField;
    XXZLSSVNYN: TStringField;
    XXZLSSVNcond: TStringField;
    XXZLSSVNADTYP: TStringField;
    XXZLSSVNDestination: TStringField;
    UpXXZLSSVN: TUpdateSQL;
    BDelRec: TQuery;
    XXZL: TQuery;
    XXZLXieXing: TStringField;
    XXZLSheHao: TStringField;
    XXZLXieMing: TStringField;
    XXZLARTICLE: TStringField;
    XXZLYSSM: TStringField;
    XXZLBZCC: TStringField;
    XXZLKFJC: TStringField;
    DS1: TDataSource;
    PageControl3: TPageControl;
    TabSheet5: TTabSheet;
    Panel7: TPanel;
    BD7: TBitBtn;
    BD6: TBitBtn;
    BD5: TBitBtn;
    BD4: TBitBtn;
    BD3: TBitBtn;
    BD2: TBitBtn;
    BD1: TBitBtn;
    Panel24: TPanel;
    DBGridEh2: TDBGridEh;
    TabSheet7: TTabSheet;
    Panel11: TPanel;
    Splitter1: TSplitter;
    Panel1: TPanel;
    BB2: TBitBtn;
    BB3: TBitBtn;
    BB4: TBitBtn;
    BB5: TBitBtn;
    BB6: TBitBtn;
    BB7: TBitBtn;
    BB1: TBitBtn;
    bbt5: TBitBtn;
    bbt6: TBitBtn;
    DT7: TBitBtn;
    Panel3: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Button1: TButton;
    Edit5: TEdit;
    Edit3: TEdit;
    BuyNoEdit: TEdit;
    Edit1: TEdit;
    Edit4: TEdit;
    GroupBox1: TGroupBox;
    CK1: TCheckBox;
    DBGridEh1: TDBGridEh;
    DBGrid3: TDBGridEh;
    Label1: TLabel;
    DestIDEdit: TEdit;
    Label7: TLabel;
    DestiEdit: TEdit;
    Button2: TButton;
    DataSource1: TDataSource;
    Query1: TQuery;
    Query1XieXing: TStringField;
    Query1SheHao: TStringField;
    Query1cond: TStringField;
    Query1BWBH: TStringField;
    Query1CLBH: TStringField;
    Query1CSBH: TStringField;
    Query1CLSL: TFloatField;
    Query1USERID: TStringField;
    Query1USERDATE: TDateTimeField;
    Query1YN: TStringField;
    Query1Destination: TStringField;
    Query1ZWSM: TStringField;
    Query1YWSM: TStringField;
    Query1YWPM: TStringField;
    Query1DWBH: TStringField;
    Query1ADTYP: TStringField;
    UpdateSQL1: TUpdateSQL;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure BB1Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB3Click(Sender: TObject);
    procedure BB2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure bbt6Click(Sender: TObject);
    procedure DBGrid3EditButtonClick(Sender: TObject);
    procedure DT7Click(Sender: TObject);
    procedure BB7Click(Sender: TObject);
    procedure DBGrid3GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure Button2Click(Sender: TObject);
    procedure BD1Click(Sender: TObject);
    procedure BD7Click(Sender: TObject);
    procedure DBGridEh2EditButtonClick(Sender: TObject);
    procedure DBGridEh2GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure BD2Click(Sender: TObject);
    procedure BD3Click(Sender: TObject);
    procedure BD6Click(Sender: TObject);
    procedure BD4Click(Sender: TObject);
    procedure BD5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DestinationPackingBox_Label: TDestinationPackingBox_Label;

implementation

uses main1, BW_CL_CS1, Cond1, Copy1, Dest_BW_CL_CS1, FunUnit, IniFiles;

{$R *.dfm}

procedure TDestinationPackingBox_Label.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if BB5.Enabled then
  begin
    showmessage('Pls save data first.');
    Panel1.Visible:=true;
    action:=canone;
  end else
  if BD5.Enabled then
  begin
    showmessage('Pls save data first.');
    Panel7.Visible:=true;
    action:=canone;
  end else
  begin
    action:=cafree;
  end;
end;

procedure TDestinationPackingBox_Label.FormDestroy(Sender: TObject);
begin
  DestinationPackingBox_Label := nil;
end;

procedure TDestinationPackingBox_Label.BB1Click(Sender: TObject);
begin
  Panel3.Visible := true;
end;

procedure TDestinationPackingBox_Label.BB6Click(Sender: TObject);
begin
  with XXZLSSVN do
  begin
    Active := false;
    CachedUpdates := false;
    RequestLive := false;
    Active := true;
  end;
  dbgrid3.columns[0].ButtonStyle:=cbsNone;
  dbgrid3.columns[2].ButtonStyle:=cbsNone;
  DT7.Enabled := false;
  BB5.Enabled := false;
  BB6.Enabled := false;
end;

procedure TDestinationPackingBox_Label.BB5Click(Sender: TObject);
  var i:integer;
begin
  try
    XXZLSSVN.first;
    for i:=1 to XXZLSSVN.RecordCount do
    begin
      case XXZLSSVN.updatestatus of
        usinserted:
        begin
          if XXZLSSVN.fieldbyname('BWBH').isnull or XXZLSSVN.fieldbyname('cond').isnull then
          begin
            XXZLSSVN.delete;
          end else
          begin
            if XXZLSSVN.FieldByName('CLSL').IsNull then
            begin
              showmessage('Quantity can not be empty.');
              abort;
            end;
            if XXZLSSVN.fieldbyname('XieXing').Value='ZZZZZZZZZ' then
            begin
              showmessage('It is General Destination, can not insert.');
              abort;
            end;
            XXZLSSVN.edit;
            if XXZLSSVN.FieldByName('ADTYP').IsNull then
            begin
              XXZLSSVN.FieldByName('ADTYP').Value:='A';
            end;
            XXZLSSVN.FieldByName('XieXing').Value:=XXZL.fieldbyname('XieXing').value;
            XXZLSSVN.FieldByName('SheHao').Value:=XXZL.fieldbyname('SheHao').value;
            XXZLSSVN.FieldByName('userID').Value:=main.edit1.text;
            XXZLSSVN.FieldByName('userdate').Value:=date;
            XXZLSSVN.FieldByName('YN').Value:='1';
            UPXXZLSSVN.apply(ukinsert);
          end;
        end;
        usmodified:
        begin
          if XXZLSSVN.FieldByName('userID').Value=main.Edit1.Text then
          begin
            if XXZLSSVN.fieldbyname('YN').value='0'then
            begin
              with BDelRec do
              begin
                active:=false;
                sql.Clear;
                sql.add('insert into BDelRec ');
                sql.add('(TableName ,TNO,CLBH,OldID,DelID,DelDate)');
                sql.add('values ('+''''+'XXZLSSVN'+''''+','+''''+XXZLSSVN.fieldbyname('XIEXING').Value+'***'+XXZLSSVN.fieldbyname('SHEHAO').Value+'''');
                sql.add(','+''''+XXZLSSVN.fieldbyname('BWBH').Value+'***'+XXZLSSVN.fieldbyname('cond').Value+'***'+XXZLSSVN.fieldbyname('CLBH').Value+''''+',');
                sql.add(''''+XXZLSSVN.fieldbyname('USERID').Value+''''+','+''''+main.Edit1.Text+''''+',getdate())');
                execsql;
                active:=false;
              end;
              upXXZLSSVN.apply(ukdelete);
            end else
            begin
              if  XXZLSSVN.FieldByName('CLSL').IsNull then
              begin
                showmessage('Quantity can not be empty.');
                abort;
              end;
              if XXZLSSVN.fieldbyname('XieXing').Value='ZZZZZZZZZ' then
              begin
                showmessage('It is General Destination, can not modify.');
                abort;
              end;
              XXZLSSVN.edit;
              if  XXZLSSVN.FieldByName('ADTYP').IsNull then
              begin
                XXZLSSVN.FieldByName('ADTYP').Value:='A';
              end;
              XXZLSSVN.FieldByName('userID').Value:=main.edit1.text;
              XXZLSSVN.FieldByName('userdate').Value:=date;
              with BDelRec do
              begin
                active:=false;
                sql.Clear;
                sql.add('insert into BDelRec ');
                sql.add('(TableName ,TNO,CLBH,OldID,DelID,DelDate)');
                sql.add('values ('+''''+'XXZLSSVNmod'+''''+','+''''+XXZLSSVN.fieldbyname('XIEXING').Value+'***'+XXZLSSVN.fieldbyname('SHEHAO').Value+'''');
                sql.add(','+''''+XXZLSSVN.fieldbyname('cond').OldValue+'***'+XXZLSSVN.fieldbyname('cond').Value+'***'+XXZLSSVN.fieldbyname('BWBH').OldValue+'***');
                sql.add(+XXZLSSVN.fieldbyname('BWBH').Value+'***'+XXZLSSVN.fieldbyname('CLBH').OldValue+'***'+XXZLSSVN.fieldbyname('CLBH').Value+'''');
                sql.add(','+''''+XXZLSSVN.fieldbyname('USERID').Value+''''+','+''''+main.Edit1.Text+''''+',getdate())');
                execsql;
                active:=false;
              end;
              UPXXZLSSVN.apply(ukmodify);
            end;
          end else
          begin
            showmessage(' It is not yours, can not modify.');
          end;
        end;
      end;
      XXZLSSVN.next;
    end;
  XXZLSSVN.active:=false;
  XXZLSSVN.cachedupdates:=false;
  XXZLSSVN.requestlive:=false;
  XXZLSSVN.active:=true;
  dbgrid3.columns[0].ButtonStyle:=cbsNone;
  dbgrid3.columns[2].ButtonStyle:=cbsNone;
  DT7.Enabled := false;
  BB5.Enabled := false;
  BB6.Enabled := false;
  except
    Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
  end;
end;

procedure TDestinationPackingBox_Label.BB4Click(Sender: TObject);
begin
  with XXZLSSVN do
  begin
    CachedUpdates := true;
    RequestLive := true;
    Edit;
  end;
  DBGrid3.columns[0].ButtonStyle:=cbsEllipsis;
  DBGrid3.columns[2].ButtonStyle:=cbsEllipsis;
  DT7.Enabled := true;
  BB5.Enabled := true;
  BB6.Enabled := true;
end;

procedure TDestinationPackingBox_Label.BB3Click(Sender: TObject);
begin
  if XXZLSSVN.recordcount>0 then
  begin
    with XXZLSSVN do
    begin
      CachedUpdates := true;
      RequestLive := true;
      Edit;
      fieldbyname('YN').Value:='0';
    end;
    DT7.Enabled := true;
    BB5.Enabled := true;
    BB6.Enabled := true;
  end;
end;

procedure TDestinationPackingBox_Label.BB2Click(Sender: TObject);
begin
  with XXZLSSVN do
  begin
    CachedUpdates := true;
    RequestLive := true;
    Insert;
  end;
  dbgrid3.columns[0].ButtonStyle:=cbsEllipsis;
  dbgrid3.columns[2].ButtonStyle:=cbsEllipsis;
  DT7.Enabled := true;
  BB5.Enabled := true;
  BB6.Enabled := true;
end;

procedure TDestinationPackingBox_Label.Button1Click(Sender: TObject);
begin
  if (edit1.text='') and (edit3.text='')and (BuyNoEdit.Text='') then
  begin
    showmessage('Please input ArtNO or Article or BUYNO keypoint ');
  end else
  begin
    XXZLSSVN.Active:=false;
    with XXZL do
    begin
      active:=false;
      sql.clear;
      sql.add('select distinct XXZL.XieXing,XXZL.SheHao,XXZL.Article,XXZL.XieMing,XXZL.YSSM,KFZL.KFJC,XXZL.BZCC ');
      sql.add('from XXZL ');
      sql.add('left join KFZL on KFZL.KFDH=XXZL.KHDH ');
      sql.add('where 1=1 ');
      if edit1.Text <> '' then
        sql.add('    and XXZL.XieXing like '+''''+edit1.Text+'%'+'''');
      if edit3.Text <> '' then
        sql.add('    and XXZL.ARTICLE like '+''''+edit3.Text+'%'+'''');
      if edit4.Text <> '' then
        sql.add('    and KFZL.KFJC like '+''''+'%'+edit4.Text+'%'+'''');
      if edit5.Text <> '' then
        sql.add('    and XXZL.XieMing like '+''''+edit5.Text+'%'+'''');
      if BuyNoEdit.Text<>'' then
      begin
        sql.add('    and exists (select XieXing,SheHao ');
        sql.add('                from DDZl ');
        sql.add('                where DDZL.XieXing=XXZL.XieXing and DDZL.SheHao=XXZL.SheHao ');
        sql.add('                      and DDZL.BUYNO like '''+BuyNoEdit.Text+'%'' group by XieXing,Shehao) ' );
      end;
      if CK1.Checked then
      begin
        sql.add('    and XXZL.YN='+''''+'1'+'''');
      end;
      sql.add('order by KFJC,XXZL.XieXing,XXZL.Shehao');
      active:=true;
    end;
    panel3.Visible:=false;
    XXZLSSVN.Active:=true;
    BB2.Enabled := true;
    BB3.Enabled := true;
    BB4.Enabled := true;
  end;
end;

procedure TDestinationPackingBox_Label.bbt6Click(Sender: TObject);
  var eclApp,WorkBook:olevariant;
      i,j:integer;
begin
  if XXZLSSVN.active  then
  begin
    try
      eclApp:=CreateOleObject('Excel.Application');
      WorkBook:=CreateOleObject('Excel.Sheet');
    except
      Application.MessageBox('NO Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
      Exit;
    end;
    try
      WorkBook:=eclApp.workbooks.Add;
      for   i:=0   to   XXZLSSVN.fieldCount-1   do
      begin
        eclApp.Cells(1,i+1):=XXZLSSVN.fields[i].FieldName;
      end;
      XXZLSSVN.First;
      j:=2;
      while   not   XXZLSSVN.Eof   do
      begin
        for   i:=0   to   XXZLSSVN.FieldCount-1   do
        begin
          eclApp.Cells(j,i+1):=XXZLSSVN.Fields[i].Value;
          eclApp.Cells.Cells.item[j,i+1].font.size:='8';
        end;
        XXZLSSVN.Next;
        inc(j);
      end;
      eclapp.columns.autofit;
      eclApp.Visible:=True;
    except
      on   F:Exception   do
        showmessage(F.Message);
    end;
  end;
end;

procedure TDestinationPackingBox_Label.DBGrid3EditButtonClick(
  Sender: TObject);
begin
  if (dbgrid3.selectedfield.fieldname='BWBH') and (XXZLSSVN.fieldbyname('XieXing').Value<>'ZZZZZZZZZ') then
  begin
    BW_CL_CS:=TBW_CL_CS.create(self);
    BW_CL_CS.Edit1.Text:=DestinationPackingBox_Label.XXZL.fieldbyname('XieXing').Value;
    BW_CL_CS.Edit2.Text:=DestinationPackingBox_Label.XXZL.fieldbyname('SheHao').Value;
    BW_CL_CS.show;
  end;
  if (dbgrid3.selectedfield.fieldname='cond') and (XXZLSSVN.fieldbyname('XieXing').Value<>'ZZZZZZZZZ') then
  begin
    Cond:=TCond.create(self);
    Cond.show;
  end;
end;

procedure TDestinationPackingBox_Label.DT7Click(Sender: TObject);
begin
  if XXZLSSVN.RequestLive then
  begin
    Copy:=TCopy.create(self);
    Copy.show;
  end;
end;

procedure TDestinationPackingBox_Label.BB7Click(Sender: TObject);
begin
  Close;
end;

procedure TDestinationPackingBox_Label.DBGrid3GetCellParams(
  Sender: TObject; Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if XXZLSSVN.fieldbyname('YN').Value='0' then
  begin
    dbgrid3.canvas.font.color:=clred;
  end;
end;

procedure TDestinationPackingBox_Label.Button2Click(Sender: TObject);
begin
  with Query1 do
  begin
    active:=false;
    SQL.Clear;
    SQL.Add('  Select xxzlssvn.*,LBZLS.YWSM as Destination,BWZL.YWSM,ZSZL.ZSYWJC,CLZL.YWPM,CLZL.DWBH ');
    SQL.Add('  from XXZLSSVN  ');
    SQL.Add('  left join LBZLS on LBZLS.LBDH=XXZLSSVN.COND and LBZLS.LB=''13''  ');
    SQL.Add('  left join BWZL on BWZL.BWDH=XXZLSSVN.BWBH  ');
    SQL.Add('  left join CLZL on CLZL.CLDH=XXZLSSVN.CLBH  ');
    SQL.Add('  left join ZSZL on ZSZL.ZSDH=XXZLSSVN.CSBH ');
    SQL.Add('  where 1=1 ');
    if DestIDEdit.Text<>'' then
      SQL.Add('      and XXZLSSVN.cond like '''+DestIDEdit.Text+'%''');
    if DestiEdit.Text<>'' then
      SQL.Add('      and LBZLS.YWSM like '''+DestiEdit.Text+'%''');
    SQL.Add('        and XXZLSSVN.XieXing=''ZZZZZZZZZ'' and XXZLSSVN.SheHao=''ZZZ'' ');
    SQL.Add('  order by xxzlssvn.cond, xxzlssvn.bwbh asc ');
    active:=true;
  end;
  panel24.Visible:=false;
  BD2.Enabled := true;
  BD3.Enabled := true;
  BD4.Enabled := true;
end;

procedure TDestinationPackingBox_Label.BD1Click(Sender: TObject);
begin
  Panel24.Visible := true;
end;

procedure TDestinationPackingBox_Label.BD7Click(Sender: TObject);
begin
  Close;
end;

procedure TDestinationPackingBox_Label.DBGridEh2EditButtonClick(
  Sender: TObject);
begin;
  if DBGridEh2.selectedfield.fieldname='BWBH' then
  begin
    Dest_BW_CL_CS:=TDest_BW_CL_CS.create(self);
    Dest_BW_CL_CS.show;
  end;
end;

procedure TDestinationPackingBox_Label.DBGridEh2GetCellParams(
  Sender: TObject; Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if Query1.fieldbyname('YN').Value='0' then
  begin
    DBGridEh2.canvas.font.color:=clred;
  end;
end;

procedure TDestinationPackingBox_Label.BD2Click(Sender: TObject);
begin
  with Query1 do
  begin
    CachedUpdates := true;
    RequestLive := true;
    Insert;
  end;
  DBGridEh2.columns[2].ButtonStyle:=cbsEllipsis;
  BD5.Enabled := true;
  BD6.Enabled := true;
end;

procedure TDestinationPackingBox_Label.BD3Click(Sender: TObject);
begin
  if Query1.recordcount>0 then
  begin
    with Query1 do
    begin
      CachedUpdates := true;
      RequestLive := true;
      Edit;
      fieldbyname('YN').Value:='0';
    end;
    BD5.Enabled := true;
    BD6.Enabled := true;
  end;
end;

procedure TDestinationPackingBox_Label.BD6Click(Sender: TObject);
begin
  with Query1 do
  begin
    Active := false;
    CachedUpdates := false;
    RequestLive := false;
    Active := true;
  end;
  DBGridEh2.columns[2].ButtonStyle:=cbsNone;
  BD5.Enabled := false;
  BD6.Enabled := false;
end;

procedure TDestinationPackingBox_Label.BD4Click(Sender: TObject);
begin
  with Query1 do
  begin
    CachedUpdates := true;
    RequestLive := true;
    Edit;
  end;
  DBGrid3.columns[2].ButtonStyle:=cbsEllipsis;
  BD5.Enabled := true;
  BD6.Enabled := true;
end;

procedure TDestinationPackingBox_Label.BD5Click(Sender: TObject);
  var i:integer;
begin
  try
    Query1.first;
    for i:=1 to Query1.RecordCount do
    begin
      case Query1.updatestatus of
        usinserted:
        begin
          if Query1.fieldbyname('BWBH').isnull or Query1.fieldbyname('cond').isnull then
          begin
            Query1.delete;
          end else
          begin
            if Query1.FieldByName('CLSL').IsNull then
            begin
              showmessage('Quantity can not be empty.');
              abort;
            end;
            Query1.edit;
            if Query1.FieldByName('ADTYP').IsNull then
            begin
              Query1.FieldByName('ADTYP').Value:='A';
            end;
            Query1.FieldByName('userID').Value:=main.edit1.text;
            Query1.FieldByName('userdate').Value:=date;
            Query1.FieldByName('YN').Value:='1';
            UpdateSQL1.apply(ukinsert);
          end;
        end;
        usmodified:
        begin
          if Query1.FieldByName('userID').Value=main.Edit1.Text then
          begin
            if Query1.fieldbyname('YN').value='0'then
            begin
              with BDelRec do
              begin
                active:=false;
                sql.Clear;
                sql.add('insert into BDelRec ');
                sql.add('(TableName ,TNO,CLBH,OldID,DelID,DelDate)');
                sql.add('values ('+''''+'XXZLSSVN'+''''+','+''''+Query1.fieldbyname('XIEXING').Value+'***'+Query1.fieldbyname('SHEHAO').Value+'''');
                sql.add(','+''''+Query1.fieldbyname('BWBH').Value+'***'+Query1.fieldbyname('cond').Value+'***'+Query1.fieldbyname('CLBH').Value+''''+',');
                sql.add(''''+Query1.fieldbyname('USERID').Value+''''+','+''''+main.Edit1.Text+''''+',getdate())');
                execsql;
                active:=false;
              end;
              UpdateSQL1.apply(ukdelete);
            end else
            begin
              if  Query1.FieldByName('CLSL').IsNull then
              begin
                showmessage('Quantity can not be empty.');
                abort;
              end;
              Query1.edit;
              if  Query1.FieldByName('ADTYP').IsNull then
              begin
                Query1.FieldByName('ADTYP').Value:='A';
              end;
              Query1.FieldByName('userID').Value:=main.edit1.text;
              Query1.FieldByName('userdate').Value:=date;
              with BDelRec do
              begin
                active:=false;
                sql.Clear;
                sql.add('insert into BDelRec ');
                sql.add('(TableName ,TNO,CLBH,OldID,DelID,DelDate)');
                sql.add('values ('+''''+'XXZLSSVNmod'+''''+','+''''+Query1.fieldbyname('XIEXING').Value+'***'+Query1.fieldbyname('SHEHAO').Value+'''');
                sql.add(','+''''+Query1.fieldbyname('cond').OldValue+'***'+Query1.fieldbyname('cond').Value+'***'+Query1.fieldbyname('BWBH').OldValue+'***');
                sql.add(+Query1.fieldbyname('BWBH').Value+'***'+Query1.fieldbyname('CLBH').OldValue+'***'+Query1.fieldbyname('CLBH').Value+'''');
                sql.add(','+''''+Query1.fieldbyname('USERID').Value+''''+','+''''+main.Edit1.Text+''''+',getdate())');
                execsql;
                active:=false;
              end;
              UpdateSQL1.apply(ukmodify);
            end;
          end else
          begin
            showmessage(' It is not yours, can not modify.');
          end;
        end;
      end;
      Query1.next;
    end;
  Query1.active:=false;
  Query1.cachedupdates:=false;
  Query1.requestlive:=false;
  Query1.active:=true;
  DBGridEh2.columns[2].ButtonStyle:=cbsNone;
  BD5.Enabled := false;
  BD6.Enabled := false;
  except
    Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
  end;
end;

end.
