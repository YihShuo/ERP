unit Kpi_Factory1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, GridsEh, DBGridEh,ComObj, DBClient,
  DBCtrls, DB, DBTables, AppEvnts, Menus, ComCtrls, ADODB, DateUtils,
  TeEngine, Series, TeeProcs, Chart, DbChart, TeeFunci, OleCtrls, SHDocVw,
  ShellApi, Math;

type
  TKPI_Factory = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel11: TPanel;
    Label8: TLabel;
    Label11: TLabel;
    Panel12: TPanel;
    BB1: TBitBtn;
    bbt6: TBitBtn;
    BB2: TBitBtn;
    BB3: TBitBtn;
    BB4: TBitBtn;
    BB5: TBitBtn;
    BB6: TBitBtn;
    BB7: TBitBtn;
    DBGridEh6: TDBGridEh;
    DS1: TDataSource;
    QKpi_factory: TQuery;
    Ed_YM: TEdit;
    UPKpi_Factory: TUpdateSQL;
    Qtemp: TQuery;
    QKpi_factoryYM: TStringField;
    QKpi_factoryItem: TStringField;
    QKpi_factorynorm: TStringField;
    QKpi_factoryscore: TStringField;
    QKpi_factoryUSERID: TStringField;
    QKpi_factoryUSERDATE: TDateTimeField;
    QKpi_factoryYN: TStringField;
    QKpi_factoryA2_Score: TFloatField;
    QKpi_factoryA3_Score: TFloatField;
    QKpi_factoryA7_Score: TFloatField;
    QKpi_factoryA8_Score: TFloatField;
    QKpi_factoryA9_Score: TFloatField;
    QKpi_factoryA11_Score: TFloatField;
    QKpi_factoryA12_Score: TFloatField;
    QKpi_factoryA15_Score: TFloatField;
    QKpi_factoryA16_Score: TFloatField;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    Button1: TButton;
    TabSheet4: TTabSheet;
    Panel1: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    Ed_YM_R: TEdit;
    Button2: TButton;
    DBGridEh1: TDBGridEh;
    Label4: TLabel;
    QKpi_factoryMEMO_V: TStringField;
    QKpi_factoryMEMO_C: TStringField;
    Label5: TLabel;
    Qtemp1: TQuery;
    UPKpi_R: TUpdateSQL;
    DS2: TDataSource;
    QKpi_r: TQuery;
    StringField1: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    StringField5: TStringField;
    StringField6: TStringField;
    DateTimeField1: TDateTimeField;
    StringField7: TStringField;
    QKpi_rR2_achieve: TStringField;
    QKpi_rR2_Score: TFloatField;
    QKpi_rR3_achieve: TStringField;
    QKpi_rR3_Score: TFloatField;
    QKpi_rProcess_achieve: TStringField;
    QKpi_rProcess_Score: TFloatField;
    QKpi_rMEMO_V: TStringField;
    QKpi_rMEMO_C: TStringField;
    QKpi_factoryA2_achieve: TStringField;
    QKpi_factoryA3_achieve: TStringField;
    QKpi_factoryA7_achieve: TStringField;
    QKpi_factoryA8_achieve: TStringField;
    QKpi_factoryA9_achieve: TStringField;
    QKpi_factoryA11_achieve: TStringField;
    QKpi_factoryA12_achieve: TStringField;
    QKpi_factoryA15_achieve: TStringField;
    QKpi_factoryA16_achieve: TStringField;
    PageControl2: TPageControl;
    TabSheet5: TTabSheet;
    Panel3: TPanel;
    QKpi_Factory_M: TQuery;
    Button4: TButton;
    Button3: TButton;
    DBGridEh2: TDBGridEh;
    DS3: TDataSource;
    Ed_YM_M: TEdit;
    QKpi_Factory_MYM: TStringField;
    QKpi_Factory_MITEM: TStringField;
    QKpi_Factory_MA2_Score: TStringField;
    QKpi_Factory_MA3_Score: TStringField;
    QKpi_Factory_MA7_Score: TStringField;
    QKpi_Factory_MA8_Score: TStringField;
    QKpi_Factory_MA9_Score: TStringField;
    QKpi_Factory_MA11_Score: TStringField;
    QKpi_Factory_MA12_Score: TStringField;
    QKpi_Factory_MA15_Score: TStringField;
    QKpi_Factory_MA16_Score: TStringField;
    QKpi_Factory_MBDEDesigner: TStringField;
    QKpi_factoryTDA_achieve: TStringField;
    QKpi_factoryTDA_Score: TFloatField;
    QKpi_factoryTDB_achieve: TStringField;
    QKpi_factoryTDB_Score: TFloatField;
    Label1: TLabel;
    Label6: TLabel;
    Panel4: TPanel;
    Label7: TLabel;
    Ed_YM_M2: TEdit;
    Button5: TButton;
    RG1: TRadioGroup;
    DS4: TDataSource;
    QKpi_Factory_M2: TQuery;
    QKpi_Factory_M2Factory: TStringField;
    QKpi_Factory_M2Score_1: TFloatField;
    QKpi_Factory_M2Sort_1: TIntegerField;
    QKpi_Factory_M2Score_2: TFloatField;
    QKpi_Factory_M2Sort_2: TIntegerField;
    QKpi_Factory_M2Score_3: TFloatField;
    QKpi_Factory_M2Sort_3: TIntegerField;
    QKpi_Factory_M2Score_4: TFloatField;
    QKpi_Factory_M2Sort_4: TIntegerField;
    QKpi_Factory_M2Score_5: TFloatField;
    QKpi_Factory_M2Sort_5: TIntegerField;
    QKpi_Factory_M2Score_6: TFloatField;
    QKpi_Factory_M2Sort_6: TIntegerField;
    QKpi_Factory_M2Score_avg: TFloatField;
    QKpi_Factory_M2Sort_avg: TIntegerField;
    Panel5: TPanel;
    DBGridEh3: TDBGridEh;
    DBGridEh4: TDBGridEh;
    DS5: TDataSource;
    QKpi_Factory_TDM: TQuery;
    StringField2: TStringField;
    StringField8: TStringField;
    DBGridEh5: TDBGridEh;
    DS6: TDataSource;
    QKpi_Factory_TDM2: TQuery;
    StringField19: TStringField;
    FloatField1: TFloatField;
    IntegerField1: TIntegerField;
    FloatField2: TFloatField;
    IntegerField2: TIntegerField;
    FloatField3: TFloatField;
    IntegerField3: TIntegerField;
    FloatField4: TFloatField;
    IntegerField4: TIntegerField;
    FloatField5: TFloatField;
    IntegerField5: TIntegerField;
    FloatField6: TFloatField;
    IntegerField6: TIntegerField;
    FloatField7: TFloatField;
    IntegerField7: TIntegerField;
    QKpi_Factory_TDMTDA_Score: TStringField;
    QKpi_Factory_TDMTDB_Score: TStringField;
    Panel6: TPanel;
    Label9: TLabel;
    Label10: TLabel;
    Button6: TButton;
    Button7: TButton;
    Ed_YM_MR: TEdit;
    DBGridEh7: TDBGridEh;
    Panel7: TPanel;
    Label12: TLabel;
    Ed_YM_M2R: TEdit;
    Button8: TButton;
    DBGridEh8: TDBGridEh;
    DS7: TDataSource;
    QKpi_R_M: TQuery;
    StringField9: TStringField;
    StringField10: TStringField;
    QKpi_R_MR2_Score: TStringField;
    QKpi_R_MR3_Score: TStringField;
    QKpi_R_MProcess_Score: TStringField;
    DS8: TDataSource;
    QKpi_R_M2: TQuery;
    StringField11: TStringField;
    FloatField8: TFloatField;
    IntegerField8: TIntegerField;
    FloatField9: TFloatField;
    IntegerField9: TIntegerField;
    FloatField10: TFloatField;
    IntegerField10: TIntegerField;
    FloatField11: TFloatField;
    IntegerField11: TIntegerField;
    FloatField12: TFloatField;
    IntegerField12: TIntegerField;
    FloatField13: TFloatField;
    IntegerField13: TIntegerField;
    FloatField14: TFloatField;
    IntegerField14: TIntegerField;
    QKpi_Factory_M2Score_7: TFloatField;
    QKpi_Factory_M2Sort_7: TIntegerField;
    QKpi_Factory_M2Score_8: TFloatField;
    QKpi_Factory_M2Sort_8: TIntegerField;
    QKpi_Factory_M2Score_9: TFloatField;
    QKpi_Factory_M2Sort_9: TIntegerField;
    QKpi_Factory_M2Score_10: TFloatField;
    QKpi_Factory_M2Sort_10: TIntegerField;
    QKpi_Factory_M2Score_11: TFloatField;
    QKpi_Factory_M2Sort_11: TIntegerField;
    QKpi_Factory_M2Score_12: TFloatField;
    QKpi_Factory_M2Sort_12: TIntegerField;
    QKpi_Factory_TDM2Score_7: TFloatField;
    QKpi_Factory_TDM2Sort_7: TIntegerField;
    QKpi_Factory_TDM2Score_8: TFloatField;
    QKpi_Factory_TDM2Sort_8: TIntegerField;
    QKpi_Factory_TDM2Score_9: TFloatField;
    QKpi_Factory_TDM2Sort_9: TIntegerField;
    QKpi_Factory_TDM2Score_10: TFloatField;
    QKpi_Factory_TDM2Sort_10: TIntegerField;
    QKpi_Factory_TDM2Score_11: TFloatField;
    QKpi_Factory_TDM2Sort_11: TIntegerField;
    QKpi_Factory_TDM2Score_12: TFloatField;
    QKpi_Factory_TDM2Sort_12: TIntegerField;
    RG2: TRadioGroup;
    QKpi_R_M2Score_7: TFloatField;
    QKpi_R_M2Sort_7: TIntegerField;
    QKpi_R_M2Score_8: TFloatField;
    QKpi_R_M2Sort_8: TIntegerField;
    QKpi_R_M2Score_9: TFloatField;
    QKpi_R_M2Sort_9: TIntegerField;
    QKpi_R_M2Score_10: TFloatField;
    QKpi_R_M2Sort_10: TIntegerField;
    QKpi_R_M2Score_11: TFloatField;
    QKpi_R_M2Sort_11: TIntegerField;
    QKpi_R_M2Score_12: TFloatField;
    QKpi_R_M2Sort_12: TIntegerField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BB3Click(Sender: TObject);
    procedure BB2Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure BB1Click(Sender: TObject);
    procedure bbt6Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure DBGridEh2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure DBGridEh6DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure Button5Click(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure DBGridEh4DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure RG1Click(Sender: TObject);
    procedure RG2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  KPI_Factory: TKPI_Factory;
  NDate:TDATE;

implementation

uses main1;

{$R *.dfm}

procedure TKPI_Factory.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    Action:=caFree;
end;

procedure TKPI_Factory.FormDestroy(Sender: TObject);
begin
    KPI_Factory:=nil;
end;

procedure TKPI_Factory.FormCreate(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 0;
  with Qtemp do          //取服務器的年月值
  begin
    active:=false;
    sql.Clear;
    sql.Add('select getdate() as NDate');
    active:=true;
    NDate:=fieldbyname('Ndate').value;
    active:=false;
    sql.Clear;
    sql.Add('select left(convert(varchar,DATEADD(MONTH,-1,GETDATE()) ,112),6)');
    active:=true;
    Ed_YM.Text := fields[0].Value;
    Ed_YM_R.Text := fields[0].Value;
    Ed_YM_M.Text := fields[0].Value;
    Ed_YM_M2.Text := copy(fields[0].Value,1,4);
    Ed_YM_MR.Text := fields[0].Value;
    Ed_YM_M2R.Text := copy(fields[0].Value,1,4);
  end;
  BB1.Click;
end;

procedure TKPI_Factory.BB3Click(Sender: TObject);
begin
  if QKpi_factory.fieldbyname('USERID').value=main.edit1.Text then
  begin
      QKpi_factory.requestlive:=true;
      QKpi_factory.cachedupdates:=true;
      QKpi_factory.Edit;
      QKpi_factory.fieldbyname('YN').Value:='0';
  end else
  begin
     showmessage('It is not yours,can not delete.');
     exit;
  end;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
end;

procedure TKPI_Factory.BB2Click(Sender: TObject);
begin
  if (trim(Ed_YM.Text) = '') then begin
    showmessage('Please Keyin YM !');
    exit;
  end;

  with QKpi_factory do
  begin
    requestlive:=true;
    cachedupdates:=true;
    Last;
//1
    Append;
    FieldByName('YM').AsString:=Ed_YM.Text;
    FieldByName('Item').AsString:='00.品質評比/Danh gia chat luong';
    FieldByName('norm').AsString:='100';
    FieldByName('score').AsString:='100';
    FieldByName('UserDate').AsString:=FormatDateTime('YYYY/MM/DD',Ndate);
    FieldByName('UserID').AsString:=main.Edit1.Text;
    FieldByName('YN').Value:='1';

    Append;
    FieldByName('YM').AsString:=Ed_YM.Text;
    FieldByName('Item').AsString:='010 Cac chi tieu san xuat';
    FieldByName('UserDate').AsString:=FormatDateTime('YYYY/MM/DD',Ndate);
    FieldByName('UserID').AsString:=main.Edit1.Text;
    FieldByName('YN').Value:='1';
//2
    Append;
    FieldByName('YM').AsString:=Ed_YM.Text;
    FieldByName('Item').AsString:='011.直間工比例/Ty le cong nhan truc tiep gian tiep';
    FieldByName('norm').AsString:='2.18%';
    FieldByName('score').AsString:='20';
{    FieldByName('A2_achieve').AsString:='3.12%';
    FieldByName('A3_achieve').AsString:='1.67%';
    FieldByName('A7_achieve').AsString:='2.24%';
    FieldByName('A8_achieve').AsString:='2.00%';
    FieldByName('A9_achieve').AsString:='2.12%';
    FieldByName('A11_achieve').AsString:='2.00%';
    FieldByName('A12_achieve').AsString:='2.25%';
    FieldByName('A15_achieve').AsString:='2.22%';
    FieldByName('A16_achieve').AsString:='2.04%';      }
    FieldByName('UserDate').AsString:=FormatDateTime('YYYY/MM/DD',Ndate);
    FieldByName('UserID').AsString:=main.Edit1.Text;
    FieldByName('YN').Value:='1';
//3
    Append;
    FieldByName('YM').AsString:=Ed_YM.Text;
    FieldByName('Item').AsString:='012.人均時產能/San luong binh quan moi gio';
    FieldByName('norm').AsString:='實際/標準';
    FieldByName('score').AsString:='30';
    FieldByName('A2_achieve').AsString:='/2.91';
    FieldByName('A3_achieve').AsString:='/3.93';
    FieldByName('A7_achieve').AsString:='/2.20';
    FieldByName('A8_achieve').AsString:='/1.51';
    FieldByName('A9_achieve').AsString:='/1.38';
    FieldByName('A11_achieve').AsString:='/2.75';
    FieldByName('A12_achieve').AsString:='/1.80';
    FieldByName('A15_achieve').AsString:='/1.63';
    FieldByName('A16_achieve').AsString:='/2.09';
    FieldByName('UserDate').AsString:=FormatDateTime('YYYY/MM/DD',Ndate);
    FieldByName('UserID').AsString:=main.Edit1.Text;
    FieldByName('YN').Value:='1';
//4
    Append;
    FieldByName('YM').AsString:=Ed_YM.Text;
    FieldByName('Item').AsString:='013.產量達成率/Ty le san luong dat duoc';
    FieldByName('norm').AsString:='100%';
    FieldByName('score').AsString:='10';
{    FieldByName('A2_achieve').AsString:='104.0%';
    FieldByName('A3_achieve').AsString:='99.4%';
    FieldByName('A7_achieve').AsString:='100.3%';
    FieldByName('A8_achieve').AsString:='100.3%';
    FieldByName('A9_achieve').AsString:='103.6%';
    FieldByName('A11_achieve').AsString:='103.3%';
    FieldByName('A12_achieve').AsString:='104.7%';
    FieldByName('A15_achieve').AsString:='100.0%';
    FieldByName('A16_achieve').AsString:='84.5%';  }
    FieldByName('UserDate').AsString:=FormatDateTime('YYYY/MM/DD',Ndate);
    FieldByName('UserID').AsString:=main.Edit1.Text;
    FieldByName('YN').Value:='1';
//5
    Append;
    FieldByName('YM').AsString:=Ed_YM.Text;
    FieldByName('Item').AsString:='014.6S 每月檢查2次平均分數/Trung binh cong 2 lan 6S';
    FieldByName('norm').AsString:='100';
    FieldByName('score').AsString:='10';
    FieldByName('UserDate').AsString:=FormatDateTime('YYYY/MM/DD',Ndate);
    FieldByName('UserID').AsString:=main.Edit1.Text;
    FieldByName('YN').Value:='1';
//6
    Append;
    FieldByName('YM').AsString:=Ed_YM.Text;
    FieldByName('Item').AsString:='015.補料/Bu lieu';
    FieldByName('norm').AsString:='0.15%';
    FieldByName('score').AsString:='20';
    FieldByName('UserDate').AsString:=FormatDateTime('YYYY/MM/DD',Ndate);
    FieldByName('UserID').AsString:=main.Edit1.Text;
    FieldByName('YN').Value:='1';
//7
    Append;
    FieldByName('YM').AsString:=Ed_YM.Text;
    FieldByName('Item').AsString:='016.一次性滿箱率/Ty le mot lan dong thung';
    FieldByName('norm').AsString:='100%';
    FieldByName('score').AsString:='10';
    FieldByName('UserDate').AsString:=FormatDateTime('YYYY/MM/DD',Ndate);
    FieldByName('UserID').AsString:=main.Edit1.Text;
    FieldByName('YN').Value:='1';
//8
    Append;
    FieldByName('YM').AsString:=Ed_YM.Text;
    FieldByName('Item').AsString:='020 嚴重減分/Cac hang muc bi tru diem';
    FieldByName('UserDate').AsString:=FormatDateTime('YYYY/MM/DD',Ndate);
    FieldByName('UserID').AsString:=main.Edit1.Text;
    FieldByName('YN').Value:='1';

    Append;
    FieldByName('YM').AsString:=Ed_YM.Text;
    FieldByName('Item').AsString:='021.SGS測試/Keo nhip SGS';
    FieldByName('norm').AsString:='100%';
    FieldByName('score').AsString:='(20)';
    FieldByName('UserDate').AsString:=FormatDateTime('YYYY/MM/DD',Ndate);
    FieldByName('UserID').AsString:=main.Edit1.Text;
    FieldByName('YN').Value:='1';
//9
    Append;
    FieldByName('YM').AsString:=Ed_YM.Text;
    FieldByName('Item').AsString:='022.GB中國測試/Giay thu Trung Quoc';
    FieldByName('norm').AsString:='100%';
    FieldByName('score').AsString:='(20)';
    FieldByName('UserDate').AsString:=FormatDateTime('YYYY/MM/DD',Ndate);
    FieldByName('UserID').AsString:=main.Edit1.Text;
    FieldByName('YN').Value:='1';
//10
    Append;
    FieldByName('YM').AsString:=Ed_YM.Text;
    FieldByName('Item').AsString:='023.客訴/Khach hang khieu nai';
    FieldByName('norm').AsString:='0';
    FieldByName('score').AsString:='(10)';
    FieldByName('UserDate').AsString:=FormatDateTime('YYYY/MM/DD',Ndate);
    FieldByName('UserID').AsString:=main.Edit1.Text;
    FieldByName('YN').Value:='1';
//11
    Append;
    FieldByName('YM').AsString:=Ed_YM.Text;
    FieldByName('Item').AsString:='024.嚴重工傷/Tai nan lao dong nghiem trong';
    FieldByName('norm').AsString:='0';
    FieldByName('score').AsString:='(50)';
    FieldByName('UserDate').AsString:=FormatDateTime('YYYY/MM/DD',Ndate);
    FieldByName('UserID').AsString:=main.Edit1.Text;
    FieldByName('YN').Value:='1';
//12
    Append;
    FieldByName('YM').AsString:=Ed_YM.Text;
    FieldByName('Item').AsString:='025.工傷/Tai nan lao dong khac';
    FieldByName('norm').AsString:='0';
    FieldByName('score').AsString:='(10)';
    FieldByName('UserDate').AsString:=FormatDateTime('YYYY/MM/DD',Ndate);
    FieldByName('UserID').AsString:=main.Edit1.Text;
    FieldByName('YN').Value:='1';
//13
    Append;
    FieldByName('YM').AsString:=Ed_YM.Text;
    FieldByName('Item').AsString:='030 額外加分/Cac hang muc cong diem';
    FieldByName('UserDate').AsString:=FormatDateTime('YYYY/MM/DD',Ndate);
    FieldByName('UserID').AsString:=main.Edit1.Text;
    FieldByName('YN').Value:='1';
    Append;
    FieldByName('YM').AsString:=Ed_YM.Text;
    FieldByName('Item').AsString:='031.離職率/Ty le nghi viec';
    FieldByName('norm').AsString:='4.81%';
    FieldByName('score').AsString:='10';
    FieldByName('UserDate').AsString:=FormatDateTime('YYYY/MM/DD',Ndate);
    FieldByName('UserID').AsString:=main.Edit1.Text;
    FieldByName('YN').Value:='1';
//14
    Append;
    FieldByName('YM').AsString:=Ed_YM.Text;
    FieldByName('Item').AsString:='032.介紹員工/Gioi thieu lao dong';
    FieldByName('norm').AsString:='0';
    FieldByName('score').AsString:='不封頂';
    FieldByName('UserDate').AsString:=FormatDateTime('YYYY/MM/DD',Ndate);
    FieldByName('UserID').AsString:=main.Edit1.Text;
    FieldByName('YN').Value:='1';
//15
    Append;
    FieldByName('YM').AsString:=Ed_YM.Text;
    FieldByName('Item').AsString:='033.產量達成率/Ty le san luong dat duoc';
    FieldByName('norm').AsString:='100%';
    FieldByName('score').AsString:='不封頂';
    FieldByName('UserDate').AsString:=FormatDateTime('YYYY/MM/DD',Ndate);
    FieldByName('UserID').AsString:=main.Edit1.Text;
    FieldByName('YN').Value:='1';
//16
    Append;
    FieldByName('YM').AsString:=Ed_YM.Text;
    FieldByName('Item').AsString:='034.提案改善/De xuat cai tien';
    FieldByName('UserDate').AsString:=FormatDateTime('YYYY/MM/DD',Ndate);
    FieldByName('UserID').AsString:=main.Edit1.Text;
    FieldByName('YN').Value:='1';
//17
    Append;
    FieldByName('YM').AsString:=Ed_YM.Text;
    FieldByName('Item').AsString:='035.PO補材料/Hoan tra vat tu theo PO';
    FieldByName('UserDate').AsString:=FormatDateTime('YYYY/MM/DD',Ndate);
    FieldByName('UserID').AsString:=main.Edit1.Text;
    FieldByName('YN').Value:='1';
  end;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
//  DBGridEh6.columns[0].ButtonStyle:=cbsAuto;
end;

procedure TKPI_Factory.BB4Click(Sender: TObject);
begin
  if QKpi_factory.IsEmpty then abort;
//  if QKpi_factory.fieldbyname('USERID').value <> main.edit1.Text then
//  begin
//    showmessage('It is not yours, can not modify.');
//    exit;
//  end;
  with QKpi_factory do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
end;

procedure TKPI_Factory.BB6Click(Sender: TObject);
begin
  QKpi_factory.active:=false;
  QKpi_factory.cachedupdates:=false;
  QKpi_factory.requestlive:=false;
  QKpi_factory.active:=true;
  BB5.enabled:=false;
  BB6.enabled:=false;
  //
  DBGridEh6.columns[0].ButtonStyle:=cbsnone;
end;

procedure TKPI_Factory.BB5Click(Sender: TObject);
var i: Integer;
begin
  BB1.Enabled:=true;
  BB2.Enabled:=true;
  BB3.Enabled:=true;
  BB4.Enabled:=true;
  BB5.enabled:=false;
  BB6.enabled:=false;
  try
    QKpi_factory.cachedupdates:=true;
    QKpi_factory.requestlive:=true;
    QKpi_factory.first;
    for i:=1 to QKpi_factory.RecordCount do
    begin
      case QKpi_factory.updatestatus of
      usinserted:
        UPKpi_Factory.apply(ukinsert);

      usmodified:
        begin
          if QKpi_factory.fieldbyname('YN').value='0' then
            UPKpi_Factory.apply(ukdelete)
          else begin
            QKpi_factory.Edit;
            QKpi_factory.FieldByName('UserDate').AsString:=FormatDateTime('YYYY/MM/DD',Ndate);
            QKpi_factory.FieldByName('UserID').AsString:=main.Edit1.Text;
            UPKpi_Factory.apply(ukmodify);
          end;
        end;
      end;
      QKpi_factory.next;
    end;


    with QKpi_factory do
    begin
       active:=false;
       requestlive:=false;
       cachedupdates:=false;
       active:=true;
    end;


    except
       Messagedlg('Have wrong,can not save!',mtwarning,[mbyes],0);
   end;
end;

procedure TKPI_Factory.BB1Click(Sender: TObject);
begin
  if (main.Edit1.Text = '53747') or (main.Edit1.Text = '79201') or (main.Edit1.Text = '51022') then begin
    BB2.Enabled:=true;
    BB3.Enabled:=true;
    BB4.Enabled:=true;
    Button1.Enabled := true;
  end;
    BB5.Enabled:=false;
    BB6.Enabled:=false;

    with QKpi_factory do
    begin
      active:=false;
      sql.Clear;
      sql.add('select * from [LIY_TYXUAN].dbo.KPI_Factory where 1=1');
      if Ed_YM.text<>'' then
        sql.add('and YM ='''+Ed_YM.text+''' ');
      sql.add('order by YM,Item');
      active:=true;
    end;
end;

procedure TKPI_Factory.bbt6Click(Sender: TObject);
var   a:string;
      eclApp,WorkBook:olevariant;
      i,j:integer;
begin
  if  QKpi_factory.active  then
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

        eclApp.ActiveSheet.Cells.Font.Size := 8;
        eclApp.Range[eclApp.Cells[1, 1], eclApp.Cells[2, 1]].Merge;
        eclApp.Cells[1, 1] := 'Game Plan Dates and Gates';
        eclApp.Cells[3, 1] := 'CTS TP Deadline (VN +1day) - TP received later than this date (VN +1day) ';
        eclApp.Cells[4, 1] := 'Wear Test Sample PO.';
        eclApp.Cells[5, 1] := 'Purchasing PO to supplier deadline.';
        eclApp.Cells[6, 1] := '1st 2D B/P revision for TN ';
        eclApp.Cells[7, 1] := 'Purchasing 1st material tracking list.';
        eclApp.Cells[8, 1] := 'Initial Spec to Costing';
        eclApp.Cells[9, 1] := 'New material/ Material tracking list deadline for lab';
        eclApp.Cells[10, 1] := 'New material for pullover ETA';
        eclApp.Cells[11, 1] := 'New upper pattern confirmed for final 2D B/P'+#10+'(TPDD+20 days)';
        eclApp.Cells[12, 1] := 'Initinal Last upper send for 3D creation'+#10+'(Finail Construction)';
        eclApp.Cells[13, 1] := '2nd 2D Revision to HQ';
        eclApp.Cells[14, 1] := 'Tooling 2D confirm deadline';
        eclApp.Cells[15, 1] := '1st 3D send to HQ';
        eclApp.Cells[16, 1] := '1st 3D Revision';
        eclApp.Cells[17, 1] := '2nd 3D Revision';
        eclApp.Cells[18, 1] := 'Tooling 3D confirm deadline';
        eclApp.Cells[19, 1] := 'CFM to open tooling deadline';
        eclApp.Cells[20, 1] := 'Tooling ready';
        eclApp.Cells[21, 1] := 'TN-Sampling tooling making days';
        eclApp.Cells[22, 1] := 'Meeting with Production for R3 SR making assignment';
        eclApp.Cells[23, 1] := 'Material ETA';
        eclApp.Cells[24, 1] := 'Pullover confirm deadline (NG/NM)';
        eclApp.Cells[25, 1] := 'Sample TB to Sample Room Deadline (All).';
        eclApp.Cells[26, 1] := 'Final Spec to Costing (NM/NC/NG).';
        eclApp.Cells[27, 1] := 'Final Spec to Costing (TN/NU/NM+).';
        eclApp.Cells[28, 1] := 'Sample starting inspection day.';
        eclApp.Cells[29, 1] := 'Sample finished deadline.';
        eclApp.Cells[30, 1] := 'CTS inspection deadline.';
        eclApp.Cells[31, 1] := 'Sample Packing deadline.';
        eclApp.Cells[32, 1] := 'Sample X/F day.';
        eclApp.Cells[33, 1] := 'Internal Sample review meeting.';
        eclApp.Cells[34, 1] := 'Sample review meeting (HQ Review date).'+#10+'(Triad: R1/R2 Sample Tear Down (HQ Costing & HQ Development))';
        eclApp.Cells[35, 1] := 'PRODUCT REVIEW & ASSORTMENT FINALIZATION ';
        eclApp.Cells[36, 1] := 'Global Costing & HQ Development provide feedback on cost suggestions to CTS';
        eclApp.Cells[37, 1] := 'Internal TDM';
        eclApp.Cells[38, 1] := 'TDM  (HQ TDM Review date)';
        eclApp.Cells[39, 1] := 'Wear Test X/F day.';
        eclApp.Cells[40, 1] := 'Key features deadline to CTS.';
        eclApp.Cells[41, 1] := 'PTRSS deadline to CTS.';
        eclApp.Cells[42, 1] := 'PC deadline of 1st buy';
        eclApp.Cells[43, 1] := 'RFC of 1st buy';
        eclApp.Cells[44, 1] := 'RFC of 2nd buy';
        eclApp.Cells[45, 1] := 'RFC of 3rd buy';
        eclApp.Cells[46, 1] := 'CFM transfer to mass production deadline';


        QKpi_factory.First;
        j:=2;
        while   not   QKpi_factory.Eof   do
          begin
            eclApp.Cells(1,j):=QKpi_factory.Fields[0].Value+' '+QKpi_factory.Fields[1].Value;
            for   i:=2   to  QKpi_factory.fieldcount-4  do
            begin
              if (i = 2) and (QKpi_factory.Fields[i].Value = '.') then
                eclApp.Cells(i,j):=''
              else
                eclApp.Cells(i,j):=QKpi_factory.Fields[i].Value;
            end;
          QKpi_factory.Next;
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

procedure TKPI_Factory.Button1Click(Sender: TObject);
var A2,A3,A7,A8,A9,A11,A12,A15,A16,TDA,TDB: String;
begin
  if (trim(Ed_YM.Text) = '') then begin
    showmessage('Please Keyin YM !');
    exit;
  end;
  Qtemp.Active := false;
  Qtemp.SQL.Clear;
  Qtemp.SQL.Add('Delete from [LIY_TYXUAN].dbo.KPI_Factory_M2 where YM = '''+trim(Ed_YM.Text)+''' ');
  Qtemp.ExecSQL;
//計算月結
  Qtemp.Active := false;
  Qtemp.SQL.Clear;
  Qtemp.SQL.Add('Select ''01'',YM,''量產加權'' as ITEM, sum(A2_Score)*0.5 as A2_Score,sum(A3_Score)*0.5 as A3_Score,sum(A7_Score)*0.5 as A7_Score,sum(A8_Score)*0.5 as A8_Score,sum(A9_Score)*0.5 as A9_Score,');
  Qtemp.SQL.Add(' sum(A11_Score)*0.5 as A11_Score,sum(A12_Score)*0.5 as A12_Score,sum(A15_Score)*0.5 as A15_Score,sum(A16_Score)*0.5 as A16_Score,sum(TDA_Score) as TDA_Score,sum(TDB_Score) as TDB_Score ');
  Qtemp.SQL.Add(' from [LIY_TYXUAN].dbo.KPI_Factory ');
  Qtemp.SQL.Add(' where YM = '''+trim(Ed_YM.Text)+''' ');
  Qtemp.SQL.Add(' and Item like ''01%'' ');
  Qtemp.SQL.Add(' group by YM ');

  Qtemp.SQL.Add(' Union ');

  Qtemp.SQL.Add('Select ''02'',YM,''品質分數加權'' as ITEM, sum(A2_Score)*0.5 as A2_Score,sum(A3_Score)*0.5 as A3_Score,sum(A7_Score)*0.5 as A7_Score,sum(A8_Score)*0.5 as A8_Score,sum(A9_Score)*0.5 as A9_Score,');
  Qtemp.SQL.Add(' sum(A11_Score)*0.5 as A11_Score,sum(A12_Score)*0.5 as A12_Score,sum(A15_Score)*0.5 as A15_Score,sum(A16_Score)*0.5 as A16_Score,sum(TDA_Score) as TDA_Score,sum(TDB_Score) as TDB_Score ');
  Qtemp.SQL.Add(' from [LIY_TYXUAN].dbo.KPI_Factory ');
  Qtemp.SQL.Add(' where YM = '''+trim(Ed_YM.Text)+''' ');
  Qtemp.SQL.Add(' and Item like ''00%'' ');
  Qtemp.SQL.Add(' group by YM ');

  Qtemp.SQL.Add(' Union ');

  Qtemp.SQL.Add('Select ''03'',YM,''不含加減分KPI'' as ITEM, sum(A2_Score) as A2_Score,sum(A3_Score) as A3_Score,sum(A7_Score) as A7_Score,sum(A8_Score) as A8_Score,sum(A9_Score) as A9_Score,');
  Qtemp.SQL.Add(' sum(A11_Score) as A11_Score,sum(A12_Score) as A12_Score,sum(A15_Score) as A15_Score,sum(A16_Score) as A16_Score,sum(TDA_Score) as TDA_Score,sum(TDB_Score) as TDB_Score');
  Qtemp.SQL.Add(' from (');
  Qtemp.SQL.Add('Select YM,''01量產加權'' as ITEM, sum(A2_Score)*0.5 as A2_Score,sum(A3_Score)*0.5 as A3_Score,sum(A7_Score)*0.5 as A7_Score,sum(A8_Score)*0.5 as A8_Score,sum(A9_Score)*0.5 as A9_Score,');
  Qtemp.SQL.Add(' sum(A11_Score)*0.5 as A11_Score,sum(A12_Score)*0.5 as A12_Score,sum(A15_Score)*0.5 as A15_Score,sum(A16_Score)*0.5 as A16_Score,sum(TDA_Score) as TDA_Score,sum(TDB_Score) as TDB_Score ');
  Qtemp.SQL.Add(' from [LIY_TYXUAN].dbo.KPI_Factory ');
  Qtemp.SQL.Add(' where YM = '''+trim(Ed_YM.Text)+''' ');
  Qtemp.SQL.Add(' and Item like ''01%'' ');
  Qtemp.SQL.Add(' group by YM ');
  Qtemp.SQL.Add(' Union ');
  Qtemp.SQL.Add('Select YM,''02品質分數加權'' as ITEM, sum(A2_Score)*0.5 as A2_Score,sum(A3_Score)*0.5 as A3_Score,sum(A7_Score)*0.5 as A7_Score,sum(A8_Score)*0.5 as A8_Score,sum(A9_Score)*0.5 as A9_Score,');
  Qtemp.SQL.Add(' sum(A11_Score)*0.5 as A11_Score,sum(A12_Score)*0.5 as A12_Score,sum(A15_Score)*0.5 as A15_Score,sum(A16_Score)*0.5 as A16_Score,sum(TDA_Score) as TDA_Score,sum(TDB_Score) as TDB_Score ');
  Qtemp.SQL.Add(' from [LIY_TYXUAN].dbo.KPI_Factory ');
  Qtemp.SQL.Add(' where YM = '''+trim(Ed_YM.Text)+''' ');
  Qtemp.SQL.Add(' and Item like ''00%'' ');
  Qtemp.SQL.Add(' group by YM ');
  Qtemp.SQL.Add(' ) KPI_Factory');
  Qtemp.SQL.Add(' group by YM ');

  Qtemp.SQL.Add(' Union ');

  Qtemp.SQL.Add('Select ''04'',YM,''加減分項目'' as ITEM, sum(A2_Score) as A2_Score,sum(A3_Score) as A3_Score,sum(A7_Score) as A7_Score,sum(A8_Score) as A8_Score,sum(A9_Score) as A9_Score,');
  Qtemp.SQL.Add(' sum(A11_Score) as A11_Score,sum(A12_Score) as A12_Score,sum(A15_Score) as A15_Score,sum(A16_Score) as A16_Score,sum(TDA_Score) as TDA_Score,sum(TDB_Score) as TDB_Score ');
  Qtemp.SQL.Add(' from [LIY_TYXUAN].dbo.KPI_Factory ');
  Qtemp.SQL.Add(' where YM = '''+trim(Ed_YM.Text)+''' ');
  Qtemp.SQL.Add(' and (Item like ''02%'' or Item like ''03%'') ');
  Qtemp.SQL.Add(' group by YM ');

  Qtemp.SQL.Add(' Union ');

  Qtemp.SQL.Add('Select ''05'',YM,''KPI總分'' as ITEM, sum(A2_Score) as A2_Score,sum(A3_Score) as A3_Score,sum(A7_Score) as A7_Score,sum(A8_Score) as A8_Score,sum(A9_Score) as A9_Score,');
  Qtemp.SQL.Add(' sum(A11_Score) as A11_Score,sum(A12_Score) as A12_Score,sum(A15_Score) as A15_Score,sum(A16_Score) as A16_Score,sum(TDA_Score) as TDA_Score,sum(TDB_Score) as TDB_Score');
  Qtemp.SQL.Add(' from (');
  Qtemp.SQL.Add('Select YM,''01量產加權'' as ITEM, sum(A2_Score)*0.5 as A2_Score,sum(A3_Score)*0.5 as A3_Score,sum(A7_Score)*0.5 as A7_Score,sum(A8_Score)*0.5 as A8_Score,sum(A9_Score)*0.5 as A9_Score,');
  Qtemp.SQL.Add(' sum(A11_Score)*0.5 as A11_Score,sum(A12_Score)*0.5 as A12_Score,sum(A15_Score)*0.5 as A15_Score,sum(A16_Score)*0.5 as A16_Score,sum(TDA_Score) as TDA_Score,sum(TDB_Score) as TDB_Score ');
  Qtemp.SQL.Add(' from [LIY_TYXUAN].dbo.KPI_Factory ');
  Qtemp.SQL.Add(' where YM = '''+trim(Ed_YM.Text)+''' ');
  Qtemp.SQL.Add(' and Item like ''01%'' ');
  Qtemp.SQL.Add(' group by YM ');
  Qtemp.SQL.Add(' Union ');
  Qtemp.SQL.Add('Select YM,''02品質分數加權'' as ITEM, sum(A2_Score)*0.5 as A2_Score,sum(A3_Score)*0.5 as A3_Score,sum(A7_Score)*0.5 as A7_Score,sum(A8_Score)*0.5 as A8_Score,sum(A9_Score)*0.5 as A9_Score,');
  Qtemp.SQL.Add(' sum(A11_Score)*0.5 as A11_Score,sum(A12_Score)*0.5 as A12_Score,sum(A15_Score)*0.5 as A15_Score,sum(A16_Score)*0.5 as A16_Score,sum(TDA_Score) as TDA_Score,sum(TDB_Score) as TDB_Score ');
  Qtemp.SQL.Add(' from [LIY_TYXUAN].dbo.KPI_Factory ');
  Qtemp.SQL.Add(' where YM = '''+trim(Ed_YM.Text)+''' ');
  Qtemp.SQL.Add(' and Item like ''00%'' ');
  Qtemp.SQL.Add(' group by YM ');
  Qtemp.SQL.Add(' Union ');
  Qtemp.SQL.Add('Select YM,''04加減分項目'' as ITEM, sum(A2_Score) as A2_Score,sum(A3_Score) as A3_Score,sum(A7_Score) as A7_Score,sum(A8_Score) as A8_Score,sum(A9_Score) as A9_Score,');
  Qtemp.SQL.Add(' sum(A11_Score) as A11_Score,sum(A12_Score) as A12_Score,sum(A15_Score) as A15_Score,sum(A16_Score) as A16_Score,sum(TDA_Score) as TDA_Score,sum(TDB_Score) as TDB_Score ');
  Qtemp.SQL.Add(' from [LIY_TYXUAN].dbo.KPI_Factory ');
  Qtemp.SQL.Add(' where YM = '''+trim(Ed_YM.Text)+''' ');
  Qtemp.SQL.Add(' and (Item like ''02%'' or Item like ''03%'') ');
  Qtemp.SQL.Add(' group by YM ');
  Qtemp.SQL.Add(' ) KPI_Factory');
  Qtemp.SQL.Add(' group by YM ');
  Qtemp.Active := true;

  A2 := 'insert into [LIY_TYXUAN].dbo.KPI_Factory_M2 (YM,Factory,ITEM1,Score1,ITEM2,Score2,ITEM3,Score3,ITEM4,Score4,ITEM5,Score5) Values('''+Ed_YM.Text+''',''A02''';
  A3 := 'insert into [LIY_TYXUAN].dbo.KPI_Factory_M2 (YM,Factory,ITEM1,Score1,ITEM2,Score2,ITEM3,Score3,ITEM4,Score4,ITEM5,Score5) Values('''+Ed_YM.Text+''',''A03''';
  A7 := 'insert into [LIY_TYXUAN].dbo.KPI_Factory_M2 (YM,Factory,ITEM1,Score1,ITEM2,Score2,ITEM3,Score3,ITEM4,Score4,ITEM5,Score5) Values('''+Ed_YM.Text+''',''A07''';
  A8 := 'insert into [LIY_TYXUAN].dbo.KPI_Factory_M2 (YM,Factory,ITEM1,Score1,ITEM2,Score2,ITEM3,Score3,ITEM4,Score4,ITEM5,Score5) Values('''+Ed_YM.Text+''',''A08''';
  A9 := 'insert into [LIY_TYXUAN].dbo.KPI_Factory_M2 (YM,Factory,ITEM1,Score1,ITEM2,Score2,ITEM3,Score3,ITEM4,Score4,ITEM5,Score5) Values('''+Ed_YM.Text+''',''A09''';
  A11 := 'insert into [LIY_TYXUAN].dbo.KPI_Factory_M2 (YM,Factory,ITEM1,Score1,ITEM2,Score2,ITEM3,Score3,ITEM4,Score4,ITEM5,Score5) Values('''+Ed_YM.Text+''',''A11''';
  A12 := 'insert into [LIY_TYXUAN].dbo.KPI_Factory_M2 (YM,Factory,ITEM1,Score1,ITEM2,Score2,ITEM3,Score3,ITEM4,Score4,ITEM5,Score5) Values('''+Ed_YM.Text+''',''A12''';
  A15 := 'insert into [LIY_TYXUAN].dbo.KPI_Factory_M2 (YM,Factory,ITEM1,Score1,ITEM2,Score2,ITEM3,Score3,ITEM4,Score4,ITEM5,Score5) Values('''+Ed_YM.Text+''',''A15''';
  A16 := 'insert into [LIY_TYXUAN].dbo.KPI_Factory_M2 (YM,Factory,ITEM1,Score1,ITEM2,Score2,ITEM3,Score3,ITEM4,Score4,ITEM5,Score5) Values('''+Ed_YM.Text+''',''A16''';
  TDA := 'insert into [LIY_TYXUAN].dbo.KPI_Factory_M2 (YM,Factory,ITEM1,Score1,ITEM2,Score2,ITEM3,Score3,ITEM4,Score4,ITEM5,Score5) Values('''+Ed_YM.Text+''',''TDA''';
  TDB := 'insert into [LIY_TYXUAN].dbo.KPI_Factory_M2 (YM,Factory,ITEM1,Score1,ITEM2,Score2,ITEM3,Score3,ITEM4,Score4,ITEM5,Score5) Values('''+Ed_YM.Text+''',''TDB''';

  while not Qtemp.Eof do begin
    A2 := A2 + ','''+Qtemp.FieldbyName('Item').AsString+''','+Qtemp.FieldbyName('A2_Score').AsString+' ';
    A3 := A3 + ','''+Qtemp.FieldbyName('Item').AsString+''','+Qtemp.FieldbyName('A3_Score').AsString+' ';
    A7 := A7 + ','''+Qtemp.FieldbyName('Item').AsString+''','+Qtemp.FieldbyName('A7_Score').AsString+' ';
    A8 := A8 + ','''+Qtemp.FieldbyName('Item').AsString+''','+Qtemp.FieldbyName('A8_Score').AsString+' ';
    A9 := A9 + ','''+Qtemp.FieldbyName('Item').AsString+''','+Qtemp.FieldbyName('A9_Score').AsString+' ';
    A11 := A11 + ','''+Qtemp.FieldbyName('Item').AsString+''','+Qtemp.FieldbyName('A11_Score').AsString+' ';
    A12 := A12 + ','''+Qtemp.FieldbyName('Item').AsString+''','+Qtemp.FieldbyName('A12_Score').AsString+' ';
    A15 := A15 + ','''+Qtemp.FieldbyName('Item').AsString+''','+Qtemp.FieldbyName('A15_Score').AsString+' ';
    A16 := A16 + ','''+Qtemp.FieldbyName('Item').AsString+''','+Qtemp.FieldbyName('A16_Score').AsString+' ';
    TDA := TDA + ','''+Qtemp.FieldbyName('Item').AsString+''','+Qtemp.FieldbyName('TDA_Score').AsString+' ';
    TDB := TDB + ','''+Qtemp.FieldbyName('Item').AsString+''','+Qtemp.FieldbyName('TDB_Score').AsString+' ';
    Qtemp.Next;
  end;
  A2 := A2 + ')';
  A3 := A3 + ')';
  A7 := A7 + ')';
  A8 := A8 + ')';
  A9 := A9 + ')';
  A11 := A11 + ')';
  A12 := A12 + ')';
  A15 := A15 + ')';
  A16 := A16 + ')';
  TDA := TDA + ')';
  TDB := TDB + ')';
  Qtemp1.Active := false;
  Qtemp1.SQL.Clear;
  Qtemp1.SQL.Add(A2);
  Qtemp1.SQL.Add(A3);
  Qtemp1.SQL.Add(A7);
  Qtemp1.SQL.Add(A8);
  Qtemp1.SQL.Add(A9);
  Qtemp1.SQL.Add(A11);
  Qtemp1.SQL.Add(A12);
  Qtemp1.SQL.Add(A15);
  Qtemp1.SQL.Add(A16);
  Qtemp1.SQL.Add(TDA);
  Qtemp1.SQL.Add(TDB);
  Qtemp1.ExecSQL;
end;

procedure TKPI_Factory.Button2Click(Sender: TObject);
var R2,R3,CG: String;
begin
  if (trim(Ed_YM_R.Text) = '') then begin
    showmessage('Please Keyin YM !');
    exit;
  end;
  Qtemp1.Active := false;
  Qtemp1.SQL.Clear;
  Qtemp1.SQL.Add('Delete from [LIY_TYXUAN].dbo.KPI_R_M2 where YM = '''+trim(Ed_YM_R.Text)+''' ');
  Qtemp1.ExecSQL;

//計算月結
  Qtemp.Active := false;
  Qtemp.SQL.Clear;
  Qtemp.SQL.Add('Select ''01'',YM,''總分'' as ITEM, cast(sum(R2_Score) as varchar) as R2_Score,cast(sum(R3_Score) as varchar) as R3_Score,cast(sum(Process_Score) as varchar) as Process_Score');
  Qtemp.SQL.Add(' from [LIY_TYXUAN].dbo.KPI_R ');
  Qtemp.SQL.Add(' where YM = '''+trim(Ed_YM_R.Text)+''' ');
  Qtemp.SQL.Add(' and Item like ''01%'' ');
  Qtemp.SQL.Add(' group by YM ');

  Qtemp.SQL.Add('union');

  Qtemp.SQL.Add(' Select ''02'',YM,''加分項'' as ITEM, cast(sum(R2_Score) as varchar) as R2_Score,cast(sum(R3_Score) as varchar) as R3_Score,cast(sum(Process_Score) as varchar) as Process_Score ');
  Qtemp.SQL.Add(' from ( ');
  Qtemp.SQL.Add('Select YM,''達成率'' as ITEM, sum( cast(substring(R2_achieve,1,len(R2_achieve) -1) as float) -100 ) as R2_Score,sum( cast(substring(R3_achieve,1,len(R2_achieve) -1) as float) -100 ) as R3_Score, ');
  Qtemp.SQL.Add(' sum( cast(substring(Process_achieve,1,len(Process_achieve) -1) as float) -100 ) as Process_Score ');
  Qtemp.SQL.Add(' from [LIY_TYXUAN].dbo.KPI_R ');
  Qtemp.SQL.Add(' where YM = '''+trim(Ed_YM_R.Text)+''' ');
  Qtemp.SQL.Add(' and Item like ''013%'' ');
  Qtemp.SQL.Add(' group by YM ');
  Qtemp.SQL.Add(' Union ');
  Qtemp.SQL.Add('Select YM,''加分項'' as ITEM, sum(R2_Score) as R2_Score,sum(R3_Score) as R3_Score,sum(Process_Score) as Process_Score ');
  Qtemp.SQL.Add(' from [LIY_TYXUAN].dbo.KPI_R ');
  Qtemp.SQL.Add(' where YM = '''+trim(Ed_YM_R.Text)+''' ');
  Qtemp.SQL.Add(' and Item like ''02%'' ');
  Qtemp.SQL.Add(' group by YM ');
  Qtemp.SQL.Add(' ) KPI_R ');
  Qtemp.SQL.Add(' group by YM ');

  Qtemp.SQL.Add(' Union ');

  Qtemp.SQL.Add('Select ''03'',YM,''總分+加分項'' as ITEM, cast(sum(R2_Score) as varchar) as R2_Score,cast(sum(R3_Score) as varchar) as R3_Score,cast(sum(Process_Score) as varchar) as Process_Score');
  Qtemp.SQL.Add(' from (');
  Qtemp.SQL.Add('Select YM,''01量產加權'' as ITEM, sum(R2_Score) as R2_Score,sum(R3_Score) as R3_Score,sum(Process_Score) as Process_Score');
  Qtemp.SQL.Add(' from [LIY_TYXUAN].dbo.KPI_R ');
  Qtemp.SQL.Add(' where YM = '''+trim(Ed_YM_R.Text)+''' ');
  Qtemp.SQL.Add(' and Item like ''01%'' ');
  Qtemp.SQL.Add(' group by YM ');
  Qtemp.SQL.Add(' Union ');
  Qtemp.SQL.Add('Select YM,''達成率'' as ITEM, sum( cast(substring(R2_achieve,1,len(R2_achieve) -1) as float) -100 ) as R2_Score,sum( cast(substring(R3_achieve,1,len(R2_achieve) -1) as float) -100 ) as R3_Score, ');
  Qtemp.SQL.Add(' sum( cast(substring(Process_achieve,1,len(Process_achieve) -1) as float) -100 ) as Process_Score ');
  Qtemp.SQL.Add(' from [LIY_TYXUAN].dbo.KPI_R ');
  Qtemp.SQL.Add(' where YM = '''+trim(Ed_YM_R.Text)+''' ');
  Qtemp.SQL.Add(' and Item like ''013%'' ');
  Qtemp.SQL.Add(' group by YM ');
  Qtemp.SQL.Add(' Union ');
  Qtemp.SQL.Add('Select YM,''加分項'' as ITEM, sum(R2_Score) as R2_Score,sum(R3_Score) as R3_Score,sum(Process_Score) as Process_Score ');
  Qtemp.SQL.Add(' from [LIY_TYXUAN].dbo.KPI_R ');
  Qtemp.SQL.Add(' where YM = '''+trim(Ed_YM_R.Text)+''' ');
  Qtemp.SQL.Add(' and Item like ''02%'' ');
  Qtemp.SQL.Add(' group by YM ');
  Qtemp.SQL.Add(' ) KPI_R');
  Qtemp.SQL.Add(' group by YM ');
  Qtemp.Active := true;

  R2 := 'insert into [LIY_TYXUAN].dbo.KPI_R_M2 (YM,Factory,ITEM1,Score1,ITEM2,Score2,ITEM3,Score3,ITEM4,Score4,ITEM5,Score5) Values('''+Ed_YM.Text+''',''R2'','''',0,'''',0';
  R3 := 'insert into [LIY_TYXUAN].dbo.KPI_R_M2 (YM,Factory,ITEM1,Score1,ITEM2,Score2,ITEM3,Score3,ITEM4,Score4,ITEM5,Score5) Values('''+Ed_YM.Text+''',''R3'','''',0,'''',0';
  CG := 'insert into [LIY_TYXUAN].dbo.KPI_R_M2 (YM,Factory,ITEM1,Score1,ITEM2,Score2,ITEM3,Score3,ITEM4,Score4,ITEM5,Score5) Values('''+Ed_YM.Text+''',''Process'','''',0,'''',0';

  while not Qtemp.Eof do begin
    R2 := R2 + ','''+Qtemp.FieldbyName('Item').AsString+''','+Qtemp.FieldbyName('R2_Score').AsString+' ';
    R3 := R3 + ','''+Qtemp.FieldbyName('Item').AsString+''','+Qtemp.FieldbyName('R3_Score').AsString+' ';
    CG := CG + ','''+Qtemp.FieldbyName('Item').AsString+''','+Qtemp.FieldbyName('Process_Score').AsString+' ';
    Qtemp.Next;
  end;
  R2 := R2 + ')';
  R3 := R3 + ')';
  CG := CG + ')';
  Qtemp1.Active := false;
  Qtemp1.SQL.Clear;
  Qtemp1.SQL.Add(R2);
  Qtemp1.SQL.Add(R3);
  Qtemp1.SQL.Add(CG);
  Qtemp1.ExecSQL;
end;

procedure TKPI_Factory.BitBtn3Click(Sender: TObject);
begin
  if (trim(Ed_YM_R.Text) = '') then begin
    showmessage('Please Keyin YM !');
    exit;
  end;

  with QKpi_R do
  begin
    requestlive:=true;
    cachedupdates:=true;
    Last;
//2
    Append;
    FieldByName('YM').AsString:=Ed_YM_R.Text;
    FieldByName('Item').AsString:='011.直間工比例/Ty le cong nhan truc tiep gian tiep';
    FieldByName('norm').AsString:='23%/18%/17%';
    FieldByName('score').AsString:='15/20/30';
    FieldByName('UserDate').AsString:=FormatDateTime('YYYY/MM/DD',Ndate);
    FieldByName('UserID').AsString:=main.Edit1.Text;
    FieldByName('YN').Value:='1';
//3
    Append;
    FieldByName('YM').AsString:=Ed_YM_R.Text;
    FieldByName('Item').AsString:='012.時產能/San luong binh quan moi gio';
    FieldByName('norm').AsString:='16/33.66/43';
    FieldByName('score').AsString:='25/30/52.8';
    FieldByName('UserDate').AsString:=FormatDateTime('YYYY/MM/DD',Ndate);
    FieldByName('UserID').AsString:=main.Edit1.Text;
    FieldByName('YN').Value:='1';
//4
    Append;
    FieldByName('YM').AsString:=Ed_YM_R.Text;
    FieldByName('Item').AsString:='013.達成率/Ty le san luong dat duoc';
    FieldByName('norm').AsString:='100%';
    FieldByName('score').AsString:='10';
    FieldByName('UserDate').AsString:=FormatDateTime('YYYY/MM/DD',Ndate);
    FieldByName('UserID').AsString:=main.Edit1.Text;
    FieldByName('YN').Value:='1';
//5
    Append;
    FieldByName('YM').AsString:=Ed_YM_R.Text;
    FieldByName('Item').AsString:='014.材料貴';
    FieldByName('norm').AsString:='3.85%';
    FieldByName('score').AsString:='15';
    FieldByName('UserDate').AsString:=FormatDateTime('YYYY/MM/DD',Ndate);
    FieldByName('UserID').AsString:=main.Edit1.Text;
    FieldByName('YN').Value:='1';
//6
    Append;
    FieldByName('YM').AsString:=Ed_YM_R.Text;
    FieldByName('Item').AsString:='015.回收料';
    FieldByName('norm').AsString:='1.35%';
    FieldByName('score').AsString:='5';
    FieldByName('UserDate').AsString:=FormatDateTime('YYYY/MM/DD',Ndate);
    FieldByName('UserID').AsString:=main.Edit1.Text;
    FieldByName('YN').Value:='1';
//7
    Append;
    FieldByName('YM').AsString:=Ed_YM_R.Text;
    FieldByName('Item').AsString:='016.大底不良';
    FieldByName('norm').AsString:='1.85%';
    FieldByName('score').AsString:='15';
    FieldByName('UserDate').AsString:=FormatDateTime('YYYY/MM/DD',Ndate);
    FieldByName('UserID').AsString:=main.Edit1.Text;
    FieldByName('YN').Value:='1';
//8
    Append;
    FieldByName('YM').AsString:=Ed_YM_R.Text;
    FieldByName('Item').AsString:='017.半插不良';
    FieldByName('norm').AsString:='1.35%';
    FieldByName('score').AsString:='5';
    FieldByName('UserDate').AsString:=FormatDateTime('YYYY/MM/DD',Ndate);
    FieldByName('UserID').AsString:=main.Edit1.Text;
    FieldByName('YN').Value:='1';
//9
    Append;
    FieldByName('YM').AsString:=Ed_YM_R.Text;
    FieldByName('Item').AsString:='018.退料率';
    FieldByName('norm').AsString:='0.07%/1.75%';
    FieldByName('score').AsString:='10';
    FieldByName('UserDate').AsString:=FormatDateTime('YYYY/MM/DD',Ndate);
    FieldByName('UserID').AsString:=main.Edit1.Text;
    FieldByName('YN').Value:='1';
//10
    Append;
    FieldByName('YM').AsString:=Ed_YM_R.Text;
    FieldByName('Item').AsString:='019.成型剩料';
    FieldByName('norm').AsString:='15';
    FieldByName('score').AsString:='';
    FieldByName('UserDate').AsString:=FormatDateTime('YYYY/MM/DD',Ndate);
    FieldByName('UserID').AsString:=main.Edit1.Text;
    FieldByName('YN').Value:='1';
//R3 1
    Append;
    FieldByName('YM').AsString:=Ed_YM_R.Text;
    FieldByName('Item').AsString:='01A.不良率';
    FieldByName('norm').AsString:='2.5%/0.22%';
    FieldByName('score').AsString:='15/20';
    FieldByName('UserDate').AsString:=FormatDateTime('YYYY/MM/DD',Ndate);
    FieldByName('UserID').AsString:=main.Edit1.Text;
    FieldByName('YN').Value:='1';
//R3 9
    Append;
    FieldByName('YM').AsString:=Ed_YM_R.Text;
    FieldByName('Item').AsString:='021.離職率';
    FieldByName('norm').AsString:='2.5%/2%/2%';
    FieldByName('score').AsString:='';
    FieldByName('UserDate').AsString:=FormatDateTime('YYYY/MM/DD',Ndate);
    FieldByName('UserID').AsString:=main.Edit1.Text;
    FieldByName('YN').Value:='1';
//R3 10
    Append;
    FieldByName('YM').AsString:=Ed_YM_R.Text;
    FieldByName('Item').AsString:='022.招募';
    FieldByName('norm').AsString:='1200%/3/6';
    FieldByName('score').AsString:='0.2';
    FieldByName('UserDate').AsString:=FormatDateTime('YYYY/MM/DD',Ndate);
    FieldByName('UserID').AsString:=main.Edit1.Text;
    FieldByName('YN').Value:='1';
//R3 11
    Append;
    FieldByName('YM').AsString:=Ed_YM_R.Text;
    FieldByName('Item').AsString:='023.改善';
    FieldByName('norm').AsString:='100%/1/1';
    FieldByName('score').AsString:='';
    FieldByName('UserDate').AsString:=FormatDateTime('YYYY/MM/DD',Ndate);
    FieldByName('UserID').AsString:=main.Edit1.Text;
    FieldByName('YN').Value:='1';
  end;
  BitBtn6.Enabled:=true;
  BitBtn7.Enabled:=true;
//  DBGridEh6.columns[0].ButtonStyle:=cbsAuto;
end;

procedure TKPI_Factory.BitBtn4Click(Sender: TObject);
begin
  if QKpi_R.fieldbyname('USERID').value=main.edit1.Text then
  begin
      QKpi_R.requestlive:=true;
      QKpi_R.cachedupdates:=true;
      QKpi_R.Edit;
      QKpi_R.fieldbyname('YN').Value:='0';
  end else
  begin
     showmessage('It is not yours,can not delete.');
     exit;
  end;
  BitBtn6.Enabled:=true;
  BitBtn7.Enabled:=true;
end;

procedure TKPI_Factory.BitBtn5Click(Sender: TObject);
begin
  if QKpi_R.IsEmpty then abort;
  if QKpi_R.fieldbyname('USERID').value <> main.edit1.Text then
  begin
    showmessage('It is not yours, can not modify.');
    exit;
  end;
  with QKpi_R do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
  BitBtn6.Enabled:=true;
  BitBtn7.Enabled:=true;
end;

procedure TKPI_Factory.BitBtn6Click(Sender: TObject);
var i: Integer;
begin
  BitBtn1.Enabled:=true;
  BitBtn3.Enabled:=true;
  BitBtn4.Enabled:=true;
  BitBtn5.Enabled:=true;
  BitBtn6.enabled:=false;
  BitBtn7.enabled:=false;
  try
    QKpi_R.cachedupdates:=true;
    QKpi_R.requestlive:=true;
    QKpi_R.first;
    for i:=1 to QKpi_R.RecordCount do
    begin
      case QKpi_R.updatestatus of
      usinserted:
        UPKpi_R.apply(ukinsert);

      usmodified:
        begin
          if QKpi_R.fieldbyname('YN').value='0' then
            UPKpi_R.apply(ukdelete)
          else begin
            QKpi_R.Edit;
            QKpi_R.FieldByName('UserDate').AsString:=FormatDateTime('YYYY/MM/DD',Ndate);
            QKpi_R.FieldByName('UserID').AsString:=main.Edit1.Text;
            UPKpi_R.apply(ukmodify);
          end;
        end;
      end;
      QKpi_R.next;
    end;


    with QKpi_R do
    begin
       active:=false;
       requestlive:=false;
       cachedupdates:=false;
       active:=true;
    end;

    except
       Messagedlg('Have wrong,can not save!',mtwarning,[mbyes],0);
   end;
end;

procedure TKPI_Factory.BitBtn7Click(Sender: TObject);
begin
  QKpi_R.active:=false;
  QKpi_R.cachedupdates:=false;
  QKpi_R.requestlive:=false;
  QKpi_R.active:=true;
  BitBtn6.enabled:=false;
  BitBtn7.enabled:=false;
end;

procedure TKPI_Factory.BitBtn1Click(Sender: TObject);
begin
  if (main.Edit1.Text = '53747') or (main.Edit1.Text = '79201') or (main.Edit1.Text = '51022') then begin
    BitBtn3.Enabled:=true;
    BitBtn4.Enabled:=true;
    BitBtn5.Enabled:=true;
    Button2.Enabled := true;
  end;
    BitBtn6.Enabled:=false;
    BitBtn7.Enabled:=false;

    with QKpi_R do
    begin
      active:=false;
      sql.Clear;
      sql.add('select * from [LIY_TYXUAN].dbo.KPI_R where 1=1');
      if Ed_YM.text<>'' then
        sql.add('and YM ='''+Ed_YM_R.text+''' ');
      sql.add('order by YM,Item');
      active:=true;
    end;
end;

procedure TKPI_Factory.Button4Click(Sender: TObject);
var SYM,EYM,sFileName: String;
begin
  sFileName := ExtractFilePath(Application.ExeName)+'ChartView.exe';
  ShellExecute(Application.Handle,'Open', Pchar(sFileName),PChar('http://192.168.123.200/frontend/#/factory/kpi'), 0, SW_SHOWNORMAL);
end;

procedure TKPI_Factory.Button3Click(Sender: TObject);
var i: Integer;
    A2,A3,A7,A8,A9,A11,A12,A15,A16,Score,TDA,TDB: String;     //排名
    A2_A,A3_A,A7_A,A8_A,A9_A,A11_A,A12_A,A15_A,A16_A,Score_A,TDA_A,TDB_A: String;  //平均分數
    Score_Avg,TDA_S,TDB_S : Currency;
begin
  if (trim(Ed_YM_M.Text) = '') then begin
    showmessage('Please Keyin YM !');
    exit;
  end;
// 計算排名
  Qtemp.SQL.Add('if object_id(N''tempdb..#Factory_M'') is not null  ');
  Qtemp.SQL.Add('begin  ');
  Qtemp.SQL.Add('  drop table #Factory_M ');
  Qtemp.SQL.Add('end  ');
  Qtemp.SQL.Add('create table #Factory_M(  ');
  Qtemp.SQL.Add('  Factory VarCHAR(6), ');
  Qtemp.SQL.Add('  Score Float ');
  Qtemp.SQL.Add(')   ');
  Qtemp.ExecSQL;

  Qtemp.Active := false;
  Qtemp.SQL.Clear;
  Qtemp.SQL.Add('Select sum(isnull(A2_Score,0)) as A2_Score,sum(isnull(A3_Score,0)) as A3_Score,sum(isnull(A7_Score,0)) as A7_Score,sum(isnull(A8_Score,0)) as A8_Score,sum(isnull(A9_Score,0)) as A9_Score,');
  Qtemp.SQL.Add(' sum(isnull(A11_Score,0)) as A11_Score,sum(isnull(A12_Score,0)) as A12_Score,sum(isnull(A15_Score,0)) as A15_Score,sum(isnull(A16_Score,0)) as A16_Score,sum(isnull(TDA_Score,0)) as TDA_Score,sum(isnull(TDB_Score,0)) as TDB_Score');
  Qtemp.SQL.Add(' from (');
  Qtemp.SQL.Add('Select ''01量產加權'' as ITEM, sum(A2_Score)*0.5 as A2_Score,sum(A3_Score)*0.5 as A3_Score,sum(A7_Score)*0.5 as A7_Score,sum(A8_Score)*0.5 as A8_Score,sum(A9_Score)*0.5 as A9_Score,');
  Qtemp.SQL.Add(' sum(A11_Score)*0.5 as A11_Score,sum(A12_Score)*0.5 as A12_Score,sum(A15_Score)*0.5 as A15_Score,sum(A16_Score)*0.5 as A16_Score,sum(isnull(TDA_Score,0)) as TDA_Score,sum(isnull(TDB_Score,0)) as TDB_Score ');
  Qtemp.SQL.Add(' from [LIY_TYXUAN].dbo.KPI_Factory ');
  Qtemp.SQL.Add(' where YM = '''+trim(Ed_YM_M.Text)+''' ');
  Qtemp.SQL.Add(' and Item like ''01%'' ');
  Qtemp.SQL.Add(' Union ');
  Qtemp.SQL.Add('Select ''02品質分數加權'' as ITEM, sum(A2_Score)*0.5 as A2_Score,sum(A3_Score)*0.5 as A3_Score,sum(A7_Score)*0.5 as A7_Score,sum(A8_Score)*0.5 as A8_Score,sum(A9_Score)*0.5 as A9_Score,');
  Qtemp.SQL.Add(' sum(A11_Score)*0.5 as A11_Score,sum(A12_Score)*0.5 as A12_Score,sum(A15_Score)*0.5 as A15_Score,sum(A16_Score)*0.5 as A16_Score,sum(isnull(TDA_Score,0)) as TDA_Score,sum(isnull(TDB_Score,0)) as TDB_Score ');
  Qtemp.SQL.Add(' from [LIY_TYXUAN].dbo.KPI_Factory ');
  Qtemp.SQL.Add(' where YM = '''+trim(Ed_YM_M.Text)+''' ');
  Qtemp.SQL.Add(' and Item like ''00%'' ');
  Qtemp.SQL.Add(' Union ');
  Qtemp.SQL.Add('Select ''04加減分項目'' as ITEM, sum(A2_Score) as A2_Score,sum(A3_Score) as A3_Score,sum(A7_Score) as A7_Score,sum(A8_Score) as A8_Score,sum(A9_Score) as A9_Score,');
  Qtemp.SQL.Add(' sum(A11_Score) as A11_Score,sum(A12_Score) as A12_Score,sum(A15_Score) as A15_Score,sum(A16_Score) as A16_Score,sum(isnull(TDA_Score,0)) as TDA_Score,sum(isnull(TDB_Score,0)) as TDB_Score ');
  Qtemp.SQL.Add(' from [LIY_TYXUAN].dbo.KPI_Factory ');
  Qtemp.SQL.Add(' where YM = '''+trim(Ed_YM_M.Text)+''' ');
  Qtemp.SQL.Add(' and (Item like ''02%'' or Item like ''03%'') ');
  Qtemp.SQL.Add(' ) KPI_Factory');
  Qtemp.Active := true;
  for i := 1 to 11 do begin
    Qtemp1.Active := false;
    Qtemp1.SQL.Clear;
    Qtemp1.SQL.Add('Insert into #Factory_M (Factory ,Score)');
    if i = 1 then
      Qtemp1.SQL.Add('Values (''A02'' ,'+Qtemp.Fieldbyname('A2_Score').AsString+')')
    else if i = 2 then
      Qtemp1.SQL.Add('Values (''A03'' ,'+Qtemp.Fieldbyname('A3_Score').AsString+')')
    else if i = 3 then
      Qtemp1.SQL.Add('Values (''A07'' ,'+Qtemp.Fieldbyname('A7_Score').AsString+')')
    else if i = 4 then
      Qtemp1.SQL.Add('Values (''A08'' ,'+Qtemp.Fieldbyname('A8_Score').AsString+')')
    else if i = 5 then
      Qtemp1.SQL.Add('Values (''A09'' ,'+Qtemp.Fieldbyname('A9_Score').AsString+')')
    else if i = 6 then
      Qtemp1.SQL.Add('Values (''A11'' ,'+Qtemp.Fieldbyname('A11_Score').AsString+')')
    else if i = 7 then
      Qtemp1.SQL.Add('Values (''A12'' ,'+Qtemp.Fieldbyname('A12_Score').AsString+')')
    else if i = 8 then
      Qtemp1.SQL.Add('Values (''A15'' ,'+Qtemp.Fieldbyname('A15_Score').AsString+')')
    else if i = 9 then
      Qtemp1.SQL.Add('Values (''A16'' ,'+Qtemp.Fieldbyname('A16_Score').AsString+')')
    else if i = 10 then
      Qtemp1.SQL.Add('Values (''TDA'' ,'+Qtemp.Fieldbyname('TDA_Score').AsString+')')
    else if i = 11 then
      Qtemp1.SQL.Add('Values (''TDB'' ,'+Qtemp.Fieldbyname('TDB_Score').AsString+')');
    Qtemp1.ExecSQL;
  end;

  Qtemp.Active := false;
  Qtemp.SQL.Clear;
  Qtemp.SQL.Add('select * from #Factory_M order by Score desc');
  Qtemp.Active := true;

  i := 1;
  Score_Avg := 0;
  while not Qtemp.Eof do begin
    if Qtemp.fieldbyname('Factory').AsString = 'A02' then begin
      A2 := inttostr(i);
      if Qtemp.fieldbyname('Score').Value >= 86 then
        A2_A := '21% - 25%'
      else if Qtemp.fieldbyname('Score').Value >= 76 then
        A2_A := '16% - 20%'
      else if Qtemp.fieldbyname('Score').Value >= 60 then
        A2_A := '11% - 15%'
      else
        A2_A := '10%'
    end
    else if Qtemp.fieldbyname('Factory').AsString = 'A03' then begin
      A3 := inttostr(i);
      if Qtemp.fieldbyname('Score').Value >= 86 then
        A3_A := '21% - 25%'
      else if Qtemp.fieldbyname('Score').Value >= 76 then
        A3_A := '16% - 20%'
      else if Qtemp.fieldbyname('Score').Value >= 60 then
        A3_A := '11% - 15%'
      else
        A3_A := '10%'
    end
    else if Qtemp.fieldbyname('Factory').AsString = 'A07' then begin
      A7 := inttostr(i);
      if Qtemp.fieldbyname('Score').Value >= 86 then
        A7_A := '21% - 25%'
      else if Qtemp.fieldbyname('Score').Value >= 76 then
        A7_A := '16% - 20%'
      else if Qtemp.fieldbyname('Score').Value >= 60 then
        A7_A := '11% - 15%'
      else
        A7_A := '10%'
    end
    else if Qtemp.fieldbyname('Factory').AsString = 'A08' then begin
      A8 := inttostr(i);
      if Qtemp.fieldbyname('Score').Value >= 86 then
        A8_A := '21% - 25%'
      else if Qtemp.fieldbyname('Score').Value >= 76 then
        A8_A := '16% - 20%'
      else if Qtemp.fieldbyname('Score').Value >= 60 then
        A8_A := '11% - 15%'
      else
        A8_A := '10%'
    end
    else if Qtemp.fieldbyname('Factory').AsString = 'A09' then begin
      A9 := inttostr(i);
      if Qtemp.fieldbyname('Score').Value >= 86 then
        A9_A := '21% - 25%'
      else if Qtemp.fieldbyname('Score').Value >= 76 then
        A9_A := '16% - 20%'
      else if Qtemp.fieldbyname('Score').Value >= 60 then
        A9_A := '11% - 15%'
      else
        A9_A := '10%'
    end
    else if Qtemp.fieldbyname('Factory').AsString = 'A11' then begin
      A11 := inttostr(i);
      if Qtemp.fieldbyname('Score').Value >= 86 then
        A11_A := '21% - 25%'
      else if Qtemp.fieldbyname('Score').Value >= 76 then
        A11_A := '16% - 20%'
      else if Qtemp.fieldbyname('Score').Value >= 60 then
        A11_A := '11% - 15%'
      else
        A11_A := '10%'
    end
    else if Qtemp.fieldbyname('Factory').AsString = 'A12' then begin
      A12 := inttostr(i);
      if Qtemp.fieldbyname('Score').Value >= 86 then
        A12_A := '21% - 25%'
      else if Qtemp.fieldbyname('Score').Value >= 76 then
        A12_A := '16% - 20%'
      else if Qtemp.fieldbyname('Score').Value >= 60 then
        A12_A := '11% - 15%'
      else
        A12_A := '10%'
    end
    else if Qtemp.fieldbyname('Factory').AsString = 'A15' then begin
      A15 := inttostr(i);
      if Qtemp.fieldbyname('Score').Value >= 86 then
        A15_A := '21% - 25%'
      else if Qtemp.fieldbyname('Score').Value >= 76 then
        A15_A := '16% - 20%'
      else if Qtemp.fieldbyname('Score').Value >= 60 then
        A15_A := '11% - 15%'
      else
        A15_A := '10%'
    end
    else if Qtemp.fieldbyname('Factory').AsString = 'A16' then begin
      A16 := inttostr(i);
      if Qtemp.fieldbyname('Score').Value >= 86 then
        A16_A := '21% - 25%'
      else if Qtemp.fieldbyname('Score').Value >= 76 then
        A16_A := '16% - 20%'
      else if Qtemp.fieldbyname('Score').Value >= 60 then
        A16_A := '11% - 15%'
      else
        A16_A := '10%'
    end
    else if Qtemp.fieldbyname('Factory').AsString = 'TDA' then begin
      TDA_S := Qtemp.fieldbyname('Score').Value;
      if Qtemp.fieldbyname('Score').Value >= 86 then
        TDA_A := '21% - 25%'
      else if Qtemp.fieldbyname('Score').Value >= 76 then
        TDA_A := '16% - 20%'
      else if Qtemp.fieldbyname('Score').Value >= 60 then
        TDA_A := '11% - 15%'
      else
        TDA_A := '10%'
    end
    else if Qtemp.fieldbyname('Factory').AsString = 'TDB' then begin
      TDB_S := Qtemp.fieldbyname('Score').Value;
      if Qtemp.fieldbyname('Score').Value >= 86 then
        TDB_A := '21% - 25%'
      else if Qtemp.fieldbyname('Score').Value >= 76 then
        TDB_A := '16% - 20%'
      else if Qtemp.fieldbyname('Score').Value >= 60 then
        TDB_A := '11% - 15%'
      else
        TDB_A := '10%'
    end;

    if (Qtemp.fieldbyname('Factory').AsString <> 'TDA') and (Qtemp.fieldbyname('Factory').AsString <> 'TDB') then begin
      i := i + 1;
      Score_Avg := Score_Avg + Qtemp.fieldbyname('Score').value;
    end;
    Qtemp.Next;
  end;
  if TDA_S > TDB_S then begin
    TDA := '1';
    TDB := '2';
  end
  else if TDA_S < TDB_S then begin
    TDB := '1';
    TDA := '2';
  end
  else begin
    TDB := '1';
    TDA := '1';
  end;
  Score_Avg := SimpleRoundTo(Score_Avg / 9);
//計算工廠月結
  QKpi_Factory_M.Active := false;
  QKpi_Factory_M.SQL.Clear;
  QKpi_Factory_M.SQL.Add('select '''+trim(Ed_YM_M.Text)+''' as YM,''00外籍負責幹部'' as ITEM,'''' as A2_Score,'''' as A3_Score,'''' as A7_Score,'''' as A8_Score,'''' as A9_Score,''陳煥蘭'' as A11_Score,''陳煥蘭'' as A12_Score,''石金花'' as A15_Score,''肖大利'' as A16_Score,Null as 幕僚部門 ');
  QKpi_Factory_M.SQL.Add(' from [LIY_TYXUAN].dbo.KPI_Factory ');

  QKpi_Factory_M.SQL.Add('union');

  QKpi_Factory_M.SQL.Add('select '''+trim(Ed_YM_M.Text)+''' as YM,''01越籍負責幹部'' as ITEM,''阿海'' as A2_Score,''阿峰/阿小'' as A3_Score,''阿水/阿心'' as A7_Score,''阿水/阿重'' as A8_Score,''阿鳳'' as A9_Score,''阿緣'' as A11_Score,''阿正'' as A12_Score,''阿全/阿珍'' as A15_Score,''阿天'' as A16_Score,Null as 幕僚部門 ');
  QKpi_Factory_M.SQL.Add(' from [LIY_TYXUAN].dbo.KPI_Factory ');

  QKpi_Factory_M.SQL.Add('union');

  QKpi_Factory_M.SQL.Add('Select YM,''02量產加權'' as ITEM, cast(sum(A2_Score)*0.5 as varchar) as A2_Score,cast(sum(A3_Score)*0.5 as varchar) as A3_Score,cast(sum(A7_Score)*0.5 as varchar) as A7_Score,');
  QKpi_Factory_M.SQL.Add('cast(sum(A8_Score)*0.5 as varchar) as A8_Score,cast(sum(A9_Score)*0.5 as varchar) as A9_Score,');
  QKpi_Factory_M.SQL.Add(' cast(sum(A11_Score)*0.5 as varchar) as A11_Score,cast(sum(A12_Score)*0.5 as varchar) as A12_Score,cast(sum(A15_Score)*0.5 as varchar) as A15_Score,cast(sum(A16_Score)*0.5 as varchar) as A16_Score,Null as 幕僚部門 ');
  QKpi_Factory_M.SQL.Add(' from [LIY_TYXUAN].dbo.KPI_Factory ');
  QKpi_Factory_M.SQL.Add(' where YM = '''+trim(Ed_YM_M.Text)+''' ');
  QKpi_Factory_M.SQL.Add(' and Item like ''01%'' ');
  QKpi_Factory_M.SQL.Add(' group by YM ');

  QKpi_Factory_M.SQL.Add(' Union ');

  QKpi_Factory_M.SQL.Add('Select YM,''03品質分數加權'' as ITEM, cast(sum(A2_Score)*0.5 as varchar) as A2_Score,cast(sum(A3_Score)*0.5 as varchar) as A3_Score,cast(sum(A7_Score)*0.5 as varchar) as A7_Score,');
  QKpi_Factory_M.SQL.Add('cast(sum(A8_Score)*0.5 as varchar) as A8_Score,cast(sum(A9_Score)*0.5 as varchar) as A9_Score,');
  QKpi_Factory_M.SQL.Add(' cast(sum(A11_Score)*0.5 as varchar) as A11_Score,cast(sum(A12_Score)*0.5 as varchar) as A12_Score,cast(sum(A15_Score)*0.5 as varchar) as A15_Score,cast(sum(A16_Score)*0.5 as varchar) as A16_Score,Null as 幕僚部門 ');
  QKpi_Factory_M.SQL.Add(' from [LIY_TYXUAN].dbo.KPI_Factory ');
  QKpi_Factory_M.SQL.Add(' where YM = '''+trim(Ed_YM_M.Text)+''' ');
  QKpi_Factory_M.SQL.Add(' and Item like ''00%'' ');
  QKpi_Factory_M.SQL.Add(' group by YM ');

  QKpi_Factory_M.SQL.Add(' Union ');

  QKpi_Factory_M.SQL.Add('Select YM,''04不含加減分KPI'' as ITEM, cast(sum(A2_Score) as varchar) as A2_Score,cast(sum(A3_Score) as varchar) as A3_Score,cast(sum(A7_Score) as varchar) as A7_Score,');
  QKpi_Factory_M.SQL.Add('cast(sum(A8_Score) as varchar) as A8_Score,cast(sum(A9_Score) as varchar) as A9_Score,');
  QKpi_Factory_M.SQL.Add(' cast(sum(A11_Score) as varchar) as A11_Score,cast(sum(A12_Score) as varchar) as A12_Score,cast(sum(A15_Score) as varchar) as A15_Score,cast(sum(A16_Score) as varchar) as A16_Score,Null as 幕僚部門 ');
  QKpi_Factory_M.SQL.Add(' from (');
  QKpi_Factory_M.SQL.Add('Select YM,''01量產加權'' as ITEM, sum(A2_Score)*0.5 as A2_Score,sum(A3_Score)*0.5 as A3_Score,sum(A7_Score)*0.5 as A7_Score,sum(A8_Score)*0.5 as A8_Score,sum(A9_Score)*0.5 as A9_Score,');
  QKpi_Factory_M.SQL.Add(' sum(A11_Score)*0.5 as A11_Score,sum(A12_Score)*0.5 as A12_Score,sum(A15_Score)*0.5 as A15_Score,sum(A16_Score)*0.5 as A16_Score ');
  QKpi_Factory_M.SQL.Add(' from [LIY_TYXUAN].dbo.KPI_Factory ');
  QKpi_Factory_M.SQL.Add(' where YM = '''+trim(Ed_YM_M.Text)+''' ');
  QKpi_Factory_M.SQL.Add(' and Item like ''01%'' ');
  QKpi_Factory_M.SQL.Add(' group by YM ');
  QKpi_Factory_M.SQL.Add(' Union ');
  QKpi_Factory_M.SQL.Add('Select YM,''02品質分數加權'' as ITEM, sum(A2_Score)*0.5 as A2_Score,sum(A3_Score)*0.5 as A3_Score,sum(A7_Score)*0.5 as A7_Score,sum(A8_Score)*0.5 as A8_Score,sum(A9_Score)*0.5 as A9_Score,');
  QKpi_Factory_M.SQL.Add(' sum(A11_Score)*0.5 as A11_Score,sum(A12_Score)*0.5 as A12_Score,sum(A15_Score)*0.5 as A15_Score,sum(A16_Score)*0.5 as A16_Score ');
  QKpi_Factory_M.SQL.Add(' from [LIY_TYXUAN].dbo.KPI_Factory ');
  QKpi_Factory_M.SQL.Add(' where YM = '''+trim(Ed_YM_M.Text)+''' ');
  QKpi_Factory_M.SQL.Add(' and Item like ''00%'' ');
  QKpi_Factory_M.SQL.Add(' group by YM ');
  QKpi_Factory_M.SQL.Add(' ) KPI_Factory');
  QKpi_Factory_M.SQL.Add(' group by YM ');

  QKpi_Factory_M.SQL.Add(' Union ');

  QKpi_Factory_M.SQL.Add('Select YM,''05加減分項目'' as ITEM, cast(sum(A2_Score) as varchar) as A2_Score,cast(sum(A3_Score) as varchar) as A3_Score,cast(sum(A7_Score) as varchar) as A7_Score,');
  QKpi_Factory_M.SQL.Add('cast(sum(A8_Score) as varchar) as A8_Score,cast(sum(A9_Score) as varchar) as A9_Score,');
  QKpi_Factory_M.SQL.Add(' cast(sum(A11_Score) as varchar) as A11_Score,cast(sum(A12_Score) as varchar) as A12_Score,cast(sum(A15_Score) as varchar) as A15_Score,cast(sum(A16_Score) as varchar) as A16_Score,Null as 幕僚部門 ');
  QKpi_Factory_M.SQL.Add(' from [LIY_TYXUAN].dbo.KPI_Factory ');
  QKpi_Factory_M.SQL.Add(' where YM = '''+trim(Ed_YM_M.Text)+''' ');
  QKpi_Factory_M.SQL.Add(' and (Item like ''02%'' or Item like ''03%'') ');
  QKpi_Factory_M.SQL.Add(' group by YM ');

  QKpi_Factory_M.SQL.Add(' Union ');

  QKpi_Factory_M.SQL.Add('Select YM,''06KPI總分'' as ITEM, cast(sum(A2_Score) as varchar) as A2_Score,cast(sum(A3_Score) as varchar) as A3_Score,cast(sum(A7_Score) as varchar) as A7_Score,');
  QKpi_Factory_M.SQL.Add('cast(sum(A8_Score) as varchar) as A8_Score,cast(sum(A9_Score) as varchar) as A9_Score,');
  QKpi_Factory_M.SQL.Add(' cast(sum(A11_Score) as varchar) as A11_Score,cast(sum(A12_Score) as varchar) as A12_Score,cast(sum(A15_Score) as varchar) as A15_Score,cast(sum(A16_Score) as varchar) as A16_Score,'''+floattostr(Score_Avg)+''' as 幕僚部門 ');
  QKpi_Factory_M.SQL.Add(' from (');
  QKpi_Factory_M.SQL.Add('Select YM,''01量產加權'' as ITEM, sum(A2_Score)*0.5 as A2_Score,sum(A3_Score)*0.5 as A3_Score,sum(A7_Score)*0.5 as A7_Score,sum(A8_Score)*0.5 as A8_Score,sum(A9_Score)*0.5 as A9_Score,');
  QKpi_Factory_M.SQL.Add(' sum(A11_Score)*0.5 as A11_Score,sum(A12_Score)*0.5 as A12_Score,sum(A15_Score)*0.5 as A15_Score,sum(A16_Score)*0.5 as A16_Score ');
  QKpi_Factory_M.SQL.Add(' from [LIY_TYXUAN].dbo.KPI_Factory ');
  QKpi_Factory_M.SQL.Add(' where YM = '''+trim(Ed_YM_M.Text)+''' ');
  QKpi_Factory_M.SQL.Add(' and Item like ''01%'' ');
  QKpi_Factory_M.SQL.Add(' group by YM ');
  QKpi_Factory_M.SQL.Add(' Union ');
  QKpi_Factory_M.SQL.Add('Select YM,''02品質分數加權'' as ITEM, sum(A2_Score)*0.5 as A2_Score,sum(A3_Score)*0.5 as A3_Score,sum(A7_Score)*0.5 as A7_Score,sum(A8_Score)*0.5 as A8_Score,sum(A9_Score)*0.5 as A9_Score,');
  QKpi_Factory_M.SQL.Add(' sum(A11_Score)*0.5 as A11_Score,sum(A12_Score)*0.5 as A12_Score,sum(A15_Score)*0.5 as A15_Score,sum(A16_Score)*0.5 as A16_Score ');
  QKpi_Factory_M.SQL.Add(' from [LIY_TYXUAN].dbo.KPI_Factory ');
  QKpi_Factory_M.SQL.Add(' where YM = '''+trim(Ed_YM_M.Text)+''' ');
  QKpi_Factory_M.SQL.Add(' and Item like ''00%'' ');
  QKpi_Factory_M.SQL.Add(' group by YM ');
  QKpi_Factory_M.SQL.Add(' Union ');
  QKpi_Factory_M.SQL.Add('Select YM,''04加減分項目'' as ITEM, sum(A2_Score) as A2_Score,sum(A3_Score) as A3_Score,sum(A7_Score) as A7_Score,sum(A8_Score) as A8_Score,sum(A9_Score) as A9_Score,');
  QKpi_Factory_M.SQL.Add(' sum(A11_Score) as A11_Score,sum(A12_Score) as A12_Score,sum(A15_Score) as A15_Score,sum(A16_Score) as A16_Score ');
  QKpi_Factory_M.SQL.Add(' from [LIY_TYXUAN].dbo.KPI_Factory ');
  QKpi_Factory_M.SQL.Add(' where YM = '''+trim(Ed_YM_M.Text)+''' ');
  QKpi_Factory_M.SQL.Add(' and (Item like ''02%'' or Item like ''03%'') ');
  QKpi_Factory_M.SQL.Add(' group by YM ');
  QKpi_Factory_M.SQL.Add(' ) KPI_Factory');
  QKpi_Factory_M.SQL.Add(' group by YM ');

  QKpi_Factory_M.SQL.Add(' Union ');

  QKpi_Factory_M.SQL.Add('Select '''+trim(Ed_YM_M.Text)+''' as YM,''07排名'' as ITEM, '''+A2+''' as A2_Score,'''+A3+''' as A3_Score,'''+A7+''' as A7_Score,'''+A8+''' as A8_Score,'''+A9+''' as A9_Score,');
  QKpi_Factory_M.SQL.Add(' '''+A11+''' as A11_Score,'''+A12+''' as A12_Score,'''+A15+''' as A15_Score,'''+A16+''' as A16_Score,Null as 幕僚部門');
  QKpi_Factory_M.SQL.Add(' from [LIY_TYXUAN].dbo.KPI_Factory');
  QKpi_Factory_M.SQL.Add(' group by YM');

  QKpi_Factory_M.SQL.Add(' Union ');

  QKpi_Factory_M.SQL.Add('Select '''+trim(Ed_YM_M.Text)+''' as YM,''08 A%'' as ITEM, '''+A2_A+''' as A2_Score,'''+A3_A+''' as A3_Score,'''+A7_A+''' as A7_Score,'''+A8_A+''' as A8_Score,'''+A9_A+''' as A9_Score,');
  QKpi_Factory_M.SQL.Add(' '''+A11_A+''' as A11_Score,'''+A12_A+''' as A12_Score,'''+A15_A+''' as A15_Score,'''+A16_A+''' as A16_Score,');
  if Score_Avg >= 86 then
    QKpi_Factory_M.SQL.Add('''21% - 25%'' as 幕僚部門')
  else if Score_Avg >= 76 then
    QKpi_Factory_M.SQL.Add('''16% - 20%'' as 幕僚部門')
  else if Score_Avg >= 60 then
    QKpi_Factory_M.SQL.Add('''11% - 15%'' as 幕僚部門')
  else
    QKpi_Factory_M.SQL.Add('''10%'' as 幕僚部門');
  QKpi_Factory_M.SQL.Add(' from [LIY_TYXUAN].dbo.KPI_Factory');
  QKpi_Factory_M.SQL.Add(' group by YM');
  QKpi_Factory_M.Active := true;

//計算億達月結
  QKpi_Factory_TDM.Active := false;
  QKpi_Factory_TDM.SQL.Clear;
  QKpi_Factory_TDM.SQL.Add('select '''+trim(Ed_YM_M.Text)+''' as YM,''00外籍負責幹部'' as ITEM,''周小芳'' as TDA_Score,''周小芳'' as TDB_Score');
  QKpi_Factory_TDM.SQL.Add(' from [LIY_TYXUAN].dbo.KPI_Factory ');

  QKpi_Factory_TDM.SQL.Add('union');

  QKpi_Factory_TDM.SQL.Add('select '''+trim(Ed_YM_M.Text)+''' as YM,''01越籍負責幹部'' as ITEM,''阿全'' as TDA_Score,''阿娟'' as TDB_Score ');
  QKpi_Factory_TDM.SQL.Add(' from [LIY_TYXUAN].dbo.KPI_Factory ');

  QKpi_Factory_TDM.SQL.Add('union');

  QKpi_Factory_TDM.SQL.Add('Select YM,''02量產加權'' as ITEM, cast(sum(TDA_Score) as varchar) as TDA_Score,cast(sum(TDB_Score) as varchar) as TDB_Score');
  QKpi_Factory_TDM.SQL.Add(' from [LIY_TYXUAN].dbo.KPI_Factory ');
  QKpi_Factory_TDM.SQL.Add(' where YM = '''+trim(Ed_YM_M.Text)+''' ');
  QKpi_Factory_TDM.SQL.Add(' and Item like ''01%'' ');
  QKpi_Factory_TDM.SQL.Add(' group by YM ');

  QKpi_Factory_TDM.SQL.Add(' Union ');

  QKpi_Factory_TDM.SQL.Add('Select YM,''03品質分數加權'' as ITEM, cast(sum(TDA_Score) as varchar) as TDA_Score,cast(sum(TDB_Score) as varchar) as TDB_Score');
  QKpi_Factory_TDM.SQL.Add(' from [LIY_TYXUAN].dbo.KPI_Factory ');
  QKpi_Factory_TDM.SQL.Add(' where YM = '''+trim(Ed_YM_M.Text)+''' ');
  QKpi_Factory_TDM.SQL.Add(' and Item like ''00%'' ');
  QKpi_Factory_TDM.SQL.Add(' group by YM ');

  QKpi_Factory_TDM.SQL.Add(' Union ');

  QKpi_Factory_TDM.SQL.Add('Select YM,''04不含加減分KPI'' as ITEM, cast(sum(TDA_Score) as varchar) as TDA_Score,cast(sum(TDB_Score) as varchar) as TDB_Score');
  QKpi_Factory_TDM.SQL.Add(' from (');
  QKpi_Factory_TDM.SQL.Add('Select YM,''01量產加權'' as ITEM, sum(TDA_Score) as TDA_Score,sum(TDB_Score) as TDB_Score');
  QKpi_Factory_TDM.SQL.Add(' from [LIY_TYXUAN].dbo.KPI_Factory ');
  QKpi_Factory_TDM.SQL.Add(' where YM = '''+trim(Ed_YM_M.Text)+''' ');
  QKpi_Factory_TDM.SQL.Add(' and Item like ''01%'' ');
  QKpi_Factory_TDM.SQL.Add(' group by YM ');
  QKpi_Factory_TDM.SQL.Add(' Union ');
  QKpi_Factory_TDM.SQL.Add('Select YM,''02品質分數加權'' as ITEM, sum(TDA_Score) as TDA_Score,sum(TDB_Score) as TDB_Score');
  QKpi_Factory_TDM.SQL.Add(' from [LIY_TYXUAN].dbo.KPI_Factory ');
  QKpi_Factory_TDM.SQL.Add(' where YM = '''+trim(Ed_YM_M.Text)+''' ');
  QKpi_Factory_TDM.SQL.Add(' and Item like ''00%'' ');
  QKpi_Factory_TDM.SQL.Add(' group by YM ');
  QKpi_Factory_TDM.SQL.Add(' ) KPI_Factory');
  QKpi_Factory_TDM.SQL.Add(' group by YM ');

  QKpi_Factory_TDM.SQL.Add(' Union ');

  QKpi_Factory_TDM.SQL.Add('Select YM,''05加減分項目'' as ITEM, cast(sum(TDA_Score) as varchar) as TDA_Score,cast(sum(TDB_Score) as varchar) as TDB_Score');
  QKpi_Factory_TDM.SQL.Add(' from [LIY_TYXUAN].dbo.KPI_Factory ');
  QKpi_Factory_TDM.SQL.Add(' where YM = '''+trim(Ed_YM_M.Text)+''' ');
  QKpi_Factory_TDM.SQL.Add(' and (Item like ''02%'' or Item like ''03%'') ');
  QKpi_Factory_TDM.SQL.Add(' group by YM ');

  QKpi_Factory_TDM.SQL.Add(' Union ');

  QKpi_Factory_TDM.SQL.Add('Select YM,''06KPI總分'' as ITEM, cast(sum(TDA_Score) as varchar) as TDA_Score,cast(sum(TDB_Score) as varchar) as TDB_Score');
  QKpi_Factory_TDM.SQL.Add(' from (');
  QKpi_Factory_TDM.SQL.Add('Select YM,''01量產加權'' as ITEM, sum(TDA_Score) as TDA_Score,sum(TDB_Score) as TDB_Score');
  QKpi_Factory_TDM.SQL.Add(' from [LIY_TYXUAN].dbo.KPI_Factory ');
  QKpi_Factory_TDM.SQL.Add(' where YM = '''+trim(Ed_YM_M.Text)+''' ');
  QKpi_Factory_TDM.SQL.Add(' and Item like ''01%'' ');
  QKpi_Factory_TDM.SQL.Add(' group by YM ');
  QKpi_Factory_TDM.SQL.Add(' Union ');
  QKpi_Factory_TDM.SQL.Add('Select YM,''02品質分數加權'' as ITEM, sum(TDA_Score) as TDA_Score,sum(TDB_Score) as TDB_Score');
  QKpi_Factory_TDM.SQL.Add(' from [LIY_TYXUAN].dbo.KPI_Factory ');
  QKpi_Factory_TDM.SQL.Add(' where YM = '''+trim(Ed_YM_M.Text)+''' ');
  QKpi_Factory_TDM.SQL.Add(' and Item like ''00%'' ');
  QKpi_Factory_TDM.SQL.Add(' group by YM ');
  QKpi_Factory_TDM.SQL.Add(' Union ');
  QKpi_Factory_TDM.SQL.Add('Select YM,''04加減分項目'' as ITEM, sum(TDA_Score) as TDA_Score,sum(TDB_Score) as TDB_Score');
  QKpi_Factory_TDM.SQL.Add(' from [LIY_TYXUAN].dbo.KPI_Factory ');
  QKpi_Factory_TDM.SQL.Add(' where YM = '''+trim(Ed_YM_M.Text)+''' ');
  QKpi_Factory_TDM.SQL.Add(' and (Item like ''02%'' or Item like ''03%'') ');
  QKpi_Factory_TDM.SQL.Add(' group by YM ');
  QKpi_Factory_TDM.SQL.Add(' ) KPI_Factory');
  QKpi_Factory_TDM.SQL.Add(' group by YM ');

  QKpi_Factory_TDM.SQL.Add(' Union ');

  QKpi_Factory_TDM.SQL.Add('Select '''+trim(Ed_YM_M.Text)+''' as YM,''07排名'' as ITEM, '''+TDA+''' as TDA_Score,'''+TDB+''' as TDB_Score');
  QKpi_Factory_TDM.SQL.Add(' from [LIY_TYXUAN].dbo.KPI_Factory');
  QKpi_Factory_TDM.SQL.Add(' group by YM');

  QKpi_Factory_TDM.SQL.Add(' Union ');

  QKpi_Factory_TDM.SQL.Add('Select '''+trim(Ed_YM_M.Text)+''' as YM,''08 A%'' as ITEM, '''+TDA_A+''' as TDA_Score,'''+TDB_A+''' as TDB_Score');
  QKpi_Factory_TDM.SQL.Add(' from [LIY_TYXUAN].dbo.KPI_Factory');
  QKpi_Factory_TDM.SQL.Add(' group by YM');
  QKpi_Factory_TDM.Active := true;
end;

procedure TKPI_Factory.DBGridEh2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if QKpi_Factory_M2.FieldByName('Sort_1').Value <= 3 then
    DBGridEh2.Canvas.Font.Color := clMenuHighlight
  else if QKpi_Factory_M2.FieldByName('Sort_1').Value >= 7 then
    DBGridEh2.Canvas.Font.Color := clRed
  else
    DBGridEh2.Canvas.Font.Color:=clBlack;
  if DataCol = 2 then
     DBGridEh2.DefaultDrawColumnCell(Rect,DataCol,Column,State);

  if QKpi_Factory_M2.FieldByName('Sort_2').Value <= 3 then
    DBGridEh2.Canvas.Font.Color := clMenuHighlight
  else if QKpi_Factory_M2.FieldByName('Sort_2').Value >= 7 then
    DBGridEh2.Canvas.Font.Color := clRed
  else
    DBGridEh2.Canvas.Font.Color:=clBlack;
  if DataCol = 4 then
     DBGridEh2.DefaultDrawColumnCell(Rect,DataCol,Column,State);

  if QKpi_Factory_M2.FieldByName('Sort_3').Value <= 3 then
    DBGridEh2.Canvas.Font.Color := clMenuHighlight
  else if QKpi_Factory_M2.FieldByName('Sort_3').Value >= 7 then
    DBGridEh2.Canvas.Font.Color := clRed
  else
    DBGridEh2.Canvas.Font.Color:=clBlack;
  if DataCol = 6 then
     DBGridEh2.DefaultDrawColumnCell(Rect,DataCol,Column,State);

  if QKpi_Factory_M2.FieldByName('Sort_4').Value <= 3 then
    DBGridEh2.Canvas.Font.Color := clMenuHighlight
  else if QKpi_Factory_M2.FieldByName('Sort_4').Value >= 7 then
    DBGridEh2.Canvas.Font.Color := clRed
  else
    DBGridEh2.Canvas.Font.Color:=clBlack;
  if DataCol = 8 then
     DBGridEh2.DefaultDrawColumnCell(Rect,DataCol,Column,State);

  if QKpi_Factory_M2.FieldByName('Sort_5').Value <= 3 then
    DBGridEh2.Canvas.Font.Color := clMenuHighlight
  else if QKpi_Factory_M2.FieldByName('Sort_5').Value >= 7 then
    DBGridEh2.Canvas.Font.Color := clRed
  else
    DBGridEh2.Canvas.Font.Color:=clBlack;
  if DataCol = 10 then
     DBGridEh2.DefaultDrawColumnCell(Rect,DataCol,Column,State);

  if QKpi_Factory_M2.FieldByName('Sort_6').Value <= 3 then
    DBGridEh2.Canvas.Font.Color := clMenuHighlight
  else if QKpi_Factory_M2.FieldByName('Sort_6').Value >= 7 then
    DBGridEh2.Canvas.Font.Color := clRed
  else
    DBGridEh2.Canvas.Font.Color:=clBlack;
  if DataCol = 12 then
     DBGridEh2.DefaultDrawColumnCell(Rect,DataCol,Column,State);

  if QKpi_Factory_M2.FieldByName('Sort_avg').Value <= 3 then
    DBGridEh2.Canvas.Font.Color := clMenuHighlight
  else if QKpi_Factory_M2.FieldByName('Sort_avg').Value >= 7 then
    DBGridEh2.Canvas.Font.Color := clRed
  else
    DBGridEh2.Canvas.Font.Color:=clBlack;
  if DataCol = 26 then
     DBGridEh2.DefaultDrawColumnCell(Rect,DataCol,Column,State);
end;

procedure TKPI_Factory.DBGridEh6DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
    if (DataCol = 5) or (DataCol = 7) or (DataCol = 9) or (DataCol = 11) or (DataCol = 13) or (DataCol = 15) or (DataCol = 17) or (DataCol = 19) or (DataCol = 21) or (DataCol = 23) or (DataCol = 25) then begin
      DBGridEh6.Canvas.Font.Color := clFuchsia;
      DBGridEh6.DefaultDrawColumnCell(Rect,DataCol,Column,State);
    end;

    if (copy(QKpi_Factory.FieldByName('Item').AsString,1,2) = '00')
      then
    begin
      DBGridEh6.Canvas.Font.Color := clBlack;
      DBGridEh6.DefaultDrawColumnCell(Rect,DataCol,Column,State);
    end;

    if (copy(QKpi_Factory.FieldByName('Item').AsString,1,3) = '021') or
       (copy(QKpi_Factory.FieldByName('Item').AsString,1,3) = '022') or
       (copy(QKpi_Factory.FieldByName('Item').AsString,1,3) = '023') or
       (copy(QKpi_Factory.FieldByName('Item').AsString,1,3) = '024') or
       (copy(QKpi_Factory.FieldByName('Item').AsString,1,3) = '025')
      then
    begin
      DBGridEh6.Canvas.Font.Color := clRed;
      DBGridEh6.DefaultDrawColumnCell(Rect,DataCol,Column,State);
    end;

    DBGridEh6.canvas.Brush.Color:=RGB(208,206,206);
    if (DataCol = 4) or (DataCol = 6) or (DataCol = 8) or (DataCol = 10) or (DataCol = 12) or (DataCol = 14) or (DataCol = 16) or (DataCol = 18) or (DataCol = 20) or (DataCol = 22) or (DataCol = 24) then
       DBGridEh6.DefaultDrawColumnCell(Rect,DataCol,Column,State);

    if (copy(QKpi_Factory.FieldByName('Item').AsString,1,3) = '010') or
       (copy(QKpi_Factory.FieldByName('Item').AsString,1,3) = '020') or
       (copy(QKpi_Factory.FieldByName('Item').AsString,1,3) = '030')
      then
    begin
      DBGridEh6.Canvas.Font.Color := clWhite;
      DBGridEh6.canvas.Brush.Color:=RGB(116,113,111);
      DBGridEh6.DefaultDrawColumnCell(Rect,DataCol,Column,State);
    end;

end;

procedure TKPI_Factory.Button5Click(Sender: TObject);
var i,j,k,j1: Integer;   //j = 資料總筆數  j1 = 億達筆數 因2023年KPI啟用時間不一樣
    A2,A3,A7,A8,A9,A11,A12,A15,A16,Score: String;
    A2_A,A3_A,A7_A,A8_A,A9_A,A11_A,A12_A,A15_A,A16_A,Score_A: String;
    Score_Avg : Currency;
begin
  if (trim(Ed_YM_M2.Text) = '') then begin
    showmessage('Please Keyin YM !');
    exit;
  end;

  Qtemp.Active := false;
  Qtemp.SQL.Clear;
  Qtemp.SQL.Add('Select count(distinct YM) from [LIY_TYXUAN].dbo.KPI_Factory_M2 ');
  if RG1.ItemIndex = 0 then
    Qtemp.SQL.Add(' where YM >= '''+trim(Ed_YM_M2.Text)+'01'' and YM <= '''+trim(Ed_YM_M2.Text)+'06''')
  else if RG1.ItemIndex = 1 then
    Qtemp.SQL.Add(' where YM >= '''+trim(Ed_YM_M2.Text)+'07'' and YM <= '''+trim(Ed_YM_M2.Text)+'12''')
  else
    Qtemp.SQL.Add(' where YM like '''+trim(Ed_YM_M2.Text)+'%'' ');
  Qtemp.Active := true;
  if Qtemp.Fields[0].Value = 0 then begin
    showmessage('There is no data!');
    exit;
  end;
  j := Qtemp.Fields[0].Value;

  Qtemp.Active := false;
  Qtemp.SQL.Clear;
  Qtemp.SQL.Add('if object_id(N''tempdb..#Factory_M2'') is not null  ');
  Qtemp.SQL.Add('begin  ');
  Qtemp.SQL.Add('  drop table #Factory_M2 ');
  Qtemp.SQL.Add('end  ');
  Qtemp.SQL.Add('create table #Factory_M2(  ');
  Qtemp.SQL.Add('  Factory VarCHAR(6), ');
  Qtemp.SQL.Add('  Score_1 Float null, ');
  Qtemp.SQL.Add('  Sort_1 integer null, ');
  Qtemp.SQL.Add('  Score_2 Float null, ');
  Qtemp.SQL.Add('  Sort_2 integer null, ');
  Qtemp.SQL.Add('  Score_3 Float null, ');
  Qtemp.SQL.Add('  Sort_3 integer null, ');
  Qtemp.SQL.Add('  Score_4 Float null, ');
  Qtemp.SQL.Add('  Sort_4 integer null, ');
  Qtemp.SQL.Add('  Score_5 Float null, ');
  Qtemp.SQL.Add('  Sort_5 integer null, ');
  Qtemp.SQL.Add('  Score_6 Float null, ');
  Qtemp.SQL.Add('  Sort_6 integer null, ');
  Qtemp.SQL.Add('  Score_avg Float null, ');
  Qtemp.SQL.Add('  Sort_avg integer null,');
  Qtemp.SQL.Add('  Score_7 Float null, ');
  Qtemp.SQL.Add('  Sort_7 integer null, ');
  Qtemp.SQL.Add('  Score_8 Float null, ');
  Qtemp.SQL.Add('  Sort_8 integer null, ');
  Qtemp.SQL.Add('  Score_9 Float null, ');
  Qtemp.SQL.Add('  Sort_9 integer null, ');
  Qtemp.SQL.Add('  Score_10 Float null, ');
  Qtemp.SQL.Add('  Sort_10 integer null, ');
  Qtemp.SQL.Add('  Score_11 Float null, ');
  Qtemp.SQL.Add('  Sort_11 integer null, ');
  Qtemp.SQL.Add('  Score_12 Float null, ');
  Qtemp.SQL.Add('  Sort_12 integer null ');
  Qtemp.SQL.Add(')   ');
  Qtemp.ExecSQL;
// 計算分數
  for i := 1 to 11 do begin
    Qtemp.Active := false;
    Qtemp.SQL.Clear;
    Qtemp.SQL.Add('Select YM,Factory,Score5 ');
    Qtemp.SQL.Add(' from [LIY_TYXUAN].dbo.KPI_Factory_M2 ');
    if RG1.ItemIndex = 0 then
      Qtemp.SQL.Add(' where YM >= '''+trim(Ed_YM_M2.Text)+'01'' and YM <= '''+trim(Ed_YM_M2.Text)+'06''')
    else if RG1.ItemIndex = 1 then
      Qtemp.SQL.Add(' where YM >= '''+trim(Ed_YM_M2.Text)+'07'' and YM <= '''+trim(Ed_YM_M2.Text)+'12''')
    else
      Qtemp.SQL.Add(' where YM like '''+trim(Ed_YM_M2.Text)+'%'' ');

    if i = 1 then
      Qtemp.SQL.Add(' and Factory = ''A02''')
    else if i = 2 then
      Qtemp.SQL.Add(' and Factory = ''A03''')
    else if i = 3 then
      Qtemp.SQL.Add(' and Factory = ''A07''')
    else if i = 4 then
      Qtemp.SQL.Add(' and Factory = ''A08''')
    else if i = 5 then
      Qtemp.SQL.Add(' and Factory = ''A09''')
    else if i = 6 then
      Qtemp.SQL.Add(' and Factory = ''A11''')
    else if i = 7 then
      Qtemp.SQL.Add(' and Factory = ''A12''')
    else if i = 8 then
      Qtemp.SQL.Add(' and Factory = ''A15''')
    else if i = 9 then
      Qtemp.SQL.Add(' and Factory = ''A16''')
    else if i = 10 then
      Qtemp.SQL.Add(' and Factory = ''TDA''')
    else if i = 11 then
      Qtemp.SQL.Add(' and Factory = ''TDB''');
    Qtemp.SQL.Add(' order by YM');
    Qtemp.Active := true;
    j1 := 0;  //只針對2023年億達筆數處理
    Qtemp1.Active := false;
    Qtemp1.SQL.Clear;
    if RG1.ItemIndex <> 2 then
      Qtemp1.SQL.Add('Insert into #Factory_M2 (Factory ,Score_1 ,Score_2 ,Score_3 ,Score_4 ,Score_5 ,Score_6 ,Score_Avg )')
    else
      Qtemp1.SQL.Add('Insert into #Factory_M2 (Factory ,Score_1 ,Score_2 ,Score_3 ,Score_4 ,Score_5 ,Score_6 ,Score_7 ,Score_8 ,Score_9 ,Score_10 ,Score_11 ,Score_12 ,Score_Avg )');
    Qtemp1.SQL.Add('Values ('''+Qtemp.Fieldbyname('Factory').AsString+''' ,'+Qtemp.Fieldbyname('Score5').AsString+' ');
    if (i >= 10) and (Qtemp.Fieldbyname('Score5').Value > 0) then
      j1 := 1;
    Score_Avg := Qtemp.Fieldbyname('Score5').Value;
    for k := 2 to j do begin
      Qtemp.Next;
      Qtemp1.SQL.Add(','+Qtemp.Fieldbyname('Score5').AsString+'');
      Score_Avg := Score_Avg + Qtemp.Fieldbyname('Score5').Value;
      if (i >= 10) and (Qtemp.Fieldbyname('Score5').Value > 0) then
        j1 := j1 + 1;
    end;
    if i >= 10 then
      if j1 <> 0 then
        Score_Avg := SimpleRoundTo(Score_Avg / j1)
      else
        Score_Avg := 0
    else
      Score_Avg := SimpleRoundTo(Score_Avg / j);
    if RG1.ItemIndex = 2 then begin
      if j = 12 then
        Qtemp1.SQL.Add(','+floattostr(Score_Avg)+'')
      else if j = 11 then
        Qtemp1.SQL.Add(',NULL,'+floattostr(Score_Avg)+'')
      else if j = 10 then
        Qtemp1.SQL.Add(',NULL,NULL,'+floattostr(Score_Avg)+'')
      else if j = 9 then
        Qtemp1.SQL.Add(',NULL,NULL,NULL,'+floattostr(Score_Avg)+'')
      else if j = 8 then
        Qtemp1.SQL.Add(',NULL,NULL,NULL,NULL,'+floattostr(Score_Avg)+'')
      else if j = 7 then
        Qtemp1.SQL.Add(',NULL,NULL,NULL,NULL,NULL,'+floattostr(Score_Avg)+'')
      else if j = 6 then
        Qtemp1.SQL.Add(',NULL,NULL,NULL,NULL,NULL,NULL,'+floattostr(Score_Avg)+'')
      else if j = 5 then
        Qtemp1.SQL.Add(',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'+floattostr(Score_Avg)+'')
      else if j = 4 then
        Qtemp1.SQL.Add(',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'+floattostr(Score_Avg)+'')
      else if j = 3 then
        Qtemp1.SQL.Add(',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'+floattostr(Score_Avg)+'')
      else if j = 2 then
        Qtemp1.SQL.Add(',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'+floattostr(Score_Avg)+'')
      else if j = 1 then
        Qtemp1.SQL.Add(',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'+floattostr(Score_Avg)+'');
    end
    else begin
      if j = 6 then
        Qtemp1.SQL.Add(','+floattostr(Score_Avg)+'')
      else if j = 5 then
        Qtemp1.SQL.Add(',NULL,'+floattostr(Score_Avg)+'')
      else if j = 4 then
        Qtemp1.SQL.Add(',NULL,NULL,'+floattostr(Score_Avg)+'')
      else if j = 3 then
        Qtemp1.SQL.Add(',NULL,NULL,NULL,'+floattostr(Score_Avg)+'')
      else if j = 2 then
        Qtemp1.SQL.Add(',NULL,NULL,NULL,NULL,'+floattostr(Score_Avg)+'')
      else if j = 1 then
        Qtemp1.SQL.Add(',NULL,NULL,NULL,NULL,NULL,'+floattostr(Score_Avg)+'');
    end;
    Qtemp1.SQL.Add(')');
    Qtemp1.ExecSQL;
  end;

// 計算工廠排名
  for k := 1 to j do begin
    Qtemp.Active := false;
    Qtemp.SQL.Clear;
    if k = 1 then begin
      Qtemp.SQL.Add('select Factory,Score_1 from #Factory_M2 where Factory not like ''TD%'' and Score_1 <> 0 order by Score_1 desc');
      Qtemp.Active := true;
      i := 1;
      while not Qtemp.Eof do begin
        Qtemp1.Active := false;
        Qtemp1.SQL.Clear;
        Qtemp1.SQL.Add('Update #Factory_M2 set sort_1 = '+inttostr(i)+' where Factory = '''+Qtemp.Fieldbyname('Factory').AsString+'''');
        Qtemp1.ExecSQL;
        i := i + 1;
        Qtemp.Next;
      end;
    end
    else if k = 2 then begin
      Qtemp.SQL.Add('select Factory,Score_2 from #Factory_M2 where Factory not like ''TD%'' and Score_2 <> 0 order by Score_2 desc');
      Qtemp.Active := true;
      i := 1;
      while not Qtemp.Eof do begin
        Qtemp1.Active := false;
        Qtemp1.SQL.Clear;
        Qtemp1.SQL.Add('Update #Factory_M2 set sort_2 = '+inttostr(i)+' where Factory = '''+Qtemp.Fieldbyname('Factory').AsString+'''');
        Qtemp1.ExecSQL;
        i := i + 1;
        Qtemp.Next;
      end;
    end
    else if k = 3 then begin
      Qtemp.SQL.Add('select Factory,Score_3 from #Factory_M2 where Factory not like ''TD%'' and Score_3 <> 0 order by Score_3 desc');
      Qtemp.Active := true;
      i := 1;
      while not Qtemp.Eof do begin
        Qtemp1.Active := false;
        Qtemp1.SQL.Clear;
        Qtemp1.SQL.Add('Update #Factory_M2 set sort_3 = '+inttostr(i)+' where Factory = '''+Qtemp.Fieldbyname('Factory').AsString+'''');
        Qtemp1.ExecSQL;
        i := i + 1;
        Qtemp.Next;
      end;
    end
    else if k = 4 then begin
      Qtemp.SQL.Add('select Factory,Score_4 from #Factory_M2 where Factory not like ''TD%'' and Score_4 <> 0 order by Score_4 desc');
      Qtemp.Active := true;
      i := 1;
      while not Qtemp.Eof do begin
        Qtemp1.Active := false;
        Qtemp1.SQL.Clear;
        Qtemp1.SQL.Add('Update #Factory_M2 set sort_4 = '+inttostr(i)+' where Factory = '''+Qtemp.Fieldbyname('Factory').AsString+'''');
        Qtemp1.ExecSQL;
        i := i + 1;
        Qtemp.Next;
      end;
    end
    else if k = 5 then begin
      Qtemp.SQL.Add('select Factory,Score_5 from #Factory_M2 where Factory not like ''TD%'' and Score_5 <> 0 order by Score_5 desc');
      Qtemp.Active := true;
      i := 1;
      while not Qtemp.Eof do begin
        Qtemp1.Active := false;
        Qtemp1.SQL.Clear;
        Qtemp1.SQL.Add('Update #Factory_M2 set sort_5 = '+inttostr(i)+' where Factory = '''+Qtemp.Fieldbyname('Factory').AsString+'''');
        Qtemp1.ExecSQL;
        i := i + 1;
        Qtemp.Next;
      end;
    end
    else if k = 6 then begin
      Qtemp.SQL.Add('select Factory,Score_6 from #Factory_M2 where Factory not like ''TD%'' and Score_6 <> 0 order by Score_6 desc');
      Qtemp.Active := true;
      i := 1;
      while not Qtemp.Eof do begin
        Qtemp1.Active := false;
        Qtemp1.SQL.Clear;
        Qtemp1.SQL.Add('Update #Factory_M2 set sort_6 = '+inttostr(i)+' where Factory = '''+Qtemp.Fieldbyname('Factory').AsString+'''');
        Qtemp1.ExecSQL;
        i := i + 1;
        Qtemp.Next;
      end;
    end
    else if k = 7 then begin
      Qtemp.SQL.Add('select Factory,Score_7 from #Factory_M2 where Factory not like ''TD%'' and Score_7 <> 0 order by Score_7 desc');
      Qtemp.Active := true;
      i := 1;
      while not Qtemp.Eof do begin
        Qtemp1.Active := false;
        Qtemp1.SQL.Clear;
        Qtemp1.SQL.Add('Update #Factory_M2 set sort_7 = '+inttostr(i)+' where Factory = '''+Qtemp.Fieldbyname('Factory').AsString+'''');
        Qtemp1.ExecSQL;
        i := i + 1;
        Qtemp.Next;
      end;
    end
    else if k = 8 then begin
      Qtemp.SQL.Add('select Factory,Score_8 from #Factory_M2 where Factory not like ''TD%'' and Score_8 <> 0 order by Score_8 desc');
      Qtemp.Active := true;
      i := 1;
      while not Qtemp.Eof do begin
        Qtemp1.Active := false;
        Qtemp1.SQL.Clear;
        Qtemp1.SQL.Add('Update #Factory_M2 set Score_8 = '+inttostr(i)+' where Factory = '''+Qtemp.Fieldbyname('Factory').AsString+'''');
        Qtemp1.ExecSQL;
        i := i + 1;
        Qtemp.Next;
      end;
    end
    else if k = 9 then begin
      Qtemp.SQL.Add('select Factory,Score_9 from #Factory_M2 where Factory not like ''TD%'' and Score_9 <> 0 order by Score_9 desc');
      Qtemp.Active := true;
      i := 1;
      while not Qtemp.Eof do begin
        Qtemp1.Active := false;
        Qtemp1.SQL.Clear;
        Qtemp1.SQL.Add('Update #Factory_M2 set Score_9 = '+inttostr(i)+' where Factory = '''+Qtemp.Fieldbyname('Factory').AsString+'''');
        Qtemp1.ExecSQL;
        i := i + 1;
        Qtemp.Next;
      end;
    end
    else if k = 10 then begin
      Qtemp.SQL.Add('select Factory,Score_10 from #Factory_M2 where Factory not like ''TD%'' and Score_10 <> 0 order by Score_10 desc');
      Qtemp.Active := true;
      i := 1;
      while not Qtemp.Eof do begin
        Qtemp1.Active := false;
        Qtemp1.SQL.Clear;
        Qtemp1.SQL.Add('Update #Factory_M2 set Score_10 = '+inttostr(i)+' where Factory = '''+Qtemp.Fieldbyname('Factory').AsString+'''');
        Qtemp1.ExecSQL;
        i := i + 1;
        Qtemp.Next;
      end;
    end
    else if k = 11 then begin
      Qtemp.SQL.Add('select Factory,Score_11 from #Factory_M2 where Factory not like ''TD%'' and Score_11 <> 0 order by Score_11 desc');
      Qtemp.Active := true;
      i := 1;
      while not Qtemp.Eof do begin
        Qtemp1.Active := false;
        Qtemp1.SQL.Clear;
        Qtemp1.SQL.Add('Update #Factory_M2 set Score_11 = '+inttostr(i)+' where Factory = '''+Qtemp.Fieldbyname('Factory').AsString+'''');
        Qtemp1.ExecSQL;
        i := i + 1;
        Qtemp.Next;
      end;
    end
    else if k = 12 then begin
      Qtemp.SQL.Add('select Factory,Score_12 from #Factory_M2 where Factory not like ''TD%'' and Score_12 <> 0 order by Score_12 desc');
      Qtemp.Active := true;
      i := 1;
      while not Qtemp.Eof do begin
        Qtemp1.Active := false;
        Qtemp1.SQL.Clear;
        Qtemp1.SQL.Add('Update #Factory_M2 set Score_12 = '+inttostr(i)+' where Factory = '''+Qtemp.Fieldbyname('Factory').AsString+'''');
        Qtemp1.ExecSQL;
        i := i + 1;
        Qtemp.Next;
      end;
    end;
  end;

  Qtemp.Active := false;
  Qtemp.SQL.Clear;
  Qtemp.SQL.Add('select Factory,Score_Avg from #Factory_M2 where Factory not like ''TD%'' order by Score_Avg desc');
  Qtemp.Active := true;
  i := 1;
  while not Qtemp.Eof do begin
    Qtemp1.Active := false;
    Qtemp1.SQL.Clear;
    Qtemp1.SQL.Add('Update #Factory_M2 set sort_Avg = '+inttostr(i)+' where Factory = '''+Qtemp.Fieldbyname('Factory').AsString+'''');
    Qtemp1.ExecSQL;
    i := i + 1;
    Qtemp.Next;
  end;

//計算億達排名
  for k := 1 to j do begin
    Qtemp.Active := false;
    Qtemp.SQL.Clear;
    if k = 1 then begin
      Qtemp.SQL.Add('select Factory,Score_1 from #Factory_M2 where Factory like ''TD%'' order by Score_1 desc');
      Qtemp.Active := true;
      if Qtemp.FieldByName('Score_1').Value = 0 then
        i := 0
      else
        i := 1;
      while not Qtemp.Eof do begin
        Qtemp1.Active := false;
        Qtemp1.SQL.Clear;
        Qtemp1.SQL.Add('Update #Factory_M2 set sort_1 = '+inttostr(i)+' where Factory = '''+Qtemp.Fieldbyname('Factory').AsString+'''');
        Qtemp1.ExecSQL;
        if Qtemp.FieldByName('Score_1').Value <> 0 then
          i := i + 1;
        Qtemp.Next;
      end;
    end
    else if k = 2 then begin
      Qtemp.SQL.Add('select Factory,Score_2 from #Factory_M2 where Factory like ''TD%'' order by Score_2 desc');
      Qtemp.Active := true;
      if Qtemp.FieldByName('Score_2').Value = 0 then
        i := 0
      else
        i := 1;
      while not Qtemp.Eof do begin
        Qtemp1.Active := false;
        Qtemp1.SQL.Clear;
        Qtemp1.SQL.Add('Update #Factory_M2 set sort_2 = '+inttostr(i)+' where Factory = '''+Qtemp.Fieldbyname('Factory').AsString+'''');
        Qtemp1.ExecSQL;
        if Qtemp.FieldByName('Score_2').Value <> 0 then
          i := i + 1;
        Qtemp.Next;
      end;
    end
    else if k = 3 then begin
      Qtemp.SQL.Add('select Factory,Score_3 from #Factory_M2 where Factory like ''TD%'' order by Score_3 desc');
      Qtemp.Active := true;
      if Qtemp.FieldByName('Score_3').Value = 0 then
        i := 0
      else
        i := 1;
      while not Qtemp.Eof do begin
        Qtemp1.Active := false;
        Qtemp1.SQL.Clear;
        Qtemp1.SQL.Add('Update #Factory_M2 set sort_3 = '+inttostr(i)+' where Factory = '''+Qtemp.Fieldbyname('Factory').AsString+'''');
        Qtemp1.ExecSQL;
        if Qtemp.FieldByName('Score_3').Value <> 0 then
          i := i + 1;
        Qtemp.Next;
      end;
    end
    else if k = 4 then begin
      Qtemp.SQL.Add('select Factory,Score_4 from #Factory_M2 where Factory like ''TD%'' order by Score_4 desc');
      Qtemp.Active := true;
      if Qtemp.FieldByName('Score_4').Value = 0 then
        i := 0
      else
        i := 1;
      while not Qtemp.Eof do begin
        Qtemp1.Active := false;
        Qtemp1.SQL.Clear;
        Qtemp1.SQL.Add('Update #Factory_M2 set sort_4 = '+inttostr(i)+' where Factory = '''+Qtemp.Fieldbyname('Factory').AsString+'''');
        Qtemp1.ExecSQL;
        if Qtemp.FieldByName('Score_4').Value <> 0 then
          i := i + 1;
        Qtemp.Next;
      end;
    end
    else if k = 5 then begin
      Qtemp.SQL.Add('select Factory,Score_5 from #Factory_M2 where Factory like ''TD%'' order by Score_5 desc');
      Qtemp.Active := true;
      if Qtemp.FieldByName('Score_5').Value = 0 then
        i := 0
      else
        i := 1;
      while not Qtemp.Eof do begin
        Qtemp1.Active := false;
        Qtemp1.SQL.Clear;
        Qtemp1.SQL.Add('Update #Factory_M2 set sort_5 = '+inttostr(i)+' where Factory = '''+Qtemp.Fieldbyname('Factory').AsString+'''');
        Qtemp1.ExecSQL;
        if Qtemp.FieldByName('Score_5').Value <> 0 then
          i := i + 1;
        Qtemp.Next;
      end;
    end
    else if k = 6 then begin
      Qtemp.SQL.Add('select Factory,Score_6 from #Factory_M2 where Factory like ''TD%'' order by Score_6 desc');
      Qtemp.Active := true;
      if Qtemp.FieldByName('Score_6').Value = 0 then
        i := 0
      else
        i := 1;
      while not Qtemp.Eof do begin
        Qtemp1.Active := false;
        Qtemp1.SQL.Clear;
        Qtemp1.SQL.Add('Update #Factory_M2 set sort_6 = '+inttostr(i)+' where Factory = '''+Qtemp.Fieldbyname('Factory').AsString+'''');
        Qtemp1.ExecSQL;
        if Qtemp.FieldByName('Score_6').Value <> 0 then
          i := i + 1;
        Qtemp.Next;
      end;
    end
    else if k = 7 then begin
      Qtemp.SQL.Add('select Factory,Score_7 from #Factory_M2 where Factory like ''TD%'' order by Score_7 desc');
      Qtemp.Active := true;
      if Qtemp.FieldByName('Score_7').Value = 0 then
        i := 0
      else
        i := 1;
      while not Qtemp.Eof do begin
        Qtemp1.Active := false;
        Qtemp1.SQL.Clear;
        Qtemp1.SQL.Add('Update #Factory_M2 set Score_7 = '+inttostr(i)+' where Factory = '''+Qtemp.Fieldbyname('Factory').AsString+'''');
        Qtemp1.ExecSQL;
        if Qtemp.FieldByName('Score_7').Value <> 0 then
          i := i + 1;
        Qtemp.Next;
      end;
    end
    else if k = 8 then begin
      Qtemp.SQL.Add('select Factory,Score_8 from #Factory_M2 where Factory like ''TD%'' order by Score_8 desc');
      Qtemp.Active := true;
      if Qtemp.FieldByName('Score_8').Value = 0 then
        i := 0
      else
        i := 1;
      while not Qtemp.Eof do begin
        Qtemp1.Active := false;
        Qtemp1.SQL.Clear;
        Qtemp1.SQL.Add('Update #Factory_M2 set Score_8 = '+inttostr(i)+' where Factory = '''+Qtemp.Fieldbyname('Factory').AsString+'''');
        Qtemp1.ExecSQL;
        if Qtemp.FieldByName('Score_8').Value <> 0 then
          i := i + 1;
        Qtemp.Next;
      end;
    end
    else if k = 9 then begin
      Qtemp.SQL.Add('select Factory,Score_9 from #Factory_M2 where Factory like ''TD%'' order by Score_9 desc');
      Qtemp.Active := true;
      if Qtemp.FieldByName('Score_9').Value = 0 then
        i := 0
      else
        i := 1;
      while not Qtemp.Eof do begin
        Qtemp1.Active := false;
        Qtemp1.SQL.Clear;
        Qtemp1.SQL.Add('Update #Factory_M2 set Score_9 = '+inttostr(i)+' where Factory = '''+Qtemp.Fieldbyname('Factory').AsString+'''');
        Qtemp1.ExecSQL;
        if Qtemp.FieldByName('Score_9').Value <> 0 then
          i := i + 1;
        Qtemp.Next;
      end;
    end
    else if k = 10 then begin
      Qtemp.SQL.Add('select Factory,Score_10 from #Factory_M2 where Factory like ''TD%'' order by Score_10 desc');
      Qtemp.Active := true;
      if Qtemp.FieldByName('Score_10').Value = 0 then
        i := 0
      else
        i := 1;
      while not Qtemp.Eof do begin
        Qtemp1.Active := false;
        Qtemp1.SQL.Clear;
        Qtemp1.SQL.Add('Update #Factory_M2 set Score_10 = '+inttostr(i)+' where Factory = '''+Qtemp.Fieldbyname('Factory').AsString+'''');
        Qtemp1.ExecSQL;
        if Qtemp.FieldByName('Score_10').Value <> 0 then
          i := i + 1;
        Qtemp.Next;
      end;
    end
    else if k = 11 then begin
      Qtemp.SQL.Add('select Factory,Score_11 from #Factory_M2 where Factory like ''TD%'' order by Score_11 desc');
      Qtemp.Active := true;
      if Qtemp.FieldByName('Score_11').Value = 0 then
        i := 0
      else
        i := 1;
      while not Qtemp.Eof do begin
        Qtemp1.Active := false;
        Qtemp1.SQL.Clear;
        Qtemp1.SQL.Add('Update #Factory_M2 set Score_11 = '+inttostr(i)+' where Factory = '''+Qtemp.Fieldbyname('Factory').AsString+'''');
        Qtemp1.ExecSQL;
        if Qtemp.FieldByName('Score_11').Value <> 0 then
          i := i + 1;
        Qtemp.Next;
      end;
    end
    else if k = 12 then begin
      Qtemp.SQL.Add('select Factory,Score_12 from #Factory_M2 where Factory like ''TD%'' order by Score_12 desc');
      Qtemp.Active := true;
      if Qtemp.FieldByName('Score_12').Value = 0 then
        i := 0
      else
        i := 1;
      while not Qtemp.Eof do begin
        Qtemp1.Active := false;
        Qtemp1.SQL.Clear;
        Qtemp1.SQL.Add('Update #Factory_M2 set Score_12 = '+inttostr(i)+' where Factory = '''+Qtemp.Fieldbyname('Factory').AsString+'''');
        Qtemp1.ExecSQL;
        if Qtemp.FieldByName('Score_12').Value <> 0 then
          i := i + 1;
        Qtemp.Next;
      end;
    end
  end;

  Qtemp.Active := false;
  Qtemp.SQL.Clear;
  Qtemp.SQL.Add('select Factory,Score_Avg from #Factory_M2 where Factory like ''TD%'' order by Score_Avg desc');
  Qtemp.Active := true;
  i := 1;
  while not Qtemp.Eof do begin
    Qtemp1.Active := false;
    Qtemp1.SQL.Clear;
    Qtemp1.SQL.Add('Update #Factory_M2 set sort_Avg = '+inttostr(i)+' where Factory = '''+Qtemp.Fieldbyname('Factory').AsString+'''');
    Qtemp1.ExecSQL;
    i := i + 1;
    Qtemp.Next;
  end;

  QKpi_Factory_M2.Active := false;
  QKpi_Factory_M2.SQL.Clear;
  QKpi_Factory_M2.SQL.Add('select * from #Factory_M2 where Factory not like ''TD%'' order by Factory');
  QKpi_Factory_M2.Active := true;

  QKpi_Factory_TDM2.Active := false;
  QKpi_Factory_TDM2.SQL.Clear;
  QKpi_Factory_TDM2.SQL.Add('select * from #Factory_M2 where Factory like ''TD%'' order by Factory');
  QKpi_Factory_TDM2.Active := true;

  if RG1.ItemIndex = 0 then begin
    DBGrideh2.Columns[1].Title.Caption := Ed_YM_M2.Text + '01';
    DBGrideh2.Columns[3].Title.Caption := Ed_YM_M2.Text + '02';
    DBGrideh2.Columns[5].Title.Caption := Ed_YM_M2.Text + '03';
    DBGrideh2.Columns[7].Title.Caption := Ed_YM_M2.Text + '04';
    DBGrideh2.Columns[9].Title.Caption := Ed_YM_M2.Text + '05';
    DBGrideh2.Columns[11].Title.Caption := Ed_YM_M2.Text + '06';
    DBGrideh5.Columns[1].Title.Caption := Ed_YM_M2.Text + '01';
    DBGrideh5.Columns[3].Title.Caption := Ed_YM_M2.Text + '02';
    DBGrideh5.Columns[5].Title.Caption := Ed_YM_M2.Text + '03';
    DBGrideh5.Columns[7].Title.Caption := Ed_YM_M2.Text + '04';
    DBGrideh5.Columns[9].Title.Caption := Ed_YM_M2.Text + '05';
    DBGrideh5.Columns[11].Title.Caption := Ed_YM_M2.Text + '06';

    DBGrideh2.Columns[7].Visible := true;
    DBGrideh2.Columns[8].Visible := true;
    DBGrideh2.Columns[9].Visible := true;
    DBGrideh2.Columns[10].Visible := true;
    DBGrideh2.Columns[11].Visible := true;
    DBGrideh2.Columns[12].Visible := true;
    DBGrideh5.Columns[7].Visible := true;
    DBGrideh5.Columns[8].Visible := true;
    DBGrideh5.Columns[9].Visible := true;
    DBGrideh5.Columns[10].Visible := true;
    DBGrideh5.Columns[11].Visible := true;
    DBGrideh5.Columns[12].Visible := true;

    DBGrideh2.Columns[13].Visible := false;
    DBGrideh2.Columns[14].Visible := false;
    DBGrideh2.Columns[15].Visible := false;
    DBGrideh2.Columns[16].Visible := false;
    DBGrideh2.Columns[17].Visible := false;
    DBGrideh2.Columns[18].Visible := false;
    DBGrideh2.Columns[19].Visible := false;
    DBGrideh2.Columns[20].Visible := false;
    DBGrideh2.Columns[21].Visible := false;
    DBGrideh2.Columns[22].Visible := false;
    DBGrideh2.Columns[23].Visible := false;
    DBGrideh2.Columns[24].Visible := false;
    DBGrideh5.Columns[13].Visible := false;
    DBGrideh5.Columns[14].Visible := false;
    DBGrideh5.Columns[15].Visible := false;
    DBGrideh5.Columns[16].Visible := false;
    DBGrideh5.Columns[17].Visible := false;
    DBGrideh5.Columns[18].Visible := false;
    DBGrideh5.Columns[19].Visible := false;
    DBGrideh5.Columns[20].Visible := false;
    DBGrideh5.Columns[21].Visible := false;
    DBGrideh5.Columns[22].Visible := false;
    DBGrideh5.Columns[23].Visible := false;
    DBGrideh5.Columns[24].Visible := false;
  end
  else if RG1.ItemIndex = 1then begin
    DBGrideh2.Columns[1].Title.Caption := Ed_YM_M2.Text + '07';
    DBGrideh2.Columns[3].Title.Caption := Ed_YM_M2.Text + '08';
    DBGrideh2.Columns[5].Title.Caption := Ed_YM_M2.Text + '09';
    DBGrideh2.Columns[7].Title.Caption := Ed_YM_M2.Text + '10';
    DBGrideh2.Columns[9].Title.Caption := Ed_YM_M2.Text + '11';
    DBGrideh2.Columns[11].Title.Caption := Ed_YM_M2.Text + '12';
    DBGrideh5.Columns[1].Title.Caption := Ed_YM_M2.Text + '07';
    DBGrideh5.Columns[3].Title.Caption := Ed_YM_M2.Text + '08';
    DBGrideh5.Columns[5].Title.Caption := Ed_YM_M2.Text + '09';
    DBGrideh5.Columns[7].Title.Caption := Ed_YM_M2.Text + '10';
    DBGrideh5.Columns[9].Title.Caption := Ed_YM_M2.Text + '11';
    DBGrideh5.Columns[11].Title.Caption := Ed_YM_M2.Text + '12';

    DBGrideh2.Columns[7].Visible := true;
    DBGrideh2.Columns[8].Visible := true;
    DBGrideh2.Columns[9].Visible := true;
    DBGrideh2.Columns[10].Visible := true;
    DBGrideh2.Columns[11].Visible := true;
    DBGrideh2.Columns[12].Visible := true;
    DBGrideh5.Columns[7].Visible := true;
    DBGrideh5.Columns[8].Visible := true;
    DBGrideh5.Columns[9].Visible := true;
    DBGrideh5.Columns[10].Visible := true;
    DBGrideh5.Columns[11].Visible := true;
    DBGrideh5.Columns[12].Visible := true;

    DBGrideh2.Columns[13].Visible := false;
    DBGrideh2.Columns[14].Visible := false;
    DBGrideh2.Columns[15].Visible := false;
    DBGrideh2.Columns[16].Visible := false;
    DBGrideh2.Columns[17].Visible := false;
    DBGrideh2.Columns[18].Visible := false;
    DBGrideh2.Columns[19].Visible := false;
    DBGrideh2.Columns[20].Visible := false;
    DBGrideh2.Columns[21].Visible := false;
    DBGrideh2.Columns[22].Visible := false;
    DBGrideh2.Columns[23].Visible := false;
    DBGrideh2.Columns[24].Visible := false;
    DBGrideh5.Columns[13].Visible := false;
    DBGrideh5.Columns[14].Visible := false;
    DBGrideh5.Columns[15].Visible := false;
    DBGrideh5.Columns[16].Visible := false;
    DBGrideh5.Columns[17].Visible := false;
    DBGrideh5.Columns[18].Visible := false;
    DBGrideh5.Columns[19].Visible := false;
    DBGrideh5.Columns[20].Visible := false;
    DBGrideh5.Columns[21].Visible := false;
    DBGrideh5.Columns[22].Visible := false;
    DBGrideh5.Columns[23].Visible := false;
    DBGrideh5.Columns[24].Visible := false;

    if Ed_YM_M2.Text = '2022' then begin
      DBGrideh2.Columns[1].Title.Caption := Ed_YM_M2.Text + '10';
      DBGrideh2.Columns[3].Title.Caption := Ed_YM_M2.Text + '11';
      DBGrideh2.Columns[5].Title.Caption := Ed_YM_M2.Text + '12';
      DBGrideh5.Columns[1].Title.Caption := Ed_YM_M2.Text + '10';
      DBGrideh5.Columns[3].Title.Caption := Ed_YM_M2.Text + '11';
      DBGrideh5.Columns[5].Title.Caption := Ed_YM_M2.Text + '12';
      DBGrideh2.Columns[7].Visible := false;
      DBGrideh2.Columns[8].Visible := false;
      DBGrideh2.Columns[9].Visible := false;
      DBGrideh2.Columns[10].Visible := false;
      DBGrideh2.Columns[11].Visible := false;
      DBGrideh2.Columns[12].Visible := false;
      DBGrideh5.Columns[7].Visible := false;
      DBGrideh5.Columns[8].Visible := false;
      DBGrideh5.Columns[9].Visible := false;
      DBGrideh5.Columns[10].Visible := false;
      DBGrideh5.Columns[11].Visible := false;
      DBGrideh5.Columns[12].Visible := false;
    end;
  end
  else begin
    DBGrideh2.Columns[1].Title.Caption := Ed_YM_M2.Text + '01';
    DBGrideh2.Columns[3].Title.Caption := Ed_YM_M2.Text + '02';
    DBGrideh2.Columns[5].Title.Caption := Ed_YM_M2.Text + '03';
    DBGrideh2.Columns[7].Title.Caption := Ed_YM_M2.Text + '04';
    DBGrideh2.Columns[9].Title.Caption := Ed_YM_M2.Text + '05';
    DBGrideh2.Columns[11].Title.Caption := Ed_YM_M2.Text + '06';
    DBGrideh2.Columns[13].Title.Caption := Ed_YM_M2.Text + '07';
    DBGrideh2.Columns[15].Title.Caption := Ed_YM_M2.Text + '08';
    DBGrideh2.Columns[17].Title.Caption := Ed_YM_M2.Text + '09';
    DBGrideh2.Columns[19].Title.Caption := Ed_YM_M2.Text + '10';
    DBGrideh2.Columns[21].Title.Caption := Ed_YM_M2.Text + '11';
    DBGrideh2.Columns[23].Title.Caption := Ed_YM_M2.Text + '12';

    DBGrideh5.Columns[1].Title.Caption := Ed_YM_M2.Text + '01';
    DBGrideh5.Columns[3].Title.Caption := Ed_YM_M2.Text + '02';
    DBGrideh5.Columns[5].Title.Caption := Ed_YM_M2.Text + '03';
    DBGrideh5.Columns[7].Title.Caption := Ed_YM_M2.Text + '04';
    DBGrideh5.Columns[9].Title.Caption := Ed_YM_M2.Text + '05';
    DBGrideh5.Columns[11].Title.Caption := Ed_YM_M2.Text + '06';
    DBGrideh5.Columns[13].Title.Caption := Ed_YM_M2.Text + '07';
    DBGrideh5.Columns[15].Title.Caption := Ed_YM_M2.Text + '08';
    DBGrideh5.Columns[17].Title.Caption := Ed_YM_M2.Text + '09';
    DBGrideh5.Columns[19].Title.Caption := Ed_YM_M2.Text + '10';
    DBGrideh5.Columns[21].Title.Caption := Ed_YM_M2.Text + '11';
    DBGrideh5.Columns[23].Title.Caption := Ed_YM_M2.Text + '12';

    if Ed_YM_M2.Text = '2022' then begin
      DBGrideh2.Columns[1].Title.Caption := Ed_YM_M2.Text + '10';
      DBGrideh2.Columns[3].Title.Caption := Ed_YM_M2.Text + '11';
      DBGrideh2.Columns[5].Title.Caption := Ed_YM_M2.Text + '12';
      DBGrideh5.Columns[1].Title.Caption := Ed_YM_M2.Text + '10';
      DBGrideh5.Columns[3].Title.Caption := Ed_YM_M2.Text + '11';
      DBGrideh5.Columns[5].Title.Caption := Ed_YM_M2.Text + '12';

      DBGrideh2.Columns[7].Visible := false;
      DBGrideh2.Columns[8].Visible := false;
      DBGrideh2.Columns[9].Visible := false;
      DBGrideh2.Columns[10].Visible := false;
      DBGrideh2.Columns[11].Visible := false;
      DBGrideh2.Columns[12].Visible := false;
      DBGrideh2.Columns[13].Visible := false;
      DBGrideh2.Columns[14].Visible := false;
      DBGrideh2.Columns[15].Visible := false;
      DBGrideh2.Columns[16].Visible := false;
      DBGrideh2.Columns[17].Visible := false;
      DBGrideh2.Columns[18].Visible := false;
      DBGrideh2.Columns[19].Visible := false;
      DBGrideh2.Columns[20].Visible := false;
      DBGrideh2.Columns[21].Visible := false;
      DBGrideh2.Columns[22].Visible := false;
      DBGrideh2.Columns[23].Visible := false;
      DBGrideh2.Columns[24].Visible := false;
      DBGrideh5.Columns[7].Visible := false;
      DBGrideh5.Columns[8].Visible := false;
      DBGrideh5.Columns[9].Visible := false;
      DBGrideh5.Columns[10].Visible := false;
      DBGrideh5.Columns[11].Visible := false;
      DBGrideh5.Columns[12].Visible := false;
      DBGrideh5.Columns[13].Visible := false;
      DBGrideh5.Columns[14].Visible := false;
      DBGrideh5.Columns[15].Visible := false;
      DBGrideh5.Columns[16].Visible := false;
      DBGrideh5.Columns[17].Visible := false;
      DBGrideh5.Columns[18].Visible := false;
      DBGrideh5.Columns[19].Visible := false;
      DBGrideh5.Columns[20].Visible := false;
      DBGrideh5.Columns[21].Visible := false;
      DBGrideh5.Columns[22].Visible := false;
      DBGrideh5.Columns[23].Visible := false;
      DBGrideh5.Columns[24].Visible := false;
    end
    else begin
      DBGrideh2.Columns[7].Visible := true;
      DBGrideh2.Columns[8].Visible := true;
      DBGrideh2.Columns[9].Visible := true;
      DBGrideh2.Columns[10].Visible := true;
      DBGrideh2.Columns[11].Visible := true;
      DBGrideh2.Columns[12].Visible := true;
      DBGrideh2.Columns[13].Visible := true;
      DBGrideh2.Columns[14].Visible := true;
      DBGrideh2.Columns[15].Visible := true;
      DBGrideh2.Columns[16].Visible := true;
      DBGrideh2.Columns[17].Visible := true;
      DBGrideh2.Columns[18].Visible := true;
      DBGrideh2.Columns[19].Visible := true;
      DBGrideh2.Columns[20].Visible := true;
      DBGrideh2.Columns[21].Visible := true;
      DBGrideh2.Columns[22].Visible := true;
      DBGrideh2.Columns[23].Visible := true;
      DBGrideh2.Columns[24].Visible := true;
      DBGrideh5.Columns[7].Visible := true;
      DBGrideh5.Columns[8].Visible := true;
      DBGrideh5.Columns[9].Visible := true;
      DBGrideh5.Columns[10].Visible := true;
      DBGrideh5.Columns[11].Visible := true;
      DBGrideh5.Columns[12].Visible := true;
      DBGrideh5.Columns[13].Visible := true;
      DBGrideh5.Columns[14].Visible := true;
      DBGrideh5.Columns[15].Visible := true;
      DBGrideh5.Columns[16].Visible := true;
      DBGrideh5.Columns[17].Visible := true;
      DBGrideh5.Columns[18].Visible := true;
      DBGrideh5.Columns[19].Visible := true;
      DBGrideh5.Columns[20].Visible := true;
      DBGrideh5.Columns[21].Visible := true;
      DBGrideh5.Columns[22].Visible := true;
      DBGrideh5.Columns[23].Visible := true;
      DBGrideh5.Columns[24].Visible := true;
    end;
  end ;
end;

procedure TKPI_Factory.PageControl1Change(Sender: TObject);
begin
  if (PageControl1.ActivePageIndex = 1) and (not QKpi_r.Active) then
    BitBtn1.Click
  else if (PageControl1.ActivePageIndex = 2) and (not QKpi_Factory_M.Active) then begin
    Button3.Click;
    Button5.Click;
  end
  else if (PageControl1.ActivePageIndex = 3) and (not QKpi_R_M.Active) then begin
    Button7.Click;
    Button8.Click;
  end;
end;

procedure TKPI_Factory.DBGridEh4DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if (copy(QKpi_Factory_M.FieldByName('A2_Score').AsString,1,1) = '-') then
    DBGridEh4.Canvas.Font.Color := clred
  else
    DBGridEh4.Canvas.Font.Color:=clBlack;
  if DataCol = 1 then
     DBGridEh4.DefaultDrawColumnCell(Rect,DataCol,Column,State);

  if (copy(QKpi_Factory_M.FieldByName('A3_Score').AsString,1,1) = '-') then
    DBGridEh4.Canvas.Font.Color := clred
  else
    DBGridEh4.Canvas.Font.Color:=clBlack;
  if DataCol = 2 then
     DBGridEh4.DefaultDrawColumnCell(Rect,DataCol,Column,State);

  if (copy(QKpi_Factory_M.FieldByName('A7_Score').AsString,1,1) = '-') then
    DBGridEh4.Canvas.Font.Color := clred
  else
    DBGridEh4.Canvas.Font.Color:=clBlack;
  if DataCol = 3 then
     DBGridEh4.DefaultDrawColumnCell(Rect,DataCol,Column,State);

  if (copy(QKpi_Factory_M.FieldByName('A8_Score').AsString,1,1) = '-') then
    DBGridEh4.Canvas.Font.Color := clred
  else
    DBGridEh4.Canvas.Font.Color:=clBlack;
  if DataCol = 4 then
     DBGridEh4.DefaultDrawColumnCell(Rect,DataCol,Column,State);

  if (copy(QKpi_Factory_M.FieldByName('A9_Score').AsString,1,1) = '-') then
    DBGridEh4.Canvas.Font.Color := clred
  else
    DBGridEh4.Canvas.Font.Color:=clBlack;
  if DataCol = 5 then
     DBGridEh4.DefaultDrawColumnCell(Rect,DataCol,Column,State);

  if (copy(QKpi_Factory_M.FieldByName('A11_Score').AsString,1,1) = '-') then
    DBGridEh4.Canvas.Font.Color := clred
  else
    DBGridEh4.Canvas.Font.Color:=clBlack;
  if DataCol = 6 then
     DBGridEh4.DefaultDrawColumnCell(Rect,DataCol,Column,State);

  if (copy(QKpi_Factory_M.FieldByName('A12_Score').AsString,1,1) = '-') then
    DBGridEh4.Canvas.Font.Color := clred
  else
    DBGridEh4.Canvas.Font.Color:=clBlack;
  if DataCol = 7 then
     DBGridEh4.DefaultDrawColumnCell(Rect,DataCol,Column,State);

  if (copy(QKpi_Factory_M.FieldByName('A15_Score').AsString,1,1) = '-') then
    DBGridEh4.Canvas.Font.Color := clred
  else
    DBGridEh4.Canvas.Font.Color:=clBlack;
  if DataCol = 8 then
     DBGridEh4.DefaultDrawColumnCell(Rect,DataCol,Column,State);


  if (copy(QKpi_Factory_M.FieldByName('A16_Score').AsString,1,1) = '-') then
    DBGridEh4.Canvas.Font.Color := clred
  else
    DBGridEh4.Canvas.Font.Color:=clBlack;
  if DataCol = 9 then
     DBGridEh4.DefaultDrawColumnCell(Rect,DataCol,Column,State);



  if (QKpi_Factory_M.FieldByName('ITEM').AsString = '07排名') then
  begin
    DBGridEh4.Canvas.Brush.Color := RGB (214,220,228);
//    DBGridEh4.DefaultDrawColumnCell(Rect,DataCol,Column,State);
    if QKpi_Factory_M.FieldByName('A2_Score').AsString <= '3' then
      DBGridEh4.Canvas.Font.Color := clMenuHighlight
    else if QKpi_Factory_M.FieldByName('A2_Score').AsString >= '7' then
      DBGridEh4.Canvas.Font.Color:=clRed
    else
      DBGridEh4.Canvas.Font.Color:=clBlack;
    if DataCol = 1 then
       DBGridEh4.DefaultDrawColumnCell(Rect,DataCol,Column,State);

    if QKpi_Factory_M.FieldByName('A3_Score').AsString <= '3' then
      DBGridEh4.Canvas.Font.Color := clMenuHighlight
    else if QKpi_Factory_M.FieldByName('A3_Score').AsString >= '7' then
      DBGridEh4.Canvas.Font.Color:=clRed
    else
      DBGridEh4.Canvas.Font.Color:=clBlack;
    if DataCol = 2 then
       DBGridEh4.DefaultDrawColumnCell(Rect,DataCol,Column,State);

    if QKpi_Factory_M.FieldByName('A7_Score').AsString <= '3' then
      DBGridEh4.Canvas.Font.Color := clMenuHighlight
    else if QKpi_Factory_M.FieldByName('A7_Score').AsString >= '7' then
      DBGridEh4.Canvas.Font.Color:=clRed
    else
      DBGridEh4.Canvas.Font.Color:=clBlack;
    if DataCol = 3 then
       DBGridEh4.DefaultDrawColumnCell(Rect,DataCol,Column,State);

    if QKpi_Factory_M.FieldByName('A8_Score').AsString <= '3' then
      DBGridEh4.Canvas.Font.Color := clMenuHighlight
    else if QKpi_Factory_M.FieldByName('A8_Score').AsString >= '7' then
      DBGridEh4.Canvas.Font.Color:=clRed
    else
      DBGridEh4.Canvas.Font.Color:=clBlack;
    if DataCol = 4 then
       DBGridEh4.DefaultDrawColumnCell(Rect,DataCol,Column,State);

    if QKpi_Factory_M.FieldByName('A9_Score').AsString <= '3' then
      DBGridEh4.Canvas.Font.Color := clMenuHighlight
    else if QKpi_Factory_M.FieldByName('A9_Score').AsString >= '7' then
      DBGridEh4.Canvas.Font.Color:=clRed
    else
      DBGridEh4.Canvas.Font.Color:=clBlack;
    if DataCol = 5 then
       DBGridEh4.DefaultDrawColumnCell(Rect,DataCol,Column,State);

    if QKpi_Factory_M.FieldByName('A11_Score').AsString <= '3' then
      DBGridEh4.Canvas.Font.Color := clMenuHighlight
    else if QKpi_Factory_M.FieldByName('A11_Score').AsString >= '7' then
      DBGridEh4.Canvas.Font.Color:=clRed
    else
      DBGridEh4.Canvas.Font.Color:=clBlack;
    if DataCol = 6 then
       DBGridEh4.DefaultDrawColumnCell(Rect,DataCol,Column,State);

    if QKpi_Factory_M.FieldByName('A12_Score').AsString <= '3' then
      DBGridEh4.Canvas.Font.Color := clMenuHighlight
    else if QKpi_Factory_M.FieldByName('A12_Score').AsString >= '7' then
      DBGridEh4.Canvas.Font.Color:=clRed
    else
      DBGridEh4.Canvas.Font.Color:=clBlack;
    if DataCol = 7 then
       DBGridEh4.DefaultDrawColumnCell(Rect,DataCol,Column,State);

    if QKpi_Factory_M.FieldByName('A15_Score').AsString <= '3' then
      DBGridEh4.Canvas.Font.Color := clMenuHighlight
    else if QKpi_Factory_M.FieldByName('A15_Score').AsString >= '7' then
      DBGridEh4.Canvas.Font.Color:=clRed
    else
      DBGridEh4.Canvas.Font.Color:=clBlack;
    if DataCol = 8 then
       DBGridEh4.DefaultDrawColumnCell(Rect,DataCol,Column,State);


    if QKpi_Factory_M.FieldByName('A16_Score').AsString <= '3' then
      DBGridEh4.Canvas.Font.Color := clMenuHighlight
    else if QKpi_Factory_M.FieldByName('A16_Score').AsString >= '7' then
      DBGridEh4.Canvas.Font.Color:=clRed
    else
      DBGridEh4.Canvas.Font.Color:=clBlack;
    if DataCol = 9 then
       DBGridEh4.DefaultDrawColumnCell(Rect,DataCol,Column,State);
  end;
end;

procedure TKPI_Factory.Button7Click(Sender: TObject);
var i: Integer;
    R2,R3,CG,Score: String;     //排名
    R2_A,R3_A,CG_A,Score_A: String;  //平均分數
begin
  if (trim(Ed_YM_MR.Text) = '') then begin
    showmessage('Please Keyin YM !');
    exit;
  end;
// 計算排名
  Qtemp.SQL.Add('if object_id(N''tempdb..#Factory_M'') is not null  ');
  Qtemp.SQL.Add('begin  ');
  Qtemp.SQL.Add('  drop table #Factory_M ');
  Qtemp.SQL.Add('end  ');
  Qtemp.SQL.Add('create table #Factory_M(  ');
  Qtemp.SQL.Add('  Factory VarCHAR(10), ');
  Qtemp.SQL.Add('  Score Float ');
  Qtemp.SQL.Add(')   ');
  Qtemp.ExecSQL;

  Qtemp.Active := false;
  Qtemp.SQL.Clear;
  Qtemp.SQL.Add('Select sum(R2_Score) as R2_Score,sum(R3_Score) as R3_Score,sum(Process_Score) as Process_Score');
  Qtemp.SQL.Add(' from (');
  Qtemp.SQL.Add('Select YM,''01量產加權'' as ITEM, sum(R2_Score) as R2_Score,sum(R3_Score) as R3_Score,sum(Process_Score) as Process_Score');
  Qtemp.SQL.Add(' from [LIY_TYXUAN].dbo.KPI_R ');
  Qtemp.SQL.Add(' where YM = '''+trim(Ed_YM_MR.Text)+''' ');
  Qtemp.SQL.Add(' and Item like ''01%'' ');
  Qtemp.SQL.Add(' group by YM ');
  Qtemp.SQL.Add(' Union ');
  Qtemp.SQL.Add('Select YM,''達成率'' as ITEM, sum( cast(substring(R2_achieve,1,len(R2_achieve) -1) as float) -100 ) as R2_Score,sum( cast(substring(R3_achieve,1,len(R2_achieve) -1) as float) -100 ) as R3_Score, ');
  Qtemp.SQL.Add(' sum( cast(substring(Process_achieve,1,len(Process_achieve) -1) as float) -100 ) as Process_Score ');
  Qtemp.SQL.Add(' from [LIY_TYXUAN].dbo.KPI_R ');
  Qtemp.SQL.Add(' where YM = '''+trim(Ed_YM_MR.Text)+''' ');
  Qtemp.SQL.Add(' and Item like ''013%'' ');
  Qtemp.SQL.Add(' group by YM ');
  Qtemp.SQL.Add(' Union ');
  Qtemp.SQL.Add('Select YM,''加分項'' as ITEM, sum(R2_Score) as R2_Score,sum(R3_Score) as R3_Score,sum(Process_Score) as Process_Score ');
  Qtemp.SQL.Add(' from [LIY_TYXUAN].dbo.KPI_R ');
  Qtemp.SQL.Add(' where YM = '''+trim(Ed_YM_MR.Text)+''' ');
  Qtemp.SQL.Add(' and Item like ''02%'' ');
  Qtemp.SQL.Add(' group by YM ');
  Qtemp.SQL.Add(' ) KPI_Factory');
  Qtemp.Active := true;
  for i := 1 to 3 do begin
    Qtemp1.Active := false;
    Qtemp1.SQL.Clear;
    Qtemp1.SQL.Add('Insert into #Factory_M (Factory ,Score)');
    if i = 1 then
      Qtemp1.SQL.Add('Values (''R2'' ,'+Qtemp.Fieldbyname('R2_Score').AsString+')')
    else if i = 2 then
      Qtemp1.SQL.Add('Values (''R3'' ,'+Qtemp.Fieldbyname('R3_Score').AsString+')')
    else if i = 3 then
      Qtemp1.SQL.Add('Values (''Process'' ,'+Qtemp.Fieldbyname('Process_Score').AsString+')');
    Qtemp1.ExecSQL;
  end;

  Qtemp.Active := false;
  Qtemp.SQL.Clear;
  Qtemp.SQL.Add('select * from #Factory_M order by Score desc');
  Qtemp.Active := true;

  i := 1;
  while not Qtemp.Eof do begin
    if Qtemp.fieldbyname('Factory').AsString = 'R2' then begin
      R2 := inttostr(i);
      if Qtemp.fieldbyname('Score').Value >= 86 then
        R2_A := '21% - 25%'
      else if Qtemp.fieldbyname('Score').Value >= 76 then
        R2_A := '16% - 20%'
      else if Qtemp.fieldbyname('Score').Value >= 60 then
        R2_A := '11% - 15%'
      else
        R2_A := '10%'
    end
    else if Qtemp.fieldbyname('Factory').AsString = 'R3' then begin
      R3 := inttostr(i);
      if Qtemp.fieldbyname('Score').Value >= 86 then
        R3_A := '21% - 25%'
      else if Qtemp.fieldbyname('Score').Value >= 76 then
        R3_A := '16% - 20%'
      else if Qtemp.fieldbyname('Score').Value >= 60 then
        R3_A := '11% - 15%'
      else
        R3_A := '10%'
    end
    else if Qtemp.fieldbyname('Factory').AsString = 'Process' then begin
      CG := inttostr(i);
      if Qtemp.fieldbyname('Score').Value >= 86 then
        CG_A := '21% - 25%'
      else if Qtemp.fieldbyname('Score').Value >= 76 then
        CG_A := '16% - 20%'
      else if Qtemp.fieldbyname('Score').Value >= 60 then
        CG_A := '11% - 15%'
      else
        CG_A := '10%'
    end;

    i := i + 1;
    Qtemp.Next;
  end;

//計算億達月結
  QKpi_R_M.Active := false;
  QKpi_R_M.SQL.Clear;
  QKpi_R_M.SQL.Add('select '''+trim(Ed_YM_MR.Text)+''' as YM,''00外籍負責幹部'' as ITEM,'''' as R2_Score,'''' as R3_Score,'''' as Process_Score');
  QKpi_R_M.SQL.Add(' from [LIY_TYXUAN].dbo.KPI_R ');

  QKpi_R_M.SQL.Add('union');

  QKpi_R_M.SQL.Add('select '''+trim(Ed_YM_MR.Text)+''' as YM,''01越籍負責幹部'' as ITEM,'''' as R2_Score,'''' as R3_Score,'''' as Process_Score');
  QKpi_R_M.SQL.Add(' from [LIY_TYXUAN].dbo.KPI_R ');

  QKpi_R_M.SQL.Add('union');

  QKpi_R_M.SQL.Add('Select YM,''02總分'' as ITEM, cast(sum(R2_Score) as varchar) as R2_Score,cast(sum(R3_Score) as varchar) as R3_Score,cast(sum(Process_Score) as varchar) as Process_Score');
  QKpi_R_M.SQL.Add(' from [LIY_TYXUAN].dbo.KPI_R ');
  QKpi_R_M.SQL.Add(' where YM = '''+trim(Ed_YM_MR.Text)+''' ');
  QKpi_R_M.SQL.Add(' and Item like ''01%'' ');
  QKpi_R_M.SQL.Add(' group by YM ');

  QKpi_R_M.SQL.Add('union');

  QKpi_R_M.SQL.Add(' Select YM,''03加分項'' as ITEM, cast(sum(R2_Score) as varchar) as R2_Score,cast(sum(R3_Score) as varchar) as R3_Score,cast(sum(Process_Score) as varchar) as Process_Score ');
  QKpi_R_M.SQL.Add(' from ( ');
  QKpi_R_M.SQL.Add('Select YM,''達成率'' as ITEM, sum( cast(substring(R2_achieve,1,len(R2_achieve) -1) as float) -100 ) as R2_Score,sum( cast(substring(R3_achieve,1,len(R2_achieve) -1) as float) -100 ) as R3_Score, ');
  QKpi_R_M.SQL.Add(' sum( cast(substring(Process_achieve,1,len(Process_achieve) -1) as float) -100 ) as Process_Score ');
  QKpi_R_M.SQL.Add(' from [LIY_TYXUAN].dbo.KPI_R ');
  QKpi_R_M.SQL.Add(' where YM = '''+trim(Ed_YM_MR.Text)+''' ');
  QKpi_R_M.SQL.Add(' and Item like ''013%'' ');
  QKpi_R_M.SQL.Add(' group by YM ');
  QKpi_R_M.SQL.Add(' Union ');
  QKpi_R_M.SQL.Add('Select YM,''加分項'' as ITEM, sum(R2_Score) as R2_Score,sum(R3_Score) as R3_Score,sum(Process_Score) as Process_Score ');
  QKpi_R_M.SQL.Add(' from [LIY_TYXUAN].dbo.KPI_R ');
  QKpi_R_M.SQL.Add(' where YM = '''+trim(Ed_YM_MR.Text)+''' ');
  QKpi_R_M.SQL.Add(' and Item like ''02%'' ');
  QKpi_R_M.SQL.Add(' group by YM ');
  QKpi_R_M.SQL.Add(' ) KPI_R ');
  QKpi_R_M.SQL.Add(' group by YM ');

  QKpi_R_M.SQL.Add(' Union ');

  QKpi_R_M.SQL.Add('Select YM,''04總分+加分項'' as ITEM, cast(sum(R2_Score) as varchar) as R2_Score,cast(sum(R3_Score) as varchar) as R3_Score,cast(sum(Process_Score) as varchar) as Process_Score');
  QKpi_R_M.SQL.Add(' from (');
  QKpi_R_M.SQL.Add('Select YM,''01量產加權'' as ITEM, sum(R2_Score) as R2_Score,sum(R3_Score) as R3_Score,sum(Process_Score) as Process_Score');
  QKpi_R_M.SQL.Add(' from [LIY_TYXUAN].dbo.KPI_R ');
  QKpi_R_M.SQL.Add(' where YM = '''+trim(Ed_YM_MR.Text)+''' ');
  QKpi_R_M.SQL.Add(' and Item like ''01%'' ');
  QKpi_R_M.SQL.Add(' group by YM ');
  QKpi_R_M.SQL.Add(' Union ');
  QKpi_R_M.SQL.Add('Select YM,''達成率'' as ITEM, sum( cast(substring(R2_achieve,1,len(R2_achieve) -1) as float) -100 ) as R2_Score,sum( cast(substring(R3_achieve,1,len(R2_achieve) -1) as float) -100 ) as R3_Score, ');
  QKpi_R_M.SQL.Add(' sum( cast(substring(Process_achieve,1,len(Process_achieve) -1) as float) -100 ) as Process_Score ');
  QKpi_R_M.SQL.Add(' from [LIY_TYXUAN].dbo.KPI_R ');
  QKpi_R_M.SQL.Add(' where YM = '''+trim(Ed_YM_MR.Text)+''' ');
  QKpi_R_M.SQL.Add(' and Item like ''013%'' ');
  QKpi_R_M.SQL.Add(' group by YM ');
  QKpi_R_M.SQL.Add(' Union ');
  QKpi_R_M.SQL.Add('Select YM,''加分項'' as ITEM, sum(R2_Score) as R2_Score,sum(R3_Score) as R3_Score,sum(Process_Score) as Process_Score ');
  QKpi_R_M.SQL.Add(' from [LIY_TYXUAN].dbo.KPI_R ');
  QKpi_R_M.SQL.Add(' where YM = '''+trim(Ed_YM_MR.Text)+''' ');
  QKpi_R_M.SQL.Add(' and Item like ''02%'' ');
  QKpi_R_M.SQL.Add(' group by YM ');
  QKpi_R_M.SQL.Add(' ) KPI_R');
  QKpi_R_M.SQL.Add(' group by YM ');

  QKpi_R_M.SQL.Add(' Union ');

  QKpi_R_M.SQL.Add('Select '''+trim(Ed_YM_MR.Text)+''' as YM,''07排名'' as ITEM, '''+R2+''' as R2_Score,'''+R3+''' as R3_Score,'''+CG+''' as Process_Score');
  QKpi_R_M.SQL.Add(' from [LIY_TYXUAN].dbo.KPI_R');
  QKpi_R_M.SQL.Add(' group by YM');

  QKpi_R_M.SQL.Add(' Union ');

  QKpi_R_M.SQL.Add('Select '''+trim(Ed_YM_MR.Text)+''' as YM,''08 A%'' as ITEM, '''+R2_A+''' as R2_Score,'''+R3_A+''' as R3_Score,'''+CG_A+''' as Process_Score');
  QKpi_R_M.SQL.Add(' from [LIY_TYXUAN].dbo.KPI_R');
  QKpi_R_M.SQL.Add(' group by YM');
  QKpi_R_M.Active := true;
end;

procedure TKPI_Factory.Button8Click(Sender: TObject);
var i,j,k: Integer;
    A2,A3,A7,A8,A9,A11,A12,A15,A16,Score: String;
    A2_A,A3_A,A7_A,A8_A,A9_A,A11_A,A12_A,A15_A,A16_A,Score_A: String;
    Score_Avg : Currency;
begin
  if (trim(Ed_YM_M2R.Text) = '') then begin
    showmessage('Please Keyin YM !');
    exit;
  end;

  Qtemp.Active := false;
  Qtemp.SQL.Clear;
  Qtemp.SQL.Add('Select count(distinct YM) from [LIY_TYXUAN].dbo.KPI_R_M2 ');
  if RG2.ItemIndex = 0 then
    Qtemp.SQL.Add(' where YM >= '''+trim(Ed_YM_M2R.Text)+'01'' and YM <= '''+trim(Ed_YM_M2R.Text)+'06''')
  else if RG2.ItemIndex = 1 then
    Qtemp.SQL.Add(' where YM >= '''+trim(Ed_YM_M2R.Text)+'07'' and YM <= '''+trim(Ed_YM_M2R.Text)+'12''')
  else
    Qtemp.SQL.Add(' where YM like '''+trim(Ed_YM_M2R.Text)+'%'' ');
  Qtemp.Active := true;
  if Qtemp.Fields[0].Value = 0 then begin
    showmessage('There is no data!');
    exit;
  end;
  j := Qtemp.Fields[0].Value;

  Qtemp.Active := false;
  Qtemp.SQL.Clear;
  Qtemp.SQL.Add('if object_id(N''tempdb..#Factory_M2'') is not null  ');
  Qtemp.SQL.Add('begin  ');
  Qtemp.SQL.Add('  drop table #Factory_M2 ');
  Qtemp.SQL.Add('end  ');
  Qtemp.SQL.Add('create table #Factory_M2(  ');
  Qtemp.SQL.Add('  Factory VarCHAR(6), ');
  Qtemp.SQL.Add('  Score_1 Float null, ');
  Qtemp.SQL.Add('  Sort_1 integer null, ');
  Qtemp.SQL.Add('  Score_2 Float null, ');
  Qtemp.SQL.Add('  Sort_2 integer null, ');
  Qtemp.SQL.Add('  Score_3 Float null, ');
  Qtemp.SQL.Add('  Sort_3 integer null, ');
  Qtemp.SQL.Add('  Score_4 Float null, ');
  Qtemp.SQL.Add('  Sort_4 integer null, ');
  Qtemp.SQL.Add('  Score_5 Float null, ');
  Qtemp.SQL.Add('  Sort_5 integer null, ');
  Qtemp.SQL.Add('  Score_6 Float null, ');
  Qtemp.SQL.Add('  Sort_6 integer null, ');
  Qtemp.SQL.Add('  Score_avg Float null, ');
  Qtemp.SQL.Add('  Sort_avg integer null,');
  Qtemp.SQL.Add('  Score_7 Float null, ');
  Qtemp.SQL.Add('  Sort_7 integer null, ');
  Qtemp.SQL.Add('  Score_8 Float null, ');
  Qtemp.SQL.Add('  Sort_8 integer null, ');
  Qtemp.SQL.Add('  Score_9 Float null, ');
  Qtemp.SQL.Add('  Sort_9 integer null, ');
  Qtemp.SQL.Add('  Score_10 Float null, ');
  Qtemp.SQL.Add('  Sort_10 integer null, ');
  Qtemp.SQL.Add('  Score_11 Float null, ');
  Qtemp.SQL.Add('  Sort_11 integer null, ');
  Qtemp.SQL.Add('  Score_12 Float null, ');
  Qtemp.SQL.Add('  Sort_12 integer null ');
  Qtemp.SQL.Add(')   ');
  Qtemp.ExecSQL;
// 計算分數
  for i := 1 to 3 do begin
    Qtemp.Active := false;
    Qtemp.SQL.Clear;
    Qtemp.SQL.Add('Select YM,Factory,Score5 ');
    Qtemp.SQL.Add(' from [LIY_TYXUAN].dbo.KPI_R_M2 ');
    if RG2.ItemIndex = 0 then
      Qtemp.SQL.Add(' where YM >= '''+trim(Ed_YM_M2R.Text)+'01'' and YM <= '''+trim(Ed_YM_M2R.Text)+'06''')
    else if RG2.ItemIndex = 1 then
      Qtemp.SQL.Add(' where YM >= '''+trim(Ed_YM_M2R.Text)+'07'' and YM <= '''+trim(Ed_YM_M2R.Text)+'12''')
    else
      Qtemp.SQL.Add(' where YM like '''+trim(Ed_YM_M2R.Text)+'%'' ');

    if i = 1 then
      Qtemp.SQL.Add(' and Factory = ''R2''')
    else if i = 2 then
      Qtemp.SQL.Add(' and Factory = ''R3''')
    else if i = 3 then
      Qtemp.SQL.Add(' and Factory = ''Process''');
    Qtemp.SQL.Add(' order by YM');
    Qtemp.Active := true;

    Qtemp1.Active := false;
    Qtemp1.SQL.Clear;
    if RG1.ItemIndex <> 2 then
      Qtemp1.SQL.Add('Insert into #Factory_M2 (Factory ,Score_1 ,Score_2 ,Score_3 ,Score_4 ,Score_5 ,Score_6 ,Score_Avg )')
    else
      Qtemp1.SQL.Add('Insert into #Factory_M2 (Factory ,Score_1 ,Score_2 ,Score_3 ,Score_4 ,Score_5 ,Score_6 ,Score_7 ,Score_8 ,Score_9 ,Score_10 ,Score_11 ,Score_12 ,Score_Avg )');
    Qtemp1.SQL.Add('Values ('''+Qtemp.Fieldbyname('Factory').AsString+''' ,'+Qtemp.Fieldbyname('Score5').AsString+' ');
    Score_Avg := Qtemp.Fieldbyname('Score5').Value;
    for k := 2 to j do begin
      Qtemp.Next;
      Qtemp1.SQL.Add(','+Qtemp.Fieldbyname('Score5').AsString+'');
      Score_Avg := Score_Avg + Qtemp.Fieldbyname('Score5').Value;
    end;
    Score_Avg := SimpleRoundTo(Score_Avg / j);

    if RG1.ItemIndex = 2 then begin
      if j = 12 then
        Qtemp1.SQL.Add(','+floattostr(Score_Avg)+'')
      else if j = 11 then
        Qtemp1.SQL.Add(',NULL,'+floattostr(Score_Avg)+'')
      else if j = 10 then
        Qtemp1.SQL.Add(',NULL,NULL,'+floattostr(Score_Avg)+'')
      else if j = 9 then
        Qtemp1.SQL.Add(',NULL,NULL,NULL,'+floattostr(Score_Avg)+'')
      else if j = 8 then
        Qtemp1.SQL.Add(',NULL,NULL,NULL,NULL,'+floattostr(Score_Avg)+'')
      else if j = 7 then
        Qtemp1.SQL.Add(',NULL,NULL,NULL,NULL,NULL,'+floattostr(Score_Avg)+'')
      else if j = 6 then
        Qtemp1.SQL.Add(',NULL,NULL,NULL,NULL,NULL,NULL,'+floattostr(Score_Avg)+'')
      else if j = 5 then
        Qtemp1.SQL.Add(',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'+floattostr(Score_Avg)+'')
      else if j = 4 then
        Qtemp1.SQL.Add(',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'+floattostr(Score_Avg)+'')
      else if j = 3 then
        Qtemp1.SQL.Add(',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'+floattostr(Score_Avg)+'')
      else if j = 2 then
        Qtemp1.SQL.Add(',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'+floattostr(Score_Avg)+'')
      else if j = 1 then
        Qtemp1.SQL.Add(',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'+floattostr(Score_Avg)+'');
    end
    else begin
      if j = 6 then
        Qtemp1.SQL.Add(','+floattostr(Score_Avg)+'')
      else if j = 5 then
        Qtemp1.SQL.Add(',NULL,'+floattostr(Score_Avg)+'')
      else if j = 4 then
        Qtemp1.SQL.Add(',NULL,NULL,'+floattostr(Score_Avg)+'')
      else if j = 3 then
        Qtemp1.SQL.Add(',NULL,NULL,NULL,'+floattostr(Score_Avg)+'')
      else if j = 2 then
        Qtemp1.SQL.Add(',NULL,NULL,NULL,NULL,'+floattostr(Score_Avg)+'')
      else if j = 1 then
        Qtemp1.SQL.Add(',NULL,NULL,NULL,NULL,NULL,'+floattostr(Score_Avg)+'');
    end;
    Qtemp1.SQL.Add(')');
    Qtemp1.ExecSQL;
  end;

// 計算工廠排名
  for k := 1 to j do begin
    Qtemp.Active := false;
    Qtemp.SQL.Clear;
    if k = 1 then begin
      Qtemp.SQL.Add('select Factory,Score_1 from #Factory_M2 order by Score_1 desc');
      Qtemp.Active := true;
      i := 1;
      while not Qtemp.Eof do begin
        Qtemp1.Active := false;
        Qtemp1.SQL.Clear;
        Qtemp1.SQL.Add('Update #Factory_M2 set sort_1 = '+inttostr(i)+' where Factory = '''+Qtemp.Fieldbyname('Factory').AsString+'''');
        Qtemp1.ExecSQL;
        i := i + 1;
        Qtemp.Next;
      end;
    end
    else if k = 2 then begin
      Qtemp.SQL.Add('select Factory,Score_2 from #Factory_M2 order by Score_2 desc');
      Qtemp.Active := true;
      i := 1;
      while not Qtemp.Eof do begin
        Qtemp1.Active := false;
        Qtemp1.SQL.Clear;
        Qtemp1.SQL.Add('Update #Factory_M2 set sort_2 = '+inttostr(i)+' where Factory = '''+Qtemp.Fieldbyname('Factory').AsString+'''');
        Qtemp1.ExecSQL;
        i := i + 1;
        Qtemp.Next;
      end;
    end
    else if k = 3 then begin
      Qtemp.SQL.Add('select Factory,Score_3 from #Factory_M2 order by Score_3 desc');
      Qtemp.Active := true;
      i := 1;
      while not Qtemp.Eof do begin
        Qtemp1.Active := false;
        Qtemp1.SQL.Clear;
        Qtemp1.SQL.Add('Update #Factory_M2 set sort_3 = '+inttostr(i)+' where Factory = '''+Qtemp.Fieldbyname('Factory').AsString+'''');
        Qtemp1.ExecSQL;
        i := i + 1;
        Qtemp.Next;
      end;
    end
    else if k = 4 then begin
      Qtemp.SQL.Add('select Factory,Score_4 from #Factory_M2 order by Score_4 desc');
      Qtemp.Active := true;
      i := 1;
      while not Qtemp.Eof do begin
        Qtemp1.Active := false;
        Qtemp1.SQL.Clear;
        Qtemp1.SQL.Add('Update #Factory_M2 set sort_4 = '+inttostr(i)+' where Factory = '''+Qtemp.Fieldbyname('Factory').AsString+'''');
        Qtemp1.ExecSQL;
        i := i + 1;
        Qtemp.Next;
      end;
    end
    else if k = 5 then begin
      Qtemp.SQL.Add('select Factory,Score_5 from #Factory_M2 order by Score_5 desc');
      Qtemp.Active := true;
      i := 1;
      while not Qtemp.Eof do begin
        Qtemp1.Active := false;
        Qtemp1.SQL.Clear;
        Qtemp1.SQL.Add('Update #Factory_M2 set sort_5 = '+inttostr(i)+' where Factory = '''+Qtemp.Fieldbyname('Factory').AsString+'''');
        Qtemp1.ExecSQL;
        i := i + 1;
        Qtemp.Next;
      end;
    end
    else if k = 6 then begin
      Qtemp.SQL.Add('select Factory,Score_6 from #Factory_M2 order by Score_6 desc');
      Qtemp.Active := true;
      i := 1;
      while not Qtemp.Eof do begin
        Qtemp1.Active := false;
        Qtemp1.SQL.Clear;
        Qtemp1.SQL.Add('Update #Factory_M2 set sort_6 = '+inttostr(i)+' where Factory = '''+Qtemp.Fieldbyname('Factory').AsString+'''');
        Qtemp1.ExecSQL;
        i := i + 1;
        Qtemp.Next;
      end;
    end
    else if k = 7 then begin
      Qtemp.SQL.Add('select Factory,Score_7 from #Factory_M2 order by Score_7 desc');
      Qtemp.Active := true;
      i := 1;
      while not Qtemp.Eof do begin
        Qtemp1.Active := false;
        Qtemp1.SQL.Clear;
        Qtemp1.SQL.Add('Update #Factory_M2 set Score_7 = '+inttostr(i)+' where Factory = '''+Qtemp.Fieldbyname('Factory').AsString+'''');
        Qtemp1.ExecSQL;
        i := i + 1;
        Qtemp.Next;
      end;
    end
    else if k = 8 then begin
      Qtemp.SQL.Add('select Factory,Score_8 from #Factory_M2 order by Score_8 desc');
      Qtemp.Active := true;
      i := 1;
      while not Qtemp.Eof do begin
        Qtemp1.Active := false;
        Qtemp1.SQL.Clear;
        Qtemp1.SQL.Add('Update #Factory_M2 set Score_8 = '+inttostr(i)+' where Factory = '''+Qtemp.Fieldbyname('Factory').AsString+'''');
        Qtemp1.ExecSQL;
        i := i + 1;
        Qtemp.Next;
      end;
    end
    else if k = 9 then begin
      Qtemp.SQL.Add('select Factory,Score_9 from #Factory_M2 order by Score_9 desc');
      Qtemp.Active := true;
      i := 1;
      while not Qtemp.Eof do begin
        Qtemp1.Active := false;
        Qtemp1.SQL.Clear;
        Qtemp1.SQL.Add('Update #Factory_M2 set Score_9 = '+inttostr(i)+' where Factory = '''+Qtemp.Fieldbyname('Factory').AsString+'''');
        Qtemp1.ExecSQL;
        i := i + 1;
        Qtemp.Next;
      end;
    end
    else if k = 10 then begin
      Qtemp.SQL.Add('select Factory,Score_10 from #Factory_M2 order by Score_10 desc');
      Qtemp.Active := true;
      i := 1;
      while not Qtemp.Eof do begin
        Qtemp1.Active := false;
        Qtemp1.SQL.Clear;
        Qtemp1.SQL.Add('Update #Factory_M2 set Score_10 = '+inttostr(i)+' where Factory = '''+Qtemp.Fieldbyname('Factory').AsString+'''');
        Qtemp1.ExecSQL;
        i := i + 1;
        Qtemp.Next;
      end;
    end
    else if k = 11 then begin
      Qtemp.SQL.Add('select Factory,Score_11 from #Factory_M2 order by Score_11 desc');
      Qtemp.Active := true;
      i := 1;
      while not Qtemp.Eof do begin
        Qtemp1.Active := false;
        Qtemp1.SQL.Clear;
        Qtemp1.SQL.Add('Update #Factory_M2 set Score_11 = '+inttostr(i)+' where Factory = '''+Qtemp.Fieldbyname('Factory').AsString+'''');
        Qtemp1.ExecSQL;
        i := i + 1;
        Qtemp.Next;
      end;
    end
    else if k = 12 then begin
      Qtemp.SQL.Add('select Factory,Score_12 from #Factory_M2 order by Score_12 desc');
      Qtemp.Active := true;
      i := 1;
      while not Qtemp.Eof do begin
        Qtemp1.Active := false;
        Qtemp1.SQL.Clear;
        Qtemp1.SQL.Add('Update #Factory_M2 set Score_12 = '+inttostr(i)+' where Factory = '''+Qtemp.Fieldbyname('Factory').AsString+'''');
        Qtemp1.ExecSQL;
        i := i + 1;
        Qtemp.Next;
      end;
    end;
  end;

  Qtemp.Active := false;
  Qtemp.SQL.Clear;
  Qtemp.SQL.Add('select Factory,Score_Avg from #Factory_M2 order by Score_Avg desc');
  Qtemp.Active := true;
  i := 1;
  while not Qtemp.Eof do begin
    Qtemp1.Active := false;
    Qtemp1.SQL.Clear;
    Qtemp1.SQL.Add('Update #Factory_M2 set sort_Avg = '+inttostr(i)+' where Factory = '''+Qtemp.Fieldbyname('Factory').AsString+'''');
    Qtemp1.ExecSQL;
    i := i + 1;
    Qtemp.Next;
  end;

  QKpi_R_M2.Active := false;
  QKpi_R_M2.SQL.Clear;
  QKpi_R_M2.SQL.Add('select * from #Factory_M2 order by Factory');
  QKpi_R_M2.Active := true;

  if RG2.ItemIndex = 0 then begin
    DBGrideh8.Columns[1].Title.Caption := Ed_YM_M2.Text + '01';
    DBGrideh8.Columns[3].Title.Caption := Ed_YM_M2.Text + '02';
    DBGrideh8.Columns[5].Title.Caption := Ed_YM_M2.Text + '03';
    DBGrideh8.Columns[7].Title.Caption := Ed_YM_M2.Text + '04';
    DBGrideh8.Columns[9].Title.Caption := Ed_YM_M2.Text + '05';
    DBGrideh8.Columns[11].Title.Caption := Ed_YM_M2.Text + '06';

    DBGrideh8.Columns[13].Visible := false;
    DBGrideh8.Columns[14].Visible := false;
    DBGrideh8.Columns[15].Visible := false;
    DBGrideh8.Columns[16].Visible := false;
    DBGrideh8.Columns[17].Visible := false;
    DBGrideh8.Columns[18].Visible := false;
    DBGrideh8.Columns[19].Visible := false;
    DBGrideh8.Columns[20].Visible := false;
    DBGrideh8.Columns[21].Visible := false;
    DBGrideh8.Columns[22].Visible := false;
    DBGrideh8.Columns[23].Visible := false;
    DBGrideh8.Columns[24].Visible := false;
  end
  else if RG2.ItemIndex = 1then begin
    DBGrideh8.Columns[1].Title.Caption := Ed_YM_M2.Text + '07';
    DBGrideh8.Columns[3].Title.Caption := Ed_YM_M2.Text + '08';
    DBGrideh8.Columns[5].Title.Caption := Ed_YM_M2.Text + '09';
    DBGrideh8.Columns[7].Title.Caption := Ed_YM_M2.Text + '10';
    DBGrideh8.Columns[9].Title.Caption := Ed_YM_M2.Text + '11';
    DBGrideh8.Columns[11].Title.Caption := Ed_YM_M2.Text + '12';

    DBGrideh8.Columns[13].Visible := false;
    DBGrideh8.Columns[14].Visible := false;
    DBGrideh8.Columns[15].Visible := false;
    DBGrideh8.Columns[16].Visible := false;
    DBGrideh8.Columns[17].Visible := false;
    DBGrideh8.Columns[18].Visible := false;
    DBGrideh8.Columns[19].Visible := false;
    DBGrideh8.Columns[20].Visible := false;
    DBGrideh8.Columns[21].Visible := false;
    DBGrideh8.Columns[22].Visible := false;
    DBGrideh8.Columns[23].Visible := false;
    DBGrideh8.Columns[24].Visible := false;
  end
  else begin
    DBGrideh8.Columns[1].Title.Caption := Ed_YM_M2.Text + '01';
    DBGrideh8.Columns[3].Title.Caption := Ed_YM_M2.Text + '02';
    DBGrideh8.Columns[5].Title.Caption := Ed_YM_M2.Text + '03';
    DBGrideh8.Columns[7].Title.Caption := Ed_YM_M2.Text + '04';
    DBGrideh8.Columns[9].Title.Caption := Ed_YM_M2.Text + '05';
    DBGrideh8.Columns[11].Title.Caption := Ed_YM_M2.Text + '06';
    DBGrideh8.Columns[13].Title.Caption := Ed_YM_M2.Text + '07';
    DBGrideh8.Columns[15].Title.Caption := Ed_YM_M2.Text + '08';
    DBGrideh8.Columns[17].Title.Caption := Ed_YM_M2.Text + '09';
    DBGrideh8.Columns[19].Title.Caption := Ed_YM_M2.Text + '10';
    DBGrideh8.Columns[21].Title.Caption := Ed_YM_M2.Text + '11';
    DBGrideh8.Columns[23].Title.Caption := Ed_YM_M2.Text + '12';

    DBGrideh8.Columns[13].Visible := true;
    DBGrideh8.Columns[14].Visible := true;
    DBGrideh8.Columns[15].Visible := true;
    DBGrideh8.Columns[16].Visible := true;
    DBGrideh8.Columns[17].Visible := true;
    DBGrideh8.Columns[18].Visible := true;
    DBGrideh8.Columns[19].Visible := true;
    DBGrideh8.Columns[20].Visible := true;
    DBGrideh8.Columns[21].Visible := true;
    DBGrideh8.Columns[22].Visible := true;
    DBGrideh8.Columns[23].Visible := true;
    DBGrideh8.Columns[24].Visible := true;
  end;
end;

procedure TKPI_Factory.RG1Click(Sender: TObject);
begin
  Button5.Click;
end;

procedure TKPI_Factory.RG2Click(Sender: TObject);
begin
  Button8.Click;
end;

end.
