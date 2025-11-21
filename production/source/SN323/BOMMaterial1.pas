unit BOMMaterial1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DB, DBTables, StdCtrls, Grids, DBGrids, Spin;

type
  TBOMMaterial = class(TForm)
    Panel1: TPanel;
    BOMGrid: TDBGrid;
    BOMQry: TQuery;
    DS: TDataSource;
    Label5: TLabel;
    SheHao: TEdit;
    XieXing: TEdit;
    Label2: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    Article: TEdit;
    XTCC: TComboBox;
    Label4: TLabel;
    SpinEdit1: TSpinEdit;
    BtnQry: TButton;
    procedure BtnQryClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BOMMaterial: TBOMMaterial;

implementation

{$R *.dfm}

procedure TBOMMaterial.BtnQryClick(Sender: TObject);
begin
  With BOMQry do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select XXZLS.XH, XXZLS.BWBH,BWZL.ywsm BWMC,XXZLS.CLBH,');
    SQL.Add('       CLZL.YWPM as CLMC, CLZL.ZWPM as CLZW,BWZL.zwsm  as BWZW,');
    SQL.Add('       CLZL.DWBH,CLZL.LYCC,LBZLS.BZ,XXZLS.BWLB,ZSZL.ZSYWJC,XXZLS.LOSS,XXZLS.CLSL,');
    SQL.Add('       XXZLS.CCQQ,XXZLS.CCQZ,CLZL.CLZMLB ');
    SQL.Add('FROM XXZLS ');
    SQL.Add(' Left JOIN XXZL on XXZLS.XieXing=XXZL.XieXing and XXZLS.SheHao=XXZL.SheHao ');
    SQL.Add('LEFT JOIN BWZL  ON XXZLS.BWBH = BWZL.bwdh ');
    SQL.Add('LEFT JOIN CLZL   ON XXZLS.CLBH = CLZL.cldh ');
    SQL.Add('LEFT JOIN LBZLS ON SUBSTRING(XXZLS.CLBH,1,1) = LBZLS.lbdh AND LBZLS.LB=''05'' ');
    SQL.Add('LEFT JOIN ZSZL on ZSZL.ZSDH=XXZLS.CSBH ');
    SQL.Add('where XXZL.Article like ''%'+Article.Text+'%''' ');
    if SheHao.Text<>'' then
      SQL.Add(' and XXZL.SheHao like ''%'+SheHao.Text+'%'' ');
    if SheHao.Text<>'' then
      SQL.Add(' and XXZL.SheHao like ''%'+SheHao.Text+'%'' ');
    SQL.Add('ORDER BY XXZLS.XH ');
  end;
end;

end.
