unit QC_FinishShoe_Standard_Input1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBTables, DB, GridsEh, DBGridEh, Spin, StdCtrls, Buttons,
  ComCtrls, ExtCtrls;

type
  TQC_FinishShoe_Standard_Input = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    WorkDate: TDateTimePicker;
    DepNO: TEdit;
    BitBtn2: TBitBtn;
    DepNM: TEdit;
    cboSize: TComboBox;
    Button1: TButton;
    chk1: TRadioButton;
    chk2: TRadioButton;
    Panel2: TPanel;
    BB7: TBitBtn;
    BB1: TBitBtn;
    BB5: TBitBtn;
    BB4: TBitBtn;
    Panel3: TPanel;
    DBGridEh1: TDBGridEh;
    QC_FGYY: TQuery;
    DS: TDataSource;
    DepQry: TQuery;
    UpdQC_FGYY: TUpdateSQL;
    Query1: TQuery;
    Query2: TQuery;
    QC_FGYYYYBH: TStringField;
    QC_FGYYZWSM: TStringField;
    QC_FGYYStandard: TFloatField;
    QC_FGYYActual: TFloatField;
    Query3: TQuery;
    DDBHCombo: TComboBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure BB1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BB7Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure DDBHComboChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  QC_FinishShoe_Standard_Input: TQC_FinishShoe_Standard_Input;

implementation

uses main1, QCOnTime_Dep1, FunUnit;

{$R *.dfm}

procedure TQC_FinishShoe_Standard_Input.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TQC_FinishShoe_Standard_Input.FormDestroy(Sender: TObject);
begin
    QC_FinishShoe_Standard_Input:=nil;
end;

procedure TQC_FinishShoe_Standard_Input.BB1Click(Sender: TObject);
begin
  panel1.Visible:=true;
end;

procedure TQC_FinishShoe_Standard_Input.FormCreate(Sender: TObject);
begin
  WorkDate.DateTime := now;
end;

procedure TQC_FinishShoe_Standard_Input.BitBtn2Click(Sender: TObject);
begin
  QCOnTime_Dep:=TQCOnTime_Dep.create(self);
  QCOnTime_Dep.Label3.Caption := 'SN5C';
  QCOnTime_Dep.show;
end;

procedure TQC_FinishShoe_Standard_Input.BB7Click(Sender: TObject);
begin
  close;
end;

