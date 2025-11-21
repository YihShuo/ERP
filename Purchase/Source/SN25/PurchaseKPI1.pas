unit PurchaseKPI1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, DB, DBTables, StdCtrls, Grids, DBGrids,comobj,
  GridsEh, DBGridEh;

type
  Tpurchasekpi = class(TForm)
    Panel2: TPanel;
    PC1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    Panel1: TPanel;
    PKPICB1: TComboBox;
    TempQ: TQuery;
    PKPIM: TQuery;
    POM: TQuery;
    dsm: TQuery;
    stgm: TQuery;
    IKM: TQuery;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    DataSource3: TDataSource;
    DataSource4: TDataSource;
    DataSource5: TDataSource;
    Label1: TLabel;
    Button1: TButton;
    PKPIMuserid: TStringField;
    PKPIMusername: TStringField;
    PKPIMb: TIntegerField;
    PKPIMconn: TIntegerField;
    PKPId: TQuery;
    DataSource6: TDataSource;
    PKPIduserid: TStringField;
    PKPIdUSERNAME: TStringField;
    PKPIdddrq: TDateTimeField;
    PKPIdzldate: TDateTimeField;
    PKPIdcgdate: TDateTimeField;
    PKPIda: TIntegerField;
    PKPIdb: TIntegerField;
    DBGridEh1: TDBGridEh;
    Panel3: TPanel;
    Label4: TLabel;
    POCB1: TComboBox;
    Button2: TButton;
    POD: TQuery;
    DataSource7: TDataSource;
    POMzsjc: TStringField;
    POMzsywjc: TStringField;
    POMoverclsl: TIntegerField;
    POMconn: TIntegerField;
    DBGridEh2: TDBGridEh;
    DBGridEh3: TDBGridEh;
    PODzlbh: TStringField;
    PODclbh: TStringField;
    PODsize: TStringField;
    PODshipdate: TDateTimeField;
    PODzsjc: TStringField;
    PODzsywjc: TStringField;
    PODzlqty: TFloatField;
    PODqty: TCurrencyField;
    PODzldate: TDateTimeField;
    PODoverp: TFloatField;
    PODoverclsl: TIntegerField;
    dsd: TQuery;
    DataSource8: TDataSource;
    DBGridEh4: TDBGridEh;
    DBGridEh5: TDBGridEh;
    Panel4: TPanel;
    Label8: TLabel;
    dscb1: TComboBox;
    Button3: TButton;
    dsmzsjc: TStringField;
    dsmzsywjc: TStringField;
    dsmerrf: TIntegerField;
    dsmconn: TIntegerField;
    dsdzsjc: TStringField;
    dsdzsywjc: TStringField;
    dsdshipdate: TDateTimeField;
    dsdywpm: TStringField;
    dsdyqdate: TDateTimeField;
    dsdcfmdate: TDateTimeField;
    dsderrday: TIntegerField;
    dsderrf: TIntegerField;
    stgd: TQuery;
    DataSource9: TDataSource;
    IKD: TQuery;
    DataSource10: TDataSource;
    Panel5: TPanel;
    Label11: TLabel;
    stgcb1: TComboBox;
    Button4: TButton;
    stgmzsywjc: TStringField;
    stgmerrf: TIntegerField;
    stgmconn: TIntegerField;
    stgdzsywjc: TStringField;
    stgdywpm: TStringField;
    stgdshipdate: TDateTimeField;
    stgdqty: TCurrencyField;
    stgdrkqty: TFloatField;
    stgdcgdate: TDateTimeField;
    stgdrkdate: TDateTimeField;
    stgderrday: TIntegerField;
    stgderrf: TIntegerField;
    DBGridEh6: TDBGridEh;
    DBGridEh7: TDBGridEh;
    Panel6: TPanel;
    Label14: TLabel;
    IKCB1: TComboBox;
    Button5: TButton;
    DBGridEh8: TDBGridEh;
    DBGridEh9: TDBGridEh;
    IKMzsywjc: TStringField;
    IKMerrf: TIntegerField;
    IKMconn: TIntegerField;
    IKDzsywjc: TStringField;
    IKDywpm: TStringField;
    IKDshipdate: TDateTimeField;
    IKDiqcdate: TDateTimeField;
    IKDerrday: TIntegerField;
    IKDerrf: TIntegerField;
    IKDuserdate: TDateTimeField;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Button10: TButton;
    CBX1: TComboBox;
    Label17: TLabel;
    Label18: TLabel;
    CBX2: TComboBox;
    Label19: TLabel;
    Label20: TLabel;
    CBX3: TComboBox;
    CBX4: TComboBox;
    Label21: TLabel;
    PKPIdzlbh: TStringField;
    dsdzlbh: TStringField;
    stgdry: TStringField;
    IKDddbh: TStringField;
    CBX5: TComboBox;
    POMzsdh: TStringField;
    DBGridEh10: TDBGridEh;
    PODywpm: TStringField;
    GroupBox1: TGroupBox;
    posd: TDateTimePicker;
    Label6: TLabel;
    poed: TDateTimePicker;
    BuyNoEdit: TEdit;
    RB1: TRadioButton;
    RB2: TRadioButton;
    GroupBox2: TGroupBox;
    Label5: TLabel;
    PKSD: TDateTimePicker;
    PKED: TDateTimePicker;
    BuyNOOKEdit: TEdit;
    PKRB1: TRadioButton;
    PKRB2: TRadioButton;
    GroupBox3: TGroupBox;
    RB3: TRadioButton;
    RB4: TRadioButton;
    BuyNoEdit2: TEdit;
    dssd: TDateTimePicker;
    Label10: TLabel;
    dsed: TDateTimePicker;
    GroupBox4: TGroupBox;
    stgsd: TDateTimePicker;
    Label13: TLabel;
    stged: TDateTimePicker;
    TabSheet6: TTabSheet;
    Panel7: TPanel;
    DBGridEh11: TDBGridEh;
    DBGridEh12: TDBGridEh;
    QKM: TQuery;
    DataSource11: TDataSource;
    DataSource12: TDataSource;
    QKD: TQuery;
    Button11: TButton;
    Button12: TButton;
    Label2: TLabel;
    KCB1: TComboBox;
    Label3: TLabel;
    CBX6: TComboBox;
    GroupBox5: TGroupBox;
    Label9: TLabel;
    RB7: TRadioButton;
    BuyNoEdit4: TEdit;
    RB8: TRadioButton;
    KSD: TDateTimePicker;
    KED: TDateTimePicker;
    TabSheet7: TTabSheet;
    Panel8: TPanel;
    Label12: TLabel;
    Label22: TLabel;
    Button13: TButton;
    Button14: TButton;
    MKCB1: TComboBox;
    CBX7: TComboBox;
    GroupBox6: TGroupBox;
    Label23: TLabel;
    RB9: TRadioButton;
    BUYNOEdit5: TEdit;
    RB10: TRadioButton;
    MKSD: TDateTimePicker;
    MKED: TDateTimePicker;
    DBGridEh13: TDBGridEh;
    DBGridEh14: TDBGridEh;
    QMKM: TQuery;
    DataSource13: TDataSource;
    QMKD: TQuery;
    DataSource14: TDataSource;
    QMKMZLBH: TStringField;
    QMKDZLBH: TStringField;
    QMKDCLBH: TStringField;
    QMKDPairs: TIntegerField;
    QMKDDONE: TIntegerField;
    QMKDCLSL: TFloatField;
    QMKDRKQty: TFloatField;
    QMKMPairs: TIntegerField;
    QMKDUseQty: TFloatField;
    RB11: TRadioButton;
    PKRB3: TRadioButton;
    ZLBHEdit: TEdit;
    PKPIdCLBH: TStringField;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Panel9: TPanel;
    cb5: TCheckBox;
    cb6: TCheckBox;
    cb7: TCheckBox;
    Label29: TLabel;
    GroupBox7: TGroupBox;
    Label15: TLabel;
    Label16: TLabel;
    IKSD: TDateTimePicker;
    IKED: TDateTimePicker;
    Panel10: TPanel;
    cb8: TCheckBox;
    cb9: TCheckBox;
    Panel11: TPanel;
    cb3: TCheckBox;
    cb4: TCheckBox;
    Panel12: TPanel;
    cb1: TCheckBox;
    DayEdit: TEdit;
    CBNew: TCheckBox;
    CBOld: TCheckBox;
    Panel13: TPanel;
    cb2: TCheckBox;
    RateEdit: TEdit;
    AbsCheckBox: TCheckBox;
    Edit1: TEdit;
    Panel14: TPanel;
    CBR: TCheckBox;
    CBNR: TCheckBox;
    CBPM: TCheckBox;
    CBGM: TCheckBox;
    Label7: TLabel;
    CBRerun: TCheckBox;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Edit2: TEdit;
    stgmZSJC: TStringField;
    PKPIdUSERDATE: TDateTimeField;
    DDBHEdit: TEdit;
    Label34: TLabel;
    QKMZSJC: TStringField;
    QKMCount: TIntegerField;
    QKDCGNO: TStringField;
    QKDZLBH: TStringField;
    QKDCLBH: TStringField;
    QKDYWPM: TStringField;
    QKDCQDH: TStringField;
    QKDZSBH: TStringField;
    QKDCSBH: TStringField;
    QKDPayZSDH: TStringField;
    QKDCGLX: TStringField;
    QKDZSJCA: TStringField;
    QKDZSJCB: TStringField;
    Button15: TButton;
    stgmZSDH: TStringField;
    stgdZSDH: TStringField;
    CBBUY: TRadioButton;
    CBRK: TRadioButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure Button2Click(Sender: TObject);
    procedure DBGridEh2GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure DBGridEh3GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure Button3Click(Sender: TObject);
    procedure DBGridEh4GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure Button4Click(Sender: TObject);
    procedure DBGridEh7GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure Button5Click(Sender: TObject);
    procedure DBGridEh8GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure DBGridEh6GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure Button11Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure DBGridEh14GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure Button14Click(Sender: TObject);
    procedure CBRClick(Sender: TObject);
    procedure CBNRClick(Sender: TObject);
    procedure Button15Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  purchasekpi: Tpurchasekpi;

implementation

uses main1, PurchaseKPI_Supp1, FunUnit;

{$R *.dfm}

procedure Tpurchasekpi.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=cafree;
end;

procedure Tpurchasekpi.FormDestroy(Sender: TObject);
begin
purchasekpi:=nil;
end;

procedure Tpurchasekpi.FormCreate(Sender: TObject);
begin
  pc1.ActivePageIndex:=0;
  if main.edit2.Text<>'VTX' then
  begin
    Pkpicb1.text:=main.edit2.text;
    POcb1.Text:=main.Edit2.Text;
    dscb1.Text:=main.Edit2.Text;
    stgcb1.Text:=main.Edit2.Text;
    IKcb1.Text:=main.Edit2.Text;
    KCB1.Text:=main.Edit2.Text;
    MKCB1.Text:=main.Edit2.Text;

    Pkpicb1.enabled:=false;
    pocb1.Enabled:=false;
    dscb1.Enabled:=false;
    stgcb1.Enabled:=false;
    IKCB1.Enabled:=false;
    KCB1.Enabled:=false;
    MKCB1.Enabled:=false;
    CBX6.Enabled:=false;
  end;
  pksd.Date:=now+30;
  pked.Date:=now+60;
  posd.Date:=now+30;
  poed.Date:=now+60;
  dssd.Date:=now+30;
  dsed.Date:=now+60;
  stgsd.Date:=now+30;
  stged.Date:=now+60;
  iksd.Date:=now+30;
  iked.Date:=now+60;
  KSD.Date:=now+30;
  KED.Date:=now+60;
  MKSD.Date:=now+30;
  MKED.Date:=now+60;
