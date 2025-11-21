unit HokaRubberProdWeight1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, OleCtrls, MSCommLib_TLB, StdCtrls, DB, DBTables,
  GridsEh, DBGridEh, ComCtrls;

type
  THokaRubberProdWeight = class(TForm)
    MSComm1: TMSComm;
    Panel1: TPanel;
    Label1: TLabel;
    ComboBox1: TComboBox;
    Label2: TLabel;
    ComboBox2: TComboBox;
    Label3: TLabel;
    ComboBox3: TComboBox;
    tmpQry: TQuery;
    Label4: TLabel;
    ComboBox4: TComboBox;
    Panel2: TPanel;
    Panel3: TPanel;
    Label5: TLabel;
    ComboBox5: TComboBox;
    Label6: TLabel;
    ComboBox6: TComboBox;
    Query1: TQuery;
    Query1LBDH: TStringField;
    Query1YWSM: TStringField;
    DS1: TDataSource;
    DS2: TDataSource;
    Query2: TQuery;
    Query2LBDH: TStringField;
    Query2YWSM: TStringField;
    Query3: TQuery;
    Query3LBDH: TStringField;
    Query3YWSM: TStringField;
    Label7: TLabel;
    Label8: TLabel;
    DBGridEh4: TDBGridEh;
    Timer1: TTimer;
    WeightLabel: TLabel;
    StdWeightLabel: TLabel;
    Image1: TImage;
    DS4: TDataSource;
    Query4: TQuery;
    Query4WorkDate: TDateTimeField;
    Query4Class: TStringField;
    Query4DMBH: TStringField;
    Query4BWBH: TStringField;
    Query4Stage: TStringField;
    Query4SIZE: TStringField;
    Query4LRSide: TStringField;
    Query4GSBH: TStringField;
    Query4UserID: TStringField;
    Query4UserDate: TDateTimeField;
    Query4YN: TStringField;
    Query4DMBHSM: TStringField;
    Query4BWBHSM: TStringField;
    Query4StageSM: TStringField;
    UpHKDM_SMZL: TUpdateSQL;
    Query4Weight: TFloatField;
    SIZEQuery: TQuery;
    Query4WorkNO: TAutoIncField;
    Splitter1: TSplitter;
    SGEdit: TEdit;
    Label9: TLabel;
    Memo1: TMemo;
    Button1: TButton;
    DTP1: TDateTimePicker;
    SLLabel: TLabel;
    Label11: TLabel;
    Image2: TImage;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure ComboBox4Change(Sender: TObject);
    procedure ComboBox6Change(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure ComboBox5Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure ComboBox3Change(Sender: TObject);
    procedure DTP1Change(Sender: TObject);
  private
    DMBH,BWBH,ClassStr,Stage,SIZE,LRSide:String;
    { Private declarations }
    procedure refreshComboBox2();
    procedure refreshComboBox3();
    procedure RefreshComboBox6();
    procedure InitUpdateSQL();
    procedure ToadyQuantity();
    procedure ToadyQuantity1();
  public
    { Public declarations }
  end;

var
  HokaRubberProdWeight: THokaRubberProdWeight;

implementation
  uses main1, FunUnit;
{$R *.dfm}

procedure THokaRubberProdWeight.InitUpdateSQL();
begin
  //
  UpHKDM_SMZL.InsertSQL.Clear;
  UpHKDM_SMZL.InsertSQL.Add('insert into '+main.LIY_DD+'.dbo.HKDM_SMZL');
  UpHKDM_SMZL.InsertSQL.Add('  (WorkDate, Class, DMBH ,BWBH, Stage, SIZE, LRSide, GSBH, Weight, USERID, USERDATE, YN ) ');
  UpHKDM_SMZL.InsertSQL.Add('values');
  UpHKDM_SMZL.InsertSQL.Add('  (:WorkDate, :Class, :DMBH ,:BWBH, :Stage, :SIZE, :LRSide, :GSBH, :Weight, :USERID, :USERDATE, :YN )');
  //
end;

procedure THokaRubberProdWeight.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=CaFree;
end;

procedure THokaRubberProdWeight.FormDestroy(Sender: TObject);
begin
  HokaRubberProdWeight:=nil;
end;

procedure THokaRubberProdWeight.RefreshComboBox2();
begin

 ComboBox2.Clear;
 with Query2 do
 begin
   Active:=false;
   SQL.Clear;
   SQL.Add('Select LBDH,YWSM from '+main.LIY_DD+'.dbo.HKDM_LBZLS HKDM_LBZLS where LB=:LBDH and layer=2 ');
   Active:=true;
   //funcObj.WriteErrorLog(sql.Text);
   while not Eof do
   begin
      ComboBox2.Items.add(FieldByName('YWSM').AsString);
      Next;
   end;
 end;
 if ComboBox2.Items.Count>0 then ComboBox2.ItemIndex:=0;
 if Query2.Locate('YWSM',ComboBox2.Text,[]) then BWBH:=Query2.FieldByName('LBDH').AsString;

end;

procedure THokaRubberProdWeight.RefreshComboBox3();
begin

 ComboBox3.Clear;
 with Query3 do
 begin
   Active:=false;
   SQL.Clear;
   SQL.Add('Select LBDH,YWSM from '+main.LIY_DD+'.dbo.HKDM_LBZLS HKDM_LBZLS where LB=:LBDH and layer=3 ');
   Active:=true;
   //funcObj.WriteErrorLog(sql.Text);
   while not Eof do
   begin
      ComboBox3.Items.add(FieldByName('YWSM').AsString);
      Next;
   end;
 end;
 if ComboBox3.Items.Count>0 then ComboBox3.ItemIndex:=0;
 if Query3.Locate('YWSM',ComboBox3.Text,[]) then Stage:=Query3.FieldByName('LBDH').AsString;

end;

procedure THokaRubberProdWeight.FormCreate(Sender: TObject);
begin
 DTP1.Date:=Date();
 InitUpdateSQL();
 //
 ComboBox1.Clear;
 with Query1 do
 begin
   Active:=false;
   SQL.Clear;
   SQL.Add('Select LBDH,YWSM from '+main.LIY_DD+'.dbo.HKDM_LBZLS where lb=''1''  and Layer=1 ');
   Active:=true;
   while not Eof do
   begin
      ComboBox1.Items.add(FieldByName('YWSM').AsString);
      Next;
   end;
 end;
 if ComboBox1.Items.Count>0 then ComboBox1.ItemIndex:=0;
 if Query1.Locate('YWSM',ComboBox1.Text,[]) then DMBH:=Query1.FieldByName('LBDH').AsString;
 //
 RefreshComboBox2();
 RefreshComboBox3();
 //
 ClassStr:=Copy(ComboBox4.Text,1,1);  //Ca
 LRSide:=Copy(ComboBox5.Text,1,1);     // Bottom Lef Side & Right Side
 SIZE:=ComboBox6.Text;
 with SIZEQuery do
 begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Select LBDH,SWeightL,SWeightR from '+main.LIY_DD+'.dbo.HKDM_LBZLS_SIZE where SIZE='''+SIZE+''' and LBDH='''+Stage+''' ');
    //funcObj.WriteErrorLog(sql.Text);
    Active:=true;
 end;
 //ComPort;
 try
   MSComm1.PortOpen := true;
 except
   on E:Exception do
   begin
      Showmessage(E.Message);
   end;
 end;
 with Query4 do
 begin
   Active:=false;
   SQL.Clear;
   SQL.Add('Select HKDM_SMZL.*,LBZLS1.YWSM as DMBHSM,LBZLS2.YWSM as BWBHSM,LBZLS3.YWSM as StageSM ');
   SQL.Add('from '+main.LIY_DD+'.dbo.HKDM_SMZL HKDM_SMZL');
   SQL.Add('left join '+main.LIY_DD+'.dbo.HKDM_LBZLS LBZLS1 on LBZLS1.LBDH=HKDM_SMZL.DMBH and LBZLS1.Layer=1 and LB=''1''  ');
   SQL.Add('left join '+main.LIY_DD+'.dbo.HKDM_LBZLS LBZLS2 on LBZLS2.LBDH=HKDM_SMZL.BWBH and LBZLS1.Layer=2 ');
   SQL.Add('left join '+main.LIY_DD+'.dbo.HKDM_LBZLS LBZLS3 on LBZLS3.LBDH=HKDM_SMZL.Stage and LBZLS1.Layer=3 ');
   SQL.Add('where 1=2');
 end;
 Query4.Active:=true;
 //
 ToadyQuantity();
 Timer1.Enabled:=true;
end;

procedure THokaRubberProdWeight.ComboBox1Change(Sender: TObject);
begin
  if Query1.Locate('YWSM',ComboBox1.Text,[]) then DMBH:=Query1.FieldByName('LBDH').AsString;
  RefreshComboBox2();
  RefreshComboBox3();
  RefreshComboBox6();
  ToadyQuantity();
  //
  
end;

procedure THokaRubberProdWeight.ComboBox4Change(Sender: TObject);
begin
  ClassStr:=Copy(ComboBox4.Text,1,1);
  ToadyQuantity();
end;

procedure THokaRubberProdWeight.RefreshComboBox6();
begin
  SIZE:=ComboBox6.Text;
  with SIZEQuery do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Select LBDH,SWeightL,SWeightR,Std_SG from '+main.LIY_DD+'.dbo.HKDM_LBZLS_SIZE where SIZE='''+SIZE+''' and LBDH='''+Stage+''' ');
    Active:=true;
    if RecordCount>0 then
      if FieldByName('Std_SG').AsString<>'' then
    SGEdit.Text:=FieldByName('Std_SG').AsString;
  end;
end;
procedure THokaRubberProdWeight.ComboBox6Change(Sender: TObject);
begin
  RefreshComboBox6();
  ToadyQuantity();
end;

procedure THokaRubberProdWeight.ComboBox2Change(Sender: TObject);
begin
  if Query2.Locate('YWSM',ComboBox2.Text,[]) then BWBH:=Query2.FieldByName('LBDH').AsString;
  RefreshComboBox3();
  RefreshComboBox6();
  ToadyQuantity();
end;

procedure THokaRubberProdWeight.Timer1Timer(Sender: TObject);
begin
  try
  if ((MSComm1.PortOpen=true) and (MSComm1.InBufferCount>0))   then
  begin
    Memo1.text := MSComm1.Input;                                    // 將電子秤 print 按鈕的輸出資料放到 memo1
    MSComm1.InBufferCount := 0;                                     // 清除 MSComm 暫存
    WeightLabel.Caption := trim( Copy(Memo1.Lines.ValueFromIndex[0],7, Length(Memo1.Lines.ValueFromIndex[1])-8) );
    WeightLabel.Caption  := StringReplace(WeightLabel.Caption, 'g', '',[rfReplaceAll, rfIgnoreCase]);
    if trim(WeightLabel.Caption)<>'' then
    begin
      //
      StdWeightLabel.Caption:='0';
      if LRSide='1' then
      begin
        if  SIZEQuery.FieldByName('SWeightL').AsString<>'' then
        StdWeightLabel.Caption:=SIZEQuery.FieldByName('SWeightL').AsString;
      end else
      begin
        if  SIZEQuery.FieldByName('SWeightR').AsString<>'' then
        StdWeightLabel.Caption:=SIZEQuery.FieldByName('SWeightR').AsString;
      end;
      Windows.beep(1500,200);
      //重量過輕或過重
      if ( ((strtofloat(WeightLabel.Caption)+strtofloat(SGEdit.Text))>strtofloat(StdWeightLabel.Caption)) or ((strtofloat(WeightLabel.Caption)-strtofloat(SGEdit.Text))<strtofloat(StdWeightLabel.Caption)) )  then
      begin
        StdWeightLabel.Font.Color:=clRed;
        WeightLabel.Font.Color:=clRed;
      end else
      begin
        StdWeightLabel.Font.Color:=clBlack;
        WeightLabel.Font.Color:=clBlack;
      end;
      //Inser into HKDM_SMZL
      Query4.Append;
      Query4.FieldByName('WorkDate').Value:=FormatDateTime('YYYY/MM/DD',DTP1.Date);
      Query4.FieldByName('Class').Value:=ClassStr;
      //Query4.FieldByName('WorkNO').Value:='ZZZZZZZZZZZ';  //派工單
      Query4.FieldByName('DMBH').Value:=DMBH;
      Query4.FieldByName('BWBH').Value:=BWBH;
      Query4.FieldByName('Stage').Value:=Stage;
      Query4.FieldByName('SIZE').Value:=SIZE;
      Query4.FieldByName('LRSide').Value:=SIZE;
      Query4.FieldByName('GSBH').Value:=main.Edit2.Text;
      Query4.FieldByName('Weight').Value:=strtofloat(WeightLabel.Caption);
      Query4.FieldByName('UserID').Value:=main.Edit1.Text;
      Query4.FieldByName('UserDate').Value:=now();
      Query4.FieldByName('YN').Value:='1';
      Query4.FieldByName('DMBHSM').Value:=ComBoBox1.Text;
      Query4.FieldByName('BWBHSM').Value:=ComBoBox2.Text;
      Query4.FieldByName('StageSM').Value:=ComBoBox3.Text;
      Query4.Post;
      //儲存
      UpHKDM_SMZL.Apply(ukInsert);
      //
      SLLabel.Caption:=inttostr(strtoint(SLLabel.Caption)+1);
    end;
  end;
  except
    on E:Exception do
    begin
      Showmessage(E.Message);
    end;
  end;
end;

procedure THokaRubberProdWeight.ComboBox5Change(Sender: TObject);
begin
   LRSide:=Copy(ComboBox5.Text,1,1);
end;

procedure THokaRubberProdWeight.Button1Click(Sender: TObject);
begin
    WeightLabel.Caption := trim( Copy(Memo1.Lines.ValueFromIndex[0],7, Length(Memo1.Lines.ValueFromIndex[1])-8) );
    StdWeightLabel.Caption:='0';
    if LRSide='1' then
    begin
      if  SIZEQuery.FieldByName('SWeightL').AsString<>'' then
      StdWeightLabel.Caption:=SIZEQuery.FieldByName('SWeightL').AsString;
    end else
    begin
      if  SIZEQuery.FieldByName('SWeightR').AsString<>'' then
      StdWeightLabel.Caption:=SIZEQuery.FieldByName('SWeightR').AsString;
    end;
    //重量過輕或過重
    if ( ((strtofloat(WeightLabel.Caption)+strtofloat(SGEdit.Text))>strtofloat(StdWeightLabel.Caption)) or ((strtofloat(WeightLabel.Caption)-strtofloat(SGEdit.Text))<strtofloat(StdWeightLabel.Caption)) )  then
    begin
     // Windows.beep(1500,200);
      StdWeightLabel.Font.Color:=clRed;
      WeightLabel.Font.Color:=clRed;
    end else
    begin
      StdWeightLabel.Font.Color:=clBlack;
      WeightLabel.Font.Color:=clBlack;
    end;
    //Inser into HKDM_SMZL
    Query4.Append;
    Query4.FieldByName('WorkDate').Value:=FormatDateTime('YYYY/MM/DD',DTP1.Date);
    Query4.FieldByName('Class').Value:=ClassStr;
    //Query4.FieldByName('WorkNO').Value:=1;  //Auto Number 
    Query4.FieldByName('DMBH').Value:=DMBH;
    Query4.FieldByName('BWBH').Value:=BWBH;
    Query4.FieldByName('Stage').Value:=Stage;
    Query4.FieldByName('SIZE').Value:=SIZE;
    Query4.FieldByName('LRSide').Value:=LRSide;
    Query4.FieldByName('GSBH').Value:=main.Edit2.Text;
    Query4.FieldByName('Weight').Value:=strtofloat(WeightLabel.Caption);
    Query4.FieldByName('UserID').Value:=main.Edit1.Text;
    Query4.FieldByName('UserDate').Value:=now();
    Query4.FieldByName('YN').Value:='1';
    //
    Query4.FieldByName('DMBHSM').Value:=ComBoBox1.Text;
    Query4.FieldByName('BWBHSM').Value:=ComBoBox2.Text;
    Query4.FieldByName('StageSM').Value:=ComBoBox3.Text;
    //
    Query4.Post;
    //
    UpHKDM_SMZL.Apply(ukInsert);
end;

procedure THokaRubberProdWeight.ComboBox3Change(Sender: TObject);
begin
  if Query3.Locate('YWSM',ComboBox3.Text,[]) then Stage:=Query3.FieldByName('LBDH').AsString;
  RefreshComboBox6();
  ToadyQuantity();
end;

procedure THokaRubberProdWeight.ToadyQuantity();
begin
  with tmpQry do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Select Count(*) as SL ');
    SQL.Add('From TB_DD.dbo.HKDM_SMZL HKDM_SMZL ');
    SQL.Add('Where Convert(Smalldatetime,HKDM_SMZL.WorkDate) = '''+FormatDateTime('YYYY/MM/DD',DTP1.Date)+''' ');
    SQL.Add(' and Class='''+ClassStr+''' and DMBH='''+DMBH+'''  and BWBH='''+BWBH+'''  and Stage='''+Stage+''' and SIZE='''+SIZE+''' ');
    Active:=true;
    SLLabel.Caption:=FieldByName('SL').AsString;
    Active:=false;
  end;
end;

procedure THokaRubberProdWeight.ToadyQuantity1();
begin
  with tmpQry do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Select Std_SG from HKDM_LBZLS ');
    SQL.Add('left join HKDM_LBZLS_SIZE on HKDM_LBZLS_SIZE.LBDH=HKDM_LBZLS.LBDH ');
    SQL.Add('where HKDM_LBZLS.YWSM=''Loading Weight'' and std_SG is not null and SIZE=''03.0'' ');
    Active:=true;
    SGEdit.Text:=FieldByName('Std_SG').AsString;
    Active:=false;
  end;
end;


procedure THokaRubberProdWeight.DTP1Change(Sender: TObject);
begin
  ToadyQuantity();
end;

end.
