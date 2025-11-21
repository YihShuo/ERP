unit QCOnTime_Dep1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls, StrUtils;

type
  TQCOnTime_Dep = class(TForm)
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
    Query1GXLB: TStringField;
    procedure Button1Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  QCOnTime_Dep: TQCOnTime_Dep;

implementation

uses QCOntime1, main1, {AndonInput1,} FeedbackWastrelOnSite, QC_BatchInputp, QC_FinishShoe_Standard_Input1,FunUnit;

{$R *.dfm}

procedure TQCOnTime_Dep.Button1Click(Sender: TObject);
begin
  if label3.Caption = 'SN5C' then
    begin
      with query1 do
        begin
          active := false;
          sql.clear;
          sql.Add('select * from BDepartment');
          sql.add('where ID like ');
          sql.add('''' + edit1.Text + '%' + '''');
          sql.add('and Depname like ');
          sql.add('''' + '%' + edit2.Text + '%' + '''');
          if not checkbox1.Checked then
            begin
              sql.add('and ProYN=1 ');
            end;
          sql.add('and GSBH=' + '''' + main.edit2.Text + '''');
          sql.add('and GXLB=''A'' ');
          sql.add('order by ID');
          active := true;
        end;
    end
  else
    begin
      with query1 do
        begin
          active := false;
          sql.clear;
          sql.Add('select * from BDepartment');
          sql.add('where ID like ');
          sql.add('''' + edit1.Text + '%' + '''');
          sql.add('and Depname like ');
          sql.add('''' + '%' + edit2.Text + '%' + '''');
          if not checkbox1.Checked then
            begin
              sql.add('and ProYN=1 ');
            end;
          sql.add('and GSBH=' + '''' + main.edit2.Text + '''');
          sql.add('order by ID');
          active := true;
        end;
    end;
end;

procedure TQCOnTime_Dep.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    edit2.setfocus;
end;

procedure TQCOnTime_Dep.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    button1click(nil);
end;

procedure TQCOnTime_Dep.DBGrid1DblClick(Sender: TObject);
var
  SubSQL1, SubSQL2: string;
begin
  //總共三個主Form共用
  if query1.recordcount > 0 then
    begin
      if label3.Caption = 'SN54' then
        begin
          FMFeedbackWastrelOnSite.Edit4.Text := query1.fieldbyname('ID').Value;
          FMFeedbackWastrelOnSite.Edit5.Text := query1.fieldbyname('DepName').Value;
        end
      else
        if (label3.Caption = 'SN5B') then //報工主畫面
          begin
            QC_BatchInput.DepNM.Text := query1.fieldbyname('DepName').Value;
            QC_BatchInput.DepNo.Text := query1.fieldbyname('ID').Value;
            with QC_BatchInput.DepQry do
              begin
                active := false;
                sql.Clear;
                //原本程式預設是裁斷
                SubSQL1 := '	      where smddss.gxlb=''S''';
                SubSQL2 := '        and (smdd.gxlb=''S'' )';
                if Query1.FieldByName('GXLB').AsString='A' then
                  begin
                    SubSQL1 := '	      where smddss.gxlb=''A''';
                    SubSQL2 := '        and (smdd.gxlb=''A'' )';
                  end
                else
                  if Query1.FieldByName('GXLB').AsString='S' then
                    begin
                      SubSQL1 := '	      where smddss.gxlb=''S''';
                      SubSQL2 := '        and (smdd.gxlb=''S'' )';
                    end
                  else
                  if Query1.FieldByName('GXLB').AsString='C' then
                      begin
                        SubSQL1 := '	      where smddss.gxlb=''C''';
                        SubSQL2 := '        and (smdd.gxlb=''C'' )';
                      end;
                sql.add('select zlbh from ');
                sql.add(' (select smdd.ysbh as zlbh,max(ddzl.pairs)-sum(s.qty) as lqty from smdd ');
                sql.add('  left join zlzl on zlzl.zlbh=smdd.ysbh  ');
                sql.add('  left join ddzl on ddzl.ddbh=smdd.ysbh  ');
                sql.add('  left join ');
                sql.add('      (select smddss.ddbh,sum(okcts*qty) as qty');
                sql.add('       from smddss');
                sql.add(SubSQL1); //20120226 修改判斷部門生產別過濾挑選訂單
                sql.add('	      group by smddss.ddbh) as s on smdd.ddbh = s.ddbh ');
                sql.add('  where ddzl.yn=' + '''' + '1' + ''''); //有沒有入庫
                sql.add('        and (smdd.plandate <= (getdate()+7)) and (smdd.plandate >= (getdate()-7)) ');
                  //20140421 已排產今天前後日期+ - 7 天允許輸入QC報工資料
                sql.add('        and smdd.depno=' + '''' + QC_BatchInput.DepNo.Text + ''''); //派工組別
                sql.add(SubSQL2); //20120226 修改判斷部門生產別過濾挑選訂單
                sql.Add('        and ddzl.gsbh=' + '''' + main.Edit2.text + '''');
                sql.add('  group by smdd.ysbh	) as dd');
                sql.add(' where  dd.lqty >0 ');
                //
                active := true;
                QC_BatchInput.DDBHCombo.Items.Clear;
                QC_BatchInput.DDBHCombo.Text := '';
                first;
                //顯示訂單List在介面上
                while not QC_BatchInput.DepQry.eof do
                  begin
                    QC_BatchInput.DDBHCombo.Items.Add(fieldbyname('ZLBH').value);
                    Next;
                  end;
              end;
          end
        else
          if (label3.Caption = 'SN5C') then //報工主畫面
            begin
              QC_FinishShoe_Standard_Input.DepNM.Text := query1.fieldbyname('DepName').Value;
              QC_FinishShoe_Standard_Input.DepNo.Text := query1.fieldbyname('ID').Value;
              with QC_FinishShoe_Standard_Input.DepQry do
                begin
                  active := false;
                  sql.Clear;
                  //原本程式預設是裁斷
                  SubSQL1 := '	      where smddss.gxlb=''S''';
                  SubSQL2 := '        and (smdd.gxlb=''S'' )';
                  if rightstr(QC_FinishShoe_Standard_Input.DepNM.Text, 1) = 'G' then //成型
                    begin
                      SubSQL1 := '	      where smddss.gxlb=''A''';
                      SubSQL2 := '        and (smdd.gxlb=''A'' )';
                    end
                  else
                    if rightstr(QC_FinishShoe_Standard_Input.DepNM.Text, 1) = 'M' then //針車
                      begin
                        SubSQL1 := '	      where smddss.gxlb=''S''';
                        SubSQL2 := '        and (smdd.gxlb=''S'' )';
                      end
                    else
                      if rightstr(QC_FinishShoe_Standard_Input.DepNM.Text, 1) = 'C' then //裁斷
                        begin
                          SubSQL1 := '	      where smddss.gxlb=''C''';
                          SubSQL2 := '        and (smdd.gxlb=''C'' )';
                        end;
                  sql.add('select zlbh from ');
                  sql.add(' (select smdd.ysbh as zlbh,max(ddzl.pairs)-sum(s.qty) as lqty from smdd ');
                  sql.add('  left join zlzl on zlzl.zlbh=smdd.ysbh  ');
                  sql.add('  left join ddzl on ddzl.ddbh=smdd.ysbh  ');
                  sql.add('  left join ');
                  sql.add('      (select smddss.ddbh,sum(okcts*qty) as qty');
                  sql.add('       from smddss');
                  sql.add(SubSQL1); //20120226 修改判斷部門生產別過濾挑選訂單
                  sql.add('	      group by smddss.ddbh) as s on smdd.ddbh = s.ddbh ');
                  sql.add('  where ddzl.yn=' + '''' + '1' + ''''); //有沒有入庫
                  sql.add('        and (smdd.plandate <= (getdate()+70)) and (smdd.plandate >= (getdate()-70)) ');
                    //20140421 已排產今天前後日期+ - 7 天允許輸入QC報工資料
                  sql.add('        and smdd.depno=' + '''' + QC_FinishShoe_Standard_Input.DepNo.Text + ''''); //派工組別
                  sql.add(SubSQL2); //20120226 修改判斷部門生產別過濾挑選訂單
                  sql.Add('        and ddzl.gsbh=' + '''' + main.Edit2.text + '''');
                  sql.add('  group by smdd.ysbh	) as dd');
                  sql.add(' where  dd.lqty >0 ');
                  //
                  active := true;
                  QC_FinishShoe_Standard_Input.DDBHCombo.Items.Clear;
                  QC_FinishShoe_Standard_Input.DDBHCombo.Text := '';
                  QC_FinishShoe_Standard_Input.cboSize.Items.Clear;
                  QC_FinishShoe_Standard_Input.cboSize.Text := '';
                  first;
                  if QC_FinishShoe_Standard_Input.DepQry.RecordCount > 0 then
                    begin
                      //顯示訂單List在介面上
                      while not QC_FinishShoe_Standard_Input.DepQry.eof do
                        begin
                          QC_FinishShoe_Standard_Input.DDBHCombo.Items.Add(fieldbyname('ZLBH').value);
                          Next;
                        end;
                    end;
                  //
                end;
            end
          else //if label3.Caption = 'SN54' then SN52
            begin
              QCOnTime.QRepMas.edit;
              QCOnTime.QRepMas.FieldByName('DepNo').Value := query1.fieldbyname('ID').Value;
              QCOnTime.QRepMas.FieldByName('DepName').Value := query1.fieldbyname('DepName').Value;
            end;
      close;
    end;
end;

procedure TQCOnTime_Dep.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    DBGrid1Dblclick(nil);
end;

procedure TQCOnTime_Dep.FormDestroy(Sender: TObject);
begin
  QCOnTime_Dep := nil;
end;

procedure TQCOnTime_Dep.FormShow(Sender: TObject);
begin
  main.FormLanguage(Pointer(self),self.Name);
end;

end.

