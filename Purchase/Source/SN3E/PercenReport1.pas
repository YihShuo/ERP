unit PercenReport1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GridsEh, DBGridEh, StdCtrls, ComCtrls, ExtCtrls, DB, DBTables,iniFiles,ComObj;

type
  TPercenReport = class(TForm)
    Panel1: TPanel;
    Label3: TLabel;
    Label5: TLabel;
    Label2: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label1: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Edit2: TEdit;
    Edit1: TEdit;
    Button1: TButton;
    Edit3: TEdit;
    Button2: TButton;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit4: TEdit;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    Edit7: TEdit;
    Edit8: TEdit;
    ComboBox1: TComboBox;
    CheckBox2: TCheckBox;
    CheckBox1: TCheckBox;
    Button3: TButton;
    DBGridEh1: TDBGridEh;
    DBGridEh2: TDBGridEh;
    Query1: TQuery;
    Query1GSBH: TStringField;
    Query1ZSBH: TStringField;
    Query1DJNO: TStringField;
    Query1DJLX: TStringField;
    Query1CGBH: TStringField;
    Query1CLBH: TStringField;
    Query1DJDATE: TDateTimeField;
    Query1Qty: TCurrencyField;
    Query1USPrice: TCurrencyField;
    Query1USACC: TCurrencyField;
    Query1USQty: TCurrencyField;
    Query1CWHL: TCurrencyField;
    Query1VNPrice: TCurrencyField;
    Query1VNACC: TCurrencyField;
    Query1VNQty: TCurrencyField;
    Query1CostID: TStringField;
    Query1FKBH: TStringField;
    Query1USERDATE: TDateTimeField;
    Query1USERID: TStringField;
    Query1YN: TStringField;
    Query1ZSYWJC: TStringField;
    Query1YWPM: TStringField;
    Query1ZWPM: TStringField;
    Query1DWBH: TStringField;
    Query1cgno: TStringField;
    DS1: TDataSource;
    Query2: TQuery;
    Query2TotalUSPrice: TCurrencyField;
    Query2TotalVNPrice: TCurrencyField;
    Query2TotalQty: TCurrencyField;
    Query2UpperUSPrice: TCurrencyField;
    Query2UpperVNPrice: TCurrencyField;
    Query2UpperQty: TCurrencyField;
    Query2DetailVNPrice: TCurrencyField;
    Query2DetailUSPrice: TCurrencyField;
    Query2DetailQty: TCurrencyField;
    Query2USPercentage_Upper_vs_Total: TCurrencyField;
    Query2VNPercentage_Upper_vs_Total: TCurrencyField;
    Query2QtyPercentage_Upper_vs_Total: TCurrencyField;
    Query2USPercentage_Detail_vs_Upper: TCurrencyField;
    Query2VNPercentage_Detail_vs_Upper: TCurrencyField;
    Query2QtyPercentage_Detail_vs_Upper: TCurrencyField;
    Query2USPercentage_Detail_vs_Total: TCurrencyField;
    Query2VNPercentage_Detail_vs_Total: TCurrencyField;
    Query2QtyPercentage_Detail_vs_Total: TCurrencyField;
    DS2: TDataSource;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
    procedure readini();
    procedure PhanTram;
  public
    { Public declarations }
    VNPrice_DiplayFormat:string;
    VNPrice_Decimal:Byte;
  end;

var
  PercenReport: TPercenReport;

implementation

uses main1;

{$R *.dfm}

procedure TPercenReport.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TPercenReport.FormDestroy(Sender: TObject);
begin
  PercenReport:=nil;
end;

procedure TPercenReport.readini();
var MyIni :Tinifile;
    AppDir:string;
