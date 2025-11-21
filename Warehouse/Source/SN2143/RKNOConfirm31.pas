unit RKNOConfirm31;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, StdCtrls, DBCtrls, GridsEh, DBGridEh, ComCtrls,
  Mask, Buttons, ExtCtrls, Comobj, IniFiles;

type
  TRKNOConfirm3 = class(TForm)
    TmpQry: TQuery;
    DS3: TDataSource;
    DBGrid3: TDBGridEh;
    Splitter1: TSplitter;
    Panel1: TPanel;
    Label1: TLabel;
    Label5: TLabel;
    Label2: TLabel;
    Button1: TButton;
    Button3: TButton;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    Edit1: TEdit;
    Button4: TButton;
    CheckBox1: TCheckBox;
    Button5: TButton;
    DS4: TDataSource;
    Panel2: TPanel;
    dbgrid4: TDBGridEh;
    ENMas: TQuery;
    ENMasRKNO: TStringField;
    ENMasZSBH: TStringField;
    ENMasZSYWJC: TStringField;
    ENMasZSNO: TStringField;
    ENMasDOCNO: TStringField;
    ENMasGSBH: TStringField;
    ENMasCKBH: TStringField;
    ENMasCFMID: TStringField;
    ENMasUSERDATE: TDateTimeField;
    ENMasUSERID: TStringField;
    ENMasCFMDATE: TDateTimeField;
    ENMasYN: TStringField;
    ENMasMEMO: TStringField;
    ENMasHGLB: TStringField;
    ENMasSFL: TStringField;
    ENMasPurCFMID: TStringField;
    ENMasPurCFMDate: TDateTimeField;
    ENMasCFMID1: TStringField;
    ENMasCFMDATE1: TDateTimeField;
    ENMasCFMID2: TStringField;
    ENMasCFMDATE2: TDateTimeField;
    ENDet: TQuery;
    ENDetRKNO: TStringField;
    ENDetCLBH: TStringField;
    ENDetCGBH: TStringField;
    ENDetRKSB: TStringField;
    ENDetQty: TCurrencyField;
    ENDetPaQty: TFloatField;
    ENDetUSPrice: TFloatField;
    ENDetUSACC: TFloatField;
    ENDetVNACC: TCurrencyField;
    ENDetCWHL: TCurrencyField;
    ENDetUSERID: TStringField;
    ENDetUSERDATE: TDateTimeField;
    ENDetYN: TStringField;
    ENDetYWPM: TStringField;
    ENDetZWPM: TStringField;
    ENDetDWBH: TStringField;
    ENDetCostID: TStringField;
    ENDetVNPrice: TCurrencyField;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure CGDetCalcFields(DataSet: TDataSet);
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
  RKNOConfirm3: TRKNOConfirm3;
  NDate:TDate;

implementation

uses main1, FunUnit;

{$R *.dfm}

