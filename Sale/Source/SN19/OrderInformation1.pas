unit OrderInformation1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, DBCtrls, ExtCtrls,comobj
  ,dateutils,ehlibBDE, GridsEh, DBGridEh, Menus, iniFiles,funUnit;

type
  TOrderInformation = class(TForm)
    Panel5: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label7: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label4: TLabel;
    DBNavigator1: TDBNavigator;
    Edit1: TEdit;
    Edit2: TEdit;
    CBX2: TComboBox;
    CBX3: TComboBox;
    Button1: TButton;
    Edit3: TEdit;
    Button2: TButton;
    Edit4: TEdit;
    Edit5: TEdit;
    RadioButton1: TRadioButton;
    BuyNoEdit: TEdit;
    RB1: TRadioButton;
    Edit6: TEdit;
    DDZL: TQuery;
    Query2: TQuery;
    DDZLCC: TQuery;
    DataSource1: TDataSource;
    UpdateSQL1: TUpdateSQL;
    Query1: TQuery;
    DBGridEh1: TDBGridEh;
    PopupMenu1: TPopupMenu;
    Modify1: TMenuItem;
    Save1: TMenuItem;
    Cance1: TMenuItem;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Modify1Click(Sender: TObject);
    procedure Save1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Cance1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  OrderInformation: TOrderInformation;
  sdate,edate:TDate;

implementation

uses main1;

{$R *.dfm}

