unit RequestCheckStock1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ExtCtrls,comobj,
  ComCtrls, Menus;

type
  TRequestCheckStock = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    EdtMatID: TEdit;
    Label2: TLabel;
    EdtMatName: TEdit;
    Label3: TLabel;
    EdtVendorName: TEdit;
    Button1: TButton;
    DBGridEh1: TDBGridEh;
    Query1: TQuery;
    DataSource1: TDataSource;
    Button2: TButton;
    Label4: TLabel;
    EdtVendorID: TEdit;
    Label6: TLabel;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    chkPurDate: TCheckBox;
    Query1CLBH: TStringField;
    Query1YWPM: TStringField;
    Query1DWBH: TStringField;
    Query1YPDH: TStringField;
    Query1DEVCODE: TStringField;
    Query1KFJD: TStringField;
    Query1Pairs: TFloatField;
    Query1FD: TStringField;
    Query1CLSL: TFloatField;
    Query1CGQTY: TCurrencyField;
    Query1YPZLBH: TStringField;
    Query1YPCC: TStringField;
    Query1ZSBH: TStringField;
    Query1ZSYWJC: TStringField;
    Query1Stock: TCurrencyField;
    Query1USERID: TStringField;
    Query1UserDate: TDateTimeField;
    Query1UseStockQty: TCurrencyField;
    Query1Remark: TStringField;
    Query1UserID_WH: TStringField;
    Query1UserDate_WH: TDateTimeField;
    Query1UserID_ManagerWH: TStringField;
    Query1UserDate_ManagerWH: TDateTimeField;
    Label5: TLabel;
    EdtPurID: TEdit;
    Label7: TLabel;
    EdtMergeNo: TEdit;
    Label8: TLabel;
    EdtSR: TEdit;
    Label9: TLabel;
    cbStatus: TComboBox;
    Label10: TLabel;
    EdtStage: TEdit;
    PopupMenu1: TPopupMenu;
    Modify1: TMenuItem;
    Save1: TMenuItem;
    Cancel1: TMenuItem;
    N1: TMenuItem;
    Confirm1: TMenuItem;
    ConfrimAll1: TMenuItem;
    UpdateSQL1: TUpdateSQL;
    Qtemp: TQuery;
    History1: TMenuItem;
    N2: TMenuItem;
    Query1PurStock: TCurrencyField;
    Query1UseStock45days: TCurrencyField;
    Query1PartAll: TStringField;
    Reset1: TMenuItem;
    ResetAll1: TMenuItem;
    ComboBox1: TComboBox;
    Query1CheckStockQty: TFloatField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button2Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Modify1Click(Sender: TObject);
    procedure Cancel1Click(Sender: TObject);
    procedure Save1Click(Sender: TObject);
    procedure DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure History1Click(Sender: TObject);
    procedure Query1AfterOpen(DataSet: TDataSet);
    procedure Query1AfterScroll(DataSet: TDataSet);
    procedure Confirm1Click(Sender: TObject);
    procedure cbStatusChange(Sender: TObject);
    procedure ConfrimAll1Click(Sender: TObject);
    procedure Reset1Click(Sender: TObject);
    procedure ResetAll1Click(Sender: TObject);
  private

    { Private declarations }
  public
    { Public declarations }
  end;

var
  RequestCheckStock: TRequestCheckStock;

implementation

uses main1,fununit, History1;


{$R *.dfm}

