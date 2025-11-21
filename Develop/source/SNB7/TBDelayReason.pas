unit TBDelayReason;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ComCtrls, GridsEh, DBGridEh, DB, DBTables, StdCtrls,
  Buttons;

type
  TTBDelayReason1 = class(TForm)
    Panel1: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    Panel2: TPanel;
    BB6: TBitBtn;
    BB5: TBitBtn;
    BB4: TBitBtn;
    BB1: TBitBtn;
    DS1: TDataSource;
    Query1: TQuery;
    DBGridEh1: TDBGridEh;
    Query1TestNo: TStringField;
    Query1Groups: TStringField;
    Query1Serino: TIntegerField;
    Query1SR: TStringField;
    Query1Stage: TStringField;
    Query1WarehouseOK: TDateTimeField;
    Query1CuttingPlan: TDateTimeField;
    Query1PlanQty: TFloatField;
    Query1DP: TStringField;
    Query1DR: TStringField;
    UPDSQL1: TUpdateSQL;
    Query1PartE: TStringField;
    Query1PartV: TStringField;
    Query1ReasonE: TStringField;
    Query1ReasonV: TStringField;
    Query1GXLB: TStringField;
    Query2: TQuery;
    StringField1: TStringField;
    StringField2: TStringField;
    IntegerField1: TIntegerField;
    StringField3: TStringField;
    StringField4: TStringField;
    DateTimeField1: TDateTimeField;
    DateTimeField2: TDateTimeField;
    FloatField1: TFloatField;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    StringField8: TStringField;
    StringField9: TStringField;
    StringField10: TStringField;
    StringField11: TStringField;
    Label1: TLabel;
    Panel3: TPanel;
    Label2: TLabel;
    BB66: TBitBtn;
    BB55: TBitBtn;
    BB44: TBitBtn;
    BB11: TBitBtn;
    DS3: TDataSource;
    Query3: TQuery;
    UPDSQL3: TUpdateSQL;
    DBGridEh2: TDBGridEh;
    Query3TestNo: TStringField;
    Query3Groups: TStringField;
    Query3Serino: TIntegerField;
    Query3SR: TStringField;
    Query3Stage: TStringField;
    Query3CuttingOK: TDateTimeField;
    Query3SMatOK: TDateTimeField;
    Query3SMatGet: TDateTimeField;
    Query3StitchingPlan: TDateTimeField;
    Query3PlanQty: TFloatField;
    Query3DP: TStringField;
    Query3DR: TStringField;
    Query3PartE: TStringField;
    Query3PartV: TStringField;
    Query3ReasonE: TStringField;
    Query3ReasonV: TStringField;
    Query3GXLB: TStringField;
    Panel4: TPanel;
    Label3: TLabel;
    BB666: TBitBtn;
    BB555: TBitBtn;
    BB444: TBitBtn;
    BB111: TBitBtn;
    DBGridEh3: TDBGridEh;
    DS4: TDataSource;
    Query4: TQuery;
    UPDSQL4: TUpdateSQL;
    Query4TestNo: TStringField;
    Query4Groups: TStringField;
    Query4Serino: TIntegerField;
    Query4SR: TStringField;
    Query4Stage: TStringField;
    Query4StitchingOK: TDateTimeField;
    Query4AMatOK: TDateTimeField;
    Query4AMatGet: TDateTimeField;
    Query4AssemblePlan: TDateTimeField;
    Query4PlanQty: TFloatField;
    Query4DP: TStringField;
    Query4DR: TStringField;
    Query4PartE: TStringField;
    Query4PartV: TStringField;
    Query4ReasonE: TStringField;
    Query4ReasonV: TStringField;
    Query4GXLB: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure BB1Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure DBGridEh1Columns0EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure BB5Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure BB11Click(Sender: TObject);
    procedure BB44Click(Sender: TObject);
    procedure BB55Click(Sender: TObject);
    procedure DBGridEh2Columns0EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure BB66Click(Sender: TObject);
    procedure BB111Click(Sender: TObject);
    procedure BB444Click(Sender: TObject);
    procedure BB555Click(Sender: TObject);
    procedure BB666Click(Sender: TObject);
    procedure DBGridEh3Columns0EditButtonClick(Sender: TObject;
      var Handled: Boolean);
  private
    { Private declarations }
  public

    { Public declarations }
  end;

var
  TBDelayReason1: TTBDelayReason1;
  GLXB:string;
implementation

uses ChooseDPDR, ChooseDPDR3;

{$R *.dfm}

procedure TTBDelayReason1.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    Action:=caFree;
end;

procedure TTBDelayReason1.FormDestroy(Sender: TObject);
begin
   TBDelayReason1 := nil ;
