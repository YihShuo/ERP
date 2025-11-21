unit ST_CHUCVU1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, Data.DB, MyADOUpdateSQL, Data.Win.ADODB,
  MyADOQuery, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.ExtCtrls, ComObj;

type
  TST_CHUCVU = class(TForm)
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
    CVU_MAEdit: TEdit;
    CVU_TENEdit: TEdit;
    DBGridEh5: TDBGridEh;
    ST_CHUCVUQry: TMyADOQuery;
    DS1: TDataSource;
    UpdST_DONVI: TMyADOUpdateSQL;
    ST_CHUCVUQryCVU_Ma: TWideStringField;
    ST_CHUCVUQryCVU_Ten: TWideStringField;
    ST_CHUCVUQryTienSanluongHeso: TFloatField;
    ST_CHUCVUQryUserID: TStringField;
    ST_CHUCVUQryUserDate: TDateTimeField;
    ST_CHUCVUQryYN: TStringField;
    bbt6: TBitBtn;
    ST_CHUCVUQryCV_MA: TWideStringField;
    ST_CHUCVUQryCV_Ten: TWideStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure BB3Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure ST_CHUCVUQryAfterOpen(DataSet: TDataSet);
    procedure ST_CHUCVUQryBeforeClose(DataSet: TDataSet);
    procedure Query4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bbt6Click(Sender: TObject);
  private
    { Private declarations }
    procedure InitUpdateSQL();
  public
    { Public declarations }
  end;

var
  ST_CHUCVU: TST_CHUCVU;

implementation
   uses DM1, main1, FunUnit;
{$R *.dfm}

procedure TST_CHUCVU.InitUpdateSQL();
begin
   with UpdST_DONVI.ZModifyCommandObj do
   begin
     SQL.Clear;
     SQL.Add('Update '+DM2.LocalDBName+'.dbo.ST_CHUCVU');
     SQL.Add('Set');
     SQL.Add('  TienSanluongHeso =:TienSanluongHeso ,');
     SQL.Add('  UserID =:UserID,');
     SQL.Add('  UserDate =:UserDate');
     SQL.Add('where');
     SQL.Add('  CVU_Ma =:OLD_CVU_Ma');
     SQL.Add('  and CV_Ma =:OLD_CV_Ma');
   end;
   with UpdST_DONVI.ZInsertCommandObj do
   begin
     SQL.Clear;
     SQL.Add('Insert into '+DM2.LocalDBName+'.dbo.ST_CHUCVU');
     SQL.Add('  (CVU_Ma ,CVU_Ten ,CV_MA ,CV_Ten,TienSanluongHeso ,UserID, UserDate, YN) ');
     SQL.Add('Values ');
     SQL.Add('  (:CVU_Ma ,:CVU_Ten ,:CV_MA ,:CV_Ten,:TienSanluongHeso ,:UserID, :UserDate, :YN) ');
   end;
   with UpdST_DONVI.ZDeleteCommandObj do
   begin
     SQL.Clear;
     SQL.Add('Delete from '+DM2.LocalDBName+'.dbo.ST_CHUCVU');
     SQL.Add('where');
     SQL.Add('  CVU_Ma =:OLD_CVU_Ma');
     SQL.Add('  and CV_Ma =:OLD_CV_Ma');
   end;
end;

procedure TST_CHUCVU.BB3Click(Sender: TObject);
begin
  //
  with ST_CHUCVUQry do
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

procedure TST_CHUCVU.BB5Click(Sender: TObject);
var i:integer;
begin
  ST_CHUCVUQry.First;
  for i := 0 to  ST_CHUCVUQry.RecordCount-1 do
  begin
    case ST_CHUCVUQry.UpdateStatus of
       usInserted:
       begin
       end;
       usModified:
       begin
         if ST_CHUCVUQry.FieldByName('YN').AsString='0' then
         begin
         end else
         begin
           ST_CHUCVUQry.Edit;
           ST_CHUCVUQry.FieldByName('USERID').AsString:=main.UserID;
           ST_CHUCVUQry.FieldByName('USERDATE').Value:=Date;
           UpdST_DONVI.Apply(ukModify);
         end;
       end;
    end;
    ST_CHUCVUQry.Next;
  end;
  //
  ST_CHUCVUQry.Active:=false;
  ST_CHUCVUQry.LockType:=ltReadOnly;
  ST_CHUCVUQry.Active:=true;
  BB5.Enabled:=false;
  BB6.Enabled:=false;
  ST_CHUCVUQry.Active:=true;
  //
end;

procedure TST_CHUCVU.BB6Click(Sender: TObject);
begin
  //
  with ST_CHUCVUQry do
  begin
    Active:=false;
    LockType:=ltReadOnly;
    Active:=true;
  end;
  BB5.Enabled:=false;
  BB6.Enabled:=false;
  //
end;

procedure TST_CHUCVU.bbt6Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin
  if  ST_CHUCVUQry.active  then
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
        for   i:=0   to   ST_CHUCVUQry.fieldcount-1   do
        begin
          eclApp.Cells(1,i+1):=ST_CHUCVUQry.fields[i].FieldName;
        end;
        ST_CHUCVUQry.First;
        j:=2;
        while   not   ST_CHUCVUQry.Eof   do
        begin
          for   i:=0   to  ST_CHUCVUQry.fieldcount-1  do
          begin
            eclApp.Cells(j,i+1):=ST_CHUCVUQry.Fields[i].AsString;
          end;
          ST_CHUCVUQry.Next;
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

procedure TST_CHUCVU.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=CaFree;
end;

procedure TST_CHUCVU.FormCreate(Sender: TObject);
begin
  InitUpdateSQL();
end;

procedure TST_CHUCVU.FormDestroy(Sender: TObject);
begin
  ST_CHUCVU:=nil;
end;

procedure TST_CHUCVU.Query4Click(Sender: TObject);
begin
  with ST_CHUCVUQry do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Select * from '+DM2.LocalDBName+'.dbo.ST_CHUCVU ST_CHUCVU where 1=1');
    if CVU_MAEdit.Text<>'' then
    SQL.Add('  and ST_CHUCVU.CVU_MA like '''+CVU_MAEdit.Text+'%'' ');
    if CVU_TENEdit.Text<>'' then
    SQL.Add('  and ST_CHUCVU.CVU_TEN like N''%'+CVU_TENEdit.Text+'%'' ');
    SQL.Add('Order by ST_CHUCVU.CVU_MA');
    Active:=true;
  end;
end;

procedure TST_CHUCVU.ST_CHUCVUQryAfterOpen(DataSet: TDataSet);
begin
  ST_CHUCVUQry.AfterOpenRecNo(DataSet);
  BB3.Enabled:=false;
  if ST_CHUCVUQry.RecordCount>0  then
  begin
    BB3.Enabled:=true;
  end;
end;

procedure TST_CHUCVU.ST_CHUCVUQryBeforeClose(DataSet: TDataSet);
begin
  ST_CHUCVUQry.BeforeCloseRecNo(DataSet);
end;

end.
