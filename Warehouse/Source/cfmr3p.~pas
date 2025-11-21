unit cfmr3p;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Grids, DBGrids, StdCtrls, ComCtrls, Buttons, DB,
  GridsEh, DBGridEh, DBTables,comobj;

type
  TCFMR3 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    BB4: TBitBtn;
    BB5: TBitBtn;
    BB6: TBitBtn;
    BB7: TBitBtn;
    bb3: TBitBtn;
    CheckBox1: TCheckBox;
    Label7: TLabel;
    Label2: TLabel;
    sd: TDateTimePicker;
    Label1: TLabel;
    Label3: TLabel;
    ed: TDateTimePicker;
    Edit1: TEdit;
    Button2: TButton;
    Query1: TQuery;
    Query2: TQuery;
    UpdateSQL1: TUpdateSQL;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    DBGridEh1: TDBGridEh;
    DBGridEh2: TDBGridEh;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure bb3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CFMR3: TCFMR3;

implementation

uses nousematerialp;

{$R *.dfm}

procedure TCFMR3.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  //cfmr3.Active:=false;
  action:=cafree;
end;

procedure TCFMR3.FormDestroy(Sender: TObject);
begin
  //cfmr3.Active:=false;
  nousematerial:=nil;
end;

procedure TCFMR3.FormCreate(Sender: TObject);
begin
  sd.Date:=now-4;
  ed.Date:=now;
end;

procedure TCFMR3.Button2Click(Sender: TObject);
begin
  with query2 do
  begin
    query1.active:=false;
    active:=false;
    sql.Clear;
    sql.Add('select kcll.llno,kcll.gsbh,kclls.scbh,bdepartment.depname,kclls.clbh,');
    sql.Add('	clzl.ywpm,kclls.tempqty,kclls.qty,kclls.clsl,');
    {edit by billweng 2011/9/6 更改SQL語法 正式版本要原完回來
    sql.Add(' isnull(kclls.r3qty,0) as r3qty, ddzl.pairs');  }
    sql.Add(' isnull(sc.OKqty,0) as r3qty, ddzl.pairs');
    sql.Add('from kclls');
    sql.Add('left join kcll on kcll.llno=kclls.llno');
    sql.Add('left join bdepartment on kcll.depid=bdepartment.id');
    sql.Add('left join clzl on kclls.clbh=clzl.cldh');
    sql.Add('left join ddzl on ddzl.ddbh=kclls.scbh');

    //edit by billweng 2011/9/6 更改SQL語法 正式版本要刪除
    sql.Add('left join ');
    sql.Add('    (select smdd.ysbh,sum(isnull(smddss.qty,0)*isnull(smddss.okcts,0)) as OKQTY');
    sql.Add('       from smdd');
    sql.Add('       left join smddss on smdd.ddbh=smddss.ddbh');
    sql.Add('       where smdd.gsbh='+''''+'VR3'+''''+' and');
    sql.Add('             smddss.gxlb='+''''+'O'+''''+' and smdd.gxlb='+''''+'O'+'''');
    sql.Add('        group by smdd.ysbh) as sc on sc.ysbh=kclls.scbh');
    //edit by billweng 2011/9/6 更改SQL語法 正式版本要刪除

    sql.Add('where kcll.userdate >= '+''''+formatdatetime('yyyy/MM/dd',(sd.date))+'''');
    sql.Add('     and kcll.userdate <= '+''''+formatdatetime('yyyy/MM/dd',(ed.date))+'''');
    sql.Add('	    and (clbh>='+''''+'J03'+''''+' and clbh<'+''''+'J04'+''''); //+')');
    sql.Add('        or (clbh>='+''''+'I01'+''''+' and clbh<'+''''+'I02'+''''+'))');
    sql.Add('     and kclls.llno like '+''''+edit1.Text+'%'+'''');
    sql.Add('     and kclls.blsb is null ');
    if not checkbox1.Checked then
      {edit by billweng 2011/9/6 更改SQL語法 正式版本要原完回來
      sql.Add('     and (kclls.qty=0 or kclls.r3qty is null)'); }
      sql.Add('     and ((sc.okqty = 0 or sc.okqty is null) and kclls.qty<>0)');

    sql.add('     and kclls.dfl='+''''+'A'+'''');
    sql.Add('order by kcll.llno,kclls.scbh,kclls.clbh');
    active:=true;
    query1.active:=true;
   end;
   bb3.Enabled:=true;
end;

procedure TCFMR3.bb3Click(Sender: TObject);
var
      eclApp,WorkBook:olevariant;
      i,j:integer;
begin
  if  query2.active  then
    begin
    query1.Active:=false;
    try
      eclApp:=CreateOleObject('Excel.Application');
      WorkBook:=CreateOleObject('Excel.Sheet');
    except
      Application.MessageBox('Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
      Exit;
    end;
    try
        WorkBook:=eclApp.workbooks.Add;
        for i:=0 to query2.fieldcount-1   do
          begin
              eclApp.Cells(2,i+1):=query2.fields[i].FieldName;
              eclApp.Cells.item[2,i+1].font.size:='10';
          end;

        query2.First;
        j:=2;
        while not query2.Eof   do
          begin
            for i:=0 to query2.fieldcount-1   do
            begin
              eclApp.Cells(j+1,i+1):=query2.Fields[i].Value;
              eclApp.Cells.item[j+1,i+1].font.size:='9';
            end;
          query2.Next;
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
    query1.Active:=true;

end;

end.
