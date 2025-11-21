unit UPMaterialQuery1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, ExtCtrls, StdCtrls, Menus, ComObj;

type
  TUPMaterialQuery = class(TForm)
    Panel1: TPanel;
    Splitter1: TSplitter;
    Panel2: TPanel;
    DBGridEh1: TDBGridEh;
    Query1: TQuery;
    DataSource1: TDataSource;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Edit3: TEdit;
    Label4: TLabel;
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
    Button1: TButton;
    RadioButton6: TRadioButton;
    RadioButton7: TRadioButton;
    RadioButton5: TRadioButton;
    Label7: TLabel;
    Label8: TLabel;
    PopupMenu1: TPopupMenu;
    Excel1: TMenuItem;
    GroupBox5: TGroupBox;
    CheckBox1: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox2: TCheckBox;
    Query1CLBH: TStringField;
    Query1FTY: TStringField;
    Query1EffectiveDate: TDateTimeField;
    Query1Season: TStringField;
    Query1ywpm: TStringField;
    Query1zwpm: TStringField;
    Query1dwbh: TStringField;
    Query1MOQ: TIntegerField;
    Query1Price_USD: TFloatField;
    Query1Price_VND: TIntegerField;
    Query1Discount_UP: TCurrencyField;
    Query1Discount_OA: TCurrencyField;
    Query1ContractorTax: TStringField;
    Query1TT_Transportation: TStringField;
    Query1TT_Payment: TStringField;
    Query1TT_Document: TStringField;
    Query1memo: TStringField;
    Query1Sea_freight_cost: TStringField;
    Query1VAT: TCurrencyField;
    Query1ZSDH: TStringField;
    Query1Style: TStringField;
    Query1GroupName: TStringField;
    Query1zsywjc: TStringField;
    Query1zsqm: TStringField;
    Query1MZSDH: TStringField;
    Query1Country: TStringField;
    Query1Price_FOB: TFloatField;
    Query1Prod_nfc_USD: TFloatField;
    Query1Prod_nfc_VND: TIntegerField;
    Query1UserID: TStringField;
    Query1UserDate: TDateTimeField;
    Query1SGroup: TStringField;
    Query1Department: TStringField;
    Query1Zsdh_TW: TStringField;
    Query1Zsdh_TW_jc: TStringField;
    Query1Mzsywjc: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Query1AfterOpen(DataSet: TDataSet);
    procedure Excel1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  UPMaterialQuery: TUPMaterialQuery;

implementation

uses main1, FunUnit;

{$R *.dfm}

procedure TUPMaterialQuery.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=Cafree;
end;

procedure TUPMaterialQuery.FormDestroy(Sender: TObject);
begin
  UPMaterialQuery:=nil;
end;

