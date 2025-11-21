unit QCParamtConfig;

interface

uses
  main1,Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, DBTables;

type
  TQC_Parmat_Config = class(TForm)
    QCR: TQuery;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    tbFFT: TEdit;
    BtFFTSave: TButton;
    Label2: TLabel;
    GroupBox2: TGroupBox;
    Label4: TLabel;
    Label5: TLabel;
    tbSubject1: TEdit;
    GroupBox3: TGroupBox;
    Label7: TLabel;
    Label8: TLabel;
    tbSubject2: TEdit;
    QueryUpdate: TQuery;
    tbMsg1: TMemo;
    tbMsg2: TMemo;
    GroupBox4: TGroupBox;
    cbLean1: TComboBox;
    Label9: TLabel;
    Label3: TLabel;
    tbEmail1: TMemo;
    Label10: TLabel;
    BtEmail1: TButton;
    GroupBox5: TGroupBox;
    tbEmail2: TMemo;
    BtEmail2: TButton;
    Label11: TLabel;
    cbLean2: TComboBox;
    Label12: TLabel;
    Label13: TLabel;
    GroupBox6: TGroupBox;
    Label6: TLabel;
    Label14: TLabel;
    tbSubject3: TEdit;
    tbMsg3: TMemo;
    GroupBox7: TGroupBox;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    cbLean3: TComboBox;
    tbEmail3: TMemo;
    btEmail3: TButton;
    btMsg1: TButton;
    btMsg2: TButton;
    btMsg3: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure BtFFTSaveClick(Sender: TObject);
    procedure BtEmail1Click(Sender: TObject);
    procedure BtEmail2Click(Sender: TObject);
    procedure btMsg1Click(Sender: TObject);
    procedure btMsg2Click(Sender: TObject);
    procedure btMsg3Click(Sender: TObject);
    procedure btEmail3Click(Sender: TObject);
    procedure InsertLevelMailMsg(dpid,subject,msg :string);
    procedure InsertLeanMailList(level,lean,maillist :string);
    procedure GetMailMsg();
    procedure GetMailList();
    procedure SetLeanCombobox();
    procedure cbLean1Change(Sender: TObject);
    procedure cbLean2Change(Sender: TObject);
    procedure cbLean3Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  QC_Parmat_Config: TQC_Parmat_Config;
  fftIndex: string;
  AIndex: string;
  BIndex: string;
  CIndex: string;
  CombArray :Array[1..9] of string=('A02', 'A03', 'A07', 'A08', 'A09', 'A11', 'A12', 'A15', 'A16');
  ArrayA  : Array[1..10] of string;
  ArrayB  : Array[1..10] of string;
  ArrayC  : Array[1..10] of string;
implementation

{$R *.dfm}

procedure TQC_Parmat_Config.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  QC_Parmat_Config := nil;
  Action := caFree;
end;

procedure TQC_Parmat_Config.FormCreate(Sender: TObject);
begin
  SetLeanCombobox();
  GetMailMsg();
  GetMailList();
end;

