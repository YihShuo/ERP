unit ST_DONVI1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Data.DB, Data.Win.ADODB, MyADOUpdateSQL,
  MyADOQuery, ComObj, Vcl.Menus;

type
  TST_DONVI = class(TForm)
    Panel4: TPanel;
    BB2: TBitBtn;
    BB4: TBitBtn;
    BB3: TBitBtn;
    BB5: TBitBtn;
    BB6: TBitBtn;
    BB7: TBitBtn;
    BB1: TBitBtn;
    Panel5: TPanel;
    Label14: TLabel;
    Label15: TLabel;
    Query4: TButton;
    DV_MAEdit: TEdit;
    DV_TenEdit: TEdit;
    DBGridEh5: TDBGridEh;
    ST_DONVIQry: TMyADOQuery;
    DS1: TDataSource;
    UpdST_DONVI: TMyADOUpdateSQL;
    ST_DONVIQryDV_MA: TWideStringField;
    ST_DONVIQryDV_TEN: TWideStringField;
    ST_DONVIQryTienSanluongHeso: TFloatField;
    ST_DONVIQryUserID: TStringField;
    ST_DONVIQryUserDate: TDateTimeField;
    ST_DONVIQryYN: TStringField;
    bbt6: TBitBtn;
    ST_DONVIQrysumline: TStringField;
    ST_DONVIQryClzmlb: TStringField;
    Qtemp: TADOQuery;
    Label16: TLabel;
    ClzmlbComb: TComboBox;
    PopupMenu1: TPopupMenu;
    MenuItem1: TMenuItem;
    N1: TMenuItem;
    NhanvienDonvi1: TMenuItem;
    ST_DONVIQryNCount: TIntegerField;
    SoNVCheckbox: TCheckBox;
    ST_DONVIQryFlag: TStringField;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ST_DONVIQryBeforeClose(DataSet: TDataSet);
    procedure ST_DONVIQryAfterOpen(DataSet: TDataSet);
    procedure BB3Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure Query4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bbt6Click(Sender: TObject);
    procedure BB2Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure DBGridEh5DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure MenuItem1Click(Sender: TObject);
    procedure NhanvienDonvi1Click(Sender: TObject);
  private
    { Private declarations }
    procedure InitUpdateSQL();
  public
    { Public declarations }
  end;

var
  ST_DONVI: TST_DONVI;

implementation
   uses DM1, main1, IT_ORGLEVEL1, IT_NHANVIEN_DONVI1, FunUnit;
{$R *.dfm}
procedure TST_DONVI.InitUpdateSQL();
begin
   with UpdST_DONVI.ZModifyCommandObj do
   begin
     SQL.Clear;
     SQL.Add('Update '+DM2.LocalDBName+'.dbo.ST_DONVI');
     SQL.Add('Set');
     SQL.Add('  DV_TEN =:DV_TEN ,');
     SQL.Add('  TienSanluongHeso =:TienSanluongHeso ,');
     SQL.Add('  Sumline =:Sumline, ');
     SQL.Add('  Flag=:Flag,');
     SQL.Add('  UserID =:UserID,');
     SQL.Add('  UserDate =:UserDate');
     SQL.Add('where');
     SQL.Add('  DV_MA =:OLD_DV_MA');
   end;
   //
   with UpdST_DONVI.ZInsertCommandObj do
   begin
     SQL.Clear;
     SQL.Add('Insert into '+DM2.LocalDBName+'.dbo.ST_DONVI');
     SQL.Add('  (DV_MA, DV_TEN, TienSanluongHeso, Sumline, UserID, UserDate, YN) ');
     SQL.Add('Values ');
     SQL.Add('  (:DV_MA, :DV_TEN, :TienSanluongHeso, :Sumline, :UserID, :UserDate, :YN) ');
   end;
   //
   with UpdST_DONVI.DelCommand do
   begin
     SQL.Clear;
     SQL.Add('Delete ');
     SQL.Add('From '+DM2.LocalDBName+'.dbo.ST_DONVI ');
     SQL.Add('where');
     SQL.Add('  DV_MA =:OLD_DV_MA');
   end;
   //
end;
procedure TST_DONVI.MenuItem1Click(Sender: TObject);
begin
  IT_ORGLEVEL:=TIT_ORGLEVEL.Create(self);
  IT_ORGLEVEL.ShowModal;
end;

procedure TST_DONVI.NhanvienDonvi1Click(Sender: TObject);
begin
  IT_NHANVIEN_DONVI:=TIT_NHANVIEN_DONVI.Create(self);
  IT_NHANVIEN_DONVI.ShowModal();
end;

procedure TST_DONVI.BB2Click(Sender: TObject);
begin
  with ST_DONVIQry do
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

procedure TST_DONVI.BB3Click(Sender: TObject);
begin
  //
  with ST_DONVIQry do
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
  //
end;

procedure TST_DONVI.BB4Click(Sender: TObject);
begin
  if ST_DONVIQry.FieldByName('Ncount').Value>0 then
  begin
    showmessage (' Vui long xoa nhan vien don vi truoc!');
    abort;
  end;

  with ST_DONVIQry do
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

