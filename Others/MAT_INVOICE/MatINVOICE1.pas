unit MatINVOICE1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, ExtCtrls, Grids, DBGrids,shellapi, StdCtrls,iniFiles,
  Menus, GridsEh, DBGridEh, Buttons, Comobj, ComCtrls;

type
  TMatINVOICE = class(TForm)
    Panel1: TPanel;
    Label8: TLabel;
    Label9: TLabel;
    bbInsert: TBitBtn;
    bbDelete: TBitBtn;
    bbModify: TBitBtn;
    bbSave: TBitBtn;
    bbCancel: TBitBtn;
    bbExit: TBitBtn;
    bbQuery: TBitBtn;
    bbExcel: TBitBtn;
    edtUserID: TEdit;
    edtUserPass: TEdit;
    bbImport: TBitBtn;
    Panel3: TPanel;
    Label1: TLabel;
    edtInvoice: TEdit;
    bbtQuery: TButton;
    DBGrid1: TDBGridEh;
    Database: TDatabase;
    UpMatINVOICE: TUpdateSQL;
    MatINVOICE: TQuery;
    Mat_INVOICE: TDataSource;
    OpenDialog: TOpenDialog;
    MatINVOICEINV_DATE: TDateTimeField;
    MatINVOICEINV_NO: TStringField;
    MatINVOICEBL_NO: TStringField;
    MatINVOICEQty: TStringField;
    MatINVOICEINV_Mat: TStringField;
    MatINVOICESHIP_BY: TStringField;
    MatINVOICEETD: TDateTimeField;
    MatINVOICEETA: TDateTimeField;
    MatINVOICESHIPPING: TStringField;
    MatINVOICEZSJC: TStringField;
    MatINVOICESHIP_BY_USER: TStringField;
    MatINVOICESHIP_TO_USERID: TStringField;
    MatINVOICEREC_DOCS: TStringField;
    MatINVOICEArrival_Notice_Date: TStringField;
    MatINVOICEActual_ETA: TStringField;
    MatINVOICEApplication_DO: TStringField;
    MatINVOICEDO_Amount: TStringField;
    MatINVOICEAcc_Paid_Do: TStringField;
    MatINVOICETK_Date: TStringField;
    MatINVOICEApplication_TAX: TStringField;
    MatINVOICETax_Amount: TStringField;
    MatINVOICEAcc_Paid_Tax: TStringField;
    MatINVOICEArr_Truck_trailer: TStringField;
    MatINVOICETruck_Ton: TStringField;
    MatINVOICEArrival_fty: TStringField;
    MatINVOICEAnnex: TStringField;
    MatINVOICERed_Invoice_Return_To_Fty: TStringField;
    MatINVOICEAcc_Dept_Receipt_Red_Invoice: TStringField;
    MatINVOICECustoms_Acc: TStringField;
    MatINVOICEUserID: TStringField;
    MatINVOICEUserDate: TDateTimeField;
    Qtemp: TQuery;
    MatINVOICEYN: TStringField;
    Check: TCheckBox;
    Label3: TLabel;
    DTP1: TDateTimePicker;
    Label4: TLabel;
    DTP2: TDateTimePicker;
    INV_CK: TCheckBox;
    Label2: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    EngName: TLabel;
    UserName: TLabel;
    Label7: TLabel;
    ShipToUserEdit: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure bbQueryClick(Sender: TObject);
    procedure bbtQueryClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure bbImportClick(Sender: TObject);
    function CheckUserID:boolean;
    procedure bbExitClick(Sender: TObject);
    procedure bbCancelClick(Sender: TObject);
    procedure bbSaveClick(Sender: TObject);
    procedure bbModifyClick(Sender: TObject);
    procedure DatabaseLogin(Database: TDatabase; LoginParams: TStrings);
    procedure edtUserPassKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure bbDeleteClick(Sender: TObject);
    procedure DBGrid1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure bbExcelClick(Sender: TObject);
  private
    AppDir:string;
    DB_Name,DB_PName_ER : String;
    
    { Private declarations }
    procedure InitDatabase();
    procedure ExportDefaultExcel();
    procedure ExportFormatExcel();
    procedure Readini();
  public
    { Public declarations }
  end;

