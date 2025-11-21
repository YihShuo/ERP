unit TPToFinished1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GridsEh, DBGridEh, StdCtrls, ExtCtrls, DB, DBTables, DBGridEhImpExp,
  ShellAPI;

type
  TTPToFinished = class(TForm)
    Panel14: TPanel;
    Label65: TLabel;
    Label66: TLabel;
    DevCode_Edit: TEdit;
    Query: TButton;
    Excel: TButton;
    JiJie_Combobox: TComboBox;
    SaveDialog1: TSaveDialog;
    DBGridEh1: TDBGridEh;
    KFJD_Combobox: TComboBox;
    Label45: TLabel;
    Subtype_Combobox: TComboBox;
    Label56: TLabel;
    LAIV: TRadioButton;
    DataSource1: TDataSource;
    YPZL_Qry: TQuery;
    TempQry: TQuery;
    BYIV: TRadioButton;
    LAIK: TRadioButton;
    BYIK: TRadioButton;
    procedure QueryClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ExcelClick(Sender: TObject);
  private
    NDate:TDate;
  public
    { Public declarations }
  end;

var
  TPToFinished: TTPToFinished;

implementation

uses main1;

{$R *.dfm}

procedure TTPToFinished.QueryClick(Sender: TObject);
begin
 if (JiJie_Combobox.Text='') and (DevCode_edit.Text='') then
  showmessage('Please input Data first!!! Thank you~')
 else
  with YPZL_Qry do
  begin
    active:=false;
    sql.clear;
    sql.add('Select Distinct kfxxzl.JiJie as ''Season'',kfxxzl.DEVCODE as ''SR#'',YPZL.KFJD ''Dev Stage'',YPZL.Subtype as ''Dev Type'' ');
    sql.add(',SUBSTRING(YPZL.YPDH,1,4) as ''Shipment'',R3Sample.TPdate as ''TP Date'',DelDate as ''BOM Date'',recheckdate as ''Develop Date'' ');
//    sql.add(',SUBSTRING(YPZL.YPDH,1,4) as ''Shipment'',R3Sample.TPdate as ''TP Date'',BModRec_Dev.DelDate as ''BOM Date'',recheckdate as ''Develop Date'' ');
    sql.add(',recieveDate as ''Purchase Date'',Max(Kcrks.USERDATE) AS ''MTRL In Coming Date'' ');
    if LAIV.Checked or BYIV.Checked then
      sql.add(',SHOETEST.preparationDate as ''Warehouse Scan Date'' ');
    sql.add('  FROM YPZL YPZL ');
    sql.add('Left Join kfxxzl kfxxzl ON YPZL.XieXing = kfxxzl.XieXing AND YPZL.SheHao = kfxxzl.SheHao ');
    sql.add('Left Join xxzlKF ON xxzlKF.XieXing = kfxxzl.XieXing AND xxzlKF.SheHao = kfxxzl.SheHao ');
    sql.add('Left Join BUsers ON BUsers.UserID=YPZL.UserID ');
    //增加TP Date時間
    sql.add('Left Join  R3Sample on R3Sample.xiexing=kfxxzl.xiexing and R3Sample.shehao=kfxxzl.shehao ');
    //增加倉庫入庫時間
    sql.add('Left Join SHOETEST ON YPZL.YPDH=SHOETEST.YPDH ');
    //增加倉庫掃描時間用的
    sql.add('LEFT JOIN KCRKS ON YPZL.YPDH=KCRKS.CGBH ');
