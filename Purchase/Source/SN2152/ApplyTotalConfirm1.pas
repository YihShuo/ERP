unit ApplyTotalConfirm1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, StdCtrls, DBCtrls, GridsEh, DBGridEh, ComCtrls,
  Mask, Buttons, ExtCtrls, Comobj, IniFiles;

type
  TApplyTotalConfirm = class(TForm)
    DBGrid3: TDBGridEh;
    SGMas: TQuery;
    SGMasSGNO: TStringField;
    SGMasGSBH: TStringField;
    SGMasDepID: TStringField;
    SGMasSGDate: TDateTimeField;
    SGMasDepName: TStringField;
    SGMasDepMemo: TStringField;
    SGMasMemo: TStringField;
    SGMasUSERDate: TDateTimeField;
    SGMasUSERID: TStringField;
    SGMasCFMDate: TDateTimeField;
    SGMasCFMID: TStringField;
    SGMasYN: TStringField;
    DS1: TDataSource;
    UpMas: TUpdateSQL;
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
    SGDetMemo: TStringField;
    SGDetBJNO: TStringField;
    SGDetZSDH: TStringField;
    SGDetzsywjc: TStringField;
    SGDetdwbh: TStringField;
    SGDetZWSM: TStringField;
    SGDetUSERDate: TDateTimeField;
    SGDetUSERID: TStringField;
    SGDetYN: TStringField;
    DS2: TDataSource;
    Query1: TQuery;
    SGMasCFMDate1: TDateTimeField;
    SGMasCFMID1: TStringField;
    SGMasLB: TStringField;
    SGMasCFMMemo: TStringField;
    Panel2: TPanel;
    Panel1: TPanel;
    Label1: TLabel;
    Label5: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Button1: TButton;
    Button3: TButton;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    Edit1: TEdit;
    Button2: TButton;
    Button4: TButton;
    CheckBox1: TCheckBox;
    Button5: TButton;
    LBCombo: TComboBox;
    dbgrid4: TDBGridEh;
    Splitter1: TSplitter;
    Label4: TLabel;
    Edit2: TEdit;
    SGMasCHKDate: TDateTimeField;
    SGMasCHKID: TStringField;
    SGMasflowflag: TStringField;
    UpDet: TUpdateSQL;
    SGDetDepQty: TCurrencyField;
    SGDetZZZQty: TCurrencyField;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure SGDetCalcFields(DataSet: TDataSet);
    procedure Button5Click(Sender: TObject);
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
  ApplyTotalConfirm: TApplyTotalConfirm;
  NDate:TDate;

implementation

uses main1;

{$R *.dfm}

procedure TApplyTotalConfirm.ReadIni();
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

