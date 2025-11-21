unit Pur_Replenish1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,ShellAPI,
  DBTables, Menus, DB, Dialogs, ComCtrls, StdCtrls, GridsEh, DBGridEh, DBGridEhImpExp,
  ExtCtrls,Math,IniFiles;

type
  TPur_Replenish = class(TForm)
    PC1: TPageControl;
    TS1: TTabSheet;
    Panel8: TPanel;
    Splitter3: TSplitter;
    Panel7: TPanel;
    Label13: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Edit_Supplier1: TEdit;
    Button5: TButton;
    Chk_NoPur1: TCheckBox;
    Chk_OverPur1: TCheckBox;
    Edit_MatNo1: TEdit;
    Edit_MatNM1_A: TEdit;
    Edit_MatNM1_B: TEdit;
    DBGridEh2: TDBGridEh;
    DBGridEh3: TDBGridEh;
    TS2: TTabSheet;
    Splitter4: TSplitter;
    Panel10: TPanel;
    Label10: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Edit_Supplier2: TEdit;
    Button3: TButton;
    Chk_NoPur2: TCheckBox;
    Chk_OverPur2: TCheckBox;
    Edit_MatNo2: TEdit;
    Edit_MatNM2_A: TEdit;
    Edit_MatNM2_B: TEdit;
    DBGridEh4: TDBGridEh;
    DBGridEh5: TDBGridEh;
    chk_shp: TCheckBox;
    SaveDialog1: TSaveDialog;
    DS_ToPO: TDataSource;
    Qry_ToPO1: TQuery;
    DS_ToPO_RY: TDataSource;
    Qry_ToPO_RY1: TQuery;
    Pop_ToPO: TPopupMenu;
    E1: TMenuItem;
    M1: TMenuItem;
    PO1: TMenuItem;
    Cancel1: TMenuItem;
    N1: TMenuItem;
    DS_ToPO2: TDataSource;
    Qry_ToPO2: TQuery;
    DS_ToPO_RY2: TDataSource;
    Qry_ToPO_RY2: TQuery;
    Pop_ToPO2: TPopupMenu;
    E2: TMenuItem;
    M2: TMenuItem;
    PO2: TMenuItem;
    Cancel2: TMenuItem;
    N2: TMenuItem;
    Query1: TQuery;
    Qry_ToPO1Upd: TUpdateSQL;
    Qry_ToPO2Upd: TUpdateSQL;
    Qry_ToPO_RY1Upd: TUpdateSQL;
    Qry_ToPO_RY2Upd: TUpdateSQL;
    Panel5: TPanel;
    Label1: TLabel;
    DTP1: TDateTimePicker;
    Label2: TLabel;
    DTP2: TDateTimePicker;
    Label3: TLabel;
    BLNOEdit: TEdit;
    Label7: TLabel;
    MergNoEdit: TEdit;
    CheckDate: TCheckBox;
    Qry_ToPO1CLBH: TStringField;
    Qry_ToPO1YWPM: TStringField;
    Qry_ToPO1DWBH: TStringField;
    Qry_ToPO1Qty: TCurrencyField;
    Qry_ToPO1CSBH: TStringField;
    Qry_ToPO1ZSYWJC: TStringField;
    Qry_ToPO1PayVN: TStringField;
    Qry_ToPO1CQDH: TStringField;
    Qry_ToPO1CGQty: TCurrencyField;
    Qry_ToPO1Diff: TCurrencyField;
    Qry_ToPO_RY1BLNO: TStringField;
    Qry_ToPO_RY1ZLBH: TStringField;
    Qry_ToPO_RY1CLBH: TStringField;
    Qry_ToPO_RY1SIZE: TStringField;
    Qry_ToPO_RY1Qty: TCurrencyField;
    Qry_ToPO_RY1CGQty: TCurrencyField;
    Qry_ToPO_RY1Diff: TCurrencyField;
    Qry_ToPO_RY1ARTICLE: TStringField;
    Qry_ToPO_RY1ArtName: TStringField;
    Qry_ToPO2CLBH: TStringField;
    Qry_ToPO2YWPM: TStringField;
    Qry_ToPO2DWBH: TStringField;
    Qry_ToPO2Qty: TCurrencyField;
    Qry_ToPO2CSBH: TStringField;
    Qry_ToPO2ZSYWJC: TStringField;
    Qry_ToPO2PayVN: TStringField;
    Qry_ToPO2CQDH: TStringField;
    Qry_ToPO2CGQty: TCurrencyField;
    Qry_ToPO2Diff: TCurrencyField;
    Qry_ToPO_RY2BLNO: TStringField;
    Qry_ToPO_RY2ZLBH: TStringField;
    Qry_ToPO_RY2CLBH: TStringField;
    Qry_ToPO_RY2SIZE: TStringField;
    Qry_ToPO_RY2Qty: TCurrencyField;
    Qry_ToPO_RY2CGQty: TCurrencyField;
    Qry_ToPO_RY2Diff: TCurrencyField;
    Qry_ToPO_RY2ARTICLE: TStringField;
    Qry_ToPO_RY2ArtName: TStringField;
    Pop_ToPO_RY1: TPopupMenu;
    E3: TMenuItem;
    Pop_ToPO_RY2: TPopupMenu;
    E4: TMenuItem;
    Chk_POInteger: TCheckBox;
    Label20: TLabel;
    LocCB: TComboBox;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure DBGridEh2GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure DBGridEh4GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure E1Click(Sender: TObject);
    procedure E2Click(Sender: TObject);
    procedure E3Click(Sender: TObject);
    procedure E4Click(Sender: TObject);
    procedure M1Click(Sender: TObject);
    procedure Cancel1Click(Sender: TObject);
    procedure M2Click(Sender: TObject);
    procedure Cancel2Click(Sender: TObject);
    procedure PO1Click(Sender: TObject);
    procedure PO2Click(Sender: TObject);
    procedure Chk_OverPur2Click(Sender: TObject);
    procedure Chk_OverPur1Click(Sender: TObject);
    procedure Chk_NoPur1Click(Sender: TObject);
    procedure Chk_NoPur2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    procedure ReadIni();
    function CreateCGBJ(ZSBH:string;CLBH:String;CQDH:String):string;
    procedure QuerySizeAndNoSize(MastQry:TQuery;DetailQry:TQuery;IsSize:boolean;
           Chk_NoPur:TCheckBox; Chk_OverPur:TCheckBox; Edit_Supplier:TEdit; Edit_MatNo:TEdit;
           Edit_MatNM_A:TEdit;Edit_MatNM_B:TEdit);
    procedure CreatePO_Wizard(Qry_ToPO:TQuery; Qry_ToPO_RY:TQuery;IsSize:Boolean;
            E:TMenuItem; M:TMenuItem;PO:TMenuItem;Cancel:TMenuItem; DBGridEh: TDBGridEh;IsCGQtyIneger:boolean);
  public
    VNPrice_Decimal:Byte;
    { Public declarations }
  end;

