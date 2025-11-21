unit KeyOut1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls, GridsEh,
  DBGridEh;

type
  TKeyOut = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    workidcb: TComboBox;
    Query: TButton;
    UpdateBtn: TButton;
    tempq: TQuery;
    Query1: TQuery;
    scq: TQuery;
    scqWorkID: TStringField;
    scqSize: TStringField;
    scqClass: TStringField;
    scqInOut: TStringField;
    scqscanDate: TDateTimeField;
    scqQty: TIntegerField;
    scqUpdateDate: TDateTimeField;
    scqUserID: TStringField;
    upwwdhsds: TUpdateSQL;
    scansum: TQuery;
    scansumworkid: TStringField;
    scansumclass: TStringField;
    scansumsize: TStringField;
    scansuminout: TStringField;
    scansumscandate: TDateTimeField;
    scansumqty: TIntegerField;
    DataSource2: TDataSource;
    updateq: TQuery;
    DataSource1: TDataSource;
    workplansedit: TQuery;
    workplanseditddbh: TStringField;
    workplanseditxxcc: TStringField;
    workplanseditoldqty: TIntegerField;
    workplanseditneedcts: TIntegerField;
    workplanseditoldcts: TIntegerField;
    workplanseditnewcts: TIntegerField;
    workplanseditTotqty: TIntegerField;
    workplanseditcodebar: TStringField;
    workplanseditqty: TIntegerField;
    wpsu: TUpdateSQL;
    UpdataQuery: TQuery;
    workplanseditDepNO: TStringField;
    DBGridEh1: TDBGridEh;
    workplanseditGJCC: TStringField;
    Label2: TLabel;
    CLassCB: TComboBox;
    WorkScanQry: TQuery;
    WorkScanQryProNo: TFloatField;
    WorkScanQryCodebar: TStringField;
    WorkScanQryscandate: TStringField;
    WorkScanQryInOut: TStringField;
    WorkScanQryClass: TStringField;
    WorkScanQryWorkID: TStringField;
    WorkScanQryMJBH: TStringField;
    WorkScanQryColorNo: TStringField;
    WorkScanQryenglishname: TStringField;
    WorkScanQryDDBH: TStringField;
    WorkScanQrySize: TStringField;
    WorkScanQryQty: TIntegerField;
    WorkScanQryUserid: TStringField;
    WorkScanQryUserDate: TDateTimeField;
    WorkScanQryYN: TStringField;
    workplansQry: TQuery;
    workplansQryWorkID: TStringField;
    workplansQrySNO: TIntegerField;
    workplansQrySize: TStringField;
    workplansQryPackage: TIntegerField;
    workplansQryOKQTY: TIntegerField;
    workplansQryOutQTY: TIntegerField;
    workplansQrycodebar: TStringField;
    workplansQryColorNo: TStringField;
    workplansQryMJBH: TStringField;
    workplansQryDDBH: TStringField;
    workplansQryStockOut_Qty: TIntegerField;
    workplansQryQuantity: TIntegerField;
    workplansQrySQOutQTY: TIntegerField;
    procedure QueryClick(Sender: TObject);
    procedure UpdateBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure workplanseditnewctsChange(Sender: TField);
    procedure fatcbChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure InitRYList();
    procedure UpdateWorkwhsds();
  end;

var
  KeyOut: TKeyOut;

implementation

uses main1, FunUnit;

{$R *.dfm}

