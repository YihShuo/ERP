unit RWAmount1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, StdCtrls, DBCtrls, Grids, DBGrids, Mask, ComCtrls,
  Buttons, ExtCtrls,math, GridsEh, DBGridEh, ComObj;

type
  TRWAmount = class(TForm)
    PC1: TPageControl;
    TS3: TTabSheet;
    DBGrid3: TDBGridEh;
    TS4: TTabSheet;
    TS5: TTabSheet;
    DBGrid4: TDBGridEh;
    clzlsl: TQuery;
    DS4: TDataSource;
    DS3: TDataSource;
    GSPF: TQuery;
    GSPFPFBH1: TStringField;
    GSPFPFBH2: TStringField;
    clzlslPFBH2: TStringField;
    clzlslywpm: TStringField;
    clzlslzwpm: TStringField;
    clzlslclyl: TFloatField;
    clzlslcldhz: TStringField;
    Edit1: TEdit;
    Panel1: TPanel;
    Button1: TButton;
    GSPFtimes: TIntegerField;
    UpMas: TUpdateSQL;
    DBGridEh1: TDBGridEh;
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
    DS5: TDataSource;
    DBEdit1: TDBEdit;
    Label4: TLabel;
    GSPFgsbh: TStringField;
    DBEdit2: TDBEdit;
    Label5: TLabel;
    DBEdit3: TDBEdit;
    Label6: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure PC1Change(Sender: TObject);
    procedure DBGrid3DblClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RWAmount: TRWAmount;
  NDate:TDate;

implementation

uses  main1;

{$R *.dfm}

procedure TRWAmount.FormCreate(Sender: TObject);
begin

  // 使用者初始值
  if main <> nil then
    Edit1.Text := main.Edit2.Text
  else
    Edit1.Text := 'VR2';

  PC1.ActivePage:=TS3;

  with gspf do
  begin
    active:=false;
    sql.Clear;
    sql.add('select gspf.*, 0 as times from gspf                     ');
    sql.add('where gspf.gsbh = ''' + Edit1.Text + '''                ');
    sql.add('  and exists (select * from clzlsl where gspf.pfbh2 = clzlsl.cldh) ');
    sql.add('order by gspf.pfbh1                                     ');
  //  showmessage(gspf.sql.text);
    active:=true;

    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;

  clzlsl.Active:=true;
end;

procedure TRWAmount.Button1Click(Sender: TObject);
var count:Integer;
begin

  // 先查詢是否有輸入資料
  with gspf do
  begin
    count := 0;
    First;
    while not Eof do
    begin
      if FieldByName('times').Value <> 0 then
        count := count + 1;
      Next;
    end;
  end;

  if count = 0 then
  begin
    ShowMessage('Pls key in times ');
    PC1.ActivePage:=TS3;
    Abort;
  end;

  with Amount do
  begin
    active:=false;
    sql.Clear;

    //  先找第一筆
    gspf.First;
    while not gspf.Eof do
    begin
      if gspf.FieldByName('times').Value <> 0 then
      begin
        SQL.Add('select clzlsl.cldhz, clzl.ywpm, clzl.zwpm, sum(clzlsl.clyl) as clyl from');
        SQL.Add('(                                                                       ');
        SQL.Add('  select  cldhz, clyl * ' + IntToStr( gspf.FieldByName('times').Value ) + ' as clyl from clzlsl ');
        SQL.Add('  where cldh = ''' + gspf.FieldByName('pfbh2').Value + ''''              );
        break;
      end;
      gspf.next;
    end;

    // 第二筆之後的
    gspf.next;
    while not gspf.Eof do
    begin
      if gspf.FieldByName('times').Value <> 0 then
      begin
        SQL.Add('  union all                                                                ');
        SQL.Add('  select  cldhz, clyl * ' + IntToStr( gspf.FieldByName('times').Value ) + ' as clyl from clzlsl ');
        SQL.Add('  where cldh = ''' + gspf.FieldByName('pfbh2').Value + ''''              );
      end;
      gspf.next;
    end;

    // 結尾
    SQL.Add('    ) clzlsl                                                                 ');
    SQL.Add('    left join clzl on clzl.cldh = clzlsl.cldhz                               ');
    SQL.Add('    group by cldhz, clzl.ywpm, clzl.zwpm                                     ');

    Active:=True;
  end;

  ShowMessage('calculate finish.');

  PC1.ActivePage:=TS5;
  Panel1.Visible:=false;
  Panel2.Visible:=false;
  Panel3.Visible:=true;

end;

procedure TRWAmount.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=Cafree;
end;

procedure TRWAmount.FormDestroy(Sender: TObject);
begin
  RWAmount:=nil;
end;

procedure TRWAmount.PC1Change(Sender: TObject);
begin
  if PC1.ActivePage=TS3 then
  begin
    Panel1.Visible:=true;
    Panel2.Visible:=false;
    Panel3.Visible:=false;
  end
  else if PC1.ActivePage=TS4 then
  begin
    Panel1.Visible:=false;
    Panel2.Visible:=true;
    Panel3.Visible:=false;
  end
  else
  begin
    Button1Click(nil);
  end;
end;

procedure TRWAmount.DBGrid3DblClick(Sender: TObject);
begin
  PC1.ActivePage:=TS4;
  Panel1.Visible:=false;
  Panel2.Visible:=true;
  Panel3.Visible:=false;
end;

procedure TRWAmount.Button2Click(Sender: TObject);
var
      eclApp,WorkBook:olevariant;
 //     xlsFileName:string;
      i,j:integer;
begin

  if gspf.Active then
  begin
    if gspf.recordcount=0 then
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
  for   i:=1   to   gspf.fieldcount  do
  begin
    eclApp.Cells(1,i+1):=gspf.fields[i-1].FieldName;
  end;
  gspf.First;
  j:=2;
  while   not  gspf.Eof   do
    begin
      if gspf.FieldByName('times').Value <> 0 then
      begin
        eclApp.Cells(j,1):=j-1;
        for   i:=1   to   gspf.fieldcount    do
        begin
          eclApp.Cells(j,i+1):=gspf.Fields[i-1].Value;
          eclApp.Cells.Cells.item[j,i+1].font.size:='12';
        end;
        inc(j);
      end;
      gspf.Next;

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
