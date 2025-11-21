unit ChoiceArticle1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ExtCtrls,Comobj;

type
  TChoiceArticle = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Button1: TButton;
    Edit2: TEdit;
    EDIT1: TEdit;
    Edit3: TEdit;
    Edit5: TEdit;
    DBGridEh1: TDBGridEh;
    DS1: TDataSource;
    Query1: TQuery;
    Query1SampleOrder: TStringField;
    Query1ARTICLE: TStringField;
    Query1Season: TStringField;
    Query1Stage: TStringField;
    Query1Pairs: TFloatField;
    Query1FD: TStringField;
    Query1gsdh: TStringField;
    NotReceCK: TCheckBox;
    Query1ReceYPDH: TStringField;
    Button2: TButton;
    Label5: TLabel;
    Edit4: TEdit;
    Query1Size: TStringField;
    Query1devtype: TStringField;
    Query1MergeNo: TStringField;
    Button3: TButton;
    Button4: TButton;
    Query1subtype: TStringField;
    Edit6: TEdit;
    Label6: TLabel;
    Query1devcode: TStringField;
    Memo: TMemo;
    CheckBox1: TCheckBox;
    Query1ProductionLocation: TStringField;
    ComboBox1: TComboBox;
    Query2: TQuery;
    Query1TRANSFER: TBooleanField;
    Query1TransferIn: TBooleanField;
    procedure Button1Click(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure Button2Click(Sender: TObject);
    procedure DBGridEh1KeyPress(Sender: TObject; var Key: Char);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ChoiceArticle: TChoiceArticle;

implementation


{$R *.dfm}
uses main1, BOMReceive1, FunUnit, TraceChangeMaterial1;

procedure TChoiceArticle.Button1Click(Sender: TObject);
begin
with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.Add('select YPZL.YPDH AS SampleOrder,kfxxzl.devcode, kfxxzl.ARTICLE, ypzl.ypcc as Size,kfxxzl.JiJie as Season,');
    sql.Add('ypzl.KFJD as Stage, ypzl.Quantity as Pairs,kfxxzl.devtype ,ypzl.subtype,kfxxzl.FD, ypzl.gsdh,BS.YPDH as ReceYPDH,BOMReceive.MergeNo,YPZL.ProductionLocation');
    sql.Add(',XXZLKF.TRANSFER,XXZLKF.TransferIn');
    sql.Add('from ypzl ');
    sql.add('left join (Select YPDH from BOMReceiveS Group by YPDH) BS on BS.YPDH=ypzl.YPDH ');
    SQL.Add('left join kfxxzl on ypzl.XieXing=kfxxzl.XieXing and ypzl.SheHao=kfxxzl.SheHao');
    SQL.Add('left join BOMReceives on BOMReceives.YPDH=ypzl.YPDH');
    SQL.Add('left join BOMReceive on BOMReceives.ReceiveNO=BOMReceive.ReceiveNO');
    SQL.Add('left join XXZLKF on XXZLKF.XieXing=YPZL.XieXing and XXZLKF.SheHao=ypzl.SheHao');
    // 20150828 add MergeNo
    sql.Add('left join ypzlzls on ypzlzls.ypdh=ypzl.ypdh');
    sql.Add('where 1=1');
    sql.Add('and YPZL.ypdh not in (');
    sql.Add('SELECT ypdh FROM YPZL');
    sql.Add('left join kfxxzl on kfxxzl.xiexing=YPZL.xiexing and kfxxzl.shehao=YPZL.shehao');
    sql.Add('WHERE KFJD=''sms'' AND productionlocation=''YZBY'' and kfxxzl.JiJie <> ''23U'' and (kfxxzl.devtype=''inline'' or kfxxzl.devtype=''Great@Good'') )');
    sql.add('and ypzl.gsdh='''+main.edit2.text+'''');
    sql.add('and isnull(kfxxzl.JiJie,'''') like '''+ edit1.Text+'%'+'''');
    sql.Add('and ypzl.KFJD like '''+edit2.Text+'%'+'''');
    sql.Add('and kfxxzl.devcode like '''+edit5.Text+'%'+'''');
    sql.Add('and ypzl.subtype like '''+edit6.Text+'%'+'''');
    sql.Add('and ypzl.ypdh like '''+edit3.Text+'%'+'''');
    if combobox1.Text<>''then
       sql.Add('and ypzl.ProductionLocation like '''+combobox1.Text+'%'+'''');
    sql.Add('and (ypzl.Pur_RECIEVE =''0'' or ypzl.Pur_RECIEVE is null)');
    sql.add('and ypzl.fd_check=''1'' and ypzl.re_check=''1''  and ypzl.kfjd<>''pdt'' ');
    if NotReceCK.Checked=true then
      sql.add('and BS.YPDH is null ');
    //20150828
    if edit4.Text<>'' then
      sql.Add('and ypzlzls.ypzlbh like '''+edit4.Text+'%''');
    sql.Add('group by YPZL.YPDH,kfxxzl.devcode, kfxxzl.ARTICLE,ypzl.ypcc,kfxxzl.JiJie,ypzl.KFJD,ypzl.Quantity,kfxxzl.devtype ,ypzl.subtype,kfxxzl.FD,ypzl.gsdh,BS.YPDH,BOMReceive.MergeNo,YPZL.ProductionLocation');
    sql.Add(',XXZLKF.TRANSFER,XXZLKF.TransferIn');
    sql.Add('union');
    sql.Add('select YPZL.YPDH AS SampleOrder,kfxxzl.devcode, kfxxzl.ARTICLE, ypzl.ypcc as Size,kfxxzl.JiJie as Season,');
    sql.Add('ypzl.KFJD as Stage, ypzl.Quantity as Pairs,kfxxzl.devtype,ypzl.subtype ,kfxxzl.FD, ypzl.gsdh,BS.YPDH as ReceYPDH,BOMReceive.MergeNo,YPZL.ProductionLocation');
    sql.Add(',XXZLKF.TRANSFER,XXZLKF.TransferIn');
    sql.Add('from ypzl ');
    sql.add('left join (Select YPDH from BOMReceiveS Group by YPDH) BS on BS.YPDH=ypzl.YPDH ');
    SQL.Add('left join kfxxzl on ypzl.XieXing=kfxxzl.XieXing and ypzl.SheHao=kfxxzl.SheHao');
    SQL.Add('left join BOMReceives on BOMReceives.YPDH=ypzl.YPDH');
    SQL.Add('left join BOMReceive on BOMReceives.ReceiveNO=BOMReceive.ReceiveNO');
    sql.Add('left join ypzlzls on ypzlzls.ypdh=ypzl.ypdh');
    SQL.Add('left join XXZLKF on XXZLKF.XieXing=YPZL.XieXing and XXZLKF.SheHao=ypzl.SheHao');
    sql.Add('where 1=1');
    sql.add('and ypzl.gsdh='''+main.edit2.text+'''');
    sql.add('and isnull(kfxxzl.JiJie,'''') like '''+ edit1.Text+'%'+'''');
    sql.Add('and ypzl.KFJD like '''+edit2.Text+'%'+'''');
    sql.Add('and kfxxzl.devcode like '''+edit5.Text+'%'+'''');
    sql.Add('and ypzl.subtype like '''+edit6.Text+'%'+'''');
    sql.Add('and ypzl.ypdh like '''+edit3.Text+'%'+'''');
    if combobox1.Text<>''then
       sql.Add('and ypzl.ProductionLocation like '''+combobox1.Text+'%'+'''');
    sql.Add('and (ypzl.Pur_RECIEVE =''0'' or ypzl.Pur_RECIEVE is null)');
    sql.add('and ypzl.fd_check=''1''  and ypzl.kfjd=''pdt'' ');
    if NotReceCK.Checked=true then
      sql.add('and BS.YPDH is null ');
    if edit4.Text<>'' then
      sql.Add('and ypzlzls.ypzlbh like '''+edit4.Text+'%''');
    sql.Add('group by YPZL.YPDH,kfxxzl.devcode, kfxxzl.ARTICLE,ypzl.ypcc,kfxxzl.JiJie,ypzl.KFJD,ypzl.Quantity,kfxxzl.devtype ,ypzl.subtype,kfxxzl.FD,ypzl.gsdh,BS.YPDH,BOMReceive.MergeNo,YPZL.ProductionLocation');
    sql.Add(',XXZLKF.TRANSFER,XXZLKF.TransferIn');
    //funcobj.WriteErrorLog(sql.Text);
    active:=true;
  end;

end;

procedure TChoiceArticle.DBGridEh1DblClick(Sender: TObject);
begin
if (not query1.Active) then
  begin
    abort;
  end;
  with BOMReceive.Qry_BOMReceiveS do
  begin
    insert;
    BOMReceive.Qry_BOMReceiveS.FieldByName('YPDH').Value:=query1.fieldbyname('SampleOrder').Value;
    BOMReceive.Qry_BOMReceiveS.FieldByName('Article').Value:=query1.fieldbyname('devcode').Value;
    BOMReceive.Qry_BOMReceiveS.FieldByName('Pairs').Value:=query1.fieldbyname('Pairs').Value;
    mainstage:=query1.fieldbyname('Stage').Value;
    mainseason:=query1.fieldbyname('season').Value;
    maindevtype:=query1.fieldbyname('devtype').Value;
    post;
  end;
end;

procedure TChoiceArticle.DBGridEh1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if Query1.FieldByName('ReceYPDH').IsNull=True then
  begin
    DBGridEh1.canvas.font.color:=clred;
    DBGridEh1.defaultdrawcolumncell(rect,datacol,column,state);
  end;
end;

procedure TChoiceArticle.Button2Click(Sender: TObject);
var bm:Tbookmark;
i:integer;
Qty:real;
bookmarklist:tbookmarklistEh;
begin
if messagedlg('Do you really want to copy these record?',mtconfirmation,[mbYes,mbNo],0)=mrYes then
  begin
  Qty:=0;
  if (not query1.Active) then
    begin
      abort;
    end;
  if (Query1.recordcount<1) then
    begin
      abort;
    end;
  //with query1 do
   // begin
  query1.disablecontrols;
  bm:=query1.getbookmark;
  bookmarklist:=DBGridEh1.selectedrows;
  if bookmarklist.count>0 then
    begin
      try
        for i:=0 to bookmarklist.count-1 do
        begin
          query1.gotobookmark(pointer(bookmarklist[i]));
          with BOMReceive.Qry_BOMReceiveS do
            begin
              edit;
              BOMReceive.Qry_BOMReceiveS.FieldByName('YPDH').Value:=query1.fieldbyname('SampleOrder').Value;
              BOMReceive.Qry_BOMReceiveS.FieldByName('Article').Value:=query1.fieldbyname('ARTICLE').Value;
              BOMReceive.Qry_BOMReceiveS.FieldByName('Pairs').Value:=query1.fieldbyname('Pairs').Value;
              insert;
             end;
        end;
      finally
        begin
          query1.gotobookmark(bm);
          query1.freebookmark(bm);
          query1.enablecontrols;
          showmessage('You have finish copy!');
        end;
      end;
    end;
  end;


end;

procedure TChoiceArticle.DBGridEh1KeyPress(Sender: TObject; var Key: Char);
begin
 if key=#13 then
    DBGridEh1DblClick(nil);
end;



procedure TChoiceArticle.Button3Click(Sender: TObject);
begin
  main.SN79.Click;
end;

procedure TChoiceArticle.Button4Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin
    if  QUERY1.active  then
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
          for   i:=0   to   QUERY1.fieldcount-1   do
            begin
                eclApp.Cells(1,i+1):=QUERY1.fields[i].FieldName;
            end;

          QUERY1.First;
          j:=2;
          while   not   QUERY1.Eof   do
            begin
              for   i:=0   to  QUERY1.fieldcount-1  do
              begin
                eclApp.Cells(j,i+1):=QUERY1.Fields[i].Value;
              end;
            QUERY1.Next;
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

procedure TChoiceArticle.CheckBox1Click(Sender: TObject);
begin
   if checkbox1.checked then
      memo.visible:=true;
   if not checkbox1.checked then
      memo.visible:=false;
end;

procedure TChoiceArticle.FormCreate(Sender: TObject);
begin
     with query2 do  //§ì¨úCFMªºseason 15-19©u
      begin
         active:=false;
         sql.Clear;
         sql.add('select productionLocation from ypzl group by productionLocation');
         active:=true;
         combobox1.items.clear;
         while not eof do
         begin
           combobox1.items.add(fieldbyname('productionLocation').asstring );
           next;
         end;
      end;
      combobox1.ItemIndex:=0;
end;

end.
