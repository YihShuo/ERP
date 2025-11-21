unit nousematerialp;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, GridsEh, DBGridEh, ExtCtrls, DB, DBTables,comobj;

type
  TNoUseMaterial = class(TForm)
    Panel1: TPanel;
    nowcost: TDBGridEh;
    Label1: TLabel;
    monthCB: TComboBox;
    Label2: TLabel;
    FactoryCB: TComboBox;
    monthQ: TQuery;
    storkQ: TQuery;
    storkSD: TDataSource;
    Button1: TButton;
    Button3: TButton;
    costnowQ: TQuery;
    storkQkcyear: TStringField;
    storkQkcmonth: TStringField;
    storkQckbh: TStringField;
    storkQclbh: TStringField;
    storkQywpm: TStringField;
    storkQzwpm: TStringField;
    storkQqty: TCurrencyField;
    storkQneedqty: TFloatField;
    storkQmmq: TFloatField;
    storkQincostus: TFloatField;
    storkQnowcost: TFloatField;
    storkQagio: TFloatField;
    Edit1: TEdit;
    Label3: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  NoUseMaterial: TNoUseMaterial;

implementation

{$R *.dfm}

procedure TNoUseMaterial.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  costnowQ.Active:=false;
  action:=cafree;
end;

procedure TNoUseMaterial.FormDestroy(Sender: TObject);
begin
  costnowQ.Active:=false;
  nousematerial:=nil;
end;

procedure TNoUseMaterial.FormCreate(Sender: TObject);
begin
  costnowQ.Active:=true;
  edit1.Text:=costnowQ.fieldbyname('cwhl').value;
  with monthq do
  begin
    active:=true;
    while not eof do
    begin
      monthcb.Items.Add(fieldbyname('ym').value) ;
      next;
    end;
    active:=false;  
  end;
end;

procedure TNoUseMaterial.Button1Click(Sender: TObject);
begin
  with storkq do
  begin
    active:=false;
    sql.Clear;
    sql.add('select max(CONVERT(varchar,KCCLMONTH.kcyear)) as kcyear,max(convert(varchar,KCCLMONTH.kcmonth)) as kcmonth,');
    sql.add(' KCCLMONTH.ckbh,KCCLMONTH.clbh,clzl.ywpm,clzl.zwpm,');
    sql.add('          kcclmonth.qty,isnull(k.needqty,0) as needqty, (isnull(kcclmonth.qty,0)-isnull(k.needqty,0)) as mmq ');
    sql.add('         ,((isnull(kcclmonth.qty,0)-isnull(k.needqty,0)) * isnull(vnprice,0)) / (case when cwhl <> 0 then cwhl else 1 end) as incostus');
    sql.add('         ,(case when cwhl <> 0 then (isnull(kcclmonth.qty,0)-isnull(k.needqty,0)) * isnull(vnprice,0) / '+edit1.Text+' else 0 end) as nowcost');
    sql.add('         ,(case when cwhl <> 0 then (((isnull(kcclmonth.qty,0)-isnull(k.needqty,0)) * isnull(vnprice,0)) /  cwhl) ');
    sql.add('	           - ((isnull(kcclmonth.qty,0)-isnull(k.needqty,0)) * isnull(vnprice,0) /'+edit1.Text+') else 0 end) as agio');
    sql.add(' from KCCLMONTH ');
    sql.add('right join ');
    sql.add('          (select max(KCCLMONTH.kcyear+KCCLMONTH.kcmonth) as ym,ckbh,clbh ');
    sql.add('           from kcclmonth');
    sql.add('           group by KCCLMONTH.ckbh,KCCLMONTH.clbh) as h on ');
    sql.add('           h.ym=(KCCLMONTH.kcyear+KCCLMONTH.kcmonth) and kcclmonth.ckbh=h.ckbh and kcclmonth.clbh=h.clbh ');
    sql.add('left join clzl on clzl.cldh=kcclmonth.clbh ');
    sql.add('full join ');
    sql.add('          (select ywdd.gsbh,zlzls2.clbh,sum(clsl) as needqty from zlzls2 ');
    sql.add('           left join ywdd on ywdd.ysbh=zlzls2.zlbh ');
    sql.add('           where (ywdd.sb is null or ywdd.sb <> '+''''+'OK'+''''+')  and ywdd.etd >= getdate() ');
    sql.add('           group by ywdd.gsbh,zlzls2.clbh) as K on k.gsbh=kcclmonth.ckbh and k.clbh = KCCLMONTH.clbh ');
    sql.add('where  (kcclmonth.qty-isnull(k.needqty,0)) > 0 ');
    if factorycb.Text<>'ALL' then
      sql.add(' and KCCLMONTH.ckbh='+''''+factorycb.Text+'''');
    if monthcb.Text<>'ALL' then
      sql.add(' and h.ym>='''+monthcb.text+'''');
    sql.add(' group by  KCCLMONTH.ckbh,KCCLMONTH.clbh,clzl.ywpm,clzl.zwpm, kcclmonth.qty,k.needqty,vnprice,KCCLMONTH.CWHL,KCCLMONTH.kcyear,KCCLMONTH.kcmonth');
    sql.add(' order by KCCLMONTH.kcyear,KCCLMONTH.kcmonth,KCCLMONTH.ckbh,KCCLMONTH.clbh');
    //memo1.text:=sql.text;

    active:=true;
  end;
end;


procedure TNoUseMaterial.Button3Click(Sender: TObject);
var   a:string;
      eclApp,WorkBook:olevariant;
 //     xlsFileName:string;
      i,j:integer;
 begin
  if  storkq.active  then
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
        for   i:=0   to   storkq.fieldcount-1   do
          begin
              eclApp.Cells(1,i+1):=storkq.fields[i].FieldName;
          end;

        storkq.First;
        j:=2;
        while   not   storkq.Eof   do
          begin
            for   i:=0   to  storkq.fieldcount-1  do
            begin
              eclApp.Cells(j,i+1):=storkq.Fields[i].Value;
            end;
          storkq.Next;
          inc(j);
          end;
      eclapp.columns.autofit;
       eclApp.Visible:=True;  
       showmessage('Succeed');
      except
        on   F:Exception   do
          showmessage(F.Message);
      end;
    end;

end;

end.
