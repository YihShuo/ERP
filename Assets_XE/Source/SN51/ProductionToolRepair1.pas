unit ProductionToolRepair1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, Data.DB, Bde.DBTables, Vcl.StdCtrls,
  Vcl.DBCtrls, Vcl.ExtCtrls, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  Vcl.ComCtrls, Vcl.Mask, Vcl.Buttons;

type
  TProductionToolRepair = class(TForm)
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
    BDT7: TBitBtn;
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
    Splitter1: TSplitter;
    BDelRec: TQuery;
    DelMas: TQuery;
    DelMasLLNO: TStringField;
    DelMasGSBH: TStringField;
    DelMasDepID: TStringField;
    DelMasDepName: TStringField;
    DelMasMemo: TStringField;
    DelMasLB: TStringField;
    DelMasUSERID: TStringField;
    DelMasUSERDATE: TDateTimeField;
    DelMasCFMID: TStringField;
    DelMasCFMDATE: TDateTimeField;
    DelMasYN: TStringField;
    DelMasflowflag: TStringField;
    UpMas: TUpdateSQL;
    DS1: TDataSource;
    DS2: TDataSource;
    Qtemp: TQuery;
    DelDet: TQuery;
    DelDetLLNO: TStringField;
    DelDetTSID: TStringField;
    DelDetUSERID: TStringField;
    DelDetUSERDATE: TDateTimeField;
    DelDetYN: TStringField;
    DelDetQty: TFloatField;
    UPDet: TUpdateSQL;
    Query1: TQuery;
    DSKCPK: TDataSource;
    UpKCPK: TUpdateSQL;
    KCPK: TQuery;
    KCPKLLNO: TStringField;
    KCPKTSID: TStringField;
    KCPKCLBH: TStringField;
    KCPKRKNO: TStringField;
    KCPKQty: TFloatField;
    KCPKUserID: TStringField;
    KCPKUserDate: TDateTimeField;
    KCPKYN: TStringField;
    Panel3: TPanel;
    Label7: TLabel;
    Label6: TLabel;
    Label26: TLabel;
    DBEdit9: TDBEdit;
    BBTT2: TBitBtn;
    DBEdit13: TDBEdit;
    MM_GBox: TGroupBox;
    Label16: TLabel;
    Label23: TLabel;
    Label20: TLabel;
    Label24: TLabel;
    Label5: TLabel;
    SS_GBox: TGroupBox;
    Label21: TLabel;
    Label27: TLabel;
    BB_GBox: TGroupBox;
    Label36: TLabel;
    Label37: TLabel;
    LL_GBox: TGroupBox;
    Label8: TLabel;
    Label10: TLabel;
    RR_GBox: TGroupBox;
    Label15: TLabel;
    Label19: TLabel;
    DD_GBox: TGroupBox;
    Label22: TLabel;
    Label25: TLabel;
    DBMemo1: TDBMemo;
    pnl4: TPanel;
    DBGrid2: TDBGridEh;
    DelDetReason: TStringField;
    DelDetMemo: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure BB1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BB2Click(Sender: TObject);
    procedure BB3Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure BBTT1Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure DBGrid1EditButtonClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure PC1Change(Sender: TObject);
    procedure DelDetAfterOpen(DataSet: TDataSet);
    procedure BD2Click(Sender: TObject);
    procedure BD3Click(Sender: TObject);
    procedure BD4Click(Sender: TObject);
    procedure BD5Click(Sender: TObject);
    procedure BBTT2Click(Sender: TObject);
    procedure BD6Click(Sender: TObject);
    procedure BDT7Click(Sender: TObject);
    procedure DBGrid2EditButtonClick(Sender: TObject);
    procedure DBGrid2GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
  private
    LB:String;
    procedure Init_LB();
    procedure DelDetAfterOpen_ColumnShow();
    procedure DelDet_LB_Edit();
    Function DelDet_LB_Check():boolean;
    { Private declarations }
  public
    DepID_CD:String;
    DepName_CD:String;
    { Public declarations }
  end;

var
  ProductionToolRepair: TProductionToolRepair;
  NDate:TDate;
implementation

{$R *.dfm}

uses main1, ProductionToolRepair_Dep1, ProductionToolRepair_CL1,
  ProductionToolRepair_printTW1;

procedure TProductionToolRepair.Init_LB();
begin
  LB:='DDDDDDDDDD';
end;

procedure TProductionToolRepair.DelDetAfterOpen_ColumnShow();
var i,GroupBox_Left:integer;
begin
  //
  GroupBox_Left:=190;
  //DBGrid2.Columns[4].Title.Caption:='故障原因|Nguyen do';
  DD_GBox.Visible:=true;
  DD_GBox.Left:=GroupBox_Left;
  //
end;
//

