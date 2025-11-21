unit UPOtherQuery1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, ExtCtrls, StdCtrls, Menus, ComObj,
  ComCtrls;

type
  TUPOtherQuery = class(TForm)
    Panel1: TPanel;
    Splitter1: TSplitter;
    Panel2: TPanel;
    DBGridEh1: TDBGridEh;
    Query1: TQuery;
    DataSource1: TDataSource;
    Query1CLBH: TStringField;
    Query1GSBH: TStringField;
    Query1CGDate: TDateTimeField;
    Query1USPrice: TCurrencyField;
    Query1VNPrice: TCurrencyField;
    Query1ywpm: TStringField;
    Query1zwpm: TStringField;
    Query1dwbh: TStringField;
    Query1Discount_UP: TCurrencyField;
    Query1Discount_OA: TCurrencyField;
    Query1ContractorTax: TStringField;
    Query1TT_Transportation: TStringField;
    Query1TT_Payment: TStringField;
    Query1TT_Document: TStringField;
    Query1memo: TStringField;
    Query1VAT: TCurrencyField;
    Query1ZSBH: TStringField;
    Query1Style: TStringField;
    Query1GroupName: TStringField;
    Query1zsywjc: TStringField;
    Query1zsqm: TStringField;
    Query1MZSDH: TStringField;
    Query1Country: TStringField;
    Query1Zsdh_TW: TStringField;
    Query1SGroup: TStringField;
    Query1Department: TStringField;
    Query1Zsdh_TW_jc: TStringField;
    Query1Mzsywjc: TStringField;
    Label1: TLabel;
    Edit1: TEdit;
    GroupBox1: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    GroupBox2: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    Edit6: TEdit;
    Edit7: TEdit;
    GroupBox3: TGroupBox;
    RadioButton3: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton4: TRadioButton;
    GroupBox4: TGroupBox;
    RadioButton1: TRadioButton;
    RadioButton8: TRadioButton;
    RadioButton6: TRadioButton;
    RadioButton7: TRadioButton;
    RadioButton5: TRadioButton;
    RadioButton9: TRadioButton;
    Button1: TButton;
    PopupMenu1: TPopupMenu;
    Excel1: TMenuItem;
    GroupBox5: TGroupBox;
    CheckBox4: TCheckBox;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    GroupBox6: TGroupBox;
    CheckBox1: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox2: TCheckBox;
    Label2: TLabel;
    Query1FOB: TFloatField;
    Query1Prod_nfc_USD: TFloatField;
    Query1Sea_freight_cost: TStringField;
    Query1Prod_nfc_VND: TIntegerField;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure Query1AfterOpen(DataSet: TDataSet);
    procedure Excel1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  UPOtherQuery: TUPOtherQuery;

implementation

uses main1, FunUnit;

{$R *.dfm}

procedure TUPOtherQuery.FormDestroy(Sender: TObject);
begin
  UPOtherQuery:=nil;
end;

procedure TUPOtherQuery.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=Cafree;
end;

procedure TUPOtherQuery.Button1Click(Sender: TObject);
var Y, M, S:string;
    dtGetDate : TDateTime;
