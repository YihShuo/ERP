unit BarPrint1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ExtCtrls,dateutils,
  OleCtrls, Printers, RpCon, RpConDS, RpConBDE, RpDefine, RpRave, Buttons,
  ShellApi,menus, ComCtrls, StrUtils, Grids, DBGrids,comobj;

type
  TBarPrint = class(TForm)
    DBGridEh1: TDBGridEh;
    YWDD: TQuery;
    DS1: TDataSource;
    Panel1: TPanel;
    Panel2: TPanel;
    DBGridEh2: TDBGridEh;
    YWDDDDBH: TStringField;
    YWDDArticle: TStringField;
    YWDDXieMing: TStringField;
    YWDDQty: TFloatField;
    YWDDCTS: TIntegerField;
    CartonBar: TQuery;
    UpBar: TUpdateSQL;
    DS2: TDataSource;
    Panel3: TPanel;
    Button3: TButton;
    Button4: TButton;
    Panel4: TPanel;
    Edit4: TEdit;
    Label6: TLabel;
    Edit3: TEdit;
    Label5: TLabel;
    Label3: TLabel;
    bbt5: TBitBtn;
    Button2: TButton;
    CartonBarCARTONBAR: TStringField;
    CartonBarDDBH: TStringField;
    CartonBarCARTONNO: TIntegerField;
    CartonBarXH: TStringField;
    CartonBarQty: TIntegerField;
    CartonBarSB: TStringField;
    CartonBarINCS: TSmallintField;
    CartonBarINDATE: TDateTimeField;
    CartonBarOUTCS: TSmallintField;
    CartonBarOUTDATE: TDateTimeField;
    CartonBarINSPECTCS: TIntegerField;
    CartonBarINSPECTDATE: TDateTimeField;
    CartonBarEXEDATE: TDateTimeField;
    CartonBarMEMO: TStringField;
    CartonBarUSERID: TStringField;
    CartonBarUSERDATE: TDateTimeField;
    CartonBarYN: TStringField;
    PopupMenu1: TPopupMenu;
    Delete1: TMenuItem;
    Qtemp: TQuery;
    YWBZPOS: TQuery;
    YWDDSB: TStringField;
    YWBZPOS2: TQuery;
    Modify1: TMenuItem;
    YWDDokQty: TIntegerField;
    CartonBarsgw: TFloatField;
    Button5: TButton;
    recc: TQuery;
    Button6: TButton;
    Ad_Packing: TQuery;
    Ad_PackingS: TQuery;
    DS_Packing: TDataSource;
    bbt6: TBitBtn;
    CartonBarLPNBarCode: TStringField;
    Panel5: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label4: TLabel;
    Label7: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    PackingStyleCB: TComboBox;
    BgWeight: TEdit;
    Edit5: TEdit;
    YWDDKHPO: TStringField;
    Memo1: TMemo;
    CartonBarKHDDBH1: TStringField;
    CartonBarKHPO: TStringField;
    N1: TMenuItem;
    Excel1: TMenuItem;
    DefaultPCK: TCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure bbt5Click(Sender: TObject);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure Edit4KeyPress(Sender: TObject; var Key: Char);
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure CartonBarAfterOpen(DataSet: TDataSet);
    procedure Button3Click(Sender: TObject);
    procedure DBGridEh2GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure Delete1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Modify1Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure PackingStyleCBChange(Sender: TObject);
    procedure bbt6Click(Sender: TObject);
    procedure Excel1Click(Sender: TObject);
  private
    PerBgWeight:double;
    { Private declarations }
    function GetWeightQry():boolean;
    function CheckBgWeigth():boolean; //檢查輸入手提袋重量
    procedure ShowWeightInfo(DDBH,XH:string);
    procedure Adidas_PackingPrint();
  public
    { Public declarations }
  end;

var
  BarPrint: TBarPrint;
  sdate,edate,NDate:Tdate;

implementation

uses main1,FunUnit;

{$R *.dfm}

procedure TBarPrint.FormClose(Sender: TObject; var Action: TCloseAction);
begin
action:=cafree;

end;

procedure TBarPrint.FormDestroy(Sender: TObject);
begin
BarPrint:=nil;
end;

