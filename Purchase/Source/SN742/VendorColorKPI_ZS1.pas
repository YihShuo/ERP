unit VendorColorKPI_ZS1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ExtCtrls, fununit;

type
  TVendorColorKPI_ZS = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    EDIT1: TEdit;
    Edit2: TEdit;
    chkTW: TCheckBox;
    DBGridEh1: TDBGridEh;
    DS1: TDataSource;
    Query1: TQuery;
    Query1ZSDH: TStringField;
    Query1ZSYWJC: TStringField;
    Query1ZSQM: TStringField;
    Query1SamplePurchaser_Name: TStringField;
    Query1zsdhflex: TStringField;
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGridEh1CellClick(Column: TColumnEh);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  VendorColorKPI_ZS: TVendorColorKPI_ZS;

implementation

uses main1, PurNoSize1, VendorColorKPI1;

{$R *.dfm}

procedure TVendorColorKPI_ZS.Button1Click(Sender: TObject);
begin
  with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select ZSZL.ZSDH,ZSZL.ZSYWJC,ZSZL.ZSQM,BUSERS.USERNAME as SamplePurchaser_Name,ZSZL_FLEX.zsdhflex  from ZSZL ');
    sql.add('left join ZSZL_DEV on ZSZL_DEV.ZSDH=ZSZL.ZSDH and ZSZL_DEV.GSBH='''+main.Edit2.Text+''' ');
    sql.add('left join BUSERS  on BUSERS.USERID=ZSZL_DEV.SamplePurchaser  ');
    sql.add('left join ZSZL_FLEX  on ZSZL_FLEX.zsdh=ZSZL.ZSDH');
    sql.add('where 1=1  ');
    if  EDIT1.Text<>'' then
        sql.add(' and ZSZL.ZSDH like'+''''+edit1.Text+'%'+'''');
    if  Edit2.Text<>'' then
        sql.add(' and ZSZL.ZSYWJC like'+''''+'%'+edit2.Text+'%'+'''');
    //funcobj.WriteErrorLog(sql.Text);
    active:=true;
  end;
end;

procedure TVendorColorKPI_ZS.FormShow(Sender: TObject);
begin
    main.FormLanguage(Pointer(self),self.Name);
end;

procedure TVendorColorKPI_ZS.DBGridEh1CellClick(Column: TColumnEh);
begin
  if query1.recordcount>0 then
  begin
    with VendorColorKPI.CGMas do
    begin
        edit;
        fieldbyname('Supplier').value:=query1.fieldbyname('ZSYWJC').value;
        fieldbyname('VendorFlexID').value:=query1.fieldbyname('ZSDHFLEX').value;
    end;
    query1.Active:=false;
    close;
  end;
end;

end.
