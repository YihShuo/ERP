unit CGNOConfirm21;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, StdCtrls, DBCtrls, GridsEh, DBGridEh, ComCtrls,
  Mask, Buttons, ExtCtrls, Comobj, IniFiles;

type
  TCGNOConfirm2 = class(TForm)
    TmpQry: TQuery;
    CGMas: TQuery;
    CGMasCGNO: TStringField;
    CGMasZSBH: TStringField;
    CGMasZSYWJC: TStringField;
    CGMasCGDate: TDateTimeField;
    CGMasUSERDATE: TDateTimeField;
    CGMasUSERID: TStringField;
    CGMasCGLX: TStringField;
    CGMasYN: TStringField;
    CGMasGSBH: TStringField;
    CGMasPURPOSE: TStringField;
    CGMasPMark: TIntegerField;
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
    CGMasCFMID: TStringField;
    CGMasCFMDATE: TDateTimeField;
    CGMasCFMID1: TStringField;
    CGMasCFMDATE1: TDateTimeField;
    DS4: TDataSource;
    CGDet: TQuery;
    CGDetCGNO: TStringField;
    CGDetCLBH: TStringField;
    CGDetYWPM: TStringField;
    CGDetDWBH: TStringField;
    g: TCurrencyField;
    CGDetQty: TCurrencyField;
    CGDetUSPrice: TCurrencyField;
    CGDetACCUS: TFloatField;
    CGDetVNPrice: TCurrencyField;
    CGDetACCVN: TCurrencyField;
    CGDetMemo: TStringField;
    CGDetYQDate: TDateTimeField;
    CGDetCFMDate: TDateTimeField;
    CGDetZWPM: TStringField;
    CGDetBJNO: TStringField;
    CGDetUSERID: TStringField;
    CGDetUSERDate: TDateTimeField;
    CGDetYN: TStringField;
    CGDetQUSPrice: TFloatField;
    CGDetQVNPrice: TCurrencyField;
    Panel2: TPanel;
    dbgrid4: TDBGridEh;
    Splitter2: TSplitter;
    DBGrid1: TDBGridEh;
    CGS: TQuery;
    CGSCGNO: TStringField;
    CGSCLBH: TStringField;
    CGSZLBH: TStringField;
    CGSArticle: TStringField;
    CGSXieMing: TStringField;
    CGSXXCC: TStringField;
    CGSStage: TStringField;
    CGSQty: TCurrencyField;
    CGSCLSL: TCurrencyField;
    CGSUSERDate: TDateTimeField;
    CGSUSERID: TStringField;
    CGSYN: TStringField;
    CGSYQDate: TDateTimeField;
    CGSCFMDate: TDateTimeField;
    CGSYWPM: TStringField;
    DS5: TDataSource;
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
  CGNOConfirm2: TCGNOConfirm2;
  NDate:TDate;

implementation

uses main1, FunUnit;

{$R *.dfm}

