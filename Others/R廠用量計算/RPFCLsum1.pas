unit RPFCLsum1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, StdCtrls, DBCtrls, Grids, DBGrids, Mask, ComCtrls,
  Buttons, ExtCtrls,math, GridsEh, DBGridEh, ComObj;

type
  TRPFCLsum = class(TForm)
    PC1: TPageControl;
    TS3: TTabSheet;
    DBGrid3: TDBGridEh;
    TS4: TTabSheet;
    TS5: TTabSheet;
    TS6: TTabSheet;
    DBGrid4: TDBGridEh;
    ddzl: TQuery;
    DS4: TDataSource;
    DS3: TDataSource;
    ddzls2: TQuery;
    Edit1: TEdit;
    Panel1: TPanel;
    Button1: TButton;
    UpMas: TUpdateSQL;
    Label2: TLabel;
    Panel3: TPanel;                                                                                        
    Label1: TLabel;
    Button2: TButton;
    Panel2: TPanel;
    Label3: TLabel;
    Amount: TQuery;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    FloatField1: TFloatField;
    DS6: TDataSource;
    Label4: TLabel;
    Label7: TLabel;
    CB1: TComboBox;
    Label9: TLabel;
    Label10: TLabel;
    DTP2: TDateTimePicker;
    Label11: TLabel;
    Button3: TButton;
    DTP1: TDateTimePicker;
    ddzls2cldh: TStringField;
    ddzls2KGS: TFloatField;
    ddzls2totalKGS: TFloatField;
    ddzls2RealTimes: TIntegerField;
    ddzls2AddTimes: TIntegerField;
    ddzls2FinTimes: TIntegerField;
    detail_func: TButton;
    ddzlddbh: TStringField;
    ddzlcqdh: TStringField;
    ddzlkhdh: TStringField;
    ddzlxiexing: TStringField;
    ddzlshehao: TStringField;
    ddzlarticle: TStringField;
    ddzlddrq: TStringField;
    ddzlscrq: TStringField;
    ddzlddjq: TStringField;
    ddzlpairs: TFloatField;
    ddzlkgs: TFloatField;
    CKB1: TCheckBox;
    DBEdit1: TDBEdit;
    Label6: TLabel;
    Edit3: TEdit;
    DBGridEh2: TDBGridEh;
    DBGridEh1: TDBGridEh;
    clzlsl: TQuery;
    clzlslPFBH2: TStringField;
    clzlslcldhz: TStringField;
    clzlslywpm: TStringField;
    clzlslzwpm: TStringField;
    clzlslclyl: TFloatField;
    DS5: TDataSource;
    Panel4: TPanel;
    Label5: TLabel;
    Label14: TLabel;
    DBEdit4: TDBEdit;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure PC1Change(Sender: TObject);
    procedure DBGrid3DblClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure ddzls2CalcFields(DataSet: TDataSet);
    procedure detail_funcClick(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure CB1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RPFCLsum: TRPFCLsum;
  NDate:TDate;

implementation


{$R *.dfm}

procedure TRPFCLsum.FormCreate(Sender: TObject);
begin

  // 使用者初始值
  {if main <> nil then
    Edit1.Text := main.Edit2.Text
  else
    Edit1.Text := 'VR2';
 }
  Edit1.Text := 'VR2';
  PC1.ActivePage:=TS3;

  DTP1.Date:=date;
  DTP2.date:=date+30;
  Edit3.Text := CB1.Text;
end;

procedure TRPFCLsum.Button1Click(Sender: TObject);
begin


  if CKB1.Checked then
  begin
    with ddzls2 do
    begin
      SQL.Clear;
      Active:=false;
      SQL.Add('select isnull(ddzls2.cldh, ''ZZZZZZZZ'') as cldh, isnull(CLZL.TOTKGS, 0) as KGS, isnull(SUM(KGS), 0) as totalKGS, 0  as RealTimes, 0 as AddTimes, 0 as FinTimes ');
      SQL.Add('from DDZL                                                                                                ');
      SQL.Add('LEFT JOIN DDZLS2 ON DDZL.DDBH = DDZLS2.DDBH  AND  DDZL.CQDH = DDZLS2.CQDH                                ');
      SQL.Add('LEFT JOIN CLZL ON DDZLS2.CLDH = CLZL.CLDH                                                                ');
      sql.add('where DDZL.SCRQ>='+''''+formatdatetime('yyyyMMdd',DTP1.date)+'''');
      sql.add('  and DDZL.SCRQ<='+''''+formatdatetime('yyyyMMdd',DTP2.date)+'''');

      if CB1.ItemIndex <> 0 then
        SQL.Add('and ddzl.cqdh = ''' + CB1.Text + '''');

      SQL.Add('and CLZL.TOTKGS is null                                                                                  ');
      SQL.Add('group by ddzls2.cldh, CLZL.TOTKGS                                                                        ');

  //    ShowMessage(SQL.Text);
      Active:=true;
      requestlive:=false;
      cachedupdates:=false;
    end;
  end
  else
  begin
    with ddzls2 do
    begin
      SQL.Clear;
      Active:=false;
      SQL.Add('SELECT clzlsl.cldh, isnull(CLZL.TOTKGS, 0) as KGS, isnull(DDZL.totalKGS, 0) as totalKGS, 0  as RealTimes, 0 as AddTimes, 0 as FinTimes, ( case when DDZL.totalKGS is not null then 1 else 0 end ) YN  ');
      SQL.Add('FROM ( select distinct cldh from clzlsl ) clzlsl                                          ');
      SQL.Add('LEFT JOIN ( SELECT DDZLS2.CLDH, isnull(SUM(KGS), 0) as totalKGS                           ');
      SQL.Add('            FROM DDZLS2                                                                   ');
      SQL.Add('            LEFT JOIN DDZL ON DDZL.DDBH = DDZLS2.DDBH  AND  DDZL.CQDH = DDZLS2.CQDH       ');
      SQL.Add('            WHERE DDZL.SCRQ >= ''' + formatdatetime('yyyyMMdd',DTP1.date) + ''''           );
      SQL.Add('              AND DDZL.SCRQ <= ''' + formatdatetime('yyyyMMdd',DTP2.date) + ''''           );

      if CB1.ItemIndex <> 0 then
        SQL.Add('            and ddzl.cqdh = ''' + CB1.Text + '''');

      SQL.Add('            GROUP BY DDZLS2.CLDH                                                          ');
      SQL.Add('           ) DDZL ON clzlsl.cldh = DDZL.CLDH                                              ');
      SQL.Add('LEFT JOIN CLZL ON clzlsl.cldh = CLZL.CLDH                                                 ');
      SQL.Add('ORDER BY YN DESC                                                                          ');

  //    ShowMessage(SQL.Text);
      Active:=true;
      requestlive:=true;
      cachedupdates:=true;
      edit;
    end;
  end;

end;


procedure TRPFCLsum.detail_funcClick(Sender: TObject);
begin

  if ( ddzls2.active = true ) and ( ddzls2.RecordCount <> 0 ) then
  begin
    with ddzl do
    begin
      SQL.Clear;
      Active:=false;
      SQL.Add('select ddzl.ddbh, ddzl.cqdh, ddzl.khdh, ddzl.xiexing, ddzl.shehao, ddzl.article, ddzl.ddrq, ddzl.scrq, ddzl.ddjq , ddzl.pairs, ddzls2.kgs');
      SQL.Add('from ddzl                                                                                                ');
      SQL.Add('left join ddzls2 on ddzl.ddbh = ddzls2.ddbh and ddzl.cqdh = ddzls2.cqdh                                  ');
      sql.add('where DDZL.SCRQ>='+''''+formatdatetime('yyyyMMdd',DTP1.date)+'''');
      sql.add('  and DDZL.SCRQ<='+''''+formatdatetime('yyyyMMdd',DTP2.date)+'''');

      if CB1.ItemIndex <> 0 then
        SQL.Add('and ddzl.cqdh = ''' + CB1.Text + '''');

      if ddzls2.FieldByName('cldh').Value <>  'ZZZZZZZZ' then      // 是否已建立 ddzls2
        SQL.Add('  and ddzls2.cldh = ''' + ddzls2.FieldByName('cldh').Value + '''')
      else
        SQL.Add('  and ddzls2.kgs is null');

  //  ShowMessage(sql.Text);
      Active:=true;
    end;
  end;
end;

procedure TRPFCLsum.ddzls2CalcFields(DataSet: TDataSet);
begin
  if ddzls2.FieldByName('KGS').Value <> 0 then
    ddzls2.FieldByName('RealTimes').Value := Ceil( ddzls2.FieldByName('totalKGS').Value / ddzls2.FieldByName('KGS').Value )
  else
    ddzls2.FieldByName('RealTimes').Value := 0;
  ddzls2.FieldByName('FinTimes').Value := ddzls2.FieldByName('RealTimes').Value + ddzls2.FieldByName('AddTimes').Value;
end;

procedure TRPFCLsum.Button3Click(Sender: TObject);
var count:Integer;
begin

  if ddzls2.active = false then abort;
  if ddzls2.RecordCount = 0 then abort;

  with ddzls2 do
  begin
    count := 0;
    First;
    while ( not Eof ) and ( count = 0 ) do
    begin
      if FieldByName('FinTimes').Value <> 0 then
        count := count + 1;
      Next;
    end;
  end;

  if count = 0 then
  begin
    ShowMessage('Pls key in times ');
    PC1.ActivePage:=TS3;
    Panel1.Visible:=true;
    Panel2.Visible:=false;
    Panel3.Visible:=false;
    Panel4.Visible:=false;
    Abort;
  end;

  with Amount do
  begin
    active:=false;
    sql.Clear;

    //  先找第一筆
    ddzls2.First;
    while not ddzls2.Eof do
    begin
      if ddzls2.FieldByName('FinTimes').Value <> 0 then
      begin
        SQL.Add('select clzlsl.cldhz, clzl.ywpm, clzl.zwpm, sum(clzlsl.clyl) as clyl from');
        SQL.Add('(                                                                       ');
        SQL.Add('  select  cldhz, clyl * ' + IntToStr( ddzls2.FieldByName('FinTimes').Value ) + ' as clyl from clzlsl ');
        SQL.Add('  where cldh = ''' + ddzls2.FieldByName('cldh').Value + ''''             );
        break;
      end;
      ddzls2.next;
    end;

    // 第二筆之後的
    ddzls2.next;
    while not ddzls2.Eof do
    begin
      if ddzls2.FieldByName('FinTimes').Value <> 0 then
      begin
        SQL.Add('  union all                                                                ');
        SQL.Add('  select  cldhz, clyl * ' + IntToStr( ddzls2.FieldByName('FinTimes').Value ) + ' as clyl from clzlsl ');
        SQL.Add('  where cldh = ''' + ddzls2.FieldByName('cldh').Value + ''''              );
      end;
      ddzls2.next;
    end;

    // 結尾
    SQL.Add('    ) clzlsl                                                                 ');
    SQL.Add('    left join clzl on clzl.cldh = clzlsl.cldhz                               ');
    SQL.Add('    group by cldhz, clzl.ywpm, clzl.zwpm                                     ');

    Active:=True;
  end;

  ShowMessage('calculate finish.');
  
  ddzls2.first;
  PC1.ActivePage:=TS6;
  Panel1.Visible:=false;
  Panel2.Visible:=false;
  Panel3.Visible:=true;
  Panel4.Visible:=false;
end;

procedure TRPFCLsum.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=Cafree;
end;

procedure TRPFCLsum.FormDestroy(Sender: TObject);
begin
  RPFCLsum:=nil;
end;

procedure TRPFCLsum.CB1Change(Sender: TObject);
begin
  Edit3.Text := CB1.Text;
end;

procedure TRPFCLsum.PC1Change(Sender: TObject);
begin
  if PC1.ActivePage=TS3 then
  begin
    Panel1.Visible:=true;
    Panel2.Visible:=false;
    Panel3.Visible:=false;
    Panel4.Visible:=false;
  end
  else if PC1.ActivePage=TS4 then
  begin
    detail_funcClick(nil);
    Panel1.Visible:=false;
    Panel2.Visible:=true;
    Panel3.Visible:=false;
    Panel4.Visible:=false;
  end
  else if PC1.ActivePage=TS5 then
  begin
    if ( ddzls2.active = true ) and ( ddzls2.RecordCount <> 0 ) then
    begin
      clzlsl.Active:=false;
      clzlsl.Active:=true;
    end;
    Panel1.Visible:=false;
    Panel2.Visible:=false;
    Panel3.Visible:=false;
    Panel4.Visible:=true;
  end
  else
  begin
    Button3Click(nil);
    Panel1.Visible:=false;
    Panel2.Visible:=false;
    Panel3.Visible:=true;
    Panel4.Visible:=false;
  end;
end;

procedure TRPFCLsum.DBGrid3DblClick(Sender: TObject);
begin
  detail_funcClick(nil);
  PC1.ActivePage:=TS4;
  Panel1.Visible:=false;
  Panel2.Visible:=true;
  Panel3.Visible:=false;
  Panel4.Visible:=false;
end;

procedure TRPFCLsum.Button2Click(Sender: TObject);
var
      eclApp,WorkBook:olevariant;
 //     xlsFileName:string;
      i,j:integer;
begin

  if ddzls2.Active then
  begin
    if ddzls2.recordcount=0 then
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

  if Amount.Active then
  begin
    if Amount.recordcount=0 then
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
  WorkBook.WorkSheets[1].Activate;

  eclApp.Cells(1,1):='NO';
  for   i:=1   to   ddzls2.fieldcount  do
  begin
    eclApp.Cells(1,i+1):=ddzls2.fields[i-1].FieldName;
  end;
  ddzls2.First;
  j:=2;
  while   not  ddzls2.Eof   do
    begin
      if ddzls2.FieldByName('FinTimes').Value <> 0 then
      begin
        eclApp.Cells(j,1):=j-1;
        for   i:=1   to   ddzls2.fieldcount    do
        begin
          eclApp.Cells(j,i+1):=ddzls2.Fields[i-1].Value;
          eclApp.Cells.Cells.item[j,i+1].font.size:='12';
        end;
        inc(j);
      end;
      ddzls2.Next;

    end;
  eclapp.columns.autofit;


  WorkBook.WorkSheets[2].Activate;
  eclApp.Cells(1,1):='NO';
  for   i:=1   to  Amount.fieldcount  do
    begin
      eclApp.Cells(1,i+1):=Amount.fields[i-1].FieldName;
    end;
  Amount.First;
  j:=2;
  while   not Amount.Eof   do
    begin
      eclApp.Cells(j,1):=j-1;
      for   i:=1   to   Amount.fieldcount    do
        begin
          eclApp.Cells(j,i+1):=Amount.Fields[i-1].Value;
          eclApp.Cells.Cells.item[j,i+1].font.size:='12';
        end;
      Amount.Next;
      inc(j);
    end;
  eclapp.columns.autofit;
  WorkBook.WorkSheets[1].Activate;

  showmessage('Succeed.');
  eclApp.Visible:=True;

except
  on   F:Exception   do
    showmessage(F.Message);
end;

end;



end.
