unit SRList1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, GridsEh, DBGridEh, DB, DBTables,SampleTracking_Dev1,
  ComCtrls;

type
  TSRLIst = class(TForm)
    Panel1: TPanel;
    DBGridEh1: TDBGridEh;
    Button1: TButton;
    StageCombo: TComboBox;
    Label1: TLabel;
    DS: TDataSource;
    YPZL: TQuery;
    Label2: TLabel;
    Label3: TLabel;
    YearCombo: TComboBox;
    SREdit: TEdit;
    StageLB: TLabel;
    YPZLARTICLE: TStringField;
    YPZLKFJD: TStringField;
    YPZLQty: TFloatField;
    YPZLJHRQ: TStringField;
    YPZLUserDate: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure StageComboChange(Sender: TObject);
    procedure YearComboChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
  private
    tmpSRList:TStringlist;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SRLIst: TSRLIst;

implementation
  uses FunUnit;
{$R *.dfm}

procedure TSRLIst.FormCreate(Sender: TObject);
var i:integer;
    myYear, myMonth, myDay : Word;
begin
  //
  DecodeDate(Date(), myYear, myMonth, myDay);
  for i:=0 to YearCombo.Items.Count-1 do
  begin
    if strtoint(YearCombo.Items[i])=myYear then
    begin
      YearCombo.ItemIndex:=i;
      break;
    end;
  end;
  SREdit.Text:='-'+inttostr(strtoint(Copy(YearCombo.Text,3,2))+1)+'F';
  //
  tmpSRList:=TStringlist.Create;
end;

procedure TSRLIst.Button1Click(Sender: TObject);
begin
  //
  with YPZL do
  begin
    Active:=true;
    SQL.Clear;
    SQL.Add('select ARTICLE,KFJD,Quantity as Qty,JHRQ,UserDate from  YPZL ');
    SQL.Add(' where  KFJD='''+StageCombo.Text+''' and UserDate like '''+YearCombo.Text+'%'' ');
    SQL.Add(' and  Article like ''%'+SREdit.Text+'%'' ');
    SQL.Add('and JHRQ is not null and JHRQ<>'''' ');
    SQL.Add(' and ARTICLE not in (Select ARTICLE from SPSCList group by Article) ');
    SQL.Add('order by JHRQ,Article ');
    Active:=true;
  end;
  //
end;

procedure TSRLIst.DBGridEh1DblClick(Sender: TObject);
  function ReturnDate(DT:string):TDate;
  begin
    result:= EncodeDate(strtoint(Copy(DT,1,4)), strtoint(Copy(DT,5,2)), strtoint(Copy(DT,7,2)));
  end;
  function CheckSRisRepeat(SR:string):boolean;
  var i:integer;
      tmpRes:boolean;
  begin
    tmpRes:=false;
    for i:=0 to tmpSRList.Count-1 do
    begin
      if trim(SR)=trim(tmpSRList.Strings[i]) then
      begin
        tmpRes:=true;
        break;
      end;
    end;
    result:=tmpRes;
  end;
  //
begin
  if YPZL.Active=true then
    if SampleTracking_Dev.SPSCMas.State in [dsInsert] then
    begin
      //ÀË¬d¬O§_­«ÂÐ
      if CheckSRisRepeat(YPZL.FieldByName('Article').AsString)=false then
      begin
        SampleTracking_Dev.SPSCMas.FieldByName('Article').Value:=YPZL.FieldByName('Article').Value;
        SampleTracking_Dev.SPSCMas.FieldByName('Pairs').Value:=YPZL.FieldByName('Qty').Value;
        SampleTracking_Dev.SPSCMas.FieldByName('Stage').Value:=StageLB.Caption;
        SampleTracking_Dev.SPSCMas.FieldByName('ODate').Value:=ReturnDate(YPZL.FieldByName('JHRQ').Value)-42;
        tmpSRList.Add(YPZL.FieldByName('Article').AsString);
        SampleTracking_Dev.SPSCMas.Post;
        SampleTracking_Dev.SPSCMas.Insert;
      end;
    end;

end;

procedure TSRLIst.StageComboChange(Sender: TObject);
begin
  if StageCombo.Itemindex=1 then StageLB.Caption:='R1';
  if StageCombo.Itemindex=2 then StageLB.Caption:='R2';
  if StageCombo.Itemindex=3 then StageLB.Caption:='R3';
end;

procedure TSRLIst.YearComboChange(Sender: TObject);
begin
  SREdit.Text:='-'+inttostr(strtoint(Copy(YearCombo.Text,3,2))+1)+'F';
end;

procedure TSRLIst.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;

end;

procedure TSRLIst.FormDestroy(Sender: TObject);
begin
  tmpSRList.Free;
  SRLIst:=nil;
end;

end.
