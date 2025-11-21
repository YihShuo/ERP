unit ApplyTotalCapex1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ExtCtrls;

type
  TApplyTotalCapex = class(TForm)
    DBGridEh1: TDBGridEh;
    Query1: TQuery;
    DS1: TDataSource;
    Panel1: TPanel;
    Button1: TButton;
    QTemp: TQuery;
    Query1ID: TStringField;
    Query1YM: TStringField;
    Query1Season: TStringField;
    Query1Serno: TIntegerField;
    Query1Items: TStringField;
    Query1Qty: TFloatField;
    Query1US_Price: TFloatField;
    Query1US_Total: TFloatField;
    Query1Memo: TStringField;
    Query1Need_Month: TStringField;
    Query1Need_Season: TStringField;
    Query1Pay_Month: TStringField;
    procedure Button1Click(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ApplyTotalCapex: TApplyTotalCapex;
  DEPID,FormName: string;

implementation

uses ApplyTotal1, FunUnit, ApplyMold1;

{$R *.dfm}

procedure TApplyTotalCapex.Button1Click(Sender: TObject);
var
  YM, Season: string;
begin
  with QTemp do
  begin
    active := false;
    sql.Clear;
    sql.Add('select Month(getdate()) as FM,Year(getdate()) as YM ');
    active := true;
    if fieldbyname('FM').AsInteger < 7 then
      Season := '01'
    else
      Season := '02';
    YM := fieldbyname('YM').asstring;
    active := false;
  end;

  with query1 do
  begin
    active := false;
    sql.Clear;
    //
    SQL.Add('select * ');
    SQL.Add('from SGDH_CapexS where 1 = 1 ');
    SQL.Add('and ID = ''' + DepID + ''' ');
    SQL.Add('and YM = ''' + YM + ''' and Season = ''' + Season + '''');
    SQL.Add('order by Serno');
    //showmessage(SQL.Text);
    Active := true;
  end;
end;

procedure TApplyTotalCapex.DBGridEh1DblClick(Sender: TObject);
begin
  if query1.recordcount > 0 then
  begin
    if FormName = 'ApplyTotal' then
    begin
      with ApplyTotal.SGDet do
      begin
        Edit;
        FieldByName('YM').Value := query1.fieldbyname('YM').Value;
        FieldByName('Season').Value := query1.fieldbyname('Season').Value;
        FieldByName('Serno').Value := query1.fieldbyname('Serno').Value;
        Insert;
      end;
    end
    else if FormName = 'ApplyMold' then
    begin
      with ApplyMold.SGDet do
      begin
        Edit;
        FieldByName('YM').Value := query1.fieldbyname('YM').Value;
        FieldByName('Season').Value := query1.fieldbyname('Season').Value;
        FieldByName('Serno').Value := query1.fieldbyname('Serno').Value;
        Insert;
      end;
    end;
  end;
end;

procedure TApplyTotalCapex.FormDestroy(Sender: TObject);
begin
  ApplyTotalCapex := nil;
end;

procedure TApplyTotalCapex.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := CaFree;
end;

procedure TApplyTotalCapex.FormActivate(Sender: TObject);
begin
  Button1.Click;
end;

end.
