unit BOMInformation1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GridsEh, DBGridEh, ComCtrls, StdCtrls, Buttons, ExtCtrls, DB,
  DBTables, Comobj, ShellApi, Menus,fununit,DBGridEhImpExp,IniFiles;

type
  TBOMInformation = class(TForm)
    Panel2: TPanel;
    n: TButton;
    DataSource1: TDataSource;
    Query1: TQuery;
    DBGrid1: TDBGridEh;
    Query1DEVCODE: TStringField;
    Query1JiJie: TStringField;
    Query1bwdh: TStringField;
    Query1ywsm: TStringField;
    Query1zwsm: TStringField;
    Query1DAOMH: TStringField;
    Query1DDMH: TStringField;
    Query1XTMH: TStringField;
    Query1XieXing: TStringField;
    Query1SheHao: TStringField;
    Query1ARTICLE: TStringField;
    Query1XieMing: TStringField;
    Query1CLBH: TStringField;
    Query1dwbh: TStringField;
    Query1ywpm: TStringField;
    Query1zwpm: TStringField;
    Query1USERDATE: TDateTimeField;
    Query1CSBH: TStringField;
    Query1zsjc: TStringField;
    Button2: TButton;
    Splitter1: TSplitter;
    GroupBox1: TGroupBox;
    Label14: TLabel;
    PartNoEdit: TEdit;
    ZWSMEdit1: TEdit;
    Label10: TLabel;
    ZWSMEdit2: TEdit;
    YWSMEdit1: TEdit;
    Label11: TLabel;
    YWSMEdit2: TEdit;
    SpeedButton9: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton8: TSpeedButton;
    SpeedButton10: TSpeedButton;
    GroupBox2: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    Label12: TLabel;
    YWPMEdit1: TEdit;
    YWPMEdit2: TEdit;
    ZWPMEdit1: TEdit;
    ZWPMEdit: TEdit;
    MatNoEdit: TEdit;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton5: TSpeedButton;
    GroupBox3: TGroupBox;
    Label4: TLabel;
    SKUEdit: TEdit;
    SpeedButton11: TSpeedButton;
    Label3: TLabel;
    SupEdit: TEdit;
    ZSJC: TLabel;
    ZSJCEdit1: TEdit;
    XTMH: TLabel;
    XTMHEdit1: TEdit;
    clbh: TLabel;
    BuyNoEdit: TEdit;
    Label2: TLabel;
    DDMHEdit1: TEdit;
    Label1: TLabel;
    DAOMHEdit1: TEdit;
    XieMing: TLabel;
    XieMingEdit: TEdit;
    SpeedButton12: TSpeedButton;
    Label9: TLabel;
    JIJIEEdit1: TEdit;
    dtpStart: TDateTimePicker;
    Label8: TLabel;
    DateTimePicker1: TDateTimePicker;
    CB5: TCheckBox;
    CB6: TCheckBox;
    DateTimePicker4: TDateTimePicker;
    Label13: TLabel;
    DateTimePicker5: TDateTimePicker;
    CheckBox2: TCheckBox;
    DateTimePicker2: TDateTimePicker;
    Label7: TLabel;
    DateTimePicker3: TDateTimePicker;
    CheckBox1: TCheckBox;
    Query1clzmlb: TStringField;
    CB3: TCheckBox;
    SaveDialog1: TSaveDialog;
    Label15: TLabel;
    SREdit: TEdit;
    SpeedButton13: TSpeedButton;
    Query1bwlb: TStringField;
    Query1fd: TStringField;
    BrdCombo: TComboBox;
    Label16: TLabel;
    CCQQEdit: TEdit;
    CCQZEdit: TEdit;
    Label17: TLabel;
    Query1Dropped_KF: TBooleanField;
    Query1Dropped_PD: TBooleanField;
    CB4: TCheckBox;
    CB7: TCheckBox;
    Qtemp: TQuery;
    MatColumnShowCK: TCheckBox;
    Query1CLSL: TFloatField;
    Query1CCQQ: TStringField;
    Query1CCQZ: TStringField;
    Query1LOSS: TFloatField;
    Query1Engname: TStringField;
    Query1KFCQ: TStringField;
    cbLB: TComboBox;
    Label18: TLabel;
    Label19: TLabel;
    cbFactory: TComboBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure nClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButtonClick(Sender: TObject);
  private
   MatNoFilterIndex:byte;
    { Private declarations }
    procedure GetSubSQL(var SQL:string;BtnObj:TSpeedButton;EditObj:TEdit;FieldNM:string;Flag:string);
    procedure ExportExcel();
  public
    BOM_N31_KFCQ:String;
    procedure ReadIni();
    { Public declarations }
  end;
const
  MatNoFilter:array [0..3] of string= ('like','not like','=','<>');
var
  BOMInformation: TBOMInformation;
implementation
  uses main1, BOMM1;
{$R *.dfm}

procedure TBOMInformation.ReadIni();
var MyIni :Tinifile;
    AppDir:string;
begin
  AppDir:=ExtractFilePath(Application.ExeName);
  if FileExists(AppDir+'\ComName.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ComName.ini');
      BOM_N31_KFCQ:=MyIni.ReadString('ERP','BOM_N31_KFCQ','');
    finally
      MyIni.Free;
    end;
  end;
