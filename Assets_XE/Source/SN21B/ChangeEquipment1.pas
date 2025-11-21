unit ChangeEquipment1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, Vcl.StdCtrls, EhLibVCL, GridsEh, DBAxisGridsEh,
  DBGridEh, Vcl.ComCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Bde.DBTables, Data.DB;

type
  TChangeEquipmentC = class(TForm)
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
    DBGrid1: TDBGridEh;
    TS2: TTabSheet;
    Panel5: TPanel;
    DBGrid2: TDBGridEh;
    Panel3: TPanel;
    Label7: TLabel;
    Label6: TLabel;
    DBEdit9: TDBEdit;
    BBTT2: TBitBtn;
    DBEdit13: TDBEdit;
    BDelRec: TQuery;
    DelMas: TQuery;
    DelMasLLNO: TStringField;
    DelMasGSBH: TStringField;
    DelMasDepID: TStringField;
    DelMasDepName: TStringField;
    DelMasLB: TStringField;
    DelMasUSERID: TStringField;
    DelMasUSERDATE: TDateTimeField;
    DelMasCFMID: TStringField;
    DelMasCFMDATE: TDateTimeField;
    DelMasYN: TStringField;
    DelMasflowflag: TStringField;
    DS1: TDataSource;
    UpMas: TUpdateSQL;
    Qtemp: TQuery;
    UPDet: TUpdateSQL;
    DS2: TDataSource;
    CC_GBox: TGroupBox;
    Label21: TLabel;
    Label27: TLabel;
    Button2: TButton;
    TSCD: TQuery;
    UpdateSQL1: TUpdateSQL;
    DelDet: TQuery;
    DelDetTSBH: TStringField;
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
    DelDetLLNO: TStringField;
    DelDetSBBH: TStringField;
    DelDetYWPM: TStringField;
    DelDetZWPM: TStringField;
    DelDetDepName: TStringField;
    DelDetDepID_Memo: TStringField;
    DelDetQUCBH: TStringField;
    DelDetLSBH: TStringField;
    DelDetNSX: TStringField;
    DelDetUSERID: TStringField;
    DelDetUSERDATE: TDateTimeField;
    DelDetYN: TStringField;
    DelDetQty: TFloatField;
    procedure BB1Click(Sender: TObject);
    procedure PC1Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BB2Click(Sender: TObject);
    procedure BBTT1Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BB3Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure BD2Click(Sender: TObject);
    procedure BD3Click(Sender: TObject);
    procedure BD4Click(Sender: TObject);
    procedure BD5Click(Sender: TObject);
    procedure BD6Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1EditButtonClick(Sender: TObject);
    procedure BBTT2Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure DBGrid2EditButtonClick(Sender: TObject);
    procedure DBGrid1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure DelDetAfterOpen(DataSet: TDataSet);
  private
    { Private declarations }
    LB:String;
    DepID_CD:String;
    DepName_CD:String;
    procedure Init_LB();
    procedure DelDet_LB_Edit();
    Function DelDet_LB_Check():boolean;
    procedure DelDetAfterOpen_ColumnShow();
  public
    { Public declarations }
  end;

var
  ChangeEquipmentC: TChangeEquipmentC;
  NDate:TDate;

implementation

{$R *.dfm}

uses main1, EquipmentC_Dep1, EquipmentC1, FunUnit;
//
procedure TChangeEquipmentC.Init_LB();
begin
  LB:='CCCCCCCCCC';
end;





//

procedure TChangeEquipmentC.DelDetAfterOpen_ColumnShow();
var i,GroupBox_Left:integer;
    slPickList:TStringList;
begin
  //
  GroupBox_Left:=190;
  for i:=5 to 16 do
    DBGrid2.Columns[i].Visible:=false;
    DBGrid2.Columns[6].Visible:=true;
    DBGrid2.Columns[6].Title.Caption:='備註|DepIDMemo';
end;

//
procedure TChangeEquipmentC.DelDet_LB_Edit();
begin
  with DelDet do
  begin
    Edit;
    //
    FieldByName('PARAMENT1').Value:='DepID_Memo';
    Post;
  end;
end;

//
procedure TChangeEquipmentC.DBGrid1DblClick(Sender: TObject);
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

procedure TChangeEquipmentC.DBGrid1EditButtonClick(Sender: TObject);
begin
  if DBGrid1.selectedfield.fieldname='DepName'  then
  begin
    BBTT1.Click;
  end;
end;

procedure TChangeEquipmentC.DBGrid1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if DelMas.FieldByName('YN').value='0' then
  begin
    DBGrid1.canvas.font.color:=clred;
  end;
end;

procedure TChangeEquipmentC.DBGrid2EditButtonClick(Sender: TObject);
begin
 if DBGrid2.selectedfield.fieldname='SBBH'  then
  begin
    BBTT2.Click;
  end;
end;

procedure TChangeEquipmentC.DelDetAfterOpen(DataSet: TDataSet);
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
  if  (DelDet.recordcount>0) then
  begin
    Button2.Enabled:=true;
  end;

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
    Button2.Enabled:=false;
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
    Button2.Enabled:=false;
  end;
  BD5.Enabled:=false;
  BD6.Enabled:=false;
end;

Function TChangeEquipmentC.DelDet_LB_Check():boolean;
var iRes:boolean;
begin
  iRes:=true;

  with DelDet do
  begin
    if DelMas.fieldbyname('LB').AsString ='CCCCCCCCCC' then  //
    begin
      if ((FieldByName('VALUE1').Isnull)) then
      begin
        iRes:=false;
      end else
      begin
         result:=IRes;
      end;
    end;
  end;
end;

//
procedure TChangeEquipmentC.BB2Click(Sender: TObject);
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

