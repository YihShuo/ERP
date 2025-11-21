unit Purchaselist1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ExtCtrls,ehlibBDE,
  comobj, PrnDbgeh, Menus, ComCtrls, dateutils, Buttons, ShellApi, IniFiles, fununit;

type
  TPurchaselist = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Label3: TLabel;
    Label10: TLabel;
    Label22: TLabel;
    Button1: TButton;
    Edit2: TEdit;
    EDIT1: TEdit;
    Edit4: TEdit;
    YPDHEdit: TEdit;
    CheckBox1: TCheckBox;
    Button2: TButton;
    Edit3: TEdit;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    Edit8: TEdit;
    SupplierEdit: TEdit;
    DBGridEh1: TDBGridEh;
    CheckBox6: TCheckBox;
    CheckBox7: TCheckBox;
    Query1: TQuery;
    DS1: TDataSource;
    KFJDEdit: TComboBox;
    Label45: TLabel;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    Label40: TLabel;
    Label39: TLabel;
    Query2: TQuery;
    DateCK: TCheckBox;
    Query1JiJie: TStringField;
    Query1KFJD: TStringField;
    Query1DEVCODE: TStringField;
    Query1YPDH: TStringField;
    Query1CLBH: TStringField;
    Query1ywpm: TStringField;
    Query1dwbh: TStringField;
    Query1cqdh: TStringField;
    Query1CLSL: TFloatField;
    Query1CGQty: TCurrencyField;
    Query1RKQty: TCurrencyField;
    Query1UseQty: TCurrencyField;
    Query1SDRQ: TStringField;
    Query1CGDate: TDateTimeField;
    Query1YQDate: TDateTimeField;
    Query1CFMDate: TDateTimeField;
    Query1RKDate: TDateTimeField;
    Query1FINDATE: TStringField;
    Query1JHRQ: TStringField;
    Query1Quantity: TFloatField;
    Query1TestShoeQty: TFloatField;
    Query1CGNO: TStringField;
    Query1RKNO: TStringField;
    Query1TestNo: TStringField;
    Query1ARTICLE: TStringField;
    Query1zwpm: TStringField;
    Query1USPrice: TFloatField;
    Query1VNPrice: TCurrencyField;
    Query1USACC: TFloatField;
    Query1VNACC: TCurrencyField;
    Query1FD: TStringField;
    Query1CSBH: TStringField;
    Query1zsywjc: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGridEh1EditButtonClick(Sender: TObject);
    procedure Query1AfterOpen(DataSet: TDataSet);
    procedure Button2Click(Sender: TObject);
    procedure DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure FormDestroy(Sender: TObject);
  private
    NDate:TDate;
    //procedure TWPurcahseSQL(Query:TQuery);
    //procedure TWPurcahseDetailSQL(Query:TQuery);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Purchaselist: TPurchaselist;


implementation

uses Purchaselist_Det1;

{$R *.dfm}

