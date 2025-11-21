unit FDStatusMaterialChange1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, DBGridEhImpExp, ShellAPI, StdCtrls, ExtCtrls,comobj,
  ComCtrls, Menus, Buttons, OleServer, ExcelXP, jpeg;

type
  TFDStatusMaterialChange = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Edit1: TEdit;                                         
    Label2: TLabel;
    Edit2: TEdit;
    Label3: TLabel;
    Button1: TButton;
    pgc1: TPageControl;
    TS_ChangeList: TTabSheet;
    ds5: TDataSource;
    qry5: TQuery;
    lbl1: TLabel;
    edt1: TEdit;
    qry5clbh: TStringField;
    qry5ywpm: TStringField;
    qry5zsywjc: TStringField;
    qry5cgdate: TDateTimeField;
    qry5yqdate: TDateTimeField;
    qry5ETA: TDateTimeField;
    qry5cgno: TStringField;
    qry5rkdate: TDateTimeField;
    qry5PurQty: TCurrencyField;
    qry5dwbh: TStringField;
    qry5FD: TStringField;
    qry5jijie: TStringField;
    qry5stage: TStringField;
    Label5: TLabel;
    cbb2: TComboBox;
    Label7: TLabel;
    cbb1: TComboBox;
    qry5reason: TStringField;
    PopupMenu1: TPopupMenu;
    S1: TMenuItem;
    S2: TMenuItem;
    S3: TMenuItem;
    UpSql1: TUpdateSQL;
    qry5ChargeQty: TCurrencyField;
    qry_article: TQuery;
    qry_articlejijie: TStringField;
    qry_articlekfjd: TStringField;
    qry_articlexieming: TStringField;
    qry_articleFD: TStringField;
    qry_articleDevType: TStringField;
    qry_articleCategory: TStringField;
    qry5Manual: TStringField;
    S4: TMenuItem;
    qry5XieMing: TStringField;
    qry5Responsibility: TStringField;
    BBTT2: TBitBtn;
    qry5Dropped: TBooleanField;
    qry5transfer: TBooleanField;
    Excel1: TMenuItem;
    Panel7: TPanel;
    dbgrdh5: TDBGridEh;
    Panel8: TPanel;
    Panel2: TPanel;
    Label8: TLabel;
    DBGridEh1: TDBGridEh;
    Splitter2: TSplitter;
    Splitter3: TSplitter;
    qry5ypdh: TStringField;
    start: TQuery;
    tempqry: TQuery;
    edit5: TComboBox;
    ds_article: TDataSource;
    qry4: TQuery;
    qry5devcode: TStringField;
    qry5mainclbh: TStringField;
    qry5USD: TCurrencyField;
    qry5VND: TCurrencyField;
    qry_articledevcode: TStringField;
    qry5TotalUSD: TCurrencyField;
    qry5TotalVND: TCurrencyField;
    qry5fdteam: TStringField;
    Check_purdate: TCheckBox;
    DTP1: TDateTimePicker;
    lbl8: TLabel;
    DTP2: TDateTimePicker;
    procedure Button1Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);

    procedure BBTT1Click(Sender: TObject);
    procedure S1Click(Sender: TObject);
    procedure S2Click(Sender: TObject);
    procedure S3Click(Sender: TObject);
    procedure qry5CalcFields(DataSet: TDataSet);
    procedure dbgrdh5Columns8NotInList(Sender: TObject; NewText: String;
      var RecheckInList: Boolean);
    procedure Edit2Exit(Sender: TObject);
    procedure BBTT2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure cbb2Change(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure qry5ResponsibilityValidate(Sender: TField);
    procedure Excel1Click(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }
  end;
var
  FDStatusMaterialChange: TFDStatusMaterialChange;
  dbg2 : boolean;

implementation

uses FDStatus_AL1, FDStatus_Stock1, FDStatus_PO1, FDStatus_ETD1, FDstatus_Stage1,
  FDStatus1, FDStatusMaterialChange_Stage1,
  FDStatusMaterialChange_FD1, FDUnfinished1, main1;

{$R *.dfm}

procedure TFDStatusMaterialChange.Button1Click(Sender: TObject);
begin
  if ((edit2.Text='') or (edit5.Text='')) and (Check_purdate.Checked=false) then  //season為必填欄位
     begin
       showmessage('Season and Stage must be filled with data!');
     end;
   //第二頁

  if ((edit2.Text<>'') and (edit5.Text<>'')) or (Check_purdate.Checked=true) then
  begin
    with qry5 do    // Material change list
    begin
      active:=false;
      sql.Clear;
          //不在樣品單上卻有下採購單的材料
      sql.Add(' select FDEng.fdteam,kfxxzl.FD,kfxxzl.jijie,kfxxzl.devcode,kfxxzl.XieMing,cgzlss.stage,cgzlss.zlbh as ypdh,cgzlss.clbh,clzl.ywpm,zszl.zsywjc,');
      sql.Add(' cgzl.cgdate,cgzlss.CFMdate as yqdate,cgzls.ETA as ETA,cgzls.cgno,KCRK.Userdate as rkdate,cgzlss.Qty as PurQty,dwbh,MaterialChangeMEMO.reason,MaterialChangeMEMO.ChargeQty,MaterialChangeMEMO.Price,MaterialChangeMEMO.ChargeWay,MaterialChangeMEMO.Manual');
      sql.Add(' ,MaterialChangeMEMO.Responsibility,xxzlkf.Dropped,xxzlkf.transfer,MaterialChangeMEMO.clbh as mainclbh,sampleprice as USD,cgzlss.Qty*sampleprice as TotalUSD,samplepriceVN as VND,cgzlss.Qty*samplepriceVN as TotalVND');
      sql.Add(' from cgzlss');
      sql.Add(' left join cgzls on cgzls.cgno=cgzlss.cgno and cgzls.clbh=cgzlss.clbh');
      sql.Add(' left join clzl on clzl.cldh=cgzlss.clbh');
      sql.Add(' left join cgzl on cgzl.cgno=cgzlss.cgno');
      sql.Add(' left join ypzl on ypzl.ypdh=cgzlss.zlbh');
      sql.add(' left join xxzlkf on ypzl.xiexing=xxzlkf.xiexing and ypzl.shehao=xxzlkf.shehao');
      sql.add(' left join kfxxzl on kfxxzl.xiexing=ypzl.xiexing and kfxxzl.shehao=ypzl.shehao');
      sql.add(' left join (select userid,engname,fdid,fdteam from busers FDEng left join FDGroups on FDEng.userid=FDGroups.FDID and FDGroups.FDname = ''Develop'' where fdid is not null) FDEng on FDEng.engname=kfxxzl.FD');
      sql.Add(' left join zszl on zszl.zsdh=cgzl.zsbh');
      sql.Add(' left join (select * from materialmoq ');
      if Edit2.Text<>'' then
        sql.Add('          where season='''+edit2.Text+''' ');
      sql.Add('           )materialmoq on cgzlss.clbh=materialmoq.clbh and cgzl.season = materialmoq.season and cgzl.zsbh = materialmoq.zsbh');
      sql.Add(' left join MaterialChangeMEMO on MaterialChangeMEMO.ypdh=cgzlss.zlbh and MaterialChangeMEMO.CLBH=cgzlss.clbh and MaterialChangeMEMO.Stage=cgzlss.stage  ');
      sql.Add(' left join (SELECT kcrks.clbh,kcrk.zsno,min(KCRK.Userdate) as Userdate FROM kcrk,KCRKS WHERE kcrk.GSBH=''cdc'' and kcrk.RKNO=KCRKS.RKNO group by kcrk.zsno,KCRKS.CLBH) kcrk on kcrk.zsno=cgzlss.cgno and kcrk.clbh=cgzlss.clbh ');
      sql.Add(' where  cgzlss.qty>0');
      if  cbb1.Text<>'' then
          sql.add(' and isnull(ypzl.subtype,'''') like '+'''%'+cbb1.Text+'%'+'''');
      if  cbb2.Text<>'' then
          sql.add(' and isnull(kfxxzl.DevType,'''') like '+'''%'+cbb2.Text+'%'+'''');
      if  edit1.Text<>'' then     //FD
          sql.add(' and kfxxzl.FD = '''+edit1.Text+'''');
      if  edit2.Text<>'' then     //Season
          begin
             sql.Add(' and kfxxzl.jijie= '''+edit2.Text+'''');
          end;
      if  (edit5.Text<>'') and (edit5.Text='SMS')  then    //階段stage
          BEGIN
             sql.Add(' and (   ');
             sql.Add(' cgzlss.stage=''SMS''  ');
             sql.Add(' or cgzlss.stage=''SM2''  ');
             sql.Add('     )  ');
          end;
      if  (edit5.Text<>'') and (edit5.Text<>'SMS')  then    //階段stage
          BEGIN
             sql.Add(' and cgzlss.stage= '''+edit5.Text+'''');
          END;
      if  edt1.Text<>'' then     //Article
          sql.Add(' and cgzlss.zlbh= '''+edt1.Text+'''');
         { if  Chk_Drop.Checked=true then
              sql.Add('    and xxzlkf.Dropped=1 ' );    }
      if Check_purdate.Checked=true then
      begin
         sql.add(' and cgzl.cgdate between');
         sql.add(' convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP1.datetime)+''') ');
         sql.add(' and  ');
         sql.add(' convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP2.datetime)+''')  ');
         sql.Add(' and kfxxzl.jijie is not null');
      end;
      sql.Add(' and not exists (');
      sql.Add('select ypzls.ypdh,ypzls.clbh from (');
      sql.Add('SELECT ypzls.YPDH ,ypzls.CLBH');
      sql.Add('FROM ypzls ypzls');
      sql.Add('WHERE YPDH =cgzlss.zlbh');
      sql.Add('union all');
      sql.Add('SELECT ypzls.YPDH,clzhzl.CLDH1 as CLBH ');
      sql.Add('FROM ypzls ypzls');
      sql.Add('Left join clzhzl ON  ypzls.CLBH = CLZHZL.cldh');
      sql.Add('left join clzhzl_dev ON clzhzl.cldh=clzhzl_dev.cldh and clzhzl.cldh1=clzhzl_dev.cldh1');
      sql.Add('WHERE YPDH=cgzlss.zlbh   and CLZHZL.SYL>0');
      sql.Add('union all ');
      sql.Add('Select clzhzl2.YPDH,clzhzl.CLDH1 as CLBH');
      sql.Add('   from ( ');
      sql.Add('SELECT ypzls.YPDH ,clzhzl.CLDH1 as CLBH');
      sql.Add('FROM ypzls ypzls ');
      sql.Add('inner join clzhzl ON  ypzls.CLBH = CLZHZL.cldh ');
      sql.Add('left JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh ');
      sql.Add('left join clzhzl_dev ON clzhzl.cldh=clzhzl_dev.cldh and clzhzl.cldh1=clzhzl_dev.cldh1');
      sql.Add('WHERE YPDH= cgzlss.zlbh  and CLZHZL.SYL>''0''   and clzl.clzmlb=''Y''');
      sql.Add(') clzhzl2');
      sql.Add('inner join clzhzl ON  clzhzl2.CLBH = CLZHZL.cldh ');
      sql.Add('left join clzhzl_dev ON clzhzl.cldh=clzhzl_dev.cldh and clzhzl.cldh1=clzhzl_dev.cldh1');
      sql.Add('left JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh ');
      sql.Add(')  YPZLS ');
      sql.Add('where');
      sql.Add('ypzl.ypdh=cgzlss.zlbh');
      sql.Add('and ypzls.clbh=cgzlss.clbh)');
      //memo1.text:=sql.text;
      active:=true;
    end;
    if not qry5.Eof then   //當有資料時,才可以去抓取相關的Article資料
         begin
         with qry_article do
            begin
              sql.Clear;
              sql.Add(' select * from ');
              sql.Add('  ( ');
              sql.Add('    select kfxxzl.jijie,ypzl.kfjd,xieming,kfxxzl.devcode,kfxxzl.FD,kfxxzl.DevType,kfxxzl.Category from ypzls');
              sql.Add('    left join ypzl on ypzl.ypdh=ypzls.ypdh');
              sql.Add('    left join zszl on zszl.zsdh=ypzls.csbh');
              sql.Add('    left join xxzlkf on xxzlkf.xiexing=ypzl.xiexing and xxzlkf.shehao=ypzl.shehao');
              sql.Add('    left join kfxxzl on kfxxzl.xiexing=xxzlkf.xiexing and kfxxzl.shehao=xxzlkf.shehao');
              sql.Add('    where ypzls.clbh=:clbh');
              if length(Edit2.Text) > 0 then
                 sql.Add('    and kfxxzl.jijie='+''''+Edit2.Text+'''');
              if length(Edit5.Text) > 0 then
                sql.Add('  and ypzl.kfjd='+''''+Edit5.Text+'''');
              sql.Add('    union all');
              sql.Add('    select kfxxzl.jijie,ypzl.kfjd,xieming,kfxxzl.devcode,kfxxzl.FD,kfxxzl.DevType,kfxxzl.Category from ypzls');
              sql.Add('    INNER  JOIN CLZHZL   ON YPZLS.CLBH = CLZHZL.cldh');
              sql.Add('    left join ypzl on ypzl.ypdh=ypzls.ypdh');
              sql.Add('    left join zszl on zszl.zsdh=CLZHZL.ZSDH');
              sql.Add('    left join xxzlkf on xxzlkf.xiexing=ypzl.xiexing and xxzlkf.shehao=ypzl.shehao');
              sql.Add('    left join kfxxzl on kfxxzl.xiexing=xxzlkf.xiexing and kfxxzl.shehao=xxzlkf.shehao');
              sql.Add('     where CLZHZL.CLDH1=:clbh');
              if length(Edit2.Text) > 0 then
                 sql.Add('      and kfxxzl.jijie='+''''+Edit2.Text+'''');
              if length(Edit5.Text) > 0 then
                sql.Add('    and ypzl.kfjd='+''''+Edit5.Text+'''');
              sql.Add('   ) ca');
              sql.Add(' group by jijie,devcode,kfjd,xieming,FD,DevType,Category');
            end;
            //memo1.text:=qry_article.sql.text;
            qry_article.Active:=true;
         end;
    end;
  end;





procedure TFDStatusMaterialChange.FormDestroy(Sender: TObject);
begin
  FDStatusMaterialChange:=nil;

end;

procedure TFDStatusMaterialChange.FormCreate(Sender: TObject);
begin
  PGC1.ActivePage:=TS_ChangeList;


     with start do
      begin
         active:=false;        //抓取使用者資料
         SQL.Clear;
         SQL.add('select isnull(engname,'+''''+''''+') as engname from Busers');
         SQL.add('where userid= '+''''+main.Edit1.Text+''' ');
         Active:=true;
      end;
  DTP1.Date:=Now;
  DTP2.Date:=Now;
end;



procedure TFDStatusMaterialChange.BBTT1Click(Sender: TObject);
begin
  FDStatusMaterialChange_Stage:=TFDStatusMaterialChange_Stage.create(self);
  FDStatusMaterialChange_Stage.show;
end;

procedure TFDStatusMaterialChange.S1Click(Sender: TObject);
begin
 Button1.Enabled:=false;
{    with qry5 do    // Material change list
    begin
      active:=false;
      sql.Clear;
          //不在樣品單上卻有下採購單的材料
      sql.Add(' select FDEng.fdteam,kfxxzl.FD,kfxxzl.jijie,kfxxzl.devcode,kfxxzl.XieMing,cgzlss.stage,cgzlss.zlbh as ypdh,cgzlss.clbh,clzl.ywpm,zszl.zsywjc,');
      sql.Add(' cgzl.cgdate,cgzlss.CFMdate as yqdate,cgzls.ETA as ETA,cgzls.cgno,KCRK.Userdate as rkdate,cgzlss.Qty as PurQty,dwbh,MaterialChangeMEMO.reason,MaterialChangeMEMO.ChargeQty,MaterialChangeMEMO.Price,MaterialChangeMEMO.ChargeWay,MaterialChangeMEMO.Manual');
      sql.Add(' ,MaterialChangeMEMO.Responsibility,xxzlkf.Dropped,xxzlkf.transfer,MaterialChangeMEMO.clbh as mainclbh,sampleprice as USD,cgzlss.Qty*sampleprice as TotalUSD,samplepriceVN as VND,cgzlss.Qty*samplepriceVN as TotalVND');
      sql.Add(' from cgzlss');
      sql.Add(' left join cgzls on cgzls.cgno=cgzlss.cgno and cgzls.clbh=cgzlss.clbh');
      sql.Add(' left join clzl on clzl.cldh=cgzlss.clbh');
      sql.Add(' left join cgzl on cgzl.cgno=cgzlss.cgno');
      sql.Add(' left join ypzl on ypzl.ypdh=cgzlss.zlbh');
      sql.add(' left join xxzlkf on ypzl.xiexing=xxzlkf.xiexing and ypzl.shehao=xxzlkf.shehao');
      sql.add(' left join kfxxzl on kfxxzl.xiexing=ypzl.xiexing and kfxxzl.shehao=ypzl.shehao');
      sql.add(' left join (select userid,engname,fdid,fdteam from busers FDEng left join FDGroups  on FDEng.userid=FDGroups.FDID where fdid is not null) FDEng on FDEng.engname=kfxxzl.FD');      
      sql.Add(' left join zszl on zszl.zsdh=cgzl.zsbh');
      sql.Add(' left join (select * from materialmoq where season='''+edit2.Text+''')materialmoq on cgzlss.clbh=materialmoq.clbh');
      sql.Add(' left join MaterialChangeMEMO on MaterialChangeMEMO.ypdh=cgzlss.zlbh and MaterialChangeMEMO.CLBH=cgzlss.clbh and MaterialChangeMEMO.Stage=cgzlss.stage  ');
      sql.Add(' left join (SELECT kcrks.clbh,kcrk.zsno,min(KCRK.Userdate) as Userdate FROM kcrk,KCRKS WHERE kcrk.GSBH=''cdc'' and kcrk.RKNO=KCRKS.RKNO group by kcrk.zsno,KCRKS.CLBH) kcrk on kcrk.zsno=cgzlss.cgno and kcrk.clbh=cgzlss.clbh ');
      sql.Add(' where  cgzlss.qty>0');
      if  cbb1.Text<>'' then
          sql.add(' and isnull(ypzl.subtype,'''') like '+'''%'+cbb1.Text+'%'+'''');
      if  cbb2.Text<>'' then
          sql.add(' and isnull(kfxxzl.DevType,'''') like '+'''%'+cbb2.Text+'%'+'''');
      sql.add(' and kfxxzl.FD = '''+start.fieldbyname('engname').AsString+'''');
      if  edit2.Text<>'' then     //Season
          begin
             sql.Add(' and kfxxzl.jijie= '''+edit2.Text+'''');
          end;
      if  (edit5.Text<>'') and (edit5.Text='SMS')  then    //階段stage
          BEGIN
             sql.Add(' and (   ');
             sql.Add(' cgzlss.stage=''SMS''  ');
             sql.Add(' or cgzlss.stage=''SM2''  ');
             sql.Add('     )  ');
          end;
      if  (edit5.Text<>'') and (edit5.Text<>'SMS')  then    //階段stage
          BEGIN
             sql.Add(' and cgzlss.stage= '''+edit5.Text+'''');
          END;
      if  edt1.Text<>'' then     //Article
          sql.Add(' and cgzlss.zlbh= '''+edt1.Text+'''');
      sql.Add(' and not exists (');
      sql.Add('select ypzls.ypdh,ypzls.clbh from (');
      sql.Add('SELECT ypzls.YPDH ,ypzls.CLBH');
      sql.Add('FROM ypzls ypzls');
      sql.Add('WHERE YPDH =cgzlss.zlbh');
      sql.Add('union all');
      sql.Add('SELECT ypzls.YPDH,clzhzl.CLDH1 as CLBH ');
      sql.Add('FROM ypzls ypzls');
      sql.Add('Left join clzhzl ON  ypzls.CLBH = CLZHZL.cldh');
      sql.Add('left join clzhzl_dev ON clzhzl.cldh=clzhzl_dev.cldh and clzhzl.cldh1=clzhzl_dev.cldh1');
      sql.Add('WHERE YPDH=cgzlss.zlbh   and CLZHZL.SYL>0');
      sql.Add('union all ');
      sql.Add('Select clzhzl2.YPDH,clzhzl.CLDH1 as CLBH');
      sql.Add('   from ( ');
      sql.Add('SELECT ypzls.YPDH ,clzhzl.CLDH1 as CLBH');
      sql.Add('FROM ypzls ypzls ');
      sql.Add('inner join clzhzl ON  ypzls.CLBH = CLZHZL.cldh ');
      sql.Add('left JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh ');
      sql.Add('left join clzhzl_dev ON clzhzl.cldh=clzhzl_dev.cldh and clzhzl.cldh1=clzhzl_dev.cldh1');
      sql.Add('WHERE YPDH= cgzlss.zlbh  and CLZHZL.SYL>''0''   and clzl.clzmlb=''Y''');
      sql.Add(') clzhzl2');
      sql.Add('inner join clzhzl ON  clzhzl2.CLBH = CLZHZL.cldh ');
      sql.Add('left join clzhzl_dev ON clzhzl.cldh=clzhzl_dev.cldh and clzhzl.cldh1=clzhzl_dev.cldh1');
      sql.Add('left JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh ');
      sql.Add(')  YPZLS ');
      sql.Add('where');
      sql.Add('ypzl.ypdh=cgzlss.zlbh');
      sql.Add('and ypzls.clbh=cgzlss.clbh)');
     // memo1.text:=sql.text;
     //showmessage(SQL.Text);
      active:=true;
    end;
}
if qry5.Active then
  begin
    qry5.RequestLive:=true;
    qry5.CachedUpdates:=true;

    dbgrdh5.Columns[8].ReadOnly:=false;
    dbgrdh5.Columns[9].ReadOnly:=false;
    dbgrdh5.Columns[10].ReadOnly:=false;
    dbgrdh5.Columns[11].ReadOnly:=false;
    dbgrdh5.Columns[15].ReadOnly:=false;
    s1.Enabled:=false;
    S2.enabled:=true;
    S3.enabled:=true;
  end;
end;

procedure TFDStatusMaterialChange.S2Click(Sender: TObject);
var i:integer;
begin
 Button1.Enabled:=true;
 qry_article.Active:=false;
 try
 //qry5.cachedupdates:=true;
// qry5.requestlive:=true;
 qry5.first;
    for i:=1 to qry5.RecordCount do
    begin
      case qry5.updatestatus of
      usmodified:
         if  qry5.FieldByName('mainclbh').isnull then
            begin
             with qry4 do
                begin
                  active:=false;
                  sql.Clear;
                  sql.Add(' insert MaterialChangeMEMO (ypdh,CLBH,season,stage) values(');
                  sql.Add(' '''+qry5.fieldbyname('ypdh').AsString+'''');
                  sql.Add(', '''+qry5.fieldbyname('CLBH').AsString+'''');
                  sql.Add(', '''+qry5.fieldbyname('jijie').AsString+'''');
                  sql.Add(', '''+qry5.fieldbyname('stage').AsString+'''');
                  sql.Add(')');
                  execsql;
                end;
                qry5.edit;
                //qry5.FieldByName('userID').Value:=main.edit1.text;
            //    qry5.FieldByName('userdate').Value:=Ndate;
                UpSql1.apply(ukmodify);
            end else
            begin
               qry5.edit;
            //   query1.FieldByName('userID').Value:=main.edit1.text;
            //   query1.FieldByName('userdate').Value:=Ndate;
               UpSql1.apply(ukmodify);
            end;
         end;

      qry5.next;
    end;
    with qry5 do
    begin
    active:=false;
    requestlive:=false;
    cachedupdates:=false;
    active:=true;
    end;

    except
       Messagedlg('Have wrong,can not save!',mtwarning,[mbyes],0);
   end;
  s1.Enabled:=true;
  S2.enabled:=false;
  S3.Enabled:=false;
  dbgrdh5.Columns[7].ReadOnly:=true;
  dbgrdh5.Columns[8].ReadOnly:=true;
  dbgrdh5.Columns[9].ReadOnly:=true;
  dbgrdh5.Columns[10].ReadOnly:=true;
  dbgrdh5.Columns[12].ReadOnly:=true;
  qry_article.Active:=true;
end;

procedure TFDStatusMaterialChange.S3Click(Sender: TObject);
begin
 Button1.Enabled:=true;
if qry5.CachedUpdates then
  begin
    qry5.Active:=false;
    qry5.CachedUpdates:=false;
    qry5.RequestLive:=false;
    s1.Enabled:=true;
    S2.Enabled:=false;
    S3.enabled:=false;
    dbgrdh5.Columns[7].ReadOnly:=true;
    dbgrdh5.Columns[8].ReadOnly:=true;
    dbgrdh5.Columns[9].ReadOnly:=true;
    dbgrdh5.Columns[10].ReadOnly:=true;
    dbgrdh5.Columns[12].ReadOnly:=true;
    qry5.Active:=true;
  end;
end;



procedure TFDStatusMaterialChange.qry5CalcFields(DataSet: TDataSet);
begin
  IF (qry5.FieldByName('ChargeQty').value>0) and (qry5.FieldByName('Price').value>0) THEN
     qry5.FieldByName('Amount_').value:=trunc(qry5.FieldByName('ChargeQty').value*qry5.FieldByName('Price').value*10000+0.5)/10000;

end;

procedure TFDStatusMaterialChange.dbgrdh5Columns8NotInList(Sender: TObject;
  NewText: String; var RecheckInList: Boolean);
begin
       showmessage('Pls select Responsibility from list ,can not alter by manually.');
       abort;
end;

procedure TFDStatusMaterialChange.Edit2Exit(Sender: TObject);
begin
IF (length(Edit2.Text)=0) and (Check_purdate.Checked=false) THEN
   BEGIN
     showmessage('Season can not be empty.');
     Edit2.SetFocus;
   END;


end;

procedure TFDStatusMaterialChange.BBTT2Click(Sender: TObject);
begin
    FDStatusMaterialChange_FD:=TFDStatusMaterialChange_FD.create(self);
    FDStatusMaterialChange_FD.show;
end;

procedure TFDStatusMaterialChange.Button3Click(Sender: TObject);
begin
 if FDUnfinished<>nil then
    begin
      FDUnfinished.show;
      FDUnfinished.windowstate:=wsmaximized;
    end
  else
    begin
      FDUnfinished:=TFDUnfinished.Create(self);
      FDUnfinished.Show;
    end;
end;






procedure TFDStatusMaterialChange.Edit2Change(Sender: TObject);
begin
 with TempQry do
  begin
    Active:=false;
    Sql.Clear;
    Sql.add('select kfjd  from ypzl');
    Sql.add('left join kfxxzl on kfxxzl.xiexing=ypzl.xiexing and kfxxzl.shehao=ypzl.shehao');
    Sql.add('where kfxxzl.jijie='''+edit2.text+'''');
    if cbb2.text<>''  then
       Sql.add('and kfxxzl.devtype='''+cbb2.text+'''');
    Sql.add('group by kfjd');
    Sql.add('order by kfjd');    
    active:=true;
    edit5.Items.Clear;
    edit5.Items.Add('');
    while not eof do
    begin
      edit5.Items.Add(FieldByName('kfjd').AsString);
      Next;
    end;
    sql.Clear;
  end;
end;

procedure TFDStatusMaterialChange.cbb2Change(Sender: TObject);
begin
 with TempQry do
  begin
    Active:=false;
    Sql.Clear;
    Sql.add('select kfjd  from ypzl');
    Sql.add('left join kfxxzl on kfxxzl.xiexing=ypzl.xiexing and kfxxzl.shehao=ypzl.shehao');
    Sql.add('where kfxxzl.jijie='''+edit2.text+'''');
    if cbb2.text<>''  then
       Sql.add('and kfxxzl.devtype='''+cbb2.text+'''');
    Sql.add('group by kfjd');
    active:=true;
    edit5.Items.Clear;
    edit5.Items.Add('');
    while not eof do
    begin
      edit5.Items.Add(FieldByName('kfjd').AsString);
      Next;
    end;
    sql.Clear;
  end;
end;
procedure TFDStatusMaterialChange.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;







procedure TFDStatusMaterialChange.qry5ResponsibilityValidate(
  Sender: TField);
begin
         if  (dbgrdh5.SelectedField.value <>'Customer Request')
         and (dbgrdh5.SelectedField.value <>'DEV Mistake')
         and (dbgrdh5.SelectedField.value <>'BOM Mistake')
         and (dbgrdh5.SelectedField.value <>'MTRL Info Update')
         and (dbgrdh5.SelectedField.value <>'Trail Suggestion')
         and (dbgrdh5.SelectedField.value <>'Processing Change')
         and (dbgrdh5.SelectedField.value <>'Gender alignment')
         and (dbgrdh5.SelectedField.value <>'Back Up Plan')
         and (dbgrdh5.SelectedField.value <>'Substitute Material')
         and (dbgrdh5.SelectedField.value <>'')
         then
         begin
            raise Exception.Create('not correct reason');
         end;

end;

procedure TFDStatusMaterialChange.Excel1Click(Sender: TObject);
var   a:string;
      eclApp,WorkBook:olevariant;
      i,j:integer;
 begin
  if  qry5.active  then
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
        for   i:=0   to   qry5.fieldcount-1   do
          begin
              eclApp.Cells(1,i+1):=qry5.fields[i].FieldName;
          end;

        qry5.First;
        j:=2;
        while   not   qry5.Eof   do
          begin
            for   i:=0   to  qry5.fieldcount-1  do
            begin
              eclApp.Cells(j,i+1):=qry5.Fields[i].Value;
            end;
          qry5.Next;
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

end.


