unit OrderSale1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, DBCtrls, DBTables, DB, Buttons,
  ExtCtrls, GridsEh, DBGridEh,dateutils,comobj, ComCtrls, Menus;

type
  TOrderSale = class(TForm)
    Panel1: TPanel;
    Label18: TLabel;
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
    bbt6: TBitBtn;
    DS2: TDataSource;
    DDDet: TQuery;
    UPDet: TUpdateSQL;
    DS1: TDataSource;
    YWDD: TQuery;
    UpMas: TUpdateSQL;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    DBNavigator1: TDBNavigator;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    DBGrideh1: TDBGridEh;
    YWDDETD: TDateTimeField;
    YWDDUSERDATE: TDateTimeField;
    YWDDUSERID: TStringField;
    YWDDYN: TStringField;
    YWDDXieXing: TStringField;
    YWDDSheHao: TStringField;
    YWDDXieMing: TStringField;
    YWDDArticle: TStringField;
    YWDDShipDate: TDateTimeField;
    YWDDXXCC: TStringField;
    YWDDDDCC: TStringField;
    DDDetDDQty: TIntegerField;
    DDDetDDCC: TStringField;
    DDDetXXCC: TStringField;
    DDDetQty: TIntegerField;
    DDDetokQty: TIntegerField;
    YWDDQty: TFloatField;
    Panel3: TPanel;
    DBGrideh2: TDBGridEh;
    Query1: TQuery;
    Panel4: TPanel;
    BD3: TBitBtn;
    BD2: TBitBtn;
    BD1: TBitBtn;
    DDDetDDBH: TStringField;
    DDDetIPrice: TFloatField;
    YWDDYWSM: TStringField;
    YWDDKHPO: TStringField;
    BD4: TBitBtn;
    YWDDDDBH: TStringField;
    YWDDYSBH: TStringField;
    YWDDKHDDBH1: TStringField;
    YWDDKHDDBH2: TStringField;
    YWDDGSBH: TStringField;
    DDDetUSACC: TFloatField;
    DTP1: TDateTimePicker;
    Label4: TLabel;
    DTP2: TDateTimePicker;
    DDDetTWPrice: TFloatField;
    PopupMenu1: TPopupMenu;
    CheckNoPrice1: TMenuItem;
    YWDDxflock: TStringField;
    cb2: TCheckBox;
    cb1: TComboBox;
    BD5: TBitBtn;
    DDDetYN: TStringField;
    YWDDTWShipDate: TDateTimeField;
    OpenDialog: TOpenDialog;
    YWDDRYTYPE: TStringField;
    CBTYPE: TComboBox;
    Label5: TLabel;
    CBox1: TCheckBox;
    YWDDDDZT: TStringField;
    radBuyNo: TRadioButton;
    radXF: TRadioButton;
    edtBuyNo: TEdit;
    bbt7: TBitBtn;
    Splitter1: TSplitter;
    Label3: TLabel;
    btImport: TButton;
    bnTW: TButton;
    YWDDKHDDBH2DATE: TDateTimeField;
    YWDDBUYER: TStringField;
    YWDDShipTo: TStringField;
    DDDetUNIT: TFloatField;
    QueryExcel: TQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BB1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BB2Click(Sender: TObject);
    procedure BB3Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BD1Click(Sender: TObject);
    procedure DBGrideh1EditButtonClick(Sender: TObject);
    procedure BB7Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGrideh1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure DDDetNewRecord(DataSet: TDataSet);
    procedure BD2Click(Sender: TObject);
    procedure BD3Click(Sender: TObject);
    procedure BBT1Click(Sender: TObject);
    procedure BBT2Click(Sender: TObject);
    procedure BBT3Click(Sender: TObject);
    procedure BBT4Click(Sender: TObject);
    procedure DBGrideh2GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);

    procedure BD4Click(Sender: TObject);
    procedure BD5Click(Sender: TObject);
    procedure DBGrideh2KeyPress(Sender: TObject; var Key: Char);
    procedure FormDestroy(Sender: TObject);
    procedure DDDetCalcFields(DataSet: TDataSet);
    procedure CheckNoPrice1Click(Sender: TObject);
    procedure bnTWClick(Sender: TObject);
    procedure btImportClick(Sender: TObject);
    procedure bbt7Click(Sender: TObject);
    procedure bbt6Click(Sender: TObject);
  private
    bRefresh:boolean;
  public
    { Public declarations }
    procedure ExportDefaultExcel(Query:TQuery);
    procedure ExportFormatExcel(Query:TQuery);
  end;

var
  OrderSale: TOrderSale;
  sdate,edate,ndate:TDate;

implementation

uses OrderSale_DD1, main1, OrderSale_NoPrice1, OrderSale_Pack1, FunUnit;

{$R *.dfm}

procedure TOrderSale.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if BB5.enabled then
  begin
    showmessage('Pls save data first.');
    action:=canone;
  end
  else
    begin
      if BD2.Enabled then
        begin
          showmessage('Pls save the detail first.');
          action:=canone;
        end
        else
          begin
            action:=cafree;
          end;
    end;
end;

