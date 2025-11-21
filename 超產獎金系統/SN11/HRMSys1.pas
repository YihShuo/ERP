unit HRMSys1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,
  Data.DB, Data.Win.ADODB, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls,
  DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, Dateutils, ComObj,
  MyADOQuery, IniFiles;

type
  THRMForm = class(TForm)
    Panel3: TPanel;
    Label4: TLabel;
    Label5: TLabel;
    NVMa: TLabel;
    Label11: TLabel;
    QryBtn: TButton;
    CBX1: TComboBox;
    CBX2: TComboBox;
    NV_MAEdit: TEdit;
    DonviCombo: TComboBox;
    DS1: TDataSource;
    ImportlBtn: TButton;
    ExcelBtn: TButton;
    DBGridEh1: TDBGridEh;
    HRMQry: TMyADOQuery;
    HRMQryT_MA: TStringField;
    HRMQryNV_Ma: TWideStringField;
    HRMQryNV_Ten: TWideStringField;
    HRMQryDV_MA: TWideStringField;
    HRMQryDV_Ten: TWideStringField;
    HRMQryNV_Ngayvao: TDateTimeField;
    HRMQryCVU_MA: TWideStringField;
    HRMQryCVU_TEN: TWideStringField;
    HRMQryCV_MA: TWideStringField;
    HRMQryCV_TEN: TWideStringField;
    HRMQryNV_THOIVIEC: TIntegerField;
    HRMQryTV_NgayThoiViec: TWideStringField;
    HRMQryL_SONGAYCONGTRONGTHANG: TIntegerField;
    HRMQrySONGAYCONG: TFloatField;
    HRMQryL_NGHIDQ: TFloatField;
    HRMQryL_NGHIR1: TFloatField;
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
    HRMQryL_NGHIPD: TFloatField;
    HRMQryL_NGHIQS: TFloatField;
    HRMQryL_NGHITNLD: TFloatField;
    HRMQryL_NGHITS1: TFloatField;
    HRMQryL_NGHINo1: TFloatField;
    HRMQryL_NGHICO: TFloatField;
    HRMQryL_NGHIPt: TFloatField;
    HRMQryL_NGHICC: TFloatField;
    HRMQryHESONGAYCONG: TBCDField;
    QTemp: TMyADOQuery;
    SpeedButton1: TSpeedButton;
    DONVIMAEdit: TEdit;
    Label1: TLabel;
    HRMQryL_NGHINo2: TFloatField;
    HRMQryL_NGHINo3: TFloatField;
    HRMQryL_NGHINo4: TFloatField;
    HRMQryL_NGHINo5: TFloatField;
    HRMQryL_NGHINo6: TFloatField;
    HRMQryL_NGHINo7: TFloatField;
    HRMQryL_NGHIF0: TFloatField;
    procedure QryBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure ImportlBtnClick(Sender: TObject);
    procedure ExcelBtnClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    SubSQL:String;
    { Private declarations }
    procedure ReadIni();
    procedure GetSubSQL(var SQL:string;BtnObj:TSpeedButton;EditObj:TEdit;FieldNM:string;Flag:string);
  public
    { Public declarations }
  end;
const
  MatNoFilter:array [0..3] of string= ('like','not like','=','<>');
var
  HRMForm: THRMForm;

implementation
   uses DM1, main1, chamcong_bonus1, FunUnit;
{$R *.dfm}

procedure THRMForm.ReadIni();
var MyIni :Tinifile;
    AppDir:string;
begin
  AppDir:=ExtractFilePath(Application.ExeName);
  if FileExists(AppDir+'\ComName.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ComName.ini');
      SubSQL:=MyIni.ReadString('ProductionBonus','SubSQL','');
      //
    finally
      MyIni.Free;
    end;
  end;
end;
//
procedure THRMForm.GetSubSQL(var SQL:string;BtnObj:TSpeedButton;EditObj:TEdit;FieldNM:string;Flag:string);
var tmpList,tmpList1:TStringlist;
    i:integer;
begin
  SQL:='';
  if trim(EditObj.Text)<>'' then
  begin
    if  (Pos('|', EditObj.Text)>0)  then
    begin
      tmpList:=funcObj.SplitString(trim(EditObj.Text),'|');
      for i:=0 to tmpList.Count-1 do
      begin
       if ((BtnObj.Caption='=') or  (BtnObj.Caption='<>'))then
          SQL:=SQL+'(:'+FieldNM+' '+BtnObj.Caption+' '''+Flag+tmpList.Strings[i]+'%'') and '
       else
          SQL:=SQL+'(:'+FieldNM+' '+BtnObj.Caption+' '''+Flag+tmpList.Strings[i]+'%'') and ';
      end;
      SQL:='and ('+Copy(SQL,1,length(SQL)-4)+')';
      tmpList.Free;
    end else
    begin
    if Pos('*', EditObj.Text)>0 then
      begin
        tmpList:=funcObj.SplitString(trim(EditObj.Text),'*');
        for i:=0 to tmpList.Count-1 do
        begin
          if ((BtnObj.Caption='=') or  (BtnObj.Caption='<>'))then
             SQL:=SQL+'(:'+FieldNM+' '+BtnObj.Caption+' '''+tmpList.Strings[i]+''') or '
          else
             SQL:=SQL+'(:'+FieldNM+' '+BtnObj.Caption+' '''+Flag+tmpList.Strings[i]+'%'') or ';
        end;
        SQL:='and ('+Copy(SQL,1,length(SQL)-4)+')';
        tmpList.Free;
      end else
      begin
        tmpList:=funcObj.SplitString(trim(EditObj.Text),'*');
        for i:=0 to tmpList.Count-1 do
        begin
          if ((BtnObj.Caption='=') or  (BtnObj.Caption='<>'))then
             SQL:=SQL+'(:'+FieldNM+' '+BtnObj.Caption+' '''+tmpList.Strings[i]+''') or '
          else
             SQL:=SQL+'(:'+FieldNM+' '+BtnObj.Caption+' '''+Flag+tmpList.Strings[i]+'%'') or ';
        end;
        SQL:='and ('+Copy(SQL,1,length(SQL)-4)+')';
        tmpList.Free;
      end;
    end;
  end;
end;
//
procedure THRMForm.SpeedButton1Click(Sender: TObject);
var i:integer;
    SpeedButton:TSpeedButton;
begin
   SpeedButton:=TSpeedButton(Sender);
   for i:=0 to High(MatNoFilter) do
   begin
     if MatNoFilter[i]=SpeedButton.Caption then
     begin
       if i<High(MatNoFilter) then
         SpeedButton.Caption:=MatNoFilter[i+1]
       else
         SpeedButton.Caption:=MatNoFilter[0];
       break;
     end;
   end;
end;

procedure THRMForm.ImportlBtnClick(Sender: TObject);
var  iYear,iMonth:word;
     sDate,eDate:Tdate;
     DV_MA_SQL:String;