procedure TQC_FinishShoe_Standard_Input.Button1Click(Sender: TObject);
begin
  if DepNM.Text='' then
  begin
      if chk1.Checked then
        showmessage('Pls select Department first!')
      else
        showmessage('Vui long chon don vi truoc!');
      abort;
  end;
  if DDBHCombo.Text='' then
   begin
      if chk1.Checked then
        showmessage('Pls select Article first!')
      else
        showmessage('Vui long chon Article truoc!');
      abort;
  end;
  if cboSize.Text='' then
     begin
      if chk1.Checked then
        showmessage('Pls select Size first!')
      else
        showmessage('Vui long chon Size truoc!');
      abort;
  end;
  with QC_FGYY do
  begin
     active:=false;
     sql.Clear;
     if chk1.Checked and not chk2.Checked then
         sql.add('select YYBH,YWSM as ZWSM,CONVERT(float,''0'') as Standard,CONVERT(float,''0'') as Actual from QC_FGYY where gsbh=' + '''' + main.Edit2.text + ''' order by YYBH')
     else
          sql.add('select YYBH,ZWSM,CONVERT(float,''0'') as Standard,CONVERT(float,''0'') as Actual from QC_FGYY where gsbh=' + '''' + main.Edit2.text + ''' order by YYBH');
     
     active:=true;
  end;
  with QC_FGYY do
  begin
      cachedupdates:=true;
      requestlive:=true;
      edit;
  end;
  panel1.Visible:=false;
  bb5.Enabled:=true;
end;

procedure TQC_FinishShoe_Standard_Input.BB5Click(Sender: TObject);
var FGNO: integer;
    ActionTime:TDateTime;
    HaveData:boolean;
begin
 ActionTime:=Time();
 HaveData:=false;
 with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.Add('select * from QC_FGDT');
    sql.Add('Where SCDate = '+#39+formatdatetime('yyyy/MM/dd',WorkDate.Date)+#39);
    sql.add('      and DepNo = '+#39+DepNO.Text+#39);
    sql.add('      and GSBH = '+#39+main.Edit2.Text+#39);
    active:=true;
    if recordcount>0 then
      begin
         with  QC_FGYY do
         begin
            first;
            while not Eof do
              begin
                 if ((FieldByName('Standard').AsInteger>0) and (FieldByName('Actual').AsInteger>0)) then
                  begin
                    query2.Active:=false;
                    query2.SQL.Clear;
                    query2.SQL.Add('insert into QC_FGDTS (FGNO, YYBH, Time, ZLBH, CC, Standard, Actual, UserID, UserDate, YN)');
                    query2.SQL.Add('values ('+inttostr(query1.FieldByName('FGNO').Value)+','+#39+FieldByName('YYBH').AsString+#39+',');
                    query2.SQL.add(''+#39+formatdatetime('HH:MM:SS',ActionTime)+#39',');// time
                    query2.SQL.Add(''''+ DDBHCombo.Text+''','''+ cboSize.Text+''',');
                    query2.sql.add(''+formatfloat('#,##0.#',fieldbyname('Standard').AsFloat)+',');
                    query2.SQL.Add(''+formatfloat('#,##0.#',fieldbyname('Actual').AsFloat)+','+#39+main.Edit1.Text+#39+','+#39+Formatdatetime('YYYY/MM/DD HH:MM:SS',now)+#39+',''1'')');
                    query2.execsql;
                    HaveData:=true;
                  end;
               Next;
              end;
         end;
        Showmessage('Input OK');
      end
    else
      begin
        with query3 do
        begin
           active:=false;
           sql.Clear;
           sql.Add('select top 1 FGNO from QC_FGDT order by FGNO desc');
           active:=true;
           if recordcount>0 then
            begin
              FGNO:=fieldbyname('FGNO').Value+1;
            end
           else
            begin
              FGNO:=1;
            end;
        end;
        with query2 do
        begin
          with QC_FGYY do
          begin
            first;
            while not Eof do
            begin
            if ((FieldByName('Standard').AsInteger>0) and (FieldByName('Actual').AsInteger>0)) then
              begin
                query1.Active:=false;
                query1.SQL.Clear;
                query1.SQL.Add('insert into QC_FGDTS (FGNO, YYBH, Time, ZLBH, CC, Standard, Actual, UserID, UserDate, YN)');
                query1.SQL.Add('values ('+inttostr(FGNO)+','+#39+FieldByName('YYBH').AsString+#39+',');
                query1.SQL.add(''+#39+formatdatetime('HH:MM:SS',ActionTime)+#39',');// time
                query1.SQL.Add(''''+ DDBHCombo.Text+''','''+ cboSize.Text+''',');
                query1.sql.add(''+formatfloat('#,##0.#',fieldbyname('Standard').AsFloat)+',');
                query1.SQL.Add(''+formatfloat('#,##0.#',fieldbyname('Actual').AsFloat)+','+#39+main.Edit1.Text+#39+','+#39+Formatdatetime('YYYY/MM/DD HH:MM:SS',now)+#39+',''1'')');
                query1.execsql;
                HaveData:=true;
              end;
            Next;
            end;
          end;
          //
          if HaveData=true then
          begin
            sql.Clear;
            sql.Add('insert into QC_FGDT (FGNO, SCDate, GSBH, DepNo, UserID, UserDate, YN)');
            sql.add('values ('+inttostr(FGNO)+','''+formatdatetime('yyyy/MM/dd',WorkDate.Date)+''',');
            sql.Add(''+''''+main.edit2.Text+''','''+ DepNO.Text+''',');
            sql.Add(''+#39+main.Edit1.Text+#39+','+#39+Formatdatetime('YYYY/MM/DD HH:MM:SS',now)+#39+',''1'')');
            execsql;
          end;
        end;
        if HaveData=true then Showmessage('Input OK');
      end;

  end;
end;

procedure TQC_FinishShoe_Standard_Input.BB4Click(Sender: TObject);
begin
 BB4.Enabled:=false;
  if FileExists(ExtractFilePath(Application.ExeName)+'\Keyboard.exe')=false then
    CopyFile(Pchar('\\'+main.ServerIP+'\d$\liy_erp\KeyBoard.exe'),Pchar(ExtractFilePath(Application.ExeName)+'\Keyboard.exe'),false);

  if FileExists(ExtractFilePath(Application.ExeName)+'\Keyboard.exe') then
  begin
       funcObj.StopAP(ExtractFilePath(Application.ExeName)+'\Keyboard.exe');
       funcObj.StartAP(ExtractFilePath(Application.ExeName)+'\Keyboard.exe');
  end;
  BB4.Enabled:=true;
end;

procedure TQC_FinishShoe_Standard_Input.DDBHComboChange(Sender: TObject);
begin
   if DDBHComBo.Text<>'' then
   begin
      with DepQry do
      begin
        Active:=true;
        SQL.Clear;
        SQL.Add('Select CC from DDZLS where DDBH='''+DDBHComBo.Text+'''');
        Active:=true;
        cboSize.Items.Clear;
        while not Eof do
        begin
          cboSize.Items.Add(FieldByName('CC').AsString);
          Next;
        end;
        cboSize.ItemIndex:=0;
        Active:=false;
      end;
   end;
end;

end.
