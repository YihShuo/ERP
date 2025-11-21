unit themma;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ExtCtrls,dateutils,
  OleCtrls, Printers, RpCon, RpConDS, RpConBDE, RpDefine, RpRave, Buttons,
  ShellApi,menus, ComCtrls, StrUtils, Grids, DBGrids,comobj;

type
  Tthemvattu = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    bb1: TButton;
    Label1: TLabel;
    Edit1: TEdit;
    bb2: TButton;
    Query1: TQuery;
    DBGridEh1: TDBGridEh;
    DataSource1: TDataSource;
    UpdateSQL1: TUpdateSQL;
    Edit2: TEdit;
    Label2: TLabel;
    procedure bb1Click(Sender: TObject);
    procedure bb2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  themvattu: Tthemvattu;

implementation

{$R *.dfm}
procedure Tthemvattu.bb1Click(Sender: TObject);
begin
  with query1 do
    begin
      active:=false;
      sql.clear;
      SQL.Add('SET ANSI_NULLS ON');
      SQL.Add('SET ANSI_WARNINGS ON');
      ExecSQL;
      if edit2.text <>'' then
        begin
          sql.Add('select top '+edit2.text+' * from ALLAPP.ALLAPP.dbo.deviceDevice');
        end else
        begin
      sql.Add('select * from ALLAPP.ALLAPP.dbo.deviceDevice');
      end;
      sql.Add('where devicecode like'''+edit1.Text+'%''');
      sql.Add('order by ID desc');
      active:=true;
    end;
end;

procedure Tthemvattu.bb2Click(Sender: TObject);
var f:textfile;
    sline1:string;
    fl:THandle;
    barcodeTxtName,cartonbarBtxName:string;
begin
     barcodeTxtName:='barcode.txt';
     cartonbarBtxName:='ChuanInIT.btw' ;

if messagedlg('Are you want pint Barcode?',mtinformation,[mbYes,mbNo],0)=mrYes then
  begin
    if fileexists(extractfilepath(application.ExeName)+'\'+barcodeTxtName) then
    begin
      assignfile(f,ExtractFilePath(Application.ExeName)+barcodeTxtName);
      rewrite(f);
      query1.first;
        while not query1.eof do
        begin
          sline1:=query1.fieldbyname('ID').value;
          append(f);
          writeln(f, sline1);
          query1.next;
        end;
      closefile(f);
    end ;
    if fileexists(extractfilepath(application.ExeName)+cartonbarBtxName) then
    begin
      ShellExecute(Handle,'open',PChar(ExtractFilePath(Application.ExeName)+cartonbarBtxName),nil,pchar(ExtractFilePath(Application.ExeName)),SW_SHOW);
      //close;
    end else
    begin
        showmessage('Pls setup the program first. Abort');
    end;
  end;
end;

end.
