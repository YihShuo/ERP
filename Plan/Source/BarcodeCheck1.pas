unit BarcodeCheck1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, ExtCtrls, GridsEh, DBGridEh, DB, DBTables,
  StdCtrls;

type
  TBarcodeCheck = class(TForm)
    Panel1: TPanel;
    smdd: TQuery;
    DataSource1: TDataSource;
    cby: TComboBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    cbm: TComboBox;
    cbf: TComboBox;
    Label4: TLabel;
    Button1: TButton;
    Label5: TLabel;
    cbjob: TComboBox;
    Label6: TLabel;
    DBGridEh1: TDBGridEh;
    Label7: TLabel;
    getddbh: TEdit;
    smddddbh: TStringField;
    smddgxlb: TStringField;
    smddxxcc: TStringField;
    smddoldtotqty: TIntegerField;
    smddOKtotqty: TIntegerField;
    smddnewqty: TIntegerField;
    smddNewdate: TDateTimeField;
    smddLQ: TIntegerField;
    smddErrmode: TStringField;
    Qtemp: TQuery;
    procedure Button1Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure smddCalcFields(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BarcodeCheck: TBarcodeCheck;

implementation

{$R *.dfm}




procedure TBarcodeCheck.Button1Click(Sender: TObject);
begin
with SMDD do
  begin
    active:=false;
    sql.Clear;
    sql.add('select smddss.ddbh,smddss.gxlb,smddss.xxcc,');
    sql.add('       sum(smddss.qty*smddss.cts) as oldtotqty,sum(smddss.qty*smddss.okcts) as OKtotqty,');
    sql.add('       smdds.qty as newqty,smdds.userdate as Newdate from smddss  ');
    sql.add('left join smdds on smddss.ddbh = smdds.ddbh and smddss.xxcc = smdds.xxcc');
    sql.add('left join (select smddss.ddbh,smddss.gxlb,smddss.xxcc,');
    sql.add('      sum(smddss.qty*smddss.cts) as oldqty from smddss  ');
    sql.add('where smddss.ddbh  in (select ddbh  from smdd where scyear='+''''+cby.Text+'''');
    sql.add(' and scmonth='+''''+cbm.Text+''''+')');
    sql.add('  group by smddss.ddbh,smddss.gxlb,smddss.xxcc) sm on sm.ddbh=smddss.ddbh and sm.gxlb=smddss.gxlb and sm.xxcc=smddss.xxcc');

    if getddbh.Text='' then
    begin
      sql.add('where smddss.ddbh  in (select ddbh  from smdd where scyear='+''''+cby.Text+'''');
      sql.add(' and scmonth='+''''+cbm.Text+'''');
      if CBf.Text<>'ALL' then
        begin
          sql.add('       and gsbh='+''''+CBf.Text+'''');
          sql.add('       and gxlb in ('+''''+'A'+''''+','+''''+'C'+''''+','+''''+'S'+''''+'))');
        end
      else
        begin
          sql.add('       and gxlb in ('+''''+'A'+''''+','+''''+'C'+''''+','+''''+'S'+''''+'))');
        end;
    end
    else
    begin
      sql.Add('where smddss.ddbh like '+''''+'%'+getddbh.Text+'%'+'''');
    end;
    if CBjob.Text<>'ALL' then
      begin
        sql.add(' and smddss.gxlb='+''''+cbjob.Text+'''');
      end
    else
      begin
        sql.add('       and smddss.gxlb in ('+''''+'A'+''''+','+''''+'C'+''''+','+''''+'S'+''''+')');
      end;
    sql.add('      and smddss.cts<>(smdds.qty/smddss.qty)');
    sql.Add('      and (smdds.qty)<> sm.oldqty');
    sql.add('  group by smddss.ddbh,smddss.gxlb,smddss.xxcc,smdds.qty,smdds.userdate');    
    sql.add(' order by smddss.ddbh,smddss.xxcc,smddss.gxlb');
    //memo1.Text:=sql.Text;
    active:=true;
  end;
end;

procedure TBarcodeCheck.FormDestroy(Sender: TObject);
begin
BarcodeCheck:=nil;
end;

procedure TBarcodeCheck.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=cafree;
end;



procedure TBarcodeCheck.smddCalcFields(DataSet: TDataSet);
begin
with smdd do
  begin
    smdd.FieldByName('LQ').Value:=smdd.FieldByName('newqty').Value-smdd.FieldByName('oldtotqty').Value;
    if smdd.FieldByName('OKtotqty').value=0  then
      begin
        smdd.FieldByName('Errmode').value:='需重印條碼;RePrint BarCode';
      end
    else
      begin
        smdd.FieldByName('Errmode').value:='條碼掃描錯誤;BarCode Scan Error';
      end;
  end;
end;

procedure TBarcodeCheck.FormCreate(Sender: TObject);
var i:integer;
    myYear, myMonth, myDay : Word;
    NDate :Tdate;
begin
  with Qtemp do
  begin
    active:=false;
    sql.Clear;
    sql.add('select year(getdate())-5 as Oldyear,year(getdate())+5 as Newyear');
    active:=true;
    for i:=QTemp.fieldbyname('Oldyear').value to  QTemp.fieldbyname('Newyear').value  do
    begin
      cby.Items.Add(inttostr(i));
      next;
    end;
    active:=false;

    DecodeDate(Date(), myYear, myMonth, myDay);
    for i:=0 to cby.Items.Count-1 do
    begin
      if strtoint(cby.Items[i])=myYear then
      begin
        cby.ItemIndex:=i;
        break;
      end;
    end;
    for i:=0 to cbm.Items.Count-1 do
    begin
      if strtoint(cbm.Items[i])=myMonth then
      begin
        cbm.ItemIndex:=i;
        break;
      end;
    end;
  end;
  end;

end.
