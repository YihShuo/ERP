unit UseStockSample1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls, Menus,dateutils,
  comobj,GridsEh, DBGridEh,ehlibbde, PrnDbgeh,DBGridEhImpExp, ShellAPI;

type
  TUseStockSample = class(TForm)
    DS1: TDataSource;
    Query1: TQuery;
    Panel1: TPanel;
    UpSql1: TUpdateSQL;
    PopupMenu1: TPopupMenu;
    S1: TMenuItem;
    S2: TMenuItem;
    S3: TMenuItem;
    Label1: TLabel;
    Label3: TLabel;
    Edit3: TEdit;
    EDIT1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    Label5: TLabel;
    Edit5: TEdit;
    Label7: TLabel;
    Edit4: TEdit;
    CheckBox1: TCheckBox;
    Button1: TButton;
    Button3: TButton;
    DBGridEh1: TDBGridEh;
    PrintDBGridEh1: TPrintDBGridEh;
    Button2: TButton;
    lbl1: TLabel;
    lbl2: TLabel;
    strngfldQuery1CLBH: TStringField;
    strngfldQuery1CLMC: TStringField;
    strngfldQuery1dwbh: TStringField;
    fltfldQuery1clsl: TFloatField;
    crncyfldQuery1qty: TCurrencyField;
    strngfldQuery1ZSYWJC: TStringField;
    strngfldQuery1CLZMLB: TStringField;
    strngfldQuery1jijie: TStringField;
    strngfldQuery1fd: TStringField;
    strngfldQuery1kfjd: TStringField;
    strngfldQuery1xieming: TStringField;
    intgrfldQuery1recs: TIntegerField;
    dtmfldQuery1cgdate: TDateTimeField;
    dtmfldQuery1yqdate: TDateTimeField;
    dtmfldQuery1ETA: TDateTimeField;
    strngfldQuery1cgno: TStringField;
    crncyfldQuery1cgqty: TCurrencyField;
    strngfldQuery1clbhys: TStringField;
    lbl3: TLabel;
    strngfldQuery1ypdh: TStringField;
    chk1: TCheckBox;
    edt1: TEdit;
    edt2: TEdit;
    edt3: TEdit;
    Label4: TLabel;
    cbb2: TComboBox;
    Label6: TLabel;
    cbb1: TComboBox;
    chk2: TCheckBox;
    Query1SamplePurchaser: TStringField;
    Query1SamplePurchaser_Name: TStringField;
    chk3: TCheckBox;
    SaveDialog1: TSaveDialog;
    CKBSel: TCheckBox;
    Query1USERID: TStringField;
    Query1USERDATE: TDateTimeField;
    qrUsestock: TQuery;
    Query1devcode: TStringField;
    Panel2: TPanel;
    Memo1: TMemo;
    procedure EDIT1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure Edit4KeyPress(Sender: TObject; var Key: Char);
    procedure Edit5KeyPress(Sender: TObject; var Key: Char);
    procedure Button1Click(Sender: TObject);
    procedure Edit6KeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure S1Click(Sender: TObject);
    procedure S2Click(Sender: TObject);
    procedure S3Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure DBGridEh1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure DBGridEh1EditButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  UseStockSample: TUseStockSample;
  sdate,edate:Tdate;

implementation

uses main1, UseStockSample_CL1, FunUnit;

{$R *.dfm}

procedure TUseStockSample.EDIT1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
  edit2.SetFocus;

end;

procedure TUseStockSample.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
  edit4.SetFocus;
end;

procedure TUseStockSample.Edit3KeyPress(Sender: TObject; var Key: Char);
begin {
if key=#13 then
  edit4.SetFocus;}
end;

procedure TUseStockSample.Edit4KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
//  edit6.SetFocus;
end;

procedure TUseStockSample.Edit5KeyPress(Sender: TObject; var Key: Char);
begin
button1click(nil);
end;

