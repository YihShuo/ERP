unit IT_NHANVIEN_DONVI1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, Data.DB, Data.Win.ADODB,
  MyADOQuery, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.ExtCtrls, MyADOUpdateSQL;

type
  TIT_NHANVIEN_DONVI = class(TForm)
    Panel4: TPanel;
    BB2: TBitBtn;
    BB4: TBitBtn;
    BB3: TBitBtn;
    BB5: TBitBtn;
    BB6: TBitBtn;
    BB7: TBitBtn;
    BB1: TBitBtn;
    DBGridEh1: TDBGridEh;
    IT_NHANVIEN_DONVIQry: TMyADOQuery;
    DS1: TDataSource;
    UpdIT_NHANVIEN_DONVI: TMyADOUpdateSQL;
    IT_NHANVIEN_DONVIQryDV_MA: TWideStringField;
    IT_NHANVIEN_DONVIQryNV_MA: TWideStringField;
    IT_NHANVIEN_DONVIQryUserID: TStringField;
    IT_NHANVIEN_DONVIQryUserDate: TDateTimeField;
    IT_NHANVIEN_DONVIQryYN: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure IT_NHANVIEN_DONVIQryAfterOpen(DataSet: TDataSet);
    procedure IT_NHANVIEN_DONVIQryBeforeClose(DataSet: TDataSet);
    procedure BB2Click(Sender: TObject);
    procedure BB3Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
  private
    { Private declarations }
    procedure InitUpdateSQL();
  public
    { Public declarations }
  end;

var
  IT_NHANVIEN_DONVI: TIT_NHANVIEN_DONVI;

implementation
   uses DM1, main1, ST_DONVI1, FunUnit;
{$R *.dfm}

procedure TIT_NHANVIEN_DONVI.InitUpdateSQL();
begin
   //
   with IT_NHANVIEN_DONVIQry do
   begin
     SQL.Clear;
     SQL.Add('Select * ');
     SQL.Add('from '+DM2.LocalDBName+'.dbo.IT_NHANVIEN_DONVI IT_NHANVIEN_DONVI');
     SQL.Add('where IT_NHANVIEN_DONVI.DV_MA=:DV_MA ');
   end;
   //
   with UpdIT_NHANVIEN_DONVI.ZModifyCommandObj do
   begin
     SQL.Clear;
     SQL.Add('Update '+DM2.LocalDBName+'.dbo.IT_NHANVIEN_DONVI');
     SQL.Add('Set ');
     SQL.Add('  NV_MA =:NV_MA,');
     SQL.Add('  UserID =:UserID,');
     SQL.Add('  UserDate =:UserDate');
     SQL.Add('where DV_MA=:OLD_DV_MA');
     SQL.Add('    and  NV_MA=:OLD_NV_MA');
   end;
   with UpdIT_NHANVIEN_DONVI.ZDeleteCommandObj do
   begin
     SQL.Clear;
     SQL.Add('Delete from '+DM2.LocalDBName+'.dbo.IT_NHANVIEN_DONVI');
     SQL.Add('where DV_MA=:OLD_DV_MA');
     SQL.Add('    and  NV_MA=:OLD_NV_MA');
   end;
   //
   with UpdIT_NHANVIEN_DONVI.ZInsertCommandObj do
   begin
     SQL.Clear;
     SQL.Add('Insert into '+DM2.LocalDBName+'.dbo.IT_NHANVIEN_DONVI');
     SQL.Add('  (DV_MA, NV_MA, UserID, UserDate, YN) ');
     SQL.Add('Values');
     SQL.Add('  (:DV_MA, :NV_MA, :UserID, :UserDate, :YN) ');
   end;
   //
end;

procedure TIT_NHANVIEN_DONVI.IT_NHANVIEN_DONVIQryAfterOpen(DataSet: TDataSet);
begin
  IT_NHANVIEN_DONVIQry.AfterOpenRecNo(DataSet);
  BB2.Enabled:=true;
  BB3.Enabled:=true;
  BB4.Enabled:=true;
end;

procedure TIT_NHANVIEN_DONVI.IT_NHANVIEN_DONVIQryBeforeClose(DataSet: TDataSet);
begin
  IT_NHANVIEN_DONVIQry.BeforeCloseRecNo(DataSet);
