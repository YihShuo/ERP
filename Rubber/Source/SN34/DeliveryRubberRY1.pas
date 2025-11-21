unit DeliveryRubberRY1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Grids, DBGrids, DB, DBTables, GridsEh,
  DBGridEh;

type
  TDeliveryRubberRY = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Button1: TButton;
    RYEdit: TEdit;
    Query1: TQuery;
    DS1: TDataSource;
    gdMain: TDBGridEh;
    bnCopy: TButton;
    Query1DDBH: TStringField;
    Query1CQDH: TStringField;
    Query1cldh: TStringField;
    Query1KGS: TFloatField;
    Query1KGS_LL: TFloatField;
    Query1PG_LOSS: TFloatField;
    Query1PGSS: TFloatField;
    Query1USERID: TStringField;
    Query1USERDATE: TStringField;
    Query1LB: TStringField;
    Query1XieXing: TStringField;
    Query1SheHao: TStringField;
    Query1ARTICLE: TStringField;
    Query1SCRQ: TStringField;
    Query1DDJQ: TStringField;
    Query1KHPO: TStringField;
    Query1YSSM: TStringField;
    Query1SW: TStringField;
    Label2: TLabel;
    PEdit: TEdit;
    CheckBox1: TCheckBox;
    Label3: TLabel;
    MatEdit: TEdit;
    Label4: TLabel;
    Rot1: TEdit;
    Rot2: TEdit;
    Label5: TLabel;
    Query1TQty: TFloatField;
    Label6: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure bnCopyClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure gdMainDblClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DeliveryRubberRY: TDeliveryRubberRY;

implementation
   uses main1, DeliveryRubber1, FunUnit;
{$R *.dfm}

