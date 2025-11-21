unit FeeMonth1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBTables, DB, Buttons, Grids, DBGrids, ExtCtrls,comobj,
  ComCtrls, Menus;

type
  TFeeMonth = class(TForm)
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    Panel3: TPanel;
    Button1: TButton;
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
    DS1: TDataSource;
    CWFY: TQuery;
    UpSQL1: TUpdateSQL;
    Label4: TLabel;
    CBX1: TComboBox;
    Label6: TLabel;
    CBX2: TComboBox;
    CWFYCWYEAR: TStringField;
    CWFYCWMONTH: TStringField;
    CWFYFYACC: TFloatField;
    CWFYUSERID: TStringField;
    CWFYUSERDATE: TDateTimeField;
    CWFYYN: TStringField;
    CWFYFYJC: TStringField;
    Query1: TQuery;
    CWFYFYBH: TStringField;
    StatusBar1: TStatusBar;
    DBGrid2: TDBGrid;
    CWFYS: TQuery;
    UpSQL2: TUpdateSQL;
    DS2: TDataSource;
    Pop1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    CWFYSCWYEAR: TStringField;
    CWFYSCWMONTH: TStringField;
    CWFYSFYBH: TStringField;
    CWFYSDDBH: TStringField;
    CWFYSFYACC: TFloatField;
    CWFYSUSERID: TStringField;
    CWFYSUSERDATE: TDateTimeField;
    CWFYSYN: TStringField;
    CWFYSArticle: TStringField;
    CWFYSXieMing: TStringField;
    CWFYSQty: TCurrencyField;
    N3: TMenuItem;
    N4: TMenuItem;
    CWFYokACC: TFloatField;
    N5: TMenuItem;
    CWFYSUSACC: TCurrencyField;
    CWFYLackACC: TCurrencyField;
    CWFYSVNACC: TIntegerField;
    POP2: TPopupMenu;
    M1: TMenuItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure BB2Click(Sender: TObject);
    procedure BB7Click(Sender: TObject);
    procedure BB3Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure BBT1Click(Sender: TObject);
    procedure BBT2Click(Sender: TObject);
    procedure BBT3Click(Sender: TObject);
    procedure BBT4Click(Sender: TObject);
    procedure bbt6Click(Sender: TObject);
    procedure CWFYAfterScroll(DataSet: TDataSet);
    procedure CWFYAfterOpen(DataSet: TDataSet);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure BB1Click(Sender: TObject);
    procedure CWFYCalcFields(DataSet: TDataSet);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FeeMonth: TFeeMonth;

implementation

uses main1;

{$R *.dfm}

procedure TFeeMonth.FormClose(Sender: TObject; var Action: TCloseAction);
begin
action:=cafree;
end;

