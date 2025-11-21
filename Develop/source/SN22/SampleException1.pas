unit SampleException1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, DBTables, StdCtrls, ExtCtrls, GridsEh,
  DBGridEh;

type
  TSampleException = class(TForm)
    ToolPanel: TPanel;
    Label37: TLabel;
    Label38: TLabel;
    Button1: TButton;
    Check: TCheckBox;
    JiJieEdit: TEdit;
    KFJDEdit: TComboBox;
    DevTypeEdit: TComboBox;
    CLZLQry: TQuery;
    Panel1: TPanel;
    SuppDetQry: TQuery;
    CLZLQryCLBH: TStringField;
    CLZLQryYWPM: TStringField;
    DS1: TDataSource;
    DBGridEh1: TDBGridEh;
    DBGridEh2: TDBGridEh;
    DS2: TDataSource;
    SuppDetQryYPDH: TStringField;
    SuppDetQryXH: TStringField;
    SuppDetQryBWBH: TStringField;
    SuppDetQryCLBH: TStringField;
    SuppDetQrychild: TStringField;
    SuppDetQryCSBH: TStringField;
    SuppDetQryUserID: TStringField;
    SuppDetQryArticle: TStringField;
    Check1: TCheckBox;
    TmpQry: TQuery;
    SuppDetQrydevcode: TStringField;
    procedure Button1Click(Sender: TObject);
    procedure DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure CLZLQryBeforeScroll(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
  private
    CSBH:string;
    { Private declarations }
    procedure InitialStage();
  public
    { Public declarations }
  end;

var
  SampleException: TSampleException;
implementation
   uses main1,FunUnit;
{$R *.dfm}

procedure TSampleException.Button1Click(Sender: TObject);
begin
  if ((KFJDEdit.Text='') or (JiJieEdit.Text='')) then
  begin
    Showmessage('Please choice Season and Stage');
    exit;
  end;
  //
  SuppDetQry.Active:=false;
  with CLZLQry do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select CLBH,CLZL.YWPM from (');
    SQL.Add('select CLBH,Count(CLBH) as count from (');
    SQL.Add('select * from (');
    SQL.Add('select YPZLS.CLBH,IsNull(YPZLS.CSBH,'''') as CSBH from YPZL');
    SQL.Add('inner join YPZLS on YPZL.YPDH=YPZLS.YPDH');
    SQL.Add('inner join KFXXZL on  KFXXZL.SheHao=YPZL.SheHao and KFXXZL.XieXing=YPZL.XieXing');
    SQL.Add('Left join xxzlkf ON  xxzlkf.SheHao=YPZL.SheHao and xxzlkf.XieXing=YPZL.XieXing');
    SQL.Add('where YPZL.GSDH='''+main.Edit2.Text+''' and KFXXZL.JiJie='''+JiJieEdit.Text+''' and YPZL.KFJD='''+KFJDEdit.Text+''' ');
    if Check.Checked=true then
      SQL.Add(' and YPZL.UserID='''+main.Edit1.Text+''' ');
    if Check1.Checked=true then
      SQL.Add('and (xxzlkf.dropped<>''1'' or xxzlkf.dropped is null)');
    SQL.Add('Group by YPZLS.CLBH,YPZLS.CSBH ');
    SQL.Add('Union all');
    SQL.Add('Select * from (');
    SQL.Add('SELECT clzhzl.CLDH1 as CLBH ,');
    SQL.Add(' case when  ((clzhzl_dev.zsdh is not null) and (clzhzl_dev.zsdh<>'''')) then clzhzl_dev.zsdh else IsNull(clzhzl.zsdh,'''') end as CSBH ');
    SQL.Add('FROM ypzls  ');
    SQL.Add('inner join YPZL on YPZL.YPDH=YPZLS.YPDH');
    SQL.Add('inner join KFXXZL on  KFXXZL.SheHao=YPZL.SheHao and KFXXZL.XieXing=YPZL.XieXing');
    SQL.Add('Left join clzhzl ON  ypzls.CLBH = CLZHZL.cldh ');
    SQL.Add('Left join xxzlkf ON  xxzlkf.SheHao=YPZL.SheHao and xxzlkf.XieXing=YPZL.XieXing');
    SQL.Add('left join clzhzl_dev ON clzhzl.cldh=clzhzl_dev.cldh and clzhzl.cldh1=clzhzl_dev.cldh1 ');
    SQL.Add('WHERE KFXXZL.JiJie='''+JiJieEdit.Text+''' and YPZL.KFJD='''+KFJDEdit.Text+''' and CLZHZL.SYL>0  ');
    if Check.Checked=true then
      SQL.Add(' and YPZL.UserID='''+main.Edit1.Text+''' ');
    if Check1.Checked=true then
      SQL.Add('and (xxzlkf.dropped<>''1'' or xxzlkf.dropped is null)');
    SQL.Add(') clzhzl group by CLBH,CSBH ) AA group by CLBH,CSBH');
    SQL.Add(') A  Group by CLBH  having Count(CLBH) >=2');
    SQL.Add(') MatList');
    SQL.Add('inner join CLZL on CLZL.CLDH=MatList.CLBH');
    Active:=true;
  end;
  //
  with SuppDetQry do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Select * from (');
    SQL.Add('select YPZLS.YPDH,kfxxzl.devcode,kfxxzl.Article,YPZLS.XH,YPZLS.BWBH,CLBH,null as child,CSBH,YPZL.UserID from YPZLS');
    SQL.Add('inner join YPZL on YPZL.YPDH=YPZLS.YPDH');
    SQL.Add('inner join KFXXZL on  KFXXZL.SheHao=YPZL.SheHao and KFXXZL.XieXing=YPZL.XieXing');
    SQL.Add('Left join xxzlkf ON  xxzlkf.SheHao=YPZL.SheHao and xxzlkf.XieXing=YPZL.XieXing');
    SQL.Add('where KFXXZL.JiJie='''+JiJieEdit.Text+''' and YPZL.KFJD='''+KFJDEdit.Text+''' and  YPZLS.CLBH=:CLBH ');
    if Check.Checked=true then
      SQL.Add(' and YPZL.UserID='''+main.Edit1.Text+''' ');
    if Check1.Checked=true then
      SQL.Add('and (xxzlkf.dropped<>''1'' or xxzlkf.dropped is null)');
    SQL.Add('union all');
    SQL.Add('SELECT YPZLS.YPDH,kfxxzl.devcode,kfxxzl.Article,YPZLS.XH,YPZLS.BWBH,null as CLBH,clzhzl.CLDH1 as child,');
    SQL.Add(' case when  ((clzhzl_dev.zsdh is not null) and (clzhzl_dev.zsdh<>'''')) then clzhzl_dev.zsdh else clzhzl.zsdh end as CSBH,YPZL.UserID ');
    SQL.Add('FROM ypzls  ');
    SQL.Add('inner join YPZL on YPZL.YPDH=YPZLS.YPDH');
    SQL.Add('inner join KFXXZL on  KFXXZL.SheHao=YPZL.SheHao and KFXXZL.XieXing=YPZL.XieXing');
    SQL.Add('Left join clzhzl ON  ypzls.CLBH = CLZHZL.cldh ');
    SQL.Add('left join clzhzl_dev ON clzhzl.cldh=clzhzl_dev.cldh and clzhzl.cldh1=clzhzl_dev.cldh1 ');
    SQL.Add('Left join xxzlkf ON  xxzlkf.SheHao=YPZL.SheHao and xxzlkf.XieXing=YPZL.XieXing');
    SQL.Add('WHERE KFXXZL.JiJie='''+JiJieEdit.Text+''' and YPZL.KFJD='''+KFJDEdit.Text+''' and CLZHZL.SYL>0   and clzhzl.CLDH1=:CLBH ');
    if Check.Checked=true then
      SQL.Add(' and YPZL.UserID='''+main.Edit1.Text+''' ');
    if Check1.Checked=true then
      SQL.Add('and (xxzlkf.dropped<>''1'' or xxzlkf.dropped is null)');
    SQL.Add(') YPZLS order by CSBH');
    Active:=true;
  end;
  //
end;

procedure TSampleException.DBGridEh1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if CSBH='NULL' then CSBH:=SuppDetQry.FieldByName('CSBH').AsString;
  if SuppDetQry.FieldByName('CSBH').AsString<>CSBH then
  begin
    DBGridEh1.canvas.font.Color:=clRed;;
    DBGridEh1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
  end;
end;

procedure TSampleException.CLZLQryBeforeScroll(DataSet: TDataSet);
begin
  CSBH:='NULL';
end;
//
procedure TSampleException.InitialStage();
begin

  with TmpQry do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select LBDH from LBZLS where bz1=''Tyxuan'' ');
    Active:=true;
    KFJDEdit.Clear;
    while not Eof do
    begin
      KFJDEdit.Items.Add(FieldByName('LBDH').AsString);
      Next;
    end;
    Active:=false;
  end;
  
end;
//
procedure TSampleException.FormCreate(Sender: TObject);
begin
  InitialStage();
end;

end.
