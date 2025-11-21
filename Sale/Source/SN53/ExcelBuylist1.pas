unit ExcelBuylist1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, GridsEh, DBGridEh,comobj, DBClient,
  DBCtrls, DB, DBTables, AppEvnts, Menus, ComCtrls;

type
  TExcelBuylist = class(TForm)
    opendialog: TOpenDialog;
    DS1: TDataSource;
    DD_buylistQuery: TQuery;
    UpdateDD_Buylist: TUpdateSQL;
    DD_buylistQueryKHPO: TStringField;
    DD_buylistQueryDDGB: TStringField;
    DD_buylistQueryDDRQ: TStringField;
    DD_buylistQueryDDCG: TStringField;
    DD_buylistQueryMLT: TStringField;
    DD_buylistQueryLeadtime: TStringField;
    DD_buylistQueryRGAC: TDateTimeField;
    DD_buylistQueryOGAC: TDateTimeField;
    DD_buylistQueryRGOG: TIntegerField;
    DD_buylistQueryGAC: TDateTimeField;
    DD_buylistQueryRemark: TStringField;
    DD_buylistQueryArticle: TStringField;
    DD_buylistQueryDDBH: TStringField;
    DD_buylistQuerypairs: TIntegerField;
    bnFirst: TBitBtn;
    bnPrior: TBitBtn;
    bnNext: TBitBtn;
    bnLast: TBitBtn;
    DD_buylistQueryFWZH: TStringField;
    DD_buylistQueryVDJS: TDateTimeField;
    DD_buylistQueryVDWC: TDateTimeField;
    DD_buylistQueryZSJS: TDateTimeField;
    DD_buylistQueryZSWC: TDateTimeField;
    PC1: TPageControl;
    Sales_BOM_Import: TTabSheet;
    Panel2: TPanel;
    label35: TLabel;
    bbt1: TButton;
    BB7: TBitBtn;
    BB6: TBitBtn;
    BB5: TBitBtn;
    BB4: TBitBtn;
    BB1: TBitBtn;
    bbt6: TBitBtn;
    Panel1: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    DBGridEh1: TDBGridEh;
    DD_buylistQueryuserid: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bbt1Click(Sender: TObject);
    procedure DBGridEh1ColEnter(Sender: TObject);
    procedure BB7Click(Sender: TObject);
    procedure BB1Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure bnLastClick(Sender: TObject);
    procedure bnNextClick(Sender: TObject);
    procedure bnPriorClick(Sender: TObject);
    procedure bnFirstClick(Sender: TObject);
    procedure bbt6Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);

  private

  public
    { Public declarations }
  end;

var
  ExcelBuylist: TExcelBuylist;


implementation

uses main1,FunUnit;

{$R *.dfm}

procedure TExcelBuylist.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=caFree;
end;

procedure TExcelBuylist.bbt1Click(Sender: TObject);
var
  aa:string;
  a,j,n:integer;
  eof:double;
  flag:boolean;
  MsExcel:olevariant;
  MsExcelWorkbook: Variant;
  KHPO,DDGB,DDCG,Article,DDRQ,DDBH,MLT,Leadtime,Pairs,RGAC,OGAC,RGOG,GAC,FWZH,VDJS,VDWC,ZSJS,ZSWC,userid,Remark:TStringlist;       //Tstring:抽像類別Tempstyle:String;
