unit HokaRubberWeight1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, GridsEh, DBGridEh, StdCtrls, Buttons, DBTables, DB;

type
  THokaRubberWeight = class(TForm)
    Panel1: TPanel;
    Panel3: TPanel;
    Label1: TLabel;
    BA2: TBitBtn;
    BA3: TBitBtn;
    BA4: TBitBtn;
    BA5: TBitBtn;
    BA6: TBitBtn;
    DBGridEh1: TDBGridEh;
    Splitter1: TSplitter;
    Panel10: TPanel;
    Label2: TLabel;
    BB2: TBitBtn;
    BB3: TBitBtn;
    BB4: TBitBtn;
    BB5: TBitBtn;
    BB6: TBitBtn;
    DBGridEh2: TDBGridEh;
    Panel2: TPanel;
    Panel6: TPanel;
    Label4: TLabel;
    BC2: TBitBtn;
    BC3: TBitBtn;
    BC4: TBitBtn;
    BC5: TBitBtn;
    BC6: TBitBtn;
    DBGridEh4: TDBGridEh;
    DS1: TDataSource;
    Query1: TQuery;
    UpLB1: TUpdateSQL;
    DS2: TDataSource;
    Query2: TQuery;
    UpLB2: TUpdateSQL;
    DS3: TDataSource;
    UpLB3: TUpdateSQL;
    Query3: TQuery;
    TmpQuery: TQuery;
    Query1LB: TStringField;
    Query1LBDH: TStringField;
    Query1YWSM: TStringField;
    Query1ZWSM: TStringField;
    Query1USERID: TStringField;
    Query1YN: TStringField;
    Query2LB: TStringField;
    Query2LBDH: TStringField;
    Query2YWSM: TStringField;
    Query2ZWSM: TStringField;
    Query2USERID: TStringField;
    Query2YN: TStringField;
    Query3LB: TStringField;
    Query3LBDH: TStringField;
    Query3YWSM: TStringField;
    Query3ZWSM: TStringField;
    Query3USERID: TStringField;
    Query3YN: TStringField;
    Query1Layer: TSmallintField;
    Query3Layer: TSmallintField;
    Query1USERDATE: TDateTimeField;
    Query2Layer: TSmallintField;
    Query2USERDATE: TDateTimeField;
    Query3USERDATE: TDateTimeField;
    Splitter2: TSplitter;
    Panel11: TPanel;
    Label3: TLabel;
    BD2: TBitBtn;
    BD3: TBitBtn;
    BD4: TBitBtn;
    BD5: TBitBtn;
    BD6: TBitBtn;
    DBGridEh3: TDBGridEh;
    DS4: TDataSource;
    Query4: TQuery;
    UpLB4: TUpdateSQL;
    Query4LBDH: TStringField;
    Query4SIZE: TStringField;
    Query4USERID: TStringField;
    Query4USERDATE: TDateTimeField;
    Query4YN: TStringField;
    Query4SWeightL: TFloatField;
    Query4SWeightR: TFloatField;
    Std_SG: TFloatField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Query1AfterOpen(DataSet: TDataSet);
    procedure Query2AfterOpen(DataSet: TDataSet);
    procedure Query3AfterOpen(DataSet: TDataSet);
    procedure BA2Click(Sender: TObject);
    procedure BA3Click(Sender: TObject);
    procedure BA4Click(Sender: TObject);
    procedure BA6Click(Sender: TObject);
    procedure BA5Click(Sender: TObject);
    procedure BB2Click(Sender: TObject);
    procedure BB3Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure BC2Click(Sender: TObject);
    procedure BC3Click(Sender: TObject);
    procedure BC4Click(Sender: TObject);
    procedure BC6Click(Sender: TObject);
    procedure BC5Click(Sender: TObject);
    procedure BD2Click(Sender: TObject);
    procedure Query4AfterOpen(DataSet: TDataSet);
    procedure BD3Click(Sender: TObject);
    procedure BD4Click(Sender: TObject);
    procedure BD6Click(Sender: TObject);
    procedure BD5Click(Sender: TObject);
  private
    NDate:TDate;
    { Private declarations }
    procedure ButtonInsert(Query:TQuery;SaveBtn:TBitBtn;CancelBtn:TBitBtn);
    procedure ButtonModify(Query:TQuery;SaveBtn:TBitBtn;CancelBtn:TBitBtn);
    procedure ButtonDelete(Query:TQuery;SaveBtn:TBitBtn;CancelBtn:TBitBtn);
    procedure ButtonCancel(Query:TQuery;SaveBtn:TBitBtn;CancelBtn:TBitBtn);
    procedure DBGridEhGetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
    procedure ButtonSave(Query:TQuery;SaveBtn:TBitBtn;CancelBtn:TBitBtn;UpdLB:TUpdateSQL;LBStr:String;Layer:string);
    procedure InitUpdateSQL();
  public
    { Public declarations }
  end;
