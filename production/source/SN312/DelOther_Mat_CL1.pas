unit DelOther_Mat_CL1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls, GridsEh,
  DBGridEh,IniFiles;

type
  TDelOther_Mat_CL = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Button1: TButton;
    Edit2: TEdit;
    EDIT1: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    DS1: TDataSource;
    Query1: TQuery;
    Query1CLBH: TStringField;
    Query1ywpm: TStringField;
    Query1zwpm: TStringField;
    Query1dwbh: TStringField;
    Query1CLSL: TFloatField;
    DBGridEh1: TDBGridEh;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    procedure ReadIni();
    { Private declarations }
  public
    Pro_CostID_HC:string;
    { Public declarations }
  end;

var
  DelOther_Mat_CL: TDelOther_Mat_CL;

implementation

uses DelOther_C1, main1;

{$R *.dfm}
procedure TDelOther_Mat_CL.ReadIni();
var MyIni :Tinifile;
    AppDir:string;
begin
  Pro_CostID_HC:='62113';
  //
  AppDir:=ExtractFilePath(Application.ExeName);
  if FileExists(AppDir+'\ComName.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ComName.ini');
      Pro_CostID_HC:= MyIni.ReadString('ERP','Pro_CostID_HC','62113');
    finally
      MyIni.Free;
    end;
  end;
end;



procedure TDelOther_Mat_CL.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TDelOther_Mat_CL.FormDestroy(Sender: TObject);
begin
  DelOther_Mat_CL:=nil;
end;

procedure TDelOther_Mat_CL.Button1Click(Sender: TObject);
begin
  with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select CLZL.CLDH as CLBH,CLZL.YWPM,CLZL.ZWPM,CLZL.DWBH,sum(ZLZLS2.CLSL) as CLSL ');
    sql.add('from CLZL ');
    sql.add('left join ZLZLS2 on CLZL.CLDH=ZLZLS2.CLBH');
    sql.add('where CLZL.CLDH like'+''''+edit1.Text+'%'+'''');
    sql.add('      and CLZL.YWPM like '+''''+'%'+edit2.Text+'%'+'''');
    sql.add('      and CLZL.YWPM like '+''''+'%'+edit3.Text+'%'+'''');  
    {if edit4.text='' then
      begin
        sql.add('      and (CLZL.TYJH is null or CLZL.TYJH='+''''+'N'+''''+')');
      end;   }
    if edit4.text<>'' then
      begin
        sql.add('      and ZLZLS2.ZLBH like '+''''+edit4.Text+'%'+'''');
      end;
    sql.add('      and CLZL.CLDH like '+''''+'W%'+'''');
    sql.add('group by CLZL.CLDH,CLZL.YWPM,CLZL.ZWPM,CLZL.DWBH ');
    sql.add('order by CLZL.CLDH');
    active:=true;
  end;
end;

procedure TDelOther_Mat_CL.DBGridEh1DblClick(Sender: TObject);
begin
  if (not query1.Active) then
  begin
    abort;
  end;
  if (Query1.recordcount<1) then
  begin
    abort;
  end;
  with DelOther_C.DelDet do
  begin
    fieldbyname('CLBH').value:=query1.fieldbyname('CLBH').value;
    fieldbyname('YWPM').value:=query1.fieldbyname('YWPM').value; 
    fieldbyname('ZWPM').value:=query1.fieldbyname('ZWPM').value;
    fieldbyname('DWBH').value:=query1.fieldbyname('DWBH').value;
    //fieldbyname('SCBH').value:=query1.fieldbyname('DDBH').value;
   // fieldbyname('tempQty').value:=0;   
    //fieldbyname('CostID').value:='621' ;
    fieldbyname('CostID').value:=Pro_CostID_HC;
    //fieldbyname('BLSB').value:='Y';
    fieldbyname('CLSL').value:=0;
    insert;
  end;
  showmessage('Succeed');
end;

procedure TDelOther_Mat_CL.FormShow(Sender: TObject);
begin
  main.FormLanguage(Pointer(self),self.Name);
end;

procedure TDelOther_Mat_CL.FormCreate(Sender: TObject);
begin
  ReadIni();
end;

end.
