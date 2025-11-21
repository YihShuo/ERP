unit ScanCheck1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, PrnDbgeh, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ComCtrls,
  ExtCtrls,dateutils,ehlibBDE,comobj;

type
  TScanCheck = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    DTP3: TDateTimePicker;
    DTP4: TDateTimePicker;
    DS1: TDataSource;
    SMZL: TQuery;
    PrintDBGridEh1: TPrintDBGridEh;
    Qtemp: TQuery;
    SMZLDDBH: TStringField;
    SMZLGXLB: TStringField;
    SMZLXXCC: TStringField;
    SMZLXH: TStringField;
    SMZLQty: TIntegerField;
    SMZLCTS: TIntegerField;
    SMZLTotQty: TIntegerField;
    SMZLokCTS: TIntegerField;
    SMZLTotokQty: TIntegerField;
    SMZLNowokCTS: TIntegerField;
    SMZLNowokQty: TIntegerField;
    SMZLArticle: TStringField;
    SMZLXieMing: TStringField;
    Label5: TLabel;
    CBX4: TComboBox;
    SMZLDepName: TStringField;
    Button2: TButton;
    SMZLCODEBAR: TStringField;
    SMZLScanDate: TDateTimeField;
    Label6: TLabel;
    Edit3: TEdit;
    CheckBox1: TCheckBox;
    SMZLChk: TCheckBox;
    SMZLComponents: TIntegerField;
    Button3: TButton;
    DBGridEh1: TDBGridEh;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure Button2Click(Sender: TObject);
    procedure DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
   procedure fixSMDDSS();
  public
    { Public declarations }
  end;

var
  ScanCheck: TScanCheck;

implementation
  uses FunUnit;
{$R *.dfm}

procedure TScanCheck.FormDestroy(Sender: TObject);
begin
  ScanCheck:=nil;
end;

procedure TScanCheck.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TScanCheck.FormCreate(Sender: TObject);
var NDate:TDate;
    i:integer;
begin
  with Qtemp do
  begin 
    active:=false;
    sql.Clear;
    sql.add('Select distinct GX from SCGXDY where DepGXLB is not null order by GX');
    active:=true;
    for i:=1 to recordcount do
    begin
        CBX4.Items.Add(fieldbyname('GX').asstring);
        Next;
    end;
    CBX4.ItemIndex:=0;
    active:=false;
    sql.Clear;
    sql.add('select getdate() as NDate ');
    active:=true;
    NDate:=fieldbyname('NDate').value;
    active:=false;
    DTP1.date:=NDate;
    DTP2.time:=startoftheday(NDate);
    DTP3.date:=NDate  ;
    DTP4.time:=endoftheday(NDate);
  end;
end;

