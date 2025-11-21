unit smapleorderlistp;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, StdCtrls, Mask, DBCtrls, DB, DBTables, comobj, 
  Grids, DBGrids, Buttons, GridsEh, DBGridEh;

type
  TSmapleOrderList = class(TForm)
    Panel1: TPanel;
    pc1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    ypzlzls: TQuery;
    ypzlzls_ds: TDataSource;
    ypzlzls1_ds: TDataSource;
    Label11: TLabel;
    ypzlzls2: TQuery;
    TabSheet3: TTabSheet;
    Panel2_ToolPanel: TPanel;
    Button2: TButton;
    ypzlzl: TQuery;
    ypzlzlYPZLBH: TStringField;
    ypzlzlINSDATE: TDateTimeField;
    ypzlzlKFJD: TStringField;
    ypzlzlJiJie: TStringField;
    ypzlzlUSERID: TStringField;
    ypzlzlUSERDATE: TDateTimeField;
    ypzlzlYN: TStringField;
    ypzlzlCALDATE: TDateTimeField;
    ypzlzlmemo: TStringField;
    BB1: TBitBtn;
    BB2: TBitBtn;
    BB3: TBitBtn;
    BB4: TBitBtn;
    BB5: TBitBtn;
    BB6: TBitBtn;
    Tool_Panel: TPanel;
    ypzlzlsYPZLBH: TStringField;
    ypzlzlsYPDH: TStringField;
    ypzlzlsPAIRS: TFloatField;
    ypzlzlsUSERID: TStringField;
    ypzlzlsUSERDATE: TDateTimeField;
    ypzlzlsYN: TStringField;
    ypzlzlsRemark: TStringField;
    QryBtn: TButton;
    ypzlzl_ds: TDataSource;
    Label1: TLabel;
    Edit1: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    dtc: TDateTimePicker;
    Edit2: TEdit;
    Edit3: TEdit;
    DBEdit1: TDBEdit;
    Label6: TLabel;
    DBEdit2: TDBEdit;
    Label5: TLabel;
    Label7: TLabel;
    DBEdit3: TDBEdit;
    CheckBox1: TCheckBox;
    UpSQL1: TUpdateSQL;
    UpSQL3: TUpdateSQL;
    tq: TQuery;
    ypzlzlPD: TStringField;
    Panel2: TPanel;
    dd2: TBitBtn;
    dd3: TBitBtn;
    UpSQL2: TUpdateSQL;
    ypzlzls1: TQuery;
    dd4: TBitBtn;
    dd5: TBitBtn;
    ypzlzls1YPZLBH: TStringField;
    ypzlzls1CLBH: TStringField;
    ypzlzls1CLSL: TFloatField;
    ypzlzls1Qty: TFloatField;
    ypzlzls1USERID: TStringField;
    ypzlzls1USERDATE: TDateTimeField;
    ypzlzls1YN: TStringField;
    ypzlzls1ywpm: TStringField;
    ypzlzls1dwywsm: TStringField;
    ypzlzls1CSBH: TStringField;
    Flag: TEdit;
    lbzls: TQuery;
    DSlbzls: TDataSource;
    ypzlzlKFJDMEMO: TStringField;
    ddt1: TBitBtn;
    TabSheet4: TTabSheet;
    ypzls_po_ds: TDataSource;
    ypzls_po: TQuery;
    ypzls_poYPDH: TStringField;
    ypzls_poXH: TStringField;
    ypzls_poBWBH: TStringField;
    ypzls_poBWLB: TStringField;
    ypzls_poCLBH: TStringField;
    ypzls_poCSBH: TStringField;
    ypzls_poLOSS: TFloatField;
    ypzls_poCLSL: TFloatField;
    ypzls_poCLDJ: TFloatField;
    ypzls_poywpm: TStringField;
    CYP1: TQuery;
    cyp1cc: TQuery;
    ypzlzlGSBH: TStringField;
    BB7: TBitBtn;
    Edit5: TEdit;
    Panel4_ToolPanel: TPanel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    ypzlzlsXieXing: TStringField;
    ypzlzlsSheHao: TStringField;
    ypzlzlsARTICLE: TStringField;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    BWBHMM: TQuery;
    Panel6: TPanel;
    ypzls1_Det: TQuery;
    DS_ypzls1_Det: TDataSource;
    GridYPZLZLS1_Det: TDBGridEh;
    GridYPZLZLS1_Mas: TDBGridEh;
    ypzls1_DetDEVCODE: TStringField;
    ypzls1_DetFD: TStringField;
    ypzls1_DetXieMing: TStringField;
    ypzls1_DetJiJie: TStringField;
    ypzls1_DetBWBHMM: TStringField;
    ypzls1_DetCLSL: TFloatField;
    Label2: TLabel;
    Label12: TLabel;
    dd6: TBitBtn;                                    
    Panel3_ToolPanel: TPanel;
    Label13: TLabel;
    QryBtn_zls1: TButton;
    MatNMEdit: TEdit;
    ChildCKbox: TCheckBox;
    Label14: TLabel;
    SupNMEdit: TEdit;
    ypzlzls1ZSYWJC: TStringField;
    ypzlzls1CQDH: TStringField;
    Label15: TLabel;
    MatNoEdit: TEdit;
    mine: TCheckBox;
    Panel3: TPanel;
    EE2: TBitBtn;
    EE3: TBitBtn;
    EE4: TBitBtn;
    EE5: TBitBtn;
    EET1: TBitBtn;
    EE6: TBitBtn;
    DBGrid2: TDBGridEh;
    DBGridEh1: TDBGridEh;
    DBGridEh2: TDBGridEh;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QryBtnClick(Sender: TObject);
    procedure DBGrid2DblClick(Sender: TObject);
    procedure ComputeClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BB1Click(Sender: TObject);
    procedure bb2Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure pc1Change(Sender: TObject);
    procedure BB3Click(Sender: TObject);
    procedure dd2Click(Sender: TObject);
    procedure dd3Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure ypzlzlAfterInsert(DataSet: TDataSet);
    procedure BB7Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure dd6Click(Sender: TObject);
    procedure QryBtn_zls1Click(Sender: TObject);
    procedure GridYPZLZLS1_MasEditButtonClick(Sender: TObject);
    procedure EE4Click(Sender: TObject);
    procedure EET1Click(Sender: TObject);
    procedure dd4Click(Sender: TObject);
    procedure EE5Click(Sender: TObject);
    procedure DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure dd5Click(Sender: TObject);
    procedure EE6Click(Sender: TObject);
    procedure DBGridEh2DblClick(Sender: TObject);
  private
    { Private declarations }
    function GetMerge_BWBHMM(YPZLBH:string;CLDH:string):string;
  public
    { Public declarations }
  end;

