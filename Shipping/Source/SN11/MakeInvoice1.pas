unit MakeInvoice1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Menus, GridsEh, DBGridEh, ComCtrls, Buttons,
  StdCtrls, ExtCtrls,StrUtils,ComObj,NumberToWords,IniFiles;

type
  TMakeInvoice = class(TForm)
    Panel3: TPanel;
    GroupBox1: TGroupBox;
    Label6: TLabel;
    SpeedButton2: TSpeedButton;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label2: TLabel;
    INV_NOEdit: TEdit;
    MakeDatePicker: TDateTimePicker;
    FROM_WHEREComBo: TComboBox;
    TO_WHEREComBo: TComboBox;
    SHIP_BYCombo: TComboBox;
    RISKCombo: TComboBox;
    MakeInvoice_Btn: TButton;
    Button2: TButton;
    cbo_Currency: TComboBox;
    Panel1: TPanel;
    DBGridEh1: TDBGridEh;
    Query1: TQuery;
    Query1RY: TStringField;
    Query1StyleName: TStringField;
    Query1PO: TStringField;
    Query1CustOrdNo: TStringField;
    Query1Article: TStringField;
    Query1CustID: TStringField;
    DataSource1: TDataSource;
    UpdateSQL1: TUpdateSQL;
    qry_tmp1: TQuery;
    qry_tmp2: TQuery;
    qry_tmp3: TQuery;
    INV_Query: TQuery;
    INV_QueryMaxNum: TIntegerField;
    Query1STATUS: TStringField;
    Query1Pairs: TFloatField;
    Query1VNPrice: TCurrencyField;
    EditPanel: TPanel;
    BB1: TBitBtn;
    BB2: TBitBtn;
    BB3: TBitBtn;
    qrytemp: TQuery;
    cboBrand: TComboBox;
    Label1: TLabel;
    BB4: TBitBtn;
    Query1YSBH: TStringField;
    Splitter1: TSplitter;
    Label3: TLabel;
    RefEdit: TEdit;
    IDEdit: TEdit;
    Label4: TLabel;
    PR: TCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure MakeInvoice_BtnClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure BB2Click(Sender: TObject);
    procedure BB1Click(Sender: TObject);
    procedure BB3Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure INV_NOEditChange(Sender: TObject);
    procedure TO_WHEREComBoChange(Sender: TObject);
  private
    gsywqm:string;
    ComFullName:String;
    Factory:String;
    MakeINV_NO,MakeINV_Factory,MakeINV_YEAR,MakeINV_Brand:string;
    { Private declarations }
    procedure MakeInvoice_No();
    function Brand_GetCodeID(Str:string):String;
    function CodeID_GetBrand(ID:string):String;

    procedure ReadIni();
  public
    { Public declarations }
    function GetPartID(Str:string):String;
    function GetBrandName(Str:string):String;

  end;

var
  MakeInvoice: TMakeInvoice;
  S_InvNo:string;
implementation
   uses main1, Invoice_SelectOrder1, FunUnit;
{$R *.dfm}


procedure TMakeInvoice.ReadIni();
var MyIni :Tinifile;
    AppDir,DBIP,DBUser,DBPass,DBName:string;
begin
  ComFullName:='VINH LONG FOOTWEAR CO., LTD';
  Factory:='TX';
  AppDir:=ExtractFilePath(Application.ExeName);
  if FileExists(AppDir+'\ComName.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ComName.ini');
      ComFullName:=MyIni.ReadString('ERP','ComFullName','');
      Factory:=MyIni.ReadString('ERP','Shipping_N11_Factory','');
    finally
      MyIni.Free;
    end;
  end;
end;

function TMakeInvoice.GetPartID(Str:string):String;
begin
  result:=Copy(Str,Pos('-',Str)+1,Length(Str));
end;
function TMakeInvoice.GetBrandName(Str:string):String;
begin
  result:=Copy(Str,1,Pos('-',Str)-1);
end;
//==============================================
procedure TMakeInvoice.FormCreate(Sender: TObject);
var textvar:textfile;
    sline:string;
