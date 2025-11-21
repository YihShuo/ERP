unit SetMachineData1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, ComCtrls, DB, DBTables, DBGridEh;

type
  TSetMachineData = class(TForm)
    Panel1: TPanel;
    Button2: TButton;
    CB_Machine: TCheckBox;
    CB_MachineDate: TCheckBox;
    DTP1: TDateTimePicker;
    Button3: TButton;
    MachineDateEdit: TEdit;
    SetMachineBox: TComboBox;
    QTemp: TQuery;
    RadioGroup1: TRadioGroup;
    DLNOEdit: TEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure CB_MachineClick(Sender: TObject);
    procedure CB_MachineDateClick(Sender: TObject);
    procedure DTP1Change(Sender: TObject);
  private
    NDate: TDate;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SetMachineData: TSetMachineData;

implementation

uses
  CutMachineComparison1;

{$R *.dfm}

procedure TSetMachineData.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TSetMachineData.FormDestroy(Sender: TObject);
begin
  SetMachineData := Nil;
end;

procedure TSetMachineData.Button3Click(Sender: TObject);
begin
  CutMachineComparison.Query1.EnableControls;
  Close;
end;
    
procedure TSetMachineData.FormCreate(Sender: TObject);
var
  i: integer;
begin
  DTP1.Date := Date;
  MachineDateEdit.Text := FormatDateTime('yyyy/MM/dd', DTP1.Date);

  SetMachineBox.Items.Clear;
  SetMachineBox.Items.Add('');
  for i:=1 to CutMachineComparison.MachineBox.Items.Count-1 do
  begin
    SetMachineBox.Items.Add(CutMachineComparison.MachineBox.Items[i]);
  end;
  SetMachineBox.ItemIndex := 0;
end;

procedure TSetMachineData.Button2Click(Sender: TObject);
var
  i: integer;
  BM: TBookmark;
  BookmarkList: TBookmarkListEh;
  TryDate: TDateTime;
begin
  if (CB_Machine.Checked = false) AND (CB_MachineDate.Checked = false) then
    Exit;

  with QTemp do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT GETDATE() AS NDate');
    Active := true;

    NDate := FieldByName('NDate').Value;
  end;

  BM := CutMachineComparison.Query1.GetBookmark;
  BookmarkList := CutMachineComparison.DBGridEh1.SelectedRows;
  CutMachineComparison.QUpdate.SQL.Clear;

  if (RadioGroup1.ItemIndex = 1) then
  begin
    CutMachineComparison.QUpdate.SQL.Add('UPDATE CutDispatchSS SET USERDATE = ''' + FormatDateTime('yyyy/MM/dd', NDate) + '''');
    if (CB_Machine.Checked) then
    begin
      if (SetMachineBox.ItemIndex >= 1) then
        CutMachineComparison.QUpdate.SQL.Add(', Machine = ''' + CutMachineComparison.Machine[SetMachineBox.ItemIndex-1] + '''')
      else
        CutMachineComparison.QUpdate.SQL.Add(', Machine = ''''');
    end;
    if (CB_MachineDate.Checked) then
    begin
      if (TryStrToDate(MachineDateEdit.Text, TryDate)) then
        CutMachineComparison.QUpdate.SQL.Add(', MachineDate = ''' + MachineDateEdit.Text + '''')
      else
        CutMachineComparison.QUpdate.SQL.Add(', MachineDate = NULL');
      end;
    CutMachineComparison.QUpdate.SQL.Add('WHERE DLNO = ''' + DLNOEdit.Text + '''');
    CutMachineComparison.QUpdate.ExecSQL;
    CutMachineComparison.QUpdate.SQL.Clear;
    CutMachineComparison.Query1.Active := false;
    CutMachineComparison.Query1.Active := true;
    CutMachineComparison.Query1.FreeBookmark(BM);
    ShowMessage('Success!');
    Close;
  end
  else if (RadioGroup1.ItemIndex = 0) then
  begin
    try
      if (CutMachineComparison.DBGridEh1.SelectedRows.Count > 0) then
      begin
        for i:=0 to BookmarkList.Count-1 do
        begin
          CutMachineComparison.Query1.GotoBookmark(Pointer(BookmarkList[i]));
          CutMachineComparison.QUpdate.SQL.Clear;
          CutMachineComparison.QUpdate.SQL.Add('UPDATE CutDispatchSS SET USERDATE = ''' + FormatDateTime('yyyy/MM/dd', NDate) + '''');
          if (CB_Machine.Checked) then
          begin
            if (SetMachineBox.ItemIndex >= 1) then
              CutMachineComparison.QUpdate.SQL.Add(', Machine = ''' + CutMachineComparison.Machine[SetMachineBox.ItemIndex-1] + '''')
            else
              CutMachineComparison.QUpdate.SQL.Add(', Machine = ''''');
          end;
          if (CB_MachineDate.Checked) then
          begin
            if (TryStrToDate(MachineDateEdit.Text, TryDate)) then
              CutMachineComparison.QUpdate.SQL.Add(', MachineDate = ''' + MachineDateEdit.Text + '''')
            else
              CutMachineComparison.QUpdate.SQL.Add(', MachineDate = NULL');
          end;
          CutMachineComparison.QUpdate.SQL.Add('WHERE DLNO = ''' + CutMachineComparison.Query1.FieldByName('DLNO').AsString + ''' AND ZLBH = ''' + CutMachineComparison.Query1.FieldByName('ZLBH').AsString + ''' AND DDBH = ''' + CutMachineComparison.Query1.FieldByName('DDBH').AsString + ''' AND BWBH = ''' + CutMachineComparison.Query1.FieldByName('BWBH').AsString + ''' AND SIZE = ''' + CutMachineComparison.Query1.FieldByName('SIZE').AsString + ''' AND CLBH = ''' + CutMachineComparison.Query1.FieldByName('CLBH').AsString + ''';');
          CutMachineComparison.QUpdate.ExecSQL;
          CutMachineComparison.QUpdate.SQL.Clear;
        end;
        ShowMessage('Success!');
        Close;
      end
      else begin
        ShowMessage('PLEASE SELECT A DDBH.');
      end;
    finally
      begin
        CutMachineComparison.Query1.Active := false;
        CutMachineComparison.Query1.Active := true;
        CutMachineComparison.Query1.FreeBookmark(BM);
        CutMachineComparison.Query1.EnableControls;
      end;
    end;
  end;
end;

procedure TSetMachineData.RadioGroup1Click(Sender: TObject);
begin
  if (RadioGroup1.ItemIndex = 0) then
  begin
    DLNOEdit.Visible := false;
  end
  else if (RadioGroup1.ItemIndex = 1) then
  begin
    DLNOEdit.Visible := true;
  end;
end;

procedure TSetMachineData.CB_MachineClick(Sender: TObject);
begin
  SetMachineBox.Visible := CB_Machine.Checked;
end;

procedure TSetMachineData.CB_MachineDateClick(Sender: TObject);
begin
  MachineDateEdit.Visible := CB_MachineDate.Checked;
  DTP1.Visible := CB_MachineDate.Checked;
end;

procedure TSetMachineData.DTP1Change(Sender: TObject);
begin
  MachineDateEdit.Text := FormatDateTime('yyyy/MM/dd', DTP1.Date);
end;

end.
