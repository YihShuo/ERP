unit PurNoSize_Im1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, StdCtrls;

type
  TPurNoSize_Im = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    Button2: TButton;
    Qtemp: TQuery;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Edit2Enter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PurNoSize_Im: TPurNoSize_Im;

implementation

{$R *.dfm}

procedure TPurNoSize_Im.FormDestroy(Sender: TObject);
begin
PurNoSize_Im:=nil;
end;

procedure TPurNoSize_Im.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Qtemp.active:=false;
end;

procedure TPurNoSize_Im.Button2Click(Sender: TObject);
begin
close;
end;

procedure TPurNoSize_Im.Button1Click(Sender: TObject);
begin
if length(edit1.text)<9 then
  begin
    showmessage('Pls key right order NO.');
    abort;
  end;   
if length(edit2.text)<9 then
  begin
    showmessage('Pls key right order NO.');
    abort;
  end;
if copy(edit1.Text,0,6)<>copy(edit2.Text,0,6) then
  begin
    showmessage('Too much order.太多訂單不可以');
    abort;
  end;

with Qtemp do
  begin
    active:=false;
    sql.Clear;
    sql.add('delete LIY_ERP.dbo.DDZLTW ');
    sql.add('where  LIY_ERP.dbo.DDZLTW.DDBH between '+''''+edit1.Text+''''+' and '+''''+edit2.Text+'''');
    
    sql.add('insert  LIY_ERP.dbo.DDZLTW');
    sql.add('select  A.DDBH,A.XieXing,A.SHEHAO,A.ARTICLE,A.CCGB,A.KHBH,A.BB,A.KHPO,A.VERSION, ');
    sql.add('        A.TRADER,A.TRADERPO,A.DDLB,A.DDZT,A.CPLB,A.BZFS,A.DEST,A.DDGB,A.DDRQ,A.JYTJ, ');
    sql.add('        A.FKTJ,A.SHIPDATE,A.PAIRS,A.TOTALS,A.ZLBH,A.GSDH,A.CFNO,'+''''+'16664'+''''+' AS USERID, ');
    sql.add('        ISNULL(CONVERT(SMALLDATETIME,A.USERDATE),GETDATE()) AS USERDATE,A.DDCZ, ');
    sql.add('        A.DDPACKSM,A.LABELCHARGE,'+''''+''+''''+' AS GENDER,'+''''+'1'+''''+' as YN ');
    sql.add('from  LIY_SHOE.dbo.DDZL A     ');
    sql.add('where not exists(select  LIY_ERP.dbo.DDZLTW.* ');
    sql.add('                 from  LIY_ERP.dbo.DDZLTW  ');
    sql.add('                 where  LIY_ERP.dbo.DDZLTW.DDBH=A.DDBH   )  ');
    sql.add('      and A.ShipDate>='+''''+'20080601'+'''');
    sql.add('      and exists(select  LIY_shoe.dbo.ZLZL.DDBH from  LIY_shoe.dbo.ZLZL  ');
    sql.add('                 WHERE  LIY_shoe.dbo.ZLZL.DDBH= A.DDBH ');
    sql.add('                        and LIY_shoe.dbo.ZLZL.CQDH='+''''+'JNG'+'''');
    sql.add('                        and LIY_shoe.dbo.ZLZL.SHQR='+''''+'Y'+''''+' )');   
    execsql;
    showmessage('Step  1  succeed ');

    active:=false;
    sql.Clear;
    sql.add('insert  LIY_ERP.dbo.BWZL');
    sql.add('select A.BWDH,A.ZWSM,A.YWSM,A.BZ,A.BWLB, '+''''+'16664'+''''+' as USERID,');
    sql.add('       isnull(convert(smalldatetime, A.USERDATE),getdate())  as USERDATE ,'+''''+'1'+''''+' as YN ');
    sql.add('from  LIY_SHOE.dbo.BWZL A  ');
    sql.add('where not exists(select  LIY_ERP.dbo.BWZL.*');
    sql.add('                 from  LIY_ERP.dbo.BWZL');
    sql.add('                 where  LIY_ERP.dbo.BWZL.BWDH=A.BWDH   )');  
    execsql;   
    showmessage('Step  2  succeed ');

    active:=false;
    sql.Clear;
    sql.add('insert  LIY_ERP.dbo.CLZL    ');
    sql.add('select  A.* ,'+''''+'1'+''''+' as YN  ');
    sql.add('from  LIY_SHOE.dbo.CLZL A');
    sql.add('where not exists(select  LIY_ERP.dbo.CLZL.*');
    sql.add('                 from  LIY_ERP.dbo.CLZL');
    sql.add('                 where  LIY_ERP.dbo.CLZL.CLDH=A.CLDH   ) ');  
    execsql; 
    showmessage('Step  3  succeed ');

    active:=false;
    sql.Clear;
    sql.add('insert  LIY_ERP.dbo.DDBZZL ');
    sql.add('select  A.*,'+''''+'1'+''''+' as YN  ');
    sql.add('from  LIY_SHOE.dbo.DDBZZL A   ');
    sql.add('where not exists(select  LIY_ERP.dbo.DDBZZL.*');
    sql.add('                 from  LIY_ERP.dbo.DDBZZL   ');
    sql.add('                 where  LIY_ERP.dbo.DDBZZL.DDBH=A.DDBH  ');
    sql.add('                        and LIY_ERP.dbo.DDBZZL.ZYLB=A.ZYLB');
    sql.add('                        and LIY_ERP.dbo.DDBZZL.XH=A.XH   ) ');
    sql.add('      and exists(select  LIY_ERP.dbo.DDZLTW.DDBH from  LIY_ERP.dbo.DDZLTW');
    sql.add('                 WHERE  LIY_ERP.dbo.DDZLTW.DDBH= A.DDBH   )  ');
    execsql;  
    showmessage('Step  4  succeed ');

    active:=false;
    sql.Clear;
    sql.add('delete LIY_ERP.dbo.DDZLS ');
    sql.add('where  LIY_ERP.dbo.DDZLS.DDBH between '+''''+edit1.Text+''''+' and '+''''+edit2.Text+'''');

    sql.add('insert  LIY_ERP.dbo.DDZLS  ');
    sql.add('select  A.DDBH,A.LINENUM,A.CC,A.QUANTITY,A.PRICE,A.CPRICE,A.IPRICE,'+''''+'16664'+''''+' AS USERID,  ');
    sql.add('        ISNULL(CONVERT(SMALLDATETIME,A.USERDATE),GETDATE()) AS USERDATE,'+''''+'1'+''''+' as YN   ');
    sql.add('from  LIY_SHOE.dbo.DDZLS A   ');
    sql.add('where not exists(select  LIY_ERP.dbo.DDZLS.*  ');
    sql.add('                 from  LIY_ERP.dbo.DDZLS   ');
    sql.add('                 where  LIY_ERP.dbo.DDZLS.DDBH=A.DDBH ');
    sql.add('                        AND  LIY_ERP.dbo.DDZLS.LINENUM=A.LINENUM   ) ');
    sql.add('      and (exists(select  LIY_ERP.dbo.DDZLTW.DDBH from  LIY_ERP.dbo.DDZLTW  ');
    sql.add('                  WHERE  LIY_ERP.dbo.DDZLTW.DDBH= A.DDBH   ) ');
    sql.add('           or exists(select  LIY_ERP.dbo.DDZL.DDBH from  LIY_ERP.dbo.DDZL ');
    sql.add('                     WHERE  LIY_ERP.dbo.DDZL.DDBH= A.DDBH   ))  ');   
    execsql;  
    showmessage('Step  5  succeed ');

    active:=false;
    sql.Clear;
    sql.add('insert  LIY_ERP.dbo.GJLBZL ');
    sql.add('select  A.GJLB,A.ZWSM,A.YWSM,A.BZ,A.BWFL,'+''''+'16664'+''''+' AS USERID, ');
    sql.add('        ISNULL(CONVERT(SMALLDATETIME,A.USERDATE),GETDATE()) AS USERDATE,'+''''+'1'+''''+' as YN  ');
    sql.add('from  LIY_SHOE.dbo.GJLBZL A');
    sql.add('where not exists(select  LIY_ERP.dbo.GJLBZL.*  ');
    sql.add('                 from  LIY_ERP.dbo.GJLBZL  ');
    sql.add('                 where  LIY_ERP.dbo.GJLBZL.GJLB=A.GJLB    )  ');  
    execsql; 
    showmessage('Step  6  succeed ');

    active:=false;
    sql.Clear;
    sql.add('insert  LIY_ERP.dbo.ORDERSPLIT   ');
    sql.add('select  A.ZDBH,A.PAIRS,A.TRANSFERED,A.DDBH,'+''''+'16664'+''''+' AS USERID,  ');
    sql.add('        ISNULL(CONVERT(SMALLDATETIME,A.USERDATE),GETDATE()) AS USERDATE,'+''''+'1'+''''+' as YN  ');
    sql.add('from  LIY_SHOE.dbo.ORDERSPLIT A ');
    sql.add('where not exists(select  LIY_ERP.dbo.ORDERSPLIT.*  ');
    sql.add('                 from  LIY_ERP.dbo.ORDERSPLIT  ');
    sql.add('                 where  LIY_ERP.dbo.ORDERSPLIT.ZDBH=A.ZDBH    )   ');
    execsql;   
    showmessage('Step  7  succeed ');

    active:=false;
    sql.Clear;
    sql.add('delete  LIY_ERP.dbo.XXGJ     /*LBZL資料表的轉入資料*/   ');
    sql.add('where (not exists(select  A.*  ');
    sql.add('                  from  LIY_SHOE.dbo.XXGJ   A ');
    sql.add('                  where  LIY_ERP.dbo.XXGJ.XieXing=A.XieXing  ');
    sql.add('                         and  LIY_ERP.dbo.XXGJ.GJLB=A.GJLB  ');
    sql.add('                         and convert(smalldatetime,substring(A.USERDATE,0,9))<(getdate()-60) ) ');
    sql.add('           or   LIY_ERP.dbo.XXGJ.USERDATE>(getdate()-60)   ) ');
    sql.add('       and  LIY_ERP.dbo.XXGJ.YN<>'+''''+'2'+'''');
    sql.add('insert  LIY_ERP.dbo.XXGJ  ');
    sql.add('select  A.XieXing,A.GJLB,'+''''+'16664'+''''+' AS USERID, ');
    sql.add('        ISNULL(CONVERT(SMALLDATETIME,A.USERDATE),GETDATE()) AS USERDATE,'+''''+'1'+''''+' as YN ');
    sql.add('from  LIY_SHOE.dbo.XXGJ A   ');
    sql.add('where not exists(select  LIY_ERP.dbo.XXGJ.* ');
    sql.add('                 from  LIY_ERP.dbo.XXGJ  ');
    sql.add('                 where  LIY_ERP.dbo.XXGJ.XieXing=A.XieXing  ');
    sql.add('                        and  LIY_ERP.dbo.XXGJ.GJLB=A.GJLB     )   ');
    execsql;
    showmessage('Step  8  succeed ');

    active:=false;
    sql.Clear;
    sql.add('insert  LIY_ERP.dbo.XXZLS ');
    sql.add('select  A.XieXing,A.SheHao,A.XH,A.BWBH,A.BWLB,A.CLBH,A.CSBH,A.CLTX,A.CCQQ, ');
    sql.add('        A.CCQZ,isnull(A.LOSS,0) as LOSS,A.CLSL,A.CLDJ,A.CURRENCY,A.REMARK,'+''''+'16664'+''''+' as USERID, ');
    sql.add('        ISNULL(CONVERT(SMALLDATETIME,A.USERDATE),GETDATE()) AS USERDATE, '+''''+'1'+''''+' as YN  ');
    sql.add('        ,A.JGZWSM,A.JGYWSM   ');
    sql.add('from  LIY_SHOE.dbo.XXZLS A   ');
    sql.add('where not exists(select  LIY_ERP.dbo.XXZLS.*   ');
    sql.add('                 from  LIY_ERP.dbo.XXZLS  ');
    sql.add('                 where  LIY_ERP.dbo.XXZLS.XieXing=A.XieXing  ');
    sql.add('                        and  LIY_ERP.dbo.XXZLS.SheHao=A.SheHao  ');
    sql.add('                        and  LIY_ERP.dbo.XXZLS.BWBH=A.BWBH       )   ');  
    execsql;  
    showmessage('Step  9  succeed ');

    active:=false;
    sql.Clear;
    sql.add('insert  LIY_ERP.dbo.XXZLS2  ');
    sql.add('select  A.XieXing,A.SheHao,A.ZYLB,A.LineNum,A.SEQ,A.Remark,');
    sql.add('        ISNULL(CONVERT(SMALLDATETIME,A.NOTERQ),GETDATE()) AS NOTERQ,');
    sql.add('        '''+'16664'+''''+' as USERSIGN, '+''''+'1'+''''+' as YN');
    sql.add('from  LIY_SHOE.dbo.XXZLS2 A');
    sql.add('where not exists(select  LIY_ERP.dbo.XXZLS2.*');
    sql.add('                 from  LIY_ERP.dbo.XXZLS2');
    sql.add('                 where  LIY_ERP.dbo.XXZLS2.XieXing=A.XieXing');
    sql.add('                        and  LIY_ERP.dbo.XXZLS2.SheHao=A.SheHao');
    sql.add('                        and  LIY_ERP.dbo.XXZLS2.ZYLB=A.ZYLB');
    sql.add('                        and  LIY_ERP.dbo.XXZLS2.LineNum=A.LineNum       )');   
    execsql; 
    showmessage('Step  10  succeed ');

   { active:=false;
    sql.Clear;
    sql.add('insert  LIY_ERP.dbo.XXZLSS');
    sql.add('select  A.XieXing,A.SheHao,A.COND,A.BWBH,A.CLBH,A.CSBH,A.LOSS,A.CLSL,'+''''+'16664'+''''+' as USERID, ');
    sql.add('        ISNULL(CONVERT(SMALLDATETIME,A.USERDATE),GETDATE()) AS USERDATE, '+''''+'1'+''''+' as YN');
    sql.add('from  LIY_SHOE.dbo.XXZLSS A');
    sql.add('where not exists(select  LIY_ERP.dbo.XXZLSS.*');
    sql.add('                 from  LIY_ERP.dbo.XXZLSS');
    sql.add('                 where  LIY_ERP.dbo.XXZLSS.XieXing=A.XieXing');
    sql.add('                        and  LIY_ERP.dbo.XXZLSS.SheHao=A.SheHao');
    sql.add('                        and  LIY_ERP.dbo.XXZLSS.COND=A.COND');
    sql.add('                        and  LIY_ERP.dbo.XXZLSS.BWBH=A.BWBH        )');     
    execsql; 
    showmessage('Step  11  succeed ');    }

    active:=false;
    sql.Clear;
    sql.add('delete LIY_ERP.dbo.ZLZL ');
    sql.add('where  LIY_ERP.dbo.ZLZL.ZLBH between '+''''+edit1.Text+''''+' and '+''''+edit2.Text+'''');

    sql.add('insert  LIY_ERP.dbo.ZLZL');
    sql.add('select  A.ZLBH,A.DDBH,A.CQDH,A.KDRQ,A.CGBH,A.GJJH,A.YLJS,A.YLBB,A.SHQR,A.GSDH,'+''''+'16664'+''''+' AS USERID,');
    sql.add('        ISNULL(CONVERT(SMALLDATETIME,A.USERDATE),GETDATE()) AS USERDATE,'+''''+'1'+''''+' as YN');
    sql.add('from  LIY_SHOE.dbo.ZLZL A');
    sql.add('where not exists(select  LIY_ERP.dbo.ZLZL.*');
    sql.add('                 from  LIY_ERP.dbo.ZLZL');
    sql.add('                 where  LIY_ERP.dbo.ZLZL.ZLBH=A.ZLBH    )');
    sql.add('      and (exists(select  LIY_ERP.dbo.DDZLTW.DDBH from  LIY_ERP.dbo.DDZLTW');
    sql.add('                  WHERE  LIY_ERP.dbo.DDZLTW.DDBH= A.DDBH  )');
    sql.add('           or exists(select  LIY_ERP.dbo.DDZL.DDBH from  LIY_ERP.dbo.DDZL');
    sql.add('                     WHERE  LIY_ERP.dbo.DDZL.DDBH= A.DDBH  ))');
    execsql; 
    showmessage('Step  11  succeed ');

    active:=false;
    sql.Clear;            
    sql.add('delete LIY_ERP.dbo.ZLZLS');
    sql.add('where  LIY_ERP.dbo.ZLZLS.ZLBH between '+''''+edit1.Text+''''+' and '+''''+edit2.Text+'''');

    sql.add('insert  LIY_ERP.dbo.ZLZLS');
    sql.add('select  A.ZLBH,A.ZLCC,A.XXCC,A.QTY,A.LAST,A.OS,A.MS,A.CUT,'+''''+'16664'+''''+' AS USERID,');
    sql.add('        ISNULL(CONVERT(SMALLDATETIME,A.USERDATE),GETDATE()) AS USERDATE,'+''''+'1'+''''+' as YN');
    sql.add('from  LIY_SHOE.dbo.ZLZLS A');
    sql.add('where not exists(select  LIY_ERP.dbo.ZLZLS.*');
    sql.add('                 from  LIY_ERP.dbo.ZLZLS');
    sql.add('                 where  LIY_ERP.dbo.ZLZLS.ZLBH=A.ZLBH');
    sql.add('                        and  LIY_ERP.dbo.ZLZLS.ZLCC=A.ZLCC    )');
    sql.add('      and exists(select  LIY_ERP.dbo.ZLZL.ZLBH from  LIY_ERP.dbo.ZLZL');
    sql.add('                 WHERE  LIY_ERP.dbo.ZLZL.ZLBH= A.ZLBH  )');       
    execsql;     
    showmessage('Step  12  succeed ');

    active:=false;
    sql.Clear;
    sql.add('delete  LIY_ERP.dbo.ZLZLS2     /*LBZL資料表的轉入資料*/');
    sql.add('where  LIY_ERP.dbo.ZLZLS2.ZLBH between '+''''+edit1.Text+''''+' and '+''''+edit2.Text+'''');

    sql.add('insert  LIY_ERP.dbo.ZLZLS2');
    sql.add('select  A.ZLBH,A.XH,A.BWBH,A.CSBH,A.MJBH,A.CLBH,A.ZMLB,A.SIZE,A.CLSL,A.USAGE,'+''''+'16664'+''''+' AS USERID,');
    sql.add('        ISNULL(CONVERT(SMALLDATETIME,substring(A.USERDATE,0,9)),GETDATE()) AS USERDATE,'+''''+'1'+''''+' as YN');
    sql.add('from  LIY_SHOE.dbo.ZLZLS2 A');
    sql.add('where  A.ZLBH between '+''''+edit1.Text+''''+' and '+''''+edit2.Text+'''');
    execsql; 
    showmessage('Step  13  succeed ');

    active:=false;
    sql.Clear;
    sql.add('use LIY_ERP');
    sql.add('update ZLZLS2');
    sql.add('set CLSL=0');
    sql.add('where CLBH like '+''''+'M%'+'''');
    sql.add('      and XH<>'+''''+'VN'+'''');
    sql.add('      and not exists(select DDBH from DDZL ');
    sql.add('                     where DDZL.ZLBH=ZLZLS2.ZLBH ');
    sql.add('                           and DDZL.KHBH='+''''+'0038'+''''+' )');
    sql.add('      and CLSL<>0');
    sql.add('      and LIY_ERP.dbo.ZLZLS2.ZLBH between '+''''+edit1.Text+''''+' and '+''''+edit2.Text+'''');
    execsql;
    showmessage('Step  14');
    showmessage('ok, finished');
  end;

end;

procedure TPurNoSize_Im.Edit2Enter(Sender: TObject);
begin
if ( (edit1.text<>'') and (edit2.text='') ) then
  edit2.Text:=edit1.Text;
end;

end.