procedure TBarPrint.Button1Click(Sender: TObject);
begin


  sdate:=DTP1.Date;
  edate:=DTP2.Date;

  with YWDD do
  begin
    active:=false;
    sql.clear;
    sql.add('select YSBH as DDBH,KHPO,Article,XieMing,SUM(Qty) as Qty,SUM(CTS) as CTS,MAX(SB) as SB,SUM(okQty) as OkQty from ( ');
    sql.add('select YWDD.YSBH,YWDD.DDBH,DDZL.KHPO,XXZL.Article,XXZL.XieMing,YWDD.Qty,YWBZPOS.CTS, ');
    sql.add('        (select top 1 isnull(SB,0) SB from YWCP where YWCP.DDBH=YWDD.DDBH  order by SB DESC) as SB ,');
    sql.add('        (select sum(qty) from YWCP where YWCP.DDBH=YWDD.DDBH  group by ddbh) as okQty ');
    sql.add('from YWDD');
    sql.add('left join DDZL on YWDD.YSBH=DDZl.DDBH');
    sql.add('left join XXZL  on DDZL.XieXing=XXZL.XieXing and DDZL.SheHao=XXZL.SheHao  ');
    sql.add('left join (select YWBZPOS.DDBH,sum(YWBZPOS.CTS) as CTS');
    sql.add('           from (select distinct YWBZPOS.DDBH,YWBZPOS.XH,YWBZPOS.CTS from YWBZPOS');
    sql.add('                 left join YWDD on YWDD.DDBH=YWBZPOS.DDBH ');
    sql.add('                 where YWDD.YSBH like '''+edit1.Text+'%'') YWBZPOS ');
    sql.add('                 group by YWBZPOS.DDBH) YWBZPOS on YWBZPOS.DDBH=YWDD.DDBH');
    //sql.add('left join (select top 1 DDBH ,isnull(SB,0) SB from YWCP  order by SB DESC) YWCP on YWCP.DDBH=YWDD.DDBH ');
    sql.add('where DDZL.DDBH like '+''''+edit1.Text+'%'+'''');
    sql.add('      and DDZL.KHPO like '+''''+'%'+edit5.text+'%'+'''');
    sql.add('      and XXZL.article like '+''''+'%'+edit2.text+'%'+'''');
    sql.add('      and convert(smalldatetime,convert(varchar,YWDD.ETD,111)) between ');
    sql.add('      '''+formatdatetime('yyyy/MM/dd',sdate)+''''+'and '+''''+formatdatetime('yyyy/MM/dd',edate)+'''');
    sql.add('      and YWDD.GSBH='+''''+main.Edit2.Text+'''');
    sql.add('      and YWBZPOS.DDBH is not null ) YWDD ');
    sql.add('Group by YSBH,KHPO,Article,XieMing  ');
    sql.add('order by DDBH');
    //memo2.Text:=sql.Text;
    //funcobj.WriteErrorLog(sql.Text);
    active:=true;
    if recordcount>0 then
      begin
        Panel3.Visible:=true;
        panel4.Visible:=true;
        cartonbar.Active:=true;
      end;
  end;

end;

procedure TBarPrint.bbt5Click(Sender: TObject);
var f:textfile;
    sline1:string;
    fl:THandle;
    barcodeTxtName,cartonbarBtxName:string;
begin
  if DefaultPCK.Checked=true then
  begin
    barcodeTxtName:='barcode.txt';
    cartonbarBtxName:='cartonbar.btw'
  end else
  begin
    barcodeTxtName:='barcode2code.txt';
    cartonbarBtxName:='cartonbar2code.btw'
  end;
  if messagedlg('Print Label Carton or QC Code?',mtinformation,[mbYes,mbNo],0)=mrYes then
  begin
    if fileexists(extractfilepath(application.ExeName)+'\'+barcodeTxtName) then
    begin
      assignfile(f,ExtractFilePath(Application.ExeName)+barcodeTxtName);
      rewrite(f);
      cartonbar.first;
      if DefaultPCK.Checked=true then
      begin
        while not cartonbar.eof do
        begin
          sline1:=cartonbar.fieldbyname('CartonBar').value;
          append(f);
          writeln(f, sline1);
          cartonbar.next;
        end;
      end else
      begin
        while not cartonbar.eof do
        begin
          sline1:=cartonbar.fieldbyname('CartonBar').value;
          cartonbar.next;
          sline1:=sline1+','+cartonbar.fieldbyname('CartonBar').value;
          cartonbar.next;
          append(f);
          writeln(f, sline1);
          //
        end;
      end;
      closefile(f);
    end ;
    if fileexists(extractfilepath(application.ExeName)+cartonbarBtxName) then
    begin
      ShellExecute(Handle,'open',PChar(ExtractFilePath(Application.ExeName)+cartonbarBtxName),nil,pchar(ExtractFilePath(Application.ExeName)),SW_SHOW);
      //close;
    end else
    begin
        showmessage('Pls setup the program first. Abort');
    end;
   //
  end else
  begin
    if fileexists(extractfilepath(application.ExeName)+'\barcode.txt') then
    begin
      assignfile(f,ExtractFilePath(Application.ExeName)+'barcode.txt');
      rewrite(f);
      cartonbar.first;
      while not cartonbar.eof do
      begin
          sline1:=cartonbar.fieldbyname('CartonBar').value;
          append(f);
          writeln(f, sline1);
          cartonbar.next;
      end;
      closefile(f);
    end ;
    if fileexists(extractfilepath(application.ExeName)+'cartonbar_QRCode.btw') then
    begin
      ShellExecute(Handle,'open',PChar(ExtractFilePath(Application.ExeName)+'cartonbar_QRCode.btw'),nil,pchar(ExtractFilePath(Application.ExeName)),SW_SHOW);
      //close;
    end else
    begin
        showmessage('Pls setup the program first. Abort');
    end;
  end;
end;
//20141006 Adidas 麥頭資訊列印條碼標(尚未申請需求單先不上)
procedure TBarPrint.Adidas_PackingPrint();
var writeFile:textfile;
    PackingInfo:string;
    Size,Quantity:string;
    i:integer;
begin
  //
  if Fileexists(extractfilepath(application.ExeName)+'\Cartonbar_Adidas.txt') then
  begin
    //Adidas 麥頭資訊
    Ad_Packing.Active:=true;
    Ad_PackingS.Active:=true;
    //
    assignfile(writeFile,ExtractFilePath(Application.ExeName)+'Cartonbar_Adidas.txt');
    rewrite(writeFile);
    cartonbar.first;
    while not cartonbar.eof do
      begin
        //
        PackingInfo:='';
        PackingInfo:=PackingInfo+trim(Ad_Packing.fieldByName('Cartonbar').AsString)+',';
        PackingInfo:=PackingInfo+trim(Ad_Packing.fieldByName('KHDDBH1').AsString)+',';
        PackingInfo:=PackingInfo+trim(Ad_Packing.fieldByName('KHPO').AsString)+',';
        PackingInfo:=PackingInfo+trim(Ad_Packing.fieldByName('Article').AsString)+',';
        //Size 和 Quantity 數量
        Size:='';
        Quantity:='';
        for i:=1 to Ad_PackingS.RecordCount do
        begin
          Size:=Size+Ad_PackingS.FieldByName('DDCC').AsString+'  ';
          Quantity:=Quantity+Ad_PackingS.FieldByName('Qty').AsString+'  ';
          Ad_PackingS.Next;
        end;
        PackingInfo:=PackingInfo+trim(Size)+',';
        PackingInfo:=PackingInfo+trim(Quantity)+'';
        append(writeFile);
        writeln(writeFile, PackingInfo);
        //
        cartonbar.next;
      end;
    closefile(writeFile);
    //Adidas 麥頭資訊
    Ad_Packing.Active:=false;
    Ad_PackingS.Active:=false;
  end;
  //
  if fileexists(extractfilepath(application.ExeName)+'Cartonbar_Adidas.btw') then
  begin
    ShellExecute(Handle,'open',PChar(ExtractFilePath(Application.ExeName)+'Cartonbar_Adidas.btw'),nil,pchar(ExtractFilePath(Application.ExeName)),SW_SHOW);
    //close;
  end
  else  begin
    Showmessage('Pls setup the program first. Abort');
  end;
  //
end;
//
procedure TBarPrint.Edit3KeyPress(Sender: TObject; var Key: Char);
begin

if  not (Key in ['0'..'9',#8,#13]) then
   Key := #0;
end;

procedure TBarPrint.Edit4KeyPress(Sender: TObject; var Key: Char);
begin

if  not (Key in ['0'..'9',#8,#13]) then
   Key := #0;
end;

procedure TBarPrint.Button2Click(Sender: TObject);
var n:integer;
    a:string;
begin

  with cartonbar do
  begin
    if recordcount=0 then
    begin
        showmessage('Pls send carton barcode from order packing list.');
        abort;
      end;
    Last;
    if (strtoint(edit3.text)<=fieldbyname('CartonNO').value) then
    begin
        showmessage('Pls key in right data first.');
        edit3.SetFocus;
        abort;
      end;
    if edit4.text<edit3.Text then
    begin
        showmessage('Pls key in right data first.');
        edit4.SetFocus;
        abort;
    end;
    n:=strtoint(edit3.Text);
    while n<=strtoint(edit4.Text) do
    begin
        a:=inttostr(n);
        while length(a)<4 do
        begin
            a:='0'+a;
        end;
        with YWBZPOS2 do
        begin
            active:=false;
            sql.Clear;
            sql.add('select DDBH,XH,sum(Qty) as Qty,CTS,CTQ,CTZ  ');
            sql.add('from YWBZPOS');
            sql.add('where DDBH=:DDBH ');
            sql.add('      and CTQ<='+a);
            sql.add('      and CTZ>='+a);
            sql.add('group by DDBH,XH,CTS,CTQ,CTZ  ');
            sql.add('order by XH');
            active:=true;
        end;
        insert;
        fieldbyname('CartonBar').value:=YWDD.fieldbyname('DDBH').Value+' '+a;
        fieldbyname('DDBH').value:= YWDD.fieldbyname('DDBH').Value;
        fieldbyname('CartonNO').value:=n;
        fieldbyname('XH').value:=YWBZPOS2.fieldbyname('XH').Value;
        fieldbyname('Qty').value:= YWBZPOS2.fieldbyname('Qty').Value;
        fieldbyname('USERID').value:=main.Edit1.text;
        fieldbyname('USERDATE').value:=date;
        fieldbyname('YN').value:='1';
        post;
        UpBar.Apply(ukinsert);
        n:=n+1;
    end;
  end;
end;

procedure TBarPrint.Button4Click(Sender: TObject);
begin
  if messagedlg('You really want to delete all carton barcode?',mtinformation,[mbYes,mbNo],0)=mrYes then
  begin
    cartonbar.Active:=false;
    with Qtemp do
      begin
        active:=false;
        sql.clear;
        sql.add('select DDBH from YWCP ');
        sql.add('where DDBH='+''''+YWDD.FieldByName('DDBH').Value+'''');
        sql.add('      and SB is not null ');
        active:=true;
        if recordcount=0 then
          begin
            active:=false;
            sql.Clear;
            sql.add('delete YWCP ');
            sql.add('where DDBH='+''''+YWDD.FieldByName('DDBH').Value+'''');
            execsql;
            cartonbar.Active:=true;
          end
          else
            begin
              showmessage(' 請注意，成品已入庫.' +#13+'Pls pay attention, already produced');
              abort;
            end;
      end;
  end;
end;

procedure TBarPrint.CartonBarAfterOpen(DataSet: TDataSet);
begin

  edit3.Text:='';
  edit4.Text:='';
  if cartonbar.recordcount>0 then
  begin
    bbt5.Enabled:=true;
    bbt6.Enabled:=true;
  end else
  begin
    bbt5.Enabled:=false;
    bbt6.Enabled:=false;
  end;

end;

procedure TBarPrint.Button3Click(Sender: TObject);
var i,n,CTQ,CTZ:integer;
    a:string;
begin

  if cartonbar.recordcount>0 then
  begin
    showmessage('Already send. if you want to send again,pls delete first.');
    abort;
  end;
  with Cartonbar do
  begin
    YWBZPOS.Active:=true;

    // ZSVN 的訂單號 , 若箱數大於 1000 , 則無法列印外箱條碼
    if ( LeftStr( YWBZPOS.fieldbyname('DDBH').Value, 4 ) = 'ZSVN' ) then
    begin
      while not YWBZPOS.Eof do
      begin
        if YWBZPOS.fieldbyname('CTZ').Value >= 1000 then
        begin
          showmessage('the barCode is too long . Please inform IT . ');
          abort;
        end;
        YWBZPOS.next;
      end;
    end;
    //recc.Active:=true;
    YWBZPOS.first;
    while not YWBZPOS.Eof do
      begin
        CTQ:=YWBZPOS.fieldbyname('CTQ').Value;
        CTZ:=YWBZPOS.fieldbyname('CTZ').Value;
        for i:=0 to CTZ-CTQ do
          begin
            a:=inttostr(i+CTQ);

            //  一般訂單的箱號有 4 碼 , ZSVN 的箱號只有 3 碼
            if ( LeftStr( YWBZPOS.fieldbyname('DDBH').Value, 4 ) = 'ZSVN' ) then
              while length(a)<3 do
              begin
                a:='0'+a;
              end
            else
              while length(a)<4 do
              begin
                a:='0'+a;
              end;

            insert;
            fieldbyname('CartonBar').value:=YWBZPOS.fieldbyname('DDBH').Value+' '+a;
            fieldbyname('DDBH').value:= YWBZPOS.fieldbyname('DDBH').Value;
            fieldbyname('CartonNO').value:=i+CTQ;
            fieldbyname('XH').value:=YWBZPOS.fieldbyname('XH').Value;
            fieldbyname('Qty').value:= YWBZPOS.fieldbyname('Qty').Value;
            fieldbyname('USERID').value:=main.Edit1.text;
            fieldbyname('USERDATE').value:=date;
            fieldbyname('YN').value:='1';
            post;
            //edit;
            //fieldbyname('sgw').Value:=recc.fieldbyname('nweigh').Value+recc.fieldbyname('oweigh').Value;
            //post;
            UpBar.Apply(ukinsert);
          end;
        YWBZPOS.Next;
      end;
    YWBZPOS.Active:=false;
    active:=false;
    active:=true;
  end;

end;

procedure TBarPrint.DBGridEh2GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin

if not YWDD.fieldbyname('SB').isnull then
    DBGrideh2.canvas.Font.Color:=clBlue;
if ( YWDD.fieldbyname('Qty').Value <> YWDD.fieldbyname('okQty').Value ) and ( not YWDD.fieldbyname('okQty').isnull ) then
    DBGrideh2.canvas.Font.Color:=clRed;
end;

procedure TBarPrint.Delete1Click(Sender: TObject);
begin
if CartonBar.recordcount>0  then
  begin
    if not CartonBar.FieldByName('SB').IsNull then
      begin
        {if messagedlg('Already produce . Really delete?',mtinformation,[mbYes,mbNo],0)=mrYes then
          begin
            Upbar.Apply(ukdelete);
            CartonBar.Active:=false;
            CartonBar.Active:=true;
          end
          else}
          showmessage('Already produced, can not delete one carton.');
            abort;
      end
      else
        begin
          Upbar.Apply(ukdelete);
          CartonBar.Active:=false;
          CartonBar.Active:=true;
        end;
  end;
end;

procedure TBarPrint.FormCreate(Sender: TObject);
begin
  with Qtemp do
  begin 
    active:=false;
    sql.Clear;
    sql.add('select getdate() as NDate');
    active:=true;
    NDate:=fieldbyname('NDate').Value;
    active:=false;
  end;
  DTP1.date:=startofthemonth(incmonth(NDate,1))+5;
  DTP2.date:=startofthemonth(incmonth(NDate,2))+4;
end;

procedure TBarPrint.Modify1Click(Sender: TObject);
begin

if CartonBar.recordcount>0  then
  begin
    if not CartonBar.FieldByName('SB').IsNull then
      begin
        {if messagedlg('Already produce . Really delete?',mtinformation,[mbYes,mbNo],0)=mrYes then
          begin
            Upbar.Apply(ukdelete);
            CartonBar.Active:=false;
            CartonBar.Active:=true;
          end
          else}
          showmessage('Already produced, can not modify the carton.');
            abort;
      end
      else
        begin
          Upbar.Apply(ukmodify);
          CartonBar.Active:=false;
          CartonBar.Active:=true;
        end;
  end;
end;

procedure TBarPrint.Button5Click(Sender: TObject);
var i,n,CTQ,CTZ:integer;
   a:string;
begin
  //
  if CheckBgWeigth()=false then
  begin
     Showmessage('please input exact bag weight!');
     abort;
  end;
  //
  if cartonbar.recordcount=0 then
    begin
      showmessage('No Cartonbar. Creat carton barcode first.');
      abort;
  end;
  //
  with Cartonbar do
    begin
      first;
      while not Eof do
      begin
        //取得鞋型重量輕單
        if GetWeightQry()=false then break;

        if recc.RecordCount> 0 then
        begin
          edit;
          fieldbyname('USERID').value:=main.Edit1.text;
          fieldbyname('USERDATE').value:=date;
          fieldbyname('sgw').Value:=recc.fieldbyname('nweigh').Value+recc.fieldbyname('oweigh').Value;
          post;
          UpBar.Apply(ukmodify);
        end;
        Next;
      end;
      active:=false;
      active:=true;
    end;

end;
//檢查手提袋輸入重量
function TBarPrint.CheckBgWeigth():boolean;
begin
  //
  result:=true;
  try
    PerBgWeight:=strtofloat(BgWeight.Text);
  except
    result:=false;
  end;

  //
end;
//取得鞋子重量
function TBarPrint.GetWeightQry():boolean;
var iRes:boolean;
    msg:string;
begin
   iRes:=true;
   //檢查是否鞋型尺寸未輸入
   with recc do
   begin
      active:=false;
      sql.clear;
      sql.Add('select ywbzpos.ddCC');
      sql.Add('    from ywbzpos ');
      sql.Add('left join YWDD on YWDD.ddbh=ywbzpos.ddbh ');
      sql.Add('left join ddzl on ddzl.ddbh=YWDD.YSBH ');
      sql.Add('left join YWXXNew on YWXXNew.XieXing=ddzl.XieXIng and YWXXNew.SheHao=DDZL.SheHao and YWXXNew.XXCC=ywbzpos.ddCC');
      sql.Add('left join ywbzpo on ywbzpo.ddbh=ywbzpos.ddbh and ywbzpo.xh=ywbzpos.xh ');
      sql.Add('left join ywwx2 on ywbzpo.clbh=ywwx2.clbh ');
      sql.Add('where YWBZPO.DDBH='''+CartonBar.FieldByName('DDBH').AsString+'''  and YWBZPO.xh='''+CartonBar.FieldByName('xh').AsString+'''');
      sql.Add('and YWXXNew.XXCC is null ');
      active:=true;
   end;
   if recc.RecordCount>0 then
   begin
     iRes:=false;
     recc.First;
     while not recc.Eof do
     begin
       msg:=msg+recc.FieldByName('ddCC').AsString+',';
       recc.Next;
     end;
     msg:=copy(msg,1,length(msg)-1);
     Showmessage('Khong co trong luong size:'+msg);
     exit;
   end;
   //取得鞋型標準重量
   with recc do
   begin
      active:=false;
      sql.clear;
      sql.Add('select ddzl.ddbh,ywbzpos.xh');
      //計算重量加總 內盒+鞋子淨重 , 鞋子淨重+塑膠套(0g)
      if PackingStyleCB.itemindex = 0 then  //鞋淨重+內盒
        sql.Add('       ,sum((isnull(YWXXNew.nweigh,0)+isnull(YWXXNew.oweigh,0))*ywbzpos.qty) as nweigh');
      if PackingStyleCB.itemindex = 1 then //只算鞋淨重
        sql.Add('       ,sum((isnull(YWXXNew.nweigh,0))*ywbzpos.qty) as nweigh');
      if PackingStyleCB.itemindex = 2 then //只算鞋淨重+隔版
        sql.Add('       ,(sum(isnull(YWXXNew.nweigh,0) *ywbzpos.qty)+('+floattostr(PerBgWeight)+')) as nweigh'); //((0.223*2)+0.094))
      if ((PackingStyleCB.itemindex = 3) or (PackingStyleCB.itemindex = 4)) then //361訂單外盒+手提袋
        sql.Add('       ,sum((isnull(YWXXNew.nweigh,0)+isnull(YWXXNew.oweigh,0)+'+floattostr(PerBgWeight)+')*ywbzpos.qty) as nweigh');

      //
      sql.Add('       ,ywbzpo.clbh,ywwx2.oweigh from ywbzpos ');
      sql.Add('left join YWDD on YWDD.ddbh=ywbzpos.ddbh ');
      sql.Add('left join ddzl on ddzl.ddbh=YWDD.YSBH ');
      sql.Add('left join YWXXNew on YWXXNew.XieXing=ddzl.XieXIng and YWXXNew.SheHao=DDZL.SheHao and YWXXNew.XXCC=ywbzpos.ddCC');
      sql.Add('left join ywbzpo on ywbzpo.ddbh=ywbzpos.ddbh and ywbzpo.xh=ywbzpos.xh ');
      sql.Add('left join ywwx2 on ywbzpo.clbh=ywwx2.clbh ');
      sql.Add('where YWBZPO.DDBH='''+CartonBar.FieldByName('DDBH').AsString+'''  and YWBZPO.xh='''+CartonBar.FieldByName('xh').AsString+'''');
      sql.Add('group by ddzl.ddbh,ywbzpos.xh,ywbzpo.clbh,ywwx2.oweigh ');
      active:=true;
   end;
   //回傳
   result:=iRes;
end;
//
procedure TBarPrint.Button6Click(Sender: TObject);
var i,n,CTQ,CTZ:integer;
   a:string;
begin
   if CheckBgWeigth()=false then
   begin
     Showmessage('please input exact bag weight!');
     exit;
   end;
   //
   ywdd.First;
   while not ywdd.Eof do
   begin
    if cartonbar.recordcount=0 then
    begin
      showmessage('No Cartonbar. Creat carton barcode first.');
      abort;
    end;
    //
    with Cartonbar do
    begin
    first;
      while not Eof do
      begin
        //取得鞋型重量輕單
        if GetWeightQry()=false then break;
        if recc.RecordCount> 0 then
        begin
          edit;
          fieldbyname('USERID').value:=main.Edit1.text;
          fieldbyname('USERDATE').value:=date;
          fieldbyname('sgw').Value:=recc.fieldbyname('nweigh').Value+recc.fieldbyname('oweigh').Value;
          post;
          UpBar.Apply(ukmodify);
        end;
        Next;
      end;
      active:=false;
      active:=true;
      Application.ProcessMessages;
   end;
   ywdd.Next;
   //
end;
end;
//現場測試用
procedure TBarPrint.ShowWeightInfo(DDBH,XH:string);
var msg:string;
begin
   //檢查是否鞋型尺寸未輸入
   with recc do
   begin
      active:=false;
      sql.clear;
      sql.Add('select ywbzpos.ddCC,YWXXNew.XXCC,YWXXNew.nweigh,YWXXNew.oweigh,ywbzpos.qty');
      sql.Add('    from ywbzpos ');
      sql.Add('left join YWDD on YWDD.ddbh=ywbzpos.ddbh ');
      sql.Add('left join ddzl on ddzl.ddbh=YWDD.YSBH ');
      sql.Add('left join YWXXNew on YWXXNew.XieXing=ddzl.XieXIng and YWXXNew.SheHao=DDZL.SheHao and YWXXNew.XXCC=ywbzpos.ddCC');
      sql.Add('left join ywbzpo on ywbzpo.ddbh=ywbzpos.ddbh and ywbzpo.xh=ywbzpos.xh ');
      sql.Add('left join ywwx2 on ywbzpo.clbh=ywwx2.clbh ');
      sql.Add('where YWBZPO.DDBH='''+DDBH+'''  and YWBZPO.xh='''+XH+'''');
      //funcObj.WriteErrorLog(sql.Text);
      active:=true;
   end;
   if recc.RecordCount>0 then
   begin
     recc.First;
     msg:='Size Run List =>'+#13#10;
     msg:='DDCC,XXCC,NWeight,OWeight,Qty'+#13#10;
     while not recc.Eof do
     begin
       msg:=msg+'['+recc.FieldByName('ddCC').AsString+'],['+recc.FieldByName('XXCC').AsString+'],['+recc.FieldByName('nweigh').AsString+'],['+recc.FieldByName('oweigh').AsString+'],['+recc.FieldByName('qty').AsString+']'+#13#10;
       recc.Next;
     end;
     //funcObj.WriteErrorLog(datetimetostr(now)+' '+#13#10+msg);
   end;
   //取得鞋型標準重量
   with recc do
   begin
      active:=false;
      sql.clear;
      sql.Add('select ddzl.ddbh,ywbzpos.xh');
      //計算重量加總 內盒+鞋子淨重 , 鞋子淨重+塑膠套(0g)
      if PackingStyleCB.itemindex = 0 then  //鞋淨重+內盒
        sql.Add('       ,sum((isnull(YWXXNew.nweigh,0)+isnull(YWXXNew.oweigh,0))*ywbzpos.qty) as nweigh');
      if PackingStyleCB.itemindex = 1 then //只算鞋淨重
        sql.Add('       ,sum((isnull(YWXXNew.nweigh,0))*ywbzpos.qty) as nweigh');
      if PackingStyleCB.itemindex = 2 then //只算鞋淨重+隔版
        sql.Add('       ,(sum(isnull(YWXXNew.nweigh,0) *ywbzpos.qty)+('+floattostr(PerBgWeight)+'))  as nweigh');  //(0.223*2)+0.094
      if ((PackingStyleCB.itemindex = 3) or (PackingStyleCB.itemindex = 4)) then //361訂單外盒+手提袋
        sql.Add('       ,sum((isnull(YWXXNew.nweigh,0)+isnull(YWXXNew.oweigh,0)+'+floattostr(PerBgWeight)+')*ywbzpos.qty) as nweigh');
      //
      sql.Add('       ,ywbzpo.clbh,ywwx2.oweigh from ywbzpos ');
      sql.Add('left join YWDD on YWDD.ddbh=ywbzpos.ddbh ');
      sql.Add('left join ddzl on ddzl.ddbh=YWDD.YSBH ');
      sql.Add('left join YWXXNew on YWXXNew.XieXing=ddzl.XieXIng and YWXXNew.SheHao=DDZL.SheHao and YWXXNew.XXCC=ywbzpos.ddCC');
      sql.Add('left join ywbzpo on ywbzpo.ddbh=ywbzpos.ddbh and ywbzpo.xh=ywbzpos.xh ');
      sql.Add('left join ywwx2 on ywbzpo.clbh=ywwx2.clbh ');
      sql.Add('where YWBZPO.DDBH='''+DDBH+'''  and YWBZPO.xh='''+XH+'''');
      sql.Add('group by ddzl.ddbh,ywbzpos.xh,ywbzpo.clbh,ywwx2.oweigh ');
      //funcObj.WriteErrorLog(sql.Text);
      active:=true;
   end;
   if recc.RecordCount>0 then
   begin
     recc.First;
     msg:='Size Calculation: =>'+#13#10;
     msg:=msg+'Sum(Nweight),OWeigtht: =>'+#13#10;
     while not recc.Eof do
     begin
       msg:=msg+'['+recc.FieldByName('nweigh').AsString+'],['+recc.FieldByName('oweigh').AsString+']';
       recc.Next;
     end;
     msg:=msg+'Total:'+floattostr(recc.fieldbyname('nweigh').Value+recc.fieldbyname('oweigh').Value);
     //funcObj.WriteErrorLog(datetimetostr(now)+' '+#13#10+msg);
   end;
end;

procedure TBarPrint.DBGridEh1DblClick(Sender: TObject);
begin
  ShowWeightInfo(CartonBar.FieldByName('DDBH').AsString,CartonBar.FieldByName('XH').AsString);
end;

procedure TBarPrint.PackingStyleCBChange(Sender: TObject);
begin
  if PackingStyleCB.ItemIndex>=2 then
  begin
    if PackingStyleCB.ItemIndex=2 then  BgWeight.Text:='0.54';
    if PackingStyleCB.ItemIndex=3 then  BgWeight.Text:='0.06';
    if PackingStyleCB.ItemIndex=4 then  BgWeight.Text:='0.04';
    BgWeight.Visible:=true
  end else
  begin
    BgWeight.Visible:=false;
  end;
end;

procedure TBarPrint.bbt6Click(Sender: TObject);
begin
  Adidas_PackingPrint();
end;

procedure TBarPrint.Excel1Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin
    if  CartonBar.active  then
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
      for   i:=0   to   CartonBar.fieldCount-1   do
        begin
            eclApp.Cells(1,i+1):=CartonBar.fields[i].FieldName;
        end;
      CartonBar.First;
      j:=2;
      while   not   CartonBar.Eof   do
      begin
          for   i:=0   to   CartonBar.FieldCount-1   do
            begin
              eclApp.Cells(j,i+1):=CartonBar.Fields[i].Value;
            end;
          CartonBar.Next;
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

end.
