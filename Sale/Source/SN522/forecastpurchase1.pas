unit forecastpurchase1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBTables, DB, StdCtrls, GridsEh, DBGridEh, Buttons, ExtCtrls,
  ComCtrls, Comobj;

type
  Tforecastpurchase = class(TForm)
    PageControl3: TPageControl;
    TabSheet5: TTabSheet;
    Panel7: TPanel;
    ProcessInofLabel: TLabel;
    Label16: TLabel;
    BD9: TButton;
    BuyNoEdit: TEdit;
    BD7: TBitBtn;
    BD6: TBitBtn;
    BD5: TBitBtn;
    BD4: TBitBtn;
    BD3: TBitBtn;
    BD2: TBitBtn;
    BD1: TBitBtn;
    BD8: TBitBtn;
    ImportPanel: TPanel;
    DBGridEh3: TDBGridEh;
    Panel9: TPanel;
    DBGridEh4: TDBGridEh;
    Panel24: TPanel;
    Label15: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    BuyNoCoBox: TComboBox;
    MatNO2Edit: TEdit;
    ArticleEdit: TEdit;
    Button3: TButton;
    TabSheet7: TTabSheet;
    Panel10: TPanel;
    Label13: TLabel;
    Label14: TLabel;
    Button6: TButton;
    BuyNo2CoBox: TComboBox;
    ARTICLE4Edit: TEdit;
    Panel11: TPanel;
    DBGridEh5: TDBGridEh;
    TabSheet6: TTabSheet;
    Memo1: TMemo;
    ExcelDS_Pur: TDataSource;
    DS_fc_xxzls_pur: TDataSource;
    fc_xxzls_pur: TQuery;
    fc_xxzls_purclzmlb: TStringField;
    fc_xxzls_purywpm: TStringField;
    fc_xxzls_purbuyno: TStringField;
    fc_xxzls_purarticle: TStringField;
    fc_xxzls_purclbh: TStringField;
    fc_xxzls_purcscl: TFloatField;
    fc_xxzls_purcsbh: TStringField;
    fc_xxzls_purzsywjc: TStringField;
    FC_Pur: TQuery;
    FC_PurBUYNO: TStringField;
    FC_Purarticle: TStringField;
    FC_PurGSBH: TStringField;
    FC_PurUSERID: TStringField;
    FC_PurUSERDATE: TDateTimeField;
    upFC_pur: TUpdateSQL;
    SR_check_pur: TQuery;
    SR_check_purGSBH: TStringField;
    SR_check_purARTICLE: TStringField;
    SR_check_purUserID: TStringField;
    SR_check_purUserDate: TDateTimeField;
    SR_check_purbuyno: TStringField;
    DS_SR_check_pur: TDataSource;
    opendialog: TOpenDialog;
    tmpQry: TQuery;
    zsywjcEdit: TEdit;
    Label1: TLabel;
    Loc2CoBox: TComboBox;
    fc_xxzls_purCQDH: TStringField;
    Panel5: TPanel;
    BC1: TBitBtn;
    BC2: TBitBtn;
    BC3: TBitBtn;
    BC4: TBitBtn;
    BC5: TBitBtn;
    BC6: TBitBtn;
    BC7: TBitBtn;
    BC8: TBitBtn;
    upSR_check_pur: TUpdateSQL;
    Panel12: TPanel;
    DBGridEh6: TDBGridEh;
    Panel17: TPanel;
    Label23: TLabel;
    Memo3: TMemo;
    No_CFM: TBitBtn;
    DS_not_XXZL: TDataSource;
    not_XXZL: TQuery;
    not_XXZLbuyno: TStringField;
    not_XXZLArticle: TStringField;
    not_XXZLTotal: TFloatField;
    CBSum: TCheckBox;
    fc_xxzls_purpairs: TFloatField;
    fc_xxzls_purtotal: TFloatField;
    SR_check_purTotal: TFloatField;
    FC_Purtotal: TFloatField;
    FC_PurYN: TStringField;
    SR_check_purYN: TStringField;
    fc_xxzls_purDWBH: TStringField;
    fc_xxzls_purBWLB: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure BD9Click(Sender: TObject);
    procedure BD5Click(Sender: TObject);
    procedure BD6Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure BD8Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BD1Click(Sender: TObject);
    procedure BC1Click(Sender: TObject);
    procedure BC4Click(Sender: TObject);
    procedure BC8Click(Sender: TObject);
    procedure BC6Click(Sender: TObject);
    procedure BC5Click(Sender: TObject);
    procedure SR_check_purAfterOpen(DataSet: TDataSet);
    procedure No_CFMClick(Sender: TObject);
    procedure BC3Click(Sender: TObject);
    procedure BC2Click(Sender: TObject);
    procedure DBGridEh5GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  forecastpurchase: Tforecastpurchase;
  NDate:TDATE;
