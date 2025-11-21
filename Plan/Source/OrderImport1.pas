unit OrderImport1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Menus, DBTables, Buttons, ComCtrls, StdCtrls, GridsEh,
  DBGridEh, ExtCtrls,dateutils,ehlibBDE;

type
  TOrderImport = class(TForm)
    Panel2: TPanel;
    DBGrideh1: TDBGridEh;
    Panel3: TPanel;                       
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Edit2: TEdit;
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
    SMDD: TQuery;
    DS1: TDataSource;
    UpSQL1: TUpdateSQL;
    Qtemp: TQuery;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    SMDDDDBH: TStringField;
    SMDDGXLB: TStringField;
    SMDDYSBH: TStringField;
    SMDDArticle: TStringField;
    SMDDXieMing: TStringField;
    SMDDQty: TIntegerField;
    SMDDSB: TStringField;
    SMDDUSERDate: TDateTimeField;
    SMDDUSERID: TStringField;
    SMDDYN: TStringField;
    Panel4: TPanel;
    DBGrideh2: TDBGridEh;
    Panel5: TPanel;
    BD3: TBitBtn;
    BD2: TBitBtn;
    BD1: TBitBtn;
    BD4: TBitBtn;
    DDdet: TQuery;
    DS2: TDataSource;
    DDdetDDBH: TStringField;
    DDdetXXCC: TStringField;
    DDdetQty: TIntegerField;
    DDdetUSERDate: TDateTimeField;
    DDdetUSERID: TStringField;
    DDdetYN: TStringField;
    Panel6: TPanel;
    Label4: TLabel;
    CBX1: TComboBox;
    Label5: TLabel;
    CBX2: TComboBox;
    CB1: TCheckBox;
    SMDDSCYEAR: TStringField;
    SMDDSCMONTH: TStringField;
    UpDDDet: TUpdateSQL;
    SMDDGSBH: TStringField;
    SMDDSCCX: TStringField;
    Label3: TLabel;
    CBX3: TComboBox;
    DDdetDDQty: TIntegerField;
    DDdetokQty: TIntegerField;
    SMDDMEMO: TStringField;
    SMDDDepNO: TStringField;
    SMDDDAOMH: TStringField;
    SMDDSS: TQuery;
    BDelRec: TQuery;
    BB8: TBitBtn;
    Splitter1: TSplitter;
    SMDDXH: TIntegerField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure CB1Click(Sender: TObject);
    procedure BB2Click(Sender: TObject);
    procedure BB3Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BD1Click(Sender: TObject);
    procedure BB7Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure BD4Click(Sender: TObject);
    procedure DBGrideh1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure N1Click(Sender: TObject);
    procedure DDdetAfterOpen(DataSet: TDataSet);
    procedure BD2Click(Sender: TObject);
    procedure BD3Click(Sender: TObject);
    procedure DBGrideh2GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure DBGrideh2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure DBGrideh1KeyPress(Sender: TObject; var Key: Char);
    procedure BB8Click(Sender: TObject);
  private
    { Private declarations }
    procedure InitCombo();
  public
    { Public declarations }
  end;

var
  OrderImport: TOrderImport;
  sdate,edate,NDate:TDate;

implementation

uses OrderImport_DD1, main1, FunUnit;

{$R *.dfm}
//顯示日期
procedure TOrderImport.InitCombo();
var
  myYear, myMonth, myDay : Word;
  i:integer;
begin
  //
  DecodeDate(Date(), myYear, myMonth, myDay);
  for i:=0 to CBX1.Items.Count-1 do
  begin
    if strtoint(CBX1.Items[i])=myYear then
    begin
      CBX1.ItemIndex:=i;
      break;
    end;
  end;
  for i:=0 to CBX2.Items.Count-1 do
  begin
    if strtoint(CBX2.Items[i])=myMonth then
    begin
      CBX2.ItemIndex:=i;
      break;
    end;
  end;
  //
end;

