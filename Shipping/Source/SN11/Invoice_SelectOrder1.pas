unit Invoice_SelectOrder1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ExtCtrls, StrUtils;

type
  TInvoice_SelectOrder = class(TForm)
    Panel4: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    DDBHEdit: TEdit;
    Button1: TButton;
    CheckBox1: TCheckBox;
    ComboBox5: TComboBox;
    CheckBox2: TCheckBox;
    CBX1: TComboBox;
    CBX2: TComboBox;
    cboBrand: TComboBox;
    Edit3: TEdit;
    CBX3: TComboBox;
    CBX4: TComboBox;
    chkRy: TCheckBox;
    chkSDD: TCheckBox;
    chk_PODD: TCheckBox;
    cbo_PODD_Y: TComboBox;
    cbo_PODD_M: TComboBox;
    chkDropped: TCheckBox;
    GSBH: TComboBox;
    DBGridEh1: TDBGridEh;
    Query1: TQuery;
    DataSource1: TDataSource;
    qrytemp: TQuery;
    Query1RY: TStringField;
    Query1StyleName: TStringField;
    Query1PO: TStringField;
    Query1CustOrdNo: TStringField;
    Query1VNPrice: TCurrencyField;
    Query1Article: TStringField;
    Query1Pairs: TFloatField;
    Query1CustID: TStringField;
    Query1Status: TStringField;
    Button2: TButton;
    Query1KHDDBH1: TStringField;
    YSBHEdit: TEdit;
    Label2: TLabel;
    Query1YSBH: TStringField;
    Query1xflock: TStringField;
    CheckBox3: TCheckBox;
    Qtemp: TQuery;
    procedure Button1Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    S_CUSTID:String;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Invoice_SelectOrder: TInvoice_SelectOrder;

implementation
   uses MakeInvoice1, main1, FunUnit;
{$R *.dfm}

procedure TInvoice_SelectOrder.Button1Click(Sender: TObject);
var s_yymm:String;
begin
  s_yymm:='';
  if chkRy.Checked then
      s_yymm:=copy(CBX3.Text,3,2)+CBX4.Text;

  with query1 do
  begin
      close;
      sql.Clear;
      sql.Add('select YWDD.DDBH as RY,YWDD.YSBH,k.XieMing as StyleName,do.KHPO as PO,YWDD.KHDDBH1,RY_VNPRICE.CustOrdNo as CustOrdNo,RY_VNPRICE.VNPrice,do.article as Article,YWDD.Qty as Pairs,do.KHBH as CustID,do.DDZT as Status, xflock ');
      sql.Add('FROM YWDD LEFT JOIN DDZL do ON ywdd.YSBH=do.DDBH');
      sql.Add('		       LEFT JOIN kfxxzl k ON k.XieXing=do.XieXing and k.SheHao=do.SheHao ');
      sql.Add('          LEFT JOIN RY_VNPRICE on  RY_VNPRICE.RYNO=do.DDBH ');
      sql.Add('WHERE 1=1 ');
      if GSBH.Text<>'' then
          SQL.Add('and do.GSBH='''+GSBH.Text+''' ');
      if chkSDD.Checked then
      begin
          SQL.Add('    and year(do.shipdate)='''+CBX1.Text+''' ');
          SQL.Add('    and month(do.shipdate)='''+CBX2.Text+''' ');
      end;
      if chk_PODD.Checked then
      begin
          SQL.Add('    and year(do.DDRQ)='''+cbo_PODD_Y.Text+''' ');
          SQL.Add('    and month(do.DDRQ)='''+cbo_PODD_M.Text+''' ');
      end;
      if chkRy.Checked then
      begin
          SQL.Add('    and do.DDBH like ''%'+s_yymm+'%''');
      end;
      SQL.Add(' and not exists (select RYNO from INVOICE_D where YWDD.DDBH=INVOICE_D.RyNo)');
      if YSBHEdit.Text<>'' then
          SQL.Add(' and YWDD.YSBH like '''+YSBHEdit.Text+'%''');
      if CheckBox2.Checked then
          SQL.Add(' and exists (select RYNO from RY_VNPRICE where YWDD.DDBH = RY_VNPRICE.RYNO)');
      if (CheckBox1.Checked) and (S_CUSTID<>'') then
          SQL.Add(' and RY_VNPRICE.CustID in ('+S_CUSTID+')');
      if DDBHEdit.Text<>'' then
          SQL.Add(' and do.DDBH like '''+DDBHEdit.Text+'%''');
      if cboBrand.Text <> '' then
          SQL.Add('and do.KHBH  = '''+MakeInvoice.GetPartID(cboBrand.Text)+'''');
      if edit3.Text <> '' then
          SQL.Add('and do.KHBH like '''+edit3.Text+'%''');
      if chkDropped.Checked then
          SQL.Add('and do.DDZT <> ''C'' ');
      SQL.Add('order by YWDD.DDBH');
      //funcObj.WriteErrorLog(sql.Text);
      open;
  end;
  DBGridEh1.Columns[0].title.caption:='';
  