procedure TQC_Parmat_Config.SetLeanCombobox();
var i:Integer;
begin
  cbLean1.Items.Clear;
  cbLean2.Items.Clear;
  cbLean3.Items.Clear;
  tbEmail1.Text:='';
  tbEmail1.Text:=tbEmail1.Text+'ID:Email'+AnsiString(#13#10);
  tbEmail1.Text:=tbEmail1.Text+'11001:jocker1 <Porter.Wang@tyxuan.com.vn>'+AnsiString(#13#10);
  tbEmail1.Text:=tbEmail1.Text+'11002:jocker2 <Porter.Wang@tyxuan.com.vn>'+AnsiString(#13#10);

  tbEmail2.Text:='';
  tbEmail3.Text:='';
  with QCR do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT [DepName] FROM [LIY_ERP].[dbo].[BDepartment] WHERE Xuong IN (''A02'', ''A03'', ''A07'', ''A08'', ''A09'', ''A11'', ''A12'', ''A15'', ''A16'') AND  GXLB = ''A''');
    //showmessage(SQL.Text);
    Active := true;
    while not Eof do
    begin
      cbLean1.Items.Add(QCR.Fields[0].AsString);
      cbLean2.Items.Add(QCR.Fields[0].AsString);
      cbLean3.Items.Add(QCR.Fields[0].AsString);
      QCR.Next;
    end;
    end;
end;

procedure TQC_Parmat_Config.GetMailMsg();
begin
  with QCR do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT [dpid],[name],[v1],[v2],[v3] FROM [LIY_ERP].[dbo].[DpParamConfig] where [name] in(''MailMsg'',''FTTLimit'')');
    //showmessage(SQL.Text);
    Active := true;
    while not Eof do
    begin
      if Fields[1].AsString = 'FTTLimit' then
      begin
        tbFFT.Text := QCR.Fields[2].AsString;
        fftIndex := QCR.Fields[0].AsString;
      end;
      if Fields[2].AsString = 'A' then
      begin
        AIndex := QCR.Fields[0].AsString;
        tbSubject1.Text := QCR.Fields[3].AsString;
        tbMsg1.Text := QCR.Fields[4].AsString;
      end;
      if Fields[2].AsString = 'B' then
      begin
        BIndex := QCR.Fields[0].AsString;
        tbSubject2.Text := QCR.Fields[3].AsString;
        tbMsg2.Text := QCR.Fields[4].AsString;
      end;
      if Fields[2].AsString = 'C' then
      begin
        CIndex := QCR.Fields[0].AsString;
        tbSubject3.Text := QCR.Fields[3].AsString;
        tbMsg3.Text := QCR.Fields[4].AsString;
      end;
      QCR.Next;
    end;
  end;
end;

procedure TQC_Parmat_Config.GetMailList();
var
  A1,B1,C1,i : Integer;
begin
  with QCR do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT [v1],[v2],[v3] FROM [LIY_ERP].[dbo].[DpParamConfig] where [dpname]=''QC'' and v9=''1'' and [name] =''MailList'' order by v1,v2');
    //showmessage(SQL.Text);
    Active := true;
    while not Eof do
    begin
      if Fields[0].AsString = 'A' then
      begin
        for i:=0 to cbLean1.Items.Count-1 do
        begin
          if cbLean1.Items[i]=QCR.Fields[1].AsString then
             ArrayA[i]:= QCR.Fields[2].AsString;
        end;
      end;
      if Fields[0].AsString = 'B' then
      begin
        for i:=0 to cbLean2.Items.Count-1 do
        begin
          if cbLean2.Items[i]=QCR.Fields[1].AsString then
             ArrayB[i]:= QCR.Fields[2].AsString;
        end;
      end;
      if Fields[0].AsString = 'C' then
      begin
        for i:=0 to cbLean3.Items.Count-1 do
        begin
          if cbLean3.Items[i]=QCR.Fields[1].AsString then
             ArrayC[i]:= QCR.Fields[2].AsString;
        end;
      end;
      QCR.Next;
    end;
  end;
end;

procedure TQC_Parmat_Config.InsertLevelMailMsg(dpid,subject,msg :string);
begin
    QueryUpdate.Active := false;
    QueryUpdate.SQL.Clear;
    QueryUpdate.SQL.Add('UPDATE [LIY_ERP].[dbo].[DpParamConfig] SET [v2] = ''' + subject + ''',[v3] = ''' + msg +''',[USERID]='''+main1.main.Edit1.Text+''',[USERDATE]=getdate() WHERE dpid=' + dpid);
    showmessage(QueryUpdate.SQL.Text);
    QueryUpdate.ExecSQL();
end;

procedure TQC_Parmat_Config.InsertLeanMailList(level,lean,maillist :string);
begin
if lean<>'' then begin
  with QueryUpdate do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('if (SELECT count(*) FROM [LIY_ERP].[dbo].[DpParamConfig] where [name] =''MailList'' and v1='''+level+''' and v2='''+lean+''')=0');
	  SQL.Add(' INSERT INTO [LIY_ERP].[dbo].[DpParamConfig] ([dpname],[name],[v1],[v2],[v3],[USERID])');
    SQL.Add(' VALUES (''QC'',''MailList'','''+level+''','''+lean+''','''+maillist+''','''+main1.main.Edit1.Text+''')');
    SQL.Add(' else UPDATE [LIY_ERP].[dbo].[DpParamConfig] SET [v3] = '''+maillist+''',');
    SQL.Add('[USERID]='''+main1.main.Edit1.Text+''',[USERDATE]=getdate()');
    SQL.Add(' WHERE [name] =''MailList'' and v1='''+level+''' and v2='''+lean+'''');
    showmessage(QueryUpdate.SQL.Text);
    ExecSQL();
    GetMailList();
  end;
end;
end;
procedure TQC_Parmat_Config.BtFFTSaveClick(Sender: TObject);
begin
  QueryUpdate.Active := false;
  QueryUpdate.SQL.Clear;
  QueryUpdate.SQL.Add('UPDATE [LIY_ERP].[dbo].[DpParamConfig] SET [v1] = ''' + tbFFT.Text +''',[USERID]='''+main1.main.Edit1.Text+''',[USERDATE]=getdate() WHERE dpid=' + fftIndex);
  showmessage(QueryUpdate.SQL.Text);
  QueryUpdate.ExecSQL();
end;

procedure TQC_Parmat_Config.BtEmail1Click(Sender: TObject);
begin
  InsertLeanMailList('A',cbLean1.Text,tbEmail1.Text);
end;

procedure TQC_Parmat_Config.BtEmail2Click(Sender: TObject);
begin
  InsertLeanMailList('B',cbLean2.Text,tbEmail2.Text);
end;

procedure TQC_Parmat_Config.btEmail3Click(Sender: TObject);
begin
  InsertLeanMailList('C',cbLean3.Text,tbEmail3.Text);
end;

procedure TQC_Parmat_Config.btMsg1Click(Sender: TObject);
begin
  InsertLevelMailMsg(AIndex,tbSubject1.Text,tbMsg1.Text);
end;

procedure TQC_Parmat_Config.btMsg2Click(Sender: TObject);
begin
  InsertLevelMailMsg(BIndex,tbSubject2.Text,tbMsg2.Text);
end;

procedure TQC_Parmat_Config.btMsg3Click(Sender: TObject);
begin
  InsertLevelMailMsg(CIndex,tbSubject3.Text,tbMsg3.Text);
end;

procedure TQC_Parmat_Config.cbLean1Change(Sender: TObject);
begin
  if cbLean1.ItemIndex>-1 then
  begin
    tbEmail1.Text:=ArrayA[cbLean1.ItemIndex];
  end;
end;

procedure TQC_Parmat_Config.cbLean2Change(Sender: TObject);
begin
   if cbLean2.ItemIndex>-1 then
  begin
    tbEmail2.Text:=ArrayB[cbLean2.ItemIndex];
  end;
end;

procedure TQC_Parmat_Config.cbLean3Change(Sender: TObject);
begin
if cbLean3.ItemIndex>-1 then
  begin
    tbEmail3.Text:=ArrayC[cbLean3.ItemIndex];
  end;
end;

end.
