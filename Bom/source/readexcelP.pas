unit readexcelP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Grids,comobj;

type
  Treadexcelfile = class(TForm)
    OpenDialog1: TOpenDialog;
    Label1: TLabel;
    Edit1: TEdit;
    chfile: TButton;
    ss: TPanel;
    idg: TStringGrid;
    rf: TButton;
    procedure FormCreate(Sender: TObject);
    procedure chfileClick(Sender: TObject);
    procedure rfClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  readexcelfile: Treadexcelfile;
  ea:variant;
implementation

uses ProdRate1;



{$R *.dfm}

procedure Treadexcelfile.FormCreate(Sender: TObject);


begin
  opendialog1.Execute;
  edit1.Text:=opendialog1.FileName;
  label1.Caption:='Import from file '+opendialog1.FileName;
end;

procedure Treadexcelfile.chfileClick(Sender: TObject);
begin
  opendialog1.Execute;
  edit1.Text:=opendialog1.FileName;
  label1.Caption:='Import from file '+opendialog1.FileName;
end;

procedure Treadexcelfile.rfClick(Sender: TObject);
var
  ss,da:string;
  i,j,l:integer;

begin
  try
    EA:=CreateOleObject('Excel.Application');
  except
    application.MessageBox('NO EXCEL','', MB_OK);
    EXIT;
  end;
  EA.Visible := true;
  EA.WorkBooks.Open(edit1.Text);

  l:=4;
  for i:= 4 to 1000  do
  begin
    ss:=ea.cells[i,1];
    if (ss <> '') then
    begin
      if ((ss='LY') or (ss='LYN')) then
      begin
        for j:= 1 to 7  do
        begin
          da:=EA.Cells[i,j];
          idg.Cells[j-1,i-l]:=da;
        end;
      end
      else
      begin
        l:=l+1;
      end;
    end
    else
    begin
      break;
    end;
  end;
  idg.RowCount:=i-l;
  ea.quit;

end;

procedure Treadexcelfile.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if ProdRate.bb5.Enabled then
    begin
      showmessage('Data did not be changed.');
      //action:=canone;
    end
    else
    begin
      ea:=unassigned;
      action:=cafree;
    end;
end;

end.


