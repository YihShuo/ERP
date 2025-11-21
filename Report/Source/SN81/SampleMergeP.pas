unit SampleMergeP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GridsEh, DBGridEh, StdCtrls, Buttons, ExtCtrls, DB, DBTables;

type
  TSampleMerge = class(TForm)
    Panel1: TPanel;
    LastMonth: TLabel;
    BB1: TBitBtn;
    bbt6: TBitBtn;
    Panel2: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    QryBtn: TButton;
    DBGridEh1: TDBGridEh;
    YPZLZLS2: TQuery;
    DS: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SampleMerge: TSampleMerge;

implementation

{$R *.dfm}

end.
