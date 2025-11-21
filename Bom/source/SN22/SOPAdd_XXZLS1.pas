unit SOPAdd_XXZLS1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, GridsEh, DBGridEh, DB, DBTables;

type
  TSOPAdd_XXZLS = class(TForm)
    Panel1: TPanel;
    DS1: TDataSource;
    Query1: TQuery;
    Query1BWDH: TStringField;
    Query1ZWSM: TStringField;
    Query1YWSM: TStringField;
    DBGrid1: TDBGridEh;
    Button1: TButton;
    Label1: TLabel;
    Label2: TLabel;
    BWDHEdit: TEdit;
    YWSMEdit: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SOPAdd_XXZLS: TSOPAdd_XXZLS;

implementation
   uses SOPDocu1;
{$R *.dfm}

procedure TSOPAdd_XXZLS.Button1Click(Sender: TObject);
begin
  //
  with Query1 do
  begin
     Active:=false;
     SQL.Clear;
     SQL.Add('select bwdh,zwsm,YWSM from bwzl');
     SQL.Add('where not exists (Select BWBH from XXZLS where XieXing='''+SOPDocu.XXZL.FieldByName('XieXing').AsString+''' and SheHao='''+SOPDocu.XXZL.FieldByName('SheHao').AsString+''' and XXZLS.BWBH=BWZL.bwdh)');
     SQL.Add('      and not exists (Select BWBH from KT_SOPcut where XieXing='''+SOPDocu.XXZL.FieldByName('XieXing').AsString+''' and SheHao='''+SOPDocu.XXZL.FieldByName('SheHao').AsString+''' and KT_SOPcut.BWBH=BWZL.bwdh)');
     if BWDHEdit.Text<>'' then
     SQL.Add('      and BWZL.BWDH like '''+BWDHEdit.Text+'%'' ');
     if YWSMEdit.Text<>'' then
     SQL.Add('      and BWZL.YWSM like '''+YWSMEdit.Text+'%'' ');
     Active:=true;
  end;
  //
end;

procedure TSOPAdd_XXZLS.DBGrid1DblClick(Sender: TObject);
begin
  //
  SOPDocu.XXZLS.Insert;
  SOPDocu.XXZLS.FieldByName('BWBH').Value:=Query1.FieldByName('BWDH').Value;
  SOPDocu.XXZLS.FieldByName('zwsm').Value:=Query1.FieldByName('zwsm').Value;
  SOPDocu.XXZLS.FieldByName('YWSM').Value:=Query1.FieldByName('YWSM').Value;
  SOPDocu.XXZLS.Post;
  //
end;

procedure TSOPAdd_XXZLS.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=CaFree;
end;

end.
