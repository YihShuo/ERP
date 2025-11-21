unit BOMUsage1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, DB, DBTables, DBCtrls, GridsEh, DBGridEh, StdCtrls,
  ComCtrls, Buttons, ExtCtrls,comobj;

type
  TBOMUsage = class(TForm)
    Panel1: TPanel;
    BB2: TBitBtn;
    BB3: TBitBtn;
    BB4: TBitBtn;
    BB5: TBitBtn;
    BB6: TBitBtn;
    BB7: TBitBtn;
    BB1: TBitBtn;
    BBT1: TBitBtn;
    BBT2: TBitBtn;
    BBT3: TBitBtn;
    BBT4: TBitBtn;
    bbt5: TBitBtn;
    bbt6: TBitBtn;
    PC1: TPageControl;
    TS1: TTabSheet;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label18: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit4: TEdit;
    Edit3: TEdit;
    Edit5: TEdit;
    Button1: TButton;
    CheckBox1: TCheckBox;
    SeasonEdit: TEdit;
    DBGrid1: TDBGridEh;
    TS2: TTabSheet;
    Panel3: TPanel;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    DBGrid2: TDBGridEh;
    TS3: TTabSheet;
    Panel4: TPanel;
    DBText5: TDBText;
    DBText6: TDBText;
    DBText7: TDBText;
    DBText8: TDBText;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Excel: TButton;
    Print: TButton;
    DBGrid3: TDBGridEh;
    TS4: TTabSheet;
    Panel5: TPanel;
    DBText9: TDBText;
    DBText10: TDBText;
    DBText11: TDBText;
    DBText12: TDBText;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Print2: TButton;
    Excel2: TButton;
    DBGrid4: TDBGridEh;
    XXZL: TQuery;
    XXZLXieXing: TStringField;
    XXZLSheHao: TStringField;
    XXZLARTICLE: TStringField;
    XXZLXieMing: TStringField;
    XXZLYSSM: TStringField;
    XXZLBZCC: TStringField;
    XXZLKFJC: TStringField;
    XXZLXx: TStringField;
    XXZLSs: TStringField;
    XXZLIMGName: TStringField;
    XXZLJiJie: TStringField;
    DS1: TDataSource;
    XXZLS: TQuery;
    XXZLSXH: TStringField;
    XXZLSBWBH: TStringField;
    XXZLSBWMC: TStringField;
    XXZLSCLBH: TStringField;
    XXZLSCLMC: TStringField;
    XXZLSDWBH: TStringField;
    XXZLSLYCC: TStringField;
    XXZLSBZ: TStringField;
    XXZLSBWLB: TStringField;
    XXZLSZSYWJC: TStringField;
    XXZLSLOSS: TFloatField;
    XXZLSCLSL: TFloatField;
    XXZLSCCQQ: TStringField;
    XXZLSCCQZ: TStringField;
    XXZLSCLZMLB: TStringField;
    XXZLSCLZW: TStringField;
    XXZLSBWZW: TStringField;
    DS2: TDataSource;
    xtbwyl1: TQuery;
    DS3: TDataSource;
    xtbwyl: TQuery;
    DS4: TDataSource;
    XXCC: TQuery;
    PopupMenu1: TPopupMenu;
    S1: TMenuItem;
    S2: TMenuItem;
    S3: TMenuItem;
    UpXtbwyl: TUpdateSQL;
    TQuoteUsg_old: TTable;
    InfoGroup: TGroupBox;
    Label22: TLabel;
    GroupBox1: TGroupBox;
    Label19: TLabel;
    Button2: TButton;
    GroupBox2: TGroupBox;
    Label20: TLabel;
    Label21: TLabel;
    XXZLexp1: TStringField;
    XXZLexp2: TStringField;
    XXZLexp3: TStringField;
    tmpQry: TQuery;
    TQuoteUsg: TQuery;
    TQuoteUsgXieXing: TStringField;
    TQuoteUsgSheHao: TStringField;
    TQuoteUsgBWBH: TStringField;
    TQuoteUsgXTCC: TStringField;
    TQuoteUsgCLSL: TFloatField;
    TQuoteUsgUSERID: TStringField;
    TQuoteUsgUSERDATE: TDateTimeField;
    TQuoteUsgYN: TStringField;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure BB7Click(Sender: TObject);
    procedure BB1Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure XXZLSAfterOpen(DataSet: TDataSet);
    procedure ExcelClick(Sender: TObject);
    procedure Excel2Click(Sender: TObject);
    procedure bbt6Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure S1Click(Sender: TObject);
    procedure S3Click(Sender: TObject);
    procedure S2Click(Sender: TObject);
    procedure DBGrid3GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure DBGrid4GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure Button2Click(Sender: TObject);
    procedure XXZLAfterScroll(DataSet: TDataSet);
    procedure DBGrid4TitleClick(Column: TColumnEh);
       
  private
  procedure DetectMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
    { Private declarations }
  public
    DefaultQuoteSize:string;
    QuoteSize:string;
    { Public declarations }
    procedure OpenBOMUsageGrid();
  end;

