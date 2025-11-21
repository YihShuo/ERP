unit NotYetRelease;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GridsEh, DBGridEh, StdCtrls, ExtCtrls, DB, DBTables, Dateutils, strutils;

type
  TF_NotYetRelease = class(TForm)
    Panel1: TPanel;
    Button1: TButton;
    Panel2: TPanel;
    DBGridEh1: TDBGridEh;
    Button3: TButton;
    Button4: TButton;
    Query1: TQuery;
    DataSource1: TDataSource;
    Label1: TLabel;
    UpdateSQL1: TUpdateSQL;
    Query2: TQuery;
    Query3: TQuery;
    DBGridEh2: TDBGridEh;
    Query4: TQuery;
    DataSource2: TDataSource;
    Query4DDBH: TStringField;
    Query4GXLB: TStringField;
    Query4Qty: TIntegerField;
    Query4RDepNO: TStringField;
    Query4DepName: TStringField;
    Query4DepMemo: TStringField;
    Edit1: TEdit;
    Button5: TButton;
    Query1XieXing: TStringField;
    Query1SheHao: TStringField;
    Query1ARTICLE: TStringField;
    Query1Pairs: TIntegerField;
    Query1ShipDate: TDateTimeField;
    Query1Checked: TBooleanField;
    Query4RPlanDate: TDateTimeField;
    ComboBox1: TComboBox;
    Query1DepID2: TStringField;
    Query1DepID3: TStringField;
    Query1Recommend: TStringField;
    Query1DAOMH: TStringField;
    Query1XTMH: TStringField;
    Query1YSBH: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure Query1CheckedChange(Sender: TField);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure DBGridEh2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    procedure ReQuery;
  public
    { Public declarations }
  end;

var
  F_NotYetRelease: TF_NotYetRelease;
  Selected, Flag: Boolean;
  LastSelection: Integer;

implementation

{$R *.dfm}
uses
  main1, PreArrange;

procedure TF_NotYetRelease.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if Selected and (messagedlg('Do you really want to cancel these selection?',mtConfirmation,[mbyes,mbno],0)=mrNo) then
  begin
    action := caFree;
  end;
end;

procedure TF_NotYetRelease.FormDestroy(Sender: TObject);
begin
  F_NotYetRelease := nil;
end;

procedure TF_NotYetRelease.FormCreate(Sender: TObject);
begin
  Flag := true;
  Query1.CachedUpdates := true;
  Query1.RequestLive := true;
  Combobox1.ItemIndex := 0;
end;