procedure TUPMaterialQuery.Button1Click(Sender: TObject);
begin

   with Query1 do
   begin
     Active:=false;
     SQL.Clear;
     SQL.Add('SELECT * FROM ');
     SQL.Add(' ( ');
     SQL.Add(' SELECT ');
     SQL.Add(' DISTINCT m.CLBH, m.FTY, m.EffectiveDate, m.Season, m.Price_USD, m.Price_VND, m.UserID, m.UserDate, m.Price_FOB, m.Prod_nfc_USD, m.Prod_nfc_VND, ');
     SQL.Add(' clzl.ywpm, clzl.zwpm, clzl.dwbh, m.MOQ, ');
     SQL.Add(' (SELECT TOP 1 s.Discount_UP FROM Data_UP_Supplier s WHERE s.zsdh = m.ZSDH AND s.EffectiveDate <= m.EffectiveDate ORDER BY s.EffectiveDate DESC) AS Discount_UP, ');
     SQL.Add(' (SELECT TOP 1 s.Discount_OA FROM Data_UP_Supplier s WHERE s.zsdh = m.ZSDH AND  s.EffectiveDate <= m.EffectiveDate ORDER BY s.EffectiveDate DESC) AS Discount_OA, ');
     SQL.Add(' (SELECT TOP 1 s.ContractorTax FROM Data_UP_Supplier s WHERE s.zsdh = m.ZSDH AND  s.EffectiveDate <= m.EffectiveDate ORDER BY s.EffectiveDate DESC) AS ContractorTax, ');
     SQL.Add(' (SELECT TOP 1 s.TT_Transportation FROM Data_UP_Supplier s WHERE s.zsdh = m.ZSDH AND  s.EffectiveDate <= m.EffectiveDate ORDER BY s.EffectiveDate DESC) AS TT_Transportation, ');
     SQL.Add(' (SELECT TOP 1 s.TT_Payment FROM Data_UP_Supplier s WHERE s.zsdh = m.ZSDH AND  s.EffectiveDate <= m.EffectiveDate ORDER BY s.EffectiveDate DESC) AS TT_Payment, ');
     SQL.Add(' (SELECT TOP 1 s.TT_Document FROM Data_UP_Supplier s WHERE s.zsdh = m.ZSDH AND  s.EffectiveDate <= m.EffectiveDate ORDER BY s.EffectiveDate DESC) AS TT_Document, ');
     SQL.Add(' (SELECT TOP 1 s.memo FROM Data_UP_Supplier s WHERE s.zsdh = m.ZSDH AND  s.EffectiveDate <= m.EffectiveDate ORDER BY s.EffectiveDate DESC) AS memo, ');
     SQL.Add(' (SELECT TOP 1 s.SEA_Freight_cost FROM Data_UP_Supplier s WHERE s.zsdh = m.ZSDH AND  s.EffectiveDate <= m.EffectiveDate ORDER BY s.EffectiveDate DESC) AS Sea_freight_cost, ');
     SQL.Add(' zv.VAT, ');
     SQL.Add(' zszl.ZSDH,zszl_dev.Style, zszl_dev.GroupName, zszl.zsywjc,zszl.zsqm, zszl_dev.MZSDH, zszl_dev.Country, zszl_dev.Zsdh_TW, ');
     SQL.Add(' g.SGroup, g.Department, ');
     SQL.Add(' (select zsywjc from zszl B where B.zsdh=zszl_dev.Zsdh_TW ) as  Zsdh_TW_jc, ');
     SQL.Add(' (select zsywjc from zszl C where C.zsdh=zszl_dev.mzsdh ) as  Mzsywjc  ');
     SQL.Add(' FROM Data_UP_Material m ');
     SQL.Add(' LEFT JOIN Data_UP_Supplier s ON s.ZSDH = m.ZSDH ');
     SQL.Add(' LEFT JOIN zszl  ON zszl.zsdh = m.ZSDH ');
     SQL.Add(' LEFT JOIN zszl_dev on zszl_dev.zsdh=zszl.zsdh and zszl_dev.GSBH='''+main.Edit2.Text+''' ');
     SQL.Add(' LEFT JOIN clzl  ON clzl.cldh = m.CLBH ');
     SQL.Add(' LEFT JOIN zszl_VN zv ON zv.zsdh = m.ZSDH ');
     SQL.Add(' LEFT JOIN Data_UP_Style_Group g ON g.Style = zszl_dev.Style ');
     SQL.Add(' ) Second_Tier ');
     SQL.Add(' WHERE 1=1');
     if (trim(Edit1.Text) <> '') then
        begin
          sql.add(' and FTY = '''+trim(Edit1.Text)+''' ');
        end;
     if (trim(Edit2.Text) <> '') then
        begin
          sql.add(' and Season Like '''+trim(Edit2.Text)+'%'+'''  ');
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
          sql.add(' and zsdh Like '''+trim(Edit6.Text)+'%'+''' ');
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
          sql.add(' and Department IN (''Upper'') ');
        end;
     if radiobutton6.Checked then
        begin
          sql.add(' and Department IN (''Assemble'') ');
        end;
     if radiobutton7.Checked then
        begin
          sql.add(' and Department IN (''Packing'') ');
        end;
     if radiobutton8.Checked then
        begin
          sql.add(' and SGroup IN (''Treatment'') ');
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
     //funcObj.WriteErrorLog(sql.Text);
     active:=true;

   end;
end;

procedure TUPMaterialQuery.FormShow(Sender: TObject);
begin
  edit3.SetFocus;
  radiobutton1.Checked := true;
  radiobutton4.Checked := true;
end;

procedure TUPMaterialQuery.Query1AfterOpen(DataSet: TDataSet);
begin
  dbgrideh1.FieldColumns['FTY'].Footer.FieldName:='FTY';
  dbgrideh1.FieldColumns['FTY'].Footer.ValueType:=fvtcount;
end;

procedure TUPMaterialQuery.Excel1Click(Sender: TObject);
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


end.
