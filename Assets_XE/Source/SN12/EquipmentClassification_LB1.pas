unit EquipmentClassification_LB1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DB, DBTables, Grids, DBGrids, Buttons,
  GridsEh, DBGridEh, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls,
  DynVarsEh, EhLibVCL, DBAxisGridsEh;

type
  TEquipmentClassification_LB = class(TForm)
    DS1: TDataSource;
    Query1: TQuery;
    Panel1: TPanel;
    Label1: TLabel;
    SBBHEdit: TEdit;
    Query2: TQuery;
    DS2: TDataSource;
    DS3: TDataSource;
    Query3: TQuery;
    DS4: TDataSource;
    Query4: TQuery;
    Query1LBDH: TStringField;
    Query1ZWSM: TStringField;
    Query1YWSM: TStringField;
    Query3LBDH: TStringField;
    Query3ZWSM: TStringField;
    Query3YWSM: TStringField;
    Query2LBDH: TStringField;
    Query2ZWSM: TStringField;
    Query2YWSM: TStringField;
    Query4LBDH: TStringField;
    Query4ZWSM: TStringField;
    Query4YWSM: TStringField;
    Query1LB: TStringField;
    Query2LB: TStringField;
    Query3LB: TStringField;
    Query4LB: TStringField;
    TmpQuery: TQuery;
    Query1USERID: TStringField;
    Query1USERDATE: TDateTimeField;
    Query1YN: TStringField;
    Query2USERID: TStringField;
    Query2USERDATE: TDateTimeField;
    Query2YN: TStringField;
    Query3USERID: TStringField;
    Query3USERDATE: TDateTimeField;
    Query3YN: TStringField;
    Query4USERID: TStringField;
    Query4USERDATE: TDateTimeField;
    Query4YN: TStringField;
    ButtonOK: TBitBtn;
    Panel8: TPanel;
    SubPanel1: TPanel;
    Panel2: TPanel;
    Label2: TLabel;
    DBGrid1: TDBGridEh;
    SubPanel2: TPanel;
    Panel3: TPanel;
    Label4: TLabel;
    DBGrid3: TDBGridEh;
    Splitter1: TSplitter;
    Splitter2: TSplitter;
    Panel9: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Label5: TLabel;
    DBGrid2: TDBGridEh;
    Panel6: TPanel;
    Panel7: TPanel;
    Label3: TLabel;
    DBGrid4: TDBGridEh;
    Splitter3: TSplitter;
    Label6: TLabel;
    ZWSM2Edit: TEdit;
    YWSM2Edit: TEdit;
    Label7: TLabel;
    ZWSM4Edit: TEdit;
    YWSM4Edit: TEdit;
    procedure FormDestroy(Sender: TObject);
    procedure SBBHEditChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ButtonOKClick(Sender: TObject);
    procedure ZWSM2EditKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure YWSM2EditKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ZWSM4EditKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure YWSM4EditKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid4DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    procedure QueryAfterScroll(DataSet: TDataSet);
    procedure Query2Click();
    procedure Query4Click();
  public
    { Public declarations }
  end;

var
  EquipmentClassification_LB: TEquipmentClassification_LB;

implementation

uses main1, EquipmentClassification1;

{$R *.dfm}

procedure TEquipmentClassification_LB.FormDestroy(Sender: TObject);
begin
  EquipmentClassification_LB:=nil;
end;

procedure TEquipmentClassification_LB.FormShow(Sender: TObject);
begin
  main.FormLanguage(Pointer(self),self.Name);
end;

procedure TEquipmentClassification_LB.SBBHEditChange(Sender: TObject);
begin
  //

end;

