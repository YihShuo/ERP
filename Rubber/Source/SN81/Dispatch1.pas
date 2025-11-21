unit Dispatch1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, DBCtrls, ComCtrls, StdCtrls,
  ExtCtrls, Buttons;

type
  TDispatch = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Lname: TLabel;
    Label3: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    cb1: TComboBox;
    cb2: TComboBox;
    seleb: TButton;
    Edit1: TEdit;
    sd: TDateTimePicker;
    ed: TDateTimePicker;
    dbg1: TDBGridEh;
    Qtemp: TQuery;
    UpdateSQL1: TUpdateSQL;
    showdata: TQuery;
    DataSource1: TDataSource;
    showdataworkno: TStringField;
    showdatainputdate: TDateTimeField;
    showdataxiexing: TStringField;
    showdataMAXcount: TIntegerField;
    showdataTHIScount: TIntegerField;
    showdatasqty: TIntegerField;
    showdatarqty: TIntegerField;
    showdataqty: TIntegerField;
    showdatacost: TFloatField;
    showdataYN: TStringField;
    Panel2: TPanel;
    BB2: TBitBtn;
    BB3: TBitBtn;
    BB4: TBitBtn;
    BB5: TBitBtn;
    BB6: TBitBtn;
    Label5: TLabel;
    cbDep: TComboBox;
    Query1: TQuery;
    BB7: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cb1Change(Sender: TObject);
    procedure selebClick(Sender: TObject);
    procedure cb2Change(Sender: TObject);
    procedure showdataTHIScountChange(Sender: TField);
    procedure showdataMAXcountChange(Sender: TField);
    procedure showdatasqtyChange(Sender: TField);
    procedure showdatarqtyChange(Sender: TField);
    procedure showdataAfterInsert(DataSet: TDataSet);
    procedure BB2Click(Sender: TObject);
    procedure BB3Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure dbg1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure BB7Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Dispatch: TDispatch;

var p:integer;

implementation
uses FunUnit, main1;

{$R *.dfm}

procedure TDispatch.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  qtemp.Active:=false;
  showdata.Active:=false;
  action:=cafree;
end;

procedure TDispatch.FormDestroy(Sender: TObject);
begin
//  Dispatch:=nil;
end;

procedure TDispatch.FormCreate(Sender: TObject);
var  i,j:integer;
begin
  with Qtemp do
  begin
    active:=false;
    sql.Clear;
    sql.add('select workno from '+main.LIY_DD+'.dbo.people');
    active:=true;
    cb1.Items.Add('');
    for i:=1 to recordcount do
    begin
      CB1.Items.Add(fieldbyname('workno').asstring);
      next;
    end;

    active:=false;
    sql.Clear;
    sql.add('select mjbh as article');
    sql.Add(' from '+main.LIY_DD+'.dbo.mjzl ');
    sql.add('  group by mjbh ');
    sql.add('  order by mjbh ');
    //memo1.text:=sql.text;
    active:=true;
    cb2.Items.Add('');
    for i:=1 to recordcount do
    begin
      CB2.Items.Add(fieldbyname('article').asstring);
      next;
    end;
    active:=false;
  end;
  //showdata.Active:=True;
  sd.Date:=now;
  ed.Date:=now;
  with Query1 do
  begin
    active:=false;
    sql.Clear;
    sql.Add('select distinct Dep from '+main.LIY_DD+'.dbo.people where dep is not null');
    sql.Add('order by dep');
    active:=true;
    cbdep.Items.Add('');
    for j:=1 to recordcount do
    begin
      cbdep.Items.Add(fieldbyname('dep').asstring);
      next;
    end;
  end;
end;

