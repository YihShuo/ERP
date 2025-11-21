unit MaterialNG1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, DBGrids, DBTables, StdCtrls, ExtCtrls,comobj,
  ComCtrls, GridsEh, DBGridEh, Menus, OleServer, ExcelXP,DBGridEhImpExp, ShellAPI, Zlib,
  Buttons, Mask, DBCtrls;

type
  TMaterialNG = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Button1: TButton;
    Edit5: TEdit;
    Query1: TQuery;
    DS1: TDataSource;
    Label2: TLabel;
    Edit6: TEdit;
    Button2: TButton;
    Label4: TLabel;
    Edit1: TEdit;
    Label6: TLabel;
    Edit2: TEdit;
    lbl1: TLabel;
    Edit3: TEdit;
    Label3: TLabel;
    Edit4: TEdit;
    Qry_Cal: TQuery;
    ds_article: TDataSource;
    qry_article: TQuery;
    strngfldqry4article: TStringField;
    qry_articleFD: TStringField;
    qry_articleDevType: TStringField;
    qry_articleCategory: TStringField;
    pgc1: TPageControl;
    TS1: TTabSheet;
    TS2: TTabSheet;
    DBGrid1: TDBGridEh;
    RadioGroup1: TRadioGroup;
    PopupMenu1: TPopupMenu;
    S1: TMenuItem;
    S2: TMenuItem;
    S3: TMenuItem;
    UpSql1: TUpdateSQL;
    TS3: TTabSheet;
    qry1: TQuery;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    qry2: TQuery;
    DBGridEh1: TDBGridEh;
    Splitter1: TSplitter;
    qry3: TQuery;
    ExcelApplication1: TExcelApplication;
    DBGridEh2: TDBGridEh;
    DS_ALL: TDataSource;
    Qry_ALL: TQuery;
    qry_articleJiJie: TStringField;
    SaveDialog1: TSaveDialog;
    CKBSel: TCheckBox;
    qry4: TQuery;
    edt1: TEdit;
    OpenDialog1: TOpenDialog;
    Label7: TLabel;
    Edit8: TEdit;
    Qry_ALLSEASON: TStringField;
    Qry_ALLPURPOSE: TStringField;
    Qry_ALLCLBH: TStringField;
    Qry_ALLYWPM: TStringField;
    Qry_ALLDWBH: TStringField;
    Qry_ALLZSYWJC: TStringField;
    Qry_ALLNG_ETD: TDateTimeField;
    Qry_ALLNG_ETA: TDateTimeField;
    Qry_ALLCGNO: TStringField;
    Qry_ALLNG_Date: TDateTimeField;
    Qry_ALLNG_Reason: TStringField;
    Qry_ALLREMARK: TStringField;
    Qry_ALLResult: TStringField;
    Qry_ALLUSERDATE: TDateTimeField;
    Qry_ALLUSERID: TStringField;
    qry1season: TStringField;
    DBGridEh4: TDBGridEh;
    Splitter2: TSplitter;
    qry2ZSYWJC: TStringField;
    qry2Time: TIntegerField;
    Query1SEASON: TStringField;
    Query1PURPOSE: TStringField;
    Query1CLBH: TStringField;
    Query1YWPM: TStringField;
    Query1DWBH: TStringField;
    Query1ZSYWJC: TStringField;
    Query1NG_ETD: TDateTimeField;
    Query1NG_ETA: TDateTimeField;
    Query1Qty: TCurrencyField;
    Query1CGNO: TStringField;
    Query1NG_Date: TDateTimeField;
    Query1NG_Reason: TStringField;
    Query1REMARK: TStringField;
    Query1Result: TStringField;
    Query1USERDATE: TDateTimeField;
    Query1USERID: TStringField;
    Query1oldNG_Date: TDateTimeField;
    TabSheet1: TTabSheet;
    Shape1: TShape;
    Label8: TLabel;
    Shape2: TShape;
    Label9: TLabel;
    Shape3: TShape;
    Label10: TLabel;
    Shape4: TShape;
    Shape6: TShape;
    Shape7: TShape;
    Label12: TLabel;
    Shape8: TShape;
    Shape9: TShape;
    Label14: TLabel;
    Shape11: TShape;
    Shape13: TShape;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Query1File_Name: TStringField;
    Query1File_Size: TFloatField;
    S4: TMenuItem;
    S5: TMenuItem;
    Label5: TLabel;
    Label24: TLabel;
    Shape12: TShape;
    Label11: TLabel;
    dbgrdh4: TDBGridEh;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dbgrdh4DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure S1Click(Sender: TObject);
    procedure S2Click(Sender: TObject);
    procedure S3Click(Sender: TObject);
    procedure Query1UNDERTESTChange(Sender: TField);
    procedure Query1PASSChange(Sender: TField);
    procedure Query1FAILChange(Sender: TField);
    procedure Button2Click(Sender: TObject);
    procedure DBGridEh1CellClick(Column: TColumnEh);
    procedure DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure DBGridEh2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure S4Click(Sender: TObject);
    procedure S5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MaterialNG: TMaterialNG;
  dbg2 : boolean;
  NDate:TDate;
