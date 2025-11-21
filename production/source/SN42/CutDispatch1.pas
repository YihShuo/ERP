unit CutDispatch1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, DB, GridsEh, DBGridEh, DBTables, ComCtrls,
  Buttons, OleServer, ExcelXP, ComObj, Grids, jpeg, Spin,Printers, ShellApi,
  Menus;

type
  TCutDispatch = class(TForm)
    QCDMaster: TQuery;
    DCDMaster: TDataSource;
    PC1: TPageControl;
    TS1: TTabSheet;
    DBGridEh1: TDBGridEh;
    UCDMaster: TUpdateSQL;
    QCDMasterDLNO: TStringField;
    QCDMasterGSBH: TStringField;
    QCDMasterDepID: TStringField;
    QCDMasterUSERDATE: TDateTimeField;
    QCDMasterUSERID: TStringField;
    TmpQry: TQuery;
    QCDMasterDepName: TStringField;
    TS2: TTabSheet;
    DBGridEh2: TDBGridEh;
    QCDDetail: TQuery;
    DCDDetail: TDataSource;
    UCDDetail: TUpdateSQL;
    QCDDetailDLNO: TStringField;
    QCDDetailBWBH: TStringField;
    QCDDetailCLBH: TStringField;
    QCDDetailUSERID: TStringField;
    QCDDetailUSERDATE: TDateTimeField;
    Panel3: TPanel;
    BC2: TBitBtn;
    BC3: TBitBtn;
    BC4: TBitBtn;
    BC5: TBitBtn;
    BC6: TBitBtn;
    BC7: TBitBtn;
    Panel2: TPanel;
    BB2: TBitBtn;
    BB3: TBitBtn;
    BB4: TBitBtn;
    BB5: TBitBtn;
    BB6: TBitBtn;
    BB7: TBitBtn;
    Panel1: TPanel;
    Label2: TLabel;
    Label1: TLabel;
    DepNameCB: TComboBox;
    XuongCB: TComboBox;
    BB1: TBitBtn;
    Button1: TButton;
    QCDDetailYWPM: TStringField;
    QExcel: TQuery;
    QXXCC: TQuery;
    QCDDetailZWSM: TStringField;
    QCDDetailZLBH: TStringField;
    QCDDetailSIZE: TStringField;
    QCDDetailYWSM: TStringField;
    QCDDetailXXCC: TStringField;
    QCDDetailQty: TIntegerField;
    QCDDetailCutNum: TIntegerField;
    QCDDetailokCutNum: TIntegerField;
    QCDDetailScanUser: TStringField;
    QCDDetailScanDate: TDateTimeField;
    QCDDetailZWPM: TStringField;
    Label3: TLabel;
    DTP1: TDateTimePicker;
    Label4: TLabel;
    DTP2: TDateTimePicker;
    Check: TCheckBox;
    QCDMasterPlanDate: TDateTimeField;
    QCDMasterYN: TStringField;
    BCT6: TBitBtn;
    QCDDetailYN: TStringField;
    BB8: TBitBtn;
    Panel4: TPanel;
    Panel5: TPanel;
    DBGridEh3: TDBGridEh;
    Panel6: TPanel;
    BD2: TBitBtn;
    BD3: TBitBtn;
    BD4: TBitBtn;
    BD5: TBitBtn;
    BD6: TBitBtn;
    QCDDetailS: TQuery;
    DCDDetailS: TDataSource;
    UCDDetailS: TUpdateSQL;
    QCDDetailSDLNO: TStringField;
    QCDDetailSZLBH: TStringField;
    QCDDetailSDDBH: TStringField;
    QCDDetailSUSERID: TStringField;
    QCDDetailSUSERDATE: TDateTimeField;
    QCDDetailSYN: TStringField;
    Label5: TLabel;
    DLNOEdit: TEdit;
    QCDMasterMemo: TStringField;
    BB10: TBitBtn;
    BB9: TBitBtn;
    Splitter1: TSplitter;
    QCDMasterCutNum: TIntegerField;
    QCDMasterokCutNum: TIntegerField;
    QCDMasterZLBHList: TStringField;
    QCDMasterSIZEList: TStringField;
    QCDMasterBWBHList: TStringField;
    QCDDetailSSIZE: TStringField;
    QCDDetailSQty: TIntegerField;
    QCDDetailSBWBH: TStringField;
    QCDDetailSCLBH: TStringField;
    BB11: TBitBtn;
    BB12: TBitBtn;
    QCDMasterScanDate: TDateTimeField;
    BT13: TBitBtn;
    btnCutPrint: TBitBtn;
    CutPrint: TQuery;
    CutPrintZLBH: TStringField;
    CutPrintYWSM: TStringField;
    CutPrintSIZE: TStringField;
    CutPrintQty: TIntegerField;
    CutPrintDaoMH: TStringField;
    pnCutPrint: TPanel;
    Label6: TLabel;
    btnOK: TButton;
    edtCutPrint: TEdit;
    btnCancel: TButton;
    CutPrintBWBH: TStringField;
    CutPrintDLNO: TStringField;
    CutPrintSDDBH: TStringField;
    CutPrintEDDBH: TStringField;
    BB14: TBitBtn;
    QCDMasterDLLB: TStringField;
    PopupMenu1: TPopupMenu;
    CLSl1: TMenuItem;
    PDFMatCLSL1: TMenuItem;
    QCDDetailSScanQty: TIntegerField;
    BB15: TBitBtn;
    QCDDetailSMachine: TStringField;
    QCDDetailSMachineDate: TDateTimeField;
    QCDDetailSRPlanDate: TDateTimeField;
    QCDDetailSROrder: TIntegerField;
    QCDMasterMachine: TStringField;
    QCDMasterMachineName: TStringField;
    Edit1: TEdit;
    Label7: TLabel;
    CB_LISTTYPE: TComboBox;
    Label8: TLabel;
    CB_TYPE: TComboBox;
    Edit2: TEdit;
    Button2: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure BB2Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure BB7Click(Sender: TObject);
    procedure BB3Click(Sender: TObject);
    procedure QCDMasterAfterOpen(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure XuongCBChange(Sender: TObject);
    procedure BC2Click(Sender: TObject);
    procedure BC3Click(Sender: TObject);
    procedure BC4Click(Sender: TObject);
    procedure BC5Click(Sender: TObject);
    procedure BC6Click(Sender: TObject);
    procedure BC7Click(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure QCDDetailAfterOpen(DataSet: TDataSet);
    procedure PC1Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BB1Click(Sender: TObject);
    procedure DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure BCT6Click(Sender: TObject);
    procedure DBGridEh2GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure DBGridEh2EditButtonClick(Sender: TObject);
    procedure BB8Click(Sender: TObject);
    procedure BD2Click(Sender: TObject);
    procedure BD4Click(Sender: TObject);
    procedure BD3Click(Sender: TObject);
    procedure BD6Click(Sender: TObject);
    procedure DBGridEh3EditButtonClick(Sender: TObject);
    procedure BD5Click(Sender: TObject);
    procedure DBGridEh3GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure BB10Click(Sender: TObject);
    procedure BB9Click(Sender: TObject);
    procedure BB11Click(Sender: TObject);
    procedure BB12Click(Sender: TObject);
    procedure BT13Click(Sender: TObject);
    procedure btnCutPrintClick(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure BB14Click(Sender: TObject);
    procedure DBGridEh1Columns2EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh1Columns3EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh1Columns1EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure CLSl1Click(Sender: TObject);
    procedure PDFMatCLSL1Click(Sender: TObject);
    procedure BB15Click(Sender: TObject);
    procedure DBGridEh1Columns6EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh1Columns7EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure CB_LISTTYPEChange(Sender: TObject);
    procedure Edit2Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    ZLBHSubSQL, BWBHSubSQL, SIZESubSQL, CLBHSubSQL, DDBHSubSQL, ListType: String;
    { Private declarations }
    procedure SetFactory;
    procedure SetDepartment;
    procedure CreateBarcodeV1();
    procedure GetSubSQLList();
    procedure Cut_Print();
  public
    { Public declarations }
  end;

var
  CutDispatch: TCutDispatch;
  NDate: TDate;
  PrintType: string;

const
  Alphabet: array[0..26] of string = ('0','A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z');

implementation

uses main1, CD_Department1, CD_Rotation1, CD_SMDD1, CD_SMDDS1, CD_Print1, Barcode93Unit1, FunUnit ,
  CD_PrintH1, CD_SMDDList1, CuttingType1, CD_PrintHDlg1, CD_MatCLSLRpt1, MachineSelect1;

{$R *.dfm}

procedure TCutDispatch.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

  if BB5.enabled  then
  begin
    messagedlg('You have to save data Record of report first.',mtwarning,[mbyes],0);
    PC1.ActivePage:=TS1;
    action:=canone;
  end else
    begin
      if BC5.enabled then
      begin
          messagedlg('You have to save data Report first.',mtwarning,[mbyes],0);
          PC1.ActivePage:=TS2;
          action:=canone;
      end else
      begin
        action:=Cafree;
      end;
    end;

end;

procedure TCutDispatch.FormDestroy(Sender: TObject);
begin
  CutDispatch := nil;
end;

procedure TCutDispatch.FormCreate(Sender: TObject);
begin
  with TmpQry do
  begin
    active:=false;
    sql.Clear;
    sql.add('select getdate() as NDate ');
    active:=true;
    NDate:=fieldbyname('NDate').Value;
    active:=false;
  end;
  SetFactory;
  PC1.ActivePage := TS1;
  DTP1.Date:=NDate-3;
  DTP2.date:=NDate;
  ListType := '';
end;

procedure TCutDispatch.BB2Click(Sender: TObject);
begin
  with QCDMaster do
  begin
    RequestLive := true;
    CachedUpdates := true;
    First;
    Insert;
  end;

  BB5.Enabled := true;
  BB6.Enabled := true;
  DBGridEh1.Columns[1].ButtonStyle := cbsEllipsis;
  DBGridEh1.Columns[2].ButtonStyle := cbsEllipsis;
  DBGridEh1.Columns[3].ButtonStyle := cbsEllipsis;
  DBGridEh1.Columns[6].ButtonStyle := cbsEllipsis;
  DBGridEh1.Columns[7].ButtonStyle := cbsEllipsis;
end;

procedure TCutDispatch.BB4Click(Sender: TObject);
begin
  {
  if QCDMaster.fieldbyname('USERID').value=main.edit1.Text then
  begin
  }
   if QCDMaster.FieldByName('okCutNum').Value=0 then
   begin
      with QCDMaster do
      begin
        RequestLive := true;
        CachedUpdates := true;
        Edit;
      end;
      BB5.Enabled := true;
      BB6.Enabled := true;
      DBGridEh1.Columns[1].ButtonStyle := cbsEllipsis;
      DBGridEh1.Columns[2].ButtonStyle := cbsEllipsis;
      DBGridEh1.Columns[3].ButtonStyle := cbsEllipsis;
      DBGridEh1.Columns[6].ButtonStyle := cbsEllipsis;
      DBGridEh1.Columns[7].ButtonStyle := cbsEllipsis;
   end else
   begin
     showmessage('It is scan,can not modify');
   end;
  {
  end else
  begin
    showmessage('It is not yours,can not modify.');
  end;
  }
end;

procedure TCutDispatch.BB5Click(Sender: TObject);
var
  sYear, sMonth, DLNO: string;
  i: integer;
begin
  //取Server的年月值
  with TmpQry do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT YEAR(GETDATE()) AS FY, MONTH(GETDATE()) AS FM, GETDATE() AS NDate');
    Active := true;

    NDate := FieldByName('NDate').Value;
    sYear := FieldByName('FY').AsString;
    sMonth := FieldByName('FM').AsString;
    Active := false;
  end;

  if (Length(sMonth) < 2) then
  begin
    sMonth := '0' + sMonth;
  end;

  try
    QCDMaster.First;
    for i := 1 to QCDMaster.RecordCount do
    begin
      case QCDMaster.UpdateStatus of
        usInserted:
        begin
          if (QCDMaster.FieldByName('DepID').IsNull) then
          begin
            QCDMaster.Delete;
          end
          else begin
            with TmpQry do    //計算領料單流水號
            begin
              Active := false;
              SQL.Clear;
              SQL.Add('SELECT DLNO FROM CutDispatch WHERE DLNO LIKE '''+sYear+sMonth+'%''');
              SQL.Add('ORDER BY DLNO');
              Active := true;
              if (RecordCount > 0) then
              begin
                Last;
                DLNO := FieldByName('DLNO').AsString;
                DLNO := Copy(DLNO, 7, 5);
                DLNO := IntToStr(StrToInt(DLNO)+1);

                while (Length(DLNO) < 5) do
                begin
                  DLNO := '0' + DLNO;
                end;
              end
              else begin
                DLNO := '00001';
              end;

              DLNO := sYear + sMonth + DLNO;
              Active := false;
            end;
            QCDMaster.Edit;
            QCDMaster.FieldByName('DLNO').Value := DLNO;
            QCDMaster.FieldByName('GSBH').Value := main.Edit2.Text;
            QCDMaster.FieldByName('USERID').Value := main.Edit1.Text;
            QCDMaster.FieldByName('USERDATE').Value := Ndate;
            QCDMaster.FieldByName('YN').Value := 1;
            UCDMaster.Apply(ukInsert);
          end;
        end;

        usModified:
        begin
          {
          if (QCDMaster.FieldByName('USERID').Value <> main.Edit1.Text) then
          begin
            ShowMessage('不是你的，不要亂動。khong phai ban khong duoc tu sua');
          end
          else begin
          }
            if (QCDMaster.FieldByName('YN').value = 0) then
            begin
              with TmpQry do
              begin
                Active:=false;
                SQL.Clear;
                SQL.Add('Delete from CutDispatchS where DLNO='''+QCDMaster.FieldByName('DLNO').AsString+''' ');
                SQL.Add('Delete from CutDispatchSS where DLNO='''+QCDMaster.FieldByName('DLNO').AsString+''' ');
                ExecSQL();
              end;
              UCDMaster.Apply(ukDelete);
            end
            else begin
              with TmpQry do
              begin
                Active := false;
                SQL.Clear;
                SQL.Add('UPDATE CutDispatchSS SET Machine = ''' + QCDMaster.FieldByName('Machine').AsString + ''' WHERE DLNO = ''' + QCDMaster.FieldByName('DLNO').AsString + ''';');
                ExecSQL();
              end;
              QCDMaster.Edit;
              QCDMaster.FieldByName('USERID').Value := main.Edit1.text;
              QCDMaster.FieldByName('USERDATE').Value := Ndate;
              UCDMaster.Apply(ukModify);
            end;
          //end;
        end;
      end;

      QCDMaster.Next;
    end;

    QCDMaster.Active := false;
    QCDMaster.CachedUpdates := false;
    QCDMaster.RequestLive := false;
    QCDMaster.Active := true;
    BB5.Enabled := false;
    BB6.Enabled := false;
    DBGridEh1.Columns[1].ButtonStyle := cbsNone;
    DBGridEh1.Columns[2].ButtonStyle := cbsNone;
    DBGridEh1.Columns[3].ButtonStyle := cbsNone;
    DBGridEh1.Columns[6].ButtonStyle := cbsNone;
    DBGridEh1.Columns[7].ButtonStyle := cbsNone;
  except
    MessageDlg('Have wrong, can not save data!', mtWarning, [mbyes], 0);
  end;
end;

procedure TCutDispatch.BB6Click(Sender: TObject);
begin
  with QCDMaster do
  begin
    Active := false;
    RequestLive := false;
    CachedUpdates := false;
    Active := true;
  end;

  BB5.Enabled := false;
  BB6.Enabled := false;
  DBGridEh1.Columns[1].ButtonStyle := cbsNone;
  DBGridEh1.Columns[2].ButtonStyle := cbsNone;
  DBGridEh1.Columns[3].ButtonStyle := cbsNone;
  DBGridEh1.Columns[6].ButtonStyle := cbsNone;
  DBGridEh1.Columns[7].ButtonStyle := cbsNone;
end;

procedure TCutDispatch.BB7Click(Sender: TObject);
begin
  Close;
end;

procedure TCutDispatch.BB3Click(Sender: TObject);
begin
  if (QCDMaster.fieldbyname('USERID').value=main.edit1.Text) or (QCDMaster.fieldbyname('USERID').value=edit1.text) then
  begin
   if QCDMaster.FieldByName('okCutNum').Value=0 then
   begin
    with QCDMaster do
    begin
      RequestLive := true;
      CachedUpdates := true;
      Edit;
      FieldByName('YN').Value := 0;
    end;
    BB5.Enabled := true;
    BB6.Enabled := true;
   end else
   begin
     showmessage('It has been scanned, can not delete');
   end;
  end else
  begin
    showmessage('It is not yours, can not delete.');
  end;

end;

procedure TCutDispatch.QCDMasterAfterOpen(DataSet: TDataSet);
begin
  BB5.Enabled:=false;
  BB6.Enabled:=false;
  BB9.Enabled:=true;
  BB10.Enabled:=true;
  BB11.Enabled:=true;
  BB12.Enabled:=true;
  BB15.Enabled:=true;
  BC5.Enabled:=false;
  BC6.Enabled:=false;
end;

procedure TCutDispatch.SetFactory;
begin
  with TmpQry do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT Xuong FROM BDepartment');
    SQL.Add('WHERE ProYn = 1 AND YN = 1 AND sumline IS NOT NULL');
    SQL.Add('AND GXLB = ''C'' AND GSBH = ''' + main.Edit2.Text + ''' AND ISNULL(Xuong, '''') <> ''''');
    SQL.Add('GROUP BY Xuong');
    SQL.Add('ORDER BY Xuong ');
    Active := true;

    XuongCB.Items.Clear;
    XuongCB.Items.Add('');
    while not Eof do
    begin
      XuongCB.Items.Add(FieldByName('Xuong').AsString);
      Next;
    end;
  end;
end;

procedure TCutDispatch.SetDepartment;
begin
  with TmpQry do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT DepName FROM BDepartment');
    SQL.Add('WHERE ProYn = 1 AND YN = 1 AND sumline IS NOT NULL AND GXLB = ''C'' AND GSBH = ''' + main.Edit2.Text + ''' AND Xuong = ''' + XuongCB.Text + '''');
    SQL.Add('ORDER BY ID');
    Active := true;
    DepNameCB.Items.Clear;
    DepNameCB.Items.Add('');
    while not Eof do
    begin
      DepNameCB.Items.Add(FieldByName('DepName').AsString);
      Next;
    end;
  end;
end;

procedure TCutDispatch.XuongCBChange(Sender: TObject);
begin
  SetDepartment;
end;

procedure TCutDispatch.BC2Click(Sender: TObject);
begin
  with QCDDetail do
  begin
    RequestLive := true;
    CachedUpdates := true;
    First;
    Insert;
  end;

  BC5.Enabled := true;
  BC6.Enabled := true;
  DBGridEh2.Columns[0].ButtonStyle := cbsEllipsis;
end;

procedure TCutDispatch.BC3Click(Sender: TObject);
begin
  if QCDDetailS.RecordCount=0 then
  begin
      with QCDDetail do
      begin
        RequestLive := true;
        CachedUpdates := true;
        Edit;
        FieldByName('YN').Value := 0;
      end;
      BC5.Enabled := true;
      BC6.Enabled := true;
  end else
  begin
    showmessage('Pls delete the  Detail first.')
  end;

end;

procedure TCutDispatch.BC4Click(Sender: TObject);
begin
  with QCDDetail do
  begin
    RequestLive := true;
    CachedUpdates := true;
    Edit;
  end;

  BC5.Enabled := true;
  BC6.Enabled := true;
  DBGridEh2.Columns[0].ButtonStyle := cbsEllipsis;
end;

procedure TCutDispatch.BC5Click(Sender: TObject);
var
  i: integer;
begin

  try
    QCDDetail.First;
    for i := 1 to QCDDetail.RecordCount do
    begin
      case QCDDetail.UpdateStatus of
        usInserted:
        begin
          if (QCDDetail.FieldByName('ZLBH').IsNull OR QCDDetail.FieldByName('BWBH').IsNull OR QCDDetail.FieldByName('SIZE').IsNull) then
          begin
            QCDDetail.Delete;
          end
          else begin
            QCDDetail.Edit;
            QCDDetail.FieldByName('DLNO').Value := QCDMaster.FieldByName('DLNO').AsString;
            QCDDetail.FieldByName('USERID').Value := main.Edit1.Text;
            QCDDetail.FieldByName('USERDATE').Value := Ndate;
            QCDDetail.FieldByName('YN').Value := 1;
            UCDDetail.Apply(ukInsert);
          end;
        end;

        usModified:
        begin
          if (QCDDetail.FieldByName('USERID').Value <> main.Edit1.Text) then
          begin
            ShowMessage('不是你的，不要亂動。khong phai ban khong duoc tu sua');
          end
          else begin
            if (QCDDetail.FieldByName('YN').value = 0) then
            begin
              UCDDetail.Apply(ukDelete);
            end
            else begin
              QCDDetail.Edit;
              QCDDetail.FieldByName('USERID').Value := main.Edit1.text;
              QCDDetail.FieldByName('USERDATE').Value := Ndate;
              UCDDetail.Apply(ukModify);
            end;
          end;
        end;
      end;

      QCDDetail.Next;
    end;

    QCDDetail.Active := false;
    QCDDetail.CachedUpdates := false;
    QCDDetail.RequestLive := false;
    QCDDetail.Active := true;
    BC5.enabled := false;
    BC6.enabled := false;
    DBGridEh2.Columns[0].ButtonStyle := cbsNone;
  except
    MessageDlg('Have wrong, can not save data!', mtWarning, [mbyes], 0);
  end;
end;

procedure TCutDispatch.BC6Click(Sender: TObject);
begin
  with QCDDetail do
  begin
    Active := false;
    RequestLive := false;
    CachedUpdates := false;
    Active := true;
  end;

  BC5.Enabled := false;
  BC6.Enabled := false;
  DBGridEh2.Columns[0].ButtonStyle := cbsNone;
end;

procedure TCutDispatch.BC7Click(Sender: TObject);
begin
  Close;
end;

procedure TCutDispatch.DBGridEh1DblClick(Sender: TObject);
begin
  if (BC5.Enabled = false) then
  begin
    PC1.ActivePage := TS2;
    Panel2.Visible := false;
    Panel3.Visible := true;
  end;
end;

procedure TCutDispatch.QCDDetailAfterOpen(DataSet: TDataSet);
begin
  BC2.Enabled:=true;
  BC3.Enabled:=true;
  BC4.Enabled:=true;


  BCT6.Enabled:=true;
  //
  if QCDDetail.recordcount>0 then
  begin
    BD2.Enabled:=true;
    BD3.Enabled:=true;
    BD4.Enabled:=true;
    BD5.Enabled:=false;
    BD6.Enabled:=false;
    btnCutPrint.Enabled:=true;
  end else
  begin
    BD2.Enabled:=false;
    BD3.Enabled:=false;
    BD4.Enabled:=false;
    BD5.Enabled:=false;
    BD6.Enabled:=false;
    btnCutPrint.Enabled:=false;
  end;
  if (NDate-QCDMaster.FieldByName('USERDATE').value)>2  then
  begin
    BC2.Enabled:=false;
    BC3.Enabled:=false;
    BC4.Enabled:=false;
    BD2.Enabled:=false;
    BD3.Enabled:=false;
    BD4.Enabled:=false;
  end;
  if QCDMaster.FieldByName('USERID').value<>main.edit1.text  then
  begin
    BC2.Enabled:=false;
    BC3.Enabled:=false;
    BC4.Enabled:=false;
    BD2.Enabled:=false;
    BD3.Enabled:=false;
    BD4.Enabled:=false;
  end;
  if QCDMaster.FieldByName('okCutNum').value>0  then
  begin
    BC2.Enabled:=false;
    BC3.Enabled:=false;
    BC4.Enabled:=false;
    BD2.Enabled:=false;
    BD3.Enabled:=false;
    BD4.Enabled:=false;
  end;
  if QCDMaster.cachedupdates  then
  begin
    BC2.Enabled:=false;
    BC3.Enabled:=false;
    BC4.Enabled:=false;
    BD2.Enabled:=false;
    BD3.Enabled:=false;
    BD4.Enabled:=false;
  end;
  BC5.Enabled:=false;
  BC6.Enabled:=false;
  //
end;

procedure TCutDispatch.DBGridEh1Columns1EditButtonClick(Sender: TObject;
  var Handled: Boolean);
begin
  CuttingType := TCuttingType.Create(self);
  CuttingType.Show;
end;

procedure TCutDispatch.DBGridEh1Columns2EditButtonClick(Sender: TObject;
  var Handled: Boolean);
begin
  CD_Department := TCD_Department.Create(self);
  CD_Department.Show;
end;

procedure TCutDispatch.DBGridEh1Columns3EditButtonClick(Sender: TObject;
  var Handled: Boolean);
begin
  CD_Department := TCD_Department.Create(self);
  CD_Department.Show;
end;

procedure TCutDispatch.PC1Change(Sender: TObject);
begin
  if (PC1.ActivePageIndex = 0) then
  begin
    Panel3.Visible := false;
    Panel2.Visible := true;
  end
  else if (PC1.ActivePageIndex = 1) then
  begin
    Panel2.Visible := false;
    Panel3.Visible := true;
  end;
end;

procedure TCutDispatch.Button1Click(Sender: TObject);
begin
  //
  with QCDMaster do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT CutDispatch.*, BDepartment.DepName,CutDispatchS.CutNum,IsNull(CutDispatchS.okCutNum,0) as okCutNum,CutDispatchS.ScanDate,CutDispatchSS.Machine,BMachine.MachineName');
    SQL.Add(',Convert(varchar(100),(select Min(CutDispatchSS.DDBH)+''...''+MAX(CutDispatchSS.DDBH)  from CutDispatchSS where CutDispatchSS.DLNO=CutDispatch.DLNO),100) as ZLBHList ');
    SQL.Add(',Convert(varchar(100),(select CutDispatchS.SIZE+'','' from CutDispatchS where CutDispatchS.DLNO=CutDispatch.DLNO Group by CutDispatchS.SIZE for XML Path ('''')),100) as SIZEList ');
    SQL.Add(',Convert(varchar(100),(select BWZL.YWSM+'','' from CutDispatchS,BWZL where BWZL.bwdh=CutDispatchS.BWBH and CutDispatchS.DLNO=CutDispatch.DLNO Group by BWZL.YWSM for XML Path ('''')),100) as BWBHList ');
    SQL.Add('FROM CutDispatch ');
    //
    SQL.Add('Left join  ( ');
    SQL.Add('  select CutDispatchS.DLNO,Sum(CutNum) as CutNum,SUM(okCutNum) as okCutNum,Max(ScanDate) as ScanDate from CutDispatchS  ');
    SQL.Add('  INNER JOIN CutDispatch on CutDispatchS.DLNO=CutDispatch.DLNO  ');
    SQL.Add('  LEFT JOIN BDepartment ON BDepartment.ID = CutDispatch.DepID  ');
    SQL.add('  where  convert(smalldatetime,convert(varchar,CutDispatch.USERDATE,111)) between ');
    SQL.add('     '''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date) +''' ');
    SQL.add('     and CutDispatch.GSBH='''+main.Edit2.Text+''' ');
    if XuongCB.Text<>'' then
      SQL.Add('    and BDepartment.Xuong = ''' + XuongCB.Text + '''');
    if DepNameCB.Text<>'' then
      SQL.Add('    and BDepartment.DepName like ''%' + DepNameCB.Text + '%''');
    if DLNOEdit.Text<>'' then
      SQL.Add('    and CutDispatch.DLNO like ''%'+DLNOEdit.Text+'%'' ');
    if Check.Checked then
      SQL.Add('and CutDispatch.USERID='''+main.Edit1.Text+''' ');
    SQL.Add('Group by CutDispatchS.DLNO ) CutDispatchS on CutDispatchS.DLNO=CutDispatch.DLNO ');
    SQL.Add('LEFT JOIN (');
    SQL.Add('  SELECT DISTINCT DLNO, Machine FROM CutDispatchSS');
    SQL.Add(') AS CutDispatchSS ON CutDispatchSS.DLNO = CutDispatch.DLNO');
    SQL.Add('LEFT JOIN BMachine ON BMachine.ID = CutDispatchSS.Machine');
    SQL.Add('LEFT JOIN BDepartment ON BDepartment.ID = CutDispatch.DepID  ');
    SQL.Add('WHERE 1=1 ');
    if (CB_Type.ItemIndex = 1) then
      SQL.Add('and CutDispatch.USERID <> ''DataCenter''')
    else if (CB_Type.ItemIndex = 2) then
      SQL.Add('and CutDispatch.USERID = ''DataCenter''');
    if (ListType <> '') then
      SQL.Add('and CutDispatch.DLLB = ''' + ListType + '''');
    if XuongCB.Text<>'' then
      SQL.Add('and BDepartment.Xuong = ''' + XuongCB.Text + '''');
    if DepNameCB.Text<>'' then
      SQL.Add('and BDepartment.DepName like ''%' + DepNameCB.Text + '%''');
    if DLNOEdit.Text<>'' then
      SQL.Add('and CutDispatch.DLNO like ''%'+DLNOEdit.Text+'%'' ');
    sql.add('and convert(smalldatetime,convert(varchar,CutDispatch.USERDATE,111)) between ');
    sql.add(''''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date) +''' ');
    sql.add('and CutDispatch.GSBH='+''''+main.Edit2.Text+'''');
    if Check.Checked then
      sql.Add('and CutDispatch.USERID='+''''+main.Edit1.Text+'''');
    //funcObj.WriteErrorLog(sql.Text);
    sql.Add('order by CutDispatch.PlanDate desc,CutDispatch.DLNO desc');
    Active := true;
  end;
  BB2.Enabled:=true;
  BB3.Enabled:=true;
  BB4.Enabled:=true;
  QCDDetail.Active := true;
  QCDDetailS.Active :=true;
  //
end;

procedure TCutDispatch.BB1Click(Sender: TObject);
begin
  Panel1.Visible := true;
end;

procedure TCutDispatch.CreateBarcodeV1();
var img:TImage;
    Barcode93Obj:TBarcode93;
begin
  img:=TImage.Create(self);
  img.Width:=270;
  img.Height:=36;
  Barcode93Obj:=TBarcode93.Create(self);
  Barcode93Obj.ImBarCodeShow(img.Canvas,QCDMaster.FieldByName('DLNO').AsString,true);
  Barcode93Obj.Free;
  img.Picture.SaveToFile(GetCurrentDir + '\Barcode.jpg');
  img.Free;
end;

procedure TCutDispatch.DBGridEh1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if QCDMaster.FieldByName('okCutNum').Value>0 then
  begin
    DBGridEh1.canvas.font.color:=clblue;
  end;
  if QCDMaster.FieldByName('YN').AsString='0' then
  begin
    DBGridEh1.canvas.font.color:=clred;
  end;

end;

procedure TCutDispatch.BCT6Click(Sender: TObject);
var
  eclApp, WorkBook, DSSheet, Picture: OleVariant;
  SizeQty, Col: integer;
begin
  if (BB5.Enabled OR BB6.Enabled) then
  begin
    ShowMessage('Please save your data.');
    Exit;
  end;

  try
    eclApp := CreateOleObject('Excel.Application');
    WorkBook := CreateOleObject('Excel.Sheet');
  except
    Application.MessageBox('NO Microsoft Excel', 'Microsoft Excel', MB_OK + MB_ICONWarning);
    Exit;
  end;

  try
    WorkBook := eclApp.workbooks.Add;
    eclapp.workbooks[1].sheets.Add;
    DSSheet := eclapp.workbooks[1].sheets[1];
    DSSheet.name := '裁斷派工單';

    with QExcel do
    begin
      Active := false;
      SQL.Clear;
      SQL.Add('SELECT CutDispatchS.DLNO, CutDispatchS.ZLBH, CutDispatchS.SIZE, CLZL.YWPM + '' ['' + CutDispatchS.CLBH + '']'' AS CLBH, CutDispatchS.XXCC,');
      SQL.Add('       CutDispatchS.Qty, BWZL.YWSM, XXZL.DAOMH, CutDispatchZL.Piece*CutDispatchS.Qty as PieceS, CutDispatchZL.Layer, CutDispatchZL.Joinnum,');
      SQL.Add('       case when CutDispatchZL.joinnum>0 then CEILING((CutDispatchS.Qty)*CutDispatchZL.piece/convert(float,CutDispatchZL.layer)*joinnum) else 0 end as CutNum  ');
      SQL.Add('From CutDispatchS ');
      SQL.Add('LEFT JOIN BWZL ON BWZL.BWDH = CutDispatchS.BWBH');
      SQL.Add('LEFT JOIN CLZL ON CLZL.CLDH = CutDispatchS.CLBH');
      SQL.Add('LEFT JOIN DDZL ON DDZL.ZLBH = CutDispatchS.ZLBH');
      SQL.Add('LEFT JOIN XXZL ON XXZL.XieXing = DDZL.XieXing AND XXZL.SheHao = DDZL.SheHao');
      SQL.Add('LEFT JOIN CutDispatchZL ON CutDispatchZL.ZLBH = CutDispatchS.ZLBH AND CutDispatchZL.BWBH = CutDispatchS.BWBH AND CutDispatchZL.SIZE = CutDispatchS.SIZE');
      SQL.Add('WHERE CutDispatchS.DLNO = ''' + QCDMaster.FieldByName('DLNO').AsString + '''');
      SQL.Add('ORDER BY CutDispatchS.BWBH, CONVERT(FLOAT, CutDispatchS.SIZE)');
      //funcObj.WriteErrorLog(sql.Text);
      Active := true;
      
      SizeQty := RecordCount;
    end;

    DSSheet.Range[DSSheet.Cells[1, 1], DSSheet.Cells[1, SizeQty+5]].MergeCells := true;
    DSSheet.Cells[1, 1] := '【' + QCDMaster.FieldByName('DepName').AsString + '】 裁斷派工單';
    DSSheet.Cells[1, 1].Font.Size := 24;
    DSSheet.Cells[1, 1].HorizontalAlignment := xlCenter;

    CreateBarcodeV1;
    DSSheet.Range[DSSheet.Cells[2, 1], DSSheet.Cells[2, SizeQty+5]].MergeCells := true;
    DSSheet.Cells[2, 1].RowHeight := 62;
    DSSheet.Cells[2, 1] := '派工單號：' + QCDMaster.FieldByName('DLNO').AsString;
    DSSheet.Cells[2, 1].HorizontalAlignment := xlCenter;
    DSSheet.Cells[2, 1].VerticalAlignment := xlVAlignBottom;
    Picture := DSSheet.Pictures.Insert(GetCurrentDir + '\Barcode.jpg');
    Picture.Height := DSSheet.Cells[2, 1].Height - 16;
    Picture.Top := DSSheet.Cells[2, 1].Top + 2;
    Picture.Left := DSSheet.Cells[2, 1].Left + (54 * (SizeQty+5) div 2) - (Picture.Width div 2);
    Picture := Unassigned;
    DeleteFile(GetCurrentDir + '\Barcode.jpg');

    DSSheet.Range[DSSheet.Cells[3, 1], DSSheet.Cells[3, SizeQty+2]].MergeCells := true;
    DSSheet.Cells[3, 1] := '訂單號碼：' + QCDDetail.FieldByName('ZLBH').AsString;

    DSSheet.Range[DSSheet.Cells[3, SizeQty+3], DSSheet.Cells[3, SizeQty+5]].MergeCells := true;
    DSSheet.Cells[3, SizeQty+3] := '裁斷機台：';

    DSSheet.Range[DSSheet.Cells[4, 1], DSSheet.Cells[4, SizeQty+2]].MergeCells := true;
    DSSheet.Cells[4, 1] := '斬刀編號：' + QExcel.FieldByName('DAOMH').AsString;

    DSSheet.Range[DSSheet.Cells[4, SizeQty+3], DSSheet.Cells[4, SizeQty+5]].MergeCells := true;
    DSSheet.Cells[4, SizeQty+3] := '裁斷手名字：';

    DSSheet.Range[DSSheet.Cells[5, 1], DSSheet.Cells[5, SizeQty+2]].MergeCells := true;
    DSSheet.Cells[5, 1] := '材料名稱：' + QExcel.FieldByName('CLBH').AsString;

    DSSheet.Range[DSSheet.Cells[5, SizeQty+3], DSSheet.Cells[5, SizeQty+5]].MergeCells := true;
    DSSheet.Cells[5, SizeQty+3] := '材料層數：' + QExcel.FieldByName('Layer').AsString;

    DSSheet.Range[DSSheet.Cells[6, 1], DSSheet.Cells[6, 2]].MergeCells := true;
    DSSheet.Cells[6, 1] := '材料需求量：';

    DSSheet.Range[DSSheet.Cells[6, 3], DSSheet.Cells[6, 5]].MergeCells := true;
    DSSheet.Cells[6, 3] := '單位：' + DepNameCB.Text;

    DSSheet.Range[DSSheet.Cells[6, 6], DSSheet.Cells[6, SizeQty+2]].MergeCells := true;
    DSSheet.Cells[6, 6] := '配料紀錄：';

    DSSheet.Range[DSSheet.Cells[6, SizeQty+3], DSSheet.Cells[6, SizeQty+5]].MergeCells := true;
    DSSheet.Cells[6, SizeQty+3] := '加工部門：';

    DSSheet.Range[DSSheet.Cells[7, 1], DSSheet.Cells[7, 2]].MergeCells := true;
    DSSheet.Cells[7, 1] := '鞋子號碼';

    DSSheet.Cells[7, SizeQty+5] := '合計';

    DSSheet.Range[DSSheet.Cells[8, 1], DSSheet.Cells[8, 2]].MergeCells := true;
    DSSheet.Cells[8, 1] := '斬刀號碼';

    DSSheet.Range[DSSheet.Cells[9, 1], DSSheet.Cells[9, 2]].MergeCells := true;
    DSSheet.Cells[9, 1] := '訂單雙數';
    DSSheet.Cells[9, SizeQty+5] := '=SUM(C9:' + Alphabet[SizeQty+2] + '9)';

    DSSheet.Range[DSSheet.Cells[10, 1], DSSheet.Cells[10, 2]].MergeCells := true;
    DSSheet.Cells[10, 1] := '片數';
    DSSheet.Cells[10, SizeQty+5] := '=SUM(C10:' + Alphabet[SizeQty+2] + '10)';

    with QExcel do
    begin
      First;
      Col := 3;
      while not Eof do
      begin
        DSSheet.Cells[7, Col] := '''' + FieldByName('SIZE').AsString;
        DSSheet.Cells[8, Col] := '''' + FieldByName('XXCC').AsString;
        DSSheet.Cells[9, Col] := FieldByName('Qty').AsString;
        DSSheet.Cells[10, Col] := FieldByName('PieceS').AsString;
        Inc(Col);
        Next;
      end;
      First;
    end;

    DSSheet.Range[DSSheet.Cells[11, 1], DSSheet.Cells[11, 2]].MergeCells := true;
    DSSheet.Cells[11, 1] := '　　　　　　刀數' + Chr(10) + '部品名稱';

    for Col := 3 to SizeQty+2 do
    begin
      DSSheet.Cells[11, Col] := '=' + Alphabet[Col] + '10/' + QExcel.FieldByName('Layer').AsString;
    end;
    DSSheet.Cells[11, SizeQty+5] := '=SUM(C11:' + Alphabet[SizeQty+2] + '11)';
                                        
    DSSheet.Range[DSSheet.Cells[7, 1], DSSheet.Cells[12, SizeQty+5]].HorizontalAlignment := xlCenter; //文字置中
    DSSheet.Cells[11, 1].HorizontalAlignment := xlLeft;
    DSSheet.Cells[11, 1].Borders[5].Weight := 1;
    DSSheet.Range[DSSheet.Cells[7, 1], DSSheet.Cells[12, SizeQty+5]].RowHeight := 40; //設定欄寬

    DSSheet.Range[DSSheet.Cells[12, 1], DSSheet.Cells[12, 2]].MergeCells := true;
    DSSheet.Cells[12, 1] := QExcel.FieldByName('YWSM').AsString;

    //加框線
    DSSheet.Range[DSSheet.Cells[1, 1], DSSheet.Cells[12, SizeQty+5]].Borders[1].Weight := 2;
    DSSheet.Range[DSSheet.Cells[1, 1], DSSheet.Cells[12, SizeQty+5]].Borders[2].Weight := 2;
    DSSheet.Range[DSSheet.Cells[1, 1], DSSheet.Cells[12, SizeQty+5]].Borders[3].Weight := 2;
    DSSheet.Range[DSSheet.Cells[1, 1], DSSheet.Cells[12, SizeQty+5]].Borders[4].Weight := 2;

    DSSheet.Range[DSSheet.Cells[1, 1], DSSheet.Cells[12, SizeQty+5]].Font.Name := 'Microsoft JhengHei';
    DSSheet.Cells[1, 1].Select;
    //
    DSSheet.PageSetup.Orientation:= 2;
    DSSheet.PageSetup.Zoom:= 80;

    ShowMessage('Succeed!!');
    eclApp.Visible := True;

  except on F:Exception do
    ShowMessage(F.Message);
  end;

end;

procedure TCutDispatch.DBGridEh2GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if QCDDetail.FieldByName('YN').value='0' then
  begin
    DBGridEh2.canvas.font.color:=clred;
  end;
end;

procedure TCutDispatch.DBGridEh2EditButtonClick(Sender: TObject);
begin
  CD_Rotation := TCD_Rotation.Create(self);
  CD_Rotation.Show;
end;

procedure TCutDispatch.BB8Click(Sender: TObject);
begin
  CD_SMDD:=TCD_SMDD.Create(self);
  CD_SMDD.Show;
end;

procedure TCutDispatch.BD2Click(Sender: TObject);
begin
  with QCDDetailS do
  begin
    RequestLive := true;
    CachedUpdates := true;
    First;
    Insert;
  end;

  BD5.Enabled := true;
  BD6.Enabled := true;
  DBGridEh3.Columns[0].ButtonStyle := cbsEllipsis;
end;

procedure TCutDispatch.BD4Click(Sender: TObject);
begin
  with QCDDetailS do
  begin
    RequestLive := true;
    CachedUpdates := true;
    Edit;
  end;
  BD5.Enabled := true;
  BD6.Enabled := true;
  DBGridEh3.Columns[0].ButtonStyle := cbsEllipsis;
end;

procedure TCutDispatch.BD3Click(Sender: TObject);
begin
  with QCDDetailS do
  begin
    RequestLive := true;
    CachedUpdates := true;
    Edit;
    FieldByName('YN').Value := 0;
  end;
  BD5.Enabled := true;
  BD6.Enabled := true;
end;

procedure TCutDispatch.BD6Click(Sender: TObject);
begin
  with QCDDetailS do
  begin
    Active := false;
    RequestLive := false;
    CachedUpdates := false;
    Active := true;
  end;
  BD5.Enabled := false;
  BD6.Enabled := false;
  DBGridEh3.Columns[0].ButtonStyle := cbsNone;
end;

procedure TCutDispatch.DBGridEh3EditButtonClick(Sender: TObject);
begin
  CD_SMDDS := TCD_SMDDS.Create(self);
  CD_SMDDS.Show;
end;

procedure TCutDispatch.GetSubSQLList();
var ZLBHList,BWBHList,SIZEList,CLBHList,DDBHList:TStringlist;
    i,index:integer;
begin
  ZLBHList:=TStringlist.Create;
  BWBHList:=TStringlist.Create;
  SIZEList:=TStringlist.Create;
  CLBHList:=TStringlist.Create;
  DDBHList:=TStringlist.Create;
  //
  with TmpQry do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select distinct ZLBH,DDBH,BWBH,SIZE,CLBH from CutDispatchSS where DLNO='''+QCDDetail.FieldByName('DLNO').AsString+''' ');
    Active:=true;
    for i:=0 to RecordCount-1 do
    begin                                                                  
      if DDBHList.Find(FieldByName('DDBH').AsString,index)=false then
         DDBHList.Add(FieldByName('DDBH').AsString);
      if ZLBHList.Find(FieldByName('ZLBH').AsString,index)=false then
         ZLBHList.Add(FieldByName('ZLBH').AsString);
      if BWBHList.Find(FieldByName('BWBH').AsString,index)=false then
         BWBHList.Add(FieldByName('BWBH').AsString);
      if SIZEList.Find(FieldByName('SIZE').AsString,index)=false then
         SIZEList.Add(FieldByName('SIZE').AsString);
      if CLBHList.Find(FieldByName('CLBH').AsString,index)=false then
         CLBHList.Add(FieldByName('CLBH').AsString);
      Next;
    end;
    Active:=false;
  end;
  //
  ZLBHSubSQL:='';
  BWBHSubSQL:='';
  SIZESubSQL:='';
  CLBHSubSQL:='';
  DDBHSubSQL:='';
  for i:=0 to ZLBHList.Count-1 do
  begin
     ZLBHSubSQL:=ZLBHSubSQL+''''+ZLBHList[i]+''',';
  end;
  if length(ZLBHSubSQL)>0 then
    ZLBHSubSQL:=' ('+Copy(ZLBHSubSQL,1,length(ZLBHSubSQL)-1)+')';
  //
  for i:=0 to BWBHList.Count-1 do
  begin
     BWBHSubSQL:=BWBHSubSQL+''''+BWBHList[i]+''',';
  end;
  if length(BWBHSubSQL)>0 then
    BWBHSubSQL:=' ('+Copy(BWBHSubSQL,1,length(BWBHSubSQL)-1)+')';
  //
  for i:=0 to SIZEList.Count-1 do
  begin
     SIZESubSQL:=SIZESubSQL+''''+SIZEList[i]+''',';
  end;
  if length(SIZESubSQL)>0 then
    SIZESubSQL:=' ('+Copy(SIZESubSQL,1,length(SIZESubSQL)-1)+')';
  //
  for i:=0 to CLBHList.Count-1 do
  begin
     CLBHSubSQL:=CLBHSubSQL+''''+CLBHList[i]+''',';
  end;
  if length(CLBHSubSQL)>0 then
    CLBHSubSQL:=' ('+Copy(CLBHSubSQL,1,length(CLBHSubSQL)-1)+')';
  //
  for i:=0 to DDBHList.Count-1 do
  begin
     DDBHSubSQL:=DDBHSubSQL+''''+DDBHList[i]+''',';
  end;
  if length(DDBHSubSQL)>0 then
    DDBHSubSQL:=' ('+Copy(DDBHSubSQL,1,length(DDBHSubSQL)-1)+')';
  //
  ZLBHList.free;
  BWBHList.free;
  SIZEList.free;
  CLBHList.free;
  DDBHList.free;

end;
procedure TCutDispatch.BD5Click(Sender: TObject);
var
  i: integer;
  flag: boolean;
begin
  flag := true;

  try
    QCDDetailS.First;
    for i := 1 to QCDDetailS.RecordCount do
    begin
      case QCDDetailS.UpdateStatus of
        usInserted:
        begin
          if (QCDDetailS.FieldByName('DDBH').IsNull  ) then
          begin
            QCDDetailS.Delete;
          end
          else begin
            QCDDetailS.Edit;
            QCDDetailS.FieldByName('DLNO').Value := QCDDetail.FieldByName('DLNO').AsString;
            QCDDetailS.FieldByName('ZLBH').Value := QCDDetail.FieldByName('ZLBH').AsString;
            QCDDetailS.FieldByName('BWBH').Value := QCDDetail.FieldByName('BWBH').AsString;
            QCDDetailS.FieldByName('SIZE').Value := QCDDetail.FieldByName('SIZE').AsString;
            QCDDetailS.FieldByName('CLBH').Value := QCDDetail.FieldByName('CLBH').AsString;
            QCDDetailS.FieldByName('ScanQty').Value := 0;
            QCDDetailS.FieldByName('USERID').Value := main.Edit1.Text;
            QCDDetailS.FieldByName('USERDATE').Value := Ndate;
            QCDDetailS.FieldByName('YN').Value := 1;
            UCDDetailS.Apply(ukInsert);
          end;
        end;

        usModified:
        begin
          if (QCDDetailS.FieldByName('USERID').Value <> main.Edit1.Text) then
          begin
            ShowMessage('不是你的，不要亂動。khong phai ban khong duoc tu sua');
          end
          else begin
            if (QCDDetailS.FieldByName('YN').value = 0) then
            begin
              GetSubSQLList();
              flag := false;
              UCDDetailS.Apply(ukDelete);
            end
            else begin
              QCDDetailS.Edit;
              QCDDetailS.FieldByName('USERID').Value := main.Edit1.text;
              QCDDetailS.FieldByName('USERDATE').Value := Ndate;
              UCDDetailS.Apply(ukModify);
            end;
          end;
        end;
      end;

      QCDDetailS.Next;
    end;

    //更新數量
    if (flag) then
      GetSubSQLList();
    with TmpQry do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('update CutDispatchSS set Qty=CutDispatchZL.Qty-IsNull(CutDispatchZL.DQty,0) ');
      SQL.Add('from (');
      SQL.Add('	select CutDispatchZL.DDBH,CutDispatchZL.ZLBH,CutDispatchZL.BWBH,CutDispatchZL.SIZE,CutDispatchZL.CLBH,CutDispatchZL.Qty,IsNull(CutDisPatchS.DQty,0) as DQty from (');
      SQL.Add('	Select SMDD.DDBH,ZLBH,BWBH,SIZE,CLBH,SMDDS.Qty from CutDispatchZL ');
      SQL.Add('	left join SMDD on SMDD.YSBH=CutDispatchZL.ZLBH and SMDD.GXLB=''C''');
      SQL.Add('	left join SMDDS on SMDDS.DDBH=SMDD.DDBH and SMDDS.XXCC=CutDispatchZL.SIZE ');
      SQL.Add('	where 1=1   and ZLBH in '+ZLBHSubSQL);
      SQL.Add('	 and CLBH in '+CLBHSubSQL);
      SQL.Add('	 and SIZE in '+SIZESubSQL);
      SQL.Add('	 and BWBH in '+BWBHSubSQL);
      SQL.Add('	 and SMDD.DDBH in  '+DDBHSubSQL+') CutDispatchZL');
      SQL.Add('	 left join (');
      SQL.Add('	  select CutDispatchSS.DDBH,CutDisPatchS.ZLBH,CutDisPatchS.BWBH,CutDisPatchS.SIZE,CutDisPatchS.CLBH,Sum(CutDisPatchSS.Qty) as DQty from CutDisPatchS');
      SQL.Add('	  Left join  CutDispatchSS on CutDisPatchS.DLNO=CutDispatchSS.DLNO and CutDispatchS.ZLBH=CutDispatchSS.ZLBH and CutDispatchS.BWBH=CutDispatchSS.BWBH  and CutDispatchS.SIZE=CutDispatchSS.SIZE and CutDispatchS.SIZE=CutDispatchSS.SIZE');
      SQL.Add('	  where 1=1 ');
      SQL.Add('	  and CutDisPatchS.DLNO<>'''+QCDMaster.FieldByName('DLNO').AsString+''' ');
      SQL.Add('	  and CutDisPatchS.ZLBH in '+ZLBHSubSQL);
      SQL.Add('	  and CutDisPatchS.CLBH in '+CLBHSubSQL);
      SQL.Add('	  and CutDisPatchS.SIZE in '+SIZESubSQL);
      SQL.Add('	  and CutDisPatchS.BWBH in '+BWBHSubSQL);
      SQL.Add('	  and CutDispatchSS.DDBH in '+DDBHSubSQL+' ');
      SQL.Add('	  Group by CutDispatchSS.DDBH,CutDisPatchS.ZLBH,CutDisPatchS.BWBH,CutDisPatchS.SIZE,CutDisPatchS.CLBH ');
      SQL.Add('	 ) CutDisPatchS on CutDisPatchS.ZLBH=CutDispatchZL.ZLBH and CutDisPatchS.DDBH=CutDispatchZL.DDBH and CutDisPatchS.BWBH=CutDispatchZL.BWBH and CutDisPatchS.SIZE=CutDispatchZL.SIZE and CutDisPatchS.CLBH=CutDispatchZL.CLBH');
      SQL.Add(') CutDispatchZL where CutDispatchSS.ZLBH=CutDispatchZL.ZLBH and CutDispatchSS.DDBH=CutDispatchZL.DDBH and CutDispatchSS.BWBH=CutDispatchZL.BWBH and CutDispatchSS.SIZE=CutDispatchZL.SIZE and CutDispatchSS.CLBH=CutDispatchZL.CLBH and CutDispatchSS.DLNO='''+QCDMaster.FieldByName('DLNO').AsString+''';');
      //funcObj.WriteErrorLog(sql.Text);
      ExecSQL();
      //
      Active:=false;
      SQL.Clear;
      SQL.Add('update CutDispatchS set Qty=CutDispatchSS.Qty ');
      SQL.Add('from (');
      SQL.Add('select DLNO,ZLBH,BWBH,SIZE,CLBH,Sum(Qty) as Qty from CutDispatchSS');
      SQL.Add('where DLNO='''+QCDMaster.FieldByName('DLNO').AsString+'''');
      SQL.Add('Group by DLNO,ZLBH,BWBH,SIZE,CLBH ) CutDispatchSS');
      SQL.Add('where CutDispatchS.DLNO='''+QCDMaster.FieldByName('DLNO').AsString+''' and CutDispatchS.DLNO=CutDispatchSS.DLNO and CutDispatchS.ZLBH=CutDispatchSS.ZLBH and CutDispatchS.BWBH=CutDispatchSS.BWBH and CutDispatchS.SIZE=CutDispatchSS.SIZE and CutDispatchS.CLBH=CutDispatchSS.CLBH ;');
      //funcObj.WriteErrorLog(sql.Text);
      ExecSQL();
      //
      Active:=false;
      SQL.Clear;
      SQL.Add('update CutDispatchS Set CutNum=CutDS.CutNum ');
      SQL.Add('from (');
      SQL.Add('select CutDispatchS.DLNO,CutDispatchS.ZLBH,CutDispatchS.BWBH,CutDispatchS.CLBH,CutDispatchS.SIZE ');
      SQL.Add('       ,case when CutDispatchZL.joinnum>0 then CEILING((CutDispatchS.Qty)*CutDispatchZL.piece/convert(float,CutDispatchZL.layer)*joinnum) else 0 end as CutNum');
      SQL.Add('from CutDispatchS');
      SQL.Add('Left join CutDispatchZL on CutDispatchS.ZLBH=CutDispatchZL.ZLBH and CutDispatchS.BWBH=CutDispatchZL.BWBH and CutDispatchS.CLBH=CutDispatchZL.CLBH and CutDispatchZL.SIZE=CutDispatchZL.SIZE');
      SQL.Add('where CutDispatchS.DLNO='''+QCDMaster.FieldByName('DLNO').AsString+''' ) CutDS ');
      SQL.Add('where CutDS.DLNO=CutDispatchS.DLNO and CutDS.ZLBH=CutDispatchS.ZLBH and CutDS.BWBH=CutDispatchS.BWBH and CutDS.CLBH=CutDispatchS.CLBH and CutDS.SIZE=CutDispatchS.SIZE');
      //funcObj.WriteErrorLog(sql.Text);
      ExecSQL();
    end;
    //
    QCDDetailS.Active := false;
    QCDDetailS.CachedUpdates := false;
    QCDDetailS.RequestLive := false;
    QCDDetailS.Active := true;
    QCDDetail.Active:=false;
    QCDDetail.Active:=true;
    BD5.enabled := false;
    BD6.enabled := false;
    DBGridEh3.Columns[0].ButtonStyle := cbsNone;
  except
    MessageDlg('Have wrong, can not save data!', mtWarning, [mbyes], 0);
  end;
end;

procedure TCutDispatch.DBGridEh3GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if QCDDetailS.FieldByName('YN').value='0' then
  begin
    DBGridEh3.canvas.font.color:=clred;
  end;
end;

procedure TCutDispatch.BB10Click(Sender: TObject);
var IsRoundNum,IsShowCutNum:boolean;
begin

  if messagedlg('Only show order RY#?',mtinformation,[mbYes,mbNo],0)=mrYes then
    IsRoundNum:=false
  else
    IsRoundNum:=true;
  if messagedlg('Don''t show CutNum ?',mtinformation,[mbYes,mbNo],0)=mrYes then
    IsShowCutNum:=false
  else
    IsShowCutNum:=true;
  CD_Print:=TCD_Print.Create(self);
  CD_Print.Init( QCDDetail.FieldByName('DLNO').AsString ,IsRoundNum,IsShowCutNum, QCDMaster.FieldByName('depid').AsString );
  CD_Print.quickrep1.preview;
  CD_Print.free;

end;
//
procedure TCutDispatch.BB9Click(Sender: TObject);
var i:integer;
    bm:Tbookmark;
    bookmarklist:tbookmarklistEh;
    Org_DLNO,Mer_DLNO:String;
begin
  QCDMaster.disablecontrols;
  bm:=QCDMaster.getbookmark;
  bookmarklist:=DBGridEh1.selectedrows;
  //
  try
    if (DBGridEh1.SelectedRows.Count > 0) then
    begin
        for i:=0 to bookmarklist.count-1 do
        begin
          QCDMaster.gotobookmark(pointer(bookmarklist[i]));
          if Org_DLNO='' then
          begin
             Org_DLNO:=QCDMaster.FieldByName('DLNO').AsString;
          end else
          begin
             Mer_DLNO:=QCDMaster.FieldByName('DLNO').AsString;;
             with TmpQry do
             begin
               Active:=false;
               SQL.Clear;
               SQL.Add('Select DLNO from CutDispatchS where okCutNum>0 and DLNO='''+Mer_DLNO+''' ');
               Active:=true;
               if RecordCount=0 then
               begin
                 //
                 Active:=false;
                 SQL.Clear;
                 SQL.Add('update CutDispatchS Set DLNO='''+Org_DLNO+''' ');
                 SQL.Add('where  DLNO='''+Mer_DLNO+'''; ');
                 SQL.Add('update CutDispatchSS Set DLNO='''+Org_DLNO+''' ');
                 SQL.Add('where  DLNO='''+Mer_DLNO+''' and not exists (select DLNO from CutDispatchSS A where A.DLNO='''+Org_DLNO+''' and A.ZLBH=CutDispatchSS.ZLBH and A.BWBH=CutDispatchSS.BWBH and A.SIZE=CutDispatchSS.SIZE and A.CLBH=CutDispatchSS.CLBH); ');
                 SQL.Add('Delete from CutDispatchSS where  DLNO='''+Mer_DLNO+'''; ');
                 ExecSQL();
               end;
               //
             end;
          end;
        end;

      Showmessage('Success');
      QCDMaster.Active:=false;
      QCDMaster.Active:=true;
    end else
    begin
      Showmessage('Please Select DDBH');
    end;
  finally
  begin
    QCDMaster.gotobookmark(bm);
    QCDMaster.freebookmark(bm);
    QCDMaster.enablecontrols;
  end;
end;
  //
end;

procedure TCutDispatch.BB11Click(Sender: TObject);
begin
  PrintType := 'H';
  CD_PrintHDlg:=TCD_PrintHDlg.Create(self);
  CD_PrintHDlg.Show;
end;

procedure TCutDispatch.BB15Click(Sender: TObject);
begin
  PrintType := 'H2';
  CD_PrintHDlg:=TCD_PrintHDlg.Create(self);
  CD_PrintHDlg.Show;
end;

procedure TCutDispatch.BB12Click(Sender: TObject);
var
      eclApp,WorkBook:olevariant;
      i,j:integer;
  begin
  if  QCDMaster.active  then
    begin
    try
      eclApp:=CreateOleObject('Excel.Application');
      WorkBook:=CreateOleObject('Excel.Sheet');
    except
      Application.MessageBox('No Mcrosoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
      Exit;
    end;
    try
        WorkBook:=eclApp.workbooks.Add;
        for   i:=0   to   QCDMaster.fieldCount-1   do
          begin
              eclApp.Cells(1,i+1):=QCDMaster.fields[i].FieldName;
          end;
        QCDMaster.First;
        j:=2;
        while   not   QCDMaster.Eof   do
          begin
            for   i:=0   to   QCDMaster.FieldCount-1   do
              begin
                eclApp.Cells(j,i+1):=QCDMaster.Fields[i].Value;
              end;
            QCDMaster.Next;
            inc(j);
          end;
      eclapp.columns.autofit;
      showmessage('Succeed');
      eclApp.Visible:=True;
      except
        on   F:Exception   do
          showmessage(F.Message);
      end;
    end;

end;

procedure TCutDispatch.BT13Click(Sender: TObject);
begin

  if QCDMaster.Active=false then exit;
  with tmpQry do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('UPDATE CutDispatchS SET okCutNum = CutNum, ScanUser = ''' + main.Edit1.Text + ''', ScanDate = GetDate() WHERE DLNO = ''' + QCDMaster.FieldByName('DLNO').AsString + ''';');
    SQL.Add('UPDATE CutDispatchSS SET ScanQty = Qty WHERE DLNO = ''' + QCDMaster.FieldByName('DLNO').AsString + ''';');
    ExecSQL;
    Active :=false;
  end;
  Showmessage('OK');

end;

procedure TCutDispatch.btnCutPrintClick(Sender: TObject);
var UserString: string;
begin
  pnCutPrint.Visible:=true;
  CutPrint.Active:=true;
end;

procedure TCutDispatch.btnOKClick(Sender: TObject);
var i:integer;
begin
  if edtCutPrint.Text = '' then
  begin
    showmessage('Nhap so luong vao!!!');
    abort;
  end;
  
  for i:=1 to length(edtCutPrint.Text) do
  begin
    if not (edtCutPrint.Text[i] in ['0'..'9'])then
    begin
      showmessage('Nhap vao so tu nhien!!!');
      abort;
    end;
  end;

  If (strtoint(edtCutPrint.Text) <= 0) or (strtoint(edtCutPrint.Text) > 144) then
  begin
    showmessage('Nhap so luong phai > 0 va <= 144');
    abort;
  end;

  pnCutPrint.Visible:=false;
  Cut_Print();
  edtCutPrint.Text := '72';
  CutPrint.Active:=false;
end;

procedure TCutDispatch.Cut_Print();
  function GetRotationNum(ZLBH:string;DDBH:String):string;
  var Str:string;
  begin
    Str:=Copy(DDBH,length(ZLBH)+1,length(DDBH));
    if Str<>'' then
    begin
      if Copy(Str,1,1)<>'-' then Str:=inttostr(strtoint(Str)) else Str:=inttostr(strtoint(Copy(Str,2,length(Str))));
    end else
    begin
      Str:='1';
    end;
    result:=Str;
  end;
var writeFile:textfile;
    PackingInfo:string;
    Quantity:string;
    i,counti:integer;
    RotateS,RotateE:String;
begin
  //

  if Fileexists(extractfilepath(application.ExeName)+'\CutPrint.txt') then
  begin
    assignfile(writeFile,ExtractFilePath(Application.ExeName)+'CutPrint.txt');
    rewrite(writeFile);
    CutPrint.first;
    while not CutPrint.Eof do
    begin
      counti:=trunc(CutPrint.fieldByName('Qty').Value/ strtoint(edtCutPrint.Text));
      for i:=0 to counti-1 do
      begin
        PackingInfo:='';
        RotateS:='T'+GetRotationNum(CutPrint.fieldByName('ZLBH').AsString,CutPrint.fieldByName('SDDBH').AsString);
        RotateE:='T'+GetRotationNum(CutPrint.fieldByName('ZLBH').AsString,CutPrint.fieldByName('EDDBH').AsString);
        PackingInfo:=PackingInfo+trim(CutPrint.fieldByName('ZLBH').AsString)+' '+RotateS+'-'+RotateE+',';
        PackingInfo:=PackingInfo+trim(CutPrint.fieldByName('YWSM').AsString)+',';
        PackingInfo:=PackingInfo+trim(CutPrint.fieldByName('DaoMH').AsString)+',';
        PackingInfo:=PackingInfo+trim(CutPrint.fieldByName('SIZE').AsString)+',';
        PackingInfo:=PackingInfo+'SL:'+trim(edtCutPrint.Text)+',';
        PackingInfo:=PackingInfo+trim(CutPrint.fieldByName('BWBH').AsString)+',';
        PackingInfo:=PackingInfo+trim(CutPrint.fieldByName('DLNO').AsString)+'&'+trim(CutPrint.fieldByName('ZLBH').AsString)+'&'+trim(CutPrint.fieldByName('BWBH').AsString)+'&'+trim(CutPrint.fieldByName('SIZE').AsString+'&'+trim(edtCutPrint.Text));
        append(writeFile);
        writeln(writeFile, PackingInfo);
      end;
      if (CutPrint.fieldByName('Qty').Value-strtoint(edtCutPrint.Text)*counti) > 0 then
      begin
        PackingInfo:='';
        RotateS:='T'+GetRotationNum(CutPrint.fieldByName('ZLBH').AsString,CutPrint.fieldByName('SDDBH').AsString);
        RotateE:='T'+GetRotationNum(CutPrint.fieldByName('ZLBH').AsString,CutPrint.fieldByName('EDDBH').AsString);
        PackingInfo:=PackingInfo+trim(CutPrint.fieldByName('ZLBH').AsString)+' '+RotateS+'-'+RotateE+',';
        PackingInfo:=PackingInfo+trim(CutPrint.fieldByName('YWSM').AsString)+',';
        PackingInfo:=PackingInfo+trim(CutPrint.fieldByName('DaoMH').AsString)+',';
        PackingInfo:=PackingInfo+trim(CutPrint.fieldByName('SIZE').AsString)+',';
        PackingInfo:=PackingInfo+'SL:'+trim(inttostr(CutPrint.fieldByName('Qty').Value-strtoint(edtCutPrint.Text)*counti))+',';
        PackingInfo:=PackingInfo+trim(CutPrint.fieldByName('BWBH').AsString)+',';
        PackingInfo:=PackingInfo+trim(CutPrint.fieldByName('DLNO').AsString)+'&'+trim(CutPrint.fieldByName('ZLBH').AsString)+'&'+trim(CutPrint.fieldByName('BWBH').AsString)+'&'+trim(CutPrint.fieldByName('SIZE').AsString+'&'+trim(inttostr(CutPrint.fieldByName('Qty').Value-strtoint(edtCutPrint.Text)*counti)));
        append(writeFile);
        writeln(writeFile, PackingInfo);
      end;
      CutPrint.Next;
    end;
    closefile(writeFile);
  end;
  //
  if fileexists(extractfilepath(application.ExeName)+'CutPrint.btw') then
  begin
    ShellExecute(Handle,'open',PChar(ExtractFilePath(Application.ExeName)+'CutPrint.btw'),nil,pchar(ExtractFilePath(Application.ExeName)),SW_SHOW);
  end
  else  begin
    Showmessage('Pls setup the program first. Abort');
  end;
end;

procedure TCutDispatch.btnCancelClick(Sender: TObject);
begin
  edtCutPrint.Text:='12';
  pnCutPrint.Visible:=false;
end;

procedure TCutDispatch.BB14Click(Sender: TObject);
begin
  CD_SMDDList:=TCD_SMDDList.Create(Self);
  CD_SMDDList.Show;
end;

procedure TCutDispatch.CLSl1Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin
  if  QCDMaster.active  then
  begin
  try
    eclApp:=CreateOleObject('Excel.Application');
    WorkBook:=CreateOleObject('Excel.Sheet');
  except
    Application.MessageBox('No Mcrosoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
    Exit;
  end;
  with TmpQry do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Select CutDispatchs.ZLBH,CutDispatchs.BWBH,BWZL.YWSM,CutDispatchs.CLBH,CLZL.YWPM ,ZLZLS2.CLSL,BDepartment.DepName as LeanStitch from (');
    SQL.Add('select CutDispatchs.ZLBH,CutDispatchs.BWBH,CutDispatchs.CLBH,SMDD.DepNo,min(SMDD.PlanDate) as PlanDate from CutDispatch');
    SQL.Add('left join CutDispatchs on CutDispatch.DLNO=CutDispatchs.DLNO');
    SQL.Add('left join CutDispatchSS on CutDispatchSS.DLNO=CutDispatchS.DLNO and CutDispatchSS.ZLBH=CutDispatchs.ZLBH and CutDispatchSS.BWBH=CutDispatchs.BWBH and CutDispatchSS.CLBH=CutDispatchs.CLBH and CutDispatchSS.SIZE=CutDispatchs.SIZE');
    SQL.Add('left join SMDD on SMDD.DDBH=CutDispatchSS.DDBH and SMDD.GXLB=''S''');
    SQL.Add('where CutDispatchs.DLNO='''+QCDMaster.FieldByName('DLNO').AsString+''' ');
    SQL.Add('Group by CutDispatchs.ZLBH,CutDispatchs.BWBH,CutDispatchs.CLBH,SMDD.DepNo ) CutDispatchs');
    SQL.Add('left join ZLZLS2 on CutDispatchs.ZLBH=ZLZLS2.ZLBH and CutDispatchs.BWBH=ZLZLS2.BWBH and CutDispatchs.CLBH=ZLZLS2.CLBH ');
    SQL.Add('left join BDepartment on BDepartment.ID=CutDispatchs.DepNo');
    SQL.Add('left join CLZL on CLZL.CLDH=CutDispatchs.CLBH ');
    SQL.Add('left join BWZL on BWZL.BWDH=CutDispatchs.BWBH ');
    Active:=true;
  end;
  try
    WorkBook:=eclApp.workbooks.Add;
    for   i:=0   to   TmpQry.fieldCount-1   do
    begin
      eclApp.Cells(1,i+1):=TmpQry.fields[i].FieldName;
    end;
    QCDMaster.First;
    j:=2;
    while not TmpQry.Eof   do
    begin
      for   i:=0   to   TmpQry.FieldCount-1   do
      begin
        eclApp.Cells(j,i+1):=TmpQry.Fields[i].Value;
      end;
      TmpQry.Next;
      inc(j);
    end;
    eclapp.columns.autofit;
    showmessage('Succeed');
    eclApp.Visible:=True;
    except
      on   F:Exception   do
        showmessage(F.Message);
    end;
  end;
  TmpQry.Active:=false;

end;

procedure TCutDispatch.PDFMatCLSL1Click(Sender: TObject);
begin
  CD_MatCLSLRpt:=TCD_MatCLSLRpt.Create(self);
  CD_MatCLSLRpt.Init( QCDDetail.FieldByName('DLNO').AsString  );
  CD_MatCLSLRpt.quickrep1.preview;
  CD_MatCLSLRpt.free;
end;

procedure TCutDispatch.DBGridEh1Columns6EditButtonClick(Sender: TObject;
  var Handled: Boolean);
begin
  MachineSelect := TMachineSelect.Create(Self);
  MachineSelect.Show;
end;

procedure TCutDispatch.DBGridEh1Columns7EditButtonClick(Sender: TObject;
  var Handled: Boolean);
begin
  MachineSelect := TMachineSelect.Create(Self);
  MachineSelect.Show;
end;

procedure TCutDispatch.CB_LISTTYPEChange(Sender: TObject);
begin
  if (CB_LISTTYPE.ItemIndex = 0) then
    ListType := ''
  else if (CB_LISTTYPE.ItemIndex = 1) then
    ListType := 'MC'
  else if (CB_LISTTYPE.ItemIndex = 2) then
    ListType := 'AC'
  else if (CB_LISTTYPE.ItemIndex = 3) then
    ListType := 'Lectra';
end;

procedure TCutDispatch.Edit2Click(Sender: TObject);
begin
  Edit2.Clear;
end;

procedure TCutDispatch.Button2Click(Sender: TObject);
begin
  if (length(Edit2.Text) = 11) then
  with tmpQry do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('UPDATE CutDispatchS SET okCutNum = CutNum, ScanUser = ''' + main.Edit1.Text + ''', ScanDate = GetDate() WHERE DLNO = ''' + Edit2.Text + ''';');
    SQL.Add('UPDATE CutDispatchSS SET ScanQty = Qty WHERE DLNO = ''' + Edit2.Text + ''';');
    ExecSQL;
    Active :=false;
  end;
  Showmessage('OK');
end;

end.
