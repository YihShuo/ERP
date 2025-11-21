unit Replenish_Stamp1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, StdCtrls, DBCtrls, ComCtrls, GridsEh, DBGridEh,
  Mask, Buttons, ExtCtrls, fununit, comobj;

type
  TReplenish_Stamp = class(TForm)
    Panel1: TPanel;
    Label18: TLabel;
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
    bbt6: TBitBtn;
    Panel6: TPanel;
    Label17: TLabel;
    BD2: TBitBtn;
    BD3: TBitBtn;
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
    TS3: TTabSheet;
    Panel4: TPanel;
    Label9: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    DBEdit3: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit7: TDBEdit;
    BBTT1: TBitBtn;
    DBGridEh1: TDBGridEh;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Edit1: TEdit;
    CBX1: TComboBox;
    Button1: TButton;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    Check: TCheckBox;
    TS4: TTabSheet;
    Panel3: TPanel;
    Label7: TLabel;
    Label8: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBMemo1: TDBMemo;
    DBEdit13: TDBEdit;
    Panel5: TPanel;
    BLDet: TQuery;
    UPDet: TUpdateSQL;
    DS4: TDataSource;
    DS3: TDataSource;
    BLMas: TQuery;
    UpMas: TUpdateSQL;
    Qtemp: TQuery;
    BDelRec: TQuery;
    Query1: TQuery;
    Label5: TLabel;
    BLMasBLNO: TStringField;
    BLMasGSBH: TStringField;
    BLMasSCBH: TStringField;
    BLMasDepID: TStringField;
    BLMasUSERID: TStringField;
    BLMasUSERDATE: TDateTimeField;
    BLMasYN: TStringField;
    BLMasMEMO: TStringField;
    BLMasflowflag: TStringField;
    BLMasDepName: TStringField;
    BLDetBLNO: TStringField;
    BLDetCLBH: TStringField;
    BLDetSCBH: TStringField;
    BLDetSIZE: TStringField;
    BLDetQty: TCurrencyField;
    BLDetUSERID: TStringField;
    BLDetUSERDATE: TDateTimeField;
    BLDetYN: TStringField;
    BLDetMEMO: TStringField;
    BLDetStamped: TCurrencyField;
    BLDetUnStamped: TCurrencyField;
    BLDetYWPM: TStringField;
    BLDetZWPM: TStringField;
    BLDetDWBH: TStringField;
    BBTT2: TBitBtn;
    DBGridEh2: TDBGridEh;
    BLMasYYBH: TStringField;
    BLMasArticle: TStringField;
    BLMasPairs: TIntegerField;
    BLMasKHPO: TStringField;
    BLMasShipdate: TDateTimeField;
    BLMasYWSM: TStringField;
    BLMasZWSM: TStringField;
    BLMasPMark: TIntegerField;
    BLDetDepName: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BB1Click(Sender: TObject);
    procedure BB2Click(Sender: TObject);
    procedure BB3Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure BB7Click(Sender: TObject);
    procedure BBT1Click(Sender: TObject);
    procedure BBT2Click(Sender: TObject);
    procedure BBT3Click(Sender: TObject);
    procedure BBT4Click(Sender: TObject);
    procedure bbt6Click(Sender: TObject);
    procedure BBTT1Click(Sender: TObject);
    procedure BLMasAfterOpen(DataSet: TDataSet);
    procedure DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure DBGridEh1EditButtonClick(Sender: TObject);
    procedure BD2Click(Sender: TObject);
    procedure BD3Click(Sender: TObject);
    procedure BD4Click(Sender: TObject);
    procedure BD5Click(Sender: TObject);
    procedure BD6Click(Sender: TObject);
    procedure BD7Click(Sender: TObject);
    procedure BDT1Click(Sender: TObject);
    procedure BDT2Click(Sender: TObject);
    procedure BDT3Click(Sender: TObject);
    procedure BDT4Click(Sender: TObject);
    procedure BDT6Click(Sender: TObject);
    procedure BBTT2Click(Sender: TObject);
    procedure BLDetAfterOpen(DataSet: TDataSet);
    procedure DBGridEh2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure DBGridEh2EditButtonClick(Sender: TObject);
    procedure PC1Change(Sender: TObject);
    procedure DBGridEh2ColExit(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
  private
    { Private declarations }
    function CheckSizeExists(SIZE:String):boolean;
  public
    { Public declarations }
  end;

var
  Replenish_Stamp: TReplenish_Stamp;
  NDate:TDate;

implementation

uses main1, Replenish_Stamp_Dep1, Replenish_Stamp_CL1, Replenish_Stamp_YY1,
  Replenish_Stamp_SCBH1;

{$R *.dfm}

procedure TReplenish_Stamp.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if BB5.Enabled  then
  begin
    MessageDlg('You have to save data Record of report first.',mtwarning,[mbyes],0);
    PC1.ActivePage:=TS3;
    Panel1.Visible:=true;
    Panel6.Visible:=false;
    Action:=caNone;
  end else
  begin
    if BD5.Enabled then
    begin
      MessageDlg('You have to save data Report first.',mtwarning,[mbyes],0);
      PC1.ActivePage:=TS4;
      Panel1.Visible:=false;
      Panel6.Visible:=true;
      Action:=caNone;
    end else
    begin
      Action:=caFree;
    end;
  end;
  
end;

procedure TReplenish_Stamp.FormDestroy(Sender: TObject);
begin
  Replenish_Stamp:=nil;
end;

procedure TReplenish_Stamp.FormCreate(Sender: TObject);
var i:integer;
begin
  with Qtemp do
  begin
    active:=false;
    SQL.Clear;
    SQL.Add('select ID,DepName from BDepartment');
    SQL.Add('where GSBH='+''''+main.Edit2.Text+'''');
    SQL.Add('order by ID');
    active:=true;
    for i:=1 to RecordCount do
      begin
        CBX1.Items.Add(fieldbyname('DepName').asstring);
        Next;
      end;
    CBX1.itemindex:=0;
    active:=false;
    SQL.Clear;
    SQL.Add('select getdate() as NDate ');
    active:=true;
    NDate:=fieldbyname('NDate').Value;
  end;
  PC1.ActivePage:=TS3;
  DTP1.Date:=NDate-3;
  DTP2.Date:=NDate;
end;

procedure TReplenish_Stamp.Button1Click(Sender: TObject);
begin
  with BLMas do
  begin
    active:=false;
    SQL.Clear;
    SQL.Add('select STBL.*,BDepartment.DepName,DDZL.Article,DDZL.Pairs,DDZL.KHPO,DDZL.Shipdate,STBLYY.YWSM,STBLYY.ZWSM ');
    SQL.Add('from STBL ');
    SQL.Add('left join BDepartment on STBL.DepID=BDepartment.ID ');
    SQL.Add('left join DDZL on STBL.SCBH = DDZL.DDBH ');
    SQL.Add('left join STBLYY on STBLYY.YYBH=STBL.YYBH ');
    SQL.Add('where 1=1 and ISNULL(flowflag,'''')<>''X'' ');
    if Edit1.Text <>'' then
      SQL.Add('and STBL.BLNO like '''+Edit1.Text+'%'' ');
    if CBX1.ItemIndex<>0 then
      SQL.Add('and BDepartment.DepName like '''+CBX1.Text+'%'' ');
    SQL.Add('and convert(smalldatetime,convert(varchar,STBL.USERDATE,111)) between ');
    sql.Add(' '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''' and '''+formatdatetime('yyyy/MM/dd',DTP2.Date)+''' ');
    SQL.Add('and STBL.GSBH='''+main.Edit2.Text+''' ');
    if Check.Checked then
      SQL.Add('and STBL.USERID='''+main.Edit1.Text+''' ');
    SQL.Add('order by BLNO DESC');
    //funcobj.WriteErrorLog(sql.Text);
    active:=true;
  end;
  Panel2.Visible:=false;
  BB2.Enabled:=true;
  BB3.Enabled:=true;
  BB4.Enabled:=true;
  BBT1.Enabled:=true;
  BBT2.Enabled:=true;
  BBT3.Enabled:=true;
  BBT4.Enabled:=true;
  BBT6.Enabled:=true;
  Check.Checked:=true;
  BLDet.Active:=true;
end;

procedure TReplenish_Stamp.BB1Click(Sender: TObject);
begin
  Panel2.Visible:=true;
end;

procedure TReplenish_Stamp.BB2Click(Sender: TObject);
begin
  with BLMas do
  begin
    RequestLive:=true;
    CachedUpdates:=true;
    Insert;
  end;
  BBTT1.Visible:=true;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
  DBGridEh1.columns[1].ButtonStyle:=cbsEllipsis;
  DBGridEh1.columns[4].ButtonStyle:=cbsEllipsis;
  DBGridEh1.columns[7].ButtonStyle:=cbsEllipsis;
end;

procedure TReplenish_Stamp.BB3Click(Sender: TObject);
begin
  if (BLDet.recordcount=0) then
  begin
    with BLMas do
    begin
      RequestLive:=true;
      CachedUpdates:=true;
      Edit;
      fieldbyname('YN').Value:='0';
    end;
  end else
  begin
    ShowMessage('Pls delete the Replenish Detail first.')
  end;
  BBTT1.Visible:=true;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
  DBGridEh1.columns[1].ButtonStyle:=cbsEllipsis;
  DBGridEh1.columns[4].ButtonStyle:=cbsEllipsis;
  DBGridEh1.columns[7].ButtonStyle:=cbsEllipsis;
end;

procedure TReplenish_Stamp.BB4Click(Sender: TObject);
begin
  with BLMas do
  begin
    RequestLive:=true;
    CachedUpdates:=true;
    Edit;
  end;
  BBTT1.Visible:=true;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
  DBGridEh1.columns[1].ButtonStyle:=cbsEllipsis;
  DBGridEh1.columns[4].ButtonStyle:=cbsEllipsis;
  DBGridEh1.columns[7].ButtonStyle:=cbsEllipsis;
end;

procedure TReplenish_Stamp.BB5Click(Sender: TObject);
var y,m,a:string;
    i:integer;
begin
  with BLMas do
  begin
    first;
    while not BLMas.Eof do
      begin
        if BLMas.FieldByName('DepID').IsNull then
        begin
          ShowMessage('The Department can not be empty.');
          Abort;
        end;
        if BLMas.FieldByName('SCBH').IsNull then
        begin
          ShowMessage('The order can not be empty.');
          Abort;
        end;
        if BLMas.FieldByName('YWSM').IsNull then
        begin
          ShowMessage('The YWSM can not be empty.');
          Abort;
        end;
        Next;
      end;
  end;
  //============================
  with Qtemp do
  begin
    active:=false;
    SQL.Clear;
    SQL.Add('select year(getdate()) as FY, month(getdate()) as FM, getdate() as NDate ');
    active:=true;
    y:=fieldbyname('FY').asstring;
    m:=fieldbyname('FM').asstring;
    NDate:=fieldbyname('NDate').value;
    active:=false;
  end;
  if length(m)<2 then
    m:='0'+m;
  //
  try
    BLDet.Active:=false;
    BLMas.First;
    for i:=1 to BLMas.RecordCount do
      begin
        case BLMas.updatestatus of
          usinserted:
            begin
              if BLMas.fieldbyname('DepID').isnull then
                begin
                  BLMas.Delete;
                end else
                begin
                   with Qtemp do
                   begin
                     active:=false;
                     SQL.Clear;
                     SQL.Add('select BLNO from STBL where BLNO like '''+y+m+'%'' ');
                     SQL.Add('order by BLNO ');
                     active:=true;
                     if Recordcount>0 then
                       begin
                         Last;
                         a:=fieldbyname('BLNO').AsString;
                         a:=copy(a,7,5);
                         a:=inttostr(strtoint(a)+1);
                         while length(a)<5 do
                           begin
                             a:='0'+a;
                           end;
                       end else
                       begin
                         a:='00001';
                       end;
                     a :=y+m+a;
                     active:=false;
                   end;
                   BLMas.edit;
                   BLMas.fieldbyname('BLNO').Value:=a;
                   BLMas.fieldbyname('GSBH').Value:=main.Edit2.Text;
                   BLMas.FieldByName('userID').Value:=main.edit1.text;
                   BLMas.FieldByName('userdate').Value:=NDate;
                   BLMas.FieldByName('YN').Value:='1';
                   UpMas.Apply(ukinsert);
                end;
            end;
          usmodified:
             begin
               if BLMas.FieldByName('USERID').value <> main.Edit1.Text then
                 begin
                   ShowMessage('不是你的，不要亂動。khong phai ban khong duoc tu sua');
                 end else
                 begin
                   if BLMas.fieldbyname('YN').value='0'then
                     begin
                       if (BLMas.FieldByName('Flowflag').AsString<>'X') and (trim(BLMas.FieldByName('Flowflag').AsString)<>'') then
                       begin
                          Showmessage('Gui trinh ky phieu bu tem. Khong cho phep sua !');
                          Abort;
                       end;
                       with BDelRec do
                       begin
                         active:=false;
                         SQL.Clear;
                         {SQL.add('insert into BDelRec ');
                         SQL.add('(TableName ,TNO,CLBH,OldID,DelID,DelDate)');
                         SQL.add('values ('+''''+'STBL'+''''+','+''''+BLMas.fieldbyname('BLNO').Value+'''');
                         SQL.add(','+''''+' '+''''+','+''''+BLMas.fieldbyname('USERID').Value+''''+',');
                         SQL.add(''''+main.Edit1.Text+''''+',getdate())');}
                         SQL.Add('Update STBL set flowflag=''X'' where BLNO='''+BLMas.FieldByName('BLNO').AsString+''' ');
                         ExecSQL;
                         active:=false;
                       end;
                       //UpMas.Apply(ukdelete);
                     end else
                     begin
                       if (NDate-BLMas.FieldByName('USERDATE').value)<=3  then
                       begin
                         if (BLMas.FieldByName('Flowflag').AsString<>'X') and (trim(BLMas.FieldByName('Flowflag').AsString)<>'') then
                         begin
                            Showmessage('Gui trinh ky phieu bu tem. Khong cho phep sua !');
                            Abort;
                         end;
                         BLMas.edit;
                         BLMas.FieldByName('userID').Value:=main.edit1.text;
                         BLMas.FieldByName('userdate').Value:=NDate;
                         //
                         with Qtemp do
                         begin
                           active:=false;
                           SQL.Clear;
                           SQL.Add('select distinct SCBH from STBLS where BLNO = '''+BLMas.FieldByName('BLNO').AsString+''' ');
                           active:=true;
                         end;
                         if (Qtemp.recordcount>0) and (BLMas.FieldByName('SCBH').AsString<>Qtemp.FieldByName('SCBH').AsString) then
                         begin
                            Showmessage('Orders are not the same, please delete the Replenish Detail first!');
                         end else
                         begin
                            UpMas.Apply(ukmodify);
                         end;
                       end else
                       begin
                         Showmessage('Date>3, can not modify.');
                       end;
                     end;
                 end;
             end;
        end;
        BLMas.next;
      end;
  BLMas.active:=false;
  BLMas.cachedupdates:=false;
  BLMas.requestlive:=false;
  BLMas.active:=true;
  BLDet.Active:=true;
  BB5.enabled:=false;
  BB6.enabled:=false;
  BBTT1.Visible:=false;
  DBGridEh1.columns[1].ButtonStyle:=cbsnone;
  DBGridEh1.columns[4].ButtonStyle:=cbsnone;
  DBGridEh1.columns[7].ButtonStyle:=cbsnone;
  except
      Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
  end;
end;

procedure TReplenish_Stamp.BB6Click(Sender: TObject);
begin
  with BLMas do
  begin
    active:=false;
    RequestLive:=false;
    CachedUpdates:=false;
    active:=true;
  end;
  BB5.enabled:=false;
  BB6.enabled:=false;
  BBTT1.Visible:=false;
  DBGridEh1.columns[1].ButtonStyle:=cbsnone;
  DBGridEh1.columns[4].ButtonStyle:=cbsnone;
  DBGridEh1.columns[7].ButtonStyle:=cbsnone;
end;

procedure TReplenish_Stamp.BB7Click(Sender: TObject);
begin
  close;
end;

procedure TReplenish_Stamp.BBT1Click(Sender: TObject);
begin
  BLMas.First;
end;

procedure TReplenish_Stamp.BBT2Click(Sender: TObject);
begin
  BLMas.Prior;
end;

procedure TReplenish_Stamp.BBT3Click(Sender: TObject);
begin
  BLMas.Next;
end;

procedure TReplenish_Stamp.BBT4Click(Sender: TObject);
begin
  BLMas.Last;
end;

procedure TReplenish_Stamp.bbt6Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin
  if BLMas.Active then
  begin
    if BLMas.recordcount=0 then
      begin
        ShowMessage('No record.');
        Abort;
      end;
  end else
  begin
    ShowMessage('No record.');
    Abort;
  end;
  //-----------------
  try
    eclApp:=CreateOleObject('Excel.Application');
    WorkBook:=CreateOleObject('Excel.Sheet');
  except
    Application.MessageBox('NO Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
    Exit;
  end;
  //-----------------
  try
    WorkBook:=eclApp.workbooks.Add;
    //eclapp.Cells.NumberFormatLocal:='@';
    for   i:=1   to   BLMas.fieldcount   do
    begin
      eclApp.Cells(1,i):=BLMas.fields[i-1].FieldName;
    end;
    //
    BLMas.First;
    j:=2;
    while   not  BLMas.Eof   do
    begin
      for   i:=1   to   BLMas.fieldcount   do
      begin
          eclApp.Cells(j,i):=BLMas.Fields[i-1].Value;
          eclApp.Cells[j,14].NumberFormatLocal:='@';
          eclApp.Cells.Cells.item[j,i].font.size:='11';
      end;
      BLMas.Next;
      inc(j);
    end;
    eclapp.columns.autofit;
    showmessage('Succeed.');
    eclApp.Visible:=True;
  except
    on   F:Exception   do
      showmessage(F.Message);
  end;

end;

procedure TReplenish_Stamp.BBTT1Click(Sender: TObject);
begin
  Replenish_Stamp_Dep:=TReplenish_Stamp_Dep.Create(self);
  Replenish_Stamp_Dep.Show;
end;

procedure TReplenish_Stamp.BLMasAfterOpen(DataSet: TDataSet);
begin
  BB5.Enabled:=false;
  BB6.Enabled:=false;
  BD5.Enabled:=false;
  BD6.Enabled:=false;
end;

procedure TReplenish_Stamp.DBGridEh1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if BLMas.FieldByName('YN').value='0' then
  begin
    DBGridEh1.canvas.font.color:=clred;
    DBGridEh1.defaultdrawcolumncell(rect,datacol,column,state);
  end;
  if (BLMas.FieldByName('PMark').AsString<>'') then
  begin
    DBGridEh1.canvas.font.color:=clblue;
    DBGridEh1.defaultdrawcolumncell(rect,datacol,column,state);
  end;
end;

procedure TReplenish_Stamp.DBGridEh1EditButtonClick(Sender: TObject);
begin
  if DBGridEh1.SelectedField.FieldName='DepID' then
  begin
    BBTT1Click(nil);
  end;
  //
  if DBGridEh1.SelectedField.FieldName='SCBH' then
  begin
    Replenish_Stamp_SCBH:=TReplenish_Stamp_SCBH.create(self);
    Replenish_Stamp_SCBH.show;
  end;
    //
  if DBGridEh1.SelectedField.FieldName='YWSM' then
  begin
    Replenish_Stamp_YY:=TReplenish_Stamp_YY.create(self);
    Replenish_Stamp_YY.show;
  end;
end;

procedure TReplenish_Stamp.BD2Click(Sender: TObject);
begin
  if (BLMas.FieldByName('Flowflag').AsString<>'X') and (trim(BLMas.FieldByName('Flowflag').AsString)<>'') then
  begin
    Showmessage('Gui trinh ky phieu bu tem. Khong cho phep sua !');
    Exit;
  end;
  //
  if BLMas.RequestLive then
  begin
    Showmessage('Pls save Master data first.');
    PC1.ActivePage:=TS3;
    Panel6.visible:=false;
    Panel1.visible:=true;
    Abort;
  end;
  //----------------
  with BLDet do
  begin
    RequestLive:=true;
    CachedUpdates:=true;
    Insert;
  end;
  BBTT2.Visible:=true;
  BD5.Enabled:=true;
  BD6.Enabled:=true;
  DBGridEh2.columns[1].ButtonStyle:=cbsEllipsis;
  DBGridEh2.columns[4].ButtonStyle:=cbsAuto;
end;

procedure TReplenish_Stamp.BD3Click(Sender: TObject);
begin
  if (BLMas.FieldByName('Flowflag').AsString<>'X') and (trim(BLMas.FieldByName('Flowflag').AsString)<>'') then
  begin
    Showmessage('Gui trinh ky phieu bu tem. Khong cho phep sua !');
    Exit;
  end;
  //
  if BLMas.RequestLive then
  begin
    Showmessage('Pls save Master data first.');
    PC1.ActivePage:=TS3;
    Panel6.visible:=false;
    Panel1.visible:=true;
    Abort;
  end;
  //----------------
  with BLDet do
  begin
    RequestLive:=true;
    CachedUpdates:=true;
    Edit;
    fieldbyname('YN').Value:='0';
  end;
  BBTT2.Visible:=true;
  BD5.Enabled:=true;
  BD6.Enabled:=true;
  DBGridEh2.columns[1].ButtonStyle:=cbsEllipsis;
  DBGridEh2.columns[4].ButtonStyle:=cbsAuto;
end;

procedure TReplenish_Stamp.BD4Click(Sender: TObject);
begin
  if (BLMas.FieldByName('Flowflag').AsString<>'X') and (trim(BLMas.FieldByName('Flowflag').AsString)<>'') then
  begin
    Showmessage('Gui trinh ky phieu bu tem. Khong cho phep sua !');
    Exit;
  end;
  //
  if BLMas.RequestLive then
  begin
    Showmessage('Pls save Master data first.');
    PC1.ActivePage:=TS3;
    Panel6.visible:=false;
    Panel1.visible:=true;
    Abort;
  end;
  //----------------
  with BLDet do
  begin
    RequestLive:=true;
    CachedUpdates:=true;
    Edit;
  end;
  BBTT2.Visible:=true;
  BD5.Enabled:=true;
  BD6.Enabled:=true;
  DBGridEh2.columns[1].ButtonStyle:=cbsEllipsis;
  DBGridEh2.columns[4].ButtonStyle:=cbsAuto;
  //DBGridEh2ColExit(nil);
end;

function TReplenish_Stamp.CheckSizeExists(SIZE:String):boolean;
var iRes:boolean;
begin
  with Qtemp do
  begin
    Active := False;
    SQL.Clear;
    SQL.Add('SELECT DISTINCT CC FROM DDZLS');
    SQL.Add('WHERE DDBH = ''' + BLMas.FieldByName('SCBH').AsString + ''' ');
    SQL.Add('ORDER BY CC ');
    Active := True;
  end;
  //
  if Qtemp.Locate('CC',SIZE, []) = True then
  begin
    iRes:=true;
  end else
  begin
    iRes:=false;
  end;
  result:=iRes;
end;

procedure TReplenish_Stamp.BD5Click(Sender: TObject);
var i:integer;
begin
  with BLDet do
  begin
    first;
    while not BLDet.Eof do
      begin
        if BLDet.FieldByName('Qty').IsNull then
        begin
          ShowMessage('The Qty can not be empty.');
          Abort;
        end;
        if BLDet.FieldByName('SIZE').IsNull then
        begin
          ShowMessage('The SIZE can not be empty.');
          Abort;
        end;
        Next;
      end;
  end;
  //
  try
    BLDet.first;
    for i:=1 to BLDet.RecordCount do
      begin
        case BLDet.updatestatus of
          usinserted:
            begin
              if BLMas.FieldByName('USERID').value<>main.Edit1.Text then
                begin
                  Showmessage('不是你的，不要亂動。khong phai ban khong duoc tu sua.');
                end else
                begin
                  if BLDet.fieldbyname('CLBH').isnull then
                    begin
                      BLDet.Delete;
                    end else
                    begin
                      BLDet.Edit;
                      BLDet.fieldbyname('BLNO').Value:=BLMas.fieldbyname('BLNO').Value;
                      BLDet.fieldbyname('SCBH').Value:=BLMas.fieldbyname('SCBH').Value;
                      BLDet.fieldbyname('Qty').Value:=formatfloat('#,##0.##',BLDet.fieldbyname('Qty').Value);
                      BLDet.FieldByName('userID').Value:=main.edit1.text;
                      BLDet.FieldByName('userdate').Value:=NDate;
                      BLDet.FieldByName('YN').Value:='1';
                      UPDet.Apply(ukinsert);
                    end;
                end;
            end;
          usmodified:
             begin
               if BLDet.FieldByName('USERID').value<>main.Edit1.Text then
                 begin
                   Showmessage('不是你的，不要亂動。khong phai ban khong duoc tu sua.');
                 end else
                 begin
                   if BLDet.fieldbyname('YN').value='0'then
                     begin
                       with BDelRec do
                         begin
                           active:=false;
                           SQL.Clear;
                           SQL.Add('insert into BDelRec ');
                           SQL.Add('(TableName ,TNO,CLBH,OldID,DelID,DelDate)');
                           SQL.Add('values ('+''''+'STBLS'+''''+','+''''+BLDet.fieldbyname('BLNO').Value+'''');
                           SQL.Add(','+''''+BLDet.fieldbyname('CLBH').Value+''''+','+''''+BLDet.fieldbyname('USERID').Value+''''+',');
                           SQL.Add(''''+main.Edit1.Text+''''+',getdate())');
                           ExecSQL;
                           active:=false;
                         end;
                       UpDet.Apply(ukdelete);
                     end else
                     begin
                       BLDet.Edit;
                       BLDet.fieldbyname('Qty').Value:=formatfloat('#,##0.##',BLDet.fieldbyname('Qty').Value);
                       BLDet.FieldByName('userID').Value:=main.edit1.text;
                       BLDet.FieldByName('userdate').Value:=NDate;
                       //Kiem tra size so co ton tai trong don hang hay khong
                       if  CheckSizeExists(BLDet.FieldByName('SIZE').AsString)=true then
                          UpDet.Apply(ukmodify)
                       else
                       begin
                          ShowMessage('SIZE :'+BLDet.FieldByName('SIZE').AsString+' khong ton tai trong don hang.');
                          Abort;
                       end;
                       //
                     end;
                 end;
             end;
        end;
        BLDet.next;
      end;
    BLDet.active:=false;
    BLDet.cachedupdates:=false;
    BLDet.requestlive:=false;
    BLDet.active:=true;
    BBTT2.Visible:=false;
    BD5.Enabled:=false;
    BD6.Enabled:=false;
    DBGridEh2.columns[1].ButtonStyle:=cbsNone;
    DBGridEh2.columns[4].ButtonStyle:=cbsNone;
  except
    Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
  end;
  
end;

procedure TReplenish_Stamp.BD6Click(Sender: TObject);
begin
  with BLDet do
  begin
    active:=false;
    RequestLive:=false;
    CachedUpdates:=false;
    active:=true;
  end;
  BBTT2.Visible:=false;
  BD5.Enabled:=false;
  BD6.Enabled:=false;
  DBGridEh2.columns[1].ButtonStyle:=cbsNone;
  DBGridEh2.columns[4].ButtonStyle:=cbsNone;
end;

procedure TReplenish_Stamp.BD7Click(Sender: TObject);
begin
  close;
end;

procedure TReplenish_Stamp.BDT1Click(Sender: TObject);
begin
  BLDet.first;
end;

procedure TReplenish_Stamp.BDT2Click(Sender: TObject);
begin
  BLDet.Prior;
end;

procedure TReplenish_Stamp.BDT3Click(Sender: TObject);
begin
  BLDet.Next;
end;

procedure TReplenish_Stamp.BDT4Click(Sender: TObject);
begin
  BLDet.Last;
end;

procedure TReplenish_Stamp.BDT6Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin
  if BLDet.Active then
  begin
    if BLDet.recordcount=0 then
      begin
        Showmessage('No record.');
        Abort;
      end;
  end else
  begin
    Showmessage('No record.');
    Abort;
  end;
  //--------------
  try
    eclApp:=CreateOleObject('Excel.Application');
    WorkBook:=CreateOleObject('Excel.Sheet');
  except
    Application.MessageBox('NO Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
    Exit;
  end;
  //--------------
  try
    WorkBook:=eclApp.workbooks.Add;
    for   i:=1   to   BLDet.fieldcount   do
    begin
        eclApp.Cells(1,i):=BLDet.fields[i-1].FieldName;
    end;
    BLDet.First;
    j:=2;
    while   not  BLDet.Eof   do
    begin
      for   i:=1   to   BLDet.fieldcount   do
      begin
          eclApp.Cells(j,i):=BLDet.Fields[i-1].Value;
          eclApp.Cells[j,4].NumberFormatLocal:='@';
          eclApp.Cells.Cells.item[j,i].font.size:='11';
      end;
      BLDet.Next;
      inc(j);
    end;
    eclapp.columns.autofit;
    showmessage('Succeed.');
    eclApp.Visible:=True;
  except
    on   F:Exception   do
      showmessage(F.Message);
  end;
  
end;

procedure TReplenish_Stamp.BBTT2Click(Sender: TObject);
begin
  Replenish_Stamp_CL:=TReplenish_Stamp_CL.Create(self);
  Replenish_Stamp_CL.Edit4.Text:=BLMas.fieldbyname('SCBH').value;
  Replenish_Stamp_CL.Show;
end;

procedure TReplenish_Stamp.BLDetAfterOpen(DataSet: TDataSet);
begin
  BD2.Enabled:=true;
  BD3.Enabled:=true;
  BD4.Enabled:=true;
  BDT1.Enabled:=true;
  BDT2.Enabled:=true;
  BDT3.Enabled:=true;
  BDT4.Enabled:=true;
  //BDT5.Enabled:=true;
  BDT6.Enabled:=true;
  if (NDate-BLMas.FieldByName('USERDATE').value)>2  then
  begin
    BD2.Enabled:=false;
    BD3.Enabled:=false;
    BD4.Enabled:=false;
  end;
  if BLMas.FieldByName('USERID').value<>main.edit1.text  then
  begin
    BD2.Enabled:=false;
    BD3.Enabled:=false;
    BD4.Enabled:=false;
  end;
  if BLMas.cachedupdates  then
  begin
    BD2.Enabled:=false;
    BD3.Enabled:=false;
    BD4.Enabled:=false;
  end;
  BD5.Enabled:=false;
  BD6.Enabled:=false;
end;

procedure TReplenish_Stamp.DBGridEh2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if BLDet.FieldByName('YN').value='0' then
  begin
    DBGridEh2.canvas.font.color:=clred;
    DBGridEh2.defaultdrawcolumncell(rect,datacol,column,state);
  end;
end;

procedure TReplenish_Stamp.DBGridEh2EditButtonClick(Sender: TObject);
begin
  if DBGridEh2.SelectedField.FieldName='CLBH' then
  begin
    BBTT2Click(nil);
  end;
end;

procedure TReplenish_Stamp.PC1Change(Sender: TObject);
begin
  if PC1.ActivePage=TS4 then
  begin
    Panel6.visible:=true;
    Panel1.visible:=false;
  end else
  begin
    Panel6.visible:=false;
    Panel1.visible:=true;
  end;
end;

procedure TReplenish_Stamp.DBGridEh2ColExit(Sender: TObject);
begin
  if (BLMas.FieldByName('SCBH').AsString <> '') then
  begin
    with Qtemp do
    begin
      Active := False;
      SQL.Clear;
      SQL.Add('SELECT DISTINCT CC FROM DDZLS');
      SQL.Add('WHERE DDBH = ''' + BLMas.FieldByName('SCBH').AsString + ''' ');
      SQL.Add('ORDER BY CC ');
      Active := True;
      //
      DBGridEh2.Columns[4].PickList.Clear;
      while not Eof do
      begin
        DBGridEh2.Columns[4].PickList.Add(FieldByName('CC').AsString);
        Next;
      end;
      Active := False;
    end;
  end else
  begin
    DBGridEh2.Columns[4].PickList.Clear;
  end;

end;

procedure TReplenish_Stamp.DBGridEh1DblClick(Sender: TObject);
begin
  if BLMas.Active then
  begin
    if (BLMas.recordcount>0) then
      begin
        PC1.ActivePage:=TS4;
        Panel1.Visible:=false;
        Panel6.Visible:=true;
      end;
  end;
end;

end.
