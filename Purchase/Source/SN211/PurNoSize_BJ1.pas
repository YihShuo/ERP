unit PurNoSize_BJ1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls, GridsEh,IniFiles,
  DBGridEh;

type
  TPurNoSize_BJ = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    EDIT1: TEdit;
    DS1: TDataSource;
    Query1: TQuery;
    Query1BJNO: TStringField;
    Query1USERDate: TDateTimeField;
    Query1ZSBH: TStringField;
    Query1ZSYWJC: TStringField;
    Query1CLBH: TStringField;
    Query1USPrice: TCurrencyField;
    Query1VNPrice: TCurrencyField;
    Query1YWPM: TStringField;
    Query1DWBH: TStringField;
    Query1Discount: TFloatField;
    Query1PayVN: TStringField;
    Query1SuppEx: TFloatField;
    Button1: TButton;
    UpdateSQL1: TUpdateSQL;
    DBGrid1: TDBGridEh;
    Query1CWHL: TCurrencyField;
    procedure Button1Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid1EditButtonClick(Sender: TObject);
    procedure Query1BeforeScroll(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
  IsAllowStroll:boolean;
    { Private declarations }
    procedure ReadIni();
  public
    VNPrice_DiplayFormat:string;
    VNPrice_Decimal:Byte;
    { Public declarations }
  end;

var
  PurNoSize_BJ: TPurNoSize_BJ;

implementation

uses PurNoSize1, main1,FunUnit, Exchange_NoSize1;

{$R *.dfm}
procedure TPurNoSize_BJ.ReadIni();
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
  TCurrencyField(Query1.FieldByName('VNPrice')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(Query1.FieldByName('CWHL')).DisplayFormat:=VNPrice_DiplayFormat;
end;
//

procedure TPurNoSize_BJ.Button1Click(Sender: TObject);
begin
  IsAllowStroll:=true;
  with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.Add('select * ');
    sql.Add('from (');
    sql.Add('      select CGBJ.BJNO,CGBJ.USERDate,CGBJ.ZSBH,ZSZL.ZSYWJC,CGBJS.CLBH,');
    sql.Add('               CGBJS.USPrice,CGBJS.VNPrice,CLZL.YWPM,CLZL.DWBH,CGBJS.Discount,PayVN,IsNull((select top 1 CWHL from CWHLS  where HLYEAR=Year(GetDate()) and HLMONTH=Month(GetDate()) and HLDay=1),0) as CWHL,CGBJS.SuppEx,null as SKU');
    sql.Add('               ,IsNull(CGBJS.XieXing,''ZZZZZZZZ'')as XieXing,IsNull(CGBJS.SheHao,''ZZZZZZZZ'')as SheHao');
    sql.Add('               ,ROW_NUMBER() over (PARTITION BY CGBJ.ZSBH ORDER BY CGBJ.BJNO DESC) as  rn');
    sql.Add('               from CGBJ');
    sql.Add('               left join CGBJS on CGBJ.BJNO=CGBJS.BJNO');
    sql.Add('               left join ZSZL on ZSZL.ZSDH=CGBJ.ZSBH');
    sql.Add('               left join CLZL on CLZL.CLDH=CGBJS.CLBH');
    sql.Add('               where CGBJS.CLBH='''+PurNoSize.CGDet.fieldbyname('CLBH').Value+''' and IsNull(XieXing,''ZZZZZZZZ'')=''ZZZZZZZZ''');
    sql.Add('               and CGBJ.GSBH='''+main.Edit2.Text+'''');
    sql.Add('               union all');
    sql.Add('               select CGBJ.BJNO,CGBJ.USERDate,CGBJ.ZSBH,ZSZL.ZSYWJC,CGBJS.CLBH,');
    sql.Add('               CGBJS.USPrice,CGBJS.VNPrice,CLZL.YWPM,CLZL.DWBH,CGBJS.Discount,PayVN,IsNull((select top 1 CWHL from CWHLS  where HLYEAR=Year(GetDate()) and HLMONTH=Month(GetDate()) and HLDay=1),0) as CWHL,CGBJS.SuppEx,DDZL.Article as SKU,');
    sql.Add('               IsNull(CGBJS.XieXing,''ZZZZZZZZ'')as XieXing,IsNull(CGBJS.SheHao,''ZZZZZZZZ'')as SheHao');
    sql.Add('               ,ROW_NUMBER() over (PARTITION BY CGBJ.ZSBH ORDER BY CGBJ.BJNO DESC) as  rn');
    sql.Add('               from CGBJ');
    sql.Add('               left join CGBJS on CGBJ.BJNO=CGBJS.BJNO');
    sql.Add('               left join ZSZL on ZSZL.ZSDH=CGBJ.ZSBH');
    sql.Add('               left join CLZL on CLZL.CLDH=CGBJS.CLBH');
    sql.Add('               left join DDZL on DDZL.XieXing=CGBJS.XieXing and DDZL.SheHao=CGBJS.SheHao');
    sql.Add('               where CGBJS.CLBH='''+PurNoSize.CGDet.fieldbyname('CLBH').Value+''' ');
    sql.Add('               and DDZL.DDBH='''+PurNoSize.CGS.fieldbyname('ZLBH').AsString+''' and IsNull(CGBJS.XieXing,''ZZZZZZZZ'')<>''ZZZZZZZZ''');
    sql.Add('               and CGBJ.GSBH='''+main.Edit2.Text+'''');
    sql.Add(') CGBJ where rn=1') ;
    sql.Add('order by CGBJ.SKU desc,CGBJ.BJNO DESC');
    active:=true;
  end;
  IsAllowStroll:=false;
end;

procedure TPurNoSize_BJ.DBGrid1DblClick(Sender: TObject);
var i,CWHL:integer;
begin
  if (not query1.Active) then
  begin
    abort;
  end;
  if (Query1.recordcount<1) then
  begin
    abort;
  end;
  with PurNoSize.CGDet do
  begin
    CWHL:=query1.fieldbyname('CWHL').value;
    if ((query1.fieldbyname('SuppEx').AsString<>'') and (query1.fieldbyname('SuppEx').AsString<>'0')) then  CWHL:=query1.fieldbyname('SuppEx').value;
    edit;
    fieldbyname('BJNO').value:=query1.fieldbyname('BJNO').value;
    fieldbyname('QUSPrice').Value:=query1.fieldbyname('USprice').value;
    fieldbyname('QVNPrice').Value:=query1.fieldbyname('VNprice').value;
    begin
      if query1.FieldByName('PayVN').Value=1 then
      begin
        if not  query1.FieldByName('USprice').IsNull  then
        begin
          fieldbyname('VNPrice').value:=trunc(query1.fieldbyname('USprice').value*CWHL*query1.FieldByName('Discount').Value+0.5);
          fieldbyname('USPrice').Value:=NULL;
        end else
          if not query1.FieldByName('VNPrice').IsNull then
          begin
            fieldbyname('VNPrice').value:=query1.fieldbyname('VNprice').value*query1.FieldByName('Discount').Value;
            fieldbyname('USPrice').Value:=NULL;
          end;
      end else
         if not query1.FieldByName('USprice').IsNull  then
         begin
          fieldbyname('USPrice').value:= query1.fieldbyname('USPrice').value*query1.FieldByName('Discount').Value;
          fieldbyname('VNPrice').value:=query1.fieldbyname('VNPrice').value;
         end else
          if not query1.FieldByName('VNPrice').IsNull then
          begin
             fieldbyname('VNPrice').value:=query1.fieldbyname('VNPrice').value*query1.FieldByName('Discount').Value;
             fieldbyname('USPrice').Value:=query1.fieldbyname('UsPrice').Value;
          end;
    end;
  end;
  close;
end;

procedure TPurNoSize_BJ.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
  DBGrid1dblclick(nil);
end;

procedure TPurNoSize_BJ.FormDestroy(Sender: TObject);
begin
PurNoSize_BJ:=nil;
end;

procedure TPurNoSize_BJ.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=Cafree;
end;


procedure TPurNoSize_BJ.DBGrid1EditButtonClick(Sender: TObject);
begin
  if (DBGrid1.SelectedField.FieldName='CWHL') then
  begin
    Exchange_NoSize:=TExchange_NoSize.create(self);
    Exchange_NoSize.Button1.Click;
    Exchange_NoSize.ShowModal();
    Exchange_NoSize.Free;
  end;
end;

procedure TPurNoSize_BJ.Query1BeforeScroll(DataSet: TDataSet);
begin
  if IsAllowStroll=false then abort;
end;

procedure TPurNoSize_BJ.FormCreate(Sender: TObject);
begin
  ReadIni();
end;

procedure TPurNoSize_BJ.FormShow(Sender: TObject);
begin
  main.FormLanguage(Pointer(self),self.Name);
end;

end.
