unit ExpData1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Data.DB, Data.Win.ADODB, MyADOUpdateSQL,
  MyADOQuery, ComObj, Vcl.Menus, Vcl.ComCtrls, Bde.DBTables;

type
  TExpData = class(TForm)
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
    Edt_SoTK: TEdit;
    Edt_MaSP: TEdit;
    DBGridEh1: TDBGridEh;
    Query1: TMyADOQuery;
    DS1: TDataSource;
    bbt6: TBitBtn;
    Qry_Temp: TADOQuery;
    btImport: TBitBtn;
    Query1STT: TIntegerField;
    Query1STK: TStringField;
    Query1SoHD: TStringField;
    Query1TenNuoc: TStringField;
    Query1NgayXH: TDateTimeField;
    Query1NgayDK: TDateTimeField;
    Query1CBYCode: TStringField;
    Query1MaSP: TStringField;
    Query1TenHang: TWideStringField;
    Query1Giay: TStringField;
    Query1TongSL: TBCDField;
    Query1DonGia: TBCDField;
    Query1TriGiaNT: TBCDField;
    Query1TenDoiTac: TStringField;
    Query1NgayKHVC: TDateTimeField;
    Query1DiaDiemDH: TStringField;
    Query1PTVC: TStringField;
    Query1UserID: TStringField;
    Query1UserDate: TDateTimeField;
    Query1YN: TStringField;
    OpenDialog1: TOpenDialog;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    ProgressBar1: TProgressBar;
    Button1: TButton;
    Qry_Import: TADOQuery;
    chkXH: TCheckBox;
    DTP1: TDateTimePicker;
    Label1: TLabel;
    DTP2: TDateTimePicker;
    chkDK: TCheckBox;
    DTP3: TDateTimePicker;
    Label2: TLabel;
    DTP4: TDateTimePicker;
    PopupMenu1: TPopupMenu;
    Delete1: TMenuItem;
    DeleteAll1: TMenuItem;
    Save1: TMenuItem;
    Cancel1: TMenuItem;
    U_Query1: TMyADOUpdateSQL;
    procedure FormDestroy(Sender: TObject);
    procedure Query4Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bbt6Click(Sender: TObject);
    procedure BB7Click(Sender: TObject);
    procedure btImportClick(Sender: TObject);
    procedure Panel3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Delete1Click(Sender: TObject);
    procedure DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure DeleteAll1Click(Sender: TObject);
    procedure Cancel1Click(Sender: TObject);
    procedure Save1Click(Sender: TObject);
  private
    { Private declarations }
    procedure InitUpdateSQL();

  public
    { Public declarations }
  end;

var
  ExpData: TExpData;

implementation
   uses DM1, main1, FunUnit;
{$R *.dfm}


procedure TExpData.InitUpdateSQL;
begin
  with U_Query1.ZDeleteCommandObj do
  begin
    SQL.Clear;
    SQL.Add('Delete ');
    SQL.Add('From '+DM2.LocalDBName+'.dbo.ExpData ');
    SQL.Add('where');
    SQL.Add('  STK =:OLD_STK AND  ');
    SQL.Add('  SoHD =:OLD_SoHD AND ');
    SQL.Add('  NgayXH =:OLD_NgayXH AND');
    SQL.Add('  MaSP =:OLD_MaSP');
  end;
end;

procedure TExpData.BB7Click(Sender: TObject);
begin
  close;
end;

