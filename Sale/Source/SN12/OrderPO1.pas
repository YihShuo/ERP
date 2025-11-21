unit OrderPO1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, Mask, DBCtrls, ExtCtrls,
  GridsEh, DBGridEh,EhlibBDE, Menus,math, Buttons;

type
  TOrderPO = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Label3: TLabel;
    Label4: TLabel;
    YWBZPOS: TQuery;
    DS1: TDataSource;
    DBGridEh1: TDBGridEh;
    CC: TQuery;
    UpSQL1: TUpdateSQL;
    Pop1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N4: TMenuItem;
    Qtemp: TQuery;
    SPB1: TSpeedButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    N3: TMenuItem;
    YWPOZL: TQuery;
    UpdateSQL1: TUpdateSQL;
    DBGridEh2: TDBGridEh;
    DataSource1: TDataSource;
    YWPOZLDDBH: TStringField;
    YWPOZLXH: TStringField;
    YWPOZLDDCC: TStringField;
    YWPOZLQty: TIntegerField;
    YWPOZLCTS: TIntegerField;
    YWPOZLMEMO: TStringField;
    YWPOZLUSERDATE: TDateTimeField;
    YWPOZLUSERID: TStringField;
    YWPOZLYN: TStringField;
    YWBZPO: TQuery;
    Qtemp2: TQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGridEh1KeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure YWBZPOSAfterInsert(DataSet: TDataSet);
    procedure Button1Click(Sender: TObject);
    procedure SPB1Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure YWBZPOSAfterOpen(DataSet: TDataSet);
    procedure N2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  OrderPO: TOrderPO;
  type arrint=array [1..30] of integer;
var i,j,CTH:integer;
    p:string;
    PerCTS,CTS,YS,XH:word;
    m,n:arrint;


implementation

uses OrderList1, main1;

{$R *.dfm}

procedure TOrderPO.FormClose(Sender: TObject; var Action: TCloseAction);
begin
OrderList.Enabled:=true;
action:=cafree;
end;

procedure TOrderPO.DBGridEh1KeyPress(Sender: TObject; var Key: Char);
begin
if Key = #13 then
  if ActiveControl = DBGrideh1 then
    begin
      TDBGrideh(ActiveControl).SelectedIndex := TDBGrideh(ActiveControl).SelectedIndex + 1;
      Key := #0;
    end;

end;

procedure TOrderPO.FormCreate(Sender: TObject);
begin
edit1.Text:=OrderList.SpecMas.fieldbyname('DDBH').asstring;
edit2.Text:=OrderList.SpecMas.fieldbyname('XieXing').asstring;
edit3.Text:=OrderList.SpecMas.fieldbyname('Article').asstring;
edit4.Text:=OrderList.SpecMas.fieldbyname('Qty').asstring;
SPB1click(nil);
end;

// 每次被 INSERT 後會自動將 DDBH , XH 填入
procedure TOrderPO.YWBZPOSAfterInsert(DataSet: TDataSet);
var SXH:string;
begin
YWBZPOS.FieldByName('DDBH').Value:=OrderList.SpecMas.fieldbyname('DDBH').value;
SXH:=inttostr(XH+5);
while length(SXH)<3 do
  begin
    SXH:='0'+SXH;
  end  ;
YWBZPOS.FieldByName('XH').Value:=SXH;
XH:=XH+5;
end;

// 用來計算固定的雙數 , PerCTS 為雙數
procedure TOrderPO.Button1Click(Sender: TObject);
begin
if YWBZPOS.fieldcount<=6 then
  begin
    abort;
  end;