procedure TST_DONVI.BB5Click(Sender: TObject);
var i:integer;
begin
  ST_DONVIQry.First;
  for i := 0 to  ST_DONVIQry.RecordCount-1 do
  begin
    case ST_DONVIQry.UpdateStatus of
       usInserted:
       begin
         ST_DONVIQry.Edit;
         ST_DONVIQry.FieldByName('USERID').AsString:=main.UserID;
         ST_DONVIQry.FieldByName('USERDATE').Value:=Date;
         ST_DONVIQry.FieldByName('YN').AsString:='1';
         UpdST_DONVI.Apply(ukInsert);
       end;
       usModified:
       begin
         if ST_DONVIQry.FieldByName('YN').AsString='0' then
         begin
           with Qtemp do
           begin
              active:=false;
              sql.Clear;
              sql.add('insert into BDelRec ');
              sql.add('(TableName ,TNO,CLBH,OldID,DelID,DelDate)');
              sql.add('values (''ST_DONVI'','''+ST_DONVIQry.fieldbyname('DV_MA').Value+'''');
              sql.add(','''','''+ST_DONVIQry.fieldbyname('USERID').Value+''',');
              sql.add(''''+main.UserID+''''+',Getdate())');
              execsql;
              active:=false;
           end;
           UpdST_DONVI.Apply(ukDelete);
         end else
         begin
           ST_DONVIQry.Edit;
           ST_DONVIQry.FieldByName('USERID').AsString:=main.UserID;
           ST_DONVIQry.FieldByName('USERDATE').Value:=Date;
           UpdST_DONVI.Apply(ukModify);
         end;
       end;
    end;
    ST_DONVIQry.Next;
  end;
  //
  ST_DONVIQry.Active:=false;
  ST_DONVIQry.LockType:=ltReadOnly;
  ST_DONVIQry.Active:=true;
  BB5.Enabled:=false;
  BB6.Enabled:=false;
  //
end;

procedure TST_DONVI.BB6Click(Sender: TObject);
begin
  with ST_DONVIQry do
  begin
    Active:=false;
    LockType:=ltReadOnly;
    Active:=true;
  end;
  BB5.Enabled:=false;
  BB6.Enabled:=false;
end;

procedure TST_DONVI.bbt6Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin
  if  ST_DONVIQry.active  then
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
        for   i:=0   to   ST_DONVIQry.fieldcount-1   do
        begin
          eclApp.Cells(1,i+1):=ST_DONVIQry.fields[i].FieldName;
        end;
        ST_DONVIQry.First;
        j:=2;
        while   not   ST_DONVIQry.Eof   do
        begin
          for   i:=0   to  ST_DONVIQry.fieldcount-1  do
          begin
            eclApp.Cells(j,i+1):=ST_DONVIQry.Fields[i].AsString;
          end;
          ST_DONVIQry.Next;
          inc(j);
        end;
        eclapp.columns.autofit;
        showmessage('Succeed');
        eclApp.Visible:=True;
      except
        on  F:Exception   do
          showmessage(F.Message);
      end;
   end;
end;

procedure TST_DONVI.DBGridEh5DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
begin
  if ST_DONVIQry.FieldByName('YN').Value=0 then
  begin
    DBGridEh5.canvas.font.color:=clred;
    DBGridEh5.defaultdrawcolumncell(rect,datacol,column,state);
  end
end;

procedure TST_DONVI.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=CaFree;
end;

procedure TST_DONVI.FormCreate(Sender: TObject);
begin
  InitUpdateSQL();
end;

procedure TST_DONVI.FormDestroy(Sender: TObject);
begin
  ST_DONVI:=nil;
end;

procedure TST_DONVI.Query4Click(Sender: TObject);
begin
  //
  with ST_DONVIQry do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Select * from (');
    SQL.Add('Select ST_DONVI.*,case when IT_ORGLEVEL.Counti>0 then ''Y'' else ''N'' end as Clzmlb,IsNull(IT_NHANVIEN_DONVI.NCount  ,0) as NCount  ');
    SQL.Add('from '+DM2.LocalDBName+'.dbo.ST_DONVI ST_DONVI  ');
    SQL.Add('Left join (Select DV_MA,Count(DV_MA1) as Counti from '+DM2.LocalDBName+'.dbo.IT_ORGLEVEL IT_ORGLEVEL Group by DV_MA) IT_ORGLEVEL on IT_ORGLEVEL.DV_MA=ST_DONVI.DV_MA  ');
    SQL.Add('Left join (Select DV_MA,Count(NV_MA) as NCount from '+DM2.LocalDBName+'.dbo.IT_NHANVIEN_DONVI IT_NHANVIEN_DONVI Group by DV_MA) IT_NHANVIEN_DONVI on IT_NHANVIEN_DONVI.DV_MA=ST_DONVI.DV_MA ');
    SQL.Add('where 1=1 ');
    if DV_MAEdit.Text<>'' then
    SQL.Add('  and ST_DONVI.DV_MA like '''+DV_MAEdit.Text+'%'' ');
    if DV_TENEdit.Text<>'' then
    SQL.Add('  and ST_DONVI.DV_TEN like N''%'+DV_TENEdit.Text+'%'' ');
    SQL.Add(') ST_DONVI where 1=1 ');
    if ClzmlbComb.Text<>'' then
    SQL.Add(' and CLZMLB='''+ClzmlbComb.Text+''' ');
    if SoNVCheckbox.Checked=true then
    SQL.Add(' and NCount>0 ');
    //funcObj.WriteErrorLog(SQL.Text);
    Active:=true;
  end;
  //
end;

procedure TST_DONVI.ST_DONVIQryAfterOpen(DataSet: TDataSet);
begin
  ST_DONVIQry.AfterOpenRecNo(DataSet);
  BB2.Enabled:=true;
  BB3.Enabled:=true;
  BB4.Enabled:=true;
end;

procedure TST_DONVI.ST_DONVIQryBeforeClose(DataSet: TDataSet);
begin
  ST_DONVIQry.BeforeCloseRecNo(DataSet);
end;

end.