const HKSIZE :array [0..26] of String=('03.0','03.5','04.0','04.5','05.0','05.5',
                                       '06.0','06.5','07.0','07.5','08.0','08.5',
                                       '09.0','09.5','10.0','10.5','11.0','11.5',
                                       '12.0','12.5','13.0','13.5','14.0','15.0',
                                       '16.0','17.0','18.0');

var
  HokaRubberWeight: THokaRubberWeight;

implementation

uses main1;

{$R *.dfm}
procedure THokaRubberWeight.InitUpdateSQL();
begin
  //Query1=========================================================================
  Query1.SQL.Clear;
  Query1.SQL.Add('Select * from '+main.LIY_DD+'.dbo.HKDM_LBZLS where lb=''1''  and layer=1 ');
  //
  UpLB1.InsertSQL.Clear;
  UpLB1.InsertSQL.Add('insert into '+main.LIY_DD+'.dbo.HKDM_LBZLS');
  UpLB1.InsertSQL.Add('  (LB, LBDH, ZWSM, YWSM ,Layer, USERID, USERDATE, YN )');
  UpLB1.InsertSQL.Add('values');
  UpLB1.InsertSQL.Add('  (:LB, :LBDH, :ZWSM, :YWSM ,:Layer ,:USERID, :USERDATE, :YN )');
  //
  UpLB1.ModifySQL.Clear;
  UpLB1.ModifySQL.Add('update '+main.LIY_DD+'.dbo.HKDM_LBZLS');
  UpLB1.ModifySQL.Add('set');
  UpLB1.ModifySQL.Add('  YWSM = :YWSM,');
  UpLB1.ModifySQL.Add('  ZWSM = :ZWSM,');
  UpLB1.ModifySQL.Add('  USERID = :USERID,');
  UpLB1.ModifySQL.Add('  USERDATE = :USERDATE,');
  UpLB1.ModifySQL.Add('  YN = :YN');
  UpLB1.ModifySQL.Add('where');
  UpLB1.ModifySQL.Add('  LB = :OLD_LB');
  UpLB1.ModifySQL.Add('  and LBDH =:OLD_LBDH');
  //
  UpLB1.DeleteSQL.Clear;
  UpLB1.DeleteSQL.Add('delete from '+main.LIY_DD+'.dbo.HKDM_LBZLS');
  UpLB1.DeleteSQL.Add('where');
  UpLB1.DeleteSQL.Add('  LB= :OLD_LB');
  UpLB1.DeleteSQL.Add('  and LBDH=:OLD_LBDH');
  //Query2=========================================================================
  Query2.SQL.Clear;
  Query2.SQL.Add('Select * from '+main.LIY_DD+'.dbo.HKDM_LBZLS where  LB=:LBDH  and layer=2 ');
  //
  UpLB2.InsertSQL.Clear;
  UpLB2.InsertSQL.Add('insert into '+main.LIY_DD+'.dbo.HKDM_LBZLS');
  UpLB2.InsertSQL.Add('  (LB, LBDH, ZWSM, YWSM ,Layer, USERID, USERDATE, YN )');
  UpLB2.InsertSQL.Add('values');
  UpLB2.InsertSQL.Add('  (:LB, :LBDH, :ZWSM, :YWSM ,:Layer ,:USERID, :USERDATE, :YN )');
  //
  UpLB2.ModifySQL.Clear;
  UpLB2.ModifySQL.Add('update '+main.LIY_DD+'.dbo.HKDM_LBZLS');
  UpLB2.ModifySQL.Add('set');
  UpLB2.ModifySQL.Add('  YWSM = :YWSM,');
  UpLB2.ModifySQL.Add('  ZWSM = :ZWSM,');
  UpLB2.ModifySQL.Add('  USERID = :USERID,');
  UpLB2.ModifySQL.Add('  USERDATE = :USERDATE,');
  UpLB2.ModifySQL.Add('  YN = :YN');
  UpLB2.ModifySQL.Add('where');
  UpLB2.ModifySQL.Add('  LB = :OLD_LB');
  UpLB2.ModifySQL.Add('  and LBDH =:OLD_LBDH');
  //
  UpLB2.DeleteSQL.Clear;
  UpLB2.DeleteSQL.Add('delete from '+main.LIY_DD+'.dbo.HKDM_LBZLS');
  UpLB2.DeleteSQL.Add('where');
  UpLB2.DeleteSQL.Add('  LB= :OLD_LB');
  UpLB2.DeleteSQL.Add('  and LBDH=:OLD_LBDH');
  //Query3=========================================================================
  Query3.SQL.Clear;
  Query3.SQL.Add('Select * from '+main.LIY_DD+'.dbo.HKDM_LBZLS where  LB=:LBDH  and layer=3 ');
  //
  UpLB3.InsertSQL.Clear;
  UpLB3.InsertSQL.Add('insert into '+main.LIY_DD+'.dbo.HKDM_LBZLS');
  UpLB3.InsertSQL.Add('  (LB, LBDH, ZWSM, YWSM ,Layer, USERID, USERDATE, YN )');
  UpLB3.InsertSQL.Add('values');
  UpLB3.InsertSQL.Add('  (:LB, :LBDH, :ZWSM, :YWSM ,:Layer ,:USERID, :USERDATE, :YN )');
  //
  UpLB3.ModifySQL.Clear;
  UpLB3.ModifySQL.Add('update '+main.LIY_DD+'.dbo.HKDM_LBZLS');
  UpLB3.ModifySQL.Add('set');
  UpLB3.ModifySQL.Add('  YWSM = :YWSM,');
  UpLB3.ModifySQL.Add('  ZWSM = :ZWSM,');
  UpLB3.ModifySQL.Add('  USERID = :USERID,');
  UpLB3.ModifySQL.Add('  USERDATE = :USERDATE,');
  UpLB3.ModifySQL.Add('  YN = :YN');
  UpLB3.ModifySQL.Add('where');
  UpLB3.ModifySQL.Add('  LB = :OLD_LB');
  UpLB3.ModifySQL.Add('  and LBDH =:OLD_LBDH');
  //
  UpLB3.DeleteSQL.Clear;
  UpLB3.DeleteSQL.Add('delete from '+main.LIY_DD+'.dbo.HKDM_LBZLS');
  UpLB3.DeleteSQL.Add('where');
  UpLB3.DeleteSQL.Add('  LB= :OLD_LB');
  UpLB3.DeleteSQL.Add('  and LBDH=:OLD_LBDH');
  //Query4=========================================================================
  Query4.SQL.Clear;
  Query4.SQL.Add('Select *');
  Query4.SQL.Add('from '+main.LIY_DD+'.dbo.HKDM_LBZLS_SIZE');
  Query4.SQL.Add('where LBDH=:LBDH');

  UpLB4.InsertSQL.Clear;
  UpLB4.InsertSQL.Add('insert into '+main.LIY_DD+'.dbo.HKDM_LBZLS_SIZE');
  UpLB4.InsertSQL.Add('  ( LBDH, SIZE, SWeightL, SWeightR , Std_SG, USERID, USERDATE, YN )');
  UpLB4.InsertSQL.Add('values');
  UpLB4.InsertSQL.Add('  ( :LBDH, :SIZE, :SWeightL, :SWeightR , :Std_SG, :USERID, :USERDATE, :YN )');

  UpLB4.ModifySQL.Clear;
  UpLB4.ModifySQL.Add('Update '+main.LIY_DD+'.dbo.HKDM_LBZLS_SIZE ');
  UpLB4.ModifySQL.Add('Set');
  UpLB4.ModifySQL.Add('  SIZE = :SIZE,');
  UpLB4.ModifySQL.Add('  SWeightL = :SWeightL,');
  UpLB4.ModifySQL.Add('  SWeightR = :SWeightR,');
  UpLB4.ModifySQL.Add('  Std_SG = :Std_SG,');
  UpLB4.ModifySQL.Add('  USERID = :USERID,');
  UpLB4.ModifySQL.Add('  USERDATE = :USERDATE,');
  UpLB4.ModifySQL.Add('  YN = :YN');
  UpLB4.ModifySQL.Add('where');
  UpLB4.ModifySQL.Add('  LBDH = :OLD_LBDH');
  UpLB4.ModifySQL.Add('  and SIZE =:OLD_SIZE');
  //
  UpLB4.DeleteSQL.Clear;
  UpLB4.DeleteSQL.Add('delete from '+main.LIY_DD+'.dbo.HKDM_LBZLS_SIZE');
  UpLB4.DeleteSQL.Add('where');
  UpLB4.DeleteSQL.Add('  LBDH= :OLD_LBDH');
  UpLB4.DeleteSQL.Add('  and SIZE=:OLD_SIZE');

