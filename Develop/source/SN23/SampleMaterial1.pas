unit SampleMaterial1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Mask, DB, DBTables, Buttons, Grids, DBGrids,
  ExtCtrls,comobj, Menus, GridsEh, DBGridEh,ehlibBDE, ADODB, ComCtrls,IniFiles;

type
  TSampleMaterial = class(TForm)
    Panel2: TPanel;
    DBGrid1: TDBGridEh;
    Panel3: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    YWPMEdit: TEdit;
    Button1: TButton;
    Panel1: TPanel;
    BB2: TBitBtn;
    BB3: TBitBtn;
    BB4: TBitBtn;
    BB5: TBitBtn;
    BB6: TBitBtn;
    BB7: TBitBtn;
    BB1: TBitBtn;
    BBT1: TBitBtn;
    BBT2: TBitBtn;
    BBT3: TBitBtn;
    BBT4: TBitBtn;
    bbt5: TBitBtn;
    bbt6: TBitBtn;
    DS1: TDataSource;
    MatQuery: TQuery;
    UpSQL1: TUpdateSQL;
    Panel4: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DBEdit1: TDBEdit;
    DBMemo1: TDBMemo;
    CBX2: TDBComboBox;
    Label6: TLabel;
    tmpQuery: TQuery;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    DBMemo2: TDBMemo;
    DBX2: TDBComboBox;
    DBEdit2: TDBEdit;
    Label7: TLabel;
    ShowCK: TCheckBox;
    Combined1: TMenuItem;
    Label8: TLabel;
    Edit4: TEdit;
    Label9: TLabel;
    bbt7: TBitBtn;
    TWQuery: TADOQuery;
    ERPQuery: TADOQuery;
    Label10: TLabel;
    StageCombox: TComboBox;
    MatQueryCLDH: TStringField;
    MatQueryYWPM: TStringField;
    MatQueryZWPM: TStringField;
    MatQueryDWBH: TStringField;
    MatQueryCLBM: TStringField;
    MatQueryCLLB: TStringField;
    MatQueryclzmlb: TStringField;
    MatQuerylycc: TStringField;
    MatQueryxhcl: TStringField;
    MatQueryjkcl: TStringField;
    MatQuerygjlb: TStringField;
    MatQuerycltd: TStringField;
    MatQuerytyjh: TStringField;
    MatQuerycqdh: TStringField;
    MatQueryUserID: TStringField;
    MatQueryUserDATE: TDateTimeField;
    MatQueryYN: TStringField;
    MatQueryJHDH: TStringField;
    MatQueryJHYWPM: TStringField;
    MatQueryUseCount: TIntegerField;
    bbt8: TBitBtn;
    SplitCK: TCheckBox;
    bbt9: TBitBtn;
    FilterPanel: TPanel;
    Shape1: TShape;
    Label11: TLabel;
    ComType: TComboBox;
    GroupBox1: TGroupBox;
    UsedSpecCK: TCheckBox;
    UsedPurCK: TCheckBox;
    Label12: TLabel;
    FormalMatEdit: TEdit;
    GroupBox2: TGroupBox;
    UsedCK: TCheckBox;
    TransferviewBtn: TBitBtn;
    SortCK: TCheckBox;
    OpenV_T: TCheckBox;
    SeasonEdit: TEdit;
    StageEdit: TEdit;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    StopCombo: TComboBox;
    Label16: TLabel;
    DTP1: TDateTimePicker;
    Label17: TLabel;
    DTP2: TDateTimePicker;
    DTPCK: TCheckBox;
    ClassCombo: TComboBox;
    Label18: TLabel;
    FormalCK: TComboBox;
    ExeQuery: TQuery;
    UsedInvCK: TCheckBox;
    DropCK: TCheckBox;
    OnlyDC: TCheckBox;
    AddSpecVTCK: TCheckBox;
    MatQueryzsdh: TStringField;
    MatQueryzsywjc: TStringField;
    Label19: TLabel;
    ComboBox2: TComboBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure BB7Click(Sender: TObject);
    procedure BB1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BB2Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure BBT1Click(Sender: TObject);
    procedure BBT2Click(Sender: TObject);
    procedure BBT3Click(Sender: TObject);
    procedure BBT4Click(Sender: TObject);
    procedure bbt6Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure BB5Click(Sender: TObject);
    procedure DBGrid1ColEnter(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure DBGrid1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure FormDestroy(Sender: TObject);
    procedure Combined1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure bbt7Click(Sender: TObject);
    procedure bbt8Click(Sender: TObject);
    procedure bbt9Click(Sender: TObject);
    procedure StageComboxChange(Sender: TObject);
    procedure Shape1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure DBGrid1EditButtonClick(Sender: TObject);
    procedure TransferviewBtnClick(Sender: TObject);
    procedure OpenV_TClick(Sender: TObject);
    //procedure N2Click(Sender: TObject);
  private
    { Private declarations }
    procedure GetTWMaterialData();
    Function CheckIsRepeat(CLDH:string;CH:string;EN:string):String;
    procedure TransferNormalMaterial(JHDH:String;CLDH:String);
    procedure ReadIni();
  public
    Develop_N23_KHDH:String;
    { Public declarations }
  end;

var
  SampleMaterial: TSampleMaterial;

implementation

uses main1,SampleMaterial_Combinated1, SampleOrder_Mat1,
     MaterialArticle1, UseCLZL_LS1, SampleMaterial_Supplier1, FunUnit;

{$R *.dfm}

procedure TSampleMaterial.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if MatQuery.requestlive then
  begin
    messagedlg('You have to save data first.',mtwarning,[mbyes],0);
    action:=canone;
  end
  else
   action:=Cafree;
end;

procedure TSampleMaterial.FormCreate(Sender: TObject);
begin
  StageCombox.Items.Clear;
  if main.Edit2.Text='CDC' then
  begin
    StageCombox.Items.Add('V90A');
    StageCombox.Items.Add('V90B');
    StageCombox.Items.Add('V90C');
    StageCombox.Items.Add('V90G');
    StageCombox.Items.Add('V90H');
    StageCombox.Items.Add('V90I');
    //Spec Addtion 臨時類別 不會正式料號
    StageCombox.Items.Add('V90M');
  end else if main.Edit2.Text='KDC' then
  begin
    StageCombox.Items.Add('V90D');
    StageCombox.Items.Add('V90E');
    StageCombox.Items.Add('V90F');
    StageCombox.Items.Add('V90J');
    StageCombox.Items.Add('V90K');
    StageCombox.Items.Add('V90L');
    //Spec Addtion 臨時類別 不會正式料號
    StageCombox.Items.Add('V90N');
  end else //其他開發中心臨時料號編碼
  begin
    StageCombox.Items.Add('V90O');
    StageCombox.Items.Add('V90P');
    StageCombox.Items.Add('V90Q');
    StageCombox.Items.Add('V90R');
    StageCombox.Items.Add('V90S');
    StageCombox.Items.Add('V90T');
    //Spec Addtion 臨時類別 不會正式料號
    StageCombox.Items.Add('V90U');
  end;
  StageCombox.ItemIndex:=0;
  //
  with tmpQuery do
  begin
    active:=false;
    sql.Clear;
    sql.Add('select LBDH  from LBZLS where LB='+''''+'02'+'''' )   ;
    sql.add('order by LBDH ');
    active:=true;
    CBX2.Clear;
    DBX2.Clear;
    while not eof do
      begin
        CBX2.Items.add(fieldbyname('LBDH').asstring);
        DBX2.Items.add(fieldbyname('LBDH').asstring);
        next;
      end;
    active:=false;
  end;
  //IT 20150324管理料號轉換
  with tmpQuery do
  begin
    Active:=false;
    SQL.Clear;
    if main.Edit2.Text <> 'SKX' then
      SQL.Add('Select Depid from BUsers where UserID='''+main.Edit1.Text+''' and Depid='''+main.Edit2.Text+''' ')
    else begin
      SQL.Add('Select Depid from BUsers where UserID='''+main.Edit1.Text+''' and Depid in (''SKX'',''SRL'') ');
      Label19.Visible := true;
      ComboBox2.Visible := true;
    end;
    Active:=true;
    if RecordCount>0 then bbt9.Enabled:=true else bbt9.Enabled:=false;
    Active:=false;
  end;
  //
  DTP1.Date:=Date()-30;
  DTP2.Date:=Date();
  ReadIni();
end;

procedure TSampleMaterial.ReadIni();
var MyIni :Tinifile;
    AppDir,DBIP,DBUser,DBPass,DBName:string;
    User,Pass,spassword,sline,tempstr:string;
    i,ad:integer;
begin
  Develop_N23_KHDH:='036';
  AppDir:=ExtractFilePath(Application.ExeName);
  if FileExists(AppDir+'\ComName.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ComName.ini');
      Develop_N23_KHDH:=MyIni.ReadString('ERP','Develop_N23_KHDH_'+main.Edit2.Text,'036');

      DBIP:=MyIni.ReadString('ERPServer','IP','192.168.23.9');
      DBName:=MyIni.ReadString('ERPServer','Database','LIY_ERP');
      User:=MyIni.ReadString('ERPServer','User','tyxuan');
      Pass:=MyIni.ReadString('ERPServer','Pass','3mdfn');
      //Dencrypt password
      sline:='';
      ad:=strtoint(copy(Pass,0,1)); //取得解密字元
      for i:=2 to (length(Pass)) do //解密迴圈
      begin
        tempstr:=copy(Pass,i,1);
        sline:=sline+chr(ord(tempstr[1])-ad);
      end;
      spassword:=sline;
      ERPQuery.ConnectionString:='Provider=SQLOLEDB.1;Password='+spassword+';Persist Security Info=True;User ID='+User+';Initial Catalog='+DBName+';Data Source='+DBIP;
    //
    finally
      MyIni.Free;
    end;
  end;
end;

procedure TSampleMaterial.BB7Click(Sender: TObject);
begin
close;
end;

procedure TSampleMaterial.BB1Click(Sender: TObject);
begin
panel3.Visible:=true;
edit1.SetFocus;
end;

procedure TSampleMaterial.Button1Click(Sender: TObject);
var tmpList:TStringlist;
    i:integer;
    DataCount:string;
begin
  if (main.Edit2.Text = 'SKX') and (ComboBox2.Text = '') then begin
    showmessage('Please Keyin Brand First!');
    abort;
  end;
  if BB6.Enabled=true then bb6.Click;
  with MatQuery do
  begin
    active:=false;
    sql.clear;
    if ShowCK.Checked=true then  DataCount:='12' else DataCount:='5000';
    sql.add('select top '+DataCount+' CLZL.CLDH,CLZL.YWPM,CLZL.ZWPM,CLZL.DWBH,CLZL.CLBM,CLZL.CLLB,CLZL.clzmlb,CLZL.lycc,CLZL.xhcl,CLZL.jkcl,CLZL.gjlb,clzl.zsdh,zszl.zsywjc as ZSJC, ');
    sql.add('              CLZL.cltd,CLZL.tyjh,CLZL.cqdh,CLZL.UserID,CLZL.UserDATE,CLZL.YN,CLZL_LS.JHDH,JHZL.YWPM as JHYWPM ');
    if ((UsedSpecCK.Checked=true)  or (UsedPurCK.Checked=true )) then
      sql.add(',YPZLS.UseCount  ')
    else
      sql.add(',0 as UseCount ');
    sql.add(' from CLZL with (NoLock)  ');
    sql.add('left join zszl on zszl.zsdh=clzl.zsdh ');
    sql.add('left join CLZL_LS on CLZL.CLDH=CLZL_LS.CLDH  ');
    sql.add('left join CLZL  as JHZL  with (NoLock)  on JHZL.CLDH=CLZL_LS.JHDH  ');
    if ((UsedSpecCK.Checked=true)  or (UsedPurCK.Checked=true )) then
    begin
      sql.add('left join ( ');
      sql.add('select CLBH,Count(CLBH) as UseCount from ( ');
      //子料號
      if UsedSpecCK.Checked=true   then
      begin
        sql.add('select ''Spec'' as Type,YPZL.YPDH as No,Null as Mother,CLBH  from YPZLS,YPZL,KFXXZL where YPZL.YPDH=YPZLS.YPDH and  YPZL.SheHao=KFXXZL.SheHao and KFXXZL.XieXing=YPZL.XieXing ');
        if DTPCK.Checked=true then
        begin
          sql.add('   and convert(smalldatetime,convert(varchar,YPZL.UserDate,111)) between ');
          sql.add('   '''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date) +'''');
        end;
        if SeasonEdit.Text<>'' then
          sql.add('and KFXXZL.JiJie='''+SeasonEdit.Text+'''  ');
        if StageEdit.Text<>'' then
          sql.add('and YPZL.KFJD='''+StageEdit.Text+''' ');
        if main.Edit2.Text <> 'SKX' then
          sql.add('and KFXXZL.KHDH in ('''+SampleMaterial.Develop_N23_KHDH+''' ) and YPZLS.CLBH like ''V90%''  ')
        else if ComboBox2.Text = 'SKX' then
          sql.add('and KFXXZL.KHDH in (''0075'' ) and YPZLS.CLBH like ''V90%''  ')
        else if ComboBox2.Text = 'SRL' then
          sql.add('and KFXXZL.KHDH in (''0077'' ) and YPZLS.CLBH like ''V90%''  ');
        sql.add('union all ');
        sql.add('select ''Child'' as Type,YPZL.YPDH as No,YPZLS.CLBH as Mother,Clzhzl.CLDH1 as CLBH from YPZLS ');
        sql.add('inner join YPZL on YPZL.YPDH=YPZLS.YPDH ');
        sql.add('inner join KFXXZL on YPZL.SheHao=KFXXZL.SheHao and KFXXZL.XieXing=YPZL.XieXing ');
        sql.add('inner join Clzhzl on YPZLS.CLBH=Clzhzl.CLDH  ');
        sql.add('left join XXZLKF on XXZLKF.SheHao=KFXXZL.SheHao and KFXXZL.XieXing=XXZLKF.XieXing  ');
        sql.add('where   Clzhzl.CLDH1 like ''V90%'' ');
        if DTPCK.Checked=true then
        begin
          sql.add('   and convert(smalldatetime,convert(varchar,YPZL.UserDate,111)) between ');
          sql.add('   '''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date) +'''');
        end;
        if SeasonEdit.Text<>'' then
          sql.add('and KFXXZL.JiJie='''+SeasonEdit.Text+'''  ');
        if StageEdit.Text<>'' then
          sql.add('and YPZL.KFJD='''+StageEdit.Text+''' ');

        if main.Edit2.Text <> 'SKX' then
          sql.add('and KFXXZL.KHDH in ('''+SampleMaterial.Develop_N23_KHDH+''' ) ')
        else if ComboBox2.Text = 'SKX' then
          sql.add('and KFXXZL.KHDH in (''0075'' ) ')
        else if ComboBox2.Text = 'SRL' then
          sql.add('and KFXXZL.KHDH in (''0077'' ) ');
        if DropCK.Checked=true then
          sql.add('and (xxzlKF.DROPPED<>1 or xxzlKF.DROPPED is null) ');
      end;
      //採購單
      if UsedPurCK.Checked=true then
      begin
        if UsedSpecCK.Checked=true then sql.add('union all ');
        sql.add('select ''Purchase'' as Type,CGZL.CGNO as No,Null as Mother,CLBH from CGZLS ');
        sql.add('inner join CGZL on CGZL.CGNO=CGZLS.CGNO ');
        sql.add('where CGZL.GSBH='''+main.Edit2.Text+'''  and CGZLS.CLBH like ''V90%'' ');
        if DTPCK.Checked=true then
        begin
          sql.add('   and convert(smalldatetime,convert(varchar,CGZL.UserDate,111)) between ');
          sql.add('   '''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date) +'''');
        end;
        if SeasonEdit.Text<>'' then
          sql.add('and CGZL.Season='''+SeasonEdit.Text+'''  ');
        if StageEdit.Text<>'' then
          sql.add('and CGZL.Purpose='''+StageEdit.Text+''' ');
      end;

      //發票ETA
      if UsedInvCK.Checked=true then
      begin
        if ((UsedSpecCK.Checked=true) or (UsedPurCK.Checked=true)) then sql.add('union all ');
        sql.add('select ''Invoice'' as Type,CGZL.CGNO as No,Null as Mother,CLBH from CGZLInvoiceS ');
        sql.add('inner join CGZL on CGZL.CGNO=CGZLInvoiceS.CGNO ');
        sql.add('where CGZL.GSBH='''+main.Edit2.Text+''' and CGZLInvoiceS.CLBH like ''V90%'' ');
        //
        if DTPCK.Checked=true then
        begin
          sql.add('   and convert(smalldatetime,convert(varchar,CGZLInvoiceS.UserDate,111)) between ');
          sql.add('   '''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date) +'''');
        end;
        if SeasonEdit.Text<>'' then
          sql.add('and CGZL.Season='''+SeasonEdit.Text+'''  ');
        if StageEdit.Text<>'' then
          sql.add('and CGZL.Purpose='''+StageEdit.Text+''' ');
      end;

      sql.add(') YPZLSAll  Group by CLBH ) YPZLS on YPZLS.CLBH=CLZL.CLDH  ');
    end;
    //
    sql.add('where CLZL.CLDH like ''V90%''  ');
    if Edit1.Text <> '' then
      sql.add('and CLZL.CLDH like '''+edit1.Text+'%'+'''');
    if YWPMEdit.Text<>'' then
    begin
      if SplitCK.Checked=true then
         tmpList:=FuncObj.SplitString(YWPMEdit.Text,'*')
      else
         tmpList:=FuncObj.SplitString(YWPMEdit.Text,' ');
      for i:=0 to tmpList.Count-1 do
      begin
          if trim(tmpList.Strings[i])<>'' then
            SQL.Add('and CLZL.YWPM like ''%'+StringReplace(trim(tmpList.Strings[i]),':','',[rfReplaceAll, rfIgnoreCase])+'%'' ');
      end;
      tmpList.Free;
    end;
    // add search userid
    if Edit4.Text <> '' then
      sql.Add('and CLZL.userid like '''+edit4.Text+'%'+'''');
    //
    //正式料號
    if FormalCK.ItemIndex=1 then
      sql.add('and IsNull(CLZL_LS.JHDH,'''')<>'''' ')
    else if FormalCK.ItemIndex=2 then
      sql.add('and IsNull(CLZL_LS.JHDH,'''')='''' ');
    if UsedCK.Checked=true then
      sql.add('and YPZLS.UseCount>0 ');
    if ComType.Text<>'' then
      sql.add('and CLZL.CLZMLB='''+ComType.Text+''' ');
    if StopCombo.Text='N' then
      sql.Add('and IsNull(clzl.tyjh,'''')<>''Y''  ');
    if StopCombo.Text='Y' then
      sql.Add('and clzl.tyjh=''Y''  ');
    if FormalMatEdit.Text<>'' then
      sql.Add('and CLZL_LS.JHDH like '''+FormalMatEdit.Text+'%'' ');
    if ClassCombo.Text<>'' then
      sql.Add('and clzl.cltd='''+ClassCombo.Text+''' ' );

    if OnlyDC.Checked=true then
    begin
      if main.Edit2.Text='CDC' then
        sql.add(' and ((CLZL.CLDH not like ''V90D%'' ) and (CLZL.CLDH not like ''V90E%'' ) and (CLZL.CLDH not like ''V90F%'' ) and (CLZL.CLDH not like ''V90J%'' ) and (CLZL.CLDH not like ''V90K%'' ) and (CLZL.CLDH not like ''V90L%'' ))');
      if main.Edit2.Text='KDC' then
        sql.add(' and ((CLZL.CLDH not like ''V90A%'' ) and (CLZL.CLDH not like ''V90B%'' ) and (CLZL.CLDH not like ''V90C%'' ) and (CLZL.CLDH not like ''V90G%'' ) and (CLZL.CLDH not like ''V90H%'' ) and (CLZL.CLDH not like ''V90I%'' ))');
    end;
    //
    if AddSpecVTCK.Checked=true then
      sql.add('and ((CLZL.CLDH not like ''V90M%'') and (CLZL.CLDH not like ''V90N%'')) ');
    //
    if SortCK.Checked=true then
      sql.add('order by YPZLS.UseCount desc,CLZL.UserDate desc')
    else
      sql.add('order by CLZL.UserDate desc,YPZLS.UseCount desc');
    //funcObj.WriteErrorLog(sql.Text);
    active:=true;
  end;
  panel2.visible:=true;
  bb2.enabled:=true;
  bb4.enabled:=true;
  bb5.enabled:=false;
  bb6.enabled:=false;
  bb7.enabled:=true;
  bbt1.enabled:=true;
  bbt2.enabled:=true;
  bbt3.enabled:=true;
  bbt4.enabled:=true;
  bbt5.enabled:=true;
  bbt6.enabled:=true;
  TransferviewBtn.enabled:=true;
  DBEdit1.SetFocus;
  Edit1.Color:=clWindow;
  FilterPanel.Visible:=false;
end;

procedure TSampleMaterial.BB2Click(Sender: TObject);
begin
  with MatQuery do
  begin
    cachedupdates:=true;
    requestlive:=true;
    Insert;
    FieldByName('cllb').AsString:=StageCombox.Text;
    FieldByName('cldh').AsString:='Auto';
  end;
  if MatQuery.recordcount>0 then
  begin
    N1.Enabled:=true;
    N2.Enabled:=true;
  end else
  begin
      N1.Enabled:=false;
      N2.Enabled:=false;
  end;
  DBGrid1.columns[8].ButtonStyle:=cbsEllipsis;
  DBGrid1.columns[10].ButtonStyle:=cbsEllipsis;  
  bb5.enabled:=true;
  bb6.enabled:=true;
  DBEdit1.SetFocus;
end;

procedure TSampleMaterial.BB4Click(Sender: TObject);
begin
  with MatQuery do
  begin
    cachedupdates:=true;
    requestlive:=true;
    MatQuery.edit;
  end;
  if MatQuery.recordcount>0 then
  begin
    N1.Enabled:=true;
    N2.Enabled:=true;
  end else
  begin
      N1.Enabled:=false;
      N2.Enabled:=false;
  end;
  DBGrid1.columns[8].ButtonStyle:=cbsEllipsis;
  DBGrid1.columns[10].ButtonStyle:=cbsEllipsis;
  bb5.enabled:=true;
  bb6.enabled:=true;
  DBedit1.SetFocus;
end;

procedure TSampleMaterial.BB6Click(Sender: TObject);
begin
  with MatQuery do
  begin
    active:=false;
    cachedupdates:=false;
    requestlive:=false;
    active:=true;
  end;
  DBGrid1.columns[8].ButtonStyle:=cbsnone;
  DBGrid1.columns[10].ButtonStyle:=cbsnone;
  N1.Enabled:=false;
  N2.Enabled:=false;
  bb5.enabled:=false;
  bb6.enabled:=false;
  N1.Enabled:=false;
  N2.Enabled:=false;
end;

procedure TSampleMaterial.BBT1Click(Sender: TObject);
begin
  MatQuery.First;
end;

procedure TSampleMaterial.BBT2Click(Sender: TObject);
begin
  MatQuery.Prior;
end;

procedure TSampleMaterial.BBT3Click(Sender: TObject);
begin
  MatQuery.Next;
end;

procedure TSampleMaterial.BBT4Click(Sender: TObject);
begin
  MatQuery.Last;
end;

procedure TSampleMaterial.bbt6Click(Sender: TObject);
var   a:string;
      eclApp,WorkBook:olevariant;
 //     xlsFileName:string;
      i,j:integer;
 begin
  if  MatQuery.active  then
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
        for   i:=0   to   MatQuery.fieldcount-1   do
          begin
              eclApp.Cells(1,i+1):=MatQuery.fields[i].FieldName;
          end;

        MatQuery.First;
        j:=2;
        while   not   MatQuery.Eof   do
          begin
            for   i:=0   to  MatQuery.fieldcount-1  do
            begin
              eclApp.Cells(j,i+1):=MatQuery.Fields[i].Value;
            end;
          MatQuery.Next;
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

procedure TSampleMaterial.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
  YWPMEdit.SetFocus;
end;

procedure TSampleMaterial.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
  button1click(nil);
end;
//20141217檢查名稱是否重複
Function TSampleMaterial.CheckIsRepeat(CLDH:string;CH:string;EN:string):String;
var iRes:string;
begin
   iRes:='';
     with tmpQuery do  //計算材料流水號
     begin
       active:=false;
       sql.Clear;
       sql.Add('select CLDH from CLZL ');
       sql.add('where CLDH like ''V%'' ');
       //20150317 weston修正材料名稱 : 查詢問題
       sql.add('and (YWPM=:YWPM or ZWPM=:ZWPM) and YN=3 ');
       ParamByName('YWPM').Value:=EN;
       ParamByName('ZWPM').Value:=CH;
       Active:=true;
       if RecordCount>0 then
       begin
         //新增有找到名稱相同的材料 則拒絕
         if CLDH='auto' then
         begin
           iRes:=FieldByName('CLDH').AsString;
           Edit1.Text:=iRes;
           Edit1.Color:=clyellow;
           Panel3.Show;
         end else
         begin
           if FieldByName('CLDH').AsString<>CLDH then  //如果修改材料材料代碼不一樣才需要中斷
           begin
             iRes:=FieldByName('CLDH').AsString;
             Edit1.Text:=iRes;
             Edit1.Color:=clyellow;
             Panel3.Show;
           end;
         end;
       end;
       Active:=false;
     end;
     result:=iRes;
end;
procedure TSampleMaterial.BB5Click(Sender: TObject);
var i:integer;
    a:string;
begin
  try
      MatQuery.first;
      for i:=1 to MatQuery.RecordCount do
        begin
          case MatQuery.updatestatus of
            usinserted:
              begin

                if  CheckIsRepeat(MatQuery.fieldbyname('CLDH').AsString,MatQuery.fieldbyname('ZWPM').AsString,MatQuery.fieldbyname('YWPM').AsString)<>'' then
                begin
                    showmessage('Material has exists.');
                    exit;
                end;

                if (MatQuery.fieldbyname('YWPM').isnull or MatQuery.fieldbyname('ZWPM').isnull) then
                  begin
                    showmessage('Pls key material name first.');
                    abort;
                  end
                   else
                     begin
                       with tmpQuery do    //計算材料流水號
                         begin
                           active:=false;
                           sql.Clear;
                           sql.Add('select CLDH from clzl');
                           sql.add(' where CLDH like '+''''+copy(MatQuery.fieldbyname('CLLB').value,0,4)+'%'+'''');
                           sql.add('order by CLDH');
                           active:=true;
                           if recordcount >0 then
                             begin
                               last;
                               a:=fieldbyname('CLDH').AsString;
                               a:=copy(a,5,8);
                               a:=inttostr(strtoint(a)+1);
                               while length(a)<6 do
                                 begin
                                   a:='0'+a;
                                 end;
                             end
                               else
                                 begin
                                   a:='000001';
                                 end;
                           a:=MatQuery.fieldbyname('CLLB').value+a;
                           active:=false;
                         end;
                       MatQuery.edit;
                       MatQuery.fieldbyname('CLDH').value:=a;
                       MatQuery.fieldbyname('CLBM').value:='zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz'+a;
                       MatQuery.fieldbyname('CLLB').value:=copy(MatQuery.fieldbyname('CLLB').value,0,4);
                       MatQuery.fieldbyname('clzmlb').value:='N';
                       MatQuery.fieldbyname('lycc').value:='N';
                       MatQuery.fieldbyname('xhcl').value:='Y';
                       MatQuery.fieldbyname('jkcl').value:='N';
                       MatQuery.fieldbyname('gjlb').value:='000';
                       MatQuery.fieldbyname('cqdh').value:='VN';
                       MatQuery.FieldByName('userID').Value:=main.edit1.text;
                       MatQuery.FieldByName('userdate').Value:=now();
                       if a<'W' then
                         begin
                           MatQuery.FieldByName('YN').Value:='3';
                         end
                         else
                           begin
                             MatQuery.FieldByName('YN').Value:='2';
                           end;
                         //臨時正式料號
                          tmpQuery.Active:=false;
                          tmpQuery.SQL.Clear;
                          tmpQuery.SQL.Add('Select * from CLZL_LS ');
                          tmpQuery.SQL.Add('where CLDH='''+MatQuery.fieldbyname('CLDH').AsString+''' ');
                          tmpQuery.Active:=true;
                          if tmpQuery.RecordCount>0 then
                          begin
                            tmpQuery.Active:=false;
                            tmpQuery.SQL.Clear;
                            tmpQuery.SQL.Add('Update CLZL_LS Set JHDH='''+MatQuery.fieldbyname('JHDH').AsString+''',UserID='''+main.Edit1.Text+''',UserDate=GetDate() where CLDH='''+MatQuery.fieldbyname('CLDH').AsString+''' ');
                            tmpQuery.ExecSQL();
                          end else
                          begin
                            tmpQuery.Active:=false;
                            tmpQuery.SQL.Clear;
                            tmpQuery.SQL.Add('Insert into CLZL_LS (CLDH,JHDH,USERID,USERDATE) Values('''+MatQuery.fieldbyname('CLDH').AsString+''','''+MatQuery.fieldbyname('JHDH').AsString+''','''+main.Edit1.Text+''',GetDate())');
                            tmpQuery.ExecSQL();
                          end;
                          tmpQuery.Active:=false;

                       upsql1.apply(ukinsert);
                       //
                     end;
              end;
            usmodified:
               begin
                 if MatQuery.FieldByName('YN').value='0' then
                   begin
                     if MatQuery.FieldByName('USERDATE').value>=date  then
                       begin
                        upsql1.Apply(ukdelete);
                       end
                       else
                         begin
                            showmessage(MatQuery.fieldbyname('CLDH').value+' >1 days,can not delete.');
                         end;
                   end
                   else
                     begin
                       if ( ((MatQuery.FieldByName('USERDATE').value<(date-180)) and ((MatQuery.FieldByName('YWPM').value=MatQuery.FieldByName('YWPM').OldValue) and (MatQuery.FieldByName('DWBH').value=MatQuery.FieldByName('DWBH').OldValue))  )
                          or  (MatQuery.FieldByName('USERDATE').value>=(date-180))  ) then
                       begin
                           if  CheckIsRepeat(MatQuery.fieldbyname('CLDH').AsString,MatQuery.fieldbyname('ZWPM').AsString,MatQuery.fieldbyname('YWPM').AsString)<>'' then
                           begin
                             showmessage('Material has exists.');
                             exit;
                           end;
                           MatQuery.edit;
                           MatQuery.FieldByName('userID').Value:=main.edit1.text;
                           MatQuery.FieldByName('userdate').Value:=now();
                           //臨時正式料號
                           tmpQuery.Active:=false;
                           tmpQuery.SQL.Clear;
                           tmpQuery.SQL.Add('Select * from CLZL_LS ');
                           tmpQuery.SQL.Add('where CLDH='''+MatQuery.fieldbyname('CLDH').AsString+''' ');
                           tmpQuery.Active:=true;
                           if tmpQuery.RecordCount>0 then
                           begin
                             tmpQuery.Active:=false;
                             tmpQuery.SQL.Clear;
                             tmpQuery.SQL.Add('Update CLZL_LS Set JHDH='''+MatQuery.fieldbyname('JHDH').AsString+''',UserID='''+main.Edit1.Text+''',UserDate=GetDate() where CLDH='''+MatQuery.fieldbyname('CLDH').AsString+''' ');
                             tmpQuery.ExecSQL();
                           end else
                           begin
                             tmpQuery.Active:=false;
                             tmpQuery.SQL.Clear;
                             tmpQuery.SQL.Add('Insert into CLZL_LS (CLDH,JHDH,USERID,USERDATE) Values('''+MatQuery.fieldbyname('CLDH').AsString+''','''+MatQuery.fieldbyname('JHDH').AsString+''','''+main.Edit1.Text+''',GetDate())');
                             tmpQuery.ExecSQL();
                           end;
                           tmpQuery.Active:=false;
                           //
                           upsql1.apply(ukmodify);
                       end else
                       begin
                           showmessage(MatQuery.fieldbyname('CLDH').value+' >180 days,can not modify.');
                       end;
                     end;
               end;
          end;
          MatQuery.next;
        end;
    DBGrid1.columns[8].ButtonStyle:=cbsnone;
    DBGrid1.columns[10].ButtonStyle:=cbsnone;
    MatQuery.active:=false;
    MatQuery.cachedupdates:=false;
    MatQuery.requestlive:=false;
    MatQuery.active:=true;
    bb5.enabled:=false;
    bb6.enabled:=false;
    N1.Enabled:=false;
    N2.Enabled:=false;
  except
    Messagedlg('Have wrong,can not save!',mtwarning,[mbyes],0);
  end;

end;

procedure TSampleMaterial.DBGrid1ColEnter(Sender: TObject);
begin
{if dbgrid1.selectedfield.fieldname<>dbx1.datafield then
  begin
    dbx1.visible:=false;
  end; }
end;

procedure TSampleMaterial.N1Click(Sender: TObject);
begin
//if MatQuery.CachedUpdates then
  begin
    with tmpQuery do
      begin
        active:=false;
        sql.Clear;
        sql.Add('update CLZL ');
        sql.add('set TYJH='+''''+'Y'+'''');
        sql.add('where CLDH='+''''+MatQuery.fieldbyname('CLDH').Value+'''');
        execsql;
      end;
    MatQuery.Active:=false;
    MatQuery.Active:=true;
  end;
end;

procedure TSampleMaterial.N2Click(Sender: TObject);
begin
//if MatQuery.CachedUpdates then
  begin
    with tmpQuery do
      begin
        active:=false;
        sql.Clear;
        sql.Add('update CLZL ');
        sql.add('set TYJH='+''''+'N'+'''');
        sql.add('where CLDH='+''''+MatQuery.fieldbyname('CLDH').Value+'''');
        execsql;
      end;
    MatQuery.Active:=false;
    MatQuery.Active:=true;
  end;
end;

procedure TSampleMaterial.DBGrid1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if  MatQuery.fieldbyname('UseCount').Value>0 then
  begin
    dbgrid1.canvas.font.color:=clBlue;
    //dbgrid1.defaultdrawcolumncell(rect,datacol,column,state);
  end;
  if  MatQuery.fieldbyname('cldh').AsString='auto' then
  begin
    dbgrid1.canvas.font.color:=clgreen;
    //dbgrid1.defaultdrawcolumncell(rect,datacol,column,state);
  end;
  if  MatQuery.fieldbyname('YN').Value='0' then
  begin
    dbgrid1.canvas.font.color:=clred;
    //dbgrid1.defaultdrawcolumncell(rect,datacol,column,state);
  end;
end;

procedure TSampleMaterial.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if MatQuery.FieldByName('tyjh').AsString='Y' then
  begin
    DBGrid1.canvas.Brush.Color:=clBtnFace;
    DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
  end;
end;

procedure TSampleMaterial.FormDestroy(Sender: TObject);
begin
  SampleMaterial:=nil;
end;

procedure TSampleMaterial.Combined1Click(Sender: TObject);
begin
  if SampleMaterial_Combinated=nil then
     SampleMaterial_Combinated:=TSampleMaterial_Combinated.Create(self);
  SampleMaterial_Combinated.CLZHZLVN.Active:=true;   
  SampleMaterial_Combinated.show;
end;

procedure TSampleMaterial.Button2Click(Sender: TObject);
begin

end;
//材料同步台灣
procedure TSampleMaterial.GetTWMaterialData();
var i,j:integer;
    UpdateCount:integer;
    InsertCount:integer;
    IsUpdate:boolean;
begin
  //
  with TWQuery do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Select * from CLZL where UserDate>GetDate()-1 ');
    Active:=true;
  end;
  //
  TWQuery.First;
  InsertCount:=0;
  UpdateCount:=0;
  for i:=0 to TWQuery.RecordCount-1 do
  begin

      ERPQuery.Active:=false;
      ERPQuery.SQL.Clear;
      ERPQuery.SQL.Add('Select top 1 * from CLZL where cldh='''+TWQuery.FieldByName('cldh').AsString+''' ');
      ERPQuery.Active:=true;
      if ERPQuery.RecordCount>0 then
      begin
        IsUpdate:=false;
        ERPQuery.Edit;
        For j:=2  to TWQuery.FieldCount-1 do
        begin
          if ERPQuery.Fields[j].FieldName<>'USERDATE' then
             if Trim(ERPQuery.Fields[j].AsString)<>Trim(TWQuery.Fields[j].AsString) then
             begin
              IsUpdate:=true;
             end;
          if ERPQuery.Fields[j].FieldName='USERDATE' then
             ERPQuery.Fields[j].AsString:=Formatdatetime('YYYY/MM/DD',Date()-3)
          else if ERPQuery.Fields[j].FieldName='zwpm' then
             ERPQuery.Fields[j].Value:=TWQuery.fieldbyname('ywpm').value
          else
             ERPQuery.Fields[j].Value:=TWQuery.Fields[j].Value;
        end;
        if IsUpdate=true then
        begin
          funcObj.WriteErrorLog(datetimetostr(now)+' Update:'+ERPQuery.SQL.Text);
          ERPQuery.Post;
          Inc(UpdateCount);
        end;
      end else
      begin
        ERPQuery.Insert;
        For j:=0  to TWQuery.FieldCount-1 do
        begin

          if ERPQuery.Fields[j].FieldName='USERDATE' then
             ERPQuery.Fields[j].AsString:=Formatdatetime('YYYY/MM/DD',Date()-3)
          else if ERPQuery.Fields[j].FieldName='zwpm' then
             ERPQuery.Fields[j].Value:=TWQuery.fieldbyname('ywpm').value
          else
             ERPQuery.Fields[j].Value:=TWQuery.Fields[j].Value;

        end;
          ERPQuery.Fields[j].AsString:='1'; //YN
        funcObj.WriteErrorLog(datetimetostr(now)+' Insert:'+ERPQuery.SQL.Text);  
        ERPQuery.Post;
        Inc(InsertCount);
      end;
    ERPQuery.Active:=false;
    TWQuery.Next;
  end;
  //
  Showmessage('Update/Insert: '+inttostr(UpdateCount)+'/'+inttostr(InsertCount)+' count');
end;

procedure TSampleMaterial.bbt7Click(Sender: TObject);
begin
  if MessageDlg('Synchronous TW materail?',mtCustom,[mbYes,mbNo], 0)=mrYes then   GetTWMaterialData();
end;

procedure TSampleMaterial.bbt8Click(Sender: TObject);
begin
  MaterialArticle:=TMaterialArticle.Create(self);
  MaterialArticle.Show;
end;

//更新料號
procedure TSampleMaterial.TransferNormalMaterial(JHDH:String;CLDH:String);
var i:integer;
begin
    with tmpQuery do
    begin
       Active:=false;
       SQL.Clear;
       SQL.Add('Select CLDH from CLZL where CLDH='''+JHDH+''' and YN=1');
       Active:=true;
       if RecordCount>0 then
       begin
         //樣品單
         try
           Active:=false;
           SQL.Clear;
           SQL.Add('Insert into BModRec_Dev ');
           SQL.Add('select ''YPZLS'' as TableName,YPDH as TNO,Null,NULL,NULL,NULL,NULL,CLBH+''***'+JHDH+''' as CLBH ,NULL,NULL,UserID,'''+main.Edit1.Text+''',GetDate(),NULL,NULL,NULL,NULL,NULL from YPZLS where CLBH='''+CLDH+'''  ');
           SQL.Add('Update YPZLS Set CLBH='''+JHDH+''',UserID='''+main.Edit1.Text+''',UserDate=GetDate()');
           sql.Add('from YPZLS inner join YPZL on YPZLS.YPDH=YPZL.YPDH');
           sql.Add('inner join kfxxzl on YPZL.XieXing=kfxxzl.XieXing and YPZL.SheHao=kfxxzl.SheHao');
           sql.Add('where CLBH='''+CLDH+'''');
           if SeasonEdit.Text<>'' then
              sql.Add('and kfxxzl.JiJie='''+SeasonEdit.Text+'''');
           if StageEdit.Text<>'' then
              sql.Add('and YPZL.KFJD='''+StageEdit.Text+''' ' );
           ExecSQL();
         except
           on E:Exception do
           begin
             funcObj.WriteErrorLog(datetimetostr(now)+' Transfer YPZLS Error:'+CLDH+' '+E.Message );
           end;
         end;
         //利庫
         try
           //先檢查合併問題
           Active:=false;
           SQL.Clear;
           SQL.Add('select A.GSBH,A.ZLBH,A.CLBH,(A.Qty+B.Qty) as Qty from CGKCUSE A ');
           SQL.Add('inner join ( ');
           SQL.Add('select GSBH,ZLBH,Qty from CGKCUSE where CLBH='''+CLDH+''' ) B on A.GSBH=B.GSBH and A.ZLBH=B.ZLBH ');
           SQL.Add('where A.CLBH='''+JHDH+''' and A.GSBH='''+main.Edit2.Text+''' ');
           //同GSBH ZLBH 合併數量
           Active:=true;
           if RecordCount>0 then
           begin
             tmpQuery.First;
             for i:=0 to tmpQuery.RecordCount-1 do
             begin
               ExeQuery.Active:=false;
               ExeQuery.SQL.Clear;
               ExeQuery.SQL.Add('Update CGKCUSE Set Qty='+FieldByName('Qty').AsString+' where GSBH='''+FieldByName('GSBH').AsString+''' and ZLBH='''+FieldByName('ZLBH').AsString+''' and CLBH='''+FieldByName('CLBH').AsString+''' ');
               ExeQuery.SQL.Add('Delete from CGKCUSE where  GSBH='''+FieldByName('GSBH').AsString+''' and ZLBH='''+FieldByName('ZLBH').AsString+''' and CLBH='''+CLDH+'''  ');
               funcObj.WriteErrorLog(datetimetostr(now)+' Merge CGKCUSE:'+ExeQuery.SQL.Text);
               ExeQuery.ExecSQL();
               tmpQuery.Next;
             end;
             ExeQuery.Active:=false;
           end;
           //
           Active:=false;
           SQL.Clear;
           SQL.Add('Insert into BModRec_Dev ');
           SQL.Add('select ''CGKCUSE'' as TableName,ZLBH as TNO,Null,NULL,NULL,NULL,NULL,CLBH+''***'+JHDH+''' as CLBH ,NULL,NULL,UserID,'''+main.Edit1.Text+''',GetDate(),NULL,NULL,NULL,NULL,NULL from CGKCUSE where CLBH='''+CLDH+'''  ');
           SQL.Add('Update CGKCUSE Set CLBH='''+JHDH+'''');
           sql.Add('from CGKCUSE inner join YPZL on CGKCUSE.ZLBH=YPZL.YPDH');
           sql.Add('inner join kfxxzl on YPZL.XieXing=kfxxzl.XieXing and YPZL.SheHao=kfxxzl.SheHao');
           sql.Add('where CLBH='''+CLDH+''' ' );
           if SeasonEdit.Text<>'' then
              sql.Add('and kfxxzl.JiJie='''+SeasonEdit.Text+'''');
           if StageEdit.Text<>'' then
              sql.Add('and YPZL.KFJD='''+StageEdit.Text+''' ' );
           ExecSQL();
         except
           on E:Exception do
           begin
             funcObj.WriteErrorLog(datetimetostr(now)+' Transfer CGKCUSE Error:'+CLDH+' '+E.Message );
           end;
         end;
         {
         //20150317 修正不轉換
         try
           //子母料號
           Active:=false;
           SQL.Clear;
           SQL.Add('Insert into BModRec_Dev ');
           SQL.Add('select ''clzhzl'' as TableName,CLDH1 as TNO,Null,NULL,NULL,NULL,NULL,CLDH+''***'+JHDH+''' as CLBH ,NULL,NULL,UserID,'''+main.Edit1.Text+''',GetDate() from clzhzl where CLDH='''+CLDH+'''  ');
           SQL.Add('Update clzhzl Set CLDH='''+JHDH+''',UserID='''+main.Edit1.Text+''',UserDate=GetDate() where CLDH='''+CLDH+''' ' );
           ExecSQL();
         except
           on E:Exception do
           begin
             funcObj.WriteErrorLog(datetimetostr(now)+' Transfer clzhzl,CLDH Error:'+CLDH+' '+E.Message );
           end;
         end;
         }
         try
           Active:=false;
           SQL.Clear;
           SQL.Add('Insert into BModRec_Dev ');
           SQL.Add('select ''clzhzl'' as TableName,CLDH as TNO,Null,NULL,NULL,NULL,NULL,CLDH1+''***'+JHDH+''' as CLBH ,NULL,NULL,UserID,'''+main.Edit1.Text+''',GetDate(),NULL,NULL,NULL,NULL,NULL from clzhzl where CLDH1='''+CLDH+'''  ');
           SQL.Add('Update clzhzl Set CLDH1='''+JHDH+''',UserID='''+main.Edit1.Text+''',UserDate=GetDate() where CLDH1='''+CLDH+''' ' );
           ExecSQL();
         except
           on E:Exception do
           begin
             funcObj.WriteErrorLog(datetimetostr(now)+' Transfer clzhzl,CLDH1 Error:'+CLDH+' '+E.Message );
           end;
         end;
         //
         {
         //20150317 修正不轉換
         try
           Active:=false;
           SQL.Clear;
           SQL.Add('Insert into BModRec_Dev ');
           SQL.Add('select ''clzhzl_dev'' as TableName,CLDH1 as TNO,Null,NULL,NULL,NULL,NULL,CLDH+''***'+JHDH+''' as CLBH ,NULL,NULL,UserID,'''+main.Edit1.Text+''',GetDate() from clzhzl_dev where CLDH='''+CLDH+'''  ');
           SQL.Add('Update clzhzl_dev Set CLDH='''+JHDH+''',UserID='''+main.Edit1.Text+''',UserDate=GetDate() where CLDH='''+CLDH+''' ' );
           ExecSQL();
         except
           on E:Exception do
           begin
             funcObj.WriteErrorLog(datetimetostr(now)+' Transfer clzhzl_dev,CLDH Error:'+CLDH+' '+E.Message );
           end;
         end;
         }
         try
           Active:=false;
           SQL.Clear;
           SQL.Add('Insert into BModRec_Dev ');
           SQL.Add('select ''clzhzl_dev'' as TableName,CLDH as TNO,Null,NULL,NULL,NULL,NULL,CLDH1+''***'+JHDH+''' as CLBH ,NULL,NULL,UserID,'''+main.Edit1.Text+''',GetDate(),NULL,NULL,NULL,NULL,NULL from clzhzl_dev where CLDH1='''+CLDH+'''  ');
           SQL.Add('Update clzhzl_dev Set CLDH1='''+JHDH+''',UserID='''+main.Edit1.Text+''',UserDate=GetDate() where CLDH1='''+CLDH+''' ' );
           ExecSQL();
         except
           on E:Exception do
           begin
             funcObj.WriteErrorLog(datetimetostr(now)+' Transfer clzhzl_dev,CLDH1 Error:'+CLDH+' '+E.Message );
           end;
         end;
         //MOQ LeadTime材料
         try
           //檢查MaterialMOQ 料號是否存在
           Active:=false;
           SQL.Clear;
           SQL.Add('select A.ZSBH,A.CLBH,A.Season  from MaterialMOQ A ');
           SQL.Add('inner join ( ');
           SQL.Add('select ZSBH,Season from MaterialMOQ where CLBH='''+CLDH+''' ) B on A.ZSBH=B.ZSBH and A.Season=B.Season  ');
           SQL.Add('where A.CLBH='''+JHDH+''' ');
           Active:=true;
           if RecordCount=0 then
           begin
             //
             Active:=false;
             SQL.Clear;
             SQL.Add('Insert into BModRec_Dev ');
             SQL.Add('select ''MaterialMOQ'' as TableName,ZSBH+''_''+SEASON as TNO,Null,NULL,NULL,NULL,NULL,CLBH+''***'+JHDH+''' as CLBH ,NULL,NULL,UserID,'''+main.Edit1.Text+''',GetDate(),NULL,NULL,NULL,NULL,NULL from MaterialMOQ where CLBH='''+CLDH+'''  ');
             SQL.Add('Update MaterialMOQ Set CLBH='''+JHDH+''' where CLBH='''+CLDH+''' ' );
             if SeasonEdit.Text<>'' then
                sql.Add('and MaterialMOQ.Season='''+SeasonEdit.Text+'''');
             ExecSQL();
           end;
         except
           on E:Exception do
           begin
             funcObj.WriteErrorLog(datetimetostr(now)+' Transfer MaterialMOQ Error:'+CLDH+' '+E.Message );
           end;
         end;
         try
           //MaterialChangeMEMO 材料
           Active:=false;
           SQL.Clear;
           SQL.Add('Insert into BModRec_Dev ');
           SQL.Add('select ''MaterialChangeMEMO'' as TableName,''Article'' as TNO,Null,NULL,NULL,NULL,NULL,CLBH+''***'+JHDH+''' as CLBH ,NULL,NULL,UserID,'''+main.Edit1.Text+''',GetDate(),NULL,NULL,NULL,NULL,NULL from MaterialChangeMEMO where CLBH='''+CLDH+'''  ');
           SQL.Add('Update MaterialChangeMEMO Set CLBH='''+JHDH+''' where CLBH='''+CLDH+''' ' );
           if SeasonEdit.Text<>'' then
                sql.Add('and MaterialChangeMEMO.Season='''+SeasonEdit.Text+'''');
           if StageEdit.Text<>'' then
                sql.Add('and MaterialChangeMEMO.Stage='''+StageEdit.Text+'''');
           ExecSQL();
         except
           on E:Exception do
           begin
             funcObj.WriteErrorLog(datetimetostr(now)+' Transfer MaterialChangeMEMO Error:'+CLDH+' '+E.Message );
           end;
         end;
         try
           //先檢查合併問題
           Active:=false;
           SQL.Clear;
           SQL.Add('select A.CGNO,A.CLBH,A.ZLBH,A.XXCC,A.Stage,(A.Qty+B.Qty) as Qty from CGZLSS A ');
           SQL.Add('inner join ( ');
           SQL.Add('select CGNO,CLBH,ZLBH,XXCC,Stage,Qty from CGZLSS where CLBH='''+CLDH+''' ) B on A.CGNO=B.CGNO and A.ZLBH=B.ZLBH and A.XXCC=B.XXCC and A.Stage=B.Stage ');
           SQL.Add('where A.CLBH='''+JHDH+''' ');
           Active:=true;
           //同PO 同ZLBH XXCC Stage 合併數量
           if RecordCount>0 then
           begin
             tmpQuery.First;
             for i:=0 to tmpQuery.RecordCount-1 do
             begin
               ExeQuery.Active:=false;
               ExeQuery.SQL.Clear;
               ExeQuery.SQL.Add('Update CGZLSS Set Qty='+FieldByName('Qty').AsString+' where CGNO='''+FieldByName('CGNO').AsString+''' and ');
               ExeQuery.SQL.Add('CLBH='''+FieldByName('CLBH').AsString+''' and ZLBH='''+FieldByName('ZLBH').AsString+''' and XXCC='''+FieldByName('XXCC').AsString+''' and  ');
               ExeQuery.SQL.Add('Stage='''+FieldByName('Stage').AsString+''' ');
               //先更新為0
               //ExeQuery.SQL.Add('Update CGZLSS Set Qty=0 where CGNO='''+FieldByName('CGNO').AsString+''' and  ');
               ExeQuery.SQL.Add('Delete from CGZLSS where CGNO='''+FieldByName('CGNO').AsString+''' and  ');
               ExeQuery.SQL.Add('CLBH='''+CLDH+''' and ZLBH='''+FieldByName('ZLBH').AsString+''' and XXCC='''+FieldByName('XXCC').AsString+''' and ');
               ExeQuery.SQL.Add('Stage='''+FieldByName('Stage').AsString+''' ');
               funcObj.WriteErrorLog(datetimetostr(now)+' Merge CGZLSS:'+ExeQuery.SQL.Text);
               ExeQuery.ExecSQL();
               tmpQuery.Next;
             end;
             ExeQuery.Active:=false;
           end;
           //CGZLSS
           Active:=false;
           SQL.Clear;
           SQL.Add('Insert into BModRec_Dev ');
           SQL.Add('select ''CGZLSS'' as TableName,CGNO+''_''+ZLBH+''_''+XXCC  as TNO,Null,NULL,NULL,NULL,NULL,CLBH+''***'+JHDH+''' as CLBH ,NULL,NULL,UserID,'''+main.Edit1.Text+''',GetDate(),NULL,NULL,NULL,NULL,NULL from CGZLSS where CLBH='''+CLDH+'''  ');
           SQL.Add('Update CGZLSS Set CLBH='''+JHDH+'''');
           sql.Add('from CGZLSS inner join YPZL on CGZLSS.ZLBH=YPZL.YPDH');
           sql.Add('inner join kfxxzl on YPZL.XieXing=kfxxzl.XieXing and YPZL.SheHao=kfxxzl.SheHao');
           sql.Add('where CLBH='''+CLDH+'''');
           if SeasonEdit.Text<>'' then
              sql.Add('and kfxxzl.JiJie='''+SeasonEdit.Text+'''');
           if StageEdit.Text<>'' then
              sql.Add('and CGZLSS.Stage='''+StageEdit.Text+''' ' );
           ExecSQL();
         except
           on E:Exception do
           begin
             funcObj.WriteErrorLog(datetimetostr(now)+' Transfer CGZLSS Error:'+CLDH+' '+E.Message );
           end;
         end;
         try
           //先檢查合併問題
           Active:=false;
           SQL.Clear;
           SQL.Add('select A.CGNO,A.CLBH,Sum(CGZLSS.Qty) as Qty from CGZLS A ');
           SQL.Add('inner join ( ');
           SQL.Add('select CGNO from CGZLS where CLBH='''+CLDH+''' ) B on A.CGNO=B.CGNO ');
           SQL.Add('left join CGZLSS on CGZLSS.CGNO=A.CGNO and CGZLSS.CLBH=A.CLBH ');
           SQL.Add('where A.CLBH='''+JHDH+''' ');
           SQL.Add('Group by A.CGNO,A.CLBH ');
           Active:=true;
           //同PO 同ZLBH XXCC Stage 合併數量
           if RecordCount>0 then
           begin
             tmpQuery.First;
             for i:=0 to tmpQuery.RecordCount-1 do
             begin
               ExeQuery.Active:=false;
               ExeQuery.SQL.Clear;
               ExeQuery.SQL.Add('Update CGZLS Set Qty='+FieldByName('Qty').AsString+' where CGNO='''+FieldByName('CGNO').AsString+''' and CLBH='''+FieldByName('CLBH').AsString+''' ');
               //ExeQuery.SQL.Add('Update CGZLS Set Qty=0 where  CGNO='''+FieldByName('CGNO').AsString+''' and ');
               ExeQuery.SQL.Add('Delete from CGZLS where  CGNO='''+FieldByName('CGNO').AsString+''' and CLBH='''+CLDH+'''  ');
               funcObj.WriteErrorLog(datetimetostr(now)+' Merge CGZLS:'+ExeQuery.SQL.Text);
               ExeQuery.ExecSQL();
               tmpQuery.Next;
             end;
             ExeQuery.Active:=false;
           end;
           //CGZLS
           Active:=false;
           SQL.Clear;
           SQL.Add('Insert into BModRec_Dev ');
           SQL.Add('select ''CGZLS'' as TableName,CGNO as TNO,Null,NULL,NULL,NULL,NULL,CLBH+''***'+JHDH+''' as CLBH ,NULL,NULL,UserID,'''+main.Edit1.Text+''',GetDate(),NULL,NULL,NULL,NULL,NULL from CGZLS where CLBH='''+CLDH+'''  ');
           SQL.Add('Update CGZLS Set CLBH='''+JHDH+'''');
           sql.Add('from CGZLS inner join CGZL on CGZLS.CGNO=CGZL.CGNO');
           sql.Add('where CGZLS.CLBH='''+CLDH+''' ' );
           if SeasonEdit.Text<>'' then
              sql.Add('and CGZL.Season='''+SeasonEdit.Text+'''');
           if StageEdit.Text<>'' then
              sql.Add('and CGZL.PURPOSE='''+StageEdit.Text+''' ' );
           ExecSQL();
         except
           on E:Exception do
           begin
             funcObj.WriteErrorLog(datetimetostr(now)+' Transfer CGZLS Error:'+CLDH+' '+E.Message );
           end;
         end;
         try
           //MaterialNG
           Active:=false;
           SQL.Clear;
           SQL.Add('Insert into BModRec_Dev ');
           SQL.Add('select ''MaterialNG'' as TableName,CGNO as TNO,Null,NULL,NULL,NULL,NULL,CLBH+''***'+JHDH+''' as CLBH ,NULL,NULL,UserID,'''+main.Edit1.Text+''',GetDate(),NULL,NULL,NULL,NULL,NULL from MaterialNG where CLBH='''+CLDH+'''  ');
           SQL.Add('Update MaterialNG Set CLBH='''+JHDH+'''');
           sql.Add('from MaterialNG inner join CGZLSS on MaterialNG.CGNO=CGZLSS.CGNO');
           sql.Add('and CGZLSS.CLBH=MaterialNG.CLBH');
           sql.Add('inner join YPZL on CGZLSS.ZLBH=YPZL.YPDH');
           sql.Add('inner join kfxxzl on YPZL.XieXing=kfxxzl.XieXing and YPZL.SheHao=kfxxzl.SheHao');
           sql.Add('where MaterialNG.CLBH='''+CLDH+''' ' );
           if SeasonEdit.Text<>'' then
              sql.Add('and kfxxzl.JiJie='''+SeasonEdit.Text+'''');
           if StageEdit.Text<>'' then
              sql.Add('and CGZLSS.Stage='''+StageEdit.Text+''' ' );
           ExecSQL();
         except
           on E:Exception do
           begin
             funcObj.WriteErrorLog(datetimetostr(now)+' Transfer MaterialNG Error:'+CLDH+' '+E.Message );
           end;
         end;
         try
           //YPZLSZL1
           Active:=false;
           SQL.Clear;
           SQL.Add('Insert into BModRec_Dev ');
           SQL.Add('select ''YPZLZLS1'' as TableName,YPZLBH+''_''+YPDH+''_''+XH as TNO,Null,NULL,NULL,NULL,BWBH,CLBH+''***'+JHDH+''' as CLBH ,NULL,NULL,NULL,'''+main.Edit1.Text+''',GetDate(),NULL,NULL,NULL,NULL,NULL from YPZLZLS1 where CLBH='''+CLDH+'''  ');
           SQL.Add('Update YPZLZLS1 Set CLBH='''+JHDH+'''');
           sql.Add('from YPZLZLS1 inner join  YPZL on YPZLZLS1.YPDH=YPZL.YPDH');
           sql.Add('inner join kfxxzl on YPZL.XieXing=kfxxzl.XieXing and YPZL.SheHao=kfxxzl.SheHao');
           sql.Add('where CLBH='''+CLDH+''' ' );
           if SeasonEdit.Text<>'' then
              sql.Add('and kfxxzl.JiJie='''+SeasonEdit.Text+'''');
           if StageEdit.Text<>'' then
              sql.Add('and YPZL.KFJD='''+StageEdit.Text+''' ');
           ExecSQL();
         except
           on E:Exception do
           begin
             funcObj.WriteErrorLog(datetimetostr(now)+' Transfer YPZLZLS1 Error:'+CLDH+' '+E.Message );
           end;
         end;
         try
           //YPZLS2
           Active:=false;
           SQL.Clear;
           SQL.Add('Insert into BModRec_Dev ');
           SQL.Add('select ''YPZLZLS2'' as TableName,YPZLBH+''_''+YPDH+''_''+BWBH as TNO,Null,NULL,NULL,NULL,BWBH,CLBH+''***'+JHDH+''' as CLBH ,NULL,NULL,UserID,'''+main.Edit1.Text+''',GetDate(),NULL,NULL,NULL,NULL,NULL from YPZLZLS2 where CLBH='''+CLDH+'''  ');
           SQL.Add('Update YPZLZLS2 Set CLBH='''+JHDH+''''); 
           sql.Add('from YPZLZLS2 inner join  YPZL on YPZLZLS2.YPDH=YPZL.YPDH');
           sql.Add('inner join kfxxzl on YPZL.XieXing=kfxxzl.XieXing and YPZL.SheHao=kfxxzl.SheHao');
           sql.Add('where CLBH='''+CLDH+'''' );
           if SeasonEdit.Text<>'' then
              sql.Add('and kfxxzl.JiJie='''+SeasonEdit.Text+'''');
           if StageEdit.Text<>'' then
              sql.Add('and YPZL.KFJD='''+StageEdit.Text+''' ');
           ExecSQL();
         except
           on E:Exception do
           begin
             funcObj.WriteErrorLog(datetimetostr(now)+' Transfer YPZLZLS2,CLBH Error:'+CLDH+' '+E.Message );
           end;
         end;
         try
           //YPZLS2 母材料
           Active:=false;
           SQL.Clear;
           SQL.Add('Insert into BModRec_Dev ');
           SQL.Add('select ''YPZLZLS2'' as TableName,YPZLBH+''_''+YPDH+''_''+BWBH+''_MJBH'' as TNO,Null,NULL,NULL,NULL,BWBH,MJBH+''***'+JHDH+''' as CLBH ,NULL,NULL,UserID,'''+main.Edit1.Text+''',GetDate(),NULL,NULL,NULL,NULL,NULL from YPZLZLS2 where MJBH='''+CLDH+'''  ');
           SQL.Add('Update YPZLZLS2 Set MJBH='''+JHDH+'''');
           sql.Add('from YPZLZLS2 inner join  YPZL on YPZLZLS2.YPDH=YPZL.YPDH');
           sql.Add('inner join kfxxzl on YPZL.XieXing=kfxxzl.XieXing and YPZL.SheHao=kfxxzl.SheHao');
           sql.Add('where MJBH='''+CLDH+''' ' );
           if SeasonEdit.Text<>'' then
              sql.Add('and kfxxzl.JiJie='''+SeasonEdit.Text+'''');
           if StageEdit.Text<>'' then
              sql.Add('and YPZL.KFJD='''+StageEdit.Text+''' ');
           ExecSQL();
         except
           on E:Exception do
           begin
             funcObj.WriteErrorLog(datetimetostr(now)+' Transfer YPZLZLS2,MJBH Error:'+CLDH+' '+E.Message );
           end;
         end;
         try
           //
           //先檢查合併問題
           Active:=false;
           SQL.Clear;
           SQL.Add('select A.CINO,A.CGNO,A.CLBH,Sum(CGZLSS.Qty) as Qty from CGZLInvoiceS A ');
           SQL.Add('inner join ( ');
           SQL.Add('select CINO,CGNO from CGZLInvoiceS where CLBH='''+CLDH+''' ) B on A.CINO=B.CINO and A.CGNO=B.CGNO ');
           SQL.Add('left join CGZLSS on CGZLSS.CGNO=A.CGNO and CGZLSS.CLBH=A.CLBH ');
           SQL.Add('where A.CLBH='''+JHDH+''' ');
           SQL.Add('Group by A.CINO,A.CGNO,A.CLBH ');
           Active:=true;
           //同CINO,CGNO 合併數量
           if RecordCount>0 then
           begin
             tmpQuery.First;
             for i:=0 to tmpQuery.RecordCount-1 do
             begin
               ExeQuery.Active:=false;
               ExeQuery.SQL.Clear;
               ExeQuery.SQL.Add('Update CGZLInvoiceS Set Qty='+FieldByName('Qty').AsString+' where CINO='''+FieldByName('CINO').AsString+''' and CGNO='''+FieldByName('CGNO').AsString+''' and CLBH='''+FieldByName('CLBH').AsString+''' ');
               //ExeQuery.SQL.Add('Update CGZLInvoiceS Set Qty=0 where CINO='''+FieldByName('CINO').AsString+''' and CGNO='''+FieldByName('CGNO').AsString+''' and CLBH='''+CLDH+''' ');
               ExeQuery.SQL.Add('Delete from CGZLInvoiceS where CINO='''+FieldByName('CINO').AsString+''' and CGNO='''+FieldByName('CGNO').AsString+''' and CLBH='''+CLDH+'''  ');
               funcObj.WriteErrorLog(datetimetostr(now)+' Merge CGZLInvoiceS:'+ExeQuery.SQL.Text);
               ExeQuery.ExecSQL();
               tmpQuery.Next;
             end;
             ExeQuery.Active:=false;
           end;
           //CGZLInvoiceS 發票
           Active:=false;
           SQL.Clear;
           SQL.Add('Insert into BModRec_Dev ');
           SQL.Add('select ''CGZLInvoiceS'' as TableName,CINO+''_''+CGNO as TNO,Null,NULL,NULL,NULL,NULL,CLBH+''***'+JHDH+''' as CLBH ,NULL,NULL,UserID,'''+main.Edit1.Text+''',GetDate(),NULL,NULL,NULL,NULL,NULL from CGZLInvoiceS where CLBH='''+CLDH+'''  ');
           SQL.Add('Update CGZLInvoiceS Set CLBH='''+JHDH+'''');
           sql.Add('from CGZLInvoiceS inner join CGZLSS on CGZLInvoiceS.CGNO=CGZLSS.CGNO');
           sql.Add('and CGZLSS.CLBH=CGZLInvoiceS.CLBH');
           sql.Add('inner join YPZL on CGZLSS.ZLBH=YPZL.YPDH');
           sql.Add('inner join kfxxzl on YPZL.XieXing=kfxxzl.XieXing and YPZL.SheHao=kfxxzl.SheHao');
           sql.Add('where CGZLInvoiceS.CLBH='''+CLDH+''' ' );
           if SeasonEdit.Text<>'' then
              sql.Add('and kfxxzl.JiJie='''+SeasonEdit.Text+'''');
           if StageEdit.Text<>'' then
              sql.Add('and CGZLSS.Stage='''+StageEdit.Text+''' ' );
           ExecSQL();
         except
           on E:Exception do
           begin
             funcObj.WriteErrorLog(datetimetostr(now)+' Transfer CGZLInvoiceS Error:'+CLDH+' '+E.Message );
           end;
         end;
       end;
    end;
end;
//下載
procedure TSampleMaterial.bbt9Click(Sender: TObject);
var i,j:integer;
    SQLList:TStringlist;
    SubSQL:string;
    //
    TemporaryChildOK:boolean;
    TemporaryCLDH,TemporaryJHDH:TStringlist;
begin
  if MessageDlg('Transfer Temporary materail to TW materail?',mtCustom,[mbYes,mbNo], 0)=mrYes   then
  begin
    if MatQuery.Active=true then
    begin
      MatQuery.First;
      for i:=0 to MatQuery.RecordCount-1 do
      begin
        //母料號要額外處理
        if MatQuery.FieldByName('CLZMLB').AsString='N' then
        begin
          if ( (trim(MatQuery.FieldByName('JHDH').AsString)<>'') and (MatQuery.FieldByName('UseCount').AsInteger>0) ) then
          begin
            TransferNormalMaterial(MatQuery.FieldByName('JHDH').AsString,MatQuery.FieldByName('CLDH').AsString);
          end;
        end else
        begin
          //檢查轉換前的臨時母料號 所有子料號屬於臨時料號也必須轉換
          with tmpQuery do
          begin
            Active:=false;
            SQL.Clear;
            SQL.Add('Select clzhzl.cldh1 from clzhzl ');
            SQL.add('inner join clzl on clzhzl.cldh1=clzl.cldh ');
            SQL.Add('where clzhzl.CLDH1 like ''V90%'' and clzhzl.cldh='''+MatQuery.FieldByName('CLDH').AsString+'''  and clzl.clzmlb=''Y'' ');
            Active:=true;
            SubSQL:='';
            for j:=0 to tmpQuery.RecordCount-1 do
            begin
              SubSQL:=SubSQL+''''+tmpQuery.FieldByName('cldh1').AsString+''',';
              tmpQuery.Next;
            end;
            if length(SubSQL)>0 then SubSQL:=' and clzhzl.CLDH in ('+copy(SubSQL,1,length(SubSQL)-1)+') ';
            //列出子料號
            Active:=false;
            SQL.Clear;
            SQL.Add('Select TempCLZL.CLDH,CLZL_LS.JHDH,CLZL.YN from (');
            SQL.Add('Select clzhzl.cldh1 as CLDH from clzhzl');
            SQL.Add('inner join clzl on clzhzl.cldh1=clzl.cldh ');
            SQL.Add('where clzhzl.CLDH1 like ''V90%'' and clzhzl.cldh='''+MatQuery.FieldByName('CLDH').AsString+''' and clzl.clzmlb=''N'' ');
            if length(SubSQL)>0 then
            begin
              SQL.Add('Union all ');
              SQL.Add('select clzhzl.cldh1 as CLDH from clzhzl ');
              SQL.Add('inner join clzl on clzhzl.cldh1=clzl.cldh ');
              SQL.Add('where clzhzl.CLDH1 like ''V90%''  '+SubSQL);
            end;
            SQL.Add(') TempCLZL ');
            SQL.Add('left join CLZL_LS on TempCLZL.CLDH=CLZL_LS.CLDH');
            SQL.Add('left join CLZL on CLZL_LS.JHDH=CLZL.CLDH ');
            Active:=true;
            TemporaryChildOK:=true;
            TemporaryCLDH:=TStringlist.Create;
            TemporaryJHDH:=TStringlist.Create;
            for j:=0 to tmpQuery.RecordCount-1 do
            begin
              TemporaryCLDH.Add(tmpQuery.FieldByName('CLDH').AsString);
              TemporaryJHDH.Add(tmpQuery.FieldByName('JHDH').AsString);
              if ((tmpQuery.FieldByName('JHDH').AsString='') or (tmpQuery.FieldByName('YN').AsString<>'1'))  then
              begin
                TemporaryChildOK:=false;
              end;
              tmpQuery.Next;
            end;
            tmpQuery.Active:=false;
            //子母料號都有正式料號
            if ( (trim(MatQuery.FieldByName('JHDH').AsString)<>'') and (MatQuery.FieldByName('UseCount').AsInteger>0) and (TemporaryChildOK=true) ) then
            begin
               //子料號
               for j:=0 to TemporaryCLDH.Count-1 do
               begin
                  TransferNormalMaterial(TemporaryJHDH.Strings[j],TemporaryCLDH.Strings[j]);
               end;
               //母料號
               TransferNormalMaterial(MatQuery.FieldByName('JHDH').AsString,MatQuery.FieldByName('CLDH').AsString);
            end;
            //
            TemporaryCLDH.Free;
            TemporaryJHDH.Free;
          end;
          //
        end;
        MatQuery.Next;
      end;
    end;
    // 臨時轉正式後會有檢查重覆子母料號狀況問題
    with tmpQuery do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('select cldh,cldh1,ccq,ccq1,count(cldh) as count from clzhzl group by cldh,cldh1,ccq,ccq1 having count(cldh)>=2 ');
      Active:=true;
      if tmpQuery.RecordCount>0 then
      begin
        SQLList:=TStringlist.Create;
        For i:=0 to tmpQuery.RecordCount-1 do
        begin
          SQLList.Add('Delete from clzhzl where YN=2 and cldh='''+tmpQuery.fieldByName('cldh').AsString+''' and cldh1='''+tmpQuery.fieldByName('cldh1').AsString+''' ');
        end;
        for i:=0 to SQLList.Count-1 do
        begin
          tmpQuery.Active:=false;
          tmpQuery.SQL.Clear;
          tmpQuery.SQL.Add(SQLList.Strings[i]);
          funcObj.WriteErrorLog(datetimetostr(now)+' Delete:'+tmpQuery.SQL.Text);
          tmpQuery.ExecSQL();
        end;
        SQLList.Clear;
      end;
      Active:=false;
    end;
    //
    Showmessage('Finish!');
    UsedCK.Checked:=false;
    Button1.Click;
  end;
end;

procedure TSampleMaterial.StageComboxChange(Sender: TObject);
begin
  if MatQuery.Active=true then
  begin
    if ((MatQuery.cachedupdates=true) and (MatQuery.requestlive=true)) then
    begin
       if  MatQuery.FieldByName('cldh').AsString='Auto' then
       begin
         MatQuery.Edit;
         MatQuery.FieldByName('cllb').AsString:=StageCombox.Text;
         MatQuery.Post;
       end;
    end;
  end;
end;

procedure TSampleMaterial.Shape1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
 if FilterPanel.Visible=true then
   FilterPanel.Visible:=false
 else
   FilterPanel.Visible:=true;
end;

procedure TSampleMaterial.DBGrid1EditButtonClick(Sender: TObject);
begin
  if DBGrid1.selectedfield.fieldname='UseCount' then
  begin
    if UseCLZL_LS=nil then
       UseCLZL_LS:=TUseCLZL_LS.Create(self);
    UseCLZL_LS.show;
  end;
  if DBGrid1.selectedfield.fieldname='clzmlb' then
  begin
    if SampleMaterial_Combinated=nil then
     SampleMaterial_Combinated:=TSampleMaterial_Combinated.Create(self);
    SampleMaterial_Combinated.CLZHZLVN.Active:=true;
    SampleMaterial_Combinated.show;
  end;
  if DBGrid1.selectedfield.fieldname='zsdh' then
  begin
     if SampleMaterial_Supplier=nil then
     begin
       SampleMaterial_Supplier:=TSampleMaterial_Supplier.Create(self);
       SampleMaterial_Supplier.SetParentQry(MatQuery);
       SampleMaterial_Supplier.ShowModal();
     end else
     begin
       SampleMaterial_Supplier.SetParentQry(MatQuery);
       SampleMaterial_Supplier.ShowModal();
     end;
  end;
end;

procedure TSampleMaterial.TransferviewBtnClick(Sender: TObject);
var SubSQL:String;
    i,j:integer;
    eclApp,WorkBook:olevariant;
    ClumnWidth:array [0..5] of integer;
    ClumnDesc:array [0..5] of string;
begin
  //
  if MatQuery.Active=false then exit;
  if MatQuery.RecordCount>0 then
  begin
    SubSQL:='';
    MatQuery.First;
    For i:=0 to MatQuery.RecordCount-1 do
    begin
      SubSQL:=SubSQL+''''+MatQuery.fieldByName('CLDH').AsString+''',';
      MatQuery.Next;
    end;
    SubSQL:='('+Copy(SubSQL,1,length(SubSQL)-1)+') ';
    //
    with tmpQuery do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('Select * from (');
      SQL.Add('select  CLZL.CLDH,null as child,CLZL.YWPM,CLZL_LS.JHDH,JHZL.YWPM as JHYWPM from CLZL ');
      SQL.Add('left join CLZL_LS on CLZL.CLDH=CLZL_LS.CLDH  ');
      SQL.Add('left join CLZL as JHZL on JHZL.CLDH=CLZL_LS.JHDH  ');
      SQL.Add('where CLZL.CLDH like ''V90%'' and CLZL.CLDH in '+SubSQL);
      SQL.Add('and (CLZL.YN=''2''');
      SQL.Add('or CLZL.YN=''3'')');
      SQL.Add('Union all');
      SQL.Add('select clzhzl.cldh,clzhzl.cldh1 as child,CLZL.YWPM,CLZL_LS.JHDH,JHZL.YWPM as JHYWPM from clzhzl ');
      SQL.Add('inner join CLZL  on clzhzl.cldh1=CLZL.CLDH');
      SQL.Add('left join CLZL_LS on clzhzl.cldh1=CLZL_LS.CLDH  ');
      SQL.Add('left join CLZL as JHZL on JHZL.CLDH=CLZL_LS.JHDH  ');
      SQL.Add('where clzhzl.CLDH in ');
      SQL.Add('(');
      SQL.Add('select CLZL.CLDH  from CLZL ');
      SQL.Add('left join CLZL_LS on CLZL.CLDH=CLZL_LS.CLDH  ');
      SQL.Add('left join CLZL as JHZL on JHZL.CLDH=CLZL_LS.JHDH  ');
      SQL.Add('where CLZL.CLDH like ''V90%'' and CLZL.CLDH in '+SubSQL);
      SQL.Add('and (CLZL.YN=''2''');
      SQL.Add('or CLZL.YN=''3'')');
      SQL.Add('and CLZL.CLZMLB=''Y'')');
      SQL.Add(') A order by CLDH,Child');
      Active:=true;
      //
    end;
    //輸出Excel
    try
      eclApp:=CreateOleObject('Excel.Application');
      WorkBook:=CreateOleObject('Excel.Sheet');
    except
      Application.MessageBox('No Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
      Exit;
    end;
    try
        WorkBook:=eclApp.workbooks.Add;
        //抬頭欄位寬度設定
        ClumnWidth[0]:=11;
        ClumnWidth[1]:=11;
        ClumnWidth[2]:=50;
        ClumnWidth[3]:=11;
        ClumnWidth[4]:=50;
        ClumnWidth[5]:=5;
        ClumnDesc[0]:='MatNo';
        ClumnDesc[1]:='Child MatNo';
        ClumnDesc[2]:='Mat Name';
        ClumnDesc[3]:='TW Mat No';
        ClumnDesc[4]:='TW Ma Name';
        ClumnDesc[5]:='Flag';
        for   i:=0   to   High(ClumnWidth)   do
        begin
          eclApp.ActiveSheet.Columns[i+1].ColumnWidth := ClumnWidth[i]; //欄位寬度
          eclApp.Cells[1,i+1].HorizontalAlignment := -4108; //文字水平置中
          eclApp.Cells(1,i+1):=ClumnDesc[i]; //抬頭名稱 YPZLZLS2.fields[i].FieldName;
        end;
        //抬頭顏色
        eclApp.Range[eclApp.Cells[1,1],eclApp.Cells[1,i]].interior.color:=clSilver;
        //格式和自動換行 置中
        eclApp.Range[eclApp.Cells[1,1],eclApp.Cells[tmpQuery.RecordCount+1,tmpQuery.fieldcount+1]].Borders.weight:=2;
        eclApp.Range[eclApp.Cells[1,1],eclApp.Cells[tmpQuery.RecordCount+1,tmpQuery.fieldcount+1]].NumberFormatLocal:='@';
        eclApp.Range[eclApp.Cells[1,1],eclApp.Cells[tmpQuery.RecordCount+1,tmpQuery.fieldcount+1]].WrapText:=true;
        eclApp.Range[eclApp.Cells[1,1],eclApp.Cells[tmpQuery.RecordCount+1,tmpQuery.fieldcount+1]].HorizontalAlignment:= -4108;
        //
        tmpQuery.First;
        j:=2;
        while   not   tmpQuery.Eof   do
        begin
          for   i:=0   to  tmpQuery.fieldcount-1  do
          begin
            eclApp.Cells(j,i+1):=tmpQuery.Fields[i].Value;
          end;
          eclApp.Cells(j,6):='0';
          if tmpQuery.FieldByName('JHYWPM').AsString<>'' then
            if trim(tmpQuery.FieldByName('YWPM').AsString)<>trim(tmpQuery.FieldByName('JHYWPM').AsString) then
            begin
              eclApp.Rows[j].Font.Color := clFuchsia;
              eclApp.Cells(j,6):='2';
            end;
          //
          if tmpQuery.FieldByName('child').AsString<>'' then
          begin
            eclApp.Cells(j,1):='';
            if Pos('V90',tmpQuery.FieldByName('child').AsString)>0 then
              if (tmpQuery.FieldByName('JHDH').AsString='') then
              begin
                eclApp.Rows[j].Font.Color := clRed;
                eclApp.Cells(j,6):='1';
              end;
          end;
          if ((tmpQuery.FieldByName('JHDH').AsString='') and (tmpQuery.FieldByName('CLDH').AsString<>'') and (tmpQuery.FieldByName('child').AsString='')) then
          begin
            eclApp.Rows[j].Font.Color := clRed;
            eclApp.Cells(j,6):='1';
          end;
          //
          tmpQuery.Next;
          inc(j);
        end;
      //eclapp.columns.autofit;
      showmessage('Succeed');
      eclApp.Visible:=True;
    except
        on   F:Exception   do
          showmessage(F.Message);
    end;
    //
  end;
end;

procedure TSampleMaterial.OpenV_TClick(Sender: TObject);
begin
  with tmpQuery do
  begin
    Active:=false;
    SQL.Clear;
    if OpenV_T.Checked=true then
      SQL.Add('Update BUsers Set DepId=''CDC'' where UserID='''+main.Edit1.Text+''' ')
    else
      SQL.Add('Update BUsers Set DepId='''' where UserID='''+main.Edit1.Text+''' ');
    ExecSQL();
  end;
end;

end.


