unit EmbArticle1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBTables, DB, Buttons, StdCtrls, Grids, DBGrids, ExtCtrls,
  DBCtrls, Menus,comobj;

type
  TEmbArticle = class(TForm)
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    Panel3: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Button1: TButton;
    Edit2: TEdit;
    Edit3: TEdit;
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
    DS1: TDataSource;
    Query1: TQuery;
    UpSQL1: TUpdateSQL;
    Label4: TLabel;
    Edit4: TEdit;
    CheckBox1: TCheckBox;
    Panel4: TPanel;
    DBGrid2: TDBGrid;
    Panel5: TPanel;
    DBGrid3: TDBGrid;
    DXBW: TQuery;
    DS2: TDataSource;
    Query1XieXing: TStringField;
    Query1Article: TStringField;
    Query1XieMing: TStringField;
    Query1KHDH: TStringField;
    DXBWBWBH: TStringField;
    DXBWYWSM: TStringField;
    DXBWEmbroider: TStringField;
    DC1: TDBCheckBox;
    UpdateSQL1: TUpdateSQL;
    DXXX: TQuery;
    DS3: TDataSource;
    UpdateSQL2: TUpdateSQL;
    TDXXX: TTable;
    Query1CCGB: TStringField;
    DXXXXieXing: TStringField;
    DXXXLineNum: TStringField;
    DXXXCC: TStringField;
    DXXXDXBH: TStringField;
    PopupMenu1: TPopupMenu;
    S1: TMenuItem;
    DXBWXieXing: TStringField;
    DC2: TDBComboBox;
    Query2: TQuery;
    DXBW2: TQuery;
    UpDXBW: TUpdateSQL;
    Query1DXBH: TStringField;
    DXBWJGYWSM: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure BB1Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure BB7Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure DBGrid3DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormCreate(Sender: TObject);
    procedure S1Click(Sender: TObject);
    procedure DXBW2AfterOpen(DataSet: TDataSet);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid2ColEnter(Sender: TObject);
    procedure DBGrid3ColEnter(Sender: TObject);
    procedure bbt6Click(Sender: TObject);
    procedure BBT1Click(Sender: TObject);
    procedure BBT2Click(Sender: TObject);
    procedure BBT3Click(Sender: TObject);
    procedure BBT4Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  EmbArticle: TEmbArticle;
  a:string;

implementation

uses main1;

{$R *.dfm}

procedure TEmbArticle.FormClose(Sender: TObject; var Action: TCloseAction);
begin
with query2 do
  begin
    active:=false;
    sql.Clear;
    sql.Add('delete DXXX ');
    sql.add('where not exists(select XieXing,BWBH from DXBW where DXXX.XieXing=DXBW.XieXing)');
    execsql;
  end;

if bb5.enabled then
  begin
    messagedlg('You have to save data first.',mtwarning,[mbyes],0);
    action:=canone;
  end
  else
   action:=Cafree;
end;

