unit PurConfirmPrice1;
                          
interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ExtCtrls, DB, DBTables, Grids, DBGrids,math,
  GridsEh, DBGridEh, Menus,comobj,IniFiles;

type
  TPurConfirmPrice = class(TForm)
    DBGrid1: TDBGridEh;
    EnMas: TQuery;
    EnMasRKNO: TStringField;
    EnMasZSBH: TStringField;
    EnMasZSYWJC: TStringField;
    EnMasZSNO: TStringField;
    EnMasUSERID: TStringField;
    EnMasUSERDATE: TDateTimeField;
    EnMasCFMID: TStringField;
    EnMasCFMDATE: TDateTimeField;
    EnMasYN: TStringField;
    UpMas: TUpdateSQL;
    DS3: TDataSource;
    EnDet: TQuery;
    EnDetRKNO: TStringField;
    EnDetCLBH: TStringField;
    EnDetYWPM: TStringField;
    EnDetDWBH: TStringField;
    EnDetCGBH: TStringField;
    EnDetRKSB: TStringField;
    EnDetPaQty: TCurrencyField;
    EnDetQty: TCurrencyField;
    EnDetUSPrice: TCurrencyField;
    EnDetCostID: TStringField;
    EnDetUSERID: TStringField;
    EnDetUSERDATE: TDateTimeField;
    EnDetYN: TStringField;
    UPDet: TUpdateSQL;
    DS4: TDataSource;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    ConfrimBtn: TButton;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    Edit1: TEdit;
    DBGrid_Prod: TDBGridEh;
    EnDetUSACC: TCurrencyField;
    EnMasGSBH: TStringField;
    EnMasCKBH: TStringField;
    PopupMenu1: TPopupMenu;
    EXCEL1: TMenuItem;
    EnDetDOCNO: TStringField;
    EnMasDOCNO: TStringField;
    EnDetCARTON_: TFloatField;
    EnDetLENGTH: TFloatField;
    EnDetWIDTH: TFloatField;
    EnDetHEIGHT: TFloatField;
    EnDetVNACC1: TFloatField;
    EnDetVNPriceCT: TFloatField;
    Label3: TLabel;
    Edit2: TEdit;
    EnMasMZSDH: TStringField;
    EnMasMZSYWJC: TStringField;
    DS4Sum: TDataSource;
    EnDetMEMO: TStringField;
    DBGridEh_RD: TDBGridEh;
    EnDetSeason: TStringField;
    EnDetPurpose: TStringField;
    EnDetFreeQty_: TCurrencyField;
    EnDetCharge_: TCurrencyField;
    EnDetQ_USPrice_: TCurrencyField;
    EnDetQ_VNPrice_: TCurrencyField;
    EnDetERP_USPrice_: TCurrencyField;
    EnDetERP_VNPrice_: TCurrencyField;
    Qry_zszlSamplePayment: TQuery;
    Qry_zszlSamplePaymentFreeQty: TCurrencyField;
    Qry_zszlSamplePaymentCharge: TCurrencyField;
    Qry_MaterialPrice: TQuery;
    Qry_MaterialPriceSamplePrice: TCurrencyField;
    Qry_MaterialPriceSamplePriceVN: TCurrencyField;
    EnDetCGDATE: TDateTimeField;
    Qry_SamplePayment_Unit: TQuery;
    CurrencyField5: TCurrencyField;
    CurrencyField6: TCurrencyField;
    Edit_Password: TEdit;
    Chk_Copy: TCheckBox;
    RadioGroup1: TRadioGroup;
    RadixCK: TCheckBox;
    Chk_Mine: TCheckBox;
    EnMasPurConfirm: TStringField;
    Chk_UnConfirm: TCheckBox;
    EnDetHandCarry_USPrice: TCurrencyField;
    EnDetHandCarry_USACC: TCurrencyField;
    EnMasPayment: TStringField;
    Qry_zszlSamplePaymentFreeQty2: TCurrencyField;
    Qry_zszlSamplePaymentCharge2: TCurrencyField;
    EnDetFreeQty_2: TFloatField;
    EnDetCharge_2: TFloatField;
    EnDetFreeQty1: TFloatField;
    EnDetCharge1: TFloatField;
    Qry_zszlSamplePaymentFreeQty1: TCurrencyField;
    Qry_zszlSamplePaymentCharge1: TCurrencyField;
    Qry_zszlSamplePaymentCharge_: TCurrencyField;
    EnMasPurZSBH: TStringField;
    Panel2: TPanel;
    Memo1: TMemo;
    EnDetCWHL: TCurrencyField;
    EnDetVNPrice: TCurrencyField;
    EnDetVNACC: TCurrencyField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ConfrimBtnClick(Sender: TObject);
    procedure DBGrid_ProdColExit(Sender: TObject);
    procedure EnMasNewRecord(DataSet: TDataSet);
    procedure EnDetNewRecord(DataSet: TDataSet);
    procedure FormDestroy(Sender: TObject);
    procedure EXCEL1Click(Sender: TObject);
    procedure EnDetUSPriceChange(Sender: TField);
    procedure EnDetVNPriceChange(Sender: TField);
    procedure EnDetCalcFields(DataSet: TDataSet);
    procedure EnDetVNPriceCTChange(Sender: TField);
    procedure EnDetAfterOpen(DataSet: TDataSet);
    procedure EnDetHandCarry_USPriceChange(Sender: TField);
    procedure EnDetCWHLChange(Sender: TField);
  private
    Flag_Confirm:string ;
    { Private declarations }
    procedure ReadIni();
  public
    VNPrice_DiplayFormat,CWHL_DiplayFormat:string;
    VNPrice_Decimal,CWHL_Decimal:Byte;
    { Public declarations }
  end;