begin
   ReadIni();
   with qrytemp do
   begin
     Active:=false;
     SQL.Clear;
     SQL.add('select Memo from ShipCountry group by Memo ');
     Active:=true;
     First;
     TO_WHEREComBo.Items.Clear;
     while not Eof do
     begin
        TO_WHEREComBo.Items.Add(fieldbyName('Memo').AsString);
        Next;
     end;
     Active:=false;
   end;
   //
   with qrytemp do
   begin
     Active:=false;
     SQL.Clear;
     SQL.add('select distinct KHBH,KFJC from DDZL  ');
     SQL.add('Left join KFZL on KFZL.kfdh=DDZL.KHBH ');
     SQL.add('where DDZL.ShipDate>GETDATE()-360 ');
     Active:=true;
     cboBrand.Items.Clear;
     cboBrand.Items.add('');
     while not Eof do
     begin
        cboBrand.Items.Add(fieldbyName('KFJC').AsString+'-'+fieldbyName('KHBH').AsString);
        Next;
     end;
     Active:=false;
   end;
   //
   with qrytemp do
   begin
     Active:=false;
     SQL.Clear;
     SQL.add('select gsywqm from BGSZL where GSDH='''+main.Edit2.Text+'''  ');
     Active:=true;
     if RecordCount>0 then gsywqm:=fieldbyName('gsywqm').AsString;
     Active:=false;
   end;
   SHIP_BYCombo.Text:=ComFullName;
   MakeDatePicker.Date:=Date();
end;

procedure TMakeInvoice.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   action:=cafree;
end;

procedure TMakeInvoice.FormDestroy(Sender: TObject);
begin
   MakeInvoice:=nil;
end;
//手動輸入發票代碼和檢查格式用
function TMakeInvoice.Brand_GetCodeID (Str:string):String;
var Brand:String;
begin
 Brand:=GetBrandName(Str);
 if Brand='CONVERSE' then result:='Y';
 if Brand='COACH' then result:='C';
 if Brand='ADIDAS' then result:='A';
 if Brand='REEBOK' then result:='R';
 if Brand='TOMMY' then result:='TM';
 if Brand='HOKA' then result:='JH';
 if Brand='SANUK' then result:='SN';
 if Brand='KSWISS' then result:='KS';
 if Brand='PALLADIUM' then result:='PL';
 if Brand='TEVA' then result:='JT';
 if Brand='UGG' then result:='U';
 if Brand='VANS' then result:='VS';
 if Brand='The North Face' then result:='NF';
 if Brand='ALTRA' then result:='AL';
 if Brand='Skechers' then result:='SK';
 if Brand='UNIQLO' then result:='UQ';
 if Brand='Sneaker Buzz' then result:='SB';
 if Brand='Cariuma' then result:='CA';
end;

function TMakeInvoice.CodeID_GetBrand(ID:string):String;
begin
 if ID='Y' then result:='CONVERSE';
 if ID='C' then result:='COACH';
 if ID='A' then result:='ADIDAS';
 if ID='R' then result:='REEBOK';
 if ID='TM' then result:='TOMMY';
 if ID='JH' then result:='HOKA';
 if ID='SN' then result:='SANUK';
 if ID='KS' then result:='KSWISS';
 if ID='PL' then result:='PALLADIUM';
 if ID='TV' then result:='TEVA';
 if ID='U' then result:='UGG';
 if ID='VS' then result:='VANS';
 if ID='NF' then result:='The North Face';
 if ID='AL' then result:='ALTRA';
 if ID='SK' then result:='Skechers';
 if ID='UQ' then result:='UNIQLO';
 if ID='SB' then result:='Sneaker Buzz';
 if ID='CA' then result:='Cariuma';
end;
//產生發票編號
procedure TMakeInvoice.MakeInvoice_No();

var S_brandCode,S_factory:string;
    I_no,I_year:integer;
    year,month,day:word;
begin
 //產生Inv No
    if cboBrand.Text='' then
    begin
      Showmessage('Please select Brand first');
      exit;
    end;
    S_InvNo:='';
    S_brandCode:=Brand_GetCodeID(cboBrand.Text);
    //品牌取3碼
    s_factory:=Copy(gsywqm,1,2);
    if (s_factory='') then S_factory:='TX';//Tyxuan      //copy(S_InvNo,8,2)
    DecodeDate(now,year,month,day);
                            //copy(S_InvNo,3,4)
    I_year:=year;                    //copy(S_InvNo,11,2)

    with INV_Query do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('select max(NO) as MaxNum from INVOICE_M');
      SQL.Add('where Brand='''+GetBrandName(cboBrand.Text)+''' ');
      SQL.Add('    and FACTORY ='''+S_factory+'''');
      SQL.Add('    and YEAR ='''+copy(inttostr(I_year),3,2)+'''');
      SQL.Add('    and  inv_Type=''Mass Production'' ');
      Active:=true;
    end;
    if (INV_Query.FieldByName('MaxNum').AsInteger)=0 then
    begin
      I_no:=1;
    end else
    begin
      I_no:=INV_Query.FieldByName('MaxNum').AsInteger+1;
    end;
    INV_Query.Active:=false;
    //
    MakeINV_Brand:=GetBrandName(cboBrand.Text);//品牌
    MakeINV_NO:=FormatFloat('#000',I_no); //類別Private變數
    MakeINV_Factory:=S_factory; //類別Private變數
    MakeINV_YEAR:=copy(inttostr(I_year),3,2); //類別Private變數
    //
    S_InvNo:=S_brandCode+'-'+FormatFloat('#000',I_no)+'/'+S_factory+'/'+copy(inttostr(I_year),3,2);
    INV_NOEdit.Text:=S_InvNo; //Inv No
    INV_NOEdit.Color:=clYellow;
    RefEdit.Text:=S_brandCode+'-'+trim(IDEdit.Text)+FormatFloat('#000',I_no)+'/'+S_factory+'/'+copy(inttostr(I_year),3,2);
end;
//
procedure TMakeInvoice.SpeedButton2Click(Sender: TObject);
var S_brand,tmpStr:string;
    Posi:integer;
    iValue, iCode: Integer;
    User_MakeInv_OK:boolean;
begin
  INV_NOEdit.Color:=clwhite;
  if INV_NOEdit.Text<>'' then
  begin
      //check invoice exists or not
      with qrytemp do
      begin
          active:=false;
          sql.Clear;
          sql.Add('select * from INVOICE_M');
          SQL.Add('where INV_NO ='''+INV_NOEdit.Text+'''');
          active:=true;
          if RecordCount = 0 then  //沒有重覆手動輸入INV_NO 代碼檢查
          begin
            //解析
            Posi:=Pos('-',INV_NOEdit.Text);
            if Posi>0 then
            begin
              S_brand:=Copy(INV_NOEdit.Text,1,Posi-1);
              tmpStr:=Copy(INV_NOEdit.Text,Posi+1,length(INV_NOEdit.Text)-1);
              MakeINV_Brand:=CodeID_GetBrand(S_brand);//品牌
//              MakeINV_NO:=Copy(tmpStr,1,3);
//              MakeINV_Factory:=Copy(tmpStr,5,2);
//              MakeINV_YEAR:=Copy(tmpStr,8,length(tmpStr));
              MakeINV_NO:=Copy(tmpStr,1,Pos('/',tmpStr)-1);
              MakeINV_Factory:=copy(RightStr(tmpStr,5),1,2);
              MakeINV_YEAR:=RightStr(tmpStr,2);
              //檢查
              User_MakeInv_OK:=true;
              if length(MakeINV_YEAR)<>2 then  User_MakeInv_OK:=false;
              if MakeINV_Brand<>GetBrandName(cboBrand.Text) then User_MakeInv_OK:=false;
              if ((MakeINV_Brand<>'') and (MakeINV_Factory=Factory)) then
              begin
                //檢查是否為整數
                val(MakeINV_NO, iValue,  iCode);
                if iCode<>0 then   User_MakeInv_OK:=false;
                val(MakeINV_YEAR, iValue,  iCode);
                if iCOde<>0 then   User_MakeInv_OK:=false;
              end else
              begin
                 // if PR.Checked = true then
                //  begin
                //  User_MakeInv_OK:=true;
                //  end else begin
                User_MakeInv_OK:=false;
               //             end;
              end;
              //不合法規則產生新的
              if User_MakeInv_OK=false then  MakeInvoice_No() else INV_NOEdit.Color:=clYellow;
            end else
            begin
              MakeInvoice_No();
            end;
          end else
          begin
            //重覆存在產生新的
            MakeInvoice_No();
          end;
          active:=false;
      end;
  end else
  begin
    //空白產生新的
    MakeInvoice_No();
  end;

end;

procedure TMakeInvoice.MakeInvoice_BtnClick(Sender: TObject);
var RYSting,word,amount_word,RY,CustID:string;
    INV_NO,INV_Factory,INV_YEAR:string;
begin
   if PR.Checked= false then       // setup PR shoe skip check clYellow
      begin
  //Not yet check INV_NO is ok
  if  INV_NOEdit.Color<>clYellow then
  begin
    showmessage('Please click INV NO');
    exit;
  end;
      end;
  if INV_NOEdit.Text='' then
  begin
    showmessage('Please input Inv NO!');
    exit;
  end;

  RYSting:='';
  if Query1.Active then
  begin
    Query1.First;

    while not Query1.Eof do
    begin
      RYSting:=RYSting+''''+Query1.FieldByName('RY').AsString+''',';
      custID:= Query1.FieldByName('CustID').AsString;
      Query1.Next;
    end;
  end;
  RYSting:=LeftStr(RYSting,length(RYSting)-1);

  if RYSting <> '' then
  begin

    //check price if exists or not
    with qrytemp do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT VNPRICE FROM RY_VNPRICE');
      SQL.add('left join YWDD on YWDD.YSBH=RY_VNPRICE.RYNO ');
      SQL.Add('WHERE YWDD.DDBH in ('+RYSting+')');
      Open;
      if RecordCount=0 then
      begin
        if messagedlg('For RY is not exists price.Are you sure to create this Invoice ?',mtWarning,[mbYes,Mbno],0)=mrNo then
        begin
          Exit;
        end;
      end;
      Active:=false;
    end;
    //insert RY
    //------------------------add Thoai Mar.26.2015-----------------------------
    //Get YWDD List basic information
    with qry_tmp1 do
    begin
        close;
        sql.Clear;
        sql.Add('select row_number()over (order by YWDD.DDBH)as No');
        sql.Add('	  ,YWDD.DDBH as RY,k.XieMing as StyleName,DDZL.KHPO as PO,RY_VNPRICE.CustOrdNo,DDZL.article as Article,YWDD.Qty as Pairs');
        sql.Add('	  ,max(DDZLS.CC) as MaxSiz');
        sql.Add('	  ,min(DDZLS.CC) as MinSiz');
        sql.Add('	  ,RY_VNPRICE.VNPRICE');
        sql.Add('	  ,YWDD.Qty * RY_VNPRICE.VNPRICE as Amount');
        sql.Add('FROM YWDD   ');
        sql.Add('     Left JOIN DDZL ON ywdd.YSBH=DDZL.DDBH');
        sql.Add('		  Left join DDZLS on DDZLS.DDBH=DDZL.DDBH');
        sql.Add('     Left join RY_VNPRICE on RY_VNPRICE.RYNO=YWDD.YSBH');
        sql.Add('     LEFT JOIN xxzl k ON k.XieXing=DDZL.XieXing and k.SheHao=DDZL.SheHao');
        sql.Add('where YWDD.DDBH in ('+RYSting+')');
        sql.Add('group by YWDD.DDBH,k.XieMing,DDZL.KHPO,RY_VNPRICE.CustOrdNo,DDZL.article,YWDD.Qty,RY_VNPRICE.VNPRICE');
        open;
    end;

    //TotalAmount
    with qry_tmp2 do
    begin
        close;
        sql.clear;
        SQL.Add('select SUM(YWDD.Qty * RY_VNPRICE.VNPRICE) as TotalAmount');
        SQL.Add('FROM YWDD left join RY_VNPRICE on RY_VNPRICE.RYNO=YWDD.YSBH');
        SQL.Add('where YWDD.DDBH in ('+RYSting+')');
        open;
    end;

    //TotalPairs
    with qry_tmp3 do
    begin
        Close;
        SQL.Clear;
        SQL.Add('select SUM(YWDD.Qty) as TotalPairs');
        SQL.Add('from YWDD');
        SQL.Add('where YWDD.DDBH in ('+RYSting+')');
        Open;
    end;
    //
    if (qry_tmp1.RecordCount=0) then
    begin
      exit;
    end;

      //check invoice exists or not
      with qrytemp do
      begin
          active:=false;
          sql.Clear;
          sql.Add('select * from INVOICE_M');
          SQL.Add('where INV_NO ='''+INV_NOEdit.Text+'''');
          active:=true;
          if RecordCount > 0 then
          begin
              showmessage('Invoice ' + INV_NOEdit.Text + ' is existsing. You can not create this invoice!!!');
              abort;
          end;
          active:=false;
      end;

      //INVOICE_M
      word:= ConvertToWords(qry_tmp2.FieldByName('TotalAmount').AsFloat,true);
      amount_word:=upperCase(leftstr(word,1)) + copy(word,2,length(word)-1);
      //
      with qrytemp do
      begin
        Close;
        SQL.Clear;
        SQL.Add('insert into INVOICE_M (INV_NO, INV_DATE, RISK, SHIP_BY, FROM_WHERE, TO_WHERE, TOTAL_PAIRS, TOTAL_AMOUNT, TOTAL_AMOUNT_WORD, BRAND, NO, FACTORY, YEAR, SAVE_USER, SAVE_TIME, YN, CUSTID, CURRENCY, INV_Type,REF)');
        SQL.Add('values ('''+INV_NOEdit.Text+''','''+datetostr(MakeDatePicker.Date)+''','''+RISKCombo.Text+''','''+SHIP_BYCombo.Text+''','''+FROM_WHEREComBo.Text+''','''+TO_WHEREComBo.Text+''','''+qry_tmp3.FieldByName('TotalPairs').AsString+''','''+qry_tmp2.FieldByName('TotalAmount').AsString+''','''+amount_word+''','''+MakeINV_Brand+''','''+MakeINV_NO+''',');
        SQL.Add(''''+MakeINV_Factory+''','''+MakeINV_YEAR+''','''+Main.Edit1.Text+''','''+FormatDateTime('yyyy/mm/dd hh:nn:ss',now)+''',''1'','''+CustID+''','''+cbo_Currency.Text+''',''Mass Production'','''+RefEdit.Text+''')');
        ExecSQL;
        qry_tmp2.Active:=false;
        qry_tmp3.Active:=false;
      end;

      qry_tmp1.First;
      while not (qry_tmp1.Eof) do
      begin
        //INVOICE_D
        with qrytemp do
        begin
          Close;
          SQL.Clear;
          SQL.Add('insert into INVOICE_D (INV_NO, PACK_NO, RYNO, STYLE_NAME, PO, CUSTORDNO, ARTICLE, SIZE_RUN, PAIRS, UNIT_PRICE, AMOUNT, UserID, UserDate, YN)');
          SQL.Add('values ('''+INV_NOEdit.Text+''','''+qry_tmp1.FieldByName('No').AsString+''','''+qry_tmp1.FieldByName('RY').AsString+''',:STYLE_NAME,'''+qry_tmp1.FieldByName('PO').AsString+''','''+qry_tmp1.FieldByName('CustOrdNo').AsString+''','''+qry_tmp1.FieldByName('Article').AsString+''','''+qry_tmp1.FieldByName('MinSiz').AsString+'-'+qry_tmp1.FieldByName('MaxSiz').AsString+''','''+qry_tmp1.FieldByName('Pairs').AsString+''','''+qry_tmp1.FieldByName('VNPRICE').AsString+''','''+qry_tmp1.FieldByName('Amount').AsString+''','''+Main.Edit1.Text+''',getdate(),''1'' )');
          qrytemp.ParamByName('STYLE_NAME').Value:=qry_tmp1.FieldByName('StyleName').AsString;
          ExecSQL;
          qry_tmp1.Next;
        end;
      end;
      qry_tmp1.Active:=false;

      //insert Packing  Mar.26.2015 Thoai
      with qrytemp do
      begin
          Close;
          SQL.Clear;
          SQL.Add('INSERT INTO PACKING (INV_NO,RYNO,XH,SIZ,CTQ,CTZ,CTS,QTY,PAIRS,NW,GW,L,W,H,CBM,USERID,USERDATE,TNW,TGW)');
          SQL.Add('SELECT '''+INV_NOEdit.Text+''' AS INV_NO,YWBZPO.DDBH,YWBZPO.XH,YWBZPOS.DDCC,YWBZPO.CTQ,YWBZPO.CTZ');
          SQL.Add('		,TH.CTS,YWBZPOS.QTY,TH.PAIRS');
          SQL.Add('		,Round(TH.NW,2) as NW, Round(TH.GW,2) as GW'); //20150922 鞋子淨重, 毛重=鞋子淨重+內盒毛重+外箱毛重
          SQL.Add('		,YWBZPO.L,YWBZPO.W,YWBZPO.H ');
          SQL.Add('   ,Round(YWBZPO.CBM,4)*YWBZPO.CTS as CBM');
          SQL.Add('   ,'''+Main.Edit1.Text+''',getdate(),Round(TH.NW,2)*YWBZPO.CTS  as TNW,Round(TH.GW,2)*YWBZPO.CTS as TGW  ');
          SQL.Add('FROM YWBZPO inner join YWBZPOS on YWBZPO.DDBH=YWBZPOS.DDBH and YWBZPO.XH=YWBZPOS.XH');
          SQL.Add('           LEFT JOIN YWDD ON YWBZPOS.DDBH=YWDD.DDBH');
          SQL.Add('				    left join DDZL on YWDD.YSBH=DDZL.DDBH');
          SQL.Add('				    left join YWWX2 on YWWX2.CLBH=YWBZPO.CLBH');
          SQL.Add('				    left join (');
          SQL.Add('							      SELECT YWBZPO.DDBH,YWBZPO.XH,YWBZPO.CTS,sum((YWBZPO.CTS*YWBZPOS.QTY)) AS PAIRS');
          SQL.Add('								        ,Max(YWBZPO.NW) as NW,Max(YWBZPO.GW) as GW');
          SQL.Add('							      FROM YWBZPO inner join YWBZPOS on YWBZPO.DDBH=YWBZPOS.DDBH and YWBZPO.XH=YWBZPOS.XH');
          SQL.Add('                    where YWBZPO.DDBH in ('+RYSting+')');
    			SQL.Add('				            group by YWBZPO.DDBH,YWBZPO.XH,YWBZPO.CTS');
          SQL.Add('		              )TH on TH.DDBH=YWBZPO.DDBH and YWBZPO.XH=TH.XH');
          SQL.Add('where YWBZPO.DDBH in ('+RYSting+')');
          SQL.Add('order by YWBZPO.XH');
          ExecSQL;
      end;

      //get RY as invoice
      qry_tmp1.active:=false;
      qry_tmp1.sql.Clear;
      qry_tmp1.sql.Add('select Inv_No,RYNO from Invoice_D');
      qry_tmp1.sql.Add('where inv_no='''+INV_NOEdit.Text+''' ');
      qry_tmp1.sql.Add('group by Inv_No,RYNO');
      qry_tmp1.active:=true;
      RY:='';
      while not qry_tmp1.eof do
      begin
          RY:= qry_tmp1.fieldbyName('RYNO').AsString;
          //delete table Packing_D if exists
          with qrytemp do
          begin
            active:=false;
            SQL.Clear;
            SQL.Add('Delete from Packing_D');
            SQL.Add('where RYNO='''+RY+'''  ');
            SQL.Add('       and INV_No ='''+INV_NOEdit.Text+''' ');
            execsql;

            //update table packing_D for detail RY
            active:=false;
            SQL.Clear;
            SQL.Add('INSERT INTO PACKING_D (INV_NO,RYNO,CTS,Pairs,NW,GW,CBM,UserID,UserDate)');
            SQL.Add('SELECT '''+INV_NOEdit.Text+''' as Inv_No,'''+RY+''' as RYNO');
            SQL.Add('       ,(select sum(CTS) from YWBZPO where YWBZPO.DDBH=INVOICE_D.RYNO )CTS');
            SQL.Add('       ,INVOICE_D.Pairs,SUM(TNW),SUM(TGW),round(SUM(CBM),4),'''+Main.Edit1.Text+''',getdate() ');
            SQL.Add('FROM INVOICE_D left join');
            SQL.Add('                         (select Inv_No,RYNo,XH,TNW,TGW,CBM from PACKING');
            SQL.Add('                             where RYNO='''+RY+'''  and INV_No ='''+INV_NOEdit.Text+'''  ');
            SQL.Add('	                            group by Inv_No,RYNo,XH,TNW,TGW,CBM');
            SQL.Add('                          )PACKING on INVOICE_D.RYNO=PACKING.RYNO and INVOICE_D.Inv_No=PACKING.Inv_No');
            SQL.Add('where INVOICE_D.RYNO='''+RY+'''  ');
            SQL.Add('       and INVOICE_D.INV_No ='''+INV_NOEdit.Text+''' ');
            SQL.Add('group by INVOICE_D.RyNo,INVOICE_D.Pairs');
            execsql;
          end;
          qry_tmp1.next;
       end;

      qry_tmp1.Active:=false;
      qrytemp.Active:=false;
      //
      //產生Inv No to Edit2.text
      SpeedButton2Click(nil);
      showmessage('Make Invoice && Packing List Successfully!');
  end else
  begin
    qry_tmp1.Close;
    qry_tmp2.Close;
    qry_tmp2.Close;
    showmessage('Please select some RY!');
  end;

end;

procedure TMakeInvoice.Button2Click(Sender: TObject);
begin
    close;
end;

procedure TMakeInvoice.DBGridEh1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin

    if Query1.FieldByName('CustOrdNo').AsString='' then
        DBGridEh1.Canvas.Font.Color:=clred;
    if Query1.FieldByName('VNPrice').AsString='' then
        DBGridEh1.Canvas.Font.Color:=clred;
end;

procedure TMakeInvoice.DBGridEh1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if Query1.FieldByName('Status').AsString='C' then
  begin
     DBGridEh1.canvas.Brush.Color:=clBtnFace;
     DBGridEh1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
  end;
end;

procedure TMakeInvoice.BB2Click(Sender: TObject);
begin
  if Invoice_SelectOrder=nil then
    Invoice_SelectOrder:=TInvoice_SelectOrder.Create(self);
  Invoice_SelectOrder.show;
  
end;

procedure TMakeInvoice.BB1Click(Sender: TObject);
begin
  //
  with query1 do
  begin
      close;
      sql.Clear;
      sql.Add('select YWDD.DDBH as RY,YWDD.YSBH,k.XieMing as StyleName,do.KHPO as PO,RY_VNPRICE.CustOrdNo as CustOrdNo,RY_VNPRICE.VNPrice,do.article as Article,YWDD.Qty as Pairs,do.KHBH as CustID,do.DDZT as Status');
      sql.Add('FROM YWDD LEFT JOIN DDZL do ON ywdd.YSBH=do.DDBH');
      sql.Add('		       LEFT JOIN kfxxzl k ON k.XieXing=do.XieXing and k.SheHao=do.SheHao ');
      sql.Add('          LEFT JOIN RY_VNPRICE on  RY_VNPRICE.RYNO=do.DDBH ');
      sql.Add('WHERE 1=2 ');
      SQL.Add(' and not exists (select RYNO from INVOICE_D where YWDD.DDBH=INVOICE_D.RyNo)');
      SQL.Add('order by YWDD.DDBH');
      //funcObj.WriteErrorLog(sql.Text);
      open;
  end;
  DBGridEh1.Columns[0].title.caption:='';
  //
  BB2.Enabled:=true;
  BB3.Enabled:=true;
  BB4.Enabled:=true;
end;
procedure TMakeInvoice.BB3Click(Sender: TObject);
begin
  Query1.Delete;
end;

procedure TMakeInvoice.BB4Click(Sender: TObject);
begin
  Query1.First;
  while not  Query1.Eof do
  begin
    Query1.Delete;
    Next;
  end;
end;

procedure TMakeInvoice.INV_NOEditChange(Sender: TObject);
begin
  INV_NOEdit.Color:=clWindow;
end;



procedure TMakeInvoice.TO_WHEREComBoChange(Sender: TObject);
begin
  with qry_tmp1 do
  begin
    active:=false;
    sql.Clear;
    sql.Add('select CountryID from ShipCountry where memo='''+TO_WHEREComBo.Text+'''');
    active:=true;
  end;
   IDEdit.Text:= qry_tmp1.fieldbyname('CountryID').AsString;
   INV_NOEdit.Clear;
   RefEdit.Clear;
end;

end.