procedure TRKNOConfirm3.ReadIni();
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
  TCurrencyField(ENDet.FieldByName('VNPrice')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(ENDet.FieldByName('VNACC')).DisplayFormat:=VNPrice_DiplayFormat;
end;

procedure TRKNOConfirm3.Button1Click(Sender: TObject);
begin

  with ENMas do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Select  KCRK.RKNO,KCRK.GSBH,KCRK.ZSBH,KCRK.CKBH,KCRK.ZSNO,KCRK.DOCNO,KCRK.MEMO,KCRK.HGLB,KCRK.SFL,KCRK.USERID,KCRK.USERDATE,KCRK.CFMID as PurCFMID,KCRK.CFMDATE as PurCFMDate,');
    SQL.Add('        ZSZL.ZSYWJC,IsNull(KCRK_DK_CFM.CFMID,''NO'') as CFMID,KCRK_DK_CFM.CFMDATE,IsNull(KCRK_DK_CFM.CFMID1,''NO'') as CFMID1,KCRK_DK_CFM.CFMDATE1,IsNull(KCRK_DK_CFM.CFMID2,''NO'') as CFMID2,KCRK_DK_CFM.CFMDATE2,KCRK.YN  ');
    SQL.Add('from KCRK');
    SQL.Add('left join ZSZL on KCRK.ZSBH=ZSZL.ZSDH');
    SQL.Add('Left join KCRK_DK_CFM on KCRK_DK_CFM.RKNO=KCRK.RKNO');
    SQL.Add('where IsNull(KCRK_DK_CFM.CFMID1,''NO'')<>''NO''  and  KCRK.RKNO like '''+Edit1.Text+'%'' ');
    sql.add('      and convert(smalldatetime,convert(varchar,KCRK.USERDATE,111)) between ');
    sql.add('          '''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date) +''' ');
    sql.add('      and KCRK.GSBH='+''''+main.Edit2.Text+'''');
    if CheckBox1.Checked = true then
      SQL.Add('      and IsNull(KCRK_DK_CFM.CFMID2,''NO'')<>''NO'' ')
    else
      SQL.Add('      and IsNull(KCRK_DK_CFM.CFMID2,''NO'')=''NO'' ');
    sql.Add('order by KCRK.RKNO DESC');
    //
    Active:=true;
  end;
  //
  ENDet.Active:=true;

end;

procedure TRKNOConfirm3.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=CaFree;
end;

procedure TRKNOConfirm3.FormDestroy(Sender: TObject);
begin
  RKNOConfirm3:=nil;
end;

procedure TRKNOConfirm3.FormCreate(Sender: TObject);
begin
  AppDir:=ExtractFilePath(Application.ExeName);
  with TmpQry do
  begin
      Active:=false;
      SQL.Clear;
      SQL.add('select getdate() as NDate ');
      Active:=true;
      NDate:=fieldbyname('NDate').Value;
      active:=false;
  end;
  DTP1.Date:=date-3;
  DTP2.date:=date;
  ReadIni();
  Button1.Click;
end;

procedure TRKNOConfirm3.Button3Click(Sender: TObject);
begin

  if ENMas.Active=false then Exit;
  if ENMas.RecordCount=0 then Exit;
  if ENDet.Active=false then Exit;
  if ENDet.RecordCount=0 then Exit;
  if Messagedlg('Confirm or not ?',mtinformation,[mbYes,mbNo],0)=mrYes then
  begin
    try
      with ENMas do
      begin
        if fieldbyname('CFMID2').Value='NO' then
        begin
           with TmpQry do
           begin
             Active:=false;
             SQL.Clear;
             SQL.Add('IF NOT EXISTS (Select RKNO from KCRK_DK_CFM where RKNO='''+ENMas.FieldByName('RKNO').AsString+''')');
             SQL.Add('Begin');
             SQL.Add('  Insert into KCRK_DK_CFM (RKNO, CFMID2, CFMDATE2) Values ('''+ENMas.FieldByName('RKNO').AsString+''','''+main.Edit1.Text+''',GetDate())');
             SQL.Add('End Else');
             SQL.Add('Begin');
             SQL.Add('  Update KCRK_DK_CFM Set CFMID2='''+main.Edit1.Text+''' ,CFMDate2=GetDate() where RKNO='''+ENMas.FieldByName('RKNO').AsString+''' ');
             SQL.Add('End');
             ExecSQL();
           end;
        end;
        Active:=false;
        Active:=true;
      end;
      Showmessage('Succeed.');
    except
      on E:Exception do
      begin
        Showmessage('Have wrong.'+E.Message);
      end;
    end;
  end;
  //

end;

procedure TRKNOConfirm3.Button4Click(Sender: TObject);
begin

  if ENMas.fieldbyname('CFMID1').Value<>'NO' then
  begin
    Showmessage('Already Confirm Permit,can''t reset ');
    Exit;
  end;
  try
    with ENMas do
    begin
      with TmpQry do
      begin
         Active:=false;
         SQL.Clear;
         SQL.Add('IF NOT EXISTS (Select RKNO from KCRK_DK_CFM where CGNO='''+ENMas.FieldByName('RKNO').AsString+''')');
         SQL.Add('Begin');
         SQL.Add('  Insert into KCRK_DK_CFM (RKNO, CFMID2, CFMDATE2) Values ('''+ENMas.FieldByName('RKNO').AsString+''',''NO'',GetDate())');
         SQL.Add('End Else');
         SQL.Add('Begin');
         SQL.Add('  Update KCRK_DK_CFM Set CFMID2=''NO'' ,CFMDate2=GetDate() where RKNO='''+ENMas.FieldByName('RKNO').AsString+''' ');
         SQL.Add('End');
         ExecSQL();
      end;
      active:=false;
      active:=true;
    end;
    showmessage('Succeed.');
  except
    showmessage('Have wrong.');
  end;

end;

procedure TRKNOConfirm3.Button5Click(Sender: TObject);
begin
  if ENMas.Active=false then Exit;
  if ENMas.RecordCount=0 then Exit;
  if ENDet.Active=false then Exit;
  if ENDet.RecordCount=0 then Exit;
  if messagedlg('Confirm All or not ?',mtinformation,[mbYes,mbNo],0)=mrYes then
  begin
    try
      ENMas.First;
      with ENMas do
      begin
        while not ENMas.Eof do
        begin
          if fieldbyname('CFMID2').Value='NO' then
          begin
             with TmpQry do
             begin
               Active:=false;
               SQL.Clear;
               SQL.Add('IF NOT EXISTS (Select RKNO from KCRK_DK_CFM where RKNO='''+ENMas.FieldByName('RKNO').AsString+''')');
               SQL.Add('Begin');
               SQL.Add('  Insert into KCRK_DK_CFM (RKNO, CFMID2, CFMDATE2) Values ('''+ENMas.FieldByName('RKNO').AsString+''','''+main.Edit1.Text+''',GetDate())');
               SQL.Add('End Else');
               SQL.Add('Begin');
               SQL.Add('  Update KCRK_DK_CFM Set CFMID2='''+main.Edit1.Text+''' ,CFMDate2=GetDate() where RKNO='''+ENMas.FieldByName('RKNO').AsString+''' ');
               SQL.Add('End');
               ExecSQL();
             end;
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

procedure TRKNOConfirm3.CGDetCalcFields(DataSet: TDataSet);
begin

  with ENDet do
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

end.
