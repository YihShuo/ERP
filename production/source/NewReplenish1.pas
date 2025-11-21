unit NewReplenish1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, DBCtrls, ComCtrls, Grids, DBGrids, StdCtrls,
  Buttons, ExtCtrls, Mask, Menus;
  {
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBTables, Db, DBCtrls, Grids, DBGrids, StdCtrls, ComCtrls, Buttons,
  ExtCtrls, Menus;}

type
  TNewReplenish = class(TForm)
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
    DTP1: TDateTimePicker;
    Button1: TButton;
    TS2: TTabSheet;
    DBGrid2: TDBGrid;
    Panel4: TPanel;
    DBGrid3: TDBGrid;
    DS1: TDataSource;
    QMas: TQuery;
    UpMas: TUpdateSQL;
    UpDet: TUpdateSQL;
    QDet: TQuery;
    DS2: TDataSource;
    Qsize: TQuery;
    DS3: TDataSource;
    Upsize: TUpdateSQL;
    QMasZLBH: TStringField;
    QMasGXLB: TStringField;
    QMasSCBH: TStringField;
    QMasUSERID: TStringField;
    QMasUSERDATE: TDateTimeField;
    QMasYN: TStringField;
    QMasETD: TDateTimeField;
    Label2: TLabel;
    Label3: TLabel;
    DTP2: TDateTimePicker;
    Label6: TLabel;
    CBX1: TComboBox;
    Label7: TLabel;
    CBX2: TComboBox;
    QMasXieXing: TStringField;
    QMasSheHao: TStringField;
    QMasArticle: TStringField;
    QMasXieMing: TStringField;
    QDetSCBH: TStringField;
    QDetBWBH: TStringField;
    QDetUSERID: TStringField;
    QDetUSERDATE: TDateTimeField;
    QDetYN: TStringField;
    QDetYWSM: TStringField;
    QDetCLDH: TStringField;
    QDetYWPM: TStringField;
    QDetDWBH: TStringField;
    QDetLYCC: TStringField;
    QDetBWBHBOM: TStringField;
    QDetCLSL: TCurrencyField;
    QDetCLSLBOM: TFloatField;
    QDetBLSB: TStringField;
    Qdel: TQuery;
    Panel6: TPanel;
    Label8: TLabel;
    DBEdit1: TDBEdit;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    Label13: TLabel;
    DBEdit6: TDBEdit;
    Label14: TLabel;
    DBEdit7: TDBEdit;
    Label15: TLabel;
    Label16: TLabel;
    DBEdit9: TDBEdit;
    CBX3: TDBComboBox;
    QDetoldBLSB: TStringField;
    CBX4: TDBComboBox;
    QsizeSCBH: TStringField;
    QsizeXXCC: TStringField;
    QsizeQty: TFloatField;
    QsizeUSERID: TStringField;
    QsizeUSERDATE: TDateTimeField;
    QsizeYN: TStringField;
    QsizezlXXCC: TStringField;
    QsizezlQty: TFloatField;
    QsizeoldQty: TFloatField;
    QMasQty: TFloatField;
    QMasDDLB: TStringField;
    QsizeMemo: TStringField;
    QDetDFL: TStringField;
    QDetXFL: TStringField;
    PopupMenu1: TPopupMenu;
    PopupMenu2: TPopupMenu;
    UPPER1: TMenuItem;
    BOTTOM1: TMenuItem;
    PAIRS1: TMenuItem;
    QMasZLDW: TStringField;
    C1: TMenuItem;
    S1: TMenuItem;
    O1: TMenuItem;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BB7Click(Sender: TObject);
    procedure BD7Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BB1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BB2Click(Sender: TObject);
    procedure BB3Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure BBT1Click(Sender: TObject);
    procedure BBT2Click(Sender: TObject);
    procedure BBT3Click(Sender: TObject);
    procedure BBT4Click(Sender: TObject);
    procedure Panel6Enter(Sender: TObject);
    procedure DBGrid3ColEnter(Sender: TObject);
    procedure DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure BD4Click(Sender: TObject);
    procedure PC1Change(Sender: TObject);
    procedure BD5Click(Sender: TObject);
    procedure DBGrid3Enter(Sender: TObject);
    procedure QsizeAfterOpen(DataSet: TDataSet);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure BD6Click(Sender: TObject);
    procedure BDT1Click(Sender: TObject);
    procedure BDT2Click(Sender: TObject);
    procedure BDT3Click(Sender: TObject);
    procedure BDT4Click(Sender: TObject);
    procedure DBGrid3KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid2Enter(Sender: TObject);
    procedure QMasAfterInsert(DataSet: TDataSet);
    procedure DBGrid3EditButtonClick(Sender: TObject);
    procedure DBGrid2ColExit(Sender: TObject);
    procedure UPPER1Click(Sender: TObject);
    procedure BOTTOM1Click(Sender: TObject);
    procedure PAIRS1Click(Sender: TObject);
    procedure C1Click(Sender: TObject);
    procedure S1Click(Sender: TObject);
    procedure O1Click(Sender: TObject);
    procedure QDetAfterOpen(DataSet: TDataSet);
    procedure BDT5Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  NewReplenish: TNewReplenish;