procedure TExpData.bbt6Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin
  if  Query1.active  then
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
        eclApp.Cells[1,1] :='STT';
        eclApp.Cells[1,2] :='Số TK';
        eclApp.Cells[1,3] :='Số hóa đơn';
        eclApp.Cells[1,4] :='Tên nước';
        eclApp.Cells[1,5] :='Ngày xuất hàng';
        eclApp.Cells[1,6] :='Ngày ĐK';
        eclApp.Cells[1,7] :='CBY CODE';
        eclApp.Cells[1,8] :='Mã NPL/SP';
        eclApp.Cells[1,9] :='Tên hàng';
        eclApp.Cells[1,10] :='Giày';
        eclApp.Cells[1,11] :='Tổng số lượng';
        eclApp.Cells[1,12] :='Đơn giá';
        eclApp.Cells[1,13] :='Trị giá NT';
        eclApp.Cells[1,14] :='Tên đối tác';
        eclApp.Cells[1,15] :='Ngày khởi hành vận chuyển';
        eclApp.Cells[1,16] :='Địa điểm dỡ hàng';
        eclApp.Cells[1,17] :='PTVC';
        eclApp.Cells[1,18] :='UserID';
        eclApp.Cells[1,19] :='UserDate';
        eclApp.Cells[1,20] :='YN';
        Query1.First;
        j:=2;
        while   not   Query1.Eof   do
        begin
          for   i:=0   to  Query1.fieldcount-1  do
          begin
            eclApp.Cells(j,i+1):=Query1.Fields[i].AsString;
          end;
          Query1.Next;
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

procedure TExpData.btImportClick(Sender: TObject);
begin
  Panel1.Visible:=true;
end;

procedure TExpData.Button1Click(Sender: TObject);
var ExcelApp,arrData: Variant;
    Rows,Cols,i,j,count,temp: Integer;
    Error: Boolean;
