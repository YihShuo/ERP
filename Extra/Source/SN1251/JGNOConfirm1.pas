unit JGNOConfirm1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, StdCtrls, DBCtrls, GridsEh, DBGridEh, ComCtrls,
  Mask, Buttons, ExtCtrls, Comobj, IniFiles;

type
  TJGNOConfirm = class(TForm)
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
    JGMas: TQuery;
    JGDet: TQuery;
    JGMasJGNO: TStringField;
    JGMasGSBH: TStringField;
    JGMasZSBH: TStringField;
    JGMasCKBH: TStringField;
    JGMasUSERID: TStringField;
    JGMasUSERDATE: TDateTimeField;
    JGMasWarCFMID: TStringField;
    JGMasWarCFMDate: TDateTimeField;
    JGMasPurCFMID: TStringField;
    JGMasPurCFMDate: TDateTimeField;
    JGMasZSYWJC: TStringField;
    JGMasCFMID: TStringField;
    JGMasCFMDATE: TDateTimeField;
    JGMasCFMID1: TStringField;
    JGMasCFMDATE1: TDateTimeField;
    JGMasCFMID2: TStringField;
    JGMasCFMDATE2: TDateTimeField;
    JGMasYN: TStringField;
    JGDetJGNO: TStringField;
    JGDetCLBH: TStringField;
    JGDetQty: TCurrencyField;
    JGDetUSPrice: TCurrencyField;
    JGDetVNPrice: TCurrencyField;
    JGDetCWHL: TCurrencyField;
    JGDetVNACC: TCurrencyField;
    JGDetUSERID: TStringField;
    JGDetUSERDATE: TDateTimeField;
    JGDetYWPM: TStringField;
    JGDetZWPM: TStringField;
    JGDetDWBH: TStringField;
    Panel3: TPanel;
    dbgrid4: TDBGridEh;
    Splitter2: TSplitter;
    DBGridEh1: TDBGridEh;
    JGDetS: TQuery;
    DS5: TDataSource;
    JGDetSJGNO: TStringField;
    JGDetSCLBH: TStringField;
    JGDetSZLBH: TStringField;
    JGDetSQty: TCurrencyField;
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
  JGNOConfirm: TJGNOConfirm;
  NDate:TDate;

implementation

uses main1, FunUnit;

{$R *.dfm}

