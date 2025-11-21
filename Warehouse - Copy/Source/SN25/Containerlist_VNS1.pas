unit Containerlist_VNS1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBTables, DB, GridsEh, DBGridEh, StdCtrls, ExtCtrls, FunUnit;

type
  TContainerlist_VNS = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    EDIT1: TEdit;
    Edit2: TEdit;
    Button2: TButton;
    DBGridEh1: TDBGridEh;
    DS1: TDataSource;
    Query1: TQuery;
    Query1CGNO: TStringField;
    Query1CLBH: TStringField;
    Query1YWPM: TStringField;
    Query1DWBH: TStringField;
    Query1ZLBH: TStringField;
    Query1USPrice: TCurrencyField;
    Query1VNPrice: TCurrencyField;
    Query1Qty: TCurrencyField;
    Query1okQty: TCurrencyField;
    Query1CFMDate: TDateTimeField;
    Query1ZSBH: TStringField;
    Query1KCBH: TStringField;
    TmpQry: TQuery;
    UpdateSQL1: TUpdateSQL;
    tempQ: TQuery;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure DBGridEh1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
   
  private
    GSBH_SFL:String;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Containerlist_VNS: TContainerlist_VNS;

implementation

uses Containerlist1, MaterialArea1, main1;

{$R *.dfm}

procedure TContainerlist_VNS.FormDestroy(Sender: TObject);
begin
  Containerlist_VNS:=nil;
end;

