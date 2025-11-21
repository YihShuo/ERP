unit Modelmaterialfee1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DB, DBTables, StdCtrls, GridsEh, DBGridEh, ComCtrls,comobj,
  Buttons, DBGridEhImpExp, EhLibBDE,fununit;
type
  TModelmaterialfee = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    DBGridEh1: TDBGridEh;
    Query1: TQuery;
    DataSource1: TDataSource;
    Label3: TLabel;
    Label1: TLabel;
    Button2: TButton;
    Label2: TLabel;
    VendorEdit: TEdit;
    Label4: TLabel;
    SREdit: TEdit;
    Query1DormesticOversea: TStringField;
    Query1CLBH: TStringField;
    Query1VNDFreight: TCurrencyField;           
    Query1USDFreight: TCurrencyField;
    Query2: TQuery;
    Label5: TLabel;
    ComboBox1: TComboBox;
    CheckBox1: TCheckBox;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    Query1RKDate: TDateField;
    Query1USDPrice: TFloatField;
    Query1VNDPrice: TFloatField;
    Query1USDAmount: TFloatField;
    Query1VNDAmount: TFloatField;
    Query1CGNO: TStringField;
    Button3: TButton;
    SaveDialog1: TSaveDialog;
    Query1Season: TStringField;
    Query1Stage: TStringField;
    Query1SR: TStringField;
    Query1Vendor: TStringField;
    Query1PlacePODate: TDateTimeField;
    Query1MaterialName: TStringField;
    Query1MaterialQTY: TCurrencyField;
    Query1QuotationPriceUSD: TCurrencyField;
    Query1QuotationTotalPriceUSD: TCurrencyField;
    Query1UNIT: TStringField;
    Label6: TLabel;
    ComboBox2: TComboBox;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button2Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Query1CalcFields(DataSet: TDataSet);
    procedure Button3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Modelmaterialfee: TModelmaterialfee;

implementation

uses main1;

{$R *.dfm}

procedure TModelmaterialfee.Button1Click(Sender: TObject);
var
  GSBH,YPDH:string;