begin
  if  Messagedlg(Pchar('Ban muon tao vao khong?'),mtInformation,[mbNo,mbYes],0)=mrYes then
  begin
    //檢查是否已經有個人獎金計算不能再重導
    with Qtemp do
    begin
       Active:=false;
       SQL.Clear;
       SQL.Add('Select T_MA from '+DM2.LocalDBName+'.dbo.IT_TIENSANLUONG where T_MA='''+CBX2.Text+'-'+CBX1.Text+'''  and GSBH='''+main.mGSBH+''' and StaffVNPrice is not null ');
       Active:=true;
       if RecordCount>0 then
       begin
         Active:=false;
         Showmessage('Plan Department have alread caculate finish.it is be locked');
         Abort;
       end;
       Active:=false;
    end;
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
    GetSubSQL(DV_MA_SQL,SpeedButton1,DONVIMAEdit,'DV_MA','%');
    //
    with Qtemp do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('Delete from '+DM2.LocalDBName+'.dbo.IT_NHANVIENCHAMCONG where T_MA='''+CBX2.Text+'-'+CBX1.Text+''' and GSBH='''+main.mGSBH+''' and UserID='''+main.UserID+''' and (IsNull(ModUserID,'''')='''' or (ModUserID='''+main.UserID+''')) ');
      SQL.Add('Insert into '+DM2.LocalDBName+'.dbo.IT_NHANVIENCHAMCONG ');
      SQL.Add('  (T_MA, GSBH, NV_MA, NV_Ten, DV_MA, DV_TEN, NV_NGAYVAO, CVU_MA, CVU_TEN, CV_MA, CV_TEN, NV_THOIVIEC, TV_NgayThoiViec, L_SONGAYCONGTRONGTHANG, SONGAYCONG, ');
      SQL.Add('   L_NGHIDQ, L_NGHIR1, L_NGHIP, L_NGHIR, L_NGHIRO, L_NGHIOM, L_NGHIST, L_NGHITS, L_NGHIO, L_NGHINO, L_NGHIKHAMTHAI, L_NGHIDS, L_NGHIKHHGD , L_NGHIPD, L_NGHIQS, L_NGHITNLD,');
      SQL.Add('   L_NGHITS1, L_NGHINo1, L_NGHICO, L_NGHIPt, L_NGHICC, L_NGHINo2, L_NGHINo3, L_NGHINo4, L_NGHINo5, L_NGHINo6, L_NGHINo7, L_NGHIF0, HESONGAYCONG, UserID, UserDate, YN )');
      //差勤資料
      SQL.Add('select  ST_LUONG.*,');
      SQL.Add('        case when L_NGHIO>0 or NV_THOIVIEC=1 OR  (NV_NGAYVAO>'''+formatdatetime('yyyy/MM/dd',sdate)+''' and NV_NGAYVAO<='''+formatdatetime('yyyy/MM/dd',edate)+''' ) or (L_NGHIRO/8)>3 or ((L_NGHIDQ+L_NGHIR1+L_NGHIP+L_NGHIR+L_NGHIOM+L_NGHIST+L_NGHITS+L_NGHIO+');
      SQL.Add('                  L_NGHINO+L_NGHIKHAMTHAI+L_NGHIDS+L_NGHIKHHGD+L_NGHIPD+L_NGHIQS+L_NGHITNLD+L_NGHITS1+L_NGHINo1+L_NGHICO+L_NGHIPt+L_NGHICC+L_NGHINo2+L_NGHINo3+L_NGHINo4+L_NGHINo5+L_NGHINo6+L_NGHINo7+L_NGHIF0)/8)>(L_SONGAYCONGTRONGTHANG/2) ');
      sql.Add('                   or (SONGAYCONG=0)  then 0');
      SQL.Add('		     else');
      SQL.Add('			   case when  L_NGHIRO=0 and ((L_NGHIDQ+L_NGHIR1+L_NGHIP+L_NGHIR+L_NGHIOM+L_NGHIST+L_NGHITS+L_NGHIO+L_NGHINO+L_NGHIKHAMTHAI+L_NGHIDS+L_NGHIKHHGD+L_NGHIPD+L_NGHIQS+L_NGHITNLD+');
      SQL.Add('                   L_NGHITS1+L_NGHINo1+L_NGHICO+L_NGHIPt+L_NGHICC+L_NGHINo2+L_NGHINo3+L_NGHINo4+L_NGHINo5+L_NGHINo6+L_NGHINo7+L_NGHIF0)/8)<=4 then 1 else 0.5 end');
      SQL.Add('             end');
      SQL.Add('	    as HESONGAYCONG,'''+main.UserID+''' as UserID,GetDate() as UserDate,1 as YN');
      SQL.Add('from (');
      SQL.Add('Select '''+CBX2.Text+'-'+CBX1.Text+''' as T_MA,');
      SQL.Add('       '''+main.mGSBH+''' as GSBH,');
      SQL.Add('       ST_NHANVIEN.NV_Ma, ');
      SQL.Add('       ST_NHANVIEN.NV_Ten, ');
      SQL.Add('       ST_GIOQUETTHE_NV.DV_MA, ');
      SQL.Add('       ST_DONVI.DV_Ten,  ');
      SQL.Add('       ST_NHANVIEN.NV_Ngayvao, ');
      SQL.Add('       ST_NHANVIEN.CVU_MA, ');
      SQL.Add('       ST_CHUCVU.CVU_TEN, ');
      SQL.Add('       ST_NHANVIEN.CV_MA, ');
      SQL.Add('       ST_CONGVIEC.CV_TEN,');
      SQL.Add('       Case when ST_NHANVIEN.NV_Ngayvao=ST_NHANVIEN.NV_NgayTV then 1 ');
      SQL.Add('            else Case when IT_CHUYENDONVI.DV_MA IS NULL  THEN 0 ELSE ISNULL(ST_NHANVIEN.IT_DDNGHIVIEC,0) end  End AS NV_THOIVIEC, ');
      SQL.Add('	      IT_CHUYENDONVI.NGAY AS TV_NgayThoiViec,');
      SQL.Add('       ST_THANG.T_SONGAYCONG as L_SONGAYCONGTRONGTHANG');
      SQL.Add('       ,Sum(case when (ST_GIOQUETTHE.CC_HESONGAYCONG=1 or ST_GIOQUETTHE.CC_HESONGAYCONG=2 or ST_GIOQUETTHE.CC_HESONGAYCONG=4 or  ');
      SQL.Add('             (ST_GIOQUETTHE.CC_HESONGAYCONG=3 and ST_GIOQUETTHE.CA_MA in (''Ca 1'',''Ca 2'',''Ca 3'',''Ca 4'',''Ca 6'',''Ca 7'',''Ca HC'',''Ca01'',''Ca02'',''Ca03'') ) ) ');
      SQL.Add('            then ST_GIOQUETTHE.CC_GIOBINHTHUONG else 0 end)  as SONGAYCONG');
      SQL.Add('       ,Sum(case when (ST_GIOQUETTHE.CC_HESONGAYCONG=1 OR ST_GIOQUETTHE.CC_HESONGAYCONG=4) and (ST_GIOQUETTHE.NP_MA=''Dq'') then 8-ST_GIOQUETTHE.CC_GIOBINHTHUONG else 0 end) as L_NGHIDQ');
      SQL.Add('       ,Sum(case when (ST_GIOQUETTHE.CC_HESONGAYCONG=1 OR ST_GIOQUETTHE.CC_HESONGAYCONG=4) and (ST_GIOQUETTHE.NP_MA=''R1'') then 8-ST_GIOQUETTHE.CC_GIOBINHTHUONG else 0 end) as L_NGHIR1 ');
      SQL.Add('       ,Sum(case when (ST_GIOQUETTHE.CC_HESONGAYCONG=1 OR ST_GIOQUETTHE.CC_HESONGAYCONG=4) and (ST_GIOQUETTHE.NP_MA=''P'') then 8-ST_GIOQUETTHE.CC_GIOBINHTHUONG else 0 end) as L_NGHIP');
      SQL.Add('       ,SUM(CASE WHEN ST_GIOQUETTHE.CC_GIOBINHTHUONG=0 AND ST_GIOQUETTHE.CC_HESONGAYCONG=3 THEN 8 - ( CASE WHEN CC_HESONGAYCONG=1 THEN ISNULL(ST_GIOQUETTHE.CC_GIOBINHTHUONG,0) ELSE 0 END ) ELSE 0 END) AS L_NGHIR');
      SQL.Add('	      ,Sum(case when (ST_GIOQUETTHE.CC_HESONGAYCONG=1 OR ST_GIOQUETTHE.CC_HESONGAYCONG=4) and (ST_GIOQUETTHE.NP_MA=''RO'') then 8-ST_GIOQUETTHE.CC_GIOBINHTHUONG else 0 end) as L_NGHIRO');
      SQL.Add('	      ,Sum(case when (ST_GIOQUETTHE.CC_HESONGAYCONG=1 OR ST_GIOQUETTHE.CC_HESONGAYCONG=4) and (ST_GIOQUETTHE.NP_MA=''OM'') then 8-ST_GIOQUETTHE.CC_GIOBINHTHUONG else 0 end) as L_NGHIOM');
      SQL.Add('	      ,Sum(case when (ST_GIOQUETTHE.CC_HESONGAYCONG=1 OR ST_GIOQUETTHE.CC_HESONGAYCONG=4) and (ST_GIOQUETTHE.NP_MA=''ST'') then 8-ST_GIOQUETTHE.CC_GIOBINHTHUONG else 0 end) as L_NGHIST');
      SQL.Add('	      ,Sum(case when (ST_GIOQUETTHE.CC_HESONGAYCONG=1 OR ST_GIOQUETTHE.CC_HESONGAYCONG=4) and (ST_GIOQUETTHE.NP_MA=''TS'') then 8-ST_GIOQUETTHE.CC_GIOBINHTHUONG else 0 end) as L_NGHITS');
      SQL.Add('	      ,Sum(case when (ST_GIOQUETTHE.CC_HESONGAYCONG=1 OR ST_GIOQUETTHE.CC_HESONGAYCONG=4) and (ST_GIOQUETTHE.NP_MA=''O'') then 8-ST_GIOQUETTHE.CC_GIOBINHTHUONG else 0 end) as L_NGHIO');
      SQL.Add('	      ,Sum(case when (ST_GIOQUETTHE.CC_HESONGAYCONG=1 OR ST_GIOQUETTHE.CC_HESONGAYCONG=4) and (ST_GIOQUETTHE.NP_MA=''NO'') then 8-ST_GIOQUETTHE.CC_GIOBINHTHUONG else 0 end) as L_NGHINO');
      SQL.Add('	      ,Sum(case when (ST_GIOQUETTHE.CC_HESONGAYCONG=1 OR ST_GIOQUETTHE.CC_HESONGAYCONG=4) and (ST_GIOQUETTHE.NP_MA=''KThai'') then 8-ST_GIOQUETTHE.CC_GIOBINHTHUONG else 0 end) as L_NGHIKHAMTHAI');
      SQL.Add('	      ,Sum(case when (ST_GIOQUETTHE.CC_HESONGAYCONG=1 OR ST_GIOQUETTHE.CC_HESONGAYCONG=4) and (ST_GIOQUETTHE.NP_MA=''Ds'') then 8-ST_GIOQUETTHE.CC_GIOBINHTHUONG else 0 end) as L_NGHIDS');
      SQL.Add('	      ,Sum(case when (ST_GIOQUETTHE.CC_HESONGAYCONG=1 OR ST_GIOQUETTHE.CC_HESONGAYCONG=4) and (ST_GIOQUETTHE.NP_MA=''KHHGD'') then 8-ST_GIOQUETTHE.CC_GIOBINHTHUONG else 0 end) as L_NGHIKHHGD');
      SQL.Add('	      ,Sum(case when (ST_GIOQUETTHE.CC_HESONGAYCONG=1 OR ST_GIOQUETTHE.CC_HESONGAYCONG=4) and (ST_GIOQUETTHE.NP_MA=''PD'') then 8-ST_GIOQUETTHE.CC_GIOBINHTHUONG else 0 end) as L_NGHIPD');
      SQL.Add('	      ,Sum(case when (ST_GIOQUETTHE.CC_HESONGAYCONG=1 OR ST_GIOQUETTHE.CC_HESONGAYCONG=4) and (ST_GIOQUETTHE.NP_MA=''QS'') then 8-ST_GIOQUETTHE.CC_GIOBINHTHUONG else 0 end) as L_NGHIQS');
      SQL.Add('	      ,Sum(case when (ST_GIOQUETTHE.CC_HESONGAYCONG=1 OR ST_GIOQUETTHE.CC_HESONGAYCONG=4) and (ST_GIOQUETTHE.NP_MA=''TNLD'') then 8-ST_GIOQUETTHE.CC_GIOBINHTHUONG else 0 end) as L_NGHITNLD');
      SQL.Add('	      ,Sum(case when (ST_GIOQUETTHE.CC_HESONGAYCONG=1 OR ST_GIOQUETTHE.CC_HESONGAYCONG=4) and (ST_GIOQUETTHE.NP_MA=''TS1'') then 8-ST_GIOQUETTHE.CC_GIOBINHTHUONG else 0 end) as L_NGHITS1');
      SQL.Add('	      ,Sum(case when (ST_GIOQUETTHE.CC_HESONGAYCONG=1 OR ST_GIOQUETTHE.CC_HESONGAYCONG=4) and (ST_GIOQUETTHE.NP_MA=''No1'') then 8-ST_GIOQUETTHE.CC_GIOBINHTHUONG else 0 end) as L_NGHINo1');
      SQL.Add('	      ,Sum(case when (ST_GIOQUETTHE.CC_HESONGAYCONG=1 OR ST_GIOQUETTHE.CC_HESONGAYCONG=4) and (ST_GIOQUETTHE.NP_MA=''CO'') then 8-ST_GIOQUETTHE.CC_GIOBINHTHUONG else 0 end) as L_NGHICO');
      SQL.Add('	      ,Sum(case when (ST_GIOQUETTHE.CC_HESONGAYCONG=1 OR ST_GIOQUETTHE.CC_HESONGAYCONG=4) and (ST_GIOQUETTHE.NP_MA=''Pt'') then 8-ST_GIOQUETTHE.CC_GIOBINHTHUONG else 0 end) as L_NGHIPt');
      SQL.Add('	      ,Sum(case when (ST_GIOQUETTHE.CC_HESONGAYCONG=1 OR ST_GIOQUETTHE.CC_HESONGAYCONG=4) and (ST_GIOQUETTHE.NP_MA=''CC'') then 8-ST_GIOQUETTHE.CC_GIOBINHTHUONG else 0 end) as L_NGHICC');
      SQL.Add('	      ,Sum(case when (ST_GIOQUETTHE.CC_HESONGAYCONG=1 OR ST_GIOQUETTHE.CC_HESONGAYCONG=4) and (ST_GIOQUETTHE.NP_MA=''No2'') then 8-ST_GIOQUETTHE.CC_GIOBINHTHUONG else 0 end) as L_NGHINo2');
      sql.Add('       ,Sum(case when (ST_GIOQUETTHE.CC_HESONGAYCONG=1 OR ST_GIOQUETTHE.CC_HESONGAYCONG=4) and (ST_GIOQUETTHE.NP_MA=''No3'') then 8-ST_GIOQUETTHE.CC_GIOBINHTHUONG else 0 end) as L_NGHINo3');
      sql.Add('       ,Sum(case when (ST_GIOQUETTHE.CC_HESONGAYCONG=1 OR ST_GIOQUETTHE.CC_HESONGAYCONG=4) and (ST_GIOQUETTHE.NP_MA=''No4'') then 8-ST_GIOQUETTHE.CC_GIOBINHTHUONG else 0 end) as L_NGHINo4');
      sql.Add('       ,Sum(case when (ST_GIOQUETTHE.CC_HESONGAYCONG=1 OR ST_GIOQUETTHE.CC_HESONGAYCONG=4) and (ST_GIOQUETTHE.NP_MA=''No5'') then 8-ST_GIOQUETTHE.CC_GIOBINHTHUONG else 0 end) as L_NGHINo5');
      sql.Add('       ,Sum(case when (ST_GIOQUETTHE.CC_HESONGAYCONG=1 OR ST_GIOQUETTHE.CC_HESONGAYCONG=4) and (ST_GIOQUETTHE.NP_MA=''No6'') then 8-ST_GIOQUETTHE.CC_GIOBINHTHUONG else 0 end) as L_NGHINo6');
      sql.Add('       ,Sum(case when (ST_GIOQUETTHE.CC_HESONGAYCONG=1 OR ST_GIOQUETTHE.CC_HESONGAYCONG=4) and (ST_GIOQUETTHE.NP_MA=''No7'') then 8-ST_GIOQUETTHE.CC_GIOBINHTHUONG else 0 end) as L_NGHINo7');
      sql.Add('       ,Sum(case when (ST_GIOQUETTHE.CC_HESONGAYCONG=1 OR ST_GIOQUETTHE.CC_HESONGAYCONG=4) and (ST_GIOQUETTHE.NP_MA=''F0'') then 8-ST_GIOQUETTHE.CC_GIOBINHTHUONG else 0 end) as L_NGHIF0');
      SQL.Add('From  HumanDB.['+ChamCong_Bonus.HrmsDBName+'].dbo.ST_NHANVIEN ST_NHANVIEN ');
      SQL.Add('INNER JOIN HumanDB.['+ChamCong_Bonus.HrmsDBName+'].dbo.ST_GIOQUETTHE ST_GIOQUETTHE ON ST_NHANVIEN.NV_MA = ST_GIOQUETTHE.NV_MA');
      //
      SQL.Add('Left join (');
      SQL.Add('select * from (');
      SQL.Add('Select ST_GIOQUETTHE.NV_MA,ST_GIOQUETTHE.DV_MATL as DV_MA,ST_GIOQUETTHE.QT_NGAY,ROW_NUMBER() over (PARTITION BY NV_MA ORDER BY QT_NGAY DESC) as  rn');
      SQL.Add('from HumanDB.['+ChamCong_Bonus.HrmsDBName+'].dbo.ST_GIOQUETTHE ST_GIOQUETTHE');
      SQL.Add('INNER JOIN HumanDB.['+ChamCong_Bonus.HrmsDBName+'].dbo.ST_DONVI ST_DONVI ON ST_GIOQUETTHE.DV_MATL = ST_DONVI.DV_MA ');
      SQL.Add('where  ST_GIOQUETTHE.QT_NGAY BETWEEN '''+formatdatetime('yyyy/MM/dd',sdate)+'''  AND '''+formatdatetime('yyyy/MM/dd',edate)+'''  and ST_DONVI.X_MA_ <>''TAM''  ');
      SQL.Add(' ) ST_GIOQUETTHE where rn=1 ) ST_GIOQUETTHE_NV on ST_GIOQUETTHE_NV.NV_MA=ST_NHANVIEN.NV_MA ');
      //
      SQL.Add('LEFT JOIN HumanDB.['+ChamCong_Bonus.HrmsDBName+'].dbo.ST_DONVI ST_DONVI ON ST_GIOQUETTHE_NV.DV_MA = ST_DONVI.DV_MA');
      SQL.Add('LEFT JOIN HumanDB.['+ChamCong_Bonus.HrmsDBName+'].dbo.ST_CONGVIEC ST_CONGVIEC ON ST_NHANVIEN.CV_MA = ST_CONGVIEC.CV_MA');
      SQL.Add('LEFT JOIN HumanDB.['+ChamCong_Bonus.HrmsDBName+'].dbo.ST_CHUCVU ST_CHUCVU  ON ST_NHANVIEN.CVU_MA = ST_CHUCVU.CVU_MA');
      SQL.Add('LEFT join HumanDB.['+ChamCong_Bonus.HrmsDBName+'].dbo.ST_THANG ST_THANG on ST_THANG.T_MA='''+CBX2.Text+'-'+CBX1.Text+''' ');
      SQL.Add('LEFT JOIN (Select NV_MA,Min(NGAY) as NGAY,Max(DV_MA) as DV_MA from HumanDB.['+ChamCong_Bonus.HrmsDBName+'].dbo.IT_CHUYENDONVI IT_CHUYENDONVI where IT_CHUYENDONVI.DV_MA='''' AND NGAY BETWEEN '''+formatdatetime('yyyy/MM/dd',sdate)+'''  AND '''+formatdatetime('yyyy/MM/dd',edate)+''' Group by NV_MA) IT_CHUYENDONVI ON ST_NHANVIEN.NV_Ma=IT_CHUYENDONVI.NV_MA ');
      SQL.Add('WHERE ST_NHANVIEN.NV_MA NOT IN (SELECT NV_MA FROM HumanDB.['+ChamCong_Bonus.HrmsDBName+'].dbo.ST_NHANVIENTHOIVIEC ST_NHANVIENTHOIVIEC where TV_NgayThoiViec<'''+formatdatetime('yyyy/MM/dd',sdate)+''') ');
      //SQL.Add('   AND ST_NHANVIEN.NV_Ma NOT IN (SELECT NV_MA AS NGAY FROM HumanDB.['+ChamCong_Bonus.HrmsDBName+'].dbo.IT_CHUYENDONVI IT_CHUYENDONVI WHERE DV_MA='''' and  NGAY<'''+formatdatetime('yyyy/MM/dd',sdate)+''')  ');
      SQL.Add('   AND ST_NHANVIEN.NV_Ma NOT IN ( SELECT IT_CHUYENDONVI.NV_MA');
      SQL.Add('                               FROM HumanDB.['+ChamCong_Bonus.HrmsDBName+'].dbo.IT_CHUYENDONVI IT_CHUYENDONVI left join HumanDB.['+ChamCong_Bonus.HrmsDBName+'].dbo.ST_NHANVIEN ST_NHANVIEN ');
      SQL.Add('             									on IT_CHUYENDONVI.NV_MA=ST_NHANVIEN.NV_MA');
      SQL.Add(' 									            WHERE IT_CHUYENDONVI.DV_MA='''' and  NGAY<'''+formatdatetime('yyyy/MM/dd',sdate)+'''');
      SQL.Add(' 									            and ST_NHANVIEN.DV_MA in (select DV_MA from HumanDB.['+ChamCong_Bonus.HrmsDBName+'].dbo.ST_DONVI ST_DONVI where DV_TV = 1))');
      SQL.Add('   AND IsNull(ST_NHANVIEN.DV_MA,'''')<>''''  ');
      SQL.Add('	  AND ST_NHANVIEN.NV_NGAYVAO <= '''+formatdatetime('yyyy/MM/dd',edate)+''' ');
      SQL.Add('	  AND ST_GIOQUETTHE.QT_NGAY BETWEEN '''+formatdatetime('yyyy/MM/dd',sdate)+'''  AND '''+formatdatetime('yyyy/MM/dd',edate)+''' ');
      //億春A廠區 查詢SubSQL
      if SubSQL<>'' then SQL.Add(SubSQL);
      if NV_MAEdit.Text<>'' then
      SQL.Add('      AND ST_NHANVIEN.NV_MA like '''+NV_MAEdit.Text+'%'' ');
      if DonviCombo.Text<>'' then
      begin
        if Pos('-',DONVICombo.Text)>0 then
           SQL.Add('      AND ST_DONVI.DV_MA='''+Copy(DONVICombo.Text,1,Pos('-',DONVICombo.Text)-1)+''' ')
        else
           SQL.Add('      AND ST_DONVI.DV_MA like '''+DONVICombo.Text+'%''');
      end;
      //不包含
      if DONVIMAEdit.Text <>'' then
          SQL.Add('       '+StringReplace(DV_MA_SQL, ':DV_MA', 'ST_DONVI.DV_MA',[rfReplaceAll, rfIgnoreCase]));
      SQL.Add('Group by ST_NHANVIEN.NV_Ma,ST_NHANVIEN.NV_Ten, ST_GIOQUETTHE_NV.DV_MA,ST_DONVI.DV_Ten,  ST_NHANVIEN.NV_Ngayvao,ST_NHANVIEN.CV_MA,ST_CONGVIEC.CV_TEN,ISNULL(IT_DDNGHIVIEC,0),IT_CHUYENDONVI.NGAY,IT_CHUYENDONVI.DV_MA,ST_NHANVIEN.NV_NgayTV, ');
      SQL.Add('         ST_NHANVIEN.CVU_MA, ST_CHUCVU.CVU_TEN, ST_NHANVIEN.CM_MA,ST_CONGVIEC.CV_TEN, ST_THANG.T_SONGAYCONG ');
      SQL.Add(') ST_LUONG ');
      SQL.Add('where Not exists (Select NV_MA from  '+DM2.LocalDBName+'.dbo.IT_NHANVIENCHAMCONG IT_NHANVIENCHAMCONG where IT_NHANVIENCHAMCONG.T_MA='''+CBX2.Text+'-'+CBX1.Text+''' and IT_NHANVIENCHAMCONG.GSBH='''+main.mGSBH+''' and ST_LUONG.NV_MA COLLATE DATABASE_DEFAULT =IT_NHANVIENCHAMCONG.NV_MA COLLATE DATABASE_DEFAULT )');
      //funcObj.WriteErrorLog(sql.Text);
      ExecSQL();
    end;
    //員工單位替換
    with Qtemp do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('Update '+DM2.LocalDBName+'.dbo.IT_NHANVIENCHAMCONG set DV_MA=A.DV_MA ');
      SQL.Add('from (');
      SQL.Add('Select DV_MA,NV_MA ');
      SQL.Add('from '+DM2.LocalDBName+'.dbo.IT_NHANVIEN_DONVI IT_NHANVIEN_DONVI ) A');
      SQL.Add('where '+DM2.LocalDBName+'.dbo.IT_NHANVIENCHAMCONG.T_MA='''+CBX2.Text+'-'+CBX1.Text+''' and '+DM2.LocalDBName+'.dbo.IT_NHANVIENCHAMCONG.NV_MA=A.NV_MA and '+DM2.LocalDBName+'.dbo.IT_NHANVIENCHAMCONG.GSBH='''+main.mGSBH+''' ');
      //funcObj.WriteErrorLog(sql.Text);
      ExecSQL();
    end;
    //單位基本資料
    with Qtemp do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('Insert into '+DM2.LocalDBName+'.dbo.ST_DONVI (DV_MA, DV_TEN, TienSanluongHeso, UserID, UserDate, YN) ');
      SQL.Add('Select * from (');
      SQL.Add('Select distinct DV_MA, DV_TEN, 1 as TienSanluongHeso, '''+main.UserID+''' as UserID,GetDate() as UserDate,1 as YN ');
      SQL.Add('FROM '+DM2.LocalDBName+'.dbo.IT_NHANVIENCHAMCONG IT_NHANVIENCHAMCONG WHERE T_MA = '''+CBX2.Text+'-'+CBX1.Text+'''  and IsNull(IT_NHANVIENCHAMCONG.DV_MA,'''')<>'''' and  GSBH='''+main.mGSBH+''' ) A ');
      SQL.Add('where Not exists (Select DV_MA from '+DM2.LocalDBName+'.dbo.ST_DONVI ST_DONVI where ST_DONVI.DV_MA=A.DV_MA)');
      //funcObj.WriteErrorLog(sql.Text);
      ExecSQL();
    end;
    //職務基本資料
    with Qtemp do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('Insert into '+DM2.LocalDBName+'.dbo.ST_CHUCVU (CVU_MA, CVU_TEN, CV_MA, TienSanluongHeso, UserID, UserDate, YN) ');
      SQL.Add('Select * from (');
      SQL.Add('Select distinct CVU_MA, CVU_TEN ,''ZZZZ'' as CV_MA, 1 as TienSanluongHeso, '''+main.UserID+''' as UserID,GetDate() as UserDate,1 as YN ');
      SQL.Add('FROM '+DM2.LocalDBName+'.dbo.IT_NHANVIENCHAMCONG IT_NHANVIENCHAMCONG WHERE T_MA = '''+CBX2.Text+'-'+CBX1.Text+''' and IsNull(IT_NHANVIENCHAMCONG.CVU_MA,'''')<>'''' and  GSBH='''+main.mGSBH+''') A ');
      SQL.Add('where  Not exists (Select CVU_MA from '+DM2.LocalDBName+'.dbo.ST_CHUCVU ST_CHUCVU where  ST_CHUCVU.CVU_MA=A.CVU_MA)');
      //funcObj.WriteErrorLog(sql.Text);
      ExecSQL();
    end;
    //各單位獎金係數
    with Qtemp do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('Insert into '+DM2.LocalDBName+'.dbo.IT_HESOSANLUONG (T_MA, GSBH, DV_MA, PScore, QScore, RScore, TScore, HESO, USERID, USERDATE ,YN) ');
      SQl.Add('Select * from (');
      SQL.Add('Select distinct T_MA, '''+main.mGSBH+''' as GSBH, DV_MA ,0.4 as PScore,0.2 as QScore,0.2 as RSocre,0.2 as TScore,1 as HESO,'''+main.UserID+''' as UserID,GetDate() as UserDate,1 as YN ');
      SQL.Add('FROM '+DM2.LocalDBName+'.dbo.IT_NHANVIENCHAMCONG IT_NHANVIENCHAMCONG WHERE T_MA = '''+CBX2.Text+'-'+CBX1.Text+''' and IsNull(IT_NHANVIENCHAMCONG.DV_MA,'''')<>'''' and  GSBH='''+main.mGSBH+'''  ) A ');
      SQL.Add('where  Not exists (Select T_MA from '+DM2.LocalDBName+'.dbo.IT_HESOSANLUONG IT_HESOSANLUONG where IT_HESOSANLUONG.T_MA=A.T_MA and IT_HESOSANLUONG.DV_MA=A.DV_MA and IT_HESOSANLUONG.GSBH='''+main.mGSBH+''' )');
      //funcObj.WriteErrorLog(sql.Text);
      ExecSQL();
    end;
    //新增課級組別
    with Qtemp do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('Insert into '+DM2.LocalDBName+'.dbo.IT_HESOSANLUONG (T_MA, GSBH, DV_MA, PScore, QScore, RScore, TScore, HESO, USERID, USERDATE ,YN) ');
      SQL.Add('Select * from (       ');
      SQL.Add('select distinct '''+CBX2.Text+'-'+CBX1.Text+''' as T_MA,'''+main.mGSBH+''' as GSBH, DV_MA,0.4 as PScore,0.2 as QScore,0.2 as RSocre,0.2 as TScore,1 as HESO,'''+main.UserID+''' as UserID,GetDate() as UserDate,1 as YN ');
      SQL.Add('FROM  '+DM2.LocalDBName+'.dbo.IT_ORGLEVEL IT_ORGLEVEL');
      SQL.Add('where  exists (Select distinct T_MA FROM '+DM2.LocalDBName+'.dbo.IT_NHANVIENCHAMCONG IT_NHANVIENCHAMCONG  where IT_NHANVIENCHAMCONG.T_MA='''+CBX2.Text+'-'+CBX1.Text+''' and IT_ORGLEVEL.DV_MA1=IT_NHANVIENCHAMCONG.DV_MA and IT_NHANVIENCHAMCONG.GSBH='''+main.mGSBH+''' )');
      SQL.Add(' ) A ');
      SQL.Add('where Not exists (Select T_MA from '+DM2.LocalDBName+'.dbo.IT_HESOSANLUONG IT_HESOSANLUONG where IT_HESOSANLUONG.T_MA=A.T_MA and IT_HESOSANLUONG.DV_MA=A.DV_MA and IT_HESOSANLUONG.GSBH='''+main.mGSBH+''')');
      ExecSQL();
    end;
    Showmessage('Success');
    //
  end;
end;

procedure THRMForm.ExcelBtnClick(Sender: TObject);
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
    try
        WorkBook:=eclApp.workbooks.Add;
        for   i:=0   to   HRMQry.fieldcount-1   do
        begin
          eclApp.Cells(1,i+1):=HRMQry.fields[i].FieldName;
        end;
        HRMQry.First;
        j:=2;
        while   not   HRMQry.Eof   do
        begin
          for   i:=0   to  HRMQry.fieldcount-1  do
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

procedure THRMForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=CaFree;
end;

procedure THRMForm.FormCreate(Sender: TObject);
var
  myYear, myMonth, myDay : Word;
  i,j:integer;
begin
  //
  readini();
  with Qtemp do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select DV_MA, (DV_MA+''/''+DV_TEN) AS TEN_DV FROM HumanDB.['+ChamCong_Bonus.HrmsDBName+'].dbo.ST_DONVI ST_DONVI WHERE  DV_MA <> ''CNM'' AND DV_LOCBB = 0 ORDER BY DV_MA');
    //funcObj.WriteErrorLog(sql.Text);
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
end;

procedure THRMForm.FormDestroy(Sender: TObject);
begin
  HRMForm:=nil;
end;

procedure THRMForm.QryBtnClick(Sender: TObject);
var  iYear,iMonth:word;
     sDate,eDate:Tdate;
     DV_MA_SQL:String;
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
  GetSubSQL(DV_MA_SQL,SpeedButton1,DONVIMAEdit,'DV_MA','%');
  //
  with HRMQry do
  begin
    Active:=false;
    SQL.Clear;
    //
    SQL.Add('select  ST_LUONG.*,');
    SQL.Add('        case when L_NGHIO>0 or NV_THOIVIEC=1 OR  (NV_NGAYVAO>'''+formatdatetime('yyyy/MM/dd',sdate)+''' and NV_NGAYVAO<='''+formatdatetime('yyyy/MM/dd',edate)+''' ) or (L_NGHIRO/8)>3 or ');
    SQL.Add('                 ((L_NGHIDQ+L_NGHIR1+L_NGHIP+L_NGHIR+L_NGHIOM+L_NGHIST+L_NGHITS+L_NGHIO+L_NGHINO+L_NGHIKHAMTHAI+L_NGHIDS+L_NGHIKHHGD+L_NGHIPD+L_NGHIQS+L_NGHITNLD+L_NGHITS1+L_NGHINo1+L_NGHICO+L_NGHIPt+L_NGHICC+L_NGHINo2+');
    sql.Add('                   L_NGHINo3+L_NGHINo4+L_NGHINo5+L_NGHINo6+L_NGHINo7+L_NGHIF0)/8)>(L_SONGAYCONGTRONGTHANG/2) ');
    sql.Add('                   or (SONGAYCONG=0)  then 0');
    SQL.Add('		     else');
    SQL.Add('			   case when  L_NGHIRO=0 and ((L_NGHIDQ+L_NGHIR1+L_NGHIP+L_NGHIR+L_NGHIOM+L_NGHIST+L_NGHITS+L_NGHIO+L_NGHINO+L_NGHIKHAMTHAI+L_NGHIDS+');
    SQL.Add('                                    L_NGHIKHHGD+L_NGHIPD+L_NGHIQS+L_NGHITNLD+L_NGHITS1+L_NGHINo1+L_NGHICO+L_NGHIPt+L_NGHICC+L_NGHINo2+L_NGHINo3+L_NGHINo4+L_NGHINo5+L_NGHINo6+L_NGHINo7+L_NGHIF0)/8)<=4 then 1 else 0.5 end');
    SQL.Add('             end');
    SQL.Add('	    as HESONGAYCONG');
    SQL.Add('from (');
    SQL.Add('Select '''+CBX2.Text+'-'+CBX1.Text+''' as T_MA,');
    SQL.Add('       ST_NHANVIEN.NV_Ma, ');
    SQL.Add('       ST_NHANVIEN.NV_Ten, ');
    SQL.Add('       ST_GIOQUETTHE_NV.DV_MA, ');
    SQL.Add('       ST_DONVI.DV_Ten,  ');
    SQL.Add('       ST_NHANVIEN.NV_Ngayvao, ');
    SQL.Add('       ST_NHANVIEN.CVU_MA, ');
    SQL.Add('       ST_CHUCVU.CVU_TEN, ');
    SQL.Add('       ST_NHANVIEN.CV_MA, ');
    SQL.Add('       ST_CONGVIEC.CV_TEN,');
    SQL.Add('       Case when ST_NHANVIEN.NV_Ngayvao=ST_NHANVIEN.NV_NgayTV then 1 ');
    SQL.Add('            else Case when IT_CHUYENDONVI.DV_MA IS NULL  THEN 0 ELSE ISNULL(ST_NHANVIEN.IT_DDNGHIVIEC,0) end  End AS NV_THOIVIEC, ');
    SQL.Add('	      IT_CHUYENDONVI.NGAY AS TV_NgayThoiViec,');
    SQL.Add('       ST_THANG.T_SONGAYCONG as L_SONGAYCONGTRONGTHANG');
    SQL.Add('       ,Sum(case when (ST_GIOQUETTHE.CC_HESONGAYCONG=1 or ST_GIOQUETTHE.CC_HESONGAYCONG=2 or ST_GIOQUETTHE.CC_HESONGAYCONG=4 or  ');
    SQL.Add('             (ST_GIOQUETTHE.CC_HESONGAYCONG=3 and ST_GIOQUETTHE.CA_MA in (''Ca 1'',''Ca 2'',''Ca 3'',''Ca 4'',''Ca 6'',''Ca 7'',''Ca HC'',''Ca01'',''Ca02'',''Ca03'') ) ) ');
    SQL.Add('            then ST_GIOQUETTHE.CC_GIOBINHTHUONG else 0 end)  as SONGAYCONG');
    SQL.Add('       ,Sum(case when (ST_GIOQUETTHE.CC_HESONGAYCONG=1 OR ST_GIOQUETTHE.CC_HESONGAYCONG=4) and (ST_GIOQUETTHE.NP_MA=''Dq'') then 8-ST_GIOQUETTHE.CC_GIOBINHTHUONG else 0 end) as L_NGHIDQ');
    SQL.Add('       ,Sum(case when (ST_GIOQUETTHE.CC_HESONGAYCONG=1 OR ST_GIOQUETTHE.CC_HESONGAYCONG=4) and (ST_GIOQUETTHE.NP_MA=''R1'') then 8-ST_GIOQUETTHE.CC_GIOBINHTHUONG else 0 end) as L_NGHIR1 ');
    SQL.Add('       ,Sum(case when (ST_GIOQUETTHE.CC_HESONGAYCONG=1 OR ST_GIOQUETTHE.CC_HESONGAYCONG=4) and (ST_GIOQUETTHE.NP_MA=''P'') then 8-ST_GIOQUETTHE.CC_GIOBINHTHUONG else 0 end) as L_NGHIP');
    SQL.Add('       ,SUM(CASE WHEN ST_GIOQUETTHE.CC_GIOBINHTHUONG=0 AND ST_GIOQUETTHE.CC_HESONGAYCONG=3 THEN 8 - ( CASE WHEN CC_HESONGAYCONG=1 THEN ISNULL(ST_GIOQUETTHE.CC_GIOBINHTHUONG,0) ELSE 0 END ) ELSE 0 END) AS L_NGHIR');
    SQL.Add('	      ,Sum(case when (ST_GIOQUETTHE.CC_HESONGAYCONG=1 OR ST_GIOQUETTHE.CC_HESONGAYCONG=4) and (ST_GIOQUETTHE.NP_MA=''RO'') then 8-ST_GIOQUETTHE.CC_GIOBINHTHUONG else 0 end) as L_NGHIRO');
    SQL.Add('	      ,Sum(case when (ST_GIOQUETTHE.CC_HESONGAYCONG=1 OR ST_GIOQUETTHE.CC_HESONGAYCONG=4) and (ST_GIOQUETTHE.NP_MA=''OM'') then 8-ST_GIOQUETTHE.CC_GIOBINHTHUONG else 0 end) as L_NGHIOM');
    SQL.Add('	      ,Sum(case when (ST_GIOQUETTHE.CC_HESONGAYCONG=1 OR ST_GIOQUETTHE.CC_HESONGAYCONG=4) and (ST_GIOQUETTHE.NP_MA=''ST'') then 8-ST_GIOQUETTHE.CC_GIOBINHTHUONG else 0 end) as L_NGHIST');
    SQL.Add('	      ,Sum(case when (ST_GIOQUETTHE.CC_HESONGAYCONG=1 OR ST_GIOQUETTHE.CC_HESONGAYCONG=4) and (ST_GIOQUETTHE.NP_MA=''TS'') then 8-ST_GIOQUETTHE.CC_GIOBINHTHUONG else 0 end) as L_NGHITS');
    SQL.Add('	      ,Sum(case when (ST_GIOQUETTHE.CC_HESONGAYCONG=1 OR ST_GIOQUETTHE.CC_HESONGAYCONG=4) and (ST_GIOQUETTHE.NP_MA=''O'') then 8-ST_GIOQUETTHE.CC_GIOBINHTHUONG else 0 end) as L_NGHIO');
    SQL.Add('	      ,Sum(case when (ST_GIOQUETTHE.CC_HESONGAYCONG=1 OR ST_GIOQUETTHE.CC_HESONGAYCONG=4) and (ST_GIOQUETTHE.NP_MA=''NO'') then 8-ST_GIOQUETTHE.CC_GIOBINHTHUONG else 0 end) as L_NGHINO');
    SQL.Add('	      ,Sum(case when (ST_GIOQUETTHE.CC_HESONGAYCONG=1 OR ST_GIOQUETTHE.CC_HESONGAYCONG=4) and (ST_GIOQUETTHE.NP_MA=''KThai'') then 8-ST_GIOQUETTHE.CC_GIOBINHTHUONG else 0 end) as L_NGHIKHAMTHAI');
    SQL.Add('	      ,Sum(case when (ST_GIOQUETTHE.CC_HESONGAYCONG=1 OR ST_GIOQUETTHE.CC_HESONGAYCONG=4) and (ST_GIOQUETTHE.NP_MA=''Ds'') then 8-ST_GIOQUETTHE.CC_GIOBINHTHUONG else 0 end) as L_NGHIDS');
    SQL.Add('	      ,Sum(case when (ST_GIOQUETTHE.CC_HESONGAYCONG=1 OR ST_GIOQUETTHE.CC_HESONGAYCONG=4) and (ST_GIOQUETTHE.NP_MA=''KHHGD'') then 8-ST_GIOQUETTHE.CC_GIOBINHTHUONG else 0 end) as L_NGHIKHHGD');
    SQL.Add('	      ,Sum(case when (ST_GIOQUETTHE.CC_HESONGAYCONG=1 OR ST_GIOQUETTHE.CC_HESONGAYCONG=4) and (ST_GIOQUETTHE.NP_MA=''PD'') then 8-ST_GIOQUETTHE.CC_GIOBINHTHUONG else 0 end) as L_NGHIPD');
    SQL.Add('	      ,Sum(case when (ST_GIOQUETTHE.CC_HESONGAYCONG=1 OR ST_GIOQUETTHE.CC_HESONGAYCONG=4) and (ST_GIOQUETTHE.NP_MA=''QS'') then 8-ST_GIOQUETTHE.CC_GIOBINHTHUONG else 0 end) as L_NGHIQS');
    SQL.Add('	      ,Sum(case when (ST_GIOQUETTHE.CC_HESONGAYCONG=1 OR ST_GIOQUETTHE.CC_HESONGAYCONG=4) and (ST_GIOQUETTHE.NP_MA=''TNLD'') then 8-ST_GIOQUETTHE.CC_GIOBINHTHUONG else 0 end) as L_NGHITNLD');
    SQL.Add('	      ,Sum(case when (ST_GIOQUETTHE.CC_HESONGAYCONG=1 OR ST_GIOQUETTHE.CC_HESONGAYCONG=4) and (ST_GIOQUETTHE.NP_MA=''TS1'') then 8-ST_GIOQUETTHE.CC_GIOBINHTHUONG else 0 end) as L_NGHITS1');
    SQL.Add('	      ,Sum(case when (ST_GIOQUETTHE.CC_HESONGAYCONG=1 OR ST_GIOQUETTHE.CC_HESONGAYCONG=4) and (ST_GIOQUETTHE.NP_MA=''No1'') then 8-ST_GIOQUETTHE.CC_GIOBINHTHUONG else 0 end) as L_NGHINo1');
    SQL.Add('	      ,Sum(case when (ST_GIOQUETTHE.CC_HESONGAYCONG=1 OR ST_GIOQUETTHE.CC_HESONGAYCONG=4) and (ST_GIOQUETTHE.NP_MA=''CO'') then 8-ST_GIOQUETTHE.CC_GIOBINHTHUONG else 0 end) as L_NGHICO');
    SQL.Add('	      ,Sum(case when (ST_GIOQUETTHE.CC_HESONGAYCONG=1 OR ST_GIOQUETTHE.CC_HESONGAYCONG=4) and (ST_GIOQUETTHE.NP_MA=''Pt'') then 8-ST_GIOQUETTHE.CC_GIOBINHTHUONG else 0 end) as L_NGHIPt');
    SQL.Add('	      ,Sum(case when (ST_GIOQUETTHE.CC_HESONGAYCONG=1 OR ST_GIOQUETTHE.CC_HESONGAYCONG=4) and (ST_GIOQUETTHE.NP_MA=''CC'') then 8-ST_GIOQUETTHE.CC_GIOBINHTHUONG else 0 end) as L_NGHICC');
    SQL.Add('	      ,Sum(case when (ST_GIOQUETTHE.CC_HESONGAYCONG=1 OR ST_GIOQUETTHE.CC_HESONGAYCONG=4) and (ST_GIOQUETTHE.NP_MA=''No2'') then 8-ST_GIOQUETTHE.CC_GIOBINHTHUONG else 0 end) as L_NGHINo2');
    sql.Add('       ,Sum(case when (ST_GIOQUETTHE.CC_HESONGAYCONG=1 OR ST_GIOQUETTHE.CC_HESONGAYCONG=4) and (ST_GIOQUETTHE.NP_MA=''No3'') then 8-ST_GIOQUETTHE.CC_GIOBINHTHUONG else 0 end) as L_NGHINo3');
    sql.Add('       ,Sum(case when (ST_GIOQUETTHE.CC_HESONGAYCONG=1 OR ST_GIOQUETTHE.CC_HESONGAYCONG=4) and (ST_GIOQUETTHE.NP_MA=''No4'') then 8-ST_GIOQUETTHE.CC_GIOBINHTHUONG else 0 end) as L_NGHINo4');
    sql.Add('       ,Sum(case when (ST_GIOQUETTHE.CC_HESONGAYCONG=1 OR ST_GIOQUETTHE.CC_HESONGAYCONG=4) and (ST_GIOQUETTHE.NP_MA=''No5'') then 8-ST_GIOQUETTHE.CC_GIOBINHTHUONG else 0 end) as L_NGHINo5');
    sql.Add('       ,Sum(case when (ST_GIOQUETTHE.CC_HESONGAYCONG=1 OR ST_GIOQUETTHE.CC_HESONGAYCONG=4) and (ST_GIOQUETTHE.NP_MA=''No6'') then 8-ST_GIOQUETTHE.CC_GIOBINHTHUONG else 0 end) as L_NGHINo6');
    sql.Add('       ,Sum(case when (ST_GIOQUETTHE.CC_HESONGAYCONG=1 OR ST_GIOQUETTHE.CC_HESONGAYCONG=4) and (ST_GIOQUETTHE.NP_MA=''No7'') then 8-ST_GIOQUETTHE.CC_GIOBINHTHUONG else 0 end) as L_NGHINo7');
    sql.Add('       ,Sum(case when (ST_GIOQUETTHE.CC_HESONGAYCONG=1 OR ST_GIOQUETTHE.CC_HESONGAYCONG=4) and (ST_GIOQUETTHE.NP_MA=''F0'') then 8-ST_GIOQUETTHE.CC_GIOBINHTHUONG else 0 end) as L_NGHIF0');
    SQL.Add('From  HumanDB.['+ChamCong_Bonus.HrmsDBName+'].dbo.ST_NHANVIEN ST_NHANVIEN ');
    SQL.Add('INNER JOIN HumanDB.['+ChamCong_Bonus.HrmsDBName+'].dbo.ST_GIOQUETTHE ST_GIOQUETTHE ON ST_NHANVIEN.NV_MA = ST_GIOQUETTHE.NV_MA');
    //

    SQL.Add('Left join (');
    SQL.Add('select * from (');
    SQL.Add('Select ST_GIOQUETTHE.NV_MA,ST_GIOQUETTHE.DV_MATL as DV_MA,ST_GIOQUETTHE.QT_NGAY,ROW_NUMBER() over (PARTITION BY NV_MA ORDER BY QT_NGAY DESC) as  rn');
    SQL.Add('from HumanDB.['+ChamCong_Bonus.HrmsDBName+'].dbo.ST_GIOQUETTHE ST_GIOQUETTHE');
    SQL.Add('INNER JOIN HumanDB.['+ChamCong_Bonus.HrmsDBName+'].dbo.ST_DONVI ST_DONVI ON ST_GIOQUETTHE.DV_MATL = ST_DONVI.DV_MA ');
    SQL.Add('where  ST_GIOQUETTHE.QT_NGAY BETWEEN '''+formatdatetime('yyyy/MM/dd',sdate)+'''  AND '''+formatdatetime('yyyy/MM/dd',edate)+'''  and ST_DONVI.X_MA_ <>''TAM''  ');
    SQL.Add(' ) ST_GIOQUETTHE where rn=1 ) ST_GIOQUETTHE_NV on ST_GIOQUETTHE_NV.NV_MA=ST_NHANVIEN.NV_MA ');

    //
    SQL.Add('LEFT JOIN HumanDB.['+ChamCong_Bonus.HrmsDBName+'].dbo.ST_DONVI ST_DONVI ON ST_GIOQUETTHE_NV.DV_MA = ST_DONVI.DV_MA');
    SQL.Add('LEFT JOIN HumanDB.['+ChamCong_Bonus.HrmsDBName+'].dbo.ST_CONGVIEC ST_CONGVIEC ON ST_NHANVIEN.CV_MA = ST_CONGVIEC.CV_MA');
    SQL.Add('LEFT JOIN HumanDB.['+ChamCong_Bonus.HrmsDBName+'].dbo.ST_CHUCVU ST_CHUCVU  ON ST_NHANVIEN.CVU_MA = ST_CHUCVU.CVU_MA');
    SQL.Add('LEFT join HumanDB.['+ChamCong_Bonus.HrmsDBName+'].dbo.ST_THANG ST_THANG on ST_THANG.T_MA='''+CBX2.Text+'-'+CBX1.Text+''' ');
    SQL.Add('LEFT JOIN (Select NV_MA,Min(NGAY) as NGAY,Max(DV_MA) as DV_MA from HumanDB.['+ChamCong_Bonus.HrmsDBName+'].dbo.IT_CHUYENDONVI IT_CHUYENDONVI where IT_CHUYENDONVI.DV_MA='''' AND NGAY BETWEEN '''+formatdatetime('yyyy/MM/dd',sdate)+'''  AND '''+formatdatetime('yyyy/MM/dd',edate)+''' Group by NV_MA) IT_CHUYENDONVI ON ST_NHANVIEN.NV_Ma=IT_CHUYENDONVI.NV_MA ');
    SQL.Add('WHERE ST_NHANVIEN.NV_MA NOT IN (SELECT NV_MA FROM HumanDB.['+ChamCong_Bonus.HrmsDBName+'].dbo.ST_NHANVIENTHOIVIEC ST_NHANVIENTHOIVIEC where TV_NgayThoiViec<'''+formatdatetime('yyyy/MM/dd',sdate)+''') ');
    //SQL.Add('   AND ST_NHANVIEN.NV_Ma NOT IN (SELECT NV_MA AS NGAY FROM HumanDB.['+ChamCong_Bonus.HrmsDBName+'].dbo.IT_CHUYENDONVI IT_CHUYENDONVI WHERE DV_MA='''' and  NGAY<'''+formatdatetime('yyyy/MM/dd',sdate)+''')  ');
    SQL.Add('   AND ST_NHANVIEN.NV_Ma NOT IN ( SELECT IT_CHUYENDONVI.NV_MA');
    SQL.Add('                               FROM HumanDB.['+ChamCong_Bonus.HrmsDBName+'].dbo.IT_CHUYENDONVI IT_CHUYENDONVI left join HumanDB.['+ChamCong_Bonus.HrmsDBName+'].dbo.ST_NHANVIEN ST_NHANVIEN ');
    SQL.Add('             									on IT_CHUYENDONVI.NV_MA=ST_NHANVIEN.NV_MA');
    SQL.Add(' 									            WHERE IT_CHUYENDONVI.DV_MA='''' and  NGAY<'''+formatdatetime('yyyy/MM/dd',sdate)+'''');
    SQL.Add(' 									            and ST_NHANVIEN.DV_MA in (select DV_MA from HumanDB.['+ChamCong_Bonus.HrmsDBName+'].dbo.ST_DONVI ST_DONVI where DV_TV = 1))');
    SQL.Add('   AND IsNull(ST_NHANVIEN.DV_MA,'''')<>''''  ');
    SQL.Add('	  AND ST_NHANVIEN.NV_NGAYVAO <= '''+formatdatetime('yyyy/MM/dd',edate)+''' ');
    SQL.Add('	  AND ST_GIOQUETTHE.QT_NGAY BETWEEN '''+formatdatetime('yyyy/MM/dd',sdate)+'''  AND '''+formatdatetime('yyyy/MM/dd',edate)+''' ');
    //億春A廠區 查詢SubSQL
    if SubSQL<>'' then SQL.Add(SubSQL);
    //
    if NV_MAEdit.Text<>'' then
    SQL.Add('      AND ST_NHANVIEN.NV_MA like '''+NV_MAEdit.Text+'%'' ');
    if DonviCombo.Text<>'' then
    begin
      if Pos('/',DONVICombo.Text)>0 then
         SQL.Add('      AND ST_DONVI.DV_MA='''+Copy(DONVICombo.Text,1,Pos('/',DONVICombo.Text)-1)+''' ')
      else
         SQL.Add('      AND ST_DONVI.DV_MA like '''+DONVICombo.Text+'%''');
    end;
    //不包含
    if DONVIMAEdit.Text <>'' then
        SQL.Add('       '+StringReplace(DV_MA_SQL, ':DV_MA', 'ST_DONVI.DV_MA',[rfReplaceAll, rfIgnoreCase]));
    SQL.Add('Group by ST_NHANVIEN.NV_Ma,ST_NHANVIEN.NV_Ten, ST_GIOQUETTHE_NV.DV_MA,ST_DONVI.DV_Ten,  ST_NHANVIEN.NV_Ngayvao,ST_NHANVIEN.CV_MA,ST_CONGVIEC.CV_TEN,ISNULL(IT_DDNGHIVIEC,0),IT_CHUYENDONVI.NGAY,IT_CHUYENDONVI.DV_MA,ST_NHANVIEN.NV_NgayTV, ');
    SQL.Add('         ST_NHANVIEN.CVU_MA, ST_CHUCVU.CVU_TEN, ST_NHANVIEN.CM_MA,ST_CONGVIEC.CV_TEN, ST_THANG.T_SONGAYCONG ');
    SQL.Add(') ST_LUONG ');
    SQL.Add('Order by DV_MA,NV_MA');
    //
    //funcObj.WriteErrorLog(sql.Text);
    Active:=true;
  end;

end;

end.
