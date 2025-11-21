unit chamcong_bonus1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,Dateutils, ComObj, Data.DB,
  Data.Win.ADODB, IniFiles, DBGridEhImpExp, ShellAPI, MyADOUpdateSQL, MyADOQuery,
  Vcl.Menus ;

type
  TChamCong_Bonus = class(TForm)
    Panel4: TPanel;
    BB2: TBitBtn;
    BB4: TBitBtn;
    BB3: TBitBtn;
    BB5: TBitBtn;
    BB6: TBitBtn;
    BB7: TBitBtn;
    BB1: TBitBtn;
    bbt6: TBitBtn;
    Panel3: TPanel;
    Label4: TLabel;
    Label5: TLabel;
    NVMa: TLabel;
    Label11: TLabel;
    Query3: TButton;
    CBX1: TComboBox;
    CBX2: TComboBox;
    NV_MAEdit: TEdit;
    DonviCombo: TComboBox;
    ImportBtnHRM: TBitBtn;
    CalBtnHRM: TBitBtn;
    DONVIBtn: TButton;
    ChuvuBtn: TButton;
    Qtemp: TADOQuery;
    DS1: TDataSource;
    SaveDialog1: TSaveDialog;
    DBGridEh1: TDBGridEh;
    DieukienComb: TComboBox;
    Label16: TLabel;
    Upd_HRMQry: TMyADOUpdateSQL;
    HRMQry: TMyADOQuery;
    HRMQryT_MA: TWideStringField;
    HRMQryNV_MA: TWideStringField;
    HRMQryNV_Ten: TWideStringField;
    HRMQryDV_MA: TWideStringField;
    HRMQryDV_Ten: TWideStringField;
    HRMQryNV_NGAYVAO: TDateTimeField;
    HRMQryCVU_MA: TWideStringField;
    HRMQryCVU_TEN: TWideStringField;
    HRMQryCV_MA: TWideStringField;
    HRMQryCV_TEN: TWideStringField;
    HRMQryNV_THOIVIEC: TBooleanField;
    HRMQryTV_NgayThoiVIec: TDateTimeField;
    HRMQryL_SONGAYCONGTRONGTHANG: TFloatField;
    HRMQrySONGAYCONG: TFloatField;
    HRMQryL_NGHIDQ: TFloatField;
    HRMQryL_NGHILE: TFloatField;
    HRMQryL_NGHIP: TFloatField;
    HRMQryL_NGHIR: TFloatField;
    HRMQryL_NGHIRO: TFloatField;
    HRMQryL_NGHIOM: TFloatField;
    HRMQryL_NGHIST: TFloatField;
    HRMQryL_NGHITS: TFloatField;
    HRMQryL_NGHIO: TFloatField;
    HRMQryL_NGHINO: TFloatField;
    HRMQryL_NGHIKHAMTHAI: TFloatField;
    HRMQryL_NGHIDS: TFloatField;
    HRMQryL_NGHIKHHGD: TFloatField;
    HRMQryStaffVNPrice: TLargeintField;
    HRMQryHESONGAYCONG: TFloatField;
    HRMQryHESOSANLUONG: TFloatField;
    HRMQryHESODONVI: TFloatField;
    HRMQryHESOCVUVU: TFloatField;
    HRMQryTIENVUOTSANLUONG: TLargeintField;
    HRMQryUserID: TStringField;
    HRMQryUserDate: TDateTimeField;
    HRMQryYN: TStringField;
    HRMQryERP_CV_MA: TWideStringField;
    HRMQrySort: TIntegerField;
    HRMQryRN: TLargeintField;
    HRMQryL_NGHIPD: TFloatField;
    HRMQryL_NGHIQS: TFloatField;
    HRMQryL_NGHITNLD: TFloatField;
    HRMQryL_NGHITS1: TFloatField;
    HRMQryL_NGHINo1: TFloatField;
    HRMQryL_NGHICO: TFloatField;
    HRMQryDONVI_Flag: TStringField;
    HRMQryL_NGHIPt: TFloatField;
    HRMQryL_NGHICC: TFloatField;
    BB10: TBitBtn;
    HRMQryGSBH: TStringField;
    HRMQryCalUserID: TStringField;
    HRMQryCalUserDate: TDateTimeField;
    HRMQryL_NGHINo2: TFloatField;
    HRMQryModUserID: TStringField;
    HRMQryModUserDate: TDateTimeField;
    HRMQryL_NGHINo3: TFloatField;
    HRMQryL_NGHINo4: TFloatField;
    HRMQryL_NGHINo5: TFloatField;
    HRMQryL_NGHINo6: TFloatField;
    HRMQryL_NGHINo7: TFloatField;
    HRMQryL_NGHIF0: TFloatField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Query3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CalBtnHRMClick(Sender: TObject);
    procedure DONVIBtnClick(Sender: TObject);
    procedure ChuvuBtnClick(Sender: TObject);
    procedure ImportBtnHRMClick(Sender: TObject);
    procedure bbt6Click(Sender: TObject);
    procedure HRMQryAfterOpen(DataSet: TDataSet);
    procedure BB4Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure BB10Click(Sender: TObject);
    procedure HRMQryBeforeClose(DataSet: TDataSet);
    procedure BB3Click(Sender: TObject);
    procedure HRMQryL_NGHIDQChange(Sender: TField);
    procedure HRMQryL_NGHILEChange(Sender: TField);
    procedure HRMQryL_NGHIPChange(Sender: TField);
    procedure HRMQryL_NGHIRChange(Sender: TField);
    procedure HRMQryL_NGHIROChange(Sender: TField);
    procedure HRMQryL_NGHIOMChange(Sender: TField);
    procedure HRMQryL_NGHIKHAMTHAIChange(Sender: TField);
    procedure HRMQryL_NGHIDSChange(Sender: TField);
    procedure HRMQryL_NGHIKHHGDChange(Sender: TField);
    procedure HRMQryL_NGHIPDChange(Sender: TField);
    procedure HRMQryL_NGHIQSChange(Sender: TField);
    procedure HRMQryL_NGHITNLDChange(Sender: TField);
    procedure HRMQryL_NGHITS1Change(Sender: TField);
    procedure HRMQryL_NGHINo1Change(Sender: TField);
    procedure HRMQryL_NGHICOChange(Sender: TField);
    procedure HRMQryL_NGHIPtChange(Sender: TField);
    procedure HRMQryL_NGHICCChange(Sender: TField);
    procedure HRMQryL_NGHINo2Change(Sender: TField);
    procedure HRMQryHESOCVUVUChange(Sender: TField);
  private
    AppDir:string;
    flag: boolean;
    { Private declarations }
    procedure ReadIni();
    procedure CreateHRM_Connect();
    procedure CreateHRM_DisConnect();
    procedure ExportExcel();
    procedure InitUpdateSQL();
    procedure ExportFormatExcel();
  public
    { Public declarations }
    HrmsDBIP,HrmsDBUser,HrmsDBPass,HrmsDBName:String;
    L_NGHIDQ ,L_NGHIR1,L_NGHIP ,L_NGHIR, L_NGHIRO, L_NGHIOM, L_NGHIST, L_NGHITS: String;
    L_NGHIO, L_NGHINO, L_NGHIKHAMTHAI, L_NGHIDS, L_NGHIKHHGD, L_NGHIPD, L_NGHIQS, L_NGHITNLD: string;
    L_NGHITS1, L_NGHINo1, L_NGHICO, L_NGHIPt, L_NGHICC, L_NGHINo2: string;
    HESOCVUVU: string;
  end;

