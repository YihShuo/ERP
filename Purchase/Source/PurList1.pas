unit PurList1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, DBTables, StdCtrls, ExtCtrls,comobj,dateutils,
  GridsEh, DBGridEh,ehlibBDE;

type
  TPurList = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    Button1: TButton;
    Edit2: TEdit;
    EDIT1: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    DS1: TDataSource;
    Query1: TQuery;
    Query1CLBH: TStringField;
    Query1YWPM: TStringField;
    Query1DWBH: TStringField;
    Query1CQDH: TStringField;
    Query1CLSL: TFloatField;
    Query1okQty: TCurrencyField;
    DBGrid1: TDBGridEh;
    Query1ZLBH: TStringField;
    Query1CFMDate: TDateTimeField;
    Label6: TLabel;
    Edit6: TEdit;
    Query1XieMing: TStringField;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    Button2: TButton;
    Query1CGDate: TDateTimeField;
    Label7: TLabel;
    Label3: TLabel;
    Edit3: TEdit;
    Query1CGNO: TStringField;
    Query1UseStock: TCurrencyField;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure EDIT1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure Edit4KeyPress(Sender: TObject; var Key: Char);
    procedure Edit6KeyPress(Sender: TObject; var Key: Char);
    procedure Button2Click(Sender: TObject);
    procedure DBGrid1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PurList: TPurList;
  sdate,edate:TDate;

implementation

uses main1;

{$R *.dfm}

procedure TPurList.Button1Click(Sender: TObject);
begin
{if (CBX2.text='')or (CBX3.text='')  then
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
edate:=endofthemonth(sdate);    }

if ((length(edit1.Text)<5) and (length(edit5.Text)<3)) then
  begin
    showmessage('Pls setup condition first!');
    abort;
  end;


