unit DevQuotaSRList1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh;

type
  TDevQuotaSRList = class(TForm)
    DBGrid3: TDBGridEh;
    MaterialCBDSR: TQuery;
    DS1: TDataSource;
    MaterialCBDSRArticle: TStringField;
    MaterialCBDSRSR: TStringField;
    MaterialCBDSRKHDH: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure ShowSKUList(CLBH:string);
  end;

var
  DevQuotaSRList: TDevQuotaSRList;

implementation
  uses main1;
{$R *.dfm}

procedure TDevQuotaSRList.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=CaFree;
end;

procedure TDevQuotaSRList.FormDestroy(Sender: TObject);
begin
  DevQuotaSRList:=nil;
end;

procedure TDevQuotaSRList.ShowSKUList(CLBH:string);
begin
  with MaterialCBDSR do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select XXZL.Article,KFXXZL.DEVCODE as SR,XXZL.KHDH ');
    SQL.Add('FROM (');
    SQL.Add(' select XXZLS.XieXing,XXZLS.Shehao,XXZLS.CLBH,XXZLS.CSBH,XXZLS.BWLB ');
    SQL.Add(' from XXZLS ');
    SQL.Add(' union all ');
    SQL.Add(' select XXZLS.XieXing,XXZLS.Shehao,CLZHZL.CLDH1 as CLBH,CLZHZL.ZSDH as CSBH,XXZLS.BWLB  ');
    SQL.Add(' from XXZLS ');
    SQL.Add(' inner join CLZHZL on CLZHZL.CLDH=XXZLS.CLBH  ');
    SQL.Add(' union all ');
    SQL.Add(' select XXZLS.XieXing,XXZLS.Shehao,CLZHZL.CLDH1 as CLBH,CLZHZL.ZSDH as CSBH,XXZLS.BWLB  from ( ');
    SQL.Add(' select XXZLS.XieXing,XXZLS.Shehao,CLZHZL.CLDH1 as CLBH,XXZLS.BWLB ');
    SQL.Add(' from XXZLS ');
    SQL.Add(' inner join CLZHZL on CLZHZL.CLDH=XXZLS.CLBH ) XXZLS ');
    SQL.Add(' inner join CLZHZL on CLZHZL.CLDH=XXZLS.CLBH  ');
    SQL.Add(' ) XXZLS ');
    SQL.Add('Left join XXZL on XXZLS.XieXing=XXZL.XieXing and XXZL.SheHao=XXZLS.SheHao ');
    SQL.Add('left join KFXXZL on  KFXXZL.XieXing=XXZL.XieXing and KFXXZL.SheHao=XXZL.SheHao ');
    SQL.Add('where XXZLS.CLBH='''+CLBH+''' ');
    SQL.Add('Group by XXZL.Article,KFXXZL.DEVCODE,XXZL.KHDH  ');
    Active:=true;
  end;
end;
procedure TDevQuotaSRList.FormShow(Sender: TObject);
begin
  main.FormLanguage(Pointer(self),self.Name);
end;

end.