end;

procedure TIT_NHANVIEN_DONVI.BB2Click(Sender: TObject);
begin
  with IT_NHANVIEN_DONVIQry do
  begin
    if LockType<>ltBatchOptimistic then
    begin
     Active:=false;
     LockType:=ltBatchOptimistic;
     Active:=true;
    end;
    Insert;
  end;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
end;

procedure TIT_NHANVIEN_DONVI.BB3Click(Sender: TObject);
begin
  with IT_NHANVIEN_DONVIQry do
  begin
    if LockType<>ltBatchOptimistic then
    begin
     Active:=false;
     LockType:=ltBatchOptimistic;
     Active:=true;
    end;
    Edit;
  end;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
end;

procedure TIT_NHANVIEN_DONVI.BB4Click(Sender: TObject);
begin
  with IT_NHANVIEN_DONVIQry do
  begin
    if LockType<>ltBatchOptimistic then
    begin
     Active:=false;
     LockType:=ltBatchOptimistic;
     Active:=true;
    end;
    Edit;
    FieldByName('YN').AsString:='0';
  end;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
end;

procedure TIT_NHANVIEN_DONVI.BB5Click(Sender: TObject);
var i:integer;
begin

  IT_NHANVIEN_DONVIQry.First;
  for i := 0 to  IT_NHANVIEN_DONVIQry.RecordCount-1 do
  begin
    case IT_NHANVIEN_DONVIQry.UpdateStatus of
       usInserted:
       begin
         IT_NHANVIEN_DONVIQry.Edit;
         IT_NHANVIEN_DONVIQry.FieldByName('USERID').AsString:=main.UserID;
         IT_NHANVIEN_DONVIQry.FieldByName('USERDATE').Value:=Date;
         IT_NHANVIEN_DONVIQry.FieldByName('YN').AsString:='1';
         UpdIT_NHANVIEN_DONVI.Apply(ukInsert);
       end;
       usModified:
       begin
         if IT_NHANVIEN_DONVIQry.FieldByName('YN').AsString='0' then
         begin
           UpdIT_NHANVIEN_DONVI.Apply(ukDelete);
         end else
         begin
           IT_NHANVIEN_DONVIQry.Edit;
           IT_NHANVIEN_DONVIQry.FieldByName('USERID').AsString:=main.UserID;
           IT_NHANVIEN_DONVIQry.FieldByName('USERDATE').Value:=Date;
           UpdIT_NHANVIEN_DONVI.Apply(ukModify);
         end;
       end;
    end;
    IT_NHANVIEN_DONVIQry.Next;
  end;
  //
  IT_NHANVIEN_DONVIQry.Active:=false;
  IT_NHANVIEN_DONVIQry.LockType:=ltReadOnly;
  IT_NHANVIEN_DONVIQry.Active:=true;
  BB5.Enabled:=false;
  BB6.Enabled:=false;

end;

procedure TIT_NHANVIEN_DONVI.BB6Click(Sender: TObject);
begin
  with IT_NHANVIEN_DONVIQry do
  begin
    Active:=false;
    LockType:=ltReadOnly;
    Active:=true;
  end;
  DBGridEh1.Columns[0].ButtonStyle:=cbsNone;
  BB5.Enabled:=false;
  BB6.Enabled:=false;
end;

procedure TIT_NHANVIEN_DONVI.DBGridEh1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if IT_NHANVIEN_DONVIQry.FieldByName('YN').Value=0 then
  begin
    DBGridEh1.canvas.font.color:=clred;
    DBGridEh1.defaultdrawcolumncell(rect,datacol,column,state);
  end
end;

procedure TIT_NHANVIEN_DONVI.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=CaFree;
end;

procedure TIT_NHANVIEN_DONVI.FormCreate(Sender: TObject);
begin
  InitUpdateSQL();
  IT_NHANVIEN_DONVIQry.Active:=true;
end;

procedure TIT_NHANVIEN_DONVI.FormDestroy(Sender: TObject);
begin
  IT_NHANVIEN_DONVI:=nil;
end;

end.
