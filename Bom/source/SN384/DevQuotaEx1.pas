unit DevQuotaEx1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, Buttons, ExtCtrls;

type
  TDevQuotaEx = class(TForm)
    Panel1: TPanel;
    BB2: TBitBtn;
    BB3: TBitBtn;
    BB4: TBitBtn;
    BB5: TBitBtn;
    BB6: TBitBtn;
    BB7: TBitBtn;
    BB1: TBitBtn;
    DBGrid3: TDBGridEh;
    MaterialCBDEx: TQuery;
    UpdSQL: TUpdateSQL;
    MaterialCBDExSeason: TStringField;
    MaterialCBDExGSBH: TStringField;
    MaterialCBDExCWHL: TFloatField;
    MaterialCBDExUSERID: TStringField;
    MaterialCBDExUSERDATE: TDateTimeField;
    DS1: TDataSource;
    procedure BB4Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure MaterialCBDExBeforeScroll(DataSet: TDataSet);
    procedure BB1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DevQuotaEx: TDevQuotaEx;

implementation
  uses main1;
{$R *.dfm}

procedure TDevQuotaEx.BB4Click(Sender: TObject);
begin
  if MaterialCBDEx.Active=true then
  begin
    with MaterialCBDEx do
    begin
      cachedupdates:=true;
      requestlive:=true;
      edit;
    end;
    BB5.Enabled:=true;
    BB6.Enabled:=true;
  end;
end;

procedure TDevQuotaEx.BB6Click(Sender: TObject);
begin
    with MaterialCBDEx do
    begin
      active:=false;
      requestlive:=false;
      cachedupdates:=false;
      active:=true;
    end;
    BB5.Enabled:=false;
    BB6.Enabled:=false;
end;

procedure TDevQuotaEx.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=CaFree;
end;

procedure TDevQuotaEx.FormDestroy(Sender: TObject);
begin
  DevQuotaEx:=nil;
end;

procedure TDevQuotaEx.FormCreate(Sender: TObject);
begin
  MaterialCBDEx.Active:=true;
end;

procedure TDevQuotaEx.BB5Click(Sender: TObject);
begin
  //
  MaterialCBDEx.First;
  with MaterialCBDEx do
  begin
    case updatestatus of
      usmodified:
      begin
       Edit;
       FieldByName('userID').Value:=main.edit1.text;
       FieldByName('userdate').Value:=Date();
       UpdSQL.apply(ukmodify);
      end;
    end;
  end;
  //
  MaterialCBDEx.active:=false;
  MaterialCBDEx.cachedupdates:=false;
  MaterialCBDEx.requestlive:=false;
  MaterialCBDEx.active:=true;
  BB5.Enabled:=false;
  BB6.Enabled:=false;
end;

procedure TDevQuotaEx.MaterialCBDExBeforeScroll(DataSet: TDataSet);
begin
  // abort;
end;

procedure TDevQuotaEx.BB1Click(Sender: TObject);
begin
  MaterialCBDEx.Active:=false;
  MaterialCBDEx.Active:=true;
end;

end.
