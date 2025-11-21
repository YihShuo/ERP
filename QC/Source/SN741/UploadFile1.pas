unit UploadFile1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, ExtCtrls, FileCtrl, DB, DBTables;

type
  TUploadFile = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Panel2: TPanel;
    Button1: TButton;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Panel3: TPanel;
    Label5: TLabel;
    Button2: TButton;
    BBU: TBitBtn;
    OpenDialog1: TOpenDialog;
    Query1: TQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure BBUClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  UploadFile: TUploadFile;
//  FilePath: string = '\\192.168.23.11\A_DataCenter\A12\KCS\LAB\DATABASE(MATERIAL&FINISHED SHOE)\';
  FilePath: string = '\\192.168.123.112\kcs\LAB\2. DC REPORT\DC. shoe\';

implementation

uses
  Shoetest1, main1;

{$R *.dfm}

procedure TUploadFile.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  Shoetest.BBU.Enabled := true;
end;

procedure TUploadFile.FormDestroy(Sender: TObject);
begin
  UploadFile := nil;
end;

procedure TUploadFile.FormCreate(Sender
: TObject);
begin
  Shoetest.BBU.Enabled := false;
end;

procedure TUploadFile.Button1Click(Sender: TObject);
begin
  if (OpenDialog1.Execute) then
  begin
    Label2.Caption := OpenDialog1.FileName;
  end
  else begin
    Label2.Caption := 'No file chosen';
  end;
end;

procedure TUploadFile.Button2Click(Sender: TObject);
var
  SelectPath: string;
begin
  if (SelectDirectory('Select a directory', FilePath, SelectPath)) then
  begin
    Label5.Caption := SelectPath;
  end;
end;

procedure TUploadFile.BBUClick(Sender: TObject);
begin
//  if (Label2.Caption = 'No file chosen') OR (Label5.Caption = 'No path chosen') then
  if (Label2.Caption = 'No file chosen') OR (Label5.Caption = 'No path chosen') then
  begin
    ShowMessage('Please select a upload file and upload location.');
    Exit;
  end;

//  if (CopyFile(PChar(Label2.Caption), PChar(Label5.Caption + '\' + ExtractFileName(Label2.Caption)), False)) then
  if (CopyFile(PChar(Label2.Caption), PChar(Label5.Caption + '\' + ExtractFileName(Label2.Caption)), False)) then
  begin
    with Query1 do
    begin
      Active := false;
      SQL.Clear;
      SQL.Add('UPDATE Lab_Shoetests SET FilePath = ''' + Label5.Caption + '\' + ExtractFileName(Label2.Caption) + ''' WHERE TestID = ''' + Shoetest.DBEdit1.Text + ''' AND TestNO = ''' + Shoetest.Query1.FieldByName('TestNO').AsString + ''' AND serial = ''' + Shoetest.DBEdit2.Text + ''';');
      ExecSQL;
    end;
    Shoetest.DBEdit9.Text := Label5.Caption + '\' + ExtractFileName(Label2.Caption);
    ShowMessage('Upload Success.');
    Close;
  end
  else begin
    ShowMessage('Upload Failed.');
  end;
end;

procedure TUploadFile.FormShow(Sender: TObject);
begin
  main.FormLanguage(Pointer(self),self.Name);
end;

end.
