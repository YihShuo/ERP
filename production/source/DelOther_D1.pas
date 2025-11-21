unit DelOther_D1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, DBTables, DB, StdCtrls, DBCtrls, ComCtrls, Grids,
  DBGrids, Mask, Buttons, ExtCtrls,dateutils;

type
  TDelOther_D = class(TForm)
    Panel1: TPanel;
    Label18: TLabel;
    BB2: TBitBtn;
    BB3: TBitBtn;
    BB4: TBitBtn;
    BB5: TBitBtn;
    BB6: TBitBtn;
    BB7: TBitBtn;
    BB1: TBitBtn;
    BBT1: TBitBtn;
    BBT2: TBitBtn;
    BBT3: TBitBtn;
    BBT4: TBitBtn;
    bbt6: TBitBtn;
    Panel6: TPanel;
    Label17: TLabel;
    BD2: TBitBtn;
    BD3: TBitBtn;
    BD4: TBitBtn;
    BD5: TBitBtn;
    BD6: TBitBtn;
    BD7: TBitBtn;
    BDT1: TBitBtn;
    BDT2: TBitBtn;
    BDT3: TBitBtn;
    BDT4: TBitBtn;
    BDT5: TBitBtn;
    BDT6: TBitBtn;
    PC1: TPageControl;
    TS3: TTabSheet;
    Panel4: TPanel;
    Label9: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    DBEdit3: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit7: TDBEdit;
    BBTT1: TBitBtn;
    DBGrid3: TDBGrid;
    DBX2: TDBComboBox;
    Panel2: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    CBX1: TComboBox;
    Check: TCheckBox;
    TS4: TTabSheet;
    Panel3: TPanel;
    Label7: TLabel;
    Label8: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBMemo1: TDBMemo;
    DBEdit13: TDBEdit;
    BBTT2: TBitBtn;
    DBEdit14: TDBEdit;
    DBGrid4: TDBGrid;
    DS4: TDataSource;
    DelDet: TQuery;
    DelDetLLNO: TStringField;
    DelDetCLBH: TStringField;
    DelDetYWPM: TStringField;
    DelDetDWBH: TStringField;
    DelDetTempQty: TCurrencyField;
    DelDetQty: TCurrencyField;
    DelDetUSPrice: TCurrencyField;
    DelDetCWHL: TIntegerField;
    DelDetCostID: TStringField;
    DelDetSCBH: TStringField;
    DelDetUSERDATE: TDateTimeField;
    DelDetUSERID: TStringField;
    DelDetYN: TStringField;
    DelDetDFL: TStringField;
    DelDetCLSL: TCurrencyField;
    DelDetPerson: TFloatField;
    DelDetYYBH: TStringField;
    DelDetYWSM: TStringField;
    DelDetVNPrice: TFloatField;
    DelDetZWPM: TStringField;
    DelDetZWSM: TStringField;
    DelDetVNACC: TFloatField;
    DelDetMEMO: TStringField;
    UPDet: TUpdateSQL;
    DS3: TDataSource;
    DelMas: TQuery;
    DelMasLLNO: TStringField;
    DelMasSCBH: TStringField;
    DelMasDepID: TStringField;
    DelMasDepName: TStringField;
    DelMasUSERDATE: TDateTimeField;
    DelMasUSERID: TStringField;
    DelMasCFMDate: TDateTimeField;
    DelMasCFMID: TStringField;
    DelMasYN: TStringField;
    DelMasGSBH: TStringField;
    DelMasCKBH: TStringField;
    DelMasPMark: TIntegerField;
    UpMas: TUpdateSQL;
    Query1: TQuery;
    DCPopupMenu: TPopupMenu;
    Other1: TMenuItem;
    BDelRec: TQuery;
    btbDC: TBitBtn;
    Label5: TLabel;
    Label6: TLabel;
    Label10: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DelMasSEASON: TStringField;
    DelMasDEVTYPE: TStringField;
    DBEdit4: TDBEdit;
    DelMasPURPOSE: TStringField;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BB1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BB7Click(Sender: TObject);
    procedure BD7Click(Sender: TObject);
    procedure BB2Click(Sender: TObject);
    procedure BB3Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure BD2Click(Sender: TObject);
    procedure BD3Click(Sender: TObject);
    procedure BD4Click(Sender: TObject);
    procedure BD5Click(Sender: TObject);
    procedure BD6Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure BBT1Click(Sender: TObject);
    procedure BBT2Click(Sender: TObject);
    procedure BBT3Click(Sender: TObject);
    procedure BBT4Click(Sender: TObject);
    procedure BDT1Click(Sender: TObject);
    procedure BDT2Click(Sender: TObject);
    procedure BDT3Click(Sender: TObject);
    procedure BDT4Click(Sender: TObject);
    procedure BBTT1Click(Sender: TObject);
    procedure DelDetAfterOpen(DataSet: TDataSet);
    procedure BBTT2Click(Sender: TObject);
    procedure PC1Change(Sender: TObject);
    procedure DBGrid4DblClick(Sender: TObject);
    procedure DBGrid3DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid3EditButtonClick(Sender: TObject);
    procedure DBGrid4EditButtonClick(Sender: TObject);
    procedure BDT5Click(Sender: TObject);
    procedure DelMasAfterOpen(DataSet: TDataSet);
    procedure DelDetCalcFields(DataSet: TDataSet);
    procedure DBGrid3KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid3DblClick(Sender: TObject);
    procedure DBGrid4DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure Other1Click(Sender: TObject);
    procedure btbDCClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DelOther_D: TDelOther_D;
  NDate,sdate,edate:TDate;

