unit ArticleType1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBTables, DBCtrls, DB, StdCtrls, Buttons, Grids, DBGrids,
  ExtCtrls, GridsEh, DBGridEh,ehlibBDE, PrnDbgeh,Comobj, Menus;

type
  TArticleType = class(TForm)
    DBGrid1: TDBGridEh;
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
    XXZL: TQuery;
    DS1: TDataSource;
    Qtemp: TQuery;
    XXZLXieXing: TStringField;
    XXZLXieMing: TStringField;
    XXZLKHDH: TStringField;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Panel3: TPanel;
    DBGridEh1: TDBGridEh;
    XXGX: TQuery;
    DS2: TDataSource;
    XXZLKFJC: TStringField;
    XXZLSheHao: TStringField;
    XXZLArticle: TStringField;
    XXZLDAOMH: TStringField;
    UpXXGX: TUpdateSQL;
    XXGXGX: TStringField;
    XXGXY_N: TBooleanField;
    XXGXMEMO: TStringField;
    CheckBox1: TCheckBox;
    PrintDBGridEh1: TPrintDBGridEh;
    XXGXSCCX: TStringField;
    XXGXNext: TStringField;
    allcheck: TCheckBox;
    Edit5: TEdit;
    Label5: TLabel;
    XXZLbuyno: TStringField;
    XXZLpairs: TIntegerField;
    CheckBox2: TCheckBox;
    Label6: TLabel;
    Edit6: TEdit;
    Label7: TLabel;
    Edit7: TEdit;
    Splitter1: TSplitter;
    XXZLXieXing_XXGX: TStringField;
    QCheck: TQuery;
    PopupMenu1: TPopupMenu;
    Savedata1: TMenuItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure BB1Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure BB7Click(Sender: TObject);
    procedure BBT1Click(Sender: TObject);
    procedure BBT2Click(Sender: TObject);
    procedure BBT3Click(Sender: TObject);
    procedure BBT4Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure XXZLAfterOpen(DataSet: TDataSet);
    procedure bbt6Click(Sender: TObject);
    procedure DBGrid1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure FormCreate(Sender: TObject);
    procedure Savedata1Click(Sender: TObject);
    procedure XXZLAfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
    procedure showXXGX();
  public
    { Public declarations }
  end;

var
  ArticleType: TArticleType;

implementation

uses main1;

{$R *.dfm}

procedure TArticleType.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if BB5.Enabled then
  begin
    showmessage('Pls save data first.');
    action:=canone;
  end
  else
    begin
      action:=cafree;
    end;
end;

