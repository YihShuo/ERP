unit CostBOM_NoPrice1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GridsEh, DBGridEh, StdCtrls, ExtCtrls, DB, DBTables ,Comobj;

type
  TCostBOM_NoPrice = class(TForm)
    DBGrid2: TDBGridEh;
    Panel1: TPanel;
    PriceCombo: TComboBox;
    Label1: TLabel;
    CLZLBJ: TQuery;
    CLZLBJCLZMLB: TStringField;
    CLZLBJCQDH: TStringField;
    CLZLBJcldh1: TStringField;
    CLZLBJYWPM: TStringField;
    CLZLBJZWPM: TStringField;
    CLZLBJUSPRICE: TFloatField;
    CLZLBJVNPRICE: TFloatField;
    DS: TDataSource;
    Button1: TButton;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure PriceComboChange(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure ShowQueryData();
  end;

var
  CostBOM_NoPrice: TCostBOM_NoPrice;

implementation
  uses main1, CostingBOM1, FunUnit;
{$R *.dfm}

procedure TCostBOM_NoPrice.ShowQueryData();
begin

   with CLZLBJ do
   begin
      Active:=false;
      SQL.Clear;
      SQL.Add('select * from ( ');
      SQL.Add('Select CLZMLB,CQDH,clzhzl.cldh1,CLZL.YWPM,CLZL.ZWPM,case when CGBJS.USPRICE is not null then CGBJS.USPRICE else round(CGBJS.VNPrice/'+CostingBOM.ExchangLabel.Caption+',3) end as USPRICE ,CGBJS.VNPRICE ');
      SQL.Add('FROM XXZLS ');
      SQL.Add('inner join clzhzl on clzhzl.cldh=xxzls.clbh ');
      SQL.Add('LEFT JOIN CLZL   ON clzhzl.cldh1 = CLZL.cldh ');
      SQL.Add('LEFT JOIN (select * from (select CGBJS.CLBH,CGBJS.USPrice,CGBJS.VNPrice, ');
      SQL.Add('						ROW_NUMBER() over (PARTITION BY CGBJS.CLBH ORDER BY CGBJ.BJNO DESC) as  rn ');
      SQL.Add('						from CGBJ');
      SQL.Add('						left join CGBJS on CGBJ.BJNO=CGBJS.BJNO');
      SQL.Add('						where CGBJ.GSBH='''+main.Edit2.Text+''' and CGBJS.CLBH is not null ');
      SQL.Add('						) CGBJ where rn=1 ) CGBJS ON CGBJS.CLBH=clzhzl.cldh1 ');
      SQL.Add('where XXZLS.XieXing=:XieXing and XXZLS.SheHao=:SheHao  ');
      SQL.Add('union all');
      SQL.Add('select CLZMLB,case when CLZMLB<>''Y'' then CQDH else ''GC'' end as CQDH,XXZLS.CLBH,CLZL.YWPM, CLZL.ZWPM ,case when CGBJS.USPRICE is not null then CGBJS.USPRICE else round(CGBJS.VNPrice/'+CostingBOM.ExchangLabel.Caption+',3) end as USPRICE ,CGBJS.VNPRICE ');
      SQL.Add('FROM XXZLS');
      SQL.Add('LEFT JOIN CLZL   ON XXZLS.CLBH = CLZL.cldh');
      SQL.Add('LEFT JOIN XTBWYL1 ON XXZLS.XIEXING=XTBWYL1.XIEXING AND XXZLS.SHEHAO=XTBWYL1.SHEHAO AND XXZLS.BWBH=XTBWYL1.BWBH AND XTBWYL1.XTCC='''+CostingBOM.SizeEdit.Text+''' ');
      SQL.Add('LEFT JOIN (select * from (select CGBJS.CLBH,CGBJS.USPrice,CGBJS.VNPrice,');
      SQL.Add('						ROW_NUMBER() over (PARTITION BY CGBJS.CLBH ORDER BY CGBJ.BJNO DESC) as  rn');
      SQL.Add('						from CGBJ');
      SQL.Add('						left join CGBJS on CGBJ.BJNO=CGBJS.BJNO');
      SQL.Add('						where CGBJ.GSBH='''+main.Edit2.Text+''' and CGBJS.CLBH is not null');
      SQL.Add('						) CGBJ where rn=1 ) CGBJS ON CGBJS.CLBH=XXZLS.CLBH');
      SQL.Add('where XXZLS.XieXing=:XieXing and XXZLS.SheHao=:SheHao  and left(XXZLS.clbh,1)<>''M'' and XTBWYL1.CLSL is not null');
      SQL.Add('union all');
      SQL.Add('select CLZMLB,CQDH, XXZLSVN.CLBH, CLZL.YWPM ,CLZL.ZWPM ,case when CGBJS.USPRICE is not null then CGBJS.USPRICE else round(CGBJS.VNPrice/'+CostingBOM.ExchangLabel.Caption+',3) end as USPRICE ,CGBJS.VNPRICE ');
      SQL.Add('from XXZLSVN');
      SQL.Add('LEFT join CLZL on XXZLSVN.CLBH=CLZL.CLDH');
      SQL.Add('LEFT JOIN (select * from (select CGBJS.CLBH,CGBJS.USPrice,CGBJS.VNPrice,');
      SQL.Add('						ROW_NUMBER() over (PARTITION BY CGBJS.CLBH ORDER BY CGBJ.BJNO DESC) as  rn');
      SQL.Add('						from CGBJ ');
      SQL.Add('						left join CGBJS on CGBJ.BJNO=CGBJS.BJNO');
      SQL.Add('						where (CGBJ.GSBH='''+main.Edit2.Text+''' or CGBJ.GSBH=''VTX'') and CGBJS.CLBH is not null');
      SQL.Add('						) CGBJ where rn=1 ) CGBJS ON CGBJS.CLBH=XXZLSVN.CLBH');
      SQL.Add('where  XXZLSVN.XieXing=:XieXing and  XXZLSVN.SheHao=:SheHao ');
      SQL.Add(') XXZLCLZL where 1=1 ');
      if PriceCombo.Itemindex=1 then
        SQL.Add('and USPRICE<=0  ');
      if PriceCombo.Itemindex=2 then
        SQL.Add('and  USPRICE>0  ');
      SQL.Add('Group by XXZLCLZL.CLZMLB,XXZLCLZL.CQDh,XXZLCLZL.CLDh1,XXZLCLZL.YWPM,XXZLCLZL.ZWPM,XXZLCLZL.USPRICE,XXZLCLZL.VNPRICE ');
      //
      Active:=true;
      //
   end;
end;


procedure TCostBOM_NoPrice.FormDestroy(Sender: TObject);
begin
  CostBOM_NoPrice:=nil;
end;

procedure TCostBOM_NoPrice.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TCostBOM_NoPrice.FormCreate(Sender: TObject);
begin
  ShowQueryData();
end;

procedure TCostBOM_NoPrice.PriceComboChange(Sender: TObject);
begin
  ShowQueryData();
end;

procedure TCostBOM_NoPrice.Button1Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin
      if CLZLBJ.active  then
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
            for   i:=0   to   CLZLBJ.fieldCount-1   do
            begin
              eclApp.Cells(1,i+1):=CLZLBJ.fields[i].FieldName;
            end;
            CLZLBJ.First;
            j:=2;
            while   not   CLZLBJ.Eof   do
            begin
                for   i:=0   to   CLZLBJ.FieldCount-1   do
                begin
                  eclApp.Cells(j,i+1):=CLZLBJ.Fields[i].Value;
                  eclApp.Cells.Cells.item[j,i+1].font.size:='8';
                end;
                CLZLBJ.Next;
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

end.
