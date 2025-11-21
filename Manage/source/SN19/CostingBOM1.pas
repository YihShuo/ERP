unit CostingBOM1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ComCtrls, Buttons, OleServer,Comobj ,
  ExtCtrls, DBCtrls, GridsEh, DBGridEh, Menus, Math, IniFiles;

type
  TCostingBOM = class(TForm)
    Panel1: TPanel;
    BB2: TBitBtn;
    BB3: TBitBtn;
    BB4: TBitBtn;
    BB5: TBitBtn;
    BB6: TBitBtn;
    BB7: TBitBtn;
    BB1: TBitBtn;
    BBT1: TBitBtn;
    BBT2: TBitBtn;
    BBT3: TBitBtn;
    BBT4: TBitBtn;
    bbt5: TBitBtn;
    bbt6: TBitBtn;
    PC1: TPageControl;
    TS1: TTabSheet;
    TS2: TTabSheet;
    TS3: TTabSheet;
    TS4: TTabSheet;
    Panel2: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    Label3: TLabel;
    Edit4: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    Edit3: TEdit;
    Edit5: TEdit;
    Button1: TButton;
    DBGrid1: TDBGridEh;
    XXZL: TQuery;
    DS1: TDataSource;
    XXZLXieXing: TStringField;
    XXZLSheHao: TStringField;
    XXZLXieMing: TStringField;
    XXZLYSSM: TStringField;
    XXZLARTICLE: TStringField;
    XXZLBZCC: TStringField;
    Panel3: TPanel;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    DBGrid2: TDBGridEh;
    XXZLS: TQuery;
    DS2: TDataSource;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Panel4: TPanel;
    DBText5: TDBText;
    DBText6: TDBText;
    DBText7: TDBText;
    DBText8: TDBText;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Panel5: TPanel;
    DBText9: TDBText;
    DBText10: TDBText;
    DBText11: TDBText;
    DBText12: TDBText;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    DBGrid3: TDBGridEh;
    DBGrid4: TDBGridEh;
    xtbwyl1: TQuery;
    DS3: TDataSource;
    xtbwyl: TQuery;
    DS4: TDataSource;
    XXCC: TQuery;
    Excel: TButton;
    Print: TButton;
    Print2: TButton;
    Excel2: TButton;
    XXZLKFJC: TStringField;
    CheckBox1: TCheckBox;
    XXZLXx: TStringField;
    XXZLSs: TStringField;
    XXZLIMGName: TStringField;
    ShoeImage: TImage;
    shoePicpopo: TPopupMenu;
    Saveas1: TMenuItem;
    SaveDialog: TSaveDialog;
    Label18: TLabel;
    SeasonEdit: TEdit;
    XXZLJiJie: TStringField;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Edit6: TEdit;
    XXZLDAOMH: TStringField;
    XXZLSFLBH: TStringField;
    XXZLSXieXing: TStringField;
    XXZLSShehao: TStringField;
    XXZLSBWBH: TStringField;
    XXZLSBWMC: TStringField;
    XXZLSCLBH: TStringField;
    XXZLSCLMC: TStringField;
    XXZLSDWBH: TStringField;
    XXZLSBWZW: TStringField;
    XXZLSCLSL: TFloatField;
    XXZLSVN_Mat: TFloatField;
    XXZLSTW_Mat: TFloatField;
    XXZLSGC_Mat: TFloatField;
    XXZLSVN_Mat_P: TFloatField;
    XXZLSTW_Mat_P: TFloatField;
    XXZLSGC_Mat_P: TFloatField;
    XXZLSTotal_P: TFloatField;
    Popumenu: TPopupMenu;
    N5: TMenuItem;
    UpdateSQL1: TUpdateSQL;
    XXZLSYN: TStringField;
    XXZLSUSERID: TStringField;
    XXZLSUSERDATE: TDateTimeField;
    XXZLSXFL: TStringField;
    TempQry: TQuery;
    Label22: TLabel;
    ExchangLabel: TLabel;
    SizeLabel: TLabel;
    SizeEdit: TEdit;
    SpeedButton1: TSpeedButton;
    XXZLSXH: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure BB7Click(Sender: TObject);
    procedure BB1Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure XXCCAfterOpen(DataSet: TDataSet);
    procedure XXZLSAfterOpen(DataSet: TDataSet);
    procedure ExcelClick(Sender: TObject);
    procedure Excel2Click(Sender: TObject);
    procedure bbt6Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure DBGrid1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure XXZLAfterScroll(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure Saveas1Click(Sender: TObject);
    procedure XXZLSCalcFields(DataSet: TDataSet);
    procedure DBGrid2EditButtonClick(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure PC1Changing(Sender: TObject; var AllowChange: Boolean);
    procedure PC1Change(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    IsExport:boolean;
    { Private declarations }
    procedure DetectMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
  public
    ShoePicPath:String;
    BOM_N31_KFCQ:String;
    { Public declarations }
    procedure ReadIni();
    procedure ExportPlanFormatData();
    procedure InitTitleClick(IsOpen:boolean);
  end;

var
  CostingBOM: TCostingBOM;

implementation
  uses main1, ShowShoePic1, CostingBOMFL1, CostBOM_MatPrice1 ,CostBOM_NoPrice1 , FunUnit;
{$R *.dfm}

procedure TCostingBOM.ReadIni();
var MyIni :Tinifile;
    AppDir:string;
begin
  ShoePicPath := '\\192.168.23.11\A_DataCenter\CDC\Sales\BOM';
  AppDir:=ExtractFilePath(Application.ExeName);
  if FileExists(AppDir+'\ComName.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ComName.ini');
      ShoePicPath:=MyIni.ReadString('ShoePic','Bom_N31_shoePic','');
      BOM_N31_KFCQ:=MyIni.ReadString('ERP','BOM_N31_KFCQ','');
    finally
      MyIni.Free;
    end;
  end;
end;

//DBGridEh
procedure TCostingBOM.InitTitleClick(IsOpen:boolean);
var i:integer;
begin

  if IsOpen=false then
  begin
    for i:=0 to DBGrid2.Columns.Count-1 do
      DBGrid2.Columns[i].Title.TitleButton:=false;
  end else
  begin
    if ((XXZLS.Active=true) and (DBGrid2.Columns[0].Title.TitleButton=false))then
      for i:=0 to DBGrid2.Columns.Count-3 do
        DBGrid2.Columns[i].Title.TitleButton:=true;
  end;
end;

procedure TCostingBOM.FormClose(Sender: TObject; var Action: TCloseAction);
begin
action:=cafree;
end;

procedure TCostingBOM.Button1Click(Sender: TObject);
begin
   if (SeasonEdit.text='') and (edit3.text='')and (Edit4.Text='') then
   begin
      showmessage('Please input season or Article or Customer keypoint ');
   end else
   begin
      with XXZL do
      begin
         active:=false;
         sql.clear;
         sql.add('select XXZL.XieXing,XXZL.SheHao,XXZL.Article,');
         sql.add('XXZL.XieMing,XXZL.YSSM,KFZL.KFJC,XXZL.BZCC,xt.xiexing as Xx,xt.Shehao as Ss,XXZL.IMGName,KFXXZL.JiJie,XXZL.DAOMH from XXZL ');
         sql.add('left join KFZL on KFZL.KFDH=XXZL.KHDH ');
         sql.add('left join KFXXZL on KFXXZL.SheHao=XXZL.SheHao and  KFXXZL.XieXing=XXZL.XieXing ');
         sql.Add('left join (select xiexing,shehao from xtbwyl1 group by xiexing,shehao) as xt');
         sql.add('  on xt.xiexing=xxzl.xiexing and xt.shehao=xxzl.shehao ' );
         sql.add('where XXZL.XieXing like '+''''+edit1.Text+'%'+'''');
         sql.add(' and XXZL.SheHao like '+''''+edit2.Text+'%'+'''');
         sql.add(' and XXZL.ARTICLE like '+''''+edit3.Text+'%'+'''');
         sql.add(' and KFZL.KFJC like '+''''+'%'+edit4.Text+'%'+'''');
         sql.add(' and XXZL.XieMing like '+''''+edit5.Text+'%'+'''');
         if BOM_N31_KFCQ<>'' then
            sql.add(' and XXZL.KFCQ in ('''+CostingBOM.BOM_N31_KFCQ+''' )');
         if Edit6.Text<>'' then
            sql.add('  and XXZL.DAOMH like ''%'+Edit6.Text+'%'' ');
         if SeasonEdit.Text<>'' then
            sql.add('  and KFXXZL.JiJie like ''%'+SeasonEdit.Text+'%'' ');
         if checkbox1.Checked then
         begin
            sql.add(' and XXZL.YN='+''''+'1'+'''');
         end;
         sql.add(' order by KFJC,XXZL.XieXing,XXZL.Shehao');
         //funcobj.WriteErrorLog(sql.Text);
         active:=true;
      end;
      with  XXZLS do
      begin
        Active:=false;
        SQL.Clear;
        SQL.Add('select XXBWFL_K.FLBH,XXBWFLS_K.XFL,XXBWFL_K.USERID,XXBWFL_K.USERDATE,XXBWFL_K.YN,XXZLS.* from ( ');
        SQL.Add('SELECT ');
        SQL.Add('		MT.XieXing,MT.Shehao,MT.XH,MT.BWBH,MT.BWMC,MT.CLBH,MT.CLMC,MT.DWBH,MT.BWZW,MT.CLSL, ');
        SQL.Add('		case when (CH1.BWBH is null and MT.CQDH=''VN'')  then max(MT.GC) ');
        SQL.Add('				when CH1.BWBH is not null then sum(CH1.VN) end as ''VN_Mat'', ');
        SQL.Add('		case when (CH1.BWBH is null and MT.CQDH=''TW'') then max(MT.GC) ');
        SQL.Add('				when CH1.BWBH is not null then sum(CH1.TW) end as ''TW_Mat'',		');
        SQL.Add('		case when CH1.BWBH is not null then max(MT.GC) end as ''GC_Mat'' ');
        SQL.Add('FROM (select  XXZLS.XieXing,XXZLS.Shehao,XXZLS.XH ,XXZLS.BWBH,BWZL.ywsm BWMC,XXZLS.CLBH,CLZL.YWPM as CLMC ,BWZL.zwsm  as BWZW,XTBWYL1.CLSL,CLZL.DWBH,CQDH, ');
        SQL.Add('				case when sum(CGBJS.USPRICE) is not null then sum(CGBJS.USPRICE) else round(sum(CGBJS.VNPrice/'+ExchangLabel.Caption+'),3) end  as ''GC'' ');
        SQL.Add('		  FROM XXZLS');
        SQL.Add('		  LEFT JOIN BWZL  ON XXZLS.BWBH = BWZL.bwdh');
        SQL.Add('		  LEFT JOIN CLZL   ON XXZLS.CLBH = CLZL.cldh');
        SQL.Add('		  LEFT JOIN XTBWYL1 ON XXZLS.XIEXING=XTBWYL1.XIEXING AND XXZLS.SHEHAO=XTBWYL1.SHEHAO AND XXZLS.BWBH=XTBWYL1.BWBH ');
        if SizeEdit.Text<>'0' then
        begin
           sql.Add(' AND XTBWYL1.XTCC='''+SizeEdit.Text+'''');
        end else
        begin
          sql.Add(' AND XTBWYL1.XTCC='''+XXZL.fieldbyname('BZCC').AsString+'''');
        end;
        SQL.Add('		  --LEFT JOIN LBZLS ON SUBSTRING(XXZLS.CLBH,1,1) = LBZLS.lbdh AND LBZLS.LB=''05''');
        SQL.Add('		  LEFT JOIN (select CLBH,case when USPrice is null then round(VNPrice/'+ExchangLabel.Caption+',3) else USPrice end as USPrice ,VNPrice,rn  from (select CGBJS.CLBH,CGBJS.USPrice,CGBJS.VNPrice,');
        SQL.Add('										ROW_NUMBER() over (PARTITION BY CGBJS.CLBH ORDER BY CGBJ.BJNO DESC) as  rn');
        SQL.Add('										from CGBJ');
        SQL.Add('										left join CGBJS on CGBJ.BJNO=CGBJS.BJNO');
        SQL.Add('										where CGBJ.GSBH='''+main.Edit2.Text+''' and CGBJS.CLBH is not null');
        SQL.Add('										) CGBJ where rn=1 ) CGBJS ON CGBJS.CLBH=XXZLS.CLBH');
        SQL.Add('		  where XXZLS.XieXing=:XieXing and XXZLS.SheHao=:SheHao and left(XXZLS.clbh,1)<>''M'' and XXZLS.BWLB=1 and XTBWYL1.CLSL is not NULL');
        SQL.Add('		  GROUP BY XXZLS.XieXing,XXZLS.Shehao, XXZLS.XH, XXZLS.BWBH,BWZL.ywsm,XXZLS.CLBH, CLZL.YWPM,CLZL.DWBH ,BWZL.zwsm,XTBWYL1.CLSL,CLZL.DWBH,CQDH  )MT');
        SQL.Add('left join ( ');
        SQL.Add('		select  CH.BWBH, case when CH.CQDH=''VN'' then CH.Price end as ''VN'',case when CH.CQDH=''TW'' then CH.Price end as ''TW''');
        SQL.Add('		from(');
        SQL.Add('		  select XXZLS.BWBH,CQDH,case when sum(CGBJS.USPRICE) is not null then sum(CGBJS.USPRICE) else round(sum(CGBJS.VNPrice/'+ExchangLabel.Caption+'),3) end  as ''Price''');
        SQL.Add('		  FROM XXZLS ');
        SQL.Add('		  inner join clzhzl on clzhzl.cldh=xxzls.clbh ');
        SQL.Add('		  LEFT JOIN BWZL  ON XXZLS.BWBH = BWZL.bwdh ');
        SQL.Add('		  LEFT JOIN CLZL   ON clzhzl.cldh1 = CLZL.cldh ');
        SQL.Add('		  LEFT JOIN (select CLBH,case when USPrice is null then round(VNPrice/'+ExchangLabel.Caption+',3) else USPrice end as USPrice ,VNPrice,rn  from (select CGBJS.CLBH,CGBJS.USPrice,CGBJS.VNPrice, ');
        SQL.Add('										ROW_NUMBER() over (PARTITION BY CGBJS.CLBH ORDER BY CGBJ.BJNO DESC) as  rn ');
        SQL.Add('										from CGBJ');
        SQL.Add('										left join CGBJS on CGBJ.BJNO=CGBJS.BJNO');
        SQL.Add('										where CGBJ.GSBH='''+main.Edit2.Text+''' and CGBJS.CLBH is not null ');
        SQL.Add('										) CGBJ where rn=1 ) CGBJS ON CGBJS.CLBH=clzhzl.cldh1 ');
        SQL.Add('		  where XXZLS.XieXing=:XieXing and XXZLS.SheHao=:SheHao and XXZLS.BWLB=1 ');
        SQL.Add('		  GROUP BY XXZLS.BWBH,CQDH ) CH');
        SQL.Add('		  ) Ch1 on MT.bwbh=Ch1.BWBH');
        SQL.Add('group by MT.XieXing,MT.Shehao,MT.XH,MT.BWBH,MT.BWMC,MT.CLBH,MT.CLMC,MT.DWBH,MT.BWZW,MT.CLSL,CH1.BWBH,MT.CQDH	  ');
        SQL.Add('-- VN BOM');
        SQL.Add('union all');
        SQL.Add('SELECT VN_BOM.XieXing,VN_BOM.SheHao,VN_BOM.XH, VN_BOM.BWBH,VN_BOM.BWMC,VN_BOM.CLBH,VN_BOM.CLMC,VN_BOM.DWBH,VN_BOM.BWZW,VN_BOM.CLSL, ');
        SQL.Add('		CASE WHEN CQDH=''VN'' THEN PRICE END AS ''VN_Mat'', ');
        SQL.Add('		CASE WHEN CQDH=''TW'' THEN PRICE END as ''TW_Mat'', ');
        SQL.Add('		NULL AS ''GC_Mat''');
        SQL.Add('FROM ( ');
        SQL.Add('	select XXZLSVN.XieXing,XXZLSVN.SheHao,''000'' as XH,XXZLSVN.BWBH, BWZL.YWSM as BWMC,XXZLSVN.CLBH,CLZL.YWPM AS CLMC,BWZL.ZWSM AS BWZW,XXZLSVN.CLSL,CQDH,CLZL.DWBH,');
        SQL.Add('			CASE WHEN SUM(USPRICE) IS NOT NULL THEN sum(CGBJS.USPRICE) else round(sum(CGBJS.VNPrice/'+ExchangLabel.Caption+'),3) end  AS ''PRICE''			');
        SQL.Add('	from XXZLSVN');
        SQL.Add('	left join BWZL on BWZL.BWDH= XXZLSVN.BWBH');
        SQL.Add('	left join CLZL on XXZLSVN.CLBH=CLZL.CLDH');
        SQL.Add('	LEFT JOIN (select CLBH,case when USPrice is null then round(VNPrice/'+ExchangLabel.Caption+',3) else USPrice end as USPrice ,VNPrice,rn  from (select CGBJS.CLBH,CGBJS.USPrice,CGBJS.VNPrice,');
        SQL.Add('										ROW_NUMBER() over (PARTITION BY CGBJS.CLBH ORDER BY CGBJ.BJNO DESC) as  rn');
        SQL.Add('										from CGBJ ');
        SQL.Add('										left join CGBJS on CGBJ.BJNO=CGBJS.BJNO');
        SQL.Add('										where (CGBJ.GSBH='''+main.Edit2.Text+''' or CGBJ.GSBH=''VTX'')  and CGBJS.CLBH is not null');
        SQL.Add('										) CGBJ where rn=1 ) CGBJS ON CGBJS.CLBH=XXZLSVN.CLBH');
        SQL.Add('	where  XXZLSVN.XieXing=:XieXing and  XXZLSVN.SheHao=:SheHao ');
        SQL.Add('	GROUP BY  XXZLSVN.XieXing,XXZLSVN.SheHao, XXZLSVN.BWBH,BWZL.YWSM,XXZLSVN.CLBH,CLZL.YWPM,BWZL.ZWSM,XXZLSVN.CLSL,CQDH,CLZL.DWBH ) VN_BOM   ');
        SQL.Add(') XXZLS ');
        SQL.Add('LEFT join XXBWFL_K on XXBWFL_K.XieXing=XXZLS.XieXing and XXBWFL_K.SheHao=XXZLS.SheHao and XXBWFL_K.BWBH=XXZLS.BWBH ');
        SQL.Add('Left join XXBWFLS_K on XXBWFL_K.FLBH=XXBWFLS_K.FLBH ');
        SQL.Add('Order by  XXBWFL_K.FLBH,XXBWFLS_K.XFL,XXZLS.XH ');
        //funcobj.WriteErrorLog(sql.Text);
        Active:=true;
      end;
      BBT6.Enabled:=true;
      panel2.Visible:=false;
      InitTitleClick(true);
   end;
end;

procedure TCostingBOM.BB7Click(Sender: TObject);
begin
close;
end;

procedure TCostingBOM.BB1Click(Sender: TObject);
begin
PC1.ActivePage:=TS1;
panel2.Visible:=true;
edit1.SetFocus;
end;

procedure TCostingBOM.DBGrid1DblClick(Sender: TObject);
begin
  if XXZL.active then
  begin
    PC1.ActivePage:=TS2;
    PC1.OnChange(PC1);
  end;
end;

procedure TCostingBOM.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
  DBGrid1Dblclick(nil);
end;

procedure TCostingBOM.XXZLSAfterOpen(DataSet: TDataSet);
begin

  if XXZLS.RecordCount <> 0 then
  begin
    with XXCC do
    begin
      Active:=false;
      sql.Clear;
      sql.add('select distinct XTCC from XTBWYL  ');
      sql.add('where XieXing='+''''+XXZL.fieldbyname('XieXing').AsString+'''');
      sql.add('and SheHao='+''''+XXZL.fieldbyname('SheHao').AsString+''''+'  order by XTCC ');
      active:=true;
    end;
  end;
end;


procedure TCostingBOM.XXCCAfterOpen(DataSet: TDataSet);
var i:integer;
begin

  if XXCC.RecordCount <> 0 then   // 沒有電腦用量
  begin

    //實際用量
    XXCC.First;
    with  XTBWYL1 do
    begin
      active:=false;
      sql.clear;
      sql.add('select XTBWYL1.BWBH,BWZL.YWSM');
      while not XXCC.eof do
        begin
          sql.add(',max(case when XTBWYL1.XTCC='+''''+XXCC.fieldbyname('XTCC').asstring+'''');
          sql.add(' then XTBWYL1.CLSL end ) as '+''''+XXCC.fieldbyname('XTCC').asstring+'''');
          XXCC.Next;
        end;
      sql.add('from XTBWYL1 ');
      sql.add('left join BWZL on BWZL.BWDH=XTBWYL1.BWBH  ');
      sql.add('where XTBWYL1.XieXing=:XieXing and XTBWYL1.SheHao=:SheHao');
      sql.add('group by XTBWYL1.BWBH,BWBH,BWZL.YWSM');
      sql.add('order by XTBWYL1.BWBH');
      active:=true;
    end;

    DBGrid3.columns[0].width:=40;
    DBGrid3.columns[1].width:=140;
    for i:=2 to XTBWYL1.FieldCount-1 do
    begin
      DBGrid3.columns[i].width:=50;
    end;
    for i:=2 to XTBWYL1.FieldCount-1 do
    begin
      TFLOATField(XTBWYL1.Fields[i]).DisplayFormat:='#,##0.0000';
    end;

    //電腦用量
    XXCC.First;
    with  XTBWYL do
    begin
      active:=false;
      sql.clear;
      sql.add('select XTBWYL.BWBH,BWZL.YWSM');
      while not XXCC.eof do
        begin
          sql.add(',max(case when XTBWYL.XTCC='+''''+XXCC.fieldbyname('XTCC').asstring+'''');
          sql.add(' then XTBWYL.CLSL end ) as '+''''+XXCC.fieldbyname('XTCC').asstring+'''');
          XXCC.Next;
        end;
      sql.add('from XTBWYL ');
      sql.add('left join BWZL on BWZL.BWDH=XTBWYL.BWBH  ');
      sql.add('where XTBWYL.XieXing=:XieXing and XTBWYL.SheHao=:SheHao');
      sql.add('group by XTBWYL.BWBH,BWBH,BWZL.YWSM');
      sql.add('order by XTBWYL.BWBH');
      active:=true;
    end;

    DBGrid4.columns[0].width:=40;
    DBGrid4.columns[1].width:=140;
    for i:=2 to XTBWYL.FieldCount-1 do
    begin
      DBGrid4.columns[i].width:=50;
    end;
    for i:=2 to XTBWYL.FieldCount-1 do
    begin
      TFLOATField(XTBWYL.Fields[i]).DisplayFormat:='#,##0.0000';
    end;
  end;    //  end of if XXCC.RecordCount <> 0
  
end;


procedure TCostingBOM.ExcelClick(Sender: TObject);
var
  eclApp,WorkBook:olevariant;
  i,j:integer;
begin
  if XTBWYL1.active  then
    begin
    try
      eclApp:=CreateOleObject('Excel.Application');
      WorkBook:=CreateOleObject('Excel.Sheet');
    except
      Application.MessageBox('NO Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
      Exit;
    end;
    try
        WorkBook:=eclApp.workbooks.Add;
        for   i:=0   to   XTBWYL1.fieldCount-1   do
          begin
              eclApp.Cells(1,i+1):=XTBWYL1.fields[i].FieldName;
          end;

        XTBWYL1.First;
        j:=2;
        while   not   XTBWYL1.Eof   do
          begin
            for   i:=0   to   XTBWYL1.FieldCount-1   do
            begin
              eclApp.Cells(j,i+1):=XTBWYL1.Fields[i].Value;
              eclApp.Cells.Cells.item[j,i+1].font.size:='8';
            end;
          XTBWYL1.Next;
          inc(j);
          end;
     eclapp.columns.autofit;
      eclApp.Visible:=True;
      except
        on   F:Exception   do
          showmessage(F.Message);
      end;
    end;
end;

procedure TCostingBOM.Excel2Click(Sender: TObject);
var
      eclApp,WorkBook:olevariant;
      i,j:integer;
 begin

  if XTBWYL.active  then
    begin
    try
      eclApp:=CreateOleObject('Excel.Application');
      WorkBook:=CreateOleObject('Excel.Sheet');
    except
      Application.MessageBox('NO Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
      Exit;
    end;
    try
        WorkBook:=eclApp.workbooks.Add;
        for   i:=0   to   XTBWYL.fieldCount-1   do
          begin
              eclApp.Cells(1,i+1):=XTBWYL.fields[i].FieldName;
          end;

        XTBWYL.First;
        j:=2;
        while   not   XTBWYL.Eof   do
          begin
            for   i:=0   to   XTBWYL.FieldCount-1   do
            begin
              eclApp.Cells(j,i+1):=XTBWYL.Fields[i].Value;    
              eclApp.Cells.Cells.item[j,i+1].font.size:='8';
            end;
          XTBWYL.Next;
          inc(j);
          end;
     eclapp.columns.autofit;
      eclApp.Visible:=True;
      except
        on   F:Exception   do
          showmessage(F.Message);
      end;
    end;

end;

procedure TCostingBOM.bbt6Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin
  if PC1.ActivePageIndex=0 then
  begin
   IsExport:=true;
   XXZLS.Active:=false;
   XTBWYL.Active:=false;
   XTBWYL1.Active:=false;
   if XXZL.active  then
    begin
    try
      eclApp:=CreateOleObject('Excel.Application');
      WorkBook:=CreateOleObject('Excel.Sheet');
    except
      Application.MessageBox('NO Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
      Exit;
    end;
    try
        WorkBook:=eclApp.workbooks.Add;
        for   i:=0   to   XXZL.fieldCount-1   do
        begin
          eclApp.Cells(1,i+1):=XXZL.fields[i].FieldName;
        end;

        XXZL.First;
        j:=2;
        while   not   XXZL.Eof   do
        begin
          for   i:=0   to   XXZL.FieldCount-1   do
          begin
            eclApp.Cells(j,i+1):=XXZL.Fields[i].Value;
            eclApp.Cells.Cells.item[j,i+1].font.size:='8';
          end;
          XXZL.Next;
          inc(j);
        end;

      eclapp.columns.autofit;
      eclApp.Visible:=True;
      except
        on   F:Exception   do
          showmessage(F.Message);
      end;
      IsExport:=false;
      XXZLS.Active:=true;
      XTBWYL.Active:=true;
      XTBWYL1.Active:=true;
    end;
  end;
  //
  if PC1.ActivePageIndex=1 then
  begin
    if  Messagedlg(Pchar('Export XLS Plan Format?'),mtInformation,[mbNo,mbYes],0)=mrYes then
    begin
      ExportPlanFormatData();
    end else
    begin
      if XXZLS.active  then
      begin
          try
            eclApp:=CreateOleObject('Excel.Application');
            WorkBook:=CreateOleObject('Excel.Sheet');
          except
            Application.MessageBox('NO Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
            Exit;
          end;
          try
            WorkBook:=eclApp.workbooks.Add;
            for   i:=0   to   XXZLS.fieldCount-1   do
            begin
              eclApp.Cells(1,i+1):=XXZLS.fields[i].FieldName;
            end;
            XXZLS.First;
            j:=2;
            while   not   XXZLS.Eof   do
            begin
                for   i:=0   to   XXZLS.FieldCount-1   do
                begin
                  eclApp.Cells(j,i+1):=XXZLS.Fields[i].Value;
                  eclApp.Cells.Cells.item[j,i+1].font.size:='8';
                end;
                XXZLS.Next;
                inc(j);
            end;

            eclapp.columns.autofit;
            eclApp.Visible:=True;
          except
            on   F:Exception   do
              showmessage(F.Message);
          end;
      end;
    end;
  end;

end;
//
procedure TCostingBOM.ExportPlanFormatData();
var eclApp,WorkBook:olevariant;
    i,j,offset,Count:integer;
    AppDir,SumStr, PicImage:string;
    DFL_Pos:array of integer;
    workRange : OleVariant;
    picture : OleVariant;
    workSheet : OleVariant;
begin

  AppDir:=ExtractFilePath(Application.ExeName);
  if(not DirectoryExists(AppDir+'Additional\'))  then ForceDirectories(AppDir+'Additional\');
    CopyFile(Pchar('\\'+main.ServerIP+'\liy_erp\Additional\Manage_SN19.xlsx'),Pchar(AppDir+'Additional\Manage_SN19.xlsx'),false);
  if FileExists(AppDir+'Additional\Manage_SN19.xlsx') then
  begin
    if  XXZLS.active  then
    begin
      try
          eclApp:=CreateOleObject('Excel.Application');
          WorkBook:=CreateOleObject('Excel.Sheet');
      except
          Application.MessageBox('NO Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
          Exit;
      end;
        //
      try
        eclApp.WorkBooks.Open(AppDir+'Additional\Manage_SN19.xlsx');
        eclApp.WorkSheets[1].Activate;//第一頁為主
        //
        with TempQry do
        begin
          Active:=false;
          SQL.Clear;
          SQL.Add('select FLBH,XFL,Count(BWBH) as Count  from (');
          SQL.Add('Select XXZLS.BWBH,XXBWFL_K.FLBH,XXBWFLS_K.XFL from XXZLS');
          SQL.Add('left join  XXBWFL_K on XXZLS.XieXing=XXBWFL_K.XieXing and XXZLS.SheHao=XXBWFL_K.SheHao and XXZLS.BWBH=XXBWFL_K.BWBH');
          SQL.Add('left join  XXBWFLS_K on XXBWFL_K.FLBH=XXBWFLS_K.FLBH');
          sql.Add('LEFT JOIN XTBWYL1 ON XXZLS.XIEXING=XTBWYL1.XIEXING AND XXZLS.SHEHAO=XTBWYL1.SHEHAO AND XXZLS.BWBH=XTBWYL1.BWBH --AND XTBWYL1.XTCC='''+SizeEdit.Text+'''');
          if SizeEdit.Text<>'0' then
          begin
             sql.Add(' AND XTBWYL1.XTCC='''+SizeEdit.Text+'''');
          end else
          begin
            sql.Add(' AND XTBWYL1.XTCC='''+XXZL.fieldbyname('BZCC').AsString+'''');
          end;
          SQL.Add('where XXZLS.XieXing='''+XXZL.FieldByName('XieXing').AsString+''' and XXZLS.SheHao='''+XXZL.FieldByName('SheHao').AsString+''' and left(XXZLS.clbh,1)<>''M'' ');
          sql.Add('and XTBWYL1.CLSL is not NULL and XXZLS.BWLB=1 ');
          SQL.Add('union all');
          SQL.Add('select XXZLSVN.BWBH,XXBWFL_K.FLBH,XXBWFLS_K.XFL ');
          SQL.Add('from XXZLSVN');
          SQL.Add('left join  XXBWFL_K on XXZLSVN.XieXing=XXBWFL_K.XieXing and XXZLSVN.SheHao=XXBWFL_K.SheHao and XXZLSVN.BWBH=XXBWFL_K.BWBH');
          SQL.Add('left join  XXBWFLS_K on XXBWFL_K.FLBH=XXBWFLS_K.FLBH');
          SQL.Add('where  XXZLSVN.XieXing='''+XXZL.FieldByName('XieXing').AsString+''' and  XXZLSVN.SheHao='''+XXZL.FieldByName('SheHao').AsString+''' ) XXZLS ');
          SQL.Add('group by FLBH,XFL ');
          SQL.Add('ORDER BY FLBH');
          Active:=true;
        end;
        //DFL
        for i:=0 to TempQry.RecordCount-1 do
        begin
          eclApp.ActiveSheet.Range['A10','R11'].Copy;
          eclApp.ActiveSheet.Rows[10].Insert(-4121);
        end;
        //BWBH
        offset:=10;
        for i:=0 to TempQry.RecordCount-1 do
        begin
           for j:=1 to  TempQry.FieldByName('Count').AsInteger-1 do
           begin
            eclApp.ActiveSheet.Rows[offset].Copy;
            eclApp.ActiveSheet.Rows[offset].Insert(-4121);
            offset:=offset+1;
           end;
           offset:=offset+2;
           TempQry.Next;
        end;
        eclApp.ActiveSheet.Rows[offset].Delete;
        eclApp.ActiveSheet.Rows[offset].Delete;
        //MERGE DFL
        offset:=10;
        TempQry.First;
        setlength(DFL_Pos,TempQry.RecordCount);
        for i:=0 to TempQry.RecordCount-1 do
        begin
          DFL_Pos[i]:=offset+TempQry.FieldByName('Count').AsInteger;
          //合併儲存格
          eclApp.Range['A'+inttostr(offset),'A'+inttostr(DFL_Pos[i])].Merge;
          //小計
          eclApp.Cells(Offset+TempQry.FieldByName('Count').AsInteger,13):='=SUM(M'+inttostr(offset)+':M'+inttostr(DFL_Pos[i]-1)+')';
          eclApp.Cells(Offset+TempQry.FieldByName('Count').AsInteger,14):='=SUM(N'+inttostr(offset)+':N'+inttostr(DFL_Pos[i]-1)+')';
          eclApp.Cells(Offset+TempQry.FieldByName('Count').AsInteger,15):='=SUM(O'+inttostr(offset)+':O'+inttostr(DFL_Pos[i]-1)+')';
          eclApp.Cells(Offset+TempQry.FieldByName('Count').AsInteger,16):='=SUM(P'+inttostr(offset)+':P'+inttostr(DFL_Pos[i]-1)+')';
          offset:=offset+TempQry.FieldByName('Count').AsInteger+1;
          TempQry.Next;
          //合計
          if i=TempQry.RecordCount-1 then
          begin
            for j:=0 to High(DFL_Pos) do
            begin
               SumStr:=SumStr+'?'+inttostr(DFL_Pos[j])+',';
            end;
            SumStr:=Copy(SumStr,1,length(SumStr)-1);
            eclApp.Cells(offset,13):='=SUM('+StringReplace(SumStr, '?', 'M',[rfReplaceAll, rfIgnoreCase])+')';
            eclApp.Cells(offset,14):='=SUM('+StringReplace(SumStr, '?', 'N',[rfReplaceAll, rfIgnoreCase])+')';
            eclApp.Cells(offset,15):='=SUM('+StringReplace(SumStr, '?', 'O',[rfReplaceAll, rfIgnoreCase])+')';
            eclApp.Cells(offset,16):='=SUM('+StringReplace(SumStr, '?', 'P',[rfReplaceAll, rfIgnoreCase])+')';
          end;
        end;
        setlength(DFL_Pos,0);

        //Fill Data
        Count:=0;
        offset:=10;
        XXZLS.First;
        TempQry.First;
        for i:=0 to XXZLS.RecordCount-1 do
        begin
          //
          eclApp.Cells(Offset,1):=XXZLS.FieldByName('XFL').AsString;
          eclApp.Cells(Offset,2):=XXZLS.FieldByName('BWBH').AsString;
          eclApp.Cells(Offset,3):=XXZLS.FieldByName('BWMC').AsString;
          eclApp.Cells(Offset,4):=XXZLS.FieldByName('CLBH').AsString;
          eclApp.Cells(Offset,5):=XXZLS.FieldByName('CLMC').AsString;
          eclApp.Cells(Offset,6):=XXZLS.FieldByName('BWZW').AsString;
          eclApp.Cells(Offset,7):=XXZLS.FieldByName('CLMC').AsString;
          eclApp.Cells(Offset,8):=XXZLS.FieldByName('CLSL').AsString;
          eclApp.Cells(Offset,9):=XXZLS.FieldByName('DWBH').AsString;
          eclApp.Cells(Offset,10):=XXZLS.FieldByName('VN_Mat').AsString;
          eclApp.Cells(Offset,11):=XXZLS.FieldByName('TW_Mat').AsString;
          eclApp.Cells(Offset,12):=XXZLS.FieldByName('GC_Mat').AsString;
          Offset:=Offset+1;
          Count:=Count+1;
          //Next DFL
          if Count>=TempQry.FieldByName('Count').AsInteger then
          begin
            //小計
            Count:=0;
            Offset:=Offset+1;
            TempQry.Next;
          end;
          //
          XXZLS.Next;
        end;
        //鞋型圖片
        PicImage:=StringReplace(XXZL.FieldByName('IMGName').Asstring,'H:',ShoePicPath, [rfReplaceAll, rfIgnoreCase]);
        if FileExists(PicImage)=true then
        begin
          workSheet := eclApp.WorkSheets[1];
          workRange :=eclApp.Range['P5','R7']; //目?位置
          picture := workSheet.pictures.Insert(PicImage);
          picture.left := workRange.left + 1; //左
          picture.top := workRange.top + 1; //高
          picture.width := workRange.width - 2; //?度
          picture.height := workRange.height - 2; //高度
          picture := Unassigned;
        end;
        //抬頭資訊
        with TempQry do
        begin
          Active:=false;
          SQL.Clear();
          SQL.Add('select Article,XieMing,YSSM,DAOMH from XXZL ');
          SQL.Add('where XXZL.XieXing='''+XXZL.FieldByName('XieXing').AsString+''' and  XXZL.SheHao='''+XXZL.FieldByName('SheHao').AsString+''' ');
          Active:=true;
          //
          eclApp.Cells(6,2):=TempQry.FieldByName('DAOMH').AsString;
          eclApp.Cells(7,2):=TempQry.FieldByName('XieMing').AsString;
          eclApp.Cells(6,4):='SKU:'+TempQry.FieldByName('Article').AsString;
          eclApp.Cells(7,4):='COLOR:'+TempQry.FieldByName('YSSM').AsString;
          if SizeEdit.Text<>'0' then
          begin
            eclApp.Cells(6,10):='SIZE:'+SizeEdit.Text;
          end else
          begin
            eclApp.Cells(6,10):='SIZE:'+XXZL.fieldbyname('BZCC').AsString;
          end;

          eclApp.Cells(6,14):='1:'+ExchangLabel.Caption;
          //
          Active:=false;
        end;
        //
        showmessage('Succeed');

        eclApp.Visible:=True;
      except
          on F:Exception do
            showmessage(F.Message);
      end;
    end;

  end;
  //

end;

procedure TCostingBOM.FormCreate(Sender: TObject);
begin
  //抬頭資訊
  with TempQry do
  begin
    Active:=false;
    SQL.Clear();
    SQL.Add('select top 1 CWHL  from CWHLS order by HLYEAR desc ,HLMONTH desc,HLDAY desc');
    Active:=true;
    ExchangLabel.Caption:=FieldByName('CWHL').AsString;
    Active:=false;
  end;
  PC1.ActivePage:=TS1;
  InitTitleClick(false);
  ReadIni();
end;

procedure TCostingBOM.FormDestroy(Sender: TObject);
begin
  if ShowShoePic<>nil then ShowShoePic.Free;
  CostingBOM:=nil;

end;

procedure TCostingBOM.DBGrid1GetCellParams(Sender: TObject; Column: TColumnEh;
  AFont: TFont; var Background: TColor; State: TGridDrawState);
begin
if XXZl.FieldByName('SS').IsNull or XXZl.FieldByName('XX').IsNull then
  begin
    dbgrid1.canvas.font.color:=clred;
   // dbgrid1.defaultdrawcolumncell(rect,datacol,column,state);
  end;
end;
//顯示圖片
procedure TCostingBOM.XXZLAfterScroll(DataSet: TDataSet);
var ShoePic:string;
begin
  //
  if IsExport=false then
  begin
    shoePic:=StringReplace(XXZL.FieldByName('IMGName').Asstring,'H:',ShoePicPath, [rfReplaceAll, rfIgnoreCase]);
    if FileExists(shoePic)=true then
    begin
       ShoeImage.Picture.LoadFromFile(shoePic);
       if ShowShoePic=nil then ShowShoePic:=TShowShoePic.Create(self);
       ShowShoePic.ShoeImage.Picture.LoadFromFile(shoePic);
    end else
    begin
       ShoeImage.Picture.Bitmap:=nil;
       if ShowShoePic<>nil then
         ShowShoePic.ShoeImage.Picture.Bitmap:=nil;
    end;
   end;
end;

procedure TCostingBOM.DetectMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
var MouseP:TPoint;
begin

    if ShowShoePic<>nil then
    begin
      if ShoeImage.Picture.Graphic<>nil then
      begin
        GetCursorPos(MouseP);
        if  ( (MouseP.X>=(ShoeImage.Left+main.Left))  and (MouseP.Y>=(ShoeImage.Top+main.Top+50))
            and (MouseP.X<=(ShoeImage.Left+main.Left+ShoeImage.Width)) and (MouseP.Y<=(ShoeImage.Top+main.Top+50+ShoeImage.Height)) ) then
        begin
           ShowShoePic.Left:=ShoeImage.Left+main.Left+ShoeImage.Width;
           ShowShoePic.Top:=ShoeImage.Top+main.Top+50+ShoeImage.Height;
           ShowShoePic.Show;
        end else
        begin
           ShowShoePic.Hide;
        end;
      end;
    end;

end;
procedure TCostingBOM.FormShow(Sender: TObject);
begin
  ShoeImage.OnMouseMove:=DetectMouseMove;
  Panel1.OnMouseMove:=DetectMouseMove;
  Panel2.OnMouseMove:=DetectMouseMove;
  Panel3.OnMouseMove:=DetectMouseMove;
  Panel4.OnMouseMove:=DetectMouseMove;
  Panel5.OnMouseMove:=DetectMouseMove;
end;

procedure TCostingBOM.Saveas1Click(Sender: TObject);
begin
  if SaveDialog.Execute()=true then
  begin
    ShoeImage.Picture.SaveToFile(SaveDialog.FileName);
  end;
end;

procedure TCostingBOM.XXZLSCalcFields(DataSet: TDataSet);
var TotalPri:double;
    IsTotalPri:boolean;
begin
    with XXZLS do
    begin
      IsTotalPri:=false;
      TotalPri:=0;
      if ((fieldbyname('CLSL').IsNull=false) and (fieldbyname('VN_Mat').IsNull=false)) then
        fieldbyname('VN_Mat_P').Value:=RoundTo(fieldbyname('CLSL').AsFloat*fieldbyname('VN_Mat').AsFloat,-3);
      if ((fieldbyname('CLSL').IsNull=false) and (fieldbyname('TW_Mat').IsNull=false)) then
        fieldbyname('TW_Mat_P').Value:=RoundTo(fieldbyname('CLSL').AsFloat*fieldbyname('TW_Mat').AsFloat,-3);
      if ((fieldbyname('CLSL').IsNull=false) and (fieldbyname('GC_Mat').IsNull=false)) then
        fieldbyname('GC_Mat_P').Value:=RoundTo(fieldbyname('CLSL').AsFloat*fieldbyname('GC_Mat').AsFloat,-3);
      //
      if fieldbyname('VN_Mat_P').IsNull=false then
      begin
        IsTotalPri:=true;
        TotalPri:=fieldbyname('VN_Mat_P').AsFloat;
      end;
      if fieldbyname('TW_Mat_P').IsNull=false then
      begin
        IsTotalPri:=true;
        TotalPri:=TotalPri+fieldbyname('TW_Mat_P').AsFloat;
      end;
      if fieldbyname('GC_Mat_P').IsNull=false then
      begin
        IsTotalPri:=true;
        TotalPri:=TotalPri+fieldbyname('GC_Mat_P').AsFloat;
      end;
      if IsTotalPri=true then
        fieldbyname('Total_P').Value:=TotalPri;
    end;
end;

procedure TCostingBOM.DBGrid2EditButtonClick(Sender: TObject);
begin
  //
  with DBGrid2 do
  begin
    if Selectedfield.fieldname='FLBH' then
    begin
      CostingBOMFL:=TCostingBOMFL.create(self);
      CostingBOMFL.SetSingleOrMuit(true);
      CostingBOMFL.show;
    end;
    if ((Selectedfield.fieldname='VN_Mat') or (Selectedfield.fieldname='TW_Mat') or (Selectedfield.fieldname='GC_Mat')) then
    begin
      //
      CostBOM_MatPrice:=TCostBOM_MatPrice.create(self);
      CostBOM_MatPrice.show;
      //
    end;
  end;
  //
end;

procedure TCostingBOM.N5Click(Sender: TObject);
begin

  CostingBOMFL:=TCostingBOMFL.create(self);
  CostingBOMFL.SetSingleOrMuit(false);
  CostingBOMFL.show;

end;

procedure TCostingBOM.BB4Click(Sender: TObject);
begin
  BB5.Enabled:=true;
  BB6.Enabled:=true;
  XXZLS.RequestLive:=true;
  XXZLS.CachedUpdates:=true;
  DBGrid2.Columns[0].ButtonStyle:=cbsEllipsis;
  DBGrid2.Columns[0].Color:=clyellow;
  N5.Enabled:=true;
end;

procedure TCostingBOM.BB5Click(Sender: TObject);
var i:integer;
begin

  with XXZLS do
  begin
    first;
    while not eof do
    begin
        if updatestatus=usmodified then
        begin
          if fieldbyname('YN').IsNull then
          begin
            edit;
            fieldbyname('USERDATE').Value:=date;
            fieldbyname('USERID').Value:=main.Edit1.text;
            fieldbyname('YN').Value:='1';
            UpdateSQL1.Apply(ukinsert);
          end else
          begin
            edit;
            fieldbyname('USERDATE').Value:=date;
            fieldbyname('USERID').Value:=main.Edit1.text;
            fieldbyname('YN').Value:='1';
            UpdateSQL1.Apply(ukmodify);
          end;
        end;
        Next;
    end;
    XXZLS.Active:=false;
    XXZLS.requestlive:=false;
    XXZLS.cachedupdates:=false;
    DBGrid2.Columns[0].ButtonStyle:=cbsNone;
    DBGrid2.Columns[0].Color:=clWindow;
    XXZLS.Active:=true;
    BB5.Enabled:=false;
    BB6.Enabled:=false;
    N5.Enabled:=false;
  end;

end;

procedure TCostingBOM.BB6Click(Sender: TObject);
begin
  XXZLS.Active:=false;
  XXZLS.requestlive:=false;
  XXZLS.cachedupdates:=false;
  XXZLS.Active:=true;
  DBGrid2.Columns[0].Color:=clWindow;
  DBGrid2.Columns[0].ButtonStyle:=cbsNone;
  BB5.Enabled:=false;
  BB6.Enabled:=false;
  N5.Enabled:=false;
end;

procedure TCostingBOM.PC1Changing(Sender: TObject;
  var AllowChange: Boolean);
begin
  if BB5.Enabled then
  begin
    allowchange:=false;
    Showmessage('Please Save or Cancel');
  end;
end;

procedure TCostingBOM.PC1Change(Sender: TObject);
begin
  if PC1.ActivePage=TS2 then
  begin
    if XXZLS.Active=true then BB4.Enabled:=true;
  end else
  begin
    BB4.Enabled:=false;
  end;
end;

procedure TCostingBOM.SpeedButton1Click(Sender: TObject);
begin
  if XXZLS.Active=true then
  begin
    CostBOM_NoPrice:=TCostBOM_NoPrice.create(self);
    CostBOM_NoPrice.show;
  end;
end;

end.