procedure TOrderInformation.Button1Click(Sender: TObject);
var i,j,k:integer;
begin
  if (Edit1.text='') and (Edit3.text='')  then
  begin
    showmessage('You have to select SpecNo or Article.');
    abort;
  end;

  with Query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select SCZL.SCBH');
    sql.add('from SCZL');
    SQL.Add('  left join ZLZL on ZLZL.ZLBH=SCZL.ZLBH  ');
    SQL.Add('  left join DDZL  on ZLZL.ZLBH=DDZL.DDBH  ');
    SQL.Add('  left join DDZL_INFO  on DDZL_INFO.DDBH=DDZL.DDBH  ');
    SQL.Add('  left join DDZLS  on DDZL.DDBH=DDZLS.DDBH  ');
    SQL.Add('  left join KFZL on KFZl.KFDH=DDZl.KHBH   ');
    SQL.Add('  left join XXZL  on DDZL.XieXing=XXZL.XieXing and DDZL.SheHao=XXZL.SheHao  ');
    SQL.Add('  left join KFXXZL  on DDZL.XieXing=KFXXZL.XieXing and DDZL.SheHao=KFXXZL.SheHao  ');
    SQL.Add('  left join LBZLS on LBZLS.LB=''06'' and LBZLS.LBDH=DDZL.DDGB  ');
    sql.Add('where SCZL.SCBH like '+''''+edit1.Text+'%'+'''');
    sql.add('      and DDZL.KHPO like'+''''+edit4.text+'%'+'''');
    sql.add('      and SCZL.SCBH=SCZL.ZLBH');
    sql.add('      and XXZL.ARTICLE like '+''''+edit3.Text+'%'+'''');
    sql.add('      and XXZL.XieMing like '+''''+'%'+edit2.text+'%'+'''');
    if edit5.Text<>'' then
       sql.add('      and XXZL.DAOMH like '+''''+'%'+edit5.text+'%'+'''');
    if edit6.Text<>'' then
       sql.add('      and XXZL.XTMH like '+''''+'%'+edit6.text+'%'+'''');
    if RB1.Checked=true then
       sql.add('      and convert(smalldatetime,convert(varchar,DDZL.ShipDate,111)) between '''+formatdatetime('yyyy/MM/dd',sdate)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',edate)+'''')
    else
       SQL.Add('and DDZL.BUYNO like '''+BuyNoEdit.Text+'%'' ');
    sql.add('      and DDZL.GSBH='+''''+main.edit2.Text+'''');
    sql.add('order by SCZL.ZLBH');
    //funcobj.WriteErrorLog(sql.Text);
    active:=true;
  end;

  if Query1.RecordCount > 0 then
  begin
    with DDZLCC do
    begin
      active:=false;
      sql.Clear;
      sql.Add('select distinct DDZLS.CC from DDZLS');
      sql.add('left join ZLZL on ZLZL.ZLBH=DDZLS.DDBH ');
      sql.add('left join DDZL on DDZL.DDBH=DDZLS.DDBH ');
      sql.Add('where DDZLS.DDBH in (');
      for i:=0 to Query1.RecordCount-1 do
      begin
        if i < Query1.RecordCount-1 then
          sql.Add('''' + Query1.fieldbyname('SCBH').AsString + ''',')
        else
          sql.Add('''' + Query1.fieldbyname('SCBH').AsString + ''')');
        Query1.Next ;
      end;
      sql.add('order by DDZLS.CC');
      //funcobj.WriteErrorLog(sql.Text);
      active:=true;
    end;

    with DDZL do
    begin
      active:=false;
      sql.Clear;
      sql.add('select Buycycle,POCreateDate,Beneficiary,SCZL.ZLBH,DDZL.KHPO,CUSTOMERPO,Invoice,XXZL.XieMing,DDZL_INFO.Shoename,KFXXZL.YSSM as color,KFXXZL.Article as SN,KFXXZL.devcode,Colorcode');
      sql.add(',RGACDate,DDZL.ShipDate,GACDate,Cost,GPMUpcharge,LOPUpcharge,Commercialization,VASUpcharge,TransportationUpcharge,InvoicePrice,FOB');
      sql.add(',ShipTo,SpecialInstructions,XXZL.DAOMH,XXZL.DDMH,XXZL.XTMH');
      while not DDZLCC.Eof do
      begin
        sql.add(',Max(case  when DDZLS.CC='+''''+DDZLCC.fieldbyname('CC').value+'''');
        sql.add(' then DDZLS.Quantity else null end) as '+''''+DDZLCC.fieldbyname('CC').value+'''');
        DDZLCC.Next;
      end;
      sql.add(',SCZL.Qty as Total,LBZLS.YWSM as Country,Shipping,Port,DDZL_INFO.userid,DDZL_INFO.userdate');
      sql.add('from SCZL');
      SQL.Add('  left join ZLZL on ZLZL.ZLBH=SCZL.ZLBH  ');
      SQL.Add('  left join DDZL  on ZLZL.ZLBH=DDZL.DDBH  ');
      SQL.Add('  left join DDZL_INFO  on DDZL_INFO.DDBH=DDZL.DDBH  ');
      SQL.Add('  left join DDZLS  on DDZL.DDBH=DDZLS.DDBH  ');
      SQL.Add('  left join KFZL on KFZl.KFDH=DDZl.KHBH   ');
      SQL.Add('  left join XXZL  on DDZL.XieXing=XXZL.XieXing and DDZL.SheHao=XXZL.SheHao  ');
      SQL.Add('  left join KFXXZL  on DDZL.XieXing=KFXXZL.XieXing and DDZL.SheHao=KFXXZL.SheHao  ');
      SQL.Add('  left join LBZLS on LBZLS.LB=''06'' and LBZLS.LBDH=DDZL.DDGB  ');
      sql.Add('where SCZL.SCBH like '+''''+edit1.Text+'%'+'''');
      sql.add('      and DDZL.KHPO like'+''''+edit4.text+'%'+'''');
      sql.add('      and SCZL.SCBH=SCZL.ZLBH');
      sql.add('      and XXZL.ARTICLE like '+''''+edit3.Text+'%'+'''');
      sql.add('      and XXZL.XieMing like '+''''+'%'+edit2.text+'%'+'''');
      if edit5.Text<>'' then
         sql.add('      and XXZL.DAOMH like '+''''+'%'+edit5.text+'%'+'''');
      if edit6.Text<>'' then
         sql.add('      and XXZL.XTMH like '+''''+'%'+edit6.text+'%'+'''');
      if RB1.Checked=true then
         sql.add('      and convert(smalldatetime,convert(varchar,DDZL.ShipDate,111)) between '''+formatdatetime('yyyy/MM/dd',sdate)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',edate)+'''')
      else
         SQL.Add('and DDZL.BUYNO like '''+BuyNoEdit.Text+'%'' ');
      sql.add('      and DDZL.GSBH='+''''+main.edit2.Text+'''');
      sql.add('group by  SCZL.ZLBH,DDZL.KHPO,XXZL.XieMing,KFXXZL.Article,KFXXZL.YSSM,KFXXZL.devcode,SCZL.Qty,DDZL.ShipDate,LBZLS.YWSM,XXZL.DAOMH');
      sql.add(',XXZL.DDMH,XXZL.XTMH,LBZLS.YWSM,Buycycle,POCreateDate,Beneficiary,CUSTOMERPO,Invoice,DDZL_INFO.Shoename,Colorcode,RGACDate');
      sql.add(',GACDate,Cost,GPMUpcharge,LOPUpcharge,Commercialization,VASUpcharge,TransportationUpcharge,InvoicePrice,FOB,ShipTo,SpecialInstructions,Shipping,Port,DDZL_INFO.userid,DDZL_INFO.userdate');

      sql.add('order by SCZL.ZLBH');
      //funcobj.WriteErrorLog(sql.Text);
      active:=true;
    end;

    with DBGrideh1 do
    begin
       columns[0].Width:=70;
       columns[1].Width:=70;
       columns[2].Width:=70;
       columns[3].Width:=90;
       columns[4].Width:=70;
       columns[5].Width:=70;
       columns[6].Width:=70;
       columns[7].Width:=70;
       columns[8].Width:=70;
       columns[9].Width:=70;
       columns[10].Width:=70;
       columns[11].Width:=70;
       columns[12].Width:=70;
       columns[13].Width:=70;
       columns[14].Width:=70;
       columns[15].Width:=70;
       columns[16].Width:=70;
       columns[17].Width:=70;
       columns[18].Width:=70;
       columns[19].Width:=70;
       columns[20].Width:=70;
       columns[21].Width:=70;
       columns[22].Width:=70;
       columns[23].Width:=70;
       columns[23].DisplayFormat:='#,##00.00';
       columns[24].Width:=70;
       columns[25].Width:=70;
       columns[26].Width:=70;
       columns[27].Width:=70;
       columns[28].Width:=70;
       columns[29].Width:=70;
       columns[30].Width:=70;
       columns[31].Width:=70;
       columns[32].Width:=70;
       columns[DDZL.fieldCount-1].Width:=70;
       columns[DDZL.fieldCount-2].Width:=70;
       columns[DDZL.fieldCount-3].Width:=70;
       columns[DDZL.fieldCount-4].Width:=70;
       columns[DDZL.fieldCount-5].Width:=70;
       columns[DDZL.fieldCount-6].Width:=70;
    end;
  end else
  begin
    showmessage('Don hang khong ton tai.');
    abort;
  end;
end;

procedure TOrderInformation.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TOrderInformation.FormDestroy(Sender: TObject);
begin
  OrderInformation:=nil;
end;

procedure TOrderInformation.FormCreate(Sender: TObject);
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
  //
  BuyNoEdit.Text:=FormatDateTime('YYYYMM',Date());

end;

procedure TOrderInformation.Modify1Click(Sender: TObject);
begin
  with DDZL do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
end;

procedure TOrderInformation.Save1Click(Sender: TObject);
var i:integer;
    NDate:TDate;
begin
  with Query2 do
  begin
    active:=false;
    sql.Clear;
    sql.Add('select getdate() as NDate ');
    active:=true;
    NDate:=fieldbyname('Ndate').Value;
    active:=false;
  end;
  try
    DDZL.first;
    for i:=1 to DDZL.RecordCount do
    begin
       with Query1 do
       begin
          active:=false;
          sql.Clear;
          sql.Add('select DDBH from DDZL_INFO');
          sql.Add('where DDBH= '''+DDZL.fieldbyname('ZLBH').AsString+'''');
          active:=true;
       end;
      case DDZL.updatestatus of
      usmodified:
        if  Query1.RecordCount=0 then
        begin
          with Query2 do
          begin
            active:=false;
            sql.Clear;
            sql.Add(' insert DDZL_INFO (DDBH) values(');
            sql.Add(' '''+DDZL.fieldbyname('ZLBH').AsString+'''');
            //sql.Add(' '''+main.Edit1.Text+''''+',getdate()');
            sql.Add(')');
            execsql;
          end;
          with Query2 do
          begin
            active:=false;
            sql.clear;
            sql.add('update DDZL_INFO ');
            sql.add('set Buycycle='+''''+DDZL.fieldbyname('Buycycle').AsString+'''');
            if not DDZL.fieldbyname('POCreateDate').IsNull then
              sql.add(',POCreateDate='+''''+DDZL.fieldbyname('POCreateDate').AsString+'''')
            else
              sql.add(',POCreateDate=NULL');
            sql.add(',Beneficiary='+''''+DDZL.fieldbyname('Beneficiary').AsString+'''');
            sql.add(',CUSTOMERPO='+''''+DDZL.fieldbyname('CUSTOMERPO').AsString+'''');
            sql.add(',Invoice='+''''+DDZL.fieldbyname('Invoice').AsString+'''');
            sql.add(',Shoename='+''''+DDZL.fieldbyname('Shoename').AsString+'''');
            sql.add(',Colorcode='+''''+DDZL.fieldbyname('Colorcode').AsString+'''');
            if not DDZL.fieldbyname('RGACDate').IsNull then
              sql.add(',RGACDate='+''''+DDZL.fieldbyname('RGACDate').AsString+'''')
            else
              sql.add(',RGACDate=NULL');
            sql.add(',Cost='+''''+DDZL.fieldbyname('Cost').AsString+'''');
            sql.add(',GPMUpcharge='+''''+DDZL.fieldbyname('GPMUpcharge').AsString+'''');
            sql.add(',LOPUpcharge='+''''+DDZL.fieldbyname('LOPUpcharge').AsString+'''');
            sql.add(',Commercialization='+''''+DDZL.fieldbyname('Commercialization').AsString+'''');
            sql.add(',VASUpcharge='+''''+DDZL.fieldbyname('VASUpcharge').AsString+'''');
            sql.add(',TransportationUpcharge='+''''+DDZL.fieldbyname('TransportationUpcharge').AsString+'''');
            sql.add(',InvoicePrice='+''''+DDZL.fieldbyname('InvoicePrice').AsString+'''');
            sql.add(',FOB='+''''+DDZL.fieldbyname('FOB').AsString+'''');
            sql.add(',ShipTo='+''''+DDZL.fieldbyname('ShipTo').AsString+'''');
            sql.add(',SpecialInstructions='+''''+DDZL.fieldbyname('SpecialInstructions').AsString+'''');
            sql.add(',Shipping='+''''+DDZL.fieldbyname('Shipping').AsString+'''');
            sql.add(',Port='+''''+DDZL.fieldbyname('Port').AsString+'''');
            sql.add(',userID='+''''+main.edit1.text+'''');
            sql.add(',userdate=getdate()');
            SQL.add('where DDBH='+''''+DDZL.fieldbyname('ZLBH').Value+'''');
            execsql;
            //funcobj.WriteErrorLog(sql.Text);
            active:=false;
          end;
        end else
        begin
          with Query2 do
          begin
            active:=false;
            sql.clear;
            sql.add('update DDZL_INFO ');
            sql.add('set Buycycle='+''''+DDZL.fieldbyname('Buycycle').AsString+'''');

            if not DDZL.fieldbyname('POCreateDate').IsNull then
              sql.add(',POCreateDate='+''''+DDZL.fieldbyname('POCreateDate').AsString+'''')
            else
              sql.add(',POCreateDate=NULL');
            sql.add(',Beneficiary='+''''+DDZL.fieldbyname('Beneficiary').AsString+'''');
            sql.add(',CUSTOMERPO='+''''+DDZL.fieldbyname('CUSTOMERPO').AsString+'''');
            sql.add(',Invoice='+''''+DDZL.fieldbyname('Invoice').AsString+'''');
            sql.add(',Shoename='+''''+DDZL.fieldbyname('Shoename').AsString+'''');
            sql.add(',Colorcode='+''''+DDZL.fieldbyname('Colorcode').AsString+'''');

            if not DDZL.fieldbyname('RGACDate').IsNull then
              sql.add(',RGACDate='+''''+DDZL.fieldbyname('RGACDate').AsString+'''')
            else
              sql.add(',RGACDate=NULL');

            sql.add(',Cost='+''''+DDZL.fieldbyname('Cost').AsString+'''');
            sql.add(',GPMUpcharge='+''''+DDZL.fieldbyname('GPMUpcharge').AsString+'''');
            sql.add(',LOPUpcharge='+''''+DDZL.fieldbyname('LOPUpcharge').AsString+'''');
            sql.add(',Commercialization='+''''+DDZL.fieldbyname('Commercialization').AsString+'''');
            sql.add(',VASUpcharge='+''''+DDZL.fieldbyname('VASUpcharge').AsString+'''');
            sql.add(',TransportationUpcharge='+''''+DDZL.fieldbyname('TransportationUpcharge').AsString+'''');
            sql.add(',InvoicePrice='+''''+DDZL.fieldbyname('InvoicePrice').AsString+'''');
            sql.add(',FOB='+''''+DDZL.fieldbyname('FOB').AsString+'''');
            sql.add(',ShipTo='+''''+DDZL.fieldbyname('ShipTo').AsString+'''');
            sql.add(',SpecialInstructions='+''''+DDZL.fieldbyname('SpecialInstructions').AsString+'''');
            sql.add(',Shipping='+''''+DDZL.fieldbyname('Shipping').AsString+'''');
            sql.add(',Port='+''''+DDZL.fieldbyname('Port').AsString+'''');
            sql.add(',userID='+''''+main.edit1.text+'''');
            sql.add(',userdate=getdate()');
            SQL.add('where DDBH='+''''+DDZL.fieldbyname('ZLBH').Value+'''');
            execsql;
            //funcobj.WriteErrorLog(sql.Text);
            active:=false;
          end;
        end;
    end;
    DDZL.next;
  end;
  Button1.Click;
  except
    Messagedlg('Have wrong,can not save!',mtwarning,[mbyes],0);
  end;

end;

procedure TOrderInformation.Button2Click(Sender: TObject);
var   a:string;
      eclApp,WorkBook:olevariant;
      i,j,k:integer;
begin
  if  DDZL.active  then
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

    eclApp.Cells(1,1):='Buy cycle';
    eclApp.Cells(1,2):='PO Create Date';
    eclApp.Cells(1,3):='Beneficiary';
    eclApp.Cells(1,4):='RY#';
    eclApp.Cells(1,5):='SKECHERS PO #';
    eclApp.Cells(1,6):='CUSTOMER PO #';
    eclApp.Cells(1,7):='Invoice#';
    eclApp.Cells(1,8):='DIVISION';
    eclApp.Cells(1,9):='Shoe name';
    eclApp.Cells(1,10):='Color';
    eclApp.Cells(1,11):='SN#';
    eclApp.Cells(1,12):='SR#';
    eclApp.Cells(1,13):='Colorcode';
    eclApp.Cells(1,14):='RGACDate';
    eclApp.Cells(1,15):='OGAC Date ';
    eclApp.Cells(1,16):='GAC Date';
    eclApp.Cells(1,17):='Cost';
    eclApp.Cells(1,18):='GPM Upcharge';
    eclApp.Cells(1,19):='LOP Upcharge';
    eclApp.Cells(1,21):='Commercialization/Tooling Upcharge';
    eclApp.Cells(1,21):='VAS Upcharge';
    eclApp.Cells(1,22):='Transportation Upcharge';
    eclApp.Cells(1,23):='Invoice Price';
    eclApp.Cells(1,24):='FOB (Inline)';
    eclApp.Cells(1,25):='Ship To';
    eclApp.Cells(1,26):='Special Instructions';
    eclApp.Cells(1,27):='cutting';
    eclApp.Cells(1,28):='O/S';
    eclApp.Cells(1,29):='Last#';

    for   i:=29   to   DDZL.fieldCount-3   do
    begin
        eclApp.Cells(1,i+1):=DDZL.fields[i].FieldName;
    end;
    DDZL.First;
    j:=2;
    while   not   DDZL.Eof   do
    begin
      for   i:=0   to   DDZL.FieldCount-3   do
        begin
          eclApp.Cells(j,i+1):=DDZL.Fields[i].Value;
        end;
      DDZL.Next;
      inc(j);
    end;
    for k:=1 to 4 do
    begin
      eclApp.range[eclApp.cells[1,1],eclApp.cells[j-1,i]].borders[k].linestyle:=1;
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

procedure TOrderInformation.Cance1Click(Sender: TObject);
begin
  with DDZL do
  begin
    active:=false;
    cachedupdates:=false;
    requestlive:=false;
    active:=true;
  end;
end;

end.