procedure TContainerlist_VNS.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TContainerlist_VNS.Button1Click(Sender: TObject);
begin
  with TempQ do
  begin
    active:=false;
    sql.Clear;
    sql.Add('select Purpose from cgzl');
    sql.Add('where cgno=:ZSNO');
    active:=true;
  end;
  with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select CGZL.ZSBH,CGZLS.CGNO,CGZLS.CLBH,CLZL.YWPM,CLZL.DWBH,KCZLS.KCBH,');
    sql.add('CGZLS.USPrice,CGZLS.VNPrice,CGZLSS.ZLBH, max(CGZLSS.CFMDate)as CFMDate,');
    sql.add(' isnull(sum(CGZLSS.qty),0) as Qty, isnull(CGRK.okQty,0) as okQty');
    sql.add('from CGZLS');
    sql.add('left join CLZL on CLZL.CLDH=CGZLS.CLBH');
    sql.add('left join CGZL on CGZL.CGNO=CGZLS.CGNO');
    sql.add('left join (select KCZLS.* from KCZLS ');
    sql.add('           where KCZLS.CKBH='+''''+Containerlist.ENMas.fieldbyname('CKBH').value+'''');
    sql.add('           )KCZLS on KCZLS.CLBH=CLZL.CLDH ');
    sql.add('left join CGZLSS on CGZL.CGNO=CGZLSS.CGNO and CGZLSS.CLBH=CGZLS.CLBH');

    sql.add('left join (select HG_INVS.CLBH,HG_INVS.CGBH,sum(HG_INVS.Qty) as okQty from HG_INVS');
    sql.add('           left join HG_INV on HG_INV.RKNO=HG_INVS.RKNO ');
    if ((GSBH_SFL='PD') and (tempQ.FieldByName('PURPOSE').AsString='TW'))  then
      sql.add('           where 1=1 ')
    else
      sql.add('           where HG_INV.ZSBH='+''''+edit1.Text+'''');
    //
    sql.add('           and HG_INV.ZSNO= '+''''+edit2.Text+'''');
    sql.add('           group by  HG_INVS.CLBH,HG_INVS.CGBH ) CGRK')  ;
    sql.add('           on CGRK.CLBH=CGZLS.CLBH and CGRK.CGBH=CGZLSS.ZLBH') ;
    if ((GSBH_SFL='PD') and (tempQ.FieldByName('PURPOSE').AsString='TW'))  then
        sql.add('where 1=1')
    else
       sql.add('where CGZL.ZSBH='+''''+edit1.Text+'''');
    sql.add('      and CGZLS.CGNO= '+''''+edit2.Text+'''');
    sql.add('      and (CGZL.CGLX='+''''+'2'+'''' );
    sql.add('           or CGZL.CGLX='+''''+'1'+''''+')' );
    sql.add('      and CGZL.GSBH='+''''+main.edit2.Text+'''');
    //
    sql.add('group by CGZL.ZSBH,CGZLS.CGNO,CGZLS.CLBH,CLZL.YWPM,CLZL.DWBH,KCZLS.KCBH,');
    sql.add('CGZLS.USPrice,CGZLS.VNPrice,CGZLSS.ZLBH,CGRK.okQty');
    sql.Add('order by cgzls.clbh,cgzlss.zlbh');
    active:=true;
  end;
  TempQ.Active:=false;
end;

procedure TContainerlist_VNS.Button2Click(Sender: TObject);
var bm:Tbookmark;
    i:integer;
    Qty:real;
    bookmarklist:tbookmarklistEh;
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
    if Query1.FieldByName('KCBH').IsNull then       //如果沒有確定位置則重新確定先
      begin
        MaterialArea:=TMaterialArea.create(nil);
        MaterialArea.Edit1.Text:=Query1.fieldbyname('CLBH').AsString;
        MaterialArea.CBX1.Text:=Containerlist.EnMas.fieldbyname('CKBH').AsString;
        MaterialArea.button1click(nil);
        MaterialArea.show;
        query1.Active:=false;
        close;
        abort;
      end;
    query1.disablecontrols;
    bm:=query1.getbookmark;
    bookmarklist:=DBGridEh1.selectedrows;
    if bookmarklist.count>0 then
    begin
      try
       for i:=0 to bookmarklist.count-1 do
        begin
         query1.gotobookmark(pointer(bookmarklist[i]));
         //
          with Containerlist.ENDet do
            begin
              edit;
              fieldbyname('CGBH').value:=query1.FieldByName('ZLBH').Value;
              fieldbyname('RKSB').value:='VN';
              fieldbyname('CLBH').value:=query1.fieldbyname('CLBH').value;
              fieldbyname('YWPM').value:=query1.fieldbyname('YWPM').value;
              fieldbyname('DWBH').value:=query1.fieldbyname('DWBH').value;
              if query1.FieldByName('okQty').value<query1.FieldByName('Qty').value then
                begin
                  fieldbyname('Qty').value:=trunc((query1.fieldbyname('Qty').value-query1.FieldByName('okQty').value)*100+0.5)/100;
                end
                else
                  begin
                    fieldbyname('Qty').value:=0;
                  end;
              fieldbyname('PaQty').value:=trunc(query1.fieldbyname('Qty').value*10000+0.5)/10000;
              fieldbyname('UsPrice').value:=query1.fieldbyname('UsPrice').value;
              fieldbyname('VNPrice').value:=query1.fieldbyname('VNPrice').value;
              insert;
            end;
          end;  
           //
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

procedure TContainerlist_VNS.DBGridEh1DblClick(Sender: TObject);
begin
  if (not query1.Active) then
  begin
    abort;
  end;
  if (Query1.recordcount<1) then
  begin
    abort;
  end;
  if Query1.FieldByName('KCBH').IsNull then
  begin
    MaterialArea:=TMaterialArea.create(nil);
    MaterialArea.Edit1.Text:=Query1.fieldbyname('CLBH').AsString;
    MaterialArea.CBX1.Text:=Containerlist.EnMas.fieldbyname('CKBH').AsString;
    MaterialArea.button1click(nil);
    MaterialArea.show;
    query1.Active:=false;
    close;
    abort;
  end;

  with Containerlist.ENDet do
  begin
    insert;
    fieldbyname('CGBH').value:=query1.FieldByName('ZLBH').Value;
    fieldbyname('RKSB').value:='VN';
    fieldbyname('CLBH').value:=query1.fieldbyname('CLBH').value;
    fieldbyname('YWPM').value:=query1.fieldbyname('YWPM').value;
    fieldbyname('DWBH').value:=query1.fieldbyname('DWBH').value;
      if query1.FieldByName('okQty').value<query1.FieldByName('Qty').value then
      begin
        fieldbyname('Qty').value:=trunc((query1.fieldbyname('Qty').value-query1.FieldByName('okQty').value)*100+0.5)/100;
      end else
      begin
          fieldbyname('Qty').value:=0;
      end;
    fieldbyname('PaQty').value:=trunc(query1.fieldbyname('Qty').value*10000+0.5)/10000;
    fieldbyname('UsPrice').value:=query1.fieldbyname('UsPrice').value;
    fieldbyname('VNPrice').value:=query1.fieldbyname('VNPrice').value;
    post;
  end;
  showmessage('Succeed.');

end;

procedure TContainerlist_VNS.DBGridEh1KeyPress(Sender: TObject;
  var Key: Char);
begin
 if key=#13 then
  if (not query1.Active) then
  begin
    abort;
  end;
  if (Query1.recordcount<1) then
  begin
    abort;
  end;
  if Query1.FieldByName('KCBH').IsNull then
  begin
    MaterialArea:=TMaterialArea.create(nil);
    MaterialArea.Edit1.Text:=Query1.fieldbyname('CLBH').AsString;
    MaterialArea.CBX1.Text:=Containerlist.EnMas.fieldbyname('CKBH').AsString;
    MaterialArea.button1click(nil);
    MaterialArea.show;
    query1.Active:=false;
    close;
    abort;
  end;

  with Containerlist.ENDet do
  begin
    insert;
    fieldbyname('CGBH').value:=query1.FieldByName('ZLBH').Value;
    fieldbyname('RKSB').value:='VN';
    fieldbyname('CLBH').value:=query1.fieldbyname('CLBH').value;
    fieldbyname('YWPM').value:=query1.fieldbyname('YWPM').value;
    fieldbyname('DWBH').value:=query1.fieldbyname('DWBH').value;
    if query1.FieldByName('okQty').value<query1.FieldByName('Qty').value then
      begin
        fieldbyname('Qty').value:=trunc((query1.fieldbyname('Qty').value-query1.FieldByName('okQty').value)*100+0.5)/100;
      end
      else
        begin
          fieldbyname('Qty').value:=0;
        end;
    fieldbyname('PaQty').value:=trunc(query1.fieldbyname('Qty').value*10000+0.5)/10000;
    fieldbyname('UsPrice').value:=query1.fieldbyname('UsPrice').value;
    fieldbyname('VNPrice').value:=query1.fieldbyname('VNPrice').value;
    post;
  end;
end;

procedure TContainerlist_VNS.DBGridEh1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if query1.FieldByName('okQty').value>=query1.FieldByName('Qty').value then
  begin
    DBGridEh1.canvas.font.color:=clred;
    DBGridEh1.defaultdrawcolumncell(rect,datacol,column,state);
  end;
end;

procedure TContainerlist_VNS.FormCreate(Sender: TObject);
begin
  with TmpQry do
  begin
    Active:=false;
    sql.Clear;
    sql.add('select SFL from Bgszl where GSDH='''+main.Edit2.Text+''' ');
    active:=true;
    GSBH_SFL:=FieldByName('SFL').AsString;
    Active:=false;
  end;
end;

procedure TContainerlist_VNS.FormShow(Sender: TObject);
begin
  main.FormLanguage(Pointer(self),self.Name);
end;

end.
