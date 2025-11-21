unit YearOrderQty;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DB, GridsEh, DBGridEh, DBTables;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Button1: TButton;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    Query1: TQuery;
    DBGridEh1: TDBGridEh;
    DataSource1: TDataSource;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var year:integer;
begin
  with query1 do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select  '''+combobox1.text+''' as year,');
    SQL.Add('sum(case when Month(ShipDate)=''1'' then pairs else null end) as ''January'',');
    SQL.Add('sum(case when Month(ShipDate)=''2'' then pairs else null end) as ''February'',');
    SQL.Add('sum(case when Month(ShipDate)=''3'' then pairs else null end) as ''March'',');
    SQL.Add('sum(case when Month(ShipDate)=''4'' then pairs else null end) as ''April'',');
    SQL.Add('sum(case when Month(ShipDate)=''5'' then pairs else null end) as ''May'',');
    SQL.Add('sum(case when Month(ShipDate)=''6'' then pairs else null end) as ''June'',');
    SQL.Add('sum(case when Month(ShipDate)=''7'' then pairs else null end) as ''July'',');
    SQL.Add('sum(case when Month(ShipDate)=''8'' then pairs else null end) as ''Auguest'',');
    SQL.Add('sum(case when Month(ShipDate)=''9'' then pairs else null end) as ''Semtember'',');
    SQL.Add('sum(case when Month(ShipDate)=''10'' then pairs else null end) as ''October'',');
    SQL.Add('sum(case when Month(ShipDate)=''11'' then pairs else null end) as ''November'',');
    SQL.Add('sum(case when Month(ShipDate)=''12'' then pairs else null end) as ''December'',');
    SQL.Add('sum(case when Month(ShipDate)<>''13'' then pairs else null end) as ''Total''');
    SQL.Add('from ddzl where Year(shipdate)=''2016'' ');
    Active:=true;
  end;


end;

end.
