unit OrderPlan_Dep1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls;

type
  TOrderPlan_Dep = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Edit2: TEdit;
    CheckBox1: TCheckBox;
    DBGrid1: TDBGrid;
    DS1: TDataSource;
    Query1: TQuery;
    Query1ID: TStringField;
    Query1DepName: TStringField;
    Query1DepMemo: TStringField;
    Query1YN: TStringField;
    Query1GXLB: TStringField;
    tmpQ: TQuery;
    tmpQ1: TQuery;
    Label3: TLabel;
    GXLBEdit: TEdit;
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    FORMID:string;
  end;

var
  OrderPlan_Dep: TOrderPlan_Dep;

implementation

uses main1, OrderPlan1, FunUnit, editplanP;

{$R *.dfm}

procedure TOrderPlan_Dep.FormDestroy(Sender: TObject);
begin
  OrderPlan_Dep:=nil;
end;

procedure TOrderPlan_Dep.Button1Click(Sender: TObject);
begin
  with query1 do
  begin
    active:=false;
    sql.clear;
    sql.Add('select * from BDepartment');
    sql.add('where ID like '+''''+edit1.Text+'%'+'''');
    sql.add('      and Depname like '+''''+'%'+edit2.Text+'%'+'''');
    if not Checkbox1.Checked then
    begin
      sql.add('  and GSBH='+''''+main.edit2.Text+''' and ProYN=1 ');
    end;
    if GXLBEdit.Text<>'' then
    sql.add('    and GXLB = '''+GXLBEdit.Text+''' ');
    sql.add('order by ID');
    active:=true;
  end;
end;

procedure TOrderPlan_Dep.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    edit2.setfocus
end;

procedure TOrderPlan_Dep.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    button1click(nil);
end;

procedure TOrderPlan_Dep.DBGrid1DblClick(Sender: TObject);
var i:integer;
begin
  with tmpQ1 do
  begin
    active:=false;
    sql.Clear;
    sql.Add('select sumline from BDepartment where GSBH= ''' +main.Edit2.text+''' and BDepartment.ID='''+Query1.FieldByName('ID').Value+''' and IsNull(sumline,'''')<>'''' ');
    active:=true;
  end;
  with tmpQ do
  begin
    active:=false;
    sql.Clear;
    if tmpQ1.RecordCount>0 then
    begin
    sql.Add('select ID,DepName,GXLB from BDepartment');
    sql.Add('where  GSBH= ''' +main.Edit2.text+''' and  sumline = (select sumline from BDepartment where GSBH= ''' +main.Edit2.text+''' and BDepartment.ID='''+Query1.FieldByName('ID').Value+''')' );
    sql.Add('order by GXLB');
    end else
    begin
      sql.Add('select ID,DepName,GXLB from BDepartment where BDepartment.ID='''+Query1.FieldByName('ID').Value+'''');
    end;
    active:=true;
  end;
  if query1.recordcount>0 then
  begin
    if OrderPlan_Dep.FORMID='SN391' then
    begin
      editplan.SMDD.First;
      with editplan.SMDD do
      begin
        for i:=0 to  editplan.SMDD.RecordCount-1 do
        begin
          Edit;
          tmpQ.First;
          while not tmpQ.Eof do
          begin
            if ((editplan.SMDD.Fields[1].Text = 'B') and (tmpQ.FieldByName('GXLB').Value='A')) or (editplan.SMDD.Fields[1].Text=tmpQ.FieldByName('GXLB').Value)  then
            begin
              FieldByName('DepNO').Value:=tmpQ.fieldbyname('ID').Value;
              FieldByName('DepName').Value:=tmpQ.fieldbyname('DepName').Value;
            end;
           tmpQ.Next;
          end;
          next;
        end;
      end;
    end else
    begin
      OrderPlan.SMDD.First;
      with OrderPlan.SMDD do
      begin
        for i:=0 to  OrderPlan.SMDD.RecordCount-1 do
        begin
          Edit;
          tmpQ.First;
          while not tmpQ.Eof do
          begin
            if ((OrderPlan.SMDD.Fields[1].Text = 'B') and (tmpQ.FieldByName('GXLB').Value='A')) or (OrderPlan.SMDD.Fields[1].Text=tmpQ.FieldByName('GXLB').Value)  then
            begin
              FieldByName('DepNO').Value:=tmpQ.fieldbyname('ID').Value;
              FieldByName('DepName').Value:=tmpQ.fieldbyname('DepName').Value;
            end;
           tmpQ.Next;
          end;
          next;
        end;
      end;
    end;
    close;
  end;
end;

procedure TOrderPlan_Dep.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    DBGrid1Dblclick(nil);
end;

procedure TOrderPlan_Dep.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=CaFree;
end;

procedure TOrderPlan_Dep.FormShow(Sender: TObject);
begin
  main.FormLanguage(Pointer(self),self.Name);
end;

end.