begin
  //
  VNPrice_DiplayFormat:='#,##0';
  VNPrice_Decimal:=0;
  AppDir:=ExtractFilePath(Application.ExeName);
  if FileExists(AppDir+'\ComName.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ComName.ini');
      VNPrice_DiplayFormat:=MyIni.ReadString('VNPrice','DiplayFormat','#,##0');
      VNPrice_Decimal:=strtoint(MyIni.ReadString('VNPrice','Decimal','0'));
    finally
      MyIni.Free;
    end;
  end;

  TCurrencyField(Query1.FieldByName('CWHL')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(Query1.FieldByName('VNQty')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(Query1.FieldByName('VNACC')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(Query1.FieldByName('VNPrice')).DisplayFormat:=VNPrice_DiplayFormat;
end;


procedure TPercenReport.FormCreate(Sender: TObject);
begin
  DTP1.Date:=now-30;
  DTP2.Date:=now;
  readini();
end;

procedure TPercenReport.Button1Click(Sender: TObject);
begin
 with query1 do
 begin
    active:=false;
    sql.Clear;
    sql.Add('select cgzl.cgno,CWFK.GSBH, CWYF.*,zszl.zsywjc,clzl.ywpm,clzl.zwpm,clzl.dwbh');
    sql.Add('from CWYF left join zszl on CWYF.ZSBH=zszl.zsdh');
    sql.Add('left join CWFK on CWFK.FKBH=CWYF.FKBH');
    sql.Add('left join clzl on clzl.cldh=CWYF.CLBH');
    sql.Add('left join KCRK on KCRK.rkno=CWYF.djno');
    sql.Add('left join CGZL on CGZL.CGNO=KCRK.ZSNO');
    sql.Add('where convert(smalldatetime,convert(varchar,CWFK.FKDate,111)) between');
    sql.Add(''''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+
            ' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
    sql.Add(' and CWFK.FKBH like '+''''+edit4.Text+'%'+'''');
    sql.Add(' and CWYF.ZSBH like '+''''+edit7.Text+'%'+'''');
    sql.Add(' and ZSZL.ZSYWJC like '+''''+'%'+edit6.Text+'%'+'''');
    sql.Add(' and CWFK.GSBH='+''''+main.edit2.Text+'''');
    sql.Add(' and CWYF.DJNO like '+''''+edit5.Text+'%'+'''');
    sql.Add(' and CLZL.YWPM like '+''''+'%'+edit2.Text+'%'+'''');
    sql.Add(' and CLZL.YWPM like '+''''+'%'+edit3.Text+'%'+'''');
    if edit8.Text<>'' then
      sql.Add(' and cgzl.cgno like '+''''+edit8.Text+'%'+'''');

    if (edit1.Text = '') and (combobox1.Text = '') then
    begin
      sql.Add(' and CWYF.CLBH like '+''''+edit1.Text+'%'+'''');
    end
    else
    begin
      if combobox1.Text = 'Leather' then
        sql.Add(' and CWYF.CLBH like ''F%''')
      else if combobox1.Text = 'Textile' then
      begin
        sql.Add(' and (CWYF.CLBH like ''A%'' or CWYF.CLBH like ''C%''');
        sql.Add(' or (CWYF.CLBH like ''P%'' and (CWYF.ZSBH = ''VC120'' or CWYF.ZSBH = ''VH31'')))');
      end
      else if combobox1.Text = 'Pu' then
        sql.Add(' and CWYF.CLBH like ''K%''')
      else
        sql.Add(' and CWYF.CLBH like '+''''+edit1.Text+'%'+'''');
    end;
    if (edit1.Text <> '') then
    begin
        sql.Add(' and CWYF.CLBH like '+''''+edit1.Text+'%'+'''');
    end;
    if ((checkbox1.Checked = true) and (checkbox2.Checked = false)) then
      sql.add(' and CLZL.CQDH=''TW''')
    else if ((checkbox1.Checked = false) and (checkbox2.Checked = true)) then
      sql.add(' and CLZL.CQDH=''VN''')
    else if ((checkbox1.Checked = true) and (checkbox2.Checked = true)) or ((checkbox1.Checked = false) and (checkbox2.Checked = false)) then
      sql.add(' and CLZL.CQDH like ''%''');
    //chi lay DJLX cua VN
    sql.Add('and CWYF.DJLX = ''VN'' ');
    sql.Add('order by CWYF.FKBH asc');
    //showmessage(sql.Text);
    active := true;
 end;
 PhanTram;
end;

procedure TPercenReport.PhanTram;
begin
 with Query2 do
 begin
    active:=false;
    sql.Clear;
    //AllTotal
    sql.Add('with TotalQuery as (select SUM(SUM(CWYF.USPrice)) OVER () AS TotalUSPrice,SUM(SUM(CWYF.VNPrice)) OVER () AS TotalVNPrice,SUM(CWYF.Qty) AS TotalQty');
    sql.Add('FROM CWYF');
    sql.Add('LEFT JOIN zszl ON CWYF.ZSBH = zszl.zsdh');
    sql.Add('left join CWFK on CWFK.FKBH=CWYF.FKBH');
    sql.Add('left join clzl on clzl.cldh=CWYF.CLBH');
    sql.Add('left join KCRK on KCRK.rkno=CWYF.djno');
    sql.Add('left join CGZL on CGZL.CGNO=KCRK.ZSNO');
    sql.Add('where convert(smalldatetime,convert(varchar,CWFK.FKDate,111)) between');
    sql.add(''''+formatdatetime('yyyy/MM/dd',DTP1.Date)+'''');
    sql.add(' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
    sql.Add(' and CWFK.GSBH='+''''+main.edit2.Text+'''');
    if ((checkbox1.Checked = true) and (checkbox2.Checked = false)) then
      sql.add(' and CLZL.CQDH=''TW''')
    else if ((checkbox1.Checked = false) and (checkbox2.Checked = true)) then
      sql.add(' and CLZL.CQDH=''VN''')
    else if ((checkbox1.Checked = true) and (checkbox2.Checked = true)) or ((checkbox1.Checked = false) and (checkbox2.Checked = false)) then
      sql.add(' and CLZL.CQDH like ''%''');
    //chi lay DJLX cua VN
    sql.Add('and CWYF.DJLX = ''VN'' ');
    sql.Add('),');

    //Upper
    sql.Add('UpperQuery as (select SUM(SUM(CWYF.USPrice)) OVER () AS UpperUSPrice,SUM(SUM(CWYF.VNPrice)) OVER () AS UpperVNPrice,SUM(CWYF.Qty) AS UpperQty');
    sql.Add('FROM CWYF');
    sql.Add('LEFT JOIN zszl ON CWYF.ZSBH = zszl.zsdh');
    sql.Add('left join CWFK on CWFK.FKBH=CWYF.FKBH');
    sql.Add('left join clzl on clzl.cldh=CWYF.CLBH');
    sql.Add('left join KCRK on KCRK.rkno=CWYF.djno');
    sql.Add('left join CGZL on CGZL.CGNO=KCRK.ZSNO');
    sql.Add('where convert(smalldatetime,convert(varchar,CWFK.FKDate,111)) between');
    sql.add(''''+formatdatetime('yyyy/MM/dd',DTP1.Date)+'''');
    sql.add(' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
    sql.Add(' and CWFK.GSBH='+''''+main.edit2.Text+'''');
    if ((checkbox1.Checked = true) and (checkbox2.Checked = false)) then
      sql.add(' and CLZL.CQDH=''TW''')
    else if ((checkbox1.Checked = false) and (checkbox2.Checked = true)) then
      sql.add(' and CLZL.CQDH=''VN''')
    else if ((checkbox1.Checked = true) and (checkbox2.Checked = true)) or ((checkbox1.Checked = false) and (checkbox2.Checked = false)) then
      sql.add(' and CLZL.CQDH like ''%''');
    if combobox1.Text = 'Leather' then
        sql.Add(' and CWYF.CLBH like ''F%''')
    else if combobox1.Text = 'Textile' then
      begin
        sql.Add(' and (CWYF.CLBH like ''A%'' or CWYF.CLBH like ''C%''');
        sql.Add(' or (CWYF.CLBH like ''P%'' and (CWYF.ZSBH = ''VC120'' or CWYF.ZSBH = ''VH31'')))');
      end
    else if combobox1.Text = 'Pu' then
        sql.Add(' and CWYF.CLBH like ''K%''')
      else
        sql.Add(' and CWYF.CLBH like '+''''+edit1.Text+'%'+'''');
    //chi lay DJLX cua VN
    sql.Add('and CWYF.DJLX = ''VN'' ');
    sql.Add('),');

    //Percent
    sql.Add('DetailQuery as (select SUM(SUM(CWYF.USPrice)) OVER () AS DetailUSPrice,SUM(SUM(CWYF.VNPrice)) OVER () AS DetailVNPrice,SUM(CWYF.Qty) AS DetailQty');
    sql.Add('from CWYF');
    sql.Add('LEFT JOIN zszl ON CWYF.ZSBH = zszl.zsdh');
    sql.Add('left join CWFK on CWFK.FKBH=CWYF.FKBH');
    sql.Add('left join clzl on clzl.cldh=CWYF.CLBH');
    sql.Add('left join KCRK on KCRK.rkno=CWYF.djno');
    sql.Add('left join CGZL on CGZL.CGNO=KCRK.ZSNO');
    sql.Add('where convert(smalldatetime,convert(varchar,CWFK.FKDate,111)) between');
    sql.Add(''''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+
            ' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
    sql.Add(' and CWFK.FKBH like '+''''+edit4.Text+'%'+'''');
    sql.Add(' and CWYF.ZSBH like '+''''+edit7.Text+'%'+'''');
    sql.Add(' and ZSZL.ZSYWJC like '+''''+'%'+edit6.Text+'%'+'''');
    sql.Add(' and CWFK.GSBH='+''''+main.edit2.Text+'''');
    sql.Add(' and CWYF.DJNO like '+''''+edit5.Text+'%'+'''');
    sql.Add(' and CLZL.YWPM like '+''''+'%'+edit2.Text+'%'+'''');
    sql.Add(' and CLZL.YWPM like '+''''+'%'+edit3.Text+'%'+'''');
    if ((checkbox1.Checked = true) and (checkbox2.Checked = false)) then
      sql.add(' and CLZL.CQDH=''TW''')
    else if ((checkbox1.Checked = false) and (checkbox2.Checked = true)) then
      sql.add(' and CLZL.CQDH=''VN''')
    else if ((checkbox1.Checked = true) and (checkbox2.Checked = true)) or ((checkbox1.Checked = false) and (checkbox2.Checked = false)) then
      sql.add(' and CLZL.CQDH like ''%''');
    if edit8.Text<>'' then
      sql.Add(' and cgzl.cgno like '+''''+edit8.Text+'%'+'''');
    if (edit1.Text = '') and (combobox1.Text = '') then
    begin
      sql.Add(' and CWYF.CLBH like '+''''+edit1.Text+'%'+'''');
    end
    else
    begin
      if combobox1.Text = 'Leather' then
        sql.Add(' and CWYF.CLBH like ''F%''')
      else if combobox1.Text = 'Textile' then
      begin
        sql.Add(' and (CWYF.CLBH like ''A%'' or CWYF.CLBH like ''C%''');
        sql.Add(' or (CWYF.CLBH like ''P%'' and (CWYF.ZSBH = ''VC120'' or CWYF.ZSBH = ''VH31'')))');
      end
      else if combobox1.Text = 'Pu' then
        sql.Add(' and CWYF.CLBH like ''K%''')
      else
        sql.Add(' and CWYF.CLBH like '+''''+edit1.Text+'%'+'''');
    end;
    if (edit1.Text <> '') then
    begin
        sql.Add(' and CWYF.CLBH like '+''''+edit1.Text+'%'+'''');
    end;
    //chi lay DJLX cua VN
    sql.Add('and CWYF.DJLX = ''VN'' ');
    sql.Add(')');

    //Tinh phan tram
    sql.Add('SELECT');
    sql.Add(' COALESCE(TotalQuery.TotalUSPrice, 0) AS TotalUSPrice,');
    sql.Add('	COALESCE(TotalQuery.TotalVNPrice, 0) AS TotalVNPrice,');
    sql.Add(' COALESCE(TotalQuery.TotalQty, 0) AS TotalQty,');
    sql.add(' COALESCE(UpperQuery.UpperUSPrice, 0) AS UpperUSPrice,');
    sql.add(' COALESCE(UpperQuery.UpperVNPrice, 0) AS UpperVNPrice,');
    sql.add(' COALESCE(UpperQuery.UpperQty, 0) AS UpperQty,');
    sql.add(' COALESCE(DetailQuery.DetailUSPrice, 0) AS DetailUSPrice, ');
    sql.add(' COALESCE(DetailQuery.DetailVNPrice, 0) AS DetailVNPrice,');
    sql.add(' COALESCE(DetailQuery.DetailQty, 0) AS DetailQty, ');
    sql.add('  CASE WHEN TotalQuery.TotalUSPrice > 0 THEN (COALESCE(UpperQuery.UpperUSPrice, 0) * 100.0) / TotalQuery.TotalUSPrice ELSE NULL END AS USPercentage_Upper_vs_Total,');
    sql.add('  CASE WHEN TotalQuery.TotalVNPrice > 0 THEN (COALESCE(UpperQuery.UpperVNPrice, 0) * 100.0) / TotalQuery.TotalVNPrice ELSE NULL END AS VNPercentage_Upper_vs_Total,');
    sql.add('  CASE WHEN TotalQuery.TotalQty > 0 THEN (COALESCE(UpperQuery.UpperQty, 0) * 100.0) / TotalQuery.TotalQty ELSE NULL END AS QtyPercentage_Upper_vs_Total,');
    sql.add('  CASE WHEN UpperQuery.UpperUSPrice > 0 THEN (COALESCE(DetailQuery.DetailUSPrice, 0) * 100.0) / UpperQuery.UpperUSPrice ELSE NULL END AS USPercentage_Detail_vs_Upper,');
    sql.add('  CASE WHEN UpperQuery.UpperVNPrice > 0 THEN (COALESCE(DetailQuery.DetailVNPrice, 0) * 100.0) / UpperQuery.UpperVNPrice ELSE NULL END AS VNPercentage_Detail_vs_Upper,');
    sql.add('  CASE WHEN UpperQuery.UpperQty > 0 THEN (COALESCE(DetailQuery.DetailQty, 0) * 100.0) / UpperQuery.UpperQty ELSE NULL END AS QtyPercentage_Detail_vs_Upper,');
    sql.add('  CASE WHEN TotalQuery.TotalUSPrice > 0 THEN (COALESCE(DetailQuery.DetailUSPrice, 0) * 100.0) / TotalQuery.TotalUSPrice ELSE NULL END AS USPercentage_Detail_vs_Total,');
    sql.add('  CASE WHEN TotalQuery.TotalVNPrice > 0 THEN (COALESCE(DetailQuery.DetailVNPrice, 0) * 100.0) / TotalQuery.TotalVNPrice ELSE NULL END AS VNPercentage_Detail_vs_Total,');
    sql.add('  CASE WHEN TotalQuery.TotalQty > 0 THEN (COALESCE(DetailQuery.DetailQty, 0) * 100.0) / TotalQuery.TotalQty ELSE NULL END AS QtyPercentage_Detail_vs_Total');
    sql.add('FROM TotalQuery, UpperQuery, DetailQuery;');
    //showmessage(sql.Text);
    active := true;
 end;
end;

procedure TPercenReport.Button2Click(Sender: TObject);
var   a:string;
      eclApp,WorkBook:olevariant;
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

procedure TPercenReport.Button3Click(Sender: TObject);
var   a:string;
      eclApp,WorkBook:olevariant;
      i,j:integer;
begin
  if  query2.active  then
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
        for   i:=0   to   query2.fieldcount-1   do
          begin
              eclApp.Cells(1,i+1):=query2.fields[i].FieldName;
          end;

        query2.First;
        j:=2;
        while   not   query2.Eof   do
          begin
            for   i:=0   to  query2.fieldcount-1  do
            begin
              eclApp.Cells(j,i+1):=query2.Fields[i].Value;
            end;
          query2.Next;
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

end.