begin
  bb4.Enabled:=true;
  bb5.enabled:=trUe;
  bb6.enabled:=trUe;
    with DD_Buylistquery do
    begin
         active:=false;
         sql.Clear;
         sql.add('select DDZLTW.KHPO,DDZLTW.DDGB,DD_Buylist.DDCG,DDZLTW.Article,convert(varchar(10),DDZLTW.DDRQ,111) as DDRQ,  ');
         sql.Add('DDZLTW.DDBH,DD_Buylist.MLT,DD_Buylist.Leadtime,DDZLTW.pairs as Pairs ,convert(smalldatetime,convert(varchar(10),DD_Buylist.RGAC,111)) as RGAC,');
         sql.add('convert(smalldatetime,convert(varchar(10),DD_Buylist.OGAC,111)) as OGAC, ');
         sql.add('datediff(day,convert(smalldatetime,convert(varchar(10),DD_Buylist.RGAC,111)) ,convert(smalldatetime,convert(varchar(10),DD_Buylist.OGAC,111))) as RGOG, ');
         sql.Add('convert(smalldatetime,convert(varchar(10),DD_buylist.GAC,111)) as GAC,DD_buylist.FWZH,convert(smalldatetime,convert(varchar(10),DD_buylist.VDJS,111)) as VDJS,');
         sql.Add('convert(smalldatetime,convert(varchar(10),DD_buylist.VDWC,111)) as VDWC,convert(smalldatetime,convert(varchar(10),DD_buylist.ZSJS,111)) as ZSJS,convert(smalldatetime,convert(varchar(10),DD_buylist.ZSWC,111)) as ZSWC,');
         sql.add('DD_buylist.userid,DD_Buylist.Remark  from DD_Buylist');
         sql.add('left join DDZLTW  on DDZLTW.khpo=DD_Buylist.KHPO and ddzltw.ddbh=dd_buylist.ddbh ');
         sql.Add('where 1=2');
         active:=true;
    end;
    KHPO:=TStringList.Create;
    DDGB:=Tstringlist.Create;
    DDCG:=Tstringlist.create;
    Article:=Tstringlist.Create;
    DDRQ:=Tstringlist.create;
    DDBH:=Tstringlist.create;
    MLT:=Tstringlist.create;
    Leadtime:=Tstringlist.create;
    Pairs:=Tstringlist.create;
    RGAC:=Tstringlist.create;
    OGAC:=Tstringlist.create;
    RGOG:=Tstringlist.create;
    GAC:=Tstringlist.create;
    FWZH:=Tstringlist.create;
    VDJS:=Tstringlist.create;
    VDWC:=Tstringlist.create;
    ZSJS:=Tstringlist.create;
    ZSWC:=Tstringlist.create;
    Userid:=Tstringlist.create;
    Remark:=Tstringlist.Create;

    if opendialog.Execute then
    begin
       MsExcel:=CreateOleObject('Excel.Application');
       MsExcelWorkBook := msExcel.Workbooks.Open(OpenDialog.FileName);
       n:=0;
       j:=2;
       flag:=true;
       while(flag=true)  do
       begin
          if  Length(msExcel.WorkBooks[1].WorkSheets[1].Cells[j,1])=9 then
          begin
            aa:='0'+inttostr(msExcel.WorkBooks[1].WorkSheets[1].Cells[j,1]);   //' '+' '字串相加
          end else                                                            //if else.else後面如果只是一行 不用加end
            aa:=(msExcel.WorkBooks[1].WorkSheets[1].Cells[j,1]);
            KHPO.Add(aa);
            DDGB.Add(msExcel.WorkBooks[1].WorkSheets[1].Cells[j,2]);         //msExcel.WorkBooks[1].WorkSheets[1]:打開excel第一個檔案 的第一頁
            DDCG.Add(msExcel.WorkBooks[1].WorkSheets[1].Cells[j,3]);
            //Article.Add(msExcel.WorkBooks[1].WorkSheets[1].Cells[j,4]);
            //DDRQ.Add(msExcel.WorkBooks[1].WorkSheets[1].Cells[j,5]);
            //DDBH.Add(msExcel.WorkBooks[1].WorkSheets[1].Cells[j,6]);
            MLT.Add(msExcel.WorkBooks[1].WorkSheets[1].Cells[j,7]);
            Leadtime.Add(msExcel.WorkBooks[1].WorkSheets[1].Cells[j,8]);
            //Pairs.Add(msExcel.WorkBooks[1].WorkSheets[1].Cells[j,9]);
            RGAC.Add(msExcel.WorkBooks[1].WorkSheets[1].Cells[j,10]);
            OGAC.Add(msExcel.WorkBooks[1].WorkSheets[1].Cells[j,11]);
            RGOG.Add(msExcel.WorkBooks[1].WorkSheets[1].Cells[j,12]);
            FWZH.Add(msExcel.WorkBooks[1].WorkSheets[1].Cells[j,14]);
            userid.Add(msExcel.WorkBooks[1].WorkSheets[1].Cells[j,19]);
            Remark.Add(msExcel.WorkBooks[1].WorkSheets[1].Cells[j,20]);
            eof:=msExcel.WorkBooks[1].WorkSheets[1].Cells[j,1];
            label35.caption:=inttostr(n);  //計算洄圈
            n:=n+1;//秀出目前資料讀取比數
            j:=j+1;
            // eof:=msExcel.WorkBooks[1].WorkSheets[1].Cells[j,1];
            if (eof=0) then
            begin
              flag:=false;
            end;
        end;
        MsExcelWorkBook.Close;
        MsExcel.Quit;
        with DD_Buylistquery do                   //開始
        begin
          cachedupdates:=true;
          requestlive:=true;
          DD_Buylistquery.edit;
          DD_Buylistquery.first;
        end;
        for j:=0 to n-2 do                       //標題有幾列就要扣多少,像這一次標題只有一行所以扣一就行
        begin
         DD_Buylistquery.insert;
         DD_Buylistquery.FieldByName('KHPO').value:=KHPO[j]; //將KHPO的值帶入
         DD_Buylistquery.FieldByName('DDGB').value:=DDGB[j];
         DD_Buylistquery.FieldByName('DDCG').value:=DDCG[j];
         //DD_Buylistquery.FieldByName('Article').value:=Article[j];
         //DD_Buylistquery.FieldByName('DDRQ').value:=strtodate(DDRQ[j]);
         //DD_Buylistquery.FieldByName('DDBH').value:=DDBH[j];
         DD_Buylistquery.FieldByName('MLT').value:=MLT[j];
         DD_Buylistquery.FieldByName('Leadtime').value:=Leadtime[j];
         //DD_Buylistquery.FieldByName('Pairs').value:=Pairs[j];
         DD_Buylistquery.FieldByName('RGAC').value:=strtodate(RGAC[j]);
         DD_Buylistquery.FieldByName('OGAC').value:=strtodate(OGAC[j]);
         DD_Buylistquery.FieldByName('RGOG').value:=strtoint('0'+RGOG[j]);
         DD_Buylistquery.FieldByName('FWZH').value:=FWZH[j];
         DD_Buylistquery.FieldByName('userid').value:=userid[j];
         DD_Buylistquery.FieldByName('Remark').value:=Remark[j];
         DD_Buylistquery.Post;
        end;
        DD_Buylistquery.next;
       end;
    KHPO.Free;
    DDGB.Free;
    DDCG.Free;
    Article.Free;
    DDRQ.Free;
    DDBH.free;
    MLT.free;
    Leadtime.Free;
    Pairs.Free;
    RGAC.Free;
    OGAC.free;
    RGOG.Free;
    FWZH.free;
    VDJS.free;
    VDWC.Free;
    ZSJS.free;
    ZSWC.free;
    Remark.free;
    userid.Free;
