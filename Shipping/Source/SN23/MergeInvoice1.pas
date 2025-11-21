unit MergeInvoice1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Mask, DBCtrls, Buttons, ExtCtrls, GridsEh,
  DBGridEh, Menus, DBTables, DB,NumberToWords ,StrUtils;

type
  TMergeInvoice = class(TForm)
    qry_invs: TQuery;
    qry_invsINV_DATE: TDateTimeField;
    qry_invsRISK: TStringField;
    qry_invsSHIP_BY: TStringField;
    qry_invsFROM_WHERE: TStringField;
    qry_invsTO_WHERE: TStringField;
    qry_invsTOTAL_PAIRS: TIntegerField;
    qry_invsTOTAL_AMOUNT: TCurrencyField;
    qry_invsCUSTID: TStringField;
    qry_invsCURRENCY: TStringField;
    qry_invsSeason: TStringField;
    qry_invsStage: TStringField;
    qry_invsInv_Type: TStringField;
    qry_invsYB: TIntegerField;
    qry_invsINV_NO: TStringField;
    qry_invsInv_Sup: TStringField;
    DS_Inv: TDataSource;
    qry_ry2: TQuery;
    qry_ry2PACK_NO: TStringField;
    qry_ry2STYLE_NAME: TStringField;
    qry_ry2PO: TStringField;
    qry_ry2CUSTORDNO: TStringField;
    qry_ry2ARTICLE: TStringField;
    qry_ry2SIZE_RUN: TStringField;
    qry_ry2PAIRS: TIntegerField;
    qry_ry2UNIT_PRICE: TCurrencyField;
    qry_ry2AMOUNT: TCurrencyField;
    qry_ry2INV_NO: TStringField;
    qry_ry2RYNO: TStringField;
    DS_InvS: TDataSource;
    qry_inv: TQuery;
    qry_invINV_DATE: TDateTimeField;
    qry_invSHIP_BY: TStringField;
    qry_invFROM_WHERE: TStringField;
    qry_invTO_WHERE: TStringField;
    qry_invTOTAL_PAIRS: TIntegerField;
    qry_invTOTAL_AMOUNT: TCurrencyField;
    qry_invTOTAL_AMOUNT_WORD: TStringField;
    qry_invBRAND: TStringField;
    qry_invNO: TIntegerField;
    qry_invFACTORY: TStringField;
    qry_invYEAR: TStringField;
    qry_invSAVE_USER: TStringField;
    qry_invSAVE_TIME: TDateTimeField;
    qry_invPRINT_LOCK: TStringField;
    qry_invCFM_USER: TStringField;
    qry_invCFM_TIME: TDateTimeField;
    qry_invCFMED: TStringField;
    qry_invPRINT_USER: TStringField;
    qry_invPRINT_TIME: TDateTimeField;
    qry_invUNLOCK_USER: TStringField;
    qry_invUNLOCK_TIME: TDateTimeField;
    qry_invYN: TStringField;
    qry_invCUSTID: TStringField;
    qry_invCURRENCY: TStringField;
    qry_invSeason: TStringField;
    qry_invStage: TStringField;
    qry_invInv_Type: TStringField;
    qry_invINV_NO: TStringField;
    qry_invRISK: TStringField;
    DS3: TDataSource;
    UpdRY1: TUpdateSQL;
    Query1: TQuery;
    Query2: TQuery;
    Pop_Inv4: TPopupMenu;
    Modify1: TMenuItem;
    Delete1: TMenuItem;
    Save1: TMenuItem;
    Cancel1: TMenuItem;
    N1: TMenuItem;
    Unconfirm1: TMenuItem;
    qry_invSS: TQuery;
    StringField66: TStringField;
    StringField68: TStringField;
    StringField71: TStringField;
    StringField72: TStringField;
    StringField73: TStringField;
    StringField74: TStringField;
    IntegerField16: TIntegerField;
    CurrencyField6: TCurrencyField;
    CurrencyField7: TCurrencyField;
    StringField76: TStringField;
    DateTimeField15: TDateTimeField;
    StringField77: TStringField;
    qry_invSSINV_NO: TStringField;
    qry_invSSRYNO: TStringField;
    DS_InvSS: TDataSource;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel2: TPanel;
    Splitter1: TSplitter;
    Panel4: TPanel;
    btnMerge: TButton;
    btnModify: TButton;
    btncancel: TButton;
    Panel3: TPanel;
    DBGridEh1: TDBGridEh;
    DBGridEh3: TDBGridEh;
    Panel5: TPanel;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Edit3: TEdit;
    Button2: TButton;
    Edit2: TEdit;
    Panel13: TPanel;
    Splitter8: TSplitter;
    DBGridEh2: TDBGridEh;
    DBGridEh12: TDBGridEh;
    Panel14: TPanel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Chk_Indate1: TCheckBox;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    Edt_Inv: TEdit;
    Button3: TButton;
    Edt_Cust: TEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure qry_invAfterOpen(DataSet: TDataSet);
    procedure qry_invBeforeClose(DataSet: TDataSet);
    procedure qry_invsBeforeClose(DataSet: TDataSet);
    procedure btnModifyClick(Sender: TObject);
    procedure btncancelClick(Sender: TObject);
    procedure btnMergeClick(Sender: TObject);
    procedure qry_invsAfterOpen(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MergeInvoice: TMergeInvoice;

implementation

uses main1,FunUnit;

{$R *.dfm}

procedure TMergeInvoice.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TMergeInvoice.FormDestroy(Sender: TObject);
begin
  MergeInvoice:=nil;
end;

procedure TMergeInvoice.Button3Click(Sender: TObject);
begin
  if qry_invs.RequestLive then
  begin
      showmessage('You must save data first.');
      abort;
  end;  
  qry_inv.Active:=false;
  if(not Chk_Indate1.Checked)and(trim(Edt_Inv.Text)='')and(trim(Edt_Cust.Text)='')then
  begin
    Messagedlg('Pls, input data for FILLTER first!',mtwarning,[mbyes],0);
    abort;
  end;
    with qry_inv do
    begin
        active:=false;
        sql.Clear;
        sql.Add('SELECT im.INV_NO, im.INV_DATE, im.RISK, im.SHIP_BY, im.FROM_WHERE, im.TO_WHERE,im.TOTAL_PAIRS,');
        sql.Add('     im.TOTAL_AMOUNT, im.TOTAL_AMOUNT_WORD, im.BRAND, im.NO, im.FACTORY, im.[YEAR], im.SAVE_USER');
        sql.Add('   , im.SAVE_TIME, im.PRINT_LOCK, im.CFM_USER,im.CFM_TIME, im.CFMED, im.PRINT_USER, im.PRINT_TIME');
        sql.Add('   , im.UNLOCK_USER,im.UNLOCK_TIME, im.YN, im.CUSTID, im.CURRENCY, im.Season, im.Stage,im.Inv_Type, im.Unit, im.Inv_Sup');
        sql.Add('FROM INVOICE_M im ');
        sql.Add('WHERE 1=1');
        sql.Add('   and im.PRINT_LOCK IS NULL and im.inv_type=''Mass Production'' ');
        if trim(Edt_Inv.Text)<>'' then
          sql.Add(' and im.inv_no like '''+Edt_Inv.Text+'%'' ');
        if trim(Edt_Cust.Text)<>'' then
          sql.Add(' and im.CustID like '''+Edt_Cust.Text+'%'' ');
        if Chk_Indate1.Checked then
        begin
            SQL.Add(' and convert(varchar,im.Inv_Date,111) between ');
            SQL.Add(' '''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''''+' and  '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date) +'''');
        end;
        active:=true;
    end; 
end;

procedure TMergeInvoice.FormCreate(Sender: TObject);
begin
  DTP1.Date:=date-7;
  DTP2.Date:=date;
end;

procedure TMergeInvoice.Button2Click(Sender: TObject);
begin
    if(not qry_inv.Active)or(qry_inv.RecordCount<1) then
      abort;
    qry_invSS.Active:=false;
    with qry_invs do
    begin
        active:=false;
        sql.Clear;
        sql.Add('SELECT im.*,0 as YB FROM INVOICE_M im ');
        sql.Add('WHERE CustID=:CustID and im.inv_type=''Mass Production'' and im.inv_no <> :inv_no and im.PRINT_LOCK IS NULL ');
        if trim(edit2.Text)<>'' then
          sql.Add('     and im.inv_no like '''+edit2.Text+'%'' ');
        if trim(edit3.Text)<>'' then
          sql.Add('AND EXISTS( SELECT 1 FROM INVOICE_D id WHERE id.INV_NO=im.INV_NO AND id.RYNO LIKE''' + edit3.Text + '%'') '); 
        if Chk_Indate1.Checked then
        begin
            SQL.Add(' and convert(varchar,im.Inv_Date,111) between ');
            SQL.Add(' '''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''''+' and  '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date) +'''');
        end;
        active:=true;
    end;
end;

procedure TMergeInvoice.qry_invAfterOpen(DataSet: TDataSet);
begin
  if qry_inv.RecordCount>0 then
  begin
    qry_ry2.Open;
    Button2.Enabled:=true;
    Button2Click(nil);
  end;
end;

procedure TMergeInvoice.qry_invBeforeClose(DataSet: TDataSet);
begin
  qry_ry2.Active:=false;
  qry_invs.Active:=false;
  Button2.Enabled:=false;
end;

procedure TMergeInvoice.qry_invsBeforeClose(DataSet: TDataSet);
begin
   qry_invSS.Active:=false;
   btnMerge.Enabled:=false;
   btnCancel.Enabled:=false;
   btnModify.Enabled:=false;
end;

procedure TMergeInvoice.btnModifyClick(Sender: TObject);
begin
  qry_invs.RequestLive:=true;
  qry_invs.CachedUpdates:=true;
  btnMerge.Enabled:=true;
  btnCancel.Enabled:=true;
  btnmodify.Enabled:=false;
end;

procedure TMergeInvoice.btncancelClick(Sender: TObject);
begin
  qry_invs.Active:=false;
  qry_invs.RequestLive:=false;
  qry_invs.CachedUpdates:=false;
  qry_invs.Active:=true;
end;

procedure TMergeInvoice.btnMergeClick(Sender: TObject);
var inv_no,word,amount_word:string;
begin
    inv_no:='';
    qry_invSS.Active:=false;
    qry_invs.First;
    while not qry_invs.Eof do
    begin
          if qry_invs.FieldByName('YB').Value = 1 then
              inv_no:=inv_no+''''+qry_invs.FieldByName('inv_no').AsString+''',';
          qry_invs.Next;
    end;

    inv_no:=LeftStr(inv_no,length(inv_no)-1);
    if trim(inv_no)='' then
    begin
      showmessage('no inv for merge .');
      abort;
    end;

    //get all RY for each invoice
    with query2 do
    begin
        active:=false;
        sql.Clear;
        sql.Add('select Inv_No,RYNO from INVOICE_D');
        sql.Add('where Inv_No in ('+inv_no+')');
        active:=true;
    end;

    if messageDlg('Are you sure to merge for these invoice:' + inv_no + ' to invoice : ' + qry_inv.FieldByName('inv_no').AsString + '???', mtwarning,[mbyes,mbno],0) = mryes then
    begin
         try
            with query1 do
            begin
                active:=false;
                sql.Clear;

                //-----------------------insert table log ----------------------
                SQL.Add('INSERT INTO INVOICE_M_Log (INV_NO,INV_DATE,RISK,SHIP_BY,FROM_WHERE,TO_WHERE,TOTAL_PAIRS,TOTAL_AMOUNT,TOTAL_AMOUNT_WORD,BRAND,NO,FACTORY,YEAR,SAVE_USER,SAVE_TIME,PRINT_LOCK,CFM_USER,CFM_TIME,CFMED,PRINT_USER');
                sql.Add('       ,PRINT_TIME,UNLOCK_USER,UNLOCK_TIME,YN,CUSTID,CURRENCY,Season,Stage,Inv_Type,Inv_Sup,FuncRe,Log_Date,Log_User)');
                SQL.Add('select INV_NO,INV_DATE,RISK,SHIP_BY,FROM_WHERE,TO_WHERE,TOTAL_PAIRS,TOTAL_AMOUNT,TOTAL_AMOUNT_WORD,BRAND,NO,FACTORY,YEAR,SAVE_USER,SAVE_TIME,PRINT_LOCK,CFM_USER,CFM_TIME,CFMED,PRINT_USER');
                sql.Add('       ,PRINT_TIME,UNLOCK_USER,UNLOCK_TIME,YN,CUSTID,CURRENCY,Season,Stage,Inv_Type,Inv_Sup,''Merge'',getdate(),'''+Main.edit1.text+''' ');
                SQL.Add('FROM INVOICE_M ');
                SQL.Add('WHERE inv_no in ('+inv_no+') ');

                SQL.Add('insert into INVOICE_D_log (INV_NO,PACK_NO,RYNO,STYLE_NAME,PO,CUSTORDNO,ARTICLE,SIZE_RUN,PAIRS,UNIT_PRICE,AMOUNT,UserID,UserDate)');
                SQL.Add('select INV_NO,PACK_NO,RYNO,STYLE_NAME,PO,CUSTORDNO,ARTICLE,SIZE_RUN,PAIRS,UNIT_PRICE,AMOUNT,UserID,UserDate');
                SQL.Add('FROM INVOICE_D');
                SQL.Add('WHERE inv_no in ('+inv_no+') ');

                SQL.Add('INSERT INTO PACKING_log(INV_NO,RYNO,XH,SIZ,CTQ,CTZ,CTS,QTY,PAIRS,NW,GW,L,W,H,CBM,USERID,USERDATE,TNW,TGW)');
                sql.Add('SELECT INV_NO,RYNO,XH,SIZ,CTQ,CTZ,CTS,QTY,PAIRS,NW,GW,L,W,H,CBM,USERID,USERDATE,TNW,TGW');
                sql.Add('FROM PACKING');
                SQL.Add('WHERE inv_no in ('+inv_no+') ');

                sql.Add('INSERT INTO PACKING_D_log (INV_NO,RYNO,CTS,Pairs,NW,GW,CBM,UserID,UserDate)');
                sql.Add('SELECT INV_NO,RYNO,CTS,Pairs,NW,GW,CBM,UserID,UserDate');
                sql.Add('FROM PACKING_D');
                SQL.Add('WHERE inv_no in ('+inv_no+') ');
                //funcobj.WriteErrorLog(sql.Text);
                execsql;
                //--------------------------------------------------------------


                query2.First;
                while not query2.Eof do
                begin
                    active:=false;
                    sql.Clear;

                    //insert RY into INVOICE_D for new invoice
                    SQL.Add('insert into INVOICE_D (INV_NO,PACK_NO,RYNO,STYLE_NAME,PO,CUSTORDNO,ARTICLE,SIZE_RUN,PAIRS,UNIT_PRICE,AMOUNT,UserID,UserDate)');
                    sql.Add('select '''+qry_inv.FieldByName('inv_no').AsString+''',PACK_NO,RYNO,STYLE_NAME,PO,CUSTORDNO,ARTICLE,SIZE_RUN,PAIRS,UNIT_PRICE,AMOUNT,'''+Main.edit1.text+''',getdate()');
                    sql.Add('from INVOICE_D');
                    sql.Add('where inv_no = '''+query2.FieldByName('inv_no').AsString+''' ');
                    sql.Add('      and RYNO = '''+query2.FieldByName('RYNO').AsString+''' ');

                    //insert into Packing
                    SQL.Add('INSERT INTO PACKING(INV_NO,RYNO,XH,SIZ,CTQ,CTZ,CTS,QTY,PAIRS,NW,GW,L,W,H,CBM,USERID,USERDATE,TNW,TGW)');
                    sql.Add('select '''+qry_inv.FieldByName('inv_no').AsString+''',RYNO,XH,SIZ,CTQ,CTZ,CTS,QTY,PAIRS,NW,GW,L,W,H,CBM,'''+Main.edit1.text+''',getdate(),TNW,TGW');
                    sql.Add('from PACKING');
                    sql.Add('where inv_no = '''+query2.FieldByName('inv_no').AsString+''' ');
                    sql.Add('      and RYNO = '''+query2.FieldByName('RYNO').AsString+''' ');

                    //insert into Packing_D
                    sql.Add('INSERT INTO PACKING_D (INV_NO,RYNO,CTS,Pairs,NW,GW,CBM,UserID,UserDate)');
                    sql.Add('select '''+qry_inv.FieldByName('inv_no').AsString+''',RYNO,CTS,Pairs,NW,GW,CBM,'''+Main.edit1.text+''',getdate()');
                    sql.Add('from PACKING_D');
                    sql.Add('where inv_no = '''+query2.FieldByName('inv_no').AsString+''' ');
                    sql.Add('      and RYNO = '''+query2.FieldByName('RYNO').AsString+''' ');
                    //funcobj.WriteErrorLog(sql.Text);
                    execsql;

                    query2.Next;
                end;

                //delete old data.
                active:=false;
                sql.Clear;
                SQL.Add('delete from INVOICE_M where inv_no in ('+inv_no+')');
                SQL.Add('delete from INVOICE_D where inv_no in ('+inv_no+')');
                SQL.Add('delete from PACKING where inv_no in ('+inv_no+')');
                SQL.Add('delete from PACKING_D where inv_no in ('+inv_no+') ');
                //funcobj.WriteErrorLog(sql.Text);
                execsql;
            end;

            //get total pairs and Amount
            with query2 do
            begin
                active:=false;
                sql.Clear;
                SQL.Add('SELECT SUM(PAIRS) AS TotalPairs,SUM(AMOUNT) TotalAmount FROM invoice_D ');
                SQL.Add('WHERE INV_NO='''+qry_inv.fieldbyName('Inv_no').AsString+''' ');
                active:=true;
            end;
            word:= ConvertToWords(query2.FieldByName('TotalAmount').AsFloat,true);
            amount_word:=upperCase(leftstr(word,1)) + copy(word,2,length(word)-1);

            //update total pairs and Amount in Invoice_M
            with query1 do
            begin
                active:=false;
                sql.Clear;
                sql.Add('UPDATE INVOICE_M SET');
                sql.Add(' 	TOTAL_PAIRS = '''+query2.fieldbyName('TotalPairs').AsString+''' ');
                sql.Add('	  ,TOTAL_AMOUNT ='''+query2.fieldbyName('TotalAmount').AsString+''' ');
                sql.Add('	  ,TOTAL_AMOUNT_WORD ='''+amount_word+''' ');
                sql.Add('WHERE INV_NO='''+qry_inv.fieldbyName('Inv_no').AsString+''' ');

                //update pack_no in INVOICE_D
                sql.Add('UPDATE ID SET ID.Pack_No =a.IDNO');
                sql.Add('FROM INVOICE_D ID');
                sql.Add('LEFT JOIN');
                sql.Add(' ( select ROW_NUMBER() OVER (ORDER BY RYNO)IDNO,RYNO,INV_NO');
                sql.Add('   from INVOICE_D WHERE INV_NO='''+qry_inv.fieldbyName('Inv_no').AsString+'''');
                sql.Add('  )a ON a.RYNO=ID.RYNO AND a.INV_NO=ID.INV_NO');
                sql.Add('where ID.INV_NO='''+qry_inv.fieldbyName('Inv_no').AsString+''' ');
                //funcobj.WriteErrorLog(sql.Text);
                execsql;
            end;

            showmessage('Merge invoice: '''+inv_no+''' to invoice :'''+qry_inv.fieldbyName('Inv_no').AsString+''' is successfully.!!!');


            qry_invs.RequestLive:=false;
            qry_invs.CachedUpdates:=false;
            qry_inv.Active:=false;
            qry_inv.Active:=true;


         except
            showmessage('Error,can not merge data or RY is existsing.');
            abort;
         end;
    end;

end;

procedure TMergeInvoice.qry_invsAfterOpen(DataSet: TDataSet);
begin
  if qry_invs.RecordCount>0 then
  begin
     if not qry_invSS.Active then
        qry_invSS.Open;
     btnModify.Enabled:=true;
  end;   
end;

end.
