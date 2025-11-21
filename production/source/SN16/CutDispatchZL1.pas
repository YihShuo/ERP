unit CutDispatchZL1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, DBGrids, DBTables, GridsEh, DBGridEh;

type
  TCutDispatchZL = class(TForm)
    DS3: TDataSource;
    CutDispatchQry: TQuery;
    CutDispatchQryZLBH: TStringField;
    CutDispatchQryBWBH: TStringField;
    CutDispatchQryCLBH: TStringField;
    CutDispatchQrySIZE: TStringField;
    CutDispatchQryQty: TIntegerField;
    CutDispatchQryXXCC: TStringField;
    CutDispatchQryPieceS: TIntegerField;
    CutDispatchQryCutNum: TIntegerField;
    CutDispatchQryPiece: TSmallintField;
    CutDispatchQryLayer: TSmallintField;
    CutDispatchQryJoinnum: TSmallintField;
    CutDispatchQryywpm: TStringField;
    CutDispatchQryzwpm: TStringField;
    CutDispatchQryywsm: TStringField;
    CutDispatchQryzwsm: TStringField;
    DBGridEh1: TDBGridEh;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CutDispatchZL: TCutDispatchZL;

implementation

uses main1;

{$R *.dfm}

procedure TCutDispatchZL.FormCreate(Sender: TObject);
begin
  CutDispatchQry.Active:=true;
end;

procedure TCutDispatchZL.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TCutDispatchZL.FormDestroy(Sender: TObject);
begin
  CutDispatchZL:=nil;
end;

procedure TCutDispatchZL.FormShow(Sender: TObject);
begin
  main.FormLanguage(Pointer(self),self.Name);
end;

end.
