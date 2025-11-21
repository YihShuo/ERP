unit EmbroiderRep1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBTables, DB, ComCtrls, StdCtrls, Mask, DBCtrls, Grids, DBGrids,
  Buttons, ExtCtrls;

type
  TEmbroiderRep = class(TForm)
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
    Panel2: TPanel;
    Panel3: TPanel;
    Label1: TLabel;
    Label6: TLabel;
    DTP1: TDateTimePicker;
    ListBox1: TDBLookupComboBox;
    Button1: TButton;
    TS2: TTabSheet;
    Panel6: TPanel;
    DBGrid2: TDBGrid;
    Panel7: TPanel;
    Label2: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    DBEdit1: TDBEdit;
    DTP2: TBitBtn;
    DBEdit3: TDBEdit;
    BitBtn1: TBitBtn;
    DBEdit4: TDBEdit;
    MC1: TMonthCalendar;
    Panel4: TPanel;
    DBGrid3: TDBGrid;
    DS1: TDataSource;
    QRepMas: TQuery;
    UpMas: TUpdateSQL;
    DS2: TDataSource;
    QRepDet: TQuery;
    QRepDetProNo: TStringField;
    QRepDetSCBH: TStringField;
    QRepDetQty: TFloatField;
    QRepDetUSERID: TStringField;
    QRepDetUSERDATE: TDateTimeField;
    QRepDetYN: TStringField;
    UpDet: TUpdateSQL;
    Qscbbss: TQuery;
    DS3: TDataSource;
    Upscbbss: TUpdateSQL;
    QRepDetDDCC: TStringField;
    QRepDetXXCC: TStringField;
    TDep: TTable;
    DSDep: TDataSource;
    QTemp: TQuery;
    TDataNo: TTable;
    QRepMasProNo: TStringField;
    QRepMasDXDate: TDateTimeField;
    QRepMasDepNo: TStringField;
    QRepMasUSERDATE: TDateTimeField;
    QRepMasUSERID: TStringField;
    QRepMasYN: TStringField;
    QRepMasDepName: TStringField;
    QRepDetBWBH: TStringField;
    QscbbssProNo: TStringField;
    QscbbssSCBH: TStringField;
    QscbbssBWBH: TStringField;
    QscbbssXXCC: TStringField;
    QscbbssQty: TCurrencyField;
    QscbbssoldQty: TCurrencyField;
    QscbbsszlXXCC: TStringField;
    QscbbsszlQty: TFloatField;
    QscbbssokQty: TCurrencyField;
    scbbssold: TQuery;
    DTP3: TDateTimePicker;
    Label3: TLabel;
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
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1EditButtonClick(Sender: TObject);
    procedure DBGrid3DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure BD4Click(Sender: TObject);
    procedure BD2Click(Sender: TObject);
    procedure DBGrid3Enter(Sender: TObject);
    procedure QscbbssAfterOpen(DataSet: TDataSet);
    procedure BD3Click(Sender: TObject);
    procedure BD5Click(Sender: TObject);
    procedure DBGrid3KeyPress(Sender: TObject; var Key: Char);
    procedure BDT1Click(Sender: TObject);
    procedure BDT2Click(Sender: TObject);
    procedure BDT3Click(Sender: TObject);
    procedure BDT4Click(Sender: TObject);
    procedure BD7Click(Sender: TObject);
    procedure BD6Click(Sender: TObject);
    procedure DBGrid2EditButtonClick(Sender: TObject);
    procedure DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure Panel7Enter(Sender: TObject);
    procedure DBGrid2Enter(Sender: TObject);
    procedure DBGrid3ColEnter(Sender: TObject);
    procedure DBEdit1Enter(Sender: TObject);
    procedure DTP2Click(Sender: TObject);
    procedure MC1Click(Sender: TObject);
    procedure DBEdit3Enter(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure QRepMasAfterOpen(DataSet: TDataSet);
    procedure QRepDetAfterOpen(DataSet: TDataSet);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  EmbroiderRep: TEmbroiderRep;

implementation

uses DM3, main1, EmbroiderRep_Dep1, EmbroiderRep_sczl1;

{$R *.dfm}

procedure TEmbroiderRep.FormClose(Sender: TObject;
  var Action: TCloseAction);
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

procedure TEmbroiderRep.BB1Click(Sender: TObject);
begin
Panel2.Visible:=true;
panel5.Visible:=false;
PC1.ActivePage:=TS1;
TDep.Active:=true;
end;

procedure TEmbroiderRep.FormCreate(Sender: TObject);
var i:integer;
begin
PC1.activepage:=TS1;
panel5.Visible:=false;
DTP1.date:=Date-2;
DTP3.date:=date;
end;

procedure TEmbroiderRep.Button1Click(Sender: TObject);
begin
with QRepMas do
  begin
    active:=true;
    sql.clear;
    sql.add('Select DXBB.*,BDepartment.DepName from DXBB  ');
    sql.add('left join Bdepartment  on DXBB.DepNo=BDepartment.ID');
    sql.add('where convert(smalldatetime,convert(varchar,DXBB.DXDate)) between');
    sql.add(''''+formatdatetime('yyyy/MM/dd',DTP1.date)+'''');    
    sql.add(' and '+''''+formatdatetime('yyyy/MM/dd',DTP3.date)+'''');
    sql.add('and DXBB.DepNo like');
    sql.add(''''+listbox1.Text+'%'+'''');
    sql.add('order by DXBB.ProNo');
    active:=true;
  end;
    Panel2.Visible:=false;
    TDep.active:=false;
    QRepDet.Active:=true;
    Qscbbss.Active:=true;
    scbbssold.active:=true;
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

procedure TEmbroiderRep.BB2Click(Sender: TObject);
begin
with QRepMas do
  begin
    cachedupdates:=true;
    requestlive:=true;
    Insert;
    QRepMas.FieldByName('DXDate').Value:=date;
  end;
bb5.enabled:=true;
bb6.enabled:=true;
dbgrid1.columns[4].ButtonStyle:=cbsEllipsis;
PC1.activepage:=TS2;
end;

procedure TEmbroiderRep.BB3Click(Sender: TObject);
begin
if QRepMas.FieldByName('DXDate').value<Date-1 then
  begin
    showmessage('You can not delete the production report 2 days ago.');
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
      end
      else
        begin
          messagedlg('This Record have Deatail data,can not delete!',mtwarning,[mbYes],0);
        end;
  end;
end;

procedure TEmbroiderRep.BB4Click(Sender: TObject);
begin
if QRepMas.FieldByName('DXDate').value<Date-2 then
  begin
    showmessage('You can not modify the production report 2 days ago.');
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
end;

procedure TEmbroiderRep.BB5Click(Sender: TObject);
var i:integer;
var a:string;
begin
TDataNo.Active:=true;
a:=inttostr(TdataNo.fieldbyname('Meno').value+1);
while length(a)<10 do
  begin
    a:='0'+a;
  end;
TdataNo.edit;
TdataNo.fieldbyname('Meno').value:=strtoint(a);
TdataNo.Post;
try
    QRepMas.first;
    for i:=1 to QRepMas.RecordCount do
      begin
        case QRepMas.updatestatus of
          usinserted:
            begin
              if QRepMas.fieldbyname('DXDate').isnull then
                begin
                  QRepMas.delete;
                end
                 else
                   begin
                     if QRepMas.FieldByName('DXDate').value<Date-2 then
                       begin
                         showmessage('You can not insert the production report 2 days ago.');
                         abort;
                       end;
                     QRepMas.edit;
                     QRepMas.FieldByName('ProNo').value:=a;
                     QRepMas.FieldByName('UserID').asstring:=main.edit1.text;
                     QRepMas.FieldByName('Userdate').Value:=date;
                     QRepMas.FieldByName('YN').Value:='1';
                     UpMas.apply(ukinsert);
                   end;
            end;
          usmodified:
             begin
              if QRepMas.fieldbyname('YN').value='0'then
                begin
                  UpMas.apply(ukdelete);
                end
                else
                  begin
                    if DTP1.date<Date-14 then
                      begin
                        showmessage('You can not modify the production report 2 days ago.');
                        abort;
                      end;
                    QRepMas.edit;
                    QRepMas.FieldByName('UserID').Value:=main.edit1.text;
                    QRepMas.FieldByName('Userdate').Value:=date;
                    UpMas.apply(ukmodify);
                  end;
             end;
        end;
        QRepMas.next;
      end;
    QRepMas.active:=false;
    QRepMas.cachedupdates:=false;
    QRepMas.requestlive:=false;
    QRepMas.active:=true;
    bb5.enabled:=false;
    bb6.enabled:=false;
except
    Messagedlg('Have wrong, can not save!',mtwarning,[mbyes],0);
end;
dbgrid1.columns[0].ButtonStyle:=cbsnone;

end;

procedure TEmbroiderRep.BB6Click(Sender: TObject);
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

dbgrid1.columns[0].ButtonStyle:=cbsnone;
end;

procedure TEmbroiderRep.BB7Click(Sender: TObject);
begin
close;
end;

procedure TEmbroiderRep.BBT1Click(Sender: TObject);
begin
QrepMas.First;
end;

procedure TEmbroiderRep.BBT2Click(Sender: TObject);
begin
QrepMas.prior;
end;

procedure TEmbroiderRep.BBT3Click(Sender: TObject);
begin
QrepMas.next;
end;

procedure TEmbroiderRep.BBT4Click(Sender: TObject);
begin
QrepMas.last;
end;

procedure TEmbroiderRep.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
if  QRepMas.fieldbyname('YN').Value='0' then
  begin
    dbgrid1.canvas.font.color:=clred;
    dbgrid1.defaultdrawcolumncell(rect,datacol,column,state);
  end;
end;

procedure TEmbroiderRep.PC1Change(Sender: TObject);
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

procedure TEmbroiderRep.DBGrid1DblClick(Sender: TObject);
begin
if QRepMas.Active then
  begin
    PC1.ActivePage:=TS2;
    PC1Change(nil);
  end;
end;

procedure TEmbroiderRep.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
  DBGrid1DblClick(nil);
end;

procedure TEmbroiderRep.DBGrid1EditButtonClick(Sender: TObject);
begin
if dbgrid1.selectedfield.fieldname='DepNo' then
  begin
    Bitbtn1click(nil)
  end;
end;

procedure TEmbroiderRep.DBGrid3DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
if not Qscbbss.FieldByName('oldQty').isnull then
  begin
    if Qscbbss.FieldByName('ZLQty').Value=(Qscbbss.FieldByName('okQty').Value)+Qscbbss.FieldByName('Qty').Value-Qscbbss.FieldByName('oldQty').Value   then
      begin
        dbgrid3.canvas.font.color:=clLime;
        dbgrid3.defaultdrawcolumncell(rect,datacol,column,state);
      end;
    if Qscbbss.FieldByName('ZLQty').Value<(Qscbbss.FieldByName('okQty').Value)+Qscbbss.FieldByName('Qty').Value-Qscbbss.FieldByName('oldQty').Value   then
      begin
        dbgrid3.canvas.font.color:=clRed;
        dbgrid3.defaultdrawcolumncell(rect,datacol,column,state);
      end;
  end
  else
    begin 
      if Qscbbss.FieldByName('ZLQty').Value=(Qscbbss.FieldByName('okQty').Value)+Qscbbss.FieldByName('Qty').Value   then
        begin
          dbgrid3.canvas.font.color:=clLime;
          dbgrid3.defaultdrawcolumncell(rect,datacol,column,state);
        end;
      if Qscbbss.FieldByName('ZLQty').Value<(Qscbbss.FieldByName('okQty').Value)+Qscbbss.FieldByName('Qty').Value   then
        begin
          dbgrid3.canvas.font.color:=clRed;
          dbgrid3.defaultdrawcolumncell(rect,datacol,column,state);
        end;
    end;
end;

procedure TEmbroiderRep.BD4Click(Sender: TObject);
begin
if QRepMas.FieldByName('DXDate').value<Date-2 then
  begin
    showmessage('You can not modify the production report 2 days ago.');
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

procedure TEmbroiderRep.BD2Click(Sender: TObject);
begin
if QRepMas.FieldByName('DXDate').value<Date-1 then
  begin
    showmessage('You can not modify the production report 2 days ago.');
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

procedure TEmbroiderRep.DBGrid3Enter(Sender: TObject);
begin
if QRepDet.RequestLive then
  begin
    showmessage('Pls seve production order first.');
    BD5.SetFocus;
  end;
end;

procedure TEmbroiderRep.QscbbssAfterOpen(DataSet: TDataSet);
begin
Qscbbss.RequestLive:=true;
Qscbbss.CachedUpdates:=true;
end;

procedure TEmbroiderRep.BD3Click(Sender: TObject);
begin
if QRepMas.FieldByName('DXDate').value<Date-2 then
  begin
    showmessage('You can not modify the production report 2 days ago.');
    abort;
  end;
  
if messagedlg('Do you really want to delete this record?',mtconfirmation,[mbYes,Mbno],0)=mrYes then
  begin
    if (messagedlg('There size detail will be delete too! Really?',mtconfirmation,[mbYes,Mbno],0)=mrYes) and (Qscbbss.RecordCount>0) then
      begin
      try
        Qtemp.Active:=false;
        Qtemp.SQL.Clear;
        Qtemp.sql.add('delete DXBBSS ');
        Qtemp.SQL.add('where ProNo=');
        Qtemp.SQL.add(''''+QRepDet.fieldbyname('ProNo').Value+'''') ;
        Qtemp.SQL.add('and SCBH=');
        Qtemp.SQL.add(''''+QRepDet.fieldbyname('SCBH').Value+'''');
        Qtemp.SQL.add('and BWBH=');
        Qtemp.SQL.add(''''+ QRepDet.fieldbyname('GXLB').Value+'''');
        QTemp.ExecSQL;
        QTemp.Active:=false;
        with QRepDet do
          begin
            cachedupdates:=true;
            requestlive:=true;
            edit;
            fieldbyname('YN').Value:='0';
          end;
       bd5.enabled:=true;
       bd6.enabled:=true;
       Qscbbss.active:=false;
       Qscbbss.active:=true;
      except
        messagedlg('Wrong.',mtwarning,[mbyes],0);
      end;
      end;
  end;
end;

procedure TEmbroiderRep.BD5Click(Sender: TObject);
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
          if QRepdet.FieldByName('BWBH').Isnull then
            begin
              showmessage('BWBH can not be empty.');
              abort;
            end;
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
                        QRepDet.FieldByName('Qty').Value:=0;
                        QRepDet.FieldByName('UserID').Value:=main.Edit1.Text;
                        QRepdet.FieldByName('Userdate').Value:=date;
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
                      QRepdet.fieldByName('Userdate').Value:=date;
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
      Messagedlg('Have wrong, can not save!',mtwarning,[mbyes],0);
    end;
  end;

if not QRepDet.requestLive then
  begin
    try
      a:=0;
      Qscbbss.first;
      for i:=1 to Qscbbss.RecordCount do
        begin
          if Qscbbss.updatestatus=usmodified then
            begin
              if not Qscbbss.FieldByName('oldQty').isnull    then
                begin
                  N:=Qscbbss.FieldByName('okQty').Value+Qscbbss.fieldbyname('Qty').value-Qscbbss.FieldByName('oldQty').Value ;
                  if Qscbbss.FieldByName('zlQty').Value>=N then
                   begin
                     Upscbbss.apply(ukmodify);
                   end
                   else
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
                      Qscbbss.edit;
                      Qscbbss.fieldbyname('ProNo').value:=QRepDet.fieldbyname('ProNo').value;
                      Qscbbss.fieldbyname('SCBH').value:=QRepDet.fieldbyname('SCBH').value;
                      Qscbbss.fieldbyname('BWBH').value:=QRepDet.fieldbyname('BWBH').value;
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
      Messagedlg('Have wrong, can not save!',mtwarning,[mbyes],0);
    end;
  end;

end;

procedure TEmbroiderRep.DBGrid3KeyPress(Sender: TObject; var Key: Char);
begin
if Key in ['0'..'9',#8,#46,#13]   then
  begin
    BD5.enabled:=true;
    BD6.enabled:=true;
  end;
end;

procedure TEmbroiderRep.BDT1Click(Sender: TObject);
begin
QRepDet.first;
end;

procedure TEmbroiderRep.BDT2Click(Sender: TObject);
begin
QRepDet.prior;
end;

procedure TEmbroiderRep.BDT3Click(Sender: TObject);
begin
QRepDet.next;
end;

procedure TEmbroiderRep.BDT4Click(Sender: TObject);
begin
QRepDet.last;
end;

procedure TEmbroiderRep.BD7Click(Sender: TObject);
begin
close;
end;

procedure TEmbroiderRep.BD6Click(Sender: TObject);
begin
Qscbbss.Active:=false;
QRepDet.Active:=false;
QRepDet.RequestLive:=false;
QRepDet.CachedUpdates:=false;
QRepDet.Active:=true;
Qscbbss.Active:=true;
BD2.enabled:=true;
BD3.enabled:=true;  
BD4.enabled:=true;
BD5.enabled:=false;
BD6.enabled:=false;
end;

procedure TEmbroiderRep.DBGrid2EditButtonClick(Sender: TObject);
begin
if scbbssold.recordcount>0 then
  begin
    showmessage('Have size detail, can not delete!.');
    abort;
  end
  else
    begin
      EmbroiderRep_sczl :=TEmbroiderRep_sczl.create(self);
      EmbroiderRep_sczl.show;
    end;
end;

procedure TEmbroiderRep.DBGrid2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
if  QRepDet.fieldbyname('YN').Value='0' then
  begin
    dbgrid2.canvas.font.color:=clred;
    dbgrid2.defaultdrawcolumncell(rect,datacol,column,state);
  end;


end;

procedure TEmbroiderRep.Panel7Enter(Sender: TObject);
begin
panel1.Visible:=true;
panel5.Visible:=false;
if QRepMas.FieldByName('YN').Value='0' then
  begin
    DBEdit1.font.color:=clred;
  end;
end;

procedure TEmbroiderRep.DBGrid2Enter(Sender: TObject);
begin
panel1.Visible:=false;
panel5.Visible:=true;
end;

procedure TEmbroiderRep.DBGrid3ColEnter(Sender: TObject);
begin
panel1.Visible:=false;
panel5.Visible:=true;
end;

procedure TEmbroiderRep.DBEdit1Enter(Sender: TObject);
begin
if QRepMas.RequestLive then
  begin
    DTP2.visible:=true;
  end
  else
    begin
      DTP2.visible:=false;
    end;
end;

procedure TEmbroiderRep.DTP2Click(Sender: TObject);
begin
MC1.Visible:=true;
MC1.Date:=QRepMas.fieldbyname('DXDate').Value;
end;

procedure TEmbroiderRep.MC1Click(Sender: TObject);
begin
QRepMas.fieldbyname('DXDate').Value:=MC1.Date;
MC1.Visible:=false;
end;

procedure TEmbroiderRep.DBEdit3Enter(Sender: TObject);
begin
if QRepMas.RequestLive then
  begin
    Bitbtn1.Visible:=true;
  end
  else
    begin
      Bitbtn1.Visible:=false;
    end;
end;

procedure TEmbroiderRep.BitBtn1Click(Sender: TObject);
begin
    EmbroiderRep_Dep:=TEmbroiderRep_Dep.create(self);
    EmbroiderRep_Dep.show;
end;

procedure TEmbroiderRep.QRepMasAfterOpen(DataSet: TDataSet);
begin
BB5.Enabled:=false;
BB6.Enabled:=false;
BD5.Enabled:=false;
BD6.Enabled:=false;
end;

procedure TEmbroiderRep.QRepDetAfterOpen(DataSet: TDataSet);
begin
BD5.Enabled:=false;
BD6.Enabled:=false;
end;

procedure TEmbroiderRep.FormDestroy(Sender: TObject);
begin
EmbroiderRep:=nil;
end;

end.
