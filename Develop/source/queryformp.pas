unit queryformp;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  Tqueryform = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    Label3: TLabel;
    Edit3: TEdit;
    Label4: TLabel;
    Edit4: TEdit;
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  queryform: Tqueryform;

implementation
uses tempmaterialp;
{$R *.dfm}

procedure Tqueryform.Button1Click(Sender: TObject);
begin
  with tempmaterial.Query1 do
  begin
    active:=false;
    sql.Clear;
    sql.Add('select * from clzltemp ');
    sql.Add('where tempddbh like '+''''+edit1.text+'%'+'''');
    sql.Add('    and cllb like '+''''+'%'+edit2.Text+'%'+'''');
    sql.add('    and ywpm like ' + ''''+'%'+edit4.Text+'%'+'''');
    sql.add('    and Zwpm like ' + ''''+'%'+edit3.Text+'%'+'''');
    sql.add(' order by tempddbh');
    active:=true;
    tempmaterial.bb2.Enabled:=true;
    tempmaterial.bb3.Enabled:=true;
    tempmaterial.bb4.Enabled:=true;
    tempmaterial.bbt6.Enabled:=true;
    //memo1.Text:=sql.Text;
  end;
  queryform.Close;
end;

procedure Tqueryform.Button2Click(Sender: TObject);
begin
  queryform.Close;
end;

end.
