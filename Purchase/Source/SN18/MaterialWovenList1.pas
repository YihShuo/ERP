unit MaterialWovenList1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBTables, DB, StdCtrls, GridsEh, DBGridEh, Buttons, ExtCtrls,
  ComCtrls, comobj, fununit;

type
  TMaterialWovenList = class(TForm)
    Panel1: TPanel;
    BB1: TBitBtn;
    BB2: TBitBtn;
    BB3: TBitBtn;
    BB4: TBitBtn;
    BB5: TBitBtn;
    BB6: TBitBtn;
    BB7: TBitBtn;
    btnExcel: TBitBtn;
    DBGridEh1: TDBGridEh;
    Panel2: TPanel;
    Query1: TQuery;
    DS1: TDataSource;
    UpdateSQL1: TUpdateSQL;
    Qtemp: TQuery;
    OpenDialog: TOpenDialog;
    Label1: TLabel;
    Edit1: TEdit;
    CheckBox1: TCheckBox;
    Label6: TLabel;
    Label2: TLabel;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    FlexCB: TCheckBox;
    Label5: TLabel;
    FlexEdit: TEdit;
    Button1: TButton;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    Label3: TLabel;
    WovenEdit: TEdit;
    btnImport: TBitBtn;
    Label4: TLabel;
    SKUEdit: TEdit;
    Query1cldh: TStringField;
    Query1ywpm: TStringField;
    Query1zwpm: TStringField;
    Query1dwbh: TStringField;
    Query1cqdh: TStringField;
    Query1tyjh: TStringField;
    Query1FlexCode: TStringField;
    Query1FlexDescription: TStringField;
    Query1bz: TStringField;
    Query1zsywjc: TStringField;
    Query1WovenItem: TStringField;
    Query1USERID: TStringField;
    Query1USERDATE: TDateTimeField;
    Query1YN: TStringField;
    Label7: TLabel;
    VendorEdit: TEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BB1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure BB7Click(Sender: TObject);
    procedure btnExcelClick(Sender: TObject);
    procedure btnImportClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MaterialWovenList: TMaterialWovenList;
  NDate: TDate;

implementation

uses main1;

{$R *.dfm}

procedure TMaterialWovenList.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := caFree;
end;

procedure TMaterialWovenList.FormDestroy(Sender: TObject);
begin
  MaterialWovenList := nil;
end;

procedure TMaterialWovenList.FormCreate(Sender: TObject);
begin
  with Qtemp do
  begin
    active := false;
    sql.Clear;
    sql.add('select getdate() as NDate ');
    active := true;
    NDate := fieldbyname('NDate').Value;
    active := false;
  end;
  DTP1.Date := Date - 3;
  DTP2.Date := Date;
end;

procedure TMaterialWovenList.BB1Click(Sender: TObject);
begin
  Panel2.Visible := true;
end;

