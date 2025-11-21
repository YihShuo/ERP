unit ApplyEquipment1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GridsEh, DBGridEh, Mask, DBCtrls, ComCtrls, StdCtrls, Buttons,
  ExtCtrls, DB, DBTables, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls,
  DynVarsEh, EhLibVCL, DBAxisGridsEh,comobj;

type
  TApplyEquipment = class(TForm)
    Panel1: TPanel;
    Label18: TLabel;
    bbInsert: TBitBtn;
    bbDelete: TBitBtn;
    bbModify: TBitBtn;
    bbSave: TBitBtn;
    bbCancel: TBitBtn;
    bbExit: TBitBtn;
    bbQuery: TBitBtn;
    bbFirst: TBitBtn;
    bbPrior: TBitBtn;
    bbNext: TBitBtn;
    bbLast: TBitBtn;
    bbExcel: TBitBtn;
    Panel2: TPanel;
    bdInsert: TBitBtn;
    bdDelete: TBitBtn;
    bdModify: TBitBtn;
    bdSave: TBitBtn;
    bdCancel: TBitBtn;
    bdExit: TBitBtn;
    bdFirst: TBitBtn;
    bdPrior: TBitBtn;
    bdNext: TBitBtn;
    bdLast: TBitBtn;
    bdPrint: TBitBtn;
    bdExcel: TBitBtn;
    PC1: TPageControl;
    TS1: TTabSheet;
    Panel3: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    edtSGNO: TEdit;
    btnQuery: TButton;
    CheckMine: TCheckBox;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    Panel4: TPanel;
    Label11: TLabel;
    Label2: TLabel;
    dbe_CGNO: TDBEdit;
    dbe_USERDATE: TDBEdit;
    DepIDBtn: TBitBtn;
    DBGrid1: TDBGridEh;
    TS2: TTabSheet;
    TS_DelDet: TPanel;
    Panel5: TPanel;
    Label7: TLabel;
    Label6: TLabel;
    Label12: TLabel;
    Label14: TLabel;
    dbeCGNO: TDBEdit;
    dbeSBBH: TDBEdit;
    dbeZWPM: TDBEdit;
    dbeYWPM: TDBEdit;
    bbtSBBH: TBitBtn;
    DBGrid2: TDBGridEh;
    SGMas: TQuery;
    UpMas: TUpdateSQL;
    DS1: TDataSource;
    SGDet: TQuery;
    UPDet: TUpdateSQL;
    DS2: TDataSource;
    SGMasSGNO: TStringField;
    SGMasDepID: TStringField;
    SGMasSGDate: TDateTimeField;
    SGMasUSERDate: TDateTimeField;
    SGMasUSERID: TStringField;
    SGMasYN: TStringField;
    SGMasDepName: TStringField;
    Qtemp: TQuery;
    BDelRec: TQuery;
    SGDetSGNO: TStringField;
    SGDetSBBH: TStringField;
    SGDetYWPM: TStringField;
    SGDetZWPM: TStringField;
    SGDetLSBH: TStringField;
    SGDetQUCBH: TStringField;
    SGDetQty: TFloatField;
    SGDetUSERDate: TDateTimeField;
    SGDetUSERID: TStringField;
    SGDetYN: TStringField;
    SGDetZSJC_YW: TStringField;
    SGMasGSBH: TStringField;
    SGDetMemo: TStringField;
    SGDetzsjc_zw: TStringField;
    SGDetDWBH: TStringField;
    bdPrintTW: TBitBtn;
    SGMasMemo: TStringField;
    SGDetYQDate: TDateTimeField;
    SGMasflowflag: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure btnQueryClick(Sender: TObject);
    procedure bbQueryClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bbInsertClick(Sender: TObject);
    procedure bbDeleteClick(Sender: TObject);
    procedure bbModifyClick(Sender: TObject);
    procedure SGMasAfterOpen(DataSet: TDataSet);
    procedure bbCancelClick(Sender: TObject);
    procedure bbSaveClick(Sender: TObject);
    procedure DepIDBtnClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure bdInsertClick(Sender: TObject);
    procedure bdDeleteClick(Sender: TObject);
    procedure bbtSBBHClick(Sender: TObject);
    procedure PC1Change(Sender: TObject);
    procedure SGDetAfterOpen(DataSet: TDataSet);
    procedure bdModifyClick(Sender: TObject);
    procedure bdCancelClick(Sender: TObject);
    procedure bdSaveClick(Sender: TObject);
    procedure DBGrid2GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure DBGrid2EditButtonClick(Sender: TObject);
    procedure DBGrid1EditButtonClick(Sender: TObject);
    procedure bdPrintClick(Sender: TObject);
    procedure bdPrintTWClick(Sender: TObject);
    procedure bbExcelClick(Sender: TObject);
    procedure bdExcelClick(Sender: TObject);
  private
    NDate:TDate;  
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ApplyEquipment: TApplyEquipment;