implementation

uses main1, FunUnit;

{$R *.dfm}

procedure Tforecastpurchase.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=CaFree;
end;

procedure Tforecastpurchase.FormDestroy(Sender: TObject);
begin
  forecastpurchase:=nil;
end;

procedure Tforecastpurchase.BD9Click(Sender: TObject);
var
  i,j,DataNum:integer;
  flag:boolean;
  MsExcel:olevariant;
  MsExcelWorkbook: Variant;
  buyno,article,total:TStringlist;
  articleStr:string;
begin
 label16.Visible:=true;
 BuyNoEdit.Visible:=true;
 if BuyNoEdit.text='' then
 begin
   showmessage('Plz input Buyno');
 end;
 if BuyNoEdit.text<>'' then
 begin
   ImportPanel.visible:=True;
   BD5.enabled:=True;
   BD6.enabled:=True;
   with FC_pur do
   begin
       active:=false;
       sql.Clear;
       sql.add('select * from FC_import_pur where 1=2');
       active:=true;
   end;
   article:=TStringList.Create;
   total:=TStringList.Create;
   if opendialog.Execute then
   begin
     MsExcel:=CreateOleObject('Excel.Application');
     MsExcelWorkBook := msExcel.Workbooks.Open(OpenDialog.FileName);
     DataNum:=0;
     j:=2;
     flag:=true;
      while(flag=true)  do
      begin
         articleStr:=msExcel.WorkBooks[1].WorkSheets[1].Cells[j,1];
         article.Add(msExcel.WorkBooks[1].WorkSheets[1].Cells[j,1]);
         total.Add(msExcel.WorkBooks[1].WorkSheets[1].Cells[j,2]);
         //eof:=msExcel.WorkBooks[1].WorkSheets[1].Cells[j,1];
         ProcessInofLabel.caption:=inttostr(DataNum);
         DataNum:=DataNum+1;//秀出目前資料讀取比數
         j:=j+1;
         if articleStr='' then
         begin
           flag:=false;
         end;
      end;
     MsExcelWorkBook.Close;
     MsExcel.Quit;

     with FC_pur do
     begin
       cachedupdates:=true;
       requestlive:=true;
       FC_pur.edit;
       FC_pur.first;
     end;

     for j:=0 to DataNum-2 do
     begin
       FC_pur.insert;
       FC_pur.FieldByName('article').value:=article[j];
       FC_pur.FieldByName('total').value:=strtofloat(total[j]);
       FC_pur.FieldByName('gsbh').value:=main.Edit2.text;
       FC_pur.FieldByName('USERID').value:=main.Edit1.text;
       FC_pur.FieldByName('USERdate').value:=NDate;
       FC_pur.FieldByName('buyno').value:=BuyNoEdit.text;
       FC_pur.FieldByName('YN').value:='1';
       FC_pur.Post;
     end;
     FC_pur.next;
     article.Free;
     total.Free;
   end;
 end;

end;

procedure Tforecastpurchase.BD5Click(Sender: TObject);
var
 i:integer;
