unit DCMatExpP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GridsEh, DBGridEh, StdCtrls, ComCtrls, Buttons, ExtCtrls, DB,
  DBTables,comobj;

type
  TDCMatExp = class(TForm)
    Panel1: TPanel;
    LastMonth: TLabel;
    BB1: TBitBtn;
    bbt6: TBitBtn;
    QryPanel: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    CLBH: TEdit;
    QryBtn: TButton;
    YWPM: TEdit;
    TLFLDBGridEh: TDBGridEh;
    DC_TLFLRpt: TQuery;
    DS: TDataSource;
    SDDate: TDateTimePicker;
    Label3: TLabel;
    Label4: TLabel;
    EDDate: TDateTimePicker;
    DC_TLFLRptRKNO: TStringField;
    DC_TLFLRptCLBH: TStringField;
    DC_TLFLRptywpm: TStringField;
    DC_TLFLRptdwbh: TStringField;
    DC_TLFLRptQty: TCurrencyField;
    DC_TLFLRptAQty: TFloatField;
    DC_TLFLRptBQty: TFloatField;
    DC_TLFLRptCQty: TFloatField;
    DC_TLFLRptDQty: TFloatField;
    DC_TLFLRptEQty: TFloatField;
    DC_TLFLRptUserID: TStringField;
    DC_TLFLRptUserDate: TDateTimeField;
    DC_TLFLRptFQty: TFloatField;
    DC_TLFLRptGQty: TFloatField;
    RadioGroup1: TRadioGroup;
    DC_TLFLRptLB: TStringField;
    CK1: TCheckBox;
    CK2: TCheckBox;
    Label5: TLabel;
    UserID: TEdit;
    GroupBox1: TGroupBox;
    AllBox: TRadioButton;
    ExpBox: TRadioButton;
    NorBox: TRadioButton;
    DC_TLFLRptCFMID: TStringField;
    DC_TLFLRptCFMDATE: TDateTimeField;
    CK3: TCheckBox;
    cbNoCFM: TCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure QryBtnClick(Sender: TObject);
    procedure BB1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bbt6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DCMatExp: TDCMatExp;

implementation
  uses main1,FunUnit;
{$R *.dfm}

procedure TDCMatExp.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=Cafree;
end;

procedure TDCMatExp.FormDestroy(Sender: TObject);
begin
  DCMatExp:=nil;
  
