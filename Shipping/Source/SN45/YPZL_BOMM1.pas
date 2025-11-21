unit YPZL_BOMM1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, GridsEh, DBGridEh, StdCtrls, ComCtrls, Buttons,
  ExtCtrls, DB, DBTables, Comobj, Menus;

type
  TYPZL_BOMM = class(TForm)
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
    PC1: TPageControl;
    TS1: TTabSheet;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label3: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit5: TEdit;
    Button1: TButton;
    YPDHEdit: TEdit;
    YPZLGrid: TDBGridEh;
    TS2: TTabSheet;
    YPZL: TQuery;
    DS1: TDataSource;
    DS2: TDataSource;
    YPZLYPDH: TStringField;
    YPZLXieXing: TStringField;
    YPZLSheHao: TStringField;
    YPZLArticle: TStringField;
    YPZLJiJie: TStringField;
    YPZLKFJD: TStringField;
    YPZLYPCC: TStringField;
    YPZLSDRQ: TStringField;
    YPZLJHRQ: TStringField;
    YPZLQuantity: TFloatField;
    YPZLPFC: TStringField;
    YPZLGSDH: TStringField;
    YPZLDEVCODE: TStringField;
    YPZLSGrid: TDBGridEh;
    YPZLS: TQuery;
    YPZLSYPDH: TStringField;
    YPZLSxh: TStringField;
    YPZLSBWBH: TStringField;
    YPZLSCLBH: TStringField;
    YPZLSBWLB: TStringField;
    YPZLSCSBH: TStringField;
    YPZLSloss: TFloatField;
    YPZLSCLSL: TFloatField;
    YPZLSCLDJ: TFloatField;
    YPZLSCurrency: TStringField;
    YPZLSRate: TFloatField;
    YPZLSBWMC: TStringField;
    YPZLSCLMC: TStringField;
    YPZLSdwbh: TStringField;
    YPZLSzsjc: TStringField;
    YPZLSclzmlb: TStringField;
    YPZLStyjh: TStringField;
    YPZLSJGZWSM: TStringField;
    YPZLSJGYWSM: TStringField;
    YPZLSzsywjc: TStringField;
    YPZLSywpm: TStringField;
    YPZLScqdh: TStringField;
    YPZLSYN: TStringField;
    YPZLSSamplePurchaser: TStringField;
    rr: TStringField;
    YPZLSROWID: TFloatField;
    YPZLSzwsm: TStringField;
    YPZLSywsm: TStringField;
    YPZLSUserID: TStringField;
    YPZLSUserDate: TDateTimeField;
    YPZLSXH1: TIntegerField;
    YPZLSRemark: TStringField;
    TempQry: TQuery;
    YPZLFD: TStringField;
    MainMenu1: TMainMenu;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BB1Click(Sender: TObject);
    procedure YPZLAfterOpen(DataSet: TDataSet);
    procedure bbt6Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    AppDir:string;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  YPZL_BOMM: TYPZL_BOMM;

implementation

uses main1, FunUnit;

{$R *.dfm}

procedure TYPZL_BOMM.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=CaFree;
end;

procedure TYPZL_BOMM.FormDestroy(Sender: TObject);
begin
  YPZL_BOMM:=nil;
end;

