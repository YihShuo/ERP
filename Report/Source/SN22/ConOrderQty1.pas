unit ConOrderQty1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GridsEh, DBGridEh, StdCtrls, Buttons, ExtCtrls, DB, DBTables,Dateutils
  ,Comobj;

type
  TConOrderQty = class(TForm)
    Panel1: TPanel;
    BB1: TBitBtn;
    bbt6: TBitBtn;
    QryPanel: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Label1: TLabel;
    QryBtn: TButton;
    STYea: TComboBox;
    STMon: TComboBox;
    EDYea: TComboBox;
    EDMon: TComboBox;
    GSBHCombo: TComboBox;
    ConDBGridEh: TDBGridEh;
    ConQry: TQuery;
    DS: TDataSource;
    tmpQry: TQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure BB1Click(Sender: TObject);
    procedure QryBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bbt6Click(Sender: TObject);
  private
    { Private declarations }
    procedure ExcelExport();
    procedure ExportExcleForA12();
  public
    { Public declarations }
  end;

var
  ConOrderQty: TConOrderQty;

implementation
  uses main1,FunUnit;
{$R *.dfm}

procedure TConOrderQty.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    Action:=Cafree;
end;

procedure TConOrderQty.FormDestroy(Sender: TObject);
begin
  ConOrderQty:=nil;
end;

procedure TConOrderQty.BB1Click(Sender: TObject);
begin
  QryPanel.Visible:=true;
end;

procedure TConOrderQty.QryBtnClick(Sender: TObject);
var STDateStr,EDDateStr,MDStr:string;
    Yi,Mi,Di,i:integer;
    tmpDate:TDateTime;
    //
    GSBHFilter:string;
