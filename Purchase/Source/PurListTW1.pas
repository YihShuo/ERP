unit PurListTW1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DB, DBTables, GridsEh, DBGridEh, StdCtrls,dateutils,
  ehlibBDE,comobj;

type
  TPurListTW = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    Button1: TButton;
    Label5: TLabel;
    Edit3: TEdit;
    Label6: TLabel;
    Edit4: TEdit;
    CBX1: TCheckBox;
    DBGridEh1: TDBGridEh;
    TWCG: TQuery;
    TWCGdgdh: TStringField;
    TWCGzlbh: TStringField;
    TWCGXieMing: TStringField;
    TWCGzsjc: TStringField;
    TWCGcldh: TStringField;
    TWCGdwbh: TStringField;
    TWCGcqdh: TStringField;
    TWCGzl_qty: TFloatField;
    TWCGst_qty: TFloatField;
    TWCGdg_qty: TFloatField;
    TWCGin_qty: TFloatField;
    TWCGex_qty: TFloatField;
    TWCGhf_date: TStringField;
    TWCGex_date: TStringField;
    TWCGSHIPDATE: TDateTimeField;
    TWCGZXRQ: TStringField;
    TWCGPAIRS: TIntegerField;
    TWCGSLRQ: TStringField;
    TWCGzd_date: TStringField;
    TWCGcghzbh: TStringField;
    TWCGzzbz: TStringField;
    TWCGdg_date: TStringField;
    TWCGzsywjc: TStringField;
    TWCGywpm: TStringField;
    TWCGKHPO: TStringField;
    TWCGARTICLE: TStringField;
    TWCGacc_no: TStringField;
    TWCGpumadh: TStringField;
    TWCGKBBH: TStringField;
    TWCGzwsm: TStringField;
    DS1: TDataSource;
    TWCGCon_Date: TStringField;
    TWCGSHLB: TStringField;
    TWCGCON_NO: TStringField;
    L1: TLabel;
    CBX2: TComboBox;
    L2: TLabel;
    CBX3: TComboBox;
    CB2: TCheckBox;
    Button2: TButton;
    TWCGzwpm: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure CB2Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PurListTW: TPurListTW;
  sdate,edate:Tdate;

implementation

uses main1;

{$R *.dfm}

procedure TPurListTW.FormClose(Sender: TObject; var Action: TCloseAction);
begin
action:=cafree;
end;

procedure TPurListTW.Button1Click(Sender: TObject);
var y,m:word;
begin
if CB2.Checked then
  begin
    if (CBX2.text='')or (CBX3.text='')  then
      begin
        showmessage('You have to select the year and month first.');
        abort;
      end;
    y:=strtoint(CBX2.Text);
    m:=strtoint(CBX3.Text);
    if (y>2999) or (y<1900) then
      begin
        if y>2020 then
          begin
            showmessage('Pls contect with designer.');
            abort;
          end;
        showmessage('Pls key in right year');
        abort;
      end;
    if (m=0) or (m>12) then
      begin
        showmessage('Pls key in right month');
        abort;
      end;
    sdate:=encodedate(y,m,1);
    edate:=endofthemonth(sdate);
  end;

if not CB2.checked then
  begin
    if ((length(edit1.Text)<5) and (length(edit2.Text)<3)) then
      begin
        showmessage('Pls setup condition first!');
        abort;
      end;
  end;

