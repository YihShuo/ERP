unit MaterialReleasedRecords1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, DB, DBTables, StdCtrls, ComCtrls, ExtCtrls, Grids,
  DBGrids,dateutils, GridsEh, DBGridEh,comobj, PrnDbgeh,IniFiles;

type
  TMaterialReleasedRecords = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label6: TLabel;
    MatNoEdit: TEdit;
    Button1: TButton;
    MatNameEdit: TEdit;
    Button3: TButton;
    DBGridEh1: TDBGridEh;
    DS1: TDataSource;
    Query1: TQuery;
    Query1ListNo: TStringField;
    Query1ConfirmDate: TDateTimeField;
    Query1MaterialID: TStringField;
    Query1ywpm: TStringField;
    Query1RY_Begin: TStringField;
    Query1ARTICLE: TStringField;
    Query1Usage: TCurrencyField;
    Query1IssuanceUsage: TCurrencyField;
    Query1dwbh: TStringField;
    Query1LotNO: TStringField;
    Query1KCBH: TStringField;
    Query1UserID: TStringField;
    Query1Dept: TStringField;
    DTP1: TDateTimePicker;
    Label4: TLabel;
    DTP2: TDateTimePicker;
    Label5: TLabel;
    Edit1: TEdit;
    Qtemp: TQuery;
    Query1Serial: TStringField;
    Query1Style: TStringField;
    Query1Note: TStringField;
    CheckBox1: TCheckBox;
    Edit2: TEdit;
    Label2: TLabel;
    Query1FlexID: TStringField;
    Query1SR: TStringField;
    Query1XieMing: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    NDate:TDate;
    procedure ReadIni();
    { Private declarations }
  public
    WH_DiplayFormat:String;
    { Public declarations }
  end;

var
  MaterialReleasedRecords: TMaterialReleasedRecords;

implementation

uses main1,fununit;

{$R *.dfm}

procedure TMaterialReleasedRecords.ReadIni();
var MyIni :Tinifile;
    AppDir:string;
begin
  WH_DiplayFormat:='#,##0.00';
  AppDir:=ExtractFilePath(Application.ExeName);
  if FileExists(AppDir+'\ComName.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ComName.ini');
      WH_DiplayFormat:=MyIni.ReadString('Warehouse','DiplayFormat','#,##0.00');
    finally
      MyIni.Free;
    end;
  end;

  TCurrencyField(Query1.FieldByName('Usage')).DisplayFormat:=WH_DiplayFormat;
  TCurrencyField(Query1.FieldByName('IssuanceUsage')).DisplayFormat:=WH_DiplayFormat;
end;

procedure TMaterialReleasedRecords.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TMaterialReleasedRecords.FormDestroy(Sender: TObject);
begin
  MaterialReleasedRecords:=nil;
end;

procedure TMaterialReleasedRecords.Button1Click(Sender: TObject);
begin
  with Query1 do
  begin
    active:=false;
    sql.Clear;
    sql.Add('select MRCard.ListNo, MRCard.ConfirmDate, MRCardS.MaterialID, clzl.ywpm, Building+''_''+Lean+''_''+Section Dept, MRCardS.UserID, ddzl.ARTICLE, ');
    sql.Add('       MRCardS.RY_Begin, MRCardS.Usage, MRCardS.IssuanceUsage, CLZL.dwbh, LotNO, KCZLS.KCBH, ''Pending'' Serial, ''Pending'' Style, ''Pending'' Note, ');
    sql.Add('       clzl_flex.cldhflex as FlexID, XXZL.XieMing, kfxxzl.DEVCODE as SR ');
    sql.Add('from MRCard ');
    sql.Add('left join MRCardS on MRCard.ListNo=MRCardS.ListNo ');
    sql.Add('left join clzl on clzl.cldh=MRCardS.MaterialID ');
    sql.Add('left join ddzl on ddzl.ddbh=MRCardS.RY_Begin ');
    sql.add('left join clzl_flex on clzl.cldh=clzl_flex.cldh ');
    sql.add('left join XXZL with (nolock) on XXZl.XieXing=ddzl.XieXing and XXZL.SheHao=ddzl.SheHao ');
    sql.add('left join KFXXZL with (nolock) on KFXXZL.XieXing=ddzl.XieXing and KFXXZL.SheHao=ddzl.SheHao');
    sql.Add('left join KCZLS on MRCard.GSBH=KCZLS.CKBH and MRCardS.MaterialID=KCZLS.CLBH ');
    sql.add('where MRCard.GSBH='''+main.Edit2.Text+''' ');
    if CheckBox1.Checked then
    begin
      sql.add('    and convert(smalldatetime,convert(varchar,MRCard.ConfirmDate,111)) between ');
      sql.add('      '''+formatdatetime('yyyy/MM/dd',DTP1.date )+''' and '''+formatdatetime('yyyy/MM/dd',DTP2.date )+''' ');
    end;
    if Edit1.Text <> '' then
      sql.add('    and MRCard.ListNo like '''+edit1.Text+'%'' ');
    if MatNoEdit.Text <> '' then
      sql.add('    and MRCardS.MaterialID like '''+MatNoEdit.Text+'%'' ');
    if MatNameEdit.Text <> '' then
      sql.add('    and clzl.ywpm like ''%'+MatNameEdit.Text+'%'' ');
    if Edit2.Text <> '' then
      sql.add('    and MRCardS.RY_Begin like '''+Edit2.Text+'%'' ');
    sql.add('order by MRCard.ListNo ');
    //funcobj.WriteErrorLog(sql.Text);
    active:=true;
  end;
end;

procedure TMaterialReleasedRecords.Button3Click(Sender: TObject);
var   eclApp,WorkBook:olevariant;
      i,j:integer;
begin
  if  Query1.active  then
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
      for i:=0 to DBGridEh1.Columns.Count-1 do
        eclApp.Cells(1,i+1):=DBGridEh1.Columns[i].Title.Caption;
      Query1.First;
      j:=2;
      while   not   Query1.Eof   do
      begin
        for i:=0 to DBGridEh1.Columns.Count-1 do
          eclApp.Cells(j,i+1):=DBGridEh1.Fields[i].Value;
        Query1.Next;
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

procedure TMaterialReleasedRecords.FormCreate(Sender: TObject);
begin
  with Qtemp do
  begin
    active:=false;
    sql.Clear;
    sql.add('select getdate() as NDate ');
    active:=true;
    Ndate:=fieldbyname('NDate').Value;
    active:=false;
  end;
  //
  DTP1.Date:=Ndate-3;
  DTP2.Date:=Ndate;

  ReadIni();
end;

end.
