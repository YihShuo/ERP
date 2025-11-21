unit ProductionOut1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ExtCtrls;

type
  TProductionOut = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    workidcb: TComboBox;
    Query: TButton;
    UpdateBtn: TButton;
    DBGridEh1: TDBGridEh;
    tempq: TQuery;
    scq: TQuery;
    scqWorkID: TStringField;
    scqSize: TStringField;
    scqClass: TStringField;
    scqInOut: TStringField;
    scqscanDate: TDateTimeField;
    scqQty: TIntegerField;
    scqUpdateDate: TDateTimeField;
    scqUserID: TStringField;
    upwwdhsds: TUpdateSQL;
    DataSource2: TDataSource;
    scansum: TQuery;
    scansumworkid: TStringField;
    scansumclass: TStringField;
    scansumsize: TStringField;
    scansuminout: TStringField;
    scansumscandate: TDateTimeField;
    scansumqty: TIntegerField;
    updateq: TQuery;
    DataSource1: TDataSource;
    workplansedit: TQuery;
    workplanseditddbh: TStringField;
    workplanseditxxcc: TStringField;
    workplanseditoldqty: TIntegerField;
    workplanseditneedcts: TIntegerField;
    workplanseditoldcts: TIntegerField;
    workplanseditnewcts: TIntegerField;
    workplanseditTotqty: TIntegerField;
    workplanseditcodebar: TStringField;
    workplanseditqty: TIntegerField;
    workplanseditDepNO: TStringField;
    workplanseditGJCC: TStringField;
    wpsu: TUpdateSQL;
    UpdataQuery: TQuery;
    Query1: TQuery;
    CLassCB: TComboBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QueryClick(Sender: TObject);
    procedure UpdateBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ProductionOut: TProductionOut;

implementation

uses main1;

{$R *.dfm}

procedure TProductionOut.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
  ProductionOut:=nil;
end;

procedure TProductionOut.QueryClick(Sender: TObject);
begin
if workidcb.Text<>'' then
begin
  UpdateBtn.Visible:=true;
  with workplansedit do
  begin
    active:=false;
    sql.Clear;
    sql.Add('select smddss.ddbh,smddss.xxcc,smddss.OKcts*smddss.qty as oldqty,(codebar+''-'') as codebar ');
    sql.Add(',smddss.qty,cts as needcts,okcts as oldcts,0 as newcts,0 as Totqty,SMDD.DepNO,XXGJS.GJCC from  smddss ');
    sql.Add('left join smdd on smddss.ddbh=smdd.ddbh and smddss.gxlb=smdd.gxlb ');
    sql.Add('left join DDZL on DDZL.DDBH=smdd.YSBH ');
    sql.Add('left join  XXGJS on DDZL.XieXing=XXGJS.XieXing and XXGJS.GJLB=''101'' and XXGJS.XXCC=smddss.XXCC ');
    sql.Add('where CTS > okCTS and YSBH='''+workidcb.Text+''' ');
    sql.Add('order by smddss.XXCC,smddss.ddbh desc');
    active:=true;
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
  end;
end;

procedure TProductionOut.UpdateBtnClick(Sender: TObject);
var i,j:integer;
    barCode,workplans_barcode:string;
begin
  with workplansedit do
  begin
    workplansedit.First;
    for i:=1 to workplansedit.RecordCount do
    begin
      edit;
      if fieldbyname('newCTS').Value > 0 then
      begin
        fieldbyname('OLDcts').Value:=fieldbyname('OLDcts').Value+fieldbyname('newCTS').Value;
        barCode:=Copy(fieldbyname('codebar').AsString,1,length(fieldbyname('codebar').AsString)-1);
        updataquery.active:=false;
        updataquery.SQL.Clear;
        updataquery.sql.Add('Insert into SMZL (CODEBAR, CTS, DepNO, ScanDate, USERDATE, USERID, YN,SB) ');
        updataquery.sql.add('values('+''''+barCode+''''+','+fieldbyname('newCTS').AsString+','''+workplansedit.fieldbyname('DepNO').AsString+''''+',getdate(),getdate(),''' );
        updataquery.sql.add(main.edit1.Text+''',''1'',null) ;');
        updataquery.sql.Add('update smddss set okcts='+fieldbyname('OLDcts').AsString+' where codebar='''+barCode+''' ;');
        updataquery.ExecSQL;
        //
        UpdataQuery.Active:=false;
        //ÀË¬dR3¤j©³
        updataquery.SQL.Clear;
        updataquery.SQL.Add('select workplans.Codebar from '+main.LIY_DD+'.dbo.workplans workplans,'+main.LIY_DD+'.dbo.workplanss workplanss ');
        updataquery.SQL.Add('where workplans.WorkID=workplanss.WorkID and workplanss.ddbh='''+workidcb.Text+''' and workplans.Size='''+fieldbyname('xxcc').AsString+'''; ');
        updataquery.active:=true;
        if updataquery.RecordCount>0 then
        begin
          workplans_barcode:=updataquery.FieldByName('Codebar').AsString+'-';
          for j:=1 to fieldbyname('newCTS').Value do
          begin
            query1.SQL.Clear;
            query1.sql.add('INSERT INTO '+main.LIY_DD+'.dbo.WorkScan VALUES ('+''''+workplans_barcode+''''+',');
            query1.sql.add('getdate(),''O'','''+inttostr(CLassCB.itemindex)+''''+','''+main.Edit1.Text+''''+',');
            query1.sql.add(inttostr(fieldbyname('qty').Value)+',''N'')');
            query1.ExecSQL;
          end;
        end;
      end;
      Next;
    end;
    active:=false;
    active:=true;
  end;
end;

procedure TProductionOut.FormCreate(Sender: TObject);
var i:integer;
begin
  with tempq do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select distinct workplanss.ddbh from '+main.LIY_DD+'.dbo.workplanss workplanss ');
    SQL.Add('inner join '+main.liy_erp+'.dbo.DDZL on DDZL.DDBH=workplanss.ddbh and DDZL.GSBH in (Select TGSBH from Bgszl where GSDH='''+main.Edit2.Text+''') and DDZL.YN=1 ');
    SQL.Add('inner join '+main.liy_erp+'.dbo.smdd on workplanss.ddbh='+main.liy_erp+'.dbo.smdd.ysbh ');
    SQL.Add('inner join '+main.liy_erp+'.dbo.smddss on '+main.liy_erp+'.dbo.smdd.ddbh='+main.liy_erp+'.dbo.smddss.ddbh ');
    SQL.Add('where '+main.liy_erp+'.dbo.smdd.gxlb=''O''  and smddss.cts > smddss.okcts');
    Active:=true;
  end;
  with tempq do
  begin
    tempq.First;
    workidcb.Items.Clear;
    workidCB.Items.Add('');
    for i:=1 to recordcount do
    begin
      workidCB.Items.Add(fieldbyname('ddbh').asstring);
      next;
    end;
    workidCB.ItemIndex:=0;
  end;
  tempq.Active:=false;
end;

end.
