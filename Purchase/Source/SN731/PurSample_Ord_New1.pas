unit PurSample_Ord_New1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, DBTables, Grids, DBGrids, ExtCtrls, DBCtrls, Mask,
  math,dateutils, GridsEh, DBGridEh;

type
  TPurSample_Ord_New = class(TForm)
    Panel1: TPanel;
    Label6: TLabel;
    Label7: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Button1: TButton;
    DBMemo1: TDBMemo;
    CB1: TCheckBox;
    CB2: TCheckBox;
    YPDHEdit: TEdit;
    SREdit: TEdit;
    DBGridEh1: TDBGridEh;
    Query2: TQuery;
    DS1: TDataSource;
    Query1: TQuery;
    Query1YPZLBH: TStringField;
    Query1Article: TStringField;
    Query1YPDH: TStringField;
    Query1CLSL: TFloatField;
    Query1okQty: TFloatField;
    Query1oldCLSL: TFloatField;
    Query1PAIRS: TFloatField;
    strngfldQuery1KFJD: TStringField;
    UpdateSQL1: TUpdateSQL;
    CLBHEdit: TEdit;
    JGNOEdit: TEdit;
    Edit1: TEdit;
    Edit2: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    Label8: TLabel;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Button3: TButton;
    Query1JiJie: TStringField;
    Query1JD: TStringField;
    Query1DevType: TStringField;
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGridEh1KeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PurSample_Ord_New: TPurSample_Ord_New;

implementation

uses main1, PurSample1;

{$R *.dfm}

