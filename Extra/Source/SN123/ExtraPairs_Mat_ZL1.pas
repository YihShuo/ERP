unit ExtraPairs_Mat_ZL1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls, GridsEh,
  DBGridEh;

type
  TExtraPairs_Mat_ZL = class(TForm)
    DS1: TDataSource;
    Query1: TQuery;
    Query1BWDH: TStringField;
    Query1ZWSM: TStringField;
    Query1YWSM: TStringField;
    Query1CLDH: TStringField;
    Query1CLZL_YWPM: TStringField;
    Query1CLZL_ZWPM: TStringField;
    Query1DWBH: TStringField;
    DBGridEh1: TDBGridEh;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ExtraPairs_Mat_ZL: TExtraPairs_Mat_ZL;

implementation

uses ExtraPairs_Material1, main1;

{$R *.dfm}

procedure TExtraPairs_Mat_ZL.FormDestroy(Sender: TObject);
begin
  ExtraPairs_Mat_ZL:=nil;
end;

procedure TExtraPairs_Mat_ZL.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=Cafree;
end;

procedure TExtraPairs_Mat_ZL.FormCreate(Sender: TObject);
begin
  with Query1 do
  begin
    Active:=true;
    SQL.Clear;
    SQL.Add('Select BWZL.BWDH,BWZL.ZWSM,BWZL.YWSM,CLZL.CLDH,CLZL.YWPM as CLZL_YWPM,CLZL.ZWPM  as CLZL_ZWPM,CLZL.DWBH ');
    SQL.Add('from BWZL ');
    SQL.Add('Left join CLZL on BWZL.BWDH=Substring(CLZL.CLDH,1,4) and CLZL.YN=4 and CLDH like ''VJ%'' ');
    SQL.Add('where BWZL.BWDH like ''VJ%'' ');
    SQL.Add('order by BWZL.BWDH ');
    Active:=true;
  end;
end;

procedure TExtraPairs_Mat_ZL.DBGridEh1DblClick(Sender: TObject);
begin
  if Query1.recordcount>0 then
  begin
    with ExtraPairs_Material.JGDet do
    begin
        edit;
        fieldbyname('CLBH').value:=query1.fieldbyname('CLDH').value;
        fieldbyname('YWPM').value:=query1.fieldbyname('CLZL_YWPM').value;
        fieldbyname('DWBH').value:=query1.fieldbyname('DWBH').value;
        fieldbyname('Qty').value:=0;
        Post;
    end;
    query1.Active:=false;
    close;
  end;
end;

end.
