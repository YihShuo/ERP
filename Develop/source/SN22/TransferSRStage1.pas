unit TransferSRStage1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Spin, DB, DBTables, ComCtrls;

type
  TTransferSRStage = class(TForm)
    GroupBox1: TGroupBox;
    PairsEdit: TSpinEdit;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    GroupBox2: TGroupBox;
    StagCombo: TComboBox;
    Button1: TButton;
    Button2: TButton;
    GroupBox3: TGroupBox;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    UserID: TEdit;
    CKQuery: TQuery;
    ProgressBar1: TProgressBar;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TransferSRStage: TTransferSRStage;

implementation
  uses SampleOrder1, main1, FunUnit;
{$R *.dfm}

procedure TTransferSRStage.Button2Click(Sender: TObject);
begin
  Close;
end;

procedure TTransferSRStage.Button1Click(Sender: TObject);
var i:integer;
    KFJDValue:string;
    PairsValue:string;
    UserIDValue:string;
begin
  if SampleOrder.YPZL.Active=true then
  begin
    //
    if SampleOrder.KFJDEdit.Text=StagCombo.Text then
    begin
     showmessage('Transfer Stage[ '+SampleOrder.KFJDEdit.Text+'=>'+StagCombo.Text+' ],it not allow transfer ');
     abort;
    end;
    if  MessageDlg('Ok to Transfer SampleOrder Stage:'+StagCombo.Text,mtCustom,[mbYes,mbCancel],0)=mrYes then
    begin
       if ((SampleOrder.JiJieEdit.Text='') or (SampleOrder.KFJDEdit.Text='') )  then
       begin
         Showmessage('Please first input Season / Stage and query data');
         abort;
       end else
       begin
         //°Ñ¼Æ
         KFJDValue:=StagCombo.Text;
         if RadioButton1.Checked=true then PairsValue:='' else PairsValue:=inttostr(PairsEdit.Value);
         if RadioButton3.Checked=true then UserIDValue:='' else UserIDValue:=UserID.Text;
         //
         ProgressBar1.Min:=1;
         ProgressBar1.Max:= SampleOrder.YPZL.RecordCount;
         SampleOrder.YPZL.First;
         for i:=1 to SampleOrder.YPZL.RecordCount do
         begin
           with CKQuery do
           begin
             Active:=false;
             SQL.Clear;
             SQl.Add('SELECT ypzl.YPDH FROM ypzl ypzl  ');
             SQL.Add('LEFT JOIN kfxxzl kfxxzl ON ypzl.XieXing = kfxxzl.XieXing AND ypzl.SheHao = kfxxzl.SheHao  ');
             SQL.Add('where  ypzl.Article =  '''+SampleOrder.YPZL.FieldByName('Article').AsString+''' ');
             SQL.Add('   and (GSDH='''+main.Edit2.Text+''' or GSDH=''LAI'') ');
             SQL.Add('   and YPZL.KFJD ='''+StagCombo.Text+''' ');
             SQL.Add('   and kfxxzl.JiJie = '''+SampleOrder.YPZL.FieldByName('JiJie').AsString+''' ');
             Active:=true;
           end;
           if CKQuery.RecordCount=0 then
           begin
             SampleOrder.CopySampleOrder(Copy(SampleOrder.YPZL.FieldByName('YPDH').AsString,1,4) ,KFJDValue,PairsValue,UserIDValue);
           end;
           CKQuery.Active:=false;
           SampleOrder.YPZL.Next;
           ProgressBar1.Position:=i;
           Application.ProcessMessages;
         end;
         //
       end;
    Showmessage('Finiish');
    Close;
    end;

  end;

end;

end.
