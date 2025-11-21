unit DelOther_KI_CL1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ExtCtrls,IniFiles, fununit;

type
  TDelOther_KI_CL = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Button1: TButton;
    Edit2: TEdit;
    EDIT1: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    DBGridEh1: TDBGridEh;
    DS1: TDataSource;
    Query1: TQuery;
    Query1CLBH: TStringField;
    Query1YWPM: TStringField;
    Query1ZWPM: TStringField;
    Query1DWBH: TStringField;
    Query1CLSL: TFloatField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    procedure ReadIni();
    { Private declarations }
  public
    Pro_CostID_ZZ:string;
    { Public declarations }
  end;

var
  DelOther_KI_CL: TDelOther_KI_CL;

implementation

uses main1, DelOther_KI1;

{$R *.dfm}

procedure TDelOther_KI_CL.ReadIni();
var MyIni :Tinifile;
    AppDir:string;
begin
  Pro_CostID_ZZ:='62721';
  //
  AppDir:=ExtractFilePath(Application.ExeName);
  if FileExists(AppDir+'\ComName.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ComName.ini');
      Pro_CostID_ZZ:= MyIni.ReadString('ERP','Pro_CostID_ZZ','62721');
    finally
      MyIni.Free;
    end;
  end;
end;


procedure TDelOther_KI_CL.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TDelOther_KI_CL.FormDestroy(Sender: TObject);
begin
  DelOther_KI_CL:=nil;
end;

procedure TDelOther_KI_CL.Button1Click(Sender: TObject);
begin
  with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select CLZL.CLDH as CLBH,CLZL.YWPM,CLZL.ZWPM,CLZL.DWBH,sum(KHUONIN_ZLZLS2.CLSL) as CLSL ');
    sql.add('from CLZL ');
    sql.add('left join KHUONIN_ZLZLS2 on CLZL.CLDH=KHUONIN_ZLZLS2.CLBH');
    sql.add('where CLZL.CLDH like '''+edit1.Text+'%'+''' ');
    sql.add('      and CLZL.YWPM like '''+'%'+edit2.Text+'%'+''' ');
    sql.add('      and CLZL.YWPM like '''+'%'+edit3.Text+'%'+''' ');
    if edit4.text<>'' then
    begin
      sql.add('    and KHUONIN_ZLZLS2.ZLBH like '''+edit4.Text+'%'+''' ');
    end;
    sql.add('     and CLZL.CLDH like ''W%''   ');
    sql.add('group by CLZL.CLDH,CLZL.YWPM,CLZL.ZWPM,CLZL.DWBH ');
    sql.add('order by CLZL.CLDH');
    //funcobj.WriteErrorLog(sql.Text);
    active:=true;
  end;
end;

procedure TDelOther_KI_CL.DBGridEh1DblClick(Sender: TObject);
begin
  if (not query1.Active) then
  begin
    abort;
  end;
  if (Query1.recordcount<1) then
  begin
    abort;
  end;
  with DelOther_KI.DelDet do
  begin
    fieldbyname('CLBH').value:=query1.fieldbyname('CLBH').value;
    fieldbyname('YWPM').value:=query1.fieldbyname('YWPM').value; 
    fieldbyname('ZWPM').value:=query1.fieldbyname('ZWPM').value;
    fieldbyname('DWBH').value:=query1.fieldbyname('DWBH').value;
    fieldbyname('CostID').value:=Pro_CostID_ZZ;
    fieldbyname('CLSL').value:=0;
    insert;
  end;
  showmessage('Succeed');
end;

procedure TDelOther_KI_CL.FormCreate(Sender: TObject);
begin
  ReadIni();
end;

procedure TDelOther_KI_CL.FormShow(Sender: TObject);
begin
  main.FormLanguage(Pointer(self),self.Name);
end;

end.
