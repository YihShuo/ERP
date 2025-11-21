unit OrderSale_DD1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, StdCtrls, ExtCtrls, Grids, DBGrids, GridsEh,
  DBGridEh,dateutils;

type
  TOrderSale_DD = class(TForm)
    DBGrid1: TDBGridEh;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label6: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    CBX2: TComboBox;
    CBX3: TComboBox;
    DS1: TDataSource;
    Query1: TQuery;
    Query1DDBH: TStringField;
    Query1XieXing: TStringField;
    Query1SheHao: TStringField;
    Query1XieMing: TStringField;
    Query1YWSM: TStringField;
    Query1Article: TStringField;
    Query1ShipDate: TDateTimeField;
    Query1XXCC: TStringField;
    Query1DDCC: TStringField;
    Query1Pairs: TIntegerField;
    Query1okQty: TFloatField;
    Query1GSBH: TStringField;
    Query1KFJC: TStringField;
    Button2: TButton;
    AllCK: TCheckBox;
    BuyNOEdit: TEdit;
    RB1: TRadioButton;
    RB2: TRadioButton;
    Query1BUYNO: TStringField;
    Query1KHPO: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure FormDestroy(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  OrderSale_DD: TOrderSale_DD;
  sdate,edate:Tdate;

implementation

uses OrderSale1, main1;

{$R *.dfm}

procedure TOrderSale_DD.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
OrderSale.Enabled:=true;
action:=cafree;

end;

procedure TOrderSale_DD.Button1Click(Sender: TObject);
var y,m:word;
begin

  if (CBX2.text='')or (CBX3.text='')  then
  begin
    showmessage('You have to select the year and month first.');
    abort;
  end;
  y:=strtoint(CBX2.Text);
  m:=strtoint(CBX3.Text);
  if (y>2999) or (y<1900) then
  begin
    showmessage('Pls key in right year');
    abort;
  end;
  if (m=0) or (m>12) then
  begin
    showmessage('Pls key in right month');
    abort;
  end;
  sdate:=encodedate(y,m,1);
  edate:=endofthemonth(sdate);
  with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select DDZL.DDBH,DDZL.XieXing,DDZL.SheHao, XXZL.XieMing,LBZLS.YWSM, ');
    sql.add('(case when isnull(DDZL.traderPO,'''') <> '''' then DDZL.traderPO else DDZL.KHPO end ) as KHPO, ');
    sql.add('       DDZL.Article,DDZL.ShipDate,XXZL.CCGB as XXCC,DDZL.CCGB as DDCC ,');
    sql.add('       isnull(YWDD.okQty,0) as okQty,DDZL.Pairs,KFZL.KFJC,GSBH,DDZL.BUYNO ');
    sql.add('from DDZL ');
    sql.add('left join XXZL on XXZL.XieXIng=DDZl.XieXIng and XXZl.SheHao=DDZl.SheHao');
    sql.add('left join KFZL on KFZl.KFDH=DDZL.KHBH ');
    sql.add('left join (select YSBH,sum(Qty) as okQty from YWDD ');
    sql.add('           where YSBH like '+''''+edit1.Text+'%'+'''');
    sql.add('            group by YSBH) YWDD on YWDD.YSBH=DDZL.DDBH ');
    sql.add('left join LBZLS on LBZLS.LB='+''''+'06'+''''+' and LBZLS.LBDH=DDZL.DDGB');
    sql.add('where 1=1 ');
    if RB1.Checked=true then
    begin
      sql.add('      and convert(smalldatetime,convert(varchar,DDZl.ShipDate,111)) between ');
      sql.add('      '''+formatdatetime('yyyy/MM/dd',sdate)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',edate)+'''');
    end else if RB2.Checked=true then
    begin
      sql.add('      and DDZL.BUYNO like '''+BuyNOEdit.Text+'%'' ');
    end;
    sql.add('      and DDZl.DDBH like '+''''+edit1.Text+'%'+'''');
    sql.add('      and XXZl.XieMIng like '+''''+'%'+edit2.Text+'%'+'''') ;
    sql.add('      and DDZL.GSBH='+''''+main.edit2.Text+'''');
    if AllCK.Checked=true then
    sql.add('      and isnull(YWDD.okQty,0)<DDZL.Pairs ');
    sql.add('order by DDZL.DDBH ');
    active:=true;
  end;
  
end;

procedure TOrderSale_DD.DBGrid1DblClick(Sender: TObject);
begin
  if query1.Active then
  begin
    if query1.recordcount>0 then
      begin
        with Ordersale.YWDD do
          begin
            if Query1.fieldbyname('okQty').value<Query1.fieldbyname('Pairs').Value then
              begin
                edit;
                fieldbyname('DDBH').value:=query1.fieldbyname('DDBH').value;
                fieldbyname('YSBH').value:=query1.fieldbyname('DDBH').value;
                fieldbyname('XieXing').value:=query1.fieldbyname('XieXing').value;
                fieldbyname('SheHao').value:=query1.fieldbyname('SheHao').value;
                fieldbyname('YWSM').value:=query1.fieldbyname('YWSM').value;
                fieldbyname('KHPO').value:=query1.fieldbyname('KHPO').value;
                fieldbyname('KHDDBH1').value:=query1.fieldbyname('KHPO').value;
                fieldbyname('Article').value:=query1.fieldbyname('Article').value;
                fieldbyname('XieMing').value:=query1.fieldbyname('XieMing').value;
                fieldbyname('ShipDate').value:=query1.fieldbyname('ShipDate').value;
                fieldbyname('ETD').value:=query1.fieldbyname('ShipDate').value;
                fieldbyname('DDCC').value:=query1.fieldbyname('DDCC').value;
                fieldbyname('XXCC').value:=query1.fieldbyname('XXCC').value;
                fieldbyname('GSBH').value:=main.Edit2.Text;
                post;
                insert;
                showmessage('Succeed');
              end
              else
                begin
                  if messagedlg('Already finished,are you sure to do it ?',mtconfirmation,[mbYes,mbNo],0)=mrYes then
                    begin 
                      edit;
                      fieldbyname('DDBH').value:=query1.fieldbyname('DDBH').value;
                      fieldbyname('YSBH').value:=query1.fieldbyname('DDBH').value;
                      fieldbyname('XieXing').value:=query1.fieldbyname('XieXing').value;
                      fieldbyname('SheHao').value:=query1.fieldbyname('SheHao').value;
                      fieldbyname('YWSM').value:=query1.fieldbyname('YWSM').value;
                      fieldbyname('KHPO').value:=query1.fieldbyname('KHPO').value;
                      fieldbyname('KHDDBH1').value:=query1.fieldbyname('KHPO').value;
                      fieldbyname('Article').value:=query1.fieldbyname('Article').value;
                      fieldbyname('XieMing').value:=query1.fieldbyname('XieMing').value;
                      fieldbyname('ShipDate').value:=query1.fieldbyname('ShipDate').value;
                      fieldbyname('ETD').value:=query1.fieldbyname('ShipDate').value;
                      fieldbyname('DDCC').value:=query1.fieldbyname('DDCC').value;
                      fieldbyname('XXCC').value:=query1.fieldbyname('XXCC').value;
                      fieldbyname('GSBH').value:=main.Edit2.Text;
                      post;
                     showmessage('Succeed');
                    end;
              end;
          end;
      end;
  end;
end;

procedure TOrderSale_DD.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
  DBGrid1dblclick(nil);
end;

procedure TOrderSale_DD.DBGrid1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if query1.FieldByName('okQty').value=query1.FieldByName('Pairs').Value then
  DBGrid1.Canvas.Font.Color:=clred;
end;

procedure TOrderSale_DD.FormDestroy(Sender: TObject);
begin
ordersale_DD:=nil;
end;

procedure TOrderSale_DD.Button2Click(Sender: TObject);
var bm:Tbookmark;
    i:integer;
    bookmarklist:tbookmarklistEH;
begin

 if messagedlg('Do you really want to add these record?',mtconfirmation,[mbYes,mbNo],0)=mrYes then
 begin
    if (not query1.Active) then abort;
    if (query1.recordcount<1) then abort;

    query1.disablecontrols;
    bm:=query1.getbookmark;
    bookmarklist:=DBGrid1.selectedrows;
    if bookmarklist.count>0 then
    begin
      try
       for i:=0 to bookmarklist.count-1 do
        begin
          query1.gotobookmark(pointer(bookmarklist[i]));
          with Ordersale.YWDD do
          begin
            if Query1.fieldbyname('okQty').value<Query1.fieldbyname('Pairs').Value then
              begin
                edit;
                fieldbyname('DDBH').value:=query1.fieldbyname('DDBH').value;
                fieldbyname('YSBH').value:=query1.fieldbyname('DDBH').value;
                fieldbyname('XieXing').value:=query1.fieldbyname('XieXing').value;
                fieldbyname('SheHao').value:=query1.fieldbyname('SheHao').value;
                fieldbyname('YWSM').value:=query1.fieldbyname('YWSM').value;
                fieldbyname('KHPO').value:=query1.fieldbyname('KHPO').value;
                fieldbyname('KHDDBH1').value:=query1.fieldbyname('KHPO').value;
                fieldbyname('Article').value:=query1.fieldbyname('Article').value;
                fieldbyname('XieMing').value:=query1.fieldbyname('XieMing').value;
                fieldbyname('ShipDate').value:=query1.fieldbyname('ShipDate').value;
                fieldbyname('ETD').value:=query1.fieldbyname('ShipDate').value;
                fieldbyname('DDCC').value:=query1.fieldbyname('DDCC').value;
                fieldbyname('XXCC').value:=query1.fieldbyname('XXCC').value;
                fieldbyname('GSBH').value:=main.Edit2.Text;
                post;
                insert;
              end
              else
                begin
                  if messagedlg('Already finished,are you sure to do it ?',mtconfirmation,[mbYes,mbNo],0)=mrYes then
                    begin 
                      edit;
                      fieldbyname('DDBH').value:=query1.fieldbyname('DDBH').value;
                      fieldbyname('YSBH').value:=query1.fieldbyname('DDBH').value;
                      fieldbyname('XieXing').value:=query1.fieldbyname('XieXing').value;
                      fieldbyname('SheHao').value:=query1.fieldbyname('SheHao').value;
                      fieldbyname('YWSM').value:=query1.fieldbyname('YWSM').value;
                      fieldbyname('KHPO').value:=query1.fieldbyname('KHPO').value;
                      fieldbyname('KHDDBH1').value:=query1.fieldbyname('KHPO').value;
                      fieldbyname('Article').value:=query1.fieldbyname('Article').value;
                      fieldbyname('XieMing').value:=query1.fieldbyname('XieMing').value;
                      fieldbyname('ShipDate').value:=query1.fieldbyname('ShipDate').value;
                      fieldbyname('ETD').value:=query1.fieldbyname('ShipDate').value;
                      fieldbyname('DDCC').value:=query1.fieldbyname('DDCC').value;
                      fieldbyname('XXCC').value:=query1.fieldbyname('XXCC').value;
                      fieldbyname('GSBH').value:=main.Edit2.Text;
                      post;
                      insert;
                    end;
              end;
          end;
      end;
      finally
      begin
        query1.gotobookmark(bm);
        query1.freebookmark(bm);
        query1.enablecontrols;
        showmessage('You have finish copy!');
      end;
    end;

  end;
 end;

end;

procedure TOrderSale_DD.FormCreate(Sender: TObject);
var
  myYear, myMonth, myDay : Word;
  i:integer;
begin
  //
  DecodeDate(Date(), myYear, myMonth, myDay);
  for i:=0 to CBX2.Items.Count-1 do
  begin
    if strtoint(CBX2.Items[i])=myYear then
    begin
      CBX2.ItemIndex:=i;
      break;
    end;
  end;
  for i:=0 to CBX3.Items.Count-1 do
  begin
    if strtoint(CBX3.Items[i])=myMonth then
    begin
      CBX3.ItemIndex:=i;
      break;
    end;
  end;

end;

procedure TOrderSale_DD.FormShow(Sender: TObject);
begin
  main.FormLanguage(Pointer(self),self.Name);
end;

end.
