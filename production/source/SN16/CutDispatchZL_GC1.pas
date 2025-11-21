unit CutDispatchZL_GC1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, GridsEh, DBGridEh;

type
  TCutDispatchZL_GC = class(TForm)
    CutDispatchQry: TQuery;
    DS3: TDataSource;
    CutDispatchQryZLBH: TStringField;
    CutDispatchQryGCBWBH: TStringField;
    CutDispatchQryywsm: TStringField;
    CutDispatchQryzwsm: TStringField;
    CutDispatchQrySIZE: TStringField;
    CutDispatchQryQty: TIntegerField;
    CutDispatchQryLevels: TStringField;
    CutDispatchQryPDay: TFloatField;
    CutDispatchQryEarlyDay: TFloatField;
    CutDispatchQryBWBH: TStringField;
    CutDispatchQryPDayS: TIntegerField;
    CutDispatchQryBYWSM: TStringField;
    CutDispatchQryBZWSM: TStringField;
    CutDispatchQryywpm: TStringField;
    CutDispatchQryzwpm: TStringField;
    DBGridEh1: TDBGridEh;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CutDispatchZL_GC: TCutDispatchZL_GC;

implementation

uses main1;

{$R *.dfm}

procedure TCutDispatchZL_GC.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=CaFree;
end;

procedure TCutDispatchZL_GC.FormDestroy(Sender: TObject);
begin
  CutDispatchZL_GC:=nil;
end;

procedure TCutDispatchZL_GC.FormCreate(Sender: TObject);
begin
    CutDispatchQry.Active:=true;
end;

procedure TCutDispatchZL_GC.FormShow(Sender: TObject);
begin
  main.FormLanguage(Pointer(self),self.Name);
end;

end.