end;
//SQL語法
procedure TDCMatExp.QryBtnClick(Sender: TObject);
begin
  //
  if ( ((CK1.Checked=true) and (CK2.Checked=true) and (CK3.Checked=true)) or ((CK1.Checked=true) and (CK2.Checked=true)) or ((CK2.Checked=true) and (CK3.Checked=true)) or ((CK1.Checked=true) and (CK3.Checked=true)) ) then
  begin
    with DC_TLFLRpt do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('Select * from (' );
      //入庫
      if  CK1.Checked=true then
      begin
        SQL.Add('select KCRKS.RKNO as BLNO,''RK'' as LB,KCRKS.CLBH,clzl.ywpm,clzl.dwbh,KCRKS.Qty,DC_TLFL.AQty,DC_TLFL.BQty,DC_TLFL.CQty,DC_TLFL.DQty,DC_TLFL.EQty,DC_TLFL.FQty,DC_TLFL.GQty,KCRKS.UserID,KCRKS.UserDate,KCRK.CFMID,KCRK.CFMDATE  from KCRKS ');
        SQL.Add('left join KCRK on KCRKS.RKNO=KCRK.RKNO ');
        SQL.Add('left join DC_TLFL on KCRKS.RKNO=DC_TLFL.DJBH and KCRKS.CLBH=DC_TLFL.CLBH and KCRKS.CGBH=DC_TLFL.DFL1 and KCRKS.RKSB=DC_TLFL.DFL2 and DC_TLFL.GSBH=KCRK.GSBH and DC_TLFL.LB=1  ');
        SQL.Add('left join clzl on KCRKS.CLBH=clzl.CLDH ');
        SQL.Add('where KCRK.CKBH='''+main.sGSBH+''' and KCRK.GSBH='''+main.sGSBH+''' and convert(varchar,KCRKS.USERDATE,111) between '''+FormatDatetime('YYYY/MM/DD',SDDate.Date)+''' and '''+FormatDatetime('YYYY/MM/DD',EDDate.Date)+''' ');
        if CLBH.Text<>'' then
          SQL.Add(' and (clzl.CLDH like ''%'+CLBH.Text+'%'') ');
        if YWPM.Text<>'' then
          SQL.Add(' and (clzl.YWPM like ''%'+YWPM.Text+'%'') ');
        if UserID.Text<>'' then
          SQL.Add(' and (KCRKS.UserID like ''%'+UserID.Text+'%'') ');
        //顯示異常或正常資料
        if AllBox.Checked=true then
        begin
        end else if ExpBox.Checked=true then
        begin
          SQL.Add('      and (DC_TLFL.AQty is null or DC_TLFL.BQty is null or DC_TLFL.CQty is null or DC_TLFL.DQty is null or DC_TLFL.EQty is null ');
          SQL.Add('           or DC_TLFL.FQty is null or DC_TLFL.GQty is null or ((AQty+BQty+CQty+DQty+EQty+FQty+GQty)<>Qty) )');
        end else if NorBox.Checked=true then
        begin
          SQL.Add(' and ((AQty+BQty+CQty+DQty+EQty+FQty+GQty)=Qty) ');
        end;
        if cbNoCFM.Checked then
          sql.add('and KCRK.CFMID = ''NO'' ');
      end;
      //領料
      if  CK2.Checked=true then
      begin
        if CK1.Checked=true then
           SQL.Add('Union All ');
        SQL.Add('select KCLLS.LLNO as BLNO,''LL'' as LB,KCLLS.CLBH,clzl.ywpm,clzl.dwbh,KCLLS.Qty as Qty,DC_TLFL.AQty,DC_TLFL.BQty,DC_TLFL.CQty,DC_TLFL.DQty,DC_TLFL.EQty,DC_TLFL.FQty,DC_TLFL.GQty,KCLLS.UserID,KCLLS.UserDate,KCLL.CFMID,KCLL.CFMDATE   from KCLLS ');
        SQL.Add('left join KCLL on KCLLS.LLNO=KCLL.LLNO ');
        SQL.Add('left join DC_TLFL on KCLLS.LLNO=DC_TLFL.DJBH and KCLLS.CLBH=DC_TLFL.CLBH and KCLLS.DFL=DC_TLFL.DFL1 and KCLLS.SCBH=DC_TLFL.DFL2 and DC_TLFL.GSBH=KCLL.GSBH and DC_TLFL.LB=2 ');
        SQL.Add('left join clzl on KCLLS.CLBH=clzl.CLDH ');
        SQL.Add('where KCLL.SCBH=''DDDDDDDDDD'' and KCLL.CKBH='''+main.sGSBH+''' and KCLL.GSBH='''+main.sGSBH+''' and convert(varchar,KCLLS.USERDATE,111) between '''+FormatDatetime('YYYY/MM/DD',SDDate.Date)+''' and '''+FormatDatetime('YYYY/MM/DD',EDDate.Date)+''' ');
        if CLBH.Text<>'' then
          SQL.Add(' and (clzl.CLDH like ''%'+CLBH.Text+'%'') ');
        if YWPM.Text<>'' then
          SQL.Add(' and (clzl.YWPM like ''%'+YWPM.Text+'%'') ');
        if UserID.Text<>'' then
          SQL.Add(' and (KCLLS.UserID like ''%'+UserID.Text+'%'') ');
        //顯示異常或正常資料
        if AllBox.Checked=true then
        begin
        end else if ExpBox.Checked=true then
        begin
          SQL.Add('      and (DC_TLFL.AQty is null or DC_TLFL.BQty is null or DC_TLFL.CQty is null or DC_TLFL.DQty is null or DC_TLFL.EQty is null ');
          SQL.Add('           or DC_TLFL.FQty is null or DC_TLFL.GQty is null or ((AQty+BQty+CQty+DQty+EQty+FQty+GQty)<>Qty) )');
        end else if NorBox.Checked=true then
        begin
          SQL.Add(' and ((AQty+BQty+CQty+DQty+EQty+FQty+GQty)=Qty) ');
        end;
        if cbNoCFM.Checked then
          sql.add('and KCLL.CFMID = ''NO'' ');
      end;
      //加工資料
      if  CK3.Checked=true then
      begin
        if ((CK1.Checked=true) or (CK2.Checked=true)) then
           SQL.Add('Union All ');
        SQL.Add('select JGZLS.JGNO as BLNO,case when JGZLS.ZMLB=''ZZZZZZZZZZ'' then ''JGRK'' else ''JGCK'' end as LB,case when JGZLS.ZMLB=''ZZZZZZZZZZ'' then JGZLS.CLBH else JGZLS.ZMLB end as CLBH,');
        SQL.Add('clzl.ywpm,clzl.dwbh,JGZLS.Qty,DC_TLFL.AQty,DC_TLFL.BQty,DC_TLFL.CQty,DC_TLFL.DQty,DC_TLFL.EQty,DC_TLFL.FQty,DC_TLFL.GQty,JGZLS.UserID,JGZLS.UserDate,JGZL.CFMID1 as CFMID,JGZL.CFMDATE1 as CFMDATE from JGZLS ');
        SQL.Add('left join JGZL on JGZLS.JGNO=JGZL.JGNO ');
        SQL.Add('left join DC_TLFL on JGZLS.JGNO=DC_TLFL.DJBH and JGZLS.CLBH=DC_TLFL.CLBH and  JGZLS.CLBH=DC_TLFL.DFL1 and  JGZLS.ZMLB=DC_TLFL.DFL2 and DC_TLFL.LB=3 ');
        SQL.Add('left join clzl on JGZLS.CLBH=clzl.CLDH ');
        SQL.Add('where JGZL.CKBH='''+main.sGSBH+''' and JGZL.GSBH='''+main.sGSBH+''' and convert(varchar,JGZLS.USERDATE,111) between '''+FormatDatetime('YYYY/MM/DD',SDDate.Date)+''' and '''+FormatDatetime('YYYY/MM/DD',EDDate.Date)+''' ');
        SQL.Add(' and jgzls.zmlb=''ZZZZZZZZZZ''');//star 2014/5/29
        //顯示異常或正常資料
        if AllBox.Checked=true then
        begin
        end else if ExpBox.Checked=true then
        begin
          SQL.Add('      and (DC_TLFL.AQty is null or DC_TLFL.BQty is null or DC_TLFL.CQty is null or DC_TLFL.DQty is null or DC_TLFL.EQty is null ');
          SQL.Add('           or DC_TLFL.FQty is null or DC_TLFL.GQty is null or ((AQty+BQty+CQty+DQty+EQty+FQty+GQty)<>Qty) )');
        end else if NorBox.Checked=true then
        begin
          SQL.Add(' and ((AQty+BQty+CQty+DQty+EQty+FQty+GQty)=Qty) ');
        end;
        if cbNoCFM.Checked then
          sql.add('and JGZL.CFMID1 = ''NO'' ');
      end;
      //
      SQL.Add(') DCMat order by DCMat.LB,DCMat.BLNO,DCMat.CLBH,DCMat.UserID ');
      //
      //funcObj.WriteErrorLog(sql.Text);

      Active:=true;
    end;
  end else if (CK1.Checked=true)  then
  begin
    with DC_TLFLRpt do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('select KCRKS.RKNO as BLNO,''RK'' as LB,KCRKS.CLBH,clzl.ywpm,clzl.dwbh,KCRKS.Qty,DC_TLFL.AQty,DC_TLFL.BQty,DC_TLFL.CQty,DC_TLFL.DQty,DC_TLFL.EQty,DC_TLFL.FQty,DC_TLFL.GQty,KCRKS.UserID,KCRKS.UserDate,KCRK.CFMID,KCRK.CFMDATE  from KCRKS ');
      SQL.Add('left join KCRK on KCRKS.RKNO=KCRK.RKNO ');
      SQL.Add('left join DC_TLFL on KCRKS.RKNO=DC_TLFL.DJBH and KCRKS.CLBH=DC_TLFL.CLBH and  KCRKS.CGBH=DC_TLFL.DFL1 and KCRKS.RKSB=DC_TLFL.DFL2 and DC_TLFL.GSBH=KCRK.GSBH and DC_TLFL.LB=1 ');
      SQL.Add('left join clzl on KCRKS.CLBH=clzl.CLDH ');
      SQL.Add('where KCRK.CKBH='''+main.sGSBH+''' and KCRK.GSBH='''+main.sGSBH+''' and convert(varchar,KCRKS.USERDATE,111) between '''+FormatDatetime('YYYY/MM/DD',SDDate.Date)+''' and '''+FormatDatetime('YYYY/MM/DD',EDDate.Date)+''' ');
      if CLBH.Text<>'' then
        SQL.Add(' and (clzl.CLDH like ''%'+CLBH.Text+'%'') ');
      if YWPM.Text<>'' then
        SQL.Add(' and (clzl.YWPM like ''%'+YWPM.Text+'%'') ');
      if UserID.Text<>'' then
        SQL.Add(' and (KCRKS.UserID like ''%'+UserID.Text+'%'') ');
      //顯示異常或正常資料
      if AllBox.Checked=true then
      begin
      end else if ExpBox.Checked=true then
      begin
        SQL.Add('      and (DC_TLFL.AQty is null or DC_TLFL.BQty is null or DC_TLFL.CQty is null or DC_TLFL.DQty is null or DC_TLFL.EQty is null ');
        SQL.Add('           or DC_TLFL.FQty is null or DC_TLFL.GQty is null or ((AQty+BQty+CQty+DQty+EQty+FQty+GQty)<>Qty) )');
      end else if NorBox.Checked=true then
      begin
        SQL.Add(' and ((AQty+BQty+CQty+DQty+EQty+FQty+GQty)=Qty) ');
      end;
      if cbNoCFM.Checked then
        sql.add('and KCRK.CFMID = ''NO'' ');
      SQL.Add('order by KCRKS.RKNO,KCRKS.CLBH ');
      //
      //funcObj.WriteErrorLog(sql.Text);
      Active:=true;
    end;
  end else if (CK2.Checked=true) then
  begin
    with DC_TLFLRpt do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('select KCLLS.LLNO as BLNO,''LL'' as LB,KCLLS.CLBH,clzl.ywpm,clzl.dwbh,KCLLS.Qty as Qty,DC_TLFL.AQty,DC_TLFL.BQty,DC_TLFL.CQty,DC_TLFL.DQty,DC_TLFL.EQty,DC_TLFL.FQty,DC_TLFL.GQty,KCLLS.UserID,KCLLS.UserDate,KCLL.CFMID,KCLL.CFMDATE   from KCLLS ');
      SQL.Add('left join KCLL on KCLLS.LLNO=KCLL.LLNO ');
      SQL.Add('left join DC_TLFL on KCLLS.LLNO=DC_TLFL.DJBH and KCLLS.CLBH=DC_TLFL.CLBH and KCLLS.DFL=DC_TLFL.DFL1 and KCLLS.SCBH=DC_TLFL.DFL2 and DC_TLFL.GSBH=KCLL.GSBH and DC_TLFL.LB=2 ');
      SQL.Add('left join clzl on KCLLS.CLBH=clzl.CLDH ');
      SQL.Add('where KCLL.SCBH=''DDDDDDDDDD'' and KCLL.CKBH='''+main.sGSBH+''' and KCLL.GSBH='''+main.sGSBH+''' and convert(varchar,KCLLS.USERDATE,111) between '''+FormatDatetime('YYYY/MM/DD',SDDate.Date)+''' and '''+FormatDatetime('YYYY/MM/DD',EDDate.Date)+''' ');
      if CLBH.Text<>'' then
        SQL.Add(' and (clzl.CLDH like ''%'+CLBH.Text+'%'') ');
      if YWPM.Text<>'' then
        SQL.Add(' and (clzl.YWPM like ''%'+YWPM.Text+'%'') ');
      if UserID.Text<>'' then
        SQL.Add(' and (KCLLS.UserID like ''%'+UserID.Text+'%'') ');
      //顯示異常或正常資料
      if AllBox.Checked=true then
      begin
      end else if ExpBox.Checked=true then
      begin
        SQL.Add('      and (DC_TLFL.AQty is null or DC_TLFL.BQty is null or DC_TLFL.CQty is null or DC_TLFL.DQty is null or DC_TLFL.EQty is null ');
        SQL.Add('           or DC_TLFL.FQty is null or DC_TLFL.GQty is null or ((AQty+BQty+CQty+DQty+EQty+FQty+GQty)<>Qty) )');
      end else if NorBox.Checked=true then
      begin
        SQL.Add(' and ((AQty+BQty+CQty+DQty+EQty+FQty+GQty)=Qty) ');
      end;
      if cbNoCFM.Checked then
        sql.add('and KCLL.CFMID = ''NO'' ');
      SQL.Add('order by KCLLS.LLNO,KCLLS.CLBH ');
      //
      //funcObj.WriteErrorLog(sql.Text);
      Active:=true;
    end;
  end else if (CK3.Checked=true) then
  begin
    //
    with DC_TLFLRpt do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('select JGZLS.JGNO as BLNO,case when JGZLS.ZMLB=''ZZZZZZZZZZ'' then ''JGRK'' else ''JGCK'' end as LB,case when JGZLS.ZMLB=''ZZZZZZZZZZ'' then JGZLS.CLBH else JGZLS.ZMLB end as CLBH,');
      SQL.Add('clzl.ywpm,clzl.dwbh,JGZLS.Qty,DC_TLFL.AQty,DC_TLFL.BQty,DC_TLFL.CQty,DC_TLFL.DQty,DC_TLFL.EQty,DC_TLFL.FQty,DC_TLFL.GQty,JGZLS.UserID,JGZLS.UserDate,JGZL.CFMID1 as CFMID,JGZL.CFMDATE1 as CFMDATE from JGZLS ');
      SQL.Add('left join JGZL on JGZLS.JGNO=JGZL.JGNO ');
      SQL.Add('left join DC_TLFL on JGZLS.JGNO=DC_TLFL.DJBH and JGZLS.CLBH=DC_TLFL.CLBH and  JGZLS.CLBH=DC_TLFL.DFL1 and  JGZLS.ZMLB=DC_TLFL.DFL2 and DC_TLFL.LB=3 ');
      SQL.Add('left join clzl on JGZLS.CLBH=clzl.CLDH ');
      SQL.Add('where JGZL.CKBH='''+main.sGSBH+''' and JGZL.GSBH='''+main.sGSBH+''' and convert(varchar,JGZLS.USERDATE,111) between '''+FormatDatetime('YYYY/MM/DD',SDDate.Date)+''' and '''+FormatDatetime('YYYY/MM/DD',EDDate.Date)+''' ');
      SQL.Add(' and jgzls.zmlb=''ZZZZZZZZZZ''');//star 2014/5/29
      if CLBH.Text<>'' then
        SQL.Add(' and (clzl.CLDH like ''%'+CLBH.Text+'%'') ');
      if YWPM.Text<>'' then
        SQL.Add(' and (clzl.YWPM like ''%'+YWPM.Text+'%'') ');
      if UserID.Text<>'' then
        SQL.Add(' and (JGZLS.UserID like ''%'+UserID.Text+'%'') ');
      //顯示異常或正常資料
      if AllBox.Checked=true then
      begin
      end else if ExpBox.Checked=true then
      begin
        SQL.Add('      and (DC_TLFL.AQty is null or DC_TLFL.BQty is null or DC_TLFL.CQty is null or DC_TLFL.DQty is null or DC_TLFL.EQty is null ');
        SQL.Add('           or DC_TLFL.FQty is null or DC_TLFL.GQty is null or ((AQty+BQty+CQty+DQty+EQty+FQty+GQty)<>Qty) )');
      end else if NorBox.Checked=true then
      begin
        SQL.Add(' and ((AQty+BQty+CQty+DQty+EQty+FQty+GQty)=Qty) ');
      end;
      if cbNoCFM.Checked then
        sql.add('and JGZL.CFMID1 = ''NO'' ');
      SQL.Add('order by JGZLS.JGNO,LB,JGZLS.CLBH ');
      //funcObj.WriteErrorLog(sql.Text);
      Active:=true;
    end;
    //
  end else
  begin
    Showmessage('At least Choic RKNO or LLNO! / Chon it nhat mot tuy chon RKNO hoac LLNO');
    abort;
  end;
  //
  QryPanel.Visible:=false;