implementation

uses main1;

{$R *.dfm}

procedure TMaterialNG.FormClose(Sender: TObject; var Action: TCloseAction);
begin
action:=cafree;
end;

procedure TMaterialNG.Button1Click(Sender: TObject);
begin
//第一頁
if  (length(Edit1.Text)=0) and (length(Edit2.Text)=0) and (length(Edit3.Text)=0)and (length(Edit4.Text)=0) and (length(Edit5.Text)=0) and (length(Edit6.Text)=0) AND (RadioGroup1.ItemIndex=2)  then
   begin
     showmessage('Pls keyin filter condition !');
     exit ;
   end;
qry_article.Active:=False;
with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select CGZL.SEASON,CGZL.PURPOSE,CGZLS.CLBH,CLZL.YWPM,CLZL.DWBH,ZSZL.ZSYWJC,NG_ETD,NG_ETA,CGZLS.Qty, ');
    sql.add('       CGZLS.CGNO,MaterialNG.NG_Date,MaterialNG.NG_Reason,MaterialNG.REMARK,MaterialNG.Result,MaterialNG.USERDATE,MaterialNG.USERID,');
    sql.add('       MaterialNG.NG_Date as oldNG_Date,File_Name,File_Size ');
    sql.add('from CGZLS ');
    sql.add('left join CLZL  on CLZl.CLDH=CGZLS.CLBH ');
    sql.add('left join MaterialNG  on CGZLS.CLBH=MaterialNG.CLBH and CGZLS.CGNO=MaterialNG.CGNO ');
    sql.add('left join CGZL  on CGZl.CGNO=CGZLS.CGNO ');
    sql.Add('left join zszl on zszl.zsdh=CGZl.ZSBH ');
    sql.add('where CGZL.CGLX=''6'' and CGZLS.Qty>0  ');
    if   edit8.Text<>'' then
         sql.add(' and CGZLS.CGNO='+''''+edit8.Text+'''');
    if   edit6.Text<>'' then
         sql.add(' and CGZLS.CLBH='+''''+edit6.Text+'''');
    if   edit3.Text<>'' then
         sql.add(' and ZSZL.ZSYWJC like '+'''%'+edit3.Text+'%'+'''');
    if   edit4.Text<>'' then
         sql.add(' and CLZL.YWPM like '+'''%'+edit4.Text+'%'+'''');
    if   edit5.Text<>'' then
         sql.add(' and CGZl.ZSBH='+''''+edit5.Text+'''');
    if RadioGroup1.ItemIndex=1 then
         sql.Add('    and ((MaterialNG.Result='''') or (MaterialNG.Result is null) ) AND MaterialNG.NG_Date IS NOT NULL and ISNULL(MaterialNG.NG_Reason,'''')<>''OK'' ');
    if RadioGroup1.ItemIndex=0 then
         sql.Add('    and MaterialNG.Result<>'''' ' );
    if length(edit1.Text) > 0 then
       sql.add('                      and CGZL.SEASON='+''''+edit1.Text+'''');
    if length(edit2.Text) > 0 then
       sql.Add('                      and CGZL.PURPOSE='+''''+edit2.Text+'''');
    active:=true;
    if not query1.Eof then   //當有資料時,才可以去抓取相關的Article資料和Report資料
      begin
      with qry_article do
      begin
        sql.Clear;
        sql.Add('    select kfxxzl.jijie,CGZLSS.ZLBH as Article,xxzlKF.FD,xxzlKF.DevType,xxzlKF.Category from CGZLSS');
        sql.Add('    left join CGZL on CGZL.CGNO=CGZLSS.CGNO');
        sql.Add('    left join kfxxzl on kfxxzl.Article=CGZLSS.ZLBH  ');
        sql.Add('    left join xxzlkf on xxzlkf.xiexing=kfxxzl.xiexing and xxzlkf.shehao=kfxxzl.shehao');
        sql.Add('    where CGZLSS.CLBH=:CLBH and CGZLSS.CGNO=:CGNO  ');
      end;
      qry_article.Active:=true;
    end;
    //第二頁 BY Season

      with qry1 do
        begin
          active:=false;
          sql.Clear;
          sql.add('select season from MaterialNG ');
          sql.add('left join CGZL  on MaterialNG.CGNO=CGZL.CGNO  ');
          sql.add(' group by CGZL.Season  ');
          active:=true;
        end;
      if (not qry1.Eof) then
        begin
        with qry2 do
        begin
          sql.Clear;
          sql.add('select ZSZL.ZSYWJC,count(*) as Time from MaterialNG ');
          sql.add('left join CGZL  on MaterialNG.CGNO=CGZL.CGNO  ');
          sql.Add('left join zszl on zszl.zsdh=CGZl.ZSBH ');
          sql.add('where  CGZL.Season=:Season ');
          if RadioGroup1.ItemIndex=1 then
         sql.Add('        and ((MaterialNG.Result='''') or (MaterialNG.Result is null) ) AND MaterialNG.NG_Date IS NOT NULL ' );
          if RadioGroup1.ItemIndex=0 then
             sql.Add('    and MaterialNG.Result<>''''  ' );
          sql.Add('     group by ZSZL.ZSYWJC');


        end;
        qry2.Active:=true;
       end;
  end;
//第三頁 ALL NG DATA
with qry_ALL do
  begin
    active:=false;
    sql.Clear;
    sql.add('select CGZL.SEASON,CGZL.PURPOSE,MaterialNG.CLBH,CLZL.YWPM,CLZL.DWBH,ZSZL.ZSYWJC,NG_ETD,NG_ETA, ');
    sql.add('       MaterialNG.CGNO,MaterialNG.NG_Date,MaterialNG.NG_Reason,MaterialNG.REMARK,MaterialNG.Result,MaterialNG.USERDATE,MaterialNG.USERID');
    sql.add('from MaterialNG ');
    sql.add('left join CLZL  on CLZl.CLDH=MaterialNG.CLBH ');
    sql.add('left join CGZLS  on CGZLS.CGNO=MaterialNG.CGNO and CGZLS.CLBH=MaterialNG.CLBH ');
    sql.add('left join CGZL  on CGZLS.CGNO=CGZL.CGNO  ');
    sql.Add('left join zszl on zszl.zsdh=CGZl.ZSBH ');
    sql.add('where 1=1 ');
    if edit8.Text<>'' then
       sql.add('   and MaterialNG.CGNO='+''''+edit8.Text+'''');
    if edit6.Text<>'' then
       sql.add('   and MaterialNG.CLBH like '+''''+edit6.Text+'%'+'''');
    if edit3.Text<>'' then
       sql.add('   and ZSZL.ZSYWJC like '+'''%'+edit3.Text+'%'+'''');
    if edit4.Text<>'' then
       sql.add('   and CLZL.YWPM like '+'''%'+edit4.Text+'%'+'''');
    if length(edit1.Text) > 0 then
       sql.add('   and CGZL.SEASON='+''''+edit1.Text+'''');
    if length(edit2.Text) > 0 then
       sql.Add('   and CGZL.PURPOSE='+''''+edit2.Text+'''');
    if RadioGroup1.ItemIndex=1 then
       sql.Add('   and (isnull(MaterialNG.Result,'''')='''') AND MaterialNG.NG_Date IS NOT NULL  and ISNULL(MaterialNG.NG_Reason,'''')<>''OK'' ' );
    if RadioGroup1.ItemIndex=0 then
       sql.Add('   and MaterialNG.Result<>''''  ' );

    active:=true;
  end;

end;

procedure TMaterialNG.FormDestroy(Sender: TObject);
begin
  MaterialNG:=nil;
end;

procedure TMaterialNG.FormCreate(Sender: TObject);
begin
// DTP2.Datetime:=Now();
// DTP1.Datetime:=Now()-30;

pgc1.ActivePageIndex:=1;
with qry4 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select getdate() as NDate ');
    active:=true;
    NDate:=fieldbyname('NDate').Value;
    active:=false;
  end;


end;

procedure TMaterialNG.dbgrdh4DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin

//  if   qry_article.Fieldbyname('srtype').AsString ='2'   then //代表有買,但已不使用
//       dbgrdh4.canvas.font.color:=clRed;
//  dbgrdh4.DefaultDrawColumnCell(Rect,DataCol,Column,State);
end;

procedure TMaterialNG.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin

//  if   Query1.Fieldbyname('fail').value = true   then //代表Fail
//       DBGrid1.canvas.font.color:=clRed;
//  DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,State);

end;

procedure TMaterialNG.S1Click(Sender: TObject);
begin
if query1.Active then
  begin
    Query1.RequestLive:=true;
    Query1.CachedUpdates:=true;
    DBGrid1.Columns[8].ReadOnly:=false;
    DBGrid1.Columns[9].ReadOnly:=false;
    DBGrid1.Columns[10].ReadOnly:=false;
    DBGrid1.Columns[11].ReadOnly:=false;
    DBGrid1.Columns[12].ReadOnly:=false;
    DBGrid1.Columns[13].ReadOnly:=false;
    DBGrid1.Columns[14].ReadOnly:=false;
    DBGrid1.Columns[15].ReadOnly:=false;
    DBGrid1.columns[8].ButtonStyle:=cbsAuto;
    DBGrid1.columns[10].ButtonStyle:=cbsAuto;
    DBGrid1.columns[11].ButtonStyle:=cbsAuto;
    s1.Enabled:=false;
    s4.Enabled:=false;
    s5.Enabled:=false;
    S2.enabled:=true;
    S3.enabled:=true;
    qry_article.Active:=FALSE;
  end;
end;

procedure TMaterialNG.S2Click(Sender: TObject);
begin
with query1 do
  begin
    first;
    while not eof do
      begin
        if updatestatus=usmodified then
          begin
            if (fieldbyname('NG_Date').AsString='') and (fieldbyname('NG_Reason').AsString='')and (fieldbyname('NG_ETD').AsString='')and (fieldbyname('NG_ETA').AsString='')and (fieldbyname('Result').AsString='')and (fieldbyname('REMARK').AsString='')  then
              begin
                with qry4 do
                begin
                  active:=false;
                  sql.Clear;
                  sql.Add(' delete MaterialNG  ');
                  sql.Add(' where CLBH = '''+query1.fieldbyname('CLBH').AsString+'''');
                  sql.Add('     and CGNO='''+query1.fieldbyname('CGNO').AsString+'''');
                  sql.Add('     and NG_Date='''+query1.fieldbyname('oldNG_Date').AsString+'''');
                  execsql;
                end;
              end
            else
              begin
                with qry4 do
                begin
                  active:=false;
                  sql.Clear;
                  sql.Add(' select * from MaterialNG where CLBH='''+query1.fieldbyname('CLBH').AsString+'''');
                  sql.Add('                            and CGNO='''+query1.fieldbyname('CGNO').AsString+'''');
                  sql.Add('                            and NG_Date='''+query1.fieldbyname('oldNG_Date').AsString+'''');
                  active:=true;
                  if eof then
                  begin
                    active:=false;
                    sql.Clear;
                    sql.Add(' insert MaterialNG (CLBH,CGNO,NG_Date,NG_Reason,Result,REMARK');
                    if not query1.fieldbyname('NG_ETD').IsNull then
                      sql.Add(',NG_ETD');
                    if not query1.fieldbyname('NG_ETA').IsNull then
                      sql.Add(',NG_ETA');
                    sql.Add(') values (');
                    sql.Add(' '''+query1.fieldbyname('CLBH').AsString+'''');
                    sql.Add(','''+query1.fieldbyname('CGNO').AsString+'''');
                    if  query1.fieldbyname('NG_Date').AsString='' then
                        sql.Add(','''+formatdatetime('yyyy/mm/dd',date)+'''' )
                    else
                        sql.Add(','''+query1.fieldbyname('NG_Date').AsString+'''');

                    sql.Add(','''+query1.fieldbyname('NG_Reason').AsString+'''');
                    sql.Add(','''+query1.fieldbyname('Result').AsString+'''');
                    sql.Add(','''+query1.fieldbyname('REMARK').AsString+'''');
                    if not query1.fieldbyname('NG_ETD').IsNull then
                      sql.Add(','''+query1.fieldbyname('NG_ETD').AsString+'''');
                    if not query1.fieldbyname('NG_ETA').IsNull then
                      sql.Add(','''+query1.fieldbyname('NG_ETA').AsString+'''');
                    sql.Add(')');
                    execsql;
                  end
                  else
                  begin
                    active:=false;
                    sql.Clear;
                    sql.Add(' update MaterialNG set ');
                    if query1.fieldbyname('NG_ETD').IsNull then
                       sql.Add(' NG_ETD=null')
                       else
                       sql.Add(' NG_ETD='''+query1.fieldbyname('NG_ETD').AsString+'''');
                    if query1.fieldbyname('NG_ETA').IsNull then
                       sql.Add(' ,NG_ETA=null')
                       else
                       sql.Add(' ,NG_ETA='''+query1.fieldbyname('NG_ETA').AsString+'''');
                    sql.Add(' ,NG_Date='''+query1.fieldbyname('NG_Date').AsString+'''');
                    sql.Add(' ,NG_Reason='''+query1.fieldbyname('NG_Reason').AsString+'''');
                    sql.Add(' ,Result='''+query1.fieldbyname('Result').AsString+'''');
                    sql.Add(' ,REMARK='''+query1.fieldbyname('REMARK').AsString+'''');
                    sql.Add(' where CLBH = '''+query1.fieldbyname('CLBH').AsString+'''');
                    sql.Add('   and CGNO = '''+query1.fieldbyname('CGNO').AsString+'''');
                    sql.Add('   and NG_Date='''+query1.fieldbyname('oldNG_Date').AsString+'''');
                    execsql;
                  end;
                end;
              end;  
          end;
        next;
      end;
    active:=false;
    cachedupdates:=false;
    requestlive:=false;
    active:=true;
  end;
  s1.Enabled:=true;
  s4.Enabled:=true;
  s5.Enabled:=true;
  S2.enabled:=false;
  S3.Enabled:=false;
  DBGrid1.Columns[8].ReadOnly:=true;
  DBGrid1.Columns[9].ReadOnly:=true;
  DBGrid1.Columns[10].ReadOnly:=true;
  DBGrid1.Columns[11].ReadOnly:=true;
  DBGrid1.Columns[12].ReadOnly:=true;
  DBGrid1.Columns[13].ReadOnly:=true;
  DBGrid1.Columns[14].ReadOnly:=true;
  DBGrid1.Columns[15].ReadOnly:=true;
  DBGrid1.columns[8].ButtonStyle:=cbsnone;
  DBGrid1.columns[10].ButtonStyle:=cbsnone;
  DBGrid1.columns[11].ButtonStyle:=cbsnone;
  qry_article.Active:=true;
end;

procedure TMaterialNG.S3Click(Sender: TObject);
begin
if query1.CachedUpdates then
  begin
    query1.Active:=false;
    query1.CachedUpdates:=false;
    query1.RequestLive:=false;
    s1.Enabled:=true;
    s4.Enabled:=true;
    s5.Enabled:=true;
    S2.Enabled:=false;
    S3.enabled:=false;
    DBGrid1.Columns[8].ReadOnly:=true;
    DBGrid1.Columns[9].ReadOnly:=true;
    DBGrid1.Columns[10].ReadOnly:=true;
    DBGrid1.Columns[11].ReadOnly:=true;
    DBGrid1.Columns[12].ReadOnly:=true;
    DBGrid1.Columns[13].ReadOnly:=true;
    DBGrid1.Columns[14].ReadOnly:=true;
    DBGrid1.Columns[15].ReadOnly:=true;    
    DBGrid1.columns[8].ButtonStyle:=cbsnone;
    DBGrid1.columns[10].ButtonStyle:=cbsnone;
    DBGrid1.columns[11].ButtonStyle:=cbsnone;
    query1.Active:=true;
    qry_article.Active:=true;    
  end;
end;

procedure TMaterialNG.Query1UNDERTESTChange(Sender: TField);
begin
  if  Query1.fieldbyname('UNDERTEST').Value=true then
     begin
       Query1.fieldbyname('PASS').Value:=false;
       Query1.fieldbyname('FAIL').Value:=false;
     end;

end;

procedure TMaterialNG.Query1PASSChange(Sender: TField);
begin
  if  Query1.fieldbyname('PASS').Value=true then
     begin
       Query1.fieldbyname('UNDERTEST').Value:=false;
       Query1.fieldbyname('FAIL').Value:=false;
     end;
end;

procedure TMaterialNG.Query1FAILChange(Sender: TField);
begin
  if  Query1.fieldbyname('FAIL').Value=true then
     begin
       Query1.fieldbyname('UNDERTEST').Value:=false;
       Query1.fieldbyname('PASS').Value:=false;
     end;

end;

procedure TMaterialNG.Button2Click(Sender: TObject);
var
  ExpClass:TDBGridEhExportClass;
  Ext, target:String;
  tdbgh : TDBGridEh;
begin
  target := 'ts1/ts2/ts3';
  tdbgh := DBGrid1;
  if pgc1.ActivePage.Name='TS1' THEN
     tdbgh := DBGrid1;
  if pgc1.ActivePage.Name='TS2' THEN
     tdbgh := DBGridEh1;
  if pgc1.ActivePage.Name='TS3' THEN
     tdbgh := DBGridEh2;
  if (tdbgh is TDBGridEh) then
    if SaveDialog1.Execute then
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
        SaveDBGridEhToExportFile(ExpClass,tdbgh,SaveDialog1.FileName,not ckbsel.Checked);
        if Application.MessageBox('Do you want to open the exported file?','Open file',MB_YESNO) = IDYES then
          shellexecute(handle,'open',pchar(SaveDialog1.FileName),nil,nil,SW_SHOWNORMAL);
      end;
    end;


end;

procedure TMaterialNG.DBGridEh1CellClick(Column: TColumnEh);
begin
   dbg2 := true;
end;

procedure TMaterialNG.DBGridEh1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
//  if   Qry2.Fieldbyname('srtype').AsString ='2'   then //代表沒買的母件
//       DBGridEh1.canvas.font.color:=clblue;
//  if   Qry2.Fieldbyname('srtype').AsString ='3'   then //代表沒買的子件
//       DBGridEh1.canvas.font.color:=clFuchsia;
//  if   Qry2.Fieldbyname('srtype').AsString ='4'   then //代表沒買的其他件
//       DBGridEh1.canvas.font.color:=clAqua;
//  if   Qry2.Fieldbyname('fail').value = true   then //代表Fail
//       DBGridEh1.canvas.font.color:=clRed;
//  DBGridEh1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
end;

procedure CompressIt(var CompressedStream: TMemoryStream; const CompressionLevel: TCompressionLevel);

// 參數是傳遞的流和壓縮方式

var

   SourceStream: TCompressionStream;

   DestStream: TMemoryStream;

   Count: int64; //注意，此處修改了,原來是int

begin

   //獲得流的原始尺寸

   Count := CompressedStream.Size;

   DestStream := TMemoryStream.Create;

   SourceStream := TCompressionStream.Create(CompressionLevel, DestStream);

   try

      //SourceStream中保存著原始的流

      CompressedStream.SaveToStream(SourceStream);

      //將原始流進行壓縮， DestStream中保存著壓縮後的流

      SourceStream.Free;

      CompressedStream.Clear;

      //寫入原始圖像的尺寸

      CompressedStream.WriteBuffer(Count, SizeOf(Count));

      //寫入經過壓縮的流

      CompressedStream.CopyFrom(DestStream, 0);

   finally

      DestStream.Free;

   end;

end;

procedure UnCompressit(const CompressedStream: TMemoryStream; var UnCompressedStream: TMemoryStream);

//參數 壓縮過的流，解壓後的流

var

   SourceStream: TDecompressionStream;

   DestStream: TMemoryStream;

   Buffer: PChar;

   Count: int64;

begin

   //從被壓縮的圖像流中讀出原始的尺寸

   CompressedStream.ReadBuffer(Count, SizeOf(Count));

   //根據尺寸大小為將要讀入的原始流分配內存塊

   GetMem(Buffer, Count);

   DestStream := TMemoryStream.Create;

   SourceStream := TDecompressionStream.Create(CompressedStream);

   try

      //將被壓縮的流解壓縮，然後存入 Buffer內存塊中

      SourceStream.ReadBuffer(Buffer^, Count);

      //將原始流保存至 DestStream流中

      DestStream.WriteBuffer(Buffer^, Count);

      DestStream.Position := 0; //復位流指針

//      DestStream.Position := length(VER_INFO);

      //從 DestStream流中載入圖像流

      UnCompressedStream.LoadFromStream(DestStream);

   finally

      FreeMem(Buffer);

      DestStream.Free;

   end;

end;


procedure TMaterialNG.DBGridEh2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
 // if   Qry_ALL.Fieldbyname('fail').value = true   then //代表Fail
 //      DBGridEh2.canvas.font.color:=clRed;
 // DBGridEh2.DefaultDrawColumnCell(Rect,DataCol,Column,State);
end;

procedure TMaterialNG.S4Click(Sender: TObject);
var
   SM: TMemoryStream;
begin
   if OpenDialog1.Execute then
      begin
         SM := TMemoryStream.Create;
         try
            Sm.LoadFromFile(OpenDialog1.FileName);
            SM.Position := 0;
            Compressit(sm, clDefault);
            with qry4 do
            begin
              active:=false;
              sql.Clear;
              SQL.Add('update MaterialNG set zipReport=:zipReport,file_name=:file_Name,file_Size=:file_Size,userid=:userid,userdate=:userdate ');//進行插入操作
              sql.Add(' where CLBH = '''+query1.fieldbyname('CLBH').AsString+'''');
              sql.Add('   and CGNO = '''+query1.fieldbyname('CGNO').AsString+'''');
              sql.Add('   and NG_Date='''+query1.fieldbyname('oldNG_Date').AsString+'''');
              ParamByName('zipReport').LoadFromStream(sm,ftBlob);//讀取保存的壓縮檔
              ParamByName('file_name').Value:=extractfilename(OpenDialog1.FileName);
              ParamByName('file_Size').Value:=strtoint(inttostr(sm.Size));
              ParamByName('userID').Value:=main.edit1.text;
              ParamByName('userdate').Value:=formatdatetime('yyyy/MM/dd',Ndate);
              ExecSQL;
              //button1.OnClick(Sender);
              Query1.active:=false;
              Query1.active:=TRUE;
            end;
         finally
            SM.Free;
         end;
      end;

end;

procedure TMaterialNG.S5Click(Sender: TObject);
var
  blob: TBlobStream;
  SM,DM: TMemoryStream;
begin
  if not query1.FieldByName('File_Name').IsNull then
  begin
    savedialog1.FileName :=  query1.FieldByName('File_Name').AsString;
    if SaveDialog1.Execute then
      begin
        with qry4 do
          begin
           active:=false;
           sql.Clear;
           sql.add('select zipReport FROM MaterialNG ');
           sql.Add(' where CLBH = '''+query1.fieldbyname('CLBH').AsString+'''');
           sql.Add('   and CGNO = '''+query1.fieldbyname('CGNO').AsString+'''');
           sql.Add('   and NG_Date='''+query1.fieldbyname('oldNG_Date').AsString+'''');
           active:=true;
          end;
         blob := TBlobStream.Create((qry4.FieldByName('zipReport') as TBlobField), bmRead);
         blob.Seek(0, soFromBeginning);
         SM := TMemoryStream.Create;
         SM.CopyFrom(blob,blob.Size);
         DM := TMemoryStream.Create;
         try
            SM.Position := 0;
            UnCompressit(sm, dm);
            dm.Position := 0;
            dm.SaveToFile(SaveDialog1.FileName);
         finally
            SM.Free;
            DM.Free;
         end;
         if Application.MessageBox('Do you want to open the exported file?','Open file',MB_YESNO) = IDYES then
            shellexecute(handle,'open',pchar(SaveDialog1.FileName),nil,nil,SW_SHOWNORMAL);
      end;
  end;

end;

end.