procedure TOrderImport.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if BB5.enabled then
  begin
    showmessage('Pls save data first.');
    action:=canone;
  end
  else
    begin
      if BD2.Enabled then
        begin
          showmessage('Pls save the detail first.');
          action:=canone;
        end
        else
          begin
            action:=cafree;
          end;
    end;
end;

procedure TOrderImport.FormDestroy(Sender: TObject);
begin
OrderImport:=nil;
end;

procedure TOrderImport.Button1Click(Sender: TObject);
begin
  with SMDD do
  begin
    active:=false;
    sql.Clear;
    sql.add('select SMDD.*,SCGXDY.MEMO ,XXZL.DAOMH from SMDD');
    sql.add('left join SCGXDY on SCGXDY.GX=SMDD.GXLB and len(SCGXDY.GXLB)=1  ');
    sql.add('left join DDZL on DDZL.DDBH=SMDD.YSBH ');
    sql.add('left join XXZL on XXZL.XieXing=DDZL.XieXing and XXZl.SheHao=DDZL.SheHao ');
    sql.add('where SMDD.DDBH like '+''''+edit1.Text+'%'+'''');
    sql.add('      and SMDD.XieMing like '+''''+'%'+edit2.Text+'%'+'''');
    if CB1.Checked then
      begin
        sql.add('       and SMDD.SCYEAR='+''''+CBX1.Text+'''');
        sql.add('       and SMDD.SCMONTH='+''''+CBX2.Text+'''');
      end;
    if CBX3.itemindex<>0 then
      begin
        sql.add('       and SMDD.GXLB='+''''+CBX3.Text+'''');
      end;
    sql.add('      and (SMDD.GSBH='+''''+main.Edit2.text+''''+' or isnull(DDZL.GSBH,'+''''+main.Edit2.text+''''+')='+''''+main.Edit2.text+''''+')');
    sql.add('order by SMDD.DDBH,SMDD.SCCX ');
    //funcobj.WriteErrorLog(sql.Text);
    active:=true;
  end;
  DDdet.Active:=true;
  bb2.enabled:=true;
  bb3.enabled:=true;
  bb4.enabled:=true;
  bb5.enabled:=false;
  bb6.enabled:=false;
  bb7.enabled:=true;
  bb8.enabled:=true;
  bbt1.enabled:=true;
  bbt2.enabled:=true;
  bbt3.enabled:=true;
  bbt4.enabled:=true;
  bbt5.enabled:=true;
  bbt6.enabled:=true;

end;

procedure TOrderImport.CB1Click(Sender: TObject);
begin
if CB1.Checked then
  begin
    panel6.Visible:=true;
  end
  else
    begin
      panel6.Visible:=false;
    end;
end;

procedure TOrderImport.BB2Click(Sender: TObject);
    var i:integer;
    SelectDate:TDate;
begin 
  with SMDD do
  begin
    requestlive:=true;
    cachedupdates:=true;
  end;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
  BD1.Enabled:=false;
  BD4.Enabled:=false;
  N1.Enabled:=true;
  if messagedlg('You want to import order from factory ?',mtinformation,[MbYes,mbNo],0)=mrYes then
  begin
    if not panel6.Visible then
    begin
        showmessage('Pls select production month first.'+#13+' 請先選擇生產月份.') ;
        abort;
    end;
    OrderImport_DD:=TOrderImport_DD.create(self);
    with Qtemp do
    begin
        active:=false;
        sql.Clear;
        sql.add('select GSDH from BGSZL order by GSDH');
        active:=true;
        for i:=1 to recordcount do
        begin
          OrderImport_DD.CBX4.Items.Add(fieldbyname('GSDH').asstring);
          next;
        end;
        OrderImport_DD.CBX4.Text:=main.edit2.Text;
    end;
    SelectDate:=encodedate(strtoint(CBX1.Text),strtoint(CBX2.Text),1);
    OrderImport_DD.DTP1.Date:=startofthemonth(SelectDate)+5;
    OrderImport_DD.DTP2.date:=startofthemonth(incmonth(SelectDate,1))+4;
    OrderImport_DD.show;
  end else
  begin
    SMDD.insert;
  end;
end;

procedure TOrderImport.BB3Click(Sender: TObject);
begin
  if messagedlg('You really want to delete the order ?',mtconfirmation,[mbYes,mbNo],0)=mrYes then
  begin
    if SMDD.recordcount>0 then
    begin
        with SMDD do
        begin
            requestlive:=true;
            cachedupdates:=true;
            edit;
            fieldbyname('YN').Value:='0';
        end;
        SMDDSS.Active:=true;
        if SMDDSS.recordcount>0 then
        begin
            showmessage('已打印條碼標，請聯繫打標人重新列印。');
            abort;
        end;
        SMDDSS.Active:=false;
    end;
    BB5.Enabled:=true;
    BB6.Enabled:=true;
    BD1.Enabled:=false;
    BD4.Enabled:=false;
    N1.Enabled:=true;
    //dbgrideh1.columns[1].ButtonStyle:=cbsEllipsis;
  end;
end;

procedure TOrderImport.BB4Click(Sender: TObject);
begin

with SMDD do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
BB5.Enabled:=true;
BB6.Enabled:=true;
BD1.Enabled:=false;
BD4.Enabled:=false;  
N1.Enabled:=true;
//dbgrideh1.columns[1].ButtonStyle:=cbsEllipsis;
end;

procedure TOrderImport.BD1Click(Sender: TObject);
begin
with DDDet do
  begin
    requestlive:=true;
    cachedupdates:=true;
  end;
BB1.Enabled:=false;
BB2.Enabled:=false;
BB3.Enabled:=false;
BB4.Enabled:=false;
BBT1.Enabled:=false;
BBT2.Enabled:=false;
BBT3.Enabled:=false;
BBT4.Enabled:=false;
BD2.Enabled:=true;
BD3.Enabled:=true;
end;

procedure TOrderImport.BB7Click(Sender: TObject);
begin

close;
end;

procedure TOrderImport.BB6Click(Sender: TObject);
begin

  with SMDD do
  begin
    active:=false;
    cachedupdates:=false;
    requestlive:=false;
    active:=true;
  end;
  bb5.enabled:=false;
  bb6.enabled:=false;
  BD1.Enabled:=true;
  BD4.Enabled:=true;
  N1.Enabled:=false;
  //dbgrideh1.columns[1].ButtonStyle:=cbsnone;
end;

procedure TOrderImport.FormCreate(Sender: TObject);
var i:integer;
begin
  with Qtemp do
  begin
    active:=false;
    sql.Clear;
    sql.add('select distinct GX from SCGXDY order by GX');
    active:=true;
    dbgrideh1.Columns[2].picklist.Clear;
    for i:=1 to recordcount do
      begin
        dbgrideh1.Columns[2].picklist.Add(fieldbyname('GX').asstring);
        CBX3.Items.Add(fieldbyname('GX').asstring);
        next;
      end;
    active:=false;
    sql.Clear;
    sql.add('select distinct SCCX from SCGXDY where SCCX is not null order by SCCX');
    active:=true;
    for i:=1 to recordcount do
      begin
        dbgrideh1.Columns[10].picklist.Add(fieldbyname('SCCX').asstring);
        next;
      end;
    active:=false;
    sql.Clear;
    sql.add('select getdate() as NDate ');
    active:=true;
    NDate:=fieldbyname('NDate').Value;
    active:=false;
    sql.Clear;
    sql.add('select GSDH from BGSZL order by GSDH');
    active:=true;
    for i:=1 to recordcount do
      begin
        dbgrideh1.Columns[6].picklist.Add(fieldbyname('GSDH').asstring);
        next;
      end;
    active:=false;
  end;
  InitCombo();
end;

procedure TOrderImport.BB5Click(Sender: TObject);
var YSBH,DDBH:string;
begin

  DDDet.Active:=false;
  try
    with SMDD do
    begin
      first;
      while not eof do
      begin
          case updatestatus of
            usinserted:
            begin
              if fieldbyname('YN').isnull then
                begin
                  edit;
                  fieldbyname('USERDate').Value:=NDate;
                  fieldbyname('USERID').Value:=main.Edit1.text;
                  fieldbyname('YN').Value:='1';
                  if fieldbyname('SB').IsNull then
                  begin
                    fieldbyname('YSBH').Value:=fieldbyname('DDBH').Value;
                    fieldbyname('SB').Value:='3';
                    fieldbyname('Qty').Value:=0;
                  end;
                  post;
                  upSQL1.Apply(ukinsert);
                  //20160819 直接更新SIZE明細
                  with Qtemp do
                  begin
                    active:=false;
                    sql.Clear;
                    sql.add('update SMDDS ');
                    sql.add('set YN='+''''+'1'+'''');
                    sql.add('where DDBH='+''''+SMDD.FieldByName('DDBH').Value+'''');

                    sql.add('update SMDD ');
                    sql.add('set Qty=(select IsNull(sum(Qty),0) as Qty from SMDDS where SMDDS.DDBH='+''''+SMDD.fieldbyname('DDBH').Value+''''+')');
                    sql.add('where SMDD.DDBH='+''''+SMDD.fieldbyname('DDBH').Value+'''');
                    execsql;
                  end;
                  //
                end else
                  delete;
            end;
            usmodified:
            begin
              if fieldbyname('YN').value='0' then
                begin
                  DDBH:=fieldbyname('DDBH').Value;
                  upSQL1.Apply(ukdelete);
                  Qtemp.Active:=false;
                  Qtemp.SQL.Clear;
                  Qtemp.SQL.add('select DDBH from SMDD ');
                  Qtemp.sql.add('where DDBH='+''''+DDBH+'''');
                  Qtemp.Active:=true;
                  if Qtemp.recordcount=0 then
                  begin
                      Qtemp.Active:=false;
                      Qtemp.SQL.clear;
                      Qtemp.SQL.add('delete SMDDS ');
                      Qtemp.SQL.add('where DDBH='+''''+DDBH+'''');
                      Qtemp.execsql;
                      Qtemp.active:=false;
                  end;
                  with BDelRec do
                  begin
                    active:=false;
                    sql.Clear;
                    sql.add('insert into BDelRec ');
                    sql.add('(TableName ,TNO,CLBH,OldID,DelID,DelDate)');
                    sql.add('values ('+''''+'SMDD'+''''+','+''''+SMDD.fieldbyname('DDBH').Value+'''');
                    sql.add(','+''''+SMDD.fieldbyname('GXLB').Value+''''+','+''''+SMDD.fieldbyname('USERID').Value+''''+',');
                    sql.add(''''+main.Edit1.Text+''''+',getdate())');
                    execsql;
                    active:=false;
                  end;
                end
                else
                  begin
                    edit;
                    fieldbyname('USERDate').Value:=NDate;
                    fieldbyname('USERID').Value:=main.Edit1.text;
                    fieldbyname('YN').Value:='1';
                    upSQL1.Apply(ukmodify);
                  end;
            end;
          end;
          next;
        end;
      active:=false;
      requestlive:=false;
      cachedupdates:=false;
      active:=true;
      BB5.Enabled:=false;
      BB6.Enabled:=false;
      BD1.Enabled:=true;
      BD4.Enabled:=true;
      N1.Enabled:=false;
    end;
  except
    showmessage('Have wrong.');
  end;

  DDDet.Active:=true;

end;

procedure TOrderImport.BD4Click(Sender: TObject);
var n:integer;
DDBH,GXLB:string;
begin
  if SMDD.recordcount=0 then
  begin
    abort;
  end; 
//SB字段分1 為正常訂單，2 為接單發外包 ，3 為接外包訂單


  if SMDD.FieldByName('SB').value=3   then
  begin
    DDDet.requestlive:=true;
    DDDet.cachedupdates:=true;
    DDDet.Insert;
    BD2.enabled:=true;
    BD3.enabled:=true;
    BB1.Enabled:=false;
    BB2.Enabled:=false;
    BB3.Enabled:=false;
    BB4.Enabled:=false;
    BBT1.Enabled:=false;
    BBT2.Enabled:=false;
    BBT3.Enabled:=false;
    BBT4.Enabled:=false;
    abort;
  end;
  if messagedlg('You want to import from order detail?',mtinformation,[mbYes,mbNo],0)=mrYes then
  begin
      with Qtemp do
      begin
        active:=false;
        sql.Clear;
        sql.add('update SMDDS ');
        sql.add('set YN='+''''+'1'+'''');
        sql.add('where DDBH='+''''+SMDD.FieldByName('DDBH').Value+'''');

        sql.add('update SMDD ');
        sql.add('set Qty=(select IsNull(sum(Qty),0) as Qty from SMDDS where SMDDS.DDBH='+''''+SMDD.fieldbyname('DDBH').Value+''''+')');
        sql.add('where SMDD.DDBH='+''''+SMDD.fieldbyname('DDBH').Value+'''');
        execsql;
      end;
      with SMDD do
      begin
        DDBH:=fieldbyname('DDBH').Value;
        GXLB:=fieldbyname('GXLB').Value;
        active:=false;
        DDDet.active:=false;
        active:=true;
        if locate('DDBH;GXLB',vararrayof([DDBH,GXLB]),[]) then
          begin
            showmessage('Succeed');
          end;
        DDDet.active:=true;
      end;
  end
  else
    begin
      DDDet.requestlive:=true;
      DDDet.cachedupdates:=true;
      DDDet.Insert;
      BD2.enabled:=true;
      BD3.enabled:=true;
      BB1.Enabled:=false;
      BB2.Enabled:=false;
      BB3.Enabled:=false;
      BB4.Enabled:=false;
      BBT1.Enabled:=false;
      BBT2.Enabled:=false;
      BBT3.Enabled:=false;
      BBT4.Enabled:=false;
      abort;
    end;
end;

procedure TOrderImport.DBGrideh1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if SMDD.FieldByName('Qty').value=0 then
  begin
    dbgrideh1.canvas.font.color:=clyellow;
  end;
  if SMDD.FieldByName('YN').isnull then
  begin
    dbgrideh1.canvas.font.color:=clLime;
  end;  
  if SMDD.FieldByName('YN').value='0' then
  begin
    dbgrideh1.canvas.font.color:=clred;
  end;
end;

procedure TOrderImport.N1Click(Sender: TObject);
begin
if SMDD.FieldByName('SB').value='1' then
  begin
    SMDD.Edit;
    SMDD.FieldByName('SB').Value:='2';
    SMDD.Post;
  end;
end;

procedure TOrderImport.DDdetAfterOpen(DataSet: TDataSet);
begin
  if SMDD.RequestLive then
  begin
    BD1.Enabled:=false;
    BD2.Enabled:=false;
    BD3.Enabled:=false;
    BD4.Enabled:=false;
    DDDet.requestlive:=false;
    DDDet.cachedupdates:=false;
  end else
  begin
      BD1.Enabled:=true; 
      BD4.Enabled:=true;  
      BD2.Enabled:=false;
      BD3.Enabled:=false;
  end;
end;

procedure TOrderImport.BD2Click(Sender: TObject);
var DDBH,GXLB:string;
begin
try
  with DDDet do
    begin
      first;
      while not eof do
        begin
          if fieldbyname('XXCC').isnull then
            begin
              showmessage('Pls key size fiest');
              abort;
            end;
          if fieldbyname('Qty').isnull then
            begin
              showmessage('Pls key size fiest');
              abort;
            end;
          next;
        end;
          first;
      while not eof do
        begin 
          case updatestatus of
            usinserted:
              begin
                if fieldbyname('Qty').value<>0 then
                  begin
                    edit;  
                    fieldbyname('DDBH').value:=SMDD.fieldbyname('DDBH').value;
                    fieldbyname('USERDATE').value:=NDate;
                    fieldbyname('USERID').value:=main.edit1.text;
                    fieldbyname('YN').value:='1';
                    post;
                    upDDDet.Apply(ukinsert);
                  end;
              end;
            usmodified:
              begin
                if fieldbyname('Qty').value=0 then
                  begin
                    upDDDet.Apply(ukdelete);
                  end
                  else
                    begin
                      edit;
                      fieldbyname('USERDATE').value:=NDate;
                      fieldbyname('USERID').value:=main.edit1.text;
                      fieldbyname('YN').value:='1';
                      post;
                      upDDDet.Apply(ukmodify);
                    end;
              end;
          end;
          next;
        end;
      active:=false;
      requestlive:=false;
      cachedupdates:=false;
    end; 
    with Qtemp do
      begin
        active:=false;
        sql.Clear;
        sql.add('update SMDD ');
        sql.add('set Qty=(select sum(Qty) as Qty from SMDDS where SMDDS.DDBH='+''''+SMDD.fieldbyname('DDBH').Value+''''+')');
        sql.add('where SMDD.DDBH='+''''+SMDD.fieldbyname('DDBH').Value+'''');
        execsql;
      end;
    with SMDD do
      begin
        DDBH:=fieldbyname('DDBH').Value;
        GXLB:=fieldbyname('GXLB').Value;
        active:=false;
        active:=true;
        if locate('DDBH;GXLB',vararrayof([DDBH,GXLB]),[]) then
          begin
            showmessage('Succeed');
          end;
      end; 
  DDDet.active:=true;
  BB1.Enabled:=true;
  BB2.Enabled:=true;
  BB3.Enabled:=true;
  BB4.Enabled:=true;
  BBT1.Enabled:=true;
  BBT2.Enabled:=true;
  BBT3.Enabled:=true;
  BBT4.Enabled:=true;
  BD2.Enabled:=false;
  BD3.Enabled:=false;
except
  showmessage('Have wrong.');
end;


end;

procedure TOrderImport.BD3Click(Sender: TObject);
begin
with DDDet do
  begin
    active:=false;
    requestlive:=false;
    cachedupdates:=false;
    active:=true;
  end;
BB1.Enabled:=true;
BB2.Enabled:=true;
BB3.Enabled:=true;
BB4.Enabled:=true;
BBT1.Enabled:=true;
BBT2.Enabled:=true;
BBT3.Enabled:=true;
BBT4.Enabled:=true;
BD2.Enabled:=false;
BD3.Enabled:=false;
end;

procedure TOrderImport.DBGrideh2GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if DDDet.FieldByName('YN').isnull  then
  begin
    dbgrideh2.canvas.font.color:=clLime;
  end;
  if DDDet.FieldByName('Qty').value=0  then
  begin
    dbgrideh2.canvas.font.color:=clred;
  end;  
end;

procedure TOrderImport.DBGrideh2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin

if DDDet.FieldByName('DDQty').value=DDDet.FieldByName('okQty').value then
  begin
    dbgrideh2.canvas.brush.Color:=$00FCCBCD;
    DBGrideh2.DefaultDrawColumnCell(Rect,DataCol,Column, State);
  end;
end;

procedure TOrderImport.DBGrideh1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#46 then
    BB3.Click;
end;

procedure TOrderImport.BB8Click(Sender: TObject);
var i:integer;
begin
  if messagedlg('You really want to delete all the order ?',mtconfirmation,[mbYes,mbNo],0)=mrYes then
  begin
    if SMDD.RequestLive then
    begin
      showmessage('Pls save Master data first.');
      abort;
    end;

    if SMDD.recordcount>0 then
    begin
        DDdet.Active:=false;
        SMDDSS.Active:=true;
        with SMDD do
        begin
          requestlive:=true;
          cachedupdates:=true;
          SMDD.First;
          for i:=1 to SMDD.RecordCount do
          begin
            edit;
            fieldbyname('YN').Value:='0';
            if SMDDSS.recordcount>0 then
            begin
                showmessage('已打印條碼標，請聯繫打標人重新列印。');
                abort;
            end;            
            SMDD.next;
          end;
        end;
        DDdet.Active:=true;
        SMDDSS.Active:=false;
    end;
    BB5.Enabled:=true;
    BB6.Enabled:=true;
    BD1.Enabled:=false;
    BD4.Enabled:=false;
    N1.Enabled:=true;
  end;
end;

end.