procedure TPurSample_Ord_New.Button1Click(Sender: TObject);
var y,m:word;
begin
  with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select ZLZLS.YPZLBH,ZLZLS.YPDH,ZLZLS.CLBH,ZLZLS.CLSL,ZLZLS.KFJD,');
    sql.add('ZLZLS.Article,ZLZLS.PAIRS,');
    sql.add('isnull(CGZL.okQty,0) as okQty,isnull(CGZL.oldCLSL,0) oldCLSL,ZLZLS.JiJie,ZLZLS.JD,ZLZLS.DevType ');
    sql.add('from (select  YPZLZLS2.YPZLBH,YPZLZLS2.YPDH,YPZLZLS2.CLBH,isnull(sum(YPZLZLS2.CLSL),0) as CLSL,');
    sql.add('      YPZLZLS.PAIRS,kfxxzl.devcode as article,ypzl.KFJD,ypzlzl.JiJie,ypzlzl.KFJD as JD,ypzlzl.DevType  ');
    sql.add('      from YPZLZLS2');
    sql.Add('      left join ypzl on ypzl.YPDH=YPZLZLS2.YPDH');
    sql.Add('      left join kfxxzl on kfxxzl.xiexing = ypzl.xiexing and kfxxzl.shehao = ypzl.shehao');
    sql.Add('      left join ypzlzl on ypzlzl.YPZLBH=YPZLZLS2.YPZLBH');
    sql.Add('      left join YPZLZLS on YPZLZLS.YPDH=YPZLZLS2.YPDH AND YPZLZLS.YPZLBH=YPZLZLS2.YPZLBH ');

    sql.add('      where 1=1 and YPZLZLS2.ZMLB=''N'' ');
    if Edit2.Text <> '' then
      sql.add('      and YPZLZLS2.CLBH like '''+Edit2.Text+'%''');
    if Edit1.Text <> '' then
      sql.add('      and YPZLZLS2.YPZLBH like '''+Edit1.Text+'%''');
    sql.Add('      and YPZLZLS2.SIZE=''ZZZZZZ'' ') ;
    if YPDHEdit.Text<>'' then
    sql.Add('      and YPZL.YPDH like '''+YPDHEdit.Text+'%'' ');
    if SREdit.Text<>'' then
    sql.Add('      and kfxxzl.devcode like ''%'+SREdit.Text+'%'' ');
    if CB2.Checked then
    begin
      sql.add('   and YPZLZLS2.MJBH='+''''+'ZZZZZZZZZZ'+'''');
    end;
    if Edit3.Text <> '' then
      sql.add('      and ypzlzl.JiJie like '''+Edit3.Text+'%''');
    if Edit4.Text <> '' then
      sql.add('      and ypzlzl.DevType like '''+Edit4.Text+'%''');
    if Edit5.Text <> '' then
      sql.add('      and ypzlzl.KFJD like '''+Edit5.Text+'%''');
    sql.add('group by YPZLZLS2.YPZLBH,YPZLZLS2.YPDH,YPZLZLS2.CLBH,YPZLZLS.PAIRS,kfxxzl.devcode,ypzl.KFJD,ypzlzl.JiJie,ypzlzl.KFJD,ypzlzl.DevType ');
    //20201118尚未有合併採購單
    if ((YPDHEdit.Text<>'') or (SREdit.Text<>'')) then
    begin
      SQL.add('       union all ');
      SQL.Add('      select * from (');
      SQL.Add('      select null as YPZLBH, YPZLS.YPDH,YPZLS.CLBH, YPZLS.CLSL, ');
      SQL.Add('      YPZL.Quantity as PAIRS,KFXXZL.devcode as Article,YPZL.KFJD,'''' as JiJie,'''' as JD, '''' as DevType  from ( ');
      SQL.Add('      Select YPZLS.YPDH, YPZLS.MJBH, YPZLS.Parent, YPZLS.DType, YPZLS.CLBH,YPZLS.CLZMLB,Sum(YPZLS.CLSL) as CLSL from ( ');
      SQL.Add('      SELECT ypzls.YPDH ,ypzls.CLBH as MJBH,ypzls.CLBH as Parent ,''Assembly'' as DType,ypzls.CLBH,CEILING(ypzls.CLSL*YPZL.Quantity*100)/100 as CLSL,clzl.CLZMLB ');
      SQL.Add('      ,'''' as JiJie,'''' as JD, '''' as DevType ');
      SQL.Add('      FROM ypzls ypzls ');
      SQL.Add('      LEFT JOIN YPZL on YPZL.YPDH=YPZLS.YPDH ');
      SQL.Add('      LEFT JOIN clzl clzl ON ypzls.CLBH = clzl.cldh ');
      SQL.Add('      WHERE 1=1 ');
      if YPDHEdit.Text <> '' then
        SQL.Add('           and YPZLS.YPDH like '''+YPDHEdit.Text+'%'' ');
      if Edit2.Text <> '' then
        SQL.Add('           and CLZL.CLDH like '''+Edit2.Text+'%''');
      SQL.Add('      union all ');
      SQL.Add('      SELECT ypzls.YPDH ,clzhzl.cldh as MJBH,ypzls.clbh as Parent,''Gia cong'' as DType,clzhzl.CLDH1 as CLBH ,Round((CEILING(YPZLS.CLSL*YPZL.Quantity*100)/100)*CLZHZL.SYL,2) as CLSL,clzl.CLZMLB ');
      SQL.Add('      ,'''' as JiJie,'''' as JD, '''' as DevType ');
      SQL.Add('      FROM ypzls ypzls ');
      SQL.Add('      LEFT JOIN YPZL on YPZL.YPDH=YPZLS.YPDH ');
      SQL.Add('      Left join clzhzl ON  ypzls.CLBH = CLZHZL.cldh ');
      SQL.Add('      LEFT JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh ');
      SQL.Add('      WHERE 1=1 and CLZHZL.SYL>0 ');
      if YPDHEdit.Text <> '' then
        SQL.Add('    and YPZLS.YPDH like '''+YPDHEdit.Text+'%''   ');
      if Edit2.Text <> '' then
        SQL.Add('    and CLZL.CLDH like '''+Edit2.Text+'%''');
      SQL.Add('      union all');
      SQL.Add('      Select clzhzl2.YPDH,clzhzl.CLDH as MJBH,clzhzl2.Parent,clzhzl2.DType ,clzhzl.CLDH1 as CLBH,Round(clzhzl2.CLSL*clzhzl.syl,2) as CLSL,clzl.clzmlb ');
      SQL.Add('      ,'''' as JiJie,'''' as JD, '''' as DevType ');
      SQL.Add('      from (');
      SQL.Add('      SELECT ypzls.YPDH ,YPZLS.CLBH as Parent,''Gia cong'' as DType,clzhzl.CLDH1 as CLBH,Round((CEILING(YPZLS.CLSL*YPZL.Quantity*100)/100)*CLZHZL.SYL,2) as CLSL ');
      SQL.Add('      FROM ypzls ypzls ');
      SQL.Add('      LEFT JOIN YPZL on YPZL.YPDH=YPZLS.YPDH ');
      SQL.Add('      inner join clzhzl ON  ypzls.CLBH = CLZHZL.cldh ');
      SQL.Add('      left JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh ');
      SQL.Add('      WHERE 1=1 and CLZHZL.SYL>0   and clzl.clzmlb=''Y'' ');
      if CLBHEdit.Text <> '' then
        SQL.Add('      and YPZLS.YPDH like '''+YPDHEdit.Text+'%''');
      SQL.Add('      ) clzhzl2');
      SQL.Add('      inner join clzhzl ON  clzhzl2.CLBH = CLZHZL.cldh ');
      SQL.Add('      left JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh ');
      SQL.Add('      where 1=1  ');
      if Edit2.Text <> '' then
        SQL.Add('      and CLZL.CLDH like '''+Edit2.Text+'%''');
      SQL.Add('      )  YPZLS Group by YPZLS.YPDH, YPZLS.MJBH, YPZLS.Parent, YPZLS.DType, YPZLS.CLBH,YPZLS.CLZMLB   ) YPZLS');
      SQL.Add('      left join YPZL on YPZL.YPDH=YPZLS.YPDH');
      SQL.Add('      Left join KFXXZL on YPZL.XieXing=KFXXZL.XieXing and YPZL.SheHao=KFXXZL.SheHao ');
      SQL.Add('      Left join CLZL on CLZL.CLDH=YPZLS.CLBH ');
      SQL.Add('      where KFXXZL.Devcode like ''%'+SREdit.Text+'%'' ) YPZL where not exists (select YPDH from YPZLZLS where YPZLZLS.YPDH=YPZL.YPDH)');
    end;
    //
    sql.add('      ) ZLZLS ');
    sql.add('left join (select CGZLSS.ZLBH,CGZLSS.CLBH,');
    sql.add('           isnull(sum(CGZLSS.Qty),0) as okQty,isnull(max(CGZLSS.CLSL),0) as oldCLSL ');
    sql.add('           from CGZLSS ');
    sql.add('           left join CGZLS on CGZLS.CGNO=CGZLSS.CGNO AND CGZLS.CLBH=CGZLSS.CLBH ');
    sql.add('           left join CGZL on CGZL.CGNO=CGZLSS.CGNO');
    sql.add('           left join YPZL on YPZL.YPDH=CGZLSS.ZLBH');
    sql.add('           left join KFXXZL on YPZL.XieXing=KFXXZL.XieXing and YPZL.SheHao=KFXXZL.SheHao ');
    sql.add('           where 1=1 ');
    if Edit2.Text <> '' then
      sql.add('           and CGZLSS.CLBH like '''+Edit2.Text+'%''');
    //if Edit1.Text<>'' then
      //sql.add('           and CGZLS.JGNO like '''+Edit1.Text+'%''');
    sql.add('           and YPZL.YPDH like '''+YPDHEdit.Text+'%''');
    sql.add('           and KFXXZL.Devcode like ''%'+SREdit.Text+'%'' ');
    sql.add('           and CGZLSS.XXCC='''+'ZZZZZZ'+'''');
    sql.add('           and CGZL.GSBH='''+main.edit2.text+'''');
    sql.add('           group by  CGZLSS.ZLBH,CGZLSS.CLBH');
    sql.add('           ) CGZL on CGZL.CLBH=ZLZLS.CLBH and CGZL.ZLBH=ZLZLS.YPDH ') ;
    if CB1.Checked then
    begin
        sql.add('where isnull(ZLZLS.CLSL,0)>isnull(CGZL.okQty,0)');
    end;
    sql.add('order by ZLZLS.Article');
    //showmessage(SQL.Text);
    //funcObj.WriteErrorLog(sql.Text);
    //memo1.text:=sql.text;
    active:=true;
  end;

end;

procedure TPurSample_Ord_New.Button3Click(Sender: TObject);
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
          with PurSample.CGS do
            begin
              edit;
              fieldbyname('ZLBH').value:=query1.fieldbyname('YPDH').value;
              fieldbyname('ARTICLE').value:=query1.fieldbyname('ARTICLE').value;
              fieldbyname('XXCC').value:='ZZZZZZ';
              fieldbyname('Stage').Value:=query1.fieldbyname('KFJD').value;
              if  query1.fieldbyname('CLSL').value>=query1.fieldbyname('okQty').value then
                begin
                  fieldbyname('Qty').value:=roundto(query1.fieldbyname('CLSL').value-query1.fieldbyname('okQty').value,-1);
                end
                else
                  begin
                    fieldbyname('Qty').value:=0;
                  end;
              fieldbyname('CLSL').value:=query1.fieldbyname('CLSL').value;
              insert;
            end;
          query1.edit;
          Query1.FieldByName('okQty').Value:=query1.fieldbyname('CLSL').value;
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
procedure TPurSample_Ord_New.DBGridEh1DblClick(Sender: TObject);
var
  AdjustQty: Double;
begin
  if (not Query1.Active) then
    Abort;
  if (Query1.RecordCount < 1) then
    Abort;
    
  with PurSample.CGS do
  begin
    AdjustQty := 0;
    if (FieldByName('ZLBH').Value = Query1.FieldByName('YPDH').Value) AND (FieldByName('Stage').Value = Query1.FieldByName('KFJD').Value) then
      AdjustQty := FieldByName('Qty').Value;
    Edit;
    FieldByName('ZLBH').Value := Query1.FieldByName('YPDH').Value;
    FieldByName('ARTICLE').Value := Query1.FieldByName('ARTICLE').Value;
    FieldByName('XXCC').Value := 'ZZZZZZ';
    FieldByName('Stage').Value := Query1.FieldByName('KFJD').Value;
    if (Query1.FieldByName('CLSL').Value >= Query1.FieldByName('okQty').Value) then
      FieldByName('Qty').Value := RoundTo(Query1.FieldByName('CLSL').Value - Query1.FieldByName('okQty').Value + AdjustQty, -1)
    else
      FieldByName('Qty').Value := AdjustQty;
    FieldByName('CLSL').Value := Query1.FieldByName('CLSL').Value;
    Insert;
  end;
  Query1.Edit;
  Query1.FieldByName('okQty').Value := Query1.FieldByName('CLSL').Value;
  ShowMessage('Succeed.');
end;

procedure TPurSample_Ord_New.DBGridEh1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if query1.FieldByName('CLSL').value<=query1.FieldByName('okQty').value then
  begin
    DBGridEh1.canvas.font.color:=clred;
    DBGridEh1.defaultdrawcolumncell(rect,datacol,column,state);
  end;

  if ((query1.FieldByName('okQty').value>0) )
             and (query1.FieldByName('CLSL').value>query1.FieldByName('okQty').value) then
  begin
    DBGridEh1.canvas.font.color:=clLime;
    DBGridEh1.defaultdrawcolumncell(rect,datacol,column,state);
  end;
end;

procedure TPurSample_Ord_New.FormDestroy(Sender: TObject);
begin
  PurSample_Ord_New:=nil;
end;

procedure TPurSample_Ord_New.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TPurSample_Ord_New.DBGridEh1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key=#13 then
    DBGridEh1DblClick(nil);
end;

procedure TPurSample_Ord_New.FormCreate(Sender: TObject);
begin
  Edit2.Text:=PurSample.CGDet.fieldbyname('CLBH').value;
  Edit1.Text:=PurSample.CGDet.fieldbyname('JGNO').AsString;
  Edit3.Text:=PurSample.CGMas.fieldbyname('SEASON').value;
  Edit5.Text:=PurSample.CGMas.fieldbyname('PURPOSE').AsString;
  Edit4.Text:=PurSample.CGMas.fieldbyname('DevType').AsString;
end;

end.
