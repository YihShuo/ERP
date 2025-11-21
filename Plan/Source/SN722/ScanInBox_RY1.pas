unit ScanInBox_RY1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GridsEh, DBGridEh, StdCtrls, ComCtrls, ExtCtrls, DB, DBTables;

type
  TScanInBox_RY = class(TForm)
    SMDDSS: TQuery;
    SMDDSSDDBH: TStringField;
    SMDDSSGXLB: TStringField;
    SMDDSSArticle: TStringField;
    SMDDSSXieMing: TStringField;
    SMDDSSXXCC: TStringField;
    SMDDSSXH: TStringField;
    SMDDSSCODEBAR: TStringField;
    SMDDSSQty: TIntegerField;
    SMDDSSCTS: TIntegerField;
    SMDDSSokCTS: TIntegerField;
    SMDDSSUSERDate: TDateTimeField;
    SMDDSSUSERID: TStringField;
    SMDDSSYN: TStringField;
    SMDDSSokQty: TIntegerField;
    DS1: TDataSource;
    Panel3: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    Label8: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    CBX3: TComboBox;
    CBX1: TComboBox;
    CBX2: TComboBox;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    CB5: TCheckBox;
    RB1: TCheckBox;
    RB2: TCheckBox;
    DBGridEh1: TDBGridEh;
    Label2: TLabel;
    Edit2: TEdit;
    Label5: TLabel;
    Edit3: TEdit;
    Qtemp: TQuery;
    SMDDSSDepName: TStringField;
    SMDDSSDepNO: TStringField;
    SMDDSSInBoxBar: TStringField;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    NDate:TDate;
    { Private declarations }
    procedure InitCombo();
  public
    { Public declarations }
  end;

var
  ScanInBox_RY: TScanInBox_RY;

implementation

uses main1,ScanInBox1, FunUnit;

{$R *.dfm}
//顯示日期
procedure TScanInBox_RY.InitCombo();
var
  myYear, myMonth, myDay : Word;
  i:integer;
begin
  //
  DecodeDate(Date(), myYear, myMonth, myDay);
  for i:=0 to CBX1.Items.Count-1 do
  begin
    if strtoint(CBX1.Items[i])=myYear then
    begin
      CBX1.ItemIndex:=i;
      break;
    end;
  end;
  for i:=0 to CBX2.Items.Count-1 do
  begin
    if strtoint(CBX2.Items[i])=myMonth then
    begin
      CBX2.ItemIndex:=i;
      break;
    end;
  end;
  //
  DTP1.Date:=NDate;
  DTP2.Date:=NDate;
end;

procedure TScanInBox_RY.Button1Click(Sender: TObject);
begin
  if ((RB1.Checked=false) and (RB2.Checked=false)) then
  begin
    if length(edit1.Text)<7 then
    begin
      showmessage('Pls key in order no first.');
      abort;
    end;
  end;
  //
  with SMDDSS do
  begin
    active:=false;
    sql.clear;
    sql.add('select SMDDSS.*,SMDD.Article,SMDD.XieMing,BDepartment.DepName,SMDD.DepNO,YWCPLH.InBoxBar  ');
    sql.add('from SMDDSS ');
    sql.add('left join SMDD on SMDD.DDBH=SMDDSS.DDBH and SMDD.GXLB=SMDDSS.GXLB ');
    sql.add('left join BDepartment on BDepartment.ID=SMDD.DepNO ');
    sql.add('left join DDZL on DDZL.DDBH=SMDD.YSBH ');
    sql.add('left join YWCPLH on YWCPLH.XieXing=DDZL.XieXIng and YWCPLH.SheHao=DDZL.SheHao and YWCPLH.XXCC=SMDDSS.XXCC and YWCPLH.GBBH=''NORMAL'' ');
    sql.add('where SMDDSS.DDBH like '+''''+edit1.text+'%'+'''');
    sql.add('      and SMDD.GSBH='+''''+main.Edit2.Text+'''');
    if RB1.Checked=true then
    begin
      sql.add('      and SMDD.SCYEAR='+''''+CBX1.Text+'''');
      sql.add('      and SMDD.SCMONTH='+''''+CBX2.Text+'''');
    end;
    sql.add('      and SMDDSS.XXCC like '''+Edit3.Text+'%'' ');
    if RB2.Checked=true then
    begin
      sql.add('and SMDD.planDate between ');
      sql.add('Convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''')'+ ' and '+'Convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP2.Date+1)+''')');
    end;
    if CBX3.itemindex<>0 then
    begin
        sql.add('      and SMDDSS.GXLB='+''''+CBX3.Text+'''');
    end;
    if CB5.Checked=true then
      sql.add('and okCTS<CTS ');
    sql.Add('order by SMDDSS.GXLB,SMDDSS.DDBH,SMDDSS.XXCC,SMDDSS.XH ');
    //funcObj.WriteErrorLog(sql.Text);
    active:=true;
  end;
end;

procedure TScanInBox_RY.FormCreate(Sender: TObject);
var i,index:integer;
begin
  with Qtemp do
  begin
    active:=false;
    sql.Clear;
    sql.add('select distinct GX from SCGXDY order by GX');
    active:=true;
    index:=0;
    for i:=1 to recordcount do
    begin
      CBX3.Items.Add(fieldbyname('GX').asstring);
      if 'A'=fieldbyname('GX').asstring
        then index:=i;
      next;
    end;
    CBX3.ItemIndex:=index;
    active:=false;
    sql.Clear;
    sql.add('select getdate() as NDate ');
    active:=true;
    NDate:=fieldbyname('NDate').Value;
    active:=false;
  end;
  InitCombo();
end;

procedure TScanInBox_RY.DBGridEh1DblClick(Sender: TObject);
begin
  ScanInBox.Edit5.Text:=SMDDSS.FieldByName('DDBH').AsString;
  if ScanInBox.edit2.Text='' then
  begin
    if ScanInBox.DepNo.Locate('ID',copy(SMDDSS.FieldByName('DepNo').AsString,0,10),[]) then
    begin
        ScanInBox.edit2.Text:=ScanInBox.DepNo.fieldbyname('ID').Value;
        ScanInBox.edit1.Text:=ScanInBox.DepNo.fieldbyname('DepName').Value;
        ScanInBox.edit3.text:='';
        ScanInBox.DepGXLB:=ScanInBox.DepNo.fieldbyname('GXLB').Value;
    end;
  end;
  ScanInBox_RY.Close;
end;

procedure TScanInBox_RY.FormShow(Sender: TObject);
begin
  main.FormLanguage(Pointer(self),self.Name);
end;

end.
