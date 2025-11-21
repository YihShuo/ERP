unit Lastreturn_CL1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls, GridsEh,
  DBGridEh, ComCtrls;

type
  TLastreturn_CL = class(TForm)
    DS1: TDataSource;
    Query1: TQuery;
    strngfldQuery1LLNO: TStringField;
    strngfldQuery1CLBH: TStringField;
    crncyfldQuery1LLQTY: TCurrencyField;
    crncyfldQuery1RKQTY: TCurrencyField;
    strngfldQuery1YWPM: TStringField;
    strngfldQuery1DWBH: TStringField;
    Query1DepName: TStringField;
    Query1PlanDate: TDateTimeField;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Panel1: TPanel;
    Label2: TLabel;
    lbl2: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    Button1: TButton;
    LastEdit: TEdit;
    LLEdit: TEdit;
    CK1: TCheckBox;
    MemoEdit: TEdit;
    DepIDEdit: TEdit;
    dbgrdh1: TDBGridEh;
    Panel2: TPanel;
    Label4: TLabel;
    Label5: TLabel;
    Button2: TButton;
    LastNMEdit: TEdit;
    LastNoEdit: TEdit;
    dbgrdh2: TDBGridEh;
    Query2: TQuery;
    DS2: TDataSource;
    CheckBox1: TCheckBox;
    Query2CLDH: TStringField;
    Query2YWPM: TStringField;
    Query2DWBH: TStringField;
    chk2: TCheckBox;
    dtp1: TDateTimePicker;
    dtp2: TDateTimePicker;
    Label6: TLabel;
    Label7: TLabel;
    DepNMEdit: TEdit;
    Query1DepID: TStringField;
    Query1MEMO: TStringField;
    procedure Edit4KeyPress(Sender: TObject; var Key: Char);
    procedure Button1Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dbgrdh1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure dbgrdh1DblClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure dbgrdh2DblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Lastreturn_CL: TLastreturn_CL;

implementation

uses  LYV_Lastreturn1,FunUnit;

{$R *.dfm}

procedure TLastreturn_CL.Edit4KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    button1Click(nil);
end;

procedure TLastreturn_CL.Button1Click(Sender: TObject);
begin

  with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select LTLLS.LLNO');
    sql.add('       ,LTLLS.CLBH');
    sql.add('       ,LTLLS.LLQTY');
    sql.add('       ,LTRKSS.QTY as RKQTY');
    sql.add('       ,CLZL.YWPM');
    sql.add('       ,CLZL.DWBH');
    Sql.add('       ,LTLL.PlanDate');
    Sql.Add('       ,LTLL.DepID');
    sql.Add('       ,LTLL.MEMO');
    sql.add('       ,BDepartment.DepName');
    sql.add('from LTLLS ');
    sql.add('left join LTLL on LTLL.LLNO=LTLLS.LLNO ');
    sql.add('left join BDepartment on BDepartment.ID=LTLL.DepID ');
    sql.add('left join CLZL on LTLLS.CLBH=CLZL.CLDH ');
    sql.add('left join (select ZLBH,CLBH,SUM(QTY) AS qty from LTRKS group by ZLBH,CLBH');
    sql.add('           ) LTRKSS on LTLLS.LLNO=LTRKSS.ZLBH and LTLLS.CLBH=LTRKSS.CLBH');
    sql.add('where LTLLS.CLBH=CLZL.CLDH');
    sql.add('      and  LTLLS.LLNO like '''+LLEdit.Text+'%'' ');
    sql.add('      and CLZL.YWPM like '+''''+'%'+LastEdit.Text+'%'+'''');
    sql.add('      and LTLL.YN='+''''+'5'+''''+'');
    if DepIDEdit.Text<>'' then
    sql.add(' and  LTLL.DepID like '''+DepIDEdit.Text+'%'' ');
    if DepNMEdit.Text<>'' then
    sql.add(' and  LTLL.MEMO like '''+DepNMEdit.Text+'%'' ');
    if MemoEdit.Text<>'' then
    sql.add(' and  LTLL.SCBH like ''%'+MemoEdit.Text+'%'' ');
    if CK1.Checked=false then
    sql.add(' and LTLLS.LLQTY>IsNull(LTRKSS.QTY,0) ');
    if chk2.Checked=true then
    begin
       sql.add('    and convert(smalldatetime,convert(varchar,LTLL.Plandate,111)) between ');
       sql.add(''''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''''+' and  '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date) +'''');
    end;
    sql.add('order by CLDH');
    active:=true;
  end;

end;

procedure TLastreturn_CL.FormDestroy(Sender: TObject);
begin
  Lastreturn_CL:=nil;
end;

procedure TLastreturn_CL.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TLastreturn_CL.dbgrdh1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if query1.FieldByName('RKQTY').Value>query1.FieldByName('LLQTY').Value then
  begin
     dbgrdh1.Canvas.Font.Color:=clred;
  end;
  if query1.FieldByName('RKQTY').Value=query1.FieldByName('LLQTY').Value then
  begin
     dbgrdh1.Canvas.Font.Color:=clblue;
  end;
  if query1.FieldByName('LLQTY').Value = 0 then
  begin
     dbgrdh1.Canvas.Font.Color:=clgreen;
  end;
end;

procedure TLastreturn_CL.dbgrdh1DblClick(Sender: TObject);
begin
    if (not query1.Active) then
    begin
      abort;
    end;
    if (Query1.recordcount<1) then
    begin
      abort;
    end;
    if query1.FieldByName('RKQTY').Value>=query1.FieldByName('LLQTY').Value then
    begin
       showmessage('Return ok,Please check') ;
       abort;
    end;
    with LYV_Lastreturn.DelDet do
    begin
        fieldbyname('CLBH').value:=query1.fieldbyname('CLBH').value;
        fieldbyname('YWPM').value:=query1.fieldbyname('YWPM').value;
        fieldbyname('DWBH').value:=query1.fieldbyname('DWBH').value;
        fieldbyname('ZLBH').value:=query1.fieldbyname('LLNO').value;
        insert;
    end;
    showmessage('Succeed');
end;

procedure TLastreturn_CL.Button2Click(Sender: TObject);
begin
  with Query2 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select CLDH,YWPM,DWBH from CLZL where CLDH like');
    sql.add(''''+LastNoEdit.Text+'%'+'''');
    sql.add('and YWPM like ');
    sql.add(''''+'%'+LastNMEdit.Text+'%'+'''');
    if CheckBox1.Checked=true then
      sql.add('and (TYJH is null or TYJH='+''''+'N'+''''+')');
    sql.add('and YN<>'+''''+'2'+'''');
    sql.add('and CLDH like ''V%''  ');
    sql.add('order by CLDH');
    active:=true;
  end;
end;

procedure TLastreturn_CL.dbgrdh2DblClick(Sender: TObject);
begin
    if (not query2.Active) then
    begin
      abort;
    end;
    if (Query2.recordcount<1) then
    begin
      abort;
    end;

    with LYV_Lastreturn.DelDet do
    begin
        fieldbyname('CLBH').value:=query2.fieldbyname('CLDH').value;
        fieldbyname('YWPM').value:=query2.fieldbyname('YWPM').value;
        fieldbyname('DWBH').value:=query2.fieldbyname('DWBH').value;
        fieldbyname('ZLBH').value:='YYYYYYYYYY';
        insert;
    end;
    showmessage('Succeed');
end;

procedure TLastreturn_CL.FormCreate(Sender: TObject);
begin
  DTP1.Date:=now-1;
  DTP2.Date:=now;
end;

end.
