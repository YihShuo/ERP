unit Deliver_EquipmentT1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, StdCtrls, DBCtrls, ComCtrls, GridsEh, DBGridEh,
  Mask, Buttons, ExtCtrls, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls,
  DynVarsEh, EhLibVCL, DBAxisGridsEh;

type
  TDeliver_EquipmentT = class(TForm)
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
    TS1: TTabSheet;
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
    TS2: TTabSheet;
    Panel5: TPanel;
    Panel3: TPanel;
    Label7: TLabel;
    Label6: TLabel;
    DBEdit9: TDBEdit;
    BBTT2: TBitBtn;
    DBEdit13: TDBEdit;
    MM_GBox: TGroupBox;
    Label16: TLabel;
    Label23: TLabel;
    Label20: TLabel;
    Label24: TLabel;
    BDelRec: TQuery;
    DelMas: TQuery;
    DelMasLLNO: TStringField;
    DelMasDepID: TStringField;
    DelMasDepName: TStringField;
    DelMasLB: TStringField;
    DelMasUSERID: TStringField;
    DelMasUSERDATE: TDateTimeField;
    DelMasCFMID: TStringField;
    DelMasCFMDATE: TDateTimeField;
    DelMasYN: TStringField;
    UpMas: TUpdateSQL;
    DS1: TDataSource;
    DS2: TDataSource;
    Qtemp: TQuery;
    DBGrid1: TDBGridEh;
    SS_GBox: TGroupBox;
    Label21: TLabel;
    Label27: TLabel;
    BB_GBox: TGroupBox;
    Label36: TLabel;
    Label37: TLabel;
    Label5: TLabel;
    LL_GBox: TGroupBox;
    Label8: TLabel;
    Label10: TLabel;
    RR_GBox: TGroupBox;
    Label15: TLabel;
    Label19: TLabel;
    DelMasGSBH: TStringField;
    DelMasMemo: TStringField;
    DelDet: TQuery;
    DelDetLLNO: TStringField;
    DelDetTSID: TStringField;
    DelDetPARAMENT1: TStringField;
    DelDetPARAMENT2: TStringField;
    DelDetPARAMENT3: TStringField;
    DelDetPARAMENT4: TStringField;
    DelDetPARAMENT5: TStringField;
    DelDetPARAMENT6: TStringField;
    DelDetVALUE1: TStringField;
    DelDetVALUE2: TStringField;
    DelDetVALUE3: TStringField;
    DelDetVALUE4: TStringField;
    DelDetVALUE5: TStringField;
    DelDetVALUE6: TStringField;
    DelDetCOLUMN1: TStringField;
    DelDetCOLUMN2: TStringField;
    DelDetCOLUMN3: TStringField;
    DelDetCOLUMN4: TStringField;
    DelDetCOLUMN5: TStringField;
    DelDetCOLUMN6: TStringField;
    DelDetYWPM: TStringField;
    DelDetZWPM: TStringField;
    DelDetDepName: TStringField;
    DelDetDepID_Memo: TStringField;
    DelDetUSERID: TStringField;
    DelDetUSERDATE: TDateTimeField;
    DelDetYN: TStringField;
    DelDetSBBH: TStringField;
    DelDetQUCBH: TStringField;
    DelDetLSBH: TStringField;
    DelDetNSX: TStringField;
    DelDetTSBH: TStringField;
    DelDetQty: TFloatField;
    DelDetDWBH: TStringField;
    DBGrid2: TDBGridEh;
    UPDet: TUpdateSQL;
    BDT7: TBitBtn;
    DelDetVWPM: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BBTT1Click(Sender: TObject);
    procedure BB1Click(Sender: TObject);
    procedure BB2Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure BB3Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure BD2Click(Sender: TObject);
    procedure BD3Click(Sender: TObject);
    procedure BD4Click(Sender: TObject);
    procedure BD6Click(Sender: TObject);
    procedure BD5Click(Sender: TObject);
    //procedure DBGrid2DblClick(Sender: TObject);
    procedure PC1Change(Sender: TObject);
    procedure DelDetAfterOpen(DataSet: TDataSet);
    procedure BBTT2Click(Sender: TObject);
    procedure DBGrid2EditButtonClick(Sender: TObject);
    procedure DBGrid1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure DBGrid2GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1EditButtonClick(Sender: TObject);
    procedure BDT5Click(Sender: TObject);
    procedure BDT7Click(Sender: TObject);
  private
    LB:String;
    { Private declarations }
    Function DelDet_LB_Check():boolean;
    procedure Init_LB();
    procedure DelDetAfterOpen_ColumnShow();
    procedure DelDet_LB_Edit();
  public
    DepID_CD:String;
    DepName_CD:String;
    { Public declarations }
  end;

