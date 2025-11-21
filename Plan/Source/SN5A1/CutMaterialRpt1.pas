unit CutMaterialRpt1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DB, GridsEh, DBGridEh, DBTables, Mask,
  DBCtrls;

type
  TCutMaterialRpt = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    BUYNO: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    orderno: TEdit;
    Button1: TButton;
    Query1: TQuery;
    DBGridEh1: TDBGridEh;
    DataSource1: TDataSource;
    Label3: TLabel;
    ComboBox1: TComboBox;
    DBGridEh2: TDBGridEh;
    Query2: TQuery;
    DataSource2: TDataSource;
    Query1Buyno: TStringField;
    Query1DDBH: TStringField;
    Query1Article: TStringField;
    Query1pairs: TIntegerField;
    Query1Xiexing: TStringField;
    Query1Shehao: TStringField;
    Query2OrderNO: TStringField;
    Query2MatNO: TStringField;
    Query2Part: TStringField;
    Query2MatDes: TStringField;
    Query2PartDes: TStringField;
    Query2ETD: TDateTimeField;
    Query2CFMDate: TDateTimeField;
    Query2PurchaseNO: TStringField;
    Query2Arrivedate: TDateTimeField;
    Query2KCLLQty: TCurrencyField;
    Query2PartTWDes: TStringField;
    Query2MatTWDes: TStringField;
    CheckBox1: TCheckBox;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    Label4: TLabel;
    Label7: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CutMaterialRpt: TCutMaterialRpt;

implementation

{$R *.dfm}

procedure TCutMaterialRpt.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=CaFree;
end;

procedure TCutMaterialRpt.FormDestroy(Sender: TObject);
begin
  CutMaterialRpt:=nil;
end;

procedure TCutMaterialRpt.Button1Click(Sender: TObject);
begin
  with query1 do
   begin
     Active:=false;
     SQL.Clear;
     SQL.Add('select top 50000 Buyno,DDBH,Article,pairs,Xiexing,Shehao from ddzl where gsbh='''+combobox1.text+'''');
     if buyno.text<>'' then
        SQL.Add('and buyno like '''+buyno.text+'%'' ');
     if orderno.text<>'' then
        SQL.Add('and ddbh like '''+orderno.text+'%'' ');
     SQL.Add('order by userdate desc ');
     Active:=true;
   end;



  with query2 do
   begin
     Active:=false;
     SQL.Clear;
     SQL.Add('select zlzls2.zlbh as OrderNO,zlzls2.clbh MatNO,zlzls2.bwbh Part,clzl.ywpm MatDes,bwzl.ywsm PartDes,cgzlss.yqdate ETD,cgzlss.CFMDate,cgzlss.cgno PurchaseNO,cgzlss.Arrivedate,kclls.Qty KCLLQty,bwzl.zwsm PartTWDes,clzl.zwpm MatTWDes from zlzls2');
     SQL.Add('left join clzl on clzl.cldh=zlzls2.clbh ');
     SQL.Add('left join bwzl on bwzl.bwdh=zlzls2.bwbh ');
     SQL.Add('left join (select cgzlss.cgno,cgzlss.clbh,cgzlss.zlbh,cgzlss.yqdate,cgzlss.cfmdate,cgzlss.userdate,kcrks.userdate as arrivedate from cgzlss ');
     SQL.Add('		left join kcrks on kcrks.docno=cgzlss.cgno and kcrks.clbh=cgzlss.clbh)cgzlss on cgzlss.clbh=zlzls2.clbh and cgzlss.zlbh=zlzls2.zlbh ');
     SQL.Add('left join kclls on kclls.scbh=zlzls2.zlbh and kclls.clbh=zlzls2.clbh ');
     SQL.Add('where zlzls2.zlbh=:ddbh and left(zlzls2.clbh,1)<>''W''');
     SQL.Add('group by zlzls2.zlbh,zlzls2.clbh,zlzls2.bwbh,clzl.ywpm,bwzl.ywsm,cgzlss.yqdate,cgzlss.cfmdate,cgzlss.cgno,cgzlss.Arrivedate,kclls.qty,bwzl.zwsm,clzl.zwpm ');
     Active:=true;
   end;

end;

procedure TCutMaterialRpt.CheckBox1Click(Sender: TObject);
begin
  if checkbox1.Checked then
     panel3.Visible:=false;
  if not checkbox1.Checked then
     panel3.Visible:=true;
end;

end.
