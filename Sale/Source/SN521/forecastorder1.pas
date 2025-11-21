unit forecastorder1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, GridsEh, DBGridEh,comobj, DBClient,
  DBCtrls, DB, DBTables, AppEvnts, Menus, ComCtrls;
type
  TRYDate=record
    DDBH:string;
    FlowIndex:integer;
    IsUsing:boolean;
end;
type
  TGender=record
    Gend:byte;
    KFCC:array of string;
end;
type
  Tforecastorder = class(TForm)
    FC: TQuery;

    ExcelDS: TDataSource;
    opendialog: TOpenDialog;
    upFC_IMPORT: TUpdateSQL;
    tmpQry: TQuery;
    FCYEAR: TStringField;
    FCMONTH: TStringField;
    FCtype: TStringField;
    FCdevcode: TStringField;
    FCarticle: TStringField;
    FCGSBH: TStringField;
    FCUSERID: TStringField;
    FCUSERDATE: TDateTimeField;
    FCJIJIE: TStringField;
    FC_xxzls: TQuery;
    DS_FC_xxzls: TDataSource;
    FC_xxzlsyear: TStringField;
    FC_xxzlsmonth: TStringField;
    FC_xxzlsjijie: TStringField;
    FC_xxzlstype: TStringField;
    FC_xxzlsarticle: TStringField;
    FC_xxzlsdevcode: TStringField;
    FC_xxzlsclbh: TStringField;
    FC_xxzlscscl: TFloatField;
    FC_xxzlstotal: TFloatField;
    FC_xxzlscsbh: TStringField;
    FC_xxzlszsywjc: TStringField;
    FC_xxzlsywpm: TStringField;
    DS_SR_check: TDataSource;
    SR_check: TQuery;
    PageControl2: TPageControl;
    TabSheet3: TTabSheet;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel1: TPanel;
    Panel2: TPanel;
    label35: TLabel;
    Label4: TLabel;
    BB9: TButton;
    SeaEdit: TEdit;
    BB7: TBitBtn;
    BB6: TBitBtn;
    BB5: TBitBtn;
    BB4: TBitBtn;
    BB3: TBitBtn;
    BB2: TBitBtn;
    BB1: TBitBtn;
    Panel3: TPanel;
    ExcelDBGridEh: TDBGridEh;
    Panel4: TPanel;
    TabSheet2: TTabSheet;
    Panel5: TPanel;
    Panel6: TPanel;
    DBGridEh2: TDBGridEh;
    SR_checkJiJie: TStringField;
    SR_checkGSBH: TStringField;
    SR_checkARTICLE: TStringField;
    SR_checkDevcode: TStringField;
    SR_checkYear: TStringField;
    SR_checkMonth: TStringField;
    SR_checkUserID: TStringField;
    SR_checkUserDate: TDateTimeField;
    SR_checktype: TStringField;
    Panel12: TPanel;
    DBGridEh6: TDBGridEh;
    DS_not_CFM: TDataSource;
    not_CFM: TQuery;
    Panel13: TPanel;
    DBGridEh1: TDBGridEh;
    TabSheet8: TTabSheet;
    Panel14: TPanel;
    Panel15: TPanel;
    Panel16: TPanel;
    DBGridEh7: TDBGridEh;
    Label22: TLabel;
    SR3Edit: TEdit;
    Button8: TButton;
    DS_CheckStage: TDataSource;
    CheckStage: TQuery;
    CheckStagedevcode: TStringField;
    CheckStagekfjd: TStringField;
    Panel17: TPanel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    TabSheet9: TTabSheet;
    Panel18: TPanel;
    Panel19: TPanel;
    Button9: TButton;
    ForXXZL: TQuery;
    ForXXZLDSS: TDBGridEh;
    ForXXZLDS: TDataSource;
    Button10: TButton;
    FC_xxzlsdwbh: TStringField;
    BC1: TBitBtn;
    BC2: TBitBtn;
    BC3: TBitBtn;
    BC4: TBitBtn;
    BC5: TBitBtn;
    BC6: TBitBtn;
    BC7: TBitBtn;
    upSR_check: TUpdateSQL;
    not_CFMyear: TStringField;
    not_CFMmonth: TStringField;
    not_CFMjijie: TStringField;
    not_CFMtype: TStringField;
    not_CFMdevcode: TStringField;
    Memo3: TMemo;
    ForXXZLstatus: TStringField;
    ForXXZLclzmlb: TStringField;
    ForXXZLyear: TStringField;
    ForXXZLywpm: TStringField;
    ForXXZLdwbh: TStringField;
    ForXXZLmonth: TStringField;
    ForXXZLjijie: TStringField;
    ForXXZLtype: TStringField;
    ForXXZLclbh: TStringField;
    ForXXZLtotal: TFloatField;
    ForXXZLcsbh: TStringField;
    ForXXZLzsywjc: TStringField;
    Panel20: TPanel;
    DBGridEh8: TDBGridEh;
    DS_not_xxzl: TDataSource;
    not_xxzl: TQuery;
    Panel21: TPanel;
    Memo2: TMemo;
    not_xxzlyear: TStringField;
    not_xxzlmonth: TStringField;
    not_xxzljijie: TStringField;
    not_xxzltype: TStringField;
    not_xxzlarticle: TStringField;
    not_xxzldevcode: TStringField;
    NoUsageList: TButton;
    ForXXZLarticle: TStringField;
    ForXXZLdevcode: TStringField;
    ForXXZLcscl: TFloatField;
    ForXXZLuserdate: TDateTimeField;
    FC_xxzlsuserdate: TDateTimeField;
    not_CFMuserdate: TDateTimeField;
    BC8: TBitBtn;
    BB8: TBitBtn;
    No_CFM: TBitBtn;
    Panel22: TPanel;
    Label1: TLabel;
    YearcoBox: TComboBox;
    Label2: TLabel;
    MonCoBox: TComboBox;
    TypeCoBox: TComboBox;
    Label3: TLabel;
    Label5: TLabel;
    SeaCoBox: TComboBox;
    Label17: TLabel;
    LocCoBox: TComboBox;
    Label6: TLabel;
    ComboBox5: TComboBox;
    StageEdit: TEdit;
    Label9: TLabel;
    SKUEdit: TEdit;
    Label26: TLabel;
    SREdit: TEdit;
    Label8: TLabel;
    MatNoEdit: TEdit;
    Label7: TLabel;
    Panel23: TPanel;
    Label10: TLabel;
    Sea2Cobox: TComboBox;
    Label11: TLabel;
    Label27: TLabel;
    YearEdit: TEdit;
    Label28: TLabel;
    MonthEdit: TEdit;
    Label29: TLabel;
    SR2Edit: TEdit;
    Type2CoBox: TComboBox;
    Button1: TButton;
    Button2: TButton;
    FC_xxzlspairs: TFloatField;
    FCtotal: TFloatField;
    SR_checkTotal: TFloatField;
    ForXXZLpairs: TFloatField;
    CBSum: TCheckBox;
    FC_xxzlsypcc: TStringField;
    FC_xxzlsclzmlb: TStringField;
    FC_xxzlsForecast_Leadtime: TIntegerField;
    CheckStageBuyNo: TStringField;
    Button3: TButton;
    CheckStageProductionLocation: TStringField;
    cbPro_loc: TComboBox;
    Label12: TLabel;
    BDelRec: TQuery;
    SR_checkYN: TStringField;
    TabSheet4: TTabSheet;
    Panel7: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    Panel8: TPanel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label18: TLabel;
    ComboBox1: TComboBox;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    ComboBox2: TComboBox;
    Button4: TButton;
    DBGridEh3: TDBGridEh;
    SR_checkYPDH: TStringField;
    Splitter1: TSplitter;
    DBGridEh4: TDBGridEh;
    DS_YPZL: TDataSource;
    Ypzl: TQuery;
    YpzlYPDH: TStringField;
    YpzlARTICLE: TStringField;
    YpzlKFJD: TStringField;
    YpzlDEVCODE: TStringField;
    BitBtn9: TBitBtn;
    FCYPDH: TStringField;
    Query1: TQuery;
    TabSheet5: TTabSheet;
    Panel9: TPanel;
    Label19: TLabel;
    Label20: TLabel;
    Button5: TButton;
    Edit4: TEdit;
    BitBtn10: TBitBtn;
    BitBtn11: TBitBtn;
    BitBtn12: TBitBtn;
    BitBtn13: TBitBtn;
    BitBtn14: TBitBtn;
    BitBtn15: TBitBtn;
    BitBtn16: TBitBtn;
    BitBtn17: TBitBtn;
    Panel10: TPanel;
    Label21: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    ComboBox3: TComboBox;
    ComboBox4: TComboBox;
    ComboBox6: TComboBox;
    ComboBox7: TComboBox;
    ComboBox8: TComboBox;
    ComboBox9: TComboBox;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Button6: TButton;
    CheckBox1: TCheckBox;
    ComboBox10: TComboBox;
    DBGridEh5: TDBGridEh;
    FC_xxzlsStage: TStringField;
    FC_xxzlscldhflex: TStringField;
    Label41: TLabel;
    Edit9: TEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BB9Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure BB1Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure NoUsageListClick(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure BC4Click(Sender: TObject);
    procedure BC5Click(Sender: TObject);
    procedure BC6Click(Sender: TObject);
    procedure BC8Click(Sender: TObject);
    procedure BB8Click(Sender: TObject);
    procedure No_CFMClick(Sender: TObject);
    procedure BB7Click(Sender: TObject);
    procedure BD7Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure SR_checkAfterOpen(DataSet: TDataSet);
    procedure BC1Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure BC3Click(Sender: TObject);
    procedure DBGridEh2GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure DBGridEh3DblClick(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure DBGridEh4GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure Button5Click(Sender: TObject);
    procedure BitBtn16Click(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    ExcelDataIsOK:boolean;
    ExcelDataSet:TDataSet;
    GenderInfo:array of TGender;
    OrderListExcel:Variant;
    OrderExcFN:string;//讀入Excel檔名
    { Private declarations }

  public
    { Public declarations }
  end;

var
  forecastorder: Tforecastorder;
  NDate:TDATE;
implementation
   uses main1,DDZLXXCCp,FunUnit;
{$R *.dfm}




procedure Tforecastorder.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    action:=cafree;
end;

procedure Tforecastorder.BB9Click(Sender: TObject);
var
  i,j,n,eof:integer;
  flag:boolean;
  MsExcel:olevariant;
  MsExcelWorkbook: Variant;
  Month,year,fctype,devcode,article,total:TStringlist;
begin

 label4.Visible:=true;
 SeaEdit.Visible:=true;
 if SeaEdit.text='' then
 begin
   showmessage('Plz input Season');
 end;
 if SeaEdit.text<>'' then
 begin
   panel3.visible:=trUe;
   bb5.enabled:=trUe;
   bb6.enabled:=trUe;
   with FC do
      begin
         active:=false;
         sql.Clear;
         sql.add('select YEAR,MONTH,type,devcode,article,total,GSBH,USERID,USERDATE,JIJIE,YPDH from FC_import where 1=2');
         active:=true;
      end;
    month:=TStringList.Create;
    year:=TStringList.Create;
    FCTYPE:=TStringList.Create;
    devcode:=TStringList.Create;
    article:=TStringList.Create;
    total:=TStringList.Create;
    if opendialog.Execute then begin
    MsExcel:=CreateOleObject('Excel.Application');
    MsExcelWorkBook := msExcel.Workbooks.Open(OpenDialog.FileName);
    n:=0;
    j:=2;
    flag:=true;
   // for i := 1 to 6 do
      while(flag=true)  do
       begin
         year.Add(msExcel.WorkBooks[1].WorkSheets[1].Cells[j,1]);
         month.Add(msExcel.WorkBooks[1].WorkSheets[1].Cells[j,2]);
         fctype.Add(msExcel.WorkBooks[1].WorkSheets[1].Cells[j,3]);
         devcode.Add(msExcel.WorkBooks[1].WorkSheets[1].Cells[j,4]);
         article.Add(msExcel.WorkBooks[1].WorkSheets[1].Cells[j,5]);
         total.Add(msExcel.WorkBooks[1].WorkSheets[1].Cells[j,6]);
         eof:=msExcel.WorkBooks[1].WorkSheets[1].Cells[j,1];
         label35.caption:=inttostr(n);
         n:=n+1;//秀出目前資料讀取比數
         j:=j+1;
         if (eof=0) then
         begin
           flag:=false;
         end;
       end;
   MsExcelWorkBook.Close;
   MsExcel.Quit;

   with FC do
     begin
     cachedupdates:=true;
     requestlive:=true;
     FC.edit;
     FC.first;
    end;

    for j:=0 to n-2 do
     begin
         FC.insert;
         FC.FieldByName('YEAR').value:=YEAR[j];
         FC.FieldByName('month').value:=month[j];
         FC.FieldByName('type').value:=FCtype[j];
         FC.FieldByName('devcode').value:=devcode[j];
         FC.FieldByName('article').value:=article[j];
         FC.FieldByName('total').value:=total[j];
         FC.FieldByName('gsbh').value:=main.Edit2.text;
         FC.FieldByName('USERID').value:=main.Edit1.text;
         FC.FieldByName('USERdate').value:=NDate;
         FC.FieldByName('jijie').value:=SeaEdit.text;
         FC.Post;
     end;
     FC.next;
 end;
 end;
end;






procedure Tforecastorder.FormCreate(Sender: TObject);
var i: integer;
   sheet:TTabSheet;
begin
 for i:=0 to PageControl1.PageCount-1   do
      begin
         sheet:=PageControl1.Pages[i];
         if sheet=PageControl1.ActivePage   then
            sheet.Highlighted:=true
         else
            sheet.Highlighted:=false;
      end;
  with tmpQry do          //取服務器的年月值
  begin
     active:=false;
     sql.Clear;
     sql.Add('select getdate() as NDate');
     active:=true;
     NDate:=fieldbyname('Ndate').value;
  end;
  with tmpQry do
  begin
     active:=false;
     sql.Clear;
     sql.add('select distinct year from fc_import');
     sql.add('order by year desc');
     active:=true;
     YearcoBox.items.clear;
     ComboBox3.items.clear;
     while not eof do
     begin
       YearcoBox.items.add(fieldbyname('year').asstring );
       ComboBox3.items.add(fieldbyname('year').asstring );
       next;
     end;
  end;
  with tmpQry do
  begin
     active:=false;
     sql.Clear;
     sql.add('select distinct month from fc_import');
     sql.add('order by month');
     active:=true;
     MonCoBox.items.clear;
     ComboBox4.items.clear;
     while not eof do
     begin
       MonCoBox.items.add(fieldbyname('month').asstring );
       ComboBox4.items.add(fieldbyname('month').asstring );
       next;
     end;
  end;
   with tmpQry do
   begin
     active:=false;
     sql.Clear;
     sql.add('select distinct type from fc_import');
     sql.add('order by type');
     active:=true;
     TypeCoBox.items.clear;
     Type2CoBox.items.clear;
     ComboBox2.items.clear;
     ComboBox6.items.clear;
     while not eof do
     begin
       TypeCoBox.items.add(fieldbyname('type').asstring );
       Type2CoBox.items.add(fieldbyname('type').asstring );
       ComboBox2.items.add(fieldbyname('type').asstring );
       ComboBox6.items.add(fieldbyname('type').asstring );
       next;
     end;
   end;
   with tmpQry do
   begin
       active:=false;
       sql.Clear;
       sql.add('select distinct jijie from fc_import');
       sql.add('order by jijie');
       active:=true;
       SeaCoBox.items.clear;
       Sea2Cobox.items.clear;
       ComboBox1.items.clear;
       ComboBox7.items.clear;
       while not eof do
       begin
         SeaCoBox.items.add(fieldbyname('jijie').asstring );
         Sea2Cobox.items.add(fieldbyname('jijie').asstring );
         ComboBox1.items.add(fieldbyname('jijie').asstring );
         ComboBox7.items.add(fieldbyname('jijie').asstring );
         next;
       end;
   end;
   with tmpQry do
   begin
      active:=false;
      sql.Clear;
      sql.Add('select distinct ProductionLocation');
      sql.Add('from YPZL');
      sql.Add('where ProductionLocation is not null and ProductionLocation<>''''');
      sql.Add('order by ProductionLocation');
      active:=true;
      cbPro_loc.Items.Clear;
      ComboBox10.items.clear;
      while not eof do
      begin
         cbPro_loc.items.add(fieldbyname('ProductionLocation').asstring );
         ComboBox10.items.add(fieldbyname('ProductionLocation').asstring );
         next;
      end;
   end;
   YearcoBox.ItemIndex:=0;
   MonCoBox.ItemIndex:=0;
   TypeCoBox.ItemIndex:=0;
   SeaCoBox.ItemIndex:=0;
   cbPro_loc.ItemIndex:=0;
end;



procedure Tforecastorder.BB5Click(Sender: TObject);
var
 i:integer;
begin
  label4.Visible:=false;
  SeaEdit.Visible:=false;
  try
    fc.cachedupdates:=true;
    fc.requestlive:=true;
    fc.first;
    for i:=1 to fc.RecordCount do
    begin
      case fc.updatestatus of
      usinserted:
           upFC_IMPORT.apply(ukinsert);
      end;
      fc.next;
    end;
    with fc do
    begin
       active:=false;
       requestlive:=false;
       cachedupdates:=false;
       active:=true;
    end;
    bb1.Enabled:=true;
    bb2.Enabled:=true;
    bb3.Enabled:=true;
    bb4.Enabled:=true;
    bb5.Enabled:=false;
    bb6.Enabled:=false;
    panel3.visible:=false;
    except
       Messagedlg('Have wrong,can not save!',mtwarning,[mbyes],0);
   end;

end;

procedure Tforecastorder.BB1Click(Sender: TObject);
begin
  Panel22.Visible:=true;
end;

procedure Tforecastorder.BB6Click(Sender: TObject);
begin
  label4.Visible:=false;
  SeaEdit.Visible:=false;
  with fc do
  begin
    active:=false;
    cachedupdates:=false;
    requestlive:=false;
    active:=true;
  end;
  bb1.Enabled:=true;
  bb2.Enabled:=true;
  bb3.Enabled:=true;
  bb4.Enabled:=true;
  bb5.Enabled:=false;
  bb6.Enabled:=false;
  Label4.Visible:=false;
  SeaEdit.Visible:=false;
  panel3.visible:=false;
end;

procedure Tforecastorder.NoUsageListClick(Sender: TObject);
var   a:string;
      eclApp,WorkBook:olevariant;
      i,j:integer;
 begin
  if  not_xxzl.active  then
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
        for   i:=0   to   not_CFM.fieldcount-1   do
          begin
              eclApp.Cells(1,i+1):=not_xxzl.fields[i].FieldName;
          end;

        not_xxzl.First;
        j:=2;
        while   not   not_xxzl.Eof   do
          begin
            for   i:=0   to  not_xxzl.fieldcount-1  do
            begin
              eclApp.Cells(j,i+1):=not_xxzl.Fields[i].Value;
            end;
          not_xxzl.Next;
          inc(j);
          end;
      eclapp.columns.autofit;
      showmessage('Succeed');
       eclApp.Visible:=True;
      except
        on   F:Exception   do
          showmessage(F.Message);
      end;
    end;
end;

procedure Tforecastorder.Button8Click(Sender: TObject);
begin
   with CheckStage do
   begin
     active:=false;
     sql.Clear;
     sql.add('select distinct kfxxzl.devcode,ypzl.kfjd,Max(BuyNo) as BuyNo,ypzl.ProductionLocation from ypzl');
     sql.add('left join kfxxzl on ypzl.xiexing=kfxxzl.xiexing and ypzl.shehao=kfxxzl.shehao');
     sql.Add('left join ddzl on ddzl.XieXing=kfxxzl.XieXing and ddzl.SheHao=kfxxzl.SheHao and ddzl.GSBH='''+main.edit2.text+'''');
     sql.add('where kfxxzl.devcode is not null');
     if SR3Edit.text<>'' then
        sql.add('and kfxxzl.devcode like ''%'+SR3Edit.text+'%'' ');
     sql.Add('group by kfxxzl.devcode,ypzl.kfjd,ypzl.ProductionLocation');
     active:=true;
   end;
end;
procedure Tforecastorder.Button9Click(Sender: TObject);
begin

    with ForXXZL do
    begin
         active:=false;
         sql.Clear;
         sql.add('select case bwlb when ''3'' then ''Special'' else ''Normal'' end as status ,clzl.clzmlb,year,clzl.ywpm,clzl.dwbh,');
         sql.add('month,a.userdate,jijie,type,article,devcode,clbh,pairs,sum(total) as cscl,pairs*sum(total) as total,isnull(csbh,'''') csbh,isnull(zsywjc,'''') zsywjc  from(');
         sql.add('select xxzls.bwlb,xxzls.bwbh,xxzl.article,FC_import.year,FC_import.month,FC_import.userdate,FC_import.jijie,FC_import.type,');
         sql.add('FC_import.devcode,xxzls.clbh,FC_import.total as pairs,xxzls.clsl as total,xxzls.csbh,zszl.zsywjc from FC_import');
         sql.add('left join xxzl on xxzl.article=fc_import.article');
         sql.add('left join xxzls on xxzls.xiexing = xxzl.xiexing and xxzls.shehao = xxzl.shehao');
         sql.add('left join zszl on zszl.zsdh=xxzls.csbh');
         sql.add('where xxzls.clbh is not null and len(FC_import.article )>1  ');
         if YearcoBox.text<>'' then
            sql.add('and FC_import.year='''+YearcoBox.text+''' ');
         if MonCoBox.text<>'' then
            sql.add('and FC_import.month='''+MonCoBox.text+''' ');
         if TypeCoBox.text<>'' then
            sql.add('and FC_import.type='''+TypeCoBox.text+''' ');
         if SeaCoBox.text<>'' then
            sql.add('and FC_import.jijie='''+SeaCoBox.text+''' ');
         if combobox5.text<>'' then
            sql.add('and xxzls.csbh='''+combobox5.text+''' ');
         if MatNoEdit.text<>'' then
            sql.add('and xxzls.clbh like '''+MatNoEdit.text+'%'+'''');
         if SKUEdit.text<>'' then
            sql.add('and xxzl.article='''+SKUEdit.text+''' ');
         sql.add('group by xxzls.bwlb,xxzls.bwbh,xxzl.article,xxzls.clsl,FC_import.year,FC_import.month,FC_import.userdate,FC_import.jijie,FC_import.type,FC_import.article,FC_import.devcode,xxzls.clbh,FC_import.total ,xxzls.csbh,zszl.zsywjc');

         sql.add('union');
         sql.add('select xxzls.bwlb,xxzls.bwbh,xxzl.article,FC_import.year,FC_import.month,FC_import.userdate,FC_import.jijie,FC_import.type,');
         sql.add('FC_import.devcode,clzhzl.cldh1,FC_import.total as pairs,xxzls.clsl*clzhzl.syl as total,clzhzl.zsdh,zszl.zsywjc');
         sql.add('FROM FC_import');
         sql.add('left join xxzl on xxzl.article=fc_import.article');
         sql.add('left join xxzls on xxzls.xiexing = xxzl.xiexing and xxzls.shehao = xxzl.shehao');
         sql.add('inner join clzhzl on clzhzl.cldh=xxzls.clbh');
         sql.add('LEFT JOIN CLZL   ON clzhzl.cldh1 = CLZL.cldh');
         sql.add('LEFT JOIN ZSZL on ZSZL.ZSDH=clzhzl.zsdh');
         sql.add('where  xxzls.clbh is not null and len(FC_import.article )>1 ');
         if YearcoBox.text<>'' then
            sql.add('and FC_import.year='''+YearcoBox.text+''' ');
         if MonCoBox.text<>'' then
            sql.add('and FC_import.month='''+MonCoBox.text+''' ');
         if TypeCoBox.text<>'' then
            sql.add('and FC_import.type='''+TypeCoBox.text+''' ');
         if SeaCoBox.text<>'' then
            sql.add('and FC_import.jijie='''+SeaCoBox.text+''' ');
         if combobox5.text<>'' then
            sql.add('and xxzls.csbh='''+combobox5.text+''' ');
         if MatNoEdit.text<>'' then
            sql.add('and xxzls.clbh like '''+MatNoEdit.text+'%'+'''');
         if SKUEdit.text<>'' then
            sql.add('and xxzl.article='''+SKUEdit.text+''' ');
         sql.add('GROUP BY xxzls.bwlb,xxzls.bwbh,xxzl.article,FC_import.year,FC_import.month,FC_import.userdate,FC_import.jijie,FC_import.type,FC_import.article,');
         sql.add('FC_import.devcode,clzhzl.cldh1,FC_import.total,xxzls.clsl*clzhzl.syl,clzhzl.zsdh,zszl.zsywjc');

         sql.add('union');
         sql.add('select bwlb,bwbh,article,year,month,clzhzl2.userdate,jijie,type,devcode,clzhzl.cldh1,pairs,total,clzhzl.zsdh,ZSZL.zsywjc from(');
         sql.add('select xxzls.bwlb,xxzls.bwbh,xxzl.article,FC_import.year,FC_import.month,FC_import.userdate,FC_import.jijie,FC_import.type,');
         sql.add('FC_import.devcode,clzhzl.cldh1,FC_import.total as pairs,xxzls.clsl*clzhzl.syl as total,clzhzl.zsdh,zszl.zsywjc');
         sql.add('FROM FC_import');
         sql.add('left join xxzl on xxzl.article=fc_import.article');
         sql.add('left join xxzls on xxzls.xiexing = xxzl.xiexing and xxzls.shehao = xxzl.shehao');
         sql.add('inner join clzhzl on clzhzl.cldh=xxzls.clbh');
         sql.add('LEFT JOIN CLZL   ON clzhzl.cldh1 = CLZL.cldh');
         sql.add('LEFT JOIN ZSZL on ZSZL.ZSDH=clzhzl.zsdh');
         sql.add('where  xxzls.clbh is not null  ');
         sql.add('and CLZHZL.SYL>0  and clzl.clzmlb=''Y'' and len(FC_import.article )>1');
         if YearcoBox.text<>'' then
            sql.add('and FC_import.year='''+YearcoBox.text+''' ');
         if MonCoBox.text<>'' then
            sql.add('and FC_import.month='''+MonCoBox.text+''' ');
         if TypeCoBox.text<>'' then
            sql.add('and FC_import.type='''+TypeCoBox.text+''' ');
         if SeaCoBox.text<>'' then
            sql.add('and FC_import.jijie='''+SeaCoBox.text+''' ');
         if combobox5.text<>'' then
            sql.add('and xxzls.csbh='''+combobox5.text+''' ');
         if MatNoEdit.text<>'' then
            sql.add('and xxzls.clbh like '''+MatNoEdit.text+'%'+'''');
         if SKUEdit.text<>'' then
            sql.add('and xxzl.article='''+SKUEdit.text+''' ');
         sql.add('GROUP BY xxzls.bwlb,xxzls.bwbh,xxzl.article,FC_import.year,FC_import.month,FC_import.userdate,FC_import.jijie,FC_import.type,FC_import.article,');
         sql.add('FC_import.devcode,clzhzl.cldh1,FC_import.total,xxzls.clsl*clzhzl.syl,clzhzl.zsdh,zszl.zsywjc)clzhzl2');
         sql.add('inner join clzhzl ON  clzhzl2.cldh1 = CLZHZL.cldh');
         sql.add('LEFT JOIN ZSZL on ZSZL.ZSDH=clzhzl.zsdh');
         sql.add('WHERE CLZHZL.cldh1 is not null');
         sql.add(' ) a');
         sql.add('left join clzl on clzl.cldh=a.clbh');
         sql.add('where clzl.clzmlb <>''Y''');
         sql.add('group by bwlb,clzl.clzmlb,clzl.dwbh,year,month,a.userdate,jijie,ywpm,type,article,devcode,clbh,pairs,csbh,zsywjc');
         //funcObj.WriteErrorLog(sql.Text);
         active:=true;
         //memo4.Text:=sql.text;
      end;

      with not_xxzl do
      begin
         active:=false;
         sql.Clear;
         sql.add('select FC_import.year,FC_import.month,FC_import.userdate,FC_import.jijie,FC_import.type,');
         sql.add('FC_import.article,FC_import.devcode from FC_import');
         sql.add('where len(isnull(FC_import.article,''''))>1 ');
         if YearcoBox.text<>'' then
            sql.add('and FC_import.year='''+YearcoBox.text+''' ');
         if MonCoBox.text<>'' then
            sql.add('and FC_import.month='''+MonCoBox.text+''' ');
         if TypeCoBox.text<>'' then
            sql.add('and FC_import.type='''+TypeCoBox.text+''' ');
         if SeaCoBox.text<>'' then
            sql.add('and FC_import.jijie='''+SeaCoBox.text+''' ');
         sql.add('and not exists (select article from xxzl where FC_import.article=article)');
         sql.add('union ');
         sql.add('select FC_import.year,FC_import.month,FC_import.userdate,FC_import.jijie,FC_import.type,');
         sql.add('FC_import.article,FC_import.devcode from FC_import');
         sql.add('where len(isnull(FC_import.article,''''))<1 ');
         if YearcoBox.text<>'' then
            sql.add('and FC_import.year='''+YearcoBox.text+''' ');
         if MonCoBox.text<>'' then
            sql.add('and FC_import.month='''+MonCoBox.text+''' ');
         if TypeCoBox.text<>'' then
            sql.add('and FC_import.type='''+TypeCoBox.text+''' ');
         if SeaCoBox.text<>'' then
            sql.add('and FC_import.jijie='''+SeaCoBox.text+''' ');
         //memo2.text:=sql.text;
         //funcObj.WriteErrorLog(sql.Text);
         active:=true;
      end;
end;

procedure Tforecastorder.Button10Click(Sender: TObject);
var   a:string;
      eclApp,WorkBook:olevariant;
      i,j:integer;
 begin
  if  forxxzl.active  then
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
        eclApp.Cells(1,1):='Status';
        eclApp.Cells(1,2):='Year';
        eclApp.Cells(1,3):='Month';
        eclApp.Cells(1,4):='Season';
        eclApp.Cells(1,5):='Type';
        eclApp.Cells(1,6):='SKU';
        eclApp.Cells(1,7):='SR';
        eclApp.Cells(1,8):='Material Code';
        eclApp.Cells(1,9):='Material Unit';
        eclApp.Cells(1,10):='Pairs';
        eclApp.Cells(1,11):='Usage';
        eclApp.Cells(1,12):='Total QTY';
        eclApp.Cells(1,13):='Supplier Code';
        eclApp.Cells(1,14):='Supplier Name';
        eclApp.Cells(1,15):='Material Name';
        forxxzl.First;
        j:=2;
        while   not   forxxzl.Eof   do
          begin
            for   i:=0   to  forxxzl.fieldcount-1  do
            begin
              eclApp.Cells(j,i+1):=forxxzl.Fields[i].Value;
            end;
          forxxzl.Next;
          inc(j);
          end;
      eclapp.columns.autofit;
      showmessage('Succeed');
       eclApp.Visible:=True;
      except
        on   F:Exception   do
          showmessage(F.Message);
      end;
    end;
end;

procedure Tforecastorder.BC4Click(Sender: TObject);
begin
  with SR_check do
  begin
    cachedupdates:=true;
    requestlive:=true;
    edit;
  end;
  BC5.enabled:=true;
  BC6.enabled:=true;
end;

procedure Tforecastorder.BC5Click(Sender: TObject);
var i:integer;
begin
   try
     SR_check.cachedupdates:=true;
     SR_check.requestlive:=true;
     SR_check.first;
     for i:=1 to SR_check.RecordCount do
     begin
        case SR_check.updatestatus of
         usmodified:
          begin
            if SR_check.FieldByName('UserID').Value=main.Edit1.Text then
            begin
              if SR_check.FieldByName('YN').Value='0'  then
              begin
               with BDelRec do
               begin
                  active:=false;
                  sql.Clear;
                  sql.add('insert into BDelRec ');
                  sql.add('(TableName ,TNO,CLBH,OldID,DelID,DelDate)');
                  sql.add('values ('+''''+'FC_Import'+''''+','+''''+SR_check.fieldbyname('type').Value+'***'+SR_check.fieldbyname('jijie').Value+'''');
                  sql.add(','+''''+SR_check.fieldbyname('devcode').Value+'***'+SR_check.fieldbyname('article').Value+''''+','+''''+SR_check.fieldbyname('USERID').Value+''''+',');
                  sql.add(''''+main.Edit1.Text+''''+',getdate())');
                  execsql;
                  active:=false;
               end;
               upSR_check.apply(ukdelete);
              end else
              begin
               SR_check.Edit;
               SR_check.FieldByName('USERID').value:=main.Edit1.text;
               SR_check.FieldByName('USERdate').value:=NDate;
               SR_check.Post;
               upSR_check.apply(ukmodify);
              end;
            end else
            begin
              Showmessage('It is not yours, can not modify.');
            end;
          end;
        end;
        SR_check.next;
     end;
     with SR_check do
     begin
        active:=false;
        requestlive:=false;
        cachedupdates:=false;
        active:=true;
     end;
     BC5.enabled:=false;
     BC6.enabled:=false;
   except
   Messagedlg('Have wrong,can not save!',mtwarning,[mbyes],0);
   end;
end;

procedure Tforecastorder.BC6Click(Sender: TObject);
begin
  with SR_check do
  begin
    active:=false;
    cachedupdates:=false;
    requestlive:=false;
    active:=true;
  end;
  BC5.enabled:=false;
  BC6.enabled:=false;
  
end;

procedure Tforecastorder.BC8Click(Sender: TObject);
var   a:string;
      eclApp,WorkBook:olevariant;
      i,j:integer;
 begin
  if  sr_check.active  then
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
        for   i:=0   to   sr_check.fieldcount-1   do
          begin
              eclApp.Cells(1,i+1):=sr_check.fields[i].FieldName;
          end;

        sr_check.First;
        j:=2;
        while   not   sr_check.Eof   do
          begin
            for   i:=0   to  sr_check.fieldcount-1  do
            begin
              eclApp.Cells(j,i+1):=sr_check.Fields[i].Value;
            end;
          sr_check.Next;
          inc(j);
          end;
      eclapp.columns.autofit;
      showmessage('Succeed');
       eclApp.Visible:=True;
      except
        on   F:Exception   do
          showmessage(F.Message);
      end;
    end;

end;

procedure Tforecastorder.BB8Click(Sender: TObject);
var   a:string;
      eclApp,WorkBook:olevariant;
      i,j:integer;
 begin
  if  fc_xxzls.active  then
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
        eclApp.Cells(1,1):='Year';
        eclApp.Cells(1,2):='Month';
        eclApp.Cells(1,3):='Season';
        eclApp.Cells(1,4):='Type';
        eclApp.Cells(1,5):='SKU';
        eclApp.Cells(1,6):='SR#';
        eclApp.Cells(1,7):='Material Code';
        eclApp.Cells(1,8):='Pairs';
        eclApp.Cells(1,9):='Usage';
        eclApp.Cells(1,10):='Total QTY';
        eclApp.Cells(1,11):='Supplier Code';
        eclApp.Cells(1,12):='Supplier Name';
        eclApp.Cells(1,13):='Material Name';
        eclApp.Cells(1,14):='Material Unit';
        fc_xxzls.First;
        j:=2;
        while   not   fc_xxzls.Eof   do
          begin
            for   i:=0   to  fc_xxzls.fieldcount-1  do
            begin
              eclApp.Cells(j,i+1):=fc_xxzls.Fields[i].Value;
            end;
          fc_xxzls.Next;
          inc(j);
          end;
      eclapp.columns.autofit;
      showmessage('Succeed');
       eclApp.Visible:=True;
      except
        on   F:Exception   do
          showmessage(F.Message);
      end;
    end;

end;

procedure Tforecastorder.No_CFMClick(Sender: TObject);
var   a:string;
      eclApp,WorkBook:olevariant;
      i,j:integer;
 begin
  if  not_CFM.active  then
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
        for   i:=0   to   not_CFM.fieldcount-1   do
        begin
              eclApp.Cells(1,i+1):=not_CFM.fields[i].FieldName;
        end;
        not_CFM.First;
        j:=2;
        while   not   not_CFM.Eof   do
        begin
            for   i:=0   to  not_CFM.fieldcount-1  do
            begin
              eclApp.Cells(j,i+1):=not_CFM.Fields[i].Value;
            end;
          not_CFM.Next;
          inc(j);
        end;
      eclapp.columns.autofit;
      showmessage('Succeed');
      eclApp.Visible:=True;
      except
        on   F:Exception   do
          showmessage(F.Message);
      end;
    end;

end;

procedure Tforecastorder.BB7Click(Sender: TObject);
begin
  Close;
end;

procedure Tforecastorder.BD7Click(Sender: TObject);
begin
  Close;
end;

procedure Tforecastorder.Button1Click(Sender: TObject);
var
  SplitStr: TStringList;
  i: integer;
begin
  if PageControl1.ActivePageIndex = 2 then begin
    if TypeCoBox.text='' then
    begin
      showmessage('plz choose Type');
    end;
    if TypeCoBox.text<>'' then
    begin
      SplitStr := TStringList.Create;
      with FC_xxzls do
      begin
         active:=false;
         sql.Clear;
         if CBSum.Checked=true then
         begin
         sql.add('select MAX(ypcc) as ypcc,[YEAR],[MONTH],jijie,[type],''All'' as article,''All'' as devcode,clbh,Forecast_Leadtime,ywpm,dwbh,clzmlb,SUM(pairs) as pairs,MAX(cscl) as cscl,');
         sql.add('SUM(total) as total,MAX(csbh) as csbh,MAX(zsywjc) as zsywjc,MAX(userdate) as userdate,'' '' as Stage,cldhflex from ( ');
         end;
         sql.add('select max(ypcc) as ypcc,clzl.clzmlb,year,clzl.ywpm,clzl.dwbh,month,jijie,type,article,devcode,a.clbh,Forecast_Leadtime,pairs,sum(total) as cscl,pairs*sum(total) as total,csbh,zsywjc,a.userdate,'' '' as Stage,cldhflex  from(');
         sql.add('select ypzl.ypcc,ypzls.bwbh,xxzl.article,FC_import.year,FC_import.month,FC_import.jijie,FC_import.type,');
//         sql.add('FC_import.devcode,ypzls.clbh,FC_import.total as pairs,ypzls.clsl as total,ypzls.csbh,zszl.zsywjc,FC_import.userdate');
         sql.add('FC_import.devcode,ypzls.clbh,FC_import.total as pairs,ypzls.Costing_CLSL as total,ypzls.csbh,zszl.zsywjc,FC_import.userdate');
         sql.add('from FC_import ');
         sql.add('left join kfxxzl on kfxxzl.devcode=fc_import.devcode  and kfxxzl.ARTICLE=FC_Import.ARTICLE ');
         sql.add('left join xxzl on xxzl.xiexing=kfxxzl.xiexing and xxzl.shehao=kfxxzl.shehao');
         if StageEdit.text='' then
         begin
            sql.add('left join ( select * from (select size.*,ypzl.ypdh,row_number() over(PARTITION by size.article ORDER BY size.article desc) as score from (select max(ypcc) as ypcc,');
            sql.add('xiexing+shehao as article,kfjd,xiexing,shehao from ypzl where kfjd=''CFM''');
            if cbPro_loc.Text<>'' then
            begin
              sql.Add('and ypzl.ProductionLocation='''+cbPro_loc.Text+'''');
            end;
            sql.add ('group by xiexing+shehao,kfjd,xiexing,shehao) size');
            sql.add('           left join (select * from ypzl where kfjd=''CFM''');
            if cbPro_loc.Text<>'' then
            begin
              sql.Add('and ypzl.ProductionLocation='''+cbPro_loc.Text+'''');
            end;
            sql.Add(') ypzl on size.xiexing = ypzl.xiexing and size.shehao = ypzl.shehao and size.ypcc = ypzl.ypcc)ypzl where score=1');
         end;
         if StageEdit.text<>'' then
         begin
            sql.add('left join ( select * from (select size.*,ypzl.ypdh,row_number() over(PARTITION by size.article ORDER BY size.article desc) as score from (select max(ypcc) as ypcc,xiexing+shehao as article,kfjd,xiexing,shehao from ypzl where kfjd='''+StageEdit.text+'''');
            if cbPro_loc.Text<>'' then
            begin
              sql.Add('and ypzl.ProductionLocation='''+cbPro_loc.Text+'''');
            end;
            sql.add('group by xiexing+shehao,kfjd,xiexing,shehao) size');
            sql.add('            left join (select * from ypzl where kfjd='''+StageEdit.text+'''');
            if cbPro_loc.Text<>'' then
            begin
              sql.Add('and ypzl.ProductionLocation='''+cbPro_loc.Text+'''');
            end;
            sql.Add(') ypzl on size.xiexing = ypzl.xiexing and size.shehao = ypzl.shehao and size.ypcc = ypzl.ypcc)ypzl where score=1');
         end;
         sql.add('           ) ypzl on ypzl.xiexing=kfxxzl.xiexing and ypzl.shehao=kfxxzl.shehao');
         sql.add('left join ypzls on ypzls.ypdh=ypzl.ypdh');
         sql.add('left join zszl on zszl.zsdh=ypzls.csbh');
         //抓取樣品碼
         sql.add('where ypzls.clbh is not null');
         if YearcoBox.text<>'' then
            sql.add('and FC_import.year='''+YearcoBox.text+''' ');
         if MonCoBox.text<>'' then
            sql.add('and FC_import.month='''+MonCoBox.text+''' ');
         if TypeCoBox.text<>'' then
            sql.add('and FC_import.type='''+TypeCoBox.text+''' ');
         if SeaCoBox.text<>'' then
            sql.add('and FC_import.jijie='''+SeaCoBox.text+''' ');
         if combobox5.text<>'' then
            sql.add('and ypzls.csbh='''+combobox5.text+''' ');
         if StageEdit.text='' then
            sql.add('and ypzl.kfjd=''CFM'' ');
         if StageEdit.text<>'' then
            sql.add('and ypzl.kfjd='''+StageEdit.text+''' ');
         if MatNoEdit.text<>'' then
         begin
            if (Pos(',', MatNoEdit.Text) > 0) then
            begin
              SplitStr.Delimiter := ',';
              SplitStr.DelimitedText := MatNoEdit.Text;
              sql.add('and (');
              for i := 0 to SplitStr.Count-1 do
              begin
                if (i = 0) then
                  sql.add('ypzls.clbh like '''+SplitStr[i]+'%'+'''')
                else
                  sql.add('OR ypzls.clbh like '''+SplitStr[i]+'%'+'''');
              end;
              sql.Add(')');
            end
            else begin
              sql.add('and ypzls.clbh like '''+MatNoEdit.text+'%'+'''');
            end;
         end;
         if SREdit.text<>'' then
            sql.add('and kfxxzl.devcode='''+SREdit.text+''' ');
//         sql.add('group by ypzl.ypcc,ypzls.bwbh,xxzl.article,ypzls.CLSL,FC_import.year,FC_import.month,FC_import.jijie,FC_import.type,FC_import.article,FC_import.devcode,ypzls.clbh,FC_import.total ,ypzls.csbh,zszl.zsywjc,FC_import.userdate');
         sql.add('group by ypzl.ypcc,ypzls.bwbh,xxzl.article,ypzls.Costing_CLSL,FC_import.year,FC_import.month,FC_import.jijie,FC_import.type,FC_import.article,FC_import.devcode,ypzls.clbh,FC_import.total ,ypzls.csbh,zszl.zsywjc,FC_import.userdate');
         sql.add('union');

         sql.add('select ypzl.ypcc,ypzls.bwbh,xxzl.article,FC_import.year,FC_import.month,FC_import.jijie,FC_import.type,');
//         sql.add('FC_import.devcode,clzhzl.cldh1,FC_import.total as pairs,ypzls.CLSL*clzhzl.syl as total,clzhzl.zsdh,zszl.zsywjc,FC_import.userdate');
         sql.add('FC_import.devcode,clzhzl.cldh1,FC_import.total as pairs,ypzls.Costing_CLSL*clzhzl.syl as total,clzhzl.zsdh,zszl.zsywjc,FC_import.userdate');
         sql.add('FROM FC_import');
         sql.add('left join kfxxzl on kfxxzl.devcode=fc_import.devcode and kfxxzl.ARTICLE=FC_Import.ARTICLE ');
         sql.add('left join xxzl on xxzl.xiexing=kfxxzl.xiexing and xxzl.shehao=kfxxzl.shehao');
         if StageEdit.text='' then
         begin
            sql.add('left join ( select * from (select size.*,ypzl.ypdh,row_number() over(PARTITION by size.article ORDER BY size.article desc) as score from (select max(ypcc) as ypcc,');
            sql.add('article,kfjd,xiexing,shehao from ypzl where kfjd=''CFM''');
            if cbPro_loc.Text<>'' then
            begin
              sql.Add('and ypzl.ProductionLocation='''+cbPro_loc.Text+'''');
            end;
            sql.Add('group by article,kfjd,xiexing,shehao) size');
            sql.add('           left join (select * from ypzl where kfjd=''CFM''');
            if cbPro_loc.Text<>'' then
            begin
              sql.Add('and ypzl.ProductionLocation='''+cbPro_loc.Text+'''');
            end;
            sql.Add(') ypzl on size.xiexing = ypzl.xiexing and size.shehao = ypzl.shehao and size.ypcc = ypzl.ypcc)ypzl where score=1');
         end;
         if StageEdit.text<>'' then
         begin
            sql.add('left join ( select * from (select size.*,ypzl.ypdh,row_number() over(PARTITION by size.article ORDER BY size.article desc) as score from (select max(ypcc) as ypcc,xiexing+shehao as article,kfjd,xiexing,shehao from ypzl where kfjd='''+StageEdit.text+'''');
            if cbPro_loc.Text<>'' then
            begin
              sql.Add('and ypzl.ProductionLocation='''+cbPro_loc.Text+'''');
            end;
            sql.Add('group by xiexing+shehao,kfjd,xiexing,shehao) size');
            sql.add('            left join (select * from ypzl where kfjd='''+StageEdit.text+'''');
            if cbPro_loc.Text<>'' then
            begin
              sql.Add('and ypzl.ProductionLocation='''+cbPro_loc.Text+'''');
            end;
            sql.Add(') ypzl on size.xiexing = ypzl.xiexing and size.shehao = ypzl.shehao and size.ypcc = ypzl.ypcc)ypzl where score=1');
         end;
         sql.add('           ) ypzl on ypzl.xiexing=kfxxzl.xiexing and ypzl.shehao=kfxxzl.shehao');
         sql.add('left join ypzls on ypzls.ypdh=ypzl.ypdh');
         sql.add('inner join clzhzl on clzhzl.cldh=ypzls.clbh');
         sql.add('LEFT JOIN BWZL  ON ypzls.BWBH = BWZL.bwdh');
         sql.add('LEFT JOIN CLZL   ON clzhzl.cldh1 = CLZL.cldh');
         sql.add('LEFT JOIN LBZLS ON SUBSTRING(ypzls.CLBH,1,1) = LBZLS.lbdh AND LBZLS.LB=''05''');
         sql.add('LEFT JOIN ZSZL on ZSZL.ZSDH=clzhzl.zsdh');
         //抓取樣品碼
         //  sql.add('left join (select xiexing,shehao,ypcc as ypccc from ypzl where kfjd=''CR1''  or kfjd=''CR2'' group by xiexing,shehao,ypcc)size on size.xiexing=ypzl.xiexing and size.shehao=ypzl.shehao');
         sql.add('where  ypzls.clbh is not null');
         //  sql.add('and ypzl.ypcc=size.ypccc');
         if YearcoBox.text<>'' then
            sql.add('and FC_import.year='''+YearcoBox.text+''' ');
         if MonCoBox.text<>'' then
            sql.add('and FC_import.month='''+MonCoBox.text+''' ');
         if TypeCoBox.text<>'' then
            sql.add('and FC_import.type='''+TypeCoBox.text+''' ');
         if SeaCoBox.text<>'' then
            sql.add('and FC_import.jijie='''+SeaCoBox.text+''' ');
         if combobox5.text<>'' then
            sql.add('and clzhzl.zsdh='''+combobox5.text+''' ');
         if StageEdit.text='' then
            sql.add('and ypzl.kfjd=''CFM'' ');
         if StageEdit.text<>'' then
            sql.add('and ypzl.kfjd='''+StageEdit.text+''' ');
         if MatNoEdit.text<>'' then
         begin
            if (Pos(',', MatNoEdit.Text) > 0) then
            begin
              SplitStr.Delimiter := ',';
              SplitStr.DelimitedText := MatNoEdit.Text;
              sql.add('and (');
              for i := 0 to SplitStr.Count-1 do
              begin
                if (i = 0) then
                  sql.add('clzhzl.cldh1 like '''+SplitStr[i]+'%'+'''')
                else
                  sql.add('OR clzhzl.cldh1 like '''+SplitStr[i]+'%'+'''');
              end;
              sql.Add(')');
            end
            else begin
              sql.add('and clzhzl.cldh1 like '''+MatNoEdit.text+'%'+'''');
            end;
         end;
         if SREdit.text<>'' then
            sql.add('and kfxxzl.devcode='''+SREdit.text+''' ');
         sql.add('GROUP BY ypzl.ypcc,ypzls.bwbh,xxzl.article,FC_import.year,FC_import.month,FC_import.jijie,FC_import.type,FC_import.article,');
//         sql.add('FC_import.devcode,clzhzl.cldh1,FC_import.total,ypzls.CLSL*clzhzl.syl,clzhzl.zsdh,zszl.zsywjc,FC_import.userdate');
         sql.add('FC_import.devcode,clzhzl.cldh1,FC_import.total,ypzls.Costing_CLSL*clzhzl.syl,clzhzl.zsdh,zszl.zsywjc,FC_import.userdate');

         sql.add('union');
         sql.add('select ypcc,bwbh,article,year,month,jijie,type,devcode,clzhzl.cldh1,pairs,total,clzhzl.zsdh,ZSZL.zsywjc,clzhzl2.userdate from(  ');
         sql.add('select ypzl.ypcc,ypzls.bwbh,xxzl.article,FC_import.year,FC_import.month,FC_import.jijie,FC_import.type,');
//         sql.add('FC_import.devcode,clzhzl.cldh1,FC_import.total as pairs,ypzls.CLSL*clzhzl.syl as total,clzhzl.zsdh,zszl.zsywjc,FC_import.userdate');
         sql.add('FC_import.devcode,clzhzl.cldh1,FC_import.total as pairs,ypzls.Costing_CLSL*clzhzl.syl as total,clzhzl.zsdh,zszl.zsywjc,FC_import.userdate');
         sql.add('FROM FC_import');
         sql.add('left join kfxxzl on kfxxzl.devcode=fc_import.devcode and kfxxzl.ARTICLE=FC_Import.ARTICLE ');
         sql.add('left join xxzl on xxzl.xiexing=kfxxzl.xiexing and xxzl.shehao=kfxxzl.shehao ');
         if StageEdit.text='' then
         begin
            sql.add('left join ( select * from (select size.*,ypzl.ypdh,row_number() over(PARTITION by size.article ORDER BY size.article desc) as score from (select max(ypcc) as ypcc,');
            sql.add('xiexing+shehao as article,kfjd,xiexing,shehao from ypzl where kfjd=''CFM''');
            if cbPro_loc.Text<>'' then
            begin
              sql.Add('and ypzl.ProductionLocation='''+cbPro_loc.Text+'''');
            end;
            sql.Add('group by xiexing+shehao,kfjd,xiexing,shehao) size');
            sql.add('           left join (select * from ypzl where kfjd=''CFM''');
            if cbPro_loc.Text<>'' then
            begin
              sql.Add('and ypzl.ProductionLocation='''+cbPro_loc.Text+'''');
            end;
            sql.Add(') ypzl on size.xiexing = ypzl.xiexing and size.shehao = ypzl.shehao and size.ypcc = ypzl.ypcc)ypzl where score=1');
         end;
         if StageEdit.text<>'' then
         begin
            sql.add('left join ( select * from (select size.*,ypzl.ypdh,row_number() over(PARTITION by size.article ORDER BY size.article desc) as score from (select max(ypcc) as ypcc,xiexing+shehao article,kfjd,xiexing,shehao from ypzl where kfjd='''+StageEdit.text+'''');
            if cbPro_loc.Text<>'' then
            begin
              sql.Add('and ypzl.ProductionLocation='''+cbPro_loc.Text+'''');
            end;
            sql.Add('group by xiexing+shehao,kfjd,xiexing,shehao) size');
            sql.add('            left join (select * from ypzl where kfjd='''+StageEdit.text+'''');
            if cbPro_loc.Text<>'' then
            begin
              sql.Add('and ypzl.ProductionLocation='''+cbPro_loc.Text+'''');
            end;
            sql.Add(') ypzl on size.xiexing = ypzl.xiexing and size.shehao = ypzl.shehao and size.ypcc = ypzl.ypcc)ypzl where score=1');
         end;
         sql.add('            ) ypzl on ypzl.xiexing=kfxxzl.xiexing and ypzl.shehao=kfxxzl.shehao');
         sql.add('left join ypzls on ypzls.ypdh=ypzl.ypdh');
         sql.add('inner join clzhzl on clzhzl.cldh=ypzls.clbh');
         sql.add('LEFT JOIN BWZL  ON ypzls.BWBH = BWZL.bwdh');
         sql.add('LEFT JOIN CLZL   ON clzhzl.cldh1 = CLZL.cldh');
         sql.add('LEFT JOIN LBZLS ON SUBSTRING(ypzls.CLBH,1,1) = LBZLS.lbdh AND LBZLS.LB=''05''');
         sql.add('LEFT JOIN ZSZL on ZSZL.ZSDH=clzhzl.zsdh');
         sql.add('where  ypzls.clbh is not null');
         sql.add('and CLZHZL.SYL>0  and clzl.clzmlb=''Y''');
         if YearcoBox.text<>'' then
            sql.add('and FC_import.year='''+YearcoBox.text+''' ');
         if MonCoBox.text<>'' then
            sql.add('and FC_import.month='''+MonCoBox.text+''' ');
         if TypeCoBox.text<>'' then
            sql.add('and FC_import.type='''+TypeCoBox.text+''' ');
         if SeaCoBox.text<>'' then
            sql.add('and FC_import.jijie='''+SeaCoBox.text+''' ');
         if combobox5.text<>'' then
            sql.add('and clzhzl.zsdh='''+combobox5.text+''' ');
         if StageEdit.text='' then
            sql.add('and ypzl.kfjd=''CFM'' ');
         if StageEdit.text<>'' then
            sql.add('and ypzl.kfjd='''+StageEdit.text+''' ');
         if SREdit.text<>'' then
            sql.add('and kfxxzl.devcode='''+SREdit.text+''' ');
         sql.add('GROUP BY ypzl.ypcc,ypzls.bwbh,xxzl.article,FC_import.year,FC_import.month,FC_import.jijie,FC_import.type,FC_import.article,');
//         sql.add('FC_import.devcode,clzhzl.cldh1,FC_import.total,ypzls.CLSL*clzhzl.syl,clzhzl.zsdh,zszl.zsywjc,FC_import.userdate)clzhzl2');
         sql.add('FC_import.devcode,clzhzl.cldh1,FC_import.total,ypzls.Costing_CLSL*clzhzl.syl,clzhzl.zsdh,zszl.zsywjc,FC_import.userdate)clzhzl2');
         sql.add('inner join clzhzl ON  clzhzl2.cldh1 = CLZHZL.cldh');
         sql.add('LEFT JOIN ZSZL on ZSZL.ZSDH=clzhzl.zsdh');
         sql.add('WHERE CLZHZL.cldh1 is not null');
         if MatNoEdit.text<>'' then
         begin
            if (Pos(',', MatNoEdit.Text) > 0) then
            begin
              SplitStr.Delimiter := ',';
              SplitStr.DelimitedText := MatNoEdit.Text;
              sql.add('and (');
              for i := 0 to SplitStr.Count-1 do
              begin
                if (i = 0) then
                  sql.add('CLZHZL.cldh1 like '''+SplitStr[i]+'%'+'''')
                else
                  sql.add('OR CLZHZL.cldh1 like '''+SplitStr[i]+'%'+'''');
              end;
              sql.add(')');
            end
            else begin
              sql.add('and CLZHZL.cldh1 like '''+MatNoEdit.text+'%'+'''');
            end;
         end;
         sql.add(' ) a ');
         sql.add('left join clzl on clzl.cldh=a.clbh ');
         //20230609 add show FleCode
         sql.Add('left join clzl_flex on clzl.cldh=clzl_flex.cldh');
         //
         sql.Add('left join (');
         sql.Add('  Select Season, CLBH, ProdLeadTime, Forecast_Leadtime, Location from (');
         sql.Add('    Select A.Season, A.CLBH, A.ProdMOQ, A.ProdLeadTime, A.Forecast_Leadtime, A.Location from (');
         sql.Add('      select Season, CLBH, ProdMOQ, ProdLeadTime, Forecast_Leadtime, Location, ROW_NUMBER() over (PARTITION BY CLBH ORDER BY Substring(Season,1,2) DESC, USERDATE desc) as rn from (');
         sql.Add('        Select Season, IsNull(CLZL_LS.JHDH, MaterialMOQ.CLBH) as CLBH, ProdMOQ, ProdLeadTime, Forecast_Leadtime, Location, MaterialMOQ.USERDATE from MaterialMOQ with (nolock)');
         sql.Add('        left join CLZL_LS with (nolock) on CLZL_LS.CLDH = MaterialMOQ.CLBH and IsNull(CLZL_LS.JHDH, '''') <> ''''');
         sql.Add('      ) AS MaterialMOQ');
         sql.Add('    ) A where A.rn=1');
         sql.Add('  ) AS MatMOQ');
         sql.Add(') AS m on m.CLBH = a.clbh');
         sql.add('where clzl.clzmlb <>''Y'' ');
         if edit9.Text<>'' then
            sql.Add('and cldhflex like '''+Edit9.Text+'%'' ');
         if LocCoBox.text<>'' then
            sql.add('and clzl.cqdh='''+LocCoBox.text+''' ');
         sql.add('group by clzl.clzmlb,clzl.dwbh,year,month,jijie,ywpm,type,article,devcode,a.clbh,Forecast_Leadtime,pairs,csbh,zsywjc,a.userdate,cldhflex');
         if CBSum.Checked=true then
         begin
         sql.add(') YPZLS Group by [YEAR],[MONTH],jijie,[type],clbh,Forecast_Leadtime,ywpm,dwbh,clzmlb,cldhflex ');
         end;
//         showmessage(SQL.Text);
         //funcObj.WriteErrorLog(sql.Text);
         active:=true;
      end;
      with not_CFM do
      begin
         active:=false;
         sql.Clear;
         sql.add('select FC_import.year,FC_import.month,FC_import.jijie,FC_import.type,');
         sql.add('FC_import.devcode,FC_import.userdate  ');
         sql.add('from FC_import ');
         sql.add('where FC_import.devcode is not null');
         if YearcoBox.text<>'' then
            sql.add('and FC_import.year='''+YearcoBox.text+''' ');
         if MonCoBox.text<>'' then
            sql.add('and FC_import.month='''+MonCoBox.text+''' ');
         if TypeCoBox.text<>'' then
            sql.add('and FC_import.type='''+TypeCoBox.text+''' ');
         if SeaCoBox.text<>'' then
            sql.add('and FC_import.jijie='''+SeaCoBox.text+''' ');
         sql.add('and FC_import.devcode not in (');
         sql.add('select FC_import.devcode from FC_import');
         sql.add('left join kfxxzl on kfxxzl.devcode=fc_import.devcode');
         sql.add('left join (select * from ypzl where');
         if StageEdit.text='' then
            sql.add('kfjd=''CFM'' ');
         if StageEdit.text<>'' then
            sql.add('kfjd='''+StageEdit.text+''' ');
         sql.add(')ypzl on ypzl.xiexing=kfxxzl.xiexing and ypzl.shehao=kfxxzl.shehao');
         sql.add('where FC_import.devcode is not null  and ypzl.ypdh is not null');
         if YearcoBox.text<>'' then
            sql.add('and FC_import.year='''+YearcoBox.text+''' ');
         if MonCoBox.text<>'' then
            sql.add('and FC_import.month='''+MonCoBox.text+''' ');
         if TypeCoBox.text<>'' then
            sql.add('and FC_import.type='''+TypeCoBox.text+''' ');
         if SeaCoBox.text<>'' then
            sql.add('and FC_import.jijie='''+SeaCoBox.text+''' ');
         if TypeCoBox.text='SRA' then
         begin
            if SeaCoBox.text='16FH' then
               sql.add('and ypzl.kfjd=''SM2'' ');
            if SeaCoBox.text<>'16FH' then
            begin
               if StageEdit.text='' then
                  sql.add('and ypzl.kfjd=''CFM'' ');
               if StageEdit.text<>'' then
                  sql.add('and ypzl.kfjd='''+StageEdit.text+''' ');
            end;
         end;
         if TypeCoBox.text='GTM' then
         begin
            if SeaCoBox.text='16FH' then
               sql.add('and ypzl.kfjd=''SM3'' ');
            if SeaCoBox.text<>'16FH' then
            begin
               if StageEdit.text='' then
                  sql.add('and ypzl.kfjd=''CFM'' ');
               if StageEdit.text<>'' then
                  sql.add('and ypzl.kfjd='''+StageEdit.text+''' ');
            end;
         end;
         sql.add('group by FC_import.devcode,FC_import.userdate )');
         //memo5.text:=sql.text;
         //funcObj.WriteErrorLog(sql.Text);
         //showmessage(SQL.Text);
         active:=true;
      end;
      if not_CFM.recordcount>0 then
      begin
          if StageEdit.text<>'' then
             label24.Caption:=StageEdit.text;
          if StageEdit.text='' then
             label24.Caption:='CFM';
          panel12.Visible:=true;
      end;
      if not_CFM.recordcount=0 then
      begin
          panel12.Visible:=false;
      end;
    end;
  end
  else if PageControl1.ActivePageIndex = 0 then begin
    if ComboBox6.text='' then
    begin
      showmessage('plz choose Type');
    end;
    if ComboBox6.text<>'' then
    begin
      SplitStr := TStringList.Create;
      with FC_xxzls do
      begin
         active:=false;
         sql.Clear;
         if CheckBox1.Checked=true then
         begin
         sql.add('select MAX(ypcc) as ypcc,[YEAR],[MONTH],jijie,[type],''All'' as article,''All'' as devcode,clbh,Forecast_Leadtime,ywpm,dwbh,clzmlb,SUM(pairs) as pairs,MAX(cscl) as cscl,');
         sql.add('SUM(total) as total,MAX(csbh) as csbh,MAX(zsywjc) as zsywjc,MAX(userdate) as userdate,'' '' as Stage from ( ');
         end;
         sql.add('select max(ypcc) as ypcc,clzl.clzmlb,year,clzl.ywpm,clzl.dwbh,month,jijie,type,article,devcode,a.clbh,Forecast_Leadtime,pairs,sum(total) as cscl,pairs*sum(total) as total,csbh,zsywjc,a.userdate,KFJD as Stage from(');
         sql.add('select ypzl.ypcc,ypzls.bwbh,FC_import.article,FC_import.year,FC_import.month,FC_import.jijie,FC_import.type,');
//         sql.add('FC_import.devcode,ypzls.clbh,FC_import.total as pairs,ypzls.clsl as total,ypzls.csbh,zszl.zsywjc,FC_import.userdate,ypzl.KFJD ');
         sql.add('FC_import.devcode,ypzls.clbh,FC_import.total as pairs,ypzls.Costing_CLSL as total,ypzls.csbh,zszl.zsywjc,FC_import.userdate,ypzl.KFJD ');
         sql.add('from FC_import ');
         sql.add('left join ypzl on ypzl.ypdh=FC_import.ypdh');
         sql.add('left join ypzls on ypzls.ypdh=FC_import.ypdh');
         sql.add('left join zszl on zszl.zsdh=ypzls.csbh');
         //抓取樣品碼
         sql.add('where ypzls.clbh is not null');
         if ComboBox3.text<>'' then
            sql.add('and FC_import.year='''+ComboBox3.text+''' ');
         if ComboBox4.text<>'' then
            sql.add('and FC_import.month='''+ComboBox4.text+''' ');
         if ComboBox6.text<>'' then
            sql.add('and FC_import.type='''+ComboBox6.text+''' ');
         if ComboBox7.text<>'' then
            sql.add('and FC_import.jijie='''+ComboBox7.text+''' ');
         if ComboBox9.text<>'' then
            sql.add('and ypzls.csbh='''+ComboBox9.text+''' ');
{         if Edit5.text='' then
            sql.add('and ypzl.kfjd=''CFM'' ');
         if Edit5.text<>'' then
            sql.add('and ypzl.kfjd='''+Edit5.text+''' ');  }
         if Edit8.text<>'' then
         begin
            if (Pos(',', Edit8.Text) > 0) then
            begin
              SplitStr.Delimiter := ',';
              SplitStr.DelimitedText := Edit8.Text;
              sql.add('and (');
              for i := 0 to SplitStr.Count-1 do
              begin
                if (i = 0) then
                  sql.add('ypzls.clbh like '''+SplitStr[i]+'%'+'''')
                else
                  sql.add('OR ypzls.clbh like '''+SplitStr[i]+'%'+'''');
              end;
              sql.Add(')');
            end
            else begin
              sql.add('and ypzls.clbh like '''+Edit8.text+'%'+'''');
            end;
         end;
         if Edit7.text<>'' then
            sql.add('and FC_import.devcode='''+Edit7.text+''' ');
//         sql.add('group by ypzl.ypcc,ypzls.bwbh,FC_import.article,ypzls.clsl,FC_import.year,FC_import.month,FC_import.jijie,FC_import.type,FC_import.article,FC_import.devcode,ypzls.clbh,FC_import.total ,ypzls.csbh,zszl.zsywjc,FC_import.userdate,ypzl.KFJD');
         sql.add('group by ypzl.ypcc,ypzls.bwbh,FC_import.article,ypzls.Costing_CLSL,FC_import.year,FC_import.month,FC_import.jijie,FC_import.type,FC_import.article,FC_import.devcode,ypzls.clbh,FC_import.total ,ypzls.csbh,zszl.zsywjc,FC_import.userdate,ypzl.KFJD');
         sql.add('union');

         sql.add('select ypzl.ypcc,ypzls.bwbh,FC_import.article,FC_import.year,FC_import.month,FC_import.jijie,FC_import.type,');
//         sql.add('FC_import.devcode,clzhzl.cldh1,FC_import.total as pairs,ypzls.clsl*clzhzl.syl as total,clzhzl.zsdh,zszl.zsywjc,FC_import.userdate,ypzl.KFJD');
         sql.add('FC_import.devcode,clzhzl.cldh1,FC_import.total as pairs,ypzls.Costing_CLSL*clzhzl.syl as total,clzhzl.zsdh,zszl.zsywjc,FC_import.userdate,ypzl.KFJD');
         sql.add('FROM FC_import');
         sql.add('left join ypzl on ypzl.ypdh=FC_import.ypdh');
         sql.add('left join ypzls on ypzls.ypdh=FC_import.ypdh');
         sql.add('inner join clzhzl on clzhzl.cldh=ypzls.clbh');
         sql.add('LEFT JOIN BWZL  ON ypzls.BWBH = BWZL.bwdh');
         sql.add('LEFT JOIN CLZL   ON clzhzl.cldh1 = CLZL.cldh');
         sql.add('LEFT JOIN LBZLS ON SUBSTRING(ypzls.CLBH,1,1) = LBZLS.lbdh AND LBZLS.LB=''05''');
         sql.add('LEFT JOIN ZSZL on ZSZL.ZSDH=clzhzl.zsdh');
         //抓取樣品碼
         //  sql.add('left join (select xiexing,shehao,ypcc as ypccc from ypzl where kfjd=''CR1''  or kfjd=''CR2'' group by xiexing,shehao,ypcc)size on size.xiexing=ypzl.xiexing and size.shehao=ypzl.shehao');
         sql.add('where  ypzls.clbh is not null');
         //  sql.add('and ypzl.ypcc=size.ypccc');
         if ComboBox3.text<>'' then
            sql.add('and FC_import.year='''+ComboBox3.text+''' ');
         if ComboBox4.text<>'' then
            sql.add('and FC_import.month='''+ComboBox4.text+''' ');
         if ComboBox6.text<>'' then
            sql.add('and FC_import.type='''+ComboBox6.text+''' ');
         if ComboBox7.text<>'' then
            sql.add('and FC_import.jijie='''+ComboBox7.text+''' ');
         if ComboBox9.text<>'' then
            sql.add('and clzhzl.zsdh='''+ComboBox9.text+''' ');
{         if Edit5.text='' then
            sql.add('and ypzl.kfjd=''CFM'' ');
         if Edit5.text<>'' then
            sql.add('and ypzl.kfjd='''+Edit5.text+''' ');       }
         if Edit8.text<>'' then
         begin
            if (Pos(',', Edit8.Text) > 0) then
            begin
              SplitStr.Delimiter := ',';
              SplitStr.DelimitedText := Edit8.Text;
              sql.add('and (');
              for i := 0 to SplitStr.Count-1 do
              begin
                if (i = 0) then
                  sql.add('clzhzl.cldh1 like '''+SplitStr[i]+'%'+'''')
                else
                  sql.add('OR clzhzl.cldh1 like '''+SplitStr[i]+'%'+'''');
              end;
              sql.Add(')');
            end
            else begin
              sql.add('and clzhzl.cldh1 like '''+Edit8.text+'%'+'''');
            end;
         end;
         if Edit7.text<>'' then
            sql.add('and FC_import.devcode='''+Edit7.text+''' ');
         sql.add('GROUP BY ypzl.ypcc,ypzls.bwbh,FC_import.article,FC_import.year,FC_import.month,FC_import.jijie,FC_import.type,FC_import.article,');
//         sql.add('FC_import.devcode,clzhzl.cldh1,FC_import.total,ypzls.clsl*clzhzl.syl,clzhzl.zsdh,zszl.zsywjc,FC_import.userdate,ypzl.KFJD');
         sql.add('FC_import.devcode,clzhzl.cldh1,FC_import.total,ypzls.Costing_CLSL*clzhzl.syl,clzhzl.zsdh,zszl.zsywjc,FC_import.userdate,ypzl.KFJD');

         sql.add('union');
         sql.add('select ypcc,bwbh,article,year,month,jijie,type,devcode,clzhzl.cldh1,pairs,total,clzhzl.zsdh,ZSZL.zsywjc,clzhzl2.userdate,KFJD as Stage from(  ');
         sql.add('select ypzl.ypcc,ypzls.bwbh,FC_import.article,FC_import.year,FC_import.month,FC_import.jijie,FC_import.type,');
//         sql.add('FC_import.devcode,clzhzl.cldh1,FC_import.total as pairs,ypzls.clsl*clzhzl.syl as total,clzhzl.zsdh,zszl.zsywjc,FC_import.userdate,ypzl.KFJD');
         sql.add('FC_import.devcode,clzhzl.cldh1,FC_import.total as pairs,ypzls.Costing_CLSL*clzhzl.syl as total,clzhzl.zsdh,zszl.zsywjc,FC_import.userdate,ypzl.KFJD');
         sql.add('FROM FC_import');
         sql.add('left join ypzl on ypzl.ypdh=FC_import.ypdh');
         sql.add('left join ypzls on ypzls.ypdh=FC_import.ypdh');
         sql.add('inner join clzhzl on clzhzl.cldh=ypzls.clbh');
         sql.add('LEFT JOIN BWZL  ON ypzls.BWBH = BWZL.bwdh');
         sql.add('LEFT JOIN CLZL   ON clzhzl.cldh1 = CLZL.cldh');
         sql.add('LEFT JOIN LBZLS ON SUBSTRING(ypzls.CLBH,1,1) = LBZLS.lbdh AND LBZLS.LB=''05''');
         sql.add('LEFT JOIN ZSZL on ZSZL.ZSDH=clzhzl.zsdh');
         sql.add('where  ypzls.clbh is not null');
         sql.add('and CLZHZL.SYL>0  and clzl.clzmlb=''Y''');
         if ComboBox3.text<>'' then
            sql.add('and FC_import.year='''+ComboBox3.text+''' ');
         if ComboBox4.text<>'' then
            sql.add('and FC_import.month='''+ComboBox4.text+''' ');
         if ComboBox6.text<>'' then
            sql.add('and FC_import.type='''+ComboBox6.text+''' ');
         if ComboBox7.text<>'' then
            sql.add('and FC_import.jijie='''+ComboBox7.text+''' ');
         if ComboBox9.text<>'' then
            sql.add('and clzhzl.zsdh='''+ComboBox9.text+''' ');
{         if Edit5.text='' then
            sql.add('and ypzl.kfjd=''CFM'' ');
         if Edit5.text<>'' then
            sql.add('and ypzl.kfjd='''+Edit5.text+''' ');      }
         if Edit7.text<>'' then
            sql.add('and FC_import.devcode='''+Edit7.text+''' ');
         sql.add('GROUP BY ypzl.ypcc,ypzls.bwbh,FC_import.article,FC_import.year,FC_import.month,FC_import.jijie,FC_import.type,FC_import.article,');
//         sql.add('FC_import.devcode,clzhzl.cldh1,FC_import.total,ypzls.clsl*clzhzl.syl,clzhzl.zsdh,zszl.zsywjc,FC_import.userdate,ypzl.KFJD)clzhzl2');
         sql.add('FC_import.devcode,clzhzl.cldh1,FC_import.total,ypzls.Costing_CLSL*clzhzl.syl,clzhzl.zsdh,zszl.zsywjc,FC_import.userdate,ypzl.KFJD)clzhzl2');
         sql.add('inner join clzhzl ON  clzhzl2.cldh1 = CLZHZL.cldh');
         sql.add('LEFT JOIN ZSZL on ZSZL.ZSDH=clzhzl.zsdh');
         sql.add('WHERE CLZHZL.cldh1 is not null');
         if Edit8.text<>'' then
         begin
            if (Pos(',', Edit8.Text) > 0) then
            begin
              SplitStr.Delimiter := ',';
              SplitStr.DelimitedText := Edit8.Text;
              sql.add('and (');
              for i := 0 to SplitStr.Count-1 do
              begin
                if (i = 0) then
                  sql.add('CLZHZL.cldh1 like '''+SplitStr[i]+'%'+'''')
                else
                  sql.add('OR CLZHZL.cldh1 like '''+SplitStr[i]+'%'+'''');
              end;
              sql.add(')');
            end
            else begin
              sql.add('and CLZHZL.cldh1 like '''+Edit8.text+'%'+'''');
            end;
         end;
         sql.add(' ) a ');
         sql.add('left join clzl on clzl.cldh=a.clbh ');
         sql.Add('left join (');
         sql.Add('  Select Season, CLBH, ProdLeadTime, Forecast_Leadtime, Location from (');
         sql.Add('    Select A.Season, A.CLBH, A.ProdMOQ, A.ProdLeadTime, A.Forecast_Leadtime, A.Location from (');
         sql.Add('      select Season, CLBH, ProdMOQ, ProdLeadTime, Forecast_Leadtime, Location, ROW_NUMBER() over (PARTITION BY CLBH ORDER BY Substring(Season,1,2) DESC, USERDATE desc) as rn from (');
         sql.Add('        Select Season, IsNull(CLZL_LS.JHDH, MaterialMOQ.CLBH) as CLBH, ProdMOQ, ProdLeadTime, Forecast_Leadtime, Location, MaterialMOQ.USERDATE from MaterialMOQ with (nolock)');
         sql.Add('        left join CLZL_LS with (nolock) on CLZL_LS.CLDH = MaterialMOQ.CLBH and IsNull(CLZL_LS.JHDH, '''') <> ''''');
         sql.Add('      ) AS MaterialMOQ');
         sql.Add('    ) A where A.rn=1');
         sql.Add('  ) AS MatMOQ');
         sql.Add(') AS m on m.CLBH = a.clbh');
         sql.add('where clzl.clzmlb <>''Y''');
         if ComboBox8.text<>'' then
            sql.add('and clzl.cqdh='''+ComboBox8.text+''' ');
         sql.add('group by clzl.clzmlb,clzl.dwbh,year,month,jijie,ywpm,type,article,devcode,a.clbh,Forecast_Leadtime,pairs,csbh,zsywjc,a.userdate,KFJD');
         if CheckBox1.Checked=true then
         begin
         sql.add(') YPZLS Group by [YEAR],[MONTH],jijie,[type],clbh,Forecast_Leadtime,ywpm,dwbh,clzmlb ');
         end;
         //funcObj.WriteErrorLog(sql.Text);
         active:=true;
      end;
    end;
  end;

end;

procedure Tforecastorder.Button2Click(Sender: TObject);
begin
   with SR_check do
   begin
       active:=false;
       sql.Clear;
       sql.add('select  FC_import.*,''1''  as YN from FC_import');
       sql.add('where devcode is not null');
       if Sea2Cobox.text<>'' then
          sql.add('and FC_import.jijie='''+Sea2Cobox.text+''' ');
       if Type2CoBox.text<>'' then
          sql.add('and FC_import.type='''+Type2CoBox.text+''' ');
       if YearEdit.text<>'' then
          sql.add('and FC_import.year='''+YearEdit.text+''' ');
       if MonthEdit.text<>'' then
          sql.add('and FC_import.month='''+MonthEdit.text+''' ');
       if SR2Edit.text<>'' then
          sql.add('and FC_import.devcode='''+SR2Edit.text+''' ');
       //showmessage(SQL.Text);
       active:=true;
   end;

end;

procedure Tforecastorder.SR_checkAfterOpen(DataSet: TDataSet);
begin
  BC3.enabled:=true;
  BC4.enabled:=true;
  Ypzl.Active := true;
end;

procedure Tforecastorder.BC1Click(Sender: TObject);
begin
  Panel23.Visible:=true;
end;

procedure Tforecastorder.FormDestroy(Sender: TObject);
begin
  forecastorder:=nil;
end;

procedure Tforecastorder.Button3Click(Sender: TObject);
var
      eclApp,WorkBook:olevariant;
      i,j:integer;
begin
  if  CheckStage.active  then
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
        for   i:=0   to   CheckStage.fieldcount-1   do
          begin
              eclApp.Cells(1,i+1):=CheckStage.fields[i].FieldName;
          end;

        CheckStage.First;
        j:=2;
        while   not   CheckStage.Eof   do
          begin
            for   i:=0   to  CheckStage.fieldcount-1  do
            begin
              eclApp.Cells(j,i+1):=CheckStage.Fields[i].Value;
            end;
          CheckStage.Next;
          inc(j);
          end;
      eclapp.columns.autofit;
      showmessage('Succeed');
       eclApp.Visible:=True;
      except
        on   F:Exception   do
          showmessage(F.Message);
      end;
    end;

end;

procedure Tforecastorder.BC3Click(Sender: TObject);
begin
  with SR_check do
  begin
    cachedupdates:=true;
    requestlive:=true;
    SR_check.edit;
    fieldbyname('YN').Value:='0';
  end;
  BC5.enabled:=true;
  BC6.enabled:=true;
end;

procedure Tforecastorder.DBGridEh2GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if SR_check.FieldByName('YN').value='0' then
  begin
    DBGridEh2.canvas.font.color:=clred;
  end;
end;

procedure Tforecastorder.DBGridEh3DblClick(Sender: TObject);
var NYear,NMonth,Ntype,NJiJie,NDevcode,NARTICLE,NYSSM: String;
begin
  if SR_check.FieldByName('UserID').Value=main.Edit1.Text then begin
    showmessage('It is not yours, can not modify.');
    exit;
  end;
  NYear := SR_Check.fieldbyname('Year').AsString;
  NMonth := SR_Check.fieldbyname('Month').AsString;
  Ntype := SR_Check.fieldbyname('type').AsString;
  NJiJie := SR_Check.fieldbyname('JiJie').AsString;
  NDevcode := SR_Check.fieldbyname('Devcode').AsString;
  NARTICLE := SR_Check.fieldbyname('ARTICLE').AsString;
  Query1.Active := false;
  Query1.SQL.Add('Update FC_Import set YPDH = '''+ypzl.fieldbyname('YPDH').AsString+''' ');
  Query1.SQL.Add('where Year = '''+SR_Check.fieldbyname('Year').AsString+''' ');
  Query1.SQL.Add('and Month = '''+SR_Check.fieldbyname('Month').AsString+''' ');
  Query1.SQL.Add('and type = '''+SR_Check.fieldbyname('type').AsString+''' ');
  Query1.SQL.Add('and JiJie = '''+SR_Check.fieldbyname('JiJie').AsString+''' ');
  Query1.SQL.Add('and Devcode = '''+SR_Check.fieldbyname('Devcode').AsString+''' ');
  Query1.SQL.Add('and ARTICLE = '''+SR_Check.fieldbyname('ARTICLE').AsString+''' ');
  Query1.ExecSQL;
  Button4.Click;
  SR_Check.Locate('Year;Month;type;JiJie;Devcode;ARTICLE', VarArrayOf([NYear,NMonth,Ntype,NJiJie,NDevcode,NARTICLE,NYSSM]), [loPartialKey]);
end;

procedure Tforecastorder.BitBtn9Click(Sender: TObject);
begin
  if SR_Check.Active = false then
    exit;
  Sr_Check.First;
  ypzl.DisableControls;
  ypzl.AfterScroll := nil;
  try
    while not SR_Check.Eof do begin
      tmpQry.Active := false;
      tmpQry.SQL.Clear;
      tmpQry.SQL.Add('Select Max(YPCC),YPDH from YPZL ');
      tmpQry.SQL.Add('left join kfxxzl on kfxxzl.XieXing = YPZL.XieXing and kfxxzl.SheHao = YPZL.SheHao ');
      tmpQry.SQL.Add('where kfxxzl.DEVCODE = '''+SR_Check.fieldbyname('DEVCODE').AsString+''' ');
      tmpQry.SQL.Add('and YPZL.KFJD = ''CFM'' group by YPDH ');
//      tmpQry.SQL.Add('where kfxxzl.YSSM = '''+SR_Check.fieldbyname('YSSM').AsString+''' ')
      tmpQry.Active := true;
      if tmpQry.RecordCount > 0 then begin
        Query1.Active := false;
        Query1.SQL.Add('Update FC_Import set YPDH = '''+tmpQry.fieldbyname('YPDH').AsString+''' ');
        Query1.SQL.Add('where Year = '''+SR_Check.fieldbyname('Year').AsString+''' ');
        Query1.SQL.Add('and Month = '''+SR_Check.fieldbyname('Month').AsString+''' ');
        Query1.SQL.Add('and type = '''+SR_Check.fieldbyname('type').AsString+''' ');
        Query1.SQL.Add('and JiJie = '''+SR_Check.fieldbyname('JiJie').AsString+''' ');
        Query1.SQL.Add('and Devcode = '''+SR_Check.fieldbyname('Devcode').AsString+''' ');
        Query1.SQL.Add('and ARTICLE = '''+SR_Check.fieldbyname('ARTICLE').AsString+''' ');
//        Query1.SQL.Add('and YSSM = '''+SR_Check.fieldbyname('YSSM').AsString+''' ');
        Query1.ExecSQL;
      end;
      SR_Check.Next;
    end;
  finally
    ypzl.EnableControls;
    ypzl.AfterScroll := ypzl.AfterScroll;
  end;
  Button4.Click;
end;

procedure Tforecastorder.DBGridEh4GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if SR_check.FieldByName('YPDH').value= null then
  begin
    DBGridEh4.canvas.font.color:=clblue;
  end;
end;

procedure Tforecastorder.Button5Click(Sender: TObject);
var
  i,j,n,eof:integer;
  flag:boolean;
  MsExcel:olevariant;
  MsExcelWorkbook: Variant;
  Month,year,fctype,devcode,article,total:TStringlist;
begin

 with tmpQry do
 begin
     active:=false;
     sql.Clear;
     sql.add('select year from fc_import');
     sql.add('group by year');
     active:=true;
     YearcoBox.items.clear;
     while not eof do
     begin
       YearcoBox.items.add(fieldbyname('year').asstring );
       ComboBox3.items.add(fieldbyname('year').asstring );
       next;
     end;
 end;
 if Edit4.text='' then
 begin
   showmessage('Plz input Season');
 end;
 if Edit4.text<>'' then
 begin
   panel3.visible:=trUe;
   BitBtn11.enabled:=trUe;
   BitBtn12.enabled:=trUe;
   with FC do
      begin
         active:=false;
         sql.Clear;
         sql.add('select YEAR,MONTH,type,devcode,article,total,GSBH,USERID,USERDATE,JIJIE,YPDH from FC_import where 1=2');
         active:=true;
      end;
    month:=TStringList.Create;
    year:=TStringList.Create;
    FCTYPE:=TStringList.Create;
    devcode:=TStringList.Create;
    article:=TStringList.Create;
    total:=TStringList.Create;
    if opendialog.Execute then begin
    MsExcel:=CreateOleObject('Excel.Application');
    MsExcelWorkBook := msExcel.Workbooks.Open(OpenDialog.FileName);
    n:=0;
    j:=2;
    flag:=true;
   // for i := 1 to 6 do
      while(flag=true)  do
       begin
         year.Add(msExcel.WorkBooks[1].WorkSheets[1].Cells[j,1]);
         month.Add(msExcel.WorkBooks[1].WorkSheets[1].Cells[j,2]);
         fctype.Add(msExcel.WorkBooks[1].WorkSheets[1].Cells[j,3]);
         devcode.Add(msExcel.WorkBooks[1].WorkSheets[1].Cells[j,4]);
         article.Add(msExcel.WorkBooks[1].WorkSheets[1].Cells[j,5]);
         total.Add(msExcel.WorkBooks[1].WorkSheets[1].Cells[j,6]);
         eof:=msExcel.WorkBooks[1].WorkSheets[1].Cells[j,1];
         label35.caption:=inttostr(n);
         n:=n+1;//秀出目前資料讀取比數
         j:=j+1;
         if (eof=0) then
         begin
           flag:=false;
         end;
       end;
   MsExcelWorkBook.Close;
   MsExcel.Quit;

   with FC do
     begin
     cachedupdates:=true;
     requestlive:=true;
     FC.edit;
     FC.first;
    end;

    for j:=0 to n-2 do
     begin
         FC.insert;
         FC.FieldByName('YEAR').value:=YEAR[j];
         FC.FieldByName('month').value:=month[j];
         FC.FieldByName('type').value:=FCtype[j];
         FC.FieldByName('devcode').value:=devcode[j];
         FC.FieldByName('article').value:=article[j];
         FC.FieldByName('total').value:=total[j];
         FC.FieldByName('gsbh').value:=main.Edit2.text;
         FC.FieldByName('USERID').value:=main.Edit1.text;
         FC.FieldByName('USERdate').value:=NDate;
         FC.FieldByName('jijie').value:=SeaEdit.text;
         FC.Post;
     end;
     FC.next;
 end;
 end;
end;

procedure Tforecastorder.BitBtn16Click(Sender: TObject);
begin
  Panel10.Visible := true;
end;

procedure Tforecastorder.PageControl1Change(Sender: TObject);
var i: integer;
   sheet:TTabSheet;
begin
 for i:=0 to PageControl1.PageCount-1   do
      begin
         sheet:=PageControl1.Pages[i];
         if sheet=PageControl1.ActivePage   then
            sheet.Highlighted:=true
         else
            sheet.Highlighted:=false;
      end;
end;

procedure Tforecastorder.Button4Click(Sender: TObject);
begin
   with SR_check do
   begin
       active:=false;
       sql.Clear;
       sql.add('select  FC_import.*,''1''  as YN from FC_import');
       sql.add('where devcode is not null');
       if ComboBox1.text<>'' then
          sql.add('and FC_import.jijie='''+ComboBox1.text+''' ');
       if ComboBox2.text<>'' then
          sql.add('and FC_import.type='''+ComboBox2.text+''' ');
       if Edit1.text<>'' then
          sql.add('and FC_import.year='''+Edit1.text+''' ');
       if Edit2.text<>'' then
          sql.add('and FC_import.month='''+Edit2.text+''' ');
       if Edit3.text<>'' then
          sql.add('and FC_import.devcode='''+Edit3.text+''' ');
       //showmessage(SQL.Text);
       active:=true;
   end;
end;

end.
