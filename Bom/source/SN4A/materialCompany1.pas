unit materialCompany1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Mask, DB, DBTables, Buttons, Grids, DBGrids,
  ExtCtrls,comobj, Menus, GridsEh, DBGridEh,iniFiles, ComCtrls;


type
  TMaterialCompany = class(TForm)
    MaterialQry: TQuery;
    DataSource1: TDataSource;
    Updcompany: TUpdateSQL;
    gettime: TQuery;
    startcreat: TQuery;
    updmat: TUpdateSQL;
    csbhmod: TQuery;
    DataSource2: TDataSource;
    Database1: TDatabase;
    VNrecord: TQuery;
    MaterialQryarticle: TStringField;
    MaterialQrykhdh: TStringField;
    MaterialQryjijie: TStringField;
    csbhmodclbh: TStringField;
    csbhmodywpm: TStringField;
    csbhmodcsbh: TStringField;
    csbhmodzsqm: TStringField;
    csbhmodarticle: TStringField;
    csbhmodKHDH: TStringField;
    csbhmodxiexing: TStringField;
    csbhmodshehao: TStringField;
    quickexcel: TQuery;
    DataSource3: TDataSource;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel3: TPanel;
    DBGridEh2: TDBGridEh;
    DBGridEh1: TDBGridEh;
    DBGridEh3: TDBGridEh;
    Panel2: TPanel;
    Label2: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label3: TLabel;
    Label11: TLabel;
    Label1: TLabel;
    OnlyMat1: TLabel;
    CLZLedit: TEdit;
    SplitCK: TCheckBox;
    Button1: TButton;
    Panel4: TPanel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    rightAll: TEdit;
    leftall: TEdit;
    BBTT2: TBitBtn;
    BitBtn1: TBitBtn;
    CSBHedit: TEdit;
    companyEdit: TEdit;
    Edit1: TEdit;
    notclzl: TEdit;
    BuynoCB: TComboBox;
    ddsell: TCheckBox;
    nomat: TEdit;
    OnlyMat: TEdit;
    Panel1: TPanel;
    MCB1: TBitBtn;
    MCB2: TBitBtn;
    MCB3: TBitBtn;
    MCB4: TBitBtn;
    MCB5: TBitBtn;
    MCB6: TBitBtn;
    updateall: TButton;
    UpdateRight: TButton;
    Button2: TButton;
    Button3: TButton;
    TabSheet2: TTabSheet;
    Panel5: TPanel;
    MCB1a: TBitBtn;
    MCB2a: TBitBtn;
    MCB3a: TBitBtn;
    MCB4a: TBitBtn;
    MCB5a: TBitBtn;
    MCB6a: TBitBtn;
    Button7: TButton;
    Panel6: TPanel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    CLZLedita: TEdit;
    SplitCKa: TCheckBox;
    Button8: TButton;
    CSBHedita: TEdit;
    companyEdita: TEdit;
    Edit1a: TEdit;
    notclzla: TEdit;
    BuynoCBa: TComboBox;
    ddsella: TCheckBox;
    nomata: TEdit;
    OnlyMata: TEdit;
    extramat: TQuery;
    DBGridEh4: TDBGridEh;
    DataSource4: TDataSource;
    showson: TCheckBox;
    Upextra: TUpdateSQL;
    Panel7: TPanel;
    Label20: TLabel;
    Label21: TLabel;
    leftalla: TEdit;
    BitBtn2: TBitBtn;
    extramatXXZLKHDH: TStringField;
    extramatXH: TStringField;
    extramatDType: TStringField;
    extramatDTypeBH: TStringField;
    extramatclbh: TStringField;
    extramatywpm: TStringField;
    extramatcsbh: TStringField;
    extramatzsqm: TStringField;
    extramatarticle: TStringField;
    extramatCLZLKHDH: TStringField;
    extramatxiexing: TStringField;
    extramatshehao: TStringField;
    TabSheet3: TTabSheet;
    Panel8: TPanel;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    Button4: TButton;
    Panel9: TPanel;
    Edit2: TEdit;
    Label22: TLabel;
    Label23: TLabel;
    Edit3: TEdit;
    Button5: TButton;
    Onlyson: TQuery;
    DataSource5: TDataSource;
    Panel10: TPanel;
    DBGridEh5: TDBGridEh;
    Label24: TLabel;
    Edit4: TEdit;
    Onlysonywpm: TStringField;
    Onlysonzsdh: TStringField;
    Label25: TLabel;
    Edit5: TEdit;
    OnlysonKHDH: TStringField;
    Updonlyson: TUpdateSQL;
    Panel11: TPanel;
    Label26: TLabel;
    Label27: TLabel;
    leftallson: TEdit;
    BitBtn9: TBitBtn;
    Edit6: TEdit;
    Label28: TLabel;
    TabSheet4: TTabSheet;
    Memo1: TMemo;
    maincompany: TQuery;
    TabSheet5: TTabSheet;
    Panel12: TPanel;
    BitBtn10: TBitBtn;
    BitBtn11: TBitBtn;
    BitBtn12: TBitBtn;
    BitBtn13: TBitBtn;
    BitBtn14: TBitBtn;
    BitBtn15: TBitBtn;
    Button6: TButton;
    Panel13: TPanel;
    Panel14: TPanel;
    DBGridEh6: TDBGridEh;
    Button9: TButton;
    DataSource6: TDataSource;
    Supplier: TQuery;
    Updsupplier: TUpdateSQL;
    Label29: TLabel;
    Edit7: TEdit;
    Supplierzsdh: TStringField;
    SupplierGSBH: TStringField;
    Supplierzsqm: TStringField;
    Supplierzsywjc: TStringField;
    Supplierrelease: TBooleanField;
    BB3: TBitBtn;
    Edit8: TEdit;
    Label30: TLabel;
    Label31: TLabel;
    Edit9: TEdit;
    Panel15: TPanel;
    Panel16: TPanel;
    Panel17: TPanel;
    Button10: TButton;
    Label32: TLabel;
    Edit10: TEdit;
    Label33: TLabel;
    Edit11: TEdit;
    DBGridEh7: TDBGridEh;
    DataSource7: TDataSource;
    QrySupplier: TQuery;
    Onlysonmom: TStringField;
    Onlysonson: TStringField;
    Onlysonsupplier: TStringField;
    ArticleEdit: TEdit;
    ArticleLab: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure MCB1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure MCB3Click(Sender: TObject);
    procedure MCB4Click(Sender: TObject);
    procedure MCB5Click(Sender: TObject);
    procedure MCB6Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure UpdateAllClick(Sender: TObject);
    procedure UpdateRightClick(Sender: TObject);
    procedure BBTT2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Database1Login(Database: TDatabase; LoginParams: TStrings);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure MCB1aClick(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure MCB3aClick(Sender: TObject);
    procedure MCB4aClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure MCB5aClick(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn15Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure BitBtn13Click(Sender: TObject);
    procedure BitBtn12Click(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure BitBtn14Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure DBGridEh6Columns0EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh7CellClick(Column: TColumnEh);
  private
      DBUser,DBPass:string;
    { Private declarations }
  public
     CSBH_Flag:integer;
    { Public declarations }
  end;

var
  MaterialCompany: TMaterialCompany;
  companytext:string;
implementation

uses main1,FunUnit, ManufacturerChoose1;

{$R *.dfm}

procedure TMaterialCompany.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TMaterialCompany.FormDestroy(Sender: TObject);
begin
  materialcompany:=nil;
end;

procedure TMaterialCompany.MCB1Click(Sender: TObject);
begin
  panel2.Visible:=true;
end;



procedure TMaterialCompany.Button1Click(Sender: TObject);
var
   tmpList :TStringlist;
   i:integer;
begin

  button2.Enabled:=true;
  MCB3.Enabled:=true;
  with materialqry do
  begin
    active:=false;
    sql.Clear;
    sql.add('select xxzl.article,xxzl.khdh,xxzl.jijie from xxzl ');
    sql.add('left join xxzls on xxzl.xiexing=xxzls.xiexing and xxzl.shehao=xxzls.shehao');
    sql.add('left join clzl on clzl.cldh=xxzls.clbh');
    sql.add('left join ddzl on xxzl.xiexing=ddzl.xiexing and xxzl.shehao=ddzl.shehao');
    sql.add('left join zszl on zszl.zsdh=xxzls.csbh');
    sql.add('where xxzl.article is not null');
    SQL.Add(''+companytext+' ');
    if edit1.text <>'' then
        SQL.Add('and xxzl.jijie = '''+edit1.Text+''' ');
    if CSBHedit.text <>'' then
        SQL.Add('and xxzls.csbh = '''+CSBHedit.Text+''' ');
    if companyEdit.text <>'' then
        SQL.Add('and zszl.zsqm like ''%'+companyEdit.Text+'%'' ');
    if buynoCB.text <>'' then
        SQL.Add('and ddzl.buyno like '''+buynocb.text+'%'' ');
    if ddsell.Checked=true then
        SQL.Add('and left(ddzl.ddbh,2) <> ''ZS'' ');
    if CLZLedit.text <>'' then
      begin
      if SplitCK.Checked=true then
        tmpList:=FuncObj.SplitString(CLZLedit.Text,'*')
      else
        tmpList:=FuncObj.SplitString(CLZLedit.Text,' ');
      for i:=0 to tmpList.Count-1 do
      begin
      if trim(tmpList.Strings[i])<>'' then
        SQL.Add('and CLZL.ywpm like ''%'+StringReplace(trim(tmpList.Strings[i]),':','',[rfReplaceAll, rfIgnoreCase])+'%'' ');
      end;
    tmpList.Free;
    end;
    if nomat.text<>'' then
    begin
       SQL.Add('AND CLZL.cldh not like '''+nomat.Text+'%'+'''');
    end;
    if onlymat.text<>'' then
    begin
       SQL.Add('AND CLZL.cldh like '''+onlymat.text+'%'+'''');
    end;
    if ArticleEdit.Text<>'' then
    begin
       SQL.Add('AND XXZL.Article like ''%'+ArticleEdit.Text+'%'' ');
    end;
    if notclzl.text <>'' then
    begin
        if SplitCK.Checked=true then
          tmpList:=FuncObj.SplitString(notclzl.Text,'*')
        else
          tmpList:=FuncObj.SplitString(notclzl.Text,' ');
        for i:=0 to tmpList.Count-1 do
        begin
          if trim(tmpList.Strings[i])<>'' then
              SQL.Add('AND CLZL.ywpm NOT like ''%'+StringReplace(trim(tmpList.Strings[i]),':','',[rfReplaceAll, rfIgnoreCase])+'%''')
        end;
        tmpList.Free;
    end;
    sql.add('group by xxzl.article,xxzl.khdh,xxzl.jijie');
    sql.add('order by xxzl.article ');
    //funcObj.WriteErrorLog(sql.Text);
    active:=true;
  end;

  with csbhmod do
  begin
    active:=false;
    sql.Clear;
    sql.add('select xxzls.clbh,CLZL.ywpm,xxzls.csbh,zszl.zsqm,xxzl.article,xxzl.KHDH,xxzls.xiexing,xxzls.shehao from xxzl ');
    sql.add('left join xxzls on xxzl.xiexing=xxzls.xiexing and xxzl.shehao=xxzls.shehao ');
    sql.add('left join zszl on zszl.zsdh=xxzls.csbh ');
    sql.add('left join clzl on clzl.cldh=xxzls.clbh');
    sql.add('left join ddzl on xxzl.xiexing=ddzl.xiexing and xxzl.shehao=ddzl.shehao');
    sql.add('where xxzl.article=:article  ');
    SQL.Add(''+companytext+' ');
    sql.add('and clzl.tyjh<>''Y''  ');
    if ddsell.Checked=true then
        SQL.Add('and left(ddzl.ddbh,2) <> ''ZS'' ');
    if CSBHedit.text <>'' then
        SQL.Add('and xxzls.csbh = '''+CSBHedit.Text+''' ');
    if companyEdit.text <>'' then
        SQL.Add('and zszl.zsqm like ''%'+companyEdit.Text+'%'' ');
    if CLZLedit.text <>'' then
      begin
      if SplitCK.Checked=true then
        tmpList:=FuncObj.SplitString(CLZLedit.Text,'*')
      else
        tmpList:=FuncObj.SplitString(CLZLedit.Text,' ');
      for i:=0 to tmpList.Count-1 do
      begin
      if trim(tmpList.Strings[i])<>'' then
        SQL.Add('and CLZL.ywpm like ''%'+StringReplace(trim(tmpList.Strings[i]),':','',[rfReplaceAll, rfIgnoreCase])+'%'' ');
      end;
    tmpList.Free;
    end;

    if notclzl.text <>'' then
      begin
        if SplitCK.Checked=true then
          tmpList:=FuncObj.SplitString(notclzl.Text,'*')
        else
          tmpList:=FuncObj.SplitString(notclzl.Text,' ');
        for i:=0 to tmpList.Count-1 do
        begin
        if trim(tmpList.Strings[i])<>'' then
            SQL.Add('AND CLZL.ywpm NOT like ''%'+StringReplace(trim(tmpList.Strings[i]),':','',[rfReplaceAll, rfIgnoreCase])+'%''')
        end;
      tmpList.Free;
    end;

    if nomat.text<>'' then
    begin
       SQL.Add('AND CLZL.cldh not like '+''''+'%'+nomat.Text+'%'+'''');
    end;
    if onlymat.text<>'' then
    begin
       SQL.Add('AND CLZL.cldh like '+''''+'%'+onlymat.text+'%'+'''');
    end;
    SQL.Add('group by xxzls.clbh,CLZL.ywpm,xxzls.csbh,zszl.zsqm,xxzl.article,xxzl.KHDH,xxzls.xiexing,xxzls.shehao');
    //memo2.Text:=sql.text;    
    active:=true;
  end;
end;

procedure TMaterialCompany.MCB3Click(Sender: TObject);
begin
  MCB3.Enabled:=false;
  MCB1.Enabled:=false;
  MCB4.Enabled:=true;
  MCB5.Enabled:=true;
  MCB6.Enabled:=false;
  panel4.Visible:=true;
  UpdateRight.Enabled:=true;
  updateall.Enabled:=true;
  with csbhmod do
  begin
    cachedupdates:=true;
    requestlive:=true;
    edit;
  end;

end;

procedure TMaterialCompany.MCB4Click(Sender: TObject);
begin
  MCB3.Enabled:=true;
  MCB1.Enabled:=true;
  MCB4.Enabled:=false;
  MCB5.Enabled:=false;
  MCB6.Enabled:=true;
  panel4.Visible:=false;
  if (leftall.text='') and (rightall.text='') then
    showmessage('no data');
  if (leftall.text<>'') and (rightall.text<>'') then
    showmessage('data error');
  if (leftall.text<>'') and (rightall.text='') then
    updateall.Click;
  if (leftall.text='') and (rightall.text<>'')then
    UpdateRight.Click;
end;

procedure TMaterialCompany.MCB5Click(Sender: TObject);
begin
  MCB3.Enabled:=true;
  MCB1.Enabled:=true;
  MCB4.Enabled:=false;
  MCB5.Enabled:=false;
  MCB6.Enabled:=true;
  panel4.Visible:=false;
  MaterialCompany.leftall.text:='';
  MaterialCompany.rightall.text:='';
end;

procedure TMaterialCompany.MCB6Click(Sender: TObject);
begin
  close;
end;

procedure TMaterialCompany.FormCreate(Sender: TObject);
var
  Ini: TIniFile;   //台灣沒有 kfzl_GS 表格判斷客戶編號 先組好SQL再進台灣撈資料
  CountKHBH:string;//用來判斷客戶編號是否超過兩個 用來組SQL
begin

 with maincompany do
 begin
   active:=false;        //抓取廠區
   SQL.Clear;
   SQL.add('select count(KHBH) as allkhbh from kfzl_GS');
   SQL.add('where kfzl_GS.GSBH= '''+main.Edit2.Text+''' ');
   Active:=true;
  end;
  CountKHBH:=maincompany.fieldbyname('allkhbh').asstring;

  with maincompany do
  begin
     active:=false;        //抓取廠區
     SQL.Clear;
     SQL.add('select KHBH from kfzl_GS');
     SQL.add('where kfzl_GS.GSBH= '''+main.Edit2.Text+''' ');
     Active:=true;
     if strtoint(CountKHBH)=1 then
     begin
       while not eof do
       begin
         companytext:=companytext+'and xxzl.khdh ='''+maincompany.fieldbyname('KHBH').asstring+''' and XXZL.KFCQ=''JNG'' and IsNull(XXZL.Article,'''')<>'''' ';
         next;
       end;
     end else
     begin
       companytext:='and ( xxzl.khdh ='''+maincompany.fieldbyname('KHBH').asstring+''' ';
       next;
       while not eof do
       begin
         companytext:=companytext+'or xxzl.khdh ='''+maincompany.fieldbyname('KHBH').asstring+''' ';
         next;
       end;
       companytext:=companytext+') and XXZL.KFCQ=''JNG''  and IsNull(XXZL.Article,'''')<>'''' ';
     end;
     Active:=false;
  end;
  // showmessage(companytext);

  with startcreat do
  begin
     active:=false;        //抓取使用者資料
     SQL.Clear;
     SQL.add('select buyno from ddzl ');
     SQL.add('group by buyno');
     Active:=true;
     buynoCB.items.clear;
     buynoCBa.items.clear;
     while not eof do
     begin
       buynoCB.items.add(fieldbyname('buyno').asstring );
       buynoCBa.items.add(fieldbyname('buyno').asstring );
       next;
     end;
     active:=false;
  end;
  //
  Ini := TIniFile.Create( ExtractFilePath(Application.ExeName)+'\LY_ERP.ini' );
  try
   //資料庫IP
   DBUser := Ini.ReadString( 'bom_N4A_DB', 'User', 'JNG');
   DBPass := Ini.ReadString( 'bom_N4A_DB', 'Pass', 'jng@428');
   //
   Database1.Connected:=true;
   //
  finally
    Ini.Free;
  end;
end;

procedure TMaterialCompany.UpdateAllClick(Sender: TObject);
var
  i,j:integer;
  NDate:TDate;
begin
   if leftall.text<>'' then
   try
       csbhmod.cachedupdates:=true;
       csbhmod.requestlive:=true;
       MaterialQry.First;
       csbhmod.first;
       for j:=1 to MaterialQry.RecordCount do
       begin
         for i:=1 to csbhmod.RecordCount do
         begin
           begin
             csbhmod.edit;
             with gettime do          //取服務器的年月值
             begin
               active:=false;
               sql.Clear;
               sql.Add('select year(getdate()) as FY,month(getdate()) as FM ,getdate() as NDate');
               active:=true;
               NDate:=fieldbyname('Ndate').value;
             end;
             with gettime do
             begin
               active:=false;
               sql.Clear;
               sql.Add('update xxzls set csbh= '''+leftall.text+''' ');
               sql.Add(',userid='''+main.Edit1.Text+'''  ');
               sql.Add(',userdate='''+formatdatetime('yyyyMMdd',Ndate)+'''');
               sql.Add('where clbh= '''+csbhmod.fieldbyname('clbh').AsString+'''  ');
               sql.Add('and xiexing='''+csbhmod.fieldbyname('xiexing').AsString+'''  ');
               sql.Add('and shehao='''+csbhmod.fieldbyname('shehao').AsString+'''  ');
               execsql;
             end;

             with vnrecord do
             begin
               active:=false;
               sql.Clear;
               sql.Add('update xxzls set csbh= '''+leftall.text+''' ');
               sql.Add(',userid='''+main.Edit1.Text+'''  ');
               sql.Add(',userdate='''+formatdatetime('yyyyMMdd',Ndate)+'''');
               sql.Add('where clbh= '''+csbhmod.fieldbyname('clbh').AsString+'''  ');
               sql.Add('and xiexing='''+csbhmod.fieldbyname('xiexing').AsString+'''  ');
               sql.Add('and shehao='''+csbhmod.fieldbyname('shehao').AsString+'''  ');
               execsql;
             end;

             with vnrecord do
             begin
               active:=false;
               sql.Clear;
               sql.add('insert into BModRec_Dev ');
               sql.add('(TableName ,ARTICLE,XieXing,Shehao,clbh,CSBH,TNO,DelID,DelDate)');
               sql.add('values ('+''''+'XXZLS'+'''');
               sql.add(','+''''+csbhmod.fieldbyname('ARTICLE').AsString+''''+','+''''+csbhmod.fieldbyname('XieXing').AsString+''''+',') ;
               sql.add(''''+csbhmod.fieldbyname('Shehao').AsString+''''+',');
               sql.add(''''+csbhmod.fieldbyname('clbh').AsString+''''+',');
               sql.Add(''''+csbhmod.FieldByName('csbh').AsString+''''+',');
               sql.Add(''''+csbhmod.FieldByName('khdh').AsString+''''+',');
               sql.add(''''+main.Edit1.Text+''''+',getdate())');
               execsql;
             end;
           end;
           csbhmod.next;
         end;
         MaterialQry.Next;
       end;
       csbhmod.active:=false;
       csbhmod.cachedupdates:=false;
       csbhmod.requestlive:=false;
       csbhmod.active:=true;
   except
     on E:Exception do
     begin
        Messagedlg('Have wrong,can not save!'+E.Message,mtwarning,[mbyes],0);
     end;
   end;
   if leftall.text='' then
       showmessage('no data');
   MaterialCompany.leftall.text:='';
   MaterialCompany.rightall.text:='';

end;

procedure TMaterialCompany.UpdateRightClick(Sender: TObject);
var
  i:integer;
  NDate:TDate;
begin
   if rightall.text<>'' then
   try
       csbhmod.cachedupdates:=true;
       csbhmod.requestlive:=true;
       csbhmod.first;
       for i:=1 to csbhmod.RecordCount do
       begin
         begin
           csbhmod.edit;
           with gettime do          //取服務器的年月值
           begin
            active:=false;
            sql.Clear;
            sql.Add('select year(getdate()) as FY,month(getdate()) as FM ,getdate() as NDate');
            active:=true;
            NDate:=fieldbyname('Ndate').value;
           end;
           with gettime do
           begin
             active:=false;
             sql.Clear;
             sql.Add('update xxzls set csbh= '''+rightall.text+''' ');
             sql.Add(',userid='''+main.Edit1.Text+'''  ');
             sql.Add(',userdate='''+formatdatetime('yyyyMMdd',Ndate)+'''');
             sql.Add('where clbh= '''+csbhmod.fieldbyname('clbh').AsString+'''  ');
             sql.Add('and xiexing='''+csbhmod.fieldbyname('xiexing').AsString+'''  ');
             sql.Add('and shehao='''+csbhmod.fieldbyname('shehao').AsString+'''  ');
             execsql;
           end;
           with vnrecord do
           begin
             active:=false;
             sql.Clear;
             sql.Add('update xxzls set csbh= '''+rightall.text+''' ');
             sql.Add(',userid='''+main.Edit1.Text+'''  ');
             sql.Add(',userdate='''+formatdatetime('yyyyMMdd',Ndate)+'''');
             sql.Add('where clbh= '''+csbhmod.fieldbyname('clbh').AsString+'''  ');
             sql.Add('and xiexing='''+csbhmod.fieldbyname('xiexing').AsString+'''  ');
             sql.Add('and shehao='''+csbhmod.fieldbyname('shehao').AsString+'''  ');
             execsql;
           end;
           with vnrecord do
           begin
             active:=false;
             sql.Clear;
             sql.add('insert into BModRec_Dev ');
             sql.add('(TableName ,ARTICLE,XieXing,Shehao,clbh,CSBH,TNO,DelID,DelDate)');
             sql.add('values ('+''''+'XXZLS'+'''');
             sql.add(','+''''+csbhmod.fieldbyname('ARTICLE').AsString+''''+','+''''+csbhmod.fieldbyname('XieXing').AsString+''''+',') ;
             sql.add(''''+csbhmod.fieldbyname('Shehao').AsString+''''+',');
             sql.add(''''+csbhmod.fieldbyname('clbh').AsString+''''+',');
             sql.Add(''''+csbhmod.FieldByName('csbh').AsString+''''+',');
             sql.Add(''''+csbhmod.FieldByName('khdh').AsString+''''+',');
             sql.add(''''+main.Edit1.Text+''''+',getdate())');
             execsql;
           end;
         end;
         csbhmod.next;
       end;
       csbhmod.active:=false;
       csbhmod.cachedupdates:=false;
       csbhmod.requestlive:=false;
       csbhmod.active:=true;
       except
         on E:Exception do
         begin
            Messagedlg('Have wrong,can not save!'+E.Message,mtwarning,[mbyes],0);
         end;
       end;
   if rightall.text='' then
       showmessage('no data');
  MaterialCompany.leftall.text:='';
  MaterialCompany.rightall.text:='';
end;

procedure TMaterialCompany.BBTT2Click(Sender: TObject);
begin
    ManufacturerChoose:=TManufacturerChoose.create(self);
    ManufacturerChoose.show;
    CSBH_Flag:=1;
end;

procedure TMaterialCompany.BitBtn1Click(Sender: TObject);
begin
    ManufacturerChoose:=TManufacturerChoose.create(self);
    ManufacturerChoose.show;
    CSBH_Flag:=2;
end;


procedure TMaterialCompany.Database1Login(Database: TDatabase;
  LoginParams: TStrings);
begin
  loginparams.Values['user name']:=DBUser;
  loginparams.values['password']:=DBPass;
end;

procedure TMaterialCompany.Button2Click(Sender: TObject);
var
  OlePropertyGet,eclApp,WorkBook:olevariant;
  i,j:integer;
  workRange : OleVariant;
  workSheet : OleVariant;
begin
  try
    eclApp:=CreateOleObject('Excel.Application');
    WorkBook:=CreateOleObject('Excel.Sheet');
  except
    Application.MessageBox('NO Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
    Exit;
  end;
  try
    csbhmod.Active:=false;
    WorkBook:=eclApp.workbooks.Add;
    eclApp.ActiveSheet.Cells.NumberFormatLocal:='@';//將儲存格改成文字格式
    eclApp.Columns[1].ColumnWidth := 12; //設定欄寬
    eclApp.Columns[2].ColumnWidth := 111;
    materialqry.First;
    j:=1;
    while   not  materialqry.Eof   do
    begin
      for   i:=1   to   materialqry.fieldcount-1 do
      begin
        eclApp.Cells(j,1):=materialqry.FieldByName('article').value;
        eclApp.Cells(j,2):=materialqry.FieldByName('khdh').value;
      end;
      materialqry.Next;
      inc(j);
    end;
    showmessage('Succeed.');
    eclApp.ActiveSheet.PageSetup.Orientation := 2; //列印直=1,橫式=2
    eclApp.Visible:=True;
    csbhmod.Active:=true;
  except
    on   F:Exception   do
      showmessage(F.Message);
  end;
end;
procedure TMaterialCompany.Button3Click(Sender: TObject);
var
  OlePropertyGet,eclApp,WorkBook:olevariant;
  i,j:integer;
  workRange : OleVariant;
  workSheet : OleVariant;
  tmpList :TStringlist;
begin
  dbgrideh3.Visible:=true;
  with quickexcel do
  begin
    active:=false;
    sql.Clear;
    sql.add('select XXZLS.* from( ');
    sql.add('  select  XXZLS.XH,''Assembly'' AS DType,xxzls.clbh,CLZL.ywpm,xxzls.csbh,zszl.zsqm,');
    sql.add('  xxzl.article,xxzl.KHDH as XXZLKHDH,clzl.kfdh as CLZLKHDH,xxzls.xiexing,xxzls.shehao from xxzl');
    sql.add('  left join xxzls on xxzl.xiexing=xxzls.xiexing and xxzl.shehao=xxzls.shehao ');
    sql.add('  left join zszl on zszl.zsdh=xxzls.csbh ');
    sql.add('  left join clzl on clzl.cldh=xxzls.clbh');
    sql.add('  left join ddzl on xxzl.xiexing=ddzl.xiexing and xxzl.shehao=ddzl.shehao');
    sql.add('  where xxzl.article in');
    sql.add('    (select xxzl.article from xxzl ');
    sql.add('    left join xxzls on xxzl.xiexing=xxzls.xiexing and xxzl.shehao=xxzls.shehao');
    sql.add('    left join clzl on clzl.cldh=xxzls.clbh');
    sql.add('    left join ddzl on xxzl.xiexing=ddzl.xiexing and xxzl.shehao=ddzl.shehao');
    sql.add('    left join zszl on zszl.zsdh=xxzls.csbh');
    sql.add('    where xxzl.article is not null');
    sql.add('    and clzl.tyjh<>''Y''  ');
    SQL.Add(''+companytext+' ');
    if edit1.text <>'' then
        SQL.Add('and xxzl.jijie = '''+edit1.Text+''' ');
    if CSBHedit.text <>'' then
        SQL.Add('and xxzls.csbh = '''+CSBHedit.Text+''' ');
    if companyEdit.text <>'' then
        SQL.Add('and zszl.zsqm like ''%'+companyEdit.Text+'%'' ');
    if buynoCB.text <>'' then
        SQL.Add('and ddzl.buyno like '''+buynocb.text+'%'' ');
    if CLZLedit.text <>'' then
    begin
       if SplitCK.Checked=true then
          tmpList:=FuncObj.SplitString(CLZLedit.Text,'*')
       else
          tmpList:=FuncObj.SplitString(CLZLedit.Text,' ');
       for i:=0 to tmpList.Count-1 do
       begin
          if trim(tmpList.Strings[i])<>'' then
             SQL.Add('and CLZL.ywpm like ''%'+StringReplace(trim(tmpList.Strings[i]),':','',[rfReplaceAll, rfIgnoreCase])+'%'' ');
       end;
       tmpList.Free;
    end;
    sql.add('     group by xxzl.article)');
    SQL.Add(''+companytext+' ');
    if ddsell.Checked=true then
        SQL.Add('and left(ddzl.ddbh,2) <> ''ZS'' ');
    if edit1.text <>'' then
        SQL.Add('and xxzl.jijie = '''+edit1.Text+''' ');
    if CSBHedit.text <>'' then
        SQL.Add('and xxzls.csbh = '''+CSBHedit.Text+''' ');
    if companyEdit.text <>'' then
        SQL.Add('and zszl.zsqm like ''%'+companyEdit.Text+'%'' ');
    if buynoCB.text <>'' then
        SQL.Add('and ddzl.buyno like '''+buynocb.text+'%'' ');
    if CLZLedit.text <>'' then
      begin
      if SplitCK.Checked=true then
        tmpList:=FuncObj.SplitString(CLZLedit.Text,'*')
      else
        tmpList:=FuncObj.SplitString(CLZLedit.Text,' ');
      for i:=0 to tmpList.Count-1 do
      begin
      if trim(tmpList.Strings[i])<>'' then
        SQL.Add('and CLZL.ywpm like ''%'+StringReplace(trim(tmpList.Strings[i]),':','',[rfReplaceAll, rfIgnoreCase])+'%'' ');
      end;
    tmpList.Free;
    end;

    if notclzl.text <>'' then
      begin
        if SplitCK.Checked=true then
          tmpList:=FuncObj.SplitString(notclzl.Text,'*')
        else
          tmpList:=FuncObj.SplitString(notclzl.Text,' ');
        for i:=0 to tmpList.Count-1 do
        begin
        if trim(tmpList.Strings[i])<>'' then
            SQL.Add('AND CLZL.ywpm NOT like ''%'+StringReplace(trim(tmpList.Strings[i]),':','',[rfReplaceAll, rfIgnoreCase])+'%''')
        end;
      tmpList.Free;
    end;

    if nomat.text<>'' then
    begin
       SQL.Add('AND CLZL.cldh not like '''+nomat.Text+'%'' ');
    end;
    if onlymat.text<>'' then
    begin
       SQL.Add('AND CLZL.cldh like '''+onlymat.text+'%'' ');
    end;
    SQL.Add('  group by XXZLS.XH,xxzls.clbh,CLZL.ywpm,xxzls.csbh,zszl.zsqm,xxzl.article,xxzl.KHDH,clzl.kfdh,xxzls.xiexing,xxzls.shehao');

    SQL.Add('union all');
    SQL.Add('select XXZLS.XH,''Extra''AS DType,clzhzl.cldh1,CLZL.ywpm,clzhzl.ZSDH as csbh,zszl.zsqm,xxzl.article,');
    SQL.Add('xxzl.KHDH as XXZLKHDH,clzl.kfdh as CLZLKHDH,xxzls.xiexing,xxzls.shehao from xxzl ');
    SQL.Add('left join xxzls on xxzl.xiexing=xxzls.xiexing and xxzl.shehao=xxzls.shehao');
    SQL.Add('inner join clzhzl on xxzls.clbh=clzhzl.cldh ');
    SQL.Add('LEFT JOIN CLZL   ON clzhzl.cldh1 = CLZL.cldh ');
    SQL.Add('LEFT JOIN ZSZL on ZSZL.ZSDH=clzhzl.ZSDH  ');
    SQL.Add('left join ddzl on xxzl.xiexing=ddzl.xiexing and xxzl.shehao=ddzl.shehao ');
    SQL.Add('where clzhzl.cldh in( ');

    sql.add('select  xxzls.clbh from xxzl');
    sql.add('left join xxzls on xxzl.xiexing=xxzls.xiexing and xxzl.shehao=xxzls.shehao ');
    sql.add('left join zszl on zszl.zsdh=xxzls.csbh ');
    sql.add('left join clzl on clzl.cldh=xxzls.clbh');
    sql.add('left join ddzl on xxzl.xiexing=ddzl.xiexing and xxzl.shehao=ddzl.shehao');
    sql.add('where xxzl.article in');
    sql.add('(select xxzl.article from xxzl ');
    sql.add('left join xxzls on xxzl.xiexing=xxzls.xiexing and xxzl.shehao=xxzls.shehao');
    sql.add('left join clzl on clzl.cldh=xxzls.clbh');
    sql.add('left join ddzl on xxzl.xiexing=ddzl.xiexing and xxzl.shehao=ddzl.shehao');
    sql.add('left join zszl on zszl.zsdh=xxzls.csbh');
    sql.add('where xxzl.article is not null');
    sql.add('  and clzl.tyjh<>''Y''  ');   
    SQL.Add(''+companytext+' ');
    if edit1.text <>'' then
        SQL.Add('and xxzl.jijie = '''+edit1.Text+''' ');
    if CSBHedit.text <>'' then
        SQL.Add('and xxzls.csbh = '''+CSBHedit.Text+''' ');
    if companyEdit.text <>'' then
        SQL.Add('and zszl.zsqm like ''%'+companyEdit.Text+'%'' ');
    if buynoCB.text <>'' then
        SQL.Add('and ddzl.buyno like '''+buynocb.text+'%'' ');
    if CLZLedit.text <>'' then
      begin
      if SplitCK.Checked=true then
        tmpList:=FuncObj.SplitString(CLZLedit.Text,'*')
      else
        tmpList:=FuncObj.SplitString(CLZLedit.Text,' ');
      for i:=0 to tmpList.Count-1 do
      begin
      if trim(tmpList.Strings[i])<>'' then
        SQL.Add('and CLZL.ywpm like ''%'+StringReplace(trim(tmpList.Strings[i]),':','',[rfReplaceAll, rfIgnoreCase])+'%'' ');
      end;
    tmpList.Free;
    end;
    sql.add('group by xxzl.article)');
    SQL.Add(''+companytext+' ');
    if ddsell.Checked=true then
        SQL.Add('and left(ddzl.ddbh,2) <> ''ZS'' ');
    if edit1.text <>'' then
        SQL.Add('and xxzl.jijie = '''+edit1.Text+''' ');
    if CSBHedit.text <>'' then
        SQL.Add('and xxzls.csbh = '''+CSBHedit.Text+''' ');
    if companyEdit.text <>'' then
        SQL.Add('and zszl.zsqm like ''%'+companyEdit.Text+'%'' ');
    if buynoCB.text <>'' then
        SQL.Add('and ddzl.buyno like '''+buynocb.text+'%'' ');
    if CLZLedit.text <>'' then
      begin
      if SplitCK.Checked=true then
        tmpList:=FuncObj.SplitString(CLZLedit.Text,'*')
      else
        tmpList:=FuncObj.SplitString(CLZLedit.Text,' ');
      for i:=0 to tmpList.Count-1 do
      begin
      if trim(tmpList.Strings[i])<>'' then
        SQL.Add('and CLZL.ywpm like ''%'+StringReplace(trim(tmpList.Strings[i]),':','',[rfReplaceAll, rfIgnoreCase])+'%'' ');
      end;
    tmpList.Free;
    end;

    if notclzl.text <>'' then
    begin
        if SplitCK.Checked=true then
          tmpList:=FuncObj.SplitString(notclzl.Text,'*')
        else
          tmpList:=FuncObj.SplitString(notclzl.Text,' ');
        for i:=0 to tmpList.Count-1 do
        begin
        if trim(tmpList.Strings[i])<>'' then
            SQL.Add('AND CLZL.ywpm NOT like ''%'+StringReplace(trim(tmpList.Strings[i]),':','',[rfReplaceAll, rfIgnoreCase])+'%''')
        end;
        tmpList.Free;
    end;

    if nomat.text<>'' then
    begin
       SQL.Add('AND CLZL.cldh not like '''+nomat.text+'%''');
    end;
    if onlymat.text<>'' then
    begin
       SQL.Add('AND CLZL.cldh like '''+onlymat.text+'%''');
    end;
    SQL.Add('group by xxzls.clbh )');
    SQL.Add(''+companytext+' ');
    if buynoCB.text <>'' then
        SQL.Add('and ddzl.buyno like '''+buynocb.text+'%'' ');
    if ddsell.Checked=true then
        SQL.Add('and left(ddzl.ddbh,2) <> ''ZS'' ');
    if edit1.text <>'' then
        SQL.Add('and xxzl.jijie = '''+edit1.Text+''' ');
     SQL.Add('group by XXZLS.XH,clzhzl.cldh1,CLZL.ywpm,clzhzl.ZSDH,zszl.zsqm,xxzl.article,xxzl.KHDH,clzl.kfdh,xxzls.xiexing,xxzls.shehao)XXZLS');
     SQL.Add('order by article,XH,dType');
     //funcObj.WriteErrorLog(sql.Text);
     active:=true;
  end;


  try
    eclApp:=CreateOleObject('Excel.Application');
    WorkBook:=CreateOleObject('Excel.Sheet');
  except
    Application.MessageBox('NO Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
    Exit;
  end;
  try
    WorkBook:=eclApp.workbooks.Add;
    eclApp.ActiveSheet.Cells.NumberFormatLocal:='@';//將儲存格改成文字格式
    for   i:=0   to   quickexcel.fieldCount-1   do
       begin
           eclApp.Cells(1,i+1):=quickexcel.fields[i].FieldName;
       end;
    
    j:=2  ;
    quickexcel.First;
    while   not  quickexcel.Eof   do
    begin
        for   i:=0   to   quickexcel.fieldcount-1 do
        begin
          eclApp.Cells(j,i+1):=quickexcel.Fields[i].Value;
        end;
        quickexcel.next;
        inc(j);
    end;

      eclapp.columns.autofit;
      showmessage('Succeed.');
      eclApp.ActiveSheet.PageSetup.Orientation := 2; //列印直=1,橫式=2
      eclApp.Visible:=True;
  except
     on   F:Exception   do
       showmessage(F.Message);
  end;
  dbgrideh3.Visible:=false;

end;
procedure TMaterialCompany.Button8Click(Sender: TObject);
var
   tmpList :TStringlist;
   i:integer;
begin
  button7.Enabled:=true;
  if showson.Checked=true then
  begin
    MCB3a.Enabled:=true;
  end;
  if showson.Checked=false then
  begin
    MCB3a.Enabled:=false;
  end;
  with extramat do
  begin
    sql.Clear;
    sql.add('select XXZLS.* from( ');
    if showson.Checked=false then
    begin
    sql.add('  select  XXZLS.XH,''Assembly'' AS DType,''Assembly'' as DTypeBH,xxzls.clbh,CLZL.ywpm,xxzls.csbh,zszl.zsqm,');
    sql.add('  xxzl.article,xxzl.KHDH as XXZLKHDH,clzl.kfdh as CLZLKHDH,xxzls.xiexing,xxzls.shehao from xxzl');
    sql.add('  left join xxzls on xxzl.xiexing=xxzls.xiexing and xxzl.shehao=xxzls.shehao ');
    sql.add('  left join zszl on zszl.zsdh=xxzls.csbh ');
    sql.add('  left join clzl on clzl.cldh=xxzls.clbh');
    sql.add('  left join ddzl on xxzl.xiexing=ddzl.xiexing and xxzl.shehao=ddzl.shehao');
    sql.add('  where xxzl.article in');
    sql.add('    (select xxzl.article from xxzl ');
    sql.add('    left join xxzls on xxzl.xiexing=xxzls.xiexing and xxzl.shehao=xxzls.shehao');
    sql.add('    left join clzl on clzl.cldh=xxzls.clbh');
    sql.add('    left join ddzl on xxzl.xiexing=ddzl.xiexing and xxzl.shehao=ddzl.shehao');
    sql.add('    left join zszl on zszl.zsdh=xxzls.csbh');
    sql.add('    where xxzl.article is not null');
    SQL.Add(''+companytext+' ');
    if edit1a.text <>'' then
        SQL.Add('and xxzl.jijie like '''+edit1a.Text+'%'' ');
    if CSBHedita.text <>'' then
        SQL.Add('and xxzls.csbh = '''+CSBHedita.Text+''' ');
    if companyEdita.text <>'' then
        SQL.Add('and zszl.zsqm like '+''''+'%'+companyEdita.Text+'%'' ');
    if buynoCBa.text <>'' then
        SQL.Add('and ddzl.buyno like '''+buynocba.text+'%'' ');
    if CLZLedita.text <>'' then
    begin
       if SplitCK.Checked=true then
          tmpList:=FuncObj.SplitString(CLZLedita.Text,'*')
       else
          tmpList:=FuncObj.SplitString(CLZLedita.Text,' ');
       for i:=0 to tmpList.Count-1 do
       begin
          if trim(tmpList.Strings[i])<>'' then
             SQL.Add('and CLZL.ywpm like ''%'+StringReplace(trim(tmpList.Strings[i]),':','',[rfReplaceAll, rfIgnoreCase])+'%'' ');
       end;
      tmpList.Free;
    end;
    sql.add('  group by xxzl.article)');
    SQL.Add(''+companytext+' ');
    sql.add(' and clzl.tyjh<>''Y''  ');
    if ddsella.Checked=true then
        SQL.Add('and left(ddzl.ddbh,2) <> ''ZS'' ');
    if edit1a.text <>'' then
        SQL.Add('and xxzl.jijie = '''+edit1a.Text+''' ');
    if CSBHedita.text <>'' then
        SQL.Add('and xxzls.csbh = '''+CSBHedita.Text+''' ');
    if companyEdita.text <>'' then
        SQL.Add('and zszl.zsqm like '''+'%'+companyEdita.Text+'%'+'''');
    if buynoCBa.text <>'' then
        SQL.Add('and ddzl.buyno like '''+buynocba.text+'%'' ');
    if CLZLedita.text <>'' then
    begin
      if SplitCKa.Checked=true then
        tmpList:=FuncObj.SplitString(CLZLedita.Text,'*')
      else
        tmpList:=FuncObj.SplitString(CLZLedita.Text,' ');
      for i:=0 to tmpList.Count-1 do
      begin
        if trim(tmpList.Strings[i])<>'' then
           SQL.Add('and CLZL.ywpm like ''%'+StringReplace(trim(tmpList.Strings[i]),':','',[rfReplaceAll, rfIgnoreCase])+'%'' ');
      end;
      tmpList.Free;
    end;

    if notclzla.text <>'' then
    begin
        if SplitCKa.Checked=true then
          tmpList:=FuncObj.SplitString(notclzla.Text,'*')
        else
          tmpList:=FuncObj.SplitString(notclzla.Text,' ');
        for i:=0 to tmpList.Count-1 do
        begin
          if trim(tmpList.Strings[i])<>'' then
              SQL.Add('AND CLZL.ywpm NOT like ''%'+StringReplace(trim(tmpList.Strings[i]),':','',[rfReplaceAll, rfIgnoreCase])+'%''')
        end;
        tmpList.Free;
    end;

    if nomata.text<>'' then
    begin
       SQL.Add('AND CLZL.cldh not like '''+nomat.Text+'%'' ');
    end;
    if onlymata.text<>'' then
    begin
       SQL.Add('AND CLZL.cldh like '''+onlymata.Text+'%'+'''');
    end;
       SQL.Add('  group by XXZLS.XH,xxzls.clbh,CLZL.ywpm,xxzls.csbh,zszl.zsqm,xxzl.article,xxzl.KHDH,clzl.kfdh,xxzls.xiexing,xxzls.shehao');
       SQL.Add('union all');
    end;
    SQL.Add('select XXZLS.XH,''Extra''AS DType,clzhzl.cldh as DTypeBH,clzhzl.cldh1 as clbh,CLZL.ywpm,clzhzl.ZSDH as csbh,zszl.zsqm,xxzl.article,');
    SQL.Add('xxzl.KHDH as XXZLKHDH,clzl.kfdh as CLZLKHDH,xxzls.xiexing,xxzls.shehao from xxzl ');
    SQL.Add('left join xxzls on xxzl.xiexing=xxzls.xiexing and xxzl.shehao=xxzls.shehao');
    SQL.Add('inner join clzhzl on xxzls.clbh=clzhzl.cldh ');
    SQL.Add('LEFT JOIN CLZL   ON clzhzl.cldh1 = CLZL.cldh ');
    SQL.Add('LEFT JOIN ZSZL on ZSZL.ZSDH=clzhzl.ZSDH  ');
    SQL.Add('left join ddzl on xxzl.xiexing=ddzl.xiexing and xxzl.shehao=ddzl.shehao ');
    SQL.Add('where clzhzl.cldh in( ');

    sql.add('select  xxzls.clbh from xxzl');
    sql.add('left join xxzls on xxzl.xiexing=xxzls.xiexing and xxzl.shehao=xxzls.shehao ');
    sql.add('left join zszl on zszl.zsdh=xxzls.csbh ');
    sql.add('left join clzl on clzl.cldh=xxzls.clbh');
    sql.add('left join ddzl on xxzl.xiexing=ddzl.xiexing and xxzl.shehao=ddzl.shehao');
    sql.add('where xxzl.article in');
    sql.add('(select xxzl.article from xxzl ');
    sql.add('left join xxzls on xxzl.xiexing=xxzls.xiexing and xxzl.shehao=xxzls.shehao');
    sql.add('left join clzl on clzl.cldh=xxzls.clbh');
    sql.add('left join ddzl on xxzl.xiexing=ddzl.xiexing and xxzl.shehao=ddzl.shehao');
    sql.add('left join zszl on zszl.zsdh=xxzls.csbh');
    sql.add('where xxzl.article is not null');
    sql.add('and clzl.tyjh<>''Y''  ');
    SQL.Add(''+companytext+' ');
    if edit1a.text <>'' then
        SQL.Add('and xxzl.jijie = '''+edit1a.Text+''' ');
    if CSBHedita.text <>'' then
        SQL.Add('and xxzls.csbh = '''+CSBHedita.Text+''' ');
    if companyEdita.text <>'' then
        SQL.Add('and zszl.zsqm like ''%'+companyEdita.Text+'%'' ');
    if buynoCBa.text <>'' then
        SQL.Add('and ddzl.buyno like '''+buynocba.text+'%'' ');
    if CLZLedita.text <>'' then
    begin
      if SplitCK.Checked=true then
        tmpList:=FuncObj.SplitString(CLZLedita.Text,'*')
      else
        tmpList:=FuncObj.SplitString(CLZLedita.Text,' ');
      for i:=0 to tmpList.Count-1 do
      begin
        if trim(tmpList.Strings[i])<>'' then
          SQL.Add('and CLZL.ywpm like ''%'+StringReplace(trim(tmpList.Strings[i]),':','',[rfReplaceAll, rfIgnoreCase])+'%'' ');
      end;
      tmpList.Free;
    end;
    sql.add('group by xxzl.article)');
    SQL.Add(''+companytext+' ');
    if ddsella.Checked=true then
        SQL.Add('and left(ddzl.ddbh,2) <> ''ZS'' ');
    if edit1a.text <>'' then
        SQL.Add('and xxzl.jijie = '''+edit1a.Text+''' ');
    if CSBHedita.text <>'' then
        SQL.Add('and xxzls.csbh = '''+CSBHedita.Text+''' ');
    if companyEdita.text <>'' then
        SQL.Add('and zszl.zsqm like ''%'+companyEdita.Text+'%''  ');
    if buynoCBa.text <>'' then
        SQL.Add('and ddzl.buyno like '''+buynocba.text+'%'' ');
    if CLZLedita.text <>'' then
    begin
      if SplitCKa.Checked=true then
        tmpList:=FuncObj.SplitString(CLZLedita.Text,'*')
      else
        tmpList:=FuncObj.SplitString(CLZLedita.Text,' ');
      for i:=0 to tmpList.Count-1 do
      begin
        if trim(tmpList.Strings[i])<>'' then
          SQL.Add('and CLZL.ywpm like ''%'+StringReplace(trim(tmpList.Strings[i]),':','',[rfReplaceAll, rfIgnoreCase])+'%'' ');
      end;
      tmpList.Free;
    end;

    if notclzla.text <>'' then
    begin
        if SplitCKa.Checked=true then
          tmpList:=FuncObj.SplitString(notclzla.Text,'*')
        else
          tmpList:=FuncObj.SplitString(notclzla.Text,' ');
        for i:=0 to tmpList.Count-1 do
        begin
          if trim(tmpList.Strings[i])<>'' then
              SQL.Add('AND CLZL.ywpm NOT like ''%'+StringReplace(trim(tmpList.Strings[i]),':','',[rfReplaceAll, rfIgnoreCase])+'%''')
        end;
        tmpList.Free;
    end;

    if nomata.text<>'' then
    begin
       SQL.Add('AND CLZL.cldh not like '''+nomat.Text+'%'' ');
    end;
    if onlymata.text<>'' then
    begin
       SQL.Add('AND CLZL.cldh  like '''+onlymata.Text+'%'+'''');
    end;
    SQL.Add('group by xxzls.clbh)');
    if CSBHedita.text <>'' then
       SQL.Add('and clzhzl.ZSDH = '''+CSBHedita.Text+''' ');
    if companyEdita.text <>'' then
       SQL.Add('and zszl.zsqm like ''%'+companyEdita.Text+'%'' ');
    SQL.Add(''+companytext+' ');
    if CLZLedita.text <>'' then
      begin
      if SplitCKa.Checked=true then
        tmpList:=FuncObj.SplitString(CLZLedita.Text,'*')
      else
        tmpList:=FuncObj.SplitString(CLZLedita.Text,' ');
      for i:=0 to tmpList.Count-1 do
      begin
      if trim(tmpList.Strings[i])<>'' then
        SQL.Add('and CLZL.ywpm like ''%'+StringReplace(trim(tmpList.Strings[i]),':','',[rfReplaceAll, rfIgnoreCase])+'%'' ');
      end;
    tmpList.Free;
    end;

    if notclzla.text <>'' then
      begin
        if SplitCKa.Checked=true then
          tmpList:=FuncObj.SplitString(notclzla.Text,'*')
        else
          tmpList:=FuncObj.SplitString(notclzla.Text,' ');
        for i:=0 to tmpList.Count-1 do
        begin
        if trim(tmpList.Strings[i])<>'' then
            SQL.Add('AND CLZL.ywpm NOT like ''%'+StringReplace(trim(tmpList.Strings[i]),':','',[rfReplaceAll, rfIgnoreCase])+'%''')
        end;
      tmpList.Free;
    end;    
    if buynoCBa.text <>'' then
        SQL.Add('and ddzl.buyno like '''+buynocba.text+'%'' ');
    if ddsella.Checked=true then
        SQL.Add('and left(ddzl.ddbh,2) <> ''ZS'' ');
    if edit1a.text <>'' then
        SQL.Add('and xxzl.jijie = ''%'+edit1a.Text+'%'' ');
     SQL.Add('group by XXZLS.XH,clzhzl.cldh,clzhzl.cldh1,CLZL.ywpm,clzhzl.ZSDH,zszl.zsqm,xxzl.article,xxzl.KHDH,clzl.kfdh,xxzls.xiexing,xxzls.shehao)XXZLS');
     SQL.Add('order by article,XH,dType');
    //funcObj.WriteErrorLog(sql.Text);
    active:=true;
  end;
end;

procedure TMaterialCompany.MCB1aClick(Sender: TObject);
begin
  panel6.Visible:=true;
end;

procedure TMaterialCompany.Button7Click(Sender: TObject);
var   a:string;
      eclApp,WorkBook:olevariant;
      i,j:integer;
 begin
  if  extramat.active  then
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
        for   i:=0   to   extramat.fieldcount-1   do
          begin
              eclApp.Cells(1,i+1):=extramat.fields[i].FieldName;
          end;

        extramat.First;
        j:=2;
        while   not   extramat.Eof   do
          begin
            for   i:=0   to  extramat.fieldcount-1  do
            begin
              eclApp.Cells(j,i+1):=extramat.Fields[i].Value;
            end;
          extramat.Next;
          inc(j);
          end;
      eclapp.columns.autofit;
       eclApp.Visible:=True;
      except
        on   F:Exception   do
          showmessage(F.Message);
      end;
    end;
end;

procedure TMaterialCompany.MCB3aClick(Sender: TObject);
begin
  MCB3a.Enabled:=false;
  MCB1a.Enabled:=false;
  MCB4a.Enabled:=true;
  MCB5a.Enabled:=true;
  MCB6a.Enabled:=false;
  panel7.Visible:=true;
  with extramat do
  begin
    cachedupdates:=true;
    requestlive:=true;
    edit;
  end;
end;

procedure TMaterialCompany.MCB4aClick(Sender: TObject);
var
  i:integer;
  NDate:TDate;
begin
  MCB3a.Enabled:=true;
  MCB1a.Enabled:=true;
  MCB4a.Enabled:=false;
  MCB5a.Enabled:=false;
  MCB6a.Enabled:=true;
  panel7.Visible:=false;
  if leftalla.text=''  then
    showmessage('no data');
  if leftalla.text<>''  then
     try
       extramat.cachedupdates:=true;
       extramat.requestlive:=true;
       extramat.first;
       for i:=1 to extramat.RecordCount do
       begin
         begin
           extramat.edit;
           with gettime do          //取服務器的年月值
           begin
            active:=false;
            sql.Clear;
            sql.Add('select year(getdate()) as FY,month(getdate()) as FM ,getdate() as NDate');
            active:=true;
            NDate:=fieldbyname('Ndate').value;
           end;
           with gettime do
           begin
             active:=false;
             sql.Clear;
             sql.Add('update clzhzl set zsdh= '''+leftalla.text+''' ');
             sql.Add(',userid='''+main.Edit1.Text+'''  ');
             sql.Add(',userdate='''+formatdatetime('yyyyMMdd',Ndate)+'''');
             sql.Add('where cldh= '''+extramat.fieldbyname('DTypeBH').AsString+'''  ');
             sql.Add('and cldh1='''+extramat.fieldbyname('clbh').AsString+'''  ');
             execsql;
           end;
           with vnrecord do
           begin
             active:=false;
             sql.Clear;
             sql.Add('update clzhzl set zsdh= '''+leftalla.text+''' ');
             sql.Add(',userid='''+main.Edit1.Text+'''  ');
             sql.Add(',userdate='''+formatdatetime('yyyyMMdd',Ndate)+'''');
             sql.Add('where cldh= '''+extramat.fieldbyname('DTypeBH').AsString+'''  ');
             sql.Add('and cldh1='''+extramat.fieldbyname('clbh').AsString+'''  ');
             execsql;
           end;
           with vnrecord do
           begin
             active:=false;
             sql.Clear;
             sql.add('insert into BModRec_Dev ');
             sql.add('(TableName,TNO,XieXing,Shehao,CSBH,DelID,DelDate)');
             sql.add('values ('+''''+'clzhzl'+'''');
             sql.add(','+''''+'modifycsbh'+'''');
             sql.add(','+''''+extramat.fieldbyname('DTypeBH').AsString+''''+','+''''+extramat.fieldbyname('clbh').AsString+''''+',') ;
             sql.Add(''''+extramat.FieldByName('csbh').AsString+''''+',');
             sql.add(''''+main.Edit1.Text+''''+',getdate())');
             execsql;
           end;
         end;
         extramat.next;
       end;
       extramat.active:=false;
       extramat.cachedupdates:=false;
       extramat.requestlive:=false;
       csbhmod.active:=true;
       except
         Messagedlg('Have wrong,can not save!',mtwarning,[mbyes],0);
       end;
       MaterialCompany.leftalla.text:='';
end;

procedure TMaterialCompany.BitBtn2Click(Sender: TObject);
begin
  ManufacturerChoose:=TManufacturerChoose.create(self);
  ManufacturerChoose.show;
  CSBH_Flag:=3;
end;

procedure TMaterialCompany.MCB5aClick(Sender: TObject);
begin
  MCB3a.Enabled:=true;
  MCB1a.Enabled:=true;
  MCB4a.Enabled:=false;
  MCB5a.Enabled:=false;
  MCB6a.Enabled:=true;
  panel7.Visible:=false;
  MaterialCompany.leftalla.text:='';
end;

procedure TMaterialCompany.Button5Click(Sender: TObject);
begin
  Button4.Enabled:=true;
  BitBtn5.Enabled:=true;
  with onlyson do
  begin
    active:=false;  
    sql.Clear;
    sql.add('select clzhzl.cldh as mom,cldh1 as son,clzl.ywpm,clzhzl.zsdh,zszl.zsywjc as supplier,xxzl.KHDH from clzhzl');
    sql.add('left join clzl on clzl.cldh=clzhzl.cldh1 ');
    sql.add('left join zszl on zszl.zsdh=clzhzl.zsdh');
    sql.add('left join xxzls on xxzls.clbh=clzhzl.cldh');
    sql.add('left join xxzl on xxzl.xiexing=xxzls.xiexing and xxzl.shehao=xxzls.shehao');
    sql.add('where clzhzl.cldh is not null ');
    if edit6.Text <>'' then
      sql.add('and xxzl.KHDH = '''+edit6.Text+''' ');
    sql.add('and clzhzl.cldh in(select clzhzl.cldh from clzhzl left join clzl on clzl.cldh=clzhzl.cldh where clzl.tyjh<>''Y'') ');
    sql.add('  and clzl.tyjh<>''Y''  ');
    if edit2.Text <>'' then
      sql.add('and clzl.ywpm like '''+'%'+edit2.Text+'%'+'''');
    if edit4.Text <>'' then
      sql.add('and clzhzl.cldh1 = '''+edit4.Text+''' ');
    if edit3.Text <>'' then
      sql.add('and clzhzl.zsdh = '''+edit3.Text+''' ');
    if edit5.Text <>'' then
      sql.add('and clzhzl.zsdh <> '''+edit5.Text+''' ');
    sql.add('and xxzls.clbh in (select clzhzl.cldh from clzhzl ');
    sql.add('left join clzl on clzl.cldh=clzhzl.cldh1 ');
    sql.add('left join zszl on zszl.zsdh=clzhzl.zsdh ');
    sql.add('left join xxzls on xxzls.clbh=clzhzl.cldh');
    sql.add('left join xxzl on xxzl.xiexing=xxzls.xiexing and xxzl.shehao=xxzls.shehao');
    sql.add('where clzhzl.cldh is not null');
    if edit2.Text <>'' then
      sql.add('and clzl.ywpm like ''%'+edit2.Text+'%'+'''');
    if edit6.Text <>'' then
      sql.add('and xxzl.KHDH like ''%'+edit6.Text+'%'+'''');
    if edit4.Text <>'' then
      sql.add('and clzhzl.cldh1 = '''+edit4.Text+''' ');
    if edit3.Text <>'' then
      sql.add('and clzhzl.zsdh = '''+edit3.Text+''' ');
    if edit5.Text <>'' then
      sql.add('and clzhzl.zsdh <> '''+edit5.Text+''' ');
    sql.add(')');
    sql.add('group by clzhzl.cldh,cldh1,clzl.ywpm,clzhzl.zsdh,zszl.zsywjc,xxzl.KHDH');
    active:=true;
  end;
end;

procedure TMaterialCompany.BitBtn3Click(Sender: TObject);
begin
  panel9.Visible:=true;
end;

procedure TMaterialCompany.Button4Click(Sender: TObject);
var   a:string;
      eclApp,WorkBook:olevariant;
      i,j:integer;
 begin
  if  onlyson.active  then
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
        for   i:=0   to   onlyson.fieldcount-1   do
          begin
              eclApp.Cells(1,i+1):=onlyson.fields[i].FieldName;
          end;

        onlyson.First;
        j:=2;
        while   not   onlyson.Eof   do
          begin
            for   i:=0   to  onlyson.fieldcount-1  do
            begin
              eclApp.Cells(j,i+1):=onlyson.Fields[i].Value;
            end;
          onlyson.Next;
          inc(j);
          end;
      eclapp.columns.autofit;
       eclApp.Visible:=True;
      except
        on   F:Exception   do
          showmessage(F.Message);
      end;
    end;
end;

procedure TMaterialCompany.BitBtn5Click(Sender: TObject);
begin
  BitBtn5.Enabled:=false;
  BitBtn3.Enabled:=false;
  BitBtn6.Enabled:=true;
  BitBtn7.Enabled:=true;
  BitBtn8.Enabled:=false;
  panel11.Visible:=true;
  with onlyson do
  begin
    cachedupdates:=true;
    requestlive:=true;
    edit;
  end;
end;

procedure TMaterialCompany.BitBtn9Click(Sender: TObject);
begin
    ManufacturerChoose:=TManufacturerChoose.create(self);
    ManufacturerChoose.show;
    CSBH_Flag:=4;
end;

procedure TMaterialCompany.BitBtn6Click(Sender: TObject);
var
  i:integer;
  NDate:TDate;
begin
  BitBtn5.Enabled:=true;
  BitBtn3.Enabled:=true;
  BitBtn6.Enabled:=false;
  BitBtn7.Enabled:=false;
  BitBtn8.Enabled:=true;
  Panel11.Visible:=false;
  if leftallson.text=''  then
    showmessage('no data');
  if leftallson.text<>''  then
     try
       Onlyson.cachedupdates:=true;
       Onlyson.requestlive:=true;
       Onlyson.first;
       for i:=1 to Onlyson.RecordCount do
       begin
         begin
           Onlyson.edit;
           with gettime do          //取服務器的年月值
           begin
            active:=false;
            sql.Clear;
            sql.Add('select year(getdate()) as FY,month(getdate()) as FM ,getdate() as NDate');
            active:=true;
            NDate:=fieldbyname('Ndate').value;
           end;
           with gettime do
           begin
             active:=false;
             sql.Clear;
             sql.Add('update clzhzl set zsdh= '''+leftallson.text+''' ');
             sql.Add(',userid='''+main.Edit1.Text+'''  ');
             sql.Add(',userdate='''+formatdatetime('yyyyMMdd',Ndate)+'''');
             sql.Add('where cldh= '''+Onlyson.fieldbyname('mom').AsString+'''  ');
             sql.Add('and cldh1='''+Onlyson.fieldbyname('son').AsString+'''  ');
             execsql;
           end;
           with vnrecord do
           begin
             active:=false;
             sql.Clear;
             sql.Add('update clzhzl set zsdh= '''+leftallson.text+''' ');
             sql.Add(',userid='''+main.Edit1.Text+'''  ');
             sql.Add(',userdate='''+formatdatetime('yyyyMMdd',Ndate)+'''');
             sql.Add('where cldh= '''+Onlyson.fieldbyname('mom').AsString+'''  ');
             sql.Add('and cldh1='''+Onlyson.fieldbyname('son').AsString+'''  ');
             execsql;
           end;

           with vnrecord do
           begin
             active:=false;
             sql.Clear;
             sql.add('insert into BModRec_Dev ');
             sql.add('(TableName,TNO,XieXing,Shehao,CSBH,DelID,DelDate)');
             sql.add('values ('+''''+'clzhzl'+'''');
             sql.add(','+''''+'modifycsbh'+'''');
             sql.add(','+''''+Onlyson.fieldbyname('mom').AsString+''''+','+''''+Onlyson.fieldbyname('son').AsString+''''+',') ;
             sql.Add(''''+Onlyson.FieldByName('zsdh').AsString+''''+',');
             sql.add(''''+main.Edit1.Text+''''+',getdate())');
             execsql;
           end;
         end;
         Onlyson.next;
       end;
       Onlyson.active:=false;
       Onlyson.cachedupdates:=false;
       Onlyson.requestlive:=false;
       Onlyson.active:=true;
       except
         Messagedlg('Have wrong,can not save!',mtwarning,[mbyes],0);
       end;
       MaterialCompany.leftallson.text:='';
end;

procedure TMaterialCompany.BitBtn7Click(Sender: TObject);
begin
  BitBtn5.Enabled:=true;
  BitBtn3.Enabled:=true;
  BitBtn6.Enabled:=false;
  BitBtn7.Enabled:=false;
  BitBtn8.Enabled:=true;
  Panel11.Visible:=false;
  MaterialCompany.leftallson.text:='';
end;

procedure TMaterialCompany.BitBtn8Click(Sender: TObject);
begin
  close;
end;

procedure TMaterialCompany.BitBtn15Click(Sender: TObject);
begin
  close;
end;

procedure TMaterialCompany.Button9Click(Sender: TObject);
begin
 with Supplier do
  begin
    active:=false;
    sql.Clear;
    sql.add('select zszl_DEV.zsdh,ZSZL_dev.GSBH,zszl.zsqm,zszl.zsywjc,zszl_dev.release from zszl_DEV');
    sql.add('left join zszl on ZSZL.zsdh=zszl_DEV.zsdh');
    sql.add('where zszl_DEV.zsdh is not null');
    if edit7.text <>'' then
       SQL.Add('and zszl_DEV.zsdh like '+''''+'%'+edit7.Text+'%'+'''');
    if edit8.text <>'' then
       SQL.Add('and zszl_DEV.GSBH like '+''''+'%'+edit8.Text+'%'+'''');
    if edit9.text <>'' then
       SQL.Add('and zszl.zsywjc like '+''''+'%'+edit9.Text+'%'+'''');
    if main.edit2.Text='CDC' then
       SQL.Add('and (zszl_DEV.GSBH=''CDC'' or zszl_DEV.GSBH=''VA12'')');
    sql.add('group by zszl_DEV.zsdh,ZSZL_dev.GSBH,zszl.zsqm,zszl.zsywjc,zszl_dev.release');
    //memo2.text:=sql.Text;
    active:=true;
  end;
  bitbtn11.Enabled:=true;
  bitbtn12.Enabled:=true;
end;

procedure TMaterialCompany.BitBtn13Click(Sender: TObject);
var
 i:integer;

begin
  panel15.Visible:=false;
  bitbtn11.Enabled:=true;
  bitbtn12.Enabled:=true;
  bitbtn13.Enabled:=false;
  bitbtn14.Enabled:=false;
  try
    supplier.cachedupdates:=true;
    supplier.requestlive:=true;
    supplier.first;
    for i:=1 to supplier.RecordCount do
    begin
      case supplier.updatestatus of
         usinserted:
         begin
            Updsupplier.apply(ukinsert);
         end;
         usmodified:
         begin
            Updsupplier.apply(ukmodify);
         end;
      end;
      supplier.next;
    end;
    with supplier do
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

procedure TMaterialCompany.BitBtn12Click(Sender: TObject);
begin
  bitbtn11.Enabled:=false;
  bitbtn12.Enabled:=false;
  bitbtn13.Enabled:=true;
  bitbtn14.Enabled:=true;
  with supplier do
  begin
    cachedupdates:=true;
    requestlive:=true;
    edit;
  end;
end;

procedure TMaterialCompany.BitBtn11Click(Sender: TObject);
begin
  bitbtn11.Enabled:=false;
  bitbtn12.Enabled:=false;
  bitbtn13.Enabled:=true;
  bitbtn14.Enabled:=true;
  with supplier do
     begin
        cachedupdates:=true;
        requestlive:=true;
        Insert;
      end;
DBGridEh6.Columns[0].ButtonStyle:=cbsellipsis;
end;

procedure TMaterialCompany.BitBtn14Click(Sender: TObject);
begin
  panel15.Visible:=false;
  bitbtn11.Enabled:=true;
  bitbtn12.Enabled:=true;
  bitbtn13.Enabled:=false;
  bitbtn14.Enabled:=false;
  with supplier do
  begin
    active:=false;
    cachedupdates:=false;
    requestlive:=false;
    active:=true;
  end;
end;

procedure TMaterialCompany.Button10Click(Sender: TObject);
begin
with qrysupplier do
 begin
    active:=false;
    sql.Clear;
    sql.add('select zsdh,zsywjc from zszl');
    sql.add('group by zsdh,zsqm,zsywjc');
    if edit10.text <>'' then
       SQL.Add('and zsdh like '+''''+'%'+edit10.Text+'%'+'''');
    if edit11.text <>'' then
       SQL.Add('and zsywjc like '+''''+'%'+edit11.Text+'%'+'''');
    //memo2.text:=sql.Text;
    active:=true;
  end;
end;

procedure TMaterialCompany.DBGridEh6Columns0EditButtonClick(
  Sender: TObject; var Handled: Boolean);
begin
  Panel15.Visible:=true;
end;

procedure TMaterialCompany.DBGridEh7CellClick(Column: TColumnEh);
begin
  with supplier do
     begin
        cachedupdates:=true;
        requestlive:=true;
        Insert;
        supplier.FieldByName('zsdh').Value:=qrysupplier.FieldByName('zsdh').Value;
      end;
end;

end.



