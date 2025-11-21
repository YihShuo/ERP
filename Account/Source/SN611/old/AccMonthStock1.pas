unit AccMonthStock1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, GridsEh, DBGridEh, DB, DBTables, ComCtrls,
  DBGridEhImpExp, Comobj, ShellAPI;

type
  TAccMonthStock = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    Label16: TLabel;
    Label7: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    CBX1: TComboBox;
    Button2: TButton;
    CBX2: TComboBox;
    CBX3: TComboBox;
    Edit4: TEdit;
    CBX6: TComboBox;
    CBX4: TComboBox;
    CalQuery: TQuery;
    CalDS: TDataSource;
    tmpQry: TQuery;
    PC1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    DBGridEh1: TDBGridEh;
    UpdateSQL1: TUpdateSQL;
    CalQueryKCYEAR: TStringField;
    CalQueryKCMONTH: TStringField;
    CalQueryCKBH: TStringField;
    CalQueryHGLB: TStringField;
    CalQueryCLBH: TStringField;
    CalQueryRemACC: TFloatField;
    CalQueryRemQty01: TCurrencyField;
    CalQueryRemQty02: TCurrencyField;
    CalQueryRemQty03: TCurrencyField;
    CalQueryRemQty04: TCurrencyField;
    CalQueryRemQty05: TCurrencyField;
    CalQueryRemQty06: TCurrencyField;
    CalQueryRemQty01T: TCurrencyField;
    CalQueryRemQty02T: TCurrencyField;
    CalQueryRemQty03T: TCurrencyField;
    CalQueryRemQty04T: TCurrencyField;
    CalQueryRemQty05T: TCurrencyField;
    CalQueryRemQty06T: TCurrencyField;
    CalQueryUSERID: TStringField;
    CalQueryUSERDATE: TDateTimeField;
    CalQueryCWBH: TStringField;
    PorgressLabel: TLabel;
    CalQueryYN: TStringField;
    Button3: TButton;
    DBGridEh2: TDBGridEh;
    Stock6TQry: TQuery;
    Stock6TDS: TDataSource;
    Stock6TQryKCYEAR: TStringField;
    Stock6TQryKCMONTH: TStringField;
    Stock6TQryCKBH: TStringField;
    Stock6TQryCLBH: TStringField;
    Stock6TQryHGLB: TStringField;
    Stock6TQryRemQty: TCurrencyField;
    Stock6TQryRemACC: TFloatField;
    Stock6TQryRemQty01T: TCurrencyField;
    Stock6TQryRemQty02T: TCurrencyField;
    Stock6TQryRemQty03T: TCurrencyField;
    Stock6TQryRemQty04T: TCurrencyField;
    Stock6TQryRemQty05T: TCurrencyField;
    Stock6TQryRemQty06T: TCurrencyField;
    Stock6TQryRemAcc01T: TFloatField;
    Stock6TQryRemAcc02T: TFloatField;
    Stock6TQryRemAcc03T: TFloatField;
    Stock6TQryRemAcc04T: TFloatField;
    Stock6TQryRemAcc05T: TFloatField;
    Stock6TQryRemAcc06T: TFloatField;
    ExchangeEdit: TEdit;
    Label5: TLabel;
    CheckBox1: TCheckBox;
    SaveDialog1: TSaveDialog;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    StockClassQry: TQuery;
    DBGridEh3: TDBGridEh;
    StockClassQryDS: TDataSource;
    StockClassQryKCYEAR: TStringField;
    StockClassQryKCMONTH: TStringField;
    StockClassQryclass0: TFloatField;
    StockClassQryClass1: TFloatField;
    StockClassQryClass2: TFloatField;
    StockClassQryClass3: TFloatField;
    StockClassQryClass4: TFloatField;
    StockClassQryClass5: TFloatField;
    StockClassQryClass6: TFloatField;
    StockClassQryClass7: TFloatField;
    StockClassQryClass8: TFloatField;
    StockClassQryClass9: TFloatField;
    StockClassQryClass10: TFloatField;
    StockClassQryClass11: TFloatField;
    StockClassQryClass12: TFloatField;
    StockClassQryClass13: TFloatField;
    StockABDQry: TQuery;
    StockABDDS: TDataSource;
    DBGridEh4: TDBGridEh;
    StockABDQryKCYEAR: TStringField;
    StockABDQryKCMONTH: TStringField;
    StockABDQryLB: TStringField;
    StockABDQryclassABD: TFloatField;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    procedure ExportExcel(Query:TQuery);
    { Private declarations }
    procedure Stock6TMonth();
    procedure StockClass();
    procedure StockABD();
    //
    procedure CWCLZL_HG_Mon();
    procedure Calcuate_6TMonth();
    Function Check_6TMonth():boolean;
    //
    procedure ExportExcel_Stock6T();
    procedure ExportExcel_Default(Query:TQuery);
  public
    { Public declarations }
  end;

var
  AccMonthStock: TAccMonthStock;

implementation

uses main1, FunUnit;

{$R *.dfm}

procedure TAccMonthStock.FormDestroy(Sender: TObject);
begin
  AccMonthStock:=nil;
end;

procedure TAccMonthStock.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=CaFree;
end;