var
  ChamCong_Bonus: TChamCong_Bonus;

implementation
   uses DM1, main1, HRMSys1, ST_DONVI1, ST_CHUCVU1, Chamcong_bonus_print1, FunUnit;
{$R *.dfm}
//
procedure TChamCong_Bonus.InitUpdateSQL();
begin
  //
  with Upd_HRMQry.ZModifyCommandObj do
  begin
    SQL.Clear;
    SQL.Add('Update '+DM2.LocalDBName+'.dbo.IT_NHANVIENCHAMCONG  ');
    SQL.Add('Set ');
    SQL.Add(' HESONGAYCONG =:HESONGAYCONG,');
    SQL.Add(' TIENVUOTSANLUONG =:TIENVUOTSANLUONG,');
    SQL.Add(' UserID =:UserID,');
    SQL.Add(' UserDate =:UserDate,');
    SQL.Add(' ModUserID =:ModUserID,');
    SQL.Add(' ModUserDate =:ModUserDate');
    SQL.Add('where');
    SQL.Add('  T_MA =:OLD_T_MA and ');
    SQL.Add('  GSBH =:OLD_GSBH and ');
    SQL.Add('  NV_MA =:OLD_NV_MA ');
  end;
  //
  with Upd_HRMQry.ZDeleteCommandObj do
  begin
    SQL.Clear;
    SQL.Add('Delete ');
    SQL.Add('From '+DM2.LocalDBName+'.dbo.IT_NHANVIENCHAMCONG ');
    SQL.Add('where');
    SQL.Add('  T_MA =:OLD_T_MA and ');
    SQL.Add('  GSBH =:OLD_GSBH and ');
    SQL.Add('  NV_MA =:OLD_NV_MA ');
  end;
  //
end;
//
procedure TChamCong_Bonus.ReadIni();
var MyIni :TInifile;
begin
  if FileExists(AppDir+'\ComName.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ComName.ini');
      HrmsDBIP:=MyIni.ReadString('HRMS','IP','192.168.23.12');
      HrmsDBName:=MyIni.ReadString('HRMS','DataBase','P0104-TYXUAN');
      HrmsDBUser:=MyIni.ReadString('HRMS','User','hrms');
      HrmsDBPass:=MyIni.ReadString('HRMS','Pass','123456');
      //
    finally
      MyIni.Free;
    end;
  end;
end;

