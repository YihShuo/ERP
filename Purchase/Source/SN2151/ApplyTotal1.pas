unit ApplyTotal1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, StdCtrls, DBCtrls, GridsEh, DBGridEh, ComCtrls,
  Mask, Buttons, ExtCtrls, Comobj, IniFiles, dateutils;

type
  TApplyTotal = class(TForm)
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
    BTD7: TBitBtn;
    PC1: TPageControl;
    TS3: TTabSheet;
    Panel4: TPanel;
    Label11: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    DBEdit5: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit7: TDBEdit;
    BBTT1: TBitBtn;
    DBGrid3: TDBGridEh;
    TS4: TTabSheet;
    Label8: TLabel;
    Panel3: TPanel;
    Label7: TLabel;
    Label19: TLabel;
    DBEdit9: TDBEdit;
    DBEdit13: TDBEdit;
    BBTT2: TBitBtn;
    Panel5: TPanel;
    dbgrid4: TDBGridEh;
    Query1: TQuery;
    BDelRec: TQuery;
    SGMas: TQuery;
    UpMas: TUpdateSQL;
    DS1: TDataSource;
    SGDet: TQuery;
    UPDet: TUpdateSQL;
    DS2: TDataSource;
    SGMasSGNO: TStringField;
    SGMasGSBH: TStringField;
    SGMasDepID: TStringField;
    SGMasSGDate: TDateTimeField;
    SGMasUSERDate: TDateTimeField;
    SGMasUSERID: TStringField;
    SGMasYN: TStringField;
    SGMasDepName: TStringField;
    SGDetSGNO: TStringField;
    SGDetCLBH: TStringField;
    SGDetYWPM: TStringField;
    SGDetZWPM: TStringField;
    SGDetQty: TFloatField;
    SGDetUSERDate: TDateTimeField;
    SGDetUSERID: TStringField;
    SGDetYN: TStringField;
    SGDetYQdate: TDateTimeField;
    SGDetMemo: TStringField;
    SGDetZSDH: TStringField;
    SGDetzsywjc: TStringField;
    SGMasMemo: TStringField;
    SGDetdwbh: TStringField;
    BTD6: TBitBtn;
    SGDetZWSM: TStringField;
    SGDetACCVN: TFloatField;
    SGDetACCUS: TFloatField;
    SGDetSGQty: TFloatField;
    SGDetUSPrice: TFloatField;
    SGDetVNPrice: TCurrencyField;
    SGDetBJNO: TStringField;
    SGMasCFMDate: TDateTimeField;
    SGMasCFMID: TStringField;
    SGMasDepMemo: TStringField;
    SGMasLB: TStringField;
    SGMasCFMMemo: TStringField;
    SGMasCFMDate1: TDateTimeField;
    SGMasCFMID1: TStringField;
    SGMasflowflag: TStringField;
    SGDetACC: TCurrencyField;
    SGMasCHKDate: TDateTimeField;
    SGMasCHKID: TStringField;
    SGDetDepQty: TCurrencyField;
    SGDetZZZQty: TCurrencyField;
    Label5: TLabel;
    Label6: TLabel;
    SGMasBudget_chk: TBooleanField;
    SGMasCustomer_Account: TBooleanField;
    SGMasUniform: TBooleanField;
    SGMasOrderDate: TDateTimeField;
    TS5: TTabSheet;
    Panel2: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    Check: TCheckBox;
    Panel7: TPanel;
    Label2: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label12: TLabel;
    Edit2: TEdit;
    Button2: TButton;
    DTP3: TDateTimePicker;
    DTP4: TDateTimePicker;
    GroupBox1: TGroupBox;
    rdCD12: TRadioButton;
    rdCD1207: TRadioButton;
    Edit3: TEdit;
    DBGrid5: TDBGridEh;
    Panel8: TPanel;
    Label15: TLabel;
    BitBtn12: TBitBtn;
    BitBtn1: TBitBtn;
    QryTotal: TQuery;
    QryTotalCLBH: TStringField;
    QryTotalUSPrice: TFloatField;
    QryTotalVNPrice: TCurrencyField;
    QryTotalYWPM: TStringField;
    QryTotalZWPM: TStringField;
    QryTotaldwbh: TStringField;
    QryTotalZWSM: TStringField;
    QryTotalLB: TStringField;
    QryTotalDepID: TStringField;
    QryTotalQty1: TFloatField;
    QryTotalQty2: TFloatField;
    QryTotalQty3: TFloatField;
    QryTotalQty4: TFloatField;
    QryTotalQty5: TFloatField;
    QryTotalQty6: TFloatField;
    QryTotalQty7: TFloatField;
    QryTotalQty8: TFloatField;
    QryTotalQty9: TFloatField;
    QryTotalQty10: TFloatField;
    QryTotalQty11: TFloatField;
    QryTotalQty12: TFloatField;
    QryTotalACCVN1: TFloatField;
    QryTotalACCVN2: TFloatField;
    QryTotalACCVN3: TFloatField;
    QryTotalACCVN4: TFloatField;
    QryTotalACCVN5: TFloatField;
    QryTotalACCVN6: TFloatField;
    QryTotalACCVN7: TFloatField;
    QryTotalACCVN8: TFloatField;
    QryTotalACCVN9: TFloatField;
    QryTotalACCVN10: TFloatField;
    QryTotalACCVN11: TFloatField;
    QryTotalACCVN12: TFloatField;
    QryTotalACCUS1: TFloatField;
    QryTotalACCUS2: TFloatField;
    QryTotalACCUS3: TFloatField;
    QryTotalACCUS4: TFloatField;
    QryTotalACCUS5: TFloatField;
    QryTotalACCUS6: TFloatField;
    QryTotalACCUS7: TFloatField;
    QryTotalACCUS8: TFloatField;
    QryTotalACCUS9: TFloatField;
    QryTotalACCUS10: TFloatField;
    QryTotalACCUS11: TFloatField;
    QryTotalACCUS12: TFloatField;
    DS3: TDataSource;
    SGDetYM: TStringField;
    SGDetSeason: TStringField;
    SGDetSerno: TIntegerField;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure SGMasAfterOpen(DataSet: TDataSet);
    procedure SGDetAfterOpen(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure BB1Click(Sender: TObject);
    procedure BBTT1Click(Sender: TObject);
    procedure BB2Click(Sender: TObject);
    procedure BB3Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure BD2Click(Sender: TObject);
    procedure BD3Click(Sender: TObject);
    procedure BD4Click(Sender: TObject);
    procedure BD5Click(Sender: TObject);
    procedure PC1Change(Sender: TObject);
    procedure BBTT2Click(Sender: TObject);
    procedure BD6Click(Sender: TObject);
    procedure bbt6Click(Sender: TObject);
    procedure BTD7Click(Sender: TObject);
    procedure DBGrid3DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure dbgrid4DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure BDT5Click(Sender: TObject);
    procedure BTD6Click(Sender: TObject);
    procedure SGDetCalcFields(DataSet: TDataSet);
    procedure DBGrid3DblClick(Sender: TObject);
    procedure dbgrid4EditButtonClick(Sender: TObject);
    procedure SGMasAfterScroll(DataSet: TDataSet);
    procedure Button2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn12Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    AppDir:String;
    IsAllowUserID:Boolean;
    { Private declarations }
    procedure ReadIni();
  public
    VNPrice_DiplayFormat:string;
    VNPrice_Decimal:Byte;
    { Public declarations }
  end;

var
  ApplyTotal: TApplyTotal;
  NDate:TDate;

implementation

uses main1, ApplyTotalDepName1, ApplyTotalMatNo1, ApplyTotal_Print1, ApplyPurTotal_BJ1,FUNUNIT,
  ApplyTotalCapex1;

{$R *.dfm}

procedure TApplyTotal.ReadIni();
var MyIni :Tinifile;
    AppDir,UserIDList:string;
    tmpUserIDList:TStringlist;
    index:integer;
begin
  //
  UserIDList:='51142,41191,41191,42845';
  VNPrice_DiplayFormat:='#,##0';
  VNPrice_Decimal:=0;
  AppDir:=ExtractFilePath(Application.ExeName);
  if FileExists(AppDir+'\ComName.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ComName.ini');
      VNPrice_DiplayFormat:=MyIni.ReadString('VNPrice','DiplayFormat','#,##0');
      VNPrice_Decimal:=strtoint(MyIni.ReadString('VNPrice','Decimal','0'));
      UserIDList:=MyIni.ReadString('ERP','Purchase_N2151_CheckUserID','51142,41191,41191,42845');
    finally
      MyIni.Free;
    end;
  end;

  if  UserIDList <> '' then
  begin
    tmpUserIDList:=FuncObj.SplitString(UserIDList,',');
    index:=tmpUserIDList.IndexOf(main.Edit1.Text);
    if index>=0 then IsAllowUserID:=true;
    tmpUserIDList.Free;
  end else
  begin
    IsAllowUserID:=false;
  end;

  TCurrencyField(SGDet.FieldByName('VNPrice')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(SGDet.FieldByName('ACCVN')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(SGDet.FieldByName('ACC')).DisplayFormat:=VNPrice_DiplayFormat;
end;

procedure TApplyTotal.Button1Click(Sender: TObject);
begin
  with SGMas do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select SGDH.*,BDepartment.DepName,BDepartment.DepMemo');
    SQL.Add('from SGDH ');
    SQL.Add('left join  BDepartment on BDepartment.ID=SGDH.DepID ');
    SQL.Add('where ISNULL(Status,'''')<>''D'' and SGDH.LB not in (''09'',''05'') and SGDH.SGNO like '''+Edit1.Text+'%'+''' ');
    SQL.Add('and convert(smalldatetime,convert(varchar,SGDH.USERDATE,111)) between ');
    SQL.add(''''+formatdatetime('yyyy/MM/dd',DTP1.Date) +'''');
    SQL.add(' and ');
    SQL.add(''''+formatdatetime('yyyy/MM/dd',DTP2.Date) +'''');
    if Check.Checked then
    begin
      SQL.Add('and SGDH.USERID='+''''+main.Edit1.Text+'''');
    end;
    SQL.Add('and SGDH.GSBH='''+main.Edit2.Text+''' ');
    SQL.Add('order by SGNO DESC');
    //memo1.Text:=sql.Text;
    Active:=true;
  end;
  SGDet.Active:=true;
end;

procedure TApplyTotal.SGMasAfterOpen(DataSet: TDataSet);
begin
  BB2.Enabled:=true;
  BB3.Enabled:=true;
  BB4.Enabled:=true;
end;

procedure TApplyTotal.SGDetAfterOpen(DataSet: TDataSet);
begin
  BD2.Enabled:=true;
  BD3.Enabled:=true;
  BD4.Enabled:=true;
  //bdPrint.Enabled:=true;
  if ((NDate-SGMas.FieldByName('USERDATE').value)>30) then
  begin
    BD2.Enabled:=false;
    BD3.Enabled:=false;
    BD4.Enabled:=false;
  end;
  if SGMas.FieldByName('CHKID').value<>'NO'  then
  begin
    BD2.Enabled:=false;
    BD3.Enabled:=false;
    BD4.Enabled:=false;
  end;
  if SGMas.FieldByName('CFMID').value<>'NO'  then
  begin
    BD2.Enabled:=false;
    BD3.Enabled:=false;
    BD4.Enabled:=false;
  end;
  if SGMas.FieldByName('USERID').value<>main.Edit1.text then
  begin
    BD2.Enabled:=false;
    BD3.Enabled:=false;
    BD4.Enabled:=false;
  end;
  if SGMas.cachedupdates then
  begin
    BD2.Enabled:=false;
    BD3.Enabled:=false;
    BD4.Enabled:=false;
  end;
end;

procedure TApplyTotal.FormCreate(Sender: TObject);
begin
  PC1.ActivePageIndex:=0;
  AppDir:=ExtractFilePath(Application.ExeName);
  with query1 do
  begin
      active:=false;
      sql.Clear;
      sql.add('select getdate() as NDate ');
      active:=true;
      NDate:=fieldbyname('NDate').Value;
      active:=false;
  end;
  DTP1.Date:=date-3;
  DTP2.date:=date;
  DTP3.Date:=date-3;
  DTP4.date:=date;
  IsAllowUserID:=false;
  ReadIni();
  if (main.Edit2.Text = 'CDC') and (IsAllowUserID = true) then
  begin
    TS5.TabVisible := true;
  end
  else begin
    TS5.TabVisible := false;
  end;
end;

procedure TApplyTotal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=CaFree;
end;

procedure TApplyTotal.FormDestroy(Sender: TObject);
begin
  ApplyTotal:=nil;
end;

procedure TApplyTotal.BB1Click(Sender: TObject);
begin
  panel2.Visible:=true;
end;

procedure TApplyTotal.BBTT1Click(Sender: TObject);
begin
  ApplyTotalDepName:=TApplyTotalDepName.Create(self);
  ApplyTotalDepName.Show();
end;

procedure TApplyTotal.BB2Click(Sender: TObject);
begin
  with SGMas do
  begin
    requestlive:=true;
    cachedupdates:=true;
    Insert;
    fieldbyname('Budget_chk').Value := 0;
    fieldbyname('Customer_Account').Value := 0;
    fieldbyname('Uniform').Value := 0;
  end;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
  //DBGrid1.Columns[1].ButtonStyle:=cbsEllipsis;
  BBTT1.Visible:=true;
end;

procedure TApplyTotal.BB3Click(Sender: TObject);
begin
  if SGDet.recordcount=0 then
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
      begin
        showmessage('It is not yours,can not delete.');
      end;
    end;
  end else
  begin
    showmessage('Pls delete the Deliver Detail first.')
  end;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
end;

procedure TApplyTotal.BB4Click(Sender: TObject);
begin
  if SGMas.FieldByName('flowflag').Value = 'X' then begin
    showmessage('This document has been canceled');
    exit;
  end;
  with SGMas do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
  //DBGrid1.Columns[1].ButtonStyle:=cbsEllipsis;
  BBTT1.Visible:=true;
end;

procedure TApplyTotal.BB5Click(Sender: TObject);
var y,m,SGNO:string;
    i:integer;
begin
  if (not SGMas.FieldByName('SGDate').IsNull) and (formatdatetime('YYYY/MM/DD',SGMas.FieldByName('SGDate').Value) < formatdatetime('YYYY/MM/DD',Date()) ) then begin
    showmessage('SGDATE cant be earlier than today !');
    exit;
  end;
  with Query1 do
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
          with Query1 do
          begin
            active:=false;
            sql.Clear;
            sql.Add('select SGNO from SGDH where SGNO like '+''''+y+m+'%'+'''');
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
          if  SGMas.FieldByName('SGDate').IsNull then
          SGMas.FieldByName('SGDate').Value:=Date();
          if  SGMas.FieldByName('LB').IsNull then
          SGMas.FieldByName('LB').Value:='01';
          SGMas.FieldByName('GSBH').Value:=main.Edit2.Text;
          SGMas.FieldByName('userID').Value:=main.edit1.text;
          SGMas.FieldByName('userdate').Value:=NDate;
          SGMas.FieldByName('OrderDate').Value:=NDate;
          SGMas.FieldByName('CHKID').Value:='NO';
          SGMas.FieldByName('CFMID').Value:='NO';
          SGMas.FieldByName('CFMID1').Value:='NO';          
          SGMas.FieldByName('YN').Value:='1';
          //SGMas.FieldByName('flowflag').Value:='Z'; //總務申請單沒跑線上審核
          upMas.apply(ukinsert);
        end;
        usmodified:
        begin
          if (SGMas.FieldByName('CHKID').value='NO')    then
          begin
            if SGMas.FieldByName('USERID').value=main.Edit1.Text then
            begin
              if SGMas.fieldbyname('YN').value='0' then
              begin
                {if (SGMas.FieldByName('Flowflag').AsString<>'X') and (trim(SGMas.FieldByName('Flowflag').AsString)<>'') then
                begin
                  Showmessage('Da gui trinh ky, khong the sua !');
                  abort;
                end; }
                with BDelRec do
                begin
                  active:=false;
                  sql.Clear;
                  {sql.add('insert into BDelRec ');
                  sql.add('(TableName ,TNO,CLBH,OldID,DelID,DelDate)');
                  sql.add('values (''SGDH'','''+SGMas.fieldbyname('SGNO').Value+'''');
                  sql.add(','' '','''+SGMas.fieldbyname('USERID').Value+''',');
                  sql.add(''''+main.Edit1.Text+''''+',getdate())');}

                  SQL.Add('UPDATE SGDH SET flowflag = ''X'',Status=''D'' WHERE SGNO = ''' + SGMas.fieldbyname('SGNO').AsString+''' ');
                  
                  execsql;
                  active:=false;
                end;
                //upMas.apply(ukdelete);
              end else
              begin
                if (NDate-SGMas.FieldByName('USERDATE').value)<=30  then
                begin
                 { if (SGMas.FieldByName('Flowflag').AsString<>'X') and (trim(SGMas.FieldByName('Flowflag').AsString)<>'') then
                  begin
                    Showmessage('Da gui trinh ky, khong the sua !');
                    abort;
                  end; }
                  SGMas.edit;
                  SGMas.FieldByName('userID').Value:=main.edit1.text;
                  SGMas.FieldByName('userdate').Value:=Ndate;
                  //if SGMas.FieldByName('flowflag').Value='X' then SGMas.FieldByName('flowflag').Value:='Z';
                  upMas.apply(ukmodify);
                end else
                begin
                  showmessage('Date>30, can not modify.');
                end;
              end;
            end else
            begin
              showmessage('It is not yours, can not modify.');
            end;
          end else
          begin
            showmessage('Already confirm. Can not modify.');
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
  BB5.enabled:=false;
  BB6.enabled:=false;
  //
  //DBGrid1.columns[1].ButtonStyle:=cbsnone;
  BBTT1.Visible:=false;
  showmessage('Succeed.');
  except
    Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
  end;
end;

procedure TApplyTotal.BB6Click(Sender: TObject);
begin
  with SGMas do
  begin
    active:=false;
    requestlive:=false;
    cachedupdates:=false;
    active:=true;
  end;
  BB5.enabled:=false;
  BB6.enabled:=false;
  //
  //DBGrid1.columns[1].ButtonStyle:=cbsnone;
  BBTT1.Visible:=false;
end;

procedure TApplyTotal.BD2Click(Sender: TObject);
begin
 { if (SGMas.FieldByName('Flowflag').AsString<>'X') and (trim(SGMas.FieldByName('Flowflag').AsString)<>'') then
  begin
    Showmessage('Da gui trinh ky, khong the sua !');
    abort;
  end; }
  with SGDet do
  begin
    requestlive:=true;
    cachedupdates:=true;
    insert;
  end;
  //DBGrid2.columns[0].ButtonStyle:=cbsEllipsis;
  BD5.Enabled:=true;
  BD6.Enabled:=true;
  BBTT2.Visible:=true;
  dbgrid4.columns[7].ButtonStyle:=cbsEllipsis;
  dbgrid4.columns[8].ButtonStyle:=cbsEllipsis;
end;

procedure TApplyTotal.BD3Click(Sender: TObject);
begin
 { if (SGMas.FieldByName('Flowflag').AsString<>'X') and (trim(SGMas.FieldByName('Flowflag').AsString)<>'') then
  begin
    Showmessage('Da gui trinh ky, khong the sua !');
    abort;
  end;  }
  with SGDet do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;                                                                         
    fieldbyname('YN').Value:='0';
  end;
  BD5.Enabled:=true;
  BD6.Enabled:=true;
end;

procedure TApplyTotal.BD4Click(Sender: TObject);
begin
  if SGMas.FieldByName('flowflag').Value = 'X' then begin
    showmessage('This document has been canceled');
    exit;
  end;
  {if (SGMas.FieldByName('Flowflag').AsString<>'X') and (trim(SGMas.FieldByName('Flowflag').AsString)<>'') then
  begin
    Showmessage('Da gui trinh ky, khong the sua !');
    abort;
  end; }
  with SGDet do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
  BD5.Enabled:=true;
  BD6.Enabled:=true;
  BBTT2.Visible:=true;
  dbgrid4.columns[7].ButtonStyle:=cbsEllipsis;
  dbgrid4.columns[8].ButtonStyle:=cbsEllipsis;  
end;

procedure TApplyTotal.BD5Click(Sender: TObject);
var i:integer;
begin
  if (SGMas.FieldByName('CFMID').value<>'NO') or (SGMas.FieldByName('CHKID').value<>'NO')   then
  begin
    showmessage('Already confirm. Can not modify.');
    exit;
  end;
//  if (SGMas.FieldByName('Budget_chk').Value = True) and (SGDet.FieldByName('YM').value = Null) then begin
  if (SGMas.FieldByName('Budget_chk').Value = True) then begin
    SGDet.First;
    while not SGDet.Eof do begin
      if (SGDet.FieldByName('CLBH').Value <> Null) and (SGDet.FieldByName('YM').value = Null) then begin
        showmessage('Please select which Capex item.');
        exit;
      end;
      SGDet.Next;
    end;
  end;

  with SGDet do
  begin
    first;
    while not SGDet.Eof do
    begin
      if SGDet.FieldByName('YQdate').IsNull=true then
      begin
        showmessage('Please Fill YQDate !');
        exit;
      end
      else if SGMas.FieldByName('SGDate').Value > SGDet.FieldByName('YQdate').Value then
      begin
        showmessage('SGDate must be less than YQDate !');
        exit;
      end;

      if SGDet.FieldByName('Qty').IsNull  then
      begin
          edit;
          SGDet.FieldByName('Qty').value:=0;
      end;
      Next;
    end;
  end;
  try
    SGDet.first;
    for i:=1 to SGDet.RecordCount do
    begin
      case SGDet.updatestatus of
        usinserted:
        begin
          if SGMas.FieldByName('USERID').value<>main.Edit1.Text then
          begin
            showmessage('khong phai ban khong duoc tu sua');
          end else
          begin
            if SGDet.fieldbyname('CLBH').isnull then
            begin
              SGDet.delete;
            end else
            begin
              SGDet.edit;
              SGDet.fieldbyname('SGNO').Value:=SGMas.fieldbyname('SGNO').Value;
              SGDet.fieldbyname('SGQty').Value:=SGDet.fieldbyname('Qty').Value;
              if SGDet.FieldByName('YQdate').IsNull=true then
              SGDet.FieldByName('YQdate').Value:=Date()+14;
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
             showmessage('khong phai ban khong duoc tu sua');
           end else
           begin
              if SGDet.fieldbyname('YN').value='0'then
              begin
                 with BDelRec do
                 begin
                   active:=false;
                   sql.Clear;
                   sql.add('insert into BDelRec ');
                   sql.add('(TableName ,TNO,CLBH,OldID,DelID,DelDate)');
                   sql.add('values (''SGDHS'','''+SGMas.fieldbyname('SGNO').Value+'''');
                   sql.add(','' '','''+SGMas.fieldbyname('USERID').Value+''',');
                   sql.add(''''+main.Edit1.Text+''''+',getdate())');
                   execsql;
                   active:=false;
                 end;
                 UpDet.apply(ukdelete);
              end else
              begin
                 if (NDate-SGMas.FieldByName('USERDATE').value)<=14  then
                 begin
                   SGDet.edit;
                   SGDet.fieldbyname('SGQty').Value:=SGDet.fieldbyname('Qty').Value;
                   SGDet.FieldByName('userID').Value:=main.edit1.text;
                   SGDet.FieldByName('userdate').Value:=Ndate;
                   SGDet.FieldByName('YN').Value:='1';
                   upDet.apply(ukmodify);
                 end else
                 begin
                   showmessage('Date>14, can not modify.');
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
    BD5.Enabled:=false;
    BD6.Enabled:=false;
    BBTT2.Visible:=false;
    DBGrid4.columns[7].ButtonStyle:=cbsNone;
    DBGrid4.columns[8].ButtonStyle:=cbsNone;
    Showmessage('Succeed.');
  except
    Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
  end;

end;

procedure TApplyTotal.PC1Change(Sender: TObject);
var CWHL,Sdate,Edate,yyyy,mm:String;
begin
 if PC1.ActivePage = TS3 then
 begin
    panel1.Visible := True;
    panel6.Visible := false;
    panel8.Visible := false;
 end
 else if PC1.ActivePage=TS4 then
  begin
    panel6.visible:=true;
    panel1.visible:=false;
    panel8.Visible := false;
   if SGMas.IsEmpty then exit;
   if SGMas.FieldByName('Budget_chk').Value = True then begin
     Button3.Enabled := true;
     Button3.Font.Color := clRed;
   end
   else
     Button3.Enabled := false;
   Label5.Caption := SGMas.fieldbyname('DEPID').AsString;
   DTP1.Date:=startofthemonth(SGMas.FieldByName('SGDate').Value);
   DTP2.date:=endofthemonth(SGMas.FieldByName('SGDate').Value);
   Sdate := formatdatetime('YYYY/MM/DD',DTP1.Date);
   Edate := formatdatetime('YYYY/MM/DD',DTP2.Date);
   yyyy := formatdatetime('yyyy',DTP1.Date);
   mm := formatdatetime('MM',DTP1.Date);

   with Query1 do
   begin
     Active := false;
     SQL.Clear;
     SQL.Add('select CAST(CWHL as int) as CWHL from CWHLS where CWHLS.HLDAY=''01'' and CWHLS.HLMONTH='+formatdatetime('MM',DTP1.Date)+' and CWHLS.HLYEAR='+formatdatetime('YYYY',DTP1.Date)+' ');
     Active := true;
     if isEmpty then begin
       Active := false;
       SQL.Clear;
       if formatdatetime('MM',DTP1.Date-1) <> '12' then
         SQL.Add('select CAST(CWHL as int) as CWHL from CWHLS where CWHLS.HLDAY=''01'' and CWHLS.HLMONTH='+formatdatetime('MM',DTP1.Date-1)+' and CWHLS.HLYEAR='+formatdatetime('YYYY',DTP1.Date)+' ')
       else
         SQL.Add('select CAST(CWHL as int) as CWHL from CWHLS where CWHLS.HLDAY=''01'' and CWHLS.HLMONTH='+formatdatetime('MM',DTP1.Date-1)+' and CWHLS.HLYEAR='+formatdatetime('YYYY',DTP1.Date-1)+' ');
       Active := true;
       CWHL := fields[0].AsString;
     end
     else
       CWHL := fields[0].AsString;
   end;

   with Query1 do begin
     Active := false;
     SQL.Clear;
     SQL.Add('Select isnull(CAST(Sum(Acc)/'+CWHL+' as decimal(10,2)),0) as USACC,isnull(Budget,0) as Budget from ( ');
//     if SGMas.FieldByName('LB').AsString = '03' then
//       SQL.Add('	select SGDHS.SGNO, SGDH.DepID,  case when SGDHS.USPrice is null then isnull(SGDHS.VNPrice*Qty,0) else isnull(CWHLS.CWHL*SGDHS.USPrice*Qty,0) end as ACC,Budget_S as Budget')
//     else
//       SQL.Add('	select SGDHS.SGNO, SGDH.DepID,  case when SGDHS.USPrice is null then isnull(SGDHS.VNPrice*Qty,0) else isnull(CWHLS.CWHL*SGDHS.USPrice*Qty,0) end as ACC,Budget_B as Budget');
     SQL.Add('	select SGDHS.SGNO, SGDH.DepID,  case when SGDHS.USPrice is null then isnull(SGDHS.VNPrice*Qty,0) else isnull(CWHLS.CWHL*SGDHS.USPrice*Qty,0) end as ACC,Budget');
     SQL.Add('	from SGDHS ');
     SQL.Add('	left join SGDH on SGDH.SGNO=SGDHS.SGNO ');
     SQL.Add('	left join CWHLS on CWHLS.HLDAY=''01'' and CWHLS.HLMONTH=MONTH(GETDATE()) and CWHLS.HLYEAR=YEAR(GETDATE()) ');
     SQL.add('	left join SGDH_Budget on SGDH_Budget.ID=SGDH.DepID and SGDH_Budget.YM = '''+yyyy+''' and SGDH_Budget.Season = '''+mm+'''');

     SQL.Add('	where isnull(SGDH.flowflag,'''') <> ''X'' and isnull(Budget_chk,0) <> 1 and isnull(Customer_Account,0) <> 1 and isnull(UniForm,0) <> 1 ');
//     if SGMas.FieldByName('LB').AsString = '03' then
//       SQL.Add('    and SGDH.LB = '''+SGMas.FieldByName('LB').AsString+'''')
//     else
//       SQL.Add('    and SGDH.LB <> ''03''');
     SQL.Add('		  and convert(smalldatetime,convert(varchar,SGDH.SGDate,111)) between ');
     SQL.add('          '''+Sdate+''' and '''+Edate+''' ');
     SQL.Add('    and SGDH.DepID = '''+SGMas.FieldByName('DepID').AsString+'''');
     SQL.add('		  ) SGDH ');
     SQL.add('	Group by Budget ');
 //    showmessage(SQL.Text);
     Active := true;
   end;
   if not Query1.IsEmpty then begin
     Label6.Caption := copy(Sdate,1,7)+' Purchased :'+ Query1.fieldbyname('USACC').AsString + ' , Budget :' + Query1.fieldbyname('Budget').AsString;
     if Query1.fieldbyname('USACC').Value > Query1.fieldbyname('Budget').Value then
       Label6.Font.Color := clred
     else
       Label6.Font.Color := clblack;
   end
   else
     Label6.Caption := copy(Sdate,1,7)+' Purchased :0 ';

  end else
  begin
    panel6.visible:=false;
    panel1.visible:=false;
    panel8.Visible := true;
  end;
end;

procedure TApplyTotal.BBTT2Click(Sender: TObject);
begin
  if SGDet.State in [DsInsert,DsEdit] then begin
    ApplyTotalMatNo:=TApplyTotalMatNo.Create(self);
    ApplyTotalMatNo.Show();
  end;
end;

procedure TApplyTotal.BD6Click(Sender: TObject);
begin
  with SGDet do
  begin
    active:=false;
    requestlive:=false;
    cachedupdates:=false;
    active:=true;
  end;
  BD5.Enabled:=false;
  BD6.Enabled:=false;
  BBTT2.Visible:=false;
  DBGrid4.columns[7].ButtonStyle:=cbsNone;
  DBGrid4.columns[8].ButtonStyle:=cbsNone;
end;

procedure TApplyTotal.bbt6Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin
  if  SGMas.active  then
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
        for   i:=0   to   SGMas.fieldcount-1   do
          begin
              eclApp.Cells(1,i+1):=SGMas.fields[i].FieldName;
          end;

        SGMas.First;
        j:=2;
        while   not   SGMas.Eof   do
          begin
            for   i:=0   to  SGMas.fieldcount-1  do
            begin
              eclApp.Cells(j,i+1):=SGMas.Fields[i].Value;
            end;
          SGMas.Next;
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

procedure TApplyTotal.BTD7Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin
  if  SGDet.active  then
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
        for   i:=0   to   SGDet.fieldcount-1   do
          begin
              eclApp.Cells(1,i+1):=SGDet.fields[i].FieldName;
          end;

        SGDet.First;
        j:=2;
        while   not   SGDet.Eof   do
          begin
            for   i:=0   to  SGDet.fieldcount-1  do
            begin
              eclApp.Cells(j,i+1):=SGDet.Fields[i].Value;
            end;
          SGDet.Next;
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

procedure TApplyTotal.DBGrid3DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if SGMas.FieldByName('YN').value='0' then
  begin
    dbgrid3.canvas.font.color:=clred;
    dbgrid3.defaultdrawcolumncell(rect,datacol,column,state);
  end;
end;

procedure TApplyTotal.dbgrid4DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if SGDet.FieldByName('YN').value='0' then
  begin
    dbgrid4.canvas.font.color:=clred;
    dbgrid4.defaultdrawcolumncell(rect,datacol,column,state);
  end;
end;

procedure TApplyTotal.BDT5Click(Sender: TObject);
begin
  if (SGMas.FieldByName('CFMID1').AsString='NO') and (copy(main.Edit2.Text,1,3) <> 'VDX') then
  begin
    Showmessage('Chua Confirm ,khong duoc in ra,Not yet confirm can''t print ');
    Exit;
  end;
  ApplyTotal_Print:=TApplyTotal_Print.Create(self);
  ApplyTotal_Print.quickrep2.prepare;
  ApplyTotal_Print.Qpage1.caption:=inttostr(ApplyTotal_Print.QuickRep2.QRPrinter.pagecount);
  ApplyTotal_Print.quickrep2.preview;
  ApplyTotal_Print.free;
  if (copy(main.Edit2.Text,1,3) = 'VDX') then begin
    Query1.Active := false;
    Query1.SQL.Clear;
    Query1.SQL.Add('Update SGDH set flowflag = ''Z'' where sgno = '''+SGMas.FieldByName('SGNO').AsString+'''');
    Query1.ExecSQL;
  end;
end;


procedure TApplyTotal.BTD6Click(Sender: TObject);
  //
  function GetExcelColumnID(i:integer):string;
  var str:string;
  begin
    case i of
      1:str:='A';  2:str:='B';  3:str:='C';
      4:str:='D';  5:str:='E';  6:str:='F';
      7:str:='G';  8:str:='H';  9:str:='I';
      10:str:='J';  11:str:='K';  12:str:='L';
      13:str:='M';  14:str:='N';  15:str:='O';
      16:str:='P';  17:str:='Q';  18:str:='R';
      19:str:='S';  20:str:='T';  21:str:='U';
      22:str:='V';  23:str:='W';  24:str:='X';
      25:str:='Y';  26:str:='Z';  27:str:='AA';
      28:str:='AB';  29:str:='AC';  30:str:='AD';
      31:str:='AE';  32:str:='AF';  33:str:='AG';
      34:str:='AH';  35:str:='AI';  36:str:='AJ';
    end;
    result:=str;
  end;
var eclApp,WorkBook:olevariant;
    i,j:integer;
    TKHWI001,ISO,Memo:string;
begin
  if SGMas.FieldByName('CFMID1').AsString='NO' then
  begin
    Showmessage('Chua Confirm ,khong duoc in ra,Not yet confirm can''t print ');
    Exit;
  end;
  if  SGDet.active  then
  begin
    if(not DirectoryExists(AppDir+'Additional\'))  then ForceDirectories(AppDir+'Additional\');
    if SGMas.FieldByName('LB').AsString='01' then
    begin
      TKHWI001:='Additional\T-KH-WI001-01C.xls';
      ISO:='T-KH-WI001-01C';
      CopyFile(Pchar('\\'+main.ServerIP+'\liy_erp\'+TKHWI001),Pchar(AppDir+TKHWI001),false);
    end else if SGMas.FieldByName('LB').AsString='02' then
    begin
      TKHWI001:='Additional\T-KH-WI001-02C.xls';
      ISO:='T-KH-WI001-02C';
      CopyFile(Pchar('\\'+main.ServerIP+'\liy_erp\'+TKHWI001),Pchar(AppDir+TKHWI001),false);
    end;
    if FileExists(AppDir+TKHWI001) then
    begin
    try
      eclApp:=CreateOleObject('Excel.Application');
      eclApp.DisplayAlerts := False;
      WorkBook:=CreateOleObject('Excel.Sheet');
    except
      Application.MessageBox('No Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
      Exit;
    end;
    try
      eclApp.WorkBooks.Open(AppDir+TKHWI001);
      eclApp.WorkSheets[1].Activate;
      eclApp.Cells(1, 1) := '=SUBSTITUTE(SUBSTITUTE(J1,"MM","'+FormatDatetime('MM',SGMas.FieldByName('SGDate').Value)+'"),"YYYY","'
                            +FormatDatetime('YYYY',SGMas.FieldByName('SGDate').Value)+'")';
      eclApp.Cells(2, 1) := '=SUBSTITUTE(SUBSTITUTE(J2,"MM","'+FormatDatetime('MM',SGMas.FieldByName('SGDate').Value)+'"),"YYYY","'
                            +FormatDatetime('YYYY',SGMas.FieldByName('SGDate').Value)+'")';
      eclApp.Cells(4, 3) := SGMas.FieldByName('DepName').AsString+#13#10+SGMas.FieldByName('DepMemo').AsString;
      eclApp.Cells(4, 8) := 'NO: '+SGMas.FieldByName('SGNO').AsString;
      //
      j:=7;
      SGDet.First;
      for i:=1 to  SGDet.RecordCount do
      begin
        eclApp.ActiveSheet.Rows[j].Insert(-4121);
        eclApp.ActiveSheet.Range['B'+inttostr(j)+':C'+inttostr(j)].Merge;
        //
        eclApp.Cells(j,1):=inttostr(i);
        eclApp.Cells(j,2):=trim(SGDet.FieldByName('YWPM').AsString)+#13#10+trim(SGDet.FieldByName('ZWPM').AsString);
        eclApp.Cells[j,2].WrapText := True;
        eclApp.Cells(j,5):=SGDet.FieldByName('DWBH').AsString;
        if  SGDet.FieldByName('ACCVN').AsString<>'' then
          eclApp.Cells(j,6):=SGDet.FieldByName('VNPrice').AsString
        else
          eclApp.Cells(j,6):=SGDet.FieldByName('USPrice').AsString+' ''USD''';
        eclApp.Cells(j,7):=SGDet.FieldByName('Qty').AsString;
        //if  SGDet.FieldByName('ACCVN').AsString<>'' then
        //  eclApp.Cells(j,8):=SGDet.FieldByName('ACCVN').AsString
        //else
        //  eclApp.Cells(j,8):=SGDet.FieldByName('ACCUS').AsString+' ''USD''';
        eclApp.Cells(j,8):=SGDet.FieldByName('ACC').AsString;
        SGDet.Next;
        Inc(j);
      end;
      eclApp.ActiveSheet.Rows[j].Delete(-4121);
      //加總備註
      eclApp.Cells[j,8].Formula:='=SUM(H7:H'+inttostr(j-1)+')';
      with Query1 do
      begin
        Active:=false;
        SQL.Clear;
        SQL.Add('Select SGDH.DepID,Convert(varchar,Year(SGDH.SGDate))+''/''+Convert(varchar,Month(SGDH.SGDate)) as sYM, Sum(SGDHS.VNPrice*SGDHS.Qty) as VNACC, Sum(SGDHS.USPrice*SGDHS.Qty) as USACC');
        SQL.Add('from SGDHS  ');
        SQL.Add('left join SGDH on SGDH.SGNO=SGDHS.SGNO');
        SQL.Add('where SGDH.DepID='''+SGMas.FieldByName('DepID').AsString+'''  and SGDH.Memo like ''%DU TINH DAT MUA VAN PHONG  PHAM%'' ');
        SQL.Add('   and SGDH.SGDate < (select SGDH.SGDate from SGDH where  SGNO='''+SGMas.FieldByName('SGNO').AsString+''' )  and SGDH.SGDate >= (select SGDH.SGDate-90 from SGDH where  SGNO='''+SGMas.FieldByName('SGNO').AsString+''' )');
        SQL.Add('Group by SGDH.DepID,Convert(varchar,Year(SGDH.SGDate))+''/''+Convert(varchar,Month(SGDH.SGDate)) ');
        SQL.Add('order by Convert(varchar,Year(SGDH.SGDate))+''/''+Convert(varchar,Month(SGDH.SGDate)) ');
        Active:=true;
        Memo:='費用統計'+#13#10;
        while not eof do
        begin
          Memo:=Memo+FieldByName('sYM').AsString+':'+FieldByName('VNACC').AsString+#13#10;
          Next;
        end;
        Active:=false;
      end;
      eclApp.Cells[j,9].Formula:=trim(Memo);
      eclApp.Cells[J+5,8].Formula:=ISO;
      //
      showmessage('Succeed');
      eclApp.Visible:=True;
    except
      on  F:Exception   do
         Showmessage(F.Message);
      end;
    end;
  end;
  //
end;

procedure TApplyTotal.SGDetCalcFields(DataSet: TDataSet);
begin
  with SGDet do
  begin
    if FieldByName('USPrice').value<>0 then
    begin
      FieldByName('ACCUS').value:=FieldByName('Qty').value*FieldByName('USPrice').value;
    end;
    if FieldByName('VNPrice').value<>0 then
    begin
      FieldByName('ACCVN').value:=FieldByName('Qty').value*FieldByName('VNPrice').value;
    end;
  end;
end;

procedure TApplyTotal.DBGrid3DblClick(Sender: TObject);
begin
  if  SGMas.Active then
  begin
    if  (SGMas.recordcount>0) then
      begin
        PC1.ActivePage:=TS4;
        panel1.Visible:=false;
        panel6.Visible:=true;
      end;
  end;
end;

procedure TApplyTotal.dbgrid4EditButtonClick(Sender: TObject);
begin
  if (dbgrid4.Selectedfield.fieldname='USPrice') or (dbgrid4.Selectedfield.fieldname='VNPrice') then
  begin
    if not SGDet.FieldByName('CLBH').IsNull then
    begin
      ApplyPurTotal_BJ:=TApplyPurTotal_BJ.create(self);
      ApplyPurTotal_BJ.Edit1.Text:=SGDet.fieldbyname('CLBH').Value;
      ApplyPurTotal_BJ.show;
    end;
  end;
end;

procedure TApplyTotal.SGMasAfterScroll(DataSet: TDataSet);
begin
  if (SGMas.FieldByName('flowflag').AsString<>'')   then
  begin
    BB3.Enabled:=false;
    BB4.Enabled:=false;
  end else
  begin
    BB3.Enabled:=true;
    BB4.Enabled:=true;
  end;
  if(SGMas.FieldByName('flowflag').AsString='X') then
  begin
    BB3.Enabled:=true;
    BB4.Enabled:=true;
  end;
end;

procedure TApplyTotal.Button2Click(Sender: TObject);
begin
  with QryTotal do
  begin
      active:=false;
      sql.Clear;
      sql.add('select SGDHS.CLBH,MAX(SGDHS.USPrice) AS USPrice,MAX(SGDHS.VNPrice) AS VNPrice,MAX(CLZL.YWPM) AS YWPM,MAX(CLZL.ZWPM) AS ZWPM,');
      sql.add('MAX(CLZL.dwbh) AS dwbh, MAX(LBZLS.ZWSM) AS ZWSM,MAX(SGDH.LB) AS LB,MAX(SGDH.DepID) AS DepID,');
      //=======================================Tach Qty ra theo thang
      sql.add('    SUM(CASE WHEN MONTH(SGDH.SGDate) = 1 THEN Qty ELSE 0 END) AS Qty1,');
      sql.add('    SUM(CASE WHEN MONTH(SGDH.SGDate) = 2 THEN Qty ELSE 0 END) AS Qty2,');
      sql.add('    SUM(CASE WHEN MONTH(SGDH.SGDate) = 3 THEN Qty ELSE 0 END) AS Qty3,');
      sql.add('    SUM(CASE WHEN MONTH(SGDH.SGDate) = 4 THEN Qty ELSE 0 END) AS Qty4,');
      sql.add('    SUM(CASE WHEN MONTH(SGDH.SGDate) = 5 THEN Qty ELSE 0 END) AS Qty5,');
      sql.add('    SUM(CASE WHEN MONTH(SGDH.SGDate) = 6 THEN Qty ELSE 0 END) AS Qty6,');
      sql.add('    SUM(CASE WHEN MONTH(SGDH.SGDate) = 7 THEN Qty ELSE 0 END) AS Qty7,');
      sql.add('    SUM(CASE WHEN MONTH(SGDH.SGDate) = 8 THEN Qty ELSE 0 END) AS Qty8,');
      sql.add('    SUM(CASE WHEN MONTH(SGDH.SGDate) = 9 THEN Qty ELSE 0 END) AS Qty9,');
      sql.add('    SUM(CASE WHEN MONTH(SGDH.SGDate) = 10 THEN Qty ELSE 0 END) AS Qty10,');
      sql.add('    SUM(CASE WHEN MONTH(SGDH.SGDate) = 11 THEN Qty ELSE 0 END) AS Qty11,');
      sql.add('    SUM(CASE WHEN MONTH(SGDH.SGDate) = 12 THEN Qty ELSE 0 END) AS Qty12,');
      //=======================================Tach ACCVN ra theo thang
      sql.add('    SUM(CASE WHEN MONTH(SGDH.SGDate) = 1 THEN CASE WHEN SGDHS.VNPrice IS NULL THEN 0 ELSE Qty * VNPrice END ELSE 0 END) AS ACCVN1,');
      sql.add('    SUM(CASE WHEN MONTH(SGDH.SGDate) = 2 THEN CASE WHEN SGDHS.VNPrice IS NULL THEN 0 ELSE Qty * VNPrice END ELSE 0 END) AS ACCVN2,');
      sql.add('    SUM(CASE WHEN MONTH(SGDH.SGDate) = 3 THEN CASE WHEN SGDHS.VNPrice IS NULL THEN 0 ELSE Qty * VNPrice END ELSE 0 END) AS ACCVN3,');
      sql.add('    SUM(CASE WHEN MONTH(SGDH.SGDate) = 4 THEN CASE WHEN SGDHS.VNPrice IS NULL THEN 0 ELSE Qty * VNPrice END ELSE 0 END) AS ACCVN4,');
      sql.add('    SUM(CASE WHEN MONTH(SGDH.SGDate) = 5 THEN CASE WHEN SGDHS.VNPrice IS NULL THEN 0 ELSE Qty * VNPrice END ELSE 0 END) AS ACCVN5,');
      sql.add('    SUM(CASE WHEN MONTH(SGDH.SGDate) = 6 THEN CASE WHEN SGDHS.VNPrice IS NULL THEN 0 ELSE Qty * VNPrice END ELSE 0 END) AS ACCVN6,');
      sql.add('    SUM(CASE WHEN MONTH(SGDH.SGDate) = 7 THEN CASE WHEN SGDHS.VNPrice IS NULL THEN 0 ELSE Qty * VNPrice END ELSE 0 END) AS ACCVN7,');
      sql.add('    SUM(CASE WHEN MONTH(SGDH.SGDate) = 8 THEN CASE WHEN SGDHS.VNPrice IS NULL THEN 0 ELSE Qty * VNPrice END ELSE 0 END) AS ACCVN8,');
      sql.add('    SUM(CASE WHEN MONTH(SGDH.SGDate) = 9 THEN CASE WHEN SGDHS.VNPrice IS NULL THEN 0 ELSE Qty * VNPrice END ELSE 0 END) AS ACCVN9,');
      sql.add('    SUM(CASE WHEN MONTH(SGDH.SGDate) = 10 THEN CASE WHEN SGDHS.VNPrice IS NULL THEN 0 ELSE Qty * VNPrice END ELSE 0 END) AS ACCVN10,');
      sql.add('    SUM(CASE WHEN MONTH(SGDH.SGDate) = 11 THEN CASE WHEN SGDHS.VNPrice IS NULL THEN 0 ELSE Qty * VNPrice END ELSE 0 END) AS ACCVN11,');
      sql.add('    SUM(CASE WHEN MONTH(SGDH.SGDate) = 12 THEN CASE WHEN SGDHS.VNPrice IS NULL THEN 0 ELSE Qty * VNPrice END ELSE 0 END) AS ACCVN12,');
      //=======================================Tach ACCUS ra theo thang
      sql.add('    SUM(CASE WHEN MONTH(SGDH.SGDate) = 1 THEN CASE WHEN SGDHS.USPrice IS NULL THEN 0 ELSE Qty * USPrice END ELSE 0 END) AS ACCUS1,');
      sql.add('    SUM(CASE WHEN MONTH(SGDH.SGDate) = 2 THEN CASE WHEN SGDHS.USPrice IS NULL THEN 0 ELSE Qty * USPrice END ELSE 0 END) AS ACCUS2,');
      sql.add('    SUM(CASE WHEN MONTH(SGDH.SGDate) = 3 THEN CASE WHEN SGDHS.USPrice IS NULL THEN 0 ELSE Qty * USPrice END ELSE 0 END) AS ACCUS3,');
      sql.add('    SUM(CASE WHEN MONTH(SGDH.SGDate) = 4 THEN CASE WHEN SGDHS.USPrice IS NULL THEN 0 ELSE Qty * USPrice END ELSE 0 END) AS ACCUS4,');
      sql.add('    SUM(CASE WHEN MONTH(SGDH.SGDate) = 5 THEN CASE WHEN SGDHS.USPrice IS NULL THEN 0 ELSE Qty * USPrice END ELSE 0 END) AS ACCUS5,');
      sql.add('    SUM(CASE WHEN MONTH(SGDH.SGDate) = 6 THEN CASE WHEN SGDHS.USPrice IS NULL THEN 0 ELSE Qty * USPrice END ELSE 0 END) AS ACCUS6,');
      sql.add('    SUM(CASE WHEN MONTH(SGDH.SGDate) = 7 THEN CASE WHEN SGDHS.USPrice IS NULL THEN 0 ELSE Qty * USPrice END ELSE 0 END) AS ACCUS7,');
      sql.add('    SUM(CASE WHEN MONTH(SGDH.SGDate) = 8 THEN CASE WHEN SGDHS.USPrice IS NULL THEN 0 ELSE Qty * USPrice END ELSE 0 END) AS ACCUS8,');
      sql.add('    SUM(CASE WHEN MONTH(SGDH.SGDate) = 9 THEN CASE WHEN SGDHS.USPrice IS NULL THEN 0 ELSE Qty * USPrice END ELSE 0 END) AS ACCUS9,');
      sql.add('    SUM(CASE WHEN MONTH(SGDH.SGDate) = 10 THEN CASE WHEN SGDHS.USPrice IS NULL THEN 0 ELSE Qty * USPrice END ELSE 0 END) AS ACCUS10,');
      sql.add('    SUM(CASE WHEN MONTH(SGDH.SGDate) = 11 THEN CASE WHEN SGDHS.USPrice IS NULL THEN 0 ELSE Qty * USPrice END ELSE 0 END) AS ACCUS11,');
      sql.add('    SUM(CASE WHEN MONTH(SGDH.SGDate) = 12 THEN CASE WHEN SGDHS.USPrice IS NULL THEN 0 ELSE Qty * USPrice END ELSE 0 END) AS ACCUS12');
      //=======================================
      sql.add('from SGDHS');
      sql.add('left join SGDH on SGDH.SGNO=SGDHS.SGNO');
      sql.add('left join CLZL on CLZL.CLDH = SGDHS.CLBH');
      sql.add('Left join CGBJ on CGBJ.BJNO=SGDHS.BJNO');
      sql.add('left join ZSZL on ZSZL.ZSDH = CGBJ.ZSBH');
      sql.add('Left join LBZLS on LBZLS.LBDH=CLZL.dwbh and LBZLS.LB=''02'' ');
      sql.add('left join CWHLS on CWHLS.HLDAY=''01'' and CWHLS.HLMONTH=MONTH(GETDATE()) and CWHLS.HLYEAR=YEAR(GETDATE()) ');
      sql.add('where SGDH.flowflag = ''Z'' ');
      SQL.Add('and convert(smalldatetime,convert(varchar,SGDH.SGDate,111)) between ');
      SQL.add(''''+formatdatetime('yyyy/MM/dd',DTP3.Date) +'''');
      SQL.add(' and ');
      SQL.add(''''+formatdatetime('yyyy/MM/dd',DTP4.Date) +'''');
      SQL.Add('and SGDH.GSBH='''+main.Edit2.Text+''' ');
      sql.add('and ISNULL(SGDH.Status,'''')<>''D'' and SGDH.LB not in (''09'',''05'') ');
      if Edit2.text<>'' then
      begin
        sql.add('and SGDHS.SGNO like ''%' + Edit2.text + '%'' ');
      end;
      if Edit3.text<>'' then
      begin
        sql.add('and SGDHS.CLBH like ''%' + Edit3.text + '%'' ');
      end;
      if (rdCD12.Checked) then
      begin
        sql.add('and SGDH.DepID = ''CD12'' ');
      end;
      if (rdCD1207.Checked) then
      begin
        sql.add('and SGDH.DepID = ''CD1207'' ');
      end;
      sql.add('group by SGDHS.CLBH');
      sql.add('order by SGDHS.CLBH');
      //showmessage(sql.Text);
      active:=true;
  end;
end;

procedure TApplyTotal.BitBtn1Click(Sender: TObject);
begin
  panel7.Visible:=true;
end;

procedure TApplyTotal.BitBtn12Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j,k:integer;
    cellRange: OleVariant;
begin
    if QryTotal.Active then
    begin
      if QryTotal.recordcount=0 then
      begin
      showmessage('No record.');
      abort;
      end;
    end else
    begin
      showmessage('No record.');
      abort;
    end;
    //
    if(not DirectoryExists(AppDir+'Additional\'))  then ForceDirectories(AppDir+'Additional\');
      CopyFile(Pchar('\\'+main.ServerIP+'\liy_erp\Additional\Purchase_SN2151_TotalReport.xlsx'),Pchar(AppDir+'Additional\Purchase_SN2151_TotalReport.xlsx'),false);
      if FileExists(AppDir+'Additional\Purchase_SN2151_TotalReport.xlsx') then
      begin
        try
          eclApp:=CreateOleObject('Excel.Application');
          eclApp.DisplayAlerts := False;
          WorkBook:=CreateOleObject('Excel.Sheet');
        except
          Application.MessageBox('No Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
          Exit;
        end;
        try
          eclApp.WorkBooks.Open(AppDir+'Additional\Purchase_SN2151_TotalReport.xlsx');
          eclApp.WorkSheets[1].Activate;
          j:=3;
          QryTotal.First;
          for i:=1 to QryTotal.RecordCount do
          begin
            //=================================================================================
            eclApp.Cells(j,1):=QryTotal.FieldByName('LB').Value;                                                                                            //A
            eclApp.Cells(j,2):=QryTotal.FieldByName('CLBH').Value;                                                                                          //B
            eclApp.Cells(j,3):=QryTotal.FieldByName('YWPM').Value;                                                                                          //C
            eclApp.Cells(j,4):=QryTotal.FieldByName('ZWPM').Value;                                                                                          //D
            eclApp.Cells(j,5):=QryTotal.FieldByName('DWBH').Value;                                                                                          //E
            eclApp.Cells(j,6):=QryTotal.FieldByName('USPrice').Value;                                                                                       //F
            eclApp.Cells[j,7]:=QryTotal.FieldByName('VNPrice').Value;                                                                                       //G
            eclApp.Cells[j,8]:=QryTotal.FieldByName('Qty1').Value;                                                                                          //H
            eclApp.Cells(j,9):=QryTotal.FieldByName('ACCVN1').Value;                                                                                        //I
            eclApp.Cells(j,10):=QryTotal.FieldByName('ACCUS1').Value;                                                                                       //J
            eclApp.Cells[j,11]:=QryTotal.FieldByName('Qty2').Value;                                                                                         //K
            eclApp.Cells[j,12]:=QryTotal.FieldByName('ACCVN2').Value;                                                                                       //L
            eclApp.Cells(j,13):=QryTotal.FieldByName('ACCUS2').Value;                                                                                       //M
            eclApp.Cells(j,14):=QryTotal.FieldByName('Qty3').Value;                                                                                         //N
            eclApp.Cells(j,15):=QryTotal.FieldByName('ACCVN3').Value;                                                                                       //O
            eclApp.Cells[j,16]:=QryTotal.FieldByName('ACCUS3').Value;                                                                                       //P
            eclApp.Cells[j,17]:=QryTotal.FieldByName('Qty4').Value;                                                                                         //Q
            eclApp.Cells[j,18]:=QryTotal.FieldByName('ACCVN4').Value;                                                                                       //R
            eclApp.Cells(j,19):=QryTotal.FieldByName('ACCUS4').Value;                                                                                       //S
            eclApp.Cells(j,20):=QryTotal.FieldByName('Qty5').Value;                                                                                         //T
            eclApp.Cells[j,21]:=QryTotal.FieldByName('ACCVN5').Value;                                                                                       //U
            eclApp.Cells(j,22):=QryTotal.FieldByName('ACCUS5').Value;                                                                                       //V
            eclApp.Cells[j,23]:=QryTotal.FieldByName('Qty6').Value;                                                                                         //W
            eclApp.Cells(j,24):=QryTotal.FieldByName('ACCVN6').Value;                                                                                       //X
            eclApp.Cells[j,25]:=QryTotal.FieldByName('ACCUS6').Value;                                                                                       //Y
            eclApp.Cells[j,26]:=QryTotal.FieldByName('Qty7').Value;                                                                                         //Z
            eclApp.Cells(j,27):=QryTotal.FieldByName('ACCVN7').Value;                                                                                       //AA
            eclApp.Cells[j,28]:=QryTotal.FieldByName('ACCUS7').Value;                                                                                       //AB
            eclApp.Cells[j,29]:=QryTotal.FieldByName('Qty8').Value;                                                                                         //AC
            eclApp.Cells(j,30):=QryTotal.FieldByName('ACCVN8').Value;                                                                                       //AD
            eclApp.Cells(j,31):=QryTotal.FieldByName('ACCUS8').Value;                                                                                       //AE
            eclApp.Cells(j,32):=QryTotal.FieldByName('Qty9').Value;                                                                                         //AF
            eclApp.Cells[j,33]:=QryTotal.FieldByName('ACCVN9').Value;                                                                                       //AG
            eclApp.Cells(j,34):=QryTotal.FieldByName('ACCUS9').Value;                                                                                       //AH
            eclApp.Cells(j,35):=QryTotal.FieldByName('Qty10').Value;                                                                                        //AI
            eclApp.Cells(j,36):=QryTotal.FieldByName('ACCVN10').Value;                                                                                      //AJ
            eclApp.Cells(j,37):=QryTotal.FieldByName('ACCUS10').Value;                                                                                      //AK
            eclApp.Cells(j,38):=QryTotal.FieldByName('Qty11').Value;                                                                                        //AL
            eclApp.Cells(j,39):=QryTotal.FieldByName('ACCVN11').Value;                                                                                      //AM
            eclApp.Cells(j,40):=QryTotal.FieldByName('ACCUS11').Value;                                                                                      //AN
            eclApp.Cells(j,41):=QryTotal.FieldByName('Qty12').Value;                                                                                        //AO
            eclApp.Cells(j,42):=QryTotal.FieldByName('ACCVN12').Value;                                                                                      //AP
            eclApp.Cells(j,43):=QryTotal.FieldByName('ACCUS12').Value;                                                                                      //AQ
            //Them vien border
            cellRange := eclApp.Range[eclApp.Cells[j, 1], eclApp.Cells[j, 43]];
            for k := 7 to 10 do  // xlEdgeLeft = 7, xlEdgeTop = 8, xlEdgeBottom = 9, xlEdgeRight = 10
            begin
              cellRange.Borders[k].LineStyle := 1;  // xlContinuous = 1
              cellRange.Borders[k].Weight := 2;     // xlThin = 2
            end;
            cellRange.Borders[11].LineStyle := 1;
            cellRange.Borders[11].Weight := 2;
            QryTotal.Next;
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

procedure TApplyTotal.Button3Click(Sender: TObject);
begin
  if SGDet.State in [DsInsert,DsEdit] then begin
    ApplyTotalCapex:=TApplyTotalCapex.Create(self);
    ApplyTotalCapex1.Formname := 'ApplyTotal';
    ApplyTotalCapex1.DepID := SGMas.fieldbyname('DepID').AsString;
    ApplyTotalCapex.Show();
  end;
end;

end.
