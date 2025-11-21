unit BOM_Audit_Check1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, GridsEh, DBGridEh, StdCtrls, Buttons, DB, DBTables,
  Mask, DBCtrls;

type
  TBOM_Audit_Check = class(TForm)
    Panel1: TPanel;
    Panel3: TPanel;
    BB1: TBitBtn;
    BB2: TBitBtn;
    BB3: TBitBtn;
    BB4: TBitBtn;
    BB5: TBitBtn;
    Panel2: TPanel;
    Label2: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    BB7: TBitBtn;
    DS1: TDataSource;
    Query1: TQuery;
    Query1JIJIE: TStringField;
    Query1ARTICLE: TStringField;
    Query1XH: TStringField;
    Query1BWBH: TStringField;
    Query1zwsm: TStringField;
    Query1BWLB: TStringField;
    Query1CLBH: TStringField;
    Query1YWPM: TStringField;
    Query1ZWPM: TStringField;
    Query1DWBH: TStringField;
    Query1LYCC: TStringField;
    Query1LOSS: TFloatField;
    Query1CLSL: TFloatField;
    Query1CLTX: TStringField;
    Query1CCQQ: TStringField;
    Query1CCQZ: TStringField;
    Query1USERID: TStringField;
    Query1userdate: TDateTimeField;
    Query1CLBH_Log: TStringField;
    Query1CLSL_Log: TStringField;
    Panel4: TPanel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBGridEh1: TDBGridEh;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure BB7Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BB1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BOM_Audit_Check: TBOM_Audit_Check;

implementation

{$R *.dfm}

procedure TBOM_Audit_Check.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TBOM_Audit_Check.FormDestroy(Sender: TObject);
begin
  BOM_Audit_Check:=nil;
end;

procedure TBOM_Audit_Check.BB7Click(Sender: TObject);
begin
  close;
end;

procedure TBOM_Audit_Check.Button1Click(Sender: TObject);
begin
    if (edit1.text='') then         //限制若沒有輸入條件則不讓你查
    begin
       showmessage('plz key Season');
       abort;
    end else
 with Query1 do
  begin
   active:=false;
   sql.clear;
   SQL.Add('select XXZL.JIJIE,XXZL.ARTICLE, XXZLS.XH,XXZLS.BWBH,bwzl.zwsm+'' / ''+bwzl.ywsm as zwsm,');
   SQL.Add('XXZLS.CLBH,CLZL.YWPM, CLZL.ZWPM,CLZL.DWBH,CLZL.LYCC,XXZLS.LOSS, XXZLS.CLSL, ');
   SQL.Add(' XXZLS.CLTX,XXZLS.CCQQ, XXZLS.CCQZ,XXZLS.BWLB,XXZLS.USERID, XXZLS.userdate, ');
   SQL.Add('(case when XXZLS.CLBH<>XXZLS_Log.CLBH then XXZLS_Log.Log_DateTime end) as ''CLBH_Log'', ');
   SQL.Add(' (case when XXZLS.CLSL<>XXZLS_Log.CLSL then XXZLS_Log.Log_DateTime end) as ''CLSL_Log'' ');
   SQL.Add('FROM XXZLS');
   SQL.Add('LEFT join (select XieXing,SheHao,BWBH,Max(CLBH) as CLBH,Max(CLSL) as CLSL,Max(Log_DateTime) as Log_DateTime from XXZLS_Log');
   SQL.Add('            where XXZLS_Log.XieXing=XieXing  and XXZLS_Log.SheHao=SheHao and Log_DateTime>=GetDate()-1');
   SQL.Add('           Group by XieXing,SheHao,BWBH');
   SQL.Add('          )  XXZLS_Log on XXZLS_Log.XieXing=XXZLS.XieXing and XXZLS_Log.SheHao=XXZLS.SheHao and XXZLS_Log.BWBH=XXZLS.BWBH');
   SQL.Add('LEFT JOIN BWZL  ON XXZLS.BWBH = BWZL.bwdh');
   SQL.Add('LEFT JOIN CLZL   ON XXZLS.CLBH = CLZL.cldh');
   SQL.Add('LEFT JOIN LBZLS ON SUBSTRING(XXZLS.CLBH,1,1) = LBZLS.lbdh AND LBZLS.LB=''05'' ');
   SQL.Add('LEFT JOIN ZSZL on ZSZL.ZSDH=XXZLS.CSBH');
   SQL.Add('LEFT JOIN xxzl on xxzlS.xiexing = xxzl.xiexing and xxzlS.shehao = xxzl.shehao ');
   if Edit1.Text<>'' then
   sql.add('WHERE XXZL.jijie like ''%'+Edit1.Text+'%'' ');
   SQL.Add('AND xxzls.cltx =''2'' ');
   SQL.Add('And XXZLS.CLSL =''0'' ');
  // SQL.Add('or XXZLS.CLSL =null ');
   SQL.Add('ORDER BY XXZLS.XH ');
   active:=true;
  end;
