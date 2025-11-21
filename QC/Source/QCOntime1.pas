unit QCOntime1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBTables, DB, Grids, DBGrids, StdCtrls, Buttons, ExtCtrls,
  ComCtrls, DBCtrls, Mask, GridsEh, DBGridEh,ehlibBDE;

type
  TQCOntime = class(TForm)
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
    DBGrid1: TDBGridEh;
    Panel2: TPanel;
    Panel3: TPanel;
    Label1: TLabel;
    Label6: TLabel;
    TS2: TTabSheet;
    Panel6: TPanel;
    DS2: TDataSource;
    QRepDet: TQuery;
    UpDet: TUpdateSQL;
    UpMas: TUpdateSQL;
    QRepMas: TQuery;
    DS1: TDataSource;
    DTP1: TDateTimePicker;
    Button1: TButton;
    Panel4: TPanel;
    DBGrid3: TDBGridEh;
    Qscbbss: TQuery;
    DS3: TDataSource;
    QTemp: TQuery;
    Upscbbss: TUpdateSQL;
    QRepDetProNo: TStringField;
    QRepDetSCBH: TStringField;
    QRepDetQty: TFloatField;
    QRepDetUSERID: TStringField;
    QRepDetUSERDATE: TDateTimeField;
    QRepDetYN: TStringField;
    QscbbssProNo: TStringField;
    QscbbssSCBH: TStringField;
    QscbbssXXCC: TStringField;
    QscbbssQty: TFloatField;
    QscbbssokQty: TFloatField;
    QscbbssoldQty: TFloatField;
    DBGrid2: TDBGridEh;
    Panel7: TPanel;
    Label2: TLabel;
    BT1: TBitBtn;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    Label8: TLabel;
    DBEdit2: TDBEdit;
    Label9: TLabel;
    DBEdit3: TDBEdit;
    BT3: TBitBtn;
    Label10: TLabel;
    DBEdit4: TDBEdit;
    QRepDetGXLB: TStringField;
    QscbbssGXLB: TStringField;
    DBX1: TDBComboBox;
    QRepMasProNo: TStringField;
    QRepMasSCDate: TDateTimeField;
    QRepMasSJXH: TStringField;
    QRepMasDepNo: TStringField;
    QRepMasUSERID: TStringField;
    QRepMasUSERDATE: TDateTimeField;
    QRepMasYN: TStringField;
    Label11: TLabel;
    DBEdit5: TDBEdit;
    BT2: TBitBtn;
    DBEdit6: TDBEdit;
    Edit1: TEdit;
    Label12: TLabel;
    DTP3: TDateTimePicker;
    QRepMasDepName: TStringField;
    QRepMasGSBH: TStringField;
    CB1: TCheckBox;
    QscbbsszlQty: TIntegerField;
    MC1: TMonthCalendar;
    QRepMasYXGS: TFloatField;
    QRepMasSCTIME: TStringField;
    QscbbssOrdSize: TStringField;
    QscbbssZLXXCC: TStringField;
    scbbssold: TQuery;
    QRepDetYWSM: TStringField;
    QRepMasINSPECTQTY: TFloatField;
    Label7: TLabel;
    DBEdit7: TDBEdit;
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
    procedure PC1Change(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1EditButtonClick(Sender: TObject);
    procedure BD4Click(Sender: TObject);
    procedure BD2Click(Sender: TObject);
    procedure DBGrid3Enter(Sender: TObject);
    procedure BD3Click(Sender: TObject);
    procedure BD5Click(Sender: TObject);
    procedure DBGrid3KeyPress(Sender: TObject; var Key: Char);
    procedure BDT1Click(Sender: TObject);
    procedure BDT2Click(Sender: TObject);
    procedure BDT3Click(Sender: TObject);
    procedure BDT4Click(Sender: TObject);
    procedure BD7Click(Sender: TObject);
    procedure BD6Click(Sender: TObject);
    procedure DBGrid3CellClick(Column: TColumn);
    procedure DBGrid2EditButtonClick(Sender: TObject);
    procedure Panel7Enter(Sender: TObject);
    procedure DBGrid2Enter(Sender: TObject);
    procedure DBGrid3ColEnter(Sender: TObject);
    procedure BT1Click(Sender: TObject);
    procedure MC1Click(Sender: TObject);
    procedure BT3Click(Sender: TObject);
    procedure QRepMasAfterOpen(DataSet: TDataSet);
    procedure QRepDetAfterOpen(DataSet: TDataSet);
    procedure FormDestroy(Sender: TObject);
    procedure DBGrid2GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure DBGrid1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure DBGrid3GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure BT2Click(Sender: TObject);
    procedure QscbbssNewRecord(DataSet: TDataSet);
    procedure QscbbssAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  QCOntime: TQCOntime;
  NDate:Tdate;

implementation

uses main1, QCOnTime_Dep1, DM3, QCOnTime_sczl1, QCOnTime_XH1;

{$R *.dfm}

procedure TQCOntime.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if BD5.enabled  then
  begin
    messagedlg('You have to save data Record of report first.',mtwarning,[mbyes],0);
    PC1.ActivePage:=TS2;
    panel5.Visible:=true;
    panel1.Visible:=false;
    action:=canone;
  end
  else
    begin
      if BB5.enabled then
        begin
          messagedlg('You have to save data Report first.',mtwarning,[mbyes],0);
          PC1.ActivePage:=TS1;
          panel1.Visible:=true;
          panel5.Visible:=false;
          action:=canone;
        end
          else
            begin
              action:=Cafree;
            end;
    end;
end;

procedure TQCOntime.BB1Click(Sender: TObject);
begin
Panel2.Visible:=true;
panel5.Visible:=false; {
Qscbbss.Active:=false;
Qrepdet.Active:=false;
QRepMas.Active:=false;}
PC1.ActivePage:=TS1;
end;

procedure TQCOntime.FormCreate(Sender: TObject);
var i:integer;
begin
with Qtemp do
  begin
    active:=false;
    sql.Clear;
    sql.add('select distinct GXLB from SCGXDY order by GXLB');
    active:=true;
    for i:=1 to recordcount do
      begin
        DBX1.Items.Add(fieldbyname('GXLB').asstring);
        next;
      end;
    active:=false;
    sql.Clear;
    sql.add('select getdate() as NDate');
    active:=true;
    NDate:=fieldbyname('NDate').value;
    active:=false;
  end;
PC1.activepage:=TS1;
panel5.Visible:=false;
if dayofweek(NDate)=2 then
begin
  DTP1.date:=NDate-2;
  DTP3.date:=NDate-2;
end
else
begin
  DTP1.date:=NDate-1;
  DTP3.date:=NDate-1;
end;
end;

procedure TQCOntime.Button1Click(Sender: TObject);
begin

with QRepMas do
  begin
    active:=false;
    sql.clear;
    sql.add('select QCBB.*,SCSJ.FTime+'+''''+'-'+''''+'+SCSJ.TTime as SCTIME,SCSJ.YXGS,BDepartment.DepName ');
    sql.add('from QCBB');
    sql.add('left join SCSJ on QCBB.SJXH=SCSJ.XH');
    sql.add('left join BDepartment on BDepartment.ID=QCBB.DepNO');
    sql.add('where QCBB.SCDate between');
    sql.add(''''+formatdatetime('yyyy/MM/dd',DTP1.date)+'''');
    sql.add(' and '+''''+formatdatetime('yyyy/MM/dd',DTP3.date)+'''');
    sql.add('and BDepartment.DepName like');
    sql.add(''''+edit1.Text+'%'+'''');
    sql.add('and QCBB.GSBH='+''''+main.Edit2.text+'''');
    if CB1.Checked then
      begin
        sql.add('and QCBB.USERID='+''''+main.Edit1.Text+'''');
      end;
    sql.add('order by QCBB.ProNO Desc');
    active:=true;
  end;
    Panel2.Visible:=false;
    QRepDet.Active:=true;
    //Qscbbss.Active:=true;
    //scbbssold.active:=true;
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
    CB1.Checked:=true;
end;

procedure TQCOntime.BB2Click(Sender: TObject);
begin

with QRepMas do
  begin
    cachedupdates:=true;
    requestlive:=true;
    Insert;
    if dayofweek(date)=2 then
      QRepMas.FieldByName('SCDate').Value:=date-2
    else
      QRepMas.FieldByName('SCDate').Value:=date-1;
  end;
bb5.enabled:=true;
bb6.enabled:=true;
dbgrid1.columns[1].ButtonStyle:=cbsEllipsis;
dbgrid1.columns[5].ButtonStyle:=cbsEllipsis;
PC1.activepage:=TS2;
BT1.visible:=true;
BT2.visible:=true;
BT3.visible:=true;
end;

procedure TQCOntime.BB3Click(Sender: TObject);
begin
if QRepMas.FieldByName('SCDate').value<Date-30 then
  begin
    showmessage('You can not delete the production report 30 days ago.');
    abort;
  end;
if QRepMas.FieldByName('USERID').value<>main.Edit1.text then
  begin
    showmessage('It is not yours,can not modify.');
    abort;
  end;
if messagedlg('Do you really want to delete this record?',mtconfirmation,[mbYes,Mbno],0)=mrYes then
  begin
    if QRepDet.recordcount=0 then
      begin
        with QRepMas do
          begin
            cachedupdates:=true;
            requestlive:=true;
            edit;
            fieldbyname('YN').Value:='0';
          end;
        bb5.enabled:=true;
        bb6.enabled:=true;  
        BT1.visible:=true;
        BT2.visible:=true;
        BT3.visible:=true;
      end
      else
        begin
          messagedlg('This Record have Deatail data,can not delete!',mtwarning,[mbYes],0);
        end;
  end;
end;

procedure TQCOntime.BB4Click(Sender: TObject);
begin

if QRepMas.FieldByName('SCDate').value<Date-30 then
  begin
    showmessage('You can not modify the production report 30 days ago.');
    abort;
  end;

 with QRepMas do
  begin
    cachedupdates:=true;
    requestlive:=true;
    edit;
  end;
bb5.enabled:=true;
bb6.enabled:=true;
dbgrid1.columns[4].ButtonStyle:=cbsEllipsis;
PC1.activepage:=TS2; 
BT1.visible:=true;
BT2.visible:=true;
BT3.visible:=true;
end;

procedure TQCOntime.BB5Click(Sender: TObject);
var i:integer;
var a:string;
    J:Variant;
begin

with QTemp do
  begin
    
  end;

  j:=QRepMas.fieldbyname('ProNo').Value;
try
    QRepMas.first;
    for i:=1 to QRepMas.RecordCount do
      begin
        case QRepMas.updatestatus of
          usinserted:
            begin
              if QRepMas.fieldbyname('SCDate').isnull then
                begin
                  QRepMas.delete;
                end
                 else
                   begin
                     if QRepMas.FieldByName('SCDate').value<NDate-30 then
                       begin
                         showmessage('You can not insert the production report 30 days ago.');
                         //abort;
                       end
                       else
                         begin
                           with QTemp do
                             begin
                               active:=false;
                               sql.Clear;
                               sql.add('select ProNO from QCBB order by ProNO Desc ');
                               active:=true;
                               if recordcount>0 then
                                 begin
                                   a:=fieldbyname('ProNO').Value;
                                   a:=inttostr(strtoint(a)+1);
                                   while length(a)<10 do
                                     begin
                                       a:='0'+a;
                                     end;
                                 end
                                 else
                                   begin
                                     a:='0000000001';
                                   end;
                             end;
                           QRepMas.edit;
                           QRepMas.FieldByName('ProNo').asstring:=a;
                           //QRepMas.FieldByName('ProNo').asstring:=a;
                           QRepMas.FieldByName('UserID').asstring:=main.edit1.text;
                           QRepMas.FieldByName('Userdate').Value:=Ndate;
                           QRepMas.FieldByName('GSBH').Value:=main.Edit2.text;
                           QRepMas.FieldByName('YN').Value:='1';
                           UpMas.apply(ukinsert);
                         end;
                   end;
            end;
          usmodified:
             begin
//               if QRepMas.FieldByName('USERID').value=main.Edit1.Text then
//                 begin
                   if QRepMas.fieldbyname('YN').value='0'then
                     begin
                       UpMas.apply(ukdelete);
                     end
                     else
                       begin
                         if DTP1.date<NDate-30 then
                           begin
                             showmessage('You can not modify the production report 30 days ago.');
                             //abort;
                           end;
                         QRepMas.edit;
                         QRepMas.FieldByName('UserID').Value:=main.edit1.text;
                         QRepMas.FieldByName('Userdate').Value:=date;
                         UpMas.apply(ukmodify);
                       end;
//                 end
//                 else
//                   showmessage('It is not yours,can not modify.');
             end;
        end;
        QRepMas.next;
      end;
    QRepMas.active:=false;
    QRepMas.cachedupdates:=false;
    QRepMas.requestlive:=false;
    QRepMas.active:=true;
    IF  J<>' ' THEN   QRepMas.Locate('ProNo',J,[]) ;

    bb5.enabled:=false;
    bb6.enabled:=false;
    BT1.visible:=false;
    BT2.visible:=false;
    BT3.visible:=false;
except
    Messagedlg('Have wrong, can not save!',mtwarning,[mbyes],0);
end;
dbgrid1.columns[0].ButtonStyle:=cbsnone;
end;

procedure TQCOntime.BB6Click(Sender: TObject);
begin
with QRepMas do
  begin
    active:=false;
    cachedupdates:=false;
    requestlive:=false;
    active:=true;
  end;
bb5.enabled:=false;
bb6.enabled:=false;    
MC1.Visible:=false;
BT1.visible:=false;
BT2.visible:=false;
BT3.visible:=false;

dbgrid1.columns[0].ButtonStyle:=cbsnone;
end;

procedure TQCOntime.BB7Click(Sender: TObject);
begin
close;
end;

procedure TQCOntime.BBT1Click(Sender: TObject);
begin
QrepMas.First;
end;

procedure TQCOntime.BBT2Click(Sender: TObject);
begin
QrepMas.prior;
end;

procedure TQCOntime.BBT3Click(Sender: TObject);
begin
QrepMas.next;
end;

procedure TQCOntime.BBT4Click(Sender: TObject);
begin
QrepMas.last;
end;

procedure TQCOntime.PC1Change(Sender: TObject);
begin
if PC1.ActivePage=TS2 then
  begin
    panel1.Visible:=false;
    panel5.Visible:=true;
    DBGrid2.SetFocus;
  end;
if PC1.ActivePage=TS1 then
  begin
    panel1.Visible:=true;
    panel5.Visible:=false;
  end;
end;

procedure TQCOntime.DBGrid1DblClick(Sender: TObject);
begin
if QRepMas.Active then
  begin
    PC1.ActivePage:=TS2;
    PC1Change(nil);
  end;
end;

procedure TQCOntime.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
  DBGrid1DblClick(nil);
end;

procedure TQCOntime.DBGrid1EditButtonClick(Sender: TObject);
begin
if dbgrid1.selectedfield.fieldname='DepNo' then
  begin
    QCOnTime_Dep:=TQCOnTime_Dep.create(self);
    QCOnTime_Dep.show;
  end;
end;

procedure TQCOntime.BD4Click(Sender: TObject);
begin

if QRepMas.FieldByName('SCDate').value<NDate-30 then
  begin
    showmessage('You can not modify the production report 30 days ago.');
    abort;
  end;
  
if QRepMas.RequestLive then
  begin
    Showmessage('Pls save Record Master first.');
    abort;
  end;
with QRepdet do
  begin
    cachedupdates:=true;
    requestlive:=true;
    edit;
  end; 
bd5.enabled:=true;
bd6.enabled:=true;
dbgrid2.columns[0].ButtonStyle:=cbsEllipsis;
end;

procedure TQCOntime.BD2Click(Sender: TObject);
begin 
if QRepMas.FieldByName('SCDate').value<NDate-30 then
  begin
    showmessage('You can not modify the production report 30 days ago.');
    abort;
  end;
  
if QRepMas.RequestLive then
  begin
    Showmessage('Pls save Record Master first.');
    abort;
  end;
with QRepDet do
  begin
    cachedupdates:=true;
    requestlive:=true;
    Insert;
  end; 
  bd5.enabled:=true;
  bd6.enabled:=true;
  dbgrid2.columns[0].ButtonStyle:=cbsEllipsis;
end;

procedure TQCOntime.DBGrid3Enter(Sender: TObject);
begin
if QRepDet.RequestLive then
  begin
    showmessage('Pls seve production order first.');
    BD5.SetFocus;
  end;
end;

procedure TQCOntime.BD3Click(Sender: TObject);
begin

if QRepMas.FieldByName('SCDate').value<NDate-30 then
  begin
    showmessage('You can not modify the production report 30 days ago.');
    abort;
  end;
  
if messagedlg('Do you really want to delete this record?',mtconfirmation,[mbYes,Mbno],0)=mrYes then
  begin
      try
        with QRepDet do
          begin
            cachedupdates:=true;
            requestlive:=true;
            edit;
            fieldbyname('YN').Value:='0';
          end;
       bd5.enabled:=true;
       bd6.enabled:=true;
      except
        messagedlg('Wrong.',mtwarning,[mbyes],0);
      end;

  end;
end;

procedure TQCOntime.BD5Click(Sender: TObject);
var i:integer;
N:real;
a:double;
begin
if QRepDet.RequestLive then
  begin
    try
      QRepdet.first;
      while not QRepdet.Eof do
        begin
          //if QRepdet.FieldByName('GXLB').Isnull then
          //  begin
          //    showmessage('GXLB can not be empty.');
          //    abort;
          //  end;
          QRepdet.next;
        end;
      QRepdet.First;
      for i:=1 to QRepdet.RecordCount do
        begin
          case QRepdet.updatestatus of
            usinserted:
              begin
                if QRepdet.fieldbyname('SCBH').isnull then
                  begin
                    QRepdet.delete;
                  end
                    else
                      begin
                        QRepdet.edit;
                        QRepDet.FieldByName('ProNo').Value:=QRepMas.fieldbyname('ProNo').value;
                        //QRepDet.FieldByName('Qty').Value:=0;
                        QRepDet.FieldByName('UserID').Value:=main.Edit1.Text;
                        QRepdet.FieldByName('Userdate').Value:=Ndate;
                        QRepdet.FieldByName('YN').Value:='1';
                        Updet.apply(ukinsert);
                      end;
              end;
            usmodified:
              begin
                if QRepdet.fieldbyname('YN').value='0'then
                  begin
                    UpDet.apply(ukdelete);
                  end
                  else
                    begin
                      QRepdet.edit;
                      QRepDet.FieldByName('UserID').Value:=main.Edit1.Text;
                      QRepdet.fieldByName('Userdate').Value:=Ndate;
                      Updet.apply(ukmodify);
                    end;
              end;
          end;
          QRepdet.next;
      end;
      QRepdet.active:=false;
      QRepDet.RequestLive:=false;
      QRepdet.CachedUpdates:=false;
      QRepdet.active:=true;
      bd5.enabled:=false;
      bd6.enabled:=false;
      dbgrid2.columns[0].ButtonStyle:=cbsnone;
    except
      Messagedlg('[scbbs] Have wrong, can not save!',mtwarning,[mbyes],0);
    end;
  end;

{
if not QRepDet.requestLive then
  begin
    with Qscbbss do
      begin
        first;
        while not eof do
          begin
            if not Qscbbss.FieldByName('oldQty').isnull    then
              begin
                N:=Qscbbss.FieldByName('okQty').Value+Qscbbss.fieldbyname('Qty').value-Qscbbss.FieldByName('oldQty').Value ;
                if Qscbbss.FieldByName('zlQty').Value<N then
                  begin
                    showmessage('Your total production Qty > order Qty.');
                    abort;
                  end;
              end
              else
                begin
                  if Qscbbss.FieldByName('ZLQty').Value<(Qscbbss.FieldByName('okQty').Value+Qscbbss.FieldByName('Qty').Value )  then
                    begin
                      showmessage('Your total production Qty > order Qty.');
                      abort;
                    end;
                end;
            next;
          end;
      end;


    try
      a:=0;
      Qscbbss.first;
      for i:=1 to Qscbbss.RecordCount do
        begin
          if Qscbbss.updatestatus=usmodified then
            begin
              if not Qscbbss.FieldByName('oldQty').isnull    then
                begin
                  Upscbbss.apply(ukmodify);
                end
                else
                  begin
                    Qscbbss.edit;
                    Qscbbss.fieldbyname('ProNo').value:=QRepDet.fieldbyname('ProNo').value;
                    Qscbbss.fieldbyname('SCBH').value:=QRepDet.fieldbyname('SCBH').value;
                    Qscbbss.fieldbyname('GXLB').value:=QRepDet.fieldbyname('GXLB').value;
                    Qscbbss.fieldbyname('XXCC').value:=Qscbbss.fieldbyname('ZLXXCC').value;
                    Qscbbss.FieldByName('oldQty').Value:=Qscbbss.FieldByName('Qty').Value;
                    Upscbbss.apply(ukinsert);
                  end;
            end;
          if not Qscbbss.FieldByName('Qty').isnull then
            begin
              a:=a+Qscbbss.FieldByName('Qty').value;
            end;
          Qscbbss.next;
      end;
      Qscbbss.active:=false;
      Qscbbss.active:=true;
      with QRepDet do
        begin
          QRepDet.RequestLive:=true;
          QRepDet.CachedUpdates:=true;
          QRepDet.Edit;
          QRepDet.FieldByName('Qty').value:=a;
          UpDet.Apply(ukmodify);
          QRepDet.Active:=false;
          QRepDet.RequestLive:=false;
          QRepDet.CachedUpdates:=false;
          QRepDet.Active:=true;
        end;
      bd5.enabled:=false;
      bd6.enabled:=false;
      dbgrid2.columns[0].ButtonStyle:=cbsnone;
    except
      Messagedlg('[SCBBSS] Have wrong, can not save!',mtwarning,[mbyes],0);
    end;
  end;
}


end;

procedure TQCOntime.DBGrid3KeyPress(Sender: TObject; var Key: Char);
begin
if Key in ['0'..'9',#8,#46,#13]   then
  begin
    if  QRepMas.FieldByName('USERID').value=main.Edit1.Text then
      begin
        BD5.enabled:=true;
        BD6.enabled:=true;
      end
      else
        begin
          key:=#0;
        end;
  end;
end;

procedure TQCOntime.BDT1Click(Sender: TObject);
begin
QRepDet.first;  
end;

procedure TQCOntime.BDT2Click(Sender: TObject);
begin
QRepDet.prior;
end;

procedure TQCOntime.BDT3Click(Sender: TObject);
begin
QRepDet.next;
end;

procedure TQCOntime.BDT4Click(Sender: TObject);
begin
QRepDet.last;
end;

procedure TQCOntime.BD7Click(Sender: TObject);
begin
close;
end;

procedure TQCOntime.BD6Click(Sender: TObject);
begin
Qscbbss.Active:=false;
QRepDet.Active:=false;
QRepDet.RequestLive:=false;
QRepDet.CachedUpdates:=false;
QRepDet.Active:=true;
//Qscbbss.Active:=true;
BD2.enabled:=true;
BD3.enabled:=true;
BD4.enabled:=true;
BD5.enabled:=false;
BD6.enabled:=false;
end;

procedure TQCOntime.DBGrid3CellClick(Column: TColumn);
begin{
if Qscbbss.FieldByName('ZLQty').Value<(Qscbbss.FieldByName('okQty').Value)+Qscbbss.FieldByName('Qty').Value   then
  begin
    showmessage('Your total production Qty > order Qty');
  end;  }
end;

procedure TQCOntime.DBGrid2EditButtonClick(Sender: TObject);
begin

      QCOnTime_sczl :=TQCOnTime_sczl.create(self);
      QCOnTime_sczl.show;

end;

procedure TQCOntime.Panel7Enter(Sender: TObject);
begin
panel1.Visible:=true;
panel5.Visible:=false;
if QRepMas.FieldByName('YN').Value='0' then
  begin
    DBEdit1.font.color:=clred;
  end;
end;

procedure TQCOntime.DBGrid2Enter(Sender: TObject);
begin
panel1.Visible:=false;
panel5.Visible:=true;
end;

procedure TQCOntime.DBGrid3ColEnter(Sender: TObject);
begin 
panel1.Visible:=false;
panel5.Visible:=true;
end;

procedure TQCOntime.BT1Click(Sender: TObject);
begin

MC1.Visible:=true;
MC1.Date:=QRepMas.fieldbyname('SCDate').Value;
end;

procedure TQCOntime.MC1Click(Sender: TObject);
begin
if formatdatetime('MM',MC1.Date) = formatdatetime('MM',QRepMas.fieldbyname('SCDate').Value) then
  MC1.Visible:=false;
QRepMas.fieldbyname('SCDate').Value:=formatdatetime('yyyy/MM/dd',MC1.Date);
end;

procedure TQCOntime.BT3Click(Sender: TObject);
begin
    QCOnTime_Dep:=TQCOnTime_Dep.create(self);
    QCOnTime_Dep.show;
end;

procedure TQCOntime.QRepMasAfterOpen(DataSet: TDataSet);
begin
BB5.Enabled:=false;
BB6.Enabled:=false;
BD5.Enabled:=false;
BD6.Enabled:=false;
end;

procedure TQCOntime.QRepDetAfterOpen(DataSet: TDataSet);
begin
{if QRepMas.FieldByName('USERID').value<>main.Edit1.Text then
  begin
    BD2.Enabled:=false;
    BD3.Enabled:=false;
    BD4.Enabled:=false;
    DBGrid3.Enabled:=false;
  end
  else
    begin}
      BD2.Enabled:=true;
      BD3.Enabled:=true;
      BD4.Enabled:=true;  
      DBGrid3.Enabled:=true;
//    end;
QRepdet.cachedupdates:=false;
QRepdet.requestlive:=false; 
BD5.Enabled:=false;
BD6.Enabled:=false;
end;

procedure TQCOntime.FormDestroy(Sender: TObject);
begin
QCOntime:=nil;
end;

procedure TQCOntime.DBGrid2GetCellParams(Sender: TObject; Column: TColumnEh;
  AFont: TFont; var Background: TColor; State: TGridDrawState);
begin

if  QRepDet.fieldbyname('YN').Value='0' then
  begin
    dbgrid2.canvas.font.color:=clred;
   // dbgrid2.defaultdrawcolumncell(rect,datacol,column,state);
  end;
end;

procedure TQCOntime.DBGrid1GetCellParams(Sender: TObject; Column: TColumnEh;
  AFont: TFont; var Background: TColor; State: TGridDrawState);
begin

if  QRepMas.fieldbyname('YN').Value='0' then
  begin
    dbgrid1.canvas.font.color:=clred;
  end;
end;

procedure TQCOntime.DBGrid3GetCellParams(Sender: TObject; Column: TColumnEh;
  AFont: TFont; var Background: TColor; State: TGridDrawState);
begin

if not Qscbbss.FieldByName('oldQty').isnull then
  begin
    if Qscbbss.FieldByName('ZLQty').Value=(Qscbbss.FieldByName('okQty').Value)+Qscbbss.FieldByName('Qty').Value-Qscbbss.FieldByName('oldQty').Value   then
      begin
        dbgrid3.canvas.font.color:=clLime;
        //dbgrid3.defaultdrawcolumncell(rect,datacol,column,state);
      end;
    if Qscbbss.FieldByName('ZLQty').Value<(Qscbbss.FieldByName('okQty').Value)+Qscbbss.FieldByName('Qty').Value-Qscbbss.FieldByName('oldQty').Value   then
      begin
        dbgrid3.canvas.font.color:=clRed;
       // dbgrid3.defaultdrawcolumncell(rect,datacol,column,state);
      end;
  end
  else
    begin
      if Qscbbss.FieldByName('ZLQty').Value=(Qscbbss.FieldByName('okQty').Value)+Qscbbss.FieldByName('Qty').Value   then
        begin
          dbgrid3.canvas.font.color:=clLime;
         // dbgrid3.defaultdrawcolumncell(rect,datacol,column,state);
        end;
      if Qscbbss.FieldByName('ZLQty').Value<(Qscbbss.FieldByName('okQty').Value)+Qscbbss.FieldByName('Qty').Value   then
        begin
          dbgrid3.canvas.font.color:=clRed;
         // dbgrid3.defaultdrawcolumncell(rect,datacol,column,state);
        end;
    end;
end;

procedure TQCOntime.BT2Click(Sender: TObject);
begin
QCOnTime_XH:=TQCOnTime_XH.create(self);
QCOnTime_XH.show;
end;

procedure TQCOntime.QscbbssNewRecord(DataSet: TDataSet);
begin
abort;
end;

procedure TQCOntime.QscbbssAfterInsert(DataSet: TDataSet);
begin
abort;
end;

end.