var
  BOMUsage: TBOMUsage;

implementation
  uses main1,FunUnit, ExceptionOrder1;

{$R *.dfm}

procedure TBOMUsage.FormDestroy(Sender: TObject);
begin
  BOMUsage:=nil;
end;

procedure TBOMUsage.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TBOMUsage.Button1Click(Sender: TObject);
begin
with XXZL do
  begin
    active:=false;
    sql.clear;
    sql.add('select XXZL.XieXing,XXZL.SheHao,XXZL.Article,');
    sql.add('XXZL.XieMing,XXZL.YSSM,KFZL.KFJC,XXZL.BZCC,xt.xiexing as Xx,xt.Shehao as Ss,XXZL.IMGName,KFXXZL.JiJie,xtbwyl.expect as exp1,xtbwyl1.expect as exp2,QuoteUsg.XieXing as exp3 from XXZL ');
    sql.add('left join KFZL on KFZL.KFDH=XXZL.KHDH ');
    sql.add('left join KFXXZL on KFXXZL.SheHao=XXZL.SheHao and  KFXXZL.XieXing=XXZL.XieXing ');
    sql.Add('left join (select xiexing,shehao from xtbwyl1 group by xiexing,shehao) as xt');
    sql.add('  on xt.xiexing=xxzl.xiexing and xt.shehao=xxzl.shehao ' );
    //和報價用量比較是否異常
    sql.Add('left join  (select QuoteUsg.XieXing,QuoteUsg.SheHao,''1'' as expect from QuoteUsg,xtbwyl');
    sql.Add('where QuoteUsg.XieXing=xtbwyl.XieXing and QuoteUsg.SheHao=xtbwyl.SheHao and QuoteUsg.BWBH=xtbwyl.BWBH and QuoteUsg.XTCC=xtbwyl.XTCC  and (xtbwyl.CLSL-QuoteUsg.CLSL)>0');
    sql.Add('Group by QuoteUsg.XieXing,QuoteUsg.SheHao ) xtbwyl on XXZL.XieXing=xtbwyl.XieXing and XXZL.SheHao=xtbwyl.SheHao');
    sql.Add('left join  (select QuoteUsg.XieXing,QuoteUsg.SheHao,''2'' as expect from QuoteUsg,xtbwyl1');
    sql.Add('where QuoteUsg.XieXing=xtbwyl1.XieXing and QuoteUsg.SheHao=xtbwyl1.SheHao and QuoteUsg.BWBH=xtbwyl1.BWBH and QuoteUsg.XTCC=xtbwyl1.XTCC  and (xtbwyl1.CLSL-QuoteUsg.CLSL)>0');
    sql.Add('Group by QuoteUsg.XieXing,QuoteUsg.SheHao ) xtbwyl1 on XXZL.XieXing=xtbwyl.XieXing and XXZL.SheHao=xtbwyl1.SheHao');
    sql.Add('left join (select XieXing,SheHao from QuoteUsg Group by XieXing,SheHao) QuoteUsg on QuoteUsg.XieXing=XXZL.XieXing and QuoteUsg.SheHao=XXZL.SheHao ');
    //
    sql.add('where XXZL.XieXing like '+''''+edit1.Text+'%'+'''');
    sql.add(' and XXZL.SheHao like '+''''+edit2.Text+'%'+'''');
    sql.add(' and XXZL.ARTICLE like '+''''+edit3.Text+'%'+'''');
    sql.add(' and KFZL.KFJC like '+''''+'%'+edit4.Text+'%'+'''');
    sql.add(' and XXZL.XieMing like '+''''+edit5.Text+'%'+'''');
    if SeasonEdit.Text<>'' then
      sql.add('  and KFXXZL.JiJie like ''%'+SeasonEdit.Text+'%'' ');
    if checkbox1.Checked then
      begin
        sql.add(' and XXZL.YN='+''''+'1'+'''');
      end;
    sql.add(' order by KFJC,XXZL.XieXing,XXZL.Shehao');
    active:=true;
  end;

  XXZLS.Open;
  BBT6.Enabled:=true;
  panel2.Visible:=false;

end;

procedure TBOMUsage.BB7Click(Sender: TObject);
begin
close;
end;

procedure TBOMUsage.BB1Click(Sender: TObject);
begin
PC1.ActivePage:=TS1;
panel2.Visible:=true;
edit1.SetFocus;
end;

procedure TBOMUsage.DBGrid1DblClick(Sender: TObject);
begin
if XXZL.active then
  begin
    PC1.ActivePage:=TS2;
  end;
end;

procedure TBOMUsage.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
  DBGrid1Dblclick(nil);
end;

procedure TBOMUsage.XXZLSAfterOpen(DataSet: TDataSet);
var i:integer;
begin
 if DefaultQuoteSize='' then
 begin
   with tmpQry do
   begin
     Active:=false;
     SQL.Clear;
     SQL.Add('select distinct XTCC from QuoteUsg where QuoteUsg.XieXing='''+XXZL.fieldbyname('XieXing').AsString+''' and SheHao='''+XXZL.fieldbyname('SheHao').AsString+''' ');
     Active:=true;
     if RecordCount>0 then  DefaultQuoteSize:=FieldByName('XTCC').AsString;
     Active:=false;
   end;
 end;
 if XXZLS.RecordCount <> 0 then
  begin
    QuoteSize:='';
    with XXCC do
    begin
      Active:=false;
      sql.Clear;
      sql.add('select distinct XTCC from XTBWYL  ');
      sql.add('where XieXing='+''''+XXZL.fieldbyname('XieXing').AsString+'''');
      sql.add('and SheHao='+''''+XXZL.fieldbyname('SheHao').AsString+''''+'  order by XTCC ');
      active:=true;
      First;
      for i:=0 to RecordCount-1 do
      begin
         if  (FieldByName('XTCC').AsString)=DefaultQuoteSize then  //基本碼
         begin
           QuoteSize:=FieldByName('XTCC').AsString;
           break;
         end;
         Next;
      end;
      if QuoteSize='' then QuoteSize:=FieldByName('XTCC').AsString;
    end;
    Label19.Caption:='Red color : '+QuoteSize+'-Quote >0';
    Label20.Caption:='Red color : '+QuoteSize+'-Quote >0';
    Label22.Caption:='Red color : '+QuoteSize+'-Quote >0';
    OpenBOMUsageGrid();
  end;

end;

procedure TBOMUsage.OpenBOMUsageGrid();
var i:integer;
begin
  if XXCC.RecordCount <> 0 then   // 沒有電腦用量
  begin

    //實際用量
    XXCC.First;
    with  XTBWYL1 do
    begin
      active:=false;
      sql.clear;
     sql.Add('select XTBWYL1.BWBH,BWZL.YWSM,QuoteUsg.USg as ''Quo('+QuoteSize+')''');
      while not XXCC.eof do
        begin
          sql.add(',max(case when XTBWYL1.XTCC='+''''+XXCC.fieldbyname('XTCC').asstring+'''');
          sql.add(' then XTBWYL1.CLSL end ) as '+''''+XXCC.fieldbyname('XTCC').asstring+'''');
          XXCC.Next;
        end;
      sql.add('from XTBWYL1 ');
      sql.add('left join BWZL on BWZL.BWDH=XTBWYL1.BWBH  ');
      sql.Add('left join (select xiexing, shehao,bwbh, max(case when QuoteUsg.XTCC='''+QuoteSize+''' then QuoteUsg.CLSL end ) as USg');
      sql.Add('from QuoteUsg  group by xiexing,shehao,bwbh,case when QuoteUsg.XTCC='''+QuoteSize+''' then QuoteUsg.CLSL end ) as QuoteUsg');
      sql.Add('on QuoteUsg.xiexing=XTBWYL1.XieXing  and QuoteUsg.shehao=xtbwyl1.SheHao and QuoteUsg.bwbh=xtbwyl1.BWBH');
      sql.add('where XTBWYL1.XieXing=:XieXing and XTBWYL1.SheHao=:SheHao');
      sql.add('group by XTBWYL1.BWBH,BWZL.YWSM,QuoteUsg.USg');
      sql.add('order by XTBWYL1.BWBH');
      active:=true;
    end;

    DBGrid3.columns[0].width:=40;
    DBGrid3.columns[1].width:=140;
    DBGrid3.columns[2].width:=80;
    for i:=3 to XTBWYL1.FieldCount-1 do
    begin
      DBGrid3.columns[i].width:=50;
    end;
    for i:=3 to XTBWYL1.FieldCount-1 do
    begin
      TFLOATField(XTBWYL1.Fields[i]).DisplayFormat:='#,##0.0000';
    end;

    //電腦用量
    XXCC.First;
    with  XTBWYL do
    begin
      active:=false;
      sql.clear;
      sql.Add('select XTBWYL.BWBH,BWZL.YWSM,QuoteUsg.USg as ''Quo('+QuoteSize+')''');
      while not XXCC.eof do
        begin
          sql.add(',max(case when XTBWYL.XTCC='+''''+XXCC.fieldbyname('XTCC').asstring+'''');
          sql.add(' then XTBWYL.CLSL end ) as '+''''+XXCC.fieldbyname('XTCC').asstring+'''');
          XXCC.Next;
        end;
      sql.add('from XTBWYL ');
      sql.add('left join BWZL on BWZL.BWDH=XTBWYL.BWBH  ');
      sql.Add('left join (select xiexing, shehao,bwbh, max(case when QuoteUsg.XTCC='''+QuoteSize+''' then QuoteUsg.CLSL end ) as USg');
      sql.Add('from QuoteUsg  group by xiexing,shehao,bwbh,case when QuoteUsg.XTCC='''+QuoteSize+''' then QuoteUsg.CLSL end ) as QuoteUsg');
      sql.Add('on QuoteUsg.xiexing=XTBWYL.XieXing  and QuoteUsg.shehao=xtbwyl.SheHao and QuoteUsg.bwbh=xtbwyl.BWBH');
      sql.add('where XTBWYL.XieXing=:XieXing and XTBWYL.SheHao=:SheHao');
      sql.add('group by XTBWYL.BWBH,BWZL.YWSM,QuoteUsg.USg');
      sql.add('order by XTBWYL.BWBH');
      active:=true;
    end;

    DBGrid4.columns[0].width:=40;
    DBGrid4.columns[1].width:=140;
    DBGrid4.columns[2].width:=80;
    DBGrid4.Columns[2].Color:=clscrollbar;
    for i:=3 to XTBWYL.FieldCount-1 do
    begin
      DBGrid4.columns[i].width:=50;
    end;
    for i:=3 to XTBWYL.FieldCount-1 do
    begin
      TFLOATField(XTBWYL.Fields[i]).DisplayFormat:='#,##0.0000';
    end;

  end;    //  end of if XXCC.RecordCount <> 0

end;
procedure TBOMUsage.ExcelClick(Sender: TObject);
var
      eclApp,WorkBook:olevariant;
 //     xlsFileName:string;
      i,j:integer;
begin
if XTBWYL1.active  then
    begin
    try
      eclApp:=CreateOleObject('Excel.Application');
      WorkBook:=CreateOleObject('Excel.Sheet');
    except
      Application.MessageBox('NO Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
      Exit;
    end;
    try
        WorkBook:=eclApp.workbooks.Add;
        for   i:=0   to   XTBWYL1.fieldCount-1   do
          begin
              eclApp.Cells(1,i+1):=XTBWYL1.fields[i].FieldName;
          end;

        XTBWYL1.First;
        j:=2;
        while   not   XTBWYL1.Eof   do
          begin
            for   i:=0   to   XTBWYL1.FieldCount-1   do
            begin
              eclApp.Cells(j,i+1):=XTBWYL1.Fields[i].Value;
              eclApp.Cells.Cells.item[j,i+1].font.size:='8';
            end;
          XTBWYL1.Next;
          inc(j);
          end;
     eclapp.columns.autofit;
   { if SaveDialog1.execute then
      begin
        a:=SaveDialog1.FileName;
      end
      else
        begin
          a:='Unit List';
        end;
      WorkBook.SaveAS(a);
    //  WorkBook.close;    }
      eclApp.Visible:=True;
      except
        on   F:Exception   do
          showmessage(F.Message);
      end;
    end;

end;

procedure TBOMUsage.Excel2Click(Sender: TObject);
var
      eclApp,WorkBook:olevariant;
 //     xlsFileName:string;
      i,j:integer;
begin
if XTBWYL.active  then
    begin
    try
      eclApp:=CreateOleObject('Excel.Application');
      WorkBook:=CreateOleObject('Excel.Sheet');
    except
      Application.MessageBox('NO Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
      Exit;
    end;
    try
        WorkBook:=eclApp.workbooks.Add;
        for   i:=0   to   XTBWYL.fieldCount-1   do
          begin
              eclApp.Cells(1,i+1):=XTBWYL.fields[i].FieldName;
          end;

        XTBWYL.First;
        j:=2;
        while   not   XTBWYL.Eof   do
          begin
            for   i:=0   to   XTBWYL.FieldCount-1   do
            begin
              eclApp.Cells(j,i+1):=XTBWYL.Fields[i].Value;    
              eclApp.Cells.Cells.item[j,i+1].font.size:='8';
            end;
          XTBWYL.Next;
          inc(j);
          end;
     eclapp.columns.autofit;
      eclApp.Visible:=True;
      except
        on   F:Exception   do
          showmessage(F.Message);
      end;
    end;
end;

procedure TBOMUsage.bbt6Click(Sender: TObject);
var
      eclApp,WorkBook:olevariant;
 //     xlsFileName:string;
      i,j:integer;
begin
if XXZLS.active  then
    begin
    try
      eclApp:=CreateOleObject('Excel.Application');
      WorkBook:=CreateOleObject('Excel.Sheet');
    except
      Application.MessageBox('NO Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
      Exit;
    end;
    try
        WorkBook:=eclApp.workbooks.Add;
        for   i:=0   to   XXZLS.fieldCount-1   do
          begin
              eclApp.Cells(1,i+1):=XXZLS.fields[i].FieldName;
          end;

        XXZLS.First;
        j:=2;
        while   not   XXZLS.Eof   do
          begin
            for   i:=0   to   XXZLS.FieldCount-1   do
            begin
              eclApp.Cells(j,i+1):=XXZLS.Fields[i].Value;
              eclApp.Cells.Cells.item[j,i+1].font.size:='8';
            end;
          XXZLS.Next;
          inc(j);
          end;
     eclapp.columns.autofit;
   { if SaveDialog1.execute then
      begin
        a:=SaveDialog1.FileName;
      end
      else
        begin
          a:='Unit List';
        end;
      WorkBook.SaveAS(a);
    //  WorkBook.close;    }
      eclApp.Visible:=True;
      except
        on   F:Exception   do
          showmessage(F.Message);
      end;
    end;

end;

procedure TBOMUsage.FormCreate(Sender: TObject);
begin
  PC1.ActivePage:=TS1;

  //
end;

procedure TBOMUsage.DBGrid1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin

  if ((XXZl.FieldByName('exp1').AsString<>'') or (XXZl.FieldByName('exp2').AsString<>''))  then
  begin
    DBGrid1.canvas.font.color:=clred;
  end;
  if (XXZl.FieldByName('exp3').AsString='')  then
  begin
    DBGrid1.canvas.font.color:=clBlue;;
  end;


end;

procedure TBOMUsage.DetectMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin



end;

procedure TBOMUsage.S1Click(Sender: TObject);
var i:integer;
begin
  if xtbwyl.Active then
  begin
    xtbwyl.RequestLive:=true;
    xtbwyl.CachedUpdates:=true;
    DBGrid4.Columns[0].ReadOnly:=true;
    DBGrid4.Columns[1].ReadOnly:=true;
    DBGrid4.Columns[2].ReadOnly:=false;
    for i:=3 to xtbwyl.FieldCount-1 do
    begin
      DBGrid4.columns[i].ReadOnly:=true;
    end;
    S2.enabled:=true;
    S3.enabled:=true;
  end;
end;

procedure TBOMUsage.S3Click(Sender: TObject);
var i:integer;
begin
  if xtbwyl.CachedUpdates then
  begin
    xtbwyl.Active:=false;
    xtbwyl.CachedUpdates:=false;
    xtbwyl.RequestLive:=false;
    S2.Enabled:=false;
    S3.enabled:=false;
    XTBWYL.Active:=true;
    DBGrid4.columns[0].width:=40;
    DBGrid4.columns[1].width:=140;
    DBGrid4.columns[2].width:=80;
    DBGrid4.Columns[2].Color:=clscrollbar;
    for i:=2 to XTBWYL.FieldCount-1 do
    begin
      DBGrid4.columns[i].width:=50;
    end;
    for i:=2 to XTBWYL.FieldCount-1 do
    begin
      TFLOATField(XTBWYL.Fields[i]).DisplayFormat:='#,##0.0000';
    end;
   end;
end;

procedure TBOMUsage.S2Click(Sender: TObject);
var i:integer;
    XTCC:string;
begin
 //檢查變更XTCC
 with tmpQry do
 begin
   Active:=false;
   SQL.Clear;
   SQL.Add('select distinct XTCC from QuoteUsg where QuoteUsg.XieXing='''+XXZL.fieldbyname('XieXing').AsString+''' and SheHao='''+XXZL.fieldbyname('SheHao').AsString+''' ');
   Active:=true;
   if RecordCount>0 then
   begin
     if FieldByName('XTCC').AsString<>QuoteSize then
     begin
       XTCC:=FieldByName('XTCC').AsString;
       Active:=false;
       SQL.Clear;
       SQL.Add('Delete from QuoteUsg where QuoteUsg.XieXing='''+XXZL.fieldbyname('XieXing').AsString+''' and SheHao='''+XXZL.fieldbyname('SheHao').AsString+''' and XTCC='''+XTCC+''' ');
       ExecSQL();
     end;
   end;
   Active:=false;
  end;
  //
  TQuoteUsg.Close;
  try
    TQuoteUsg.Open;
  except on e:exception  do
    ShowMessage('Cannot open TQuoteUsg, error is: ' + e.message);
  end; {try}
  //
  with XTBWYL do
  begin
    first;
    while not eof do
      begin
        if XTBWYL.updatestatus=usmodified then
          begin
            if fieldbyname('Quo('+QuoteSize+')').value=0 then
              begin
                if TQuoteUsg.locate('XieXing;SheHao;BWBH',vararrayof([XXZL.FieldByName('XieXing').Value,XXZL.FieldByName('SheHao').Value,XTBWYL.FieldByName('BWBH').Value]),[]) then
                  begin
//                    TQuoteUsg.delete;
                    tmpqry.Active := false;
                    tmpqry.SQL.Clear;
                    tmpqry.SQL.Add('Delete from QuoteUsg where Xiexing = '''+TQuoteUsg.fieldbyname('XieXing').AsString+''' and SheHao = '''+TQuoteUsg.fieldbyname('SheHao').AsString+''' and BWBH = '''+TQuoteUsg.fieldbyname('BWBH').AsString+'''');
                    tmpqry.ExecSQL;
                  end;
              end
              else
                begin
                  if   not fieldbyname('Quo('+QuoteSize+')').isnull then
                    begin
                      if TQuoteUsg.locate('XieXing;SheHao;BWBH',vararrayof([XXZL.FieldByName('XieXing').Value,XXZL.FieldByName('SheHao').Value,XTBWYL.FieldByName('BWBH').Value]),[]) then
                        begin
//                          TQuoteUsg.edit;
//                          TQuoteUsg.fieldbyname('CLSL').Value:=fieldbyname('Quo('+QuoteSize+')').Value;
//                          TQuoteUsg.fieldbyname('USERDATE').Value:= now;
//                          TQuoteUsg.fieldbyname('USERID').Value:=main.edit1.Text;
//                          TQuoteUsg.fieldbyname('YN').Value:='1';
//                          TQuoteUsg.post;
                          tmpqry.Active := false;
                          tmpqry.SQL.Clear;
                          tmpqry.SQL.Add('update QuoteUsg set CLSL = '+fieldbyname('Quo('+QuoteSize+')').AsString+',USERDATE = getdate(),userid = '''+main.edit1.Text+''',YN = ''1'' ');
                          tmpqry.SQL.Add('where Xiexing = '''+TQuoteUsg.fieldbyname('XieXing').AsString+''' and SheHao = '''+TQuoteUsg.fieldbyname('SheHao').AsString+''' and BWBH = '''+TQuoteUsg.fieldbyname('BWBH').AsString+'''');
                          tmpqry.ExecSQL;
                        end
                        else
                          begin
//                            TQuoteUsg.insert;
//                            TQuoteUsg.fieldbyname('XieXing').Value:=XXZL.fieldbyname('XieXing').Value;
//                            TQuoteUsg.fieldbyname('SheHao').Value:=XXZL.fieldbyname('SheHao').Value;
//                            TQuoteUsg.fieldbyname('BWBH').Value:=fieldbyname('BWBH').Value;
//                            TQuoteUsg.fieldbyname('XTCC').Value:=QuoteSize;
//                            TQuoteUsg.fieldbyname('CLSL').Value:=fieldbyname('Quo('+QuoteSize+')').Value;
//                            TQuoteUsg.fieldbyname('USERDATE').Value:= now;
//                            TQuoteUsg.fieldbyname('USERID').Value:=main.edit1.Text;
//                            TQuoteUsg.fieldbyname('YN').Value:='1';
//                            TQuoteUsg.post;
                            tmpqry.Active := false;
                            tmpqry.SQL.Clear;
                            tmpqry.SQL.Add('Insert into QuoteUsg (XieXing,SheHao,BWBH,XTCC,CLSL,USERID,USERDATE,USERDATE) ');
                            tmpqry.SQL.Add('VALUES ('''+XXZL.fieldbyname('XieXing').Value+''','''+XXZL.fieldbyname('SheHao').Value+''','''+fieldbyname('BWBH').Value+''','''+QuoteSize+''','+fieldbyname('Quo('+QuoteSize+')').AsString+',');
                            tmpqry.SQL.Add('Getdate(),''1'')');
                            tmpqry.ExecSQL;
                          end;
                    end
                    else
                      begin
                        if TQuoteUsg.locate('XieXing;SheHao;BWBH',vararrayof([XXZL.FieldByName('XieXing').Value,XXZL.FieldByName('SheHao').Value,XTBWYL.FieldByName('BWBH').Value]),[]) then
                          begin
//                            TQuoteUsg.delete;
                            tmpqry.Active := false;
                            tmpqry.SQL.Clear;
                            tmpqry.SQL.Add('Delete from QuoteUsg where Xiexing = '''+TQuoteUsg.fieldbyname('XieXing').AsString+''' and SheHao = '''+TQuoteUsg.fieldbyname('SheHao').AsString+''' and BWBH = '''+TQuoteUsg.fieldbyname('BWBH').AsString+'''');
                            tmpqry.ExecSQL;
                          end;
                      end;
                end;
          end;
        TQuoteUsg.Active := false;
        TQuoteUsg.Active := true;
        next;
      end;
    active:=false;
    cachedupdates:=false;
    requestlive:=false;
    active:=true;
    DBGrid4.columns[0].width:=40;
    DBGrid4.columns[1].width:=140;
    DBGrid4.columns[2].width:=80;
    DBGrid4.Columns[2].Color:=clscrollbar;
    for i:=3 to XTBWYL.FieldCount-1 do
    begin
      DBGrid4.columns[i].width:=50;
    end;
    for i:=2 to XTBWYL.FieldCount-1 do
    begin
      TFLOATField(XTBWYL1.Fields[i]).DisplayFormat:='#,##0.0000';
    end;
    S2.enabled:=false;
    S3.Enabled:=false;
end;
end;





procedure TBOMUsage.DBGrid3GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if ((xtbwyl1.FieldByName(QuoteSize).value-xtbwyl1.FieldByName('Quo('+QuoteSize+')').value)>0) then
  begin
    DBGrid3.canvas.font.color:=clred;
  end;
end;

procedure TBOMUsage.DBGrid4GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if ((xtbwyl.FieldByName(QuoteSize).value-xtbwyl.FieldByName('Quo('+QuoteSize+')').value)>0) then
  begin
    DBGrid4.canvas.font.color:=clred;
  end;
end;

procedure TBOMUsage.Button2Click(Sender: TObject);
begin
  ExceptionOrder:=TExceptionOrder.create(self);
  ExceptionOrder.show;
end;

procedure TBOMUsage.XXZLAfterScroll(DataSet: TDataSet);
begin
  DefaultQuoteSize:='';
end;

procedure TBOMUsage.DBGrid4TitleClick(Column: TColumnEh);
begin
  if Column.Index>=3 then
  begin
   DefaultQuoteSize:=Column.Title.Caption;
   XXZLS.Active:=false;
   XXZLS.Active:=true;
  end;
end;

end.


