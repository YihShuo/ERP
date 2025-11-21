unit EntryList_VN1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls,math, GridsEh,
  DBGridEh;

type
  TEntryList_VN = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Button1: TButton;
    EDIT1: TEdit;
    DS1: TDataSource;
    Query1: TQuery;
    Edit2: TEdit;
    Label2: TLabel;
    Query1CGNO: TStringField;
    Query1CLBH: TStringField;
    Query1Qty: TCurrencyField;
    Query1USPrice: TCurrencyField;
    Query1VNPrice: TCurrencyField;
    Query1Memo: TStringField;
    Query1ZSBH: TStringField;
    Query1YWPM: TStringField;
    Query1DWBH: TStringField;
    Query1KCBH: TStringField;
    TmpQry: TQuery;
    Query1okQty: TFloatField;
    tempQ: TQuery;
    Button2: TButton;
    DBGridEh1: TDBGridEh;
    Label3: TLabel;
    MatEdit: TEdit;
    Query1HGBH: TStringField;
    Query1HGBH_HD: TStringField;
    Query1HGBH_TC: TStringField;
    procedure Button1Click(Sender: TObject);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button2Click(Sender: TObject);
    procedure DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure DBGridEh1KeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    GSBH_SFL:String;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  EntryList_VN: TEntryList_VN;
  NDate:TDate;

implementation

uses main1, MaterialArea1, EntryList1,  EntryTotal1, FunUnit;

{$R *.dfm}

