unit ExcelSheetDlg1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TExcelSheetDlg = class(TForm)
    ListBox1: TListBox;
    procedure ListBox1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    ExcelSheetI:Pointer;
    { Public declarations }
  end;

var
  ExcelSheetDlg: TExcelSheetDlg;

implementation

{$R *.dfm}

procedure TExcelSheetDlg.ListBox1DblClick(Sender: TObject);
var Index:integer;
begin
  Index:=listbox1.ItemIndex+1;
  CopyMemory(ExcelSheetDlg.ExcelSheetI, @Index, Sizeof(Index));
  Close;
end;

end.
