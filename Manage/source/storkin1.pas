unit storkin1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GridsEh, DBGridEh, DB, DBTables, StdCtrls;

type
  Tstorkin = class(TForm)
    DataSource1: TDataSource;
    q1: TQuery;
    DBGridEh1: TDBGridEh;
    q1ddbh: TStringField;
    q1qty: TIntegerField;
    q1ckbh: TStringField;
    q1kcbh: TStringField;
    q1depname: TStringField;
    q1lastindate: TDateTimeField;
    q1exedate: TDateTimeField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  storkin: Tstorkin;

implementation

{$R *.dfm}


procedure Tstorkin.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  q1.Active:=false;
end;

procedure Tstorkin.FormDestroy(Sender: TObject);
begin
  storkin:=nil;
end;

end.
