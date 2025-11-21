unit Daily_Scan_Import1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DB, DBTables, StdCtrls, GridsEh, DBGridEh, ADODB,iniFiles;

type
  TDaily_Scan_Import = class(TForm)
    Panel1: TPanel;
    DBGridEh1: TDBGridEh;
    Panel2: TPanel;
    DBGrid1: TDBGridEh;
    DBGridEh2: TDBGridEh;
    Panel3: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    UpSMZL: TUpdateSQL;
    DS1: TDataSource;
    DS2: TDataSource;
    DS3: TDataSource;
    DS4: TDataSource;
    Timer1: TTimer;
    ADOConn: TADOConnection;
    ADOSMZL: TADOQuery;
    ADOQTemp: TADOQuery;
    ADOSCBBS: TADOQuery;
    ADOSCBBSS: TADOQuery;
    ADOSCBB: TADOQuery;
    ADOSMZLSMNO: TLargeintField;
    ADOSMZLCODEBAR: TStringField;
    ADOSMZLCTS: TIntegerField;
    ADOSMZLDepNO: TStringField;
    ADOSMZLScanDate: TDateTimeField;
    ADOSMZLUSERDATE: TDateTimeField;
    ADOSMZLUSERID: TStringField;
    ADOSMZLYN: TStringField;
    ADOSMZLSB: TStringField;
    ADOSMZLDDBH: TStringField;
    ADOSMZLYSBH: TStringField;
    ADOSMZLGXLB: TStringField;
    ADOSMZLXXCC: TStringField;
    ADOSMZLQty: TIntegerField;
    ADOSMZLGSBH: TStringField;
    ADOSMZLScanDate2: TStringField;
    ADOSCBBSSProNo: TStringField;
    ADOSCBBSSSCBH: TStringField;
    ADOSCBBSSXXCC: TStringField;
    ADOSCBBSSGXLB: TStringField;
    ADOSCBBSSQty: TBCDField;
    ADOSCBBSProNo: TStringField;
    ADOSCBBSSCBH: TStringField;
    ADOSCBBSGXLB: TStringField;
    ADOSCBBSQty: TBCDField;
    ADOSCBBSBZLB: TStringField;
    ADOSCBBSUSERID: TStringField;
    ADOSCBBSUSERDATE: TDateTimeField;
    ADOSCBBSYN: TStringField;
    ADOSCBBProNO: TStringField;
    ADOSCBBSCDate: TStringField;
    ADOSCBBSJXH: TStringField;
    ADOSCBBDepNO: TStringField;
    ADOSCBBGSBH: TStringField;
    ADOSCBBUSERID: TStringField;
    ADOSCBBUSERDate: TDateTimeField;
    ADOSCBBYN: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    procedure Readini();
    procedure Auto_Run();
    { Private declarations }
  public
    SourUser,SourPass:string;
    SourIP,SourDB:String;
    DaySpecD1,DaySpecD2:String;
    DaySpecD11,DaySpecD22:String;
    CheckD:String;

    { Public declarations }
  end;

var
  Daily_Scan_Import: TDaily_Scan_Import;

implementation

{$R *.dfm}
uses Fununit;

