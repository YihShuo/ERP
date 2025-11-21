unit PurSize_CL1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls,math,dateutils,
  GridsEh, DBGridEh;

type
  TPurSize_CL = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    Edit2: TEdit;
    EDIT1: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    DS1: TDataSource;
    Label5: TLabel;
    Edit5: TEdit;
    Button2: TButton;
    Edit6: TEdit;
    Label6: TLabel;
    Query1: TQuery;
    Query1CLBH: TStringField;
    Query1YWPM: TStringField;
    Query1DWBH: TStringField;
    Query1CQDH: TStringField;
    Query1okQty: TCurrencyField;
    Query1CLSL: TFloatField;
    Query1DCYN: TStringField;
    Query1DCDate: TDateTimeField;
    Query1DCCFM: TStringField;
    Query1PDYN: TStringField;
    Query1PDDate: TDateTimeField;
    Query1PDCFM: TStringField;
    Query1DCRSL: TStringField;
    Query1PDRSL: TStringField;
    UPQuery1: TUpdateSQL;
    DataColorGroup: TGroupBox;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Panel2: TPanel;
    Panel3: TPanel;
    QueryBJ: TQuery;
    CB1: TComboBox;
    GroupBox1: TGroupBox;
    Label4: TLabel;
    CBX2: TComboBox;
    CBX3: TComboBox;
    BuyNoEdit: TEdit;
    RB1: TRadioButton;
    RadioButton1: TRadioButton;
    CKSuppID: TCheckBox;
    SuppID: TEdit;
    DBGridEh1: TDBGridEh;
    procedure Button1Click(Sender: TObject);
    procedure EDIT1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure Edit4KeyPress(Sender: TObject; var Key: Char);
    procedure Edit5KeyPress(Sender: TObject; var Key: Char);
    procedure Button2Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Query1AfterOpen(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CKSuppIDClick(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure DBGridEh1KeyPress(Sender: TObject; var Key: Char);
  private
    GSBH_SFL:String;
    IsChekcRSLOver:boolean;
    { Private declarations }
    procedure InitCombo();
    function CheckRSLIsValid(const DCYN,PDYN,DCDate,PDDate,DCCFM,PDCFM:string;var PDInfo,DCInfo:string):byte;
  public
    { Public declarations }
  end;

var
  PurSize_CL: TPurSize_CL;
  sdate,edate:TDate;

implementation

uses PurSize1, SonMaterial1, main1,FunUnit;

{$R *.dfm}

procedure TPurSize_CL.Button1Click(Sender: TObject);
var y,m:word;
    DDZL_SubSQL:string;
    CLZL_SQL:string;
begin
  IsChekcRSLOver:=false;
  if ((Edit1.text='') and (Edit5.text=''))  then
  begin
    showmessage('Please input MatNo or Order No');
    abort;
  end;
  if ((Length(Edit1.text)<1) or (Length(Edit5.text)<3))  then
  begin
    showmessage('Please input condtion at least 3 char for OrderNo and MatNo');
    abort;
  end;  
  if (CBX2.text='')or (CBX3.text='')  then
  begin
    showmessage('You have to select the year and month first.');
    abort;
  end;
  y:=strtoint(CBX2.Text);
  m:=strtoint(CBX3.Text);
  if (y>2999) or (y<1900) then
  begin
  if y>2010 then
    begin
      showmessage('Pls contect with designer.');
      abort;
    end;
    showmessage('Pls key in right year');
    abort;
  end;
  if (m=0) or (m>12) then
  begin
    showmessage('Pls key in right month');
    abort;
  end;
  sdate:=encodedate(y,m,1);
  edate:=endofthemonth(sdate);
  //20150826 Add SubSQL
  DDZL_SubSQL:='and DDZL.GSBH='''+main.Edit2.Text+''' ';
  if RB1.Checked=true then
     DDZL_SubSQL:=DDZL_SubSQL+' and convert(smalldatetime,convert(varchar,DDZL.ShipDate,111))   between '''+formatdatetime('yyyy/MM/dd',sdate)+''' and '''+formatdatetime('yyyy/MM/dd',edate)+''' '
  else
     DDZL_SubSQL:=DDZL_SubSQL+' and DDZL.BUYNO like '''+BuyNoEdit.Text+'%'' ';
  if length(Edit1.Text)>0 then
     CLZL_SQL:='inner join CLZL on CLZL.CLDH=ZLZLs2.CLBH and CLZL.CLDH like '''+Edit1.text+'%'' '
  else
     CLZL_SQL:='left join CLZL on CLZL.CLDH=ZLZLs2.CLBH ';
  //
  with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select  ZLZLS2.CLBH,CLZL.YWPM,CLZL.DWBH,CLZL.CQDH,Sum(isnull(CGZl.okQty,0)) as okQty,');
    sql.add('isnull(sum(ZLZLS2.CLSL),0) as CLSL,CLZL.DCYN,RSTList.DCDate,RSTList.DCCFM,CLZL.PDYN,RSTList.PDDate,RSTList.PDCFM,''              '' as DCRSL,''              '' as PDRSL  ');
    sql.add('from ZLZLS2 ');
    sql.add('inner join DDZl on DDZl.DDBH=ZLZLS2.ZLBH '+DDZL_SubSQL);
    sql.add(CLZL_SQL);    
    sql.add('left join (select CGZLSS.ZLBH,sum(CGZLSS.Qty) as okQty,CGZLSS.CLBH ');
    sql.add('           from CGZLSS left join CLZL on CLZL.CLDH=CGZLSS.CLBH');
    sql.add('           inner join DDZl on DDZl.DDBH=CGZLSS.ZLBH '+DDZL_SubSQL);
    sql.add('           where CGZLSS.CLBH like '+''''+edit1.Text+'%'+'''');
    sql.add('                 and CGZLSS.ZLBH like '+''''+edit5.Text+'%'+'''');
    sql.add('                 and CLZL.YWPM like '+''''+'%'+edit2.Text+'%'+'''');
    sql.add('                 and CLZL.YWPM like '+''''+'%'+edit3.Text+'%'+'''');
    sql.add('                 and CLZL.YWPM like '+''''+'%'+edit4.Text+'%'+'''');
    //201508018 shipdate or BuyNo
    if RB1.Checked=true then
       SQL.Add('and convert(smalldatetime,convert(varchar,DDZL.ShipDate,111))   between '''+formatdatetime('yyyy/MM/dd',sdate)+''' and '''+formatdatetime('yyyy/MM/dd',edate)+''' ')
    else
       SQL.Add('and DDZL.BUYNO like '''+BuyNoEdit.Text+'%'' ');
    //sql.add('                 and DDZL.DDZT='+''''+'Y'+'''');
    //sql.add('                 and CLZL.LYCC='+''''+'Y'+'''');
    sql.add('                 and CGZLSS.XXCC<>'+''''+'ZZZZZZ'+'''');
    //sql.add('                 and DDZL.GSBH='+''''+main.edit2.text+'''');
    sql.add('           group by CGZLSS.ZLBH,CGZLSS.CLBH ) CGZL on  CGZL.ZLBH=ZLZLS2.ZLBH and CGZL.CLBH=ZLZLS2.CLBH');


    sql.add('left join KFZL on KFZL.KFDH=DDZl.KHBH ');
    sql.add('left join ZLZL on ZLZL.ZLBH=ZLZLS2.ZLBH');
    sql.add('left join XXZL on XXZl.XieXing=DDZl.XieXing and XXZL.SheHao=DDZl.SheHao');
    sql.add('left join XXBWFL on XXBWFL.XieXing=XXZL.XieXing and XXBWFL.BWBH=ZLZLS2.BWBH ');
    sql.add('left join XXBWFLS on XXBWFLS.FLBH=XXBWFL.FLBH ');
    //20131101 weston 增加RSL 提醒
    sql.Add('left join RSTList on CLZL.cldh = RSTList.cldh ');
    //
    sql.add('where ZLZLS2.CLBH like '+''''+edit1.Text+'%'+'''');
    sql.add('      and ZLZLS2.ZLBH like '+''''+edit5.Text+'%'+'''');
    sql.add('      and CLZL.YWPM like '+''''+'%'+edit2.Text+'%'+'''');
    sql.add('      and CLZL.YWPM like '+''''+'%'+edit3.Text+'%'+'''');
    sql.add('      and CLZL.YWPM like '+''''+'%'+edit4.Text+'%'+'''');
    //201508018 shipdate or BuyNo
    if RB1.Checked=true then
       SQL.Add('and convert(smalldatetime,convert(varchar,DDZL.ShipDate,111))   between '''+formatdatetime('yyyy/MM/dd',sdate)+''' and '''+formatdatetime('yyyy/MM/dd',edate)+''' ')
    else
       SQL.Add('and DDZL.BUYNO like '''+BuyNoEdit.Text+'%'' ');
    if SuppID.Text<>'' then
       sql.add('     and ZLZLS2.CSBH='''+SuppID.Text+''' ');
    //sql.add('       and DDZL.DDZT='+''''+'Y'+'''');
    sql.add('      and ZLZLS2.ZMLB='+''''+'N'+'''');
    //sql.add('      and CLZL.LYCC='+''''+'Y'+'''');
    sql.add('      and ZLZLS2.Size<>'+''''+'ZZZZZZ'+'''');
    sql.add('      and DDZL.GSBH='+''''+main.edit2.text+'''');
    sql.add('      and KFZL.KFJC like '+''''+'%'+edit6.Text+'%'+'''');
    sql.add('      and exists(select SCZL.SCBH from SCZL where SCZL.ZLBH=ZLZLS2.ZLBH )');
    sql.add('      and ZLZLS2.CLSL<>0');
    //20150812 weston修改Cons採區併單
    if CB1.Text='TW' then
        sql.add('      and CLZL.CQDH='+''''+'TW'+'''');
    if CB1.Text='VN' then
        sql.add('      and CLZL.CQDH='+''''+'VN'+'''');
    //
    sql.add('       and (XXBWFLS.FLBH<>'+''''+'G'+''''+' or XXBWFLS.DFL is null)');
    sql.add('group by ZLZLS2.CLBH,CLZL.YWPM,CLZL.DWBH,CLZL.CQDH,CLZL.DCYN,RSTList.DCdate,RSTList.DCCFM,CLZL.PDYN,RSTList.PDdate,RSTList.PDCFM  ');
    sql.add('order by ZLZLS2.CLBH');
    //memo1.text:=sql.text;
    active:=true;
  end;

end;

procedure TPurSize_CL.EDIT1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
  edit2.SetFocus;
end;

procedure TPurSize_CL.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
  edit3.SetFocus;
end;

procedure TPurSize_CL.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
  edit4.SetFocus;
end;

procedure TPurSize_CL.Edit4KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
  edit5.SetFocus;
end;

procedure TPurSize_CL.Edit5KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
  button1click(nil);
end;

procedure TPurSize_CL.Button2Click(Sender: TObject);
begin
SonMaterial:=TSonMaterial.create(self);
SonMaterial.show;
end;

procedure TPurSize_CL.FormDestroy(Sender: TObject);
begin
PurSize_CL:=nil;
end;

procedure TPurSize_CL.FormClose(Sender: TObject; var Action: TCloseAction);
begin

query1.active:=false;
end;
//檢查RSL規格
function TPurSize_CL.CheckRSLIsValid(const DCYN,PDYN,DCDate,PDDate,DCCFM,PDCFM:string;var PDInfo,DCInfo:string):byte;
var reByte:Byte;
begin
  reByte:=0;
  //量產需要RSL
  if PDYN='Y' then
  begin
     if PDCFM<>'Y' then
     begin
       if  trim(PDDate)='' then
       begin
         reByte:=2;//沒有RSL有效日期
         PDInfo:='No RSL';
       end else
       begin
         reByte:=1; //PDRSL
         PDInfo:='Not Confirm';
       end;
     end;
     if PDCFM='Y' then
       if trim(PDDate)<>'' then
       begin
         if incYear(strtodate(PDDate))<=date() then
         begin
            reByte:=2; //Expire DCRSL 生產RSL有效日期逾期一年
            PDInfo:='RSL expired';
         end;
       end else
       begin
         reByte:=2;//沒有RSL有效日期
         PDInfo:='No RSL';
       end;//Expire PDRSL 生產RSL有效日期逾期一年
     //
  end;
  if DCYN='Y' then
  begin
     if DCCFM<>'Y' then
     begin
       if  trim(DCDate)='' then
       begin
         reByte:=4;//沒有RSL有效日期
         DCInfo:='No RSL';
       end else
       begin
         reByte:=3; //PDRSL
         DCInfo:='Not Confirm';
       end;
     end;
     if DCCFM='Y' then
       if trim(DCDate)<>'' then
       begin
         if incYear(strtodate(DCDate))<=date() then
         begin
            reByte:=4; //Expire DCRSL 生產RSL有效日期逾期一年
            DCInfo:='RSL expired';
         end;
       end else
       begin
         reByte:=4;//沒有RSL有效日期
         DCInfo:='No RSL';
       end;//Expire PDRSL 生產RSL有效日期逾期一年
     //
  end;
  result:=reByte;
end;
procedure TPurSize_CL.Query1AfterOpen(DataSet: TDataSet);
var PDInfo,DCInfo:string;
    RSLByte:Byte;
begin
  //A12廠才需要RSL
  if GSBH_SFL='PD' then
  begin
    DBGridEh1.DataSource:=nil;
    with Query1 do
    begin
      requestlive:=true;
      cachedupdates:=true;
    end;
    //
    while not Query1.Eof do
    begin
      PDInfo:='';
      DCInfo:='';
      //檢查RSL  DCYN,PDYN,DCDate,PDDate,DCCFM,PDCFM
      RSLByte:=CheckRSLIsValid(query1.FieldByName('DCYN').AsString,query1.FieldByName('PDYN').AsString,query1.FieldByName('DCDate').AsString,
                             query1.FieldByName('PDDate').AsString,query1.FieldByName('DCCFM').AsString,query1.FieldByName('PDCFM').AsString,PDInfo,DCInfo);
      Query1.Edit;
       query1.FieldByName('PDRSL').AsString:=PDInfo;
       query1.FieldByName('DCRSL').AsString:=DCInfo;
      Query1.Post;
      Query1.Next;
    end;
    //
    Query1.First;
    IsChekcRSLOver:=true;
    //顯示顏色
    DBGridEh1.Visible:=false;
    DBGridEh1.DataSource:=DS1;
    DBGridEh1.Visible:=true;
   end else
   begin
    IsChekcRSLOver:=true;
   end;
end;

procedure TPurSize_CL.FormShow(Sender: TObject);
begin
  main.FormLanguage(Pointer(self),self.Name);
  //A12廠才需要RSL
  if GSBH_SFL<>'PD' then
  begin
    DBGridEh1.Columns[6].Visible:=false;
    DBGridEh1.Columns[7].Visible:=false;
    DataColorGroup.Visible:=false;
    PurSize_CL.Width:=740;
  end;
end;
//顯示日期
procedure TPurSize_CL.InitCombo();
var
  myYear, myMonth, myDay : Word;
  i:integer;
begin
  //
  DecodeDate(Date(), myYear, myMonth, myDay);
  for i:=0 to CBX2.Items.Count-1 do
  begin
    if strtoint(CBX2.Items[i])=myYear then
    begin
      CBX2.ItemIndex:=i;
      break;
    end;
  end;
  for i:=0 to CBX3.Items.Count-1 do
  begin
    if strtoint(CBX3.Items[i])=myMonth then
    begin
      CBX3.ItemIndex:=i;
      break;
    end;
  end;
  //
  BuyNoEdit.Text:=FormatDateTime('YYYYMM',Date());
end;
//
procedure TPurSize_CL.FormCreate(Sender: TObject);
begin
  InitCombo();
  with QueryBJ do
  begin
    Active:=false;
    sql.Clear;
    sql.add('select SFL from Bgszl where GSDH='''+main.Edit2.Text+''' ');
    active:=true;
    GSBH_SFL:=FieldByName('SFL').AsString;
    Active:=false;
  end;
end;

procedure TPurSize_CL.CKSuppIDClick(Sender: TObject);
begin
  if CKSuppID.Checked=true then
    SuppID.Text:=PurSize.CGMas.fieldByName('ZSBH').AsString
  else
    SuppID.Text:='';
end;

procedure TPurSize_CL.DBGridEh1DblClick(Sender: TObject);
begin
  if (not query1.Active) then
  begin
    abort;
  end;
  if (Query1.recordcount<1) then
  begin
    abort;
  end;
  with PurSize.CGDet do
  begin
    fieldbyname('CLBH').value:=query1.fieldbyname('CLBH').value;
    fieldbyname('YWPM').value:=query1.fieldbyname('YWPM').value;
    fieldbyname('DWBH').value:=query1.fieldbyname('DWBH').value;
    if  query1.fieldbyname('CLSL').value>query1.fieldbyname('okQty').value then
    begin
      fieldbyname('XqQty').value:=roundto(query1.fieldbyname('CLSL').value-query1.fieldbyname('okQty').value,-1);
    end else
    begin
      fieldbyname('XqQty').value:=0;
    end;
    //20150505 報價Price帶入
    QueryBJ.Active:=false;
    QueryBJ.SQL.Clear;
    QueryBJ.SQL.Add('Select  top 1 CGBJS.BJNO,CGBJS.CLBH,CGBJS.USPrice,CGBJS.VNPrice,CGBJS.USERDate from CGBJS ');
    QueryBJ.SQL.Add('left join CGBJ on CGBJ.BJNO=CGBJS.BJNO ');
    QueryBJ.SQL.Add('where CGBJ.GSBH='''+main.Edit2.Text+'''  and CLBH='''+PurSize.CGDet.fieldbyname('CLBH').AsString+''' and CGBJ.ZSBH='''+PurSize.CGMas.FieldByName('ZSBH').AsString +'''  ');
    QueryBJ.SQL.Add('order by CGBJS.BJNO desc,CGBJS.CLBH ');
    QueryBJ.Active:=true;
    if QueryBJ.RecordCount>0 then
    begin
      fieldbyname('BJNO').value:=QueryBJ.Fieldbyname('BJNO').value;
      fieldbyname('USPrice').value:=QueryBJ.Fieldbyname('USPrice').value;
      fieldbyname('VNPrice').value:=QueryBJ.Fieldbyname('VNPrice').value;
    end;
    QueryBJ.Active:=false;
    //
    insert;
  end;
  showmessage('Succeed.');
end;

procedure TPurSize_CL.DBGridEh1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
var RSLByte:Byte;
begin
  //開啟資料會做RSL檢查
  if IsChekcRSLOver=true then
  begin
      if query1.FieldByName('CLSL').value<=query1.FieldByName('okQty').value then
      begin
        DBGridEh1.canvas.font.color:=clred;
        DBGridEh1.defaultdrawcolumncell(rect,datacol,column,state);
      end;

      if (query1.FieldByName('okQty').value>0) and (query1.FieldByName('CLSL').value>query1.FieldByName('okQty').value) then
      begin
        DBGridEh1.canvas.font.color:=clGreen;
        DBGridEh1.defaultdrawcolumncell(rect,datacol,column,state);
      end;
      //
      //A12廠才需要RSL
      if GSBH_SFL='PD' then
      begin
        if (trim(query1.FieldByName('PDRSL').AsString)<>'') then  //PD 生產RSL 逾期或未確認日期
        begin
          DBGridEh1.canvas.Brush.color:=$004DE6E1;
          DBGridEh1.defaultdrawcolumncell(rect,datacol,column,state);
        end else if (trim(query1.FieldByName('DCRSL').AsString)<>'') then   //DC 開發RSL 逾期或未確認日期
        begin
          DBGridEh1.canvas.Brush.color:=clskyblue;
          DBGridEh1.defaultdrawcolumncell(rect,datacol,column,state);
        end;
      end;
      //
  end;
end;

procedure TPurSize_CL.DBGridEh1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
  DBGridEh1dblclick(nil);
end;

end.
