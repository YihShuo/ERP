unit EntryList_InvoiceModify1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GridsEh, DBGridEh, StdCtrls, ComCtrls, Buttons, ExtCtrls, DB,
  DBTables,IniFiles;

type
  TEntryList_InvoiceModify = class(TForm)
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
    bbt6: TBitBtn;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    Edit2: TEdit;
    Check: TCheckBox;
    Edit3: TEdit;
    Edit4: TEdit;
    DBGrid1: TDBGridEh;
    ENMas: TQuery;
    ENMasRKNO: TStringField;
    ENMasZSBH: TStringField;
    ENMasZSYWJC: TStringField;
    ENMasZSNO: TStringField;
    ENMasDOCNO: TStringField;
    ENMasGSBH: TStringField;
    ENMasCKBH: TStringField;
    ENMasCFMID: TStringField;
    ENMasUSERDATE: TDateTimeField;
    ENMasUSERID: TStringField;
    ENMasCFMDATE: TDateTimeField;
    ENMasYN: TStringField;
    ENMasMEMO: TStringField;
    ENMasHGLB: TStringField;
    ENMasSCNO: TStringField;
    UpMas: TUpdateSQL;
    DS1: TDataSource;
    Query1: TQuery;
    BDelRec: TQuery;
    ENMasDOCDATE: TDateTimeField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BB7Click(Sender: TObject);
    procedure BB1Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ENMasAfterOpen(DataSet: TDataSet);
    procedure ENMasAfterScroll(DataSet: TDataSet);
    procedure DBGrid1EditButtonClick(Sender: TObject);
  private
    CheckSuppID:string;
    IsAllowSuppID:Boolean;
    { Private declarations }
    procedure CheckDocNo();
    procedure CheckShowModify();
    procedure ReadIni();
  public
    FORMID:String;
    { Public declarations }
  end;

var
  EntryList_InvoiceModify: TEntryList_InvoiceModify;
  NDate:TDate;
implementation

uses main1, EntryList_VATNO1, EntryList_Declaration1,Entrylist1,
  EntryTotal1,fununit;

{$R *.dfm}
procedure TEntryList_InvoiceModify.ReadIni();
var MyIni :Tinifile;
    AppDir:string;

begin
  CheckSuppID:='VC08';
  AppDir:=ExtractFilePath(Application.ExeName);
  if FileExists(AppDir+'\ComName.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ComName.ini');
      CheckSuppID:=MyIni.ReadString('ERP','Warehouse_N211_CheckSuppID_'+main.Edit2.Text,'');
    finally
      MyIni.Free;
    end;
  end;
end;

procedure TEntryList_InvoiceModify.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=CaFree;
end;

procedure TEntryList_InvoiceModify.FormDestroy(Sender: TObject);
begin
  EntryList_InvoiceModify:=nil;
end;