end;

procedure TBOM_Audit_Check.BB1Click(Sender: TObject);
begin
  Panel2.Visible:=true
end;

procedure TBOM_Audit_Check.FormCreate(Sender: TObject);
begin
    With Dbgrideh1 do
     begin
      Columns[0].Title.Caption :='Season|季節';
      Columns[1].Title.Caption :='Article';
      Columns[2].Title.Caption :='#';
      Columns[3].Title.Caption :='Part|部位';
      Columns[4].Title.Caption :='Part Name|部位名稱';
      Columns[5].Title.Caption :='Category|類別';
      Columns[6].Title.Caption :='Material|材料編號';
      Columns[7].Title.Caption :='Material Name|材料名稱';
      Columns[8].Title.Caption :='Material Name|材料名稱';
      Columns[9].Title.Caption :='Unit|單位';
      Columns[10].Title.Caption:='Size|尺寸';
      Columns[11].Title.Caption:='Loss';
      Columns[12].Title.Caption:='Unit Dosage|單位用量';
      Columns[13].Title.Caption:='Characteristic|特性';
      Columns[14].Title.Caption:='Size From|尺寸起';
      Columns[15].Title.Caption:='Size Until|尺寸迄';
      Columns[16].Title.Caption:='UserID|用戶編號';
      Columns[17].Title.Caption:='Date|最後異動日';
      Columns[18].Title.Caption:='Development Test|開發檢驗Y/N';
      Columns[19].Title.Caption:='Production Test|量產檢驗Y/N';
      //
      Columns[0].Width:=70;
      Columns[1].Width:=130;
      Columns[2].Width:=40;
      Columns[3].Width:=60;
      Columns[4].Width:=105;
      Columns[5].Width:=130;
      Columns[6].Width:=110;
      Columns[7].Width:=170;
      Columns[8].Width:=115;
      Columns[9].Width:=125;
      Columns[10].Width:=135;
      Columns[11].Width:=125;
      Columns[12].Width:=125;
      Columns[13].Width:=110;
      Columns[14].Width:=110;
      Columns[15].Width:=100;
      Columns[16].Width:=100;
      Columns[17].Width:=100;
      Columns[18].Width:=200;
      Columns[19].Width:=200;
      //
      FooterRowCount:=1;
      SumList.Active:=True;
      Columns[0].Footer.valuetype:=fvtStaticText;
      Columns[0].Footer.value:='Total';
      Columns[1].Footer.valuetype:=fvtcount;
      FooterColor:=clyellow;
  end;
end;
procedure TBOM_Audit_Check.DBGridEh1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin                                                                 //更改成一條藍色一條白色
  if gdSelected  in state then
    dbgrideh1.Canvas.Brush.Color:=clblue;
     dbgrideh1.DefaultDrawColumnCell(rect,datacol,column,state);
 end;

end.