procedure TDeliveryRubberRY.Button1Click(Sender: TObject);
begin

  with Query1 do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('SELECT DDZLS2.*,DDZL.XieXing,DDZL.SheHao,DDZL.ARTICLE,DDZL.SCRQ,DDZL.DDJQ,DDZL.KHPO,XXZL.YSSM,SPACE(1) SW,Case when SMDD.TQty<=DDZLS2.KGS-KGS_LL then SMDD.TQty else DDZLS2.KGS-KGS_LL end as TQty  ');
    SQL.Add('FROM '+main.LIY_DD+'.dbo.DDZLS2 DDZLS2   ');
    SQL.Add('LEFT JOIN '+main.LIY_DD+'.dbo.DDZL DDZL ON DDZLS2.DDBH=DDZL.DDBH AND DDZLS2.CQDH=DDZL.CQDH    ');
    SQL.Add('LEFT JOIN '+main.LIY_DD+'.dbo.XXZL XXZL ON DDZL.XieXing=XXZL.XieXing AND DDZL.SheHao=XXZL.SheHao AND DDZLS2.CQDH=XXZL.CQDH ');
    //迴轉數分配
    SQL.Add('Left join( ');
    SQL.Add(' select CQDH,YSBH,cldh,Round(SUM(Qty),2) as TQty from ( ');
    SQL.Add('	Select DDZLS2.CQDH,DDZLS2.CLDH,SMDD.DDBH,SMDD.YSBH,Round(DDZLS2.KGS* SMDD.Qty/SMDDT.TQty,2) as Qty,DDZLS2.KGS from '+main.LIY_DD+'.dbo.DDZLS2 DDZLS2 ');
    SQL.Add('	Left join SMDD  on SMDD.YSBH=DDZLS2.DDBH and SMDD.GXLB=''A'' ');
    SQL.Add('	Left join  ');
    SQL.Add('	(');
    SQL.Add('	  Select YSBH,Sum(Qty) as TQty from SMDD where SMDD.DDBH like '''+RYEdit.Text+'%'' and SMDD.GXLB=''A'' Group by YSBH  ');
    SQL.Add('	) as SMDDT on SMDDT.YSBH=DDZLS2.DDBH ');
    SQL.Add('	where DDZLS2.DDBH = '''+RYEdit.Text+''' and DDZLS2.CQDH='''+main.Edit2.Text+''' ');
    SQL.Add('	) SMDD where 1=1 ');
    if (Rot1.Text<>'') and (length(RYEdit.Text)>=12) then
      SQL.Add(' and DDBH>='''+RYEdit.Text+Rot1.Text+''' ')
    else if (Rot1.Text<>'') and (length(RYEdit.Text)<12) then
      SQL.Add(' and DDBH>='''+RYEdit.Text+'-'+Rot1.Text+''' ');
    if (Rot2.Text<>'') and (length(RYEdit.Text)>=12) then
      SQL.Add(' and DDBH<='''+RYEdit.Text+Rot2.Text+''' ')
    else if (Rot2.Text<>'') and (length(RYEdit.Text)<12) then
      SQL.Add(' and DDBH<='''+RYEdit.Text+'-'+Rot2.Text+''' ');
    SQL.Add(' Group by CQDH,YSBH,cldh  ) SMDD on SMDD.CQDH=DDZL.CQDH and SMDD.cldh=DDZLS2.cldh and SMDD.YSBH=DDZL.ZLBH1 ');
    //
    SQL.Add('WHERE DDZLS2.CQDH='''+main.Edit2.Text+''' AND DDZL.CQDH1='''+main.Edit2.Text+'''  ');
    if PEdit.Text<>'' then
      SQL.Add('  AND DDZL.SCRQ LIKE '''+PEdit.Text+'%'' ');
    if MatEdit.Text<>'' then
      SQL.Add(' and DDZLS2.CLDH like '''+MatEdit.Text+'%'' ');
    if RYEdit.Text<>'' then
      SQL.Add(' and DDZLS2.DDBH = '''+RYEdit.Text+''' ');
    if CheckBox1.Checked=true then
      SQL.Add(' and DDZLS2.KGS-DDZLS2.KGS_LL>0 ');
    SQL.Add('ORDER BY DDZLS2.DDBH,DDZLS2.CLDH');
    //funcObj.WriteErrorLog(sql.Text);
    Active:=true;
  end;

end;

procedure TDeliveryRubberRY.bnCopyClick(Sender: TObject);
var bm:Tbookmark;
    i:integer;
    bookmarklist:tbookmarklistEh;
begin
  //
  Query1.disablecontrols;
  bm:=Query1.getbookmark;
  bookmarklist:=gdMain.selectedrows;
  if bookmarklist.count>0 then
  begin
    try
      for i:=0 to bookmarklist.count-1 do
      begin
         Query1.gotobookmark(pointer(bookmarklist[i]));
         with DeliveryRubber.DelDet do
         begin
            Insert;
            FieldByName('CQDH').Value:=Query1.FieldByName('CQDH').Value;
            FieldByName('DDBH').Value:=Query1.FieldByName('DDBH').Value;
            FieldByName('CLDH').Value:=Query1.FieldByName('CLDH').Value;
            FieldByName('YSSM').Value:=Query1.FieldByName('YSSM').Value;
            FieldByName('KHPO').Value:=Query1.FieldByName('KHPO').Value;
            FieldByName('KGS_YL').Value:=Query1.FieldByName('KGS').Value;// 用量
            FieldByName('KGS_LL').Value:=Query1.FieldByName('TQty').Value;  //領用
            FieldByName('KGS_CL').Value:=0;  //超領
            FieldByName('LB').Value:='00';
            Post;
         end;
      end;
    finally
      begin
        Query1.gotobookmark(bm);
        Query1.freebookmark(bm);
        Query1.enablecontrols;
        showmessage('You have finish copy!');
      end;
    end;         //
  end;
  //
end;

procedure TDeliveryRubberRY.FormCreate(Sender: TObject);
begin
  PEdit.Text:=FormatDateTime('YYYYMM',Date());
end;

procedure TDeliveryRubberRY.gdMainDblClick(Sender: TObject);
begin
  if Query1.Active=true then
  begin
     with DeliveryRubber.DelDet do
     begin
        Insert;
        FieldByName('CQDH').Value:=Query1.FieldByName('CQDH').Value;
        FieldByName('DDBH').Value:=Query1.FieldByName('DDBH').Value;
        FieldByName('CLDH').Value:=Query1.FieldByName('CLDH').Value;
        FieldByName('YSSM').Value:=Query1.FieldByName('YSSM').Value;
        FieldByName('KHPO').Value:=Query1.FieldByName('KHPO').Value;
        FieldByName('KGS_YL').Value:=Query1.FieldByName('KGS').AsString;// 用量
        FieldByName('KGS_LL').Value:=Query1.FieldByName('TQty').AsString;  //領用
        FieldByName('KGS_CL').Value:=0;  //超領
        FieldByName('LB').Value:='00';
        Post;
     end;
  end;
end;

procedure TDeliveryRubberRY.FormDestroy(Sender: TObject);
begin
 DeliveryRubberRY:=nil;
end;

procedure TDeliveryRubberRY.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 Action:=caFree;
end;

procedure TDeliveryRubberRY.FormShow(Sender: TObject);
begin
  main.FormLanguage(Pointer(self),self.Name);
end;

end.
