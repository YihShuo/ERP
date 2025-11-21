unit AddRy1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ExtCtrls,StrUtils,NumberToWords;

type
  TAddRy = class(TForm)
    Panel4: TPanel;
    Label1: TLabel;
    Label13: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    ComboBox6: TComboBox;
    ComboBox7: TComboBox;
    chkMonth: TCheckBox;
    DBGridEh1: TDBGridEh;
    DS1: TDataSource;
    Query1: TQuery;
    Query1YN: TIntegerField;
    Query1RY: TStringField;
    Query1StyleName: TStringField;
    Query1PO: TStringField;
    Query1CustOrdNo: TStringField;
    Query1Article: TStringField;
    Query1Pairs: TIntegerField;
    Query1CustID: TStringField;
    Query1Brand: TStringField;
    CheckBox2: TCheckBox;
    Button2: TButton;
    UpdateSQL1: TUpdateSQL;
    qry_tmp1: TQuery;
    qry_tmp2: TQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AddRy: TAddRy;

implementation

uses InvoicePL1,Main1;

{$R *.dfm}

procedure TAddRy.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    action:=cafree;
end;

procedure TAddRy.FormDestroy(Sender: TObject);
begin
    AddRy:=nil;
end;

procedure TAddRy.Button1Click(Sender: TObject);
var s_yymm:string;
begin
  s_yymm:='';
  if chkMonth.Checked then
      s_yymm:=copy(ComboBox6.Text,3,2)+ComboBox7.Text
  else
      s_yymm:=copy(ComboBox6.Text,3,2);

  Query1.Close;
  Query1.SQL.Clear;
  Query1.SQL.Add('select  0 as YN,orderno as RY,afl as StyleName,custord as PO,custord2 as CustOrdNo,article as Article,pairqty as Pairs,MCUSTMER as CustID,Brand');
  Query1.SQL.Add('from DE_ORDERM ');
  Query1.SQL.Add('where 1=1');
  Query1.SQL.Add('    and DE_ORDERM.MCUSTMER = '''+InvoicePL.Query1.fieldbyName('CustID').AsString+''' ');
  Query1.SQL.Add(     'and orderno like ''A'+s_yymm+'%''');

  {
  if cboBrand.Text = 'Adidas' then
      Query1.SQL.Add(     'and orderno like ''A'+s_yymm+'%''');
  if cboBrand.Text = 'Reebok' then
      Query1.SQL.Add(     'and orderno like ''R'+s_yymm+'%''');
  }
  
  Query1.SQL.Add('and DE_ORDERM.orderno not in (select RYNO from INVOICE_D)');

  if CheckBox2.Checked then
      Query1.SQL.Add('and DE_ORDERM.orderno in (select RYNO from RY_VNPRICE)');

  if Edit1.Text<>'' then
      Query1.SQL.Add('and orderno like ''%'+Edit1.Text+'%''');

  Query1.SQL.Add('order by orderno');

  Query1.Open;

  DBGridEh1.Columns[0].title.caption:='';

end;

procedure TAddRy.FormCreate(Sender: TObject);
begin
   ComboBox6.Text:= formatdatetime('yyyy',date);
   ComboBox7.Text:= formatdatetime('mm',date);

   Button1Click(nil);
end;

procedure TAddRy.Button2Click(Sender: TObject);
var RYSting,word,amount_word,RY:string;
    pack_no:integer;
    j:variant;