end;

procedure TInvoice_SelectOrder.CheckBox1Click(Sender: TObject);
begin
  if CheckBox1.Checked then
  begin

    ComboBox5.Enabled:=true;
    S_CUSTID:='';
    with qrytemp do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('SELECT CUSTID FROM DE_CUST');
      SQL.Add('WHERE COUNTRYEN='''+ComboBox5.Text+'''');
      Active:=true;
      First;

      while not Eof do
      begin
        S_CUSTID:=S_CUSTID+''''+FieldByName('CUSTID').AsString+''',';
        Next;
      end;
      Active:=false;
    end;
    S_CUSTID:=LeftStr(S_CUSTID,length(S_CUSTID)-1);

  end else
    ComboBox5.Enabled:=false;
end;

procedure TInvoice_SelectOrder.FormShow(Sender: TObject);
 var yy,mm,dd:word;
    s_yy,s_mm:string;
begin
  decodedate(now,yy,mm,dd);
  s_yy:=inttostr(yy);
  if mm<10 then
  begin
    s_mm:='0'+inttostr(mm);
  end
  else
  begin
    s_mm:=inttostr(mm);
  end;
  CBX1.ItemIndex:=CBX1.Items.IndexOf(s_yy);
  CBX2.ItemIndex:=CBX2.Items.IndexOf(s_mm);
  CBX3.ItemIndex:=CBX3.Items.IndexOf(s_yy);
  CBX4.ItemIndex:=CBX4.Items.IndexOf(s_mm);
  cbo_PODD_Y.ItemIndex:=cbo_PODD_Y.Items.IndexOf(s_yy);
  cbo_PODD_M.ItemIndex:=cbo_PODD_M.Items.IndexOf(s_mm);
  main.FormLanguage(Pointer(self),self.Name);
end;

procedure TInvoice_SelectOrder.DBGridEh1DblClick(Sender: TObject);
begin
   with MakeInvoice.Query1 do
   begin
     if Query1.FieldByName('VNPrice').AsString='' then
     begin
       Showmessage('Price can''t empty, Plase input Price at Shipping N21 ');
       Exit;
     end;
     if CheckBox3.Checked=true then
     begin
       if Query1.FieldByName('VNPrice').Value=0 then
       begin
         Showmessage('Price can''t =0, Plase input Price at Shipping N21 ');
         Exit;
       end;
     end;
     if Query1.FieldByName('xflock').AsString = 'B' then
     begin
        showmessage('RY = '+ Query1.FieldByName('RY').AsString + ' be locked, pls contact Sale Department !!!');
        Abort;
     end;
     if locate('RY',Query1.FieldByName('RY').AsString,[])=false then
     begin
       Insert;
       FieldByName('RY').AsString:=Query1.FieldByName('RY').AsString;
       FieldByName('StyleName').AsString:=Query1.FieldByName('StyleName').AsString;
       FieldByName('PO').AsString:=Query1.FieldByName('PO').AsString;
       FieldByName('CustOrdNo').AsString:=Query1.FieldByName('CustOrdNo').AsString;
       FieldByName('VNPrice').AsString:=Query1.FieldByName('VNPrice').AsString;
       FieldByName('Article').AsString:=Query1.FieldByName('Article').AsString;
       FieldByName('Pairs').AsString:=Query1.FieldByName('Pairs').AsString;
       FieldByName('CustID').AsString:=Query1.FieldByName('CustID').AsString;
       FieldByName('Status').AsString:=Query1.FieldByName('Status').AsString;
       FieldByName('YSBH').AsString:=Query1.FieldByName('YSBH').AsString;
       Post;
     end;
   end;

end;

procedure TInvoice_SelectOrder.Button2Click(Sender: TObject);
var bm:Tbookmark;
    bookmarklist:tbookmarklistEh;
    i:integer;
    RY : string;
    IsInsert:boolean;
begin
  if messagedlg('Do you really want to copy these record?',mtconfirmation,[mbYes,mbNo],0)=mrYes then
  begin
    if (not query1.Active) then
    begin
      abort;
    end;
    if (Query1.recordcount<1) then
    begin
      abort;
    end;
    query1.disablecontrols;
    bm:=query1.getbookmark;
    bookmarklist:=DBGridEh1.selectedrows;
    RY := '';
    if bookmarklist.count>0 then
    begin
        try
          for i:=0 to bookmarklist.count-1 do
          begin
            query1.gotobookmark(pointer(bookmarklist[i]));
            if Query1.FieldByName('VNPrice').AsString<>'' then
            begin
              if Query1.FieldByName('xflock').AsString <> 'B' then
              begin
                with MakeInvoice.Query1 do
                begin
                  if locate('RY',Query1.FieldByName('RY').AsString,[])=false then
                  begin
                    IsInsert:=true;
                    if Query1.FieldByName('VNPrice').AsString='' then
                    begin
                       IsInsert:=false;
                    end;
                    if CheckBox3.Checked=true then
                    begin
                     if Query1.FieldByName('VNPrice').Value=0 then
                     begin
                       IsInsert:=false;
                     end;
                    end;
                    if IsInsert=true then
                    begin
                      Insert;
                      FieldByName('RY').AsString:=Query1.FieldByName('RY').AsString;
                      FieldByName('StyleName').AsString:=Query1.FieldByName('StyleName').AsString;
                      FieldByName('PO').AsString:=Query1.FieldByName('PO').AsString;
                      FieldByName('CustOrdNo').AsString:=Query1.FieldByName('CustOrdNo').AsString;
                      FieldByName('VNPrice').AsString:=Query1.FieldByName('VNPrice').AsString;
                      FieldByName('Article').AsString:=Query1.FieldByName('Article').AsString;
                      FieldByName('Pairs').AsString:=Query1.FieldByName('Pairs').AsString;
                      FieldByName('CustID').AsString:=Query1.FieldByName('CustID').AsString;
                      FieldByName('Status').AsString:=Query1.FieldByName('Status').AsString;
                      FieldByName('YSBH').AsString:=Query1.FieldByName('YSBH').AsString;
                      Post;
                    end;
                  end;
                end;
              end else
              begin
                RY:= RY + Query1.FieldByName('RY').AsString + ' ,';
              end;
            end else
            begin
              Showmessage('Price can''t empty, Plase input Price at Shipping N21 ');
            end;
          end;
        finally
        begin
          if RY <> '' then
          begin
            RY := LeftStr(RY,length(RY)-1);
            showmessage('RY = '+ RY + ' be locked ,pls contact Sale Department !!!');
          end;
          query1.gotobookmark(bm);
          query1.freebookmark(bm);
          query1.enablecontrols;
          showmessage('You have finish copy!');
        end;
       end;
    end;
  end;
end;

procedure TInvoice_SelectOrder.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TInvoice_SelectOrder.FormDestroy(Sender: TObject);
begin
  Invoice_SelectOrder:=nil;
end;

procedure TInvoice_SelectOrder.FormCreate(Sender: TObject);
begin
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
    SQL.Add('select GSDH from BGSZL ');
    SQL.Add('where SFL=''PD'' and DFL in (select DFL from Bgszl where gsdh='''+main.Edit2.Text+''') ');
    Active:=true;
    GSBH.Items.Clear;
    while not Eof do
    begin
      GSBH.Items.Add(fieldbyName('GSDH').AsString);
      Next;
    end;
    if GSBH.Items.Count>0 then GSBH.ItemIndex:=0;
    Active:=false;
  end;
end;

end.