procedure TPurchaselist.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TPurchaselist.Button1Click(Sender: TObject);
begin
   if (trim(YPDHEdit.Text)='') and (trim(Edit8.Text)='') then
   begin
     Showmessage('Pls input OrderNo or Season!');
     abort;
   end;
   with Query1 do
   begin
      SQL.Clear;
      sql.add('Select KFXXZL.JiJie,YPZL.KFJD,KFXXZL.DEVCODE,YPZL_ZLZLS2.YPDH,YPZL_ZLZLS2.CLBH,CLZL.ywpm,CLZL.dwbh,CLZL.cqdh,YPZL_ZLZLS2.CLSL,CGZLS.CGQty,KCRKS.RKQty,CGKCUSE.UseQty,YPZL.SDRQ,CGZLS.CGDate,CGZLS.YQDate,CGZLS.CFMDate,KCRKS.RKDate');
      sql.add('      ,YPZL.FINDATE,YPZL.JHRQ,YPZL.Quantity,shoetest.TestShoeQty,CGZLS.CGNO,KCRKS.RKNO,shoetest.TestNo,KFXXZL.ARTICLE,CLZL.zwpm,KCRKS.USPrice,KCRKS.VNPrice,KCRKS.USACC,KCRKS.VNACC,KFXXZL.FD,YPZL_ZLZLS2.CSBH,ZSZL.zsywjc');
      sql.add('from (');
      sql.add('Select YPZL_ZLZLS2.YPDH,YPZL_ZLZLS2.CLBH,SUM(CLSL) as CLSL,MAX(YPZL_ZLZLS2.CSBH) as CSBH from (');
      sql.add('Select YPZL_ZLZLS2.*');
      sql.add('from YPZL_ZLZLS2');
      sql.add('left join YPZL on YPZL.YPDH=YPZL_ZLZLS2.YPDH');
      sql.add('left join kfxxzl on kfxxzl.XieXing=YPZL.XieXing and kfxxzl.SheHao=YPZL.SheHao');
      sql.add('left join CLZL on CLZL.cldh=YPZL_ZLZLS2.CLBH');
      sql.add('where 1=1   and ZMLB=''N'' and CLSL>0 and CLBH not like ''W%''');
      if YPDHEdit.Text<>'' then
      SQL.Add('       and YPZL_ZLZLS2.YPDH like '''+YPDHEdit.Text+'%''  ');
      if EDIT1.Text<>'' then
      SQL.Add('       and YPZL_ZLZLS2.CLBH like '''+EDIT1.Text+'%''  ');
      if Edit3.Text<>'' then
      SQL.Add('       and kfxxzl.DEVCODE like '''+Edit3.Text+'%''  ');
      if Edit8.Text<>'' then
      SQL.Add('       and kfxxzl.JiJie like '''+Edit8.Text+'%''  ');

      if Edit4.Text<>'' then
      SQL.Add('       and YPZL.FD like '''+Edit4.Text+'%''  ');

      if KFJDEdit.Text<>'' then
      SQL.Add('       and YPZL.KFJD like '''+KFJDEdit.Text+'%''  ');

      sql.add(') YPZL_ZLZLS2 Group by YPZL_ZLZLS2.YPDH,YPZL_ZLZLS2.CLBH ) YPZL_ZLZLS2');
      sql.add('Left join (');
      sql.add('    Select CGZLSS.ZLBH,CGZLSS.CLBH,Sum(CGZLSS.Qty) as CGQty,MIN(CGZL.CGDate) as CGDate,MIN(CGZL.CGNO) as CGNO,MAX(CGZLS.YQDate) as YQDate,MAX(CGZLS.CFMDate) as CFMDate');
      sql.add('    from CGZLSS');
      sql.add('    left join CGZLS on CGZLSS.CGNO=CGZLS.CGNO and CGZLS.CLBH=CGZLSS.CLBH');
      sql.add('    left join CGZL on CGZL.CGNO=CGZLSS.CGNO');
      sql.add('    left join YPZL on YPZL.YPDH=CGZLSS.ZLBH');
      sql.add('    left join kfxxzl on kfxxzl.XieXing=YPZL.XieXing and kfxxzl.SheHao=YPZL.SheHao');
      sql.add('    where 1=1 ');
      if YPDHEdit.Text<>'' then
      SQL.Add('       and CGZLSS.ZLBH like '''+YPDHEdit.Text+'%''  ');
      if EDIT1.Text<>'' then
      SQL.Add('       and CGZLSS.CLBH like '''+EDIT1.Text+'%''  ');
      if Edit3.Text<>'' then
      SQL.Add('       and kfxxzl.DEVCODE like '''+Edit3.Text+'%''  ');
      if Edit8.Text<>'' then
      SQL.Add('       and kfxxzl.JiJie like '''+Edit8.Text+'%''  ');
      if Edit4.Text<>'' then
      SQL.Add('       and YPZL.FD like '''+Edit4.Text+'%''  ');
      if KFJDEdit.Text<>'' then
      SQL.Add('       and YPZL.KFJD like '''+KFJDEdit.Text+'%''  ');
      sql.add('    Group by CGZLSS.ZLBH,CGZLSS.CLBH');
      sql.add(') CGZLS on CGZLS.ZLBH=YPZL_ZLZLS2.YPDH and CGZLS.CLBH=YPZL_ZLZLS2.CLBH');
      sql.add('Left join (');
      sql.add('    Select KCRKS.CGBH,KCRKS.CLBH,Sum(KCRKS.Qty) as RKQty,MIN(KCRK.USERDATE) as RKDate,MIN(KCRK.RKNO) as RKNO,MAX(KCRKS.VNPrice) as VNPrice,MAX(KCRKS.USPrice) as USPrice,Sum(KCRKS.USACC) as USACC,SUM(KCRKS.VNACC) as VNACC');
      sql.add('    from KCRKS');
      sql.add('    left join KCRK on KCRKS.RKNO=KCRK.RKNO');
      sql.add('    left join YPZL on YPZL.YPDH=KCRKS.CGBH');
      sql.add('    left join kfxxzl on kfxxzl.XieXing=YPZL.XieXing and kfxxzl.SheHao=YPZL.SheHao');
      sql.add('    where 1=1 ');
      if YPDHEdit.Text<>'' then
      SQL.Add('       and KCRKS.CGBH like '''+YPDHEdit.Text+'%''  ');
      if EDIT1.Text<>'' then
      SQL.Add('       and KCRKS.CLBH  like '''+EDIT1.Text+'%''  ');
      if Edit3.Text<>'' then
      SQL.Add('       and kfxxzl.DEVCODE like '''+Edit3.Text+'%''  ');
      if Edit8.Text<>'' then
      SQL.Add('       and kfxxzl.JiJie like '''+Edit8.Text+'%''  ');
      if Edit4.Text<>'' then
      SQL.Add('       and YPZL.FD like '''+Edit4.Text+'%''  ');
      if KFJDEdit.Text<>'' then
      SQL.Add('       and YPZL.KFJD like '''+KFJDEdit.Text+'%''  ');
      sql.add('    Group by KCRKS.CGBH,KCRKS.CLBH');
      sql.add(') KCRKS on KCRKS.CGBH=YPZL_ZLZLS2.YPDH and KCRKS.CLBH=YPZL_ZLZLS2.CLBH');
      sql.add('left join (');
      sql.add('    Select CGKCUSE.ZLBH,CGKCUSE.CLBH,SUM(CGKCUSE.Qty) as UseQty');
      sql.add('    from  CGKCUSE');
      sql.add('    left join YPZL on YPZL.YPDH=CGKCUSE.ZLBH');
      sql.add('    left join kfxxzl on kfxxzl.XieXing=YPZL.XieXing and kfxxzl.SheHao=YPZL.SheHao');
      sql.add('    where 1=1 ');
      if YPDHEdit.Text<>'' then
      SQL.Add('       and CGKCUSE.ZLBH like '''+YPDHEdit.Text+'%''  ');
      if EDIT1.Text<>'' then
      SQL.Add('       and CGKCUSE.CLBH   like '''+EDIT1.Text+'%''  ');
      if Edit3.Text<>'' then
      SQL.Add('       and kfxxzl.DEVCODE like '''+Edit3.Text+'%''  ');
      if Edit8.Text<>'' then
      SQL.Add('       and kfxxzl.JiJie like '''+Edit8.Text+'%''  ');
      if Edit4.Text<>'' then
      SQL.Add('       and YPZL.FD like '''+Edit4.Text+'%''  ');
      if KFJDEdit.Text<>'' then
      SQL.Add('       and YPZL.KFJD like '''+KFJDEdit.Text+'%''  ');
      sql.add('    Group by CGKCUSE.ZLBH,CGKCUSE.CLBH  ');
      sql.add(') CGKCUSE on CGKCUSE.ZLBH=YPZL_ZLZLS2.YPDH and CGKCUSE.CLBH=YPZL_ZLZLS2.CLBH');
      sql.add('left join (');
      sql.add('  select shoetest.YPDH,SUM(ShoeTest2.Qty) as TestShoeQty,MAX(shoetest.TestNo) as TestNo');
      sql.add('  from shoetest');
      sql.add('  left join ShoeTest2 on ShoeTest2.TestNo=shoetest.TestNo');
      sql.add('  left join YPZL on YPZL.YPDH=shoetest.YPDH');
      sql.add('  left join kfxxzl on kfxxzl.XieXing=YPZL.XieXing and kfxxzl.SheHao=YPZL.SheHao ');
      sql.add('  where 1=1 ');
      if YPDHEdit.Text<>'' then
      SQL.Add('       and shoetest.YPDH like '''+YPDHEdit.Text+'%''  ');
      if Edit3.Text<>'' then
      SQL.Add('       and kfxxzl.DEVCODE like '''+Edit3.Text+'%''  ');
      if Edit8.Text<>'' then
      SQL.Add('       and kfxxzl.JiJie like '''+Edit8.Text+'%''  ');
      if Edit4.Text<>'' then
      SQL.Add('       and YPZL.FD like '''+Edit4.Text+'%''  ');
       if KFJDEdit.Text<>'' then
      SQL.Add('       and YPZL.KFJD like '''+KFJDEdit.Text+'%''  ');
      sql.add('  Group by shoetest.YPDH ');
      sql.add(') shoetest on shoetest.YPDH=YPZL_ZLZLS2.YPDH');
      sql.add('left join YPZL on YPZL.YPDH=YPZL_ZLZLS2.YPDH');
      sql.add('left join kfxxzl on kfxxzl.XieXing=YPZL.XieXing and kfxxzl.SheHao=YPZL.SheHao');
      sql.add('left join CLZL on CLZL.cldh=YPZL_ZLZLS2.CLBH');
      sql.add('left join ZSZL on YPZL_ZLZLS2.CSBH=ZSZL.ZSDH ');
      sql.add('where 1=1');
      if SupplierEdit.Text<>'' then
      SQL.Add('       and ZSZL.zsywjc like '''+SupplierEdit.Text+'%''  ');
      if DateCK.Checked then
      begin
        sql.add('   and convert(smalldatetime,convert(varchar,YPZL.JHRQ,111)) between ');
        sql.add('   '''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date) +'''');
      end;
      if (CheckBox1.Checked) and (CheckBox2.Checked)then
      begin
        sql.add('     and CLZL.cqdh in (''TW'',''VN'')');
      end else
      begin
        if CheckBox1.Checked then
        sql.add('     and CLZL.cqdh =''TW''');
        if CheckBox2.Checked then
        sql.add('     and CLZL.cqdh =''VN''');
      end;
      sql.add('group by KFXXZL.JiJie,YPZL.KFJD,KFXXZL.DEVCODE,YPZL_ZLZLS2.YPDH,YPZL_ZLZLS2.CLBH,CLZL.ywpm,CLZL.dwbh,CLZL.cqdh,YPZL_ZLZLS2.CLSL,CGZLS.CGQty,KCRKS.RKQty,CGKCUSE.UseQty,YPZL.SDRQ,CGZLS.CGDate,CGZLS.YQDate,CGZLS.CFMDate,KCRKS.RKDate');
      sql.add('      ,YPZL.FINDATE,YPZL.JHRQ,YPZL.Quantity,shoetest.TestShoeQty,CGZLS.CGNO,KCRKS.RKNO,shoetest.TestNo,KFXXZL.ARTICLE,CLZL.zwpm,KCRKS.USPrice,KCRKS.VNPrice,KCRKS.USACC,KCRKS.VNACC,KFXXZL.FD,YPZL_ZLZLS2.CSBH,ZSZL.zsywjc');
      if (checkbox3.Checked xor checkbox4.Checked)=true then
      begin
          sql.add('      having  ');
          if checkbox3.Checked=true then
            sql.add('        isnull(sum(YPZL_ZLZLS2.CLSL),0)<=isnull(CGZLS.CGQty,0)+isnull(CGKCUSE.UseQty,0) ');
          if checkbox4.Checked  then
            sql.add('        isnull(sum(YPZL_ZLZLS2.CLSL),0)>isnull(CGZLS.CGQty,0)+isnull(CGKCUSE.UseQty,0) ');

          if (checkbox6.Checked xor checkbox7.Checked)=true then
          begin
            if checkbox6.Checked then
              sql.add('    and   isnull(sum(YPZL_ZLZLS2.CLSL),0)<=isnull(KCRKS.RKQty,0)+isnull(CGKCUSE.UseQty,0) ');
            if checkbox7.Checked then
              sql.add('    and   isnull(sum(YPZL_ZLZLS2.CLSL),0)>isnull(KCRKS.RKQty,0)+isnull(CGKCUSE.UseQty,0) ');
          end;
      end else
      begin
          if (checkbox6.Checked xor checkbox7.Checked)=true then
          begin
            sql.add('      having  ');
            if checkbox6.Checked then
              sql.add('         isnull(sum(YPZL_ZLZLS2.CLSL),0)<=isnull(KCRKS.RKQty,0)+isnull(CGKCUSE.UseQty,0) ');
            if checkbox7.Checked then
              sql.add('         isnull(sum(YPZL_ZLZLS2.CLSL),0)>isnull(KCRKS.RKQty,0)+isnull(CGKCUSE.UseQty,0) ');
          end;
      end;
      //funcobj.WriteErrorLog(sql.Text);
      Active:=true;
   end;
