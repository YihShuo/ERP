unit OrderList1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, DBCtrls, ExtCtrls,comobj
  ,dateutils,ehlibBDE, GridsEh, DBGridEh, Menus, iniFiles,funUnit;

type
  TOrderList = class(TForm)
    Panel5: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label7: TLabel;
    DBNavigator1: TDBNavigator;
    Edit1: TEdit;
    Edit2: TEdit;
    CBX2: TComboBox;
    CBX3: TComboBox;
    Button1: TButton;
    DBGrid1: TDBGridEh;
    Label5: TLabel;
    Edit3: TEdit;
    QueryExcel: TQuery;
    DS1: TDataSource;
    OrdMas: TQuery;
    OrdMasSCBH: TStringField;
    OrdMasZLBH: TStringField;
    OrdMasXieXing: TStringField;
    OrdMasSheHao: TStringField;
    OrdMasArticle: TStringField;
    OrdMasXieMing: TStringField;
    OrdMasQty: TFloatField;
    OrdMasShipDate: TDateTimeField;
    DBGrid2: TDBGridEh;
    DS2: TDataSource;
    OrdDet: TQuery;
    OrdMasDDZT: TStringField;
    OrdMasDDCC: TStringField;
    OrdMasXXCC: TStringField;
    OrdMasYWSM: TStringField;
    Button2: TButton;
    Edit4: TEdit;
    OrdMasKFJC: TStringField;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    YWDDTP: TQuery;
    SpecMas: TQuery;
    SpecMasDDBH: TStringField;
    SpecMasYSBH: TStringField;
    SpecMasXieXing: TStringField;
    SpecMasSheHao: TStringField;
    SpecMasArticle: TStringField;
    SpecMasXieMing: TStringField;
    SpecMasQty: TFloatField;
    SpecMasETD: TDateTimeField;
    SpecMasXXCC: TStringField;
    SpecMasDDCC: TStringField;
    SpecMasDDZT: TStringField;
    SpecMasKFJC: TStringField;
    SpecMasPacking: TStringField;
    SpecMasDDMT: TStringField;
    SpecMasDDBZ: TStringField;
    SpecMasKHDDBH1: TStringField;
    SpecMasKHPO: TStringField;
    SpecMasCountry: TStringField;
    OrdMasDAOMH: TStringField;
    Label6: TLabel;
    Edit5: TEdit;
    OrdMasXTMH: TStringField;
    SpecMasYSSM: TStringField;
    RadioButton1: TRadioButton;
    BuyNoEdit: TEdit;
    RB1: TRadioButton;
    Label4: TLabel;
    Edit6: TEdit;
    OrdMasBUYNO: TStringField;
    OrdMasKHPO: TStringField;
    Qtemp: TQuery;
    OrdDetDDBH: TStringField;
    OrdDetDDCC: TStringField;
    OrdDetXXCC: TStringField;
    OrdDetQty: TIntegerField;
    OrdMasDest: TStringField;
    N3: TMenuItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure Button2Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure DBGrid1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
  private
    { Private declarations }
    procedure ShowOrdSize();
  public
    ShoePicPath:String;
    { Public declarations }
    procedure ReadIni();
  end;

var
  OrderList: TOrderList;
  sdate,edate:TDate;

implementation

uses main1, PSpecPrintss1, PSpecPrintssTW1, OrderPack_Print1,PSPecPrintss_SP1,
     PSpecPrintss_Price1, PSpecPrintss_SP_Price1, PSpecPrintssTW_Price1;

{$R *.dfm}
procedure TOrderList.ReadIni();
var MyIni :Tinifile;
    AppDir:string;
begin

  ShoePicPath := '\\192.168.23.11\A_DataCenter\CDC\Sales\BOM';
  AppDir:=ExtractFilePath(Application.ExeName);
  if FileExists(AppDir+'\ComName.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ComName.ini');
      ShoePicPath:=MyIni.ReadString('ShoePic','Bom_N31_shoePic','');
    finally
      MyIni.Free;
    end;
  end;