end;

procedure TExcelBuylist.DBGridEh1ColEnter(Sender: TObject);
begin
   if DD_buylistquery.RequestLive then
    begin
       if DBGRIDEH1.selectedfield.fieldname='RGOG' then
       begin
          if (not DD_buylistquery.fieldbyname('RGAC').isnull ) and  (not DD_buylistquery.fieldbyname('OGAC').isnull ) then
          begin
             if DD_buylistquery.fieldbyname('RGAC').value <>0 then
             begin
                DD_buylistquery.Edit;
                DD_buylistquery.fieldbyname('RGOG').value:=DD_buylistquery.fieldbyname('RGAC').value-DD_buylistquery.fieldbyname('OGAC').value ;
             end;
          end;
       end;
    end;
end;


procedure TExcelBuylist.BB7Click(Sender: TObject);
begin
   close;
end;

procedure TExcelBuylist.BB5Click(Sender: TObject);
var i:integer;
begin
   edit1.visible:=false;
   try
      DD_buylistquery.cachedupdates:=true;
      DD_buylistquery.requestlive:=true;
      DD_buylistquery.first;
      for i:=1 to DD_buylistquery.RecordCount do
      begin
         case DD_buylistquery.updatestatus of                         //save動作
         usinserted:
         updateDD_buylist.apply(ukinsert);

         end;
          DD_buylistquery.next;                                     //ukinsert end
      end;
         begin                                           //modify start;
            case DD_buylistquery.updatestatus of
            usmodified:
            updateDD_buylist.apply(ukmodify);
            end;
         end;                                                              //try except:異常去除
            DD_buylistquery.next;
            with DD_buylistquery do

            begin
               active:=false;
               requestlive:=false;
               cachedupdates:=false;
               active:=true;
            end;
     bbt6.enabled:=true;
     bb1.Enabled:=true;
     bb4.Enabled:=true;
     bb5.Enabled:=false;
     bb6.Enabled:=false;
   except
   Messagedlg('Have wrong,can not save!',mtwarning,[mbyes],0);
   end;
end;

