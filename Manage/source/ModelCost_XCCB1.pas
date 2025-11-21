unit ModelCost_XCCB1;

interface

uses


  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, DBTables, math,dateutils, Menus, GridsEh, DBGridEh
  ,ehlibbde;


type
  TModelCost_XCCB = class(TForm)
    DBGridEh1: TDBGridEh;
    Query1: TQuery;
    DS1: TDataSource;
    Query1BWBH: TStringField;
    Query1CLBH: TStringField;
    Query1YWPM: TStringField;
    Query1ZWPM: TStringField;
    Query1DWBH: TStringField;
    Query1YWSM: TStringField;
    Query1ZWSM: TStringField;
    Query1USPrice: TCurrencyField;
    Query1USACC: TFloatField;
    UpCWXXCBS: TUpdateSQL;
    PopupMenu1: TPopupMenu;
    Calculate1: TMenuItem;
    CalculateAll1: TMenuItem;
    Qtemp: TQuery;
    Query1XieXing: TStringField;
    Query1SheHao: TStringField;
    Query1CLSL: TFloatField;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure Query1CalcFields(DataSet: TDataSet);
    procedure Query1NewRecord(DataSet: TDataSet);
    procedure Calculate1Click(Sender: TObject);
    procedure CalculateAll1Click(Sender: TObject);
    //procedure CalculateAll1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ModelCost_XCCB: TModelCost_XCCB;

implementation

uses ModelCost1;

{$R *.dfm}

procedure TModelCost_XCCB.FormDestroy(Sender: TObject);
begin
ModelCost_XCCB:=nil;
end;

procedure TModelCost_XCCB.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
query1.Active:=false;
Qtemp.Active:=false;
end;

procedure TModelCost_XCCB.FormCreate(Sender: TObject);
begin
query1.Active:=true;
end;

procedure TModelCost_XCCB.Query1CalcFields(DataSet: TDataSet);
begin
with query1 do
  begin
    fieldbyname('USACC').Value:=fieldbyname('USPrice').Value*fieldbyname('CLSL').Value;
  end;
end;

procedure TModelCost_XCCB.Query1NewRecord(DataSet: TDataSet);
begin
abort;
end;

procedure TModelCost_XCCB.Calculate1Click(Sender: TObject);
var bm:Tbookmark;
i:integer;
Qty:real;
bookmarklist:tbookmarklisteh;
begin
Qty:=0;
if (not query1.Active) then
  begin
    abort;
  end;
if (Query1.recordcount<1) then
  begin
    abort;
  end;
with Qtemp do
  begin
    active:=false;
    sql.Clear;
    sql.add('delete CWXXCBS ');
    sql.add('where XieXing='+''''+ModelCost.CWXXCB.fieldbyname('XieXing').value+'''');
    sql.add('      and SheHao= '+''''+ModelCost.CWXXCB.fieldbyname('SheHao').value+'''');       
    sql.add('      and SB='+''''+'1'+'''');
    execsql;
  end;
query1.disablecontrols;
bm:=query1.getbookmark;
bookmarklist:=dbgrideh1.selectedrows;
if bookmarklist.count>0 then
  begin
    try
      for i:=0 to bookmarklist.count-1 do
        begin
          query1.gotobookmark(pointer(bookmarklist[i]));
          if not query1.FieldByName('USACC').IsNull then
            begin
              Qty:=Qty+query1.FieldByName('USACC').value;
              UpCWXXCBS.apply(ukinsert);
            end;
        end;
      ModelCost.CWXXCB.edit;
      ModelCost.CWXXCB.fieldbyname('XCCB').value:=roundto(Qty,-2)  ;
      ModelCost.CWXXCB.post;
    finally
      begin
        query1.gotobookmark(bm);
        query1.freebookmark(bm);
        query1.enablecontrols;
        showmessage('You have finish copy!');
      end;
    end;
  end;
end;

procedure TModelCost_XCCB.CalculateAll1Click(Sender: TObject);
var  Qty:real;
begin
Qty:=0;
if (not query1.Active) then
  begin
    abort;
  end;
if (Query1.recordcount<1) then
  begin
    abort;
  end;    
with Qtemp do
  begin
    active:=false;
    sql.Clear;
    sql.add('delete CWXXCBS ');
    sql.add('where XieXing='+''''+ModelCost.CWXXCB.fieldbyname('XieXing').value+'''');
    sql.add('      and SheHao= '+''''+ModelCost.CWXXCB.fieldbyname('SheHao').value+'''');
    sql.add('      and SB='+''''+'1'+'''');
    execsql;
  end;
with query1 do
  begin
    first;
    while not eof do
      begin
        if not query1.FieldByName('USACC').IsNull then
          begin
            Qty:=Qty+query1.FieldByName('USACC').value; 
            UpCWXXCBS.apply(ukinsert);
          end;
        next;
      end;
  end;
ModelCost.CWXXCB.edit;
ModelCost.CWXXCB.fieldbyname('XCCB').value:=roundto(Qty,-2)  ;
ModelCost.CWXXCB.post;  
end;

end.
