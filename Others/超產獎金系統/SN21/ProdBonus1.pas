unit ProdBonus1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, Vcl.StdCtrls, Vcl.Buttons, EhLibVCL, GridsEh,
  DBAxisGridsEh, DBGridEh, Vcl.ExtCtrls, Vcl.ComCtrls, Data.DB,
  MyADOQuery, Data.Win.ADODB , Dateutils, Vcl.Menus, MyADOUpdateSQL, ComObj;

type
  TProdBonus = class(TForm)
    PC1: TPageControl;
    TabSheet1: TTabSheet;
    Panel1: TPanel;
    Label1: TLabel;
    Label7: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    Query1: TButton;
    CBX1: TComboBox;
    CBX2: TComboBox;
    DepNOEdit: TEdit;
    DepNMEdit: TEdit;
    DBGridEh2: TDBGridEh;
    BonusPanel: TPanel;
    DBGrideh1: TDBGridEh;
    DBGridEh6: TDBGridEh;
    TabSheet4: TTabSheet;
    Panel4: TPanel;
    BB2: TBitBtn;
    BB4: TBitBtn;
    BB3: TBitBtn;
    BB5: TBitBtn;
    BB6: TBitBtn;
    BB7: TBitBtn;
    BB1: TBitBtn;
    bbt6: TBitBtn;
    Panel5: TPanel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Query4: TButton;
    CBX5: TComboBox;
    CBX6: TComboBox;
    DV_MAEdit: TEdit;
    DV_TenEdit: TEdit;
    ProdCK: TCheckBox;
    ClzmlbComb: TComboBox;
    DBGridEh5: TDBGridEh;
    TabSheet2: TTabSheet;
    Panel2: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Query2: TButton;
    CBX3: TComboBox;
    CBX4: TComboBox;
    DepNO1Edit: TEdit;
    DepNM1Edit: TEdit;
    DBGridEh3: TDBGridEh;
    ProdSumQty: TADOQuery;
    ProdSumQtyiYear: TStringField;
    ProdSumQtyiMonth: TStringField;
    ProdSumQtyQty: TFMTBCDField;
    ProdSumQtybzQty: TIntegerField;
    ProdSumQtyDiffQty: TFMTBCDField;
    DS2: TDataSource;
    ProdQty: TADOQuery;
    ProdQtyiYear: TStringField;
    ProdQtyiMonth: TStringField;
    ProdQtyDepNO: TStringField;
    ProdQtyDepName: TStringField;
    ProdQtyQty: TFMTBCDField;
    ProdQtybzQty: TIntegerField;
    ProdQtyPerson: TFMTBCDField;
    DS1: TDataSource;
    IT_TIENSANLUONGQry: TMyADOQuery;
    IT_TIENSANLUONGQryT_MA: TWideStringField;
    IT_TIENSANLUONGQryUSACC: TFloatField;
    IT_TIENSANLUONGQryVNACC: TLargeintField;
    IT_TIENSANLUONGQryStaffVNPrice: TLargeintField;
    IT_TIENSANLUONGQryUserID: TStringField;
    IT_TIENSANLUONGQryUserDate: TDateTimeField;
    IT_TIENSANLUONGQryYN: TStringField;
    DS6: TDataSource;
    Upd_TIENSANLUONGQry: TMyADOUpdateSQL;
    PopupMenu6: TPopupMenu;
    Import1: TMenuItem;
    N1: TMenuItem;
    Modify1: TMenuItem;
    Save1: TMenuItem;
    Cancel1: TMenuItem;
    Qtemp: TADOQuery;
    ReplQty: TADOQuery;
    ReplQtyiYear: TStringField;
    ReplQtyiMonth: TStringField;
    ReplQtySumline: TStringField;
    ReplQtyID: TStringField;
    ReplQtyDepName: TStringField;
    ReplQtyDelACCUS: TBCDField;
    ReplQtyReACCUS: TBCDField;
    ReplQtyPerson: TBCDField;
    DS3: TDataSource;
    IT_HESOSANLUONGQry: TMyADOQuery;
    IT_HESOSANLUONGQryT_MA: TWideStringField;
    IT_HESOSANLUONGQryDV_MA: TWideStringField;
    IT_HESOSANLUONGQryDV_TEN: TWideStringField;
    IT_HESOSANLUONGQryPScore: TFloatField;
    IT_HESOSANLUONGQryQScore: TFloatField;
    IT_HESOSANLUONGQryRScore: TFloatField;
    IT_HESOSANLUONGQryTScore: TFloatField;
    IT_HESOSANLUONGQryHESO: TFloatField;
    IT_HESOSANLUONGQryClzmlb: TStringField;
    IT_HESOSANLUONGQryUserID: TStringField;
    IT_HESOSANLUONGQryUserDate: TDateTimeField;
    IT_HESOSANLUONGQryYN: TStringField;
    DS5: TDataSource;
    UpdIT_HESOSANLUONG: TMyADOUpdateSQL;
    PopupMenu5: TPopupMenu;
    mnu1: TMenuItem;
    IT_TIENSANLUONGQryStdQty: TIntegerField;
    IT_TIENSANLUONGQryProdQty: TIntegerField;
    CalProdAndBuBtn: TButton;
    CalNhomBtn: TButton;
    IT_TIENSANLUONGQryExchange: TIntegerField;
    IT_TIENSANLUONGQryStaffTotal: TIntegerField;
    ProdSumQtyInQty: TIntegerField;
    IT_TIENSANLUONGQryBasicUSACC: TFloatField;
    IT_TIENSANLUONGQryMinUSACC: TFloatField;
    ExcelRepBtn: TButton;
    IT_TIENSANLUONGQryGSBH: TStringField;
    IT_HESOSANLUONGQryGSBH: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Query1Click(Sender: TObject);
    procedure IT_TIENSANLUONGQryAfterOpen(DataSet: TDataSet);
    procedure IT_TIENSANLUONGQryBeforeClose(DataSet: TDataSet);
    procedure Import1Click(Sender: TObject);
    procedure Modify1Click(Sender: TObject);
    procedure Save1Click(Sender: TObject);
    procedure Cancel1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Query2Click(Sender: TObject);
    procedure Query4Click(Sender: TObject);
    procedure bbt6Click(Sender: TObject);
    procedure mnu1Click(Sender: TObject);
    procedure BB3Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure IT_HESOSANLUONGQryAfterOpen(DataSet: TDataSet);
    procedure IT_HESOSANLUONGQryBeforeClose(DataSet: TDataSet);
    procedure BB6Click(Sender: TObject);
    procedure IT_HESOSANLUONGQryPScoreSetText(Sender: TField;
      const Text: string);
    procedure CalProdAndBuBtnClick(Sender: TObject);
    procedure CalNhomBtnClick(Sender: TObject);
    procedure ExcelRepBtnClick(Sender: TObject);
  private
    { Private declarations }
    procedure InitUpdateSQL();
  public
    { Public declarations }
  end;

