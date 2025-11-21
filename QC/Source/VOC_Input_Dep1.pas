unit VOC_Input_Dep1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls, StrUtils;

type
  TVOC_Input_Dep = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Edit2: TEdit;
    DBGrid1: TDBGrid;
    Query1: TQuery;
    Query1ID: TStringField;
    Query1DepName: TStringField;
    Query1DepMemo: TStringField;
    Query1UserID: TStringField;
    Query1UserDate: TDateTimeField;
    Query1YN: TStringField;
    DS1: TDataSource;
    CheckBox1: TCheckBox;
    Label3: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  VOC_Input_Dep: TVOC_Input_Dep;

implementation

uses QCOntime1, main1, FeedbackWastrelOnSite, //AndonInput1, 
  VOC_Input1;

{$R *.dfm}

procedure TVOC_Input_Dep.Button1Click(Sender: TObject);
begin
with query1 do
  begin
    active:=false;
    sql.clear;
    sql.Add('select * from BDepartment');
    sql.add('where ID like ');
    sql.add(''''+edit1.Text+'%'+'''');
    sql.add('and Depname like ');
    sql.add(''''+'%'+edit2.Text+'%'+'''');
    if not checkbox1.Checked then
      begin
        sql.add('and ProYN=1 ');
      end;        
    sql.add('and GSBH='+''''+main.edit2.Text+'''');
    sql.add('order by ID');
    active:=true;
  end;
end;

procedure TVOC_Input_Dep.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
   edit2.setfocus;
end;

procedure TVOC_Input_Dep.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
button1click(nil);
end;

procedure TVOC_Input_Dep.DBGrid1DblClick(Sender: TObject);
begin
if query1.recordcount>0 then
  begin

    if label3.Caption = 'SN601' then
      begin
        VOC_Input.Edit1.Text := query1.fieldbyname('ID').Value;
        VOC_Input.Edit5.Text := query1.fieldbyname('DepName').Value;
      end
    else
     { if label3.Caption = 'SN56' then
        begin
          AndonInput.Edit5.Text := query1.fieldbyname('DepName').Value;
          AndonInput.Edit4.Text := query1.fieldbyname('ID').Value;
          with AndonInput.query5 do
            begin
              active:=false;
              sql.Clear;
              if leftstr(AndonInput.edit5.Text,4)='LY_G' then
                begin
                  sql.add('select zlbh from ');
                  sql.add(' (select sczldate.zlbh, max(ddzl.pairs)-sum(ddzlwh.qty) as lqty from sczldate ');
                  sql.add(' left join zlzl on zlzl.zlbh=sczldate.zlbh  ');
                  sql.add(' left join ddzl on ddzl.ddbh=zlzl.ddbh ');
                  sql.add(' left join ddzlwh on ddzlwh.ddbh=zlzl.ddbh ');
                  sql.add(' where ddzl.yn='''+'1'+''' and sczldate.Adate <= getdate() and assemble='''+AndonInput.edit5.Text+''' and  ddzlwh.tp='''+'IM'+'''');
                  sql.add(' group by sczldate.zlbh ');
                  sql.add(' union  ');
                  sql.add(' select sczldate.zlbh, ddzl.pairs as lqty from sczldate ');
                  sql.add(' left join zlzl on zlzl.zlbh=sczldate.zlbh  ');
                  sql.add(' left join ddzl on ddzl.ddbh=zlzl.ddbh ');
                  sql.add(' where ddzl.yn='''+'1'+''' and sczldate.Adate <= getdate() and assemble='''+AndonInput.edit5.Text+'''');
                  sql.add(' and  (sczldate.zlbh not in (select distinct ddzlwh.ddbh from ddzlwh where ddzlwh.tp='''+'IM'+'''))) RYLIST where lqty > 0  ');
                end
              else
                begin
                  sql.add('select zlbh from ');
                  sql.add(' (select sczldate.zlbh, max(ddzl.pairs)-sum(ddzlwh.qty) as lqty from sczldate ');
                  sql.add(' left join zlzl on zlzl.zlbh=sczldate.zlbh  ');
                  sql.add(' left join ddzl on ddzl.ddbh=zlzl.ddbh ');
                  sql.add(' left join ddzlwh on ddzlwh.ddbh=zlzl.ddbh ');
                  sql.add(' where ddzl.yn='''+'1'+''' and sczldate.Sdate <= getdate() and Stitching='''+AndonInput.edit5.Text+''' and  ddzlwh.tp='''+'IM'+'''');
                  sql.add(' group by sczldate.zlbh ');
                  sql.add(' union  ');
                  sql.add(' select sczldate.zlbh, ddzl.pairs as lqty from sczldate ');
                  sql.add(' left join zlzl on zlzl.zlbh=sczldate.zlbh  ');
                  sql.add(' left join ddzl on ddzl.ddbh=zlzl.ddbh ');
                  sql.add(' where ddzl.yn='''+'1'+''' and sczldate.Sdate <= getdate() and Stitching='''+AndonInput.edit5.Text+'''');
                  sql.add(' and  (sczldate.zlbh not in (select distinct ddzlwh.ddbh from ddzlwh where ddzlwh.tp='''+'IM'+'''))) RYLIST where lqty > 0  ');
                end;

              active:=true;
              AndonInput.combobox1.Items.Clear;
              AndonInput.combobox1.Text :='';

              first;
              while not eof  do
                begin
                  AndonInput.combobox1.Items.Add(fieldbyname('ZLBH').value);
                  Next;
                end;
            end;
        end
      else}
      begin
        QCOnTime.QRepMas.edit;
        QCOnTime.QRepMas.FieldByName('DepNo').Value:=query1.fieldbyname('ID').Value;
        QCOnTime.QRepMas.FieldByName('DepName').Value:=query1.fieldbyname('DepName').Value;
      end;
    close;
  end;
end;

procedure TVOC_Input_Dep.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
  DBGrid1Dblclick(nil);
end;

procedure TVOC_Input_Dep.FormDestroy(Sender: TObject);
begin
  VOC_Input_Dep:=nil;
end;

end.