var
  Pur_Replenish: TPur_Replenish;
  NDate:TDate;
  FY,FM:string;

implementation

uses main1, PurOther1;

{$R *.dfm}

procedure TPur_Replenish.ReadIni();
var MyIni :Tinifile;
    AppDir:string;
begin
  //
  VNPrice_Decimal:=0;
  AppDir:=ExtractFilePath(Application.ExeName);
  if FileExists(AppDir+'\ComName.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ComName.ini');
      VNPrice_Decimal:=strtoint(MyIni.ReadString('VNPrice','Decimal','0'));
    finally
      MyIni.Free;
    end;
  end;
end;
//

procedure TPur_Replenish.FormDestroy(Sender: TObject);
begin
   Pur_Replenish:=nil;
end;

procedure TPur_Replenish.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TPur_Replenish.FormCreate(Sender: TObject);
var i: integer;
begin
  with Query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select getdate() as NDate,year(getdate()) as FY,month(getdate()) as FM ');
    active:=true;
    NDate:=fieldbyname('NDate').Value;
    FY:=fieldbyname('FY').Value;
    FM:=fieldbyname('FM').Value;
    active:=false;   
    DTP1.date:=NDate-2;
    DTP2.date:=NDate;
  end;
  PC1.ActivePage:=TS1;
  ReadIni();
end;
procedure TPur_Replenish.QuerySizeAndNoSize(MastQry:TQuery; DetailQry:TQuery; IsSize:boolean;
           Chk_NoPur:TCheckBox; Chk_OverPur:TCheckBox; Edit_Supplier:TEdit; Edit_MatNo:TEdit;
           Edit_MatNM_A:TEdit; Edit_MatNM_B:TEdit);
