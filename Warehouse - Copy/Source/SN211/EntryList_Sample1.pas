unit EntryList_Sample1;

interface


uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls,math, GridsEh,
  DBGridEh,IniFiles;

type
  TEntryList_Sample= class(TForm)
    Panel1: TPanel;
    Button1: TButton;
    DS1: TDataSource;
    Query1: TQuery;
    Edit2: TEdit;
    Label2: TLabel;
    Query2: TQuery;
    Query1CGNO: TStringField;
    Query1CLBH: TStringField;
    Query1USPrice: TFloatField;
    Query1VNPrice: TCurrencyField;
    Query1CFMDate: TDateTimeField;
    Query1ZSBH: TStringField;
    Query1YWPM: TStringField;
    Query1ZLBH: TStringField;
    Query1Qty: TCurrencyField;
    Query1DWBH: TStringField;
    Query1KCBH: TStringField;
    Query1okQty: TCurrencyField;
    Button2: TButton;
    DBGridEh1: TDBGridEh;
    Label4: TLabel;
    MatEdit: TEdit;
    Query1CNO: TStringField;
    Query1HGBH_HD: TStringField;
    Query1HGBH_TC: TStringField;
    Query1HGBH1: TStringField;
    Query1HGBH_HD1: TStringField;
    Query1HGBH_TC1: TStringField;
    Query1HGBH_NQ: TStringField;
    Query1HGBH_NKNQ: TStringField;
    Query1HGBH_KD: TStringField;
    Query1HGBH_KD1: TStringField;
    Query1CWBH: TStringField;
    procedure DBGrid1DblClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure Button2Click(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    AppDir:string;
    { Private declarations }
    procedure ReadIni();
  public
    WH_DiplayFormat:String;
    { Public declarations }
  end;

var
  EntryList_Sample: TEntryList_Sample;
  NDate:TDate;

implementation

uses  EntryList1, main1, FunUnit, MaterialArea1;

{$R *.dfm}

procedure TEntryList_Sample.ReadIni();
var MyIni :Tinifile;
    AppDir:string;
begin
  WH_DiplayFormat:='#,##0.00';
  AppDir:=ExtractFilePath(Application.ExeName);
  if FileExists(AppDir+'\ComName.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ComName.ini');
      WH_DiplayFormat:=MyIni.ReadString('Warehouse','DiplayFormat','#,##0.00');
    finally
      MyIni.Free;
    end;
  end;
  TCurrencyField(query1.FieldByName('Qty')).DisplayFormat:=WH_DiplayFormat;
  TCurrencyField(query1.FieldByName('okQty')).DisplayFormat:=WH_DiplayFormat;
end;

procedure TEntryList_Sample.DBGrid1DblClick(Sender: TObject);
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
  showmessage('Succeed.');
end;

procedure TEntryList_Sample.Button1Click(Sender: TObject);
begin
  with query2 do
  begin
    active:=false;
    sql.clear;
    sql.add('select getdate() as NowDate ');
    active:=true;
    NDate:=fieldbyname('NowDate').Value;    
  end;

  with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select CGZL.ZSBH,CGZLS.CGNO,CGZLS.CLBH,CLZL.YWPM,CLZL.DWBH,KCZLS.KCBH,');
    sql.add('       CGZLS.USPrice,CGZLS.VNPrice,CGZLSS.ZLBH, max(CGZLSS.CFMDate)as CFMDate,');
    sql.add('       isnull(sum(CGZLSS.qty),0) as Qty, isnull(CGRK.okQty,0) as okQty,CLHG.HGBH,CLHD.HGBH as HGBH_HD,CLTC.HGBH as HGBH_TC,');
    sql.Add('       CLHG1.HGBH as HGBH1,CLHD1.HGBH as HGBH_HD1,CLTC1.HGBH as HGBH_TC1,CLNQ.HGBH as HGBH_NQ,CLNKNQ.HGBH as HGBH_NKNQ,');
    sql.Add('       CLKD.HGBH as HGBH_KD,CLKD1.HGBH as HGBH_KD1, KCZLS.CWBH');
    sql.add('from CGZLS');
    sql.add('left join CLZL on CLZL.CLDH=CGZLS.CLBH');
    sql.add('left join CGZL on CGZL.CGNO=CGZLS.CGNO');
    sql.add('left join (select KCZLS.* from KCZLS ');
    sql.add('           where KCZLS.CKBH='+''''+EntryList.ENMas.fieldbyname('CKBH').value+'''');
    sql.add('           )KCZLS on KCZLS.CLBH=CLZL.CLDH ');
    sql.add('left join CGZLSS on CGZL.CGNO=CGZLSS.CGNO and CGZLSS.CLBH=CGZLS.CLBH');

    sql.add('left join (select KCRKS.CLBH,KCRKS.CGBH,sum(KCRKS.Qty) as okQty from KCRKS');
    sql.add('           left join KCRK on KCRK.RKNO=KCRKS.RKNO ');
    sql.add('           where 1=1 ');
    sql.add('           and KCRK.ZSNO= '+''''+edit2.Text+'''');
    sql.add('           group by  KCRKS.CLBH,KCRKS.CGBH ) CGRK')  ;
    sql.add('           on CGRK.CLBH=CGZLS.CLBH and CGRK.CGBH=CGZLSS.ZLBH') ;
    sql.Add('left join CLHG  on CGZLS.CLBH=CLHG.CLBH');
    sql.Add('left join CLHD  on CGZLS.CLBH=CLHD.CLBH');
    sql.Add('left join CLTC  on CGZLS.CLBH=CLTC.CLBH');
    sql.Add('left join CLHG1  on CGZLS.CLBH=CLHG1.CLBH');
    sql.Add('left join CLHD1  on CGZLS.CLBH=CLHD1.CLBH');
    sql.Add('left join CLTC1  on CGZLS.CLBH=CLTC1.CLBH');
    sql.Add('left join CLNQ  on CGZLS.CLBH=CLNQ.CLBH');
    sql.Add('left join CLNKNQ  on CGZLS.CLBH=CLNKNQ.CLBH');
    sql.Add('left join CLKD  on CGZLS.CLBH=CLKD.CLBH');
    sql.Add('left join CLKD1  on CGZLS.CLBH=CLKD1.CLBH');
    sql.add('where 1=1');
    sql.add('      and CGZLS.CGNO= '+''''+edit2.Text+'''');
    sql.add('      and CGZL.CGLX='+''''+'6'+'''' );
    if MatEdit.Text<>'' then
    sql.add('      and CGZLSS.CLBH like '''+MatEdit.Text+'%'' ');
    sql.add('group by CGZL.ZSBH,CGZLS.CGNO,CGZLS.CLBH,CLZL.YWPM,CLZL.DWBH,KCZLS.KCBH,KCZLS.CWBH,');
    sql.add('CGZLS.USPrice,CGZLS.VNPrice,CGZLSS.ZLBH,CGRK.okQty,CLHG.HGBH,CLHD.HGBH,CLTC.HGBH,CLHG1.HGBH,CLHD1.HGBH,CLTC1.HGBH,CLNQ.HGBH,CLNKNQ.HGBH,CLKD.HGBH,CLKD1.HGBH ');
    sql.Add('order by cgzls.clbh,cgzlss.zlbh');
    active:=true;
  end;
end;

procedure TEntryList_Sample.DBGrid1KeyPress(Sender: TObject; var Key: Char);
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
    if (EntryList.IsAllowGSBH=true) and (query1.FieldByName('CWBH').AsString <> '153') and (query1.FieldByName('CWBH').AsString <> '1533') and (query1.FieldByName('CLBH').AsString <> 'V90A022601') then
    begin
      if (EntryList.ENMas.FieldByName('HGLB').Value='HD1') and ((query1.FieldByName('HGBH_HD1').IsNull) or (query1.FieldByName('HGBH_HD1').AsString='')) then
      begin
        ShowMessage('Ma Hai Quan khong duoc trong! ');
        Abort;
      end;
      if (EntryList.ENMas.FieldByName('HGLB').Value='HD') and ((query1.FieldByName('HGBH_HD').IsNull) or (query1.FieldByName('HGBH_HD').AsString='')) then
      begin
        ShowMessage('Ma Hai Quan khong duoc trong! ');
        Abort;
      end;
    end;
    insert;
    fieldbyname('CGBH').value:=query1.FieldByName('CGNO').Value;
    fieldbyname('RKSB').value:='VN';
    fieldbyname('CLBH').value:=query1.fieldbyname('CLBH').value;
    fieldbyname('YWPM').value:=query1.fieldbyname('YWPM').value;
    fieldbyname('DWBH').value:=query1.fieldbyname('DWBH').value;
    if (EntryList.ENMas.FieldByName('HGLB').Value='NK') then
      fieldbyname('CNO').value:=query1.fieldbyname('HGBH').value;
    if (EntryList.ENMas.FieldByName('HGLB').Value='TC') then
      fieldbyname('CNO').value:=query1.fieldbyname('HGBH_TC').value;
    if (EntryList.ENMas.FieldByName('HGLB').Value='HD') then
      fieldbyname('CNO').value:=query1.fieldbyname('HGBH_HD').value;
    if (EntryList.ENMas.FieldByName('HGLB').Value='NK1') then
      fieldbyname('CNO').value:=query1.fieldbyname('HGBH1').value;
    if (EntryList.ENMas.FieldByName('HGLB').Value='TC1') then
      fieldbyname('CNO').value:=query1.fieldbyname('HGBH_TC1').value;
    if (EntryList.ENMas.FieldByName('HGLB').Value='HD1') then
      fieldbyname('CNO').value:=query1.fieldbyname('HGBH_HD1').value;
    if (EntryList.ENMas.FieldByName('HGLB').Value='NQ') then
      fieldbyname('CNO').value:=query1.fieldbyname('HGBH_NQ').value;
    if (EntryList.ENMas.FieldByName('HGLB').Value='NKNQ') then
      fieldbyname('CNO').value:=query1.fieldbyname('HGBH_NKNQ').value;
    if (EntryList.ENMas.FieldByName('HGLB').Value='KD') and ((EntryList.ENMas.FieldByName('CKBH').Value='CDC') or (EntryList.ENMas.FieldByName('CKBH').Value='CDT')) then
      fieldbyname('CNO').value:=query1.fieldbyname('HGBH_KD').value;
    if (EntryList.ENMas.FieldByName('HGLB').Value='KD1') and ((EntryList.ENMas.FieldByName('CKBH').Value='CDC') or (EntryList.ENMas.FieldByName('CKBH').Value='CDT')) then
      fieldbyname('CNO').value:=query1.fieldbyname('HGBH_KD1').value;
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
//  button1click(nil);
end;

procedure TEntryList_Sample.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
 if key=#13 then
    button1click(nil);
end;

procedure TEntryList_Sample.FormDestroy(Sender: TObject);
begin
  EntryList_Sample:=nil;
end;

procedure TEntryList_Sample.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  query1.active:=false;
end;

procedure TEntryList_Sample.DBGridEh1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if query1.FieldByName('okQty').value>=query1.FieldByName('Qty').value then
  begin
    DBGridEh1.canvas.font.color:=clred;
    DBGridEh1.defaultdrawcolumncell(rect,datacol,column,state);
  end;
end;

procedure TEntryList_Sample.Button2Click(Sender: TObject);
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
              if (EntryList.IsAllowGSBH=true) and (query1.FieldByName('CWBH').AsString <> '153') and (query1.FieldByName('CWBH').AsString <> '1533') and (query1.FieldByName('CLBH').AsString <> 'V90A022601') then
              begin
                if (EntryList.ENMas.FieldByName('HGLB').Value='HD1') and ((query1.FieldByName('HGBH_HD1').IsNull) or (query1.FieldByName('HGBH_HD1').AsString='')) then
                begin
                  ShowMessage('Ma Hai Quan khong duoc trong! ');
                  Abort;
                end;
                if (EntryList.ENMas.FieldByName('HGLB').Value='HD') and ((query1.FieldByName('HGBH_HD').IsNull) or (query1.FieldByName('HGBH_HD').AsString='')) then
                begin
                  ShowMessage('Ma Hai Quan khong duoc trong! ');
                  Abort;
                end;
              end;
              edit;
              fieldbyname('CGBH').value:=query1.FieldByName('ZLBH').Value;
              fieldbyname('RKSB').value:='VN';
              fieldbyname('CLBH').value:=query1.fieldbyname('CLBH').value;
              fieldbyname('YWPM').value:=query1.fieldbyname('YWPM').value;
              fieldbyname('DWBH').value:=query1.fieldbyname('DWBH').value;
              if (EntryList.ENMas.FieldByName('HGLB').Value='NK')  then
                  fieldbyname('CNO').value:=query1.fieldbyname('HGBH').value;
              if (EntryList.ENMas.FieldByName('HGLB').Value='TC') then
                  fieldbyname('CNO').value:=query1.fieldbyname('HGBH_TC').value;
              if (EntryList.ENMas.FieldByName('HGLB').Value='HD')   then
                  fieldbyname('CNO').value:=query1.fieldbyname('HGBH_HD').value;
              if (EntryList.ENMas.FieldByName('HGLB').Value='NK1')  then
                  fieldbyname('CNO').value:=query1.fieldbyname('HGBH1').value;
              if (EntryList.ENMas.FieldByName('HGLB').Value='TC1') then
                  fieldbyname('CNO').value:=query1.fieldbyname('HGBH_TC1').value;
              if (EntryList.ENMas.FieldByName('HGLB').Value='HD1')   then
                  fieldbyname('CNO').value:=query1.fieldbyname('HGBH_HD1').value;
              if (EntryList.ENMas.FieldByName('HGLB').Value='NQ') then
                  fieldbyname('CNO').value:=query1.fieldbyname('HGBH_NQ').value;
              if (EntryList.ENMas.FieldByName('HGLB').Value='NKNQ') then
                  fieldbyname('CNO').value:=query1.fieldbyname('HGBH_NKNQ').value;
              if (EntryList.ENMas.FieldByName('HGLB').Value='KD') and ((EntryList.ENMas.FieldByName('CKBH').Value='CDC') or (EntryList.ENMas.FieldByName('CKBH').Value='CDT')) then
                  fieldbyname('CNO').value:=query1.fieldbyname('HGBH_KD').value;
              if (EntryList.ENMas.FieldByName('HGLB').Value='KD1') and ((EntryList.ENMas.FieldByName('CKBH').Value='CDC') or (EntryList.ENMas.FieldByName('CKBH').Value='CDT') or (EntryList.ENMas.FieldByName('CKBH').Value='VC1')) then    //2025.09.11 them VC1
                  fieldbyname('CNO').value:=query1.fieldbyname('HGBH_KD1').value;
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
              insert;
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

procedure TEntryList_Sample.DBGridEh1DblClick(Sender: TObject);
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
    if (EntryList.IsAllowGSBH=true) and (query1.FieldByName('CWBH').AsString <> '153') and (query1.FieldByName('CWBH').AsString <> '1533') and (Query1.FieldByName('CLBH').AsString <> 'V90A022601') then
    begin
      if (EntryList.ENMas.FieldByName('HGLB').Value='HD1') and ((query1.FieldByName('HGBH_HD1').IsNull) or (query1.FieldByName('HGBH_HD1').AsString='')) then
      begin
        ShowMessage('Ma Hai Quan khong duoc trong! ');
        Abort;
      end;
      if (EntryList.ENMas.FieldByName('HGLB').Value='HD') and ((query1.FieldByName('HGBH_HD').IsNull) or (query1.FieldByName('HGBH_HD').AsString='')) then
      begin
        ShowMessage('Ma Hai Quan khong duoc trong! ');
        Abort;
      end;
    end;
    insert;
    fieldbyname('CGBH').value:=query1.FieldByName('ZLBH').Value;
    fieldbyname('RKSB').value:='VN';
    fieldbyname('CLBH').value:=query1.fieldbyname('CLBH').value;
    fieldbyname('YWPM').value:=query1.fieldbyname('YWPM').value;
    fieldbyname('DWBH').value:=query1.fieldbyname('DWBH').value;
    if (EntryList.ENMas.FieldByName('HGLB').Value='NK')  then
        fieldbyname('CNO').value:=query1.fieldbyname('HGBH').value;
    if (EntryList.ENMas.FieldByName('HGLB').Value='TC')  then
        fieldbyname('CNO').value:=query1.fieldbyname('HGBH_TC').value;
    if (EntryList.ENMas.FieldByName('HGLB').Value='HD')   then
        fieldbyname('CNO').value:=query1.fieldbyname('HGBH_HD').value;
    if (EntryList.ENMas.FieldByName('HGLB').Value='NK1')  then
        fieldbyname('CNO').value:=query1.fieldbyname('HGBH1').value;
    if (EntryList.ENMas.FieldByName('HGLB').Value='TC1')  then
        fieldbyname('CNO').value:=query1.fieldbyname('HGBH_TC1').value;
    if (EntryList.ENMas.FieldByName('HGLB').Value='HD1')   then
        fieldbyname('CNO').value:=query1.fieldbyname('HGBH_HD1').value;
    if (EntryList.ENMas.FieldByName('HGLB').Value='NQ') then
        fieldbyname('CNO').value:=query1.fieldbyname('HGBH_NQ').value;
    if (EntryList.ENMas.FieldByName('HGLB').Value='NKNQ') then
        fieldbyname('CNO').value:=query1.fieldbyname('HGBH_NKNQ').value;
    if (EntryList.ENMas.FieldByName('HGLB').Value='KD') and ((EntryList.ENMas.FieldByName('CKBH').Value='CDC') or (EntryList.ENMas.FieldByName('CKBH').Value='CDT')) then
        fieldbyname('CNO').value:=query1.fieldbyname('HGBH_KD').value;
    if (EntryList.ENMas.FieldByName('HGLB').Value='KD1') and ((EntryList.ENMas.FieldByName('CKBH').Value='CDC') or (EntryList.ENMas.FieldByName('CKBH').Value='CDT') or (EntryList.ENMas.FieldByName('CKBH').Value='VC1')) then     //2025.09.11 them VC1
        fieldbyname('CNO').value:=query1.fieldbyname('HGBH_KD1').value;
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

procedure TEntryList_Sample.FormShow(Sender: TObject);
begin
  main.FormLanguage(Pointer(self),self.Name);
end;

procedure TEntryList_Sample.FormCreate(Sender: TObject);
begin
  ReadIni();
end;

end.
