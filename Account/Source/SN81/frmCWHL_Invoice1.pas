unit frmCWHL_Invoice1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DBTables, DB, GridsEh, DBGridEh, ExtCtrls,
  ComCtrls;

type
  TfrmCWHL_Invoice = class(TForm)
    Panel1: TPanel;
    DB_CWHL_Invoice: TDBGridEh;
    Qry_CWHL_Invoice: TQuery;
    DS_CWHL_Invoice: TDataSource;
    Up_CWHL_Invoice: TUpdateSQL;
    Ins_CWHL_Invoice: TBitBtn;
    Mod_CWHL_Invoice: TBitBtn;
    Del_CWHL_Invoice: TBitBtn;
    Sav_CWHL_Invoice: TBitBtn;
    Can_CWHL_Invoice: TBitBtn;
    Que_CWHL_Invoice: TBitBtn;
    Qry_CWHL_InvoiceInvoiceDate: TDateTimeField;
    Qry_CWHL_InvoiceCWHL: TIntegerField;
    Qry_CWHL_InvoiceUserID: TStringField;
    Qry_CWHL_InvoiceUserDate: TDateTimeField;
    Qry_CWHL_InvoiceYN: TStringField;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    Label1: TLabel;
    Qry_Temp: TQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Que_CWHL_InvoiceClick(Sender: TObject);
    procedure Ins_CWHL_InvoiceClick(Sender: TObject);
    procedure Mod_CWHL_InvoiceClick(Sender: TObject);
    procedure Del_CWHL_InvoiceClick(Sender: TObject);
    procedure Can_CWHL_InvoiceClick(Sender: TObject);
    procedure Sav_CWHL_InvoiceClick(Sender: TObject);
    procedure Qry_CWHL_InvoiceAfterOpen(DataSet: TDataSet);
    procedure Qry_CWHL_InvoiceBeforeClose(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure DB_CWHL_InvoiceGetCellParams(Sender: TObject;
      Column: TColumnEh; AFont: TFont; var Background: TColor;
      State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCWHL_Invoice: TfrmCWHL_Invoice;

implementation

uses
  main1;

{$R *.dfm}

procedure TfrmCWHL_Invoice.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if Qry_CWHL_Invoice.RequestLive then
  begin
    ShowMessage('Pls save data first!');
    Abort;
  end;
  Action := caFree;
end;

procedure TfrmCWHL_Invoice.FormDestroy(Sender: TObject);
begin
  frmCWHL_Invoice := nil;
end;

procedure TfrmCWHL_Invoice.Que_CWHL_InvoiceClick(Sender: TObject);
begin
  if Qry_CWHL_Invoice.RequestLive then
  begin
    ShowMessage('Pls save data first!');
    Abort;
  end;
  with Qry_CWHL_Invoice do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT InvoiceDate, CWHL, UserID, UserDate, ''1'' YN');
    SQL.Add('FROM CWHL_Invoice');
    SQL.Add('WHERE CONVERT(VARCHAR,InvoiceDate,111) BETWEEN ''' + FormatDateTime('yyyy/MM/dd', DTP1.Date) + ''' AND ''' + FormatDateTime('yyyy/MM/dd', DTP2.Date) + '''');
    Open;
  end;
end;

procedure TfrmCWHL_Invoice.Ins_CWHL_InvoiceClick(Sender: TObject);
begin
  with Qry_CWHL_Invoice do
  begin
    RequestLive := True;
    CachedUpdates := True;
    Insert;
  end;
  Sav_CWHL_Invoice.Enabled := True;
  Can_CWHL_Invoice.Enabled := True;
  DB_CWHL_Invoice.FieldColumns['InvoiceDate'].ButtonStyle:=cbsAuto;
end;

procedure TfrmCWHL_Invoice.Mod_CWHL_InvoiceClick(Sender: TObject);
begin
  with Qry_CWHL_Invoice do
  begin
    RequestLive := True;
    CachedUpdates := True;
    Edit;
  end;
  Sav_CWHL_Invoice.Enabled := True;
  Can_CWHL_Invoice.Enabled := True;
  DB_CWHL_Invoice.FieldColumns['InvoiceDate'].ButtonStyle:=cbsAuto;
end;

procedure TfrmCWHL_Invoice.Del_CWHL_InvoiceClick(Sender: TObject);
begin
  with Qry_CWHL_Invoice do
  begin
    RequestLive := True;
    CachedUpdates := True;
    Edit;
    FieldByName('YN').AsString := '0';
  end;
  Sav_CWHL_Invoice.Enabled := True;
  Can_CWHL_Invoice.Enabled := True;
end;

procedure TfrmCWHL_Invoice.Can_CWHL_InvoiceClick(Sender: TObject);
begin
  with Qry_CWHL_Invoice do
  begin
    Close;
    RequestLive := False;
    CachedUpdates := False;
    Open;
  end;
end;

procedure TfrmCWHL_Invoice.Sav_CWHL_InvoiceClick(Sender: TObject);
begin
  try
    with Qry_CWHL_Invoice do
    begin
      First;
      while not Eof do
      begin
        if (UpdateStatus=usInserted) or ((UpdateStatus=usModified) and (FieldByName('YN').AsString<>'0')) then
        begin
          if FieldByName('InvoiceDate').AsString='' then
          begin
            ShowMessage('Invoice Date can not empty!');
            Exit;
          end;
        end;
        case UpdateStatus of
          usInserted:
            begin
              if FieldByName('YN').AsString <> 'I' then
              begin
                Edit;
                FieldByName('UserID').AsString := main.Edit1.Text;
                Up_CWHL_Invoice.Apply(ukInsert);
                FieldByName('YN').AsString := 'I';
              end;
            end;
          usModified:
            begin
              if FieldByName('YN').AsString = '0' then
                Up_CWHL_Invoice.Apply(ukDelete)
              else
              begin
                Edit;
                FieldByName('UserID').AsString := main.Edit1.Text;
                Up_CWHL_Invoice.Apply(ukModify);
              end;
            end;
        end;
        Next;
      end;
    end;
    Can_CWHL_Invoice.Click;
  except
    on E: Exception do
      ShowMessage('Have wrong! Can not save data!' + #13 + E.Message);
  end;
end;

procedure TfrmCWHL_Invoice.Qry_CWHL_InvoiceAfterOpen(DataSet: TDataSet);
begin
  Ins_CWHL_Invoice.Enabled:=True;
  if Qry_CWHL_Invoice.RecordCount>0 then
  begin
    Mod_CWHL_Invoice.Enabled:=True;
    Del_CWHL_Invoice.Enabled:=True;
  end;
end;

procedure TfrmCWHL_Invoice.Qry_CWHL_InvoiceBeforeClose(DataSet: TDataSet);
begin
  Ins_CWHL_Invoice.Enabled:=False;
  Mod_CWHL_Invoice.Enabled:=False;
  Del_CWHL_Invoice.Enabled:=False;
  Sav_CWHL_Invoice.Enabled:=False;
  Can_CWHL_Invoice.Enabled:=False;
  DB_CWHL_Invoice.FieldColumns['InvoiceDate'].ButtonStyle:=cbsNone;
end;

procedure TfrmCWHL_Invoice.FormCreate(Sender: TObject);
begin
  with Qry_Temp do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT GETDATE() NDate');
    Open;
    DTP1.Date:=FieldByName('NDate').Value-30;
    DTP2.Date:=FieldByName('NDate').Value;
  end;
end;

procedure TfrmCWHL_Invoice.DB_CWHL_InvoiceGetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if Qry_CWHL_Invoice.FieldByName('YN').AsString='0' then
    AFont.Color:=clRed;
end;

end.

