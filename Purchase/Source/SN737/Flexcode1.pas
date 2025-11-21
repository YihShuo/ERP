unit Flexcode1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, GridsEh, DBGridEh,comobj, DBClient,
  DBCtrls, DB, DBTables, AppEvnts, Menus, ComCtrls;

type
  TFlexCode = class(TForm)
    Panel1: TPanel;
    tmpQry: TQuery;
    Query2: TQuery;
    DataSource2: TDataSource;
    UpdateSQL2: TUpdateSQL;
    Query2cldh: TStringField;
    Query2ywpm: TStringField;
    Query2zwpm: TStringField;
    Query2userid: TStringField;
    Query2userdate: TDateTimeField;
    Query2maincldh: TStringField;
    Query2cldhflex: TStringField;
    Query2cldhflexdes: TStringField;
    PageControl1: TPageControl;
    Supplier: TTabSheet;
    Panel9: TPanel;
    DBGridEh2: TDBGridEh;
    Panel8: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Edit3: TEdit;
    Button2: TButton;
    Edit4: TEdit;
    CheckBox2: TCheckBox;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Panel7: TPanel;
    bbb1: TBitBtn;
    bbb3: TBitBtn;
    bbb4: TBitBtn;
    bbb5: TBitBtn;
    bbb6: TBitBtn;
    bbb2: TBitBtn;
    Query2ColorFlex: TStringField;
    Query2DCName: TStringField;
    Query2Signed: TStringField;
    Query2ShippedDate: TDateTimeField;
    Query2SharedDCs: TStringField;
    Query2ExpiredDate: TDateTimeField;
    Query2ExcelUpdated: TStringField;
    Query2A4Comfirm: TStringField;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    Label2: TLabel;
    CB1: TCheckBox;
    BExcel: TButton;
    Query2TrackingA4Comfirm: TStringField;
    Query2Readable: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure bbb1Click(Sender: TObject);
    procedure bbb4Click(Sender: TObject);
    procedure bbb5Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BExcelClick(Sender: TObject);
    procedure bbb6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FlexCode: TFlexCode;

implementation

uses main1;

{$R *.dfm}

procedure TFlexCode.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if bbb5.Enabled then
  begin
    Action := caNone;
    ShowMessage('Please save the data first');
  end
  else begin
    Action := caFree;
  end;
end;

procedure TFlexCode.FormDestroy(Sender: TObject);
begin
  Flexcode := nil;
end;

