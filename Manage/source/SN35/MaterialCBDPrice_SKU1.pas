unit MaterialCBDPrice_SKU1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GridsEh, DBGridEh, DB, DBTables, StdCtrls, ExtCtrls;

type
  TMaterialCBDPrice_SKU = class(TForm)
    CLZLQry: TQuery;
    DS1: TDataSource;
    DBGrid1: TDBGridEh;
    CLZLQryArticle: TStringField;
    CLZLQryXieXing: TStringField;
    CLZLQryShehao: TStringField;
    CLZLQryBWBH: TStringField;
    CLZLQryCLBH: TStringField;
    CLZLQryCSBH: TStringField;
    CLZLQryBWLB: TStringField;
    CLZLQryUSERDATE: TDateTimeField;
    Panel1: TPanel;
    Button1: TButton;
    CLBHEdit: TEdit;
    Label12: TLabel;
    Label2: TLabel;
    SupIDEdit: TEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MaterialCBDPrice_SKU: TMaterialCBDPrice_SKU;

implementation
  uses FunUnit,CLZLCBDPrice1, main1;
{$R *.dfm}

procedure TMaterialCBDPrice_SKU.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=CaFree;
end;

procedure TMaterialCBDPrice_SKU.FormDestroy(Sender: TObject);
begin
  MaterialCBDPrice_SKU:=nil;
end;

procedure TMaterialCBDPrice_SKU.Button1Click(Sender: TObject);
begin
  //
  with CLZLQry do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add(' select XXZL.Article,XXZLS.XieXing,XXZLS.Shehao,XXZLS.BWBH,XXZLS.CLBH,XXZLS.CSBH,XXZLS.BWLB,XXZLS.USERDATE');
    SQL.Add(' from XXZLS ');
    SQL.Add(' left join XXZL on XXZLS.XieXing=XXZL.XieXing and XXZLS.SheHao=XXZL.SheHao');
    SQL.Add(' where XXZLS.CLBH='''+CLBHEdit.Text+''' and XXZL.JiJie like ''%'' and XXZL.KHDH='''+CLZLCBDPrice.BrdEdit.Text+''' and XXZLS.CSBH like '''+SupIDEdit.Text+'%''');
    SQL.Add(' union all ');
    SQL.Add(' select XXZL.Article,XXZLS.XieXing,XXZLS.Shehao,XXZLS.BWBH,CLZHZL.CLDH1 as CLBH,CLZHZL.ZSDH as CSBH,XXZLS.BWLB,CLZHZL.USERDATE');
    SQL.Add(' from XXZLS ');
    SQL.Add(' inner join CLZHZL on CLZHZL.CLDH=XXZLS.CLBH');
    SQL.Add(' left join XXZL on XXZLS.XieXing=XXZL.XieXing and XXZLS.SheHao=XXZL.SheHao  ');
    SQL.Add(' where CLZHZL.CLDH1='''+CLBHEdit.Text+''' and XXZL.JiJie like''%'' and XXZL.KHDH='''+CLZLCBDPrice.BrdEdit.Text+''' and CLZHZL.ZSDH like '''+SupIDEdit.Text+'%''');
    SQL.Add(' union all ');
    SQL.Add(' select XXZLS.Article,XXZLS.XieXing,XXZLS.Shehao,XXZLS.BWBH,CLZHZL.CLDH1 as CLBH,CLZHZL.ZSDH as CSBH,XXZLS.BWLB,CLZHZL.USERDATE  from (');
    SQL.Add(' select XXZL.Article,XXZLS.XieXing,XXZLS.Shehao,XXZLS.BWBH,CLZHZL.CLDH1 as CLBH,XXZLS.BWLB ');
    SQL.Add(' from XXZLS ');
    SQL.Add(' inner join CLZHZL on CLZHZL.CLDH=XXZLS.CLBH ');
    SQL.Add('  left join XXZL on XXZLS.XieXing=XXZL.XieXing and XXZLS.SheHao=XXZL.SheHao  ');
    SQL.Add(' where XXZL.JiJie like ''%'' and XXZL.KHDH='''+CLZLCBDPrice.BrdEdit.Text+''' ) XXZLS ');
    SQL.Add(' inner join CLZHZL on CLZHZL.CLDH=XXZLS.CLBH  ');
    SQL.Add(' where CLZHZL.CLDH1='''+CLBHEdit.Text+''' and CLZHZL.ZSDH like '''+SupIDEdit.Text+'%''');
    //funcObj.WriteErrorLog(sql.Text);
    Active:=true;
  end;
  //
end;

procedure TMaterialCBDPrice_SKU.FormShow(Sender: TObject);
begin
    main.FormLanguage(Pointer(self),self.Name);
    Button1.Click;
end;

end.