with query1 do
  begin
    active:=false;
    sql.Clear;
    if checkbox1.Checked then
      begin
        sql.add(' select ZLZLS2.ZLBH,ZLZLS2.CLBH,CLZL.YWPM,CLZl.DWBH,XXZl.XieMing,');
        sql.add('CLZl.CQDH,isnull(CGTW.okQty,0) as okQty,');
        sql.add('isnull(sum(ZLZLS2.CLSL),0) as CLSL,CGTW.CFMDate,CGTW.CGDate,CGTW.CGNO,isnull(CGKCUSE.Qty,0) as UseStock')  ;
        sql.add('from ZLZLS2 ');
        sql.add('left join (select CGHZZLSS.ZLBH,CGHZZLSS.CLBH,sum(CGHZZLSS.st_Qty+CGHZZLSS.dg_Qty) as okQty,  ');
        sql.add('              max(convert(smalldatetime,CGHZZLSS.hf_Date)) as CFMDate,');
        sql.add('              max(convert(smalldatetime,CGHZZLSS.dg_Date)) as CGDate,CGHZZLSS.CGHZBH as CGNO');
        sql.add('           from CGHZZLSS');
        sql.add('           left join CLZL on CLZL.CLDH=CGHZZLSS.CLBH');
        sql.add('           left join DDZl on DDZl.ZLBH=CGHZZLSS.ZLBH');
        sql.add('           left join KFZL on KFZl.KFDH=DDZl.KHBH ');
        sql.add('           left join ZLZL on ZLZL.ZLBH=CGHZZLSS.ZLBH');
        sql.add('           left join XXZL on XXZl.XieXing=DDZl.XieXing and XXZL.SheHao=DDZl.SheHao');
        sql.add('           where CGHZZLSS.CLBH like '+''''+edit1.Text+'%'+'''');
        sql.add('                 and CGHZZLSS.hf_Date<>'+''''+'ZZZZZZZZ'+'''');
        sql.add('                 and CGHZZLSS.ZLBH like '+''''+edit5.Text+'%'+'''');
        sql.add('                 and CLZL.YWPM like '+''''+'%'+edit2.Text+'%'+'''');
        //sql.add('                  and CLZL.YWPM like '+''''+'%'+edit3.Text+'%'+'''');
        //sql.add('                  and CLZL.YWPM like '+''''+'%'+edit4.Text+'%'+'''');
        sql.add('                 and XXZl.XieMing like '+''''+'%'+edit6.text+'%'+'''');
        {sql.add('                   and convert(smalldatetime,convert(varchar,DDZL.ShipDate,111)) between ' );
        sql.add('                    '''+formatdatetime('yyyy/MM/dd',sdate) +''''+'and '+''''+formatdatetime('yyyy/MM/dd',edate) +'''');
        sql.add('                    and DDZL.DDZT='+''''+'Y'+'''');
        //sql.add('                  and ZLZL.CQDH='+''''+'LTY'+'''');  }
        sql.add('                 and XXZL.Article like '+''''+edit3.text+'%'+'''');
        sql.add('                 and DDZL.GSBH='+''''+main.edit2.Text+'''');
        sql.add('                 and KFZL.KFJC like '+''''+'%'+edit4.Text+'%'+'''');
        sql.add('                 and CLZL.CQDH='+''''+'TW'+'''');
        sql.add('                 and CLZL.LYCC='+''''+'Y'+'''');
        sql.add('                 group by CGHZZLSS.ZLBH,CGHZZLSS.CLBH,CGHZZLSS.CGHZBH');

        sql.add('                 union all ');
        sql.add('           select CGHZZLS.ZLBH,CGHZZLS.CLBH,sum(CGHZZLSS.st_Qty+CGHZZLS.dg_Qty) as okQty,');
        sql.add('                  max(convert(smalldatetime,CGHZZLSS.hf_Date)) as CFMDate,');
        sql.add('                  max(convert(smalldatetime,CGHZZLSS.dg_Date)) as CGDate,CGHZZLSS.CGHZBH as CGNO');
        sql.add('           from CGHZZLS');
        sql.add('           left join CGHZZLSS on CGHZZLS.CGHZBH=CGHZZLSS.CGHZBH');
        sql.add('                     and CGHZZLS.CLBH=CGHZZLSS.CLBH and CGHZZLSS.SIZE='+''''+'ZZZZZZ'+'''');
        sql.add('           left join CLZL on CLZL.CLDH=CGHZZLS.CLBH');
        sql.add('           left join DDZl on DDZl.ZLBH=CGHZZLS.ZLBH');
        sql.add('           left join KFZL on KFZl.KFDH=DDZl.KHBH ');
        sql.add('           left join ZLZL on ZLZL.ZLBH=CGHZZLS.ZLBH');
        sql.add('           left join XXZL on XXZl.XieXing=DDZl.XieXing and XXZL.SheHao=DDZl.SheHao');
        sql.add('           where CGHZZLS.CLBH like '+''''+edit1.Text+'%'+'''');
        sql.add('                 and CGHZZLSS.hf_Date<>'+''''+'ZZZZZZZZ'+'''');
        sql.add('                 and CGHZZLS.ZLBH like '+''''+edit5.Text+'%'+'''');
        sql.add('                 and CLZL.YWPM like '+''''+'%'+edit2.Text+'%'+'''');
        //sql.add('                  and CLZL.YWPM like '+''''+'%'+edit3.Text+'%'+'''');
        //sql.add('                  and CLZL.YWPM like '+''''+'%'+edit4.Text+'%'+'''');
        sql.add('                 and XXZl.XieMing like '+''''+'%'+edit6.text+'%'+'''');
       { sql.add('                   and convert(smalldatetime,convert(varchar,DDZL.ShipDate,111)) between ' );
        sql.add('                    '''+formatdatetime('yyyy/MM/dd',sdate) +''''+'and '+''''+formatdatetime('yyyy/MM/dd',edate) +'''');
        sql.add('                    and DDZL.DDZT='+''''+'Y'+'''');   }
        sql.add('                 and XXZL.Article like '+''''+edit3.text+'%'+'''');
        sql.add('                 and DDZL.GSBH='+''''+main.edit2.Text+'''');
        sql.add('                 and KFZL.KFJC like '+''''+'%'+edit4.Text+'%'+'''');
        sql.add('                 and CLZL.CQDH='+''''+'TW'+'''');
        sql.add('                 and CLZL.LYCC='+''''+'N'+'''');
        sql.add('           group by CGHZZLS.ZLBH,CGHZZLS.CLBH,CGHZZLSS.CGHZBH ) CGTW') ;
        sql.add('     on CGTW.ZLBH=ZLZLS2.ZLBH and CGTW.CLBH=ZLZLS2.CLBH   ');

        sql.add('left join CLZL on CLZL.CLDH=ZLZLs2.CLBH');
        sql.add('left join DDZl on DDZl.ZLBH=ZLZLS2.ZLBH');
        sql.add('left join KFZL on KFZl.KFDH=DDZl.KHBH ');
        sql.add('left join ZLZL on ZLZL.ZLBH=ZLZLS2.ZLBH');
        sql.add('left join CGKCUSE on CGKCUSE.ZLBH=ZLZLS2.ZLBH and CGKCUSE.CLBH=ZLZLS2.CLBH');
        sql.add('left join XXZL on XXZl.XieXing=DDZl.XieXing and XXZL.SheHao=DDZl.SheHao');
        sql.add('where ZLZLS2.CLBH like '+''''+edit1.Text+'%'+'''');
        sql.add('      and ZLZLS2.ZLBH like '+''''+edit5.Text+'%'+'''');
        sql.add('      and CLZL.YWPM like '+''''+'%'+edit2.Text+'%'+'''');
        //sql.add('       and CLZL.YWPM like '+''''+'%'+edit3.Text+'%'+'''');
        //sql.add('       and CLZL.YWPM like '+''''+'%'+edit4.Text+'%'+'''');
        sql.add('      and XXZl.XieMing like '+''''+'%'+edit6.text+'%'+'''');
        {sql.add('        and convert(smalldatetime,convert(varchar,DDZL.ShipDate,111)) between ' );
        sql.add('         '''+formatdatetime('yyyy/MM/dd',sdate) +''''+'and '+''''+formatdatetime('yyyy/MM/dd',edate) +'''');
        sql.add('         and DDZL.DDZT='+''''+'Y'+'''');
        //sql.add('       and ZLZL.CQDH='+''''+'LTY'+''''); }
        sql.add('      and XXZL.Article like '+''''+edit3.text+'%'+'''');
        sql.add('      and DDZL.GSBH='+''''+main.edit2.Text+'''');
        sql.add('      and KFZL.KFJC like '+''''+'%'+edit4.Text+'%'+'''');
        sql.add('      and ZLZLS2.ZMLB='+''''+'N'+'''');  //只針對子材料
        sql.add('      and ZLZLS2.CLSL<>0');//數量不等於0
        sql.add('      and CLZL.CQDH='+''''+'TW'+'''');
        sql.add('group by ZLZLS2.ZLBH,ZLZLS2.CLBH,CLZL.YWPM,CLZL.DWBH,CLZL.CQDH,XXZL.XieMing,CGTW.okQty,');
        sql.add('          CGKCUSE.Qty,CGTW.CFMDate,CGTW.CGDate,CGTW.CGNO');

        sql.add('union all');

      end;

    sql.add('select  ZLZLS2.ZLBH,ZLZLS2.CLBH,CLZL.YWPM,CLZL.DWBH,XXZL.XieMing,');
    sql.add('        CLZL.CQDH,isnull(CGZL.okQty,0) as okQty,');
    sql.add('        isnull(sum(ZLZLS2.CLSL),0) as CLSL,CGZL.CFMDate,CGZl.CGDate,');
    sql.add('        CGZL.CGNO,isnull(CGKCUSE.Qty,0) as UseStock');
    sql.add('from ZLZLS2 left join CLZL on CLZL.CLDH=ZLZLs2.CLBH');
    sql.add('left join DDZl on DDZl.ZLBH=ZLZLS2.ZLBH');
    sql.add('left join KFZL on KFZl.KFDH=DDZl.KHBH ');
    sql.add('left join ZLZL on ZLZL.ZLBH=ZLZLS2.ZLBH');   
    sql.add('left join SCZL on SCZL.ZLBH=ZLZL.ZLBH ');
    sql.add('left join CGKCUSE on CGKCUSE.ZLBH=ZLZLS2.ZLBH and CGKCUSE.CLBH=ZLZLS2.CLBH');
    sql.add('left join XXZL on XXZl.XieXing=DDZl.XieXing and XXZL.SheHao=DDZl.SheHao');

    sql.add('left join (select CGZLSS.ZLBH,CGZLSS.CLBh,sum(CGZLSS.Qty) as okQty,');
    sql.add('           max(CGZLSS.CFMDate) as CFMDate,max(CGZL.CGDate) as CGDate,max(CGZL.CGNO) as CGNO from CGZLSS');
    sql.add('           left join CLZL on CLZL.CLDH=CGZLSS.CLBH');
    sql.add('           left join DDZl on DDZl.ZLBH=CGZLSS.ZLBH');
    sql.add('           left join KFZL on KFZl.KFDH=DDZl.KHBH ');
    sql.add('           left join ZLZL on ZLZL.ZLBH=CGZLSS.ZLBH');
    sql.add('           left join CGZL on CGZl.CGNO=CGZLSS.CGNO');
    sql.add('           left join XXZL on XXZl.XieXing=DDZl.XieXing and XXZL.SheHao=DDZl.SheHao');
    sql.add('           where CGZLSS.CLBH like '+''''+edit1.Text+'%'+'''');
    sql.add('           and CGZLSS.ZLBH like '+''''+edit5.Text+'%'+'''');
    sql.add('           and CLZL.YWPM like '+''''+'%'+edit2.Text+'%'+'''');
    //sql.add('           and CLZL.YWPM like '+''''+'%'+edit3.Text+'%'+'''');
    //sql.add('           and CLZL.YWPM like '+''''+'%'+edit4.Text+'%'+'''');
    sql.add('           and XXZl.XieMing like '+''''+'%'+edit6.text+'%'+'''');
   { sql.add('           and convert(smalldatetime,convert(varchar,DDZL.ShipDate,111)) between ' );
    sql.add('            '''+formatdatetime('yyyy/MM/dd',sdate) +''''+'and '+''''+formatdatetime('yyyy/MM/dd',edate) +'''');
    sql.add('           and DDZL.DDZT='+''''+'Y'+'''');  }
    sql.add('           and XXZL.Article like '+''''+edit3.text+'%'+'''');
    sql.add('           and DDZL.GSBH='+''''+main.edit2.Text+'''');
    sql.add('           and KFZL.KFJC like '+''''+'%'+edit4.Text+'%'+'''');
    sql.add('           and CLZL.CQDH='+''''+'VN'+'''');
    sql.add('           group by CGZLSS.ZLBH,CGZLSS.CLBH ) CGZL');
    sql.add('                 on CGZL.ZLBH=ZLZLS2.ZLBH and CGZL.CLBH=ZLZLS2.CLBH');

    //sql.add('left join KCRKS on KCRKS.



    sql.add('where ZLZLS2.CLBH like '+''''+edit1.Text+'%'+'''');
    if not Checkbox2.Checked then
      begin
        sql.add('and ZLZLS2.XH<>'+''''+ 'VN'+'''');
      end;
    sql.add('and ZLZLS2.ZLBH like '+''''+edit5.Text+'%'+'''');
    sql.add('and CLZL.YWPM like '+''''+'%'+edit2.Text+'%'+'''');
    sql.add('and XXZl.XieMing like '+''''+'%'+edit6.text+'%'+'''');
    sql.add('and XXZL.Article like '+''''+edit3.text+'%'+'''');
    sql.add('and DDZL.GSBH='+''''+main.edit2.Text+'''');
    sql.add('and KFZL.KFJC like '+''''+'%'+edit4.Text+'%'+'''');
    sql.add('and ZLZLS2.ZMLB='+''''+'N'+'''');
    sql.add('and CLZL.CQDH='+''''+'VN'+'''');
    sql.add('and SCZL.SCBH=SCZl.ZLBH ');
    sql.add('and SCZL.SCBH is not null ');
    sql.add('and ZLZLS2.CLSL<>0') ;
    sql.add('group by ZLZLS2.ZLBH,ZLZLS2.CLBH,CLZL.YWPM,CLZL.DWBH,CLZL.CQDH,XXZL.XieMing,');
    sql.add('        CGKCUSE.Qty,CGZl.okQty,CGZL.CFMDate,CGZl.CGDate,CGZL.CGNO');
    sql.add('order by ZLZLS2.ZLBH,CLZL.CQDH,ZLZLS2.CLBH');
    active:=true;
  end;

end;

procedure TPurList.FormClose(Sender: TObject; var Action: TCloseAction);
begin
free;
end;

procedure TPurList.EDIT1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
  edit2.SetFocus;
end;

procedure TPurList.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
  edit4.SetFocus;
end;

procedure TPurList.Edit3KeyPress(Sender: TObject; var Key: Char);
begin {
if key=#13 then
  edit4.SetFocus; }
end;

procedure TPurList.Edit4KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
  edit6.SetFocus;
end;

procedure TPurList.Edit6KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
  edit5.SetFocus;
end;

procedure TPurList.Button2Click(Sender: TObject);
var   a:string;
      eclApp,WorkBook:olevariant;
 //     xlsFileName:string;
      i,j:integer;
 begin
  if  query1.active  then
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
        for   i:=0   to   query1.fieldcount-1   do
          begin
              eclApp.Cells(1,i+1):=query1.fields[i].FieldName;
          end;

        query1.First;
        j:=2;
        while   not   query1.Eof   do
          begin
            for   i:=0   to  query1.fieldcount-1  do
            begin
              eclApp.Cells(j,i+1):=query1.Fields[i].Value;
            end;
          query1.Next;
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

procedure TPurList.DBGrid1GetCellParams(Sender: TObject; Column: TColumnEh;
  AFont: TFont; var Background: TColor; State: TGridDrawState);
begin

if Query1.FieldByName('CLSL').value=Query1.FieldByName('okQty').value+Query1.FieldByName('UseStock').value then
  begin
        dbgrid1.canvas.font.color:=clBlue;
       // dbgrid1.defaultdrawcolumncell(rect,datacol,column,state);
  end;
if (((query1.FieldByName('okQty').value>0) or (Query1.FieldByName('UseStock').value>0))
                    and (query1.FieldByName('CLSL').value>(query1.FieldByName('okQty').value+Query1.FieldByName('UseStock').value))) then
  begin
    if ((Query1.FieldByName('okQty').value<>0) or (Query1.FieldByName('UseStock').value<>0)) then
      begin
        dbgrid1.canvas.font.color:=clred;
        //dbgrid1.defaultdrawcolumncell(rect,datacol,column,state);
      end;
  end; 
if Query1.FieldByName('CLSL').value<Query1.FieldByName('okQty').value+Query1.FieldByName('UseStock').value then
  begin
        dbgrid1.canvas.font.color:=clgreen;
       // dbgrid1.defaultdrawcolumncell(rect,datacol,column,state);
  end;
end;

procedure TPurList.FormDestroy(Sender: TObject);
begin
PurList:=nil;
end;

end.