var
  MatINVOICE: TMatINVOICE;

implementation
  uses FunUnit;
{$R *.dfm}
procedure TMatINVOICE.Readini();
var MyIni :Tinifile;
begin
  DB_Name:='LIY_TYBACH';
  DB_PName_ER:='TB_ERP';
  if FileExists(AppDir+'\Mat_INVOICE.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\Mat_INVOICE.ini');
      DB_Name:=MyIni.ReadString('ERP','DB_Name','LIY_TYBACH');
      DB_PName_ER:=MyIni.ReadString('ERP','DB_PName_ER','TB_ERP');
    finally
      MyIni.Free;
    end;
  end;
end;
//
procedure TMatINVOICE.FormCreate(Sender: TObject);
begin

  InitDatabase();//連線資料庫
  funcObj:=TFuncObj.Create;
  funcObj.setParameter(true,AppDir);
  Readini();
  //
  DTP1.Date:=date-60;
  DTP2.date:=date;
  with UpMatINVOICE do
  begin
    DeleteSQL.Clear;
    DeleteSQL.Add('Delete from  '+DB_Name+'.dbo.Mat_INVOICE');
    DeleteSQL.Add('where');
    DeleteSQL.Add('  INV_NO = :OLD_INV_NO and  ');
    DeleteSQL.Add('  INV_Mat = :OLD_INV_Mat ');
    //
    InsertSQL.Clear;
    InsertSQL.Add('Insert into '+DB_Name+'.dbo.Mat_INVOICE');
    InsertSQL.Add('  (INV_DATE, INV_NO, BL_NO, Qty, INV_Mat, SHIP_BY, ETD, ETA, SHIPPING, ZSJC, SHIP_BY_USER, SHIP_TO_USERID, UserID, UserDate, YN)');
    InsertSQL.Add('values ');
    InsertSQL.Add('  (:INV_DATE, :INV_NO, :BL_NO, :Qty, :INV_Mat, :SHIP_BY, :ETD, :ETA, :SHIPPING, :ZSJC, :SHIP_BY_USER , :SHIP_TO_USERID, :UserID, :UserDate, :YN)');
    //
    ModifySQL.Clear;
    ModifySQL.Add('update '+DB_Name+'.dbo.Mat_INVOICE');
    ModifySQL.Add('set  ');
    ModifySQL.Add('  INV_DATE = :INV_DATE,');
    ModifySQL.Add('  BL_NO = :BL_NO,');
    ModifySQL.Add('  Qty = :Qty,');
    ModifySQL.Add('  SHIP_BY = :SHIP_BY,');
    ModifySQL.Add('  ETD = :ETD,');
    ModifySQL.Add('  ETA = :ETA,');
    ModifySQL.Add('  SHIPPING = :SHIPPING,');
    ModifySQL.Add('  ZSJC = :ZSJC,');
    ModifySQL.Add('  SHIP_BY_USER = :SHIP_BY_USER,');
    ModifySQL.Add('  SHIP_TO_USERID = :SHIP_TO_USERID,');
    //
    ModifySQL.Add('  REC_DOCS = :REC_DOCS,');
    ModifySQL.Add('  Arrival_Notice_Date = :Arrival_Notice_Date,');
    ModifySQL.Add('  Actual_ETA = :Actual_ETA,');
    ModifySQL.Add('  Application_DO = :Application_DO,');
    ModifySQL.Add('  DO_Amount = :DO_Amount,');
    ModifySQL.Add('  Acc_Paid_Do = :Acc_Paid_Do,');
    ModifySQL.Add('  TK_Date = :TK_Date,');
    ModifySQL.Add('  Application_TAX = :Application_TAX,');
    ModifySQL.Add('  Tax_Amount = :Tax_Amount,');
    ModifySQL.Add('  Acc_Paid_Tax = :Acc_Paid_Tax,');
    ModifySQL.Add('  Arr_Truck_trailer = :Arr_Truck_trailer,');
    ModifySQL.Add('  Truck_Ton = :Truck_Ton,');
    ModifySQL.Add('  Arrival_fty = :Arrival_fty,');
    ModifySQL.Add('  Annex = :Annex,');
    ModifySQL.Add('  Red_Invoice_Return_To_Fty = :Red_Invoice_Return_To_Fty,');
    ModifySQL.Add('  Acc_Dept_Receipt_Red_Invoice = :Acc_Dept_Receipt_Red_Invoice,');
    ModifySQL.Add('  Customs_Acc = :Customs_Acc,');
    ModifySQL.Add('  UserID = :UserID,');
    ModifySQL.Add('  UserDate = :UserDate');
    ModifySQL.Add('where');
    ModifySQL.Add('  INV_NO = :OLD_INV_NO and  ');
    ModifySQL.Add('  INV_Mat = :OLD_INV_Mat ');
  end;

