unit Apply_Purchase_Printing_Mold1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, StdCtrls, DBCtrls, GridsEh, DBGridEh, ComCtrls,
  Mask, Buttons, ExtCtrls, Comobj, IniFiles, ADODB, dateutils;

type
  TApply_Purchase_Printing_Mold = class(TForm)
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
    Panel2: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    Check: TCheckBox;
    DBGrid3: TDBGridEh;
    TS4: TTabSheet;
    Splitter3: TSplitter;
    Panel3: TPanel;
    Label7: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    DBEdit9: TDBEdit;
    DBEdit13: TDBEdit;
    BBTT2: TBitBtn;
    Panel5: TPanel;
    BO7: TBitBtn;
    BO1: TBitBtn;
    BO2: TBitBtn;
    BO3: TBitBtn;
    BO4: TBitBtn;
    BO5: TBitBtn;
    BO6: TBitBtn;
    DBMemo1: TDBMemo;
    dbgrid4: TDBGridEh;
    DBGrid5: TDBGridEh;
    Query1: TQuery;
    BDelRec: TQuery;
    SGMas: TQuery;
    SGMasSGNO: TStringField;
    SGMasGSBH: TStringField;
    SGMasDepID: TStringField;
    SGMasLB: TStringField;
    SGMasSGDate: TDateTimeField;
    SGMasDepName: TStringField;
    SGMasDepMemo: TStringField;
    SGMasMemo: TStringField;
    SGMasUSERDate: TDateTimeField;
    SGMasUSERID: TStringField;
    SGMasCHKDate: TDateTimeField;
    SGMasCHKID: TStringField;
    SGMasCFMDate: TDateTimeField;
    SGMasCFMID: TStringField;
    SGMasCFMMemo: TStringField;
    SGMasCFMDate1: TDateTimeField;
    SGMasCFMID1: TStringField;
    SGMasYN: TStringField;
    SGMasflowflag: TStringField;
    SGMasBudget_chk: TBooleanField;
    SGMasCustomer_Account: TBooleanField;
    SGMasUniform: TBooleanField;
    SGMasOrderDate: TDateTimeField;
    UpMas: TUpdateSQL;
    DS1: TDataSource;
    SGDet: TQuery;
    SGDetSGNO: TStringField;
    SGDetCLBH: TStringField;
    SGDetYWPM: TStringField;
    SGDetZWPM: TStringField;
    SGDetSGQty: TFloatField;
    SGDetQty: TFloatField;
    SGDetUSPrice: TFloatField;
    SGDetVNPrice: TCurrencyField;
    SGDetACCVN: TFloatField;
    SGDetACCUS: TFloatField;
    SGDetYQdate: TDateTimeField;
    SGDetBJNO: TStringField;
    SGDetZSDH: TStringField;
    SGDetzsywjc: TStringField;
    SGDetdwbh: TStringField;
    SGDetZWSM: TStringField;
    SGDetUSERDate: TDateTimeField;
    SGDetUSERID: TStringField;
    SGDetYN: TStringField;
    SGDetMemo: TStringField;
    UPDet: TUpdateSQL;
    DS2: TDataSource;
    SGDetS: TQuery;
    SGDetSSGNO: TStringField;
    SGDetSCLBH: TStringField;
    SGDetSXXCC: TStringField;
    SGDetSSGQty: TFloatField;
    SGDetSQty: TFloatField;
    SGDetSUSERDate: TDateTimeField;
    SGDetSUSERID: TStringField;
    SGDetSYN: TStringField;
    UPDetS: TUpdateSQL;
    DS3: TDataSource;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BB2Click(Sender: TObject);
    procedure BB3Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure BD2Click(Sender: TObject);
    procedure BD3Click(Sender: TObject);
    procedure BD4Click(Sender: TObject);
    procedure BD5Click(Sender: TObject);
    procedure BD6Click(Sender: TObject);
    procedure SGMasAfterOpen(DataSet: TDataSet);
    procedure SGMasAfterScroll(DataSet: TDataSet);
    procedure SGDetAfterOpen(DataSet: TDataSet);
    procedure SGDetCalcFields(DataSet: TDataSet);
    procedure BB1Click(Sender: TObject);
    procedure BBTT1Click(Sender: TObject);
    procedure BBTT2Click(Sender: TObject);
    procedure PC1Change(Sender: TObject);
    procedure BDT5Click(Sender: TObject);
    procedure bbt6Click(Sender: TObject);
    procedure BTD7Click(Sender: TObject);
    procedure BO1Click(Sender: TObject);
    procedure BO7Click(Sender: TObject);
    procedure BO3Click(Sender: TObject);
    procedure BO4Click(Sender: TObject);
    procedure BO5Click(Sender: TObject);
    procedure BO2Click(Sender: TObject);
    procedure dbgrid4DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure DBGrid5DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure DBGrid3DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
  private
    AppDir:String;
    { Private declarations }
    procedure ReadIni();
  public
    VNPrice_DiplayFormat:string;
    VNPrice_Decimal:Byte;
    { Public declarations }
  end;

