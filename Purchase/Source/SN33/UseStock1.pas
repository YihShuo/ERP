unit UseStock1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls, Menus, Dateutils,
  GridsEh, DBGridEh, ehlibbde, PrnDbgeh, comobj, ComCtrls, Buttons, Math;

type
  TUseStock = class(TForm)
    Query1: TQuery;
    DSZLZLS2: TDataSource;
    ZLZLS2Qry: TQuery;
    ZLZLS2QryZLBH: TStringField;
    ZLZLS2QryArticle: TStringField;
    ZLZLS2QryXieMing: TStringField;
    ZLZLS2QryPairs: TIntegerField;
    ZLZLS2QryCLBH: TStringField;
    ZLZLS2QryYWPM: TStringField;
    ZLZLS2QryDWBH: TStringField;
    ZLZLS2QryCQDH: TStringField;
    ZLZLS2QryCLSL: TFloatField;
    ZLZLS2QryCGQty: TCurrencyField;
    ZLZLS2QryRKQty: TCurrencyField;
    ZLZLS2QryUseStock: TCurrencyField;
    ZLZLS2QryCGDate: TDateTimeField;
    ZLZLS2QryYQDate: TDateTimeField;
    ZLZLS2QryCFMDate: TDateTimeField;
    ZLZLS2QryCGNO: TStringField;
    ZLZLS2QryRKNO: TStringField;
    ZLZLS2QryZWPM: TStringField;
    ZLZLS2QryCLBHYS: TStringField;
    ZLZLS2QryRKDate: TDateTimeField;
    ZLZLS2QryShipDate: TDateTimeField;
    UpZLZLS2: TUpdateSQL;
    PrintDBGridEh2: TPrintDBGridEh;
    PageControl1: TPageControl;
    TabSheet3: TTabSheet;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label3: TLabel;
    Button1: TButton;
    Edit2: TEdit;
    EDIT1: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    CheckBox1: TCheckBox;
    Button2: TButton;
    Edit3: TEdit;
    Button3: TButton;
    CheckBox2: TCheckBox;
    Label13: TLabel;
    Edit7: TEdit;
    ZLZLS2QryBUYNO: TStringField;
    ZLZLS2QryZKBH: TStringField;
    ZLZLS2QryZKQty: TFloatField;
    ZLZLS2QryZKLQty: TFloatField;
    DBGridEh2: TDBGridEh;
    Panel2: TPanel;
    DBGridEh1: TDBGridEh;
    DS1: TDataSource;
    UpSql1: TUpdateSQL;
    Panel3: TPanel;
    BB5: TBitBtn;
    Splitter1: TSplitter;
    ZLZLS2QryMemo: TStringField;
    CGKCUSESQry: TQuery;
    CGKCUSESQryZLBH: TStringField;
    CGKCUSESQryCLBH: TStringField;
    CGKCUSESQrySIZE: TStringField;
    CGKCUSESQryCLSL: TFloatField;
    CGKCUSESQryUseStock: TCurrencyField;
    CGKCUSESQryUserID: TStringField;
    ZLZLS2QryUserID: TStringField;
    KCZKSQry: TQuery;
    UpdKCZKS: TUpdateSQL;
    procedure EDIT1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit4KeyPress(Sender: TObject; var Key: Char);
    procedure Edit5KeyPress(Sender: TObject; var Key: Char);
    procedure Button1Click(Sender: TObject);
    procedure Edit6KeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure DBGridEh1EditButtonClick(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure DBGridEh2GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure DBGridEh2EditButtonClick(Sender: TObject);
    procedure CGKCUSESQryAfterOpen(DataSet: TDataSet);
    procedure BB5Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ZLZLS2QryAfterOpen(DataSet: TDataSet);
  private
    { Private declarations }
    procedure CheckCGKCUSES();
    procedure CheckCGKCUSES_CGKCUSE(ZLBH:String;CLBH:string);
  public
    { Public declarations }
  end;

var
  UseStock: TUseStock;
  sdate,edate:Tdate;

implementation

uses main1, UseStock_CL1, UseStock_KCZK1, FunUnit;

{$R *.dfm}

procedure TUseStock.EDIT1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    edit2.SetFocus;
end;

procedure TUseStock.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    edit4.SetFocus;
end;

procedure TUseStock.Edit4KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    edit6.SetFocus;
end;

procedure TUseStock.Edit5KeyPress(Sender: TObject; var Key: Char);
begin
  button1click(nil);
end;

procedure TUseStock.Button1Click(Sender: TObject);
begin
  if ((not checkbox1.Checked) and (not checkbox2.Checked)) then
  begin
    showmessage('Pls select TW / VN material first.') ;
    abort;
  end;
  if ((length(edit1.Text)<3) and (length(edit5.Text)<3)) then
  begin
    showmessage('Pls setup condition first!');
    abort;
  end;
  //
  CGKCUSESQry.Active:=false;
  with ZLZLS2Qry do
  begin
    active:=false;
    sql.Clear;
    if  ((checkbox1.Checked) or (checkbox2.Checked)) then
    begin
       active:=false;
       sql.Clear;
       sql.add('select * from (');
       sql.add('select  isnull(DDZLTW.BUYNO,0)as BUYNO,ZLZLS2.ZLBH,ZLZLS2.CLBH,CLZL.YWPM,CLZL.ZWPM,CLZL.DWBH,XXZL.Article,XXZL.XieMing,DDZL.Pairs,');
       sql.add('        CLZL.CQDH,isnull(CGZL.CGQty,0) as CGQty,');
       sql.add('        isnull(sum(ZLZLS2.CLSL),0) as CLSL,CGZL.YQDate,CGZL.CFMDate,CGZl.CGDate,');
       sql.add('        CGZL.CGNO,isnull(CGKCUSE.Qty,0) as UseStock,CGKCUSE.CLBHYS,');
       sql.add('        RKZL.RKNO,RKZL.RKDate,isnull(RKZL.RKQty,0) as RKQty,DDZL.ShipDate,KCZK.ZKBH,KCZK.Memo,KCZK.ZKQty,KCZK.ZKLQty,CGKCUSE.UserID');
       sql.add('from ZLZLS2  with (nolock) ');
       sql.add('left join CLZL  with (nolock) on CLZL.CLDH=ZLZLs2.CLBH');
       sql.add('left join DDZl  with (nolock) on DDZl.ZLBH=ZLZLS2.ZLBH');
       sql.add('left join DDZlTW  with (nolock) on DDZlTW.DDBH=ZLZLS2.ZLBH');
       sql.add('left join KFZL  with (nolock) on KFZl.KFDH=DDZl.KHBH ');
       sql.add('left join ZLZL  with (nolock) on ZLZL.ZLBH=ZLZLS2.ZLBH');
       sql.add('left join SCZL  with (nolock) on SCZL.ZLBH=ZLZL.ZLBH ');
       sql.add('left join CGKCUSE  with (nolock) on CGKCUSE.ZLBH=ZLZLS2.ZLBH and CGKCUSE.CLBH=ZLZLS2.CLBH');
       sql.add('left join XXZL  with (nolock) on XXZl.XieXing=DDZl.XieXing and XXZL.SheHao=DDZl.SheHao');
       sql.add('left join XXBWFL  with (nolock) on XXBWFL.XieXing=XXZL.XieXing and XXBWFL.BWBH=ZLZLS2.BWBH ');
       sql.add('left join XXBWFLS  with (nolock) on XXBWFLS.FLBH=XXBWFL.FLBH ');
            //加載采購相關的數量及日期等數據
       sql.add('left join (select CGZLSS.ZLBH,CGZLSS.CLBH,sum(CGZLSS.Qty) as CGQty,');
       sql.add('                  max(CGZLSS.CFMDate) as CFMDate,max(CGZL.CGDate) as CGDate,');
       sql.add('                  max(CGZL.CGNO) as CGNO,max(CGZLSS.YQDate) as YQDate ');
       sql.add('           from CGZLSS with (nolock) ');
       sql.add('           left join CGZL  with (nolock) on CGZl.CGNO=CGZLSS.CGNO');
       sql.add('           where CGZLSS.CLBH like '+''''+edit1.Text+'%'+'''');
       sql.add('                 and CGZLSS.ZLBH like '+''''+edit5.Text+'%'+'''');
       sql.add('           group by CGZLSS.ZLBH,CGZLSS.CLBH ) CGZL');
       sql.add('                 on CGZL.ZLBH=ZLZLS2.ZLBH and CGZL.CLBH=ZLZLS2.CLBH');
          //加載入庫相關的數量及日期等數據
       sql.add('left join (select KCRKS.CGBH as ZLBH ,KCRKS.CLBH,sum(KCRKS.Qty ) as RKQty, ');
       sql.add('                  max(KCRKS.RKNO) as RKNO,max(KCRK.USERDate) as RKDate ');
       sql.add('           from  KCRKS with (nolock) ');
       sql.add('           left join KCRK  with (nolock) on KCRK.RKNO=KCRKS.RKNO ');
       sql.add('           where KCRKS.CLBH like '+''''+edit1.Text+'%'+'''');
       sql.add('                 and KCRKS.CGBH like '+''''+edit5.Text+'%'+'''');
       sql.add('           group by KCRKS.CGBH,KCRKS.CLBH ) RKZL');
       sql.add('                 on RKZL.ZLBH=ZLZLS2.ZLBH and RKZL.CLBH=ZLZLS2.CLBH ');
       //20211112 造庫SQL語法 修改所有ZKBH加總
        SQL.Add('Left Join (Select KCZK.CLBH,max(KCZK.Memo) as Memo,Max(KCZK.ZKBH) as ZKBH,Sum(KCZKS.Qty) as ZKQty,Sum(KCZKS.LQty) as ZKLQty ');
        SQL.Add('    from KCZK ');
        SQL.Add('    left join KCZKS on KCZKS.ZKBH=KCZK.ZKBH ');
        SQL.Add('    where KCZK.YN<>''X'' and KCZK.ZKNO=''ZZZZZZZZZZ'' and KCZK.GSBH='''+main.edit2.Text+''' and KCZK.USERDate>GetDate()-180 and KCZKS.LQty>=0  ');
        SQL.Add('    Group by KCZK.CLBH ');
        SQL.Add('    having(Sum(KCZKS.LQty))>=0 )  KCZK on KCZK.CLBH=ZLZLS2.CLBH ');
       //
       sql.add('where ZLZLS2.CLBH like '''+edit1.Text+'%'+'''');
        //不要買安全庫存類的材料
       sql.add('       and ZLZLS2.CLBH not like ''W%'+'''');
       sql.add('       and not exists(select CLBH from KCSAFE where KCSAFE.CLBH=ZLZLS2.CLBH )');
        //sql.add('       and ZLZLS2.XH<>'+''''+'VN'+'''');
       sql.add('       and ZLZLS2.ZLBH like '+''''+edit5.Text+'%'+'''');
       sql.add('       and CLZL.YWPM like '+''''+'%'+edit2.Text+'%'+'''');
       sql.add('       and XXZl.XieMing like '+''''+'%'+edit6.text+'%'+'''');
       sql.add('       and XXZL.Article like '+''''+edit3.text+'%'+'''');
       sql.add('       and DDZL.GSBH='+''''+main.edit2.Text+'''');
       sql.add('       and KFZL.KFJC like '+''''+'%'+edit4.Text+'%'+'''');
       if edit7.Text<>'' then
          sql.add('      and DDZLTW.BUYNO like '+''''+'%'+edit7.Text+'%'+'''');
       sql.add('       and ZLZLS2.ZMLB='+''''+'N'+'''');
       if ((checkbox1.Checked=true) and (checkbox2.Checked=false)) then
          sql.add('       and CLZL.CQDH=''TW''');
       if ((checkbox1.Checked=false) and (checkbox2.Checked=true)) then
          sql.add('       and CLZL.CQDH=''VN''');
        sql.add('       and SCZL.SCBH=SCZl.ZLBH ');
        sql.add('       and SCZL.SCBH is not null ');
        sql.add('       and ZLZLS2.CLSL<>0') ;
        //加上不要開發材料分類到無需領料的部分
        sql.add('       and (XXBWFLS.DFL<>''G'' or XXBWFLS.DFL is null)');
        sql.add('group by DDZLTW.BUYNO,ZLZLS2.ZLBH,ZLZLS2.CLBH,CLZL.YWPM,CLZL.DWBH,CLZL.CQDH,CLZL.ZWPM,');
        sql.add('         XXZL.Article,XXZL.XieMing,DDZL.Pairs,CGKCUSE.Qty,CGKCUSE.CLBHYS,CGZl.CGQty,CGZL.YQDate,');
        sql.add('         CGZL.CFMDate,CGZl.CGDate,CGZL.CGNO,RKZL.RKNO,RKZL.RKDate,RKZL.RKQty,DDZL.ShipDate,KCZK.ZKBH,KCZK.ZKQty,KCZK.ZKLQty,KCZK.Memo,CGKCUSE.UserID');
        sql.add(' ) ZLZLS2');
        sql.add(' where 1=1');
        sql.add('order by ZLZLS2.ZLBH,ZLZLS2.CQDH,ZLZLS2.CLBH');
        //funcObj.WriteErrorLog(sql.Text);
        active:=true;
    end;
  end;
  CGKCUSESQry.ParamByName('GSBH').Value:=main.Edit2.Text;
  CGKCUSESQry.Active:=true;
  //
end;

procedure TUseStock.Edit6KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    edit6.SetFocus;
end;

procedure TUseStock.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=Cafree;
end;


procedure TUseStock.FormDestroy(Sender: TObject);
begin
  UseStock:=nil;
end;

procedure TUseStock.Button2Click(Sender: TObject);
var   a:string;
      eclApp,WorkBook:olevariant;
      i,j:integer;
begin

  if  ZLZLS2Qry.active  then
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
        for   i:=0   to   ZLZLS2Qry.fieldcount-1   do
        begin
          eclApp.Cells(1,i+1):=ZLZLS2Qry.fields[i].FieldName;
        end;

        ZLZLS2Qry.First;
        j:=2;
        while  not  ZLZLS2Qry.Eof   do
        begin
          for   i:=0   to  ZLZLS2Qry.fieldcount-1  do
          begin
            eclApp.Cells(j,i+1):=ZLZLS2Qry.Fields[i].Value;
          end;
          ZLZLS2Qry.Next;
          inc(j);
        end;
        eclapp.columns.autofit;
        eclApp.Visible:=True;
        showmessage('Succeed');
    except
      on  F:Exception   do
          showmessage(F.Message);
    end;
  end;

end;

procedure TUseStock.DBGridEh1EditButtonClick(Sender: TObject);
begin
  UseStock_CL:=TUseStock_CL.create(self);
  UseStock_CL.show;
end;

procedure TUseStock.Button3Click(Sender: TObject);
begin
  Printdbgrideh2.Preview;
end;

procedure TUseStock.DBGridEh2GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
//09.01.2024
var
  CLSLValue, CGQtyValue, UseStockValue: Double;
  TotalQty: Double;
begin
  //09.01.2024
  CLSLValue := ZLZLS2Qry.FieldByName('CLSL').AsFloat;
  CGQtyValue := ZLZLS2Qry.FieldByName('CGQty').AsCurrency;
  UseStockValue := ZLZLS2Qry.FieldByName('UseStock').AsCurrency;
  TotalQty := RoundTo(CGQtyValue + UseStockValue, -2);  // Tinh tong va lam tron 2 so thap phan

  if CLSLValue <= TotalQty then
  begin
    DBGridEh2.Canvas.Font.Color := clBlue;
  end
  else if ((CGQtyValue > 0) or (UseStockValue > 0)) and (CLSLValue > TotalQty) then
  begin
    if (CGQtyValue <> 0) or (UseStockValue <> 0) then
    begin
      DBGridEh2.Canvas.Font.Color := clRed;
    end;
  end
  else if CLSLValue < TotalQty then
  begin
    DBGridEh2.Canvas.Font.Color := clGreen;
  end;

  {if ZLZLS2Qry.FieldByName('CLSL').value<=ZLZLS2Qry.FieldByName('CGQty').value+ZLZLS2Qry.FieldByName('UseStock').value then
  begin
    DBGridEh2.canvas.font.color:=clBlue;
  end;
  if (((ZLZLS2Qry.FieldByName('CGQty').value>0) or (ZLZLS2Qry.FieldByName('UseStock').value>0))
      and (ZLZLS2Qry.FieldByName('CLSL').value>ZLZLS2Qry.FieldByName('CGQty').value+ZLZLS2Qry.FieldByName('UseStock').value)) then
  begin
    if ((ZLZLS2Qry.FieldByName('CGQty').value<>0) or (ZLZLS2Qry.FieldByName('UseStock').value<>0)) then
    begin
      DBGridEh2.canvas.font.color:=clred;
    end;
  end;
  if ZLZLS2Qry.FieldByName('CLSL').value<ZLZLS2Qry.FieldByName('CGQty').value+ZLZLS2Qry.FieldByName('UseStock').value then
  begin
    DBGridEh2.canvas.font.color:=clgreen;
  end;}

end;

procedure TUseStock.DBGridEh2EditButtonClick(Sender: TObject);
begin
  //
  if DBGrideh2.Selectedfield.fieldname='CGQty' then
  begin
    UseStock_CL:=TUseStock_CL.create(self);
    UseStock_CL.Show;
  end;
  if DBGrideh2.Selectedfield.fieldname='ZKLQty' then
  begin
    UseStock_KCZK:=TUseStock_KCZK.create(self);
    UseStock_KCZK.show;
  end;
  //
end;

procedure TUseStock.CGKCUSESQryAfterOpen(DataSet: TDataSet);
begin
  BB5.Enabled:=true;
end;

//Update CGKCUSE
procedure TUseStock.CheckCGKCUSES_CGKCUSE(ZLBH:String;CLBH:string);
var UseQty:String;
begin
  //
  UseQty:='0';
  with Query1 do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Select IsNull(Sum(Qty),0) as Qty from CGKCUSES where ZLBH='''+ZLBH+''' and CLBH='''+CLBH+''' and GSBH='''+main.Edit2.Text+''' ');
    Active:=true;
    if RecordCount>0 then UseQty:=FieldByName('Qty').AsString;
    Active:=false;
  end;
  //
  with Query1 do
  begin
    Active:=false;
    SQL.Clear;
    sql.add('Select ZLBH from CGKCUSE where  ZLBH='''+ZLBH+''' and CLBH='''+CLBH+'''  and GSBH='''+main.Edit2.Text+'''  ');
    Active:=true;
    if ((RecordCount=0) and (strtofloat(UseQty)>0)) then
    begin
      SQL.Clear;
      SQL.Add('Insert into CGKCUSE');
      SQL.Add('(GSBH,ZLBH,CLBH,Qty,CLBHYS,Memo,UserID,UserDate,YN) values');
      SQL.Add('('''+main.Edit2.Text+''','''+ZLBH+''','''+CLBH+''',');
      SQL.Add(''''+UseQty+''',null,null,'''+main.Edit1.Text+''',GetDate(),1)');
      //funcObj.WriteErrorLog(sql.Text);
      Execsql;
    end else
    begin
       if ((RecordCount>0) and (strtofloat(UseQty)=0)) then
       begin
         active:=false;
         sql.Clear;
         sql.Add('Delete  from CGKCUSE');
         sql.Add('where ZLBH='''+ZLBH+'''') ;
         sql.Add('and CLBH='''+CLBH+'''  ');
         sql.Add('and GSBH='''+main.Edit2.Text+''' and UserID='''+main.Edit1.Text+''' ');//and MEMO in (select top 1 ''ZKBH:''+ZKBH from KCZK  where GSBH='''+main.Edit2.Text+''' and CLBH='''+Qry_ToPO.fieldbyname('CLBH').AsString+''' order by ZKBH desc)  ');
         //funcObj.WriteErrorLog(sql.Text);
         execsql;
       end else
       begin
         if (RecordCount>0) then
         begin
           active:=false;
           sql.Clear;
           sql.Add('update CGKCUSE set Qty='''+UseQty+'''');
           sql.add(',CLBHYS=null');
           sql.add(',Memo=null ');
           sql.add(',USERDATE=GetDate()');
           sql.add(',USERID='''+main.Edit1.Text+'''');
           sql.add('where ZLBH='''+ZLBH+'''');
           sql.add('and CLBH='''+CLBH+'''');
           sql.Add('and GSBH='''+main.Edit2.Text+''' and UserID='''+main.Edit1.Text+''' ');//and MEMO in (select top 1 ''ZKBH:''+ZKBH from KCZK  where GSBH='''+main.Edit2.Text+''' and CLBH='''+Qry_ToPO.fieldbyname('CLBH').AsString+''' order by ZKBH desc) ');
           //funcObj.WriteErrorLog(sql.Text);
           execsql;
         end;
       end;
    end;
  end;
end;

//檢查設定庫存
procedure TUseStock.CheckCGKCUSES();
var i:integer;
    USESTOCK,UseStockQty:double;
    ZKBH:String;
begin
    UseStockQty:=0;
    ZKBH:='';
    with Query1 do
    begin
       active:=false;
       sql.Clear;
       sql.add('Select ZLBH from CGKCUSES where  ZLBH='''+CGKCUSESQry.FieldByName('ZLBH').AsString+''' and CLBH='''+CGKCUSESQry.FieldByName('CLBH').AsString+''' and SIZE='''+CGKCUSESQry.FieldByName('SIZE').AsString+''' and GSBH='''+main.Edit2.Text+''' ');
       active:=true;
       if RecordCount=0 then
       begin
         if CGKCUSESQry.FieldByName('UseStock').Value>0 then
         begin
           //沖銷造庫單號和數量
           KCZKSQry.Active:=false;
           KCZKSQry.Active:=true;
           USESTOCK:=CGKCUSESQry.fieldbyname('USESTOCK').Value;
           //
           repeat
             if KCZKSQry.RecordCount>0 then
             begin
               if KCZKSQry.FieldByName('ZKLQty').Value>0 then
               begin
                 if KCZKSQry.FieldByName('ZKLQty').Value>=USESTOCK then
                 begin
                   UseStockQty:=USESTOCK;
                   USESTOCK:=USESTOCK-UseStockQty;
                   ZKBH:=KCZKSQry.FieldByName('ZKBH').Value;
                   KCZKSQry.Edit;
                   KCZKSQry.FieldByName('ZKLQty').Value:=KCZKSQry.FieldByName('ZKLQty').Value-UseStockQty;
                   KCZKSQry.Post;
                   if KCZKSQry.FieldByName('ZKLQty').Value=0 then KCZKSQry.Next;
                 end else
                 begin
                   UseStockQty:=KCZKSQry.FieldByName('ZKLQty').Value;
                   USESTOCK:=USESTOCK-UseStockQty;
                   ZKBH:=KCZKSQry.FieldByName('ZKBH').Value;
                   KCZKSQry.Edit;
                   KCZKSQry.FieldByName('ZKLQty').Value:=KCZKSQry.FieldByName('ZKLQty').Value-UseStockQty;
                   KCZKSQry.Post;
                   if KCZKSQry.FieldByName('ZKLQty').Value=0 then KCZKSQry.Next;
                 end;
               end else
               begin
                 UseStockQty:=USESTOCK;
                 USESTOCK:=USESTOCK-UseStockQty;
                 ZKBH:='ZZZZZZZZZZ';
               end;
             end else
             begin
               UseStockQty:=USESTOCK;
               USESTOCK:=USESTOCK-UseStockQty;
               ZKBH:='ZZZZZZZZZZ';
             end;
             active:=false;
             sql.Clear;
             sql.Add('Insert into CGKCUSES');
             sql.Add('(GSBH,ZLBH,CLBH ,SIZE, ZKBH,Qty,UserID,UserDate,YN) values');
             sql.Add('('''+main.Edit2.Text+''''+','''+CGKCUSESQry.fieldbyname('ZLBH').AsString+''','''+CGKCUSESQry.fieldbyname('CLBH').AsString+''','''+CGKCUSESQry.FieldByName('SIZE').AsString+''',');
             sql.Add(''''+ZKBH+''','+floattostr(UseStockQty)+','''+main.Edit1.Text+''',GetDate(),1)');
             //funcObj.WriteErrorLog(sql.Text);
             Execsql;
           until USESTOCK<=0;
           //
         end;
       end else
       begin
           if (CGKCUSESQry.FieldByName('UseStock').Value=0)    then
           begin
             active:=false;
             sql.Clear;
             sql.Add('Delete CGKCUSES from CGKCUSES');
             sql.Add('where ZLBH='''+CGKCUSESQry.fieldbyname('ZLBH').AsString+'''') ;
             sql.Add('and CLBH='''+CGKCUSESQry.fieldbyname('CLBH').AsString+''' and SIZE='''+CGKCUSESQry.FieldByName('SIZE').AsString+''' ');
             sql.Add('and GSBH='''+main.Edit2.Text+''' and UserID='''+main.Edit1.Text+'''  ');//and MEMO in (select top 1 ''ZKBH:''+ZKBH from KCZK  where GSBH='''+main.Edit2.Text+''' and CLBH='''+CGS.fieldbyname('CLBH').AsString+''' order by ZKBH desc) ');
             execsql;
           end else
           begin
             //更新要先刪除
             active:=false;
             sql.Clear;
             sql.Add('Delete CGKCUSES from CGKCUSES');
             sql.Add('where ZLBH='''+CGKCUSESQry.fieldbyname('ZLBH').AsString+'''') ;
             sql.Add('and CLBH='''+CGKCUSESQry.fieldbyname('CLBH').AsString+''' and SIZE='''+CGKCUSESQry.FieldByName('SIZE').AsString+''' ');
             sql.Add('and GSBH='''+main.Edit2.Text+''' and UserID='''+main.Edit1.Text+'''  ');//and MEMO in (select top 1 ''ZKBH:''+ZKBH from KCZK  where GSBH='''+main.Edit2.Text+''' and CLBH='''+CGS.fieldbyname('CLBH').AsString+''' order by ZKBH desc) ');
             //funcObj.WriteErrorLog(sql.Text);
             execsql;
             //沖銷造庫單號和數量
             KCZKSQry.Active:=false;
             KCZKSQry.Active:=true;
             USESTOCK:=CGKCUSESQry.fieldbyname('USESTOCK').Value;
             //
             repeat
               if KCZKSQry.RecordCount>0 then
               begin
                 if KCZKSQry.FieldByName('ZKLQty').Value>0 then
                 begin
                   if KCZKSQry.FieldByName('ZKLQty').Value>=USESTOCK then
                   begin
                     UseStockQty:=USESTOCK;
                     USESTOCK:=USESTOCK-UseStockQty;
                     ZKBH:=KCZKSQry.FieldByName('ZKBH').Value;
                     KCZKSQry.Edit;
                     KCZKSQry.FieldByName('ZKLQty').Value:=KCZKSQry.FieldByName('ZKLQty').Value-UseStockQty;
                     KCZKSQry.Post;
                     if KCZKSQry.FieldByName('ZKLQty').Value=0 then KCZKSQry.Next;
                   end else
                   begin
                     UseStockQty:=KCZKSQry.FieldByName('ZKLQty').Value;
                     USESTOCK:=USESTOCK-UseStockQty;
                     ZKBH:=KCZKSQry.FieldByName('ZKBH').Value;
                     KCZKSQry.Edit;
                     KCZKSQry.FieldByName('ZKLQty').Value:=KCZKSQry.FieldByName('ZKLQty').Value-UseStockQty;
                     KCZKSQry.Post;
                     if KCZKSQry.FieldByName('ZKLQty').Value=0 then KCZKSQry.Next;
                   end;
                 end else
                 begin
                   UseStockQty:=USESTOCK;
                   USESTOCK:=USESTOCK-UseStockQty;
                   ZKBH:='ZZZZZZZZZZ';
                 end;
               end else
               begin
                 UseStockQty:=USESTOCK;
                 USESTOCK:=USESTOCK-UseStockQty;
                 ZKBH:='ZZZZZZZZZZ';
               end;
               active:=false;
               sql.Clear;
               sql.Add('Insert into CGKCUSES');
               sql.Add('(GSBH,ZLBH,CLBH ,SIZE, ZKBH,Qty,UserID,UserDate,YN) values');
               sql.Add('('''+main.Edit2.Text+''''+','''+CGKCUSESQry.fieldbyname('ZLBH').AsString+''','''+CGKCUSESQry.fieldbyname('CLBH').AsString+''','''+CGKCUSESQry.FieldByName('SIZE').AsString+''',');
               sql.Add(''''+ZKBH+''','+floattostr(UseStockQty)+','''+main.Edit1.Text+''',GetDate(),1)');
               //funcObj.WriteErrorLog(sql.Text);
               Execsql;
             until USESTOCK<=0;
             //
           end;
       end;
    end;

end;
//

procedure TUseStock.BB5Click(Sender: TObject);
var i:integer;
    IsUpdateCGKCUSE:boolean;
    UseStock:double;
begin
  IsUpdateCGKCUSE:=false;
  UseStock:=0;
  CGKCUSESQry.First;
  for i:=0 to CGKCUSESQry.RecordCount-1 do
  begin
    //20210324分段尺碼多訂單 利庫
    if CGKCUSESQry.fieldbyname('UseStock').IsNull then
    begin
       CGKCUSESQry.Edit;
       CGKCUSESQry.fieldbyname('UseStock').Value:=0;
       CGKCUSESQry.Post;
    end;
    UseStock:=UseStock+CGKCUSESQry.fieldbyname('UseStock').Value;
    case CGKCUSESQry.updatestatus of
      usmodified:
      begin
        //20210324 Update CGKCUSES
        CheckCGKCUSES();
        IsUpdateCGKCUSE:=true;
      end;
    end;
    CGKCUSESQry.Next;
  end;
  if IsUpdateCGKCUSE=true then
  begin
    CheckCGKCUSES_CGKCUSE(ZLZLS2Qry.FieldByName('ZLBH').AsString,ZLZLS2Qry.FieldByName('CLBH').AsString );
  end;
  //20210322檢查更新造庫剩餘數量
  with Query1 do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Update KCZKS set LQty=A.LQty from (');
    SQL.Add('select KCZKS.ZKBH,KCZKS.SIZE,IsNull(CGKCUSE.Qty,0) as UseQty,Round(KCZKS.Qty-IsNull(CGKCUSE.Qty,0),1) as LQty from KCZKS');
    SQL.Add('left join (');
    SQL.Add('Select CGKCUSES.ZKBH ,CGKCUSES.SIZE,Sum(CGKCUSES.Qty) as Qty from CGKCUSES');
    SQL.Add('where CGKCUSES.CLBH='''+ZLZLS2Qry.fieldbyname('CLBH').AsString+''' and CGKCUSES.ZKBH<>''ZZZZZZZZZZ''  and CGKCUSES.UserDate>=GETDATE()-180  ');
    SQL.Add('Group by CGKCUSES.ZKBH ,CGKCUSES.SIZE ) CGKCUSE on KCZKS.ZKBH=CGKCUSE.ZKBH and KCZKS.SIZE=CGKCUSE.SIZE');
    SQL.Add('where KCZKS.ZKBH in (select ZKBH from KCZK where CLBH='''+ZLZLS2Qry.fieldbyname('CLBH').AsString+''' and UserDate>=GETDATE()-180 )  ) A');
    SQL.Add('where  A.ZKBH=KCZKS.ZKBH and A.SIZE=KCZKS.SIZE ');
    //funcObj.WriteErrorLog(sql.Text);
    ExecSQL();
    Active:=false;
    SQL.Clear;
    SQL.Add('Update KCZK set LQty=A.LQty from ');
    SQL.Add('(Select ZKBH,Sum(LQty) as LQty ');
    SQL.Add('from KCZKS ');
    SQL.Add('where KCZKS.ZKBH in (select ZKBH from KCZK where CLBH='''+ZLZLS2Qry.fieldbyname('CLBH').AsString+''' and UserDate>=GETDATE()-180 ) ');
    SQL.Add('Group by ZKBH) A ');
    SQL.Add('where A.ZKBH=KCZK.ZKBH ');
    //funcObj.WriteErrorLog(sql.Text);
    ExecSQL();
  end;
  with ZLZLS2Qry do
  begin
      Edit;
      FieldByName('UseStock').Value:=UseStock;
      Post;
  end;
  KCZKSQry.Active:=false;
end;

procedure TUseStock.FormCreate(Sender: TObject);
begin
  with KCZKSQry do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('    Select KCZK.*,KCZK.ZKQty-IsNull(CGKCUSES.UseQty,0) as ZKLQty from (');
    SQL.Add('    Select KCZK.YN,KCZK.CLBH,KCZKS.ZKBH,KCZKS.SIZE,KCZKS.Qty as ZKQty');
    SQL.Add('     from KCZK ');
    SQL.Add('     left join KCZKS on KCZKS.ZKBH=KCZK.ZKBH ');
    SQL.Add('     where KCZK.YN<>''X'' and KCZK.ZKNO=''ZZZZZZZZZZ'' and KCZK.GSBH='''+main.edit2.Text+''' and KCZK.USERDate>GetDate()-180    ');
    SQL.Add('                  and KCZK.CLBH=:CLBH and KCZKS.SIZE=:SIZE ) KCZK');
    SQL.Add('     left join (Select ZKBH,CLBH,SIZE,Sum(Qty) as UseQty from CGKCUSES where GSBH='''+main.edit2.Text+''' and CLBH=:CLBH and SIZE=:SIZE  and ZKBH<>''ZZZZZZZZZZ'' ');
    SQL.Add('	              and ZKBH in (Select ZKBH from KCZK where  KCZK.YN<>''X'' and KCZK.ZKNO=''ZZZZZZZZZZ'' and KCZK.GSBH='''+main.edit2.Text+''' and KCZK.USERDate>GetDate()-180  and KCZK.CLBH=:CLBH ) ');
    SQL.Add('				  Group by ZKBH,CLBH,SIZE)  CGKCUSES on CGKCUSES.ZKBH=KCZK.ZKBH and CGKCUSES.CLBH=KCZK.CLBH and CGKCUSES.SIZE=KCZK.SIZE');
    SQL.Add('    where (KCZK.ZKQty-IsNull(CGKCUSES.UseQty,0)>0) ');
    SQL.Add('    order by KCZK.YN DESC, KCZK.ZKBH DESC');
    //funcObj.WriteErrorLog(sql.Text);
  end;
end;

procedure TUseStock.ZLZLS2QryAfterOpen(DataSet: TDataSet);
begin
  DBGridEh2.Columns[13].buttonstyle:=cbsellipsis;//ZKLQty
end;

end.
