unit ScanInbox1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBTables, DB, StdCtrls, DBCtrls, GridsEh, DBGridEh, Buttons,
  ExtCtrls, Menus, Comobj;

type
  TScanInbox = class(TForm)
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
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Edit2: TEdit;
    CheckBox1: TCheckBox;
    edit3: TEdit;
    Edit4: TEdit;
    YWCPLH: TQuery;
    DS2: TDataSource;
    UPYWCPLH: TUpdateSQL;
    Query1: TQuery;
    DBGrid1: TDBGridEh;
    YWCPLHXieXing: TStringField;
    YWCPLHSheHao: TStringField;
    YWCPLHArticle: TStringField;
    YWCPLHDAOMH: TStringField;
    YWCPLHXieMing: TStringField;
    YWCPLHKFJC: TStringField;
    YWCPLHXXCC: TStringField;
    YWCPLHInBoxBar: TStringField;
    YWCPLHGBBH: TStringField;
    YWCPLHYWSM: TStringField;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    Label5: TLabel;
    DDBHEdit: TEdit;
    Label6: TLabel;
    BuyNoEdit: TEdit;
    bbt7: TBitBtn;
    OpenDialog: TOpenDialog;
    Label7: TLabel;
    YWCPLHiXXCC: TStringField;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure Button1Click(Sender: TObject);
    procedure BB7Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure YWCPLHNewRecord(DataSet: TDataSet);
    procedure BB5Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure DBGrid1EditButtonClick(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure bbt6Click(Sender: TObject);
    procedure bbt7Click(Sender: TObject);
  private
    { Private declarations }
    procedure ImportInBoxExcel();
  public
    { Public declarations }
  end;

var
  ScanInbox: TScanInbox;

implementation

uses main1, ScanInbox_GB1, FunUnit;

{$R *.dfm}

procedure TScanInbox.FormDestroy(Sender: TObject);
begin
  ScanInbox:=nil;
end;

procedure TScanInbox.FormClose(Sender: TObject; var Action: TCloseAction);
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

procedure TScanInbox.DBGrid1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin

if YWCPLH.fieldbyname('USERDate').IsNull then
  begin
     DBGrid1.canvas.Font.Color:=clred;
  end;
end;

procedure TScanInbox.Button1Click(Sender: TObject);
begin

  with YWCPLH do
  begin
    active:=false;
    sql.Clear;
    sql.add('select * from ( ');
    sql.add('select  XXZL.XieXing,XXZL.SheHao,XXZL.Article,XXZL.DAOMH,XXZL.XieMing,KFZL.KFJC,XXZLCC.XXCC,');
    //sql.add('        YWCPLH.InBoxBar,YWCPLH.GBBH,LBZLS.YWSM,Convert(float,XXZLCC.XXCC) as iXXCC ');
    //20230508 fixed error iXXCC
    sql.add('        YWCPLH.InBoxBar,YWCPLH.GBBH,LBZLS.YWSM,XXZLCC.XXCC as iXXCC ');
    sql.add('from (select distinct DDZL.XieXing,DDZL.SheHao,ZLZLS.XXCC from DDZL ');
    sql.add('           left join DDZLS on DDZL.DDBH=DDZLS.DDBH ');
    sql.add('           left join ZLZLS on ZLZLS.ZLBH=DDZL.ZLBH and ZLZLS.ZLCC=DDZLS.CC ');
    sql.add('           where DDZL.ShipDate>'+''''+'2009/04/01'+''''+') XXZLCC');
    sql.add('left join XXZL on XXZl.XieXing=XXZLCC.XieXing and XXZLCC.SheHao=XXZL.SheHao');
    sql.add('left join KFZL on KFZL.KFDH=XXZL.KHDH ');
    sql.add('left join YWCPLH on YWCPLH.XieXing=XXZLCC.XieXing and YWCPLH.SheHao=XXZLCC.SheHao and YWCPLH.XXCC=XXZLCC.XXCC');
    sql.add('left join LBZLS on LBZLS.LB='+''''+'06'+''''+' and LBZLS.LBDH=YWCPLH.GBBH');
    sql.add('where XXZL.XieXing like '+''''+edit1.Text+'%'+'''');
    sql.add('      and XXZL.XieMing like '+''''+'%'+edit2.text+'%'+'''');
    sql.Add('      and KFZL.KFJC like '+''''+edit3.Text+'%'+'''');
    sql.add('      and XXZL.Article like '+''''+edit4.text+'%'+'''');
    sql.add('      and XXZLCC.XXCC is not null ');
    if Checkbox1.Checked then
    begin
        sql.add('    and YWCPLH.InboxBar is null ');
    end;
    sql.add(') YWCPLH ');
    if ((DDBHEdit.Text<>'') or (BuyNoEdit.Text<>'')) then
    begin
      sql.add('where article in ( select Article from DDZL where DDBH like '''+DDBHEdit.Text+'%'' and BUYNO like '''+BuyNoEdit.Text+'%'' Group by Article) ');
    end;
    sql.add('order by  YWCPLH.XieXing,YWCPLH.SheHao,YWCPLH.XXCC');
    //FuncObj.WriteErrorLog(sql.Text);
    active:=true;
  end;
  BB4.Enabled:=true;
  BBT6.enabled:=true;
end;

procedure TScanInbox.BB7Click(Sender: TObject);
begin

close;
end;

procedure TScanInbox.BB4Click(Sender: TObject);
begin

with YWCPLH do
  begin
    cachedupdates:=true;
    requestlive:=true;
  end;
N1.enabled:=true;
BB5.Enabled:=true;
BB6.Enabled:=true;
DBGrid1.columns[5].buttonstyle:=cbsellipsis;
end;

procedure TScanInbox.YWCPLHNewRecord(DataSet: TDataSet);
begin

abort;
end;

procedure TScanInbox.BB5Click(Sender: TObject);
var i:integer;
begin

try
YWCPLH.First;
while not YWCPLH.Eof do
  begin
    if YWCPLH.updatestatus=usmodified then
      begin
        if not YWCPLH.fieldbyname('Inboxbar').isnull then
          begin
            if YWCPLH.FieldByName('GBBH').IsNull then
              begin
                YWCPLH.Edit;
                YWCPLH.FieldByName('GBBH').value:='NORMAL';
                YWCPLH.Post;
              end;
            with query1 do
              begin
                active:=false;
                sql.clear;
                sql.add('delete YWCPLH');
                sql.add('where  XieXing='+''''+YWCPLH.fieldbyname('XieXing').Value+'''');
                sql.add('      and SheHao='+''''+YWCPLH.fieldbyname('SheHao').Value+'''');
                sql.add('      and XXCC='+''''+YWCPLH.fieldbyname('XXCC').Value+'''');
                sql.add('      and GBBH='+''''+YWCPLH.fieldbyname('GBBH').Value+'''');
                sql.Add('insert into YWCPLH ');
                sql.add('(XieXing,SheHao, XXCC, GBBH, InboxBar, USERDATE, USERID, YN) ');
                sql.add('values  ('+''''+YWCPLH.fieldbyname('XieXing').Value+''''+','); 
                sql.add(''''+YWCPLH.fieldbyname('SheHao').asstring+''''+',');
                sql.add(''''+YWCPLH.fieldbyname('XXCC').asstring+''''+',');  
                sql.add(''''+YWCPLH.fieldbyname('GBBH').asstring+''''+',');
                sql.add(''''+uppercase(YWCPLH.fieldbyname('InboxBar').asstring)+''''+',getdate(),');
                sql.add(''''+main.edit1.Text+''''+','+''''+'1'+''''+')');
                execsql;
              end;
          end;
      end;
    YWCPLH.Next;
  end;
with YWCPLH do
  begin
    active:=false;
    requestlive:=false;
    cachedupdates:=false;
    active:=true;
  end;
N1.enabled:=false;
BB5.Enabled:=false;
BB6.Enabled:=false;
DBGrid1.columns[5].buttonstyle:=cbsnone;
showmessage('Succeed');
except
  showmessage('Have wrong');
end;

end;

procedure TScanInbox.BB6Click(Sender: TObject);
begin   
with YWCPLH do
  begin
    active:=false;
    cachedupdates:=false;
    requestlive:=false;
    active:=true;
  end;
N1.enabled:=false;
BB5.Enabled:=false;
BB6.Enabled:=false;
DBGrid1.columns[5].buttonstyle:=cbsnone;
end;

procedure TScanInbox.DBGrid1EditButtonClick(Sender: TObject);
begin
  ScanInbox_GB:=TScanInbox_GB.create(self);
  ScanInbox_GB.show;
end;

procedure TScanInbox.N1Click(Sender: TObject);
begin
  YWCPLH.Edit;
  YWCPLH.FieldByName('GBBH').value:='NORMAL';
  YWCPLH.Post;
end;

procedure TScanInbox.bbt6Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin
  if  YWCPLH.active  then
  begin
    try
      eclApp:=CreateOleObject('Excel.Application');
      WorkBook:=CreateOleObject('Excel.Sheet');
    except
      Application.MessageBox('No Mcrosoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
      Exit;
    end;
    try
      WorkBook:=eclApp.workbooks.Add;
      for   i:=0   to   YWCPLH.fieldcount-1    do
      begin
        eclApp.Cells(1,i+1):=YWCPLH.fields[i].FieldName;
      end;
      YWCPLH.First;
      j:=2;
      while   not   YWCPLH.Eof   do
      begin
        for i:=0   to   YWCPLH.fieldcount-1   do
        begin
          eclApp.Cells(j,i+1):=YWCPLH.Fields[i].Value;
        end;
        YWCPLH.Next;
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
//
procedure TScanInbox.ImportInBoxExcel();
   function ArticleList_IsExist(tmpList:TStringlist;NM:string):integer;
   var i,iRes:integer;
   begin
     iRes:=-1;
     for i:=0 to tmpList.Count-1 do
     begin
       if tmpList.Strings[i]=NM then
       begin
        iRes:=i;
        break;
       end;
     end;
     result:=iRes;
   end;
   procedure Query_YWCPLH(AtricleList:String);
   begin
      with YWCPLH do
      begin
        active:=false;
        sql.Clear;
        sql.add('select * from ( ');
        sql.add('select  XXZL.XieXing,XXZL.SheHao,XXZL.Article,XXZL.DAOMH,XXZL.XieMing,KFZL.KFJC,XXZLCC.XXCC,');
        //sql.add('        YWCPLH.InBoxBar,YWCPLH.GBBH,LBZLS.YWSM,Convert(float,XXZLCC.XXCC) as iXXCC ');
        sql.add('        YWCPLH.InBoxBar,YWCPLH.GBBH,LBZLS.YWSM,XXZLCC.XXCC as iXXCC ');
        sql.add('from (select distinct DDZL.XieXing,DDZL.SheHao,ZLZLS.XXCC from DDZL ');
        sql.add('           left join DDZLS on DDZL.DDBH=DDZLS.DDBH ');
        sql.add('           left join ZLZLS on ZLZLS.ZLBH=DDZL.ZLBH and ZLZLS.ZLCC=DDZLS.CC ');
        sql.add('           where DDZL.ShipDate>'+''''+'2009/04/01'+''''+') XXZLCC');
        sql.add('left join XXZL on XXZl.XieXing=XXZLCC.XieXing and XXZLCC.SheHao=XXZL.SheHao');
        sql.add('left join KFZL on KFZL.KFDH=XXZL.KHDH ');
        sql.add('left join YWCPLH on YWCPLH.XieXing=XXZLCC.XieXing and YWCPLH.SheHao=XXZLCC.SheHao and YWCPLH.XXCC=XXZLCC.XXCC');
        sql.add('left join LBZLS on LBZLS.LB='+''''+'06'+''''+' and LBZLS.LBDH=YWCPLH.GBBH');
        sql.add('where 1=1  ');
        sql.add('      and XXZL.Article in '+AtricleList);
        sql.add('      and XXZLCC.XXCC is not null ');
        if Checkbox1.Checked then
        begin
          sql.add('    and YWCPLH.InboxBar is null ');
        end;
        sql.add(') YWCPLH ');
        sql.add('order by  YWCPLH.XieXing,YWCPLH.SheHao,YWCPLH.XXCC');
        active:=true;
      end;
   end;
var OrderListExcel:Variant;
    OrderExcFN:string;
    Article,XXCC,InBoxCode,GBBH:String;
    RowSIndex,offset:integer;
    Isbreak:boolean;
    ArticleList:TStringlist;
    index:integer;
begin
  if OpenDialog.Execute()=true then
  begin
    try
      //開啟Excel OLE
      OrderListExcel:=CreateOleObject('Excel.Application');
    except
      on E:Exception do
      begin
        Application.MessageBox(PChar('NO EXCEL'+E.Message),'', MB_OK);
        EXIT;
      end;
    end;
    try
      //開啟Excel
      OrderExcFN:=OpenDialog.FileName;//Excel檔案名稱 備份複製用
      OrderListExcel.WorkBooks.Open(OpenDialog.FileName);
      OrderListExcel.WorkSheets[1].Activate;//第一頁為主
      //
      offset:=0;
      RowSIndex:=1;
      Article:=OrderListExcel.Cells[RowSIndex+offset,1];
      XXCC:=OrderListExcel.Cells[RowSIndex+offset,2];
      InBoxCode:=OrderListExcel.Cells[RowSIndex+offset,3];
      GBBH:=OrderListExcel.Cells[RowSIndex+offset,4];
      //
      if ((Article='Article') and (XXCC='XXCC') and (InBoxCode='InBoxBar') ) then
      begin
        Isbreak:=false;
        //Article清單列表
        ArticleList:=TStringlist.Create;
        repeat
          RowSIndex:=RowSIndex+1;
          Article:=OrderListExcel.Cells[RowSIndex+offset,1];
          index:=ArticleList_IsExist(ArticleList,Article);
          if index<0 then
          begin
            if trim(Article)<>'' then
            ArticleList.Add(Article);
          end;
          if Article='' then Isbreak:=true;
        until IsBreak=true;
        //Combined Article SQL
        Article:='';
        for index:=0 to ArticleList.Count-1 do
        begin
           Article:=Article+''''+ArticleList.Strings[index]+''',';
        end;
        if length(Article)>0 then Article:='('+Copy(Article,1,length(Article)-1)+')';
        ArticleList.Free;
        //開始更新
        Isbreak:=false;
        RowSIndex:=1;
        Query_YWCPLH(Article);
        BB4.Click; // Modify  Click
        repeat
           Application.ProcessMessages;
           Label1.Caption:='Excel Count:'+inttostr(RowSIndex);
           RowSIndex:=RowSIndex+1;
           //Progress
           Article:=OrderListExcel.Cells[RowSIndex+offset,1];
           XXCC:=OrderListExcel.Cells[RowSIndex+offset,2];
           InBoxCode:=OrderListExcel.Cells[RowSIndex+offset,3];
           GBBH:=OrderListExcel.Cells[RowSIndex+offset,4];
           //
           if trim(InBoxCode)<>'' then
           begin
             //Find XXCC at DGBrid
             YWCPLH.First;
             if YWCPLH.Locate('Article;iXXCC',VarArrayOf([Article,XXCC]),[loPartialKey]) then
             begin
              YWCPLH.Edit;
              YWCPLH.FieldByName('InBoxBar').AsString:=InBoxCode;
              if GBBH='' then GBBH:='NORMAL';
              YWCPLH.FieldByName('GBBH').AsString:=GBBH;
              YWCPLH.Post;
             end;
           end;
           //
           if ((Article='') or (XXCC='')) then Isbreak:=true;
           //
        until IsBreak=true;
        OrderListExcel.Quit;
      end else
      begin
        Showmessage('Excel not exact format!');
      end;
    except
      on E:Exception do
      begin
        Application.MessageBox(PChar('NO EXCEL'+E.Message),'', MB_OK);
        Exit;
      end;
    end;
  end;
end;
//
procedure TScanInbox.bbt7Click(Sender: TObject);
begin
  ImportInBoxExcel();
end;

end.