var
  ProdBonus: TProdBonus;

implementation
   uses DM1, main1, IT_ORGLEVEL_Show1, FunUnit;
{$R *.dfm}

procedure TProdBonus.InitUpdateSQL();
begin
   //
   with Upd_TIENSANLUONGQry.ZModifyCommandObj do
   begin
     SQL.Clear;
     SQL.Add('Update '+DM2.LocalDBName+'.dbo.IT_TIENSANLUONG');
     SQL.Add('Set ');
     SQL.Add('  ProdQty=:ProdQty,');
     SQL.Add('  StdQty=:StdQty,');
     SQL.Add('  BasicUSACC=:BasicUSACC,');
     SQL.Add('  MinUSACC=:MinUSACC,');
     SQL.Add('  USACC=:USAcc,');
     SQL.Add('  Exchange =:Exchange,');
     SQL.Add('  VNACC =:VNACC,');
     SQL.Add('  StaffVNPrice =:StaffVNPrice,');
     SQL.Add('  StaffTotal =:StaffTotal,');
     SQL.Add('  UserID =:UserID,');
     SQL.Add('  UserDate =:UserDate');
     SQL.Add('where ');
     SQL.Add('  T_MA =:OLD_T_MA');
     SQL.Add('  And GSBH =:OLD_GSBH ');
   end;

   with UpdIT_HESOSANLUONG.ZDeleteCommandObj do
   begin
     SQL.Clear;
     SQL.Add('Delete from '+DM2.LocalDBName+'.dbo.IT_HESOSANLUONG');
     SQL.Add('where T_MA =:OLD_T_MA');
     SQL.Add('    and DV_MA =:OLD_DV_MA');
     SQL.Add('    and GSBH =:OLD_GSBH ');
   end;

   with UpdIT_HESOSANLUONG.ZInsertCommandObj do
   begin
     SQL.Clear;
     SQL.Add('Insert into '+DM2.LocalDBName+'.dbo.IT_HESOSANLUONG');
     SQL.Add('  (T_MA, GSBH, DV_MA, PScore, QScore, RScore, TSocre, HESO, UserID, UserDate, YN)');
     SQL.Add('Values');
     SQL.Add('  (:T_MA, :GSBH, :DV_MA, :PScore, :QScore, :RScore, :TSocre, :HESO, :UserID, :UserDate, :YN)');
   end;

   with UpdIT_HESOSANLUONG.ZModifyCommandObj do
   begin
     SQL.Clear;
     SQL.Add('Update '+DM2.LocalDBName+'.dbo.IT_HESOSANLUONG  ');
     SQL.Add(' Set');
     SQL.Add('    PScore =:PScore,');
     SQL.Add('    QScore =:QScore,');
     SQL.Add('    RScore =:RScore,');
     SQL.Add('    TScore =:TScore,');
     SQL.Add('    HESO =:HESO,');
     SQL.Add('    UserID =:UserID,');
     SQL.Add('    UserDate =:UserDate');
     SQL.Add('where T_MA =:OLD_T_MA');
     SQL.Add('    and DV_MA =:OLD_DV_MA');
     SQL.Add('    and GSBH =:OLD_GSBH ');
   end;
   //
end;

procedure TProdBonus.BB3Click(Sender: TObject);
begin
  with IT_HESOSANLUONGQry do
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

procedure TProdBonus.BB5Click(Sender: TObject);
var i:integer;
begin
  IT_HESOSANLUONGQry.First;
  while Not IT_HESOSANLUONGQry.Eof do
  begin
    if ((IT_HESOSANLUONGQry.FieldByName('HESO').Value>1) or (IT_HESOSANLUONGQry.FieldByName('HESO').Value<0)) then
    begin
      Showmessage('Heso must between 0~1, please check ');
      abort;
    end;
    IT_HESOSANLUONGQry.Next;
  end;
  //
  IT_HESOSANLUONGQry.First;
  for i := 0 to  IT_HESOSANLUONGQry.RecordCount-1 do
  begin
    case IT_HESOSANLUONGQry.UpdateStatus of
       usInserted:
       begin
       end;
       usModified:
       begin
         if IT_HESOSANLUONGQry.FieldByName('YN').AsString='0' then
         begin
         end else
         begin
           IT_HESOSANLUONGQry.Edit;
           IT_HESOSANLUONGQry.FieldByName('HESO').Value:=IT_HESOSANLUONGQry.FieldByName('PScore').Value+IT_HESOSANLUONGQry.FieldByName('QScore').Value+IT_HESOSANLUONGQry.FieldByName('RScore').Value+IT_HESOSANLUONGQry.FieldByName('TScore').Value;
           IT_HESOSANLUONGQry.FieldByName('USERID').AsString:=main.UserID;
           IT_HESOSANLUONGQry.FieldByName('USERDATE').Value:=Date;
           UpdIT_HESOSANLUONG.Apply(ukModify);
         end;
       end;
    end;
    IT_HESOSANLUONGQry.Next;
  end;
  //
  IT_HESOSANLUONGQry.Active:=false;
  IT_HESOSANLUONGQry.LockType:=ltReadOnly;
  IT_HESOSANLUONGQry.Active:=true;
  BB5.Enabled:=false;
  BB6.Enabled:=false;
  IT_TIENSANLUONGQry.Active:=true;
end;

procedure TProdBonus.BB6Click(Sender: TObject);
begin
  with IT_HESOSANLUONGQry do
  begin
    Active:=false;
    LockType:=ltReadOnly;
    Active:=true;
  end;
  BB5.Enabled:=false;
  BB6.Enabled:=false;
end;

procedure TProdBonus.bbt6Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin
  if  IT_HESOSANLUONGQry.active  then
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
        for   i:=0   to   IT_HESOSANLUONGQry.fieldcount-1   do
        begin
          eclApp.Cells(1,i+1):=IT_HESOSANLUONGQry.fields[i].FieldName;
        end;
        IT_HESOSANLUONGQry.First;
        j:=2;
        while   not   IT_HESOSANLUONGQry.Eof   do
        begin
          for   i:=0   to  IT_HESOSANLUONGQry.fieldcount-1  do
          begin
            eclApp.Cells(j,i+1):=IT_HESOSANLUONGQry.Fields[i].AsString;
          end;
          IT_HESOSANLUONGQry.Next;
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

procedure TProdBonus.CalNhomBtnClick(Sender: TObject);
var  iYear,iMonth:word;
     sDate,eDate:Tdate;
