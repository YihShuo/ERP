unit RWeight_PF1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ExtCtrls;

type
  TRWeight_PF = class(TForm)
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    DBGridEh1: TDBGridEh;
    Query1: TQuery;
    Query1PFBH1: TStringField;
    Query1PFBH2: TStringField;
    DataSource1: TDataSource;
    procedure Button1Click(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RWeight_PF: TRWeight_PF;

implementation

uses RWeight1, main1;

{$R *.dfm}

procedure TRWeight_PF.Button1Click(Sender: TObject);
begin
 with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select * from '+main.LIY_DD+'.dbo.PFMAP PFMAP');
    sql.add('where PFBH1 like '''+'%'+ edit1.Text+'%'+'''');
    sql.add('and PFBH2 like '''+'%'+ edit2.Text+'%'+'''');
    sql.add('order by PFBH1');
    active:=true;
  end;
end;

procedure TRWeight_PF.DBGridEh1DblClick(Sender: TObject);
begin
  with RWeight.GSPF do
  begin
    fieldbyname('PFBH1').value:=query1.FieldByName('PFBH1').Value;
    fieldbyname('PFBH2').value:=query1.FieldByName('PFBH2').Value;
  end;
  showmessage('Succeed');
end;

procedure TRWeight_PF.FormShow(Sender: TObject);
begin
  main.FormLanguage(Pointer(self),self.Name);
end;

procedure TRWeight_PF.FormDestroy(Sender: TObject);
begin
  RWeight_PF:=nil;
end;

procedure TRWeight_PF.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
end;

end.
