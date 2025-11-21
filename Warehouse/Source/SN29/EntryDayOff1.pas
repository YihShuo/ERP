unit EntryDayOff1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBTables, DB, StdCtrls, ComCtrls, GridsEh, DBGridEh,
  Buttons;

type
  TEntryDayOff = class(TForm)
    Panel1: TPanel;
    BB2: TBitBtn;
    BB3: TBitBtn;
    BB4: TBitBtn;
    BB5: TBitBtn;
    BB6: TBitBtn;
    BB7: TBitBtn;
    BB1: TBitBtn;
    bbt6: TBitBtn;
    PC1: TPageControl;
    TS3: TTabSheet;
    DBGrid3: TDBGridEh;
    Panel2: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Button1: TButton;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    Edit2: TEdit;
    Check: TCheckBox;
    Edit4: TEdit;
    EnMas: TQuery;
    DS3: TDataSource;
    UpMas: TUpdateSQL;
    EnMasPosition: TStringField;
    EnMasLeaverName: TStringField;
    EnMasStartDate: TDateTimeField;
    EnMasEndDate: TDateTimeField;
    EnMasDeputyName: TStringField;
    EnMasUserID: TStringField;
    EnMasUserDate: TDateTimeField;
    EnMasYN: TStringField;
    CheckBox1: TCheckBox;
    Query1: TQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BB2Click(Sender: TObject);
    procedure BB1Click(Sender: TObject);
    procedure EnMasLeaverNameChange(Sender: TField);
    procedure BB3Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid3GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure BB7Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  EntryDayOff: TEntryDayOff;
  sdate, edate, NDate: Tdate;

implementation

uses main1;

{$R *.dfm}

procedure TEntryDayOff.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if BB5.enabled  then
  begin
    messagedlg('You have to save data Record of report first.',mtwarning,[mbyes],0);
    panel1.Visible:=true;
    action:=canone;
  end else
  begin
    action:=cafree;
  end;
end;

procedure TEntryDayOff.FormDestroy(Sender: TObject);
begin
  EntryDayOff:=nil;
end;

procedure TEntryDayOff.Button1Click(Sender: TObject);
begin
  with EnMas do
  begin
    Active:=False;
    SQL.clear;
    sql.add('select top 100 *  ');
    sql.add('from RK_Leave');
    SQL.Add('where 1=1 and YN=1');
    if CheckBox1.Checked then
    begin
        sql.add('      and convert(smalldatetime,convert(varchar,RK_Leave.USERDATE,111)) between ');
        sql.add('          '''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date) +'''');
    end;
    if Edit2.Text<>'' then
      sql.add('      and RK_Leave.LeaverName like ''%'+Edit2.Text+'%'' ');
    if Edit4.Text<>'' then
      sql.add('      and RK_Leave.DeputyName like ''%'+Edit4.Text+'%'' ');
    if Check.Checked then
      sql.Add('      and RK_Leave.USERID='+''''+main.Edit1.Text+'''');

    Active:=True;
  end;
  BB2.Enabled :=True;
  BB3.Enabled :=True;
  BB4.Enabled :=True;
end;

procedure TEntryDayOff.BB2Click(Sender: TObject);
begin
  with EnMas do
  begin
    requestlive := true;
    cachedupdates := true;
    insert;
  end;
  BB5.Enabled:=True;
  BB6.Enabled:=True;
end;

procedure TEntryDayOff.BB1Click(Sender: TObject);
begin
  Panel2.Visible:=True;
end;

procedure TEntryDayOff.EnMasLeaverNameChange(Sender: TField);
begin
    if Sender.AsString = 'BRIAN' then
    EnMas.FieldByName('Position').AsString := 'CQCN'
  else if Sender.AsString = 'ROLY' then
    EnMas.FieldByName('Position').AsString := 'CQBP'
  else if Sender.AsString = 'TUAN' then
    EnMas.FieldByName('Position').AsString := 'CQK'
  else if Sender.AsString = 'HUONG' then
    EnMas.FieldByName('Position').AsString := 'NVK'
end;

procedure TEntryDayOff.BB3Click(Sender: TObject);
begin
  with EnMas do
  begin
    if fieldbyname('USERID').value=main.edit1.Text then
    begin
      requestlive:=true;
      cachedupdates:=true;
      edit;
      fieldbyname('YN').Value:='0';
    end else
    begin
        showmessage('It is not yours,can not delete.');
    end;
  end;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
end;

procedure TEntryDayOff.BB4Click(Sender: TObject);
begin
  with EnMas do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
end;

procedure TEntryDayOff.BB6Click(Sender: TObject);
begin
  with EnMas do
  begin
    active:=false;
    requestlive:=false;
    cachedupdates:=false;
    active:=true;
  end;
  bb5.enabled:=false;
  bb6.enabled:=false;
end;

procedure TEntryDayOff.BB5Click(Sender: TObject);
var
  y, m, a: string;
  i: integer;
begin

  try
    EnMas.first;
    for i := 1 to EnMas.RecordCount do
    begin
      case EnMas.updatestatus of
        usinserted:
          begin
            if EnMas.fieldbyname('LeaverName').isnull then
            begin
              EnMas.delete;
            end
            else
            begin
              if EnMas.FieldByName('StartDate').AsDateTime > EnMas.FieldByName('EndDate').AsDateTime then
                begin
                  ShowMessage('StartDate khong duoc lon hon EndDate!');
                  Exit;
                end;
              EnMas.edit;
              EnMas.FieldByName('userID').Value := main.edit1.text;
              EnMas.FieldByName('userdate').Value := formatdatetime('yyyy/MM/dd hh:nn:ss', Ndate);
              EnMas.FieldByName('YN').Value := '1';
              upMas.apply(ukinsert);
            end;
          end;
        usmodified:
          begin
            if EnMas.FieldByName('USERID').value <> main.Edit1.Text then
            begin
              showmessage('不是你的，不要亂動。khong phai ban khong duoc tu sua');
            end
            else
            begin
              if EnMas.FieldByName('StartDate').AsDateTime > EnMas.FieldByName('EndDate').AsDateTime then
                begin
                  ShowMessage('StartDate khong duoc lon hon EndDate!');
                  Exit;
                end;
              if EnMas.fieldbyname('YN').value = '0' then
              begin
                EnMas.Edit;
                upMas.apply(ukmodify);
              end else
              begin
                EnMas.Edit;
                upMas.apply(ukmodify);
              end;
            end;
          end;
      end;
      EnMas.next;
    end;
    EnMas.active := false;
    EnMas.cachedupdates := false;
    EnMas.requestlive := false;
    EnMas.active := true;
    bb5.enabled := false;
    bb6.enabled := false;
  except
    Messagedlg('Have wrong, can not save data!', mtwarning, [mbyes], 0);
  end;
end;

procedure TEntryDayOff.FormCreate(Sender: TObject);
var
  i: integer;
  ayear, amonth: string;
begin
  with query1 do
  begin
    active := false;
    sql.Clear;
    sql.add('select getdate() as NDate ');
    active := true;
    NDate := fieldbyname('NDate').Value;
    active := false;
  end;
  DTP1.Date := date - 7;
  DTP2.date := date + 1;
end;

procedure TEntryDayOff.DBGrid3GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if EnMas.FieldByName('YN').value = '0' then
  begin
    DBGrid3.canvas.font.color := clred;
  end;
end;

procedure TEntryDayOff.BB7Click(Sender: TObject);
begin
  Close;
end;

end.
