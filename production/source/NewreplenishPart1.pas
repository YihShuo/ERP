unit NewreplenishPart1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, DBCtrls, StdCtrls, Mask, ComCtrls, Grids, DBGrids,
  Buttons, ExtCtrls;

type
  TNewreplenishPart = class(TForm)
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
    Label2: TLabel;
    Label3: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    DTP1: TDateTimePicker;
    Button1: TButton;
    DTP2: TDateTimePicker;
    CBX1: TComboBox;
    CBX2: TComboBox;
    TS2: TTabSheet;
    DBGrid2: TDBGrid;
    Panel6: TPanel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit9: TDBEdit;
    CBX3: TDBComboBox;
    CBX4: TDBComboBox;
    QMas: TQuery;
    QMasZLBH: TStringField;
    QMasGXLB: TStringField;
    QMasSCBH: TStringField;
    QMasXieXing: TStringField;
    QMasSheHao: TStringField;
    QMasArticle: TStringField;
    QMasXieMing: TStringField;
    QMasETD: TDateTimeField;
    QMasUSERID: TStringField;
    QMasUSERDATE: TDateTimeField;
    QMasYN: TStringField;
    QMasQty: TFloatField;
    UpMas: TUpdateSQL;
    DS1: TDataSource;
    DS2: TDataSource;
    QDet: TQuery;
    UpDet: TUpdateSQL;
    Qdel: TQuery;
    QOrdSize: TQuery;
    DSSize: TDataSource;
    CBX5: TDBComboBox;
    QMasDDLB: TStringField;
    BD2: TBitBtn;
    BD3: TBitBtn;
    QDetSCBH: TStringField;
    QDetBWBH: TStringField;
    QDetBLCC: TStringField;
    QDetLR: TStringField;
    QDetQty: TFloatField;
    QDetCLSL: TCurrencyField;
    QDetUSERID: TStringField;
    QDetUSERDATE: TDateTimeField;
    QDetYN: TStringField;
    QDetYWSM: TStringField;
    QDetCLBH: TStringField;
    QMasZLDW: TStringField;
    QDetYWPM: TStringField;
    QDetDWBH: TStringField;
    QDetTotQty: TFloatField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure BB1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BB7Click(Sender: TObject);
    procedure BD7Click(Sender: TObject);
    procedure BB2Click(Sender: TObject);
    procedure BB3Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure BBT1Click(Sender: TObject);
    procedure BBT2Click(Sender: TObject);
    procedure BBT3Click(Sender: TObject);
    procedure BBT4Click(Sender: TObject);
    procedure PC1Enter(Sender: TObject);
    procedure DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure BD4Click(Sender: TObject);
    procedure PC1Change(Sender: TObject);
    procedure BD5Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure BD6Click(Sender: TObject);
    procedure BDT1Click(Sender: TObject);
    procedure BDT2Click(Sender: TObject);
    procedure BDT3Click(Sender: TObject);
    procedure BDT4Click(Sender: TObject);
    procedure DBGrid2Enter(Sender: TObject);
    procedure Panel6Enter(Sender: TObject);
    procedure QOrdSizeAfterOpen(DataSet: TDataSet);
    procedure BD2Click(Sender: TObject);
    procedure BD3Click(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid2EditButtonClick(Sender: TObject);
    procedure DBGrid2ColExit(Sender: TObject);
    procedure QMasAfterOpen(DataSet: TDataSet);
    procedure QDetAfterOpen(DataSet: TDataSet);
    procedure BDT5Click(Sender: TObject);
    procedure QDetCalcFields(DataSet: TDataSet);
    procedure FormDestroy(Sender: TObject);
//    procedure QDetAfterOpen(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  NewreplenishPart: TNewreplenishPart;

implementation

uses ReplenishPart_order1, main1, Newreplenishparts1, NewRepPart_Print1;

{$R *.dfm}

procedure TNewreplenishPart.FormClose(Sender: TObject;
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

procedure TNewreplenishPart.FormCreate(Sender: TObject);
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
Qdet.Active:=false;
QMas.Active:=false;
end;

procedure TNewreplenishPart.BB1Click(Sender: TObject);
begin
Panel2.Visible:=true;
panel5.Visible:=false;
PC1.ActivePage:=TS1;
end;

procedure TNewreplenishPart.Button1Click(Sender: TObject);
begin
with QMas do
  begin
    active:=true;
    sql.clear;
    sql.add('Select SCZL.*,XXZL.XieXing, XXZL.SheHao,XXZL.Article, XXZL.XieMing,DDZL.ShipDate as ETD from SCZL ');
    sql.add('left join ZLZL on ZLZL.ZLBH=SCZL.ZLBH ');
    sql.add('left join DDZL on DDZL.DDBH=ZLZL.DDBH');
    sql.add('left join XXZL on XXZL.XieXing=DDZL.XieXing and XXZL.SheHao=DDZL.SheHao');
    sql.add('where SCZL.ZLDW<>'+''''+'B'+''''+' and SCZL.DDLB='+''''+'Part'+''''+ 'and SCZL.USERDATE>=');
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
    QOrdSize.active:=true;
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
    BD2.enabled:=true;
    BD3.enabled:=true;
    Bd4.Enabled:=true;
    Bd7.Enabled:=true;
    BDT1.Enabled:=true;
    BDT2.Enabled:=true;
    BDT3.Enabled:=true;
    BDT4.Enabled:=true;
    BDT5.Enabled:=true;
    BDT6.Enabled:=true;
end;

procedure TNewreplenishPart.BB7Click(Sender: TObject);
begin
close;
end;

procedure TNewreplenishPart.BD7Click(Sender: TObject);
begin
close;
end;

procedure TNewreplenishPart.BB2Click(Sender: TObject);
begin
if QDet.RequestLive then
  begin
    showmessage('Pls save prior detail first.');
    abort;
  end;
with QMas do
  begin
    requestlive:=true;
    cachedupdates:=true;
  end;

bb5.enabled:=true;
bb6.enabled:=true;
ReplenishPart_order:=TReplenishPart_order.create(self);
ReplenishPart_order.show;
end;

procedure TNewreplenishPart.BB3Click(Sender: TObject);
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
            BB5.Enabled:=true;
            BB6.Enabled:=true;
          end
          else
            begin
              if recordcount=1 then
                begin
                  QDel.active:=false;
                  QDel.sql.clear;
                  QDel.sql.add('select BWBH from SCBLS where SCBH=:SCBH') ;
                  QDel.active:=true;
                  if QDel.recordcount>0 then
                    begin
                      showmessage('Pls delete part detail first.');
                      abort;
                    end
                    else
                      begin
                        QMas.RequestLive:=true;
                        QMas.CachedUpdates:=true;
                        Qmas.Edit;
                        Qmas.FieldByName('YN').value:='0'; 
                        BB5.Enabled:=true;
                        BB6.Enabled:=true;
                      end;
                end;
            end;
      end;
  end;
end;

procedure TNewreplenishPart.BB4Click(Sender: TObject);
begin
if QDet.RequestLive then
  begin
    showmessage('Pls save prior detail first.');
    abort;
  end;
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

procedure TNewreplenishPart.BB5Click(Sender: TObject);
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
    QMas.Active:=true;
    QMas.cachedupdates:=false;
    QMas.requestlive:=false;
    bb5.enabled:=false;
    bb6.enabled:=false;
except
    Messagedlg('Have wrong, can not save!',mtwarning,[mbyes],0);
end;

end;

procedure TNewreplenishPart.BB6Click(Sender: TObject);
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

procedure TNewreplenishPart.BBT1Click(Sender: TObject);
begin
QMas.First;
end;

procedure TNewreplenishPart.BBT2Click(Sender: TObject);
begin
QMas.Prior;
end;

procedure TNewreplenishPart.BBT3Click(Sender: TObject);
begin
QMas.Next;
end;

procedure TNewreplenishPart.BBT4Click(Sender: TObject);
begin
QMas.Last;
end;

procedure TNewreplenishPart.PC1Enter(Sender: TObject);
begin
panel1.Visible:=true;
panel5.Visible:=false;
end;

procedure TNewreplenishPart.DBGrid2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
if QDet.cachedupdates then
  begin
  //  CBX4.BringToFront;
  //  CBX5.BringToFront;
    if (gdfocused in state) then
      begin
        if (dbgrid2.SelectedField.fieldname=CBX4.datafield) then
          begin
            CBX4.left:=rect.left+dbgrid1.left;
            CBX4.top:=rect.top+dbgrid1.Top+panel6.height;
            CBX4.width:=rect.right-rect.left+2;
            CBX4.height:=rect.bottom-rect.top;
            CBX4.visible:=true;
          end;  
        if (dbgrid2.SelectedField.fieldname=CBX5.datafield) then
          begin
            CBX5.left:=rect.left+dbgrid1.left;
            CBX5.top:=rect.top+dbgrid1.Top+panel6.height;
            CBX5.width:=rect.right-rect.left+2;
            CBX5.height:=rect.bottom-rect.top;
            CBX5.visible:=true;
          end;
      end;
  end;
if  QDet.FieldByName('YN').value='0' then
  begin
    dbgrid2.canvas.font.color:=clred;
    dbgrid2.defaultdrawcolumncell(rect,datacol,column,state);
  end;
end;

procedure TNewreplenishPart.BD4Click(Sender: TObject);
begin
if QMas.RequestLive then
  begin
    showmessage('Pls save the master first.');
    abort;
  end;
QDet.RequestLive:=true;
QDet.CachedUpdates:=true;
BD5.Enabled:=true;
BD6.Enabled:=true;  
DBGrid2.Columns[0].buttonstyle:=cbsEllipsis;
end;

procedure TNewreplenishPart.PC1Change(Sender: TObject);
begin
if PC1.ActivePage=TS2 then
  begin
    panel1.Visible:=false;
    panel5.Visible:=true;
  //  DBGrid2.SetFocus;
  end;
if PC1.ActivePage=TS1 then
  begin
    panel1.Visible:=true;
    panel5.Visible:=false;
  end;
end;

procedure TNewreplenishPart.BD5Click(Sender: TObject);
var i:integer;
begin
try
  QDet.First;
  for i:=1 to QDet.RecordCount do
    begin
      if QDet.fieldbyname('Qty').isnull then
        begin
          showmessage('Quantity is empty.');
          abort;
        end;
      if QDet.fieldbyname('LR').isnull then
        begin
          showmessage('L/R is empty.');
          abort;
        end;  
      if QDet.fieldbyname('BLCC').isnull then
        begin
          showmessage('Size is empty.');
          abort;
        end;
      case QDet.updatestatus of
          usinserted:
            begin
              if QDet.fieldbyname('BWBH').isnull then
                begin
                  QDet.delete;
                end
                 else
                   begin
                     QDet.edit;
                     QDet.FieldByName('SCBH').Value:=QMas.fieldbyname('SCBH').Value;;
                     QDet.FieldByName('UserID').Value:=main.edit1.text;
                     QDet.FieldByName('Userdate').Value:=date;
                     QDet.FieldByName('YN').Value:='1';
                     UpDet.apply(ukinsert);
                   end;
            end;
          usmodified:
             begin
              if QDet.fieldbyname('YN').value='0'then
                begin
                  UpDet.apply(ukdelete);
                end
                else
                  begin
                    QDet.edit;
                    QDet.FieldByName('UserID').Value:=main.edit1.text;
                    QDet.FieldByName('Userdate').Value:=date;
                    UpDet.apply(ukmodify);
                  end;
             end;
        end;
        QDet.next;
      end;
    QDet.Active:=false;    
    CBX4.Visible:=false;
    CBX5.Visible:=false;
    QDet.CachedUpdates:=false;
    QDet.RequestLive:=false;
    Qdet.Active:=true;
    BD5.Enabled:=false;
    BD6.Enabled:=false;
    CBX4.Visible:=false;
    CBX5.Visible:=false;
except
  showmessage('Have WRONG.');
END;

end;

procedure TNewreplenishPart.DBGrid1DblClick(Sender: TObject);
begin
if QMas.RecordCount>0 then
  PC1.activepage:=TS2;
panel1.Visible:=false;
panel5.Visible:=true;
end;

procedure TNewreplenishPart.BD6Click(Sender: TObject);
begin
QDet.Active:=false;
QDet.RequestLive:=false;
QDet.CachedUpdates:=false;
QDet.Active:=true;
BD5.Enabled:=false;
BD6.Enabled:=false;
CBX4.Visible:=false;
CBX5.Visible:=false;
end;

procedure TNewreplenishPart.BDT1Click(Sender: TObject);
begin
QDet.First;
end;

procedure TNewreplenishPart.BDT2Click(Sender: TObject);
begin
QDet.Prior;
end;

procedure TNewreplenishPart.BDT3Click(Sender: TObject);
begin
QDet.Next;
end;

procedure TNewreplenishPart.BDT4Click(Sender: TObject);
begin
QDet.Last;
end;

procedure TNewreplenishPart.DBGrid2Enter(Sender: TObject);
begin
panel1.Visible:=false;
panel5.Visible:=true;
end;

procedure TNewreplenishPart.Panel6Enter(Sender: TObject);
begin{
panel1.Visible:=true;
panel5.Visible:=false;    }
end;

procedure TNewreplenishPart.QOrdSizeAfterOpen(DataSet: TDataSet);
begin
CBX5.Items.Clear;
QOrdSize.First ;
while not QOrdSize.Eof do
  begin
    CBX5.Items.add(QOrdSize.FieldByName('XXCC').AsString);
    QOrdSize.Next;
  end;
end;

procedure TNewreplenishPart.BD2Click(Sender: TObject);
begin
if QMas.RequestLive then
  begin
    showmessage('Pls save the master first.');
    abort;
  end;
QDet.CachedUpdates:=true;
QDet.RequestLive:=true;
QDet.Insert;
BD5.Enabled:=true;
BD6.Enabled:=true;
DBGrid2.Columns[0].buttonstyle:=cbsEllipsis;
end;

procedure TNewreplenishPart.BD3Click(Sender: TObject);
begin
if messagedlg('Really delete this part ?',mtconfirmation,[mbYes,mbNo],0)=mrYes then
  begin
    QDet.CachedUpdates:=true;
    QDet.RequestLive:=true;
    QDet.Edit;
    QDet.FieldByName('YN').Value:='0';
  end;
BD5.Enabled:=true;
BD6.Enabled:=true;
end;

procedure TNewreplenishPart.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
if QMas.FieldByName('YN').Value='0' then
  begin
    dbgrid1.canvas.font.color:=clred;
    dbgrid1.defaultdrawcolumncell(rect,datacol,column,state);
  end;
end;

procedure TNewreplenishPart.DBGrid2EditButtonClick(Sender: TObject);
begin
if DBGrid2.SelectedField.FieldName='BWBH' then
  begin
    Newreplenishparts:= TNewreplenishparts.create(self);
    Newreplenishparts.show;
  end;
end;

procedure TNewreplenishPart.DBGrid2ColExit(Sender: TObject);
begin
if DBGrid2.selectedfield.fieldname=CBX4.datafield then
  CBX4.Visible:=false;
if DBGrid2.selectedfield.fieldname=CBX5.datafield then
  CBX5.Visible:=false;
end;

procedure TNewreplenishPart.QMasAfterOpen(DataSet: TDataSet);
begin
BB5.Enabled:=false;
BB6.Enabled:=false;
BD5.Enabled:=false;
BD6.Enabled:=false;
end;

procedure TNewreplenishPart.QDetAfterOpen(DataSet: TDataSet);
begin
BD5.Enabled:=false;
BD6.Enabled:=false;
end;

procedure TNewreplenishPart.BDT5Click(Sender: TObject);
begin
NewRepPart_Print:=TNewRepPart_Print.create(self);
NewRepPart_Print.quickrep1.preview;
NewRepPart_Print.free;
end;

procedure TNewreplenishPart.QDetCalcFields(DataSet: TDataSet);
begin

QDet.FieldByName('TotQty').Value:=QDet.FieldByName('Qty').Value*QDet.FieldByName('CLSL').Value/2 ;
end;

procedure TNewreplenishPart.FormDestroy(Sender: TObject);
begin
NewreplenishPart:=nil;
end;

end.
