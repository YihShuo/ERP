unit Prodsend_DLG1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TProdsend_DLG = class(TForm)
    Button1: TButton;
    Label1: TLabel;
    Edit1: TEdit;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Prodsend_DLG: TProdsend_DLG;

implementation

uses Prodsend1;

{$R *.dfm}

procedure TProdsend_DLG.Button1Click(Sender: TObject);
begin
close;
if edit1.text<>'' then
  begin
  //  Prodsend.edit2.text:=edit1.text;
    Prodsend.BBPrint.visible:=true;
    close;
  end
    else
      begin
        showmessage('Can not be empty.');
        abort;
      end;
end;

procedure TProdsend_DLG.Button2Click(Sender: TObject);
begin
close;
end;

procedure TProdsend_DLG.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
if  not (Key in ['0'..'9',#8,#13]) then
   Key := #0;
if key=#13 then
  button1.SetFocus;
end;

end.