begin
  ConDBGridEh.FrozenCols:=0;
  //日期範圍參數
  Yi:=strtoint(STYea.Text);
  Mi:=strtoint(STMon.Text);
  Di:=1;
  tmpDate:=EncodeDate(Yi,Mi,Di);
  STDateStr:=FormatDateTime('YYYY-MM-01',tmpDate);
  Yi:=strtoint(EDYea.Text);
  Mi:=strtoint(EDMon.Text);
  Di:=1;
  tmpDate:=EncodeDate(Yi,Mi,Di);
  EDDateStr:=FormatDateTime('YYYY-MM-DD',Endofthemonth(tmpDate));
  //
  //過濾廠區
  GSBHFilter:='	and DDZL.GSBH='''+GSBHCombo.Text+''' ';
  with ConQry do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('if object_id(''tempdb..#ConDQty'') is not null  ');
    SQL.Add('   begin   drop table #ConDQty end ');
    SQL.Add('select * into #ConDQty from( ');
    SQL.Add('  Select (Cast(Year(shipdate) as Varchar)+''/''+Cast(replace(STR(month(shipdate),2),'' '',''0'') as Varchar)) as MD,DDZL.GSBH,lbzls.ywsm as SB ,SUM(DDZL.Pairs) as Qty from DDZL  ');
    SQL.Add('	 left join lbzls on lbzls.lbdh=ddzl.ddgb and lbzls.lb=''06'' ');
    SQL.Add('  Where  DDZL.ShipDate>='''+STDateStr+''' and DDZL.ShipDate<='''+EDDateStr+''' and lbzls.ywsm is not null '+GSBHFilter);
    SQL.Add(' Group by YEAR(DDZL.ShipDate),Month(DDZL.ShipDate),DDZL.GSBH,lbzls.ywsm ');
    SQL.Add(' ) ConDQty order by MD ');
    SQL.Add('insert into #ConDQty ');
    SQL.Add('select ''ZTotal'' as MD,#ConDQty.GSBH,#ConDQty.SB ,sum(Qty) as Qty ');
    SQL.Add('from #ConDQty ');
    SQL.Add('group by #ConDQty.GSBH,#ConDQty.SB ');
    //funcObj.WriteErrorLog(sql.Text);
    ExecSQL();
  end;
  //
  with tmpQry do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select * from #ConDQty order by MD');
    //funcObj.WriteErrorLog(sql.Text);
    Active:=true;
  end;
  //

  with ConQry do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select ConDQty.GSBH ,ConDQty.SB  ');
    //產生月份欄位列表
    while not tmpQry.Eof do
    begin
      if MDStr<>tmpQry.fieldByName('MD').AsString then
      begin
         SQL.Add('  ,sum(case  when MD='''+tmpQry.fieldByName('MD').AsString+''' ');
         SQL.Add('   then Qty else 0 end) as '''+tmpQry.fieldByName('MD').AsString+''' ');
         MDStr:=tmpQry.fieldByName('MD').AsString;
      end;
      tmpQry.Next;
    end;
    SQL.Add('from  (select #ConDQty.* from #ConDQty ');
    SQL.Add(') ConDQty');
    SQL.Add('group by   ConDQty.GSBH ,ConDQty.SB ');
    SQL.Add('order by   ConDQty.GSBH ,ConDQty.SB ');
    //funcObj.WriteErrorLog(sql.Text);
    Active:=true;
  end;
  //
  if ConQry.RecordCount>0 then
  begin
    with ConDBGridEh do
    begin
      FrozenCols:=2;
      columns[0].Width:=60;
      columns[0].title.caption:='廠區|GSBH';
      columns[1].Width:=120;
      columns[1].title.caption:='出貨國家|Country';
      for i:=2 to ConQry.FieldCount-2 do
          columns[i].title.caption:='月份|'+ConQry.Fields[i].FieldName;
      columns[i].title.caption:='小計|Total';
      columns[i].font.style:=[fsbold];
    end;
  end;
end;

procedure TConOrderQty.FormCreate(Sender: TObject);
var i,Yi,Mi,Di:word;
begin
  //初始化時間日期
  DecodeDate(Date(),Yi,Mi,Di);
  for i:=0 to STYea.Items.Count-1 do
  begin
    if  strtoint(STYea.Items[i])=Yi then
    begin
      STYea.ItemIndex:=i;
      EDYea.ItemIndex:=i;
      break;
    end;
  end;
  for i:=0 to EDMon.Items.Count-1 do
  begin
    if  strtoint(EDMon.Items[i])=Mi then
    begin
      EDMon.ItemIndex:=i;
      break;
    end;
  end;
  //
end;

procedure TConOrderQty.bbt6Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin
   if GSBHCombo.Text='VA12' then
   begin
     if MessageDlg('Export A12 Format xls',mtCustom,[mbYes,mbNo], 0)=mrYes then
        ExportExcleForA12() // A12格式xls
     else
        ExcelExport();
   end else
   begin
     ExcelExport();
   end;

end;
//一般 Export
procedure TConOrderQty.ExcelExport();
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin
    if  ConQry.active  then
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
          for   i:=0   to   ConQry.fieldcount-1   do
            begin
                eclApp.Cells(1,i+1):=ConQry.fields[i].FieldName;
            end;

          ConQry.First;
          j:=2;
          while   not   ConQry.Eof   do
            begin
              for   i:=0   to  ConQry.fieldcount-1  do
              begin
                eclApp.Cells(j,i+1):=ConQry.Fields[i].Value;
              end;
            ConQry.Next;
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
   //
end;
//VA12 輸出格式
procedure TConOrderQty.ExportExcleForA12();
var eclApp,WorkBook:olevariant;
    i,j:integer;
    CountryList,CountryValue:TStringlist;
begin
    if  ConQry.active  then
    begin
      try
        eclApp:=CreateOleObject('Excel.Application');
        WorkBook:=CreateOleObject('Excel.Sheet');
      except
        Application.MessageBox('No Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
        Exit;
      end;
      try
          CountryList:=TStringlist.Create;
          CountryValue:=TStringlist.Create;
          //
          CountryList.Add('USA美國'); CountryList.Add('B.V荷蘭'); CountryList.Add('Canada加拿大');
          CountryList.Add('China中國'); CountryList.Add('ARGENTINA阿根廷'); CountryList.Add('Australia澳大利亞');
          CountryList.Add('Brazil巴西'); CountryList.Add('BULGARIA保加利亞'); CountryList.Add('Chile智利');
          CountryList.Add('Cyprus賽普勒斯');CountryList.Add('Denmark丹麥'); CountryList.Add('France法國');
          CountryList.Add('Germany德國'); CountryList.Add('Greece希臘'); CountryList.Add('Hong Kong香港');
          CountryList.Add('Hungary匈牙利');CountryList.Add('India印度');CountryList.Add('Indonesia印尼');
          CountryList.Add('Israel以色列');CountryList.Add('Italy義大利');CountryList.Add('Kesbo');
          CountryList.Add('Korea韓國');CountryList.Add('Lebanon黎巴嫩');CountryList.Add('Mexico墨西哥');
          CountryList.Add('New zealand新西蘭');CountryList.Add('Panama巴拿馬');CountryList.Add('Paraguay巴拉圭');
          CountryList.Add('Peru秘魯'); CountryList.Add('Philippines菲律賓');CountryList.Add('Poland波蘭');
          CountryList.Add('Romania羅馬尼亞'); CountryList.Add('Saudi Arabia沙烏地阿拉伯');CountryList.Add('Singapore新加坡');
          CountryList.Add('Slovenia'); CountryList.Add('Spain西班牙');  CountryList.Add('Switzerland瑞士');
          CountryList.Add('Taiwan台灣'); CountryList.Add('Thailand');CountryList.Add('Turkey土耳其');
          CountryList.Add('UAE阿拉伯聯合大公國');CountryList.Add('URUGUAY烏拉圭');CountryList.Add('Vietnam越南');
          //
          CountryValue.Add('USA'); CountryValue.Add('NETHERLANDS B.V'); CountryValue.Add('CANADA');
          CountryValue.Add('CHINA'); CountryValue.Add('ARGENTINA'); CountryValue.Add('AUSTRALIA');
          CountryValue.Add('Brazil巴西'); CountryValue.Add('BULGARIA'); CountryValue.Add('CHILE');
          CountryValue.Add('Cyprus賽普勒斯'); CountryValue.Add('Denmark丹麥'); CountryValue.Add('France法國');
          CountryValue.Add('GERMANY'); CountryValue.Add('GREECE'); CountryValue.Add('HONG KONG');
          CountryValue.Add('Hungary匈牙利'); CountryValue.Add('INDIA'); CountryValue.Add('INDONESIA');
          CountryValue.Add('ISRAEL'); CountryValue.Add('ITALY'); CountryValue.Add('Kesbo');
          CountryValue.Add('KOREA'); CountryValue.Add('Lebanon黎巴嫩'); CountryValue.Add('MEXICO');
          CountryValue.Add('NETHERLANDS'); CountryValue.Add('PANAMA'); CountryValue.Add('Paraguay巴拉圭');
          CountryValue.Add('PERU'); CountryValue.Add('PHILIPPINE'); CountryValue.Add('POLAND');
          CountryValue.Add('ROMANIA'); CountryValue.Add('SAUDI ARABIA'); CountryValue.Add('SINGAPORE');
          CountryValue.Add('SLOVENIA'); CountryValue.Add('Spain西班牙'); CountryValue.Add('Switzerland瑞士');
          CountryValue.Add('TAIWAN'); CountryValue.Add('THAILAND'); CountryValue.Add('TURKEY');
          CountryValue.Add('UNITED ARAB EMIRATES'); CountryValue.Add('URUGUAY烏拉圭'); CountryValue.Add('VIETNAM');
          //
          WorkBook:=eclApp.workbooks.Add;
          for   i:=0   to   CountryList.count-1 do
          begin
            eclApp.Cells(i+1,1):=CountryList.Strings[i];
            if ConQry.Locate('SB',CountryValue.Strings[i],[]) then
              eclApp.Cells(i+1,2):=ConQry.FieldByName('ZTotal').AsString
            else
              eclApp.Cells(i+1,2):='0';
            //
            //外框線
            eclApp.Range[eclApp.Cells[i+1,1],eclApp.Cells[i+1,2]].Borders[1].weight:=2; //上面框線
            eclApp.Range[eclApp.Cells[i+1,1],eclApp.Cells[i+1,2]].Borders[2].weight:=2; //上面框線
            eclApp.Range[eclApp.Cells[i+1,1],eclApp.Cells[i+1,2]].Borders[3].weight:=2; //上面框線
            eclApp.Range[eclApp.Cells[i+1,1],eclApp.Cells[i+1,2]].Borders[4].weight:=2; //上面框線
          end;
          //字體和背景
          eclApp.Range[eclApp.Cells[1,1],eclApp.Cells[i,2]].interior.color:=$00CCFFCC;
          eclApp.Range[eclApp.Cells[1,1],eclApp.Cells[i,2]].Font.Size:=10;
          //
          eclapp.columns.autofit;
          //
          CountryList.free;
          CountryValue.free;
          showmessage('Succeed');
          eclApp.Visible:=True;
      except
          on   F:Exception   do
            showmessage(F.Message);
      end;
    end;
end;
//
end.