begin
  if  Messagedlg(Pchar('Ban muon tinh lai khong?'),mtInformation,[mbNo,mbYes],0)=mrYes then
  begin
    if (CBX5.text='') or (CBX6.text='')  then
    begin
      showmessage('You have to select the year and month first.');
      abort;
    end;
    iYear:=strtoint(CBX5.Text);
    iMonth:=strtoint(CBX6.Text);
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
    //管理單位係數
    with Qtemp do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('Update '+DM2.LocalDBName+'.dbo.IT_HESOSANLUONG Set PSCore=A.PSCore, QScore=A.QScore, RScore=A.RSocre, TScore=A.TScore ,UserID='''+main.UserID+''' ,UserDate=GetDate()');
      SQL.Add('from (');
      SQL.Add('Select IT_ORGLEVEL.DV_MA,Avg(PSCore) as PSCore, Avg(QScore) as QScore,Avg(RScore) as RSocre, Avg(TScore) as TScore ');
      SQL.Add('From '+DM2.LocalDBName+'.dbo.IT_HESOSANLUONG IT_HESOSANLUONG ');
      SQL.Add('inner join '+DM2.LocalDBName+'.dbo.IT_ORGLEVEL IT_ORGLEVEL on IT_ORGLEVEL.DV_MA1=IT_HESOSANLUONG.DV_MA');
      SQL.Add('where IT_HESOSANLUONG.T_MA='''+CBX6.text+'-'+CBX5.text+''' ');
      SQL.Add('Group by IT_ORGLEVEL.DV_MA ) A');
      SQL.Add('where '+DM2.LocalDBName+'.dbo.IT_HESOSANLUONG.T_MA='''+CBX6.text+'-'+CBX5.text+''' and '+DM2.LocalDBName+'.dbo.IT_HESOSANLUONG.DV_MA=A.DV_MA');
      ExecSQL();
    end;
    //更新總係數
    with  Qtemp do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('Update '+DM2.LocalDBName+'.dbo.IT_HESOSANLUONG set HESO=PScore+QScore+RScore+TScore where '+DM2.LocalDBName+'.dbo.IT_HESOSANLUONG.T_MA='''+CBX6.Text+'-'+CBX5.Text+'''  ');
      ExecSQL();
    end;
    //
    Showmessage('Success');
  end;
end;

procedure TProdBonus.CalProdAndBuBtnClick(Sender: TObject);
var  iYear,iMonth:word;
     sDate,eDate:Tdate;
     Info:String;
begin
  if  Messagedlg(Pchar('Ban muon tinh lai khong?'),mtInformation,[mbNo,mbYes],0)=mrYes then
  begin
    if (CBX5.text='') or (CBX6.text='')  then
    begin
      showmessage('You have to select the year and month first.');
      abort;
    end;
    iYear:=strtoint(CBX5.Text);
    iMonth:=strtoint(CBX6.Text);
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

    //檢查連結ID_HRM是否為空值
    with Qtemp do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('Select SCBB.DepNO,BDepartment.DepName');
      SQL.Add('from SCBB ');
      SQL.Add('left join SCBBS on  SCBB.ProNo=SCBBS.ProNo');
      SQL.Add('left join BDepartment on BDepartment.ID=SCBB.DepNo  ');
      SQL.Add('where  convert(smalldatetime,convert(varchar,SCBB.SCDate,111)) between ');
      SQL.add('           '''+Formatdatetime('yyyy/MM/dd',sdate)+''' and '''+Formatdatetime('yyyy/MM/dd',edate)+''''  );
      SQL.Add('       and SCBB.GSBH ='''+main.mGSBH+'''  and (IsNull(BDepartment.sumline,'''')='''' or IsNull(BDepartment.ID_HRM,'''')='''')');
      SQL.Add('Group by SCBB.DepNO,BDepartment.DepName');
      Active:=true;
      if RecordCount>0 then
      begin
        while not Eof do
        begin
          Info:=Info+FieldByName('DepName').AsString+#13#10;
          Next;
        end;
        Showmessage(Info+'Don''t have Department vs HRM_ID, Please contact with IT');
        //abort;
      end;
      Active:=false;
    end;
    //產量績效分數
    with Qtemp do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('Update '+DM2.LocalDBName+'.dbo.IT_HESOSANLUONG set PScore=SCBBS.Score,UserID='''+main.UserID+''',UserDate=GetDate() ');
      SQL.Add('from ( ');
      SQL.Add('Select SCBBS.iYear,SCBBS.iMonth,SCBBS.sumline,BDepartment.ID,BDepartment.DepName,SCBBS.Person,BDepartment.ID_HRM');
      SQL.Add('       ,Case when SCBBS.Person>=100 then 0.4  ');
      SQL.Add('	         when SCBBS.Person<100 and SCBBS.Person>=95 then 0.3');
      SQL.Add('			     when SCBBS.Person<95 and SCBBS.Person>=90 then 0.25');
      SQL.Add('	         when SCBBS.Person<90 then 0.2 end as Score');
      SQL.Add('from (');
      SQL.Add('Select '''+CBX5.Text+''' as iYear,'''+CBX6.Text+''' as iMonth,SCBBS.*,Round(Qty/bzQty*100,1) as Person from (');
      SQL.Add('Select SCBB.DepNO,BDepartment.Sumline,BDepartment.DepName,');
      SQL.Add('        sum(isnull(SCBBS.Qty,0)) as Qty,isnull(SCBZCL.Qty,0) as bzQty');
      SQL.Add('from SCBB ');
      SQL.Add('left join SCBBS on  SCBB.ProNo=SCBBS.ProNo');
      SQL.Add('left join BDepartment on BDepartment.ID=SCBB.DepNo  ');
      SQL.Add('left join (select sum(SCBZCL.Qty) as Qty,SCBZCL.DepNo from SCBZCL');
      SQL.Add('           where SCBZCL.BZDate between');
      SQL.add('           '''+Formatdatetime('yyyy/MM/dd',sdate)+''' and '''+Formatdatetime('yyyy/MM/dd',edate)+''''  );
      SQL.Add('           group by SCBZCL.DepNo ) SCBZCL  on SCBZCL.DepNo=SCBB.DepNo');
      SQL.Add('left join DDZL on DDZl.ZLBH=SCBBS.SCBH ');
      SQL.Add('where  convert(smalldatetime,convert(varchar,SCBB.SCDate,111)) between ');
      SQL.add('           '''+Formatdatetime('yyyy/MM/dd',sdate)+''' and '''+Formatdatetime('yyyy/MM/dd',edate)+''''  );
      SQL.Add('       and SCBB.GSBH ='''+main.mGSBH+'''');
      SQL.Add('       and (SCBBS.GXLB=''A'') and BDepartment.YN=1');
      SQL.Add('Group by SCBB.DepNo,BDepartment.Sumline,BDepartment.DepName,SCBZCL.Qty) SCBBS ) SCBBS');
      SQL.Add('Left join BDepartment on BDepartment.Sumline =SCBBS.Sumline ) SCBBS');
      SQL.Add('where '+DM2.LocalDBName+'.dbo.IT_HESOSANLUONG.T_MA='''+CBX6.Text+'-'+CBX5.Text+''' and '+DM2.LocalDBName+'.dbo.IT_HESOSANLUONG.DV_MA=SCBBS.ID_HRM and '+DM2.LocalDBName+'.dbo.IT_HESOSANLUONG.GSBH='''+main.mGSBH+'''  ');
      //funcObj.WriteErrorLog(sql.Text);
      ExecSQL();
    end;
    //補料分數
    with Qtemp do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('if object_id(''tempdb..#KCLLS'') is not null  ');
      SQL.Add('begin   drop table #KCLLS end   ');
      SQL.Add('select KCLL.DepID,BDepartment.DepName,BDepartment.SumLine,');
      SQL.Add('       isnull(KCLLS.YYBH,'''') as YYBH,KCLLS.Qty,CLLBFYS.FYLB,');
      SQL.Add('       KCLLS.CLBH,isnull(KCLLS.BLSB,'''') as BLSB,KCLL.CFMDate');
      SQL.Add('into #KCLLS ');
      SQL.Add('from KCLLS ');
      SQL.Add('left join KCLL  on KCLL.LLNO=KCLLS.LLNO');
      SQL.Add('left join BDepartment  on BDepartment.ID=KCLL.DepID');
      SQL.Add('left join CLLBFYS  on CLLBFYS.CLBH=KCLLS.CLBH and KCLL.GSBH=CLLBFYS.GSBH');
      SQL.Add('where convert(smalldatetime,convert(varchar,KCLL.CFMDate,111)) between');
      SQL.add('                 '''+formatdatetime('yyyy/MM/dd',sdate)+'''and '''+formatdatetime('yyyy/MM/dd',edate)+''''  );
      SQL.Add('      and KCLL.CFMID<>''NO''');
      SQL.Add('      and KCLLS.Qty<>0');
      SQL.Add('      and BDepartment.GSBH='''+main.mGSBH+''' and BDepartment.GXLB in (''C'',''S'',''A'')');
      //
      SQL.Add('Update '+DM2.LocalDBName+'.dbo.IT_HESOSANLUONG set RScore=KCLLS.Score,UserID='''+main.UserID+''',UserDate=GetDate() ');
      SQL.Add('from (');
      SQL.Add('Select AllData.*,');
      SQL.Add('       case when Person <0.5 then 0.2');
      SQL.Add('	        when Person >=0.5 and Person<1 then 0.15');
      SQL.Add('			when Person >=1 and Person <2 then 0.1');
      SQL.Add('			when Person >=2 then 0 end Score');
      SQL.Add('from (');
      //有課別管理層級
      SQL.Add('	Select * from (');
      SQL.Add('	Select A.ORG_DV_MA,IT_ORGLEVEL.DV_MA1 as DV_MA,A.Person ');
      SQL.Add('	from ( Select ORG_DV_MA,Avg(Person) as Person from (');
      SQL.Add('	Select KCLLS.iYear,KCLLS.iMonth,KCLLS.sumline,BDepartment.ID,BDepartment.DepName,KCLLS.Person,BDepartment.ID_HRM, ');
      SQL.Add('		  IT_ORGLEVEL.DV_MA as ORG_DV_MA');
      SQL.Add('	from (');
      SQL.Add('	Select '''+CBX5.Text+''' as iYear,'''+CBX6.Text+''' as iMonth,DelACC.Sumline,BDepartment.ID,BDepartment.DepName,DelACC.ACCUS as DelACCUS,IsNull(RepACC.ACCUS,0) as ReACCUS,IsNull(RepACC.ACCUS,0)/DelACC.ACCUS*100 as Person from  (');
      SQL.Add('	Select #KCLLS.Sumline,sum(#KCLLS.Qty*isnull(CWDJ.USPrice,0)) as ACCUS,'' DelACC'' as SB');
      SQL.Add('	from #KCLLS ');
      SQL.Add('	left join CWDJ on CWDJ.CLBH=#KCLLS.CLBH ');
      SQL.Add('					  and CWDJ.DJYear=convert(varchar,datepart(yyyy,#KCLLS.CFMDate)) ');
      SQL.Add('					  and CWDJ.DJMonth=convert(varchar,datepart(MM,#KCLLS.CFMDate)) ');
      SQL.Add('	where 1=1');
      SQL.Add('	group by #KCLLS.Sumline ) DelACC');
      SQL.Add('	left join (');
      SQL.Add('	Select #KCLLS.Sumline,sum(#KCLLS.Qty*isnull(CWDJ.USPrice,0)) as ACCUS,'' RepACC'' as SB');
      SQL.Add('	from #KCLLS ');
      SQL.Add('	left join CWDJ on CWDJ.CLBH=#KCLLS.CLBH ');
      SQL.Add('					  and CWDJ.DJYear=convert(varchar,datepart(yyyy,#KCLLS.CFMDate)) ');
      SQL.Add('					  and CWDJ.DJMonth=convert(varchar,datepart(MM,#KCLLS.CFMDate)) ');
      SQL.Add('	where #KCLLS.BLSB=''Y'' ');
      SQL.Add('	group by #KCLLS.Sumline ) RepACC on RepACC.Sumline=DelACC.Sumline');
      SQL.Add('	left join BDepartment  on BDepartment.sumline=DelACC.Sumline and BDepartment.GXLB=''A'' ');
      SQL.Add('	) KCLLS');
      SQL.Add('	Left join BDepartment on BDepartment.Sumline =KCLLS.Sumline');
      SQL.Add('	inner join '+DM2.LocalDBName+'.dbo.IT_ORGLEVEL IT_ORGLEVEL on IT_ORGLEVEL.DV_MA1=BDepartment.ID_HRM ) A');
      SQL.Add('	Group by ORG_DV_MA ) A');
      SQL.Add('	Left join '+DM2.LocalDBName+'.dbo.IT_ORGLEVEL IT_ORGLEVEL on IT_ORGLEVEL.DV_MA=A.ORG_DV_MA ) A');
      SQL.Add(' union all');
      //沒有設定課別管理層級
      SQL.Add('	Select ID_HRM,ID_HRM as DV_MA,Person from (');
      SQL.Add('	Select KCLLS.iYear,KCLLS.iMonth,KCLLS.sumline,BDepartment.ID,BDepartment.DepName,KCLLS.Person,BDepartment.ID_HRM, ');
      SQL.Add('		  IT_ORGLEVEL.DV_MA as ORG_DV_MA');
      SQL.Add('	from (');
      SQL.Add('	Select '''+CBX5.Text+''' as iYear,'''+CBX6.Text+''' as iMonth,DelACC.Sumline,BDepartment.ID,BDepartment.DepName,DelACC.ACCUS as DelACCUS,IsNull(RepACC.ACCUS,0) as ReACCUS,IsNull(RepACC.ACCUS,0)/DelACC.ACCUS*100 as Person from  (');
      SQL.Add('	Select #KCLLS.Sumline,sum(#KCLLS.Qty*isnull(CWDJ.USPrice,0)) as ACCUS,'' DelACC'' as SB');
      SQL.Add('	from #KCLLS ');
      SQL.Add('	left join CWDJ on CWDJ.CLBH=#KCLLS.CLBH ');
      SQL.Add('	               and CWDJ.DJYear=convert(varchar,datepart(yyyy,#KCLLS.CFMDate)) ');
      SQL.Add('	               and CWDJ.DJMonth=convert(varchar,datepart(MM,#KCLLS.CFMDate)) ');
      SQL.Add('	where 1=1');
      SQL.Add('	group by #KCLLS.Sumline ) DelACC');
      SQL.Add('	left join (');
      SQL.Add('	Select #KCLLS.Sumline,sum(#KCLLS.Qty*isnull(CWDJ.USPrice,0)) as ACCUS,'' RepACC'' as SB');
      SQL.Add('	from #KCLLS ');
      SQL.Add('	left join CWDJ on CWDJ.CLBH=#KCLLS.CLBH ');
      SQL.Add('           and CWDJ.DJYear=convert(varchar,datepart(yyyy,#KCLLS.CFMDate)) ');
      SQL.Add('	          and CWDJ.DJMonth=convert(varchar,datepart(MM,#KCLLS.CFMDate)) ');
      SQL.Add('	where #KCLLS.BLSB=''Y'' ');
      SQL.Add('	group by #KCLLS.Sumline ) RepACC on RepACC.Sumline=DelACC.Sumline');
      SQL.Add('	left join BDepartment  on BDepartment.sumline=DelACC.Sumline and BDepartment.GXLB=''A'' ');
      SQL.Add('	) KCLLS');
      SQL.Add('	Left join BDepartment on BDepartment.Sumline =KCLLS.Sumline');
      SQL.Add('	left join '+DM2.LocalDBName+'.dbo.IT_ORGLEVEL IT_ORGLEVEL on IT_ORGLEVEL.DV_MA1=BDepartment.ID_HRM');
      SQL.Add('	where IT_ORGLEVEL.DV_MA is null ) B  ');
      SQL.Add(')  as AllData ) KCLLS');
      SQL.Add('where '+DM2.LocalDBName+'.dbo.IT_HESOSANLUONG.T_MA='''+CBX6.Text+'-'+CBX5.Text+''' and '+DM2.LocalDBName+'.dbo.IT_HESOSANLUONG.DV_MA=KCLLS.DV_MA and '+DM2.LocalDBName+'.dbo.IT_HESOSANLUONG.GSBH='''+main.mGSBH+''' ');
      //funcObj.WriteErrorLog(sql.Text);
      ExecSQL();
    end;
    //更新總係數
    with  Qtemp do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('Update '+DM2.LocalDBName+'.dbo.IT_HESOSANLUONG set HESO=PScore+QScore+RScore+TScore where '+DM2.LocalDBName+'.dbo.IT_HESOSANLUONG.T_MA='''+CBX6.Text+'-'+CBX5.Text+''' and '+DM2.LocalDBName+'.dbo.IT_HESOSANLUONG.GSBH='''+main.mGSBH+''' ');
      ExecSQL();
    end;
    //
    showmessage('Success');
  end
end;

procedure TProdBonus.Cancel1Click(Sender: TObject);
begin
  with IT_TIENSANLUONGQry do
  begin
    Active:=false;
    LockType:=ltReadOnly;
    Active:=true;
  end;
  Save1.Enabled:=false;
  Cancel1.Enabled:=false;
end;

procedure TProdBonus.ExcelRepBtnClick(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin
  if  ReplQty.active  then
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
        for   i:=0   to   ReplQty.fieldcount-1   do
        begin
          eclApp.Cells(1,i+1):=ReplQty.fields[i].FieldName;
        end;
        ReplQty.First;
        j:=2;
        while   not   ReplQty.Eof   do
        begin
          for   i:=0   to  ReplQty.fieldcount-1  do
          begin
            eclApp.Cells(j,i+1):=ReplQty.Fields[i].AsString;
          end;
          ReplQty.Next;
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

procedure TProdBonus.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=CaFree;
end;

procedure TProdBonus.FormCreate(Sender: TObject);
var
  myYear, myMonth, myDay : Word;
  i,j:integer;
begin
  InitUpdateSQL();
  // Load year-month
  DecodeDate(Date()-15, myYear, myMonth, myDay);
  for i:=0 to CBX1.Items.Count-1 do
  begin
    if strtoint(CBX1.Items[i])=myYear then
    begin
      CBX1.ItemIndex:=i;
      CBX3.ItemIndex:=i;
      CBX5.ItemIndex:=i;
      break;
    end;
  end;
  for i:=0 to CBX2.Items.Count-1 do
  begin
    if strtoint(CBX2.Items[i])=myMonth then
    begin
      CBX2.ItemIndex:=i;
      CBX4.ItemIndex:=i;
      CBX6.ItemIndex:=i;
      break;
    end;
  end;
end;

procedure TProdBonus.FormDestroy(Sender: TObject);
begin
  ProdBonus:=nil;
end;

procedure TProdBonus.Import1Click(Sender: TObject);
var TotalStaff:integer;
    iMonth,iYear,bzQty,InQty:string;
begin
  if (Date()-IT_TIENSANLUONGQry.FieldByName('USERDATE').value)>3 then
  begin
    Showmessage('>3 Days, Is locked, it can''t import again');
    abort();
  end;
  iMonth:=ProdSumQty.FieldByName('iMonth').AsString;
  iYear:=ProdSumQty.FieldByName('iYear').AsString;
  bzQty:=ProdSumQty.FieldByName('bzQty').AsString;
  InQty:=ProdSumQty.FieldByName('InQty').AsString;
  if iMonth='' then iMonth:=CBX2.Text;
  if iYear='' then iYear:=CBX1.Text;
  if bzQty='' then bzQty:='0';
  if InQty='' then InQty:='0';
  //
  if ProdSumQty.Active=false then Exit;
  TotalStaff:=0;
  with QTemp do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Select Count(NV_MA) as TotalStaff from '+DM2.LocalDBName+'.dbo.IT_NHANVIENCHAMCONG IT_NHANVIENCHAMCONG ');
    SQL.Add('Left join '+DM2.LocalDBName+'.dbo.ST_DONVI ST_DONVI on ST_DONVI.DV_MA=IT_NHANVIENCHAMCONG.DV_MA ');
    SQL.Add('where IT_NHANVIENCHAMCONG.T_MA='''+iMonth+'-'+iYear+''' and IT_NHANVIENCHAMCONG.GSBH='''+main.mGSBH+''' and IT_NHANVIENCHAMCONG.HESONGAYCONG>0 and IsNull(ST_DONVI.Flag,'''')<>''TYTHAC'' ');
    Active:=true;
    if RecordCount>0 then
    TotalStaff:=QTemp.FieldByName('TotalStaff').Value;
    Active:=false;
  end;
  with Qtemp do
  begin
    Active:=false;
    SQL.Add('Delete from '+DM2.LocalDBName+'.dbo.IT_TIENSANLUONG where T_MA='''+iMonth+'-'+iYear+''' and GSBH='''+main.mGSBH+''' ');
    SQL.Add('Insert into '+DM2.LocalDBName+'.dbo.IT_TIENSANLUONG  ');
    SQL.Add(' (T_MA, GSBH, ProdQty, StdQty, BasicUSACC, MinUSACC, USACC, StaffTotal, UserID, UserDate, YN)' );
    SQL.Add('Values ');
    SQL.Add(' ('''+iMonth+'-'+iYear+''','''+main.mGSBH+''','+InQty+','+InQty+',120000,50000,0,'+inttostr(TotalStaff)+','''+main.UserID+''',GetDate(),1) ');
    ExecSQL();
  end;
  IT_TIENSANLUONGQry.Active:=false;
  IT_TIENSANLUONGQry.Active:=true;
  //
  Showmessage('Success');
end;

procedure TProdBonus.IT_HESOSANLUONGQryAfterOpen(DataSet: TDataSet);
begin
  IT_HESOSANLUONGQry.AfterOpenRecNo(DataSet);
  BB3.Enabled:=true;
  if (Date()-IT_HESOSANLUONGQry.FieldByName('USERDATE').value)>3 then
  begin
    BB3.Enabled:=false;
  end;
end;

procedure TProdBonus.IT_HESOSANLUONGQryBeforeClose(DataSet: TDataSet);
begin
  IT_HESOSANLUONGQry.BeforeCloseRecNo(DataSet);
end;

procedure TProdBonus.IT_HESOSANLUONGQryPScoreSetText(Sender: TField;
  const Text: string);
begin
  if ((strtofloat(Text)>1) or (strtofloat(Text)<0)) then
  begin
  end else
  begin
    Sender.Value:=Text;
    IT_HESOSANLUONGQry.Edit;
    IT_HESOSANLUONGQry.FieldByName('HESO').Value:=IT_HESOSANLUONGQry.FieldByName('PScore').Value+IT_HESOSANLUONGQry.FieldByName('QScore').Value+IT_HESOSANLUONGQry.FieldByName('RScore').Value+IT_HESOSANLUONGQry.FieldByName('TScore').Value;
    IT_HESOSANLUONGQry.Post;
  end;
end;

procedure TProdBonus.IT_TIENSANLUONGQryAfterOpen(DataSet: TDataSet);
begin
  iT_TIENSANLUONGQry.AfterOpenRecNo(DataSet);
  if IT_TIENSANLUONGQry.RecordCount>0 then
  begin
    Modify1.Enabled:=true;
  end else
  begin
    Modify1.Enabled:=false;
    Save1.Enabled:=false;
    Cancel1.Enabled:=false;
  end;
  if (Date()-IT_TIENSANLUONGQry.FieldByName('USERDATE').value)>3 then
  begin
    Modify1.Enabled:=false;
  end;
end;

procedure TProdBonus.IT_TIENSANLUONGQryBeforeClose(DataSet: TDataSet);
begin
  IT_TIENSANLUONGQry.BeforeCloseRecNo(DataSet);
end;

procedure TProdBonus.mnu1Click(Sender: TObject);
begin
  IT_ORGLEVEL_Show:=TIT_ORGLEVEL_Show.Create(self);
  IT_ORGLEVEL_Show.ShowModal();
end;

procedure TProdBonus.Modify1Click(Sender: TObject);
begin
  with IT_TIENSANLUONGQry do
  begin
    if LockType<>ltBatchOptimistic then
    begin
     Active:=false;
     LockType:=ltBatchOptimistic;
     Active:=true;
    end;
    Edit;
  end;
  Save1.Enabled:=true;
  Cancel1.Enabled:=true;
end;

procedure TProdBonus.Query1Click(Sender: TObject);
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

  with ProdQty do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Select '''+CBX1.text+''' as iYear,'''+CBX2.text+''' as iMonth,SCBBS.*,Round(Qty/bzQty*100,1) as Person from (');
    SQL.Add('Select SCBB.DepNO, BDepartment.DepName,');
    SQL.Add('        sum(isnull(SCBBS.Qty,0)) as Qty,isnull(SCBZCL.Qty,0) as bzQty ');
    SQL.Add('from SCBB SCBB ');
    SQL.Add('left join SCBBS  on  SCBB.ProNo=SCBBS.ProNo');
    SQL.Add('left join BDepartment  on BDepartment.ID=SCBB.DepNo  ');
    SQL.Add('left join (select sum(SCBZCL.Qty) as Qty,SCBZCL.DepNo from SCBZCL ');
    SQL.Add('           where SCBZCL.BZDate between');
    SQL.add('                 '''+formatdatetime('yyyy/MM/dd',sdate)+'''and '''+formatdatetime('yyyy/MM/dd',edate)+''''  );
    SQL.Add('           group by SCBZCL.DepNo ) SCBZCL  on SCBZCL.DepNo=SCBB.DepNo');
    SQL.Add('left join DDZL on DDZl.ZLBH=SCBBS.SCBH ');
    SQL.Add('where  convert(smalldatetime,convert(varchar,SCBB.SCDate,111)) between ');
    SQL.add('       '''+formatdatetime('yyyy/MM/dd',sdate)+''' and '''+formatdatetime('yyyy/MM/dd',edate)+''''  );
    SQL.Add('       and SCBB.GSBH ='''+main.mGSBH+'''');
    if DepNOEdit.Text<>'' then
    SQL.Add('       and BDepartment.ID = '''+DepNOEdit.Text+''' ');
    if DepNMEdit.Text<>'' then
    SQL.Add('       and BDepartment.DepName like ''%'+DepNMEdit.Text+'%'' ');
    SQL.Add('       and (SCBBS.GXLB=''A'') and BDepartment.YN=1');
    SQL.Add('Group by SCBB.DepNo,BDepartment.DepName,SCBZCL.Qty) SCBBS');
    SQL.Add('order by DepName');
    //funcObj.WriteErrorLog(sql.Text);
    Active:=true;
  end;
  //
  with ProdSumQty do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Select '''+CBX1.text+''' as iYear,'''+CBX2.text+''' as iMonth,Sum(Qty) as Qty,Sum(bzQty) as bzQty,Sum(Qty)-Sum(bzQty) as DiffQty,Sum(InQty) as InQty ');
    SQL.Add('from (');
    SQL.Add('Select SCBB.DepNO, BDepartment.DepName,');
    SQL.Add('        sum(isnull(SCBBS.Qty,0)) as Qty,isnull(SCBZCL.Qty,0) as bzQty,YWCP.Qty as InQty  ');
    SQL.Add('from SCBB ');
    SQL.Add('left join SCBBS  on  SCBB.ProNo=SCBBS.ProNo');
    SQL.Add('left join BDepartment  on BDepartment.ID=SCBB.DepNo  ');
    SQL.Add('left join (Select Sum(SCBZCL.Qty) as Qty,SCBZCL.DepNo from SCBZCL ');
    SQL.Add('           where SCBZCL.BZDate between');
    SQL.add('                 '''+formatdatetime('yyyy/MM/dd',sdate)+'''and '''+formatdatetime('yyyy/MM/dd',edate)+''''  );
    SQL.Add('           group by SCBZCL.DepNo ) SCBZCL  on SCBZCL.DepNo=SCBB.DepNo');
    SQL.Add('left join (Select YWCP.DepNo,sum(YWCP.Qty) as Qty');
    SQL.Add('           from YWCP ');
    SQL.Add('           left join BDepartment on YWCP.DepNo=BDepartment.ID');
    SQL.Add('           where BDepartment.GSBH='''+main.mGSBH+''' ');
    SQL.Add('                 and convert(varchar,YWCP.InDate,111) between ');
    SQL.add('                 '''+formatdatetime('yyyy/MM/dd',sdate)+'''and '''+formatdatetime('yyyy/MM/dd',edate)+''''  );
    SQL.Add('           Group by YWCP.DepNo ) YWCP on YWCP.DepNO=SCBB.DepNo');
    SQL.Add('left join DDZL  on DDZl.ZLBH=SCBBS.SCBH ');
    SQL.Add('where  convert(smalldatetime,convert(varchar,SCBB.SCDate,111)) between ');
    SQL.add('                 '''+formatdatetime('yyyy/MM/dd',sdate)+'''and '''+formatdatetime('yyyy/MM/dd',edate)+''''  );
    SQL.Add('       and SCBB.GSBH ='''+main.mGSBH+'''');
    if DepNOEdit.Text<>'' then
    SQL.Add('       and BDepartment.ID = '''+DepNOEdit.Text+''' ');
    if DepNMEdit.Text<>'' then
    SQL.Add('       and BDepartment.DepName like ''%'+DepNMEdit.Text+'%'' ');
    SQL.Add('       and (SCBBS.GXLB=''A'') and BDepartment.YN=1');
    SQL.Add('Group by SCBB.DepNo,BDepartment.DepName,SCBZCL.Qty,YWCP.Qty  ) SCBB');
    //funcObj.WriteErrorLog(sql.Text);
    Active:=true;
  end;
  //
  with IT_TIENSANLUONGQry do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Select * from '+DM2.LocalDBName+'.dbo.IT_TIENSANLUONG  IT_TIENSANLUONG ');
    SQL.Add('where IT_TIENSANLUONG.T_MA='''+CBX2.Text+'-'+CBX1.Text+''' and GSBH='''+main.mGSBH+''' ');
    Active:=true;
  end;
end;

procedure TProdBonus.Query2Click(Sender: TObject);
var  iYear,iMonth:word;
     sDate,eDate:Tdate;
begin
  //
  if (CBX3.text='')or (CBX4.text='')  then
  begin
    showmessage('You have to select the year and month first.');
    abort;
  end;
  iYear:=strtoint(CBX3.Text);
  iMonth:=strtoint(CBX4.Text);
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
  with ReplQty do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('if object_id(''tempdb..#KCLLS'') is not null  ');
    SQL.Add('begin   drop table #KCLLS end   ');
    SQL.Add('select KCLL.DepID,BDepartment.DepName,BDepartment.SumLine,');
    SQL.Add('       isnull(KCLLS.YYBH,'''') as YYBH,KCLLS.Qty,CLLBFYS.FYLB,');
    SQL.Add('       KCLLS.CLBH,isnull(KCLLS.BLSB,'''') as BLSB,KCLL.CFMDate');
    SQL.Add('into #KCLLS ');
    SQL.Add('from KCLLS ');
    SQL.Add('left join KCLL  on KCLL.LLNO=KCLLS.LLNO');
    SQL.Add('left join BDepartment  on BDepartment.ID=KCLL.DepID');
    SQL.Add('left join CLLBFYS CLLBFYS on CLLBFYS.CLBH=KCLLS.CLBH and KCLL.GSBH=CLLBFYS.GSBH');
    SQL.Add('where convert(smalldatetime,convert(varchar,KCLL.CFMDate,111)) between');
    SQL.add('                 '''+formatdatetime('yyyy/MM/dd',sdate)+'''and '''+formatdatetime('yyyy/MM/dd',edate)+''''  );
    SQL.Add('      and KCLL.CFMID<>''NO''');
    if DepNO1Edit.Text<>'' then
    SQL.Add('       and BDepartment.ID = '''+DepNO1Edit.Text+''' ');
    if DepNM1Edit.Text<>'' then
    SQL.Add('      and BDepartment.DepName like ''%'+DepNM1Edit.Text+'%'' ');
    SQL.Add('      and KCLLS.Qty<>0');
    SQL.Add('      and BDepartment.GSBH='''+main.mGSBH+''' and BDepartment.GXLB in (''C'',''S'',''A'')');
    //
    SQL.Add('Select '''+CBX3.text+''' as iYear,'''+CBX4.Text+''' as iMonth,DelACC.Sumline,BDepartment.ID,BDepartment.DepName,DelACC.ACCUS as DelACCUS,IsNull(RepACC.ACCUS,0) as ReACCUS,IsNull(RepACC.ACCUS,0)/DelACC.ACCUS*100 as Person from  (');
    SQL.Add('Select #KCLLS.Sumline,sum(#KCLLS.Qty*isnull(CWDJ.USPrice,0)) as ACCUS,'' DelACC'' as SB');
    SQL.Add('from #KCLLS ');
    SQL.Add('left join CWDJ  on CWDJ.CLBH=#KCLLS.CLBH ');
    SQL.Add('                  and CWDJ.DJYear=convert(varchar,datepart(yyyy,#KCLLS.CFMDate)) ');
    SQL.Add('                  and CWDJ.DJMonth=convert(varchar,datepart(MM,#KCLLS.CFMDate)) ');
    SQL.Add('where 1=1');
    SQL.Add('group by #KCLLS.Sumline ) DelACC');
    SQL.Add('left join (');
    SQL.Add('Select #KCLLS.Sumline,sum(#KCLLS.Qty*isnull(CWDJ.USPrice,0)) as ACCUS,'' RepACC'' as SB');
    SQL.Add('from #KCLLS ');
    SQL.Add('left join CWDJ on CWDJ.CLBH=#KCLLS.CLBH ');
    SQL.Add('                  and CWDJ.DJYear=convert(varchar,datepart(yyyy,#KCLLS.CFMDate)) ');
    SQL.Add('                  and CWDJ.DJMonth=convert(varchar,datepart(MM,#KCLLS.CFMDate)) ');
    SQL.Add('where #KCLLS.BLSB=''Y''');
    SQL.Add('group by #KCLLS.Sumline ) RepACC on RepACC.Sumline=DelACC.Sumline');
    SQL.Add('left join BDepartment  on BDepartment.sumline=DelACC.Sumline and BDepartment.GXLB=''A''');
    SQL.Add('order by DelACC.Sumline');
    //funcObj.WriteErrorLog(sql.Text);
    Active:=true;
  end;
  //