procedure TUseStockSample.Button1Click(Sender: TObject);
var y,m:word;
begin
 if ((edt1.Text='') or (edt2.Text='')) then
 begin
   showmessage('Please input season and stage');
   abort;
 end;
 if not chk1.Checked then    //顯示全部資料
 begin
    with query1 do
      begin
          active:=false;
          sql.Clear;
          sql.add('select ypzl.ypdh,kfxxzl.devcode, YPZLS.CLBH,CLZL.YWPM as CLMC, clzl.dwbh,sum(isnull(ypzls.clsl,0)*ypzl.quantity) as clsl,cg.cgqty,cgkcuse.clbhys,cgkcuse.qty, ');
          sql.Add(' ZSZL.ZSYWJC,CLZL.CLZMLB,kfxxzl.jijie,kfxxzl.fd,ypzl.kfjd,kfxxzl.xieming,cg.recs,cg.cgdate,cg.yqdate,cg.ETA,cg.cgno,ZSZL_VN.SamplePurchaser,BUSERS.USERNAME as SamplePurchaser_Name');
          sql.Add(' ,cgkcuse.USERID,cgkcuse.USERDATE');
          sql.Add(' FROM YPZLS');
          sql.Add(' left join ypzl on ypzl.ypdh=ypzls.ypdh');
          sql.Add(' LEFT JOIN BWZL  ON YPZLS.BWBH = BWZL.bwdh');
          sql.Add(' LEFT JOIN CLZL   ON YPZLS.CLBH = CLZL.cldh');
          sql.Add(' LEFT JOIN LBZLS ON SUBSTRING(YPZLS.CLBH,1,1) = LBZLS.lbdh AND LBZLS.LB=''05''');
          sql.Add(' LEFT JOIN ZSZL on ZSZL.ZSDH=YPZLS.CSBH');
          sql.Add(' LEFT JOIN (SELECT ZSDH,Max(SamplePurchaser) as SamplePurchaser FROM ZSZL_DEV where GSBH='''+main.Edit2.Text+''' GROUP BY ZSDH) ZSZL_VN on ZSZL_VN.ZSDH=YPZLS.CSBH');
          sql.add(' left join BUSERS  on BUSERS.USERID=ZSZL_VN.SamplePurchaser  ');
          sql.Add(' left join zszlfilter on zszlfilter.zsdh=ypzls.csbh');
          sql.Add(' left join clzlfilter on clzlfilter.cldh=ypzls.clbh');
//          sql.Add(' left join bwzlfilter on bwzlfilter.bwdh=ypzls.bwbh');
          sql.Add(' left join cgkcuse on cgkcuse.zlbh=ypzl.ypdh and cgkcuse.clbh=ypzls.clbh');
          sql.Add(' left join kfxxzl on kfxxzl.xiexing=YPZL.xiexing and kfxxzl.shehao=YPZL.shehao');
          sql.Add(' left join (select cs.clbh,cs.Stage,cs.zlbh, sum(isnull(cs.qty,0)) as cgqty,count(cs.clbh) as recs, min(cgzl.cgdate) as cgdate, min(cgzls.CFMdate) as yqdate,min(cgzls.ETA) as ETA, min(cgzls.cgno) as cgno from cgzlss cs');
          sql.Add('             left join cgzl on cgzl.cgno=cs.cgno');
          sql.Add('             left join cgzls on cgzls.cgno=cs.cgno and cgzls.clbh=cs.clbh');
          sql.Add('             where cgzl.CGLX=''6'' '); // 6=sample order
          if length(edt2.Text) > 0 then      //Stage
             sql.Add('                and cs.Stage='''+edt2.Text+'''');
          if length(edit3.Text) > 0 then
             sql.Add('                and cs.zlbh='''+edit3.Text+'''');
          sql.Add('             group by cs.clbh,cs.Stage,cs.zlbh) cg on cg.clbh=ypzls.clbh and cg.Stage=ypzl.kfjd and cg.zlbh=kfxxzl.devcode ');
          sql.Add(' where clzl.clzmlb=''N'' ');
          if chk2.Checked then    //只顯示採購材料
             begin
               sql.Add(' and zszlfilter.zsdh is null');
               sql.Add(' and clzlfilter.cldh is null');
             end;
          if chk3.Checked then    //只顯示有使用庫存之材料
             begin
               sql.Add(' and cgkcuse.qty is not null');
             end;
          if length(cbb1.Text) > 0 then
             sql.add(' and isnull(kfxxzl.category,'''') like '+'''%'+cbb1.Text+'%'+'''');
          if length(cbb2.Text) > 0 then
             sql.add(' and isnull(kfxxzl.DevType,'''') like '+'''%'+cbb2.Text+'%'+'''');
          if length(edt2.Text) > 0 then
            sql.Add(' and ypzl.kfjd = '''+edt2.Text+'''');
          if length(edit2.Text) > 0 then
             sql.Add(' and CLZL.YWPM like ''%'+edit2.Text+'%''');
          if length(EDIT1.Text) > 0 then
             sql.Add(' and YPZLS.CLBH like ''%'+EDIT1.Text+'%''');
          if length(edt3.Text) > 0 then
            sql.Add(' and kfxxzl.fd = '''+edt3.Text+'''');
          if length(edit3.Text) > 0 then
             sql.Add(' and kfxxzl.devcode='''+edit3.Text+'''');
          if length(edt1.Text) > 0 then
            sql.Add(' and kfxxzl.jijie = '''+edt1.Text+'''');
          if length(edit4.Text) > 0 then
             sql.Add(' and ZSZL.ZSYWJC like ''%'+edit4.Text+'%''');
          sql.add(' group by ypzl.ypdh,kfxxzl.devcode, YPZLS.CLBH,CLZL.YWPM , clzl.dwbh,cg.cgqty,cgkcuse.clbhys,cgkcuse.qty, ');
          sql.Add(' ZSZL.ZSYWJC,CLZL.CLZMLB,kfxxzl.jijie,KFXXZL.fd,ypzl.kfjd,kfxxzl.xieming,kfxxzl.devtype,kfxxzl.category,cg.recs,cg.cgdate,cg.yqdate,cg.ETA,cg.cgno,ZSZL_VN.SamplePurchaser,BUSERS.USERNAME');
          sql.Add(' ,cgkcuse.USERID,cgkcuse.USERDATE');
          sql.Add(' UNION ALL');
          sql.add('select ypzl.ypdh,kfxxzl.devcode, CLZHZL.CLDH1 AS CLBH,CLZL.YWPM as CLMC, clzl.dwbh,sum(isnull(ypzls.clsl,0)*ypzl.quantity) as clsl,cg.cgqty,cgkcuse.clbhys,cgkcuse.qty, ');
          sql.Add(' ZSZL.ZSYWJC,CLZL.CLZMLB,kfxxzl.jijie,kfxxzl.fd,ypzl.kfjd,kfxxzl.xieming,cg.recs,cg.cgdate,cg.yqdate,cg.ETA,cg.cgno,ZSZL_VN.SamplePurchaser,BUSERS.USERNAME as SamplePurchaser_Name');
          sql.Add(' ,cgkcuse.USERID,cgkcuse.USERDATE');
          sql.Add(' FROM YPZLS');
          sql.Add(' INNER  JOIN CLZHZL   ON YPZLS.CLBH = CLZHZL.cldh');
          sql.Add(' left join ypzl on ypzl.ypdh=ypzls.ypdh');
          sql.Add(' LEFT JOIN BWZL  ON YPZLS.BWBH = BWZL.bwdh');
          sql.Add(' LEFT JOIN CLZL   ON CLZHZL.CLDH1 = CLZL.cldh');
          sql.Add(' LEFT JOIN LBZLS ON SUBSTRING(CLZHZL.CLDH1,1,1) = LBZLS.lbdh AND LBZLS.LB=''05''');
          sql.Add(' LEFT JOIN ZSZL on ZSZL.ZSDH=CLZHZL.ZSDH');
          sql.Add(' LEFT JOIN (SELECT ZSDH,Max(SamplePurchaser) as SamplePurchaser FROM ZSZL_DEV where GSBH='''+main.Edit2.Text+''' GROUP BY ZSDH) ZSZL_VN on ZSZL_VN.ZSDH=CLZHZL.ZSDH');
          sql.add(' left join BUSERS  on BUSERS.USERID=ZSZL_VN.SamplePurchaser  ');
          sql.Add(' left join cgkcuse on cgkcuse.zlbh=ypzl.ypdh and cgkcuse.clbh=CLZHZL.CLDH1');
          sql.Add(' left join kfxxzl on kfxxzl.xiexing=YPZL.xiexing and kfxxzl.shehao=YPZL.shehao');
          sql.Add(' left join zszlfilter on zszlfilter.zsdh=ypzls.csbh');
          sql.Add(' left join clzlfilter on clzlfilter.cldh=CLZHZL.CLDH1');
//          sql.Add(' left join bwzlfilter on bwzlfilter.bwdh=ypzls.bwbh');
          sql.Add(' left join (select cs.clbh,cs.Stage,cs.zlbh, sum(isnull(cs.qty,0)) as cgqty,count(cs.clbh) as recs, min(cgzl.cgdate) as cgdate, min(cgzls.CFMdate) as yqdate,min(cgzls.ETA) as ETA, min(cgzls.cgno) as cgno from cgzlss cs');
          sql.Add('             left join cgzl on cgzl.cgno=cs.cgno');
          sql.Add('             left join cgzls on cgzls.cgno=cs.cgno and cgzls.clbh=cs.clbh');
          sql.Add('             where cgzl.CGLX=''6'' '); // 6=sample order
                       if length(edt2.Text) > 0 then    //stage
                              sql.Add(' and cs.Stage = '''+edt2.Text+'''');
                       if length(edit3.Text) > 0 then
                              sql.Add(' and cs.zlbh='''+edit3.Text+'''');
          sql.Add('             group by cs.clbh,cs.Stage,cs.zlbh) cg on cg.clbh=CLZHZL.CLDH1 and cg.Stage=ypzl.kfjd and cg.zlbh=kfxxzl.devcode ');
          sql.Add(' where CLZHZL.syl<>0 and clzl.clzmlb=''N'' ');
          if length(cbb1.Text) > 0 then
             sql.add(' and isnull(kfxxzl.category,'''') like '+'''%'+cbb1.Text+'%'+'''');
          if length(cbb2.Text) > 0 then
             sql.add(' and isnull(kfxxzl.DevType,'''') like '+'''%'+cbb2.Text+'%'+'''');
          if length(edt2.Text) > 0 then
            sql.Add(' and ypzl.kfjd = '''+edt2.Text+'''');
          if length(edit2.Text) > 0 then
             sql.Add(' and CLZL.YWPM like ''%'+edit2.Text+'%''');
          if length(EDIT1.Text) > 0 then
             sql.Add(' and CLZHZL.CLDH1 like ''%'+EDIT1.Text+'%''');
          if length(edt3.Text) > 0 then
            sql.Add(' and kfxxzl.fd = '''+edt3.Text+'''');
          if length(edit3.Text) > 0 then
             sql.Add(' and kfxxzl.devcode='''+edit3.Text+'''');
          if length(edt1.Text) > 0 then
            sql.Add(' and kfxxzl.jijie = '''+edt1.Text+'''');
          if length(edit4.Text) > 0 then
             sql.Add(' and ZSZL.ZSYWJC like ''%'+edit4.Text+'%''');
          if chk2.Checked then    //只顯示採購材料
             begin
               sql.Add(' and zszlfilter.zsdh is null');
               sql.Add(' and clzlfilter.cldh is null');
             end;
          if chk3.Checked then    //只顯示有使用庫存之材料
             begin
               sql.Add(' and cgkcuse.qty is not null');
             end;

          sql.add(' group by ypzl.ypdh,kfxxzl.devcode, CLZHZL.CLDH1,CLZL.YWPM , clzl.dwbh,cg.cgqty,cgkcuse.clbhys,cgkcuse.qty, ');
          sql.Add(' ZSZL.ZSYWJC,CLZL.CLZMLB,kfxxzl.jijie,kfxxzl.fd,ypzl.kfjd,kfxxzl.xieming,kfxxzl.devtype,kfxxzl.category,cg.recs,cg.cgdate,cg.yqdate,cg.ETA,cg.cgno,ZSZL_VN.SamplePurchaser,BUSERS.USERNAME');
          sql.Add(' ,cgkcuse.USERID,cgkcuse.USERDATE');
          //
          sql.Add('UNION ALL') ;   //第二加工材料
          sql.Add('select temp.ypdh,temp.devcode,CLZHZL.CLDH1 AS CLBH,temp.CLMC,temp.dwbh,temp.clsl,temp.cgqty,temp.clbhys,temp.qty,temp.ZSYWJC,temp.CLZMLB,temp.jijie,temp.fd,temp.kfjd,temp.xieming,');
          sql.Add('       temp.recs,temp.cgdate,temp.yqdate,temp.ETA,temp.cgno,temp.SamplePurchaser,temp.SamplePurchaser_Name,temp.USERID,temp.USERDATE');
          sql.Add('From (select ypzl.ypdh,kfxxzl.devcode, CLZHZL.CLDH1 AS CLBH,CLZL.YWPM as CLMC, clzl.dwbh,sum(isnull(ypzls.clsl,0)*ypzl.quantity) as clsl,cg.cgqty,cgkcuse.clbhys,cgkcuse.qty,ZSZL.ZSYWJC,CLZL.CLZMLB,');
          sql.Add('             kfxxzl.jijie,kfxxzl.fd,ypzl.kfjd,kfxxzl.xieming,cg.recs,cg.cgdate,cg.yqdate,cg.ETA,cg.cgno,ZSZL_VN.SamplePurchaser,BUSERS.USERNAME as SamplePurchaser_Name,cgkcuse.USERID,cgkcuse.USERDATE') ;
          sql.Add('      FROM YPZLS');
          sql.Add('      INNER  JOIN CLZHZL   ON YPZLS.CLBH = CLZHZL.cldh');
          sql.Add('      left join ypzl on ypzl.ypdh=ypzls.ypdh');
          sql.Add('      LEFT JOIN BWZL  ON YPZLS.BWBH = BWZL.bwdh');
          sql.Add('      LEFT JOIN CLZL   ON CLZHZL.CLDH1 = CLZL.cldh');
          sql.Add('      LEFT JOIN LBZLS ON SUBSTRING(CLZHZL.CLDH1,1,1) = LBZLS.lbdh AND LBZLS.LB=''05''');
          sql.Add('      LEFT JOIN ZSZL on ZSZL.ZSDH=CLZHZL.ZSDH');
          sql.Add('      LEFT JOIN (SELECT ZSDH,Max(SamplePurchaser) as SamplePurchaser FROM ZSZL_DEV where GSBH='''+main.Edit2.Text+''' GROUP BY ZSDH) ZSZL_VN on ZSZL_VN.ZSDH=CLZHZL.ZSDH');
          sql.add('      left join BUSERS  on BUSERS.USERID=ZSZL_VN.SamplePurchaser  ');
          sql.Add('      left join cgkcuse on cgkcuse.zlbh=ypzl.ypdh and cgkcuse.clbh=CLZHZL.CLDH1');
          sql.Add('      left join kfxxzl on kfxxzl.xiexing=YPZL.xiexing and kfxxzl.shehao=YPZL.shehao');
          sql.Add('      left join zszlfilter on zszlfilter.zsdh=ypzls.csbh');
          sql.Add('      left join clzlfilter on clzlfilter.cldh=CLZHZL.CLDH1');
          sql.Add('      left join (select cs.clbh,cs.Stage,cs.zlbh, sum(isnull(cs.qty,0)) as cgqty,count(cs.clbh) as recs, min(cgzl.cgdate) as cgdate, min(cgzls.CFMdate) as yqdate,min(cgzls.ETA) as ETA, min(cgzls.cgno) as cgno from cgzlss cs');
          sql.Add('                 left join cgzl on cgzl.cgno=cs.cgno');
          sql.Add('                 left join cgzls on cgzls.cgno=cs.cgno and cgzls.clbh=cs.clbh');
          sql.Add('                 where cgzl.CGLX=''6'' '); // 6=sample order
                       if length(edt2.Text) > 0 then    //stage
                              sql.Add(' and cs.Stage = '''+edt2.Text+'''');
                       if length(edit3.Text) > 0 then
                              sql.Add(' and cs.zlbh='''+edit3.Text+'''');
          sql.Add('             group by cs.clbh,cs.Stage,cs.zlbh) cg on cg.clbh=CLZHZL.CLDH1 and cg.Stage=ypzl.kfjd and cg.zlbh=kfxxzl.devcode ');
          sql.Add('     where CLZHZL.syl<>0 and clzl.clzmlb=''Y'' ');
          if length(cbb1.Text) > 0 then
             sql.add('  and isnull(kfxxzl.category,'''') like '+'''%'+cbb1.Text+'%'+'''');
          if length(cbb2.Text) > 0 then
             sql.add('  and isnull(kfxxzl.DevType,'''') like '+'''%'+cbb2.Text+'%'+'''');
          if length(edt2.Text) > 0 then
            sql.Add('   and ypzl.kfjd = '''+edt2.Text+'''');
          if length(edit2.Text) > 0 then
             sql.Add('  and CLZL.YWPM like ''%'+edit2.Text+'%''');
          if length(edt3.Text) > 0 then
            sql.Add('   and kfxxzl.fd = '''+edt3.Text+'''');
          if length(edit3.Text) > 0 then
             sql.Add('  and kfxxzl.devcode='''+edit3.Text+'''');
          if length(edt1.Text) > 0 then
            sql.Add('   and kfxxzl.jijie = '''+edt1.Text+'''');
          if length(edit4.Text) > 0 then
             sql.Add('  and ZSZL.ZSYWJC like ''%'+edit4.Text+'%''');
          if chk2.Checked then    //只顯示採購材料
             begin
               sql.Add(' and zszlfilter.zsdh is null');
               sql.Add(' and clzlfilter.cldh is null');
             end;
          if chk3.Checked then    //只顯示有使用庫存之材料
             begin
               sql.Add(' and cgkcuse.qty is not null');
             end;

          sql.add(' group by ypzl.ypdh,kfxxzl.devcode, CLZHZL.CLDH1,CLZL.YWPM , clzl.dwbh,cg.cgqty,cgkcuse.clbhys,cgkcuse.qty, ');
          sql.Add(' ZSZL.ZSYWJC,CLZL.CLZMLB,kfxxzl.jijie,kfxxzl.fd,ypzl.kfjd,kfxxzl.xieming,kfxxzl.devtype,kfxxzl.category,cg.recs,cg.cgdate,cg.yqdate,cg.ETA,cg.cgno,ZSZL_VN.SamplePurchaser,BUSERS.USERNAME');
          sql.Add(' ,cgkcuse.USERID,cgkcuse.USERDATE)temp inner join clzhzl ON  temp.CLBH = CLZHZL.cldh ');
          sql.Add('left JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh');
          sql.Add('where CLZHZL.SYL<>0   and clzl.clzmlb=''N'' ') ;
          if length(EDIT1.Text) > 0 then
             sql.Add('  and CLZHZL.CLDH1 like ''%'+EDIT1.Text+'%''');
          //
          sql.Add(' UNION ALL');  //CANCEL CLBH 顯示有使用庫存但已不在樣品單中的材料

          sql.add('select YPZL.YPDH,kfxxzl.devcode,CGKCUSE.CLBH,CLZL.YWPM as CLMC,CLZL.DWBH,cgkcuse.qty*0 as clsl,cg.cgqty,cgkcuse.clbhys,cgkcuse.qty, ');
          sql.Add('  ''CANCEL'' as ZSYWJC,CLZL.CLZMLB,kfxxzl.jijie,kfxxzl.fd,ypzl.kfjd,kfxxzl.xieming,cg.recs,cg.cgdate,cg.yqdate,cg.ETA,cg.cgno,cgkcuse.USERID as SamplePurchaser,BUSERS.USERNAME as SamplePurchaser_Name');
          sql.Add(' ,cgkcuse.USERID,cgkcuse.USERDATE');
          sql.Add(' from cgkcuse');
          sql.Add(' left join ypzl on ypzl.ypdh=cgkcuse.ZLBH');
          sql.Add(' left join CLZL ON cgkcuse.CLBH=CLZL.CLDH');
          sql.add(' left join BUSERS  on BUSERS.USERID=cgkcuse.USERID  ');
          sql.Add(' left join kfxxzl on kfxxzl.xiexing=YPZL.xiexing and kfxxzl.shehao=YPZL.shehao');
          sql.Add(' left join (select cs.clbh,cs.stage,cs.zlbh, sum(isnull(cs.qty,0)) as cgqty,count(cs.clbh) as recs, min(cgzl.cgdate) as cgdate, min(cgzls.CFMdate) as yqdate,min(cgzls.ETA) as ETA, min(cgzls.cgno) as cgno from cgzlss cs');
          sql.Add('             left join cgzl on cgzl.cgno=cs.cgno');
          sql.Add('             left join cgzls on cgzls.cgno=cs.cgno and cgzls.clbh=cs.clbh');
          sql.Add('             where cgzl.CGLX=''6'' '); // 6=sample order
          if length(edt2.Text) > 0 then    //Stage
             sql.Add('                 and cs.stage = '''+edt2.Text+'''');
          if length(edit3.Text) > 0 then   //Article
             sql.Add('                 and cs.zlbh='''+edit3.Text+'''');
          sql.Add('             group by cs.clbh,cs.stage,cs.zlbh');
          sql.Add('           ) cg on cg.clbh=cgkcuse.CLBH and cg.stage=ypzl.kfjd and cg.zlbh=kfxxzl.devcode ');
          sql.Add(' where cgkcuse.gsbh=''R&D'' and clzl.clzmlb=''N'' ');
          if length(cbb1.Text) > 0 then
             sql.add(' and isnull(kfxxzl.category,'''') like '+'''%'+cbb1.Text+'%'+'''');
          if length(cbb2.Text) > 0 then
             sql.add(' and isnull(kfxxzl.DevType,'''') like '+'''%'+cbb2.Text+'%'+'''');
          if length(edt2.Text) > 0 then
             sql.Add(' and ypzl.kfjd = '''+edt2.Text+'''');
          if length(edit2.Text) > 0 then
             sql.Add(' and CLZL.YWPM like ''%'+edit2.Text+'%''');
          if length(EDIT1.Text) > 0 then
             sql.Add(' and CGKCUSE.CLBH like ''%'+EDIT1.Text+'%''');
          if length(edt3.Text) > 0 then
             sql.Add(' and kfxxzl.fd = '''+edt3.Text+'''');
          if length(edit3.Text) > 0 then
             sql.Add(' and kfxxzl.devcode='''+edit3.Text+'''');
          if length(edt1.Text) > 0 then
             sql.Add(' and kfxxzl.jijie = '''+edt1.Text+'''');
          sql.Add(' and not exists');
          sql.add('      ( select * from ');
          sql.add('           (select ypzls.clbh,YPZL.YPDH FROM YPZLS  ');
          sql.Add('            left join ypzl on ypzl.ypdh=ypzls.ypdh');
          sql.Add('            left join kfxxzl on kfxxzl.xiexing=YPZL.xiexing and kfxxzl.shehao=YPZL.shehao');
          sql.Add('            where clzl.clzmlb=''N'' ');
          if length(edt2.Text) > 0 then
             sql.Add('             and ypzl.kfjd = '''+edt2.Text+'''');
          if length(EDIT1.Text) > 0 then
             sql.Add('             and YPZLS.CLBH like ''%'+EDIT1.Text+'%''');
          if length(edt3.Text) > 0 then
             sql.Add('             and kfxxzl.fd = '''+edt3.Text+'''');
          if length(edit3.Text) > 0 then
             sql.Add('             and kfxxzl.devcodee='''+edit3.Text+'''');
          if length(edt1.Text) > 0 then
             sql.Add('             and kfxxzl.jijie = '''+edt1.Text+'''');
          sql.Add('            UNION ALL');
          sql.add('            select CLZHZL.cldh1 AS clbh,YPZL.YPDH FROM YPZLS');
          sql.Add('            INNER  JOIN CLZHZL   ON YPZLS.CLBH = CLZHZL.cldh');
          sql.Add('            left join ypzl on ypzl.ypdh=ypzls.ypdh');
          sql.Add('            left join kfxxzl on kfxxzl.xiexing=YPZL.xiexing and kfxxzl.shehao=YPZL.shehao');
          sql.Add('            where clzl.clzmlb=''N'' ');
          if length(edt2.Text) > 0 then
             sql.Add('              and ypzl.kfjd = '''+edt2.Text+'''');
          if length(EDIT1.Text) > 0 then
             sql.Add('              and CLZHZL.CLDH1 like ''%'+EDIT1.Text+'%''');
          if length(edt3.Text) > 0 then
             sql.Add('              and kfxxzl.fd = '''+edt3.Text+'''');
          if length(edit3.Text) > 0 then
             sql.Add('              and kfxxzl.devcode='''+edit3.Text+'''');
          if length(edt1.Text) > 0 then
             sql.Add('              and kfxxzl.jijie = '''+edt1.Text+'''');
          sql.Add('             GROUP BY CLZHZL.cldh1,YPZL.YPDH   ');
          sql.Add('          )yp where yp.clbh=CGKCUSE.CLBH  AND YP.YPDH=cgkcuse.ZLBH ');
          sql.Add('     ) ');
          active:=true;
      end ;
  end;


 if  chk1.Checked then   //當選取[not in BOM]選項時
   with query1 do
     begin
      active:=false;
      sql.Clear;
      sql.add('select YPZL.YPDH,kfxxzl.devcode,CGKCUSE.CLBH,CLZL.YWPM as CLMC,CLZL.DWBH,cgkcuse.qty*0 as clsl,cg.cgqty,cgkcuse.clbhys,cgkcuse.qty, ');
      sql.Add('  ''CANCEL'' as ZSYWJC,CLZL.CLZMLB,kfxxzl.jijie,kfxxzl.fd,ypzl.kfjd,kfxxzl.xieming,cg.recs,cg.cgdate,cg.yqdate,cg.ETA,cg.cgno');
      sql.Add(' from cgkcuse');
      sql.Add(' left join ypzl on ypzl.ypdh=cgkcuse.ZLBH');
      sql.Add(' left join CLZL ON cgkcuse.CLBH=CLZL.CLDH');
      sql.Add(' left join kfxxzl on kfxxzl.xiexing=YPZL.xiexing and kfxxzl.shehao=YPZL.shehao');
      sql.Add(' left join (select cs.clbh,cs.stage,cs.zlbh, sum(isnull(cs.qty,0)) as cgqty,count(cs.clbh) as recs, min(cgzl.cgdate) as cgdate, min(cgzls.CFMdate) as yqdate,min(cgzls.ETA) as ETA, min(cgzls.cgno) as cgno from cgzlss cs');
      sql.Add('             left join cgzl on cgzl.cgno=cs.cgno');
      sql.Add('             left join cgzls on cgzls.cgno=cs.cgno and cgzls.clbh=cs.clbh');
      sql.Add('             where cgzl.CGLX=''6'' '); // 6=sample order
      if length(edt2.Text) > 0 then    //Stage
         sql.Add('                 and cs.stage = '''+edt2.Text+'''');
      if length(edit3.Text) > 0 then   //Article
         sql.Add('                 and cs.zlbh='''+edit3.Text+'''');
      sql.Add('             group by cs.clbh,cs.stage,cs.zlbh');
      sql.Add('           ) cg on cg.clbh=cgkcuse.CLBH and cg.stage=ypzl.kfjd and cg.zlbh=kfxxzl.devcode ');

      sql.Add(' where cgkcuse.gsbh=''R&D'' and clzl.clzmlb=''N'' ');
      if length(cbb1.Text) > 0 then
         sql.add(' and isnull(kfxxzl.category,'''') like '+'''%'+cbb1.Text+'%'+'''');
      if length(cbb2.Text) > 0 then
         sql.add(' and isnull(kfxxzl.DevType,'''') like '+'''%'+cbb2.Text+'%'+'''');
      if length(edt2.Text) > 0 then
         sql.Add(' and ypzl.kfjd = '''+edt2.Text+'''');
      if length(edit2.Text) > 0 then
         sql.Add(' and CLZL.YWPM like ''%'+edit2.Text+'%''');
      if length(EDIT1.Text) > 0 then
         sql.Add(' and CGKCUSE.CLBH like ''%'+EDIT1.Text+'''');
      if length(edt3.Text) > 0 then
         sql.Add(' and kfxxzl.fd = '''+edt3.Text+'''');
      if length(edit3.Text) > 0 then
         sql.Add(' and kfxxzl.devcode='''+edit3.Text+'''');
      if length(edt1.Text) > 0 then
         sql.Add(' and kfxxzl.jijie = '''+edt1.Text+'''');

      sql.Add(' and not exists');
      sql.add('      ( select * from ');
      sql.add('           (select ypzls.clbh,YPZL.YPDH FROM YPZLS  ');
      sql.Add('            left join ypzl on ypzl.ypdh=ypzls.ypdh');
      sql.Add('            left join kfxxzl on kfxxzl.xiexing=YPZL.xiexing and kfxxzl.shehao=YPZL.shehao');
      sql.Add('            where clzl.clzmlb=''N'' ');
      if length(cbb1.Text) > 0 then
         sql.add('             and isnull(kfxxzl.category,'''') like '+'''%'+cbb1.Text+'%'+'''');
      if length(cbb2.Text) > 0 then
         sql.add('             and isnull(kfxxzl.DevType,'''') like '+'''%'+cbb2.Text+'%'+'''');
      if length(edt2.Text) > 0 then
         sql.Add('             and ypzl.kfjd = '''+edt2.Text+'''');
      if length(EDIT1.Text) > 0 then
         sql.Add('             and YPZLS.CLBH like ''%'+EDIT1.Text+'''');
      if length(edt3.Text) > 0 then
         sql.Add('             and kfxxzl.fd = '''+edt3.Text+'''');
      if length(edit3.Text) > 0 then
         sql.Add('             and kfxxzl.devcode='''+edit3.Text+'''');
      if length(edt1.Text) > 0 then
         sql.Add('             and kfxxzl.jijie = '''+edt1.Text+'''');

      sql.Add('            UNION ALL');
      sql.add('            select CLZHZL.cldh1 AS clbh,YPZL.YPDH FROM YPZLS');
      sql.Add('            INNER  JOIN CLZHZL   ON YPZLS.CLBH = CLZHZL.cldh');
      sql.Add('            left join ypzl on ypzl.ypdh=ypzls.ypdh');
      sql.Add('            left join xxzlkf on xxzlkf.xiexing=ypzl.xiexing and xxzlkf.shehao=ypzl.shehao and ver=0');
      sql.Add('            left join kfxxzl on kfxxzl.xiexing=xxzlkf.xiexing and kfxxzl.shehao=xxzlkf.shehao');
      sql.Add('            where clzl.clzmlb=''N'' ');
      if length(cbb1.Text) > 0 then
         sql.add('              and isnull(xxzlkf.category,'''') like '+'''%'+cbb1.Text+'%'+'''');
      if length(cbb2.Text) > 0 then
         sql.add('              and isnull(xxzlkf.DevType,'''') like '+'''%'+cbb2.Text+'%'+'''');
      if length(edt2.Text) > 0 then
         sql.Add('              and ypzl.kfjd = '''+edt2.Text+'''');
      if length(EDIT1.Text) > 0 then
         sql.Add('              and CLZHZL.CLDH1 like ''%'+EDIT1.Text+'''');
      if length(edt3.Text) > 0 then
         sql.Add('              and xxzlkf.fd = '''+edt3.Text+'''');
      if length(edit3.Text) > 0 then
         sql.Add('              and kfxxzl.devcode='''+edit3.Text+'''');
      if length(edt1.Text) > 0 then
         sql.Add('              and kfxxzl.jijie = '''+edt1.Text+'''');
      sql.Add('             GROUP BY CLZHZL.cldh1,YPZL.YPDH   ');
      sql.Add('          )yp where yp.clbh=CGKCUSE.CLBH  AND YP.YPDH=cgkcuse.ZLBH ');
      sql.Add('     ) ');
      active:=true;
    end;
  end;

procedure TUseStockSample.Edit6KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
//  edit6.SetFocus;
end;

procedure TUseStockSample.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if S2.enabled  then
  begin
    messagedlg('You have to save data first.',mtwarning,[mbyes],0);
    action:=canone;
  end
  else
    begin
      action:=Cafree;
    end;
end;

procedure TUseStockSample.S1Click(Sender: TObject);
begin
if query1.Active then
  begin
    query1.RequestLive:=true;
    query1.CachedUpdates:=true;
    DBGrideh1.Columns[9].ReadOnly:=false;
    DBGrideh1.Columns[10].ReadOnly:=false;
    DBGrideh1.Columns[11].ReadOnly:=false;
    S2.enabled:=true;
    S3.enabled:=true;
    DBGrideh1.Columns[9].ButtonStyle:=cbsellipsis;
  end;
end;

procedure TUseStockSample.S2Click(Sender: TObject);
begin
with query1 do
  begin
    first;
    while not eof do
      begin
        if query1.updatestatus=usmodified then
          begin
              if ((fieldbyname('qty').value=0) or (fieldbyname('qty').IsNull)) then
              begin

                  with qrUsestock do
                  begin
                     active:=false;
                     sql.Clear;
                     sql.Add('Delete CGKCUSE from CGKCUSE');
                     sql.Add('where ZLBH='''+Query1.fieldbyname('YPDH').AsString+'''') ;
                     sql.Add('and CLBH='''+Query1.fieldbyname('CLBH').AsString+'''');
                     sql.Add('and GSBH='''+main.Edit2.Text+''' ');
                     execsql;
                  end;
              end
              else
                begin
                   //
                   with qrUsestock do
                   begin
                      active:=false;
                      sql.Clear;
                      sql.Add('select * from CGKCUSE where ZLBH='''+Query1.fieldbyname('YPDH').AsString+'''');
                      sql.Add('and CLBH='''+Query1.fieldbyname('CLBH').AsString+'''');
                      sql.Add('and GSBH='''+main.Edit2.Text+''' ');
                      active:=true;
                      if qrUsestock.RecordCount=0 then
                        begin
                           qrUsestock.Active:=false;
                           sql.Clear;
                           sql.Add('Insert into CGKCUSE');
                           sql.Add('(GSBH,ZLBH,CLBH,Qty,CLBHYS,UserID,UserDate,YN) values');
                           sql.Add('('''+main.Edit2.Text+''''+','''+Query1.fieldbyname('YPDH').AsString+''','''+Query1.fieldbyname('CLBH').AsString+''''+',');
                           sql.Add(''''+Query1.fieldbyname('qty').AsString+''','''+Query1.fieldbyname('CLBHYS').AsString+''','''+main.Edit1.Text+''','''+formatdatetime('yyyy/mm/dd',date)+''',1)');
                           execsql;
                        end
                      else
                        begin
                          qrUsestock.Active:=false;
                          sql.Clear;
                          sql.Add('update CGKCUSE set Qty='+''''+Query1.fieldbyname('qty').AsString+'''');
                          sql.add(',CLBHYS='+''''+Query1.fieldbyname('CLBHYS').AsString+'''');
                          sql.add(',USERDATE='+''''+formatdatetime('yyyy/mm/dd',date)+'''');
                          sql.add(',USERID='''+main.Edit1.Text+'''');
                          sql.add('where ZLBH='''+Query1.fieldbyname('YPDH').AsString+'''');
                          sql.add('and CLBH='+''''+Query1.FieldByName('CLBH').Value+'''');
                          sql.Add('and GSBH='''+main.Edit2.Text+''' ');
                          execsql;
                          close;
                        end;
                   end;
                end;

          end;
        next;
      end;

    active:=false;
    cachedupdates:=false;
    requestlive:=false;
    active:=true;
    DBGrideh1.Columns[8].ButtonStyle:=cbsnone;
  end;   
    S2.enabled:=false;
    S3.Enabled:=false;
end;

procedure TUseStockSample.S3Click(Sender: TObject);
begin
if query1.CachedUpdates then
  begin
    query1.Active:=false;
    query1.CachedUpdates:=false;
    query1.RequestLive:=false;
    S2.Enabled:=false;
    S3.enabled:=false;
    query1.Active:=true;
    DBGrideh1.Columns[8].ButtonStyle:=cbsnone;
  end;
end;

procedure TUseStockSample.FormDestroy(Sender: TObject);
begin
UseStockSample:=nil;
end;

procedure TUseStockSample.DBGridEh1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
  begin
    if DBGrideh1.selectedfield.fieldname='QTY' then
      begin
      //  showmessage('aaaq') ;
        if Query1.CachedUpdates then
          begin
            if Query1.FieldByName('CLSL').value-0.05>
               Query1.FieldByName('CGQty').value+Query1.FieldByName('QTY').value then
              begin
                query1.edit;
                Query1.FieldByName('QTY').Value:=
                     Query1.FieldByName('CLSL').Value-Query1.FieldByName('CGQty').Value;
              end;
          end;
        query1.Next;
      end;
  end;
end;

procedure TUseStockSample.DBGridEh1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin

if Query1.FieldByName('CLSL').value<=Query1.FieldByName('CGQty').value+Query1.FieldByName('qty').value then
  begin
        dbgrideh1.canvas.font.color:=clBlue;
        //dbgrid1.defaultdrawcolumncell(rect,datacol,column,state);
  end;
if (((query1.FieldByName('CGQty').value>0) or (Query1.FieldByName('qty').value>0))
                    and (query1.FieldByName('CLSL').value>query1.FieldByName('CGQty').value+Query1.FieldByName('qty').value)) then
  begin
    if ((Query1.FieldByName('CGQty').value<>0) or (Query1.FieldByName('qty').value<>0)) then
      begin
        //dbgrideh1.canvas.font.color:=clred;
       // dbgrid1.defaultdrawcolumncell(rect,datacol,column,state);
      end;
  end;
if Query1.FieldByName('CLSL').value<Query1.FieldByName('CGQty').value+Query1.FieldByName('qty').value then
  begin
        dbgrideh1.canvas.font.color:=clgreen;
       // dbgrid1.defaultdrawcolumncell(rect,datacol,column,state);
  end;
if Query1.FieldByName('ZSYWJC').value = 'CANCEL' then
  begin
        dbgrideh1.canvas.font.color:=clGradientActiveCaption  ;
       // dbgrid1.defaultdrawcolumncell(rect,datacol,column,state);
  end;
end;

procedure TUseStockSample.Button2Click(Sender: TObject);
begin
printdbgrideh1.Preview;
end;

procedure TUseStockSample.Button3Click(Sender: TObject);
var
  ExpClass:TDBGridEhExportClass;
  Ext, target:String;
  tdbgh : TDBGridEh;
begin
  target := 'ts1/ts2/ts3';
  tdbgh := DBGridEh1;
  if (tdbgh is TDBGridEh) then
    if SaveDialog1.Execute then
    begin
      case SaveDialog1.FilterIndex of
        1: begin ExpClass := TDBGridEhExportAsXLS; Ext := 'xls'; end;
        2: begin ExpClass := TDBGridEhExportAsCSV; Ext := 'csv'; end;
        3: begin ExpClass := TDBGridEhExportAsHTML; Ext := 'htm'; end;
        4: begin ExpClass := TDBGridEhExportAsRTF; Ext := 'rtf'; end;
        5: begin ExpClass := TDBGridEhExportAsText; Ext := 'txt'; end;
      else
        ExpClass := nil; Ext := '';
      end;
      if ExpClass <> nil then
      begin
        if UpperCase(Copy(SaveDialog1.FileName,Length(SaveDialog1.FileName)-2,3)) <> UpperCase(Ext) then
          SaveDialog1.FileName := SaveDialog1.FileName + '.' + Ext;
        SaveDBGridEhToExportFile(ExpClass,tdbgh,SaveDialog1.FileName,not ckbsel.Checked);
        if Application.MessageBox('Do you want to open the exported file?','Open file',MB_YESNO) = IDYES then
          shellexecute(handle,'open',pchar(SaveDialog1.FileName),nil,nil,SW_SHOWNORMAL);
      end;
    end;

end;

procedure TUseStockSample.DBGridEh1EditButtonClick(Sender: TObject);
begin
  UseStockSample_CL:=TUseStockSample_CL.create(self);
  UseStockSample_CL.show;
end;


end.
