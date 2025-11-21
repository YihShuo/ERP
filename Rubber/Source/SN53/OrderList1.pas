unit OrderList1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, DBTables, StdCtrls, ExtCtrls, GridsEh,
  DBGridEh;

type
  TOrderList = class(TForm)
    panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    QOrder: TQuery;
    QOrderddbh: TStringField;
    QOrdercqdh: TStringField;
    QOrderxiexing: TStringField;
    QOrderarticle: TStringField;
    QOrderkhdh: TStringField;
    QOrderkhpo: TStringField;
    QOrderddjq: TStringField;
    QOrderpairs: TFloatField;
    DataSource1: TDataSource;
    QTemp: TQuery;
    DBGridEh1: TDBGridEh;
    QOrderworkID: TStringField;
    CKWork: TCheckBox;
    Button2: TButton;
    ExeQuery: TQuery;
    QOrdershipdate: TDateTimeField;
    Label3: TLabel;
    Edit3: TEdit;
    Label4: TLabel;
    Edit4: TEdit;
    CheckBox1: TCheckBox;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    GSBH:String;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  OrderList: TOrderList;

implementation

uses ProductionPlan1, main1, FunUnit;

{$R *.dfm}

procedure TOrderList.Button1Click(Sender: TObject);
begin
  if ((edit1.Text='') and (edit2.Text='') and (edit3.Text='') and (edit4.Text='')) then
  begin
    showmessage('Need Xiexing or OrderNo or Article or BuyNO');
    abort;
  end;
  with QOrder do
  begin
    active:=false;
    SQL.Clear;
    if CheckBox1.Checked = false then begin
      SQL.Add('Select DD_DDZL.* from (');
      SQL.ADD('Select ddbh,cqdh,xiexing,article,khdh,khpo,ddjq,pairs,(select shipdate from '+main.LIY_ERP+'.dbo.ddzl ddzl1 where ddzl1.ddbh = ddzl.ddbh) shipdate, ');
      SQL.Add('       (select Max(workplan.WorkID) as WorkID  from '+main.LIY_DD+'.dbo.workplanss workplanss,'+main.LIY_DD+'.dbo.workplan workplan ');
      SQL.Add('        where workplan.workID=workplanss.WorkID and workplanss.ddbh=DDZL.DDBH and workplan.SPLB='''+ProductionPlan.workplan.FieldByName('SPLB').AsString+''' ) as workID   ');
      SQL.Add('from '+main.LIY_DD+'.dbo.ddzl ddzl ');
      SQL.ADD('where CQDH='''+GSBH+'''');
      if (edit1.Text<>'') then
        sql.add(' and xiexing like '+''''+Edit1.Text+'%'+'''');
      if (edit2.text<>'') then
        sql.add(' and ddbh like '+''''+Edit2.Text + '%' + '''');
      if (edit3.text<>'') then
        sql.add(' and article like '+''''+Edit3.Text + '%' + '''');
      SQL.Add(') DD_DDZL ');
      SQL.Add('left join DDZL on DDZL.DDBH = DD_DDZL.DDBH ');
      SQL.Add('where 1 = 1 ');
      if CKWork.Checked=true then
        SQL.Add('and WorkID is null ');
      if (Edit4.text<>'') then
        sql.add(' and DDZL.Buyno like ''%'+Edit4.Text + '%''');
    //showmessage(sql.Text);
    //funcObj.WriteErrorLog(sql.Text);
      active:=TRUE;
    end
    else begin
      active:=false;
      SQL.Clear;
      SQL.Add('Select * from (');
      SQL.Add('Select ddbh,GSBH cqdh,xiexing,article,khbh as khdh,khpo,'''' ddjq,CONVERT(FLOAT, pairs) pairs,shipdate,');
      SQL.Add('       (select Max(workplan.WorkID) as WorkID  from '+main.LIY_DD+'.dbo.workplanss workplanss,'+main.LIY_DD+'.dbo.workplan workplan');
      SQL.Add('        where workplan.workID=workplanss.WorkID and workplanss.ddbh=DDZL.DDBH and workplan.SPLB='''+ProductionPlan.workplan.FieldByName('SPLB').AsString+''') as workID');
      SQL.Add('from Tythac.LYS_ERP.dbo.ddzl ddzl');
      SQL.Add('where GSBH= ''VDH''');
      if (edit1.Text<>'') then
        sql.add(' and xiexing like '+''''+Edit1.Text+'%'+'''');
      if (edit2.text<>'') then
        sql.add(' and ddbh like '+''''+Edit2.Text + '%' + '''');
      if (edit3.text<>'') then
        sql.add(' and article like '+''''+Edit3.Text + '%' + '''');
      if (Edit4.text<>'') then
        sql.add(' and DDZL.Buyno like ''%'+Edit4.Text + '%''');
      SQL.Add(') DDZL');
      SQL.Add('where 1 = 1');
      if CKWork.Checked=true then
        SQL.Add('and workid is null');
      //showmessage(sql.Text);
      active:=TRUE;
    end;
  end;
end;

procedure TOrderList.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TOrderList.DBGrid1DblClick(Sender: TObject);
begin
 //更改日期,加總訂單數到WPS更新到WPSS
  
end;

procedure TOrderList.FormCreate(Sender: TObject);
begin
  with ExeQuery do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('--//[1] Create Linkserver');
    SQL.Add('set ansi_nulls on ');
    SQL.Add('set ansi_warnings on ');
    SQL.Add(' ');
    SQL.Add('if  not exists(select *  from   master..sysservers  where  srvname= ''Tythac'') ');
    SQL.Add('Exec sp_addlinkedserver');
    SQL.Add('   @server=''Tythac'', --//linkserver name.');
    SQL.Add('   @srvproduct='''', --//一般描述');
    SQL.Add('   @provider=''SQLOLEDB'', --//OLEDB Provider name, check BOL for more providers');
    SQL.Add('   @datasrc=''192.168.71.7'', --//遠端Server Name  192.168.11.100\sql2k8');
    SQL.Add('   @catalog=''LYS_ERP'' --//default database for linkserver');
    //SQL.Add('GO');
    SQL.Add('');
    SQL.Add('--//[2]Add linked server login');
    SQL.Add('Exec sp_addlinkedsrvlogin');
    SQL.Add('@useself=''false'', --//false=使用遠端使用者/密碼登入');
    SQL.Add(' --//true=使用本地端使用者/密碼連線遠端SERVER                        ');
    SQL.Add('@rmtsrvname=''Tythac'', --//Linked server name');
    SQL.Add('@rmtuser=''tyxuan'' , --//遠端登入使用者');
    SQL.Add('@rmtpassword=''jack'' --//遠端登入使用者密碼');
    //SQL.Add('GO');
    ExecSQL();
  end;

  GSBH:='NULL';
  with QTemp do
  begin
    active:=false;
    sql.Clear;
    sql.Add('select gsdh from Bgszl where gsdh='''+main.Edit2.Text+'''');
    sql.Add('and GXLB =''O''');
    active:=true;
  end;
  if Qtemp.RecordCount>0 then GSBH:=Qtemp.FieldByName('gsdh').AsString;
  if (main.LIY_DD = 'TB_DD') then CheckBox1.Visible := true;
end;

procedure TOrderList.DBGridEh1DblClick(Sender: TObject);
begin
  if QOrder.FieldByName('WorkID').AsString='' then
  begin
    with ProductionPlan.WorkPlanSs do
    begin
      requestlive:=true;
      cachedupdates:=true;
      Edit;
      Insert;
      FieldByName('ddbh').value:=QORDER.FieldByName('ddbh').value;
      FieldByName('article').value:=QORDER.FieldByName('article').value;
      FieldByName('shipdate').value:=QORDER.FieldByName('shipdate').value;
      Post;
    end;
  end else
  begin
    Showmessage(QOrder.FieldByName('DDBH').AsString+' already workID:'+QOrder.FieldByName('WorkID').AsString);
  end;
end;

procedure TOrderList.DBGridEh1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if QOrder.FieldByName('WorkID').AsString<>'' then
  begin
    DBGridEh1.canvas.font.color:=clBlue;
  end;
end;

procedure TOrderList.FormDestroy(Sender: TObject);
begin
  ORDERLIST:=nil;
end;

procedure TOrderList.FormShow(Sender: TObject);
begin
  main.FormLanguage(Pointer(self),self.Name);
end;
//
procedure TOrderList.Button2Click(Sender: TObject);
var bookmarklist:tbookmarklistEh;
    bm:Tbookmark;
    i:integer;
begin
  QOrder.disablecontrols;
  bm:=QOrder.getbookmark;
  bookmarklist:=DBGridEh1.selectedrows;
  if bookmarklist.count>0 then
  begin
      try
        for i:=0 to bookmarklist.count-1 do
        begin
           QOrder.gotobookmark(pointer(bookmarklist[i]));
           with ProductionPlan.WorkPlanSS do
           begin
             Edit;
             Fieldbyname('DDBH').Value:=QOrder.FieldByName('DDBH').AsString;
             Fieldbyname('article').Value:=QOrder.FieldByName('article').AsString;
             Fieldbyname('Shipdate').Value:=QOrder.FieldByName('Shipdate').value;
             Post;     //寫入前一筆新增
             Insert;   //DB增加一筆資料
           end;
        end;
      finally
        begin
          QOrder.gotobookmark(bm);
          QOrder.freebookmark(bm);
          QOrder.enablecontrols;
          Showmessage('You have finish copy!');
        end;
      end;
  end;
end;

end.