procedure TEquipmentClassification_LB.FormCreate(Sender: TObject);
begin

  Query1.Active:=true;
  Query2.Active:=true;
  Query3.Active:=true;
  Query4.Active:=true;
  Query1.AfterScroll:=QueryAfterScroll;
  Query2.AfterScroll:=QueryAfterScroll;
  Query3.AfterScroll:=QueryAfterScroll;
  Query4.AfterScroll:=QueryAfterScroll;
  //
  SBBHEDIT.Text:=Query1.FieldByName('LBDH').AsString+Query2.FieldByName('LBDH').AsString+
                 Query4.FieldByName('LBDH').AsString+Query3.FieldByName('LBDH').AsString;
  //
  ButtonOK.Enabled:=true;

end;
//
procedure TEquipmentClassification_LB.QueryAfterScroll(DataSet: TDataSet);
begin
  SBBHEDIT.Text:=Query1.FieldByName('LBDH').AsString+Query2.FieldByName('LBDH').AsString+
                 Query4.FieldByName('LBDH').AsString+Query3.FieldByName('LBDH').AsString;

end;

//
procedure TEquipmentClassification_LB.ButtonOKClick(Sender: TObject);
begin

  if ((Query1.CachedUpdates=false) and (Query2.CachedUpdates=false) and (Query3.CachedUpdates=false) and (Query4.CachedUpdates=false)) then
  begin
    if length(SBBHEdit.Text)<9 then
    begin
      Showmessage('Equipment Code length>=9!');
    end else
    begin
      //
      TmpQuery.Active:=false;
      TmpQuery.SQL.Clear;
      TmpQuery.SQL.Add('Select SBBH from TSCD where SBBH='''+SBBHEdit.Text+''' ');
      TmpQuery.Active:=true;
      if TmpQuery.RecordCount=0 then
      begin
        with Equipment_Classification.TSCD_SB do
        begin
          Edit;
          FieldByName('SBBH').AsString:=SBBHEdit.Text;
          FieldByName('LSBH').AsString:=Query4.FieldByName('ZWSM').AsString;
          FieldByName('YWPM').AsString:=Query4.FieldByName('YWSM').AsString;
          FieldByName('ZWPM').AsString:=Query4.FieldByName('ZWSM').AsString;
          FieldByName('Memo').AsString:=Query1.FieldByName('YWSM').AsString+'-'+Query2.FieldByName('ZWSM').AsString;
          Post;
        end;
        Close;
      end else
      begin
        Showmessage('Equipment Code is exists!');
      end;
      TmpQuery.Active:=false;
    end;
  end else
  begin
    //Showmessage('Please Save first');
  end;

end;

procedure TEquipmentClassification_LB.ZWSM2EditKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key=13 then
     Query2Click();
end;

procedure TEquipmentClassification_LB.Query2Click();
begin
  //
  with Query2 do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select * from TSCD_LBZLS where lb=:LBDH ');
    if ZWSM2Edit.Text<>'' then
    SQL.Add(' and ZWSM like ''%'+ZWSM2Edit.Text+'%'' ');
    if YWSM2Edit.Text<>'' then
    SQL.Add(' and YWSM like ''%'+YWSM2Edit.Text+'%'' ');
    Active:=true;
  end;
  //
end;
procedure TEquipmentClassification_LB.Query4Click();
begin
  //
  with Query4 do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select * from TSCD_LBZLS where lb=:LBDH ');
    if ZWSM4Edit.Text<>'' then
    SQL.Add(' and ZWSM like ''%'+ZWSM4Edit.Text+'%'' ');
    if YWSM4Edit.Text<>'' then
    SQL.Add(' and YWSM like ''%'+YWSM4Edit.Text+'%'' ');
    Active:=true;
  end;
  //
end;
procedure TEquipmentClassification_LB.YWSM2EditKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key=13 then
     Query2Click();
end;

procedure TEquipmentClassification_LB.ZWSM4EditKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key=13 then
     Query4Click();
end;

procedure TEquipmentClassification_LB.YWSM4EditKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key=13 then
     Query4Click();
end;

procedure TEquipmentClassification_LB.DBGrid4DblClick(Sender: TObject);
begin
  ButtonOK.Click;
end;

end.