procedure TArticleType.showXXGX();
begin
  if (((main.Edit2.text ='VA12') or(main.Edit2.text ='VC2') ) and (XXZL.fieldbyname('XieXing_XXGX').IsNull )) then
  begin
    //XXGX.active:=true;
    with QCheck do
    begin
      active:=false;
      sql.Clear;
      sql.Add('Select XieXing, SheHao, CSBH  ');
      sql.Add('From XXZLS  ');
      sql.Add('Where XieXing=:XieXing and SheHao=:SheHao  and CSBH=''JNGR2'' ');
      sql.Add('Group by XieXing, SheHao, CSBH ');
      active:=true;
      if Recordcount>0 then
      begin
        with XXGX do
        begin
          active:=false;
          sql.Clear;
          sql.Add('Select  SCGXDY.*,isnull(XXGX.SCCX,XXZLS.SCCX) as Next,isnull(XXGX.Y_N,xxzls.Y_N) as Y_N ');
          sql.Add('From (select  GX,SCCX,MEMO from SCGXDY where len(GXLB)=1 ) SCGXDY ');
          sql.Add('Left join (Select GXLB,SCCX,convert(bit,1) as Y_N from XXGX  where XXGX.XieXing=:XieXing and XXGX.SheHao=:SheHao) XXGX on XXGX.GXLB=SCGXDY.GX');
          sql.Add('Left join ( Select XieXing,SheHao, SCGXDY.GXLB,SCGXDY.SCCX,convert(bit,1) as Y_N  ');
          sql.Add('			       From ( select XieXing, SheHao  From XXZLS  where XieXing=:XieXing and SheHao=:SheHao Group by XieXing, SheHao ) XXZLS ');
          sql.Add('   				 Left join SCGXDY on 1=1   ');
          sql.Add('					   Where gxlb in (''A'',''B'',''C'',''O'',''S'',''W'',''Z'') ');
          sql.Add('   				) XXZLS on XXZLS.GXLB=SCGXDY.GX  ');
          sql.Add('Order by SCGXDY.SCCX ');
          active:=true;
        end;
      end else
      begin
        with XXGX do
        begin
          active:=false;
          sql.Clear;
          sql.Add('Select  SCGXDY.*,isnull(XXGX.SCCX,XXZLS.SCCX) as Next,isnull(XXGX.Y_N,xxzls.Y_N) as Y_N ');
          sql.Add('From (select  GX,SCCX,MEMO from SCGXDY where len(GXLB)=1 ) SCGXDY ');
          sql.Add('Left join (Select GXLB,SCCX,convert(bit,1) as Y_N from XXGX  where XXGX.XieXing=:XieXing and XXGX.SheHao=:SheHao) XXGX on XXGX.GXLB=SCGXDY.GX');
          sql.Add('Left join ( Select XieXing,SheHao, SCGXDY.GXLB,SCGXDY.SCCX,convert(bit,1) as Y_N  ');
          sql.Add('			       From ( select XieXing, SheHao  From XXZLS  where XieXing=:XieXing and SheHao=:SheHao Group by XieXing, SheHao ) XXZLS ');
          sql.Add('   				 Left join SCGXDY on 1=1   ');
          sql.Add('					   Where gxlb in (''A'',''B'',''C'',''O'',''S'',''Z'') ');
          sql.Add('   				) XXZLS on XXZLS.GXLB=SCGXDY.GX  ');
          sql.Add('Order by SCGXDY.SCCX ');
          active:=true;
        end;
      end;
    end;
  end else
  begin
    with XXGX do
    begin
      active:=false;
      sql.Clear;
      sql.Add('select  SCGXDY.*,XXGX.SCCX as Next,XXGX.Y_N  ');
      sql.Add('from (select  GX,SCCX,MEMO from SCGXDY where len(GXLB)=1 ) SCGXDY ');
      sql.Add('left join (select GXLB,SCCX,convert(bit,1) as Y_N from XXGX  where XXGX.XieXing=:XieXing and XXGX.SheHao=:SheHao) XXGX on XXGX.GXLB=SCGXDY.GX  ');
      sql.Add('order by SCGXDY.SCCX ');
      active:=true;
    end;
  end;
end;