end;

procedure TPurchaselist.FormCreate(Sender: TObject);
begin
  with Query2 do
  begin
    Active:=false;
    Sql.Clear;
    Sql.add('select getdate() as NDate ');
    active:=true;
    NDate:=fieldbyname('NDate').Value;
    active:=false;
    sql.Clear;
    sql.Add('select lbdh from lbzls where  lbzls.lb = ''04'' order by lbdh ');
    active:=true;
    KFJDEdit.Items.Clear;
    KFJDEdit.Items.Add('');
    while not eof do
    begin
      KFJDEdit.Items.Add(FieldByName('lbdh').AsString);
      Next;
    end;
    sql.Clear;
  end;
  //
  DTP1.Date:=Date()-30;
  DTP2.Date:=Date();
end;

procedure TPurchaselist.DBGridEh1EditButtonClick(Sender: TObject);
begin
  Purchaselist_Det:=TPurchaselist_Det.create(self);
  Purchaselist_Det.Query1.Active:=false;
  Purchaselist_Det.Query1.DataSource:=DS1;
  if DBGridEh1.selectedfield.fieldname='CGQty' then
  begin
    with Purchaselist_Det.Query1 do
    begin
      active:=false;
      sql.Clear;
      sql.add('select CGZLSS.CGNO,ZSZL.ZSJC,ZSZL.ZSYWJC,CGZLSS.ZLBH,CGZLSS.CLBH,sum(CGZLSS.Qty) as CGQty   ');
      sql.add('from CGZLSS  with (nolock)');
      sql.add('left join CGZL on CGZL.CGNO=CGZLSS.CGNO ');
      sql.add('left join ZSZL on ZSZL.ZSDH=CGZL.ZSBH ');
      sql.add('where CGZLSS.CLBH=:CLBH ');
      sql.add('      and CGZLSS.Qty <>0');
      sql.add('      and CGZLSS.ZLBH=:YPDH');
      sql.add('group by CGZLSS.CGNO,ZSZL.ZSJC,ZSZL.ZSYWJC,CGZLSS.ZLBH,CGZLSS.CLBH ');
      //funcobj.WriteErrorLog(sql.Text);
      active:=true;
      Purchaselist_Det.DBGrideh1.columns[0].width:=100;
      Purchaselist_Det.DBGrideh1.columns[1].width:=100;
      Purchaselist_Det.DBGrideh1.columns[2].width:=80;
      Purchaselist_Det.DBGrideh1.columns[3].width:=80;
      Purchaselist_Det.DBGrideh1.columns[4].width:=80;
      Purchaselist_Det.DBGrideh1.columns[5].displayformat:='##,#0.0';
      Purchaselist_Det.DBGrideh1.columns[5].width:=60;
    end;
  end;
  if dbgrideh1.selectedfield.fieldname='RKQty' then
  begin
    with Purchaselist_Det.Query1 do
    begin
      active:=false;
      sql.Clear;
      sql.add('select KCRK.USERDate,KCRKS.RKNO,KCRKS.CGBH as ZLBH,KCRKS.CLBH,sum(KCRKS.Qty) as RKQty,'+''''+'VN'+''''+' as Way ');
      sql.add('from KCRKS  with (nolock)');
      sql.add('left join KCRK on KCRK.RKNO=KCRKS.RKNO ');
      sql.add('where KCRKS.CLBH=:CLBH ');
      sql.add('      and KCRKS.CGBH=:YPDH ');
      sql.add('      and KCRKS.Qty<>0');
      sql.add('group by KCRK.USERDate,KCRKS.RKNO,KCRKS.CGBH ,KCRKS.CLBH ');
      sql.add('order by KCRK.USERDate,KCRKS.RKNO');
      //memo1.Text:=sql.Text;
      active:=true;
      Purchaselist_Det.DBGrideh1.columns[0].width:=80;
      Purchaselist_Det.DBGrideh1.columns[0].displayformat:='yyyy/MM/dd';
      Purchaselist_Det.DBGrideh1.columns[1].width:=80;
      Purchaselist_Det.DBGrideh1.columns[2].width:=80;
      Purchaselist_Det.DBGrideh1.columns[3].width:=80;
      Purchaselist_Det.DBGrideh1.columns[4].displayformat:='##,#0.0';
      Purchaselist_Det.DBGrideh1.columns[4].width:=60;
      Purchaselist_Det.DBGrideh1.columns[5].width:=40;
    end;
  end; 
  if dbgrideh1.selectedfield.fieldname='UseQty' then
  begin
    with Purchaselist_Det.Query1  do
    begin
      active:=false;
      sql.Clear;   
      sql.add('select CGKCUSE.ZLBH,CGKCUSE.CLBH,CGKCUSE.Qty as KCUseQty,CGKCUSE.CLBHYS ');
      sql.add('from CGKCUSE  ');
      sql.add('where  CGKCUSE.CLBH=:CLBH');
      sql.add('       and CGKCUSE.ZLBH=:YPDH ');
      sql.add('order by ZLBH,CLBH');
      active:=true;
      Purchaselist_Det.DBGrideh1.columns[0].width:=80;
      Purchaselist_Det.DBGrideh1.columns[1].width:=80;
      Purchaselist_Det.DBGrideh1.columns[2].displayformat:='##,#0.0';
      Purchaselist_Det.DBGrideh1.columns[2].width:=60;
      Purchaselist_Det.DBGrideh1.columns[3].width:=80;
    end;
  end;
  Purchaselist_Det.show;
end;

procedure TPurchaselist.Query1AfterOpen(DataSet: TDataSet);
begin
  if query1.recordcount>0 then
  begin
    DBGrideh1.Columns[7].buttonstyle:=cbsellipsis;
    DBGrideh1.Columns[8].buttonstyle:=cbsellipsis;
    DBGrideh1.Columns[9].buttonstyle:=cbsellipsis;
  end else
  begin
    DBGrideh1.Columns[7].buttonstyle:=cbsnone;
    DBGrideh1.Columns[8].buttonstyle:=cbsnone;
    DBGrideh1.Columns[9].buttonstyle:=cbsnone;
  end;
end;

procedure TPurchaselist.Button2Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin
  if  Query1.active  then
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
      for   i:=0   to   Query1.fieldcount-1   do
      begin
        eclApp.Cells(1,i+1):=Query1.fields[i].FieldName;
      end;
      Query1.First;
      j:=2;
      while   not   Query1.Eof   do
      begin
        for   i:=0   to  Query1.fieldcount-1  do
        begin
          eclApp.Cells(j,i+1):=Query1.Fields[i].Value;
        end;
        Query1.Next;
        inc(j);
      end;
      eclapp.columns.autofit;
      showmessage('Succeed');
      eclApp.Visible:=True;
    except
       on  F:Exception   do
          showmessage(F.Message);
    end;
  end;
end;

procedure TPurchaselist.DBGridEh1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if Query1.FieldByName('CLSL').value=Query1.FieldByName('CGQty').value+Query1.FieldByName('UseQty').value then
  begin
    dbgrideh1.canvas.font.color:=clBlue;
  end;
  if (((query1.FieldByName('CGQty').value>0) or (Query1.FieldByName('UseQty').value>0))
                    and (query1.FieldByName('CLSL').value>(query1.FieldByName('CGQty').value+Query1.FieldByName('UseQty').value))) then
  begin
    if ((Query1.FieldByName('CGQty').value<>0) or (Query1.FieldByName('UseQty').value<>0)) then
    begin
      dbgrideh1.canvas.font.color:=clred;
    end;
  end;
  if Query1.FieldByName('CLSL').value<Query1.FieldByName('CGQty').value+Query1.FieldByName('UseQty').value then
  begin
    dbgrideh1.canvas.font.color:=clgreen;
  end;
end;

procedure TPurchaselist.FormDestroy(Sender: TObject);
begin
  Purchaselist:=nil;
end;

end.
