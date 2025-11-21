unit OrderList1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, DBCtrls, ExtCtrls,dateutils, DB,
  DBTables, Menus, GridsEh, DBGridEh,ehlibBDE, ComCtrls, comobj;

type
  TOrderList = class(TForm)
    Panel5: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    DBNavigator1: TDBNavigator;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    DBGrid1: TDBGrideh;
    SpecMas: TQuery;
    DS1: TDataSource;
    Query1: TQuery;
    Panel1: TPanel;
    DBGrid3: TDBGrideh;
    OrdDet: TQuery;
    DS2: TDataSource;
    SpecMasDDBH: TStringField;
    SpecMasXieXing: TStringField;
    SpecMasSheHao: TStringField;
    SpecMasDDZT: TStringField;
    SpecMasArticle: TStringField;
    SpecMasXXCC: TStringField;
    SpecMasDDCC: TStringField;
    SpecMasXieMing: TStringField;
    Pop1: TPopupMenu;
    N1: TMenuItem;
    SpecMasYSBH: TStringField;
    OrdDetXXCC: TStringField;
    OrdDetDDCC: TStringField;
    OrdDetQty: TIntegerField;
    OrdDetIPrice: TCurrencyField;
    SpecMasQty: TFloatField;
    SpecMasETD: TDateTimeField;
    N2: TMenuItem;
    N3: TMenuItem;
    SpecMasKFJC: TStringField;
    SpecMasPacking: TStringField;
    SpecMasDDMT: TStringField;
    SpecMasDDBZ: TStringField;
    N6: TMenuItem;
    SpecMasKHPO: TStringField;
    SpecMasCountry: TStringField;
    SpecMasKHDDBH1: TStringField;
    N4: TMenuItem;
    YWDDTP: TQuery;
    N5: TMenuItem;
    Label3: TLabel;
    DTP1: TDateTimePicker;
    Label4: TLabel;
    DTP2: TDateTimePicker;
    SpecMasBZDate: TDateTimeField;
    SpecMasKHBH: TStringField;
    Button2: TButton;
    SpecMasYSSM: TStringField;
    Button3: TButton;
    SpecMasIMGName: TStringField;
    N7PrintCarton1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure SpecMasAfterOpen(DataSet: TDataSet);
    procedure DBGrid1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure N7PrintCarton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  OrderList: TOrderList;
  sdate,edate,NDate:Tdate;

implementation

uses OrderPO1, OrderMark1, OrderpackMemo1, main1, OrderPack_Print1,
  Orderpack_TP1, Orderpack_Label1, OrderPack_CartonPChoice1, FunUnit;

{$R *.dfm}

procedure TOrderList.FormCreate(Sender: TObject);
var i:integer;
begin

  if main.edit2.text = 'VA12' then
    Button2.Visible := true;

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

end;

procedure TOrderList.FormClose(Sender: TObject; var Action: TCloseAction);
begin

action:=cafree;
end;

