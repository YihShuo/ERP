unit DevQuotaPrice1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, DBCtrls, GridsEh, DBGridEh, StdCtrls, ComCtrls,
  Buttons, ExtCtrls,comobj,fununit, Menus;

type
  TDevQuotaPrice = class(TForm)
    XXZLS: TQuery;
    XXZLSCLBH: TStringField;
    XXZLSYWPM: TStringField;
    XXZLSZWPM: TStringField;
    XXZLSDWBH: TStringField;
    XXZLSZSDH: TStringField;
    XXZLSZSYWJC: TStringField;
    XXZLSCLZMLB: TStringField;
    XXZLSSeason: TStringField;
    XXZLSSamplePrice: TCurrencyField;
    XXZLSuserID: TStringField;
    XXZLSuserdate: TDateTimeField;
    XXZLSFlag: TBooleanField;
    XXZLSBOMDATE: TDateTimeField;
    XXZLSBWLB: TStringField;
    XXZLSCQDH: TStringField;
    XXMQ: TQuery;
    XXMQCLBH: TStringField;
    XXMQYWPM: TStringField;
    XXMQZWPM: TStringField;
    XXMQDWBH: TStringField;
    XXMQZSDH: TStringField;
    XXMQZSYWJC: TStringField;
    XXMQCLZMLB: TStringField;
    XXMQSeason: TStringField;
    XXMQSamplePrice: TCurrencyField;
    XXMQuserID: TStringField;
    XXMQuserdate: TDateTimeField;
    XXMQCQDH: TStringField;
    TemQry: TQuery;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    bbt7: TBitBtn;
    bbt8: TBitBtn;
    GroupBox1: TGroupBox;
    bbt9: TBitBtn;
    RGTable: TGroupBox;
    RB1: TRadioButton;
    RB2: TRadioButton;
    BitBtn1: TBitBtn;
    TabSheet2: TTabSheet;
    Query1: TQuery;
    UpdateSQL1: TUpdateSQL;
    DBGridEh1: TDBGridEh;
    DataSource1: TDataSource;
    Panel2: TPanel;
    Label7: TLabel;
    ED2: TEdit;
    BitBtn2: TBitBtn;
    BA2: TBitBtn;
    BA5: TBitBtn;
    ComboBox2: TComboBox;
    Label8: TLabel;
    BitBtn3: TBitBtn;
    Query1Salary: TCurrencyField;
    Query1Factory: TStringField;
    Query1Factory_CTS: TStringField;
    Label51: TLabel;
    CBBrand: TComboBox;
    Query1PricingSeason: TStringField;
    Query1KHBH: TStringField;
    Query1kfjc: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure bbt7Click(Sender: TObject);
    procedure bbt8Click(Sender: TObject);
    procedure bbt9Click(Sender: TObject);
    procedure RB1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BA2Click(Sender: TObject);
    procedure BA5Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    GSBH_SFL:String;
    MaterailCBD_TB:string;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DevQuotaPrice: TDevQuotaPrice;
  NDate:TDate;

implementation

uses main1,DevQuotaEx1,DevQuotaSRList1, DevQuota1;

{$R *.dfm}

//
procedure TDevQuotaPrice.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TDevQuotaPrice.FormDestroy(Sender: TObject);
begin
  DevQuota:=Nil;
end;

procedure TDevQuotaPrice.bbt7Click(Sender: TObject);
begin
  DevQuotaEx:=TDevQuotaEx.Create(self);
  DevQuotaEx.ShowModal();
end;


procedure TDevQuotaPrice.bbt8Click(Sender: TObject);
begin
  if messagedlg('Are you sure  to update CBD Price?',mtCustom, [mbYes, mbCancel], 0)=mrYes then
  begin
    with TemQry do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('Update  MaterialCBD set GSBH=A.GSBH,ZSBH=A.ZSBH,Season=A.Season,SamplePrice=A.SamplePrice,');
      SQL.Add(' CostingRemark=A.CostingRemark,USERID=A.USERID,USERDATE=A.USERDATE,YN=A.YN,PriceFormula=A.PriceFormula');
      SQL.Add('from (Select * from MaterialCBD_Cache)  A ');
      SQL.Add('where A.CLBH=MaterialCBD.CLBH and MaterialCBD.ZSBH=A.ZSBH');
      SQL.Add('Insert into MaterialCBD ');
      SQL.Add('select * from MaterialCBD_Cache where not exists (select CLBH from MaterialCBD where MaterialCBD.CLBH=MaterialCBD_Cache.CLBH and MaterialCBD_Cache.ZSBH=MaterialCBD.ZSBH )');
      ExecSQL();
    end;
    Showmessage('Success');
  end;
end;