end;
//
procedure THokaRubberWeight.ButtonInsert(Query:TQuery;SaveBtn:TBitBtn;CancelBtn:TBitBtn);
begin
  with Query do
  begin
    requestlive:=true;
    cachedupdates:=true;
    insert;
  end;
  SaveBtn.Enabled:=true;
  CancelBtn.Enabled:=true;
end;
//
procedure THokaRubberWeight.ButtonModify(Query:TQuery;SaveBtn:TBitBtn;CancelBtn:TBitBtn);
begin
  with Query do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
  SaveBtn.Enabled:=true;
  CancelBtn.Enabled:=true;
end;
//
procedure THokaRubberWeight.ButtonDelete(Query:TQuery;SaveBtn:TBitBtn;CancelBtn:TBitBtn);
begin
  with Query do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
    fieldbyname('YN').Value:='0';
  end;
  SaveBtn.Enabled:=true;
  CancelBtn.Enabled:=true;
end;
//
procedure THokaRubberWeight.ButtonCancel(Query:TQuery;SaveBtn:TBitBtn;CancelBtn:TBitBtn);
begin
  with Query do
  begin
    active:=false;
    requestlive:=false;
    cachedupdates:=false;
    active:=true;
  end;
  SaveBtn.Enabled:=false;
  CancelBtn.Enabled:=false;
