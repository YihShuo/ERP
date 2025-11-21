unit SplitInvoice_RY1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,IniFiles,
  Dialogs, StdCtrls, Buttons, ExtCtrls, GridsEh, DBGridEh, DB, DBTables,NumberToWords,StrUtils;

type
  TSplitInvoice_RY = class(TForm)
    Panel1: TPanel;
    Splitter1: TSplitter;
    DBGridEh5: TDBGridEh;
    paking: TQuery;
    DS1: TDataSource;
    packing_D: TQuery;
    packing_DCTS: TIntegerField;
    packing_DPairs: TIntegerField;
    packing_DNW: TFloatField;
    packing_DGW: TFloatField;
    packing_DCBM: TFloatField;
    DS2: TDataSource;
    Button1: TButton;
    Query1: TQuery;
    btnSave: TButton;
    Button3: TButton;
    Query2: TQuery;
    Button4: TButton;
    Query3: TQuery;
    Button2: TButton;
    UpdateSQL1: TUpdateSQL;
    pakingXH: TStringField;
    pakingSIZ: TStringField;
    pakingCTQ: TIntegerField;
    pakingCTZ: TIntegerField;
    pakingCTS: TIntegerField;
    pakingQTY: TIntegerField;
    pakingPAIRS: TIntegerField;
    pakingNW: TFloatField;
    pakingGW: TFloatField;
    pakingL: TFloatField;
    pakingW: TFloatField;
    pakingH: TFloatField;
    pakingCBM: TFloatField;
    pakingCTQ_Old: TIntegerField;
    pakingCTZ_Old: TIntegerField;
    DBGridEh1: TDBGridEh;
    pakingID: TFloatField;
    pakingRYNO: TStringField;
    packing_DRYNO: TStringField;
    pakingPairs_Old: TIntegerField;
    pakingTNW: TFloatField;
    pakingTGW: TFloatField;
    Label6: TLabel;
    INV_NOEdit: TEdit;
    SpeedButton2: TSpeedButton;
    Qtemp: TQuery;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnSaveClick(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure pakingCTQChange(Sender: TField);
    procedure SpeedButton2Click(Sender: TObject);
    procedure INV_NOEditChange(Sender: TObject);
  private
    gsywqm:string;
    Factory,CheckInvoice:String;
    MakeINV_NO,MakeINV_Factory,MakeINV_YEAR,MakeINV_Brand:string;
    { Private declarations }
    function Brand_GetCodeID(Str:string):String;
    function CodeID_GetBrand(ID:string):String;
    procedure MakeInvoice_No();

     procedure ReadIni();

  public

    { Public declarations }

  end;

var
  SplitInvoice_RY: TSplitInvoice_RY;
  S_InvNo:string;

implementation

uses SplitInvoice1,Main1,FunUnit;

{$R *.dfm}

procedure TSplitInvoice_RY.ReadIni();
var MyIni :Tinifile;
    AppDir,DBIP,DBUser,DBPass,DBName:string;
begin
  Factory:='TX';
  CheckInvoice:='TX';
  AppDir:=ExtractFilePath(Application.ExeName);
  if FileExists(AppDir+'\ComName.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ComName.ini');
      Factory:=MyIni.ReadString('ERP','Shipping_N11_Factory','TX');
      CheckInvoice:=MyIni.ReadString('ERP','Shipping_N11_CheckInvoice','TX');
    finally
      MyIni.Free;
    end;
  end;
end;


function TSplitInvoice_RY.Brand_GetCodeID (Str:string):String;
var Brand:String;
begin
 Brand:=SplitInvoice.qry1.fieldByName('BRAND').asstring;
 if Brand='CONVERSE' then result:='Y';
 if Brand='COACH' then result:='C';
 if Brand='ADIDAS' then result:='A';
 if Brand='REEBOK' then result:='R';
 if Brand='TOMMY' then result:='TM';
 if Brand='HOKA' then result:='JH';
 if Brand='SANUK' then result:='SN';
 if Brand='KSWISS' then result:='KS';
 if Brand='PALLADIUM' then result:='PL';
 if Brand='TEVA' then result:='TV';
 if Brand='UGG' then result:='U';
 if Brand='VANS' then result:='VS';
 if Brand='The North Face' then result:='NF';
 if Brand='ALTRA' then result:='AL';
 if Brand='UNIQLO' then result:='UQ';
 if Brand='Sneaker Buzz' then result:='SB';
 if Brand='Cariuma' then result:='CA';
end;

function TSplitInvoice_RY.CodeID_GetBrand(ID:string):String;
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
 if ID='UQ' then result:='UNIQLO';
 if ID='SB' then result:='Sneaker Buzz';
 if ID='CA' then result:='Cariuma';
end;

procedure TSplitInvoice_RY.MakeInvoice_No();

var S_brandCode,S_factory:string;
    I_no,I_year:integer;
    year,month,day:word;
begin

    S_InvNo:='';
    S_brandCode:=Brand_GetCodeID(SplitInvoice.qry1.fieldByName('BRAND').asstring);
    //品牌取3碼
    s_factory:=Copy(gsywqm,1,2);
    if (s_factory='') then S_factory:='TX';//Tyxuan      //copy(S_InvNo,8,2)
    DecodeDate(now,year,month,day);
                            //copy(S_InvNo,3,4)
    I_year:=year;                    //copy(S_InvNo,11,2)

    with Query1 do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('select max(NO) as MaxNum from INVOICE_M');
      SQL.Add('where Brand='''+SplitInvoice.qry1.fieldByName('BRAND').asstring+''' ');
      SQL.Add('    and FACTORY ='''+S_factory+'''');
      SQL.Add('    and YEAR ='''+copy(inttostr(I_year),3,2)+'''');
      SQL.Add('    and  inv_Type=''Mass Production'' ');
      Active:=true;
    end;
    if (Query1.FieldByName('MaxNum').AsInteger)=0 then
    begin
      I_no:=1;
    end else
    begin
      I_no:=Query1.FieldByName('MaxNum').AsInteger+1;
    end;
    Query1.Active:=false;
    //
    MakeINV_Brand:=SplitInvoice.qry1.fieldByName('BRAND').asstring;//品牌
    if CheckInvoice='TX' then
    begin
      MakeINV_NO:=FormatFloat('#0000',I_no);
    end else
    begin
      MakeINV_NO:=FormatFloat('#000',I_no); //類別Private變數
    end;
    MakeINV_Factory:=S_factory; //類別Private變數
    MakeINV_YEAR:=copy(inttostr(I_year),3,2); //類別Private變數
    if CheckInvoice='TX' then
    begin
      S_InvNo:='LYN'+ S_brandCode+copy(inttostr(I_year),3,2)+ FormatFloat('#0000',I_no);
      INV_NOEdit.Text:=S_InvNo; //Inv No
      INV_NOEdit.Color:=clYellow;
    end else
    begin
      S_InvNo:=S_brandCode+'-'+FormatFloat('#000',I_no)+'/'+S_factory+'/'+copy(inttostr(I_year),3,2);
      INV_NOEdit.Text:=S_InvNo; //Inv No
      INV_NOEdit.Color:=clYellow;
    end;
end;
//

procedure TSplitInvoice_RY.Button1Click(Sender: TObject);
var bm:Tbookmark;
    i:integer;
    bookmarklist:tbookmarklisteh;
begin
    SplitInvoice.qry1.disablecontrols;
    bm:=SplitInvoice.qry1.getbookmark;
    bookmarklist:=SplitInvoice.DBGridEh1.selectedrows;
    if bookmarklist.count>0 then
    begin
      try
        for i:=0 to bookmarklist.count-1 do
        begin
          SplitInvoice.qry1.gotobookmark(pointer(bookmarklist[i]));
          with query1 do
          begin
              active:=false;
              sql.Clear;
              sql.Add('INSERT INTO #PACKING(RYNO,XH,SIZ,CTQ,CTZ,CTS,QTY,PAIRS,NW,GW,L,W,H,CBM,TNW,TGW)');
              sql.Add('VALUES (');
              sql.Add('          '''+SplitInvoice.qry1.fieldbyname('RYNO').AsString+''' ');
              sql.Add('          ,'''+SplitInvoice.qry1.fieldbyname('XH').AsString+''' ');
              sql.Add('          ,'''+SplitInvoice.qry1.fieldbyname('Siz').AsString+''' ');
              sql.Add('          ,'''+SplitInvoice.qry1.fieldbyname('CTQ').AsString+''' ');
              sql.Add('          ,'''+SplitInvoice.qry1.fieldbyname('CTZ').AsString+''' ');
              sql.Add('          ,'''+SplitInvoice.qry1.fieldbyname('CTS').AsString+''' ');
              sql.Add('          ,'''+SplitInvoice.qry1.fieldbyname('QTY').AsString+''' ');
              sql.Add('          ,'''+SplitInvoice.qry1.fieldbyname('PAIRS').AsString+''' ');
              sql.Add('          ,'''+SplitInvoice.qry1.fieldbyname('NW').AsString+''' ');
              sql.Add('          ,'''+SplitInvoice.qry1.fieldbyname('GW').AsString+''' ');
              sql.Add('          ,'''+SplitInvoice.qry1.fieldbyname('L').AsString+''' ');
              sql.Add('          ,'''+SplitInvoice.qry1.fieldbyname('W').AsString+''' ');
              sql.Add('          ,'''+SplitInvoice.qry1.fieldbyname('H').AsString+''' ');
              sql.Add('          ,'''+SplitInvoice.qry1.fieldbyname('CBM').AsString+''' ');
              sql.Add('          ,'''+SplitInvoice.qry1.fieldbyname('TNW').AsString+''' ');
              sql.Add('          ,'''+SplitInvoice.qry1.fieldbyname('TGW').AsString+''' ');
              sql.Add(')');
              //funcobj.WriteErrorLog(sql.Text);
              execsql;
          end;
        end; //end for
      finally
      begin
        SplitInvoice.qry1.gotobookmark(bm);
        SplitInvoice.qry1.freebookmark(bm);
        SplitInvoice.qry1.enablecontrols;
      end;
     end;
    end; //end if

    paking.Active:=false;
    paking.Active:=true;

    with packing_D do
    begin
        active:=false;
        sql.Clear;
        sql.Add('SELECT a.RYNO,sum(a.PAIRS) Pairs,sum(CTS) CTS,SUM(a.TNW) NW,SUM(a.TGW) GW,SUM(a.CBM) CBM');
        sql.Add('FROM (');
        sql.Add('SELECT p.RYNO, p.XH,p.PAIRS,p.TNW,p.TGW,p.CBM,p.CTS');
        sql.Add('FROM #PACKING p ');
        sql.Add('group by p.RYNO, p.XH,p.PAIRS,p.TNW,p.TGW,p.CBM,p.CTS');
        sql.Add(')a group by a.RYNO');
        //funcobj.WriteErrorLog(sql.Text);
        active:=true;
    end;

end;

procedure TSplitInvoice_RY.FormCreate(Sender: TObject);
begin
   ReadIni();
   with query1 do
   begin
     Active:=false;
     SQL.Clear;
     SQL.add('select gsywqm from BGSZL where GSDH='''+main.Edit2.Text+'''  ');
     Active:=true;
     if RecordCount>0 then gsywqm:=fieldbyName('gsywqm').AsString;
     Active:=false;
   end;
   with paking do
      begin
          active:=false;
          sql.Clear;
          sql.add('if object_id(N'+''''+'tempdb..#PACKING'+''''+',N''U'') is not null');
          sql.add(' begin drop table #PACKING end;');

          sql.Add('create table #PACKING (');
          sql.Add(' [RYNO] [varchar](30) COLLATE Chinese_Taiwan_Stroke_CI_AS ,');
          sql.Add('	[XH] [varchar](10) COLLATE Chinese_Taiwan_Stroke_CI_AS ,');
          sql.Add('	[SIZ] [varchar](10) COLLATE Chinese_Taiwan_Stroke_CI_AS ,');
          sql.Add('	[CTQ] [int],');
          sql.Add('	[CTZ] [int],');
          sql.Add('	[CTS] [int] ,');
          sql.Add('	[QTY] [int] ,');
          sql.Add('	[PAIRS] [int] ,');
          sql.Add('	[NW] [float] ,');
          sql.Add('	[GW] [float] ,');
          sql.Add('	[L] [float] ,');
          sql.Add('	[W] [float] ,');
          sql.Add('	[H] [float] ,');
          sql.Add('	[CBM] [float] ,');
          sql.Add('	[TNW] [float] ,');
          sql.Add('	[TGW] [float] ,');
          sql.Add('	[SIZ_US] [varchar](10) COLLATE Chinese_Taiwan_Stroke_CI_AS NULL');
          sql.Add(')');
          //funcobj.WriteErrorLog(sql.Text);
          execsql;

          active:=false;
          sql.Clear;
          sql.Add('SELECT ROW_NUMBER()OVER(ORDER BY p.RYNO,p.XH,p.SIZ)ID,p.RYNO,p.XH,p.SIZ,p.CTQ,pp.CTQ AS CTQ_Old');
          sql.Add('      ,p.CTZ,pp.CTZ AS CTZ_Old,p.CTS,p.QTY,p.PAIRS,p.PAIRS Pairs_Old,p.NW,p.GW,p.L,p.W,p.H,p.CBM,p.SIZ_US,p.TNW,p.TGW');
          sql.Add('FROM #PACKING p');
          sql.Add('LEFT JOIN PACKING pp ON pp.INV_NO='''+SplitInvoice.qry1.fieldByName('INV_NO').asstring+'''');
          sql.Add('          AND pp.RYNO=p.RYNO AND pp.XH=p.XH AND pp.SIZ=p.SIZ AND pp.CTQ=p.CTQ');
          //funcobj.WriteErrorLog(sql.Text);
          active:=true;
      end;

      Button1Click(nil);
end;

procedure TSplitInvoice_RY.FormDestroy(Sender: TObject);
begin
    SplitInvoice_RY:=nil;
end;

procedure TSplitInvoice_RY.Button3Click(Sender: TObject);
begin
    SplitInvoice.btnAdd.Enabled:=true;
    SplitInvoice.btnAddmore.Enabled:=false;
    close;

end;

procedure TSplitInvoice_RY.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   action:=cafree;
   SplitInvoice.btnAdd.Enabled:=true;
   SplitInvoice.btnAddmore.Enabled:=false;
end;

procedure TSplitInvoice_RY.btnSaveClick(Sender: TObject);
var word1,amount_word,S_brand,InvNo_new,I_no,I_year,REF_Str,REF:string;
    pack_no:integer;

begin
    if  INV_NOEdit.Color<>clYellow then
    begin
      showmessage('Please click INV NO');
      exit;
    end;

    if INV_NOEdit.Text='' then
    begin
      showmessage('Please input Inv NO!');
      exit;
    end;
    with Qtemp do
    begin
      active:=false;
      sql.Clear;
      sql.Add('Select REF From INVOICE_M Where INV_NO='''+SplitInvoice.Edit1.Text+''' ');
      active:=true;
    end;
    if ((Qtemp.RecordCount>0) and  (Qtemp.FieldByName('REF').AsString<>'')) then
    begin
      REF_Str:=copy(Qtemp.FieldByName('REF').AsString,1,8);
    end;

    if (paking.Active) and (paking.RecordCount =0) then abort;

    if messageDlg('Are you sure to split RY ?',mtwarning,[mbyes,mbno],0) = mryes then
    begin

      //-------------------------make invoice No.-------------------------------
      InvNo_new:='';
      //MakeInvoice_No();

    try
      with query1 do
      begin
          active:=false;
          sql.Clear;
          //-----------------------insert table log ----------------------------
          SQL.Add('INSERT INTO INVOICE_M_Log (INV_NO,INV_DATE,RISK,SHIP_BY,FROM_WHERE,TO_WHERE,TOTAL_PAIRS,TOTAL_AMOUNT,TOTAL_AMOUNT_WORD,BRAND,NO,FACTORY,YEAR,SAVE_USER,SAVE_TIME,PRINT_LOCK,CFM_USER,CFM_TIME,CFMED,PRINT_USER');
          sql.Add('       ,PRINT_TIME,UNLOCK_USER,UNLOCK_TIME,YN,CUSTID,CURRENCY,Season,Stage,Inv_Type,Inv_Sup,FuncRe,Log_Date,Log_User)');
          SQL.Add('select INV_NO,INV_DATE,RISK,SHIP_BY,FROM_WHERE,TO_WHERE,TOTAL_PAIRS,TOTAL_AMOUNT,TOTAL_AMOUNT_WORD,BRAND,NO,FACTORY,YEAR,SAVE_USER,SAVE_TIME,PRINT_LOCK,CFM_USER,CFM_TIME,CFMED,PRINT_USER');
          sql.Add('       ,PRINT_TIME,UNLOCK_USER,UNLOCK_TIME,YN,CUSTID,CURRENCY,Season,Stage,Inv_Type,'''+SplitInvoice.qry1.FieldByName('inv_no').AsString+''',''Split'',getdate(),'''+Main.edit1.text+''' ');
          SQL.Add('FROM INVOICE_M ');
          SQL.Add('WHERE INV_NO='''+SplitInvoice.qry1.fieldByName('Inv_No').asstring+''' ');

          SQL.Add('insert into INVOICE_D_log (INV_NO,PACK_NO,RYNO,STYLE_NAME,PO,CUSTORDNO,ARTICLE,SIZE_RUN,PAIRS,UNIT_PRICE,AMOUNT,UserID,UserDate,YN)');
          SQL.Add('select INV_NO,PACK_NO,RYNO,STYLE_NAME,PO,CUSTORDNO,ARTICLE,SIZE_RUN,PAIRS,UNIT_PRICE,AMOUNT,UserID,UserDate,YN');
          SQL.Add('FROM INVOICE_D');
          SQL.Add('WHERE INV_NO='''+SplitInvoice.qry1.fieldByName('Inv_No').asstring+''' ');

          SQL.Add('INSERT INTO PACKING_log(INV_NO,RYNO,XH,SIZ,CTQ,CTZ,CTS,QTY,PAIRS,NW,GW,L,W,H,CBM,USERID,USERDATE,TNW,TGW)');
          sql.Add('SELECT INV_NO,RYNO,XH,SIZ,CTQ,CTZ,CTS,QTY,PAIRS,NW,GW,L,W,H,CBM,USERID,USERDATE,TNW,TGW');
          sql.Add('FROM PACKING');
          SQL.Add('WHERE INV_NO='''+SplitInvoice.qry1.fieldByName('Inv_No').asstring+''' ');

          sql.Add('INSERT INTO PACKING_D_log (INV_NO,RYNO,CTS,Pairs,NW,GW,CBM,UserID,UserDate)');
          sql.Add('SELECT INV_NO,RYNO,CTS,Pairs,NW,GW,CBM,UserID,UserDate');
          sql.Add('FROM PACKING_D');
          SQL.Add('WHERE INV_NO='''+SplitInvoice.qry1.fieldByName('Inv_No').asstring+''' ');
          //funcobj.WriteErrorLog(sql.Text);
          execsql;

          //--------------------------------------------------------------------

          active:=false;
          sql.Clear;
          //create new invoice(table invoice_M) ,information from old invoice
          if REF_Str<>'' then
          begin
            REF:= REF_Str+copy(INV_NOEdit.Text,7,length(INV_NOEdit.Text));
          end else
          begin
            REF:='';
          end;

          SQL.Add('insert into INVOICE_M (INV_NO,INV_DATE,RISK,SHIP_BY,FROM_WHERE,TO_WHERE,BRAND,NO,FACTORY,YEAR,SAVE_USER,SAVE_TIME,YN,CUSTID,CURRENCY,INV_Type,Inv_Sup,Ref)');
          SQL.Add('select '''+INV_NOEdit.Text+''','''+formatdatetime('yyyy/MM/dd',SplitInvoice.qry1.fieldByName('Inv_Date').Value)+''',RISK,SHIP_BY,FROM_WHERE,TO_WHERE,BRAND');
          SQL.Add('      ,'''+MakeINV_NO+''',FACTORY,YEAR,'''+main.edit1.text+''',getdate(),''1'',CUSTID,CURRENCY,INV_Type ');
          SQL.Add('      ,'''+SplitInvoice.qry1.FieldByName('inv_no').AsString+''' ');
          if CheckInvoice='TX' then
          begin
            SQL.Add('      ,'''+REF+''' ');
          end else
          begin
             SQL.Add('      ,'''' ');
          end;
          SQL.Add('FROM INVOICE_M im WHERE INV_NO='''+SplitInvoice.qry1.fieldByName('Inv_No').asstring+''' ');

          //add data to Packing for new invoice

          SQL.Add('INSERT INTO PACKING(INV_NO,RYNO,XH,SIZ,CTQ,CTZ,CTS,QTY,PAIRS,NW,GW,L,W,H,CBM,USERID,USERDATE,TNW,TGW)');
          sql.Add('SELECT '''+INV_NOEdit.Text+''',RYNO,XH,SIZ,CTQ,CTZ,CTS,QTY,PAIRS,NW,GW,L,W,H,CBM,'''+Main.edit1.text+'''');
          sql.Add('   ,getdate(),TNW,TGW');
          sql.Add('FROM #PACKING');
          //funcobj.WriteErrorLog(sql.Text);
          execsql;

      end;

      //get RY and pairs of this
      with query2 do
      begin
          active:=false;
          sql.Clear;
          sql.Add('SELECT a.RYNO,sum(a.PAIRS) Pairs');
          sql.Add('FROM (');
          sql.Add('SELECT p.RYNO, p.XH,p.PAIRS');
          sql.Add('FROM PACKING p WHERE p.INV_NO = '''+INV_NOEdit.Text+'''');
          sql.Add('group by p.RYNO, p.XH	,p.PAIRS');
          sql.Add(')a group by a.RYNO');
          //funcobj.WriteErrorLog(sql.Text);
          active:=true;
      end;

      query2.First;
      Pack_no:=1;
      while not query2.Eof do
      begin
         query1.active:=false;
         query1.sql.Clear;

         //insert New data in invoice_D for New invoice

         query1.SQL.Add('insert into INVOICE_D (INV_NO,PACK_NO,RYNO,STYLE_NAME,PO,CUSTORDNO,ARTICLE,SIZE_RUN,PAIRS,UNIT_PRICE,AMOUNT,UserID,UserDate,YN)');
         query1.SQL.Add('select '''+INV_NOEdit.Text+''','+inttostr(pack_no));
         query1.SQL.Add('         ,RYNO,STYLE_NAME,PO,CUSTORDNO,ARTICLE,SIZE_RUN,'+ query2.fieldbyName('PAIRS').AsString );
         query1.SQL.Add('         ,UNIT_PRICE,UNIT_PRICE* '+ query2.fieldbyName('PAIRS').AsString );
         query1.SQL.Add('         ,'''+Main.edit1.text+''',getdate(),''1''');
         query1.SQL.Add('FROM INVOICE_D');
         query1.SQL.Add('WHERE INV_NO='''+SplitInvoice.qry1.fieldByName('Inv_No').asstring+''' AND RYNO='''+query2.fieldbyName('RYNO').AsString+'''');

         //insert new data in packing_D for invoice new
         
         Query1.sql.Add('INSERT INTO PACKING_D (INV_NO,RYNO,CTS,Pairs,NW,GW,CBM,UserID,UserDate)');
         Query1.sql.Add('SELECT '''+INV_NOEdit.Text+''' as Inv_No,a.RYNO,sum(CTS) CTS,sum(a.PAIRS) Pairs,SUM(a.TNW) NW,SUM(a.TGW) GW,SUM(a.CBM) CBM,'''+Main.edit1.text+''',getdate()');
         Query1.sql.Add('FROM (');
         Query1.sql.Add('SELECT p.RYNO, p.XH,p.PAIRS,p.TNW,p.TGW,p.CBM,p.CTS');
         Query1.sql.Add('FROM PACKING p where INV_No ='''+INV_NOEdit.Text+'''');
         Query1.sql.Add('group by p.RYNO, p.XH,p.PAIRS,p.TNW,p.TGW,p.CBM,p.CTS');
         Query1.sql.Add(')a where a.RYNO='''+query2.fieldbyName('RYNO').AsString+''' ');
         Query1.sql.Add('group by a.RYNO');  
         //funcobj.WriteErrorLog(Query1.sql.Text);
         Query1.execsql;

         query2.Next;
         inc(Pack_no);
      end;

      //get total Pairs for new invoice follow RY.
      with query2 do
      begin
          active:=false;
          sql.Clear;
          sql.Add('select SUM(PAIRS) AS TotalPairs,SUM(AMOUNT) TotalAmount FROM INVOICE_D WHERE INV_NO= '''+INV_NOEdit.Text+''' ');
          //funcobj.WriteErrorLog(sql.Text);
          active:=true;
      end;

      word1:= ConvertToWords(query2.FieldByName('TotalAmount').AsFloat,true);
      amount_word:=upperCase(leftstr(word1,1)) + copy(word1,2,length(word1)-1);

      //update total Pair and total Amount
      with query1 do
      begin
          active:=false;
          sql.Clear;
          sql.Add('UPDATE INVOICE_M SET');
          sql.Add(' 	TOTAL_PAIRS = '''+query2.fieldbyName('TotalPairs').AsString+''' ');
          sql.Add('	  ,TOTAL_AMOUNT ='''+query2.fieldbyName('TotalAmount').AsString+''' ');
          sql.Add('	  ,TOTAL_AMOUNT_WORD ='''+amount_word+''' ');
          sql.Add('WHERE INV_NO='''+INV_NOEdit.Text+''' ');
          //funcobj.WriteErrorLog(sql.Text);
          execsql;
      end;

      //==================update old data when split RY=========================
      with query2 do
      begin
          //delete old data when split RY for old invoice - table Packing

          //---Nghia add new function 2015.10.24--------------------------------

          active:=false;
          sql.Clear;
          SQL.Add('SELECT  p.RYNO,p.XH,p.SIZ,CASE WHEN p.CTQ=newP.CTQ THEN(CASE WHEN p.CTZ>newP.CTZ THEN newP.CTZ+1 ELSE 0 END) ELSE p.CTQ END CTQ');
          SQL.Add('		,CASE WHEN p.CTZ=newP.CTZ THEN(CASE WHEN p.CTQ<newP.CTQ THEN newP.CTQ -1 ELSE 0 END ) ELSE P.CTZ END CTZ,p.CTS-newP.CTS CTS');
          SQL.Add('		,p.PAIRS-newP.PAIRS Pairs,a.NW NW,a.GW GW,a.CBM*(p.CTS-newP.CTS)CBM,p.CTQ CTQOld');
          sql.Add('   ,a.NW *(p.CTS-newP.CTS) TNW,a.GW*(p.CTS-newP.CTS) TGW ');
          SQL.Add('FROM PACKING p');
          SQL.Add('INNER JOIN(SELECT RYNO,XH,CTQ,CTZ,SIZ,CTS,PAIRS');
          SQL.Add('           FROM PACKING');
          SQL.Add('           WHERE INV_NO='''+INV_NOEdit.Text+'''');
          SQL.Add('		  )newP ON newP.RYNO=p.RYNO AND newP.XH=p.XH AND newP.SIZ=p.SIZ');
          SQL.Add('LEFT JOIN(');
          SQL.Add('			SELECT YWBZPO.DDBH,YWBZPO.XH,YWBZPOS.DDCC Siz,Round(TH.NW,2) as NW, Round(TH.GW,2) as GW');
          SQL.Add('				,Round(YWBZPO.CBM,4) as CBM');
          SQL.Add('			FROM YWBZPO INNER JOIN YWBZPOS on YWBZPO.DDBH=YWBZPOS.DDBH and YWBZPO.XH=YWBZPOS.XH');
          sql.Add('     LEFT JOIN YWDD ON YWBZPOS.DDBH=YWDD.DDBH');
          SQL.Add('			LEFT JOIN YWWX2 ON YWWX2.CLBH=YWBZPO.CLBH');
          SQL.Add('			LEFT JOIN(');
          SQL.Add('					  SELECT YWBZPO.DDBH,YWBZPO.XH,YWBZPO.CTS,sum((YWBZPO.CTS*YWBZPOS.QTY)) AS PAIRS');
          SQL.Add('								        ,Max(YWBZPO.NW) as NW,Max(YWBZPO.GW) as GW');
          SQL.Add('					  FROM YWBZPO inner join YWBZPOS on YWBZPO.DDBH=YWBZPOS.DDBH and YWBZPO.XH=YWBZPOS.XH');
          SQL.Add('					  LEFT JOIN YWDD ON YWBZPOS.DDBH=YWDD.DDBH');
          SQL.Add('					  LEFT JOIN DDzl ON YWDD.YSBH=DDZL.DDBH');
          SQL.Add('					  GROUP BY YWBZPO.DDBH,YWBZPO.XH,YWBZPO.CTS');
          SQL.Add('					)TH ON TH.DDBH=YWBZPO.DDBH and YWBZPO.XH=TH.XH');
          SQL.Add('		)A ON a.DDBH=p.RYNO AND A.XH=p.XH AND A.SIZ=p.SIZ');
          SQL.Add('WHERE p.INV_NO='''+SplitInvoice.qry1.fieldByName('Inv_No').asstring+'''');

          //funcobj.WriteErrorLog(sql.Text);
          active:=true;
          {
          active:=false;
          sql.Clear;
          SQL.Add('select * from PACKING');
          sql.Add('where INV_No ='''+InvNo_new+''' ');
          active:=true;
          }
          //-------------------end----------------------------------------------
      end;

      query2.First;
      while not query2.Eof do
      begin
          //--------------Nghia Add new function --2015.10.24---------------------
          if query2.FieldByName('CTS').Value>0 then
          begin
              query1.active:=false;
              query1.sql.Clear;
              query1.SQL.Add('UPDATE PACKING SET ');
              query1.SQL.Add('      CTQ='''+query2.fieldByName('CTQ').asstring+''' ');
              query1.SQL.Add('     ,CTZ='''+query2.fieldByName('CTZ').asstring+''' ');
              query1.SQL.Add('     ,CTS='''+query2.fieldByName('CTS').asstring+''' ');
              query1.SQL.Add('     ,PAIRS='''+query2.fieldByName('PAIRS').asstring+''' ');
              query1.SQL.Add('     ,NW='''+query2.fieldByName('NW').asstring+''' ');
              query1.SQL.Add('     ,GW='''+query2.fieldByName('GW').asstring+''' ');
              query1.SQL.Add('     ,TNW='''+query2.fieldByName('TNW').asstring+''' ');
              query1.SQL.Add('     ,TGW='''+query2.fieldByName('TGW').asstring+''' ');
              query1.SQL.Add('     ,CBM='''+query2.fieldByName('CBM').asstring+''' ');
              query1.sql.Add('WHERE INV_NO = '''+SplitInvoice.qry1.fieldByName('Inv_No').asstring+''' '); //invoice old
              query1.sql.Add('	AND RYNO = '''+query2.fieldByName('RYNO').asstring+''' ');
              query1.sql.Add('	AND XH ='''+query2.fieldByName('XH').asstring+'''');
              query1.sql.Add('	AND SIZ ='''+query2.fieldByName('SIZ').asstring+'''');
              query1.sql.Add('	AND CTQ ='''+query2.fieldByName('CTQOld').asstring+'''');
              //funcobj.WriteErrorLog(query1.sql.Text);
              query1.execsql;
          end else
          begin
              query1.active:=false;
              query1.sql.Clear;

              query1.SQL.Add('delete from PACKING ');
              query1.sql.Add('WHERE INV_NO = '''+SplitInvoice.qry1.fieldByName('Inv_No').asstring+''' '); //invoice old
              query1.sql.Add('	AND RYNO = '''+query2.fieldByName('RYNO').asstring+''' ');
              query1.sql.Add('	AND XH ='''+query2.fieldByName('XH').asstring+'''');
              query1.sql.Add('	AND SIZ ='''+query2.fieldByName('SIZ').asstring+'''');
              query1.sql.Add('	AND CTQ ='''+query2.fieldByName('CTQOld').asstring+'''');
              //funcobj.WriteErrorLog(query1.sql.Text);
              query1.execsql;
          end;
          query2.next;
      end;

      with query3 do
      begin
          active:=false;
          sql.Clear;
          sql.Add('delete FROM INVOICE_D');
          sql.Add('WHERE INV_NO = '''+SplitInvoice.qry1.fieldByName('Inv_No').asstring+''' ');
          sql.Add('	 AND NOT EXISTS (SELECT * FROM PACKING p WHERE INVOICE_D.INV_NO=p.INV_NO AND INVOICE_D.RYNO=p.RYNO)');

          sql.Add('delete FROM PACKING_D ');
          sql.Add('WHERE INV_NO = '''+SplitInvoice.qry1.fieldByName('Inv_No').asstring+''' ');
          sql.Add('	 AND NOT EXISTS (SELECT * FROM PACKING p WHERE PACKING_D.INV_NO=p.INV_NO AND PACKING_D.RYNO=p.RYNO)');
          //funcobj.WriteErrorLog(sql.Text);
          execsql;
      end;

      //get RY and pairs of this
      with query2 do
      begin
          active:=false;
          sql.Clear;
          sql.Add('SELECT a.INV_NO, a.RYNO,id.UNIT_PRICE,sum(a.PAIRS) Pairs,sum(CTS) CTS,SUM(a.TNW) NW,SUM(a.TGW) GW,SUM(a.CBM) CBM,id.UNIT_PRICE*sum(a.PAIRS) AS Amount');
          sql.Add('FROM (');
          sql.Add('SELECT p.INV_NO, p.RYNO, p.XH,p.PAIRS,p.TNW,p.TGW,p.CBM,p.CTS');
          sql.Add('FROM PACKING p WHERE p.INV_NO = '''+SplitInvoice.qry1.fieldByName('Inv_No').asstring+''' ');
          sql.Add('group by p.INV_NO, p.RYNO, p.XH,p.PAIRS,p.TNW,p.TGW,p.CBM,p.CTS');
          sql.Add(')a LEFT JOIN INVOICE_D id ON id.INV_NO = a.INV_NO AND id.RYNO = a.RYNO ');
          sql.Add('group by a.INV_NO, a.RYNO,id.UNIT_PRICE');
          //funcobj.WriteErrorLog(sql.Text);
          active:=true;
      end;

      query2.First;
      while not query2.Eof do
      begin
         query1.active:=false;
         query1.sql.Clear;

         //update invoice_D 
         query1.SQL.Add('update INVOICE_D set');
         query1.SQL.Add('  PAIRS= '''+ query2.fieldbyName('PAIRS').AsString + ''' ');
         query1.SQL.Add('  ,Amount='''+ query2.fieldbyName('Amount').AsString + ''' ');
         query1.SQL.Add('  ,UserID='''+Main.edit1.text+''' ');
         query1.SQL.Add('  ,UserDate=getdate()');
         query1.SQL.Add('WHERE INV_NO='''+query2.fieldbyName('INV_NO').AsString+''' AND RYNO='''+query2.fieldbyName('RYNO').AsString+'''');

         //update table packing_D for detail RY
         Query1.sql.Add('update PACKING_D set ');
         Query1.sql.Add('   CTS='''+query2.fieldbyName('CTS').AsString+''' ');
         Query1.sql.Add('   ,PAIRS='''+query2.fieldbyName('PAIRS').AsString+''' ');
         Query1.sql.Add('   ,NW='''+query2.fieldbyName('NW').AsString+''' ');
         Query1.sql.Add('   ,GW='''+query2.fieldbyName('GW').AsString+''' ');
         Query1.sql.Add('   ,CBM='''+query2.fieldbyName('CBM').AsString+''' ');
         query1.SQL.Add('  ,UserID='''+Main.edit1.text+''' ');
         query1.SQL.Add('  ,UserDate=getdate()');
         Query1.SQL.Add('where RYNO='''+query2.fieldbyName('RYNO').AsString+'''  ');
         Query1.SQL.Add('      and INV_No ='''+query2.fieldbyName('INV_No').AsString+''' ');
         //funcobj.WriteErrorLog(query1.sql.Text);

         Query1.execsql;

         query2.Next;
      end;


      //get total Pairs for old invoice follow RY.
      word1:='';
      amount_word:='';
      with query2 do
      begin
          active:=false;
          sql.Clear;
          sql.Add('select SUM(PAIRS) AS TotalPairs,SUM(AMOUNT) TotalAmount FROM INVOICE_D WHERE INV_NO= '''+SplitInvoice.qry1.fieldByName('Inv_No').asstring+''' ');
          active:=true;
      end;

      word1:= ConvertToWords(query2.FieldByName('TotalAmount').AsFloat,true);
      amount_word:=upperCase(leftstr(word1,1)) + copy(word1,2,length(word1)-1);

      //update total Pair and total Amount for old invoice
      with query1 do
      begin
          active:=false;
          sql.Clear;
          sql.Add('UPDATE INVOICE_M SET');
          sql.Add(' 	TOTAL_PAIRS = '''+query2.fieldbyName('TotalPairs').AsString+''' ');
          sql.Add('	  ,TOTAL_AMOUNT ='''+query2.fieldbyName('TotalAmount').AsString+''' ');
          sql.Add('	  ,TOTAL_AMOUNT_WORD ='''+amount_word+''' ');
          sql.Add('WHERE INV_NO='''+SplitInvoice.qry1.fieldByName('Inv_No').asstring+''' ');

          //update pack_no in INVOICE_D
          sql.Add('UPDATE ID SET ID.Pack_No =a.IDNO');
          sql.Add('FROM INVOICE_D ID');
          sql.Add('LEFT JOIN');
          sql.Add(' ( select ROW_NUMBER() OVER (ORDER BY RYNO)IDNO,RYNO,INV_NO');
          sql.Add('   from INVOICE_D WHERE INV_NO='''+SplitInvoice.qry1.fieldByName('Inv_No').asstring+'''');
          sql.Add('  )a ON a.RYNO=ID.RYNO AND a.INV_NO=ID.INV_NO');
          sql.Add('where ID.INV_NO='''+SplitInvoice.qry1.fieldByName('Inv_No').asstring+''' ');
          //funcobj.WriteErrorLog(sql.Text);
          execsql;
      end;

      showmessage('Split RY successfully!!!');

      //=============================end======================================== 
      SplitInvoice.qry1.Active:=false;
      SplitInvoice.qry1.Active:=true;

      SplitInvoice.btnAdd.Enabled:=true;
      SplitInvoice.btnAddMore.Enabled:=false;
      close;
     except
          showmessage('Error...Can not split RY for this invoice.');
          abort;
     end;
    end;

end;

procedure TSplitInvoice_RY.Button4Click(Sender: TObject);
begin
    if (paking.Active) and (paking.RecordCount > 0) then
    begin
        with query1 do
        begin
            active:=false;
            sql.Clear;
            sql.Add('delete from #PACKING');
            sql.Add('where RYno = '''+paking.fieldByName('RYno').asstring+''' ');
            sql.Add('		  AND XH ='''+paking.fieldByName('XH').asstring+'''');
            sql.Add('		  AND SIZ ='''+paking.fieldByName('SIZ').asstring+'''');
            sql.Add('		  AND CTQ ='''+paking.fieldByName('CTQ').asstring+'''');
            sql.Add('		  AND CTZ ='''+paking.fieldByName('CTZ').asstring+'''');
            execsql;
        end;
        paking.Active:=false;
        packing_D.Active:=false;
        packing_D.Active:=true;
        paking.Active:=true;
    end
    else
    begin
        abort;
    end;
end;

procedure TSplitInvoice_RY.Button2Click(Sender: TObject);
begin
  paking.RequestLive:=true;
  paking.CachedUpdates:=true;
  paking.edit;

  btnsave.Enabled:=true;
  Button3.Enabled:=true;
end;

///-----------nghia add new function 2015.10.24---------------------------------

procedure TSplitInvoice_RY.pakingCTQChange(Sender: TField);
var J:variant;
begin
  if (Sender.Value=0)or(trim(Sender.AsString)='')then
  begin
    showmessage('Value can not empty or 0 ! Pls, input again');
    Sender.Value:=Sender.OldValue;
    exit;
  end;
  if(Sender.Value<paking.FieldByName('CTQ_Old').Value)or(Sender.Value>paking.FieldByName('CTZ_Old').Value)then
  begin
    showmessage('Value can input from '+paking.FieldByName('CTQ_Old').AsString+' to '+paking.FieldByName('CTZ_Old').AsString);
    Sender.Value:=Sender.OldValue;
    exit;
  end;
  if (Sender.FieldName='CTQ')and(Sender.Value<>paking.FieldByName('CTQ_Old').Value)
  and(paking.FieldByName('CTZ_Old').Value<>paking.FieldByName('CTZ').Value) then
  begin
    showmessage('Pls, Check again value input . Example(CTQ ->CTZ) : '+paking.FieldByName('CTQ_Old').AsString+'-> ???(number input) or (number input)??? -> '+ paking.FieldByName('CTZ_Old').AsString);
    Sender.Value:=Sender.OldValue;
    exit;
  end;
  if (Sender.FieldName='CTZ')and(Sender.Value<>paking.FieldByName('CTZ_Old').Value)
  and(paking.FieldByName('CTQ_Old').Value<>paking.FieldByName('CTQ').Value) then
  begin
    showmessage('Pls, Check again value input . Example(CTQ ->CTZ) : '+paking.FieldByName('CTQ_Old').AsString+'-> ???(number input) or (number input)??? -> '+ paking.FieldByName('CTZ_Old').AsString);
    Sender.Value:=Sender.OldValue;
    exit;
  end;
  if paking.FieldByName('CTZ').Value - paking.FieldByName('CTQ').Value <0 then
  begin
    showmessage('Pls, Check again value input .(CTQ<=CTZ)');
    Sender.Value:=Sender.OldValue;
    exit;
  end;
  if (not paking.FieldByName('CTZ').IsNull) and (not paking.FieldByName('CTQ').IsNull) then
  begin
      paking.FieldByName('CTS').Value:= paking.FieldByName('CTZ').Value - paking.FieldByName('CTQ').Value +1;
      if (paking.FieldByName('Pairs_Old').AsString<>'') and (paking.FieldByName('Pairs_Old').Value>0) then
        paking.FieldByName('PAIRS').Value:=(paking.FieldByName('CTZ').Value - paking.FieldByName('CTQ').Value +1)*
            paking.FieldByName('Pairs_Old').Value/(paking.FieldByName('CTZ_Old').Value - paking.FieldByName('CTQ_Old').Value +1)
      else
         paking.FieldByName('PAIRS').Value:=0;
      //paking.FieldByName('PAIRS').Value:= paking.FieldByName('CTS').Value * paking.FieldByName('Qty').Value;
      with Query2 do
      begin
          Close;
          SQL.Clear;
          sql.Add('SELECT  Round(TH.NW,2) as NW, Round(TH.GW,2) as GW');
          SQL.Add('    , Round(TH.NW,2)*CAST('''+paking.FieldByName('CTS').AsString+'''AS INT) AS TNW ');
          sql.Add('    , Round(TH.GW,2)*CAST('''+paking.FieldByName('CTS').AsString+'''AS INT) AS TGW');
          sql.Add('    , Round(YWBZPO.CBM,4)*CAST('''+paking.FieldByName('CTS').AsString+'''AS INT) as CBM');
          SQL.Add('FROM YWBZPO inner join YWBZPOS on YWBZPO.DDBH=YWBZPOS.DDBH and YWBZPO.XH=YWBZPOS.XH');
          sql.Add('LEFT JOIN YWDD ON YWBZPOS.DDBH=YWDD.DDBH');
          SQL.Add('left join YWWX2 on YWWX2.CLBH=YWBZPO.CLBH');
          SQL.Add('left join (');
          SQL.Add('						SELECT YWBZPO.DDBH,YWBZPO.XH,YWBZPO.CTS,sum((YWBZPO.CTS*YWBZPOS.QTY)) AS PAIRS');
          SQL.Add('								        ,Max(YWBZPO.NW) as NW,Max(YWBZPO.GW) as GW');
          SQL.Add('						FROM YWBZPO inner join YWBZPOS on YWBZPO.DDBH=YWBZPOS.DDBH and YWBZPO.XH=YWBZPOS.XH');
          SQL.Add('           LEFT JOIN YWDD ON YWBZPOS.DDBH=YWDD.DDBH');
          SQL.Add('				    left join DDzl on YWDD.YSBH=DDZL.DDBH');
          SQL.Add('           where YWBZPO.DDBH ='''+paking.FieldByName('RYNO').AsString+''' ');
          sql.Add('                 AND YWBZPO.XH='''+paking.FieldByName('XH').AsString+'''');
    			SQL.Add('				    group by YWBZPO.DDBH,YWBZPO.XH,YWBZPO.CTS');
          SQL.Add('		      )TH on TH.DDBH=YWBZPO.DDBH and YWBZPO.XH=TH.XH');
          SQL.Add('where YWBZPO.DDBH ='''+paking.FieldByName('RYNO').AsString+''' ');
          sql.Add('     AND YWBZPO.XH='''+paking.FieldByName('XH').AsString+'''');
          sql.Add('     AND YWBZPOS.DDCC='''+paking.FieldByName('SIZ').AsString+'''');
          //funcobj.WriteErrorLog(sql.Text);
          open;
      end;
      paking.FieldByName('NW').Value:= formatfloat('#0.00',Query2.FieldByName('NW').Value );
      paking.FieldByName('GW').Value:= formatfloat('#0.00',Query2.FieldByName('GW').Value );
      paking.FieldByName('TNW').Value:= formatfloat('#0.00',Query2.FieldByName('TNW').Value );
      paking.FieldByName('TGW').Value:= formatfloat('#0.00',Query2.FieldByName('TGW').Value );
      paking.FieldByName('CBM').Value:= formatfloat('#0.0000',Query2.FieldByName('CBM').Value );

      //update #PACKING again
      with query1 do
      begin
          active:=false;
          sql.Clear;
          sql.Add('update #PACKING set');
          sql.Add('     CTQ = '''+paking.FieldByName('CTQ').AsString+''' ');
          sql.Add('     ,CTZ = '''+paking.FieldByName('CTZ').AsString+''' ');
          sql.Add('     ,CTS = '''+paking.FieldByName('CTS').AsString+''' ');
          sql.Add('     ,PAIRS = '''+paking.FieldByName('PAIRS').AsString+''' ');
          sql.Add('     ,NW = '''+paking.FieldByName('NW').AsString+''' ');
          sql.Add('     ,GW = '''+paking.FieldByName('GW').AsString+''' ');
          sql.Add('     ,TNW = '''+paking.FieldByName('TNW').AsString+''' ');
          sql.Add('     ,TGW = '''+paking.FieldByName('TGW').AsString+''' ');
          sql.Add('     ,CBM = '''+paking.FieldByName('CBM').AsString+''' ');
          sql.Add('where RYno= '''+paking.FieldByName('RYno').AsString+''' ');
          sql.Add('       and XH= '''+paking.FieldByName('XH').AsString+''' ');
          sql.Add('       and Siz= '''+paking.FieldByName('Siz').AsString+''' ');
          execsql;
      end;
      J:= paking.fieldbyname('ID').AsString;
      paking.Active:=false;
      paking.Active:=true;

      packing_D.Active:=false;
      packing_D.Active:=true;
      IF J<>' ' THEN paking.Locate('ID',J,[]) ;
  end;

end;

//------------------------------end---------------------------------------------

procedure TSplitInvoice_RY.SpeedButton2Click(Sender: TObject);
var S_brand,tmpStr:string;
    Posi:integer;
    iValue, iCode: Integer;
    User_MakeInv_OK:boolean;
begin
  //
  INV_NOEdit.Color:=clwhite;
  if INV_NOEdit.Text<>'' then
  begin
      //check invoice exists or not
      with query1 do
      begin
          active:=false;
          sql.Clear;
          sql.Add('select * from INVOICE_M');
          SQL.Add('where INV_NO ='''+INV_NOEdit.Text+'''');
          active:=true;
          if RecordCount = 0 then  //沒有重覆手動輸入INV_NO 代碼檢查
          begin
            //解析
            if CheckInvoice='TX' then
            begin
              Posi:=Pos('LYNY',INV_NOEdit.Text);
            end else
            begin
              Posi:=Pos('-',INV_NOEdit.Text);
            end;
            if Posi>0 then
            begin
              if CheckInvoice='TX' then
              begin
                S_brand:=Copy(INV_NOEdit.Text,4,1);
                tmpStr:= INV_NOEdit.Text;
                MakeINV_Brand:=CodeID_GetBrand(S_brand);
                MakeINV_NO:=Copy(tmpStr,7,length(tmpStr));
                MakeINV_Factory:='TX';
                MakeINV_YEAR:=Copy(tmpStr,5,2);
              end else
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
              end;
              User_MakeInv_OK:=true;
              if length(MakeINV_YEAR)<>2 then  User_MakeInv_OK:=false;
              //if MakeINV_Brand<>GetBrandName(cboBrand.Text) then User_MakeInv_OK:=false;
              if MakeINV_Brand<> SplitInvoice.qry1.fieldByName('BRAND').asstring then User_MakeInv_OK:=false;
              if ((MakeINV_Brand<>'') and (MakeINV_Factory=Factory)) then
              begin
                //檢查是否為整數
                val(MakeINV_NO, iValue,  iCode);
                if iCode<>0 then   User_MakeInv_OK:=false;
                val(MakeINV_YEAR, iValue,  iCode);
                if iCOde<>0 then   User_MakeInv_OK:=false;
              end else
              begin
                User_MakeInv_OK:=false;
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

procedure TSplitInvoice_RY.INV_NOEditChange(Sender: TObject);
begin
  INV_NOEdit.Color:=clWindow;
end;

end.
