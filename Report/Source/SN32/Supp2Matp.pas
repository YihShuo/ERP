unit Supp2Matp;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DB, GridsEh, DBGridEh, DBTables, StdCtrls, ComObj,
  Buttons;

type
  TSupp2Mat = class(TForm)
    Panel1: TPanel;
    Supp2Mat: TQuery;
    Supp2MatGrid: TDBGridEh;
    Supp2Mat_DS: TDataSource;
    BtnQry: TButton;
    Label1: TLabel;
    ZSJC: TEdit;
    BUYNOLabel: TLabel;
    BuyNo: TEdit;
    Supp2MatDDBH: TStringField;
    Supp2MatBUYNO: TStringField;
    Supp2MatCSBH: TStringField;
    Supp2MatZSJC: TStringField;
    Supp2MatCLBH: TStringField;
    Supp2MatYWPM: TStringField;
    Label8: TLabel;
    CYear: TComboBox;
    CMonth: TComboBox;
    Label9: TLabel;
    Panel2: TPanel;
    BB1: TBitBtn;
    bbt6: TBitBtn;
    Supp2MatArticle: TStringField;
    Supp2MatPairs: TIntegerField;
    Supp2MatXieXing: TStringField;
    Supp2MatSheHao: TStringField;
    DDBHGrp: TCheckBox;
    procedure BtnQryClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure bbt6Click(Sender: TObject);
    procedure BB1Click(Sender: TObject);
  private
    { Private declarations }
    procedure Init();
  public
    { Public declarations }

  end;

var
  Supp2Mat: TSupp2Mat;

implementation
  uses main1,FunUnit;
{$R *.dfm}

procedure TSupp2Mat.Init();
var myYear, myMonth, myDay : Word;
    i:integer;
begin
  {
  //系統帶入Shipdate選項
  DecodeDate(Date(), myYear, myMonth, myDay);
  //
  for i:=0 to CYear.items.Count-1 do
  begin
    if strtoint(CYear.Items[i])=myYear then
    begin
      CYear.ItemIndex:=i;
      break;
    end;
  end;
  }
  //
  if main.sGSBH='VA12' then
  begin
    BUYNO.Visible:=true;
    BUYNOLabel.visible:=true;
    Supp2MatGrid.Columns[0].Visible:=true;
  end;
