unit OrderKhuonIn1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBTables, DB, StdCtrls, ComCtrls, Buttons, DBCtrls, GridsEh,
  DBGridEh, ExtCtrls, Menus,comobj;

type
  TOrderKhuonIn = class(TForm)
    PC1: TPageControl;
    TS1: TTabSheet;
    DBGrid1: TDBGridEh;
    TS3: TTabSheet;
    Panel6: TPanel;
    DBGrid3: TDBGridEh;
    TS4: TTabSheet;
    DBGridEh3: TDBGridEh;
    Top3Panel: TPanel;
    BDT6: TBitBtn;
    BDT5: TBitBtn;
    BDT4: TBitBtn;
    BDT3: TBitBtn;
    BDT2: TBitBtn;
    BDT1: TBitBtn;
    BD7: TBitBtn;
    BD6: TBitBtn;
    BD5: TBitBtn;
    BD4: TBitBtn;
    BD3: TBitBtn;
    BD2: TBitBtn;
    Top1Panel: TPanel;
    BA2: TBitBtn;
    BA3: TBitBtn;
    BA4: TBitBtn;
    BA5: TBitBtn;
    BA6: TBitBtn;
    BA7: TBitBtn;
    BA1: TBitBtn;
    BAT1: TBitBtn;
    BAT2: TBitBtn;
    BAT3: TBitBtn;
    BAT4: TBitBtn;
    KHUONIN_XXZLS: TQuery;
    DS1: TDataSource;
    KHUONIN_DDZL: TQuery;
    UpKHUONIN_DDZL: TUpdateSQL;
    DS2: TDataSource;
    BDelRec: TQuery;
    KHUONIN_ZLZLS2: TQuery;
    DataSource1: TDataSource;
    Qtemp: TQuery;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    KHUONIN_XXZLSCLBH: TStringField;
    KHUONIN_XXZLSCLSL: TFloatField;
    KHUONIN_XXZLSUserID: TStringField;
    KHUONIN_XXZLSUserDate: TDateTimeField;
    KHUONIN_XXZLSYN: TStringField;
    KHUONIN_XXZLSYWPM: TStringField;
    Label5: TLabel;
    Edit3: TEdit;
    Label6: TLabel;
    Edit5: TEdit;
    Button4: TButton;
    Button5: TButton;
    Label7: TLabel;
    DT1: TDateTimePicker;
    Label8: TLabel;
    DT2: TDateTimePicker;
    KHUONIN_DDZLDDBH: TStringField;
    KHUONIN_DDZLARTICLE: TStringField;
    KHUONIN_DDZLYWPM: TStringField;
    KHUONIN_DDZLQUANTITY: TIntegerField;
    KHUONIN_DDZLDIENTICH: TFloatField;
    KHUONIN_DDZLMEMO: TStringField;
    KHUONIN_DDZLUSERID: TStringField;
    KHUONIN_DDZLUSERDATE: TDateTimeField;
    KHUONIN_DDZLYN: TStringField;
    KHUONIN_DDZLGSBH: TStringField;
    KHUONIN_ZLZLS2ZLBH: TStringField;
    KHUONIN_ZLZLS2PART: TStringField;
    KHUONIN_ZLZLS2CLBH: TStringField;
    KHUONIN_ZLZLS2YWPM: TStringField;
    KHUONIN_ZLZLS2SIZE: TStringField;
    KHUONIN_ZLZLS2UNIT: TStringField;
    KHUONIN_ZLZLS2CLSL: TFloatField;
    KHUONIN_ZLZLS2USAGE: TFloatField;
    KHUONIN_ZLZLS2MJBH: TStringField;
    KHUONIN_ZLZLS2USERID: TStringField;
    KHUONIN_ZLZLS2USERDATE: TDateTimeField;
    KHUONIN_ZLZLS2YN: TStringField;
    KHUONIN_ZLZLS2ARTICLE_YWPM: TStringField;
    KHUONIN_ZLZLS2ARTICLE: TStringField;
    KHUONIN_DDZLCALDATE: TDateTimeField;
    KHUONIN_ZLZLS2QUANTITY: TIntegerField;
    UpKHUONIN_XXZLS: TUpdateSQL;
    BitBtn1: TBitBtn;
    Pop_Menu: TPopupMenu;
    mniMod: TMenuItem;
    mniSav: TMenuItem;
    mniCan: TMenuItem;
    UpKHUONIN_ZLZLS2: TUpdateSQL;
    BitBtn2: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BA1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure PC1Change(Sender: TObject);
    procedure BD2Click(Sender: TObject);
    procedure BD3Click(Sender: TObject);
    procedure BD4Click(Sender: TObject);
    procedure BD6Click(Sender: TObject);
    procedure DBGrid3EditButtonClick(Sender: TObject);
    procedure BD5Click(Sender: TObject);
    procedure DBGrid3DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure Button5Click(Sender: TObject);
    procedure BA2Click(Sender: TObject);
    procedure BA4Click(Sender: TObject);
    procedure BA6Click(Sender: TObject);
    procedure BA5Click(Sender: TObject);
    procedure DBGrid1EditButtonClick(Sender: TObject);
    procedure BA3Click(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure BitBtn1Click(Sender: TObject);
    procedure BDT6Click(Sender: TObject);
    procedure mniModClick(Sender: TObject);
    procedure mniCanClick(Sender: TObject);
    procedure mniSavClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  OrderKhuonIn: TOrderKhuonIn;
  NDate:TDate;

implementation

uses ARTICLE1, main1,fununit, KhuonIn_DienTich1;

{$R *.dfm}

procedure TOrderKhuonIn.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TOrderKhuonIn.FormDestroy(Sender: TObject);
begin
  OrderKhuonIn:=nil;
end;

procedure TOrderKhuonIn.FormCreate(Sender: TObject);
begin
  PC1.ActivePage:=TS1;
  DT1.Date:=NOW-30;
  DT2.Date:=NOW;
end;

procedure TOrderKhuonIn.BA1Click(Sender: TObject);
begin
  PC1.ActivePage:=TS1;
  panel2.Visible:=true;
end;

procedure TOrderKhuonIn.Button1Click(Sender: TObject);
begin
   with KHUONIN_XXZLS do
   begin
      active:=false;
      sql.Clear;
      sql.Add('SELECT XXZLS.CLBH,YWPM,XXZLS.CLSL,XXZLS.USERID,XXZLS.USERDATE,XXZLS.YN');
      sql.Add('FROM KHUONIN_XXZLS XXZLS');
      sql.Add('LEFT JOIN CLZL ON XXZLS.CLBH=CLZL.CLDH');
      sql.Add('WHERE 1=1');
      if edit1.Text <>'' then
        sql.Add('AND XXZLS.CLBH like ''%'+edit1.Text+'%''');
      if edit2.Text <>'' then
        sql.Add('AND CLZL.YWPM like ''%'+edit2.Text+'%''');
      sql.Add('ORDER BY XXZLS.CLBH');
      active:=true;
   end;
   BA2.Enabled:=True;
   BA3.Enabled:=True;
   BA4.Enabled:=True;
end;

procedure TOrderKhuonIn.Button4Click(Sender: TObject);
begin
   with KHUONIN_DDZL do
   begin
      active:=false;
      sql.Clear;
      sql.Add('SELECT DDBH,ARTICLE,YWPM,QUANTITY,DIENTICH,MEMO,DDZL.USERID,DDZL.USERDATE,DDZL.YN,ZLZLS2.USERDATE as CALDATE,DDZL.GSBH');
      sql.Add('FROM KHUONIN_DDZL DDZL');
      sql.Add('LEFT JOIN CLZL ON DDZL.ARTICLE=CLZL.CLDH');
      sql.Add('LEFT JOIN ( select distinct ZLBH ,max(userdate) as UserDate from KHUONIN_ZLZLS2 ZLZLS2  group by ZLBH) ZLZLS2 on ZLZLS2.ZLBH=DDZL.DDBH');
      sql.Add('WHERE   convert(smalldatetime,convert(varchar,DDZL.USERDATE,111))  between');
      sql.add('        '''+formatdatetime('yyyy/MM/dd',DT1.Date) +''' and  '''+formatdatetime('yyyy/MM/dd',DT2.Date) +'''');
      if edit3.Text <>'' then
        sql.Add('AND DDZL.DDBH like ''%'+edit3.Text+'%''');
      if edit5.Text <>'' then
        sql.Add('AND CLZL.YWPM like ''%'+edit5.Text+'%''');
      sql.Add('ORDER BY DDZL.DDBH');
      active:=true;
   end;
   BD2.Enabled:=True;
   BD3.Enabled:=True;
   BD4.Enabled:=True;
end;

procedure TOrderKhuonIn.PC1Change(Sender: TObject);
begin
   if PC1.ActivePage=TS3 then
   begin
     Top3Panel.visible:=true;
     Top1Panel.Visible:=false;
   end else if PC1.ActivePage = TS4 then
   begin
     Top3Panel.Visible:=false;
     Top1Panel.Visible:=true;
     BA2.Enabled:=false;
     BA3.Enabled:=false;
     BA4.Enabled:=false;
     KHUONIN_ZLZLS2.Active:=TRUE;
   end else
   begin
     Top3Panel.Visible:=false;
     Top1Panel.Visible:=true;
   end;
end;

procedure TOrderKhuonIn.BD2Click(Sender: TObject);
begin
  with KHUONIN_DDZL do
  begin
    requestlive:=true;
    cachedupdates:=true;
    insert;
  end;
  BD5.Enabled:=true;
  BD6.Enabled:=true;
  DBGrid3.columns[1].ButtonStyle:=cbsEllipsis;
end;

procedure TOrderKhuonIn.BD3Click(Sender: TObject);
begin
  with Qtemp do
  begin
    active:=false;
    sql.Clear;
    sql.Add('select KCLLS.SCBH from KCLLS inner join KCLL on KCLLS.LLNO=KCLL.LLNO ');
    sql.Add('where KCLLS.SCBH='''+KHUONIN_DDZL.fieldbyname('DDBH').AsString+'''');
    active:=true;
  end;
  if (Qtemp.RecordCount>0) then
  begin
    showmessage('Da mo phieu xuat . Khong the xoa.');
    abort;
  end;
  with KHUONIN_DDZL do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
    fieldbyname('YN').Value:='0';
  end;
  BD5.Enabled:=true;
  BD6.Enabled:=true;
end;

procedure TOrderKhuonIn.BD4Click(Sender: TObject);
begin
  with Qtemp do
  begin
    active:=false;
    sql.Clear;
    sql.Add('select KCLLS.SCBH from KCLLS inner join KCLL on KCLLS.LLNO=KCLL.LLNO ');
    sql.Add('where KCLLS.SCBH='''+KHUONIN_DDZL.fieldbyname('DDBH').AsString+'''');
    active:=true;
  end;
  if (Qtemp.RecordCount>0) then
  begin
    showmessage('Da mo phieu xuat . Khong the sua.');
    abort;
  end;
  with KHUONIN_DDZL do
  begin
    cachedupdates:=true;
    requestlive:=true;
    edit;
  end;
  BD5.Enabled:=true;
  BD6.Enabled:=true;
  DBGrid3.columns[1].ButtonStyle:=cbsEllipsis;
end;

procedure TOrderKhuonIn.BD6Click(Sender: TObject);
begin
  with KHUONIN_DDZL do
  begin
    active:=false;
    cachedupdates:= false;
    requestlive:=false;
    active:=true;
  end;
  BD5.Enabled:=false;
  BD6.Enabled:=false;
  DBGrid3.columns[1].ButtonStyle:=cbsNone;
end;

procedure TOrderKhuonIn.DBGrid3EditButtonClick(Sender: TObject);
begin
  if DBGrid3.selectedfield.fieldname='ARTICLE' then
  begin
    ARTICLE:=TARTICLE.create(self);
    ARTICLE.Label2.Caption:='ARTICLE';
    ARTICLE.show;
  end;
end;

procedure TOrderKhuonIn.BD5Click(Sender: TObject);
var y,m,a:string;
    i:integer;
begin
  with Qtemp do          //取服務器的年月值
  begin
    active:=false;
    sql.Clear;
    sql.Add('select year(getdate()) as FY,month(getdate()) as FM,getdate() as NDate ');
    active:=true;
    y:=fieldbyname('FY').asstring;
    m:=fieldbyname('FM').asstring;
    NDate:=fieldbyname('Ndate').Value;
    active:=false;
  end;
  if length(m)<2 then
  m:='0'+m;
  try
   KHUONIN_DDZL.First;
   for i:=1 to KHUONIN_DDZL.RecordCount do
   begin
      case KHUONIN_DDZL.updatestatus of
        usinserted:
        begin
          if ((KHUONIN_DDZL.FieldByName('ARTICLE').IsNull) or (KHUONIN_DDZL.FieldByName('QUANTITY').IsNull) or (KHUONIN_DDZL.FieldByName('DIENTICH').IsNull))   then
          begin
            showmessage('Vui long chon Article / Nhap so luong / Nhap dien tich');
            abort;
          end else
          begin
              with Qtemp do    //計算領料單流水號
              begin
                 active:=false;
                 sql.Clear;
                 sql.Add('select DDBH from KHUONIN_DDZL where DDBH like '+'''KI'+y+m+'%'+'''');
                 sql.add('order by DDBH');
                 active:=true;
                 if recordcount >0 then
                 begin
                   last;
                   a:=fieldbyname('DDBH').AsString;
                   a:=copy(a,9,5);
                   a:=inttostr(strtoint(a)+1);
                   while length(a)<5 do
                   begin
                     a:='0'+a;
                   end;
                 end else
                 begin
                   a:='00001';
                 end;
                 a :='KI'+y+m+a;
                 active:=false;
              end;
              KHUONIN_DDZL.edit;
              KHUONIN_DDZL.fieldbyname('DDBH').Value:=a;
              KHUONIN_DDZL.fieldbyname('GSBH').Value:=main.Edit2.text;
              KHUONIN_DDZL.FieldByName('userID').Value:=main.edit1.text;
              KHUONIN_DDZL.FieldByName('userdate').Value:=NDate;
              KHUONIN_DDZL.FieldByName('YN').Value:='1';
              UpKHUONIN_DDZL.apply(ukinsert);
          end;
        end;
        usmodified:
        begin
          if KHUONIN_DDZL.FieldByName('UserID').Value=main.Edit1.Text then
          begin
            if KHUONIN_DDZL.fieldbyname('YN').value='0'then
            begin
              with BDelRec do
              begin
                  active:=false;
                  sql.Clear;
                  sql.Add('delete KHUONIN_ZLZLS2 where ZLBH='''+KHUONIN_DDZL.fieldbyname('DDBH').Value+'''');
                  sql.add('insert into BDelRec ');
                  sql.add('(TableName ,TNO,CLBH,OldID,DelID,DelDate)');
                  sql.add('values ('+''''+'KHUONIN_DDZL'+''''+','+''''+KHUONIN_DDZL.fieldbyname('DDBH').Value+'''');
                  sql.add(','+''''+' '+''''+','+''''+KHUONIN_DDZL.fieldbyname('USERID').Value+''''+',');
                  sql.add(''''+main.Edit1.Text+''''+',getdate())');
                  execsql;
                  active:=false;
              end;
              UpKHUONIN_DDZL.apply(ukdelete);
            end else
            begin
              KHUONIN_DDZL.edit;
              KHUONIN_DDZL.FieldByName('userID').Value:=main.edit1.text;
              KHUONIN_DDZL.FieldByName('userdate').Value:=Ndate;
              UpKHUONIN_DDZL.apply(ukmodify);
            end;
          end else
          begin
            Showmessage('It is not yours, can not modify.');
          end;
        end;
      end;
      KHUONIN_DDZL.next;
    end;
    KHUONIN_DDZL.active:=false;
    KHUONIN_DDZL.cachedupdates:=false;
    KHUONIN_DDZL.requestlive:=false;
    KHUONIN_DDZL.active:=true;
    BD5.enabled:=false;
    BD6.enabled:=false;
    dbgrid3.columns[1].ButtonStyle:=cbsnone;
    showmessage('Succeed');
  except
    Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
  end;
end;

procedure TOrderKhuonIn.DBGrid3DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if KHUONIN_DDZL.FieldByName('YN').value='0' then
  begin
    DBGrid3.canvas.font.color:=clred;
    DBGrid3.DefaultDrawColumnCell(Rect,DataCol,Column,State);
  end;
  if ((not KHUONIN_DDZL.FieldByName('CALDATE').IsNull) and  (KHUONIN_DDZL.FieldByName('USERDATE').value > KHUONIN_DDZL.FieldByName('CALDATE').value)) then
  begin
    DBGrid3.canvas.font.color:=clgreen;
    DBGrid3.DefaultDrawColumnCell(Rect,DataCol,Column,State);
  end;
end;

procedure TOrderKhuonIn.Button5Click(Sender: TObject);
var bm:Tbookmark;
    i,index:integer;
    bookmarklist:tbookmarklistEh;
begin
  try
    KHUONIN_DDZL.disablecontrols;
    bm:=KHUONIN_DDZL.getbookmark;
    bookmarklist:=DBGrid3.selectedrows;
    if bookmarklist.count=0 then DBGrid3.SelectedRows.CurrentRowSelected:= true;
    if bookmarklist.count>0 then
    begin
      try
        for i:=0 to bookmarklist.count-1 do
        begin
          KHUONIN_DDZL.gotobookmark(pointer(bookmarklist[i]));
          with Qtemp do
          begin
            active:=false;
            sql.Clear;
            sql.add('select * from KHUONIN_XXZLS ');
            active:=true;
            if Qtemp.RecordCount=0 then
            begin
                showmessage('Chua co dinh muc cho 1 Inch.');
                exit;
            end;
            active:=false;
            sql.Clear;
            sql.add('select * from KHUONIN_ZLZLS2 where ZLBH='''+KHUONIN_DDZL.fieldbyname('DDBH').Value+'''' );
            active:=true;
            if recordcount>0 then
            begin
                if messagedlg('Ban muon tinh lan nua khong?',mtconfirmation,[mbYes,MbNo],0)=mrYes then
                begin
                    active:=false;
                    sql.Clear;
                    sql.add('delete KHUONIN_ZLZLS2  where ZLBH='''+KHUONIN_DDZL.fieldbyname('DDBH').Value+''' ');
                    //funcobj.WriteErrorLog(sql.Text);
                    execsql;
                end else
                begin
                  abort;
                end;
            end;
            active:=false;
            sql.clear;
            sql.add('delete KHUONIN_ZLZLS2  where ZLBH='''+KHUONIN_DDZL.fieldbyname('DDBH').Value+'''');
            sql.add('insert KHUONIN_ZLZLS2 ');
            sql.add('select DDZL.DDBH as ZLBH,''VN'' as XH,''ZZZZ'' as BWBH,NULL as CSBH,''ZZZZZZZZZZ'' as MJBH,XXZLS.CLBH,''N'' as ZMLB,');
            sql.Add('		    ''ZZZZZZ'' as SIZE,round(((XXZLS.CLSL*DDZL.DienTich*ddzl.Quantity) /1000)+0.00499,2) as CLSL,');
            sql.Add('		    NULL as USAGE,'''+main.Edit1.Text+''' as USERID,'''+formatdatetime('yyyy/mm/dd hh:mm:ss',now)+''''+' as USERDATE,''1'' as YN');
            sql.add('from KHUONIN_XXZLS XXZLS');
            sql.add('left join CLZL  on CLZL.CLDH=XXZLS.CLBH');
            sql.add('left join KHUONIN_DDZL DDZL on 1=1');
            sql.add('where DDBH='''+KHUONIN_DDZL.fieldbyname('DDBH').Value+'''');
            //funcobj.WriteErrorLog(sql.Text);
            execsql;
          end;
        end;
      finally
        begin
          KHUONIN_DDZL.gotobookmark(bm);
          KHUONIN_DDZL.freebookmark(bm);
          KHUONIN_DDZL.enablecontrols;
        end;
      end;
      //
    end;
    showmessage('Calculate finished.');
  except
     showmessage('Have wrong.');
  end;

end;

procedure TOrderKhuonIn.BA2Click(Sender: TObject);
begin
  with KHUONIN_XXZLS do
  begin
    requestlive:=true;
    cachedupdates:=true;
    insert;
  end;
  BA5.Enabled:=true;
  BA6.Enabled:=true;
  DBGrid1.columns[0].ButtonStyle:=cbsEllipsis;
end;

procedure TOrderKhuonIn.BA4Click(Sender: TObject);
begin
  if ((now-KHUONIN_XXZLS.FieldByName('USERDATE').value)>3) then
  begin
    showmessage('Hon 3 ngay. Khong the sua');
    abort;
  end;
  with KHUONIN_XXZLS do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
  BA5.Enabled:=true;
  BA6.Enabled:=true;
  DBGrid1.columns[0].ButtonStyle:=cbsEllipsis;
end;

procedure TOrderKhuonIn.BA6Click(Sender: TObject);
begin
  with KHUONIN_XXZLS do
  begin
    active:=false;
    cachedupdates:= false;
    requestlive:=false;
    active:=true;
  end;
  BA5.Enabled:=false;
  BA6.Enabled:=false;
  DBGrid1.columns[0].ButtonStyle:=cbsnone;
end;

procedure TOrderKhuonIn.BA5Click(Sender: TObject);
var i:integer;
begin
  if KHUONIN_XXZLS.FieldByName('CLBH').IsNull then
  begin
    showmessage('Vui long chon CLBH');
    abort;
  end;
  try
   KHUONIN_XXZLS.First;
   for i:=1 to KHUONIN_XXZLS.RecordCount do
   begin
      case KHUONIN_XXZLS.updatestatus of
        usinserted:
        begin
          KHUONIN_XXZLS.edit;
          KHUONIN_XXZLS.FieldByName('userID').Value:=main.edit1.text;
          KHUONIN_XXZLS.FieldByName('userdate').Value:=now;
          KHUONIN_XXZLS.FieldByName('YN').Value:='1';
          UpKHUONIN_XXZLS.apply(ukinsert);
        end;
        usmodified:
        begin
          if KHUONIN_XXZLS.FieldByName('UserID').Value=main.Edit1.Text then
          begin
            if KHUONIN_XXZLS.fieldbyname('YN').value='0' then
            begin
              with BDelRec do
              begin
                  active:=false;
                  sql.Clear;
                  sql.add('insert into BDelRec ');
                  sql.add('(TableName ,TNO,CLBH,OldID,DelID,DelDate)');
                  sql.add('values ('+''''+'KHUONIN_XXZLS'+''''+','+''''+KHUONIN_XXZLS.fieldbyname('CLBH').Value+'''');
                  sql.add(','+''''+' '+''''+','+''''+KHUONIN_XXZLS.fieldbyname('USERID').Value+''''+',');
                  sql.add(''''+main.Edit1.Text+''''+',getdate())');
                  execsql;
                  active:=false;
              end;
              UpKHUONIN_XXZLS.apply(ukdelete);
            end else
            begin
              KHUONIN_XXZLS.edit;
              KHUONIN_XXZLS.FieldByName('userID').Value:=main.edit1.text;
              KHUONIN_XXZLS.FieldByName('userdate').Value:=now;
              UpKHUONIN_XXZLS.apply(ukmodify);
            end;
          end else
          begin
            Showmessage('It is not yours, can not modify.');
          end;
        end;
      end;
      KHUONIN_XXZLS.next;
    end;
    KHUONIN_XXZLS.active:=false;
    KHUONIN_XXZLS.cachedupdates:=false;
    KHUONIN_XXZLS.requestlive:=false;
    KHUONIN_XXZLS.active:=true;
    BA5.enabled:=false;
    BA6.enabled:=false;
    DBGrid1.columns[0].ButtonStyle:=cbsnone;
    showmessage('Succeed');
  except
    Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
  end;  
end;

procedure TOrderKhuonIn.DBGrid1EditButtonClick(Sender: TObject);
begin
  if DBGrid1.selectedfield.fieldname='CLBH' then
  begin
    ARTICLE:=TARTICLE.create(self);
    ARTICLE.Label2.Caption:='CLZL';
    ARTICLE.DBGridEh1.Columns[3].Visible:=FALSE;
    ARTICLE.EDIT1.Text:='W';
    ARTICLE.show;
  end;
end;

procedure TOrderKhuonIn.BA3Click(Sender: TObject);
begin
  if ((now-KHUONIN_XXZLS.FieldByName('USERDATE').value)>3) then
  begin
    showmessage('Hon 3 ngay. Khong the xoa');
    abort;
  end;
  with KHUONIN_XXZLS do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
    fieldbyname('YN').Value:='0';
  end;
  BA5.Enabled:=true;
  BA6.Enabled:=true;
end;

procedure TOrderKhuonIn.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if KHUONIN_XXZLS.FieldByName('YN').value='0' then
  begin
    DBGrid1.canvas.font.color:=clred;
    DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
  end;
end;

procedure TOrderKhuonIn.BitBtn1Click(Sender: TObject);
var
      eclApp,WorkBook:olevariant;
 //     xlsFileName:string;
      i,j:integer;
begin
  if PC1.ActivePageIndex=0 then
  begin
    if KHUONIN_XXZLS.Active then
    begin
      if KHUONIN_XXZLS.recordcount=0 then
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
      for i:=0 to DBGrid1.Columns.Count-1 do
      begin
        eclApp.Cells(1,i+2):=DBGrid1.Columns[i].Title.Caption;
      end;
      KHUONIN_XXZLS.First;
      j:=2;
      while   not  KHUONIN_XXZLS.Eof   do
      begin
        eclApp.Cells(j,1):=j-1;
        for i:=0 to DBGrid1.Columns.Count-1 do
        begin
          eclApp.Cells(j,i+2):=DBGrid1.Fields[i].Value;
          eclApp.Cells.Cells.item[j,i+2].font.size:='8';
        end;
        KHUONIN_XXZLS.Next;
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
  if PC1.ActivePageIndex=2 then
  begin
    if KHUONIN_ZLZLS2.Active then
    begin
      if KHUONIN_ZLZLS2.recordcount=0 then
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
      for i:=0 to DBGridEh3.Columns.Count-1 do
      begin
        eclApp.Cells(1,i+2):=DBGridEh3.Columns[i].Title.Caption;
      end;
      KHUONIN_ZLZLS2.First;
      j:=2;
      while   not  KHUONIN_ZLZLS2.Eof   do
      begin
        eclApp.Cells(j,1):=j-1;
        for i:=0 to DBGridEh3.Columns.Count-1 do
        begin
          eclApp.Cells(j,i+2):=DBGridEh3.Fields[i].Value;
          eclApp.Cells.Cells.item[j,i+2].font.size:='8';
        end;
        KHUONIN_ZLZLS2.Next;
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

end;

procedure TOrderKhuonIn.BDT6Click(Sender: TObject);
var
      eclApp,WorkBook:olevariant;
 //     xlsFileName:string;
      i,j:integer;
begin
    if KHUONIN_DDZL.Active then
    begin
      if KHUONIN_DDZL.recordcount=0 then
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
      for i:=0 to DBGrid3.Columns.Count-1 do
      begin
        eclApp.Cells(1,i+2):=DBGrid3.Columns[i].Title.Caption;
      end;
      KHUONIN_DDZL.First;
      j:=2;
      while   not  KHUONIN_DDZL.Eof   do
      begin
        eclApp.Cells(j,1):=j-1;
        for i:=0 to DBGrid3.Columns.Count-1 do
        begin
          eclApp.Cells(j,i+2):=DBGrid3.Fields[i].Value;
          eclApp.Cells.Cells.item[j,i+2].font.size:='8';
        end;
        KHUONIN_DDZL.Next;
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

procedure TOrderKhuonIn.mniModClick(Sender: TObject);
begin
  with KHUONIN_ZLZLS2 do
  begin
    RequestLive := True;
    CachedUpdates := True;
    Edit;
  end;
  mniSav.Enabled:=true;
  mniCan.Enabled:=true;
end;

procedure TOrderKhuonIn.mniCanClick(Sender: TObject);
begin
  with KHUONIN_ZLZLS2 do
  begin
    active:=false;
    RequestLive := false;
    CachedUpdates := false;
    active:=true;
  end;
  mniSav.Enabled:=false;
  mniCan.Enabled:=false;
end;

procedure TOrderKhuonIn.mniSavClick(Sender: TObject);
var i:integer;
begin
  with KHUONIN_ZLZLS2 do
  begin
    KHUONIN_ZLZLS2.first;
    while not eof do
    begin
      case KHUONIN_ZLZLS2.updatestatus of
        usmodified:
        begin
          if (KHUONIN_ZLZLS2.fieldbyname('CLSL').Value>=0)  then
          begin
            Qtemp.Active:=false;
            Qtemp.SQL.Clear;
            Qtemp.SQL.Add('Update KHUONIN_ZLZLS2 Set CLSL='+formatfloat('#0.00#',fieldbyname('CLSL').AsFloat+0.0001)+',UserID='''+main.Edit1.Text+''',UserDate=GetDate() where ZLBH='''+FieldByName('ZLBH').AsString+''' and  BWBH='''+FieldByName('PART').AsString+''' ');
            Qtemp.SQL.Add('        and  CLBH='''+FieldByName('CLBH').AsString+''' and SIZE='''+FieldByName('SIZE').AsString+''' and YN='''+FieldByName('YN').AsString+''' ');
            funcobj.WriteErrorLog(sql.Text);
            Qtemp.ExecSQL;
          end;
        end;
      end;
      KHUONIN_ZLZLS2.Next;
    end;
    active:=false;
    cachedupdates:=false;
    requestlive:=false;
    active:=true;
  end;
  showmessage('Succeed');
  mniSav.Enabled:=false;
  mniCan.Enabled:=false;


end;
procedure TOrderKhuonIn.BitBtn2Click(Sender: TObject);
begin
  KhuonIn_DienTich:=TKhuonIn_DienTich.create(self);
  KhuonIn_DienTich.show;
end;

end.