end;
//SpeedButtonClick
procedure TBOMInformation.SpeedButtonClick(Sender: TObject);
var i:integer;
    SpeedButton:TSpeedButton;
begin
   SpeedButton:=TSpeedButton(Sender);
   for i:=0 to High(MatNoFilter) do
   begin
     if MatNoFilter[i]=SpeedButton.Caption then
     begin
       if i<High(MatNoFilter) then
         SpeedButton.Caption:=MatNoFilter[i+1]
       else
         SpeedButton.Caption:=MatNoFilter[0];
       break;
     end;
   end;
end;
//
procedure TBOMInformation.GetSubSQL(var SQL:string;BtnObj:TSpeedButton;EditObj:TEdit;FieldNM:string;Flag:string);
var tmpList,tmpList1:TStringlist;
    i:integer;
begin
  SQL:='';
  if trim(EditObj.Text)<>'' then
  begin
    if  (Pos('|', EditObj.Text)>0)  then
    begin
      tmpList:=funcObj.SplitString(trim(EditObj.Text),'|');
      for i:=0 to tmpList.Count-1 do
      begin
       if ((BtnObj.Caption='=') or  (BtnObj.Caption='<>'))then
          SQL:=SQL+'(:'+FieldNM+' '+BtnObj.Caption+' '''+Flag+tmpList.Strings[i]+'%'') and '
       else
          SQL:=SQL+'(:'+FieldNM+' '+BtnObj.Caption+' '''+Flag+tmpList.Strings[i]+'%'') and ';
      end;
      SQL:='and ('+Copy(SQL,1,length(SQL)-4)+')';
      tmpList.Free;
    end else
    begin
    if Pos('*', EditObj.Text)>0 then
      begin
        tmpList:=funcObj.SplitString(trim(EditObj.Text),'*');
        for i:=0 to tmpList.Count-1 do
        begin
          if ((BtnObj.Caption='=') or  (BtnObj.Caption='<>'))then
             SQL:=SQL+'(:'+FieldNM+' '+BtnObj.Caption+' '''+tmpList.Strings[i]+''') or '
          else
             SQL:=SQL+'(:'+FieldNM+' '+BtnObj.Caption+' '''+Flag+tmpList.Strings[i]+'%'') or ';
        end;
        SQL:='and ('+Copy(SQL,1,length(SQL)-4)+')';
        tmpList.Free;
      end else
      begin
        tmpList:=funcObj.SplitString(trim(EditObj.Text),'*');
        for i:=0 to tmpList.Count-1 do
        begin
          if ((BtnObj.Caption='=') or  (BtnObj.Caption='<>'))then
             SQL:=SQL+'(:'+FieldNM+' '+BtnObj.Caption+' '''+tmpList.Strings[i]+''') or '
          else
             SQL:=SQL+'(:'+FieldNM+' '+BtnObj.Caption+' '''+Flag+tmpList.Strings[i]+'%'') or ';
        end;
        SQL:='and ('+Copy(SQL,1,length(SQL)-4)+')';
        tmpList.Free;
      end;
    end;
  end;
end;
//
procedure TBOMInformation.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 action:=cafree;
end;

procedure TBOMInformation.FormDestroy(Sender: TObject);
begin
   BOMInformation:= Nil;
end;

procedure TBOMInformation.nClick(Sender: TObject);
var ZWPM,ZWPM1:string;
    i:integer;
    XieMg:string;
    InputIsOk:boolean;
    MatNoSQL,PartNoSQL,XieMSQL,ArtSQL,SRSQL,ZWPMSQL,ZWPM1SQL,YWPMSQL,YWPM1SQL,ZWSMSQL,ZWSM1SQL,YWSMSQL,YWSM1SQL:string;
    IsShowMatColumn:boolean;
