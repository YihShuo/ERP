unit Department1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls, StrUtils,
  Buttons;

type
  TDepartForm = class(TForm)
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    Query1: TQuery;
    Query1ID: TStringField;
    Query1DepName: TStringField;
    Query1DepMemo: TStringField;
    Query1UserID: TStringField;
    Query1UserDate: TDateTimeField;
    Query1YN: TStringField;
    DS1: TDataSource;
    StageGroup: TRadioGroup;
    BB7: TBitBtn;
    FactoryGroup: TRadioGroup;
    ProductionGroup: TRadioGroup;
    procedure StageGroupClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BB7Click(Sender: TObject);
  private
    { Private declarations }
    procedure BDepartQuery();
  public
    { Public declarations }
  end;

var
  DepartForm: TDepartForm;

implementation

{$R *.dfm}
  uses takephoto1;

procedure TDepartForm.BDepartQuery();
begin
  with query1 do
  begin
    active:=false;
    sql.clear;
    sql.Add('select * from BDepartment');
    sql.add('where GSBH=''VA12'' and GXLB is not NULL and GXLB<>'''' ');
    if FactoryGroup.ItemIndex<>0 then
      sql.Add(' and SubString(DepName,1,3)='''+FactoryGroup.Items[FactoryGroup.ItemIndex]+'_'' ');
    if ProductionGroup.ItemIndex<>0 then
      sql.Add(' and DepName like ''%'+ProductionGroup.Items[ProductionGroup.ItemIndex]+'%'' ');
    if StageGroup.ItemIndex=0 then sql.add(' and GXLB=''C'' ');
    if StageGroup.ItemIndex=1 then sql.add(' and GXLB=''S'' ');
    if StageGroup.ItemIndex=2 then sql.add(' and GXLB=''A'' ');
    sql.add('and ProYN=1 ');
    sql.add('order by ID');
    active:=true;
  end;
end;



procedure TDepartForm.StageGroupClick(Sender: TObject);
begin
  BDepartQuery();
end;

procedure TDepartForm.DBGrid1DblClick(Sender: TObject);
var SubSQL1,SubSQL2:string;
begin
  if query1.RecordCount>0 then
  begin
    TakePoto.txtDepNo:= query1.fieldbyname('ID').Value;
    TakePoto.txtDepartment.Text:= query1.fieldbyname('DepName').Value;
    // change department Xiexing and shehao is empty
    TakePoto.txtXieXing:='';
    TakePoto.txtSheHao:='';
    //
    with TakePoto.Order do
      begin
        active:=false;
        sql.Clear;
        SubSQL1:='	      where smddss.gxlb=''S''';
        SubSQL2:='        and (smdd.gxlb=''S'' )';
        if rightstr(TakePoto.txtDepartment.Text,1)='G' then
        begin
          SubSQL1:='	      where smddss.gxlb=''A''';
          SubSQL2:='        and (smdd.gxlb=''A'' )';
          TakePoto.StageFolder:='Assembly';
        end else if  rightstr(TakePoto.txtDepartment.Text,1)='M' then
        begin
          SubSQL1:='	      where smddss.gxlb=''S''';
          SubSQL2:='        and (smdd.gxlb=''S'' )';
          TakePoto.StageFolder:='Stenching';
        end else if  rightstr(TakePoto.txtDepartment.Text,1)='C' then
        begin
          SubSQL1:='	      where smddss.gxlb=''C''';
          SubSQL2:='        and (smdd.gxlb=''C'' )';
          TakePoto.StageFolder:='Cutting';
        end;
        sql.add('select zlbh from ');
        sql.add(' (select smdd.ysbh as zlbh,max(ddzl.pairs)-sum(s.qty) as lqty from smdd ');
        sql.add('  left join zlzl on zlzl.zlbh=smdd.ysbh  ');
        sql.add('  left join ddzl on ddzl.ddbh=smdd.ysbh  ');
        sql.add('  left join ');
        sql.add('      (select smddss.ddbh,sum(okcts*qty) as qty');
        sql.add('       from smddss');
        sql.add(SubSQL1);
        sql.add('	      group by smddss.ddbh) as s on smdd.ddbh = s.ddbh ');
        sql.add('  where ddzl.yn='+''''+'1'+'''' );
        sql.add('        and (smdd.plandate <= (getdate()+70)) and (smdd.plandate >= (getdate()-70)) ');
        sql.add('        and smdd.depno=' + '''' + TakePoto.txtDepNo + '''' );
        sql.add(SubSQL2);
      //  sql.Add('        and ddzl.gsbh=' + '''' + main.Edit2.text + '''');
        sql.add('  group by smdd.ysbh	) as dd');
        sql.add(' where  dd.lqty >0 ');
        active:=true;
        TakePoto.cboRY.Clear;
        TakePoto.cboRY.Text :='';
        first;
        if TakePoto.Order.RecordCount>0 then
        begin
          while not TakePoto.Order.eof  do
          begin
            TakePoto.cboRY.Items.Add(fieldbyname('ZLBH').value);
            Next;
          end;
        end;
  end;
  Close;
 end;

end;

procedure TDepartForm.FormShow(Sender: TObject);
begin
  BDepartQuery();
end;

procedure TDepartForm.BB7Click(Sender: TObject);
begin
  Close;
end;

end.