procedure TDaily_Scan_Import.Auto_Run();
var a :string;
begin
 try
    //在A3及B1廠掃描正式用之前采用的臨時程序
    ADOSCBBSS.Active:=false;
    ADOSCBBS.Active:=false;
    ADOSCBB.Active:=false;
    ADOSMZL.Active:=false;
    ADOQtemp.Active:=false;
    with ADOQtemp do
      begin
        active:=false;
        sql.Clear;
      end;

    //臨時程序結束
    ADOSMZL.Active:=true;
    if ADOSMZL.recordcount=0 then
      begin
        ADOSMZl.active:=false;
        abort;
      end;
    with ADOSCBB do
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
    ADOSCBBS.Active:=true;
    ADOSCBBSS.Active:=true;
    with ADOQtemp do
      begin
        try
          while not ADOSMZL.eof do
            begin
              if ADOSCBB.Locate('DepNO;SCDATE',vararrayof([ADOSMZL.FieldByName('DepNO').value,formatdatetime('yyyy/MM/dd',ADOSMZL.FieldByName('SCANDate').value)]),[]) then
                begin
                  //showmessage(SMZL.FieldByName('SMNO').value);
                  //SCBBS.Active:=true;
                  if ADOSCBBS.Locate('SCBH;GXLB',vararrayof([ADOSMZL.FieldByName('YSBH').value,ADOSMZL.FieldByName('GXLB').value]),[]) then
                    begin
                      //SCBBSS.Active:=true;
                      if ADOSCBBSS.Locate('XXCC',ADOSMZL.FieldByName('XXCC').value,[]) then
                        begin
                          active:=false;
                          sql.Clear;
                          sql.add('update SCBBSS ');
                          sql.add('set Qty=Qty+'+''''+ADOSMZL.fieldbyname('Qty').AsString+'''');
                          sql.add('where ProNO='+''''+ADOSCBBS.fieldbyname('ProNO').Value+'''');
                          sql.add('      and SCBH='+''''+ADOSMZL.fieldbyname('YSBH').Value+'''');
                          sql.add('      and GXLB='+''''+ADOSMZL.fieldbyname('GXLB').Value+'''');
                          sql.add('      and XXCC='+''''+ADOSMZL.fieldbyname('XXCC').Value+'''');
                          sql.Add('update SCBB ');
                          sql.add('set YN='+''''+'2'+'''');
                          sql.add('where ProNo='+''''+ADOSCBB.fieldbyname('ProNO').Value+'''');
                          execsql;
                          ADOSCBBSS.Active:=false;
                          ADOSCBBSS.active:=true;
                        end
                        else
                          begin
                            active:=false;
                            sql.Clear;
                            sql.add('insert into SCBBSS ');  ;
                            sql.add('(ProNO,SCBH,XXCC,GXLB,Qty)');
                            sql.add('values('+''''+ADOSCBBS.fieldbyname('ProNO').value+''''+',');
                            SQL.add('          '''+ADOSMZL.fieldbyname('YSBH').value+''''+',');
                            SQL.add('          '''+ADOSMZL.fieldbyname('XXCC').value+''''+',');
                            SQL.add('          '''+ADOSMZL.fieldbyname('GXLB').value+''''+',');
                            SQL.add('          '''+ADOSMZL.fieldbyname('Qty').asstring+''''+')');
                            sql.Add('update SCBB ');
                            sql.add('set YN='+''''+'2'+'''');
                            sql.add('where ProNo='+''''+ADOSCBB.fieldbyname('ProNO').Value+'''');
                            execsql;
                            ADOSCBBSS.Active:=false;
                            ADOSCBBSS.active:=true;
                          end;
                    end
                    else
                      begin
                        active:=false;
                        sql.Clear;
                        sql.add('insert into SCBBS ');  ;
                        sql.add('(ProNO,SCBH,GXLB,Qty,BZLB,USERID,USERDATE,YN)');
                        sql.add('values('+''''+ADOSCBB.fieldbyname('ProNO').value+''''+',');
                        SQL.add('          '''+ADOSMZL.fieldbyname('YSBH').value+''''+',');
                        SQL.add('          '''+ADOSMZL.fieldbyname('GXLB').value+''''+',0,null,');
                        SQL.add('          '+''''+'System'+''''+',getdate(),'+''''+'1'+''''+')');
                        sql.add('insert into SCBBSS ');  ;
                        sql.add('(ProNO,SCBH,XXCC,GXLB,Qty)');
                        sql.add('values('+''''+ADOSCBB.fieldbyname('ProNO').value+''''+',');
                        SQL.add('          '''+ADOSMZL.fieldbyname('YSBH').value+''''+',');
                        SQL.add('          '''+ADOSMZL.fieldbyname('XXCC').value+''''+',');
                        SQL.add('          '''+ADOSMZL.fieldbyname('GXLB').value+''''+',');
                        SQL.add('          '''+ADOSMZL.fieldbyname('Qty').asstring+''''+')');
                        sql.Add('update SCBB ');
                        sql.add('set YN='+''''+'2'+'''');
                        sql.add('where ProNo='+''''+ADOSCBB.fieldbyname('ProNO').Value+'''');
                        execsql;
                        ADOSCBBS.Active:=false;
                        ADOSCBBS.active:=true;
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
                    SQL.add('          '''+formatdatetime('yyyy/MM/dd',ADOSMZL.FieldByName('SCANDate').value)+''''+','+''''+'00'+''''+',');
                    SQL.add('          '''+ADOSMZL.fieldbyname('DepNo').value+''''+',');
                    SQL.add('          '''+ADOSMZL.fieldbyname('GSBH').value+''''+',');
                    SQL.add('          '+''''+'System'+''''+',getdate(),'+''''+'2'+''''+')');
                    sql.add('insert into SCBBS ');  ;
                    sql.add('(ProNO,SCBH,GXLB,Qty,BZLB,USERID,USERDATE,YN)');
                    sql.add('values('+''''+a+''''+',');
                    SQL.add('          '''+ADOSMZL.fieldbyname('YSBH').value+''''+',');
                    SQL.add('          '''+ADOSMZL.fieldbyname('GXLB').value+''''+',0,null,');
                    SQL.add('          '+''''+'System'+''''+',getdate(),'+''''+'1'+''''+')');
                    sql.add('insert into SCBBSS ');  ;
                    sql.add('(ProNO,SCBH,XXCC,GXLB,Qty)');
                    sql.add('values('+''''+a+''''+',');
                    SQL.add('          '''+ADOSMZL.fieldbyname('YSBH').value+''''+',');
                    SQL.add('          '''+ADOSMZL.fieldbyname('XXCC').value+''''+',');
                    SQL.add('          '''+ADOSMZL.fieldbyname('GXLB').value+''''+',');
                    SQL.add('          '''+ADOSMZL.fieldbyname('Qty').asstring+''''+')');
                    execsql;
                    ADOSCBB.Active:=false;
                    ADOSCBB.active:=true;
                  end;
              active:=false;
              sql.Clear;
              sql.Add('insert into SMZLOld ');
              sql.add('(SMNO,CODEBAR,CTS,DepNO,ScanDate,USERDate,USERID,YN)');
              sql.add('values('+''''+ADOSMZL.fieldbyname('SMNO').Asstring+''''+',');
              sql.add('          '''+ADOSMZL.fieldbyname('CODEBAR').asstring+''''+',');
              sql.add('          '''+inttostr(ADOSMZL.fieldbyname('CTS').value)+''''+',');
              sql.add('          '''+ADOSMZL.fieldbyname('DepNO').asstring+''''+',');
              sql.add('          '''+formatdatetime('yyyy/MM/dd HH:mm:ss',ADOSMZL.fieldbyname('ScanDate').value)+''''+',');
              sql.add('          '''+formatdatetime('yyyy/MM/dd HH:mm:ss',ADOSMZL.fieldbyname('USERDate').value)+''''+',');
              sql.add('          '''+ADOSMZL.fieldbyname('USERID').asstring+''''+',');
              sql.add('          '''+ADOSMZL.fieldbyname('YN').asstring+''''+')');
              execsql;
              ADOSMZL.Next;
            end;
        except
          showmessage(ADOSMZL.FieldByName('SMNO').value);
        end;
        //finally
         { ADOSCBB.active:=false;
          ADOSCBB.sql.clear;   //顯示所有有新增或更改到的生產報表
          ADOSCBB.sql.add('select ProNO,convert(varchar,SCDate,111) as SCDate,SJXH,DepNO ');
          ADOSCBB.SQL.add('       ,GSBH,USERID,USERDate,SCBB.YN from SCBB ');
          ADOSCBB.sql.add('where SCBB.YN='+''''+'2'+'''');
          ADOSCBB.sql.add('order by DepNO,ScDate ');
          ADOSCBB.active:=true;    }
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
    ADOSMZL.Active:=false;
  except
    on E:Exception  do
    begin
      funcObj.WriteErrorLog(datetimetostr(now)+' Error:'+E.Message);
    end;
  end;

end;

procedure TDaily_Scan_Import.FormCreate(Sender: TObject);
begin
  FuncObj:=TFuncObj.Create;
  FuncObj.setParameter(true,ExtractFilePath(Application.ExeName));
  Readini();
  CheckD:=formatdatetime('yyyy/mm/dd',now);
  if ParamCount=1 then
  begin
    if ParamStr(1)='Auto_Run' then
    begin
      CheckD:=formatdatetime('yyyy/mm/dd',now);
      if ((dayofweek(now)=2) or (CheckD=DaySpecD1) or (CheckD=DaySpecD2))  then
      begin
        Application.Terminate;
      end else
      begin
       Application.ShowMainForm:=false;
       funcObj.WriteErrorLog(datetimetostr(now)+' Start');
       Auto_Run();
       funcObj.WriteErrorLog(datetimetostr(now)+' End');
       Application.Terminate;
      end;
    end;
    //
  end;
end;
procedure TDaily_Scan_Import.Readini();
var ini:TiniFile;
begin
  try
    ini:=TiniFile.Create(ExtractFilePath(Application.ExeName)+'\IP.ini');
    SourIP:=ini.ReadString('Source','IP','192.168.23.156');
    SourDB:=ini.ReadString('Source','DB','LIY_ERP');
    SourUser:=ini.ReadString('Source','User','sa');
    SourPass:=ini.ReadString('Source','Pass','jack');

    DaySpecD1:= ini.ReadString('DaySpec','D1','2015/04/30');
    DaySpecD2:= ini.ReadString('DaySpec','D2','2015/04/30');

    ADOConn.ConnectionString:='Provider=SQLOLEDB.1;Password='+SourPass+';Persist Security Info=True;User ID='+SourUser+';Initial Catalog='+SourDB+';Data Source='+SourIP;
   
  Finally
    ini.Free;
  end;
end;

procedure TDaily_Scan_Import.Button1Click(Sender: TObject);
begin
  Auto_Run();
end;

procedure TDaily_Scan_Import.FormDestroy(Sender: TObject);
begin
  FuncObj.Free;
end;

end.
