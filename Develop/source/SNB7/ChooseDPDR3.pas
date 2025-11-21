unit ChooseDPDR3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls;

type
  TChooseDPDR2 = class(TForm)
    Panel1: TPanel;
    Button1: TButton;
    Button2: TButton;
    Panel4: TPanel;
    DBGrid1: TDBGrid;
    Panel3: TPanel;
    DBGrid2: TDBGrid;
    Query1: TQuery;
    Query1YYBH: TStringField;
    Query1YWSM: TStringField;
    DataSource1: TDataSource;
    Query2: TQuery;
    Query2YYBH: TStringField;
    Query2YWSM: TStringField;
    Query2VWSM: TStringField;
    DataSource2: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ChooseDPDR2: TChooseDPDR2;

implementation

uses TBDelayReason;

{$R *.dfm}

procedure TChooseDPDR2.FormCreate(Sender: TObject);
begin
   query1.active:=true;
   query2.active:=true;
end;

procedure TChooseDPDR2.Button2Click(Sender: TObject);
begin
  if GLXB='C' then
  begin
    TBDelayReason1.query1.Edit;
    TBDelayReason1.query1.FieldByName('DP').Value := '';
   // TBDelayReason1.query1.FieldByName('DPEnglish').Value :='';
    TBDelayReason1.query1.FieldByName('DR').Value :='';
   // TBDelayReason1.query1.FieldByName('DREnglish').Value :='';
   // TBDelayReason1.query1.FieldByName('DRTiengViet').Value :='';
    close;
  end;
  if GLXB='S' then
  begin
    TBDelayReason1.query3.Edit;
    TBDelayReason1.query3.FieldByName('DP').Value := '';
    //TBDelayReason1.query3.FieldByName('DPEnglish').Value :='';
    TBDelayReason1.query3.FieldByName('DR').Value :='';
   // TBDelayReason1.query3.FieldByName('DREnglish').Value :='';
   // TBDelayReason1.query3.FieldByName('DRTiengViet').Value :='';
    close;
  end;
  if GLXB='A' then
  begin
    TBDelayReason1.query4.Edit;
    TBDelayReason1.query4.FieldByName('DP').Value := '';
  //  TBDelayReason1.query4.FieldByName('DPEnglish').Value :='';
    TBDelayReason1.query4.FieldByName('DR').Value :='';
   // TBDelayReason1.query4.FieldByName('DREnglish').Value :='';
   // TBDelayReason1.query4.FieldByName('DRTiengViet').Value :='';
    close;
  end;
end;

procedure TChooseDPDR2.Button1Click(Sender: TObject );
begin

  if GLXB='C' then
  begin
    TBDelayReason1.query1.Edit;
    TBDelayReason1.query1.FieldByName('DP').Value := query1.FieldByName('yybh').Value;
    TBDelayReason1.query1.FieldByName('PartE').Value := query1.FieldByName('ywsm').Value;
    TBDelayReason1.query1.FieldByName('DR').Value := query2.FieldByName('yybh').Value;
    TBDelayReason1.query1.FieldByName('ReasonE').Value := query2.FieldByName('ywsm').Value;
    TBDelayReason1.query1.FieldByName('ReasonV').Value := query2.FieldByName('vwsm').Value;
    close;
  end;
  if GLXB='S' then
  begin
    TBDelayReason1.query3.Edit;
    TBDelayReason1.query3.FieldByName('DP').Value := query1.FieldByName('yybh').Value;
    TBDelayReason1.query3.FieldByName('PartE').Value := query1.FieldByName('ywsm').Value;
    TBDelayReason1.query3.FieldByName('DR').Value := query2.FieldByName('yybh').Value;
    TBDelayReason1.query3.FieldByName('ReasonE').Value := query2.FieldByName('ywsm').Value;
    TBDelayReason1.query3.FieldByName('ReasonV').Value := query2.FieldByName('vwsm').Value;
    close;
  end;
  if GLXB='A' then
  begin
    TBDelayReason1.query4.Edit;
    TBDelayReason1.query4.FieldByName('DP').Value := query1.FieldByName('yybh').Value;
    TBDelayReason1.query4.FieldByName('PartE').Value := query1.FieldByName('ywsm').Value;
    TBDelayReason1.query4.FieldByName('DR').Value := query2.FieldByName('yybh').Value;
    TBDelayReason1.query4.FieldByName('ReasonE').Value := query2.FieldByName('ywsm').Value;
    TBDelayReason1.query4.FieldByName('ReasonV').Value := query2.FieldByName('vwsm').Value;
    close;
  end;
end;

procedure TChooseDPDR2.DBGrid1CellClick(Column: TColumn);
begin
  query2.active:=true;
end;

procedure TChooseDPDR2.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
     if ((State = [gdSelected]) or (State=[gdSelected,gdFocused])) then
    begin
      DBGrid1.Canvas.Font.Color :=ClYellow;
      DBGrid1.Canvas.Brush.Color :=clblue;
      DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
    end;
end;

procedure TChooseDPDR2.DBGrid2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
     if ((State = [gdSelected]) or (State=[gdSelected,gdFocused])) then
    begin
      DBGrid2.Canvas.Font.Color :=ClYellow;
      DBGrid2.Canvas.Brush.Color :=clblue;
      DBGrid2.DefaultDrawColumnCell(Rect,DataCol,Column,State);
    end;
end;

end.
