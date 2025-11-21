unit keyoutp;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBTables, DB, Grids, DBGrids, StdCtrls, ExtCtrls;

type
  Tkeyout = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    workidcb: TComboBox;
    Query: TButton;
    b2: TButton;
    DBGrid1: TDBGrid;
    tempq: TQuery;
    workplansedit: TQuery;
    DataSource1: TDataSource;
    wpsu: TUpdateSQL;
    Query1: TQuery;
    workplanseditddbh: TStringField;
    workplanseditxxcc: TStringField;
    workplanseditoldqty: TIntegerField;
    workplanseditneedcts: TIntegerField;
    workplanseditoldcts: TIntegerField;
    workplanseditnewcts: TIntegerField;
    workplanseditTotqty: TIntegerField;
    fatcb: TComboBox;
    Label2: TLabel;
    workplanseditcodebar: TStringField;
    workplanseditqty: TIntegerField;
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
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure QueryClick(Sender: TObject);
    procedure b2Click(Sender: TObject);
    procedure workplanseditnewctsChange(Sender: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  keyout: Tkeyout;

implementation

uses mailP;

{$R *.dfm}

procedure Tkeyout.FormClose(Sender: TObject; var Action: TCloseAction);
var i:integer;
begin
  scansum.Active:=true;
  with updateq do
  begin
    if scansum.RecordCount > 0 then
    begin
      for i :=1 to scansum.RecordCount do
      begin
        scq.active:=true;
        if scq.RecordCount > 0 then
        begin
          scq.requestlive:=true;
          scq.cachedupdates:=true;
          scq.edit;
          scq.FieldByName('qty').Value:=scq.FieldByName('qty').Value+scansum.FieldByName('qty').Value;
          upwwdhsds.apply(ukmodify);
        end
        else
        begin
          scq.Insert;
          scq.FieldByName('workid').Value:=scansum.FieldByName('workid').Value;
          scq.FieldByName('size').Value:=scansum.FieldByName('size').Value;
          scq.FieldByName('class').Value:=scansum.FieldByName('class').Value;
          scq.FieldByName('inout').Value:=scansum.FieldByName('inout').Value;
          scq.FieldByName('scandate').Value:=scansum.FieldByName('scandate').Value;
          scq.FieldByName('qty').Value:=scansum.FieldByName('qty').Value;
          scq.FieldByName('updatedate').Value:=now;
          scq.FieldByName('userid').Value:=main.Edit1.Text;
          upwwdhsds.apply(ukinsert);
        end;
        scansum.next;
      end;
      updateq.SQL.Clear;
      updateq.SQL.Add('update workscan set yn = '+''''+'Y'+'''');
      updateq.SQL.add(' where yn='+''''+ 'N'+''''+' and inout='+''''+'O'+'''');
      updateq.ExecSQL;
    end
    else
    begin
      showmessage('No Data Cheng');
    end;
  end;
  action:=cafree;
  keyout:=nil;
end;

procedure Tkeyout.FormCreate(Sender: TObject);
var i:integer;
begin
  tempq.Active:=true;
  with tempq do
  begin
    tempq.First;
    workidcb.Items.Clear;
    workidCB.Items.Add('ALL');

    for i:=1 to recordcount do
      begin
        workidCB.Items.Add(fieldbyname('ddbh').asstring);
        next;
      end;
    workidCB.ItemIndex:=0;
  end;
  tempq.Active:=false;
end;

procedure Tkeyout.QueryClick(Sender: TObject);
begin
  b2.Visible:=true;
  with workplansedit do
  begin
    active:=false;
    sql.Clear;
    sql.Add('select smddss.ddbh,xxcc,(smddss.OKcts*smddss.qty) as oldqty,codebar,smddss.qty');
    sql.Add('	,cts as needcts,okcts as oldcts,0 as newcts,0 as Totqty from smddss');
    sql.Add('left join smdd on smddss.ddbh=smdd.ysbh and smddss.gxlb=smdd.gxlb ');
    sql.Add('left join ddzl on ddzl.ddbh=smdd.ysbh  ');
    sql.Add('where smdd.gxlb='+''''+'O'+''''+'	and cts > okcts ');
    if workidcb.Text<>'ALL' then
      sql.Add('and ysbh='+''''+workidcb.Text+'''');
    if fatcb.Text<>'ALL' then
      sql.Add('and ddzl.gsbh='+''''+fatcb.Text+'''');

    active:=true;
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
end;

procedure Tkeyout.b2Click(Sender: TObject);
var i,j:integer;
begin
  with workplansedit do
  begin
//    workplansedit.requestlive:=true;
//    workplansedit.cachedupdates:=true;
//    workplansedit.edit;
    workplansedit.First;
    for i:=1 to workplansedit.RecordCount do
    begin
      edit;
      if fieldbyname('newCTS').Value > 0 then
      begin
        fieldbyname('OLDcts').Value:=fieldbyname('OLDcts').Value+fieldbyname('newCTS').Value;
        wpsu.Apply(ukmodify);

        for j:=1 to fieldbyname('newCTS').Value do
        begin
          query1.SQL.Clear;
          query1.sql.add('INSERT INTO WorkScan ' );
          query1.sql.add('VALUES ('+''''+fieldbyname('codebar').Value+''''+',');
          query1.sql.add('getdate(),'+''''+'O'+''''+',');
          query1.sql.Add('  '''+inttostr(fatcb.itemindex)+''''+',');
          query1.sql.Add('  '''+main.Edit1.Text+''''+',');
          query1.sql.add(inttostr(fieldbyname('qty').Value)+',null)');
          //memo1.text:=query1.sql.text;
          query1.ExecSQL;
        end;
      end;
      next;
    end;
    active:=false;
    active:=true;
  end;
end;

procedure Tkeyout.workplanseditnewctsChange(Sender: TField);
begin
  with workplansedit do
  begin
    fieldbyname('TotQty').Value:=fieldbyname('OLDQty').Value+fieldbyname('newCTS').Value*fieldbyname('qty').Value;

    if fieldbyname('needcts').Value < (fieldbyname('oldcts').Value+fieldbyname('newcts').Value)  then
    begin
      showmessage('Cts is Over Count');
      fieldbyname('TotQty').Value:=0;
      fieldbyname('newcts').Value:=0;
    end;
  end;
end;

end.