end;

function TMatINVOICE.CheckUserID():boolean;
var iRes:boolean;
begin
  iRes:=false;
  with Qtemp do
  begin
    active:=false;
    sql.Clear;
    sql.Add('Select USERID,USERNAME,EngName,PWD,getdate() as date from '+DB_PName_ER+'.dbo.Busers');
    sql.Add('where USERID='''+edtUserID.Text+''' and PWD='''+edtUserPass.Text+''' ');
    active:=true;
    if RecordCount>0 then
    begin
      iRes:=true;
      UserName.Caption:=FieldByName('USERNAME').AsString;
      EngName.Caption:=FieldByName('EngName').AsString;
    end;
    active:=false;
  end;
  result:= iRes;
end;

procedure TMatINVOICE.bbQueryClick(Sender: TObject);
begin

  IF CheckUserID()=true then
  begin
    panel3.Visible :=true;
    bbImport.Enabled:=true;
    bbExcel.Enabled:=true;
    edtUserID.Enabled:=false;
    edtUserPass.Enabled:=false;
  end else
  begin
    showmessage('USERID or Password not exact');
  end;

end;


procedure TMatINVOICE.bbtQueryClick(Sender: TObject);
begin

  with MatINVOICE do
  begin
    active:=false;
    sql.clear;
    sql.add(' select * from '+DB_Name+'.dbo.Mat_INVOICE Mat_INVOICE');
    sql.add(' where INV_NO like ''' +EdtInvoice.Text +'%'' ');
    if INV_CK.Checked=true then
    begin
      sql.add('  and convert(smalldatetime,convert(varchar,Mat_INVOICE.INV_DATE,111)) between ');
      sql.add('      '''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date) +'''');
    end;
    if ShipToUserEdit.Text<>'' then
    sql.Add(' and SHIP_TO_USERID like '''+ShipToUserEdit.text+'%'' ');
    if Check.Checked then
    begin
      sql.Add('  and (Mat_INVOICE.USERID='+''''+edtUserID.Text+''' or upper(SHIP_TO_USERID)='''+UpperCase(EngName.Caption)+''') ');
    end;

    active:=true;
  end;
  Panel3.Visible :=false ;
  bbModify.Enabled :=true;
  bbDelete.Enabled :=true;  
end;

procedure TMatINVOICE.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  funcObj.Free;
  Action:=caFree;
end;

procedure TMatINVOICE.FormDestroy(Sender: TObject);
begin
  MatINVOICE:=nil;
end;

procedure TMatINVOICE.bbImportClick(Sender: TObject);
var
  i,j,Shift_Col :integer;
  ExcelApp: Variant;
  CellValue :string;