end;
//Àx¦s
procedure THokaRubberWeight.ButtonSave(Query:TQuery;SaveBtn:TBitBtn;CancelBtn:TBitBtn;UpdLB:TUpdateSQL;LBStr:String;Layer:string);
var i:integer;
    LBDH:String;
begin

  try
    Query.first;
    for i:=1 to Query.RecordCount do
      begin
        case Query.updatestatus of
          usinserted:
            begin
                if Query.fieldbyname('YWSM').isnull then
                begin
                  Query.delete;
                end else
                begin
                 //
                 with TmpQuery do
                 begin
                   Active:=false;
                   SQL.Clear;
                   SQL.Add('Select top 1 LBDH from  '+main.LIY_DD+'.dbo.HKDM_LBZLS where Layer='+Layer+' order by LBDH desc ');
                   Active:=true;
                   if Recordcount >0 then
                   begin
                     last;
                     LBDH:=fieldbyname('LBDH').AsString;
                     LBDH:=copy(LBDH,2,5);
                     LBDH:=inttostr(strtoint(LBDH)+1);
                     while length(LBDH)<4 do
                     begin
                       LBDH:='0'+LBDH;
                     end;
                   end else
                   begin
                     LBDH:='0001';
                   end;
                   Active:=false;
                 end;
                 //
                 Query.edit;
                 Query.FieldByName('LBDH').Value:=Layer+LBDH;
                 Query.FieldByName('LB').Value:=LBStr;
                 Query.FieldByName('Layer').Value:=Layer;
                 Query.FieldByName('userID').Value:=main.edit1.text;
                 Query.FieldByName('userdate').Value:=Ndate;
                 Query.FieldByName('YN').Value:='1';
                 UpdLB.apply(ukinsert);
                end;
            end;
          usmodified:
             begin
                if Query.fieldbyname('YN').value='0'then
                begin
                  with TmpQuery do
                  begin
                    active:=false;
                    sql.Clear;
                    sql.add('insert into BDelRec ');
                    sql.add('(TableName ,TNO,CLBH,OldID,DelID,DelDate)');
                    sql.add('values (''HKDM_LBZLS'','''+Query.fieldbyname('LB').Value+Query.fieldbyname('LBDH').Value+'''');
                    sql.add(','''+Query.fieldbyname('LB').Value+Query.fieldbyname('LBDH').Value+''','''+Query.fieldbyname('USERID').Value+''',');
                    sql.add(''''+main.Edit1.Text+''''+',getdate())');
                    execsql;
                    active:=false;
                  end;
                  UpdLB.apply(ukdelete);
                end else
                begin
                    Query.edit;
                    Query.FieldByName('userID').Value:=main.edit1.text;
                    Query.FieldByName('userdate').Value:=Ndate;
                    UpdLB.apply(ukmodify);
                end;
             end;
        end;
       Query.next;
      end;
    Query.active:=false;
    Query.cachedupdates:=false;
    Query.requestlive:=false;
    Query.active:=true;
    SaveBtn.enabled:=false;
    CancelBtn.enabled:=false;
    showmessage('Succeed.');
  except
    Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
  end;

end;

procedure THokaRubberWeight.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=CaFree;
end;

procedure THokaRubberWeight.FormDestroy(Sender: TObject);
begin
  HokaRubberWeight:=nil;
end;


procedure THokaRubberWeight.FormCreate(Sender: TObject);
begin
  with TmpQuery do
  begin
    active:=false;
    sql.Clear;
    sql.Add('select year(getdate()) as FY,month(getdate()) as FM ,getdate() as NDate');
    active:=true;
    NDate:=fieldbyname('NDate').Value;
    active:=false;
  end;
  //
  InitUpdateSQL();
  //  
  Query1.Active:=true;
  Query2.Active:=true;
  Query3.Active:=true;
  Query4.Active:=true;

  DBGridEh1.OnGetCellParams:=DBGridEhGetCellParams;
  DBGridEh2.OnGetCellParams:=DBGridEhGetCellParams;
  DBGridEh4.OnGetCellParams:=DBGridEhGetCellParams;
  DBGridEh4.OnGetCellParams:=DBGridEhGetCellParams;

end;


procedure THokaRubberWeight.DBGridEhGetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if TDBGridEh(Sender).DataSource.DataSet.FieldByName('YN').value='0' then
  begin
    TDBGridEh(Sender).canvas.font.color:=clred;
  end;
end;

procedure THokaRubberWeight.Query1AfterOpen(DataSet: TDataSet);
begin
  BA2.Enabled:=true;
  BA3.Enabled:=true;
  BA4.Enabled:=true;
end;

procedure THokaRubberWeight.Query2AfterOpen(DataSet: TDataSet);
begin
  BB2.Enabled:=true;
  BB3.Enabled:=true;
  BB4.Enabled:=true;
end;

procedure THokaRubberWeight.Query3AfterOpen(DataSet: TDataSet);
begin
  BC2.Enabled:=true;
  BC3.Enabled:=true;
  BC4.Enabled:=true;
end;

procedure THokaRubberWeight.BA2Click(Sender: TObject);
begin
  ButtonInsert(Query1,BA5,BA6);
end;

procedure THokaRubberWeight.BA3Click(Sender: TObject);
begin
  if Query2.RecordCount>0 then
  begin
    Showmessage('Material Name must delete first ');
    Abort();
  end;
  ButtonDelete(Query1,BA5,BA6);
end;

procedure THokaRubberWeight.BA4Click(Sender: TObject);
begin
  ButtonModify(Query1,BA5,BA6);
end;

procedure THokaRubberWeight.BA6Click(Sender: TObject);
begin
  ButtonCancel(Query1,BA5,BA6);
end;

procedure THokaRubberWeight.BA5Click(Sender: TObject);
begin
  ButtonSave(Query1,BA5,BA6,UpLB1,'1','1');
end;

procedure THokaRubberWeight.BB2Click(Sender: TObject);
begin
  if Query1.RecordCount=0 then
  begin
    Showmessage('Botton Code must Insert first ');
    Abort();
  end;
  ButtonInsert(Query2,BB5,BB6);
end;

procedure THokaRubberWeight.BB3Click(Sender: TObject);
begin
  if Query3.RecordCount>0 then
  begin
    Showmessage('Production Stage detail must delete first ');
    Abort();
  end;
  //
  ButtonDelete(Query2,BB5,BB6);
end;

procedure THokaRubberWeight.BB4Click(Sender: TObject);
begin
  ButtonModify(Query2,BB5,BB6);
end;

procedure THokaRubberWeight.BB6Click(Sender: TObject);
begin
  ButtonCancel(Query2,BB5,BB6);
end;

procedure THokaRubberWeight.BB5Click(Sender: TObject);
begin
  ButtonSave(Query2,BB5,BB6,UpLB2,Query1.FieldByName('LBDH').AsString,'2');
end;

procedure THokaRubberWeight.BC2Click(Sender: TObject);
begin
  if Query2.RecordCount=0 then
  begin
    Showmessage('M/S material name must Insert first ');
    Abort();
  end;
  ButtonInsert(Query3,BC5,BC6);
end;

procedure THokaRubberWeight.BC3Click(Sender: TObject);
begin
  if Query4.RecordCount>0 then
  begin
    Showmessage('Production Weight detail must delete first ');
    Abort();
  end;
  ButtonDelete(Query3,BC5,BC6);
end;

procedure THokaRubberWeight.BC4Click(Sender: TObject);
begin
  ButtonModify(Query3,BC5,BC6);
end;

procedure THokaRubberWeight.BC6Click(Sender: TObject);
begin
  ButtonCancel(Query3,BC5,BC6);
end;

procedure THokaRubberWeight.BC5Click(Sender: TObject);
begin
   ButtonSave(Query3,BC5,BC6,UpLB3,Query2.FieldByName('LBDH').AsString,'3');
end;

procedure THokaRubberWeight.BD2Click(Sender: TObject);
var i:integer;
begin
  if Query3.RecordCount=0 then
  begin
    Showmessage('Production Stage name must Insert first ');
    Abort();
  end;
  ButtonInsert(Query4,BD5,BD6);
  //
  for i:=0 to High(HKSIZE) do
  begin
    Query4.Insert;
    Query4.FieldByName('SIZE').Value:= HKSIZE[i];
    Query4.Post;
  end;
end;

procedure THokaRubberWeight.Query4AfterOpen(DataSet: TDataSet);
begin
  BD2.Enabled:=true;
  BD3.Enabled:=true;
  BD4.Enabled:=true;
end;

procedure THokaRubberWeight.BD3Click(Sender: TObject);
begin
  ButtonDelete(Query4,BD5,BD6);
end;

procedure THokaRubberWeight.BD4Click(Sender: TObject);
begin
  ButtonModify(Query4,BD5,BD6);
end;

procedure THokaRubberWeight.BD6Click(Sender: TObject);
begin
  ButtonCancel(Query4,BD5,BD6);
end;

procedure THokaRubberWeight.BD5Click(Sender: TObject);
var i:integer;
begin

  try
    Query4.first;
    for i:=1 to Query4.RecordCount do
      begin
        case Query4.updatestatus of
          usinserted:
            begin
                if (Query4.fieldbyname('SIZE').isnull)  then
                begin
                  Query4.delete;
                end else
                begin
                 //
                 Query4.Edit;
                 Query4.FieldByName('LBDH').Value:=Query3.FieldByName('LBDH').AsString;
                 if Query4.fieldbyname('SWeightL').isnull then
                   Query4.fieldbyname('SWeightL').Value:=0;
                 if Query4.fieldbyname('SWeightR').isnull then
                   Query4.fieldbyname('SWeightR').Value:=0;
                 Query4.FieldByName('userID').Value:=main.edit1.text;
                 Query4.FieldByName('userdate').Value:=Ndate;
                 Query4.FieldByName('YN').Value:='1';
                 UpLB4.apply(ukinsert);
                end;
            end;
          usmodified:
             begin
                if Query4.fieldbyname('YN').value='0'then
                begin
                  UpLB4.apply(ukdelete);
                end else
                begin
                  Query4.edit;
                  Query4.FieldByName('userID').Value:=main.edit1.text;
                  Query4.FieldByName('userdate').Value:=Ndate;
                  UpLB4.apply(ukmodify);
                end;
             end;
        end;
       Query4.next;
      end;
    Query4.active:=false;
    Query4.cachedupdates:=false;
    Query4.requestlive:=false;
    Query4.active:=true;
    BD5.enabled:=false;
    BD6.enabled:=false;
    showmessage('Succeed.');
  except
    Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
  end;

end;

end.
