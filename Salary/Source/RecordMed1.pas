unit RecordMed1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, DBTables, DBCtrls, ComCtrls, Grids, DBGrids,comobj,
  Buttons, ExtCtrls;

type
  TRecordMed = class(TForm)
    Panel1: TPanel;
    Label4: TLabel;
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
    Panel5: TPanel;
    Label5: TLabel;
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
    TS1: TTabSheet;
    DBGrid1: TDBGrid;
    TS2: TTabSheet;
    Panel6: TPanel;
    DBText1: TDBText;
    DBText2: TDBText;
    DBGrid2: TDBGrid;
    QRecDet: TQuery;
    UpDet: TUpdateSQL;
    DS2: TDataSource;
    DS1: TDataSource;
    QRecMas: TQuery;
    UpMas: TUpdateSQL;
    Query1: TQuery;
    QRecDetID: TStringField;
    QRecDetMedID: TStringField;
    QRecDetQty: TFloatField;
    QRecDetUserID: TStringField;
    QRecDetUserDate: TDateTimeField;
    QRecDetMedName: TStringField;
    QRecDetUnit: TStringField;
    QRecDetStockQty: TFloatField;
    QRecDetYN: TStringField;
    SaveDialog1: TSaveDialog;
    Panel3: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    Label2: TLabel;
    Label6: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    CBX1: TComboBox;
    QRecMasID: TStringField;
    QRecMasWorkerID: TStringField;
    QRecMasSickName: TStringField;
    QRecMasSickReason: TStringField;
    QRecMasSickAct: TStringField;
    QRecMasSickTime: TDateTimeField;
    QRecMasUserID: TStringField;
    QRecMasUserDate: TDateTimeField;
    QRecMasYN: TStringField;
    QRecMasWorkName: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BB1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BB2Click(Sender: TObject);
    procedure BB3Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure BB7Click(Sender: TObject);
    procedure BBT1Click(Sender: TObject);
    procedure BBT2Click(Sender: TObject);
    procedure BBT3Click(Sender: TObject);
    procedure BBT4Click(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure PC1Change(Sender: TObject);
    procedure BD2Click(Sender: TObject);
    procedure BD3Click(Sender: TObject);
    procedure BD4Click(Sender: TObject);
    procedure BD5Click(Sender: TObject);
    procedure BD6Click(Sender: TObject);
    procedure BD7Click(Sender: TObject);
    procedure BDT1Click(Sender: TObject);
    procedure BDT2Click(Sender: TObject);
    procedure BDT3Click(Sender: TObject);
    procedure BDT4Click(Sender: TObject);
    procedure DBGrid2CellClick(Column: TColumn);
    procedure DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid2EditButtonClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1EditButtonClick(Sender: TObject);
    procedure bbt6Click(Sender: TObject);
    procedure BDT6Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RecordMed: TRecordMed;
  NDate:TDate;

implementation

uses main1, Record_worker1, Record_Medicine1;

{$R *.dfm}

procedure TRecordMed.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if QRecDet.requestlive  then
  begin
    messagedlg('You have to save data Record of medicine first.',mtwarning,[mbyes],0);
    action:=canone;
  end
  else
    begin
      if QRecMas.RequestLive then
        begin
          messagedlg('You have to save data Record first.',mtwarning,[mbyes],0);
          action:=canone;
        end
          else
            begin
              action:=Cafree;
            end;
    end;
end;

procedure TRecordMed.BB1Click(Sender: TObject);
begin
//Panel2.Visible:=true;
panel5.Visible:=false;
end;

procedure TRecordMed.FormCreate(Sender: TObject);
begin
with Query1 do
  begin
    active:=false;
    sql.Clear;
    sql.Add('select ID from BDepartment order by ID');
    active:=true;
    CBX1.Items.clear;
    while not Query1.eof do
      begin
        CBX1.Items.add(Query1.FieldByName('ID').asstring);
        next;
      end;
    active:=false;
  end;
CBX1.ItemIndex:=0;
PC1.activepage:=TS1;
panel5.Visible:=false;
DTP1.date:=Date-7;
DTP2.date:=Date;
end;

procedure TRecordMed.Button1Click(Sender: TObject);
begin  
with QRecMas do
  begin
    active:=true;
    sql.clear;
    sql.add('select r.*,w.WorkName,w.DepID from BWorker w,RsRecordMas r' );
    sql.add('where w.ID=r.WorkerID and R.ID like ');
    sql.add(''''+edit1.Text+'%'+'''');
    sql.add('and w.DepID like');
    sql.add(''''+CBX1.Text+'%'+'''');
    sql.add('and convert(smalldatetime,convert(varchar,r.USERDATE,111)) between ');
    sql.add(''''+FormatDatetime('yyyy/mm/dd',DTP1.Date)+'''');
    sql.add('and');
    sql.add(''''+FormatDatetime('yyyy/mm/dd',DTP2.Date)+'''');
    sql.add('order by r.ID');
    active:=true;
  end;
   // Panel2.Visible:=false;
    QRecDet.Active:=true;
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
    Bd2.Enabled:=true;
    Bd3.Enabled:=true;
    Bd4.Enabled:=true;
    Bd7.Enabled:=true;
    BDT1.Enabled:=true;
    BDT2.Enabled:=true;
    BDT3.Enabled:=true;
    BDT4.Enabled:=true;
    BDT5.Enabled:=true;
    BDT6.Enabled:=true;
end;

procedure TRecordMed.BB2Click(Sender: TObject);
begin
with QRecMas do
  begin
    cachedupdates:=true;
    requestlive:=true;
    Insert;
  end;
bb5.enabled:=true;
bb6.enabled:=true;
dbgrid1.columns[1].ButtonStyle:=cbsEllipsis;
end;

procedure TRecordMed.BB3Click(Sender: TObject);
begin
if messagedlg('Do you really want to delete this record?',mtconfirmation,[mbYes,Mbno],0)=mrYes then
  begin
    if QRecDet.recordcount=0 then
      begin
        with QRecMas do
          begin
            cachedupdates:=true;
            requestlive:=true;
            edit;
            fieldbyname('YN').Value:='0';
          end;
        bb5.enabled:=true;
        bb6.enabled:=true;
      end
      else
        begin
          messagedlg('This Record have Medicine data,can not delete!',mtwarning,[mbYes],0);
        end;
  end;
end;

procedure TRecordMed.BB4Click(Sender: TObject);
begin
 with QRecMas do
  begin
    cachedupdates:=true;
    requestlive:=true;
    edit;
  end;
bb5.enabled:=true;
bb6.enabled:=true;
dbgrid1.columns[1].ButtonStyle:=cbsEllipsis;
end;

procedure TRecordMed.BB5Click(Sender: TObject);
var i:integer;
y,m,a:string;
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
    QRecMas.first;
    for i:=1 to QRecMas.RecordCount do
      begin
        case QRecMas.updatestatus of
          usinserted:
            begin 
              if QRecMas.fieldbyname('WorkID').isnull then
                begin
                  QRecMas.delete;
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
                     QRecMas.edit;
                     QRecMas.FieldByName('ID').asstring:=a ;
                     QRecMas.FieldByName('UserID').asstring:=main.edit1.text;
                     QRecMas.FieldByName('Userdate').Value:=date;
                     QRecMas.FieldByName('YN').Value:='1';
                     UpMas.apply(ukinsert);
                   end;
            end;
          usmodified:
             begin
              if QRecMas.fieldbyname('YN').value='0'then
                begin
                  UpMas.apply(ukdelete);
                end
                else
                  begin
                    QRecMas.edit;
                    QRecMas.FieldByName('UserID').Value:=main.edit1.text;
                    QRecMas.FieldByName('Userdate').Value:=date;
                    UpMas.apply(ukmodify);
                  end;
              end;
        end;
        QRecMas.next;
      end;
    QRecMas.active:=false;
    QRecMas.cachedupdates:=false;
    QRecMas.requestlive:=false;
    QRecMas.active:=true;
    bb5.enabled:=false;
    bb6.enabled:=false;
except
    Messagedlg('Have wrong, can not save!',mtwarning,[mbyes],0);
end;

end;

procedure TRecordMed.BB6Click(Sender: TObject);
begin
with QRecMas do
  begin
    active:=false;
    cachedupdates:=false;
    requestlive:=false;
    active:=true;
  end;
bb5.enabled:=false;
bb6.enabled:=false;
end;

procedure TRecordMed.BB7Click(Sender: TObject);
begin
close;
end;

procedure TRecordMed.BBT1Click(Sender: TObject);
begin
QrecMas.First;
end;

procedure TRecordMed.BBT2Click(Sender: TObject);
begin
QrecMas.prior;
end;

procedure TRecordMed.BBT3Click(Sender: TObject);
begin
QrecMas.next;
end;

procedure TRecordMed.BBT4Click(Sender: TObject);
begin
QrecMas.last;
end;

procedure TRecordMed.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
if  QRecMas.fieldbyname('YN').Value='0' then
  begin
    dbgrid1.canvas.font.color:=clred;
    dbgrid1.defaultdrawcolumncell(rect,datacol,column,state);
  end;
end;

procedure TRecordMed.PC1Change(Sender: TObject);
begin
if PC1.ActivePage=TS2 then
  begin
    panel1.Visible:=false;
    panel5.Visible:=true;
  end;
if PC1.ActivePage=TS1 then
  begin
    panel1.Visible:=true;
    panel5.Visible:=false;
  end;
end;

procedure TRecordMed.BD2Click(Sender: TObject);
begin
if QRecMas.RequestLive then
  begin
    Showmessage('Pls save Record Master first.');
    abort;
  end;
with QRecDet do
  begin
    cachedupdates:=true;
    requestlive:=true;
    Insert;
  end;
  bd5.enabled:=true;
  bd6.enabled:=true;
  dbgrid2.columns[0].ButtonStyle:=cbsEllipsis;
end;

procedure TRecordMed.BD3Click(Sender: TObject);
begin
if messagedlg('Do you really want to delete this record?',mtconfirmation,[mbYes,Mbno],0)=mrYes then
  begin
    with QRecDet do
      begin
        cachedupdates:=true;
        requestlive:=true;
        edit;
        fieldbyname('YN').Value:='0';
      end;
    bb5.enabled:=true;
    bb6.enabled:=true;
  end;
end;

procedure TRecordMed.BD4Click(Sender: TObject);
begin
with QRecdet do
  begin
    cachedupdates:=true;
    requestlive:=true;
    edit;
  end;
bd5.enabled:=true;
bd6.enabled:=true;
dbgrid2.columns[0].ButtonStyle:=cbsEllipsis;
end;

procedure TRecordMed.BD5Click(Sender: TObject);
var i:integer;
begin
try
    QRecdet.first;
    for i:=1 to QRecdet.RecordCount do
      begin
        case QRecdet.updatestatus of
          usinserted:
            begin  
              if QRecdet.fieldbyname('MedID').isnull then
                begin
                  QRecdet.delete;
                end
                 else
                   begin
                     QRecdet.edit;
                     QRecDet.FieldByName('ID').Value:=QRecMas.fieldbyname('ID').value;
                     QRecDet.FieldByName('UserID').Value:=main.Edit1.Text;
                     QRecdet.FieldByName('Userdate').Value:=date;
                     QRecdet.FieldByName('YN').Value:='1';
                     Updet.apply(ukinsert);
                   end;
            end;
          usmodified:
             begin
              if QRecdet.fieldbyname('YN').value='0'then
                begin
                  UpDet.apply(ukdelete);
                end
                else
                  begin
                    QRecdet.edit;
                    QRecDet.FieldByName('UserID').Value:=main.Edit1.Text;
                    QRecdet.fieldByName('Userdate').Value:=date;
                    Updet.apply(ukmodify);
                  end;
              end;
        end;
        QRecdet.next;
      end;
    QRecdet.active:=false;
    QRecdet.cachedupdates:=false;
    QRecdet.requestlive:=false;
    QRecdet.active:=true;
bd5.enabled:=false;
bd6.enabled:=false;
dbgrid2.columns[0].ButtonStyle:=cbsnone;
except
  Messagedlg('Have wrong, can not save!',mtwarning,[mbyes],0);
end;

end;

procedure TRecordMed.BD6Click(Sender: TObject);
begin
with QRecDet do
  begin
    active:=false;
    cachedupdates:=false;
    requestlive:=false;
    active:=true;
  end;
bd5.enabled:=false;
bd6.enabled:=false;
dbgrid2.columns[0].ButtonStyle:=cbsnone;
end;

procedure TRecordMed.BD7Click(Sender: TObject);
begin
if QRecDet.RequestLive then
  begin
    messagedlg('Pls save material first.',mtwarning,[mbOK],0);
  end
  else
    begin
      PC1.ActivePage:=TS1;
      PC1Change(nil);
    end;
end;

procedure TRecordMed.BDT1Click(Sender: TObject);
begin
QRecdet.First;
end;

procedure TRecordMed.BDT2Click(Sender: TObject);
begin
QRecdet.prior;
end;

procedure TRecordMed.BDT3Click(Sender: TObject);
begin
QRecdet.next;
end;

procedure TRecordMed.BDT4Click(Sender: TObject);
begin
QRecdet.last;
end;

procedure TRecordMed.DBGrid2CellClick(Column: TColumn);
begin
if QRecDet.requestlive then
  begin
     if dbgrid2.Selectedindex=0  then
       begin
         dbgrid2.columns[0].ButtonStyle:=cbsEllipsis;
       end;
  end
  else
    begin
      dbgrid2.columns[0].ButtonStyle:=cbsnone;
    end;
end;

procedure TRecordMed.DBGrid2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
if  QRecDet.fieldbyname('YN').Value='0' then       
  begin
    dbgrid2.canvas.font.color:=clred;
    dbgrid2.defaultdrawcolumncell(rect,datacol,column,state);
  end;
end;

procedure TRecordMed.DBGrid2EditButtonClick(Sender: TObject);
begin
if dbgrid2.selectedfield.fieldname='MedID' then
  begin
    Record_Medicine:=TRecord_Medicine.create(self);
    Record_Medicine.show;
    enabled:=false;
  end;
end;

procedure TRecordMed.DBGrid1DblClick(Sender: TObject);
begin
if QRecMas.Active then
  begin
    PC1.ActivePage:=TS2;
    PC1Change(nil);
  end;
end;

procedure TRecordMed.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
  DBGrid1DblClick(nil);
end;

procedure TRecordMed.DBGrid1EditButtonClick(Sender: TObject);
begin
if dbgrid1.selectedfield.fieldname='WorkerID' then
  begin
    Record_worker:=TRecord_worker.create(self);
    Record_worker.show;
    enabled:=false;
  end;
end;

procedure TRecordMed.bbt6Click(Sender: TObject);
var   a:string;
      eclApp,WorkBook:olevariant;
 //     xlsFileName:string;
      i,j:integer;
  begin
  if  QRecMas.active  then
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
        for   i:=0   to   9   do
          begin
              eclApp.Cells(1,i+1):=QRecMas.fields[i].FieldName;
          end;

        QRecMas.First;
        j:=2;
        while   not   QRecMas.Eof   do
          begin
            for   i:=0   to  9  do
            begin
              eclApp.Cells(j,i+1):=QRecMas.Fields[i].Value;
            end;
          QRecMas.Next;
          inc(j);
          end;
    eclApp.columns.autofit;
  {  if SaveDialog1.execute then
      begin
        a:=SaveDialog1.FileName;
      end
      else
        begin
          a:='Medical List';
        end;
      WorkBook.SaveAS(a);
      WorkBook.close;  }
      eclApp.Visible:=True;
      except
        on   F:Exception   do
          showmessage(F.Message);
      end;
    end;
end;

procedure TRecordMed.BDT6Click(Sender: TObject);
var   a:string;
      eclApp,WorkBook:olevariant;
 //     xlsFileName:string;
      i,j:integer;
begin
with Query1 do
  begin
    active:=false;
    sql.clear;
    sql.add('select m.ID,m.WorkerID,w.WorkName,w.DepID,m.SickTime,m.SickName,m.SickReason,m.SickAct,');
    sql.add(' d.MedID,c.MedName,c.Unit,d.Qty');
    sql.add('from RsRecordMas m,RsRecordDet d,RsMedicine c,BWorker w');
    sql.add('where m.ID=d.ID and d.MedID=c.ID and m.WorkerID=w.ID');
    sql.add('and w.DepID like ');
    sql.add(''''+CBX1.Text+'%'+'''');
    sql.add('and m.Sicktime between ');
    sql.add(''''+FormatDatetime('yyyy-mm-dd ',DTP1.Date)+'''');
    sql.add('and');
    sql.add(''''+FormatDatetime('yyyy-mm-dd 23:59:59',DTP2.Date)+'''');
    sql.add('order by m.ID,d.MedID');
    active:=true;
  end;
  if  query1.active  then
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
        for   i:=0   to   11   do
          begin
              eclApp.Cells(1,i+1):=query1.fields[i].FieldName;
          end;

        query1.First;
        j:=2;
        while   not   query1.Eof   do
          begin
            for   i:=0   to  11  do
            begin
              eclApp.Cells(j,i+1):=query1.Fields[i].Value;
            end;
          query1.Next;
          inc(j);
          end;
    eclApp.columns.autofit;
    {if SaveDialog1.execute then
      begin
        a:=SaveDialog1.FileName;
      end
      else
        begin
          a:='Unit List';
        end;
      WorkBook.SaveAS(a);
      WorkBook.close;  }
      eclApp.Visible:=True;
      except
        on   F:Exception   do
          showmessage(F.Message);
      end;
    end;

end;

procedure TRecordMed.FormDestroy(Sender: TObject);
begin
RecordMed:=nil;
end;

end.