end;

procedure Tpurchasekpi.Button1Click(Sender: TObject);
begin
  if (PKRB1.Checked = true) then
  begin
    if (length(BuyNOOKEdit.Text) < 6) then
    begin
      ShowMessage('Please input BuyNO 6 char!');
      Exit;
    end;
  end;

  with PKPIM do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT USERID, USERNAME, b, COUNT(*) AS CONN');
    SQL.Add('FROM(');
    SQL.Add('SELECT CGZLSS.ZLBH, CGZLSS.CLBH, CGZL.USERID, BUSERS.USERNAME, DDZL.DDRQ, DDZL.USERDATE, ZLZLS2.USERDATE AS ZLDate, CGZL.CGDate,');
    SQL.Add('CONVERT(INT, DDZL.DDRQ)-CONVERT(INT, ZLZLS2.USERDATE) AS a,');
    SQL.Add('CONVERT(INT, CGZL.CGDate)-CONVERT(INT, DDZL.DDRQ) AS b');
    SQL.Add('FROM CGZLSS');
    SQL.Add('LEFT JOIN DDZL ON DDZL.DDBH = CGZLSS.ZLBH');
    SQL.Add('LEFT JOIN CGZL ON CGZL.CGNO = CGZLSS.CGNO');
    SQL.Add('LEFT JOIN BUSERS ON BUSERS.USERID = CGZL.USERID');
    SQL.Add('LEFT JOIN ZLZLS2 ON ZLZLS2.ZLBH = CGZLSS.ZLBH AND ZLZLS2.CLBH = CGZLSS.CLBH AND ZLZLS2.SIZE = CGZLSS.XXCC');
    SQL.Add('WHERE CGZLSS.Qty > 0');

    if (PKRB1.Checked) then
    begin
     SQL.Add('AND DDZL.BUYNO LIKE ''' + BuyNOOKEdit.Text + '%''');
    end
    else if (PKRB2.Checked) then
    begin
      SQL.Add('AND DDZL.ShipDate >= ''' + DateToStr(PKSD.Date) + '''');
      SQL.Add('AND DDZL.ShipDate <= ''' + DateToStr(PKED.Date) + '''');
    end
    else if (PKRB3.Checked) then
    begin
      SQL.Add('AND DDZL.DDBH = ''' + ZLBHEdit.Text + '''');
    end;

    if (CBNew.Checked) AND NOT (CBOld.Checked) then
      SQL.Add('AND DDZL.ORDERMODE IS NOT NULL')
    else if NOT (CBNew.Checked) AND (CBOld.Checked) then
      SQL.Add('AND DDZL.ORDERMODE IS NULL')
    else if NOT (CBNew.Checked) AND NOT (CBOld.Checked) then
      SQL.Add('AND DDZL.ORDERMODE = ''NOTHING''');

    if (PKPICB1.Text <> 'ALL') then
      SQL.Add('AND CGZL.GSBH = ''' + PKPICB1.text + '''');

    if cb1.Checked then
      SQL.Add('AND CONVERT(INT, CGZL.CGDate)-CONVERT(INT, DDZL.DDRQ) > ' + DayEdit.Text);

    if (CBRerun.Checked) then
      SQL.Add('AND CONVERT(INT, DDZL.DDRQ) >= CONVERT(INT, ZLZLS2.USERDATE)');

    if (CBX1.ItemIndex = 1) then //僅顯示主料
    begin
      SQL.Add('AND SUBSTRING(CGZLSS.CLBH, 1, 3) NOT IN');
      SQL.Add('(SELECT CLLB FROM CLOther');
      if (PKPICB1.Text <> 'ALL') then
        SQL.Add('WHERE GSBH = ''' + PKPICB1.text + ''')')
      else if (PKPICB1.Text = 'ALL') then
        SQL.Add(')');
    end
    else if (CBX1.ItemIndex = 2) then //僅顯示附料
    begin
      SQL.Add('AND SUBSTRING(CGZLSS.CLBH, 1, 3) IN');
      SQL.Add('(SELECT CLLB FROM CLOther');
      if (PKPICB1.Text <> 'ALL') then
        SQL.Add('where GSBH = ''' + PKPICB1.Text + ''')')
      else if (PKPICB1.Text = 'ALL') then
        SQL.Add(')');
    end;

    SQL.Add('GROUP BY CGZLSS.ZLBH, CGZLSS.CLBH, CGZL.USERID, BUSERS.USERNAME, DDZL.DDRQ, DDZL.USERDATE, ZLZLS2.USERDATE, CGZL.CGDate');
    SQL.Add(') AS K');
    SQL.Add('GROUP BY USERID, USERNAME, b');
    SQL.Add('ORDER BY b DESC, COUNT(*) DESC');
    Active := true;
  end;

  with PKPId do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT CGZLSS.ZLBH, CGZLSS.CLBH, CGZL.USERID, BUSERS.USERNAME, DDZL.DDRQ, DDZL.USERDATE, ZLZLS2.USERDATE AS ZLDate, CGZL.CGDate,');
    SQL.Add('CONVERT(INT, DDZL.DDRQ)-CONVERT(INT, ZLZLS2.USERDATE) AS a,');
    SQL.Add('CONVERT(INT, CGZL.CGDate)-CONVERT(INT, DDZL.DDRQ) AS b');
    SQL.Add('FROM CGZLSS');
    SQL.Add('LEFT JOIN DDZL ON DDZL.DDBH = CGZLSS.ZLBH');
    SQL.Add('LEFT JOIN CGZL ON CGZL.CGNO = CGZLSS.CGNO');
    SQL.Add('LEFT JOIN BUSERS ON BUSERS.USERID = CGZL.USERID');
    SQL.Add('LEFT JOIN ZLZLS2 ON ZLZLS2.ZLBH = CGZLSS.ZLBH AND ZLZLS2.CLBH = CGZLSS.CLBH AND ZLZLS2.SIZE = CGZLSS.XXCC');
    SQL.Add('WHERE CGZLSS.Qty > 0');

    if (PKRB1.Checked) then
    begin
     SQL.Add('AND DDZL.BUYNO LIKE ''' + BuyNOOKEdit.Text + '%''');
    end
    else if (PKRB2.Checked) then
    begin
      SQL.Add('AND DDZL.ShipDate >= ''' + DateToStr(PKSD.Date) + '''');
      SQL.Add('AND DDZL.ShipDate <= ''' + DateToStr(PKED.Date) + '''');
    end
    else if (PKRB3.Checked) then
    begin
      SQL.Add('AND DDZL.DDBH = ''' + ZLBHEdit.Text + '''');
    end;

    if (CBNew.Checked) AND NOT (CBOld.Checked) then
      SQL.Add('AND DDZL.ORDERMODE IS NOT NULL')
    else if NOT (CBNew.Checked) AND (CBOld.Checked) then
      SQL.Add('AND DDZL.ORDERMODE IS NULL')
    else if NOT (CBNew.Checked) AND NOT (CBOld.Checked) then
      SQL.Add('AND DDZL.ORDERMODE = ''NOTHING''');

    if (PKPICB1.Text <> 'ALL') then
      SQL.Add('AND CGZL.GSBH = ''' + PKPICB1.Text + '''');

    if (cb1.Checked) then
      SQL.Add('AND CONVERT(INT, CGZL.CGDate)-CONVERT(INT, DDZL.DDRQ) > ' + DayEdit.Text);

    if (CBRerun.Checked) then
      SQL.Add('AND CONVERT(INT, DDZL.DDRQ) >= CONVERT(INT, ZLZLS2.USERDATE)');

    if (CBX1.ItemIndex = 1) then //僅顯示主料
    begin
      SQL.Add('AND SUBSTRING(CGZLSS.CLBH, 1, 3) NOT IN');
      SQL.Add('(SELECT CLLB FROM CLOther');
      if (PKPICB1.Text <> 'ALL') then
        SQL.Add('WHERE GSBH = ''' + PKPICB1.text + ''')')
      else if (PKPICB1.Text = 'ALL') then
        SQL.Add(')');
    end;
    if (CBX1.ItemIndex = 2) then  //僅顯示附料
    begin
      SQL.Add('AND SUBSTRING(CGZLSS.CLBH, 1, 3) IN');
      SQL.Add('(SELECT CLLB FROM CLOther');
      if (PKPICB1.Text <> 'ALL') then
        SQL.Add('WHERE GSBH = ''' + PKPICB1.Text + ''')')
      else if (PKPICB1.Text = 'ALL') then
        SQL.Add(')');
    end;

    SQL.Add('AND CGZL.USERID = :USERID');
    SQL.Add('AND CONVERT(INT, CGZL.CGDate)-CONVERT(INT, DDZL.DDRQ) = :b');
    SQL.Add('GROUP BY CGZLSS.ZLBH, CGZLSS.CLBH, CGZL.USERID, BUSERS.USERNAME, DDZL.DDRQ, DDZL.USERDATE, ZLZLS2.USERDATE, CGZL.CGDate');
    Active := true;
  end;

end;

procedure Tpurchasekpi.DBGridEh1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if ( pkpim.FieldByName('b').value>strtoint(DayEdit.Text) ) then
    dbgrideh1.canvas.font.color:=$004080FF;
end;

procedure Tpurchasekpi.Button2Click(Sender: TObject);
begin
  if (RB1.Checked) then
  begin
    if (Length(BuyNoEdit.Text) < 6) then
    begin
      ShowMessage('Please input BuyNO 6 char!');
      Exit;
    end;
  end;

  with POM do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT ZSDH, ISNULL(ZSJC, ''No Exists'') AS ZSJC, ISNULL(ZSYWJC, ''No Exists'') AS ZSYWJC, OverCLSL, COUNT(*) AS CONN');
    SQL.Add('FROM(');
    SQL.Add('SELECT ZLZLS2.ZLBH, ZLZLS2.CLBH, ZLZLS2.SIZE, DDZL.ShipDate, ZSZL.ZSDH, ZSZL.ZSJC, ZSZL.ZSYWJC,');
    SQL.Add('SUM(ZLZLS2.CLSL) AS ZLQty, CGZL.Qty, MAX(ZLZLS2.USERDate) AS ZLDate,');
    SQL.Add('ROUND((CGZL.Qty/SUM(ZLZLS2.CLSL)*100),2) AS OverP,');

    if (AbsCheckBox.Checked = true) then
      SQL.Add('CASE WHEN ABS(((CGZL.Qty-SUM(ZLZLS2.CLSL))/SUM(ZLZLS2.CLSL))*100) < ' + RateEdit.Text + ' THEN 0 ELSE 1 END AS OverCLSL')
    else
      SQL.Add('CASE WHEN (((CGZL.Qty-SUM(ZLZLS2.CLSL))/SUM(ZLZLS2.CLSL))*100) < ' + RateEdit.Text + ' THEN 0 ELSE 1 END AS OverCLSL');

    SQL.Add('FROM ZLZLS2');
    SQL.Add('LEFT JOIN DDZL ON DDZL.DDBH = ZLZLS2.ZLBH');
    SQL.Add('LEFT JOIN ZSZL ON ZSZL.ZSDH = ZLZLS2.CSBH');
    SQL.Add('LEFT JOIN (');
    SQL.Add('SELECT ZLBH, CLBH, SUM(Qty) AS Qty, XXCC FROM CGZLSS');
    SQL.Add('WHERE CGZLSS.ZLBH LIKE ''' + Edit1.text + '%''');

    if (CBX2.ItemIndex = 1) then //僅顯示主料
    begin
      SQL.Add('AND SUBSTRING(CGZLSS.CLBH, 1, 3) NOT IN (');
      SQL.Add('SELECT CLLB FROM CLOther');
      if (POCB1.Text <> 'ALL') then
        SQL.Add('WHERE GSBH = ''' + POCB1.Text + ''')')
      else if (POCB1.Text = 'ALL') then
        SQL.Add(')');
    end
    else if (CBX2.ItemIndex = 2) then //僅顯示附料
    begin
      SQL.Add('AND SUBSTRING(CGZLSS.CLBH, 1, 3) IN (');
      SQL.Add('SELECT CLLB FROM CLOther ');
      if (POCB1.Text <> 'ALL') then
        SQL.Add('WHERE GSBH = ''' + POCB1.Text + ''')')
      else if (POCB1.Text = 'ALL') then
        SQL.Add(')');
    end;

    SQL.Add('GROUP BY CGZLSS.ZLBH, CLBH, XXCC) AS CGZL ON ZLZLS2.ZLBH = CGZL.ZLBH');
    SQL.Add('AND ZLZLS2.CLBH = CGZL.CLBH AND ZLZLS2.SIZE = CGZL.XXCC');
    SQL.Add('WHERE CGZL.Qty IS NOT NULL');
    SQL.Add('AND ZLZLS2.CLSL > 0');

    if (RB1.Checked) then
    begin
      SQL.Add('AND DDZL.BUYNO LIKE ''' + BuyNoEdit.Text + '%''');
    end
    else if (RB2.Checked) then
    begin
      SQL.Add('AND DDZL.ShipDate >= ''' + DateToStr(posd.Date) + '''');
      SQL.Add('AND DDZL.ShipDate <= ''' + DateToStr(poed.Date) + '''');
    end;

    if (POCB1.Text <> 'ALL') then
      SQL.Add('AND DDZL.GSBH = ''' + POCB1.Text + '''');

    SQL.Add('AND ZLZLS2.ZLBH LIKE ''' + edit1.text + '%''');
    SQL.Add('GROUP BY ZLZLS2.ZLBH, ZLZLS2.CLBH, CGZL.Qty, DDZL.ShipDate, ZSZL.ZSDH, ZSZL.ZSJC, ZSZL.ZSYWJC, ZLZLS2.SIZE');
    SQL.Add(') AS K');

    if (cb2.Checked) then
    begin
      if (AbsCheckBox.Checked) then
        SQL.Add('WHERE ABS(100 - K.OverP) >= ' + RateEdit.Text)
      else
        SQL.Add('WHERE (K.OverP - 100) >= ' + RateEdit.Text);
    end;
    
    SQL.Add('GROUP BY ZSDH, ZSJC, ZSYWJC, OverCLSL');
    SQL.Add('ORDER BY CONN DESC');
    //memo1.Text:=sql.Text;
    Active := true;
  end;
  
  with POD do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT * FROM (');
    SQL.Add('SELECT ZLZLS2.ZLBH, CLZL.CLDH AS CLBH, CLZL.YWPM, ZLZLS2.SIZE, DDZL.ShipDate, ZSZL.ZSDH, ZSZL.ZSJC, ZSZL.ZSYWJC,');
    SQL.Add('SUM(ZLZLS2.CLSL) AS ZLQty, CGZL.Qty, MAX(ZLZLS2.USERDATE) AS ZLDate,');
    SQL.Add('ROUND((((CGZL.Qty-SUM(ZLZLS2.CLSL))/SUM(ZLZLS2.CLSL))*100), 2) AS OverP,');

    if (AbsCheckBox.Checked) then
       SQL.Add('CASE WHEN ABS(((CGZL.Qty-SUM(ZLZLS2.CLSL))/SUM(ZLZLS2.CLSL))*100) < ' + RateEdit.Text + ' THEN 0 ELSE 1 END AS OverCLSL')
    else
       SQL.Add('CASE WHEN (((CGZL.Qty-SUM(ZLZLS2.CLSL))/SUM(ZLZLS2.CLSL))*100) < ' + RateEdit.Text + ' THEN 0 ELSE 1 END AS OverCLSL');

    SQL.Add('FROM ZLZLS2');
    SQL.Add('LEFT JOIN DDZL ON DDZL.DDBH = ZLZLS2.ZLBH');
    SQL.Add('LEFT JOIN ZSZL ON ZSZL.ZSDH = ZLZLS2.CSBH');
    SQL.Add('LEFT JOIN CLZL ON CLZL.CLDH = ZLZLS2.CLBH');
    SQL.Add('LEFT JOIN (');
    SQL.Add('SELECT ZLBH, CLBH, SUM(Qty) AS Qty, XXCC FROM CGZLSS');
    SQL.Add('WHERE CGZLSS.ZLBH LIKE ''' + Edit1.Text + '%''');

    if (CBX2.ItemIndex = 1) then //僅顯示主料
    begin
      SQL.Add('AND SUBSTRING(CGZLSS.CLBH, 1, 3) NOT IN (');
      SQL.Add('SELECT CLLB FROM CLOther');
      if (POCB1.Text <> 'ALL') then
        SQL.Add('WHERE GSBH = ''' + POCB1.Text + ''')')
      else if (POCB1.Text = 'ALL') then
        SQL.Add(')');
    end
    else if (CBX2.ItemIndex = 2) then //僅顯示附料
    begin
      SQL.Add('AND SUBSTRING(CGZLSS.CLBH, 1, 3) IN (');
      SQL.Add('SELECT CLLB FROM CLOther');
      if (POCB1.Text <> 'ALL') then
        SQL.Add('WHERE GSBH = ''' + POCB1.Text + ''')')
      else if (POCB1.Text = 'ALL') then
        SQL.Add(')');
    end;

    SQL.Add('GROUP BY ZLBH, CLBH, XXCC) AS CGZL ON CGZL.ZLBH = ZLZLS2.ZLBH AND CGZL.CLBH = ZLZLS2.CLBH AND CGZL.XXCC = ZLZLS2.SIZE');
    SQL.Add('WHERE CGZL.Qty IS NOT NULL');
    SQL.Add('AND ZLZLS2.CLSL > 0');

    if (RB1.Checked) then
    begin
     SQL.Add('AND DDZL.BUYNO LIKE ''' + BuyNoEdit.Text + '%''');
    end
    else if (RB2.Checked) then
    begin
      SQL.Add('AND DDZL.ShipDate >= ''' + DateToStr(posd.Date) + '''');
      SQL.Add('AND DDZL.ShipDate <= ''' + DateToStr(poed.Date) + '''');
    end;

    if (POCB1.Text <> 'ALL') then
      SQL.Add('AND DDZL.GSBH = ''' + POCB1.Text + '''');

    SQL.Add('AND ZSZL.ZSDH = :ZSDH');
    SQL.Add('GROUP BY ZLZLS2.ZLBH, CLZL.CLDH, CLZL.YWPM, CGZL.Qty, DDZL.ShipDate, ZSZL.ZSDH, ZSZL.ZSJC, ZSZL.ZSYWJC, ZLZLS2.SIZE');
    SQL.Add(') AS K');
    SQL.Add('WHERE OverCLSL = :OverCLSL');
    //20141013 weston取消修正
    //memo2.Text:=sql.Text;
    Active := true;
  end;
end;

procedure Tpurchasekpi.DBGridEh2GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if (pom.FieldByName('overclsl').value = 1) then
    dbgrideh2.canvas.font.color:=$004080FF;
end;

procedure Tpurchasekpi.DBGridEh3GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if pod.FieldByName('overclsl').value = 1 then
    dbgrideh3.canvas.font.color:=$004080FF;
end;

procedure Tpurchasekpi.Button3Click(Sender: TObject);
begin
  with dsm do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT ZSJC, ZSYWJC, ERRF, COUNT(*) AS CONN FROM (');
    SQL.Add('SELECT CGZLSS.ZLBH, ZSZL.ZSJC, ZSZL.ZSYWJC, DDZL.ShipDate, CLZL.YWPM, CGZLSS.YQDate, CGZLSS.CFMDate,');
    SQL.Add('CONVERT(INT, CGZLSS.CFMDate)-CONVERT(INT, CGZLSS.YQDate) AS ERRDAY,');
    SQL.Add('(CASE');
    SQL.Add('WHEN (CONVERT(INT, CGZLSS.CFMDate)-CONVERT(INT, CGZLSS.YQDate) >= 5) THEN 1');
    SQL.Add('WHEN (CONVERT(INT, CGZLSS.CFMDate)-CONVERT(INT, CGZLSS.YQDate) <= -5) THEN 2');
    SQL.Add('ELSE 0 END) AS ERRF');
    SQL.Add('FROM CGZLSS');
    SQL.Add('LEFT JOIN CGZL ON CGZL.CGNO = CGZLSS.CGNO');
    SQL.Add('LEFT JOIN ZSZL ON ZSZL.ZSDH = CGZL.ZSBH');
    SQL.Add('LEFT JOIN CLZL ON CLZL.CLDH = CGZLSS.CLBH');
    SQL.Add('LEFT JOIN DDZL ON DDZL.DDBH = CGZLSS.ZLBH');

    if (RB3.Checked) then
    begin
      SQL.Add('WHERE DDZL.BUYNO LIKE ''' + BuyNoEdit2.Text + '%''');
    end
    else if (RB4.Checked) then
    begin
      SQL.Add('WHERE DDZL.ShipDate >= ''' + DateToStr(dssd.Date) + '''');
      SQL.Add('AND DDZL.ShipDate <= ''' + DateToStr(dsed.Date) + '''');
    end;

    if (dscb1.Text <> 'ALL') then
      SQL.Add('AND DDZL.GSBH = ''' + dscb1.Text + '''');

    if (CBX3.ItemIndex = 1) then //僅顯示主料
    begin
      SQL.Add('AND SUBSTRING(CGZLSS.CLBH, 1, 3) NOT IN');
      SQL.Add('(SELECT CLLB FROM CLOther');
      if (dscb1.Text <> 'ALL') then
        SQL.Add('WHERE GSBH = ''' + dscb1.Text + ''')')
      else if (dscb1.Text = 'ALL') then
        SQL.Add(')');
    end
    else if (CBX3.ItemIndex = 2) then //僅顯示附料
    begin
      SQL.Add('AND SUBSTRING(CGZLSS.CLBH, 1, 3) IN');
      SQL.Add('(SELECT CLLB FROM CLOther');
      if (dscb1.Text <> 'ALL') then
        SQL.Add('WHERE GSBH = ''' + dscb1.Text + ''')')
      else if (dscb1.Text = 'ALL') then
        SQL.Add(')');
    end;

    SQL.Add('GROUP BY CGZLSS.ZLBH, ZSZL.ZSJC, ZSZL.ZSYWJC, DDZL.ShipDate, CLZL.YWPM, CGZLSS.YQDate, CGZLSS.CFMDate');
    SQL.Add(') AS K');

    if (cb3.Checked) and (cb4.Checked) then
      SQL.Add('WHERE ERRF <> 0')
    else begin
      if (cb3.Checked) then
        SQL.Add('WHERE ERRF = 1');
      if (cb4.Checked) then
        SQL.Add('WHERE ERRF = 2');
    end;

    SQL.Add('GROUP BY ZSJC, ZSYWJC, ERRF');
    SQL.Add('ORDER BY COUNT(*) DESC, ZSYWJC');
    //memo1.text:=sql.text;
    Active := true;
  end;

  with dsd do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT * FROM (');
    SQL.Add('SELECT CGZLSS.ZLBH, ZSZL.ZSJC, ZSZL.ZSYWJC, DDZL.ShipDate, CLZL.YWPM, CGZLSS.YQDate, CGZLSS.CFMDate,');
    SQL.Add('CONVERT(INT, CGZLSS.CFMDate)-CONVERT(INT, CGZLSS.YQDate) AS ERRDAY,');
    SQL.Add('(CASE');
    SQL.Add('WHEN (CONVERT(INT, CGZLSS.CFMDate)-CONVERT(INT, CGZLSS.YQDate) >= 5) THEN 1');
    SQL.Add('WHEN (CONVERT(INT, CGZLSS.CFMDate)-CONVERT(INT, CGZLSS.YQDate) <= -5) THEN 2');
    SQL.Add('ELSE 0 END) AS ERRF');
    SQL.Add('FROM CGZLSS');
    SQL.Add('LEFT JOIN CGZL ON CGZL.CGNO = CGZLSS.CGNO');
    SQL.Add('LEFT JOIN ZSZL ON ZSZL.ZSDH = CGZL.ZSBH');
    SQL.Add('LEFT JOIN CLZL ON CLZL.CLDH = CGZLSS.CLBH');
    SQL.Add('LEFT JOIN DDZL ON DDZL.DDBH = CGZLSS.ZLBH');

    if (RB3.Checked) then
    begin
      SQL.Add('WHERE DDZL.BUYNO LIKE ''' + BuyNoEdit2.Text + '%''');
    end
    else if (RB4.Checked) then
    begin
      SQL.Add('WHERE DDZL.ShipDate >= ''' + DateToStr(dssd.Date) + '''');
      SQL.Add('AND DDZL.ShipDate <= ''' + DateToStr(dsed.Date) + '''');
    end;

    if (dscb1.Text <> 'ALL') then
      SQL.Add('AND DDZL.GSBH = ''' + dscb1.Text + '''');

    if (CBX3.ItemIndex = 1) then //僅顯示主料
    begin
      SQL.Add('AND SUBSTRING(CGZLSS.CLBH, 1, 3) NOT IN');
      SQL.Add('(SELECT CLLB FROM CLOther');
      if (dscb1.Text <> 'ALL') then
        SQL.Add('WHERE GSBH = ''' + dscb1.Text + ''')')
      else if (dscb1.Text = 'ALL') then
        SQL.Add(')');
    end
    else if (CBX3.ItemIndex = 2) then //僅顯示附料
    begin
      SQL.Add('AND SUBSTRING(CGZLSS.CLBH, 1, 3) IN');
      SQL.Add('(SELECT CLLB FROM CLOther');
      if (dscb1.Text <> 'ALL') then
        SQL.Add('WHERE GSBH = ''' + dscb1.Text + ''')')
      else if (dscb1.Text = 'ALL') then
        SQL.Add(')');
    end;

    SQL.Add('GROUP BY CGZLSS.ZLBH, ZSZL.ZSJC, ZSZL.ZSYWJC, DDZL.ShipDate, CLZL.YWPM, CGZLSS.YQDate, CGZLSS.CFMDate');
    SQL.Add(') AS K');
    SQL.Add('WHERE ZSJC = :ZSJC');
    SQL.Add('AND ERRF = :ERRF');
    SQL.Add('GROUP BY ZLBH, ZSJC, ZSYWJC, ShipDate, YWPM, YQDate, CFMDate, ERRDAY, ERRF');
    //memo2.text:=sql.text;
    Active := true;
  end;
end;

procedure Tpurchasekpi.DBGridEh4GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if (dsm.FieldByName('errf').value = 1) then
    dbgrideh4.canvas.font.color:=$004080FF;
  if (dsm.FieldByName('errf').value = 2) then
    dbgrideh4.canvas.font.color:=$00FF8080;
end;

procedure Tpurchasekpi.Button4Click(Sender: TObject);
begin
  with stgm do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT ZSDH,ZSJC, ZSYWJC,Max(ERRF) as ERRF, COUNT(*) AS CONN FROM (');
    SQL.Add('SELECT ZSZL.ZSDH,ZSZL.ZSJC, ZSZL.ZSYWJC, CLZL.YWPM, DDZL.ShipDate, DDZL.BUYNO, SUM(CGZLSS.Qty) AS Qty, KCRK.RKQty,');
    SQL.Add('MIN(CGZLSS.CFMDate) AS CGDate, KCRK.RKDate, CGZLSS.ZLBH AS RY, CGZLSS.CLBH, CGZL.ZSBH,');
    SQL.Add('CONVERT(INT, MAX(KCRK.RKDate))-CONVERT(INT, MIN(CGZLSS.CFMDate)) AS ERRDAY,');
    SQL.Add('(CASE');
    SQL.Add('WHEN (CONVERT(INT, MAX(KCRK.RKDate))-CONVERT(INT, MIN(CGZLSS.CFMDate)) >= 5) THEN 1');
    SQL.Add('WHEN (CONVERT(INT, MAX(KCRK.RKDate))-CONVERT(INT, MIN(CGZLSS.CFMDate)) <= -5) THEN 2');
    SQL.Add('WHEN MAX(KCRK.RKDate) IS NULL THEN 3');
    SQL.Add('ELSE 0 END) AS ERRF');
    SQL.Add('FROM CGZLSS');
    SQL.Add('LEFT JOIN CGZL ON CGZL.CGNO = CGZLSS.CGNO');
    SQL.Add('LEFT JOIN ZSZL ON ZSZL.ZSDH = CGZL.ZSBH');
    SQL.Add('LEFT JOIN CLZL ON CLZL.CLDH = CGZLSS.CLBH');
    SQL.Add('LEFT JOIN DDZL ON DDZL.DDBH = CGZLSS.ZLBH');
    SQL.Add('LEFT JOIN (');
    SQL.Add('SELECT KCRKS.CGBH, KCRKS.CLBH, KCRK.ZSBH, SUM(KCRKS.PaQty) AS RKQty, MAX(KCRK.USERDATE) AS RKDate FROM KCRKS');
    SQL.Add('LEFT JOIN KCRK ON KCRK.RKNO = KCRKS.RKNO');
    SQL.Add('GROUP BY KCRKS.CGBH, KCRKS.CLBH, KCRK.ZSBH');
    SQL.Add(') AS KCRK ON KCRK.CGBH = CGZLSS.ZLBH AND KCRK.CLBH = CGZLSS.CLBH AND KCRK.ZSBH = CGZL.ZSBH');

    if (stgcb1.Text <> 'ALL') then
      SQL.Add('WHERE DDZL.GSBH = ''' + stgcb1.Text + '''');

    if (CBBUY.Checked) then
      SQL.Add('AND DDZL.BUYNO LIKE ''' + Edit2.Text + '%''');

    if (CBRK.Checked) then
      SQL.Add('AND KCRK.RKDate >= ''' + DateToStr(stgsd.Date) + ''' AND KCRK.RKDate <= ''' + DateToStr(stged.Date) + '''');

    if (CBX4.ItemIndex = 1) then //僅顯示主料
    begin
      SQL.Add('AND SUBSTRING(CGZLSS.CLBH, 1, 3) NOT IN');
      SQL.Add('(SELECT CLLB FROM CLOther');
      if (stgcb1.Text <> 'ALL') then
        SQL.Add('WHERE GSBH = ''' + stgcb1.Text + ''')')
      else if (stgcb1.Text = 'ALL') then
        SQL.Add(')');
    end
    else if (CBX4.ItemIndex = 2) then //僅顯示附料
    begin
      SQL.Add('AND SUBSTRING(CGZLSS.CLBH, 1, 3) IN');
      SQL.Add('(SELECT CLLB FROM CLOther');
      if (stgcb1.Text <> 'ALL') then
        SQL.Add('WHERE GSBH = ''' + stgcb1.Text + ''')');
      if (stgcb1.Text = 'ALL') then
        SQL.Add(')');
    end;

    SQL.Add('GROUP BY ZSZL.ZSDH,ZSZL.ZSJC, ZSZL.ZSYWJC, CLZL.YWPM, DDZL.ShipDate, DDZL.BUYNO, CGZLSS.ZLBH, CGZLSS.CLBH, CGZL.ZSBH, KCRK.RKQty, KCRK.RKDate');
    SQL.Add(') AS K');
    SQL.Add('WHERE (ERRF = 100');

    if (NOT cb5.Checked) AND (NOT cb6.Checked) AND (NOT cb7.Checked) then
      SQL.Add('OR ERRF = 0 OR ERRF = 1 OR ERRF = 2 OR ERRF = 3)')
    else begin
      if (cb5.Checked) then
        SQL.Add('OR ERRF = 1');

      if (cb6.Checked) then
        SQL.Add('OR ERRF = 2');

      if (cb7.Checked) then
        SQL.Add('OR ERRF = 3');

      SQL.Add(')');
    end;

    SQL.Add('GROUP BY ZSDH,ZSJC, ZSYWJC');
    SQL.Add('ORDER BY COUNT(*) DESC, ZSYWJC');
    //funcObj.WriteErrorLog(sql.Text);
    Active := true;
  end;

  with stgd do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT ZSDH,RY, ZSYWJC, YWPM, ShipDate, Qty, RKQty, CGDate, RKDate, ERRDAY, ERRF FROM (');
    SQL.Add('SELECT ZSZL.ZSDH,ZSZL.ZSJC, ZSZL.ZSYWJC, CLZL.YWPM, DDZL.ShipDate, DDZL.BUYNO, SUM(CGZLSS.Qty) AS Qty, KCRK.RKQty,');
    SQL.Add('MIN(CGZLSS.CFMDate) AS CGDate, KCRK.RKDate, CGZLSS.ZLBH AS RY, CGZLSS.CLBH, CGZL.ZSBH,');
    SQL.Add('CONVERT(INT, MAX(KCRK.RKDate))-CONVERT(INT, MIN(CGZLSS.CFMDate)) AS ERRDAY,');
    SQL.Add('(CASE');
    SQL.Add('WHEN (CONVERT(INT, MAX(KCRK.RKDate))-CONVERT(INT, MIN(CGZLSS.CFMDate)) >= 5) THEN 1');
    SQL.Add('WHEN (CONVERT(INT, MAX(KCRK.RKDate))-CONVERT(INT, MIN(CGZLSS.CFMDate)) <= -5) THEN 2');
    SQL.Add('WHEN MAX(KCRK.RKDate) IS NULL THEN 3');
    SQL.Add('ELSE 0 END) AS ERRF');
    SQL.Add('FROM CGZLSS');
    SQL.Add('LEFT JOIN CGZL ON CGZL.CGNO = CGZLSS.CGNO');
    SQL.Add('LEFT JOIN ZSZL ON ZSZL.ZSDH = CGZL.ZSBH');
    SQL.Add('LEFT JOIN CLZL ON CLZL.CLDH = CGZLSS.CLBH');
    SQL.Add('LEFT JOIN DDZL ON DDZL.DDBH = CGZLSS.ZLBH');
    SQL.Add('LEFT JOIN (');
    SQL.Add('SELECT KCRKS.CGBH, KCRKS.CLBH, KCRK.ZSBH, SUM(KCRKS.PaQty) AS RKQty, MAX(KCRK.USERDATE) AS RKDate FROM KCRKS');
    SQL.Add('LEFT JOIN KCRK ON KCRK.RKNO = KCRKS.RKNO');
    SQL.Add('GROUP BY KCRKS.CGBH, KCRKS.CLBH, KCRK.ZSBH');
    SQL.Add(') AS KCRK ON KCRK.CGBH = CGZLSS.ZLBH AND KCRK.CLBH = CGZLSS.CLBH AND KCRK.ZSBH = CGZL.ZSBH');

    if (stgcb1.Text <> 'ALL') then
      SQL.Add('WHERE DDZL.GSBH = ''' + stgcb1.Text + '''');

    if (CBBUY.Checked) then
      SQL.Add('AND DDZL.BUYNO LIKE ''' + Edit2.Text + '%''');

    if (CBRK.Checked) then
      SQL.Add('AND KCRK.RKDate >= ''' + DateToStr(stgsd.Date) + ''' AND KCRK.RKDate <= ''' + DateToStr(stged.Date) + '''');

    if (CBX4.ItemIndex = 1) then //僅顯示主料
    begin
      SQL.Add('AND SUBSTRING(CGZLSS.CLBH, 1, 3) NOT IN');
      SQL.Add('(SELECT CLLB FROM CLOther');
      if (stgcb1.Text <> 'ALL') then
        SQL.Add('WHERE GSBH = ''' + stgcb1.Text + ''')')
      else if (stgcb1.Text = 'ALL') then
        SQL.Add(')');
    end
    else if (CBX4.ItemIndex = 2) then //僅顯示附料
    begin
      SQL.Add('AND SUBSTRING(CGZLSS.CLBH, 1, 3) IN');
      SQL.Add('(SELECT CLLB FROM CLOther');
      if (stgcb1.Text <> 'ALL') then
        SQL.Add('WHERE GSBH = ''' + stgcb1.Text + ''')');
      if (stgcb1.Text = 'ALL') then
        SQL.Add(')');
    end;

    SQL.Add('GROUP BY ZSZL.ZSDH,ZSZL.ZSJC, ZSZL.ZSYWJC, CLZL.YWPM, DDZL.ShipDate, DDZL.BUYNO, CGZLSS.ZLBH, CGZLSS.CLBH, CGZL.ZSBH, KCRK.RKQty, KCRK.RKDate');
    SQL.Add(') AS K');
    SQL.Add('WHERE ZSDH = :ZSDH');
    //SQL.Add('AND ERRF >0');
    SQL.Add('ORDER BY ERRDAY DESC, ShipDate, YWPM');
    //funcObj.WriteErrorLog(sql.Text);
    Active := true;
  end;
end;

procedure Tpurchasekpi.DBGridEh7GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if (stgm.FieldByName('errf').value = 1) then
    dbgrideh7.canvas.font.color:=$004080FF;
  if (stgm.FieldByName('errf').value = 2) then
    dbgrideh7.canvas.font.color:=$00FF8080;
  if (stgm.FieldByName('errf').value = 3) then
    dbgrideh7.canvas.font.color:=$0000BB00;
end;

procedure Tpurchasekpi.DBGridEh6GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
    if (stgm.FieldByName('errf').value = 3) and ((stgd.FieldByName('shipdate').value - DateToStr(Now)) < 45) then
      dbgrideh6.canvas.font.color:=$004080FF;
end;

procedure Tpurchasekpi.Button5Click(Sender: TObject);
begin
with ikm do
begin
  active:=false;
  sql.Clear;
  sql.Add('select k.zsywjc,k.errf,count(*) as conn');
  sql.Add('from(');
  sql.Add('select zszl.zsywjc,clzl.ywpm,ddzl.shipdate,iqc.iqcdate,kcrks.userdate');
  sql.Add('	,convert(int,iqc.iqcdate)-convert(int,kcrks.userdate) as errday');
  sql.Add('	,(case  ');
  sql.Add('		when (convert(int,iqc.iqcdate)-convert(int,kcrks.userdate)>=7) then 1');
  sql.Add('		when iqcdate is null then 2');
  sql.Add('		else 0');
  sql.Add('	  end) as errf ');
  sql.Add('from kcrks');
  sql.Add(' left join kcrk on kcrks.rkno = kcrk.rkno');
  sql.Add(' left join zszl on kcrk.zsbh=zszl.zsdh');
  sql.Add(' left join clzl on kcrks.clbh=clzl.cldh');
  sql.Add(' left join ddzl on kcrks.cgbh=ddzl.ddbh');
  sql.Add(' left join iqc on iqc.rkno = kcrks.rkno and iqc.clbh = kcrks.clbh and iqc.pass='+''''+'Y'+'''');
  sql.Add('where ddzl.shipdate>='+''''+datetostr(IKsd.Date)+'''');
  sql.Add('   and ddzl.shipdate<='+''''+datetostr(IKed.Date)+'''');
  if stgcb1.Text<>'ALL' then
    sql.Add('	and ddzl.gsbh='+''''+stgcb1.Text+'''');
    if CBX5.ItemIndex=1 then   //僅顯示主料
  begin
    sql.add(' and substring(clzl.cldh,1,3) not in ');
    sql.add(' (select cllb from CLOther ');
    if IKCB1.Text<>'ALL' then
      sql.Add('where GSBH='+''''+IKCB1.Text+''''+')');
    if IKCB1.Text='ALL' then
      sql.Add(' )');
  end;
  if CBX5.ItemIndex=2 then  //僅顯示附料
  begin
    sql.add(' and substring(clzl.cldh,1,3) in ');
    sql.add(' (select cllb from CLOther ');
    if IKCB1.Text<>'ALL' then
      sql.Add('where GSBH='+''''+IKCB1.Text+''''+')');
    if IKCB1.Text='ALL' then
      sql.Add(' )');
  end;
  sql.Add(' group by zszl.zsywjc,clzl.ywpm,ddzl.shipdate,iqc.iqcdate,kcrks.userdate');
  sql.Add(') K');
  sql.Add('');
  sql.add('where k.errf=5');
  if (not cb8.Checked) and (not cb9.Checked) then
    sql.Add('or k.errf=0 or k.errf=1 or k.errf=2 ');
  if cb8.Checked then
    sql.Add('or k.errf=1');
  if cb9.Checked then
    sql.Add('or k.errf=2');

  sql.Add('group by k.zsywjc,k.errf');
  sql.Add('order by k.zsywjc,k.errf');
  sql.Add('');
  //memo1.text:=sql.text;
  active:=true;
end;

with IKd do
begin
  active:=false;
  sql.Clear;
  sql.Add('select *');
  sql.Add('from(');
  sql.Add('select ddzl.ddbh,zszl.zsywjc,clzl.ywpm,ddzl.shipdate,iqc.iqcdate,kcrks.userdate');
  sql.Add('	,convert(int,iqc.iqcdate)-convert(int,kcrks.userdate) as errday');
  sql.Add('	,(case  ');
  sql.Add('		when (convert(int,iqc.iqcdate)-convert(int,kcrks.userdate)>=7) then 1');
  sql.Add('		when iqcdate is null then 2');
  sql.Add('		else 0');
  sql.Add('	  end) as errf ');
  sql.Add('from kcrks');
  sql.Add(' left join kcrk on kcrks.rkno = kcrk.rkno');
  sql.Add(' left join zszl on kcrk.zsbh=zszl.zsdh');
  sql.Add(' left join clzl on kcrks.clbh=clzl.cldh');
  sql.Add(' left join ddzl on kcrks.cgbh=ddzl.ddbh');
  sql.Add(' left join iqc on iqc.rkno = kcrks.rkno and iqc.clbh = kcrks.clbh and iqc.pass='+''''+'Y'+'''');
  sql.Add('where ddzl.shipdate>='+''''+datetostr(IKsd.Date)+'''');
  sql.Add('   and ddzl.shipdate<='+''''+datetostr(IKed.Date)+'''');
  if IKCB1.Text<>'ALL' then
    sql.Add('	and ddzl.gsbh='+''''+IKCB1.Text+'''');
  if CBX5.ItemIndex=1 then   //僅顯示主料
  begin
    sql.add(' and substring(clzl.cldh,1,3) not in ');
    sql.add(' (select cllb from CLOther ');
    if IKCB1.Text<>'ALL' then
      sql.Add('where GSBH='+''''+IKCB1.Text+''''+')');
    if IKCB1.Text='ALL' then
      sql.Add(' )');
  end;
  if CBX5.ItemIndex=2 then  //僅顯示附料
  begin
    sql.add(' and substring(clzl.cldh,1,3) in ');
    sql.add(' (select cllb from CLOther ');
    if IKCB1.Text<>'ALL' then
      sql.Add('where GSBH='+''''+IKCB1.Text+''''+')');
    if IKCB1.Text='ALL' then
      sql.Add(' )');
  end;
  sql.Add(' group by ddzl.ddbh,zszl.zsywjc,clzl.ywpm,ddzl.shipdate,iqc.iqcdate,kcrks.userdate');
  sql.Add(') K');
  sql.Add('where k.zsywjc=:zsywjc');
  sql.Add('	and k.errf=:errf');
  sql.Add('order by k.shipdate,k.ywpm');
  sql.Add('');
  //memo1.text:=sql.text;
  active:=true;
end;
end;

procedure Tpurchasekpi.DBGridEh8GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if (IKm.FieldByName('errf').value = 1) then
    dbgrideh8.canvas.font.color:=$004080FF;
  if (IKm.FieldByName('errf').value = 2) then
    dbgrideh8.canvas.font.color:=$00FF8080;
end;

procedure Tpurchasekpi.Button6Click(Sender: TObject);
var
      eclApp,WorkBook:olevariant;
 //     xlsFileName:string;
      i,j,s,z:integer;
begin

if PKPIM.Active then
  begin
    if PKPIM.recordcount=0 then
      begin
        showmessage('No record.');
        abort;
      end;
  end
  else
    begin
      showmessage('No record.');
      abort;
    end;

try
  eclApp:=CreateOleObject('Excel.Application');
  WorkBook:=CreateOleObject('Excel.Sheet');
except
  Application.MessageBox('NO Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
  Exit;
end;

try
  WorkBook:=eclApp.workbooks.Add;
  for i:=3 to PKPIM.RecordCount do
    eclapp.workbooks[1].sheets.add;
  eclapp.workbooks[1].sheets[1].name:='Total Report';
  eclApp.workbooks[1].sheets[1].Cells(1,1):='NO';
  pkpid.active:=false;
  for   i:=1   to   PKPIM.fieldcount   do
    begin
      eclApp.workbooks[1].sheets[1].Cells(1,i+1):=PKPIM.fields[i-1].FieldName;
    end;
  PKPIM.First;
  j:=2;
  while   not  PKPIM.Eof   do
    begin
      eclApp.workbooks[1].sheets[1].Cells(j,1):=j-1;     //加入NO號碼
      for   i:=1   to   PKPIM.fieldcount   do
        begin
          eclApp.workbooks[1].sheets[1].Cells(j,i+1):=PKPIM.Fields[i-1].Value;
          eclApp.workbooks[1].sheets[1].Cells.Cells.item[j,i+1].font.size:='8';
        end;
      PKPIM.Next;
      inc(j);
    end;
//  eclapp.columns.autofit;

//產生明細 edit by billweng 2011/6/29
  PKPIM.First;
  pkpid.active:=true;
  s:=2;
  z:=1;
  while   not  PKPIM.Eof   do
  begin
    if  Pkpim.fields[2].IsNull then
      eclapp.workbooks[1].sheets[s].name:=PKPIM.fields[0].value+'(--)'+'('+inttostr(z)+')'    //2014/03/24 修正命名重複問題
    else
//      eclapp.workbooks[1].sheets[s].name:=PKPIM.fields[0].value+'('+inttostr(Pkpim.fields[2].Value)+')';
      eclapp.workbooks[1].sheets[s].name:=PKPIM.fields[0].value+'('+inttostr(z)+')';    //修改頁簽命名方式, 改為加上流水號, 避免頁簽名稱重複
      eclApp.workbooks[1].sheets[s].Cells(1,1):='NO';

    for   i:=1   to   PKPID.fieldcount   do
    begin
      eclApp.workbooks[1].sheets[s].Cells(1,i+1):=PKPID.fields[i-1].FieldName;
    end;
    PKPID.First;
    j:=2;
    while   not  PKPID.Eof   do
    begin
      eclApp.workbooks[1].sheets[s].Cells(j,1):=j-1;
      for   i:=1   to   PKPID.fieldcount   do
        begin
          eclApp.workbooks[1].sheets[s].Cells(j,i+1):=PKPID.Fields[i-1].Value;
          eclApp.workbooks[1].sheets[s].Cells.Cells.item[j,i+1].font.size:='8';
        end;
      PKPID.Next;
      inc(j);
    end;
    inc(z);  //20140324 weston 修改Sheet命名重複
    S:=S+1;
    PKPIM.Next;
  end;
//結束

  eclapp.columns.autofit;
  showmessage('Succeed.');
  eclApp.Visible:=True;
except
  on   F:Exception   do
  begin
    showmessage(F.Message);
  end;
end;

end;

procedure Tpurchasekpi.Button7Click(Sender: TObject);
var
      eclApp,WorkBook:olevariant;
 //     xlsFileName:string;
      i,j,s:integer;
begin

if POM.Active then
  begin
    if POM.recordcount=0 then
      begin
        showmessage('No record.');
        abort;
      end;
  end
  else
    begin
      showmessage('No record.');
      abort;
    end;

try
  eclApp:=CreateOleObject('Excel.Application');
  WorkBook:=CreateOleObject('Excel.Sheet');
except
  Application.MessageBox('NO Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
  Exit;
end;

try
  WorkBook:=eclApp.workbooks.Add;
  for i:=3 to POM.RecordCount do
    eclapp.workbooks[1].sheets.add;
  eclapp.workbooks[1].sheets[1].name:='Total Report';
  eclApp.workbooks[1].sheets[1].Cells(1,1):='NO';

  POD.active:=false;

  for   i:=1   to   POM.fieldcount   do
    begin
      eclApp.workbooks[1].sheets[1].Cells(1,i+1):=POM.fields[i-1].FieldName;
    end;
  POM.First;
  j:=2;
  while   not  POM.Eof   do
    begin
      eclApp.workbooks[1].sheets[1].Cells(j,1):=j-1;
      for   i:=1   to   POM.fieldcount   do
        begin
          eclApp.workbooks[1].sheets[1].Cells(j,i+1):=POM.Fields[i-1].Value;
          eclApp.workbooks[1].sheets[1].Cells.Cells.item[j,i+1].font.size:='8';
        end;
      POM.Next;
      inc(j);
    end;
//  eclapp.columns.autofit;

//產生明細 edit by billweng 2011/6/29
  POM.First;
  POD.active:=true;
  s:=2;
  while   not  POM.Eof   do
  begin

    eclapp.workbooks[1].sheets[s].name:=POM.fields[0].AsString+'_'+POM.fields[1].value+'('+inttostr(POM.fields[3].value)+')';
    eclApp.workbooks[1].sheets[s].Cells(1,1):='NO';

    for   i:=1   to   POD.fieldcount   do
    begin
      eclApp.workbooks[1].sheets[s].Cells(1,i+1):=POD.fields[i-1].FieldName;
    end;
    POD.First;
    j:=2;
    while   not  POD.Eof   do
    begin
      eclApp.workbooks[1].sheets[s].Cells(j,1):=j-1;
      for   i:=1   to   POD.fieldcount   do
        begin
          eclApp.workbooks[1].sheets[s].Cells(j,i+1):=POD.Fields[i-1].Value;
          eclApp.workbooks[1].sheets[s].Cells.Cells.item[j,i+1].font.size:='8';
        end;
      POD.Next;
      inc(j);
    end;
    S:=S+1;
    POM.Next;
  end;
//結束

  eclapp.columns.autofit;
  showmessage('Succeed.');
  eclApp.Visible:=True;
except
  on   F:Exception   do
    showmessage(F.Message);
end;

end;

procedure Tpurchasekpi.Button8Click(Sender: TObject);
var
      eclApp,WorkBook:olevariant;
 //     xlsFileName:string;
      i,j,s,counter:integer;
begin

if DSM.Active then
  begin
    if DSM.recordcount=0 then
      begin
        showmessage('No record.');
        abort;
      end;
  end
  else
    begin
      showmessage('No record.');
      abort;
    end;

try
  eclApp:=CreateOleObject('Excel.Application');
  WorkBook:=CreateOleObject('Excel.Sheet');
except
  Application.MessageBox('NO Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
  Exit;
end;

try
  WorkBook:=eclApp.workbooks.Add;
  for i:=3 to DSM.RecordCount do
    eclapp.workbooks[1].sheets.add;
  eclapp.workbooks[1].sheets[1].name:='Total Report';
  eclApp.workbooks[1].sheets[1].Cells(1,1):='NO';

  DSD.active:=false;

  for   i:=1   to   DSM.fieldcount   do
    begin
      eclApp.workbooks[1].sheets[1].Cells(1,i+1):=DSM.fields[i-1].FieldName;
    end;
  DSM.First;
  j:=2;
  while   not  DSM.Eof   do
    begin
      eclApp.workbooks[1].sheets[1].Cells(j,1):=j-1;
      for   i:=1   to   DSM.fieldcount   do
        begin
          eclApp.workbooks[1].sheets[1].Cells(j,i+1):=DSM.Fields[i-1].Value;
          eclApp.workbooks[1].sheets[1].Cells.Cells.item[j,i+1].font.size:='8';
        end;
      DSM.Next;
      inc(j);
    end;
//  eclapp.columns.autofit;

//產生明細 edit by billweng 2011/6/29
  DSM.First;
  DSD.active:=true;
  s:=2;
  counter := 1;
  while   not  DSM.Eof   do
  begin
    eclapp.workbooks[1].sheets[s].name:=IntToStr(counter)+'. '+DSM.fields[1].value+'('+inttostr(DSM.fields[2].value)+')';
    eclApp.workbooks[1].sheets[s].Cells(1,1):='NO';
    Inc(counter);

    for   i:=1   to   DSD.fieldcount   do
    begin
      eclApp.workbooks[1].sheets[s].Cells(1,i+1):=DSD.fields[i-1].FieldName;
    end;
    DSD.First;
    j:=2;
    while   not  DSD.Eof   do
    begin
      eclApp.workbooks[1].sheets[s].Cells(j,1):=j-1;
      for   i:=1   to   DSD.fieldcount   do
        begin
          eclApp.workbooks[1].sheets[s].Cells(j,i+1):=DSD.Fields[i-1].Value;
          eclApp.workbooks[1].sheets[s].Cells.Cells.item[j,i+1].font.size:='8';
        end;
      DSD.Next;
      inc(j);
    end;
    S:=S+1;
    DSM.Next;
  end;
//結束

  eclapp.columns.autofit;
  showmessage('Succeed.');
  eclApp.Visible:=True;
except
  on   F:Exception   do
    showmessage(F.Message);
end;


end;

procedure Tpurchasekpi.Button9Click(Sender: TObject);
var
      eclApp,WorkBook:olevariant;
 //     xlsFileName:string;
      i,j,s:integer;
begin

if STGM.Active then
  begin
    if STGM.recordcount=0 then
      begin
        showmessage('No record.');
        abort;
      end;
  end
  else
    begin
      showmessage('No record.');
      abort;
    end;

try
  eclApp:=CreateOleObject('Excel.Application');
  WorkBook:=CreateOleObject('Excel.Sheet');
except
  Application.MessageBox('NO Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
  Exit;
end;

try
  WorkBook:=eclApp.workbooks.Add;
  for i:=3 to STGM.RecordCount do
    eclapp.workbooks[1].sheets.add;
  eclapp.workbooks[1].sheets[1].name:='Total Report';
  eclApp.workbooks[1].sheets[1].Cells(1,1):='NO';

  STGD.active:=false;

  for   i:=1   to   STGM.fieldcount   do
    begin
      eclApp.workbooks[1].sheets[1].Cells(1,i+1):=STGM.fields[i-1].FieldName;
    end;
  STGM.First;
  j:=2;
  while   not  STGM.Eof   do
    begin
      eclApp.workbooks[1].sheets[1].Cells(j,1):=j-1;
      for   i:=1   to   STGM.fieldcount   do
        begin
          eclApp.workbooks[1].sheets[1].Cells(j,i+1):=STGM.Fields[i-1].Value;
          eclApp.workbooks[1].sheets[1].Cells.Cells.item[j,i+1].font.size:='8';
        end;
      STGM.Next;
      inc(j);
    end;
//  eclapp.columns.autofit;

//產生明細 edit by billweng 2011/6/29
  STGM.First;
  STGD.active:=true;

  s:=2;
  while   not  STGM.Eof   do
  begin

    eclapp.workbooks[1].sheets[s].name:=STGM.fields[1].value+'('+inttostr(STGM.fields[3].value)+')';
    eclApp.workbooks[1].sheets[s].Cells(1,1):='NO';

    for   i:=1   to   DSD.fieldcount   do
    begin
      eclApp.workbooks[1].sheets[s].Cells(1,i+1):=STGD.fields[i-1].FieldName;
    end;
    STGD.First;
    j:=2;
    while   not  STGD.Eof   do
    begin
      eclApp.workbooks[1].sheets[s].Cells(j,1):=j-1;
      for   i:=1   to   STGD.fieldcount   do
        begin
          eclApp.workbooks[1].sheets[s].Cells(j,i+1):=STGD.Fields[i-1].Value;
          eclApp.workbooks[1].sheets[s].Cells.Cells.item[j,i+1].font.size:='8';
        end;
      STGD.Next;
      inc(j);
    end;
    S:=S+1;
    STGM.Next;
  end;
//結束

  eclapp.columns.autofit;
  showmessage('Succeed.');
  eclApp.Visible:=True;
except
  on   F:Exception   do
    showmessage(F.Message);
end;
end;

procedure Tpurchasekpi.Button10Click(Sender: TObject);
var
      eclApp,WorkBook:olevariant;
 //     xlsFileName:string;
      i,j,s:integer;
begin

if IKM.Active then
  begin
    if IKM.recordcount=0 then
      begin
        showmessage('No record.');
        abort;
      end;
  end
  else
    begin
      showmessage('No record.');
      abort;
    end;

try
  eclApp:=CreateOleObject('Excel.Application');
  WorkBook:=CreateOleObject('Excel.Sheet');
except
  Application.MessageBox('NO Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
  Exit;
end;

try
  WorkBook:=eclApp.workbooks.Add;
  for i:=3 to IKM.RecordCount do
    eclapp.workbooks[1].sheets.add;
  eclapp.workbooks[1].sheets[1].name:='Total Report';
  eclApp.workbooks[1].sheets[1].Cells(1,1):='NO';

  IKD.active:=false;

  for   i:=1   to   IKM.fieldcount   do
    begin
      eclApp.workbooks[1].sheets[1].Cells(1,i+1):=IKM.fields[i-1].FieldName;
    end;
  IKM.First;
  j:=2;
  while   not  IKM.Eof   do
    begin
      eclApp.workbooks[1].sheets[1].Cells(j,1):=j-1;
      for   i:=1   to   IKM.fieldcount   do
        begin
          eclApp.workbooks[1].sheets[1].Cells(j,i+1):=IKM.Fields[i-1].Value;
          eclApp.workbooks[1].sheets[1].Cells.Cells.item[j,i+1].font.size:='8';
        end;
      IKM.Next;
      inc(j);
    end;
//  eclapp.columns.autofit;

//產生明細 edit by billweng 2011/6/29
  IKM.First;
  IKD.active:=true;
  s:=2;
  while   not  IKM.Eof   do
  begin
    eclapp.workbooks[1].sheets[s].name:=IKM.fields[0].value+'('+inttostr(IKM.fields[1].value)+')';
    eclApp.workbooks[1].sheets[s].Cells(1,1):='NO';

    for   i:=1   to   IKD.fieldcount   do
    begin
      eclApp.workbooks[1].sheets[s].Cells(1,i+1):=IKD.fields[i-1].FieldName;
    end;
    IKD.First;
    j:=2;
    while   not  IKD.Eof   do
    begin
      eclApp.workbooks[1].sheets[s].Cells(j,1):=j-1;
      for   i:=1   to   IKD.fieldcount   do
        begin
          eclApp.workbooks[1].sheets[s].Cells(j,i+1):=IKD.Fields[i-1].Value;
          eclApp.workbooks[1].sheets[s].Cells.Cells.item[j,i+1].font.size:='8';
        end;
      IKD.Next;
      inc(j);
    end;
    S:=S+1;
    IKM.Next;
  end;
//結束

  eclapp.columns.autofit;
  showmessage('Succeed.');
  eclApp.Visible:=True;
except
  on   F:Exception   do
    showmessage(F.Message);
end;

end;
procedure Tpurchasekpi.Button11Click(Sender: TObject);
begin
  if (RB7.Checked) then
  begin
    if (Length(BuyNoEdit4.Text) < 6) then
    begin
      ShowMessage('Please input BuyNO 6 char!');
      Exit;
    end;
  end;

  with QKM do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('select ZSZLA.ZSJC,count(*) as Count from ( ');
    SQL.Add('select CGZL.CGNO,CGZL.ZSBH,ZLZLS2.ZLBH,ZLZLS2.CLBH,ZLZLS2.CSBH,CLZL.YWPM,CLZL.CQDH, ');
    SQL.Add('case when CLZL.CQDH=''TW'' then ZLZLS2.CSBH else ZSZL_DEV.ZSDH_TW end as PayZSDH,CGZL.CGLX ');
    SQL.Add('from CGZL ');
    SQL.Add('left join CGZLS on CGZL.CGNO=CGZLS.CGNO ');
    SQL.Add('left join CLZL on CLZL.CLDH=CGZLS.CLBH ');
    SQL.Add('left join CGZLSS on CGZLSS.CGNO=CGZLS.CGNO and CGZLSS.CLBH=CGZLS.CLBH ');
    SQL.Add('left join DDZL on DDZL.DDBH=CGZLSS.ZLBH ');
    SQL.Add('left join ( ');
    SQL.Add('select ZLZLS2.ZLBH,ZLZLS2.CLBH,Max(ZLZLS2.CSBH) as CSBH ');
    SQL.Add('from ZLZLS2 ');
    SQL.Add('left join DDZL on DDZL.DDBH=ZLZLS2.ZLBH ');
    SQL.Add('WHERE DDZL.DDBH like ''' + DDBHEdit.Text + '%''');

    if (RB7.Checked) then
    begin
      SQL.Add('and DDZL.BuyNO LIKE ''' + BuyNoEdit4.Text + '%''');
    end
    else if (RB8.Checked) then
    begin
      SQL.Add('and DDZL.ShipDate >= ''' + DateToStr(KSD.Date) + '''');
      SQL.Add('AND DDZL.ShipDate <= ''' + DateToStr(KED.Date) + '''');
    end;

    SQL.Add('and ZLZLS2.CLSL>0 and ZLZLS2.ZMLB=''N'' and CSBH<>'''' and CSBH is not null ');
    SQL.Add('Group by ZLZLS2.ZLBH,ZLZLS2.CLBH ');
    SQL.Add('           ) ZLZLS2 on ZLZLS2.ZLBH=CGZLSS.ZLBH and CGZLSS.CLBH=ZLZLS2.CLBH ');
    SQL.Add('left join ZSZL_DEV on  ZSZL_DEV.ZSDH=ZLZLS2.CSBH  and ZSZL_DEV.GSBH='+''''+main.edit2.Text+'''');
    SQL.Add('Where DDZL.DDBH like ''' + DDBHEdit.Text + '%''');

    if (RB7.Checked) then
    begin
      SQL.Add('and DDZL.BuyNO LIKE ''' + BuyNoEdit4.Text + '%''');
    end
    else if (RB8.Checked) then
    begin
      SQL.Add('and DDZL.ShipDate >= ''' + DateToStr(KSD.Date) + '''');
      SQL.Add('AND DDZL.ShipDate <= ''' + DateToStr(KED.Date) + '''');
    end;

    SQL.Add(') CGZL ');
    SQL.Add('left join ZSZL as ZSZLA on ZSZLA.ZSDH=CGZL.ZSBH ');
    SQL.Add('left join ZSZL as ZSZLB on ZSZLB.ZSDH=CGZL.PayZSDH ');
    SQL.Add('where ZSBH<>PayZSDH ');
    SQL.Add('Group by ZSZLA.ZSJC');
    //funcobj.WriteErrorLog(sql.Text);
    Active := true;
  end;

  with QKD do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('select CGNO,ZLBH,CLBH,YWPM,CQDH,ZSBH,CSBH,PayZSDH,CGLX,ZSZLA.ZSJC as ZSJCA,ZSZLB.ZSJC as ZSJCB from ( ');
    SQL.Add('select CGZL.CGNO,CGZL.ZSBH,ZLZLS2.ZLBH,ZLZLS2.CLBH,ZLZLS2.CSBH,CLZL.YWPM,CLZL.CQDH, ');
    SQL.Add('case when CLZL.CQDH=''TW'' then ZLZLS2.CSBH else ZSZL_DEV.ZSDH_TW end as PayZSDH,CGZL.CGLX ');
    SQL.Add('from CGZL ');
    SQL.Add('left join CGZLS on CGZL.CGNO=CGZLS.CGNO ');
    SQL.Add('left join CLZL on CLZL.CLDH=CGZLS.CLBH ');
    SQL.Add('left join CGZLSS on CGZLSS.CGNO=CGZLS.CGNO and CGZLSS.CLBH=CGZLS.CLBH ');
    SQL.Add('left join DDZL on DDZL.DDBH=CGZLSS.ZLBH ');
    SQL.Add('left join ( ');
    SQL.Add('           select ZLZLS2.ZLBH,ZLZLS2.CLBH,Max(ZLZLS2.CSBH) as CSBH ');
    SQL.Add('           from ZLZLS2 ');
    SQL.Add('           left join DDZL on DDZL.DDBH=ZLZLS2.ZLBH ');
    SQL.Add(' where DDZL.DDBH like ''' + DDBHEdit.Text + '%''');

    if (RB7.Checked) then
    begin
      SQL.Add('and DDZL.BuyNO LIKE ''' + BuyNoEdit4.Text + '%''');
    end
    else if (RB8.Checked) then
    begin
      SQL.Add('and DDZL.ShipDate >= ''' + DateToStr(KSD.Date) + '''');
      SQL.Add('AND DDZL.ShipDate <= ''' + DateToStr(KED.Date) + '''');
    end;

    SQL.Add('           and ZLZLS2.CLSL>0 and ZLZLS2.ZMLB=''N'' and CSBH<>'''' and CSBH is not null ');
    SQL.Add('           Group by ZLZLS2.ZLBH,ZLZLS2.CLBH ');
    SQL.Add('           ) ZLZLS2 on ZLZLS2.ZLBH=CGZLSS.ZLBH and CGZLSS.CLBH=ZLZLS2.CLBH ');
    SQL.Add('left join ZSZL_DEV on  ZSZL_DEV.ZSDH=ZLZLS2.CSBH  and ZSZL_DEV.GSBH='+''''+main.edit2.Text+'''');
    SQL.Add('Where DDZL.DDBH like ''' + DDBHEdit.Text + '%''');

    if (RB7.Checked) then
    begin
      SQL.Add('and DDZL.BuyNO LIKE ''' + BuyNoEdit4.Text + '%''');
    end
    else if (RB8.Checked) then
    begin
      SQL.Add('and DDZL.ShipDate >= ''' + DateToStr(KSD.Date) + '''');
      SQL.Add('AND DDZL.ShipDate <= ''' + DateToStr(KED.Date) + '''');
    end;

    SQL.Add(') CGZL ');
    SQL.Add('left join ZSZL as ZSZLA on ZSZLA.ZSDH=CGZL.ZSBH ');
    SQL.Add('left join ZSZL as ZSZLB on ZSZLB.ZSDH=CGZL.PayZSDH ');
    SQL.Add('where ZSBH<>PayZSDH and ZSZLA.ZSJC = :ZSJC');
    //funcobj.WriteErrorLog(sql.Text);
    Active := true;
  end;
end;

procedure Tpurchasekpi.Button12Click(Sender: TObject);
var
   eclApp,WorkBook:olevariant;
   //xlsFileName:string;
   i,j,s:integer;
begin
  if QKM.Active then
    begin
      if QKM.recordcount=0 then
        begin
          showmessage('No record.');
          abort;
        end;
    end
    else
      begin
        showmessage('No record.');
        abort;
      end;

  try
    eclApp:=CreateOleObject('Excel.Application');
    WorkBook:=CreateOleObject('Excel.Sheet');
  except
    Application.MessageBox('NO Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
    Exit;
  end;

  try
    WorkBook:=eclApp.workbooks.Add;
    for i:=3 to QKM.RecordCount do
      eclapp.workbooks[1].sheets.add;
    eclapp.workbooks[1].sheets[1].name:='Total Report';
    eclApp.workbooks[1].sheets[1].Cells(1,1):='NO';

    QKD.active:=false;

    for i:=1 to QKM.fieldcount do
    begin
      eclApp.workbooks[1].sheets[1].Cells(1,i+1):=IKM.fields[i-1].FieldName;
    end;
    QKM.First;
    j:=2;
    while not QKM.Eof do
    begin
      eclApp.workbooks[1].sheets[1].Cells(j,1):=j-1;
      for i:=1 to QKM.fieldcount do
      begin
        eclApp.workbooks[1].sheets[1].Cells(j,i+1):=QKM.Fields[i-1].Value;
        eclApp.workbooks[1].sheets[1].Cells.Cells.item[j,i+1].font.size:='8';
      end;
      QKM.Next;
      inc(j);
    end;
    //eclapp.columns.autofit;

    //產生明細
    QKM.First;
    QKD.active:=true;
    s:=2;
    while not QKM.Eof do
    begin
      eclapp.workbooks[1].sheets[s].name:=QKM.fields[0].value;//+'('+inttostr(QKM.fields[1].value)+')';
      eclApp.workbooks[1].sheets[s].Cells(1,1):='NO';

      for i:=1 to QKD.fieldcount do
      begin
        eclApp.workbooks[1].sheets[s].Cells(1,i+1):=QKD.fields[i-1].FieldName;
      end;
      QKD.First;
      j:=2;
      while not QKD.Eof do
      begin
        eclApp.workbooks[1].sheets[s].Cells(j,1):=j-1;
        for i:=1 to QKD.fieldcount do
        begin
          eclApp.workbooks[1].sheets[s].Cells(j,i+1):=QKD.Fields[i-1].Value;
          eclApp.workbooks[1].sheets[s].Cells.Cells.item[j,i+1].font.size:='8';
        end;
        QKD.Next;
        inc(j);
      end;
      S:=S+1;
      QKM.Next;
    end;
    //結束

    eclapp.columns.autofit;
    showmessage('Succeed.');
    eclApp.Visible:=True;
  except
    on F:Exception do
      showmessage(F.Message);
  end;
end;

procedure Tpurchasekpi.Button13Click(Sender: TObject);
begin
  with QMKM do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add(' SELECT T.ZLBH, T.Pairs, AVG(CONVERT(Decimal, T.DONE)) FROM (');
    SQL.Add('   SELECT ZLZLS2.ZLBH, ZLZLS2.CLBH, DDZL.Pairs,');
    SQL.Add('   CASE WHEN ISNULL(SUM(KCRKS.Qty), 0) + ISNULL(CGKCUSE.Qty, 0) >= ISNULL(ZLZLS2.CLSL, 0) THEN 1 ELSE 2 END AS DONE,');
    SQL.Add('   ISNULL(ZLZLS2.CLSL, 0) AS CLSL, ISNULL(SUM(KCRKS.Qty), 0) AS RKQty, ISNULL(CGKCUSE.Qty, 0) AS UseQty FROM');
    SQL.Add('  (SELECT ZLBH, CLBH, SUM(CLSL) AS CLSL FROM ZLZLS2 WHERE ZLZLS2.ZMLB = ''N'' AND SUBSTRING(ZLZLS2.CSBH, 1, 3) <> ''JNG'' AND ZLZLS2.CLSL > 0 GROUP BY ZLBH, CLBH) AS ZLZLS2');
    SQL.Add('   LEFT JOIN DDZL ON DDZL.DDBH = ZLZLS2.ZLBH');
    SQL.Add('   LEFT JOIN KCRKS ON KCRKS.CGBH = DDZL.DDBH AND KCRKS.CLBH = ZLZLS2.CLBH');
    SQL.Add('   LEFT JOIN CGKCUSE ON CGKCUSE.ZLBH = ZLZLS2.ZLBH AND CGKCUSE.CLBH = ZLZLS2.CLBH AND CGKCUSE.GSBH = DDZL.GSBH');
    SQL.Add('   WHERE DDZL.GSBH = ''' + MKCB1.Text + ''' AND DDZL.YN = 1 AND DDZL.DDLB = ''N''');
    if (RB9.Checked) then
      SQL.Add(' AND DDZL.BUYNO LIKE ''' + BUYNOEdit5.Text + '%'' ')
    else if (RB10.Checked) then
      SQL.Add(' AND DDZL.ShipDate BETWEEN ''' + DateToStr(MKSD.Date) + ''' AND ''' + DateToStr(MKED.Date) + ''' ');

    if (CBPM.Checked) AND NOT (CBGM.Checked) then
      SQL.Add(' AND SUBSTRING(ZLZLS2.CLBH, 1, 1) NOT IN (''W'')')
    else if NOT (CBPM.Checked) AND (CBGM.Checked) then
      SQL.Add(' AND SUBSTRING(ZLZLS2.CLBH, 1, 1) NOT IN (''H'', ''U'', ''L'')')
    else if NOT (CBPM.Checked) AND NOT (CBGM.Checked) then
      SQL.Add(' AND SUBSTRING(ZLZLS2.CLBH, 1, 1) NOT IN (''H'', ''U'', ''L'', ''W'')');
    SQL.Add('   GROUP BY ZLZLS2.ZLBH, ZLZLS2.CLBH, DDZL.Pairs, ZLZLS2.CLSL, CGKCUSE.Qty) AS T');
    SQL.Add('   GROUP BY T.ZLBH, T.Pairs');
    if (CBR.Checked) AND NOT (CBNR.Checked) then
      SQL.Add(' HAVING AVG(CONVERT(Decimal, T.DONE)) = 1')
    else if NOT (CBR.Checked) AND (CBNR.Checked) then
      SQL.Add(' HAVING AVG(CONVERT(Decimal, T.DONE)) > 1');
    SQL.Add(' ORDER BY T.ZLBH');
    Active := true;
  end;

  with QMKD do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add(' SELECT * FROM (');
    SQL.Add('   SELECT ZLZLS2.ZLBH, ZLZLS2.CLBH, DDZL.Pairs,');
    SQL.Add('   CASE WHEN ISNULL(SUM(KCRKS.Qty), 0) + ISNULL(CGKCUSE.Qty, 0) >= ISNULL(ZLZLS2.CLSL, 0) THEN 1 ELSE 2 END AS DONE,');
    SQL.Add('   ISNULL(ZLZLS2.CLSL, 0) AS CLSL, ISNULL(SUM(KCRKS.Qty), 0) AS RKQty, ISNULL(CGKCUSE.Qty, 0) AS UseQty FROM');
    SQL.Add('  (SELECT ZLBH, CLBH, SUM(CLSL) AS CLSL FROM ZLZLS2 WHERE ZLZLS2.ZMLB = ''N'' AND SUBSTRING(ZLZLS2.CSBH, 1, 3) <> ''JNG'' AND ZLZLS2.CLSL > 0 GROUP BY ZLBH, CLBH) AS ZLZLS2');
    SQL.Add('   LEFT JOIN DDZL ON DDZL.DDBH = ZLZLS2.ZLBH');
    SQL.Add('   LEFT JOIN KCRKS ON KCRKS.CGBH = DDZL.DDBH AND KCRKS.CLBH = ZLZLS2.CLBH');
    SQL.Add('   LEFT JOIN CGKCUSE ON CGKCUSE.ZLBH = ZLZLS2.ZLBH AND CGKCUSE.CLBH = ZLZLS2.CLBH AND CGKCUSE.GSBH = DDZL.GSBH');
    SQL.Add('   WHERE DDZL.GSBH = ''' + MKCB1.Text + ''' AND DDZL.DDBH = :ZLBH AND DDZL.YN = 1 AND DDZL.DDLB = ''N''');
    if (CBPM.Checked) AND NOT (CBGM.Checked) then
      SQL.Add(' AND SUBSTRING(ZLZLS2.CLBH, 1, 1) NOT IN (''W'')')
    else if NOT (CBPM.Checked) AND (CBGM.Checked) then
      SQL.Add(' AND SUBSTRING(ZLZLS2.CLBH, 1, 1) NOT IN (''H'', ''U'', ''L'')')
    else if NOT (CBPM.Checked) AND NOT (CBGM.Checked) then
      SQL.Add(' AND SUBSTRING(ZLZLS2.CLBH, 1, 1) NOT IN (''H'', ''U'', ''L'', ''W'')');
    SQL.Add('   GROUP BY ZLZLS2.ZLBH, ZLZLS2.CLBH, DDZL.Pairs, ZLZLS2.CLSL, CGKCUSE.Qty) AS T');
    SQL.Add(' ORDER BY T.DONE DESC, T.ZLBH, T.CLBH');
    Active := true;
  end;
end;

procedure Tpurchasekpi.DBGridEh14GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if (QMKD.FieldByName('DONE').AsInteger = 1) then
    DBGridEh14.Canvas.Font.Color := clBlue
  else if (QMKD.FieldByName('DONE').AsInteger = 2) then
    DBGridEh14.Canvas.Font.Color := clRed;
end;

procedure Tpurchasekpi.Button14Click(Sender: TObject);
var
  eclApp,WorkBook:olevariant;
  //xlsFileName:string;
  i,j,s:integer;
begin
  if QMKM.Active then
    begin
      if QMKM.recordcount=0 then
        begin
          showmessage('No record.');
          abort;
        end;
    end
    else
      begin
        showmessage('No record.');
        abort;
      end;

  try
    eclApp:=CreateOleObject('Excel.Application');
    WorkBook:=CreateOleObject('Excel.Sheet');
  except
    Application.MessageBox('NO Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
    Exit;
  end;

  try
    WorkBook:=eclApp.workbooks.Add;
    for i:=3 to QMKM.RecordCount do
      eclapp.workbooks[1].sheets.add;
    eclapp.workbooks[1].sheets[1].name:='Total Report';
    eclApp.workbooks[1].sheets[1].Cells(1,1):='NO';

    QMKD.active:=false;

    for i:=1 to QMKM.fieldcount do
    begin
      eclApp.workbooks[1].sheets[1].Cells(1,i+1):=IKM.fields[i-1].FieldName;
    end;
    QMKM.First;
    j:=2;
    while not QMKM.Eof do
    begin
      eclApp.workbooks[1].sheets[1].Cells(j,1):=j-1;
      for i:=1 to QMKM.fieldcount do
      begin
        eclApp.workbooks[1].sheets[1].Cells(j,i+1):=QMKM.Fields[i-1].Value;
        eclApp.workbooks[1].sheets[1].Cells.Cells.item[j,i+1].font.size:='8';
      end;
      QMKM.Next;
      inc(j);
    end;
    //eclapp.columns.autofit;

    //產生明細
    QMKM.First;
    QMKD.active:=true;
    s:=2;
    while not QMKM.Eof do
    begin
      eclapp.workbooks[1].sheets[s].name:=QMKM.fields[0].value;//+'('+inttostr(QKM.fields[1].value)+')';
      eclApp.workbooks[1].sheets[s].Cells(1,1):='NO';

      for i:=1 to QMKD.fieldcount do
      begin
        eclApp.workbooks[1].sheets[s].Cells(1,i+1):=QMKD.fields[i-1].FieldName;
      end;
      QMKD.First;
      j:=2;
      while not QMKD.Eof do
      begin
        eclApp.workbooks[1].sheets[s].Cells(j,1):=j-1;
        for i:=1 to QMKD.fieldcount do
        begin
          eclApp.workbooks[1].sheets[s].Cells(j,i+1):=QMKD.Fields[i-1].Value;
          eclApp.workbooks[1].sheets[s].Cells.Cells.item[j,i+1].font.size:='8';
        end;
        QMKD.Next;
        inc(j);
      end;
      S:=S+1;
      QMKM.Next;
    end;
    //結束

    eclapp.columns.autofit;
    showmessage('Succeed.');
    eclApp.Visible:=True;
  except
    on F:Exception do
      showmessage(F.Message);
  end;
end;

procedure Tpurchasekpi.CBRClick(Sender: TObject);
begin
  if CBR.Checked then
    CBNR.Checked := NOT CBR.Checked;
end;

procedure Tpurchasekpi.CBNRClick(Sender: TObject);
begin
  if CBNR.Checked then
    CBR.Checked := NOT CBNR.Checked;
end;

procedure Tpurchasekpi.Button15Click(Sender: TObject);
begin
  PurchaseKPI_Supp:=TPurchaseKPI_Supp.Create(self);
  PurchaseKPI_Supp.ShowModal();
end;

end.