end;

procedure TProdBonus.Query4Click(Sender: TObject);
begin
  with IT_HESOSANLUONGQry do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select * from (');
    SQL.Add('Select IT_HESOSANLUONG.*,ST_DONVI.DV_TEN,case when IT_ORGLEVEL.Counti>0 then ''Y'' else ''N'' end as Clzmlb  ');
    SQL.Add('from '+DM2.LocalDBName+'.dbo.IT_HESOSANLUONG IT_HESOSANLUONG ');
    SQL.Add('Left join '+DM2.LocalDBName+'.dbo.ST_DONVI ST_DONVI on ST_DONVI.DV_MA=IT_HESOSANLUONG.DV_MA ');
    SQL.Add('Left join (select DV_MA,Count(DV_MA1) as Counti from '+DM2.LocalDBName+'.dbo.IT_ORGLEVEL IT_ORGLEVEL Group by DV_MA) IT_ORGLEVEL on IT_ORGLEVEL.DV_MA=IT_HESOSANLUONG.DV_MA ');
    SQL.Add('where IT_HESOSANLUONG.T_MA='''+CBX6.Text+'-'+CBX5.Text+''' and IT_HESOSANLUONG.GSBH='''+main.mGSBH+''' ');
    if DV_MAEdit.Text<>'' then
    SQL.Add('  and IT_HESOSANLUONG.DV_MA like '''+DV_MAEdit.Text+'%'' ');
    if DV_TENEdit.Text<>'' then
    SQL.Add('  and ST_DONVI.DV_TEN like N''%'+DV_TENEdit.Text+'%'' ');
    if ProdCK.Checked=true then
    SQL.Add(' and IT_HESOSANLUONG.DV_MA in (select Distinct ID_HRM from BDepartment where IsNull(ID_HRM,'''')<>'''') ');
    SQL.Add(') IT_HESOSANLUONG where 1=1 ');
    if ClzmlbComb.Text<>'' then
    SQL.Add(' and CLZMLB='''+ClzmlbComb.Text+''' ');
    SQL.Add('Order by IT_HESOSANLUONG.DV_TEN');
    //funcObj.WriteErrorLog(sql.Text);
    Active:=true;
  end;
end;

procedure TProdBonus.Save1Click(Sender: TObject);
var i:integer;
begin
  IT_TIENSANLUONGQry.First;
  for i := 0 to  IT_TIENSANLUONGQry.RecordCount-1 do
  begin
    case IT_TIENSANLUONGQry.UpdateStatus of
       usInserted:
       begin
       end;
       usModified:
       begin
         if IT_TIENSANLUONGQry.FieldByName('YN').AsString='0' then
         begin
         end else
         begin
           IT_TIENSANLUONGQry.Edit;
           if IT_TIENSANLUONGQry.FieldByName('ProdQty').Value-IT_TIENSANLUONGQry.FieldByName('StdQty').Value>=-1*IT_TIENSANLUONGQry.FieldByName('MinUSACC').Value  then
           begin
              IT_TIENSANLUONGQry.FieldByName('USACC').Value:=IT_TIENSANLUONGQry.FieldByName('BasicUSACC').Value +(IT_TIENSANLUONGQry.FieldByName('ProdQty').Value-IT_TIENSANLUONGQry.FieldByName('StdQty').Value);
           end else
           begin
              IT_TIENSANLUONGQry.FieldByName('USACC').Value:=0
           end;
           if IT_TIENSANLUONGQry.FieldByName('Exchange').IsNull=false then
           begin
             IT_TIENSANLUONGQry.FieldByName('VNACC').Value:=IT_TIENSANLUONGQry.FieldByName('Exchange').Value*IT_TIENSANLUONGQry.FieldByName('USACC').Value;
           end;
           if IT_TIENSANLUONGQry.FieldByName('VNACC').IsNull=false then
           begin
             if IT_TIENSANLUONGQry.FieldByName('StaffTotal').Value>0 then
             IT_TIENSANLUONGQry.FieldByName('StaffVNPrice').Value:=IT_TIENSANLUONGQry.FieldByName('VNACC').Value/IT_TIENSANLUONGQry.FieldByName('StaffTotal').Value;
           end;
           IT_TIENSANLUONGQry.FieldByName('USERID').AsString:=main.UserID;
           IT_TIENSANLUONGQry.FieldByName('USERDATE').Value:=Date;
           Upd_TIENSANLUONGQry.Apply(ukModify);
         end;
       end;
    end;
    IT_TIENSANLUONGQry.Next;
  end;
  //
  IT_TIENSANLUONGQry.Active:=false;
  IT_TIENSANLUONGQry.LockType:=ltReadOnly;
  IT_TIENSANLUONGQry.Active:=true;
  Save1.Enabled:=false;
  Cancel1.Enabled:=false;
  IT_TIENSANLUONGQry.Active:=true;

end;

end.
