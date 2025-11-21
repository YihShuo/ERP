{$A8,B-,C+,D+,E-,F-,G+,H+,I+,J-,K-,L+,M-,N+,O+,P+,Q-,R-,S-,T-,U-,V+,W-,X+,Y+,Z1}
{$MINSTACKSIZE $00004000}
{$MAXSTACKSIZE $00100000}
{$IMAGEBASE $00400000}
{$APPTYPE GUI}
{$WARN SYMBOL_DEPRECATED ON}
{$WARN SYMBOL_LIBRARY ON}
{$WARN SYMBOL_PLATFORM ON}
{$WARN UNIT_LIBRARY ON}
{$WARN UNIT_PLATFORM ON}
{$WARN UNIT_DEPRECATED ON}
{$WARN HRESULT_COMPAT ON}
{$WARN HIDING_MEMBER ON}
{$WARN HIDDEN_VIRTUAL ON}
{$WARN GARBAGE ON}
{$WARN BOUNDS_ERROR ON}
{$WARN ZERO_NIL_COMPAT ON}
{$WARN STRING_CONST_TRUNCED ON}
{$WARN FOR_LOOP_VAR_VARPAR ON}
{$WARN TYPED_CONST_VARPAR ON}
{$WARN ASG_TO_TYPED_CONST ON}
{$WARN CASE_LABEL_RANGE ON}
{$WARN FOR_VARIABLE ON}
{$WARN CONSTRUCTING_ABSTRACT ON}
{$WARN COMPARISON_FALSE ON}
{$WARN COMPARISON_TRUE ON}
{$WARN COMPARING_SIGNED_UNSIGNED ON}
{$WARN COMBINING_SIGNED_UNSIGNED ON}
{$WARN UNSUPPORTED_CONSTRUCT ON}
{$WARN FILE_OPEN ON}
{$WARN FILE_OPEN_UNITSRC ON}
{$WARN BAD_GLOBAL_SYMBOL ON}
{$WARN DUPLICATE_CTOR_DTOR ON}
{$WARN INVALID_DIRECTIVE ON}
{$WARN PACKAGE_NO_LINK ON}
{$WARN PACKAGED_THREADVAR ON}
{$WARN IMPLICIT_IMPORT ON}
{$WARN HPPEMIT_IGNORED ON}
{$WARN NO_RETVAL ON}
{$WARN USE_BEFORE_DEF ON}
{$WARN FOR_LOOP_VAR_UNDEF ON}
{$WARN UNIT_NAME_MISMATCH ON}
{$WARN NO_CFG_FILE_FOUND ON}
{$WARN MESSAGE_DIRECTIVE ON}
{$WARN IMPLICIT_VARIANTS ON}
{$WARN UNICODE_TO_LOCALE ON}
{$WARN LOCALE_TO_UNICODE ON}
{$WARN IMAGEBASE_MULTIPLE ON}
{$WARN SUSPICIOUS_TYPECAST ON}
{$WARN PRIVATE_PROPACCESSOR ON}
{$WARN UNSAFE_TYPE OFF}
{$WARN UNSAFE_CODE OFF}
{$WARN UNSAFE_CAST OFF}
unit TraceTotal1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ExtCtrls,ehlibBDE,
  comobj, PrnDbgeh, ComCtrls;

