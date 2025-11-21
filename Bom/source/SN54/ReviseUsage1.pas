unit ReviseUsage1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, Buttons, ExtCtrls,
  Menus,Math,comobj;

type
  TReviseUsage = class(TForm)
    Panel1: TPanel;
    Label18: TLabel;
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
    bbt6: TBitBtn;
    Panel2: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Query1: TQuery;
    UpdateSQL1: TUpdateSQL;
    DataSource1: TDataSource;
    Label1: TLabel;
    Edit6: TEdit;
    UpdateQry: TQuery;
    Splitter1: TSplitter;
    KCLLSQry: TQuery;
    DataSource2: TDataSource;
    KCLLSQrySCBH: TStringField;
    KCLLSQryCLBH: TStringField;
    KCLLSQryQty: TCurrencyField;
    Query1ZLBH: TStringField;
    Query1xh: TStringField;
    Query1BWBH: TStringField;
    Query1CSBH: TStringField;
    Query1MJBH: TStringField;
    Query1CLBH: TStringField;
    Query1ZMLB: TStringField;
    Query1SIZE: TStringField;
    Query1CLSL: TFloatField;
    Query1USAGE: TFloatField;
    Query1USERID: TStringField;
    Query1USERDATE: TDateTimeField;
    Query1YN: TStringField;
    Query1BWMC: TStringField;
    Query1CLMC: TStringField;
    Query1DWBH: TStringField;
    Query1ZSMC: TStringField;
    Query1ARTICLE: TStringField;
    Query1YWPM: TStringField;
    Query1CLSLQty: TFloatField;
    Query1Qty: TCurrencyField;
    CheckBox2: TCheckBox;
    PopupMenu1: TPopupMenu;
    QtyCLSL1: TMenuItem;
    VTCombo: TComboBox;
    Label4: TLabel;
    Label7: TLabel;
    MotherEdit: TEdit;
    CheckBox3: TCheckBox;
    KCLLSQryMJBH: TStringField;
    DBGridEh1: TDBGridEh;
    DBGridEh2: TDBGridEh;
    Splitter2: TSplitter;
    Query1LockYN: TStringField;
    Label8: TLabel;
    Edit7: TEdit;
    Label9: TLabel;
    ComboBox1: TComboBox;
    procedure BB6Click(Sender: TObject);
    procedure BB7Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure BB1Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure QtyCLSL1Click(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure Query1AfterOpen(DataSet: TDataSet);
    procedure BB2Click(Sender: TObject);
    procedure BB3Click(Sender: TObject);
    procedure DBGridEh1EditButtonClick(Sender: TObject);
    procedure bbt6Click(Sender: TObject);
  private
    { Private declarations }
    procedure NegativeResult(Diff: double);

  public
    { Public declarations }
  end;

var
  ReviseUsage: TReviseUsage;

implementation
 uses main1,Revise_CLZL1,FunUnit, Revise_Supp1;
{$R *.dfm}
procedure TReviseUsage.NegativeResult(Diff: double);
begin
  Diff:=RoundTo(Query1.FieldByName('CLSL').Value+Diff,-2);
  Query1.FieldByName('CLSL').Value:=0;
  Query1.Next;
  Query1.Edit;

  if RoundTo(Query1.FieldByName('CLSL').Value+Diff,-2)>=0 then
  begin
    Query1.FieldByName('CLSL').Value:=RoundTo(Query1.FieldByName('CLSL').Value+Diff,-2);
  end else
  begin
    NegativeResult(Diff);
  end;
end;

procedure TReviseUsage.BB6Click(Sender: TObject);
begin
  with Query1 do
  begin
    active:=false;
    cachedupdates:= false;
    requestlive:=false;
    active:=true;
  end;
  BB5.Enabled:=false;
  BB6.Enabled:=false;
  DBGridEh1.columns[0].Color:=clWindow;
  DBGridEh1.columns[1].Color:=clWindow;
  DBGridEh1.columns[3].Color:=clWindow;
  DBGridEh1.columns[5].Color:=clWindow;
  dbgrideh1.columns[3].ButtonStyle:=cbsNone;
  dbgrideh1.columns[9].ButtonStyle:=cbsNone;
  dbgrideh1.columns[12].ButtonStyle:=cbsNone;
  KCLLSQry.Active:=true;
end;

procedure TReviseUsage.BB7Click(Sender: TObject);
begin
   close;
end;

procedure TReviseUsage.Button1Click(Sender: TObject);
begin
  //
  {if Length(Edit4.Text)<=9 then
  begin
    showmessage('Please input RY');
    exit;
  end; }
  if (Edit7.Text = '') and (ComboBox1.Text = '') and (Edit4.Text = '') then begin
    showmessage('Please Key In one condition in yellow part !');
    exit;
  end;
  BB6.Click;
  with Query1 do
  begin
     active:=false;
     SQL.Clear;
     SQL.Add('select ZLZLS2.*, BWZL.ywsm BWMC,CLZL.YWPM as CLMC,CLZL.DWBH,ZSZL.ZSYWJC AS ZSMC,DDZL.ARTICLE,DDZL.YN,CLZL1.YWPM,ZLZLS2All.CLSLQty ,IsNull(Round(KCLLS.Qty,2),0) as Qty,DDZL.YN as LockYN');
     SQL.Add('FROM ZLZLS2 LEFT JOIN BWZL ON BWZL.BWDH=ZLZLS2.BWBH');
     SQL.Add('            LEFT JOIN CLZL ON ZLZLS2.CLBH=CLZL.CLDH');
     SQL.Add('            LEFT JOIN ZSZL ON ZSZL.ZSDH=ZLZLS2.CSBH');
     SQL.Add('            LEFT JOIN DDZL ON DDZL.DDBH=ZLZLS2.ZLBH');
     SQL.Add('            LEFT JOIN CLZL CLZL1 ON ZLZLS2.MJBH=CLZL1.CLDH ');
     SQL.Add('left join (Select ZLBH,CLBH,MJBH,IsNull(Sum(CLSL),0) as CLSLQty from ZLZLS2 ');
     SQL.Add('           where ZLZLS2.ZLBH like '''+edit4.Text+'%'' and ZLZLS2.CLBH like '''+edit1.Text+'%'' ');
     if VTCombo.ItemIndex=1 then
       sql.Add('            and ZLZLS2.MJBH<>''ZZZZZZZZZZ'' ');
     if VTCombo.ItemIndex=2 then
       sql.Add('            and ZLZLS2.MJBH=''ZZZZZZZZZZ'' ');
     if MotherEdit.Text<>'' then
       sql.Add('            and ZLZLS2.MJBH like '''+MotherEdit.Text+'%'' ');
     SQL.Add('           Group by ZLBH,CLBH,MJBH) ZLZLS2All on ZLZLS2.ZLBH=ZLZLS2All.ZLBH and ZLZLS2.CLBH=ZLZLS2All.CLBH and ZLZLS2.MJBH=ZLZLS2All.MJBH ');
     if VTCombo.ItemIndex=0 then
     begin
       SQL.Add('left join (select SCBH,CLBH,MJBH,IsNull(Sum(Qty),0) as Qty from (');
       SQL.Add('            select   KCLLS.SCBH, KCLLS.CLBH,''ZZZZZZZZZZ'' as MJBH, sum(KCLLS.Qty) as Qty');
       SQL.Add('            from KCLLS');
       SQL.Add('            Left Join KCLL on KCLL.LLNO=KCLLS.LLNO ');
       SQL.Add('            where  KCLLS.SCBH like '''+edit4.Text+'%''  and KCLLS.CLBH like '''+edit1.Text+'%''  ');
       SQL.Add('                 and KCLL.GSBH='''+main.Edit2.Text+''' ');
       SQL.Add('                 and KCLL.SCBH<>''JJJJJJJJJJ'' ');
       SQL.Add('            Group by KCLLS.SCBH, KCLLS.CLBH');
       SQL.Add('            Union all');
       SQL.Add('            select JGZLSS.ZLBH as SCBH,JGZLS.ZMLB as CLBH,JGZLS.CLBH as MJBH,Sum(JGZLS.Qty*JGZLSS.Qty) as Qty from JGZLS');
       SQL.Add('            Left Join JGZLSS on JGZLS.JGNO=JGZLSS.JGNO and JGZLS.CLBH=JGZLSS.CLBH ');
       SQL.Add('            Left Join JGZL  on JGZL.JGNO=JGZLS.JGNO ');
       SQL.Add('            where JGZLSS.ZLBH like '''+edit4.Text+'%'' and JGZLS.ZMLB like '''+edit1.Text+'%'' and JGZLS.CLBH like '''+MotherEdit.Text+'%''  ');
       SQL.Add('                  and JGZL.GSBH='''+main.Edit2.Text+''' ');
       SQL.Add('                  and convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111))<''2017/09/01''  ');
       SQL.Add('            Group by JGZLSS.ZLBH,JGZLS.ZMLB,JGZLS.CLBH');
       SQL.Add('            Union all');
       SQL.Add('            select   KCLLS.SCBH, KCLLS.CLBH,KCLLS.DFL as MJBH, sum(KCLLS.Qty) as Qty');
       SQL.Add('            from KCLLS');
       SQL.Add('            Left Join KCLL on KCLL.LLNO=KCLLS.LLNO ');
       SQL.Add('            where  KCLLS.SCBH like '''+edit4.Text+'%''  and KCLLS.CLBH like '''+edit1.Text+'%''  ');
       SQL.Add('                 and KCLL.GSBH='''+main.Edit2.Text+''' ');
       SQL.Add('                 and KCLL.SCBH=''JJJJJJJJJJ'' ');
       SQL.Add('            Group by KCLLS.SCBH, KCLLS.CLBH,KCLLS.DFL');
       SQL.Add('           ) KCLLS group by SCBH,CLBH,MJBH) KCLLS on KCLLS.CLBH=ZLZLS2.CLBH and KCLLS.SCBH=ZLZLS2.ZLBH  and KCLLS.MJBH=ZLZLS2.MJBH ');
     end else if VTCombo.ItemIndex=1 then
     begin
       SQL.Add('left join (select SCBH,CLBH,MJBH,IsNull(Sum(Qty),0) as Qty from (');
       SQL.Add('            select JGZLSS.ZLBH as SCBH,JGZLS.ZMLB as CLBH,JGZLS.CLBH as MJBH ,Sum(JGZLS.Qty*JGZLSS.Qty) as Qty from JGZLS');
       SQL.Add('            Left Join JGZLSS on JGZLS.JGNO=JGZLSS.JGNO and JGZLS.CLBH=JGZLSS.CLBH ');
       SQL.Add('            Left Join JGZL  on JGZL.JGNO=JGZLS.JGNO ');
       SQL.Add('            where JGZLSS.ZLBH like '''+edit4.Text+'%'' and JGZLS.ZMLB like '''+edit1.Text+'%'' and JGZLS.CLBH like '''+MotherEdit.Text+'%'' ');
       SQL.Add('                  and JGZL.GSBH='''+main.Edit2.Text+''' ');
       SQL.Add('            and convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111))<''2017/09/01''  ');
       SQL.Add('            Group by JGZLSS.ZLBH,JGZLS.ZMLB,JGZLS.CLBH');
       SQL.Add('            Union all ');
       SQL.Add('            select   KCLLS.SCBH, KCLLS.CLBH,KCLLS.DFL as MJBH, sum(KCLLS.Qty) as Qty');
       SQL.Add('            from KCLLS');
       SQL.Add('            Left Join KCLL on KCLL.LLNO=KCLLS.LLNO ');
       SQL.Add('            where  KCLLS.SCBH like '''+edit4.Text+'%''  and KCLLS.CLBH like '''+edit1.Text+'%''  ');
       SQL.Add('                 and KCLL.GSBH='''+main.Edit2.Text+''' ');
       SQL.Add('                 and KCLL.SCBH=''JJJJJJJJJJ'' ');
       SQL.Add('            Group by KCLLS.SCBH, KCLLS.CLBH,KCLLS.DFL');
       SQL.Add('           ) KCLLS group by SCBH,CLBH,MJBH) KCLLS on KCLLS.CLBH=ZLZLS2.CLBH and KCLLS.SCBH=ZLZLS2.ZLBH  and KCLLS.MJBH=ZLZLS2.MJBH ');
     end else if VTCombo.ItemIndex=2 then
     begin
       SQL.Add('left join (select SCBH,CLBH,MJBH,IsNull(Sum(Qty),0) as Qty from (');
       SQL.Add('            select   KCLLS.SCBH, KCLLS.CLBH,''ZZZZZZZZZZ'' as MJBH, sum(KCLLS.Qty) as Qty');
       SQL.Add('            from KCLLS');
       SQL.Add('            Left Join KCLL on KCLL.LLNO=KCLLS.LLNO ');
       SQL.Add('            where  KCLLS.SCBH like '''+edit4.Text+'%''  and KCLLS.CLBH like '''+edit1.Text+'%''  ');
       SQL.Add('                   and KCLL.GSBH='''+main.Edit2.Text+''' ');
       SQL.Add('                 and KCLL.SCBH<>''JJJJJJJJJJ'' ');
       SQL.Add('            group by KCLLS.SCBH, KCLLS.CLBH');
       SQL.Add('           ) KCLLS group by SCBH,CLBH,MJBH) KCLLS on KCLLS.CLBH=ZLZLS2.CLBH and KCLLS.SCBH=ZLZLS2.ZLBH  and KCLLS.MJBH=ZLZLS2.MJBH ');
     end;
     sql.add('WHERE ZLZLS2.CLBH like '''+edit1.Text+'%'' ');
     if edit2.Text<>'' then
        sql.add('            and CLZL.YWPM like '''+'%'+edit2.Text+'%'' ');
     if edit3.Text<>'' then
        sql.add('            and CLZL.YWPM like '''+'%'+edit3.Text+'%'' ');
     sql.add('            and ZLZLS2.ZLBH like '''+edit4.Text+'%'' ');
     sql.add('            and DDZL.ARTICLE like '''+edit5.Text+'%'' ');
     sql.Add('            and ZLZLS2.BWBH like '''+edit6.Text+'%'' ') ;
     if MotherEdit.Text<>'' then
       sql.Add('            and ZLZLS2.MJBH like '''+MotherEdit.Text+'%'' ');
     if VTCombo.ItemIndex=1 then
       sql.Add('            and ZLZLS2.MJBH<>''ZZZZZZZZZZ'' ');
     if VTCombo.ItemIndex=2 then
       sql.Add('            and ZLZLS2.MJBH=''ZZZZZZZZZZ'' ');
     if checkbox2.Checked then
       sql.Add('            and Round(ZLZLS2All.CLSLQty,2)<>Round(KCLLS.Qty,2) and  IsNull(KCLLS.Qty,0)>0 ');
     if checkbox3.Checked then
       sql.Add('            and ZLZLS2.CLBH not like ''W%'' ');
     if Edit7.Text<>'' then
       sql.Add('            and DDZL.BUYNO like '''+Edit7.Text+'%'' ');
     if ComboBox1.Text<>'' then
       sql.Add('            and DDZL.DDGB like '''+ComboBox1.Text+'%'' ');

     SQL.Add('order by ZLZLS2.ZLBH,ZLZLS2.CLBH asc,ZLZLS2.MJBH,ZLZLS2.BWBH desc');
     //
     //funcObj.WriteErrorLog(sql.Text);
     //showmessage(SQL.Text);
     active:=true;
  end;
  with  KCLLSQry do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select * from (select SCBH,CLBH,MJBH,IsNull(Sum(Qty),0) as Qty from  (');
    if VTCombo.ItemIndex=0 then
    begin
       SQL.Add('            select   KCLLS.SCBH, KCLLS.CLBH,''ZZZZZZZZZZ'' as MJBH, sum(KCLLS.Qty) as Qty');
       SQL.Add('            from KCLLS');
       SQL.Add('            Left Join KCLL on KCLL.LLNO=KCLLS.LLNO ');
       SQL.Add('            where  KCLLS.SCBH like '''+edit4.Text+'%''  and KCLLS.CLBH like '''+edit1.Text+'%''  ');
       SQL.Add('                 and KCLL.GSBH='''+main.Edit2.Text+''' ');
       SQL.Add('                 and KCLL.SCBH<>''JJJJJJJJJJ'' ');
       SQL.Add('            Group by KCLLS.SCBH, KCLLS.CLBH');
       SQL.Add('            Union all');
       SQL.Add('            select JGZLSS.ZLBH as SCBH,JGZLS.ZMLB as CLBH,JGZLS.CLBH as MJBH,Sum(JGZLS.Qty*JGZLSS.Qty) as Qty from JGZLS');
       SQL.Add('            Left Join JGZLSS on JGZLS.JGNO=JGZLSS.JGNO and JGZLS.CLBH=JGZLSS.CLBH ');
       SQL.Add('            Left Join JGZL  on JGZL.JGNO=JGZLS.JGNO ');
       SQL.Add('            where JGZLSS.ZLBH like '''+edit4.Text+'%'' and JGZLS.ZMLB like '''+edit1.Text+'%'' and JGZLS.CLBH like '''+MotherEdit.Text+'%''  ');
       SQL.Add('                  and JGZL.GSBH='''+main.Edit2.Text+''' ');
       SQL.Add('                  and convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111))<''2017/09/01''  ');
       SQL.Add('            Group by JGZLSS.ZLBH,JGZLS.ZMLB,JGZLS.CLBH');
       SQL.Add('            Union all');
       SQL.Add('            select   KCLLS.SCBH, KCLLS.CLBH,KCLLS.DFL as MJBH, sum(KCLLS.Qty) as Qty');
       SQL.Add('            from KCLLS');
       SQL.Add('            Left Join KCLL on KCLL.LLNO=KCLLS.LLNO ');
       SQL.Add('            where  KCLLS.SCBH like '''+edit4.Text+'%''  and KCLLS.CLBH like '''+edit1.Text+'%''  ');
       SQL.Add('                 and KCLL.GSBH='''+main.Edit2.Text+''' ');
       SQL.Add('                 and KCLL.SCBH=''JJJJJJJJJJ'' ');
       SQL.Add('            Group by KCLLS.SCBH, KCLLS.CLBH,KCLLS.DFL');
    end else if VTCombo.ItemIndex=1 then
    begin
       SQL.Add('            select JGZLSS.ZLBH as SCBH,JGZLS.ZMLB as CLBH,JGZLS.CLBH as MJBH ,Sum(JGZLS.Qty*JGZLSS.Qty) as Qty from JGZLS');
       SQL.Add('            Left Join JGZLSS on JGZLS.JGNO=JGZLSS.JGNO and JGZLS.CLBH=JGZLSS.CLBH ');
       SQL.Add('            Left Join JGZL  on JGZL.JGNO=JGZLS.JGNO ');
       SQL.Add('            where JGZLSS.ZLBH like '''+edit4.Text+'%'' and JGZLS.ZMLB like '''+edit1.Text+'%'' and JGZLS.CLBH like '''+MotherEdit.Text+'%'' ');
       SQL.Add('                  and JGZL.GSBH='''+main.Edit2.Text+''' ');
       SQL.Add('            and convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111))<''2017/09/01''  ');
       SQL.Add('            Group by JGZLSS.ZLBH,JGZLS.ZMLB,JGZLS.CLBH');
       SQL.Add('            Union all ');
       SQL.Add('            select   KCLLS.SCBH, KCLLS.CLBH,KCLLS.DFL as MJBH, sum(KCLLS.Qty) as Qty');
       SQL.Add('            from KCLLS');
       SQL.Add('            Left Join KCLL on KCLL.LLNO=KCLLS.LLNO ');
       SQL.Add('            where  KCLLS.SCBH like '''+edit4.Text+'%''  and KCLLS.CLBH like '''+edit1.Text+'%''  ');
       SQL.Add('                 and KCLL.GSBH='''+main.Edit2.Text+''' ');
       SQL.Add('                 and KCLL.SCBH=''JJJJJJJJJJ'' ');
       SQL.Add('            Group by KCLLS.SCBH, KCLLS.CLBH,KCLLS.DFL');
    end else if VTCombo.ItemIndex=2 then
    begin
       SQL.Add('            select   KCLLS.SCBH, KCLLS.CLBH,''ZZZZZZZZZZ'' as MJBH, sum(KCLLS.Qty) as Qty');
       SQL.Add('            from KCLLS');
       SQL.Add('            Left Join KCLL on KCLL.LLNO=KCLLS.LLNO ');
       SQL.Add('            where  KCLLS.SCBH like '''+edit4.Text+'%''  and KCLLS.CLBH like '''+edit1.Text+'%''  ');
       SQL.Add('                   and KCLL.GSBH='''+main.Edit2.Text+''' ');
       SQL.Add('                 and KCLL.SCBH<>''JJJJJJJJJJ'' ');
       SQL.Add('            group by KCLLS.SCBH, KCLLS.CLBH');
    end;
    SQL.Add(') KCLLS group by SCBH,CLBH,MJBH ) KCLLS  ');
    SQL.Add('where SCBH=:ZLBH and CLBH=:CLBH and MJBH=:MJBH ');
  end;
  UpdateQry.Active:=false;
  KCLLSQry.Active:=true;
end;

procedure TReviseUsage.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TReviseUsage.FormDestroy(Sender: TObject);
begin
  ReviseUsage:=nil;
end;

procedure TReviseUsage.BB1Click(Sender: TObject);
begin
  Panel2.Visible:=true;
end;

procedure TReviseUsage.BB4Click(Sender: TObject);
begin
  with Query1 do
  begin
    cachedupdates:=true;
    requestlive:=true;
    edit;
  end;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
  KCLLSQry.Active:=false;
  dbgrideh1.columns[3].ButtonStyle:=cbsEllipsis;
  dbgrideh1.columns[9].ButtonStyle:=cbsEllipsis;
  dbgrideh1.columns[12].ButtonStyle:=cbsEllipsis;
end;

procedure TReviseUsage.BB5Click(Sender: TObject);
var i:integer;
begin
  KCLLSQry.Active:=false;
  with query1 do
  begin
    query1.first;
    while not eof do
    begin
      case query1.updatestatus of
        usmodified:
        begin
          if Query1.fieldbyname('YN').Value=0 then
          begin
            with UpdateQry do
            begin
                active:=false;
                sql.Clear;
                sql.add('insert into BDelRec ');
                sql.add('(TableName ,TNO,CLBH,OldID,DelID,DelDate)');
                sql.add('values (''ZLZLS2'','''+Query1.fieldbyname('ZLBH').Value+'''');
                sql.add(','''+Query1.fieldbyname('CLBH').Value+''','''+Query1.fieldbyname('USERID').Value+''',');
                sql.add(''''+main.Edit1.Text+''''+',getdate())');
                execsql;
                active:=false;
            end;
            UpdateSQL1.apply(ukdelete);
          end else
          begin
            if (query1.fieldbyname('CLSL').Value>=0) or (query1.FieldByName('CLBH').Value<> query1.FieldByName('CLBH').OldValue) or (query1.FieldByName('CSBH').Value<> query1.FieldByName('CSBH').OldValue) or (query1.FieldByName('MJBH').Value<> query1.FieldByName('MJBH').OldValue)then
            begin
              UpdateQry.Active:=false;
              UpdateQry.SQL.Clear;
              UpdateQry.SQL.Add('Update ZLZLS2 Set CLSL='+formatfloat('#0.00#',fieldbyname('CLSL').AsFloat+0.0001)+',CLBH='''+FieldByName('CLBH').Value+''',CSBH='''+FieldByName('CSBH').Value+''',MJBH='''+FieldByName('MJBH').Value+''',UserID='''+main.Edit1.Text+''',UserDate=GetDate(),YN=''2'' ');
              UpdateQry.SQL.Add('Where ZLBH='''+FieldByName('ZLBH').Value+''' and  BWBH='''+FieldByName('BWBH').Value+''' ');
              UpdateQry.SQL.Add('      and  CLBH='''+FieldByName('CLBH').OldValue+''' and SIZE='''+FieldByName('SIZE').Value+''' and YN='''+FieldByName('YN').Value+''' ');
              UpdateQry.ExecSQL;
            end;
          end;
        end;
      end;
      Query1.Next;
    end;
    active:=false;
    cachedupdates:=false;
    requestlive:=false;
    active:=true;
  end;
  dbgrideh1.columns[3].ButtonStyle:=cbsNone;
  dbgrideh1.columns[9].ButtonStyle:=cbsNone;
  dbgrideh1.columns[12].ButtonStyle:=cbsNone;
  BB5.enabled:=false;
  BB6.Enabled:=false;
  KCLLSQry.Active:=true;
end;

procedure TReviseUsage.DBGridEh1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  //¦³¤H­×§ï
  DBGridEh1.columns[3].Color:=clyellow;
  if  ((Query1.FieldByName('CLSLQty').AsString<>'') and (Query1.FieldByName('Qty').AsString<>'')) then
  begin
    if (RoundTo(Query1.FieldByName('CLSLQty').Value,-2)<>RoundTo(Query1.FieldByName('Qty').Value,-2)) and (RoundTo(Query1.FieldByName('Qty').Value,-2)>0)  then          //
    begin
      DBGridEh1.canvas.font.Color:=clBlue;
      DBGridEh1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
    end;
  end;
  //
  //
  if Query1.FieldByName('YN').value='0' then
  begin
    DBGridEh1.canvas.font.color:=clred;
    DBGridEh1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
  end;
  if Query1.FieldByName('BWBH').value='ZZZZ' then
  begin
    DBGridEh1.canvas.Brush.Color:=clBtnFace;
    DBGridEh1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
  end;

end;

procedure TReviseUsage.QtyCLSL1Click(Sender: TObject);
var i:integer;
    flag:boolean;
    MJBH,CLBH,DWBH:string;
    Diff:double;
begin
  if Query1.Active=true then
  begin
    if Query1.RequestLive=true then
    begin
      Diff:=0;
      CLBH:='';

      if messagedlg('ALSO RESET CLSL OF UNIT RPS?',mtinformation,[mbYes,mbNo],0)=mrYes then
      begin
        flag:=true;
      end else
      begin
        flag:=false;
      end;

      Query1.First;
      while not Query1.Eof do
      begin
        CLBH:=Query1.FieldByName('CLBH').AsString;
        MJBH:=Query1.FieldByName('MJBH').AsString;
        DWBH:=Query1.FieldByName('DWBH').AsString;
        Diff:=RoundTo(Query1.FieldByName('Qty').Value,-2)-RoundTo(Query1.FieldByName('CLSLQty').Value,-2);

        if (Diff<>0) then
        begin
          if (DWBH='PRS') and (flag=false) then
          begin
            Query1.Next;
          end else
          begin
            Query1.Edit;

            if RoundTo(Query1.FieldByName('CLSL').Value+Diff,-2)>=0 then
            begin
              Query1.FieldByName('CLSL').Value:=RoundTo(Query1.FieldByName('CLSL').Value+Diff,-2);
            end else
            begin
              NegativeResult(Diff);
            end;

            Query1.Post;
            Diff:=0;
            while (not Query1.Eof) and (Query1.FieldByName('CLBH').AsString=CLBH) and (Query1.FieldByName('MJBH').AsString=MJBH) do
            begin
              Query1.Next;
            end;
          end;
        end else
        begin
          Query1.Next;
        end;
      end;
    end;
  end;
end;

procedure TReviseUsage.CheckBox2Click(Sender: TObject);
begin
  if CheckBox2.Checked=true then
    DBGridEh1.PopupMenu:=PopupMenu1
  else
    DBGridEh1.PopupMenu:=nil;
end;

procedure TReviseUsage.Query1AfterOpen(DataSet: TDataSet);
begin
  if Query1.RecordCount>0 then
  begin
    with UpdateQry do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('select INVOICE_D.RYNO from INVOICE_M,INVOICE_D ');
      SQL.Add(' where INVOICE_M.INV_NO=INVOICE_D.INV_NO and INVOICE_D.RYNO='''+query1.FieldByName('ZLBH').AsString+''' and IsNull(INVOICE_M.PRINT_LOCK,''N'')=''Y'' ');
      Active:=true;
      if RecordCount>0 then
      begin
        //BB2.Enabled:=false;
        //BB3.Enabled:=false;
        BB4.Enabled:=false;
      end else
      begin
        //BB2.Enabled:=true;
        //BB3.Enabled:=true;
        if Query1.FieldByName('LockYN').AsString='1' then
          BB4.Enabled:=true;
      end;
      Active:=false;
    end;
  end;
end;

procedure TReviseUsage.BB2Click(Sender: TObject);
begin
  with Query1 do
  begin
    requestlive:=true;
    cachedupdates:=true;
    insert;
    FieldByName('ZLBH').Value:=Edit4.Text;
    FieldByName('BWBH').Value:='ZZZZ';
    FieldByName('SIZE').Value:='ZZZZZZ';
  end;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
  DBGridEh1.columns[3].ButtonStyle:=cbsEllipsis;
  DBGridEh1.columns[3].Color:=clyellow;
  KCLLSQry.Active:=false;
end;

procedure TReviseUsage.BB3Click(Sender: TObject);
begin
  with Query1 do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
    fieldbyname('YN').Value:='0';
  end;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
end;

procedure TReviseUsage.DBGridEh1EditButtonClick(Sender: TObject);
begin
  if DBGridEh1.selectedfield.fieldname='CLBH' then
  begin
    Revise_CLZL:=TRevise_CLZL.create(self);
    Revise_CLZL.Label4.Caption:='CLBH';
    Revise_CLZL.ShowModal();
  end;
  if DBGridEh1.selectedfield.fieldname='ZSMC' then
  begin
    Revise_Supp:=TRevise_Supp.create(self);
    Revise_Supp.ShowModal();
  end;
  if DBGridEh1.selectedfield.fieldname='MJBH' then
  begin
    Revise_CLZL:=TRevise_CLZL.create(self);
    Revise_CLZL.Label4.Caption:='MJBH';
    Revise_CLZL.ShowModal();
  end;
end;

procedure TReviseUsage.bbt6Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin

  if Query1.Active then
  begin
    if Query1.recordcount=0 then
      begin
        showmessage('No record.');
        abort;
      end;
  end
  else
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
    eclapp.Cells.NumberFormatLocal:='@';
    eclApp.Cells(1,1):='NO';
    for   i:=1   to   Query1.fieldcount   do
    begin
        eclApp.Cells(1,i+1):=Query1.fields[i-1].FieldName;
    end;
    Query1.First;
    j:=2;
    while   not  Query1.Eof   do
    begin
        eclApp.Cells(j,1):=j-1;
        for   i:=1   to   Query1.fieldcount   do
        begin
            eclApp.Cells(j,i+1):=Query1.Fields[i-1].Value;
            eclApp.Cells.Cells.item[j,i+1].font.size:='8';
        end;
        Query1.Next;
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

end.