//
procedure TKeyOut.UpdateWorkwhsds();
begin
  //
  with UpdataQuery do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('insert into ' + main.LIY_DD + '.dbo.workwhsds ');
    SQL.Add('select workscan.workid,workscan.size,workscan.class,workscan.inout,workscan.scandate,workscan.qty,GETDATE() as UserDate,''' + main.Edit1.Text + ''' as UserID from  (      ');
    SQL.Add('select workid,class,size,inout');
    SQL.Add('	,convert(smalldatetime,convert(varchar,workscan.scandate,111)) as scandate');
    SQL.Add('	,sum(workscan.qty) as qty ');
    SQL.Add('from ' + main.LIY_DD + '.dbo.workscan workscan');
    SQL.Add('left join (select workid,size,codebar from ' + main.LIY_DD +
      '.dbo.workplans  Group by workid,size,codebar )  workplans on workplans.codebar=left(workscan.codebar,(CHARINDEX(''-'',workscan.codebar)-1)) ');
    SQL.Add('where workscan.yn = ''N'' and inout=''O'' and convert(smalldatetime,convert(varchar,workscan.scandate,111))=''' + FormatDateTime('YYYY-MM-DD', Date()) + ''' ');
    SQL.Add('group by workid,size,class,inout,convert(smalldatetime,convert(varchar,workscan.scandate,111)) )  workscan');
    SQL.Add('where not exists (');
    SQL.Add('  select * from ' + main.LIY_DD + '.dbo.workwhsds workwhsds ');
    SQL.Add('  where workwhsds.WorkID=workscan.WorkID and workwhsds.size=workscan.size and workwhsds.Class=workscan.Class ');
    SQL.Add('        and workwhsds.InOut=workscan.InOut and convert(smalldatetime,convert(varchar,workwhsds.scandate,111))=workscan.scandate )');
    SQL.Add('        and workscan.workid is not null ');
    //funcObj.WriteErrorLog(sql.Text);
    ExecSQL();
  end;
  //
  with UpdataQuery do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('Update ' + main.LIY_DD + '.dbo.workwhsds Set Qty=workscan.qty,UpdateDate=GETDATE(),UserID=''' +
      main.Edit1.Text + ''' ');
    SQL.Add('from (');
    SQL.Add('select workscan.workid,workscan.size,workscan.class,workscan.inout,workscan.scandate,workscan.qty,GETDATE() as UserDate,''' + main.Edit1.Text + ''' as UserID  from  (      ');
    SQL.Add('select workid,class,size,inout');
    SQL.Add('	,convert(smalldatetime,convert(varchar,workscan.scandate,111)) as scandate');
    SQL.Add('	,sum(workscan.qty) as qty ');
    SQL.Add('from ' + main.LIY_DD + '.dbo.workscan workscan');
    SQL.Add('left join (select workid,size,codebar from ' + main.LIY_DD +
      '.dbo.workplans  Group by workid,size,codebar )  workplans on workplans.codebar=left(workscan.codebar,(CHARINDEX(''-'',workscan.codebar)-1)) ');
    SQL.Add('where inout=''O'' and convert(smalldatetime,convert(varchar,workscan.scandate,111))=''' +
      FormatDateTime('YYYY-MM-DD', Date()) + '''   ');
    SQL.Add('group by workid,size,class,inout,convert(smalldatetime,convert(varchar,workscan.scandate,111)) )  workscan');
    SQL.Add('where  exists (');
    SQL.Add('  select * from ' + main.LIY_DD + '.dbo.workwhsds workwhsds ');
    SQL.Add('  where workwhsds.WorkID=workscan.WorkID and workwhsds.size=workscan.size and workwhsds.Class=workscan.Class ');
    SQL.Add('        and workwhsds.InOut=workscan.InOut and convert(smalldatetime,convert(varchar,workwhsds.scandate,111))=workscan.scandate )');
    SQL.Add('        and workscan.workid is not null ) workscan where ' + main.LIY_DD +
      '.dbo.workwhsds.WorkID=workscan.WorkID and ' + main.LIY_DD + '.dbo.workwhsds.size=workscan.size and ' +
      main.LIY_DD
      + '.dbo.workwhsds.Class=workscan.Class ');
    SQL.Add('        and ' + main.LIY_DD +
      '.dbo.workwhsds.InOut=workscan.InOut and convert(smalldatetime,convert(varchar,' + main.LIY_DD +
      '.dbo.workwhsds.scandate,111))=workscan.scandate ');
    //funcObj.WriteErrorLog(sql.Text);
    ExecSQL();
  end;
  //
  with UpdataQuery do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('update ' + main.LIY_DD + '.dbo.workscan set yn=''Y'' ');
    SQL.add(' where yn=''N'' and inout=''O'' and convert(smalldatetime,convert(varchar,' + main.LIY_DD +
      '.dbo.workscan.scandate,111))=''' + FormatDateTime('YYYY-MM-DD', Date()) + ''' ');
    ExecSQL;
  end;
  //
end;
//

procedure TKeyOut.QueryClick(Sender: TObject);
begin
  //
  if (workidcb.Text = 'ALL') or (trim(workidcb.Text) = '') then
  begin
    showmessage('Please select RY');
    exit;
  end;

  with workplansQry do
  begin
    active := false;
    sql.Clear;
    sql.Add(' select workplanss.DDBH,workplans.WorkID,workplans.SNO,workplans.SIZE,workplans.Package,DDZLs.Quantity,workplans.OKQTY,workplans.OutQTY as SQOutQty,isnull(workplansss.OutQTY,0) as OutQTY,workplans.codebar,workplan.ColorNo,workplan.MJBH,0 as StockOut_Qty ');
    sql.Add(' from ' + main.LIY_DD + '.dbo.workplans workplans ');
    sql.Add(' left join ' + main.LIY_DD + '.dbo.workplan  workplan on workplan.WorkID=workplans.WorkID ');
    sql.Add(' left join ' + main.LIY_DD + '.dbo.workplanss  workplanss on workplanss.WorkID=workplans.WorkID ');
    sql.Add(' left join DDZLs on DDZLs.DDBH = workplanss.DDBH and DDZLS.CC = workplans.SIZE ');
    sql.Add(' left join ' + main.LIY_DD + '.dbo.workplansss workplansss on workplansss.DDBH = workplanss.DDBH and workplansss.SIZE = workplans.SIZE ');
    sql.Add(' where  workplans.creatdate>GetDate()-360 ');
    sql.Add(' and workplanss.DDBH = ''' + workidcb.Text + ''' ');
    sql.Add(' and workplans.OKQty>workplans.OutQty ');
    sql.Add(' and isnull(workplansss.OutQTY,0) < DDZLs.Quantity ');
    sql.Add(' and DDZLs.Quantity is not null ');
    //showmessage(SQL.Text);
    Active := true;
    requestlive := true;
    cachedupdates := true;
    edit;
  end;

  if workplansQry.IsEmpty then
    UpdateBtn.Visible := false
  else
    UpdateBtn.Visible := true;
  {  with workplansedit do
    begin
      active:=false;
      sql.Clear;
      sql.Add('select smddss.ddbh,smddss.xxcc,(smddss.OKcts*smddss.qty) as oldqty,(codebar+''-'') as codebar,smddss.qty');
  //    sql.Add('	      ,cts as needcts,okcts as oldcts,0 as newcts,0 as Totqty,SMDD.DepNO,XXGJS.GJCC from smddss ');
      sql.Add('	      ,cts as needcts,okcts as oldcts,0 as newcts,0 as Totqty,SMDD.DepNO,XXGJS.XXCC as GJCC from smddss ');
      sql.Add('left join smdd on smddss.ddbh=smdd.ddbh and smddss.gxlb=smdd.gxlb ');
      sql.Add('left join ddzl on ddzl.ddbh=smdd.ysbh  ');
      sql.add('left join  XXGJS on DDZL.XieXing=XXGJS.XieXing and XXGJS.GJLB=''101'' and XXGJS.XXCC=smddss.XXCC  ');
  //    sql.Add('where smdd.gxlb=''O'' and cts > okcts	 ');  //
      sql.Add('where cts > okcts	 ');  //
      if workidcb.Text<>'ALL' then
        sql.Add('and YSBH='''+workidcb.Text+''' ');
  //    sql.Add('and SMDD.GSBH='''+main.Edit2.Text+''' ');
      //funcObj.WriteErrorLog(sql.Text);
      //showmessage(SQL.Text);
      active:=true;
      requestlive:=true;
      cachedupdates:=true;
      edit;
    end; }
end;

procedure TKeyOut.UpdateBtnClick(Sender: TObject);
var
  i, j: integer;
  barCode, workplans_barcode, DDBH, SIZE, SNO, WORKID: string;
begin
  workplansQry.First;
  while not workplansQry.Eof do begin
    if workplansQry.fieldbyname('StockOut_Qty').Value + workplansQry.fieldbyname('SQOutQTY').Value > workplansQry.fieldbyname('OKQTY').Value then begin
      showmessage('StockOut_Qty + SQOutQty > SQOKQty');
      abort;
    end;
    if workplansQry.fieldbyname('StockOut_Qty').Value + workplansQry.fieldbyname('OutQTY').Value > workplansQry.fieldbyname('Quantity').Value then begin
      showmessage('StockOut_Qty + AlreadyOut_QTY > Order_Qty');
      abort;
    end;
    workplansQry.Next;
  end;
  with workplansQry do
  begin
    First;
    for i := 1 to RecordCount do
    begin
      edit;
      if fieldbyname('StockOut_Qty').Value > 0 then
      begin
        fieldbyname('OutQty').Value := fieldbyname('OutQty').Value + fieldbyname('StockOut_Qty').Value;
        //ERP Scan barcode
        barCode := fieldbyname('codebar').AsString;
        DDBH := fieldbyname('DDBH').AsString;
        SIZE := fieldbyname('SIZE').AsString;
        SNO := fieldbyname('SNO').AsString;
        WORKID := fieldbyname('WORKID').AsString;
        tempq.Active := false;
        tempq.SQL.Clear;
        tempq.SQL.Add('select top 1 * from ' + main.LIY_DD + '.dbo.WorkScan');
        tempq.SQL.Add('where CODEBAR = ''' + fieldbyname('CodeBar').Value +
          ''' AND SCANDATE >= CONVERT(VARCHAR(10), GETDATE(), 120)');
        tempq.Active := true;
        if tempq.RecordCount = 0 then
        begin
          query1.SQL.Clear;
          query1.sql.add('INSERT INTO ' + main.LIY_DD + '.dbo.WorkScan ');
          query1.sql.add('VALUES (' + '''' + fieldbyname('CodeBar').Value + ''',');
          query1.sql.add('CONVERT(VARCHAR(10), GETDATE(), 120),''O'',');
          query1.sql.Add('  ''' + inttostr(CLassCB.itemindex) + ''',');
          query1.sql.Add('  ''' + fieldbyname('WorkID').Value + ''',');
          query1.sql.Add('  ''' + fieldbyname('MJBH').Value + ''',');
          query1.sql.Add('  ''' + fieldbyname('ColorNo').Value + ''',');
          query1.sql.Add('  ''' + fieldbyname('DDBH').Value + ''',');
          query1.sql.Add('  ''' + fieldbyname('Size').Value + ''',');
          query1.sql.Add('  ' + fieldbyname('StockOut_Qty').AsString + ',');
          query1.sql.add(' ''' + main.Edit1.Text + '''' + ',getdate(),''N'');');
          query1.sql.add('UPDATE ' + main.LIY_DD + '.dbo.WorkScan ');
          query1.sql.add('SET DDBH=''' + fieldbyname('DDBH').Value + ''' WHERE [InOut]=''I'' ');
          query1.sql.add('AND CodeBar='+ '''' + fieldbyname('CodeBar').Value + ''';');
          showmessage(query1.sql.text);
          query1.ExecSQL;
        end
        else
        begin
          query1.SQL.Clear;
          query1.sql.add('update ' + main.LIY_DD + '.dbo.WorkScan ');
          query1.sql.add('set Qty = QTY + ' + fieldbyname('StockOut_Qty').AsString + '');
          query1.sql.add('where SCANDATE = CONVERT(VARCHAR(10), GETDATE(), 120) ');
          query1.sql.add('and CodeBar = '''+fieldbyname('CodeBar').Value+'''');
          query1.sql.add('and InOut = ''O''');
          query1.sql.add('and Class = '''+inttostr(CLassCB.itemindex)+'''');
          showmessage(query1.sql.text);
          query1.ExecSQL;
        end;
        //新增紀錄訂單出貨狀況  2024/08/02
        tempq.Active := false;
        tempq.SQL.Clear;
        tempq.SQL.Add('select top 1 * from ' + main.LIY_DD + '.dbo.workplanSSS');
        tempq.SQL.Add('where WorkID = ''' + fieldbyname('WorkID').Value +
          ''' AND DDBH = ''' + fieldbyname('DDBH').Value + ''' and SIZE = ''' + fieldbyname('SIZE').Value + '''');
        tempq.Active := true;
        if tempq.RecordCount = 0 then
        begin
          query1.SQL.Clear;
          query1.sql.add('INSERT INTO ' + main.LIY_DD + '.dbo.workplanSSS ');
          query1.sql.add('VALUES (''' + fieldbyname('WorkID').Value + ''',');
          query1.sql.Add('  ''' + fieldbyname('DDBH').Value + ''',');
          query1.sql.Add('  ''' + fieldbyname('Size').Value + ''',');
          query1.sql.Add('  ' + fieldbyname('Quantity').AsString + ',');
          query1.sql.Add('  ' + fieldbyname('StockOut_Qty').AsString + ',');
          query1.sql.add(' ''' + main.Edit1.Text + '''' + ',getdate(),' + fieldbyname('Quantity').AsString + ')');
          showmessage(query1.sql.text);
          query1.ExecSQL;
        end
        else
        begin
          query1.SQL.Clear;
          query1.sql.add('update ' + main.LIY_DD + '.dbo.workplanSSS ');
          query1.sql.add('set OutQTY = ' + fieldbyname('OutQty').ASstring +'');
//          query1.sql.add(', InQTY = ' + fieldbyname('OutQty').ASstring +'');
          query1.sql.add('where WorkID = ''' + fieldbyname('WorkID').Value + ''' ');
          query1.sql.add('and DDBH = '''+fieldbyname('DDBH').Value+'''');
          query1.sql.add('and Size = '''+fieldbyname('Size').Value+'''');
          showmessage(query1.sql.text);
          query1.ExecSQL;
        end;

        query1.SQL.Clear;
        query1.sql.add('update ' + main.LIY_DD + '.dbo.workplans ');
        query1.sql.add('set ');
        query1.sql.add('  OutQTY = ' + fieldbyname('OutQty').ASstring +' ');
        query1.sql.add('where ');
//        query1.sql.add('  DDBH = ''' + fieldbyname('DDBH').Value + ''' and ');
        query1.sql.add('  SIZE = ''' + fieldbyname('Size').Value + ''' and ');
        query1.sql.add('  WorkID = ''' + fieldbyname('WorkID').Value + ''' and ');
        query1.sql.add('  SNO = ' + fieldbyname('SNO').AsString + ' ');
        showmessage(query1.SQL.Text);
        query1.ExecSQL;
      end;
      Next;
    end;
    active := false;
    active := true;
  end;
end;

//
procedure TKeyOut.InitRYList();
var
  i: integer;
begin

  with tempq do
  begin
    Active := false;
    SQL.Clear;
{    SQL.Add('select workplanss.ddbh from ' + main.LIY_DD + '.dbo.workplanss workplanss');
    SQL.Add('inner join DDZL on DDZL.DDBH=workplanss.ddbh and DDZL.GSBH in (Select TGSBH from Bgszl where GSDH=''' +
      main.Edit2.Text + ''') and DDZL.YN=1');
    SQL.Add('inner join ' + main.liy_erp + '.dbo.smdd on workplanss.ddbh=' + main.liy_erp + '.dbo.smdd.ysbh and ' +
      main.liy_erp + '.dbo.smdd.GSBH=''' + main.Edit2.Text + ''' ');
    SQL.Add('inner join ' + main.liy_erp + '.dbo.smddss on ' + main.liy_erp + '.dbo.smdd.ddbh=' + main.liy_erp +
      '.dbo.smddss.ddbh and ' + main.liy_erp + '.dbo.smddss.gxlb=''O''  ');
    SQL.Add('where ' + main.liy_erp + '.dbo.smdd.gxlb=''O''  and smddss.cts > smddss.okcts');
    SQL.Add('group by workplanss.ddbh ');
    SQL.Add('order by  workplanss.ddbh desc ');}
    SQL.Add('select distinct DDBH from ' + main.LIY_DD + '.dbo.WorkPlanSSS ');
    SQL.Add('where InQty < Quantity ');
//    showmessage(SQL.Text);
    Active := true;
  end;
  with tempq do
  begin
    tempq.First;
    workidcb.Items.Clear;
    workidCB.Items.Add('ALL');
    for i := 1 to recordcount do
    begin
      workidCB.Items.Add(fieldbyname('ddbh').asstring);
      next;
    end;
    workidCB.ItemIndex := 0;
  end;
  tempq.Active := false;
  //
end;

//
procedure TKeyOut.FormCreate(Sender: TObject);
begin
  {  with workplansQry do
    begin
      active:=false;
      sql.Clear;
      sql.Add(' select workplanss.DDBH,workplans.*,workplan.ColorNo,workplan.MJBH ');
      sql.Add(' from '+main.LIY_DD+'.dbo.workplans workplans  ');
      sql.Add(' left join '+main.LIY_DD+'.dbo.workplan  workplan on workplan.WorkID=workplans.WorkID');
      sql.Add(' left join '+main.LIY_DD+'.dbo.workplanss  workplanss on workplanss.WorkID=workplans.WorkID');
      sql.Add(' where  workplans.creatdate>GetDate()-360 '); //Qty>OKQty and
  //    if CheckBox1.Checked=true then
      sql.Add(' and workplans.OKQty>workplans.OutQty ');
      //funcObj.WriteErrorLog(sql.Text);
      //showmessage(SQL.Text);
      Active:=true;
    end;       }
  InitRYList();
end;

procedure TKeyOut.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  //  UpdateWorkwhsds();
  action := cafree;
  keyout := nil;

end;

procedure Tkeyout.workplanseditnewctsChange(Sender: TField);
begin
  with workplansedit do
  begin
    fieldbyname('TotQty').Value := fieldbyname('OLDQty').Value + fieldbyname('newCTS').Value *
      fieldbyname('qty').Value;
    if fieldbyname('needcts').Value < (fieldbyname('oldcts').Value + fieldbyname('newcts').Value) then
    begin
      showmessage('Cts is Over Count');
      fieldbyname('TotQty').Value := 0;
      fieldbyname('newcts').Value := 0;
    end;
  end;
end;

procedure TKeyOut.fatcbChange(Sender: TObject);
begin
  InitRYList();
end;

end.
