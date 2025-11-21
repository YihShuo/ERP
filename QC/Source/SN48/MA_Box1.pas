unit MA_Box1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GridsEh, DBGridEh, ComCtrls, StdCtrls, Buttons, ExtCtrls, comobj,
  DBTables, DB, DateUtils, Grids, DBGrids, Menus, Mask, DBCtrls;

type
  TMA_Box = class(TForm)
    Panel1: TPanel;
    BB1: TBitBtn;
    BB5: TBitBtn;
    BB6: TBitBtn;
    Query1: TQuery;
    UpdateSQL1: TUpdateSQL;
    DataSource1: TDataSource;
    TmpQry: TQuery;
    Query1SCDate: TDateTimeField;
    Query1DDBH: TStringField;
    Query1Carton: TStringField;
    Query1CheckCarton: TBooleanField;
    Query1DepID: TStringField;
    Query1USERID: TStringField;
    Query1USERDATE: TDateTimeField;
    Query1YN: TStringField;
    Query1Int_Score: TIntegerField;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    DataSource2: TDataSource;
    Query2: TQuery;
    DateTimeField1: TDateTimeField;
    StringField1: TStringField;
    StringField2: TStringField;
    BooleanField1: TBooleanField;
    StringField3: TStringField;
    StringField4: TStringField;
    DateTimeField2: TDateTimeField;
    StringField5: TStringField;
    IntegerField1: TIntegerField;
    UpdateSQL2: TUpdateSQL;
    DataSource3: TDataSource;
    Query3: TQuery;
    DateTimeField3: TDateTimeField;
    StringField6: TStringField;
    StringField7: TStringField;
    BooleanField2: TBooleanField;
    StringField8: TStringField;
    StringField9: TStringField;
    DateTimeField4: TDateTimeField;
    StringField10: TStringField;
    IntegerField2: TIntegerField;
    UpdateSQL3: TUpdateSQL;
    Query1GXLB: TStringField;
    PC1: TPageControl;
    TS1: TTabSheet;
    DataSource4: TDataSource;
    Query4: TQuery;
    DateTimeField5: TDateTimeField;
    StringField11: TStringField;
    StringField12: TStringField;
    BooleanField3: TBooleanField;
    StringField13: TStringField;
    StringField14: TStringField;
    DateTimeField6: TDateTimeField;
    StringField15: TStringField;
    IntegerField3: TIntegerField;
    UpdateSQL4: TUpdateSQL;
    DataSource5: TDataSource;
    Query5: TQuery;
    DateTimeField7: TDateTimeField;
    StringField16: TStringField;
    StringField17: TStringField;
    BooleanField4: TBooleanField;
    StringField18: TStringField;
    StringField19: TStringField;
    DateTimeField8: TDateTimeField;
    StringField20: TStringField;
    IntegerField4: TIntegerField;
    UpdateSQL5: TUpdateSQL;
    DBGridEh6: TDBGridEh;
    DataSource6: TDataSource;
    Query6: TQuery;
    DateTimeField9: TDateTimeField;
    StringField21: TStringField;
    StringField22: TStringField;
    BooleanField5: TBooleanField;
    StringField23: TStringField;
    StringField24: TStringField;
    DateTimeField10: TDateTimeField;
    StringField25: TStringField;
    IntegerField5: TIntegerField;
    UpdateSQL6: TUpdateSQL;
    DataSource7: TDataSource;
    Query7: TQuery;
    DateTimeField11: TDateTimeField;
    StringField26: TStringField;
    StringField27: TStringField;
    BooleanField6: TBooleanField;
    StringField28: TStringField;
    StringField29: TStringField;
    DateTimeField12: TDateTimeField;
    StringField30: TStringField;
    IntegerField6: TIntegerField;
    UpdateSQL7: TUpdateSQL;
    DataSource8: TDataSource;
    Query8: TQuery;
    DateTimeField13: TDateTimeField;
    StringField31: TStringField;
    StringField32: TStringField;
    BooleanField7: TBooleanField;
    StringField33: TStringField;
    StringField34: TStringField;
    DateTimeField14: TDateTimeField;
    StringField35: TStringField;
    IntegerField7: TIntegerField;
    UpdateSQL8: TUpdateSQL;
    DataSource9: TDataSource;
    Query9: TQuery;
    DateTimeField15: TDateTimeField;
    StringField36: TStringField;
    StringField37: TStringField;
    BooleanField8: TBooleanField;
    StringField38: TStringField;
    StringField39: TStringField;
    DateTimeField16: TDateTimeField;
    StringField40: TStringField;
    IntegerField8: TIntegerField;
    UpdateSQL9: TUpdateSQL;
    DataSource10: TDataSource;
    Query10: TQuery;
    DateTimeField17: TDateTimeField;
    StringField41: TStringField;
    StringField42: TStringField;
    BooleanField9: TBooleanField;
    StringField43: TStringField;
    StringField44: TStringField;
    DateTimeField18: TDateTimeField;
    StringField45: TStringField;
    IntegerField9: TIntegerField;
    UpdateSQL10: TUpdateSQL;
    DataSource11: TDataSource;
    Query11: TQuery;
    DateTimeField19: TDateTimeField;
    StringField46: TStringField;
    StringField47: TStringField;
    BooleanField10: TBooleanField;
    StringField48: TStringField;
    StringField49: TStringField;
    DateTimeField20: TDateTimeField;
    StringField50: TStringField;
    IntegerField10: TIntegerField;
    UpdateSQL11: TUpdateSQL;
    DataSource12: TDataSource;
    Query12: TQuery;
    DateTimeField21: TDateTimeField;
    StringField51: TStringField;
    StringField52: TStringField;
    BooleanField11: TBooleanField;
    StringField53: TStringField;
    StringField54: TStringField;
    DateTimeField22: TDateTimeField;
    StringField55: TStringField;
    IntegerField11: TIntegerField;
    UpdateSQL12: TUpdateSQL;
    DataSource13: TDataSource;
    Query13: TQuery;
    DateTimeField23: TDateTimeField;
    StringField56: TStringField;
    StringField57: TStringField;
    BooleanField12: TBooleanField;
    StringField58: TStringField;
    StringField59: TStringField;
    DateTimeField24: TDateTimeField;
    StringField60: TStringField;
    IntegerField12: TIntegerField;
    UpdateSQL13: TUpdateSQL;
    DBGridEh1: TDBGridEh;
    DBGridEh2: TDBGridEh;
    DBGridEh3: TDBGridEh;
    DBGridEh4: TDBGridEh;
    DBGridEh5: TDBGridEh;
    DBGridEh7: TDBGridEh;
    DBGridEh8: TDBGridEh;
    DBGridEh9: TDBGridEh;
    DBGridEh10: TDBGridEh;
    DBGridEh11: TDBGridEh;
    DBGridEh12: TDBGridEh;
    DBGridEh13: TDBGridEh;
    Query14: TQuery;
    Thung: TDBEdit;
    Label7: TLabel;
    GroupBox1: TGroupBox;
    RB1: TRadioButton;
    RB2: TRadioButton;
    AR: TDBEdit;
    DDGB: TDBEdit;
    Edit3: TEdit;
    TabSheet1: TTabSheet;
    Panel2: TPanel;
    Label3: TLabel;
    Edit4: TEdit;
    Label4: TLabel;
    Edit5: TEdit;
    GroupBox2: TGroupBox;
    CheckBox4: TCheckBox;
    CheckBox7: TCheckBox;
    CheckBox8: TCheckBox;
    CheckBox9: TCheckBox;
    CheckBox10: TCheckBox;
    CheckBox11: TCheckBox;
    CheckBox12: TCheckBox;
    CheckBox14: TCheckBox;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    DBGridEh14: TDBGridEh;
    DataSource14: TDataSource;
    Query15: TQuery;
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    UpdateSQL14: TUpdateSQL;
    GroupBox3: TGroupBox;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    Query15SCDate: TDateTimeField;
    Query15DDBH: TStringField;
    Query15Carton: TStringField;
    Query15CheckCarton: TBooleanField;
    Query15GXLB: TStringField;
    Query15DepID: TStringField;
    Query15Size_don: TStringField;
    Query15Size_tong_hop: TStringField;
    Query15Nhan_trang: TStringField;
    Query15Nhan_gia: TStringField;
    Query15Mac_treo: TStringField;
    Query15Nhan_de_trung: TStringField;
    Query15USERID: TStringField;
    Query15USERDATE: TDateTimeField;
    Query15YN: TStringField;
    Query15Int_Score: TIntegerField;
    Query15GXLB_1: TStringField;
    DDZL: TQuery;
    DataSource15: TDataSource;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    CheckBox1: TCheckBox;
    Query15Nhan_nap_hop: TStringField;
    Query15Day_dit_hop: TStringField;
    Query15Day_treo: TStringField;
    DDZLDDBH: TStringField;
    DDZLbox: TIntegerField;
    DDZLYWSM: TStringField;
    DDZLLBDH_MA: TStringField;
    DDZLArticle: TStringField;
    DDZLSize_don: TStringField;
    DDZLMac_treo: TStringField;
    DDZLNhan_de_trung: TStringField;
    DDZLNhan_gia: TStringField;
    DDZLNhan_nap_hop: TStringField;
    DDZLNhan_trang: TStringField;
    DDZLSize_tong_hop: TStringField;
    DDZLDay_treo: TStringField;
    DDZLDay_dit_hop: TStringField;
    DDZLKHPO: TStringField;
    Label5: TLabel;
    Edit6: TEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BB1Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure Edit2Click(Sender: TObject);
    procedure Edit1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
  private
    XXCC:array of string;
    GXLB:String;
    procedure DBGridInit();
    procedure Init();
    procedure SelectDDZL();
    { Private declarations }
  public
    DepID_G:String;
    { Public declarations }
  end;

var
  MA_Box: TMA_Box;
  Query: TQuery;