begin

   with Query1 do
   begin
     active:=false;
     sql.Clear;
     sql.Add(' SELECT ');
     sql.Add(' CLBH, GSBH, MIN(CGDate) AS CGDate, USPrice, VNPrice, ');
     sql.Add(' ywpm, zwpm, dwbh, ');
     sql.Add(' Discount_UP, Discount_OA, ContractorTax, ');
     sql.Add(' TT_Transportation, TT_Payment, TT_Document, memo, Sea_freight_cost, FOB, Prod_nfc_VND, Prod_nfc_USD, ');
     sql.Add(' VAT, ');
     sql.Add(' ZSBH,Style, GroupName, zsywjc,zsqm, MZSDH, Country, Zsdh_TW, ');
     sql.Add(' SGroup, Department, ');
     sql.Add(' Zsdh_TW_jc, Mzsywjc ');
     sql.Add(' FROM ');
     sql.Add(' ( ');
     sql.Add(' SELECT ');
     sql.Add(' DISTINCT c.CLBH, ');
     sql.Add(' g.GSBH, g.CGDate, g.ZSBH, ');
     sql.Add(' IsNull(s.USPrice,c.USPrice) as USPrice, IsNull(s.VNPrice,c.VNPrice) as VNPrice,  ');
     sql.Add(' l.ywpm, l.zwpm, l.dwbh, ');
     sql.Add(' (SELECT TOP 1 s.Discount_UP FROM Data_UP_Supplier s WHERE s.zsdh = g.ZSBH AND s.EffectiveDate <= g.CGDate ORDER BY s.EffectiveDate DESC) AS Discount_UP, ');
     sql.Add(' (SELECT TOP 1 s.Discount_OA FROM Data_UP_Supplier s WHERE s.zsdh = g.ZSBH AND  s.EffectiveDate <= g.CGDate ORDER BY s.EffectiveDate DESC) AS Discount_OA, ');
     sql.Add(' (SELECT TOP 1 s.ContractorTax FROM Data_UP_Supplier s WHERE s.zsdh = g.ZSBH AND  s.EffectiveDate <= g.CGDate ORDER BY s.EffectiveDate DESC) AS ContractorTax, ');
     sql.Add(' (SELECT TOP 1 s.TT_Transportation FROM Data_UP_Supplier s WHERE s.zsdh = g.ZSBH AND  s.EffectiveDate <= g.CGDate ORDER BY s.EffectiveDate DESC) AS TT_Transportation, ');
     sql.Add(' (SELECT TOP 1 s.TT_Payment FROM Data_UP_Supplier s WHERE s.zsdh = g.ZSBH AND  s.EffectiveDate <= g.CGDate ORDER BY s.EffectiveDate DESC) AS TT_Payment, ');
     sql.Add(' (SELECT TOP 1 s.TT_Document FROM Data_UP_Supplier s WHERE s.zsdh = g.ZSBH AND  s.EffectiveDate <= g.CGDate ORDER BY s.EffectiveDate DESC) AS TT_Document, ');
     sql.Add(' (SELECT TOP 1 s.memo FROM Data_UP_Supplier s WHERE s.zsdh = g.ZSBH AND  s.EffectiveDate <= g.CGDate ORDER BY s.EffectiveDate DESC) AS memo, ');
     sql.Add(' (SELECT TOP 1 s.SEA_Freight_cost FROM Data_UP_Supplier s WHERE s.zsdh = g.ZSBH AND  s.EffectiveDate <= g.CGDate ORDER BY s.EffectiveDate DESC) AS Sea_freight_cost, ');
     sql.Add(' (select top 1 m.Price_FOB from Data_UP_Material m where m.zsdh = g.zsbh  and m.clbh = c.clbh AND  m.EffectiveDate <= g.CGDate order by m.effectivedate desc) as FOB, ');
     sql.Add(' (select top 1 m.Prod_nfc_VND from Data_UP_Material m where m.zsdh = g.zsbh and m.clbh = c.clbh AND  m.EffectiveDate <= g.CGDate order by m.effectivedate desc) as Prod_nfc_VND, ');
     sql.Add(' (select top 1 m.Prod_nfc_USD from Data_UP_Material m where m.zsdh = g.zsbh and m.clbh = c.clbh AND  m.EffectiveDate <= g.CGDate order by m.effectivedate desc) as Prod_nfc_USD, ');
     sql.Add(' zv.VAT, ');
     sql.Add(' ZSZL_dev.Style, ZSZL_dev.GroupName, z.zsywjc,z.zsqm, ZSZL_dev.MZSDH, ZSZL_dev.Country, ZSZL_dev.Zsdh_TW, ');
     sql.Add(' u.SGroup, u.Department, ');
     sql.Add(' (select zsywjc from zszl B where B.zsdh=ZSZL_dev.Zsdh_TW ) as  Zsdh_TW_jc, ');
     sql.Add(' (select zsywjc from zszl C where C.zsdh=ZSZL_dev.mzsdh ) as  Mzsywjc ');
     sql.Add(' FROM CGZLS c ');
     sql.Add(' LEFT JOIN CGZL G ON g.CGNO = c.CGNO ');
     sql.Add(' LEFT JOIN CLZL L ON l.cldh = c.CLBH ');
     sql.Add(' LEFT JOIN ZSZL Z ON z.zsdh = g.ZSBH ');
     sql.Add(' LEFT JOIN ZSZL_dev on ZSZL_dev.zsdh=Z.zsdh and ZSZL_dev.GSBH='''+main.Edit2.Text+''' ');
     sql.Add(' LEFT JOIN KCRKS S ON s.CGBH = c.CGNO AND S.CLBH = C.CLBH ');
     sql.Add(' LEFT JOIN zszl_VN zv ON zv.zsdh = g.ZSBH ');
     sql.Add(' LEFT JOIN Data_UP_Style_Group u ON u.Style = ZSZL_dev.Style ');
     sql.Add(' where g.GSBH='''+main.Edit2.Text+''' ');
     sql.Add(' ) ');
     sql.Add(' Second_Tier ');
     sql.Add(' WHERE 1=1 ');
     sql.Add(' and CLBH NOT IN (SELECT U.CLBH FROM Data_UP_Material U WHERE U.CLBH = CLBH) ');
     if checkbox4.Checked then
        begin
          SQL.Add(' and CGDate between');
          sql.add(' convert(datetime,'''+formatdatetime('yyyy-MM-dd',DateTimePicker1.date)+' 00:00'')');
          sql.add(' '+' and  '+' ');
          sql.add(' convert(datetime,'''+formatdatetime('yyyy-MM-dd',DateTimePicker2.date)+' 23:59'')');
        end;
     if (trim(Edit1.Text) <> '') then
        begin
          sql.add(' and GSBH = '''+trim(Edit1.Text)+''' ');
        end;
     if (trim(Edit3.Text) <> '') then
        begin
          sql.add(' and CLBH Like '''+trim(Edit3.Text)+'%'+''' ');
        end;
     if (trim(Edit4.Text) <> '') then
        begin
          sql.add(' and ywpm Like '''+'%'+trim(edit4.Text)+'%'+''' ');
        end;
     if (trim(Edit5.Text) <> '') then
        begin
          sql.add(' and ywpm Like '''+'%'+trim(edit5.Text)+'%'+''' ');
        end;
     if (trim(Edit6.Text) <> '') then
        begin
          sql.add(' and ZSBH Like '''+trim(Edit6.Text)+'%'+''' ');
        end;
     if (trim(Edit7.Text) <> '') then
        begin
          sql.add(' and zsywjc Like '''+'%'+trim(edit7.Text)+'%'+''' ');
        end;                                                                                                    
     if radiobutton2.Checked then
        begin
          sql.add(' and country NOT IN (''VN'',''Vietnam'') ');
        end;
     if radiobutton3.Checked then
        begin
          sql.add(' and country IN (''VN'',''Vietnam'') ');
        end;
     if radiobutton5.Checked then
        begin
          sql.add(' and SGroup IN (''Computer'') ');
        end;
     if radiobutton6.Checked then
        begin
          sql.add(' and SGroup IN (''Machinery Parts'') ');
        end;
     if radiobutton7.Checked then
        begin
          sql.add(' and SGroup IN (''Chemical'') ');
        end;
     if radiobutton8.Checked then
        begin
          sql.add(' and SGroup IN (''Office Stationery'') ');
        end;
     if radiobutton9.Checked then
        begin
          sql.add(' and SGroup IN (''Tool'') ');
        end;
     if checkbox1.Checked then
        begin
          sql.add(' and ((discount_UP <> 0) OR (Discount_OA <> 0)) ');
        end;
     if checkbox2.Checked then
        begin
          sql.add(' and VAT is not Null ');
        end;
     if checkbox3.Checked then
        begin
          sql.add(' and ContractorTax is not Null');
        end;
     sql.Add(' GROUP BY ');
     sql.Add(' CLBH, GSBH, USPrice, VNPrice, ywpm, zwpm, dwbh, ');
     sql.Add(' ZSBH,Style, GroupName, zsywjc,zsqm, MZSDH, Country, Zsdh_TW, ');
     sql.Add(' Discount_UP, Discount_OA, ContractorTax, TT_Transportation, TT_Payment, TT_Document, memo, Sea_freight_cost, FOB,Prod_nfc_VND, Prod_nfc_USD, ');
     sql.Add(' VAT, ZSBH,Style, GroupName, zsywjc,zsqm, MZSDH, Country, Zsdh_TW, Zsdh_TW_jc, Mzsywjc, ');
     sql.Add(' SGroup, Department ');
     funcObj.WriteErrorLog(sql.Text);
     active:=true;

   end;
end;

procedure TUPOtherQuery.Query1AfterOpen(DataSet: TDataSet);
begin
  dbgrideh1.FieldColumns['GSBH'].Footer.FieldName:='GSBH';
  dbgrideh1.FieldColumns['GSBH'].Footer.ValueType:=fvtcount;
end;

procedure TUPOtherQuery.Excel1Click(Sender: TObject);
var
 eclApp, workBook, xlSheet : OleVariant;
 i,j : Integer;
begin
  try
    eclApp := CreateOleObject('Excel.Application');
    workBook := CreateOleObject('Excel.Sheet');
  except
    Application.MessageBox('Microsoft Excel required.','Microsoft Excel',MB_OK+MB_ICONWARNING);
    Exit;
  end;

  try
    WorkBook:=eclApp.workbooks.Add;
    xlSheet := workBook.worksheets.item[1];
    for i:=0 to DBGrideh1.FieldCount-1 do
    begin
        eclApp.cells(1,i+1) := DBGrideh1.Columns[i].Title.Caption;
    end;
    j:=2;
    Query1.First;
    while not Query1.Eof do
    begin
      for i:=0 to DBGrideh1.FieldCount-1 do
      begin
        eclApp.cells(j,i+1) := (DBGrideh1.Fields[i].AsString);
      end;
      Query1.Next;
      Inc(j);
    end;
      eclapp.columns.autofit;
      eclApp.ActiveWindow.FreezePanes := False;
      showmessage(' Export to Excel Succeed! ');
      eclApp.Visible:=True;
  except
    on   F:Exception   do
          showmessage(F.Message);
  end;

end;


procedure TUPOtherQuery.FormShow(Sender: TObject);
begin
  edit3.SetFocus;
  radiobutton1.Checked := true;
  radiobutton4.Checked := true;
  DateTimePicker1.Date:= now;
  DateTimePicker2.Date:= now;
end;

end.
