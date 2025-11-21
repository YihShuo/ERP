unit ExtraPreview1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls, GridsEh,
  DBGridEh,ehlibBDE, ComCtrls, Menus,comobj,iniFiles;

type
  TExtraPreview = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    Label3: TLabel;
    Edit3: TEdit;
    Label4: TLabel;
    DTP1: TDateTimePicker;
    Label5: TLabel;
    DTP2: TDateTimePicker;
    CB1: TCheckBox;
    Button2: TButton;
    JGMas: TQuery;
    JGMasJGNO: TStringField;
    JGMasCLBH: TStringField;
    JGMasZMLB: TStringField;
    JGMasYWPM: TStringField;
    JGMasDWBH: TStringField;
    JGMasQty: TCurrencyField;
    JGMasActQty: TCurrencyField;
    JGMasMemo: TStringField;
    JGMasYQDate: TDateTimeField;
    JGMasCFMDate: TDateTimeField;
    JGMasJGDATE: TDateTimeField;
    JGMasCFMID1: TStringField;
    JGMasCFMID2: TStringField;
    JGMasCYN: TStringField;
    JGMasCKBH: TStringField;
    JGMasZSYWJC: TStringField;
    JGMasSB: TStringField;
    PopupMenu1: TPopupMenu;
    Excel1: TMenuItem;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    JGDet: TQuery;
    JGDetJGNO: TStringField;
    JGDetCLBH: TStringField;
    JGDetZLBH: TStringField;
    JGDetQty: TCurrencyField;
    JGDetCLSL: TCurrencyField;
    PC1: TPageControl;
    TS3: TTabSheet;
    TS4: TTabSheet;
    Panel3: TPanel;
    DBGridEh1: TDBGridEh;
    DBGridEh2: TDBGridEh;
    JGDetywpm: TStringField;
    JGDetMemo: TStringField;
    Button3: TButton;
    JGMasLLNO: TStringField;
    JGMasLL_CFMID: TStringField;
    JGMasLL_CFMDate: TDateTimeField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure DBGrid1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Excel1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    WH_DiplayFormat:String;
    procedure ReadIni();
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ExtraPreview: TExtraPreview;

implementation

uses main1, PreviewTotal1,fununit;

{$R *.dfm}

procedure TExtraPreview.ReadIni();
var MyIni :Tinifile;
    AppDir:string;
begin

  //倉庫小位數
  WH_DiplayFormat:='#,##0.00';
  AppDir:=ExtractFilePath(Application.ExeName);
  if FileExists(AppDir+'\ComName.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ComName.ini');
      //隱藏XT
      WH_DiplayFormat:=MyIni.ReadString('Warehouse','DiplayFormat','#,##0.00');
      //總務倉
    finally
      MyIni.Free;
    end;
  end;
  TCurrencyField(JGMas.FieldByName('ActQty')).DisplayFormat:=WH_DiplayFormat;
end;

procedure TExtraPreview.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  free;
end;

