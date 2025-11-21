unit MaterialInvType1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBTables, DB, GridsEh, DBGridEh, StdCtrls, Buttons, ExtCtrls,
  ehlibBDE,comobj, PrnDbgeh, Menus;

type
  TMaterialInvType = class(TForm)
    Panel1: TPanel;
    BB2: TBitBtn;
    BB3: TBitBtn;
    BB4: TBitBtn;
    BB5: TBitBtn;
    BB6: TBitBtn;
    BB7: TBitBtn;
    BB1: TBitBtn;
    bbt6: TBitBtn;
    Panel2: TPanel;
    Label1: TLabel;
    Label4: TLabel;
    Edit1: TEdit;
    Edit3: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    CB1: TCheckBox;
    DS1: TDataSource;
    Query1: TQuery;
    UpSQL1: TUpdateSQL;
    Qtemp: TQuery;
    DBGridEh1: TDBGridEh;
    Query1CLBH: TStringField;
    Query1YWPM: TStringField;
    Query1ZWPM: TStringField;
    Query1DWBH: TStringField;
    Query1LBBH: TStringField;
    Query1USERID: TStringField;
    PrintDBGridEh1: TPrintDBGridEh;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure BB7Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure bbt6Click(Sender: TObject);
    procedure Query1NewRecord(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MaterialInvType: TMaterialInvType; 
  NDate:TDate;

implementation

uses main1;

{$R *.dfm}

procedure TMaterialInvType.FormDestroy(Sender: TObject);
begin
MaterialInvType:=nil;
end;

procedure TMaterialInvType.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if BB5.enabled  then
  begin
    showmessage('You have to save data first.');
    action:=canone;
  end
  else
    begin
      action:=cafree;
    end;
end;

procedure TMaterialInvType.Button1Click(Sender: TObject);
var KCYEAR,KCMONTH:string;
begin

  with Qtemp do
  begin
    active:=false;
    sql.Clear;
    //程
    sql.add('select isnull(max(KCCLMONTH.KCYEAR),'''') as KCYEAR ');
    sql.add('from KCCLMONTH ');
    sql.add('left join KCCK on KCCK.CKBH=KCCLMONTH.CKBH ');
    sql.add('where KCCK.GSBH='''+main.Edit2.Text+'''');
    active:=true;
    KCYEAR:=fieldbyname('KCYEAR').Value;
    //程い程る
    if KCYEAR='' then
    begin
        showmessage('﹟ゼ絃翴 the warehourse hasn''t be inventoried.');
        abort;
    end;
    active:=false;
    sql.Clear;
    sql.add('select max(KCCLMONTH.KCMONTH) as KCMONTH ');
    sql.add('from KCCLMONTH ');
    sql.add('left join KCCK on KCCK.CKBH=KCCLMONTH.CKBH ');
    sql.add('where KCCK.GSBH='+''''+main.Edit2.Text+'''');
    sql.add(' and kcclmonth.kcyear='+''''+KCYEAR+'''');
    active:=true;
    KCMONTH:=fieldbyname('KCMONTH').Value;
    active:=false;
  end;

  with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.Add('select CLZl.CLDH as CLBH,CLZL.YWPM,CLZL.ZWPM,CLZL.DWBH,CLLBFLS.LBBH,CLLBFLS.USERID');
    sql.add('from  CLZl ');
    sql.add('left join CLLBFLS on CLLBFLS.CLBH=CLZl.CLDH and CLLBFLS.GSBH='+''''+main.edit2.Text+'''');
    sql.add('where CLZl.CLDH like '+''''+edit1.Text+'%'+'''');
    sql.add('      and CLZL.YWPM like '+''''+'%'+ edit2.Text+'%'+'''');
    sql.add('      and CLZL.YWPM like '+''''+'%'+ edit3.Text+'%'+'''');
    if CB1.Checked then
    begin
      sql.add('       and CLLBFLS.LBBH is null ');
    end;
    sql.add(' and (exists(select KCCLMONTH.CLBH from KCCLMONTH ');
    sql.add('            left join KCCK on KCCK.CKBH=KCCLMONTH.CKBH ');
    sql.add('            where KCCLMONTH.KCYEAR='+''''+KCYEAR+'''');
    sql.add('                  and KCCLMONTH.KCMONTH='+''''+KCMONTH+'''');
    sql.add('                  and KCCK.GSBH='+''''+main.edit2.Text+'''');
    sql.add('                  and KCCLMONTH.CLBH=CLZL.CLDH )');
    sql.add('   or exists(select KCLLS.CLBH from KCLLS ');
    sql.add('             left join KCLL on KCLL.LLNO=KCLLS.LLNO ');
    sql.add('             left join KCCK on KCCK.CKBH=KCLL.CKBH ');
    sql.add('             where KCLL.CFMDate>getdate()-40');
    sql.add('                   and KCLLS.Qty<>0');     
    sql.add('                   and KCCK.GSBH='+''''+main.edit2.text+'''');
    sql.add('                   and KCLLS.CLBH=CLZL.CLDH )');
    sql.add('   or exists(select KCRKS.CLBH from KCRKS ');
    sql.add('             left join KCRK on KCRK.RKNO=KCRKS.RKNO ');
    sql.add('             left join KCCK on KCCK.CKBH=KCRK.CKBH ');
    sql.add('             where KCRK.USERDate>getdate()-40');
    sql.add('                   and KCRKS.Qty<>0');
    sql.add('                   and KCCK.GSBH='+''''+main.edit2.text+'''');
    sql.add('                   and KCRKS.CLBH=CLZL.CLDH )  ');
    sql.add('   or exists(select JGZLS.CLBH from JGZLS ');
    sql.add('             left join JGZL on JGZL.JGNO=JGZLS.JGNO ');
    sql.add('             left join KCCK on KCCK.CKBH=JGZL.CKBH  ');
    sql.add('             where JGZL.JGDate>getdate()-40');
    sql.add('                   and JGZLS.Qty<>0');
    sql.add('                   and KCCK.GSBH='+''''+main.edit2.text+'''');
    sql.add('                   and JGZLS.CLBH=CLZL.CLDH )  ');
    sql.add('   or exists(select JGZLS.ZMLB from JGZLS ');
    sql.add('             left join JGZL on JGZL.JGNO=JGZLS.JGNO ');
    sql.add('             left join KCCK on KCCK.CKBH=JGZL.CKBH  ');
    sql.add('             where JGZL.JGDate>getdate()-40');
    sql.add('                   and JGZLS.Qty<>0');
    sql.add('                   and KCCK.GSBH='+''''+main.edit2.text+'''');
    sql.add('                   and JGZLS.ZMLB=CLZL.CLDH ) ) ');
    sql.add('order by CLZl.CLDH');
    active:=true;
  end;
  BB4.Enabled:=true;
  BBT6.enabled:=true;
end;

procedure TMaterialInvType.BB7Click(Sender: TObject);
begin
  close;
end;

procedure TMaterialInvType.BB4Click(Sender: TObject);
begin

  query1.CachedUpdates:=true;
  query1.RequestLive:=true;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
end;

procedure TMaterialInvType.BB5Click(Sender: TObject);
begin

with query1 do
  begin
    first;
    while not eof do
      begin
        case updatestatus of
          usmodified:
            begin
              if  fieldbyname('LBBH').value<>'' then
                begin
                  if not fieldbyname('USERID').IsNull then
                    begin
                      Qtemp.active:=false;
                      Qtemp.sql.Clear;
                      Qtemp.sql.add('update CLLBFLS ');
                      Qtemp.sql.add('set LBBH='+''''+fieldbyname('LBBH').Value+'''');
                      Qtemp.sql.add('    ,USERID='+''''+main.Edit1.Text+'''');
                      Qtemp.sql.add('    ,USERDATE=getdate()');
                      Qtemp.sql.add('where GSBH='+''''+main.Edit2.text+'''');
                      Qtemp.sql.add('      and CLBH='+''''+fieldbyname('CLBH').Value+'''');
                      Qtemp.execsql;
                    end
                    else
                      begin
                        Qtemp.active:=false;
                        Qtemp.sql.Clear;
                        Qtemp.sql.add('insert into CLLBFLS ');
                        Qtemp.sql.add('(GSBH,CLBH,LBBH,USERID,USERDATE,YN)');
                        Qtemp.sql.add('values('+''''+main.Edit2.text+''''+',');
                        Qtemp.sql.add(''''+fieldbyname('CLBH').Value+''''+',');
                        Qtemp.sql.add(''''+fieldbyname('LBBH').Value+''''+',');
                        Qtemp.sql.add(''''+main.Edit1.text+''''+',');
                        Qtemp.sql.add('getdate(),'+''''+'1'+''''+')');
                        Qtemp.execsql;
                      end;
                end;
            end;
          end;
        next;
      end;
    active:=false;
    active:=true;
    cachedupdates:=false;
    requestlive:=false;
    BB5.Enabled:=false;
    BB6.enabled:=false;
  end;
end;

procedure TMaterialInvType.BB6Click(Sender: TObject);
begin

with query1 do
  begin
    active:=false;
    cachedupdates:=false;
    requestlive:=false;
    active:=true;
    BB5.enabled:=false;
    BB6.enabled:=false;
  end;
end;

procedure TMaterialInvType.bbt6Click(Sender: TObject);

var
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
      Application.MessageBox('系统没有安装Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
      Exit;
    end;
    try
        WorkBook:=eclApp.workbooks.Add;
        for   i:=0   to   query1.fieldcount-1   do
          begin
              eclApp.Cells(4,i+1):=query1.fields[i].FieldName;
              eclApp.Cells.item[1,i+1].font.size:='8';
          end;

        query1.First;
        j:=2;
        while   not   query1.Eof   do
          begin
            for   i:=0   to   query1.fieldcount-1   do
            begin
              eclApp.Cells(j+3,i+1):=query1.Fields[i].Value;
              eclApp.Cells.item[j,i+1].font.size:='8';
            end;
          query1.Next;
          inc(j);
          end;
     eclapp.columns.autofit;
   {  if SaveDialog1.execute then
      begin
        a:=SaveDialog1.FileName;
      end
      else
        begin
          a:='Unit List';
        end;
      WorkBook.SaveAS(a);
      //WorkBook.close;  }
      eclApp.Visible:=True;
      showmessage('Succeed');
      except
        on   F:Exception   do
          showmessage(F.Message);
      end;
    end;

end;

procedure TMaterialInvType.Query1NewRecord(DataSet: TDataSet);
begin

abort;
end;

procedure TMaterialInvType.FormCreate(Sender: TObject);
var i:integer;
begin
with Qtemp do
  begin 
    active:=false;
    sql.Clear; 
    sql.add('select getdate() as NDate');
    active:=true;
    NDate:=fieldbyname('NDate').Value;
    active:=false;
    sql.Clear;
    sql.add('select LBBH from CLLBFY ');
    sql.add('where XH='+''''+'03'+'''');
    sql.add('order by LBBH');
    active:=true;
    for i:=1 to recordcount do
      begin
        DBGrideh1.Columns[2].PickList.add(fieldbyname('LBBH').asstring);
        next;
      end;
    active:=false;
  end;
end;

end.