procedure TDispatch.cb1Change(Sender: TObject);
begin
  with Qtemp do
  begin
    if cb1.Text<>'' then
    begin
      active:=false;
      sql.Clear;
      sql.add('select name from '+main.LIY_DD+'.dbo.people where workno='+''''+cb1.Text+'''');
      active:=true;
      Lname.Caption:=fieldbyname('name').Value;
    end;
    active:=false;
  end;
end;
procedure TDispatch.selebClick(Sender: TObject);
var monthstr :string;
begin
  with showdata do
  begin
    active:=false;
    sql.Clear;
    sql.add('select workoverreport.*,'''' as YN from '+main.LIY_DD+'.dbo.workoverreport workoverreport');
    //20160617
    sql.Add('left join '+main.LIY_DD+'.dbo.people people on workoverreport.workno=people.workno');
    //
    sql.Add('where inputdate BETWEEN '+''''+formatdatetime('yyyy/MM/dd',sd.date)+'''');
    sql.Add(' and '+''''+formatdatetime('yyyy/MM/dd',ed.date)+'''' );
    sql.add(' and people.workno like '+''''+'%'+cb1.Text+'%'+'''');
    sql.add(' and xiexing like '+''''+'%'+cb2.Text+'%'+'''');
    if cbdep.Text<>'' then
    begin
      sql.Add('and Dep='''+cbDep.Text+'''');
    end;
    //memo1.Text:=sql.Text;
    active:=true;
  end;
  BB2.Enabled:=true;
  bb3.Enabled:=true;
  bb4.Enabled:=true;
  BB7.Enabled:=true;

end;

procedure TDispatch.cb2Change(Sender: TObject);
begin
  p:=cb2.ItemIndex;
end;
procedure TDispatch.showdataTHIScountChange(Sender: TField);
begin
  with qtemp do
  begin
    sql.Clear;
    sql.add('select (isnull(trm,1)*isnull(yields,1)) as sqty,cost ');
    sql.Add(' from '+main.LIY_DD+'.dbo.mjzl ');
    sql.add(' where mjbh='+''''+showdata.fieldbyname('Xiexing').Value+'''');
    sql.Add('  and lbdh='+''''+inttostr(showdata.fieldbyname('maxcount').Value)+'''');
    active:=true;
    if not qtemp.Eof then
    begin
      showdata.FieldByName('Sqty').value:=qtemp.FieldByName('sqty').value*showdata.fieldbyname('thiscount').Value;
      showdata.FieldByName('cost').Value:=qtemp.fieldbyname('cost').value;
    end else
    begin
      sql.Clear;
      sql.add('select (isnull(trm,1)*isnull(yields,1)) as sqty,cost ');
      sql.Add(' from '+main.LIY_DD+'.dbo.mjzl ');
      sql.add(' where mjbh='+''''+showdata.fieldbyname('Xiexing').Value+'''');
      sql.Add('  and lbdh=(select max(lbdh) from '+main.LIY_DD+'.dbo.mjzl where mjbh='+''''+showdata.fieldbyname('Xiexing').Value+''''+')');
      active:=true;
      showdata.FieldByName('Sqty').value:=qtemp.FieldByName('sqty').value*showdata.fieldbyname('thiscount').Value;
      showdata.FieldByName('cost').Value:=qtemp.fieldbyname('cost').value;
    end;
  end;
end;

procedure TDispatch.showdataMAXcountChange(Sender: TField);
begin
  with qtemp do
  begin
    sql.Clear;
    sql.add('select (isnull(trm,1)*isnull(yields,1)) as sqty,cost ');
    sql.Add(' from '+main.LIY_DD+'.dbo.mjzl ');
    sql.add(' where mjbh='+''''+showdata.fieldbyname('Xiexing').Value+'''');
    sql.Add('  and lbdh='+''''+inttostr(showdata.fieldbyname('maxcount').Value)+'''');
    active:=true;
    if not qtemp.Eof then
    begin
      showdata.FieldByName('Sqty').value:=qtemp.FieldByName('sqty').value*showdata.fieldbyname('thiscount').Value;
      showdata.FieldByName('cost').Value:=qtemp.fieldbyname('cost').value;
    end else
    begin
      sql.Clear;
      sql.add('select (isnull(trm,1)*isnull(yields,1)) as sqty,cost ');
      sql.Add(' from '+main.LIY_DD+'.dbo.mjzl ');
      sql.add(' where mjbh='+''''+showdata.fieldbyname('Xiexing').Value+'''');
      sql.Add('  and lbdh=(select max(lbdh) from '+main.LIY_DD+'.dbo.mjzl where mjbh='+''''+showdata.fieldbyname('Xiexing').Value+''''+')');
      active:=true;
      showdata.FieldByName('Sqty').value:=qtemp.FieldByName('sqty').value*showdata.fieldbyname('thiscount').Value;
      showdata.FieldByName('cost').Value:=qtemp.fieldbyname('cost').value;
    end;
  end;
end;

procedure TDispatch.showdatasqtyChange(Sender: TField);
begin
  showdata.FieldByName('qty').value:=showdata.FieldByName('rqty').value-showdata.FieldByName('Sqty').value;
  if showdata.FieldByName('qty').value < 0 then
      showdata.FieldByName('qty').value := 0;
end;

procedure TDispatch.showdatarqtyChange(Sender: TField);
begin
  showdata.FieldByName('qty').value:=showdata.FieldByName('rqty').value-showdata.FieldByName('Sqty').value;
  if showdata.FieldByName('qty').value < 0 then
    showdata.FieldByName('qty').value := 0;
end;

procedure TDispatch.showdataAfterInsert(DataSet: TDataSet);
begin
  //20160716 check User with Dep
  if cbdep.Text='' then
  begin
    showmessage('Pls select Department');
    abort;
  end;
  with Query1 do
  begin
    active:=false;
    sql.Clear;
    sql.Add('select * from '+main.LIY_DD+'.dbo.people');
    sql.Add('where workno='''+cb1.Text+''' and dep='''+cbdep.Text+'''');
    active:=true;
  end;
  //
  if query1.RecordCount>0 then
  begin
    showdata.FieldByName('workno').Value:=CB1.Text;
    showdata.FieldByName('inputdate').Value:=formatdatetime('yyyy/MM/dd',ed.Date);
    showdata.FieldByName('xiexing').Value:=cb2.text;
    showdata.FieldByName('Maxcount').Value:=strtoint(edit1.Text);
    showdata.FieldByName('xiexing').Value:=cb2.text;
  end else
  begin
    showmessage('Information not exactly');
    abort;
  end;
end;
procedure TDispatch.BB2Click(Sender: TObject);
begin
  with showdata do
  begin
    requestlive:=true;
    cachedupdates:=true;
    insert;
  end;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
end;

procedure TDispatch.BB3Click(Sender: TObject);
begin
  with showdata do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
    fieldbyname('YN').Value:='0';
  end;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
end;

procedure TDispatch.BB4Click(Sender: TObject);
begin
  with showdata do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
end;

procedure TDispatch.BB6Click(Sender: TObject);
begin
 with showdata do
 begin
    active:=false;
    requestlive:=false;
    cachedupdates:=false;
    active:=true;
  end;
  bb5.enabled:=false;
  bb6.enabled:=false;
end;

procedure TDispatch.BB5Click(Sender: TObject);
var i:integer;
begin
  try
    showdata.First;
      for i:=1 to showdata.RecordCount do
      begin
        case showdata.updatestatus of
          usinserted:
            begin
              if showdata.fieldbyname('Workno').isnull then
                begin
                  showdata.delete;
                end else
                begin
                  showdata.edit;
                  UpdateSQL1.apply(ukinsert);
                end;
            end;
          usmodified:
           begin
             if showdata.fieldbyname('YN').value='0'then
             begin
              UpdateSQL1.apply(ukdelete);
             end else
             begin
               showdata.edit;
               UpdateSQL1.apply(ukmodify);
             end;
        end;
      end;
      showdata.next;
    end;
    showdata.active:=false;
    showdata.cachedupdates:=false;
    showdata.requestlive:=false;
    showdata.active:=true;
    bb5.enabled:=false;
    bb6.enabled:=false;
  except
    Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
  end;
end;

procedure TDispatch.dbg1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
begin
  if showdata.FieldByName('YN').value='0' then
  begin
    dbg1.canvas.font.color:=clred;
    dbg1.defaultdrawcolumncell(rect,datacol,column,state);
  end;
end;

procedure TDispatch.BB7Click(Sender: TObject);
begin
  with showdata do
  begin
    requestlive:=true;
    cachedupdates:=true;
    First;
    while not eof do
    begin
     edit;
     fieldbyname('YN').Value:='0';
     next;
    end;
  end;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
end;

end.
