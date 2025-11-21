unit IT_ORGLEVEL1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, Data.DB, Data.Win.ADODB,
  EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.ExtCtrls, MyADOUpdateSQL ,MyADOQuery;

type
  TIT_ORGLEVEL = class(TForm)
    Panel4: TPanel;
    BB2: TBitBtn;
    BB4: TBitBtn;
    BB3: TBitBtn;
    BB5: TBitBtn;
    BB6: TBitBtn;
    BB7: TBitBtn;
    BB1: TBitBtn;
    DBGridEh1: TDBGridEh;
    IT_ORGLEVELQry: TMyADOQuery;
    DS1: TDataSource;
    UpdIT_ORGLEVEL: TMyADOUpdateSQL;
    IT_ORGLEVELQryDV_MA: TWideStringField;
    IT_ORGLEVELQryDV_MA1: TWideStringField;
    IT_ORGLEVELQryUserID: TStringField;
    IT_ORGLEVELQryUserDate: TDateTimeField;
    IT_ORGLEVELQryYN: TStringField;
    IT_ORGLEVELQryDV_TEN: TWideStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure IT_ORGLEVELQryAfterOpen(DataSet: TDataSet);
    procedure BB3Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure IT_ORGLEVELQryBeforeClose(DataSet: TDataSet);
    procedure BB2Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure DBGridEh1EditButtonClick(Sender: TObject);
  private
    { Private declarations }
    procedure InitUpdateSQL();
  public
    { Public declarations }
  end;

var
  IT_ORGLEVEL: TIT_ORGLEVEL;

implementation
   uses DM1, main1, ST_DONVI1, IT_ORGLEVEL_DONVI1, FunUnit;
{$R *.dfm}

procedure TIT_ORGLEVEL.InitUpdateSQL();
begin
   with IT_ORGLEVELQry do
   begin
     SQL.Clear;
     SQL.Add('Select IT_ORGLEVEL.*,ST_DONVI.DV_TEN ');
     SQL.Add('from '+DM2.LocalDBName+'.dbo.IT_ORGLEVEL IT_ORGLEVEL');
     SQL.Add('Left join '+DM2.LocalDBName+'.dbo.ST_DONVI ST_DONVI on ST_DONVI.DV_MA=IT_ORGLEVEL.DV_MA1 ');
     SQL.Add('where IT_ORGLEVEL.DV_MA=:DV_MA ');
   end;
   //
   with UpdIT_ORGLEVEL.ZDeleteCommandObj do
   begin
     SQL.Clear;
     SQL.Add('Delete from '+DM2.LocalDBName+'.dbo.IT_ORGLEVEL');
     SQL.Add('where DV_MA=:OLD_DV_MA');
     SQL.Add('    and  DV_MA1=:OLD_DV_MA1');
   end;

   with UpdIT_ORGLEVEL.ZInsertCommandObj do
   begin
     SQL.Clear;
     SQL.Add('Insert into '+DM2.LocalDBName+'.dbo.IT_ORGLEVEL');
     SQL.Add('  (DV_MA, DV_MA1, UserID, UserDate, YN) ');
     SQL.Add('Values');
     SQL.Add('  (:DV_MA, :DV_MA1, :UserID, :UserDate, :YN) ');
   end;

   with UpdIT_ORGLEVEL.ZModifyCommandObj do
   begin
     SQL.Clear;
     SQL.Add('Update '+DM2.LocalDBName+'.dbo.IT_ORGLEVEL  ');
     SQL.Add(' Set');
     SQL.Add('    DV_MA1=:DV_MA1,');
     SQL.Add('    UserID =:UserID,');
     SQL.Add('    UserDate =:UserDate');
     SQL.Add('where DV_MA=:OLD_DV_MA');
     SQL.Add('    and  DV_MA1=:OLD_DV_MA1');
   end;
   //
end;

procedure TIT_ORGLEVEL.BB2Click(Sender: TObject);
begin
  with IT_ORGLEVELQry do
  begin
    if LockType<>ltBatchOptimistic then
    begin
     Active:=false;
     LockType:=ltBatchOptimistic;
     Active:=true;
    end;
    Insert;
  end;
  DBGridEh1.Columns[0].ButtonStyle:=cbsEllipsis;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
end;