procedure TProductionToolRepair.DelDet_LB_Edit();
begin
  with DelDet do
  begin
    Edit;
    //di ve ton kho
    Post;
  end;
end;

Function TProductionToolRepair.DelDet_LB_Check():boolean;
var iRes:boolean;
begin
  iRes:=true;
  with DelDet do
  begin
    if DelMas.fieldbyname('LB').AsString ='RRRRRRRRRR' then  //歸還 di ve ton kho
    begin
        iRes:=false;
    end;
  end;
  result:=iRes;
end;

procedure TProductionToolRepair.PC1Change(Sender: TObject);
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

procedure TProductionToolRepair.BB1Click(Sender: TObject);
begin
    panel2.Visible:=true;
end;

procedure TProductionToolRepair.BB2Click(Sender: TObject);
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

procedure TProductionToolRepair.BB3Click(Sender: TObject);
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

procedure TProductionToolRepair.BB4Click(Sender: TObject);
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

procedure TProductionToolRepair.BB5Click(Sender: TObject);
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
                       sql.Add('select LLNO from KO_KCDD where LLNO like '+''''+y+m+'%'+'''');
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
                         if (DelMas.FieldByName('Flowflag').AsString<>'X') and (trim(DelMas.FieldByName('Flowflag').AsString)<>'') then
                          begin
                            Showmessage('Gui trinh ky. Khong cho phep xoa !');
                            abort;
                          end;
                         with BDelRec do
                         begin
                           active:=false;
                           sql.Clear;
                           {sql.add('insert into BDelRec ');
                           sql.add('(TableName ,TNO,CLBH,OldID,DelID,DelDate)');
                           sql.add('values ('+''''+'TSCD_KCDD'+''''+','+''''+DelMas.fieldbyname('LLNO').Value+'''');
                           sql.add(','+''''+' '+''''+','+''''+DelMas.fieldbyname('USERID').Value+''''+',');
                           sql.add(''''+main.Edit1.Text+''''+',getdate())');}
                           SQL.Add('Update KO_KCDD Set flowflag=''X'' where LLNO='''+DelMas.FieldByName('LLNO').AsString+''' ');
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
                                    Showmessage('Gui trinh ky. Khong cho phep sua !');
                                    abort;
                                  end;
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

procedure TProductionToolRepair.BB6Click(Sender: TObject);
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

procedure TProductionToolRepair.BBTT1Click(Sender: TObject);
begin
  ProductionToolRepair_Dep:=TProductionToolRepair_Dep.Create(self);
  ProductionToolRepair_Dep.Show;
end;

procedure TProductionToolRepair.BBTT2Click(Sender: TObject);
begin
  ProductionToolRepair_CL:=TProductionToolRepair_CL.Create(self);
  ProductionToolRepair_CL.Show;
end;

procedure TProductionToolRepair.BD2Click(Sender: TObject);
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
  //DelDet_LB_Edit();
end;

procedure TProductionToolRepair.BD3Click(Sender: TObject);
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
  //DBGrid2.columns[5].ButtonStyle:=cbsEllipsis;
end;

procedure TProductionToolRepair.BD4Click(Sender: TObject);
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
  //DelDet_LB_Edit();
end;

procedure TProductionToolRepair.BD5Click(Sender: TObject);
var i:integer;
begin
  //Check user have key in column value
    {if DelDet_LB_Check()=false then
    begin
      Showmessage('Can not be empty');
      abort;
    end;}
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
                       {if DelDet.FieldByName('Maintain').Value = True then begin
                         Query1.Active := false;
                         Query1.SQL.Clear;
                         Query1.SQL.Add('Select top 1 Userdate from TSCD_KCDDS where TSID = '''+DelDet.FieldByName('TSID').AsString+''' and Maintain = 1 order by USERDATE DESC');
                         Query1.Active := true;

                         Qtemp.Active := false;
                         Qtemp.SQL.Clear;
                         if Query1.IsEmpty then
                           Qtemp.SQL.Add('Update TSCD set CycleDate = NULL where TSID = '''+DelDet.FieldByName('TSID').AsString+'''')
                         else
                           Qtemp.SQL.Add('Update TSCD set CycleDate = '''+DelDet.FieldByName('Userdate').AsString+'''+ISNULL(TSCD.CycleDay,0) where TSID = '''+DelDet.FieldByName('TSID').AsString+'''');
                         Qtemp.ExecSQL;
                       end; }

                       with BDelRec do
                       begin
                         active:=false;
                         sql.Clear;
                         sql.add('insert into BDelRec ');
                         sql.add('(TableName ,TNO,CLBH,OldID,DelID,DelDate)');
                         sql.add('values ('+''''+'KO_KCDDS'+''''+','+''''+DelMas.fieldbyname('LLNO').Value+'''');
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
                              {if DelDet.FieldByName('Maintain').Value = False then begin
                                Query1.Active := false;
                                Query1.SQL.Clear;
                                Query1.SQL.Add('Select top 1 Userdate from TSCD_KCDDS where TSID = '''+DelDet.FieldByName('TSID').AsString+''' and Maintain = 1 order by USERDATE DESC');
                                Query1.Active := true;

                                Qtemp.Active := false;
                                Qtemp.SQL.Clear;
                                if Query1.IsEmpty then
                                  Qtemp.SQL.Add('Update TSCD set CycleDate = NULL where TSID = '''+DelDet.FieldByName('TSID').AsString+'''')
                                else
                                  Qtemp.SQL.Add('Update TSCD set CycleDate = '''+DelDet.FieldByName('Userdate').AsString+'''+ISNULL(TSCD.CycleDay,0) where TSID = '''+DelDet.FieldByName('TSID').AsString+'''');
                                Qtemp.ExecSQL;
                              end; }
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
  {DBGrid2.columns[1].ButtonStyle:=cbsNone;
  DBGrid2.columns[7].ButtonStyle:=cbsNone;   }
  showmessage('Succeed.');
  except
    Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
  end;
end;

procedure TProductionToolRepair.BD6Click(Sender: TObject);
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
  {DBGrid2.columns[1].ButtonStyle:=cbsNone;
  DBGrid2.columns[7].ButtonStyle:=cbsNone;}
end;

procedure TProductionToolRepair.BDT7Click(Sender: TObject);
begin
  if DelDet.RequestLive then
  begin
    showmessage('Pls save Master data first.');
    Abort;
  end;
  ProductionToolRepair_printTW:=TProductionToolRepair_printTW.Create(self);
  ProductionToolRepair_printTW.quickrep1.prepare;
  ProductionToolRepair_printTW.quickrep1.preview;
  ProductionToolRepair_printTW.free;
end;

procedure TProductionToolRepair.Button1Click(Sender: TObject);
begin
  Init_LB();
  with DelMas do
  begin
    active:=false;
    sql.Clear;
    sql.add('select KO_KCDD.*,BDepartment.DepName  ');
    sql.add('from KO_KCDD');
    sql.add('left join TSCD_BDepartment BDepartment on KO_KCDD.DepID=BDepartment.ID');
    sql.add('where ISNULL(flowflag,'''')<>''X'' and KO_KCDD.LLNO like ');
    sql.add(''''+edit1.Text+'%'+'''');
    if CBX1.itemindex<>0 then
    begin
      sql.add('and BDepartment.DepName like ');
      sql.add(''''+CBX1.Text+'%'+'''');
    end;
    sql.add('and convert(smalldatetime,convert(varchar,KO_KCDD.USERDATE,111)) between ');
    sql.add(''''+formatdatetime('yyyy/MM/dd',DTP1.Date) +'''');
    sql.add(' and  ');
    sql.add(''''+formatdatetime('yyyy/MM/dd',DTP2.Date) +'''');
    sql.add('and KO_KCDD.LB='''+LB+''' ');
    if Check.Checked then
    begin
      sql.Add('and KO_KCDD.USERID='+''''+main.Edit1.Text+'''');
    end;
    sql.add('and KO_KCDD.LB='''+LB+''' ');
    SQL.Add('and KO_KCDD.GSBH='''+main.Edit2.Text+''' ');
    sql.add('order by LLNO DESC');
    //showmessage(sql.Text);
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

procedure TProductionToolRepair.DBGrid1DblClick(Sender: TObject);
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

procedure TProductionToolRepair.DBGrid1EditButtonClick(Sender: TObject);
begin
  if DBGrid1.selectedfield.fieldname='DepName'  then
  begin
    BBTT1.Click;
  end;
end;

procedure TProductionToolRepair.DBGrid1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if DelMas.FieldByName('YN').value='0' then
  begin
    DBGrid1.canvas.font.color:=clred;
  end;
end;

procedure TProductionToolRepair.DBGrid2EditButtonClick(Sender: TObject);
begin
  if DBGrid2.selectedfield.fieldname='CLBH'  then
  begin
    BBTT2.Click;
  end;
end;

procedure TProductionToolRepair.DBGrid2GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if DelDet.FieldByName('YN').value='0' then
  begin
    DBGrid2.canvas.font.color:=clred;
  end;
end;

procedure TProductionToolRepair.DelDetAfterOpen(DataSet: TDataSet);
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

procedure TProductionToolRepair.FormClose(Sender: TObject;
  var Action: TCloseAction);
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

procedure TProductionToolRepair.FormCreate(Sender: TObject);
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

procedure TProductionToolRepair.FormDestroy(Sender: TObject);
begin
    ProductionToolRepair:=nil;
end;

end.
