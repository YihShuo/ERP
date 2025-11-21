unit MatRFIDCodeInDet1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, Buttons, ComCtrls,
  ExtCtrls, Comobj;

type
  TMatRFIDCodeInDet = class(TForm)
    Panel5: TPanel;
    Label2: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    DTP3: TDateTimePicker;
    DTP4: TDateTimePicker;
    CLBHDEdit: TEdit;
    YWPMDEdit: TEdit;
    BtnQry: TBitBtn;
    BitBtn3: TBitBtn;
    DBGridEh1: TDBGridEh;
    DS1: TDataSource;
    MatQryInDet: TQuery;
    MatQryInDetRKDate: TDateTimeField;
    MatQryInDetSCNO: TStringField;
    MatQryInDetCLBH: TStringField;
    MatQryInDetPack: TIntegerField;
    MatQryInDetQty: TFloatField;
    MatQryInDetUSERDATE: TDateTimeField;
    MatQryInDetywpm: TStringField;
    MatQryInDetdwbh: TStringField;
    MatQryInDetDOCNO: TStringField;
    MatQryInDetMEMO: TStringField;
    MatQryInDetTAGID: TIntegerField;
    procedure BtnQryClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MatRFIDCodeInDet: TMatRFIDCodeInDet;

implementation
  uses main1, MatRFIDCodeRtp1, FunUnit;
{$R *.dfm}

procedure TMatRFIDCodeInDet.BtnQryClick(Sender: TObject);
begin
  with MatQryInDet do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select convert(smalldatetime,convert(varchar,KCRKScan_RF.USERDATE,111)) as RKDate,KCRKScan_RFSS.SCNO,KCRKScan_RFSS.CLBH,KCRKScan_RFSS.Pack,KCRKScan_RFSS.TAGID,KCRKScan_RFSS.Qty ');
    SQL.Add(',KCRKScan_RFSS.USERDATE,CLZL.ywpm,CLZL.dwbh,KCRKScan_RF.DOCNO,KCRKScan_RF.MEMO from KCRKScan_RFSS ');
    SQL.Add('left join KCRKScan_RF on KCRKScan_RFSS.SCNO=KCRKScan_RF.SCNO');
    SQL.Add('left join CLZL on CLZL.CLDH=KCRKScan_RFSS.CLBH');
    SQL.Add('where KCRKScan_RF.CKBH='''+main.Edit2.Text+''' ');
    SQL.Add('   and convert(smalldatetime,convert(varchar,KCRKScan_RF.USERDATE,111)) between ');
    SQL.add('          '''+formatdatetime('yyyy/MM/dd',DTP3.Date) +''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP4.Date) +'''');
    if CLBHDEdit.Text<>'' then
    SQL.Add('   and KCRKScan_RFSS.CLBH like '''+CLBHDEdit.Text+'%'' ');
    if YWPMDEdit.Text<>'' then
    SQL.Add('   and CLZL.YWPM like ''%'+YWPMDEdit.Text+'%'' ');
    Active:=true;
  end;
end;

procedure TMatRFIDCodeInDet.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=CaFree;
end;

procedure TMatRFIDCodeInDet.FormDestroy(Sender: TObject);
begin
  MatRFIDCodeInDet:=nil;
end;

procedure TMatRFIDCodeInDet.FormCreate(Sender: TObject);
begin
  //
  DTP3.Date:=MatRFIDCodeRtp.DTP3.Date;
  DTP4.Date:=MatRFIDCodeRtp.DTP4.Date;
  CLBHDEdit.Text:=MatRFIDCodeRtp.CLBHDEdit.Text;
  YWPMDEdit.Text:=MatRFIDCodeRtp.YWPMDEdit.Text;
  //
  BtnQry.Click;
end;

procedure TMatRFIDCodeInDet.BitBtn3Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin
    if  MatQryInDet.active  then
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
          for   i:=0   to   MatQryInDet.fieldcount-1   do
          begin
            eclApp.Cells(1,i+1):=MatQryInDet.fields[i].FieldName;
          end;

          MatQryInDet.First;
          j:=2;
          while   not   MatQryInDet.Eof   do
          begin
            for   i:=0   to  MatQryInDet.fieldcount-1  do
            begin
              eclApp.Cells(j,i+1):=MatQryInDet.Fields[i].Value;
            end;
            MatQryInDet.Next;
            inc(j);
          end;
          eclapp.columns.autofit;
          showmessage('Succeed');
          eclApp.Visible:=True;
      except
          on F:Exception   do
            showmessage(F.Message);
      end;
    end;

end;

end.
