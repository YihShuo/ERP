unit Order1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GridsEh, DBGridEh, StdCtrls, ExtCtrls, DB, DBTables, Mask,
  DBCtrls;

type
  TOrder = class(TForm)
    Panel5: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    DBGridEh1: TDBGridEh;
    Query1: TQuery;
    DataSource1: TDataSource;
    Query1ddbh: TStringField;
    Query1XieXing: TStringField;
    Query1SheHao: TStringField;
    Query1Article: TStringField;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  Order: TOrder;

implementation
uses QC_DailyBonding1, main1;

{$R *.dfm}

procedure TOrder.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TOrder.FormDestroy(Sender: TObject);
begin
  Order:=nil;
end;

procedure TOrder.Button1Click(Sender: TObject);
begin
 with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.Add('Select DDBH,XieXing,SheHao,Article');
    sql.Add('from ddzl');
    sql.Add('where ddbh like '''+edit1.Text+'%''');
  //  sql.add('and GSBH='+''''+main.edit2.Text+'''');
    sql.add('and article='''+DBEdit1.Text+'''');
    sql.Add('order by DDBH');
    active:=true;
  end;
end;

procedure TOrder.DBGridEh1DblClick(Sender: TObject);
begin
  if query1.RecordCount>0 then
    begin
      with QC_DailyBonding.LabTSS do
        begin
            edit;
            fieldbyname('SCBH').Value:=query1.fieldbyname('DDBH').Value;
        end;
        query1.Active:=false;
        close;
    end;
end;

end.