end;

procedure TOrderList.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  free;
end;

procedure TOrderList.Button1Click(Sender: TObject);
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

  with OrdMas do
  begin
    active:=false;
    sql.Clear;
    sql.add('select distinct SCZL.SCBH, SCZL.ZLBH,DDZL.DDZT,LBZLS.YWSM,');
    sql.add('DDZL.XieXing,DDZL.SheHao, DDZL.XieXing,DDZL.CCGB as DDCC,KFZL.KFJC,');
    sql.add('SCZL.Qty as Qty,DDZL.Article,DDZL.ShipDate,XXZL.CCGB as XXCC,XXZL.XieMing,XXZL.DAOMH,XXZL.XTMH,DDZL.BUYNO,DDZL.KHPO,DDZL.Dest');
    sql.add('from SCZL');
    sql.add('left join ZLZL on ZLZL.ZLBH=SCZL.ZLBH');
    sql.add('left join DDZL  on ZLZL.ZLBH=DDZL.DDBH');
    sql.add('left join KFZL on KFZl.KFDH=DDZl.KHBH ') ;
    sql.add('left join XXZL  on DDZL.XieXing=XXZL.XieXing and DDZL.SheHao=XXZL.SheHao');
    sql.add('left join LBZLS on LBZLS.LB='+''''+'06'+''''+' and LBZLS.LBDH=DDZL.DDGB');
    sql.Add('where SCZL.SCBH like '+''''+edit1.Text+'%'+'''');
    sql.add('      and KFZL.KFJC like'+''''+edit4.text+'%'+'''');
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
    //ShowMessage(SQL.Text);
    //funcobj.WriteErrorLog(sql.Text );
    active:=true;
  end;
  OrdDet.active:=true;
  ShowOrdSize();
end;
procedure TOrderList.ShowOrdSize();
var a,b,c,d:string;
begin
  if OrdMas.RecordCount>0 then
  begin
    //找出訂單尺寸及斬刀尺寸的對應關係
    a:=OrdMas.fieldbyname('DDCC').value  ;
    b:=OrdMas.fieldbyname('XXCC').value;
     //找出所有國別尺寸的對應關係
       //找出訂單鞋型國別尺寸的對應關係
    if a='K' then
    begin
      a:='XXZLS3.UK_Size as DDCC,';
      c:='XXZLS3.UK_Size';
    end;
    if a='J' then
    begin
      a:='XXZLS3.JPN_Size as DDCC,';
      c:='XXZLS3.JPN_Size';
    end;
    if a='E' then
    begin
      a:='XXZLS3.EUR_Size as DDCC,';
      c:='XXZLS3.EUR_Size';
    end;
    if a='F' then
    begin
      a:='XXZLS3.FRN_Size as DDCC,';
      c:='XXZLS3.FRN_Size';
    end;
    if a='M' then
    begin
      a:='XXZLS3.MX_Size as DDCC,';
      c:='XXZLS3.MX_Size';
    end;
    if a='U' then
    begin
      a:='XXZLS3.US_Size as DDCC,';
      c:='XXZLS3.US_Size';
    end;
    if a='O' then
    begin
      a:='XXZLS3.OTH_Size as DDCC,';
      C:='XXZLS3.OTH_Size';
    end;
    if b='K' then
      b:='XXZLS3.UK_Size as XXCC,';
      d:='XXZLS3.UK_Size';
    if b='J' then
    begin
      b:='XXZLS3.JPN_Size as XXCC,';
      d:='XXZLS3.JPN_Size';
    end;
    if b='E' then
    begin
      b:='XXZLS3.EUR_Size as XXCC,';
      d:='XXZLS3.EUR_Size';
    end;
    if b='F' then
    begin
      b:='XXZLS3.FRN_Size as XXCC,';
      d:='XXZLS3.FRN_Size';
    end;
    if b='M' then
    begin
      b:='XXZLS3.MX_Size as XXCC,';
      d:='XXZLS3.MX_Size';
    end;
    if b='U' then
    begin
      b:='XXZLS3.US_Size as XXCC,';
      d:='XXZLS3.US_Size';
    end;
    if b='O' then
    begin
      b:=' XXZLS3.OTH_Size as XXCC,';
      d:='XXZLS3.OTH_Size';
    end;
    //showmessage(c);
       //尺寸明細
   with OrdDet do
   begin
       active:=false;
       sql.Clear;
       //訂單及工具尺寸
       sql.add('select DDZLs.DDBH,'+a+b+'DDZLs.Quantity as Qty ');
       sql.add('from DDZLs ');
       sql.add('left join XXZLS3  on  XXZLS3.XieXing=:XieXing and DDZLS.CC='+c);
       sql.add('where DDZLs.DDBH=:SCBH');
       sql.add('and DDZLs.Quantity<>0  ');
       //funcobj.WriteErrorLog(sql.Text);
       active:=true;                                                                                                                                                                                                                                             
   end;
  end;
end;


procedure TOrderList.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    edit2.SetFocus;
end;

procedure TOrderList.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    edit3.SetFocus;
end;

procedure TOrderList.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    edit4.SetFocus;
end;

procedure TOrderList.Button2Click(Sender: TObject);
  var eclApp,WorkBook:olevariant;
      i,j,k:integer;
  begin
  if  OrdMas.active  then
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
        OrdMas.First;
        with Qtemp do
        begin
          active:=false;
          sql.Clear;
          sql.Add('select distinct DDZLS.CC from DDZLS');
          sql.add('left join ZLZL on ZLZL.ZLBH=DDZLS.DDBH ');
          sql.add('left join DDZL on DDZL.DDBH=DDZLS.DDBH ');
          sql.Add('where DDZLS.DDBH in (');
          for i:=0 to OrdMas.RecordCount-1 do
          begin
            if i < OrdMas.RecordCount-1 then
              sql.Add('''' + OrdMas.fieldbyname('SCBH').AsString + ''',')
            else
              sql.Add('''' + OrdMas.fieldbyname('SCBH').AsString + ''')');
            OrdMas.Next ;
          end;
          sql.add('order by DDZLS.CC');
          //funcobj.WriteErrorLog(sql.Text);
          active:=true;
        end;

        with QueryExcel do
        begin
          active:=false;
          sql.Clear;
          sql.add('select distinct SCZL.SCBH, SCZL.ZLBH,DDZL.DDZT,LBZLS.YWSM,');
          sql.add('DDZL.XieXing,DDZL.SheHao, DDZL.XieXing,DDZL.CCGB as DDCC,KFZL.KFJC,');
          sql.add('SCZL.Qty as Qty,DDZL.Article,DDZL.ShipDate,XXZL.CCGB as XXCC,XXZL.XieMing,XXZL.DAOMH,XXZL.XTMH,DDZL.BUYNO,DDZL.KHPO');
          while not Qtemp.Eof do
          begin
            sql.add(',Max(case  when DDZLS.CC='+''''+Qtemp.fieldbyname('CC').value+'''');
            sql.add(' then DDZLS.Quantity else null end) as '+''''+Qtemp.fieldbyname('CC').value+'''');
            Qtemp.Next;
          end;
          sql.add('from SCZL');
          sql.add('left join ZLZL on ZLZL.ZLBH=SCZL.ZLBH');
          sql.add('left join DDZL  on ZLZL.ZLBH=DDZL.DDBH');
          sql.add('left join KFZL on KFZl.KFDH=DDZl.KHBH ') ;
          sql.add('left join XXZL  on DDZL.XieXing=XXZL.XieXing and DDZL.SheHao=XXZL.SheHao');
          sql.add('left join LBZLS on LBZLS.LB='+''''+'06'+''''+' and LBZLS.LBDH=DDZL.DDGB');
          sql.add('left join DDZLS on DDZL.DDBH=DDZLS.DDBH ');
          sql.Add('where SCZL.SCBH like '+''''+edit1.Text+'%'+'''');
          sql.add('      and KFZL.KFJC like'+''''+edit4.text+'%'+'''');
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
          sql.add('group by SCZL.SCBH, SCZL.ZLBH,DDZL.DDZT,LBZLS.YWSM,DDZL.XieXing,DDZL.SheHao,DDZL.XieXing,DDZL.CCGB,KFZL.KFJC,');
          sql.add('		 SCZL.Qty,DDZL.Article,DDZL.ShipDate,XXZL.CCGB,XXZL.XieMing,XXZL.DAOMH,XXZL.XTMH,DDZL.BUYNO,DDZL.KHPO');
          sql.add('order by SCZL.ZLBH');
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

procedure TOrderList.FormDestroy(Sender: TObject);
begin
  OrderList:=nil;
end;

procedure TOrderList.DBGrid1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if OrdMas.FieldByName('DDZT').value<>'Y' then
  begin
    dbgrid1.canvas.font.color:=clred;
  end;
end;

procedure TOrderList.N1Click(Sender: TObject);
var shoePic:string;
    i:integer;
begin
  if messagedlg('English version?',mtinformation,[mbYes,mbNo],0)=mrYes then
  begin
    if messagedlg('Not show Child materail?',mtinformation,[mbYes,mbNo],0)=mrYes then
      begin
        PSpecPrintss:=TPSpecPrintss.create(nil);
        //20150617修改共用Plan N11
        PSpecPrintss.MemoTemp.DataSource:=DS1;
        PSpecPrintss.Titlememo.DataSource:=DS1;
        PSpecPrintss.MemoOth.DataSource:=DS1;
        PSpecPrintss.QMatList.DataSource:=DS1;
        PSpecPrintss.TitleMemo.Active:=true;
        //
        PSpecPrintss.QRCompositeReport1.prepare;
        i:=PSpecPrintss.QuickRep2.QRPrinter.pagecount ;
        PSpecPrintss.PageN1.Caption:='/  '+inttostr(i);
        PSpecPrintss.PageN2.Caption:='/  '+inttostr(i);
        PSpecPrintss.PageN3.Caption:='/  '+inttostr(i);
        PSpecPrintss.Fac1.Caption:=PSpecPrintss.Fac1.Caption+main.Edit2.Text;
        PSpecPrintss.Fac2.Caption:=PSpecPrintss.Fac2.Caption+main.Edit2.Text;
        PSpecPrintss.Fac3.Caption:=PSpecPrintss.Fac3.Caption+main.Edit2.Text;
        try
          // 圖片加載不論是否成功都要打印
          shoePic:=PSpecPrintss.TitleMemo.fieldbyname('IMGName').AsString  ;
          if FileExists(shoePic)=true then
          begin
            PSpecPrintss.QRImage1.Picture.LoadFromFile(shoePic);
            PSpecPrintss.QRImage2.Picture.LoadFromFile(shoePic);
            PSpecPrintss.QRImage3.Picture.LoadFromFile(shoePic);
          end else
          begin
            shoePic:=StringReplace(shoePic,'H:',ShoePicPath, [rfReplaceAll, rfIgnoreCase]);
            if FileExists(shoePic)=true then
            begin
              PSpecPrintss.QRImage1.Picture.LoadFromFile(shoePic);
              PSpecPrintss.QRImage2.Picture.LoadFromFile(shoePic);
              PSpecPrintss.QRImage3.Picture.LoadFromFile(shoePic);
            end;
          end;
          //
          PSpecPrintss.QRCompositeReport1.Preview;
        except
          showmessage('No picture of article.');
          PSpecPrintss.QRCompositeReport1.Preview;
        end ;
      end
    else
      begin
        PSPecPrintss_SP:=TPSpecPrintss_SP.create(nil);
        //20150617修改共用Plan N11
        PSPecPrintss_SP.MemoTemp.DataSource:=DS1;
        PSPecPrintss_SP.Titlememo.DataSource:=DS1;
        PSPecPrintss_SP.MemoOth.DataSource:=DS1;
        PSPecPrintss_SP.QMatList.DataSource:=DS1;
        PSPecPrintss_SP.TitleMemo.Active:=true;
        //
        PSpecPrintss_SP.QRCompositeReport1.prepare;
        i:=PSpecPrintss_SP.QuickRep2.QRPrinter.pagecount ;
        PSpecPrintss_SP.PageN1.Caption:='/  '+inttostr(i);
        PSpecPrintss_SP.PageN2.Caption:='/  '+inttostr(i);
        PSpecPrintss_SP.PageN3.Caption:='/  '+inttostr(i);
        PSpecPrintss_SP.Fac1.Caption:=PSpecPrintss_SP.Fac1.Caption+main.Edit2.Text;
        PSpecPrintss_SP.Fac2.Caption:=PSpecPrintss_SP.Fac2.Caption+main.Edit2.Text;
        PSpecPrintss_SP.Fac3.Caption:=PSpecPrintss_SP.Fac3.Caption+main.Edit2.Text;
        try
          // 圖片加載不論是否成功都要打印
          shoePic:=PSpecPrintss_SP.TitleMemo.fieldbyname('IMGName').AsString  ;
          if FileExists(shoePic)=true then
          begin
            PSpecPrintss_SP.QRImage1.Picture.LoadFromFile(shoePic);
            PSpecPrintss_SP.QRImage2.Picture.LoadFromFile(shoePic);
            PSpecPrintss_SP.QRImage3.Picture.LoadFromFile(shoePic);
          end else
          begin
            shoePic:=StringReplace(shoePic,'H:',ShoePicPath, [rfReplaceAll, rfIgnoreCase]);
            if FileExists(shoePic)=true then
            begin
              PSpecPrintss_SP.QRImage1.Picture.LoadFromFile(shoePic);
              PSpecPrintss_SP.QRImage2.Picture.LoadFromFile(shoePic);
              PSpecPrintss_SP.QRImage3.Picture.LoadFromFile(shoePic);
            end;
          end;
          //
          PSpecPrintss_SP.QRCompositeReport1.Preview;
        except
          showmessage('No picture of article.');
          PSpecPrintss_SP.QRCompositeReport1.Preview;
         end ;
      end;
   end
else
    begin
      //showmessage('A');
      PSpecPrintssTW:=TPSpecPrintssTW.create(nil);
      //20150617修改共用Plan N11
      PSpecPrintssTW.MemoTemp.DataSource:=DS1;
      PSpecPrintssTW.Titlememo.DataSource:=DS1;
      PSpecPrintssTW.MemoOth.DataSource:=DS1;
      PSpecPrintssTW.QMatList.DataSource:=DS1;
      PSpecPrintssTW.TitleMemo.Active:=true;
      //      
      PSpecPrintssTW.QRCompositeReport1.prepare;
      i:=PSpecPrintssTW.QuickRep2.QRPrinter.pagecount ;
      PSpecPrintssTW.PageN1.Caption:='/  '+inttostr(i);
      PSpecPrintssTW.PageN2.Caption:='/  '+inttostr(i);
      PSpecPrintssTW.PageN3.Caption:='/  '+inttostr(i);
      PSpecPrintssTW.Fac1.Caption:=PSpecPrintssTW.Fac1.Caption+main.Edit2.Text;
      PSpecPrintssTW.Fac2.Caption:=PSpecPrintssTW.Fac2.Caption+main.Edit2.Text;
      PSpecPrintssTW.Fac3.Caption:=PSpecPrintssTW.Fac3.Caption+main.Edit2.Text;
      try
        // 圖片加載不論是否成功都要打印
        shoePic:=PSpecPrintssTW.TitleMemo.fieldbyname('IMGName').AsString  ;
        if FileExists(shoePic)=true then
        begin
          PSpecPrintssTW.QRImage1.Picture.LoadFromFile(shoePic);
          PSpecPrintssTW.QRImage2.Picture.LoadFromFile(shoePic);
          PSpecPrintssTW.QRImage3.Picture.LoadFromFile(shoePic);
        end else
        begin
          shoePic:=StringReplace(shoePic,'H:',ShoePicPath, [rfReplaceAll, rfIgnoreCase]);
          if FileExists(shoePic)=true then
          begin
            PSpecPrintssTW.QRImage1.Picture.LoadFromFile(shoePic);
            PSpecPrintssTW.QRImage2.Picture.LoadFromFile(shoePic);
            PSpecPrintssTW.QRImage3.Picture.LoadFromFile(shoePic);
          end;
        end;
        PSpecPrintssTW.QRCompositeReport1.Preview;
      except
        showmessage('No picture of article.');
        PSpecPrintssTW.QRCompositeReport1.Preview;
      end;
  end;

end;

procedure TOrderList.N2Click(Sender: TObject);
var PC1,PC2,PC3,a:string;
begin
  SpecMas.Active:=true;
  YWDDTP.Active:=true;
  if (not SpecMas.FieldByName('Packing').isnull) and (not SpecMas.FieldByName('DDMT').isnull) and (not SpecMas.FieldByName('DDBZ').isnull) then
  begin
    OrderPack_Print:=TOrderPack_Print.create(self);
    OrderPack_Print.QRLabel46.Enabled:=true;
    OrderPack_Print.QRLabel47.Enabled:=true;
    OrderPack_Print.QRLabel48.Enabled:=true;

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
    OrderPack_Print.IMGName1.Picture.LoadFromFile(OrderList.SpecMas.fieldbyname('IMGName').AsString);
    OrderPack_Print.IMGName2.Picture.LoadFromFile(OrderList.SpecMas.fieldbyname('IMGName').AsString);
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
          OrderPack_Print.QRLabel46.Enabled:=true;
          OrderPack_Print.QRLabel47.Enabled:=true;
          OrderPack_Print.QRLabel48.Enabled:=true;
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
        OrderPack_Print.IMGName1.Picture.LoadFromFile(OrderList.SpecMas.fieldbyname('IMGName').AsString);
        OrderPack_Print.IMGName2.Picture.LoadFromFile(OrderList.SpecMas.fieldbyname('IMGName').AsString);
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

procedure TOrderList.FormCreate(Sender: TObject);
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
  if main.Edit2.Text='VC2' then
  begin
    BuyNoEdit.Text:='FALL';
  end;
  ReadIni();
end;

procedure TOrderList.N3Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin
  if OrdMas.Active then
  begin
    if OrdMas.recordcount=0 then
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
    eclApp.Cells(1,1):='NO';
    for   i:=1   to   OrdMas.fieldcount   do
    begin
      eclApp.Cells(1,i+1):=OrdMas.fields[i-1].FieldName;
    end;
    OrdMas.First;
    j:=2;
    while   not  OrdMas.Eof   do
      begin
        eclApp.Cells(j,1):=j-1;
        for   i:=1   to   OrdMas.fieldcount   do
        begin
          eclApp.Cells(j,i+1):=OrdMas.Fields[i-1].Value;
        end;
        OrdMas.Next;
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

procedure TOrderList.N4Click(Sender: TObject);
var shoePic:string;
    i:integer;
begin
  if messagedlg('English version?',mtinformation,[mbYes,mbNo],0)=mrYes then
  begin
    if messagedlg('Not show Child materail?',mtinformation,[mbYes,mbNo],0)=mrYes then
      begin
        PSpecPrintss_Price:=TPSpecPrintss_Price.create(nil);
        //20150617修改共用Plan N11
        PSpecPrintss_Price.MemoTemp.DataSource:=DS1;
        PSpecPrintss_Price.Titlememo.DataSource:=DS1;
        PSpecPrintss_Price.MemoOth.DataSource:=DS1;
        PSpecPrintss_Price.QMatList.DataSource:=DS1;
        PSpecPrintss_Price.TitleMemo.Active:=true;
        //
        PSpecPrintss_Price.QRCompositeReport1.prepare;
        i:=PSpecPrintss_Price.QuickRep2.QRPrinter.pagecount ;
        PSpecPrintss_Price.PageN1.Caption:='/  '+inttostr(i);
        PSpecPrintss_Price.PageN2.Caption:='/  '+inttostr(i);
        PSpecPrintss_Price.PageN3.Caption:='/  '+inttostr(i);
        PSpecPrintss_Price.Fac1.Caption:=PSpecPrintss_Price.Fac1.Caption+main.Edit2.Text;
        PSpecPrintss_Price.Fac2.Caption:=PSpecPrintss_Price.Fac2.Caption+main.Edit2.Text;
        PSpecPrintss_Price.Fac3.Caption:=PSpecPrintss_Price.Fac3.Caption+main.Edit2.Text;
        try
          // 圖片加載不論是否成功都要打印
          shoePic:=PSpecPrintss_Price.TitleMemo.fieldbyname('IMGName').AsString  ;
          if FileExists(shoePic)=true then
          begin
            PSpecPrintss_Price.QRImage1.Picture.LoadFromFile(shoePic);
            PSpecPrintss_Price.QRImage2.Picture.LoadFromFile(shoePic);
            PSpecPrintss_Price.QRImage3.Picture.LoadFromFile(shoePic);
          end else
          begin
            shoePic:=StringReplace(shoePic,'H:',ShoePicPath, [rfReplaceAll, rfIgnoreCase]);
            if FileExists(shoePic)=true then
            begin
              PSpecPrintss_Price.QRImage1.Picture.LoadFromFile(shoePic);
              PSpecPrintss_Price.QRImage2.Picture.LoadFromFile(shoePic);
              PSpecPrintss_Price.QRImage3.Picture.LoadFromFile(shoePic);
            end;
          end;
          //
          PSpecPrintss_Price.QRCompositeReport1.Preview;
        except
          showmessage('No picture of article.');
          PSpecPrintss_Price.QRCompositeReport1.Preview;
        end ;
      end
    else
      begin
        PSpecPrintss_SP_Price:=TPSpecPrintss_SP_Price.create(nil);
        //20150617修改共用Plan N11
        PSpecPrintss_SP_Price.MemoTemp.DataSource:=DS1;
        PSpecPrintss_SP_Price.Titlememo.DataSource:=DS1;
        PSpecPrintss_SP_Price.MemoOth.DataSource:=DS1;
        PSpecPrintss_SP_Price.QMatList.DataSource:=DS1;
        PSpecPrintss_SP_Price.TitleMemo.Active:=true;
        //
        PSpecPrintss_SP_Price.QRCompositeReport1.prepare;
        i:=PSpecPrintss_SP_Price.QuickRep2.QRPrinter.pagecount ;
        PSpecPrintss_SP_Price.PageN1.Caption:='/  '+inttostr(i);
        PSpecPrintss_SP_Price.PageN2.Caption:='/  '+inttostr(i);
        PSpecPrintss_SP_Price.PageN3.Caption:='/  '+inttostr(i);
        PSpecPrintss_SP_Price.Fac1.Caption:=PSpecPrintss_SP_Price.Fac1.Caption+main.Edit2.Text;
        PSpecPrintss_SP_Price.Fac2.Caption:=PSpecPrintss_SP_Price.Fac2.Caption+main.Edit2.Text;
        PSpecPrintss_SP_Price.Fac3.Caption:=PSpecPrintss_SP_Price.Fac3.Caption+main.Edit2.Text;
        try
          // 圖片加載不論是否成功都要打印
          shoePic:=PSpecPrintss_SP_Price.TitleMemo.fieldbyname('IMGName').AsString  ;
          if FileExists(shoePic)=true then
          begin
            PSpecPrintss_SP_Price.QRImage1.Picture.LoadFromFile(shoePic);
            PSpecPrintss_SP_Price.QRImage2.Picture.LoadFromFile(shoePic);
            PSpecPrintss_SP_Price.QRImage3.Picture.LoadFromFile(shoePic);
          end else
          begin
            shoePic:=StringReplace(shoePic,'H:',ShoePicPath, [rfReplaceAll, rfIgnoreCase]);
            if FileExists(shoePic)=true then
            begin
              PSpecPrintss_SP_Price.QRImage1.Picture.LoadFromFile(shoePic);
              PSpecPrintss_SP_Price.QRImage2.Picture.LoadFromFile(shoePic);
              PSpecPrintss_SP_Price.QRImage3.Picture.LoadFromFile(shoePic);
            end;
          end;
          //
          PSpecPrintss_SP_Price.QRCompositeReport1.Preview;
        except
          showmessage('No picture of article.');
          PSpecPrintss_SP_Price.QRCompositeReport1.Preview;
         end ;
      end;
   end
else
    begin
      //showmessage('A');
      PSpecPrintssTW_Price:=TPSpecPrintssTW_Price.create(nil);
      //20150617修改共用Plan N11
      PSpecPrintssTW_Price.MemoTemp.DataSource:=DS1;
      PSpecPrintssTW_Price.Titlememo.DataSource:=DS1;
      PSpecPrintssTW_Price.MemoOth.DataSource:=DS1;
      PSpecPrintssTW_Price.QMatList.DataSource:=DS1;
      PSpecPrintssTW_Price.TitleMemo.Active:=true;
      //      
      PSpecPrintssTW_Price.QRCompositeReport1.prepare;
      i:=PSpecPrintssTW_Price.QuickRep2.QRPrinter.pagecount ;
      PSpecPrintssTW_Price.PageN1.Caption:='/  '+inttostr(i);
      PSpecPrintssTW_Price.PageN2.Caption:='/  '+inttostr(i);
      PSpecPrintssTW_Price.PageN3.Caption:='/  '+inttostr(i);
      PSpecPrintssTW_Price.Fac1.Caption:=PSpecPrintssTW_Price.Fac1.Caption+main.Edit2.Text;
      PSpecPrintssTW_Price.Fac2.Caption:=PSpecPrintssTW_Price.Fac2.Caption+main.Edit2.Text;
      PSpecPrintssTW_Price.Fac3.Caption:=PSpecPrintssTW_Price.Fac3.Caption+main.Edit2.Text;
      try
        // 圖片加載不論是否成功都要打印
        shoePic:=PSpecPrintssTW_Price.TitleMemo.fieldbyname('IMGName').AsString  ;
        if FileExists(shoePic)=true then
        begin
          PSpecPrintssTW_Price.QRImage1.Picture.LoadFromFile(shoePic);
          PSpecPrintssTW_Price.QRImage2.Picture.LoadFromFile(shoePic);
          PSpecPrintssTW_Price.QRImage3.Picture.LoadFromFile(shoePic);
        end else
        begin
          shoePic:=StringReplace(shoePic,'H:',ShoePicPath, [rfReplaceAll, rfIgnoreCase]);
          if FileExists(shoePic)=true then
          begin
            PSpecPrintssTW_Price.QRImage1.Picture.LoadFromFile(shoePic);
            PSpecPrintssTW_Price.QRImage2.Picture.LoadFromFile(shoePic);
            PSpecPrintssTW_Price.QRImage3.Picture.LoadFromFile(shoePic);
          end;
        end;
        PSpecPrintssTW_Price.QRCompositeReport1.Preview;
      except
        showmessage('No picture of article.');
        PSpecPrintssTW_Price.QRCompositeReport1.Preview;
      end;
  end;
end;

end.
