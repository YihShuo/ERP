unit QCDefectReport1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ComCtrls, ExtCtrls;

type
  TQCDefectReport = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    LabSKU: TLabel;
    Button1: TButton;
    DTP1: TDateTimePicker;
    Button2: TButton;
    DTP2: TDateTimePicker;
    EditSKU: TEdit;
    CkJustSKU: TCheckBox;
    DBGridEh1: TDBGridEh;
    DS1: TDataSource;
    QReport: TQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  QCDefectReport: TQCDefectReport;

implementation

{$R *.dfm}

end.