var
  Apply_Purchase_Printing_Mold: TApply_Purchase_Printing_Mold;
  NDate:TDate;

implementation

uses main1, ApplyMoldDepName1, Apply_Purchase_Printing_Mold_DepName1,
  Apply_Purchase_Printing_Mold_MatNo1, Apply_Purchase_Printing_Mold_Print1;

{$R *.dfm}

procedure TApply_Purchase_Printing_Mold.ReadIni();
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
    finally
      MyIni.Free;
    end;
  end;
  TCurrencyField(SGDet.FieldByName('VNPrice')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(SGDet.FieldByName('ACCVN')).DisplayFormat:=VNPrice_DiplayFormat;
end;

procedure TApply_Purchase_Printing_Mold.Button1Click(Sender: TObject);
begin
  with SGMas do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select SGDH.*,BDepartment.DepName,BDepartment.DepMemo');
    SQL.Add('from SGDH ');
    SQL.Add('left join  BDepartment on BDepartment.ID=SGDH.DepID ');
    SQL.Add('where  1=1 ');
    if Edit1.Text <> '' then
       SQL.Add('and  SGDH.SGNO like '''+Edit1.Text+'%'+''' ');
    SQL.Add('and SGDH.LB=''06''');
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
    Active:=true;
  end;
  SGDet.Active:=true;
  SGDetS.Active:=true;
end;

procedure TApply_Purchase_Printing_Mold.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=CaFree;
end;

procedure TApply_Purchase_Printing_Mold.FormDestroy(Sender: TObject);
begin
  Apply_Purchase_Printing_Mold:=nil;
end;

procedure TApply_Purchase_Printing_Mold.FormCreate(Sender: TObject);

var i:integer;
begin
  AppDir:=ExtractFilePath(Application.ExeName);
  with Query1 do
  begin
      active:=false;
      sql.Clear;
      sql.add('select getdate() as NDate ');
      active:=true;
      NDate:=fieldbyname('NDate').Value;
      active:=false;
  end;
  //
  with Query1 do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Select distinct XXCC as US_SIZE from Gender where XXCC<>''0'' order by XXCC ');
    Active:=true;
    DBGrid5.Columns[0].PickList.add('ZZZZZZ');
    for i:=0 to RecordCount-1 do
    begin
      DBGrid5.Columns[0].PickList.add(FieldByName('US_SIZE').AsString);
      Next;
    end;
    Active:=false;
  end;
  DTP1.Date:=date-3;
  DTP2.date:=date;
  ReadIni();
end;

procedure TApply_Purchase_Printing_Mold.BB2Click(Sender: TObject);
begin
  with SGMas do
  begin
    requestlive:=true;
    cachedupdates:=true;
    Insert;
    fieldbyname('Budget_chk').Value := 0;
    fieldbyname('Customer_Account').Value := 0;
  end;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
  BBTT1.Visible:=true;
end;

procedure TApply_Purchase_Printing_Mold.BB3Click(Sender: TObject);
begin
  if SGMas.fieldbyname('flowflag').AsString<>'' then
  begin
    Showmessage('Already he thong dang ky, khong xoa duoc');
    abort();
  end;
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

procedure TApply_Purchase_Printing_Mold.BB4Click(Sender: TObject);
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

procedure TApply_Purchase_Printing_Mold.BB5Click(Sender: TObject);
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
            sql.Add('select SGNO from SGDH where SGNO like '''+y+m+'%'+'''');
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
          SGMas.fieldbyname('LB').Value:='06';
          SGMas.FieldByName('GSBH').Value:=main.Edit2.Text;
          SGMas.FieldByName('userID').Value:=main.edit1.text;
          SGMas.FieldByName('userdate').Value:=NDate;
          SGMas.FieldByName('OrderDate').Value:=NDate;
          SGMas.FieldByName('CHKID').Value:='NO';
          SGMas.FieldByName('CFMID').Value:='NO';
          SGMas.FieldByName('CFMID1').Value:='NO';          
          SGMas.FieldByName('YN').Value:='1';
          upMas.apply(ukinsert);
        end;
        usmodified:
        begin
          if (SGMas.FieldByName('CHKID').value='NO')   then
          begin
            if SGMas.FieldByName('USERID').value=main.Edit1.Text then
            begin
              if SGMas.fieldbyname('YN').value='0' then
              begin
                if (SGMas.FieldByName('Flowflag').AsString<>'X') and (trim(SGMas.FieldByName('Flowflag').AsString)<>'') then
                begin
                  Showmessage('Da gui trinh ky, khong the sua !');
                  abort;
                end;
                with BDelRec do
                begin
                  active:=false;
                  sql.Clear;
                  SQL.Add('UPDATE SGDH SET flowflag = ''X'',Status=''D'' WHERE SGNO = ''' + SGMas.fieldbyname('SGNO').AsString+''' ');
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
                    Showmessage('Da gui trinh ky, khong the sua !');
                    abort;
                  end;
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

procedure TApply_Purchase_Printing_Mold.BB6Click(Sender: TObject);
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

procedure TApply_Purchase_Printing_Mold.BD2Click(Sender: TObject);
begin
  if (SGMas.FieldByName('Flowflag').AsString<>'X') and (trim(SGMas.FieldByName('Flowflag').AsString)<>'') then
  begin
    Showmessage('Da gui trinh ky, khong the sua !');
    abort;
  end;
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
  //dbgrid4.columns[4].ButtonStyle:=cbsEllipsis;
  //dbgrid4.columns[5].ButtonStyle:=cbsEllipsis;
end;

procedure TApply_Purchase_Printing_Mold.BD3Click(Sender: TObject);
begin
  if (SGMas.FieldByName('Flowflag').AsString<>'X') and (trim(SGMas.FieldByName('Flowflag').AsString)<>'') then
  begin
    Showmessage('Da gui trinh ky, khong the sua !');
    abort;
  end;
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

procedure TApply_Purchase_Printing_Mold.BD4Click(Sender: TObject);
begin
  if SGMas.FieldByName('flowflag').Value = 'X' then begin
    showmessage('This document has been canceled');
    exit;
  end;
  if (SGMas.FieldByName('Flowflag').AsString<>'X') and (trim(SGMas.FieldByName('Flowflag').AsString)<>'') then
  begin
    Showmessage('Da gui trinh ky, khong the sua !');
    abort;
  end;
  with SGDet do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
  BD5.Enabled:=true;
  BD6.Enabled:=true;
  BBTT2.Visible:=true;
  //dbgrid4.columns[4].ButtonStyle:=cbsEllipsis;
  //dbgrid4.columns[5].ButtonStyle:=cbsEllipsis;
end;

procedure TApply_Purchase_Printing_Mold.BD5Click(Sender: TObject);
var i:integer;
begin
  if (SGMas.FieldByName('CFMID').value<>'NO')   then
  begin
    showmessage('Already confirm. Can not modify.');
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
              SGDet.fieldbyname('VNPrice').Value:=0;
              SGDet.fieldbyname('VNPrice').Value:=0;
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
                 if (NDate-SGMas.FieldByName('USERDATE').value)<=20  then
                 begin
                   SGDet.edit;
                   SGDet.fieldbyname('SGQty').Value:=SGDet.fieldbyname('Qty').Value;
                   SGDet.FieldByName('userID').Value:=main.edit1.text;
                   SGDet.FieldByName('userdate').Value:=Ndate;
                   SGDet.FieldByName('YN').Value:='1';
                   upDet.apply(ukmodify);
                 end else
                 begin
                   showmessage('Date>20, can not modify.');
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
    DBGrid4.columns[4].ButtonStyle:=cbsNone;
    DBGrid4.columns[5].ButtonStyle:=cbsNone;
    Showmessage('Succeed.');
  except
    Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
  end;

end;

procedure TApply_Purchase_Printing_Mold.BD6Click(Sender: TObject);
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
  DBGrid4.columns[4].ButtonStyle:=cbsNone;
  DBGrid4.columns[5].ButtonStyle:=cbsNone;
end;

procedure TApply_Purchase_Printing_Mold.SGMasAfterOpen(DataSet: TDataSet);
begin
  BB2.Enabled:=true;
  BB3.Enabled:=true;
  BB4.Enabled:=true;
end;

procedure TApply_Purchase_Printing_Mold.SGMasAfterScroll(
  DataSet: TDataSet);
begin
  if (SGMas.FieldByName('flowflag').AsString<>'')   then
  begin
    //BB2.Enabled:=false;
    BB3.Enabled:=false;
    BB4.Enabled:=false;
  end else
  begin
    //BB2.Enabled:=true;
    BB3.Enabled:=true;
    BB4.Enabled:=true;
  end;
  if(SGMas.FieldByName('flowflag').AsString='X') then
  begin
    BB3.Enabled:=true;
    BB4.Enabled:=true;
  end;
end;

procedure TApply_Purchase_Printing_Mold.SGDetAfterOpen(DataSet: TDataSet);
begin
  BD2.Enabled:=true;
  BD3.Enabled:=true;
  BD4.Enabled:=true;
  BO1.Enabled:=true;
  BO2.Enabled:=true;
  BO3.Enabled:=true;
  BO7.Enabled:=true;
  if ((NDate-SGMas.FieldByName('USERDATE').value)>30) then
  begin
    BD2.Enabled:=false;
    BD3.Enabled:=false;
    BD4.Enabled:=false;
    BO1.Enabled:=false;
    BO2.Enabled:=false;
    BO3.Enabled:=false;
    BO7.Enabled:=false;
  end;
  if SGMas.FieldByName('CHKID').value<>'NO'  then
  begin
    BD2.Enabled:=false;
    BD3.Enabled:=false;
    BD4.Enabled:=false;
    BO1.Enabled:=false;
    BO2.Enabled:=false;
    BO3.Enabled:=false;
    BO7.Enabled:=false;
  end;
  if SGMas.FieldByName('CFMID').value<>'NO'  then
  begin
    BD2.Enabled:=false;
    BD3.Enabled:=false;
    BD4.Enabled:=false;
    BO1.Enabled:=false;
    BO2.Enabled:=false;
    BO3.Enabled:=false;
    BO7.Enabled:=false;
  end;
  if SGMas.FieldByName('USERID').value<>main.Edit1.text then
  begin
    BD2.Enabled:=false;
    BD3.Enabled:=false;
    BD4.Enabled:=false;
    BO1.Enabled:=false;
    BO2.Enabled:=false;
    BO3.Enabled:=false;
    BO7.Enabled:=false;
  end;
  if SGMas.FieldByName('flowflag').value='Z' then
  begin
    BD2.Enabled:=false;
    BD3.Enabled:=false;
    BD4.Enabled:=false;
    BO1.Enabled:=false;
    BO2.Enabled:=false;
    BO3.Enabled:=false;
    BO7.Enabled:=false;
  end;
  //
  if SGMas.cachedupdates then
  begin
    BD2.Enabled:=false;
    BD3.Enabled:=false;
    BD4.Enabled:=false;
  end;
end;

procedure TApply_Purchase_Printing_Mold.SGDetCalcFields(DataSet: TDataSet);
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

procedure TApply_Purchase_Printing_Mold.BB1Click(Sender: TObject);
begin
  panel2.Visible:=true;
end;

procedure TApply_Purchase_Printing_Mold.BBTT1Click(Sender: TObject);
begin
  Apply_Purchase_Printing_Mold_DepName:=TApply_Purchase_Printing_Mold_DepName.Create(self);
  Apply_Purchase_Printing_Mold_DepName.Show();
end;

procedure TApply_Purchase_Printing_Mold.BBTT2Click(Sender: TObject);
begin
  Apply_Purchase_Printing_Mold_MatNo:=TApply_Purchase_Printing_Mold_MatNo.Create(self);
  Apply_Purchase_Printing_Mold_MatNo.Show();
end;

procedure TApply_Purchase_Printing_Mold.PC1Change(Sender: TObject);
begin
  if PC1.ActivePage=TS4 then
  begin
    panel6.visible:=true;
    panel1.visible:=false;
  end else
  begin
    panel6.visible:=false;
    panel1.visible:=true;
  end;
end;

procedure TApply_Purchase_Printing_Mold.BDT5Click(Sender: TObject);
begin
  if SGMas.FieldByName('CFMID1').AsString='NO' then
  begin
    Showmessage('Chua Confirm ,khong duoc in ra,Not yet confirm can''t print ');
    Exit;
  end;
  Apply_Purchase_Printing_Mold_Print:=TApply_Purchase_Printing_Mold_Print.Create(self);
  Apply_Purchase_Printing_Mold_Print.quickrep2.prepare;
  Apply_Purchase_Printing_Mold_Print.quickrep2.preview;
  Apply_Purchase_Printing_Mold_Print.free;
end;

procedure TApply_Purchase_Printing_Mold.bbt6Click(Sender: TObject);
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

procedure TApply_Purchase_Printing_Mold.BTD7Click(Sender: TObject);
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

procedure TApply_Purchase_Printing_Mold.BO1Click(Sender: TObject);
begin
  if SGDet.RequestLive then
  begin
    showmessage('Pls save material data first.');
    abort;
  end;
  with SGDetS do
  begin
    requestlive:=true;
    cachedupdates:=true;
    insert;
  end;
  BO4.Enabled:=true;
  BO5.Enabled:=true;
  BD2.Enabled:=false;
  BD3.Enabled:=false;
  BD4.Enabled:=false;
end;

procedure TApply_Purchase_Printing_Mold.BO7Click(Sender: TObject);
begin
  if SGDet.RequestLive then
  begin
    showmessage('Pls save material data first.');
    abort;
  end;
  with SGDetS do
  begin
    requestlive:=true;
    cachedupdates:=true;
    First;
    while not eof do
    begin
     Edit;
     fieldbyname('YN').Value:='0';
     next;
    end;
  end;
  BO4.Enabled:=true;
  BO5.Enabled:=true;
  BD2.Enabled:=false;
  BD3.Enabled:=false;
  BD4.Enabled:=false;
end;

procedure TApply_Purchase_Printing_Mold.BO3Click(Sender: TObject);
begin
  if SGDet.RequestLive then
  begin
    showmessage('Pls save material data first.');
    abort;
  end;
  with SGDetS do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
  BO4.Enabled:=true;
  BO5.Enabled:=true;
  BD2.Enabled:=false;
  BD3.Enabled:=false;
  BD4.Enabled:=false;
end;

procedure TApply_Purchase_Printing_Mold.BO4Click(Sender: TObject);
var i:integer;
    Qty:real;
    Memo:String;
begin
  try
    SGDetS.First;
    for i:=1 to SGDetS.RecordCount do
    begin
      case SGDetS.updatestatus of
        usinserted:
        begin
          if SGDetS.fieldbyname('XXCC').isnull then
          begin
            SGDetS.delete;
          end else
          begin
             SGDetS.edit;
             SGDetS.fieldbyname('SGNO').Value:=SGDet.fieldbyname('SGNO').value;
             SGDetS.fieldbyname('SGQty').Value:=SGDet.fieldbyname('Qty').value;
             SGDetS.fieldbyname('CLBH').Value:=SGDet.fieldbyname('CLBH').value;
             SGDetS.FieldByName('userID').Value:=main.edit1.text;
             SGDetS.FieldByName('userdate').Value:=date;
             SGDetS.FieldByName('YN').Value:='1';
             UPDetS.apply(ukinsert);
          end;
        end;
        usmodified:
        begin
          if SGDetS.fieldbyname('YN').value='0'then
          begin
            with BDelRec do
            begin
              Active:=false;
              SQL.Clear;
              SQL.add('insert into BDelRec ');
              SQL.add('(TableName ,TNO,CLBH,OldID,DelID,DelDate)');
              SQL.add('values (''SGDHSS'','''+SGDetS.fieldbyname('SGNO').Value+'''');
              SQL.add(','''+SGDetS.fieldbyname('CLBH').Value+''','''+SGDetS.fieldbyname('USERID').Value+''',');
              SQL.add(''''+main.Edit1.Text+''',Getdate())');
              Execsql;
              Active:=false;
            end;
            UPDetS.apply(ukdelete);
          end else
          begin
            SGDetS.edit;
            SGDetS.FieldByName('userID').Value:=main.edit1.text;
            SGDetS.FieldByName('userdate').Value:=date;
            UPDetS.apply(ukmodify);
          end;
        end;
      end;
      SGDetS.next;
    end;

    SGDetS.active:=false;
    SGDetS.cachedupdates:=false;
    SGDetS.requestlive:=false;
    SGDetS.active:=true;
    SGDetS.First;
    Qty:=0;
    Memo:='';
    while not SGDetS.eof do
    begin
      Qty:=Qty+SGDetS.fieldbyname('Qty').Value;
      Memo:=Memo+'#'+SGDetS.fieldbyname('XXCC').Value+' ('+SGDetS.fieldbyname('Qty').AsString+'),';
      SGDetS.next;
    end;
    if Memo<>'' then Memo:=Copy(Memo,1,length(Memo)-1);
    //
    with SGDet do
    begin
      RequestLive:=true;
      CachedUpdates:=true;
      Edit;
      FieldByName('Qty').Value:=Qty;
      FieldByName('SGQty').Value:=Qty;
      if Memo<>'' then
      FieldByName('Memo').Value:=Memo;
      UpDet.Apply(ukmodify);
      active:=false;
      RequestLive:=false;
      CachedUpdates:=false;
      active:=true;
    end;
    //
    BO4.Enabled:=false;
    BO5.Enabled:=false;
    BD2.Enabled:=true;
    BD3.Enabled:=true;
    BD4.Enabled:=true;
  except
    On E:Exception do
    begin
      Messagedlg('Have wrong, can not save data!'+E.Message,mtwarning,[mbyes],0);
    end;
  end;
end;

procedure TApply_Purchase_Printing_Mold.BO5Click(Sender: TObject);
begin
  with SGDetS do
  begin
    active:=false;
    requestlive:=false;
    cachedupdates:=false;
    active:=true;
  end;
  BO4.Enabled:=false;
  BO5.Enabled:=false;
end;

procedure TApply_Purchase_Printing_Mold.BO2Click(Sender: TObject);
begin
  if SGDet.RequestLive then
  begin
    showmessage('Pls save material data first.');
    abort;
  end;
  with SGDetS do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
    fieldbyname('YN').Value:='0';
  end;
  BO4.Enabled:=true;
  BO5.Enabled:=true;
  BD2.Enabled:=false;
  BD3.Enabled:=false;
  BD4.Enabled:=false;
end;

procedure TApply_Purchase_Printing_Mold.dbgrid4DrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if SGDet.FieldByName('YN').value='0' then
  begin
    dbgrid4.canvas.font.color:=clred;
    dbgrid4.defaultdrawcolumncell(rect,datacol,column,state);
  end;
end;

procedure TApply_Purchase_Printing_Mold.DBGrid5DrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if SGDetS.FieldByName('YN').value='0' then
  begin
    DBGrid5.canvas.font.color:=clred;
    DBGrid5.defaultdrawcolumncell(rect,datacol,column,state);
  end;
end;

procedure TApply_Purchase_Printing_Mold.DBGrid3DrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if SGMas.FieldByName('YN').value='0' then
  begin
    dbgrid3.canvas.font.color:=clred;
    dbgrid3.defaultdrawcolumncell(rect,datacol,column,state);
  end;
end;

end.
