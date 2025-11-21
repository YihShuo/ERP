unit DelChemical_SCBH1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls;

type
  TDelChemical_SCBH = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    DBGrid1: TDBGrid;
    DDZL: TQuery;
    DS1: TDataSource;
    DDZLDDBH: TStringField;
    DDZLZLBH1: TStringField;
    DDZLXieXing: TStringField;
    DDZLSheHao: TStringField;
    DDZLArticle: TStringField;
    DDZLSB: TStringField;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    ParentQry:TQuery;
    { Public declarations }
  end;

var
  DelChemical_SCBH: TDelChemical_SCBH;

implementation

uses main1, DelChemical1;

{$R *.dfm}

procedure TDelChemical_SCBH.FormDestroy(Sender: TObject);
begin
  DelChemical_SCBH:=nil;
end;

procedure TDelChemical_SCBH.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  DDZL.active:=false;
end;

procedure TDelChemical_SCBH.Button1Click(Sender: TObject);
begin

  with DDZL do
  begin
    active:=false;
    sql.Clear;
    sql.add('select DDBH,ZLBH1,XieXing,SheHao,Article,YN as SB');
    sql.add('from '+main.LIY_DD+'.dbo.DDZL DDZL');
    sql.add('where YN='+''''+'1'+'''');
    sql.add('      and DDBH like '+''''+edit1.Text+'%'+'''');
    sql.add('      and CQDH='+''''+main.edit2.text+'''');
    //sql.add('      and exists(select SCZL.SCBH from SCZL where SCZL.SCBH=DDZL.ZLBH)');
    sql.add('order by DDBH ');
    active:=true;
  end;
end;

procedure TDelChemical_SCBH.DBGrid1DblClick(Sender: TObject);
begin

  if DDZl.Active then
  begin
    if DDZL.recordcount>0 then
    begin
        if DDZL.FieldByName('SB').value='5' then
        begin
            showmessage('Already Shipping out.');
            abort;
        end;
        ParentQry.Edit;
        ParentQry.fieldbyname('SCBH').value:=DDZL.fieldbyname('ZLBH1').value;
    end;
  end;
  close;
end;

procedure TDelChemical_SCBH.DBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin

  if key=#13 then
    DBGrid1dblclick(nil);
end;

procedure TDelChemical_SCBH.FormShow(Sender: TObject);
begin
  main.FormLanguage(Pointer(self),self.Name);
end;

end.
