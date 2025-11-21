unit SampleMergeRptP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GridsEh, DBGridEh, StdCtrls, Buttons, ExtCtrls, DB, DBTables, comobj;

type
  TSampleMergeRpt = class(TForm)
    Panel1: TPanel;
    LastMonth: TLabel;
    BB1: TBitBtn;
    bbt6: TBitBtn;
    Panel2: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    QryBtn: TButton;
    Grid_ypzlzls2: TDBGridEh;
    YPZLZLS2: TQuery;
    YPZLZLS2_DS: TDataSource;
    Grid_ZSZL: TDBGridEh;
    ZSZL: TQuery;
    ZSZL_DS: TDataSource;
    ZSZLzsdh: TStringField;
    ZSZLzsywjc: TStringField;
    Label2: TLabel;
    Edit2: TEdit;
    YPZLZLS2CLDH: TStringField;
    YPZLZLS2YWPM: TStringField;
    YPZLZLS2dwbh: TStringField;
    YPZLZLS2CLSL: TFloatField;
    YPZLZLS2DEVCODE: TStringField;
    YPZLZLS2YPZLBH: TStringField;
    YPZLZLS2FD: TStringField;
    YPZLZLS2XieMing: TStringField;
    YPZLZLS2JiJie: TStringField;
    YPZLZLS2BWBHMM: TStringField;
    YPZLZLS2CGNO: TStringField;
    YPZLZLS2CGQty: TCurrencyField;
    CK: TCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure BB1Click(Sender: TObject);
    procedure QryBtnClick(Sender: TObject);
    procedure bbt6Click(Sender: TObject);
  private
    { Private declarations }
    procedure ExportExcel();
  public
    { Public declarations }
  end;

var
  SampleMergeRpt: TSampleMergeRpt;

implementation
  uses FunUnit;
{$R *.dfm}

procedure TSampleMergeRpt.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=Cafree;
end;

procedure TSampleMergeRpt.FormDestroy(Sender: TObject);
begin
  SampleMergeRpt:=nil;
end;

procedure TSampleMergeRpt.BB1Click(Sender: TObject);
begin
  Panel2.Visible:=true;
end;