procedure TEntryList_InvoiceModify.Button1Click(Sender: TObject);
begin
  with ENMas do
  begin
    active:=false;
    sql.Clear;
    sql.add('select KCRK.*,ZSZL.ZSYWJC  ');
    sql.add('from KCRK');
    sql.add('left join ZSZL on KCRK.ZSBH=ZSZL.ZSDH');
    sql.add('where ISNULL(flowflag,'''')<>''X'' and KCRK.RKNO like '+''''+edit1.Text+'%'+'''');
    sql.add('      and ZSZL.ZSYWJC = '''+edit2.text+''' ');
    sql.add('      and convert(smalldatetime,convert(varchar,KCRK.USERDATE,111)) between ');
    sql.add('          '''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date) +'''');
    sql.add('      and KCRK.GSBH='+''''+main.Edit2.Text+'''');
    if FORMID='SN211' then
    sql.add('      and ( (KCRK.SB<>''1'' and KCRK.SB<>''2'') or  KCRK.SB is null) ');
    if FORMID='SN212' then
    sql.add('      and KCRK.SB=''1'' ');
    if Edit3.Text<>'' then
    sql.add('      and KCRK.DOCNO like ''%'+Edit3.Text+'%'' ');
    if Edit4.Text<>'' then
    sql.add('      and KCRK.MEMO like ''%'+Edit4.Text+'%'' ');
    if Check.Checked then
    begin
        sql.Add('      and KCRK.USERID='+''''+main.Edit1.Text+'''');
    end;
    sql.add('order by RKNO Desc');
    active:=true;
  end;
  BB4.Enabled:=true;
  CheckShowModify();
end;

procedure TEntryList_InvoiceModify.BB7Click(Sender: TObject);
begin
  Close;
end;

procedure TEntryList_InvoiceModify.BB1Click(Sender: TObject);
begin
  Panel2.Visible:=true;
end;

procedure TEntryList_InvoiceModify.BB4Click(Sender: TObject);
var tmpSuppIDList:TStringlist;
    index:integer;
begin
  IsAllowSuppID:=false;
  if  CheckSuppID <> '' then
  begin
    tmpSuppIDList:=FuncObj.SplitString(CheckSuppID,',');
    index:=tmpSuppIDList.IndexOf(ENMas.FieldByName('ZSBH').AsString);
    if index>=0 then IsAllowSuppID:=true;
    tmpSuppIDList.Free;
  end else
  begin
    IsAllowSuppID:=false;
  end;
  if ((ENMas.FieldByName('YN').AsString='5') and (IsAllowSuppID=false)) then
  begin
    ShowMessage('Account already confirmed, can not modify');
    abort;
  end;
  with ENMas do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
  DBGrid1.columns[4].ButtonStyle:=cbsEllipsis;
end;

procedure TEntryList_InvoiceModify.BB6Click(Sender: TObject);
begin
  with ENMas do
  begin
    active:=false;
    requestlive:=false;
    cachedupdates:=false;
    active:=true;
  end;
  BB5.enabled:=false;
  BB6.enabled:=false;
  DBGrid1.columns[4].ButtonStyle:=cbsnone;
end;

procedure TEntryList_InvoiceModify.BB5Click(Sender: TObject);
var i:integer;
begin

  with query1 do          //取服務器的年月值
  begin
    active:=false;
    sql.Clear;
    sql.Add('select getdate() as NDate');
    active:=true;
    NDate:=fieldbyname('NDate').Value;
    active:=false;
  end;

  try
    ENMas.first;
    for i:=1 to ENMas.RecordCount do
      begin
        case ENMas.updatestatus of
          usmodified:
             begin
                if NDate-ENMas.FieldByName('userdate').Value<=45  then
                begin
                    if  ENMas.FieldByName('userID').Value=main.Edit1.Text then
                    begin
                        with BDelRec do
                        begin
                          active:=false;
                          sql.Clear;
                          sql.add('insert into BDelRec ');
                          sql.add('(TableName ,TNO,CLBH,OldID,DelID,DelDate)');
                          sql.add('values ('+''''+'KCRK_INV'+''''+','+''''+EnMas.fieldbyname('RKNO').Value+'''');
                          sql.add(','''+EnMas.fieldbyname('DOCNO').AsString+''','''+EnMas.fieldbyname('USERID').Value+''',');
                          sql.add(''''+main.Edit1.Text+''''+',getdate())');
                          execsql;
                          active:=false;
                        end;
                        upMas.apply(ukmodify);
                        if FORMID='SN211' then
                          Entrylist.CheckDeclaretion_Insert_Modify();
                        if FORMID='SN212' then
                          EntryTotal.CheckDeclaretion_Insert_Modify();
                      end else
                      begin
                          showmessage('It is not yours, can not modify.');
                      end;
                end else
                begin
                      showmessage('Date > 45, can not modify.');
                end;
             end;
        end;
        ENMas.next;
    end;
    ENMas.active:=false;
    ENMas.cachedupdates:=false;
    ENMas.requestlive:=false;
    ENMas.active:=true;
    BB5.enabled:=false;
    BB6.enabled:=false;
    DBGrid1.columns[4].ButtonStyle:=cbsnone;
  except
    Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
  end;
end;

procedure TEntryList_InvoiceModify.FormCreate(Sender: TObject);
begin
  DTP1.Date:=date-2;
  DTP2.date:=date;
  ReadIni();
end;

procedure TEntryList_InvoiceModify.FormShow(Sender: TObject);
begin
    main.FormLanguage(Pointer(self),self.Name);
end;
procedure  TEntryList_InvoiceModify.CheckDocNo();
begin
  if ((EnMas.FieldByName('HGLB').AsString='NK') or (EnMas.FieldByName('HGLB').AsString='TC') or (EnMas.FieldByName('HGLB').AsString='KD') or (EnMas.FieldByName('HGLB').AsString='HD') or (EnMas.FieldByName('HGLB').AsString='NQ') or (EnMas.FieldByName('HGLB').AsString='NKNQ')
      or (EnMas.FieldByName('HGLB').AsString='NK1') or (EnMas.FieldByName('HGLB').AsString='TC1') or (EnMas.FieldByName('HGLB').AsString='KD1') or (EnMas.FieldByName('HGLB').AsString='HD1') or (EnMas.FieldByName('HGLB').AsString='H11'))  then
     DBGrid1.columns[4].ReadOnly:=true;
  //if  ((EnMas.FieldByName('HGLB').AsString<>'') and (EnMas.FieldByName('HGLB').AsString<>'NK') and (EnMas.FieldByName('HGLB').AsString<>'TC') and (EnMas.FieldByName('HGLB').AsString<>'KD')  and (EnMas.FieldByName('HGLB').AsString<>'HD'))  then
  if  ((EnMas.FieldByName('HGLB').AsString<>'') and  ((EnMas.FieldByName('HGLB').AsString='XT') or (EnMas.FieldByName('HGLB').AsString='GC'))) then
     DBGrid1.columns[4].ReadOnly:=false;
end;

procedure  TEntryList_InvoiceModify.CheckShowModify();
var tmpSuppIDList:TStringlist;
    index:integer;
begin
  IsAllowSuppID:=false;
  if  CheckSuppID <> '' then
  begin
    tmpSuppIDList:=FuncObj.SplitString(CheckSuppID,',');
    index:=tmpSuppIDList.IndexOf(ENMas.FieldByName('ZSBH').AsString);
    if index>=0 then IsAllowSuppID:=true;
    tmpSuppIDList.Free;
  end else
  begin
    IsAllowSuppID:=false;
  end;
  if (((main.Edit2.Text='CDC') or (main.Edit2.Text='VC1')) and (IsAllowSuppID=true)) then
  begin
    BB4.Enabled:=true;
  end else
  begin
    BB4.Enabled:=false;
  end;
end;


procedure TEntryList_InvoiceModify.ENMasAfterOpen(DataSet: TDataSet);
begin
  CheckShowModify();
  CheckDocNo();
end;

procedure TEntryList_InvoiceModify.ENMasAfterScroll(DataSet: TDataSet);
begin
  CheckShowModify();
  CheckDocNo();
end;

procedure TEntryList_InvoiceModify.DBGrid1EditButtonClick(Sender: TObject);
begin
  if  ((DBGrid1.SelectedField.FieldName='DOCNO')  and ((EnMas.fieldbyname('HGLB').AsString='HD') or (EnMas.fieldbyname('HGLB').AsString='HD1'))) then
  begin
    EntryList_VATNO1.Kind :='EntryInvoiceModify';
    EntryList_VATNO:=TEntryList_VATNO.create(self);
    EntryList_VATNO.Edit2.Text:=EnMas.fieldbyname('ZSBH').AsString;
    EntryList_VATNO.Edit2.Enabled:=false;
    EntryList_VATNO.Button1.Click;
    EntryList_VATNO.show;
  end;
  if  ((DBGrid1.SelectedField.FieldName='DOCNO')  and ((EnMas.fieldbyname('HGLB').AsString='NK') or (EnMas.fieldbyname('HGLB').AsString='TC') or (EnMas.fieldbyname('HGLB').AsString='KD') or (EnMas.fieldbyname('HGLB').AsString='NQ') or (EnMas.fieldbyname('HGLB').AsString='NKNQ')
        or (EnMas.fieldbyname('HGLB').AsString='NK1') or (EnMas.fieldbyname('HGLB').AsString='TC1') or (EnMas.fieldbyname('HGLB').AsString='KD1') or (EnMas.fieldbyname('HGLB').AsString='H11'))) then
  begin
    EntryList_Declaration1.Kind :='EntryInvoiceModify';
    EntryList_Declaration:=TEntryList_Declaration.create(self);
    EntryList_Declaration.show;
  end;
end;

end.
