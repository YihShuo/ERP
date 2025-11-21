unit OrderImport_DD1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, DB, DBTables, StdCtrls, ExtCtrls, GridsEh, DBGridEh,math,
  Menus, Buttons, comobj;

type
  TOrderImport_DD = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label6: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    DS1: TDataSource;
    SpecMas: TQuery;
    SpecMasXieXing: TStringField;
    SpecMasSheHao: TStringField;
    SpecMasArticle: TStringField;
    SpecMasXieMing: TStringField;
    SpecMasShipDate: TDateTimeField;
    SpecMasDDCC: TStringField;
    SpecMasXXCC: TStringField;
    SpecMasGSBH: TStringField;
    SpecMasKFJC: TStringField;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    Label2: TLabel;
    CBX4: TComboBox;
    XXGX: TQuery;
    DBGridEh1: TDBGridEh;
    ZLZLS: TQuery;
    ZLZLSZLBH: TStringField;
    ZLZLSZLCC: TStringField;
    ZLZLSXXCC: TStringField;
    ZLZLSQTY: TIntegerField;
    DS2: TDataSource;
    Qtemp: TQuery;
    UpdateSQL2: TUpdateSQL;
    ProdDetail: TQuery;
    DSDetail: TDataSource;
    SpecMasQty: TIntegerField;
    SpecMasZLBH: TStringField;
    Label3: TLabel;
    Edit2: TEdit;
    Panel2: TPanel;
    DBGrid2: TDBGridEh;
    DBGrid1: TDBGridEh;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    XXGXXieXing: TStringField;
    XXGXSheHao: TStringField;
    XXGXGXLB: TStringField;
    XXGXSCCX: TStringField;
    XXGXUSERDATE: TDateTimeField;
    XXGXUSERID: TStringField;
    XXGXXieMing: TStringField;
    XXGXArticle: TStringField;
    SpecMasDAOMH: TStringField;
    SpecMasYSBH: TStringField;
    XXGXDAOMH: TStringField;
    XXGXMEMO: TStringField;
    pnlShow: TPanel;
    Label5: TLabel;
    Label7: TLabel;
    edtKey: TEdit;
    edtTotal: TEdit;
    lblKq: TEdit;
    btnCalculate: TBitBtn;
    Shape2: TShape;
    RB1: TRadioButton;
    RB2: TRadioButton;
    SpecMasBZCL: TIntegerField;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    CheckBox1: TCheckBox;
    btnPaste: TBitBtn;
    btnExcel: TBitBtn;
    rbShipdate: TRadioButton;
    rbBuyno: TRadioButton;
    BuyNoEdit: TEdit;
    Splitter1: TSplitter;
    Shape1: TShape;
    EditPairs: TEdit;
    Label8: TLabel;
    Label9: TLabel;
    Label4: TLabel;
    CheckBox2: TCheckBox;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure ProdDetailAfterOpen(DataSet: TDataSet);
    procedure DBGrid2KeyPress(Sender: TObject; var Key: Char);
    procedure ProdDetailAfterInsert(DataSet: TDataSet);
    procedure N1Click(Sender: TObject);
    procedure DBGrid1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure SpecMasAfterOpen(DataSet: TDataSet);
    procedure SpecMasAfterScroll(DataSet: TDataSet);
    procedure edtKeyExit(Sender: TObject);
    procedure DBGrid2ColExit(Sender: TObject);
    procedure ProdDetailBeforeScroll(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure btnPasteClick(Sender: TObject);
    procedure btnExcelClick(Sender: TObject);
    procedure DBGrid2CellClick(Column: TColumnEh);
    procedure FormShow(Sender: TObject);
  private
    ClickColumnIndex:integer;
    GSBHList:TStringlist;
    GSBH_GXLBList:TStringlist;
    { Private declarations }
    procedure ReviseRunQty();
    procedure Hand_CalculateRound();
    procedure System_CalculateRound();
    procedure Init_CalculateRound();
    procedure Circle(ProNo:String);
  public
    { Public declarations }
  end;

var
  OrderImport_DD: TOrderImport_DD;

implementation

uses  main1, OrderImport1, untClipboard, FunUnit;

{$R *.dfm}

procedure TOrderImport_DD.FormDestroy(Sender: TObject);
begin
  OrderImport_DD:=nil;
end;

procedure TOrderImport_DD.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  with Qtemp do   //直接取訂單值
  begin
    active:=false;
    sql.Clear;
    sql.add('  if object_id('+''''+'tempdb..#ZLZLS'+''''+') is not null  ');
    sql.add('begin   drop table #ZLZLS end   ');
    execsql;
  end;
  OrderImport.Enabled:=true;
  GSBHList.Free;
  GSBH_GXLBList.Free;
  action:=cafree;
end;

procedure TOrderImport_DD.Button1Click(Sender: TObject);
begin

  with SpecMas do
  begin
    active:=false;
    sql.Clear;
    sql.add('select DDZL.ZLBH,DDZL.XieXing,DDZL.SheHao, XXZL.XieMing,  ');
    sql.add('       DDZL.Article,DDZL.ShipDate,XXZL.CCGB as XXCC,DDZL.CCGB as DDCC ,');
    sql.add('       DDZL.Pairs as Qty,KFZL.KFJC,GSBH ,SMDD.YSBH,XXZL.DAOMH,SCXXCL.BZCL');
    sql.add('from DDZL ');
    sql.add('left join XXZL on XXZL.XieXIng=DDZl.XieXIng and XXZl.SheHao=DDZl.SheHao');
    sql.add('left join SCXXCL on SCXXCL.XieXing=DDZL.XieXing and SCXXCL.Shehao=DDZL.Shehao and SCXXCL.GXLB=''A''  and SCXXCL.BZLB=''3'' ');
    sql.add('left join KFZL on KFZl.KFDH=DDZL.KHBH ');
    sql.Add('left join (select distinct YSBH from SMDD,DDZL  ');
    sql.Add('             where DDZL.DDBH=SMDD.YSBH and DDZL.DDBH like '''+edit1.Text+'%''');
    if rbShipdate.Checked=true then
    begin
      sql.add('      and convert(smalldatetime,convert(varchar,DDZl.ShipDate,111)) between ');
      sql.add('      '''+formatdatetime('yyyy/MM/dd',DTP1.date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.date)+'''');
    end else
      SQL.Add('and DDZL.BUYNO like '''+BuyNoEdit.Text+'%'' ');
    sql.Add('          ) SMDD on SMDD.YSBH=DDZL.ZLBH ');
    sql.add('where DDZl.ZLBH like '+''''+edit1.Text+'%'+'''');
    if rbShipdate.Checked=true then
    begin
      sql.add('and convert(smalldatetime,convert(varchar,DDZl.ShipDate,111)) between ');
      sql.add('      '''+formatdatetime('yyyy/MM/dd',DTP1.date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.date)+'''');
    end else
      SQL.Add('and DDZL.BUYNO like '''+BuyNoEdit.Text+'%'' ');
    if CheckBox2.Checked=true then
    sql.add('      and SMDD.YSBH is  null ');
    sql.add('      and DDZL.GSBH='+''''+CBX4.text+'''');
    sql.add('      and KFZL.KFJC like '+''''+'%'+edit2.Text+'%'+'''');
    sql.add('order by DDZL.DDBH ');
    active:=true;
  end;
  ZLZLS.Active:=true;
end;

procedure TOrderImport_DD.DBGrid1DblClick(Sender: TObject);
begin
  if EditPairs.Text='' then exit;
  if RB1.Checked=true then
    Hand_CalculateRound();
  if RB2.Checked=true then
    System_CalculateRound();
end;

procedure TOrderImport_DD.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    DBGrid1dblclick(nil);
end;

procedure TOrderImport_DD.ProdDetailAfterOpen(DataSet: TDataSet);
var j:integer;
begin
  if ProdDetail.recordcount>0 then
  begin
    DBGrid2.columns[1].footer.valuetype:=fvtcount;
    for j:=5 to ProdDetail.fieldcount-1 do
    begin
        DBGrid2.columns[j].footer.valuetype:=fvtsum;
        Tfloatfield(ProdDetail.Fields[j]).displayformat:='##,#0' ;
    end;
  end;
  N1.Enabled:=true;
  btnPaste.Enabled:=true;
  btnExcel.Enabled:=true;
end;

procedure TOrderImport_DD.DBGrid2KeyPress(Sender: TObject; var Key: Char);
begin
  if ((key=#46) and (ProdDetail.RecordCount>1)) then
    ProdDetail.Delete;
end;

procedure TOrderImport_DD.ProdDetailAfterInsert(DataSet: TDataSet);
begin
  with ProdDetail do
  begin
    fieldbyname('ZLBH').Value:=ZLZLS.fieldbyname('ZLBH').value ;
    fieldbyname('PZLBH').Value:=ZLZLS.fieldbyname('ZLBH').value;
  end;
end;


procedure TOrderImport_DD.N1Click(Sender: TObject);
var i,j:integer;
    XXCC:string;
    IsFindGXLB:boolean;
begin
  if not ProdDetail.Active then
    abort;
  if ProdDetail.recordcount=0 then
    abort;
  OrderImport.DDdet.Active:=false;
  for j:=5 to ProdDetail.fieldcount-1 do
  begin
    XXCC:=copy(ProdDetail.Fields[j].fieldname,0,pos('|',ProdDetail.Fields[j].fieldname)-1);
    //showmessage(XXCC) ;
    if ZLZLS.Locate('XXCC',XXCC,[]) then
    begin
      if  DBGrid2.getfootervalue(0,DBGrid2.columns.items[j])<>ZLZLS.FieldByName('Qty').Value then
      begin
          showmessage('The total Qty  <>  the size Qty .');
          abort;
      end;
    end;
  end;
  try
    with XXGX do
    begin
      active:=false;
      sql.Clear;
      sql.add('select XXGX.*,XXZL.XieMing,XXZL.Article,XXZL.DAOMH,SCGXDY.MEMO ');
      sql.add('from XXGX');
      sql.add('left join DDZL on DDZL.XieXing=XXGX.XieXing and XXGX.SheHao=DDZL.SheHao ');
      sql.add('left join XXZL on XXZL.XieXing=XXGX.XieXing and XXZl.SheHao=XXGX.SheHao');
      sql.add('left join SCGXDY on SCGXDY.GX=XXGX.GXLB and len(SCGXDY.GXLB)=1  ');
      sql.add('where DDZL.ZLBH='+''''+ProdDetail.fieldbyname('ZLBH').Value+'''');
      sql.add('order by XXGX.SCCX ');
      active:=true;
      if recordcount=0 then
      begin
          showmessage('Pls setup Article production detail first. '+#13+'請先建好鞋型訂單類型.');
          abort;
      end;
    end;
    with Qtemp do
    begin
      active:=false;
      sql.Clear;
      sql.Add('select YSBH from SMDD ')  ;
      sql.add('where YSBH='+''''+ZLZLS.fieldbyname('ZLBH').value+'''');
      active:=true;
      if recordcount>0 then
        begin
          showmessage('Already have order.'+#13+'Abort.');
          abort;
        end;
    end;
    with OrderImport.SMDD do
    begin
      XXGX.first;
      while not XXGX.Eof do
      begin
          j:=1;
          ProdDetail.first;
          while not ProdDetail.eof do
          begin
              append;
              fieldbyname('DDBH').Value:=ProdDetail.fieldbyname('PZLBH').Value;
              fieldbyname('GXLB').Value:=XXGX.fieldbyname('GXLB').Value;
              fieldbyname('MEMO').Value:=XXGX.fieldbyname('MEMO').Value;
              fieldbyname('YSBH').Value:=ProdDetail.fieldbyname('ZLBH').Value;
              if (( XXGX.fieldbyname('GXLB').Value='C') or  (XXGX.fieldbyname('GXLB').Value='S') or (XXGX.fieldbyname('GXLB').Value='B') or (XXGX.fieldbyname('GXLB').Value='A')) then
              begin
                  fieldbyname('GSBH').Value:=CBX4.text;
              end else
              begin
                IsFindGXLB:=false;
                for i:=0 to GSBH_GXLBList.Count-1 do
                begin
                  if GSBH_GXLBList.Strings[i]=XXGX.fieldbyname('GXLB').AsString then   //GXLB= O /W /Z
                  begin
                    fieldbyname('GSBH').Value:=GSBHList.Strings[i];
                    IsFindGXLB:=true;
                    break;
                  end;
                end;
                if IsFindGXLB=false then
                fieldbyname('GSBH').Value:=CBX4.text;
              end;
              //
              fieldbyname('Article').Value:=XXGX.fieldbyname('Article').Value;
              fieldbyname('XieMing').Value:=XXGX.fieldbyname('XieMing').Value;
              fieldbyname('DAOMH').Value:=XXGX.fieldbyname('DAOMH').Value;
              fieldbyname('Qty').Value:=0;
              fieldbyname('SCCX').Value:=XXGX.fieldbyname('SCCX').Value;
              fieldbyname('SB').Value:='1';
              fieldbyname('SCYEAR').Value:=OrderImport.CBX1.Text;
              fieldbyname('SCMONTH').Value:=OrderImport.CBX2.Text;
              fieldbyname('DepNO').Value:=copy(CBX4.text,2,length(CBX4.Text)-1);
              fieldbyname('XH').Value:=j;  //迴轉序號
              post;
              ProdDetail.next;
              Inc(j);//迴轉序號
          end;
          XXGX.Next;
      end;
    end;
    with Qtemp do
    begin
      ProdDetail.first;
      while not ProdDetail.Eof do
      begin
          active:=false;
          sql.Clear;
          sql.add('delete SMDDS ');
          sql.add('where DDBH='+''''+ProdDetail.fieldbyname('PZLBH').Value+'''');
          execsql;
          for i:=5 to ProdDetail.fieldcount-2 do
          begin
              if ( (not ProdDetail.fields[i].isnull) and (ProdDetail.fields[i].value<>0 ) ) then
              begin
                  active:=false;
                  sql.Clear;
                  sql.add('insert into SMDDS ');
                  sql.add('(DDBH,XXCC,Qty,USERDate,USERID,YN)');
                  sql.add('values('+''''+ProdDetail.fieldbyname('PZLBH').Value+''''+',');
                  sql.add('          '''+copy(ProdDetail.Fields[i].fieldname,0,pos('|',ProdDetail.Fields[i].fieldname)-1)+''''+',');
                  SQL.add('          '''+ProdDetail.fields[i].asstring+''''+',getdate(),');
                  SQL.add('           '''+main.Edit1.Text+''''+','+''''+'2'+''''+')');
                  execsql;
              end;
          end;
          ProdDetail.next;
      end;
      active:=false;
    end;
    XXGX.active:=false;
    ProdDetail.Active:=false;
    showmessage('Succeed.');
  except
    showmessage('Have wrong.');
  end;

  OrderImport.DDdet.Active:=true;

end;

procedure TOrderImport_DD.DBGrid1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if not Specmas.FieldByName('YSBH').IsNull then
  begin
    DBGrid1.canvas.font.color:=clred;
  end;
end;




procedure TOrderImport_DD.SpecMasAfterOpen(DataSet: TDataSet);
begin
  if SpecMas.RecordCount>0 then
  begin
    btnCalculate.Enabled:=true
  end else
  begin
    btnCalculate.Enabled:=false;
  end;
end;

procedure TOrderImport_DD.SpecMasAfterScroll(DataSet: TDataSet);
begin
  if SpecMas.RecordCount>0 then
  begin
    edtTotal.Text:=FormatFloat('#,###',SpecMas.FieldByName('Qty').AsInteger);
    if SpecMas.FieldByName('BZCL').AsString<>'' then
      edtKey.Text:=FormatFloat('#,###',SpecMas.FieldByName('BZCL').AsInteger);
    if RB2.Checked=true then
    begin
       edtKeyExit(nil);
    end;
  end;
end;

procedure TOrderImport_DD.edtKeyExit(Sender: TObject);
begin
  try
    if ((trim(edtKey.Text)<>'') and (trim(edtKey.Text)<>'Qty')) then
      lblKq.Text:= floattostr(round(SpecMas.FieldByName('Qty').AsInteger/strtoint(edtKey.Text)));
  except
    on E:Exception do
    begin
      showmessage(E.Message);
    end;
  end;
end;
//參考樂億ERP Plan N234
procedure TOrderImport_DD.Init_CalculateRound();
begin
  with Qtemp do
  begin
      active:=false;
      sql.Clear;
      sql.Add('if object_id(''tempdb..#SizeQty_N224'') is not null');
      sql.Add('begin drop table #SizeQty_N224 end');

      sql.Add('if object_id(''tempdb..#Form_N224'') is not null');
      sql.Add('begin drop table #Form_N224 end');

      sql.Add(' create table #Form_N224');
      sql.Add(' ( ProNo varchar(11)COLLATE Chinese_Taiwan_Stroke_CI_AS,RY varchar(15)COLLATE Chinese_Taiwan_Stroke_CI_AS');
      sql.Add('  ,Seq varchar(4)COLLATE Chinese_Taiwan_Stroke_CI_AS,SizeLast varchar(6) COLLATE Chinese_Taiwan_Stroke_CI_AS');
      sql.Add('  ,SizeOrder varchar(6)COLLATE Chinese_Taiwan_Stroke_CI_AS,Qty int');
      sql.Add('  ,LLast varchar(50)COLLATE Chinese_Taiwan_Stroke_CI_AS )');

      SQL.Add('SELECT cl.XXCC as SizeOrder,cl.XXCC as SizeLast,xx.XTMH as LLast,cl.ZLBH ,cl.QTY as Quantity');
      SQL.Add('   ,Num.Row as Nos INTO #SizeQty_N224');
      SQL.Add('FROM ZLZLS cl');
      SQL.Add('LEFT JOIN DDZL dd ON dd.DDBH=cl.ZLBH');
      SQL.Add('LEFT JOIN XXZL xx on xx.XieXing=dd.XieXing and xx.SheHao=dd.SheHao');
      SQL.Add('LEFT JOIN (SELECT ZLBH,ROW_NUMBER() OVER(ORDER BY ZLBH) Row');
      SQL.Add('          FROM ZLZL WHERE ZLBH='''+SpecMas.FieldByName('ZLBH').AsString+''') Num ON Num.ZLBH = cl.ZLBH');
      SQL.Add('WHERE cl.ZLBH='''+SpecMas.FieldByName('ZLBH').AsString+''' ');
      ExecSQL;
  end;
end;
//自動計算迴轉數
procedure TOrderImport_DD.System_CalculateRound();
var index:integer;
    ProNo,SerNo:string;
begin
  ProNo:=FormatDateTime('HHNNSS',Time());
  Init_CalculateRound();
  with Qtemp do   //直接取訂單值
  begin
    index:=1;
    while index<=strtoint(lblKq.Text) do
    begin
      //20160920 sua cach the hien tua
      if strtoint(lblKq.Text)=1 then
        SerNo:='';
      if CheckBox1.Checked = true then
      begin
        if strtoint(lblKq.Text)>1 then
          SerNo:=''+Format('%.3d',[index]);
      end else
          if strtoint(lblKq.Text)>1 then
            SerNo:='-'+Format('%.3d',[index]);

      Active:=false;
      SQL.Clear;
      SQL.Add('DECLARE @Circle INT,@SeqExist INT');
      SQL.Add('SET @Circle='''+trim(lblKq.Text)+'''');
      SQL.Add('SET @SeqExist=ISNULL((SELECT MAX(Seq) FROM #Form_N224),0)');
      SQL.Add('INSERT INTO #Form_N224');
      SQL.Add('SELECT '''+ProNo+''' ProNo,ZLBH,'''+SerNo+''' as Seq,SizeLast');
      //if index<strtoint(lblKq.Text) then // 差額沒分配完給最後一輪迴
        SQL.Add('    ,SizeOrder,CASE WHEN QtyActual>Qtyplan THEN CAST(Qtyplan AS INT) ELSE QtyActual END Qty,LLast');
      //else
        //SQL.Add('    ,SizeOrder,CASE WHEN QtyActual>Qtyplan THEN QtyActual ELSE CAST(Qtyplan AS INT) END Qty,LLast');
      //
      SQL.Add('FROM(');
      SQL.Add('  SELECT sq.ZLBH,sq.LLast,sq.SizeOrder,sq.SizeLast,sq.Quantity-ISNULL(SizRY.Qty,0)QtyActual');
      if EditPairs.Text='0' then
        SQL.Add('	 ,ROUND((SizTotal.Qty-ISNULL(SizExists.Qty,0))*1.0/(@Circle-@SeqExist),0) Qtyplan')  //不根據倍數分配調整差額(原樂意版本)
      else
        SQL.Add(',FLOOR ( SizTotal.Qty/'+EditPairs.Text+'/@Circle)*'+EditPairs.Text+' Qtyplan ');  // 平均分配後面手動調整差額
        //SQL.Add(',Round( (SizTotal.Qty-ISNULL(SizExists.Qty,0))/'+EditPairs.Text+'/(@Circle-@SeqExist),0)*'+EditPairs.Text+' Qtyplan ');  //根據6倍數自動調整差額
      //
      SQL.Add('  FROM #SizeQty_N224 sq');
      SQL.Add('  LEFT JOIN(SELECT RY,SizeOrder,SUM(Qty)Qty FROM #Form_N224');
      SQL.Add('				     GROUP BY RY, SizeOrder)SizRY ON SizRY.RY=sq.ZLBH AND SizRY.SizeOrder=sq.SizeOrder');
      SQL.Add('LEFT JOIN(SELECT SizeOrder,SUM(Qty)Qty FROM #Form_N224');
      SQL.Add('				   GROUP BY SizeOrder)SizExists ON SizExists.SizeOrder=sq.SizeOrder');
      SQL.Add('LEFT JOIN(SELECT SizeOrder,SUM(Quantity)Qty FROM #SizeQty_N224');
      SQL.Add('				   GROUP BY SizeOrder)SizTotal ON SizTotal.SizeOrder=sq.SizeOrder');
      SQL.Add('		WHERE sq.Quantity-ISNULL(SizRY.Qty,0)>0');
      SQL.Add(')A');
      ExecSQL;
      //
      index:=index+1;
    end;
  end;
  Circle(ProNo);
end;
//
procedure TOrderImport_DD.Circle(ProNo:String);
var i:integer;
begin
  with ProdDetail do   //直接取訂單值
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('DECLARE @sql VARCHAR(8000)');
    SQL.Add('DECLARE @sql1 VARCHAR(8000)');
    SQL.Add('DECLARE @ProNo VARCHAR(20)');
    SQL.Add('SET @ProNo=ISNULL('''+ProNo+''','''')');
    SQL.Add('SET @sql=''select pp.RY as ZLBH,LLast as XTMH,xx.DAOMH,pp.RY+Seq as PZLBH,null as Qty ''');
    SQL.Add('SELECT @sql=@sql + '',max(case [SizeOrder] when ''''''+[SizeOrder]+'''''' then pp.[Qty]  end) as [''+[SizeLast]+''|''+SizeOrder+''] ''');
    SQL.Add('FROM(SELECT SizeOrder,SizeLast,CASE RIGHT(SizeOrder,1) WHEN ''K'' THEN 1 ELSE 2 END ID');
    SQL.Add('	FROM #SizeQty_N224 ');
    SQL.Add(' )a');
    SQL.Add('GROUP BY SizeOrder,SizeLast,ID');
    SQL.Add('ORDER BY ID DESC,SizeOrder DESC');
    SQL.Add('SET @sql1='' ,sum(pp.Qty) as Total');
    SQL.Add('FROM #Form_N224 pp');
    SQL.Add('      LEFT JOIN DDZL dd ON dd.DDBH=pp.RY');
    SQL.Add('      LEFT JOIN XXZL xx on xx.XieXing=dd.XieXing and xx.SheHao=dd.SheHao ');
    SQL.Add('where pp.ProNo=''''''+@ProNo+''''''  ');
    SQL.Add('group by LLast,pp.RY,Seq,xx.DAOMH ');
    SQL.Add('order by LLast,Seq'' ');
    SQL.Add('EXEC(@sql+@sql1)');
    active:=true;
  end;
  DBGrid2.columns[0].Visible:=false;
  DBGrid2.columns[1].Visible:=false;
  DBGrid2.columns[2].Visible:=false;
  DBGrid2.columns[3].width:=125;
  DBGrid2.columns[4].width:=55;
  DBGrid2.columns[4].title.caption:='Last|RY';
  for i:=5 to ProdDetail.fieldcount-1 do
  begin
    DBGrid2.columns[i].width:=45;
  end;
  for i:=0 to  ProdDetail.fieldcount-1 do
    DBGrid2.columns[i].Title.Font.Size:=10;
  //
  ReviseRunQty();
end;
//2011 手動輸入迴轉和雙數
procedure TOrderImport_DD.Hand_CalculateRound();
var p,XH :string;
    i,j,R,Q:integer;
    m,n,m1:word;
    LC:real;
begin
  try
    Q:=strtoint(EditPairs.Text);
  except
    messagedlg('Pairs is not right.',mterror,[mbOK],0);
    abort;
  end;
  try
    R:=strtoint(lblKq.Text);
    LC:=strtoint(lblKq.Text);
  except
    messagedlg('Order is not right.',mterror,[mbOK],0);
    abort;
  end;
  if r=1 then
  begin
      with Qtemp do   //直接取訂單值
      begin
        active:=false;
        ZLZLS.First;
        active:=false;
        sql.Clear;
        sql.add('  if object_id('+''''+'tempdb..#ZLZLS'+''''+') is not null  ');
        sql.add('begin   drop table #ZLZLS end   ');
        sql.add('select ZLZLS.ZLBH,ZLZLS.ZLBH as PZLBH,ZLZLS.XXCC,ZLZLS.Qty ');
        sql.add('into #ZLZLS from ZLZLS ');
        sql.add('where ZLZLS.ZLBH='+''''+ZLZLS.fieldbyname('ZLBH').Value+'''');
        sql.add('      and ZLZLS.Qty<>0');
        execsql;
      end;
  end else
  begin
        with Qtemp do   //直接取訂單值
        begin
          active:=false;
          ZLZLS.First;
          active:=false;
          sql.Clear;
          sql.add('  if object_id('+''''+'tempdb..#ZLZLS'+''''+') is not null  ');
          sql.add('begin   drop table #ZLZLS end   ');
          sql.add('select ZLZLS.ZLBH,ZLZLS.ZLBH as PZLBH,ZLZLS.XXCC,ZLZLS.Qty ');
          sql.add('into #ZLZLS from ZLZLS ');
          sql.add('where ZLZLS.ZLBH='+''''+ZLZLS.fieldbyname('ZLBH').Value+'''');
          sql.add('      and ZLZLS.Qty<0');
          execsql;
            //分單寫入表中
          for j:=1 to R-1 do
          begin
              if j<10 then
              begin
                XH:='00'+inttostr(j);
              end else
              begin
                if j < 100 then
                  xh:='0'+inttostr(j)
                else
                  XH:=inttostr(j);
              end;
              ZLZLS.First;
              while not ZLZLS.Eof do
              begin        //本號碼不夠一個循環
                  if trunc(ZLZLS.FieldByName('Qty').value/Q)<R then
                  begin
                      DivMod(ZLZLS.FieldByName('Qty').value,Q,m,n);
                      if j<=m then
                      begin
                        Active:=false;
                        sql.Clear;
                        sql.add('insert into #ZLZLS ');
                        sql.add('(ZLBH,PZLBH,XXCC,Qty)');
                        sql.add('values ('+''''+ZLZLS.fieldbyname('ZLBH').Value+''''+',');
                        sql.add('          '''+ZLZLS.fieldbyname('ZLBH').Value+'-'+XH+''''+',');
                        sql.add('          '''+ZLZLS.fieldbyname('XXCC').Value+''''+',');
                        sql.add('          '''+inttostr(Q)+''''+')');
                        execsql;
                      end else
                      begin
                        if J=m+1 then
                        begin
                            Active:=false;
                            sql.Clear;
                            sql.add('insert into #ZLZLS ');
                            sql.add('(ZLBH,PZLBH,XXCC,Qty)');
                            sql.add('values ('+''''+ZLZLS.fieldbyname('ZLBH').Value+''''+',');
                            sql.add('          '''+ZLZLS.fieldbyname('ZLBH').Value+'-'+XH+''''+',');
                            sql.add('          '''+ZLZLS.fieldbyname('XXCC').Value+''''+',');
                            sql.add('          '''+inttostr(n)+''''+')');
                            execsql;
                        end;
                      end;
                  end else
                  begin  //本號碼超過一個循環
                        DivMod(ZLZLS.FieldByName('Qty').value,Q,m,n);   //可以被12整除多少次及余數
                        m1:=trunc(ZLZLS.FieldByName('Qty').value/Q/LC) ;   //發輪次到哪一個輪次會少一輪，余數放在整輪的後一個發到的那個輪次 ,平均每個整輪次要多少個基本數
                        if LC-trunc(LC)>=0.2 then
                        begin
                          if (m-(m1*(R-1))-m1*(LC-R+1))>R-1 then
                          begin
                            m1:=m1+1;
                          end;
                        end else
                        begin
                          if (m-(m1*(R-1))-m1*(LC-R))>R-1 then
                          begin
                            m1:=m1+1;
                          end;
                        end;
                        Active:=false;
                        sql.Clear;
                        sql.add('insert into #ZLZLS ');
                        sql.add('(ZLBH,PZLBH,XXCC,Qty)');
                        sql.add('values ('+''''+ZLZLS.fieldbyname('ZLBH').Value+''''+',');
                        sql.add('          '''+ZLZLS.fieldbyname('ZLBH').Value+'-'+XH+''''+',');
                        sql.add('          '''+ZLZLS.fieldbyname('XXCC').Value+''''+',');
                        sql.add('          '''+inttostr(Q*m1)+''''+')');
                        execsql;
                      end;
                  ZLZLS.Next;
                end;
          end;
          if R<10 then
          begin
            XH:='00'+inttostr(R);
          end else
          begin
            if R < 100 then
              xh:='0'+inttostr(R)
            else
              XH:=inttostr(R);
          end;
          active:=false;
          sql.Clear;
          sql.add('insert #ZLZLS ');
          sql.add('select ZLZLS.ZLBH,ZLZLS.ZLBH+'+''''+'-'+XH+''''+' as PZLBH,ZLZLS.XXCC,ZlZLS.Qty-okZLZLS.Qty as Qty');
          sql.add('from ZLZLS ');
          sql.add('left join (select ZLBH,XXCC,sum(Qty) as Qty from #ZLZLS group by ZLBH,XXCC ) okZLZLS ');
          sql.add('             on okZLZLS.ZLBH=ZLZLS.ZLBH and okZLZLS.XXCC=ZLZLS.XXCC ');
          sql.add('where ZLZLS.ZLBH='+''''+ZLZLS.fieldbyname('ZLBH').Value+'''');
          sql.add('      and ZLZLS.Qty>okZLZLS.Qty ');
          execsql;
        end;
  end;

  with prodDetail do
  begin
    ZLZLS.first;
    active:=false;
    sql.Clear;
    {edit by BillWeng 2010/1/11 去除表中的數字}
    if R > 1 then
      sql.add('select #ZLZLS.ZLBH,XXZL.XTMH,XXZL.DAOMH,#ZLZLS.PZLBH,null as Qty')
    else
      sql.add('select #ZLZLS.ZLBH,XXZL.XTMH,XXZL.DAOMH,#ZLZLS.PZLBH,sum(#ZLZLS.Qty) as Qty');

    while not ZLZLS.Eof do
    begin
      if R = 1 then
      begin
        sql.add(',Max(case  when #ZLZLS.XXCC='+''''+ZLZLS.fieldbyname('XXCC').value+'''');
        sql.add(' then #ZLZLS.Qty else null end) as '+''''+ZLZLS.fieldbyname('XXCC').value+'|'+ZLZLS.fieldbyname('ZLCC').value+'''');
      end else
        sql.add(',0 as '+''''+ZLZLS.fieldbyname('XXCC').value+'|'+ZLZLS.fieldbyname('ZLCC').value+'''');

      ZLZLS.Next;
    {end edit}
    end;
    //
    if R = 1 then
      sql.add(',Sum(#ZLZLS.Qty)  as ''Total'' ')
    else
      sql.add(',0 as ''Total'' ');
    //
    sql.add('from #ZLZLS ');
    sql.add('left join DDZL on DDZL.ZLBH=#ZLZLS.ZLBH ');
    sql.add('left join XXZL on XXZL.XieXing=DDZL.XieXing and XXZL.SheHao=DDZL.SheHao ');
    sql.add('group by  #ZLZLS.ZLBH,XXZL.XTMH,XXZL.DAOMH,#ZLZLS.PZLBH,DDZL.Pairs  ');
    sql.add('order by #ZLZLS.PZLBH');
    active:=true;
  end;
  DBGrid2.columns[0].Visible:=false;
  DBGrid2.columns[1].Visible:=false;
  DBGrid2.columns[2].Visible:=false;
  DBGrid2.columns[3].width:=125;
  DBGrid2.columns[4].width:=55;
  DBGrid2.columns[4].title.caption:='Last|RY';
  for i:=5 to ProdDetail.fieldcount-1 do
  begin
    DBGrid2.columns[i].width:=45;
  end;
  for i:=0 to  ProdDetail.fieldcount-1 do
    DBGrid2.columns[i].Title.Font.Size:=10;  
end;



procedure TOrderImport_DD.DBGrid2ColExit(Sender: TObject);
var i,Qty: integer;
begin
  if ((DBGrid2.Selectedindex>=5) and (DBGrid2.Selectedindex<=ProdDetail.FieldCount-1))  then
  begin
    Qty:=0;
    for i:=5 to ProdDetail.FieldCount -2 do
    begin
      if ProdDetail.Fields[i].AsString<>'' then
        Qty:=Qty+ProdDetail.Fields[i].Value;
    end;
    ProdDetail.Edit;
    ProdDetail.Fields[ProdDetail.FieldCount -1].Value:=Qty;
    ProdDetail.Post;
  end;
end;

procedure TOrderImport_DD.ProdDetailBeforeScroll(DataSet: TDataSet);
begin
  DBGrid2ColExit(nil);
end;

//畫面調整分配數量
procedure TOrderImport_DD.ReviseRunQty();
  function MinIntValue(const Data: array of Integer): Integer;
  var
    I,Value: Integer;
    index:integer;
  begin
    index:=0;
    Value := Data[Low(Data)];
    for I := Low(Data) + 1 to High(Data) do
      if Data[I]<Value  then
      begin
        Value := Data[I];
        index:=i;
      end;
    result:=index;
  end;
var i,j,k,Pack,RemainQty,AddQty:integer;
    XXCC:string;
    PZLBH:array of String;
    TotalQty:array of integer;
    index:integer;
begin
  ZLZLS.First;
  Pack:=strtoint(EditPairs.Text);
  //動態陣列初始化
  setlength(PZLBH,ProdDetail.RecordCount);
  setlength(TotalQty,ProdDetail.RecordCount);
  ProdDetail.First;
  for i:=0 to ProdDetail.RecordCount-1 do
  begin
    PZLBH[i]:=ProdDetail.FieldByName('PZLBH').Asstring;
    TotalQty[i]:=ProdDetail.FieldByName('Total').AsInteger;
    ProdDetail.Next;
  end;
  //
  for i:=0 to ZLZLS.RecordCount-1 do
  begin
    for j:=5 to ProdDetail.FieldCount-1 do
    begin
      XXCC:=copy(ProdDetail.Fields[j].fieldname,0,pos('|',ProdDetail.Fields[j].fieldname)-1);
      if ZLZLS.FieldByname('XXCC').AsString=XXCC then
      begin
        if  DBGrid2.getfootervalue(0,DBGrid2.columns.items[j])<ZLZLS.FieldByName('Qty').Value then
        begin
          RemainQty:=ZLZLS.FieldByName('Qty').Value-DBGrid2.getfootervalue(0,DBGrid2.columns.items[j]);
          //找迴轉總數量最小的分配剩餘數
          repeat
            //動態陣列總數量最小直
            index:=MinIntValue(TotalQty);
            ProdDetail.First;
            if ProdDetail.Locate('PZLBH',PZLBH[index],[]) then
            begin
              if RemainQty-Pack>=0 then AddQty:=Pack else AddQty:=RemainQty;
              RemainQty:=RemainQty-Pack;
              //更新畫面數量
              ProdDetail.Edit;
              ProdDetail.Fields[j].Value:=ProdDetail.Fields[j].Value+AddQty;
              ProdDetail.Fields[ProdDetail.FieldCount-1].Value:=ProdDetail.Fields[ProdDetail.FieldCount-1].Value+AddQty;
              ProdDetail.Post;
              TotalQty[index]:=TotalQty[index]+AddQty;
              //
            end;
          until RemainQty<=0 ;
        end;
        break;
      end;
    end;
    ZLZLS.Next;
  end;

end;
//
procedure TOrderImport_DD.FormCreate(Sender: TObject);
var i:integer;
begin
  BuyNoEdit.Text:=FormatDateTime('YYYYMM',Date());
  GSBHList:=TStringlist.Create;
  GSBH_GXLBList:=TStringlist.Create;
  with Qtemp do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select GSBH,GXLB from (');
    SQL.Add('Select Bgszl.GSDH as GSBH,Bgszl.DFL,Bgszl.SFL,Bgszl.TGSBH,Bgszl.GXLB ');
    SQL.Add('       ,KCCK.CKBH,KCCK.DFL as KDFL ');
    SQL.Add('from Bgszl');
    SQL.Add('left join  KCCK on Bgszl.GSDH=KCCK.GSBH ');
    SQL.Add('where IsNull(tybh,'''')<>''Y'' ');
    SQL.Add(' ) BGSZL');
    SQL.Add('where 1=1  and GXLB is not null ');
    SQL.Add('  and DFL in (select DFL from Bgszl where GSDH='''+main.Edit2.Text+''') ');
    SQL.Add('Group by GSBH,GXLB ');
    Active:=true;
    for i:=0 to RecordCount-1 do
    begin
      GSBHList.Add(FieldByName('GSBH').AsString);
      GSBH_GXLBList.Add(FieldByName('GXLB').AsString);
      Next;
    end;
    Active:=false;
  end;
  //Cell起始index複製貼上用
  ClickColumnIndex:=-1;//
end;

procedure TOrderImport_DD.btnPasteClick(Sender: TObject);
var
  CbBuf: PChar;
  BufSize: Integer;
  Handle: THandle;
  Text:WideString;
  rowList,colList:TStringlist;
  i,j:integer;
begin
 try
   Text:='';
   if Clipboard.HasFormat(CF_TEXT) then
   begin
    Handle := ClipBoard.GetAsHandle(CF_TEXT);
    BufSize := GlobalSize(Handle);
    GetMem(CbBuf, BufSize);
    Text:=Clipboard.AsUnicodeText;
    //
    rowList:=TStringlist.Create;
    rowList.Text:=Text;
    ProdDetail.First;
    for i:=0 to rowList.Count-1 do
    begin
      colList:=funcObj.SplitString(rowList.Strings[i],'	');
      ProdDetail.Edit;
      for j:=0 to colList.Count-1 do
      begin
        if trim(colList.Strings[j])<>'' then
        begin
           ProdDetail.Fields[j+ClickColumnIndex].Value:=colList.Strings[j];
        end;
        if j+ClickColumnIndex>=ProdDetail.FieldCount-1 then break;
      end;
      colList.Free;
      ProdDetail.Post;
      if i>=ProdDetail.RecordCount then break;
      ProdDetail.Next;
    end;
    rowList.Free;
   end;
 except
   on E:Exception do
    Showmessage(E.Message);
 end;

end;

procedure TOrderImport_DD.btnExcelClick(Sender: TObject);
var   a:string;
      eclApp,WorkBook:olevariant;
      i,j:integer;
begin
  if  ProdDetail.active  then
  begin
    try
      eclApp:=CreateOleObject('Excel.Application');
      WorkBook:=CreateOleObject('Excel.Sheet');
    except
      Application.MessageBox('No Mcrosoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
      Exit;
    end;
    try
        WorkBook:=eclApp.workbooks.Add;
        for   i:=0   to   ProdDetail.fieldCount-1   do
        begin
              eclApp.Cells(1,i+1):=ProdDetail.fields[i].FieldName;
        end;
        ProdDetail.First;
        j:=2;
        while  not   ProdDetail.Eof   do
        begin
          for  i:=0  to  ProdDetail.FieldCount-1   do
          begin
            eclApp.Cells(j,i+1):=ProdDetail.Fields[i].Value;
          end;
          ProdDetail.Next;
          inc(j);
        end;
    eclapp.columns.autofit;
    eclApp.Visible:=True;
    except
      on   F:Exception   do
        showmessage(F.Message);
    end;
  end;

end;

procedure TOrderImport_DD.DBGrid2CellClick(Column: TColumnEh);
begin
  if Column.Index>=5 then
  ClickColumnIndex:=Column.Index;
end;

procedure TOrderImport_DD.FormShow(Sender: TObject);
begin
    main.FormLanguage(Pointer(self),self.Name);
end;

end.
