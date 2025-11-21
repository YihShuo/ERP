unit EquipmentClassification1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, Mask, DBCtrls, StdCtrls,
  ComCtrls, Buttons, ExtCtrls, Comobj, Menus, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, DBAxisGridsEh;

type
  TEquipment_Classification = class(TForm)
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
    Edit1: TEdit;
    Button1: TButton;
    ZWPMEdit: TEdit;
    Check: TCheckBox;
    Panel4: TPanel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    DBEdit6: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit7: TDBEdit;
    BBTT1: TBitBtn;
    DBGridEh1: TDBGridEh;
    TSCD_SB: TQuery;
    UpMas: TUpdateSQL;
    DS1: TDataSource;
    TmpQuery: TQuery;
    TSCD_SBSBBH: TStringField;
    TSCD_SBYWPM: TStringField;
    TSCD_SBZWPM: TStringField;
    TSCD_SBQUCBH: TStringField;
    TSCD_SBZSDH: TStringField;
    TSCD_SBUSERID: TStringField;
    TSCD_SBUSERDATE: TDateTimeField;
    TSCD_SBYN: TStringField;
    TSCD_SBLSBH: TStringField;
    TSCD_SBAuthCE: TBooleanField;
    TSCD_SBMemo: TStringField;
    Label5: TLabel;
    QUCBHEdit: TEdit;
    Label6: TLabel;
    LSBHEdit: TEdit;
    TSCD_SBHGPM: TStringField;
    TSCD_SBCQDH: TStringField;
    Label8: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    YWPMEdit: TEdit;
    Label4: TLabel;
    HGPMEdit: TEdit;
    TSCD_SBDWBH: TStringField;
    TSCD_SBVWPM: TStringField;
    TSCD_SBAuthCompany: TBooleanField;
    TSCD_SBAuthBrand: TBooleanField;
    TSCD_SBQUSPrice: TFloatField;
    TSCD_SBQVNPrice: TCurrencyField;
    GroupBox1: TGroupBox;
    AuthCEBox: TCheckBox;
    AuthCoBox: TCheckBox;
    AuthBrBox: TCheckBox;
    TSCD_SBzsjc_yw: TStringField;
    PopupMenu: TPopupMenu;
    TSCD_SBCLZMLB: TStringField;
    N1: TMenuItem;
    TSCD_SBTYJH: TStringField;
    Unlock1: TMenuItem;
    Lock1: TMenuItem;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BB2Click(Sender: TObject);
    procedure BB3Click(Sender: TObject);
    procedure BBTT1Click(Sender: TObject);
    procedure BB1Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure BB4Click(Sender: TObject);
    procedure DBGridEh1EditButtonClick(Sender: TObject);
    procedure bbt6Click(Sender: TObject);
    procedure TSCD_SBAfterOpen(DataSet: TDataSet);
    procedure N1Click(Sender: TObject);
    procedure Unlock1Click(Sender: TObject);
    procedure Lock1Click(Sender: TObject);
  private
    NDate:TDate;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Equipment_Classification: TEquipment_Classification;

implementation

uses main1, NewEquipmentClassification_Sup1 , EquipmentClassification_LB1,
     EquipmentClassification_Clzhzl1, FunUnit;

{$R *.dfm}

procedure TEquipment_Classification.FormCreate(Sender: TObject);
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

procedure TEquipment_Classification.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=CaFree;
end;

procedure TEquipment_Classification.FormDestroy(Sender: TObject);
begin
  Equipment_Classification:=nil;
end;



