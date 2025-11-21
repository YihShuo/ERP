unit BOMSHIPP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, GridsEh, DBGridEh, ComCtrls, Buttons,
  ExtCtrls, DB, DBTables;

type
  TBOMSHIP = class(TForm)
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
    PC1: TPageControl;
    TS1: TTabSheet;
    Panel2: TPanel;
    Button1: TButton;
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
    DBGrid4: TDBGridEh;
    Edit1: TEdit;
    Label1: TLabel;
    XXZL: TQuery;
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
    XXZLSZSYWJC: TStringField;
    XXZLSLOSS: TFloatField;
    XXZLSCLSL: TFloatField;
    XXZLSCCQQ: TStringField;
    XXZLSCCQZ: TStringField;
    XXZLSCLZMLB: TStringField;
    XXZLSCLZW: TStringField;
    XXZLSBWZW: TStringField;
    DS2: TDataSource;
    XXCC: TQuery;
    xtbwyl1: TQuery;
    DS3: TDataSource;
    xtbwyl: TQuery;
    DS4: TDataSource;
    Label2: TLabel;
    XXZLDDBH: TStringField;
    XXZLXieXing: TStringField;
    XXZLSheHao: TStringField;
    XXZLARTICLE: TStringField;
    XXZLXieMing: TStringField;
    XXZLYSSM: TStringField;
    XXZLBZCC: TStringField;
    XXZLkfjc: TStringField;
    XXZLXx: TStringField;
    XXZLSs: TStringField;
    XXZLUSERDATE: TDateTimeField;
    DBText13: TDBText;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure BB1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BB7Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure XXZLSAfterOpen(DataSet: TDataSet);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure XXCCAfterOpen(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BOMSHIP: TBOMSHIP;

implementation

{$R *.dfm}

procedure TBOMSHIP.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TBOMSHIP.FormDestroy(Sender: TObject);
begin
  BOMSHIP:=nil;
end;

procedure TBOMSHIP.BB1Click(Sender: TObject);
begin
  PC1.ActivePage:=TS1;
  panel2.Visible:=true; //顯示Query畫面
  edit1.SetFocus;
end;

procedure TBOMSHIP.Button1Click(Sender: TObject);
begin
  if edit1.Text = '' then
  begin
    showmessage('Please Enter RY#');
  end
  else
  begin
    with XXZL do
    begin
      active:=false;
      sql.Clear;
      sql.Add('select ddzl.DDBH,ddzl.XieXing,ddzl.SheHao,ddzl.ARTICLE,xxzl.XieMing,xxzl.YSSM,');
      sql.Add('       xxzl.BZCC,kfzl.kfjc,xt.xiexing as Xx,xt.Shehao as Ss,zlzl.USERDATE');
      sql.Add('from ddzl');
      sql.Add('left join xxzl on ddzl.xiexing = xxzl.xiexing and ddzl.shehao = xxzl.shehao');
      sql.Add('left join kfzl on kfzl.kfdh = DDZL.KHBH');
      sql.Add('left join zlzl on zlzl.ZLBH = DDZL.DDBH');
      sql.Add('left join (select xiexing,shehao from xtbwyl1 group by xiexing,shehao) as xt');
      sql.Add('           on xt.xiexing=ddzl.xiexing and xt.shehao=ddzl.shehao');
      sql.Add('where ddzl.DDBH like '+''''+edit1.text+'%'+'''');
      sql.Add('order by DDZL.DDBH');
      active:=true;
      XXZLS.Open;
      panel2.Visible:=false;
    end;
  end;
end;

procedure TBOMSHIP.BB7Click(Sender: TObject);
begin
  close;
end;

procedure TBOMSHIP.DBGrid1DblClick(Sender: TObject);
begin
  if XXZL.active then
  begin
    PC1.ActivePage:=TS2;
  end;
end;

procedure TBOMSHIP.XXZLSAfterOpen(DataSet: TDataSet);
begin
  if XXZLS.RecordCount <> 0 then
  begin
    with XXCC do
    begin
      Active:=false;   //抓出Size run
      sql.Clear;
      sql.add('select distinct XTCC from XTBWYL  ');
      sql.add('where XieXing='+''''+XXZL.fieldbyname('XieXing').AsString+'''');
      sql.add('and SheHao='+''''+XXZL.fieldbyname('SheHao').AsString+''''+'  order by XTCC ');
      active:=true;
    end;
  end;
end;

procedure TBOMSHIP.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then    //#13 = Enter鍵, 當按下enter鍵時
    DBGrid1Dblclick(nil);
end;

procedure TBOMSHIP.DBGrid1GetCellParams(Sender: TObject; Column: TColumnEh;
  AFont: TFont; var Background: TColor; State: TGridDrawState);
begin
  if XXZL.FieldByName('SS').IsNull or XXZL.FieldByName('XX').IsNull then
  begin
    dbgrid1.canvas.font.color:=clred;
   // dbgrid1.defaultdrawcolumncell(rect,datacol,column,state);
  end;
end;

procedure TBOMSHIP.XXCCAfterOpen(DataSet: TDataSet);
var
  i:integer;
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
        sql.add(',max(case when xtbwylshiping.XTCC='+''''+XXCC.fieldbyname('XTCC').asstring+'''');
        sql.add(' then xtbwylshiping.CLSL end ) as '+''''+XXCC.fieldbyname('XTCC').asstring+'''');
        XXCC.Next;
      end;
      sql.add('from XTBWYL1 ');
      sql.add('left join BWZL on BWZL.BWDH=XTBWYL1.BWBH  ');
      sql.add('left join (select BWBH, XTCC, CLSL from xtbwylshiping where DDBH=:DDBH) as xtbwylshiping');
      sql.add('          on xtbwylshiping.BWBH = xtbwyl1.BWBH and xtbwylshiping.XTCC = xtbwyl1.XTCC');
      sql.add('where XTBWYL1.XieXing=:XieXing and XTBWYL1.SheHao=:SheHao');
      sql.add('group by XTBWYL1.BWBH,BWZL.YWSM');
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
      TFLOATField(XTBWYL1.Fields[i]).DisplayFormat:='#,##0.0000';
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
          XXCC.Next;
        end;
      sql.add('from XTBWYL ');
      sql.add('left join BWZL on BWZL.BWDH=XTBWYL.BWBH  ');
      sql.add('where XTBWYL.XieXing=:XieXing and XTBWYL.SheHao=:SheHao');
      sql.add('group by XTBWYL.BWBH,BWBH,BWZL.YWSM');
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
      TFLOATField(XTBWYL.Fields[i]).DisplayFormat:='#,##0.0000';
    end;
end;    //  end of if XXCC.RecordCount <> 0    
end;

end.