procedure TScanCheck.Button1Click(Sender: TObject);
begin
  if ((SMZLChk.Checked=false) and (Edit2.Text='')) then
  begin
    Showmessage('請勾選掃描日期或輸入訂單號');
    abort();
  end;
  with SMZL do
  begin
    active:=false;
    sql.Clear;
    sql.add('select SMDDSS.DDBH,Max(BDepartment.DepName) as DepName,SMDDSS.GXLB,SMDDSS.XXCC,SMDDSS.XH,KT_SOPCut.Components,SMDD.Article,SMDD.XieMing,');
    sql.add('       SMDDSS.Qty,SMDDSS.CTS,SMDDSS.Qty*SMDDSS.CTS as TotQty,SMDDSS.okCTS,SMDDSS.Qty*SMDDSS.okCTS as TotokQty');
    sql.add('       ,sum(SMZL.CTS) as NowokCTS,sum(SMZL.CTS)*SMDDSS.Qty as NowokQty,Max(SMDDSS.CODEBAR) as CODEBAR,MAX(SMZL.ScanDate) as ScanDate  ');
    sql.add('from SMDDSS');
    sql.Add('left join (select SMNO,CODEBAR,CTS,DepNo,ScanDate from SMZL where SB is null union all Select SMNO,CODEBAR,CTS,DepNo,ScanDate from SMZLOld) SMZL on SMDDSS.CodeBar=SMZL.CodeBar');
    sql.add('left join SMDD on SMDD.DDBH=SMDDSS.DDBH and SMDD.GXLB=SMDDSS.GXLB ');
    sql.add('left join BDepartment on Bdepartment.ID=SMZL.DepNo');
    sql.add('left join DDZL on DDZL.DDBH=SMDD.YSBH');
    sql.add('left join (select KT_SOPCut.XieXing, KT_SOPCut.SheHao, count(*) as Components from KT_SOPCut group by XieXing, SheHao) KT_SOPCut ');
    sql.Add('                  on KT_SOPCut.XieXing = DDZL.XieXing and KT_SOPCut.SheHao = DDZL.SheHao and SMDDSS.GXLB=''C'' ');  // only show components with cutting
    sql.add('where 1=1 ');
    sql.add('      and SMDDSS.DDBH like '''+edit2.Text+'%'' ');
    sql.add('      and SMDDSS.GXLB='''+CBX4.Text+'''');
    if Edit1.Text<>'' then
    sql.add('      and BDepartment.DepName like ''%'+edit1.Text+'%'' ');
    if Edit3.Text<>'' then
    sql.add('      and SMDDSS.CODEBAR like '''+Edit3.Text+''' ');
    if CheckBox1.Checked=true then
    sql.add('      and SMDDSS.CTS>SMDDSS.okCTS ');
    if SMZLChk.Checked=true then
    begin
    sql.add('      and SMZL.ScanDate between ');
    sql.add('           '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+' '+formatdatetime('HH:mm:ss',DTP2.Time)+'''');
    sql.add('           and '''+formatdatetime('yyyy/MM/dd',DTP3.Date)+' '+formatdatetime('HH:mm:ss',DTP4.Time)+'''');
    end;
    sql.add('group by SMDDSS.GXLB,SMDDSS.DDBH,SMDDSS.XXCC,SMDDSS.XH,KT_SOPCut.Components,SMDD.Article,SMDD.XieMing,SMDDSS.Qty,SMDDSS.CTS,SMDDSS.okCTS');
    sql.add('order by SMDDSS.GXLB,SMDDSS.DDBH,SMDDSS.XXCC,SMDDSS.XH,SMDD.Article,SMDD.XieMing');
    //funcObj.WriteErrorLog(sql.Text);
    active:=true;
  end;
end;
procedure TScanCheck.fixSMDDSS();
begin
  with Qtemp do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Update SMDDSS set okCTS=A.NowokCTS ');
    SQL.Add('from (');
    SQL.Add('Select * from (');
    SQL.Add('Select * from (');
    SQL.Add('Select SMDDSS.DDBH,SMDDSS.GXLB,SMDDSS.XXCC,SMDDSS.XH,SMDD.Article,SMDD.XieMing,');
    SQL.Add('       SMDDSS.Qty,SMDDSS.CTS,SMDDSS.Qty*SMDDSS.CTS as TotQty,SMDDSS.okCTS,SMDDSS.Qty*SMDDSS.okCTS as TotokQty');
    SQL.Add('       ,IsNull(sum(SMZL.CTS),0) as NowokCTS,IsNull(sum(SMZL.CTS)*SMDDSS.Qty,0) as NowokQty,Max(SMDDSS.CODEBAR) as CODEBAR,MAX(SMZL.ScanDate) as ScanDate  ');
    SQL.Add('from SMDDSS');
    SQL.Add('left join SMZL on SMDDSS.CodeBar=SMZL.CodeBar');
    SQL.Add('left join SMDD on SMDD.DDBH=SMDDSS.DDBH and SMDD.GXLB=SMDDSS.GXLB ');
    SQL.Add('where 1=1 ');
    SQL.Add('      --and SMDDSS.DDBH like ''BC2205-0008%'' ');
    SQL.Add('      --and SMDDSS.GXLB=''C''');
    SQL.Add('Group by SMDDSS.GXLB,SMDDSS.DDBH,SMDDSS.XXCC,SMDDSS.XH,SMDD.Article,SMDD.XieMing,SMDDSS.Qty,SMDDSS.CTS,SMDDSS.okCTS');
    SQL.Add(') A');
    SQL.Add('where NowokCTS<>okCTS ) A  ) A');
    SQL.Add('where A.DDBH=SMDDSS.DDBH and A.GXLB=SMDDSS.GXLB and A.XH=SMDDSS.XH and A.XXCC=SMDDSS.XXCC');
  end;
end;
procedure TScanCheck.DBGridEh1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin

 { if SMZL.FieldByName('XH').value='2' then
  begin
    dbgrideh1.canvas.brush.Color:=$00FCCBCD;
    DBGrideh1.DefaultDrawColumnCell(Rect,DataCol,Column, State);
  end; }

end;

procedure TScanCheck.Button2Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin
 if  smzl.active  then
    begin
      try
        eclApp:=CreateOleObject('Excel.Application');
        WorkBook:=CreateOleObject('Excel.Sheet');
      except
        Application.MessageBox('No Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
        Exit;
      end;
      try
          WorkBook:=eclApp.workbooks.Add;
          for   i:=0   to   smzl.fieldcount-1   do
            begin
                eclApp.Cells(1,i+1):=smzl.fields[i].FieldName;
            end;

          smzl.First;
          j:=2;
          while   not   smzl.Eof   do
            begin
              for   i:=0   to  smzl.fieldcount-1  do
              begin
                eclApp.Cells(j,i+1):=smzl.Fields[i].Value;
              end;
            smzl.Next;
            inc(j);
            end;
         eclapp.columns.autofit;
         showmessage('Succeed');
         eclApp.Visible:=True;
      except
          on   F:Exception   do
            showmessage(F.Message);
      end;
    end;

end;

procedure TScanCheck.DBGridEh1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
{  if SMZL.FieldByName('CTS').Value=SMZL.FieldByName('okCTS').Value then
  begin
    DBGrideh1.canvas.font.color:=clBlue;
  end; }
end;

procedure TScanCheck.Button3Click(Sender: TObject);
begin
  if ((SMZLChk.Checked=false) and (Edit2.Text='')) then
  begin
    Showmessage('請勾選掃描日期或輸入訂單號');
    abort();
  end;
  with SMZL do
  begin
    active:=false;
    sql.Clear;
    sql.add('select SMDDSS.DDBH,BDepartment.DepName,SMDDSS.GXLB,SMDDSS.XXCC,SMDDSS.XH,KT_SOPCut.Components,SMDD.Article,SMDD.XieMing,');
    sql.add('       SMDDSS.Qty,SMDDSS.CTS,SMDDSS.Qty*SMDDSS.CTS as TotQty,SMDDSS.okCTS,SMDDSS.Qty*SMDDSS.okCTS as TotokQty');
    sql.add('       ,sum(SMZL.CTS) as NowokCTS,sum(SMZL.CTS)*SMDDSS.Qty as NowokQty,Max(SMDDSS.CODEBAR) as CODEBAR,MAX(SMZL.ScanDate) as ScanDate  ');
    sql.add('from SMDDSS');
    sql.Add('left join (select SMNO,CODEBAR,CTS,DepNo,ScanDate from SMZL where SB is null union all Select SMNO,CODEBAR,CTS,DepNo,ScanDate from SMZLOld) SMZL on SMDDSS.CodeBar=SMZL.CodeBar');
    sql.add('left join SMDD on SMDD.DDBH=SMDDSS.DDBH and SMDD.GXLB=SMDDSS.GXLB ');
    sql.add('left join BDepartment on Bdepartment.ID=SMZL.DepNo');
    sql.add('left join DDZL on DDZL.DDBH=SMDD.YSBH');
    sql.add('left join (select KT_SOPCut.XieXing, KT_SOPCut.SheHao, count(*) as Components from KT_SOPCut group by XieXing, SheHao) KT_SOPCut ');
    sql.Add('                  on KT_SOPCut.XieXing = DDZL.XieXing and KT_SOPCut.SheHao = DDZL.SheHao and SMDDSS.GXLB=''C'' ');  // only show components with cutting
    sql.add('where 1=1 ');
    sql.add('      and SMDDSS.DDBH like '''+edit2.Text+'%'' ');
    sql.add('      and SMDDSS.GXLB='''+CBX4.Text+'''');
    if Edit1.Text<>'' then
    sql.add('      and BDepartment.DepName like ''%'+edit1.Text+'%'' ');
    if Edit3.Text<>'' then
    sql.add('      and SMDDSS.CODEBAR like '''+Edit3.Text+''' ');
    if CheckBox1.Checked=true then
    sql.add('      and SMDDSS.CTS>SMDDSS.okCTS ');
    if SMZLChk.Checked=true then
    begin
    sql.add('      and SMZL.ScanDate between ');
    sql.add('           '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+' '+formatdatetime('HH:mm:ss',DTP2.Time)+'''');
    sql.add('           and '''+formatdatetime('yyyy/MM/dd',DTP3.Date)+' '+formatdatetime('HH:mm:ss',DTP4.Time)+'''');
    end;
    sql.add('group by SMDDSS.GXLB,SMDDSS.DDBH,SMDDSS.XXCC,SMDDSS.XH,KT_SOPCut.Components,SMDD.Article,SMDD.XieMing,SMDDSS.Qty,SMDDSS.CTS,SMDDSS.okCTS,BDepartment.DepName');
    sql.add('order by SMDDSS.GXLB,SMDDSS.DDBH,SMDDSS.XXCC,SMDDSS.XH,SMDD.Article,SMDD.XieMing');
    //funcObj.WriteErrorLog(sql.Text);
    active:=true;
  end;
end;
end.
