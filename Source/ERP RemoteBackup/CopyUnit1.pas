unit CopyUnit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB,iniFiles;

type
  TCopyForm = class(TForm)
    ADOConn: TADOConnection;
    ExeQry: TADOQuery;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    procedure BackupDB(SQLFile:string);
  public
    { Public declarations }
  end;

var
  CopyForm: TCopyForm;

implementation
   uses FunUnit;
{$R *.dfm}

procedure TCopyForm.BackupDB(SQLFile:string);
var ini:TiniFile;
    i:integer;
    DBIP,DBName,DBUser,DBPass:String;
    //tmpList:TStringlist;
begin
   try
     ini:=TiniFile.Create(ExtractFilePath(Application.ExeName)+'\Setting.ini');
     DBIP:=ini.ReadString('DB','DBIP','127.0.0.1');
     DBName:=ini.ReadString('DB','DBName','LingYi');
     DBUser:=ini.ReadString('DB','DBUser','tyxuan');
     DBPass:=ini.ReadString('DB','DBPass','jack');
     ADOConn.ConnectionString:='Provider=SQLOLEDB.1;Password='+DBPass+';Persist Security Info=False;User ID='+DBUser+';Initial Catalog='+DBName+';Data Source='+DBIP;
     if FileExists(ExtractFilePath(Application.ExeName)+'\SQLAgent.txt') then
     begin
       //tmpList:=TStringlist.Create;
       //tmpList.LoadFromFile(ExtractFilePath(Application.ExeName)+'\SQLAgent.txt');
       with ExeQry do
       begin
         Active:=false;
         SQl.Clear;
         SQl.LoadFromFile(ExtractFilePath(Application.ExeName)+'\'+SQLFile);
         ExecSQL();
       end;
       //tmpList.free;
     end;
   finally
     ini.Free;
   end;
end;
procedure TCopyForm.FormCreate(Sender: TObject);
var SrcFile,DesFolder:string;
    DateStr:String;
begin
 FuncObj:=TFuncObj.Create;
 FuncObj.setParameter(true,ExtractFilePath(Application.ExeName));
 try
   if ParamCount>=2 then
   begin
        Application.ShowMainForm:=false;
        if  ParamCount=2 then
        begin
          if  ParamStr(1)='ExecSQL' then   BackupDB(ParamStr(2));
        end;
        //½Æ»s
        if  ParamCount=4 then
        begin
          if  ParamCount=4 then
          begin
            DateStr:=FormatDatetime(ParamStr(3),Date()+strtoint(ParamStr(4)));
          end;
          //ERP_D_20160803.rar
          SrcFile:=StringReplace(ParamStr(1),'@',DateStr,
                              [rfReplaceAll, rfIgnoreCase]);
          DesFolder:=ParamStr(2)+'\'+ExtractFileName(SrcFile);
          if Fileexists(SrcFile)=true then
          begin
            CopyFile(Pchar(SrcFile),Pchar(DesFolder),false);
          end;
        end;
        Application.Terminate;
    end;
  except
  end;
  Application.Terminate;
end;

procedure TCopyForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FuncObj.Free;
end;

end.