end;

procedure TTBDelayReason1.BB1Click(Sender: TObject);
begin
  Query1.Active:=True;
  BB4.Enabled:=true;
end;

procedure TTBDelayReason1.BB4Click(Sender: TObject);
begin
  with Query1 do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
  BB4.Enabled:=false;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
  DBGridEh1.Columns[0].ButtonStyle := cbsEllipsis;
end;

procedure TTBDelayReason1.DBGridEh1Columns0EditButtonClick(Sender: TObject;
  var Handled: Boolean );
begin
  GLXB:='C';
  if chooseDPDR2<>nil then
    begin
       chooseDPDR2.show;
       chooseDPDR2.windowstate:=wsmaximized;
    end
  else
    begin
       chooseDPDR2:=TchooseDPDR2.create(self);
       chooseDPDR2.show;
    end;
end;

procedure TTBDelayReason1.BB5Click(Sender: TObject);
var i:integer;
begin
  try
      Query1.first;
      for i:=1 to Query1.RecordCount do
      begin
          case Query1.updatestatus of
            usmodified:
               begin
                  Query1.edit;
                  if (query1.fieldbyname('DP').AsString<>null) and (query1.fieldbyname('DP').AsString='') then
                  begin

                    with query2 do
                    begin
                       active:=false;
                       sql.Clear;
                       sql.add('delete shoetestdelay where testno='''+query1.fieldbyname('testno').Value+''' and gxlb=''C'' ');
                       execsql;
                       active:=false;
                    end;
                   end;
                   if (query1.fieldbyname('DP').AsString<>null) and (query1.fieldbyname('DP').AsString<>'') then
                   begin

                    with query2 do
                    begin
                       active:=false;
                       sql.Clear;
                       sql.add('delete shoetestdelay where testno='''+query1.fieldbyname('testno').Value+'''  and gxlb=''C''');
                       sql.add('insert into shoetestdelay ');
                       sql.add('(testno ,DP,DR,GXLB)');
                       sql.add('values ('''+query1.fieldbyname('testno').Value+' ''  ');
                       sql.add(','''+query1.fieldbyname('DP').AsString+''','''+query1.fieldbyname('DR').Value+''',''C'' ) ');
                       execsql;
                       active:=false;
                    end;
                   end;
               end;
          end;
         Query1.next;
        end;
      Query1.active:=false;
      Query1.cachedupdates:=false;
      Query1.requestlive:=false;
      Query1.active:=true;
      BB5.enabled:=false;
      BB6.enabled:=false;
      BB4.enabled:=true;
      DBGridEh1.Columns[0].ButtonStyle := cbsNone;
  except
    Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
  end;
end;

procedure TTBDelayReason1.BB6Click(Sender: TObject);
begin
  with Query1 do
  begin
    active:=false;
    cachedupdates:=false;
    requestlive:=false;
    active:=true;
  end;
  BB5.enabled:=false;
  BB6.enabled:=false;
  BB4.enabled:=true;
  DBGridEh1.Columns[0].ButtonStyle := cbsNone;
end;

procedure TTBDelayReason1.BB11Click(Sender: TObject);
begin
  Query3.Active:=True;
  BB44.Enabled:=true;
end;

procedure TTBDelayReason1.BB44Click(Sender: TObject);
begin
  with Query3 do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
  BB44.Enabled:=false;
  BB55.Enabled:=true;
  BB66.Enabled:=true;
  DBGridEh2.Columns[0].ButtonStyle := cbsEllipsis;
end;

procedure TTBDelayReason1.BB55Click(Sender: TObject);
var i:integer;
begin
  try
      Query3.first;
      for i:=1 to Query3.RecordCount do
      begin
          case Query3.updatestatus of
            usmodified:
               begin
                  Query3.edit;
                  if (query3.fieldbyname('DP').AsString<>null) and (query3.fieldbyname('DP').AsString='') then
                  begin

                    with query2 do
                    begin
                       active:=false;
                       sql.Clear;
                       sql.add('delete shoetestdelay where testno='''+query3.fieldbyname('testno').Value+''' and gxlb=''S'' ');
                       execsql;
                       active:=false;
                    end;
                   end;
                   if (query3.fieldbyname('DP').AsString<>null) and (query3.fieldbyname('DP').AsString<>'') then
                   begin
                    with query2 do
                    begin
                       active:=false;
                       sql.Clear;
                       sql.add('delete shoetestdelay where testno='''+query3.fieldbyname('testno').Value+'''  and gxlb=''S''');
                       sql.add('insert into shoetestdelay ');
                       sql.add('(testno ,DP,DR,GXLB)');
                       sql.add('values ('''+query3.fieldbyname('testno').Value+' ''  ');
                       sql.add(','''+query3.fieldbyname('DP').AsString+''','''+query3.fieldbyname('DR').Value+''',''S'' ) ');
                       execsql;
                       active:=false;
                    end;
                   end;
               end;
          end;
         Query3.next;
        end;
      Query3.active:=false;
      Query3.cachedupdates:=false;
      Query3.requestlive:=false;
      Query3.active:=true;
      BB55.enabled:=false;
      BB66.enabled:=false;
      BB44.enabled:=true;
      DBGridEh2.Columns[0].ButtonStyle := cbsNone;
  except
    Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
  end;
end;

procedure TTBDelayReason1.DBGridEh2Columns0EditButtonClick(Sender: TObject;
  var Handled: Boolean);
begin
  GLXB:='S';
  if chooseDPDR2<>nil then
    begin
       chooseDPDR2.show;
       chooseDPDR2.windowstate:=wsmaximized;
    end
  else
    begin
       chooseDPDR2:=TchooseDPDR2.create(self);
       chooseDPDR2.show;
    end;
end;

procedure TTBDelayReason1.BB66Click(Sender: TObject);
begin
  with Query3 do
  begin
    active:=false;
    cachedupdates:=false;
    requestlive:=false;
    active:=true;
  end;
  BB55.enabled:=false;
  BB66.enabled:=false;
  BB44.enabled:=true;
  DBGridEh2.Columns[0].ButtonStyle := cbsNone;
end;

procedure TTBDelayReason1.BB111Click(Sender: TObject);
begin
  Query4.Active:=True;
  BB444.Enabled:=true;
end;

procedure TTBDelayReason1.BB444Click(Sender: TObject);
begin
  with Query4 do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
  BB444.Enabled:=false;
  BB555.Enabled:=true;
  BB666.Enabled:=true;
  DBGridEh3.Columns[0].ButtonStyle := cbsEllipsis;
end;

procedure TTBDelayReason1.BB555Click(Sender: TObject);
var i:integer;
begin
  try
      Query4.first;
      for i:=1 to Query4.RecordCount do
      begin
          case Query4.updatestatus of
            usmodified:
               begin
                  Query4.edit;
                  if (query4.fieldbyname('DP').AsString<>null) and (query4.fieldbyname('DP').AsString='') then
                  begin

                    with query2 do
                    begin
                       active:=false;
                       sql.Clear;
                       sql.add('delete shoetestdelay where testno='''+query4.fieldbyname('testno').Value+''' and gxlb=''A'' ');
                       execsql;
                       active:=false;
                    end;
                   end;
                   if (query4.fieldbyname('DP').AsString<>null) and (query4.fieldbyname('DP').AsString<>'') then
                   begin
                    with query2 do
                    begin
                       active:=false;
                       sql.Clear;
                       sql.add('delete shoetestdelay where testno='''+query4.fieldbyname('testno').Value+'''  and gxlb=''A''');
                       sql.add('insert into shoetestdelay ');
                       sql.add('(testno ,DP,DR,GXLB)');
                       sql.add('values ('''+query4.fieldbyname('testno').Value+' ''  ');
                       sql.add(','''+query4.fieldbyname('DP').AsString+''','''+query4.fieldbyname('DR').Value+''',''A'' ) ');
                       execsql;
                       active:=false;
                    end;
                   end;
               end;
          end;
         Query4.next;
        end;
      Query4.active:=false;
      Query4.cachedupdates:=false;
      Query4.requestlive:=false;
      Query4.active:=true;
      BB555.enabled:=false;
      BB666.enabled:=false;
      BB444.enabled:=true;
      DBGridEh3.Columns[0].ButtonStyle := cbsNone;
  except
    Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
  end;
end;

procedure TTBDelayReason1.BB666Click(Sender: TObject);
begin
  with Query4 do
  begin
    active:=false;
    cachedupdates:=false;
    requestlive:=false;
    active:=true;
  end;
  BB555.enabled:=false;
  BB666.enabled:=false;
  BB444.enabled:=true;
  DBGridEh3.Columns[0].ButtonStyle := cbsNone;
end;

procedure TTBDelayReason1.DBGridEh3Columns0EditButtonClick(Sender: TObject;
  var Handled: Boolean);
begin
  GLXB:='A';
  if chooseDPDR2<>nil then
    begin
       chooseDPDR2.show;
       chooseDPDR2.windowstate:=wsmaximized;
    end
  else
    begin
       chooseDPDR2:=TchooseDPDR2.create(self);
       chooseDPDR2.show;
    end;
end;

end.
