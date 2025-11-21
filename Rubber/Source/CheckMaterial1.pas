unit CheckMaterial1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, ComCtrls, GridsEh, DBGridEh, StdCtrls, ExtCtrls,
  Buttons,ComObj;

type
  TCheckMaterial = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit5: TEdit;
    Button1: TButton;
    Button2: TButton;
    ChekMat: TCheckBox;
    DBGridEh1: TDBGridEh;
    Query1: TQuery;
    Query1cldh: TStringField;
    Query1ywpm: TStringField;
    Query1zwpm: TStringField;
    Query1dwbh: TStringField;
    DataSource1: TDataSource;
    Query1cldh_dd: TStringField;
    Query1ywpm_dd: TStringField;
    Query1zwpm_dd: TStringField;
    BitBtn2: TBitBtn;
    Query2: TQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure ChekMatClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CheckMaterial: TCheckMaterial;

implementation

uses main1,fununit;

{$R *.dfm}

procedure TCheckMaterial.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TCheckMaterial.FormDestroy(Sender: TObject);
begin
  CheckMaterial:=nil;
end;

procedure TCheckMaterial.Button1Click(Sender: TObject);
begin
  with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.Add('select clzl.cldh,clzl.ywpm,clzl.zwpm,clzl.dwbh,CLZL_DD.cldh as cldh_dd,CLZL_DD.ywpm as ywpm_dd,CLZL_DD.zwpm as zwpm_dd ');
    sql.Add('from clzl ');
    sql.Add('LEFT JOIN '+main.LIY_DD+'.dbo.CLZL CLZL_DD on CLZL.cldh=Substring(CLZL_DD.cldh,2,10) ');
    sql.Add('where clzl.cldh like ''W%'' ');
    if edit1.Text<>'' then
      sql.Add('and clzl.cldh like '''+edit1.Text+'%'' ');
    if edit2.Text<>'' then
      sql.Add('and clzl.ywpm like ''%'+edit2.Text+'%'' ');
    if edit5.Text<>'' then
      sql.Add('and clzl.zwpm like ''%'+edit5.Text+'%'' ');
    if ChekMat.Checked then
      sql.Add('and ( clzl.ywpm <> CLZL_DD.ywpm or clzl.zwpm <> CLZL_DD.zwpm)  ');
    active:=true;
  end;
end;

procedure TCheckMaterial.Button2Click(Sender: TObject);
var
  eclApp,WorkBook:olevariant;
  i,j:integer;
begin
  if query1.Active then
  begin
    if query1.recordcount=0 then
    begin
      showmessage('No record.');
      abort;
    end;
  end else
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
    for i:=0 to DBGridEh1.Columns.Count-1 do
    begin
      eclApp.Cells(1,i+2):=DBGridEh1.Columns[i].Title.Caption;
    end;
    query1.First;
    j:=2;
    while   not  query1.Eof   do
    begin
      eclApp.Cells(j,1):=j-1;
      for i:=0 to DBGridEh1.Columns.Count-1 do
      begin
        eclApp.Cells[j,i+8].NumberFormatLocal:='@';
        eclApp.Cells(j,i+2):=DBGridEh1.Fields[i].Value;
        eclApp.Cells.Cells.item[j,i+2].font.size:='8';
      end;
      query1.Next;
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

procedure TCheckMaterial.BitBtn2Click(Sender: TObject);
var i,j:integer;
begin
  if ChekMat.Checked=false then
  begin
    showmessage('Pls check Material name not the same');
    abort;
  end;
  if  Messagedlg(Pchar('Do you want to syn?'),mtInformation,[mbNo,mbYes],0)=mrYes then
  begin
    Query1.First;
    j:=0;
    for i:=0 to Query1.RecordCount-1 do
    begin
      with query2 do
      begin
        active:=false;
        sql.clear;
        Sql.Add(' update CLZL   ');
        sql.Add(' Set YWPM= '''+query1.fieldByName('YWPM').AsString+''' ,ZWPM='''+query1.fieldByName('ZWPM').AsString+''' ');
        sql.Add(' from '+main.LIY_DD+'.dbo.CLZL CLZL ') ;
        sql.Add(' where CLDH = '''+query1.fieldByName('CLDH_DD').AsString+''' ');
        //funcobj.WriteErrorLog(sql.GetText);
        execsql;
        inc(j);
      end;
      Query1.Next;
    end;
    showmessage('Syn: '+ inttostr(j)+' record');
  end;
  button1.Click;
end;

procedure TCheckMaterial.ChekMatClick(Sender: TObject);
begin
  button1.Click;
end;

end.
