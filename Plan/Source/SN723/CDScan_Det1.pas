unit CDScan_Det1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GridsEh, DBGridEh, StdCtrls, Buttons, ComCtrls, ExtCtrls, DB,
  DBTables;

type
  TCDScan_Det = class(TForm)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    RB2: TRadioButton;
    RB1: TRadioButton;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    BQuery1: TBitBtn;
    DBGridEh2: TDBGridEh;
    GroupBox2: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    DS1: TDataSource;
    tmpQry: TQuery;
    Query1: TQuery;
    Query1DLNO: TStringField;
    Query1ZLBH: TStringField;
    Query1BWBH: TStringField;
    Query1ZWSM: TStringField;
    Query1YWSM: TStringField;
    Query1SIZE: TStringField;
    Query1CLBH: TStringField;
    Query1YWPM: TStringField;
    Query1ZWPM: TStringField;
    Query1Qty: TIntegerField;
    Query1XXCC: TStringField;
    Query1CutNum: TIntegerField;
    Query1okCutNum: TIntegerField;
    Query1USERID: TStringField;
    Query1USERDATE: TDateTimeField;
    Query1ScanUser: TStringField;
    Query1ScanDate: TDateTimeField;
    Query1DepName: TStringField;
    Query1PlanDate: TDateTimeField;
    Query1Memo: TStringField;
    Query1YN: TStringField;
    GroupBox3: TGroupBox;
    RadioB3: TRadioButton;
    RadioB2: TRadioButton;
    RadioB1: TRadioButton;
    Query1DepID: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure BQuery1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CDScan_Det: TCDScan_Det;

implementation

uses main1,FunUnit;

{$R *.dfm}

procedure TCDScan_Det.FormCreate(Sender: TObject);
begin
  With tmpQry do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('select getdate() as NDate ');
    Active := true;
    DTP1.Date := fieldbyname('NDate').Value-30;
    DTP2.Date := fieldbyname('NDate').Value+30;
    Active := false;
    //
    SQL.Clear;
    SQL.Add('SELECT DISTINCT Xuong FROM BDepartment');
    SQL.Add('WHERE GSBH = ''' + main.Edit2.Text + ''' AND GXLB = ''C'' AND ISNULL(Xuong, '''') <> ''''');
    SQL.Add('ORDER BY Xuong');
    Active := true;
    //
    ComboBox1.Items.Clear;
    while not Eof do
    begin
      ComboBox1.Items.Add(FieldByName('Xuong').AsString);
      Next;
    end;
  end;
end;

procedure TCDScan_Det.ComboBox1Change(Sender: TObject);
begin
  with tmpQry do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT DepName FROM BDepartment WHERE GSBH = ''' + main.Edit2.Text + ''' AND GXLB = ''C'' AND Xuong = ''' + ComboBox1.Text + '''');
    Active := true;
    ComboBox2.Items.Clear;
    while not Eof do
    begin
      ComboBox2.Items.Add(FieldByName('DepName').AsString);
      Next;
    end;
  end;
end;

procedure TCDScan_Det.BQuery1Click(Sender: TObject);
begin
  with Query1 do
  begin
   Active:=false;
   SQL.Clear;
   SQL.Add('SELECT CutDispatchS.*, BWZL.ZWSM, BWZL.YWSM, CLZL.ZWPM, CLZL.YWPM,BDepartment.DepName,CutDispatch.PlanDate,CutDispatch.Memo,CutDispatch.DepID FROM CutDispatchS');
   SQL.Add('Left JOIN CutDispatch on CutDispatch.DLNO=CutDispatchS.DLNO');
   SQL.Add('Left JOIN BWZL ON BWZL.BWDH = CutDispatchS.BWBH');
   SQL.Add('Left JOIN CLZL ON CLZL.CLDH = CutDispatchS.CLBH');
   SQL.Add('Left JOIN BDepartment on BDepartment.ID=CutDispatch.DepID');
   SQL.Add('WHERE 1=1 ');
   if RadioB2.Checked=true then
       SQL.Add(' and IsNull(CutDispatchS.CutNum, 0)>IsNull(CutDispatchS.okCutNum, 0) ');
   if RadioB3.Checked=true then
       SQL.Add(' and IsNull(CutDispatchS.CutNum, 0)<=IsNull(CutDispatchS.okCutNum, 0) ');
   if ComboBox1.Text<>'' then
       SQL.Add(' and BDepartment.Xuong LIKE ''' + ComboBox1.Text + '%''');
   if ComboBox2.Text<>'' then
       SQL.Add(' and BDepartment.DepName LIKE ''' + ComboBox2.Text + '%''');
   if (RB1.Checked) then
       SQL.Add(' and CONVERT(VARCHAR, CutDispatch.USERDATE, 111) BETWEEN ''' + FormatDateTime('yyyy/MM/dd', DTP1.DateTime) + ''' AND ''' + FormatDateTime('yyyy/MM/dd', DTP2.DateTime) + '''')
   else if (RB2.Checked) then
      SQL.Add(' and CONVERT(VARCHAR, CutDispatch.PlanDate, 111) BETWEEN ''' + FormatDateTime('yyyy/MM/d', DTP1.DateTime) + ''' AND ''' + FormatDateTime('yyyy/MM/dd', DTP2.DateTime) + '''');
   SQL.Add(' ORDER BY CutDispatchS.BWBH');
   //funcObj.WriteErrorLog(sql.Text);
   Active:=true;
  end;
end;

procedure TCDScan_Det.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=CaFree;
end;

procedure TCDScan_Det.FormDestroy(Sender: TObject);
begin
  CDScan_Det:=nil;
end;

end.