procedure TFeeMonth.Button1Click(Sender: TObject);
begin
with CWFY do
  begin
    active:=false;
    sql.clear;
    sql.add('select CWFY.*,CWFYZL.FYJC,isnull(CWFYS.okACC,0) okACC from CWFY');
    sql.add('left join CWFYZL on CWFY.FYBH=CWFYZL.FYBH ');
    sql.add('left join (select CWYEAR,CWMONTH,FYBH,sum(FYACC) as okACC from CWFYS ');
    sql.add('            where  CWYEAR= '+''''+CBX1.Text+'''');
    sql.add('                   and CWMONTH ='+''''+CBX2.text+'''');
    sql.add('            group by CWYEAR,CWMONTH,FYBH ) CWFYS ');
    sql.add('            on  CWFY.CWYEAR=CWFYS.CWYEAR and CWFY.CWMONTH=CWFYS.CWMONTH and CWFY.FYBH=CWFYS.FYBH ');
    sql.add('where CWFY.CWYEAR= '+''''+CBX1.Text+'''');
    sql.add('and CWFY.CWMONTH ='+''''+CBX2.text+'''');
    sql.add('order by CWFY.FYBH');
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
CWFYS.Active:=true; 
N3.Enabled:=false;
N4.Enabled:=false;
Panel3.Visible:=false;
end;

procedure TFeeMonth.BB2Click(Sender: TObject);
begin
CWFY.active:=false;
CWFYS.Active:=false;
with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select * from CWFY');
    sql.add('where CWYEAR= '+''''+CBX1.Text+'''');
    sql.add('and CWMONTH ='+''''+CBX2.text+'''');
    sql.add('and YN='+''''+'1'+'''');
    sql.add('order by FYBH');
    active:=true;
    if recordcount>0 then
      begin
        if messagedlg('Already have fee data of '+''''+CBX1.Text+''''+
                       '/'+''''+CBX2.Text+''''+',delete all?',mtconfirmation,[mbYes,mbNo],0)=mrYes then
          begin
            active:=false;
            sql.Clear;
            sql.add('delete CWFY ');                             
            sql.add('where CWYEAR= '+''''+CBX1.Text+'''');
            sql.add('and CWMONTH ='+''''+CBX2.text+'''');
            sql.add('insert CWFY ');
            sql.add('select '+''''+CBX1.Text+''''+' as CWYEAR,'+''''+CBX2.Text+''''+' as CWMONTH,');
            sql.add('FYBH,0 as FYACC,'+''''+main.edit1.text+''''+' as USERID,');
            sql.add(''''+formatdatetime('yyyy/MM/dd',date)+''''+' as USERDate,');
            sql.add(''''+'1'+''''+' as YN ');
            sql.add('from CWFYZL ');
            sql.add('where not exists(select  * from CWFY');
            sql.add('                 where CWYEAR= '+''''+CBX1.Text+'''');
            sql.add('                       and CWMONTH ='+''''+CBX2.text+'''');
            sql.add('                       and YN='+''''+'1'+'''');
            sql.add('                       and CWFY.FYBH=CWYFZL.FYBH )');
            execsql;
          end;          
      end
      else
        begin
          active:=false;
          sql.Clear;
          sql.add('insert CWFY ');
          sql.add('select '+''''+CBX1.Text+''''+' as CWYEAR,'+''''+CBX2.Text+''''+' as CWMONTH,');
          sql.add('FYBH,0 as FYACC,'+''''+main.edit1.text+''''+' as USERID,');
          sql.add(''''+formatdatetime('yyyy/MM/dd',date)+''''+' as USERDate,');
          sql.add(''''+'1'+''''+' as YN ');
          sql.add('from CWFYZL ');
          execsql;
        end;
  end;
CWFY.CachedUpdates:=true;
CWFY.requestlive:=true;
CWFY.active:=true;
CWFYS.active:=true;
BB5.Enabled:=true;
BB6.Enabled:=true;
N1.Enabled:=false;
N2.Enabled:=false;
N3.Enabled:=false;
N4.Enabled:=false;
N5.Enabled:=false;
end;

procedure TFeeMonth.BB7Click(Sender: TObject);
begin
close;
end;

procedure TFeeMonth.BB3Click(Sender: TObject);
begin
with CWFY do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
    fieldbyname('FYACC').Value:='0';
  end;
bb5.enabled:=true;
bb6.enabled:=true; 
BB6.Enabled:=true;
N1.Enabled:=false;
N2.Enabled:=false;
N3.Enabled:=false;
N4.Enabled:=false;
N5.Enabled:=false;
end;

procedure TFeeMonth.BB4Click(Sender: TObject);
begin
with CWFY do
  begin
    cachedupdates:=true;
    requestlive:=true;
    CWFY.edit;
  end;
bb5.enabled:=true;
bb6.enabled:=true; 
BB6.Enabled:=true;
N1.Enabled:=false;
N2.Enabled:=false;
N3.Enabled:=false;
N4.Enabled:=false;
N5.Enabled:=false;
end;

procedure TFeeMonth.BB5Click(Sender: TObject);
var i:integer;
begin
try
    CWFY.first;
    for i:=1 to CWFY.RecordCount do
      begin
        if CWFY.updatestatus=usmodified then
          begin
            CWFY.edit;
            CWFY.FieldByName('userID').Value:=main.edit1.text;
            CWFY.FieldByName('userdate').Value:=date;
            upsql1.apply(ukmodify);
          end;
        CWFY.next;
      end;

CWFY.active:=false;
CWFY.cachedupdates:=false;
CWFY.requestlive:=false;
CWFY.active:=true;
bb5.enabled:=false;
bb6.enabled:=false;
N1.Enabled:=true;
N2.Enabled:=true;
N5.Enabled:=true;
except
  Messagedlg('Have wrong,can not save!',mtwarning,[mbyes],0);
end;

end;

procedure TFeeMonth.BB6Click(Sender: TObject);
begin

with CWFY do
  begin
    active:=false;
    cachedupdates:=false;
    requestlive:=false;
    active:=true;
  end;
bb5.enabled:=false;
bb6.enabled:=false;  
N1.Enabled:=true;
N2.Enabled:=true;
N5.Enabled:=true;
end;

procedure TFeeMonth.BBT1Click(Sender: TObject);
begin
CWFY.First;
end;

procedure TFeeMonth.BBT2Click(Sender: TObject);
begin 
CWFY.prior;
end;

procedure TFeeMonth.BBT3Click(Sender: TObject);
begin
CWFY.Next;
end;

procedure TFeeMonth.BBT4Click(Sender: TObject);
begin
CWFY.Last;
end;

procedure TFeeMonth.bbt6Click(Sender: TObject);
var        eclApp,WorkBook:olevariant;
 //     xlsFileName:string;
      i,j:integer;
 begin
  if  CWFY.active  then
    begin
    try
      eclApp:=CreateOleObject('Excel.Application');
      WorkBook:=CreateOleObject('Excel.Sheet');
    except
      Application.MessageBox('No Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
      Exit;
    end;
    try
        WorkBook:=eclApp.workbooks.Add;
        for   i:=0   to   CWFY.fieldcount-1   do
          begin
              eclApp.Cells(1,i+1):=CWFY.fields[i].displaylabel;
          end;

        CWFY.First;
        j:=2;
        while   not   CWFY.Eof   do
          begin
            for   i:=0   to  CWFY.fieldcount-1  do
            begin
              eclApp.Cells(j,i+1):=CWFY.Fields[i].Value;
            end;
          CWFY.Next;
          inc(j);
          end;
      eclapp.columns.autofit;
      showmessage('Succeed');
       eclApp.Visible:=True;
      except
        on   F:Exception   do
          showmessage(F.Message);
      end;
    end;

end;

procedure TFeeMonth.CWFYAfterScroll(DataSet: TDataSet);
begin
statusbar1.SimpleText:='      '+CWFY.fieldbyname('CWYEAR').Value+'/'+CWFY.fieldbyname('CWMONTH').Value +
                        '   '+CWFY.fieldbyname('FYJC').Value+'  '+floattostr(CWFY.fieldbyname('FYACC').Value);
end;

procedure TFeeMonth.CWFYAfterOpen(DataSet: TDataSet);
begin
if CWFY.recordcount>0 then
  begin
    N1.enabled:=true;
    N2.enabled:=true;
   // N3.enabled:=true;
   // N4.enabled:=true;
    N5.Enabled:=true;
  end
    else
      begin
        N1.enabled:=false;
        N2.enabled:=false;
        N3.enabled:=false;
        N4.enabled:=false; 
        N5.enabled:=false;
      end;
end;

procedure TFeeMonth.N1Click(Sender: TObject);
var Qty,FYACC:double;
begin
with query1 do
  begin
    if CWFYS.recordcount>0 then
      begin
        if messagedlg('Do you really want to regulate Fee by Qty again?',mtconfirmation,[mbYes,mbNo],0)=mrYes then
          begin
            CWFYS.Active:=false;
            active:=false;
            sql.clear;
            sql.add('select CWYEAR,CWMONTH,sum(Qty) as Qty ');
            sql.add('from CWDD ');
            sql.add('where CWYEAR='+''''+CWFY.fieldbyname('CWYEAR').Value+'''');
            sql.add('and CWMONTH='+''''+ CWFY.fieldbyname('CWMONTH').Value+'''');
            sql.add('group by CWYEAR,CWMONTH ');
            active:=true;
            Qty:=fieldbyname('Qty').Value;
            FYACC:=CWFY.fieldbyname('FYACC').value/Qty;
            active:=false;
            sql.clear;
            sql.add('delete CWFYS ');
            sql.add('where CWYEAR='+''''+CWFY.fieldbyname('CWYEAR').Value+'''');
            sql.add('and CWMONTH='+''''+ CWFY.fieldbyname('CWMONTH').Value+'''');
            sql.add('and FYBH='+''''+CWFY.fieldbyname('FYBH').Value+'''');
            sql.add('insert CWFYS ');
            sql.add('select CWYEAR,CWMONTH,'+''''+CWFY.fieldbyname('FYBH').Value+''''+' as FYBH,DDBH,round(');
            sql.add(floattostr(FYACC)+'*Qty,0) as FYACC,'+''''+main.Edit1.Text+''''+' as USERID,');
            sql.add(''''+formatdatetime('yyyy/MM/dd',date)+''''+' as USERDATE,'+''''+'1'+''''+' as YN ');
            sql.add('from  CWDD');
            sql.add('where CWYEAR='+''''+CWFY.fieldbyname('CWYEAR').Value+'''');
            sql.add('and CWMONTH='+''''+ CWFY.fieldbyname('CWMONTH').Value+'''');
            execsql;
            CWFYS.Active:=true;
          end;
      end
      else
        begin
          CWFYS.Active:=false;
          active:=false;
          sql.clear;
          sql.add('select CWYEAR,CWMONTH,sum(Qty) as Qty ');
          sql.add('from CWDD ');
          sql.add('where CWYEAR='+''''+CWFY.fieldbyname('CWYEAR').Value+'''');
          sql.add('and CWMONTH='+''''+ CWFY.fieldbyname('CWMONTH').Value+'''');
          sql.add('group by CWYEAR,CWMONTH ');
          active:=true;
          Qty:=fieldbyname('Qty').Value;  
          FYACC:=CWFY.fieldbyname('FYACC').value/Qty;
          active:=false;
          sql.clear;
          sql.add('insert CWFYS ');
          sql.add('select CWYEAR,CWMONTH,'+''''+CWFY.fieldbyname('FYBH').Value+''''+' as FYBH,DDBH,round(');
          sql.add(floattostr(FYACC)+'*Qty,0) as FYACC,'+''''+main.Edit1.Text+''''+' as USERID,');
          sql.add(''''+formatdatetime('yyyy/MM/dd',date)+''''+' as USERDATE,'+''''+'1'+''''+' as YN ');
          sql.add('from CWDD');
          sql.add('where CWYEAR='+''''+CWFY.fieldbyname('CWYEAR').Value+'''');
          sql.add('and CWMONTH='+''''+ CWFY.fieldbyname('CWMONTH').Value+'''');
          execsql;
        end;
  end;
CWFY.Active:=false;
CWFY.Active:=true;
CWFYS.CachedUpdates:=true;
CWFYS.RequestLive:=true;
N3.Enabled:=true;
N4.Enabled:=true;  
N5.Enabled:=false;
CWFYS.Active:=true;


end;

procedure TFeeMonth.N2Click(Sender: TObject);
begin
with CWFYS do
  begin
    cachedupdates:=true;
    requestlive:=true;
    N3.Enabled:=true;
    N4.Enabled:=true;
    N5.Enabled:=false;
  end;
end;

procedure TFeeMonth.N4Click(Sender: TObject);
begin
with CWFYS do
  begin
    active:=false;
    CWFY.Active:=false;
    cachedupdates:=false;
    requestlive:=false;
    CWFY.active:=true;
    active:=true;
  end;
N3.enabled:=false;
N4.enabled:=false;
N5.Enabled:=true;
end;

procedure TFeeMonth.N3Click(Sender: TObject);
var i:integer;
begin
try
    CWFYS.first;
    for i:=1 to CWFYS.RecordCount do
      begin
        if CWFYS.updatestatus=usmodified then
          begin
            CWFYS.edit;
            CWFYS.FieldByName('userID').Value:=main.edit1.text;
            CWFYS.FieldByName('userdate').Value:=date;
            upsql2.apply(ukmodify);
          end;
        CWFYS.next;
      end;

CWFYS.active:=false;
CWFY.active:=false;
CWFYS.cachedupdates:=false;
CWFYS.requestlive:=false;
CWFY.Active:=true;
CWFYS.active:=true;
N3.enabled:=false;
N4.enabled:=false;
N5.Enabled:=true;
except
  Messagedlg('Have wrong,can not save!',mtwarning,[mbyes],0);
end;

end;

procedure TFeeMonth.N5Click(Sender: TObject);
var        eclApp,WorkBook:olevariant;
      i,j:integer;
 begin
  if  CWFYS.active  then
    begin
    try
      eclApp:=CreateOleObject('Excel.Application');
      WorkBook:=CreateOleObject('Excel.Sheet');
    except
      Application.MessageBox('No Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
      Exit;
    end;
    try
        WorkBook:=eclApp.workbooks.Add;
        for   i:=0   to   CWFYS.fieldcount-1   do
          begin
              eclApp.Cells(1,i+1):=CWFYS.fields[i].displaylabel;
          end;

        CWFYS.First;
        j:=2;
        while   not   CWFYS.Eof   do
          begin
            for   i:=0   to  CWFYS.fieldcount-1  do
            begin
              eclApp.Cells(j,i+1):=CWFYS.Fields[i].Value;
            end;
          CWFYS.Next;
          inc(j);
          end;
      eclapp.columns.autofit;
      showmessage('Succeed');
       eclApp.Visible:=True;
      except
        on   F:Exception   do
          showmessage(F.Message);
      end;
    end; 
end;


procedure TFeeMonth.BB1Click(Sender: TObject);
begin
panel3.Visible:=true;
end;

procedure TFeeMonth.CWFYCalcFields(DataSet: TDataSet);
begin
CWFY.FieldByName('LackACC').Value:=CWFY.FieldByName('FYACC').Value-CWFY.FieldByName('okACC').Value ;
end;

procedure TFeeMonth.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
if CWFY.FieldByName('LackACC').value<>0 then
  begin
    dbgrid1.canvas.font.color:=clred;
    dbgrid1.defaultdrawcolumncell(rect,datacol,column,state);
  end; 
end;

procedure TFeeMonth.FormDestroy(Sender: TObject);
begin
FeeMonth:=nil;
end;

end.
