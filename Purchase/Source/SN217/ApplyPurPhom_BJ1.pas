unit ApplyPurPhom_BJ1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls,IniFiles;

type
  TApplyPurPhom_BJ = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    EDIT1: TEdit;
    DBGrid1: TDBGrid;
    DS1: TDataSource;
    Query1: TQuery;
    Query1BJNO: TStringField;
    Query1USERDate: TDateTimeField;
    Query1ZSBH: TStringField;
    Query1ZSYWJC: TStringField;
    Query1CLBH: TStringField;
    Query1USPrice: TCurrencyField;
    Query1VNPrice: TCurrencyField;
    Query1DWBH: TStringField;
    Query1YWPM: TStringField;
    Query1EXPDATE: TDateTimeField;
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    procedure ReadIni();
  public
    VNPrice_DiplayFormat:string;
    VNPrice_Decimal:Byte;
    { Public declarations }
  end;

var
  ApplyPurPhom_BJ: TApplyPurPhom_BJ;

implementation

uses main1, ApplyPhom1, ApplyMold1;

{$R *.dfm}
procedure TApplyPurPhom_BJ.ReadIni();
var MyIni :Tinifile;
    AppDir:string;
begin
  //
  VNPrice_DiplayFormat:='#,##0';
  VNPrice_Decimal:=0;
  AppDir:=ExtractFilePath(Application.ExeName);
  if FileExists(AppDir+'\ComName.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ComName.ini');
      VNPrice_DiplayFormat:=MyIni.ReadString('VNPrice','DiplayFormat','#,##0');
      VNPrice_Decimal:=strtoint(MyIni.ReadString('VNPrice','Decimal','0'));
    finally
      MyIni.Free;
    end;
  end;
  TCurrencyField(Query1.FieldByName('VNPrice')).DisplayFormat:=VNPrice_DiplayFormat;
end;
//
procedure TApplyPurPhom_BJ.FormCreate(Sender: TObject);
begin
  //20150602 修改只顯示依廠商最新報價
  with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select * from ( ');
    sql.Add('select CGBJ.BJNO,CGBJ.USERDate,CGBJ.ZSBH,ZSZL.ZSYWJC,CGBJS.CLBH,');
    sql.Add('CGBJS.USPrice,CGBJS.VNPrice,CLZL.YWPM,CLZL.DWBH,CGBJ.EXPDATE,');
    sql.Add('ROW_NUMBER() over (PARTITION BY CGBJ.ZSBH ORDER BY CGBJ.BJNO DESC) as  rn');
    sql.Add('from CGBJ');
    sql.Add('left join CGBJS on CGBJ.BJNO=CGBJS.BJNO');
    sql.Add('left join ZSZL on ZSZL.ZSDH=CGBJ.ZSBH');
    sql.Add('left join CLZL on CLZL.CLDH=CGBJS.CLBH');
    sql.Add('where CGBJS.CLBH='+''''+ApplyPhom.SGDet.fieldbyname('CLBH').Value+''''+'');
    //sql.Add('and CGBJ.GSBH='+''''+main.Edit2.Text+''''+'');
    sql.Add(') CGBJ where rn=1 ');
    sql.Add('order by CGBJ.BJNO DESC');
    active:=true;
  end;
  ReadIni();
end;

procedure TApplyPurPhom_BJ.DBGrid1DblClick(Sender: TObject);
begin

  if (not query1.Active) then
  begin
    abort;
  end;
  if (Query1.recordcount<1) then
  begin
    abort;
  end;
 // Query1.First;//20150505 使用者只能選第一筆
  with ApplyPhom.SGDet do
  begin
    edit;
    fieldbyname('BJNO').value:=query1.fieldbyname('BJNO').value; 
  end;
  close;
end;

procedure TApplyPurPhom_BJ.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
  DBGrid1dblclick(nil);
end;

procedure TApplyPurPhom_BJ.FormDestroy(Sender: TObject);
begin
  ApplyPurPhom_BJ:=nil;
end;

procedure TApplyPurPhom_BJ.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Query1.active:=false;
  Action:=CaFree;
end;

procedure TApplyPurPhom_BJ.FormShow(Sender: TObject);
begin
  main.FormLanguage(Pointer(self),self.Name);
end;

end.