procedure TAccMonthStock.FormCreate(Sender: TObject);
var i,index:integer;
begin
  //
  with tmpQry do
  begin
    active:=false;
    sql.Clear;
    sql.add('Select gsdh from bgszl ');
    sql.add('where YN=1 and DFL in (select DFL from bgszl where GSDH='''+main.Edit2.Text+''') ');
    Active:=true;
    index:=0;
    CBX4.Items.Clear;
    CBX4.Items.Add('ALL');
    for i:=1 to recordCount do
    begin
      CBX4.Items.Add(fieldbyname('gsdh').AsString);
      if main.Edit2.Text=fieldbyname('gsdh').AsString then index:=i;
      Next;
    end;
    CBX4.ItemIndex:=0;
    Active:=false;
  end;
  //
  with tmpQry do
  begin
    active:=false;
    sql.Clear;
    sql.add('select CKBH from KCCK ');
    sql.add('where GSBH='+''''+main.Edit2.Text+'''');
    sql.add('order by CKBH');
    active:=true;
    CBX1.Items.Clear;
    CBX1.Items.Add('ALL');
    while not eof do
    begin
      CBX1.Items.Add(fieldbyname('CKBH').AsString);
      Next;
    end;
    CBX1.ItemIndex:=0;
    Active:=false;
  end;
  //

end;
//計算存貨庫齡
procedure TAccMonthStock.Calcuate_6TMonth();
var i:integer;
    RemQty:double;
    tmpList:TStringlist;
    HGLBSQL:string;
begin
  //
  with tmpQry do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Delete from CWCLZL_HG_Mon ');
    SQL.Add('where exists ( ');
    SQL.Add(' select * from  CWCLZL_HG_Mon CWCLZL ');
    SQL.Add(' left join KCZLS on KCZLS.CLBH=CWCLZL.CLBH and KCZLS.CKBH=CWCLZL.CKBH  ');
    SQL.Add(' left join KCCK on KCCK.CKBH=CWCLZL.CKBH  ');
    SQL.Add('where  CWCLZL.KCYEAR='''+CBX2.Text+''' and CWCLZL.KCMONTH='''+CBX3.Text+''' ');
    SQL.Add(' and CWCLZL_HG_Mon.KCYEAR=CWCLZL.KCYEAR and CWCLZL_HG_Mon.KCMONTH=CWCLZL.KCMONTH  and CWCLZL_HG_Mon.CKBH=CWCLZL.CKBH  and CWCLZL_HG_Mon.CLBH=CWCLZL.CLBH and CWCLZL_HG_Mon.HGLB=CWCLZL.HGLB  ');
    if CBX1.itemindex<>0 then
    begin
       sql.add(' and CWCLZL.CKBH= '+''''+CBX1.Text+'''');
    end;
    if edit4.Text<> '' then
      sql.add('      and KCZLS.CWBH like '+''''+edit4.Text+'%'+'''');
    if edit1.Text<>'' then
    sql.Add('      and CWCLZL.CLBH like '+''''+edit1.Text+'%'+'''');
    if CBX1.itemindex<>0 then
    begin
       sql.add(' and CWCLZL.CKBH= '+''''+CBX1.Text+'''');
    end;
    //HGLB
    if CBX6.ItemIndex>0 then
    begin
      if Pos('+',CBX6.Text)<0 then
      begin
        sql.add('and CWCLZL.HGLB='''+CBX6.Text+''' ')
      end else
      begin
        tmpList:=TStringlist.Create;
        tmpList:=FuncObj.SplitString(CBX6.Text,'+');
        for i:=0 to tmpList.Count-1 do
        begin
          HGLBSQL:=HGLBSQL+''''+tmpList.Strings[i]+''',';
        end;
        HGLBSQL:='('+Copy(HGLBSQL,1,length(HGLBSQL)-1)+')';
        sql.add('and CWCLZL.HGLB in '+HGLBSQL+' ');
        tmpList.Free;
      end;
    end;
    //GSBH
    if CBX4.itemindex<>0 then
    begin
      sql.add(' and KCCK.GSBH='+''''+CBX4.Text+'''');
    end else
    begin
      sql.add(' and KCCK.GSBH in ( Select GSDH from bgszl where YN=1 and DFL in (select DFL from bgszl where GSDH='''+main.Edit2.Text+''')) ');
    end;
    SQl.Add(' ) ');
    //funcObj.WriteErrorLog(sql.Text);
    ExecSQL();
    Active:=false;
  end;
  CalDS.DataSet:=nil;
  with CalQuery do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
    //
    First;
    for i:=0 to RecordCount-1 do
    begin
      Application.ProcessMessages;
      PorgressLabel.Caption:=inttostr(i+1)+'/'+inttostr(RecordCount);
      Edit;
      //T1
      if FieldByName('RemQty01').Value>FieldByName('RemQty02').Value then// @RemQty01>@RemQty02
      begin
        FieldByName('RemQty01T').Value:=FieldByName('RemQty01').Value-FieldByName('RemQty02').Value;
      end else
      begin
        FieldByName('RemQty01T').Value:=0;
      end;
      //T2
      if FieldByName('RemQty02').Value>FieldByName('RemQty03').Value then// @RemQty01>@RemQty02
      begin
        FieldByName('RemQty02T').Value:=FieldByName('RemQty02').Value-FieldByName('RemQty03').Value;
      end else
      begin
        FieldByName('RemQty02T').Value:=0;
      end;
      //T3
      if FieldByName('RemQty03').Value>FieldByName('RemQty04').Value then// @RemQty01>@RemQty02
      begin
        FieldByName('RemQty03T').Value:=FieldByName('RemQty03').Value-FieldByName('RemQty04').Value;
      end else
      begin
        FieldByName('RemQty03T').Value:=0;
      end;
      //T4
      if FieldByName('RemQty04').Value>FieldByName('RemQty05').Value then// @RemQty01>@RemQty02
      begin
        FieldByName('RemQty04T').Value:=FieldByName('RemQty04').Value-FieldByName('RemQty05').Value;
      end else
      begin
        FieldByName('RemQty04T').Value:=0;
      end;
      //T5
      if FieldByName('RemQty05').Value>FieldByName('RemQty06').Value then// @RemQty01>@RemQty02
      begin
        FieldByName('RemQty05T').Value:=FieldByName('RemQty05').Value-FieldByName('RemQty06').Value;
      end else
      begin
        FieldByName('RemQty05T').Value:=0;
      end;
      //--剩餘
      RemQty:=FieldByName('RemQty01').Value;
      if  FieldByName('RemQty01T').Value>RemQty then
      begin
        FieldByName('RemQty01T').Value:=RemQty;
        RemQty:=0;
      end else
      begin
        RemQty:=RemQty-FieldByName('RemQty01T').Value;
      end;
      //T2
      if  FieldByName('RemQty02T').Value>RemQty then
      begin
        FieldByName('RemQty02T').Value:=RemQty;
        RemQty:=0;
      end else
      begin
        RemQty:=RemQty-FieldByName('RemQty02T').Value;
      end;
      //T3
      if  FieldByName('RemQty03T').Value>RemQty then
      begin
        FieldByName('RemQty03T').Value:=RemQty;
        RemQty:=0;
      end else
      begin
        RemQty:=RemQty-FieldByName('RemQty03T').Value;
      end;
      //T4
      if  FieldByName('RemQty04T').Value>RemQty then
      begin
        FieldByName('RemQty04T').Value:=RemQty;
        RemQty:=0;
      end else
      begin
        RemQty:=RemQty-FieldByName('RemQty04T').Value;
      end;
      //T5
      if  FieldByName('RemQty05T').Value>RemQty then
      begin
        FieldByName('RemQty05T').Value:=RemQty;
        RemQty:=0;
      end else
      begin
        RemQty:=RemQty-FieldByName('RemQty05T').Value;
      end;
      //T6
      FieldByName('RemQty06T').Value:=FieldByName('RemQty01').Value-(FieldByName('RemQty01T').Value+FieldByName('RemQty02T').Value+FieldByName('RemQty03T').Value+FieldByName('RemQty04T').Value+FieldByName('RemQty05T').Value);
      Post;
      UpdateSQL1.apply(ukinsert);
      Next;
    end;
    CalQuery.Active:=false;
  end;
  CalDS.DataSet:=CalQuery;
end;
//
Function TAccMonthStock.Check_6TMonth():boolean;
var tmpList:TStringlist;
    HGLBSQL:string;
    i:integer;
begin
  //
  with tmpQry do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Select KCYEAR from CWCLZL_HG_Mon CWCLZL ');
    SQL.add('left join KCZLS on KCZLS.CLBH=CWCLZL.CLBH and KCZLS.CKBH=CWCLZL.CKBH ');
    SQL.add('left join KCCK on KCCK.CKBH=CWCLZL.CKBH ');
    SQL.Add('where  KCYEAR='''+CBX2.Text+''' and KCMONTH='''+CBX3.Text+''' ');
    if CBX1.itemindex<>0 then
    begin
       sql.add(' and CWCLZL.CKBH= '+''''+CBX1.Text+'''');
    end;
    if edit4.Text<> '' then
      sql.add('      and KCZLS.CWBH like '+''''+edit4.Text+'%'+'''');
    if edit1.Text<>'' then
    sql.Add('      and CWCLZL.CLBH like '+''''+edit1.Text+'%'+'''');
    if CBX1.itemindex<>0 then
    begin
       sql.add(' and CWCLZL.CKBH= '+''''+CBX1.Text+'''');
    end;
    //HGLB
    if CBX6.ItemIndex>0 then
    begin
      if Pos('+',CBX6.Text)<0 then
      begin
        sql.add('and CWCLZL.HGLB='''+CBX6.Text+''' ')
      end else
      begin
        tmpList:=TStringlist.Create;
        tmpList:=FuncObj.SplitString(CBX6.Text,'+');
        for i:=0 to tmpList.Count-1 do
        begin
          HGLBSQL:=HGLBSQL+''''+tmpList.Strings[i]+''',';
        end;
        HGLBSQL:='('+Copy(HGLBSQL,1,length(HGLBSQL)-1)+')';
        sql.add('and CWCLZL.HGLB in '+HGLBSQL+' ');
        tmpList.Free;
      end;
    end;
    //GSBH
    if CBX4.itemindex<>0 then
    begin
      sql.add(' and KCCK.GSBH='+''''+CBX4.Text+'''');
    end else
    begin
      sql.add(' and KCCK.GSBH in ( Select GSDH from bgszl where YN=1 and DFL in (select DFL from bgszl where GSDH='''+main.Edit2.Text+''')) ');
    end;
    //funcObj.WriteErrorLog(sql.Text);
    Active:=true;
  end;
  //
  if tmpQry.RecordCount>0 then
    result:=true
  else
    result:=false;
  tmpQry.Active:=false;
  //
end;
//
procedure TAccMonthStock.Button1Click(Sender: TObject);
var iYear,iMonth:array [0..5] of String;
    sYear,sMonth,HGLBSQL:string;
    i:integer;
    tmpList:TStringlist;
    IsRun:boolean;
begin
  iYear[0]:=CBX2.Text;
  iMonth[0]:=CBX3.Text;

  if Check_6TMonth()=false then
  begin
    IsRun:=true;
  end else
  begin
    if messagedlg('Are you sure to calculate it again?',mtCustom, [mbYes,mbNo], 0)=mrYes then
    begin
      IsRun:=true;
    end;
  end;
  //
  if IsRun=true then
  begin
    for i:=1 to 5 do
    begin
      sYear:=iYear[i-1];
      sMonth:=iMonth[i-1];
      if (strtoint(sMonth)-1)<1 then
      begin
        sYear:=Format('%.2d',[strtoint(sYear)-1]);
        sMonth:='12';
      end else
      begin
        sYear:=iYear[i-1];
        sMonth:=Format('%.2d',[strtoint(sMonth)-1]);
      end;
      iYear[i]:=sYear;
      iMonth[i]:=sMonth;
    end;
    //
    with CalQuery do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('   if object_id(''tempdb..#tmpCWCLZLR'') is not null ');
      SQL.Add('   begin   drop table #tmpCWCLZLR end  ');
      SQL.Add('   ');
      SQL.Add('	select CWCLZL01.KCYEAR,CWCLZL01.KCMONTH,CWCLZL01.CKBH,CWCLZL01.HGLB,CWCLZL01.CLBH,CWCLZL01.CWBH,CWCLZL01.RemACC ,IsNull(CWCLZL01.RemQty,0) as RemQty01,IsNull(CWCLZL02.RemQty,0) as RemQty02, IsNull(CWCLZL03.RemQty,0) as RemQty03,');
      SQL.Add('        IsNull(CWCLZL04.RemQty,0) as RemQty04, IsNull(CWCLZL05.RemQty,0) as RemQty05,IsNull(CWCLZL06.RemQty,0) as RemQty06');
      SQL.Add('	       ,convert(money,0.0) as RemQty01T,convert(money,0.0) as RemQty02T,convert(money,0.0) as RemQty03T,convert(money,0.0) as RemQty04T,convert(money,0.0) as RemQty05T,convert(money,0.0) as RemQty06T,'''+main.Edit1.Text+''' as USERID,GetDate() as USERDATE,''1'' as YN');
      SQL.Add('	into #tmpCWCLZLR');
      SQL.Add('	from (');
      SQL.Add('	Select CWCLZL.KCYEAR,CWCLZL.KCMONTH,CWCLZL.CKBH,CWCLZL.CLBH,KCZLS.CWBH,CWCLZL.HGLB,CWCLZL.RemQty');
      SQL.Add('		  ,case when (CWCLCOUNT.VNACC is not null) then CWCLZL.RemACC-CWCLCOUNT.VNACC else CWCLZL.RemACC end [RemACC]');
      SQL.Add('	from CWCLZL_HG CWCLZL');
      SQL.Add('	left join CWCLCOUNT_HG CWCLCOUNT on CWCLCOUNT.KCYEAR=CWCLZL.KCYEAR and CWCLCOUNT.KCMONTH=CWCLZL.KCMONTH ');
      SQL.Add('						 and CWCLCOUNT.CKBH=CWCLZL.CKBH and CWCLCOUNT.HGLB=CWCLZL.HGLB and CWCLCOUNT.CLBH=CWCLZL.CLBH ');
      SQL.add('left join KCZLS on KCZLS.CLBH=CWCLZL.CLBH and KCZLS.CKBH=CWCLZL.CKBH');
      SQL.add('left join KCCK on KCCK.CKBH=CWCLZL.CKBH ');
      SQL.Add('	where CWCLZL.KCYEAR='''+iYear[0]+''' and CWCLZL.KCMONTH='''+iMonth[0]+'''  ');     //and CWCLZL.CKBH=''VA12'' and CWCLZL.CLBH like ''K0200293%''
      if edit4.Text<> '' then
        sql.add('      and KCZLS.CWBH like '+''''+edit4.Text+'%'+'''');
      if edit1.Text<>'' then
      sql.Add('      and CWCLZL.CLBH like '+''''+edit1.Text+'%'+'''');
      if CBX1.itemindex<>0 then
      begin
         sql.add(' and CWCLZL.CKBH= '+''''+CBX1.Text+'''');
      end;
      //HGLB
      if CBX6.ItemIndex>0 then
      begin
        if Pos('+',CBX6.Text)<0 then
        begin
          sql.add('and CWCLZL.HGLB='''+CBX6.Text+''' ')
        end else
        begin
          tmpList:=TStringlist.Create;
          tmpList:=FuncObj.SplitString(CBX6.Text,'+');
          for i:=0 to tmpList.Count-1 do
          begin
            HGLBSQL:=HGLBSQL+''''+tmpList.Strings[i]+''',';
          end;
          HGLBSQL:='('+Copy(HGLBSQL,1,length(HGLBSQL)-1)+')';
          sql.add('and CWCLZL.HGLB in '+HGLBSQL+' ');
          tmpList.Free;
        end;
      end;
      //GSBH
      if CBX4.itemindex<>0 then
      begin
        sql.add(' and KCCK.GSBH='+''''+CBX4.Text+'''');
      end else
      begin
        sql.add(' and KCCK.GSBH in ( Select GSDH from bgszl where YN=1 and DFL in (select DFL from bgszl where GSDH='''+main.Edit2.Text+''')) ');
      end;
      SQL.Add('	) CWCLZL01');
      SQL.Add('');
      SQL.Add('	Left join (');
      SQL.Add('	Select CWCLZL.CKBH,CWCLZL.CLBH,CWCLZL.HGLB,CWCLZL.RemQty');
      SQL.Add('	from CWCLZL_HG CWCLZL');
      SQL.Add('	where CWCLZL.KCYEAR='''+iYear[1]+''' and CWCLZL.KCMONTH='''+iMonth[1]+'''  ');
      SQL.Add('	) CWCLZL02 on CWCLZL02.CKBH=CWCLZL01.CKBH and CWCLZL02.CLBH=CWCLZL01.CLBH and CWCLZL02.HGLB=CWCLZL01.HGLB');
      SQL.Add('');
      SQL.Add('	Left join (');
      SQL.Add('	Select CWCLZL.KCYEAR,CWCLZL.KCMONTH,CWCLZL.CKBH,CWCLZL.CLBH,CWCLZL.HGLB,CWCLZL.RemQty');
      SQL.Add('	from CWCLZL_HG CWCLZL');
      SQL.Add('	where CWCLZL.KCYEAR='''+iYear[2]+''' and CWCLZL.KCMONTH='''+iMonth[2]+'''  ');
      SQL.Add('	) CWCLZL03 on CWCLZL03.CKBH=CWCLZL01.CKBH and CWCLZL03.CLBH=CWCLZL01.CLBH and CWCLZL03.HGLB=CWCLZL01.HGLB ');
      SQL.Add('');
      SQL.Add('	Left join (');
      SQL.Add('	Select CWCLZL.KCYEAR,CWCLZL.KCMONTH,CWCLZL.CKBH,CWCLZL.CLBH,CWCLZL.HGLB,CWCLZL.RemQty');
      SQL.Add('	from CWCLZL_HG CWCLZL');
      SQL.Add('	where CWCLZL.KCYEAR='''+iYear[3]+''' and CWCLZL.KCMONTH='''+iMonth[3]+''' ');
      SQL.Add('	) CWCLZL04 on CWCLZL04.CKBH=CWCLZL01.CKBH and CWCLZL04.CLBH=CWCLZL01.CLBH and CWCLZL04.HGLB=CWCLZL01.HGLB ');
      SQL.Add('	');
      SQL.Add('	Left join (');
      SQL.Add('	Select CWCLZL.KCYEAR,CWCLZL.KCMONTH,CWCLZL.CKBH,CWCLZL.CLBH,CWCLZL.HGLB,CWCLZL.RemQty');
      SQL.Add('	from CWCLZL_HG CWCLZL');
      SQL.Add('	where CWCLZL.KCYEAR='''+iYear[4]+''' and CWCLZL.KCMONTH='''+iMonth[4]+''' ');
      SQL.Add('	) CWCLZL05 on CWCLZL05.CKBH=CWCLZL01.CKBH and CWCLZL05.CLBH=CWCLZL01.CLBH and CWCLZL05.HGLB=CWCLZL01.HGLB ');
      SQL.Add('');
      SQL.Add('	Left join (');
      SQL.Add('	Select CWCLZL.KCYEAR,CWCLZL.KCMONTH,CWCLZL.CKBH,CWCLZL.CLBH,CWCLZL.HGLB,CWCLZL.RemQty');
      SQL.Add('	from CWCLZL_HG CWCLZL');
      SQL.Add('	where CWCLZL.KCYEAR='''+iYear[5]+''' and CWCLZL.KCMONTH='''+iMonth[5]+''' ');
      SQL.Add('	) CWCLZL06 on CWCLZL06.CKBH=CWCLZL01.CKBH and CWCLZL06.CLBH=CWCLZL01.CLBH and CWCLZL06.HGLB=CWCLZL01.HGLB ');
      SQL.Add('		');
      //
      SQL.Add('Select * from #tmpCWCLZLR ');
      //FuncObj.WriteErrorLog(SQL.Text);
      Active:=true;
    end;
    Calcuate_6TMonth();
    Showmessage('Finish');
  end;

end;
//庫齡分析
procedure TAccMonthStock.Stock6TMonth();
var tmpList:TStringlist;
    HGLBSQL:string;
    i:integer;
begin
  with Stock6TQry do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Select * from ( ');
    SQL.Add('    select CWCLZL.KCYEAR,CWCLZL.KCMONTH,''ALL'' as CKBH,''ALL''  as CLBH,''ALL''  as HGLB,Sum(CWCLZL_HG.RemQty) as RemQty,Sum(CWCLZL.RemACC) as RemACC ');
    SQL.Add('           ,Sum(RemQty01T) as RemQty01T,Sum(RemQty02T) as RemQty02T,Sum(RemQty03T) as RemQty03T,Sum(RemQty04T) as RemQty04T,Sum(RemQty05T) as RemQty05T,Sum(RemQty06T) as RemQty06T ');
    SQL.Add('           ,sum(case when CWCLZL.RemACC>0 then Round(CWCLZL.RemQty01T*((CWCLZL.RemACC/CWCLZL.RemQty01/'+ExchangeEdit.Text+'.0)),2) else 0 end)  as RemAcc01T ');
    SQL.Add('           ,sum(case when CWCLZL.RemACC>0 then Round(CWCLZL.RemQty02T*((CWCLZL.RemACC/CWCLZL.RemQty01/'+ExchangeEdit.Text+'.0)),2) else 0 end)  as RemAcc02T ');
    SQL.Add('           ,sum(case when CWCLZL.RemACC>0 then Round(CWCLZL.RemQty03T*((CWCLZL.RemACC/CWCLZL.RemQty01/'+ExchangeEdit.Text+'.0)),2) else 0 end)  as RemAcc03T ');
    SQL.Add('           ,sum(case when CWCLZL.RemACC>0 then Round(CWCLZL.RemQty04T*((CWCLZL.RemACC/CWCLZL.RemQty01/'+ExchangeEdit.Text+'.0)),2) else 0 end)  as RemAcc04T ');
    SQL.Add('           ,sum(case when CWCLZL.RemACC>0 then Round(CWCLZL.RemQty05T*((CWCLZL.RemACC/CWCLZL.RemQty01/'+ExchangeEdit.Text+'.0)),2) else 0 end)  as RemAcc05T ');
    SQL.Add('           ,sum(case when CWCLZL.RemACC>0 then Round(CWCLZL.RemQty06T*((CWCLZL.RemACC/CWCLZL.RemQty01/'+ExchangeEdit.Text+'.0)),2) else 0 end)  as RemAcc06T ');
    SQL.Add('    from CWCLZL_HG_Mon CWCLZL ');
    SQL.Add('    left join CWCLZL_HG on CWCLZL.KCYEAR=CWCLZL_HG.KCYEAR and CWCLZL.KCMONTH=CWCLZL_HG.KCMONTH and CWCLZL.CKBH=CWCLZL_HG.CKBH and CWCLZL.CLBH=CWCLZL_HG.CLBH and CWCLZL.HGLB=CWCLZL_HG.HGLB  ');
    SQL.add('    left join KCZLS on KCZLS.CLBH=CWCLZL.CLBH and KCZLS.CKBH=CWCLZL.CKBH ');
    SQL.add('    left join KCCK on KCCK.CKBH=CWCLZL.CKBH ');
    SQL.Add('    where 1=1 ');
    if CBX1.itemindex<>0 then
    begin
       sql.add(' and CWCLZL.CKBH= '+''''+CBX1.Text+'''');
    end;
    if edit4.Text<> '' then
      sql.add('      and KCZLS.CWBH like '+''''+edit4.Text+'%'+'''');
    if edit1.Text<>'' then
    sql.Add('      and CWCLZL.CLBH like '+''''+edit1.Text+'%'+'''');
    if CBX1.itemindex<>0 then
    begin
       sql.add(' and CWCLZL.CKBH= '+''''+CBX1.Text+'''');
    end;
    //HGLB
    if CBX6.ItemIndex>0 then
    begin
      if Pos('+',CBX6.Text)<0 then
      begin
        sql.add('and CWCLZL.HGLB='''+CBX6.Text+''' ')
      end else
      begin
        tmpList:=TStringlist.Create;
        tmpList:=FuncObj.SplitString(CBX6.Text,'+');
        for i:=0 to tmpList.Count-1 do
        begin
          HGLBSQL:=HGLBSQL+''''+tmpList.Strings[i]+''',';
        end;
        HGLBSQL:='('+Copy(HGLBSQL,1,length(HGLBSQL)-1)+')';
        sql.add('and CWCLZL.HGLB in '+HGLBSQL+' ');
        tmpList.Free;
      end;
    end;
    //GSBH
    if CBX4.itemindex<>0 then
    begin
      sql.add(' and KCCK.GSBH='+''''+CBX4.Text+'''');
    end else
    begin
      sql.add(' and KCCK.GSBH in ( Select GSDH from bgszl where YN=1 and DFL in (select DFL from bgszl where GSDH='''+main.Edit2.Text+''')) ');
    end;
    SQL.Add('    Group by CWCLZL.KCYEAR,CWCLZL.KCMONTH');
    //明細
    if CheckBox1.Checked=true then
    begin
      SQL.Add('    union all ');
      SQL.Add('    select CWCLZL.KCYEAR,CWCLZL.KCMONTH,CWCLZL.CKBH,CWCLZL.CLBH,CWCLZL.HGLB,CWCLZL_HG.RemQty,CWCLZL.RemACC ');
      SQL.Add('           ,CWCLZL.RemQty01T,CWCLZL.RemQty02T,CWCLZL.RemQty03T,CWCLZL.RemQty04T,CWCLZL.RemQty05T,CWCLZL.RemQty06T ');
      SQL.Add('           ,case when CWCLZL.RemACC>0 then Round(RemQty01T*((CWCLZL.RemACC/CWCLZL.RemQty01/'+ExchangeEdit.Text+'.0)),2) else 0 end  as RemAcc01T ');
      SQL.Add('           ,case when CWCLZL.RemACC>0 then Round(RemQty02T*((CWCLZL.RemACC/CWCLZL.RemQty01/'+ExchangeEdit.Text+'.0)),2) else 0 end  as RemAcc02T ');
      SQL.Add('           ,case when CWCLZL.RemACC>0 then Round(RemQty03T*((CWCLZL.RemACC/CWCLZL.RemQty01/'+ExchangeEdit.Text+'.0)),2) else 0 end  as RemAcc03T ');
      SQL.Add('           ,case when CWCLZL.RemACC>0 then Round(RemQty04T*((CWCLZL.RemACC/CWCLZL.RemQty01/'+ExchangeEdit.Text+'.0)),2) else 0 end  as RemAcc04T ');
      SQL.Add('           ,case when CWCLZL.RemACC>0 then Round(RemQty05T*((CWCLZL.RemACC/CWCLZL.RemQty01/'+ExchangeEdit.Text+'.0)),2) else 0 end  as RemAcc05T ');
      SQL.Add('           ,case when CWCLZL.RemACC>0 then Round(RemQty06T*((CWCLZL.RemACC/CWCLZL.RemQty01/'+ExchangeEdit.Text+'.0)),2) else 0 end  as RemAcc06T  ');
      SQL.Add('    from CWCLZL_HG_Mon CWCLZL');
      SQL.Add('    left join CWCLZL_HG on CWCLZL.KCYEAR=CWCLZL_HG.KCYEAR and CWCLZL.KCMONTH=CWCLZL_HG.KCMONTH and CWCLZL.CKBH=CWCLZL_HG.CKBH and CWCLZL.CLBH=CWCLZL_HG.CLBH and CWCLZL.HGLB=CWCLZL_HG.HGLB  ');
      SQL.add('    left join KCZLS on KCZLS.CLBH=CWCLZL.CLBH and KCZLS.CKBH=CWCLZL.CKBH ');
      SQL.add('    left join KCCK on KCCK.CKBH=CWCLZL.CKBH ');
      SQL.Add('    where 1=1 ');
      if CBX1.itemindex<>0 then
      begin
         sql.add(' and CWCLZL.CKBH= '+''''+CBX1.Text+'''');
      end;
      if edit4.Text<> '' then
        sql.add('      and KCZLS.CWBH like '+''''+edit4.Text+'%'+'''');
      if edit1.Text<>'' then
      sql.Add('      and CWCLZL.CLBH like '+''''+edit1.Text+'%'+'''');
      if CBX1.itemindex<>0 then
      begin
         sql.add(' and CWCLZL.CKBH= '+''''+CBX1.Text+'''');
      end;
      //HGLB
      if CBX6.ItemIndex>0 then
      begin
        if Pos('+',CBX6.Text)<0 then
        begin
          sql.add('and CWCLZL.HGLB='''+CBX6.Text+''' ')
        end else
        begin
          HGLBSQL:='';
          tmpList:=TStringlist.Create;
          tmpList:=FuncObj.SplitString(CBX6.Text,'+');
          for i:=0 to tmpList.Count-1 do
          begin
            HGLBSQL:=HGLBSQL+''''+tmpList.Strings[i]+''',';
          end;
          HGLBSQL:='('+Copy(HGLBSQL,1,length(HGLBSQL)-1)+')';
          sql.add('and CWCLZL.HGLB in '+HGLBSQL+' ');
          tmpList.Free;
        end;
      end;
      //GSBH
      if CBX4.itemindex<>0 then
      begin
        sql.add(' and KCCK.GSBH='+''''+CBX4.Text+'''');
      end else
      begin
        sql.add(' and KCCK.GSBH in ( Select GSDH from bgszl where YN=1 and DFL in (select DFL from bgszl where GSDH='''+main.Edit2.Text+''')) ');
      end;
    end;
    SQL.Add('    )  CWCLZL  ');
    //funcObj.WriteErrorLog(sql.Text);
    Active:=true;
  end;
  if CheckBox1.Checked=true then
  begin
    for i:=5 to 12 do
      DBGridEh2.Columns[i].Visible:=true;
  end else
  begin
    for i:=5 to 12 do
      DBGridEh2.Columns[i].Visible:=false;
  end;
end;
//庫存呆滯分類
procedure TAccMonthStock.StockClass();
var tmpList:TStringlist;
    HGLBSQL:string;
    i:integer;
begin
  with StockClassQry do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Select CWCLZL.KCYEAR,CWCLZL.KCMONTH  ');
    SQL.Add('      ,sum(RemAcc04T+RemAcc05T+RemAcc06T) as ''class0''');
    SQL.Add('      ,sum(case when left(CWCLZL.CLBH,3)=''K02''  then RemAcc04T+RemAcc05T+RemAcc06T end) as ''Class1''');
    SQL.Add('      ,sum(case when left(CWCLZL.CLBH,3)=''F16''  then RemAcc04T+RemAcc05T+RemAcc06T end) as ''Class2''');
    SQL.Add('      ,sum(case when left(CWCLZL.CLBH,1)=''A''  then RemAcc04T+RemAcc05T+RemAcc06T end) as ''Class3''');
    SQL.Add('      ,sum(case when left(CWCLZL.CLBH,3)=''P99''  then RemAcc04T+RemAcc05T+RemAcc06T end) as ''Class4''      ');
    SQL.Add('      ,sum(case when left(CWCLZL.CLBH,3)=''E06''  then RemAcc04T+RemAcc05T+RemAcc06T end) as ''Class5'' ');
    SQL.Add('      ,sum(case when left(CWCLZL.CLBH,3)=''G03''  then RemAcc04T+RemAcc05T+RemAcc06T end) as ''Class6'' ');
    SQL.Add('      ,sum(case when left(CWCLZL.CLBH,3)=''G07''  then RemAcc04T+RemAcc05T+RemAcc06T end) as ''Class7'' ');
    SQL.Add('      ,sum(case when left(CWCLZL.CLBH,1)=''M''  then RemAcc04T+RemAcc05T+RemAcc06T end) as ''Class8''');
    SQL.Add('      ,sum(case when left(CWCLZL.CLBH,3)=''E01'' or left(CWCLZL.CLBH,3)=''E02''   then RemAcc04T+RemAcc05T+RemAcc06T end) as ''Class9''');
    SQL.Add('      ,sum(case when left(CWCLZL.CLBH,3)=''K01''   then RemAcc04T+RemAcc05T+RemAcc06T end) as ''Class10''');
    SQL.Add('      ,sum(case when left(CWCLZL.CLBH,3)=''K03''   then RemAcc04T+RemAcc05T+RemAcc06T end) as ''Class11''');
    SQL.Add('      ,sum(case when left(CWCLZL.CLBH,3)=''J02'' or left(CWCLZL.CLBH,3)=''J03''   then RemAcc04T+RemAcc05T+RemAcc06T end) as ''Class12''');
    SQL.Add('      ,sum(case when left(CWCLZL.CLBH,3) not in (''K02'',''F16'',''P99'',''E06'',''G03'',''G07'',''E01'',''E02'',''K01'',''K03'',''J02'',''J03'') and left(CWCLZL.CLBH,1) not in (''A'',''M'') then RemAcc04T+RemAcc05T+RemAcc06T end) as ''Class13''');
    SQL.Add('from ( ');
    SQL.Add('    select CWCLZL.KCYEAR,CWCLZL.KCMONTH,CWCLZL.CKBH,CWCLZL.CLBH,CWCLZL.HGLB,CWCLZL_HG.RemQty,CWCLZL.RemACC ');
    SQL.Add('           ,CWCLZL.RemQty01T,CWCLZL.RemQty02T,CWCLZL.RemQty03T,CWCLZL.RemQty04T,CWCLZL.RemQty05T,CWCLZL.RemQty06T ');
    SQL.Add('           ,case when CWCLZL.RemACC>0 then Round(RemQty01T*((CWCLZL.RemACC/CWCLZL.RemQty01/'+ExchangeEdit.Text+'.0)),2) else 0 end  as RemAcc01T ');
    SQL.Add('           ,case when CWCLZL.RemACC>0 then Round(RemQty02T*((CWCLZL.RemACC/CWCLZL.RemQty01/'+ExchangeEdit.Text+'.0)),2) else 0 end  as RemAcc02T ');
    SQL.Add('           ,case when CWCLZL.RemACC>0 then Round(RemQty03T*((CWCLZL.RemACC/CWCLZL.RemQty01/'+ExchangeEdit.Text+'.0)),2) else 0 end  as RemAcc03T ');
    SQL.Add('           ,case when CWCLZL.RemACC>0 then Round(RemQty04T*((CWCLZL.RemACC/CWCLZL.RemQty01/'+ExchangeEdit.Text+'.0)),2) else 0 end  as RemAcc04T ');
    SQL.Add('           ,case when CWCLZL.RemACC>0 then Round(RemQty05T*((CWCLZL.RemACC/CWCLZL.RemQty01/'+ExchangeEdit.Text+'.0)),2) else 0 end  as RemAcc05T ');
    SQL.Add('           ,case when CWCLZL.RemACC>0 then Round(RemQty06T*((CWCLZL.RemACC/CWCLZL.RemQty01/'+ExchangeEdit.Text+'.0)),2) else 0 end  as RemAcc06T  ');
    SQL.Add('    from CWCLZL_HG_Mon CWCLZL');
    SQL.Add('    left join CWCLZL_HG on CWCLZL.KCYEAR=CWCLZL_HG.KCYEAR and CWCLZL.KCMONTH=CWCLZL_HG.KCMONTH and CWCLZL.CKBH=CWCLZL_HG.CKBH and CWCLZL.CLBH=CWCLZL_HG.CLBH and CWCLZL.HGLB=CWCLZL_HG.HGLB  ');
    SQL.add('    left join KCZLS on KCZLS.CLBH=CWCLZL.CLBH and KCZLS.CKBH=CWCLZL.CKBH ');
    SQL.add('    left join KCCK on KCCK.CKBH=CWCLZL.CKBH ');
    SQL.Add('    where 1=1 ');
    if CBX1.itemindex<>0 then
    begin
       sql.add(' and CWCLZL.CKBH= '+''''+CBX1.Text+'''');
    end;
    if edit4.Text<> '' then
      sql.add('      and KCZLS.CWBH like '+''''+edit4.Text+'%'+'''');
    if edit1.Text<>'' then
    sql.Add('      and CWCLZL.CLBH like '+''''+edit1.Text+'%'+'''');
    if CBX1.itemindex<>0 then
    begin
       sql.add(' and CWCLZL.CKBH= '+''''+CBX1.Text+'''');
    end;
    //HGLB
    if CBX6.ItemIndex>0 then
    begin
      if Pos('+',CBX6.Text)<0 then
      begin
        sql.add('and CWCLZL.HGLB='''+CBX6.Text+''' ')
      end else
      begin
        HGLBSQL:='';
        tmpList:=TStringlist.Create;
        tmpList:=FuncObj.SplitString(CBX6.Text,'+');
        for i:=0 to tmpList.Count-1 do
        begin
          HGLBSQL:=HGLBSQL+''''+tmpList.Strings[i]+''',';
        end;
        HGLBSQL:='('+Copy(HGLBSQL,1,length(HGLBSQL)-1)+')';
        sql.add('and CWCLZL.HGLB in '+HGLBSQL+' ');
        tmpList.Free;
      end;
    end;
    //GSBH
    if CBX4.itemindex<>0 then
    begin
      sql.add(' and KCCK.GSBH='+''''+CBX4.Text+'''');
    end else
    begin
      sql.add(' and KCCK.GSBH in ( Select GSDH from bgszl where YN=1 and DFL in (select DFL from bgszl where GSDH='''+main.Edit2.Text+''')) ');
    end;
    SQL.Add('    )  CWCLZL  ');
    SQL.Add('Group by CWCLZL.KCYEAR,CWCLZL.KCMONTH ');
    //funcObj.WriteErrorLog(sql.Text);
    Active:=true;
  end;
end;
//庫存ABD分類
procedure TAccMonthStock.StockABD();
var tmpList:TStringlist;
    HGLBSQL:string;
    i:integer;
begin
  //
  with StockABDQry do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('   if object_id(''tempdb..#tmpStockABD'') is not null ');
    SQL.Add('   begin   drop table #tmpStockABD end  ');
    SQL.Add(' Select * into #tmpStockABD from (');
    SQL.Add('    select CWCLZL.KCYEAR,CWCLZL.KCMONTH,CWCLZL.CKBH,CWCLZL.CLBH,CWCLZL.HGLB,CWCLZL_HG.RemQty,CWCLZL.RemACC ');
    SQL.Add('           ,CWCLZL.RemQty01T,CWCLZL.RemQty02T,CWCLZL.RemQty03T,CWCLZL.RemQty04T,CWCLZL.RemQty05T,CWCLZL.RemQty06T ');
    SQL.Add('           ,case when CWCLZL.RemACC>0 then Round(RemQty01T*((CWCLZL.RemACC/CWCLZL.RemQty01/'+ExchangeEdit.Text+'.0)),2) else 0 end  as RemAcc01T ');
    SQL.Add('           ,case when CWCLZL.RemACC>0 then Round(RemQty02T*((CWCLZL.RemACC/CWCLZL.RemQty01/'+ExchangeEdit.Text+'.0)),2) else 0 end  as RemAcc02T ');
    SQL.Add('           ,case when CWCLZL.RemACC>0 then Round(RemQty03T*((CWCLZL.RemACC/CWCLZL.RemQty01/'+ExchangeEdit.Text+'.0)),2) else 0 end  as RemAcc03T ');
    SQL.Add('           ,case when CWCLZL.RemACC>0 then Round(RemQty04T*((CWCLZL.RemACC/CWCLZL.RemQty01/'+ExchangeEdit.Text+'.0)),2) else 0 end  as RemAcc04T ');
    SQL.Add('           ,case when CWCLZL.RemACC>0 then Round(RemQty05T*((CWCLZL.RemACC/CWCLZL.RemQty01/'+ExchangeEdit.Text+'.0)),2) else 0 end  as RemAcc05T ');
    SQL.Add('           ,case when CWCLZL.RemACC>0 then Round(RemQty06T*((CWCLZL.RemACC/CWCLZL.RemQty01/'+ExchangeEdit.Text+'.0)),2) else 0 end  as RemAcc06T  ');
    SQL.Add('    from CWCLZL_HG_Mon CWCLZL');
    SQL.Add('    left join CWCLZL_HG on CWCLZL.KCYEAR=CWCLZL_HG.KCYEAR and CWCLZL.KCMONTH=CWCLZL_HG.KCMONTH and CWCLZL.CKBH=CWCLZL_HG.CKBH and CWCLZL.CLBH=CWCLZL_HG.CLBH and CWCLZL.HGLB=CWCLZL_HG.HGLB  ');
    SQL.add('    left join KCZLS on KCZLS.CLBH=CWCLZL.CLBH and KCZLS.CKBH=CWCLZL.CKBH ');
    SQL.add('    left join KCCK on KCCK.CKBH=CWCLZL.CKBH ');
    SQL.Add('    where 1=1 ');
    if CBX1.itemindex<>0 then
    begin
       sql.add(' and CWCLZL.CKBH= '+''''+CBX1.Text+'''');
    end;
    if edit4.Text<> '' then
      sql.add('      and KCZLS.CWBH like '+''''+edit4.Text+'%'+'''');
    if edit1.Text<>'' then
    sql.Add('      and CWCLZL.CLBH like '+''''+edit1.Text+'%'+'''');
    if CBX1.itemindex<>0 then
    begin
       sql.add(' and CWCLZL.CKBH= '+''''+CBX1.Text+'''');
    end;
    //HGLB
    if CBX6.ItemIndex>0 then
    begin
      if Pos('+',CBX6.Text)<0 then
      begin
        sql.add('and CWCLZL.HGLB='''+CBX6.Text+''' ')
      end else
      begin
        HGLBSQL:='';
        tmpList:=TStringlist.Create;
        tmpList:=FuncObj.SplitString(CBX6.Text,'+');
        for i:=0 to tmpList.Count-1 do
        begin
          HGLBSQL:=HGLBSQL+''''+tmpList.Strings[i]+''',';
        end;
        HGLBSQL:='('+Copy(HGLBSQL,1,length(HGLBSQL)-1)+')';
        sql.add('and CWCLZL.HGLB in '+HGLBSQL+' ');
        tmpList.Free;
      end;
    end;
    //GSBH
    if CBX4.itemindex<>0 then
    begin
      sql.add(' and KCCK.GSBH='+''''+CBX4.Text+'''');
    end else
    begin
      sql.add(' and KCCK.GSBH in ( Select GSDH from bgszl where YN=1 and DFL in (select DFL from bgszl where GSDH='''+main.Edit2.Text+''')) ');
    end;
    SQL.Add('    )  CWCLZL  ');
    //
    SQL.Add('Select KCYEAR,KCMONTH,''A'' as LB ');
    SQl.Add('      ,sum(RemAcc01T+RemAcc02T+RemAcc03T+RemAcc04T+RemAcc05T+RemAcc06T) as ''classABD'' ');
    SQL.Add('from  #tmpStockABD ');
    SQL.Add('where CLBH  in (');
    SQL.Add('  select CLBH ');
    SQL.Add('  from zlzls2');
    SQL.Add('  left join DDZL on DDZL.DDBH=zlzls2.ZLBH');
    SQL.Add('  where DDZL.ShipDate>GETDATE()-60 and DDZL.YN=1 and DDZL.DDZT<>''C'' and DDZL.DDLB=''N'' ');
    SQL.Add('  Group by CLBH )');
    SQL.Add('Group by KCYEAR,KCMONTH');
    SQL.Add('Union all ');
    SQL.Add('Select KCYEAR,KCMONTH,''B'' as LB ');
    SQl.Add('      ,sum(RemAcc01T+RemAcc02T+RemAcc03T) as ''classABD'' ');
    SQL.Add('from  #tmpStockABD ');
    SQL.Add('where CLBH  not in (');
    SQL.Add('  select CLBH ');
    SQL.Add('  from zlzls2');
    SQL.Add('  left join DDZL on DDZL.DDBH=zlzls2.ZLBH');
    SQL.Add('  where DDZL.ShipDate>GETDATE()-60 and DDZL.YN=1 and DDZL.DDZT<>''C'' and DDZL.DDLB=''N'' ');
    SQL.Add('  Group by CLBH )');
    SQL.Add('Group by KCYEAR,KCMONTH');
    SQL.Add('Union all ');
    SQL.Add('Select KCYEAR,KCMONTH,''C'' as LB ');
    SQl.Add('      ,sum(RemAcc04T+RemAcc05T+RemAcc06T) as ''classABD'' ');
    SQL.Add('from  #tmpStockABD ');
    SQL.Add('where CLBH  not in (');
    SQL.Add('  select CLBH ');
    SQL.Add('  from zlzls2');
    SQL.Add('  left join DDZL on DDZL.DDBH=zlzls2.ZLBH');
    SQL.Add('  where DDZL.ShipDate>GETDATE()-60 and DDZL.YN=1 and DDZL.DDZT<>''C'' and DDZL.DDLB=''N'' ');
    SQL.Add('  Group by CLBH )');
    SQL.Add('Group by KCYEAR,KCMONTH');
    //funcObj.WriteErrorLog(sql.Text);
    Active:=true;
  end;
  //
end;
//顯示表格6T CWCLZL_HG_Mon
procedure TAccMonthStock.CWCLZL_HG_Mon();
var  tmpList:TStringlist;
     HGLBSQL:String;
     i:integer;
begin
 //
  with CalQuery do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select CWCLZL.*,KCZLS.CWBH ');
    SQL.Add('from CWCLZL_HG_Mon CWCLZL ');
    SQL.Add('Left join KCZLS on KCZLS.CLBH=CWCLZL.CLBH and KCZLS.CKBH=CWCLZL.CKBH ');
    SQL.add('left join KCCK on KCCK.CKBH=CWCLZL.CKBH ');
    SQL.Add('where CWCLZL.KCYEAR='''+CBX2.Text+''' and CWCLZL.KCMONTH='''+CBX3.Text+'''  ');
    if edit4.Text<> '' then
      sql.add('      and KCZLS.CWBH like '+''''+edit4.Text+'%'+'''');
    if edit1.Text<>'' then
    sql.Add('      and CWCLZL.CLBH like '+''''+edit1.Text+'%'+'''');
    if CBX1.itemindex<>0 then
    begin
       sql.add(' and CWCLZL.CKBH= '+''''+CBX1.Text+'''');
    end;
    //HGLB
    if CBX6.ItemIndex>0 then
    begin
      if Pos('+',CBX6.Text)<0 then
      begin
        sql.add('and CWCLZL.HGLB='''+CBX6.Text+''' ')
      end else
      begin
        tmpList:=TStringlist.Create;
        tmpList:=FuncObj.SplitString(CBX6.Text,'+');
        for i:=0 to tmpList.Count-1 do
        begin
          HGLBSQL:=HGLBSQL+''''+tmpList.Strings[i]+''',';
        end;
        HGLBSQL:='('+Copy(HGLBSQL,1,length(HGLBSQL)-1)+')';
        sql.add('and CWCLZL.HGLB in '+HGLBSQL+' ');
        tmpList.Free;
      end;
    end;
    //GSBH
    if CBX4.itemindex<>0 then
    begin
      sql.add(' and KCCK.GSBH='+''''+CBX4.Text+'''');
    end else
    begin
      sql.add(' and KCCK.GSBH in ( Select GSDH from bgszl where YN=1 and DFL in (select DFL from bgszl where GSDH='''+main.Edit2.Text+''')) ');
    end;
    //funcObj.WriteErrorLog(SQL.Text);
    Active:=true;
  end;
end;

procedure TAccMonthStock.ExportExcel(Query:TQuery);
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin

  if Query.Active then
  begin
    if Query.recordcount=0 then
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
    for   i:=1   to   Query.fieldcount   do
      begin
        eclApp.Cells(1,i+1):=Query.fields[i-1].FieldName;
      end;
    Query.First;
    j:=2;
    while   not  Query.Eof   do
      begin
        eclApp.Cells(j,1):=j-1;
        for   i:=1   to   Query.fieldcount   do
        begin
            eclApp.Cells(j,i+1):=Query.Fields[i-1].Value;
            eclApp.Cells.Cells.item[j,i+1].font.size:='12';
        end;
        Query.Next;
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
//
procedure TAccMonthStock.Button3Click(Sender: TObject);
begin
  if PC1.ActivePageIndex=0 then  Stock6TMonth();
  if PC1.ActivePageIndex=1 then  StockClass();
  if PC1.ActivePageIndex=2 then  StockABD();
  if PC1.ActivePageIndex=3 then  CWCLZL_HG_Mon();
end;

procedure TAccMonthStock.ExportExcel_Stock6T();
var eclApp,WorkBook:olevariant;
    i,j:integer;
    TotalACC,AccPer:double;
begin

  if Stock6TQry.Active then
  begin
    if Stock6TQry.recordcount=0 then
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
    TotalACC:=Stock6TQry.Fields[13].Value+Stock6TQry.Fields[14].Value+Stock6TQry.Fields[15].Value+Stock6TQry.Fields[16].Value+Stock6TQry.Fields[17].Value+Stock6TQry.Fields[18].Value;
    eclApp.Cells(1,1):=Stock6TQry.Fields[0].Value;
    eclApp.Cells(1,2):=Stock6TQry.Fields[1].Value;
    //T1
    eclApp.Cells(1,3):=Stock6TQry.Fields[13].Value;
    AccPer:=(Stock6TQry.Fields[13].Value/TotalACC)*100;
    eclApp.Cells(1,4):=Format('%.2f',[AccPer]);
    //T2
    eclApp.Cells(1,5):=Stock6TQry.Fields[14].Value;
    AccPer:=(Stock6TQry.Fields[14].Value/TotalACC)*100;
    eclApp.Cells(1,6):=Format('%.2f',[AccPer]);
    //T3
    eclApp.Cells(1,7):=Stock6TQry.Fields[15].Value;
    AccPer:=(Stock6TQry.Fields[15].Value/TotalACC)*100;
    eclApp.Cells(1,8):=Format('%.2f',[AccPer]);
    //T4
    eclApp.Cells(1,9):=Stock6TQry.Fields[16].Value;
    AccPer:=(Stock6TQry.Fields[16].Value/TotalACC)*100;
    eclApp.Cells(1,10):=Format('%.2f',[AccPer]);
    //T5
    eclApp.Cells(1,11):=Stock6TQry.Fields[17].Value;
    AccPer:=(Stock6TQry.Fields[17].Value/TotalACC)*100;
    eclApp.Cells(1,12):=Format('%.2f',[AccPer]);
    //T6
    eclApp.Cells(1,13):=Stock6TQry.Fields[18].Value;
    AccPer:=(Stock6TQry.Fields[18].Value/TotalACC)*100;
    eclApp.Cells(1,14):=Format('%.2f',[AccPer]);
    //
    eclApp.Cells(1,15):=Stock6TQry.Fields[13].Value+Stock6TQry.Fields[14].Value+Stock6TQry.Fields[15].Value+Stock6TQry.Fields[16].Value+Stock6TQry.Fields[17].Value+Stock6TQry.Fields[18].Value;
    AccPer:=(TotalACC/TotalACC)*100;
    eclApp.Cells(1,16):=Format('%.2f',[AccPer]);
    //
    eclapp.columns.autofit;
    showmessage('Succeed.');
    eclApp.Visible:=True;
  except
    on   F:Exception   do
      showmessage(F.Message);
  end;

end;
//
procedure TAccMonthStock.ExportExcel_Default(Query:TQuery);
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin

  if Query.Active then
  begin
    if Query.recordcount=0 then
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
    for   i:=1   to   Query.fieldcount   do
    begin
      eclApp.Cells(1,i+1):=Query.fields[i-1].FieldName;
    end;
  Query.First;
  j:=2;
  while   not  Query.Eof   do
  begin
      eclApp.Cells(j,1):=j-1;
      for   i:=1   to   Query.fieldcount   do
      begin
          eclApp.Cells(j,i+1):=Query.Fields[i-1].Value;
          eclApp.Cells.Cells.item[j,i+1].font.size:='8';
      end;
      Query.Next;
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

procedure TAccMonthStock.Button2Click(Sender: TObject);
begin

 if PC1.ActivePageIndex=0 then  ExportExcel_Stock6T();
 if PC1.ActivePageIndex=1 then  ExportExcel_Default(StockClassQry);
 if PC1.ActivePageIndex=2 then  ExportExcel_Default(StockABDQry);
 if PC1.ActivePageIndex=3 then  ExportExcel_Default(CalQuery);

end;

end.