begin
  label16.Visible:=false;
  BuyNoEdit.Visible:=false;
  try
    FC_Pur.cachedupdates:=true;
    FC_Pur.requestlive:=true;
    FC_Pur.first;
    for i:=1 to FC_Pur.RecordCount do
    begin
      case FC_Pur.updatestatus of
        usinserted:
           upFC_pur.apply(ukinsert);
      end;
      FC_Pur.next;
    end;
    with FC_Pur do
    begin
       active:=false;
       requestlive:=false;
       cachedupdates:=false;
       active:=true;
    end;
    BD5.Enabled:=false;
    BD6.Enabled:=false;
    with tmpQry do
    begin
       active:=false;
       sql.Clear;
       sql.add('select buyno from fc_import_pur');
       sql.add('group by buyno');
       active:=true;
       BuyNoCoBox.Items.Clear;
       BuyNo2CoBox.items.Clear;
       while not eof do
       begin
         BuyNoCoBox.items.add(fieldbyname('buyno').asstring );
         BuyNo2CoBox.items.add(fieldbyname('buyno').asstring );
         next;
       end;
    end;
    ImportPanel.visible:=false;
    BuyNoEdit.text:='';
    except
       Messagedlg('Have wrong,can not save!',mtwarning,[mbyes],0);
   end;

end;

procedure Tforecastpurchase.BD6Click(Sender: TObject);
begin
   Label16.Visible:=false;
   BuyNoEdit.Visible:=false;
    with FC_Pur do
    begin
      active:=false;
      cachedupdates:=false;
      requestlive:=false;
      active:=true;
    end;
    BD5.Enabled:=false;
    BD6.Enabled:=false;
    Label16.Visible:=false;
    BuyNoEdit.Visible:=false;
    ImportPanel.visible:=false;
end;

