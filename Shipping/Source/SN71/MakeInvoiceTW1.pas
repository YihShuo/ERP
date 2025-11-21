unit MakeInvoiceTW1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, GridsEh, DBGridEh, DB, DBTables,iniFiles,
  Mask, DBCtrls, NumberToWords, StrUtils;

type
  TMakeInvoiceTW = class(TForm)
    Panel1: TPanel;
    Splitter1: TSplitter;
    GroupBox1: TGroupBox;
    Label6: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label2: TLabel;
    Label1: TLabel;
    INV_NOEdit: TEdit;
    FROM_WHEREComBo: TComboBox;
    TO_WHEREComBo: TComboBox;
    SHIP_BYCombo: TComboBox;
    RISKCombo: TComboBox;
    MakeInvoice_Btn: TButton;
    Button2: TButton;
    cbo_Currency: TComboBox;
    Con_NOEdit: TEdit;
    Query1: TQuery;
    DS1: TDataSource;
    UpdateSQL1: TUpdateSQL;
    qrytemp: TQuery;
    Query1con_date: TStringField;
    Query1con_no: TStringField;
    Query1XH: TStringField;
    Query1clpm: TStringField;
    Query1dwbh: TStringField;
    Query1ck_qty: TFloatField;
    Query1ctn: TSmallintField;
    Query1Quantity: TFloatField;
    Query1no_s: TSmallintField;
    Query1No_e: TSmallintField;
    Query1No_SE: TStringField;
    Query1nw: TFloatField;
    Query1tnw: TFloatField;
    Query1gw: TFloatField;
    Query1tgw: TFloatField;
    Query1py_dj: TFloatField;
    Query1py_tdj: TFloatField;
    Query1exlb: TStringField;
    Query1Memo: TStringField;
    Query1pp: TStringField;
    Query1pzbh: TStringField;
    Query1made: TStringField;
    Query1clbh: TStringField;
    Query1ex_cldh: TStringField;
    SpeedButton2: TSpeedButton;
    DBGridEh1: TDBGridEh;
    EditPanel: TPanel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    Label7: TLabel;
    DBEdit4: TDBEdit;
    Query1INV_NO: TStringField;
    Label12: TLabel;
    DescGoodsCombo: TComboBox;
    Query1ywsm: TStringField;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure MakeInvoice_BtnClick(Sender: TObject);
    procedure DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure Button2Click(Sender: TObject);
  private
    SN95_CQDH:String;
    { Private declarations }
    procedure Readini();
  public
    { Public declarations }

  end;

var
  MakeInvoiceTW: TMakeInvoiceTW;

implementation
  uses main1, FunUnit;
{$R *.dfm}

procedure TMakeInvoiceTW.Readini();
var MyIni :Tinifile;
    AppDir:string;
begin
  //
  AppDir:=ExtractFilePath(Application.ExeName);
  if FileExists(AppDir+'\ComName.ini')=true then
  begin
    try
      MyIni := TiniFile.Create(AppDir+'\ComName.ini');
      SN95_CQDH:=MyIni.ReadString('Shipping','SN95_CQDH','(''FNG'',''FNS'')');
    finally
      MyIni.Free;
    end;
  end;
  //
end;

procedure TMakeInvoiceTW.FormDestroy(Sender: TObject);
begin
  MakeInvoiceTW:=nil;
end;

procedure TMakeInvoiceTW.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=CaFree;
end;

