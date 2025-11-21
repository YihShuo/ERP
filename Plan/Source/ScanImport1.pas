unit ScanImport1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GridsEh, DBGridEh, DB, DBTables, StdCtrls, Grids, DBGrids,
  ExtCtrls,dateutils;

type
  TScanImport = class(TForm)
    Qtemp: TQuery;
    SMZL: TQuery;
    UpSMZL: TUpdateSQL;
    SCBB: TQuery;
    DS1: TDataSource;
    DS2: TDataSource;
    Panel1: TPanel;
    DBGridEh1: TDBGridEh;
    Panel2: TPanel;
    DBGrid1: TDBGridEh;
    SCBBS: TQuery;
    DS3: TDataSource;
    SCBBSS: TQuery;
    DS4: TDataSource;
    SCBBSProNo: TStringField;
    SCBBSSCBH: TStringField;
    SCBBSGXLB: TStringField;
    SCBBSQty: TFloatField;
    SCBBSBZLB: TStringField;
    SCBBSUSERID: TStringField;
    SCBBSUSERDATE: TDateTimeField;
    SCBBSYN: TStringField;
    SMZLSMNO: TFloatField;
    SMZLCODEBAR: TStringField;
    SMZLCTS: TIntegerField;
    SMZLDepNO: TStringField;
    SMZLDDBH: TStringField;
    SMZLYSBH: TStringField;
    SMZLGXLB: TStringField;
    SMZLXXCC: TStringField;
    SMZLQty: TIntegerField;
    SMZLGSBH: TStringField;
    DBGridEh2: TDBGridEh;
    SCBBSSProNo: TStringField;
    SCBBSSSCBH: TStringField;
    SCBBSSXXCC: TStringField;
    SCBBSSGXLB: TStringField;
    SCBBSSQty: TFloatField;
    SCBBProNO: TStringField;
    SCBBSCDate: TStringField;
    SCBBSJXH: TStringField;
    SCBBDepNO: TStringField;
    SCBBGSBH: TStringField;
    SCBBUSERID: TStringField;
    SCBBUSERDate: TDateTimeField;
    SCBBYN: TStringField;
    Panel3: TPanel;
    Button1: TButton;
    Timer1: TTimer;
    Label1: TLabel;
    SMZLScanDate: TDateTimeField;
    SMZLUSERDATE: TDateTimeField;
    SMZLUSERID: TStringField;
    SMZLYN: TStringField;
    SMZLSB: TStringField;
    SMZLScanDate2: TStringField;
    Label2: TLabel;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ScanImport: TScanImport;

implementation

uses main1, DM3;

{$R *.dfm}

procedure TScanImport.FormDestroy(Sender: TObject);
begin
ScanImport:=nil;
end;

procedure TScanImport.FormClose(Sender: TObject; var Action: TCloseAction);
begin
action:=cafree;    
end;

procedure TScanImport.Button1Click(Sender: TObject);  
var a :string;
begin
//在A3及B1廠掃描正式用之前采用的臨時程序

