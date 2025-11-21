unit BOMM1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ComCtrls, Buttons, OleServer,comobj ,
  ExtCtrls, DBCtrls, GridsEh, DBGridEh, Menus;

type
  TBOMM = class(TForm)
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
    TS2: TTabSheet;
    TS3: TTabSheet;
    TS4: TTabSheet;
    Panel2: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    Label3: TLabel;
    Edit4: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    Edit3: TEdit;
    Edit5: TEdit;
    Button1: TButton;
    DBGrid1: TDBGridEh;
    XXZL: TQuery;
    DS1: TDataSource;
    XXZLXieXing: TStringField;
    XXZLSheHao: TStringField;
    XXZLXieMing: TStringField;
    XXZLYSSM: TStringField;
    XXZLARTICLE: TStringField;
    XXZLBZCC: TStringField;
    Panel3: TPanel;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    DBGrid2: TDBGridEh;
    XXZLS: TQuery;
    DS2: TDataSource;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Panel4: TPanel;
    DBText5: TDBText;
    DBText6: TDBText;
    DBText7: TDBText;
    DBText8: TDBText;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Panel5: TPanel;
    DBText9: TDBText;
    DBText10: TDBText;
    DBText11: TDBText;
    DBText12: TDBText;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    DBGrid3: TDBGridEh;
    DBGrid4: TDBGridEh;
    xtbwyl1: TQuery;
    DS3: TDataSource;
    xtbwyl: TQuery;
    DS4: TDataSource;
    XXCC: TQuery;
    Excel: TButton;
    Print: TButton;
    Print2: TButton;
    Excel2: TButton;
    XXZLKFJC: TStringField;
    XXZLXx: TStringField;
    XXZLSs: TStringField;
    XXZLIMGName: TStringField;
    ShoeImage: TImage;
    shoePicpopo: TPopupMenu;
    Saveas1: TMenuItem;
    SaveDialog: TSaveDialog;
    Label18: TLabel;
    SeasonEdit: TEdit;
    XXZLJiJie: TStringField;
    ChildMatCK: TCheckBox;
    XXZLSXH: TStringField;
    XXZLSBWBH: TStringField;
    XXZLSBWMC: TStringField;
    XXZLSCLBH: TStringField;
    XXZLSDType: TStringField;
    XXZLSCLMC: TStringField;
    XXZLSCLZW: TStringField;
    XXZLSBWZW: TStringField;
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
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Edit6: TEdit;
    XXZLDAOMH: TStringField;
    XXZLSuserdate: TDateTimeField;
    XXZLSCLBH_Log: TStringField;
    XXZLSCLSL_Log: TStringField;
    GroupBox1: TGroupBox;
    CK1: TCheckBox;
    CK2: TCheckBox;
    DEdit: TEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure BB7Click(Sender: TObject);
    procedure BB1Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure XXCCAfterOpen(DataSet: TDataSet);
    procedure XXZLSAfterOpen(DataSet: TDataSet);
    procedure ExcelClick(Sender: TObject);
    procedure Excel2Click(Sender: TObject);
    procedure bbt6Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure DBGrid1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure XXZLAfterScroll(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure Saveas1Click(Sender: TObject);
    procedure ChildMatCKClick(Sender: TObject);
    procedure DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure DBGrid3DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
  private
    IsExport:boolean;
    { Private declarations }
    procedure DetectMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
  public
    { Public declarations }
  end;

var
  BOMM: TBOMM;

implementation
  uses main1,ShowShoePic1,FunUnit;
{$R *.dfm}

procedure TBOMM.FormClose(Sender: TObject; var Action: TCloseAction);
begin
action:=cafree;
end;

procedure TBOMM.Button1Click(Sender: TObject);
begin
   if (SeasonEdit.text='') and (edit3.text='')and (Edit4.Text='') then
   begin
         showmessage('Please input season or Article or Customer keypoint ');
   end else
   begin
         with XXZL do
         begin
           active:=false;
           sql.clear;
           sql.add('select XXZL.XieXing,XXZL.SheHao,XXZL.Article,');
           sql.add('XXZL.XieMing,XXZL.YSSM,KFZL.KFJC,XXZL.BZCC,xt.xiexing as Xx,xt.Shehao as Ss,XXZL.IMGName,KFXXZL.JiJie,XXZL.DAOMH from XXZL ');
           sql.add('left join KFZL on KFZL.KFDH=XXZL.KHDH ');
           sql.add('left join KFXXZL on KFXXZL.SheHao=XXZL.SheHao and  KFXXZL.XieXing=XXZL.XieXing ');
           sql.Add('left join (select xiexing,shehao from xtbwyl1 group by xiexing,shehao) as xt');
           sql.add('  on xt.xiexing=xxzl.xiexing and xt.shehao=xxzl.shehao ' );
           sql.add('where XXZL.XieXing like '+''''+edit1.Text+'%'+'''');
           sql.add(' and XXZL.SheHao like '+''''+edit2.Text+'%'+'''');
           sql.add(' and XXZL.ARTICLE like '+''''+edit3.Text+'%'+'''');
           sql.add(' and KFZL.KFJC like '+''''+'%'+edit4.Text+'%'+'''');
           sql.add(' and XXZL.XieMing like '+''''+edit5.Text+'%'+'''');
           if Edit6.Text<>'' then
             sql.add('  and XXZL.DAOMH like ''%'+Edit6.Text+'%'' ');
           if SeasonEdit.Text<>'' then
             sql.add('  and KFXXZL.JiJie like ''%'+SeasonEdit.Text+'%'' ');
           if CK1.Checked then
           begin
             sql.add(' and XXZL.YN='+''''+'1'+'''');
           end;
           if CK2.Checked then
           begin
             sql.add(' and exists ( select XieXing,SheHao from XTBWYL1_Log where XTBWYL1_Log.XieXing=XXZL.XieXing and XTBWYL1_Log.SheHao=XXZL.SheHao   and Log_DateTime>=GetDate()-'+DEdit.Text+'  Group by XieXing,SheHao ) ');
           end;
           sql.add(' order by KFJC,XXZL.XieXing,XXZL.Shehao');
           active:=true;
         end;
         XXZLS.Open;
         BBT6.Enabled:=true;
         panel2.Visible:=false;
   end;
end;

procedure TBOMM.BB7Click(Sender: TObject);
begin
close;
end;

procedure TBOMM.BB1Click(Sender: TObject);
begin
PC1.ActivePage:=TS1;
panel2.Visible:=true;
edit1.SetFocus;
end;

procedure TBOMM.DBGrid1DblClick(Sender: TObject);
begin
if XXZL.active then
  begin
    PC1.ActivePage:=TS2;
  end;
end;

procedure TBOMM.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
  DBGrid1Dblclick(nil);
end;

procedure TBOMM.XXZLSAfterOpen(DataSet: TDataSet);
begin

  if XXZLS.RecordCount <> 0 then
  begin
    with XXCC do
    begin
      Active:=false;
      sql.Clear;
      sql.add('select distinct XTCC from XTBWYL  ');
      sql.add('where XieXing='+''''+XXZL.fieldbyname('XieXing').AsString+'''');
      sql.add('and SheHao='+''''+XXZL.fieldbyname('SheHao').AsString+''''+'  order by XTCC ');
      active:=true;
    end;
  end;
end;


procedure TBOMM.XXCCAfterOpen(DataSet: TDataSet);
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
      sql.add('select XTBWYL1.BWBH,BWZL.YWSM');
      while not XXCC.eof do
      begin
          sql.add(',max(case when XTBWYL1.XTCC='+''''+XXCC.fieldbyname('XTCC').asstring+''' ');
          sql.add(' then XTBWYL1.CLSL end ) as '+''''+XXCC.fieldbyname('XTCC').asstring+''' ');
          //日修改顏色提示
          //sql.add(',max(case when XTBWYL1.CLSL<>XTBWYL1_Log.CLSL then XTBWYL1_Log.Log_DateTime end) as '''+XXCC.fieldbyname('XTCC').asstring+'_Log'' ');
          sql.add(',max(XTBWYL1_Log.Log_DateTime) as '''+XXCC.fieldbyname('XTCC').asstring+'_Log'' ');
          //
          XXCC.Next;
      end;
      sql.add('from XTBWYL1 ');
      sql.add('left join XTBWYL1_Log on XTBWYL1.XieXing=XTBWYL1_Log.XieXing and XTBWYL1.SheHao=XTBWYL1_Log.SheHao and XTBWYL1.BWBH=XTBWYL1_Log.BWBH and XTBWYL1.XTCC=XTBWYL1_Log.XTCC and XTBWYL1_Log.Log_DateTime>=GetDate()-'+DEdit.Text+' ');
      sql.add('left join BWZL on BWZL.BWDH=XTBWYL1.BWBH  ');
      sql.add('where XTBWYL1.XieXing=:XieXing and XTBWYL1.SheHao=:SheHao');
      sql.add('group by XTBWYL1.BWBH,XTBWYL1.BWBH,BWZL.YWSM');
      sql.add('order by XTBWYL1.BWBH');
      active:=true;
    end;

    DBGrid3.columns[0].width:=40;
    DBGrid3.columns[1].width:=140;
    for i:=2 to XTBWYL1.FieldCount-1 do
    begin
      DBGrid3.columns[i].width:=50;
    end;
    for i:=2 to XTBWYL1.FieldCount-1 do
    begin
      if (i mod 2) = 0 then
         TFLOATField(XTBWYL1.Fields[i]).DisplayFormat:='#,##0.0000'
      else
         DBGrid3.columns[i].Visible:=false;
    end;

    //電腦用量
    XXCC.First;
    with  XTBWYL do
    begin
      active:=false;
      sql.clear;
      sql.add('select XTBWYL.BWBH,BWZL.YWSM');
      while not XXCC.eof do
      begin
          sql.add(',max(case when XTBWYL.XTCC='+''''+XXCC.fieldbyname('XTCC').asstring+'''');
          sql.add(' then XTBWYL.CLSL end ) as '+''''+XXCC.fieldbyname('XTCC').asstring+'''');
          //日修改顏色提示
          //sql.add(',max(case when XTBWYL.CLSL<>XTBWYL_Log.CLSL then XTBWYL_Log.Log_DateTime end) as '''+XXCC.fieldbyname('XTCC').asstring+'_Log'' ');
          sql.add(',max(XTBWYL_Log.Log_DateTime) as '''+XXCC.fieldbyname('XTCC').asstring+'_Log'' ');
          //
          XXCC.Next;
      end;
      sql.add('from XTBWYL ');
      sql.add('left join XTBWYL_Log on XTBWYL.XieXing=XTBWYL_Log.XieXing and XTBWYL.SheHao=XTBWYL_Log.SheHao and XTBWYL.BWBH=XTBWYL_Log.BWBH and XTBWYL.XTCC=XTBWYL_Log.XTCC and XTBWYL_Log.Log_DateTime>=GetDate()-'+DEdit.Text+' ');
      sql.add('left join BWZL on BWZL.BWDH=XTBWYL.BWBH  ');
      sql.add('where XTBWYL.XieXing=:XieXing and XTBWYL.SheHao=:SheHao');
      sql.add('group by XTBWYL.BWBH,XTBWYL.BWBH,BWZL.YWSM');
      sql.add('order by XTBWYL.BWBH');
      active:=true;
    end;

    DBGrid4.columns[0].width:=40;
    DBGrid4.columns[1].width:=140;
    for i:=2 to XTBWYL.FieldCount-1 do
    begin
      DBGrid4.columns[i].width:=50;
    end;
    for i:=2 to XTBWYL.FieldCount-1 do
    begin
      if (i mod 2) = 0 then
         TFLOATField(XTBWYL.Fields[i]).DisplayFormat:='#,##0.0000'
      else
         DBGrid4.columns[i].Visible:=false;
    end;

  end;    //  end of if XXCC.RecordCount <> 0
end;


procedure TBOMM.ExcelClick(Sender: TObject);
var
      eclApp,WorkBook:olevariant;
      i,j,index:integer;
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
        index:=0;
        for   i:=0   to   XTBWYL1.fieldCount-1   do
        begin
          if i<2 then
          begin
           eclApp.Cells(1,index+1):=XTBWYL1.fields[i].FieldName;
           index:=index+1;
          end else if i>=2 then
             if (i mod 2) =0  then
             begin
                eclApp.Cells(1,index+1):=XTBWYL1.fields[i].FieldName;
                index:=index+1;
             end;
        end;

        XTBWYL1.First;
        j:=2;
        while   not   XTBWYL1.Eof   do
        begin
          index:=0;
          for   i:=0   to   XTBWYL1.FieldCount-1   do
          begin
            //
            if i<2 then
            begin
              eclApp.Cells(j,index+1):=XTBWYL1.Fields[i].Value;
              eclApp.Cells.Cells.item[j,index+1].font.size:='8';
              index:=index+1;
            end else if i>=2 then
               if (i mod 2) =0  then
               begin
                 eclApp.Cells(j,index+1):=XTBWYL1.Fields[i].Value;
                 eclApp.Cells.Cells.item[j,index+1].font.size:='8';
                 index:=index+1;
               end;
            //
          end;
          XTBWYL1.Next;
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

procedure TBOMM.Excel2Click(Sender: TObject);
var  eclApp,WorkBook:olevariant;
     i,j,index:integer;
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
        index:=0;
        for  i:=0   to   XTBWYL.fieldCount-1   do
        begin
          if i<2 then
          begin
           eclApp.Cells(1,index+1):=XTBWYL.fields[i].FieldName;
           index:=index+1;
          end else if i>=2 then
             if (i mod 2) =0  then
             begin
                eclApp.Cells(1,index+1):=XTBWYL.fields[i].FieldName;
                index:=index+1;
             end;
        end;
        XTBWYL.First;
        j:=2;
        while   not   XTBWYL.Eof   do
        begin
           index:=0;
           for   i:=0   to   XTBWYL.FieldCount-1   do
           begin
            //
            if i<2 then
            begin
              eclApp.Cells(j,index+1):=XTBWYL.Fields[i].Value;
              eclApp.Cells.Cells.item[j,index+1].font.size:='8';
              index:=index+1;
            end else if i>=2 then
               if (i mod 2) =0  then
               begin
                 eclApp.Cells(j,index+1):=XTBWYL.Fields[i].Value;
                 eclApp.Cells.Cells.item[j,index+1].font.size:='8';
                 index:=index+1;
               end;
            //
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

procedure TBOMM.bbt6Click(Sender: TObject);
var
      eclApp,WorkBook:olevariant;
      i,j:integer;
 begin
  if PC1.ActivePageIndex=0 then
  begin
   IsExport:=true;
   XXZLS.Active:=false;
   XTBWYL.Active:=false;
   XTBWYL1.Active:=false;
   if XXZL.active  then
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
        for   i:=0   to   XXZL.fieldCount-1   do
          begin
              eclApp.Cells(1,i+1):=XXZL.fields[i].FieldName;
          end;

        XXZL.First;
        j:=2;
        while   not   XXZL.Eof   do
          begin
            for   i:=0   to   XXZL.FieldCount-1   do
            begin
              eclApp.Cells(j,i+1):=XXZL.Fields[i].Value;
              eclApp.Cells.Cells.item[j,i+1].font.size:='8';
            end;
          XXZL.Next;
          inc(j);
          end;

     eclapp.columns.autofit;
      eclApp.Visible:=True;
      except
        on   F:Exception   do
          showmessage(F.Message);
      end;
      IsExport:=false;
      XXZLS.Active:=true;
      XTBWYL.Active:=true;
      XTBWYL1.Active:=true;
    end;
   end;
  //
  if PC1.ActivePageIndex=1 then
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
      eclApp.Visible:=True;
      except
        on   F:Exception   do
          showmessage(F.Message);
      end;
    end;
   end;

end;

procedure TBOMM.FormCreate(Sender: TObject);
begin
  PC1.ActivePage:=TS1;

end;

procedure TBOMM.FormDestroy(Sender: TObject);
begin
  if ShowShoePic<>nil then ShowShoePic.Free;
  BOMM:=nil;

end;

procedure TBOMM.DBGrid1GetCellParams(Sender: TObject; Column: TColumnEh;
  AFont: TFont; var Background: TColor; State: TGridDrawState);
begin
if XXZl.FieldByName('SS').IsNull or XXZl.FieldByName('XX').IsNull then
  begin
    dbgrid1.canvas.font.color:=clred;
   // dbgrid1.defaultdrawcolumncell(rect,datacol,column,state);
  end;
end;
//顯示圖片
procedure TBOMM.XXZLAfterScroll(DataSet: TDataSet);
var ShoePic:string;
begin
  //
  if IsExport=false then
  begin
    shoePic:=StringReplace(XXZL.FieldByName('IMGName').Asstring,'H:','\\192.168.23.11\bom', [rfReplaceAll, rfIgnoreCase]);
    if FileExists(shoePic)=true then
    begin
       ShoeImage.Picture.LoadFromFile(shoePic);
       if ShowShoePic=nil then ShowShoePic:=TShowShoePic.Create(self);
       ShowShoePic.ShoeImage.Picture.LoadFromFile(shoePic);
    end else
    begin
       ShoeImage.Picture.Bitmap:=nil;
       if ShowShoePic<>nil then
         ShowShoePic.ShoeImage.Picture.Bitmap:=nil;
    end;
   end;
end;

procedure TBOMM.DetectMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
var MouseP:TPoint;
begin

    if ShowShoePic<>nil then
    begin
      if ShoeImage.Picture.Graphic<>nil then
      begin
        GetCursorPos(MouseP);
        if  ( (MouseP.X>=(ShoeImage.Left+main.Left))  and (MouseP.Y>=(ShoeImage.Top+main.Top+50))
            and (MouseP.X<=(ShoeImage.Left+main.Left+ShoeImage.Width)) and (MouseP.Y<=(ShoeImage.Top+main.Top+50+ShoeImage.Height)) ) then
        begin
           ShowShoePic.Left:=ShoeImage.Left+main.Left+ShoeImage.Width;
           ShowShoePic.Top:=ShoeImage.Top+main.Top+50+ShoeImage.Height;
           ShowShoePic.Show;
        end else
        begin
           ShowShoePic.Hide;
        end;
      end;
    end;

end;
procedure TBOMM.FormShow(Sender: TObject);
begin
  ShoeImage.OnMouseMove:=DetectMouseMove;
  Panel1.OnMouseMove:=DetectMouseMove;
  Panel2.OnMouseMove:=DetectMouseMove;
  Panel3.OnMouseMove:=DetectMouseMove;
  Panel4.OnMouseMove:=DetectMouseMove;
  Panel5.OnMouseMove:=DetectMouseMove;
end;

procedure TBOMM.Saveas1Click(Sender: TObject);
begin
  if SaveDialog.Execute()=true then
  begin
    ShoeImage.Picture.SaveToFile(SaveDialog.FileName);
  end;
end;

procedure TBOMM.ChildMatCKClick(Sender: TObject);
begin
  if ChildMatCK.Checked=true then
  begin
    with XXZLS do
    begin
      active:=false;
      sql.Clear;
      sql.Add('select XXZLS.*');                              //修正子材料關聯廠商 2016/04/02 Johny
      sql.Add('FROM (select XXZLS.XH, XXZLS.BWBH,BWZL.ywsm BWMC,XXZLS.CLBH, ''Assembly''AS DType,CLZL.YWPM as CLMC, CLZL.ZWPM as CLZW,BWZL.zwsm  as BWZW,');
      sql.Add('             CLZL.DWBH,CLZL.LYCC,LBZLS.BZ,XXZLS.BWLB,ZSZL.ZSYWJC,XXZLS.LOSS,XXZLS.CLSL,XXZLS.CCQQ,XXZLS.CCQZ,CLZL.CLZMLB,xxzls.UserDate');
      sql.Add(',(case when XXZLS.CLBH<>XXZLS_Log.CLBH then XXZLS_Log.Log_DateTime end) as ''CLBH_Log'' ');
      sql.Add(',(case when XXZLS.CLSL<>XXZLS_Log.CLSL then XXZLS_Log.Log_DateTime end) as ''CLSL_Log'' ');
      sql.Add('      FROM XXZLS');
      //20161110 修改異動日期顏色提示
      sql.Add('left join (select XieXing,SheHao,BWBH,Max(CLBH) as CLBH,Max(CLSL) as CLSL,Max(Log_DateTime) as Log_DateTime from XXZLS_Log ');
      sql.Add('            where XXZLS_Log.XieXing=:XieXing  and XXZLS_Log.SheHao=:SheHao and Log_DateTime>=GetDate()-'+DEdit.Text+' ');
      sql.Add('           Group by XieXing,SheHao,BWBH ');
      sql.Add('          )  XXZLS_Log on XXZLS_Log.XieXing=XXZLS.XieXing and XXZLS_Log.SheHao=XXZLS.SheHao and XXZLS_Log.BWBH=XXZLS.BWBH  ');
      //
      sql.Add('      LEFT JOIN BWZL  ON XXZLS.BWBH = BWZL.bwdh');
      sql.Add('      LEFT JOIN CLZL   ON XXZLS.CLBH = CLZL.cldh');
      sql.Add('      LEFT JOIN LBZLS ON SUBSTRING(XXZLS.CLBH,1,1) = LBZLS.lbdh AND LBZLS.LB=''05''');
      sql.Add('      LEFT JOIN ZSZL on ZSZL.ZSDH=XXZLS.CSBH');
      sql.Add('      where XXZLS.XieXing=:XieXing and XXZLS.SheHao=:SheHao');
      sql.Add('      union all');
      sql.Add('      select XXZLS.XH, XXZLS.BWBH,BWZL.ywsm BWMC,clzhzl.cldh1,''Extra''AS DType,CLZL.YWPM as CLMC, CLZL.ZWPM as CLZW,BWZL.zwsm  as BWZW,');
      sql.add('             CLZL.DWBH,CLZL.LYCC,LBZLS.BZ,XXZLS.BWLB,ZSZL.ZSYWJC,XXZLS.LOSS,(clzhzl.syl*XXZLS.CLSL)as CLSL,XXZLS.CCQQ,XXZLS.CCQZ,CLZL.CLZMLB,xxzls.userdate');
      sql.add('             ,null as  ''CLBH_Log'',null as  ''CLSL_Log'' ');
      sql.add('      FROM XXZLS inner join clzhzl on clzhzl.cldh=xxzls.clbh');
      sql.add('      LEFT JOIN BWZL  ON XXZLS.BWBH = BWZL.bwdh ');
      sql.add('      LEFT JOIN CLZL   ON clzhzl.cldh1 = CLZL.cldh ') ;
      sql.Add('      LEFT JOIN LBZLS ON SUBSTRING(XXZLS.CLBH,1,1) = LBZLS.lbdh AND LBZLS.LB=''05''');
      sql.Add('      LEFT JOIN ZSZL on ZSZL.ZSDH=clzhzl.zsdh');
      sql.Add('      where XXZLS.XieXing=:XieXing and XXZLS.SheHao=:SheHao');
      sql.Add('      )XXZLS ');
      sql.Add('ORDER BY XXZLS.XH, XXZLS.DType');
      active:=true;

    end;
  end
  else
  begin
    with XXZLS do
    begin
      active:=false;
      sql.Clear;
      sql.Add('select XXZLS.XH, XXZLS.BWBH,BWZL.ywsm BWMC,XXZLS.CLBH,''Assembly''AS DType, CLZL.YWPM as CLMC, CLZL.ZWPM as CLZW,BWZL.zwsm  as BWZW,CLZL.DWBH,CLZL.LYCC,LBZLS.BZ,XXZLS.BWLB,ZSZL.ZSYWJC,XXZLS.LOSS,XXZLS.CLSL,XXZLS.CCQQ,XXZLS.CCQZ,CLZL.CLZMLB,xxzls.userdate ');
      sql.Add(',(case when XXZLS.CLBH<>XXZLS_Log.CLBH then XXZLS_Log.Log_DateTime end) as ''CLBH_Log'' ');
      sql.Add(',(case when XXZLS.CLSL<>XXZLS_Log.CLSL then XXZLS_Log.Log_DateTime end) as ''CLSL_Log'' ');
      sql.Add('FROM XXZLS ');
      //20161110 修改異動日期顏色提示
      sql.Add('left join (select XieXing,SheHao,BWBH,Max(CLBH) as CLBH,Max(CLSL) as CLSL,Max(Log_DateTime) as Log_DateTime from XXZLS_Log ');
      sql.Add('            where XXZLS_Log.XieXing=:XieXing  and XXZLS_Log.SheHao=:SheHao and Log_DateTime>=GetDate()-'+DEdit.Text+' ');
      sql.Add('           Group by XieXing,SheHao,BWBH ');
      sql.Add('          )  XXZLS_Log on XXZLS_Log.XieXing=XXZLS.XieXing and XXZLS_Log.SheHao=XXZLS.SheHao and XXZLS_Log.BWBH=XXZLS.BWBH  ');
      //
      sql.Add('LEFT JOIN BWZL  ON XXZLS.BWBH = BWZL.bwdh');
      sql.Add('LEFT JOIN CLZL   ON XXZLS.CLBH = CLZL.cldh');
      sql.Add('LEFT JOIN LBZLS ON SUBSTRING(XXZLS.CLBH,1,1) = LBZLS.lbdh AND LBZLS.LB=''05''') ;
      sql.Add('LEFT JOIN ZSZL on ZSZL.ZSDH=XXZLS.CSBH') ;
      sql.Add('where XXZLS.XieXing=:XieXing and XXZLS.SheHao=:SheHao') ;
      sql.Add(' ORDER BY XXZLS.XH');
      active:=true;
    end;
  end;
  DBGrid2.Columns[3].Visible:=ChildMatCK.Checked xor false;
end;

procedure TBOMM.DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
begin
 if ((XXZLS.FieldByName('DType').AsString='Extra'))  then
  begin
    DBGrid2.canvas.Brush.Color:=clBtnface;
    DBGrid2.DefaultDrawColumnCell(Rect,DataCol,Column,State);
  end;

  if XXZLS.FieldByName('CLBH_Log').AsString<>'' then
  begin
   if DataCol = 4 then
   begin
     DBGrid2.canvas.Brush.Color:=clyellow;
     DBGrid2.DefaultDrawColumnCell(Rect, DataCol, Column, State);
   end;
  end;
  if XXZLS.FieldByName('CLSL_Log').AsString<>'' then
  begin
   if DataCol = 8 then
   begin
     DBGrid2.canvas.Brush.Color:=clyellow;
     DBGrid2.DefaultDrawColumnCell(Rect, DataCol, Column, State);
   end;
  end;
  
end;

procedure TBOMM.DBGrid3DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
begin
  if  DataCol>=2 then
  begin
     if (DataCol mod 2) =0 then
     begin
       if xtbwyl1.Fields[DataCol+1].AsString<>'' then
       begin
         DBGrid3.canvas.Brush.Color:=clyellow;
         DBGrid3.DefaultDrawColumnCell(Rect, DataCol, Column, State);
       end;
     end;
  end;
end;

end.
