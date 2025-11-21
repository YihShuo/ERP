unit ChuyenGio1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, ExtCtrls;

type
  TChuyenGio = class(TForm)
    Panel1: TPanel;
    Ngay: TLabel;
    GioChuyen: TDateTimePicker;
    btnOK: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ChuyenGio: TChuyenGio;

implementation

uses ScanChiTiet1, main1;

{$R *.dfm}

procedure TChuyenGio.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TChuyenGio.FormDestroy(Sender: TObject);
begin
  ChuyenGio:=nil;
end;

procedure TChuyenGio.FormCreate(Sender: TObject);
begin
   GioChuyen.Time:= ScanChiTiet.SMZL.fieldbyname('ScanDate').AsDateTime;
end;

procedure TChuyenGio.btnOKClick(Sender: TObject);
begin
  with ScanChiTiet.SMZL do
    begin
      while not Eof do
      begin
        Edit;
        FieldByName('ScanDate').AsString:=ScanChiTiet.Dates+' '+formatdatetime('HH:mm:ss',GioChuyen.Time);
        FieldByName('USERDATE').AsString:=ScanChiTiet.Dates+' '+formatdatetime('HH:mm:ss',GioChuyen.Time);
        next;
      end;
    end;
    close;
    ScanChiTiet.SMZL.First;
end;

procedure TChuyenGio.FormShow(Sender: TObject);
begin
  main.FormLanguage(Pointer(self),self.Name);
end;

end.