var
  Deliver_EquipmentT: TDeliver_EquipmentT;
  NDate:TDate;

implementation

uses main1, EquipmentT_Dep1, EquipmentT1, EquipmentT_DepName1, Deliver_EquipmentT_print1, Deliver_EquipmentT_printTW1;

{$R *.dfm}
//
procedure TDeliver_EquipmentT.Init_LB();
begin
  LB:='TTTTTTTTTT';
end;
//異動單 Column Show or Not
procedure TDeliver_EquipmentT.DelDetAfterOpen_ColumnShow();
var i,GroupBox_Left:integer;
begin
  //
  GroupBox_Left:=190;
  for i:=5 to 22 do
    DBGrid2.Columns[i].Visible:=false;
  DBGrid2.Columns[7].Visible:=true;
  DBGrid2.Columns[7].ReadOnly:=true;
  DBGrid2.Columns[7].Title.Caption:='倉庫|ton kho';
  DBGrid2.Columns[9].Visible:=true;
  //DBGrid2.columns[9].ReadOnly:=true;
  DBGrid2.Columns[9].Title.Caption:='備註|Ghi chu';
  DBGrid2.Columns[13].Visible:=true;
  DBGrid2.Columns[13].Title.Caption:='借入歸還日|Ngay Hoan Tra Thuc Te';
  RR_GBox.Visible:=true;
  RR_GBox.Left:=GroupBox_Left;
  //
end;
//

//
procedure TDeliver_EquipmentT.DelDet_LB_Edit();
begin
  with DelDet do
  begin
    Edit;
    //di ve ton kho
    DBGrid2.columns[7].ButtonStyle:=cbsEllipsis;
    FieldByName('PARAMENT1').Value:='DepID';
    if FieldByName('Value1').AsString='' then
      FieldByName('Value1').Value:=DepID_CD;
    if FieldByName('COLUMN1').AsString='' then
      FieldByName('COLUMN1').Value:=DepName_CD;
    FieldByName('PARAMENT2').Value:='DepID_Memo';
    if FieldByName('Value2').AsString='' then
      FieldByName('Value2').Value:=DepName_CD;
    if FieldByName('COLUMN2').AsString='' then
      FieldByName('COLUMN2').Value:=DepName_CD;
    FieldByName('PARAMENT3').Value:='Status';
    FieldByName('Value3').Value:='T';
    Post;
  end;
