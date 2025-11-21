unit Material_Pre1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GridsEh, DBGridEh, StdCtrls, ExtCtrls, DB, DBTables;

type
  TMaterial_Pre = class(TForm)
    Panel1: TPanel;
    Label2: TLabel;
    Edit2: TEdit;
    Label5: TLabel;
    Edit3: TEdit;
    Button1: TButton;
    Panel2: TPanel;
    DBGridEh1: TDBGridEh;
    Query1: TQuery;
    DataSource1: TDataSource;
    Query1cldh: TStringField;
    Query1ywpm: TStringField;
    Query1dwbh: TStringField;
    Query1ZSDH: TStringField;
    Query1zwpm: TStringField;
    Query1CQDH: TStringField;
    Query1ZSYWJC: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Material_Pre: TMaterial_Pre;

implementation

uses main1,Reality_Remain_Quantity_Pre1;

{$R *.dfm}

procedure TMaterial_Pre.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   action:=cafree;
end;

procedure TMaterial_Pre.FormDestroy(Sender: TObject);
begin
  Material_Pre:=nil;
end;

procedure TMaterial_Pre.Button1Click(Sender: TObject);
begin
 with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select CLZL.cldh,CLZL.ywpm,CLZL.zwpm,CLZL.dwbh,CLZL.CQDH,CLZL.ZSDH,ZSZL.ZSYWJC ');
    sql.add('from CLZL ');
    sql.add('left join ZSZL on CLZL.ZSDH=ZSZL.ZSDH ');
    sql.add('where CLZL.CLDH like'''+edit2.Text+'%''');
    sql.add('      and CLZL.YWPM like ''%'+edit3.Text+'%'' ');
    sql.add('      and ((CLZL.TYJH<>''Y'')or (CLZL.TYJH is null))')  ;
    //
    sql.add('order by CLZL.CLDH desc');
    active:=true;
  end;
end;

procedure TMaterial_Pre.DBGridEh1DblClick(Sender: TObject);
begin
  if query1.recordcount>0 then
  begin
    with Reality_Remain_Quantity_Pre.qryKCZK do
      begin
        edit;
        FieldByName('CLBH').Value:=query1.fieldbyname('CLDH').Value;
        FieldByName('YWPM').Value:=query1.fieldbyname('YWPM').Value;
        FieldByName('ZSBH').Value:=query1.fieldbyname('ZSDH').Value;
        FieldByName('ZSYWJC').Value:=query1.fieldbyname('ZSYWJC').Value;
        FieldByName('Qty').Value:=1;
     end;
    close;
  end;
end;

procedure TMaterial_Pre.FormCreate(Sender: TObject);
begin
  main.FormLanguage(Pointer(self),self.Name);
end;

end.
