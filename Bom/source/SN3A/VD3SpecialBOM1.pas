unit VD3SpecialBOM1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ExtCtrls,comobj,IniFiles,fununit;

type
  TVD3SpecialBOM = class(TForm)
    Panel1: TPanel;
    DBGridEh1: TDBGridEh;
    Query1: TQuery;
    DataSource1: TDataSource;
    Label1: TLabel;
    ArticleEdit: TEdit;
    Label2: TLabel;
    DestIDEdit: TEdit;
    Label3: TLabel;
    DestiEdit: TEdit;
    Label4: TLabel;
    SeaEdit: TEdit;
    Button1: TButton;
    Button2: TButton;
    Query1XieXing: TStringField;
    Query1SheHao: TStringField;
    Query1cond: TStringField;
    Query1BWBH: TStringField;
    Query1CLBH: TStringField;
    Query1CSBH: TStringField;
    Query1LOSS: TFloatField;
    Query1CLSL: TFloatField;
    Query1USERID: TStringField;
    Query1USERDATE: TDateTimeField;
    Query1YN: TStringField;
    Query1Destination: TStringField;
    Query1Article: TStringField;
    Query1JiJie: TStringField;
    Query1KHDH: TStringField;
    Query1ZWSM: TStringField;
    Query1YWSM: TStringField;
    Query1YWPM: TStringField;
    Query1DWBH: TStringField;
    Query1CQDH: TStringField;
    Label5: TLabel;
    MatNOEdit: TEdit;
    Label6: TLabel;
    MatNEdit: TEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    BOM_N3A_KHDH:String;
    procedure ReadIni();
    { Public declarations }
  end;

var
  VD3SpecialBOM: TVD3SpecialBOM;

implementation

uses main1;

{$R *.dfm}

procedure TVD3SpecialBOM.ReadIni();
var MyIni :Tinifile;
    AppDir:string;
begin

  AppDir:=ExtractFilePath(Application.ExeName);
  if FileExists(AppDir+'\ComName.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ComName.ini');
      BOM_N3A_KHDH:=MyIni.ReadString('ERP','BOM_N3A_KHDH','');
    finally
      MyIni.Free;
    end;
  end;
end;

procedure TVD3SpecialBOM.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 action:=cafree;
end;

procedure TVD3SpecialBOM.FormDestroy(Sender: TObject);
begin
  VD3SpecialBOM:=nil;
end;

procedure TVD3SpecialBOM.Button1Click(Sender: TObject);
begin
  if ((ArticleEdit.text='') and (DestIDEdit.text='') and (DestiEdit.Text='') and (SeaEdit.Text='')
      and (MatNOEdit.Text='') and (MatNEdit.Text='')) then
  begin
    showmessage('Please enter at least one condition. ');
    abort;
  end;

  with Query1 do
  begin
    active:=false;
    SQL.Clear;
    SQL.Add('  Select XXZLSS.*,LBZLS.YWSM as Destination,XXZL.Article,XXZL.JiJie,XXZL.KHDH,BWZL.ZWSM,BWZL.YWSM,CLZL.YWPM,CLZL.DWBH,CLZL.CQDH  ');
    SQL.Add('  from XXZLSS  ');
    SQL.Add('  left join XXZL on XXZL.XieXing=XXZLSS.XieXing and XXZL.SheHao=XXZLSS.SHeHao  ');
    SQL.Add('  left join LBZLS on LBZLS.LBDH=XXZLSS.COND and LBZLS.LB=''13''  ');
    SQL.Add('  left join BWZL on BWZL.BWDH=XXZLSS.BWBH  ');
    SQL.Add('  left join CLZL on CLZL.CLDH=XXZLSS.CLBH  ');
    if BOM_N3A_KHDH<>'' then
    SQL.Add('  where XXZL.KHDH in ('''+BOM_N3A_KHDH+''' )');
    if ArticleEdit.Text<>'' then
      SQL.Add('  and XXZL.Article like '''+ArticleEdit.Text+'%''');
    if DestIDEdit.Text<>'' then
      SQL.Add('  and XXZLSS.cond like '''+DestIDEdit.Text+'%''');
    if DestiEdit.Text<>'' then
      SQL.Add('  and LBZLS.YWSM like '''+DestiEdit.Text+'%''');
    if SeaEdit.Text<>'' then
      SQL.Add('  and XXZL.JiJie like '''+SeaEdit.Text+'%''');
    if MatNOEdit.Text<>'' then
      SQL.Add('  and XXZLSS.CLBH like '''+MatNOEdit.Text+'%''');
    if MatNEdit.Text<>'' then
      SQL.Add('  and CLZL.YWPM like ''%'+MatNEdit.Text+'%''');
    SQL.Add('order by XXZL.Article ');
    active:=true;
  end;
end;

procedure TVD3SpecialBOM.Button2Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
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
      eclapp.Cells.NumberFormatLocal:='@';
      for   i:=0   to   DBGridEh1.fieldcount-1   do
      begin
        eclApp.Cells(1,i+1):=DBGridEh1.fields[i].FieldName;
      end;

      Query1.First;
      j:=2;
      while   not   Query1.Eof   do
      begin
        for   i:=0   to  DBGridEh1.fieldcount-1  do
        begin
          eclApp.Cells(j,i+1):=DBGridEh1.Fields[i].Value;
        end;
        Query1.Next;
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
end;

procedure TVD3SpecialBOM.FormCreate(Sender: TObject);
begin
  ReadIni();
end;

end.