begin
 if (((MatNoEdit.Text  = '') and (ZWPMEdit.Text  = '') and (ZWPMEdit1.Text  = '') and (YWPMEdit1.Text  = '') and (YWPMEdit2.Text  = '')) and ((SupEdit.Text  <> '') and (ZSJCEdit1.Text  <> '')) ) then
 begin
   showmessage('Please key MatNo and Material Name first');
   abort;
 end;
 if ((MatNoEdit.Text  = '')and(ZWPMEdit.Text  = '')and (ZWPMEdit1.Text  = '') and  (YWPMEdit1.Text  = '')and (YWPMEdit2.Text  = '')and (ZWSMEdit1.Text  = '')and (ZWSMEdit2.Text  = '') and (YWSMEdit1.Text  = '')and (YWSMEdit2.Text  = '') and (PartNoEdit.Text  = '') and (ZSJCEdit1.Text  = '')) then
 begin
   IsShowMatColumn:=false;
 end else
 begin
   IsShowMatColumn:=true;
 end;
 if MatColumnShowCK.Checked=true then
 begin
   if ((MatNoEdit.Text  = '')and(ZWPMEdit.Text  = '')and (ZWPMEdit1.Text  = '') and  (YWPMEdit1.Text  = '')and (YWPMEdit2.Text  = '')and (ZWSMEdit1.Text  = '')and (ZWSMEdit2.Text  = '') and (YWSMEdit1.Text  = '')and (YWSMEdit2.Text  = '') and (PartNoEdit.Text  = '') and (ZSJCEdit1.Text  = '')) then
     CB5.Checked:=true;
   IsShowMatColumn:=true;
 end;
  // XXZL.Article
  GetSubSQL(ArtSQL,SpeedButton11,SKUEdit,'Article','');
  //KFXXZL.Article
  GetSubSQL(SRSQL,SpeedButton13,SREdit,'DEVCODE','%');
  // XXZL.XieMing
  GetSubSQL(XieMSQL,SpeedButton12,XieMingEdit,'XieMing','%');
  // CLZL.CLBH
  GetSubSQL(MatNoSQL,SpeedButton1,MatNoEdit,'CLBH','');
  // CLZL.ZWPM
  GetSubSQL(ZWPMSQL,SpeedButton2,ZWPMEdit,'ZWPM','%');
  GetSubSQL(ZWPM1SQL,SpeedButton4,ZWPMEdit1,'ZWPM','%');
  // CLZL.YWPM
  GetSubSQL(YWPMSQL,SpeedButton3,YWPMEdit1,'YWPM','%');
  GetSubSQL(YWPM1SQL,SpeedButton5,YWPMEdit2,'YWPM','%');
  // PartNo
  GetSubSQL(PartNoSQL,SpeedButton10,PartNoEdit,'bwdh','');
  // BWZL.ZWSM
  GetSubSQL(ZWSMSQL,SpeedButton6,ZWSMEdit1,'ZWSM','%');
  GetSubSQL(ZWSM1SQL,SpeedButton8,ZWSMEdit2,'ZWSM','%');
  // BWZL.YWSM
  GetSubSQL(YWSMSQL,SpeedButton7,YWSMEdit1,'YWSM','%');
  GetSubSQL(YWSM1SQL,SpeedButton9,YWSMEdit2,'YWSM','%');

  with  Query1 do
  begin
    active:= false;
    SQL.Clear;
    if IsShowMatColumn=false then
    begin
      SQL.Add('select distinct kfxxzl.DEVCODE,kfxxzl.JiJie,'''' AS bwdh,'''' AS ywsm,'''' AS zwsm,xxzl.DAOMH,xxzl.DDMH,xxzl.XTMH,xxzl.XieXing,xxzl.SheHao,xxzl.ARTICLE');
      SQL.Add(',xxzl.XieMing,'''' AS Type,'''' AS BWLB,'''' AS CLBH,'''' AS dwbh,'''' AS ywpm,'''' AS zwpm,Convert(float,null) as CLSL,'''' as CCQQ,'''' as CCQZ,Convert(float,null)  as LOSS,xxzls.USERDATE,'''' AS CSBH,'''' AS zsjc,'''' AS clzmlb ');
      SQL.Add(',(case when ypzl.fd='''' then kfxxzl.fd when ypzl.fd <>'''' then ypzl.fd  else kfxxzl.fd end) as fd,xxzlKF.Dropped as Dropped_KF,xxzlPD.Dropped as  Dropped_PD,BUsers.Engname,xxzl.KFCQ  ');
    end else
    begin
      SQL.Add('select distinct kfxxzl.DEVCODE,kfxxzl.JiJie,bwzl.bwdh,bwzl.ywsm,bwzl.zwsm,xxzl.DAOMH,xxzl.DDMH,xxzl.XTMH,xxzl.XieXing,xxzl.SheHao,xxzl.ARTICLE');
      SQL.Add(',xxzl.XieMing,''Assembly'' as Type ,xxzls.BWLB,xxzls.CLBH,clzl.dwbh,clzl.ywpm,clzl.zwpm,XXZLS.CLSL,XXZLS.CCQQ,XXZLS.CCQZ,XXZLS.LOSS,xxzls.USERDATE,xxzls.CSBH,zszl.zsjc,CLZL.clzmlb ');
      //SQL.Add(',max (case when ypzl.fd = '''' then kfxxzl.fd else ypzl.fd end) as fd  ');
      SQL.Add(',(case when ypzl.fd='''' then kfxxzl.fd when ypzl.fd<>'''' then ypzl.fd  else kfxxzl.fd end) as fd,xxzlKF.Dropped as Dropped_KF,xxzlPD.Dropped as  Dropped_PD,BUsers.Engname,xxzl.KFCQ  ');
    end;
    SQL.Add('from xxzl');
    if IsShowMatColumn=false then
    begin
      sql.Add('left join (select xxzls.XieXing,xxzls.SheHao,Max(xxzls.UserDate) as USerdate');
    end else
    begin
      sql.Add('left join (select xxzls.XieXing,xxzls.SheHao,Max(xxzls.UserDate) as USerdate,xxzls.bwbh,xxzls.bwlb,xxzls.clbh,xxzls.csbh,XXZLS.CLSL,XXZLS.CCQQ,XXZLS.CCQZ,XXZLS.LOSS');
    end;
    sql.Add('from xxzls,xxzl where Xxzls.xiexing=xxzl.xiexing and xxzls.shehao=xxzl.shehao');
    if SKUEdit.Text <>'' then
      SQL.Add('       '+StringReplace(ArtSQL, ':ARTICLE', 'xxzl.ARTICLE',[rfReplaceAll, rfIgnoreCase]));
    if CB6.Checked = true then
    begin
      SQL.Add('     and  right (xxzl.Article,1) <> ''V''  ');
    end;
    if CB5.Checked = true then
    begin
      SQL.Add('and  convert(smalldatetime,convert(varchar,xxzls.USERDATE,111)) between ');
      SQL.Add('      '''+formatdatetime('yyy/MM/dd',dtpStart.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DateTimePicker1.Date)+'''');
    end;
    if BrdCombo.Text<>'' then
    begin
      SQL.Add(' and  xxzl.khdh  in (select KFDH from KFZL where KFJC = '''+BrdCombo.Text+''')');
    end;
    if CCQQEdit.Text<>'' then
    begin
      SQL.Add(' and  xxzls.CCQQ>='''+CCQQEdit.Text+''' ');
    end;
    if CCQZEdit.Text<>'' then
    begin
      SQL.Add(' and  xxzls.CCQZ<='''+CCQZEdit.Text+''' ');
    end;
    if IsShowMatColumn=false then
    begin
      sql.Add('Group by xxzls.XieXing,xxzls.SheHao');
    end else
    begin
      sql.Add('Group by xxzls.XieXing,xxzls.SheHao,xxzls.bwbh,xxzls.bwlb,xxzls.clbh,xxzls.csbh,XXZLS.CLSL,XXZLS.CCQQ,XXZLS.CCQZ,XXZLS.LOSS');
    end;
    SQL.Add(') XXZLs on xxzls.XieXing = xxzl.XieXing and xxzls.SheHao = xxzl.SheHao');
    SQL.Add('left join kfxxzl on kfxxzl.Xiexing = xxzl.XieXing and kfxxzl.SheHao = xxzl.SheHao ');
    SQL.Add('left join xxzlPD on xxzlPD.Xiexing = xxzl.XieXing and xxzlPD.SheHao = xxzl.SheHao ');
    SQL.Add('left join xxzlKF on xxzlKF.Xiexing = xxzl.XieXing and xxzlKF.SheHao = xxzl.SheHao ');
    ///YPZL//
    SQL.Add('left join ypzl on kfxxzl.Xiexing = ypzl.XieXing and kfxxzl.SheHao = ypzl.SheHao and kfxxzl.ARTICLE= ypzl.ARTICLE ');
    SQL.Add('left join BUsers on BUsers.UserID=ypzl.UserID ');
    SQL.Add('left join kfzl on kfzl.kfdh = xxzl.khdh');
    SQL.Add('left join DDZL on DDZL.XieXing = xxzl.XieXing and DDZL.SheHao = xxzl.SheHao ');
    if IsShowMatColumn=true then
    begin
      SQL.Add('left join bwzl on bwzl.bwdh = xxzls.BWBH ');
      SQL.Add('left join clzl on clzl.cldh = xxzls.CLBH');
      SQL.Add('left join zszl on zszl.zsdh = xxzls.CSBH ');
    end;
    SQL.Add('where  1=1');

    {if BOM_N31_KFCQ<>'' then
    SQL.Add(' and XXZL.KFCQ in ('''+BOM_N31_KFCQ+''' )');}

    //27.11.2024
    {if (MatNoEdit.Text <> '') or (ZWPMEdit.Text <> '') or (ZWPMEdit1.Text <> '') or
   (YWPMEdit1.Text <> '') or (YWPMEdit2.Text <> '') or (PartNoEdit.Text <> '') or
   (ZWSMEdit1.Text <> '') or (ZWSMEdit2.Text <> '') or
   (YWSMEdit1.Text <> '') or (YWSMEdit2.Text <> '') then           }
    begin
    if cbFactory.Text = 'JNG' then
      begin
        sql.Add('   and XXZL.KFCQ in (''JNG'')');
      end
    else if cbFactory.Text = 'YQA' then
      begin
        sql.Add('   and XXZL.KFCQ in (''YQA'')');
      end;
    end;
    //========


    if CB4.Checked=false then
      SQL.Add(' and IsNull(xxzlKF.Dropped,0)=0');
    if CB7.Checked=false then
      SQL.Add(' and IsNull(xxzlPD.Dropped,0)=0');
    if SKUEdit.Text <>'' then
      SQL.Add('       '+StringReplace(ArtSQL, ':ARTICLE', 'xxzl.ARTICLE',[rfReplaceAll, rfIgnoreCase]));
    if CB6.Checked = true then
    begin
      SQL.Add('     and  right (xxzl.Article,1) <> ''V''  ');
    end;
    if SREdit.Text <>'' then
      SQL.Add('       '+StringReplace(SRSQL, ':DEVCODE', 'kfxxzl.DEVCODE',[rfReplaceAll, rfIgnoreCase]));
    if CB5.Checked = true then
    begin
      SQL.Add('and  convert(smalldatetime,convert(varchar,xxzls.USERDATE,111)) between ');
      SQL.Add('      '''+formatdatetime('yyy/MM/dd',dtpStart.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DateTimePicker1.Date)+'''');
    end;
    if CheckBox1.Checked = true then
    begin
      SQL.Add('and  convert(smalldatetime,convert(varchar,DDZL.DDRQ,111)) between ');
      SQL.Add('      '''+formatdatetime('yyy/MM/dd',DateTimePicker3.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DateTimePicker2.Date)+'''');
    end;
    if CheckBox2.Checked = true then
    begin
      SQL.Add('and  convert(smalldatetime,convert(varchar,DDZL.Shipdate ,111)) between ');
      SQL.Add('      '''+formatdatetime('yyy/MM/dd',DateTimePicker5.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DateTimePicker4.Date)+'''');
    end;
    if BrdCombo.Text<>'' then
    begin
      SQL.Add(' and  xxzl.khdh  in (select KFDH from KFZL where KFJC = '''+BrdCombo.Text+''')');
    end;
    if BuyNoEdit.Text<>'' then
      SQL.Add('      and  DDZL.BUYNO like '''+BuyNoEdit.Text+'%'' ');
    if MatNoEdit.Text <>'' then
      SQL.Add('       '+StringReplace(MatNoSQL, ':CLBH', 'xxzls.CLBH',[rfReplaceAll, rfIgnoreCase]));
    if SupEdit.Text<>'' then
      SQL.Add('      and zszl.zsdh like ''%'+SupEdit.Text+'%'' ');
    if JIJIEEdit1.Text <> '' then
      SQL.Add('      and  kfxxzl.JiJie like ''%'+JIJIEEdit1.Text+'%'' ');
    if ZSJCEdit1.Text<>'' then
      SQL.Add('       and zszl.zsjc like ''%'+ZSJCEdit1.Text+'%'' ');
    if DDMHEdit1.Text<>'' then
      SQL.Add('      and  xxzl.DDMH like ''%'+DDMHEdit1.Text+'%'' ');
    if DAOMHEdit1.Text<>'' then
      SQL.Add('      and  xxzl.DAOMH like ''%'+DAOMHEdit1.Text+'%'' ');
    if XTMHEdit1.Text<>'' then
      SQL.Add('      and  xxzl.XTMH like ''%'+XTMHEdit1.Text+'%'' ');
    if PartNoEdit.Text <>'' then
      SQL.Add('       '+StringReplace(PartNoSQL, ':bwdh', 'bwzl.bwdh',[rfReplaceAll, rfIgnoreCase]));
    if XieMingEdit.Text <>'' then
      SQL.Add('       '+StringReplace(XieMSQL, ':XieMing', 'xxzl.XieMing',[rfReplaceAll, rfIgnoreCase]));
    if ZWPMEdit.Text <>'' then
      SQL.Add('       '+StringReplace(ZWPMSQL, ':ZWPM', 'CLZL.ZWPM',[rfReplaceAll, rfIgnoreCase]));
    if ZWPMEdit1.Text <>'' then
      SQL.Add('       '+StringReplace(ZWPM1SQL, ':ZWPM', 'CLZL.ZWPM',[rfReplaceAll, rfIgnoreCase]));
    if YWPMEdit1.Text <>'' then
      SQL.Add('       '+StringReplace(YWPMSQL, ':YWPM', 'CLZL.YWPM',[rfReplaceAll, rfIgnoreCase]));
    if YWPMEdit2.Text <>'' then
      SQL.Add('       '+StringReplace(YWPM1SQL, ':YWPM', 'CLZL.YWPM',[rfReplaceAll, rfIgnoreCase]));
    if ZWSMEdit1.Text <>'' then
      SQL.Add('       '+StringReplace(ZWSMSQL, ':ZWSM', 'BWZL.ZWSM',[rfReplaceAll, rfIgnoreCase]));
    if ZWSMEdit2.Text <>'' then
      SQL.Add('       '+StringReplace(ZWSM1SQL, ':ZWSM', 'BWZL.ZWSM',[rfReplaceAll, rfIgnoreCase]));
    if YWSMEdit1.Text <>'' then
      SQL.Add('       '+StringReplace(YWSMSQL, ':YWSM', 'BWZL.YWSM',[rfReplaceAll, rfIgnoreCase]));
    if YWSMEdit2.Text <>'' then
      SQL.Add('       '+StringReplace(YWSM1SQL, ':YWSM', 'BWZL.YWSM',[rfReplaceAll, rfIgnoreCase]));
    //27.11.2024
    if (MatNoEdit.Text <> '') or (ZWPMEdit.Text <> '') or (ZWPMEdit1.Text <> '') or
   (YWPMEdit1.Text <> '') or (YWPMEdit2.Text <> '') or (PartNoEdit.Text <> '') or
   (ZWSMEdit1.Text <> '') or (ZWSMEdit2.Text <> '') or
   (YWSMEdit1.Text <> '') or (YWSMEdit2.Text <> '') then
    begin
    if cbLB.Text = '1' then
      begin
        sql.Add('   and xxzls.BWLB=''1''');
      end
    else if cbLB.Text = '3' then
      begin
        sql.Add('   and xxzls.BWLB=''3''');
      end;
    end;
    //========
    sql.Add(' and exists ( select XieXing from XXZLS where xxzls.XieXing = xxzl.XieXing and xxzls.SheHao = xxzl.SheHao');
    if CB5.Checked = true then
    begin
      SQL.Add('and  convert(smalldatetime,convert(varchar,xxzls.USERDATE,111)) between ');
      SQL.Add('      '''+formatdatetime('yyy/MM/dd',dtpStart.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DateTimePicker1.Date)+'''');
    end;
    if BrdCombo.Text<>'' then
    begin
      SQL.Add(' and  xxzl.khdh  in (select KFDH from KFZL where KFJC = '''+BrdCombo.Text+''')');
    end;
    SQL.Add(')');
    //SQL.Add('oeder by kfxxzl.DEVCODE,DDZL.DDBH');
    //Show Child Materail
    if ((CB3.Checked = true) and (IsShowMatColumn=true))  then
    begin
      sql.Add('union all');
      if IsShowMatColumn=false then          
      begin
        SQL.Add('select distinct kfxxzl.DEVCODE,kfxxzl.JiJie,'''' AS bwdh,'''' AS ywsm,'''' AS zwsm,xxzl.DAOMH,xxzl.DDMH,xxzl.XTMH,xxzl.XieXing,xxzl.SheHao,xxzl.ARTICLE');
        SQL.Add(',xxzl.XieMing,'''' AS Type,'''' AS bwlb,'''' AS cldh1,'''' AS dwbh,'''' AS ywpm,'''' AS zwpm,Convert(float,null)  as CLSL,'''' as CCQQ,'''' as CCQZ,Convert(float,null)  as LOSS,xxzls.USERDATE,'''' AS CSBH,'''' AS zsjc,'''' AS clzmlb ');
        SQL.Add(',(case when ypzl.fd='''' then kfxxzl.fd when ypzl.fd<>'''' then ypzl.fd  else kfxxzl.fd end) as fd,xxzlKF.Dropped as Dropped_KF,xxzlPD.Dropped as  Dropped_PD,BUsers.Engname,xxzl.KFCQ  ');
      end else
      begin
        SQL.Add('select distinct kfxxzl.DEVCODE,kfxxzl.JiJie,bwzl.bwdh,bwzl.ywsm,bwzl.zwsm,xxzl.DAOMH,xxzl.DDMH,xxzl.XTMH,xxzl.XieXing,xxzl.SheHao,xxzl.ARTICLE');
        SQL.Add(',xxzl.XieMing,''Extra'' as Type,xxzls.bwlb ,clzhzl.cldh1,clzl.dwbh,clzl.ywpm,clzl.zwpm,XXZLS.CLSL*clzhzl.syl as CLSL,XXZLS.CCQQ,XXZLS.CCQZ,XXZLS.LOSS,xxzls.USERDATE,clzhzl.zsdh as CSBH,zszl.zsjc,CLZL.clzmlb ');
        SQL.Add(',(case when ypzl.fd='''' then kfxxzl.fd when ypzl.fd<>'''' then ypzl.fd  else kfxxzl.fd end) as fd,xxzlKF.Dropped as Dropped_KF,xxzlPD.Dropped as  Dropped_PD,BUsers.Engname,xxzl.KFCQ  ');
      end;
      SQL.Add('from xxzl');
      if IsShowMatColumn=false then
      begin
        sql.Add('left join (select xxzls.XieXing,xxzls.SheHao,Max(xxzls.UserDate) as USerdate');
      end else
      begin
        sql.Add('left join (select xxzls.XieXing,xxzls.SheHao,Max(xxzls.UserDate) as USerdate,xxzls.bwbh,xxzls.bwlb,xxzls.clbh,xxzls.csbh,XXZLS.CLSL,XXZLS.CCQQ,XXZLS.CCQZ,XXZLS.LOSS');
      end;
      sql.Add('from xxzls,xxzl where Xxzls.xiexing=xxzl.xiexing and xxzls.shehao=xxzl.shehao');
      if SKUEdit.Text <>'' then
        SQL.Add('       '+StringReplace(ArtSQL, ':ARTICLE', 'xxzl.ARTICLE',[rfReplaceAll, rfIgnoreCase]));
      if CB6.Checked = true then
      begin
        SQL.Add('     and  right (xxzl.Article,1) <> ''V''  ');
      end;
      if CB5.Checked = true then
      begin
        SQL.Add('and  convert(smalldatetime,convert(varchar,xxzls.USERDATE,111)) between ');
        SQL.Add('      '''+formatdatetime('yyy/MM/dd',dtpStart.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DateTimePicker1.Date)+'''');
      end;
      if BrdCombo.Text<>'' then
      begin
        SQL.Add(' and  xxzl.khdh  in (select KFDH from KFZL where KFJC = '''+BrdCombo.Text+''')');
      end;
      if CCQQEdit.Text<>'' then
      begin
        SQL.Add(' and  xxzls.CCQQ>='''+CCQQEdit.Text+''' ');
      end;
      if CCQZEdit.Text<>'' then
      begin
        SQL.Add(' and  xxzls.CCQZ<='''+CCQZEdit.Text+''' ');
      end;
      if IsShowMatColumn=false then
      begin
        sql.Add('Group by xxzls.XieXing,xxzls.SheHao');
      end else
      begin
        sql.Add('Group by xxzls.XieXing,xxzls.SheHao,xxzls.bwbh,xxzls.bwlb,xxzls.clbh,xxzls.csbh,XXZLS.CLSL,XXZLS.CCQQ,XXZLS.CCQZ,XXZLS.LOSS');
      end;
      sql.Add(') XXZLs on xxzls.XieXing = xxzl.XieXing and xxzls.SheHao = xxzl.SheHao');
      SQL.Add('left join kfxxzl on kfxxzl.Xiexing = xxzl.XieXing and kfxxzl.SheHao = xxzl.SheHao ');
      SQL.Add('left join xxzlPD on xxzlPD.Xiexing = xxzl.XieXing and xxzlPD.SheHao = xxzl.SheHao ');
      SQL.Add('left join xxzlKF on xxzlKF.Xiexing = xxzl.XieXing and xxzlKF.SheHao = xxzl.SheHao ');
      ///YPZL//
      SQL.Add('left join ypzl on kfxxzl.Xiexing = ypzl.XieXing and kfxxzl.SheHao = ypzl.SheHao and kfxxzl.ARTICLE= ypzl.ARTICLE ');
      SQL.Add('left join BUsers on BUsers.UserID=ypzl.UserID ');
      SQL.Add('left join kfzl on kfzl.kfdh = xxzl.khdh');
      SQL.Add('left join DDZL on DDZL.XieXing = xxzl.XieXing and DDZL.SheHao = xxzl.SheHao ');
      if IsShowMatColumn=true then
      begin
        SQL.Add('left join bwzl on bwzl.bwdh = xxzls.BWBH ');
        SQL.Add('inner join clzhzl on xxzls.CLBH = clzhzl.cldh ');
        SQL.Add('left join clzl on clzl.cldh = clzhzl.cldh1');
        SQL.Add('left join zszl on ZSZL.ZSDH=clzhzl.zsdh ');
      end;
      SQL.Add('where  1=1');


      //SQL.Add(' and XXZL.KFCQ in ('''+BOMInformation.BOM_N31_KFCQ+''' )');
      //27.11.2024
      if cbFactory.Text = 'JNG' then
      begin
        sql.Add('   and XXZL.KFCQ in (''JNG'')');
      end
      else if cbFactory.Text = 'YQA' then
      begin
        sql.Add('   and XXZL.KFCQ in (''YQA'')');
      end;
      //========

      if CB4.Checked=false then
        SQL.Add(' and IsNull(xxzlKF.Dropped,0)=0');
      if CB7.Checked=false then
        SQL.Add(' and IsNull(xxzlPD.Dropped,0)=0');
      if SKUEdit.Text <>'' then
        SQL.Add('       '+StringReplace(ArtSQL, ':ARTICLE', 'xxzl.ARTICLE',[rfReplaceAll, rfIgnoreCase]));
      if CB6.Checked = true then
      begin
        SQL.Add('     and  right (xxzl.Article,1) <> ''V''  ');
      end;
      if SREdit.Text <>'' then
        SQL.Add('       '+StringReplace(SRSQL, ':DEVCODE', 'kfxxzl.DEVCODE',[rfReplaceAll, rfIgnoreCase]));
      if CB5.Checked = true then
      begin
        SQL.Add('and  convert(smalldatetime,convert(varchar,xxzls.USERDATE,111)) between ');
        SQL.Add('      '''+formatdatetime('yyy/MM/dd',dtpStart.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DateTimePicker1.Date)+'''');
      end;
      if CheckBox1.Checked = true then
      begin
        SQL.Add('and  convert(smalldatetime,convert(varchar,DDZL.DDRQ,111)) between ');
        SQL.Add('      '''+formatdatetime('yyy/MM/dd',DateTimePicker3.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DateTimePicker2.Date)+'''');
      end;
      if CheckBox2.Checked = true then
      begin
        SQL.Add('and  convert(smalldatetime,convert(varchar,DDZL.Shipdate ,111)) between ');
        SQL.Add('      '''+formatdatetime('yyy/MM/dd',DateTimePicker5.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DateTimePicker4.Date)+'''');
      end;
      if BrdCombo.Text<>'' then
      begin
        SQL.Add(' and  xxzl.khdh  in (select KFDH from KFZL where KFJC = '''+BrdCombo.Text+''')');
      end;
      if BuyNoEdit.Text<>'' then
        SQL.Add('      and  DDZL.BUYNO like '''+BuyNoEdit.Text+'%'' ');
      if MatNoEdit.Text <>'' then
        SQL.Add('       '+StringReplace(MatNoSQL, ':CLBH', 'xxzls.CLBH',[rfReplaceAll, rfIgnoreCase]));
      if SupEdit.Text<>'' then
        SQL.Add('      and zszl.zsdh like ''%'+SupEdit.Text+'%'' ');
      if JIJIEEdit1.Text <> '' then
        SQL.Add('      and  kfxxzl.JiJie like ''%'+JIJIEEdit1.Text+'%'' ');
      if ZSJCEdit1.Text<>'' then
        SQL.Add('       and zszl.zsjc like ''%'+ZSJCEdit1.Text+'%'' ');
      if DDMHEdit1.Text<>'' then
        SQL.Add('      and  xxzl.DDMH like ''%'+DDMHEdit1.Text+'%'' ');
      if DAOMHEdit1.Text<>'' then
        SQL.Add('      and  xxzl.DAOMH like ''%'+DAOMHEdit1.Text+'%'' ');
      if XTMHEdit1.Text<>'' then
        SQL.Add('      and  xxzl.XTMH like ''%'+XTMHEdit1.Text+'%'' ');
      if PartNoEdit.Text <>'' then
        SQL.Add('       '+StringReplace(PartNoSQL, ':bwdh', 'bwzl.bwdh',[rfReplaceAll, rfIgnoreCase]));
      if XieMingEdit.Text <>'' then
        SQL.Add('       '+StringReplace(XieMSQL, ':XieMing', 'xxzl.XieMing',[rfReplaceAll, rfIgnoreCase]));
      if ZWPMEdit.Text <>'' then
        SQL.Add('       '+StringReplace(ZWPMSQL, ':ZWPM', 'CLZL.ZWPM',[rfReplaceAll, rfIgnoreCase]));
      if ZWPMEdit1.Text <>'' then
        SQL.Add('       '+StringReplace(ZWPM1SQL, ':ZWPM', 'CLZL.ZWPM',[rfReplaceAll, rfIgnoreCase]));
      if YWPMEdit1.Text <>'' then
        SQL.Add('       '+StringReplace(YWPMSQL, ':YWPM', 'CLZL.YWPM',[rfReplaceAll, rfIgnoreCase]));
      if YWPMEdit2.Text <>'' then
        SQL.Add('       '+StringReplace(YWPM1SQL, ':YWPM', 'CLZL.YWPM',[rfReplaceAll, rfIgnoreCase]));
      if ZWSMEdit1.Text <>'' then
        SQL.Add('       '+StringReplace(ZWSMSQL, ':ZWSM', 'BWZL.ZWSM',[rfReplaceAll, rfIgnoreCase]));
      if ZWSMEdit2.Text <>'' then
        SQL.Add('       '+StringReplace(ZWSM1SQL, ':ZWSM', 'BWZL.ZWSM',[rfReplaceAll, rfIgnoreCase]));
      if YWSMEdit1.Text <>'' then
        SQL.Add('       '+StringReplace(YWSMSQL, ':YWSM', 'BWZL.YWSM',[rfReplaceAll, rfIgnoreCase]));
      if YWSMEdit2.Text <>'' then
        SQL.Add('       '+StringReplace(YWSM1SQL, ':YWSM', 'BWZL.YWSM',[rfReplaceAll, rfIgnoreCase]));
      //27.11.2024
      if cbLB.Text = '1' then
      begin
        sql.Add('   and xxzls.BWLB=''1''');
      end
      else if cbLB.Text = '3' then
      begin
        sql.Add('   and xxzls.BWLB=''3''');
      end;
    //========
      SQL.Add(' and exists ( select XieXing from XXZLS where xxzls.XieXing = xxzl.XieXing and xxzls.SheHao = xxzl.SheHao');
      if CB5.Checked = true then
      begin
        SQL.Add('and  convert(smalldatetime,convert(varchar,xxzls.USERDATE,111)) between ');
        SQL.Add('      '''+formatdatetime('yyy/MM/dd',dtpStart.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DateTimePicker1.Date)+'''');
      end;
      if BrdCombo.Text<>'' then
      begin
        SQL.Add(' and  xxzl.khdh  in (select KFDH from KFZL where KFJC = '''+BrdCombo.Text+''')');
      end;
      SQL.Add(')');
      SQL.Add('order by xxzl.article,bwzl.bwdh,type');
    end;
    //showmessage(sql.Text);
    //funcobj.WriteErrorLog(sql.Text);
    Active:=true;
  end;
  //
  if IsShowMatColumn=false then
  begin
    for i:=09 to 20 do
      DBGrid1.Columns[i].Visible:=false;
  end else
  begin
    for i:=09 to 20 do
      DBGrid1.Columns[i].Visible:=true;
  end;
  //
end;
procedure TBOMInformation.ExportExcel();
var   a:string;
      eclApp,WorkBook:olevariant;
      i,j:integer;
begin
  if  Query1.active  then
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
        for   i:=0   to   Query1.fieldcount-1   do
          begin
              eclApp.Cells(1,i+1):=Query1.fields[i].FieldName;
          end;
        Query1.First;
        j:=2;
        while   not   Query1.Eof   do
          begin
            for   i:=0   to  Query1.fieldcount-1  do
            begin
              eclApp.Cells(j,i+1):=Query1.Fields[i].Value;
            end;
          Query1.Next;
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

procedure TBOMInformation.Button2Click(Sender: TObject);
var
  ExpClass:TDBGridEhExportClass;
  Ext, target:String;
  tdbgh : TDBGridEh;
begin
  if  Messagedlg(Pchar('Direct Export?'),mtInformation,[mbNo,mbYes],0)=mrYes then
  begin
     ExportExcel();
  end else
  begin
    ExpClass:=TDBGridEhExportAsXLS;
    if SaveDialog1.Execute()=true then
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
        SaveDBGridEhToExportFile(ExpClass,DBGrid1,SaveDialog1.FileName,true);
        if Application.MessageBox('Do you want to open the exported file?','Open file',MB_YESNO) = IDYES then
          shellexecute(handle,'open',pchar(SaveDialog1.FileName),nil,nil,SW_SHOWNORMAL);
      end;
    end;
  end;
end;

procedure TBOMInformation.FormCreate(Sender: TObject);
var i : integer;
begin
  ReadIni();
  dtpstart.Date:=now;
  DateTimePicker1.Date:=now;
  DateTimePicker2.Date:=now;
  DateTimePicker3.Date:=now;
  DateTimePicker4.Date:=now;
  DateTimePicker5.Date:=now;
  with Qtemp do
  begin
    active:=false;
    sql.Clear;
    sql.add(' select distinct kfzl.kfdh,kfzl.kfjc from KFZL_GS ');
    sql.add(' left join kfzl on KFZL_GS.khbh=kfzl.kfdh ');
    sql.add(' where KFZL_GS.GSBH='''+main.Edit2.Text+''' ');
    //funcobj.WriteErrorLog(sql.Text);
    active:=true;
    for i:=1 to recordcount do
    begin
      BrdCombo.Items.Add(fieldbyname('kfjc').asstring);
      next;
    end;
    BrdCombo.ItemIndex := 0;
  end;
end;
end.