procedure TCGNOConfirm2.ReadIni();
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
  TCurrencyField(CGDet.FieldByName('VNPrice')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(CGDet.FieldByName('ACCVN')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(CGDet.FieldByName('QVNPrice')).DisplayFormat:=VNPrice_DiplayFormat;
end;

procedure TCGNOConfirm2.Button1Click(Sender: TObject);
begin

  with CGMas do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select CGZL.* ,ZSZL.ZSYWJC,IsNull(CGZL_DK_CFM.CFMID,''NO'') as CFMID,CGZL_DK_CFM.CFMDATE,IsNull(CGZL_DK_CFM.CFMID1,''NO'') as CFMID1,CGZL_DK_CFM.CFMDATE1');
    SQL.Add('from CGZL ');
    SQL.Add('left join ZSZL on CGZL.ZSBH=ZSZL.ZSDH ');
    SQL.Add('Left join ZSZL_DEV on ZSZL_DEV.zsdh=ZSZL.zsdh and ZSZL_DEV.GSBH='''+main.Edit2.Text+''' ');
    SQL.Add('Left join CGZL_DK_CFM on  CGZL.CGNO=CGZL_DK_CFM.CGNO');
    SQL.Add('where IsNull(CGZL_DK_CFM.CFMID,''NO'')<>''NO''  and CGZL.CGNO like '''+Edit1.Text+'%''');
    SQL.Add('      and convert(smalldatetime,convert(varchar,CGZL.USERDATE,111))  between ');
    SQL.add('      '''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''' and  '''+formatdatetime('yyyy/MM/dd',DTP2.Date) +'''');
    SQL.Add('      and CGZL.GSBH='''+main.Edit2.Text+'''');
    if CheckBox1.Checked = true then
      SQL.Add('      and IsNull(CGZL_DK_CFM.CFMID1,''NO'')<>''NO'' ')
    else
      SQL.Add('      and IsNull(CGZL_DK_CFM.CFMID1,''NO'')=''NO'' ');
    SQL.Add('order by CGZL.CGNO DESC');
    Active:=true;
  end;
  //
  CGDet.Active:=true;
  CGS.Active:=true;
end;

procedure TCGNOConfirm2.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=CaFree;
end;

procedure TCGNOConfirm2.FormDestroy(Sender: TObject);
begin
  CGNOConfirm2:=nil;
end;

procedure TCGNOConfirm2.FormCreate(Sender: TObject);
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

procedure TCGNOConfirm2.Button3Click(Sender: TObject);
begin

  if CGMas.Active=false then Exit;
  if CGMas.RecordCount=0 then Exit;
  if CGDet.Active=false then Exit;
  if CGDet.RecordCount=0 then Exit;
  if Messagedlg('Confirm or not ?',mtinformation,[mbYes,mbNo],0)=mrYes then
  begin
    try
      with CGMas do
      begin
        if fieldbyname('CFMID1').Value='NO' then
        begin
           with TmpQry do
           begin
             Active:=false;
             SQL.Clear;
             SQL.Add('IF NOT EXISTS (Select CGNO from CGZL_DK_CFM where CGNO='''+CGMas.FieldByName('CGNO').AsString+''')');
             SQL.Add('Begin');
             SQL.Add('  Insert into CGZL_DK_CFM (CGNO, CFMID1, CFMDATE1) Values ('''+CGMas.FieldByName('CGNO').AsString+''','''+main.Edit1.Text+''',GetDate())');
             SQL.Add('End Else');
             SQL.Add('Begin');
             SQL.Add('  Update CGZL_DK_CFM Set CFMID1='''+main.Edit1.Text+''' ,CFMDate1=GetDate() where CGNO='''+CGMas.FieldByName('CGNO').AsString+''' ');
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

procedure TCGNOConfirm2.Button4Click(Sender: TObject);
begin

  try
    with CGMas do
    begin
      with TmpQry do
      begin
         Active:=false;
         SQL.Clear;
         SQL.Add('IF NOT EXISTS (Select CGNO from CGZL_DK_CFM where CGNO='''+CGMas.FieldByName('CGNO').AsString+''')');
         SQL.Add('Begin');
         SQL.Add('  Insert into CGZL_DK_CFM (CGNO, CFMID, CFMDATE, CFMID1, CFMDATE1) Values ('''+CGMas.FieldByName('CGNO').AsString+''',''NO'',GetDate(),''NO'',GetDate() )');
         SQL.Add('End Else');
         SQL.Add('Begin');
         SQL.Add('  Update CGZL_DK_CFM Set CFMID=''NO'',CFMID1=''NO'' ,CFMDate=GetDate(),CFMDate1=GetDate()  where CGNO='''+CGMas.FieldByName('CGNO').AsString+''' ');
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

procedure TCGNOConfirm2.Button5Click(Sender: TObject);
begin
  if CGMas.Active=false then Exit;
  if CGMas.RecordCount=0 then Exit;
  if CGDet.Active=false then Exit;
  if CGDet.RecordCount=0 then Exit;
  if messagedlg('Confirm All or not ?',mtinformation,[mbYes,mbNo],0)=mrYes then
  begin
    try
      CGMas.First;
      with CGMas do
      begin
        while not CGMas.Eof do
        begin
          if fieldbyname('CFMID1').Value='NO' then
          begin
             with TmpQry do
             begin
               Active:=false;
               SQL.Clear;
               SQL.Add('IF NOT EXISTS (Select CGNO from CGZL_DK_CFM where CGNO='''+CGMas.FieldByName('CGNO').AsString+''')');
               SQL.Add('Begin');
               SQL.Add('  Insert into CGZL_DK_CFM (CGNO, CFMID1, CFMDATE1) Values ('''+CGMas.FieldByName('CGNO').AsString+''','''+main.Edit1.Text+''',GetDate())');
               SQL.Add('End Else');
               SQL.Add('Begin');
               SQL.Add('  Update CGZL_DK_CFM Set CFMID1='''+main.Edit1.Text+''' ,CFMDate1=GetDate() where CGNO='''+CGMas.FieldByName('CGNO').AsString+''' ');
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

procedure TCGNOConfirm2.CGDetCalcFields(DataSet: TDataSet);
begin

  with CGDet do
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