procedure TApplyTotalConfirm.Button1Click(Sender: TObject);
begin
  with SGMas do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select SGDH.*,BDepartment.DepName,BDepartment.DepMemo');
    SQL.Add('from SGDH ');
    SQL.Add('left join BDepartment on BDepartment.ID=SGDH.DepID ');
    SQL.Add('where  SGDH.CHKID<>''NO'' and convert(smalldatetime,convert(varchar,SGDH.USERDATE,111)) between ');
    SQL.add('      '''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''' ');
    SQL.add('         and ');
    SQL.add('      '''+formatdatetime('yyyy/MM/dd',DTP2.Date) +''' ');
    SQL.Add('and SGDH.LB not in (''05'') ');
    if Edit1.Text<>'' then
      SQL.Add('    and SGDH.SGNO like '''+Edit1.Text+'%'' ');
    if Edit2.Text<>'' then
      SQL.Add('    and BDepartment.DepName like '''+Edit2.Text+'%'' ');
    if LBCombo.Text<>'' then
      SQL.Add('    and SGDH.LB='''+LBCombo.Text+''' ');
    //SQL.Add('      and SGDH.GSBH='''+main.Edit2.Text+''' ');
    if CheckBox1.Checked = true then
      SQL.Add('      and SGDH.CFMID<>''NO'' ')
    else
      SQL.Add('      and SGDH.CFMID=''NO'' ');
    SQL.Add('order by SGNO DESC ');
    Active:=true;
  end;
  SGDet.Active:=true;
end;

procedure TApplyTotalConfirm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=CaFree;
end;

procedure TApplyTotalConfirm.FormDestroy(Sender: TObject);
begin
  ApplyTotalConfirm:=nil;
end;

procedure TApplyTotalConfirm.FormCreate(Sender: TObject);
begin
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
  DTP1.Date:=date-20;
  DTP2.date:=date;
  ReadIni();
  Button1.Click;
end;

procedure TApplyTotalConfirm.Button3Click(Sender: TObject);
begin
  if SGMas.Active=false then Exit;
  if SGMas.RecordCount=0 then Exit;
  if SGDet.Active=false then Exit;
  if SGDet.RecordCount=0 then Exit;
  if messagedlg('Confirm or not ?',mtinformation,[mbYes,mbNo],0)=mrYes then
  begin
    try
      with SGMas do
      begin
        if fieldbyname('CFMID').Value='NO' then
        begin
          Edit;
          fieldbyname('CFMID').Value:=main.edit1.text;
          fieldbyname('CFMDATE').Value:=Ndate;
          UPMas.Apply(ukmodify);
        end;
        active:=false;
        active:=true;
      end;
      showmessage('Succeed.');
    except
      on E:Exception do
      begin
        Showmessage('Have wrong.'+E.Message);
      end;
    end;
  end;
  //

end;

procedure TApplyTotalConfirm.Button2Click(Sender: TObject);
var SGNO:String;
    Qty_old,Qty: real;
begin
  if SGMas.Active=false then Exit;
  if SGMas.RecordCount=0 then Exit;
  //
   try
    //20230320 Modify SGDHS.Qty
    with SGDet do
    begin
      if SGMas.fieldbyname('CFMID1').Value='NO' then
      begin
        first;
        while not eof do
        begin
          if updatestatus=usmodified then
          begin
            Qty_old:=SGDet.FieldByName('Qty').OldValue;
            Qty:= SGDet.FieldByName('Qty').Value;
            with Query1 do
            begin
              active:=false;
              sql.Clear;
              sql.add('insert into BDelRec ');
              sql.add('(TableName ,TNO,CLBH,OldID,DelID,DelDate)');
              sql.add('values ('''+'SGDHS_N2152'+''','''+SGDet.fieldbyname('SGNO').Value+'''');
              sql.add(','''+SGDet.fieldbyname('CLBH').Value+'***'+floattostr(Qty_old)+'***'+floattostr(Qty)+''','+''''+SGDet.fieldbyname('USERID').Value+''''+',');
              sql.add(''''+main.Edit1.Text+''''+',getdate())');
              execsql;
              active:=false;
            end;
            UPdet.apply(ukmodify);
          end;
          next;
        end;
      end else
      begin
        showmessage('Already confrim, can not modify Qty');
        abort;
      end;  
    end;
    with SGMas do
    begin
      SGNO:=FieldByName('SGNO').AsString;
      if fieldbyname('CFMID').Value='NO' then
      begin
        Edit;
        UPMas.Apply(ukmodify);
      end;
      active:=false;
      active:=true;
      Locate('SGNO',SGNO,[]);
    end;
    showmessage('Succeed.');
  except
    on E:Exception do
    begin
      Showmessage('Have wrong.'+E.Message);
    end;
  end;

end;

procedure TApplyTotalConfirm.Button4Click(Sender: TObject);
begin
  if SGMas.fieldbyname('CFMID1').Value<>'NO' then
  begin
    Showmessage('Already Confirm Permit,can''t reset ');
    Exit;
  end;
  try
    with SGMas do
    begin
      Edit;
      fieldbyname('flowflag').Value:='X';
      fieldbyname('CHKID').Value:='NO';
      fieldbyname('CFMID').Value:='NO';
      UpMas.Apply(ukmodify);
      active:=false;
      active:=true;
    end;
    showmessage('Succeed.');
  except
    showmessage('Have wrong.');
  end;
end;

procedure TApplyTotalConfirm.SGDetCalcFields(DataSet: TDataSet);
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

procedure TApplyTotalConfirm.Button5Click(Sender: TObject);
begin
  if SGMas.Active=false then Exit;
  if SGMas.RecordCount=0 then Exit;
  if SGDet.Active=false then Exit;
  if SGDet.RecordCount=0 then Exit;
  if messagedlg('Confirm All or not ?',mtinformation,[mbYes,mbNo],0)=mrYes then
  begin
    try
      SGMas.First;
      with SGMas do
      begin
        while not SGMas.Eof do
        begin
          if fieldbyname('CFMID').Value='NO' then
          begin
            Edit;
            fieldbyname('CFMID').Value:=main.edit1.text;
            fieldbyname('CFMDATE').Value:=Ndate;
            UPMas.Apply(ukmodify);
          end;
          Next;
        end;
        active:=false;
        active:=true;
      end;
      showmessage('Succeed.');
    except
      on E:Exception do
      begin
        Showmessage('Have wrong.'+E.Message);
      end;
    end;
  end;
  //

end;

end.