procedure TMaterialWovenList.Button1Click(Sender: TObject);
begin
  with Query1 do
  begin
    active := false;
    SQL.Clear;
    SQL.Add('  select clzl.cldh,ywpm,zwpm,dwbh,cqdh,clzl.tyjh,CLZL_FLEX.CLDHFLEX AS FlexCode,cldhflexdes as FlexDescription,clbzzl.bz,zszl.zsywjc,CLZL_Woven.WovenItem,CLZL_Woven.USERID,CLZL_Woven.USERDATE,CLZL_Woven.YN ');
    SQL.Add('  from CLZL ');
    SQL.Add('  left join xxzls on clzl.cldh=xxzls.CLBH ');
    SQL.Add('  left join xxzl on xxzls.XieXing=xxzl.XieXing and xxzls.SheHao=xxzl.SheHao ');
    SQL.Add('  left join zszl on xxzls.CSBH=zszl.zsdh ');
    SQL.Add('  left join clbzzl on clbzzl.CLDH = CLZL.CLDH and clbzzl.zybb =''E'' and clbzzl.xh=''001'' ');
    SQL.Add('  left join CLZL_FLEX on CLZL_FLEX.CLDH = CLZL.CLDH ');
    SQL.Add('  left join CLZL_FLEXS on CLZL_FLEXS.cldhflex=CLZL_FLEX.cldhflex ');
    SQL.Add('  left join CLZL_Woven on CLZL_Woven.cldh = clzl.cldh ');
    SQL.Add('  where CLZL.CLDH like ''N01%'' ');
    if Edit1.Text <> '' then
      SQL.Add(' and CLZL.CLDH like ''' + Edit1.Text + '%'' ');
    if Edit2.Text <> '' then
      SQL.Add(' and CLZL.YWPM like ''%' + Edit2.Text + '%'' ');
    if Edit3.Text <> '' then
      SQL.Add(' and CLZL.YWPM like ''%' + Edit3.Text + '%'' ');
    if Edit4.Text <> '' then
      SQL.Add(' and CLZL.YWPM like ''%' + Edit4.Text + '%'' ');
    if WovenEdit.Text <> '' then
      SQL.Add(' and CLZL_Woven.WovenItem like ''%' + WovenEdit.Text + '%'' ');
    if FlexEdit.Text <> '' then
      SQL.Add(' and CLZL_FLEX.CLDHFLEX like ''' + FlexEdit.Text + '%'' ');
    if FlexCB.Checked then
      SQL.Add(' and IsNull(CLZL_FLEX.CLDHFLEX,'''')<>'''' ');
    if SKUEdit.Text <> '' then
      SQL.Add(' and ARTICLE like ''' + SKUEdit.Text + '%'' ');
    if VendorEdit.Text <> '' then
      SQL.Add(' and zszl.zsywjc like ''%' + VendorEdit.Text + '%'' ');
    if CheckBox1.Checked = true then
    begin
      SQL.Add(' and convert(smalldatetime,convert(varchar,CLZL.UserDate,111)) between ');
      SQL.Add(' ''' + FormatDateTime('yyyy/MM/dd', DTP1.Date) + '''and''' + FormatDateTime('yyyy/MM/dd', DTP2.Date) + ''' ');
    end;
    SQL.Add('  group by clzl.cldh,ywpm,zwpm,dwbh,cqdh,clzl.tyjh,CLZL_FLEX.CLDHFLEX,cldhflexdes,clbzzl.bz,zszl.zsywjc,CLZL_Woven.WovenItem,CLZL_Woven.USERID,CLZL_Woven.USERDATE,CLZL_Woven.YN ');
    SQL.Add('  order by CLZL.CLDH ');
    //funcobj.WriteErrorLog(sql.Text);
    active := true;
  end;
  //
  if query1.RecordCount > 0 then
  begin
    BB4.Enabled := true;
    btnExcel.Enabled := true;
    btnImport.Enabled := true;
  end;
  btnImport.Enabled := true;
end;

procedure TMaterialWovenList.BB4Click(Sender: TObject);
begin
  with Query1 do
  begin
    RequestLive := true;
    CachedUpdates := true;
    Edit;
  end;
  BB5.Enabled := true;
  BB6.Enabled := true;
end;

procedure TMaterialWovenList.BB5Click(Sender: TObject);
var
  i: integer;
begin
  try
    Query1.First;
    for i := 1 to Query1.RecordCount do
    begin
      case Query1.UpdateStatus of
        usModified:
          begin
            if (Query1.FieldByName('YN').AsString = '1') then
            begin
              Query1.Edit;
              Query1.FieldByName('USERID').Value := main.Edit1.text;
              Query1.FieldByName('USERDATE').Value := NDate;
              UpdateSQL1.Apply(ukModify);
            end
            else
            begin
              Query1.Edit;
              Query1.FieldByName('USERID').Value := main.Edit1.Text;
              Query1.FieldByName('USERDATE').Value := NDate;
              Query1.FieldByName('YN').Value := 1;
              UpdateSQL1.Apply(ukInsert);
            end;
          end;
      end;
      Query1.Next;
    end;
    Query1.Active := false;
    Query1.CachedUpdates := false;
    Query1.RequestLive := false;
    Query1.Active := true;
    BB5.Enabled := false;
    BB6.Enabled := false;
  except
    MessageDlg('Have wrong, can not save data!', mtWarning, [mbyes], 0);
  end;
end;

procedure TMaterialWovenList.BB6Click(Sender: TObject);
begin
  with Query1 do
  begin
    Active := false;
    RequestLive := false;
    CachedUpdates := false;
    Active := true;
  end;
  BB5.Enabled := false;
  BB6.Enabled := false;
end;

procedure TMaterialWovenList.BB7Click(Sender: TObject);
begin
  Close;
end;

procedure TMaterialWovenList.btnExcelClick(Sender: TObject);
var
  eclApp, WorkBook: olevariant;
  i, j: integer;
begin
  if Query1.Active then
  begin
    if Query1.recordcount = 0 then
    begin
      ShowMessage('No record.');
      Abort;
    end;
  end
  else
  begin
    ShowMessage('No record.');
    Abort;
  end;
  //
  try
    eclApp := CreateOleObject('Excel.Application');
    WorkBook := CreateOleObject('Excel.Sheet');
  except
    Application.MessageBox('NO Microsoft   Excel', 'Microsoft   Excel', MB_OK + MB_ICONWarning);
    Exit;
  end;
  //
  try
    WorkBook := eclApp.workbooks.Add;
    for i := 0 to DBGridEh1.Columns.Count - 1 do
    begin
      eclApp.Cells(1, i + 1) := DBGridEh1.Columns[i].Title.Caption;
      eclApp.Cells.Cells.item[1, i + 1].font.name := 'Calibri';
      eclApp.Cells.Cells.item[1, i + 1].font.size := '10';
    end;
    //
    Query1.First;
    j := 2;
    while not Query1.Eof do
    begin
      eclApp.Cells(j, 1) := j - 1;
      for i := 0 to DBGridEh1.Columns.Count - 1 do
      begin
        eclApp.Cells(j, i + 1) := DBGridEh1.Fields[i].Value;
        eclApp.Cells.Cells.item[j, i + 1].font.name := 'Calibri';
        eclApp.Cells.Cells.item[j, i + 1].font.size := '10';
      end;
      Query1.Next;
      inc(j);
    end;
    eclApp.columns.autofit;
    ShowMessage('Succeed.');
    eclApp.Visible := True;
  except
    on F: Exception do
      showmessage(F.Message);
  end;
end;

procedure TMaterialWovenList.btnImportClick(Sender: TObject);
var
  ExcelApp: Variant;
  cldh, WovenItem, sku, bz, skulist: string;
  i: integer;
begin
  if OpenDialog.Execute then
  begin
    ExcelApp := CreateOleObject('Excel.Application');
    ExcelApp.WorkBooks.Open(OpenDialog.FileName);
    ExcelApp.WorkSheets[1].Activate;
    i := 2;
//new function
    skulist := '';
    sku := ExcelApp.Cells[i, 1].Value;
    WovenItem := ExcelApp.Cells[i, 2].Value;
    while (trim(sku) <> '') do
    begin
      if WovenItem = 'New Style' then
      begin
        Qtemp.active := false;
        Qtemp.SQL.Clear;
        Qtemp.SQL.Add('select top 1 CLZL.ywpm,CLZL.cldh,CLZL_Woven.WovenItem,clbzzl.bz from CLZL');
        Qtemp.SQL.Add('left join xxzls on xxzls.CLBH = clzl.cldh');
        Qtemp.SQL.Add('left join xxzl on xxzl.XieXing = xxzls.XieXing');
        Qtemp.SQL.Add('left join CLZL_Woven on CLZL_Woven.cldh = clzl.cldh');
        Qtemp.SQL.Add('left join clbzzl on clbzzl.cldh = clzl.cldh');
        Qtemp.SQL.Add('where xxzl.ARTICLE = ''' + sku + ''' and xxzls.CSBH = ''P024''');
        Qtemp.SQL.Add('and clzl.cldh like ''N%''');
        Qtemp.Active := true;
        if (Qtemp.RecordCount > 0) and (Qtemp.fieldbyname('WovenItem').Value = null) then
        begin
          if Qtemp.fieldbyname('bz').Value = null then
            skulist := skulist + ',' + sku
          else begin
            bz := trim(copy(Qtemp.fieldbyname('bz').Value, 1, pos('(', Qtemp.fieldbyname('bz').Value) - 1));
            cldh := Qtemp.fieldbyname('cldh').Value;
            Qtemp.active := false;
            Qtemp.SQL.Clear;
            Qtemp.SQL.Add(' insert into CLZL_Woven(cldh,WovenItem,USERID,USERDATE,YN)');
            Qtemp.SQL.Add(' values (''' + cldh + ''' ,''' + bz + ''',''' + main.Edit1.Text + ''',''' +
              FormatDateTime('yyyy/mm/dd hh:nn:ss', now) + ''',1)');
            Qtemp.ExecSQL;
          end;
        end;
      end;
      i := i + 1;
      sku := ExcelApp.Cells[i, 1].Value;
      WovenItem := ExcelApp.Cells[i, 2].Value;
    end;
    // old function
    {
        cldh:=ExcelApp.Cells[i,2].Value;
        WovenItem:=ExcelApp.Cells[i,3].Value;
        while (trim(cldh)<>'')  do
        begin
          cldh:=ExcelApp.Cells[i,2].Value;
          WovenItem:=ExcelApp.Cells[i,3].Value;
          Qtemp.active:=false;
          Qtemp.SQL.Clear;
          Qtemp.SQL.Add('select * from CLZL_Woven ');
          Qtemp.SQL.Add('where cldh ='''+cldh+''' ');
          Qtemp.active:=true;
          if Qtemp.RecordCount>0 then
          begin
              Qtemp.active:=false;
              Qtemp.SQL.Clear;
              Qtemp.SQL.Add('update CLZL_Woven set ');
              Qtemp.SQL.Add('WovenItem='''+WovenItem+''',USERID ='''+main.Edit1.Text+''',USERDATE='''+FormatDateTime('yyyy/mm/dd hh:nn:ss',now)+''' ');
              Qtemp.SQL.Add('where cldh ='''+cldh+''' ');
              //funcobj.WriteErrorLog(Qtemp.sql.Text);
              Qtemp.ExecSQL;
          end else
          begin
             Qtemp.active:=false;
             Qtemp.SQL.Clear;
             Qtemp.SQL.Add(' insert into CLZL_Woven(cldh,WovenItem,USERID,USERDATE,YN)');
             Qtemp.SQL.Add(' values ('''+cldh+''' ,'''+WovenItem+''','''+main.Edit1.Text+''','''+FormatDateTime('yyyy/mm/dd hh:nn:ss',now)+''',1)');
             //funcobj.WriteErrorLog(Qtemp.sql.Text);
             Qtemp.ExecSQL;
          end;
          i:=i+1;
          cldh:=ExcelApp.Cells[i,2].Value;
          WovenItem:=ExcelApp.Cells[i,3].Value;
        end;
    }
    skulist := trim(copy(skulist,2,50000));
    ExcelApp.WorkBooks.Close;
    ExcelApp.Quit;
    Qtemp.Active := false;
    showmessage(skulist);
    showmessage('Success.');
  end;
  //
  Button1.Click;
end;

end.