procedure TFlexCode.Button2Click(Sender: TObject);
begin
  with query2 do
  begin
    Active := false;
    sql.Clear;
    sql.add('select top 300 a.cldh,clzl_flex.cldhflex,a.ywpm,a.zwpm,clzl_flex.userid,clzl_flex.userdate,clzl_flex.cldh as maincldh,clzl_flexs.cldhflexdes,clzl_flex.ColorFlex,');
    sql.add('clzl_flex.DCName, clzl_flex.Signed, clzl_flex.ShippedDate, clzl_flex.SharedDCs, clzl_flex.ExpiredDate, clzl_flex.ExcelUpdated, clzl_flex.Readable, cgzl_color2.A4Comfirm, cgzl_color2.TrackingA4Comfirm from clzl a');
    sql.add('left join clzl_flex on clzl_flex.cldh=a.cldh');
    sql.add('left join clzl_flexs on clzl_flex.cldhflex=clzl_flexs.cldhflex');
    sql.add('left join cgzl_color2 on cgzl_color2.clbh = a.cldh');
    sql.add('where 1=1 ');
    if checkbox2.Checked then
      sql.add('and (clzl_flex.cldh is null or clzl_flex.cldhflex='''') ');
    if edit3.text<>'' then
      sql.Add('and a.cldh like '''+edit3.text+'%'+''' ');
    if edit4.text<>'' then
      sql.Add('and a.ywpm like '''+'%'+edit4.text+'%'+'''');
    if CB1.Checked then
      sql.add('and convert(datetime, convert(varchar, clzl_flex.userdate, 111)) between ''' + FormatDatetime('yyyy/MM/dd', DTP1.Date) + ''' and ''' + FormatDatetime('yyyy/MM/dd', DTP2.Date) + '''');
    if (edit5.text<>'') or (edit6.text<>'') or (edit7.text<>'') then
    begin
      sql.add('and 1=2 ');
      sql.add('union ');
      sql.add('select a.cldh,clzl_flex.cldhflex,clzl.ywpm,clzl.zwpm,clzl_flex.userid,clzl_flex.userdate,clzl_flex.cldh as maincldh,clzl_flexs.cldhflexdes,clzl_flex.ColorFlex,');
      sql.add('clzl_flex.DCName, clzl_flex.Signed, clzl_flex.ShippedDate, clzl_flex.SharedDCs, clzl_flex.ExpiredDate, clzl_flex.ExcelUpdated, cgzl_color2.A4Comfirm, cgzl_color2.TrackingA4Comfirm from (');
      sql.add('  select kfxxzl.devcode,ypzl.article,kfxxzl.xieming,ypzls.clbh as cldh,kfxxzl.khdh from ypzls');
      sql.add('  left join ypzl on ypzl.ypdh=ypzls.ypdh');
      sql.add('  left join kfxxzl on kfxxzl.xiexing=ypzl.xiexing and kfxxzl.shehao=ypzl.shehao');
      sql.add('  where kfxxzl.khdh=''036''');
      if edit7.text<>'' then
        sql.add('  and ypzl.ypdh = '''+edit7.text+'''');
      if edit6.text<>'' then
        sql.add('  and ypzl.kfjd = '''+edit6.text+'''');
      if edit5.text<>'' then
        sql.add('  and kfxxzl.jijie= '''+edit5.text+'''');
      sql.add('  union');
      sql.add('  select kfxxzl.devcode,ypzl.article,kfxxzl.xieming,clzhzl.cldh1 as cldh,kfxxzl.khdh from ypzls');
      sql.add('  inner join clzhzl on clzhzl.cldh=ypzls.clbh');
      sql.add('  left join ypzl on ypzl.ypdh=ypzls.ypdh');
      sql.add('  left join kfxxzl on kfxxzl.xiexing=ypzl.xiexing and kfxxzl.shehao=ypzl.shehao');
      sql.add('  where kfxxzl.khdh=''036''');
      if edit7.text<>'' then
        sql.add('  and ypzl.ypdh = '''+edit7.text+'''');
      if edit6.text<>'' then
        sql.add('  and ypzl.kfjd = '''+edit6.text+'''');
      if edit5.text<>'' then
        sql.add('  and kfxxzl.jijie= '''+edit5.text+'''');
      sql.add('  union');
      sql.add('  select devcode,article,xieming,clzhzl.cldh1 as cldh,khdh from (');
      sql.add('    select kfxxzl.devcode,ypzl.article,kfxxzl.xieming,ypzls.clbh as cldh,kfxxzl.khdh from ypzls');
      sql.add('    inner join clzhzl on clzhzl.cldh=ypzls.clbh');
      sql.add('    left join ypzl on ypzl.ypdh=ypzls.ypdh');
      sql.add('    left join kfxxzl on kfxxzl.xiexing=ypzl.xiexing and kfxxzl.shehao=ypzl.shehao');
      sql.add('    where kfxxzl.khdh=''036'' ');
      if edit7.text<>'' then
        sql.add('    and ypzl.ypdh = '''+edit7.text+'''');
      if edit6.text<>'' then
        sql.add('    and ypzl.kfjd = '''+edit6.text+'''');
      if edit5.text<>'' then
        sql.add('    and kfxxzl.jijie= '''+edit5.text+'''');
      sql.add('  )clzhzl2');
      sql.add('  inner join clzhzl on clzhzl.cldh=clzhzl2.cldh');
      sql.add(')a');
      sql.add('left join clzl_flex on clzl_flex.cldh=a.cldh');
      sql.add('left join clzl on clzl.cldh=a.cldh');
      sql.add('left join clzl_flexs on clzl_flex.cldhflex=clzl_flexs.cldhflex');
      sql.add('left join cgzl_color2 on cgzl_color2.clbh = a.cldh');
      sql.add('where 1=1');
      if checkbox2.Checked then
        sql.add('and (clzl_flex.cldh is null or clzl_flex.cldhflex='''') ');
      if edit3.text<>'' then
        sql.Add('and a.cldh like '''+edit3.text+'%'+''' ');
      if edit4.text<>'' then
        sql.Add('and clzl.ywpm like '''+'%'+edit4.text+'%'+'''');
      if CB1.Checked then
        sql.add('and convert(datetime, convert(varchar, clzl_flex.userdate, 111)) between ''' + FormatDatetime('yyyy/MM/dd', DTP1.Date) + ''' and ''' + FormatDatetime('yyyy/MM/dd', DTP2.Date) + '''');
      sql.add('group by a.cldh,clzl_flex.cldhflex,clzl.ywpm,clzl.zwpm,clzl_flex.userid,clzl_flex.userdate,clzl_flex.cldh,clzl_flexs.cldhflexdes,clzl_flex.ColorFlex,');
      sql.add('clzl_flex.DCName, clzl_flex.Signed, clzl_flex.ShippedDate, clzl_flex.SharedDCs, clzl_flex.ExpiredDate, clzl_flex.ExcelUpdated, cgzl_color2.A4Comfirm, cgzl_color2.TrackingA4Comfirm');
      sql.add('order by a.cldh');
    end;
    Active := true;
  end;
  bbb4.Enabled := true;
end;

procedure TFlexCode.bbb1Click(Sender: TObject);
begin
  Panel8.Visible := true;
end;

procedure TFlexCode.bbb4Click(Sender: TObject);
begin
  with query2 do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
  bbb4.Enabled:=false;
  bbb5.enabled:=true;
  bbb6.Enabled:=true;
end;


procedure TFlexCode.bbb5Click(Sender: TObject);
var
  i:integer;
  NDate:TDate;
begin
  with tmpqry do          //取服務器的年月值
  begin
    active:=false;
    sql.Clear;
    sql.Add('select getdate() as NDate ');
    active:=true;
    NDate:=fieldbyname('Ndate').Value;
    active:=false;
  end;

  try
    query2.cachedupdates:=true;
    query2.requestlive:=true;
    query2.first;
    for i:=1 to query2.RecordCount do
    begin
      case query2.updatestatus of
      usmodified:
        if query2.FieldByName('maincldh').isnull then
        begin
          with tmpqry do
          begin
            active:=false;
            sql.Clear;
            sql.Add(' insert clzl_flex (cldh) values(');
            sql.Add(' '''+query2.fieldbyname('cldh').AsString+'''');
            sql.Add(')');
            execsql;
          end;
          query2.edit;
          query2.FieldByName('userID').Value:=main.edit1.text;
          query2.FieldByName('userdate').Value:=Ndate;
          UpdateSQL2.apply(ukmodify);
        end
        else begin
          query2.edit;
          query2.FieldByName('userID').Value:=main.edit1.text;
          query2.FieldByName('userdate').Value:=Ndate;
          UpdateSQL2.apply(ukmodify);
        end;
      end;
      query2.next;
    end;

    with query2 do
    begin
      active:=false;
      requestlive:=false;
      cachedupdates:=false;
      active:=true;
    end;
    bbb4.Enabled:=true;
    bbb5.Enabled:=false;
    bbb6.Enabled:=false;
  except
    Messagedlg('Have wrong,can not save!',mtwarning,[mbyes],0);
  end;
end;

procedure TFlexCode.FormCreate(Sender: TObject);
begin
  DTP1.Date := Date;
  DTP2.Date := Date - 7;
end;

procedure TFlexCode.BExcelClick(Sender: TObject);
var
  eclApp, WorkBook: OleVariant;
  i, j: integer;
begin
  if Query2.Active then
  begin
    try
      eclApp := CreateOleObject('Excel.Application');
      WorkBook := CreateOleObject('Excel.Sheet');
    except
      Application.MessageBox('No Mcrosoft Excel','Microsoft Excel', MB_OK + MB_ICONWarning);
      Exit;
    end;

    try
      WorkBook := eclApp.Workbooks.Add;
      for i:=0 to Query2.fieldCount-1 do
      begin
        eclApp.Cells(1,i+1) := Query2.fields[i].FieldName;
      end;
      Query2.First;
      j:=2;
      while not Query2.Eof do
      begin
        for i:=0 to Query2.FieldCount-1 do
        begin
          eclApp.Cells(j, i+1) := Query2.Fields[i].Value;
        end;
        Query2.Next;
        Inc(j);
      end;
      eclapp.Columns.Autofit;
      ShowMessage('Succeed');
      eclApp.Visible := True;
    except on F:Exception do
      ShowMessage(F.Message);
    end;
  end;
end;

procedure TFlexCode.bbb6Click(Sender: TObject);
begin
  with query2 do
  begin
    active:=false;
    requestlive:=false;
    cachedupdates:=false;
    active:=true;
  end;
  
  bbb4.Enabled:=true;
  bbb5.Enabled:=false;
  bbb6.Enabled:=false;
end;

end.