procedure TChangeEquipmentC.BB3Click(Sender: TObject);
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

procedure TChangeEquipmentC.BB4Click(Sender: TObject);
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

procedure TChangeEquipmentC.BB5Click(Sender: TObject);
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
                       sql.Add('select LLNO from TSCD_KCCC where LLNO like '+''''+y+m+'%'+'''');
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
                           sql.add('values ('+''''+'TSCD_KCCC'+''''+','+''''+DelMas.fieldbyname('LLNO').Value+'''');
                           sql.add(','+''''+' '+''''+','+''''+DelMas.fieldbyname('USERID').Value+''''+',');
                           sql.add(''''+main.Edit1.Text+''''+',getdate())'); }
                           SQL.Add('Update TSCD_KCCC Set flowflag=''X'' where LLNO='''+DelMas.FieldByName('LLNO').AsString+''' ');
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


procedure TChangeEquipmentC.BB6Click(Sender: TObject);
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

procedure TChangeEquipmentC.BBTT1Click(Sender: TObject);
begin
  EquipmentC_Dep:=TEquipmentC_Dep.Create(self);
  EquipmentC_Dep.Show;
end;

procedure TChangeEquipmentC.BBTT2Click(Sender: TObject);
begin
  EquipmentC:=TEquipmentC.Create(self);
  EquipmentC.Show;
end;

procedure TChangeEquipmentC.BD2Click(Sender: TObject);
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

procedure TChangeEquipmentC.BD3Click(Sender: TObject);
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

procedure TChangeEquipmentC.BD4Click(Sender: TObject);
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

procedure TChangeEquipmentC.BD5Click(Sender: TObject);
var i:integer;
begin
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
                         sql.add('values ('+''''+'TSCD_KCCCS'+''''+','+''''+DelMas.fieldbyname('LLNO').Value+'''');
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

procedure TChangeEquipmentC.BD6Click(Sender: TObject);
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

procedure TChangeEquipmentC.Button1Click(Sender: TObject);
begin
Init_LB();
  with DelMas do
  begin
    active:=false;
    sql.Clear;
    sql.add('select TSCD_KCCC.*,BDepartment.DepName  ');
    sql.add('from TSCD_KCCC');
    sql.add('left join TSCD_BDepartment BDepartment on TSCD_KCCC.DepID=BDepartment.ID');
    sql.add('where ISNULL(flowflag,'''')<>''X'' and TSCD_KCCC.LLNO like ');
    sql.add(''''+edit1.Text+'%'+'''');
    if CBX1.itemindex<>0 then
    begin
      sql.add('and BDepartment.DepName like ');
      sql.add(''''+CBX1.Text+'%'+'''');
    end;
    sql.add('and convert(smalldatetime,convert(varchar,TSCD_KCCC.USERDATE,111)) between ');
    sql.add(''''+formatdatetime('yyyy/MM/dd',DTP1.Date) +'''');
    sql.add(' and  ');
    sql.add(''''+formatdatetime('yyyy/MM/dd',DTP2.Date) +'''');
    sql.add('and TSCD_KCCC.LB='''+LB+''' ');
    if Check.Checked then
    begin
      sql.Add('and TSCD_KCCC.USERID='+''''+main.Edit1.Text+'''');
    end;
    sql.add('and TSCD_KCCC.LB='''+LB+''' ');
    SQL.Add('and TSCD_KCCC.GSBH='''+main.Edit2.Text+''' ');
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
  DelDet.Active:=true;
end;


procedure TChangeEquipmentC.Button2Click(Sender: TObject);
var i:integer;
begin
  try
    if messagedlg('Confirm or not ?',mtinformation,[mbYes,mbNo],0)=mrYes then
    begin
      DelDet.First;
      if DelDet.RecordCount>0  then
      begin
        while not DelDet.Eof do
        begin
          with Qtemp do
          begin
            Active:=false;
            SQL.Clear;
            SQL.Add('Insert into TSCD_History ');
            SQL.Add('Select GetDate() as SYSDate,TSCD.* from TSCD where TSID='''+DelDet.fieldbyname('TSID').AsString+''' ');
            Execsql;
          end;
          //
          with TSCD do
          begin
            active:=false;
            sql.Clear;
            sql.add('Update TSCD Set ');
            for i:=0 to 5 do  //5 cot
            begin
                if  DelDet.Fields[2+i].AsString<>'' then
                  sql.add(DelDet.Fields[2+i].AsString+'='''+DelDet.Fields[8+i].AsString+''', ');
            end;
            sql.add('LLNO='''+DelDet.fieldbyname('LLNO').AsString+''',CFMID_LL='''+main.Edit1.Text+''''+',CFMDATE_LL= getdate() ');
            SQL.Add('where TSID='''+DelDet.fieldbyname('TSID').AsString+''' ');
            //funcObj.WriteErrorLog(sql.Text);
            Execsql;
          end;
          DelDet.Next;
        end;
      end;
      with DelMas do
      begin
        cachedupdates:=true;
        edit;
        fieldbyname('CFMID').Value:= main.edit1.text;
        fieldbyname('CFMDATE').Value:=Ndate;
        UPMas.Apply(ukmodify);
        active:=false;
        active:=true;
      end;
      showmessage('Succeed.');
    end;
  except
    showmessage('Have wrong.');
  end;
end;

procedure TChangeEquipmentC.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=Cafree;
end;

procedure TChangeEquipmentC.FormCreate(Sender: TObject);
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


procedure TChangeEquipmentC.FormDestroy(Sender: TObject);
begin
  ChangeEquipmentC:=nil;
end;

procedure TChangeEquipmentC.BB1Click(Sender: TObject);
begin
  panel2.Visible:= true;
end;

procedure TChangeEquipmentC.PC1Change(Sender: TObject);
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

end.
