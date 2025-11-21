unit EntryPrice1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ComCtrls, ExtCtrls,comobj,
  Menus;

type
  TEntryPrice = class(TForm)
    Query1: TQuery;
    Query1RKNO: TStringField;
    Query1CLBH: TStringField;
    Query1USPrice: TCurrencyField;
    Query1USERDATE: TDateTimeField;
    Query1RKSB: TStringField;
    Query1GSBH: TStringField;
    Query1VNPrice: TCurrencyField;
    DS1: TDataSource;
    DBGridEh1: TDBGridEh;
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  EntryPrice: TEntryPrice;

implementation
uses main1,ReplenishCon1;
{$R *.dfm}

procedure TEntryPrice.DBGridEh1DblClick(Sender: TObject);
begin
  if query1.recordcount>0 then
  begin
    ReplenishCon.BLDet.Edit;
    //ReplenishCon.BLDet.fieldbyname('VNPrice').Value:=query1.fieldbyname('VNPrice').Value;
    ReplenishCon.BLDet.fieldbyname('USPrice').Value:=query1.fieldbyname('USPrice').Value;
    //MatPrice.query1.post;
  end;
end;

procedure TEntryPrice.FormDestroy(Sender: TObject);
begin
  EntryPrice:=nil;
end;

procedure TEntryPrice.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    query1.active:=false;
    action:=cafree;
end;

procedure TEntryPrice.FormCreate(Sender: TObject);
begin
    with query1 do
    begin
      Active:=false;
      sql.clear;
      sql.Add('select KCRK.GSBH, KCRKS.RKNO,KCRKS.CLBH,KCRKS.VNPrice,KCRKS.USPrice,KCRK.USERDATE ,KCRKS.RKSB from KCRKS ');
      sql.Add('left join KCRK on KCRKS.RKNO=KCRK.RKNO');
      sql.Add('where  KCRKS.CLBH='''+ReplenishCon.BLDet.FieldValues['CLBH']+''' ');
      sql.Add('UNION ALL  ');
      sql.Add('select KCRK_2014.GSBH, KCRKS_2014.RKNO,KCRKS_2014.CLBH,KCRKS_2014.VNPrice,KCRKS_2014.USPrice,KCRK_2014.USERDATE ,KCRKS_2014.RKSB');
      sql.Add('from KCRKS_2014');
      sql.Add('left join KCRK_2014 on KCRKS_2014.RKNO=KCRK_2014.RKNO');
      sql.Add('where  KCRKS_2014.CLBH='''+ReplenishCon.BLDet.FieldValues['CLBH']+'''');
      sql.Add('ORDER BY 2 desc ');
      active:=true;
    end;

  //query1.Active:=true;
end;

end.