procedure TArticleType.Button1Click(Sender: TObject);
begin
  with XXZL do
  begin
    active:=false;
    sql.Clear;
    sql.add('select XXZL.KHDH,KFZL.KFJC,XXZL.XieXing,XXZL.SheHao,XXZL.Article,XXZL.DAOMH,XXZL.XieMing');
    sql.add(',ddzl.buyno,sum(ddzl.pairs) as pairs,XXGX.XieXing as XieXing_XXGX ');
    sql.add('from XXZL ');
    sql.add('left join KFZL on KFZL.KFDH=XXZL.KHDH ');
    sql.add('left join kfxxzl on xxzl.xiexing=kfxxzl.xiexing and xxzl.shehao=kfxxzl.shehao');
    sql.add('left join ddzl on ddzl.xiexing=xxzl.XieXing and ddzl.shehao=xxzl.shehao');
    sql.Add('left join (select XieXing, SheHao From XXGX Group by XieXing,Shehao) XXGX on xxzl.XieXing=XXGX.XieXing and xxzl.SheHao=XXGX.SheHao ');
    sql.add('where XXZL.XieMing like '+''''+'%'+edit2.text+'%'+'''');
    sql.Add('      and KFZL.KFJC like '+''''+'%'+edit3.Text+'%'+'''');
    sql.add('      and XXZL.Article like '+''''+edit4.text+'%'+'''');
    sql.add('      and xxzl.xiexing like '+''''+edit1.text+'%'+'''');
    if edit6.Text<>'' then
       sql.add('      and xxzl.DAOMH like '+''''+'%'+edit6.text+'%'+'''');
    if edit7.Text<>'' then
       sql.add('      and kfxxzl.devcode like '+''''+edit7.text+'%'+'''');
    if edit5.Text<>'' then
       sql.add('      and ddzl.buyno like '+''''+edit5.text+'%'+'''');
    if not allcheck.Checked then
      begin
      sql.add('      and XXZL.YN='+''''+'1'+'''');
      end;
    //sql.Add('      and exists(select
    if checkbox1.Checked then
      begin
        sql.add('      and not exists(select XieXing,SheHao from XXGX ');
        sql.add('                     where XXGX.XieXing=XXZL.XieXing and XXGX.SheHao=XXZl.SheHao )');
      end;
    sql.add('group by XXZL.KHDH,KFZL.KFJC,XXZL.XieXing,XXZL.SheHao,XXZL.Article,XXZL.DAOMH,XXZL.XieMing,ddzl.buyno,XXGX.XieXing ');
    if checkbox2.Checked then
       sql.add('order by pairs desc')
    else
       sql.add('order by XXZL.KHDH,XXZL.XieXing,XXZL.SheHao');
    Active:=true;
  end;
  BB4.Enabled:=true;
  showXXGX();
end;

procedure TArticleType.BB1Click(Sender: TObject);
begin
  panel2.Visible:=true;
  edit1.SetFocus;
end;

procedure TArticleType.BB4Click(Sender: TObject);
begin
  XXGX.RequestLive:=true;
  XXGX.CachedUpdates:=true;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
end;

procedure TArticleType.BB6Click(Sender: TObject);
begin
  with XXGX do
  begin
    active:=false;
    RequestLive:=FALSE;
    CachedUpdates:=false;
    active:=true;
  end;
  BB5.Enabled:=false;
  BB6.Enabled:=false;
end;


procedure TArticleType.BB7Click(Sender: TObject);
begin
  close;
end;

procedure TArticleType.BBT1Click(Sender: TObject);
begin
  XXZL.First;
end;

procedure TArticleType.BBT2Click(Sender: TObject);
begin
  XXZL.prior;
end;

procedure TArticleType.BBT3Click(Sender: TObject);
begin
  XXZL.next;
end;

procedure TArticleType.BBT4Click(Sender: TObject);
begin
  XXZL.last;
end;

procedure TArticleType.FormDestroy(Sender: TObject);
begin
  ArticleType:=nil;
end;

procedure TArticleType.BB5Click(Sender: TObject);
begin

try
  with XXGX do
  begin
    first;
    while not eof do
      begin
        if XXGX.updatestatus=usmodified then
          begin
            if fieldbyname('SCCX').IsNull then
              begin
                showmessage('Pls key production No first.'+#13+'請輸入生產先後順序.') ;
                abort;
              end;
            Qtemp.Active:=false;
            Qtemp.SQL.Clear;
            Qtemp.SQL.add('delete XXGX ');
            Qtemp.SQL.add('where XieXing='+''''+XXZL.fieldbyname('XieXing').Value+'''');
            Qtemp.SQL.add('      and SheHao='+''''+XXZL.fieldbyname('SheHao').Value+'''');
            Qtemp.SQL.add('      and GXLB='+''''+XXGX.fieldbyname('GX').Value+'''');
            if XXGX.FieldByName('Y_N').Value then
              begin
                Qtemp.SQL.add('insert into XXGX ');
                Qtemp.SQL.add('(XieXing,SheHao,GXLB,SCCX,USERDate,USERID)');
                Qtemp.SQL.add('values ( '+''''+ XXZL.fieldbyname('XieXing').Value+''''+',');
                Qtemp.sql.add('            '''+XXZL.fieldbyname('SheHao').Value+''''+',');
                Qtemp.sql.add('            '''+XXGX.fieldbyname('GX').Value+''''+',');
                Qtemp.sql.add('            '''+XXGX.fieldbyname('SCCX').asstring+''''+',getdate(),');
                Qtemp.sql.add('            '''+main.Edit1.text+''''+')');
              end;
            Qtemp.execsql;
            Qtemp.active:=false;
          end;
        next;
      end;
    active:=false;
    requestlive:=false;
    cachedupdates:=false;
    active:=true;
  end;
  BB5.enabled:=false;
  BB6.enabled:=false;
except
  showmessage('Have wrong .');
end;

end;

procedure TArticleType.XXZLAfterOpen(DataSet: TDataSet);
begin
  with XXGX do
  begin
    active:=false;
    requestlive:=false;
    cachedupdates:=false;
    active:=true;
  end;
  BB5.Enabled:=false;
  BB6.Enabled:=false;
end;

procedure TArticleType.bbt6Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin
  if XXZL.Active then
  begin
    if XXZL.recordcount=0 then
    begin
      showmessage('No record.');
      abort;
    end;
  end else
  begin
    showmessage('No record.');
    abort;
  end;
  try
    eclApp:=CreateOleObject('Excel.Application');
    WorkBook:=CreateOleObject('Excel.Sheet');
  except
    Application.MessageBox('NO Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
    Exit;
  end;
  try
    WorkBook:=eclApp.workbooks.Add;
    eclApp.Cells(1,1):='NO';
    for   i:=1   to   XXZL.fieldcount   do
    begin
      eclApp.Cells(1,i+1):=XXZL.fields[i-1].FieldName;
    end;
    XXZL.First;
    j:=2;
    while   not  XXZL.Eof   do
    begin
        eclApp.Cells(j,1):=j-1;
        for   i:=1   to   XXZL.fieldcount   do
        begin
          eclApp.Cells(j,i+1):=XXZL.Fields[i-1].Value;
          eclApp.Cells.Cells.item[j,i+1].font.size:='8';
        end;
        XXZL.Next;
        inc(j);
    end;
    eclapp.columns.autofit;
    showmessage('Succeed.');
    eclApp.Visible:=True;
  except
    on   F:Exception   do
      showmessage(F.Message);
  end;
end;

procedure TArticleType.DBGrid1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if XXZL.FieldByName('XieXing_XXGX').IsNull then
  begin
    DBGrid1.canvas.font.color:=clred;
  end;
end;

procedure TArticleType.FormCreate(Sender: TObject);
begin
  if ((main.Edit2.text ='VA12') or (main.Edit2.text ='VC2')) then
  begin
     DBGridEh1.PopupMenu:=PopupMenu1;
  end;
end;

procedure TArticleType.Savedata1Click(Sender: TObject);
var i:integer;
begin
  if messagedlg('Are you sure save?',mtconfirmation,[mbYes,mbNo],0)=mrYes then
  begin
    XXGX.First;
    for i:=0 to XXGX.RecordCount-1 do
    begin
      if XXGX.fieldbyname('SCCX').IsNull then
      begin
        showmessage('Pls key production No first.'+#13+'請輸入生產先後順序.') ;
        abort;
      end;
      Qtemp.Active:=false;
      Qtemp.SQL.Clear;
      Qtemp.SQL.add('delete XXGX ');
      Qtemp.SQL.add('where XieXing='+''''+XXZL.fieldbyname('XieXing').Value+'''');
      Qtemp.SQL.add('      and SheHao='+''''+XXZL.fieldbyname('SheHao').Value+'''');
      Qtemp.SQL.add('      and GXLB='+''''+XXGX.fieldbyname('GX').Value+'''');
      if XXGX.FieldByName('Y_N').Value then
      begin
        Qtemp.SQL.add('insert into XXGX ');
        Qtemp.SQL.add('(XieXing,SheHao,GXLB,SCCX,USERDate,USERID)');
        Qtemp.SQL.add('values ( '+''''+ XXZL.fieldbyname('XieXing').Value+''''+',');
        Qtemp.sql.add('            '''+XXZL.fieldbyname('SheHao').Value+''''+',');
        Qtemp.sql.add('            '''+XXGX.fieldbyname('GX').Value+''''+',');
        Qtemp.sql.add('            '''+XXGX.fieldbyname('SCCX').asstring+''''+',getdate(),');
        Qtemp.sql.add('            '''+main.Edit1.text+''''+')');
      end;
      Qtemp.execsql;
      Qtemp.active:=false;
      XXGX.Next;
    end;
  end;
end;

procedure TArticleType.XXZLAfterScroll(DataSet: TDataSet);
begin
  showXXGX();
end;

end.