procedure TEmbArticle.Button1Click(Sender: TObject);
begin
with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.Add('select XXZL.XieXing,max(XXZL.Article) as Article,max(DXXX.DXBH) as DXBH,');
    sql.add('max(XXZL.XieMing) as XieMing,XXZL.KHDH ,max(XXZL.CCGB) as CCGB ');
    sql.add('from XXZL');
    sql.add('left join DXXX on DXXX.XieXing=XXZL.XieXing');
    sql.add('where XXZL.Article like '+''''+edit2.Text+'%'+'''');
    sql.add('and XXZL.XieMing like '+''''+'%'+edit3.Text+'%'+'''');
    sql.add('and XXZL.KHDH like '+''''+edit4.text+'%'+'''');
    if checkbox1.Checked then
      begin
        sql.add('and exists(select DDZL.DDBH from DDZL ');
        sql.add('left join ZLZL on ZLZL.ZLBH=DDZL.ZLBH ');
        sql.add('where ZLZL.CQDH='+''''+'LTY'+'''');
        sql.add(' and DDZL.DDZT='+''''+'Y'+''''+' and DDZL.XieXing=XXZL.XieXing )');
      end;
    sql.add('group by XXZL.XieXing,XXZL.KHDH');
    sql.add('order by XXZL.XieXing,XXZL.KHDH');
    active:=true;
  end;
BB4.enabled:=true;
DXBW.Active:=true;
DXBW2.Active:=true;
bbt6.Enabled:=true;
end;

procedure TEmbArticle.BB1Click(Sender: TObject);
begin
panel3.Visible:=true;
end;

procedure TEmbArticle.BB4Click(Sender: TObject);
begin
if Query1.recordcount>0 then
  begin
    DXBW.RequestLive:=true;
    DXBW.CachedUpdates:=true;
    DXXX.RequestLive:=true;
    DXXX.CachedUpdates:=true;
    TDXXX.Active:=true;
    S1.Enabled:=true;
  end;
BB5.Enabled:=true;
BB6.Enabled:=true;
end;

procedure TEmbArticle.DBGrid2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
//if DXBW.RequestLive then
  begin
    if (gdFocused in State) then
     begin
       if (DataCol=2) then
         begin
           DC1.Left:=Rect.Left  + DBGrid2.Left;
           DC1.Top:=Rect.Top   + DBGrid2.top;
           DC1.Width:=Rect.Right - Rect.Left;
           DC1.Height:=Rect.Bottom- Rect.Top;
           DC1.Visible:=True;
         end;
     end
  end;

end;

procedure TEmbArticle.BB7Click(Sender: TObject);
begin
close;
end;

procedure TEmbArticle.BB6Click(Sender: TObject);
begin
DXXX.requestlive:=false;
DXXX.CachedUpdates:=false;
DXBW2.active:=false;
DXBW.Active:=false;
DXBW.RequestLive:=false;
DXBW.CachedUpdates:=false;
DXBW.Active:=true;
DXBW2.active:=true;
Dc1.Visible:=false;
S1.Enabled:=false;
BB5.Enabled:=false;
BB6.Enabled:=false;
end;

procedure TEmbArticle.BB5Click(Sender: TObject);
begin
if DXBW.recordcount>0 then
  begin
  if DXXX.active then
    begin
      with DXXX do
        begin
          first;
          while not eof do
            begin
              if updatestatus=usmodified then
                begin
                  if not fieldbyname('DXBH').IsNull then
                    begin
                      if TDXXX.Locate('XieXing;LineNum',vararrayof([FieldByName('XieXing').Value,FieldByName('LineNum').Value]),[]) then
                        begin
                          TDXXX.Edit;
                          TDXXX.FieldByName('DXBH').Value:=fieldbyname('DXBH').Value;
                          TDXXX.FieldByName('USERDATE').Value:=date;
                          TDXXX.FieldByName('USERID').Value:= main.edit1.text;
                          TDXXX.post;
                        end
                        else
                          begin
                            TDXXX.Insert;
                            TDXXX.FieldByName('XieXing').Value:=fieldbyname('XieXing').Value;
                            TDXXX.FieldByName('LineNum').Value:=fieldbyname('LineNum').Value;
                            TDXXX.FieldByName('DXBH').Value:=fieldbyname('DXBH').Value;
                            TDXXX.FieldByName('USERDATE').Value:=date;
                            TDXXX.FieldByName('USERID').Value:= main.edit1.text;
                            TDXXX.FieldByName('YN').Value:='1';
                            TDXXX.post;
                          end;
                    end;
                end;
              next;
            end;
        end;
    end;
    with DXBW do
      begin
        first;
        while not eof do
          begin
            if updatestatus=usmodified then
              begin
                if fieldbyname('Embroider').value='No' then
                  begin
                    if  DXBW2.Locate('XieXing;BWBH',vararrayof([FieldByName('XieXing').Value,FieldByName('BWBH').Value]),[]) then
                      begin
                      //  showmessage('AAAA');
                        UpDXBW.apply(ukDelete);
                      end;
                  end
                  else
                    begin
                      if not DXBW2.Locate('XieXing;BWBH',vararrayof([FieldByName('XieXing').Value,FieldByName('BWBH').Value]),[]) then
                        begin
                          DXBW2.Insert;
                          DXBW2.FieldByName('XieXing').Value:=fieldbyname('XieXing').Value;
                          DXBW2.FieldByName('BWBH').Value:=fieldbyname('BWBH').Value;
                          DXBW2.FieldByName('USERDATE').Value:=date;
                          DXBW2.FieldByName('USERID').Value:=main.edit1.text;
                          DXBW2.FieldByName('YN').Value:='1';
                          DXBW2.Post;
                          UpDXBW.Apply(ukinsert);
                        end;
                    end;
              end;
            next;
          end;
      end;
  end;
DXXX.requestlive:=false;
DXXX.CachedUpdates:=false;
DXBW.active:=false;
DXBW2.Active:=false;
DXBW.RequestLive:=false;
DXBW.CachedUpdates:=false;
DXBW.active:=true;
DXBW2.Active:=true;
Dc1.Visible:=false;
S1.Enabled:=false;  
BB5.Enabled:=false;
BB6.Enabled:=false;


end;

procedure TEmbArticle.DBGrid3DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
//if DXXX.RequestLive then
  begin
    if (gdFocused in State) then
     begin
     if (DataCol=1) then
       begin
       DC2.Left:=Rect.Left  + DBGrid3.Left;
       DC2.Top:=Rect.Top   + DBGrid3.top;
       DC2.Width:=Rect.Right - Rect.Left;
       DC2.Height:=Rect.Bottom- Rect.Top;
       DC2.Visible:=True;
       end;
    end ;
  end ;
end;

procedure TEmbArticle.FormCreate(Sender: TObject);
begin
with query2 do
  begin
    active:=false;
    sql.clear;
    sql.add('select DXBH from DXZL order by DXBH');
    active:=true;
    DC2.Items.Clear;
    while not eof do
      begin
        DC2.Items.Add(fieldbyname('DXBH').Value);
        next;
      end;
  end;
end;

procedure TEmbArticle.S1Click(Sender: TObject);
var a:string;
begin
if not DXXX.fieldbyname('DXBH').isnull then
  begin
    a:=DXXX.fieldbyname('DXBH').asstring;
    with DXXX do
      begin
        first;
        while not eof do
          begin
            if (fieldbyname('DXBH').IsNull) or (fieldbyname('DXBH').value='') then
              begin
                edit;
                fieldbyname('DXBH').Value:=a;
              end;
            next;
          end;
      end;
  end;  
        showmessage(a);
end;

procedure TEmbArticle.DXBW2AfterOpen(DataSet: TDataSet);
begin
DXXX.active:=false;
if DXBW2.RecordCount>0 then
  begin
    with query1 do
      begin
        if fieldbyname('CCGB').Value='K' then
          begin
            a:='XXZLS3.UK_Size';
          end;
        if fieldbyname('CCGB').Value='U' then
          begin
            a:='XXZLS3.US_Size';
          end;
        if fieldbyname('CCGB').Value='J' then
          begin
            a:='XXZLS3.JPN_Size';
          end;
        if fieldbyname('CCGB').Value='E' then
          begin
            a:='XXZLS3.EUR_Size';
          end;
        if fieldbyname('CCGB').Value='M' then
          begin
            a:='XXZLS3.MX_Size';
          end;
        if fieldbyname('CCGB').Value='O' then
          begin
            a:='XXZLS3.OTH_Size';
          end;
      end;
    with DXXX do
      begin
        active:=false;
        sql.clear;
        sql.add('select XXZLS3.XieXing,XXZLS3.LineNum,'+a);
        sql.add(' as CC,DXXX.DXBH');
        sql.add(' from XXZLS3');
        sql.add('left join DXXX on XXZLS3.XieXing=DXXX.XieXing and XXZLS3.LineNum=DXXX.LineNum');
        sql.add('where XXZLS3.XieXing='+''''+query1.fieldbyname('XieXing').Value+'''');
        sql.add('order by XXZLS3.LineNum');
        active:=true;
      end;
  end;

end;

procedure TEmbArticle.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
 if Query1.FieldByName('DXBH').isnull then
  begin
    dbgrid1.canvas.font.color:=clred;
    dbgrid1.defaultdrawcolumncell(rect,datacol,column,state);
  end;
end;

procedure TEmbArticle.DBGrid2ColEnter(Sender: TObject);
begin

if dbgrid2.selectedfield.fieldname<>DC1.datafield then
  begin
    DC1.visible:=false;
  end;
end;

procedure TEmbArticle.DBGrid3ColEnter(Sender: TObject);
begin

if dbgrid3.selectedfield.fieldname<>DC2.datafield then
  begin
    DC2.visible:=false;
  end;
end;

procedure TEmbArticle.bbt6Click(Sender: TObject);
var   a:string;
      eclApp,WorkBook:olevariant;
 //     xlsFileName:string;
      i,j:integer;
 begin
  if  query1.active  then
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
        for   i:=0   to   query1.fieldcount-1   do
          begin
              eclApp.Cells(1,i+1):=query1.fields[i].FieldName;
          end;

        query1.First;
        j:=2;
        while   not   query1.Eof   do
          begin
            for   i:=0   to  query1.fieldcount-1  do
            begin
              eclApp.Cells(j,i+1):=query1.Fields[i].Value;
            end;
          query1.Next;
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

procedure TEmbArticle.BBT1Click(Sender: TObject);
begin
query1.First;
end;

procedure TEmbArticle.BBT2Click(Sender: TObject);
begin
query1.prior;
end;

procedure TEmbArticle.BBT3Click(Sender: TObject);
begin
query1.next;
end;

procedure TEmbArticle.BBT4Click(Sender: TObject);
begin
query1.last;
end;

procedure TEmbArticle.FormDestroy(Sender: TObject);
begin
EmbArticle:=nil;
end;

end.