procedure TOrderSale.BB1Click(Sender: TObject);
begin
  Panel2.Visible:=true;
end;

procedure TOrderSale.Button1Click(Sender: TObject);
var wherestr:string;
begin

  case cb1.ItemIndex of //物料採購情況
    0:   // 全部
    begin
      wherestr:='';
    end;
    1: // No SizeRun
    begin
      wherestr:=' and  not exists ( select * from YWDDS where DDBH = YWDD.DDBH  )  ';
    end;
    2:  // No IPrice and X/F < 7
    begin
      wherestr:=' and exists ( select * from YWDDS where DDBH = YWDD.DDBH  and ( YWDD.ETD - 7 < getdate() ) and (YWDDS.IPrice is null or YWDDS.IPrice = 0.0) ) ';
    end;
    3:  // No IPrice and X/F < 3
    begin
      wherestr:=' and exists ( select * from YWDDS where DDBH = YWDD.DDBH  and ( YWDD.ETD - 3 < getdate() ) and (YWDDS.IPrice is null or YWDDS.IPrice = 0.0) ) ';
    end;
  end;

  sdate:=DTP1.Date;
  edate:=DTP2.Date;
  with YWDD do
  begin
    active:=false;
    sql.Clear;
    sql.add('select YWDD.*,DDZL.XieXing,DDZL.SheHao, XXZL.XieMing,LBZLS.YWSM,DDZL.KHPO , ');
    sql.add('DDZL.Article,DDZL.ShipDate,XXZL.CCGB as XXCC,DDZL.CCGB as DDCC,DDZLTW.ShipDate as twshipdate, DDZL.RYTYPE,DDZL.DDZT');
    sql.add('from YWDD');
    sql.add('left join DDZL on YWDD.YSBH=DDZl.DDBH');
    sql.add('left join ZLZL  on ZLZL.DDBH=DDZL.DDBH');
    sql.add('left join XXZL  on DDZL.XieXing=XXZL.XieXing and DDZL.SheHao=XXZL.SheHao');
    sql.add('left join LBZLS on LBZLS.LB='+''''+'06'+''''+' and LBZLS.LBDH=DDZL.DDGB');
    sql.add('left join DDZLTW on DDZLTW.ddbh = YWDD.DDBH');
    sql.add('where DDZL.DDBH like '+''''+edit1.text+'%'+'''');
    sql.add('      and XXZL.XieMing like '+''''+'%'+edit2.Text+'%'+'''');
    if radXF.Checked=true then
    begin
      sql.add('      and convert(smalldatetime,convert(varchar,DDZL.ShipDate,111)) between ');
      sql.add('      '''+formatdatetime('yyyy/MM/dd',sdate)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',edate)+'''');
    end else if radBuyNo.Checked=true then
    begin
      sql.Add('      and DDZL.BUYNO like '''+edtBuyNo.Text+'%'' ' );
    end;
    sql.add('      and YWDD.GSBH='+''''+main.edit2.Text+'''');
    sql.add( wherestr );
    if CBTYPE.ItemIndex=1 then
       sql.Add('and DDZL.RYTYPE=''SLT''');
    if CBTYPE.ItemIndex=2 then
       sql.Add('and isnull(DDZL.RYTYPE,0) <>''SLT''');
    if CBox1.Checked=true then
       sql.Add('and DDZL.DDZT=''Y'' and DDZL.DDLB=''N'' ');
    sql.add('order by YWDD.DDBH');
    active:=true;
  end;
  BB2.Enabled:=true;
  BB3.Enabled:=true;
  BB4.Enabled:=true;
  BD1.Enabled:=true;
  BD4.Enabled:=true;
  BD5.Enabled:=true;
  BBT1.Enabled:=true;
  BBT2.Enabled:=true;
  BBT3.Enabled:=true;
  BBT4.Enabled:=true;
  BBT6.Enabled:=true;
  btImport.Enabled:=true;
  DDDet.Active:=true;
  
end;

procedure TOrderSale.BB2Click(Sender: TObject);
begin
  with YWDD do
  begin
    requestlive:=true;
    cachedupdates:=true;
    insert;
  end;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
  BD1.Enabled:=false;
  BD4.Enabled:=false;
  BD5.Enabled:=false;
  dbgrideh1.columns[1].ButtonStyle:=cbsEllipsis;
end;

procedure TOrderSale.BB3Click(Sender: TObject);
begin
  if messagedlg('All the detail will be deleted too!',mtconfirmation,[mbYes,mbNo],0)=mrYes then
  begin
    if YWDD.recordcount>0 then
      begin
        with query1 do
        begin
          active:=false;
          sql.clear;
          sql.add('select DDBH from YWCP ');
          sql.add('where DDBH='+''''+YWDD.FieldByName('DDBH').Value+'''');
          sql.add('      and SB is not null ');
          active:=true;
          if query1.recordcount>0 then
          begin
            showmessage(' 請注意，成品已入庫.' +#13+'Pls pay attention, already produced');
            abort;
          end;
        end;
        with YWDD do
          begin
            requestlive:=true;
            cachedupdates:=true;
            edit;
            fieldbyname('YN').Value:='0';
          end;
      end;
  end;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
  BD1.Enabled:=false;
  BD4.Enabled:=false;
  BD5.Enabled:=false;
  dbgrideh1.columns[1].ButtonStyle:=cbsEllipsis;
end;

procedure TOrderSale.BB4Click(Sender: TObject);
begin
  with YWDD do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
  BD1.Enabled:=false;
  BD4.Enabled:=false;
  BD5.Enabled:=false;
  bnTW.Enabled:=true;
  dbgrideh1.columns[1].ButtonStyle:=cbsEllipsis;
end;

procedure TOrderSale.BD1Click(Sender: TObject);
begin

  with DDDet do
  begin
      requestlive:=true;
      cachedupdates:=true;
  end;
  BB1.Enabled:=false;
  BB2.Enabled:=false;
  BB3.Enabled:=false;
  BB4.Enabled:=false;
  BBT1.Enabled:=false;
  BBT2.Enabled:=false;
  BBT3.Enabled:=false;
  BBT4.Enabled:=false;
  BD2.Enabled:=true;
  BD3.Enabled:=true;

end;

procedure TOrderSale.DBGrideh1EditButtonClick(Sender: TObject);
begin
  if YWDD.updatestatus=usinserted then
  begin
    OrderSale_DD:=TOrderSale_DD.create(self);
    OrderSale_DD.show;
    enabled:=false;
  end;
end;

procedure TOrderSale.BB7Click(Sender: TObject);
begin
  close;
end;

procedure TOrderSale.BB6Click(Sender: TObject);
begin

  with YWDD do
  begin
    active:=false;
    cachedupdates:=false;
    requestlive:=false;
    active:=true;
  end;
  bb5.enabled:=false;
  bb6.enabled:=false;
  BD1.Enabled:=true;
  BD4.Enabled:=true;
  BD5.Enabled:=true;
  bnTW.Enabled:=false;
  bRefresh:=false;

end;

procedure TOrderSale.BB5Click(Sender: TObject);
var i:integer;
begin

{
if messagedlg('你要刪除號碼明細及外箱條碼標資料嗎?'+#13+'Do you want to delete old detail & carton barcode too?',mtinformation,[mbYes,mbNo],0)=mrYes then
  bDelete:=true
else
  bDelete:=false;
}

  YWDD.First;
  while not YWDD.Eof do
  begin
    if YWDD.FieldByName('ETD').IsNull then
      begin
        messagedlg('Pls key in ETD first.',mtconfirmation,[mbYes],0);
        abort;
      end;
    if (ywdd.FieldByName('xflock').Value='Y') or (ywdd.FieldByName('xflock').Value='y') then
      begin
        messagedlg('DATA is lock,call Customs unlock first.',mtconfirmation,[mbYes],0);
        abort;
      end;
    YWDD.Next;
  end;
  try
      YWDD.first;
      for i:=1 to YWDD.RecordCount do
        begin
          case YWDD.updatestatus of
            usinserted:
              begin
                if YWDD.fieldbyname('DDBH').isnull then
                  begin
                    YWDD.delete;
                  end
                   else
                     begin
                       YWDD.edit;
                       YWDD.FieldByName('DDBH').Value:=uppercase(YWDD.FieldByName('DDBH').Value);
                       YWDD.FieldByName('Qty').Value:=0;
                       YWDD.FieldByName('userID').Value:=main.edit1.text;
                       YWDD.FieldByName('userdate').Value:=formatdatetime('yyyy/MM/dd',Ndate);
                       YWDD.FieldByName('YN').Value:='1';
                       ywdd.FieldByName('xflock').Value:='N';
                       upMas.apply(ukinsert);
                     end;
              end;
            usmodified:
               begin
                if YWDD.fieldbyname('YN').value='0'then
                  begin
                    with query1 do
                      begin
                        active:=false;
                        sql.clear;
                        // bug  刪除YWDD 應一併刪除 YWBZPO YWBZPOS
                        sql.add('delete YWDDS where DDBH='+''''+YWDD.fieldbyname('DDBH').Value+'''');
                        // bug  刪除YWCP 應以YWDD.DDBH  非 YWDD.YSBH
                        sql.add('delete YWCP where DDBH='+''''+YWDD.fieldbyname('YSBH').Value+'''');
                        // fix
                        sql.add('update CGZL set YN = 2 from CGZL left join YWDD on YWDD.CGNO = CGZL.CGNO where CGZL.CGLX = 5 and YWDD.DDBH = '+''''+YWDD.fieldbyname('DDBH').Value+'''');
                        execsql;
                      end;
                    upMas.apply(ukdelete);
                  end
                  else
                    begin
                      YWDD.edit;
                      YWDD.FieldByName('userID').Value:=main.edit1.text;
                      YWDD.FieldByName('userdate').Value:=formatdatetime('yyyy/MM/dd',Ndate);
                      YWDD.Post;
                      upMas.apply(ukmodify);
                    end;
               end;
          end;
         YWDD.next;
        end;
  YWDD.active:=false;
  YWDD.cachedupdates:=false;
  YWDD.requestlive:=false;
  YWDD.active:=true;
  bb5.enabled:=false;
  bb6.enabled:=false;
  BD1.Enabled:=true;
  BD4.Enabled:=true;
  BD5.Enabled:=true;
  bnTW.Enabled:=false;
  dbgrideh1.columns[1].ButtonStyle:=cbsnone;
  except
    Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
  end;

  bRefresh:=false;

end;

procedure TOrderSale.FormCreate(Sender: TObject);
var i:integer;
begin
  with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select getdate() as NDate ');
    active:=true;
    NDate:=fieldbyname('NDate').Value;
  end;
  DTP1.date:=startofthemonth(incmonth(NDate,1))+5;
  DTP2.date:=startofthemonth(incmonth(NDate,2))+4;
  bRefresh:=false;

end;

procedure TOrderSale.DBGrideh1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin

if YWDD.FieldByName('YN').value='0' then
  begin
    DBGrideh1.canvas.font.color:=clred;
  end;

  if YWDD.FieldByName('YN').value='0' then
  begin
    DBGrideh1.canvas.font.color:=clred;
  end;

  if YWDD.FieldByName('YN').value='0' then
  begin
    DBGrideh1.canvas.font.color:=clred;
  end;

end;

procedure TOrderSale.DDDetNewRecord(DataSet: TDataSet);
begin
abort;
end;

procedure TOrderSale.BD2Click(Sender: TObject);
var n:integer;
    iprice:double;
begin

  with DDDet do
  begin
    first;
    while not eof do
      begin
        if fieldbyname('okQty').value>fieldbyname('DDQty').value  then
          begin
            showmessage('Pls check the SIZE quantity first.');
            abort;
          end;
        next;
      end;

    //  如果cb2 打勾 , 要將第修改過的單價帶入全部的單價
    if cb2.Checked then
    begin
      iprice := 0;
      First;
      while not eof do
      begin
        if updatestatus=usmodified then
          if not fieldbyname('IPrice').isnull then
          begin
            iprice := fieldbyname('IPrice').value;
            break;
          end;
        next;
      end;

      if iprice <> 0 then
      begin
        First;
        while not eof do
        begin
          Edit;
          fieldbyname('IPrice').value := iprice;
          fieldbyname('YN').value := '2';
          Post;
          next;
        end;
      end;
    end;

    first;
    while not eof do
      begin
        if updatestatus=usmodified then
          begin
            if fieldbyname('Qty').value<>0 then
              begin
                if FieldByName('IPrice').IsNull then
                  begin
                    edit;
                    FieldByName('IPrice').value:=FieldByName('TWPrice'). value;
                    post;
                  end;
                query1.Active:=false;
                query1.SQL.Clear;
                query1.SQL.Add('delete YWDDS ');
                query1.SQL.Add('where DDBH='+''''+YWDD.fieldbyname('DDBH').Value+'''');
                query1.sql.add('      and DDCC='+''''+fieldbyname('DDCC').value+'''');
                query1.SQL.add('insert into YWDDS ');
                query1.SQL.add('  (DDBH, XXCC, DDCC, Qty, IPrice, USERDATE, USERID, YN, Unit)');
                query1.SQL.add('values ('+''''+YWDD.fieldbyname('DDBH').Value+''''+',');
                query1.sql.add('           '''+fieldbyname('XXCC').Value+''''+',');
                query1.SQL.add('           '''+fieldbyname('DDCC').Value+''''+',');
                query1.SQL.add('           '''+fieldbyname('Qty').asstring+''''+',');
                query1.SQL.add('           convert(money,'+''''+fieldbyname('IPrice').asstring+''''+'),');
                query1.SQL.add('           '''+formatdatetime('yyyy/MM/dd',NDate)+''''+',');
                query1.SQL.add('           '''+main.Edit1.Text+''''+','+''''+fieldbyname('YN').asstring+''''+',');
                query1.SQL.add('           convert(float,'+''''+fieldbyname('Unit').asstring+''''+'))');

               // showmessage(query1.sql.text);
                query1.ExecSQL;
              end
              else
                begin
                  query1.active:=false;
                  query1.sql.clear;
                  query1.sql.add('delete YWDDS ');
                  query1.SQL.Add('where DDBH='+''''+fieldbyname('DDBH').Value+'''');
                  query1.sql.add('and DDCC='+''''+fieldbyname('DDCC').value+'''');
                  query1.execsql;
                end;
          end;
        next;
      end;
    active:=false;
    cachedupdates:=false;
    requestlive:=false;
    active:=true;
  end;
  n:=0;

  with DDDet do
  begin
    first;
    while not eof do
    begin
        n:=n+fieldbyname('Qty').Value;
        next;
    end;
  end;

  with YWDD do
  begin
    if n<>fieldbyname('Qty').Value then
    begin
        requestlive:=true;
        cachedupdates:=true;
        edit;
        fieldbyname('Qty').Value:=n;
        Upmas.Apply(ukmodify);
        active:=false;
        requestlive:=false;
        cachedupdates:=false;
        active:=true;
    end;
  end;
  BB1.Enabled:=true;
  BB2.Enabled:=true;
  BB3.Enabled:=true;
  BB4.Enabled:=true;
  BBT1.Enabled:=true;
  BBT2.Enabled:=true;
  BBT3.Enabled:=true;
  BBT4.Enabled:=true;
  BD2.Enabled:=false;
  BD3.Enabled:=false;
end;

procedure TOrderSale.BD3Click(Sender: TObject);
begin
  with DDDet do
  begin
      active:=false;
      cachedupdates:=false;
      requestlive:=false;
      active:=true;
  end;
  BB1.Enabled:=true;
  BB2.Enabled:=true;
  BB3.Enabled:=true;
  BB4.Enabled:=true;
  BBT1.Enabled:=true;
  BBT2.Enabled:=true;
  BBT3.Enabled:=true;
  BBT4.Enabled:=true;
  BD2.Enabled:=false;
  BD3.Enabled:=false;
end;

procedure TOrderSale.BBT1Click(Sender: TObject);
begin
  YWDD.First;

end;

procedure TOrderSale.BBT2Click(Sender: TObject);
begin
  YWDD.prior;
end;

procedure TOrderSale.BBT3Click(Sender: TObject);
begin
  YWDD.next;
end;

procedure TOrderSale.BBT4Click(Sender: TObject);
begin
  YWDD.last;
end;

procedure TOrderSale.DBGrideh2GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
// bug : DDDet.FieldByName('DDQty').value > DDDet.FieldByName('okQty').value  未改
  if DDDet.FieldByName('DDQty').value>(DDDet.FieldByName('okQty').value+DDDet.FieldByName('Qty').value) then
    DBGrideh2.Canvas.Font.Color:=clred;
  if DDDet.FieldByName('DDQty').value=DDDet.FieldByName('okQty').value then
    DBGrideh2.Canvas.Font.Color:=clBlue;
end;

procedure TOrderSale.bbt6Click(Sender: TObject);
begin
  if  Messagedlg(Pchar('Do you want to export orders that include size numbers?'),mtInformation,[mbNo,mbYes],0)=mrYes then
  begin
    ExportFormatExcel(QueryExcel);
  end else
  begin
    ExportDefaultExcel(YWDD);
  end;
end;

procedure TOrderSale.ExportDefaultExcel(Query:TQuery);
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin
  DDDet.Active:=false;
  if  Query.active  then
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
        for   i:=0   to   Query.fieldcount-1   do
          begin
              eclApp.Cells(1,i+1):=Query.fields[i].FieldName;
          end;

        Query.First;
        j:=2;
        while   not   Query.Eof   do
          begin
            for   i:=0   to  Query.fieldcount-1  do
            begin
              eclApp.Cells(j,i+1):=Query.Fields[i].Value;
            end;
          Query.Next;
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
    DDDet.active:=true;

end;

procedure TOrderSale.ExportFormatExcel(Query:TQuery);
var eclApp,WorkBook:olevariant;
    i,j,k:integer;
begin
  if  YWDD.active  then
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
        YWDD.First;
        with Query1 do
        begin
          active:=false;
          sql.Clear;
          sql.Add('select distinct DDZLS.CC from DDZLS');
          sql.Add('where DDZLS.DDBH in (');
          for i:=0 to YWDD.RecordCount-1 do
          begin
            if i < YWDD.RecordCount-1 then
              sql.Add('''' + YWDD.fieldbyname('YSBH').AsString + ''',')
            else
              sql.Add('''' + YWDD.fieldbyname('YSBH').AsString + ''')');
            YWDD.Next ;
          end;
          sql.add('order by DDZLS.CC');
          //funcobj.WriteErrorLog(sql.Text);
          active:=true;
        end;
        //============================
        with QueryExcel do
        begin
          active:=false;
          sql.Clear;
          sql.add('select YWDD.*,DDZL.XieXing,DDZL.SheHao, XXZL.XieMing,LBZLS.YWSM,DDZL.KHPO , ');
          sql.add('DDZL.Article,DDZL.ShipDate,XXZL.CCGB as XXCC,DDZL.CCGB as DDCC,DDZLTW.ShipDate as twshipdate, DDZL.RYTYPE,DDZL.DDZT, Max(YWDDS.Unit) as Unit');
          while not Query1.Eof do
          begin
            sql.add(' ,Max(case  when DDZLS.CC='+''''+Query1.fieldbyname('CC').value+'''');
            sql.add(' then YWDDS.Qty else null end) as '+''''+Query1.fieldbyname('CC').value+'''');
            Query1.Next;
          end;
          sql.add('from YWDD');
          sql.add('left join DDZL on YWDD.YSBH=DDZl.DDBH');
          sql.add('left join ZLZL  on ZLZL.DDBH=DDZL.DDBH');
          sql.add('left join XXZL  on DDZL.XieXing=XXZL.XieXing and DDZL.SheHao=XXZL.SheHao');
          sql.add('left join LBZLS on LBZLS.LB='+''''+'06'+''''+' and LBZLS.LBDH=DDZL.DDGB');
          sql.add('left join DDZLTW on DDZLTW.ddbh = YWDD.DDBH');
          sql.Add('left join DDZLS on DDZLS.DDBH = DDZL.DDBH');
          SQL.Add('left join ZLZLS on ZLZLS.ZLBH=DDZLS.DDBH and ZLZLS.ZLCC=DDZLS.CC ');
          SQL.Add('left join YWDDS on YWDD.DDBH=YWDDS.DDBH and ZLZLS.XXCC=YWDDS.XXCC ');
          sql.add('where DDZL.DDBH like '+''''+edit1.text+'%'+'''');
          sql.add('      and XXZL.XieMing like '+''''+'%'+edit2.Text+'%'+'''');
          if radXF.Checked=true then
          begin
            sql.add('      and convert(smalldatetime,convert(varchar,DDZL.ShipDate,111)) between ');
            sql.add('      '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
          end else if radBuyNo.Checked=true then
          begin
            sql.Add('      and DDZL.BUYNO like '''+edtBuyNo.Text+'%'' ' );
          end;
          sql.add('      and YWDD.GSBH='+''''+main.edit2.Text+'''');
          //sql.add( wherestr );
          if  cb1.ItemIndex=1 then
             sql.Add('and  not exists ( select * from YWDDS where DDBH = YWDD.DDBH  )');
          if  cb1.ItemIndex=2 then
             sql.Add('and exists ( select * from YWDDS where DDBH = YWDD.DDBH  and ( YWDD.ETD - 7 < getdate() ) and (YWDDS.IPrice is null or YWDDS.IPrice = 0.0) )');
          if  cb1.ItemIndex=3 then
             sql.Add('and exists ( select * from YWDDS where DDBH = YWDD.DDBH  and ( YWDD.ETD - 3 < getdate() ) and (YWDDS.IPrice is null or YWDDS.IPrice = 0.0) )');
          //
          if CBTYPE.ItemIndex=1 then
             sql.Add('and DDZL.RYTYPE=''SLT''');
          if CBTYPE.ItemIndex=2 then
             sql.Add('and isnull(DDZL.RYTYPE,0) <>''SLT''');
          if CBox1.Checked=true then
             sql.Add('and DDZL.DDZT=''Y'' and DDZL.DDLB=''N'' ');
          sql.Add('group by YWDD.DDBH,YWDD.GSBH,YWDD.YSBH,YWDD.ETD,YWDD.Qty,YWDD.KHDDBH1,YWDD.KHDDBH2,YWDD.CGNO,YWDD.USERDATE,YWDD.USERID,YWDD.YN,YWDD.SB,YWDD.InspectDate,');
          sql.Add('YWDD.InspectQty,YWDD.EXESB,YWDD.xflock,YWDD.Bzdate,YWDD.InUSERID,YWDD.InUSERDATE,YWDD.xfUSERID,YWDD.xfUSERDATE,YWDD.Flag,YWDD.KHDDBH2DATE,YWDD.BUYER,YWDD.ShipTo,');
          sql.Add('DDZL.XieXing,DDZL.SheHao, XXZL.XieMing,LBZLS.YWSM,DDZL.KHPO,DDZL.Article,DDZL.ShipDate,XXZL.CCGB,DDZL.CCGB,DDZLTW.ShipDate,DDZL.RYTYPE,DDZL.DDZT');
          sql.add('order by YWDD.DDBH');
          //funcobj.WriteErrorLog(sql.Text);
          active:=true;
        end;

        eclApp.Range[eclApp.Cells[1,1],eclApp.Cells[1,QueryExcel.FieldCount]].NumberFormat := '@'; //format excel column to text

        for   i:=0   to   QueryExcel.FieldCount-1  do
        begin
          eclApp.Cells(1,i+1):=QueryExcel.fields[i].FieldName;
        end;

        QueryExcel.First;
        j:=2;
        while   not   QueryExcel.Eof   do
        begin
          for   i:=0   to   QueryExcel.FieldCount-1   do
          begin
            eclApp.Cells[j,i+1].NumberFormatLocal:='@';
            eclApp.Cells(j,i+1):=QueryExcel.Fields[i].Value;
          end;
          QueryExcel.Next;
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

procedure TOrderSale.BD4Click(Sender: TObject);
var n:integer;
begin
  if YWDD.recordcount>0 then
  begin
    with query1 do
      begin
        active:=false;
        sql.Clear;
        sql.add('select * from YWDDS ');
        sql.add('where DDBH='+''''+YWDD.fieldbyname('DDBH').Value+'''');
        active:=true;
        if recordcount>0 then
          begin
            showmessage('Already have data ,can not do it .');
            abort;
          end;
        DDDet.active:=false;
        active:=false;
        sql.Clear;
        sql.Add('insert YWDDS ');
        sql.add('select '+''''+YWDD.fieldbyname('DDBH').Value+''''+'as DDBH,XXCC,DDCC,Qty-okQty as Qty,IPrice,getdate() as USERDATE,');
        sql.add(''''+main.Edit1.Text+''''+' as USERID,'+''''+'1'+''''+' as YN,'+''''+'0'+''''+' as Unit');
        sql.add('from (select DDZL.DDBH,ZLZLS.ZLCC as DDCC,ZLZLS.XXCC,DDZLS.IPrice,isnull(DDZLS.quantity,0) as Qty,isnull(YWDDS.okQty,0) okQty');
        sql.add('      from DDZLS ');
        sql.add('      left join DDZL on DDZl.DDBh=DDZLS.DDBH ');
        sql.add('      left join ZLZLS on ZLZLS.ZLBH=DDZL.ZLBH and DDZLS.CC=ZLZLS.ZLCC ');
        sql.add('      left join (select YWDD.YSBH,YWDDS.DDCC,sum(YWDDS.Qty) as okQty ');
        sql.add('                 from YWDDS');
        sql.add('                 left join YWDD on YWDD.DDBH=YWDDS.DDBH ');
        sql.add('                 where YWDD.YSBH='+''''+YWDD.fieldbyname('YSBH').Value+'''');
        sql.add('                 group by YWDD.YSBH,YWDDS.DDCC) YWDDS on YWDDS.YSBH=DDZLS.DDBH and YWDDS.DDCC=DDZLS.CC ');
        sql.add('      where DDZLS.DDBH='+''''+YWDD.fieldbyname('YSBH').Value+''''+') YWDDS ');
        sql.add('where Qty>okQty');
        //memo1.text:=sql.text;
        execsql;
        DDDet.Active:=true;
      end;
  end;

  n:=0;
  with DDDet do
  begin
    first;
    while not eof do
      begin
        n:=n+fieldbyname('Qty').Value;
        next;
      end;
  end;

  with YWDD do
  begin
    if n<>fieldbyname('Qty').Value then
      begin
        requestlive:=true;
        cachedupdates:=true;
        edit;
        fieldbyname('Qty').Value:=n;
        Upmas.Apply(ukmodify);
        active:=false;
        requestlive:=false;
        cachedupdates:=false;
        active:=true;
      end;
  end;
end;


procedure TOrderSale.BD5Click(Sender: TObject);
var ipriceYWDDS, ipriceDDZLS : double;
begin

  if YWDD.recordcount>0 then
  begin
    with query1 do
    begin

        // 初始值為 0
        ipriceYWDDS := 0.0;
        ipriceDDZLS := 0.0;

        //  取 YWDDS 單價
        active:=false;
        sql.Clear;
        sql.add('select top 1 Iprice from YWDDS ');
        sql.add('where DDBH='+''''+YWDD.fieldbyname('DDBH').Value+'''');
        active:=true;
        if recordcount=0 then
        begin
            showmessage('Please import sizeRun first');
            abort;
        end;

        if not query1.fieldbyname('IPrice').isnull then
          ipriceYWDDS := query1.fieldbyname('IPrice').Value;

        //  取 DDZLS 單價
        active:=false;
        sql.Clear;
        sql.add('select top 1 Iprice from DDZLS ');
        sql.add('where DDBH='+''''+YWDD.fieldbyname('YSBH').Value+'''');
        active:=true;
        if recordcount=0 then
        begin
            showmessage('No sizeRun IPrice data');
            abort;
        end;

        if not query1.fieldbyname('IPrice').isnull then
          ipriceDDZLS :=  query1.fieldbyname('IPrice').Value;

        //  若 YWDDS 與 DDZLS 單價不同
        if ipriceDDZLS <> ipriceYWDDS then
        begin

          //  若 YWDDS 單價不為 0
          if ipriceYWDDS <> 0.0 then
            if messagedlg('sure to overwrite old data ??? ',mtconfirmation,[mbYes,mbNo],0)=mrNo then
            begin
              abort;
            end;

          DDDet.active:=false;
          active:=false;
          sql.Clear;
          sql.Add('update YWDDS ');
          sql.Add('set IPrice=( select DDZLS.IPrice from DDZLS                       ');
          sql.Add('             left join YWDD on YWDD.YSBH=DDZLS.DDBH               ');
          sql.Add('             where YWDDS.DDBH=YWDD.DDBH and YWDDS.DDBH=''' + YWDD.fieldbyname('DDBH').Value + '''  and YWDDS.DDCC=DDZLS.CC ) ');
          sql.Add('where exists( select DDZLS.IPrice from DDZLS                      ');
          sql.Add('              left join YWDD on YWDD.YSBH=DDZLS.DDBH              ');
          sql.Add('              where YWDDS.DDBH=YWDD.DDBH                          ');
          sql.Add('                    and YWDDS.DDBH=''' + YWDD.fieldbyname('DDBH').Value  + '''');
          sql.Add('                    and YWDDS.DDCC=DDZLS.CC                       ');
          sql.Add('                    and DDZLS.IPrice<>0 )                         ');
 //         showmessage(sql.text);
          execsql;
          DDDet.Active:=true;
       end
       else
         ShowMessage('this price is the latest ');
    end;
end;




end;


procedure TOrderSale.DBGrideh2KeyPress(Sender: TObject; var Key: Char);
begin

  if Key = #13 then
    if ActiveControl = DBGrideh2 then
    begin
      DDDet.Next;;
      Key := #0;
    end;
end;

procedure TOrderSale.FormDestroy(Sender: TObject);
begin
   OrderSale:=nil;
end;

procedure TOrderSale.DDDetCalcFields(DataSet: TDataSet);
begin
  DDDet.FieldByName('USACC').Value:=DDDet.FieldByName('IPrice').Value*DDDet.FieldByName('Qty').Value;
end;

procedure TOrderSale.CheckNoPrice1Click(Sender: TObject);
begin
    OrderSale_NoPrice:=TOrderSale_NoPrice.create(self);
    OrderSale_NoPrice.DTP1.date:=incmonth(DTP1.Date,-1);
    OrderSale_NoPrice.DTP2.date:=incmonth(DTP2.Date,-1);
    OrderSale_NoPrice.show;
end;

procedure TOrderSale.bnTWClick(Sender: TObject);
begin
  YWDD.First;
  while not YWDD.Eof do
  begin
    YWDD.edit;
    //YWDD.FieldByName('ShipDate').value:=YWDD.fieldbyname('TWShipDate').Value; //DDZLTW.ShipDate=>DDZL.ShipDate
    YWDD.FieldByName('ETD').value:=YWDD.fieldbyname('ShipDate').Value;  //DDZL.ShipDate=>YWDD.ETD
    YWDD.post;
    YWDD.Next;
  end;
  bRefresh:=true;

end;

procedure TOrderSale.btImportClick(Sender: TObject);
var
  ExcelApp: Variant;
  S_RY,S_CustOrdNo,S_CustomerPO,S_POCreateDate,S_Buyer,S_ShipTo,S_Unit: string;
  i:integer;
begin
  if OpenDialog.Execute then
  begin

    ExcelApp:=CreateOleObject('Excel.Application');
    ExcelApp.WorkBooks.Open(OpenDialog.FileName);
    ExcelApp.WorkSheets[1].Activate;
    i:=2;
    S_RY:=ExcelApp.Cells[i,1].Value;
    S_CustOrdNo:=ExcelApp.Cells[i,2].Value;
    S_CustomerPO:=ExcelApp.Cells[i,3].Value;
    S_POCreateDate:=ExcelApp.Cells[i,4].Value;
    S_Buyer:=ExcelApp.Cells[i,5].Value;
    S_ShipTo:=ExcelApp.Cells[i,6].Value;
    S_Unit:=ExcelApp.Cells[i,7].Value;
    while ((trim(S_RY)<>''))  do
    begin

      //S_RY:=ExcelApp.Cells[i,1].Value;
      //S_CustOrdNo:=ExcelApp.Cells[i,2].Value;
      Query1.Close;
      Query1.SQL.Clear;
      Query1.SQL.Add('select * from ywdd');
      Query1.SQL.Add('where ddbh ='''+S_RY+'''');
      Query1.ExecSQL;
      Query1.Open;
      if Query1.RecordCount>0 then
      begin
          Query1.Close;
          Query1.SQL.Clear;
          Query1.SQL.Add('update ywdd set ');
          Query1.SQL.Add(' KHDDBH1='''+S_CustOrdNo+''',KHDDBH2='''+S_CustomerPO+''',KHDDBH2DATE='''+S_POCreateDate+''',BUYER='''+S_Buyer+''',ShipTo='''+S_ShipTo+''' ');
          Query1.SQL.Add(',userdate='''+FormatDateTime('yyyy/mm/dd hh:nn:ss',now)+'''');
          Query1.SQL.Add(',USERID ='''+Main.Edit1.Text+'''');
          Query1.SQL.Add('where ddbh ='''+S_RY+'''');
          Query1.ExecSQL;
      end;
      //
      Query1.Close;
      Query1.SQL.Clear;
      Query1.SQL.Add('select * from YWDDS');
      Query1.SQL.Add('where ddbh ='''+S_RY+'''');
      Query1.ExecSQL;
      Query1.Open;
      if Query1.RecordCount>0 then
      begin
          //update unit YWDDS
          Query1.Close;
          Query1.SQL.Clear;
          Query1.SQL.Add('update YWDDS set Unit='''+S_Unit+''' ');
          Query1.SQL.Add(',userdate='''+FormatDateTime('yyyy/mm/dd hh:nn:ss',now)+'''');
          Query1.SQL.Add(',USERID ='''+Main.Edit1.Text+'''');
          Query1.SQL.Add('where ddbh ='''+S_RY+'''');
          Query1.ExecSQL;
      end;
      i:=i+1;
      S_RY:=ExcelApp.Cells[i,1].Value;
      S_CustOrdNo:=ExcelApp.Cells[i,2].Value;
      S_CustomerPO:=ExcelApp.Cells[i,3].Value;
      S_POCreateDate:=ExcelApp.Cells[i,4].Value;
      S_Buyer:=ExcelApp.Cells[i,5].Value;
      S_ShipTo:=ExcelApp.Cells[i,6].Value;
      S_Unit:=ExcelApp.Cells[i,7].Value;
    end;

    ExcelApp.WorkBooks.Close;
    ExcelApp.Quit;
    query1.Active:=false;
    Showmessage('Success');
  end;
  Button1.Click;

end;

procedure TOrderSale.bbt7Click(Sender: TObject);
begin
  OrderSale_Pack:=TOrderSale_Pack.create(self);
  OrderSale_Pack.Show;
end;



end.
