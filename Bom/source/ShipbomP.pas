unit ShipbomP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Grids, DBGrids, DB, DBTables, ComCtrls, comobj,
  colorbutton, GridsEh, DBGridEh;

type
  TShipbom = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Query1: TQuery;
    DataSource1: TDataSource;
    Query1XH: TStringField;
    Query1bwbh: TStringField;
    Query1clbh: TStringField;
    Query1mjbh: TStringField;
    Query1clsl: TFloatField;
    Query1USAGE: TFloatField;
    Query1BWMCY: TStringField;
    Query1CLMCY: TStringField;
    Query1dwbh: TStringField;
    Query1LOSS: TFloatField;
    Query1CQDH: TStringField;
    Query1JGYWSM: TStringField;
    FT: TComboBox;
    Label1: TLabel;
    Label2: TLabel;
    sd: TDateTimePicker;
    Label3: TLabel;
    ed: TDateTimePicker;
    Label4: TLabel;
    RYS: TComboBox;
    Qtemp: TQuery;
    Query2: TQuery;
    DBGrid2: TDBGrid;
    DataSource2: TDataSource;
    Query2quantity: TIntegerField;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Query1ddbh: TStringField;
    Query2DDBH: TStringField;
    Query2CLSL: TFloatField;
    Query3: TQuery;
    Query4: TQuery;
    Qtemp2: TQuery;
    Query3clbh: TStringField;
    Query3ddbh: TStringField;
    Query3SIZE: TStringField;
    Query3BWBH: TStringField;
    Query3CLSL: TFloatField;
    Query4DDBH: TStringField;
    Query4cc: TStringField;
    Query4Quantity: TIntegerField;
    Query4bwbh: TStringField;
    Query4CLSLtotal: TFloatField;
    Query4total: TFloatField;
    Button4: TButton;
    Query2bwbh: TStringField;
    Query2CC: TStringField;
    Query5: TQuery;
    Query5DDBH: TStringField;
    Query5SB: TIntegerField;
    Query5BWBH: TStringField;
    Query5XTCC: TStringField;
    Query5CLSL: TFloatField;
    Query5USERID: TStringField;
    Query5USERDATE: TDateTimeField;
    Query5YN: TStringField;
    UpdateSQL2: TUpdateSQL;
    Button5: TButton;
    Button6: TButton;
    Query1XieXing: TStringField;
    Query1SheHao: TStringField;
    ExcelTemp: TQuery;
    ExcelTempcc: TStringField;
    ExcelTemp2: TQuery;
    ExcelTempddbh: TStringField;
    ExcelTitle: TQuery;
    ExcelTitleZLBH: TStringField;
    ExcelTitleDDBH: TStringField;
    ExcelTitleXieXing: TStringField;
    ExcelTitleSheHao: TStringField;
    ExcelTitleARTICLE: TStringField;
    ExcelTitleKHBH: TStringField;
    ExcelTitleKHPO: TStringField;
    ExcelTitleVersion: TSmallintField;
    ExcelTitleTrader: TStringField;
    ExcelTitleTraderPO: TStringField;
    ExcelTitleDDLB: TStringField;
    ExcelTitleDDCC: TStringField;
    ExcelTitleBOMCC: TStringField;
    ExcelTitleDest: TStringField;
    ExcelTitleDDRQ: TDateTimeField;
    ExcelTitleShipDate: TDateTimeField;
    ExcelTitlePairs: TIntegerField;
    ExcelTitleXieMing: TStringField;
    ExcelTitleYSSM: TStringField;
    ExcelTitleBZCC: TStringField;
    ExcelTitleKHDH: TStringField;
    ExcelTitleXTMH: TStringField;
    ExcelTitleDMGJ: TStringField;
    ExcelTitleMDMH: TStringField;
    ExcelTitleMSGJ: TStringField;
    ExcelTitleDDMH: TStringField;
    ExcelTitleDAOGJ: TStringField;
    ExcelTitleDAOMH: TStringField;
    ExcelTitleIMGName: TStringField;
    ExcelTitleKFJC: TStringField;
    ExcelTitleYWSM: TStringField;
    Button7: TButton;
    Edit1: TEdit;
    UpdateSQL1: TUpdateSQL;
    Memo1: TMemo;
    Query6: TQuery;
    DBGrid1: TDBGridEh;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FTChange(Sender: TObject);
    procedure RYSChange(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Shipbom: TShipbom;

implementation

uses main1, PSpecPrintss1;

{$R *.dfm}

procedure TShipbom.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TShipbom.FormDestroy(Sender: TObject);
begin
  shipBOM:=nil;
end;

procedure TShipbom.FormCreate(Sender: TObject);
begin
  sd.Date:=now;
  ed.Date:=now+30;
  with qtemp do
  begin
    Active:=false;
    sql.Clear;
    sql.add('select ddbh from ddzl where ');
    sql.add('   gsbh='+''''+ft.Text+'''');
    sql.add('   and shipdate>='+''''+datetostr(sd.Date)+'''');
    sql.add('   and shipdate<'+''''+datetostr(Ed.Date+1)+'''');
    sql.add('   order by ddbh');
    active:=true;
  end;
  if qtemp.RecordCount > 0 then
  begin
    qtemp.First;
    rys.Clear;
    while not qtemp.Eof do
    begin
      rys.Items.Add(qtemp.FieldByName('ddbh').Value);
      qtemp.Next;
    end;
    rys.ItemIndex:=0;
  end;
{  query1.Active:=false;
  query2.Active:=false;
  query1.Params[0].Value:=rys.Text;
  query1.Active:=true;
  query2.Active:=true;

  if query2.FieldByName('DDBH').Value = rys.Text then //如果shipping BOM已產生,則使用Shiping bom資料
  begin
  with query2 do
    begin
      active:=false;
      sql.Clear;
      sql.Add('select xtbwylshiping.DDBH, xtbwylshiping.XTCC as CC, DDZLs.Quantity, xtbwylshiping.CLSL, xtbwylshiping.bwbh');
      sql.Add('from xtbwylshiping');
      sql.Add('left join DDZLs on xtbwylshiping.DDBH = DDZLs.DDBH and xtbwylshiping.XTCC = DDZLs.CC');
      sql.Add('where xtbwylshiping.DDBH=:ddbh and xtbwylshiping.bwbh=:bwbh');
      sql.Add('order by xtbwylshiping.XTCC');
      active:=true;
      Button1.Enabled:=false;
      Button2.Enabled:=true;
      Button3.Enabled:=false;
      Button4.Enabled:=false;
      Button5.Enabled:=true;
      Button6.Enabled:=true;
    end;
  end
  else   //如果shipping還沒產生,則使用量顯示為0
  begin
  with query2 do
    begin
      active:=false;
      sql.Clear;
      sql.Add('select DDZLs.DDBH, DDZLs.cc, ddzls.Quantity, convert(float,0) as CLSL, xtbwyl1.bwbh');
      sql.Add('from DDZLs');
      sql.add('left join ddzl on DDZL.DDBH = DDZLs.DDBH');
      sql.Add('left join xtbwyl1 on DDZL.XieXing = xtbwyl1.XieXing and DDZL.SheHao = xtbwyl1.SheHao');
      sql.Add('  and DDZLs.CC = xtbwyl1.XTCC');
      sql.Add('where DDZLs.DDBH=:ddbh and xtbwyl1.bwbh=:bwbh');
      sql.Add('order by DDZLs.cc');
      active:=true;
      Button1.Enabled:=true;
      Button2.Enabled:=false;
      Button3.Enabled:=false;
      Button4.Enabled:=false;
      Button5.Enabled:=false;
      Button6.Enabled:=false;
    end;
  end; }
end;

procedure TShipbom.FTChange(Sender: TObject);
begin
  with qtemp do
  begin
    Active:=false;
    sql.Clear;
    sql.add('select ddbh from ddzl where ');
    sql.add('   gsbh='+''''+ft.Text+'''');
    sql.add('   and shipdate>='+''''+datetostr(sd.Date)+'''');
    sql.add('   and shipdate<'+''''+datetostr(Ed.Date+1)+'''');
    sql.add('   order by ddbh');
    active:=true;
  end;
  if qtemp.RecordCount > 0 then
  begin
    qtemp.First;
    rys.Clear;
    while not qtemp.Eof do
    begin
      rys.Items.Add(qtemp.FieldByName('ddbh').Value);
      qtemp.Next;
    end;
    rys.ItemIndex:=0;
  end;
end;

procedure TShipbom.RYSChange(Sender: TObject);
begin
  query1.Active:=false;
  query2.Active:=false;
  Button7.Enabled:=true;
  with query1 do  //查詢Spec是否已被修改過
  begin
    sql.clear;
    sql.add('select BomExport.ZLBH as DDBH,BomExport.xh,BomExport.BWBH,BomExport.CLBH,');
    sql.add('       BomExport.MJBH,BomExport.CLSL,BomExport.USAGE,BomExport.YWSM as BWMCY,max(CLZL.ywpm) AS CLMCY,');
    sql.add('       max(CLZL.dwbh) AS dwbh,BomExport.LOSS,clzl.cqdh,BomExport.JGYWSM,BomExport.XieXing,');
    sql.add('       BomExport.SheHao');
    sql.add('from BomExport');
    sql.add('left join clzl on BomExport.CLBH=clzl.cldh');
    sql.add('where BomExport.ZLBH=:ZLBH');
    sql.add('group by BomExport.ZLBH,BomExport.xh,BomExport.BWBH,BomExport.CLBH,');
    sql.add('         BomExport.MJBH,BomExport.CLSL,BomExport.USAGE,BomExport.YWSM,BomExport.LOSS,BomExport.JGYWSM,');
    sql.add('         BomExport.XieXing,BomExport.SheHao,clzl.cqdh');
    sql.add('order by BomExport.BWBH');
    Params[0].Value:=rys.Text;
    Active:=true;
  end;
  if query1.RecordCount <1 then //如果沒被修改過,則使用原始spec資料
  begin
    with query1 do
    begin
      Active:=false;
      sql.Clear;
      sql.Text:=memo1.Text;
      Params[0].Value:=rys.Text;
      active:=true;
    end;
  end;

  with query2 do //查詢RY是否已被計算過
  begin
    sql.Clear;
    sql.Add('select xtbwylshiping.DDBH, xtbwylshiping.XTCC as CC, DDZLs.Quantity, xtbwylshiping.CLSL, xtbwylshiping.bwbh');
    sql.Add('from xtbwylshiping');
    sql.Add('left join DDZLs on xtbwylshiping.DDBH = DDZLs.DDBH and xtbwylshiping.XTCC = DDZLs.CC');
    sql.Add('where xtbwylshiping.DDBH=:ddbh and xtbwylshiping.bwbh=:bwbh');
    sql.Add('order by xtbwylshiping.XTCC');
    active:=true;
  end;

  if (query2.FieldByName('ddbh').Value) = rys.Text then //如果shipping BOM已產生,則使用Shiping bom資料
  begin
  with query2 do
    begin
      Button1.Enabled:=false;
      Button2.Enabled:=true;
      Button3.Enabled:=false;
      Button4.Enabled:=false;
      Button5.Enabled:=true;
    end;
  end
  else   //如果shipping還沒產生,則使用量顯示為0
  begin
  with query2 do
    begin
      active:=false;
      sql.Clear;
      sql.Add('select DDZLs.DDBH, DDZLs.cc, ddzls.Quantity, convert(float,0) as CLSL, xtbwyl1.bwbh');
      sql.Add('from DDZLs');
      sql.add('left join ddzl on DDZL.DDBH = DDZLs.DDBH');
      sql.Add('left join xtbwyl1 on DDZL.XieXing = xtbwyl1.XieXing and DDZL.SheHao = xtbwyl1.SheHao');
      sql.Add('  and DDZLs.CC = xtbwyl1.XTCC');
      sql.Add('where DDZLs.DDBH=:ddbh and xtbwyl1.bwbh=:bwbh');
      sql.Add('order by DDZLs.cc');
      active:=true;
      Button1.Enabled:=true;
      Button2.Enabled:=false;
      Button3.Enabled:=false;
      Button4.Enabled:=false;
      Button5.Enabled:=false;
    end;
  end;
end;

procedure TShipbom.Button1Click(Sender: TObject);
Var
usage:double;
begin
  usage:=0;
  Button1.Enabled:=false;
  Button2.Enabled:=true;
  Button3.Enabled:=false;
  Button4.Enabled:=false;
  Button5.Enabled:=true;
  rys.Enabled:=false;
  //顯示於DBGrid的Spec資料為包含越南採購與用量為0,但計算用量時不會計算到 Edit by Gary 2013.08.21
  query3.Active:=true; //計算單位用量使用
  query4.Active:=true; //計算單位用量使用
  query3.First;
  query4.First;
  while not query3.Eof do
  begin
    if query3.FieldByName('size').Value = 'ZZZZZZ' then //材料沒分段的MRP單位用量計算
    begin
      if query4.Locate('bwbh',query3.FieldByName('bwbh').Value,[]) then
      begin
        while not query4.Eof and ((query3.FieldByName('bwbh').Value) = (query4.FieldByName('bwbh').Value)) do
        begin
          usage:=0;
          usage:=((query4.FieldByName('CLSLtotal').Value/
            query4.FieldByName('total').Value)*query3.FieldByName('CLSL').Value)/
            query4.FieldByName('Quantity').Value;
          with Qtemp2 do
          begin
            sql.Clear;
            sql.Add('insert into xtbwylshiping ');
            sql.Add('values ( ');
            sql.Add(''''+query3.FieldByName('ddbh').Value+''''+',');
            sql.Add('1'+',');
            sql.Add(''''+query3.FieldByName('BWBH').Value+''''+',');
            sql.Add(''''+query4.FieldByName('cc').Value+''''+',');
            sql.Add(''+FloatToStr(usage)+''+',');
            sql.Add(''''+main.edit1.text+''''+',');
            sql.Add('convert(smalldatetime,GETDATE(),111)'+',');
            sql.Add(''+''''+IntToStr(1)+''''+')');
            ExecSQL;
          end;
          query4.Next;
        end;
        query3.Next;
      end
      else
      begin

      end;
    end
    else
    begin
      if query4.Locate('bwbh;cc',VarArrayOf([query3.FieldByName('bwbh').Value,
        query3.FieldByName('SIZE').Value]),[]) then //材料有分段的MRP單位用量計算
      begin
        usage:=0;
        usage:=query3.FieldByName('CLSL').Value/query4.FieldByName('Quantity').Value;
        with Qtemp2 do
        begin
          sql.Clear;
          sql.Add('insert into xtbwylshiping ');
          sql.Add('values ( ');
          sql.Add(''''+query3.FieldByName('ddbh').Value+''''+',');
          sql.Add('1'+',');
          sql.Add(''''+query3.FieldByName('BWBH').Value+''''+',');
          sql.Add(''''+query4.FieldByName('cc').Value+''''+',');
          sql.Add(''+FloatToStr(usage)+''+',');
          sql.Add(''''+main.edit1.text+''''+',');
          sql.Add('convert(smalldatetime,GETDATE(),111)'+',');
          sql.Add(''+''''+IntToStr(1)+''''+')');
          ExecSQL;
        end;
        query3.Next;
      end
      else
      begin

      end;
    end;
  end;
  with query2 do //重新產生子表資料資料來源為xtbwylshiping
  begin
    active:=false;
    sql.Clear;
    sql.Add('select xtbwylshiping.DDBH, xtbwylshiping.XTCC as CC, DDZLs.Quantity, xtbwylshiping.CLSL, xtbwylshiping.bwbh');
    sql.Add('from xtbwylshiping');
    sql.Add('left join DDZLs on xtbwylshiping.DDBH = DDZLs.DDBH and xtbwylshiping.XTCC = DDZLs.CC');
    sql.Add('where xtbwylshiping.DDBH=:ddbh and xtbwylshiping.bwbh=:bwbh');
    sql.Add('order by xtbwylshiping.XTCC');
    active:=true;
  end;
  query3.Active:=false;
  query4.Active:=false;

  showmessage('Calculate completed!');
  rys.Enabled:=true;
end;

procedure TShipbom.Button3Click(Sender: TObject);
begin
  if edit1.Text='1' then
  begin
    DBGrid1.Columns[4].Color:=clWindow;
    DBGrid1.Columns[4].ReadOnly:=true;
    DBGrid1.Columns[5].Color:=clWindow;
    DBGrid1.Columns[5].ReadOnly:=true;
    FT.Enabled:=true;
    sd.Enabled:=true;
    ed.Enabled:=true;
    Button2.Enabled:=true;
    Button3.Enabled:=false;
    Button4.Enabled:=false;
    Button5.Enabled:=true;
    Button7.Enabled:=true;
    rys.Enabled:=true;
    query1.First;
    with query6 do //先清空存在於BomExport資料
    begin
      Active:=false;
      SQL.Clear;
      sql.Add('delete BomExport');
      sql.add('where zlbh=:ZLBH');
      Params[0].Value:=rys.Text;
      execsql;
    end;
    Query6.SQL.Clear;
    while not query1.Eof do  //將修改的單位用量寫入BomExport
    begin
      with query6 do
      begin
        sql.Add('insert into BomExport values(');
        sql.add(''+''''+FT.Text+''''+','+''''+RYS.Text+''''+','+''''+DBGrid1.Fields[0].AsString+''''+','+''''+DBGrid1.Fields[1].AsString+''''+',');
        sql.add(''+''''+DBGrid1.Fields[2].AsString+''''+','+''''+DBGrid1.Fields[3].AsString+''''+','+''''+DBGrid1.Fields[4].AsString+''''+',');
        sql.add(''+''''+DBGrid1.Fields[5].AsString+''''+','''+StringReplace(DBGrid1.Fields[6].AsString, '''', '''''',[rfReplaceAll, rfIgnoreCase])+''''+',');
        if DBGrid1.Fields[9].Value = null then
        begin
          sql.Add('null,');
        end
        else
        begin
          sql.Add(''+''''+DBGrid1.Fields[9].AsString+''''+',');
        end;
        if DBGrid1.Fields[11].Value = null then
        begin
          sql.Add('null,');
        end
        else
        begin
          sql.Add(''+''''+DBGrid1.Fields[11].AsString+''''+',');
        end;
        sql.add(''+''''+DBGrid1.Fields[12].AsString+''''+','+''''+DBGrid1.Fields[13].AsString+''''+',');
        sql.Add(''+''''+main.Edit1.Text+''''+',getdate())');
      end;
      query1.Next;
    end;
    //memo2.Text:=query6.SQL.Text;
    query6.ExecSQL;
    DBGrid2.Enabled:=true;
    query1.CachedUpdates:=false;
    query1.RequestLive:=false;
    with query1 do  //重新啟動Query1
    begin
      active:=false;
      sql.Clear;
      sql.add('select BomExport.ZLBH as DDBH,BomExport.xh,BomExport.BWBH,BomExport.CLBH,');
      sql.add('       BomExport.MJBH,BomExport.CLSL,BomExport.USAGE,BomExport.YWSM as BWMCY,max(CLZL.ywpm) AS CLMCY,');
      sql.add('       max(CLZL.dwbh) AS dwbh,BomExport.LOSS,clzl.cqdh,BomExport.JGYWSM,BomExport.XieXing,');
      sql.add('       BomExport.SheHao');
      sql.add('from BomExport');
      sql.add('left join clzl on BomExport.CLBH=clzl.cldh');
      sql.add('where BomExport.ZLBH=:ZLBH');
      sql.add('group by BomExport.ZLBH,BomExport.xh,BomExport.BWBH,BomExport.CLBH,');
      sql.add('         BomExport.MJBH,BomExport.CLSL,BomExport.USAGE,BomExport.YWSM,BomExport.LOSS,BomExport.JGYWSM,');
      sql.add('         BomExport.XieXing,BomExport.SheHao,clzl.cqdh');
      sql.add('order by BomExport.BWBH');
      Params[0].Value:=rys.Text;
      Active:=true;
    end;
  end;

  if edit1.Text='2' then
  begin
    DBGrid2.Columns[2].Color:=clWindow;
    DBGrid2.Columns[2].ReadOnly:=true;
    FT.Enabled:=true;
    sd.Enabled:=true;
    ed.Enabled:=true;
    Button2.Enabled:=true;
    Button3.Enabled:=false;
    Button4.Enabled:=false;
    Button5.Enabled:=true;
    Button6.Enabled:=true;
    Button7.Enabled:=true;
    rys.Enabled:=true;
    query2.First;
    query5.Active:=false;
    query5.SQL.Clear;

    while not query2.Eof do  //將修改的單位用量寫入xtbwylshiping
    begin
      with query5 do
      begin
        sql.Add('update xtbwylshiping set CLSL = '''+DBGrid2.Fields[2].AsString+'''');
        sql.Add('where DDBH=:ddbh and BWBH=:bwbh and XTCC = '''+query2.FieldByName('CC').Value+'''');
      end;
      query2.Next;
    end;
    query5.ExecSQL;
    DBGrid1.Enabled:=true;
    query2.CachedUpdates:=false;
    query2.RequestLive:=false;
    query2.Active:=false; //重新啟動Query2
    query2.Active:=true;
  end;
end;


procedure TShipbom.Button2Click(Sender: TObject);
begin
  DBGrid1.Enabled:=false; //鎖定Query1避免使用者在編輯狀態下移動造成修改失敗
  DBGrid2.Columns[2].Color:=clYellow;
  DBGrid2.Columns[2].ReadOnly:=false;
  edit1.Text:='2';
  FT.Enabled:=false;
  sd.Enabled:=false;
  ed.Enabled:=false;
  Button1.Enabled:=false;
  Button2.Enabled:=false;
  Button3.Enabled:=true;
  Button4.Enabled:=true;
  Button5.Enabled:=false;
  Button7.Enabled:=false;
  rys.Enabled:=false;
  query2.CachedUpdates:=true;
  query2.RequestLive:=true;
  query2.Edit;
end;

procedure TShipbom.Button4Click(Sender: TObject);
begin
  if edit1.Text='1' then
  begin
    DBGrid2.Enabled:=true;
    DBGrid1.Columns[4].Color:=clWindow;
    DBGrid1.Columns[4].ReadOnly:=true;
    DBGrid1.Columns[5].Color:=clWindow;
    DBGrid1.Columns[5].ReadOnly:=true;
    FT.Enabled:=true;
    sd.Enabled:=true;
    ed.Enabled:=true;
    Button2.Enabled:=true;
    Button3.Enabled:=false;
    Button4.Enabled:=false;
    Button5.Enabled:=true;
    Button7.Enabled:=true;
    rys.Enabled:=true;
    query1.CachedUpdates:=false;
    query1.RequestLive:=false;
  end;
  if edit1.Text='2' then
  begin
    DBGrid1.Enabled:=true;
    DBGrid2.Columns[2].Color:=clWindow;
    DBGrid2.Columns[2].ReadOnly:=true;
    FT.Enabled:=true;
    sd.Enabled:=true;
    ed.Enabled:=true;
    Button2.Enabled:=true;
    Button3.Enabled:=false;
    Button4.Enabled:=false;
    Button5.Enabled:=true;
    Button6.Enabled:=true;
    Button7.Enabled:=true;
    rys.Enabled:=true;
    query2.CachedUpdates:=false;
    query2.RequestLive:=false;
  end;
end;

procedure TShipbom.Button5Click(Sender: TObject);
var
      BomeclApp,BomWorkBook:olevariant;
      i,j:integer;

begin
  ExcelTemp.Active:=true; //query訂單Size run資料
  ExcelTemp.First;
  with ExcelTemp2 do  //query部件各尺碼單位用量
  begin
    active:=false;
    sql.clear;
    sql.add('select xtbwylshiping.BWBH, bwzl.ywsm');
    while not ExcelTemp.eof do
    begin
      sql.add(',max(case when xtbwylshiping.XTCC='+''''+ExcelTemp.fieldbyname('CC').asstring+'''');
      sql.add(' then xtbwylshiping.CLSL end ) as '+''''+ExcelTemp.fieldbyname('CC').asstring+'''');
      ExcelTemp.Next;
    end;
    sql.add('from xtbwylshiping ');
    sql.Add('left join bwzl on xtbwylshiping.BWBH = bwzl.bwdh');
    sql.add('where DDBH=:DDBH');
    sql.add('group by xtbwylshiping.BWBH, bwzl.ywsm');
    sql.add('order by xtbwylshiping.BWBH');
    Active:=true;
  end;

  if ExcelTemp2.recordcount=0 then
  begin
    showmessage('No record.');
    abort;
  end;

  try
    BomeclApp:=CreateOleObject('Excel.Application');
    BomWorkBook:=CreateOleObject('Excel.Sheet');
  except
    Application.MessageBox('NO Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
    Exit;
  end;

  ExcelTemp.First;
  ExcelTitle.Active:=true; //open Excel的titlememo query
  try
    BomWorkBook:=BomeclApp.workbooks.Add;
    Bomeclapp.workbooks[1].sheets[1].name:=ExcelTemp.fields[1].Value;  //放入Sheet的名子
    BomeclApp.workbooks[1].sheets[1].Cells(1,1):='CONG TY TNHH TY XUAN';
    BomeclApp.workbooks[1].sheets[1].Cells.Cells.item[1,1].font.size:='16';
    BomeclApp.workbooks[1].sheets[1].Range['A1','N1'].HorizontalAlignment := $FFFFEFF4; //跨欄置中
    BomeclApp.workbooks[1].sheets[1].Range['A1','N1'].VerticalAlignment := $FFFFEFF4;
    BomeclApp.workbooks[1].sheets[1].Range['A1:N1'].Merge; //合併Excel儲存格
    BomeclApp.workbooks[1].sheets[1].Cells(3,1):='ORDER#:'+''+ExcelTitle.fields[1].Value+'';
    BomeclApp.workbooks[1].sheets[1].Cells.Cells.item[3,1].font.size:='8';
    BomeclApp.workbooks[1].sheets[1].Range['A3:B3'].Merge;
    BomeclApp.workbooks[1].sheets[1].Cells(4,1):='PO#:'+''+ExcelTitle.fields[6].Value+'';
    BomeclApp.workbooks[1].sheets[1].Cells.Cells.item[4,1].font.size:='8';
    BomeclApp.workbooks[1].sheets[1].Range['A4:B4'].Merge;
    BomeclApp.workbooks[1].sheets[1].Cells(5,1):='CUST:'+''+ExcelTitle.fields[29].Value+'';
    BomeclApp.workbooks[1].sheets[1].Cells.Cells.item[5,1].font.size:='8';
    BomeclApp.workbooks[1].sheets[1].Range['A5:B5'].Merge;
    BomeclApp.workbooks[1].sheets[1].Cells(6,1):='DEST:'+''+ExcelTitle.fields[30].Value+'';
    BomeclApp.workbooks[1].sheets[1].Cells.Cells.item[6,1].font.size:='8';
    BomeclApp.workbooks[1].sheets[1].Range['A6:B6'].Merge;
    BomeclApp.workbooks[1].sheets[1].Cells(3,4):='ARTNAME:'+''+ExcelTitle.fields[17].Value+'';
    BomeclApp.workbooks[1].sheets[1].Cells.Cells.item[3,4].font.size:='8';
    BomeclApp.workbooks[1].sheets[1].Range['D3:H3'].Merge;
    BomeclApp.workbooks[1].sheets[1].Cells(4,4):='ARTICLE:'+''+ExcelTitle.fields[4].Value+'';
    BomeclApp.workbooks[1].sheets[1].Cells.Cells.item[4,4].font.size:='8';
    BomeclApp.workbooks[1].sheets[1].Range['D4:H4'].Merge;
    BomeclApp.workbooks[1].sheets[1].Cells(5,4):='COLOR:'+''+ExcelTitle.fields[2].Value+'';
    BomeclApp.workbooks[1].sheets[1].Cells.Cells.item[5,4].font.size:='8';
    BomeclApp.workbooks[1].sheets[1].Range['D5:H5'].Merge;
    BomeclApp.workbooks[1].sheets[1].Cells(6,4):='COLOR DESC:'+''+ExcelTitle.fields[18].Value+'';
    BomeclApp.workbooks[1].sheets[1].Cells.Cells.item[6,4].font.size:='8';
    BomeclApp.workbooks[1].sheets[1].Range['D6:H6'].Merge;
    BomeclApp.workbooks[1].sheets[1].Cells(3,10):='ETD:'+''+datetimetostr(ExcelTitle.fields[15].Value)+'';
    BomeclApp.workbooks[1].sheets[1].Cells.Cells.item[3,10].font.size:='8';
    BomeclApp.workbooks[1].sheets[1].Range['J3:N3'].Merge;
    BomeclApp.workbooks[1].sheets[1].Cells(4,10):='STA SIZE:'+''+ExcelTitle.fields[19].Value+'';
    BomeclApp.workbooks[1].sheets[1].Cells.Cells.item[4,10].font.size:='8';
    BomeclApp.workbooks[1].sheets[1].Range['J4:N4'].Merge;
    BomeclApp.workbooks[1].sheets[1].Cells(5,10):='LAST:'+''+ExcelTitle.fields[21].Value+'';
    BomeclApp.workbooks[1].sheets[1].Cells.Cells.item[5,10].font.size:='8';
    BomeclApp.workbooks[1].sheets[1].Range['J5:N5'].Merge;
    BomeclApp.workbooks[1].sheets[1].Cells(6,10):='CUT DIE:'+''+ExcelTitle.fields[27].Value+'';
    BomeclApp.workbooks[1].sheets[1].Cells.Cells.item[6,10].font.size:='8';
    BomeclApp.workbooks[1].sheets[1].Range['J6:N6'].Merge;
    BomeclApp.workbooks[1].sheets[1].Cells(7,1):='Patr No';
    BomeclApp.workbooks[1].sheets[1].Cells(7,2):='Description';
    for   i:=1   to   ExcelTemp.RecordCount   do
    begin
      BomeclApp.workbooks[1].sheets[1].Cells(7,i+2):=ExcelTemp.fields[0].Value; //放入第一列
      ExcelTemp.Next;
    end;

    j:=8;
    ExcelTemp.First;
    while   not   ExcelTemp2.Eof   do  //單位用量逐行放入Excel表
    begin
      for   i:=0   to   ExcelTemp2.FieldCount-1   do
      begin
        BomeclApp.workbooks[1].sheets[1].Cells(j,i+1):=ExcelTemp2.Fields[i].Value;
        BomeclApp.workbooks[1].sheets[1].Cells.Cells.item[j,i+1].font.size:='8';
      end;
      ExcelTemp2.Next;
      inc(j);
    end;  //結束while loop

      Bomeclapp.columns.autofit;
      showmessage('Succeed.');
      BomeclApp.Visible:=True;
    except
    on   F:Exception   do
      showmessage(F.Message);
    end;
    ExcelTemp.Active:=false;
end;

procedure TShipbom.Button6Click(Sender: TObject);
var
a:string;
i:integer;
begin
  PSpecPrintss:=TPSpecPrintss.create(nil);
  PSpecPrintss.QRCompositeReport1.prepare;
  i:=PSpecPrintss.QuickRep2.QRPrinter.pagecount ;
  PSpecPrintss.PageN1.Caption:='/  '+inttostr(i);
  PSpecPrintss.PageN2.Caption:='/  '+inttostr(i);
  PSpecPrintss.PageN3.Caption:='/  '+inttostr(i);
  PSpecPrintss.Fac1.Caption:=PSpecPrintss.Fac1.Caption+main.Edit1.Text;
  PSpecPrintss.Fac2.Caption:=PSpecPrintss.Fac2.Caption+main.Edit1.Text;
  PSpecPrintss.Fac3.Caption:=PSpecPrintss.Fac3.Caption+main.Edit1.Text;
  PSpecPrintss.QRCompositeReport1.Preview;
end;

procedure TShipbom.Button7Click(Sender: TObject);
begin
  DBGrid2.Enabled:=false; //鎖定Query1避免使用者在編輯狀態下移動造成修改失敗
  DBGrid1.Columns[4].Color:=clYellow;
  DBGrid1.Columns[4].ReadOnly:=false;
  DBGrid1.Columns[5].Color:=clYellow;
  DBGrid1.Columns[5].ReadOnly:=false;
  edit1.Text:='1';
  FT.Enabled:=false;
  sd.Enabled:=false;
  ed.Enabled:=false;
  Button1.Enabled:=false;
  Button2.Enabled:=false;
  Button3.Enabled:=true;
  Button4.Enabled:=true;
  Button5.Enabled:=false;
  Button7.Enabled:=false;
  rys.Enabled:=false;
  query1.CachedUpdates:=true;
  query1.RequestLive:=true;
  query1.Edit;
end;

end.