begin
   RYSting:='';
   j:= InvoicePL.Query1.FieldByName('Inv_no').Value;
   if Query1.Active then
   begin
      Query1.First;
      while not Query1.Eof do
      begin
          if Query1.FieldByName('YN').AsInteger=1 then
          begin
              RYSting:=RYSting+''''+Query1.FieldByName('RY').AsString+''',';
          end;
          Query1.Next;
      end;
   end;
   RYSting:=LeftStr(RYSting,length(RYSting)-1);

   if RYSting <> '' then
   begin
     try
       with qry_tmp2 do
       begin
          active:=false;
          sql.Clear;
          sql.Add('SELECT max(pack_no)pack_no FROM invoice_D WHERE INV_NO='''+InvoicePL.Query1.fieldbyName('Inv_no').AsString+''' ');
          active:=true;
          if RecordCount = 0 then
              pack_no :=1
          else
              pack_no :=  qry_tmp2.fieldbyName('Pack_no').Value;
       end;

       qry_tmp1.Close;
       qry_tmp1.SQL.Clear;
       qry_tmp1.SQL.Add('select DE_ORDERM.orderno as RY,DE_ORDERM.afl as StyleName,DE_ORDERM.custord as PO,DE_ORDERM.custord2 as CustOrdNo,DE_ORDERM.article as Article,DE_ORDERM.pairqty as Pairs,');
       qry_tmp1.SQL.Add('max(DE_ORDERD.siz) as MaxSiz,min(DE_ORDERD.siz) as MinSiz,RY_VNPRICE.VNPRICE,DE_ORDERM.pairqty*RY_VNPRICE.VNPRICE as Amount');
       qry_tmp1.SQL.Add('from DE_ORDERM left join DE_ORDERD on DE_ORDERD.orderno=DE_ORDERM.orderno');
       qry_tmp1.SQL.Add('               left join RY_VNPRICE on RY_VNPRICE.RYNO=DE_ORDERM.orderno');
       qry_tmp1.SQL.Add('where DE_ORDERM.orderno in ('+RYSting+')');
       qry_tmp1.SQL.Add('group by DE_ORDERM.orderno,DE_ORDERM.afl,DE_ORDERM.custord,DE_ORDERM.custord2,DE_ORDERM.article,DE_ORDERM.pairqty,RY_VNPRICE.VNPRICE');
       qry_tmp1.SQL.Add('order by DE_ORDERM.orderno ');
       qry_tmp1.Open;

       //insert INVOICE_D
       qry_tmp1.First;
       pack_no:=pack_no +1 ;
       while not (qry_tmp1.Eof) do
       begin
          
          qry_tmp2.Close;
          qry_tmp2.SQL.Clear;
          qry_tmp2.SQL.Add('insert into INVOICE_D (INV_NO,PACK_NO,RYNO,STYLE_NAME,PO,CUSTORDNO,ARTICLE,SIZE_RUN,PAIRS,UNIT_PRICE,AMOUNT,UserID,UserDate)');
          qry_tmp2.SQL.Add('values ('''+InvoicePL.Query1.fieldbyName('Inv_no').AsString+''','''+inttostr(pack_no)+''','''+qry_tmp1.FieldByName('RY').AsString+''','''+qry_tmp1.FieldByName('StyleName').AsString+''','''+qry_tmp1.FieldByName('PO').AsString+''','''+qry_tmp1.FieldByName('CustOrdNo').AsString+''','''+qry_tmp1.FieldByName('Article').AsString+''','''+qry_tmp1.FieldByName('MinSiz').AsString+'-'+qry_tmp1.FieldByName('MaxSiz').AsString+''','''+qry_tmp1.FieldByName('Pairs').AsString+''','''+qry_tmp1.FieldByName('VNPRICE').AsString+''','''+qry_tmp1.FieldByName('Amount').AsString+''','''+Main.Edit1.Text+''',getdate() )');
          qry_tmp2.ExecSQL;

          qry_tmp1.Next;
          pack_no:=pack_no +1 ;
      end;

      //insert Packing
      qry_tmp2.Close;
      qry_tmp2.SQL.Clear;
      qry_tmp2.SQL.Add('INSERT INTO PACKING(INV_NO,RYNO,XH,SIZ,CTQ,CTZ,CTS,QTY,PAIRS,NW,GW,L,W,H,CBM,USERID,USERDATE)');

      qry_tmp2.SQL.Add('SELECT '''+InvoicePL.Query1.fieldbyName('Inv_no').AsString+''' AS INV_NO,YWBZPO.DDBH,YWBZPO.XH,YWBZPOS.DDCC,YWBZPO.CTQ,YWBZPO.CTZ');
      qry_tmp2.SQL.Add('		,TH.CTS,YWBZPOS.QTY,TH.PAIRS');
      qry_tmp2.SQL.Add('		,TH.NW*YWBZPO.CTS as NW,(TH.NW + round(YWWX2.OWeigh,2))*YWBZPO.CTS  as GW');
      qry_tmp2.SQL.Add('		,(YWBZPO.L+6)*0.001 AS L,(YWBZPO.W+6)*0.001 AS W,(YWBZPO.H+9)*0.001 AS H');
      qry_tmp2.SQL.Add('    ,(((YWBZPO.L+6)*0.001) * ((YWBZPO.W+6)*0.001) * ((YWBZPO.H+9)*0.001))*YWBZPO.CTS AS CBM');
      //qry_tmp2.SQL.Add('		,(cast(((CAST((YWWX2.Length+6) as decimal(15,3))/1000) *(CAST((YWWX2.Width+6) as decimal(15,3))/1000) *(CAST((YWWX2.Height+9) as decimal(15,3))/1000)) as decimal(15,3)))*YWBZPO.CTS as CBM');
      qry_tmp2.SQL.Add('   ,'''+Main.Edit1.Text+''',getdate() ');
      qry_tmp2.SQL.Add('FROM YWBZPO left join YWBZPOS on YWBZPO.DDBH=YWBZPOS.DDBH and YWBZPO.XH=YWBZPOS.XH');
      qry_tmp2.SQL.Add('				left join DDzl on YWBZPOS.DDBH=DDZL.DDBH');
      qry_tmp2.SQL.Add('				left join YWXX on YWXX.article=DDZl.article and YWXX.XXCC=YWBZPOS.DDCC');
      qry_tmp2.SQL.Add('				left join YWWX2 on YWWX2.CLBH=YWBZPO.CLBH');
      qry_tmp2.SQL.Add('				left join (');
      qry_tmp2.SQL.Add('							      SELECT YWBZPO.DDBH,YWBZPO.XH,YWBZPO.CTS,sum((YWBZPO.CTS*YWBZPOS.QTY)) AS PAIRS');
      qry_tmp2.SQL.Add('								        ,sum(round(YWXX.OWeigh,2)*YWBZPOS.Qty) as NW');
      qry_tmp2.SQL.Add('							      FROM YWBZPO left join YWBZPOS on YWBZPO.DDBH=YWBZPOS.DDBH and YWBZPO.XH=YWBZPOS.XH');
      qry_tmp2.SQL.Add('										    left join DDzl on YWBZPOS.DDBH=DDZL.DDBH');
      qry_tmp2.SQL.Add('										    left join YWXX on YWXX.article=DDZl.article and YWXX.XXCC=YWBZPOS.DDCC');
      qry_tmp2.SQL.Add('                    where YWBZPO.DDBH in ('+RYSting+')');
			qry_tmp2.SQL.Add('				            group by YWBZPO.DDBH,YWBZPO.XH,YWBZPO.CTS');
      qry_tmp2.SQL.Add('		              )TH on TH.DDBH=YWBZPO.DDBH and YWBZPO.XH=TH.XH');
      qry_tmp2.SQL.Add('where YWBZPO.DDBH in ('+RYSting+')');
      qry_tmp2.SQL.Add('order by YWBZPO.XH');
      qry_tmp2.ExecSQL;

      //insert Packing_D
      //get RY as invoice
      qry_tmp1.active:=false;
      qry_tmp1.sql.Clear;
      qry_tmp1.sql.Add('select Inv_No,RYNO from Invoice_D');
      qry_tmp1.sql.Add('where inv_no='''+InvoicePL.Query1.fieldbyName('Inv_no').AsString+''' ');
      qry_tmp1.sql.Add('group by Inv_No,RYNO');
      qry_tmp1.active:=true;
      RY:='';
      while not qry_tmp1.eof do
      begin
          RY:= qry_tmp1.fieldbyName('RYNO').AsString;
          //delete table Packing_D if exists
          qry_tmp2.active:=false;
          qry_tmp2.SQL.Clear;
          qry_tmp2.sql.Add('delete from Packing_D');
          qry_tmp2.SQL.Add('where RYNO='''+RY+'''  ');
          qry_tmp2.SQL.Add('       and INV_No ='''+InvoicePL.Query1.fieldbyName('Inv_no').AsString+''' ');
          qry_tmp2.execsql;

          //update table packing_D for detail RY
          qry_tmp2.active:=false;
          qry_tmp2.SQL.Clear;
          qry_tmp2.sql.Add('INSERT INTO PACKING_D (INV_NO,RYNO,CTS,Pairs,NW,GW,CBM,UserID,UserDate)');
          qry_tmp2.SQL.Add('SELECT '''+InvoicePL.Query1.fieldbyName('Inv_no').AsString+''' as Inv_No,'''+RY+''' as RYNO');
          qry_tmp2.SQL.Add('       ,(select sum(CTS) from YWBZPO where YWBZPO.DDBH=INVOICE_D.RYNO )CTS');
          qry_tmp2.SQL.Add('       ,INVOICE_D.Pairs,SUM(NW),SUM(GW),round(SUM(CBM),3),'''+Main.Edit1.Text+''',getdate() ');
          qry_tmp2.SQL.Add('FROM INVOICE_D left join');
          qry_tmp2.SQL.Add('                         (select Inv_No,RYNo,XH,NW,GW,CBM from PACKING');
          qry_tmp2.SQL.Add('	                            group by Inv_No,RYNo,XH,NW,GW,CBM');
          qry_tmp2.SQL.Add('                          )PACKING on INVOICE_D.RYNO=PACKING.RYNO and INVOICE_D.Inv_No=PACKING.Inv_No');
          qry_tmp2.SQL.Add('where INVOICE_D.RYNO='''+RY+'''  ');
          qry_tmp2.SQL.Add('       and INVOICE_D.INV_No ='''+InvoicePL.Query1.fieldbyName('Inv_no').AsString+''' ');
          qry_tmp2.SQL.Add('group by INVOICE_D.RyNo,INVOICE_D.Pairs');
          qry_tmp2.execsql;

          qry_tmp1.next;
       end;

       //TotalAmount
       qry_tmp2.Close;
       qry_tmp2.SQL.Clear;
       qry_tmp2.SQL.Add('SELECT SUM(PAIRS) AS TotalPairs,SUM(AMOUNT) TotalAmount FROM invoice_D ');
       qry_tmp2.SQL.Add('WHERE INV_NO='''+InvoicePL.Query1.fieldbyName('Inv_no').AsString+''' ');
       qry_tmp2.Open;

       word:= ConvertToWords(qry_tmp2.FieldByName('TotalAmount').AsFloat,true);
       amount_word:=upperCase(leftstr(word,1)) + copy(word,2,length(word)-1);

       //update table INVOICE_M
       with qry_tmp1 do
       begin
          active:=false;
          sql.Clear;
          sql.Add('UPDATE INVOICE_M SET');
          sql.Add(' 	TOTAL_PAIRS = '''+qry_tmp2.fieldbyName('TotalPairs').AsString+''' ');
          sql.Add('	  ,TOTAL_AMOUNT ='''+qry_tmp2.fieldbyName('TotalAmount').AsString+''' ');
          sql.Add('	  ,TOTAL_AMOUNT_WORD ='''+amount_word+''' ');
          sql.Add('WHERE INV_NO='''+InvoicePL.Query1.fieldbyName('Inv_no').AsString+''' ');
          execsql;
       end;

       showmessage('Add RY successfuly!!!');
       close;
       InvoicePL.Query1.Active:=false;
       InvoicePL.Query1.Active:=true;
       if j<> '' then InvoicePL.Query1.Locate('Inv_no',j,[]);
      except
          showmessage('Error, can not add RY');
          abort;
      end;
   end
   else
   begin
      showmessage('You must select RY first!!!');
      abort;
   end;
end;

end.