implementation

uses main1, DelOther_D_Dep1, DelOther_D_CL1, DelOther_D_YY1,
  DelOther_D_Print1,LLMatQtyClassifyp, LLMaterial1;

{$R *.dfm}

procedure TDelOther_D.FormDestroy(Sender: TObject);
begin
DelOther_D:=nil;
end;

procedure TDelOther_D.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if BB5.enabled  then
  begin
    messagedlg('You have to save data Record of report first.',mtwarning,[mbyes],0);
    PC1.ActivePage:=TS3;
    panel1.Visible:=true;
    panel6.Visible:=false;
    action:=canone;
  end
  else
    begin
      if BD5.enabled then
        begin
          messagedlg('You have to save data Report first.',mtwarning,[mbyes],0);
          PC1.ActivePage:=TS4;
          panel6.Visible:=true;
          panel1.Visible:=false;
          action:=canone;
        end
          else
            begin
              action:=Cafree;
            end;
    end;
end;

procedure TDelOther_D.BB1Click(Sender: TObject);
begin

panel2.Visible:=true;
end;

procedure TDelOther_D.Button1Click(Sender: TObject);
begin

with DelMas do
  begin
    active:=false;
    sql.Clear;
    sql.add('select KCLL.*,BDepartment.DepName  ');
    sql.add('from KCLL');
    sql.add('left join BDepartment on KCLL.DepID=BDepartment.ID');
    sql.add('where KCLL.LLNO like ');
    sql.add(''''+edit1.Text+'%'+'''');
    if CBX1.itemindex<>0 then
      begin
        sql.add('and BDepartment.DepName like ');
        sql.add(''''+CBX1.Text+'%'+'''');
      end;
    sql.add('and convert(smalldatetime,convert(varchar,KCLL.USERDATE,111)) between ');
    sql.add(''''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date) +'''');
    sql.add('and KCLL.SCBH='+''''+'DDDDDDDDDD'+'''');
    sql.add('and KCLL.GSBH='+''''+main.Edit2.Text+'''');
    if Check.Checked then
      begin
        sql.Add('and KCLL.USERID='+''''+main.Edit1.Text+'''');
      end;
    sql.add('order by LLNO DESC');
    active:=true;
  end;
panel2.Visible:=false;
BB2.Enabled:=true;
BB3.Enabled:=true;
BB4.Enabled:=true;
BBT1.Enabled:=true;
BBT2.Enabled:=true;
BBT3.Enabled:=true;
BBT4.Enabled:=true;
BBT6.Enabled:=true;
check.Checked:=true;
DelDet.Active:=true;
end;

procedure TDelOther_D.FormCreate(Sender: TObject);
var i:integer;  
{ y,m,d:word;
ayear,amonth:string;  }
begin
  with query1 do
    begin
      active:=false;
      sql.Clear;
      sql.add('select ID,DepName from BDepartment');
      sql.add('where GSBH='+''''+main.Edit2.Text+'''');
      sql.add('order by ID');
      active:=true;
      for i:=1 to recordcount do
        begin
          CBX1.Items.Add(fieldbyname('DepName').asstring);
          next;
        end;
      CBX1.itemindex:=0;
      active:=false;
      sql.Clear;
      sql.add('select CKBH from KCCK order by CKBH');
      active:=true;
      DBX2.Items.Clear;
      for i:=1 to recordcount do
        begin
          DBX2.Items.Add(fieldbyname('CKBH').asstring);
          next;
        end;
      active:=false;
      sql.Clear;
      sql.add('select getdate() as NDate ');
      active:=true;
      NDate:=fieldbyname('NDate').Value;
    end;
    {
  try
  decodedate(NDate,y,m,d);
  sdate:=startofthemonth(NDate);
  edate:=endofthemonth(NDate);
  decodedate(incmonth(NDate,-1),y,m,d);
  ayear:=inttostr(y);
  amonth:=inttostr(m);
  if  length(amonth)<2  then
    begin
      amonth:='0'+amonth;
    end;

  with Query1 do
    begin
      active:=false;
      sql.Clear;
      sql.add('  if object_id('+''''+'tempdb..#CLZLKC4'+''''+') is not null  ');
      sql.add('begin   drop table #CLZLKC4 end   ');

      sql.Add('select KCZLS.CLBH,LastKC.LastRem,RK.RKQty,LL.LLQty,JGRK.JGRK,JGCK.JGCK,KCZLS.CKBH');
      sql.add(' into #CLZLKC4 from KCZLS ');

      sql.add('left join (select KCCLMONTH.CKBH,KCCLMONTH.CLBH,KCCLMONTH.Qty as LastRem ');
      sql.add('           from KCCLMONTH  where KCCLMONTH.KCYEAR='+''''+ayear+'''');
      sql.add('                                 and KCMONTH='+''''+amonth+'''');
      sql.add('           ) LastKC on LastKC.CLBH=KCZLS.CLBH and LastKC.CKBH=KCZLS.CKBH');

      sql.add('left join (select KCRK.CKBH,KCRKS.CLBH,sum(KCRKS.Qty) as RKQty from KCRKS');
      sql.add('           left join KCRK on KCRK.RKNO=KCRKS.RKNO ');
      sql.add('           where convert(smalldatetime,convert(varchar,KCRK.USERDATE,111)) between ') ;
      sql.add('                 '''+formatdatetime('yyyy/MM/dd',sdate)+''''+'and '+''''+formatdatetime('yyyy/MM/dd',edate)+''''  );
      sql.add('           group by KCRK.CKBH,KCRKS.CLBH) RK on RK.CLBH=KCZLS.CLBH and RK.CKBH=KCZLS.CKBH ');

      sql.add('left join (select KCLL.CKBH,KCLLS.CLBH,sum(KCLLS.Qty) as LLQty from KCLLS ');
      sql.add('           left join KCLL on KCLL.LLNO=KCLLS.LLNO ');
      sql.add('           where convert(smalldatetime,convert(varchar,KCLL.CFMDATE,111)) between ')   ;
      sql.add('                 '''+formatdatetime('yyyy/MM/dd',sdate)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',edate)+''''  );
      sql.add('                 and KCLL.CFMID<>'+''''+'NO'+'''');
      sql.add('           group by KCLL.CKBH,KCLLS.CLBH) LL on LL.CLBH=KCZLS.CLBH and LL.CKBH=KCZLS.CKBH');

      sql.add('left join (select JGZL.CKBH,JGZLS.CLBH,sum(JGZLS.Qty) as JGRK from JGZLS');
      sql.add('           left join JGZL on JGZL.JGNO=JGZLS.JGNO ');
      sql.add('          where convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111)) between ');
      sql.add('                 '''+formatdatetime('yyyy/MM/dd',sdate)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',edate)+''''  );
      sql.add('                 and JGZL.CFMID1<>'+''''+'NO'+'''');
      sql.add('                 and JGZLS.ZMLB='+''''+'ZZZZZZZZZZ'+'''');
      sql.add('           group by JGZL.CKBH,JGZLS.CLBH ) JGRK on JGRK.CLBH=KCZLS.CLBH and JGRK.CKBH=KCZLS.CKBH');

      sql.add('left join (select JGZl.CKBH,JGZLS.ZMLB,sum(JGZLS.Qty*JGZLM.Qty) as JGCK from JGZLS');
      sql.add('           left join JGZL on JGZL.JGNO=JGZLS.JGNO  ');
      sql.add('           left join (select JGZLS.JGNO,JGZLS.CLBH,JGZLS.Qty from JGZLS ');
      sql.add('                      left join JGZL on JGZL.JGNO=JGZLS.JGNO ');
      sql.add('                      where convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111)) between ');
      sql.add('                            '''+formatdatetime('yyyy/MM/dd',sdate)+'''' +' and '+''''+formatdatetime('yyyy/MM/dd',edate)+''''  );
      sql.add('                            and JGZL.CFMID1<>'+''''+'NO'+'''');
      sql.add('                            and JGZLS.ZMLB='+''''+'ZZZZZZZZZZ'+'''');
      sql.add('                      )JGZLM on JGZLM.JGNO=JGZLS.JGNO and JGZLM.CLBH=JGZLS.CLBH');
      sql.add('           where convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111)) between ');
      sql.add('                 '''+formatdatetime('yyyy/MM/dd',sdate)+'''' +' and '+''''+formatdatetime('yyyy/MM/dd',edate)+''''  );
      sql.add('                 and JGZL.CFMID1<>'+''''+'NO'+'''');
      sql.add('                 and JGZLS.ZMLB<>'+''''+'ZZZZZZZZZZ'+'''');
      sql.add('           group by JGZL.CKBH,JGZLS.ZMLB ) JGCK on JGCK.ZMLB=KCZLS.CLBH and JGCK.CKBH=KCZLS.CKBH');


      sql.add('select #CLZLKC4.CLBH,isnull(#CLZLKC4.LastRem,0)+isnull(#CLZLKC4.RKQty,0)-isnull(#CLZLKC4.LLQty,0)+isnull(#CLZLKC4.JGRK,0)-isnull(#CLZLKC4.JGCK,0) as KCQty,#CLZLKC4.CKBH ');
      sql.add('into #KC4 from #CLZLKC4 ');
      sql.add('where not (#CLZLKC4.LastRem is null  and #CLZLKC4.RKQty is null and #CLZLKC4.LLQty is null and #CLZLKC4.JGRK is null and #CLZLKC4.JGCK is null)');
      sql.add('order by #CLZLKC4.CKBH,#CLZLKC4.CLBH  ');
      sql.add('drop table #CLZLKC4 ');
      execsql;
    end;
  except
   showmessage('Have wrong.');
  end; }

  PC1.ActivePage:=TS3;
  DTP1.Date:=Ndate-3;
  DTP2.date:=Ndate;
  //20131206開發中心材料數量分類
  if ((main.edit2.text='CDC') or (main.edit2.text='KDC')) then DBGrid4.PopupMenu:=DCPopupMenu;
end;

procedure TDelOther_D.BB7Click(Sender: TObject);
begin

close;
end;

procedure TDelOther_D.BD7Click(Sender: TObject);
begin

close;
end;

procedure TDelOther_D.BB2Click(Sender: TObject);
begin

with DelMas do
  begin
    requestlive:=true;
    cachedupdates:=true;
    insert;
  end;
BBTT1.Visible:=true;
BB5.Enabled:=true;
BB6.Enabled:=true;
dbgrid3.columns[2].ButtonStyle:=cbsEllipsis;
end;

procedure TDelOther_D.BB3Click(Sender: TObject);
begin

if (DelDet.recordcount=0)  and (delmas.FieldByName('pmark').Value=Null) then
  begin
    with DelMas do
      begin
        requestlive:=true;
        cachedupdates:=true;
        edit;
        fieldbyname('YN').Value:='0';
      end;
  end
    else
      begin
        showmessage('Pls delete the Deliver Detail first.')
      end;
BBTT1.Visible:=true;
BB5.Enabled:=true;
BB6.Enabled:=true;
dbgrid3.columns[2].ButtonStyle:=cbsEllipsis;
end;

procedure TDelOther_D.BB4Click(Sender: TObject);
begin

with DelMas do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
BBTT1.Visible:=true;
BB5.Enabled:=true;
BB6.Enabled:=true;
dbgrid3.columns[2].ButtonStyle:=cbsEllipsis;
end;

procedure TDelOther_D.BB5Click(Sender: TObject);
var y,m,a:string;
i:integer;
begin
with query1 do          //取服務器的年月值
  begin
    active:=false;
    sql.Clear;
    sql.Add('select year(getdate()) as FY,month(getdate()) as FM,getdate() as NDate ');
    active:=true;
    y:=fieldbyname('FY').asstring;
    m:=fieldbyname('FM').asstring;
    NDate:=fieldbyname('NDate').value;
    active:=false;
  end;
if length(m)<2 then
  m:='0'+m;

try
    DelDet.Active:=false;
    DelMas.first;
    for i:=1 to DelMas.RecordCount do
      begin
        case DelMas.updatestatus of
          usinserted:
            begin
              if DelMas.fieldbyname('DepID').isnull then
                begin
                  DelMas.delete;
                end
                 else
                   begin
                     with query1 do    //計算領料單流水號
                       begin
                         active:=false;
                         sql.Clear;
                         sql.Add('select LLNO from KCLL where LLNO like '+''''+y+m+'%'+'''');
                         sql.add('order by LLNO');
                         active:=true;
                         if recordcount >0 then
                           begin
                             last;
                             a:=fieldbyname('LLNO').AsString;
                             a:=copy(a,7,5);
                             a:=inttostr(strtoint(a)+1);
                             while length(a)<5 do
                               begin
                                 a:='0'+a;
                               end;
                           end
                             else
                               begin
                                 a:='00001';
                               end;
                         a :=y+m+a;
                         active:=false;
                       end;
                     DelMas.edit;
                     DelMas.fieldbyname('LLNO').Value:=a;
                     DelMas.fieldbyname('GSBH').Value:=main.Edit2.Text;
                     DelMas.fieldbyname('SCBH').Value:='DDDDDDDDDD' ;
                     DelMas.FieldByName('userID').Value:=main.edit1.text;
                     DelMas.FieldByName('userdate').Value:=Ndate;
                     DelMas.FieldByName('CFMID').Value:='NO';
                     DelMas.FieldByName('YN').Value:='1';
                     upMas.apply(ukinsert);
                   end;
            end;
          usmodified:
             begin
               if DelMas.FieldByName('USERID').value<>main.Edit1.Text then
                 begin
                   showmessage('不是你的，不要亂動。khong phai ban khong duoc tu sua');
                 end
                 else
                   begin
                     if DelMas.fieldbyname('YN').value='0'then
                       begin
                         with BDelRec do
                           begin
                             active:=false;
                             sql.Clear;
                             sql.add('insert into BDelRec ');
                             sql.add('(TableName ,TNO,CLBH,OldID,DelID,DelDate)');
                             sql.add('values ('+''''+'KCLL'+''''+','+''''+DelMas.fieldbyname('LLNO').Value+'''');
                             sql.add(','+''''+' '+''''+','+''''+DelMas.fieldbyname('USERID').Value+''''+',');
                             sql.add(''''+main.Edit1.Text+''''+',getdate())');
                             execsql;
                             active:=false;
                           end;
                         upMas.apply(ukdelete);
                       end
                       else
                         begin
                           if (DelMas.FieldByName('CFMID').value='NO')   then
                             begin
                               if (NDate-DelMas.FieldByName('USERDATE').value)<=3  then
                                 begin
                                   DelMas.edit;
                                   DelMas.FieldByName('userID').Value:=main.edit1.text;
                                   DelMas.FieldByName('userdate').Value:=Ndate;
                                   upMas.apply(ukmodify);
                                 end
                                 else
                                   begin
                                     showmessage('Date>3, can not modify.');
                                   end;
                             end
                             else
                               begin
                                 showmessage('Already confirmed, can not modify.');
                               end;
                          end;
                   end;
             end;
        end;
       DelMas.next;
      end;
DelMas.active:=false;
DelMas.cachedupdates:=false;
DelMas.requestlive:=false;
DelMas.active:=true;
DelDet.Active:=true;
bb5.enabled:=false;
bb6.enabled:=false;
BBTT1.Visible:=false;
dbgrid3.columns[2].ButtonStyle:=cbsnone;  
except
  Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
end;


end;

procedure TDelOther_D.BD2Click(Sender: TObject);
begin

if DelMas.RequestLive then
  begin
    showmessage('Pls save Master data first.');
    PC1.ActivePage:=TS3;
    panel6.visible:=false;
    panel1.visible:=true;
    abort;
  end;

with DelDet do
  begin
    requestlive:=true;
    cachedupdates:=true;
    insert;
  end;
if (DelMas.FieldByName('GSBH').AsString='CDC') OR (DelMas.FieldByName('GSBH').AsString='KDC') then
  begin
       btbDC.visible:=true;
       BBTT2.Visible:=true;
  end
else
  begin
     BBTT2.Visible:=true;
  end;
//BBTT2.Visible:=true;
BD5.Enabled:=true;
BD6.Enabled:=true;
//dbgrid4.columns[0].ButtonStyle:=cbsEllipsis;
dbgrid4.columns[3].ButtonStyle:=cbsEllipsis;
end;

procedure TDelOther_D.BD3Click(Sender: TObject);
begin

if DelMas.RequestLive then
  begin
    showmessage('Pls save Master data first.');
    PC1.ActivePage:=TS3;
    panel6.visible:=false;
    panel1.visible:=true;
    abort;
  end;

with DelDet do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
    fieldbyname('YN').Value:='0';
  end;
  if (DelMas.FieldByName('GSBH').AsString='CDC') OR (DelMas.FieldByName('GSBH').AsString='KDC') then
  begin
       btbDC.visible:=true;
       BBTT2.Visible:=true;
  end
else
  begin
     BBTT2.Visible:=true;
  end;
//BBTT2.Visible:=true;
//btbDC.Visible:=true;
BD5.Enabled:=true;
BD6.Enabled:=true;
//dbgrid4.columns[0].ButtonStyle:=cbsEllipsis;
dbgrid4.columns[3].ButtonStyle:=cbsEllipsis;
end;

procedure TDelOther_D.BD4Click(Sender: TObject);
begin
if DelMas.RequestLive then
  begin
    showmessage('Pls save Master data first.');
    PC1.ActivePage:=TS3;
    panel6.visible:=false;
    panel1.visible:=true;
    abort;
  end;

with DelDet do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
if (DelMas.FieldByName('GSBH').AsString='CDC') OR (DelMas.FieldByName('GSBH').AsString='KDC') then
  begin
       btbDC.visible:=true;
       BBTT2.Visible:=true;
  end
else
  begin
     BBTT2.Visible:=true;
  end;
//BBTT2.Visible:=true;
BD5.Enabled:=true;
BD6.Enabled:=true;
//dbgrid4.columns[0].ButtonStyle:=cbsEllipsis;
dbgrid4.columns[3].ButtonStyle:=cbsEllipsis;

end;

procedure TDelOther_D.BD5Click(Sender: TObject);
var i:integer;
begin
with DelDet do
  begin
    first;
    while not DelDet.Eof do
      begin
        if DelDet.FieldByName('TempQty').IsNull then
          begin
            showmessage('The Qty can not be empty.');
            abort;
          end;
        if DelDet.FieldByName('YWSM').IsNull then
          begin
            showmessage('The YWSM can not be empty.');
            abort;
          end;
        next;
      end;
  end;

{with DelDet do
  begin
    first;
    while not DelDet.Eof do
      begin
        if DelDet.FieldByName('Qty').IsNull then
          begin
            showmessage('The Qty can not be empty.');
            abort;
          end;
        next;
      end;
  end;   }
try
    DelDet.first;
    for i:=1 to DelDet.RecordCount do
      begin
        case DelDet.updatestatus of
          usinserted:
            begin 
              if DelMas.FieldByName('USERID').value<>main.Edit1.Text then
                begin
                  showmessage('不是你的，不要亂動。khong phai ban khong duoc tu sua');
                end
                else
                  begin
                    if DelDet.fieldbyname('CLBH').isnull then
                      begin
                        DelDet.delete;
                      end
                      else
                        begin
                          DelDet.edit;
                          if DelDet.fieldbyname('SCBH').isnull then
                            begin
                              DelDet.fieldbyname('SCBH').Value:=DelMas.fieldbyname('SCBH').Value;
                            end;
                          DelDet.fieldbyname('TempQty').Value:=formatfloat('#,##0.##',Deldet.fieldbyname('TempQty').Value); //20141023 四捨五入到小數第二位
                          DelDet.fieldbyname('Qty').Value:=Deldet.fieldbyname('TempQty').Value;
                          DelDet.fieldbyname('LLNO').Value:=DelMas.fieldbyname('LLNO').Value;
                          DelDet.FieldByName('userID').Value:=main.edit1.text;
                          DelDet.FieldByName('userdate').Value:=Ndate;
                          DelDet.FieldByName('YN').Value:='1';
                          upDet.apply(ukinsert);
                        end;
                  end;
            end;
          usmodified:
             begin
               if DelDet.FieldByName('USERID').value<>main.Edit1.Text then
                 begin
                   showmessage('不是你的，不要亂動。khong phai ban khong duoc tu sua');
                 end
                 else
                   begin
                     if DelDet.fieldbyname('YN').value='0'then
                       begin
                          //20131206 weston 先刪除開發中心 材料分類表格DC_TLFL
                          with BDelRec do
                            begin
                              active:=false;
                              sql.Clear;
                              sql.add('Delete  From DC_TLFL ');
                              sql.Add('where CLBH='''+DelDet.fieldbyname('CLBH').Value+''' and  DJBH='''+DelDet.fieldbyname('LLNO').Value+'''  and DFL1='''+DelDet.fieldByName('DFL').AsString+''' and DFL2='''+DelDet.fieldByName('SCBH').AsString+''' and GSBH='''+main.edit2.text+''' and LB=2 and YN=''1''');
                              execsql;
                              //檢查是否刪除成功,過去有意外狀況刪除失敗
                              active:=false;
                              sql.Clear;
                              sql.add('Select CLBH  From DC_TLFL ');
                              sql.Add('where CLBH='''+DelDet.fieldbyname('CLBH').Value+''' and  DJBH='''+DelDet.fieldbyname('LLNO').Value+'''  and DFL1='''+DelDet.fieldByName('DFL').AsString+''' and DFL2='''+DelDet.fieldByName('SCBH').AsString+''' and GSBH='''+main.edit2.text+''' and LB=2 and YN=''1''');
                              active:=true;
                          end;
                          //DC_TLFL明細有刪除成功乾淨
                          if BDelRec.RecordCount=0 then
                          begin
                             with BDelRec do
                               begin
                                 active:=false;
                                 sql.Clear;
                                 sql.add('insert into BDelRec ');
                                 sql.add('(TableName ,TNO,CLBH,OldID,DelID,DelDate)');
                                 sql.add('values ('+''''+'KCLLS'+''''+','+''''+DelDet.fieldbyname('LLNO').Value+'''');
                                 sql.add(','+''''+DelDet.fieldbyname('CLBH').Value+''''+','+''''+DelDet.fieldbyname('USERID').Value+''''+',');
                                 sql.add(''''+main.Edit1.Text+''''+',getdate())');
                                 execsql;
                                 active:=false;
                               end;
                             UpDet.apply(ukdelete);
                          end else
                             BDelRec.Active:=false;
                       end
                       else
                         begin
                           DelDet.edit;
                           DelDet.fieldbyname('TempQty').Value:=formatfloat('#,##0.##',Deldet.fieldbyname('TempQty').Value); //20141023 四捨五入到小數第二位
                           DelDet.fieldbyname('Qty').Value:=Deldet.fieldbyname('TempQty').Value;
                           DelDet.FieldByName('userID').Value:=main.edit1.text;
                           DelDet.FieldByName('userdate').Value:=Ndate;
                           upDet.apply(ukmodify);
                         end;
                  end;
              end;
        end;
        DelDet.next;
      end;
DelDet.active:=false;
DelDet.cachedupdates:=false;
DelDet.requestlive:=false;
DelDet.active:=true;
bb6.enabled:=false;
btbDC.visible:=false;
BBTT2.Visible:=false;
BD5.Enabled:=false;
BD6.Enabled:=false;
dbgrid4.columns[0].ButtonStyle:=cbsNone;
//DBGrid4.Columns[5].ReadOnly:=true;
//dbgrid4.columns[5].ButtonStyle:=cbsNone;
dbgrid4.columns[3].ButtonStyle:=cbsNone;
except
  Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
end;


end;

procedure TDelOther_D.BD6Click(Sender: TObject);
begin

with DelDet do
  begin
    active:=false;
    requestlive:=false;
    cachedupdates:=false;
    active:=true;
  end;
btbDC.Visible:=false;
BBTT2.Visible:=false;
BD5.Enabled:=false;
BD6.Enabled:=false;
dbgrid4.columns[0].ButtonStyle:=cbsNone;
//dbgrid4.columns[5].ButtonStyle:=cbsNone;
//DBGrid4.Columns[5].ReadOnly:=true;
dbgrid4.columns[3].ButtonStyle:=cbsNone;
end;

procedure TDelOther_D.BB6Click(Sender: TObject);
begin

with DelMas do
  begin
    active:=false;
    requestlive:=false;
    cachedupdates:=false;
    active:=true;
  end;
bb5.enabled:=false;
bb6.enabled:=false;
BBTT1.Visible:=false;
dbgrid3.columns[2].ButtonStyle:=cbsnone;
end;

procedure TDelOther_D.BBT1Click(Sender: TObject);
begin

DelMas.First;
end;

procedure TDelOther_D.BBT2Click(Sender: TObject);
begin

DelMas.Prior;
end;

procedure TDelOther_D.BBT3Click(Sender: TObject);
begin

DelMas.next;
end;

procedure TDelOther_D.BBT4Click(Sender: TObject);
begin 
DelMas.last;
end;

procedure TDelOther_D.BDT1Click(Sender: TObject);
begin

DelDet.first;
end;

procedure TDelOther_D.BDT2Click(Sender: TObject);
begin

DelDet.prior;
end;

procedure TDelOther_D.BDT3Click(Sender: TObject);
begin

DelDet.next;
end;

procedure TDelOther_D.BDT4Click(Sender: TObject);
begin

DelDet.last;
end;

procedure TDelOther_D.BBTT1Click(Sender: TObject);
begin

DelOther_D_Dep:=TDelOther_D_Dep.Create(self);
DelOther_D_Dep.Show;
end;

procedure TDelOther_D.DelDetAfterOpen(DataSet: TDataSet);
begin

BD2.Enabled:=true;
BD3.Enabled:=true;
BD4.Enabled:=true;
BDT1.Enabled:=true;
BDT2.Enabled:=true;
BDT3.Enabled:=true;
BDT4.Enabled:=true;
BDT5.Enabled:=true;
BDT6.Enabled:=true;
if (NDate-DelMas.FieldByName('USERDATE').value)>2  then
  begin
    BD2.Enabled:=false;
    BD3.Enabled:=false;
    BD4.Enabled:=false;
  end;
if DelMas.FieldByName('CFMID').value<>'NO'  then
  begin
    BD2.Enabled:=false;
    BD3.Enabled:=false;
    BD4.Enabled:=false;
  end;
if DelMas.FieldByName('USERID').value<>main.edit1.text  then
  begin
    BD2.Enabled:=false;
    BD3.Enabled:=false;
    BD4.Enabled:=false;
  end;
if DelMas.cachedupdates  then
  begin
    BD2.Enabled:=false;
    BD3.Enabled:=false;
    BD4.Enabled:=false;
  end;
if not DelMas.FieldByName('PMARK').isnull  then
  begin
    BD2.Enabled:=false;
    BD3.Enabled:=false;
    BD4.Enabled:=false;
  end;

BD5.Enabled:=false;
BD6.Enabled:=false;
end;

procedure TDelOther_D.BBTT2Click(Sender: TObject);
begin

//if messagedlg('Select material from order?',mtinformation,[mbYes,mbNo],0)=mrYes then
  begin
    DelOther_D_CL:=TDelOther_D_CL.create(self);
    DelOther_D_CL.show;
  end;
end;

procedure TDelOther_D.PC1Change(Sender: TObject);
begin

if PC1.ActivePage=TS4 then
  begin
    panel6.visible:=true;
    panel1.visible:=false;
  end
    else
      begin
        panel6.visible:=false;
        panel1.visible:=true;
      end;
end;

procedure TDelOther_D.DBGrid4DblClick(Sender: TObject);
begin

if  DelMas.Active then
  begin
    if  (DelMas.recordcount>0) then
      begin
        PC1.ActivePage:=TS4;
        panel1.Visible:=false;
        panel6.Visible:=true;
      end;
  end;
end;

procedure TDelOther_D.DBGrid3DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin

if DelMas.cachedupdates then
  begin
    DBX2.BringToFront;
    if (gdfocused in state) then
      begin
        if (dbgrid3.SelectedField.fieldname=DBX2.datafield) then
          begin
            DBX2.left:=rect.left+dbgrid3.left;
            DBX2.top:=rect.top+dbgrid3.Top;
            DBX2.width:=rect.right-rect.left+10;
            DBX2.height:=rect.bottom-rect.top;
            DBX2.visible:=true;
          end
          else
            DBX2.Visible:=false;
      end;
  end
  else
    DBX2.Visible:=false;
if DelMas.FieldByName('YN').value='0' then
  begin
    dbgrid3.canvas.font.color:=clred;
    dbgrid3.defaultdrawcolumncell(rect,datacol,column,state);
  end;
end;

procedure TDelOther_D.DBGrid3EditButtonClick(Sender: TObject);
begin

BBTT1Click(nil);
end;

procedure TDelOther_D.DBGrid4EditButtonClick(Sender: TObject);
begin

{if DBGrid4.selectedfield.fieldname='CLBH' then
  begin
    BBTT2click(nil);
  end;  }
if DBGrid4.selectedfield.fieldname='YYBH' then
  begin
    DelOther_D_YY:=TDelOther_D_YY.create(self);
    DelOther_D_YY.show;
  end; {
if DBGrid4.selectedfield.fieldname='SCBH' then
  begin
    DelOther_SCBH:=TDelOther_SCBH.create(self);
    DelOther_SCBH.show;
  end;}
end;

procedure TDelOther_D.BDT5Click(Sender: TObject);
begin

if DelDet.RequestLive then
  begin
    showmessage('Pls save data first.');
    abort;
  end
    else
      begin
        with DelDet do
          begin
           { requestlive:=true;
            cachedupdates:=true;
            first;
            while not eof do
              begin
                edit;
                fieldbyname('Memo').value:=fieldbyname('YWSM').value+'/'+fieldbyname('ZWSM').value+'//'+fieldbyname('Memo').value;
                post;
                next;
              end; }
            DelOther_D_Print:=TDelOther_D_Print.Create(nil);
            DelOther_D_Print.quickrep1.prepare;
            DelOther_D_Print.Qpage1.caption:=inttostr(DelOther_D_Print.quickrep1.QRPrinter.pagecount);
            DelOther_D_Print.quickrep1.preview;
            DelOther_D_Print.Free;
            Active:=false;
            cachedupdates:=false;
            requestlive:=false;
            Active:=true;
          end;
      end;
with DelMas do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
    if fieldbyname('PMARK').isnull then
      begin
        fieldbyname('PMARK').value:=1;
      end
      else
        begin
          fieldbyname('PMARK').value:=fieldbyname('PMARK').value+1;
        end;
    UPMAS.Apply(ukmodify);
    requestlive:=false;
    cachedupdates:=false;
  end;   
end;

procedure TDelOther_D.DelMasAfterOpen(DataSet: TDataSet);
begin

BB5.Enabled:=false;
BB6.Enabled:=false;
BD5.Enabled:=false;
BD6.Enabled:=false;
end;

procedure TDelOther_D.DelDetCalcFields(DataSet: TDataSet);
begin

if deldet.FieldByName('CLSL').value<>0 then
  begin
     deldet.FieldByName('person').value:=deldet.FieldByName('tempqty').value/deldet.FieldByName('CLSL').value*100;
  end
  else
    begin
      deldet.FieldByName('person').value:=0;
    end;
end;

procedure TDelOther_D.DBGrid3KeyPress(Sender: TObject; var Key: Char);
begin

if key=#13 then
    DBGrid3DblClick(nil);
end;

procedure TDelOther_D.DBGrid3DblClick(Sender: TObject);
begin

if  DelMas.Active then
  begin
    if  (DelMas.recordcount>0) then
      begin
        PC1.ActivePage:=TS4;
        panel1.Visible:=false;
        panel6.Visible:=true;
      end;
  end; 
end;

procedure TDelOther_D.DBGrid4DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin

 if DelDet.FieldByName('YN').value='0' then
  begin
    dbgrid4.canvas.font.color:=clred;
    dbgrid4.defaultdrawcolumncell(rect,datacol,column,state);
  end;

 if DelDet.FieldByName('LLNO').isnull then
  begin
    dbgrid4.canvas.font.color:=clLime;
    dbgrid4.defaultdrawcolumncell(rect,datacol,column,state);
  end;
end;

procedure TDelOther_D.Other1Click(Sender: TObject);
begin
  //只有CDC 和 KDC 倉庫領料才需要材料分類
  if DelMas.FieldByName('CKBH').AsString=main.Edit2.Text then
  begin
     LLMatQtyClassify:=TLLMatQtyClassify.Create(self);
     LLMatQtyClassify.LoadTLFL();
     LLMatQtyClassify.ShowModal();
     LLMatQtyClassify.Free;
  end else
  begin
     Showmessage('Material Classify used by CKBH=''CDC'' or ''KDC'' !');
  end;
end;

procedure TDelOther_D.btbDCClick(Sender: TObject);
begin
 LLMaterial:=TLLMaterial.create(self);
 LLMaterial.ShowModal;
 LLMaterial.Free;
end;

end.