procedure TIT_ORGLEVEL.BB3Click(Sender: TObject);
begin
  //
  with IT_ORGLEVELQry do
  begin
    if LockType<>ltBatchOptimistic then
    begin
     Active:=false;
     LockType:=ltBatchOptimistic;
     Active:=true;
    end;
    Edit;
  end;
  DBGridEh1.Columns[0].ButtonStyle:=cbsEllipsis;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
  //
end;

procedure TIT_ORGLEVEL.BB4Click(Sender: TObject);
begin
  with IT_ORGLEVELQry do
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

procedure TIT_ORGLEVEL.BB5Click(Sender: TObject);
var i:integer;
begin

  IT_ORGLEVELQry.First;
  for i := 0 to  IT_ORGLEVELQry.RecordCount-1 do
  begin
    case IT_ORGLEVELQry.UpdateStatus of
       usInserted:
       begin
         IT_ORGLEVELQry.Edit;
         IT_ORGLEVELQry.FieldByName('DV_MA').AsString:=ST_DONVI.ST_DONVIQry.FieldByName('DV_MA').AsString;
         IT_ORGLEVELQry.FieldByName('USERID').AsString:=main.UserID;
         IT_ORGLEVELQry.FieldByName('USERDATE').Value:=Date;
         IT_ORGLEVELQry.FieldByName('YN').AsString:='1';
         UpdIT_ORGLEVEL.Apply(ukInsert);
       end;
       usModified:
       begin
         if IT_ORGLEVELQry.FieldByName('YN').AsString='0' then
         begin
           UpdIT_ORGLEVEL.Apply(ukDelete);
         end else
         begin
           IT_ORGLEVELQry.Edit;
           IT_ORGLEVELQry.FieldByName('USERID').AsString:=main.UserID;
           IT_ORGLEVELQry.FieldByName('USERDATE').Value:=Date;
           UpdIT_ORGLEVEL.Apply(ukModify);
         end;
       end;
    end;
    IT_ORGLEVELQry.Next;
  end;
  //
  IT_ORGLEVELQry.Active:=false;
  IT_ORGLEVELQry.LockType:=ltReadOnly;
  IT_ORGLEVELQry.Active:=true;
  BB5.Enabled:=false;
  BB6.Enabled:=false;
  DBGridEh1.Columns[0].ButtonStyle:=cbsNone;
  //
end;

procedure TIT_ORGLEVEL.BB6Click(Sender: TObject);
begin
  with IT_ORGLEVELQry do
  begin
    Active:=false;
    LockType:=ltReadOnly;
    Active:=true;
  end;
  DBGridEh1.Columns[0].ButtonStyle:=cbsNone;
  BB5.Enabled:=false;
  BB6.Enabled:=false;
end;

procedure TIT_ORGLEVEL.DBGridEh1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if IT_ORGLEVELQry.FieldByName('YN').Value=0 then
  begin
    DBGridEh1.canvas.font.color:=clred;
    DBGridEh1.defaultdrawcolumncell(rect,datacol,column,state);
  end
end;

procedure TIT_ORGLEVEL.DBGridEh1EditButtonClick(Sender: TObject);
begin
  IT_ORGLEVEL_DONVI:=TIT_ORGLEVEL_DONVI.Create(self);
  IT_ORGLEVEL_DONVI.ShowModal;
end;

procedure TIT_ORGLEVEL.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=CaFree;
end;

procedure TIT_ORGLEVEL.FormCreate(Sender: TObject);
begin
  InitUpdateSQL();
  IT_ORGLEVELQry.Active:=true;
end;

procedure TIT_ORGLEVEL.FormDestroy(Sender: TObject);
begin
  IT_ORGLEVEL:=nil;
end;

procedure TIT_ORGLEVEL.IT_ORGLEVELQryAfterOpen(DataSet: TDataSet);
begin
  //
  IT_ORGLEVELQry.AfterOpenRecNo(DataSet);
  BB2.Enabled:=true;
  BB3.Enabled:=true;
  BB4.Enabled:=true;
  //
end;

procedure TIT_ORGLEVEL.IT_ORGLEVELQryBeforeClose(DataSet: TDataSet);
begin
  IT_ORGLEVELQry.BeforeCloseRecNo(DataSet);
end;

end.