procedure TRequestCheckStock.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TRequestCheckStock.Button2Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin
  if query1.Active then
  begin
    if query1.recordcount=0 then
    begin
      showmessage('No record.');
      abort;
    end;
  end else
  begin
    showmessage('No record.');
    abort;
  end;

  try
    eclApp:=CreateOleObject('Excel.Application');
    WorkBook:=CreateOleObject('Excel.Sheet');
  except
    Application.MessageBox('NO Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
    Exit;
  end;

  try
    WorkBook:=eclApp.workbooks.Add;
    for i:=0 to DBGridEh1.Columns.Count-1 do
    begin
      eclApp.Cells(1,i+1):=DBGridEh1.Columns[i].Title.Caption;
      eclApp.Cells.Cells.item[1,i+1].font.name := 'Calibri';
      eclApp.Cells.Cells.item[1,i+1].font.size:='10';
    end;
    query1.First;
    j:=2;
    while   not  query1.Eof   do
    begin
      eclApp.Cells(j,1):=j-1;
      for i:=0 to DBGridEh1.Columns.Count-1 do
      begin
         eclApp.Cells(j,i+1):=DBGridEh1.Fields[i].Value;
         eclApp.Cells.Cells.item[j,i+1].font.size:='10';
         eclApp.Cells.Cells.item[j,i+1].font.name := 'Calibri';
      end;
      query1.Next;
      inc(j);
    end;
    eclapp.columns.autofit;
    showmessage('Succeed.');
    eclApp.Visible:=True;
  except
    on   F:Exception   do
      showmessage(F.Message);
  end;

end;

procedure TRequestCheckStock.FormDestroy(Sender: TObject);
begin
  RequestCheckStock:=nil;
end;

procedure TRequestCheckStock.Button1Click(Sender: TObject);
begin
  ComboBox1.Visible := cbStatus.Text = 'Has Use Stock and Not yet confirm';
  With Query1 do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('  SELECT  CGSTOCK.CLBH,YWPM,DWBH,CGSTOCK.YPDH,kfxxzl.DEVCODE,YPZL.KFJD,CGSTOCK.Pairs,YPZL.FD,CGSTOCK.CLSL,CGZLSS.Qty AS CGQTY,CGSTOCK.YPZLBH,YPZL.YPCC,CGSTOCK.ZSBH,ZSZL.ZSYWJC  ');
    SQL.Add('  		,KCZLS.Stock,CGSTOCK.USERID,CGSTOCK.UserDate,CGSTOCK.UseStockQty,CGSTOCK.Remark,CGSTOCK.UserID_WH,CGSTOCK.UserDate_WH,CGSTOCK.UserID_ManagerWH,CGSTOCK.UserDate_ManagerWH  ');
    SQL.Add('     ,cgkcuse.qty as PurStock,cgkcuse_all.UseStock as UseStock45days,CGSTOCK.CLSL - isnull(CGZLSS.Qty,0) as CheckStockQty  ');
    SQL.Add('     ,Cast(( Select case when isnull(bwzl.ywsm,'''')<>'''' then bwzl.ywsm+'','' else '''' end ');
    SQL.Add('				      From YPZLZLS2 left join bwzl on YPZLZLS2.BWBH=bwzl.bwdh ');
    SQL.Add('     				Where YPZLZLS2.YPZLBH=CGSTOCK.YPZLBH and YPZLZLS2.YPDH=CGSTOCK.YPDH and YPZLZLS2.CLBH=CGSTOCK.CLBH Group by bwzl.ywsm for XML Path (''''))  as varchar(150)) as PartAll ');
    SQL.Add('  FROM  CGUseStock_Dev CGSTOCK  ');
    SQL.Add('  LEFT JOIN CLZL ON CGSTOCK.CLBH=CLZL.cldh  ');
    //========2025.01.14
    //SQL.Add('  LEFT JOIN YPZL ON CGSTOCK.YPDH=YPZL.YPDH  ');
    SQL.Add('  INNER JOIN YPZL ON CGSTOCK.YPDH=YPZL.YPDH and YPZL.GSDH='''+main.Edit2.Text+''' ');
    //========
    SQL.Add('  LEFT JOIN KFXXZL ON YPZL.XieXing=KFXXZL.XieXing AND YPZL.SheHao=KFXXZL.SheHao  ');
    SQL.Add('  LEFT JOIN  (SELECT ZLBH,CLBH,Sum(Qty) as Qty, Stage from CGZLSS Group By ZLBH,CLBH,Stage) CGZLSS   ');
    SQL.Add('  on CGZLSS.ZLBH=YPZL.YPDH and CGZLSS.Stage=YPZL.KFJD and CGZLSS.CLBH=CGSTOCK.CLBH  ');
    SQL.Add('  LEFT JOIN ZSZL ON CGSTOCK.ZSBH=ZSZL.zsdh  ');
    SQL.Add('  LEFT JOIN ( SELECT CLBH,SUM(KCQTY) AS Stock FROM KCZLS WHERE CKBH IN (SELECT CKBH FROM KCCK WHERE GSBH='''+main.Edit2.Text+''' AND CKBH<>''CBY'') GROUP BY CLBH) KCZLS  ');
    SQL.Add('  ON KCZLS.CLBH=CGSTOCK.CLBH  ');
    SQL.Add('  LEFT JOIN cgkcuse on cgkcuse.zlbh=CGSTOCK.ypdh and cgkcuse.clbh=CGSTOCK.clbh and cgkcuse.GSBH='''+main.Edit2.Text+''' ');
    SQL.Add('  LEFT JOIN (  Select cgkcuse.clbh,sum(cgkcuse.qty) as UseStock ');
    SQL.Add('               From cgkcuse  ');
    SQL.Add('       				Where cgkcuse.userdate>getdate()-45 and cgkcuse.GSBH='''+main.Edit2.Text+''' ');
    SQL.Add('       				Group by cgkcuse.clbh  ) cgkcuse_all on cgkcuse_all.clbh=CGSTOCK.CLBH  ');
    SQL.Add('  WHERE 1=1  ');
    if chkPurDate.Checked then
        SQL.Add(' AND convert(smalldatetime,convert(varchar,CGSTOCK.USERDATE,111))  between ');
        SQL.Add(' '''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''' AND  '''+formatdatetime('yyyy/MM/dd',DTP2.Date) +''' ');
    if EdtMatID.Text<>'' then
        SQL.Add(' AND CGSTOCK.CLBH LIKE '''+EdtMatID.Text+'%'' ');
    if EdtVendorID.Text<>'' then
        SQL.Add(' AND CGSTOCK.ZSBH LIKE '''+EdtVendorID.Text+'%'' ');
    if EdtPurID.Text<>'' then
        SQL.Add(' AND CGSTOCK.USERID LIKE '''+EdtPurID.Text+'%'' ');
    if EdtMatName.Text<>'' then
        SQL.Add(' AND CLZL.YWPM LIKE ''%'+EdtMatName.Text+'%'' ');
    if EdtVendorName.Text<>'' then
        SQL.Add(' AND ZSZL.ZSYWJC LIKE ''%'+EdtVendorName.Text+'%'' ');
    if EdtMergeNo.Text<>'' then
        SQL.Add(' AND CGSTOCK.YPZLBH LIKE '''+EdtMergeNo.Text+'%'' ');
    if EdtSR.Text<>'' then
        SQL.Add(' AND kfxxzl.DEVCODE LIKE ''%'+EdtSR.Text+'%'' ');
    if EdtStage.Text<>'' then
        SQL.Add(' AND YPZL.KFJD LIKE ''%'+EdtStage.Text+'%'' ');
    if cbStatus.Text='No Stock or Not Enough' then
        SQL.Add(' AND CGSTOCK.UseStockQty < CGSTOCK.CLSL ');
    if cbStatus.Text='OK Use Stock' then
        SQL.Add(' AND CGSTOCK.UseStockQty = CGSTOCK.CLSL ');
    if cbStatus.Text='Has Use Stock and Not yet confirm' then
    begin
        //11.11.2024
        SQL.Add(' AND ISNULL(CGSTOCK.UserID_ManagerWH,'''') =''''  AND ISNULL(CGSTOCK.UserID_WH,'''') <>'''' ');
        if ComboBox1.Text = 'No Stock' then
           SQL.Add(' AND (CGSTOCK.UseStockQty < CGSTOCK.CLSL AND CGSTOCK.UserID_WH <> '''') ')
        else if ComboBox1.Text = 'Has Use Stock' then
           SQL.Add(' AND NOT (CGSTOCK.UseStockQty < CGSTOCK.CLSL AND CGSTOCK.UserID_WH <> '''') ');
        //=========
    end;
    if cbStatus.Text='Manager confirmed' then
        SQL.Add(' AND ISNULL(CGSTOCK.UserID_ManagerWH,'''') <>'''' ');
    if cbStatus.Text='Not Assigned' then
        SQL.Add(' AND ISNULL(CGSTOCK.UserID_WH,'''') ='''' ');
    if cbStatus.Text='Update Quantity' then
        SQL.Add(' AND (UserDate_WH is not NULL AND CGSTOCK.USERDATE > CGSTOCK.UserDate_WH) ');
    if cbStatus.Text='Not Assigned or Update Quantity' then
        SQL.Add(' AND ((ISNULL(CGSTOCK.UserID_WH,'''') ='''') OR (UserDate_WH is not NULL AND CGSTOCK.USERDATE > CGSTOCK.UserDate_WH))  ');
    SQL.Add('ORDER BY CGSTOCK.UserDate,CGSTOCK.CLBH');
    //showmessage(sql.text);
    //funcobj.WriteErrorLog(sql.Text);
    Active:=true;
  end;
end;

procedure TRequestCheckStock.FormCreate(Sender: TObject);
begin
  DTP1.Date:=now;
  DTP2.Date:=now;
end;

procedure TRequestCheckStock.Modify1Click(Sender: TObject);
begin
  with Query1 do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
  Save1.Enabled:=true;
  Cancel1.Enabled:=true;
end;

procedure TRequestCheckStock.Cancel1Click(Sender: TObject);
begin
  with Query1 do
  begin
    active:=false;
    requestlive:=false;
    cachedupdates:=false;
    active:=true;
  end;
  Save1.Enabled:=false;
  Cancel1.Enabled:=false;
end;

procedure TRequestCheckStock.Save1Click(Sender: TObject);
var i:integer;
    OldQty:real;
    OldRemark:string;
begin
  Query1.First;
  for i:=0 to Query1.RecordCount-1 do
  begin
    case Query1.updatestatus of
      usmodified:
      begin
        if  Query1.FieldByName('UserID_ManagerWH').AsString <> '' then
        begin
          showmessage('Already confirm. Can not modify');
          abort;
        end;
        Query1.Edit;
        Query1.FieldByName('UserID_WH').Value:=main.edit1.text;
        Query1.FieldByName('Userdate_WH').Value:=now;
        If Query1.fieldbyname('UseStockQty').OldValue=NULL then OldQty:=0 else OldQty:= Query1.fieldbyname('UseStockQty').OldValue;
        If Query1.fieldbyname('Remark').OldValue=NULL then OldRemark:='' else OldRemark:= Query1.fieldbyname('Remark').OldValue;
        If (Query1.fieldbyname('UseStockQty').OldValue=NULL) then
        begin
        end else
        begin
          with Qtemp do
          begin
            active:=false;
            sql.Clear;
            sql.Add(' Insert into CGUseStock_Dev_his(YPZLBH,YPDH,CLBH,UseStockQty,Remark,UserID_WH,UserDate_WH)');
            sql.Add(' values('''+Query1.fieldbyname('YPZLBH').AsString+''','''+Query1.fieldbyname('YPDH').AsString+''','''+Query1.fieldbyname('CLBH').AsString+''' ');
            sql.Add(' ,'+floattostr(OldQty)+','''+OldRemark+''','''+Query1.fieldbyname('UserID_WH').OldValue+''', '''+Datetostr(Query1.fieldbyname('UserDate_WH').OldValue)+''')');
            //funcobj.WriteErrorLog(sql.Text);
            execsql();
          end;
        end;
        if Query1.FieldByName('UseStockQty').AsString ='' then
        begin
        end else
          UpdateSQL1.apply(ukmodify);
      end;
    end;
    Query1.Next;
  end;
  Query1.active:=false;
  Query1.cachedupdates:=false;
  Query1.requestlive:=false;
  Query1.active:=true;
  Save1.Enabled:=false;
  Cancel1.Enabled:=false;
end;

procedure TRequestCheckStock.DBGridEh1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
var CLSL,UseStockQty: Double;
begin
  if ((Query1.FieldByName('UseStockQty').Value<Query1.FieldByName('CLSL').Value) and (Query1.FieldByName('UserID_WH').AsString<>''))  then
  begin
    if DataCol=20 then
    begin
      DBGridEh1.canvas.font.Color:=clred;
      DBGridEh1.canvas.Brush.Color:=clyellow;
      DBGridEh1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
    end;
  end;
  //
  CLSL:= Query1.FieldByName('CLSL').Value;
  if Query1.FieldByName('UseStockQty').IsNull then
    UseStockQty := 0
  else
    UseStockQty:= Query1.FieldByName('UseStockQty').Value;
  if not (Query1.FieldByName('UserDate_WH').IsNull) then
  begin
    if (Query1.FieldByName('UserDate_WH').Value <  Query1.FieldByName('UserDate').Value) AND ((CLSL > UseStockQty) and (UseStockQty > 0)) then
    begin
       DBGridEh1.canvas.font.color:=clblue;
       DBGridEh1.defaultdrawcolumncell(rect,datacol,column,state);
    end;
  end;
end;

procedure TRequestCheckStock.History1Click(Sender: TObject);
begin
  History:=THistory.create(self);
  History.show;
end;

procedure TRequestCheckStock.Query1AfterOpen(DataSet: TDataSet);
begin
  if (main.Edit1.text='55614') or (main.Edit1.text='47392') or (main.Edit1.text='33101')  then
  begin
    Confirm1.Enabled:=true;
    ConfrimAll1.Enabled:=true;
    Reset1.Enabled:=true;
    ResetAll1.Enabled:=true;
  end;
end;

procedure TRequestCheckStock.Query1AfterScroll(DataSet: TDataSet);
begin
  if (main.Edit1.text='55614') or (main.Edit1.text='47392') or (main.Edit1.text='33101') then
  begin
    Confirm1.Enabled:=true;
    ConfrimAll1.Enabled:=true;
    Reset1.Enabled:=true;
    ResetAll1.Enabled:=true;
  end;
end;

procedure TRequestCheckStock.Confirm1Click(Sender: TObject);
begin
  if cbStatus.Text<>'Has Use Stock and Not yet confirm' then
  begin
    showmessage('Pls choose status ''Has Use Stock and Not yet confirm'' ');
    abort;
  end;
  if messagedlg('Are you sure confirm?',mtconfirmation,[mbYes,mbNo],0)=mrYes then
  begin
    if Query1.FieldByName('UseStockQty').AsString='' then
    begin
      showmessage('Not key in Use Stock Qty');
      abort;
    end;
    with QTemp do
    begin
      active:=false;
      sql.Clear;
      if Query1.FieldByName('PurStock').AsString='' then
      begin
        sql.Add(' Update CGUseStock_Dev ');
        sql.Add(' Set UserID_ManagerWH ='''+main.Edit1.Text+''', UserDate_ManagerWH=Getdate()');
        sql.Add(' Where YPZLBH='''+Query1.fieldbyname('YPZLBH').AsString+''' and YPDH= '''+Query1.fieldbyname('YPDH').AsString+'''  and CLBH='''+Query1.fieldbyname('CLBH').AsString+''' ');

        sql.Add(' Insert into CGKCUSE(GSBH,ZLBH,CLBH,Qty,USERDATE,USERID,YN) ');
        sql.Add(' values ( '''+main.Edit2.Text+''','''+Query1.fieldbyname('YPDH').AsString+''','''+Query1.fieldbyname('CLBH').AsString+''', '''+Query1.fieldbyname('UseStockQty').AsString+''' ');
        sql.Add(' ,GetDate(), '''+main.Edit1.Text+''',''1'') ');
        //funcobj.WriteErrorLog(sql.Text);
        execsql();
      end else
      begin
        sql.Add(' Update CGUseStock_Dev ');
        sql.Add(' Set UserID_ManagerWH ='''+main.Edit1.Text+''', UserDate_ManagerWH=Getdate()');
        sql.Add(' Where YPZLBH='''+Query1.fieldbyname('YPZLBH').AsString+''' and YPDH= '''+Query1.fieldbyname('YPDH').AsString+'''  and CLBH='''+Query1.fieldbyname('CLBH').AsString+''' ');

        sql.Add(' Update CGKCUSE ');
        sql.Add(' Set  Qty= '''+Query1.fieldbyname('UseStockQty').AsString+''',USERDATE=Getdate(),USERID='''+main.Edit1.Text+''' ');
        sql.Add(' Where GSBH='''+main.Edit2.Text+''' AND ZLBH= '''+Query1.fieldbyname('YPDH').AsString+'''  AND CLBH='''+Query1.fieldbyname('CLBH').AsString+''' ');
        //funcobj.WriteErrorLog(sql.Text);
        execsql();
      end;
    end;
  end;
  button1.Click;
end;

procedure TRequestCheckStock.cbStatusChange(Sender: TObject);
begin
  Button1.Click;
end;

procedure TRequestCheckStock.ConfrimAll1Click(Sender: TObject);
var i:integer;
begin
  if cbStatus.Text<>'Has Use Stock and Not yet confirm' then
  begin
    showmessage('Pls choose status ''Has Use Stock and Not yet confirm'' ');
    abort;
  end;
  if messagedlg('Are you sure confirm all?',mtconfirmation,[mbYes,mbNo],0)=mrYes then
  begin
    Query1.First;
    for i:=0 to Query1.RecordCount-1 do
    begin
      if Query1.FieldByName('UseStockQty').AsString='' then
      begin
        showmessage('Not key in Use Stock Qty');
        abort;
      end;
      with QTemp do
      begin
        active:=false;
        sql.Clear;
        if Query1.FieldByName('PurStock').AsString='' then
        begin
          sql.Add(' Update CGUseStock_Dev ');
          sql.Add(' Set UserID_ManagerWH ='''+main.Edit1.Text+''', UserDate_ManagerWH=Getdate()');
          sql.Add(' Where YPZLBH='''+Query1.fieldbyname('YPZLBH').AsString+''' and YPDH= '''+Query1.fieldbyname('YPDH').AsString+'''  and CLBH='''+Query1.fieldbyname('CLBH').AsString+''' ');

          sql.Add(' Insert into CGKCUSE(GSBH,ZLBH,CLBH,Qty,USERDATE,USERID,YN) ');
          sql.Add(' values ( '''+main.Edit2.Text+''','''+Query1.fieldbyname('YPDH').AsString+''','''+Query1.fieldbyname('CLBH').AsString+''', '''+Query1.fieldbyname('UseStockQty').AsString+''' ');
          sql.Add(' ,GetDate(), '''+main.Edit1.Text+''',''1'') ');
          //funcobj.WriteErrorLog(sql.Text);
          execsql();
        end else
        begin
          sql.Add(' Update CGUseStock_Dev ');
          sql.Add(' Set UserID_ManagerWH ='''+main.Edit1.Text+''', UserDate_ManagerWH=Getdate()');
          sql.Add(' Where YPZLBH='''+Query1.fieldbyname('YPZLBH').AsString+''' and YPDH= '''+Query1.fieldbyname('YPDH').AsString+'''  and CLBH='''+Query1.fieldbyname('CLBH').AsString+''' ');

          sql.Add(' Update CGKCUSE ');
          sql.Add(' Set  Qty= '''+Query1.fieldbyname('UseStockQty').AsString+''',USERDATE=Getdate(),USERID='''+main.Edit1.Text+''' ');
          sql.Add(' Where GSBH='''+main.Edit2.Text+''' AND ZLBH= '''+Query1.fieldbyname('YPDH').AsString+'''  AND CLBH='''+Query1.fieldbyname('CLBH').AsString+''' ');
          //funcobj.WriteErrorLog(sql.Text);
          execsql();
        end;
      end;
      Query1.Next;
    end;
  end;
  button1.Click;
end;

procedure TRequestCheckStock.Reset1Click(Sender: TObject);
begin
  if cbStatus.Text<>'Manager confirmed' then
  begin
    showmessage('Pls choose status ''Manager confirmed'' ');
    abort;
  end;
  if messagedlg('Are you sure reset?',mtconfirmation,[mbYes,mbNo],0)=mrYes then
  begin
    with QTemp do
    begin
      active:=false;
      sql.Clear;
      sql.Add(' Update CGUseStock_Dev ');
      sql.Add(' Set UserID_ManagerWH =NULL ');
      sql.Add(' Where YPZLBH='''+Query1.fieldbyname('YPZLBH').AsString+''' and YPDH= '''+Query1.fieldbyname('YPDH').AsString+'''  and CLBH='''+Query1.fieldbyname('CLBH').AsString+''' ');

      sql.Add(' Delete CGKCUSE ');
      sql.Add(' Where GSBH='''+main.Edit2.Text+''' AND ZLBH= '''+Query1.fieldbyname('YPDH').AsString+'''  AND CLBH='''+Query1.fieldbyname('CLBH').AsString+''' ');
      //funcobj.WriteErrorLog(sql.Text);
      execsql();
    end;
  end;
  button1.Click;
end;

procedure TRequestCheckStock.ResetAll1Click(Sender: TObject);
var i:integer;
begin
  if cbStatus.Text<>'Update Quantity' then
  begin
    showmessage('Pls choose status ''Update Quantity'' ');
    abort;
  end;
  if messagedlg('Are you sure reset all?',mtconfirmation,[mbYes,mbNo],0)=mrYes then
  begin
    Query1.First;
    for i:=0 to Query1.RecordCount-1 do
    begin
      with QTemp do
      begin
        active:=false;
        sql.Clear;
        sql.Add(' Update CGUseStock_Dev ');
        sql.Add(' Set UserID_ManagerWH =NULL ');
        sql.Add(' Where YPZLBH='''+Query1.fieldbyname('YPZLBH').AsString+''' and YPDH= '''+Query1.fieldbyname('YPDH').AsString+'''  and CLBH='''+Query1.fieldbyname('CLBH').AsString+''' ');

        sql.Add(' Delete CGKCUSE ');
        sql.Add(' Where GSBH='''+main.Edit2.Text+''' AND ZLBH= '''+Query1.fieldbyname('YPDH').AsString+'''  AND CLBH='''+Query1.fieldbyname('CLBH').AsString+''' ');
        //funcobj.WriteErrorLog(sql.Text);
        execsql();
      end;
      Query1.Next;
    end;
  end;
  button1.Click;
end;

end.



