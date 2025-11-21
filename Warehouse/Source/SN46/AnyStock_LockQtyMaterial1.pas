unit AnyStock_LockQtyMaterial1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, DB, DBTables, GridsEh, DBGridEh,ComObj;

type
  TAnyStock_LockQtyMaterial = class(TForm)
    panel1: TPanel;
    btnBB2: TBitBtn;
    btnBB3: TBitBtn;
    btnBB4: TBitBtn;
    btnBB5: TBitBtn;
    btnBB6: TBitBtn;
    btnbbt6: TBitBtn;
    pnl2: TPanel;
    lbl1: TLabel;
    edt1: TEdit;
    btn1: TButton;
    DBGridEh2: TDBGridEh;
    qry1: TQuery;
    strngfldqry1CLBH: TStringField;
    strngfldqry1CKBH: TStringField;
    strngfldqry1GSDH: TStringField;
    qry1Qty: TCurrencyField;
    strngfldqry1Memo: TStringField;
    strngfldqry1UserID: TStringField;
    dtmfldqry1UserDate: TDateTimeField;
    strngfldqry1YN: TStringField;
    strngfldqry1ywpm: TStringField;
    strngfldqry1zwpm: TStringField;
    UpSQL1: TUpdateSQL;
    qryTmp: TQuery;
    dsDS1: TDataSource;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btnBB2Click(Sender: TObject);
    procedure btnBB3Click(Sender: TObject);
    procedure btnBB4Click(Sender: TObject);
    procedure btnBB5Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGridEh2EditButtonClick(Sender: TObject);
    procedure btnbbt6Click(Sender: TObject);
    procedure DBGridEh2GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure btnBB6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AnyStock_LockQtyMaterial: TAnyStock_LockQtyMaterial;
  NDate: Tdate;

implementation

uses main1, CKBHLockQty1;

{$R *.dfm}

procedure TAnyStock_LockQtyMaterial.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if btnBB5.enabled  then
  begin
      messagedlg('You have to save data Record of report first.',mtwarning,[mbyes],0);
      panel1.Visible:=true;
      action:=canone;
  end else
  begin
    action:=cafree;
  end;
end;

procedure TAnyStock_LockQtyMaterial.FormDestroy(Sender: TObject);
begin
  AnyStock_LockQtyMaterial:=nil;
end;

