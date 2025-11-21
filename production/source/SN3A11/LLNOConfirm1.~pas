unit LLNOConfirm1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, StdCtrls, DBCtrls, GridsEh, DBGridEh, ComCtrls,
  Mask, Buttons, ExtCtrls, Comobj, IniFiles;

type
  TLLNOConfirm = class(TForm)
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
    ENMasLLNO: TStringField;
    ENMasDepID: TStringField;
    ENMasDepName: TStringField;
    ENMasGSBH: TStringField;
    ENMasCKBH: TStringField;
    ENMasCFMID: TStringField;
    ENMasUSERDATE: TDateTimeField;
    ENMasUSERID: TStringField;
    ENMasCFMDATE: TDateTimeField;
    ENMasYN: TStringField;
    ENMasMEMO: TStringField;
    ENMasLLCFMID: TStringField;
    ENMasLLCFMDate: TDateTimeField;
    ENMasCFMID1: TStringField;
    ENMasCFMDATE1: TDateTimeField;
    ENMasCFMID2: TStringField;
    ENMasCFMDATE2: TDateTimeField;
    ENDet: TQuery;
    ENDetLLNO: TStringField;
    ENDetCLBH: TStringField;
    ENDetQty: TCurrencyField;
    ENDetTempQty: TFloatField;
    ENDetUSERID: TStringField;
    ENDetUSERDATE: TDateTimeField;
    ENDetYN: TStringField;
    ENDetYWPM: TStringField;
    ENDetZWPM: TStringField;
    ENDetDWBH: TStringField;
    ENDetSCBH: TStringField;
    ENDetCNO: TStringField;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  LLNOConfirm: TLLNOConfirm;
  NDate:TDate;

implementation

uses main1, FunUnit;

{$R *.dfm}

procedure TLLNOConfirm.Button1Click(Sender: TObject);
begin

  with ENMas do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Select KCLL.LLNO,KCLL.GSBH,KCLL.DepID,KCLL.CKBH,BDepartment.DepName,KCLL.MEMO,KCLL.USERID,KCLL.USERDATE,KCLL.CFMID As LLCFMID,KCLL.CFMDATE As LLCFMDATE, ');
    SQL.Add('       IsNull(KCLL_DK_CFM.CFMID,''NO'') as CFMID,KCLL_DK_CFM.CFMDATE,IsNull(KCLL_DK_CFM.CFMID1,''NO'') as CFMID1,KCLL_DK_CFM.CFMDATE1,IsNull(KCLL_DK_CFM.CFMID2,''NO'') as CFMID2,KCLL_DK_CFM.CFMDATE2,KCLL.YN  ');
    SQL.Add('from KCLL');
    SQL.Add('left join BDepartment on BDepartment.ID=KCLL.DepID');
    SQL.Add('Left join KCLL_DK_CFM on KCLL_DK_CFM.LLNO=KCLL.LLNO');
    SQL.Add('where  KCLL.LLNO like '''+Edit1.Text+'%'' ');
    sql.add('      and convert(smalldatetime,convert(varchar,KCLL.USERDATE,111)) between ');
    sql.add('          '''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date) +''' ');
    sql.add('      and KCLL.GSBH='+''''+main.Edit2.Text+'''');
    sql.add('      and IsNull(KCLL.CFMID,''NO'')<>''NO'' ');
    if CheckBox1.Checked = true then
      SQL.Add('      and IsNull(KCLL_DK_CFM.CFMID,''NO'')<>''NO'' ')
    else
      SQL.Add('      and IsNull(KCLL_DK_CFM.CFMID,''NO'')=''NO'' ');
    sql.Add('order by KCLL.LLNO DESC');
    //
    Active:=true;
  end;
  //
  ENDet.Active:=true;

end;

procedure TLLNOConfirm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=CaFree;
end;

procedure TLLNOConfirm.FormDestroy(Sender: TObject);
begin
  LLNOConfirm:=nil;
end;

procedure TLLNOConfirm.FormCreate(Sender: TObject);
begin
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
end;

procedure TLLNOConfirm.Button3Click(Sender: TObject);
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
        if fieldbyname('CFMID').Value='NO' then
        begin
           with TmpQry do
           begin
             Active:=false;
             SQL.Clear;
             SQL.Add('IF NOT EXISTS (Select LLNO from KCLL_DK_CFM where LLNO='''+ENMas.FieldByName('LLNO').AsString+''')');
             SQL.Add('Begin');
             SQL.Add('  Insert into KCLL_DK_CFM (LLNO, CFMID, CFMDATE) Values ('''+ENMas.FieldByName('LLNO').AsString+''','''+main.Edit1.Text+''',GetDate())');
             SQL.Add('End Else');
             SQL.Add('Begin');
             SQL.Add('  Update KCLL_DK_CFM Set CFMID='''+main.Edit1.Text+''' ,CFMDate=GetDate() where LLNO='''+ENMas.FieldByName('LLNO').AsString+''' ');
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

procedure TLLNOConfirm.Button4Click(Sender: TObject);
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
         SQL.Add('IF NOT EXISTS (Select LLNO from KCLL_DK_CFM where LLNO='''+ENMas.FieldByName('LLNO').AsString+''')');
         SQL.Add('Begin');
         SQL.Add('  Insert into KCLL_DK_CFM (LLNO, CFMID, CFMDATE) Values ('''+ENMas.FieldByName('LLNO').AsString+''',''NO'',GetDate())');
         SQL.Add('End Else');
         SQL.Add('Begin');
         SQL.Add('  Update KCLL_DK_CFM Set CFMID=''NO'' ,CFMDate=GetDate() where LLNO='''+ENMas.FieldByName('LLNO').AsString+''' ');
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

procedure TLLNOConfirm.Button5Click(Sender: TObject);
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
          if fieldbyname('CFMID').Value='NO' then
          begin
             with TmpQry do
             begin
               Active:=false;
               SQL.Clear;
               SQL.Add('IF NOT EXISTS (Select LLNO from KCLL_DK_CFM where LLNO='''+ENMas.FieldByName('LLNO').AsString+''')');
               SQL.Add('Begin');
               SQL.Add('  Insert into KCLL_DK_CFM (LLNO, CFMID, CFMDATE) Values ('''+ENMas.FieldByName('LLNO').AsString+''','''+main.Edit1.Text+''',GetDate())');
               SQL.Add('End Else');
               SQL.Add('Begin');
               SQL.Add('  Update KCLL_DK_CFM Set CFMID='''+main.Edit1.Text+''' ,CFMDate=GetDate() where LLNO='''+ENMas.FieldByName('LLNO').AsString+''' ');
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

end.
