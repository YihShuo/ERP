unit DM1;

interface

uses
  SysUtils, Classes, DB, DBTables;

type
  TDM = class(TDataModule)
    DB: TDatabase;
    procedure DBLogin(Database: TDatabase; LoginParams: TStrings);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{$R *.dfm}

procedure TDM.DBLogin(Database: TDatabase; LoginParams: TStrings);
var textfilevar:textfile;
susername,spassword,sline:string;
begin
assignfile(textfilevar,'datalogin.txt');
reset(textfilevar);
readln(textfilevar,sline);
susername:=trim(copy(sline,0,pos('=',sline)-1));
spassword:=trim(copy(sline,pos('=',sline)+1,maxint));
closefile(textfilevar);
loginparams.Values['user name']:=susername;
loginparams.values['password']:=spassword;
end;

end.