if YWBZPOS.recordcount>1 then
  begin
    if messagedlg('You want to delete old packing List?',mtinformation,[mbYes,mbNo],0)=mrYes then
      begin
        with Qtemp do
          begin
            YWBZPOS.First;
            active:=false;
            sql.clear;
            sql.add('delete YWBZPOS ');
            sql.add('where DDBH='+''''+YWBZPOS.fieldbyname('DDBH').Value+'''');
            execsql;
          end;
        SPB1click(nil);
      end
      else
        begin
          abort;
        end;
  end;
p:=inputbox('Key in Pairs / per Carton','Pairs:','10');

try
  PerCTS:=strtoint(p);
  if not PerCTS in [2..24] then
    begin
      messagedlg('Pairs is not right.',mterror,[mbOK],0);
      abort;
    end;
except
  messagedlg('Pairs is not right.',mterror,[mbOK],0);
  abort;
end;

for i:=2 to YWBZPOS.FieldCount-4 do
  begin
    DivMod(n[i],PerCTS,CTS,YS);
    if CTS>0 then
      begin
        with YWBZPOS do
          begin
            //showmessage(inttostr(n[i]));
            Append;
            fields[2].Value:=CTS;
            Fields[i].Value:=PerCTS;
            Fields[fieldcount-3].Value:=Fieldbyname('XH').Value;
          end;
        with YWPOZL do
          begin
            append;
            fieldbyname('DDBH').value:=edit1.text;
            fieldbyname('XH').value:=YWBZPOS.fieldbyname('XH').value;
            fieldbyname('DDCC').value:=YWBZPOS.fields[i].fieldname;
            fieldbyname('Qty').value:=PerCTS;
            fieldbyname('CTS').value:=CTS;
            post;
          end;
      end;
    DBGrideh1.columns[i].Footer.ValueType:=fvtStaticText;
    DBGrideh1.columns[i].Footer.value:=inttostr(YS);
    m[i]:=YS;
     // columns[5].Footer.value:=taCenter;
  end;

end;

// 用來計算目前的 PACKING 設定
// YWBZPOS 用來顯示 , YWPOZL 用於資料是否存在的查詢
procedure TOrderPO.SPB1Click(Sender: TObject);
begin
  with CC do
  begin
    Active:=false;
    sql.Clear;
    sql.add('select DDCC ');
    sql.add('from YWDDS');
    sql.add('where DDBH='+''''+edit1.text+'''');
    sql.add('and Qty<>0');
    sql.add('order by DDCC');
    CC.Active:=true;
  end;


// oldXH 用來判斷是否已經被計算過, 應改用 yn 取代
with YWBZPOS do
  begin
    active:=false;
    sql.Clear;
    sql.add('select DDBH,XH,CTS,MEMO');
    while not CC.Eof do
      begin
        sql.add(',max(case when DDCC='+''''+CC.fieldbyname('DDCC').asstring+'''');
        sql.add(' then Qty end ) as '+''''+CC.fieldbyname('DDCC').asstring+'''');
        CC.Next;
      end;
    sql.add(',XH as oldXH,CTQ,CTZ');
    sql.add('from (select DDBH,null as XH,DDCC,Qty,null as CTS,null as MEMO,null as CTQ,null as CTZ ');
    sql.add('      from YWDDS where DDBH='+''''+edit1.text+'''');
    sql.add('                       and Qty<>0');
    sql.add('      union    ');
    sql.add('      select DDBH,XH,DDCC,Qty,CTS ,MEMO,CTQ,CTZ ');
    sql.add('      from YWBZPOS where DDBH='+''''+edit1.text+'''');
    sql.add(' ) POS group by  DDBH,XH,CTS,MEMO,CTQ,CTZ  ');
    active:=true;
    if recordcount>1 then
      begin
        last;
        XH:=strtoint(fields[1].value);
      end
      else
        begin
          XH:=0;
        end;
  end;
with YWPOZL do
  begin
    active:=false;
    sql.clear;
    sql.add('select * from YWBZPOS ');
    sql.add('where DDBH='+''''+edit1.Text+'''');
    active:=true;
  end;
DBGrideh1.Columns[0].Width:=75;
DBGrideh1.Columns[1].Width:=30;
DBGrideh1.columns[1].Footer.ValueType:=fvtcount;
DBGrideh1.columns[1].Footer.fieldname:=DBGrideh1.Columns[1].fieldname;
DBGrideh1.Columns[2].Width:=40;
DBGrideh1.columns[2].Footer.ValueType:=fvtsum;
DBGrideh1.columns[2].Footer.fieldname:=DBGrideh1.Columns[2].fieldname;
DBGrideh1.Columns[3].Width:=60;
DBGrideh1.Columns[YWBZPOS.FieldCount-3].Width:=0;
DBGrideh1.Columns[YWBZPOS.FieldCount-2].Width:=0;
DBGrideh1.Columns[YWBZPOS.FieldCount-1].Width:=0;
DBGrideh1.Columns[3].alignment:=tacenter;

if YWBZPOS.fieldcount>6 then
  begin
    for i:=4 to YWBZPOS.FieldCount-4 do
      begin
        DBGrideh1.Columns[i].Width:=40;
        if i mod 2 =0 then
          begin
            DBGrideh1.Columns[i].color:=$00F6F6F6;
            DBGrideh1.Columns[i].Title.Color:=$00F6F6F6;
            DBGrideh1.Columns[i].Footer.Color:=$00E8E8E8;
          end;
        YWBZPOS.first;
        n[i]:=YWBZPOS.fields[i].value; //取第一筆,訂單尺寸的總數量
        if YWBZPOS.recordcount>1 then
          begin
            YWBZPOS.first;
            YWBZPOS.next;  // 從第二筆資料開始    第一筆為各尺寸總數量
            YS:=n[i];   //該尺寸總雙數
            while not YWBZPOS.eof do
              begin
                if ((not YWBZPOS.Fields[i].IsNull) and (YWBZPOS.Fields[i].value<>0)) then
                  begin
                    YS:=YS-YWBZPOS.Fields[i].value*YWBZPOS.Fields[2].value  ; //該尺寸總雙數-裝箱數*箱數
                  end;
                YWBZPOS.Next;
              end;
            m[i]:=YS; //該尺寸的包裝餘數
            DBGrideh1.columns[i].Footer.ValueType:=fvtStaticText;
            DBGrideh1.columns[i].Footer.value:=inttostr(YS);
          end
          else
            begin
              m[i]:=n[i];  //無資料時,該尺寸的包裝餘數=該尺寸總雙數
              DBGrideh1.columns[i].Footer.ValueType:=fvtStaticText;
              DBGrideh1.columns[i].Footer.value:=inttostr(m[i]) ;
            end;
      end;
  end;
end;

procedure TOrderPO.N1Click(Sender: TObject);
begin
YWBZPOS.last;
YWBZPOS.Append;
end;

procedure TOrderPO.YWBZPOSAfterOpen(DataSet: TDataSet);
begin
if YWBZPOS.fieldcount>5 then
  begin
    N1.Enabled:=true;  
    N2.Enabled:=true;
    N3.Enabled:=true;
    N4.Enabled:=true;
  end
  else
    begin
      N1.Enabled:=false; 
      N2.Enabled:=false;
      N3.Enabled:=false;
      N4.Enabled:=false;
    end;
end;

// 計算手動輸入的部分
procedure TOrderPO.N2Click(Sender: TObject);
var NCTS,P:word;
begin
if YWBZPOS.fields[1].isnull then
  begin
    showmessage('Pls add cartton first.');
    abort;
  end;
if not YWBZPOS.fields[YWBZPOS.fieldcount-3].isnull then
  begin
    showmessage('Pls key by hand.');
    abort;
  end;

// bug P 要先設定為 0
P:=0;
NCTS:=0;
CTS:=10000;   //箱數
// 計算最小的箱數
for i:=4 to YWBZPOS.FieldCount-4 do
  begin
    //showmessage(inttostr(m[i]));
    if YWBZPOS.fields[2].isnull then
      begin
        if ((not YWBZPOS.Fields[i].IsNull) and (YWBZPOS.Fields[i].value<>0)) then
          begin
            divmod(m[i],YWBZPOS.Fields[i].value,NCTS,YS);
            if CTS>NCTS then
              begin
                CTS:=NCTS;
                P:=1;
              end;
          end;
      end;
  end;
YWBZPOS.edit;
if P<>0 then
  begin
    YWBZPOS.fields[2].value:=CTS;
    YWBZPOS.fields[YWBZPOS.fieldcount-3].value:=YWBZPOS.fieldbyname('XH').value;
    for i:=4 to YWBZPOS.fieldcount-4 do
      begin
        if ((not YWBZPOS.Fields[i].IsNull) and (YWBZPOS.Fields[i].value<>0)) then
          begin
            m[i]:=m[i]-YWBZPOS.Fields[i].value*YWBZPOS.Fields[2].value  ;
            DBGrideh1.columns[i].Footer.ValueType:=fvtStaticText;
            DBGrideh1.columns[i].Footer.value:=inttostr(m[i]) ;
            YWPOZL.append;
            YWPOZL.fieldbyname('DDBH').value:=edit1.text;
            YWPOZL.fieldbyname('XH').value:=YWBZPOS.fieldbyname('XH').value;
            YWPOZL.fieldbyname('DDCC').value:=YWBZPOS.fields[i].fieldname;
            YWPOZL.fieldbyname('Qty').value:=YWBZPOS.fields[i].value;
            //showmessage('aaa');
            YWPOZL.fieldbyname('CTS').value:=YWBZPOS.fieldbyname('CTS').value;;
            YWPOZL.post;
          end;
      end;
  end
  else
    begin
      // bug 改為顯示提示視窗   輸入不正確 或是 已經有箱數
      showmessage('Pls key right data');
      abort;
    end;
end;

procedure TOrderPO.Button3Click(Sender: TObject);
begin
SPB1click(nil);
end;

// 刪除一列
procedure TOrderPO.N3Click(Sender: TObject);
begin
if YWBZPOS.recordcount>1 then
  begin
    if not YWBZPOS.fields[YWBZPOS.fieldcount-3].IsNull then
      begin
        for i:=4 to YWBZPOS.fieldcount-4 do
          begin
            if not YWBZPOS.fields[i].isnull then
              begin
                m[i]:=m[i]+YWBZPOS.fields[i].value*YWBZPOS.fields[2].value;
                if YWPOZL.Locate('XH;DDCC',vararrayof([YWBZPOS.fields[YWBZPOS.fieldcount-3].value,YWBZPOS.fields[i].FieldName]),[]) then
                  begin
                    //m[i]:=m[i]+YWPOZL.fieldbyname('Qty').value*YWPOZL.fieldbyname('CTS').value;
                    YWPOZL.delete;
                  end;
                DBGrideh1.columns[i].Footer.value:=inttostr(m[i]) ;
              end;
          end;
      end;
    YWBZPOS.Delete;
  end;
if YWBZPOS.recordcount=1 then
   XH:=0;

end;

// 按下 Save
procedure TOrderPO.Button2Click(Sender: TObject);
var CartonNumber1,CartonNumber2:integer;
begin
if YWBZPOS.fieldcount<=4 then
  begin
    abort;
  end;
if YWBZPOS.recordcount<=1 then
  begin
    abort;
  end;
for i:=4 to YWBZPOS.FieldCount-4 do
  begin
    if m[i]<>0 then
      begin
        showmessage('Pls calculate all carton first.');
        abort;
      end;
  end;
YWBZPOS.First;
YWBZPOS.Next;
while not YWBZPOS.Eof do
  begin
    if YWBZPOS.fields[2].isnull then
      begin
        messagedlg('Pls key in CTS first.',mtconfirmation,[mbOK],0);
        abort;
      end;
    YWBZPOS.next;
  end;

// 計算 CTQ , CTZ
with YWBZPOS do
  begin
    try
      CTH:=strtoint(inputbox('Pls key first Carton No','CTQ','1'));
      CTH:=CTH-1;
    except
      showmessage('First Carton No have problem.');
      abort;
    end;
    first;
    next;
    while not eof do
      begin
        edit;
        fieldbyname('CTQ').Value:=CTH+1;
        CTH:=CTH+fieldbyname('CTS').Value;
        fieldbyname('CTZ').Value:=CTH;
        next;
      end;
  end;

//寫入資料庫中  
with Qtemp do
  begin
    active:=false;
    sql.Clear;
    sql.add('insert bdelrec VALUES( ');
    sql.add(''''+'ywbzpos'+''''+','+''''+YWBZPOS.fieldbyname('DDBH').Value+'''');
    sql.add(','+''''+'*'+''''+','+''''+'*'+'''');
    sql.add(','+''''+main.Edit1.text+''''+',getdate())');
    sql.add('delete YWBZPOS ');
    sql.add('where DDBH='+''''+YWBZPOS.fieldbyname('DDBH').Value+'''');
    //memo1.Text:=sql.Text;
    execsql;
    for i:=4 to YWBZPOS.FieldCount-4 do
      begin
        YWBZPOS.First;
        YWBZPOS.Next;
        while not YWBZPOS.Eof do
          begin
            if ((not YWBZPOS.Fields[i].isnull) and (YWBZPOS.fields[i].value<>0)) then
              begin
                active:=false;
                sql.Clear;
                sql.add('insert into YWBZPOS ');
                sql.add('(DDBH, XH, DDCC, Qty, CTS,MEMO,CTQ,CTZ, USERDATE, USERID, YN) ');
                sql.add('values ('+''''+YWBZPOS.FieldByName('DDBH').Value+''''+',');
                sql.add(''''+YWBZPOS.FieldByName('XH').Value+''''+',');
                sql.add(''''+YWBZPOS.Fields[i].fieldname+''''+',');
                sql.add(''''+inttostr(YWBZPOS.Fields[i].value)+''''+',');
                sql.add(''''+inttostr(YWBZPOS.Fields[2].Value)+''''+',');
                sql.add(''''+YWBZPOS.FieldByName('MEMO').asstring+''''+','); 
                sql.add(''''+YWBZPOS.FieldByName('CTQ').asstring+''''+',');
                sql.add(''''+YWBZPOS.FieldByName('CTZ').asstring+''''+',getdate(),');
                sql.add(''''+main.edit1.text+''''+','+''''+'1'+''''+')');
                execsql;
              end;
            YWBZPOS.next;
          end;
      end;
  end;
// 是否已採購外箱
with YWBZPO do
  begin
    active:=false;
    sql.Clear;
    sql.add('select XH from YWBZPO ');
    sql.add('where DDBH='+''''+edit1.Text+'''');
    active:=true;
    if recordcount>0 then
      begin
        if messagedlg('Need to update carton order?',mtinformation,[mbYes,mbNo],0)=mrYes then
          begin
            active:=false;
            sql.Clear;
            sql.add('update YWDD ');
            sql.add('set YN='+''''+'1'+'''');
            sql.add('where DDBH='+''''+edit1.Text+'''');
            execsql;
            showmessage('請聯繫采購更新外箱訂購單。Pls contect with purchase and revise carton order.');
          end;
      end;
    active:=false;
  end;

  //如果外箱數量沒有變，則重新計算外箱的  XH  和每箱的雙數
with Qtemp2 do
  begin   
    active:=false;
    sql.Clear;
    sql.add('select DDBH,sum(CTS) as CTS ');
    sql.add('from (select distinct DDBH,XH,CTS ');
    sql.add('      from YWBZPOS ');
    sql.add('      where DDBH='+''''+edit1.Text+'''');
    sql.add('      ) YWBZPOS ')  ;
    sql.add('group by DDBH ');
    active:=true;
    CartonNumber1:=fieldbyname('CTS').Value;
  end;
with Qtemp do
  begin
    active:=false;
    sql.Clear;
    sql.add('select DDBH,count(CartonBar) as CTS ');
    sql.add('from YWCP ');
    sql.add('where DDBH='+''''+edit1.Text+'''');
    sql.add('group by DDBH ');
    active:=true;
    if recordcount=0 then
      begin
        CartonNumber2:=0;
      end
      else
        begin
          CartonNumber2:=fieldbyname('CTS').Value;
        end;
    active:=false;
    if  CartonNumber1=CartonNumber2 then
      begin
        Qtemp2.Active:=false;
        Qtemp2.sql.Clear;
        Qtemp2.sql.add('select DDBH,XH,CTQ,CTZ,sum(Qty) as Qty ');
        Qtemp2.sql.add('from YWBZPOS ');
        Qtemp2.sql.add('where DDBH='+''''+edit1.Text+'''');
        Qtemp2.sql.add('group by DDBH,XH ,CTQ,CTZ');
        Qtemp2.sql.add('order by DDBH,XH ,CTQ,CTZ');
        Qtemp2.Active:=true;
        Qtemp2.First;
        // bug 只能用在 CTQ, CTZ 不改變的情況下
        while not Qtemp2.Eof do
          begin
            active:=false;
            sql.Clear;
            sql.add('update YWCP ');
            sql.add('set XH='+''''+Qtemp2.fieldbyname('XH').asstring+'''');
            sql.add('    ,Qty='+''''+Qtemp2.fieldbyname('Qty').asstring +'''');
            sql.add('where DDBH='+''''+edit1.Text+'''');
            sql.add('      and CartonNO>='+Qtemp2.fieldbyname('CTQ').asstring);
            sql.add('      and CartonNO<='+Qtemp2.fieldbyname('CTZ').asstring);
            execsql;
            Qtemp2.Next;
          end;
      end
      // bug 應該再多加一個還沒設定於 ywcp 的情況 
      else if CartonNumber2 <> 0  then
        begin
          showmessage('Pls Update Carton Barcode List.'+#13+'請幫忙更新外箱條碼標清單.');
        end;
  end;
Qtemp.Active:=false;
Qtemp2.Active:=false;
end;

procedure TOrderPO.N4Click(Sender: TObject);
var NQty,P:word;
begin
if YWBZPOS.fields[1].isnull then
  begin
    showmessage('Pls add cartton first.');
    abort;
  end;
if (YWBZPOS.fields[2].isnull or (YWBZPOS.fields[2].value=0)) then
  begin
    showmessage('CTS can not be empty.');
    abort;
  end;
if YWBZPOS.fields[YWBZPOS.fieldcount-3].isnull then
  begin
    P:=0;
    for i:=4 to YWBZPOS.FieldCount-2 do
      begin
        if ((not YWBZPOS.Fields[i].IsNull) and (YWBZPOS.Fields[i].value<>0)) then
          begin
            NQty:=YWBZPOS.Fields[i].value*YWBZPOS.Fields[2].value  ;
            if NQty>m[i] then
              begin
                showmessage('Pls key in right Qty for per Size.');
                abort;
              end;
            P:=P+1;
          end;
      end;
    if P=0 then
      begin
        showmessage('Pls key in right Qty for per Size.');
        abort;
      end;
    // 計算剩餘的尺寸數量
    for i:=4 to YWBZPOS.FieldCount-4 do
      begin
        if ((not YWBZPOS.Fields[i].IsNull) and (YWBZPOS.Fields[i].value<>0)) then
          begin
            NQty:=YWBZPOS.Fields[i].value*YWBZPOS.Fields[2].value  ;
            m[i]:=m[i]-NQty;
            DBGrideh1.columns[i].Footer.ValueType:=fvtStaticText;
            DBGrideh1.columns[i].Footer.value:=inttostr(m[i]) ;
          end;
      end;
  end;
  //此地還要重大修改  原來沒有只是新增已結束，但原來就有後人為改的沒有完成
  //先檢查值是否正確，輸入的值是否為有效數值
//  ShowMessage( IntToStr(n[5]));
// bug 看不懂在判斷什麼 n[i], NQty 似乎是一樣的東西
if not YWBZPOS.fields[YWBZPOS.fieldcount-3].isnull then
  begin
    P:=0;
    for i:=4 to YWBZPOS.FieldCount-4 do
      begin
        n[i]:=0;
        if YWPOZL.Locate('XH;DDCC',vararrayof([YWBZPOS.fields[YWBZPOS.fieldcount-3].value,YWBZPOS.fields[i].FieldName]),[]) then
          begin
            n[i]:=YWPOZL.Fieldbyname('Qty').Value*YWPOZL.Fieldbyname('CTS').Value;
          end;
        if ((not YWBZPOS.Fields[i].IsNull) and (YWBZPOS.Fields[i].value<>0)) then
          begin
            NQty:=YWBZPOS.Fields[i].value*YWBZPOS.Fields[2].value  ;
           // ShowMessage( 'i = ' + IntToStr(i) + ' ' + IntToStr(n[i])+' '+  IntToStr(NQty) );
            if NQty>m[i]+n[i] then
              begin
                showmessage('Pls key in right Qty for per Size.');
                abort;
              end;
            P:=P+1;
          end;
      end;
    if P=0 then
      begin
        showmessage('Pls key in right Qty for per Size.');
            showmessage('b');
        abort;
      end;

      // bug 以下的程式意義為何 ???
    for i:=4 to YWBZPOS.FieldCount-2 do
      begin
        n[i]:=0;
        if YWPOZL.Locate('XH;DDCC',vararrayof([YWBZPOS.fields[YWBZPOS.fieldcount-3].value,YWBZPOS.fields[i].FieldName]),[]) then
          begin
            n[i]:=YWPOZL.Fieldbyname('Qty').Value*YWPOZL.Fieldbyname('CTS').Value;
          end;
        if ((not YWBZPOS.Fields[i].IsNull) and (YWBZPOS.Fields[i].value<>0)) then
          begin
            m[i]:=m[i]+n[i];
            NQty:=YWBZPOS.Fields[i].value*YWBZPOS.Fields[2].value;
            m[i]:=m[i]-NQty;
            YWPOZL.Edit;
            YWPOZL.FieldByName('Qty').Value:=YWBZPOS.fields[i].value;
            YWPOZL.FieldByName('CTS').Value:=YWBZPOS.fieldbyname('CTS').value;
            YWPOZL.FieldByName('XH').Value:=YWBZPOS.fieldbyname('XH').value;
          end
          else
            begin
              m[i]:=m[i]+n[i];
              // bug 在上面的 if 不是剛判斷過 ???  
              if ((not YWBZPOS.Fields[i].IsNull) and (YWBZPOS.Fields[i].value<>0)) then
                begin
                  YWPOZL.Insert;
                  YWPOZL.FieldByName('DDBH').Value:=edit1.Text;
                  YWPOZL.FieldByName('XH').Value:=YWBZPOS.fieldbyname('XH').value;
                  YWPOZL.FieldByName('DDCC').Value:=YWBZPOS.fields[i].fieldname;
                  YWPOZL.FieldByName('Qty').Value:=YWBZPOS.fields[i].value;
                  YWPOZL.FieldByName('CTS').Value:=YWBZPOS.fieldbyname('CTS').value;
                  YWPOZL.Post;
                end;
            end;
        DBGrideh1.columns[i].Footer.ValueType:=fvtStaticText;
        DBGrideh1.columns[i].Footer.value:=inttostr(m[i]) ;
        YWBZPOS.edit;
        YWBZPOS.fieldbyname('oldXH').value:= YWBZPOS.fieldbyname('XH').value;
      end;
  end;
end;

procedure TOrderPO.FormDestroy(Sender: TObject);
begin
orderpo:=nil;
end;

procedure TOrderPO.FormShow(Sender: TObject);
begin
  main.FormLanguage(Pointer(self),self.Name);
end;

end.