procedure TChamCong_Bonus.ExportExcel();
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin
  if  HRMQry.active  then
  begin
    try
      eclApp:=CreateOleObject('Excel.Application');
      WorkBook:=CreateOleObject('Excel.Sheet');
    except
      Application.MessageBox('No Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
      Exit;
    end;
    if(not DirectoryExists(AppDir+'Additional\'))  then ForceDirectories(AppDir+'Additional\');
     CopyFile(Pchar('\\'+DM2.ERPDBIP+'\liy_erp\Additional\ProductionBonus_SN11_NoFormat.xlsx'),Pchar(AppDir+'Additional\ProductionBonus_SN11_NoFormat.xlsx'),false);
     if FileExists(AppDir+'Additional\ProductionBonus_SN11_NoFormat.xlsx') then
     begin
      try

        eclApp.WorkBooks.Open(AppDir+'Additional\ProductionBonus_SN11_NoFormat.xlsx');
        for   i:=0   to   HRMQry.fieldcount-1   do
        begin

          eclApp.Cells(1,i+1):=HRMQry.fields[i].FieldName;
        end;
        HRMQry.First;
        j:=2;
        while   not   HRMQry.Eof   do
        begin
          for   i:=0   to  HRMQry.fieldcount-1-6  do
          begin
            eclApp.Cells(j,i+1):=HRMQry.Fields[i].AsString;
          end;
          HRMQry.Next;
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
end;
procedure TChamCong_Bonus.BB10Click(Sender: TObject);
begin
  Chamcong_bonus_print:=TChamcong_bonus_print.Create(self);
  Chamcong_bonus_print.quickrep1.preview;
  Chamcong_bonus_print.free;
end;

procedure TChamCong_Bonus.BB3Click(Sender: TObject);
begin
  with HRMQry do
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

procedure TChamCong_Bonus.BB4Click(Sender: TObject);
begin
  with HRMQry do
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

procedure TChamCong_Bonus.BB5Click(Sender: TObject);
var i:integer;
    Old_TIENVUOTSANLUONG,TIENVUOTSANLUONG:integer;
begin
  HRMQry.First;
  for i := 0 to  HRMQry.RecordCount-1 do
  begin
    case HRMQry.UpdateStatus of
       usInserted:
       begin
       end;
       usModified:
       begin
         if HRMQry.FieldByName('YN').AsString='0' then
         begin
           with Qtemp do
           begin
              active:=false;
              sql.Clear;
              sql.add('insert into BDelRec ');
              sql.add('(TableName ,TNO,CLBH,OldID,DelID,DelDate)');
              sql.add('values (''NHANVIEN'','''+HRMQry.fieldbyname('T_MA').Value+'_'+HRMQry.fieldbyname('NV_MA').Value+'''');
              sql.add(','''','''+HRMQry.fieldbyname('USERID').Value+''',');
              sql.add(''''+main.UserID+''''+',Getdate())');
              execsql;
              active:=false;
           end;
           Upd_HRMQry.Apply(ukDelete);
         end else
         begin
           if VarIsNull(HRMQry.FieldByName('TIENVUOTSANLUONG').OldValue)=true then  Old_TIENVUOTSANLUONG:=0 else Old_TIENVUOTSANLUONG:=HRMQry.FieldByName('TIENVUOTSANLUONG').OldValue;
           if VarIsNull(HRMQry.FieldByName('TIENVUOTSANLUONG').value)=true then  TIENVUOTSANLUONG:=0 else TIENVUOTSANLUONG:=HRMQry.FieldByName('TIENVUOTSANLUONG').Value;
           //
           HRMQry.Edit;
           if TIENVUOTSANLUONG<>Old_TIENVUOTSANLUONG then  //獎金修改  modify column TIENVUOTSANLUONG
           begin
             if ((HRMQry.FieldByName('ModUSERID').AsString='') or (HRMQry.FieldByName('ModUSERID').AsString=main.UserID)) then
             begin
               HRMQry.FieldByName('ModUSERID').AsString:=main.UserID;
               HRMQry.FieldByName('ModUSERDATE').Value:=Date;
             end else
             begin
               Showmessage('It''s not yours,it can''t modify');
               abort;
             end;
           end else   //其他修改  modify other column
           begin
             HRMQry.FieldByName('USERID').AsString:=main.UserID;
             HRMQry.FieldByName('USERDATE').Value:=Date;
           end;
           Upd_HRMQry.Apply(ukModify);
         end;
       end;
    end;
    if flag=true then
    begin
      with QTemp do
        begin
          active:=false;
          sql.Clear;
          SQL.Add('Update '+DM2.LocalDBName+'.dbo.IT_NHANVIENCHAMCONG  ');
          SQL.Add('Set ');
          if L_NGHIDQ <>'' then
            SQL.Add(' L_NGHIDQ ='''+L_NGHIDQ+''',');
          if L_NGHIR1 <>'' then
            SQL.Add(' L_NGHIR1 ='''+L_NGHIR1+''',');
          if L_NGHIP <>'' then
            SQL.Add(' L_NGHIP ='''+L_NGHIP+''',');
          if L_NGHIR <> '' then
            SQL.Add(' L_NGHIR ='''+L_NGHIR+''',');
          if L_NGHIRO <> '' then
            SQL.Add(' L_NGHIRO ='''+L_NGHIRO+''',');
          if L_NGHIOM <> '' then
            SQL.Add(' L_NGHIOM ='''+L_NGHIOM+''',');
          if L_NGHIST <> '' then
            SQL.Add(' L_NGHIST ='''+L_NGHIST+''',');
          if L_NGHITS <> '' then
            SQL.Add(' L_NGHITS ='''+L_NGHITS+''',');
          if L_NGHIO <> '' then
            SQL.Add(' L_NGHIO ='''+L_NGHIO+''',');
          if L_NGHINO <> '' then
            SQL.Add(' L_NGHINO ='''+L_NGHINO+''',');
          if L_NGHIKHAMTHAI <> '' then
            SQL.Add(' L_NGHIKHAMTHAI ='''+L_NGHIKHAMTHAI+''',');
          if L_NGHIDS <> '' then
            SQL.Add(' L_NGHIDS ='''+L_NGHIDS+''',');
          if L_NGHIKHHGD <> '' then
            SQL.Add(' L_NGHIKHHGD ='''+L_NGHIKHHGD+''',');
          if L_NGHIPD <> '' then
            SQL.Add(' L_NGHIPD ='''+L_NGHIPD+''',');
          if L_NGHIQS <> '' then
            SQL.Add(' L_NGHIQS ='''+L_NGHIQS+''',');
          if L_NGHITNLD <> '' then
            SQL.Add(' L_NGHITNLD ='''+L_NGHITNLD+''',');
          if L_NGHITS1 <> '' then
            SQL.Add(' L_NGHITS1 ='''+L_NGHITS1+''',');
          if L_NGHINo1 <> '' then
            SQL.Add(' L_NGHINo1 ='''+L_NGHINo1+''',');
          if L_NGHICO <> '' then
            SQL.Add(' L_NGHICO ='''+L_NGHICO+''',');
          if L_NGHIPt <> '' then
            SQL.Add(' L_NGHIPt ='''+L_NGHIPt+''',');
          if L_NGHICC <> '' then
            SQL.Add(' L_NGHICC ='''+L_NGHICC+''',');
          if L_NGHINo2 <> '' then
            SQL.Add(' L_NGHINo2 ='''+L_NGHINo2+''',');
          if HESOCVUVU <> '' then
            SQL.Add(' HESOCVUVU ='''+HESOCVUVU+''',');
          SQL.Add(' UserID ='''+main.UserID+''',');
          SQL.Add(' UserDate = GetDate()');
          SQL.Add('where');
          SQL.Add('  T_MA ='''+HRMQry.FieldByName('T_MA').Value+''' and ');
          SQL.Add('  GSBH ='''+HRMQry.FieldByName('GSBH').Value+'''and ');
          SQL.Add('  NV_MA ='''+HRMQry.FieldByName('NV_MA').Value+''' ');
          //funcobj.WriteErrorLog(sql.Text);
          execsql;
        end;
    end;
    HRMQry.Next;
  end;
  //
  HRMQry.Active:=false;
  HRMQry.LockType:=ltReadOnly;
  HRMQry.Active:=true;
  BB5.Enabled:=false;
  BB6.Enabled:=false;
  flag:=false;
  //
end;

procedure TChamCong_Bonus.BB6Click(Sender: TObject);
begin
  with HRMQry do
  begin
    Active:=false;
    LockType:=ltReadOnly;
    Active:=true;
  end;
  BB5.Enabled:=false;
  BB6.Enabled:=false;
end;

procedure TChamCong_Bonus.bbt6Click(Sender: TObject);
begin
  if  Messagedlg(Pchar('Format Export?'),mtInformation,[mbNo,mbYes],0)=mrYes then
  begin
    ExportFormatExcel;
  end else
  begin
    ExportExcel();
  end;
end;

procedure TChamCong_Bonus.ExportFormatExcel();
var eclApp,WorkBook:olevariant;
    i,j,StaffTotal:integer;
    MemoInfo:String;
begin
  if  HRMQry.active  then
  begin
    try
      eclApp:=CreateOleObject('Excel.Application');
      WorkBook:=CreateOleObject('Excel.Sheet');
    except
      Application.MessageBox('No Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
      Exit;
    end;
     if(not DirectoryExists(AppDir+'Additional\'))  then ForceDirectories(AppDir+'Additional\');
     CopyFile(Pchar('\\'+DM2.ERPDBIP+'\liy_erp\Additional\ProductionBonus_SN11.xlsx'),Pchar(AppDir+'Additional\ProductionBonus_SN11.xlsx'),false);
     if FileExists(AppDir+'Additional\ProductionBonus_SN11.xlsx') then
     begin
      try
        with Qtemp do
        begin
          Active:=false;
          SQL.Clear;
          SQL.Add('Select IsNull(StaffTotal,0) as StaffTotal from '+DM2.LocalDBName+'.dbo.IT_TIENSANLUONG IT_TIENSANLUONG where T_MA='''+CBX2.Text+'-'+CBX1.Text+''' ');
          Active:=true;
          if RecordCount>0 then
          StaffTotal:=FieldByName('StaffTotal').Value;
          Active:=false;
        end;
        eclApp.WorkBooks.Open(AppDir+'Additional\ProductionBonus_SN11.xlsx');
        HRMQry.First;
        eclApp.Cells(2,3):=inttostr(StaffTotal);
        eclApp.Cells(2,11):=HRMQry.FieldByName('StaffVNPrice').AsString;
        j:=4;
        i:=1;
        while   not   HRMQry.Eof   do
        begin
          eclApp.Cells(j,1):=inttostr(i);
          eclApp.Cells(j,2):=HRMQry.FieldByName('DV_Ten').AsString;
          eclApp.Cells(j,3):=HRMQry.FieldByName('NV_Ten').AsString;
          eclApp.Cells(j,4):=HRMQry.FieldByName('NV_Ma').AsString;
          eclApp.Cells(j,5):=HRMQry.FieldByName('CVU_TEN').AsString+HRMQry.FieldByName('CV_TEN').AsString;
          eclApp.Cells(j,6):=HRMQry.FieldByName('HESOSANLUONG').AsString;
          eclApp.Cells(j,7):=HRMQry.FieldByName('HESODONVI').AsString;
          eclApp.Cells(j,8):=HRMQry.FieldByName('HESOCVUVU').AsString;
          eclApp.Cells(j,9):=HRMQry.FieldByName('SONGAYCONG').AsString;
          eclApp.Cells(j,10):=HRMQry.FieldByName('HESONGAYCONG').AsString;
          eclApp.Cells(j,11):=HRMQry.FieldByName('TIENVUOTSANLUONG').AsString;
          //備註
          MemoInfo:='';
          if HRMQry.FieldByName('TV_NgayThoiVIec').IsNull=false then
          begin
            if FormatDateTime('MM-YYYY',HRMQry.FieldByName('TV_NgayThoiVIec').Value)=HRMQry.FieldByName('T_MA').Value then
            begin
              MemoInfo:=MemoInfo+'離職,';
            end;
          end;
          if HRMQry.FieldByName('NV_NGAYVAO').IsNull=false then
          begin
            if FormatDateTime('MM-YYYY',HRMQry.FieldByName('NV_NGAYVAO').Value)=HRMQry.FieldByName('T_MA').Value then
            begin
              MemoInfo:=MemoInfo+'新進,';
            end;
          end;
          if HRMQry.FieldByName('L_NGHIDQ').Value>0 then MemoInfo:=MemoInfo+'民兵'+HRMQry.FieldByName('L_NGHIDQ').AsString+'天,';
          if HRMQry.FieldByName('L_NGHIR1').Value>0 then MemoInfo:=MemoInfo+'婚喪'+HRMQry.FieldByName('L_NGHIR1').AsString+'天,';
          if HRMQry.FieldByName('L_NGHIP').Value>0 then MemoInfo:=MemoInfo+'年假'+HRMQry.FieldByName('L_NGHIP').AsString+'天,';
          if HRMQry.FieldByName('L_NGHIR').Value>0 then MemoInfo:=MemoInfo+'節日'+HRMQry.FieldByName('L_NGHIR').AsString+'天,';
          if HRMQry.FieldByName('L_NGHIRO').Value>0 then MemoInfo:=MemoInfo+'事假'+HRMQry.FieldByName('L_NGHIRO').AsString+'天,';
          if HRMQry.FieldByName('L_NGHIOM').Value>0 then MemoInfo:=MemoInfo+'病假'+HRMQry.FieldByName('L_NGHIOM').AsString+'天,';
          if HRMQry.FieldByName('L_NGHIST').Value>0 then MemoInfo:=MemoInfo+'流產'+HRMQry.FieldByName('L_NGHIST').AsString+'天,';
          if HRMQry.FieldByName('L_NGHITS').Value>0 then MemoInfo:=MemoInfo+'產假'+HRMQry.FieldByName('L_NGHITS').AsString+'天,';
          if HRMQry.FieldByName('L_NGHIO').Value>0 then MemoInfo:=MemoInfo+'礦工'+HRMQry.FieldByName('L_NGHIO').AsString+'天,';
          if HRMQry.FieldByName('L_NGHINO').Value>0 then MemoInfo:=MemoInfo+'無薪'+HRMQry.FieldByName('L_NGHINO').AsString+'天,';
          if HRMQry.FieldByName('L_NGHIKHAMTHAI').Value>0 then MemoInfo:=MemoInfo+'產檢'+HRMQry.FieldByName('L_NGHIKHAMTHAI').AsString+'天,';
          if HRMQry.FieldByName('L_NGHIDS').Value>0 then MemoInfo:=MemoInfo+'健康調養'+HRMQry.FieldByName('L_NGHIDS').AsString+'天,';
          if HRMQry.FieldByName('L_NGHIKHHGD').Value>0 then MemoInfo:=MemoInfo+'生育計畫'+HRMQry.FieldByName('L_NGHIKHHGD').AsString+'天,';
          if HRMQry.FieldByName('L_NGHIPD').Value>0 then MemoInfo:=MemoInfo+'晚班停工'+HRMQry.FieldByName('L_NGHIPD').AsString+'天,';
          if HRMQry.FieldByName('L_NGHIQS').Value>0 then MemoInfo:=MemoInfo+'軍事假'+HRMQry.FieldByName('L_NGHIQS').AsString+'天,';
          if HRMQry.FieldByName('L_NGHITNLD').Value>0 then MemoInfo:=MemoInfo+'災難勞動'+HRMQry.FieldByName('L_NGHITNLD').AsString+'天,';
          if HRMQry.FieldByName('L_NGHITS1').Value>0 then MemoInfo:=MemoInfo+'陪產'+HRMQry.FieldByName('L_NGHITS1').AsString+'天,';
          if HRMQry.FieldByName('L_NGHINo1').Value>0 then MemoInfo:=MemoInfo+'無薪'+HRMQry.FieldByName('L_NGHINo1').AsString+'天,';
          if HRMQry.FieldByName('L_NGHICO').Value>0 then MemoInfo:=MemoInfo+'孩子病'+HRMQry.FieldByName('L_NGHICO').AsString+'天,';
          if HRMQry.FieldByName('L_NGHIPt').Value>0 then MemoInfo:=MemoInfo+'天災'+HRMQry.FieldByName('L_NGHIPt').AsString+'天,';
          if HRMQry.FieldByName('L_NGHICC').Value>0 then MemoInfo:=MemoInfo+'換班'+HRMQry.FieldByName('L_NGHICC').AsString+'天,';
          if HRMQry.FieldByName('L_NGHINo2').Value>0 then MemoInfo:=MemoInfo+'停工底薪'+HRMQry.FieldByName('L_NGHINo2').AsString+'天,';
          if length(MemoInfo)>0 then
          eclApp.Cells(j,12):=Copy(MemoInfo,1,length(MemoInfo)-1);
          //
          HRMQry.Next;
          inc(j);
          inc(i);
        end;
        //eclapp.columns.autofit;
        eclApp.Range['A4:L'+inttostr(j-1)].Borders[1].LineStyle := 1;
        eclApp.Range['A4:L'+inttostr(j-1)].Borders[2].LineStyle := 1;
        eclApp.Range['A4:L'+inttostr(j-1)].Borders[3].LineStyle := 1;
        eclApp.Range['A4:L'+inttostr(j-1)].Borders[4].LineStyle := 1;

        showmessage('Succeed');
        eclApp.Visible:=True;
      except
        on  F:Exception   do
          showmessage(F.Message);
      end;
     end;
   end;
end;

procedure TChamCong_Bonus.CalBtnHRMClick(Sender: TObject);
var SubSQL:String;
begin
  SubSQL:='';
  if  Messagedlg(Pchar('Ban muon tinh lai khong?'),mtInformation,[mbNo,mbYes],0)=mrYes then
  begin
    if  Messagedlg(Pchar('Khong tinh lai  bang tay sua tienvuot san luong.'),mtInformation,[mbNo,mbYes],0)=mrYes then
      SubSQL:=' and IsNull('+DM2.LocalDBName+'.dbo.IT_NHANVIENCHAMCONG.ModUserID,'''')='''' ';


    with Qtemp do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('Update '+DM2.LocalDBName+'.dbo.IT_NHANVIENCHAMCONG Set  HESOSANLUONG=A.HESOSANLUONG, HESODONVI=A.HESODONVI, HESOCVUVU=A.HESOCVUVU, TIENVUOTSANLUONG=A.TIENVUOT , CalUserID='''+main.UserID+''' ,CalUserdate=GetDate()');
      SQL.Add('from (');
      SQL.Add('Select *,StaffVNPrice*HESONGAYCONG *HESOSANLUONG*HESODONVI*HESOCVUVU as TIENVUOT from (');
      SQL.Add('Select IT_NHANVIE.*,ROW_NUMBER() over (PARTITION BY NV_MA ORDER BY Sort asc) as  RN from ( ');
      SQL.Add('Select  IT_NHANVIE.T_MA, NV_MA,');
      SQL.Add('        IT_TIENSANLUONG.StaffVNPrice,IT_NHANVIE.HESONGAYCONG,IT_HESOSANLUONG.HESO as HESOSANLUONG,ST_DONVI.TienSanluongHeso as HESODONVI,');
      SQL.Add('        ST_CHUCVU.TienSanluongHeso as HESOCVUVU,IT_NHANVIE.TIENVUOTSANLUONG,');
      SQL.Add('        IT_NHANVIE.UserID,IT_NHANVIE.UserDate,IT_NHANVIE.YN  ');
      SQL.Add('        ,ST_CHUCVU.CV_MA as ERP_CV_MA,case when ST_CHUCVU.CV_MA=IT_NHANVIE.CV_MA then 0 when ST_CHUCVU.CV_MA=''ZZZZ'' then 1 when ST_CHUCVU.CV_MA<>IT_NHANVIE.CV_MA then 2  end as Sort ');
      SQL.Add('from '+DM2.LocalDBName+'.dbo.IT_NHANVIENCHAMCONG IT_NHANVIE ');
      SQL.Add('Left join '+DM2.LocalDBName+'.dbo.IT_HESOSANLUONG IT_HESOSANLUONG on IT_NHANVIE.T_MA=IT_HESOSANLUONG.T_MA and  IT_NHANVIE.DV_MA=IT_HESOSANLUONG.DV_MA and  IT_NHANVIE.GSBH=IT_HESOSANLUONG.GSBH  ');
      SQL.Add('Left join '+DM2.LocalDBName+'.dbo.ST_DONVI ST_DONVI on ST_DONVI.DV_MA=IT_NHANVIE.DV_MA ');
      SQL.Add('Left join '+DM2.LocalDBName+'.dbo.ST_CHUCVU ST_CHUCVU on ST_CHUCVU.CVU_MA=IT_NHANVIE.CVU_MA ');
      SQL.Add('left join '+DM2.LocalDBName+'.dbo.IT_TIENSANLUONG IT_TIENSANLUONG on IT_TIENSANLUONG.T_MA=IT_NHANVIE.T_MA and IT_TIENSANLUONG.GSBH=IT_NHANVIE.GSBH ');
      SQL.Add('where IT_NHANVIE.T_MA='''+CBX2.Text+'-'+CBX1.Text+''' and IT_NHANVIE.GSBH='''+main.mGSBH+''' ');
      SQL.Add(')  IT_NHANVIE )  IT_NHANVIE where RN=1 ) A ');
      SQL.Add('where '+DM2.LocalDBName+'.dbo.IT_NHANVIENCHAMCONG.T_MA=A.T_MA and '+DM2.LocalDBName+'.dbo.IT_NHANVIENCHAMCONG.NV_MA=A.NV_MA and '+DM2.LocalDBName+'.dbo.IT_NHANVIENCHAMCONG.GSBH='''+main.mGSBH+''' ');
      if DonviCombo.Text<>'' then
      begin
        if Pos('/',DONVICombo.Text)>0 then
          SQL.Add('      AND '+DM2.LocalDBName+'.dbo.IT_NHANVIENCHAMCONG.DV_MA='''+Copy(DONVICombo.Text,1,Pos('/',DONVICombo.Text)-1)+''' ')
        else
          SQL.Add('      AND '+DM2.LocalDBName+'.dbo.IT_NHANVIENCHAMCONG.DV_MA like '''+DONVICombo.Text+'%''');
      end;
      SQL.Add(SubSQL);
      //funcObj.WriteErrorLog(sql.Text);
      ExecSQL();
    end;
    Showmessage('Success');
  end;
end;

procedure TChamCong_Bonus.ChuvuBtnClick(Sender: TObject);
begin
   ST_CHUCVU:=TST_CHUCVU.Create(self);
   ST_CHUCVU.ShowModal();
end;

procedure TChamCong_Bonus.CreateHRM_Connect();
begin
  //
  with Qtemp do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('--//[1] Create Linkserver');
    SQL.Add('set ansi_nulls on ');
    SQL.Add('set ansi_warnings on ');
    SQL.Add(' ');
    SQL.Add('if  not exists(select *  from   master..sysservers  where  srvname= ''HumanDB'') ');
    SQL.Add('Exec sp_addlinkedserver');
    SQL.Add('   @server=''HumanDB'', --//linkserver name.');
    SQL.Add('   @srvproduct='''', --//一般描述');
    SQL.Add('   @provider=''SQLOLEDB'', --//OLEDB Provider name, check BOL for more providers');
    SQL.Add('   @datasrc='''+HrmsDBIP+''', --//遠端Server Name  192.168.11.100\sql2k8');
    SQL.Add('   @catalog='''+HrmsDBName+''' --//default database for linkserver');
    //SQL.Add('GO');
    SQL.Add('');
    SQL.Add('--//[2]Add linked server login');
    SQL.Add('Exec sp_addlinkedsrvlogin');
    SQL.Add('@useself=''false'', --//false=使用遠端使用者/密碼登入');
    SQL.Add(' --//true=使用本地端使用者/密碼連線遠端SERVER                        ');
    SQL.Add('@rmtsrvname=''HumanDB'', --//Linked server name');
    SQL.Add('@rmtuser='''+HrmsDBUser+''' , --//遠端登入使用者');
    SQL.Add('@rmtpassword='''+HrmsDBPass+''' --//遠端登入使用者密碼');
    //SQL.Add('GO');
    //funcObj.WriteErrorLog(sql.Text);
    ExecSQL();
  end;
  //
end;
//關閉HRM連線
procedure TChamCong_Bonus.CreateHRM_DisConnect();
begin
  with Qtemp do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('if exists(select *  from   master..sysservers  where  srvname= ''HumanDB'') begin');
    SQL.Add('Exec sp_droplinkedsrvlogin ''HumanDB'',Null ');
    SQL.Add('Exec sp_dropserver ''HumanDB'',''droplogins'' ');
    SQL.Add('end');
    //funcObj.WriteErrorLog(sql.Text);
    ExecSQL();
  end;
end;

procedure TChamCong_Bonus.DBGridEh1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if HRMQry.FieldByName('YN').Value=0 then
  begin
    DBGridEh1.canvas.font.color:=clred;
    DBGridEh1.defaultdrawcolumncell(rect,datacol,column,state);
  end
end;

procedure TChamCong_Bonus.DONVIBtnClick(Sender: TObject);
begin
   ST_DONVI:=TST_DONVI.Create(self);
   ST_DONVI.ShowModal;
end;

procedure TChamCong_Bonus.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=CaFree;
end;

procedure TChamCong_Bonus.FormCreate(Sender: TObject);
var
  myYear, myMonth, myDay : Word;
  i,j:integer;
begin
  AppDir:=ExtractFilePath(Application.ExeName);
  ReadIni();
  InitUpdateSQL();
  CreateHRM_DisConnect();
  CreateHRM_Connect();
  //
  with Qtemp do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select DV_MA, (DV_MA+''/''+DV_TEN) AS TEN_DV FROM '+DM2.LocalDBName+'.dbo.ST_DONVI ST_DONVI WHERE  DV_MA <> ''CNM''  ORDER BY DV_MA');
    Active:=true;
    DonviCombo.Items.Add('');
    while not Eof do
    begin
      DonviCombo.Items.Add(FieldByName('TEN_DV').AsString);
      Next;
    end;
    Active:=false;
    DonviCombo.ItemIndex:=0;
  end;
  // Load year-month
  DecodeDate(Date()-15, myYear, myMonth, myDay);
  for i:=0 to CBX1.Items.Count-1 do
  begin
    if strtoint(CBX1.Items[i])=myYear then
    begin
      CBX1.ItemIndex:=i;
      break;
    end;
  end;
  for i:=0 to CBX2.Items.Count-1 do
  begin
    if strtoint(CBX2.Items[i])=myMonth then
    begin
      CBX2.ItemIndex:=i;
      break;
    end;
  end;
  flag:=false;
end;

procedure TChamCong_Bonus.FormDestroy(Sender: TObject);
begin
  ChamCong_Bonus:=nil;
end;

procedure TChamCong_Bonus.HRMQryAfterOpen(DataSet: TDataSet);
begin
  HRMQry.AfterOpenRecNo(DataSet);
  BB3.Enabled:=true;
  BB4.Enabled:=true;
  if (Date()-HRMQry.FieldByName('USERDATE').value)>3 then
  begin
    BB3.Enabled:=False;
    BB4.Enabled:=False;
  end;
end;

procedure TChamCong_Bonus.HRMQryBeforeClose(DataSet: TDataSet);
begin
  HRMQry.BeforeCloseRecNo(DataSet);

end;

procedure TChamCong_Bonus.HRMQryHESOCVUVUChange(Sender: TField);
begin
  if HRMQry.FieldByName('HESOCVUVU').OldValue<>HRMQry.FieldByName('HESOCVUVU').Value then
  begin
    flag:=true;
    HESOCVUVU:=  HRMQry.FieldByName('HESOCVUVU').AsString ;
  end else
  begin
    flag:=false;
  end;
end;

procedure TChamCong_Bonus.HRMQryL_NGHICCChange(Sender: TField);
begin
  if HRMQry.FieldByName('L_NGHICC').OldValue<>HRMQry.FieldByName('L_NGHICC').Value then
  begin
    flag:=true;
    L_NGHICC:=  HRMQry.FieldByName('L_NGHICC').AsString ;
  end else
  begin
    flag:=false;
  end;
end;

procedure TChamCong_Bonus.HRMQryL_NGHICOChange(Sender: TField);
begin
  if HRMQry.FieldByName('L_NGHICO').OldValue<>HRMQry.FieldByName('L_NGHICO').Value then
  begin
    flag:=true;
    L_NGHICO:=  HRMQry.FieldByName('L_NGHICO').AsString ;
  end else
  begin
    flag:=false;
  end;
end;

procedure TChamCong_Bonus.HRMQryL_NGHIDQChange(Sender: TField);
begin
  if HRMQry.FieldByName('L_NGHIDQ').OldValue<>HRMQry.FieldByName('L_NGHIDQ').Value then
  begin
    flag:=true;
    L_NGHIDQ:=  HRMQry.FieldByName('L_NGHIDQ').AsString ;
  end else
  begin
    flag:=false;
  end;
end;

procedure TChamCong_Bonus.HRMQryL_NGHIDSChange(Sender: TField);
begin
  if HRMQry.FieldByName('L_NGHIDS').OldValue<>HRMQry.FieldByName('L_NGHIDS').Value then
  begin
    flag:=true;
    L_NGHIDS:=  HRMQry.FieldByName('L_NGHIDS').AsString ;
  end else
  begin
    flag:=false;
  end;
end;

procedure TChamCong_Bonus.HRMQryL_NGHIKHAMTHAIChange(Sender: TField);
begin
  if HRMQry.FieldByName('L_NGHIKHAMTHAI').OldValue<>HRMQry.FieldByName('L_NGHIKHAMTHAI').Value then
  begin
    flag:=true;
    L_NGHIKHAMTHAI:=  HRMQry.FieldByName('L_NGHIKHAMTHAI').AsString ;
  end else
  begin
    flag:=false;
  end;

end;

procedure TChamCong_Bonus.HRMQryL_NGHIKHHGDChange(Sender: TField);
begin
  if HRMQry.FieldByName('L_NGHIKHHGD').OldValue<>HRMQry.FieldByName('L_NGHIKHHGD').Value then
  begin
    flag:=true;
    L_NGHIKHHGD:=  HRMQry.FieldByName('L_NGHIKHHGD').AsString ;
  end else
  begin
    flag:=false;
  end;
end;

procedure TChamCong_Bonus.HRMQryL_NGHILEChange(Sender: TField);
begin
  if HRMQry.FieldByName('L_NGHIR1').OldValue<>HRMQry.FieldByName('L_NGHIR1').Value then
  begin
    flag:=true;
    L_NGHIR1:=  HRMQry.FieldByName('L_NGHIR1').AsString ;
  end else
  begin
    flag:=false;
  end;
end;

procedure TChamCong_Bonus.HRMQryL_NGHINo1Change(Sender: TField);
begin
  if HRMQry.FieldByName('L_NGHINo1').OldValue<>HRMQry.FieldByName('L_NGHINo1').Value then
  begin
    flag:=true;
    L_NGHINo1:=  HRMQry.FieldByName('L_NGHINo1').AsString ;
  end else
  begin
    flag:=false;
  end;
end;

procedure TChamCong_Bonus.HRMQryL_NGHINo2Change(Sender: TField);
begin
  if HRMQry.FieldByName('L_NGHINo2').OldValue<>HRMQry.FieldByName('L_NGHINo2').Value then
  begin
    flag:=true;
    L_NGHINo2:=  HRMQry.FieldByName('L_NGHINo2').AsString ;
  end else
  begin
    flag:=false;
  end;
end;

procedure TChamCong_Bonus.HRMQryL_NGHIOMChange(Sender: TField);
begin
  if HRMQry.FieldByName('L_NGHIOM').OldValue<>HRMQry.FieldByName('L_NGHIOM').Value then
  begin
    flag:=true;
    L_NGHIOM:=  HRMQry.FieldByName('L_NGHIOM').AsString ;
  end else
  begin
    flag:=false;
  end;
end;

procedure TChamCong_Bonus.HRMQryL_NGHIPChange(Sender: TField);
begin
  if HRMQry.FieldByName('L_NGHIP').OldValue<>HRMQry.FieldByName('L_NGHIP').Value then
  begin
    flag:=true;
    L_NGHIP:=  HRMQry.FieldByName('L_NGHIP').AsString ;
  end else
  begin
    flag:=false;
  end;
end;

procedure TChamCong_Bonus.HRMQryL_NGHIPDChange(Sender: TField);
begin
  if HRMQry.FieldByName('L_NGHIPD').OldValue<>HRMQry.FieldByName('L_NGHIPD').Value then
  begin
    flag:=true;
    L_NGHIPD:=  HRMQry.FieldByName('L_NGHIPD').AsString ;
  end else
  begin
    flag:=false;
  end;
end;

procedure TChamCong_Bonus.HRMQryL_NGHIPtChange(Sender: TField);
begin
  if HRMQry.FieldByName('L_NGHIPt').OldValue<>HRMQry.FieldByName('L_NGHIPt').Value then
  begin
    flag:=true;
    L_NGHIPt:=  HRMQry.FieldByName('L_NGHIPt').AsString ;
  end else
  begin
    flag:=false;
  end;
end;

procedure TChamCong_Bonus.HRMQryL_NGHIQSChange(Sender: TField);
begin
  if HRMQry.FieldByName('L_NGHIQS').OldValue<>HRMQry.FieldByName('L_NGHIQS').Value then
  begin
    flag:=true;
    L_NGHIQS:=  HRMQry.FieldByName('L_NGHIQS').AsString ;
  end else
  begin
    flag:=false;
  end;
end;

procedure TChamCong_Bonus.HRMQryL_NGHIRChange(Sender: TField);
begin
  if HRMQry.FieldByName('L_NGHIR').OldValue<>HRMQry.FieldByName('L_NGHIR').Value then
  begin
    flag:=true;
    L_NGHIR:=  HRMQry.FieldByName('L_NGHIR').AsString ;
  end else
  begin
    flag:=false;
  end;
end;

procedure TChamCong_Bonus.HRMQryL_NGHIROChange(Sender: TField);
begin
  if HRMQry.FieldByName('L_NGHIRO').OldValue<>HRMQry.FieldByName('L_NGHIRO').Value then
  begin
    flag:=true;
    L_NGHIRO:=  HRMQry.FieldByName('L_NGHIRO').AsString ;
  end else
  begin
    flag:=false;
  end;
end;

procedure TChamCong_Bonus.HRMQryL_NGHITNLDChange(Sender: TField);
begin
  if HRMQry.FieldByName('L_NGHITNLD').OldValue<>HRMQry.FieldByName('L_NGHITNLD').Value then
  begin
    flag:=true;
    L_NGHITNLD:=  HRMQry.FieldByName('L_NGHITNLD').AsString ;
  end else
  begin
    flag:=false;
  end;
end;

procedure TChamCong_Bonus.HRMQryL_NGHITS1Change(Sender: TField);
begin
  if HRMQry.FieldByName('L_NGHITS1').OldValue<>HRMQry.FieldByName('L_NGHITS1').Value then
  begin
    flag:=true;
    L_NGHITS1:=  HRMQry.FieldByName('L_NGHITS1').AsString ;
  end else
  begin
    flag:=false;
  end;
end;

procedure TChamCong_Bonus.ImportBtnHRMClick(Sender: TObject);
begin
  HRMForm:=THRMForm.Create(self);
  HRMForm.ShowModal();
end;

procedure TChamCong_Bonus.Query3Click(Sender: TObject);
var  iYear,iMonth:word;
     sDate,eDate:Tdate;
begin
  //
  if (CBX1.text='')or (CBX2.text='')  then
  begin
    showmessage('You have to select the year and month first.');
    abort;
  end;
  iYear:=strtoint(CBX1.Text);
  iMonth:=strtoint(CBX2.Text);
  if (iYear>2999) or (iYear<1900) then
  begin
    showmessage('Pls key in right year');
    abort;
  end;
  if (iYear<2008) then
  begin
    showmessage('Pls key in right year');
    abort;
  end;
  if (iMonth=0) or (iMonth>12) then
  begin
    showmessage('Pls key in right month');
    abort;
  end;
  sDate:=encodedate(iYear,iMonth,1);
  eDate:=endofthemonth(sDate);
  //
  with HRMQry do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Select * from (');
    SQL.Add('Select IT_NHANVIE.*,ROW_NUMBER() over (PARTITION BY NV_MA ORDER BY Sort asc) as  RN from ( ');
    SQL.Add('Select  IT_NHANVIE.T_MA, IT_NHANVIE.GSBH, IT_NHANVIE.NV_MA, IT_NHANVIE.NV_Ten, IT_NHANVIE.DV_MA, ST_DONVI.DV_Ten, NV_NGAYVAO, IT_NHANVIE.CVU_MA, ST_CHUCVU.CVU_TEN, IT_NHANVIE.CV_MA, IT_NHANVIE.CV_TEN,');
    SQL.Add('        IT_NHANVIE.NV_THOIVIEC, IT_NHANVIE.TV_NgayThoiVIec, IT_NHANVIE.L_SONGAYCONGTRONGTHANG, IT_NHANVIE.SONGAYCONG/8 as SONGAYCONG,');
    SQL.Add('        L_NGHIDQ/8 as L_NGHIDQ, L_NGHIR1/8 as L_NGHIR1, L_NGHIP/8 as L_NGHIP, L_NGHIR/8 as L_NGHIR, L_NGHIRO/8 as L_NGHIRO, L_NGHIOM/8 as L_NGHIOM,');
    SQL.Add('        L_NGHIST/8 as L_NGHIST, L_NGHITS/8 as L_NGHITS, L_NGHIO/8 as L_NGHIO, L_NGHINO/8 as L_NGHINO, L_NGHIKHAMTHAI/8 as L_NGHIKHAMTHAI,L_NGHIDS/8 as L_NGHIDS,');
    SQL.Add('        L_NGHIKHHGD/8 as L_NGHIKHHGD,L_NGHIPD/8 as L_NGHIPD,L_NGHIQS/8 as L_NGHIQS,L_NGHITNLD/8 as L_NGHITNLD,L_NGHITS1/8 as L_NGHITS1,L_NGHINo1/8 as L_NGHINo1,L_NGHICO/8 as L_NGHICO,L_NGHIPt/8 as L_NGHIPt,L_NGHICC/8 as L_NGHICC,L_NGHINo2/8 as L_NGHINo2,');
    sql.Add('        L_NGHINo3/8 as L_NGHINo3,L_NGHINo4/8 as L_NGHINo4,L_NGHINo5/8 as L_NGHINo5,L_NGHINo6/8 as L_NGHINo6,L_NGHINo7/8 as L_NGHINo7,L_NGHIF0/8 as L_NGHIF0,');
    SQL.Add('        IT_TIENSANLUONG.StaffVNPrice,IT_NHANVIE.HESONGAYCONG,IsNull(IT_NHANVIE.HESOSANLUONG,IT_HESOSANLUONG.HESO) as HESOSANLUONG,IsNull(IT_NHANVIE.HESODONVI,ST_DONVI.TienSanluongHeso) as HESODONVI,');
    SQL.Add('        IsNull(IT_NHANVIE.HESOCVUVU,ST_CHUCVU.TienSanluongHeso) as HESOCVUVU,IT_NHANVIE.TIENVUOTSANLUONG,');
    SQL.Add('        IT_NHANVIE.UserID,IT_NHANVIE.UserDate,IT_NHANVIE.CalUserID,IT_NHANVIE.CalUserDate,IT_NHANVIE.ModUserID,IT_NHANVIE.ModUserDate,IT_NHANVIE.YN  ');
    SQL.Add('        ,ST_CHUCVU.CV_MA as ERP_CV_MA,case when ST_CHUCVU.CV_MA=IT_NHANVIE.CV_MA then 0   when ST_CHUCVU.CV_MA=''ZZZZ'' then 1 when ST_CHUCVU.CV_MA<>IT_NHANVIE.CV_MA then 2  end as Sort,ST_DONVI.Flag as  DONVI_Flag ');
    SQL.Add('from '+DM2.LocalDBName+'.dbo.IT_NHANVIENCHAMCONG IT_NHANVIE ');
    SQL.Add('Left join '+DM2.LocalDBName+'.dbo.IT_HESOSANLUONG IT_HESOSANLUONG on IT_NHANVIE.T_MA=IT_HESOSANLUONG.T_MA and  IT_NHANVIE.DV_MA=IT_HESOSANLUONG.DV_MA and IT_HESOSANLUONG.GSBH=IT_NHANVIE.GSBH  ');
    SQL.Add('Left join '+DM2.LocalDBName+'.dbo.ST_DONVI ST_DONVI on ST_DONVI.DV_MA=IT_NHANVIE.DV_MA ');
    SQL.Add('Left join '+DM2.LocalDBName+'.dbo.ST_CHUCVU ST_CHUCVU on ST_CHUCVU.CVU_MA=IT_NHANVIE.CVU_MA ');
    SQL.Add('left join '+DM2.LocalDBName+'.dbo.IT_TIENSANLUONG IT_TIENSANLUONG on IT_TIENSANLUONG.T_MA=IT_NHANVIE.T_MA and IT_TIENSANLUONG.GSBH=IT_NHANVIE.GSBH ');
    SQL.Add('where IT_NHANVIE.T_MA='''+CBX2.Text+'-'+CBX1.Text+''' and IT_NHANVIE.GSBH='''+main.mGSBH+''' ');
    if DonviCombo.Text<>'' then
    begin
      if Pos('/',DONVICombo.Text)>0 then
         SQL.Add('      AND IT_NHANVIE.DV_MA='''+Copy(DONVICombo.Text,1,Pos('/',DONVICombo.Text)-1)+''' ')
      else
         SQL.Add('      AND IT_NHANVIE.DV_MA like '''+DONVICombo.Text+'%''');
    end;
    if NV_MAEdit.Text<>'' then
    SQL.Add('      AND IT_NHANVIE.NV_MA like '''+NV_MAEdit.Text+'%'' ');
    SQL.Add(')  IT_NHANVIE )  IT_NHANVIE where RN=1 ');
    if DieukienComb.ItemIndex=0 then
    SQL.Add(' and (StaffVNPrice is null or HESONGAYCONG is null or   HESOSANLUONG is null or HESODONVI is null or HESOCVUVU is null)  ');
    if DieukienComb.ItemIndex=1 then
    SQL.Add(' and HESONGAYCONG>0  ');
    if DieukienComb.ItemIndex=2 then
    SQL.Add(' and HESONGAYCONG>0 and IsNull(DONVI_Flag,'''')<>''TYTHAC''  ');
    if DieukienComb.ItemIndex=3 then
    SQL.Add(' and HESONGAYCONG>0 and IsNull(DONVI_Flag,'''')=''TYTHAC''  ');
    if DieukienComb.ItemIndex=4 then
    SQL.Add(' and HESONGAYCONG>0 and IsNull(DONVI_Flag,'''')<>''CHUYENGIA''  ');
    if DieukienComb.ItemIndex=5 then
    SQL.Add(' and HESONGAYCONG>0 and IsNull(DONVI_Flag,'''')=''CHUYENGIA''  ');
    if DieukienComb.ItemIndex=6 then
    SQL.Add(' and HESONGAYCONG=0  ');
    if DieukienComb.ItemIndex=7 then
    SQL.Add(' and IsNull(DONVI_Flag,'''')=''CHUYENGIA''   ');
    //FuncObj.WriteErrorLog(SQL.Text);
    //
    Active:=true;
  end;
  //

end;

end.