//    sql.add('Left Join (select a.TNO,a.DelDate,b.recieveDate,b.recheckdate from (select min(DelDate) as DelDate,TNO from BModRec_Dev where article=''FD_check'' group by TNO)a ');
//    sql.add('Left Join (select recheckdate,TNO,DelDate,recieveDate from BModRec_Dev where article=''FD_check'')b on b.TNO=a.TNO and a.DelDate=b.DelDate group by a.TNO,a.DelDate,b.recieveDate,b.recheckdate ');
//    sql.add(')BModRec_Dev on TNO=YPZL.YPDH ');
    sql.add('where YPZL.GSDH=''CDC'' ');
    if JiJie_Combobox.Text<>'' then
      sql.add('and kfxxzl.JiJie like ''%'+JiJie_Combobox.Text+'%'+''' ');
    if DevCode_edit.Text<>'' then
      sql.add('and kfxxzl.DEVCODE like ''%'+DevCode_edit.Text+'%'+''' ');
    if KFJD_Combobox.Text<>'' then
      sql.add('and YPZL.KFJD like ''%'+KFJD_Combobox.Text+'%'+''' ');
    if SubType_Combobox.Text<>'' then
      sql.add('and kfxxzl.DevType like ''%'+SubType_Combobox.Text+'%'+''' ');
    if LAIV.Checked then
      sql.add('and YPZL.YPDH like ''%LAIV%'' ');
    if BYIV.Checked then
      sql.add('and YPZL.YPDH like ''%BYIV%'' ');
    if LAIK.Checked then
      sql.add('and YPZL.YPDH like ''%LAIK%'' ');
    if BYIK.Checked then
      sql.add('and YPZL.YPDH like ''%BYIK%'' ');
    sql.add('group by kfxxzl.JiJie,kfxxzl.DEVCODE,YPZL.KFJD,YPZL.Subtype,YPZL.YPDH,R3Sample.TPdate,DelDate,recheckdate,recieveDate ');
//    sql.add('group by kfxxzl.JiJie,kfxxzl.DEVCODE,YPZL.KFJD,YPZL.Subtype,YPZL.YPDH,R3Sample.TPdate,BModRec_Dev.DelDate,recheckdate,recieveDate ');
    if LAIV.Checked or BYIV.Checked then
      sql.add(',SHOETEST.preparationDate ');
    sql.add('order by kfxxzl.DEVCODE desc  ');
    //showmessage(sql.Text);
   Active:=true;
  end;
  Dbgrideh1.Columns[0].Width:=50;
  Dbgrideh1.Columns[0].Title.Alignment:=taCenter;
  Dbgrideh1.Columns[0].Alignment:=taCenter;
  DBGridEh1.Columns[0].Footer.ValueType:= fvtCount;
  Dbgrideh1.Columns[1].Width:=130;
  Dbgrideh1.Columns[1].Title.Alignment:=taCenter;
  Dbgrideh1.Columns[1].Alignment:=taCenter;
  Dbgrideh1.Columns[2].Width:=75;
  Dbgrideh1.Columns[2].Title.Alignment:=taCenter;
  Dbgrideh1.Columns[2].Alignment:=taCenter;
  Dbgrideh1.Columns[3].Width:=85;
  Dbgrideh1.Columns[3].Title.Alignment:=taCenter;
  Dbgrideh1.Columns[3].Alignment:=taCenter;
  Dbgrideh1.Columns[4].Width:=100;
  Dbgrideh1.Columns[4].Title.Alignment:=taCenter;
  Dbgrideh1.Columns[4].Alignment:=taCenter;
  Dbgrideh1.Columns[5].Width:=140;
  Dbgrideh1.Columns[5].Title.Alignment:=taCenter;
  Dbgrideh1.Columns[5].Alignment:=taCenter;
  Dbgrideh1.Columns[6].Width:=140;
  Dbgrideh1.Columns[6].Title.Alignment:=taCenter;
  Dbgrideh1.Columns[6].Alignment:=taCenter;
  Dbgrideh1.Columns[7].Width:=140;
  Dbgrideh1.Columns[7].Title.Alignment:=taCenter;
  Dbgrideh1.Columns[7].Alignment:=taCenter;
  Dbgrideh1.Columns[8].Width:=140;
  Dbgrideh1.Columns[8].Title.Alignment:=taCenter;
  Dbgrideh1.Columns[8].Alignment:=taCenter;
  Dbgrideh1.Columns[9].Width:=140;
  Dbgrideh1.Columns[9].Title.Alignment:=taCenter;
  Dbgrideh1.Columns[9].Alignment:=taCenter;
  if LAIV.Checked or BYIV.Checked then
  begin
    Dbgrideh1.Columns[10].Width:=140;
    Dbgrideh1.Columns[10].Title.Alignment:=taCenter;
    Dbgrideh1.Columns[10].Alignment:=taCenter;
  end;
end;

procedure TTPToFinished.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=Cafree;
end;

procedure TTPToFinished.FormDestroy(Sender: TObject);
begin
  TPToFinished:=nil;
end;

procedure TTPToFinished.FormCreate(Sender: TObject);
begin
  with TempQry do //抓取season
  begin
     active:=false;
     sql.Clear;
     sql.add('select jijie from kfxxzl');
     SQL.add('left join kfzl_GS on kfzl_GS.KHBH=kfxxzl.KHDH');
     sql.add('where FD is not null and kfzl_GS.GSBH='''+main.Edit2.Text+''' ');
     SQL.add('and right(left(jijie,2),2) between ''16'' and ''99'' and len(jijie)=''3''');
     sql.add('group by jijie');
     sql.add('order by jijie desc');
     active:=true;
     JiJie_Combobox.items.clear;
     while not eof do
     begin
       JiJie_Combobox.items.add(fieldbyname('jijie').asstring );
       next;
     end;
  end;
  JiJie_Combobox.ItemIndex:=0;
//
  with TempQry do  //抓取階段
  begin
    Active:=false;
    Sql.Clear;
    Sql.add('select getdate() as NDate ');
    active:=true;
    NDate:=fieldbyname('NDate').Value;
    active:=false;
    sql.Clear;
    sql.Add('select lbdh from lbzls where  lbzls.lb = ''04'' and bz1=''Tyxuan'' order by lbdh ');
    active:=true;
    KFJD_Combobox.Items.Clear;
    KFJD_Combobox.Items.Add('');
    while not eof do
    begin
      KFJD_Combobox.Items.Add(FieldByName('lbdh').AsString);
      Next;
    end;
  end;
end;

procedure TTPToFinished.ExcelClick(Sender: TObject);
var
  ExpClass:TDBGridEhExportClass;
  Ext, target:String;
  tdbgh : TDBGridEh;

begin
 if (DBGrideh1.DataSource.DataSet.Active=true) and (DBGrideh1.DataSource.DataSet.RecordCount>0) then
 begin
  if YPZL_Qry.Active=true then
  begin
    ExpClass:=TDBGridEhExportAsXLS;
    if SaveDialog1.Execute()=true then
    begin
      if UpperCase(Copy(SaveDialog1.FileName,Length(SaveDialog1.FileName)-2,3)) <> UpperCase(Ext) then
        SaveDialog1.FileName := SaveDialog1.FileName + '.xls';
        SaveDBGridEhToExportFile(ExpClass,Dbgrideh1,SaveDialog1.FileName,true);
      if Application.MessageBox('Do you want to open the exported file?','Open file',MB_YESNO) = IDYES then
        shellexecute(handle,'open',pchar(SaveDialog1.FileName),nil,nil,SW_SHOWNORMAL);
    end;
  end;
 end else
 showmessage('You have not Data, Please Query !!! Thank you~')
end;

end.