end;
procedure TDeliver_EquipmentT.FormCreate(Sender: TObject);
var i:integer;
begin
  with Qtemp do
  begin
    active:=false;
    sql.Clear;
    sql.add('select ID,DepName from TSCD_BDepartment');
    sql.add('where GSBH='+''''+main.Edit2.Text+'''');
    sql.add('order by ID');
    active:=true;
    for i:=1 to recordcount do
    begin
      CBX1.Items.Add(fieldbyname('DepName').asstring);
      next;
    end;
    CBX1.itemindex:=0;
    active:=false;
    sql.Clear;
    sql.add('select getdate() as NDate ');
    active:=true;
    NDate:=fieldbyname('NDate').Value;
    DTP1.Date:=date-3;
    DTP2.date:=date;
  end;
  with Qtemp do
  begin
    active:=false;
    sql.Clear;
    sql.add('select top 1 ID,DepName from TSCD_BDepartment where DepMemo like ''%工務%'' ');
    active:=true;
    DepID_CD:=FieldByName('ID').AsString;
    DepName_CD:=FieldByName('DepName').AsString;
    active:=false;
    //
  end;
  PC1.ActivePageIndex:=0;
end;

procedure TDeliver_EquipmentT.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if BB5.enabled  then
  begin
    messagedlg('You have to save data Record of report first.',mtwarning,[mbyes],0);
    PC1.ActivePage:=TS1;
    panel1.Visible:=true;
    panel6.Visible:=false;
    action:=canone;
  end else
  begin
    if BD5.enabled then
      begin
        messagedlg('You have to save data Report first.',mtwarning,[mbyes],0);
        PC1.ActivePage:=TS2;
        panel6.Visible:=true;
        panel1.Visible:=false;
        action:=canone;
      end else
      begin
        action:=Cafree;
      end;
  end;
end;

procedure TDeliver_EquipmentT.FormDestroy(Sender: TObject);
begin
  Deliver_EquipmentT:=nil;
end;

procedure TDeliver_EquipmentT.Button1Click(Sender: TObject);
begin
  Init_LB();
  with DelMas do
  begin
    active:=false;
    sql.Clear;
    sql.add('select TSCD_KCTT.*,BDepartment.DepName  ');
    sql.add('from TSCD_KCTT');
    sql.add('left join TSCD_BDepartment BDepartment on TSCD_KCTT.DepID=BDepartment.ID');
    sql.add('where ISNULL(flowflag,'''')<>''X'' and TSCD_KCTT.LLNO like ');
    sql.add(''''+edit1.Text+'%'+'''');
    if CBX1.itemindex<>0 then
    begin
      sql.add('and BDepartment.DepName like ');
      sql.add(''''+CBX1.Text+'%'+'''');
    end;
    sql.add('and convert(smalldatetime,convert(varchar,TSCD_KCTT.USERDATE,111)) between ');
    sql.add(''''+formatdatetime('yyyy/MM/dd',DTP1.Date) +'''');
    sql.add(' and  ');
    sql.add(''''+formatdatetime('yyyy/MM/dd',DTP2.Date) +'''');
    sql.add('and TSCD_KCTT.LB='''+LB+''' ');
    if Check.Checked then
    begin
      sql.Add('and TSCD_KCTT.USERID='+''''+main.Edit1.Text+'''');
    end;
    sql.add('and TSCD_KCTT.LB='''+LB+''' ');
    SQL.Add('and TSCD_KCTT.GSBH='''+main.Edit2.Text+''' ');
    sql.add('order by LLNO DESC');
    //funcobj.WriteErrorLog(sql.Text);
    active:=true;
  end;
  panel2.Visible:=false;
  BB2.Enabled:=true;
  BB3.Enabled:=true;
  BB4.Enabled:=true;
  BBT1.Enabled:=true;
  BBT2.Enabled:=true;
  BBT3.Enabled:=true;
  check.Checked:=true;
  BBT4.Enabled:=true;
  BBT6.Enabled:=true;
  //CB1.visible:=true;
  DelDet.Active:=true;
end;

procedure TDeliver_EquipmentT.BBTT1Click(Sender: TObject);
begin
  EquipmentT_Dep:=TEquipmentT_Dep.Create(self);
  EquipmentT_Dep.Show;
end;

procedure TDeliver_EquipmentT.BB1Click(Sender: TObject);
begin
   panel2.Visible:=true;
end;

procedure TDeliver_EquipmentT.BB2Click(Sender: TObject);
begin
  with DelMas do
  begin
    requestlive:=true;
    cachedupdates:=true;
    insert;
  end;
  BBTT1.Visible:=true;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
  DBGrid1.columns[3].ButtonStyle:=cbsEllipsis;
end;

procedure TDeliver_EquipmentT.BB4Click(Sender: TObject);
begin
  with DelMas do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
  BBTT1.Visible:=true;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
  DBGrid1.columns[3].ButtonStyle:=cbsEllipsis;
end;

procedure TDeliver_EquipmentT.BB5Click(Sender: TObject);
var y,m,a:string;
    i:integer;
begin
  with Qtemp do
  begin
    active:=false;
    sql.Clear;
    sql.Add('select year(getdate()) as FY,month(getdate()) as FM,getdate() as NDate ');
    active:=true;
    y:=fieldbyname('FY').asstring;
    m:=fieldbyname('FM').asstring;
    NDate:=fieldbyname('NDate').Value;
    active:=false;
  end;
  if length(m)<2 then
  m:='0'+m;
  try
    DelDet.Active:=false;
    DelMas.first;
    for i:=1 to DelMas.RecordCount do
    begin
      case DelMas.updatestatus of
        usinserted:
          begin
            if DelMas.fieldbyname('DepID').isnull then
              begin
                DelMas.delete;
              end
               else
                 begin
                     with Qtemp do
                     begin
                       active:=false;
                       sql.Clear;
                       sql.Add('select LLNO from TSCD_KCTT where LLNO like '+''''+y+m+'%'+'''');
                       sql.add('order by LLNO');
                       active:=true;
                       if recordcount >0 then
                       begin
                         last;
                         a:=fieldbyname('LLNO').AsString;
                         a:=copy(a,7,5);
                         a:=inttostr(strtoint(a)+1);
                         while length(a)<5 do
                           begin
                             a:='0'+a;
                           end;
                       end
                         else
                           begin
                             a:='00001';
                           end;
                       a :=y+m+a;
                       active:=false;
                     end;
                   DelMas.edit;
                   DelMas.fieldbyname('LLNO').Value:=a;
                   //DelMas.fieldbyname('DepID').Value:=DelMas.fieldbyname('DepID').Value;
                   DelMas.fieldbyname('LB').Value:=LB;
                   DelMas.FieldByName('GSBH').Value:=main.Edit2.Text;
                   DelMas.FieldByName('userID').Value:=main.edit1.text;
                   DelMas.FieldByName('userdate').Value:=Ndate;
                   DelMas.FieldByName('CFMID').Value:='NO';
                   DelMas.FieldByName('YN').Value:='1';
                   if (DelMas.fieldbyname('LB').Value ='') or (DelMas.fieldbyname('LB').Value =null) then
                   begin
                      showmessage('Chua nhap loai.');
                      abort;
                   end;
                   upMas.apply(ukinsert);
                 end;
          end;
        usmodified:
           begin
             if DelMas.FieldByName('USERID').value<>main.Edit1.Text then
               begin
                 showmessage('不是你的，不要亂動。khong phai ban khong duoc tu sua');
               end
               else
                 begin
                   if DelMas.fieldbyname('YN').value='0'then
                     begin
                         with BDelRec do
                         begin
                           active:=false;
                           sql.Clear;
                           {sql.add('insert into BDelRec ');
                           sql.add('(TableName ,TNO,CLBH,OldID,DelID,DelDate)');
                           sql.add('values ('+''''+'TSCD_KCTT'+''''+','+''''+DelMas.fieldbyname('LLNO').Value+'''');
                           sql.add(','+''''+' '+''''+','+''''+DelMas.fieldbyname('USERID').Value+''''+',');
                           sql.add(''''+main.Edit1.Text+''''+',getdate())'); }
                           SQL.Add('Update TSCD_KCTT Set flowflag=''X'' where LLNO='''+DelMas.FieldByName('LLNO').AsString+''' ');
                           execsql;
                           active:=false;
                         end;
                       //upMas.apply(ukdelete);
                     end
                     else
                       begin
                         if (DelMas.FieldByName('CFMID').value='NO')   then
                           begin
                             if (NDate-DelMas.FieldByName('USERDATE').value)<=3  then
                               begin
                                 DelMas.edit;
                                 DelMas.FieldByName('userID').Value:=main.edit1.text;
                                 DelMas.FieldByName('userdate').Value:=Ndate;
                                 upMas.apply(ukmodify);
                               end
                               else
                                 begin
                                   showmessage('Date>3, can not modify.');
                                 end;
                           end
                           else
                             begin
                               showmessage('Already confirmed, can not modify.');
                             end;
                       end;
                end;
           end;
      end;
     DelMas.next;
    end;
  DelMas.active:=false;
  DelMas.cachedupdates:=false;
  DelMas.requestlive:=false;
  DelMas.active:=true;
  DelDet.Active:=true;
  BB5.enabled:=false;
  BB6.enabled:=false;
  BBTT1.Visible:=false;
  DBGrid1.columns[3].ButtonStyle:=cbsnone;
  showmessage('Succeed.');
  except
    Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
  end;
end;


procedure TDeliver_EquipmentT.BD2Click(Sender: TObject);
begin
 if DelMas.RequestLive then
  begin
    showmessage('Pls save Master data first.');
    PC1.ActivePage:=TS2;
    panel6.visible:=true;
    panel1.visible:=false;
    abort;
  end;
  with DelDet do
  begin
    requestlive:=true;
    cachedupdates:=true;
    insert;
  end;
  BBTT2.Visible:=true;
  BD5.Enabled:=true;
  BD6.Enabled:=true;
  DBGrid2.columns[1].ButtonStyle:=cbsEllipsis;
  //
  DelDet_LB_Edit();
end;

procedure TDeliver_EquipmentT.DBGrid2EditButtonClick(Sender: TObject);
var Style: String;
    i:integer;
begin
  if DBGrid2.selectedfield.fieldname='SBBH'  then
  begin
    BBTT2.Click;
  end;
  if DBGrid2.selectedfield.fieldname='COLUMN1'  then
  begin
    EquipmentT_DepName:=TEquipmentT_DepName.Create(self);
    EquipmentT_DepName.COLUMN_Index:=1;
    EquipmentT_DepName.Show;
  end;
end;

procedure TDeliver_EquipmentT.BD3Click(Sender: TObject);
begin
  if DelMas.RequestLive then
  begin
    showmessage('Pls save Master data first.');
    PC1.ActivePage:=TS2;
    panel6.visible:=true;
    panel1.visible:=false;
    abort;
  end;
  with DelDet do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
    fieldbyname('YN').Value:='0';
  end;
  BBTT2.Visible:=true;
  BD5.Enabled:=true;
  BD6.Enabled:=true;
  DBGrid2.columns[1].ButtonStyle:=cbsEllipsis;
  DBGrid2.columns[5].ButtonStyle:=cbsEllipsis;
end;

procedure TDeliver_EquipmentT.BD4Click(Sender: TObject);
begin
  if DelMas.RequestLive then
  begin
    showmessage('Pls save Master data first.');
    PC1.ActivePage:=TS2;
    panel6.visible:=true;
    panel1.visible:=false;
    abort;
  end;

  with DelDet do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
  BBTT2.Visible:=true;
  BD5.Enabled:=true;
  BD6.Enabled:=true;
  DBGrid2.columns[1].ButtonStyle:=cbsEllipsis;
  //
  DelDet_LB_Edit();
end;


procedure TDeliver_EquipmentT.BB3Click(Sender: TObject);
begin
  if DelDet.recordcount=0 then
  begin
    with DelMas do
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
  end else
  begin
      showmessage('Pls delete the Deliver Detail first.')
  end;
  BBTT1.Visible:=true;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
end;


procedure TDeliver_EquipmentT.BB6Click(Sender: TObject);
begin
  with DelMas do
  begin
    active:=false;
    requestlive:=false;
    cachedupdates:=false;
    active:=true;
  end;
  bb5.enabled:=false;
  bb6.enabled:=false;
  BBTT1.Visible:=false;
  DBGrid1.columns[3].ButtonStyle:=cbsnone;
end;

procedure TDeliver_EquipmentT.BD6Click(Sender: TObject);
begin
  with DelDet do
  begin
    active:=false;
    requestlive:=false;
    cachedupdates:=false;
    active:=true;
  end;
  BBTT2.Visible:=false;
  BD5.Enabled:=false;
  BD6.Enabled:=false;
  DBGrid2.columns[1].ButtonStyle:=cbsNone;
  DBGrid2.columns[7].ButtonStyle:=cbsNone;
end;


procedure TDeliver_EquipmentT.PC1Change(Sender: TObject);
var i:integer;
begin
  if PC1.ActivePage=TS2 then
  begin
    panel6.visible:=true;
    panel1.visible:=false;
  end else
  begin
    panel6.visible:=false;
    panel1.visible:=true;
  end;
end;

procedure TDeliver_EquipmentT.DelDetAfterOpen(DataSet: TDataSet);
var i:integer;
begin
  DelDetAfterOpen_ColumnShow();
  //
  BD2.Enabled:=true;
  BD3.Enabled:=true;
  BD4.Enabled:=true;
  BDT1.Enabled:=true;
  BDT2.Enabled:=true;
  BDT3.Enabled:=true;
  BDT4.Enabled:=true;
  //BDT5.Enabled:=true;
  BDT6.Enabled:=true;
  BDT7.Enabled:=true;
  if (NDate-DelMas.FieldByName('USERDATE').value)>7  then
  begin
    BD2.Enabled:=false;
    BD3.Enabled:=false;
    BD4.Enabled:=false;
  end;
  if DelMas.FieldByName('CFMID').value<>'NO'  then
  begin
    BD2.Enabled:=false;
    BD3.Enabled:=false;
    BD4.Enabled:=false;
  end;
  if DelMas.FieldByName('USERID').value<>main.edit1.text  then
  begin
    BD2.Enabled:=false;
    BD3.Enabled:=false;
    BD4.Enabled:=false;
  end;
  if DelMas.cachedupdates  then
  begin
    BD2.Enabled:=false;
    BD3.Enabled:=false;
    BD4.Enabled:=false;
  end;
  BD5.Enabled:=false;
  BD6.Enabled:=false;
  //DeliverE.DelMas.Active:=true;
end;
//
Function TDeliver_EquipmentT.DelDet_LB_Check():boolean;
var iRes:boolean;
begin
  iRes:=true;
  with DelDet do
  begin
    if DelMas.fieldbyname('LB').AsString ='RRRRRRRRRR' then  //歸還 di ve ton kho
    begin
      if ((FieldByName('VALUE1').Isnull) ) then
      begin
        iRes:=false;
      end;
    end;
  end;
  result:=iRes;
end;

procedure TDeliver_EquipmentT.BD5Click(Sender: TObject);
var i:integer;
begin
    //Check user have key in column value
    if DelDet_LB_Check()=false then
    begin
      Showmessage('Can not be empty');
      abort;
    end;
    try
    DelDet.first;
    for i:=1 to DelDet.RecordCount do
    begin
      case DelDet.updatestatus of
        usinserted:
          begin
            if DelMas.FieldByName('USERID').value<>main.Edit1.Text then
              begin
                showmessage('不是你的，不要亂動。khong phai ban khong duoc tu sua');
              end
              else
                begin
                  if DelDet.fieldbyname('TSID').isnull then
                  begin
                    DelDet.delete;
                  end else
                  begin
                      DelDet_LB_Edit();
                      DelDet.edit;
                      DelDet.fieldbyname('LLNO').Value:=DelMas.fieldbyname('LLNO').Value;
                      DelDet.FieldByName('userID').Value:=main.edit1.text;
                      DelDet.FieldByName('userdate').Value:=Ndate;
                      DelDet.FieldByName('YN').Value:='1';
                      upDet.apply(ukinsert);
                  end;
              end;
          end;
        usmodified:
           begin
               if DelDet.FieldByName('USERID').value<>main.Edit1.Text then
               begin
                 showmessage('不是你，不要亂動。khong phai ban khong duoc tu sua');
               end
               else
                 begin
                    if DelDet.fieldbyname('YN').value='0'then
                    begin
                       with BDelRec do
                       begin
                         active:=false;
                         sql.Clear;
                         sql.add('insert into BDelRec ');
                         sql.add('(TableName ,TNO,CLBH,OldID,DelID,DelDate)');
                         sql.add('values ('+''''+'TSCD_KCTTS'+''''+','+''''+DelMas.fieldbyname('LLNO').Value+'''');
                         sql.add(','+''''+' '+''''+','+''''+DelMas.fieldbyname('USERID').Value+''''+',');
                         sql.add(''''+main.Edit1.Text+''''+',getdate())');
                         execsql;
                         active:=false;
                       end;
                       UpDet.apply(ukdelete);
                    end
                    else
                     begin
                       if (DelMas.FieldByName('CFMID').value='NO')   then
                       begin
                         if (NDate-DelMas.FieldByName('USERDATE').value)<=7  then
                           begin
                              DelDet.edit;
                              DelDet.fieldbyname('LLNO').Value:=DelMas.fieldbyname('LLNO').Value;
                              DelDet.FieldByName('userID').Value:=main.edit1.text;
                              DelDet.FieldByName('userdate').Value:=Ndate;
                              DelDet.FieldByName('YN').Value:='1';
                              upDet.apply(ukmodify);
                           end
                           else
                             begin
                               showmessage('Date>7, can not modify.');
                             end;
                       end
                       else
                         begin
                           showmessage('Already confirmed, can not modify.');
                         end;
                     end;

                 end;
            end;
      end;
      DelDet.next;
    end;
  DelDet.active:=false;
  DelDet.cachedupdates:=false;
  DelDet.requestlive:=false;
  DelDet.active:=true;
  bb6.enabled:=false;
  BBTT2.Visible:=false;
  BD5.Enabled:=false;
  BD6.Enabled:=false;
  DBGrid2.columns[1].ButtonStyle:=cbsNone;
  DBGrid2.columns[7].ButtonStyle:=cbsNone;
  showmessage('Succeed.');
  except
    Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
  end;
end;


procedure TDeliver_EquipmentT.BBTT2Click(Sender: TObject);
begin
  EquipmentT:=TEquipmentT.Create(self);
  EquipmentT.LLNOEdit.Text:=DelMas.FieldByName('Memo').AsString;
  EquipmentT.Show;
end;

procedure TDeliver_EquipmentT.DBGrid1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if DelMas.FieldByName('YN').value='0' then
  begin
    DBGrid1.canvas.font.color:=clred;
  end;
end;

procedure TDeliver_EquipmentT.DBGrid2GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if DelDet.FieldByName('YN').value='0' then
  begin
    DBGrid2.canvas.font.color:=clred;
  end;
end;

procedure TDeliver_EquipmentT.DBGrid1DblClick(Sender: TObject);
begin
  if  DelMas.Active then
  begin
    if  (DelMas.recordcount>0) then
    begin
      PC1.ActivePage:=TS2;
      panel1.visible:=false;
      panel6.visible:=true;
    end;
  end;
end;

procedure TDeliver_EquipmentT.DBGrid1EditButtonClick(Sender: TObject);
begin
  if DBGrid1.selectedfield.fieldname='DepName'  then
  begin
    BBTT1.Click;
  end;
end;

procedure TDeliver_EquipmentT.BDT5Click(Sender: TObject);
begin
  if DelDet.RequestLive then
  begin
    showmessage('Pls save Master data first.');
    Abort;
  end;
  Deliver_EquipmentT_print:=TDeliver_EquipmentT_print.Create(self);
  Deliver_EquipmentT_print.quickrep1.prepare;
  Deliver_EquipmentT_print.quickrep1.preview;
  Deliver_EquipmentT_print.free;
end;

procedure TDeliver_EquipmentT.BDT7Click(Sender: TObject);
begin
  if DelDet.RequestLive then
  begin
    showmessage('Pls save Master data first.');
    Abort;
  end;
  Deliver_EquipmentT_printTW:=TDeliver_EquipmentT_printTW.Create(self);
  Deliver_EquipmentT_printTW.quickrep1.prepare;
  Deliver_EquipmentT_printTW.quickrep1.preview;
  Deliver_EquipmentT_printTW.free;
end;

end.