implementation

uses main1, ApplyEquipmentDepName1, ApplyEquipment_SBBH1, ApplyEquipment_print1,
     ApplyEquipment_printTW1, FunUnit;

{$R *.dfm}

procedure TApplyEquipment.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=CaFree;
end;

procedure TApplyEquipment.FormDestroy(Sender: TObject);
begin
  ApplyEquipment:=nil;
end;

procedure TApplyEquipment.btnQueryClick(Sender: TObject);
begin

  with SGMas do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select TSCD_SGDH.*,BDepartment.DepName');
    SQL.Add('from TSCD_SGDH ');
    SQL.Add('left join  TSCD_BDepartment BDepartment on BDepartment.ID=TSCD_SGDH.DepID ');
    SQL.Add('where ISNULL(flowflag,'''')<>''X'' and TSCD_SGDH.SGNO like '''+edtSGNO.Text+'%'+''' ');
    SQL.Add('and convert(smalldatetime,convert(varchar,TSCD_SGDH.USERDATE,111)) between ');
    SQL.add(''''+formatdatetime('yyyy/MM/dd',DTP1.Date) +'''');
    SQL.add(' and ');
    SQL.add(''''+formatdatetime('yyyy/MM/dd',DTP2.Date) +'''');
    if CheckMine.Checked then
    begin
      SQL.Add('and TSCD_SGDH.USERID='+''''+main.Edit1.Text+'''');
    end;
    SQL.Add('and TSCD_SGDH.GSBH='''+main.Edit2.Text+''' ');
    SQL.Add('order by SGNO DESC');
    //funcObj.WriteErrorLog(sql.Text);
    Active:=true;
  end;
  SGDet.Active:=true;

end;

procedure TApplyEquipment.bbQueryClick(Sender: TObject);
begin
  Panel3.Visible:=true;
end;

procedure TApplyEquipment.FormCreate(Sender: TObject);
begin

  with Qtemp do
  begin
    active:=false;
    sql.Clear;
    sql.add('select getdate() as NDate ');
    active:=true;
    NDate:=fieldbyname('NDate').Value;
    DTP1.Date:= NDate-3;
    DTP2.Date:= NDate;
  end;
  PC1.ActivePageIndex:=0;

end;

procedure TApplyEquipment.bbInsertClick(Sender: TObject);
begin

  with SGMas do
  begin
    requestlive:=true;
    cachedupdates:=true;
    Insert;
  end;
  bbSave.Enabled:=true;
  bbCancel.Enabled:=true;
  DBGrid1.Columns[1].ButtonStyle:=cbsEllipsis;
  DepIDBtn.Visible:=true;

end;

procedure TApplyEquipment.bbDeleteClick(Sender: TObject);
begin

  if SGDet.recordcount = 0 then
  begin
    with SGMas do
    begin
      if fieldbyname('USERID').value=main.edit1.Text then
      begin
        requestlive:=true;
        cachedupdates:=true;
        edit;
        fieldbyname('YN').Value:='0';
      end else
        showmessage('It is not yours,can not delete.');
    end;
  end else
  begin
    showmessage('Pls delete the Equipment Detail first.')
  end;
  bbSave.Enabled:=true;
  bbCancel.Enabled:=true;

end;

procedure TApplyEquipment.bbExcelClick(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin
  if SGMas.Active then
  begin
    if SGMas.recordcount=0 then
    begin
      showmessage('No record.');
      abort;
    end;
  end else
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
    //eclApp.Cells(1,1):='NO';
    for   i:=0   to   SGMas.fieldcount-1   do
    begin
      eclApp.Cells(1,i+1):=SGMas.fields[i].FieldName;
    end;
    SGMas.First;
    j:=2;
    while   not  SGMas.Eof   do
      begin
        eclApp.Cells(j,1):=j-1;
        for   i:=0   to   SGMas.fieldcount-1   do
        begin
          eclApp.Cells(j,i+1):=SGMas.Fields[i].AsString;
        end;
        SGMas.Next;
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

procedure TApplyEquipment.bbModifyClick(Sender: TObject);
begin

  with SGMas do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
  bbSave.Enabled:=true;
  bbCancel.Enabled:=true;
  DBGrid1.columns[1].ButtonStyle:=cbsEllipsis;
  DepIDBtn.Visible:=true;

end;

procedure TApplyEquipment.SGMasAfterOpen(DataSet: TDataSet);
begin
  bbExcel.Enabled:=true;
  bbInsert.Enabled:=true;
  bbDelete.Enabled:=true;
  bbModify.Enabled:=true;
end;

procedure TApplyEquipment.bbCancelClick(Sender: TObject);
begin
  with SGMas do
  begin
    active:=false;
    requestlive:=false;
    cachedupdates:=false;
    active:=true;
  end;
  bbSave.Enabled:=false;
  bbCancel.Enabled:=false;
  DBGrid1.columns[1].ButtonStyle:=cbsnone;
  DepIDBtn.Visible:=false;
end;

procedure TApplyEquipment.bbSaveClick(Sender: TObject);
var y,m,SGNO:string;
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
    SGDet.Active:=false;
    SGMas.first;
    for i:=1 to SGMas.RecordCount do
    begin
      case SGMas.updatestatus of
        usinserted:
        begin
          with Qtemp do
          begin
            active:=false;
            sql.Clear;
            sql.Add('select SGNO from TSCD_SGDH where SGNO like '+''''+y+m+'%'+'''');
            sql.add('order by SGNO');
            active:=true;

            if recordcount >0 then
            begin
              last;
              SGNO:=fieldbyname('SGNO').AsString;
              SGNO:=copy(SGNO,7,5);
              SGNO:=inttostr(strtoint(SGNO)+1);
              while length(SGNO)<5 do
              begin
                SGNO:='0'+SGNO;
              end;
            end else
            begin
              SGNO:='00001';
            end;
            SGNO:=y+m+SGNO;
            active:=false;
          end;
          SGMas.edit;
          SGMas.fieldbyname('SGNO').Value:=SGNO;
          SGMas.FieldByName('SGDate').Value:=NDate;
          SGMas.FieldByName('GSBH').Value:=main.Edit2.Text;
          SGMas.FieldByName('userID').Value:=main.edit1.text;
          SGMas.FieldByName('userdate').Value:=NDate;
          SGMas.FieldByName('YN').Value:='1';
          upMas.apply(ukinsert);
        end;
        usmodified:
        begin
          if SGMas.FieldByName('USERID').value<>main.Edit1.Text then
          begin
            showmessage('不是你的，不要亂動。khong phai ban khong duoc tu sua');
          end else
          begin
            if SGMas.fieldbyname('YN').value='0' then
            begin
              if (SGMas.FieldByName('Flowflag').AsString<>'X') and (trim(SGMas.FieldByName('Flowflag').AsString)<>'') then
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
                sql.add('values ('+''''+'TSCD_SGDH'+''''+','+''''+SGMas.fieldbyname('SGNO').Value+'''');
                sql.add(','+''''+' '+''''+','+''''+SGMas.fieldbyname('USERID').Value+''''+',');
                sql.add(''''+main.Edit1.Text+''''+',getdate())'); }
                SQL.Add('Update TSCD_SGDH Set flowflag=''X'' where SGNO='''+SGMas.FieldByName('SGNO').AsString+''' ');
                execsql;
                active:=false;
              end;
              //upMas.apply(ukdelete);
            end else
            begin
              if (NDate-SGMas.FieldByName('USERDATE').value)<=30  then
              begin
                if (SGMas.FieldByName('Flowflag').AsString<>'X') and (trim(SGMas.FieldByName('Flowflag').AsString)<>'') then
                  begin
                    Showmessage('Gui trinh ky. Khong cho phep sua !');
                    abort;
                end;
                SGMas.edit;
                SGMas.FieldByName('userID').Value:=main.edit1.text;
                SGMas.FieldByName('userdate').Value:=Ndate;
                upMas.apply(ukmodify);
              end else
              begin
                showmessage('Date>30, can not modify.');
              end;
            end;
          end;
        end;
      end;
      SGMas.next;
    end;
  SGMas.active:=false;
  SGMas.cachedupdates:=false;
  SGMas.requestlive:=false;
  SGMas.active:=true;
  SGDet.Active:=true;
  bbSave.enabled:=false;
  bbCancel.enabled:=false;
  //
  DBGrid1.columns[1].ButtonStyle:=cbsnone;
  DepIDBtn.Visible:=false;
  showmessage('Succeed.');
  except
    Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
  end;

end;

procedure TApplyEquipment.DepIDBtnClick(Sender: TObject);
begin
  ApplyEquipmentDepName:=TApplyEquipmentDepName.Create(self);
  ApplyEquipmentDepName.Show();
end;

procedure TApplyEquipment.DBGrid1DblClick(Sender: TObject);
begin
  if  SGMas.Active then
  begin
    if  (SGMas.recordcount>0) then
    begin
      PC1.ActivePage:=TS2;
      panel1.visible:=false;
      panel2.visible:=true;
    end;
  end;
end;

procedure TApplyEquipment.bdInsertClick(Sender: TObject);
begin
  //
  with SGDet do
  begin
    requestlive:=true;
    cachedupdates:=true;
    insert;
  end;
  DBGrid2.columns[0].ButtonStyle:=cbsEllipsis;
  bdSave.Enabled:=true;
  bdCancel.Enabled:=true;
  bbtSBBH.Visible:=true;
  //
end;

procedure TApplyEquipment.bdDeleteClick(Sender: TObject);
begin
  if SGMas.RequestLive then
  begin
    showmessage('Pls save EntryEquipment data first.');
    PC1.ActivePage:=TS2;
    panel2.visible:=true;
    panel1.visible:=false;
    abort;
  end;
  //
  with SGDet do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;                                                                         
    fieldbyname('YN').Value:='0';
  end;
  bdSave.Enabled:=true;
  bdCancel.Enabled:=true;
end;

procedure TApplyEquipment.bdExcelClick(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin
   if SGDet.Active then
  begin
    if SGDet.recordcount=0 then
    begin
      showmessage('No record.');
      abort;
    end;
  end else
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
    //eclApp.Cells(1,1):='NO';
    for   i:=0   to   SGDet.fieldcount-1   do
    begin
      eclApp.Cells(1,i+1):=SGDet.fields[i].FieldName;
    end;
    SGDet.First;
    j:=2;
    while   not  SGDet.Eof   do
      begin
        eclApp.Cells(j,1):=j-1;
        for   i:=0   to   SGDet.fieldcount-1   do
        begin
          eclApp.Cells(j,i+1):=SGDet.Fields[i].AsString;
        end;
        SGDet.Next;
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

procedure TApplyEquipment.bbtSBBHClick(Sender: TObject);
begin
  ApplyEquipment_SBBH:=TApplyEquipment_SBBH.Create(self);
  ApplyEquipment_SBBH.Show;
end;

procedure TApplyEquipment.PC1Change(Sender: TObject);
begin
  if PC1.ActivePage=TS1 then
  begin
    panel1.visible:=true;
    panel2.visible:=false;
  end else
  begin
    panel1.visible:=false;
    panel2.visible:=true;
  end;
end;

procedure TApplyEquipment.SGDetAfterOpen(DataSet: TDataSet);
begin
  bdInsert.Enabled:=true;
  bdDelete.Enabled:=true;
  bdModify.Enabled:=true;
  //bdPrint.Enabled:=true;
  bdPrintTW.Enabled:=true;
  bdExcel.Enabled:=true;
  if ((NDate-SGMas.FieldByName('USERDATE').value)>30) then
  begin
    bdInsert.Enabled:=false;
    bdDelete.Enabled:=false;
    bdModify.Enabled:=false;
  end;
  if SGMas.FieldByName('USERID').value<>main.Edit1.text then
  begin
    bdInsert.Enabled:=false;
    bdDelete.Enabled:=false;
    bdModify.Enabled:=false;;
  end;
  if SGMas.cachedupdates then
  begin
    bdInsert.Enabled:=false;
    bdDelete.Enabled:=false;
    bdModify.Enabled:=false;
  end;
end;

procedure TApplyEquipment.bdModifyClick(Sender: TObject);
begin
  //
  if SGMas.RequestLive then
  begin
    showmessage('Pls save EntryEquipment data first.');
    PC1.ActivePage:=TS2;
    panel2.visible:=true;
    panel1.visible:=false;
    abort;
  end;
  //
  with SGDet do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
  DBGrid2.columns[0].ButtonStyle:=cbsEllipsis;
  bbtSBBH.Visible:=true;
  bdSave.Enabled:=true;
  bdCancel.Enabled:=true;
  //
end;

procedure TApplyEquipment.bdCancelClick(Sender: TObject);
begin
  with SGDet do
  begin
    active:=false;
    requestlive:=false;
    cachedupdates:=false;
    active:=true;
  end;
  bdSave.Enabled:=false;
  bdCancel.Enabled:=false;
  bbtSBBH.Visible:=false;
  DBGrid2.columns[0].ButtonStyle:=cbsNone;
end;

procedure TApplyEquipment.bdSaveClick(Sender: TObject);
var i:integer;
begin
    try
    SGDet.first;
    for i:=1 to SGDet.RecordCount do
    begin
      case SGDet.updatestatus of
        usinserted:
          begin
            if SGMas.FieldByName('USERID').value<>main.Edit1.Text then
              begin
                showmessage('不是你的，不要亂動。khong phai ban khong duoc tu sua');
              end
              else
                begin
                  if SGDet.fieldbyname('SBBH').isnull then
                  begin
                    SGDet.delete;
                  end
                  else
                    begin
                      SGDet.edit;
                      SGDet.fieldbyname('SGNO').Value:=SGMas.fieldbyname('SGNO').Value;
                      SGDet.FieldByName('userID').Value:=main.edit1.text;
                      SGDet.FieldByName('userdate').Value:=Ndate;
                      SGDet.FieldByName('YN').Value:='1';
                      upDet.apply(ukinsert);
                    end;
              end;
          end;
        usmodified:
           begin
               if SGDet.FieldByName('USERID').value<>main.Edit1.Text then
               begin
                 showmessage('不是你，不要亂動。khong phai ban khong duoc tu sua');
               end
               else
                 begin
                    if SGDet.fieldbyname('YN').value='0'then
                    begin
                       with BDelRec do
                       begin
                         active:=false;
                         sql.Clear;
                         sql.add('insert into BDelRec ');
                         sql.add('(TableName ,TNO,CLBH,OldID,DelID,DelDate)');
                         sql.add('values ('+''''+'TSCD_SGDHS'+''''+','+''''+SGMas.fieldbyname('SGNO').Value+'''');
                         sql.add(','+''''+' '+''''+','+''''+SGMas.fieldbyname('USERID').Value+''''+',');
                         sql.add(''''+main.Edit1.Text+''''+',getdate())');
                         execsql;
                         active:=false;
                       end;
                       UpDet.apply(ukdelete);
                    end else
                    begin
                       if (NDate-SGMas.FieldByName('USERDATE').value)<=3  then
                       begin
                         SGDet.edit;
                         SGDet.fieldbyname('SGNO').Value:=SGMas.fieldbyname('SGNO').Value;
                         SGDet.FieldByName('userID').Value:=main.edit1.text;
                         SGDet.FieldByName('userdate').Value:=Ndate;
                         SGDet.FieldByName('YN').Value:='1';
                         upDet.apply(ukmodify);
                       end  else
                       begin
                         showmessage('Date>3, can not modify.');
                       end;
                    end;
                 end;
            end;
      end;
      SGDet.next;
    end;
    SGDet.active:=false;
    SGDet.cachedupdates:=false;
    SGDet.requestlive:=false;
    SGDet.active:=true;

    bdSave.Enabled:=false;
    bdCancel.Enabled:=false;
    bbtSBBH.Visible:=false;
    DBGrid2.columns[0].ButtonStyle:=cbsNone;
    showmessage('Succeed.');
  except
    Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
  end;

end;

procedure TApplyEquipment.DBGrid2GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if SGDet.FieldByName('YN').value='0' then
  begin
    DBGrid2.canvas.font.color:=clred;
  end;
end;

procedure TApplyEquipment.DBGrid2EditButtonClick(Sender: TObject);
begin
  if (DBGrid2.SelectedField.FieldName='SBBH') then
  begin
    bbtSBBH.Click;
  end;
end;

procedure TApplyEquipment.DBGrid1EditButtonClick(Sender: TObject);
begin
  if (DBGrid1.SelectedField.FieldName='DepID') then
  begin
    DepIDBtn.Click;
  end;
end;

procedure TApplyEquipment.bdPrintClick(Sender: TObject);
begin
  if SGDet.RequestLive then
  begin
    showmessage('Pls save Master data first.');
    Abort;
  end;
  ApplyEquipment_print:=TApplyEquipment_print.Create(self);
  ApplyEquipment_print.quickrep1.prepare;
  ApplyEquipment_print.quickrep1.preview;
  ApplyEquipment_print.free;
end;

procedure TApplyEquipment.bdPrintTWClick(Sender: TObject);
begin
  if SGDet.RequestLive then
  begin
    showmessage('Pls save Master data first.');
    Abort;
  end;
  ApplyEquipment_printTW:=TApplyEquipment_printTW.Create(self);
  ApplyEquipment_printTW.quickrep1.prepare;
  ApplyEquipment_printTW.QPage1.caption:='共 '+inttostr(ApplyEquipment_printTW.Quickrep1.QRPrinter.pagecount)+' 頁';
  ApplyEquipment_printTW.quickrep1.preview;
  ApplyEquipment_printTW.free;
end;

end.