procedure TExtraPreview.Button1Click(Sender: TObject);
begin
 if PC1.ActivePageIndex=0 then
 begin
  JGMas.Active:=true;
  JGDet.Active:=false;
  with JGMas do
  begin
    active:=false;
    sql.Clear;
    sql.add('select JGZLS.*,JGZL.JGDATE,JGZL.CFMID1,JGZLS.Qty as ActQty,JGZL.CKBH,');
    sql.add('       JGZL.CFMID2,JGZL.YN as CYN,CLZL.YWPM,CLZL.DWBH,ZSZL.ZSYWJC,''Mother'' as SB,kc.LLNO,kc.CFMID as LL_CFMID,kc.CFMDate as LL_CFMDate from JGZLS');
    sql.add('left join JGZL  on JGZL.JGNO=JGZLS.JGNO');
    sql.add('left join CLZL on CLZL.CLDH=JGZLS.CLBH');
    sql.add('left join ZSZL on ZSZL.ZSDH=JGZL.ZSBH ');
    sql.Add('left join (select kcll.LLNO,kcll.CFMID,kcll.CFMDate,kcll.JGNO from kcll ');
    sql.Add('  		      where 1=1 and kcll.GSBH='+''''+main.edit2.text+'''');
    sql.Add('  		      and kcll.CFMID<>''NO''  ');
    sql.Add('  		      and kcll.SCBH <>''ZZZZZZZZZZ''  ');
    sql.Add('  		      and Isnull(kcll.flowflag,'''')<>''X''  ');
    sql.Add('  		      group by kcll.LLNO,kcll.CFMID,kcll.CFMDate,kcll.JGNO   ');
    sql.Add('  			    ) kc on kc.JGNO =JGZL.JGNO ');
    sql.add('where Isnull(JGZL.flowflag,'''')<>''X'' and JGZLS.CLBH like'+''''+edit2.Text+'%'+'''');
    sql.add('      and JGZLS.JGNO like '+''''+edit1.Text+'%'+'''');
    sql.add('and JGZLS.ZMLB='+''''+'ZZZZZZZZZZ'+'''');
    sql.add('and JGZL.GSBH='+''''+main.edit2.text+'''');
    sql.add('and ZSZL.ZSYWJC like '+''''+'%'+edit3.Text+'%'+'''');
    sql.add('and convert(smalldatetime,convert(varchar,JGDate,111)) between ');
    sql.add(''''+formatdatetime('yyyy/MM/dd',DTP1.date)+''''+ ' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.date)+'''');
    if CB1.Checked then
    begin
        sql.add('and CFMID1=''NO'' ');
    end;
    sql.add(' union ')  ;
    sql.add('select JGZLS.*,JGZL.JGDATE,JGZL.CFMID1,JGZLS.Qty*JGZLM.Qty as ActQty,JGZL.CKBH,');
    sql.add('       JGZL.CFMID2,JGZL.YN as CYN,CLZL.YWPM,CLZL.DWBH,ZSZL.ZSYWJC,'+''''+'Son'+''''+' as SB,kc.LLNO,kc.CFMID as LL_CFMID,kc.CFMDate as LL_CFMDate from JGZLS');
    sql.add('left join JGZL  on JGZL.JGNO=JGZLS.JGNO');
    sql.add('left join CLZL on CLZL.CLDH=JGZLS.ZMLB');
    sql.add('left join ZSZL on ZSZL.ZSDH=JGZL.ZSBH ');
    sql.add('left join (select JGZLS.Qty,JGZLS.JGNO,JGZLS.CLBH from JGZLS');
    sql.add('           where JGZLS.ZMLB='+''''+'ZZZZZZZZZZ'+'''');
    sql.add('           ) JGZLM on JGZLM.CLBH=JGZLS.CLBH and JGZLM.JGNO=JGZLS.JGNO');
    sql.Add('left join (select kcll.LLNO,kcll.CFMID,kcll.CFMDate,kcll.JGNO from kcll  ');
    sql.Add('  		      where 1=1 and kcll.GSBH='+''''+main.edit2.text+'''');
    sql.Add('  		      and kcll.CFMID<>''NO''  ');
    sql.Add('  		      and kcll.SCBH <>''ZZZZZZZZZZ''  ');
    sql.Add('  		      and Isnull(kcll.flowflag,'''')<>''X''  ');
    sql.Add('  		      group by kcll.LLNO,kcll.CFMID,kcll.CFMDate,kcll.JGNO   ');
    sql.Add('  			    ) kc on kc.JGNO =JGZL.JGNO ');
    sql.add('where  Isnull(JGZL.flowflag,'''')<>''X'' and JGZLS.ZMLB like'+''''+edit2.Text+'%'+'''');
    sql.add('      and JGZLS.JGNO like '+''''+edit1.Text+'%'+'''');
    sql.add('and JGZLS.ZMLB<>'+''''+'ZZZZZZZZZZ'+'''');
    sql.add('and JGZL.GSBH='+''''+main.edit2.text+'''');
    sql.add('and ZSZL.ZSYWJC like ''%'+edit3.Text+'%''');
    sql.add('and convert(smalldatetime,convert(varchar,JGDate,111)) between ');
    sql.add(''''+formatdatetime('yyyy/MM/dd',DTP1.date)+''''+ ' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.date)+'''');
    if CB1.Checked then
    begin
      sql.add('and CFMID1='+''''+'NO'+'''');
    end;
    sql.add('order by JGZLS.JGNO,JGZLS.CLBH,JGZLS.ZMLB DESC');
    active:=true;
    //funcobj.WriteErrorLog(sql.Text);
  JGDet.Active:=false;
  end;
  end else
  if PC1.ActivePageIndex=1 then
  with JGDet do
  begin
    active:=false;
    sql.Clear;
    sql.add('select JGZLSS.JGNO,JGZLSS.CLBH,JGZLSS.ZLBH,JGZLSS.Qty,JGZLSS.CLSL,YWPM,JGZLSS.Memo');
    sql.add('from JGZLSS left join JGZL on JGZL.JGNO = JGZLSS.JGNO');
    sql.add('left join CLZL on CLZL.CLDH = JGZLSS.CLBH');
    sql.add('left join ZSZL on ZSZL.ZSDH = JGZL.ZSBH ');
    sql.add('where Isnull(JGZL.flowflag,'''')<>''X'' and JGZLSS.CLBH like'+''''+edit2.Text+'%'+'''');
    sql.add('and JGZLSS.JGNO like '+''''+edit1.Text+'%'+'''');
    sql.add('and JGZL.GSBH='+''''+main.edit2.text+'''');
    sql.add('and ZSZL.ZSYWJC like '+''''+'%'+edit3.Text+'%'+'''');
    sql.add('and convert(smalldatetime,convert(varchar,JGDate,111)) between ');
    sql.add(''''+formatdatetime('yyyy/MM/dd',DTP1.date)+''''+ ' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.date)+'''');
    if CB1.Checked then
    begin
      sql.add('and CFMID1='+''''+'NO'+'''');
    end;
    sql.add('order by JGZLSS.JGNO,JGZLSS.CLBH');
    active:=true;
  with DBGrideh2 do
  begin
    Tfloatfield(JGDet.Fields[4]).displayformat:='##,#0.00';
    Tfloatfield(JGDet.Fields[5]).displayformat:='##,#0.00';
  end;
 end;
end;

procedure TExtraPreview.FormDestroy(Sender: TObject);
begin
  ExtraPreview:=nil;
end;

procedure TExtraPreview.DBGrid1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if JGMas.FieldByName('ZMLB').value='ZZZZZZZZZZ' then
    DBGridEh1.canvas.font.color:=clBlue
end;

procedure TExtraPreview.FormCreate(Sender: TObject);
begin
  DTP1.date:=date-7  ;
  DTP2.date:=date;
  ReadIni();
end;

procedure TExtraPreview.Button2Click(Sender: TObject);
var   a:string;
      eclApp,WorkBook:olevariant;
 //     xlsFileName:string;
      i,j:integer;
begin
  if PC1.ActivePageIndex=0 then
  begin
    if  JGMas.active  then
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
          for   i:=0   to   JGMas.fieldcount-1   do
          begin
              eclApp.Cells(1,i+1):=JGMas.fields[i].FieldName;
          end;
          JGMas.First;
          j:=2;
          while   not   JGMas.Eof   do
          begin
            for   i:=0   to  JGMas.fieldcount-1  do
            begin
              eclApp.Cells(j,i+1):=JGMas.Fields[i].Value;
            end;
            JGMas.Next;
            inc(j);
          end;
         eclapp.columns.autofit;
         eclApp.Visible:=True;
         showmessage('Succeed');
        except
          on   F:Exception   do
            showmessage(F.Message);
        end;
      end;
   end else
   if PC1.ActivePageIndex=1 then
   begin
    if  JGDet.active  then
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
          for   i:=0   to   JGDet.fieldcount-1   do
          begin
              eclApp.Cells(1,i+1):=JGDet.fields[i].FieldName;
          end;
          JGDet.First;
          j:=2;
          while   not   JGDet.Eof   do
          begin
            for   i:=0   to  JGDet.fieldcount-1  do
            begin
              eclApp.Cells(j,i+1):=JGDet.Fields[i].Value;
            end;
            JGDet.Next;
            inc(j);
          end;
         eclapp.columns.autofit;
         eclApp.Visible:=True;
         showmessage('Succeed');
        except
          on   F:Exception   do
            showmessage(F.Message);
        end;
      end;
   end;
end;

procedure TExtraPreview.Excel1Click(Sender: TObject);
begin
  button2click(nil);
end;

procedure TExtraPreview.Button3Click(Sender: TObject);
begin
  PreviewTotal:=TPreviewTotal.Create(self);
  PreviewTotal.Show;
end;

end.