procedure TEquipment_Classification.Button1Click(Sender: TObject);
begin

  with TSCD_SB do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select  TSCD_SB.*,TSCD_ZSZL.zsjc_yw from TSCD_SB  ');
    SQL.Add('Left join TSCD_ZSZL on TSCD_ZSZL.zsdh=TSCD_SB.zsdh  ');
    SQL.Add('where TSCD_SB.SBBH like '''+Edit1.Text+'%'+''' ');
    if ZWPMEdit.Text <> '' then
      SQL.Add('   and TSCD_SB.ZWPM like ''%'+ZWPMEdit.Text+'%'' ');
    if YWPMEdit.Text <> '' then
      SQL.Add('   and TSCD_SB.VWPM like ''%'+YWPMEdit.Text+'%'' ');
    if HGPMEdit.Text <> '' then
      SQL.Add('   and TSCD_SB.HGPM like ''%'+HGPMEdit.Text+'%'' ');
    if QUCBHEdit.Text <> '' then
      SQL.Add('   and TSCD_SB.QUCBH like ''%'+QUCBHEdit.Text+'%'' ');
    if LSBHEdit.Text <> '' then
      SQL.Add('   and TSCD_SB.LSBH like ''%'+LSBHEdit.Text+'%'' ');
    if AuthCEBox.Checked=true then
      SQL.Add('   and TSCD_SB.AuthCE = 1 ');
    if AuthCoBox.Checked=true then
      SQL.Add('   and TSCD_SB.AuthCompany = 1 ');
    if AuthBrBox.Checked=true then
      SQL.Add('   and TSCD_SB.AuthBrand = 1 ');
    if Check.Checked then
    begin
      SQL.Add('   and TSCD_SB.USERID='''+main.Edit1.Text+''' ');
    end;
    SQL.add('order by TSCD_SB.SBBH');
    //funcObj.WriteErrorLog(sql.Text);
    Active:=true;
  end;
  //Panel2.Visible:=false;
end;


procedure TEquipment_Classification.BB2Click(Sender: TObject);
begin
  with TSCD_SB do
  begin
    requestlive:=true;
    cachedupdates:=true;
    insert;
  end;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
  BBTT1.Visible:=true;
  DBGridEh1.columns[0].ButtonStyle:=cbsEllipsis;
  DBGridEh1.columns[8].ButtonStyle:=cbsEllipsis;
end;

procedure TEquipment_Classification.BB3Click(Sender: TObject);
begin
  with TSCD_SB do
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

procedure TEquipment_Classification.BBTT1Click(Sender: TObject);
begin
  NewEquipmentClassification_Sup:=TNewEquipmentClassification_Sup.create(self);
  NewEquipmentClassification_Sup.show;
end;

procedure TEquipment_Classification.DBGridEh1EditButtonClick(Sender: TObject);
begin
  //
  if DBGridEh1.selectedfield.fieldname='SBBH'  then
  begin
    EquipmentClassification_LB:=TEquipmentClassification_LB.Create(self);
    EquipmentClassification_LB.ShowModal();
  end;
  //
  if DBGridEh1.selectedfield.fieldname='ZSDH'  then
  begin
    BBTT1.Click;
  end;

end;

procedure TEquipment_Classification.BB1Click(Sender: TObject);
begin
  Panel2.Visible:=true;
end;

procedure TEquipment_Classification.BB5Click(Sender: TObject);
var i:integer;
    GetSBBHStr,SBBH:String;
begin

  if (TSCD_SB.fieldbyname('ZSDH').AsString = '') or (TSCD_SB.fieldbyname('ZSDH').AsString = Null) then
  begin
    showmessage('Nhap ma nha cung ung.');
    abort;
  end;
  try
    TSCD_SB.first;
    for i:=1 to TSCD_SB.RecordCount do
    begin
      case TSCD_SB.updatestatus of
        usinserted:
          begin
             with TmpQuery do
             begin
               active:=false;
               sql.Clear;
               sql.Add('Select SBBH from TSCD_SB where SBBH='''+TSCD_SB.FieldByName('SBBH').AsString+''' ');
               active:=true;
             end;
             if TmpQuery.RecordCount=0 then
             begin
               //
               TSCD_SB.edit;
               TSCD_SB.FieldByName('CLZMLB').Value:='N';
               TSCD_SB.FieldByName('userID').Value:=main.edit1.text;
               TSCD_SB.FieldByName('userdate').Value:=Ndate;
               TSCD_SB.FieldByName('YN').Value:='1';
               upMas.apply(ukinsert);
             end else
             begin
               Showmessage('Equipment Code is exists!');
             end;
             TmpQuery.Active:=false;
          end;
        usmodified:
           begin
             if (NDate-TSCD_SB.FieldByName('USERDATE').value)<=720  then
             begin
                if TSCD_SB.fieldbyname('YN').value='0'then
                begin
                  with TmpQuery do
                  begin
                    active:=false;
                    sql.Clear;
                    sql.add('insert into BDelRec ');
                    sql.add('(TableName ,TNO,CLBH,OldID,DelID,DelDate)');
                    sql.add('values ('+''''+'TSCD_SB'+''''+','+''''+TSCD_SB.fieldbyname('SBBH').Value+'''');
                    sql.add(','''+TSCD_SB.fieldbyname('ZSDH').Value+''','''+TSCD_SB.fieldbyname('USERID').Value+''',');
                    sql.add(''''+main.Edit1.Text+''''+',getdate())');
                    execsql;
                    active:=false;
                  end;
                  upMas.apply(ukdelete);
                end else
                begin
                  TSCD_SB.edit;
                  TSCD_SB.FieldByName('userID').Value:=main.edit1.text;
                  TSCD_SB.FieldByName('userdate').Value:=Ndate;
                  upMas.apply(ukmodify);
                end;
             end else
             begin
                showmessage('Date>720, can not modify.');
             end;
           end;
      end;
     TSCD_SB.next;
    end;
    TSCD_SB.active:=false;
    TSCD_SB.cachedupdates:=false;
    TSCD_SB.requestlive:=false;
    TSCD_SB.active:=true;
    BB5.enabled:=false;
    BB6.enabled:=false;
    BBTT1.Visible:=false;
    DBGridEh1.columns[0].ButtonStyle:=cbsNone;
    DBGridEh1.columns[8].ButtonStyle:=cbsNone;
    showmessage('Succeed.');
  except
    Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
  end;
end;

procedure TEquipment_Classification.BB6Click(Sender: TObject);
begin
  with TSCD_SB do
  begin
    active:=false;
    requestlive:=false;
    cachedupdates:=false;
    active:=true;
  end;
  bb5.enabled:=false;
  bb6.enabled:=false;
  BBTT1.Visible:=false;
  DBGridEh1.columns[0].ButtonStyle:=cbsNone;
  DBGridEh1.columns[8].ButtonStyle:=cbsNone;
end;

procedure TEquipment_Classification.DBGridEh1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if TSCD_SB.FieldByName('YN').value='0' then
  begin
    DBGridEh1.canvas.font.color:=clred;
  end;
end;

procedure TEquipment_Classification.BB4Click(Sender: TObject);
begin
  with TSCD_SB do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
  BBTT1.Visible:=true;
  DBGridEh1.columns[0].ButtonStyle:=cbsEllipsis;
  DBGridEh1.columns[8].ButtonStyle:=cbsEllipsis;
end;

procedure TEquipment_Classification.bbt6Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin
    if  TSCD_SB.active  then
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
      for  i:=0  to TSCD_SB.fieldcount-1   do
      begin
        eclApp.Cells(1,i+1):=TSCD_SB.fields[i].FieldName;
      end;
      TSCD_SB.First;
      j:=2;
      while   not   TSCD_SB.Eof   do
        begin
          for   i:=0   to  TSCD_SB.fieldcount-1  do
          begin
            eclApp.Cells(j,i+1):=TSCD_SB.Fields[i].AsString;
          end;
        TSCD_SB.Next;
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

procedure TEquipment_Classification.TSCD_SBAfterOpen(DataSet: TDataSet);
begin

  BB2.Enabled:=true;
  BB3.Enabled:=true;
  BB4.Enabled:=true;

end;

procedure TEquipment_Classification.Unlock1Click(Sender: TObject);
begin
  if MessageDlg('Are you sure Unlock?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    with TmpQuery do
    begin
      Active := False;
      SQL.Clear;
      SQL.Add('UPDATE TSCD_SB ');
      SQL.Add('SET TYJH = ''N'', UserID = ''' + main.Edit1.Text + ''', UserDate = getdate() ');
      SQL.Add('WHERE SBBH = ''' + TSCD_SB.FieldByName('SBBH').AsString + ''' ');
      ExecSQL;
    end;
    Button1.Click;
  end;
end;

procedure TEquipment_Classification.N1Click(Sender: TObject);
begin
  if EquipmentClassification_Clzhzl=nil then
  begin
    EquipmentClassification_Clzhzl:=TEquipmentClassification_Clzhzl.Create(self);
    EquipmentClassification_Clzhzl.ShowModal();
  end;
end;


procedure TEquipment_Classification.Lock1Click(Sender: TObject);
begin
  if MessageDlg('Are you sure Lock?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    with TmpQuery do
    begin
    active:=false;
    sql.Clear;
    sql.Add(' update TSCD_SB ');
    sql.Add(' set TYJH = ''Y'',UserID='''+main.Edit1.Text+''',UserDate=getdate() ');
    sql.Add(' where SBBH = '''+TSCD_SB.FieldByName('SBBH').AsString+''' ');
    execsql;
  end;
    Button1.Click;
  end;
end;
end.
