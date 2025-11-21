unit QueryMM1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, Mask, DBCtrls, StdCtrls,
  ExtCtrls;

type
  TQueryMM = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    CLDH1Edit: TEdit;
    Button1: TButton;
    YWPM1Edit: TEdit;
    Stop1CK: TCheckBox;
    Panel2: TPanel;
    YWPMDBEdit: TDBEdit;
    ZWPMDBEdit: TDBEdit;
    DBGridEh1: TDBGridEh;
    DS1: TDataSource;
    MatQry1: TQuery;
    MatQry1cldh: TStringField;
    MatQry1zwpm: TStringField;
    MatQry1ywpm: TStringField;
    MatQry1dwbh: TStringField;
    MatQry1CQDH: TStringField;
    MatQry1TYJH: TStringField;
    procedure Button1Click(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  QueryMM: TQueryMM;

implementation
    uses SampleMaterial_Combinated1,FunUnit;
{$R *.dfm}

procedure TQueryMM.Button1Click(Sender: TObject);
var tmpList:TStringlist;
    i:integer;

begin

  //
  with MatQry1 do
  begin
    Active:=true;
    SQL.Clear;
    SQL.Add('select top 100 Cldh,zwpm,ywpm,dwbh,CQDH,TYJH from CLZL ');
    SQL.Add('where CLDH like ''%'+CLDH1Edit.Text+'%'' and ((Substring(CLDH,1,4)=''V901'') or YN=1 ) ');//越南臨時料號或台灣建立材料
    if trim(YWPM1Edit.Text)<>'' then
    begin
      tmpList:=FuncObj.SplitString(YWPM1Edit.Text,'*');
      for i:=0 to tmpList.Count-1 do
      begin
        SQL.Add('and YWPM like ''%'+tmpList.Strings[i]+'%'' ');
      end;
      tmpList.Free;
    end;
    if Stop1CK.Checked=true then
      SQL.Add(' and (TYJH=''N'' or TYJH='''' or TYJH is null) ');
    SQL.Add('order by YWPM');
    Active:=true;
  end;
  //
end;

end.