procedure TSampleMergeRpt.QryBtnClick(Sender: TObject);
begin
  with ZSZL do
  begin
     Active:=false;
     SQL.Clear;
     SQL.Add('select  zsdh,zsywjc from zszl where zsdh in ');
     SQL.Add('(select CSBH  from YPZLZLS2  ');
     SQL.Add(' where YPZLBH like ''%'+Edit1.Text+'%'' ');
     if trim(Edit2.Text)<>'' then
       SQL.Add(' and CLBH like ''%'+Edit2.Text+'%'' ');
     SQL.Add(' group by CSBH) and zsdh<>'''' ');
     Active:=true;
  end;
  //
  with YPZLZLS2 do
  begin
     Active:=false;
     SQL.Clear;
     SQL.Add('select YPZLZLS2.*,CGZLS.Qty as CGQty,CGZLS.CGNO from ( ');
     SQL.Add('select clzl.CLDH,clzl.YWPM,clzl.dwbh,IsNull(Sum(YPZLZLS2.CLSL),0) as CLSL,kfxxzl.DEVCODE,ypzlzls1.YPZLBH,kfxxzl.FD,kfxxzl.XieMing,kfxxzl.JiJie,YPZLZLS1.BWBHMM ');
     SQL.Add('from YPZLZLS2 ');
     SQL.Add('left join clzl on clzl.cldh=YPZLZLS2.CLBH ');
     SQL.Add('left join YPZL on YPZLZLS2.YPDH=YPZL.YPDH ');
     SQL.Add('left join kfxxzl on YPZL.XieXing = kfxxzl.XieXing and YPZL.SheHao = kfxxzl.SheHao ');
     SQL.Add('left join YPZLZLS1 on ypzlzls1.YPZLBH =YPZLZLS2.YPZLBH and YPZLZLS1.CLBH=YPZLZLS2.CLBH ');
     SQL.Add('where  YPZLZLS2.CLBH<>''NG'' and YPZLZLS2.CSBH=:ZSDH ');
     if trim(Edit1.Text)<>'' then
       SQL.Add(' and YPZLZLS2.YPZLBH like ''%'+Edit1.Text+'%'' ');
     if trim(Edit2.Text)<>'' then
       SQL.Add(' and YPZLZLS2.CLBH like ''%'+Edit2.Text+'%'' ');
     if CK.Checked=true then
       SQL.Add(' and YPZLZLS1.YN=''Y'' ');
     SQL.Add('group by ypzlzls1.YPZLBH,clzl.CLDH,clzl.YWPM,clzl.dwbh,kfxxzl.DEVCODE,kfxxzl.FD,kfxxzl.XieMing,kfxxzl.JiJie,YPZLZLS1.BWBHMM ');
     SQL.Add(') as YPZLZLS2 ');
     SQL.Add('left join CGZLS on CGZLS.CLBH=YPZLZLS2.CLDH and CGZLS.Memo=YPZLZLS2.YPZLBH ');
     //funcObj.WriteErrorLog(sql.Text);
     Active:=true;
  end;
  //
  Panel2.Visible:=false;
end;
//輸出Excel
procedure TSampleMergeRpt.ExportExcel();
var eclApp,WorkBook:olevariant;
    h,i,j,k:integer;
    ClumnWidth:array [0..11] of integer;
    //合併儲存格用
    tmpStr:string;
    CLBH,FieldValueStr:string;
    CLBH_S,CLBH_E:integer; //每個材料區塊起始和結束群組位置
    IsAllSame:boolean;
    //
    IsExportAllData:boolean;
begin
    IsExportAllData:=true;
    //判斷是否匯出全部
    if  Messagedlg(Pchar('Export special ZSZL?'),mtInformation,[mbNo,mbYes],0)=mrYes then
    begin
      IsExportAllData:=false;
    end;
    //
    if  YPZLZLS2.active  then
    begin
      try
        eclApp:=CreateOleObject('Excel.Application');
        eclApp.DisplayAlerts := False;
        WorkBook:=CreateOleObject('Excel.Sheet');
      except
        Application.MessageBox('No Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
        Exit;
      end;
      try
          WorkBook:=eclApp.workbooks.Add;
          //根據廠商筆數新增分頁
          if IsExportAllData=true then
          begin
            for i:=3 to ZSZL.RecordCount do
              eclapp.workbooks[1].sheets.add; //新增分頁
            //廠商Query
            ZSZL.First;
          end;
          //開始
          for h:=1 to  ZSZL.RecordCount do
          begin
              //抬頭欄位寬度設定
              ClumnWidth[0]:=12;  //CLBH
              ClumnWidth[1]:=30;  //YWPM
              ClumnWidth[2]:=5;   //Unit
              ClumnWidth[3]:=10;  //CLSL
              ClumnWidth[4]:=10;  //CGQty
              ClumnWidth[5]:=20;   //SR
              ClumnWidth[6]:=15;   //MergeNO
              ClumnWidth[7]:=15;  //CGNO
              ClumnWidth[8]:=10;   //Category(FD)
              ClumnWidth[9]:=20;   //XieXing
              ClumnWidth[10]:=7;   //JiJi
              ClumnWidth[11]:=50;  //BWBHMM(Usage)
              for   i:=0   to   YPZLZLS2.fieldcount-1   do
              begin
                eclApp.workbooks[1].sheets[h].Columns[i+1].ColumnWidth := ClumnWidth[i]; //欄位寬度
                eclApp.workbooks[1].sheets[h].Cells[1,i+1].HorizontalAlignment := -4108; //文字水平置中
                eclApp.workbooks[1].sheets[h].Cells(1,i+1):=Grid_ypzlzls2.Columns[i].Title.Caption; //抬頭名稱 YPZLZLS2.fields[i].FieldName;
              end;
              //抬頭顏色
              eclApp.workbooks[1].sheets[h].Range[eclApp.workbooks[1].sheets[h].Cells[1,1],eclApp.workbooks[1].sheets[h].Cells[1,i]].interior.color:=clSilver;
              //格式和自動換行
              eclApp.workbooks[1].sheets[h].Range[eclApp.workbooks[1].sheets[h].Cells[1,1],eclApp.workbooks[1].sheets[h].Cells[YPZLZLS2.RecordCount+1,YPZLZLS2.fieldcount]].Borders.weight:=2;
              eclApp.workbooks[1].sheets[h].Range[eclApp.workbooks[1].sheets[h].Cells[1,1],eclApp.workbooks[1].sheets[h].Cells[YPZLZLS2.RecordCount+1,YPZLZLS2.fieldcount]].NumberFormatLocal:='@';
              eclApp.workbooks[1].sheets[h].Range[eclApp.workbooks[1].sheets[h].Cells[1,1],eclApp.workbooks[1].sheets[h].Cells[YPZLZLS2.RecordCount+1,YPZLZLS2.fieldcount]].WrapText:=true;
              //資料
              YPZLZLS2.First;
              j:=2;
              while   not   YPZLZLS2.Eof   do
              begin
                  for   i:=0   to  YPZLZLS2.fieldcount-1  do
                  begin
                     eclApp.workbooks[1].sheets[h].Cells(j,i+1):=YPZLZLS2.Fields[i].asstring;
                  end;
                YPZLZLS2.Next;
                inc(j);
              end;

              //處理合併儲存格
              CLBH:='';
              tmpStr:='';
              //
              for j:=2 to YPZLZLS2.RecordCount+2 do
              begin
                tmpStr:=eclApp.workbooks[1].sheets[h].Cells[j,1];
                if CLBH='' then
                begin
                  CLBH_S:=j;
                  CLBH:=tmpStr;
                end;

                //合併
                if ( (tmpStr<>CLBH) and (CLBH<>'') ) then
                begin
                  CLBH_E:=j-1;
                  CLBH:=eclApp.workbooks[1].sheets[h].Cells[j,1];
                  eclApp.workbooks[1].sheets[h].Range[eclApp.workbooks[1].sheets[h].Cells[CLBH_S,1],eclApp.workbooks[1].sheets[h].Cells[CLBH_E,1]].merge; //CLBH合併
                  eclApp.workbooks[1].sheets[h].Range[eclApp.workbooks[1].sheets[h].Cells[CLBH_S,2],eclApp.workbooks[1].sheets[h].Cells[CLBH_E,2]].merge; //YWPM合併
                  eclApp.workbooks[1].sheets[h].Range[eclApp.workbooks[1].sheets[h].Cells[CLBH_S,3],eclApp.workbooks[1].sheets[h].Cells[CLBH_E,3]].merge; //BWBH合併
                  eclApp.workbooks[1].sheets[h].Range[eclApp.workbooks[1].sheets[h].Cells[CLBH_S,5],eclApp.workbooks[1].sheets[h].Cells[CLBH_E,5]].merge; //CGQty合併
                  eclApp.workbooks[1].sheets[h].Range[eclApp.workbooks[1].sheets[h].Cells[CLBH_S,7],eclApp.workbooks[1].sheets[h].Cells[CLBH_E,7]].merge; //YPZLBH 合併
                  eclApp.workbooks[1].sheets[h].Range[eclApp.workbooks[1].sheets[h].Cells[CLBH_S,8],eclApp.workbooks[1].sheets[h].Cells[CLBH_E,8]].merge; //CGNO 合併
                  eclApp.workbooks[1].sheets[h].Range[eclApp.workbooks[1].sheets[h].Cells[CLBH_S,12],eclApp.workbooks[1].sheets[h].Cells[CLBH_E,12]].merge; //Usage合併
                  //檢查SR(Devcode)
                  FieldValueStr:='';
                  IsAllSame:=true;
                  for i:=CLBH_S to CLBH_E do
                  begin
                    tmpStr:=eclApp.workbooks[1].sheets[h].Cells[i,6];
                    if FieldValueStr='' then FieldValueStr:=tmpStr;
                    if ((FieldValueStr<>'') and (FieldValueStr<>tmpStr)) then IsAllSame:=false;
                  end;
                  if IsAllSame=true then
                  begin
                    eclApp.workbooks[1].sheets[h].Range[eclApp.workbooks[1].sheets[h].Cells[CLBH_S,6],eclApp.workbooks[1].sheets[h].Cells[CLBH_E,6]].merge; //FD合併
                  end;
                  //檢查 FD  SheoName JiJi
                  for k:=9 to 11 do
                  begin
                    FieldValueStr:='';
                    IsAllSame:=true;
                    for i:=CLBH_S to CLBH_E do
                    begin
                      tmpStr:=eclApp.workbooks[1].sheets[h].Cells[i,k];
                      if FieldValueStr='' then FieldValueStr:=tmpStr;
                      if ((FieldValueStr<>'') and (FieldValueStr<>tmpStr)) then IsAllSame:=false;
                    end;
                    if IsAllSame=true then
                    begin
                      eclApp.workbooks[1].sheets[h].Range[eclApp.workbooks[1].sheets[h].Cells[CLBH_S,k],eclApp.workbooks[1].sheets[h].Cells[CLBH_E,k]].merge; //合併
                    end;
                  end;
                  //
                  CLBH_S:=j;
                end;
              end; //End 檢查處理合併儲存格

              //最後插入保留5各空白欄位
              eclApp.workbooks[1].sheets[h].Columns[6].Insert;
              eclApp.workbooks[1].sheets[h].Columns[6].Insert;
              eclApp.workbooks[1].sheets[h].Columns[6].Insert;
              eclApp.workbooks[1].sheets[h].Columns[6].Insert;
              eclApp.workbooks[1].sheets[h].Columns[6].Insert;
              eclApp.workbooks[1].sheets[h].Cells[1,6]:='Usage dev';
              eclApp.workbooks[1].sheets[h].Cells[1,7]:='Swatch';
              eclApp.workbooks[1].sheets[h].Cells[1,8]:='Usage for warehouse';
              eclApp.workbooks[1].sheets[h].Cells[1,9]:='Usage for warehouse +20%';
              eclApp.workbooks[1].sheets[h].Cells[1,10]:='Usage Tech team';
              //插入
              eclApp.workbooks[1].sheets[h].Rows[1].Insert; //插入標題
              eclApp.workbooks[1].sheets[h].Rows[1].Font.Size:=24;
              eclApp.workbooks[1].sheets[h].Rows[1].Font.Bold:=true;
              eclApp.workbooks[1].sheets[h].Range[eclApp.workbooks[1].sheets[h].Cells[1,1],eclApp.workbooks[1].sheets[h].Cells[1,12+5]].interior.color:=clyellow;
              eclApp.workbooks[1].sheets[h].Range[eclApp.workbooks[1].sheets[h].Cells[1,1],eclApp.workbooks[1].sheets[h].Cells[1,12+5]].merge;
              eclApp.workbooks[1].sheets[h].Cells[1,1].HorizontalAlignment := -4108;
              eclApp.workbooks[1].sheets[h].Cells[1,1]:=ZSZL.FieldByName('ZSYWJC').AsString; //廠商名稱
              eclApp.workbooks[1].sheets[h].name:=ZSZL.FieldByName('ZSYWJC').AsString;//分頁Sheet抬頭
              //
              eclApp.workbooks[1].sheets[h].Range[eclApp.workbooks[1].sheets[h].Cells[1,1],eclApp.workbooks[1].sheets[h].Cells[YPZLZLS2.RecordCount+2,YPZLZLS2.fieldcount+5]].Borders.weight:=2;
              eclApp.workbooks[1].sheets[h].Range[eclApp.workbooks[1].sheets[h].Cells[1,1],eclApp.workbooks[1].sheets[h].Cells[YPZLZLS2.RecordCount+2,YPZLZLS2.fieldcount+5]].HorizontalAlignment := -4108;
              //End
              if IsExportAllData=true then
              begin
                ZSZL.Next; //廠商Query Next
              end else
              begin
                break;
              end;
          end;
          //eclapp.columns.autofit; //自動延展欄位
          showmessage('Succeed');
          eclApp.Visible:=True;
      except
          on   F:Exception   do
            showmessage(F.Message);
      end;
    end;
end;
//
//
procedure TSampleMergeRpt.bbt6Click(Sender: TObject);
begin
  ExportExcel();
end;

end.
