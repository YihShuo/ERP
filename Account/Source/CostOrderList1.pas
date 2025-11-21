unit CostOrderList1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBTables, DB, Buttons, Grids, DBGrids, ExtCtrls,comobj,
  Menus, GridsEh, DBGridEh,ehlibbde, PrnDbgeh;

type
  TCostOrderList = class(TForm)
    Panel2: TPanel;
    DBGrid1: TDBGridEh;
    Panel3: TPanel;
    Panel1: TPanel;
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
    bbt5: TBitBtn;
    bbt6: TBitBtn;
    CWDD: TQuery;
    DS1: TDataSource;
    UpSQL1: TUpdateSQL;
    Label4: TLabel;
    CBX1: TComboBox;
    Label5: TLabel;
    CBX2: TComboBox;
    Label1: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    CWDDCWYEAR: TStringField;
    CWDDCWMONTH: TStringField;
    CWDDDDBH: TStringField;
    CWDDIPrice: TCurrencyField;
    CWDDXieMing: TStringField;
    CWDDUSERID: TStringField;
    CWDDUSERDate: TDateTimeField;
    CWDDYN: TStringField;
    CWDDQty: TCurrencyField;
    Edit2: TEdit;
    Label2: TLabel;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    CWDDArticle: TStringField;
    CWDDUSACC: TCurrencyField;
    Label3: TLabel;
    CB1: TComboBox;
    Qtemp: TQuery;
    CWDDGSBH: TStringField;
    CWDDCWHL: TFloatField;
    CWDDVNACC: TFloatField;
    CWDDMEMO: TStringField;
    CWDDYSBH: TStringField;
    PrintDBGridEh1: TPrintDBGridEh;
    CWDDokQty: TCurrencyField;
    CWDDzlQty: TIntegerField;
    CWDDDZQty: TIntegerField;
    CWDDSB: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BB1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BB2Click(Sender: TObject);
    procedure BB3Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure BBT1Click(Sender: TObject);
    procedure BBT2Click(Sender: TObject);
    procedure BBT3Click(Sender: TObject);
    procedure BBT4Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure DBGrid1EditButtonClick(Sender: TObject);
    procedure BB7Click(Sender: TObject);
    procedure bbt6Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure CWDDCalcFields(DataSet: TDataSet);
    procedure DBGrid1ColEnter(Sender: TObject);
    procedure DBGrid1ColExit(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure bbt5Click(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CostOrderList: TCostOrderList;
  NDate:TDate;

implementation

uses main1, CostOrderList_DD1, CostOrderList_Det1, CostOrderList_Scan1,
  CostOrderList_R31, CostOrderList_R21, CostOrderList_GC1;

{$R *.dfm}

procedure TCostOrderList.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=cafree;
end;

procedure TCostOrderList.BB1Click(Sender: TObject);
begin
panel3.Visible:=true;
end;

procedure TCostOrderList.Button1Click(Sender: TObject);
begin
with CWDD do
  begin
    active:=false;
    sql.Clear;
    sql.add('select CWDD.*,isnull(CWDDOld.okQty,0) as okQty,DDZL.Pairs as zlQty,isnull(YWDDSDZ.DZQty,0) as DZQty ');
    sql.add('from CWDD ');
    sql.add('left join (select YSBH as DDBH,SB,sum(Qty) as okQty from CWDD ');
    sql.add('           where YSBH like '+''''+edit1.Text+'%'+'''');
    sql.add('                 and not (CWDD.CWYEAR='+''''+CBX1.Text+'''');
    sql.add('                 and CWDD.CWMONTH='+''''+CBX2.Text+''''+')');
    sql.add('           group by YSBH,SB) CWDDOld on CWDD.YSBH=CWDDOld.DDBH and CWDDOld.SB=CWDD.SB');
    sql.add('left join DDZL on DDZL.DDBH=CWDD.YSBH ');
    sql.add('left join (select YWDD.YSBH,sum(YWDDSDZ.Qty) as DZQty ');
    sql.add('           from YWDDSDZ ');
    sql.add('           left join YWCP on YWCP.CARTONBAR=YWDDSDZ.CARTONBAR ');
    sql.add('           left join YWDD on YWDD.DDBH=YWCP.DDBH ');
    sql.add('           group by YWDD.YSBH ) YWDDSDZ on YWDDSDZ.YSBH=CWDD.YSBH ');

    sql.add('where CWDD.CWYEAR='+''''+CBX1.Text+'''');
    sql.add('      and CWDD.CWMONTH='+''''+CBX2.Text+'''');
    sql.add('      and CWDD.DDBH like '+''''+edit1.Text+'%'+'''');
    sql.add('      and CWDD.XieMing like '+''''+'%'+edit2.Text+'%'+'''');
    if CB1.itemindex<>0 then
      begin
        sql.add('       and CWDD.GSBH='+''''+CB1.Text+'''');
      end;
    sql.add('order by CWDD.CWYEAR,CWDD.CWMONTH,CWDD.GSBH,CWDD.YSBH ,CWDD.DDBH ');
    active:=true;
  end;    
bb2.enabled:=true;
bb3.enabled:=true;
bb4.enabled:=true;
bb5.enabled:=false;
bb6.enabled:=false;
bb7.enabled:=true;
bbt1.enabled:=true;
bbt2.enabled:=true;
bbt3.enabled:=true;
bbt4.enabled:=true;
bbt5.enabled:=true;
bbt6.enabled:=true;
end;

procedure TCostOrderList.BB2Click(Sender: TObject);
begin  
with CWDD do
  begin
    cachedupdates:=true;
    requestlive:=true;
    Insert;
  end;
bb5.enabled:=true;
bb6.enabled:=true;
DBGrid1.Columns[1].buttonstyle:= cbsEllipsis;
CBX1.enabled:=false;
CBX2.Enabled:=false;
N1.Enabled:=true;
end;

procedure TCostOrderList.BB3Click(Sender: TObject);
begin
if messagedlg('Do you really want to delete this data?',mtconfirmation,[MBYes,MBNo],0)=mrYes then
  begin
     with CWDD do
       begin
         cachedupdates:=true;
         requestlive:=true;
         edit;
         fieldbyname('YN').Value:='0';
       end;
  end;    
bb5.enabled:=true;
bb6.enabled:=true; 
DBGrid1.Columns[1].buttonstyle:= cbsEllipsis;   
CBX1.enabled:=false;
CBX2.Enabled:=false;
N1.Enabled:=true;
end;

procedure TCostOrderList.BB4Click(Sender: TObject);
begin
with CWDD do
  begin
    cachedupdates:=true;
    requestlive:=true;
    CWDD.edit;
  end;
bb5.enabled:=true;
bb6.enabled:=true;
DBGrid1.Columns[1].buttonstyle:= cbsEllipsis;
CBX1.enabled:=false;
CBX2.Enabled:=false;
N1.Enabled:=true;
end;

procedure TCostOrderList.BB6Click(Sender: TObject);
begin
with CWDD do
  begin
    active:=false;
    cachedupdates:=false;
    requestlive:=false;
    active:=true;
  end;
BB5.enabled:=false;
BB6.Enabled:=false;
DBGrid1.Columns[1].buttonstyle:= cbsnone;
CBX1.enabled:=true;
CBX2.Enabled:=true;  
N1.Enabled:=false;
end;

procedure TCostOrderList.BBT1Click(Sender: TObject);
begin
CWDD.First;
end;

procedure TCostOrderList.BBT2Click(Sender: TObject);
begin
CWDD.First;
end;

procedure TCostOrderList.BBT3Click(Sender: TObject);
begin
CWDD.Next;
end;

procedure TCostOrderList.BBT4Click(Sender: TObject);
begin
CWDD.Last;
end;

procedure TCostOrderList.BB5Click(Sender: TObject);
begin
with CWDD do
  begin
    first;
    while not eof do
      begin
        if fieldbyname('Qty').IsNull then
          begin
             showmessage('Quantity can not be empty.');
             abort;
          end;
        if ((fieldbyname('DDBH').IsNull) or (fieldbyname('DDBH').value='')) then
          begin
             showmessage('No order No');
             abort;
          end; 
        if fieldbyname('IPrice').IsNull then
          begin
             showmessage('Price can not be empty.');
             abort;
          end;
        next;
      end;
  end;

try
    CWDD.first;
    while not CWDD.eof do
      begin
        case CWDD.updatestatus of
          usinserted:
            begin
              if CWDD.fieldbyname('DDBH').isnull then
                begin
                  CWDD.delete;
                end
                 else
                   begin
                     CWDD.edit;
                     CWDD.FieldByName('CWYEAR').Value:=CBX1.text;
                     CWDD.FieldByName('CWMONTH').Value:=CBX2.text;
                     CWDD.FieldByName('USERDATE').Value:=date;
                     CWDD.FieldByName('USERID').Value:=main.edit1.text;
                     if CWDD.FieldByName('YSBH').IsNull then
                       begin
                         CWDD.FieldByName('YSBH').Value:=CWDD.fieldbyname('DDBH').Value;
                         CWDD.FieldByName('SB').Value:='1';
                       end;
                     if  CWDD.FieldByName('YN').value<>'2' then
                       begin
                         CWDD.FieldByName('YN').Value:='1';
                       end;
                     upsql1.apply(ukinsert);
                   end;
            end;
          usmodified:
             begin
              if CWDD.fieldbyname('YN').value='0'then
                begin
                  upsql1.apply(ukdelete);
                end
                else
                  begin
                    CWDD.edit;
                    CWDD.FieldByName('USERID').Value:=main.edit1.text;
                    CWDD.FieldByName('USERdate').Value:=date;
                    upsql1.apply(ukmodify);
                  end;
              end;
        end;
        CWDD.next;
      end;
    CWDD.active:=false;
    CWDD.cachedupdates:=false;
    CWDD.requestlive:=false;
    CWDD.active:=true;
bb5.enabled:=false;
bb6.enabled:=false;
CBX1.enabled:=true;
CBX2.Enabled:=true;
N1.Enabled:=false;  
DBGrid1.Columns[1].buttonstyle:= cbsnone;
except
  Messagedlg('Have wrong, can not save!',mtwarning,[mbyes],0);
end;

end;

procedure TCostOrderList.DBGrid1EditButtonClick(Sender: TObject);
 var i:integer;
begin
if messagedlg('Shoe Order or Inside order?',mtinformation,[mbyes,mbNo],0)=mrYes then
  begin
    if messagedlg('Import order from Scan Data?'+#13+#13+'Yes=Scan,No=key in rom Order',mtinformation,[mbyes,mbNo],0)=mrYes then
      begin
        CostOrderList_Scan:=TCostOrderList_Scan.create(self);
        CostOrderList_Scan.show;
      end
      else
        begin
          CostOrderList_DD:=TCostOrderList_DD.create(self);
          CostOrderList_DD.show;
        end;
  end
  else
    begin
      case messagedlg('Import order from R3 Scan or R2 or GC ?'+#13+#13+' Yes=R3,No=R2,Cancel=GC ',mtinformation,[mbyes,mbNo,mbCancel],0) of
        mrYes:
          begin
            CostOrderList_R3:=TCostOrderList_R3.create(self);
            CostOrderList_R3.show;
          end ;
        mrNo:
          begin
            CostOrderList_R2:=TCostOrderList_R2.create(self);
            CostOrderList_R2.show;
          end;
        mrCancel:
          begin
            CostOrderList_GC:=TCostOrderList_GC.create(self);
            CostOrderList_GC.show;
          end;
        end;
    end;
end;

procedure TCostOrderList.BB7Click(Sender: TObject);
begin
close;
end;

procedure TCostOrderList.bbt6Click(Sender: TObject);
var
      eclApp,WorkBook:olevariant;
 //     xlsFileName:string;
      i,j:integer;
begin

if CWDD.Active then
  begin
    if CWDD.recordcount=0 then
      begin
        showmessage('No record.');
        abort;
      end;
  end
  else
    begin
      showmessage('No record.');
      abort;
    end;

try
  eclApp:=CreateOleObject('Excel.Application');
  WorkBook:=CreateOleObject('Excel.Sheet');
except
  Application.MessageBox('NO Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
  Exit;
end;

try
  WorkBook:=eclApp.workbooks.Add; 
  eclApp.Cells(1,1):='NO';
  for   i:=1   to   CWDD.fieldcount   do
    begin
      eclApp.Cells(1,i+1):=CWDD.fields[i-1].FieldName;
    end;
  CWDD.First;
  j:=2;
  while   not  CWDD.Eof   do
    begin
      eclApp.Cells(j,1):=j-1;
      for   i:=1   to   CWDD.fieldcount   do
        begin
          eclApp.Cells(j,i+1):=CWDD.Fields[i-1].Value;
          eclApp.Cells.Cells.item[j,i+1].font.size:='8';
        end;
      CWDD.Next;
      inc(j);
    end;
  eclapp.columns.autofit;
  showmessage('Succeed.');
  eclApp.Visible:=True;
except
  on   F:Exception   do
    showmessage(F.Message);
end;

end;

procedure TCostOrderList.N1Click(Sender: TObject);
begin
{if CWDD.Active then
  begin
    if not CWDD.CachedUpdates then
      begin
        CostOrderList_Det:=TCostOrderList_Det.create(self);
        CostOrderList_Det.show;;
      end;
  end;  }
with CWDD do
  begin
    edit;
    fieldbyname('YN').Value:='2';
    post;
  end;
end;

procedure TCostOrderList.CWDDCalcFields(DataSet: TDataSet);
begin
//CWDD.FieldByName('USACC').Value:= CWDD.FieldByName('IPrice').value*CWDD.FieldByName('Qty').value ;
end;

procedure TCostOrderList.DBGrid1ColEnter(Sender: TObject);
begin
{if CWDD.CachedUpdates then
  begin
    if  dbgrid1.Selectedindex=5  then
      begin
        if ((not CWDD.FieldByName('Qty').isnull)  and (not CWDD.FieldByName('IPrice').isnull )
                                              and (CWDD.FieldByName('USACC').isnull)) then
          begin
            CWDD.edit;
            CWDD.FieldByName('USACC').Value:= CWDD.FieldByName('IPrice').value*CWDD.FieldByName('Qty').value ;
          end;
      end;
  end;}
end;

procedure TCostOrderList.DBGrid1ColExit(Sender: TObject);
begin
{if CWDD.CachedUpdates then
  begin
    if  dbgrid1.Selectedindex=5  then
      begin
        if ((not CWDD.FieldByName('Qty').isnull)  and ( CWDD.FieldByName('IPrice').isnull )
                                              and (not CWDD.FieldByName('USACC').isnull)) then
          begin
            CWDD.edit;
            if CWDD.FieldByName('Qty').value<>0 then
              begin
                CWDD.FieldByName('IPrice').Value:= CWDD.FieldByName('USACC').value/CWDD.FieldByName('Qty').value ;
              end;
          end;
      end;
  end; }
end;

procedure TCostOrderList.FormDestroy(Sender: TObject);
begin
costorderlist:=nil;
end;

procedure TCostOrderList.FormCreate(Sender: TObject);
var i:integer;
    myYear, myMonth, myDay : Word;
    NDate :Tdate;
begin
  with Qtemp do
  begin
    active:=false;
    sql.Clear;
    sql.add('select GSDH from BGSZL order by GSDH');
    active:=true;
    for i:=1 to recordcount do
      begin
        CB1.Items.Add(fieldbyname('GSDH').asstring);
        dbgrid1.columns[0].picklist.add(fieldbyname('GSDH').asstring);
        next;
      end;
    CB1.itemindex:=0;
    active:=false;
    sql.Clear;
    sql.add('select getdate() as NDate ');
    active:=true;
    NDate:=fieldbyname('NDate').Value;
  end;

  with Qtemp do
  begin
    active:=false;
    sql.Clear;
    sql.add('select year(getdate())-5 as Oldyear,year(getdate())+5 as Newyear');
    active:=true;
    for i:=QTemp.fieldbyname('Oldyear').value to  QTemp.fieldbyname('Newyear').value  do
    begin
      CBX1.Items.Add(inttostr(i));
      next;
    end;
    active:=false;

    DecodeDate(Date(), myYear, myMonth, myDay);
    for i:=0 to CBX1.Items.Count-1 do
    begin
      if strtoint(CBX1.Items[i])=myYear then
      begin
        CBX1.ItemIndex:=i;
        break;
      end;
    end;
    for i:=0 to CBX2.Items.Count-1 do
    begin
      if strtoint(CBX2.Items[i])=myMonth then
      begin
        CBX2.ItemIndex:=i;
        break;
      end;
    end;
  end;
end;

procedure TCostOrderList.DBGrid1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin

if CWDD.FieldByName('YN').value='0' then
  begin
    dbgrid1.canvas.font.color:=clred;
   // dbgrid1.defaultdrawcolumncell(rect,datacol,column,state);
  end;
if CWDD.FieldByName('CWYEAR').isnull then
  begin
    dbgrid1.canvas.font.color:=clLime;
   // dbgrid1.defaultdrawcolumncell(rect,datacol,column,state);
  end;  
if CWDD.FieldByName('Qty').value+CWDD.FieldByName('okQty').value=CWDD.FieldByName('zlQty').value then
  begin
    if  CWDD.FieldByName('YN').value<>'2' then
      begin
        dbgrid1.canvas.font.color:=clYellow;
        // dbgrid1.defaultdrawcolumncell(rect,datacol,column,state);
      end
      else
        begin
          dbgrid1.canvas.font.color:=clBlue;
        end;
  end;
end;

procedure TCostOrderList.bbt5Click(Sender: TObject);
begin
printDBGrideh1.Preview;
end;

procedure TCostOrderList.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin

if  CWDD.FieldByName('SB').value='2' then
  begin
    dbgrid1.canvas.brush.Color:=$00FCCBCD;
    DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column, State);
  end;
end;

end.