procedure TEntryList_VN.Button1Click(Sender: TObject);
begin
  with TmpQry do
  begin
    active:=false;
    sql.clear;
    sql.add('select getdate() as NowDate ');
    active:=true;
    NDate:=fieldbyname('NowDate').Value;
  end;
  //
  with TempQ do
  begin
    active:=false;
    sql.Clear;
    sql.Add('select Purpose from cgzl');
    sql.Add('where cgno=:ZSNO');
    active:=true;
  end;
  //
  with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select CGZLS.*,CGZL.ZSBH,CLZL.YWPM,CLZL.DWBH,KCZLS.KCBH,isnull(CGRK.okQty,0) as okQty,CLHG.HGBH,CLHD.HGBH as HGBH_HD,CLTC.HGBH as HGBH_TC');
    sql.add('from CGZLS');
    sql.add('left join CLZL on CLZL.CLDH=CGZLS.CLBH');
    sql.add('left join CGZL on CGZL.CGNO=CGZLS.CGNO');
    sql.add('left join (select KCZLS.* from KCZLS ');
    sql.add('           where KCZLS.CKBH='+''''+EntryList.ENMas.fieldbyname('CKBH').value+'''');
    sql.add('           )KCZLS on KCZLS.CLBH=CGZLS.CLBH ');

    sql.add('left join (select KCRKS.CLBH,sum(KCRKS.Qty) as okQty,KCRKS.CGBH from KCRKS');
    sql.add('           left join KCRK on KCRK.RKNO=KCRKS.RKNO ');
    //20151016併單給台灣採購單(ZSZL.YN=1)不用檢查入庫廠商
    if ((main.edit2.Text='VA12') and (tempQ.FieldByName('PURPOSE').AsString='TW'))  then
      sql.add('where 1=1')
    else
      sql.add('           where KCRK.ZSBH='+''''+edit1.Text+'''');
    if length(edit2.text)<=4 then
    begin
      sql.add('          and KCRK.USERDate>='+''''+formatdatetime('yyyy/mm/dd',IncMonth(NDate,-2))+'''');
    end;
    sql.add('           and KCRKS.CGBH like '''+edit2.Text+'%'' ');
    sql.add('           group by  KCRKS.CLBH,KCRKS.CGBH ) CGRK')  ;
    sql.add('           on CGRK.CLBH=CGZLS.CLBH and CGRK.CGBH=CGZLS.CGNO') ;
    //20170214
    sql.Add('left join CLHG on CGZLS.CLBH=CLHG.CLBH');
    sql.Add('left join CLHD on CGZLS.CLBH=CLHD.CLBH');
    sql.Add('left join CLTC on CGZLS.CLBH=CLTC.CLBH');
    //20151016併單給台灣採購單(ZSZL.YN=1)不用檢查入庫廠商
    if ((GSBH_SFL='PD') and (tempQ.FieldByName('PURPOSE').AsString='TW'))  then
        sql.add('where 1=1')
    else
        sql.add('where CGZL.ZSBH='+''''+edit1.Text+'''');
    //
    if MatEdit.Text<>'' then
    sql.add('      and CGZLS.CLBH like '''+MatEdit.Text+'%'' ');
    if length(edit2.text)<=4 then
    begin
      sql.add('      and CGZL.CGDate>='+''''+formatdatetime('yyyy/mm/dd',IncMonth(NDate,-2))+'''');
    end;
    sql.add('       and CGZLS.CGNO='+''''+edit2.Text+'''');
    sql.add('      and (CGZL.CGLX='+''''+'3'+'''' );
    sql.add('           or CGZL.CGLX='+''''+'6'+''''+')');
    //funcObj.WriteErrorLog(sql.Text);
    active:=true;
  end;
  TempQ.Active:=false;

end;
procedure TEntryList_VN.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    button1click(nil);
end;

procedure TEntryList_VN.FormDestroy(Sender: TObject);
begin
  EntryList_VN:=nil;
end;

procedure TEntryList_VN.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  query1.active:=false;
end;

procedure TEntryList_VN.Button2Click(Sender: TObject);
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
        MaterialArea:=TMaterialArea.create(self);
        MaterialArea.Edit1.Text:=Query1.fieldbyname('CLBH').AsString;
        MaterialArea.CBX1.Text:=EntryList.EnMas.fieldbyname('CKBH').AsString;
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
          with EntryList.ENDet do
            begin
              edit;
              fieldbyname('CGBH').value:=query1.FieldByName('CGNO').Value;
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
              if (EntryList.ENMas.FieldByName('HGLB').Value='NK') then
                 fieldbyname('CNO').value:=query1.fieldbyname('HGBH').value;
              if (EntryList.ENMas.FieldByName('HGLB').Value='TC') then
                 fieldbyname('CNO').value:=query1.fieldbyname('HGBH_TC').value;
              if (EntryList.ENMas.FieldByName('HGLB').Value='HD')  then
                 fieldbyname('CNO').value:=query1.fieldbyname('HGBH_HD').value;
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

procedure TEntryList_VN.DBGridEh1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if query1.FieldByName('okQty').value>=query1.FieldByName('Qty').value then
  begin
    DBGridEh1.canvas.font.color:=clred;
    DBGridEh1.defaultdrawcolumncell(rect,datacol,column,state);
  end;  
end;

procedure TEntryList_VN.DBGridEh1DblClick(Sender: TObject);
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
    MaterialArea:=TMaterialArea.create(self);
    MaterialArea.Edit1.Text:=Query1.fieldbyname('CLBH').AsString;
    MaterialArea.CBX1.Text:=EntryList.EnMas.fieldbyname('CKBH').AsString;
    MaterialArea.button1click(nil);
    MaterialArea.show;
    query1.Active:=false;
    close;
    abort;
  end;

  with EntryList.ENDet do
  begin
    insert;
    fieldbyname('CGBH').value:=query1.FieldByName('CGNO').Value;
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
    if (EntryList.ENMas.FieldByName('HGLB').Value='NK') then
      fieldbyname('CNO').value:=query1.fieldbyname('HGBH').value;
    if (EntryList.ENMas.FieldByName('HGLB').Value='TC') then
                 fieldbyname('CNO').value:=query1.fieldbyname('HGBH_TC').value;
    if (EntryList.ENMas.FieldByName('HGLB').Value='HD')  then
      fieldbyname('CNO').value:=query1.fieldbyname('HGBH_HD').value;
    post;
  end;
  showmessage('Succeed.');
end;

procedure TEntryList_VN.DBGridEh1KeyPress(Sender: TObject; var Key: Char);
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
  if Query1.FieldByName('KCBH').IsNull then       //如果沒有確定位置則重新確定先
  begin
    MaterialArea:=TMaterialArea.create(self);
    MaterialArea.Edit1.Text:=Query1.fieldbyname('CLBH').AsString;
    MaterialArea.CBX1.Text:=EntryList.EnMas.fieldbyname('CKBH').AsString;
    MaterialArea.button1click(nil);
    MaterialArea.show;
    query1.Active:=false;
    close;
    abort;
  end;

  with EntryList.ENDet do
  begin
    insert;
    fieldbyname('CGBH').value:=query1.FieldByName('CGNO').Value;
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
    if (EntryList.ENMas.FieldByName('HGLB').Value='NK') then
      fieldbyname('CNO').value:=query1.fieldbyname('HGBH').value;
    if (EntryList.ENMas.FieldByName('HGLB').Value='TC') then
                 fieldbyname('CNO').value:=query1.fieldbyname('HGBH_TC').value;
    if (EntryList.ENMas.FieldByName('HGLB').Value='HD')  then
      fieldbyname('CNO').value:=query1.fieldbyname('HGBH_HD').value;
    post;
  end;
end;

procedure TEntryList_VN.FormCreate(Sender: TObject);
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

procedure TEntryList_VN.FormShow(Sender: TObject);
begin
  main.FormLanguage(Pointer(self),self.Name);
end;

end.
