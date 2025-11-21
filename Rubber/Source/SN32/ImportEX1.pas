unit ImportEX1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ExtCtrls;

type
  TImportEX = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Button1: TButton;
    txtJGNO: TEdit;
    JGNO: TQuery;
    DS1: TDataSource;
    Label2: TLabel;
    Edit1: TEdit;
    Button2: TButton;
    Label3: TLabel;
    Edit2: TEdit;
    JGNOJGNO: TStringField;
    JGNOCLBH: TStringField;
    JGNOZMLB: TStringField;
    JGNOQty: TCurrencyField;
    JGNOYQDate: TDateTimeField;
    JGNOYQDate1: TStringField;
    JGNOzwpm: TStringField;
    JGNOywpm: TStringField;
    JGNOQty1: TCurrencyField;
    DBGridEh1: TDBGridEh;
    JGNOZLBH: TStringField;
    Count: TEdit;
    tmp: TQuery;
    XXZLS1: TQuery;
    cb1: TComboBox;
    Button3: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure JGNOAfterOpen(DataSet: TDataSet);
    procedure Button3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ImportEX: TImportEX;

implementation

uses DD_XXZL1, main1,OrderRubber1,fununit;

{$R *.dfm}

procedure TImportEX.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TImportEX.FormDestroy(Sender: TObject);
begin
  ImportEX:=nil;
end;