procedure TF_NotYetRelease.ReQuery;
begin
  with Query1 do
  begin
    Active := false;
    SQL.Clear;
    if Flag then
      SQL.Add(' SELECT CAST(1 AS BIT) AS Checked,')
    else
      SQL.Add(' SELECT CAST(0 AS BIT) AS Checked,');
    SQL.Add(' SMDD.YSBH, DDZL.XieXing, DDZL.SheHao, DDZL.ARTICLE, SUM(SMDD.Qty) AS Pairs, DDZL.ShipDate,');
    SQL.Add(' XXZL.DAOMH, XXZL.XTMH, SCXXDV.DepID1 AS Recommend, SCXXDV.DepID2, SCXXDV.DepID3 FROM SMDD');
    SQL.Add(' LEFT JOIN DDZL ON DDZL.DDBH = SMDD.YSBH AND DDZL.GSBH = SMDD.GSBH');
    SQL.Add(' LEFT JOIN XXZL ON XXZL.XieXing = DDZL.XieXing AND XXZL.SheHao = DDZL.SheHao');
    SQL.Add(' LEFT JOIN SCXXDV ON SCXXDV.XieXing = DDZL.XieXing AND SCXXDV.SheHao = DDZL.SheHao');
    SQL.Add(' WHERE SMDD.GSBH = ''' + main.Edit2.Text + ''' AND DDZL.DDLB IN (''N'', ''F'') AND DDZL.DDZT IN (''Y'', ''S'')');
    SQL.Add(' AND DDZL.BUYNO LIKE ''' + Edit1.Text + '%'' AND SMDD.RDepNo IS NULL');
    SQL.Add(' GROUP BY SMDD.YSBH, DDZL.XieXing, DDZL.SheHao, DDZL.ARTICLE, DDZL.ShipDate, XXZL.DAOMH, XXZL.XTMH, SCXXDV.DepID1, SCXXDV.DepID2, SCXXDV.DepID3');
    SQL.Add(' ORDER BY SMDD.YSBH');
    Active := true;
  end;

  Flag := true;

  with Query4 do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add(' SELECT S.DDBH, S.GXLB, S.Qty, S.RDepNO, B.DepName, B.DepMemo, S.RPlanDate FROM SMDD S');
    SQL.Add(' LEFT JOIN Bdepartment B ON B.ID = S.RDepNO');
    SQL.Add(' WHERE S.YSBH = :YSBH AND S.GSBH = ''' + main.Edit2.Text + ''' ');
    Active := true;
  end;
end;

procedure TF_NotYetRelease.Query1CheckedChange(Sender: TField);
begin
  Selected := True;
end;

procedure TF_NotYetRelease.Button3Click(Sender: TObject);
var
  MyBookmark : Pointer;
begin
  Query4.Close;

  with Query1 do
  begin
    MyBookmark := GetBookmark;
    First;

    while not eof do
    begin
      Edit;
      FieldByName('Checked').Value := 1;
      Next;
    end;
    GotoBookmark(MyBookmark);
  end;

  Query4.Open;
end;

procedure TF_NotYetRelease.Button4Click(Sender: TObject);
var
  MyBookmark : Pointer;
begin
  Query4.Close;

  with Query1 do
  begin
    MyBookmark := GetBookmark;
    First;

    while not eof do
    begin
      Edit;
      FieldByName('Checked').Value := 0;
      Next;
    end;
    GotoBookmark(MyBookmark);
  end;

  Query4.Open;
end;

procedure TF_NotYetRelease.Button1Click(Sender: TObject);
var
  Counter1, Counter2: integer;
begin  
  Query4.Close;
  
  with Query1 do
  begin
    First;
    Counter1 := 0;
    Counter2 := 0;
    Query2.SQL.Clear;

    while not eof do
    begin
      if FieldByName('checked').AsBoolean then
      begin
        if Combobox1.Text = 'RECOMMEND' then
        begin
          if FieldByName('Recommend').AsString <> '' then
          begin
            Query2.SQL.Add('UPDATE SMDD SET RDepNO = ''' + FieldByName('Recommend').AsString + ''' WHERE DDBH LIKE ''' + FieldByName('YSBH').AsString + '%'' AND RDepNO IS NULL AND GSBH = ''' + main.Edit2.Text + ''' ;');
            Inc(Counter1);
          end
          else
            Inc(Counter2);
        end
        else begin
          Query2.SQL.Add('UPDATE SMDD SET RDepNO = ''' + Combobox1.Text + ''' WHERE DDBH LIKE ''' + FieldByName('YSBH').AsString + '%'' AND RDepNO IS NULL AND GSBH = ''' + main.Edit2.Text + ''' ;');
          Inc(Counter1);
        end;

        if (Counter1 = 250) then
        begin
          Counter1 := 0;
          Query2.ExecSQL;
          Query2.SQL.Clear;
        end;
      end;
      next;
    end;

    if (Query2.SQL.Text <> '') then
      Query2.ExecSQL;

    if (Counter2 > 0) then
      ShowMessage('There is no recommend lean for some XieXing.' + #13#10 + 'Please reselect the lean manually.');

    Flag := false;
    ReQuery;
    PreArrange.LoadSuccess := false;
    F_PreArrange.CalculateLeanAmount;
    F_PreArrange.RefreshOrder;
    PreArrange.LoadSuccess := true;
    ShowMessage('Success!!');
  end;
end;

procedure TF_NotYetRelease.Button5Click(Sender: TObject);
begin
  ReQuery;
end;

procedure TF_NotYetRelease.DBGridEh2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if Query4.FieldByName('RDepNO').AsString = '' then
  begin
    DBGridEh2.Canvas.Font.Color:=clRed;
    DBGridEh2.DefaultDrawColumnCell(Rect, DataCol, Column, State);
  end;
end;

end.
