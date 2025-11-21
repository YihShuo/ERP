unit MatType1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBTables, DB, Grids, DBGrids, StdCtrls, Buttons, ExtCtrls,comobj,
  ehlibbde, GridsEh, DBGridEh;

type
  TMatType = class(TForm)
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
    Panel2: TPanel;
    Label1: TLabel;
    Label4: TLabel;
    Edit1: TEdit;
    Edit3: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    CB1: TCheckBox;
    DBGrid1: TDBGridEh;
    DS1: TDataSource;
    Query1: TQuery;
    UpSQL1: TUpdateSQL;
    Query1CLBH: TStringField;
    Query1GSBH: TStringField;
    Query1YWPM: TStringField;
    Query1ZWPM: TStringField;
    Query1DWBH: TStringField;
    Query1FYLB: TStringField;
    Query1MEMO: TStringField;
    Query1CMEMO: TStringField;
    Qtemp: TQuery;
    Query1USERID: TStringField;
    Label2: TLabel;
    CBX4: TComboBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BB1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BB7Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure DBGrid1EditButtonClick(Sender: TObject);
    procedure bbt6Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Query1AfterInsert(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MatType: TMatType;
  NDate:TDate;

implementation

uses main1, MatType_Det1;

{$R *.dfm}

procedure TMatType.FormClose(Sender: TObject; var Action: TCloseAction);
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

procedure TMatType.BB1Click(Sender: TObject);
begin

panel2.Visible:=true;
end;

procedure TMatType.Button1Click(Sender: TObject);
begin

with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.Add('select KCLLS.CLBH,KCLLS.GSBH,CLZL.YWPM,CLZL.ZWPM,CLZL.DWBH,CLLBFYS.FYLB,CLLBFY.MEMO,CLLBFY.CMEMO,CLLBFYS.USERID');
    sql.add('from (select distinct KCLLS.CLBH,KCLL.GSBH ');
    sql.add('      from KCLLS ');
    sql.add('      left join KCLL on KCLLS.LLNO=KCLL.LLNO ');
    sql.add('      where KCLL.CFMID<>'+''''+'SYSTEM'+'''');    
    if CBX4.itemindex<>0 then
      begin
        sql.add('             and KCLL.GSBH='+''''+CBX4.Text+'''');
      end;
    {sql.add('      union                           ');
    sql.add('      select distinct KCRKS.CLBH,KCRK.GSBH');
    sql.add('      from KCRKS');
    sql.add('      left join KCRK on KCRK.RKNO=KCRKS.RKNO ');
    sql.add('      union ');
    sql.add('      select distinct JGZLS.CLBH,JGZL.GSBH ');
    sql.add('      from JGZLS');
    sql.add('      left join JGZL on JGZl.JGNO=JGZLS.JGNO '); }
    sql.add('      )KCLLS');
    sql.add('left join CLZl on CLZL.CLDH=KCLLS.CLBH');
    sql.add('left join CLLBFYS on CLLBFYS.CLBH=KCLLS.CLBH and CLLBFYS.GSBH=KCLLS.GSBH ');
    sql.add('left join CLLBFY on CLLBFY.LBBH=CLLBFYS.FYLB and CLLBFY.XH='+''''+'01'+'''');
    sql.add('where KCLLS.CLBH like '+''''+edit1.Text+'%'+'''');
    sql.add('      and CLZL.YWPM like '+''''+'%'+ edit2.Text+'%'+'''');
    sql.add('      and CLZL.YWPM like '+''''+'%'+ edit3.Text+'%'+'''');
    sql.add('      and (CLZL.TYJH='+''''+'N'+''''+' or CLZL.TYJH is null )');
    sql.add('      and KCLLS.GSBH is not null  ');
    if CB1.Checked then
      begin
        sql.add('      and CLLBFYS.FYLB is null ');
      end;
    sql.add('order by KCLLS.GSBH,KCLLS.CLBH');
    active:=true;
  end;
BB4.Enabled:=true;
BBT1.enabled:=true;
BBT2.enabled:=true;
BBT3.enabled:=true;
BBT4.enabled:=true;
BBT5.enabled:=true;
BBT6.enabled:=true;
end;

procedure TMatType.BB7Click(Sender: TObject);
begin

close;
end;

procedure TMatType.BB4Click(Sender: TObject);
begin

query1.CachedUpdates:=true;
query1.RequestLive:=true;
BB5.Enabled:=true;
BB6.Enabled:=true;
DBGrid1.Columns[4].buttonstyle:=cbsEllipsis;
end;

procedure TMatType.BB5Click(Sender: TObject);
begin

with query1 do
  begin
    first;
    while not eof do
      begin
        case updatestatus of
          usmodified:
            begin
              if  fieldbyname('FYLB').value<>'' then
                begin
                  if not fieldbyname('USERID').IsNull then
                    begin
                      Qtemp.active:=false;
                      Qtemp.sql.Clear;
                      Qtemp.sql.add('update CLLBFYS ');
                      Qtemp.sql.add('set FYLB='+''''+fieldbyname('FYLB').Value+'''');
                      Qtemp.sql.add('    ,USERID='+''''+main.Edit1.Text+'''');
                      Qtemp.sql.add('    ,USERDATE=getdate()');
                      Qtemp.sql.add('where GSBH='+''''+fieldbyname('GSBH').Value+'''');
                      Qtemp.sql.add('      and CLBH='+''''+fieldbyname('CLBH').Value+'''');
                      Qtemp.execsql;
                    end
                    else
                      begin
                        Qtemp.active:=false;
                        Qtemp.sql.Clear;
                        Qtemp.sql.add('insert into CLLBFYS ');
                        Qtemp.sql.add('(GSBH,CLBH,FYLB,USERID,USERDATE,YN)');
                        Qtemp.sql.add('values('+''''+fieldbyname('GSBH').Value+''''+',');
                        Qtemp.sql.add(''''+fieldbyname('CLBH').Value+''''+',');
                        Qtemp.sql.add(''''+fieldbyname('FYLB').Value+''''+',');
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
    DBGrid1.Columns[4].buttonstyle:=cbsnone;
  end;
end;

procedure TMatType.BB6Click(Sender: TObject);
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
    DBGrid1.Columns[4].buttonstyle:=cbsnone;
end;

procedure TMatType.DBGrid1EditButtonClick(Sender: TObject);
begin
MatType_Det:=TMatType_Det.create(self);
MatType_Det.show;
end;

procedure TMatType.bbt6Click(Sender: TObject);
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

procedure TMatType.FormDestroy(Sender: TObject);
begin
MatType:=nil;
end;

procedure TMatType.Query1AfterInsert(DataSet: TDataSet);
begin
abort;
end;

procedure TMatType.FormCreate(Sender: TObject);
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
    sql.add('select GSDH from BGSZL order by GSDH');
    active:=true;
    for i:=1 to recordcount do
      begin
        CBX4.Items.Add(fieldbyname('GSDH').asstring);
        next;
      end;
    CBX4.itemindex:=0;
    active:=false;
  end;
end;

end.
