unit Material1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GridsEh, DBGridEh, StdCtrls, ExtCtrls, DB, DBTables;

type
  TMaterial = class(TForm)
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
  Material: TMaterial;

implementation

uses main1,Reality_Remain_Quantity1;

{$R *.dfm}

procedure TMaterial.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   action:=cafree;
end;

procedure TMaterial.FormDestroy(Sender: TObject);
begin
  Material:=nil;
end;

procedure TMaterial.Button1Click(Sender: TObject);
begin
 with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select * from CLZL ');
    sql.add('left join  KCZLS on KCZLS.CLBH=CLZL.CLDh and KCZLS.CKBH='''+main.edit2.text+'''');
    sql.add('where CLZL.CLDH like'+''''+edit2.Text+'%'+'''');
    sql.add('      and CLZL.YWPM like '+''''+'%'+edit3.Text+'%'+'''');
     //  20150619 not show material with TYJH='y'
    sql.add('      and ((CLZL.TYJH<>'+''''+'Y'+''''+')or (TYJH is null))')  ;
    //
    sql.add('order by CLZL.CLDH desc');
    active:=true;
  end;
end;

procedure TMaterial.DBGridEh1DblClick(Sender: TObject);
begin
  if query1.recordcount>0 then
  begin
    with Reality_Remain_Quantity.qryKCZK do
      begin
        edit;
        FieldByName('CLBH').Value:=query1.fieldbyname('CLDH').Value;
        FieldByName('YWPM').Value:=query1.fieldbyname('YWPM').Value;
        FieldByName('Qty').Value:=1;
     end;
    close;
  end;
end;

procedure TMaterial.FormCreate(Sender: TObject);
begin
  main.FormLanguage(Pointer(self),self.Name);
end;

end.