procedure TDevQuotaPrice.bbt9Click(Sender: TObject);
begin
  if RB1.Checked=true then MaterailCBD_TB:=RB1.Hint;
  if RB2.Checked=true then MaterailCBD_TB:=RB2.Hint;  
  if messagedlg('Are you sure  to delete all CBD Cache Price?('+MaterailCBD_TB+')',mtCustom, [mbYes, mbCancel], 0)=mrYes then
  begin
    with TemQry do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('Truncate Table '+MaterailCBD_TB);
      //SQL.Add('Truncate Table MaterialCBDNo');
      ExecSQL();
    end;
    with TemQry do
    begin
      active:=false;
      sql.Clear;
      sql.add('insert into BDelRec ');
      sql.add('(TableName ,TNO,CLBH,OldID,DelID,DelDate)');
      sql.add('values ('''+MaterailCBD_TB+''',''Truncate table'',');
      sql.add(''''','''+main.Edit1.Text+''',');
      sql.add(''''+main.Edit1.Text+''''+',getdate())');
      execsql;
      active:=false;
    end;
    Showmessage('Success');
  end;
end;

procedure TDevQuotaPrice.RB1Click(Sender: TObject);
begin
  MaterailCBD_TB:=TRadioButton(Sender).Hint;
end;

procedure TDevQuotaPrice.BitBtn1Click(Sender: TObject);
begin
  if messagedlg('Are you sure  to update CBD Price?',mtCustom, [mbYes, mbCancel], 0)=mrYes then
  begin
    with TemQry do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('Update  MaterialCBD_Cache set GSBH=A.GSBH,ZSBH=A.ZSBH,Season=A.Season,SamplePrice=A.SamplePrice,');
      SQL.Add(' CostingRemark=A.CostingRemark,USERID=A.USERID,USERDATE=A.USERDATE,YN=A.YN,PriceFormula=A.PriceFormula');
      SQL.Add('from (Select * from MaterialCBD)  A ');
      SQL.Add('where A.CLBH=MaterialCBD_Cache.CLBH and MaterialCBD_Cache.ZSBH=A.ZSBH');
      SQL.Add('Insert into MaterialCBD_Cache ');
      SQL.Add('select * from MaterialCBD where not exists (select CLBH from MaterialCBD_Cache where MaterialCBD_Cache.CLBH=MaterialCBD.CLBH and MaterialCBD_Cache.ZSBH=MaterialCBD.ZSBH)');
      //Showmessage(SQL.text);
      ExecSQL();
    end;
    Showmessage('Success');
  end;
end;


procedure TDevQuotaPrice.BitBtn2Click(Sender: TObject);
begin
       with query1 do
          begin
            active:=false;
            SQL.clear;
            SQL.add('Select Costing_Salary.*,KFZL.kfjc from Costing_Salary');
            SQL.Add('left join KFZL on KFZL.KFDH=Costing_Salary.KHBH');
         if ComboBox2.ItemIndex=0 then
            sql.add('Where Costing_Salary.Factory=''YIH''');
            if CBBrand.ItemIndex=0 then
            SQL.Add('and Costing_Salary.KHBH=''0062''')
            else
            SQL.Add('and Costing_Salary.KHBH=''0054''');
         if ED2.text<>'' then
            SQL.add('  AND Costing_Salary.PricingSeason like '''+ED2.Text+'%''');
            SQL.add('Order by Costing_Salary.Factory,Costing_Salary.PricingSeason');
            //showmessage(SQL.Text);
            active:=true;     
        requestlive:=true;
        cachedupdates:=true;
        edit;
      end;
end;

procedure TDevQuotaPrice.BA2Click(Sender: TObject);
begin
  query1.RequestLive:=true;
  query1.CachedUpdates:=true;
  query1.Insert;
  if ComboBox2.ItemIndex=0 then
    query1.FieldByName('Factory').Value:='YIH';
  if (main.edit2.text='VDH') or (main.edit2.text='VDK') then
    begin
      if CBBrand.ItemIndex=0 then
        begin
            query1.FieldByName('KHBH').Value:='0062';
            query1.FieldByName('kfjc').Value:='HOKA';
        end
      else
       begin
        query1.FieldByName('KHBH').Value:='0054';
        query1.FieldByName('kfjc').Value:='TEVA';
       end;
    end;
end;

procedure TDevQuotaPrice.BA5Click(Sender: TObject);     
var i:integer;
begin
  query1.First;
  for i:=1 to query1.RecordCount do
  begin  
      query1.Edit;
      if ComboBox2.ItemIndex=0 then
        begin
          query1.FieldByName('Factory').Value:='YIH';
          query1.FieldByName('Factory_CTS').Value:='YIH';
        end;
    case query1.updatestatus of
      usInserted:
      begin
        UpdateSQL1.Apply(ukInsert);
      end;
      usModified:
      begin
         UpdateSQL1.Apply(ukModify);
      end;
    end;
    query1.Next;
  end;
  query1.active:=False;
end;

procedure TDevQuotaPrice.BitBtn3Click(Sender: TObject);
begin
    UpdateSQL1.apply(ukdelete);
    BitBtn2.Click;
end;

procedure TDevQuotaPrice.FormCreate(Sender: TObject);
begin

  if (main.edit2.text='VC1') or (main.edit2.text='VC2') then
  begin
      CBBrand.Items.Clear;
      CBBrand.Items.Add('Cariuma');
      CBBrand.ItemIndex:=0;
      Label8.Visible:=false;
      ComboBox2.Visible:=false;
      //Cariuma
  end;
    if (main.edit2.text='VDH') or (main.edit2.text='VDK') then
  begin
      CBBrand.Items.Clear;
      CBBrand.Items.Add('HOKA');
      CBBrand.ItemIndex:=0;
      CBBrand.Items.Add('TEVA');
      CBBrand.ItemIndex:=1;
      Label8.Visible:=false;
      ComboBox2.Items.Add('YIH');
      ComboBox2.ItemIndex:=0;
      ComboBox2.Visible:=false;
      //Cariuma
  end
  else
  begin
      CBBrand.Visible:=false;
      Label51.Visible:=false;
  end;
end;

end.