begin

  with query1 do
  begin
     active:=false;
     sql.Clear;
     sql.add('select kfxxzl.JiJie as Season,YPZL.KFJD as Stage,kfxxzl.DEVCODE as SR');
     sql.add(',case when ZSZL_DEV.Country = ''VN'' then ''VN'' when (ZSZL_DEV.Country <> '''') and (ZSZL_DEV.Country is not null) then ''Oversea'' else '''' end as ''Dormestic/Oversea''');
     sql.add(',zszl.zsjc as Vendor,cgzl.CGDate as ''Place PO Date'',CGZLSS.CLBH,CLZL.ywpm as ''Material Name'',CGZLSS.Qty as ''Material QTY''');
     sql.add(',case when MaterialMOQ.SamplePrice IS not null then MaterialMOQ.SamplePrice else 0 end as ''Quotation Price USD''');
     sql.add(',case when MaterialMOQ.SamplePrice IS not null then MaterialMOQ.SamplePrice * isnull(CGZLSS.Qty,0) else 0 end as ''Quotation Total Price USD''');
     sql.add(',case when CGZLInvoiceS.Other_fee_VND IS not null then CGZLInvoiceS.Other_fee_VND else 0 end as VNDFreight');
     sql.add(',case when CGZLInvoiceS.Other_fee_USD IS not null then CGZLInvoiceS.Other_fee_USD else 0 end as USDFreight');
     sql.add(',CGZL.CGNO,CLZL.DWBH as ''UNIT''');
     sql.add('from kfxxzl');
     sql.add('left join YPZL on YPZL.XieXing = kfxxzl.XieXing and YPZL.SheHao = kfxxzl.SheHao');
     sql.add('left join CGZLSS on CGZLSS.ZLBH = YPZL.YPDH');
     sql.add('left join CGZL on CGZLSS.CGNO = CGZL.CGNO');
     sql.add('left join ZSZL on CGZL.ZSBH = ZSZL.zsdh');
     sql.add('left join ZSZL_DEV on ZSZL_DEV.zsdh = ZSZL.zsdh');
     sql.add('left join MaterialMOQ on MaterialMOQ.CLBH = cgzlss.CLBH and MaterialMOQ.Season = kfxxzl.JiJie');
     sql.add('left join CGZLInvoiceS on CGZLInvoiceS.CGNO = CGZLSS.CGNO and CGZLInvoiceS.CLBH = CGZLSS.CLBH');
     sql.add('left join CGZLInvoice on CGZLInvoice.CINO = CGZLInvoiceS.CINO');
     sql.add('left join CLZL on CGZLSS.CLBH = CLZL.cldh');
     sql.add('where CGZLInvoice.invoice not like ''%IMPROVE'' and ZSZL_DEV.GSBH = '''+main.Edit2.Text+'''');
     if SREdit.Text<>'' then
        sql.add('and kfxxzl.devcode like ''%'+trim(SREdit.Text)+'%'' ');
     if edit2.text<>'' then
        sql.add('and YPZL.KFJD='''+edit2.text+'''');
     if edit1.text<>'' then
        sql.add('and KFXXZL.JiJie='''+edit1.text+''' ');
     if VendorEdit.Text <> '' then
        sql.add('and ZSZL.zsdh like ''%'+VendorEdit.Text+'%'' ');
     if ComboBox1.ItemIndex = 2 then
        sql.add('and ZSZL_DEV.Country = ''VN'' ')
     else if ComboBox1.ItemIndex = 1 then
        sql.add('and ZSZL_DEV.Country <> ''VN'' ');
     if CheckBox1.Checked = true then begin
        sql.add('and convert(smalldatetime,convert(varchar,CGZL.CGDate,111)) between'+''''+formatdatetime('yyyy/MM/dd',DTP1.date )+'''');
        sql.add('and '+''''+formatdatetime('yyyy/MM/dd',DTP2.date )+''' ');
     end;
     if main.Edit2.Text = 'CDC' then
       sql.Add('and YPZL.YPDH like ''LAI%''')
     else if main.Edit2.Text = 'SKX' then
        begin
          if ComboBox2.Text <> '' then
            sql.Add('and YPZL.YPDH like '''+ComboBox2.Text+'%''')
          else
            sql.Add('and ((YPZL.YPDH like ''SKX%'') or (YPZL.YPDH like ''SRL%''))');
        end;
     sql.add('order by kfxxzl.DEVCODE,kfxxzl.JiJie,YPZL.KFJD,CGZLSS.CLBH,cgzl.CGDate');
     //showmessage(sql.text);
     //funcobj.WriteErrorLog(sql.Text);
     active:=true;
  end;
end;

procedure TModelmaterialfee.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TModelmaterialfee.Button2Click(Sender: TObject);
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
      showmessage('Succeed');          
       eclApp.Visible:=True;
      except
        on   F:Exception   do
          showmessage(F.Message);
      end;
    end;
end;
procedure TModelmaterialfee.FormDestroy(Sender: TObject);
begin
  Modelmaterialfee:=nil;
end;

procedure TModelmaterialfee.Query1CalcFields(DataSet: TDataSet);
begin
  Query2.Active := false;
  Query2.SQL.Clear;
  Query2.SQL.Add('Select top 1 KCRK.UserDate,KCRKS.VNPRICE,KCRKS.VNACC,KCRKS.USPrice,KCRKS.USACC from KCRK ');
  Query2.SQL.Add('left join KCRKS on KCRKS.RKNO = KCRK.RKNO ');
  Query2.SQL.Add('where KCRK.ZSNO = '''+Query1.fieldbyname('CGNO').AsString+''' ');
  Query2.SQL.Add('and KCRKS.CLBH = '''+Query1.fieldbyname('CLBH').AsString+''' ');
//  showmessage(Query2.SQL.Text);
  Query2.Open;
//  showmessage(inttostr(Query2.RecordCount));
  if Query2.RecordCount > 0 then begin
    Query1.FieldByName('In Storage Date').Value := Query2.fieldbyname('UserDate').Value;
    Query1.FieldByName('Unit Price USD').Value := Query2.fieldbyname('USPRICE').Value;
    Query1.FieldByName('Total Price USD').Value := Query2.fieldbyname('USACC').Value;
    if Query2.fieldbyname('USPRICE').Value <> null then begin
      Query1.FieldByName('Unit Price VND').Value := 0;
      Query1.FieldByName('Total Price VND').Value := 0;
    end
    else begin
      Query1.FieldByName('Unit Price VND').Value := Query2.fieldbyname('VNPRICE').Value;
      Query1.FieldByName('Total Price VND').Value := Query2.fieldbyname('VNACC').Value;
    end;
  end;
end;

procedure TModelmaterialfee.Button3Click(Sender: TObject);
var
  ExpClass:TDBGridEhExportclass;
  Ext:String;
  FSaveDialog: TSaveDialog;
begin
  try
    if not Query1.IsEmpty then
    begin
      FSaveDialog := TSaveDialog.Create(Self);
      FSaveDialog.Filter:='Excel 文檔 (*.xls)|*.XLS|Text files (*.txt)|*.TXT|Comma separated values (*.csv)|*.CSV|HTML file (*.htm)|*.HTM|Word 文檔 (*.rtf)|*.RTF';
      if FSaveDialog.Execute and (trim(FSaveDialog.FileName)<>'') then
      begin
        case FSaveDialog.FilterIndex of
            1: begin ExpClass := TDBGridEhExportAsXLS; Ext := 'xls'; end;
            2: begin ExpClass := TDBGridEhExportAsText; Ext := 'txt'; end;
            3: begin ExpClass := TDBGridEhExportAsCSV; Ext := 'csv'; end;
            4: begin ExpClass := TDBGridEhExportAsHTML; Ext := 'htm'; end;
            5: begin ExpClass := TDBGridEhExportAsRTF; Ext := 'rtf'; end;
        end;
        if ExpClass <> nil then
        begin
          if UpperCase(Copy(FSaveDialog.FileName,Length(FSaveDialog.FileName)-2,3)) <> UpperCase(Ext) then
            FSaveDialog.FileName := FSaveDialog.FileName + '.' + Ext;
            if FileExists(FSaveDialog.FileName) then
            begin
              if application.MessageBox('文件名已存在，是否覆蓋   ', '提示', MB_ICONASTERISK or MB_OKCANCEL)<>idok then
                exit;
            end;
           Screen.Cursor := crHourGlass;
           SaveDBGridEhToExportFile(ExpClass,DBGridEh1,FSaveDialog.FileName,true);
           Screen.Cursor := crDefault;
           MessageBox(Handle, '導出成功  ', '提示', MB_OK +
             MB_ICONINFORMATION);
          end;
      end;
      FSaveDialog.Destroy;
    end;
  except
    on e: exception do
    begin
      Application.MessageBox(PChar(e.message), '錯誤', MB_OK + MB_ICONSTOP);
    end;
  end;
end;

procedure TModelmaterialfee.FormCreate(Sender: TObject);
begin
  if main.Edit2.Text='SKX' then
  begin
    Label6.Visible:=true;
    ComboBox2.Visible:=true;
  end;
  DTP1.Date:=date-30;
  DTP2.date:=date;
end;

end.
