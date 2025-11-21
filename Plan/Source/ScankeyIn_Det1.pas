unit ScankeyIn_Det1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, StdCtrls, ExtCtrls, ComCtrls, GridsEh, DBGridEh;

type
  TScankeyIn_Det = class(TForm)
    SMDDSS: TQuery;
    Panel3: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Edit2: TEdit;
    DBGridEh1: TDBGridEh;
    DS1: TDataSource;
    SMDDSSDDBH: TStringField;
    SMDDSSGXLB: TStringField;
    SMDDSSXXCC: TStringField;
    SMDDSSXH: TStringField;
    SMDDSSCODEBAR: TStringField;
    SMDDSSQty: TIntegerField;
    SMDDSSCTS: TIntegerField;
    SMDDSSokCTS: TIntegerField;
    SMDDSSUSERDate: TDateTimeField;
    SMDDSSUSERID: TStringField;
    SMDDSSYN: TStringField;
    UpdateSQL1: TUpdateSQL;
    Label3: TLabel;
    CBX3: TComboBox;
    Qtemp: TQuery;
    SMDDSSArticle: TStringField;
    SMDDSSXieMing: TStringField;
    SMDDSSokQty: TIntegerField;
    SMDDSSTotQty: TIntegerField;
    SMDDSSOther: TQuery;
    SMDDSSOtherDDBH: TStringField;
    SMDDSSOtherokQty: TIntegerField;
    SMDDSSOtherGXLB: TStringField;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure DBGridEh1KeyPress(Sender: TObject; var Key: Char);
    procedure SMDDSSCalcFields(DataSet: TDataSet);
    procedure DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ScankeyIn_Det: TScankeyIn_Det;
  NDate:TDate;

implementation

uses ScankeyIn1, main1;

{$R *.dfm}

procedure TScankeyIn_Det.FormDestroy(Sender: TObject);
begin
ScankeyIn_Det:=nil;
end;

procedure TScankeyIn_Det.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
SMDDSS.active:=false;
end;

procedure TScankeyIn_Det.Button1Click(Sender: TObject);
begin
if length(edit1.Text)<7 then
  begin
    showmessage('Pls key in order no first.');
    abort;
  end;
with SMDDSS do
  begin
    active:=false;
    sql.clear;
    sql.add('select SMDDSS.*,SMDD.Article,SMDD.XieMing ');
    sql.add('from SMDDSS ');
    sql.add('left join SMDD on SMDD.DDBH=SMDDSS.DDBH and SMDD.GXLB=SMDDSS.GXLB ');
    sql.add('left join BDepartment on BDepartment.ID=SMDD.DepNO ');
    sql.add('where SMDDSS.DDBH like '+''''+edit1.text+'%'+'''');
//    sql.add('      and Bdepartment.DepName like '+''''+'%'+edit2.Text+'%'+'''');
    sql.add('      and SMDD.GSBH='+''''+main.Edit2.Text+'''');
    if CBX3.itemindex<>0 then
      begin
        sql.add('      and SMDDSS.GXLB='+''''+CBX3.Text+'''');
      end;
    sql.Add('order by SMDDSS.GXLB,SMDDSS.DDBH,SMDDSS.XXCC,SMDDSS.XH ');
    active:=true;
  end;

end;

procedure TScankeyIn_Det.FormCreate(Sender: TObject);
var i:integer;
begin
with Qtemp do
  begin
    active:=false;
    sql.Clear;
    sql.add('select distinct GX from SCGXDY order by GX');
    active:=true;
    for i:=1 to recordcount do
      begin
        CBX3.Items.Add(fieldbyname('GX').asstring);
        next;
      end;
    active:=false;
    sql.Clear;
    sql.add('select getdate() as NDate ');
    active:=true;
    NDate:=fieldbyname('NDate').Value;
    active:=false;
  end;
end;

procedure TScankeyIn_Det.DBGridEh1DblClick(Sender: TObject);
var P:string;
Q:word;
begin
if not SMDDSS.active then
  begin
    showmessage('No data .');
    abort;
  end;
if SMDDSS.recordcount=0 then
  begin
    showmessage('No data .');
    abort;
  end;

if SMDDSS.FieldByName('Article').Isnull then
  begin
    showmessage('Don hang khong co tua,'+#39+'  xin gap can bo doi tem ma vach');
    abort;
  end;
P:=inputbox('Key in Qty.','Packages:',inttostr(SMDDSS.fieldbyname('CTS').Value-SMDDSS.fieldbyname('okCTS').Value));
try
  Q:=strtoint(p);
except
  messagedlg('Packages is not right.',mterror,[mbOK],0);
  abort;
end; 
if Q>(SMDDSS.fieldbyname('CTS').Value-SMDDSS.fieldbyname('okCTS').Value) then
  begin
    showmessage('More then the Qty of order.'+#13+'超過訂單數量');
    abort;
  end;
  {
with SMDDSSOther do
  begin
    active:=true;
    if recordcount>0 then
      begin
        if (Q*SMDDSS.FieldByName('Qty').value)>(fieldbyname('okQty').Value-SMDDSS.FieldByName('okQty').value) then
          begin
            showmessage('The Qty is not enough.'+#13+'前一工段完成數量不足此數量.');
            abort;
          end;
      end;
    active:=false;
  end;  }

with ScanKeyIn.SMZL do
  begin
    insert ;
    fieldbyname('DDBH').value:=SMDDSS.FieldByName('DDBH').Value;
    fieldbyname('GXLB').value:=SMDDSS.FieldByName('GXLB').Value;
    fieldbyname('XXCC').value:=SMDDSS.FieldByName('XXCC').Value;
    fieldbyname('XH').value:=SMDDSS.FieldByName('XH').Value;
    fieldbyname('Qty').value:=SMDDSS.FieldByName('Qty').Value;   
    fieldbyname('CODEBAR').value:=SMDDSS.FieldByName('CODEBAR').Value; 
    fieldbyname('CTS').value:=Q;
    fieldbyname('DepNO').value:=ScanKeyIn.edit2.text;
    fieldbyname('DepName').value:=ScanKeyIn.edit1.text;
    fieldbyname('ScanDate').value:=NDate;
    fieldbyname('USERID').value:=main.edit1.text;
    fieldbyname('USERDATE').value:=NDate; 
    fieldbyname('YN').value:='2';
    post;
  end;
with SMDDSS do
  begin
    edit;
    fieldbyname('okCTS').Value:= fieldbyname('okCTS').Value+Q;
    post;
  end;

end;

procedure TScankeyIn_Det.DBGridEh1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
  DBGrideh1dblclick(nil);
end;

procedure TScankeyIn_Det.SMDDSSCalcFields(DataSet: TDataSet);
begin
with SMDDSS do
  begin
    fieldbyname('TotQty').Value:=fieldbyname('Qty').Value*fieldbyname('CTS').Value ;
    fieldbyname('okQty').Value:=fieldbyname('Qty').Value*fieldbyname('okCTS').Value ;
  end;

end;

procedure TScankeyIn_Det.DBGridEh1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
if SMDDSS.FieldByName('okQty').value=SMDDSS.FieldByName('TotQty').value then
  DBGrideh1.canvas.font.Color:=clred;
end;

end.