procedure TMakeInvoiceTW.SpeedButton2Click(Sender: TObject);
begin
  with Query1 do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Select HGZL.con_date,hgzls.con_no,hgzls.XH, hgzls.clpm,hgzls.dwbh,hgzls.ck_qty,');
    SQL.Add('       Case when hgzls.ctn<>0 then hgzls.ctn else null end ctn ,case when hgzls.ctn<>0 then hgzls.ck_qty*hgzls.ctn else hgzls.ck_qty end Quantity,');
    SQL.Add('	      hgzls.no_s,hgzls.No_e, hgzls.mark+'' ''+Convert(varchar,hgzls.no_s)+''-''+hgzls.mark+'' ''+convert(varchar,hgzls.no_e) as No_SE,');
    SQL.Add('	      case when hgzls.nw<>0 then hgzls.nw else null end as nw,case when hgzls.nw<>0 then hgzls.nw*hgzls.ctn else null end as tnw, ');
    SQL.Add('	      case when hgzls.gw<>0 then hgzls.gw else null end as gw,case when hgzls.nw<>0 then hgzls.gw*hgzls.ctn else null end as tgw, ');
    SQL.Add('            hgzls.py_dj,hgzls.py_dj*(case when hgzls.ctn<>0 then hgzls.ck_qty*hgzls.ctn else hgzls.ck_qty end) as py_tdj,exzl.exlb,');
    SQL.Add('	      Case when exzl.exlb=''A'' then exzls.CLDH+exzls.wide+hgzls.memo else clzl.zwpm+hgzls.memo end as Memo,');
    SQL.Add('	      EXZLS.pp,EXZLS.pzbh,EXZLS.made,hgzls.clbh,EXZLS.cldh as ex_cldh,INVOICE_D_TW.INV_NO,LBZLS.ywsm ');
    SQL.Add('FROM hgzls  ');
    SQL.Add('LEFT JOIN HGZL ON hgzls.con_no = hgzl.con_no ');
    SQL.Add('LEFT JOIN EXZLS  ON substring(hgzls.clbh,1,10) = EXZLS.exno and substring(hgzls.clbh,11,3) = EXZLS.xh ');
    SQL.Add('LEFT JOIN clzl  ON EXZLS.cldh = clzl.cldh ');
    SQL.Add('LEFT JOIN exzl  ON EXZLS.exno = exzl.exno ');
    SQL.Add('LEFT JOIN INVOICE_D_TW on INVOICE_D_TW.CON_NO=hgzls.con_no and INVOICE_D_TW.clbh=hgzls.clbh ');
    SQL.Add('Left join LBZLS on LBZLS.LB=''06'' and LBZLS.lbdh=SUBSTRING(EXZLS.made,1,CHARINDEX('':'',EXZLS.made)-1) ');
    SQL.Add('where 1=1 ');
    SQL.Add(' and hgzls.con_no = '''+Con_NOEdit.Text+''' ');
    SQL.Add(' and HGZL.CQDH in '+SN95_CQDH);
    //SQL.Add(' and not Exists (Select INV_NO  from INVOICE_D_TW where INVOICE_D_TW.CON_NO=hgzls.CON_NO and hgzls.clbh=INVOICE_D_TW.clbh  )');
    SQL.Add('ORDER BY HGZL.con_date,hgzls.con_no , hgzls.xh');
    //FuncObj.WriteErrorLog(sql.Text);
    Active:=true;
  end;
end;

procedure TMakeInvoiceTW.FormCreate(Sender: TObject);
var i:integer;
begin
  Readini();
  with Qrytemp do
  begin
    Active:=false;
    sql.Clear;
    sql.add('Select ywsm from INVOICE_LBZLS where lb=''01'' ');
    Active:=true;
    FROM_WHEREComBo.Items.Clear;
    First;
    for i:=0 to RecordCount-1 do
    begin
      FROM_WHEREComBo.Items.Add(fieldbyname('ywsm').AsString);
      next;
    end;
    FROM_WHEREComBo.ItemIndex:=0;
    //
    Active:=false;
    sql.Clear;
    sql.add('Select ywsm from INVOICE_LBZLS where lb=''02'' ');
    Active:=true;
    SHIP_BYCombo.Items.Clear;
    First;
    for i:=0 to RecordCount-1 do
    begin
      SHIP_BYCombo.Items.Add(fieldbyname('ywsm').AsString);
      next;
    end;
    SHIP_BYCombo.ItemIndex:=0;
    Active:=false;
  end;
end;

procedure TMakeInvoiceTW.MakeInvoice_BtnClick(Sender: TObject);
var i:integer;
    NW,GW,TNW,TGW,CTN:String;
begin
   //
   if INV_NOEdit.Text='' then
   begin
     Showmessage('Please input Invoice No');
     Abort();
   end;
   //
   with Qrytemp do
   begin
     Active:=false;
     SQL.Clear;
     SQL.Add('Insert into INVOICE_M_TW ');
     SQL.Add('  (INV_NO, CON_NO ,CURRENCY, RISK, SHIP_BY, FROM_WHERE, TO_WHERE, INV_DATE, DESC_GOODS, USERID, USERDATE, YN) ');
     SQL.Add('Values ');
     SQL.Add('  ('''+INV_NOEdit.Text+''','''+Con_NOEdit.Text+''','''+cbo_Currency.Text+''','''+RISKCombo.Text+''','''+SHIP_BYCombo.Text+''','''+FROM_WHEREComBo.Text+''','''+TO_WHEREComBo.Text+''',GetDate(),'''+DescGoodsCombo.Text+''','''+main.Edit1.Text+''',GetDate(),''1'') ');
     //FuncObj.WriteErrorLog(sql.Text);
     ExecSQL();
   end;
   //
   Query1.First;
   for i:=0 to Query1.RecordCount-1 do
   begin
     with Qrytemp do
     begin
       Active:=false;
       SQL.Clear;
       SQL.Add('Insert into INVOICE_D_TW');
       SQL.Add('  (INV_NO, CON_NO, clbh, XH, clpm, madein, dwbh, Qty, UNIT_PRICE, AMOUNT, USERID, USERDATE, YN) ');
       SQL.Add('Values ');
       SQL.Add('  ('''+INV_NOEdit.Text+''','''+Query1.FieldByName('CON_NO').AsString+''','''+Query1.FieldByName('clbh').AsString+''','''+Query1.FieldByName('XH').AsString+''',');
       SQL.Add('  '''+Query1.FieldByName('clpm').AsString+''','''+Query1.FieldByName('ywsm').AsString+''','''+Query1.FieldByName('dwbh').AsString+''',');
       SQL.Add('  '+Query1.FieldByName('Quantity').AsString+','''+Query1.FieldByName('py_dj').AsString+''','''+Query1.FieldByName('py_tdj').AsString+''','''+main.Edit1.Text+''',GetDate(),''1'') ');
       //FuncObj.WriteErrorLog(sql.Text);
       ExecSQL();
     end;
     Query1.Next;
   end;
   //
   Query1.First;
   for i:=0 to Query1.RecordCount-1 do
   begin
     if Query1.FieldByName('NW').AsString<>'' then NW:=Query1.FieldByName('NW').AsString else NW:='null';
     if Query1.FieldByName('GW').AsString<>'' then GW:=Query1.FieldByName('GW').AsString else GW:='null';
     if Query1.FieldByName('TNW').AsString<>'' then TNW:=Query1.FieldByName('TNW').AsString else TNW:='null';
     if Query1.FieldByName('TGW').AsString<>'' then TGW:=Query1.FieldByName('TGW').AsString else TGW:='null';
     if Query1.FieldByName('CTN').AsString<>'' then CTN:=Query1.FieldByName('CTN').AsString else CTN:='null';
     with Qrytemp do
     begin
       Active:=false;
       SQL.Clear;
       SQL.Add('Insert into PACKING_TW');
       SQL.Add('  (INV_NO, CON_NO, clbh, NO_SE, CTN, Qty, NW, GW, TNW, TGW, USERID, USERDATE, YN) ');
       SQL.Add('Values ');
       SQL.Add('  ('''+INV_NOEdit.Text+''','''+Query1.FieldByName('CON_NO').AsString+''','''+Query1.FieldByName('clbh').AsString+''','''+Query1.FieldByName('NO_SE').AsString+''',');
       SQL.Add('  '+CTN+','+Query1.FieldByName('Quantity').AsString+','+NW+','+GW+','+TNW+','+TGW+',');
       SQL.Add('  '''+main.Edit1.Text+''',GetDate(),''1'') ');
       //funcObj.WriteErrorLog(sql.Text);
       ExecSQL();
     end;
     Query1.Next;
   end;
   showmessage('Make Invoice && Packing List Successfully!');
   //
end;

procedure TMakeInvoiceTW.DBGridEh1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if  Query1.FieldByName('INV_NO').AsString<>'' then
  begin
    DBGridEh1.Canvas.Font.Color:=clBlue;
  end;
end;

//
procedure TMakeInvoiceTW.Button2Click(Sender: TObject);
begin
  Close;
end;

end.