procedure TAnyStock_LockQtyMaterial.btn1Click(Sender: TObject);
begin
  with Qry1 do
  begin
    Active := False;
    SQL.Clear;
    SQL.Add('select KCZL_QtyLock.*,clzl.ywpm,clzl.zwpm from KCZL_QtyLock');
    SQL.Add('left join clzl on KCZL_QtyLock.CLBH=clzl.cldh');
    SQL.Add('where KCZL_QtyLock.YN=1');
    if edt1.Text <> '' then
    begin
      SQL.Add('and CLBH like ');
      sql.add(''''+edt1.Text+'%'+'''');
    end;
    SQL.Add('and GSDH = ''' + main.Edit2.Text + '''');
    SQL.Add('order by CLBH');
    //ShowMessage(sql.Text);
    Active := True;
  end;
  btnbb2.enabled:=true;
  btnbb3.enabled:=true;
  btnbb4.enabled:=true;
  btnbb5.enabled:=false;
  btnbb6.enabled:=false;
  btnbbt6.enabled:=true;
end;

procedure TAnyStock_LockQtyMaterial.btnBB2Click(Sender: TObject);
begin
  with Qry1 do
  begin
    requestlive := true;
    cachedupdates := true;
    insert;
    FieldByName('GSDH').Value := main.edit2.text;
    FieldByName('CLBH').Value := edt1.text;
  end;
  btnBB5.Enabled:=True;
  btnBB6.Enabled:=True;
  DBGridEh2.columns[1].ButtonStyle:=cbsEllipsis;
end;

procedure TAnyStock_LockQtyMaterial.btnBB3Click(Sender: TObject);
begin
  with Qry1 do
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
  btnBB5.Enabled:=true;
  btnBB6.Enabled:=true;
end;

procedure TAnyStock_LockQtyMaterial.btnBB4Click(Sender: TObject);
begin
  with Qry1 do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
  btnBB5.Enabled:=true;
  btnBB6.Enabled:=true;
end;

procedure TAnyStock_LockQtyMaterial.btnBB5Click(Sender: TObject);
var
  y, m, a: string;
  i: integer;
begin
  try
    Qry1.first;
    for i := 1 to Qry1.RecordCount do
    begin
      case Qry1.updatestatus of
        usinserted:
          begin
            if Qry1.fieldbyname('CLBH').isnull and Qry1.fieldbyname('CKBH').isnull  then
            begin
              Showmessage('Vui long nhap du CLBH va CKBH');
              Qry1.delete;
            end
            else
            begin
              Qry1.edit;
              Qry1.FieldByName('GSDH').Value := main.edit2.text;
              Qry1.FieldByName('userID').Value := main.edit1.text;
              Qry1.FieldByName('userdate').Value := formatdatetime('yyyy/MM/dd hh:nn:ss', Ndate);
              Qry1.FieldByName('YN').Value := '1';
              UpSQL1.apply(ukinsert);
            end;
          end;
        usmodified:
          begin
            if Qry1.FieldByName('USERID').value <> main.Edit1.Text then
            begin
              showmessage('不是你的，不要亂動。khong phai ban khong duoc tu sua');
            end
            else
            begin
              if Qry1.fieldbyname('YN').value = '0' then
              begin
                Qry1.Edit;
                UpSQL1.apply(ukmodify);
              end else
              begin
                Qry1.Edit;
                UpSQL1.apply(ukmodify);
              end;
            end;
          end;
      end;
      Qry1.next;
    end;
    Qry1.active := false;
    Qry1.cachedupdates := false;
    Qry1.requestlive := false;
    Qry1.active := true;
    btnbb5.enabled := false;
    btnbb6.enabled := false;
    DBGridEh2.columns[1].ButtonStyle:=cbsnone;
  except
    Messagedlg('Have wrong, can not save data!', mtwarning, [mbyes], 0);
  end;
end;

procedure TAnyStock_LockQtyMaterial.FormCreate(Sender: TObject);
var
  i: integer;
  ayear, amonth: string;
  Col: TColumnEh;
begin
  with QryTmp do
  begin
    active := false;
    sql.Clear;
    sql.add('select getdate() as NDate ');
    active := true;
    NDate := fieldbyname('NDate').Value;
    active := false;
  end;
end;

procedure TAnyStock_LockQtyMaterial.DBGridEh2EditButtonClick(
  Sender: TObject);
begin
  if DBGridEh2.SelectedIndex = 1 then
  begin
    CKBHLockQty := TCKBHLockQty.Create(Self);
    CKBHLockQty.Show;
  end;
end;

procedure TAnyStock_LockQtyMaterial.btnbbt6Click(Sender: TObject);
var   a:string;
      eclApp,WorkBook:olevariant;
      i,j:integer;
begin
  if  qry1.active  then
    begin
    try
      eclApp:=CreateOleObject('Excel.Application');
      WorkBook:=CreateOleObject('Excel.Sheet');
    except
      Application.MessageBox('No Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
      Exit;
    end;
    try
        WorkBook:=eclApp.workbooks.Add;
        for   i:=0   to   qry1.fieldcount-1   do
          begin
              eclApp.Cells(1,i+1):=qry1.fields[i].FieldName;
          end;

        qry1.First;
        j:=2;
        while   not   qry1.Eof   do
          begin
            for   i:=0   to  qry1.fieldcount-1  do
            begin
              eclApp.Cells(j,i+1):=qry1.Fields[i].Value;
            end;
          qry1.Next;
          inc(j);
          end;
       eclapp.columns.autofit;
       eclApp.Visible:=True;
       showmessage('Succeed');
      except
        on   F:Exception   do
          showmessage(F.Message);
      end;
    end;
end;

procedure TAnyStock_LockQtyMaterial.DBGridEh2GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if qry1.FieldByName('YN').value = '0' then
  begin
    DBGridEh2.canvas.font.color := clred;
  end;
end;

procedure TAnyStock_LockQtyMaterial.btnBB6Click(Sender: TObject);
begin
 with qry1 do
  begin
    active:=false;
    cachedupdates:=false;
    requestlive:=false;
    active:=true;
  end;
  btnbb5.enabled:=false;
  btnbb6.enabled:=false;
  DBGridEh2.columns[1].ButtonStyle:=cbsnone;
end;

end.
