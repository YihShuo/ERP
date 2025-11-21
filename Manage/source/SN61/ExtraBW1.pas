unit ExtraBW1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, StdCtrls, ExtCtrls, Grids, DBGrids;

type
  TExtraBW = class(TForm)
    DBGrid1: TDBGrid;
    DS1: TDataSource;
    Query1: TQuery;
    Query1BWDH: TStringField;
    Query1ZWSM: TStringField;
    Query1YWSM: TStringField;
    Query1CLDH: TStringField;
    Query1CLZL_YWPM: TStringField;
    Query1CLZL_ZWPM: TStringField;
    Query1DWBH: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ExtraBW: TExtraBW;

implementation
  uses SKU_ExtraCost1;
{$R *.dfm}

procedure TExtraBW.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action:=caFree;
end;

procedure TExtraBW.FormDestroy(Sender: TObject);
begin
  ExtraBW:=nil;
end;

procedure TExtraBW.FormCreate(Sender: TObject);
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

procedure TExtraBW.DBGrid1DblClick(Sender: TObject);
begin
  //
  if Query1.recordcount>0 then
  begin
    with SKU_ExtraCost.ExtraVN do
    begin
        edit;
        fieldbyname('BWBH').value:=query1.fieldbyname('BWDH').value;
        fieldbyname('YWSM').value:=query1.fieldbyname('YWSM').value;
        fieldbyname('CLBH').value:=query1.fieldbyname('CLDH').value;
        fieldbyname('YWPM').value:=query1.fieldbyname('CLZL_YWPM').value;
        fieldbyname('DWBH').value:=query1.fieldbyname('DWBH').value;
        fieldbyname('CLSL').value:=1;
        Post;
    end;
    query1.Active:=false;
    close;
  end;
  //
end;

end.
