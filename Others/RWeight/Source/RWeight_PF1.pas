unit RWeight_PF1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GridsEh, DBGridEh, ExtCtrls, DB, DBTables, StdCtrls;

type
  TRWeight_PF = class(TForm)
    Panel1: TPanel;
    DBGridEh1: TDBGridEh;
    Query1: TQuery;
    DataSource1: TDataSource;
    Query1PFBH1: TStringField;
    Query1PFBH2: TStringField;
    Panel2: TPanel;
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RWeight_PF: TRWeight_PF;

implementation

uses RWeightp1;

{$R *.dfm}

procedure TRWeight_PF.DBGridEh1DblClick(Sender: TObject);
begin
  with RWeightp.GSPF do
  begin
    fieldbyname('PFBH1').value:=query1.FieldByName('PFBH1').Value;
    fieldbyname('PFBH2').value:=query1.FieldByName('PFBH2').Value;
  end;
  showmessage('Succeed');
 
end;

procedure TRWeight_PF.Button1Click(Sender: TObject);
begin
 with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select * from PFMAP');
    sql.add('where PFBH1 like '''+'%'+ edit1.Text+'%'+'''');
    sql.add('and PFBH2 like '''+'%'+ edit2.Text+'%'+'''');
    sql.add('order by PFBH1');
    active:=true;
  end;
end;

end.