begin
  if ((checkDate.Checked=false) and (BLNOEdit.Text='') and (MergNoEdit.Text='')) then
  begin
    showmessage('Please Choice Date or BLNO or MergNo');
    exit;
  end;
  with MastQry do
  begin
    active:=false;
    sql.Clear;
    sql.Add('select SCBLS.CLBH,YWPM,DWBH,Qty,CSBH,ZSYWJC,PayVN,CQDH, isnull(CGQty,0) as CGQty,isnull(CGQty,0)-Qty as Diff');
    sql.Add('from (  select SCBLS.CLBH,CLZL.ywpm,CLZL.zwpm,CLZL.dwbh,sum(SCBLS.Qty) as Qty,ZSZL.zsdh as CSBH,ZSZL.zsywjc,zszl_dev.Zsdh_TW as PayVN,CLZL.cqdh');
    sql.Add('        from (  Select SCBLS.BLNO,SCBLS.BWBH,SCBLS.CLBH,IsNull(SCBLSS.SIZE,''ZZZZZZ'') as SIZE,IsNull(SCBLSS.Qty,SCBLS.Qty) as Qty,SCBLS.ZSDH ');
    sql.Add('                from SCBLS left join SCBL on SCBLS.BLNO=SCBL.BLNO');
    sql.Add('                left join SCBLSS on SCBLSS.BLNO=SCBLS.BLNO and SCBLSS.BWBH=SCBLS.BWBH and SCBLSS.CLBH=SCBLS.CLBH');
    sql.Add('                where SCBLS.Qty>0 and SCBLS.ZMLB=''N''');
    if checkDate.Checked=true then
    begin
      sql.Add('              and convert(smalldatetime,convert(varchar,SCBL.BLDate,111)) between');
      sql.add('              '''+formatdatetime('yyy/MM/dd',DTP1.date)+''' and '''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
    end;
    if BLNOEdit.Text<>'' then
    begin
      sql.Add('             and SCBLS.BLNO  like '''+BLNOEdit.Text+'%''');
    end;
    if MergNoEdit.Text<>'' then
    begin
      sql.Add('             and SCBLS.BLNO in (Select distinct BLNO from SCBL where MergNO='''+MergNoEdit.Text+''') ');
    end;
    sql.Add('             ) SCBLS');
    sql.Add('left join SCBL on SCBL.BLNO=SCBLS.BLNO');
    sql.Add('left join DDZL on DDZL.DDBH=SCBL.ZLBH');
    sql.Add('left join XXZL on XXZL.XieXing=DDZL.XieXing and XXZL.SheHao=DDZL.SheHao');
    sql.Add('left join CLZL on CLZL.cldh=SCBLS.CLBH');
    sql.Add('left join ZSZL on ZSZL.zsdh=SCBLS.ZSDH');
    sql.Add('left join zszl_dev on ZSZL_DEV.GSBH='''+main.Edit2.text+''' and ZSZL_DEV.Zsdh=SCBLS.ZSDH');
    sql.Add('where ');
    if IsSize=false then
    begin
      sql.Add('scbls.size = ''ZZZZZZ''');
    end else
    begin
      sql.Add('scbls.size <> ''ZZZZZZ''');
    end;
    if Edit_Supplier.Text<>'' then
      sql.add('         and ZSZL.ZSYWJC like '+''''+'%'+Edit_Supplier.Text+'%'+'''');
    if Edit_MatNo.Text<>'' then
      sql.add('   and SCBLS.CLBH like '+''''+Edit_MatNo.text+'%'+'''');
    if (Edit_MatNM_A.Text<>'') and (Edit_MatNM_B.Text = '') then
      sql.add('         and CLZL.YWPM like '+''''+'%'+Edit_MatNM_A.text+'%'+'''');
    if (Edit_MatNM_A.Text<>'') and (Edit_MatNM_B.Text<>'') then
    begin
      sql.add('         and (CLZL.YWPM like '+''''+'%'+Edit_MatNM_A.text+'%'+'''');
      sql.add('         or  CLZL.YWPM like '+''''+'%'+Edit_MatNM_B.text+'%'+''')');
    end;
    if checkDate.Checked=true then
    begin
      sql.Add('          and convert(smalldatetime,convert(varchar,SCBL.BLDate,111)) between');
      sql.add('          '''+formatdatetime('yyy/MM/dd',DTP1.date)+''' and '''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
    end;
    if BLNOEdit.Text<>'' then
    begin
      sql.Add('           and SCBLS.BLNO  like '''+BLNOEdit.Text+'%''');
    end;
    if MergNoEdit.Text<>'' then
    begin
      sql.Add('           and SCBLS.BLNO in (Select distinct BLNO from SCBL where MergNO='''+MergNoEdit.Text+''') ');
    end;
    if LocCB.Text<>'' then
      sql.add('            and CLZL.CQDH='''+locCB.Text+''' ');// 採區
    sql.Add('group by  SCBLS.CLBH,CLZL.ywpm,CLZL.zwpm,CLZL.dwbh,ZSZL.zsdh,ZSZL.zsywjc,zszl_dev.Zsdh_TW,CLZL.cqdh');
    sql.Add('      ) SCBLS');
    sql.Add('left join ( select CGZLSS.CLBH,SCBLS.ZSDH,SUM(isnull(CGZLSS.Qty,0)) as CGQty');
    sql.Add('			       from  CGZLSS LEFT JOIN CGZL ON  CGZL.CGNO=CGZLSS.CGNO');
    sql.Add('			       left  join (select SCBLS.BLNO,SCBLS.CLBH,SCBLS.ZSDH');
    sql.Add('						 from SCBLS,SCBL where SCBLS.BLNO=SCBL.BLNO');
    if checkDate.Checked=true then
    begin
      sql.Add('          and convert(smalldatetime,convert(varchar,SCBL.BLDate,111)) between');
      sql.add('          '''+formatdatetime('yyy/MM/dd',DTP1.date)+''' and '''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
    end;
    if BLNOEdit.Text<>'' then
    begin
      sql.Add('           and SCBLS.BLNO like '''+BLNOEdit.Text+'%''');
    end;
    if MergNoEdit.Text<>'' then
    begin
      sql.Add('           and SCBLS.BLNO in (Select distinct BLNO from SCBL where MergNO='''+MergNoEdit.Text+''') ');
    end;
    sql.Add('            Group by SCBLS.BLNO,SCBLS.CLBH,SCBLS.ZSDH) SCBLS on SCBLS.BLNO=CGZLSS.ZLBH and SCBLS.CLBH=CGZLSS.CLBH');
    sql.Add('            where 1=1');
    if checkDate.Checked=true then
    begin
      sql.Add('          and  CGZLSS.ZLBH in  (  Select distinct BLNO from SCBL  where convert(smalldatetime,convert(varchar,SCBL.BLDate,111)) between');
      sql.add('          '''+formatdatetime('yyy/MM/dd',DTP1.date)+''' and '''+formatdatetime('yyyy/MM/dd',DTP2.Date)+''')');
    end;
    if BLNOEdit.Text<>'' then
    begin
      sql.Add('           and CGZLSS.ZLBH  like '''+BLNOEdit.Text+'%''');
    end;
    if MergNoEdit.Text<>'' then
    begin
      sql.Add('           and CGZLSS.ZLBH in (Select distinct BLNO from SCBL where MergNO='''+MergNoEdit.Text+''') ');
    end;
    if Edit_MatNo.Text<>'' then
      sql.add('           and CGZLSS.CLBH like '+''''+Edit_MatNo.text+'%'+'''');
    sql.Add('            group by CGZLSS.CLBH,SCBLS.ZSDH');
    sql.Add('             )CG on CG.ZSDH=SCBlS.CSBH and CG.CLBH=SCBLS.CLBH');
    sql.add('where 1=1 ');
    if Chk_NoPur.Checked then
       sql.add('  and isnull(CG.CGQTY,0)<isnull(Qty,0) ');
    if Chk_OverPur.Checked then
       sql.add('  and isnull(CG.CGQTY,0)>(isnull(Qty,0)+1) ');
    sql.Add('order by CQDH,PayVN');
    active:=true;
  end;

  with DetailQry do
  begin
    active:=false;
    sql.Clear;
    sql.Add('Select SCBLS.BLNO,SCBLS.ZLBH,SCBLS.CLBH,SCBLS.Size,SCBLS.Qty ,isnull(CGQty,0) as CGqty,');
    sql.Add('		    isnull(CGQty,0)-isnull(SCBLS.Qty,0) as Diff,XXZL.ARTICLE,XXZL.XieMing as ArtName');
    sql.Add('from	      (Select SCBL.ZLBH,SCBLS.BLNO,SCBLS.CLBH,IsNull(SCBLSS.SIZE,''ZZZZZZ'') as SIZE,sum(IsNull(SCBLSS.Qty,SCBLS.Qty)) as Qty,SCBLS.ZSDH');
    sql.Add('           from SCBLS left join SCBL on SCBLS.BLNO=SCBL.BLNO');
    sql.Add('           left join SCBLSS on SCBLSS.BLNO=SCBLS.BLNO and SCBLSS.CLBH=SCBLS.CLBH');
    sql.Add('           where SCBLS.Qty>0 and SCBLS.ZMLB=''N'' and scblS.CLBH=:CLBH and scbls.zsdh=:CSBH');
    if checkDate.Checked=true then
    begin
      sql.Add('          and convert(smalldatetime,convert(varchar,SCBL.BLDate,111)) between');
      sql.add('          '''+formatdatetime('yyy/MM/dd',DTP1.date)+''' and '''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
    end;
    if BLNOEdit.Text<>'' then
    begin
      sql.Add('           and SCBLS.BLNO like '''+BLNOEdit.Text+'%''');
    end;
    if MergNoEdit.Text<>'' then
    begin
      sql.Add('           and SCBLS.BLNO in (Select distinct BLNO from SCBL where MergNO='''+MergNoEdit.Text+''') ');
    end;
    sql.Add('group by SCBL.ZLBH,SCBLS.BLNO,SCBLS.CLBH,IsNull(SCBLSS.SIZE,''ZZZZZZ''),SCBLS.ZSDH');
    sql.Add(') SCBLS');
    sql.Add('left join (select CGZLSS.ZLBH,CGZLSS.CLBH,CGZLSS.XXCC,SUM(isnull(CGZLSS.Qty,0)) as CGQty');
    sql.Add('			      from  CGZLSS LEFT JOIN CGZL ON  CGZL.CGNO=CGZLSS.CGNO');
    sql.Add('     			where CGZLSS.clbh=:CLBH');
    if checkDate.Checked=true then
    begin
      sql.Add('          and  CGZLSS.ZLBH in  (  Select distinct BLNO from SCBL  where convert(smalldatetime,convert(varchar,SCBL.BLDate,111)) between');
      sql.add('          '''+formatdatetime('yyy/MM/dd',DTP1.date)+''' and '''+formatdatetime('yyyy/MM/dd',DTP2.Date)+''')');
    end;
    if BLNOEdit.Text<>'' then
    begin
      sql.Add('           and CGZLSS.ZLBH  like '''+BLNOEdit.Text+'%''');
    end;
    if MergNoEdit.Text<>'' then
    begin
      sql.Add('           and CGZLSS.ZLBH in (Select distinct BLNO from SCBL where MergNO='''+MergNoEdit.Text+''') ');
    end;
    sql.Add('           group by CGZLSS.ZLBH,CGZLSS.CLBH,CGZLSS.XXCC');
    sql.Add('           )CG on CG.CLBH=SCBLS.clbh and CG.ZLBH=SCBLS.BLNO and CG.XXCC=SCBLS.SIZE');
    sql.Add('left join DDZL on DDZL.DDBH=SCBLS.ZLBH');
    sql.Add('left join XXZL on XXZL.XieXing=DDZL.XieXing and XXZL.SheHao=DDZL.SheHao');
    sql.Add('where');
    if IsSize=false then
    begin
      sql.Add('scbls.size = ''ZZZZZZ''');
    end else
    begin
      sql.Add('scbls.size <> ''ZZZZZZ''');
    end;
    //memo2.Text:=sql.Text;
    active:=true;
  end;
end;

procedure TPur_Replenish.Button5Click(Sender: TObject);
begin
  QuerySizeAndNoSize(Qry_ToPO1, Qry_ToPO_RY1, false, Chk_NoPur1, Chk_OverPur1,Edit_Supplier1, Edit_MatNo1, Edit_MatNM1_A, Edit_MatNM1_B);
end;

procedure TPur_Replenish.Button3Click(Sender: TObject);
begin
  QuerySizeAndNoSize(Qry_ToPO2, Qry_ToPO_RY2, true, Chk_NoPur2, Chk_OverPur2,Edit_Supplier2, Edit_MatNo2, Edit_MatNM2_A, Edit_MatNM2_B);
end;

procedure TPur_Replenish.DBGridEh2GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if Qry_ToPO1.FieldByName('Qty').AsCurrency=Qry_ToPO1.FieldByName('CGQty').AsCurrency then
  begin
        DBGridEh2.canvas.font.color:=clBlue;
       // dbgrid1.defaultdrawcolumncell(rect,datacol,column,state);
  end;
  if (Qry_ToPO1.FieldByName('Qty').AsCurrency<Qry_ToPO1.FieldByName('CGQty').AsCurrency)
       and ((Qry_ToPO1.FieldByName('CGQty').AsCurrency-Qry_ToPO1.FieldByName('Qty').AsCurrency)<1) then
  begin
     DBGridEh2.canvas.font.color:=clBlue;
     // dbgrid1.defaultdrawcolumncell(rect,datacol,column,state);
   end;

  //紅色
  if ((Qry_ToPO1.FieldByName('CGQty').AsCurrency>0) and (Qry_ToPO1.FieldByName('Qty').AsCurrency>Qry_ToPO1.FieldByName('CGQty').AsCurrency)) then
   begin
        DBGridEh2.canvas.font.color:=clred;
        //dbgrid1.defaultdrawcolumncell(rect,datacol,column,state);
  end;
  //綠色
  if (Qry_ToPO1.FieldByName('CGQty').AsCurrency-Qry_ToPO1.FieldByName('Qty').AsCurrency)>=1 then
  begin
        DBGridEh2.canvas.font.color:=clgreen;
       // dbgrid1.defaultdrawcolumncell(rect,datacol,column,state);
  end;
end;

procedure TPur_Replenish.DBGridEh4GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if Qry_ToPO2.FieldByName('Qty').AsCurrency=Qry_ToPO2.FieldByName('CGQty').AsCurrency then
  begin
      DBGridEh4.canvas.font.color:=clBlue;
      // dbgrid1.defaultdrawcolumncell(rect,datacol,column,state);
  end;
  if (Qry_ToPO2.FieldByName('Qty').AsCurrency<Qry_ToPO2.FieldByName('CGQty').AsCurrency)
       and ((Qry_ToPO2.FieldByName('CGQty').AsCurrency-Qry_ToPO2.FieldByName('Qty').AsCurrency)<1) then
  begin
     DBGridEh4.canvas.font.color:=clBlue;
     // dbgrid1.defaultdrawcolumncell(rect,datacol,column,state);
   end;

  //紅色
  if ((Qry_ToPO2.FieldByName('CGQty').AsCurrency>0) and (Qry_ToPO2.FieldByName('Qty').AsCurrency>Qry_ToPO2.FieldByName('CGQty').AsCurrency)) then
  begin
      DBGridEh4.canvas.font.color:=clred;
      //dbgrid1.defaultdrawcolumncell(rect,datacol,column,state);
  end;
  //綠色
  if (Qry_ToPO2.FieldByName('CGQty').AsCurrency-Qry_ToPO2.FieldByName('Qty').AsCurrency)>=1 then
  begin
      DBGridEh4.canvas.font.color:=clgreen;
      // dbgrid1.defaultdrawcolumncell(rect,datacol,column,state);
  end;
end;

procedure TPur_Replenish.E1Click(Sender: TObject);
var a:string;
    eclApp,WorkBook:olevariant;
    i,j:integer;
    ExpClass:TDBGridEhExportClass;
    Ext, target:String;
    tdbgh : TDBGridEh;
begin
  tdbgh := DBGridEh2  ;
  if (tdbgh is TDBGridEh) then
    if SaveDialog1.Execute then
    begin
      case SaveDialog1.FilterIndex of
        1: begin ExpClass := TDBGridEhExportAsXLS; Ext := 'xls'; end;
        2: begin ExpClass := TDBGridEhExportAsCSV; Ext := 'csv'; end;
        3: begin ExpClass := TDBGridEhExportAsHTML; Ext := 'htm'; end;
        4: begin ExpClass := TDBGridEhExportAsRTF; Ext := 'rtf'; end;
        5: begin ExpClass := TDBGridEhExportAsText; Ext := 'txt'; end;
      else
        ExpClass := nil; Ext := '';
      end;
      if ExpClass <> nil then
      begin
        if UpperCase(Copy(SaveDialog1.FileName,Length(SaveDialog1.FileName)-2,3)) <> UpperCase(Ext) then
          SaveDialog1.FileName := SaveDialog1.FileName + '.' + Ext;
        SaveDBGridEhToExportFile(ExpClass,tdbgh,SaveDialog1.FileName,true);
        if Application.MessageBox('Do you want to open the exported file?','Open file',MB_YESNO) = IDYES then
          shellexecute(handle,'open',pchar(SaveDialog1.FileName),nil,nil,SW_SHOWNORMAL);
      end;
    end;

end;

procedure TPur_Replenish.E2Click(Sender: TObject);
var   a:string;
      eclApp,WorkBook:olevariant;
      i,j:integer;
  ExpClass:TDBGridEhExportClass;
  Ext, target:String;
  tdbgh : TDBGridEh;
begin
  tdbgh := DBGridEh4  ;
  if (tdbgh is TDBGridEh) then
    if SaveDialog1.Execute then
    begin
      case SaveDialog1.FilterIndex of
        1: begin ExpClass := TDBGridEhExportAsXLS; Ext := 'xls'; end;
        2: begin ExpClass := TDBGridEhExportAsCSV; Ext := 'csv'; end;
        3: begin ExpClass := TDBGridEhExportAsHTML; Ext := 'htm'; end;
        4: begin ExpClass := TDBGridEhExportAsRTF; Ext := 'rtf'; end;
        5: begin ExpClass := TDBGridEhExportAsText; Ext := 'txt'; end;
      else
        ExpClass := nil; Ext := '';
      end;
      if ExpClass <> nil then
      begin
        if UpperCase(Copy(SaveDialog1.FileName,Length(SaveDialog1.FileName)-2,3)) <> UpperCase(Ext) then
          SaveDialog1.FileName := SaveDialog1.FileName + '.' + Ext;
        SaveDBGridEhToExportFile(ExpClass,tdbgh,SaveDialog1.FileName,true);
        if Application.MessageBox('Do you want to open the exported file?','Open file',MB_YESNO) = IDYES then
          shellexecute(handle,'open',pchar(SaveDialog1.FileName),nil,nil,SW_SHOWNORMAL);
      end;
    end;

end;

procedure TPur_Replenish.E3Click(Sender: TObject);
var   a:string;
      eclApp,WorkBook:olevariant;
      i,j:integer;
  ExpClass:TDBGridEhExportClass;
  Ext, target:String;
  tdbgh : TDBGridEh;
begin
  tdbgh := DBGridEh3  ;
  if (tdbgh is TDBGridEh) then
    if SaveDialog1.Execute then
    begin
      case SaveDialog1.FilterIndex of
        1: begin ExpClass := TDBGridEhExportAsXLS; Ext := 'xls'; end;
        2: begin ExpClass := TDBGridEhExportAsCSV; Ext := 'csv'; end;
        3: begin ExpClass := TDBGridEhExportAsHTML; Ext := 'htm'; end;
        4: begin ExpClass := TDBGridEhExportAsRTF; Ext := 'rtf'; end;
        5: begin ExpClass := TDBGridEhExportAsText; Ext := 'txt'; end;
      else
        ExpClass := nil; Ext := '';
      end;
      if ExpClass <> nil then
      begin
        if UpperCase(Copy(SaveDialog1.FileName,Length(SaveDialog1.FileName)-2,3)) <> UpperCase(Ext) then
          SaveDialog1.FileName := SaveDialog1.FileName + '.' + Ext;
        SaveDBGridEhToExportFile(ExpClass,tdbgh,SaveDialog1.FileName,true);
        if Application.MessageBox('Do you want to open the exported file?','Open file',MB_YESNO) = IDYES then
          shellexecute(handle,'open',pchar(SaveDialog1.FileName),nil,nil,SW_SHOWNORMAL);
      end;
    end;
end;

procedure TPur_Replenish.E4Click(Sender: TObject);
var   a:string;
      eclApp,WorkBook:olevariant;
      i,j:integer;
  ExpClass:TDBGridEhExportClass;
  Ext, target:String;
  tdbgh : TDBGridEh;
begin
  tdbgh := DBGridEh5  ;
  if (tdbgh is TDBGridEh) then
    if SaveDialog1.Execute then
    begin
      case SaveDialog1.FilterIndex of
        1: begin ExpClass := TDBGridEhExportAsXLS; Ext := 'xls'; end;
        2: begin ExpClass := TDBGridEhExportAsCSV; Ext := 'csv'; end;
        3: begin ExpClass := TDBGridEhExportAsHTML; Ext := 'htm'; end;
        4: begin ExpClass := TDBGridEhExportAsRTF; Ext := 'rtf'; end;
        5: begin ExpClass := TDBGridEhExportAsText; Ext := 'txt'; end;
      else
        ExpClass := nil; Ext := '';
      end;
      if ExpClass <> nil then
      begin
        if UpperCase(Copy(SaveDialog1.FileName,Length(SaveDialog1.FileName)-2,3)) <> UpperCase(Ext) then
          SaveDialog1.FileName := SaveDialog1.FileName + '.' + Ext;
        SaveDBGridEhToExportFile(ExpClass,tdbgh,SaveDialog1.FileName,true);
        if Application.MessageBox('Do you want to open the exported file?','Open file',MB_YESNO) = IDYES then
          shellexecute(handle,'open',pchar(SaveDialog1.FileName),nil,nil,SW_SHOWNORMAL);
      end;
    end;
end;

procedure TPur_Replenish.M1Click(Sender: TObject);
begin
  Qry_ToPO_RY1.Active:=false ;
  E1.Enabled:=false;
  M1.Enabled:=false;
  PO1.Enabled:=true;
  Cancel1.Enabled:=true;
end;

procedure TPur_Replenish.Cancel1Click(Sender: TObject);
begin
  Qry_ToPO_RY1.Active:=true ;
  E1.Enabled:=true;
  M1.Enabled:=true;
  PO1.Enabled:=false;
  Cancel1.Enabled:=false;
end;

procedure TPur_Replenish.M2Click(Sender: TObject);
begin
  Qry_ToPO_RY2.Active:=false ;
  E2.Enabled:=false;
  M2.Enabled:=false;
  PO2.Enabled:=true;
  Cancel2.Enabled:=true;
end;

procedure TPur_Replenish.Cancel2Click(Sender: TObject);
begin
  Qry_ToPO_RY2.Active:=true ;
  E2.Enabled:=true;
  M2.Enabled:=true;
  PO2.Enabled:=false;
  Cancel2.Enabled:=false;
end;

procedure TPur_Replenish.PO1Click(Sender: TObject);
begin
  CreatePO_Wizard(Qry_ToPO1,Qry_ToPO_RY1,false,E1,M1,PO1,Cancel1,DBGridEh2,Chk_POInteger.Checked);
end;

procedure TPur_Replenish.PO2Click(Sender: TObject);
begin
  CreatePO_Wizard(Qry_ToPO2,Qry_ToPO_RY2,true,E2,M2,PO2,Cancel2,DBGridEh4,Chk_POInteger.Checked);
end;

//新增報價資料
function TPur_Replenish.CreateCGBJ(ZSBH:string;CLBH:String;CQDH:String):string;
var BJNO:string;
begin
  //20151022先檢查是否已存在廠商
  BJNO:='';
  with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.Add('');
    sql.Add('Select BJNO from CGBJ where ZSBH='''+ZSBH+'''  and BJNO like '''+FY+'%'' AND GSBH='''+main.Edit2.Text+''' '); //當年度
    Active:=true;
    if Recordcount>0  then
    begin
      BJNO:=FieldByName('BJNO').AsString;
    end;
    active:=false;
  end;
  //
  if BJNO='' then
  begin
    with query1 do    //計算領料單流水號
    begin
      active:=false;
      sql.Clear;
      sql.Add('select BJNO from CGBJ where BJNO like '+''''+FY+FM+'%'+'''');
      sql.add('order by BJNO');
      active:=true;
      if recordcount >0 then
      begin
        last;
        BJNO:=fieldbyname('BJNO').AsString;
        BJNO:=copy(BJNO,7,5);
        BJNO:=inttostr(strtoint(BJNO)+1);
        while length(BJNO)<5 do
        begin
          BJNO:='0'+BJNO;
        end;
      end
      else
      begin
        BJNO:='00001';
      end;
      BJNO :=FY+FM+BJNO;
      active:=false;
    end;
    //主檔報價
    with Query1 do
    begin
      Active:=false;
      SQL.Clear;
      SQl.Add('Insert CGBJ (BJNO, GSBH, ZSBH, USERID, USERDATE, CFMID,YN) ');
      SQL.Add('Values ('''+BJNO+''','''+main.Edit2.Text+''','''+ZSBH+''','''+main.Edit1.Text+''',GetDate(),''NO'',''1'') ');
      ExecSQL();
    end;
  end;
  with Query1 do
  begin
    //明細報價
    Active:=false;
    SQL.Clear;
    if CQDH='VN' then
      SQL.Add('Insert CGBJS (BJNO, CLBH, VNPrice, UserID, UserDate,Discount, BJLX, YN)')
    else
      SQL.Add('Insert CGBJS (BJNO, CLBH, USPrice, UserID, UserDate, Discount, BJLX, YN)');
    SQL.Add('Values ('''+BJNO+''','''+CLBH+''',0,'''+main.Edit1.Text+''',GetDate(),''1'',''1'',''1'') ');
    ExecSQL();
  end;
  result:=BJNO;
end;

//=========產生PO單號================================================
procedure TPur_Replenish.CreatePO_Wizard(Qry_ToPO:TQuery; Qry_ToPO_RY:TQuery;IsSize:Boolean;
                                        E:TMenuItem; M:TMenuItem;PO:TMenuItem;Cancel:TMenuItem; DBGridEh: TDBGridEh;
                                        IsCGQtyIneger:boolean);
var bm:Tbookmark;
    CGNO,BJNO,Supp_ID:string;
    USPrice,VNPrice:string;
    QUSPrice,QVNPrice:string;
    i,j:integer;
    Qty,VNPrice_Round:real;
    bookmarklist:tbookmarklistEH;
    PurcahseForm:TForm;

begin
  //
  if not Qry_ToPO.Active then
     abort;
  if (Qry_ToPO.recordcount<1) then
     abort;
  if PurOther<>nil then  //檢查採購單程式是否有被開啟
  begin
     if (PurOther.BB5.Enabled=true) or (PurOther.BD5.Enabled=true) then
     begin
          PurOther.show;
          PurOther.windowstate:=wsmaximized;
          showmessage('Pls save Purchase Order first ');
          abort;
     end;
  end;
  if messagedlg('Do you really want to generate Purchase Order?',mtconfirmation,[mbYes,mbNo],0)=mrNo then
  abort;
  //編號年月
  if length(FM)<2 then
     FM:='0'+FM;
  //開始產生採購單
  Supp_ID:='';
  Qry_ToPO.disablecontrols;
  bm:=Qry_ToPO.getbookmark;
  bookmarklist:=DBGridEh.selectedrows;
  if bookmarklist.count=0 then
  begin
    showmessage('Pls choose data first !');
    abort;
  end;
  if bookmarklist.count>0 then
  begin
       try
           Qry_ToPO.gotobookmark(pointer(bookmarklist[0]));
           if Qry_ToPO.FieldByName('CQDH').AsString='TW' then
           begin
             if Qry_ToPO.FieldByName('CSBH').AsString='' then //檢查是否有對應的VN廠商代號
             begin
               showmessage('No mapping Supplier ID');
               exit;
             end;
             Supp_ID:=Qry_ToPO.FieldByName('CSBH').AsString ; //記錄選取第一筆的VN廠商代號
           end;
           if Qry_ToPO.FieldByName('CQDH').AsString='VN' then
           begin
             if Qry_ToPO.FieldByName('PayVN').AsString='' then //檢查是否有對應的VN廠商代號
             begin
               showmessage('No mapping Supplier ID');
               exit;
             end;
             Supp_ID:=Qry_ToPO.FieldByName('PayVN').AsString ; //記錄選取第一筆的VN廠商代號
           end;
           //計算採購單流水號
           if Qry_ToPO.FieldByName('diff').AsFloat<0 then //有採購數量
           begin
             with query1 do
             begin
               active:=false;
               sql.Clear;
               sql.Add('select CGNO from CGZL where CGNO like '+''''+FY+FM+'%'+'''');
               sql.add('order by CGNO');
               active:=true;
               if recordcount >0 then
                  begin
                    last;
                    CGNO:=fieldbyname('CGNO').AsString;
                    CGNO:=copy(CGNO,7,5);
                    CGNO:=inttostr(strtoint(CGNO)+1);
                    while length(CGNO)<5 do
                      begin
                        CGNO:='0'+CGNO;
                      end;
                 end
                 else
                 begin
                   CGNO:='00001';
                 end;
               CGNO :=FY+FM+CGNO;
               active:=false;
             end;
             //新增採購單頭檔CGZL
             with query1 do
             begin
               active:=false;
               sql.Clear;
               sql.Add('insert CGZL ');
               sql.Add('(CGNO');
               sql.Add(',GSBH');
               sql.Add(',CGLX');
               sql.Add(',ZSBH');
               sql.Add(',USERID,USERDATE,CGDate,YN,PURPOSE) values (');
               sql.Add(' '''+CGNO+'''');
               sql.Add(','''+main.Edit2.text+'''');
               sql.Add(',''3'' ');  //PurNoSize
               sql.Add(','''+Supp_ID+'''');  //廠商代號
               sql.Add(','''+main.edit1.Text+'''');
               sql.Add(','''+formatdatetime('yyyy/MM/dd',Ndate)+'''');
               sql.Add(','''+formatdatetime('yyyy/MM/dd',Ndate)+'''');
               sql.Add(',''1'','''+Qry_ToPO.FieldByName('CQDH').AsString+''')');
               execsql;
               active:=false;
             end;

             //新增採購單身檔CGZLS

             for i:=0 to bookmarklist.count-1 do
             begin
               Qry_ToPO.gotobookmark(pointer(bookmarklist[i]));
               Qry_ToPO_RY.Active:=false;
               Qry_ToPO_RY.Active:=true;
               if Qry_ToPO.FieldByName('CQDH').AsString='TW' then
                 if  Supp_ID<>Qry_ToPO.FieldByName('CSBH').AsString then break;//至少會跑第一筆廠商不一樣
               if Qry_ToPO.FieldByName('CQDH').AsString='VN' then
                 if  Supp_ID<>Qry_ToPO.FieldByName('PayVN').AsString then break;//至少會跑第一筆廠商不一樣
               if Qry_ToPO.FieldByName('diff').AsFloat<0 then //有採購數量
               begin
                 if  Qry_ToPO_RY.RecordCount>0 then
                 begin
                   USPrice:='';
                   VNPrice:='';
                   //20190709
                   QUSPrice:='';
                   QVNPrice:='';
                   VNPrice_Round:=0;
                   //檢查報價單
                   Query1.Active:=false;
                   Query1.SQL.Clear;
                   Query1.SQL.Add('select *,');
                   Query1.SQL.Add('       case when ((USPrice is not null) and (PayVN=1)) then');
                   Query1.SQL.Add('            case when SuppEx is not null then round(USPrice*DisCount*SuppEx,0) else round(USPrice*DisCount*ErpEx,0) end');
                   Query1.SQL.Add('       else VNPrice*DisCount end ERPVNPrice,');
                   Query1.SQL.Add('       USPrice*DisCount as ERPUSPrice');
                   Query1.SQL.Add('from(Select  top 1 CGBJS.BJNO,CGBJS.CLBH,CGBJS.USPrice,CGBJS.VNPrice,CGBJS.USERDate,CGBJS.DisCount,CGBJS.SuppEx,ZSZL.PayVN,');
                   Query1.SQL.Add('             IsNull((select top 1 CWHL from CWHLS  where HLYEAR=Year(GetDate()) and HLMONTH=Month(GetDate()) and HLDay=1),0) as ErpEx');
                   Query1.SQL.Add('     from CGBJS ');
                   Query1.SQL.Add('left join CGBJ on CGBJ.BJNO=CGBJS.BJNO ');
                   Query1.SQL.Add('left join ZSZL on ZSZL.ZSDH=CGBJ.ZSBH');
                   Query1.SQL.Add('where CGBJ.GSBH='''+main.Edit2.Text+'''  and CLBH='''+Qry_ToPO.fieldbyname('CLBH').AsString+'''  and CGBJ.ZSBH='''+Supp_ID +''' ');
                   Query1.SQL.Add('order by CGBJS.BJNO desc,CGBJS.CLBH ) CGBJS');
                   Query1.Active:=true;
                   if Query1.RecordCount>0 then
                   begin
                      BJNO:=Query1.Fieldbyname('BJNO').AsString;
                      USPrice:=Query1.Fieldbyname('ERPUSPrice').AsString;
                      //20200513 round VNPrice allow VNPrice_Decimal
                      if (( not  Query1.FieldByName('ERPVNPrice').isnull) and  (Query1.FieldByName('ERPVNPrice').AsString<>'')) then
                      begin
                        VNPrice_Round:=roundto(Query1.Fieldbyname('ERPVNPrice').value,-VNPrice_Decimal);
                        VNPrice:=floattostr(VNPrice_Round);
                      end;
                      QUSPrice:=Query1.Fieldbyname('USPrice').AsString;
                      QVNPrice:=Query1.Fieldbyname('VNPrice').AsString;
                   end else
                   begin
                      //新增
                      BJNO:=CreateCGBJ(Supp_ID,Qry_ToPO.fieldbyname('CLBH').AsString,Qry_ToPO.fieldbyname('CQDH').AsString);
                      if Qry_ToPO.fieldbyname('CQDH').AsString='VN' then VNPrice:='0' else USPrice:='0';
                      if Qry_ToPO.fieldbyname('CQDH').AsString='VN' then QVNPrice:='0' else QUSPrice:='0';    //20190723
                   end;
                   Query1.Active:=false;
                   //
                   with query1 do
                   begin
                     active:=false;
                     sql.Clear;
                     sql.Add('insert CGZLS ');
                     sql.Add('(CGNO');
                     sql.Add(',CLBH');
                     sql.Add(',XqQty');
                     sql.Add(',Qty');
                     if VNPrice<>'' then
                       sql.Add(',VNPrice')
                     else
                       sql.Add(',USPrice');
                     sql.Add(',BJNO');
                     sql.Add(',YQDate');
                     sql.Add(',USERID,USERDATE,YN ');
                     if QVNPrice<>'' then
                       sql.Add(',QVNPrice')
                     else
                       sql.Add(',QUSPrice');
                     sql.Add(') values ');
                     sql.Add('( '''+CGNO+''' ');
                     sql.Add(','''+Qry_ToPO.fieldbyname('CLBH').AsString+''',0,0');
                     if VNPrice<>'' then
                       sql.Add(','+VNPrice)
                     else
                       sql.Add(','+USPrice);
                     sql.Add(','''+BJNO+''' ');  //固定填Transfer
                     sql.Add(',GetDate()+14');  //需求日期固定加14天
                     sql.Add(','''+main.edit1.Text+'''');
                     sql.Add(',GetDate()');
                     sql.Add(',''1''');
                     if QVNPrice<>'' then
                       sql.Add(','+QVNPrice)
                     else
                       sql.Add(','+QUSPrice);
                     sql.add(') ');
                     //funcobj.WriteErrorLog(sql.Text);
                     execsql;
                     active:=false;
                   end;
                   //新增採購單第三層CGZLSS

                   for j:=1 to Qry_ToPO_RY.RecordCount do
                   begin
                       if ((Qry_ToPO_RY.FieldByName('Qty').AsString<>'0') and (Qry_ToPO_RY.FieldByName('Diff').AsFloat<0))  then
                       begin
                         with query1 do
                         begin
                           active:=false;
                           sql.Clear;
                           sql.Add('insert CGZLSS ');
                           sql.Add('(CGNO');
                           sql.Add(',CLBH');
                           sql.Add(',ZLBH');   //RY
                           sql.Add(',XXCC');
                           sql.Add(',Stage');
                           sql.Add(',YQDate');
                           sql.Add(',Qty');
                           sql.Add(',CLSL');
                           sql.Add(',USERID,USERDATE,YN) values (');
                           sql.Add(' '''+CGNO+''' ');
                           sql.Add(','''+Qry_ToPO.fieldbyname('CLBH').AsString+'''');
                           sql.Add(','''+Qry_ToPO_RY.fieldbyname('BLNO').AsString+'''');
                           if IsSize=false then
                             sql.Add(',''ZZZZZZ'' ')
                           else
                             sql.Add(','''+Qry_ToPO_RY.fieldbyname('Size').AsString+''' ');
                           sql.Add(',''REPL'' ');
                           sql.Add(',GetDate()+14');  //需求日期固定加14天
                           sql.Add(','+floattostr(Qry_ToPO_RY.fieldbyname('Diff').asfloat*-1)+'');
                           sql.Add(','+Qry_ToPO_RY.fieldbyname('Qty').AsString+'');
                           sql.Add(','''+main.edit1.Text+'''');
                           sql.Add(',GetDate()');
                           sql.Add(',''1'')');
                           execsql;
                           active:=false;
                         end;
                       end;
                       Qry_ToPO_RY.next;
                   end;
                 end; //if
               end;//if Qry_ToPO.FieldByName('diff').AsFloat<0 then //有採購數量
             end; //for
           end;//if Qry_ToPO.FieldByName('diff').AsFloat<0 then //有採購數量
       finally
         begin
           Qry_ToPO.gotobookmark(bm);
           Qry_ToPO.freebookmark(bm);
           Qry_ToPO.enablecontrols;
         end;
       end;
     end;
    //採購下單整數
    if IsCGQtyIneger=true then
    begin
      with query1 do
      begin
        active:=false;
        sql.Clear;
        SQL.Add('Update CGZLSS Set Qty=CGZLSS.Qty+CGS.Diff');
        SQL.Add(' from (');
        SQL.Add('     Select CGS.*,CGSDiff.Diff from');
        SQL.Add('	 (Select * from (Select  CGNO,ZLBH,XXCC,CLBH,Stage,Qty,ROW_NUMBER() over (PARTITION BY CLBH ORDER BY Qty asc) as Sort from CGZLSS where CGNO='''+CGNO+''') CGS where Sort=1  ) CGS');
        SQL.Add('	 left join (Select CLBH,ceiling(IsNull(Sum(Qty),0.0))-IsNull(Sum(Qty),0.0) as Diff  from CGZLSS where CGNO='''+CGNO+'''  GROUP BY CLBH ) CGSDiff on CGSDiff.CLBH=CGS.CLBH');
        SQL.Add('  ) CGS');
        SQL.Add('  where CGS.CGNO=CGZLSS.CGNO and CGS.ZLBH=CGZLSS.ZLBH and CGS.XXCC=CGZLSS.XXCC and CGS.CLBH=CGZLSS.CLBH and CGS.Stage=CGZLSS.Stage');
        execsql;
        close;
      end;
    end;
  //
  with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('UPDATE CGZLS set QTY=isnull((select isnull(SUM(QTY),0) AS SQTY from CGZLSS WHERE CGZLSS.CGNO=CGZLS.CGNO AND CGZLSS.CLBH=CGZLS.CLBH  ');
    sql.add('  and CGZLSS.CGNO='''+CGNO+''' GROUP BY CGNO,CLBH),0) ');
    sql.add(' where CGZLS.CGNO='''+CGNO+''' ');
    execsql;
    close;
  end;

  showmessage('finish !');
  //自動開啟採購單畫面

    if PurOther<>nil then
    begin
      PurOther.show;
      PurOther.windowstate:=wsmaximized;
    end;
    if (PurOther.BB5.Enabled=true) or (PurOther.BD5.Enabled=true) then
    begin
      showmessage('Pls save data first ');
      abort;
    end;
    PurOther.Edit1.Text:=CGNO;
    PurOther.Check.Checked:=false;
    PurOther.Button1Click(nil);


    Qry_ToPO_RY.Active:=true ;
    E.Enabled:=true;
    M.Enabled:=true;
    PO.Enabled:=false;
    Cancel.Enabled:=false;
end;
//===================================

procedure TPur_Replenish.Chk_OverPur2Click(Sender: TObject);
begin
  if Chk_OverPur2.Checked then Chk_NoPur2.Checked:=false;
end;

procedure TPur_Replenish.Chk_OverPur1Click(Sender: TObject);
begin
  if Chk_OverPur1.Checked then Chk_NoPur1.Checked:=false;
end;

procedure TPur_Replenish.Chk_NoPur1Click(Sender: TObject);
begin
  if Chk_NoPur1.Checked then Chk_OverPur1.Checked:=false;
end;

procedure TPur_Replenish.Chk_NoPur2Click(Sender: TObject);
begin
  if Chk_NoPur2.Checked then Chk_OverPur2.Checked:=false;
end;

procedure TPur_Replenish.FormShow(Sender: TObject);
begin
  main.FormLanguage(Pointer(self),self.Name);   
end;

end.