var
  SmapleOrderList: TSmapleOrderList;

implementation

uses main1, SimpleSelectp, PurchaseMerge_SupplierName1, FunUnit;

{$R *.dfm}

procedure TSmapleOrderList.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  main.SN21.Enabled:=true;
  main.SN51.Enabled:=true;
  action:=Cafree;
  //smapleorderlist:=nil;  
end;

procedure TSmapleOrderList.QryBtnClick(Sender: TObject);
begin
    Tool_Panel.Visible:=false;
    {
//  ypzlzls1 供應商List如果為採購並單'P'取得供應商，如果為領料並單'D'取得領料單位
    if Flag.text='P' then
    begin
      Query2.active:=false;
      Query2.sql.clear;
      Query2.sql.add('select zsdh,zsywjc from zszl');
    end
    else
    begin
      Query2.active:=false;
      Query2.sql.clear;
      Query2.sql.add('select id as zsdh,depname as zsywjc ');
      Query2.sql.add('from bdepartment');
      Query2.sql.add('where gsbh='+''''+main.Edit2.text+'''');
      Query2.sql.add('	and proyn='+''''+'1'+'''');
    end;
    }
//--------------------------------------------------------------
    with ypzlzl do
    begin
      active:=false;
      ypzlzls.Active:=false;
      YPZLZLS1.Active:=false;
      sql.Clear;
      sql.add('select * from ypzlzl ');
      sql.add(' where ypzlzl.pd ='+''''+Flag.Text+'''');
      sql.add(' and gsbh='+''''+main.Edit2.text+'''');
      if edit1.text <> '' then
        sql.add('   and ypzlzl.ypzlbh like '+''''+edit1.text+'%'+'''');
      if edit2.text <> '' then
        sql.add('   and ypzlzl.kfjd like '+''''+edit2.text+'%'+'''');
      if checkbox1.Checked then
        sql.add('   and ypzlzl.insdate > '+''''+datetostr(dtc.date)+'''');
      if edit3.text <> '' then
        sql.add('   and ypzlzl.jijie like '+''''+edit3.text+'%'+'''');
      if mine.Checked then
        sql.add('   and ypzlzl.UserID='''+main.Edit1.Text+''' ');
      sql.add('order by ypzlzl.ypzlbh desc');
      //memo1.text:=sql.text;
      active:=true;
      if RecordCount > 0 then
      begin
        ypzlzls.Active:=true;
        ypzlzls1.Active:=true;
        ypzls1_Det.Active:=true;
        ypzls_po.Active:=true;
        //query5.Active:=true;
      end;
    end;
    bb2.enabled:=true;
    bb3.enabled:=true;
    bb4.enabled:=true;
    //Button1.Visible:=falase;
    //ypzlzls2_new.Active:=true;
end;
//回傳合併樣品單材料使用部位烈表使用
function TSmapleOrderList.GetMerge_BWBHMM(YPZLBH:string;CLDH:string):string;
var BWBHMMStr:string;
begin

  with BWBHMM do
  begin
   Active:=false;
   SQL.Clear;
   SQL.Add('select * from ( ');
   SQL.Add('select bwzl.ywsm  from YPZLZLS ');
   SQL.Add('left join YPZLS on YPZLS.YPDH=YPZLZLS.YPDH ');
   SQL.Add('left join bwzl on YPZLS.BWBH = bwzl.bwdh ');
   SQL.Add('where YPZLZLS.YPZLBH='''+YPZLBH+''' and YPZLS.CLBH='''+CLDH+''' ');
   SQL.Add('Union ');
   SQL.Add('select bwzl.ywsm  from YPZLZLS ');   //子材料
   SQL.Add('left join YPZLS on YPZLS.YPDH=YPZLZLS.YPDH ');
   SQL.Add('left join bwzl on YPZLS.BWBH = bwzl.bwdh ');
   SQL.Add('left join clzhzl on clzhzl.cldh=YPZLS.CLBH ');
   SQL.Add('where YPZLZLS.YPZLBH='''+YPZLBH+''' and clzhzl.cldh1='''+CLDH+''' ');
   SQL.Add(') BWBHList group by YWSM');
   //SQL.Add('for XML PATH('''') '); //BDE不支援此語法
   Active:=true;
   if RecordCount>0 then
   begin
    BWBHMMStr:='';
    while not Eof do
    begin
      BWBHMMStr:=BWBHMMStr+Fields[0].AsString+',';
      Next;
    end;
    result:=Copy(BWBHMMStr,1,length(BWBHMMStr)-1);
   end else
   begin
    result:='';
   end;
   Active:=false;
  end;

end;
//
procedure TSmapleOrderList.DBGrid2DblClick(Sender: TObject);
begin
  ypzlzls1.Active:=true;
  pc1.ActivePageIndex:=2;
  dd4.Enabled:=true;
  dd5.Enabled:=true;
  dd2.Enabled:=false;
  dd3.Enabled:=false;
  ddt1.Enabled:=true;
end;

procedure TSmapleOrderList.ComputeClick(Sender: TObject);
var BWBHMMStr:string;
begin
  //
  if ypzlzls.RecordCount>0 then
  begin
    cyp1cc.Active:=false;
    ypzlzls.First;
    //先刪除清空 樣品制令部位用量
    ypzlzls2.sql.Clear;
    ypzlzls2.sql.add('delete  ypzlzls2  where ypzlbh='+''''+ypzlzls.fieldbyname('ypzlbh').Value+'''');
    ypzlzls2.ExecSQL();

    while not ypzlzls.Eof do
    begin
      with ypzlzls2 do
      begin
        //母材料
        sql.Clear;
        sql.add('insert  ypzlzls2');
        sql.add('select '+''''+ypzlzl.fieldbyname('ypzlbh').Value+''''+' as ypzlbh,ypzl.ypdh,ypzls.bwbh ');
        sql.add('   ,ypzls.csbh,'+''''+'ZZZZZZZZZZ'+''''+' as mjbh,ypzls.clbh');
        sql.add('   ,clzl.clzmlb as zmlb,'+''''+'ZZZZZZ'+''''+' as size');
        //20141014修改開發自行輸入雙數
        //sql.add('   ,((ypzl.quantity*ypzls.clsl)*(1+ypzls.loss)) as clsl,0');
        sql.add('   ,(('+ypzlzls.fieldbyname('Pairs').AsString+'*ypzls.clsl)*(1+ypzls.loss)) as clsl,0');
        //
        sql.add('   ,ypzls.clsl,'+''''+main.edit1.text+''''+' as userid,getdate() as userdate');
        if Flag.Text = 'P' then
        begin
          sql.add('   ,(case clzl.clzmlb when '+''''+'Y'+''''+' then '+''''+'N'+'''');
          sql.add('      else '+''''+'Y'+''''+' end ) as yn');
        end
        else
        begin
          sql.add('   ,'+''''+'Y'+''''+' as yn');
        end;
        sql.add('from ypzl ');
        sql.add('left join ypzls on ypzl.ypdh=ypzls.ypdh ');
        sql.add('left join clzl on ypzls.clbh=clzl.cldh ');
        sql.add(' where ypzl.ypdh='+''''+ypzlzls.fieldbyname('ypdh').Value+'''');
        sql.add('union all ');
        //子材料
        sql.add('select '+''''+ypzlzl.fieldbyname('ypzlbh').Value+''''+' as ypzlbh,ypzl.ypdh,ypzls.bwbh ');
        sql.add('   ,ypzls.csbh,ypzls.clbh as mjbh,isnull(clzhzl.cldh1,'+''''+'NG'+''''+')');
        sql.add('   ,clzl.clzmlb as zmlb,'+''''+'ZZZZZZ'+''''+' as size');
        //20141014修改開發自行輸入雙數
        sql.add('   ,(('+ypzlzls.fieldbyname('Pairs').AsString+'*ypzls.clsl*clzhzl.syl)*(1+ypzls.loss)) as clsl,0');
        sql.add('   ,(ypzls.clsl*clzhzl.syl) as clsl');
        sql.add('   ,'+''''+main.edit1.text+''''+' as userid,getdate() as userdate');
        if Flag.Text = 'P' then
          sql.add('   ,'+''''+'Y'+''''+' as yn ')
        else
          sql.add('   ,'+''''+'N'+''''+' as yn ');

        sql.add('from ypzl ');
        sql.add('left join ypzls on ypzl.ypdh=ypzls.ypdh ');
        sql.add('left join clzl on ypzls.clbh=clzl.cldh ');
        sql.add('left join clzhzl on clzl.cldh=clzhzl.cldh');
        sql.add(' where ypzl.ypdh='+''''+ypzlzls.fieldbyname('ypdh').Value+'''');
        sql.add('and clzl.clzmlb='+''''+'Y'+'''');
        sql.add('order by bwbh');
        //memo1.Text:=sql.Text;
        ExecSQL;
      end;
      ypzlzls.Next;
    end;

    cyp1cc.Active:=true;
  {調整資料為先計算出來，再比對更新用量，舊資料UPDATE數量,新資料insert最後再查調供應新代入}
    with ypzlzls2 do
    begin
      active:=false;
      sql.Clear;
      sql.Add('select ypzlbh,clbh,sum(clsl) as clsl,0');
      sql.add('     ,'+''''+main.edit1.text+''''+',getdate(),yn');
      sql.Add(' from ypzlzls2');
      sql.Add(' where ypzlbh='+''''+ypzlzls.fieldbyname('ypzlbh').Value+'''');
      sql.Add(' group by ypzlbh,clbh,yn');
      //memo1.Text:=sql.Text;
      Active:=true;
    end;
    //比對更新及新增資料
    cyp1.Active:=false;
    cyp1.SQL.Clear;
    cyp1.SQL.Add('Delete from ypzlzls1 ');
    cyp1.SQL.Add(' where ypzlbh='+''''+ypzlzls2.FieldByName('ypzlbh').Value+'''');
    cyp1.ExecSQL;
    with ypzlzls1 do
    begin
      cyp1.SQL.Clear;
      Active:=false;
      Active:=true;
      ypzlzls2.First;
      while not ypzlzls2.Eof do
      begin
        //材料使用部位烈表 Ex.VAMP/TONGUE/QUARTER M/L/TONGUE LOOP
        BWBHMMStr:=GetMerge_BWBHMM(ypzlzls2.FieldByName('ypzlbh').AsString,ypzlzls2.FieldByName('clbh').AsString);
        //
        if locate('clbh',ypzlzls2.FieldByName('clbh').Value,[]) then
        begin
          cyp1.SQL.Add('update ypzlzls1 ');
          cyp1.SQL.Add('set clsl='+ypzlzls2.FieldByName('clsl').AsString);
          cyp1.SQL.Add('    ,BWBHMM='''+BWBHMMStr+''' ');
          cyp1.SQL.Add(' where ypzlbh='+''''+ypzlzls2.FieldByName('ypzlbh').Value+'''');
          cyp1.SQL.Add('    and clbh='+''''+ypzlzls2.FieldByName('clbh').Value+'''');
          cyp1.SQL.Add(' ');
        end
        else
        begin
          if ypzlzls2.FieldByName('clbh').Value <> 'NG' then
          begin
            cyp1.SQL.Add('insert ypzlzls1');
            cyp1.SQL.Add('VALUES (');
            cyp1.SQL.Add(''''+ypzlzls2.FieldByName('ypzlbh').Value+'''');
            cyp1.SQL.Add(','+''''+ypzlzls2.FieldByName('clbh').Value+'''');
            //填入供應商
            if cyp1cc.Locate('clbh',ypzlzls2.FieldByName('clbh').Value,[]) and (Flag.Text='P') then
              cyp1.SQL.Add(','+''''+cyp1cc.FieldByName('csbh').AsString+'''')
            else
              cyp1.SQL.Add(','+''''+'**'+'''');
            cyp1.SQL.Add(','+ypzlzls2.FieldByName('clsl').AsString);
            cyp1.SQL.Add(',0,'+''''+main.Edit1.Text+'''');
            cyp1.SQL.Add(',getdate(),'+''''+ypzlzls2.FieldByName('yn').AsString+''','''+BWBHMMStr+''')');

          end;
        end;
        ypzlzls2.next;
      end;
      cyp1.sql.Add(' update ypzlzl set caldate=getdate() ');
      cyp1.sql.add(' where ypzlbh='+''''+ypzlzls.fieldbyname('ypzlbh').Value+'''');
      //memo1.text:=cyp1.sql.Text;
      cyp1.ExecSQL;
    end;

    ypzlzls1.Active:=false;
    ypzlzls1.Active:=true;
    showmessage('Comput OK');
  end;
end;

procedure TSmapleOrderList.FormCreate(Sender: TObject);
begin
   lbzls.Active:=true;
   pc1.ActivePageIndex:=0;
   dtc.Date:=now-14;

end;

procedure TSmapleOrderList.BB1Click(Sender: TObject);
begin
//  panel1.Visible:=true;
  Tool_Panel.Visible:=true;
  pc1.ActivePageIndex:=0;
  QryBtn.Visible:=true;
end;

procedure TSmapleOrderList.bb2Click(Sender: TObject);
begin
  ypzlzl.RequestLive:=true;
  ypzlzl.CachedUpdates:=true;
  ypzlzl.Insert;
  bb3.enabled:=false;
  bb4.enabled:=false;
  bb6.enabled:=true;
  bb5.enabled:=true;
end;

procedure TSmapleOrderList.BB4Click(Sender: TObject);
begin
  ypzlzl.RequestLive:=true;
  ypzlzl.CachedUpdates:=true;
  ypzlzl.edit;
  bb2.enabled:=false;
  bb3.enabled:=false;
  bb6.enabled:=true;
  bb5.enabled:=true;
end;

procedure TSmapleOrderList.BB5Click(Sender: TObject);
var y,m:string;
  i,j:integer;
  k:string;
begin
  with tq do          //取服務器的年月值
  begin
    active:=false;
    sql.Clear;
    sql.Add('select year(getdate()) as FY,month(getdate()) as FM,getdate() as NDate ');
    active:=true;
    y:=fieldbyname('FY').asstring;
    m:=fieldbyname('FM').asstring;
//    NDate:=fieldbyname('Ndate').Value;
    active:=false;
  end;
  if length(m)<2 then
    m:='0'+m;

try
  ypzlzl.first;
  for j:=1 to ypzlzl.RecordCount do
  begin
    case ypzlzl.updatestatus of
     usmodified:
     begin
        ypzlzl.Edit;
        ypzlzl.FieldByName('userdate').Value:=date;
        ypzlzl.FieldByName('userid').value:=main.edit1.text;
        upSQL3.apply(ukmodify);
     end;
     usinserted:
     begin
      if ypzlzl.fieldbyname('ypzlbh').isnull then
      begin
        ypzlzl.edit;
        tq.active:=false;
        tq.sql.Clear;
        tq.sql.Add('select isnull(substring(max(ypzlbh),7,7),0) as mno');
        tq.sql.Add('from ypzlzl where substring(ypzlbh,0,7) = '+''''+y+m+'''');
        //tq.SQL.Add('      and gsbh='+''''+main.Edit2.text+'''');
        tq.active:=true;
        i:=strtoint(tq.fieldbyname('mno').Value)+1;
        k:=inttostr(i);
        ypzlzl.fieldbyname('ypzlbh').Value:=y+m;
        for i:=1 to (6-length(k)) do
        begin
          ypzlzl.fieldbyname('ypzlbh').Value:=ypzlzl.fieldbyname('ypzlbh').Value+'0';
        end;
        ypzlzl.fieldbyname('ypzlbh').Value:=ypzlzl.fieldbyname('ypzlbh').Value+k;
        ypzlzl.FieldByName('gsbh').Value:=main.Edit2.Text;
        ypzlzl.FieldByName('userdate').Value:=date;
        ypzlzl.FieldByName('userid').value:=main.edit1.text;
        ypzlzl.FieldByName('pd').value:=Flag.Text;
        ypzlzl.FieldByName('YN').value:='N';
        upSQL3.apply(ukinsert);
      end;
     end;
    end;
    ypzlzl.Next;
  end;
  ypzlzl.active:=false;
  ypzlzl.cachedupdates:=false;
  ypzlzl.requestlive:=false;
  ypzlzl.active:=true;
  if ypzlzl.RecordCount > 0 then
  begin
    ypzlzls.Active:=true;
    ypzlzls1.Active:=true;
  end;
  bb2.enabled:=true;
  bb3.enabled:=true;
  bb4.enabled:=true;
  bb6.enabled:=false;
  bb5.enabled:=false;
except
  Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
end;
end;

procedure TSmapleOrderList.pc1Change(Sender: TObject);
begin
  if not ypzlzls.Active then
    pc1.ActivePageIndex:=0;
  if pc1.ActivePageIndex=0 then
  begin
    panel1.Visible:=true;
    panel2.Visible:=false;
    panel3.Visible:=false;
  end;
  if pc1.ActivePageIndex=1 then
  begin
    panel1.Visible:=false;
    panel2.Visible:=true;
    panel3.Visible:=false;
    dd2.Enabled:=true;
    dd3.Enabled:=true;
    dd4.Enabled:=true;
    dd5.Enabled:=false;
    ddt1.Enabled:=false;
  end;
  if pc1.ActivePageIndex=2 then
  begin
    panel1.Visible:=false;
    panel2.Visible:=false;
    panel3.Visible:=true;
    EE2.Enabled:=false;
    EE3.Enabled:=false;
    EE4.Enabled:=true;
    EE5.Enabled:=false;
    EEt1.Enabled:=true;
  end;
  if pc1.ActivePageIndex=3 then
  begin
    panel1.Visible:=false;
    panel2.Visible:=false;
    panel3.Visible:=false;
  end;
end;

procedure TSmapleOrderList.BB3Click(Sender: TObject);
begin
  if ypzlzls.RecordCount > 0 then
  begin
    showmessage('Delete Smaple Order First');
    abort;
  end;
  if messagedlg('Delete data?',mtinformation,[mbYes,mbNo],0)=mrYes then
  begin
    ypzlzl.RequestLive:=true;
    ypzlzl.CachedUpdates:=true;
    upSQL3.apply(ukdelete);
    ypzlzl.Active:=false;
    ypzlzl.Active:=true;
  end;
end;

procedure TSmapleOrderList.dd2Click(Sender: TObject);
begin
  ypzlzls.RequestLive:=true;
  ypzlzls.CachedUpdates:=true;
  ypzlzls.Edit;
  if simpleselect<>nil then
  begin
    simpleselect.show;
    simpleselect.windowstate:=wsNormal;
  end
  else
  begin
    simpleselect:=Tsimpleselect.create(self);
    simpleselect.show;
  end;


end;

procedure TSmapleOrderList.dd3Click(Sender: TObject);
begin
  //
  //if messagedlg('Delete data?',mtinformation,[mbYes,mbNo],0)=mrYes then
 // begin
    edit5.Text:=dbedit1.Text;
    ypzlzls.RequestLive:=true;
    ypzlzls.CachedUpdates:=true;
    ypzlzls.edit;
    ypzlzls.fieldbyname('YN').Value:='0';
    dd5.Enabled:=true;
    dd6.Enabled:=true;
    {
    cyp1.SQL.Clear;
    cyp1.SQL.Add('delete ypzlzls2 where ypdh='+''''+ypzlzls.FieldByName('ypdh').Value+'''');
    cyp1.ExecSQL;
    upSQL1.apply(ukdelete);
    ypzls_po.Active:=false;
    ypzlzls1.Active:=false;
    ypzlzls.Active:=false;
    ypzlzls.Active:=true;
    ypzls_po.Active:=true;
    ypzlzls1.Active:=true;
    }
 // end;
  //
end;

procedure TSmapleOrderList.FormDestroy(Sender: TObject);
begin
  main.SN21.Enabled:=true;
  main.SN51.Enabled:=true;
  smapleorderlist:=nil;
end;

procedure TSmapleOrderList.ypzlzlAfterInsert(DataSet: TDataSet);
begin
  ypzlzl.FieldByName('insdate').Value:=now;
end;

procedure TSmapleOrderList.BB7Click(Sender: TObject);
begin
  close;
end;

procedure TSmapleOrderList.DBGrid1DblClick(Sender: TObject);
begin
  if ypzlzls1.RequestLive then
  begin
    ypzlzls1.edit;
    if ypzlzls1.FieldByName('yn').Value='Y' then
      ypzlzls1.FieldByName('yn').Value:='N'
    else
      ypzlzls1.FieldByName('yn').Value:='Y';
  end;
end;

procedure TSmapleOrderList.BB6Click(Sender: TObject);
begin
  bb2.Enabled:=true;
  bb3.Enabled:=true;
  bb4.Enabled:=true;
  ypzlzl.Active:=false;
  ypzlzl.Active:=true;
  bb5.Enabled:=false;
  bb6.Enabled:=false;
  //取消
  ypzlzl.active:=false;
  ypzlzl.cachedupdates:=false;
  ypzlzl.requestlive:=false;
  ypzlzl.active:=true;
  if ypzlzl.RecordCount > 0 then
  begin
    ypzlzls.Active:=true;
    ypzlzls1.Active:=true;
  end;
  //
end;

procedure TSmapleOrderList.dd6Click(Sender: TObject);
begin
  ypzlzls.active:=false;
  ypzlzls.cachedupdates:=false;
  ypzlzls.requestlive:=false;
  ypzlzls.active:=true;
  DBGrid2.Columns[5].Color:=clwindow;
  dd5.Enabled:=false;
  dd6.Enabled:=false;
end;

procedure TSmapleOrderList.QryBtn_zls1Click(Sender: TObject);
begin
  //
  with ypzlzls1 do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select ypzlzls1.*,CLZL.YWPM,clzl.DWYWSM,clzl.CQDH,zszl.ZSYWJC  from ypzlzls1 ');
    SQL.Add('left join clzl on clzl.cldh=ypzlzls1.clbh ');
    SQL.Add('left join zszl on zszl.zsdh=ypzlzls1.CSBH ');
    SQL.Add('where ypzlbh=:ypzlbh ');
    if MatNoEdit.Text<>'' then
      SQL.Add(' and CLZL.CLDH like ''%'+MatNoEdit.Text+'%'' ');
    if MatNMEdit.Text<>'' then
      SQL.Add(' and CLZL.YWPM like ''%'+MatNMEdit.Text+'%'' ');
    if SupNMEdit.Text<>'' then
      SQL.Add(' and zszl.ZSYWJC like ''%'+SupNMEdit.Text+'%'' ');
    if ChildCKbox.Checked=true then
      SQL.Add(' and ypzlzls1.YN=''Y'' ');
    SQL.Add('order by clzl.CQDH,ypzlzls1.csbh,ypzlzls1.yn,ypzlzls1.clbh ');
    Active:=true;
  end;
  //
end;

procedure TSmapleOrderList.GridYPZLZLS1_MasEditButtonClick(
  Sender: TObject);
begin
  with GridYPZLZLS1_Mas do
  begin
    if Selectedfield.fieldname='ZSYWJC' then
    begin
      PurchaseMerge_SupplierName:=TPurchaseMerge_SupplierName.Create(self);
      PurchaseMerge_SupplierName.ShowModal();
      PurchaseMerge_SupplierName.Free;

    end;
  end;
end;

procedure TSmapleOrderList.EE4Click(Sender: TObject);
begin
  ypzlzls1.Active:=true;
  ypzlzls1.RequestLive:=true;
  ypzlzls1.CachedUpdates:=true;
  ypzlzls1.Edit;
  GridYPZLZLS1_Mas.Columns[6].ButtonStyle:=cbsEllipsis;
  pc1.ActivePageIndex:=2;
  EE5.Enabled:=true;
  EE6.Enabled:=true;
end;

procedure TSmapleOrderList.EET1Click(Sender: TObject);
var
      eclApp,WorkBook:olevariant;
      i,j:integer;
begin
try
  eclApp:=CreateOleObject('Excel.Application');
  WorkBook:=CreateOleObject('Excel.Sheet');
except
  Application.MessageBox('NO Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
  Exit;
end;

try
  WorkBook:=eclApp.workbooks.Add;

  eclapp.workbooks[1].sheets[1].name:='Useing Report';
  eclApp.workbooks[1].sheets[1].Cells(1,1):='NO';
  for   i:=1   to   ypzlzls1.fieldcount   do
    begin
      eclApp.workbooks[1].sheets[1].Cells(1,i+1):=ypzlzls1.fields[i-1].FieldName;
    end;
  ypzlzls1.First;
  j:=2;
  while   not  ypzlzls1.Eof   do
    begin
      eclApp.workbooks[1].sheets[1].Cells(j,1):=j-1;
      for   i:=1   to   ypzlzls1.fieldcount   do
        begin
          eclApp.workbooks[1].sheets[1].Cells(j,i+1):=ypzlzls1.Fields[i-1].Value;
          eclApp.workbooks[1].sheets[1].Cells.Cells.item[j,i+1].font.size:='8';
        end;
      ypzlzls1.Next;
      inc(j);
    end;
  eclapp.columns.autofit;
  showmessage('Succeed.');
  eclApp.Visible:=True;
except
  on   F:Exception   do
    showmessage(F.Message);
end;
//  eclapp.columns.autofit;

end;

procedure TSmapleOrderList.dd4Click(Sender: TObject);
begin
  with ypzlzls do
    begin
      requestlive:=true;
      cachedupdates:=true;
      edit;
    end;
  DBGrid2.Columns[5].Color:=$0080FFFF;  
  DD5.Enabled:=true;
  DD6.Enabled:=true;
end;

procedure TSmapleOrderList.EE5Click(Sender: TObject);
begin
  //儲存時明細關聯先關閉
  ypzls1_Det.Active:=false;
  //
  ypzlzls1.First;
  while not ypzlzls1.Eof do
  begin
    case ypzlzls1.updatestatus of
      usmodified:
      begin
        upSQL2.apply(ukmodify);
      end;
    end;
    ypzlzls1.next;
  end;
  //20140311 修正重新載入
  ypzlzls1.active:=false;
  ypzlzls1.cachedupdates:=false;
  ypzlzls1.requestlive:=false;
  ypzlzls1.active:=true;
  ypzls1_Det.Active:=true;
  GridYPZLZLS1_Mas.Columns[6].ButtonStyle:=cbsAuto;
  EE5.Enabled:=false;
  EE6.Enabled:=false;
end;

procedure TSmapleOrderList.DBGrid2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  //
  if Ypzlzls.FieldByName('YN').value='0' then
  begin
    DBgrid2.canvas.font.color:=clred;
    DBgrid2.DefaultDrawColumnCell(rect,datacol,column,state);
  end;
  //
end;

procedure TSmapleOrderList.dd5Click(Sender: TObject);
begin
  ypzlzls.First;
  while not ypzlzls.Eof do
  begin
    case ypzlzls.updatestatus of
      usmodified:
      begin
        if ypzlzls.fieldbyname('YN').value='0'then
        begin
          upSQL1.apply(ukdelete);
        end else
        begin
          ypzlzls.edit;
          ypzlzls.FieldByName('userID').Value:=main.edit1.text;
          ypzlzls.FieldByName('userdate').Value:=Now();
          upSQL1.apply(ukmodify);
        end;
      end;
    end;
    ypzlzls.next;
  end;

  ypzlzls.active:=false;
  ypzlzls.cachedupdates:=false;
  ypzlzls.requestlive:=false;
  ypzlzls.active:=true;
  DBGrid2.Columns[5].Color:=clwindow;
  //
  ypzls_po.Active:=false;
  ypzlzls1.Active:=false;
  ypzls_po.Active:=true;
  ypzlzls1.Active:=true;
  //
  dd5.Enabled:=false;
  dd6.Enabled:=false;
end;

procedure TSmapleOrderList.EE6Click(Sender: TObject);
begin
  ypzlzls1.active:=false;
  ypzlzls1.cachedupdates:=false;
  ypzlzls1.requestlive:=false;
  ypzlzls1.active:=true;
  GridYPZLZLS1_Mas.Columns[6].ButtonStyle:=cbsAuto;
  EE5.Enabled:=false;
  EE6.Enabled:=false;
end;

procedure TSmapleOrderList.DBGridEh2DblClick(Sender: TObject);
begin
  panel1.Visible:=false;
  Tool_Panel.Visible:=false;
  panel2.Visible:=true;
  pc1.ActivePageIndex:=1;
  dd2.Enabled:=true;
  dd3.Enabled:=true;
  dd4.Enabled:=false;
  dd5.Enabled:=false;
end;

end.