end;
procedure TSupp2Mat.BtnQryClick(Sender: TObject);
begin
  if ZSJC.Text='' then
  begin
    Showmessage('Please input ZSJC!');
    exit;
  end;
  //
  with Supp2Mat do
  begin
     Active:=false;
     SQL.Clear;
     SQL.Add('select DDZL.DDBH,DDZL.Article,DDZL.XieXing,DDZL.SheHao,DDZL.Pairs,DDZL.BUYNO,ZLZLS2.CSBH,ZSZL.ZSJC,ZLZLS2.CLBH,CLZL.YWPM from ZLZLS2 ');
     SQL.Add('left join DDZL on (ZLZLS2.ZLBH=DDZL.DDBH) ');
     SQL.Add('left join CLZL on ZLZLS2.CLBH=CLZL.CLDH ');
     SQL.Add('left join ZSZL on ZLZLS2.CSBH=ZSZL.ZSDH ');
     SQL.Add('where (ZSZL.ZSJC like ''%'+ZSJC.Text+'%'' ');
     if cyear.ItemIndex <> 0 then
       sql.add('      and year(DDZL.Shipdate)='+''''+cyear.Text+'''');  //出貨年
     if cmonth.ItemIndex <> 0 then
       sql.add('      and month(DDZL.Shipdate)='+''''+cmonth.text+'''');  //出貨月
     SQL.Add(' and (DDZL.KHBH in ( ');
     SQL.Add(' select KFDH from KFZL where KFDH in (select KHBH from DDZL where ShipDate>GetDate()-360 and GSBH='''+main.sGSBH+'''  group by KHBH) and KFQM is not null ');
     SQL.Add(' ) )) ');
     if BuyNo.Text<>'' then
       SQL.Add(' and (DDZL.BUYNO like ''%'+BuyNo.Text+'%'') ');
     SQL.Add('Group by DDZL.DDBH,DDZL.Article,DDZL.XieXing,DDZL.SheHao,DDZL.Pairs,DDZL.BUYNO,ZLZLS2.CSBH,ZSZL.ZSJC,ZLZLS2.CLBH,CLZL.YWPM  ');
     SQL.Add('order by DDZL.BUYNO,DDZL.DDBH,ZLZLS2.CLBH ');
     Active:=true;
  end;
  //
  Panel1.Visible:=false;
end;

procedure TSupp2Mat.FormCreate(Sender: TObject);
begin
  Init();
end;

procedure TSupp2Mat.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TSupp2Mat.FormDestroy(Sender: TObject);
begin
 Supp2Mat:=nil;
end;

procedure TSupp2Mat.bbt6Click(Sender: TObject);
var
  eclApp,workBook:olevariant;
  i,j,iFields:integer;
  //
  DDBH,tmpStr:String;
  DDBH_S,DDBH_E:integer;
const
  aColW:array[0..9] of integer=(10,10,10,10,10,10,10,15,10,60);
begin

  if (Supp2Mat.Active = False) or (Supp2Mat.RecordCount = 0) then
  begin
    showmessage('No record.');
    exit;
  end;
  try
    eclApp:=CreateOleObject('Excel.Application');
    eclApp.DisplayAlerts := False;
    workBook:=CreateOleObject('Excel.Sheet');
    workBook:=eclApp.workbooks.Add;
    iFields:= Supp2Mat.FieldCount;
    //
    for i:=1 to iFields do
    begin
      eclApp.ActiveSheet.columns[i].ColumnWidth:=aColW[i-1];
      eclApp.Cells[1,i].interior.color:=clyellow;
      eclApp.Cells[1,i]:=Supp2MatGrid.Columns[i-1].Title.Caption;
      //
    end;
    eclApp.workbooks[1].sheets[1].Range[eclApp.workbooks[1].sheets[1].Cells[1,1],eclApp.workbooks[1].sheets[1].Cells[Supp2Mat.RecordCount+1,Supp2Mat.fieldcount]].NumberFormatLocal:='@';
    //
    Supp2Mat.First;
    j:=2;
    while not Supp2Mat.Eof do
    begin
        for i:=1 to iFields do eclApp.Cells[j,i]:=Supp2Mat.Fields[i-1].Value;
        inc(j);
        Supp2Mat.Next;
    end;
    //處理合併儲存格
    if DDBHGrp.Checked=true then
    begin
      DDBH:='';
      tmpStr:='';
      //
      for j:=2 to Supp2Mat.RecordCount+2 do
      begin
        tmpStr:=eclApp.workbooks[1].sheets[1].Cells[j,2];
        if DDBH='' then
        begin
          DDBH_S:=j;
          DDBH:=tmpStr;
          //funcObj.WriteErrorLog('DDBH_S:'+inttostr(DDBH_S));
        end;

        //合併
        if ( (tmpStr<>DDBH) and (DDBH<>'') ) then
        begin
          DDBH_E:=j-1;
          DDBH:=eclApp.workbooks[1].sheets[1].Cells[j,2];
          eclApp.workbooks[1].sheets[1].Range[eclApp.workbooks[1].sheets[1].Cells[DDBH_S,2],eclApp.workbooks[1].sheets[1].Cells[DDBH_E,2]].merge; //DDBH合併
          eclApp.workbooks[1].sheets[1].Range[eclApp.workbooks[1].sheets[1].Cells[DDBH_S,3],eclApp.workbooks[1].sheets[1].Cells[DDBH_E,3]].merge; //YWPM合併
          eclApp.workbooks[1].sheets[1].Range[eclApp.workbooks[1].sheets[1].Cells[DDBH_S,4],eclApp.workbooks[1].sheets[1].Cells[DDBH_E,4]].merge; //BWBH合併
          eclApp.workbooks[1].sheets[1].Range[eclApp.workbooks[1].sheets[1].Cells[DDBH_S,5],eclApp.workbooks[1].sheets[1].Cells[DDBH_E,5]].merge; //CGQty合併
          eclApp.workbooks[1].sheets[1].Range[eclApp.workbooks[1].sheets[1].Cells[DDBH_S,6],eclApp.workbooks[1].sheets[1].Cells[DDBH_E,6]].merge; //YPZLBH 合併
          eclApp.workbooks[1].sheets[1].Range[eclApp.workbooks[1].sheets[1].Cells[DDBH_S,7],eclApp.workbooks[1].sheets[1].Cells[DDBH_E,7]].merge; //CGNO 合併
          eclApp.workbooks[1].sheets[1].Range[eclApp.workbooks[1].sheets[1].Cells[DDBH_S,8],eclApp.workbooks[1].sheets[1].Cells[DDBH_E,8]].merge; //Usage合併
          //
          DDBH_S:=j;
        end;
      end; //End 檢查處理合併儲存格
    end;
    //
    eclApp.Visible:=True;
    eclApp := Unassigned;
  except
    on E:Exception do
    begin
      Application.MessageBox('No Install Microsoft Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
      Exit;
    end;
  end;
  //
end;

procedure TSupp2Mat.BB1Click(Sender: TObject);
begin
  Panel1.Visible:=true;
end;

end.