procedure Tforecastpurchase.Button3Click(Sender: TObject);
begin
 if BuyNoCoBox.text='' then
 begin
   showmessage('plz choose buyno');
 end;
 if BuyNoCoBox.text<>'' then
 begin
   with FC_xxzls_pur do
   begin
         active:=false;
         sql.Clear;
         if CBSum.Checked=true then
         begin
         sql.add('select BUYNO,''All'' as article,CLBH,ywpm,sum(IsNull(pairs,''0.0'')) as pairs,max(cscl) as CSCL,sum(IsNull(total,0)) as total,MAX(csbh) as CSBH,MAX(ZSYWJC) as ZSYWJC ,clzmlb,CQDH,DWBH,BWLB from ( ');
         end;
         sql.add('select Buyno,article,clbh,clzl.ywpm,pairs,sum(total) as cscl,pairs*sum(total) as total,csbh,zsywjc,clzl.clzmlb,CLZL.CQDH,clzl.DWBH,BWLB  from(');
         sql.add('select xxzls.bwbh,xxzl.article,FC_import_pur.buyno,');
         sql.add('       xxzls.clbh,FC_import_pur.total as pairs,xxzls.clsl as total,xxzls.csbh,zszl.zsywjc,xxzls.bwlb from FC_import_pur');
         sql.add('left join xxzl on xxzl.article=FC_import_pur.article ');
         sql.add('left join xxzls on xxzls.xiexing=xxzl.xiexing and xxzls.shehao=xxzl.shehao ');
         sql.add('left join kfxxzl on xxzl.xiexing=kfxxzl.xiexing and xxzl.shehao=kfxxzl.shehao ');
         sql.add('left join zszl on zszl.zsdh=xxzls.csbh');
         sql.add('where    xxzls.clbh is not null');
         if BuyNoCoBox.text<>'' then
            sql.add('and FC_import_pur.buyno='''+BuyNoCoBox.text+''' ');
         if zsywjcEdit.text<>'' then
            sql.add('and zszl.zsywjc like ''%'+zsywjcEdit.text+'%'' ');
         if MatNO2Edit.text<>'' then
            sql.add('and xxzls.clbh like '''+MatNO2Edit.text+'%'+'''');
         if ArticleEdit.text<>'' then
            sql.add('and xxzl.article='''+ArticleEdit.text+''' ');
         sql.add('group by xxzls.bwbh,xxzl.article,xxzls.clsl,FC_import_pur.buyno,FC_import_pur.article,xxzls.clbh,FC_import_pur.total,xxzls.csbh,zszl.zsywjc,xxzls.bwlb');
         sql.add('union');

         sql.add('select xxzls.bwbh,xxzl.article,FC_import_pur.buyno,');
         sql.add('       clzhzl.cldh1,FC_import_pur.total as pairs,xxzls.clsl*clzhzl.syl as total,clzhzl.zsdh,zszl.zsywjc,xxzls.bwlb');
         sql.add('FROM FC_import_pur');
         sql.add('left join xxzl on xxzl.article=FC_import_pur.article ');
         sql.add('left join xxzls on xxzls.xiexing=xxzl.xiexing and xxzls.shehao=xxzl.shehao ');
         sql.add('left join kfxxzl on xxzl.xiexing=kfxxzl.xiexing and xxzl.shehao=kfxxzl.shehao ');
         sql.add('inner join clzhzl on clzhzl.cldh=xxzls.clbh');
         sql.add('LEFT JOIN BWZL  ON xxzls.BWBH = BWZL.bwdh');
         sql.add('LEFT JOIN CLZL   ON clzhzl.cldh1 = CLZL.cldh');
         sql.add('LEFT JOIN LBZLS ON SUBSTRING(xxzls.CLBH,1,1) = LBZLS.lbdh AND LBZLS.LB=''05''');
         sql.add('LEFT JOIN ZSZL on ZSZL.ZSDH=clzhzl.zsdh');
         //抓取樣品碼
         sql.add('where  xxzls.clbh is not null');
         if BuyNoCoBox.text<>'' then
            sql.add('and FC_import_pur.buyno='''+BuyNoCoBox.text+''' ');
         if zsywjcEdit.text<>'' then
            sql.add('and ZSZL.zsywjc like ''%'+zsywjcEdit.text+'%'' ');
         if MatNO2Edit.text<>'' then
            sql.add('and clzhzl.cldh1 like '''+MatNO2Edit.text+'%'+'''');
         if ArticleEdit.text<>'' then
            sql.add('and xxzl.article='''+ArticleEdit.text+''' ');
         sql.add('GROUP BY xxzls.bwbh,xxzl.article,FC_import_pur.buyno,FC_import_pur.article,');
         sql.add('         clzhzl.cldh1,FC_import_pur.total,xxzls.clsl*clzhzl.syl,clzhzl.zsdh,zszl.zsywjc,xxzls.bwlb');

         sql.add('union');
         sql.add('select bwbh,article,buyno,clzhzl.cldh1,pairs,total,clzhzl.zsdh,ZSZL.zsywjc,bwlb from(  ');
         sql.add('select xxzls.bwbh,xxzl.article,FC_import_pur.buyno,');
         sql.add('       clzhzl.cldh1,FC_import_pur.total as pairs,xxzls.clsl*clzhzl.syl as total,clzhzl.zsdh,zszl.zsywjc,xxzls.bwlb');
         sql.add('FROM FC_import_pur');
         sql.add('left join xxzl on xxzl.article=FC_import_pur.article ');
         sql.add('left join xxzls on xxzls.xiexing=xxzl.xiexing and xxzls.shehao=xxzl.shehao ');
         sql.add('left join kfxxzl on xxzl.xiexing=kfxxzl.xiexing and xxzl.shehao=kfxxzl.shehao ');
         sql.add('inner join clzhzl on clzhzl.cldh=xxzls.clbh');
         sql.add('LEFT JOIN BWZL  ON xxzls.BWBH = BWZL.bwdh');
         sql.add('LEFT JOIN CLZL  ON clzhzl.cldh1 = CLZL.cldh');
         sql.add('LEFT JOIN LBZLS ON SUBSTRING(xxzls.CLBH,1,1) = LBZLS.lbdh AND LBZLS.LB=''05''');
         sql.add('LEFT JOIN ZSZL on ZSZL.ZSDH=clzhzl.zsdh');
         //抓取樣品碼
       //  sql.add('left join (select xiexing,shehao,ypcc as ypccc from ypzl where kfjd=''CR1''  or kfjd=''CR2'' group by xiexing,shehao,ypcc)size on size.xiexing=ypzl.xiexing and size.shehao=ypzl.shehao');
         sql.add('where  xxzls.clbh is not null');
         sql.add('and CLZHZL.SYL>0  and clzl.clzmlb=''Y''');
       //  sql.add('and ypzl.ypcc=size.ypccc');
         if BuyNoCoBox.text<>'' then
            sql.add('and FC_import_pur.buyno='''+BuyNoCoBox.text+''' ');
         if zsywjcEdit.text<>'' then
            sql.add('and ZSZL.zsywjc like ''%'+zsywjcEdit.text+'%'' ');
         if ArticleEdit.text<>'' then
            sql.add('and xxzl.article='''+ArticleEdit.text+''' ');
         sql.add('GROUP BY xxzls.bwbh,xxzl.article,FC_import_pur.buyno,FC_import_pur.article,');
         sql.add('         clzhzl.cldh1,FC_import_pur.total,xxzls.clsl*clzhzl.syl,clzhzl.zsdh,zszl.zsywjc,xxzls.bwlb)clzhzl2');
         sql.add('inner join clzhzl ON  clzhzl2.cldh1 = CLZHZL.cldh');
         sql.add('LEFT JOIN ZSZL on ZSZL.ZSDH=clzhzl.zsdh');
         sql.add('WHERE CLZHZL.cldh1 is not null');
         if MatNO2Edit.text<>'' then
            sql.add('and CLZHZL.cldh1 like '''+MatNO2Edit.text+'%'+'''');
         sql.add(' ) a ');
         sql.add('left join clzl on clzl.cldh=a.clbh ');
         sql.add('where clzl.clzmlb <>''Y''');
         if Loc2CoBox.text<>'' then
            sql.add('and clzl.cqdh='''+Loc2CoBox.text+''' ');
         sql.add('group by clzl.clzmlb,clzl.CQDH,clzl.DWBH,ywpm,buyno,article,clbh,pairs,csbh,zsywjc,BWLB');
         if CBSum.Checked=true then
         begin
         sql.add(') XXZLS Group by BUYNO,CLBH,ywpm,clzmlb,CQDH,DWBH,BWLB');
         end;
         //funcObj.WriteErrorLog(sql.Text);
         active:=true;
      end;
      //
      with not_XXZL do
      begin
        Active:=false;
        SQL.Clear;
        SQL.Add('select FC_import_pur.buyno,FC_import_pur.Article,Sum(convert(float,FC_import_pur.Total)) as Total');
        SQL.Add('from FC_import_pur ');
        SQL.Add('left join xxzl on xxzl.article=FC_import_pur.article ');
        SQL.Add('left join xxzls on xxzls.xiexing=xxzl.xiexing and xxzls.shehao=xxzl.shehao ');
        SQL.Add('where FC_import_pur.article is not null ');
        SQL.Add('      and FC_import_pur.buyno='''+BuyNoCoBox.text+''' ');
        SQL.Add('group by FC_import_pur.buyno,FC_import_pur.Article');
        SQL.Add('having Count(XXZLS.CLBH)=0 ');
        Active:=true;
      end;
      if not_XXZL.RecordCount>0 then Panel12.Visible:=true;
      //
  end;

end;

procedure Tforecastpurchase.BD8Click(Sender: TObject);
var   a:string;
      eclApp,WorkBook:olevariant;
      i,j:integer;
 begin
  if  fc_xxzls_pur.active  then
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
        eclApp.Cells(1,1):='BUYNO';
        eclApp.Cells(1,2):='Material Code';
        eclApp.Cells(1,3):='Material Name';
        eclApp.Cells(1,4):='SKU';
        eclApp.Cells(1,5):='Pairs';
        eclApp.Cells(1,6):='Usage';
        eclApp.Cells(1,7):='Total QTY';
        eclApp.Cells(1,8):='Supplier Code';
        eclApp.Cells(1,9):='Supplier Name';
        eclApp.Cells(1,10):='Location';
        eclApp.Cells(1,11):='Type';
        eclApp.Cells(1,12):='SR#';
        fc_xxzls_pur.First;
        j:=2;
        while   not   fc_xxzls_pur.Eof   do
          begin
            for   i:=0   to  fc_xxzls_pur.fieldcount-1  do
            begin
              eclApp.Cells(j,i+1):=fc_xxzls_pur.Fields[i].Value;
            end;
          fc_xxzls_pur.Next;
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

procedure Tforecastpurchase.Button6Click(Sender: TObject);
begin
   with SR_check_pur do
   begin
       active:=false;
       sql.Clear;
       sql.add('select * from FC_import_pur');
       sql.add('where article is not null');
       if BuyNo2CoBox.text<>'' then
          sql.add('and FC_import_pur.buyno='''+BuyNo2CoBox.text+''' ');
       if ARTICLE4Edit.text<>'' then
          sql.add('and FC_import_pur.article like ''%'+ARTICLE4Edit.text+'%'' ');
       active:=true;
   end;
end;

procedure Tforecastpurchase.FormCreate(Sender: TObject);
begin
  with tmpQry do          //取服務器的年月值
  begin
     active:=false;
     sql.Clear;
     sql.Add('select getdate() as NDate');
     active:=true;
     NDate:=fieldbyname('Ndate').value;
     active:=false;
  end;
  with tmpQry do
  begin
     active:=false;
     sql.Clear;
     sql.add('select buyno from fc_import_pur');
     sql.add('group by buyno');
     active:=true;
     BuyNoCoBox.Items.Clear;
     BuyNo2CoBox.items.Clear;
     while not eof do
     begin
       BuyNoCoBox.items.add(fieldbyname('buyno').asstring );
       BuyNo2CoBox.items.add(fieldbyname('buyno').asstring );
       next;
     end;
  end;
end;

procedure Tforecastpurchase.BD1Click(Sender: TObject);
begin
  Panel24.Visible:=true;
end;

procedure Tforecastpurchase.BC1Click(Sender: TObject);
begin
  Panel10.Visible:=true;
end;

procedure Tforecastpurchase.BC4Click(Sender: TObject);
begin
  with SR_check_pur do
  begin
    cachedupdates:=true;
    requestlive:=true;
    SR_check_pur.edit;
  end;
  BC5.enabled:=true;
  BC6.enabled:=true;
end;

procedure Tforecastpurchase.BC8Click(Sender: TObject);
var   a:string;
      eclApp,WorkBook:olevariant;
      i,j:integer;
begin
  if  SR_check_pur.active  then
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
        for  i:=0  to  SR_check_pur.fieldcount-1  do
        begin
          eclApp.Cells(1,i+1):=SR_check_pur.fields[i].FieldName;
        end;

        SR_check_pur.First;
        j:=2;
        while not SR_check_pur.Eof do
        begin
            for   i:=0   to  SR_check_pur.fieldcount-1  do
            begin
              eclApp.Cells(j,i+1):=SR_check_pur.Fields[i].Value;
            end;
          SR_check_pur.Next;
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

procedure Tforecastpurchase.BC6Click(Sender: TObject);
begin
  with SR_check_pur do
  begin
    active:=false;
    cachedupdates:=false;
    requestlive:=false;
    active:=true;
  end;
  BC5.enabled:=false;
  BC6.enabled:=false;
end;

procedure Tforecastpurchase.BC5Click(Sender: TObject);
var i:integer;
begin
   try
     SR_check_pur.first;
     for i:=1 to SR_check_pur.RecordCount do
     begin
        case SR_check_pur.updatestatus of
         usinserted:
         begin
           if ((SR_check_pur.FieldByName('Article').AsString<>'') and (SR_check_pur.FieldByName('BuyNo').AsString<>'') and (SR_check_pur.FieldByName('Total').Value>0)) then
           begin
             SR_check_pur.edit;
             SR_check_pur.fieldbyname('GSBH').Value:=main.Edit2.text;
             SR_check_pur.FieldByName('userID').Value:=main.edit1.text;
             SR_check_pur.FieldByName('userdate').Value:=Ndate;
             SR_check_pur.FieldByName('YN').Value:='1';
             upSR_check_pur.apply(ukinsert);
           end;
         end;
         usmodified:
         begin
           if SR_check_pur.fieldbyname('YN').value='0'then
           begin
             upSR_check_pur.apply(ukdelete);
           end else
           begin
             SR_check_pur.Edit;
             SR_check_pur.FieldByName('USERID').value:=main.Edit1.text;
             SR_check_pur.FieldByName('USERdate').value:=NDate;
             SR_check_pur.Post;
             upSR_check_pur.apply(ukmodify);
           end;
         end;
        end;
        SR_check_pur.next;
     end;
     with SR_check_pur do
     begin
        active:=false;
        requestlive:=false;
        cachedupdates:=false;
        active:=true;
     end;
     with tmpQry do
     begin
       active:=false;
       sql.Clear;
       sql.add('select buyno from fc_import_pur');
       sql.add('group by buyno');
       active:=true;
       BuyNoCoBox.Items.Clear;
       BuyNo2CoBox.items.Clear;
       while not eof do
       begin
         BuyNoCoBox.items.add(fieldbyname('buyno').asstring );
         BuyNo2CoBox.items.add(fieldbyname('buyno').asstring );
         next;
       end;
      end;
      BC5.enabled:=false;
      BC6.enabled:=false;
   except
     Messagedlg('Have wrong,can not save!',mtwarning,[mbyes],0);
   end;

end;

procedure Tforecastpurchase.SR_check_purAfterOpen(DataSet: TDataSet);
begin
  BC2.Enabled:=true;
  BC3.Enabled:=true;
  BC4.enabled:=true;
end;

procedure Tforecastpurchase.No_CFMClick(Sender: TObject);
var   a:string;
      eclApp,WorkBook:olevariant;
      i,j:integer;
begin
  if  not_XXZL.active  then
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
        for i:=0 to not_XXZL.fieldcount-1 do
        begin
          eclApp.Cells(1,i+1):=not_XXZL.fields[i].FieldName;
        end;
        not_XXZL.First;
        j:=2;
        while not not_XXZL.Eof do
        begin
          for i:=0   to  not_XXZL.fieldcount-1  do
          begin
            eclApp.Cells(j,i+1):=not_XXZL.Fields[i].Value;
          end;
          not_XXZL.Next;
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

procedure Tforecastpurchase.BC3Click(Sender: TObject);
begin
  with SR_check_pur do
  begin
    if fieldbyname('USERID').value=main.edit1.Text then
    begin
      requestlive:=true;
      cachedupdates:=true;
      edit;
      fieldbyname('YN').Value:='0';
    end else
    begin
        showmessage('It is not yours,can not delete.');
    end;
  end;
  BC5.Enabled:=true;
  BC6.Enabled:=true;
end;

procedure Tforecastpurchase.BC2Click(Sender: TObject);
begin
  with SR_check_pur do
  begin
    requestlive:=true;
    cachedupdates:=true;
    insert;
  end;
  BC5.Enabled:=true;
  BC6.Enabled:=true;
end;

procedure Tforecastpurchase.DBGridEh5GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if SR_check_pur.FieldByName('YN').value='0' then
  begin
    DBGridEh5.canvas.font.color:=clred;
  end;
end;

end.
