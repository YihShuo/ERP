unit OrderMas1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, ComCtrls, Grids, DBGrids, StdCtrls, Buttons,
  ExtCtrls;

type
  TOrderMas = class(TForm)
    Panel1: TPanel;
    BB1: TBitBtn;
    BB4: TBitBtn;
    DTP1: TDateTimePicker;
    BB2: TBitBtn;
    Edit1: TEdit;
    DBGrid1: TDBGrid;
    Panel2: TPanel;
    BD1: TBitBtn;
    BD2: TBitBtn;
    BD3: TBitBtn;
    BD4: TBitBtn;
    BD5: TBitBtn;
    DBGrid2: TDBGrid;
    StatusBar1: TStatusBar;
    UpSQL1: TUpdateSQL;
    QVN: TQuery;
    DSVN: TDataSource;
    DSTW: TDataSource;
    QTW: TQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB1Click(Sender: TObject);
    procedure QVNAfterOpen(DataSet: TDataSet);
    procedure BD1Click(Sender: TObject);
    procedure BD4Click(Sender: TObject);
    procedure BD3Click(Sender: TObject);
    procedure BD5Click(Sender: TObject);
    procedure BD2Click(Sender: TObject);
    procedure BB2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  OrderMas: TOrderMas;

implementation

uses main1;

{$R *.dfm}

procedure TOrderMas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if QVN.requestlive  then
  begin
    messagedlg('You have to save data  first.',mtwarning,[mbyes],0);
    action:=canone;
  end
  else
    action:=cafree;
end;

procedure TOrderMas.FormCreate(Sender: TObject);
begin
DTP1.Date:=date;
end;

procedure TOrderMas.BB4Click(Sender: TObject);
begin
close;
end;

procedure TOrderMas.BB1Click(Sender: TObject);
begin
edit1.Text:='1';
with QTW do
  begin
    active:=false;
    SQL.Clear;
    sql.Add('select * from LY_SHOE.dbo.DDZL l');
    sql.add('where L.USERDATE>=');
    sql.add(''''+formatdatetime('yyyyMMdd',DTP1.date)+'''');
    sql.add('order by l.USERDATE')  ;
    active:=true;
  end;
QVN.Active:=true;
end;

procedure TOrderMas.QVNAfterOpen(DataSet: TDataSet);
begin
if QTW.recordcount=0 then
  begin
    BD1.enabled:=false;
    BD2.enabled:=false;
    BD3.enabled:=false;
    abort;
  end;
if QVN.recordcount=0 then
  begin
    BD1.enabled:=true;
    BD2.enabled:=false;
    BD3.enabled:=false;
  end
  ELSE
    begin
      BD1.Enabled:=false;
    if edit1.text='1' then
      begin
        BD2.enabled:=true;
        BD3.enabled:=false;
      end
      else
        begin
          BD3.enabled:=true;
          BD2.enabled:=false;
        end;
    end;
end;

procedure TOrderMas.BD1Click(Sender: TObject);
var i:integer;
var a,b,c:string;
begin 
a:=copy(QTW.Fieldbyname('ShipDate').asstring,1,4);
b:=copy(QTW.Fieldbyname('ShipDate').asstring,5,2);
c:=copy(QTW.Fieldbyname('ShipDate').asstring,7,2);
QVN.CachedUpdates:=true;
QVN.RequestLive:=true;
QVN.Insert;
for i:=0 to QTW.FieldCount-1 do
  begin
    if QVN.Fields[i].Fieldname<>'USERDATE' then
      begin
        if QVN.Fields[i]. fieldname<> 'ShipDate' then
          begin
            QVN.Fields[i].asstring:=QTW.Fields[i].asstring;
          end
          else
            begin
              QVN.Fields[i].Value:=Encodedate(strtoint(a),strtoint(b),strtoint(c));
            end;
      end
  end;
BD5.Enabled:=true;
BD4.Enabled:=true;

end;

procedure TOrderMas.BD4Click(Sender: TObject);
begin
QVN.first;
case QVN.updatestatus  of
  usinserted:
    begin
       QVN.edit;
      QVN.FieldByName('userid').Value:=main.edit1.text;
      QVN.FieldByName('userdate').Value:=date;
      QVN.Fieldbyname('YN').value:='1';
      upsql1.apply(ukinsert);
    end;
  usmodified:
    begin
      if QVN.fieldbyname('YN').value='0'then
        begin
          Upsql1.apply(ukdelete);
        end
        else
          begin
            QVN.edit;
            QVN.FieldByName('userid').Value:=main.edit1.text;
            QVN.FieldByName('userdate').Value:=date;
            upSQL1.apply(ukmodify);
          end;
    end;
  end;
QVN.active:=false;
QVN.CachedUpdates:=false;
QVN.RequestLive:=false;
QVN.active:=true;  
BD4.Enabled:=false;
BD5.Enabled:=false;
end;

procedure TOrderMas.BD3Click(Sender: TObject);
begin
if messagedlg('Sure? delete the record.',mtconfirmation,[mbyes,mbno],0)=mryes then
  begin
    QVN.CachedUpdates:=true;
    QVN.RequestLive:=true;
    QVN.FieldByName('YN').Value:='0';
  end;
end;

procedure TOrderMas.BD5Click(Sender: TObject);
begin
QVN.Active:=false;
QVn.CachedUpdates:=false;
QVN.RequestLive:=false;
QVN.Active:=true; 
BD4.Enabled:=false;
BD5.Enabled:=false;
end;

procedure TOrderMas.BD2Click(Sender: TObject);
var i:integer;
a,b,c:string;
begin
a:=copy(QTW.Fieldbyname('ShipDate').asstring,1,4);
b:=copy(QTW.Fieldbyname('ShipDate').asstring,5,2);
c:=copy(QTW.Fieldbyname('ShipDate').asstring,7,2);
QVN.CachedUpdates:=true;
QVN.RequestLive:=true;
QVN.edit;
for i:=0 to QTW.FieldCount-1 do
  begin
    if QVN.Fields[i].Fieldname<>'USERDATE'  then
      begin
        if QVN.Fields[i]. fieldname<> 'ShipDate' then
          begin
            QVN.Fields[i].asstring:=QTW.Fields[i].asstring;
          end
          else
            begin
              QVN.Fields[i].Value:=Encodedate(strtoint(a),strtoint(b),strtoint(c));
            end;
      end
  end;
BD5.Enabled:=true;
BD4.Enabled:=true;

end;

procedure TOrderMas.BB2Click(Sender: TObject);
begin
edit1.Text:='0';
with QTW do
  begin
    active:=false;
    SQL.Clear;
    sql.Add('select * from LY_ERP.dbo.DDZL l');
    sql.add('where not exists(select DDBH from LY_SHOE.dbo.DDZL d ');
    sql.add('where l.DDBH=d.DDBH collate Chinese_PRC_CI_AI_WS ) ');
    sql.add('order by l.userdate')  ;
    active:=true;
  end;
QVN.Active:=true;
end;

end.