procedure TExcelBuylist.BB1Click(Sender: TObject);
begin
//   if edit1.text<>'' then       //攔截作用: 當你要叫資料庫資料很多時候 可以用攔截
   with DD_buylistquery do
   begin
     active:=false;
     DD_buylistquery.sql.Clear;
     DD_buylistquery.sql.add('select DD_buylist.KHPO,DD_buylist.DDGB,DD_Buylist.DDCG,DDZLTW.Article,convert(varchar(10),DDZLTW.DDRQ,111) as DDRQ,  ');
     DD_buylistquery.sql.Add('DDzltw.ddbh ,DD_Buylist.MLT,DD_Buylist.Leadtime,DDZLTW.pairs as Pairs ,');
     DD_buylistquery.sql.add('convert(smalldatetime,convert(varchar(10),DD_Buylist.RGAC,111)) as RGAC,convert(smalldatetime,convert(varchar(10),DD_Buylist.OGAC,111)) as OGAC, ');
     DD_buylistquery.sql.add('datediff(day,convert(smalldatetime,convert(varchar(10),DD_Buylist.OGAC,111)) ,convert(smalldatetime,convert(varchar(10),DD_Buylist.RGAC,111))) as RGOG, ');
     DD_buylistquery.sql.Add('convert(smalldatetime,convert(varchar(10),DD_buylist.GAC,111)) as GAC,');
     DD_buylistquery.sql.Add('DD_buylist.FWZH,DD_buylist.VDJS,DD_buylist.VDWC,DD_buylist.ZSJS,DD_buylist.ZSWC,DD_buylist.userid,DD_buylist.Remark  from DD_Buylist');
     DD_buylistquery.sql.add('left join DDZLTW  on DDZLTW.khpo=DD_Buylist.khpo    ');
     DD_buylistquery.sql.Add('where DD_buylist.KHPO is not Null ');
     DD_buylistquery.sql.Add('and DD_buylist.KHPO like ''%'+edit1.Text+'%'' ');
     active:=true;
   end;
   edit1.visible:=true;
   bnfirst.Enabled:=true;
   bnprior.Enabled:=true;
   bnnext.enabled:=true;
   bnLast.Enabled:=true;
   bbt6.enabled:=true;
   bb4.Enabled:=true;
   bb5.Enabled:=true;
   bb6.enabled:=true;
   bb7.Enabled:=true;
end;

procedure TExcelBuylist.BB6Click(Sender: TObject);
begin
  edit1.Visible:=false;
  with DD_buylistquery do
  begin
    active:=false;
    cachedupdates:=false;
    requestlive:=false;
    active:=true;
  end;
    bb1.Enabled:=true;
    bb4.Enabled:=true;
    bb5.Enabled:=false;
    bb6.Enabled:=false;
    edit1.Visible:=false;
end;

procedure TExcelBuylist.BB4Click(Sender: TObject);
begin
  with DD_buylistquery do
  begin
    cachedupdates:=true;
    requestlive:=true;
    DD_buylistquery.edit;
  end;
  bnfirst.Enabled:=true;
  bnprior.Enabled:=true;
  bnnext.enabled:=true;
  bnLast.Enabled:=true;
  bbt6.enabled:=true;
  bb4.Enabled:=false;
  bb5.enabled:=true;
  bb6.enabled:=true;
  DBGRIDEH1.columns[0].ButtonStyle:=cbsEllipsis;
end;

procedure TExcelBuylist.bnLastClick(Sender: TObject);
begin
  DD_buylistquery.Last;
end;

procedure TExcelBuylist.bnNextClick(Sender: TObject);
begin
  DD_buylistquery.Next;
end;

procedure TExcelBuylist.bnPriorClick(Sender: TObject);
begin
  DD_buylistquery.prior;
end;

procedure TExcelBuylist.bnFirstClick(Sender: TObject);
begin
  DD_buylistquery.first;
end;

procedure TExcelBuylist.bbt6Click(Sender: TObject);
var
  eclApp,WorkBook:olevariant;
  i,j:integer;
begin
  if  DD_buylistquery.active  then
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
      for   i:=0   to  DD_buylistquery.fieldcount-1  do
      begin
         eclApp.Cells(1,i+1):=DD_buylistquery.fields[i].FieldName;
      end;
         DD_buylistquery.First;
         j:=2;
         while   not   DD_buylistquery.Eof   do
         begin
            for   i:=0   to  DD_buylistquery.fieldcount-1  do
            begin
              eclApp.Cells(j,i+1):=DD_buylistquery.Fields[i].Value;
            end;
              DD_buylistquery.Next;
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
procedure TExcelBuylist.FormDestroy(Sender: TObject);
begin
   ExcelBuylist:=nil;
end;

end.