procedure TJGNOConfirm.ReadIni();
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
  TCurrencyField(JGDet.FieldByName('VNPrice')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(JGDet.FieldByName('VNACC')).DisplayFormat:=VNPrice_DiplayFormat;
end;

procedure TJGNOConfirm.Button1Click(Sender: TObject);
begin

  with JGMas do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Select  JGZL.JGNO,JGZL.GSBH,JGZL.ZSBH,JGZL.CKBH,JGZL.USERID,JGZL.USERDATE,JGZL.CFMID1 as WarCFMID,JGZL.CFMDATE1 as WarCFMDate,JGZL.CFMID2 as PurCFMID,JGZL.CFMDATE2 as PurCFMDate, ');
    SQL.Add('        ZSZL.ZSYWJC,IsNull(JGZL_DK_CFM.CFMID,''NO'') as CFMID,JGZL_DK_CFM.CFMDATE,IsNull(JGZL_DK_CFM.CFMID1,''NO'') as CFMID1,JGZL_DK_CFM.CFMDATE1,IsNull(JGZL_DK_CFM.CFMID2,''NO'') as CFMID2,JGZL_DK_CFM.CFMDATE2,JGZL.YN  ');
    SQL.Add('from JGZL');
    SQL.Add('left join ZSZL on JGZL.ZSBH=ZSZL.ZSDH');
    SQL.Add('Left join JGZL_DK_CFM on JGZL_DK_CFM.JGNO=JGZL.JGNO ');
    SQL.Add('where  JGZL.JGNO like '''+Edit1.Text+'%'' ');
    SQL.add('      and Convert(smalldatetime,Convert(varchar,JGZL.USERDATE,111)) between ');
    SQL.add('          '''+Formatdatetime('yyyy/MM/dd',DTP1.Date) +''' and '''+formatdatetime('yyyy/MM/dd',DTP2.Date) +''' ');
    SQL.add('      and JGZL.GSBH='+''''+main.Edit2.Text+'''');
    if CheckBox1.Checked = true then
      SQL.Add('      and IsNull(JGZL_DK_CFM.CFMID,''NO'')<>''NO'' ')
    else
      SQL.Add('      and IsNull(JGZL_DK_CFM.CFMID,''NO'')=''NO'' ');
    SQL.Add('order by JGZL.JGNO DESC');
    //funcObj.WriteErrorLog(sql.Text);
    //
    Active:=true;
  end;
  JGDet.Active:=true;
  JGDetS.Active:=true;
  //
end;

procedure TJGNOConfirm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=CaFree;
end;

procedure TJGNOConfirm.FormDestroy(Sender: TObject);
begin
  JGNOConfirm:=nil;
end;

procedure TJGNOConfirm.FormCreate(Sender: TObject);
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
  DTP1.Date:=date-60;
  DTP2.date:=date;
  ReadIni();
  Button1.Click;
end;

procedure TJGNOConfirm.Button3Click(Sender: TObject);
begin

  if JGMas.Active=false then Exit;
  if JGMas.RecordCount=0 then Exit;
  if JGDet.Active=false then Exit;
  if JGDet.RecordCount=0 then Exit;
  if Messagedlg('Confirm or not ?',mtinformation,[mbYes,mbNo],0)=mrYes then
  begin
    try
      with JGMas do
      begin
        if Fieldbyname('CFMID').Value='NO' then
        begin
           with TmpQry do
           begin
             Active:=false;
             SQL.Clear;
             SQL.Add('IF NOT EXISTS (Select JGNO from JGZL_DK_CFM where JGNO='''+JGMas.FieldByName('JGNO').AsString+''')');
             SQL.Add('Begin');
             SQL.Add('  Insert into JGZL_DK_CFM (JGNO, CFMID, CFMDATE) Values ('''+JGMas.FieldByName('JGNO').AsString+''','''+main.Edit1.Text+''',GetDate())');
             SQL.Add('End Else');
             SQL.Add('Begin');
             SQL.Add('  Update JGZL_DK_CFM Set CFMID='''+main.Edit1.Text+''' ,CFMDate=GetDate() where JGNO='''+JGMas.FieldByName('JGNO').AsString+''' ');
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

procedure TJGNOConfirm.Button4Click(Sender: TObject);
begin

  if JGMas.fieldbyname('CFMID1').Value<>'NO' then
  begin
    Showmessage('Already Confirm Permit,can''t reset ');
    Exit;
  end;
  try
    with JGMas do
    begin
      with TmpQry do
      begin
         Active:=false;
         SQL.Clear;
         SQL.Add('IF NOT EXISTS (Select JGNO from JGZL_DK_CFM where JGNO='''+JGMas.FieldByName('JGNO').AsString+''')');
         SQL.Add('Begin');
         SQL.Add('  Insert into JGZL_DK_CFM (JGNO, CFMID, CFMDATE) Values ('''+JGMas.FieldByName('JGNO').AsString+''',''NO'',GetDate())');
         SQL.Add('End Else');
         SQL.Add('Begin');
         SQL.Add('  Update JGZL_DK_CFM Set CFMID=''NO'' ,CFMDate=GetDate() where JGNO='''+JGMas.FieldByName('JGNO').AsString+''' ');
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

procedure TJGNOConfirm.Button5Click(Sender: TObject);
begin
  if JGMas.Active=false then Exit;
  if JGMas.RecordCount=0 then Exit;
  if JGDet.Active=false then Exit;
  if JGDet.RecordCount=0 then Exit;
  if messagedlg('Confirm All or not ?',mtinformation,[mbYes,mbNo],0)=mrYes then
  begin
    try
      JGMas.First;
      with JGMas do
      begin
        while not JGMas.Eof do
        begin
          if Fieldbyname('CFMID').Value='NO' then
          begin
             with TmpQry do
             begin
               Active:=false;
               SQL.Clear;
               SQL.Add('IF NOT EXISTS (Select JGNO from JGZL_DK_CFM where JGNO='''+JGMas.FieldByName('JGNO').AsString+''')');
               SQL.Add('Begin');
               SQL.Add('  Insert into JGZL_DK_CFM (JGNO, CFMID, CFMDATE) Values ('''+JGMas.FieldByName('JGNO').AsString+''','''+main.Edit1.Text+''',GetDate())');
               SQL.Add('End Else');
               SQL.Add('Begin');
               SQL.Add('  Update JGZL_DK_CFM Set CFMID='''+main.Edit1.Text+''' ,CFMDate=GetDate() where JGNO='''+JGMas.FieldByName('JGNO').AsString+''' ');
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

procedure TJGNOConfirm.CGDetCalcFields(DataSet: TDataSet);
begin

  with JGDet do
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
