unit OrderSpec1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Mask, DBCtrls, StdCtrls, Grids, DBGrids, ComCtrls,
  Buttons, ExtCtrls,comobj,dateutils,ehlibBDE, GridsEh, DBGridEh;

type
  TOrderSpec = class(TForm)
    Panel1: TPanel;
    Label18: TLabel;
    BB2: TBitBtn;
    BB3: TBitBtn;
    BB4: TBitBtn;
    BB5: TBitBtn;
    BB6: TBitBtn;
    BB7: TBitBtn;
    BB1: TBitBtn;
    BBT1: TBitBtn;
    BBT2: TBitBtn;
    BBT3: TBitBtn;
    BBT4: TBitBtn;
    bbt6: TBitBtn;
    PC1: TPageControl;
    TS1: TTabSheet;
    DBGrid1: TDBGridEh;
    Panel5: TPanel;
    TS2: TTabSheet;
    DBGrid2: TDBGridEh;
    Panel2: TPanel;
    Label5: TLabel;
    Label6: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Button2: TButton;
    Query1: TQuery;
    DS1: TDataSource;
    SpecMas: TQuery;
    SpecMasSCBH: TStringField;
    SpecMasZLBH: TStringField;
    SpecMasXieXing: TStringField;
    SpecMasSheHao: TStringField;
    SpecMasArticle: TStringField;
    SpecMasXieMing: TStringField;
    SpecMasQty: TFloatField;
    SpecMasCCGB: TStringField;
    SpecMasShipDate: TDateTimeField;
    SpecDet: TQuery;
    SpecDetbwbh: TStringField;
    SpecDetBWMCY: TStringField;
    SpecDetclbh: TStringField;
    SpecDetCLMCY: TStringField;
    SpecDetdwbh: TStringField;
    SpecDetUSAGE: TFloatField;
    SpecDetLOSS: TFloatField;
    SpecDetclsl: TFloatField;
    SpecDetDFL: TStringField;
    SpecDetXFL: TStringField;
    SpecDetYN: TStringField;
    SpecDetLYCC: TStringField;
    DS2: TDataSource;
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    CBX2: TComboBox;
    Label7: TLabel;
    CBX3: TComboBox;
    Button1: TButton;
    SpecMasDDZT: TStringField;
    Edit3: TEdit;
    SpecMasKFJC: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure BB1Click(Sender: TObject);
    procedure BB7Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure DBGrid1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  OrderSpec: TOrderSpec;
  sdate,edate,NDate:Tdate;

implementation

uses main1;

{$R *.dfm}

procedure TOrderSpec.FormClose(Sender: TObject; var Action: TCloseAction);
begin
action:=cafree;
end;

procedure TOrderSpec.Button1Click(Sender: TObject);
var y,m:word;
begin
if (CBX2.text='')or (CBX3.text='')  then
  begin
    showmessage('You have to select the year and month first.');
    abort;
  end;
y:=strtoint(CBX2.Text);
m:=strtoint(CBX3.Text);
if (y>2999) or (y<1900) then
  begin
    showmessage('Pls key in right year');
    abort;
  end;
if (m=0) or (m>12) then
  begin
    showmessage('Pls key in right month');
    abort;
  end;
sdate:=encodedate(y,m,1);
edate:=endofthemonth(sdate);

with SpecMas do
  begin
    active:=false;
    sql.Clear;
    sql.add('select distinct SCZL.SCBH, SCZL.ZLBH,DDZL.XieXing,DDZL.SheHao, DDZL.XieXing,DDZL.DDZT,');
    sql.add('SCZL.Qty as Qty,DDZL.Article,DDZL.ShipDate,XXZL.CCGB,XXZL.XieMing,KFZL.KFJC');
    sql.add('from SCZL');
    sql.add('left join ZLZL on ZLZL.ZLBH=SCZL.ZLBH');
    sql.add('left join DDZL  on ZLZL.DDBH=DDZL.DDBH');
    sql.add('left join KFZL on KFZl.KFDH=DDZl.KHBH ') ;
    sql.add('left join XXZL  on DDZL.XieXing=XXZL.XieXing and DDZL.SheHao=XXZL.SheHao');
    sql.Add('where SCZL.SCBH like '+''''+edit1.Text+'%'+'''');
    sql.add('      and SCZL.SCBH=SCZL.ZLBH');
    sql.add('      and XXZL.XieMing like '+''''+'%'+edit2.text+'%'+'''');
    sql.add('      and convert(smalldatetime,convert(varchar,DDZL.ShipDate,111)) between ');
    sql.add('      '''+formatdatetime('yyyy/MM/dd',sdate)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',edate)+'''');
    sql.add('      and DDZL.GSBH='+''''+main.edit2.text+'''');
    sql.add('order by SCZL.ZLBH');
    active:=true;
  end;
SpecDet.active:=true;
//panel5.Visible:=false;

end;

procedure TOrderSpec.BB1Click(Sender: TObject);
begin
panel5.Visible:=true;
end;

procedure TOrderSpec.BB7Click(Sender: TObject);
begin
Close;
end;

procedure TOrderSpec.Button2Click(Sender: TObject);
var   a:string;
      eclApp,WorkBook:olevariant;
 //     xlsFileName:string;
      i,j:integer;
  begin
  if  SpecDet.active  then
    begin
    try
      eclApp:=CreateOleObject('Excel.Application');
      WorkBook:=CreateOleObject('Excel.Sheet');
    except
      Application.MessageBox('No Mcrosoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
      Exit;
    end;
    try
        WorkBook:=eclApp.workbooks.Add;
        for   i:=0   to   SpecDet.fieldCount-1   do
          begin
              eclApp.Cells(1,i+1):=SpecDet.fields[i].FieldName;
          end;
        SpecDet.First;
        j:=2;
        while   not   SpecDet.Eof   do
          begin
            for   i:=0   to   SpecDet.FieldCount-1   do
              begin
                eclApp.Cells(j,i+1):=SpecDet.Fields[i].Value;
              end;
            SpecDet.Next;
            inc(j);
          end;

      eclapp.columns.autofit;
      showmessage('Succeed.');
      eclApp.Visible:=True;
      except
        on   F:Exception   do
          showmessage(F.Message);
      end;
    end;

end;

procedure TOrderSpec.FormCreate(Sender: TObject);
var i:integer;
    myYear, myMonth, myDay : Word;
begin
  with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select getdate() as NDate ');
    active:=true;
    NDate:=fieldbyname('NDate').Value;
  end;

  DecodeDate(Date(), myYear, myMonth, myDay);
  for i:=0 to CBX2.Items.Count-1 do
  begin
    if strtoint(CBX2.Items[i])=myYear then
    begin
      CBX2.ItemIndex:=i;
      break;
    end;
  end;
  for i:=0 to CBX3.Items.Count-1 do
  begin
    if strtoint(CBX3.Items[i])=myMonth then
    begin
      CBX3.ItemIndex:=i;
      break;
    end;
  end;
  PC1.activepage:=TS1;
end;

procedure TOrderSpec.DBGrid1DblClick(Sender: TObject);
begin
if SpecMas.recordcount>0 then
  begin
    PC1.ActivePage:=TS2;
  end;
end;

procedure TOrderSpec.FormDestroy(Sender: TObject);
begin
OrderSpec:=nil;
end;

procedure TOrderSpec.DBGrid1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin

if SpecMas.FieldByName('DDZT').value<>'Y' then
  begin
    dbgrid1.canvas.font.color:=clred;
   // dbgrid1.defaultdrawcolumncell(rect,datacol,column,state);
  end;
end;

end.