begin
  if OpenDialog.Execute then
  try
    ExcelApp:=CreateOleObject('Excel.Application');
    ExcelApp.WorkBooks.Open(OpenDialog.FileName);
    ExcelApp.DisplayAlerts := False;
    i:=1;
    j:=3;
    Shift_Col:= 3;
    CellValue :=  ExcelApp.Cells[j,i];
    while CellValue <> '' do
    begin
      Shift_Col :=  Shift_Col +1;
      j:= j+1;
      CellValue:= ExcelApp.Cells[j,i];
    end;
    //
    with MatINVOICE do
    begin
      active:=false;
      sql.clear;
      sql.add(' Select * from '+DB_Name+'.dbo.Mat_INVOICE Mat_INVOICE ');
      sql.add(' where convert(smalldatetime,convert(varchar,Mat_INVOICE.USERDATE,111)) between ');
      sql.add('      '''+formatdatetime('yyyy/MM/dd',Date()-1) +''''+' and '+''''+formatdatetime('yyyy/MM/dd',Date()) +'''');
      sql.Add('  and Mat_INVOICE.USERID='+''''+edtUserID.Text+'''');
      active:=true;
      cachedupdates:=true;
      requestlive:=true;
    end;
    //
    for j:=3 to Shift_Col-1 do
    begin
      MatINVOICE.insert;
      CellValue:=ExcelApp.Cells[j,1];
      if CellValue<>'' then MatINVOICE.FieldByName('INV_DATE').Value:= ExcelApp.Cells[j,1];
      CellValue:=ExcelApp.Cells[j,2];
      if CellValue<>'' then MatINVOICE.FieldByName('INV_NO').Value:= ExcelApp.Cells[j,2];
      CellValue:=ExcelApp.Cells[j,3];
      if CellValue<>'' then MatINVOICE.FieldByName('BL_NO').Value:= ExcelApp.Cells[j,3];
      CellValue:=ExcelApp.Cells[j,4];
      if CellValue<>'' then MatINVOICE.FieldByName('Qty').Value:= ExcelApp.Cells[j,4];
      CellValue:=ExcelApp.Cells[j,5];
      if CellValue<>'' then MatINVOICE.FieldByName('INV_Mat').Value:= ExcelApp.Cells[j,5];
      CellValue:=ExcelApp.Cells[j,6];
      if CellValue<>'' then MatINVOICE.FieldByName('SHIP_BY').Value:= ExcelApp.Cells[j,6];
      CellValue:=ExcelApp.Cells[j,7];
      if CellValue<>'' then MatINVOICE.FieldByName('ETD').Value:= ExcelApp.Cells[j,7];
      CellValue:=ExcelApp.Cells[j,8];
      if CellValue<>'' then MatINVOICE.FieldByName('ETA').Value:= ExcelApp.Cells[j,8];
      CellValue:=ExcelApp.Cells[j,9];
      if CellValue<>'' then MatINVOICE.FieldByName('SHIPPING').Value:= ExcelApp.Cells[j,9];
      CellValue:=ExcelApp.Cells[j,10];
      if CellValue<>'' then MatINVOICE.FieldByName('ZSJC').Value:= ExcelApp.Cells[j,10];
      CellValue:=ExcelApp.Cells[j,11];
      if CellValue<>'' then MatINVOICE.FieldByName('SHIP_BY_USER').Value:= ExcelApp.Cells[j,11];
      CellValue:=ExcelApp.Cells[j,12];
      if CellValue<>'' then MatINVOICE.FieldByName('SHIP_TO_USERID').Value:= ExcelApp.Cells[j,12];
    end;
    ExcelApp.quit;
    bbSave.Enabled:=true;
    bbCancel.Enabled:=true;
  except
    on  E:Exception do
    begin
      ExcelApp.quit;
      Showmessage(E.Message);
    end;
  end;
end;



procedure TMatINVOICE.bbExitClick(Sender: TObject);
begin
  close;
end;

procedure TMatINVOICE.bbCancelClick(Sender: TObject);
begin
  with MatINVOICE do
  begin
    active:=false;
    cachedupdates:=false;
    requestlive:=false;
    active:=true;
  end;
  bbSave.Enabled:=false;
  bbCancel.Enabled:=false;
  bbDelete.Enabled:=true;
  bbModify.Enabled:=true;
end;

procedure TMatINVOICE.bbSaveClick(Sender: TObject);
var i:integer;
begin
  try
    IF CheckUserID()=true then
    BEGIN
      MatINVOICE.first;
      for i:=1 to MatINVOICE.RecordCount do
      begin
        case MatINVOICE.updatestatus of
          usinserted:
          begin
             if (MatINVOICE.FieldByName('INV_NO').IsNull) or (MatINVOICE.FieldByName('INV_Mat').IsNull) then
             begin
               MatINVOICE.delete;
             end else
             begin
               with Qtemp do
               begin
                active:=false;
                sql.clear;
                sql.add(' Select INV_NO from '+DB_Name+'.dbo.Mat_INVOICE');
                sql.add(' where INV_NO = ''' + MatINVOICE.FieldByName('INV_NO').AsString +''' ');
                sql.add(' and INV_Mat = ''' + MatINVOICE.FieldByName('INV_Mat').AsString +''' ');
                active:=true;
               end;
               if Qtemp.RecordCount =0 then
               begin
                  MatINVOICE.Edit;
                  MatINVOICE.FieldByName('USERID').Value:= edtUserID.Text;
                  MatINVOICE.FieldByName('USERDATE').Value:= date;
                  MatINVOICE.FieldByName('YN').Value:='1';
                  MatINVOICE.Post;
                  UpMatINVOICE.Apply(ukInsert);
               end;
             end;
          end;
          usmodified:
          begin
            //if (MatINVOICE.FieldByName('UserID').AsString=edtUserID.Text) or (UpperCase(MatINVOICE.FieldByName('SHIP_TO_USERID').AsString)=UpperCase(EngName.Caption)) then
            //begin
              if MatINVOICE.fieldbyname('YN').value='0'then
              begin
                with Qtemp do
                begin
                    active:=false;
                    sql.Clear;
                    sql.add('insert into '+DB_PName_ER+'.dbo.BDelRec ');
                    sql.add('(TableName ,TNO,CLBH,OldID,DelID,DelDate)');
                    sql.add('values (''Mat_INVOICE'','''+MatINVOICE.fieldbyname('INV_NO').Value+'''');
                    sql.add(','''+MatINVOICE.fieldbyname('INV_Mat').Value+''','''+MatINVOICE.fieldbyname('USERID').Value+''''+',');
                    sql.add(''''+edtUserID.Text+''''+',Getdate())');
                    execsql;
                    active:=false;
                end;
                UpMatINVOICE.Apply(ukDelete);
              end else
              begin
                MatINVOICE.Edit;
                MatINVOICE.FieldByName('UserID').Value:=edtUserID.Text;
                MatINVOICE.FieldByName('UserDate').Value:=Date();
                MatINVOICE.Post;
                UpMatINVOICE.Apply(ukModify);
              end;
            //end else
            //begin
               //showmessage('Not yours');
            //end;
          end;
        end;
        MatINVOICE.Next;
      end;
      MatINVOICE.active:=false;
      MatINVOICE.cachedupdates:=false;
      MatINVOICE.requestlive:=false;
      MatINVOICE.active:=true;
      bbSave.Enabled:=false;
      bbCancel.Enabled:=false;
      bbDelete.Enabled:=true;
      bbModify.Enabled:=true;
      showmessage('Succeed');
      //bbtQuery.Click();
    end else
    begin
      showmessage('USERID or Password not exact');
    end;
  except
    Messagedlg('Have wrong,can not save!',mtwarning,[mbyes],0);
  end;
end;

procedure TMatINVOICE.bbModifyClick(Sender: TObject);
begin
  with MatINVOICE do
  begin
    cachedupdates:=true;
    requestlive:=true;
    edit;
  end;
  bbSave.Enabled:=true;
  bbCancel.Enabled:=true;
end;
//
procedure TMatINVOICE.ExportDefaultExcel();
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin
  if (MatINVOICE.active) then
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
      for i:=0 to MatINVOICE.fieldcount-1 do
      begin
          eclApp.Cells(1,i+1):=MatINVOICE.fields[i].FieldName;
      end;

      MatINVOICE.First;
      j:=2;
      while not MatINVOICE.Eof do
      begin
        for i:=0 to MatINVOICE.fieldcount-1  do
        begin
          eclApp.Cells(j,i+1):=MatINVOICE.Fields[i].Value;
        end;
        MatINVOICE.Next;
        inc(j);
      end;

      eclapp.columns.autofit;
      showmessage('Succeed');
      eclApp.Visible:=True;
    except
       on   F:Exception   do
       begin
         eclApp.quit;
         showmessage(F.Message);
       end;
    end;
  end;
end;

procedure TMatINVOICE.ExportFormatExcel();
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin
   if(not DirectoryExists(AppDir+'Additional\'))  then ForceDirectories(AppDir+'Additional\');
   CopyFile(Pchar('\\192.168.40.9\liy_erp\Additional\Mat_Invoice.xls'),Pchar(AppDir+'Additional\Mat_Invoice.xls'),false);
   if FileExists(AppDir+'Additional\Mat_Invoice.xls') then
   begin
    if  MatINVOICE.active  then
    begin
      try
        eclApp:=CreateOleObject('Excel.Application');
        WorkBook:=CreateOleObject('Excel.Sheet');
      except
        Application.MessageBox('No Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
        Exit;
      end;
       try
          eclApp.WorkBooks.Open(AppDir+'Additional\Mat_Invoice.xls');
          MatINVOICE.First;
          j:=3;
          while not MatINVOICE.Eof do
          begin
            for i:=0 to MatINVOICE.fieldcount-1  do
            begin
              eclApp.Cells(j,i+1):=MatINVOICE.Fields[i].Value;
            end;
            MatINVOICE.Next;
            inc(j);
          end;
          showmessage('Succeed');
          eclApp.Visible:=True;
      except
       on   F:Exception   do
       begin
         eclApp.quit;
         showmessage(F.Message);
       end;
      end;
    end;
   end else
   begin
     showmessage(AppDir+'Additional\Mat_Invoice.xls not exists');
   end;
end;
//資料庫連線
procedure TMatINVOICE.DatabaseLogin(Database: TDatabase;
  LoginParams: TStrings);
var textfilevar:textfile;
    ad,i:integer;
    tempstr:string;
    susername,spassword,sline,pp:string;
begin
  assignfile(textfilevar,AppDir+'datalogin.txt');
  reset(textfilevar);
  readln(textfilevar,pp);
  // 密碼加密測試
  sline:='';
  ad:=strtoint(copy(pp,0,1)); //取得解密字元
  for i:=2 to (length(pp)) do //解密迴圈
  begin
    tempstr:=copy(pp,i,1);
    sline:=sline+chr(ord(tempstr[1])-ad-100);
  end;
  closefile(textfilevar);
  susername:=trim(copy(sline,0,pos('=',sline)-1));
  spassword:=trim(copy(sline,pos('=',sline)+1,maxint));
  loginparams.Values['user name']:=susername;
  loginparams.values['password']:=spassword;
  pp:=sline;
  ad:=dayofweek(now); //取得加密字元
  sline:=inttostr(ad);
  for i:=1 to (length(pp)) do //加密迴圈
  begin
    tempstr:=copy(pp,i,1);
    sline:=sline+chr(ord(tempstr[1])+ad+100);
  end;
  assignfile(textfilevar,AppDir+'datalogin.txt');
  Rewrite(textfilevar);
  writeln(textfilevar,sline);
  closefile(textfilevar);
end;

procedure TMatINVOICE.InitDatabase();
var sline:string;
    databasevar:textfile;
begin
  AppDir:=ExtractFilePath(ParamStr(0));
  Database.Connected:=false;
  assignfile(databasevar,AppDir+'database.txt');
  reset(databasevar);
  readln(databasevar,sline);

  closefile(databasevar);

  Database.aliasname:=sline;
  Database.Connected:=true;
end;
procedure TMatINVOICE.edtUserPassKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=13 then
  begin
    bbQuery.Click;
  end;
end;

procedure TMatINVOICE.bbDeleteClick(Sender: TObject);
begin
  with MatINVOICE do
  begin
    cachedupdates:=true;
    requestlive:=true;
    edit;
    fieldbyname('YN').Value:='0';
  end;
  bbSave.Enabled:=true;
  bbCancel.Enabled:=true;
end;

procedure TMatINVOICE.DBGrid1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if MatINVOICE.FieldByName('YN').value='0' then
  begin
    DBGrid1.canvas.font.color:=clred;
  end;
end;

procedure TMatINVOICE.bbExcelClick(Sender: TObject);
begin
  if  Messagedlg(Pchar('Format Excel Export?'),mtInformation,[mbNo,mbYes],0)=mrYes then
  begin
    ExportFormatExcel();
  end else
  begin
    ExportDefaultExcel();
  end;
end;

end.