procedure TImportEX.Button1Click(Sender: TObject);
begin
  if txtJGNO.Text='' then
  begin
    showmessage(' Pls input JGNO or CGNO!');
    abort;
  end;
  with JGNO do
  begin
    active:=false;
    sql.Clear;
    if CB1.Text='JG' then
    begin
      sql.Add('SELECT JGZLS.* ,convert(Varchar(8),JGZLS.YQDate,112) AS YQDate1 ,clzl.zwpm ,clzl.ywpm,JGZLSS.ZLBH,JGZLSS.Qty  as Qty1');
      sql.Add('FROM JGZLS JGZLS');
      sql.Add('Left join JGZLSS on JGZLS.JGNO=JGZLSS.JGNO and JGZLSS.CLBH=JGZLS.CLBH');
      sql.Add('LEFT JOIN clzl clzl ON JGZLS.CLBH = clzl.cldh');
      sql.Add('where (JGZLS.JGNO= '''+txtJGNO.Text+''' AND JGZLS.ZMLB=''ZZZZZZZZZZ'')');
    end else
    begin
      sql.Add('select CGZLS.CGNO as JGNO,CGZLS.CLBH,''ZZZZZZZZZZ'' as ZMLB,CGZLS.Qty,CGZLS.YQDate,convert(Varchar(8),CGZLS.YQDate,112) AS YQDate1 ,clzl.zwpm ,clzl.ywpm,CGZLSs.ZLBH,CGZLSs.Qty as Qty1');
      sql.Add('FROM CGZLS CGZLS');
      sql.Add('Left join CGZLSs on CGZLS.CGNO=CGZLSs.CGNO and CGZLSs.CLBH=CGZLS.CLBH');
      sql.Add('LEFT JOIN clzl clzl ON CGZLS.CLBH = clzl.cldh');
      sql.Add('where CGZLS.CGNO= '''+txtJGNO.Text+'''');
    end;
    active:=true;
  end;
  if JGNO.RecordCount>0 then
  begin
    button3.Visible:=true;
  end else
  begin
    button3.Visible:=false;
  end;
end;

procedure TImportEX.Button2Click(Sender: TObject);
begin
  DD_XXZL:=TDD_XXZL.Create(self);
  DD_XXZL.Show();

end;
procedure TImportEX.JGNOAfterOpen(DataSet: TDataSet);
begin
  with tmp do
  begin
    active:=false;
    sql.Clear;
    if CB1.Text='JG' then
    begin
      sql.Add('select count(*) as count from JGZLSS' );
      sql.Add('where JGZLSS.JGNO='''+txtJGNO.Text+'''');
    end else
    begin
      sql.Add('select count(*) as count from CGZLSS' );
      sql.Add('where CGZLSS.CGNO='''+txtJGNO.Text+'''');
    end;
    active:=true;
  end;
   count.Text:=tmp.fieldbyname('count').Value;
end;

procedure TImportEX.Button3Click(Sender: TObject);
//20190416
function str_replace(const oldChars, newChars: array of Char; const str: string): string;
var
  i, j: Integer;
begin
  Assert(Length(oldChars)=Length(newChars));
  Result := str;
  for i := 1 to Length(Result) do
    for j := 0 to high(oldChars) do
      if Result[i]=oldChars[j] then
      begin
        Result[i] := newChars[j];
        break;
      end;
end;
//
var i:integer;

begin
  if (edit1.Text='') and (edit2.Text='') then
  begin
    showmessage('Pls input XieXing and Shehao!');
    abort;
  end;
  with tmp do
  begin
    active:=false;
    sql.Clear;
    sql.Add('select * from '+main.LIY_DD+'.dbo.DDZL DDZL');
    sql.Add('where DDZL.DDBH like '''+txtJGNO.Text+'%''');
    //20170623
    sql.Add('and CQDH='''+main.Edit2.Text+'''');
    //
    active:=true;
  end;
  if tmp.RecordCount>0 then
  begin
    showmessage('Already Exist!');
    abort;
  end else
  begin
    with XXZLS1 do
    begin
      active:=false;
      sql.Clear;
      sql.Add('SELECT * FROM '+main.LIY_DD+'.dbo.XXZLS1 XXZLS1 WHERE XieXing='''+edit1.Text+''' AND SheHao='''+edit2.Text+''' AND CQDH='''+ main.edit2.Text+'''');
      active:=true;
    end;
    if strtoint(count.Text)=1 then
    begin
      with tmp do
      begin
        active:=false;
        sql.Clear;
        // insert LIY.DD.dbo.DDZL
        if cb1.Text='JG' then
        begin
          sql.Add('Insert into '+main.LIY_DD+'.dbo.DDZL');
          sql.Add('(DDBH,CQDH,ZLBH1,DDLB,XieXing,SheHao,ARTICLE,KHDH,KHPO,DDRQ,SCRQ,DDJQ,Pairs,QtySC,QtyCH,Totals,ACCNO,ZLBH,DDZT,CQDH1,USERID,USERDATE,DDBZ,QKBL,ZLBHA)');
          sql.Add(' values('''+JGNO.fieldbyname('JGNO').Value+'''+''-JG'','''+ main.edit2.Text+''','''+JGNO.fieldbyname('ZLBH').Value+''',''N'','''+edit1.Text+''','''+edit2.Text+''','''+JGNO.fieldbyname('CLBH').Value+'''');
          sql.Add(',''VA12'', '''+JGNO.fieldbyname('JGNO').Value+'''+''-JG'','''+formatdatetime('YYYYMMDD',now)+''','''+formatdatetime('YYYYMMDD',now)+'''');
          sql.add(','''+formatdatetime('YYYYMMDD',JGNO.fieldbyname('YQDate').Value)+''','''+JGNO.fieldbyname('Qty1').AsString+''',0.0,0.0,0.0,''ZZZZZZZZZZ'','''+JGNO.fieldbyname('ZLBH').Value+'''');
          sql.add(',''Y'','''+ main.edit2.Text+''', '''+ main.edit1.Text+''','''+formatdatetime('YYYYMMDD',now)+''','''+str_replace([':',''''], [' ',' '],JGNO.fieldbyname('YWPM').Value)+''',100.0,''ZZZZZZZZZZZZZZZ'')');
          // nsert LIY.DD.dbo.DDZLS
          sql.add('Insert into '+main.LIY_DD+'.dbo.DDZLS (DDBH,CQDH,CC,Qty,USERID,USERDATE,xh)');
          sql.add('values('''+JGNO.fieldbyname('JGNO').Value+'''+''-JG'','''+ main.edit2.Text+''','''+XXZLs1.FieldByName('CC').value+''','''+JGNO.fieldbyname('Qty1').AsString+'''');
          sql.add(','''+ main.edit1.Text+''','''+formatdatetime('YYYYMMDD',now)+''',''T'')');
          ExecSQL();
        end else
        begin
          sql.Add('Insert into '+main.LIY_DD+'.dbo.DDZL');
          sql.Add('(DDBH,CQDH,ZLBH1,DDLB,XieXing,SheHao,ARTICLE,KHDH,KHPO,DDRQ,SCRQ,DDJQ,Pairs,QtySC,QtyCH,Totals,ACCNO,ZLBH,DDZT,CQDH1,USERID,USERDATE,DDBZ,QKBL,ZLBHA)');
          sql.Add(' values('''+JGNO.fieldbyname('JGNO').Value+'''+''-CG'','''+ main.edit2.Text+''','''+JGNO.fieldbyname('ZLBH').Value+''',''N'','''+edit1.Text+''','''+edit2.Text+''','''+JGNO.fieldbyname('CLBH').Value+'''');
          sql.Add(',''VA12'', '''+JGNO.fieldbyname('JGNO').Value+'''+''-CG'','''+formatdatetime('YYYYMMDD',now)+''','''+formatdatetime('YYYYMMDD',now)+'''');
          sql.add(','''+formatdatetime('YYYYMMDD',JGNO.fieldbyname('YQDate').Value)+''','''+JGNO.fieldbyname('Qty1').AsString+''',0.0,0.0,0.0,''ZZZZZZZZZZ'','''+JGNO.fieldbyname('ZLBH').Value+'''');
          sql.add(',''Y'','''+ main.edit2.Text+''', '''+ main.edit1.Text+''','''+formatdatetime('YYYYMMDD',now)+''','''+str_replace([':',''''], [' ',' '],JGNO.fieldbyname('YWPM').Value)+''',100.0,''ZZZZZZZZZZZZZZZ'')');
          // insert LIY.DD.dbo.DDZLS
          sql.add('Insert into '+main.LIY_DD+'.dbo.DDZLS (DDBH,CQDH,CC,Qty,USERID,USERDATE,xh)');
          sql.add('values('''+JGNO.fieldbyname('JGNO').Value+'''+''-CG'','''+ main.edit2.Text+''','''+XXZLs1.FieldByName('CC').value+''','''+JGNO.fieldbyname('Qty1').AsString+'''');
          sql.add(','''+ main.edit1.Text+''','''+formatdatetime('YYYYMMDD',now)+''',''T'')');
          ExecSQL();
        end;
      end;
    end;

    if strtoint(count.Text)>1 then
    begin
      JGNO.First;
      for i:=1 to JGNO.Recordcount do
      begin
        with tmp do
        begin
          active:=false;
          sql.Clear;
          if cb1.Text='JG' then
          begin
            // insert LIY.DD.dbo.DDZL
            sql.Add('Insert into '+main.LIY_DD+'.dbo.DDZL');
            sql.Add('(DDBH,CQDH,ZLBH1,DDLB,XieXing,SheHao,ARTICLE,KHDH,KHPO,DDRQ,SCRQ,DDJQ,Pairs,QtySC,QtyCH,Totals,ACCNO,ZLBH,DDZT,CQDH1,USERID,USERDATE,DDBZ,QKBL,ZLBHA)');
            sql.Add(' values('''+JGNO.fieldbyname('JGNO').AsString+'''+''-JG''+''-''+'''+inttostr(i)+''','''+ main.edit2.Text+''','''+JGNO.fieldbyname('ZLBH').Value+''',''N'','''+edit1.Text+''','''+edit2.Text+''','''+JGNO.fieldbyname('CLBH').Value+'''');
            sql.Add(',''VA12'', '''+JGNO.fieldbyname('JGNO').AsString+'''+''-JG''+''-''+'''+inttostr(i)+''','''+formatdatetime('YYYYMMDD',now)+''','''+formatdatetime('YYYYMMDD',now)+'''');
            sql.add(','''+formatdatetime('YYYYMMDD',JGNO.fieldbyname('YQDate').Value)+''','''+JGNO.fieldbyname('Qty1').AsString+''',0.0,0.0,0.0,''ZZZZZZZZZZ'','''+JGNO.fieldbyname('ZLBH').Value+'''');
            sql.add(',''Y'','''+ main.edit2.Text+''', '''+ main.edit1.Text+''','''+formatdatetime('YYYYMMDD',now)+''','''+str_replace([':',''''], [' ',' '],JGNO.fieldbyname('YWPM').Value)+''',100.0,''ZZZZZZZZZZZZZZZ'')');
            // nsert LIY.DD.dbo.DDZLS
            sql.add('Insert into '+main.LIY_DD+'.dbo.DDZLS (DDBH,CQDH,CC,Qty,USERID,USERDATE,xh)');
            sql.add('values('''+JGNO.fieldbyname('JGNO').AsString+'''+''-JG''+''-''+'''+inttostr(i)+''','''+ main.edit2.Text+''','''+XXZLs1.FieldByName('CC').value+''','''+JGNO.fieldbyname('Qty1').AsString+'''');
            sql.add(','''+ main.edit1.Text+''','''+formatdatetime('YYYYMMDD',now)+''',''T'')');
            ExecSQL();
          end else
          begin
            // insert LIY.DD.dbo.DDZL
            sql.Add('Insert into '+main.LIY_DD+'.dbo.DDZL');
            sql.Add('(DDBH,CQDH,ZLBH1,DDLB,XieXing,SheHao,ARTICLE,KHDH,KHPO,DDRQ,SCRQ,DDJQ,Pairs,QtySC,QtyCH,Totals,ACCNO,ZLBH,DDZT,CQDH1,USERID,USERDATE,DDBZ,QKBL,ZLBHA)');
            sql.Add(' values('''+JGNO.fieldbyname('JGNO').AsString+'''+''-CG''+''-''+'''+inttostr(i)+''','''+ main.edit2.Text+''','''+JGNO.fieldbyname('ZLBH').Value+''',''N'','''+edit1.Text+''','''+edit2.Text+''','''+JGNO.fieldbyname('CLBH').Value+'''');
            sql.Add(',''VA12'', '''+JGNO.fieldbyname('JGNO').AsString+'''+''-CG''+''-''+'''+inttostr(i)+''','''+formatdatetime('YYYYMMDD',now)+''','''+formatdatetime('YYYYMMDD',now)+'''');
            sql.add(','''+formatdatetime('YYYYMMDD',JGNO.fieldbyname('YQDate').Value)+''','''+JGNO.fieldbyname('Qty1').AsString+''',0.0,0.0,0.0,''ZZZZZZZZZZ'','''+JGNO.fieldbyname('ZLBH').Value+'''');
            sql.add(',''Y'','''+ main.edit2.Text+''', '''+ main.edit1.Text+''','''+formatdatetime('YYYYMMDD',now)+''','''+str_replace([':',''''], [' ',' '],JGNO.fieldbyname('YWPM').Value)+''',100.0,''ZZZZZZZZZZZZZZZ'')');
            // insert LIY.DD.dbo.DDZLS
            sql.add('Insert into '+main.LIY_DD+'.dbo.DDZLS (DDBH,CQDH,CC,Qty,USERID,USERDATE,xh)');
            sql.add('values('''+JGNO.fieldbyname('JGNO').AsString+'''+''-CG''+''-''+'''+inttostr(i)+''','''+ main.edit2.Text+''','''+XXZLs1.FieldByName('CC').value+''','''+JGNO.fieldbyname('Qty1').AsString+'''');
            sql.add(','''+ main.edit1.Text+''','''+formatdatetime('YYYYMMDD',now)+''',''T'')');
            //funcobj.WriteErrorLog(sql.Text);
            ExecSQL();

          end;
        end;
        JGNO.Next;
      end;
    end;
  end;
  showmessage('Succeed');
   //20240226
  with tmp do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Update  LIY_DD.dbo.DDZL set YN=ERP.YN ');
    SQL.Add('From ( Select DDZL.ZLBH1,CBY_Orders.YN ');
    SQL.Add('       From LIY_DD.dbo.DDZL DDZL ');
    SQL.Add('       Inner join CBY_Orders on CBY_Orders.MasterOrder=DDZL.ZLBH1 ');
    SQL.Add('       Where DDZL.YN is NULL ');
    SQL.Add('     ) ERP ');
    SQL.Add('Where ERP.ZLBH1=LIY_DD.dbo.DDZL.ZLBH1 ');
    //funcobj.WriteErrorLog(sql.Text);
    ExecSQL();
  end;
  OrderRubber.Button1.Click;
end;

procedure TImportEX.FormShow(Sender: TObject);
begin
  main.FormLanguage(Pointer(self),self.Name);
end;

end.
