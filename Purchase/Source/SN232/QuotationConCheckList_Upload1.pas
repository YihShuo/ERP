unit QuotationConCheckList_Upload1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TQuotationUpload = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    FileEdit: TEdit;
    SeaComBo: TComboBox;
    Button1: TButton;
    Button2: TButton;
    OpenDialog1: TOpenDialog;
    procedure FileEditClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    SeasonP:Pointer;
    QuotaFileP:Pointer;
    { Public declarations }
  end;

var
  QuotationUpload: TQuotationUpload;

implementation

{$R *.dfm}

procedure TQuotationUpload.FileEditClick(Sender: TObject);
begin
    if OpenDialog1.Execute then
    begin
      if OpenDialog1.FileName<>'' then
      begin
        FileEdit.Text:=OpenDialog1.FileName;
      end;
    end;
end;

procedure TQuotationUpload.Button1Click(Sender: TObject);
var tmpSeason:String;
    tmpQuotaFile:String;
    i:integer;
begin

  tmpSeason:=SeaComBo.Text;
  tmpQuotaFile:=FileEdit.Text;
  CopyMemory(QuotationUpload.SeasonP, @tmpSeason[1], length(trim(tmpSeason)));
  CopyMemory(QuotationUpload.QuotaFileP, @tmpQuotaFile[1], length(trim(tmpQuotaFile)));
  Close;

end;

procedure TQuotationUpload.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TQuotationUpload.Button2Click(Sender: TObject);
begin
  Self.Close;
end;

end.