begin
  if not OpenDialog1.Execute then
    abort;
  ExcelApp:=CreateOleObject('Excel.Application');
  ExcelApp.WorkBooks.Open(OpenDialog1.FileName);
  ExcelApp.WorkSheets[1].Activate;
  Rows := ExcelApp.WorkSheets[1].UsedRange.EntireRow.count;
  ProgressBar1.Position:=0;
  ProgressBar1.Max:=Rows-1;
  ProgressBar1.Refresh;

  try
    //-----Format excel-----
    ExcelApp.Columns[5].NumberFormat:='YYYY/MM/DD';
    ExcelApp.Columns[6].NumberFormat:='YYYY/MM/DD';
    ExcelApp.Columns[15].NumberFormat:='YYYY/MM/DD';

    //-----Start import-----
    arrData:= ExcelApp.WorkSheets[1].UsedRange.Value;
    i:=2;
    count:=0;
    temp:=0;

    while (count<17) and (i<=Rows) do
    begin
      try
        if trim(arrData[i,2])='' then
          Inc(count)
        else
        begin
          count:=1;
          with Qry_Temp do
          begin
            Active:=false;
            sql.Clear;
            SQL.Add('Select *');
            SQL.Add('From '+DM2.LocalDBName+'.dbo.ExpData ExpData ');
            SQL.Add('Where STK='''+trim(arrData[i,2])+''' and SoHD='''+trim(arrData[i,3])+''' and NgayXH='''+trim(arrData[i,5])+'''  and MaSP='''+trim(arrData[i,8])+'''');
            Active:=true;
            if Qry_Temp.RecordCount>0 then
            begin
                Qry_Import.Active:=false;
                Qry_Import.sql.Clear;
                Qry_Import.sql.Add('UPDATE '+DM2.LocalDBName+'.dbo.ExpData');
                Qry_Import.sql.Add('SET  ');
                Qry_Import.sql.Add('    STT='''+trim(arrData[i,1])+''' ');
                Qry_Import.sql.Add('    ,TenNuoc='''+trim(arrData[i,4])+''' ');
                Qry_Import.sql.Add('    ,NgayDK='''+trim(arrData[i,6])+''' ');
                Qry_Import.sql.Add('    ,CBYCode='''+trim(arrData[i,7])+''' ');
                Qry_Import.sql.Add('    ,TenHang=N'''+trim(arrData[i,9])+''' ');
                Qry_Import.sql.Add('    ,Giay='''+trim(arrData[i,10])+''' ');
                Qry_Import.sql.Add('    ,TongSL='''+trim(arrData[i,11])+''' ');
                Qry_Import.sql.Add('    ,DonGia='''+trim(arrData[i,12])+''' ');
                Qry_Import.sql.Add('    ,TriGiaNT='''+trim(arrData[i,13])+''' ');
                Qry_Import.sql.Add('    ,TenDoiTac='''+trim(arrData[i,14])+''' ');
                Qry_Import.sql.Add('    ,NgayKHVC='''+trim(arrData[i,15])+''' ');
                Qry_Import.sql.Add('    ,DiaDiemDH='''+trim(arrData[i,16])+''' ');
                Qry_Import.sql.Add('    ,PTVC='''+trim(arrData[i,17])+''' ');
                Qry_Import.SQL.Add('    ,UserID='''+main.UserID+''' ');
                Qry_Import.sql.Add('    ,UserDate=GETDATE()');
                Qry_Import.sql.Add('Where STK='''+trim(arrData[i,2])+''' and SoHD='''+trim(arrData[i,3])+''' and NgayXH='''+trim(arrData[i,5])+'''  and MaSP='''+trim(arrData[i,8])+''' ');
                //funcobj.WriteErrorLog(Qry_Import.SQL.Text);
                Qry_Import.ExecSQL;
            end else
            begin
                Qry_Import.Active:=false;
                Qry_Import.sql.Clear;
                Qry_Import.sql.Add('INSERT INTO '+DM2.LocalDBName+'.dbo.ExpData(STT,STK,SoHD,TenNuoc,NgayXH,NgayDK,CBYCode,MaSP,TenHang,Giay,TongSL,DonGia,TriGiaNT,TenDoiTac,NgayKHVC,DiaDiemDH,PTVC,UserID,UserDate,YN)');
                Qry_Import.sql.Add('VALUES(');
                Qry_Import.SQL.Add('   '''+trim(arrData[i,1])+''','''+trim(arrData[i,2])+''' ,'''+trim(arrData[i,3])+''','''+trim(arrData[i,4])+''',');
                Qry_Import.SQL.Add('   '''+trim(arrData[i,5])+''','''+trim(arrData[i,6])+''' ,'''+trim(arrData[i,7])+''','''+trim(arrData[i,8])+''',');
                Qry_Import.SQL.Add('   N'''+trim(arrData[i,9])+''','''+trim(arrData[i,10])+''' ,'''+trim(arrData[i,11])+''','''+trim(arrData[i,12])+''',');
                Qry_Import.SQL.Add('   '''+trim(arrData[i,13])+''','''+trim(arrData[i,14])+''' ,'''+trim(arrData[i,15])+''','''+trim(arrData[i,16])+''','''+trim(arrData[i,17])+''' ');
                Qry_Import.sql.Add('   ,'''+main.UserID+''' ');
                Qry_Import.sql.Add('   ,GETDATE()');
                Qry_Import.sql.Add('   ,''1'') ');
                //funcobj.WriteErrorLog(Qry_Import.SQL.Text);
                Qry_Import.ExecSQL;
            end;
            Inc(temp);
          end;
          inc(i);
          ProgressBar1.Position:=ProgressBar1.Position+1;
          ProgressBar1.Refresh;
        end;
      except
        Error:=true;
        Break;
      end;
    end;
  finally
    ProgressBar1.Position:=0;
    ProgressBar1.Refresh;
    IntToStr(temp);
    if Error then
      MessageDlg('Error: Ma NPL/SP '+trim(arrData[i,8])+'. Import '+IntToStr(temp)+' rows complete!!!',mtError,[mbOK],0)
    else
    begin
      MessageDlg('OK !!!, Import ('+IntToStr(temp)+') rercords !!', mtConfirmation,[mbOK],0);
      Qry_Import.Close;
      Panel3Click(nil);
    end;
    ExcelApp.ActiveWorkBook.Close(SaveChanges:=0);
    ExcelApp.Quit;
    ExcelApp:=Unassigned;
    arrData:=Unassigned;
  end;
end;

procedure TExpData.Cancel1Click(Sender: TObject);
begin
  with Query1 do
  begin
    Active := false;
    LockType := ltReadOnly;
    Active := true;
  end;
  Save1.Enabled := false;
  Cancel1.Enabled := false;
end;

procedure TExpData.DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
begin
  if Query1.FieldByName('YN').Value=0 then
  begin
    DBGridEh1.canvas.font.color:=clred;
    DBGridEh1.defaultdrawcolumncell(rect,datacol,column,state);
  end
end;

procedure TExpData.Delete1Click(Sender: TObject);
begin
  if (main.UserID<> Query1.FieldByName('UserID').AsString) then
  begin
    Showmessage('It is not yours. Can not delete');
    abort;
  end;
  with Query1 do
  begin
    Active := false;
    LockType := ltBatchOptimistic;
    Active := true;
    Edit;
    FieldByName('YN').Value := '0';
  end;
  Save1.Enabled := true;
  Cancel1.Enabled := true;
end;

procedure TExpData.DeleteAll1Click(Sender: TObject);
var i:integer;
begin
  if (main.UserID<> Query1.FieldByName('UserID').AsString) then
  begin
    Showmessage('It is not yours. Can not delete');
    abort;
  end;
  with Query1 do
  begin
    Active := false;
    LockType := ltBatchOptimistic;
    Active := true;
    Query1.First;
    for i := 0 to Query1.RecordCount-1 do
    begin
      Edit;
      FieldByName('YN').Value := '0';
      Query1.Next;
    end;
  end;
  Save1.Enabled := true;
  Cancel1.Enabled := true;
end;

procedure TExpData.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TExpData.FormCreate(Sender: TObject);
begin
  DTP1.Date:=now-1;
  DTP2.Date:=now-1;
  DTP3.Date:=now-1;
  DTP4.Date:=now-1;
  InitUpdateSQL();
end;

procedure TExpData.FormDestroy(Sender: TObject);
begin
  ExpData:=nil;
end;

procedure TExpData.Panel3Click(Sender: TObject);
begin
  Panel1.Visible:=False;
end;

procedure TExpData.Query4Click(Sender: TObject);
begin
  //
  with Query1 do
  begin
    active:=false;
    sql.Clear;
    sql.Add('Select *   ');
    sql.Add('From '+DM2.LocalDBName+'.dbo.ExpData ExpData ');
    sql.Add('Where 1=1 ');
    if chkXH.Checked then
      sql.Add('and NgayXH between ''' + FormatDateTime('yyyy/MM/dd', DTP1.Date) + ''' and ''' + FormatDateTime('yyyy/MM/dd', DTP2.Date) + ''' ');
    if chkDK.Checked then
      sql.Add('and NgayDK between ''' + FormatDateTime('yyyy/MM/dd', DTP3.Date) + ''' and ''' + FormatDateTime('yyyy/MM/dd', DTP4.Date) + ''' ');
    if Edt_MaSP.Text<>'' then
      sql.Add('and MaSP like '''+Edt_MaSP.Text+'%'' ');
    if Edt_SoTK.Text<>'' then
      sql.Add('and STK like ''%'+Edt_SoTK.Text+'%'' ');
    sql.Add('Order by NgayXH,STT');
    active:=true;
  end;
  //
end;



procedure TExpData.Save1Click(Sender: TObject);
var i:integer;
begin
  Query1.First;
  for i := 0 to Query1.RecordCount-1 do
  begin
    case Query1.UpdateStatus of
      usModified:
      begin
       if (Query1.FieldByName('YN').AsString = '0') then
       begin
          U_Query1.Apply(ukDelete);
       end;
      end;
    end;
    Query1.Next;
  end;
  Query1.Active:=false;
  Query1.LockType:=ltReadOnly;
  Query1.Active:=true;
  Cancel1.Enabled := false;
  Save1.Enabled := false;
end;

end.