end;

procedure TDCMatExp.BB1Click(Sender: TObject);
begin
  QryPanel.Visible:=true;
end;

procedure TDCMatExp.FormCreate(Sender: TObject);
var myYear, myMonth, myDay : Word;
begin
  //取得當月初和今天日期
  DecodeDate(Date(), myYear, myMonth, myDay);
  SDDate.Date:=EncodeDate(myYear, myMonth, 1);  //月初日期
  EDDate.Date:=Date();//結束為今天
  //Converse開發中心和 K-Swiss區別顯示
  if main.sGSBH='CDC' then
  begin
    TLFLDBGridEh.Columns[6].Title.caption:='Dev Qty';
    TLFLDBGridEh.Columns[7].Title.caption:='Tech Qty';
    TLFLDBGridEh.Columns[8].Title.caption:='NG Qty';
    TLFLDBGridEh.Columns[9].Title.caption:='Defect Qty';
    TLFLDBGridEh.Columns[10].Visible:=false;
    TLFLDBGridEh.Columns[11].Visible:=false;
    TLFLDBGridEh.Columns[12].Visible:=false;
  end else if main.sGSBH='KDC' then
  begin
    TLFLDBGridEh.Columns[6].Title.Caption:='K-SwissQty';
    TLFLDBGridEh.Columns[7].Title.Caption:='PALLADIUMQty';
    TLFLDBGridEh.Columns[8].Title.Caption:='361Qty';
    TLFLDBGridEh.Columns[9].Title.Caption:='G-STARQty';
    TLFLDBGridEh.Columns[10].Title.Caption:='TOMMYQty';
    TLFLDBGridEh.Columns[11].Title.Caption:='RevQty';
    TLFLDBGridEh.Columns[12].Title.Caption:='RevQty';
    TLFLDBGridEh.Columns[10].Visible:=true;
    TLFLDBGridEh.Columns[11].Visible:=true;
    TLFLDBGridEh.Columns[12].Visible:=true;
  end;
end;

procedure TDCMatExp.bbt6Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin
    if  DC_TLFLRpt.active  then
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
          for   i:=0   to   DC_TLFLRpt.fieldcount-1   do  //最後兩個是備用欄位目前用不到
            begin
                eclApp.Cells(1,i+1):=DC_TLFLRpt.fields[i].FieldName;
            end;

          DC_TLFLRpt.First;
          j:=2;
          while   not   DC_TLFLRpt.Eof   do
            begin
              for   i:=0   to  DC_TLFLRpt.fieldcount-1  do   //最後兩個是備用欄位目前用不到
              begin
                eclApp.Cells(j,i+1):=DC_TLFLRpt.Fields[i].Value;
              end;
            DC_TLFLRpt.Next;
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
