unit DelOther_O1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, DBTables, DB, StdCtrls, ComCtrls, DBCtrls, Grids,
  DBGrids, Mask, Buttons, ExtCtrls,dateutils, GridsEh, DBGridEh ,IniFiles,comobj;


type
  TDelOther_O = class(TForm)
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
    TS4: TTabSheet;
    Panel3: TPanel;
    Label7: TLabel;
    Label8: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBMemo1: TDBMemo;
    DBEdit13: TDBEdit;
    BBTT2: TBitBtn;
    DBEdit14: TDBEdit;
    DS4: TDataSource;
    DelDet: TQuery;
    DelDetLLNO: TStringField;
    DelDetCLBH: TStringField;
    DelDetYWPM: TStringField;
    DelDetDWBH: TStringField;
    DelDetTempQty: TCurrencyField;
    DelDetQty: TCurrencyField;
    DelDetUSPrice: TCurrencyField;
    DelDetCostID: TStringField;
    DelDetSCBH: TStringField;
    DelDetUSERDATE: TDateTimeField;
    DelDetUSERID: TStringField;
    DelDetYN: TStringField;
    DelDetDFL: TStringField;
    DelDetCLSL: TCurrencyField;
    DelDetPerson: TFloatField;
    DelDetYYBH: TStringField;
    DelDetYWSM: TStringField;
    UPDet: TUpdateSQL;
    DS3: TDataSource;
    DelMas: TQuery;
    DelMasLLNO: TStringField;
    DelMasSCBH: TStringField;
    DelMasDepID: TStringField;
    DelMasDepName: TStringField;
    DelMasUSERDATE: TDateTimeField;
    DelMasUSERID: TStringField;
    DelMasCFMDate: TDateTimeField;
    DelMasCFMID: TStringField;
    DelMasYN: TStringField;
    DelMasGSBH: TStringField;
    DelMasCKBH: TStringField;
    UpMas: TUpdateSQL;
    Query1: TQuery;
    PopupMenu1: TPopupMenu;
    Other1: TMenuItem;
    DelDetZWPM: TStringField;
    DelDetZWSM: TStringField;
    DelDetMEMO: TStringField;
    BDelRec: TQuery;
    DelMasPMark: TIntegerField;
    Panel2: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    CBX1: TComboBox;
    Check: TCheckBox;
    DelMasflowflag: TStringField;
    DBGridEh1: TDBGridEh;
    DBGridEh2: TDBGridEh;
    DelDetVNPrice: TCurrencyField;
    DelDetCWHL: TCurrencyField;
    DelDetVNACC: TCurrencyField;
    BitBtn1: TBitBtn;
    chk_Old: TCheckBox;
    procedure BB1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BB7Click(Sender: TObject);
    procedure BD7Click(Sender: TObject);
    procedure BB2Click(Sender: TObject);
    procedure BB3Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure BD2Click(Sender: TObject);
    procedure BD3Click(Sender: TObject);
    procedure BD4Click(Sender: TObject);
    procedure BD5Click(Sender: TObject);
    procedure BD6Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure BBT1Click(Sender: TObject);
    procedure BBT2Click(Sender: TObject);
    procedure BBT3Click(Sender: TObject);
    procedure BBT4Click(Sender: TObject);
    procedure BDT1Click(Sender: TObject);
    procedure BDT2Click(Sender: TObject);
    procedure BDT3Click(Sender: TObject);
    procedure BDT4Click(Sender: TObject);
    procedure BBTT1Click(Sender: TObject);
    procedure DelDetAfterOpen(DataSet: TDataSet);
    procedure BBTT2Click(Sender: TObject);
    procedure PC1Change(Sender: TObject);
    procedure BDT5Click(Sender: TObject);
    procedure DelMasAfterOpen(DataSet: TDataSet);
    procedure DelDetCalcFields(DataSet: TDataSet);
    procedure FormDestroy(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure DBGridEh1EditButtonClick(Sender: TObject);
    procedure DBGridEh1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGridEh2DblClick(Sender: TObject);
    procedure DBGridEh2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure DBGridEh2EditButtonClick(Sender: TObject);
    procedure bbt6Click(Sender: TObject);
    procedure BDT6Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    CKBHList:TStringlist;
    procedure ReadIni();
    { Private declarations }
  public
    { Public declarations }
    VNPrice_DiplayFormat:string;
    VNPrice_Decimal:Byte;
    Pro_CostID_TV:string;
  end;

var
  DelOther_O: TDelOther_O;
  NDate:TDate;

implementation

uses main1, DelOther_O_Dep1, DelOther_O_CL1,
     DelOther_O_Print1, DelOther_O_YY1, FunUnit, DelOther_O_PrintTB1;

{$R *.dfm}

procedure TDelOther_O.BB1Click(Sender: TObject);
begin

panel2.Visible:=true;
end;

procedure TDelOther_O.Button1Click(Sender: TObject);
begin

  with DelMas do
  begin
    active:=false;
    sql.Clear;
    sql.add('select KCLL.*,BDepartment.DepName  ');
    if chk_old.Checked then
      sql.add('from ( Select * From KCLL union all Select * From KCLL_2014) KCLL')
    else
      sql.add('from KCLL');
    sql.add('left join BDepartment on KCLL.DepID=BDepartment.ID');
    sql.add('where ISNULL(flowflag,'''')<>''X'' and KCLL.LLNO like ');
    sql.add(''''+edit1.Text+'%'+'''');
    if CBX1.itemindex<>0 then
    begin
        sql.add('and BDepartment.DepName like ');
        sql.add(''''+CBX1.Text+'%'+'''');
    end;
    sql.add('and convert(smalldatetime,convert(varchar,KCLL.USERDATE,111)) between ');
    sql.add(''''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date) +'''');
    sql.add('and KCLL.SCBH='+''''+'XXXXXXXXXX'+'''');
    sql.add('and KCLL.GSBH='+''''+main.Edit2.Text+'''');  
    if Check.Checked then
    begin
        sql.Add('and KCLL.USERID='+''''+main.Edit1.Text+'''');
    end;
    sql.add('order by LLNO DESC');
    active:=true;
  end;
  panel2.Visible:=false;
  BB2.Enabled:=true;
  BB3.Enabled:=true;
  BB4.Enabled:=true;
  BBT1.Enabled:=true;
  BBT2.Enabled:=true;
  BBT3.Enabled:=true;
  BBT4.Enabled:=true;
  BBT6.Enabled:=true;
  check.Checked:=true;
  //DelDet.Active:=true;
  with DelDet do
  begin 
    active:=false;
    SQL.Clear;
    SQL.Add('select KCLLS.*,CLZL.YWPM,CLZL.DWBH,SCBLYY.YWSM,SCBLYY.ZWSM,CLZL.ZWPM  ');
    if chk_old.Checked then
      SQL.Add('from (Select * from KCLLS union all Select * from KCLLS_2014)KCLLS  ')
    else
      SQL.Add('from KCLLS  ');
    SQL.Add('left join CLZL on CLZL.CLDH=KCLLS.CLBH  ');
    SQL.Add('left join SCBLYY on SCBLYY.YYBH=KCLLS.YYBH  ');
    SQL.Add('where KCLLS.LLNO=:LLNO  ');
    SQL.Add('order by KCLLS.DFL ,KCLLS.CLBH,KCLLS.SCBH  ');
    active:=true;
  end; 

end;

procedure TDelOther_O.ReadIni();
var MyIni :Tinifile;
    AppDir:string;
begin
  //
  VNPrice_DiplayFormat:='#,##0';
  VNPrice_Decimal:=0;
  AppDir:=ExtractFilePath(Application.ExeName);
  if FileExists(AppDir+'\ComName.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ComName.ini');
      VNPrice_DiplayFormat:=MyIni.ReadString('VNPrice','DiplayFormat','#,##0');
      VNPrice_Decimal:=strtoint(MyIni.ReadString('VNPrice','Decimal','0'));
      Pro_CostID_TV:= MyIni.ReadString('ERP','Pro_CostID_TV','');

    finally
      MyIni.Free;
    end;
  end;
  TCurrencyField(DelDet.FieldByName('VNPrice')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(DelDet.FieldByName('VNACC')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(DelDet.FieldByName('CWHL')).DisplayFormat:=VNPrice_DiplayFormat;
end;

procedure TDelOther_O.FormCreate(Sender: TObject);
var i:integer;
begin
  with Query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select ID,DepName from BDepartment');
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
    sql.add('select CKBH from KCCK order by CKBH');
    active:=true;
    for i:=1 to recordcount do
    begin
      DBGridEh1.Columns[4].PickList.Add(fieldbyname('CKBH').asstring);
      Next;
    end;
    active:=false;
    sql.Clear;
    sql.add('select getdate() as NDate ');
    active:=true;
    NDate:=fieldbyname('NDate').Value;
  end;
  ////20180907 change condition CKBH
  CKBHList:=TStringlist.Create;
  with Query1 do
  begin
    active:=false;
    sql.Clear;
    SQL.Add('select CKBH from (');
    SQL.Add('Select Bgszl.GSDH as GSBH,Bgszl.DFL,Bgszl.SFL,Bgszl.TGSBH,Bgszl.GXLB');
    SQL.Add('       ,KCCK.CKBH,KCCK.DFL as KDFL ');
    SQL.Add('from Bgszl');
    SQL.Add('left join  KCCK on Bgszl.GSDH=KCCK.GSBH');
    SQL.Add('where IsNull(tybh,'''')<>''Y'' ');
    SQL.Add(' ) BGSZL');
    SQL.Add('where 1=1 and KDFL is null and CKBH is not null and SFL=''TM'' ');
    SQL.Add('   and DFL in (select DFL from Bgszl where GSDH='''+main.Edit2.Text+''')');
    SQL.Add('Group by CKBH');
    Active:=true;
    for i:=0 to RecordCount-1 do
    begin
      CKBHList.Add(FieldByName('CKBH').AsString);
      Next;
    end;
    Active:=false;
  end;
  PC1.ActivePage:=TS3;
  DTP1.Date:=Ndate-3;
  DTP2.date:=Ndate;
  ReadIni();
end;

procedure TDelOther_O.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if BB5.enabled  then
  begin
    messagedlg('You have to save data Record of report first.',mtwarning,[mbyes],0);
    PC1.ActivePage:=TS3;
    panel1.Visible:=true;
    panel6.Visible:=false;
    action:=canone;
  end
  else
    begin
      if BD5.enabled then
        begin
          messagedlg('You have to save data Report first.',mtwarning,[mbyes],0);
          PC1.ActivePage:=TS4;
          panel6.Visible:=true;
          panel1.Visible:=false;
          action:=canone;
        end
          else
            begin
              action:=Cafree;
            end;
    end;
end;

procedure TDelOther_O.BB7Click(Sender: TObject);
begin
  close;
end;

procedure TDelOther_O.BD7Click(Sender: TObject);
begin
  close;
end;

procedure TDelOther_O.BB2Click(Sender: TObject);
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
  DBGridEh1.columns[2].ButtonStyle:=cbsEllipsis;
end;

procedure TDelOther_O.BB3Click(Sender: TObject);
begin

  if (DelDet.recordcount=0)  and (delmas.FieldByName('pmark').Value=Null) then
  begin
    with DelMas do
      begin
        requestlive:=true;
        cachedupdates:=true;
        edit;
        fieldbyname('YN').Value:='0';
      end;
  end
    else
      begin
        showmessage('Pls delete the Deliver Detail first.')
      end;
  BBTT1.Visible:=true;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
  DBGridEh1.columns[2].ButtonStyle:=cbsEllipsis;
end;

procedure TDelOther_O.BB4Click(Sender: TObject);
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
    DBGridEh1.columns[2].ButtonStyle:=cbsEllipsis;
end;

procedure TDelOther_O.BB5Click(Sender: TObject);
var y,m,a:string;
    i:integer;
begin
  with query1 do          //取服務器的年月值
  begin
    active:=false;
    sql.Clear;
    sql.Add('select year(getdate()) as FY,month(getdate()) as FM,getdate() as NDate ');
    active:=true;
    y:=fieldbyname('FY').asstring;
    m:=fieldbyname('FM').asstring;
    NDate:=fieldbyname('NDate').value;
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
                     with query1 do    //計算領料單流水號
                       begin
                         active:=false;
                         sql.Clear;
                         sql.Add('select LLNO from KCLL where LLNO like '+''''+y+m+'%'+'''');
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
                     DelMas.fieldbyname('GSBH').Value:=main.Edit2.Text;
                     DelMas.fieldbyname('SCBH').Value:='XXXXXXXXXX' ;
                     DelMas.FieldByName('userID').Value:=main.edit1.text;
                     DelMas.FieldByName('userdate').Value:=Ndate;
                     DelMas.FieldByName('CFMID').Value:='NO';
                     DelMas.FieldByName('YN').Value:='1';
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
                         if (DelMas.FieldByName('Flowflag').AsString<>'X') and (trim(DelMas.FieldByName('Flowflag').AsString)<>'') then
                         begin
                          Showmessage('Gui trinh ky phieu xuat vat tu. khhog cho phep sua !');
                          abort;
                         end;
                         with BDelRec do
                         begin
                             active:=false;
                             sql.Clear;
                             {sql.add('insert into BDelRec ');
                             sql.add('(TableName ,TNO,CLBH,OldID,DelID,DelDate)');
                             sql.add('values ('+''''+'KCLL'+''''+','+''''+DelMas.fieldbyname('LLNO').Value+'''');
                             sql.add(','+''''+' '+''''+','+''''+DelMas.fieldbyname('USERID').Value+''''+',');
                             sql.add(''''+main.Edit1.Text+''''+',getdate())');}
                             SQL.Add('Update KCLL Set flowflag=''X'' where LLNO='''+DelMas.FieldByName('LLNO').AsString+''' ');
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
                                   if (DelMas.FieldByName('Flowflag').AsString<>'X') and (trim(DelMas.FieldByName('Flowflag').AsString)<>'') then
                                   begin
                                    Showmessage('Gui trinh ky phieu xuat vat tu. khhog cho phep sua !');
                                    abort;
                                   end;
                                   DelMas.edit;
                                   DelMas.FieldByName('userID').Value:=main.edit1.text;
                                   DelMas.FieldByName('userdate').Value:=Ndate;
                                   upMas.apply(ukmodify);
                               end else
                               begin
                                 showmessage('Date>3, can not modify.');
                               end;
                             end else
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
  bb5.enabled:=false;
  bb6.enabled:=false;
  BBTT1.Visible:=false;
  DBGridEh1.columns[2].ButtonStyle:=cbsnone;
except
  Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
end;

end;

procedure TDelOther_O.BD2Click(Sender: TObject);
begin
  if (DelMas.FieldByName('Flowflag').AsString<>'X') and (trim(DelMas.FieldByName('Flowflag').AsString)<>'') then
  begin
    Showmessage('Gui trinh ky phieu xuat vat tu. khhog cho phep sua !');
    exit;
  end;
  if DelMas.RequestLive then
  begin
    showmessage('Pls save Master data first.');
    PC1.ActivePage:=TS3;
    panel6.visible:=false;
    panel1.visible:=true;
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
  DBGridEh2.columns[0].ButtonStyle:=cbsEllipsis;
  DBGridEh2.columns[3].ButtonStyle:=cbsEllipsis;
  //dbgrid4.columns[7].ButtonStyle:=cbsEllipsis;
end;

procedure TDelOther_O.BD3Click(Sender: TObject);
begin
  if (DelMas.FieldByName('Flowflag').AsString<>'X') and (trim(DelMas.FieldByName('Flowflag').AsString)<>'') then
  begin
    Showmessage('Gui trinh ky phieu xuat vat tu. khhog cho phep sua !');
    exit;
  end;
  if DelMas.RequestLive then
  begin
    showmessage('Pls save Master data first.');
    PC1.ActivePage:=TS3;
    panel6.visible:=false;
    panel1.visible:=true;
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
  DBGridEh2.columns[0].ButtonStyle:=cbsEllipsis;
  DBGridEh2.columns[3].ButtonStyle:=cbsEllipsis;
  //dbgrid4.columns[7].ButtonStyle:=cbsEllipsis;
end;

procedure TDelOther_O.BD4Click(Sender: TObject);
begin
  if (DelMas.FieldByName('Flowflag').AsString<>'X') and (trim(DelMas.FieldByName('Flowflag').AsString)<>'') then
  begin
    Showmessage('Gui trinh ky phieu xuat vat tu. khhog cho phep sua !');
    exit;
  end;
  if DelMas.RequestLive then
  begin
    showmessage('Pls save Master data first.');
    PC1.ActivePage:=TS3;
    panel6.visible:=false;
    panel1.visible:=true;
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
  DBGridEh2.columns[0].ButtonStyle:=cbsEllipsis;
  DBGridEh2.columns[3].ButtonStyle:=cbsEllipsis;
  //dbgrid4.columns[7].ButtonStyle:=cbsEllipsis;
end;

procedure TDelOther_O.BD5Click(Sender: TObject);
var i:integer;
begin
  with DelDet do
  begin
    first;
    while not DelDet.Eof do
      begin
        if DelDet.FieldByName('TempQty').IsNull then
          begin
            showmessage('The Qty can not be empty.');
            abort;
          end;
        if DelDet.FieldByName('YWSM').IsNull then
          begin
            showmessage('The YWSM can not be empty.');
            abort;
          end;
        next;
      end;
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
                    if DelDet.fieldbyname('CLBH').isnull then
                      begin
                        DelDet.delete;
                      end
                      else
                        begin
                          DelDet.edit;
                          if DelDet.fieldbyname('SCBH').isnull then
                            begin
                              DelDet.fieldbyname('SCBH').Value:=DelMas.fieldbyname('SCBH').Value;
                            end;
                          DelDet.fieldbyname('TempQty').Value:=formatfloat('#,##0.##',Deldet.fieldbyname('TempQty').Value); //20141023 四捨五入到小數第二位  
                          DelDet.fieldbyname('Qty').Value:=Deldet.fieldbyname('TempQty').Value;
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
                   showmessage('不是你的，不要亂動。khong phai ban khong duoc tu sua');
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
                             sql.add('values ('+''''+'KCLLS'+''''+','+''''+DelDet.fieldbyname('LLNO').Value+'''');
                             sql.add(','+''''+DelDet.fieldbyname('CLBH').Value+''''+','+''''+DelDet.fieldbyname('USERID').Value+''''+',');
                             sql.add(''''+main.Edit1.Text+''''+',getdate())');
                             execsql;
                             active:=false;
                           end;
                         UpDet.apply(ukdelete);
                       end
                       else
                         begin
                           DelDet.edit;
                           DelDet.fieldbyname('TempQty').Value:=formatfloat('#,##0.##',Deldet.fieldbyname('TempQty').Value); //20141023 四捨五入到小數第二位
                           DelDet.fieldbyname('Qty').Value:=Deldet.fieldbyname('TempQty').Value;
                           DelDet.FieldByName('userID').Value:=main.edit1.text;
                           DelDet.FieldByName('userdate').Value:=Ndate;
                           upDet.apply(ukmodify);
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
    DBGridEh2.columns[0].ButtonStyle:=cbsNone;
    DBGridEh2.columns[3].ButtonStyle:=cbsNone;
  except
    Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
  end;


end;

procedure TDelOther_O.BD6Click(Sender: TObject);
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
  DBGridEh2.columns[0].ButtonStyle:=cbsNone;
  //dbgrid4.columns[5].ButtonStyle:=cbsNone;
  //DBGrid4.Columns[5].ReadOnly:=true;
  DBGridEh2.columns[3].ButtonStyle:=cbsNone;
end;

procedure TDelOther_O.BB6Click(Sender: TObject);
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
  DBGridEh1.columns[2].ButtonStyle:=cbsnone;
end;

procedure TDelOther_O.BBT1Click(Sender: TObject);
begin

DelMas.First;
end;

procedure TDelOther_O.BBT2Click(Sender: TObject);
begin

DelMas.Prior;
end;

procedure TDelOther_O.BBT3Click(Sender: TObject);
begin

DelMas.next;
end;

procedure TDelOther_O.BBT4Click(Sender: TObject);
begin

DelMas.last;
end;

procedure TDelOther_O.BDT1Click(Sender: TObject);
begin

DelDet.first;
end;

procedure TDelOther_O.BDT2Click(Sender: TObject);
begin

DelDet.prior;
end;

procedure TDelOther_O.BDT3Click(Sender: TObject);
begin

DelDet.next;
end;

procedure TDelOther_O.BDT4Click(Sender: TObject);
begin

DelDet.last;
end;

procedure TDelOther_O.BBTT1Click(Sender: TObject);
begin
  DelOther_O_Dep:=TDelOther_O_Dep.Create(self);
  DelOther_O_Dep.Show;
end;

procedure TDelOther_O.DelDetAfterOpen(DataSet: TDataSet);
begin
  BD2.Enabled:=true;
  BD3.Enabled:=true;
  BD4.Enabled:=true;
  BDT1.Enabled:=true;
  BDT2.Enabled:=true;
  BDT3.Enabled:=true;
  BDT4.Enabled:=true;
  BDT5.Enabled:=true;
  BDT6.Enabled:=true;
  BitBtn1.Enabled:=true;
  if (NDate-DelMas.FieldByName('USERDATE').value)>2  then
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
  if not DelMas.FieldByName('PMARK').isnull  then
  begin
    BD2.Enabled:=false;
    BD3.Enabled:=false;
    BD4.Enabled:=false;
  end;

  BD5.Enabled:=false;
  BD6.Enabled:=false;
end;

procedure TDelOther_O.BBTT2Click(Sender: TObject);
begin
  DelOther_O_CL:=TDelOther_O_CL.create(self);
  DelOther_O_CL.show;
end;

procedure TDelOther_O.PC1Change(Sender: TObject);
begin

if PC1.ActivePage=TS4 then
  begin
    panel6.visible:=true;
    panel1.visible:=false;
  end
    else
      begin
        panel6.visible:=false;
        panel1.visible:=true;
      end;
end;

procedure TDelOther_O.BDT5Click(Sender: TObject);
  //20180907 change condition CKBH
  function CheckCKBH_Is_W(CKBH:String):boolean;
  var i:integer;
      iRes:boolean;
  begin
     iRes:=false;
     for i:=0 to  CKBHList.Count-1 do
     begin
       if CKBHList.Strings[i]=CKBH then
       begin
         iRes:=true;
         break;
       end;
     end;
     Result:=iRes;
  end;
begin
  //20161203 增加簽呈系統 開始N->P->Z
  if (DelMas.FieldByName('Flowflag').AsString='X')  or (DelMas.FieldByName('Flowflag').AsString='Z') or  (CheckCKBH_Is_W(DelMas.FieldByName('CKBH').AsString)=false)  then
  begin
    if DelDet.RequestLive then
    begin
      showmessage('Pls save data first.');
      abort;
    end else
    begin
      with DelDet do
      begin
        DelOther_O_Print:=TDelOther_O_Print.Create(nil);
        DelOther_O_Print.quickrep1.prepare;
        DelOther_O_Print.Qpage1.caption:=inttostr(DelOther_O_Print.quickrep1.QRPrinter.pagecount);
        DelOther_O_Print.quickrep1.preview;
        DelDet.active:=false;
        DelDet.active:=true;
        DelOther_O_Print.Free;
      end;
    end;
    with DelMas do
    begin
      requestlive:=true;
      cachedupdates:=true;
      edit;
      if fieldbyname('PMARK').isnull then
      begin
        fieldbyname('PMARK').value:=1;
      end else
      begin
        fieldbyname('PMARK').value:=fieldbyname('PMARK').value+1;
      end;
      UPMAS.Apply(ukmodify);
      requestlive:=false;
      cachedupdates:=false;
    end;
  end else
  begin
    Showmessage('Dang ky he thong  chua hoan thanh !'); 
  end;
end;

procedure TDelOther_O.DelMasAfterOpen(DataSet: TDataSet);
begin
  BB5.Enabled:=false;
  BB6.Enabled:=false;
  BD5.Enabled:=false;
  BD6.Enabled:=false;
end;

procedure TDelOther_O.DelDetCalcFields(DataSet: TDataSet);
begin

  if deldet.FieldByName('CLSL').value<>0 then
  begin
     deldet.FieldByName('person').value:=deldet.FieldByName('tempqty').value/deldet.FieldByName('CLSL').value*100;
  end else
  begin
    deldet.FieldByName('person').value:=0;
  end;
end;

procedure TDelOther_O.FormDestroy(Sender: TObject);
begin
  DelOther_O:=nil;
end;

procedure TDelOther_O.DBGridEh1DblClick(Sender: TObject);
begin
  if  DelMas.Active then
  begin
    if  (DelMas.recordcount>0) then
      begin
        PC1.ActivePage:=TS4;
        panel1.Visible:=false;
        panel6.Visible:=true;
      end;
  end;
end;

procedure TDelOther_O.DBGridEh1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if DelMas.FieldByName('YN').value='0' then
  begin
    DBGridEh1.canvas.font.color:=clred;
    DBGridEh1.defaultdrawcolumncell(rect,datacol,column,state);
  end;
end;

procedure TDelOther_O.DBGridEh1EditButtonClick(Sender: TObject);
begin
  BBTT1Click(nil);
end;

procedure TDelOther_O.DBGridEh1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
  DBGridEh1DblClick(nil);
end;

procedure TDelOther_O.DBGridEh2DblClick(Sender: TObject);
begin
   {
  if  DelMas.Active then
  begin
    if  (DelMas.recordcount>0) then
      begin
        PC1.ActivePage:=TS4;
        panel1.Visible:=false;
        panel6.Visible:=true;
      end;
  end; }
end;

procedure TDelOther_O.DBGridEh2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if DelDet.FieldByName('YN').value='0' then
  begin
    DBGridEh2.canvas.font.color:=clred;
    DBGridEh2.defaultdrawcolumncell(rect,datacol,column,state);
  end;
  if DelDet.FieldByName('LLNO').isnull then
  begin
    DBGridEh2.canvas.font.color:=clLime;
    DBGridEh2.defaultdrawcolumncell(rect,datacol,column,state);
  end;
end;

procedure TDelOther_O.DBGridEh2EditButtonClick(Sender: TObject);
begin
  if DBGridEh2.selectedfield.fieldname='CLBH' then
  begin
    BBTT2click(nil);
  end;
  if DBGridEh2.selectedfield.fieldname='YYBH' then
  begin
    DelOther_O_YY:=TDelOther_O_YY.create(self);
    DelOther_O_YY.show;
  end; 
end;

procedure TDelOther_O.bbt6Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin

  if DelMas.Active then
  begin
    if DelMas.recordcount=0 then
      begin
        showmessage('No record.');
        abort;
      end;
  end
  else
    begin
      showmessage('No record.');
      abort;
    end;

  try
    eclApp:=CreateOleObject('Excel.Application');
    WorkBook:=CreateOleObject('Excel.Sheet');
  except
    Application.MessageBox('NO Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
    Exit;
  end;

  try
    //DelMas.Active:=false;
    WorkBook:=eclApp.workbooks.Add;
    eclapp.Cells.NumberFormatLocal:='@';
    eclApp.Cells(1,1):='NO';
    for   i:=1   to   DelMas.fieldcount   do
    begin
        eclApp.Cells(1,i+1):=DelMas.fields[i-1].FieldName;
    end;
    DelMas.First;
    j:=2;
    while   not  DelMas.Eof   do
    begin
        eclApp.Cells(j,1):=j-1;
        for   i:=1   to   DelMas.fieldcount   do
        begin
            eclApp.Cells(j,i+1):=DelMas.Fields[i-1].Value;
            eclApp.Cells.Cells.item[j,i+1].font.size:='8';
        end;
        DelMas.Next;
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

procedure TDelOther_O.BDT6Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin

  if DelDet.Active then
  begin
    if DelDet.recordcount=0 then
      begin
        showmessage('No record.');
        abort;
      end;
  end
  else
    begin
      showmessage('No record.');
      abort;
    end;

  try
    eclApp:=CreateOleObject('Excel.Application');
    WorkBook:=CreateOleObject('Excel.Sheet');
  except
    Application.MessageBox('NO Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
    Exit;
  end;

  try
    WorkBook:=eclApp.workbooks.Add;
    eclapp.Cells.NumberFormatLocal:='@';
    eclApp.Cells(1,1):='NO';
    for   i:=1   to   DelDet.fieldcount   do
    begin
        eclApp.Cells(1,i+1):=DelDet.fields[i-1].FieldName;
    end;
    DelDet.First;
    j:=2;
    while   not  DelDet.Eof   do
    begin
        eclApp.Cells(j,1):=j-1;
        for   i:=1   to   DelDet.fieldcount   do
        begin
            eclApp.Cells(j,i+1):=DelDet.Fields[i-1].Value;
            eclApp.Cells.Cells.item[j,i+1].font.size:='8';
        end;
        DelDet.Next;
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

procedure TDelOther_O.BitBtn1Click(Sender: TObject);
  //20180907 change condition CKBH
  function CheckCKBH_Is_W(CKBH:String):boolean;
  var i:integer;
      iRes:boolean;
  begin
     iRes:=false;
     for i:=0 to  CKBHList.Count-1 do
     begin
       if CKBHList.Strings[i]=CKBH then
       begin
         iRes:=true;
         break;
       end;
     end;
     Result:=iRes;
  end;
begin
  //20161203 ?????? ??N->P->Z
  if (DelMas.FieldByName('Flowflag').AsString='X')  or (DelMas.FieldByName('Flowflag').AsString='Z') or  (CheckCKBH_Is_W(DelMas.FieldByName('CKBH').AsString)=false)  then
  begin
    if DelDet.RequestLive then
    begin
      showmessage('Pls save data first.');
      abort;
    end else
    begin
      with DelDet do
      begin
        DelOther_O_PrintTB:=TDelOther_O_PrintTB.Create(nil);
        DelOther_O_PrintTB.quickrep1.prepare;
        DelOther_O_PrintTB.Qpage1.caption:=inttostr(DelOther_O_PrintTB.quickrep1.QRPrinter.pagecount);
        DelOther_O_PrintTB.quickrep1.preview;
        DelDet.active:=false;
        DelDet.active:=true;
        DelOther_O_PrintTB.Free;
      end;
    end;
    with DelMas do
    begin
      requestlive:=true;
      cachedupdates:=true;
      edit;
      if fieldbyname('PMARK').isnull then
      begin
        fieldbyname('PMARK').value:=1;
      end else
      begin
        fieldbyname('PMARK').value:=fieldbyname('PMARK').value+1;
      end;
      UPMAS.Apply(ukmodify);
      requestlive:=false;
      cachedupdates:=false;
    end;
  end else
  begin
    Showmessage('Dang ky he thong  chua hoan thanh !'); 
  end;
end;

end.