with TWCG do
  begin
    active:=false;
    sql.Clear;
    sql.add('SELECT CGHZZLS.dgdh,CGHZZLS.zlbh,XXZL.XieMing,ZSZL.zsjc ');
    sql.add('      ,CLZL.cldh,CLZL.dwbh,  CGHZZLSS.cqdh,');
    sql.add('      SUM(CGHZZLS.zl_qty) zl_qty,SUM(CGHZZLS.st_qty) st_qty,');
    sql.add('      SUM(CGHZZLS.dg_qty) dg_qty,SUM(CGHZZLS.in_qty) in_qty,');
    sql.add('      SUM(CGHZZLS.ex_qty) ex_qty,CGHZZLSS.hf_date,');
    sql.add('      min(space(8)) ex_date,  DDZL.SHIPDATE,HBCGZL.ZXRQ,DDZL.PAIRS,');
    sql.add('      VJHZL.SLRQ,CGHZZLSS.zd_date,  CGHZZLSS.cghzbh,CGHZZLSS.zzbz,');
    sql.add('      CGHZZLSS.dg_date,CONZL.Con_Date,CONZL.SHLB,CONZL.CON_NO,ZSZL.zsywjc,CLZL.ywpm,CLZL.ZWpm,');
    sql.add('      DDZL.KHPO,DDZL.ARTICLE,ACCNOZL.acc_no,CLZL.pumadh,');
    sql.add('      HBCGZL.KBBH,min(space(8)) zwsm  FROM CGHZZLS');
    sql.add('LEFT JOIN CGHZZLSS ON CGHZZLS.cghzbh = CGHZZLSS.cghzbh');
    sql.add('                  AND CGHZZLS.ZLBH   = CGHZZLSS.ZLBH  AND CGHZZLS.clbh   = CGHZZLSS.clbh');
    sql.add('                  AND CGHZZLS.size   = CGHZZLSS.size  AND CGHZZLS.dgdh   = CGHZZLSS.dgdh');
    sql.add('LEFT JOIN ZSZL     ON ZSZL.zsdh      = CGHZZLSS.zsbh');
    sql.add('LEFT JOIN CLZL     ON CGHZZLS.clbh   = CLZL.cldh');
    sql.add('LEFT JOIN DDZL     ON CGHZZLS.zlbh   = DDZL.zlbh');
    sql.Add('left join KFZl on KFZl.KFDH=DDZl.KHBH ');
    sql.add('LEFT JOIN XXZL     ON XXZL.XieXing   = DDZL.XieXing  AND XXZL.SheHao    = DDZL.SheHao');
    sql.add('LEFT JOIN HBCGZL   ON CGHZZLS.cghzbh = HBCGZL.cgbh');
    sql.add('LEFT JOIN (SELECT MAX(jhzl.slrq) AS slrq, jhzls.dgdh');
    sql.add('                    FROM jhzls');
    sql.add('                    LEFT JOIN jhzl ON jhzls.sldh = jhzl.sldh');
    sql.add('                   GROUP BY jhzls.dgdh) AS VJHZL  ON CGHZZLS.dgdh   = VJHZL.dgdh');
    sql.add('LEFT JOIN (SELECT EXZLSS.ZLBH,EXZLSS.CLDH,EXZLSS.SIZE,');
    sql.add('                   max(HGZL.CON_DATE) as Con_Date,max(HGZL.SHLB) as SHLB,max(EXZL.CON_NO) as CON_NO FROM EXZLSS');
    sql.add('                   LEFT JOIN EXZL ON EXZLSS.EXNO=EXZL.EXNO  ');
    sql.add('                   LEFT JOIN HGZL ON EXZL.CON_NO=HGZL.CON_NO');
    sql.add('                  GROUP BY EXZLSS.ZLBH,EXZLSS.CLDH,EXZLSS.SIZE)');
    sql.add('                 AS CONZL  ON CGHZZLS.clbh   = CONZL.cldh  AND CGHZZLS.ZLBH   = CONZL.ZLBH  AND CGHZZLS.size   = CONZL.size');
    sql.add('LEFT JOIN (SELECT MAX(jhzl.sldh1) AS acc_no, jhzls.dgdh');
    sql.add('                    FROM jhzls');
    sql.add('                    LEFT JOIN jhzl ON jhzls.sldh = jhzl.sldh');
    sql.add('                   GROUP BY jhzls.dgdh) AS ACCNOZL  ON CGHZZLS.dgdh   = ACCNOZL.dgdh');
    sql.add('WHERE CGHZZLS.cghzbh IN (SELECT DISTINCT cgbh  FROM ZLZL');
    sql.add('                                                LEFT JOIN DDZL ON DDZL.zlbh = ZLZL.zlbh');
    sql.add('                                               WHERE DDZL.gsdh      = '+''''+'LAI'+''''+')');
    sql.add('AND CGHZZLS.size <> '+''''+'ZZZZZZ'+'''');
    sql.add('and CGHZZLS.zlbh like '+''''+edit1.text+'%'+'''' );
    if CB2.checked then
      begin
        sql.add('and convert(smalldatetime,convert(varchar,DDZl.ShipDate,111)) between ');
        sql.add(''''+formatdatetime('yyyy/MM/dd',sdate)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',edate)+'''' );
      end;
    sql.add('and CLZL.CLDh like '+''''+edit2.Text+'%'+'''');
    sql.add('and KFZL.KFJC like '+''''+'%'+edit3.Text+'%'+'''');
    sql.add('and XXZl.Article like '+''''+edit4.text+'%'+'''');
    sql.add('and DDZl.GSBH='+''''+main.edit2.text+'''');
    if CBX1.checked then
      begin
        sql.add('and CLZl.CQDH='+''''+'TW'+'''');
      end;
    sql.add('GROUP BY CGHZZLS.dgdh,CGHZZLS.zlbh,XXZL.XieMing,ZSZL.zsjc,CLZL.cldh,');
    sql.add('                   CLZL.dwbh,CGHZZLSS.cqdh,CGHZZLSS.hf_date,  DDZL.SHIPDATE,  ');
    sql.add('                   HBCGZL.ZXRQ,DDZL.PAIRS,VJHZL.SLRQ,CGHZZLSS.zd_date,  CGHZZLSS.cghzbh');
    sql.add('                  ,CGHZZLSS.zzbz,CGHZZLSS.dg_date,CONZL.Con_Date,CONZL.SHLB,CONZL.CON_NO,ZSZL.zsywjc,CLZL.ywpm,CLZL.Zwpm,');
    sql.add('                  DDZL.KHPO,DDZL.ARTICLE,ACCNOZL.acc_no,CLZL.pumadh,HBCGZL.KBBH');
    sql.add('UNION ALL');
    sql.add(' SELECT CGHZZLS.dgdh,CGHZZLS.zlbh,XXZL.XieMing,ZSZL.zsjc,CLZL.cldh,CLZL.dwbh,  CGHZZLSS.cqdh');
    sql.add('               ,SUM(CGHZZLS.zl_qty) zl_qty,SUM(CGHZZLS.st_qty) st_qty,  SUM(CGHZZLS.dg_qty) dg_qty,SUM(CGHZZLS.in_qty) in_qty,');
    sql.add('               SUM(CGHZZLS.ex_qty) ex_qty,CGHZZLSS.hf_date,');
    sql.add('               min(space(8)) ex_date,  DDZL.SHIPDATE,HBCGZL.ZXRQ,DDZL.PAIRS,VJHZL.SLRQ,CGHZZLSS.zd_date,');
    sql.add('               CGHZZLSS.cghzbh,CGHZZLSS.zzbz,CGHZZLSS.dg_date,CONZL.Con_Date,CONZL.SHLB,CONZL.CON_NO,ZSZL.zsywjc,CLZL.ywpm,CLZL.Zwpm,');
    sql.add('               DDZL.KHPO,DDZL.ARTICLE,ACCNOZL.acc_no,CLZL.pumadh,HBCGZL.KBBH,min(space(8)) zwsm');
    sql.add('FROM CGHZZLS');
    sql.add('LEFT JOIN CGHZZLSS ON CGHZZLS.cghzbh = CGHZZLSS.cghzbh');
    sql.add('            AND CGHZZLS.clbh   = CGHZZLSS.clbh  AND CGHZZLS.size   = CGHZZLSS.size');
    sql.add('            AND CGHZZLS.dgdh   = CGHZZLSS.dgdh  LEFT JOIN ZSZL     ON ZSZL.zsdh      = CGHZZLSS.zsbh');
    sql.add('LEFT JOIN CLZL     ON CGHZZLS.clbh   = CLZL.cldh');
    sql.add('LEFT JOIN DDZL     ON CGHZZLS.zlbh   = DDZL.zlbh');
    sql.Add('left join KFZl on KFZl.KFDH=DDZl.KHBH ');
    sql.add('LEFT JOIN XXZL     ON XXZL.XieXing   = DDZL.XieXing  AND XXZL.SheHao    = DDZL.SheHao');
    sql.add('LEFT JOIN HBCGZL   ON CGHZZLS.cghzbh = HBCGZL.cgbh');
    sql.add('LEFT JOIN (SELECT MAX(jhzl.slrq) AS slrq, jhzls.dgdh  FROM jhzls');
    sql.add('                    LEFT JOIN jhzl ON jhzls.sldh = jhzl.sldh');
    sql.add('                   GROUP BY jhzls.dgdh) AS VJHZL  ON CGHZZLS.dgdh   = VJHZL.dgdh');
    sql.add('LEFT JOIN (SELECT EXZLSS.ZLBH,EXZLSS.CLDH,EXZLSS.SIZE,');
    sql.add('             MAX(HGZL.CON_DATE) as Con_Date,max(HGZL.SHLB) as SHLB,max(EXZL.CON_NO) as CON_NO');
    sql.add('                  FROM EXZLSS');
    sql.add('           LEFT JOIN EXZL ON EXZLSS.EXNO=EXZL.EXNO');
    sql.add('           LEFT JOIN HGZL ON EXZL.CON_NO=HGZL.CON_NO');
    sql.add('           GROUP BY EXZLSS.ZLBH,EXZLSS.CLDH,EXZLSS.SIZE ) AS CONZL');
    sql.add('                 ON CGHZZLS.clbh   = CONZL.cldh  AND CGHZZLS.ZLBH= CONZL.ZLBH  AND CGHZZLS.size= CONZL.size');
    sql.add('LEFT JOIN (SELECT MAX(jhzl.sldh1) AS acc_no, jhzls.dgdh  FROM jhzls');
    sql.add('                    LEFT JOIN jhzl ON jhzls.sldh = jhzl.sldh');
    sql.add('                    GROUP BY jhzls.dgdh) AS ACCNOZL  ON CGHZZLS.dgdh   = ACCNOZL.dgdh');
    sql.add('WHERE CGHZZLS.cghzbh IN (SELECT DISTINCT cgbh  FROM ZLZL');
    sql.add('                                                LEFT JOIN DDZL ON DDZL.zlbh = ZLZL.zlbh');
    sql.add('                                                WHERE DDZL.gsdh      = '+''''+'LAI'+''''+')');
    sql.add('              AND CGHZZLS.size = '+''''+'ZZZZZZ'+'''');
    sql.add('              AND CGHZZLS.zlbh like '+''''+edit1.text+'%'+'''' );
    if CB2.checked then
      begin
        sql.add('and convert(smalldatetime,convert(varchar,DDZl.ShipDate,111)) between ');
        sql.add(''''+formatdatetime('yyyy/MM/dd',sdate)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',edate)+'''' );
      end;
    sql.add('and CLZL.CLDh like '+''''+edit2.Text+'%'+'''');
    sql.add('and KFZL.KFJC like '+''''+'%'+edit3.Text+'%'+'''');
    sql.add('and XXZl.Article like '+''''+edit4.text+'%'+'''');
    sql.add('and DDZl.GSBH='+''''+main.edit2.text+'''');      
    if CBX1.checked then
      begin
        sql.add('and CLZl.CQDH='+''''+'TW'+'''');
      end;
    sql.add('GROUP BY CGHZZLS.dgdh,CGHZZLS.zlbh,XXZL.XieMing,ZSZL.zsjc,CLZL.cldh,');
    sql.add('                  CLZL.dwbh,CGHZZLSS.cqdh,CGHZZLSS.hf_date,  DDZL.SHIPDATE,HBCGZL.ZXRQ');
    sql.add('                    ,DDZL.PAIRS,VJHZL.SLRQ,CGHZZLSS.zd_date,  CGHZZLSS.cghzbh,CGHZZLSS.zzbz,CGHZZLSS.dg_date,');
    sql.add('                   CONZL.Con_Date,CONZL.SHLB,CONZL.CON_NO,ZSZL.zsywjc,CLZL.ywpm,CLZL.Zwpm,  DDZL.KHPO,DDZL.ARTICLE,ACCNOZL.acc_no,');
    sql.add('                   CLZL.pumadh,HBCGZL.KBBH');
    active:=true;
  end;


end;

procedure TPurListTW.CB2Click(Sender: TObject);
begin
if CB2.Checked then
  begin
    L1.Visible:=true;
    L2.Visible:=true;
    CBX2.Visible:=true;
    CBX3.Visible:=true;
  end
  else
    begin  
      L1.Visible:=false;
      L2.Visible:=false;
      CBX2.Visible:=false;
      CBX3.Visible:=false;
    end;

end;

procedure TPurListTW.Button2Click(Sender: TObject);
var   a:string;
      eclApp,WorkBook:olevariant;
 //     xlsFileName:string;
      i,j:integer;
 begin
  if  TWCG.active  then
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
        for   i:=0   to   TWCG.fieldcount-1   do
          begin
              eclApp.Cells(1,i+1):=TWCG.fields[i].FieldName;
          end;

        TWCG.First;
        j:=2;
        while   not   TWCG.Eof   do
          begin
            for   i:=0   to  TWCG.fieldcount-1  do
            begin
              eclApp.Cells(j,i+1):=TWCG.Fields[i].Value;
            end;
          TWCG.Next;
          inc(j);
          end;
      eclapp.columns.autofit;
       eclApp.Visible:=True;  
       showmessage('Succeed');
      except
        on   F:Exception   do
          showmessage(F.Message);
      end;
    end;


end;

procedure TPurListTW.FormDestroy(Sender: TObject);
begin
PurListTW:=nil;
end;

end.
