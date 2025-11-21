unit IE_LOAIMAY1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GridsEh, DBGridEh, StdCtrls, Buttons, ExtCtrls, DBTables, DB;

type
  TIE_LOAIMAY = class(TForm)
    Panel2: TPanel;
    BB2: TBitBtn;
    BB3: TBitBtn;
    BB4: TBitBtn;
    BB5: TBitBtn;
    BB6: TBitBtn;
    BB7: TBitBtn;
    BB1: TBitBtn;
    BBT1: TBitBtn;
    BBT2: TBitBtn;
    BBT3: TBitBtn;
    BBT4: TBitBtn;
    bbt5: TBitBtn;
    bbt6: TBitBtn;
    btImport: TBitBtn;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    EDIT1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    DBGridEh1: TDBGridEh;
    Query1: TQuery;
    DataSource1: TDataSource;
    UpdateSQL1: TUpdateSQL;
    Query1YYBH: TStringField;
    Query1YWSM: TStringField;
    Query1ZWSM: TStringField;
    Query1GXLB: TStringField;
    Query1USERDate: TDateTimeField;
    Query1USERID: TStringField;
    Query1YN: TStringField;
    procedure Button1Click(Sender: TObject);
    procedure BB1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure BB2Click(Sender: TObject);
    procedure BB3Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  IE_LOAIMAY: TIE_LOAIMAY;

implementation

uses main1,Article_Data1;

{$R *.dfm}

procedure TIE_LOAIMAY.Button1Click(Sender: TObject);
begin
  with Query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select * ');
    sql.add('from IE_LOAIMAY');
    sql.add('where 1=1');
    if edit1.Text <> '' then
      sql.add('and YYBH like '''+edit1.Text+'%'+'''');
    if edit2.Text <> '' then
      sql.add('and YWSM like '''+'%'+edit2.Text+'%'+'''');
    if edit3.Text <> '' then
      sql.add('and YWSM like '''+'%'+edit3.Text+'%'+'''');
    if edit4.Text <> '' then
      sql.add('and YWSM like '''+'%'+edit4.Text+'%'+'''');
    sql.add('order by YYBH desc');
    //funcobj.WriteErrorLog(sql.Text);
    active:=true;
  end;
  BB2.Enabled:=true;
  BB3.Enabled:=true;
  BB4.Enabled:=true;
end;

procedure TIE_LOAIMAY.BB1Click(Sender: TObject);
begin
  Panel1.Visible:=true;
end;

procedure TIE_LOAIMAY.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=CaFree;
end;

procedure TIE_LOAIMAY.FormDestroy(Sender: TObject);
begin
  IE_LOAIMAY:=nil;
end;

procedure TIE_LOAIMAY.BB2Click(Sender: TObject);
begin
  with Query1 do
  begin
    requestlive:=true;
    cachedupdates:=true;
    insert;
  end;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
end;

procedure TIE_LOAIMAY.BB3Click(Sender: TObject);
begin
  with Query1 do
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

procedure TIE_LOAIMAY.BB4Click(Sender: TObject);
begin
  with Query1 do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
end;

procedure TIE_LOAIMAY.BB5Click(Sender: TObject);
var i:integer;
begin
  try
    Query1.first;
    for i:=1 to Query1.RecordCount do
    begin
      case Query1.updatestatus of
      usinserted:
      begin
        if Query1.fieldbyname('YYBH').isnull then
        begin
            Query1.delete;
        end else
        begin
            Query1.Edit;
            Query1.FieldByName('userdate').Value:=date;
            Query1.FieldByName('userID').Value:=main.edit1.text;
            Query1.FieldByName('YN').Value:='1';
            UpdateSQL1.apply(ukinsert);
        end;
      end;
      usmodified:
        begin
          if query1.fieldbyname('YN').value='0'then
          begin
            UpdateSQL1.apply(ukdelete);
          end else
          begin
            if Query1.fieldbyname('YYBH').isnull then
            begin
              Query1.Edit;
              Query1.FieldByName('YYBH').Value:=Query1.FieldByName('YYBH').Value;
              Query1.FieldByName('userdate').Value:=date;
              Query1.FieldByName('userID').Value:=main.edit1.text;
              Query1.FieldByName('YN').Value:='1';
              UpdateSQL1.apply(ukinsert);
            end else
            begin
              query1.edit;
              query1.FieldByName('USERID').Value:=main.edit1.text;
              query1.FieldByName('USERdate').Value:=date;
              UpdateSQL1.apply(ukmodify);
            end;
          end;
        end;
      end;
      query1.next;
    end;
    Query1.active:=false;
    Query1.cachedupdates:=false;
    Query1.requestlive:=false;
    Query1.active:=true;
    BB2.enabled:=true;
    BB3.enabled:=true;
    BB4.enabled:=true;
    BB5.enabled:=false;
    BB6.enabled:=false;
  except
    Messagedlg('Have wrong, can not save!',mtwarning,[mbyes],0);
  end;

end;

procedure TIE_LOAIMAY.BB6Click(Sender: TObject);
begin
  with query1 do
  begin
    active:=false;
    requestlive:=false;
    cachedupdates:=false;
    active:=true;
  end;
  bb5.enabled:=false;
  bb6.enabled:=false;
end;

procedure TIE_LOAIMAY.DBGridEh1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if query1.FieldByName('YN').value='0' then
  begin
    DBGridEh1.canvas.font.color:=clred;
  end;
end;

procedure TIE_LOAIMAY.DBGridEh1DblClick(Sender: TObject);
begin
  if query1.recordcount>0 then
  begin
    with Article_Data.IE2 do
      begin
        edit;
        fieldbyname('LoaiMay').value:=query1.fieldbyname('YWSM').value;
        //fieldbyname('Process_YWPM').value:=query1.fieldbyname('ZWSM').value;
      //  showmessage('Succeed.');
      end;
    query1.Active:=false;
    close;
  end;
end;

procedure CenterFormOnScreen(Form: TForm);
begin
  Form.Left := (Screen.Width - Form.Width) div 2;
  Form.Top := (Screen.Height - Form.Height) div 2;
end;

procedure TIE_LOAIMAY.FormCreate(Sender: TObject);
begin
  CenterFormOnScreen(Self);
end;

end.
