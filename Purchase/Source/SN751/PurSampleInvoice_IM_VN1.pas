unit PurSampleInvoice_IM_VN1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls, ComCtrls,math,
  dateutils, GridsEh, DBGridEh;

type
  TPurSampleInvoice_IM_VN = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    Edit2: TEdit;
    EDIT1: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    DS1: TDataSource;
    Query1: TQuery;
    Button3: TButton;
    Label3: TLabel;
    Edit7: TEdit;
    ZS: TLabel;
    Edit8: TEdit;
    Edit9: TEdit;
    Query1CGNO: TStringField;
    Query1CLBH: TStringField;
    Query1YWPM: TStringField;
    Query1DWBH: TStringField;
    Query1okQty: TCurrencyField;
    Query1PurQty: TCurrencyField;
    Query1BalanceQty: TCurrencyField;
    chk1: TCheckBox;
    Label4: TLabel;
    DTP1: TDateTimePicker;
    Label5: TLabel;
    DTP2: TDateTimePicker;
    DBGridEh1: TDBGridEh;
    Lab_Key: TLabel;
    Query1ZLBH: TStringField;
    Query1RKNO: TStringField;
    Edit5: TEdit;
    Label6: TLabel;
    Edit6: TEdit;
    Label7: TLabel;
    Query1DOCNO: TStringField;
    Label8: TLabel;
    Edit10: TEdit;
    Query1QTY: TCurrencyField;
    procedure Button1Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure EDIT1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure Edit4KeyPress(Sender: TObject; var Key: Char);
    procedure Edit5KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button3Click(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure DBGridEh1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PurSampleInvoice_IM_VN: TPurSampleInvoice_IM_VN;
  sdate,edate:TDate;

implementation

uses   main1, PurSampleInvoice1 ;

{$R *.dfm}

procedure TPurSampleInvoice_IM_VN.Button1Click(Sender: TObject);
var y,m:word;
begin
  with query1 do
    begin
      active:=false;
      sql.Clear;
      SQL.Add('select	cgzlss.CGNO, cgzlss.CLBH, CLZL.YWPM, CLZL.DWBH, cgzlss.ZLBH, KC.RKNO, KC.DOCNO, KC.QTY ');
      SQL.Add('       ,isnull(CGZLInvoiceSS.okQty,0) as okQty ');
      SQL.Add('       ,isnull(CGZLS.Qty,0) as PurQty ');
      SQL.Add('       ,(isnull(sum(CGZLSS.Qty),0)-isnull(sum(CGZLInvoiceSS.okQty),0)) as BalanceQty ');
      SQL.Add(' from cgzlss ');
      SQL.Add(' left join cgzl on cgzl.cgno=cgzlss.cgno ');
      SQL.Add(' left join cgzls on cgzls.cgno=cgzlss.cgno and CGZLS.CLBH = CGZLSS.CLBH');
      SQL.Add(' left join CLZL on CLZL.CLDH=CGZLSS.CLBH ');
      SQL.Add(' left join (select kcrk.rkno, kcrk.zsno, kcrks.CLBH, kcrks.CGBH, KCRK.DOCNO, KCRKS.QTY from kcrks ');
      SQL.Add('           left join kcrk on kcrk.rkno=kcrks.rkno) KC ');
      SQL.Add('       on KC.ZSNO=CGZLSS.CGNO and KC.CLBH=CGZLSS.CLBH and KC.CGBH=CGZLSS.ZLBH ');
      SQL.Add(' left join (select sum(CGZLInvoiceSS.InvQty) as okQty ');
      SQL.Add('           ,CGZLInvoiceSS.CLBH,CGZLInvoiceSS.CGNO ,CGZLInvoiceSS.ZLBH ');
      SQL.Add('           from CGZLInvoiceSS ');
      SQL.Add('           group by CGZLInvoiceSS.CGNO,CGZLInvoiceSS.CLBH,CGZLInvoiceSS.ZLBH ) CGZLInvoiceSS ');
      SQL.Add('       on CGZLInvoiceSS.CLBH=CGZLSS.CLBH AND CGZLInvoiceSS.CGNO=CGZLSS.CGNO AND CGZLInvoiceSS.ZLBH=cgzlss.ZLBH ');
      SQL.Add(' where 1=1 ');
      sql.Add(' and KC.RKNO <> '''' '); 
      if PurSampleInvoice_IM_VN.Lab_Key.Caption='Sample' then
        sql.add('   and CGZL.CGLX=''6'' ');
      if PurSampleInvoice_IM_VN.Lab_Key.Caption='Prod' then
        sql.add('   and CGZL.GSBH='+''''+main.Edit2.Text+'''');


      sql.add('and convert(smalldatetime,convert(varchar,CGZL.CGDATE,111))  between ');
      sql.add(''''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''''+' and  '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date) +'''');

      if edit1.Text<>'' then
        sql.add('      and CGZLSS.CLBH like '+''''+edit1.Text+'%'+'''');
      if edit2.Text<>'' then
        sql.add('      and CLZL.YWPM like '+''''+'%'+edit2.Text+'%'+'''');
      if edit3.Text<>'' then
        sql.add('      and CLZL.YWPM like '+''''+'%'+edit3.Text+'%'+'''');
      if edit4.Text<>'' then
        sql.add('      and CLZL.YWPM like '+''''+'%'+edit4.Text+'%'+'''');
      if edit7.Text<>'' then
        sql.add('      and CGZLSS.CGNO like '+''''+edit7.Text+'%'+'''');
     if chk1.Checked=true then
        sql.add('      and isnull(CGZLSS.Qty,0)>isnull(CGZLInvoiceSS.okQty,0) ');
      sql.add('      and CGZL.ZSBH='+''''+edit8.Text+'''');
      if Edit5.Text<>'' then
        SQL.Add('      and KC.RKNO like '+''''+edit5.Text+'%'+'''');
      if Edit6.Text<>'' then
        SQL.Add('      and cgzlss.ZLBH = '+''''+edit6.Text+'''');
      if Edit10.Text<>'' then
        SQL.Add('      and KC.DOCNO like '+''''+'%'+edit10.Text+'%'+'''');
      SQL.Add('group by cgzlss.CGNO, cgzlss.CLBH, CLZL.YWPM, CLZL.DWBH, cgzlss.ZLBH');
      SQL.Add('   , KC.RKNO, KC.DOCNO, KC.QTY,CGZLInvoiceSS.okQty ,CGZLS.Qty');
      sql.add('order by CGZLSS.CGNO');
      SQL.Add('  ');
      active:=true;
    end;
{
with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select  CGZLS.CGNO,CGZLS.CLBH,CLZL.YWPM,CLZL.DWBH,isnull(CGZLInvoiceS.okQty,0) as okQty,');
    sql.add('          isnull(CGZLS.Qty,0) as PurQty,  ');
    sql.add('         (isnull(CGZLS.Qty,0)-isnull(CGZLInvoiceS.okQty,0)) as BalanceQty  ');
    sql.add('from CGZLS');
    sql.add('left join CGZL on CGZL.CGNO=CGZLS.CGNO ');
    sql.add('left join CLZL on CLZL.CLDH=CGZLS.CLBH');
    sql.add('left join ZSZL on ZSZL.ZSDH=CGZL.ZSBH');
    sql.add('left join (select sum(CGZLInvoiceS.Qty) as okQty,CGZLInvoiceS.CLBH,CGZLInvoiceS.CGNO ');
    sql.add('           from CGZLInvoiceS ');
    sql.add('           group by CGZLInvoiceS.CGNO,CGZLInvoiceS.CLBH ) CGZLInvoiceS on CGZLInvoiceS.CLBH=CGZLS.CLBH AND CGZLInvoiceS.CGNO=CGZLS.CGNO ');
    sql.add('where 1=1 ');
    if PurSampleInvoice_IM_VN.Lab_Key.Caption='Sample' then
       sql.add('   and CGZL.CGLX=''6'' ');
    if PurSampleInvoice_IM_VN.Lab_Key.Caption='Prod' then
       sql.add('   and CGZL.GSBH='+''''+main.Edit2.Text+'''');
    sql.add('and convert(smalldatetime,convert(varchar,CGZL.CGDATE,111))  between ');
    sql.add(''''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''''+' and  '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date) +'''');

    if edit1.Text<>'' then
       sql.add('      and CGZLS.CLBH like '+''''+edit1.Text+'%'+'''');
    if edit2.Text<>'' then
       sql.add('      and CLZL.YWPM like '+''''+'%'+edit2.Text+'%'+'''');
    if edit3.Text<>'' then
       sql.add('      and CLZL.YWPM like '+''''+'%'+edit3.Text+'%'+'''');
    if edit4.Text<>'' then
       sql.add('      and CLZL.YWPM like '+''''+'%'+edit4.Text+'%'+'''');
    if edit7.Text<>'' then
       sql.add('      and CGZLS.CGNO like '+''''+edit7.Text+'%'+'''');
    if chk1.Checked=true then
       sql.add('      and isnull(CGZLS.Qty,0)>isnull(CGZLInvoiceS.okQty,0) ');
    sql.add('      and CGZL.ZSBH='+''''+edit8.Text+'''');
    sql.add('order by CGZLS.CGNO');
    active:=true;
  end;
}
end;

procedure TPurSampleInvoice_IM_VN.DBGrid1DblClick(Sender: TObject);
begin
if (not query1.Active) then
  begin
    abort;
  end;
if (Query1.recordcount<1) then
  begin
    abort;
  end;
with PurSampleInvoice.CGDet do
  begin
    fieldbyname('CLBH').value:=query1.fieldbyname('CLBH').value;
    fieldbyname('YWPM').value:=query1.fieldbyname('YWPM').value;
    fieldbyname('DWBH').value:=query1.fieldbyname('DWBH').value;
    fieldbyname('JGNO').value:=query1.fieldbyname('YPZLBH').value;
    if  query1.fieldbyname('CLSL').value>query1.fieldbyname('okQty').value then
      begin
        fieldbyname('XqQty').value:=roundto(query1.fieldbyname('CLSL').value-query1.fieldbyname('okQty').value,-1);
      end
      else
        begin
          fieldbyname('XqQty').value:=0;
        end;
    insert;
  end;
showmessage('Succeed.');
end;

procedure TPurSampleInvoice_IM_VN.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
  DBGrid1dblclick(nil);
end;

procedure TPurSampleInvoice_IM_VN.EDIT1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
  edit2.SetFocus;
end;

procedure TPurSampleInvoice_IM_VN.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
  edit3.SetFocus;
end;

procedure TPurSampleInvoice_IM_VN.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
  edit4.SetFocus;
end;

procedure TPurSampleInvoice_IM_VN.Edit4KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
end;

procedure TPurSampleInvoice_IM_VN.Edit5KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
  button1click(nil);
end;

procedure TPurSampleInvoice_IM_VN.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
if query1.FieldByName('PurQty').value<=query1.FieldByName('okQty').value then
  begin
    DBGridEh1.canvas.font.color:=clred;
    //DBGridEh1.defaultdrawcolumncell(rect,datacol,column,state);
  end;

if (query1.FieldByName('okQty').value>0) and (query1.FieldByName('Purqty').value>query1.FieldByName('okQty').value) then
  begin
    DBGridEh1.canvas.font.color:=clLime;
    //DBGridEh1.defaultdrawcolumncell(rect,datacol,column,state);
  end;
end;

procedure TPurSampleInvoice_IM_VN.FormDestroy(Sender: TObject);
begin
PurSampleInvoice_IM_VN:=nil;
end;

procedure TPurSampleInvoice_IM_VN.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TPurSampleInvoice_IM_VN.Button3Click(Sender: TObject);
var bm:Tbookmark;
i:integer;
Qty:real;
bookmarklist:tbookmarklistEh;
begin
if messagedlg('Do you really want to copy these record?',mtconfirmation,[mbYes,mbNo],0)=mrYes then
  begin
  Qty:=0;
  if (not query1.Active) then
    begin
      abort;
    end;
  if (Query1.recordcount<1) then
    begin
      abort;
    end;
  //with query1 do
  // begin
  query1.disablecontrols;
  bm:=query1.getbookmark;
  bookmarklist:=DBGridEh1.selectedrows;
  if bookmarklist.count>0 then
    begin
      try
        for i:=0 to bookmarklist.count-1 do
          begin
            query1.gotobookmark(pointer(bookmarklist[i]));
            if PurSampleInvoice_IM_VN.Lab_Key.Caption='Sample' then
              BEGIN
               with PurSampleInvoice.Qry_SS_S do
               begin
                PurSampleInvoice.Qry_SS_S.edit;
                fieldbyname('ZLBH').value:=query1.fieldbyname('ZLBH').value;
                fieldbyname('InvQty').value:=query1.fieldbyname('QTY').value;
                fieldbyname('CGQty').value:=query1.fieldbyname('PurQty').value;
                fieldbyname('BalQty').value:=0;
                fieldbyname('CINO').value:=PurProdInvoice.CGMas.fieldbyname('CINO').value;
                fieldbyname('RKNO').value:=query1.fieldbyname('RKNO').value;
                fieldbyname('CLBH').value:=query1.fieldbyname('CLBH').value;
                fieldbyname('CGNO').value:=query1.fieldbyname('CGNO').value;
                insert;
               end;
              end;
           

          end;
      finally
        begin
          query1.gotobookmark(bm);
          query1.freebookmark(bm);
          query1.enablecontrols;
          showmessage('You have finish copy!');
        end;
      end;
    end;
  end;

end;

procedure TPurSampleInvoice_IM_VN.DBGridEh1DblClick(Sender: TObject);
begin
if (not query1.Active) then
  begin
    abort;
  end;
if (Query1.recordcount<1) then
  begin
    abort;
  end;

{　　 //　2012　1027　先把樣品註解掉不RUN
if PurSampleInvoice_IM_VN.Lab_Key.Caption='Sample' then
  BEGIN
     with PurSampleInvoice.CGDet do
     begin
       fieldbyname('CLBH').value:=query1.fieldbyname('CLBH').value;
       fieldbyname('YWPM').value:=query1.fieldbyname('YWPM').value;
       fieldbyname('DWBH').value:=query1.fieldbyname('DWBH').value;
       fieldbyname('CGNO').value:=query1.fieldbyname('CGNO').value;
       if query1.fieldbyname('PurQty').value>query1.fieldbyname('okQty').value then
         begin
           fieldbyname('XqQty').value:=roundto(query1.fieldbyname('PurQty').value-query1.fieldbyname('okQty').value,-1);
           fieldbyname('Qty').value:=roundto(query1.fieldbyname('PurQty').value-query1.fieldbyname('okQty').value,-1);
         end
         else
           begin
             fieldbyname('XqQty').value:=0;
             fieldbyname('Qty').value:=0;
           end;
       insert;
     end;
  END;
}
if PurSampleInvoice_IM_VN.Lab_Key.Caption='Prod' then
  BEGIN
     with PurProdInvoice.Qry_SS_S do
     begin
       insert;
       fieldbyname('ZLBH').value:=query1.fieldbyname('ZLBH').value;
       fieldbyname('InvQty').value:=query1.fieldbyname('QTY').value;
       fieldbyname('CGQty').value:=query1.fieldbyname('PurQty').value;
       fieldbyname('BalQty').value:=0;
       fieldbyname('CINO').value:=PurProdInvoice.CGMas.fieldbyname('CINO').value;
       fieldbyname('RKNO').value:=query1.fieldbyname('RKNO').value;
       fieldbyname('CLBH').value:=query1.fieldbyname('CLBH').value;
       fieldbyname('CGNO').value:=query1.fieldbyname('CGNO').value;
       {
       if query1.fieldbyname('PurQty').value>query1.fieldbyname('okQty').value then
         begin
           fieldbyname('XqQty').value:=roundto(query1.fieldbyname('PurQty').value-query1.fieldbyname('okQty').value,-1);
           fieldbyname('Qty').value:=roundto(query1.fieldbyname('PurQty').value-query1.fieldbyname('okQty').value,-1);
         end
         else
           begin
             fieldbyname('XqQty').value:=0;
             fieldbyname('Qty').value:=0;
           end;
       }

     end;
  END;

  
showmessage('Succeed.');

end;

procedure TPurSampleInvoice_IM_VN.DBGridEh1KeyPress(Sender: TObject;
  var Key: Char);
begin
if key=#13 then
  DBGridEh1dblclick(nil);
end;

end.
