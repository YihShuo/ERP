unit SampleOrder_Mat1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ExtCtrls, Mask, IniFiles,
  DBCtrls, Menus,comobj;

type
  TSampleOrder_Mat = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    CLDHEdit: TEdit;
    Button1: TButton;
    YWPMEdit: TEdit;
    DS1: TDataSource;
    MatQry: TQuery;
    MatQrycldh: TStringField;
    MatQryzwpm: TStringField;
    MatQryywpm: TStringField;
    MatQrydwbh: TStringField;
    MatQryCQDH: TStringField;
    MatQryTYJH: TStringField;
    StopCK: TCheckBox;
    Panel3: TPanel;
    Panel4: TPanel;
    DBGridEh1: TDBGridEh;
    Panel2: TPanel;
    YWPMDBEdit: TDBEdit;
    ZWPMDBEdit: TDBEdit;
    SplitCK: TCheckBox;
    Panel5: TPanel;
    ArticleQry: TQuery;
    ArticleQryCLBH: TStringField;
    ArticleQryYPDH: TStringField;
    ArticleQryKFJD: TStringField;
    ArticleQryJiJie: TStringField;
    ArticleQryFD: TStringField;
    DataSource3: TDataSource;
    DBGridEh3: TDBGridEh;
    MatQryUseCount: TIntegerField;
    ArticleQryCSBH: TStringField;
    MatQryzsdh: TStringField;
    MatQryZSYWJC: TStringField;
    ArticleQrydevcode: TStringField;
    ArticleQryARTICLE: TStringField;
    SRDetailCK: TCheckBox;
    PopupMenu1: TPopupMenu;
    Excel: TMenuItem;
    procedure Button1Click(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure YWPMEditKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormDestroy(Sender: TObject);
    procedure DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure FormCreate(Sender: TObject);
    procedure ExcelClick(Sender: TObject);
  private
    { Private declarations }
    procedure ReadIni();
  public
    Develop_N22_KHDH:String;
    { Public declarations }
  end;

var
  SampleOrder_Mat: TSampleOrder_Mat;

implementation
  uses main1,SampleOrder1,FunUnit;
{$R *.dfm}

procedure TSampleOrder_Mat.Button1Click(Sender: TObject);
var tmpList:TStringlist;
    i:integer;
begin
  //
  ArticleQry.Active:=false;
  with MatQry do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select top 20 Cldh,zwpm,ywpm,dwbh,CQDH,CLZL.TYJH,YPZLS.UseCount,zszl.zsdh,zszl.ZSYWJC from CLZL ');
    sql.add('left join ( ');
    sql.add('select CLBH,Count(CLBH) as UseCount from ( ');
    sql.add('select CLBH  from YPZLS,YPZL,KFXXZL where YPZL.YPDH=YPZLS.YPDH and  YPZL.SheHao=KFXXZL.SheHao and KFXXZL.XieXing=YPZL.XieXing  and YPZL.UserDate>='''+FormatDateTime('YYYYMMDD',Date()-180)+''' ');
    sql.add(' and KFXXZL.KHDH in ('''+ Develop_N22_KHDH +''') ');
    sql.add('union all ');
    sql.add('select Clzhzl.CLDH1 as CLBH from YPZLS ');
    sql.add('inner join YPZL on YPZL.YPDH=YPZLS.YPDH ');
    sql.add('inner join KFXXZL on YPZL.SheHao=KFXXZL.SheHao and KFXXZL.XieXing=YPZL.XieXing ');
    sql.add('inner join Clzhzl on YPZLS.CLBH=Clzhzl.CLDH  ');

    sql.add('where YPZL.UserDate>='''+FormatDateTime('YYYYMMDD',Date()-180)+''' ');
    sql.add(' and KFXXZL.KHDH in ('''+ Develop_N22_KHDH +''') ');
    sql.add(') YPZLSAll  Group by CLBH ) YPZLS on YPZLS.CLBH=CLZL.CLDH  ');
    sql.Add('left join zszl on zszl.zsdh=clzl.zsdh ');
    SQL.Add('where ((Substring(CLDH,1,3)=''V90'') or CLZL.YN in (''1'',''2'') ) ');//越南臨時料號或台灣建立材料
    if CLDHEdit.Text <> '' then
      SQL.Add('and CLDH like '''+CLDHEdit.Text+'%''   ');
    //20150630 Add Spec 單純買料 不建樣品單的材料
    SQL.Add('and (CLDH not like ''V90M%'') and (CLDH not like ''V90N%'')  ');
    //
    if trim(YWPMEdit.Text)<>'' then
    begin
      if SplitCK.Checked=true then
         tmpList:=FuncObj.SplitString(YWPMEdit.Text,'*')
      else
         tmpList:=FuncObj.SplitString(YWPMEdit.Text,' ');
      for i:=0 to tmpList.Count-1 do
      begin
          if trim(tmpList.Strings[i])<>'' then
          SQL.Add('and YWPM like ''%'+StringReplace(trim(tmpList.Strings[i]),':','',[rfReplaceAll, rfIgnoreCase])+'%'' ');
      end;
      tmpList.Free;
    end;
    if StopCK.Checked=true then
      SQL.Add(' and (CLZL.TYJH=''N'' or CLZL.TYJH='''' or CLZL.TYJH is null) ');
    SQL.Add('order by YPZLS.UseCount desc');
    //funcObj.WriteErrorLog(sql.Text);
    Active:=true;
  end;
  //
  if SRDetailCK.Checked=true then
  begin
    if MatQry.RecordCount>0 then  ArticleQry.Active:=true;
  end else
  begin
    ArticleQry.Active:=false;
  end;
end;

procedure TSampleOrder_Mat.DBGridEh1DblClick(Sender: TObject);
begin
  if MatQry.Active=true then
  begin
    SampleOrder.YPZLS.Edit;
    SampleOrder.YPZLS.FieldByName('CLBH').AsString:=MatQry.FieldByName('CLDH').AsString;
    SampleOrder.YPZLS.FieldByName('ywpm').AsString:=MatQry.FieldByName('ywpm').AsString;
    SampleOrder.YPZLS.FieldByName('DWBH').AsString:=MatQry.FieldByName('DWBH').AsString;
    SampleOrder.YPZLS.FieldByName('CQDH').AsString:=MatQry.FieldByName('CQDH').AsString;
    if MatQry.FieldByName('CQDH').AsString='VN' then
      SampleOrder.YPZLS.FieldByName('Currency').AsString:='VND'
    else
      SampleOrder.YPZLS.FieldByName('Currency').AsString:='NTD';
    //20151017 選材料已預設廠商填入
    if MatQry.FieldByName('ZSDH').AsString<>'' then
    begin
      SampleOrder.YPZLS.FieldByName('CSBH').AsString:=MatQry.FieldByName('ZSDH').AsString;
      SampleOrder.YPZLS.FieldByName('ZSYWJC').AsString:=MatQry.FieldByName('ZSYWJC').AsString;
    end;
    SampleOrder.YPZLS.Post;
    Close;
  end;
end;

procedure TSampleOrder_Mat.YWPMEditKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=13 then Button1.Click;
end;

procedure TSampleOrder_Mat.FormDestroy(Sender: TObject);
begin
  SampleOrder_Mat:=nil;
end;

procedure TSampleOrder_Mat.DBGridEh1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if MatQry.FieldByName('TYJH').AsString='Y' then
  begin
    DBGridEh1.canvas.font.color:=clGray;
  end;
end;

procedure TSampleOrder_Mat.ReadIni();
var MyIni :Tinifile;
    AppDir,DBIP,DBUser,DBPass,DBName:string;
begin
  Develop_N22_KHDH:='036';
  AppDir:=ExtractFilePath(Application.ExeName);
  if FileExists(AppDir+'\ComName.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ComName.ini');
      Develop_N22_KHDH:=MyIni.ReadString('ERP','Develop_N22_KHDH_'+main.Edit2.Text,'036');
    finally
      MyIni.Free;
    end;
  end;
end;

procedure TSampleOrder_Mat.FormCreate(Sender: TObject);
begin
    ReadIni();
    with ArticleQry do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('select kfxxzl.devcode,kfxxzl.ARTICLE,ypzlS.CLBH,ypzlS.YPDH,ypzl.KFJD,kfxxzl.JiJie,kfxxzl.FD,ypzlS.CSBH ');
      SQL.Add('  from  ypzlS');
      SQL.Add('  left join ypzl on ypzlS.YPDH=ypzl.YPDH');
      SQL.Add('  left join kfxxzl on kfxxzl.XieXing=ypzl.XieXing and kfxxzl.SheHao=ypzl.SheHao');
      sql.add('  WHERE ypzlS.CLBH=:CLDH   and KFXXZL.KHDH in ('''+ Develop_N22_KHDH +''') ');
      SQL.Add('UNION ALL');
      SQL.Add('select kfxxzl.devcode,kfxxzl.ARTICLE,ypzlS.CLBH,ypzlS.YPDH,ypzl.KFJD,kfxxzl.JiJie,kfxxzl.FD,ypzlS.CSBH');
      SQL.Add('  from  ypzlS');
      SQL.Add('  left join ypzl on ypzlS.YPDH=ypzl.YPDH');
      SQL.Add('  left join kfxxzl on kfxxzl.XieXing=ypzl.XieXing and kfxxzl.SheHao=ypzl.SheHao');
      SQL.Add('  left join CLZHZL on CLZHZL.cldh=ypzls.clbh');
      SQL.add('  WHERE CLZHZL.cldh1=:CLDH   and KFXXZL.KHDH in ('''+ Develop_N22_KHDH +''') ');
      SQL.Add('order by  JiJie DESC');
      //funcobj.WriteErrorLog(sql.Text);
    end;
end;

procedure TSampleOrder_Mat.ExcelClick(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin
    if  ArticleQry.active  then
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
          for   i:=0   to   ArticleQry.fieldcount-1   do
          begin
              eclApp.Cells(1,i+1):=ArticleQry.fields[i].FieldName;
          end;

          ArticleQry.First;
          j:=2;
          while   not   ArticleQry.Eof   do
          begin
            for   i:=0   to  ArticleQry.fieldcount-1  do
            begin
              eclApp.Cells(j,i+1):=ArticleQry.Fields[i].Value;
            end;
            ArticleQry.Next;
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

end.