type
  TTraceTotal = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    Edit2: TEdit;
    Edit1: TEdit;
    Button2: TButton;
    DBGridEh1: TDBGridEh;
    Query1: TQuery;
    DataSource1: TDataSource;
    Query1CLBH: TStringField;
    Query1YWPM: TStringField;
    Query1ZWPM: TStringField;
    Query1DWBH: TStringField;
    Query1CGQty: TCurrencyField;
    Query1YQDate: TDateTimeField;
    Query1CFMDate: TDateTimeField;
    Query1CGDate: TDateTimeField;
    Query1CGNO: TStringField;
    Query1RKNO: TStringField;
    Query1RKDate: TDateTimeField;
    Query1RKQty: TCurrencyField;
    Button3: TButton;
    PrintDBGridEh1: TPrintDBGridEh;
    cb1: TComboBox;
    Label4: TLabel;
    DTP1: TDateTimePicker;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    cb2: TComboBox;
    Label7: TLabel;
    Query1GSBH: TStringField;
    Query1CG_ZSBH: TStringField;
    Query1RK_ZSBH: TStringField;
    Query1VNACC: TCurrencyField;
    Qtemp: TQuery;
    Edit3: TEdit;
    Label9: TLabel;
    Query1VNPrice: TFloatField;
    Query1SupName: TStringField;
    Edit4: TEdit;
    Label10: TLabel;
    Label11: TLabel;
    Edit5: TEdit;
    Label12: TLabel;
    Edit6: TEdit;
    DTP2: TDateTimePicker;
    Query1DepName: TStringField;
    chkDep: TCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure FormCreate(Sender: TObject);
    procedure Query1AfterOpen(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TraceTotal: TTraceTotal;

implementation

uses main1;

{$R *.dfm}

procedure TTraceTotal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
action:=cafree;
end;

procedure TTraceTotal.FormDestroy(Sender: TObject);
begin
TraceTotal:=nil;
end;

procedure TTraceTotal.Button2Click(Sender: TObject);
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
       showmessage('Succeed');
      except
        on   F:Exception   do
          showmessage(F.Message);
      end;
    end;

end;

procedure TTraceTotal.Button1Click(Sender: TObject);
var wherestr : string;
begin

case cb1.ItemIndex of //物料採購情況
  0:   // 全部
  begin
    wherestr:='';
  end;
  1:   // 已驗
  begin
    wherestr:='  and ( KCRKS.RKQty = CGZLS.Qty ) ';
  end;
  2:  // 未驗
  begin
    wherestr:=' and ( KCRKS.RKQty is null )';
  end;
  3:  // 回復交期小於今天且未入庫
  begin
    wherestr:=' and (getDate()-1 > CGZLS.CFMDate) and ( KCRKS.RKQty is null )';
  end;
  4:  //入庫量小於採購量
  begin
    wherestr:=' and ( KCRKS.RKQty < CGZLS.Qty )';
  end;
  5:  //入庫量大於採購量
  begin
    wherestr:=' and ( KCRKS.RKQty > CGZLS.Qty )';
  end;
  6:  //要求交期大於採購日一個月
  begin
    wherestr:=' and (convert(datetime, YQDate) - convert(datetime, CGDate) > 30 )';
  end;
  7:  //採購供應商與入庫供應商不同
  begin
    wherestr:=' and ( CGZLS.ZSBH <> KCRK.ZSBH )';
  end;
end;

  with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select  CGZLS.GSBH, CGZLS.CGNO, CGZLS.CLBH,  CLZL.YWPM, CLZL.DWBH                            ');
    sql.add('        , isnull(CGZLS.Qty, 0.0) as CGQty,  KCRKS.RKQty, KCRKS.VNPrice,KCRKS.VNACC, CGZLS.ZSBH as CG_ZSBH, KCRK.ZSBH as RK_ZSBH, zszl.zsywjc as SupName   ');
    sql.add('        , convert(smalldatetime,convert(varchar, CGZLS.CGDate,111)) as CGDate, CGZLS.YQDate, CGZLS.CFMDate                              ');
    if chkDep.Checked then
    begin
      sql.Add('      , CGZLS.DepName ');
    end else
    begin
      sql.Add('      , '' '' as DepName');
    end;
    sql.add('        , KCRK.USERDate as RKDate, KCRKS.RKNO  , CLZL.ZWPM                                   ');
    sql.add('from (                                                                                       ');
    sql.add('      select CGZLS.CGNO, CGZLS.CLBH, CGZLS.Qty, CGZL.CGDate                                  ');
    if chkDep.Checked then
    begin
      sql.add('             , CGZLS.YQDate, CGZLS.CFMDate, CGZL.GSBH, CGZL.ZSBH , BDepartment.DepName,CGZLSS.ZLBH        ');
    end else
    begin
      sql.add('             , CGZLS.YQDate, CGZLS.CFMDate, CGZL.GSBH, CGZL.ZSBH       ');
    end;
    sql.add('      from CGZLS                                                                             ');
    sql.add('      left join CGZL on CGZl.CGNO=CGZLS.CGNO                                                 ');
    if chkDep.Checked then
    begin
      sql.Add('      left join CGZLSS on CGZLS.CGNO=CGZLSS.CGNO and CGZLSS.CLBH=CGZLS.CLBH                  ');
      sql.Add('	     left join SGDHs on CGZLSS.ZLBH=SGDHS.SGNO and SGDHS.CLBH=CGZLSS.CLBH                   ');
      sql.Add('   	 left join SGDH on SGDHS.SGNO=SGDH.SGNO                                                 ');
      sql.Add(' 	   left join BDepartment on IsNull(SGDH.DepID,CGZLSS.Memo)=BDepartment.ID                 ');
    end;
    sql.add('           where CGZLS.YN!=0 and CGZLS.CLBH like '''  + edit1.Text + '%'''                                    );

    if cb2.Text <> 'ALL' then
      sql.Add('               and CGZL.GSBH = ''' + cb2.Text + '''                                        ');

    sql.add('                 and convert(smalldatetime,convert(varchar,CGZL.CGDate,111)) between         ');
    sql.add('                     ''' + formatdatetime('yyyy/MM/dd',DTP1.Date) + '''' + 'and ' + ''''+formatdatetime('yyyy/MM/dd',DTP2.Date) + '''');
    sql.add('                 and CGZL.CGLX = 4                                                           ');
    sql.add('      )  CGZLS                                                                               ');
    sql.add('left join (                                                                                  ');
    if chkDep.Checked then
    begin
      sql.Add('            select KCRKS.CGBH ,KCRKS.CLBH, sum(KCRKS.Qty) as RKQty,KCRKS.VNPrice                           ');
    end else
    begin
      sql.Add('            select KCRKS.CLBH, sum(KCRKS.Qty) as RKQty,KCRKS.VNPrice                           ');
    end;
    sql.add('                   , sum(KCRKS.VNACC) as VNACC , KCRKS.RKNO as RKNO, KCRK.ZSNO                     ');
    sql.Add('            from  KCRKS                                                                                 ');
    sql.add('            left join KCRK on KCRK.RKNO=KCRKS.RKNO                                                                       ');
    sql.add('            where KCRKS.CLBH like '''  + edit1.Text + '%''                                   ');
    if chkDep.Checked then
    begin
      sql.Add('            group by KCRKS.CGBH , KCRKS.CLBH,KCRKS.VNPrice,KCRK.ZSNO,KCRKS.RKNO                                                  ');
    end else
    begin
      sql.Add('            group by KCRKS.CLBH,KCRKS.VNPrice,KCRK.ZSNO,KCRKS.RKNO                                                  ');
    end;
    if chkDep.Checked then
    begin
      sql.Add('           ) KCRKS on KCRKS.ZSNO = CGZLS.CGNO and KCRKS.CLBH = CGZLS.CLBH and KCRKS.CGBH= CGZLS.ZLBH                  ');
    end else
    begin
      sql.Add('           ) KCRKS on KCRKS.ZSNO = CGZLS.CGNO and KCRKS.CLBH = CGZLS.CLBH                  ');
    end;
    sql.Add('left join KCRK on KCRK.RKNO = KCRKS.RKNO');
    //20200807 filter supplier from CGZLs.ZSBH
    sql.add('left join zszl on cgzls.zsbh=zszl.zsdh');
    sql.Add('left join CLZL on CGZLS.CLBH = CLZL.CLDH                                                     ');
    sql.add('where  CLZL.YWPM like '''  + edit2.Text + '%'''                                               );
    sql.Add('and   CLZL.ZWPM like ''%'  + edit4.Text + '%'''                                                );
    if edit5.Text <> '' then
      sql.Add('and   zszl.zsdh  like ''%'  + edit5.Text + '%'''  );
    if edit6.Text <> '' then
      sql.Add('and   zszl.zsywjc like ''%'  + edit6.Text + '%'''  );
    sql.add(wherestr);
    sql.add('order by CGZLS.CGNO DESC');
    active:=true;
    Edit3.Text := IntToStr(RecordCount);
  end;
end;

procedure TTraceTotal.Button3Click(Sender: TObject);
begin

printdbgrideh1.Preview;
end;

procedure TTraceTotal.DBGridEh1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin

// 驗收 OK
if Query1.FieldByName('RKQty').value = Query1.FieldByName('CGQty').value then
       dbgrideh1.canvas.font.color:=clGreen;
// 驗收 OK 但大於回覆交期 7 日才入庫
if ( Query1.FieldByName('RKDate').value - Query1.FieldByName('CFMDate').value ) > 7 then
       dbgrideh1.canvas.font.color:=clFuchsia;
// 入庫數 > 採購數
if Query1.FieldByName('RKQty').value > Query1.FieldByName('CGQty').value then
       dbgrideh1.canvas.font.color:=clBlue;
// 入庫量 < 採購數
if Query1.FieldByName('RKQty').value < Query1.FieldByName('CGQty').value then
       dbgrideh1.canvas.font.color:=clRed;
// 未入庫
if Query1.FieldByName('RKQty').value = null then
        dbgrideh1.canvas.font.color:=clBlack;
// 要求交期大於採購日一個月
if ( Query1.FieldByName('YQDate').value - Query1.FieldByName('CGDate').value ) > 30 then
        dbgrideh1.canvas.font.color:= $000080FF;
// 回復交期小於今天且未入庫
if ( Query1.FieldByName('CFMDate').value < date ) and Query1.FieldByName('RKQty').value = null then
        dbgrideh1.canvas.font.color:=clFuchsia;
// 採購供應商與入庫廠商不同
if ( Query1.FieldByName('CG_ZSBH').value <> Query1.FieldByName('RK_ZSBH').value ) and ( Query1.FieldByName('RK_ZSBH').value <> null ) then
       dbgrideh1.canvas.font.color:=clPurple;

end;


procedure TTraceTotal.FormCreate(Sender: TObject);
var i:integer;
begin
  with Qtemp do
  begin
    active:=false;
    sql.Clear;
    sql.add('select GSDH from BGSZL order by GSDH');
    active:=true;
    cb2.Items.Add('ALL');
    for i:=1 to recordcount do
    begin
      cb2.Items.Add(fieldbyname('GSDH').asstring);
      next;
    end;

    cb2.Text:=main.edit2.Text;
    active:=false;
  end;

  DTP1.Date:=date-30;
  DTP2.date:=date;
end;

procedure TTraceTotal.Query1AfterOpen(DataSet: TDataSet);
begin
  if chkDep.Checked then
  begin
    DBGridEh1.Columns[18].Visible:=true;
  end else
  begin
    DBGridEh1.Columns[18].Visible:=false;
  end;
end;

end.