implementation
   uses main1, MA_Inspection1, MA_Inspection_RY1, FunUnit, Thung_DepName1;

{$R *.dfm}

procedure TMA_Box.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=Cafree;
end;

procedure TMA_Box.FormDestroy(Sender: TObject);
begin
  MA_Box:=nil;
end;

procedure TMA_Box.Init();
begin
  if RB1.Checked=true then
     GXLB:='HI'
  else
     GXLB:='DI';
end;


procedure TMA_Box.SelectDDZL();
begin
    with DDZL do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('select WOPR_Carton.DDBH,max (ctz) as box,LBZLS.YWSM,LBZLS_MA.LBDH_MA,ddzl.KHPO,DDZL.Article,max (WOPR_Carton.Size_don) as Size_don,max (WOPR_Carton.Mac_treo) as Mac_treo');
      SQL.Add(',max (WOPR_Carton.Nhan_de_trung) as Nhan_de_trung,max (WOPR_Carton.Nhan_gia) as Nhan_gia,max (WOPR_Carton.Nhan_nap_hop) as Nhan_nap_hop,max (WOPR_Carton.Nhan_trang) as Nhan_trang');
      SQL.Add(',max (WOPR_Carton.Size_tong_hop) as Size_tong_hop,max (WOPR_Carton.Day_treo) as Day_treo,max (WOPR_Carton.Day_dit_hop) as Day_dit_hop');
      SQL.Add(' from WOPR_Carton left join YWBZPOS on YWBZPOS.ddbh=WOPR_Carton.ddbh');
      SQL.Add('left join ddzl on ddzl.ddbh = WOPR_Carton.ddbh');
      sql.add('left join LBZLS on LBZLS.LB='+''''+'06'+''''+' and LBZLS.LBDH=DDZL.DDGB');
      sql.add('left join LBZLS_MA on LBZLS_MA.LBDH=DDZL.DDGB');
      SQL.Add('where 1=1');
      if Edit3.text <> '' then
        SQL.Add('and  WOPR_Carton.DDBH ='''+Edit3.text+'''')
      else
        SQL.Add('and  WOPR_Carton.DDBH ='''+Edit5.text+'''');
      SQL.Add('group by WOPR_Carton.DDBH,LBZLS.YWSM,LBZLS_MA.LBDH_MA,DDZL.Article,ddzl.KHPO');
      //funcobj.WriteErrorLog(sql.Text);
      Active:=true;
      if FieldbyName('Size_don').Value <> null then
        CheckBox4.Checked := true;
      if FieldbyName('Mac_treo').Value <> null then
        CheckBox11.Checked := true;
      if FieldbyName('Nhan_de_trung').Value <> null then
        CheckBox9.Checked := true;
      if FieldbyName('Nhan_gia').Value <> null then
        CheckBox10.Checked := true;
      if FieldbyName('Nhan_nap_hop').Value <> null then
        CheckBox12.Checked := true;
      if FieldbyName('Nhan_trang').Value <> null then
        CheckBox8.Checked := true;
      if FieldbyName('Size_tong_hop').Value <> null then
        CheckBox7.Checked := true;
      if FieldbyName('Day_treo').Value <> null then
        CheckBox1.Checked := true;
      if FieldbyName('Day_dit_hop').Value <> null then
        CheckBox14.Checked := true;
    end;
end;

procedure TMA_Box.DBGridInit();
var i,j,cartons:integer;
    Box:String;
    objColumn:TColumnEh;
begin
    DataSource1.DataSet:=nil;


    with Query14 do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('select isnull(max(CAST(WOPR_Carton.Carton AS Integer)),0) from WOPR_Carton where DDBH='''+Edit3.text+''' and GXLB= '''+GXLB+''' ');
      Active:=true;
    end;
    cartons := Query14.Fields[0].AsInteger+1;

    with TmpQry do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('select DDBH,max (ctz) as box from YWBZPOS where 1=1');
      SQL.Add('and  ddbh ='''+Edit3.text+'''');
      SQL.Add('group by DDBH');
      Active:=true;
      if TmpQry.RecordCount>0 then
      begin
        //DBEdit15.Text:=TmpQry.fieldbyname('box').Value;
        for i:=cartons to TmpQry.fieldbyname('box').Value do
        begin
{          with Query14 do
          begin
            Active:=false;
            SQL.Clear;
            SQL.Add('select * from WOPR_Carton where DDBH='''+Edit3.text+''' and Carton='''+IntToStr(i)+''' and GXLB= '''+GXLB+''' ');
            Active:=true;
          end;
          if  Query14.RecordCount=0 then
          begin}
            Query14.Active:=false;
            Query14.SQL.Clear;
            Query14.SQL.Add('Insert into WOPR_Carton (SCDate,DDBH,Carton,CheckCarton,GXLB,DepID,USERID,USERDATE,YN) Values ');
            Query14.SQL.Add('('''+FormatDateTime('YYYY/MM/DD',Date())+''','''+Edit3.text+''','''+IntToStr(i)+''',0,'''+GXLB+''',''NULL'','''+main.Edit1.Text+''',GetDate(),1) ');
            //funcobj.WriteErrorLog(TmpQry.SQL.Text);
            Query14.ExecSQL();
//          end;          //
          Next;
        end;
      end;
      Active:=false;
    end;
    DataSource1.DataSet:=Query1;
    //btn1.Click;
end;

procedure TMA_Box.FormCreate(Sender: TObject);
begin
  Init();
  //DBGridInit();
  //BB1.Click;
end;

procedure TMA_Box.BB1Click(Sender: TObject);
var i,j,Day:integer;
    Col,kl, kt, k: integer;
    ID:string;
begin
   Init();
   with Query14 do
   begin
      Active:=false;
      SQL.Clear;
      SQL.Add('select * from DDZL where 1=1');
      if  Edit3.text <> '' then
        SQL.Add('and DDBH='''+Edit3.text+'''');
      if  Edit6.text <> '' then
        SQL.Add('and KHPO='''+Edit6.text+'''');
      Active:=true;
   end;
   if Query14.IsEmpty then
   begin
      exit;
   end else
   begin
     Edit3.text:= Query14.fieldbyname('DDBH').AsString;
     Edit6.text:= Query14.fieldbyname('KHPO').AsString;
   end;
   with Query14 do
   begin
      Active:=false;
      SQL.Clear;
      SQL.Add('select isnull(max(CAST(WOPR_Carton.Carton AS Integer)),0) from WOPR_Carton where DDBH='''+Edit3.text+''' and GXLB= '''+GXLB+''' ');
      Active:=true;
   end;
    with TmpQry do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('select DDBH,max (ctz) as box from YWBZPOS where 1=1');
      SQL.Add('and  ddbh ='''+Edit3.text+'''');
      SQL.Add('group by DDBH');
      Active:=true;
   end;
   if Query14.Fields[0].AsString <> TmpQry.Fields[1].AsString then
     DBGridInit();

   SelectDDZL();
   BB5.Enabled:=true;
   BB6.Enabled:=true;
   BitBtn2.Visible:=false;
   Edit5.Text := Edit3.Text;
   BitBtn5.Click;
   with Query1 do
   begin
     Active:=false;
     SQL.Clear;
     SQL.Add('select top 32 WOPR_Carton.*,CAST(WOPR_Carton.Carton AS Integer) Int_Score,WOPR_Carton.GXLB');
     SQL.Add('from WOPR_Carton ');
     SQL.Add('where DDBH='''+Edit3.text+''' and GXLB= '''+GXLB+'''');
     SQL.Add('order by Int_Score');
     //funcObj.WriteErrorLog(sql.Text);
     Active:=true;
     if Query1.RecordCount<32 then
     begin
       //DBGridEh13.Visible:=false;
       DBGridEh12.Visible:=false;
       DBGridEh11.Visible:=false;
       DBGridEh10.Visible:=false;
       DBGridEh9.Visible:=false;
       DBGridEh8.Visible:=false;
       DBGridEh7.Visible:=false;
       DBGridEh5.Visible:=false;
       DBGridEh4.Visible:=false;
       DBGridEh3.Visible:=false;
       DBGridEh2.Visible:=false;
       DBGridEh1.Visible:=false;
       DBGridEh6.Visible:=false;
       BitBtn1.Visible:=false;
     end;
     with Query1 do
     begin
      requestlive:=true;
      cachedupdates:=true;
      edit;
     end;
   end;
   Query1.Last;
   if Query1.fieldbyname('Int_Score').AsString <> '' then
   begin
     with Query2 do
     begin
       Active:=false;
       SQL.Clear;
       SQL.Add('select top 32 WOPR_Carton.*,CAST(WOPR_Carton.Carton AS Integer) Int_Score,WOPR_Carton.GXLB');
       SQL.Add('from WOPR_Carton ');
       SQL.Add('where DDBH='''+Edit3.text+''' and GXLB= '''+GXLB+''' and Carton > '+Query1.fieldbyname('Int_Score').AsString+'');
       SQL.Add('order by Int_Score');
       //funcObj.WriteErrorLog(sql.Text);
       Active:=true;
     end;
     if Query2.RecordCount=0 then
     begin
       DBGridEh12.Visible:=false;
       BitBtn1.Visible:=false;
     end;
     if Query2.RecordCount<32 then
     begin
       DBGridEh11.Visible:=false;
       DBGridEh10.Visible:=false;
       DBGridEh9.Visible:=false;
       DBGridEh8.Visible:=false;
       DBGridEh7.Visible:=false;
       DBGridEh5.Visible:=false;
       DBGridEh4.Visible:=false;
       DBGridEh3.Visible:=false;
       DBGridEh2.Visible:=false;
       DBGridEh1.Visible:=false;
       DBGridEh6.Visible:=false;
       BitBtn1.Visible:=false;
     end;
     with Query2 do
     begin
       requestlive:=true;
       cachedupdates:=true;
       edit;
     end;
   end else
   begin
    abort;
   end;
   Query2.Last;
   if Query2.fieldbyname('Int_Score').AsString <> '' then
   begin
     with Query3 do
     begin
       Active:=false;
       SQL.Clear;
       SQL.Add('select top 32 WOPR_Carton.*,CAST(WOPR_Carton.Carton AS Integer) Int_Score,WOPR_Carton.GXLB');
       SQL.Add('from WOPR_Carton ');
       SQL.Add('where DDBH='''+Edit3.text+''' and GXLB= '''+GXLB+''' and Carton > '+Query2.fieldbyname('Int_Score').AsString+'');
       SQL.Add('order by Int_Score');
       //funcObj.WriteErrorLog(sql.Text);
       Active:=true;
     end;
     if Query3.RecordCount=0 then
     begin
       DBGridEh11.Visible:=false;
       BitBtn1.Visible:=false;
     end;
     if Query3.RecordCount<32 then
     begin
       DBGridEh10.Visible:=false;
       DBGridEh9.Visible:=false;
       DBGridEh8.Visible:=false;
       DBGridEh7.Visible:=false;
       DBGridEh5.Visible:=false;
       DBGridEh4.Visible:=false;
       DBGridEh3.Visible:=false;
       DBGridEh2.Visible:=false;
       DBGridEh1.Visible:=false;
       DBGridEh6.Visible:=false;
       BitBtn1.Visible:=false;
     end;
     with Query3 do
     begin
       requestlive:=true;
       cachedupdates:=true;
       edit;
     end;
   end else
   begin
    abort;
   end;
   Query3.Last;
   if Query3.fieldbyname('Int_Score').AsString <> '' then
   begin
     with Query4 do
     begin
       Active:=false;
       SQL.Clear;
       SQL.Add('select top 32 WOPR_Carton.*,CAST(WOPR_Carton.Carton AS Integer) Int_Score,WOPR_Carton.GXLB');
       SQL.Add('from WOPR_Carton ');
       SQL.Add('where DDBH='''+Edit3.text+''' and GXLB= '''+GXLB+''' and Carton > '+Query3.fieldbyname('Int_Score').AsString+'');
       SQL.Add('order by Int_Score');
       //funcObj.WriteErrorLog(sql.Text);
       Active:=true;
     end;
     if Query4.RecordCount=0 then
     begin
       DBGridEh10.Visible:=false;
       BitBtn1.Visible:=false;
     end;
     if Query4.RecordCount<32 then
     begin
       DBGridEh9.Visible:=false;
       DBGridEh8.Visible:=false;
       DBGridEh7.Visible:=false;
       DBGridEh5.Visible:=false;
       DBGridEh4.Visible:=false;
       DBGridEh3.Visible:=false;
       DBGridEh2.Visible:=false;
       DBGridEh1.Visible:=false;
       DBGridEh6.Visible:=false;
       BitBtn1.Visible:=false;
     end;
     with Query4 do
     begin
       requestlive:=true;
       cachedupdates:=true;
       edit;
     end;
   end else
   begin
    abort;
   end;
   Query4.Last;
   if Query4.fieldbyname('Int_Score').AsString <> '' then
   begin
     with Query5 do
     begin
       Active:=false;
       SQL.Clear;
       SQL.Add('select top 32 WOPR_Carton.*,CAST(WOPR_Carton.Carton AS Integer) Int_Score,WOPR_Carton.GXLB');
       SQL.Add('from WOPR_Carton ');
       SQL.Add('where DDBH='''+Edit3.text+''' and GXLB= '''+GXLB+''' and Carton > '+Query4.fieldbyname('Int_Score').AsString+'');
       SQL.Add('order by Int_Score');
       //funcObj.WriteErrorLog(sql.Text);
       Active:=true;
     end;
     if Query5.RecordCount=0 then
     begin
       DBGridEh9.Visible:=false;
       BitBtn1.Visible:=false;
     end;
     if Query5.RecordCount<32 then
     begin
       DBGridEh8.Visible:=false;
       DBGridEh7.Visible:=false;
       DBGridEh5.Visible:=false;
       DBGridEh4.Visible:=false;
       DBGridEh3.Visible:=false;
       DBGridEh2.Visible:=false;
       DBGridEh1.Visible:=false;
       DBGridEh6.Visible:=false;
       BitBtn1.Visible:=false;
     end;
     with Query5 do
     begin
       requestlive:=true;
       cachedupdates:=true;
       edit;
     end;
   end else
   begin
    abort;
   end;

   Query5.Last;
   if Query5.fieldbyname('Int_Score').AsString <> '' then
   begin
     with Query6 do
     begin
       Active:=false;
       SQL.Clear;
       SQL.Add('select top 32 WOPR_Carton.*,CAST(WOPR_Carton.Carton AS Integer) Int_Score,WOPR_Carton.GXLB');
       SQL.Add('from WOPR_Carton ');
       SQL.Add('where DDBH='''+Edit3.text+''' and GXLB= '''+GXLB+''' and Carton > '+Query5.fieldbyname('Int_Score').AsString+'');
       SQL.Add('order by Int_Score');
       //funcObj.WriteErrorLog(sql.Text);
       Active:=true;
     end;
     with Query6 do
     begin
       requestlive:=true;
       cachedupdates:=true;
       edit;
     end;
     if Query6.RecordCount=0 then
     begin
       DBGridEh8.Visible:=false;
       BitBtn1.Visible:=false;
     end;
     if Query6.RecordCount<32 then
     begin
       DBGridEh7.Visible:=false;
       DBGridEh5.Visible:=false;
       DBGridEh4.Visible:=false;
       DBGridEh3.Visible:=false;
       DBGridEh2.Visible:=false;
       DBGridEh1.Visible:=false;
       DBGridEh6.Visible:=false;
       BitBtn1.Visible:=false;
     end;
   end else
   begin
    abort;
   end;
   Query6.Last;
   if Query6.fieldbyname('Int_Score').AsString <> '' then
   begin
     with Query7 do
     begin
       Active:=false;
       SQL.Clear;
       SQL.Add('select top 32 WOPR_Carton.*,CAST(WOPR_Carton.Carton AS Integer) Int_Score,WOPR_Carton.GXLB');
       SQL.Add('from WOPR_Carton ');
       SQL.Add('where DDBH='''+Edit3.text+''' and GXLB= '''+GXLB+''' and Carton > '+Query6.fieldbyname('Int_Score').AsString+'');
       SQL.Add('order by Int_Score');
       //funcObj.WriteErrorLog(sql.Text);
       Active:=true;
     end;
     if Query7.RecordCount=0 then
     begin
       DBGridEh7.Visible:=false;
       BitBtn1.Visible:=false;
     end;
     if Query7.RecordCount<32 then
     begin
       DBGridEh5.Visible:=false;
       DBGridEh4.Visible:=false;
       DBGridEh3.Visible:=false;
       DBGridEh2.Visible:=false;
       DBGridEh1.Visible:=false;
       DBGridEh6.Visible:=false;
       BitBtn1.Visible:=false;
     end;
     with Query7 do
     begin
       requestlive:=true;
       cachedupdates:=true;
       edit;
     end;
   end else
   begin
    abort;
   end;
   Query7.Last;
   if Query7.fieldbyname('Int_Score').AsString <> '' then
   begin
     with Query8 do
     begin
       Active:=false;
       SQL.Clear;
       SQL.Add('select top 32 WOPR_Carton.*,CAST(WOPR_Carton.Carton AS Integer) Int_Score,WOPR_Carton.GXLB');
       SQL.Add('from WOPR_Carton ');
       SQL.Add('where DDBH='''+Edit3.text+''' and GXLB= '''+GXLB+''' and Carton > '+Query7.fieldbyname('Int_Score').AsString+'');
       SQL.Add('order by Int_Score');
       //funcObj.WriteErrorLog(sql.Text);
       Active:=true;
     end;
     if Query8.RecordCount=0 then
     begin
       DBGridEh5.Visible:=false;
       BitBtn1.Visible:=false;
     end;
     if Query8.RecordCount<32 then
     begin
       DBGridEh4.Visible:=false;
       DBGridEh3.Visible:=false;
       DBGridEh2.Visible:=false;
       DBGridEh1.Visible:=false;
       DBGridEh6.Visible:=false;
       BitBtn1.Visible:=false;
     end;
     with Query8 do
     begin
       requestlive:=true;
       cachedupdates:=true;
       edit;
     end;
   end else
   begin
    abort;
   end;
   Query8.Last;
   if Query8.fieldbyname('Int_Score').AsString <> '' then
   begin
     with Query9 do
     begin
       Active:=false;
       SQL.Clear;
       SQL.Add('select top 32 WOPR_Carton.*,CAST(WOPR_Carton.Carton AS Integer) Int_Score,WOPR_Carton.GXLB');
       SQL.Add('from WOPR_Carton ');
       SQL.Add('where DDBH='''+Edit3.text+''' and GXLB= '''+GXLB+''' and Carton > '+Query8.fieldbyname('Int_Score').AsString+'');
       SQL.Add('order by Int_Score');
       //funcObj.WriteErrorLog(sql.Text);
       Active:=true;
     end;
     if Query9.RecordCount=0 then
     begin
       DBGridEh4.Visible:=false;
       BitBtn1.Visible:=false;
     end;
     if Query9.RecordCount<32 then
     begin
       DBGridEh3.Visible:=false;
       DBGridEh2.Visible:=false;
       DBGridEh1.Visible:=false;
       DBGridEh6.Visible:=false;
       BitBtn1.Visible:=false;
     end;
     with Query9 do
     begin
       requestlive:=true;
       cachedupdates:=true;
       edit;
     end;
   end else
   begin
    abort;
   end;

   Query9.Last;
   if Query9.fieldbyname('Int_Score').AsString <> '' then
   begin
     with Query10 do
     begin
       Active:=false;
       SQL.Clear;
       SQL.Add('select top 32 WOPR_Carton.*,CAST(WOPR_Carton.Carton AS Integer) Int_Score,WOPR_Carton.GXLB');
       SQL.Add('from WOPR_Carton ');
       SQL.Add('where DDBH='''+Edit3.text+''' and GXLB= '''+GXLB+''' and Carton > '+Query9.fieldbyname('Int_Score').AsString+'');
       SQL.Add('order by Int_Score');
       //funcObj.WriteErrorLog(sql.Text);
       Active:=true;
     end;
     if Query10.RecordCount=0 then
     begin
       DBGridEh3.Visible:=false;
       BitBtn1.Visible:=false;
     end;
     if Query10.RecordCount<32 then
     begin
       DBGridEh2.Visible:=false;
       DBGridEh1.Visible:=false;
       DBGridEh6.Visible:=false;
       BitBtn1.Visible:=false;
     end;
     with Query10 do
     begin
       requestlive:=true;
       cachedupdates:=true;
       edit;
     end;
   end else
   begin
    abort;
   end;
   Query10.Last;
   if Query10.fieldbyname('Int_Score').AsString <> '' then
   begin
     with Query11 do
     begin
       Active:=false;
       SQL.Clear;
       SQL.Add('select top 32 WOPR_Carton.*,CAST(WOPR_Carton.Carton AS Integer) Int_Score,WOPR_Carton.GXLB');
       SQL.Add('from WOPR_Carton ');
       SQL.Add('where DDBH='''+Edit3.text+''' and GXLB= '''+GXLB+''' and Carton > '+Query10.fieldbyname('Int_Score').AsString+'');
       SQL.Add('order by Int_Score');
       //funcObj.WriteErrorLog(sql.Text);
       Active:=true;
     end;
     if Query10.RecordCount=0 then
     begin
       DBGridEh2.Visible:=false;
       BitBtn1.Visible:=false;
     end;
     if Query11.RecordCount<32 then
     begin
       DBGridEh1.Visible:=false;
       DBGridEh6.Visible:=false;
       BitBtn1.Visible:=false;
     end;
     with Query11 do
     begin
       requestlive:=true;
       cachedupdates:=true;
       edit;
     end;
   end else
   begin
    abort;
   end;

   Query11.Last;
   if Query11.fieldbyname('Int_Score').AsString <> '' then
   begin
     with Query12 do
     begin
       Active:=false;
       SQL.Clear;
       SQL.Add('select top 32 WOPR_Carton.*,CAST(WOPR_Carton.Carton AS Integer) Int_Score,WOPR_Carton.GXLB');
       SQL.Add('from WOPR_Carton ');
       SQL.Add('where DDBH='''+Edit3.text+''' and GXLB= '''+GXLB+''' and Carton > '+Query11.fieldbyname('Int_Score').AsString+'');
       SQL.Add('order by Int_Score');
       //funcObj.WriteErrorLog(sql.Text);
       Active:=true;
     end;
     if Query11.RecordCount=0 then
     begin
       DBGridEh1.Visible:=false;
       BitBtn1.Visible:=false;
     end;
     if Query11.RecordCount<32 then
     begin
       DBGridEh6.Visible:=false;
       BitBtn1.Visible:=false;
     end;
     with Query12 do
     begin
       requestlive:=true;
       cachedupdates:=true;
       edit;
     end;
   end else
   begin
    abort;
   end;
   Query12.Last;
   if Query12.fieldbyname('Int_Score').AsString <> '' then
   begin
     with Query13 do
     begin
       Active:=false;
       SQL.Clear;
       SQL.Add('select top 32 WOPR_Carton.*,CAST(WOPR_Carton.Carton AS Integer) Int_Score,WOPR_Carton.GXLB');
       SQL.Add('from WOPR_Carton ');
       SQL.Add('where DDBH='''+Edit3.text+''' and GXLB= '''+GXLB+''' and Carton > '+Query12.fieldbyname('Int_Score').AsString+'');
       SQL.Add('order by Int_Score');
       //funcObj.WriteErrorLog(sql.Text);
       Active:=true;
     end;
     if Query13.RecordCount=0 then
     begin
       DBGridEh6.Visible:=false;
       BitBtn1.Visible:=false;
     end;
     with Query13 do
     begin
       requestlive:=true;
       cachedupdates:=true;
       edit;
     end;
   end else
   begin
    BitBtn1.Visible:=false;
    abort;
   end;
end;


procedure TMA_Box.BB5Click(Sender: TObject);
var i,j:integer;
    Siz:string;
begin
  try
    Query1.first;
    for i:=1 to Query1.RecordCount do
    begin
      case Query1.updatestatus of
        usmodified:
        begin
            if Query1.FieldByName('CheckCarton').AsString='True' then
            begin
                TmpQry.Active:=false;
                TmpQry.SQL.Clear;
                TmpQry.SQL.Add('update WOPR_Carton set CheckCarton=1,SCdate='''+FormatDateTime('YYYY/MM/DD',Date())+''',userid='''+main.Edit1.Text+''',USERDATE='''+FormatDateTime('YYYY/MM/DD HH:MM:SS',Now)+'''');
                //TmpQry.SQL.Add('where DDBH='''+Edit3.text+''' and Carton='''+IntToStr(i)+''' and GXLB= '''+GXLB+'''');
                TmpQry.SQL.Add('where DDBH='''+Edit3.text+''' and Carton='''+IntToStr(Query1.FieldByName('Int_Score').AsInteger)+''' and GXLB= '''+GXLB+'''');
                //funcobj.WriteErrorLog(TmpQry.SQL.Text);
                TmpQry.ExecSQL();
            end;
        end;
    end;
    Query1.next;
    end;

    if Query1.fieldbyname('Int_Score').AsString <> '' then
    begin
      Query2.first;
      j:=Query1.fieldbyname('Int_Score').Value+1;
      for i:=j to Query2.RecordCount+Query1.fieldbyname('Int_Score').Value do
      begin
        case Query2.updatestatus of
          usmodified:
          begin
              if Query2.FieldByName('CheckCarton').AsString='True' then
              begin
                  TmpQry.Active:=false;
                  TmpQry.SQL.Clear;
                  TmpQry.SQL.Add('update WOPR_Carton set CheckCarton=1,SCdate='''+FormatDateTime('YYYY/MM/DD',Date())+''',userid='''+main.Edit1.Text+''',USERDATE='''+FormatDateTime('YYYY/MM/DD HH:MM:SS',Now)+'''');
                  TmpQry.SQL.Add('where DDBH='''+Edit3.text+''' and Carton='''+IntToStr(i)+''' and GXLB= '''+GXLB+'''');
                  //funcobj.WriteErrorLog(TmpQry.SQL.Text);
                  TmpQry.ExecSQL();
              end;
          end;
        end;
      Query2.next;
      end;
    end;

    if Query2.fieldbyname('Int_Score').AsString <> '' then
    begin
      Query3.first;
      j:=Query2.fieldbyname('Int_Score').Value+1;
      for i:=j to Query3.RecordCount+Query2.fieldbyname('Int_Score').Value do
      begin
        case Query3.updatestatus of
          usmodified:
          begin
              if Query3.FieldByName('CheckCarton').AsString='True' then
              begin
                  TmpQry.Active:=false;
                  TmpQry.SQL.Clear;
                  TmpQry.SQL.Add('update WOPR_Carton set CheckCarton=1,SCdate='''+FormatDateTime('YYYY/MM/DD',Date())+''',userid='''+main.Edit1.Text+''',USERDATE='''+FormatDateTime('YYYY/MM/DD HH:MM:SS',Now)+'''');
                  TmpQry.SQL.Add('where DDBH='''+Edit3.text+''' and Carton='''+IntToStr(i)+''' and GXLB= '''+GXLB+'''');
                  //funcobj.WriteErrorLog(TmpQry.SQL.Text);
                  TmpQry.ExecSQL();
              end;
          end;
        end;
      Query3.next;
      end;
    end;

    if Query3.fieldbyname('Int_Score').AsString <> '' then
    begin
      Query4.first;
      j:=Query3.fieldbyname('Int_Score').Value+1;
      for i:=j to Query4.RecordCount+Query3.fieldbyname('Int_Score').Value do
      begin
        case Query4.updatestatus of
          usmodified:
          begin
              if Query4.FieldByName('CheckCarton').AsString='True' then
              begin
                  TmpQry.Active:=false;
                  TmpQry.SQL.Clear;
                  TmpQry.SQL.Add('update WOPR_Carton set CheckCarton=1,SCdate='''+FormatDateTime('YYYY/MM/DD',Date())+''',userid='''+main.Edit1.Text+''',USERDATE='''+FormatDateTime('YYYY/MM/DD HH:MM:SS',Now)+'''');
                  TmpQry.SQL.Add('where DDBH='''+Edit3.text+''' and Carton='''+IntToStr(i)+''' and GXLB= '''+GXLB+'''');
                  //funcobj.WriteErrorLog(TmpQry.SQL.Text);
                  TmpQry.ExecSQL();
              end;
          end;
        end;
      Query4.next;
      end;
    end;

    if Query4.fieldbyname('Int_Score').AsString <> '' then
    begin
      Query5.first;
      j:=Query4.fieldbyname('Int_Score').Value+1;
      for i:=j to Query5.RecordCount+Query4.fieldbyname('Int_Score').Value do
      begin
        case Query5.updatestatus of
          usmodified:
          begin
              if Query5.FieldByName('CheckCarton').AsString='True' then
              begin
                  TmpQry.Active:=false;
                  TmpQry.SQL.Clear;
                  TmpQry.SQL.Add('update WOPR_Carton set CheckCarton=1,SCdate='''+FormatDateTime('YYYY/MM/DD',Date())+''',userid='''+main.Edit1.Text+''',USERDATE='''+FormatDateTime('YYYY/MM/DD HH:MM:SS',Now)+'''');
                  TmpQry.SQL.Add('where DDBH='''+Edit3.text+''' and Carton='''+IntToStr(i)+''' and GXLB= '''+GXLB+'''');
                  //funcobj.WriteErrorLog(TmpQry.SQL.Text);
                  TmpQry.ExecSQL();
              end;
          end;
        end;
      Query5.next;
      end;
    end;

    if Query5.fieldbyname('Int_Score').AsString <> '' then
    begin
      Query6.first;
      j:=Query5.fieldbyname('Int_Score').Value+1;
      for i:=j to Query6.RecordCount+Query5.fieldbyname('Int_Score').Value do
      begin
        case Query6.updatestatus of
          usmodified:
          begin
              if Query6.FieldByName('CheckCarton').AsString='True' then
              begin
                  TmpQry.Active:=false;
                  TmpQry.SQL.Clear;
                  TmpQry.SQL.Add('update WOPR_Carton set CheckCarton=1,SCdate='''+FormatDateTime('YYYY/MM/DD',Date())+''',userid='''+main.Edit1.Text+''',USERDATE='''+FormatDateTime('YYYY/MM/DD HH:MM:SS',Now)+'''');
                  TmpQry.SQL.Add('where DDBH='''+Edit3.text+''' and Carton='''+IntToStr(i)+''' and GXLB= '''+GXLB+'''');
                  //funcobj.WriteErrorLog(TmpQry.SQL.Text);
                  TmpQry.ExecSQL();
              end;
          end;
        end;
      Query6.next;
      end;
    end;

    if Query6.fieldbyname('Int_Score').AsString <> '' then
    begin
      Query7.first;
      j:=Query6.fieldbyname('Int_Score').Value+1;
      for i:=j to Query7.RecordCount+Query6.fieldbyname('Int_Score').Value do
      begin
        case Query7.updatestatus of
          usmodified:
          begin
              if Query7.FieldByName('CheckCarton').AsString='True' then
              begin
                  TmpQry.Active:=false;
                  TmpQry.SQL.Clear;
                  TmpQry.SQL.Add('update WOPR_Carton set CheckCarton=1,SCdate='''+FormatDateTime('YYYY/MM/DD',Date())+''',userid='''+main.Edit1.Text+''',USERDATE='''+FormatDateTime('YYYY/MM/DD HH:MM:SS',Now)+'''');
                  TmpQry.SQL.Add('where DDBH='''+Edit3.text+''' and Carton='''+IntToStr(i)+''' and GXLB= '''+GXLB+'''');
                  //funcobj.WriteErrorLog(TmpQry.SQL.Text);
                  TmpQry.ExecSQL();
              end;
          end;
        end;
      Query7.next;
      end;
    end;

    if Query7.fieldbyname('Int_Score').AsString <> '' then
    begin
      Query8.first;
      j:=Query7.fieldbyname('Int_Score').Value+1;
      for i:=j to Query8.RecordCount+Query7.fieldbyname('Int_Score').Value do
      begin
        case Query8.updatestatus of
          usmodified:
          begin
              if Query8.FieldByName('CheckCarton').AsString='True' then
              begin
                  TmpQry.Active:=false;
                  TmpQry.SQL.Clear;
                  TmpQry.SQL.Add('update WOPR_Carton set CheckCarton=1,SCdate='''+FormatDateTime('YYYY/MM/DD',Date())+''',userid='''+main.Edit1.Text+''',USERDATE='''+FormatDateTime('YYYY/MM/DD HH:MM:SS',Now)+'''');
                  TmpQry.SQL.Add('where DDBH='''+Edit3.text+''' and Carton='''+IntToStr(i)+''' and GXLB= '''+GXLB+'''');
                  //funcobj.WriteErrorLog(TmpQry.SQL.Text);
                  TmpQry.ExecSQL();
              end;
          end;
        end;
      Query8.next;
      end;
    end;

    if Query8.fieldbyname('Int_Score').AsString <> '' then
    begin
      Query9.first;
      j:=Query8.fieldbyname('Int_Score').Value+1;
      for i:=j to Query9.RecordCount+Query8.fieldbyname('Int_Score').Value do
      begin
        case Query9.updatestatus of
          usmodified:
          begin
              if Query9.FieldByName('CheckCarton').AsString='True' then
              begin
                  TmpQry.Active:=false;
                  TmpQry.SQL.Clear;
                  TmpQry.SQL.Add('update WOPR_Carton set CheckCarton=1,SCdate='''+FormatDateTime('YYYY/MM/DD',Date())+''',userid='''+main.Edit1.Text+''',USERDATE='''+FormatDateTime('YYYY/MM/DD HH:MM:SS',Now)+'''');
                  TmpQry.SQL.Add('where DDBH='''+Edit3.text+''' and Carton='''+IntToStr(i)+''' and GXLB= '''+GXLB+'''');
                  //funcobj.WriteErrorLog(TmpQry.SQL.Text);
                  TmpQry.ExecSQL();
              end;
          end;
        end;
      Query9.next;
      end;
    end;

    if Query9.fieldbyname('Int_Score').AsString <> '' then
    begin
      Query10.first;
      j:=Query9.fieldbyname('Int_Score').Value+1;
      for i:=j to Query10.RecordCount+Query9.fieldbyname('Int_Score').Value do
      begin
        case Query10.updatestatus of
          usmodified:
          begin
              if Query10.FieldByName('CheckCarton').AsString='True' then
              begin
                  TmpQry.Active:=false;
                  TmpQry.SQL.Clear;
                  TmpQry.SQL.Add('update WOPR_Carton set CheckCarton=1,SCdate='''+FormatDateTime('YYYY/MM/DD',Date())+''',userid='''+main.Edit1.Text+''',USERDATE='''+FormatDateTime('YYYY/MM/DD HH:MM:SS',Now)+'''');
                  TmpQry.SQL.Add('where DDBH='''+Edit3.text+''' and Carton='''+IntToStr(i)+''' and GXLB= '''+GXLB+'''');
                  //funcobj.WriteErrorLog(TmpQry.SQL.Text);
                  TmpQry.ExecSQL();
              end;
          end;
        end;
      Query10.next;
      end;
    end;

    if Query10.fieldbyname('Int_Score').AsString <> '' then
    begin
      Query11.first;
      j:=Query10.fieldbyname('Int_Score').Value+1;
      for i:=j to Query11.RecordCount+Query10.fieldbyname('Int_Score').Value do
      begin
        case Query11.updatestatus of
          usmodified:
          begin
              if Query11.FieldByName('CheckCarton').AsString='True' then
              begin
                  TmpQry.Active:=false;
                  TmpQry.SQL.Clear;
                  TmpQry.SQL.Add('update WOPR_Carton set CheckCarton=1,SCdate='''+FormatDateTime('YYYY/MM/DD',Date())+''',userid='''+main.Edit1.Text+''',USERDATE='''+FormatDateTime('YYYY/MM/DD HH:MM:SS',Now)+'''');
                  TmpQry.SQL.Add('where DDBH='''+Edit3.text+''' and Carton='''+IntToStr(i)+''' and GXLB= '''+GXLB+'''');
                  //funcobj.WriteErrorLog(TmpQry.SQL.Text);
                  TmpQry.ExecSQL();
              end;
          end;
        end;
      Query11.next;
      end;
    end;

    if Query11.fieldbyname('Int_Score').AsString <> '' then
    begin
      Query12.first;
      j:=Query11.fieldbyname('Int_Score').Value+1;
      for i:=j to Query12.RecordCount+Query11.fieldbyname('Int_Score').Value do
      begin
        case Query12.updatestatus of
          usmodified:
          begin
              if Query12.FieldByName('CheckCarton').AsString='True' then
              begin
                  TmpQry.Active:=false;
                  TmpQry.SQL.Clear;
                  TmpQry.SQL.Add('update WOPR_Carton set CheckCarton=1,SCdate='''+FormatDateTime('YYYY/MM/DD',Date())+''',userid='''+main.Edit1.Text+''',USERDATE='''+FormatDateTime('YYYY/MM/DD HH:MM:SS',Now)+'''');
                  TmpQry.SQL.Add('where DDBH='''+Edit3.text+''' and Carton='''+IntToStr(i)+''' and GXLB= '''+GXLB+'''');
                  //funcobj.WriteErrorLog(TmpQry.SQL.Text);
                  TmpQry.ExecSQL();
              end;
          end;
        end;
      Query12.next;
      end;
    end;

    if Query12.fieldbyname('Int_Score').AsString <> '' then
    begin
      Query13.first;
      j:=Query12.fieldbyname('Int_Score').Value+1;
      for i:=j to Query13.RecordCount+Query12.fieldbyname('Int_Score').Value do
      begin
        case Query13.updatestatus of
          usmodified:
          begin
              if Query13.FieldByName('CheckCarton').AsString='True' then
              begin
                  TmpQry.Active:=false;
                  TmpQry.SQL.Clear;
                  TmpQry.SQL.Add('update WOPR_Carton set CheckCarton=1,SCdate='''+FormatDateTime('YYYY/MM/DD',Date())+''',userid='''+main.Edit1.Text+''',USERDATE='''+FormatDateTime('YYYY/MM/DD HH:MM:SS',Now)+'''');
                  TmpQry.SQL.Add('where DDBH='''+Edit3.text+''' and Carton='''+IntToStr(i)+''' and GXLB= '''+GXLB+'''');
                  //funcobj.WriteErrorLog(TmpQry.SQL.Text);
                  TmpQry.ExecSQL();
              end;
          end;
        end;
      Query13.next;
      end;
    end;
    showmessage('Succeed.');
    BB5.Enabled:=true;
    BB6.Enabled:=true;
    except
      Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
    end;
end;

procedure TMA_Box.BB6Click(Sender: TObject);
begin
  with Query1 do
  begin
    active:=false;
    requestlive:=false;
    cachedupdates:=false;
    active:=true;
  end;
  bb5.enabled:=false;
  bb6.enabled:=false;
end;

procedure TMA_Box.Edit2Click(Sender: TObject);
begin
  BB1.Click;
end;

procedure TMA_Box.Edit1Click(Sender: TObject);
begin
  BB1.Click;
end;

procedure TMA_Box.BitBtn1Click(Sender: TObject);
var i,j,Day:integer;
    ACol,kl, kt, k: integer;
    ID:string;
begin
   DBGridEh13.Visible:=true;
   DBGridEh12.Visible:=true;
   DBGridEh11.Visible:=true;
   DBGridEh10.Visible:=true;
   DBGridEh9.Visible:=true;
   DBGridEh8.Visible:=true;
   DBGridEh7.Visible:=true;
   DBGridEh5.Visible:=true;
   DBGridEh4.Visible:=true;
   DBGridEh3.Visible:=true;
   DBGridEh2.Visible:=true;
   DBGridEh1.Visible:=true;
   DBGridEh6.Visible:=true;
   BitBtn2.Visible:=true;
   Query13.Last;
   if Query13.RecordCount>0 then
   begin
     with Query1 do
     begin
       Active:=false;
       SQL.Clear;
       SQL.Add('select top 32 WOPR_Carton.*,CAST(WOPR_Carton.Carton AS Integer) Int_Score,WOPR_Carton.GXLB');
       SQL.Add('from WOPR_Carton ');
       SQL.Add('where DDBH='''+Edit3.text+''' and GXLB= '''+GXLB+''' and Carton > '+Query13.fieldbyname('Int_Score').AsString+'');
       SQL.Add('order by Int_Score');
       //funcObj.WriteErrorLog(sql.Text);
       Active:=true;
     end;
     if Query1.RecordCount<32 then
     begin
       //DBGridEh13.Visible:=false;
       DBGridEh12.Visible:=false;
       DBGridEh11.Visible:=false;
       DBGridEh10.Visible:=false;
       DBGridEh9.Visible:=false;
       DBGridEh8.Visible:=false;
       DBGridEh7.Visible:=false;
       DBGridEh5.Visible:=false;
       DBGridEh4.Visible:=false;
       DBGridEh3.Visible:=false;
       DBGridEh2.Visible:=false;
       DBGridEh1.Visible:=false;
       DBGridEh6.Visible:=false;
       BitBtn1.Visible:=false;
       abort;
     end;
   end;

   if Query1.RecordCount>0 then
   begin
     Query1.Last;
     with Query2 do
     begin
       Active:=false;
       SQL.Clear;
       SQL.Add('select top 32 WOPR_Carton.*,CAST(WOPR_Carton.Carton AS Integer) Int_Score,WOPR_Carton.GXLB');
       SQL.Add('from WOPR_Carton ');
       SQL.Add('where DDBH='''+Edit3.text+''' and GXLB= '''+GXLB+''' and Carton > '+Query1.fieldbyname('Int_Score').AsString+'');
       SQL.Add('order by Int_Score');
       //funcObj.WriteErrorLog(sql.Text);
       Active:=true;
     end;
     if Query2.RecordCount<32 then
     begin
       DBGridEh11.Visible:=false;
       DBGridEh10.Visible:=false;
       DBGridEh9.Visible:=false;
       DBGridEh8.Visible:=false;
       DBGridEh7.Visible:=false;
       DBGridEh5.Visible:=false;
       DBGridEh4.Visible:=false;
       DBGridEh3.Visible:=false;
       DBGridEh2.Visible:=false;
       DBGridEh1.Visible:=false;
       DBGridEh6.Visible:=false;
       BitBtn1.Visible:=false;
       abort;
     end;
   end;
   if Query2.RecordCount>0 then
   begin
     Query2.Last;
     with Query3 do
     begin
       Active:=false;
       SQL.Clear;
       SQL.Add('select top 32 WOPR_Carton.*,CAST(WOPR_Carton.Carton AS Integer) Int_Score,WOPR_Carton.GXLB');
       SQL.Add('from WOPR_Carton ');
       SQL.Add('where DDBH='''+Edit3.text+''' and GXLB= '''+GXLB+''' and Carton > '+Query2.fieldbyname('Int_Score').AsString+'');
       SQL.Add('order by Int_Score');
       //funcObj.WriteErrorLog(sql.Text);
       Active:=true;
     end;
     if Query3.RecordCount<32 then
     begin
       DBGridEh10.Visible:=false;
       DBGridEh9.Visible:=false;
       DBGridEh8.Visible:=false;
       DBGridEh7.Visible:=false;
       DBGridEh5.Visible:=false;
       DBGridEh4.Visible:=false;
       DBGridEh3.Visible:=false;
       DBGridEh2.Visible:=false;
       DBGridEh1.Visible:=false;
       DBGridEh6.Visible:=false;
       BitBtn1.Visible:=false;
       abort;
     end;
   end;

   if Query3.RecordCount>0 then
   begin
     Query3.Last;
     with Query4 do
     begin
       Active:=false;
       SQL.Clear;
       SQL.Add('select top 32 WOPR_Carton.*,CAST(WOPR_Carton.Carton AS Integer) Int_Score,WOPR_Carton.GXLB');
       SQL.Add('from WOPR_Carton ');
       SQL.Add('where DDBH='''+Edit3.text+''' and GXLB= '''+GXLB+''' and Carton > '+Query3.fieldbyname('Int_Score').AsString+'');
       SQL.Add('order by Int_Score');
       //funcObj.WriteErrorLog(sql.Text);
       Active:=true;
     end;
     if Query4.RecordCount<32 then
     begin
       DBGridEh9.Visible:=false;
       DBGridEh8.Visible:=false;
       DBGridEh7.Visible:=false;
       DBGridEh5.Visible:=false;
       DBGridEh4.Visible:=false;
       DBGridEh3.Visible:=false;
       DBGridEh2.Visible:=false;
       DBGridEh1.Visible:=false;
       DBGridEh6.Visible:=false;
       BitBtn1.Visible:=false;
       abort;
     end;
   end;

   if Query4.RecordCount>0 then
   begin
     Query4.Last;
     with Query5 do
     begin
       Active:=false;
       SQL.Clear;
       SQL.Add('select top 32 WOPR_Carton.*,CAST(WOPR_Carton.Carton AS Integer) Int_Score,WOPR_Carton.GXLB');
       SQL.Add('from WOPR_Carton ');
       SQL.Add('where DDBH='''+Edit3.text+''' and GXLB= '''+GXLB+''' and Carton > '+Query4.fieldbyname('Int_Score').AsString+'');
       SQL.Add('order by Int_Score');
       //funcObj.WriteErrorLog(sql.Text);
       Active:=true;
     end;
     if Query5.RecordCount<32 then
     begin
       DBGridEh8.Visible:=false;
       DBGridEh7.Visible:=false;
       DBGridEh5.Visible:=false;
       DBGridEh4.Visible:=false;
       DBGridEh3.Visible:=false;
       DBGridEh2.Visible:=false;
       DBGridEh1.Visible:=false;
       DBGridEh6.Visible:=false;
       BitBtn1.Visible:=false;
       abort;
     end;
   end;

   if Query5.RecordCount>0 then
   begin
     Query5.Last;
     with Query6 do
     begin
       Active:=false;
       SQL.Clear;
       SQL.Add('select top 32 WOPR_Carton.*,CAST(WOPR_Carton.Carton AS Integer) Int_Score,WOPR_Carton.GXLB');
       SQL.Add('from WOPR_Carton ');
       SQL.Add('where DDBH='''+Edit3.text+''' and GXLB= '''+GXLB+''' and Carton > '+Query5.fieldbyname('Int_Score').AsString+'');
       SQL.Add('order by Int_Score');
       //funcObj.WriteErrorLog(sql.Text);
       Active:=true;
     end;
     if Query6.RecordCount<32 then
     begin
       DBGridEh7.Visible:=false;
       DBGridEh5.Visible:=false;
       DBGridEh4.Visible:=false;
       DBGridEh3.Visible:=false;
       DBGridEh2.Visible:=false;
       DBGridEh1.Visible:=false;
       DBGridEh6.Visible:=false;
       BitBtn1.Visible:=false;
       abort;
     end;
   end;

   if Query6.RecordCount>0 then
   begin
     Query6.Last;
     with Query7 do
     begin
       Active:=false;
       SQL.Clear;
       SQL.Add('select top 32 WOPR_Carton.*,CAST(WOPR_Carton.Carton AS Integer) Int_Score,WOPR_Carton.GXLB');
       SQL.Add('from WOPR_Carton ');
       SQL.Add('where DDBH='''+Edit3.text+''' and GXLB= '''+GXLB+''' and Carton > '+Query6.fieldbyname('Int_Score').AsString+'');
       SQL.Add('order by Int_Score');
       //funcObj.WriteErrorLog(sql.Text);
       Active:=true;
     end;
     if Query7.RecordCount<32 then
     begin
       DBGridEh5.Visible:=false;
       DBGridEh4.Visible:=false;
       DBGridEh3.Visible:=false;
       DBGridEh2.Visible:=false;
       DBGridEh1.Visible:=false;
       DBGridEh6.Visible:=false;
       BitBtn1.Visible:=false;
       abort;
     end;
   end;

   if Query7.RecordCount>0 then
   begin
     Query7.Last;
     with Query8 do
     begin
       Active:=false;
       SQL.Clear;
       SQL.Add('select top 32 WOPR_Carton.*,CAST(WOPR_Carton.Carton AS Integer) Int_Score,WOPR_Carton.GXLB');
       SQL.Add('from WOPR_Carton ');
       SQL.Add('where DDBH='''+Edit3.text+''' and GXLB= '''+GXLB+''' and Carton > '+Query7.fieldbyname('Int_Score').AsString+'');
       SQL.Add('order by Int_Score');
       //funcObj.WriteErrorLog(sql.Text);
       Active:=true;
     end;
     if Query8.RecordCount<32 then
     begin
       DBGridEh4.Visible:=false;
       DBGridEh3.Visible:=false;
       DBGridEh2.Visible:=false;
       DBGridEh1.Visible:=false;
       DBGridEh6.Visible:=false;
       BitBtn1.Visible:=false;
       abort;
     end;
   end;

   if Query8.RecordCount>0 then
   begin
     Query8.Last;
     with Query9 do
     begin
       Active:=false;
       SQL.Clear;
       SQL.Add('select top 32 WOPR_Carton.*,CAST(WOPR_Carton.Carton AS Integer) Int_Score,WOPR_Carton.GXLB');
       SQL.Add('from WOPR_Carton ');
       SQL.Add('where DDBH='''+Edit3.text+''' and GXLB= '''+GXLB+''' and Carton > '+Query8.fieldbyname('Int_Score').AsString+'');
       SQL.Add('order by Int_Score');
       //funcObj.WriteErrorLog(sql.Text);
       Active:=true;
     end;
     if Query9.RecordCount<32 then
     begin
       DBGridEh3.Visible:=false;
       DBGridEh2.Visible:=false;
       DBGridEh1.Visible:=false;
       DBGridEh6.Visible:=false;
       BitBtn1.Visible:=false;
       abort;
     end;
   end;

   if Query9.RecordCount>0 then
   begin
     Query9.Last;
     with Query10 do
     begin
       Active:=false;
       SQL.Clear;
       SQL.Add('select top 32 WOPR_Carton.*,CAST(WOPR_Carton.Carton AS Integer) Int_Score,WOPR_Carton.GXLB');
       SQL.Add('from WOPR_Carton ');
       SQL.Add('where DDBH='''+Edit3.text+''' and GXLB= '''+GXLB+''' and Carton > '+Query9.fieldbyname('Int_Score').AsString+'');
       SQL.Add('order by Int_Score');
       //funcObj.WriteErrorLog(sql.Text);
       Active:=true;
     end;
     if Query10.RecordCount<32 then
     begin
       DBGridEh2.Visible:=false;
       DBGridEh1.Visible:=false;
       DBGridEh6.Visible:=false;
       BitBtn1.Visible:=false;
       abort;
     end;
   end;

   if Query10.RecordCount>0 then
   begin
     Query10.Last;
     with Query11 do
     begin
       Active:=false;
       SQL.Clear;
       SQL.Add('select top 32 WOPR_Carton.*,CAST(WOPR_Carton.Carton AS Integer) Int_Score,WOPR_Carton.GXLB');
       SQL.Add('from WOPR_Carton ');
       SQL.Add('where DDBH='''+Edit3.text+''' and GXLB= '''+GXLB+''' and Carton > '+Query10.fieldbyname('Int_Score').AsString+'');
       SQL.Add('order by Int_Score');
       //funcObj.WriteErrorLog(sql.Text);
       Active:=true;
     end;
     if Query11.RecordCount<32 then
     begin
       DBGridEh1.Visible:=false;
       DBGridEh6.Visible:=false;
       BitBtn1.Visible:=false;
       abort;
     end;
   end;

   if Query11.RecordCount>0 then
   begin
     Query11.Last;
     with Query12 do
     begin
       Active:=false;
       SQL.Clear;
       SQL.Add('select top 32 WOPR_Carton.*,CAST(WOPR_Carton.Carton AS Integer) Int_Score,WOPR_Carton.GXLB');
       SQL.Add('from WOPR_Carton ');
       SQL.Add('where DDBH='''+Edit3.text+''' and GXLB= '''+GXLB+''' and Carton > '+Query11.fieldbyname('Int_Score').AsString+'');
       SQL.Add('order by Int_Score');
       //funcObj.WriteErrorLog(sql.Text);
       Active:=true;
     end;
     if Query2.RecordCount<32 then
     begin
       DBGridEh6.Visible:=false;
       BitBtn1.Visible:=false;
       abort;
     end;
   end;
   if Query12.RecordCount>0 then
   begin
     Query12.Last;
     with Query13 do
     begin
       Active:=false;
       SQL.Clear;
       SQL.Add('select top 32 WOPR_Carton.*,CAST(WOPR_Carton.Carton AS Integer) Int_Score,WOPR_Carton.GXLB');
       SQL.Add('from WOPR_Carton ');
       SQL.Add('where DDBH='''+Edit3.text+''' and GXLB= '''+GXLB+''' and Carton > '+Query12.fieldbyname('Int_Score').AsString+'');
       SQL.Add('order by Int_Score');
       //funcObj.WriteErrorLog(sql.Text);
       Active:=true;
     end;
   end;
end;

procedure TMA_Box.BitBtn2Click(Sender: TObject);
var i,j,Day:integer;
    ACol,kl, kt, k: integer;
    ID:string;
begin
   BitBtn1.Visible:=true;
   Query1.Last;
   with Query13 do
   begin
     Active:=false;
     SQL.Clear;
     SQL.Add('select top 32 WOPR_Carton.*,CAST(WOPR_Carton.Carton AS Integer) Int_Score,WOPR_Carton.GXLB');
     SQL.Add('from WOPR_Carton ');
     SQL.Add('where DDBH='''+Edit3.text+''' and GXLB= '''+GXLB+''' and Carton <= ('+Query1.fieldbyname('Int_Score').AsString+'-32)');
     SQL.Add('and Carton > ('+Query1.fieldbyname('Int_Score').AsString+'-32)-32');
     SQL.Add('order by Int_Score');
     //funcObj.WriteErrorLog(sql.Text);
     Active:=true;
     DBGridEh6.Visible:=true;
   end;
   Query13.Last;
   with Query12 do
   begin
     Active:=false;
     SQL.Clear;
     SQL.Add('select top 32 WOPR_Carton.*,CAST(WOPR_Carton.Carton AS Integer) Int_Score,WOPR_Carton.GXLB');
     SQL.Add('from WOPR_Carton ');
     SQL.Add('where DDBH='''+Edit3.text+''' and GXLB= '''+GXLB+''' and Carton <= ('+Query13.fieldbyname('Int_Score').AsString+'-32)');
     SQL.Add('and Carton > ('+Query13.fieldbyname('Int_Score').AsString+'-32)-32');
     SQL.Add('order by Int_Score');
     //funcObj.WriteErrorLog(sql.Text);
     Active:=true;
     DBGridEh1.Visible:=true;
   end;
   Query12.Last;
   with Query11 do
   begin
     Active:=false;
     SQL.Clear;
     SQL.Add('select top 32 WOPR_Carton.*,CAST(WOPR_Carton.Carton AS Integer) Int_Score,WOPR_Carton.GXLB');
     SQL.Add('from WOPR_Carton ');
     SQL.Add('where DDBH='''+Edit3.text+''' and GXLB= '''+GXLB+''' and Carton <= ('+Query12.fieldbyname('Int_Score').AsString+'-32)');
     SQL.Add('and Carton > ('+Query12.fieldbyname('Int_Score').AsString+'-32)-32');
     SQL.Add('order by Int_Score');
     //funcObj.WriteErrorLog(sql.Text);
     Active:=true;
     DBGridEh2.Visible:=true;
   end;
   Query11.Last;
   with Query10 do
   begin
     Active:=false;
     SQL.Clear;
     SQL.Add('select top 32 WOPR_Carton.*,CAST(WOPR_Carton.Carton AS Integer) Int_Score,WOPR_Carton.GXLB');
     SQL.Add('from WOPR_Carton ');
     SQL.Add('where DDBH='''+Edit3.text+''' and GXLB= '''+GXLB+''' and Carton <= ('+Query11.fieldbyname('Int_Score').AsString+'-32)');
     SQL.Add('and Carton > ('+Query11.fieldbyname('Int_Score').AsString+'-32)-32');
     SQL.Add('order by Int_Score');
     //funcObj.WriteErrorLog(sql.Text);
     Active:=true;
     DBGridEh3.Visible:=true;
   end;
   Query10.Last;
   with Query9 do
   begin
     Active:=false;
     SQL.Clear;
     SQL.Add('select top 32 WOPR_Carton.*,CAST(WOPR_Carton.Carton AS Integer) Int_Score,WOPR_Carton.GXLB');
     SQL.Add('from WOPR_Carton ');
     SQL.Add('where DDBH='''+Edit3.text+''' and GXLB= '''+GXLB+''' and Carton <= ('+Query10.fieldbyname('Int_Score').AsString+'-32)');
     SQL.Add('and Carton > ('+Query10.fieldbyname('Int_Score').AsString+'-32)-32');
     SQL.Add('order by Int_Score');
     //funcObj.WriteErrorLog(sql.Text);
     Active:=true;
     DBGridEh4.Visible:=true;
   end;
   Query9.Last;
   with Query8 do
   begin
     Active:=false;
     SQL.Clear;
     SQL.Add('select top 32 WOPR_Carton.*,CAST(WOPR_Carton.Carton AS Integer) Int_Score,WOPR_Carton.GXLB');
     SQL.Add('from WOPR_Carton ');
     SQL.Add('where DDBH='''+Edit3.text+''' and GXLB= '''+GXLB+''' and Carton <= ('+Query9.fieldbyname('Int_Score').AsString+'-32)');
     SQL.Add('and Carton > ('+Query9.fieldbyname('Int_Score').AsString+'-32)-32');
     SQL.Add('order by Int_Score');
     //funcObj.WriteErrorLog(sql.Text);
     Active:=true;
     DBGridEh5.Visible:=true;
   end;
   Query8.Last;
   with Query7 do
   begin
     Active:=false;
     SQL.Clear;
     SQL.Add('select top 32 WOPR_Carton.*,CAST(WOPR_Carton.Carton AS Integer) Int_Score,WOPR_Carton.GXLB');
     SQL.Add('from WOPR_Carton ');
     SQL.Add('where DDBH='''+Edit3.text+''' and GXLB= '''+GXLB+''' and Carton <= ('+Query8.fieldbyname('Int_Score').AsString+'-32)');
     SQL.Add('and Carton > ('+Query8.fieldbyname('Int_Score').AsString+'-32)-32');
     SQL.Add('order by Int_Score');
     //funcObj.WriteErrorLog(sql.Text);
     Active:=true;
     DBGridEh7.Visible:=true;
   end;
   Query7.Last;
   with Query6 do
   begin
     Active:=false;
     SQL.Clear;
     SQL.Add('select top 32 WOPR_Carton.*,CAST(WOPR_Carton.Carton AS Integer) Int_Score,WOPR_Carton.GXLB');
     SQL.Add('from WOPR_Carton ');
     SQL.Add('where DDBH='''+Edit3.text+''' and GXLB= '''+GXLB+''' and Carton <= ('+Query7.fieldbyname('Int_Score').AsString+'-32)');
     SQL.Add('and Carton > ('+Query7.fieldbyname('Int_Score').AsString+'-32)-32');
     SQL.Add('order by Int_Score');
     //funcObj.WriteErrorLog(sql.Text);
     Active:=true;
     DBGridEh8.Visible:=true;
   end;
   Query6.Last;
   with Query5 do
   begin
     Active:=false;
     SQL.Clear;
     SQL.Add('select top 32 WOPR_Carton.*,CAST(WOPR_Carton.Carton AS Integer) Int_Score,WOPR_Carton.GXLB');
     SQL.Add('from WOPR_Carton ');
     SQL.Add('where DDBH='''+Edit3.text+''' and GXLB= '''+GXLB+''' and Carton <= ('+Query6.fieldbyname('Int_Score').AsString+'-32)');
     SQL.Add('and Carton > ('+Query6.fieldbyname('Int_Score').AsString+'-32)-32');
     SQL.Add('order by Int_Score');
     //funcObj.WriteErrorLog(sql.Text);
     Active:=true;
     DBGridEh9.Visible:=true;
   end;
   Query5.Last;
   with Query4 do
   begin
     Active:=false;
     SQL.Clear;
     SQL.Add('select top 32 WOPR_Carton.*,CAST(WOPR_Carton.Carton AS Integer) Int_Score,WOPR_Carton.GXLB');
     SQL.Add('from WOPR_Carton ');
     SQL.Add('where DDBH='''+Edit3.text+''' and GXLB= '''+GXLB+''' and Carton <= ('+Query5.fieldbyname('Int_Score').AsString+'-32)');
     SQL.Add('and Carton > ('+Query5.fieldbyname('Int_Score').AsString+'-32)-32');
     SQL.Add('order by Int_Score');
     //funcObj.WriteErrorLog(sql.Text);
     Active:=true;
     DBGridEh10.Visible:=true;
   end;
   Query4.Last;
   with Query3 do
   begin
     Active:=false;
     SQL.Clear;
     SQL.Add('select top 32 WOPR_Carton.*,CAST(WOPR_Carton.Carton AS Integer) Int_Score,WOPR_Carton.GXLB');
     SQL.Add('from WOPR_Carton ');
     SQL.Add('where DDBH='''+Edit3.text+''' and GXLB= '''+GXLB+''' and Carton <= ('+Query4.fieldbyname('Int_Score').AsString+'-32)');
     SQL.Add('and Carton > ('+Query4.fieldbyname('Int_Score').AsString+'-32)-32');
     SQL.Add('order by Int_Score');
     //funcObj.WriteErrorLog(sql.Text);
     Active:=true;
     DBGridEh11.Visible:=true;
   end;
   Query3.Last;
   with Query2 do
   begin
     Active:=false;
     SQL.Clear;
     SQL.Add('select top 32 WOPR_Carton.*,CAST(WOPR_Carton.Carton AS Integer) Int_Score,WOPR_Carton.GXLB');
     SQL.Add('from WOPR_Carton ');
     SQL.Add('where DDBH='''+Edit3.text+''' and GXLB= '''+GXLB+''' and Carton <= ('+Query3.fieldbyname('Int_Score').AsString+'-32)');
     SQL.Add('and Carton > ('+Query3.fieldbyname('Int_Score').AsString+'-32)-32');
     SQL.Add('order by Int_Score');
     //funcObj.WriteErrorLog(sql.Text);
     Active:=true;
     DBGridEh12.Visible:=true;
   end;
   Query2.Last;
   with Query1 do
   begin
     Active:=false;
     SQL.Clear;
     SQL.Add('select top 32 WOPR_Carton.*,CAST(WOPR_Carton.Carton AS Integer) Int_Score,WOPR_Carton.GXLB');
     SQL.Add('from WOPR_Carton ');
     SQL.Add('where DDBH='''+Edit3.text+''' and GXLB= '''+GXLB+''' and Carton <= ('+Query2.fieldbyname('Int_Score').AsString+'-32)');
     SQL.Add('and Carton > ('+Query2.fieldbyname('Int_Score').AsString+'-32)-32');
     SQL.Add('order by Int_Score');
     //funcObj.WriteErrorLog(sql.Text);
     Active:=true;
     DBGridEh13.Visible:=true;
     if Query1.fieldbyname('Int_Score').AsString = '1' then
       BitBtn2.Visible:=false;
   end;
end;

procedure TMA_Box.BitBtn3Click(Sender: TObject);
begin
  Thung_DepName:=TThung_DepName.Create(self);
  Thung_DepName.Show;
end;

procedure TMA_Box.BitBtn5Click(Sender: TObject);
begin
   Init();
   SelectDDZL();
   with Query15 do
   begin
     Active:=false;
     SQL.Clear;
     SQL.Add('select  WOPR_Carton.*,CAST(WOPR_Carton.Carton AS Integer) Int_Score,WOPR_Carton.GXLB');
     SQL.Add('from WOPR_Carton ');
     SQL.Add('where DDBH='''+Edit5.text+''' and GXLB= '''+GXLB+'''');
     if Edit1.text <> '' then
        SQL.Add('and  WOPR_Carton.Carton>='+Edit1.text+'');
     if Edit2.text <> '' then
        SQL.Add('and  WOPR_Carton.Carton<='+Edit2.text+'');
     SQL.Add('order by Int_Score');
     //funcObj.WriteErrorLog(sql.Text);
     Active:=true;
   end;
   with Query15 do
   begin
      requestlive:=true;
      cachedupdates:=true;
      edit;
   end;
   BitBtn6.enabled:=true;
   BitBtn7.enabled:=true;
end;

procedure TMA_Box.BitBtn6Click(Sender: TObject);
var i,j:integer;
    Siz:string;
    integerValue1,integerValue2: Integer;
begin
  try
    Query15.first;
    if ((Edit1.Text <> '') and (Edit2.Text <> '')) then
    begin
      integerValue1 := StrToInt(Edit1.Text);
      integerValue2 := StrToInt(Edit2.Text);
    end else
    begin
      integerValue1:=1;
      integerValue2:=Query15.RecordCount;
    end;
    for i:=integerValue1 to integerValue2 do
    begin
      case Query15.updatestatus of
        usmodified:
        begin
            if Query15.FieldByName('CheckCarton').AsString='True' then
            begin
                TmpQry.Active:=false;
                TmpQry.SQL.Clear;
                TmpQry.SQL.Add('update WOPR_Carton set CheckCarton=1,SCdate='''+FormatDateTime('YYYY/MM/DD',Date())+''',userid='''+main.Edit1.Text+''',USERDATE='''+FormatDateTime('YYYY/MM/DD HH:MM:SS',Now)+'''');
                TmpQry.SQL.Add('where DDBH='''+Edit5.text+''' and GXLB= '''+GXLB+''' and Carton='''+IntToStr(i)+'''');
                //funcobj.WriteErrorLog(TmpQry.SQL.Text);
                TmpQry.ExecSQL();
            end;
        end;
    end;
    Query15.next;
    end;


    TmpQry.Active:=false;
    TmpQry.SQL.Clear;
    TmpQry.SQL.Add('update WOPR_Carton set userid='''+main.Edit1.Text+''',USERDATE='''+FormatDateTime('YYYY/MM/DD HH:MM:SS',Now)+'''');
    if CheckBox4.Checked then
      TmpQry.SQL.Add(',Size_don=''Size don''');
    if CheckBox7.Checked then
      TmpQry.SQL.Add(',Size_tong_hop=''Size tong hop''');
    if CheckBox8.Checked then
      TmpQry.SQL.Add(',Nhan_trang=''Nhan trang''');
    if CheckBox11.Checked then
      TmpQry.SQL.Add(',Mac_treo=''Mac treo''');
    if CheckBox10.Checked then
      TmpQry.SQL.Add(',Nhan_gia=''Nhan gia''');
    if CheckBox9.Checked then
      TmpQry.SQL.Add(',Nhan_de_trung=''Nhan de trung''');
    if CheckBox12.Checked then
      TmpQry.SQL.Add(',Nhan_nap_hop=''Nhan nap hop''');
    if CheckBox14.Checked then
      TmpQry.SQL.Add(',Day_dit_hop=''Day dit hop''');
    if CheckBox1.Checked then
      TmpQry.SQL.Add(',Day_treo=''Day treo''');
    TmpQry.SQL.Add('where DDBH='''+Edit5.text+'''');
    //funcobj.WriteErrorLog(TmpQry.SQL.Text);
    TmpQry.ExecSQL();

    showmessage('Succeed.');
  except
    Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
  end;
  SelectDDZL();
end;

procedure TMA_Box.BitBtn7Click(Sender: TObject);
begin
  with Query15 do
  begin
    active:=false;
    requestlive:=false;
    cachedupdates:=false;
    active:=true;
  end;
  BitBtn6.enabled:=false;
  BitBtn7.enabled:=false;
end;

end.