procedure TOrderList.Button1Click(Sender: TObject);
//var y,m:word;
begin
  {if (CBX2.text='')or (CBX3.text='')  then
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
  edate:=endofthemonth(sdate);  }


  sdate:=DTP1.Date;
  edate:=DTP2.Date;

  with SpecMas do
  begin
      // FIX  YWDD.BZDate  YWDDBZ.YN=1
    active:=false;
    sql.Clear;
    sql.add('select YWDD.DDBH, YWDD.YSBH,DDZL.XieXing,DDZL.SheHao, XXZL.XieMing,DDZL.DDZT,DDZL.KHPO,LBZLS.YWSM as Country,YWDD.KHDDBH1,');
    sql.add('       YWDD.Qty,DDZL.Article,YWDD.ETD,XXZL.CCGB as XXCC,DDZL.CCGB as DDCC, DDZL.KHBH, KFZL.KFJC,XXZL.IMGName, YWDD.BZDate, ');
    sql.add('       (select Top 1 DDBH from YWBZPOS where YWBZPOS.DDBH=YWDD.DDBH ) as Packing,');
    sql.add('       (select top 1 DDBH from YWDDMT where YWDDMT.DDBH=YWDD.DDBH ) as DDMT,');
    sql.add('       (select top 1 DDBH from YWDDBZ where YWDDBZ.DDBH=YWDD.DDBH and YWDDBZ.YN= 1 )  as DDBZ');
    sql.add('       ,xxzl.yssm');
    sql.add('from YWDD');
    sql.add('left join DDZL on YWDD.YSBH=DDZl.DDBH ');
    sql.add('left join XXZL  on DDZL.XieXing=XXZL.XieXing and DDZL.SheHao=XXZL.SheHao');
    sql.add('left join LBZLS on LBZLS.LB='+''''+'06'+''''+' and LBZLS.LBDH=DDZL.DDGB');
    sql.add('left join KFZL on KFZL.KFDH=DDZL.KHBH ');
    sql.Add('where DDZL.DDBH like '+''''+edit1.Text+'%'+'''');
    sql.add('      and XXZL.XieMing like '+''''+'%'+edit2.text+'%'+'''');
    sql.add('      and convert(smalldatetime,convert(varchar,YWDD.ETD,111)) between ');
    sql.add('      '''+formatdatetime('yyyy/MM/dd',sdate)+''''+'and '+''''+formatdatetime('yyyy/MM/dd',edate)+'''');
    sql.add('      and YWDD.GSBH='+''''+main.edit2.text+'''');
    sql.add('order by YWDD.DDBH');
    active:=true;
  end;
  OrdDet.Active:=true;
end;

procedure TOrderList.N1Click(Sender: TObject);
begin
OrderPo:=TOrderPO.create(self);
OrderPO.show;
//enabled:=false;
end;

procedure TOrderList.SpecMasAfterOpen(DataSet: TDataSet);
begin
if SpecMas.recordcount>0 then
  begin
    N1.Enabled:=true ;
    N2.Enabled:=true;
  end
  else
    begin
      N1.Enabled:=false;
      N2.Enabled:=false;
    end;
end;

procedure TOrderList.DBGrid1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
if SpecMas.FieldByName('DDZT').Value<>'Y' then
DBGrid1.canvas.font.color:= clred   ;
                                   
if (not SpecMas.FieldByName('Packing').isnull) and (not SpecMas.FieldByName('DDMT').isnull) and (not SpecMas.FieldByName('DDBZ').isnull) then //and (not SpecMas.FieldByName('BZDate').isnull) then
DBGrid1.canvas.font.color:= clblue;
end;

procedure TOrderList.N2Click(Sender: TObject);
begin
OrderMark:=TOrderMark.create(self);
OrderMark.show;
//enabled:=false;
end;

procedure TOrderList.N3Click(Sender: TObject);
begin
OrderpackMemo:=TOrderpackMemo.create(self);
OrderpackMemo.show;
end;

procedure TOrderList.FormDestroy(Sender: TObject);
begin
   OrderList:=nil;
end;

procedure TOrderList.N6Click(Sender: TObject);
var PC1,PC2,PC3,a:string;
    List:TStringList;
begin

  List:=TStringList.create();
  List.add('VA12');
  List.add('VA3');
  List.add('VB1');
  List.add('VB2');
  List.add('VB7');

  if (not SpecMas.FieldByName('Packing').isnull) and (not SpecMas.FieldByName('DDMT').isnull) and (not SpecMas.FieldByName('DDBZ').isnull) then
  begin
    OrderPack_Print:=TOrderPack_Print.create(self);
       case List.IndexOf(main.Edit2.Text) of    //判斷登入廠別是否須在報表顯示ISO NO
       0,1,2,3,4:
          begin
            OrderPack_Print.QRLabel46.Enabled:=true;
            OrderPack_Print.QRLabel47.Enabled:=true;
            OrderPack_Print.QRLabel48.Enabled:=true;
          end;
       end;
    OrderPack_Print.QRCompositeReport1.prepare;
    OrderPack_Print.PAGEN1.caption:='/'+inttostr(OrderPack_Print.quickrep3.QRPrinter.pagecount);
    OrderPack_Print.PAGEN2.caption:='/'+inttostr(OrderPack_Print.quickrep3.QRPrinter.pagecount);
    OrderPack_Print.PAGEN3.caption:='/'+inttostr(OrderPack_Print.quickrep3.QRPrinter.pagecount);
    with YWDDTP do
      begin
        Active:=true;
        PC1:='';
        PC2:='';
        PC3:='';
        if recordcount>0 then
          begin
            PC1:=fieldbyname('TPMEMO').AsString;
            //OrderPack_Print.QPC1.Picture.LoadFromFile();
            next;
          end;
        if recordcount>1 then
          begin
            PC2:=fieldbyname('TPMEMO').AsString;
            //OrderPack_Print.QPC2.Picture.LoadFromFile(fieldbyname('TPMEMO').AsString);
            next;
          end;
        if recordcount>2 then
          begin
            PC3:=fieldbyname('TPMEMO').AsString;
            //OrderPack_Print.QPC3.Picture.LoadFromFile(fieldbyname('TPMEMO').AsString);
            next;
          end;
        if PC1<>'' then
           OrderPack_Print.QPC1.Picture.LoadFromFile(PC1);
        if PC2<>'' then
           OrderPack_Print.QPC2.Picture.LoadFromFile(PC2);
        if PC3<>'' then
           OrderPack_Print.QPC3.Picture.LoadFromFile(PC3);
        active:=false;
      end;
    try
    if FileExists(OrderList.SpecMas.fieldbyname('IMGName').AsString)=true then
    begin
      OrderPack_Print.IMGName1.Picture.LoadFromFile(OrderList.SpecMas.fieldbyname('IMGName').AsString);
      OrderPack_Print.IMGName2.Picture.LoadFromFile(OrderList.SpecMas.fieldbyname('IMGName').AsString);
    end;
    except
    showmessage('Can not import picture, Pls contect with IT. 有問題找IT');
    end;
    OrderPack_Print.QRCompositeReport1.Preview;
    OrderPack_Print.free;
  end
  else
    begin
      if messagedlg('Not enough ,are you want to preview first?',mtconfirmation,[mbYes,mbNo],0)=mryes then
        begin
          OrderPack_Print:=TOrderPack_Print.create(self);
            case List.IndexOf(main.Edit2.Text) of    //判斷登入廠別是否須在報表顯示ISO NO
            0,1,2,3:
              begin
                OrderPack_Print.QRLabel46.Enabled:=true;
                OrderPack_Print.QRLabel47.Enabled:=true;
                OrderPack_Print.QRLabel48.Enabled:=true;
              end;
            end;
          OrderPack_Print.QRCompositeReport1.prepare;
          OrderPack_Print.PAGEN1.caption:='/'+inttostr(OrderPack_Print.quickrep3.QRPrinter.pagecount);
          OrderPack_Print.PAGEN2.caption:='/'+inttostr(OrderPack_Print.quickrep3.QRPrinter.pagecount);
          OrderPack_Print.PAGEN3.caption:='/'+inttostr(OrderPack_Print.quickrep3.QRPrinter.pagecount);
          with YWDDTP do
          begin
            Active:=true;
            PC1:='';
            PC2:='';
            PC3:='';
            if recordcount>0 then
              begin
                PC1:=fieldbyname('TPMEMO').AsString;
                //OrderPack_Print.QPC1.Picture.LoadFromFile();
                next;
              end;
            if recordcount>1 then
              begin
                PC2:=fieldbyname('TPMEMO').AsString;
                //OrderPack_Print.QPC2.Picture.LoadFromFile(fieldbyname('TPMEMO').AsString);
                next;
              end;
            if recordcount>2 then
              begin
                PC3:=fieldbyname('TPMEMO').AsString;
                //OrderPack_Print.QPC3.Picture.LoadFromFile(fieldbyname('TPMEMO').AsString);
                next;
              end;
            if PC1<>'' then
               OrderPack_Print.QPC1.Picture.LoadFromFile(PC1);
            if PC2<>'' then
               OrderPack_Print.QPC2.Picture.LoadFromFile(PC2);
            if PC3<>'' then
               OrderPack_Print.QPC3.Picture.LoadFromFile(PC3);
            active:=false;
          end;
        try
         if FileExists(OrderList.SpecMas.fieldbyname('IMGName').AsString)=true then
         begin
          OrderPack_Print.IMGName1.Picture.LoadFromFile(OrderList.SpecMas.fieldbyname('IMGName').AsString);
          OrderPack_Print.IMGName2.Picture.LoadFromFile(OrderList.SpecMas.fieldbyname('IMGName').AsString);
         end;
        except
          showmessage('Can not import picture, Pls contect with IT. 有問題找IT');
        end;
          {try              // 圖片加載不論是否成功都要打印
            a:=SpecMas.fieldbyname('IMGName').AsString  ;
            OrderPack_Print.IMGName1.Picture.LoadFromFile(a);
            OrderPack_Print.IMGName2.Picture.LoadFromFile(a);
          except
            showmessage('No picture of article.');
          end ;  }
          OrderPack_Print.QRCompositeReport1.Preview;
          OrderPack_Print.free;
        end;
    end;
end;

procedure TOrderList.N4Click(Sender: TObject);
begin
Orderpack_TP:=TOrderpack_TP.create(self);
Orderpack_TP.show;
end;

procedure TOrderList.N5Click(Sender: TObject);
begin  
Orderpack_Label:=TOrderpack_Label.create(self);
Orderpack_Label.show;  
end;

procedure TOrderList.Button2Click(Sender: TObject);
begin
{if (CBX2.text='')or (CBX3.text='')  then
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
edate:=endofthemonth(sdate);  }


sdate:=DTP1.Date;
edate:=DTP2.Date;

with SpecMas do
  begin
      // FIX  YWDD.BZDate  YWDDBZ.YN=1
    active:=false;
    sql.Clear;
    sql.add('select YWDD.DDBH, YWDD.YSBH,DDZL.XieXing,DDZL.SheHao, XXZL.XieMing,DDZL.DDZT,DDZL.KHPO,LBZLS.YWSM as Country,YWDD.KHDDBH1,');
    sql.add('       YWDD.Qty,DDZL.Article,YWDD.ETD,XXZL.CCGB as XXCC,DDZL.CCGB as DDCC, DDZL.KHBH, KFZL.KFJC,XXZL.IMGName, YWDD.BZDate, ');
    sql.add('       (select Top 1 DDBH from YWBZPOS where YWBZPOS.DDBH=YWDD.DDBH ) as Packing,');
    sql.add('       (select top 1 DDBH from YWDDMT where YWDDMT.DDBH=YWDD.DDBH ) as DDMT,');
    sql.add('       (select top 1 DDBH from YWDDBZ where YWDDBZ.DDBH=YWDD.DDBH and YWDDBZ.YN= 1 )  as DDBZ');
    sql.add('from YWDD');
    sql.add('left join DDZL on YWDD.YSBH=DDZl.DDBH ');
    sql.add('left join ZLZL  on ZLZL.DDBH=DDZL.DDBH');
    sql.add('left join XXZL  on DDZL.XieXing=XXZL.XieXing and DDZL.SheHao=XXZL.SheHao');
    sql.add('left join LBZLS on LBZLS.LB='+''''+'06'+''''+' and LBZLS.LBDH=DDZL.DDGB');
    sql.add('left join KFZL on KFZL.KFDH=DDZL.KHBH ');
    sql.Add('where DDZL.DDBH like '+''''+edit1.Text+'%'+'''');
    sql.add('      and XXZL.XieMing like '+''''+'%'+edit2.text+'%'+'''');
    sql.add('      and convert(smalldatetime,convert(varchar,YWDD.ETD,111)) between ');
    sql.add('      '''+formatdatetime('yyyy/MM/dd',sdate)+''''+'and '+''''+formatdatetime('yyyy/MM/dd',edate)+'''');
    sql.add('      and YWDD.GSBH='+''''+main.edit2.text+'''');
{    sql.add('      and exists ( select  DDBH  from ywbzpos     ');
    sql.add('                   where ddbh = YWDD.DDBH         ');
    sql.add('                   group by ddbh, xh              ');
    sql.add('                   having count(*) > 1            ');
    sql.add('                 )                                ');
    sql.add('      and exists ( select  zlbh  from zlzls2      ');
    sql.add('                   where zlbh = YWDD.DDBH         ');
    sql.add('                         and clbh like ''H14%''   ');
    sql.add('                         and clsl <> 0            ');
    sql.add('                   group by zlbh                  ');
    sql.add('                   having count(*) > 1            ');
    sql.add('                 )                                ');
}
 //   sql.add('      and YWDD.Qty <> (select sum(clsl) from zlzls2  where zlzls2.zlbh = DDZL.zlbh and zlzls2.clbh like ''h14%'') ');
    sql.add('      and exists ( select * from zlzls2  where zlzls2.zlbh = DDZL.zlbh and zlzls2.clbh like ''h14%'' and  zlzls2.yn = 1 ) ');
    sql.add('      and exists ( select * from zlzls2  where zlzls2.zlbh = DDZL.zlbh and zlzls2.clbh like ''h14%'' and  zlzls2.yn = 2 ) ');
    sql.add('order by YWDD.DDBH');
    active:=true;
  end;
OrdDet.Active:=true;
end;

procedure TOrderList.Button3Click(Sender: TObject);
var   a:string;
      eclApp,WorkBook:olevariant;
 //     xlsFileName:string;
      i,j:integer;
begin
  if  SpecMas.active  then
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
        for   i:=0   to   SpecMas.fieldCount-1   do
          begin
              eclApp.Cells(1,i+1):=SpecMas.fields[i].FieldName;
          end;
        SpecMas.First;
        j:=2;
        while   not   SpecMas.Eof   do
          begin
            for   i:=0   to   SpecMas.FieldCount-1   do
              begin
                eclApp.Cells(j,i+1):=SpecMas.Fields[i].Value;
              end;
            SpecMas.Next;
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

end;

procedure TOrderList.N7PrintCarton1Click(Sender: TObject);
begin
  OrderPack_CartonPChoice:=TOrderPack_CartonPChoice.Create(self);
  OrderPack_CartonPChoice.ShowModal();
  OrderPack_CartonPChoice.Free;
end;

end.