implementation

uses Replenishinsert1, main1, NewreplenishLR1,  NewRep_Print1;

{$R *.dfm}

procedure TNewReplenish.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if BB5.enabled  then
  begin
    messagedlg('You have to save sata first.',mtwarning,[mbyes],0);
    action:=canone;
  end
  else
    begin
      if BD5.enabled then
        begin
          messagedlg('You have to save data first.',mtwarning,[mbyes],0);
          action:=canone;
        end
          else
            begin
              action:=Cafree;
            end;
    end;
end;

procedure TNewReplenish.BB7Click(Sender: TObject);
begin
close;
end;

procedure TNewReplenish.BD7Click(Sender: TObject);
begin
close;
end;

procedure TNewReplenish.Button1Click(Sender: TObject);
begin
with QMas do
  begin
    active:=true;
    sql.clear;
    sql.add('Select SCZL.*,XXZL.XieXing, XXZL.SheHao,XXZL.Article, XXZL.XieMing,DDZL.ShipDate as ETD from SCZL ');
    sql.add('left join ZLZL on ZLZL.ZLBH=SCZL.ZLBH ');
    sql.add('left join DDZL on DDZL.DDBH=ZLZL.DDBH');
    sql.add('left join XXZL on XXZL.XieXing=DDZL.XieXing and XXZL.SheHao=DDZL.SheHao');
    sql.add('where SCZL.ZLDW<>'+''''+'B'+''''+' and SCZL.DDLB<>'+''''+'Part'+''''+ 'and SCZL.USERDATE>=');
    sql.add(''''+formatdatetime('yyyy/MM/dd',DTP1.date)+'''');
    sql.add('and SCZL.USERDATE<=');
    sql.add(''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
    if CBX1.itemindex>0 then
      begin
        sql.add('and SCZL.ZLDW like');
        sql.add(''''+CBX1.text+'%'+'''');
      end;
    if CBX2.itemindex>0 then
      begin
        sql.add('and SCZL.DDLB =');
        sql.add(''''+CBX2.Text+'''');
      end;
    sql.add('order by SCZL.ZLBH,  SCZL.SCBH');
    active:=true;
  end;
    Panel2.Visible:=false;
    QDet.Active:=true;
    QSize.active:=true;
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
    Bd4.Enabled:=true;
    Bd7.Enabled:=true;
    BDT1.Enabled:=true;
    BDT2.Enabled:=true;
    BDT3.Enabled:=true;
    BDT4.Enabled:=true;
    BDT5.Enabled:=true;
    BDT6.Enabled:=true;
end;

procedure TNewReplenish.BB1Click(Sender: TObject);
begin
Panel2.Visible:=true;
panel5.Visible:=false;
PC1.ActivePage:=TS1;
end;

procedure TNewReplenish.FormCreate(Sender: TObject);
begin
with QDel do
  begin
    active:=false;
    sql.Clear;
    sql.add('select DepName from BDepartment where ProYN=1 order by ID ')  ;
    active:=true;
    while not eof do
      begin
        CBX1.Items.Add(fieldbyname('DepName').AsString);
        CBX3.Items.Add(fieldbyname('DepName').AsString);
        next;
      end;
    active:=false;
    sql.Clear;
  end;

PC1.activepage:=TS1;
panel5.Visible:=false;
DTP1.date:=Date-7;
DTP2.date:=Date;

Qsize.Active:=false;
Qdet.Active:=false;
QMas.Active:=false;
end;

procedure TNewReplenish.BB2Click(Sender: TObject);
begin
with QMas do
  begin
    requestlive:=true;
    cachedupdates:=true;
  end;

bb5.enabled:=true;
bb6.enabled:=true;
Replenishinsert:=TReplenishinsert.create(self);
Replenishinsert.show; 
end;

procedure TNewReplenish.BB3Click(Sender: TObject);
begin
if messagedlg('Do you really want to delete this record?',mtconfirmation,[mbYes,Mbno],0)=mrYes then
  begin
    with QDel do
      begin
        QDel.active:=false;
        QDel.sql.Clear;
        QDel.sql.add('select SCBH,GXLB from SCZL where SCBH=:SCBH');
        QDel.active:=true;
        if recordcount>1 then
          begin
            QMas.RequestLive:=true;
            QMas.CachedUpdates:=true;
            Qmas.Edit;
            Qmas.FieldByName('YN').value:='0';
            QDel.active:=false;
          end
          else
          begin
            QDel.active:=false;
            QDel.sql.clear;
            QDel.sql.add('select BWSB from SCBLS where SCBH=:SCBH') ;
            QDel.active:=true;
            if QDel.recordcount>0 then
              begin
                showmessage('Pls delete part detail first.');
                abort;
              end;

            
            QDel.active:=false;
            QDel.sql.clear;
            QDel.sql.add('select XXCC from SCZLS where SCBH=:SCBH') ;
            QDel.active:=true;
            if QDel.recordcount>0 then
              begin
                showmessage('Pls delete size detail first.');
                abort;
              end;
          end;
      end;
  end;
end;

procedure TNewReplenish.BB4Click(Sender: TObject);
begin
PC1.activepage:=TS2;
 with QMas do
  begin
    cachedupdates:=true;
    requestlive:=true;
    edit;
  end;
bb5.enabled:=true;
bb6.enabled:=true;
dbgrid1.columns[1].ButtonStyle:=cbsEllipsis;
end;

procedure TNewReplenish.BB5Click(Sender: TObject);
var i:integer;
var a:string;
begin
try
    QMas.first;
    for i:=1 to QMas.RecordCount do
      begin
        case QMas.updatestatus of
          usinserted:
            begin
              if QMas.fieldbyname('SCBH').isnull then
                begin
                  QMas.delete;
                end
                 else
                   begin
                     QMas.edit;
                     QMas.FieldByName('UserID').Value:=main.edit1.text;
                     QMas.FieldByName('Userdate').Value:=date;
                     QMas.FieldByName('Qty').Value:=0;
                     QMas.FieldByName('YN').Value:='1';
                     UpMas.apply(ukinsert);
                   end;
            end;
          usmodified:
             begin
              if QMas.fieldbyname('YN').value='0'then
                begin
                  UpMas.apply(ukdelete);
                end
                else
                  begin
                    QMas.edit;
                    QMas.FieldByName('UserID').Value:=main.edit1.text;
                    QMas.FieldByName('Userdate').Value:=date;
                    UpMas.apply(ukmodify);
                  end;
             end;
        end;
        QMas.next;
      end;                   
    QMas.active:=false;
    QMas.cachedupdates:=false;
    QMas.requestlive:=false;
    QMas.Active:=true;
    bb5.enabled:=false;
    bb6.enabled:=false;
except
    Messagedlg('Have wrong, can not save!',mtwarning,[mbyes],0);
end;
end;

procedure TNewReplenish.BB6Click(Sender: TObject);
begin
with QMas do
  begin
    active:=false;
    cachedupdates:=false;
    requestlive:=false;
    active:=true;
  end;
bb5.enabled:=false;
bb6.enabled:=false;
end;

procedure TNewReplenish.BBT1Click(Sender: TObject);
begin
QMas.First;
end;

procedure TNewReplenish.BBT2Click(Sender: TObject);
begin
QMas.prior;
end;

procedure TNewReplenish.BBT3Click(Sender: TObject);
begin
QMas.next;
end;

procedure TNewReplenish.BBT4Click(Sender: TObject);
begin
QMas.last;
end;

procedure TNewReplenish.Panel6Enter(Sender: TObject);
begin
panel1.Visible:=true;
panel5.Visible:=false;
end;

procedure TNewReplenish.DBGrid3ColEnter(Sender: TObject);
begin
panel1.Visible:=false;
panel5.Visible:=true;
end;

procedure TNewReplenish.DBGrid2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
if QDet.cachedupdates then
  begin
    CBX4.BringToFront;
    if (gdfocused in state) then
      begin
        if (dbgrid2.SelectedField.fieldname=CBX4.datafield) then
          begin
            CBX4.left:=rect.left+dbgrid1.left;
            CBX4.top:=rect.top+dbgrid1.Top;
            CBX4.width:=rect.right-rect.left+10;
            CBX4.height:=rect.bottom-rect.top;
            CBX4.visible:=true;
          end;
      end;
  end;
if QDet.FieldByName('BLSB').value='Y' then
  begin
     dbgrid2.canvas.font.color:=clRed;
     dbgrid2.defaultdrawcolumncell(rect,datacol,column,state);
  end;
end;

procedure TNewReplenish.BD4Click(Sender: TObject);
begin
QDet.RequestLive:=true;
QDet.CachedUpdates:=true;
BD5.Enabled:=true;
BD6.Enabled:=true;
DBGrid2.PopupMenu:= PopupMenu1;
end;

procedure TNewReplenish.PC1Change(Sender: TObject);
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

procedure TNewReplenish.BD5Click(Sender: TObject);
var i:integer;
a:double;
bm:Tbookmark;
begin
bm:=QMas.getbookmark;
try
if    QDet.RequestLive then
  begin
    with QDet do
      begin
        first;
        while not eof do
          begin
            if fieldbyname('oldBLSB').isnull then
              begin
                if fieldbyname('BLSB').value='Y' then
                  begin
                    edit;
                    QDet.fieldbyname('SCBH').Value:=QMas.fieldbyname('SCBH').value;
                    QDet.fieldbyname('BWBH').Value:=QDet.fieldbyname('BWBHBOM').Value;
                    QDet.fieldbyname('CLSL').Value:= QDet.fieldbyname('CLSLBOM').Value;
                    QDet.fieldbyname('USERID').Value:= main.Edit1.Text;
                    QDet.fieldbyname('USERDATE').Value:=date;
                    QDet.fieldbyname('YN').Value:= '1';
                    UpDet.Apply(ukinsert);
                  end;
              end
              else
                begin
                  if fieldbyname('BLSB').value='N' then
                    begin
                     UpDet.Apply(ukdelete);
                    end;
                end;
            next;
          end;
      end;
    CBX4.Visible:=false;
    QDet.CachedUpdates:=false;
    QDet.RequestLive:=false;
    BD5.Enabled:=false;
    BD6.Enabled:=false;
    DBGrid2.PopupMenu:= PopupMenu2;
    CBX4.Visible:=false;
  end;
except
  showmessage('Have wrong.');
end;

if QSize.RequestLive then
  begin
     try
      a:=0;
      QSize.first;
      for i:=1 to QSize.RecordCount do
        begin
          if QSize.updatestatus=usmodified then
            begin
              if not QSize.FieldByName('oldQty').isnull    then
                begin
                  if not QSize.FieldByName('Qty').isnull  then
                    begin
                      if QSize.FieldByName('zlQty').Value>=QSize.FieldByName('Qty').Value then
                        begin
                          QSize.edit;
                          QSize.FieldByName('USERID').Value:=main.Edit1.Text;
                          QSize.FieldByName('USERDATE').Value:=date;
                          Upsize.apply(ukmodify);
                        end
                        else
                          begin
                            showmessage('Your total production Qty > order Qty.');
                            abort;
                          end;
                    end
                    else
                      begin
                        UpSize.Apply(ukdelete);
                      end;
                end
                  else
                    begin
                      if not Qsize.FieldByName('Qty').isnull   then
                        begin
                          if  QSize.FieldByName('zlQty').Value>=QSize.FieldByName('Qty').Value then
                            begin
                               Qsize.edit;
                               QSize.FieldByName('SCBH').Value:=QMas.fieldbyname('SCBH').Value;
                               QSize.FieldByName('XXCC').Value :=QSize.FieldByName('zlXXCC').Value ;
                               QSize.FieldByName('USERID').Value:=main.Edit1.Text;
                               QSize.FieldByName('USERDATE').Value:=date;
                               QSize.FieldByName('YN').Value:='1' ;
                               Upsize.Apply(ukinsert);
                            end
                            else
                              begin
                                showmessage('Your total zlQty Qty > blQty.');
                                abort;
                              end;
                        end;
                    end;
            end;
          if not Qsize.FieldByName('Qty').isnull then
            begin
              a:=a+Qsize.FieldByName('Qty').value;
            end;
          Qsize.next;
      end;
      with QDel do
        begin
          active:=false;
          sql.Clear;
          sql.Add('update SCZL set Qty='+floattostr(a));
          sql.add('where SCBH='+''''+QMas.fieldbyname('SCBH').AsString+'''');
          execsql;
        end;
      QMas.active:=false;
      QMas.Active:=true; 
      Qmas.gotobookmark(bm);
      QMas.freebookmark(bm);
      bd5.enabled:=false;
      bd6.enabled:=false;
      dbgrid2.columns[0].ButtonStyle:=cbsnone;
    except
      Messagedlg('Have wrong, can not save!',mtwarning,[mbyes],0);
    end;
  end;
end;

procedure TNewReplenish.DBGrid3Enter(Sender: TObject);
begin
if QMas.RequestLive then
  begin
    showmessage('Pls save the replenish order first.');
    abort;
  end;
panel1.Visible:=false;
panel5.Visible:=true;
end;

procedure TNewReplenish.QsizeAfterOpen(DataSet: TDataSet);
begin
QSize.RequestLive:=true;
QSize.CachedUpdates:=true;
DBGrid3.Columns[3].ButtonStyle:=cbsEllipsis; 
DBGrid3.Columns[2].ButtonStyle:=cbsEllipsis;
end;

procedure TNewReplenish.DBGrid1DblClick(Sender: TObject);
begin
if QMas.RecordCount>0 then
  PC1.activepage:=TS2;
panel1.Visible:=false;
panel5.Visible:=true;
end;

procedure TNewReplenish.BD6Click(Sender: TObject);
begin
QDet.Active:=false;
QDet.RequestLive:=false;
QDet.CachedUpdates:=false;
QDet.Active:=true;
QSize.Active:=false;
QSize.Active:=true;
BD5.Enabled:=false;
BD6.Enabled:=false;
CBX4.Visible:=false;
DBGrid2.PopupMenu:= PopupMenu2;
end;

procedure TNewReplenish.BDT1Click(Sender: TObject);
begin
QDet.First;
end;

procedure TNewReplenish.BDT2Click(Sender: TObject);
begin
QDet.Prior;
end;

procedure TNewReplenish.BDT3Click(Sender: TObject);
begin
QDet.Next;
end;

procedure TNewReplenish.BDT4Click(Sender: TObject);
begin
QDet.Last;
end;

procedure TNewReplenish.DBGrid3KeyPress(Sender: TObject; var Key: Char);
begin
if (Key in ['0'..'9',#8,#46,#13])  then
  begin
    BD5.enabled:=true;
    BD6.enabled:=true;
  end
end;

procedure TNewReplenish.DBGrid2Enter(Sender: TObject);
begin
panel1.Visible:=false;
panel5.Visible:=true;
end;

procedure TNewReplenish.QMasAfterInsert(DataSet: TDataSet);
begin
//PC1.ActivePage:=TS2;
end;

procedure TNewReplenish.DBGrid3EditButtonClick(Sender: TObject);
begin
NewreplenishLR:=TNewreplenishLR.create(self);
NewreplenishLR.show;
end;

procedure TNewReplenish.DBGrid2ColExit(Sender: TObject);
begin
if DBGrid2.selectedfield.fieldname=CBX4.datafield then
   CBX4.Visible:=false;
end;

procedure TNewReplenish.UPPER1Click(Sender: TObject);
begin
with QDet do
  begin
    first;
    while not eof do
      begin
        if (fieldbyname('DFL').value='C') or (fieldbyname('DFL').value='S') then
          begin
            edit;
            fieldbyname('BLSB').Value:='Y';
          end;
        next;
      end;
    first;
  end;
end;

procedure TNewReplenish.BOTTOM1Click(Sender: TObject);
begin
with QDet do
  begin
    first;
    while not eof do
      begin
        if (fieldbyname('DFL').value='O')  then
          begin
            edit;
            fieldbyname('BLSB').Value:='Y';
          end ;
        next;
      end;
    first;
  end;
end;

procedure TNewReplenish.PAIRS1Click(Sender: TObject);
begin
with QDet do
  begin
    first;
    while not eof do
      begin
        edit;
        fieldbyname('BLSB').Value:='Y';
        next;
      end;
    first;
  end;
end;

procedure TNewReplenish.C1Click(Sender: TObject);
begin
with QDet do
  begin
    first;
    while not eof do
      begin
        if fieldbyname('DFL').value='C' then
          begin
            edit;
            fieldbyname('BLSB').Value:='Y';
          end;
        next;
      end;
    first;
  end;
end;

procedure TNewReplenish.S1Click(Sender: TObject);
begin
with QDet do
  begin
    first;
    while not eof do
      begin
        if fieldbyname('DFL').value='S' then
          begin
            edit;
            fieldbyname('BLSB').Value:='Y';
          end;
        next;
      end;
    first;
  end;
end;

procedure TNewReplenish.O1Click(Sender: TObject);
begin
with QDet do
  begin
    first;
    while not eof do
      begin
        if fieldbyname('DFL').value='O' then
          begin
            edit;
            fieldbyname('BLSB').Value:='Y';
          end;
        next;
      end;
    first;
  end;
end;

procedure TNewReplenish.QDetAfterOpen(DataSet: TDataSet);
begin
BD5.Enabled:=false;
BD6.Enabled:=false;
end;

procedure TNewReplenish.BDT5Click(Sender: TObject);
begin
if BB5.Enabled or BD5.Enabled then
  begin
    showmessage('Pls save data first.');
  end
  else
    begin
      NewRep_Print:=TNewRep_Print.create(self);
      NewRep_Print.quickrep1.preview;
      NewRep_Print.free;
    end;
end;

procedure TNewReplenish.FormDestroy(Sender: TObject);
begin
NewReplenish:=nil;
end;

end.
