unit Maintenance_item1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, Mask, DBCtrls, StdCtrls,
  ComCtrls, Buttons, ExtCtrls, Comobj, Menus, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, DBAxisGridsEh;

type
  TMaintenance_item = class(TForm)
    Panel1: TPanel;
    BB2: TBitBtn;
    BB3: TBitBtn;
    BB4: TBitBtn;
    BB5: TBitBtn;
    BB6: TBitBtn;
    BB7: TBitBtn;
    bbt6: TBitBtn;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Edit2: TEdit;
    DBGridEh1: TDBGridEh;
    TSCD_Maintenance_item: TQuery;
    UpMas: TUpdateSQL;
    DS1: TDataSource;
    TmpQuery: TQuery;
    Label3: TLabel;
    Edit3: TEdit;
    TSCD_Maintenance_itemLSBH: TStringField;
    TSCD_Maintenance_itemMon: TBooleanField;
    TSCD_Maintenance_itemSea: TBooleanField;
    TSCD_Maintenance_itemYears: TBooleanField;
    TSCD_Maintenance_itemUSERID: TStringField;
    TSCD_Maintenance_itemUSERDATE: TDateTimeField;
    TSCD_Maintenance_itemYN: TStringField;
    SCKYears: TCheckBox;
    SCKMon: TCheckBox;
    SCKSea: TCheckBox;
    TSCD_Maintenance_itemsno: TIntegerField;
    TSCD_Maintenance_itemMaintenance_item: TStringField;
    TSCD_Maintenance_itemChinese_item: TStringField;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BB2Click(Sender: TObject);
    procedure BB3Click(Sender: TObject);
    procedure BB1Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure BB4Click(Sender: TObject);
    procedure bbt6Click(Sender: TObject);
    procedure TSCD_Maintenance_itemAfterOpen(DataSet: TDataSet);
    procedure Unlock1Click(Sender: TObject);
    procedure Lock1Click(Sender: TObject);
    procedure TSCD_Maintenance_itemBeforeInsert(DataSet: TDataSet);
    procedure TSCD_Maintenance_itemAfterInsert(DataSet: TDataSet);
  private
    NDate:TDate;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Maintenance_item: TMaintenance_item;

implementation

uses main1, FunUnit;

{$R *.dfm}

procedure TMaintenance_item.FormCreate(Sender: TObject);
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
end;

procedure TMaintenance_item.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=CaFree;
end;

procedure TMaintenance_item.FormDestroy(Sender: TObject);
begin
  Maintenance_item:=nil;
end;