var
  PurConfirmPrice: TPurConfirmPrice;


implementation

uses main1, FunUnit ;

{$R *.dfm}
procedure TPurConfirmPrice.ReadIni();
var MyIni :Tinifile;
    AppDir:string;
begin
  //
  VNPrice_DiplayFormat:='#,##0';
  VNPrice_Decimal:=0;
  CWHL_DiplayFormat:='#,##0';
  CWHL_Decimal:=0;
  AppDir:=ExtractFilePath(Application.ExeName);
  if FileExists(AppDir+'\ComName.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ComName.ini');
      VNPrice_DiplayFormat:=MyIni.ReadString('VNPrice','DiplayFormat','#,##0');
      VNPrice_Decimal:=strtoint(MyIni.ReadString('VNPrice','Decimal','0'));
      CWHL_DiplayFormat:=MyIni.ReadString('CWHL','DiplayFormat','#,##0');
      CWHL_Decimal:=strtoint(MyIni.ReadString('CWHL','Decimal','0'));
    finally
      MyIni.Free;
    end;
  end;
  TCurrencyField(EnDet.FieldByName('VNPrice')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(EnDet.FieldByName('VNACC')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(EnDet.FieldByName('CWHL')).DisplayFormat:=CWHL_DiplayFormat;
end;
//

procedure TPurConfirmPrice.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TPurConfirmPrice.Button1Click(Sender: TObject);
begin
  Flag_Confirm:='search';
  with EnMas do
  begin
    Active:=false;
    sql.Clear;
    sql.add('select KCRK.*,ZSZL.ZSYWJC,ZSZL_DEV.MZSDH , (SELECT A.ZSYWJC FROM ZSZL A WHERE A.ZSDH=ZSZL_DEV.MZSDH) AS MZSYWJC,PurConfirm,CGZL.ZSBH as PurZSBH ');
    sql.add('from KCRK');
    sql.add('left join ZSZL on ZSZL.ZSDH=KCRK.ZSBH ');
    sql.add('left join ZSZL_DEV on ZSZL.ZSDH=ZSZL_DEV.ZSDH ');
    sql.add('left join KCCK on KCCK.CKBH=KCRK.CKBH ');
    sql.Add('Left join CGZL on CGZL.CGNO=KCRK.ZSNO ');
    sql.add('where  ');
    sql.add(' KCRK.CKBH<>''PT'' and KCRK.CFMID=''NO''  ')  ;
    if Chk_UnConfirm.Checked=true then
       begin
         sql.add(' and ISNULL(KCRK.PurConfirm,'''')=''Y'' ') ;
         ConfrimBtn.Caption:='UnConfirm';
       end
       else
       begin
         sql.add(' and ISNULL(KCRK.PurConfirm,'''')<>''Y'' ') ;
         ConfrimBtn.Caption:='Confirm';         
       end;
    sql.add('and convert(smalldatetime,convert(varchar,KCRK.USERDATE,111)) between'+''''+formatdatetime('yyyy/MM/dd',DTP1.date )+'''');
    sql.add('and '+''''+formatdatetime('yyyy/MM/dd',DTP2.date )+'''');
    if Chk_Mine.Checked=true then
       sql.add(' and ZSZL_DEV.SamplePurchaser='+''''+main.edit1.text+'''');
    IF edit1.Text<>'' THEN
       sql.add('and KCRK.RKNO like '+''''+edit1.Text+'%'+'''');
    IF Edit2.Text<>'' THEN
       sql.add('and ZSZL.ZSYWJC like '+'''%'+edit2.Text+'%''');
    sql.add('and (KCRK.GSBH='+''''+main.edit2.text+''') ');
    sql.add('order by KCRK.RKNO  ');
    active:=true;
  end;

  with EnDet do
  begin
    Active:=false;
    sql.Clear;
    if main.edit2.text='CDC' then  //開發
       begin
         sql.add('select  ');
         sql.add('KCRKS.RKNO ');
         sql.add(',KCRKS.CLBH    ');
         sql.add(',KCRKS.CGBH        ');
         sql.add(',KCRKS.RKSB ');
         sql.add(',KCRKS.Qty    ');
         sql.add(',KCRKS.PaQty   ');
         sql.add(',KCRKS.USPrice   ');
         sql.add(',KCRKS.USACC    ');
         sql.add(',KCRKS.HandCarry_USPrice   ');
         sql.add(',KCRKS.HandCarry_USACC    ');
         sql.add(',KCRKS.VNPrice   ');
         sql.add(',KCRKS.VNACC     ');
         sql.add(',KCRKS.CWHL     ');
         sql.add(',KCRKS.CostID    ');
         sql.add(',KCRKS.USERID     ');
         sql.add(',KCRKS.USERDATE   ');
         sql.add(',KCRKS.YN        ');
         sql.add(',KCRKS.FKZT      ');
         sql.add(',KCRKS.DOCNO      ');
         sql.add(',KCRKS.VNPriceCT   ');
         sql.add(',KCRKS.RKMEMO     ');
         sql.add(',KCRKS.CNO        ');
         sql.add(',KCRKS.MEMO       ');
         sql.add(',CLZL.YWPM,CLZL.DWBH,LENGTH,WIDTH,HEIGHT,CGZL.Season,CGZL.Purpose ,CGZL.CGDATE   ');
         sql.add('from KCRKS       ');
         sql.add('left join CLZL on CLZL.CLDH=KCRKS.CLBH    ');
         sql.add('left join YWWX2 on YWWX2.CLBH=KCRKS.CLBH      ');
         sql.add('left join CGZL on CGZL.CGNO=KCRKS.CGBH      ');
         SQL.Add('left join kcrk on kcrk.rkno = kcrks.rkno');
         //SQL.Add('Left join kjhl on kjhl.ZSBH=KCRK.ZSBH and convert(char(7),kjhl.YMONTH,120)= convert(char(7),KCRK.USERDate,120)');
         sql.add('where KCRKS.RKNO=:RKNO              ');
         sql.add('order by KCRKS.CGBH,KCRKS.CLBH       ');
       end
       else   //產量
       begin
         sql.add('select  ');
         sql.add('KCRKS.RKNO ');
         sql.add(',KCRKS.CLBH    ');
         sql.add(',KCRKS.CGBH        ');
         sql.add(',KCRKS.RKSB ');
         sql.add(',KCRKS.Qty    ');
         sql.add(',KCRKS.PaQty   ');
         sql.add(',KCRKS.USPrice   ');
         sql.add(',KCRKS.USACC    ');
         sql.add(',KCRKS.HandCarry_USPrice   ');
         sql.add(',KCRKS.HandCarry_USACC    ');

         sql.add(',KCRKS.VNPrice   ');
         sql.add(',KCRKS.VNACC     ');
         sql.add(',KCRKS.CWHL     ');
         sql.add(',KCRKS.CostID    ');
         sql.add(',KCRKS.USERID     ');
         sql.add(',KCRKS.USERDATE   ');
         sql.add(',KCRKS.YN        ');
         sql.add(',KCRKS.FKZT      ');
         sql.add(',KCRKS.DOCNO      ');
         sql.add(',KCRKS.VNPriceCT   ');
         sql.add(',KCRKS.RKMEMO     ');
         sql.add(',KCRKS.CNO        ');
         sql.add(',KCRKS.MEMO       ');
         sql.add(',CLZL.YWPM,CLZL.DWBH,LENGTH,WIDTH,HEIGHT,CGZL.Season,CGZL.Purpose ,CGZL.CGDATE    ');
         sql.add('from KCRKS       ');
         sql.add('left join CLZL on CLZL.CLDH=KCRKS.CLBH    ');
         sql.add('left join YWWX2 on YWWX2.CLBH=KCRKS.CLBH      ');
         sql.add('left join CGZL on CGZL.CGNO=KCRKS.CGBH      ');
         SQL.Add('left join kcrk on kcrk.rkno = kcrks.rkno');
         //SQL.Add('Left join kjhl on kjhl.ZSBH=KCRK.ZSBH and convert(char(7),kjhl.YMONTH,120)= convert(char(7),KCRK.USERDate,120)');
         sql.add('where KCRKS.RKNO=:RKNO  ');
         sql.add('order by KCRKS.CGBH,KCRKS.CLBH       ');
       end;
    active:=true;
  end;
  EnDet.Active:=true;

end;

procedure TPurConfirmPrice.FormCreate(Sender: TObject);
begin

  DTP1.Date:=date-20;
  DTP2.Date:=date;
  if main.edit2.text='CDC' then
  begin
     DBGrid_Prod.Visible:=false;
     DBGridEh_RD.Visible:=true;
     DBGridEh_RD.Align:=alClient;
     Edit_Password.Visible:=TRUE;
     Chk_Copy.Visible:=TRUE;
     RadixCK.Visible:=TRUE;
     RadioGroup1.Visible:=TRUE;
  end else
  begin
     DBGridEh_RD.Visible:=False;
     DBGrid_Prod.Visible:=true;
     DBGrid_Prod.Align:=alClient;
     Chk_Copy.Visible:=False;
     Chk_Copy.Checked:=false;
  end;
  ReadIni();
end;

procedure TPurConfirmPrice.ConfrimBtnClick(Sender: TObject);
begin

if EnMas.fieldbyname('PurConfirm').AsString='Y' then
   begin
     if messagedlg('UnConfirm it?',mtinformation,[mbYes,mbNo],0)=mrYes then
       begin
         try
          with EnMas do
             begin
               edit;
               fieldbyname('PurConfirm').Value:='';
               UPMas.Apply(ukmodify);
               active:=false;
               active:=true;
             end;
           showmessage('Succeed.');
         except
           showmessage('Have wrong.');
         end;
       end ;
     abort;
   end;

  Flag_Confirm:='confirm';
  with EnDet do
  begin
    first;
    while not eof do
      begin
        if  (fieldbyname('USPrice').isnull and fieldbyname('VNPrice').isnull) then
          begin
            showmessage('Price can not be empty.');
            Flag_Confirm:='search';
            abort;
          end
          else
            begin
              if ((not fieldbyname('USPrice').isnull) and (not fieldbyname('VNPrice').isnull)) then
                begin
                  {
                  showmessage('Can not have two price.');
                  Flag_Confirm:='search';
                  abort;
                  }
                end
                else
                  begin
                    if not fieldbyname('USPrice').isnull then
                      begin
                        //edit;
                        //fieldbyname('USACC').Value:=trunc(fieldbyname('USPrice').value*fieldbyname('Qty').value*100+0.5)/100;
                      end;
                    if not fieldbyname('VNPrice').isnull then
                      begin
                        //edit;
                        //fieldbyname('VNACC').Value:=trunc(fieldbyname('VNPrice').value*fieldbyname('Qty').value+0.5);
                      end;
                  end;
            end;



          IF Edit_Password.Text<>'1234'  THEN
          BEGIN
            if (main.edit2.text='CDC')   then  //是開發...成長例外
            begin
               IF (fieldbyname('USPrice').Value > fieldbyname('ERP_USPrice_').Value) then //檢查不可大於ERP單價
                begin
                  showmessage('USPrice higher than ERP Price.');
                  Flag_Confirm:='search';
                  abort;
                end;


               IF (fieldbyname('VNPrice').IsNull) or (fieldbyname('ERP_VNPrice_').isnull) then
               else
                 begin  
                   IF roundto(fieldbyname('VNPrice').Value,-2) > roundto(fieldbyname('ERP_VNPrice_').Value,-2) then //檢查不可大於ERP單價
                     begin
                       showmessage('VNPrice higher than ERP Price.');
                       Flag_Confirm:='search';
                       abort;
                     end;
                 end;
            END;
          END;
        next;
      end;
  end;

Edit_Password.Text:='';

if messagedlg('Confirm or not ?',mtinformation,[mbYes,mbNo],0)=mrYes then
  begin
    try
      with EnDet do
        begin
         first;
          while not eof do
            begin
              if updatestatus=usmodified then
                begin
                  UPdet.apply(ukmodify);
                end;
              next;
            end;
          active:=false;
          active:=true;
        end;
   // showmessage('Succeed.');
    except
      showmessage('Have wrong.');
    end;

    try
      with EnMas do
        begin
          edit;
          fieldbyname('PurConfirm').Value:='Y';
          UPMas.Apply(ukmodify);
          active:=false;
          active:=true;
        end;
      showmessage('Succeed.');
      Flag_Confirm:='search';
    except
      showmessage('Have wrong.');
      Flag_Confirm:='search';
    end;

  end ;
  Flag_Confirm:='search';
end;

procedure TPurConfirmPrice.DBGrid_ProdColExit(Sender: TObject);
begin
{
if EnDet.Active then
  begin
    if EnDet.recordcount>0 then
      begin
        if dbgrid2.Selectedindex=3  then
          begin
            if not EnDet.FieldByName('USPrice').IsNull then
              begin
              //  if EnDet.FieldByName('ACCUS').Isnull then
                  begin
                     EnDet.Edit;
                     EnDet.FieldByName('USACC').value:=trunc(EnDet.FieldByName('USPrice').value*EnDet.FieldByName('Qty').value*100+0.5)/100  ;
                  end;
              end;
          end;
        if dbgrid2.Selectedindex=4  then
          begin
            if not EnDet.FieldByName('USACC').IsNull then
              begin
                if EnDet.FieldByName('USPrice').Isnull then
                  begin
                     EnDet.Edit;
                     EnDet.FieldByName('USPrice').value:=EnDet.FieldByName('USACC').value/EnDet.FieldByName('Qty').value  ;
                  end;
              end;
          end; 
        if dbgrid2.Selectedindex=6  then
          begin
            if not EnDet.FieldByName('VNPrice').IsNull then
              begin
               // if EnDet.FieldByName('ACCVN').Isnull then
                  begin
                     EnDet.Edit;
                     EnDet.FieldByName('VNACC').value:=trunc(EnDet.FieldByName('VNPrice').value*EnDet.FieldByName('Qty').value+0.5)  ;
                  end;
              end;
          end;
        if dbgrid2.Selectedindex=7  then
          begin
            if not EnDet.FieldByName('VNACC').IsNull then
              begin
                if EnDet.FieldByName('VNPrice').Isnull then
                  begin
                     EnDet.Edit;
                     EnDet.FieldByName('VNPrice').value:=trunc(EnDet.FieldByName('VNACC').value/EnDet.FieldByName('Qty').value+0.5)  ;
                  end;
              end;
          end;
      end;
  end;
}
end;

procedure TPurConfirmPrice.EnMasNewRecord(DataSet: TDataSet);
begin
abort;
end;

procedure TPurConfirmPrice.EnDetNewRecord(DataSet: TDataSet);
begin
abort;
end;

procedure TPurConfirmPrice.FormDestroy(Sender: TObject);
begin
PurConfirmPrice:=nil;
end;

procedure TPurConfirmPrice.EXCEL1Click(Sender: TObject);
var
      eclApp,WorkBook:olevariant;
 //     xlsFileName:string;
      i,j:integer;
begin

if EnMas.Active then
  begin
    if EnMas.recordcount=0 then
      begin
        showmessage('No record.');
        abort;
      end;
  end
  else
    begin
      showmessage('No record.');
      abort;
    end;

try
  eclApp:=CreateOleObject('Excel.Application');
  WorkBook:=CreateOleObject('Excel.Sheet');
except
  Application.MessageBox('NO Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
  Exit;
end;

try
  EnDet.Active:=false;
  WorkBook:=eclApp.workbooks.Add; 
  eclApp.Cells(1,1):='NO';
  for   i:=1   to   EnMas.fieldcount   do
    begin
      eclApp.Cells(1,i+1):=EnMas.fields[i-1].FieldName;
    end;
  EnMas.First;
  j:=2;
  while   not  EnMas.Eof   do
    begin
      eclApp.Cells(j,1):=j-1;
      for   i:=1   to   EnMas.fieldcount   do
        begin
          eclApp.Cells(j,i+1):=EnMas.Fields[i-1].Value;
          eclApp.Cells.Cells.item[j,i+1].font.size:='8';
        end;
      EnMas.Next;
      inc(j);
    end;
  eclapp.columns.autofit;
  showmessage('Succeed.');
  eclApp.Visible:=True;
  EnDet.Active:=true;
except
  on   F:Exception   do
    showmessage(F.Message);
end;


end;

procedure TPurConfirmPrice.EnDetUSPriceChange(Sender: TField);
begin
           if not EnDet.FieldByName('USPrice').IsNull then
              begin
                  if  COPY(EnDet.FieldByName('CLBH').value,1,2)='U1' then
                    begin
                     EnDet.Edit;
                     EnDet.FieldByName('USACC').value:=trunc(EnDet.FieldByName('USPrice').value*EnDet.FieldByName('Qty').value*100+0.5)/100  ;
                     if (not EnDet.FieldByName('USPrice').IsNull) or (not EnDet.FieldByName('CWHL').IsNull) then
                      begin
                        EnDet.FieldByName('VNPrice').value:=EnDet.FieldByName('USPrice').value*EnDet.FieldByName('CWHL').Value ;
                        EnDet.FieldByName('VNACC').value:=EnDet.FieldByName('USPrice').value*EnDet.FieldByName('CWHL').Value*EnDet.FieldByName('Qty').value ;
                      end
                     else
                      begin
                        EnDet.FieldByName('VNPrice').value:=0 ;
                        EnDet.FieldByName('VNACC').value:=0 ;
                      end;
                    end
                  else
                    begin
                     EnDet.Edit;
                     EnDet.FieldByName('USACC').value:=trunc(EnDet.FieldByName('USPrice').value*EnDet.FieldByName('Qty').value*100+0.5)/100  ;
                     if (not EnDet.FieldByName('USPrice').IsNull) or (not EnDet.FieldByName('CWHL').IsNull) then
                      begin
                        EnDet.FieldByName('VNPrice').value:=EnDet.FieldByName('USPrice').value*EnDet.FieldByName('CWHL').Value ;
                        EnDet.FieldByName('VNACC').value:=EnDet.FieldByName('USPrice').value*EnDet.FieldByName('CWHL').Value*EnDet.FieldByName('Qty').value ;
                      end
                     else
                      begin
                        EnDet.FieldByName('VNPrice').value:=0 ;
                        EnDet.FieldByName('VNACC').value:=0 ;
                      end;
                  end;
              end
              ELSE
              BEGIN
                     EnDet.Edit;
                     EnDet.FieldByName('USACC').value:=0 ;
              END;
end;

procedure TPurConfirmPrice.EnDetVNPriceChange(Sender: TField);
begin
            if not EnDet.FieldByName('VNPrice').IsNull then
              begin
               // if EnDet.FieldByName('ACCVN').Isnull then
                  if  COPY(EnDet.FieldByName('CLBH').value,1,2)='U1' then
                    begin
                     EnDet.Edit;
                     //EnDet.FieldByName('VNPrice').value:=trunc(EnDet.FieldByName('VNPriceCT').value*EnDet.FieldByName('CARTON_').value+0.5)  ;
                     EnDet.FieldByName('VNACC').value:=trunc(EnDet.FieldByName('VNPriceCT').value*EnDet.FieldByName('CARTON_').value*EnDet.FieldByName('Qty').value+0.5)  ;
                    end
                  else
                    begin
                     EnDet.Edit;
                     EnDet.FieldByName('VNACC').value:=trunc(EnDet.FieldByName('VNPrice').value*EnDet.FieldByName('Qty').value+0.5)  ;
                  end;
              end
              ELSE
              BEGIN
                     EnDet.Edit;
                     EnDet.FieldByName('VNACC').value:=0 ;
                     EnDet.FieldByName('VNPrice').value:=0 ;
              end;

end;

Function Rounda(Value: Extended; Len: Word): Extended;
begin
  Result:= StrToFloat(Format('%1.'+IntToStr(Len)+'f',[Value]));
 //DEMO: Rounda(123.45,1):=123.5;
end;


procedure TPurConfirmPrice.EnDetCalcFields(DataSet: TDataSet);
VAR   MYROUND : integer;
begin
  with EnDet do
  begin
    if (FieldByName('LENGTH').value>0) AND (FieldByName('WIDTH').value>0) AND (FieldByName('HEIGHT').value>0) then
    begin
       FieldByName('CARTON_').value:=trunc((FieldByName('WIDTH').value+FieldByName('HEIGHT').value)*(((FieldByName('LENGTH').value+FieldByName('WIDTH').value)*2)+46)/1000000*100+0.5)/100;
       // IF FieldByName('VNPrice').value>0 THEN
       //    FieldByName('VNACC1').value:=trunc(FieldByName('VNPriceCT').value*FieldByName('CARTON_').value+0.5)  ;
    end;
  end;
  Qry_SamplePayment_Unit.Active:=false  ;
  Qry_SamplePayment_Unit.SQL.Clear;
  Qry_SamplePayment_Unit.sql.add('SELECT CR1_FreeQty as FreeQty,CR1_Charge as Charge from zszlSamplePayment ');
  Qry_SamplePayment_Unit.sql.add('where Season='+''''+EnDet.FieldByName('SEASON').AsString+'''');
  Qry_SamplePayment_Unit.sql.add('      and zsdh='+''''+EnMas.FieldByName('PurZSBH').AsString+'''');
  Qry_SamplePayment_Unit.sql.add('      and Unit='+''''+EnDet.FieldByName('DWBH').AsString+'''');
  Qry_SamplePayment_Unit.Active:=true;
  Qry_zszlSamplePayment.Active:=false  ;
  Qry_zszlSamplePayment.SQL.Clear;
  if (EnDet.FieldByName('PURPOSE').Value='SMU')
      or (EnDet.FieldByName('PURPOSE').Value='PRO')
      or (EnDet.FieldByName('PURPOSE').Value='SM2')
      or (EnDet.FieldByName('PURPOSE').Value='SM3')
      or (EnDet.FieldByName('PURPOSE').Value='MCS')
      or (EnDet.FieldByName('PURPOSE').Value='PDT') then
  begin
       // SEE 分2 段處理 ..... 用 QTY 數量比較 取 Charge % 值 2013.05.11
       if (EnDet.FieldByName('PURPOSE').Value='PRO')  then
       begin
          Qry_zszlSamplePayment.sql.add('select CR1_FreeQty as FreeQty1,CR1_Charge as Charge1,CR1_FreeQty2 as FreeQty2,CR1_Charge2 as Charge2,CR1_FreeQty as FreeQty,CR1_Charge as Charge,CR1_Charge as Charge_');
       end;
       if (EnDet.FieldByName('PURPOSE').Value='SM2')  then
          Qry_zszlSamplePayment.sql.add('select CR2_FreeQty as FreeQty1,CR2_Charge as Charge1,CR2_FreeQty2 as FreeQty2,CR2_Charge2 as Charge2,CR2_FreeQty as FreeQty,CR2_Charge as Charge,CR2_Charge as Charge_');
       if EnDet.FieldByName('PURPOSE').Value='SM3' then
          Qry_zszlSamplePayment.sql.add('select Presell_FreeQty as FreeQty1,Presell_Charge as Charge1,Presell_FreeQty2 as FreeQty2,Presell_Charge2 as Charge2,Presell_FreeQty as FreeQty,Presell_Charge as Charge,Presell_Charge as Charge_');
       if (EnDet.FieldByName('PURPOSE').Value='SMU') then
          Qry_zszlSamplePayment.sql.add('select SMS_FreeQty as FreeQty1,SMS_Charge as Charge1,SMS_FreeQty2 as FreeQty2,SMS_Charge2 as Charge2,SMS_FreeQty as FreeQty,SMS_Charge as Charge,SMS_Charge as Charge_');
       if EnDet.FieldByName('PURPOSE').Value='PDT' then
          Qry_zszlSamplePayment.sql.add('select PT_FreeQty as FreeQty1,PT_Charge as Charge1,PT_FreeQty2 as FreeQty2,PT_Charge2 as Charge2,PT_FreeQty as FreeQty,PT_Charge as Charge,PT_Charge as Charge_  ');
       if (EnDet.FieldByName('PURPOSE').Value='MCS') then
          Qry_zszlSamplePayment.sql.add('select MCS_FreeQty as FreeQty1,MCS_Charge as Charge1,MCS_FreeQty2 as FreeQty2,MCS_Charge2 as Charge2,MCS_FreeQty as FreeQty,MCS_Charge as Charge,MCS_Charge as Charge_');
       Qry_zszlSamplePayment.sql.add('from  zszlSamplePayment ');
       Qry_zszlSamplePayment.sql.add('where Season='+''''+EnDet.FieldByName('SEASON').AsString+'''');
       Qry_zszlSamplePayment.sql.add('      and zsdh='+''''+EnMas.FieldByName('PurZSBH').AsString+'''');
       if Qry_SamplePayment_Unit.RecordCount>0 then
          Qry_zszlSamplePayment.sql.add('   and Unit='+''''+EnDet.FieldByName('DWBH').AsString+'''')
       else
          Qry_zszlSamplePayment.sql.add('   and Unit='''' ');
       Qry_zszlSamplePayment.Active:=true;
       Qry_zszlSamplePayment.first;

       // 價格 分 2 段處理
       if not Qry_zszlSamplePayment.eof then
       begin
            EnDet.FieldByName('FreeQty_').value:=Qry_zszlSamplePayment.FieldByName('FreeQty1').value;
            EnDet.FieldByName('Charge_').value:=Qry_zszlSamplePayment.FieldByName('Charge1').value;
            EnDet.FieldByName('FreeQty1').value:=Qry_zszlSamplePayment.FieldByName('FreeQty1').value;
            EnDet.FieldByName('Charge1').value:=Qry_zszlSamplePayment.FieldByName('Charge1').value;
            EnDet.FieldByName('FreeQty_2').value:=Qry_zszlSamplePayment.FieldByName('FreeQty2').value;
            EnDet.FieldByName('Charge_2').value:=Qry_zszlSamplePayment.FieldByName('Charge2').value;
            if (not EnDet.FieldByName('Qty').IsNull) or (EnDet.FieldByName('Qty').Value <> 0) then
            begin
                if (not Qry_zszlSamplePayment.FieldByName('FreeQty2').IsNull) and
                  (Qry_zszlSamplePayment.FieldByName('FreeQty2').value <> 0) and
                  (EnDet.FieldByName('Qty').Value >= Qry_zszlSamplePayment.FieldByName('FreeQty2').value) then
                begin
                  EnDet.FieldByName('FreeQty_').value:=Qry_zszlSamplePayment.FieldByName('FreeQty2').value;
                  EnDet.FieldByName('Charge_').value:=Qry_zszlSamplePayment.FieldByName('Charge2').value;
                end;
            end;
            if (EnDet.FieldByName('Charge_').IsNull) or (EnDet.FieldByName('Charge_').AsString= '0') then
                 EnDet.FieldByName('Charge_').value := '100';
                 Qry_MaterialPrice.Active:=false  ;
                 Qry_MaterialPrice.SQL.Clear;
                 Qry_MaterialPrice.sql.add('select  top 1 SamplePrice,SamplePriceVN from  MaterialPrice ');
                 Qry_MaterialPrice.sql.add('where Season='+''''+EnDet.FieldByName('SEASON').Value+'''');
                 Qry_MaterialPrice.sql.add('      and ZSBH='+''''+EnMas.FieldByName('PurZSBH').Value+'''');
                 Qry_MaterialPrice.sql.add('      and CLBH='+''''+EnDet.FieldByName('CLBH').Value+'''');
                 Qry_MaterialPrice.sql.add('      and EffectiveDate>'+''''+EnDet.FieldByName('CGDate').AsString+'''');
                 Qry_MaterialPrice.sql.add('    order by EffectiveDate desc ');
                 Qry_MaterialPrice.Active:=true;
                 Qry_MaterialPrice.first;
                 EnDet.FieldByName('Q_USPrice_').value:=Qry_MaterialPrice.FieldByName('SamplePrice').value ;
                 EnDet.FieldByName('Q_VNPrice_').value:=Qry_MaterialPrice.FieldByName('SamplePriceVN').value ;

            if (EnDet.FieldByName('Qty').value<=Qry_zszlSamplePayment.FieldByName('FreeQty').Value) or (EnDet.FieldByName('RKSB').AsString='NG') then
            begin
                 EnDet.FieldByName('ERP_USPrice_').value:=0;
                 EnDet.FieldByName('ERP_VNPrice_').value:=0;
            end;

            if (EnDet.FieldByName('Qty').value>Qry_zszlSamplePayment.FieldByName('FreeQty').Value) AND (EnDet.FieldByName('RKSB').AsString<>'NG') then
            begin
                 IF (Qry_MaterialPrice.FieldByName('SamplePrice').ASSTRING<>'')  AND (Qry_zszlSamplePayment.FieldByName('Charge').ASSTRING<>'') THEN
                 BEGIN
                      if EnDet.FieldByName('Charge_').value = '100' then
                      BEGIN
                          EnDet.FieldByName('ERP_USPrice_').value:=Qry_MaterialPrice.FieldByName('SamplePrice').value;
                          EnDet.FieldByName('ERP_VNPrice_').value:=Qry_MaterialPrice.FieldByName('SamplePriceVN').value;
                      END else
                      BEGIN
                          EnDet.FieldByName('ERP_VNPrice_').value:=Qry_MaterialPrice.FieldByName('SamplePriceVN').value*(EnDet.FieldByName('Charge_').value/100) ;
                          MYROUND:= (Length(Trim(Qry_MaterialPrice.FieldByName('SamplePrice').value) ) - Pos('.',Trim(Qry_MaterialPrice.FieldByName('SamplePrice').value)) );
                          if RadixCK.Checked then
                          begin
                              IF RadioGroup1.ItemIndex=0 THEN
                                 EnDet.FieldByName('ERP_USPrice_').value:=trunc((Qry_MaterialPrice.FieldByName('SamplePrice').value*(EnDet.FieldByName('Charge_').value/100)+0.05)*10)/10 ;
                              IF RadioGroup1.ItemIndex=1 THEN
                                 EnDet.FieldByName('ERP_USPrice_').value:=trunc((Qry_MaterialPrice.FieldByName('SamplePrice').value*(EnDet.FieldByName('Charge_').value/100)+0.005)*100)/100 ;
                              IF RadioGroup1.ItemIndex=2 THEN
                                 EnDet.FieldByName('ERP_USPrice_').value:=trunc((Qry_MaterialPrice.FieldByName('SamplePrice').value*(EnDet.FieldByName('Charge_').value/100)+0.0005)*1000)/1000 ;
                              IF RadioGroup1.ItemIndex=3 THEN
                                 EnDet.FieldByName('ERP_USPrice_').value:=trunc((Qry_MaterialPrice.FieldByName('SamplePrice').value*(EnDet.FieldByName('Charge_').value/100)+0.00005)*10000)/10000 ;
                          end else
                          begin
                              IF MYROUND=0 THEN
                                EnDet.FieldByName('ERP_USPrice_').value:=trunc(Qry_MaterialPrice.FieldByName('SamplePrice').value*(EnDet.FieldByName('Charge_').value/100)+0.5) ;
                              IF MYROUND=1 THEN
                                EnDet.FieldByName('ERP_USPrice_').value:=trunc((Qry_MaterialPrice.FieldByName('SamplePrice').value*(EnDet.FieldByName('Charge_').value/100)+0.05)*10)/10 ;
                              IF MYROUND=2 THEN
                                EnDet.FieldByName('ERP_USPrice_').value:=trunc((Qry_MaterialPrice.FieldByName('SamplePrice').value*(EnDet.FieldByName('Charge_').value/100)+0.005)*100)/100 ;
                              IF MYROUND=3 THEN
                                EnDet.FieldByName('ERP_USPrice_').value:=trunc((Qry_MaterialPrice.FieldByName('SamplePrice').value*(EnDet.FieldByName('Charge_').value/100)+0.0005)*1000)/1000 ;
                              IF MYROUND=4 THEN
                                EnDet.FieldByName('ERP_USPrice_').value:=trunc((Qry_MaterialPrice.FieldByName('SamplePrice').value*(EnDet.FieldByName('Charge_').value/100)+0.00005)*10000)/10000 ;
                          end;
                      END;
                 END;
                 if (EnDet.FieldByName('ERP_VNPrice_').Value=0) or EnDet.FieldByName('ERP_VNPrice_').IsNull  then
                 begin
                     EnDet.FieldByName('ERP_VNPrice_').value := EnDet.FieldByName('ERP_USPrice_').value*EnDet.FieldByName('CWHL').value ;
                     //EnDet.FieldByName('VNPrice').value := EnDet.FieldByName('USPrice').value*EnDet.FieldByName('CWHL').value ;
                     //EnDet.FieldByName('VNACC').value := EnDet.FieldByName('USPrice').value*EnDet.FieldByName('CWHL').value*EnDet.FieldByName('QTY').value ;
                 end;
               end;
           end;
       end;
end;

procedure TPurConfirmPrice.EnDetVNPriceCTChange(Sender: TField);
begin
    if not EnDet.FieldByName('VNPriceCT').IsNull then
      begin
       // if EnDet.FieldByName('ACCVN').Isnull then
          if  COPY(EnDet.FieldByName('CLBH').value,1,2)='U1' then
            begin
             EnDet.Edit;
             EnDet.FieldByName('VNPrice').value:=trunc(EnDet.FieldByName('VNPriceCT').value*EnDet.FieldByName('CARTON_').value+0.5)  ;
             //EnDet.FieldByName('VNACC').value:=trunc(EnDet.FieldByName('VNPrice').value*EnDet.FieldByName('CARTON_').value*EnDet.FieldByName('Qty').value+0.5)  ;
          end;

      end;
end;


procedure TPurConfirmPrice.EnDetAfterOpen(DataSet: TDataSet);
begin
  if Flag_Confirm<>'confirm' then
  begin
   if (Chk_Copy.Checked) and (main.edit2.text='CDC')  then  //是開發...成長例外
      begin
        with EnDet do
          begin
            first;
            while not eof do
              begin
                EnDet.EDIT;
                EnDet.FieldByName('USPrice').value:=EnDet.FieldByName('ERP_USPrice_').value;
                IF EnDet.FieldByName('ERP_VNPrice_').value >0 THEN   //因為USD和VND不可同時有值,所以VND要大於0才COPY過去
                   EnDet.FieldByName('VNPrice').value:=EnDet.FieldByName('ERP_VNPrice_').value;
                NEXT;
              END;
           END;
      end;
  end;
end;

procedure TPurConfirmPrice.EnDetHandCarry_USPriceChange(Sender: TField);
begin
   if not EnDet.FieldByName('HandCarry_USPrice').IsNull then
   begin
      if  COPY(EnDet.FieldByName('CLBH').value,1,2)='U1' then
        begin
         EnDet.Edit;
         EnDet.FieldByName('HandCarry_USACC').value:=trunc(EnDet.FieldByName('HandCarry_USPrice').value*EnDet.FieldByName('Qty').value*100+0.5)/100  ;
        end
      else
        begin
         EnDet.Edit;
         EnDet.FieldByName('HandCarry_USACC').value:=trunc(EnDet.FieldByName('HandCarry_USPrice').value*EnDet.FieldByName('Qty').value*100+0.5)/100  ;
      end;
   end ELSE
   BEGIN
      EnDet.Edit;
      EnDet.FieldByName('HandCarry_USACC').value:=0 ;
   END;
end;

procedure TPurConfirmPrice.EnDetCWHLChange(Sender: TField);
begin
   if not EnDet.FieldByName('VNPrice').IsNull then
   begin
     EnDet.Edit;
     EnDet.FieldByName('VNPrice').value := EnDet.FieldByName('USPrice').value*EnDet.FieldByName('CWHL').value ;
     EnDet.FieldByName('VNACC').value := EnDet.FieldByName('USPrice').value*EnDet.FieldByName('CWHL').value*EnDet.FieldByName('QTY').value ;
   end ELSE
   BEGIN
     EnDet.Edit;
     EnDet.FieldByName('VNACC').value:=0 ;
     EnDet.FieldByName('VNPrice').value:=0 ;
   end;
end;

end.