procedure TYPZL_BOMM.Button1Click(Sender: TObject);
begin
  //
  if (Length(YPDHEdit.Text)<=9)  then
  begin
    showmessage('Please input RY ');
    exit;
  end;
  with YPZL do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Select ypzl.YPDH,ypzl.XieXing,ypzl.SheHao,ypzl.Article,kfxxzl.JiJie,ypzl.KFJD,');
    SQL.Add('       ypzl.YPCC,ypzl.SDRQ,ypzl.JHRQ,ypzl.Quantity,ypzl.PFC,ypzl.GSDH,kfxxzl.DEVCODE,KFXXZL.FD ');
    SQL.Add('FROM ypzl ypzl ');
    SQL.Add('LEFT JOIN kfxxzl kfxxzl ON ypzl.XieXing = kfxxzl.XieXing AND ypzl.SheHao = kfxxzl.SheHao ');
    SQL.Add('where  ypzl.YPDH like  '''+YPDHEdit.Text+'%'' ');
    SQL.Add('   and (GSDH='''+main.Edit2.Text+''' or GSDH=''LAI'') ');
    SQL.Add('order by YPZL.YPDH desc');
    Active:=true;
  end;

  with YPZLS do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select case when XH = ''ZZZ'' then ROW_NUMBER() OVER(ORDER BY XH) ELSE DENSE_RANK() OVER(ORDER BY XH) end AS ROWID,* from ( ');
    SQL.Add('SELECT ypzls.YPDH ,ypzls.XH ,ypzls.BWBH ,ypzls.CLBH ,ypzls.BWLB ,ypzls.CSBH ,ypzls.loss ,ypzls.CLSL ,ypzls.CLDJ ,ypzls.Currency ,ypzls.Rate ,ypzls.Remark ,bwzl.ywsm+''-''+bwzl.zwsm AS BWMCNM, ');
    SQL.Add('       bwzl.zwsm,bwzl.ywsm,clzl.zwpm AS CLMC ,clzl.dwbh ,zszl.zsjc ');
    SQL.Add('       ,clzl.clzmlb  ,clzl.tyjh ,ypzls.JGZWSM ,ypzls.JGYWSM ,zszl.zsywjc ,clzl.ywpm ,clzl.cqdh ');
    SQL.Add('       ,zszl_dev.SamplePurchaser,''1'' as YN,CLZL.UserID as MatUser,ypzls.UserID,ypzls.UserDate,XH1 ');
    SQL.Add('       FROM ypzls ypzls ');       
    SQL.Add('LEFT JOIN bwzl bwzl ON ypzls.BWBH = bwzl.bwdh ');
    SQL.Add('LEFT JOIN clzl clzl ON ypzls.CLBH = clzl.cldh ');
    SQL.Add('LEFT JOIN zszl zszl ON ypzls.CSBH = zszl.zsdh ');
    SQL.Add('LEFT JOIN zszl_dev ON zszl_dev.zsdh = zszl.zsdh   and zszl_dev.GSBH =:GSDH ');
    SQL.Add('LEFT JOIN YPZL_NoNeedPart on YPZL_NoNeedPart.BWBH=YPZLs.BWBH ');
    SQL.Add('WHERE YPDH =:YPDH  and YPZL_NoNeedPart.bwbh is null ');
    SQL.Add('union all ');
    SQL.Add('select ZLBH1	,XH ,BWBH ,MJBH ,null as BWLB ,null as CSBH ,null as loss ,ZLZLS3.TCLYL as CLSL ,null as CLDJ ,null as Currency ,null as Rate ,null as Remark ,null as BWMCNM ');
    SQL.Add('       ,null as zwsm, null as ywsm,zwpm AS CLMC ,dwbh ,null as zsjc ');
    SQL.Add('       ,null as clzmlb, null as tyjh, null as JGZWSM, null as JGYWSM, null as zsywjc, ywpm, cqdh ');
    SQL.Add('       ,null as SamplePurchaser,''1'' as YN, MatUser, UserID,ZLZLS3.Caldate as UserDate,null as XH1 ');
    SQL.Add('       from ( ');
    SQL.Add('select ZLZLS3.ZLBH1 as ZLBH1,''ZZZ'' as XH, ''ZZZ'' as BWBH,right(ZLZLS3.cldhz,10) as MJBH,convert(float,round(sum(ZLZLS3.TCLYL),2)) as TCLYL, ');
    SQL.Add('CLZL.zwpm,CLZL.ywpm,CLZL.DWBH,IsNull(ERP_DDZL.Quantity,Max(DDZL.Pairs)) as Quantity,max(convert(varchar,cast(ZLZLS3.USERDATE as smalldatetime),111)) as CalDate,DDZL.CQDH,clzl.userid as MatUser ,ZLZLS3.UserID ');
    SQL.Add('FROM '+main.LIY_DD+'.dbo.ZLZLS3 ZLZLS3 ');
    SQL.Add('left join '+main.LIY_DD+'.dbo.DDZL DDZL ON ZLZLS3.DDBH = DDZL.DDBH AND DDZL.CQDH = ZLZLS3.CQDH ');
    SQL.Add('LEFT JOIN '+main.LIY_DD+'.dbo.CLZL CLZL ON ZLZLS3.cldhz = CLZL.cldh ');
    SQL.Add('left join CLZL ERP_CLZL on ERP_CLZL.CLDH=Substring(ZLZLS3.cldhz,2,10) ');
    SQL.Add('Left join YPZL ERP_DDZL on ERP_DDZL.YPDH=DDZL.ZLBH1 ');
    SQL.Add('where ZLZLS3.TCLYL>0 and ZLZLS3.ZLBH1=:YPDH and ZLZLS3.CQDH in (select GSDH from bgszl where SFL = ''RB'') ');
    SQL.Add('GROUP BY ZLZLS3.ZLBH1,ZLZLS3.cldhz,CLZL.zwpm,CLZL.ywpm,DDZL.CQDH,CLZL.DWBH,ERP_DDZL.Quantity,clzl.userid,ZLZLS3.UserID ');
    SQL.Add(') ZLZLS3 ');
    SQL.Add(') ypzls ');
    //funcobj.WriteErrorLog(sql.Text);
    Active:=true;
  end;
end;

procedure TYPZL_BOMM.BB1Click(Sender: TObject);
begin
  PC1.ActivePage:=TS1;
  panel2.Visible:=true;
  YPDHEdit.SetFocus;
end;

procedure TYPZL_BOMM.YPZLAfterOpen(DataSet: TDataSet);
begin
  if YPZL.RecordCount>0 then
     bbt6.Enabled:=true
  else
     bbt6.Enabled:=false;
end;

procedure TYPZL_BOMM.bbt6Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,offset:integer;
    SubPart:boolean;
    BeforeXH,FlowNum,Pairs:string;
    FlowID:integer;
    IsYPZL_ZLZLS2:boolean;
begin
   if MessageDlg('Print Sub Parts?',mtCustom,[mbYes,mbNo], 0)=mrYes then
      SubPart:=true
   else
      SubPart:=false;
    if(not DirectoryExists(AppDir+'Additional\'))  then ForceDirectories(AppDir+'Additional\');
    CopyFile(Pchar('\\'+main.ServerIP+'\liy_erp\Additional\SampleOrder_Shipping.xls'),Pchar(AppDir+'Additional\SampleOrder_Shipping.xls'),false);
    if FileExists(AppDir+'Additional\SampleOrder_Shipping.xls') then
    begin
      if  YPZL.active  then
      begin
        try
            eclApp:=CreateOleObject('Excel.Application');
            WorkBook:=CreateOleObject('Excel.Sheet');
        except
            Application.MessageBox('NO Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
            Exit;
        end;
        //
        try
          eclApp.WorkBooks.Open(AppDir+'Additional\SampleOrder_Shipping.xls');
          eclApp.WorkSheets[1].Activate;//第一頁為主
          eclApp.ActiveSheet.Rows.Font.Size := 13;

          //內腰資訊
          //Select YPZL_S1.*  From YPZL_S1 YPZL_S1
          //WHERE YPDH = 'LAIS140700011'
          //抬頭資訊
          with TempQry do
          begin
            Active:=false;
            SQL.Clear;
            SQL.Add('SELECT ypzl.* ,kfxxzl.XieMing ,kfxxzl.fd,kfxxzl.ARTICLE AS ARTNO ,kfxxzl.YSSM ,kfxxzl.JiJie ,kfxxzl.XTMH ,kfxxzl.DDMH ,kfxxzl.KFLX AS KFLX2 ');
            SQL.Add(',kfxxzl.DEVCODE ,kfzl.kfjc ,lbzls.zwsm ,lbzls.ywsm ,kfzl.kfdh ,kfxxzl.CCGB ,kfxxzl.IMGName ,lbzls03.zwsm AS zwsm03 ,lbzls03.ywsm AS ywsm03 ,kfxxzl.DAOMH,BUsers.UserName,kfxxzl.logo ');
            SQL.Add('FROM ypzl  ');
            SQL.Add('LEFT JOIN kfxxzl kfxxzl ON ypzl.XieXing = kfxxzl.XieXing AND ypzl.SheHao = kfxxzl.SheHao ');
            SQL.Add('LEFT JOIN kfzl kfzl ON kfxxzl.KHDH = kfzl.kfdh ');
            SQL.Add('LEFT JOIN lbzls lbzls ON ypzl.KFJD = lbzls.lbdh AND lbzls.lb = ''04'' ');
            SQL.Add('LEFT JOIN lbzls lbzls03 ON kfxxzl.XieGN = lbzls03.lbdh AND lbzls03.lb = ''03'' ');
            SQL.Add('Left JOIN BUsers on BUsers.UserID=ypzl.UserID ');
            SQL.Add('WHERE YPDH = '''+YPZL.FieldByName('YPDH').AsString+''' ');
            Active:=true;
          end;
          //抬頭
          eclApp.Cells(1,2):=TempQry.FieldByName('KFJC').AsString+' PROTOTYPE SAMPLE';
          eclApp.Cells(2,1):=YPZL.FieldByName('YPDH').AsString;    //編號
          eclApp.Range['D2','E2'].Merge;
          eclApp.Range['D2','E2'].HorizontalAlignment := -4108; //水平置中
          eclApp.Cells(2,4):='SR:'+YPZL.FieldByName('Article').AsString; //
          eclApp.Range['F2','G2'].Merge;
          eclApp.Range['F2','G2'].HorizontalAlignment := -4108; //水平置中
          eclApp.Cells(2,6):='FD:'+YPZL.FieldByName('fd').AsString; //
          eclApp.Cells(2,12):=FormatDateTime('YYYY/MM/DD',Date()); //日期
          //
          eclApp.Cells(4,4):=TempQry.FieldByName('KFJC').AsString;
          eclApp.Cells(4,7):=TempQry.FieldByName('JiJie').AsString+'('+TempQry.FieldByName('KFLX2').AsString+')';
          eclApp.Cells(4,9):=TempQry.FieldByName('MH').AsString;
          eclApp.Cells(5,4):=TempQry.FieldByName('Article').AsString;
          eclApp.Cells(5,7):=TempQry.FieldByName('YWSM').AsString;
          eclApp.Cells(5,9):=TempQry.FieldByName('LH').AsString;
          eclApp.Cells(6,4):=TempQry.FieldByName('XieMing').AsString;

          eclApp.Cells(6,7):=TempQry.FieldByName('Quantity').AsString;
          eclApp.Cells(6,9):=TempQry.FieldByName('BH').AsString;
          eclApp.Cells(7,4):=TempQry.FieldByName('YPCC').AsString+'('+TempQry.FieldByName('logo').AsString+')';
          eclApp.Cells(7,7):=TempQry.FieldByName('XieXing').AsString;
          eclApp.Cells(8,4):=TempQry.FieldByName('YSSM').AsString;
          eclApp.Cells(8,7):=TempQry.FieldByName('SheHao').AsString+'('+TempQry.FieldByName('ywsm03').AsString+')';
          eclApp.Cells(9,4):='['+TempQry.FieldByName('YPCCO').AsString+']'+TempQry.FieldByName('DDMH').AsString;
          eclApp.Cells(9,7):='['+TempQry.FieldByName('YPCCL').AsString+']'+TempQry.FieldByName('XTMH').AsString;

          eclApp.Cells(10,4):=TempQry.FieldByName('JHRQ').AsString;
          //
          eclApp.Cells(10,7):=TempQry.FieldByName('FINDATE').AsString;
          eclApp.Cells(10,9):=TempQry.FieldByName('DAOMH').AsString;
          //
          Pairs:=TempQry.FieldByName('Quantity').AsString;
          TempQry.Active:=false;
          //備註資訊
          with TempQry do
          begin
            Active:=false;
            SQL.Clear;
            SQL.Add('select LineNum,Remark from ypzls2 ');
            SQL.Add('WHERE YPDH = '''+YPZL.FieldByName('YPDH').AsString+''' ');
            SQL.Add('order by LineNum ');
            Active:=true;
            if RecordCount>0 then
            begin
              Offset:=13;
              First;
              for i:=0 to RecordCount-1  do
              begin
                if i<>RecordCount-1 then
                begin
                  eclApp.ActiveSheet.Rows[13].Copy;
                  eclApp.ActiveSheet.Rows[13].Insert(-4121);
                end;
              end;
              First;
              for i:=0 to RecordCount-1  do
              begin
                //  eclApp.ActiveSheet.Rows.Font.Size := 15;
                eclApp.Cells(Offset+i,1):=TempQry.FieldByName('LineNum').AsString;
                eclApp.Cells(Offset+i,3):=trim(TempQry.FieldByName('Remark').AsString);
                Next;
              end;
            end else
            begin
              eclApp.ActiveSheet.Rows[13].Delete;
            end;
          end;
          //檢查是否有YPZL_ZLZLS2
          with TempQry do
          begin
             Active:=false;
             SQL.Clear;
             SQL.Add('Select top 1 YPDH from YPZL_ZLZLS2 where YPDH='''+YPZL.FieldByName('YPDH').AsString+''' ');
             Active:=true;
             if RecordCount>0 then
             begin
               IsYPZL_ZLZLS2:=true;
             end else
             begin
               IsYPZL_ZLZLS2:=false;
             end;
             Active:=false;
          end;
          //材料明細 有展算YPZL_ZLZLS2
          if IsYPZL_ZLZLS2=true then
          begin
            with TempQry do
            begin
              Active:=false;
              SQL.Clear;
              if SubPart=false then
              begin
                SQL.Add('select ZLZLS2.YPDH, cast( case when ZLZLS2.XH is not null then ZLZLS2.XH else  900+ROW_NUMBER() OVER(ORDER BY ZLZLS2.XH )  end as varchar)as XH, case when MJBH=''ZZZZZZZZZZ'' then ZLZLS2.BWBH else ZLZLS2.BWBH+''-Child'' end as BWBH, ZLZLS2.CLBH');
                SQL.Add('       , ZLZLS2.CSBH, YPZLS.LOSS,Round(ZLZLS2.CLSL/'+Pairs+',4) as USAGE, CLZL.cqdh, bwzl.YWSM,CLZL.ywpm as CLYWMC,CLZL.dwbh,ZSZL.ZSYWJC,ZLZLS2.CLSL');
                SQL.Add('from YPZL_ZLZLS2 ZLZLS2');
                SQL.Add('LEFT JOIN bwzl bwzl ON ZLZLS2.BWBH = bwzl.bwdh ');
                SQL.Add('LEFT JOIN clzl clzl ON ZLZLS2.CLBH = clzl.cldh ');
                SQL.Add('LEFT JOIN zszl zszl ON ZLZLS2.CSBH = zszl.zsdh ');
                SQL.Add('left join YPZLS on YPZLS.YPDH=ZLZLS2.YPDH and YPZLS.BWBH=ZLZLS2.BWBH');
                SQL.Add('LEFT JOIN YPZL_NoNeedPart on YPZL_NoNeedPart.BWBH=ZLZLS2.BWBH');
                SQL.Add('where ZLZLS2.YPDH='''+YPZL.FieldByName('YPDH').AsString+''' and  ZLZLS2.CLSL>0 and MJBH=''ZZZZZZZZZZ'' and YPZL_NoNeedPart.bwbh is null  ');
              end else
              begin
                SQL.Add('select ZLZLS2.YPDH,cast( case when ZLZLS2.XH is not null then ZLZLS2.XH else  900+ROW_NUMBER() OVER(ORDER BY ZLZLS2.XH )  end as varchar) as XH, ');
                SQL.Add('       case when MJBH=''ZZZZZZZZZZ'' then ZLZLS2.BWBH else ZLZLS2.BWBH+''-Child'' end as BWBH, ZLZLS2.CLBH, ZLZLS2.CSBH, IsNull(YPZLS.LOSS,0) as LOSS');
                SQL.Add('       ,Round(ZLZLS2.CLSL/'+Pairs+',4) as USAGE, CLZL.cqdh, case when MJBH=''ZZZZZZZZZZ'' then bwzl.YWSM else '''' end as YWSM,CLZL.ywpm as CLYWMC,CLZL.dwbh,ZSZL.ZSYWJC,ZLZLS2.CLSL');
                SQL.Add('from YPZL_ZLZLS2 ZLZLS2');
                SQL.Add('LEFT JOIN bwzl bwzl ON ZLZLS2.BWBH = bwzl.bwdh ');
                SQL.Add('LEFT JOIN clzl clzl ON ZLZLS2.CLBH = clzl.cldh ');
                SQL.Add('LEFT JOIN zszl zszl ON ZLZLS2.CSBH = zszl.zsdh ');
                SQL.Add('left join YPZLS on YPZLS.YPDH=ZLZLS2.YPDH and YPZLS.BWBH=ZLZLS2.BWBH');
                SQL.Add('LEFT JOIN YPZL_NoNeedPart on YPZL_NoNeedPart.BWBH=ZLZLS2.BWBH');
                SQL.Add('where ZLZLS2.YPDH='''+YPZL.FieldByName('YPDH').AsString+''' and ZLZLS2.CLSL>0  and YPZL_NoNeedPart.bwbh is null');
              end;
              SQL.Add('UNION ALL');
              SQL.Add('select YPDH, XH, BWBH, MJBH, null as CSBH, null as LOSS, Usage, CQDH, ''OUTSOLE'' as YWSM, YWPM, DWBH, null as ZSYWJC, CLSL ');
              SQL.Add('from ( ');
              SQL.Add('     select ZLZLS3.ZLBH1 as YPDH,''ZZZ'' as XH, ''ZZZ'' as BWBH,right(ZLZLS3.cldhz,10) as MJBH ');
              SQL.Add('	    ,convert(float,round(sum(ZLZLS3.TCLYL),4)) as CLSL, convert(float,round(sum(ZLZLS3.TCLYL)/DDZL.Pairs,4)) as Usage');
              SQL.Add('	    ,CLZL.ywpm,CLZL.DWBH,IsNull(ERP_DDZL.Quantity,Max(DDZL.Pairs)) as Quantity,max(convert(varchar,cast(ZLZLS3.USERDATE as smalldatetime),111)) as CalDate,DDZL.CQDH ');
              SQL.Add('     FROM '+main.LIY_DD+'.dbo.ZLZLS3 ZLZLS3 ');
              SQL.Add('     LEFT JOIN '+main.LIY_DD+'.dbo.DDZL DDZL ON ZLZLS3.DDBH = DDZL.DDBH AND DDZL.CQDH = ZLZLS3.CQDH ');
              SQL.Add('     LEFT JOIN '+main.LIY_DD+'.dbo.CLZL CLZL ON ZLZLS3.cldhz = CLZL.cldh ');
              SQL.Add('     LEFT JOIN CLZL ERP_CLZL on ERP_CLZL.CLDH=Substring(ZLZLS3.cldhz,2,10) ');
              SQL.Add('     LEFT JOIN YPZL ERP_DDZL on ERP_DDZL.YPDH=DDZL.ZLBH1 ');
              SQL.Add('     where ZLZLS3.TCLYL>0 and ZLZLS3.ZLBH1 = '''+YPZL.FieldByName('YPDH').AsString+''' and ZLZLS3.CQDH in (select GSDH from bgszl where SFL = ''RB'') ');
              SQL.Add('     and (IsNull(TCLYL,0)*IsNull(Quantity,0)>0 )');
              SQL.Add('     GROUP BY ZLZLS3.ZLBH1,ZLZLS3.cldhz,CLZL.ywpm,DDZL.CQDH,CLZL.DWBH,ERP_DDZL.Quantity,DDZL.Pairs ');
              SQL.Add(') ZLZLS3 ');
              SQL.Add('order by ZLZLS2.YPDH,ZLZLS2.XH,ZLZLS2.BWBH ');
              //funcobj.WriteErrorLog(sql.Text);
              Active:=true;
            end;
          end else
          begin
            //材料明細 直接使用YPZLS樣品單
            with TempQry do
            begin
              Active:=false;
              SQL.Clear;
              if SubPart=false then
              begin
                SQL.Add('SELECT ypzls.YPDH ,ypzls.XH  ,ypzls.BWBH ,ypzls.CLBH  ,ypzls.CSBH ,ypzls.LOSS ,Round((CEILING(ypzls.CLSL*YPZL.Quantity*100)/100)/'+Pairs+',4) as USAGE ,clzl.CQDH  ');
                SQL.Add('       ,bwzl.YWSM ,clzl.YWPM AS CLYWMC ,clzl.DWBH   ,zszl.ZSYWJC,CEILING(ypzls.CLSL*YPZL.Quantity*100)/100 as CLSL  ');
                SQL.Add('FROM ypzls ypzls ');
                SQL.Add('LEFT JOIN ypzl ypzl ON ypzl.YPDH=ypzls.YPDH ');
                SQL.Add('LEFT JOIN bwzl bwzl ON ypzls.BWBH = bwzl.bwdh ');
                SQL.Add('LEFT JOIN clzl clzl ON ypzls.CLBH = clzl.cldh ');
                SQL.Add('LEFT JOIN zszl zszl ON ypzls.CSBH = zszl.zsdh ');
                SQL.Add('LEFT JOIN YPZL_NoNeedPart on YPZL_NoNeedPart.BWBH=ypzls.BWBH');
                SQL.Add('WHERE YPZLS.YPDH = '''+YPZL.FieldByName('YPDH').AsString+''' and (IsNull(ypzls.CLSL,0)*IsNull(ypzl.Quantity,0)>0 ) and YPZL_NoNeedPart.bwbh is null');
                //SQL.Add('Order By YPZLS.YPDH , YPZLS.XH');
              end else
              begin
                SQL.Add('Select YPZLS.YPDH, YPZLS.xh  ,YPZLS.BWBH ,ypzls.CLBH ,YPZLS.CSBH ,YPZLS.loss ,Round(YPZLS.CLSL/'+Pairs+',4) as USAGE ,YPZLS.CQDH ,YPZLS.ywsm ,YPZLS.CLYWMC, YPZLS.dwbh  ,YPZLS.zsywjc,ypzls.CLSL   from ( ');
                SQL.Add('select YPZLS.YPDH, YPZLS.xh  ,YPZLS.BWBH ,ypzls.CLBH ,YPZLS.CSBH ,YPZLS.loss ,YPZLS.Usage ,YPZLS.CQDH ,YPZLS.ywsm ,YPZLS.CLYWMC, YPZLS.dwbh  ,YPZLS.zsywjc,ypzls.CLSL  ');
                SQL.Add(' from ( ');
                SQL.Add('SELECT ypzls.YPDH ,ypzls.xh  ,ypzls.BWBH ,ypzls.CLBH  ,ypzls.CSBH ,ypzls.loss,ypzls.CLSL as Usage ,CEILING(ypzls.CLSL*YPZL.Quantity*100)/100 as CLSL ,clzl.CQDH ');
                SQL.Add('       ,bwzl.ywsm ,clzl.Ywpm AS CLYWMC ,clzl.dwbh  ,zszl.zsywjc ');
                SQL.Add('FROM ypzls ypzls ');
                SQL.Add('LEFT JOIN YPZL on YPZL.YPDH=YPZLS.YPDH ');
                SQL.Add('LEFT JOIN bwzl bwzl ON ypzls.BWBH = bwzl.bwdh ');
                SQL.Add('LEFT JOIN clzl clzl ON ypzls.CLBH = clzl.cldh ');
                SQL.Add('LEFT JOIN zszl zszl ON ypzls.CSBH = zszl.zsdh ');
                SQL.Add('LEFT JOIN YPZL_NoNeedPart on YPZL_NoNeedPart.BWBH=ypzls.BWBH');
                SQL.Add('WHERE YPZLS.YPDH = '''+YPZL.FieldByName('YPDH').AsString+''' and YPZL_NoNeedPart.bwbh is null');
                SQL.Add('union all ');
                SQL.Add('SELECT ypzls.YPDH ,ypzls.xh  ,YPZLS.BWBH+''-Child'' as Relation,clzhzl.CLDH1 as CLBH ');
                SQL.Add('       ,case when  ((clzhzl_dev.zsdh is not null) and (clzhzl_dev.zsdh<>'''')) then clzhzl_dev.zsdh else clzhzl.zsdh end as CSBH ');
                SQL.Add('       ,ypzls.loss ,ypzls.CLSL*clzhzl.syl as Usage,Round((CEILING(YPZLS.CLSL*YPZL.Quantity*100)/100)*CLZHZL.SYL,2) as CLSL ,clzl.CQDH ');
                SQL.Add('       ,'''' as ywsm,clzl.Ywpm AS CLYWMC ,clzl.dwbh ,');
                SQL.Add('       case when  ((clzhzl_dev.zsdh is not null) and (clzhzl_dev.zsdh<>'''')) then zszl_dev.zsywjc else  zszl.zsywjc  end as zsywjc ');
                SQL.Add('FROM ypzls ypzls ');
                SQL.Add('LEFT JOIN YPZL on YPZL.YPDH=YPZLS.YPDH ');
                SQL.Add('Left join clzhzl ON  ypzls.CLBH = CLZHZL.cldh ');
                SQL.Add('left join clzhzl_dev ON clzhzl.cldh=clzhzl_dev.cldh and clzhzl.cldh1=clzhzl_dev.cldh1 ');
                SQL.Add('LEFT JOIN bwzl bwzl ON ypzls.BWBH = bwzl.bwdh ');
                SQL.Add('LEFT JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh ');
                SQL.Add('LEFT JOIN zszl zszl ON clzhzl.zsdh = zszl.zsdh ');
                SQL.Add('LEFT JOIN zszl zszl_dev on clzhzl_dev.zsdh = zszl_dev.zsdh ');
                SQL.Add('LEFT JOIN YPZL_NoNeedPart on YPZL_NoNeedPart.BWBH=ypzls.BWBH');
                SQL.Add('WHERE YPZLS.YPDH = '''+YPZL.FieldByName('YPDH').AsString+'''  and CLZHZL.SYL>0 and YPZL_NoNeedPart.bwbh is null ');
                //二階材料
                SQL.Add('union all ');
                SQL.Add('Select clzhzl2.YPDH,clzhzl2.XH,clzhzl2.Relation+''1'' as Relation ,clzhzl.CLDH1 as CLBH ');
                SQL.Add('       ,case when  ((clzhzl_dev.zsdh is not null) and (clzhzl_dev.zsdh<>'''')) then clzhzl_dev.zsdh else clzhzl.zsdh end as CSBH ');
                SQL.Add('       ,clzhzl2.loss ,clzhzl2.Usage*clzhzl.syl as Usage,Round(clzhzl2.CLSL*clzhzl.syl,2) as CLSL ,clzl.CQDH ');
                SQL.Add('       ,'''' as ywsm,clzl.Ywpm AS CLYWMC ,clzl.dwbh ,');
                SQL.Add('       case when  ((clzhzl_dev.zsdh is not null) and (clzhzl_dev.zsdh<>'''')) then zszl_dev.zsywjc else  zszl.zsywjc  end as zsywjc    ');
                SQL.Add(' from (');
                SQL.Add('SELECT ypzls.YPDH ,ypzls.xh ,YPZLS.BWBH ,YPZLS.BWBH+''-Child'' as Relation,clzhzl.CLDH1 as CLBH ');
                SQL.Add('       ,case when  ((clzhzl_dev.zsdh is not null) and (clzhzl_dev.zsdh<>'''')) then clzhzl_dev.zsdh else clzhzl.zsdh end as CSBH ');
                SQL.Add('       ,ypzls.loss ,YPZLS.CLSL*CLZHZL.SYL as Usage,Round((CEILING(YPZLS.CLSL*YPZL.Quantity*100)/100)*CLZHZL.SYL,2) as CLSL ,clzl.CQDH ');
                SQL.Add('       ,'''' as ywsm,clzl.Ywpm AS CLYWMC ,clzl.dwbh ,');
                SQL.Add('       case when  ((clzhzl_dev.zsdh is not null) and (clzhzl_dev.zsdh<>'''')) then zszl_dev.zsywjc else  zszl.zsywjc  end as zsywjc ');
                SQL.Add('FROM ypzls ypzls ');
                SQL.Add('LEFT JOIN YPZL on YPZL.YPDH=YPZLS.YPDH ');
                SQL.Add('inner join clzhzl ON  ypzls.CLBH = CLZHZL.cldh ');
                SQL.Add('left join clzhzl_dev ON clzhzl.cldh=clzhzl_dev.cldh and clzhzl.cldh1=clzhzl_dev.cldh1 ');
                SQL.Add('LEFT JOIN bwzl bwzl ON ypzls.BWBH = bwzl.bwdh ');
                SQL.Add('left JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh ');
                SQL.Add('LEFT JOIN zszl zszl ON clzhzl.zsdh = zszl.zsdh ');
                SQL.Add('LEFT JOIN zszl zszl_dev on clzhzl_dev.zsdh = zszl_dev.zsdh ');
                SQL.Add('LEFT JOIN YPZL_NoNeedPart on YPZL_NoNeedPart.BWBH=ypzls.BWBH');
                SQL.Add('WHERE YPZLS.YPDH = '''+YPZL.FieldByName('YPDH').AsString+'''  and CLZHZL.SYL>0   and clzl.clzmlb=''Y''  and YPZL_NoNeedPart.bwbh is null');
                SQL.Add(') clzhzl2');
                SQL.Add('inner join clzhzl ON  clzhzl2.CLBH = CLZHZL.cldh ');
                SQL.Add('left join clzhzl_dev ON clzhzl.cldh=clzhzl_dev.cldh and clzhzl.cldh1=clzhzl_dev.cldh1  ');
                SQL.Add('left JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh ');
                SQL.Add('LEFT JOIN zszl zszl ON clzhzl.zsdh = zszl.zsdh ');
                SQL.Add('LEFT JOIN zszl zszl_dev on clzhzl_dev.zsdh = zszl_dev.zsdh ');
                SQL.Add(')  YPZLS  ');
                SQL.Add('LEFT JOIN ypzl ypzl ON ypzl.YPDH=ypzls.YPDH ');
                SQL.Add(') YPZLS where  IsNull(CLSL,0)>0   ');
                //SQL.Add('order by   YPZLS.YPDH, YPZLS.XH ,YPZLS.BWBH ');
              end;
              SQL.Add('UNION ALL');
              SQL.Add('select YPDH, XH, BWBH, MJBH, null as CSBH, null as LOSS, Usage, CQDH, ''OUTSOLE'' as YWSM, YWPM, DWBH, null as ZSYWJC, CLSL ');
              SQL.Add('from ( ');
              SQL.Add('     select ZLZLS3.ZLBH1 as YPDH,''ZZZ'' as XH, ''ZZZ'' as BWBH,right(ZLZLS3.cldhz,10) as MJBH ');
              SQL.Add('	    ,convert(float,round(sum(ZLZLS3.TCLYL),4)) as CLSL, convert(float,round(sum(ZLZLS3.TCLYL)/DDZL.Pairs,4)) as Usage');
              SQL.Add('	    ,CLZL.ywpm,CLZL.DWBH,IsNull(ERP_DDZL.Quantity,Max(DDZL.Pairs)) as Quantity,max(convert(varchar,cast(ZLZLS3.USERDATE as smalldatetime),111)) as CalDate,DDZL.CQDH ');
              SQL.Add('     FROM '+main.LIY_DD+'.dbo.ZLZLS3 ZLZLS3 ');
              SQL.Add('     LEFT JOIN '+main.LIY_DD+'.dbo.DDZL DDZL ON ZLZLS3.DDBH = DDZL.DDBH AND DDZL.CQDH = ZLZLS3.CQDH ');
              SQL.Add('     LEFT JOIN '+main.LIY_DD+'.dbo.CLZL CLZL ON ZLZLS3.cldhz = CLZL.cldh ');
              SQL.Add('     LEFT JOIN CLZL ERP_CLZL on ERP_CLZL.CLDH=Substring(ZLZLS3.cldhz,2,10) ');
              SQL.Add('     LEFT JOIN YPZL ERP_DDZL on ERP_DDZL.YPDH=DDZL.ZLBH1 ');
              SQL.Add('     where ZLZLS3.TCLYL>0 and ZLZLS3.ZLBH1 = '''+YPZL.FieldByName('YPDH').AsString+''' and ZLZLS3.CQDH in (select GSDH from bgszl where SFL = ''RB'') ');
              SQL.Add('     and (IsNull(TCLYL,0)*IsNull(Quantity,0)>0 )');
              SQL.Add('     GROUP BY ZLZLS3.ZLBH1,ZLZLS3.cldhz,CLZL.ywpm,DDZL.CQDH,CLZL.DWBH,ERP_DDZL.Quantity,DDZL.Pairs ');
              SQL.Add(') ZLZLS3 ');
              SQL.Add('order by ypzls.YPDH,ypzls.XH,ypzls.BWBH ');
              //funcobj.WriteErrorLog(sql.Text);
              Active:=true;
            end;
          end;

          if TempQry.RecordCount>0 then
          begin
            Offset:=12;
            TempQry.First;
            for i:=0 to TempQry.RecordCount-1  do
            begin
              if i<>TempQry.RecordCount-1 then
              begin
                eclApp.ActiveSheet.Rows[12].Copy;
                eclApp.ActiveSheet.Rows[12].Insert(-4121);
              end;
            end;
            TempQry.First;
            BeforeXH:='';
            FlowID:=0;
            FlowNum:='';
            for i:=0 to TempQry.RecordCount-1  do
            begin
              //流水號
              if (TempQry.FieldByName('XH').AsString<>BeforeXH) or (TempQry.FieldByName('XH').AsString='ZZZ') then
              begin
                Inc(FlowID);
                FlowNum:=Format('%.2d',[FlowID]);
              end else
              begin
                FlowNum:='';
              end;
              BeforeXH:=TempQry.FieldByName('XH').AsString;
              //
              eclApp.Cells(Offset+i,1):=FlowNum;
              if Pos('-Child',TempQry.FieldByName('BWBH').AsString)>0 then
                eclApp.Cells(Offset+i,2):=''
              else
              eclApp.Cells(Offset+i,2):=TempQry.FieldByName('BWBH').AsString;
              eclApp.Cells(Offset+i,3):=TempQry.FieldByName('ywsm').AsString;
              if TempQry.FieldByName('CLBH').AsString<>'' then
              eclApp.Cells(Offset+i,4):=TempQry.FieldByName('CLBH').AsString;
              eclApp.Cells(Offset+i,5):=TempQry.FieldByName('CLYWMC').AsString;
              eclApp.Cells(Offset+i,12):=TempQry.FieldByName('DWBH').AsString;
              eclApp.Cells(Offset+i,13):=TempQry.FieldByName('loss').AsString;
              eclApp.Cells(Offset+i,14):=TempQry.FieldByName('Usage').AsString;
              eclApp.Cells(Offset+i,15):=TempQry.FieldByName('CLSL').AsString;
              TempQry.Next;
            end;
          end else
          begin
            eclApp.ActiveSheet.Rows[12].Delete;
          end;
          eclApp.CutCopyMode := False;//取消最後Copy
          //
          eclApp.ActiveSheet.PageSetup.PrintTitleRows := '$1:$11';   //列印標題列
          eclApp.ActiveSheet.PageSetup.Orientation := 2; //列印直=1,橫式=2
          showmessage('Succeed');
          eclApp.Visible:=True;
         except
            on F:Exception do
              showmessage(F.Message);
         end;
      end; //if  YPZL.active  then
   end;

end;

procedure TYPZL_BOMM.FormCreate(Sender: TObject);
begin
  AppDir:=ExtractFilePath(Application.ExeName);
end;

end.