SCBBSS.Active:=false;
SCBBS.Active:=false;
SCBB.Active:=false;
SMZL.Active:=false;
Qtemp.Active:=false;
with Qtemp do
  begin
    active:=false;
    sql.Clear;
{    sql.add('insert into SMZLOld ');
    sql.add('select SMNO,CODEBAR,CTS,DepNO,ScanDate,UserDate,UserID,YN');
    sql.add('from SMZL');
    sql.add('where SB is null');
//    sql.add('      and (DepNO like '+''''+'A3%'+''''+' or DepNO like '+''''+'VB1%'+''''+')');
    sql.add('update SMZL');
    sql.add('set SB='+''''+'2'+'''');
    sql.add('where SB is null');
//    sql.add('      and (DepNO like '+''''+'A3%'+''''+' or DepNO like '+''''+'VB1%'+''''+')');
    sql.add('      and exists(select SMNO from SMZLOld where SMZLOld.SMNO=SMZL.SMNO )');
    execsql; }
  end;

//臨時程序結束
SMZL.Active:=true; 
if SMZL.recordcount=0 then
  begin
    SMZl.active:=false;
    abort;
  end;
with SCBB do
  begin
    active:=false;
    sql.Clear;
    sql.Add('select ProNO,convert(varchar,SCDate,111) as SCDate,SJXH,DepNO ');
    sql.add('        ,GSBH,USERID,USERDate,SCBB.YN');
    sql.add('from SCBB');
    sql.add('where SCDate=:SCANDate2');
    sql.add('         and DepNO=:DepNO');
    sql.add('order by SJXH');
    Active:=true;
  end;
SCBBS.Active:=true;
SCBBSS.Active:=true;
with Qtemp do
  begin
    try
      while not SMZL.eof do
        begin
          if SCBB.Locate('DepNO;SCDATE',vararrayof([SMZL.FieldByName('DepNO').value,formatdatetime('yyyy/MM/dd',SMZL.FieldByName('SCANDate').value)]),[]) then
            begin
              //showmessage(SMZL.FieldByName('SMNO').value);
              //SCBBS.Active:=true;
              if SCBBS.Locate('SCBH;GXLB',vararrayof([SMZL.FieldByName('YSBH').value,SMZL.FieldByName('GXLB').value]),[]) then
                begin
                  //SCBBSS.Active:=true;
                  if SCBBSS.Locate('XXCC',SMZL.FieldByName('XXCC').value,[]) then
                    begin
                      active:=false;
                      sql.Clear;
                      sql.add('update SCBBSS ');
                      sql.add('set Qty=Qty+'+''''+SMZL.fieldbyname('Qty').AsString+'''');
                      sql.add('where ProNO='+''''+SCBBS.fieldbyname('ProNO').Value+'''');
                      sql.add('      and SCBH='+''''+SMZL.fieldbyname('YSBH').Value+'''');
                      sql.add('      and GXLB='+''''+SMZL.fieldbyname('GXLB').Value+'''');
                      sql.add('      and XXCC='+''''+SMZL.fieldbyname('XXCC').Value+'''');
                      sql.Add('update SCBB ');
                      sql.add('set YN='+''''+'2'+'''');
                      sql.add('where ProNo='+''''+SCBB.fieldbyname('ProNO').Value+'''');
                      execsql;
                      SCBBSS.Active:=false;
                      SCBBSS.active:=true;
                    end
                    else
                      begin
                        active:=false;
                        sql.Clear;
                        sql.add('insert into SCBBSS ');  ;
                        sql.add('(ProNO,SCBH,XXCC,GXLB,Qty)');
                        sql.add('values('+''''+SCBBS.fieldbyname('ProNO').value+''''+',');
                        SQL.add('          '''+SMZL.fieldbyname('YSBH').value+''''+',');
                        SQL.add('          '''+SMZL.fieldbyname('XXCC').value+''''+',');
                        SQL.add('          '''+SMZL.fieldbyname('GXLB').value+''''+',');
                        SQL.add('          '''+SMZL.fieldbyname('Qty').asstring+''''+')');
                        sql.Add('update SCBB ');
                        sql.add('set YN='+''''+'2'+'''');
                        sql.add('where ProNo='+''''+SCBB.fieldbyname('ProNO').Value+'''');
                        execsql;
                        SCBBSS.Active:=false;
                        SCBBSS.active:=true;
                      end;
                end
                else
                  begin
                    active:=false;
                    sql.Clear;
                    sql.add('insert into SCBBS ');  ;
                    sql.add('(ProNO,SCBH,GXLB,Qty,BZLB,USERID,USERDATE,YN)');
                    sql.add('values('+''''+SCBB.fieldbyname('ProNO').value+''''+',');
                    SQL.add('          '''+SMZL.fieldbyname('YSBH').value+''''+',');
                    SQL.add('          '''+SMZL.fieldbyname('GXLB').value+''''+',0,null,');
                    SQL.add('          '''+main.edit1.text+''''+',getdate(),'+''''+'1'+''''+')');
                    sql.add('insert into SCBBSS ');  ;
                    sql.add('(ProNO,SCBH,XXCC,GXLB,Qty)');
                    sql.add('values('+''''+SCBB.fieldbyname('ProNO').value+''''+',');
                    SQL.add('          '''+SMZL.fieldbyname('YSBH').value+''''+',');
                    SQL.add('          '''+SMZL.fieldbyname('XXCC').value+''''+',');
                    SQL.add('          '''+SMZL.fieldbyname('GXLB').value+''''+',');
                    SQL.add('          '''+SMZL.fieldbyname('Qty').asstring+''''+')');
                    sql.Add('update SCBB ');
                    sql.add('set YN='+''''+'2'+'''');
                    sql.add('where ProNo='+''''+SCBB.fieldbyname('ProNO').Value+'''');
                    execsql;
                    SCBBS.Active:=false;
                    SCBBS.active:=true;
                  end;
              active:=false;
            end
            else
              begin
                active:=false;
                sql.Clear;
                sql.add('select top 1 ProNO from SCBB order by ProNO Desc ');
                active:=true;
                if recordcount>0 then
                  begin
                    a:=fieldbyname('ProNO').Value;
                    a:=inttostr(strtoint(a)+1);
                    while length(a)<10 do
                      begin
                        a:='0'+a;
                      end;
                  end
                  else
                    begin
                      a:='0000000001';
                    end;
                active:=false;
                sql.Clear;
                sql.add('insert into SCBB ');  ;
                sql.add('(ProNO,SCDATE,SJXH,DepNO,GSBH,USERID,USERDATE,YN)');
                sql.add('values('+''''+a+''''+',');
                SQL.add('          '''+formatdatetime('yyyy/MM/dd',SMZL.FieldByName('SCANDate').value)+''''+','+''''+'00'+''''+',');
                SQL.add('          '''+SMZL.fieldbyname('DepNo').value+''''+',');
                SQL.add('          '''+SMZL.fieldbyname('GSBH').value+''''+',');
                SQL.add('          '''+main.edit1.text+''''+',getdate(),'+''''+'2'+''''+')');
                sql.add('insert into SCBBS ');  ;
                sql.add('(ProNO,SCBH,GXLB,Qty,BZLB,USERID,USERDATE,YN)');
                sql.add('values('+''''+a+''''+',');
                SQL.add('          '''+SMZL.fieldbyname('YSBH').value+''''+',');
                SQL.add('          '''+SMZL.fieldbyname('GXLB').value+''''+',0,null,');
                SQL.add('          '''+main.edit1.text+''''+',getdate(),'+''''+'1'+''''+')');
                sql.add('insert into SCBBSS ');  ;
                sql.add('(ProNO,SCBH,XXCC,GXLB,Qty)');
                sql.add('values('+''''+a+''''+',');
                SQL.add('          '''+SMZL.fieldbyname('YSBH').value+''''+',');
                SQL.add('          '''+SMZL.fieldbyname('XXCC').value+''''+',');
                SQL.add('          '''+SMZL.fieldbyname('GXLB').value+''''+',');
                SQL.add('          '''+SMZL.fieldbyname('Qty').asstring+''''+')');
                execsql;
                SCBB.Active:=false;
                SCBB.active:=true;
              end;
          active:=false;
          sql.Clear;
          sql.Add('insert into SMZLOld ');
          sql.add('(SMNO,CODEBAR,CTS,DepNO,ScanDate,USERDate,USERID,YN)');
          sql.add('values('+''''+SMZL.fieldbyname('SMNO').Asstring+''''+',');
          sql.add('          '''+SMZL.fieldbyname('CODEBAR').asstring+''''+',');
          sql.add('          '''+inttostr(SMZL.fieldbyname('CTS').value)+''''+',');
          sql.add('          '''+SMZL.fieldbyname('DepNO').asstring+''''+',');
          sql.add('          '''+formatdatetime('yyyy/MM/dd HH:mm:ss',SMZL.fieldbyname('ScanDate').value)+''''+',');
          sql.add('          '''+formatdatetime('yyyy/MM/dd HH:mm:ss',SMZL.fieldbyname('USERDate').value)+''''+',');
          sql.add('          '''+SMZL.fieldbyname('USERID').asstring+''''+',');
          sql.add('          '''+SMZL.fieldbyname('YN').asstring+''''+')');
          execsql;
          SMZL.Next;
        end;
    except
      showmessage(SMZL.FieldByName('SMNO').value);
    end;
    //finally
      SCBB.active:=false;
      SCBB.sql.clear;   //顯示所有有新增或更改到的生產報表
      SCBB.sql.add('select ProNO,convert(varchar,SCDate,111) as SCDate,SJXH,DepNO ');
      SCBB.SQL.add('       ,GSBH,USERID,USERDate,SCBB.YN from SCBB ');
      SCBB.sql.add('where YN='+''''+'2'+'''');
      SCBB.sql.add('order by DepNO,ScDate ');
      SCBB.active:=true;
      active:=false;
      sql.clear;  
      //將基准產能加上
      sql.add('update SCBBS ');
      sql.add('set BZLB=(select  SCXXCL.BZLB ');
      sql.add('          from (select max(SCXXCL.BZLB) as BZLB,ZLZL.ZLBH,SCXXCL.GXLB ');
      sql.add('                from  ZLZL  ');
      sql.add('                left join DDZL on DDZL.ZLBH=ZLZL.ZLBH ');
      sql.add('                left join SCXXCL on SCXXCL.XieXing=DDZL.XieXIng  ');
      sql.add('                group by ZLZL.ZLBH ,SCXXCL.GXLB) SCXXCL where SCXXCL.ZLBH=SCBBS.SCBH and SCXXCL.GXLB=SCBBS.GXLB )');
      sql.add(' where BZLB is null');
      sql.add('       and exists(select SCBB.ProNo from SCBB where SCBB.ProNo=SCBBS.ProNo and SCBB.YN='+''''+'2'+''''+')');
      //sql.add('        and convert(varchar,SCBB.SCDate,111) between ');
      //sql.add('        '''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+''''+')');
      //將新增或更改到的生產報表正常狀態
      sql.add('update SCBBS ');
      sql.add('set Qty=(select sum(SCBBSS.Qty) as Qty from SCBBSS ');
      sql.add('         where SCBBS.ProNO=SCBBSS.ProNO and SCBBS.SCBH=SCBBSS.SCBH and SCBBS.GXLB=SCBBSS.GXLB');
      sql.add('         group by SCBBSS.ProNO,SCBBSS.SCBH,SCBBSS.GXLB )');
      sql.add('where exists(select ProNO from SCBB ');
      sql.add('             where SCBB.ProNO=SCBBS.ProNO');
      sql.add('                   and SCBB.YN='+''''+'2'+''''+')');
      sql.add('      and exists(select ProNO from SCBBSS where SCBBS.PRoNO=SCBBSS.ProNO ') ;
      sql.add('                        and SCBBS.GXLB=SCBBSS.GXLB and SCBBS.SCBH=SCBBSS.SCBH)');
      sql.add('update SCBB ');
      sql.add('set YN='+''''+'1'+'''');
      sql.add('where YN='+''''+'2'+'''');
      execsql;

      active:=false;
      sql.Clear;
      sql.add('update SMZL ');
      sql.add('set SB='+''''+'2'+'''');
      sql.add('where SB is null');
      sql.add('      and exists(select SMNO from SMZLOld where SMZL.SMNO=SMZLOld.SMNO) ');   
      sql.add('delete SMZL ');
      sql.add('where SCANDATE<getdate()-15');
//      sql.add('      and SCANDATE<DATEADD(mm, DATEDIFF(mm,0,getdate()), 0) ');
      execsql;
      active:=false;
  end;
SMZL.Active:=false;  {
SCBBSS.Active:=false;
SCBBS.Active:=false;
SCBB.Active:=false;  }

end;

procedure TScanImport.Timer1Timer(Sender: TObject);
var strtime,HH:string;
begin
{
strtime:=formatdatetime('HH:MM:SS',gettime);
HH:=copy(strTime,1,2)  ;
//showmessage(HH);
if HH='23' then
  begin
    if label1.caption='ok' then
      begin
        DM2.DBshipping.connected:=true;
        button1click(nil);
        label1.caption:='nok';
        Qtemp.active:=false;
        SMZL.Active:=false;
        SCBB.Active:=false;
        SCBBS.Active:=false;
        SCBBSS.Active:=false;
        DM2.DBshipping.connected:=false;
      end
  end;
if HH<>'23' then
  begin
    if label1.caption<>'ok' then
      begin
        label1.caption:='ok';
      end
  end;
      }
end;

end.