procedure TMaintenance_item.Button1Click(Sender: TObject);
var inval :string;
begin
  if Length(Edit1.Text)>3 then
  begin
    with TSCD_Maintenance_item do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('select * from TSCD_Maintenance_item');
      SQL.Add(' where TSCD_Maintenance_item.LSBH = '''+Edit1.Text+''' ');
      if Edit2.Text <> '' then
        SQL.Add('   and TSCD_Maintenance_item.Maintenance_item like ''%'+Edit2.Text+'%'' ');
      if Edit3.Text <> '' then SQL.Add('   and TSCD_Maintenance_item.Chinese_item like ''%'+Edit3.Text+'%'' ');
      if SCKMon.Checked then SQL.Add('   and TSCD_Maintenance_item.Mon=1');
      if SCKYears.Checked then SQL.Add('   and TSCD_Maintenance_item.Years=1');
      if SCKSea.Checked then SQL.Add('   and TSCD_Maintenance_item.Sea=1');
      SQL.add(' order by TSCD_Maintenance_item.LSBH');
      //funcObj.WriteErrorLog(sql.Text);
      //showmessage(sql.Text);
      Active:=true;
    end;
  end
  else
  begin
    showmessage('LSBH length must > 3 !!!');
  end;
  //Panel2.Visible:=false;
end;


procedure TMaintenance_item.BB2Click(Sender: TObject);
begin
  with TSCD_Maintenance_item do
  begin
    requestlive:=true;
    cachedupdates:=true;
    insert;
    TSCD_Maintenance_item.FieldByName('LSBH').Value := Edit1.Text;
    TSCD_Maintenance_item.FieldByName('Mon').Value := 0;
    TSCD_Maintenance_item.FieldByName('Sea').Value := 0;
    TSCD_Maintenance_item.FieldByName('Years').Value := 0;
  end;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
end;

procedure TMaintenance_item.BB3Click(Sender: TObject);
begin
  with TSCD_Maintenance_item do
  begin
    if fieldbyname('USERID').value=main.edit1.Text then
    begin
      requestlive:=true;
      cachedupdates:=true;
      edit;
      fieldbyname('YN').Value:='0';
    end else
    begin
      showmessage('It is not yours,can not delete.');
    end;
  end;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
end;

procedure TMaintenance_item.BB1Click(Sender: TObject);
begin
  Panel2.Visible:=true;
end;

procedure TMaintenance_item.BB5Click(Sender: TObject);
var i:integer;
rows:integer;
begin

  {if (TSCD_Maintenance_item.fieldbyname('ZSDH').AsString = '') or (TSCD_Maintenance_item.fieldbyname('ZSDH').AsString = Null) then
  begin
    showmessage('Nhap ma nha cung ung.');
    abort;
  end;}
  try
    TSCD_Maintenance_item.first;
    for i:=1 to TSCD_Maintenance_item.RecordCount do
    begin
    rows:=0;
    if TSCD_Maintenance_item.fieldbyname('Mon').AsBoolean then inc(rows);
    if TSCD_Maintenance_item.fieldbyname('Sea').AsBoolean then inc(rows);
    if TSCD_Maintenance_item.fieldbyname('Years').AsBoolean then inc(rows);
      case TSCD_Maintenance_item.updatestatus of
        usinserted:
          begin
             if rows=1 then
             begin
                with TmpQuery do
                 begin
                   active:=false;
                   sql.Clear;
                   sql.Add('Select LSBH from TSCD_Maintenance_item where LSBH='''+TSCD_Maintenance_item.FieldByName('LSBH').AsString+''' and [Maintenance_item]='''+TSCD_Maintenance_item.fieldbyname('Maintenance_item').AsString+'''');
                   active:=true;
                 end;
                 if TmpQuery.RecordCount=0 then
                 begin
                   //
                   TSCD_Maintenance_item.edit;
                   TSCD_Maintenance_item.fieldbyname('LSBH').AsString;
                   TSCD_Maintenance_item.FieldByName('USERID').Value:=main.edit1.text;
                   TSCD_Maintenance_item.FieldByName('USERDATE').Value:=Ndate;
                   TSCD_Maintenance_item.FieldByName('YN').Value:='1';
                   upMas.apply(ukinsert);
                 end else
                 begin
                   Showmessage('Code is exists!');
                 end;
                 TmpQuery.Active:=false;
             end
             else
             begin
               showmessage('Check type error !!!!');
             end;
          end;
        usmodified:
           begin
            if rows=1 then
             begin
                if TSCD_Maintenance_item.fieldbyname('YN').value='0'then
                begin
                  with TmpQuery do
                  begin
                    active:=false;
                    sql.Clear;
                    sql.add('insert into BDelRec ');
                        sql.add('(TableName ,TNO,CLBH,OldID,DelID,DelDate)');
                        sql.add('values ('+''''+'LSBH'+''''+','+''''+TSCD_Maintenance_item.fieldbyname('LSBH').Value+'''');
                        sql.add(','+''''+' '+''''+','+''''+TSCD_Maintenance_item.fieldbyname('USERID').Value+''''+',');
                        sql.add(''''+main.Edit1.Text+''''+',getdate())');
                        execsql;
                    active:=false;
                  end;
                  upMas.apply(ukdelete);
                end else
                begin
                  TSCD_Maintenance_item.edit;
                  TSCD_Maintenance_item.FieldByName('USERID').Value:=main.edit1.text;
                  TSCD_Maintenance_item.FieldByName('USERDATE').Value:=Ndate;
                  upMas.apply(ukmodify);
                end;
             end
             else
              begin
                showmessage('Check type error !!!!');
              end;
           end;
      end;
     TSCD_Maintenance_item.next;
    end;
    TSCD_Maintenance_item.active:=false;
    TSCD_Maintenance_item.cachedupdates:=false;
    TSCD_Maintenance_item.requestlive:=false;
    TSCD_Maintenance_item.active:=true;
    BB5.enabled:=false;
    BB6.enabled:=false;
    showmessage('Succeed.');
  except
    Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
  end;
end;

procedure TMaintenance_item.BB6Click(Sender: TObject);
begin
  with TSCD_Maintenance_item do
  begin
    active:=false;
    requestlive:=false;
    cachedupdates:=false;
    active:=true;
  end;
  bb5.enabled:=false;
  bb6.enabled:=false;
  {DBGridEh1.columns[0].ButtonStyle:=cbsNone;
  DBGridEh1.columns[8].ButtonStyle:=cbsNone;  }
end;

procedure TMaintenance_item.DBGridEh1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if TSCD_Maintenance_item.FieldByName('YN').value='0' then
  begin
    DBGridEh1.canvas.font.color:=clred;
  end;
end;

procedure TMaintenance_item.BB4Click(Sender: TObject);
begin
  with TSCD_Maintenance_item do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
end;

procedure TMaintenance_item.bbt6Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin
    if  TSCD_Maintenance_item.active  then
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
      for  i:=0  to TSCD_Maintenance_item.fieldcount-1   do
      begin
        eclApp.Cells(1,i+1):=TSCD_Maintenance_item.fields[i].FieldName;
      end;
      TSCD_Maintenance_item.First;
      j:=2;
      while   not   TSCD_Maintenance_item.Eof   do
        begin
          for   i:=0   to  TSCD_Maintenance_item.fieldcount-1  do
          begin
            eclApp.Cells(j,i+1):=TSCD_Maintenance_item.Fields[i].AsString;
          end;
        TSCD_Maintenance_item.Next;
        inc(j);
      end;
      eclapp.columns.autofit;
      eclApp.Visible:=True;
      showmessage('Succeed');
    except
      on   F:Exception   do
          showmessage(F.Message);
      end;
    end;
end;

procedure TMaintenance_item.TSCD_Maintenance_itemAfterInsert(DataSet: TDataSet);
begin
  TSCD_Maintenance_item.FieldByName('LSBH').AsString := Edit1.Text;
  TSCD_Maintenance_item.FieldByName('Mon').Value := 0;
  TSCD_Maintenance_item.FieldByName('Sea').Value := 0;
  TSCD_Maintenance_item.FieldByName('Years').Value := 0;
end;

procedure TMaintenance_item.TSCD_Maintenance_itemAfterOpen(DataSet: TDataSet);
begin
  BB2.Enabled:=true;
  BB3.Enabled:=true;
  BB4.Enabled:=true;
end;

procedure TMaintenance_item.TSCD_Maintenance_itemBeforeInsert(
  DataSet: TDataSet);
begin
  tmpQuery.Active := false;
  tmpQuery.SQL.Clear;
  tmpQuery.SQL.Add('Select top 1 * from TSCD_SB where LSBH = '''+Edit1.Text+'''');
  tmpQuery.Active := true;
  if tmpQuery.IsEmpty then begin
    showmessage('There is no LSBH Data in DataBase!');
    exit;
  end;
end;

procedure TMaintenance_item.Unlock1Click(Sender: TObject);
begin
  if MessageDlg('Are you sure Unlock?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    with TmpQuery do
    begin
      Active := False;
      SQL.Clear;
      SQL.Add('UPDATE TSCD_Maintenance_item ');
      SQL.Add('SET Mon = ''N'',Sea = ''N'',Years = ''N'', UserID = ''' + main.Edit1.Text + ''', UserDate = getdate() ');
      SQL.Add('WHERE LSBH = ''' + TSCD_Maintenance_item.FieldByName('LSBH').AsString + ''' ');
      ExecSQL;
    end;
    Button1.Click;
  end;
end;

procedure TMaintenance_item.Lock1Click(Sender: TObject);
begin
  if MessageDlg('Are you sure Lock?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    with TmpQuery do
    begin
    active:=false;
    sql.Clear;
    sql.Add(' update TSCD_Maintenance_item ');
    sql.Add(' set Mon = ''Y'',Sea = ''Y'',Years = ''Y'',UserID='''+main.Edit1.Text+''',UserDate=getdate() ');
    sql.Add(' where LSBH = '''+TSCD_Maintenance_item.FieldByName('LSBH').AsString+''' ');
    execsql;
  end;
    Button1.Click;
  end;
end;
end.
